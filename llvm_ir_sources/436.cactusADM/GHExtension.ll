; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cFunctionData = type { i32, i32 (%struct.cGH*, i8*)*, i32, i32, i32*, i32, i32, i32*, i8*, i8*, i8* }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }
%struct.cTimerData = type { i32, %struct.cTimerVal* }
%struct.cTimerVal = type { i32, i8*, i8*, %union.anon }
%union.anon = type { i64 }

@driverrest_ = external global %struct.anon
@pughpriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [78 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [36 x i8] c"Failed to allocate memory for a pGH\00", align 1
@CCTK_EnableGroupStorage = external global i32 (%struct.cGH*, i8*)*
@.str3 = private unnamed_addr constant [14 x i8] c"CCTK_SHUTDOWN\00", align 1
@PUGHCallFunc = internal unnamed_addr global i32 (i8*, %struct.cFunctionData*, i8*)* null, align 8
@.str4 = private unnamed_addr constant [37 x i8] c"Elapsed time spent in communication:\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"  %s: %d %s\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"  %s: %.3f %s\00", align 1
@.str7 = private unnamed_addr constant [33 x i8] c"Unknown data type for timer info\00", align 1
@.str8 = private unnamed_addr constant [67 x i8] c"Couldn't create timer info structure ! No timing output available.\00", align 1
@.str9 = private unnamed_addr constant [91 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/GHExtension.c,v 1.59 2001/11/05 15:01:46 tradke Exp $\00", align 1
@.str10 = private unnamed_addr constant [41 x i8] c"PUGH_InitGHVariables: Unknown group type\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_pugh_GHExtension_c() #0 {
  ret i8* getelementptr inbounds ([91 x i8]* @.str9, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @PUGH_SetupGH(%struct.tFleshConfig* nocapture readnone %config, i32 %convergence_level, %struct.cGH* %GH) #1 {
  %pgroup = alloca %struct.cGroup, align 4
  %1 = tail call i32 @CCTK_MaxDim() #6
  %2 = mul nsw i32 %1, 5
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 2
  %5 = tail call i8* @malloc(i64 %4) #6
  %6 = bitcast i8* %5 to i32*
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds i32* %6, i64 %7
  %9 = shl nsw i32 %1, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32* %6, i64 %10
  tail call void @PUGH_GFSize(i32 %1, i32* %6) #7
  tail call void @PUGH_GFGhostsize(i32 %1, i32* %8) #7
  tail call void @PUGH_GFPeriodic(i32 %1, i32* %11) #7
  %12 = bitcast %struct.cGH* %GH to i8*
  %13 = tail call i32 @CCTK_StaggerVars() #6
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = tail call %struct.PGH* @PUGH_SetupPGH(i8* %12, i32 %1, i32* %6, i32* %8, i32 %15, i32* %11) #6
  %17 = icmp eq %struct.PGH* %16, null
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %0
  %19 = tail call i32 @CCTK_Warn(i32 0, i32 108, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str2, i64 0, i64 0)) #6
  br label %20

; <label>:20                                      ; preds = %0, %18
  %21 = tail call i8* @calloc(i64 1, i64 1) #6
  %22 = getelementptr inbounds %struct.PGH* %16, i64 0, i32 23
  store i8* %21, i8** %22, align 8, !tbaa !2
  %23 = call i32 @CCTK_NumGroups() #6
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %.lr.ph8, label %._crit_edge

.lr.ph8:                                          ; preds = %20
  %25 = mul nsw i32 %1, 3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32* %6, i64 %26
  %28 = shl nsw i32 %1, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32* %6, i64 %29
  %31 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0
  %32 = bitcast i32* %30 to i8*
  %33 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 4
  %34 = call i64 @llvm.objectsize.i64.p0i8(i8* %32, i1 false)
  %35 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 1
  %36 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5
  %37 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 3
  %38 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6
  %39 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 7
  %40 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 2
  br label %41

; <label>:41                                      ; preds = %.lr.ph8, %.loopexit
  %group.07 = phi i32 [ 0, %.lr.ph8 ], [ %82, %.loopexit ]
  %42 = call i32 @CCTK_GroupData(i32 %group.07, %struct.cGroup* %pgroup) #6
  %43 = call i32** @CCTK_GroupSizesI(i32 %group.07) #6
  %44 = icmp eq i32** %43, null
  br i1 %44, label %.loopexit3, label %.preheader2

.preheader2:                                      ; preds = %41
  %45 = load i32* %33, align 4, !tbaa !9
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %.lr.ph, label %.loopexit3

.lr.ph:                                           ; preds = %.preheader2
  %.pre = load i32* %40, align 4, !tbaa !11
  br label %47

; <label>:47                                      ; preds = %.lr.ph, %47
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %47 ]
  %48 = getelementptr inbounds i32** %43, i64 %indvars.iv
  %49 = load i32** %48, align 8, !tbaa !12
  %50 = load i32* %49, align 4, !tbaa !13
  %.sum1 = add nsw i64 %indvars.iv, %26
  %51 = getelementptr inbounds i32* %6, i64 %.sum1
  %52 = icmp eq i32 %.pre, 1
  %53 = sub nsw i32 0, %50
  %. = select i1 %52, i32 %53, i32 %50
  store i32 %., i32* %51, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %54 = sext i32 %45 to i64
  %55 = icmp slt i64 %indvars.iv.next, %54
  br i1 %55, label %47, label %.loopexit3

.loopexit3:                                       ; preds = %47, %.preheader2, %41
  %groupsize.0 = phi i32* [ null, %41 ], [ %27, %.preheader2 ], [ %27, %47 ]
  %56 = call i32** @CCTK_GroupGhostsizesI(i32 %group.07) #6
  %57 = icmp eq i32** %56, null
  br i1 %57, label %66, label %.preheader

.preheader:                                       ; preds = %.loopexit3
  %58 = load i32* %33, align 4, !tbaa !9
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %.lr.ph6, label %.loopexit

.lr.ph6:                                          ; preds = %.preheader, %.lr.ph6
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %.lr.ph6 ], [ 0, %.preheader ]
  %60 = getelementptr inbounds i32** %56, i64 %indvars.iv9
  %61 = load i32** %60, align 8, !tbaa !12
  %62 = load i32* %61, align 4, !tbaa !13
  %.sum = add nsw i64 %indvars.iv9, %29
  %63 = getelementptr inbounds i32* %6, i64 %.sum
  store i32 %62, i32* %63, align 4, !tbaa !13
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %64 = sext i32 %58 to i64
  %65 = icmp slt i64 %indvars.iv.next10, %64
  br i1 %65, label %.lr.ph6, label %.loopexit

