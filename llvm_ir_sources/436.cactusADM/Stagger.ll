; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [43 x i8] c"CCTK_StaggerIndex: Unknown stagger type %s\00", align 1
@CCTK_StaggerDirIndex.hash = internal unnamed_addr global [4 x i32] zeroinitializer, align 16
@CCTK_StaggerDirIndex.hashed = internal unnamed_addr global i1 false
@CCTK_StaggerDirArray.hash = internal unnamed_addr global [4 x i32] zeroinitializer, align 16
@CCTK_StaggerDirArray.hashed = internal unnamed_addr global i1 false
@.str3 = private unnamed_addr constant [56 x i8] c"CCTK_StaggerDirArray: Dimension %d exceeds maximum of 4\00", align 1
@CCTK_StaggerDirName.hs = private unnamed_addr constant [7 x i8] c"MMMMMM\00", align 1
@.str5 = private unnamed_addr constant [61 x i8] c"CCTK_StaggerDirName: Stagger name too short for direction %d\00", align 1
@.str6 = private unnamed_addr constant [45 x i8] c"CCTK_StaggerDirName: Unknown stagger type %s\00", align 1
@.str7 = private unnamed_addr constant [61 x i8] c"CCTKi_ParseStaggerString: Dimension %d exceeds maximum of 10\00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"MMMMMMMMMM\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"CELL\00", align 1
@.str11 = private unnamed_addr constant [11 x i8] c"CCCCCCCCCC\00", align 1
@.str12 = private unnamed_addr constant [77 x i8] c"CCTKi_ParseStaggerString: Staggering %s for %s unequal to group dimension %d\00", align 1
@.str13 = private unnamed_addr constant [61 x i8] c"CCTKi_ParseStaggerString: Unknown stagger type %s for %s::%s\00", align 1
@.str14 = private unnamed_addr constant [84 x i8] c"$Header: /cactus/Cactus/src/main/Stagger.c,v 1.23 2001/11/07 00:19:15 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_Stagger_c() #0 {
entry:
  ret i8* getelementptr inbounds ([84 x i8]* @.str14, i64 0, i64 0), !dbg !170
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_GroupStaggerIndexGI(i32 %gindex) #1 {
entry:
  %group = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{i32 %gindex}, i64 0, metadata !16), !dbg !171
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %group}, metadata !17), !dbg !172
  %call = call i32 @CCTK_GroupData(i32 %gindex, %struct.cGroup* %group) #8, !dbg !173
  %stagtype = getelementptr inbounds %struct.cGroup* %group, i64 0, i32 3, !dbg !174
  %0 = load i32* %stagtype, align 4, !dbg !174, !tbaa !175
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !30), !dbg !174
  ret i32 %0, !dbg !178
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #3

; Function Attrs: nounwind optsize uwtable
define void @cctk_groupstaggerindexgi_(i32* nocapture %stagcode, i32* nocapture %gindex) #1 {
entry:
  %group.i = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{i32* %stagcode}, i64 0, metadata !36), !dbg !179
  call void @llvm.dbg.value(metadata !{i32* %gindex}, i64 0, metadata !37), !dbg !179
  %0 = load i32* %gindex, align 4, !dbg !180, !tbaa !175
  %1 = bitcast %struct.cGroup* %group.i to i8*, !dbg !181
  call void @llvm.lifetime.start(i64 32, i8* %1) #7, !dbg !181
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !182) #7, !dbg !181
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %group.i}, metadata !17) #7, !dbg !183
  %call.i = call i32 @CCTK_GroupData(i32 %0, %struct.cGroup* %group.i) #8, !dbg !184
  %stagtype.i = getelementptr inbounds %struct.cGroup* %group.i, i64 0, i32 3, !dbg !185
  %2 = load i32* %stagtype.i, align 4, !dbg !185, !tbaa !175
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !186) #7, !dbg !185
  call void @llvm.lifetime.end(i64 32, i8* %1) #7, !dbg !187
  store i32 %2, i32* %stagcode, align 4, !dbg !180, !tbaa !175
  ret void, !dbg !188
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_GroupStaggerIndexGN(i8* %gname) #1 {
entry:
  %group.i = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{i8* %gname}, i64 0, metadata !42), !dbg !189
  %call = call i32 @CCTK_GroupIndex(i8* %gname) #8, !dbg !190
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !43), !dbg !190
  %0 = bitcast %struct.cGroup* %group.i to i8*, !dbg !191
  call void @llvm.lifetime.start(i64 32, i8* %0) #7, !dbg !191
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !193) #7, !dbg !191
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %group.i}, metadata !17) #7, !dbg !194
  %call.i = call i32 @CCTK_GroupData(i32 %call, %struct.cGroup* %group.i) #8, !dbg !195
  %stagtype.i = getelementptr inbounds %struct.cGroup* %group.i, i64 0, i32 3, !dbg !196
  %1 = load i32* %stagtype.i, align 4, !dbg !196, !tbaa !175
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !197) #7, !dbg !196
  call void @llvm.lifetime.end(i64 32, i8* %0) #7, !dbg !198
  ret i32 %1, !dbg !192
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @cctk_groupstaggerindexgn_(i32* nocapture %scode, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  %group.i = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{i32* %scode}, i64 0, metadata !50), !dbg !199
  call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !51), !dbg !199
  call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !52), !dbg !199
  %call = call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !200
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !53), !dbg !200
  %call1 = call i32 @CCTK_GroupIndex(i8* %call) #8, !dbg !201
  call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !54), !dbg !201
  %0 = bitcast %struct.cGroup* %group.i to i8*, !dbg !202
  call void @llvm.lifetime.start(i64 32, i8* %0) #7, !dbg !202
  call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !204) #7, !dbg !202
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %group.i}, metadata !17) #7, !dbg !205
  %call.i = call i32 @CCTK_GroupData(i32 %call1, %struct.cGroup* %group.i) #8, !dbg !206
  %stagtype.i = getelementptr inbounds %struct.cGroup* %group.i, i64 0, i32 3, !dbg !207
  %1 = load i32* %stagtype.i, align 4, !dbg !207, !tbaa !175
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !208) #7, !dbg !207
  call void @llvm.lifetime.end(i64 32, i8* %0) #7, !dbg !209
  store i32 %1, i32* %scode, align 4, !dbg !203, !tbaa !175
  call void @free(i8* %call) #8, !dbg !210
  ret void, !dbg !211
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_StaggerIndex(i8* %stype) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %stype}, i64 0, metadata !57), !dbg !212
  tail call void @llvm.dbg.value(metadata !213, i64 0, metadata !60), !dbg !214
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !59), !dbg !215
  %call = tail call i64 @strlen(i8* %stype) #9, !dbg !216
  %conv = trunc i64 %call to i32, !dbg !216
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !61), !dbg !216
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !58), !dbg !217
  %cmp17 = icmp sgt i32 %conv, 0, !dbg !217
  br i1 %cmp17, label %for.body.lr.ph, label %return, !dbg !217

for.body.lr.ph:                                   ; preds = %entry
  %call4 = tail call i32** @__ctype_toupper_loc() #10, !dbg !218
  %0 = load i32** %call4, align 8, !dbg !218, !tbaa !219
  br label %for.body, !dbg !217

for.body:                                         ; preds = %for.body.lr.ph, %sw.epilog
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %sw.epilog ]
  %base.019 = phi i32 [ 1, %for.body.lr.ph ], [ %mul9, %sw.epilog ]
  %scode.018 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %sw.epilog ]
  %arrayidx = getelementptr inbounds i8* %stype, i64 %indvars.iv, !dbg !218
  %1 = load i8* %arrayidx, align 1, !dbg !218, !tbaa !176
  %idxprom3 = sext i8 %1 to i64, !dbg !218
  %arrayidx5 = getelementptr inbounds i32* %0, i64 %idxprom3, !dbg !218
  %2 = load i32* %arrayidx5, align 4, !dbg !218, !tbaa !175
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !63), !dbg !218
  switch i32 %2, label %sw.default [
    i32 77, label %sw.epilog
    i32 67, label %sw.bb6
    i32 80, label %sw.bb7
  ], !dbg !218

