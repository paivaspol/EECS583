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
  ret i8* getelementptr inbounds ([84 x i8]* @.str14, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupStaggerIndexGI(i32 %gindex) #1 {
  %group = alloca %struct.cGroup, align 4
  %1 = call i32 @CCTK_GroupData(i32 %gindex, %struct.cGroup* %group) #6
  %2 = getelementptr inbounds %struct.cGroup* %group, i64 0, i32 3
  %3 = load i32* %2, align 4, !tbaa !2
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupstaggerindexgi_(i32* nocapture %stagcode, i32* nocapture readonly %gindex) #1 {
  %group.i = alloca %struct.cGroup, align 4
  %1 = load i32* %gindex, align 4, !tbaa !7
  %2 = bitcast %struct.cGroup* %group.i to i8*
  call void @llvm.lifetime.start(i64 32, i8* %2)
  %3 = call i32 @CCTK_GroupData(i32 %1, %struct.cGroup* %group.i) #6
  %4 = getelementptr inbounds %struct.cGroup* %group.i, i64 0, i32 3
  %5 = load i32* %4, align 4, !tbaa !2
  call void @llvm.lifetime.end(i64 32, i8* %2)
  store i32 %5, i32* %stagcode, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupStaggerIndexGN(i8* %gname) #1 {
  %group.i = alloca %struct.cGroup, align 4
  %1 = tail call i32 @CCTK_GroupIndex(i8* %gname) #6
  %2 = bitcast %struct.cGroup* %group.i to i8*
  call void @llvm.lifetime.start(i64 32, i8* %2)
  %3 = call i32 @CCTK_GroupData(i32 %1, %struct.cGroup* %group.i) #6
  %4 = getelementptr inbounds %struct.cGroup* %group.i, i64 0, i32 3
  %5 = load i32* %4, align 4, !tbaa !2
  call void @llvm.lifetime.end(i64 32, i8* %2)
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupstaggerindexgn_(i32* nocapture %scode, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %group.i = alloca %struct.cGroup, align 4
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = tail call i32 @CCTK_GroupIndex(i8* %1) #6
  %3 = bitcast %struct.cGroup* %group.i to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3)
  %4 = call i32 @CCTK_GroupData(i32 %2, %struct.cGroup* %group.i) #6
  %5 = getelementptr inbounds %struct.cGroup* %group.i, i64 0, i32 3
  %6 = load i32* %5, align 4, !tbaa !2
  call void @llvm.lifetime.end(i64 32, i8* %3)
  store i32 %6, i32* %scode, align 4, !tbaa !7
  call void @free(i8* %1) #7
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_StaggerIndex(i8* %stype) #1 {
  %1 = tail call i64 @strlen(i8* %stype) #6
  %2 = trunc i64 %1 to i32
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %0
  %sext = shl i64 %1, 32
  %4 = ashr exact i64 %sext, 32
  br label %5

; <label>:5                                       ; preds = %.lr.ph, %14
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %14 ]
  %base.04 = phi i32 [ 1, %.lr.ph ], [ %17, %14 ]
  %scode.03 = phi i32 [ 0, %.lr.ph ], [ %16, %14 ]
  %6 = getelementptr inbounds i8* %stype, i64 %indvars.iv
  %7 = load i8* %6, align 1, !tbaa !8
  %8 = sext i8 %7 to i32
  %9 = tail call i32 @__toupper(i32 %8) #6
  switch i32 %9, label %12 [
    i32 77, label %14
    i32 67, label %10
    i32 80, label %11
  ]

; <label>:10                                      ; preds = %5
  br label %14

; <label>:11                                      ; preds = %5
  br label %14

; <label>:12                                      ; preds = %5
  %13 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 150, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str2, i64 0, i64 0), i8* %stype) #6
  br label %.loopexit

; <label>:14                                      ; preds = %5, %11, %10
  %m.0 = phi i32 [ 2, %11 ], [ 1, %10 ], [ 0, %5 ]
  %15 = mul nsw i32 %m.0, %base.04
  %16 = add nsw i32 %15, %scode.03
  %17 = mul nsw i32 %base.04, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %18 = icmp slt i64 %indvars.iv.next, %4
  br i1 %18, label %5, label %.loopexit