; <label>:66                                      ; preds = %.loopexit3
  %67 = load i32* %31, align 4, !tbaa !14
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %.loopexit

; <label>:69                                      ; preds = %66
  %70 = load i32* %33, align 4, !tbaa !9
  %71 = sext i32 %70 to i64
  %72 = shl nsw i64 %71, 2
  %73 = call i8* @__memset_chk(i8* %32, i32 0, i64 %72, i64 %34) #6
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph6, %.preheader, %66, %69
  %groupghostsize.0 = phi i32* [ %30, %69 ], [ null, %66 ], [ %30, %.preheader ], [ %30, %.lr.ph6 ]
  %74 = load i32* %31, align 4, !tbaa !14
  %75 = load i32* %35, align 4, !tbaa !15
  %76 = load i32* %33, align 4, !tbaa !9
  %77 = load i32* %36, align 4, !tbaa !16
  %78 = load i32* %37, align 4, !tbaa !17
  %79 = load i32* %38, align 4, !tbaa !18
  %80 = load i32* %39, align 4, !tbaa !19
  %81 = call i32 @PUGH_SetupGroup(%struct.PGH* %16, i32* %groupsize.0, i32* %groupghostsize.0, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80) #6
  %82 = add nuw nsw i32 %group.07, 1
  %83 = call i32 @CCTK_NumGroups() #6
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %41, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %20
  call void @free(i8* %5) #7
  %85 = bitcast %struct.PGH* %16 to i8*
  ret i8* %85
}

