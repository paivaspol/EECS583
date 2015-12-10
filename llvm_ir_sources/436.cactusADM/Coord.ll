; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }
%struct.Coordsystem = type { i8*, i32, i8*, %struct.Coordprops* }
%struct.Coordprops = type { i8*, i32, %struct.Coordpropslistcomp*, %struct.Coordpropslistphysi* }
%struct.Coordpropslistcomp = type { %struct.cGH*, double, double, %struct.Coordpropslistcomp* }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.Coordpropslistphysi = type { %struct.cGH*, i32, i32, %struct.Coordpropslistphysi* }

@CoordSystems = internal global %struct.cHandledData* null, align 8
@num_systems = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"CCTK_CoordRegisterSystem: Dimension %d not valid\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"CCTK_CoordRegisterSystem: System '%s' already registered\00", align 1
@.str4 = private unnamed_addr constant [82 x i8] c"CCTK_CoordRegisterSystem: System '%s' already registered with different dimension\00", align 1
@.str5 = private unnamed_addr constant [51 x i8] c"CCTK_CoordRegisterData: System '%s' not registered\00", align 1
@.str6 = private unnamed_addr constant [65 x i8] c"CCTK_CoordRegisterData: Direction %d outside system dimension %d\00", align 1
@.str7 = private unnamed_addr constant [64 x i8] c"CCTK_CoordRegisterData: Coordinate name '%s' already registered\00", align 1
@.str8 = private unnamed_addr constant [67 x i8] c"CCTK_CoordRegisterData: Coordinate direction %d already registered\00", align 1
@.str9 = private unnamed_addr constant [52 x i8] c"CCTK_CoordRegisterData: No grid variable registered\00", align 1
@.str10 = private unnamed_addr constant [52 x i8] c"CCTK_CoordRegisterRange: System '%s' not registered\00", align 1
@.str11 = private unnamed_addr constant [66 x i8] c"CCTK_CoordRegisterRange: Direction %d outside system dimension %d\00", align 1
@.str12 = private unnamed_addr constant [64 x i8] c"CCTK_CoordRegisterRange: Coordinate direction %d not registered\00", align 1
@.str13 = private unnamed_addr constant [59 x i8] c"CCTK_CoordRegisterRange: Coordinate name %s not registered\00", align 1
@.str14 = private unnamed_addr constant [42 x i8] c"CCTK_CoordRange: Range already registered\00", align 1
@.str15 = private unnamed_addr constant [67 x i8] c"CCTK_CoordRegisterRange: Cannot allocate data for coordinate range\00", align 1
@.str16 = private unnamed_addr constant [61 x i8] c"CCTK_CoordRegisterRangePhysIndex: System '%s' not registered\00", align 1
@.str17 = private unnamed_addr constant [75 x i8] c"CCTK_CoordRegisterRangePhysIndex: Direction %d outside system dimension %d\00", align 1
@.str18 = private unnamed_addr constant [73 x i8] c"CCTK_CoordRegisterRangePhysIndex: Coordinate direction %d not registered\00", align 1
@.str19 = private unnamed_addr constant [68 x i8] c"CCTK_CoordRegisterRangePhysIndex: Coordinate name %s not registered\00", align 1
@.str20 = private unnamed_addr constant [59 x i8] c"CCTK_CoordRegisterRangePhysIndex: Range already registered\00", align 1
@.str21 = private unnamed_addr constant [76 x i8] c"CCTK_CoordRegisterRangePhysIndex: Cannot allocate data for coordinate range\00", align 1
@.str22 = private unnamed_addr constant [37 x i8] c"No coordinate system '%s' registered\00", align 1
@.str23 = private unnamed_addr constant [44 x i8] c"CCTK_CoordIndex: System '%s' not registered\00", align 1
@.str24 = private unnamed_addr constant [51 x i8] c"CCTK_CoordIndex: Direction %d outside dimension %d\00", align 1
@.str25 = private unnamed_addr constant [48 x i8] c"CCTK_CoordIndex: Coordinate name '%s' not found\00", align 1
@.str26 = private unnamed_addr constant [48 x i8] c"CCTK_CoordSystemDim: System '%s' not registered\00", align 1
@.str27 = private unnamed_addr constant [42 x i8] c"CCTK_CoordDir: System '%s' not registered\00", align 1
@.str28 = private unnamed_addr constant [54 x i8] c"CCTK_CoordDir: Could not find coordinate '%s' in '%s'\00", align 1
@.str29 = private unnamed_addr constant [56 x i8] c"CCTK_CoordRange: NULL pointer(s) passed for lower/upper\00", align 1
@.str30 = private unnamed_addr constant [42 x i8] c"CCTK_CoordRange: No coordinate name given\00", align 1
@.str31 = private unnamed_addr constant [49 x i8] c"CCTK_CoordRange: No coordinate system name given\00", align 1
@.str32 = private unnamed_addr constant [44 x i8] c"CCTK_CoordRange: System '%s' not registered\00", align 1
@.str33 = private unnamed_addr constant [53 x i8] c"CCTK_CoordRange: Coordinate name '%s' not registered\00", align 1
@.str34 = private unnamed_addr constant [65 x i8] c"CCTK_CoordRangePhysIndex: NULL pointer(s) passed for lower/upper\00", align 1
@.str35 = private unnamed_addr constant [51 x i8] c"CCTK_CoordRangePhysIndex: No coordinate name given\00", align 1
@.str36 = private unnamed_addr constant [58 x i8] c"CCTK_CoordRangePhysIndex: No coordinate system name given\00", align 1
@.str37 = private unnamed_addr constant [53 x i8] c"CCTK_CoordRangePhysIndex: System '%s' not registered\00", align 1
@.str38 = private unnamed_addr constant [62 x i8] c"CCTK_CoordRangePhysIndex: Coordinate name '%s' not registered\00", align 1
@.str39 = private unnamed_addr constant [90 x i8] c"CCTK_CoordRangePhysIndex: no physical range registered for coordinate '%s' in system '%s'\00", align 1
@.str40 = private unnamed_addr constant [31 x i8] c"Error finding coordinate range\00", align 1
@.str41 = private unnamed_addr constant [43 x i8] c"CCTK_CoordName: System '%s' not registered\00", align 1
@.str42 = private unnamed_addr constant [80 x i8] c"$Header: /cactus/Cactus/src/main/Coord.c,v 1.44 2001/12/29 11:18:10 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_Coord_c() #0 {
  ret i8* getelementptr inbounds ([80 x i8]* @.str42, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_CoordRegisterSystem(i32 %dim, i8* %thorn, i8* %systemname) #1 {
  %new_system = alloca %struct.Coordsystem*, align 8
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !tbaa !2
  %2 = bitcast %struct.Coordsystem** %new_system to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** %2) #5
  %4 = load %struct.Coordsystem** %new_system, align 8, !tbaa !2
  %5 = icmp eq %struct.Coordsystem* %4, null
  br i1 %5, label %6, label %31

; <label>:6                                       ; preds = %0
  %7 = call i8* @malloc(i64 32) #5
  store i8* %7, i8** %2, align 8, !tbaa !2
  %8 = icmp eq i8* %7, null
  br i1 %8, label %39, label %9