.loopexit:                                        ; preds = %14, %0, %12
  %.0 = phi i32 [ -1, %12 ], [ 0, %0 ], [ %16, %14 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_staggerindex_(i32* nocapture %scode, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = tail call i32 @CCTK_StaggerIndex(i8* %1) #7
  store i32 %2, i32* %scode, align 4, !tbaa !7
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_StaggerDirIndex(i32 %dir, i32 %si) #1 {
  %.b = load i1* @CCTK_StaggerDirIndex.hashed, align 1
  br i1 %.b, label %.preheader, label %1

; <label>:1                                       ; preds = %0
  store i32 1, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 0), align 16, !tbaa !7
  store i32 3, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 1), align 4, !tbaa !7
  store i32 9, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 2), align 8, !tbaa !7
  store i32 27, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 3), align 4, !tbaa !7
  store i1 true, i1* @CCTK_StaggerDirIndex.hashed, align 1
  br label %.preheader

.preheader:                                       ; preds = %1, %0, %8
  %indvars.iv = phi i64 [ %indvars.iv.next, %8 ], [ 3, %0 ], [ 3, %1 ]
  %.02 = phi i32 [ %9, %8 ], [ %si, %0 ], [ %si, %1 ]
  %2 = getelementptr inbounds [4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 %indvars.iv
  %3 = load i32* %2, align 4, !tbaa !7
  %4 = trunc i64 %indvars.iv to i32
  %5 = icmp eq i32 %4, %dir
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %.preheader
  %7 = sdiv i32 %.02, %3
  br label %.loopexit

; <label>:8                                       ; preds = %.preheader
  %9 = srem i32 %.02, %3
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %10 = icmp sgt i64 %indvars.iv, 0
  br i1 %10, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %8, %6
  %dsi.0 = phi i32 [ %7, %6 ], [ 0, %8 ]
  ret i32 %dsi.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_staggerdirindex_(i32* nocapture %dsi, i32* nocapture readonly %dir, i32* nocapture readonly %gsi) #1 {
  %1 = load i32* %dir, align 4, !tbaa !7
  %2 = add nsw i32 %1, -1
  %3 = load i32* %gsi, align 4, !tbaa !7
  %.b.i = load i1* @CCTK_StaggerDirIndex.hashed, align 1
  br i1 %.b.i, label %.preheader.i, label %4

; <label>:4                                       ; preds = %0
  store i32 1, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 0), align 16, !tbaa !7
  store i32 3, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 1), align 4, !tbaa !7
  store i32 9, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 2), align 8, !tbaa !7
  store i32 27, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 3), align 4, !tbaa !7
  store i1 true, i1* @CCTK_StaggerDirIndex.hashed, align 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %4, %0, %11
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %11 ], [ 3, %0 ], [ 3, %4 ]
  %.02.i = phi i32 [ %12, %11 ], [ %3, %0 ], [ %3, %4 ]
  %5 = getelementptr inbounds [4 x i32]* @CCTK_StaggerDirIndex.hash, i64 0, i64 %indvars.iv.i
  %6 = load i32* %5, align 4, !tbaa !7
  %7 = trunc i64 %indvars.iv.i to i32
  %8 = icmp eq i32 %7, %2
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %.preheader.i
  %10 = sdiv i32 %.02.i, %6
  br label %CCTK_StaggerDirIndex.exit

; <label>:11                                      ; preds = %.preheader.i
  %12 = srem i32 %.02.i, %6
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %13 = icmp sgt i64 %indvars.iv.i, 0
  br i1 %13, label %.preheader.i, label %CCTK_StaggerDirIndex.exit

CCTK_StaggerDirIndex.exit:                        ; preds = %11, %9
  %dsi.0.i = phi i32 [ %10, %9 ], [ 0, %11 ]
  store i32 %dsi.0.i, i32* %dsi, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_StaggerDirArray(i32* nocapture %dindex, i32 %dim, i32 %sindex) #1 {
  %.b = load i1* @CCTK_StaggerDirArray.hashed, align 1
  br i1 %.b, label %2, label %1

; <label>:1                                       ; preds = %0
  store i32 1, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirArray.hash, i64 0, i64 0), align 16, !tbaa !7
  store i32 3, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirArray.hash, i64 0, i64 1), align 4, !tbaa !7
  store i32 9, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirArray.hash, i64 0, i64 2), align 8, !tbaa !7
  store i32 27, i32* getelementptr inbounds ([4 x i32]* @CCTK_StaggerDirArray.hash, i64 0, i64 3), align 4, !tbaa !7
  store i1 true, i1* @CCTK_StaggerDirArray.hashed, align 1
  br label %2