; Function Attrs: optsize
declare i32 @CCTK_MaxDim() #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_GFSize(i32 %dim, i32* nocapture %nsize) #1 {
  %1 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 4), align 4, !tbaa !20
  %2 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 5), align 4, !tbaa !22
  %3 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 6), align 4, !tbaa !23
  %4 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 7), align 4, !tbaa !24
  %5 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 13) to i64*), align 8
  %6 = trunc i64 %5 to i32
  %7 = lshr i64 %5, 32
  %8 = trunc i64 %7 to i32
  %9 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 15) to i64*), align 8
  %10 = trunc i64 %9 to i32
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %1, 0
  %14 = icmp sgt i32 %6, 0
  %or.cond = or i1 %13, %14
  br i1 %or.cond, label %15, label %22

; <label>:15                                      ; preds = %0
  %16 = sub nsw i32 0, %6
  %17 = select i1 %13, i32 %1, i32 %16
  %18 = icmp sgt i32 %dim, 0
  br i1 %18, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %15
  %19 = add i32 %dim, -1
  br label %20

; <label>:20                                      ; preds = %20, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %20 ]
  %21 = getelementptr inbounds i32* %nsize, i64 %indvars.iv
  store i32 %17, i32* %21, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %19
  br i1 %exitcond, label %.loopexit, label %20

; <label>:22                                      ; preds = %0
  switch i32 %dim, label %.loopexit [
    i32 3, label %23
    i32 2, label %28
    i32 1, label %33
  ]

; <label>:23                                      ; preds = %22
  %24 = icmp sgt i32 %12, 0
  %25 = sub nsw i32 0, %12
  %26 = select i1 %24, i32 %25, i32 %4
  %27 = getelementptr inbounds i32* %nsize, i64 2
  store i32 %26, i32* %27, align 4, !tbaa !13
  br label %28

; <label>:28                                      ; preds = %22, %23
  %29 = icmp sgt i32 %10, 0
  %30 = sub nsw i32 0, %10
  %31 = select i1 %29, i32 %30, i32 %3
  %32 = getelementptr inbounds i32* %nsize, i64 1
  store i32 %31, i32* %32, align 4, !tbaa !13
  br label %33

; <label>:33                                      ; preds = %22, %28
  %34 = icmp sgt i32 %8, 0
  %35 = sub nsw i32 0, %8
  %36 = select i1 %34, i32 %35, i32 %2
  store i32 %36, i32* %nsize, align 4, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %20, %15, %22, %33
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_GFGhostsize(i32 %dim, i32* %ghostsize) #1 {
  %1 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 0), align 4, !tbaa !25
  %2 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 1), align 4, !tbaa !26
  %3 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 2), align 4, !tbaa !27
  %4 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 3), align 4, !tbaa !28
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %.preheader, label %10

.preheader:                                       ; preds = %0
  %6 = icmp sgt i32 %dim, 0
  br i1 %6, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %7 = add i32 %dim, -1
  br label %8

; <label>:8                                       ; preds = %8, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %9 = getelementptr inbounds i32* %ghostsize, i64 %indvars.iv
  store i32 %1, i32* %9, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %7
  br i1 %exitcond, label %.loopexit, label %8

; <label>:10                                      ; preds = %0
  %11 = bitcast i32* %ghostsize to i8*
  %12 = sext i32 %dim to i64
  %13 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %11, i1 false)
  %14 = tail call i8* @__memset_chk(i8* %11, i32 0, i64 %12, i64 %13) #6
  switch i32 %dim, label %.loopexit [
    i32 3, label %15
    i32 2, label %17
    i32 1, label %19
  ]

; <label>:15                                      ; preds = %10
  %16 = getelementptr inbounds i32* %ghostsize, i64 2
  store i32 %4, i32* %16, align 4, !tbaa !13
  br label %17

; <label>:17                                      ; preds = %10, %15
  %18 = getelementptr inbounds i32* %ghostsize, i64 1
  store i32 %3, i32* %18, align 4, !tbaa !13
  br label %19