sw.bb6:                                           ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !213, i64 0, metadata !62), !dbg !220
  br label %sw.epilog, !dbg !220

sw.bb7:                                           ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !222, i64 0, metadata !62), !dbg !223
  br label %sw.epilog, !dbg !223

sw.default:                                       ; preds = %for.body
  %call8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 150, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str2, i64 0, i64 0), i8* %stype) #8, !dbg !224
  br label %return, !dbg !225

sw.epilog:                                        ; preds = %for.body, %sw.bb7, %sw.bb6
  %m.0 = phi i32 [ 2, %sw.bb7 ], [ 1, %sw.bb6 ], [ 0, %for.body ]
  %mul = mul nsw i32 %m.0, %base.019, !dbg !226
  %add = add nsw i32 %mul, %scode.018, !dbg !226
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !59), !dbg !226
  %mul9 = mul nsw i32 %base.019, 3, !dbg !227
  tail call void @llvm.dbg.value(metadata !{i32 %mul9}, i64 0, metadata !60), !dbg !227
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !217
  %3 = trunc i64 %indvars.iv.next to i32, !dbg !217
  %cmp = icmp slt i32 %3, %conv, !dbg !217
  br i1 %cmp, label %for.body, label %return, !dbg !217

return:                                           ; preds = %entry, %sw.epilog, %sw.default
  %retval.0 = phi i32 [ -1, %sw.default ], [ 0, %entry ], [ %add, %sw.epilog ]
  ret i32 %retval.0, !dbg !228
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize readnone
declare i32** @__ctype_toupper_loc() #6

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @cctk_staggerindex_(i32* nocapture %scode, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %scode}, i64 0, metadata !69), !dbg !229
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !70), !dbg !229
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !71), !dbg !229
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !230
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !72), !dbg !230
  %call1 = tail call i32 @CCTK_StaggerIndex(i8* %call) #11, !dbg !231
  store i32 %call1, i32* %scode, align 4, !dbg !231, !tbaa !175
  tail call void @free(i8* %call) #8, !dbg !232
  ret void, !dbg !233
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_StaggerDirIndex(i32 %dir, i32 %si) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !77), !dbg !234
  tail call void @llvm.dbg.value(metadata !{i32 %si}, i64 0, metadata !78), !dbg !234
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !81), !dbg !235
  %.b = load i1* @CCTK_StaggerDirIndex.hashed, align 1
  br i1 %.b, label %for.body, label %if.then, !dbg !236

if.then:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 0), align 16, !dbg !237, !tbaa !175
  store i32 3, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 1), align 4, !dbg !239, !tbaa !175
  store i32 9, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 2), align 8, !dbg !240, !tbaa !175
  store i32 27, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 3), align 4, !dbg !241, !tbaa !175
  store i1 true, i1* @CCTK_StaggerDirIndex.hashed, align 1
  br label %for.body, !dbg !242

for.body:                                         ; preds = %if.then, %entry, %for.inc.for.body_crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 3, %entry ], [ 3, %if.then ]
  %si.addr.013 = phi i32 [ %rem, %for.inc.for.body_crit_edge ], [ %si, %entry ], [ %si, %if.then ]
  %arrayidx = getelementptr inbounds [4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 %indvars.iv, !dbg !243
  %0 = load i32* %arrayidx, align 4, !dbg !243, !tbaa !175
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !79), !dbg !243
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !78), !dbg !246
  %1 = trunc i64 %indvars.iv to i32, !dbg !247
  %cmp4 = icmp eq i32 %1, %dir, !dbg !247
  br i1 %cmp4, label %if.then5, label %for.inc, !dbg !247

if.then5:                                         ; preds = %for.body
  %div = sdiv i32 %si.addr.013, %0, !dbg !243
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !81), !dbg !248
  br label %for.end, !dbg !250

for.inc:                                          ; preds = %for.body
  %cmp1 = icmp sgt i32 %1, 0, !dbg !251
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.end, !dbg !251

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !251
  %rem = srem i32 %si.addr.013, %0, !dbg !246
  br label %for.body, !dbg !251

for.end:                                          ; preds = %for.inc, %if.then5
  %dsi.0 = phi i32 [ %div, %if.then5 ], [ 0, %for.inc ]
  ret i32 %dsi.0, !dbg !252
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_staggerdirindex_(i32* nocapture %dsi, i32* nocapture %dir, i32* nocapture %gsi) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %dsi}, i64 0, metadata !86), !dbg !253
  tail call void @llvm.dbg.value(metadata !{i32* %dir}, i64 0, metadata !87), !dbg !253
  tail call void @llvm.dbg.value(metadata !{i32* %gsi}, i64 0, metadata !88), !dbg !253
  %0 = load i32* %dir, align 4, !dbg !254, !tbaa !175
  %sub = add nsw i32 %0, -1, !dbg !254
  %1 = load i32* %gsi, align 4, !dbg !254, !tbaa !175
  %call = tail call i32 @CCTK_StaggerDirIndex(i32 %sub, i32 %1) #11, !dbg !254
  store i32 %call, i32* %dsi, align 4, !dbg !254, !tbaa !175
  ret void, !dbg !255
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_StaggerDirArray(i32* nocapture %dindex, i32 %dim, i32 %sindex) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %dindex}, i64 0, metadata !93), !dbg !256
  tail call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !94), !dbg !256
  tail call void @llvm.dbg.value(metadata !{i32 %sindex}, i64 0, metadata !95), !dbg !256
  %.b = load i1* @CCTK_StaggerDirArray.hashed, align 1
  br i1 %.b, label %if.end, label %if.then, !dbg !257

if.then:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirArray.hash, i64 0, i64 0), align 16, !dbg !258, !tbaa !175
  store i32 3, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirArray.hash, i64 0, i64 1), align 4, !dbg !260, !tbaa !175
  store i32 9, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirArray.hash, i64 0, i64 2), align 8, !dbg !261, !tbaa !175
  store i32 27, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirArray.hash, i64 0, i64 3), align 4, !dbg !262, !tbaa !175
  store i1 true, i1* @CCTK_StaggerDirArray.hashed, align 1
  br label %if.end, !dbg !263

if.end:                                           ; preds = %entry, %if.then
  %cmp1 = icmp sgt i32 %dim, 4, !dbg !264
  br i1 %cmp1, label %if.then2, label %for.body, !dbg !264

if.then2:                                         ; preds = %if.end
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 256, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 %dim) #8, !dbg !265
  br label %return, !dbg !267

for.body:                                         ; preds = %if.end, %for.inc.for.body_crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 3, %if.end ]
  %sindex.addr.020 = phi i32 [ %rem, %for.inc.for.body_crit_edge ], [ %sindex, %if.end ]
  %arrayidx = getelementptr inbounds [4 x i32]* @CCTK_StaggerDirArray.hash, i64 0, i64 %indvars.iv, !dbg !268
  %0 = load i32* %arrayidx, align 4, !dbg !268, !tbaa !175
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !96), !dbg !268
  %rem = srem i32 %sindex.addr.020, %0, !dbg !271
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !95), !dbg !271
  %1 = trunc i64 %indvars.iv to i32, !dbg !272
  %cmp7 = icmp slt i32 %1, %dim, !dbg !272
  br i1 %cmp7, label %if.then8, label %for.inc, !dbg !272

if.then8:                                         ; preds = %for.body
  %div = sdiv i32 %sindex.addr.020, %0, !dbg !268
  %arrayidx10 = getelementptr inbounds i32* %dindex, i64 %indvars.iv, !dbg !272
  store i32 %div, i32* %arrayidx10, align 4, !dbg !272, !tbaa !175
  br label %for.inc, !dbg !272

for.inc:                                          ; preds = %for.body, %if.then8
  %cmp4 = icmp sgt i32 %1, 0, !dbg !273
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %return, !dbg !273

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !273
  br label %for.body, !dbg !273