; <label>:2                                       ; preds = %0, %1
  %3 = icmp sgt i32 %dim, 4
  br i1 %3, label %5, label %.preheader

.preheader:                                       ; preds = %2
  %4 = sext i32 %dim to i64
  br label %7

; <label>:5                                       ; preds = %2
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 256, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), i32 %dim) #6
  br label %.loopexit

; <label>:7                                       ; preds = %.preheader, %15
  %indvars.iv = phi i64 [ 3, %.preheader ], [ %indvars.iv.next, %15 ]
  %.012 = phi i32 [ %sindex, %.preheader ], [ %10, %15 ]
  %8 = getelementptr inbounds [4 x i32]* @CCTK_StaggerDirArray.hash, i64 0, i64 %indvars.iv
  %9 = load i32* %8, align 4, !tbaa !7
  %10 = srem i32 %.012, %9
  %11 = icmp slt i64 %indvars.iv, %4
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %7
  %13 = sdiv i32 %.012, %9
  %14 = getelementptr inbounds i32* %dindex, i64 %indvars.iv
  store i32 %13, i32* %14, align 4, !tbaa !7
  br label %15

; <label>:15                                      ; preds = %7, %12
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %16 = icmp sgt i64 %indvars.iv, 0
  br i1 %16, label %7, label %.loopexit

.loopexit:                                        ; preds = %15, %5
  %.0 = phi i32 [ -1, %5 ], [ 0, %15 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupstaggerdirarray_(i32* nocapture %ierr, i32* nocapture %dindex, i32* nocapture readonly %dim, i32* nocapture readonly %gsc) #1 {
  %1 = load i32* %dim, align 4, !tbaa !7
  %2 = load i32* %gsc, align 4, !tbaa !7
  %3 = tail call i32 @CCTK_StaggerDirArray(i32* %dindex, i32 %1, i32 %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupStaggerDirArrayGI(i32* nocapture %dindex, i32 %dim, i32 %gi) #1 {
  %group.i = alloca %struct.cGroup, align 4
  %1 = bitcast %struct.cGroup* %group.i to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1)
  %2 = call i32 @CCTK_GroupData(i32 %gi, %struct.cGroup* %group.i) #6
  %3 = getelementptr inbounds %struct.cGroup* %group.i, i64 0, i32 3
  %4 = load i32* %3, align 4, !tbaa !2
  call void @llvm.lifetime.end(i64 32, i8* %1)
  %5 = call i32 @CCTK_StaggerDirArray(i32* %dindex, i32 %dim, i32 %4) #7
  ret i32 %5
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupstaggerdirarraygi_(i32* nocapture %ierr, i32* nocapture %dindex, i32* nocapture readonly %dim, i32* nocapture readonly %gi) #1 {
  %group.i.i = alloca %struct.cGroup, align 4
  %1 = load i32* %dim, align 4, !tbaa !7
  %2 = load i32* %gi, align 4, !tbaa !7
  %3 = bitcast %struct.cGroup* %group.i.i to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #5
  %4 = call i32 @CCTK_GroupData(i32 %2, %struct.cGroup* %group.i.i) #6
  %5 = getelementptr inbounds %struct.cGroup* %group.i.i, i64 0, i32 3
  %6 = load i32* %5, align 4, !tbaa !2
  call void @llvm.lifetime.end(i64 32, i8* %3) #5
  %7 = call i32 @CCTK_StaggerDirArray(i32* %dindex, i32 %1, i32 %6) #6
  store i32 %7, i32* %ierr, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_StaggerDirName(i32 %dir, i8* %stype) #1 {
  %hs = alloca [7 x i8], align 1
  %1 = getelementptr inbounds [7 x i8]* %hs, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([7 x i8]* @CCTK_StaggerDirName.hs, i64 0, i64 0), i64 7, i32 1, i1 false)
  %2 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 7, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* %stype) #6
  %3 = call i64 @strlen(i8* %1) #6
  %4 = trunc i64 %3 to i32
  %5 = icmp slt i32 %4, %dir
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 336, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), i32 %dir) #6
  br label %8

; <label>:8                                       ; preds = %6, %0
  %9 = sext i32 %dir to i64
  %10 = getelementptr inbounds [7 x i8]* %hs, i64 0, i64 %9
  %11 = load i8* %10, align 1, !tbaa !8
  %12 = sext i8 %11 to i32
  %13 = call i32 @__toupper(i32 %12) #6
  switch i32 %13, label %16 [
    i32 77, label %18
    i32 67, label %14
    i32 80, label %15
  ]