; <label>:19                                      ; preds = %10, %17
  store i32 %2, i32* %ghostsize, align 4, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %8, %.preheader, %10, %19
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_GFPeriodic(i32 %dim, i32* %perme) #1 {
  %1 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 8), align 4, !tbaa !29
  %2 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 9), align 4, !tbaa !30
  %3 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 10), align 4, !tbaa !31
  %4 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 11), align 4, !tbaa !32
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  switch i32 %dim, label %18 [
    i32 3, label %7
    i32 2, label %9
    i32 1, label %11
  ]

; <label>:7                                       ; preds = %6
  %8 = getelementptr inbounds i32* %perme, i64 2
  store i32 %4, i32* %8, align 4, !tbaa !13
  br label %9

; <label>:9                                       ; preds = %6, %7
  %10 = getelementptr inbounds i32* %perme, i64 1
  store i32 %3, i32* %10, align 4, !tbaa !13
  br label %11

; <label>:11                                      ; preds = %6, %9
  store i32 %2, i32* %perme, align 4, !tbaa !13
  br label %18

; <label>:12                                      ; preds = %0
  %13 = bitcast i32* %perme to i8*
  %14 = sext i32 %dim to i64
  %15 = shl nsw i64 %14, 2
  %16 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %13, i1 false)
  %17 = tail call i8* @__memset_chk(i8* %13, i32 0, i64 %15, i64 %16) #6
  br label %18

; <label>:18                                      ; preds = %6, %11, %12
  ret void
}

; Function Attrs: optsize
declare %struct.PGH* @PUGH_SetupPGH(i8*, i32, i32*, i32*, i32, i32*) #2

; Function Attrs: optsize
declare i32 @CCTK_StaggerVars() #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: optsize
declare i32 @CCTK_NumGroups() #2

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #2

; Function Attrs: optsize
declare i32** @CCTK_GroupSizesI(i32) #2

; Function Attrs: optsize
declare i32** @CCTK_GroupGhostsizesI(i32) #2

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: optsize
declare i32 @PUGH_SetupGroup(%struct.PGH*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_InitGH(%struct.cGH* %GH) #1 {
  %1 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 12), align 4, !tbaa !33
  tail call fastcc void @PUGH_InitGHBasics(%struct.cGH* %GH) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %0
  %3 = tail call i32 @CCTK_NumGroups() #6
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.01 = phi i32 [ %8, %.lr.ph ], [ 0, %.preheader ]
  %5 = load i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupStorage, align 8, !tbaa !12
  %6 = tail call i8* @CCTK_GroupName(i32 %i.01) #6
  %7 = tail call i32 %5(%struct.cGH* %GH, i8* %6) #6
  %8 = add nuw nsw i32 %i.01, 1
  %9 = tail call i32 @CCTK_NumGroups() #6
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %0
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @PUGH_InitGHBasics(%struct.cGH* %GH) #1 {
  %1 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6
  %2 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !35
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %5

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14
  store i32 0, i32* %6, align 4, !tbaa !37
  br label %._crit_edge

.lr.ph:                                           ; preds = %0
  %7 = add nsw i32 %3, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 21
  %10 = load %struct.PGExtras*** %9, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.PGExtras** %10, i64 %8
  %12 = load %struct.PGExtras** %11, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14
  store i32 0, i32* %13, align 4, !tbaa !37
  %14 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13
  %15 = load i32** %14, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct.PGExtras* %12, i64 0, i32 12
  %17 = load i32** %16, align 8, !tbaa !40
  %18 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15
  %19 = load i32** %18, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.PGExtras* %12, i64 0, i32 6
  %21 = load i32** %20, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3
  %23 = load i32** %22, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct.PGExtras* %12, i64 0, i32 1
  %25 = load i32** %24, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2
  %27 = load i32** %26, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.PGExtras* %12, i64 0, i32 5
  %29 = load i32** %28, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12
  %31 = load i32** %30, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 3
  %33 = getelementptr inbounds %struct.PGExtras* %12, i64 0, i32 3
  %34 = load i32*** %33, align 8, !tbaa !49
  %35 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4
  %36 = load i32** %35, align 8, !tbaa !50
  %37 = getelementptr inbounds %struct.PGExtras* %12, i64 0, i32 4
  %38 = load i32*** %37, align 8, !tbaa !51
  %39 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5
  %40 = load i32** %39, align 8, !tbaa !52
  %41 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6
  %42 = load i32** %41, align 8, !tbaa !53
  br label %43

