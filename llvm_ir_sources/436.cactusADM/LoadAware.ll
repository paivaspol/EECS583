; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@partition_1D.0 = internal unnamed_addr global i8* null
@partition_2D.0 = internal unnamed_addr global i8* null, align 16
@partition_2D.1 = internal unnamed_addr global i8* null
@partition_3D.0 = internal unnamed_addr global i8* null, align 16
@partition_3D.1 = internal unnamed_addr global i8* null
@partition_3D.2 = internal unnamed_addr global i8* null, align 16
@.str = private unnamed_addr constant [76 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/LoadAware.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [30 x i8] c"Only 1D, 2D, and 3D supported\00", align 1
@pughpriv_ = external global %struct.anon.0
@.str3 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"Only 1D, 2D, and 3D supported in manual topology setup\00", align 1
@.str5 = private unnamed_addr constant [89 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/LoadAware.c,v 1.10 2002/01/07 13:51:27 tradke Exp $\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"Not enough memory\00", align 1
@.str7 = private unnamed_addr constant [61 x i8] c"Wrong partition parameters: expect data for fewer processors\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str9 = private unnamed_addr constant [60 x i8] c"Wrong partition parameters: expect data for more processors\00", align 1
@.str10 = private unnamed_addr constant [69 x i8] c"Wrong partition parameters: total number of grid points doesnt match\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_LoadAware_c() #0 {
  ret i8* getelementptr inbounds ([89 x i8]* @.str5, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_SetPartitionInfo(i32 %dim, i8** nocapture readonly %partition_info) #1 {
  switch i32 %dim, label %43 [
    i32 1, label %1
    i32 2, label %8
    i32 3, label %22
  ]

; <label>:1                                       ; preds = %0
  %2 = load i8** @partition_1D.0, align 8, !tbaa !2
  %3 = icmp eq i8* %2, null
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %1
  tail call void @free(i8* %2) #4
  br label %5

; <label>:5                                       ; preds = %1, %4
  %6 = load i8** %partition_info, align 8, !tbaa !2
  %7 = tail call i8* @strdup(i8* %6) #5
  store i8* %7, i8** @partition_1D.0, align 8, !tbaa !2
  br label %45

; <label>:8                                       ; preds = %0
  %9 = load i8** @partition_2D.0, align 16, !tbaa !2
  %10 = icmp eq i8* %9, null
  br i1 %10, label %12, label %11

; <label>:11                                      ; preds = %8
  tail call void @free(i8* %9) #4
  br label %12

; <label>:12                                      ; preds = %8, %11
  %13 = load i8** @partition_2D.1, align 8, !tbaa !2
  %14 = icmp eq i8* %13, null
  br i1 %14, label %16, label %15

; <label>:15                                      ; preds = %12
  tail call void @free(i8* %13) #4
  br label %16

; <label>:16                                      ; preds = %12, %15
  %17 = load i8** %partition_info, align 8, !tbaa !2
  %18 = tail call i8* @strdup(i8* %17) #5
  store i8* %18, i8** @partition_2D.0, align 16, !tbaa !2
  %19 = getelementptr inbounds i8** %partition_info, i64 1
  %20 = load i8** %19, align 8, !tbaa !2
  %21 = tail call i8* @strdup(i8* %20) #5
  store i8* %21, i8** @partition_2D.1, align 8, !tbaa !2
  br label %45

; <label>:22                                      ; preds = %0
  %23 = load i8** @partition_3D.0, align 16, !tbaa !2
  %24 = icmp eq i8* %23, null
  br i1 %24, label %26, label %25

; <label>:25                                      ; preds = %22
  tail call void @free(i8* %23) #4
  br label %26

; <label>:26                                      ; preds = %22, %25
  %27 = load i8** @partition_3D.1, align 8, !tbaa !2
  %28 = icmp eq i8* %27, null
  br i1 %28, label %30, label %29

; <label>:29                                      ; preds = %26
  tail call void @free(i8* %27) #4
  br label %30

; <label>:30                                      ; preds = %26, %29
  %31 = load i8** @partition_3D.2, align 16, !tbaa !2
  %32 = icmp eq i8* %31, null
  br i1 %32, label %34, label %33

; <label>:33                                      ; preds = %30
  tail call void @free(i8* %31) #4
  br label %34

; <label>:34                                      ; preds = %30, %33
  %35 = load i8** %partition_info, align 8, !tbaa !2
  %36 = tail call i8* @strdup(i8* %35) #5
  store i8* %36, i8** @partition_3D.0, align 16, !tbaa !2
  %37 = getelementptr inbounds i8** %partition_info, i64 1
  %38 = load i8** %37, align 8, !tbaa !2
  %39 = tail call i8* @strdup(i8* %38) #5
  store i8* %39, i8** @partition_3D.1, align 8, !tbaa !2
  %40 = getelementptr inbounds i8** %partition_info, i64 2
  %41 = load i8** %40, align 8, !tbaa !2
  %42 = tail call i8* @strdup(i8* %41) #5
  store i8* %42, i8** @partition_3D.2, align 16, !tbaa !2
  br label %45

; <label>:43                                      ; preds = %0
  %44 = tail call i32 @CCTK_Warn(i32 1, i32 125, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0)) #5
  br label %45

; <label>:45                                      ; preds = %16, %43, %34, %5
  %retval.0 = phi i32 [ 0, %5 ], [ 0, %16 ], [ 0, %34 ], [ -1, %43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_GetBounds(i32 %dim, i32** nocapture %bounds, i32* nocapture readonly %nprocs, i32* nocapture readonly %nsize) #1 {
  %1 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 2), align 8, !tbaa !6
  %2 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 3), align 8, !tbaa !9
  %3 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 4), align 8, !tbaa !10
  %4 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 5), align 8, !tbaa !11
  %5 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 6), align 8, !tbaa !12
  %6 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 7), align 8, !tbaa !13
  %7 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 8), align 8, !tbaa !14
  %8 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #5
  switch i32 %dim, label %61 [
    i32 1, label %9
    i32 2, label %16
    i32 3, label %34
  ]