return:                                           ; preds = %for.inc, %if.then2
  %retval.0 = phi i32 [ -1, %if.then2 ], [ 0, %for.inc ]
  ret i32 %retval.0, !dbg !274
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_groupstaggerdirarray_(i32* nocapture %ierr, i32* nocapture %dindex, i32* nocapture %dim, i32* nocapture %gsc) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !102), !dbg !275
  tail call void @llvm.dbg.value(metadata !{i32* %dindex}, i64 0, metadata !103), !dbg !275
  tail call void @llvm.dbg.value(metadata !{i32* %dim}, i64 0, metadata !104), !dbg !275
  tail call void @llvm.dbg.value(metadata !{i32* %gsc}, i64 0, metadata !105), !dbg !275
  %0 = load i32* %dim, align 4, !dbg !276, !tbaa !175
  %1 = load i32* %gsc, align 4, !dbg !276, !tbaa !175
  %call = tail call i32 @CCTK_StaggerDirArray(i32* %dindex, i32 %0, i32 %1) #11, !dbg !276
  store i32 %call, i32* %ierr, align 4, !dbg !276, !tbaa !175
  ret void, !dbg !277
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_GroupStaggerDirArrayGI(i32* nocapture %dindex, i32 %dim, i32 %gi) #1 {
entry:
  %group.i = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{i32* %dindex}, i64 0, metadata !108), !dbg !278
  call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !109), !dbg !278
  call void @llvm.dbg.value(metadata !{i32 %gi}, i64 0, metadata !110), !dbg !278
  %0 = bitcast %struct.cGroup* %group.i to i8*, !dbg !279
  call void @llvm.lifetime.start(i64 32, i8* %0) #7, !dbg !279
  call void @llvm.dbg.value(metadata !{i32 %gi}, i64 0, metadata !281) #7, !dbg !279
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %group.i}, metadata !17) #7, !dbg !282
  %call.i = call i32 @CCTK_GroupData(i32 %gi, %struct.cGroup* %group.i) #8, !dbg !283
  %stagtype.i = getelementptr inbounds %struct.cGroup* %group.i, i64 0, i32 3, !dbg !284
  %1 = load i32* %stagtype.i, align 4, !dbg !284, !tbaa !175
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !285) #7, !dbg !284
  call void @llvm.lifetime.end(i64 32, i8* %0) #7, !dbg !286
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !111), !dbg !280
  %call1 = call i32 @CCTK_StaggerDirArray(i32* %dindex, i32 %dim, i32 %1) #11, !dbg !287
  call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !112), !dbg !287
  ret i32 %call1, !dbg !288
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_groupstaggerdirarraygi_(i32* nocapture %ierr, i32* nocapture %dindex, i32* nocapture %dim, i32* nocapture %gi) #1 {
entry:
  %group.i.i = alloca %struct.cGroup, align 4
  call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !115), !dbg !289
  call void @llvm.dbg.value(metadata !{i32* %dindex}, i64 0, metadata !116), !dbg !289
  call void @llvm.dbg.value(metadata !{i32* %dim}, i64 0, metadata !117), !dbg !289
  call void @llvm.dbg.value(metadata !{i32* %gi}, i64 0, metadata !118), !dbg !289
  %0 = load i32* %dim, align 4, !dbg !290, !tbaa !175
  %1 = load i32* %gi, align 4, !dbg !290, !tbaa !175
  call void @llvm.dbg.value(metadata !{i32* %dindex}, i64 0, metadata !291) #7, !dbg !292
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !293) #7, !dbg !292
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !294) #7, !dbg !292
  %2 = bitcast %struct.cGroup* %group.i.i to i8*, !dbg !295
  call void @llvm.lifetime.start(i64 32, i8* %2) #7, !dbg !295
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !297) #7, !dbg !295
  call void @llvm.dbg.declare(metadata !{%struct.cGroup* %group.i.i}, metadata !17) #7, !dbg !298
  %call.i.i = call i32 @CCTK_GroupData(i32 %1, %struct.cGroup* %group.i.i) #8, !dbg !299
  %stagtype.i.i = getelementptr inbounds %struct.cGroup* %group.i.i, i64 0, i32 3, !dbg !300
  %3 = load i32* %stagtype.i.i, align 4, !dbg !300, !tbaa !175
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !301) #7, !dbg !300
  call void @llvm.lifetime.end(i64 32, i8* %2) #7, !dbg !302
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !303) #7, !dbg !296
  %call1.i = call i32 @CCTK_StaggerDirArray(i32* %dindex, i32 %0, i32 %3) #8, !dbg !304
  call void @llvm.dbg.value(metadata !{i32 %call1.i}, i64 0, metadata !305) #7, !dbg !304
  store i32 %call1.i, i32* %ierr, align 4, !dbg !290, !tbaa !175
  ret void, !dbg !306
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_StaggerDirName(i32 %dir, i8* nocapture %stype) #1 {
entry:
  %hs = alloca [7 x i8], align 1
  call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !123), !dbg !307
  call void @llvm.dbg.value(metadata !{i8* %stype}, i64 0, metadata !124), !dbg !307
  call void @llvm.dbg.declare(metadata !{[7 x i8]* %hs}, metadata !126), !dbg !308
  %0 = getelementptr inbounds [7 x i8]* %hs, i64 0, i64 0, !dbg !308
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([7 x i8]* @CCTK_StaggerDirName.hs, i64 0, i64 0), i64 7, i32 1, i1 false), !dbg !308
  %strlen = call i64 @strlen(i8* %stype), !dbg !309
  %leninc = add i64 %strlen, 1, !dbg !309
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %stype, i64 %leninc, i32 1, i1 false), !dbg !309
  %call2 = call i64 @strlen(i8* %0) #9, !dbg !310
  %conv = trunc i64 %call2 to i32, !dbg !310
  %cmp = icmp slt i32 %conv, %dir, !dbg !310
  br i1 %cmp, label %if.then, label %if.end, !dbg !310

if.then:                                          ; preds = %entry
  %call4 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 336, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), i32 %dir) #8, !dbg !311
  br label %if.end, !dbg !313

if.end:                                           ; preds = %if.then, %entry
  %idxprom = sext i32 %dir to i64, !dbg !314
  %arrayidx = getelementptr inbounds [7 x i8]* %hs, i64 0, i64 %idxprom, !dbg !314
  %1 = load i8* %arrayidx, align 1, !dbg !314, !tbaa !176
  %idxprom6 = sext i8 %1 to i64, !dbg !314
  %call7 = call i32** @__ctype_toupper_loc() #10, !dbg !314
  %2 = load i32** %call7, align 8, !dbg !314, !tbaa !219
  %arrayidx8 = getelementptr inbounds i32* %2, i64 %idxprom6, !dbg !314
  %3 = load i32* %arrayidx8, align 4, !dbg !314, !tbaa !175
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !130), !dbg !314
  switch i32 %3, label %sw.default [
    i32 77, label %return
    i32 67, label %sw.bb9
    i32 80, label %sw.bb10
  ], !dbg !314

sw.bb9:                                           ; preds = %if.end
  call void @llvm.dbg.value(metadata !213, i64 0, metadata !125), !dbg !315
  br label %return, !dbg !315

sw.bb10:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !125), !dbg !317
  br label %return, !dbg !317

sw.default:                                       ; preds = %if.end
  %call12 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 347, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str6, i64 0, i64 0), i8* %0) #8, !dbg !318
  br label %return, !dbg !319

return:                                           ; preds = %sw.bb9, %sw.bb10, %if.end, %sw.default
  %retval.0 = phi i32 [ -1, %sw.default ], [ 2, %sw.bb10 ], [ 1, %sw.bb9 ], [ 0, %if.end ]
  ret i32 %retval.0, !dbg !320
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #7