; <label>:43                                      ; preds = %.lr.ph, %90
  %indvars.iv4 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next5, %90 ]
  %44 = getelementptr inbounds i32* %15, i64 %indvars.iv4
  store i32 1, i32* %44, align 4, !tbaa !13
  %45 = getelementptr inbounds i32* %17, i64 %indvars.iv4
  %46 = load i32* %45, align 4, !tbaa !13
  %47 = getelementptr inbounds i32* %19, i64 %indvars.iv4
  store i32 %46, i32* %47, align 4, !tbaa !13
  %48 = getelementptr inbounds i32* %21, i64 %indvars.iv4
  %49 = load i32* %48, align 4, !tbaa !13
  %50 = getelementptr inbounds i32* %23, i64 %indvars.iv4
  store i32 %49, i32* %50, align 4, !tbaa !13
  %51 = getelementptr inbounds i32* %25, i64 %indvars.iv4
  %52 = load i32* %51, align 4, !tbaa !13
  %53 = getelementptr inbounds i32* %27, i64 %indvars.iv4
  store i32 %52, i32* %53, align 4, !tbaa !13
  %54 = trunc i64 %indvars.iv4 to i32
  %55 = shl nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32* %29, i64 %56
  %58 = load i32* %57, align 4, !tbaa !13
  %59 = getelementptr inbounds i32* %31, i64 %56
  store i32 %58, i32* %59, align 4, !tbaa !13
  %60 = or i32 %55, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32* %29, i64 %61
  %63 = load i32* %62, align 4, !tbaa !13
  %64 = getelementptr inbounds i32* %31, i64 %61
  store i32 %63, i32* %64, align 4, !tbaa !13
  %65 = load i32* %32, align 4, !tbaa !54
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32** %34, i64 %66
  %68 = load i32** %67, align 8, !tbaa !12
  %69 = getelementptr inbounds i32* %68, i64 %indvars.iv4
  %70 = load i32* %69, align 4, !tbaa !13
  %71 = getelementptr inbounds i32* %36, i64 %indvars.iv4
  store i32 %70, i32* %71, align 4, !tbaa !13
  %72 = load i32* %32, align 4, !tbaa !54
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32** %38, i64 %73
  %75 = load i32** %74, align 8, !tbaa !12
  %76 = getelementptr inbounds i32* %75, i64 %indvars.iv4
  %77 = load i32* %76, align 4, !tbaa !13
  %78 = getelementptr inbounds i32* %40, i64 %indvars.iv4
  store i32 %77, i32* %78, align 4, !tbaa !13
  %79 = mul nsw i64 %indvars.iv4, 3
  br label %80

; <label>:80                                      ; preds = %89, %43
  %indvars.iv = phi i64 [ 0, %43 ], [ %indvars.iv.next, %89 ]
  %81 = load i32* %50, align 4, !tbaa !13
  %82 = add nsw i64 %indvars.iv, %79
  %83 = getelementptr inbounds i32* %42, i64 %82
  store i32 %81, i32* %83, align 4, !tbaa !13
  %84 = load i32* %64, align 4, !tbaa !13
  %85 = icmp eq i32 %84, 1
  %86 = icmp sgt i64 %indvars.iv, 0
  %or.cond = and i1 %86, %85
  br i1 %or.cond, label %87, label %89

; <label>:87                                      ; preds = %80
  %88 = add nsw i32 %81, -1
  store i32 %88, i32* %83, align 4, !tbaa !13
  br label %89

; <label>:89                                      ; preds = %80, %87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %90, label %80