; <label>:9                                       ; preds = %6
  %10 = icmp sgt i32 %dim, 0
  br i1 %10, label %11, label %29

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds i8* %7, i64 8
  %13 = bitcast i8* %12 to i32*
  store i32 %dim, i32* %13, align 4, !tbaa !6
  %14 = call i8* @CCTK_ThornImplementation(i8* %thorn) #5
  %15 = load %struct.Coordsystem** %new_system, align 8, !tbaa !2
  %16 = getelementptr inbounds %struct.Coordsystem* %15, i64 0, i32 0
  store i8* %14, i8** %16, align 8, !tbaa !9
  %17 = call i8* @strdup(i8* %systemname) #5
  %18 = load %struct.Coordsystem** %new_system, align 8, !tbaa !2
  %19 = getelementptr inbounds %struct.Coordsystem* %18, i64 0, i32 2
  store i8* %17, i8** %19, align 8, !tbaa !10
  %20 = sext i32 %dim to i64
  %21 = call i8* @calloc(i64 %20, i64 32) #5
  %22 = load %struct.Coordsystem** %new_system, align 8, !tbaa !2
  %23 = getelementptr inbounds %struct.Coordsystem* %22, i64 0, i32 3
  %24 = bitcast %struct.Coordprops** %23 to i8**
  store i8* %21, i8** %24, align 8, !tbaa !11
  %25 = load i8** %2, align 8, !tbaa !2
  %26 = call i32 @Util_NewHandle(%struct.cHandledData** @CoordSystems, i8* %systemname, i8* %25) #5
  %27 = load i32* @num_systems, align 4, !tbaa !12
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @num_systems, align 4, !tbaa !12
  br label %39

; <label>:29                                      ; preds = %9
  %30 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 192, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i32 %dim) #5
  br label %39

; <label>:31                                      ; preds = %0
  %32 = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1
  %33 = load i32* %32, align 4, !tbaa !6
  %34 = icmp eq i32 %33, %dim
  br i1 %34, label %35, label %37

; <label>:35                                      ; preds = %31
  %36 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 203, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), i8* %systemname) #5
  br label %39

; <label>:37                                      ; preds = %31
  %38 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 210, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([82 x i8]* @.str4, i64 0, i64 0), i8* %systemname) #5
  br label %39

; <label>:39                                      ; preds = %6, %35, %37, %29, %11
  %retval.0 = phi i32 [ 0, %35 ], [ -1, %37 ], [ %26, %11 ], [ -2, %29 ], [ -1, %6 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i8* @CCTK_ThornImplementation(i8*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #3

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctki_coordregistersystem_(i32* nocapture %ierr, i32* nocapture readonly %dim, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5
  %3 = load i32* %dim, align 4, !tbaa !12
  %4 = tail call i32 @CCTKi_CoordRegisterSystem(i32 %3, i8* %1, i8* %2) #6
  store i32 %4, i32* %ierr, align 4, !tbaa !12
  tail call void @free(i8* %2) #6
  tail call void @free(i8* %1) #6
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordRegisterData(i32 %dir, i8* %gfname, i8* %coordname, i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !tbaa !2
  %2 = bitcast %struct.Coordsystem** %coord_system to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** %2) #5
  %4 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  %5 = icmp eq %struct.Coordsystem* %4, null
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 265, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str5, i64 0, i64 0), i8* %systemname) #5
  br label %54

; <label>:8                                       ; preds = %0
  %9 = icmp slt i32 %dir, 1
  %.phi.trans.insert = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1
  %.pre = load i32* %.phi.trans.insert, align 4, !tbaa !6
  %10 = icmp slt i32 %.pre, %dir
  %or.cond = or i1 %9, %10
  br i1 %or.cond, label %._crit_edge7, label %.preheader

.preheader:                                       ; preds = %8
  %11 = icmp sgt i32 %.pre, 0
  br i1 %11, label %.lr.ph, label %._crit_edge

._crit_edge7:                                     ; preds = %8
  %12 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 274, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str6, i64 0, i64 0), i32 %dir, i32 %.pre) #5
  br label %54

.lr.ph:                                           ; preds = %.preheader, %24
  %indvars.iv = phi i64 [ %indvars.iv.next, %24 ], [ 0, %.preheader ]
  %13 = phi %struct.Coordsystem* [ %25, %24 ], [ %4, %.preheader ]
  %dup.03 = phi i32 [ %dup.1, %24 ], [ 0, %.preheader ]
  %retval.02 = phi i32 [ %retval.1, %24 ], [ 0, %.preheader ]
  %14 = getelementptr inbounds %struct.Coordsystem* %13, i64 0, i32 3
  %15 = load %struct.Coordprops** %14, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.Coordprops* %15, i64 %indvars.iv, i32 0
  %17 = load i8** %16, align 8, !tbaa !13
  %18 = icmp eq i8* %17, null
  br i1 %18, label %24, label %19

; <label>:19                                      ; preds = %.lr.ph
  %20 = call i32 @CCTK_Equals(i8* %17, i8* %coordname) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

; <label>:22                                      ; preds = %19
  %23 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 289, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str7, i64 0, i64 0), i8* %coordname) #5
  br label %24

; <label>:24                                      ; preds = %19, %.lr.ph, %22
  %retval.1 = phi i32 [ -3, %22 ], [ %retval.02, %19 ], [ %retval.02, %.lr.ph ]
  %dup.1 = phi i32 [ 1, %22 ], [ %dup.03, %19 ], [ %dup.03, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %25 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  %26 = getelementptr inbounds %struct.Coordsystem* %25, i64 0, i32 1
  %27 = load i32* %26, align 4, !tbaa !6
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %indvars.iv.next, %28
  br i1 %29, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %24, %.preheader
  %.lcssa = phi %struct.Coordsystem* [ %4, %.preheader ], [ %25, %24 ]
  %dup.0.lcssa = phi i32 [ 0, %.preheader ], [ %dup.1, %24 ]
  %retval.0.lcssa = phi i32 [ 0, %.preheader ], [ %retval.1, %24 ]
  %30 = add nsw i32 %dir, -1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.Coordsystem* %.lcssa, i64 0, i32 3
  %33 = load %struct.Coordprops** %32, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.Coordprops* %33, i64 %31, i32 0
  %35 = load i8** %34, align 8, !tbaa !13
  %36 = icmp eq i8* %35, null
  br i1 %36, label %38, label %.thread

.thread:                                          ; preds = %._crit_edge
  %37 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 299, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str8, i64 0, i64 0), i32 %dir) #5
  br label %54

; <label>:38                                      ; preds = %._crit_edge
  %39 = icmp eq i32 %dup.0.lcssa, 0
  br i1 %39, label %40, label %54

; <label>:40                                      ; preds = %38
  %41 = call i8* @strdup(i8* %coordname) #5
  %42 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  %43 = getelementptr inbounds %struct.Coordsystem* %42, i64 0, i32 3
  %44 = load %struct.Coordprops** %43, align 8, !tbaa !11
  %45 = getelementptr inbounds %struct.Coordprops* %44, i64 %31, i32 0
  store i8* %41, i8** %45, align 8, !tbaa !13
  %46 = call i32 @CCTK_VarIndex(i8* %gfname) #5
  %47 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  %48 = getelementptr inbounds %struct.Coordsystem* %47, i64 0, i32 3
  %49 = load %struct.Coordprops** %48, align 8, !tbaa !11
  %50 = getelementptr inbounds %struct.Coordprops* %49, i64 %31, i32 1
  store i32 %46, i32* %50, align 4, !tbaa !15
  %51 = icmp slt i32 %46, 0
  br i1 %51, label %52, label %54

; <label>:52                                      ; preds = %40
  %53 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 314, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str9, i64 0, i64 0)) #5
  br label %54