; Function Attrs: nounwind optsize uwtable
define void @cctk_staggerdirname_(i32* nocapture %dsc, i32* nocapture %dir, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %dsc}, i64 0, metadata !136), !dbg !321
  tail call void @llvm.dbg.value(metadata !{i32* %dir}, i64 0, metadata !137), !dbg !321
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !138), !dbg !321
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !139), !dbg !321
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !322
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !140), !dbg !322
  %0 = load i32* %dir, align 4, !dbg !323, !tbaa !175
  %sub = add nsw i32 %0, -1, !dbg !323
  %call1 = tail call i32 @CCTK_StaggerDirName(i32 %sub, i8* %call) #11, !dbg !323
  store i32 %call1, i32* %dsc, align 4, !dbg !323, !tbaa !175
  tail call void @free(i8* %call) #8, !dbg !324
  ret void, !dbg !325
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_ParseStaggerString(i32 %dim, i8* %imp, i8* %gname, i8* %stype) #1 {
entry:
  %hs = alloca [11 x i8], align 1
  call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !145), !dbg !326
  call void @llvm.dbg.value(metadata !{i8* %imp}, i64 0, metadata !146), !dbg !327
  call void @llvm.dbg.value(metadata !{i8* %gname}, i64 0, metadata !147), !dbg !328
  call void @llvm.dbg.value(metadata !{i8* %stype}, i64 0, metadata !148), !dbg !329
  call void @llvm.dbg.value(metadata !213, i64 0, metadata !151), !dbg !330
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !152), !dbg !331
  call void @llvm.dbg.declare(metadata !{[11 x i8]* %hs}, metadata !153), !dbg !332
  %cmp = icmp sgt i32 %dim, 10, !dbg !333
  br i1 %cmp, label %if.then, label %if.end, !dbg !333

if.then:                                          ; preds = %entry
  %call = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 399, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str7, i64 0, i64 0), i32 %dim) #8, !dbg !334
  br label %if.end, !dbg !336

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @CCTK_Equals(i8* %stype, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0)) #8, !dbg !337
  %tobool = icmp eq i32 %call1, 0, !dbg !337
  br i1 %tobool, label %if.else, label %if.then2, !dbg !337

if.then2:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [11 x i8]* %hs, i64 0, i64 0, !dbg !338
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i64 11, i32 1, i1 false), !dbg !338
  br label %for.cond.preheader, !dbg !340

if.else:                                          ; preds = %if.end
  %call4 = call i32 @CCTK_Equals(i8* %stype, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)) #8, !dbg !341
  %tobool5 = icmp eq i32 %call4, 0, !dbg !341
  br i1 %tobool5, label %if.else9, label %if.then6, !dbg !341

if.then6:                                         ; preds = %if.else
  %arraydecay7 = getelementptr inbounds [11 x i8]* %hs, i64 0, i64 0, !dbg !342
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay7, i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0), i64 11, i32 1, i1 false), !dbg !342
  br label %for.cond.preheader, !dbg !344

if.else9:                                         ; preds = %if.else
  %call10 = call i64 @strlen(i8* %stype) #9, !dbg !345
  %conv = trunc i64 %call10 to i32, !dbg !345
  %cmp11 = icmp eq i32 %conv, %dim, !dbg !345
  br i1 %cmp11, label %if.end15, label %if.then13, !dbg !345

if.then13:                                        ; preds = %if.else9
  %call14 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 417, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8]* @.str12, i64 0, i64 0), i8* %stype, i8* %gname, i32 %dim) #8, !dbg !347
  br label %if.end15, !dbg !349

if.end15:                                         ; preds = %if.else9, %if.then13
  %arraydecay16 = getelementptr inbounds [11 x i8]* %hs, i64 0, i64 0, !dbg !350
  %strlen = call i64 @strlen(i8* %stype), !dbg !350
  %leninc = add i64 %strlen, 1, !dbg !350
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay16, i8* %stype, i64 %leninc, i32 1, i1 false), !dbg !350
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then6, %if.end15, %if.then2
  %cmp2045 = icmp sgt i32 %dim, 0, !dbg !351
  br i1 %cmp2045, label %for.body.lr.ph, label %return, !dbg !351

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %call24 = call i32** @__ctype_toupper_loc() #10, !dbg !352
  %0 = load i32** %call24, align 8, !dbg !352, !tbaa !219
  br label %for.body, !dbg !351

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %sw.epilog.for.body_crit_edge ]
  %scode.048 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %sw.epilog.for.body_crit_edge ]
  %base.047 = phi i32 [ 1, %for.body.lr.ph ], [ %mul29, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr inbounds [11 x i8]* %hs, i64 0, i64 %indvars.iv, !dbg !352
  %1 = load i8* %arrayidx, align 1, !dbg !352, !tbaa !176
  %idxprom23 = sext i8 %1 to i64, !dbg !352
  %arrayidx25 = getelementptr inbounds i32* %0, i64 %idxprom23, !dbg !352
  %2 = load i32* %arrayidx25, align 4, !dbg !352, !tbaa !175
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !157), !dbg !352
  switch i32 %2, label %sw.default [
    i32 77, label %sw.epilog
    i32 67, label %sw.bb26
    i32 80, label %sw.bb27
  ], !dbg !352

sw.bb26:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata !213, i64 0, metadata !150), !dbg !353
  br label %sw.epilog, !dbg !353

sw.bb27:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata !222, i64 0, metadata !150), !dbg !355
  br label %sw.epilog, !dbg !355

sw.default:                                       ; preds = %for.body
  %call28 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 433, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str13, i64 0, i64 0), i8* %stype, i8* %imp, i8* %gname) #8, !dbg !356
  br label %return, !dbg !357

sw.epilog:                                        ; preds = %for.body, %sw.bb27, %sw.bb26
  %m.0 = phi i32 [ 2, %sw.bb27 ], [ 1, %sw.bb26 ], [ 0, %for.body ]
  %mul = mul nsw i32 %m.0, %base.047, !dbg !358
  %add = add nsw i32 %mul, %scode.048, !dbg !358
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !152), !dbg !358
  call void @llvm.dbg.value(metadata !{i32 %mul29}, i64 0, metadata !151), !dbg !359
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !351
  %3 = trunc i64 %indvars.iv.next to i32, !dbg !351
  %cmp20 = icmp slt i32 %3, %dim, !dbg !351
  br i1 %cmp20, label %sw.epilog.for.body_crit_edge, label %return, !dbg !351

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  %mul29 = mul nsw i32 %base.047, 3, !dbg !359
  br label %for.body, !dbg !351