; <label>:90                                      ; preds = %89
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %91 = load i32* %2, align 4, !tbaa !35
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %indvars.iv.next5, %92
  br i1 %93, label %43, label %._crit_edge

._crit_edge:                                      ; preds = %90, %5
  ret void
}

; Function Attrs: optsize
declare i8* @CCTK_GroupName(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ScheduleTraverseGH(%struct.cGH* %GH, i8* %where) #1 {
  %1 = tail call i32 @strcmp(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0), i8* %where) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %PUGH_InitGHVariables.exit, label %3

; <label>:3                                       ; preds = %0
  tail call fastcc void @PUGH_InitGHBasics(%struct.cGH* %GH) #7
  %4 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6
  %5 = getelementptr inbounds %struct.PGH* %4, i64 0, i32 5
  %6 = load i32* %5, align 4, !tbaa !55
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.lr.ph5.i, label %PUGH_InitGHVariables.exit

.lr.ph5.i:                                        ; preds = %3
  %8 = getelementptr inbounds %struct.PGH* %4, i64 0, i32 7
  %9 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  br label %10

; <label>:10                                      ; preds = %._crit_edge.i, %.lr.ph5.i
  %indvars.iv7.i = phi i64 [ 0, %.lr.ph5.i ], [ %indvars.iv.next8.i, %._crit_edge.i ]
  %11 = trunc i64 %indvars.iv7.i to i32
  %12 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %11) #6
  %13 = tail call i32 @CCTK_NumTimeLevelsFromVarI(i32 %11) #6
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %10
  %15 = add i32 %13, -1
  br label %16

; <label>:16                                      ; preds = %46, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %46 ]
  switch i32 %12, label %44 [
    i32 1, label %17
    i32 2, label %29
    i32 3, label %29
  ]

; <label>:17                                      ; preds = %16
  %18 = load i8**** %8, align 8, !tbaa !56
  %19 = getelementptr inbounds i8*** %18, i64 %indvars.iv7.i
  %20 = load i8*** %19, align 8, !tbaa !12
  %21 = getelementptr inbounds i8** %20, i64 %indvars.iv.i
  %22 = bitcast i8** %21 to i64*
  %23 = load i64* %22, align 8, !tbaa !12
  %24 = load i8**** %9, align 8, !tbaa !57
  %25 = getelementptr inbounds i8*** %24, i64 %indvars.iv7.i
  %26 = load i8*** %25, align 8, !tbaa !12
  %27 = getelementptr inbounds i8** %26, i64 %indvars.iv.i
  %28 = bitcast i8** %27 to i64*
  store i64 %23, i64* %28, align 8, !tbaa !12
  br label %46

; <label>:29                                      ; preds = %16, %16
  %30 = load i8**** %8, align 8, !tbaa !56
  %31 = getelementptr inbounds i8*** %30, i64 %indvars.iv7.i
  %32 = load i8*** %31, align 8, !tbaa !12
  %33 = getelementptr inbounds i8** %32, i64 %indvars.iv.i
  %34 = bitcast i8** %33 to %struct.PGA**
  %35 = load %struct.PGA** %34, align 8, !tbaa !12
  %36 = getelementptr inbounds %struct.PGA* %35, i64 0, i32 4
  %37 = bitcast i8** %36 to i64*
  %38 = load i64* %37, align 8, !tbaa !58
  %39 = load i8**** %9, align 8, !tbaa !57
  %40 = getelementptr inbounds i8*** %39, i64 %indvars.iv7.i
  %41 = load i8*** %40, align 8, !tbaa !12
  %42 = getelementptr inbounds i8** %41, i64 %indvars.iv.i
  %43 = bitcast i8** %42 to i64*
  store i64 %38, i64* %43, align 8, !tbaa !12
  br label %46

; <label>:44                                      ; preds = %16
  %45 = tail call i32 @CCTK_Warn(i32 1, i32 266, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str10, i64 0, i64 0)) #6
  br label %46

; <label>:46                                      ; preds = %44, %29, %17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %15
  br i1 %exitcond, label %._crit_edge.i, label %16