; <label>:54                                      ; preds = %.thread, %._crit_edge7, %40, %52, %38, %6
  %retval.3 = phi i32 [ -2, %._crit_edge7 ], [ %retval.0.lcssa, %52 ], [ %retval.0.lcssa, %40 ], [ %retval.0.lcssa, %38 ], [ -1, %6 ], [ -4, %.thread ]
  ret i32 %retval.3
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordregisterdata_(i32* nocapture %handle, i32* nocapture readonly %dir, i8* %cctk_str1, i8* %cctk_str2, i8* %cctk_str3, i32 %cctk_strlen1, i32 %cctk_strlen2, i32 %cctk_strlen3) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5
  %3 = tail call i8* @Util_NullTerminateString(i8* %cctk_str3, i32 %cctk_strlen3) #5
  %4 = load i32* %dir, align 4, !tbaa !12
  %5 = tail call i32 @CCTK_CoordRegisterData(i32 %4, i8* %1, i8* %2, i8* %3) #6
  store i32 %5, i32* %handle, align 4, !tbaa !12
  tail call void @free(i8* %1) #6
  tail call void @free(i8* %2) #6
  tail call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordRegisterRange(%struct.cGH* %GH, double %min, double %max, i32 %dir, i8* %coordname, i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !tbaa !2
  %2 = bitcast %struct.Coordsystem** %coord_system to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** %2) #5
  %4 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  %5 = icmp eq %struct.Coordsystem* %4, null
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 408, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str10, i64 0, i64 0), i8* %systemname) #5
  br label %.thread

; <label>:8                                       ; preds = %0
  %9 = icmp sgt i32 %dir, -1
  br i1 %9, label %13, label %.preheader

.preheader:                                       ; preds = %8
  %10 = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1
  %11 = load i32* %10, align 4, !tbaa !6
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %.lr.ph, label %._crit_edge.thread

; <label>:13                                      ; preds = %8
  %14 = icmp eq i32 %dir, 0
  %.phi.trans.insert = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1
  %.pre7 = load i32* %.phi.trans.insert, align 4, !tbaa !6
  %15 = icmp slt i32 %.pre7, %dir
  %or.cond = or i1 %14, %15
  br i1 %or.cond, label %._crit_edge6, label %17

._crit_edge6:                                     ; preds = %13
  %16 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 419, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i32 %dir, i32 %.pre7) #5
  %.pre8 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  br label %17

; <label>:17                                      ; preds = %13, %._crit_edge6
  %18 = phi %struct.Coordsystem* [ %.pre8, %._crit_edge6 ], [ %4, %13 ]
  %retval.0 = phi i32 [ -2, %._crit_edge6 ], [ 0, %13 ]
  %19 = add nsw i32 %dir, -1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.Coordsystem* %18, i64 0, i32 3
  %22 = load %struct.Coordprops** %21, align 8, !tbaa !11
  %23 = getelementptr inbounds %struct.Coordprops* %22, i64 %20, i32 0
  %24 = load i8** %23, align 8, !tbaa !13
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %46

; <label>:26                                      ; preds = %17
  %27 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 430, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str12, i64 0, i64 0), i32 %dir) #5
  br label %.thread

.lr.ph:                                           ; preds = %.preheader, %38
  %indvars.iv = phi i64 [ %indvars.iv.next, %38 ], [ 0, %.preheader ]
  %28 = phi %struct.Coordsystem* [ %39, %38 ], [ %4, %.preheader ]
  %vindex.04 = phi i32 [ %vindex.1, %38 ], [ -1, %.preheader ]
  %29 = getelementptr inbounds %struct.Coordsystem* %28, i64 0, i32 3
  %30 = load %struct.Coordprops** %29, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.Coordprops* %30, i64 %indvars.iv, i32 0
  %32 = load i8** %31, align 8, !tbaa !13
  %33 = icmp eq i8* %32, null
  br i1 %33, label %38, label %34

; <label>:34                                      ; preds = %.lr.ph
  %35 = call i32 @CCTK_Equals(i8* %32, i8* %coordname) #5
  %36 = icmp eq i32 %35, 0
  %37 = trunc i64 %indvars.iv to i32
  %vindex.0.i.0 = select i1 %36, i32 %vindex.04, i32 %37
  %.pre = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  br label %38

; <label>:38                                      ; preds = %34, %.lr.ph
  %39 = phi %struct.Coordsystem* [ %28, %.lr.ph ], [ %.pre, %34 ]
  %vindex.1 = phi i32 [ %vindex.04, %.lr.ph ], [ %vindex.0.i.0, %34 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %40 = getelementptr inbounds %struct.Coordsystem* %39, i64 0, i32 1
  %41 = load i32* %40, align 4, !tbaa !6
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %indvars.iv.next, %42
  br i1 %43, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %38
  %44 = icmp eq i32 %vindex.1, -1
  br i1 %44, label %._crit_edge.thread, label %..thread1_crit_edge

..thread1_crit_edge:                              ; preds = %._crit_edge
  %.phi.trans.insert9 = getelementptr inbounds %struct.Coordsystem* %39, i64 0, i32 3
  %.pre10 = load %struct.Coordprops** %.phi.trans.insert9, align 8, !tbaa !11
  br label %.thread1

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %45 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 448, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str13, i64 0, i64 0), i8* %coordname) #5
  br label %.thread

; <label>:46                                      ; preds = %17
  br i1 %14, label %.thread, label %.thread1

.thread1:                                         ; preds = %..thread1_crit_edge, %46
  %47 = phi %struct.Coordprops* [ %22, %46 ], [ %.pre10, %..thread1_crit_edge ]
  %48 = phi %struct.Coordsystem* [ %18, %46 ], [ %39, %..thread1_crit_edge ]
  %vindex.23 = phi i32 [ %19, %46 ], [ %vindex.1, %..thread1_crit_edge ]
  %retval.12 = phi i32 [ %retval.0, %46 ], [ 0, %..thread1_crit_edge ]
  %49 = sext i32 %vindex.23 to i64
  %50 = getelementptr inbounds %struct.Coordsystem* %48, i64 0, i32 3
  %51 = getelementptr inbounds %struct.Coordprops* %47, i64 %49, i32 2
  %52 = load %struct.Coordpropslistcomp** %51, align 8, !tbaa !16
  %53 = icmp eq %struct.Coordpropslistcomp* %52, null
  br i1 %53, label %63, label %54

; <label>:54                                      ; preds = %.thread1
  %55 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 3, i32 461, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str14, i64 0, i64 0), i8* %systemname) #5
  %56 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  %57 = getelementptr inbounds %struct.Coordsystem* %56, i64 0, i32 3
  %58 = load %struct.Coordprops** %57, align 8, !tbaa !11
  %59 = getelementptr inbounds %struct.Coordprops* %58, i64 %49, i32 2
  %60 = load %struct.Coordpropslistcomp** %59, align 8, !tbaa !16
  %61 = getelementptr inbounds %struct.Coordpropslistcomp* %60, i64 0, i32 1
  store double %min, double* %61, align 8, !tbaa !17
  %62 = getelementptr inbounds %struct.Coordpropslistcomp* %60, i64 0, i32 2
  store double %max, double* %62, align 8, !tbaa !20
  br label %.thread

; <label>:63                                      ; preds = %.thread1
  %64 = call i8* @malloc(i64 32) #5
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %68

; <label>:66                                      ; preds = %63
  %67 = call i32 @CCTK_Warn(i32 1, i32 474, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str15, i64 0, i64 0)) #5
  br label %.thread

