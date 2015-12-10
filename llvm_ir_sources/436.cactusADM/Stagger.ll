; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [76 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [43 x i8] c"CCTK_StaggerIndex: Unknown stagger type %s\00", align 1
@CCTK_StaggerDirIndex.hash = internal unnamed_addr global [4 x i32] zeroinitializer, align 16
@CCTK_StaggerDirIndex.hashed = internal unnamed_addr global i1 false
@CCTK_StaggerDirArray.hash = internal unnamed_addr global [4 x i32] zeroinitializer, align 16
@CCTK_StaggerDirArray.hashed = internal unnamed_addr global i1 false
@.str3 = private unnamed_addr constant [56 x i8] c"CCTK_StaggerDirArray: Dimension %d exceeds maximum of 4\00", align 1
@CCTK_StaggerDirName.hs = private unnamed_addr constant [7 x i8] c"MMMMMM\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
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

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_Stagger_c() #0 {
  ret i8* getelementptr inbounds ([84 x i8]* @.str14, i64 0, i64 0), !dbg !168
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupStaggerIndexGI(i32 %gindex) #1 {
  %group = alloca %struct.cGroup, align 4
  tail call void @llvm.dbg.value(metadata i32 %gindex, i64 0, metadata !16, metadata !169), !dbg !170
  tail call void @llvm.dbg.value(metadata %struct.cGroup* %group, i64 0, metadata !17, metadata !169), !dbg !171
  %1 = call i32 @CCTK_GroupData(i32 %gindex, %struct.cGroup* %group) #7, !dbg !172
  %2 = getelementptr inbounds %struct.cGroup* %group, i64 0, i32 3, !dbg !173
  %3 = load i32* %2, align 4, !dbg !173, !tbaa !174
  call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !30, metadata !169), !dbg !179
  ret i32 %3, !dbg !180
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupstaggerindexgi_(i32* nocapture %stagcode, i32* nocapture readonly %gindex) #1 {
  %group.i = alloca %struct.cGroup, align 4
  tail call void @llvm.dbg.value(metadata i32* %stagcode, i64 0, metadata !36, metadata !169), !dbg !181
  tail call void @llvm.dbg.value(metadata i32* %gindex, i64 0, metadata !37, metadata !169), !dbg !182
  %1 = load i32* %gindex, align 4, !dbg !183, !tbaa !184
  %2 = bitcast %struct.cGroup* %group.i to i8*, !dbg !185
  call void @llvm.lifetime.start(i64 32, i8* %2), !dbg !185
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !16, metadata !169) #6, !dbg !185
  tail call void @llvm.dbg.value(metadata %struct.cGroup* %group.i, i64 0, metadata !17, metadata !169) #6, !dbg !187
  %3 = call i32 @CCTK_GroupData(i32 %1, %struct.cGroup* %group.i) #7, !dbg !188
  %4 = getelementptr inbounds %struct.cGroup* %group.i, i64 0, i32 3, !dbg !189
  %5 = load i32* %4, align 4, !dbg !189, !tbaa !174
  call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !30, metadata !169) #6, !dbg !190
  call void @llvm.lifetime.end(i64 32, i8* %2), !dbg !191
  store i32 %5, i32* %stagcode, align 4, !dbg !192, !tbaa !184
  ret void, !dbg !193
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupStaggerIndexGN(i8* %gname) #1 {
  %group.i = alloca %struct.cGroup, align 4
  tail call void @llvm.dbg.value(metadata i8* %gname, i64 0, metadata !42, metadata !169), !dbg !194
  %1 = tail call i32 @CCTK_GroupIndex(i8* %gname) #7, !dbg !195
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !43, metadata !169), !dbg !196
  %2 = bitcast %struct.cGroup* %group.i to i8*, !dbg !197
  call void @llvm.lifetime.start(i64 32, i8* %2), !dbg !197
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !16, metadata !169) #6, !dbg !197
  tail call void @llvm.dbg.value(metadata %struct.cGroup* %group.i, i64 0, metadata !17, metadata !169) #6, !dbg !199
  %3 = call i32 @CCTK_GroupData(i32 %1, %struct.cGroup* %group.i) #7, !dbg !200
  %4 = getelementptr inbounds %struct.cGroup* %group.i, i64 0, i32 3, !dbg !201
  %5 = load i32* %4, align 4, !dbg !201, !tbaa !174
  call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !30, metadata !169) #6, !dbg !202
  call void @llvm.lifetime.end(i64 32, i8* %2), !dbg !203
  ret i32 %5, !dbg !204
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupstaggerindexgn_(i32* nocapture %scode, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %group.i = alloca %struct.cGroup, align 4
  tail call void @llvm.dbg.value(metadata i32* %scode, i64 0, metadata !50, metadata !169), !dbg !205
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !51, metadata !169), !dbg !206
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !52, metadata !169), !dbg !206
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7, !dbg !207
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !53, metadata !169), !dbg !207
  %2 = tail call i32 @CCTK_GroupIndex(i8* %1) #7, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !54, metadata !169), !dbg !209
  %3 = bitcast %struct.cGroup* %group.i to i8*, !dbg !210
  call void @llvm.lifetime.start(i64 32, i8* %3), !dbg !210
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !16, metadata !169) #6, !dbg !210
  tail call void @llvm.dbg.value(metadata %struct.cGroup* %group.i, i64 0, metadata !17, metadata !169) #6, !dbg !212
  %4 = call i32 @CCTK_GroupData(i32 %2, %struct.cGroup* %group.i) #7, !dbg !213
  %5 = getelementptr inbounds %struct.cGroup* %group.i, i64 0, i32 3, !dbg !214
  %6 = load i32* %5, align 4, !dbg !214, !tbaa !174
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !30, metadata !169) #6, !dbg !215
  call void @llvm.lifetime.end(i64 32, i8* %3), !dbg !216
  store i32 %6, i32* %scode, align 4, !dbg !217, !tbaa !184
  call void @free(i8* %1) #8, !dbg !218
  ret void, !dbg !219
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_StaggerIndex(i8* %stype) #1 {
  tail call void @llvm.dbg.value(metadata i8* %stype, i64 0, metadata !57, metadata !169), !dbg !220
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !60, metadata !169), !dbg !221
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !59, metadata !169), !dbg !222
  %1 = tail call i64 @strlen(i8* %stype) #7, !dbg !223
  %2 = trunc i64 %1 to i32, !dbg !223
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !61, metadata !169), !dbg !224
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !58, metadata !169), !dbg !225
  %3 = icmp sgt i32 %2, 0, !dbg !226
  br i1 %3, label %.lr.ph, label %.loopexit, !dbg !229

.lr.ph:                                           ; preds = %0
  %sext = shl i64 %1, 32, !dbg !229
  %4 = ashr exact i64 %sext, 32, !dbg !229
  br label %5, !dbg !229

; <label>:5                                       ; preds = %.lr.ph, %14
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %14 ]
  %base.04 = phi i32 [ 1, %.lr.ph ], [ %17, %14 ]
  %scode.03 = phi i32 [ 0, %.lr.ph ], [ %16, %14 ]
  %6 = getelementptr inbounds i8* %stype, i64 %indvars.iv, !dbg !230
  %7 = load i8* %6, align 1, !dbg !230, !tbaa !232
  %8 = sext i8 %7 to i32, !dbg !230
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !154, metadata !169) #6, !dbg !233
  %9 = tail call i32 @__toupper(i32 %8) #7, !dbg !235
  switch i32 %9, label %12 [
    i32 77, label %14
    i32 67, label %10
    i32 80, label %11
  ], !dbg !236

; <label>:10                                      ; preds = %5
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !62, metadata !169), !dbg !237
  br label %14, !dbg !238

; <label>:11                                      ; preds = %5
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !62, metadata !169), !dbg !237
  br label %14, !dbg !240

; <label>:12                                      ; preds = %5
  %13 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 150, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str2, i64 0, i64 0), i8* %stype) #7, !dbg !241
  br label %.loopexit, !dbg !242