; <label>:9                                       ; preds = %0
  %10 = load i8** @partition_1D.0, align 8, !tbaa !2
  %11 = icmp ne i8* %10, null
  %12 = select i1 %11, i8* %10, i8* %2
  %13 = load i32* %nprocs, align 4, !tbaa !15
  %14 = load i32* %nsize, align 4, !tbaa !15
  %not. = icmp ne i32 %8, 0
  %. = or i1 %not., %11
  %15 = zext i1 %. to i32
  tail call fastcc void @PUGH_GetSliceSizes(i32 %13, i32 %14, i8* %12, i32** %bounds, i32 %15) #4
  br label %.loopexit

; <label>:16                                      ; preds = %0
  %17 = load i8** @partition_2D.0, align 16, !tbaa !2
  %18 = icmp ne i8* %17, null
  %19 = select i1 %18, i8* %17, i8* %3
  %20 = load i32* %nprocs, align 4, !tbaa !15
  %21 = load i32* %nsize, align 4, !tbaa !15
  %22 = icmp ne i32 %8, 0
  %.1 = or i1 %22, %18
  %23 = zext i1 %.1 to i32
  tail call fastcc void @PUGH_GetSliceSizes(i32 %20, i32 %21, i8* %19, i32** %bounds, i32 %23) #4
  %24 = load i8** @partition_2D.1, align 8, !tbaa !2
  %25 = icmp ne i8* %24, null
  %26 = select i1 %25, i8* %24, i8* %4
  %27 = getelementptr inbounds i32* %nprocs, i64 1
  %28 = load i32* %27, align 4, !tbaa !15
  %29 = getelementptr inbounds i32* %nsize, i64 1
  %30 = load i32* %29, align 4, !tbaa !15
  %31 = getelementptr inbounds i32** %bounds, i64 1
  %32 = or i1 %22, %25
  %33 = zext i1 %32 to i32
  tail call fastcc void @PUGH_GetSliceSizes(i32 %28, i32 %30, i8* %26, i32** %31, i32 %33) #4
  br label %.loopexit

; <label>:34                                      ; preds = %0
  %35 = load i8** @partition_3D.0, align 16, !tbaa !2
  %36 = icmp ne i8* %35, null
  %37 = select i1 %36, i8* %35, i8* %5
  %38 = load i32* %nprocs, align 4, !tbaa !15
  %39 = load i32* %nsize, align 4, !tbaa !15
  %40 = icmp ne i32 %8, 0
  %.2 = or i1 %40, %36
  %41 = zext i1 %.2 to i32
  tail call fastcc void @PUGH_GetSliceSizes(i32 %38, i32 %39, i8* %37, i32** %bounds, i32 %41) #4
  %42 = load i8** @partition_3D.1, align 8, !tbaa !2
  %43 = icmp ne i8* %42, null
  %44 = select i1 %43, i8* %42, i8* %6
  %45 = getelementptr inbounds i32* %nprocs, i64 1
  %46 = load i32* %45, align 4, !tbaa !15
  %47 = getelementptr inbounds i32* %nsize, i64 1
  %48 = load i32* %47, align 4, !tbaa !15
  %49 = getelementptr inbounds i32** %bounds, i64 1
  %50 = or i1 %40, %43
  %51 = zext i1 %50 to i32
  tail call fastcc void @PUGH_GetSliceSizes(i32 %46, i32 %48, i8* %44, i32** %49, i32 %51) #4
  %52 = load i8** @partition_3D.2, align 16, !tbaa !2
  %53 = icmp ne i8* %52, null
  %54 = select i1 %53, i8* %52, i8* %7
  %55 = getelementptr inbounds i32* %nprocs, i64 2
  %56 = load i32* %55, align 4, !tbaa !15
  %57 = getelementptr inbounds i32* %nsize, i64 2
  %58 = load i32* %57, align 4, !tbaa !15
  %59 = getelementptr inbounds i32** %bounds, i64 2
  %.3 = or i1 %40, %53
  %60 = zext i1 %.3 to i32
  tail call fastcc void @PUGH_GetSliceSizes(i32 %56, i32 %58, i8* %54, i32** %59, i32 %60) #4
  br label %.loopexit