; <label>:68                                      ; preds = %63
  %69 = bitcast i8* %64 to %struct.cGH**
  store %struct.cGH* %GH, %struct.cGH** %69, align 8, !tbaa !21
  %70 = getelementptr inbounds i8* %64, i64 8
  %71 = bitcast i8* %70 to double*
  store double %min, double* %71, align 8, !tbaa !17
  %72 = getelementptr inbounds i8* %64, i64 16
  %73 = bitcast i8* %72 to double*
  store double %max, double* %73, align 8, !tbaa !20
  %74 = load %struct.Coordprops** %50, align 8, !tbaa !11
  %75 = getelementptr inbounds %struct.Coordprops* %74, i64 %49, i32 2
  %76 = bitcast %struct.Coordpropslistcomp** %75 to i64*
  %77 = load i64* %76, align 8, !tbaa !16
  %78 = getelementptr inbounds i8* %64, i64 24
  %79 = bitcast i8* %78 to i64*
  store i64 %77, i64* %79, align 8, !tbaa !22
  %80 = bitcast %struct.Coordpropslistcomp** %75 to i8**
  store i8* %64, i8** %80, align 8, !tbaa !16
  br label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %26, %46, %66, %68, %54, %6
  %retval.2 = phi i32 [ %retval.12, %54 ], [ %retval.12, %68 ], [ -5, %66 ], [ %retval.0, %46 ], [ -1, %6 ], [ -3, %._crit_edge.thread ], [ -4, %26 ]
  ret i32 %retval.2
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordregisterrange_(i32* nocapture %ierr, %struct.cGH* %GH, double* nocapture readonly %lower, double* nocapture readonly %upper, i32* nocapture readonly %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5
  %3 = load double* %lower, align 8, !tbaa !23
  %4 = load double* %upper, align 8, !tbaa !23
  %5 = load i32* %dir, align 4, !tbaa !12
  %6 = tail call i32 @CCTK_CoordRegisterRange(%struct.cGH* %GH, double %3, double %4, i32 %5, i8* %1, i8* %2) #6
  store i32 %6, i32* %ierr, align 4, !tbaa !12
  tail call void @free(i8* %1) #6
  tail call void @free(i8* %2) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordRegisterRangePhysIndex(%struct.cGH* %GH, i32 %min, i32 %max, i32 %dir, i8* %coordname, i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !tbaa !2
  %2 = bitcast %struct.Coordsystem** %coord_system to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** %2) #5
  %4 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  %5 = icmp eq %struct.Coordsystem* %4, null
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 579, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str16, i64 0, i64 0), i8* %systemname) #5
  br label %.thread

; <label>:8                                       ; preds = %0
  %9 = icmp sgt i32 %dir, -1
  br i1 %9, label %13, label %.preheader

.preheader:                                       ; preds = %8
  %10 = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1
  %11 = load i32* %10, align 4, !tbaa !6
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %.lr.ph, label %._crit_edge.thread

; <label>:13                                      ; preds = %8
  %14 = icmp eq i32 %dir, 0
  %.phi.trans.insert = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1
  %.pre7 = load i32* %.phi.trans.insert, align 4, !tbaa !6
  %15 = icmp slt i32 %.pre7, %dir
  %or.cond = or i1 %14, %15
  br i1 %or.cond, label %._crit_edge6, label %17

._crit_edge6:                                     ; preds = %13
  %16 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 590, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8]* @.str17, i64 0, i64 0), i32 %dir, i32 %.pre7) #5
  %.pre8 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  br label %17

; <label>:17                                      ; preds = %13, %._crit_edge6
  %18 = phi %struct.Coordsystem* [ %.pre8, %._crit_edge6 ], [ %4, %13 ]
  %retval.0 = phi i32 [ -2, %._crit_edge6 ], [ 0, %13 ]
  %19 = add nsw i32 %dir, -1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.Coordsystem* %18, i64 0, i32 3
  %22 = load %struct.Coordprops** %21, align 8, !tbaa !11
  %23 = getelementptr inbounds %struct.Coordprops* %22, i64 %20, i32 0
  %24 = load i8** %23, align 8, !tbaa !13
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %46

; <label>:26                                      ; preds = %17
  %27 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 601, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8]* @.str18, i64 0, i64 0), i32 %dir) #5
  br label %.thread

.lr.ph:                                           ; preds = %.preheader, %38
  %indvars.iv = phi i64 [ %indvars.iv.next, %38 ], [ 0, %.preheader ]
  %28 = phi %struct.Coordsystem* [ %39, %38 ], [ %4, %.preheader ]
  %vindex.04 = phi i32 [ %vindex.1, %38 ], [ -1, %.preheader ]
  %29 = getelementptr inbounds %struct.Coordsystem* %28, i64 0, i32 3
  %30 = load %struct.Coordprops** %29, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.Coordprops* %30, i64 %indvars.iv, i32 0
  %32 = load i8** %31, align 8, !tbaa !13
  %33 = icmp eq i8* %32, null
  br i1 %33, label %38, label %34

; <label>:34                                      ; preds = %.lr.ph
  %35 = call i32 @CCTK_Equals(i8* %32, i8* %coordname) #5
  %36 = icmp eq i32 %35, 0
  %37 = trunc i64 %indvars.iv to i32
  %vindex.0.i.0 = select i1 %36, i32 %vindex.04, i32 %37
  %.pre = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  br label %38

; <label>:38                                      ; preds = %34, %.lr.ph
  %39 = phi %struct.Coordsystem* [ %28, %.lr.ph ], [ %.pre, %34 ]
  %vindex.1 = phi i32 [ %vindex.04, %.lr.ph ], [ %vindex.0.i.0, %34 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %40 = getelementptr inbounds %struct.Coordsystem* %39, i64 0, i32 1
  %41 = load i32* %40, align 4, !tbaa !6
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %indvars.iv.next, %42
  br i1 %43, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %38
  %44 = icmp eq i32 %vindex.1, -1
  br i1 %44, label %._crit_edge.thread, label %..thread1_crit_edge

..thread1_crit_edge:                              ; preds = %._crit_edge
  %.phi.trans.insert9 = getelementptr inbounds %struct.Coordsystem* %39, i64 0, i32 3
  %.pre10 = load %struct.Coordprops** %.phi.trans.insert9, align 8, !tbaa !11
  br label %.thread1

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %45 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 620, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str19, i64 0, i64 0), i8* %coordname) #5
  br label %.thread

; <label>:46                                      ; preds = %17
  br i1 %14, label %.thread, label %.thread1

.thread1:                                         ; preds = %..thread1_crit_edge, %46
  %47 = phi %struct.Coordprops* [ %22, %46 ], [ %.pre10, %..thread1_crit_edge ]
  %48 = phi %struct.Coordsystem* [ %18, %46 ], [ %39, %..thread1_crit_edge ]
  %vindex.23 = phi i32 [ %19, %46 ], [ %vindex.1, %..thread1_crit_edge ]
  %retval.12 = phi i32 [ %retval.0, %46 ], [ 0, %..thread1_crit_edge ]
  %49 = sext i32 %vindex.23 to i64
  %50 = getelementptr inbounds %struct.Coordsystem* %48, i64 0, i32 3
  %51 = getelementptr inbounds %struct.Coordprops* %47, i64 %49, i32 3
  %52 = load %struct.Coordpropslistphysi** %51, align 8, !tbaa !24
  %53 = icmp eq %struct.Coordpropslistphysi* %52, null
  br i1 %53, label %63, label %54

; <label>:54                                      ; preds = %.thread1
  %55 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 3, i32 633, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str20, i64 0, i64 0), i8* %systemname) #5
  %56 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  %57 = getelementptr inbounds %struct.Coordsystem* %56, i64 0, i32 3
  %58 = load %struct.Coordprops** %57, align 8, !tbaa !11
  %59 = getelementptr inbounds %struct.Coordprops* %58, i64 %49, i32 3
  %60 = load %struct.Coordpropslistphysi** %59, align 8, !tbaa !24
  %61 = getelementptr inbounds %struct.Coordpropslistphysi* %60, i64 0, i32 1
  store i32 %min, i32* %61, align 4, !tbaa !25
  %62 = getelementptr inbounds %struct.Coordpropslistphysi* %60, i64 0, i32 2
  store i32 %max, i32* %62, align 4, !tbaa !27
  br label %.thread

; <label>:63                                      ; preds = %.thread1
  %64 = call i8* @malloc(i64 24) #5
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %68