; <label>:14                                      ; preds = %5, %11, %10
  %m.0 = phi i32 [ 2, %11 ], [ 1, %10 ], [ 0, %5 ]
  %15 = mul nsw i32 %m.0, %base.04, !dbg !243
  %16 = add nsw i32 %15, %scode.03, !dbg !244
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !59, metadata !169), !dbg !222
  %17 = mul nsw i32 %base.04, 3, !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !60, metadata !169), !dbg !221
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !229
  %18 = icmp slt i64 %indvars.iv.next, %4, !dbg !226
  br i1 %18, label %5, label %.loopexit, !dbg !229

.loopexit:                                        ; preds = %14, %0, %12
  %.0 = phi i32 [ -1, %12 ], [ 0, %0 ], [ %16, %14 ]
  ret i32 %.0, !dbg !246
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_staggerindex_(i32* nocapture %scode, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %scode, i64 0, metadata !65, metadata !169), !dbg !247
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !66, metadata !169), !dbg !248
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !67, metadata !169), !dbg !248
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7, !dbg !249
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !68, metadata !169), !dbg !249
  %2 = tail call i32 @CCTK_StaggerIndex(i8* %1) #8, !dbg !250
  store i32 %2, i32* %scode, align 4, !dbg !251, !tbaa !184
  tail call void @free(i8* %1) #8, !dbg !252
  ret void, !dbg !253
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_StaggerDirIndex(i32 %dir, i32 %si) #1 {
  tail call void @llvm.dbg.value(metadata i32 %dir, i64 0, metadata !73, metadata !169), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 %si, i64 0, metadata !74, metadata !169), !dbg !255
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !77, metadata !169), !dbg !256
  %.b = load i1* @CCTK_StaggerDirIndex.hashed, align 1
  br i1 %.b, label %.preheader, label %1, !dbg !257

; <label>:1                                       ; preds = %0
  store i32 1, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 0), align 16, !dbg !258, !tbaa !184
  store i32 3, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 1), align 4, !dbg !261, !tbaa !184
  store i32 9, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 2), align 8, !dbg !262, !tbaa !184
  store i32 27, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 3), align 4, !dbg !263, !tbaa !184
  store i1 true, i1* @CCTK_StaggerDirIndex.hashed, align 1
  br label %.preheader, !dbg !264

.preheader:                                       ; preds = %1, %0, %8
  %indvars.iv = phi i64 [ %indvars.iv.next, %8 ], [ 3, %0 ], [ 3, %1 ]
  %.02 = phi i32 [ %9, %8 ], [ %si, %0 ], [ %si, %1 ]
  %2 = getelementptr inbounds [4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 %indvars.iv, !dbg !265
  %3 = load i32* %2, align 4, !dbg !265, !tbaa !184
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !75, metadata !169), !dbg !269
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !74, metadata !169), !dbg !255
  %4 = trunc i64 %indvars.iv to i32, !dbg !270
  %5 = icmp eq i32 %4, %dir, !dbg !270
  br i1 %5, label %6, label %8, !dbg !272

; <label>:6                                       ; preds = %.preheader
  %7 = sdiv i32 %.02, %3, !dbg !273
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !77, metadata !169), !dbg !256
  br label %.loopexit, !dbg !274

; <label>:8                                       ; preds = %.preheader
  %9 = srem i32 %.02, %3, !dbg !276
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !277
  %10 = icmp sgt i64 %indvars.iv, 0, !dbg !278
  br i1 %10, label %.preheader, label %.loopexit, !dbg !277

.loopexit:                                        ; preds = %8, %6
  %dsi.0 = phi i32 [ %7, %6 ], [ 0, %8 ]
  ret i32 %dsi.0, !dbg !279
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_staggerdirindex_(i32* nocapture %dsi, i32* nocapture readonly %dir, i32* nocapture readonly %gsi) #1 {
  tail call void @llvm.dbg.value(metadata i32* %dsi, i64 0, metadata !82, metadata !169), !dbg !280
  tail call void @llvm.dbg.value(metadata i32* %dir, i64 0, metadata !83, metadata !169), !dbg !281
  tail call void @llvm.dbg.value(metadata i32* %gsi, i64 0, metadata !84, metadata !169), !dbg !282
  %1 = load i32* %dir, align 4, !dbg !283, !tbaa !184
  %2 = add nsw i32 %1, -1, !dbg !284
  %3 = load i32* %gsi, align 4, !dbg !285, !tbaa !184
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !73, metadata !169), !dbg !286
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !74, metadata !169), !dbg !288
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !77, metadata !169), !dbg !289
  %.b.i = load i1* @CCTK_StaggerDirIndex.hashed, align 1, !dbg !290
  br i1 %.b.i, label %.preheader.i, label %4, !dbg !291

; <label>:4                                       ; preds = %0
  store i32 1, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 0), align 16, !dbg !292, !tbaa !184
  store i32 3, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 1), align 4, !dbg !293, !tbaa !184
  store i32 9, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 2), align 8, !dbg !294, !tbaa !184
  store i32 27, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 3), align 4, !dbg !295, !tbaa !184
  store i1 true, i1* @CCTK_StaggerDirIndex.hashed, align 1, !dbg !290
  br label %.preheader.i, !dbg !296

.preheader.i:                                     ; preds = %4, %0, %11
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %11 ], [ 3, %0 ], [ 3, %4 ], !dbg !290
  %.02.i = phi i32 [ %12, %11 ], [ %3, %0 ], [ %3, %4 ], !dbg !290
  %5 = getelementptr inbounds [4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 %indvars.iv.i, !dbg !297
  %6 = load i32* %5, align 4, !dbg !297, !tbaa !184
  %7 = trunc i64 %indvars.iv.i to i32, !dbg !298
  %8 = icmp eq i32 %7, %2, !dbg !298
  br i1 %8, label %9, label %11, !dbg !299

; <label>:9                                       ; preds = %.preheader.i
  %10 = sdiv i32 %.02.i, %6, !dbg !300
  br label %CCTK_StaggerDirIndex.exit, !dbg !301

; <label>:11                                      ; preds = %.preheader.i
  %12 = srem i32 %.02.i, %6, !dbg !302
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1, !dbg !303
  %13 = icmp sgt i64 %indvars.iv.i, 0, !dbg !304
  br i1 %13, label %.preheader.i, label %CCTK_StaggerDirIndex.exit, !dbg !303

CCTK_StaggerDirIndex.exit:                        ; preds = %11, %9
  %dsi.0.i = phi i32 [ %10, %9 ], [ 0, %11 ], !dbg !290
  store i32 %dsi.0.i, i32* %dsi, align 4, !dbg !305, !tbaa !184
  ret void, !dbg !306
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_StaggerDirArray(i32* nocapture %dindex, i32 %dim, i32 %sindex) #1 {
  tail call void @llvm.dbg.value(metadata i32* %dindex, i64 0, metadata !89, metadata !169), !dbg !307
  tail call void @llvm.dbg.value(metadata i32 %dim, i64 0, metadata !90, metadata !169), !dbg !308
  tail call void @llvm.dbg.value(metadata i32 %sindex, i64 0, metadata !91, metadata !169), !dbg !309
  %.b = load i1* @CCTK_StaggerDirArray.hashed, align 1
  br i1 %.b, label %2, label %1, !dbg !310

; <label>:1                                       ; preds = %0
  store i32 1, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirArray.hash, i64 0, i64 0), align 16, !dbg !311, !tbaa !184
  store i32 3, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirArray.hash, i64 0, i64 1), align 4, !dbg !314, !tbaa !184
  store i32 9, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirArray.hash, i64 0, i64 2), align 8, !dbg !315, !tbaa !184
  store i32 27, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirArray.hash, i64 0, i64 3), align 4, !dbg !316, !tbaa !184
  store i1 true, i1* @CCTK_StaggerDirArray.hashed, align 1
  br label %2, !dbg !317

; <label>:2                                       ; preds = %0, %1
  %3 = icmp sgt i32 %dim, 4, !dbg !318
  br i1 %3, label %5, label %.preheader, !dbg !320

.preheader:                                       ; preds = %2
  %4 = sext i32 %dim to i64, !dbg !321
  br label %7, !dbg !321