; <label>:14                                      ; preds = %8
  br label %18

; <label>:15                                      ; preds = %8
  br label %18

; <label>:16                                      ; preds = %8
  %17 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 347, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str6, i64 0, i64 0), i8* %1) #6
  br label %18

; <label>:18                                      ; preds = %14, %15, %8, %16
  %.0 = phi i32 [ -1, %16 ], [ 2, %15 ], [ 1, %14 ], [ 0, %8 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_staggerdirname_(i32* nocapture %dsc, i32* nocapture readonly %dir, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load i32* %dir, align 4, !tbaa !7
  %3 = add nsw i32 %2, -1
  %4 = tail call i32 @CCTK_StaggerDirName(i32 %3, i8* %1) #7
  store i32 %4, i32* %dsc, align 4, !tbaa !7
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ParseStaggerString(i32 %dim, i8* %imp, i8* %gname, i8* %stype) #1 {
  %hs = alloca [11 x i8], align 1
  %1 = icmp sgt i32 %dim, 10
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 399, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str7, i64 0, i64 0), i32 %dim) #6
  br label %4

; <label>:4                                       ; preds = %2, %0
  %5 = tail call i32 @CCTK_Equals(i8* %stype, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0)) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

; <label>:7                                       ; preds = %4
  %8 = getelementptr inbounds [11 x i8]* %hs, i64 0, i64 0
  %9 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %8, i32 0, i64 11, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0)) #6
  br label %.preheader

; <label>:10                                      ; preds = %4
  %11 = tail call i32 @CCTK_Equals(i8* %stype, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

; <label>:13                                      ; preds = %10
  %14 = getelementptr inbounds [11 x i8]* %hs, i64 0, i64 0
  %15 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %14, i32 0, i64 11, i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0)) #6
  br label %.preheader

; <label>:16                                      ; preds = %10
  %17 = tail call i64 @strlen(i8* %stype) #6
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, %dim
  br i1 %19, label %22, label %20

; <label>:20                                      ; preds = %16
  %21 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 417, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8]* @.str12, i64 0, i64 0), i8* %stype, i8* %gname, i32 %dim) #6
  br label %22

; <label>:22                                      ; preds = %16, %20
  %23 = getelementptr inbounds [11 x i8]* %hs, i64 0, i64 0
  %24 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %23, i32 0, i64 11, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* %stype) #6
  br label %.preheader

.preheader:                                       ; preds = %13, %22, %7
  %25 = icmp sgt i32 %dim, 0
  br i1 %25, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %26 = sext i32 %dim to i64
  br label %27

; <label>:27                                      ; preds = %.lr.ph, %36
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %36 ]
  %scode.04 = phi i32 [ 0, %.lr.ph ], [ %38, %36 ]
  %base.03 = phi i32 [ 1, %.lr.ph ], [ %39, %36 ]
  %28 = getelementptr inbounds [11 x i8]* %hs, i64 0, i64 %indvars.iv
  %29 = load i8* %28, align 1, !tbaa !8
  %30 = sext i8 %29 to i32
  %31 = call i32 @__toupper(i32 %30) #6
  switch i32 %31, label %34 [
    i32 77, label %36
    i32 67, label %32
    i32 80, label %33
  ]

; <label>:32                                      ; preds = %27
  br label %36

; <label>:33                                      ; preds = %27
  br label %36

; <label>:34                                      ; preds = %27
  %35 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 433, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str13, i64 0, i64 0), i8* %stype, i8* %imp, i8* %gname) #6
  br label %.loopexit

; <label>:36                                      ; preds = %27, %33, %32
  %m.0 = phi i32 [ 2, %33 ], [ 1, %32 ], [ 0, %27 ]
  %37 = mul nsw i32 %m.0, %base.03
  %38 = add nsw i32 %37, %scode.04
  %39 = mul nsw i32 %base.03, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %40 = icmp slt i64 %indvars.iv.next, %26
  br i1 %40, label %27, label %.loopexit

.loopexit:                                        ; preds = %36, %.preheader, %34
  %.0 = phi i32 [ -1, %34 ], [ 0, %.preheader ], [ %38, %36 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @__toupper(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 12}
!3 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!4, !4, i64 0}
!8 = !{!5, !5, i64 0}