; <label>:66                                      ; preds = %63
  %67 = call i32 @CCTK_Warn(i32 1, i32 647, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8]* @.str21, i64 0, i64 0)) #5
  br label %.thread

; <label>:68                                      ; preds = %63
  %69 = bitcast i8* %64 to %struct.cGH**
  store %struct.cGH* %GH, %struct.cGH** %69, align 8, !tbaa !28
  %70 = getelementptr inbounds i8* %64, i64 8
  %71 = bitcast i8* %70 to i32*
  store i32 %min, i32* %71, align 4, !tbaa !25
  %72 = getelementptr inbounds i8* %64, i64 12
  %73 = bitcast i8* %72 to i32*
  store i32 %max, i32* %73, align 4, !tbaa !27
  %74 = load %struct.Coordprops** %50, align 8, !tbaa !11
  %75 = getelementptr inbounds %struct.Coordprops* %74, i64 %49, i32 3
  %76 = bitcast %struct.Coordpropslistphysi** %75 to i64*
  %77 = load i64* %76, align 8, !tbaa !24
  %78 = getelementptr inbounds i8* %64, i64 16
  %79 = bitcast i8* %78 to i64*
  store i64 %77, i64* %79, align 8, !tbaa !29
  %80 = bitcast %struct.Coordpropslistphysi** %75 to i8**
  store i8* %64, i8** %80, align 8, !tbaa !24
  br label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %26, %46, %66, %68, %54, %6
  %retval.2 = phi i32 [ %retval.12, %54 ], [ %retval.12, %68 ], [ -5, %66 ], [ %retval.0, %46 ], [ -1, %6 ], [ -3, %._crit_edge.thread ], [ -4, %26 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordregisterrangephysindex_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %lower, i32* nocapture readonly %upper, i32* nocapture readonly %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5
  %3 = load i32* %lower, align 4, !tbaa !12
  %4 = load i32* %upper, align 4, !tbaa !12
  %5 = load i32* %dir, align 4, !tbaa !12
  %6 = tail call i32 @CCTK_CoordRegisterRangePhysIndex(%struct.cGH* %GH, i32 %3, i32 %4, i32 %5, i8* %1, i8* %2) #6
  store i32 %6, i32* %ierr, align 4, !tbaa !12
  tail call void @free(i8* %1) #6
  tail call void @free(i8* %2) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordSystemHandle(i8* %systemname) #1 {
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !tbaa !2
  %2 = tail call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** null) #5
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 3, i32 712, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str22, i64 0, i64 0), i8* %systemname) #5
  br label %6

; <label>:6                                       ; preds = %4, %0
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_CoordSystemName(i32 %handle) #1 {
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #5
  %3 = icmp eq i8* %2, null
  br i1 %3, label %8, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %2, i64 16
  %6 = bitcast i8* %5 to i8**
  %7 = load i8** %6, align 8, !tbaa !10
  br label %8

; <label>:8                                       ; preds = %0, %4
  %systemname.0 = phi i8* [ %7, %4 ], [ null, %0 ]
  ret i8* %systemname.0
}

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordsystemhandle_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i32 @CCTK_CoordSystemHandle(i8* %1) #6
  store i32 %2, i32* %ierr, align 4, !tbaa !12
  tail call void @free(i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordIndex(i32 %dir, i8* %name, i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !tbaa !2
  %2 = bitcast %struct.Coordsystem** %coord_system to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** %2) #5
  %4 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  %5 = icmp eq %struct.Coordsystem* %4, null
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 829, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str23, i64 0, i64 0), i8* %systemname) #5
  br label %45

; <label>:8                                       ; preds = %0
  %9 = icmp sgt i32 %dir, 0
  %10 = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1
  %11 = load i32* %10, align 4, !tbaa !6
  br i1 %9, label %13, label %.preheader

.preheader:                                       ; preds = %8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %.lr.ph, label %._crit_edge.thread

; <label>:13                                      ; preds = %8
  %14 = icmp slt i32 %11, %dir
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %13
  %16 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 839, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str24, i64 0, i64 0), i32 %dir, i32 %11) #5
  br label %45

; <label>:17                                      ; preds = %13
  %18 = add nsw i32 %dir, -1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 3
  %21 = load %struct.Coordprops** %20, align 8, !tbaa !11
  %22 = getelementptr inbounds %struct.Coordprops* %21, i64 %19, i32 1
  %23 = load i32* %22, align 4, !tbaa !15
  br label %45

.lr.ph:                                           ; preds = %.preheader, %._crit_edge5
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge5 ], [ 0, %.preheader ]
  %24 = phi %struct.Coordsystem* [ %38, %._crit_edge5 ], [ %4, %.preheader ]
  %foundit.03 = phi i32 [ %foundit.1, %._crit_edge5 ], [ 0, %.preheader ]
  %vindex.02 = phi i32 [ %vindex.1, %._crit_edge5 ], [ -1, %.preheader ]
  %25 = getelementptr inbounds %struct.Coordsystem* %24, i64 0, i32 3
  %26 = load %struct.Coordprops** %25, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.Coordprops* %26, i64 %indvars.iv, i32 0
  %28 = load i8** %27, align 8, !tbaa !13
  %29 = icmp eq i8* %28, null
  br i1 %29, label %._crit_edge5, label %30

; <label>:30                                      ; preds = %.lr.ph
  %31 = call i32 @CCTK_Equals(i8* %28, i8* %name) #5
  %32 = icmp eq i32 %31, 0
  %.pre = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  br i1 %32, label %._crit_edge5, label %33

; <label>:33                                      ; preds = %30
  %34 = getelementptr inbounds %struct.Coordsystem* %.pre, i64 0, i32 3
  %35 = load %struct.Coordprops** %34, align 8, !tbaa !11
  %36 = getelementptr inbounds %struct.Coordprops* %35, i64 %indvars.iv, i32 1
  %37 = load i32* %36, align 4, !tbaa !15
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %30, %.lr.ph, %33
  %38 = phi %struct.Coordsystem* [ %.pre, %33 ], [ %24, %.lr.ph ], [ %.pre, %30 ]
  %vindex.1 = phi i32 [ %37, %33 ], [ %vindex.02, %.lr.ph ], [ %vindex.02, %30 ]
  %foundit.1 = phi i32 [ 1, %33 ], [ %foundit.03, %.lr.ph ], [ %foundit.03, %30 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %39 = getelementptr inbounds %struct.Coordsystem* %38, i64 0, i32 1
  %40 = load i32* %39, align 4, !tbaa !6
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %indvars.iv.next, %41
  br i1 %42, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge5
  %43 = icmp eq i32 %foundit.1, 0
  br i1 %43, label %._crit_edge.thread, label %45

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %44 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 862, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str25, i64 0, i64 0), i8* %name) #5
  br label %45

; <label>:45                                      ; preds = %17, %15, %._crit_edge.thread, %._crit_edge, %6
  %vindex.2 = phi i32 [ -3, %15 ], [ %23, %17 ], [ -2, %._crit_edge.thread ], [ %vindex.1, %._crit_edge ], [ -1, %6 ]
  ret i32 %vindex.2
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordindex_(i32* nocapture %vindex, i32* nocapture readonly %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5
  %3 = load i32* %dir, align 4, !tbaa !12
  %4 = tail call i32 @CCTK_CoordIndex(i32 %3, i8* %1, i8* %2) #6
  store i32 %4, i32* %vindex, align 4, !tbaa !12
  tail call void @free(i8* %1) #6
  tail call void @free(i8* %2) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordSystemDim(i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !tbaa !2
  %2 = bitcast %struct.Coordsystem** %coord_system to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** %2) #5
  %4 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  %5 = icmp eq %struct.Coordsystem* %4, null
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 893, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str26, i64 0, i64 0), i8* %systemname) #5
  br label %11

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1
  %10 = load i32* %9, align 4, !tbaa !6
  br label %11