._crit_edge.i:                                    ; preds = %46, %10
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %47 = load i32* %5, align 4, !tbaa !55
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %indvars.iv.next8.i, %48
  br i1 %49, label %10, label %PUGH_InitGHVariables.exit

PUGH_InitGHVariables.exit:                        ; preds = %._crit_edge.i, %3, %0
  %50 = bitcast %struct.cGH* %GH to i8*
  %51 = load i32 (i8*, %struct.cFunctionData*, i8*)** @PUGHCallFunc, align 8, !tbaa !12
  %52 = tail call i32 @CCTK_ScheduleTraverse(i8* %where, i8* %50, i32 (i8*, %struct.cFunctionData*, i8*)* %51) #6
  ret i32 %52
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @CCTK_ScheduleTraverse(i8*, i8*, i32 (i8*, %struct.cFunctionData*, i8*)*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_RegisterCallFunc(i32 (i8*, %struct.cFunctionData*, i8*)* %func) #1 {
  store i32 (i8*, %struct.cFunctionData*, i8*)* %func, i32 (i8*, %struct.cFunctionData*, i8*)** @PUGHCallFunc, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_PrintTimingInfo(%struct.cGH* %GH) #1 {
  %1 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6
  %2 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 20
  %3 = load i32* %2, align 4, !tbaa !60
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %56, label %5

; <label>:5                                       ; preds = %0
  %6 = tail call %struct.cTimerData* @CCTK_TimerCreateData() #6
  %7 = icmp eq %struct.cTimerData* %6, null
  br i1 %7, label %54, label %8

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str4, i64 0, i64 0)) #6
  %10 = load i32* %2, align 4, !tbaa !60
  %11 = tail call i32 @CCTK_TimerI(i32 %10, %struct.cTimerData* %6) #6
  %12 = getelementptr inbounds %struct.cTimerData* %6, i64 0, i32 0
  %13 = load i32* %12, align 4, !tbaa !61
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %8
  %15 = getelementptr inbounds %struct.cTimerData* %6, i64 0, i32 1
  br label %16

; <label>:16                                      ; preds = %.lr.ph, %49
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %49 ]
  %17 = load %struct.cTimerVal** %15, align 8, !tbaa !63
  %18 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 0
  %19 = load i32* %18, align 4, !tbaa !64
  switch i32 %19, label %47 [
    i32 1, label %20
    i32 2, label %29
    i32 3, label %38
  ]

; <label>:20                                      ; preds = %16
  %21 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 1
  %22 = load i8** %21, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 3
  %24 = bitcast %union.anon* %23 to i32*
  %25 = load i32* %24, align 4, !tbaa !13
  %26 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 2
  %27 = load i8** %26, align 8, !tbaa !67
  %28 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i8* %22, i32 %25, i8* %27) #6
  br label %49

; <label>:29                                      ; preds = %16
  %30 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 1
  %31 = load i8** %30, align 8, !tbaa !66
  %32 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 3, i32 0
  %33 = load i64* %32, align 8, !tbaa !68
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 2
  %36 = load i8** %35, align 8, !tbaa !67
  %37 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i8* %31, i32 %34, i8* %36) #6
  br label %49

; <label>:38                                      ; preds = %16
  %39 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 1
  %40 = load i8** %39, align 8, !tbaa !66
  %41 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 3
  %42 = bitcast %union.anon* %41 to double*
  %43 = load double* %42, align 8, !tbaa !70
  %44 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 2
  %45 = load i8** %44, align 8, !tbaa !67
  %46 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* %40, double %43, i8* %45) #6
  br label %49

; <label>:47                                      ; preds = %16
  %48 = tail call i32 @CCTK_Warn(i32 1, i32 561, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str7, i64 0, i64 0)) #6
  br label %49

; <label>:49                                      ; preds = %20, %29, %38, %47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %50 = load i32* %12, align 4, !tbaa !61
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %indvars.iv.next, %51
  br i1 %52, label %16, label %._crit_edge