; <label>:5                                       ; preds = %2
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 256, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 %dim) #7, !dbg !323
  br label %.loopexit, !dbg !325

; <label>:7                                       ; preds = %.preheader, %15
  %indvars.iv = phi i64 [ 3, %.preheader ], [ %indvars.iv.next, %15 ]
  %.012 = phi i32 [ %sindex, %.preheader ], [ %10, %15 ]
  %8 = getelementptr inbounds [4 x i32]* @CCTK_StaggerDirArray.hash, i64 0, i64 %indvars.iv, !dbg !326
  %9 = load i32* %8, align 4, !dbg !326, !tbaa !184
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !92, metadata !169), !dbg !329
  %10 = srem i32 %.012, %9, !dbg !330
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !91, metadata !169), !dbg !309
  %11 = icmp slt i64 %indvars.iv, %4, !dbg !331
  br i1 %11, label %12, label %15, !dbg !333

; <label>:12                                      ; preds = %7
  %13 = sdiv i32 %.012, %9, !dbg !334
  %14 = getelementptr inbounds i32* %dindex, i64 %indvars.iv, !dbg !335
  store i32 %13, i32* %14, align 4, !dbg !336, !tbaa !184
  br label %15, !dbg !335

; <label>:15                                      ; preds = %7, %12
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !321
  %16 = icmp sgt i64 %indvars.iv, 0, !dbg !337
  br i1 %16, label %7, label %.loopexit, !dbg !321

.loopexit:                                        ; preds = %15, %5
  %.0 = phi i32 [ -1, %5 ], [ 0, %15 ]
  ret i32 %.0, !dbg !338
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupstaggerdirarray_(i32* nocapture %ierr, i32* nocapture %dindex, i32* nocapture readonly %dim, i32* nocapture readonly %gsc) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !98, metadata !169), !dbg !339
  tail call void @llvm.dbg.value(metadata i32* %dindex, i64 0, metadata !99, metadata !169), !dbg !340
  tail call void @llvm.dbg.value(metadata i32* %dim, i64 0, metadata !100, metadata !169), !dbg !341
  tail call void @llvm.dbg.value(metadata i32* %gsc, i64 0, metadata !101, metadata !169), !dbg !342
  %1 = load i32* %dim, align 4, !dbg !343, !tbaa !184
  %2 = load i32* %gsc, align 4, !dbg !344, !tbaa !184
  %3 = tail call i32 @CCTK_StaggerDirArray(i32* %dindex, i32 %1, i32 %2) #8, !dbg !345
  store i32 %3, i32* %ierr, align 4, !dbg !346, !tbaa !184
  ret void, !dbg !347
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupStaggerDirArrayGI(i32* nocapture %dindex, i32 %dim, i32 %gi) #1 {
  %group.i = alloca %struct.cGroup, align 4
  tail call void @llvm.dbg.value(metadata i32* %dindex, i64 0, metadata !104, metadata !169), !dbg !348
  tail call void @llvm.dbg.value(metadata i32 %dim, i64 0, metadata !105, metadata !169), !dbg !349
  tail call void @llvm.dbg.value(metadata i32 %gi, i64 0, metadata !106, metadata !169), !dbg !350
  %1 = bitcast %struct.cGroup* %group.i to i8*, !dbg !351
  call void @llvm.lifetime.start(i64 32, i8* %1), !dbg !351
  tail call void @llvm.dbg.value(metadata i32 %gi, i64 0, metadata !16, metadata !169) #6, !dbg !351
  tail call void @llvm.dbg.value(metadata %struct.cGroup* %group.i, i64 0, metadata !17, metadata !169) #6, !dbg !353
  %2 = call i32 @CCTK_GroupData(i32 %gi, %struct.cGroup* %group.i) #7, !dbg !354
  %3 = getelementptr inbounds %struct.cGroup* %group.i, i64 0, i32 3, !dbg !355
  %4 = load i32* %3, align 4, !dbg !355, !tbaa !174
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !30, metadata !169) #6, !dbg !356
  call void @llvm.lifetime.end(i64 32, i8* %1), !dbg !357
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !107, metadata !169), !dbg !358
  %5 = call i32 @CCTK_StaggerDirArray(i32* %dindex, i32 %dim, i32 %4) #8, !dbg !359
  call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !108, metadata !169), !dbg !360
  ret i32 %5, !dbg !361
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupstaggerdirarraygi_(i32* nocapture %ierr, i32* nocapture %dindex, i32* nocapture readonly %dim, i32* nocapture readonly %gi) #1 {
  %group.i.i = alloca %struct.cGroup, align 4
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !111, metadata !169), !dbg !362
  tail call void @llvm.dbg.value(metadata i32* %dindex, i64 0, metadata !112, metadata !169), !dbg !363
  tail call void @llvm.dbg.value(metadata i32* %dim, i64 0, metadata !113, metadata !169), !dbg !364
  tail call void @llvm.dbg.value(metadata i32* %gi, i64 0, metadata !114, metadata !169), !dbg !365
  %1 = load i32* %dim, align 4, !dbg !366, !tbaa !184
  %2 = load i32* %gi, align 4, !dbg !367, !tbaa !184
  tail call void @llvm.dbg.value(metadata i32* %dindex, i64 0, metadata !104, metadata !169) #6, !dbg !368
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !105, metadata !169) #6, !dbg !370
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !106, metadata !169) #6, !dbg !371
  %3 = bitcast %struct.cGroup* %group.i.i to i8*, !dbg !372
  call void @llvm.lifetime.start(i64 32, i8* %3) #6, !dbg !372
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !16, metadata !169) #6, !dbg !372
  tail call void @llvm.dbg.value(metadata %struct.cGroup* %group.i.i, i64 0, metadata !17, metadata !169) #6, !dbg !374
  %4 = call i32 @CCTK_GroupData(i32 %2, %struct.cGroup* %group.i.i) #7, !dbg !375
  %5 = getelementptr inbounds %struct.cGroup* %group.i.i, i64 0, i32 3, !dbg !376
  %6 = load i32* %5, align 4, !dbg !376, !tbaa !174
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !30, metadata !169) #6, !dbg !377
  call void @llvm.lifetime.end(i64 32, i8* %3) #6, !dbg !378
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !107, metadata !169) #6, !dbg !379
  %7 = call i32 @CCTK_StaggerDirArray(i32* %dindex, i32 %1, i32 %6) #7, !dbg !380
  call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !108, metadata !169) #6, !dbg !381
  store i32 %7, i32* %ierr, align 4, !dbg !382, !tbaa !184
  ret void, !dbg !383
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_StaggerDirName(i32 %dir, i8* %stype) #1 {
  %hs = alloca [7 x i8], align 1
  tail call void @llvm.dbg.value(metadata i32 %dir, i64 0, metadata !119, metadata !169), !dbg !384
  tail call void @llvm.dbg.value(metadata i8* %stype, i64 0, metadata !120, metadata !169), !dbg !385
  tail call void @llvm.dbg.declare(metadata [7 x i8]* %hs, metadata !122, metadata !169), !dbg !386
  %1 = getelementptr inbounds [7 x i8]* %hs, i64 0, i64 0, !dbg !386
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([7 x i8]* @CCTK_StaggerDirName.hs, i64 0, i64 0), i64 7, i32 1, i1 false), !dbg !386
  %2 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 7, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* %stype) #7, !dbg !387
  %3 = call i64 @strlen(i8* %1) #7, !dbg !388
  %4 = trunc i64 %3 to i32, !dbg !390
  %5 = icmp slt i32 %4, %dir, !dbg !391
  br i1 %5, label %6, label %8, !dbg !392

; <label>:6                                       ; preds = %0
  %7 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 336, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), i32 %dir) #7, !dbg !393
  br label %8, !dbg !395

; <label>:8                                       ; preds = %6, %0
  %9 = sext i32 %dir to i64, !dbg !396
  %10 = getelementptr inbounds [7 x i8]* %hs, i64 0, i64 %9, !dbg !396
  %11 = load i8* %10, align 1, !dbg !396, !tbaa !232
  %12 = sext i8 %11 to i32, !dbg !396
  call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !154, metadata !169) #6, !dbg !397
  %13 = call i32 @__toupper(i32 %12) #7, !dbg !399
  switch i32 %13, label %16 [
    i32 77, label %18
    i32 67, label %14
    i32 80, label %15
  ], !dbg !400