; <label>:11                                      ; preds = %8, %6
  %dim.0 = phi i32 [ %10, %8 ], [ -1, %6 ]
  ret i32 %dim.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordsystemdim_(i32* nocapture %dim, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i32 @CCTK_CoordSystemDim(i8* %1) #6
  store i32 %2, i32* %dim, align 4, !tbaa !12
  tail call void @free(i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordDir(i8* %name, i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !tbaa !2
  %2 = bitcast %struct.Coordsystem** %coord_system to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** %2) #5
  %4 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  %5 = icmp eq %struct.Coordsystem* %4, null
  br i1 %5, label %9, label %.preheader

.preheader:                                       ; preds = %0
  %6 = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1
  %7 = load i32* %6, align 4, !tbaa !6
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph, label %._crit_edge.thread

; <label>:9                                       ; preds = %0
  %10 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 944, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str27, i64 0, i64 0), i8* %systemname) #5
  br label %26

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %11 = phi %struct.Coordsystem* [ %19, %.lr.ph ], [ %4, %.preheader ]
  %dir.02 = phi i32 [ %dir.0., %.lr.ph ], [ -1, %.preheader ]
  %12 = getelementptr inbounds %struct.Coordsystem* %11, i64 0, i32 3
  %13 = load %struct.Coordprops** %12, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.Coordprops* %13, i64 %indvars.iv, i32 0
  %15 = load i8** %14, align 8, !tbaa !13
  %16 = call i32 @CCTK_Equals(i8* %15, i8* %name) #5
  %17 = icmp eq i32 %16, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %18 = trunc i64 %indvars.iv.next to i32
  %dir.0. = select i1 %17, i32 %dir.02, i32 %18
  %19 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  %20 = getelementptr inbounds %struct.Coordsystem* %19, i64 0, i32 1
  %21 = load i32* %20, align 4, !tbaa !6
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %indvars.iv.next, %22
  br i1 %23, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph
  %24 = icmp slt i32 %dir.0., 1
  br i1 %24, label %._crit_edge.thread, label %26

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %25 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 958, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str28, i64 0, i64 0), i8* %name, i8* %systemname) #5
  br label %26

; <label>:26                                      ; preds = %._crit_edge, %._crit_edge.thread, %9
  %dir.2 = phi i32 [ -2, %._crit_edge.thread ], [ %dir.0., %._crit_edge ], [ -1, %9 ]
  ret i32 %dir.2
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coorddir_(i32* nocapture %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5
  %3 = tail call i32 @CCTK_CoordDir(i8* %1, i8* %2) #6
  store i32 %3, i32* %dir, align 4, !tbaa !12
  tail call void @free(i8* %1) #6
  tail call void @free(i8* %2) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordRange(%struct.cGH* readnone %GH, double* %lower, double* %upper, i32 %coorddir, i8* %coordname, i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  %1 = icmp eq double* %lower, null
  %2 = icmp eq double* %upper, null
  %or.cond = or i1 %1, %2
  br i1 %or.cond, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_Warn(i32 2, i32 1050, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str29, i64 0, i64 0)) #5
  br label %72

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %coorddir, 1
  %7 = icmp eq i8* %coordname, null
  %or.cond3 = and i1 %6, %7
  br i1 %or.cond3, label %8, label %10

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CCTK_Warn(i32 2, i32 1056, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str30, i64 0, i64 0)) #5
  br label %72

; <label>:10                                      ; preds = %5
  %11 = icmp eq i8* %systemname, null
  br i1 %11, label %12, label %14

; <label>:12                                      ; preds = %10
  %13 = tail call i32 @CCTK_Warn(i32 2, i32 1062, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str31, i64 0, i64 0)) #5
  br label %72

; <label>:14                                      ; preds = %10
  %15 = load %struct.cHandledData** @CoordSystems, align 8, !tbaa !2
  %16 = bitcast %struct.Coordsystem** %coord_system to i8**
  %17 = call i32 @Util_GetHandle(%struct.cHandledData* %15, i8* %systemname, i8** %16) #5
  %18 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  %19 = icmp eq %struct.Coordsystem* %18, null
  br i1 %19, label %20, label %22

; <label>:20                                      ; preds = %14
  %21 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1072, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str32, i64 0, i64 0), i8* %systemname) #5
  br label %72

; <label>:22                                      ; preds = %14
  %23 = icmp sgt i32 %coorddir, 0
  br i1 %23, label %46, label %.preheader

.preheader:                                       ; preds = %22
  %24 = getelementptr inbounds %struct.Coordsystem* %18, i64 0, i32 1
  %25 = load i32* %24, align 4, !tbaa !6
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %.lr.ph13, label %.thread5

; <label>:27                                      ; preds = %.lr.ph13
  %28 = getelementptr inbounds %struct.Coordsystem* %39, i64 0, i32 1
  %29 = load i32* %28, align 4, !tbaa !6
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %indvars.iv.next, %30
  br i1 %31, label %.lr.ph13, label %.thread5

.lr.ph13:                                         ; preds = %.preheader, %27
  %indvars.iv = phi i64 [ %indvars.iv.next, %27 ], [ 0, %.preheader ]
  %32 = phi %struct.Coordsystem* [ %39, %27 ], [ %18, %.preheader ]
  %33 = getelementptr inbounds %struct.Coordsystem* %32, i64 0, i32 3
  %34 = load %struct.Coordprops** %33, align 8, !tbaa !11
  %35 = getelementptr inbounds %struct.Coordprops* %34, i64 %indvars.iv, i32 0
  %36 = load i8** %35, align 8, !tbaa !13
  %37 = call i32 @CCTK_Equals(i8* %36, i8* %coordname) #5
  %38 = icmp eq i32 %37, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %39 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  br i1 %38, label %27, label %40

; <label>:40                                      ; preds = %.lr.ph13
  %41 = getelementptr inbounds %struct.Coordsystem* %39, i64 0, i32 3
  %42 = load %struct.Coordprops** %41, align 8, !tbaa !11
  %43 = getelementptr inbounds %struct.Coordprops* %42, i64 %indvars.iv
  %44 = icmp eq %struct.Coordprops* %43, null
  br i1 %44, label %.thread5, label %.thread6

.thread5:                                         ; preds = %27, %.preheader, %40
  %45 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1095, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str33, i64 0, i64 0), i8* %coordname) #5
  br label %72

; <label>:46                                      ; preds = %22
  %47 = add nsw i32 %coorddir, -1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.Coordsystem* %18, i64 0, i32 3
  %50 = load %struct.Coordprops** %49, align 8, !tbaa !11
  %51 = getelementptr inbounds %struct.Coordprops* %50, i64 %48
  %52 = icmp eq %struct.Coordprops* %51, null
  br i1 %52, label %72, label %.thread6

.thread6:                                         ; preds = %40, %46
  %coord.18 = phi %struct.Coordprops* [ %51, %46 ], [ %43, %40 ]
  %53 = getelementptr inbounds %struct.Coordprops* %coord.18, i64 0, i32 2
  %curr.09 = load %struct.Coordpropslistcomp** %53, align 8
  %54 = icmp eq %struct.Coordpropslistcomp* %curr.09, null
  br i1 %54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread6
  %55 = bitcast double* %lower to i64*
  %56 = bitcast double* %upper to i64*
  br label %57