; <label>:61                                      ; preds = %0
  %62 = icmp eq i32 %8, 0
  br i1 %62, label %.preheader, label %65

.preheader:                                       ; preds = %61
  %63 = icmp sgt i32 %dim, 0
  br i1 %63, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %64 = add i32 %dim, -1
  br label %67

; <label>:65                                      ; preds = %61
  %66 = tail call i32 @CCTK_Warn(i32 1, i32 222, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0)) #5
  br label %.loopexit

; <label>:67                                      ; preds = %67, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %67 ]
  %68 = getelementptr inbounds i32* %nprocs, i64 %indvars.iv
  %69 = load i32* %68, align 4, !tbaa !15
  %70 = getelementptr inbounds i32* %nsize, i64 %indvars.iv
  %71 = load i32* %70, align 4, !tbaa !15
  %72 = getelementptr inbounds i32** %bounds, i64 %indvars.iv
  tail call fastcc void @PUGH_GetSliceSizes(i32 %69, i32 %71, i8* null, i32** %72, i32 0) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %64
  br i1 %exitcond, label %.loopexit, label %67

.loopexit:                                        ; preds = %67, %.preheader, %16, %65, %34, %9
  %retval.0 = phi i32 [ 0, %9 ], [ 0, %16 ], [ 0, %34 ], [ -1, %65 ], [ 0, %.preheader ], [ 0, %67 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @PUGH_GetSliceSizes(i32 %np, i32 %grid_points, i8* nocapture readonly %slicesS, i32** nocapture %slices, i32 %manual) #1 {
  %tmp = alloca i32, align 4
  %1 = sext i32 %np to i64
  %2 = shl nsw i64 %1, 2
  %3 = tail call i8* @malloc(i64 %2) #5
  %4 = bitcast i32** %slices to i8**
  store i8* %3, i8** %4, align 8, !tbaa !2
  %5 = icmp eq i8* %3, null
  %6 = bitcast i8* %3 to i32*
  br i1 %5, label %7, label %9

; <label>:7                                       ; preds = %0
  %8 = tail call i32 @CCTK_Warn(i32 1, i32 293, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0)) #5
  br label %.loopexit

; <label>:9                                       ; preds = %0
  %10 = icmp eq i32 %manual, 0
  br i1 %10, label %.preheader, label %14

.preheader:                                       ; preds = %14, %9
  %11 = icmp sgt i32 %np, 0
  br i1 %11, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %12 = add i32 %grid_points, -1
  %13 = add i32 %np, -1
  br label %52

; <label>:14                                      ; preds = %9
  %strlenfirst = load i8* %slicesS, align 1
  %15 = icmp eq i8 %strlenfirst, 0
  br i1 %15, label %.preheader, label %.lr.ph15.preheader

.lr.ph15.preheader:                               ; preds = %14
  %16 = icmp sgt i32 %np, 0
  br i1 %16, label %.lr.ph34, label %.lr.ph15._crit_edge

.lr.ph15.loopexit:                                ; preds = %.lr.ph9
  %17 = icmp slt i64 %indvars.iv.next22, %1
  br i1 %17, label %.lr.ph34, label %.lr.ph15._crit_edge

.lr.ph15._crit_edge:                              ; preds = %.lr.ph15.loopexit, %.lr.ph15.preheader
  %18 = call i32 @CCTK_Warn(i32 1, i32 304, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str7, i64 0, i64 0)) #5
  br label %.loopexit