; <label>:14                                      ; preds = %8
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !121, metadata !169), !dbg !401
  br label %18, !dbg !402

; <label>:15                                      ; preds = %8
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !121, metadata !169), !dbg !401
  br label %18, !dbg !404

; <label>:16                                      ; preds = %8
  %17 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 347, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str6, i64 0, i64 0), i8* %1) #7, !dbg !405
  br label %18, !dbg !406

; <label>:18                                      ; preds = %14, %15, %8, %16
  %.0 = phi i32 [ -1, %16 ], [ 2, %15 ], [ 1, %14 ], [ 0, %8 ]
  ret i32 %.0, !dbg !407
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_staggerdirname_(i32* nocapture %dsc, i32* nocapture readonly %dir, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %dsc, i64 0, metadata !130, metadata !169), !dbg !408
  tail call void @llvm.dbg.value(metadata i32* %dir, i64 0, metadata !131, metadata !169), !dbg !409
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !132, metadata !169), !dbg !410
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !133, metadata !169), !dbg !410
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7, !dbg !411
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !134, metadata !169), !dbg !411
  %2 = load i32* %dir, align 4, !dbg !412, !tbaa !184
  %3 = add nsw i32 %2, -1, !dbg !413
  %4 = tail call i32 @CCTK_StaggerDirName(i32 %3, i8* %1) #8, !dbg !414
  store i32 %4, i32* %dsc, align 4, !dbg !415, !tbaa !184
  tail call void @free(i8* %1) #8, !dbg !416
  ret void, !dbg !417
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ParseStaggerString(i32 %dim, i8* %imp, i8* %gname, i8* %stype) #1 {
  %hs = alloca [11 x i8], align 1
  tail call void @llvm.dbg.value(metadata i32 %dim, i64 0, metadata !139, metadata !169), !dbg !418
  tail call void @llvm.dbg.value(metadata i8* %imp, i64 0, metadata !140, metadata !169), !dbg !419
  tail call void @llvm.dbg.value(metadata i8* %gname, i64 0, metadata !141, metadata !169), !dbg !420
  tail call void @llvm.dbg.value(metadata i8* %stype, i64 0, metadata !142, metadata !169), !dbg !421
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !145, metadata !169), !dbg !422
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !146, metadata !169), !dbg !423
  tail call void @llvm.dbg.declare(metadata [11 x i8]* %hs, metadata !147, metadata !169), !dbg !424
  %1 = icmp sgt i32 %dim, 10, !dbg !425
  br i1 %1, label %2, label %4, !dbg !427

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 399, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str7, i64 0, i64 0), i32 %dim) #7, !dbg !428
  br label %4, !dbg !430

; <label>:4                                       ; preds = %2, %0
  %5 = tail call i32 @CCTK_Equals(i8* %stype, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !431
  %6 = icmp eq i32 %5, 0, !dbg !431
  br i1 %6, label %10, label %7, !dbg !433

; <label>:7                                       ; preds = %4
  %8 = getelementptr inbounds [11 x i8]* %hs, i64 0, i64 0, !dbg !434
  %9 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %8, i32 0, i64 11, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !434
  br label %.preheader, !dbg !436

; <label>:10                                      ; preds = %4
  %11 = tail call i32 @CCTK_Equals(i8* %stype, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)) #7, !dbg !437
  %12 = icmp eq i32 %11, 0, !dbg !437
  br i1 %12, label %16, label %13, !dbg !439

; <label>:13                                      ; preds = %10
  %14 = getelementptr inbounds [11 x i8]* %hs, i64 0, i64 0, !dbg !440
  %15 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %14, i32 0, i64 11, i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !440
  br label %.preheader, !dbg !442

; <label>:16                                      ; preds = %10
  %17 = tail call i64 @strlen(i8* %stype) #7, !dbg !443
  %18 = trunc i64 %17 to i32, !dbg !446
  %19 = icmp eq i32 %18, %dim, !dbg !447
  br i1 %19, label %22, label %20, !dbg !448

; <label>:20                                      ; preds = %16
  %21 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 417, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8]* @.str12, i64 0, i64 0), i8* %stype, i8* %gname, i32 %dim) #7, !dbg !449
  br label %22, !dbg !451

; <label>:22                                      ; preds = %16, %20
  %23 = getelementptr inbounds [11 x i8]* %hs, i64 0, i64 0, !dbg !452
  %24 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %23, i32 0, i64 11, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* %stype) #7, !dbg !452
  br label %.preheader

.preheader:                                       ; preds = %13, %22, %7
  %25 = icmp sgt i32 %dim, 0, !dbg !453
  br i1 %25, label %.lr.ph, label %.loopexit, !dbg !456

.lr.ph:                                           ; preds = %.preheader
  %26 = sext i32 %dim to i64, !dbg !456
  br label %27, !dbg !456

; <label>:27                                      ; preds = %.lr.ph, %36
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %36 ]
  %scode.04 = phi i32 [ 0, %.lr.ph ], [ %38, %36 ]
  %base.03 = phi i32 [ 1, %.lr.ph ], [ %39, %36 ]
  %28 = getelementptr inbounds [11 x i8]* %hs, i64 0, i64 %indvars.iv, !dbg !457
  %29 = load i8* %28, align 1, !dbg !457, !tbaa !232
  %30 = sext i8 %29 to i32, !dbg !457
  call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !154, metadata !169) #6, !dbg !459
  %31 = call i32 @__toupper(i32 %30) #7, !dbg !461
  switch i32 %31, label %34 [
    i32 77, label %36
    i32 67, label %32
    i32 80, label %33
  ], !dbg !462

; <label>:32                                      ; preds = %27
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !144, metadata !169), !dbg !463
  br label %36, !dbg !464

; <label>:33                                      ; preds = %27
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !144, metadata !169), !dbg !463
  br label %36, !dbg !466

; <label>:34                                      ; preds = %27
  %35 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 433, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str13, i64 0, i64 0), i8* %stype, i8* %imp, i8* %gname) #7, !dbg !467
  br label %.loopexit, !dbg !468

; <label>:36                                      ; preds = %27, %33, %32
  %m.0 = phi i32 [ 2, %33 ], [ 1, %32 ], [ 0, %27 ]
  %37 = mul nsw i32 %m.0, %base.03, !dbg !469
  %38 = add nsw i32 %37, %scode.04, !dbg !470
  call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !146, metadata !169), !dbg !423
  %39 = mul nsw i32 %base.03, 3, !dbg !471
  call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !145, metadata !169), !dbg !422
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !456
  %40 = icmp slt i64 %indvars.iv.next, %26, !dbg !453
  br i1 %40, label %27, label %.loopexit, !dbg !456