; <label>:57                                      ; preds = %.lr.ph, %68
  %curr.011 = phi %struct.Coordpropslistcomp* [ %curr.09, %.lr.ph ], [ %curr.0, %68 ]
  %gotrange.010 = phi i32 [ 0, %.lr.ph ], [ %gotrange.1, %68 ]
  %58 = getelementptr inbounds %struct.Coordpropslistcomp* %curr.011, i64 0, i32 0
  %59 = load %struct.cGH** %58, align 8, !tbaa !21
  %60 = icmp eq %struct.cGH* %59, %GH
  br i1 %60, label %61, label %68

; <label>:61                                      ; preds = %57
  %62 = getelementptr inbounds %struct.Coordpropslistcomp* %curr.011, i64 0, i32 1
  %63 = bitcast double* %62 to i64*
  %64 = load i64* %63, align 8, !tbaa !17
  store i64 %64, i64* %55, align 8, !tbaa !23
  %65 = getelementptr inbounds %struct.Coordpropslistcomp* %curr.011, i64 0, i32 2
  %66 = bitcast double* %65 to i64*
  %67 = load i64* %66, align 8, !tbaa !20
  store i64 %67, i64* %56, align 8, !tbaa !23
  br label %68

; <label>:68                                      ; preds = %57, %61
  %gotrange.1 = phi i32 [ 1, %61 ], [ %gotrange.010, %57 ]
  %69 = getelementptr inbounds %struct.Coordpropslistcomp* %curr.011, i64 0, i32 3
  %curr.0 = load %struct.Coordpropslistcomp** %69, align 8
  %70 = icmp eq %struct.Coordpropslistcomp* %curr.0, null
  br i1 %70, label %._crit_edge, label %57

._crit_edge:                                      ; preds = %68, %.thread6
  %gotrange.0.lcssa = phi i32 [ 0, %.thread6 ], [ %gotrange.1, %68 ]
  %71 = icmp eq i32 %gotrange.0.lcssa, 0
  %.retval.0 = select i1 %71, i32 -6, i32 0
  ret i32 %.retval.0

; <label>:72                                      ; preds = %.thread5, %46, %8, %20, %12, %3
  %retval.1 = phi i32 [ -1, %3 ], [ -2, %8 ], [ -3, %12 ], [ 0, %46 ], [ -1, %20 ], [ -4, %.thread5 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordrange_(i32* nocapture %ierr, %struct.cGH* %GH, double* %lower, double* %upper, i32* nocapture readonly %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5
  %3 = load i32* %dir, align 4, !tbaa !12
  %4 = tail call i32 @CCTK_CoordRange(%struct.cGH* %GH, double* %lower, double* %upper, i32 %3, i8* %1, i8* %2) #6
  store i32 %4, i32* %ierr, align 4, !tbaa !12
  tail call void @free(i8* %1) #6
  tail call void @free(i8* %2) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordRangePhysIndex(%struct.cGH* readnone %GH, i32* %lower, i32* %upper, i32 %coorddir, i8* %coordname, i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  %1 = icmp eq i32* %lower, null
  %2 = icmp eq i32* %upper, null
  %or.cond = or i1 %1, %2
  br i1 %or.cond, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_Warn(i32 2, i32 1223, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str34, i64 0, i64 0)) #5
  br label %67

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %coorddir, 1
  %7 = icmp eq i8* %coordname, null
  %or.cond3 = and i1 %6, %7
  br i1 %or.cond3, label %8, label %10

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CCTK_Warn(i32 2, i32 1230, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str35, i64 0, i64 0)) #5
  br label %67

; <label>:10                                      ; preds = %5
  %11 = icmp eq i8* %systemname, null
  br i1 %11, label %12, label %14

; <label>:12                                      ; preds = %10
  %13 = tail call i32 @CCTK_Warn(i32 2, i32 1236, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str36, i64 0, i64 0)) #5
  br label %67

; <label>:14                                      ; preds = %10
  %15 = load %struct.cHandledData** @CoordSystems, align 8, !tbaa !2
  %16 = bitcast %struct.Coordsystem** %coord_system to i8**
  %17 = call i32 @Util_GetHandle(%struct.cHandledData* %15, i8* %systemname, i8** %16) #5
  %18 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  %19 = icmp eq %struct.Coordsystem* %18, null
  br i1 %19, label %20, label %22

; <label>:20                                      ; preds = %14
  %21 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1246, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str37, i64 0, i64 0), i8* %systemname) #5
  br label %67

; <label>:22                                      ; preds = %14
  %23 = icmp sgt i32 %coorddir, 0
  br i1 %23, label %46, label %.preheader

.preheader:                                       ; preds = %22
  %24 = getelementptr inbounds %struct.Coordsystem* %18, i64 0, i32 1
  %25 = load i32* %24, align 4, !tbaa !6
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %.lr.ph14, label %.thread5

; <label>:27                                      ; preds = %.lr.ph14
  %28 = getelementptr inbounds %struct.Coordsystem* %39, i64 0, i32 1
  %29 = load i32* %28, align 4, !tbaa !6
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %indvars.iv.next, %30
  br i1 %31, label %.lr.ph14, label %.thread5

.lr.ph14:                                         ; preds = %.preheader, %27
  %indvars.iv = phi i64 [ %indvars.iv.next, %27 ], [ 0, %.preheader ]
  %32 = phi %struct.Coordsystem* [ %39, %27 ], [ %18, %.preheader ]
  %33 = getelementptr inbounds %struct.Coordsystem* %32, i64 0, i32 3
  %34 = load %struct.Coordprops** %33, align 8, !tbaa !11
  %35 = getelementptr inbounds %struct.Coordprops* %34, i64 %indvars.iv, i32 0
  %36 = load i8** %35, align 8, !tbaa !13
  %37 = call i32 @CCTK_Equals(i8* %36, i8* %coordname) #5
  %38 = icmp eq i32 %37, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %39 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  br i1 %38, label %27, label %40

; <label>:40                                      ; preds = %.lr.ph14
  %41 = getelementptr inbounds %struct.Coordsystem* %39, i64 0, i32 3
  %42 = load %struct.Coordprops** %41, align 8, !tbaa !11
  %43 = getelementptr inbounds %struct.Coordprops* %42, i64 %indvars.iv
  %44 = icmp eq %struct.Coordprops* %43, null
  br i1 %44, label %.thread5, label %.thread6

.thread5:                                         ; preds = %27, %.preheader, %40
  %45 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1269, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str38, i64 0, i64 0), i8* %coordname) #5
  br label %67

; <label>:46                                      ; preds = %22
  %47 = add nsw i32 %coorddir, -1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.Coordsystem* %18, i64 0, i32 3
  %50 = load %struct.Coordprops** %49, align 8, !tbaa !11
  %51 = getelementptr inbounds %struct.Coordprops* %50, i64 %48
  %52 = icmp eq %struct.Coordprops* %51, null
  br i1 %52, label %67, label %.thread6

.thread6:                                         ; preds = %40, %46
  %coord.18 = phi %struct.Coordprops* [ %51, %46 ], [ %43, %40 ]
  %53 = getelementptr inbounds %struct.Coordprops* %coord.18, i64 0, i32 3
  %curr.010 = load %struct.Coordpropslistphysi** %53, align 8
  %cond11 = icmp eq %struct.Coordpropslistphysi* %curr.010, null
  br i1 %cond11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread6, %62
  %curr.012 = phi %struct.Coordpropslistphysi* [ %curr.0, %62 ], [ %curr.010, %.thread6 ]
  %54 = getelementptr inbounds %struct.Coordpropslistphysi* %curr.012, i64 0, i32 0
  %55 = load %struct.cGH** %54, align 8, !tbaa !28
  %56 = icmp eq %struct.cGH* %55, %GH
  br i1 %56, label %57, label %62