.lr.ph34:                                         ; preds = %.lr.ph15.preheader, %.lr.ph15.loopexit
  %.011233 = phi i8* [ %.28, %.lr.ph15.loopexit ], [ %slicesS, %.lr.ph15.preheader ]
  %rt.01432 = phi i32 [ %31, %.lr.ph15.loopexit ], [ 0, %.lr.ph15.preheader ]
  %indvars.iv2131 = phi i64 [ %indvars.iv.next22, %.lr.ph15.loopexit ], [ 0, %.lr.ph15.preheader ]
  %19 = call i32 (i8*, i8*, ...)* @sscanf(i8* %.011233, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i32* %tmp) #5
  %20 = trunc i64 %indvars.iv2131 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

; <label>:22                                      ; preds = %.lr.ph34
  %23 = load i32** %slices, align 8, !tbaa !2
  %24 = getelementptr inbounds i32* %23, i64 %indvars.iv2131
  store i32 0, i32* %24, align 4, !tbaa !15
  br label %29

; <label>:25                                      ; preds = %.lr.ph34
  %26 = add nsw i32 %rt.01432, -1
  %27 = load i32** %slices, align 8, !tbaa !2
  %28 = getelementptr inbounds i32* %27, i64 %indvars.iv2131
  store i32 %26, i32* %28, align 4, !tbaa !15
  br label %29

; <label>:29                                      ; preds = %25, %22
  %30 = load i32* %tmp, align 4, !tbaa !15
  %31 = add nsw i32 %30, %rt.01432
  br label %32

; <label>:32                                      ; preds = %32, %29
  %.1 = phi i8* [ %.011233, %29 ], [ %35, %32 ]
  %33 = load i8* %.1, align 1, !tbaa !16
  %34 = sext i8 %33 to i32
  %isdigittmp = add nsw i32 %34, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %35 = getelementptr inbounds i8* %.1, i64 1
  br i1 %isdigit, label %32, label %.preheader3

.preheader3:                                      ; preds = %32
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv2131, 1
  %36 = icmp eq i8 %33, 0
  br i1 %36, label %.loopexit24, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader3, %40
  %37 = phi i8 [ %42, %40 ], [ %33, %.preheader3 ]
  %.28 = phi i8* [ %41, %40 ], [ %.1, %.preheader3 ]
  %38 = sext i8 %37 to i32
  %isdigittmp1 = add nsw i32 %38, -48
  %39 = icmp ugt i32 %isdigittmp1, 9
  br i1 %39, label %40, label %.lr.ph15.loopexit

; <label>:40                                      ; preds = %.lr.ph9
  %41 = getelementptr inbounds i8* %.28, i64 1
  %42 = load i8* %41, align 1, !tbaa !16
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %.loopexit24, label %.lr.ph9

.loopexit24:                                      ; preds = %.preheader3, %40
  %44 = trunc i64 %indvars.iv.next22 to i32
  %45 = icmp eq i32 %44, %np
  br i1 %45, label %48, label %46

; <label>:46                                      ; preds = %.loopexit24
  %47 = call i32 @CCTK_Warn(i32 1, i32 331, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8]* @.str9, i64 0, i64 0)) #5
  br label %.loopexit

; <label>:48                                      ; preds = %.loopexit24
  %49 = icmp eq i32 %31, %grid_points
  br i1 %49, label %.loopexit, label %50

; <label>:50                                      ; preds = %48
  %51 = call i32 @CCTK_Warn(i32 1, i32 338, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str10, i64 0, i64 0)) #5
  br label %.loopexit

; <label>:52                                      ; preds = %52, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %52 ]
  %rt.17 = phi i32 [ 0, %.lr.ph ], [ %58, %52 ]
  %53 = getelementptr inbounds i32* %6, i64 %indvars.iv
  store i32 %rt.17, i32* %53, align 4, !tbaa !15
  %54 = sub i32 %12, %rt.17
  %55 = sub nsw i64 %1, %indvars.iv
  %56 = trunc i64 %55 to i32
  %57 = sdiv i32 %54, %56
  store i32 %57, i32* %tmp, align 4, !tbaa !15
  %58 = add nsw i32 %57, %rt.17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %13
  br i1 %exitcond, label %.loopexit, label %52

.loopexit:                                        ; preds = %52, %.preheader, %48, %50, %46, %.lr.ph15._crit_edge, %7
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 16}
!7 = !{!"", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216}
!8 = !{!"int", !4, i64 0}
!9 = !{!7, !3, i64 24}
!10 = !{!7, !3, i64 32}
!11 = !{!7, !3, i64 40}
!12 = !{!7, !3, i64 48}
!13 = !{!7, !3, i64 56}
!14 = !{!7, !3, i64 64}
!15 = !{!8, !8, i64 0}
!16 = !{!4, !4, i64 0}