.loopexit:                                        ; preds = %36, %.preheader, %34
  %.0 = phi i32 [ -1, %34 ], [ 0, %.preheader ], [ %38, %36 ]
  ret i32 %.0, !dbg !472
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: optsize
declare i32 @__toupper(i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!164, !165, !166}
!llvm.ident = !{!167}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !155, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Stagger.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !{!6, !12, !31, !38, !44, !55, !63, !69, !78, !85, !94, !102, !109, !115, !126, !135, !151}
!6 = !DISubprogram(name: "CCTKi_version_main_Stagger_c", scope: !1, file: !1, line: 30, type: !7, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_Stagger_c, variables: !2)
!7 = !DISubroutineType(types: !8)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !DISubprogram(name: "CCTK_GroupStaggerIndexGI", scope: !1, file: !1, line: 70, type: !13, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @CCTK_GroupStaggerIndexGI, variables: !15)
!13 = !DISubroutineType(types: !14)
!14 = !{!4, !4}
!15 = !{!16, !17, !30}
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gindex", arg: 1, scope: !12, file: !1, line: 70, type: !4)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "group", scope: !12, file: !1, line: 72, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGroup", file: !19, line: 24, baseType: !20)
!19 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Groups.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!20 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 14, size: 256, align: 32, elements: !21)
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "grouptype", scope: !20, file: !19, line: 16, baseType: !4, size: 32, align: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "vartype", scope: !20, file: !19, line: 17, baseType: !4, size: 32, align: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "disttype", scope: !20, file: !19, line: 18, baseType: !4, size: 32, align: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "stagtype", scope: !20, file: !19, line: 19, baseType: !4, size: 32, align: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !20, file: !19, line: 20, baseType: !4, size: 32, align: 32, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "numvars", scope: !20, file: !19, line: 21, baseType: !4, size: 32, align: 32, offset: 160)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "numtimelevels", scope: !20, file: !19, line: 22, baseType: !4, size: 32, align: 32, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "vectorgroup", scope: !20, file: !19, line: 23, baseType: !4, size: 32, align: 32, offset: 224)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sc", scope: !12, file: !1, line: 73, type: !4)
!31 = !DISubprogram(name: "cctk_groupstaggerindexgi_", scope: !1, file: !1, line: 79, type: !32, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*)* @cctk_groupstaggerindexgi_, variables: !35)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!35 = !{!36, !37}
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stagcode", arg: 1, scope: !31, file: !1, line: 80, type: !34)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gindex", arg: 2, scope: !31, file: !1, line: 80, type: !34)
!38 = !DISubprogram(name: "CCTK_GroupStaggerIndexGN", scope: !1, file: !1, line: 100, type: !39, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @CCTK_GroupStaggerIndexGN, variables: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{!4, !9}
!41 = !{!42, !43}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gname", arg: 1, scope: !38, file: !1, line: 100, type: !9)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gindex", scope: !38, file: !1, line: 102, type: !4)
!44 = !DISubprogram(name: "cctk_groupstaggerindexgn_", scope: !1, file: !1, line: 107, type: !45, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8*, i32)* @cctk_groupstaggerindexgn_, variables: !49)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !34, !47, !48}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!48 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!49 = !{!50, !51, !52, !53, !54}
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "scode", arg: 1, scope: !44, file: !1, line: 108, type: !34)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 2, scope: !44, file: !1, line: 108, type: !47)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 3, scope: !44, file: !1, line: 108, type: !48)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gname", scope: !44, file: !1, line: 110, type: !47)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gindex", scope: !44, file: !1, line: 111, type: !4)
!55 = !DISubprogram(name: "CCTK_StaggerIndex", scope: !1, file: !1, line: 133, type: !39, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @CCTK_StaggerIndex, variables: !56)
!56 = !{!57, !58, !59, !60, !61, !62}
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stype", arg: 1, scope: !55, file: !1, line: 133, type: !9)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !55, file: !1, line: 135, type: !4)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "scode", scope: !55, file: !1, line: 135, type: !4)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "base", scope: !55, file: !1, line: 135, type: !4)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dim", scope: !55, file: !1, line: 135, type: !4)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !55, file: !1, line: 135, type: !4)
!63 = !DISubprogram(name: "cctk_staggerindex_", scope: !1, file: !1, line: 160, type: !45, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8*, i32)* @cctk_staggerindex_, variables: !64)
!64 = !{!65, !66, !67, !68}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "scode", arg: 1, scope: !63, file: !1, line: 161, type: !34)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 2, scope: !63, file: !1, line: 161, type: !47)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 3, scope: !63, file: !1, line: 161, type: !48)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sname", scope: !63, file: !1, line: 163, type: !47)
!69 = !DISubprogram(name: "CCTK_StaggerDirIndex", scope: !1, file: !1, line: 185, type: !70, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @CCTK_StaggerDirIndex, variables: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{!4, !4, !4}
!72 = !{!73, !74, !75, !76, !77}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 1, scope: !69, file: !1, line: 185, type: !4)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "si", arg: 2, scope: !69, file: !1, line: 185, type: !4)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !69, file: !1, line: 187, type: !4)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !69, file: !1, line: 187, type: !4)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dsi", scope: !69, file: !1, line: 187, type: !4)
!78 = !DISubprogram(name: "cctk_staggerdirindex_", scope: !1, file: !1, line: 214, type: !79, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i32*)* @cctk_staggerdirindex_, variables: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !34, !34, !34}
!81 = !{!82, !83, !84}
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dsi", arg: 1, scope: !78, file: !1, line: 215, type: !34)
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 2, scope: !78, file: !1, line: 215, type: !34)
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gsi", arg: 3, scope: !78, file: !1, line: 215, type: !34)
!85 = !DISubprogram(name: "CCTK_StaggerDirArray", scope: !1, file: !1, line: 240, type: !86, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i32, i32)* @CCTK_StaggerDirArray, variables: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{!4, !34, !4, !4}
!88 = !{!89, !90, !91, !92, !93}
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dindex", arg: 1, scope: !85, file: !1, line: 240, type: !34)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 2, scope: !85, file: !1, line: 240, type: !4)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sindex", arg: 3, scope: !85, file: !1, line: 240, type: !4)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !85, file: !1, line: 242, type: !4)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !85, file: !1, line: 242, type: !4)
!94 = !DISubprogram(name: "cctk_groupstaggerdirarray_", scope: !1, file: !1, line: 271, type: !95, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i32*, i32*)* @cctk_groupstaggerdirarray_, variables: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !34, !34, !34, !34}
!97 = !{!98, !99, !100, !101}
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !94, file: !1, line: 272, type: !34)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dindex", arg: 2, scope: !94, file: !1, line: 272, type: !34)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 3, scope: !94, file: !1, line: 272, type: !34)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gsc", arg: 4, scope: !94, file: !1, line: 272, type: !34)
!102 = !DISubprogram(name: "CCTK_GroupStaggerDirArrayGI", scope: !1, file: !1, line: 296, type: !86, isLocal: false, isDefinition: true, scopeLine: 297, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i32, i32)* @CCTK_GroupStaggerDirArrayGI, variables: !103)
!103 = !{!104, !105, !106, !107, !108}
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dindex", arg: 1, scope: !102, file: !1, line: 296, type: !34)
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 2, scope: !102, file: !1, line: 296, type: !4)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gi", arg: 3, scope: !102, file: !1, line: 296, type: !4)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "si", scope: !102, file: !1, line: 298, type: !4)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ierr", scope: !102, file: !1, line: 298, type: !4)
!109 = !DISubprogram(name: "cctk_groupstaggerdirarraygi_", scope: !1, file: !1, line: 304, type: !95, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i32*, i32*)* @cctk_groupstaggerdirarraygi_, variables: !110)
!110 = !{!111, !112, !113, !114}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !109, file: !1, line: 305, type: !34)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dindex", arg: 2, scope: !109, file: !1, line: 305, type: !34)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 3, scope: !109, file: !1, line: 305, type: !34)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gi", arg: 4, scope: !109, file: !1, line: 305, type: !34)
!115 = !DISubprogram(name: "CCTK_StaggerDirName", scope: !1, file: !1, line: 327, type: !116, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8*)* @CCTK_StaggerDirName, variables: !118)
!116 = !DISubroutineType(types: !117)
!117 = !{!4, !4, !9}
!118 = !{!119, !120, !121, !122}
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 1, scope: !115, file: !1, line: 327, type: !4)
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stype", arg: 2, scope: !115, file: !1, line: 327, type: !9)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "scode", scope: !115, file: !1, line: 329, type: !4)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hs", scope: !115, file: !1, line: 330, type: !123)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 56, align: 8, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 7)
!126 = !DISubprogram(name: "cctk_staggerdirname_", scope: !1, file: !1, line: 354, type: !127, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i8*, i32)* @cctk_staggerdirname_, variables: !129)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !34, !34, !47, !48}
!129 = !{!130, !131, !132, !133, !134}
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dsc", arg: 1, scope: !126, file: !1, line: 355, type: !34)
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 2, scope: !126, file: !1, line: 355, type: !34)
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !126, file: !1, line: 355, type: !47)
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 4, scope: !126, file: !1, line: 355, type: !48)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sname", scope: !126, file: !1, line: 357, type: !47)
!135 = !DISubprogram(name: "CCTKi_ParseStaggerString", scope: !1, file: !1, line: 387, type: !136, isLocal: false, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8*, i8*, i8*)* @CCTKi_ParseStaggerString, variables: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{!4, !4, !9, !9, !9}
!138 = !{!139, !140, !141, !142, !143, !144, !145, !146, !147}
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 1, scope: !135, file: !1, line: 387, type: !4)
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "imp", arg: 2, scope: !135, file: !1, line: 388, type: !9)
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gname", arg: 3, scope: !135, file: !1, line: 389, type: !9)
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stype", arg: 4, scope: !135, file: !1, line: 390, type: !9)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !135, file: !1, line: 392, type: !4)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !135, file: !1, line: 392, type: !4)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "base", scope: !135, file: !1, line: 393, type: !4)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "scode", scope: !135, file: !1, line: 394, type: !4)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hs", scope: !135, file: !1, line: 395, type: !148)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 88, align: 8, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 11)
!151 = !DISubprogram(name: "toupper", scope: !152, file: !152, line: 298, type: !13, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, variables: !153)
!152 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!153 = !{!154}
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !151, file: !152, line: 298, type: !4)
!155 = !{!156, !160, !161, !162, !163}
!156 = !DIGlobalVariable(name: "hash", scope: !69, file: !1, line: 188, type: !157, isLocal: true, isDefinition: true, variable: [4 x i32]* @CCTK_StaggerDirIndex.hash)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, align: 32, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 4)
!160 = !DIGlobalVariable(name: "hashed", scope: !69, file: !1, line: 188, type: !4, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariable(name: "hash", scope: !85, file: !1, line: 243, type: !157, isLocal: true, isDefinition: true, variable: [4 x i32]* @CCTK_StaggerDirArray.hash)
!162 = !DIGlobalVariable(name: "hashed", scope: !85, file: !1, line: 243, type: !4, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 28, type: !9, isLocal: true, isDefinition: true)
!164 = !{i32 2, !"Dwarf Version", i32 2}
!165 = !{i32 2, !"Debug Info Version", i32 700000003}
!166 = !{i32 1, !"PIC Level", i32 2}
!167 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!168 = !DILocation(line: 30, column: 1, scope: !6)
!169 = !DIExpression()
!170 = !DILocation(line: 70, column: 34, scope: !12)
!171 = !DILocation(line: 72, column: 10, scope: !12)
!172 = !DILocation(line: 74, column: 3, scope: !12)
!173 = !DILocation(line: 75, column: 14, scope: !12)
!174 = !{!175, !176, i64 12}
!175 = !{!"", !176, i64 0, !176, i64 4, !176, i64 8, !176, i64 12, !176, i64 16, !176, i64 20, !176, i64 24, !176, i64 28}
!176 = !{!"int", !177, i64 0}
!177 = !{!"omnipotent char", !178, i64 0}
!178 = !{!"Simple C/C++ TBAA"}
!179 = !DILocation(line: 73, column: 7, scope: !12)
!180 = !DILocation(line: 76, column: 3, scope: !12)
!181 = !DILocation(line: 80, column: 34, scope: !31)
!182 = !DILocation(line: 80, column: 49, scope: !31)
!183 = !DILocation(line: 82, column: 40, scope: !31)
!184 = !{!176, !176, i64 0}
!185 = !DILocation(line: 70, column: 34, scope: !12, inlinedAt: !186)
!186 = distinct !DILocation(line: 82, column: 15, scope: !31)
!187 = !DILocation(line: 72, column: 10, scope: !12, inlinedAt: !186)
!188 = !DILocation(line: 74, column: 3, scope: !12, inlinedAt: !186)
!189 = !DILocation(line: 75, column: 14, scope: !12, inlinedAt: !186)
!190 = !DILocation(line: 73, column: 7, scope: !12, inlinedAt: !186)
!191 = !DILocation(line: 76, column: 3, scope: !12, inlinedAt: !186)
!192 = !DILocation(line: 82, column: 13, scope: !31)
!193 = !DILocation(line: 83, column: 1, scope: !31)
!194 = !DILocation(line: 100, column: 42, scope: !38)
!195 = !DILocation(line: 103, column: 12, scope: !38)
!196 = !DILocation(line: 102, column: 7, scope: !38)
!197 = !DILocation(line: 70, column: 34, scope: !12, inlinedAt: !198)
!198 = distinct !DILocation(line: 104, column: 10, scope: !38)
!199 = !DILocation(line: 72, column: 10, scope: !12, inlinedAt: !198)
!200 = !DILocation(line: 74, column: 3, scope: !12, inlinedAt: !198)
!201 = !DILocation(line: 75, column: 14, scope: !12, inlinedAt: !198)
!202 = !DILocation(line: 73, column: 7, scope: !12, inlinedAt: !198)
!203 = !DILocation(line: 76, column: 3, scope: !12, inlinedAt: !198)
!204 = !DILocation(line: 104, column: 3, scope: !38)
!205 = !DILocation(line: 108, column: 34, scope: !44)
!206 = !DILocation(line: 108, column: 41, scope: !44)
!207 = !DILocation(line: 110, column: 3, scope: !44)
!208 = !DILocation(line: 112, column: 12, scope: !44)
!209 = !DILocation(line: 111, column: 7, scope: !44)
!210 = !DILocation(line: 70, column: 34, scope: !12, inlinedAt: !211)
!211 = distinct !DILocation(line: 113, column: 12, scope: !44)
!212 = !DILocation(line: 72, column: 10, scope: !12, inlinedAt: !211)
!213 = !DILocation(line: 74, column: 3, scope: !12, inlinedAt: !211)
!214 = !DILocation(line: 75, column: 14, scope: !12, inlinedAt: !211)
!215 = !DILocation(line: 73, column: 7, scope: !12, inlinedAt: !211)
!216 = !DILocation(line: 76, column: 3, scope: !12, inlinedAt: !211)
!217 = !DILocation(line: 113, column: 10, scope: !44)
!218 = !DILocation(line: 114, column: 3, scope: !44)
!219 = !DILocation(line: 115, column: 1, scope: !44)
!220 = !DILocation(line: 133, column: 35, scope: !55)
!221 = !DILocation(line: 135, column: 15, scope: !55)
!222 = !DILocation(line: 135, column: 9, scope: !55)
!223 = !DILocation(line: 139, column: 10, scope: !55)
!224 = !DILocation(line: 135, column: 20, scope: !55)
!225 = !DILocation(line: 135, column: 7, scope: !55)
!226 = !DILocation(line: 141, column: 13, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 141, column: 3)
!228 = distinct !DILexicalBlock(scope: !55, file: !1, line: 141, column: 3)
!229 = !DILocation(line: 141, column: 3, scope: !228)
!230 = !DILocation(line: 144, column: 21, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !1, line: 142, column: 3)
!232 = !{!177, !177, i64 0}
!233 = !DILocation(line: 298, column: 13, scope: !151, inlinedAt: !234)
!234 = distinct !DILocation(line: 144, column: 13, scope: !231)
!235 = !DILocation(line: 300, column: 17, scope: !151, inlinedAt: !234)
!236 = !DILocation(line: 144, column: 5, scope: !231)
!237 = !DILocation(line: 135, column: 24, scope: !55)
!238 = !DILocation(line: 147, column: 21, scope: !239)
!239 = distinct !DILexicalBlock(scope: !231, file: !1, line: 145, column: 5)
!240 = !DILocation(line: 148, column: 21, scope: !239)
!241 = !DILocation(line: 150, column: 9, scope: !239)
!242 = !DILocation(line: 152, column: 9, scope: !239)
!243 = !DILocation(line: 154, column: 14, scope: !231)
!244 = !DILocation(line: 154, column: 10, scope: !231)
!245 = !DILocation(line: 155, column: 30, scope: !231)
!246 = !DILocation(line: 158, column: 1, scope: !55)
!247 = !DILocation(line: 161, column: 34, scope: !63)
!248 = !DILocation(line: 161, column: 41, scope: !63)
!249 = !DILocation(line: 163, column: 3, scope: !63)
!250 = !DILocation(line: 164, column: 12, scope: !63)
!251 = !DILocation(line: 164, column: 10, scope: !63)
!252 = !DILocation(line: 165, column: 3, scope: !63)
!253 = !DILocation(line: 166, column: 1, scope: !63)
!254 = !DILocation(line: 185, column: 30, scope: !69)
!255 = !DILocation(line: 185, column: 39, scope: !69)
!256 = !DILocation(line: 187, column: 13, scope: !69)
!257 = !DILocation(line: 190, column: 7, scope: !69)
!258 = !DILocation(line: 192, column: 12, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 191, column: 3)
!260 = distinct !DILexicalBlock(scope: !69, file: !1, line: 190, column: 7)
!261 = !DILocation(line: 193, column: 12, scope: !259)
!262 = !DILocation(line: 194, column: 12, scope: !259)
!263 = !DILocation(line: 195, column: 12, scope: !259)
!264 = !DILocation(line: 197, column: 3, scope: !259)
!265 = !DILocation(line: 201, column: 22, scope: !266)
!266 = distinct !DILexicalBlock(scope: !267, file: !1, line: 200, column: 3)
!267 = distinct !DILexicalBlock(scope: !268, file: !1, line: 199, column: 3)
!268 = distinct !DILexicalBlock(scope: !69, file: !1, line: 199, column: 3)
!269 = !DILocation(line: 187, column: 7, scope: !69)
!270 = !DILocation(line: 203, column: 12, scope: !271)
!271 = distinct !DILexicalBlock(scope: !266, file: !1, line: 203, column: 9)
!272 = !DILocation(line: 203, column: 9, scope: !266)
!273 = !DILocation(line: 201, column: 20, scope: !266)
!274 = !DILocation(line: 206, column: 7, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !1, line: 204, column: 5)
!276 = !DILocation(line: 202, column: 14, scope: !266)
!277 = !DILocation(line: 199, column: 3, scope: !268)
!278 = !DILocation(line: 199, column: 22, scope: !267)
!279 = !DILocation(line: 209, column: 3, scope: !69)
!280 = !DILocation(line: 215, column: 34, scope: !78)
!281 = !DILocation(line: 215, column: 44, scope: !78)
!282 = !DILocation(line: 215, column: 54, scope: !78)
!283 = !DILocation(line: 219, column: 33, scope: !78)
!284 = !DILocation(line: 219, column: 38, scope: !78)
!285 = !DILocation(line: 219, column: 42, scope: !78)
!286 = !DILocation(line: 185, column: 30, scope: !69, inlinedAt: !287)
!287 = distinct !DILocation(line: 219, column: 11, scope: !78)
!288 = !DILocation(line: 185, column: 39, scope: !69, inlinedAt: !287)
!289 = !DILocation(line: 187, column: 13, scope: !69, inlinedAt: !287)
!290 = !DILocation(line: 219, column: 11, scope: !78)
!291 = !DILocation(line: 190, column: 7, scope: !69, inlinedAt: !287)
!292 = !DILocation(line: 192, column: 12, scope: !259, inlinedAt: !287)
!293 = !DILocation(line: 193, column: 12, scope: !259, inlinedAt: !287)
!294 = !DILocation(line: 194, column: 12, scope: !259, inlinedAt: !287)
!295 = !DILocation(line: 195, column: 12, scope: !259, inlinedAt: !287)
!296 = !DILocation(line: 197, column: 3, scope: !259, inlinedAt: !287)
!297 = !DILocation(line: 201, column: 22, scope: !266, inlinedAt: !287)
!298 = !DILocation(line: 203, column: 12, scope: !271, inlinedAt: !287)
!299 = !DILocation(line: 203, column: 9, scope: !266, inlinedAt: !287)
!300 = !DILocation(line: 201, column: 20, scope: !266, inlinedAt: !287)
!301 = !DILocation(line: 206, column: 7, scope: !275, inlinedAt: !287)
!302 = !DILocation(line: 202, column: 14, scope: !266, inlinedAt: !287)
!303 = !DILocation(line: 199, column: 3, scope: !268, inlinedAt: !287)
!304 = !DILocation(line: 199, column: 22, scope: !267, inlinedAt: !287)
!305 = !DILocation(line: 219, column: 9, scope: !78)
!306 = !DILocation(line: 220, column: 1, scope: !78)
!307 = !DILocation(line: 240, column: 31, scope: !85)
!308 = !DILocation(line: 240, column: 44, scope: !85)
!309 = !DILocation(line: 240, column: 53, scope: !85)
!310 = !DILocation(line: 245, column: 7, scope: !85)
!311 = !DILocation(line: 247, column: 12, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !1, line: 246, column: 3)
!313 = distinct !DILexicalBlock(scope: !85, file: !1, line: 245, column: 7)
!314 = !DILocation(line: 248, column: 12, scope: !312)
!315 = !DILocation(line: 249, column: 12, scope: !312)
!316 = !DILocation(line: 250, column: 12, scope: !312)
!317 = !DILocation(line: 252, column: 3, scope: !312)
!318 = !DILocation(line: 254, column: 10, scope: !319)
!319 = distinct !DILexicalBlock(scope: !85, file: !1, line: 254, column: 7)
!320 = !DILocation(line: 254, column: 7, scope: !85)
!321 = !DILocation(line: 261, column: 3, scope: !322)
!322 = distinct !DILexicalBlock(scope: !85, file: !1, line: 261, column: 3)
!323 = !DILocation(line: 256, column: 5, scope: !324)
!324 = distinct !DILexicalBlock(scope: !319, file: !1, line: 255, column: 3)
!325 = !DILocation(line: 258, column: 5, scope: !324)
!326 = !DILocation(line: 263, column: 32, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !1, line: 262, column: 3)
!328 = distinct !DILexicalBlock(scope: !322, file: !1, line: 261, column: 3)
!329 = !DILocation(line: 242, column: 7, scope: !85)
!330 = !DILocation(line: 264, column: 24, scope: !327)
!331 = !DILocation(line: 265, column: 10, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !1, line: 265, column: 9)
!333 = !DILocation(line: 265, column: 9, scope: !327)
!334 = !DILocation(line: 263, column: 30, scope: !327)
!335 = !DILocation(line: 265, column: 16, scope: !332)
!336 = !DILocation(line: 265, column: 26, scope: !332)
!337 = !DILocation(line: 261, column: 22, scope: !328)
!338 = !DILocation(line: 268, column: 1, scope: !85)
!339 = !DILocation(line: 272, column: 34, scope: !94)
!340 = !DILocation(line: 272, column: 45, scope: !94)
!341 = !DILocation(line: 272, column: 58, scope: !94)
!342 = !DILocation(line: 272, column: 68, scope: !94)
!343 = !DILocation(line: 276, column: 40, scope: !94)
!344 = !DILocation(line: 276, column: 46, scope: !94)
!345 = !DILocation(line: 276, column: 11, scope: !94)
!346 = !DILocation(line: 276, column: 9, scope: !94)
!347 = !DILocation(line: 277, column: 1, scope: !94)
!348 = !DILocation(line: 296, column: 38, scope: !102)
!349 = !DILocation(line: 296, column: 50, scope: !102)
!350 = !DILocation(line: 296, column: 59, scope: !102)
!351 = !DILocation(line: 70, column: 34, scope: !12, inlinedAt: !352)
!352 = distinct !DILocation(line: 299, column: 9, scope: !102)
!353 = !DILocation(line: 72, column: 10, scope: !12, inlinedAt: !352)
!354 = !DILocation(line: 74, column: 3, scope: !12, inlinedAt: !352)
!355 = !DILocation(line: 75, column: 14, scope: !12, inlinedAt: !352)
!356 = !DILocation(line: 73, column: 7, scope: !12, inlinedAt: !352)
!357 = !DILocation(line: 76, column: 3, scope: !12, inlinedAt: !352)
!358 = !DILocation(line: 298, column: 7, scope: !102)
!359 = !DILocation(line: 300, column: 9, scope: !102)
!360 = !DILocation(line: 298, column: 10, scope: !102)
!361 = !DILocation(line: 301, column: 3, scope: !102)
!362 = !DILocation(line: 305, column: 34, scope: !109)
!363 = !DILocation(line: 305, column: 45, scope: !109)
!364 = !DILocation(line: 305, column: 58, scope: !109)
!365 = !DILocation(line: 305, column: 68, scope: !109)
!366 = !DILocation(line: 307, column: 47, scope: !109)
!367 = !DILocation(line: 307, column: 53, scope: !109)
!368 = !DILocation(line: 296, column: 38, scope: !102, inlinedAt: !369)
!369 = distinct !DILocation(line: 307, column: 11, scope: !109)
!370 = !DILocation(line: 296, column: 50, scope: !102, inlinedAt: !369)
!371 = !DILocation(line: 296, column: 59, scope: !102, inlinedAt: !369)
!372 = !DILocation(line: 70, column: 34, scope: !12, inlinedAt: !373)
!373 = distinct !DILocation(line: 299, column: 9, scope: !102, inlinedAt: !369)
!374 = !DILocation(line: 72, column: 10, scope: !12, inlinedAt: !373)
!375 = !DILocation(line: 74, column: 3, scope: !12, inlinedAt: !373)
!376 = !DILocation(line: 75, column: 14, scope: !12, inlinedAt: !373)
!377 = !DILocation(line: 73, column: 7, scope: !12, inlinedAt: !373)
!378 = !DILocation(line: 76, column: 3, scope: !12, inlinedAt: !373)
!379 = !DILocation(line: 298, column: 7, scope: !102, inlinedAt: !369)
!380 = !DILocation(line: 300, column: 9, scope: !102, inlinedAt: !369)
!381 = !DILocation(line: 298, column: 10, scope: !102, inlinedAt: !369)
!382 = !DILocation(line: 307, column: 9, scope: !109)
!383 = !DILocation(line: 308, column: 1, scope: !109)
!384 = !DILocation(line: 327, column: 29, scope: !115)
!385 = !DILocation(line: 327, column: 46, scope: !115)
!386 = !DILocation(line: 330, column: 8, scope: !115)
!387 = !DILocation(line: 332, column: 3, scope: !115)
!388 = !DILocation(line: 334, column: 18, scope: !389)
!389 = distinct !DILexicalBlock(scope: !115, file: !1, line: 334, column: 7)
!390 = !DILocation(line: 334, column: 12, scope: !389)
!391 = !DILocation(line: 334, column: 10, scope: !389)
!392 = !DILocation(line: 334, column: 7, scope: !115)
!393 = !DILocation(line: 336, column: 5, scope: !394)
!394 = distinct !DILexicalBlock(scope: !389, file: !1, line: 335, column: 3)
!395 = !DILocation(line: 339, column: 3, scope: !394)
!396 = !DILocation(line: 341, column: 19, scope: !115)
!397 = !DILocation(line: 298, column: 13, scope: !151, inlinedAt: !398)
!398 = distinct !DILocation(line: 341, column: 11, scope: !115)
!399 = !DILocation(line: 300, column: 17, scope: !151, inlinedAt: !398)
!400 = !DILocation(line: 341, column: 3, scope: !115)
!401 = !DILocation(line: 329, column: 7, scope: !115)
!402 = !DILocation(line: 344, column: 26, scope: !403)
!403 = distinct !DILexicalBlock(scope: !115, file: !1, line: 342, column: 3)
!404 = !DILocation(line: 345, column: 26, scope: !403)
!405 = !DILocation(line: 347, column: 7, scope: !403)
!406 = !DILocation(line: 349, column: 7, scope: !403)
!407 = !DILocation(line: 352, column: 1, scope: !115)
!408 = !DILocation(line: 355, column: 34, scope: !126)
!409 = !DILocation(line: 355, column: 44, scope: !126)
!410 = !DILocation(line: 355, column: 49, scope: !126)
!411 = !DILocation(line: 357, column: 3, scope: !126)
!412 = !DILocation(line: 359, column: 31, scope: !126)
!413 = !DILocation(line: 359, column: 36, scope: !126)
!414 = !DILocation(line: 359, column: 10, scope: !126)
!415 = !DILocation(line: 359, column: 8, scope: !126)
!416 = !DILocation(line: 361, column: 3, scope: !126)
!417 = !DILocation(line: 362, column: 1, scope: !126)
!418 = !DILocation(line: 387, column: 34, scope: !135)
!419 = !DILocation(line: 388, column: 42, scope: !135)
!420 = !DILocation(line: 389, column: 42, scope: !135)
!421 = !DILocation(line: 390, column: 42, scope: !135)
!422 = !DILocation(line: 393, column: 7, scope: !135)
!423 = !DILocation(line: 394, column: 7, scope: !135)
!424 = !DILocation(line: 395, column: 8, scope: !135)
!425 = !DILocation(line: 397, column: 10, scope: !426)
!426 = distinct !DILexicalBlock(scope: !135, file: !1, line: 397, column: 7)
!427 = !DILocation(line: 397, column: 7, scope: !135)
!428 = !DILocation(line: 399, column: 5, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !1, line: 398, column: 3)
!430 = !DILocation(line: 402, column: 3, scope: !429)
!431 = !DILocation(line: 405, column: 7, scope: !432)
!432 = distinct !DILexicalBlock(scope: !135, file: !1, line: 405, column: 7)
!433 = !DILocation(line: 405, column: 7, scope: !135)
!434 = !DILocation(line: 407, column: 5, scope: !435)
!435 = distinct !DILexicalBlock(scope: !432, file: !1, line: 406, column: 3)
!436 = !DILocation(line: 408, column: 3, scope: !435)
!437 = !DILocation(line: 409, column: 12, scope: !438)
!438 = distinct !DILexicalBlock(scope: !432, file: !1, line: 409, column: 12)
!439 = !DILocation(line: 409, column: 12, scope: !432)
!440 = !DILocation(line: 411, column: 5, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !1, line: 410, column: 3)
!442 = !DILocation(line: 412, column: 3, scope: !441)
!443 = !DILocation(line: 415, column: 15, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 415, column: 9)
!445 = distinct !DILexicalBlock(scope: !438, file: !1, line: 414, column: 3)
!446 = !DILocation(line: 415, column: 9, scope: !444)
!447 = !DILocation(line: 415, column: 28, scope: !444)
!448 = !DILocation(line: 415, column: 9, scope: !445)
!449 = !DILocation(line: 417, column: 7, scope: !450)
!450 = distinct !DILexicalBlock(scope: !444, file: !1, line: 416, column: 5)
!451 = !DILocation(line: 420, column: 5, scope: !450)
!452 = !DILocation(line: 422, column: 5, scope: !445)
!453 = !DILocation(line: 425, column: 13, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !1, line: 425, column: 3)
!455 = distinct !DILexicalBlock(scope: !135, file: !1, line: 425, column: 3)
!456 = !DILocation(line: 425, column: 3, scope: !455)
!457 = !DILocation(line: 427, column: 21, scope: !458)
!458 = distinct !DILexicalBlock(scope: !454, file: !1, line: 426, column: 3)
!459 = !DILocation(line: 298, column: 13, scope: !151, inlinedAt: !460)
!460 = distinct !DILocation(line: 427, column: 13, scope: !458)
!461 = !DILocation(line: 300, column: 17, scope: !151, inlinedAt: !460)
!462 = !DILocation(line: 427, column: 5, scope: !458)
!463 = !DILocation(line: 392, column: 9, scope: !135)
!464 = !DILocation(line: 430, column: 21, scope: !465)
!465 = distinct !DILexicalBlock(scope: !458, file: !1, line: 428, column: 5)
!466 = !DILocation(line: 431, column: 21, scope: !465)
!467 = !DILocation(line: 433, column: 9, scope: !465)
!468 = !DILocation(line: 436, column: 9, scope: !465)
!469 = !DILocation(line: 438, column: 14, scope: !458)
!470 = !DILocation(line: 438, column: 10, scope: !458)
!471 = !DILocation(line: 439, column: 15, scope: !458)
!472 = !DILocation(line: 443, column: 1, scope: !135)