return:                                           ; preds = %for.cond.preheader, %sw.epilog, %sw.default
  %retval.0 = phi i32 [ -1, %sw.default ], [ 0, %for.cond.preheader ], [ %add, %sw.epilog ]
  ret i32 %retval.0, !dbg !360
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { nounwind optsize readnone }
attributes #11 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !161, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !31, metadata !38, metadata !44, metadata !55, metadata !67, metadata !73, metadata !82, metadata !89, metadata !98, metadata !106, metadata !113, metadata !119, metadata !132, metadata !141}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_Stagger_c", metadata !"CCTKi_version_main_Stagger_c", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_Stagger_c, null, null, metadata !2, i32 30} ; [ DW_TAG_subprogram ] [line 30] [def] [CCTKi_version_main_Stagger_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_GroupStaggerIndexGI", metadata !"CCTK_GroupStaggerIndexGI", metadata !"", i32 70, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CCTK_GroupStaggerIndexGI, null, null, metadata !15, i32 71} ; [ DW_TAG_subprogram ] [line 70] [def] [scope 71] [CCTK_GroupStaggerIndexGI]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16, metadata !17, metadata !30}
!16 = metadata !{i32 786689, metadata !11, metadata !"gindex", metadata !5, i32 16777286, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gindex] [line 70]
!17 = metadata !{i32 786688, metadata !11, metadata !"group", metadata !5, i32 72, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group] [line 72]
!18 = metadata !{i32 786454, metadata !1, null, metadata !"cGroup", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [cGroup] [line 24, size 0, align 0, offset 0] [from ]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"", i32 14, i64 256, i64 32, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 256, align 32, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Groups.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"grouptype", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [grouptype] [line 16, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"vartype", i32 17, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [vartype] [line 17, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"disttype", i32 18, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [disttype] [line 18, size 32, align 32, offset 64] [from int]
!25 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"stagtype", i32 19, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [stagtype] [line 19, size 32, align 32, offset 96] [from int]
!26 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"dim", i32 20, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [dim] [line 20, size 32, align 32, offset 128] [from int]
!27 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"numvars", i32 21, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [numvars] [line 21, size 32, align 32, offset 160] [from int]
!28 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"numtimelevels", i32 22, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [numtimelevels] [line 22, size 32, align 32, offset 192] [from int]
!29 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"vectorgroup", i32 23, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [vectorgroup] [line 23, size 32, align 32, offset 224] [from int]
!30 = metadata !{i32 786688, metadata !11, metadata !"sc", metadata !5, i32 73, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 73]
!31 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_groupstaggerindexgi_", metadata !"cctk_groupstaggerindexgi_", metadata !"", i32 79, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*)* @cctk_groupstaggerindexgi_, null, null, metadata !35, i32 81} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 81] [cctk_groupstaggerindexgi_]
!32 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{null, metadata !34, metadata !34}
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!35 = metadata !{metadata !36, metadata !37}
!36 = metadata !{i32 786689, metadata !31, metadata !"stagcode", metadata !5, i32 16777296, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stagcode] [line 80]
!37 = metadata !{i32 786689, metadata !31, metadata !"gindex", metadata !5, i32 33554512, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gindex] [line 80]
!38 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_GroupStaggerIndexGN", metadata !"CCTK_GroupStaggerIndexGN", metadata !"", i32 100, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_GroupStaggerIndexGN, null, null, metadata !41, i32 101} ; [ DW_TAG_subprogram ] [line 100] [def] [scope 101] [CCTK_GroupStaggerIndexGN]
!39 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{metadata !14, metadata !8}
!41 = metadata !{metadata !42, metadata !43}
!42 = metadata !{i32 786689, metadata !38, metadata !"gname", metadata !5, i32 16777316, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gname] [line 100]
!43 = metadata !{i32 786688, metadata !38, metadata !"gindex", metadata !5, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gindex] [line 102]
!44 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_groupstaggerindexgn_", metadata !"cctk_groupstaggerindexgn_", metadata !"", i32 107, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_groupstaggerindexgn_, null, null, metadata !49, i32 109} ; [ DW_TAG_subprogram ] [line 107] [def] [scope 109] [cctk_groupstaggerindexgn_]
!45 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!46 = metadata !{null, metadata !34, metadata !47, metadata !48}
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!48 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!50 = metadata !{i32 786689, metadata !44, metadata !"scode", metadata !5, i32 16777324, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [scode] [line 108]
!51 = metadata !{i32 786689, metadata !44, metadata !"cctk_str1", metadata !5, i32 33554540, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 108]
!52 = metadata !{i32 786689, metadata !44, metadata !"cctk_strlen1", metadata !5, i32 50331756, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 108]
!53 = metadata !{i32 786688, metadata !44, metadata !"gname", metadata !5, i32 110, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gname] [line 110]
!54 = metadata !{i32 786688, metadata !44, metadata !"gindex", metadata !5, i32 111, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gindex] [line 111]
!55 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_StaggerIndex", metadata !"CCTK_StaggerIndex", metadata !"", i32 133, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_StaggerIndex, null, null, metadata !56, i32 134} ; [ DW_TAG_subprogram ] [line 133] [def] [scope 134] [CCTK_StaggerIndex]
!56 = metadata !{metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63}
!57 = metadata !{i32 786689, metadata !55, metadata !"stype", metadata !5, i32 16777349, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stype] [line 133]
!58 = metadata !{i32 786688, metadata !55, metadata !"i", metadata !5, i32 135, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 135]
!59 = metadata !{i32 786688, metadata !55, metadata !"scode", metadata !5, i32 135, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scode] [line 135]
!60 = metadata !{i32 786688, metadata !55, metadata !"base", metadata !5, i32 135, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 135]
!61 = metadata !{i32 786688, metadata !55, metadata !"dim", metadata !5, i32 135, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 135]
!62 = metadata !{i32 786688, metadata !55, metadata !"m", metadata !5, i32 135, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 135]
!63 = metadata !{i32 786688, metadata !64, metadata !"__res", metadata !5, i32 144, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 144]
!64 = metadata !{i32 786443, metadata !1, metadata !65, i32 144, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!65 = metadata !{i32 786443, metadata !1, metadata !66, i32 142, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!66 = metadata !{i32 786443, metadata !1, metadata !55, i32 141, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_staggerindex_", metadata !"cctk_staggerindex_", metadata !"", i32 160, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_staggerindex_, null, null, metadata !68, i32 162} ; [ DW_TAG_subprogram ] [line 160] [def] [scope 162] [cctk_staggerindex_]
!68 = metadata !{metadata !69, metadata !70, metadata !71, metadata !72}
!69 = metadata !{i32 786689, metadata !67, metadata !"scode", metadata !5, i32 16777377, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [scode] [line 161]
!70 = metadata !{i32 786689, metadata !67, metadata !"cctk_str1", metadata !5, i32 33554593, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 161]
!71 = metadata !{i32 786689, metadata !67, metadata !"cctk_strlen1", metadata !5, i32 50331809, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 161]
!72 = metadata !{i32 786688, metadata !67, metadata !"sname", metadata !5, i32 163, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sname] [line 163]
!73 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_StaggerDirIndex", metadata !"CCTK_StaggerDirIndex", metadata !"", i32 185, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @CCTK_StaggerDirIndex, null, null, metadata !76, i32 186} ; [ DW_TAG_subprogram ] [line 185] [def] [scope 186] [CCTK_StaggerDirIndex]
!74 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!75 = metadata !{metadata !14, metadata !14, metadata !14}
!76 = metadata !{metadata !77, metadata !78, metadata !79, metadata !80, metadata !81}
!77 = metadata !{i32 786689, metadata !73, metadata !"dir", metadata !5, i32 16777401, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 185]
!78 = metadata !{i32 786689, metadata !73, metadata !"si", metadata !5, i32 33554617, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [si] [line 185]
!79 = metadata !{i32 786688, metadata !73, metadata !"val", metadata !5, i32 187, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 187]
!80 = metadata !{i32 786688, metadata !73, metadata !"b", metadata !5, i32 187, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 187]
!81 = metadata !{i32 786688, metadata !73, metadata !"dsi", metadata !5, i32 187, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dsi] [line 187]
!82 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_staggerdirindex_", metadata !"cctk_staggerdirindex_", metadata !"", i32 214, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i32*)* @cctk_staggerdirindex_, null, null, metadata !85, i32 216} ; [ DW_TAG_subprogram ] [line 214] [def] [scope 216] [cctk_staggerdirindex_]
!83 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{null, metadata !34, metadata !34, metadata !34}
!85 = metadata !{metadata !86, metadata !87, metadata !88}
!86 = metadata !{i32 786689, metadata !82, metadata !"dsi", metadata !5, i32 16777431, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsi] [line 215]
!87 = metadata !{i32 786689, metadata !82, metadata !"dir", metadata !5, i32 33554647, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 215]
!88 = metadata !{i32 786689, metadata !82, metadata !"gsi", metadata !5, i32 50331863, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gsi] [line 215]
!89 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_StaggerDirArray", metadata !"CCTK_StaggerDirArray", metadata !"", i32 240, metadata !90, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i32, i32)* @CCTK_StaggerDirArray, null, null, metadata !92, i32 241} ; [ DW_TAG_subprogram ] [line 240] [def] [scope 241] [CCTK_StaggerDirArray]
!90 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!91 = metadata !{metadata !14, metadata !34, metadata !14, metadata !14}
!92 = metadata !{metadata !93, metadata !94, metadata !95, metadata !96, metadata !97}
!93 = metadata !{i32 786689, metadata !89, metadata !"dindex", metadata !5, i32 16777456, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dindex] [line 240]
!94 = metadata !{i32 786689, metadata !89, metadata !"dim", metadata !5, i32 33554672, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 240]
!95 = metadata !{i32 786689, metadata !89, metadata !"sindex", metadata !5, i32 50331888, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sindex] [line 240]
!96 = metadata !{i32 786688, metadata !89, metadata !"val", metadata !5, i32 242, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 242]
!97 = metadata !{i32 786688, metadata !89, metadata !"b", metadata !5, i32 242, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 242]
!98 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_groupstaggerdirarray_", metadata !"cctk_groupstaggerdirarray_", metadata !"", i32 271, metadata !99, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i32*, i32*)* @cctk_groupstaggerdirarray_, null, null, metadata !101, i32 273} ; [ DW_TAG_subprogram ] [line 271] [def] [scope 273] [cctk_groupstaggerdirarray_]
!99 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!100 = metadata !{null, metadata !34, metadata !34, metadata !34, metadata !34}
!101 = metadata !{metadata !102, metadata !103, metadata !104, metadata !105}
!102 = metadata !{i32 786689, metadata !98, metadata !"ierr", metadata !5, i32 16777488, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 272]
!103 = metadata !{i32 786689, metadata !98, metadata !"dindex", metadata !5, i32 33554704, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dindex] [line 272]
!104 = metadata !{i32 786689, metadata !98, metadata !"dim", metadata !5, i32 50331920, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 272]
!105 = metadata !{i32 786689, metadata !98, metadata !"gsc", metadata !5, i32 67109136, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gsc] [line 272]
!106 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_GroupStaggerDirArrayGI", metadata !"CCTK_GroupStaggerDirArrayGI", metadata !"", i32 296, metadata !90, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i32, i32)* @CCTK_GroupStaggerDirArrayGI, null, null, metadata !107, i32 297} ; [ DW_TAG_subprogram ] [line 296] [def] [scope 297] [CCTK_GroupStaggerDirArrayGI]
!107 = metadata !{metadata !108, metadata !109, metadata !110, metadata !111, metadata !112}
!108 = metadata !{i32 786689, metadata !106, metadata !"dindex", metadata !5, i32 16777512, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dindex] [line 296]
!109 = metadata !{i32 786689, metadata !106, metadata !"dim", metadata !5, i32 33554728, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 296]
!110 = metadata !{i32 786689, metadata !106, metadata !"gi", metadata !5, i32 50331944, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gi] [line 296]
!111 = metadata !{i32 786688, metadata !106, metadata !"si", metadata !5, i32 298, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [si] [line 298]
!112 = metadata !{i32 786688, metadata !106, metadata !"ierr", metadata !5, i32 298, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 298]
!113 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_groupstaggerdirarraygi_", metadata !"cctk_groupstaggerdirarraygi_", metadata !"", i32 304, metadata !99, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i32*, i32*)* @cctk_groupstaggerdirarraygi_, null, null, metadata !114, i32 306} ; [ DW_TAG_subprogram ] [line 304] [def] [scope 306] [cctk_groupstaggerdirarraygi_]
!114 = metadata !{metadata !115, metadata !116, metadata !117, metadata !118}
!115 = metadata !{i32 786689, metadata !113, metadata !"ierr", metadata !5, i32 16777521, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 305]
!116 = metadata !{i32 786689, metadata !113, metadata !"dindex", metadata !5, i32 33554737, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dindex] [line 305]
!117 = metadata !{i32 786689, metadata !113, metadata !"dim", metadata !5, i32 50331953, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 305]
!118 = metadata !{i32 786689, metadata !113, metadata !"gi", metadata !5, i32 67109169, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gi] [line 305]
!119 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_StaggerDirName", metadata !"CCTK_StaggerDirName", metadata !"", i32 327, metadata !120, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*)* @CCTK_StaggerDirName, null, null, metadata !122, i32 328} ; [ DW_TAG_subprogram ] [line 327] [def] [scope 328] [CCTK_StaggerDirName]
!120 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!121 = metadata !{metadata !14, metadata !14, metadata !8}
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126, metadata !130}
!123 = metadata !{i32 786689, metadata !119, metadata !"dir", metadata !5, i32 16777543, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 327]
!124 = metadata !{i32 786689, metadata !119, metadata !"stype", metadata !5, i32 33554759, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stype] [line 327]
!125 = metadata !{i32 786688, metadata !119, metadata !"scode", metadata !5, i32 329, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scode] [line 329]
!126 = metadata !{i32 786688, metadata !119, metadata !"hs", metadata !5, i32 330, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hs] [line 330]
!127 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 56, i64 8, i32 0, i32 0, metadata !10, metadata !128, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 56, align 8, offset 0] [from char]
!128 = metadata !{metadata !129}
!129 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!130 = metadata !{i32 786688, metadata !131, metadata !"__res", metadata !5, i32 341, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 341]
!131 = metadata !{i32 786443, metadata !1, metadata !119, i32 341, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!132 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_staggerdirname_", metadata !"cctk_staggerdirname_", metadata !"", i32 354, metadata !133, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i8*, i32)* @cctk_staggerdirname_, null, null, metadata !135, i32 356} ; [ DW_TAG_subprogram ] [line 354] [def] [scope 356] [cctk_staggerdirname_]
!133 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!134 = metadata !{null, metadata !34, metadata !34, metadata !47, metadata !48}
!135 = metadata !{metadata !136, metadata !137, metadata !138, metadata !139, metadata !140}
!136 = metadata !{i32 786689, metadata !132, metadata !"dsc", metadata !5, i32 16777571, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsc] [line 355]
!137 = metadata !{i32 786689, metadata !132, metadata !"dir", metadata !5, i32 33554787, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 355]
!138 = metadata !{i32 786689, metadata !132, metadata !"cctk_str1", metadata !5, i32 50332003, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 355]
!139 = metadata !{i32 786689, metadata !132, metadata !"cctk_strlen1", metadata !5, i32 67109219, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 355]
!140 = metadata !{i32 786688, metadata !132, metadata !"sname", metadata !5, i32 357, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sname] [line 357]
!141 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_ParseStaggerString", metadata !"CCTKi_ParseStaggerString", metadata !"", i32 387, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i8*, i8*)* @CCTKi_ParseStaggerString, null, null, metadata !144, i32 391} ; [ DW_TAG_subprogram ] [line 387] [def] [scope 391] [CCTKi_ParseStaggerString]
!142 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!143 = metadata !{metadata !14, metadata !14, metadata !8, metadata !8, metadata !8}
!144 = metadata !{metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !157}
!145 = metadata !{i32 786689, metadata !141, metadata !"dim", metadata !5, i32 16777603, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 387]
!146 = metadata !{i32 786689, metadata !141, metadata !"imp", metadata !5, i32 33554820, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imp] [line 388]
!147 = metadata !{i32 786689, metadata !141, metadata !"gname", metadata !5, i32 50332037, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gname] [line 389]
!148 = metadata !{i32 786689, metadata !141, metadata !"stype", metadata !5, i32 67109254, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stype] [line 390]
!149 = metadata !{i32 786688, metadata !141, metadata !"i", metadata !5, i32 392, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 392]
!150 = metadata !{i32 786688, metadata !141, metadata !"m", metadata !5, i32 392, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 392]
!151 = metadata !{i32 786688, metadata !141, metadata !"base", metadata !5, i32 393, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 393]
!152 = metadata !{i32 786688, metadata !141, metadata !"scode", metadata !5, i32 394, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scode] [line 394]
!153 = metadata !{i32 786688, metadata !141, metadata !"hs", metadata !5, i32 395, metadata !154, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hs] [line 395]
!154 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 88, i64 8, i32 0, i32 0, metadata !10, metadata !155, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 88, align 8, offset 0] [from char]
!155 = metadata !{metadata !156}
!156 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!157 = metadata !{i32 786688, metadata !158, metadata !"__res", metadata !5, i32 427, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 427]
!158 = metadata !{i32 786443, metadata !1, metadata !159, i32 427, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!159 = metadata !{i32 786443, metadata !1, metadata !160, i32 426, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!160 = metadata !{i32 786443, metadata !1, metadata !141, i32 425, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!161 = metadata !{metadata !162, metadata !166, metadata !167, metadata !168, metadata !169}
!162 = metadata !{i32 786484, i32 0, metadata !73, metadata !"hash", metadata !"hash", metadata !"", metadata !5, i32 188, metadata !163, i32 1, i32 1, [4 x i32]* @CCTK_StaggerDirIndex.hash, null} ; [ DW_TAG_variable ] [hash] [line 188] [local] [def]
!163 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !14, metadata !164, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!164 = metadata !{metadata !165}
!165 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!166 = metadata !{i32 786484, i32 0, metadata !73, metadata !"hashed", metadata !"hashed", metadata !"", metadata !5, i32 188, metadata !14, i32 1, i32 1, null, null}
!167 = metadata !{i32 786484, i32 0, metadata !89, metadata !"hash", metadata !"hash", metadata !"", metadata !5, i32 243, metadata !163, i32 1, i32 1, [4 x i32]* @CCTK_StaggerDirArray.hash, null} ; [ DW_TAG_variable ] [hash] [line 243] [local] [def]
!168 = metadata !{i32 786484, i32 0, metadata !89, metadata !"hashed", metadata !"hashed", metadata !"", metadata !5, i32 243, metadata !14, i32 1, i32 1, null, null}
!169 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 28, metadata !8, i32 1, i32 1, null, null}
!170 = metadata !{i32 30, i32 0, metadata !4, null}
!171 = metadata !{i32 70, i32 0, metadata !11, null}
!172 = metadata !{i32 72, i32 0, metadata !11, null}
!173 = metadata !{i32 74, i32 0, metadata !11, null}
!174 = metadata !{i32 75, i32 0, metadata !11, null}
!175 = metadata !{metadata !"int", metadata !176}
!176 = metadata !{metadata !"omnipotent char", metadata !177}
!177 = metadata !{metadata !"Simple C/C++ TBAA"}
!178 = metadata !{i32 76, i32 0, metadata !11, null}
!179 = metadata !{i32 80, i32 0, metadata !31, null}
!180 = metadata !{i32 82, i32 0, metadata !31, null}
!181 = metadata !{i32 70, i32 0, metadata !11, metadata !180}
!182 = metadata !{i32 786689, metadata !11, metadata !"gindex", metadata !5, i32 16777286, metadata !14, i32 0, metadata !180} ; [ DW_TAG_arg_variable ] [gindex] [line 70]
!183 = metadata !{i32 72, i32 0, metadata !11, metadata !180}
!184 = metadata !{i32 74, i32 0, metadata !11, metadata !180}
!185 = metadata !{i32 75, i32 0, metadata !11, metadata !180}
!186 = metadata !{i32 786688, metadata !11, metadata !"sc", metadata !5, i32 73, metadata !14, i32 0, metadata !180} ; [ DW_TAG_auto_variable ] [sc] [line 73]
!187 = metadata !{i32 76, i32 0, metadata !11, metadata !180}
!188 = metadata !{i32 83, i32 0, metadata !31, null}
!189 = metadata !{i32 100, i32 0, metadata !38, null}
!190 = metadata !{i32 103, i32 0, metadata !38, null}
!191 = metadata !{i32 70, i32 0, metadata !11, metadata !192}
!192 = metadata !{i32 104, i32 0, metadata !38, null}
!193 = metadata !{i32 786689, metadata !11, metadata !"gindex", metadata !5, i32 16777286, metadata !14, i32 0, metadata !192} ; [ DW_TAG_arg_variable ] [gindex] [line 70]
!194 = metadata !{i32 72, i32 0, metadata !11, metadata !192}
!195 = metadata !{i32 74, i32 0, metadata !11, metadata !192}
!196 = metadata !{i32 75, i32 0, metadata !11, metadata !192}
!197 = metadata !{i32 786688, metadata !11, metadata !"sc", metadata !5, i32 73, metadata !14, i32 0, metadata !192} ; [ DW_TAG_auto_variable ] [sc] [line 73]
!198 = metadata !{i32 76, i32 0, metadata !11, metadata !192}
!199 = metadata !{i32 108, i32 0, metadata !44, null}
!200 = metadata !{i32 110, i32 0, metadata !44, null}
!201 = metadata !{i32 112, i32 0, metadata !44, null}
!202 = metadata !{i32 70, i32 0, metadata !11, metadata !203}
!203 = metadata !{i32 113, i32 0, metadata !44, null}
!204 = metadata !{i32 786689, metadata !11, metadata !"gindex", metadata !5, i32 16777286, metadata !14, i32 0, metadata !203} ; [ DW_TAG_arg_variable ] [gindex] [line 70]
!205 = metadata !{i32 72, i32 0, metadata !11, metadata !203}
!206 = metadata !{i32 74, i32 0, metadata !11, metadata !203}
!207 = metadata !{i32 75, i32 0, metadata !11, metadata !203}
!208 = metadata !{i32 786688, metadata !11, metadata !"sc", metadata !5, i32 73, metadata !14, i32 0, metadata !203} ; [ DW_TAG_auto_variable ] [sc] [line 73]
!209 = metadata !{i32 76, i32 0, metadata !11, metadata !203}
!210 = metadata !{i32 114, i32 0, metadata !44, null}
!211 = metadata !{i32 115, i32 0, metadata !44, null}
!212 = metadata !{i32 133, i32 0, metadata !55, null}
!213 = metadata !{i32 1}
!214 = metadata !{i32 137, i32 0, metadata !55, null}
!215 = metadata !{i32 138, i32 0, metadata !55, null}
!216 = metadata !{i32 139, i32 0, metadata !55, null}
!217 = metadata !{i32 141, i32 0, metadata !66, null}
!218 = metadata !{i32 144, i32 0, metadata !64, null}
!219 = metadata !{metadata !"any pointer", metadata !176}
!220 = metadata !{i32 147, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !1, metadata !65, i32 145, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!222 = metadata !{i32 2}
!223 = metadata !{i32 148, i32 0, metadata !221, null}
!224 = metadata !{i32 150, i32 0, metadata !221, null}
!225 = metadata !{i32 152, i32 0, metadata !221, null}
!226 = metadata !{i32 154, i32 0, metadata !65, null}
!227 = metadata !{i32 155, i32 0, metadata !65, null}
!228 = metadata !{i32 158, i32 0, metadata !55, null}
!229 = metadata !{i32 161, i32 0, metadata !67, null}
!230 = metadata !{i32 163, i32 0, metadata !67, null}
!231 = metadata !{i32 164, i32 0, metadata !67, null}
!232 = metadata !{i32 165, i32 0, metadata !67, null}
!233 = metadata !{i32 166, i32 0, metadata !67, null}
!234 = metadata !{i32 185, i32 0, metadata !73, null}
!235 = metadata !{i32 187, i32 0, metadata !73, null}
!236 = metadata !{i32 190, i32 0, metadata !73, null}
!237 = metadata !{i32 192, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !73, i32 191, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!239 = metadata !{i32 193, i32 0, metadata !238, null}
!240 = metadata !{i32 194, i32 0, metadata !238, null}
!241 = metadata !{i32 195, i32 0, metadata !238, null}
!242 = metadata !{i32 197, i32 0, metadata !238, null}
!243 = metadata !{i32 201, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !245, i32 200, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!245 = metadata !{i32 786443, metadata !1, metadata !73, i32 199, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!246 = metadata !{i32 202, i32 0, metadata !244, null}
!247 = metadata !{i32 203, i32 0, metadata !244, null}
!248 = metadata !{i32 205, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !244, i32 204, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!250 = metadata !{i32 206, i32 0, metadata !249, null}
!251 = metadata !{i32 199, i32 0, metadata !245, null}
!252 = metadata !{i32 209, i32 0, metadata !73, null}
!253 = metadata !{i32 215, i32 0, metadata !82, null}
!254 = metadata !{i32 219, i32 0, metadata !82, null}
!255 = metadata !{i32 220, i32 0, metadata !82, null}
!256 = metadata !{i32 240, i32 0, metadata !89, null}
!257 = metadata !{i32 245, i32 0, metadata !89, null}
!258 = metadata !{i32 247, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !89, i32 246, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!260 = metadata !{i32 248, i32 0, metadata !259, null}
!261 = metadata !{i32 249, i32 0, metadata !259, null}
!262 = metadata !{i32 250, i32 0, metadata !259, null}
!263 = metadata !{i32 252, i32 0, metadata !259, null}
!264 = metadata !{i32 254, i32 0, metadata !89, null}
!265 = metadata !{i32 256, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !89, i32 255, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!267 = metadata !{i32 258, i32 0, metadata !266, null}
!268 = metadata !{i32 263, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !270, i32 262, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!270 = metadata !{i32 786443, metadata !1, metadata !89, i32 261, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!271 = metadata !{i32 264, i32 0, metadata !269, null}
!272 = metadata !{i32 265, i32 0, metadata !269, null}
!273 = metadata !{i32 261, i32 0, metadata !270, null}
!274 = metadata !{i32 267, i32 0, metadata !89, null}
!275 = metadata !{i32 272, i32 0, metadata !98, null}
!276 = metadata !{i32 276, i32 0, metadata !98, null}
!277 = metadata !{i32 277, i32 0, metadata !98, null}
!278 = metadata !{i32 296, i32 0, metadata !106, null}
!279 = metadata !{i32 70, i32 0, metadata !11, metadata !280}
!280 = metadata !{i32 299, i32 0, metadata !106, null}
!281 = metadata !{i32 786689, metadata !11, metadata !"gindex", metadata !5, i32 16777286, metadata !14, i32 0, metadata !280} ; [ DW_TAG_arg_variable ] [gindex] [line 70]
!282 = metadata !{i32 72, i32 0, metadata !11, metadata !280}
!283 = metadata !{i32 74, i32 0, metadata !11, metadata !280}
!284 = metadata !{i32 75, i32 0, metadata !11, metadata !280}
!285 = metadata !{i32 786688, metadata !11, metadata !"sc", metadata !5, i32 73, metadata !14, i32 0, metadata !280} ; [ DW_TAG_auto_variable ] [sc] [line 73]
!286 = metadata !{i32 76, i32 0, metadata !11, metadata !280}
!287 = metadata !{i32 300, i32 0, metadata !106, null}
!288 = metadata !{i32 301, i32 0, metadata !106, null}
!289 = metadata !{i32 305, i32 0, metadata !113, null}
!290 = metadata !{i32 307, i32 0, metadata !113, null}
!291 = metadata !{i32 786689, metadata !106, metadata !"dindex", metadata !5, i32 16777512, metadata !34, i32 0, metadata !290} ; [ DW_TAG_arg_variable ] [dindex] [line 296]
!292 = metadata !{i32 296, i32 0, metadata !106, metadata !290}
!293 = metadata !{i32 786689, metadata !106, metadata !"dim", metadata !5, i32 33554728, metadata !14, i32 0, metadata !290} ; [ DW_TAG_arg_variable ] [dim] [line 296]
!294 = metadata !{i32 786689, metadata !106, metadata !"gi", metadata !5, i32 50331944, metadata !14, i32 0, metadata !290} ; [ DW_TAG_arg_variable ] [gi] [line 296]
!295 = metadata !{i32 70, i32 0, metadata !11, metadata !296}
!296 = metadata !{i32 299, i32 0, metadata !106, metadata !290}
!297 = metadata !{i32 786689, metadata !11, metadata !"gindex", metadata !5, i32 16777286, metadata !14, i32 0, metadata !296} ; [ DW_TAG_arg_variable ] [gindex] [line 70]
!298 = metadata !{i32 72, i32 0, metadata !11, metadata !296}
!299 = metadata !{i32 74, i32 0, metadata !11, metadata !296}
!300 = metadata !{i32 75, i32 0, metadata !11, metadata !296}
!301 = metadata !{i32 786688, metadata !11, metadata !"sc", metadata !5, i32 73, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [sc] [line 73]
!302 = metadata !{i32 76, i32 0, metadata !11, metadata !296}
!303 = metadata !{i32 786688, metadata !106, metadata !"si", metadata !5, i32 298, metadata !14, i32 0, metadata !290} ; [ DW_TAG_auto_variable ] [si] [line 298]
!304 = metadata !{i32 300, i32 0, metadata !106, metadata !290}
!305 = metadata !{i32 786688, metadata !106, metadata !"ierr", metadata !5, i32 298, metadata !14, i32 0, metadata !290} ; [ DW_TAG_auto_variable ] [ierr] [line 298]
!306 = metadata !{i32 308, i32 0, metadata !113, null}
!307 = metadata !{i32 327, i32 0, metadata !119, null}
!308 = metadata !{i32 330, i32 0, metadata !119, null}
!309 = metadata !{i32 332, i32 0, metadata !119, null}
!310 = metadata !{i32 334, i32 0, metadata !119, null}
!311 = metadata !{i32 336, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !119, i32 335, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!313 = metadata !{i32 339, i32 0, metadata !312, null}
!314 = metadata !{i32 341, i32 0, metadata !131, null}
!315 = metadata !{i32 344, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !119, i32 342, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!317 = metadata !{i32 345, i32 0, metadata !316, null}
!318 = metadata !{i32 347, i32 0, metadata !316, null}
!319 = metadata !{i32 349, i32 0, metadata !316, null}
!320 = metadata !{i32 352, i32 0, metadata !119, null}
!321 = metadata !{i32 355, i32 0, metadata !132, null}
!322 = metadata !{i32 357, i32 0, metadata !132, null}
!323 = metadata !{i32 359, i32 0, metadata !132, null}
!324 = metadata !{i32 361, i32 0, metadata !132, null}
!325 = metadata !{i32 362, i32 0, metadata !132, null}
!326 = metadata !{i32 387, i32 0, metadata !141, null}
!327 = metadata !{i32 388, i32 0, metadata !141, null}
!328 = metadata !{i32 389, i32 0, metadata !141, null}
!329 = metadata !{i32 390, i32 0, metadata !141, null}
!330 = metadata !{i32 393, i32 0, metadata !141, null}
!331 = metadata !{i32 394, i32 0, metadata !141, null}
!332 = metadata !{i32 395, i32 0, metadata !141, null}
!333 = metadata !{i32 397, i32 0, metadata !141, null}
!334 = metadata !{i32 399, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !1, metadata !141, i32 398, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!336 = metadata !{i32 402, i32 0, metadata !335, null}
!337 = metadata !{i32 405, i32 0, metadata !141, null}
!338 = metadata !{i32 407, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !141, i32 406, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!340 = metadata !{i32 408, i32 0, metadata !339, null}
!341 = metadata !{i32 409, i32 0, metadata !141, null}
!342 = metadata !{i32 411, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !141, i32 410, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!344 = metadata !{i32 412, i32 0, metadata !343, null}
!345 = metadata !{i32 415, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !141, i32 414, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!347 = metadata !{i32 417, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !346, i32 416, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!349 = metadata !{i32 420, i32 0, metadata !348, null}
!350 = metadata !{i32 422, i32 0, metadata !346, null}
!351 = metadata !{i32 425, i32 0, metadata !160, null}
!352 = metadata !{i32 427, i32 0, metadata !158, null}
!353 = metadata !{i32 430, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !159, i32 428, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c]
!355 = metadata !{i32 431, i32 0, metadata !354, null}
!356 = metadata !{i32 433, i32 0, metadata !354, null}
!357 = metadata !{i32 436, i32 0, metadata !354, null}
!358 = metadata !{i32 438, i32 0, metadata !159, null}
!359 = metadata !{i32 439, i32 0, metadata !159, null}
!360 = metadata !{i32 443, i32 0, metadata !141, null}