; <label>:57                                      ; preds = %.lr.ph
  %58 = getelementptr inbounds %struct.Coordpropslistphysi* %curr.012, i64 0, i32 1
  %59 = load i32* %58, align 4, !tbaa !25
  store i32 %59, i32* %lower, align 4, !tbaa !12
  %60 = getelementptr inbounds %struct.Coordpropslistphysi* %curr.012, i64 0, i32 2
  %61 = load i32* %60, align 4, !tbaa !27
  store i32 %61, i32* %upper, align 4, !tbaa !12
  br label %67

; <label>:62                                      ; preds = %.lr.ph
  %63 = getelementptr inbounds %struct.Coordpropslistphysi* %curr.012, i64 0, i32 3
  %curr.0 = load %struct.Coordpropslistphysi** %63, align 8
  %cond = icmp eq %struct.Coordpropslistphysi* %curr.0, null
  br i1 %cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %62, %.thread6
  %64 = getelementptr inbounds %struct.Coordprops* %coord.18, i64 0, i32 0
  %65 = load i8** %64, align 8, !tbaa !13
  %66 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1300, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([90 x i8]* @.str39, i64 0, i64 0), i8* %65, i8* %systemname) #5
  br label %67

; <label>:67                                      ; preds = %57, %.thread5, %46, %8, %20, %._crit_edge, %12, %3
  %retval.1 = phi i32 [ -1, %3 ], [ -2, %8 ], [ -3, %12 ], [ -6, %._crit_edge ], [ 0, %57 ], [ 0, %46 ], [ -4, %20 ], [ -5, %.thread5 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordrangephysindex_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %lower, i32* %upper, i32* nocapture readonly %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5
  %3 = load i32* %dir, align 4, !tbaa !12
  %4 = tail call i32 @CCTK_CoordRangePhysIndex(%struct.cGH* %GH, i32* %lower, i32* %upper, i32 %3, i8* %1, i8* %2) #6
  store i32 %4, i32* %ierr, align 4, !tbaa !12
  tail call void @free(i8* %1) #6
  tail call void @free(i8* %2) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordLocalRange(%struct.cGH* readonly %GH, double* nocapture %lower, double* nocapture %upper, i32 %dir, i8* %name, i8* %systemname) #1 {
  %global_lower = alloca double, align 8
  %global_upper = alloca double, align 8
  %1 = call i32 @CCTK_CoordRange(%struct.cGH* %GH, double* %global_lower, double* %global_upper, i32 %dir, i8* %name, i8* %systemname) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %31

; <label>:3                                       ; preds = %0
  %4 = icmp sgt i32 %dir, 0
  br i1 %4, label %7, label %5

; <label>:5                                       ; preds = %3
  %6 = call i32 @CCTK_CoordDir(i8* %name, i8* %systemname) #6
  br label %7

; <label>:7                                       ; preds = %3, %5
  %realdir.0 = phi i32 [ %6, %5 ], [ %dir, %3 ]
  %8 = load double* %global_lower, align 8, !tbaa !23
  %9 = add nsw i32 %realdir.0, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4
  %12 = load i32** %11, align 8, !tbaa !30
  %13 = getelementptr inbounds i32* %12, i64 %10
  %14 = load i32* %13, align 4, !tbaa !12
  %15 = sitofp i32 %14 to double
  %16 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10
  %17 = load double** %16, align 8, !tbaa !32
  %18 = getelementptr inbounds double* %17, i64 %10
  %19 = load double* %18, align 8, !tbaa !23
  %20 = fmul double %15, %19
  %21 = fadd double %8, %20
  store double %21, double* %lower, align 8, !tbaa !23
  %22 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5
  %23 = load i32** %22, align 8, !tbaa !33
  %24 = getelementptr inbounds i32* %23, i64 %10
  %25 = load i32* %24, align 4, !tbaa !12
  %26 = add nsw i32 %25, 1
  %27 = sitofp i32 %26 to double
  %28 = load double* %18, align 8, !tbaa !23
  %29 = fmul double %27, %28
  %30 = fadd double %8, %29
  store double %30, double* %upper, align 8, !tbaa !23
  br label %33

; <label>:31                                      ; preds = %0
  %32 = call i32 @CCTK_Warn(i32 4, i32 1383, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str40, i64 0, i64 0)) #5
  br label %33

; <label>:33                                      ; preds = %31, %7
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordlocalrange_(i32* nocapture %ierr, %struct.cGH* %GH, double* nocapture %lower, double* nocapture %upper, i32* nocapture readonly %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5
  %3 = load i32* %dir, align 4, !tbaa !12
  %4 = tail call i32 @CCTK_CoordLocalRange(%struct.cGH* %GH, double* %lower, double* %upper, i32 %3, i8* %1, i8* %2) #6
  store i32 %4, i32* %ierr, align 4, !tbaa !12
  tail call void @free(i8* %1) #6
  tail call void @free(i8* %2) #6
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_NumCoordSystems() #4 {
  %1 = load i32* @num_systems, align 4, !tbaa !12
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_CoordSystemImplementation(i32 %handle) #1 {
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #5
  %3 = icmp eq i8* %2, null
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to i8**
  %6 = load i8** %5, align 8, !tbaa !9
  br label %7

; <label>:7                                       ; preds = %0, %4
  %8 = phi i8* [ %6, %4 ], [ null, %0 ]
  ret i8* %8
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_CoordName(i32 %dir, i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !tbaa !2
  %2 = bitcast %struct.Coordsystem** %coord_system to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** %2) #5
  %4 = load %struct.Coordsystem** %coord_system, align 8, !tbaa !2
  %5 = icmp eq %struct.Coordsystem* %4, null
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 1492, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str41, i64 0, i64 0), i8* %systemname) #5
  br label %15

; <label>:8                                       ; preds = %0
  %9 = add nsw i32 %dir, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 3
  %12 = load %struct.Coordprops** %11, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.Coordprops* %12, i64 %10, i32 0
  %14 = load i8** %13, align 8, !tbaa !13
  br label %15

; <label>:15                                      ; preds = %8, %6
  %retval.0 = phi i8* [ %14, %8 ], [ null, %6 ]
  ret i8* %retval.0
}

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 8}
!7 = !{!"Coordsystem", !3, i64 0, !8, i64 8, !3, i64 16, !3, i64 24}
!8 = !{!"int", !4, i64 0}
!9 = !{!7, !3, i64 0}
!10 = !{!7, !3, i64 16}
!11 = !{!7, !3, i64 24}
!12 = !{!8, !8, i64 0}
!13 = !{!14, !3, i64 0}
!14 = !{!"Coordprops", !3, i64 0, !8, i64 8, !3, i64 16, !3, i64 24}
!15 = !{!14, !8, i64 8}
!16 = !{!14, !3, i64 16}
!17 = !{!18, !19, i64 8}
!18 = !{!"Coordpropslistcomp", !3, i64 0, !19, i64 8, !19, i64 16, !3, i64 24}
!19 = !{!"double", !4, i64 0}
!20 = !{!18, !19, i64 16}
!21 = !{!18, !3, i64 0}
!22 = !{!18, !3, i64 24}
!23 = !{!19, !19, i64 0}
!24 = !{!14, !3, i64 24}
!25 = !{!26, !8, i64 8}
!26 = !{!"Coordpropslistphysi", !3, i64 0, !8, i64 8, !8, i64 12, !3, i64 16}
!27 = !{!26, !8, i64 12}
!28 = !{!26, !3, i64 0}
!29 = !{!26, !3, i64 16}
!30 = !{!31, !3, i64 24}
!31 = !{!"", !8, i64 0, !8, i64 4, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !19, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !8, i64 104, !3, i64 112, !19, i64 120, !3, i64 128, !3, i64 136, !3, i64 144}
!32 = !{!31, !3, i64 72}
!33 = !{!31, !3, i64 32}