._crit_edge:                                      ; preds = %49, %8
  %53 = tail call i32 @CCTK_TimerDestroyData(%struct.cTimerData* %6) #6
  br label %56

; <label>:54                                      ; preds = %5
  %55 = tail call i32 @CCTK_Warn(i32 1, i32 571, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str8, i64 0, i64 0)) #6
  br label %56

; <label>:56                                      ; preds = %._crit_edge, %54, %0
  ret i32 0
}

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

; Function Attrs: optsize
declare %struct.cTimerData* @CCTK_TimerCreateData() #2

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_TimerI(i32, %struct.cTimerData*) #2

; Function Attrs: optsize
declare i32 @CCTK_VInfo(i8*, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_TimerDestroyData(%struct.cTimerData*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeFromVarI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_NumTimeLevelsFromVarI(i32) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 136}
!3 = !{!"PGH", !4, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !7, i64 60, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !4, i64 120, !4, i64 128, !4, i64 136}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!10, !7, i64 16}
!10 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!11 = !{!10, !7, i64 8}
!12 = !{!4, !4, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!10, !7, i64 0}
!15 = !{!10, !7, i64 4}
!16 = !{!10, !7, i64 20}
!17 = !{!10, !7, i64 12}
!18 = !{!10, !7, i64 24}
!19 = !{!10, !7, i64 28}
!20 = !{!21, !7, i64 16}
!21 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!22 = !{!21, !7, i64 20}
!23 = !{!21, !7, i64 24}
!24 = !{!21, !7, i64 28}
!25 = !{!21, !7, i64 0}
!26 = !{!21, !7, i64 4}
!27 = !{!21, !7, i64 8}
!28 = !{!21, !7, i64 12}
!29 = !{!21, !7, i64 32}
!30 = !{!21, !7, i64 36}
!31 = !{!21, !7, i64 40}
!32 = !{!21, !7, i64 44}
!33 = !{!34, !7, i64 92}
!34 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !7, i64 216}
!35 = !{!36, !7, i64 0}
!36 = !{!"", !7, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !8, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !7, i64 104, !4, i64 112, !8, i64 120, !4, i64 128, !4, i64 136, !4, i64 144}
!37 = !{!36, !7, i64 104}
!38 = !{!3, !4, i64 120}
!39 = !{!36, !4, i64 96}
!40 = !{!41, !4, i64 96}
!41 = !{!"PGExtras", !7, i64 0, !4, i64 8, !8, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !5, i64 104, !5, i64 168, !5, i64 232}
!42 = !{!36, !4, i64 112}
!43 = !{!41, !4, i64 48}
!44 = !{!36, !4, i64 16}
!45 = !{!41, !4, i64 8}
!46 = !{!36, !4, i64 8}
!47 = !{!41, !4, i64 40}
!48 = !{!36, !4, i64 88}
!49 = !{!41, !4, i64 24}
!50 = !{!36, !4, i64 24}
!51 = !{!41, !4, i64 32}
!52 = !{!36, !4, i64 32}
!53 = !{!36, !4, i64 40}
!54 = !{!3, !7, i64 16}
!55 = !{!3, !7, i64 24}
!56 = !{!3, !4, i64 32}
!57 = !{!36, !4, i64 128}
!58 = !{!59, !4, i64 24}
!59 = !{!"PGA", !4, i64 0, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !7, i64 32, !7, i64 36, !4, i64 40, !7, i64 48, !7, i64 52, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !7, i64 88, !7, i64 92, !4, i64 96}
!60 = !{!3, !7, i64 112}
!61 = !{!62, !7, i64 0}
!62 = !{!"", !7, i64 0, !4, i64 8}
!63 = !{!62, !4, i64 8}
!64 = !{!65, !5, i64 0}
!65 = !{!"", !5, i64 0, !4, i64 8, !4, i64 16, !5, i64 24}
!66 = !{!65, !4, i64 8}
!67 = !{!65, !4, i64 16}
!68 = !{!69, !69, i64 0}
!69 = !{!"long", !5, i64 0}
!70 = !{!8, !8, i64 0}
