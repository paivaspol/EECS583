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
  ret i8* getelementptr inbounds ([80 x i8]* @.str42, i64 0, i64 0), !dbg !388
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_CoordRegisterSystem(i32 %dim, i8* %thorn, i8* %systemname) #1 {
  %new_system = alloca %struct.Coordsystem*, align 8
  tail call void @llvm.dbg.value(metadata i32 %dim, i64 0, metadata !82, metadata !389), !dbg !390
  tail call void @llvm.dbg.value(metadata i8* %thorn, i64 0, metadata !83, metadata !389), !dbg !391
  tail call void @llvm.dbg.value(metadata i8* %systemname, i64 0, metadata !84, metadata !389), !dbg !392
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !85, metadata !389), !dbg !393
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !394, !tbaa !395
  %2 = bitcast %struct.Coordsystem** %new_system to i8**, !dbg !399
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** %2) #6, !dbg !400
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %new_system, i64 0, metadata !86, metadata !389), !dbg !401
  %4 = load %struct.Coordsystem** %new_system, align 8, !dbg !402, !tbaa !395
  %5 = icmp eq %struct.Coordsystem* %4, null, !dbg !402
  br i1 %5, label %6, label %31, !dbg !404

; <label>:6                                       ; preds = %0
  %7 = call i8* @malloc(i64 32) #6, !dbg !405
  store i8* %7, i8** %2, align 8, !dbg !407, !tbaa !395
  %8 = icmp eq i8* %7, null, !dbg !408
  br i1 %8, label %39, label %9, !dbg !410

; <label>:9                                       ; preds = %6
  %10 = icmp sgt i32 %dim, 0, !dbg !411
  br i1 %10, label %11, label %29, !dbg !414

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds i8* %7, i64 8, !dbg !415
  %13 = bitcast i8* %12 to i32*, !dbg !415
  store i32 %dim, i32* %13, align 4, !dbg !417, !tbaa !418
  %14 = call i8* @CCTK_ThornImplementation(i8* %thorn) #6, !dbg !421
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %new_system, i64 0, metadata !86, metadata !389), !dbg !401
  %15 = load %struct.Coordsystem** %new_system, align 8, !dbg !422, !tbaa !395
  %16 = getelementptr inbounds %struct.Coordsystem* %15, i64 0, i32 0, !dbg !423
  store i8* %14, i8** %16, align 8, !dbg !424, !tbaa !425
  %17 = call i8* @strdup(i8* %systemname) #6, !dbg !426
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %new_system, i64 0, metadata !86, metadata !389), !dbg !401
  %18 = load %struct.Coordsystem** %new_system, align 8, !dbg !427, !tbaa !395
  %19 = getelementptr inbounds %struct.Coordsystem* %18, i64 0, i32 2, !dbg !428
  store i8* %17, i8** %19, align 8, !dbg !429, !tbaa !430
  %20 = sext i32 %dim to i64, !dbg !431
  %21 = call i8* @calloc(i64 %20, i64 32) #6, !dbg !432
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %new_system, i64 0, metadata !86, metadata !389), !dbg !401
  %22 = load %struct.Coordsystem** %new_system, align 8, !dbg !433, !tbaa !395
  %23 = getelementptr inbounds %struct.Coordsystem* %22, i64 0, i32 3, !dbg !434
  %24 = bitcast %struct.Coordprops** %23 to i8**, !dbg !435
  store i8* %21, i8** %24, align 8, !dbg !435, !tbaa !436
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %new_system, i64 0, metadata !86, metadata !389), !dbg !401
  %25 = load i8** %2, align 8, !dbg !437, !tbaa !395
  %26 = call i32 @Util_NewHandle(%struct.cHandledData** @CoordSystems, i8* %systemname, i8* %25) #6, !dbg !438
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !85, metadata !389), !dbg !393
  %27 = load i32* @num_systems, align 4, !dbg !439, !tbaa !440
  %28 = add nsw i32 %27, 1, !dbg !439
  store i32 %28, i32* @num_systems, align 4, !dbg !439, !tbaa !440
  br label %39, !dbg !441

; <label>:29                                      ; preds = %9
  call void @llvm.dbg.value(metadata i32 -2, i64 0, metadata !85, metadata !389), !dbg !393
  %30 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 192, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i32 %dim) #6, !dbg !442
  br label %39

; <label>:31                                      ; preds = %0
  %32 = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1, !dbg !444
  %33 = load i32* %32, align 4, !dbg !444, !tbaa !418
  %34 = icmp eq i32 %33, %dim, !dbg !447
  br i1 %34, label %35, label %37, !dbg !448

; <label>:35                                      ; preds = %31
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !85, metadata !389), !dbg !393
  %36 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 203, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), i8* %systemname) #6, !dbg !449
  br label %39, !dbg !451

; <label>:37                                      ; preds = %31
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !85, metadata !389), !dbg !393
  %38 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 210, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([82 x i8]* @.str4, i64 0, i64 0), i8* %systemname) #6, !dbg !452
  br label %39

; <label>:39                                      ; preds = %6, %35, %37, %29, %11
  %retval.0 = phi i32 [ 0, %35 ], [ -1, %37 ], [ %26, %11 ], [ -2, %29 ], [ -1, %6 ]
  ret i32 %retval.0, !dbg !454
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
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !94, metadata !389), !dbg !455
  tail call void @llvm.dbg.value(metadata i32* %dim, i64 0, metadata !95, metadata !389), !dbg !456
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !96, metadata !389), !dbg !457
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !97, metadata !389), !dbg !457
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !98, metadata !389), !dbg !457
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !99, metadata !389), !dbg !457
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !458
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !100, metadata !389), !dbg !458
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !458
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !101, metadata !389), !dbg !458
  %3 = load i32* %dim, align 4, !dbg !459, !tbaa !440
  %4 = tail call i32 @CCTKi_CoordRegisterSystem(i32 %3, i8* %1, i8* %2) #7, !dbg !460
  store i32 %4, i32* %ierr, align 4, !dbg !461, !tbaa !440
  tail call void @free(i8* %2) #7, !dbg !462
  tail call void @free(i8* %1) #7, !dbg !463
  ret void, !dbg !464
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordRegisterData(i32 %dir, i8* %gfname, i8* %coordname, i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  tail call void @llvm.dbg.value(metadata i32 %dir, i64 0, metadata !106, metadata !389), !dbg !465
  tail call void @llvm.dbg.value(metadata i8* %gfname, i64 0, metadata !107, metadata !389), !dbg !466
  tail call void @llvm.dbg.value(metadata i8* %coordname, i64 0, metadata !108, metadata !389), !dbg !467
  tail call void @llvm.dbg.value(metadata i8* %systemname, i64 0, metadata !109, metadata !389), !dbg !468
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !111, metadata !389), !dbg !469
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !112, metadata !389), !dbg !470
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !471, !tbaa !395
  %2 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !472
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** %2) #6, !dbg !473
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !113, metadata !389), !dbg !474
  %4 = load %struct.Coordsystem** %coord_system, align 8, !dbg !475, !tbaa !395
  %5 = icmp eq %struct.Coordsystem* %4, null, !dbg !475
  br i1 %5, label %6, label %8, !dbg !477

; <label>:6                                       ; preds = %0
  %7 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 265, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str5, i64 0, i64 0), i8* %systemname) #6, !dbg !478
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !111, metadata !389), !dbg !469
  br label %54, !dbg !480

; <label>:8                                       ; preds = %0
  %9 = icmp slt i32 %dir, 1, !dbg !481
  %.phi.trans.insert = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !484, !tbaa !418
  %10 = icmp slt i32 %.pre, %dir, !dbg !486
  %or.cond = or i1 %9, %10, !dbg !487
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !113, metadata !389), !dbg !474
  br i1 %or.cond, label %._crit_edge7, label %.preheader, !dbg !487

.preheader:                                       ; preds = %8
  %11 = icmp sgt i32 %.pre, 0, !dbg !488
  br i1 %11, label %.lr.ph, label %._crit_edge, !dbg !492

._crit_edge7:                                     ; preds = %8
  %12 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 274, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str6, i64 0, i64 0), i32 %dir, i32 %.pre) #6, !dbg !493
  call void @llvm.dbg.value(metadata i32 -2, i64 0, metadata !111, metadata !389), !dbg !469
  br label %54, !dbg !494

.lr.ph:                                           ; preds = %.preheader, %24
  %indvars.iv = phi i64 [ %indvars.iv.next, %24 ], [ 0, %.preheader ]
  %13 = phi %struct.Coordsystem* [ %25, %24 ], [ %4, %.preheader ]
  %dup.03 = phi i32 [ %dup.1, %24 ], [ 0, %.preheader ]
  %retval.02 = phi i32 [ %retval.1, %24 ], [ 0, %.preheader ]
  %14 = getelementptr inbounds %struct.Coordsystem* %13, i64 0, i32 3, !dbg !495
  %15 = load %struct.Coordprops** %14, align 8, !dbg !495, !tbaa !436
  %16 = getelementptr inbounds %struct.Coordprops* %15, i64 %indvars.iv, i32 0, !dbg !498
  %17 = load i8** %16, align 8, !dbg !498, !tbaa !499
  %18 = icmp eq i8* %17, null, !dbg !501
  br i1 %18, label %24, label %19, !dbg !502

; <label>:19                                      ; preds = %.lr.ph
  %20 = call i32 @CCTK_Equals(i8* %17, i8* %coordname) #6, !dbg !503
  %21 = icmp eq i32 %20, 0, !dbg !503
  br i1 %21, label %24, label %22, !dbg !504

; <label>:22                                      ; preds = %19
  %23 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 289, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str7, i64 0, i64 0), i8* %coordname) #6, !dbg !505
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !112, metadata !389), !dbg !470
  call void @llvm.dbg.value(metadata i32 -3, i64 0, metadata !111, metadata !389), !dbg !469
  br label %24, !dbg !507

; <label>:24                                      ; preds = %19, %.lr.ph, %22
  %retval.1 = phi i32 [ -3, %22 ], [ %retval.02, %19 ], [ %retval.02, %.lr.ph ]
  %dup.1 = phi i32 [ 1, %22 ], [ %dup.03, %19 ], [ %dup.03, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !492
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !113, metadata !389), !dbg !474
  %25 = load %struct.Coordsystem** %coord_system, align 8, !dbg !508, !tbaa !395
  %26 = getelementptr inbounds %struct.Coordsystem* %25, i64 0, i32 1, !dbg !509
  %27 = load i32* %26, align 4, !dbg !509, !tbaa !418
  %28 = sext i32 %27 to i64, !dbg !488
  %29 = icmp slt i64 %indvars.iv.next, %28, !dbg !488
  br i1 %29, label %.lr.ph, label %._crit_edge, !dbg !492

._crit_edge:                                      ; preds = %24, %.preheader
  %.lcssa = phi %struct.Coordsystem* [ %4, %.preheader ], [ %25, %24 ]
  %dup.0.lcssa = phi i32 [ 0, %.preheader ], [ %dup.1, %24 ]
  %retval.0.lcssa = phi i32 [ 0, %.preheader ], [ %retval.1, %24 ]
  %30 = add nsw i32 %dir, -1, !dbg !510
  %31 = sext i32 %30 to i64, !dbg !512
  %32 = getelementptr inbounds %struct.Coordsystem* %.lcssa, i64 0, i32 3, !dbg !513
  %33 = load %struct.Coordprops** %32, align 8, !dbg !513, !tbaa !436
  %34 = getelementptr inbounds %struct.Coordprops* %33, i64 %31, i32 0, !dbg !514
  %35 = load i8** %34, align 8, !dbg !514, !tbaa !499
  %36 = icmp eq i8* %35, null, !dbg !512
  br i1 %36, label %38, label %.thread, !dbg !515

.thread:                                          ; preds = %._crit_edge
  %37 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 299, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str8, i64 0, i64 0), i32 %dir) #6, !dbg !516
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !112, metadata !389), !dbg !470
  call void @llvm.dbg.value(metadata i32 -4, i64 0, metadata !111, metadata !389), !dbg !469
  br label %54, !dbg !518

; <label>:38                                      ; preds = %._crit_edge
  %39 = icmp eq i32 %dup.0.lcssa, 0, !dbg !519
  br i1 %39, label %40, label %54, !dbg !518

; <label>:40                                      ; preds = %38
  %41 = call i8* @strdup(i8* %coordname) #6, !dbg !521
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !113, metadata !389), !dbg !474
  %42 = load %struct.Coordsystem** %coord_system, align 8, !dbg !523, !tbaa !395
  %43 = getelementptr inbounds %struct.Coordsystem* %42, i64 0, i32 3, !dbg !524
  %44 = load %struct.Coordprops** %43, align 8, !dbg !524, !tbaa !436
  %45 = getelementptr inbounds %struct.Coordprops* %44, i64 %31, i32 0, !dbg !525
  store i8* %41, i8** %45, align 8, !dbg !526, !tbaa !499
  %46 = call i32 @CCTK_VarIndex(i8* %gfname) #6, !dbg !527
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !113, metadata !389), !dbg !474
  %47 = load %struct.Coordsystem** %coord_system, align 8, !dbg !528, !tbaa !395
  %48 = getelementptr inbounds %struct.Coordsystem* %47, i64 0, i32 3, !dbg !529
  %49 = load %struct.Coordprops** %48, align 8, !dbg !529, !tbaa !436
  %50 = getelementptr inbounds %struct.Coordprops* %49, i64 %31, i32 1, !dbg !530
  store i32 %46, i32* %50, align 4, !dbg !531, !tbaa !532
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !113, metadata !389), !dbg !474
  %51 = icmp slt i32 %46, 0, !dbg !533
  br i1 %51, label %52, label %54, !dbg !535

; <label>:52                                      ; preds = %40
  %53 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 314, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str9, i64 0, i64 0)) #6, !dbg !536
  br label %54, !dbg !538

; <label>:54                                      ; preds = %.thread, %._crit_edge7, %40, %52, %38, %6
  %retval.3 = phi i32 [ -2, %._crit_edge7 ], [ %retval.0.lcssa, %52 ], [ %retval.0.lcssa, %40 ], [ %retval.0.lcssa, %38 ], [ -1, %6 ], [ -4, %.thread ]
  ret i32 %retval.3, !dbg !539
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordregisterdata_(i32* nocapture %handle, i32* nocapture readonly %dir, i8* %cctk_str1, i8* %cctk_str2, i8* %cctk_str3, i32 %cctk_strlen1, i32 %cctk_strlen2, i32 %cctk_strlen3) #1 {
  tail call void @llvm.dbg.value(metadata i32* %handle, i64 0, metadata !118, metadata !389), !dbg !540
  tail call void @llvm.dbg.value(metadata i32* %dir, i64 0, metadata !119, metadata !389), !dbg !541
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !120, metadata !389), !dbg !542
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !121, metadata !389), !dbg !542
  tail call void @llvm.dbg.value(metadata i8* %cctk_str3, i64 0, metadata !122, metadata !389), !dbg !542
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !123, metadata !389), !dbg !542
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !124, metadata !389), !dbg !542
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen3, i64 0, metadata !125, metadata !389), !dbg !542
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !543
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !126, metadata !389), !dbg !543
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !543
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !127, metadata !389), !dbg !543
  %3 = tail call i8* @Util_NullTerminateString(i8* %cctk_str3, i32 %cctk_strlen3) #6, !dbg !543
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !128, metadata !389), !dbg !543
  %4 = load i32* %dir, align 4, !dbg !544, !tbaa !440
  %5 = tail call i32 @CCTK_CoordRegisterData(i32 %4, i8* %1, i8* %2, i8* %3) #7, !dbg !545
  store i32 %5, i32* %handle, align 4, !dbg !546, !tbaa !440
  tail call void @free(i8* %1) #7, !dbg !547
  tail call void @free(i8* %2) #7, !dbg !548
  tail call void @free(i8* %3) #7, !dbg !549
  ret void, !dbg !550
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordRegisterRange(%struct.cGH* %GH, double %min, double %max, i32 %dir, i8* %coordname, i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !133, metadata !389), !dbg !551
  tail call void @llvm.dbg.value(metadata double %min, i64 0, metadata !134, metadata !389), !dbg !552
  tail call void @llvm.dbg.value(metadata double %max, i64 0, metadata !135, metadata !389), !dbg !553
  tail call void @llvm.dbg.value(metadata i32 %dir, i64 0, metadata !136, metadata !389), !dbg !554
  tail call void @llvm.dbg.value(metadata i8* %coordname, i64 0, metadata !137, metadata !389), !dbg !555
  tail call void @llvm.dbg.value(metadata i8* %systemname, i64 0, metadata !138, metadata !389), !dbg !556
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !140, metadata !389), !dbg !557
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !141, metadata !389), !dbg !558
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !559, !tbaa !395
  %2 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !560
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** %2) #6, !dbg !561
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !143, metadata !389), !dbg !562
  %4 = load %struct.Coordsystem** %coord_system, align 8, !dbg !563, !tbaa !395
  %5 = icmp eq %struct.Coordsystem* %4, null, !dbg !563
  br i1 %5, label %6, label %8, !dbg !565

; <label>:6                                       ; preds = %0
  %7 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 408, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str10, i64 0, i64 0), i8* %systemname) #6, !dbg !566
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !140, metadata !389), !dbg !557
  br label %.thread, !dbg !568

; <label>:8                                       ; preds = %0
  %9 = icmp sgt i32 %dir, -1, !dbg !569
  br i1 %9, label %13, label %.preheader, !dbg !572

.preheader:                                       ; preds = %8
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !143, metadata !389), !dbg !562
  %10 = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1, !dbg !573
  %11 = load i32* %10, align 4, !dbg !573, !tbaa !418
  %12 = icmp sgt i32 %11, 0, !dbg !577
  br i1 %12, label %.lr.ph, label %._crit_edge.thread, !dbg !578

; <label>:13                                      ; preds = %8
  %14 = icmp eq i32 %dir, 0, !dbg !579
  %.phi.trans.insert = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1
  %.pre7 = load i32* %.phi.trans.insert, align 4, !dbg !582, !tbaa !418
  %15 = icmp slt i32 %.pre7, %dir, !dbg !584
  %or.cond = or i1 %14, %15, !dbg !585
  br i1 %or.cond, label %._crit_edge6, label %17, !dbg !585

._crit_edge6:                                     ; preds = %13
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !143, metadata !389), !dbg !562
  %16 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 419, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i32 %dir, i32 %.pre7) #6, !dbg !586
  call void @llvm.dbg.value(metadata i32 -2, i64 0, metadata !140, metadata !389), !dbg !557
  %.pre8 = load %struct.Coordsystem** %coord_system, align 8, !dbg !587, !tbaa !395
  br label %17, !dbg !589

; <label>:17                                      ; preds = %13, %._crit_edge6
  %18 = phi %struct.Coordsystem* [ %.pre8, %._crit_edge6 ], [ %4, %13 ]
  %retval.0 = phi i32 [ -2, %._crit_edge6 ], [ 0, %13 ]
  %19 = add nsw i32 %dir, -1, !dbg !590
  %20 = sext i32 %19 to i64, !dbg !587
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !143, metadata !389), !dbg !562
  %21 = getelementptr inbounds %struct.Coordsystem* %18, i64 0, i32 3, !dbg !591
  %22 = load %struct.Coordprops** %21, align 8, !dbg !591, !tbaa !436
  %23 = getelementptr inbounds %struct.Coordprops* %22, i64 %20, i32 0, !dbg !592
  %24 = load i8** %23, align 8, !dbg !592, !tbaa !499
  %25 = icmp eq i8* %24, null, !dbg !587
  br i1 %25, label %26, label %46, !dbg !593

; <label>:26                                      ; preds = %17
  %27 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 430, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str12, i64 0, i64 0), i32 %dir) #6, !dbg !594
  call void @llvm.dbg.value(metadata i32 -4, i64 0, metadata !140, metadata !389), !dbg !557
  br label %.thread

.lr.ph:                                           ; preds = %.preheader, %38
  %indvars.iv = phi i64 [ %indvars.iv.next, %38 ], [ 0, %.preheader ]
  %28 = phi %struct.Coordsystem* [ %39, %38 ], [ %4, %.preheader ]
  %vindex.04 = phi i32 [ %vindex.1, %38 ], [ -1, %.preheader ]
  %29 = getelementptr inbounds %struct.Coordsystem* %28, i64 0, i32 3, !dbg !596
  %30 = load %struct.Coordprops** %29, align 8, !dbg !596, !tbaa !436
  %31 = getelementptr inbounds %struct.Coordprops* %30, i64 %indvars.iv, i32 0, !dbg !599
  %32 = load i8** %31, align 8, !dbg !599, !tbaa !499
  %33 = icmp eq i8* %32, null, !dbg !600
  br i1 %33, label %38, label %34, !dbg !601

; <label>:34                                      ; preds = %.lr.ph
  %35 = call i32 @CCTK_Equals(i8* %32, i8* %coordname) #6, !dbg !602
  %36 = icmp eq i32 %35, 0, !dbg !602
  %37 = trunc i64 %indvars.iv to i32, !dbg !603
  %vindex.0.i.0 = select i1 %36, i32 %vindex.04, i32 %37, !dbg !603
  %.pre = load %struct.Coordsystem** %coord_system, align 8, !dbg !604, !tbaa !395
  br label %38, !dbg !603

; <label>:38                                      ; preds = %34, %.lr.ph
  %39 = phi %struct.Coordsystem* [ %28, %.lr.ph ], [ %.pre, %34 ], !dbg !578
  %vindex.1 = phi i32 [ %vindex.04, %.lr.ph ], [ %vindex.0.i.0, %34 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !578
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !143, metadata !389), !dbg !562
  %40 = getelementptr inbounds %struct.Coordsystem* %39, i64 0, i32 1, !dbg !573
  %41 = load i32* %40, align 4, !dbg !573, !tbaa !418
  %42 = sext i32 %41 to i64, !dbg !577
  %43 = icmp slt i64 %indvars.iv.next, %42, !dbg !577
  br i1 %43, label %.lr.ph, label %._crit_edge, !dbg !578

._crit_edge:                                      ; preds = %38
  %44 = icmp eq i32 %vindex.1, -1, !dbg !605
  br i1 %44, label %._crit_edge.thread, label %..thread1_crit_edge, !dbg !607

..thread1_crit_edge:                              ; preds = %._crit_edge
  %.phi.trans.insert9 = getelementptr inbounds %struct.Coordsystem* %39, i64 0, i32 3
  %.pre10 = load %struct.Coordprops** %.phi.trans.insert9, align 8, !dbg !608, !tbaa !436
  br label %.thread1, !dbg !607

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %45 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 448, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str13, i64 0, i64 0), i8* %coordname) #6, !dbg !612
  call void @llvm.dbg.value(metadata i32 -3, i64 0, metadata !140, metadata !389), !dbg !557
  br label %.thread, !dbg !614

; <label>:46                                      ; preds = %17
  br i1 %14, label %.thread, label %.thread1, !dbg !615

.thread1:                                         ; preds = %..thread1_crit_edge, %46
  %47 = phi %struct.Coordprops* [ %22, %46 ], [ %.pre10, %..thread1_crit_edge ]
  %48 = phi %struct.Coordsystem* [ %18, %46 ], [ %39, %..thread1_crit_edge ]
  %vindex.23 = phi i32 [ %19, %46 ], [ %vindex.1, %..thread1_crit_edge ]
  %retval.12 = phi i32 [ %retval.0, %46 ], [ 0, %..thread1_crit_edge ]
  %49 = sext i32 %vindex.23 to i64, !dbg !616
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !143, metadata !389), !dbg !562
  %50 = getelementptr inbounds %struct.Coordsystem* %48, i64 0, i32 3, !dbg !608
  %51 = getelementptr inbounds %struct.Coordprops* %47, i64 %49, i32 2, !dbg !617
  %52 = load %struct.Coordpropslistcomp** %51, align 8, !dbg !617, !tbaa !618
  %53 = icmp eq %struct.Coordpropslistcomp* %52, null, !dbg !616
  br i1 %53, label %63, label %54, !dbg !619

; <label>:54                                      ; preds = %.thread1
  %55 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 3, i32 461, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str14, i64 0, i64 0), i8* %systemname) #6, !dbg !620
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !143, metadata !389), !dbg !562
  %56 = load %struct.Coordsystem** %coord_system, align 8, !dbg !622, !tbaa !395
  %57 = getelementptr inbounds %struct.Coordsystem* %56, i64 0, i32 3, !dbg !623
  %58 = load %struct.Coordprops** %57, align 8, !dbg !623, !tbaa !436
  %59 = getelementptr inbounds %struct.Coordprops* %58, i64 %49, i32 2, !dbg !624
  %60 = load %struct.Coordpropslistcomp** %59, align 8, !dbg !624, !tbaa !618
  %61 = getelementptr inbounds %struct.Coordpropslistcomp* %60, i64 0, i32 1, !dbg !625
  store double %min, double* %61, align 8, !dbg !626, !tbaa !627
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !143, metadata !389), !dbg !562
  %62 = getelementptr inbounds %struct.Coordpropslistcomp* %60, i64 0, i32 2, !dbg !630
  store double %max, double* %62, align 8, !dbg !631, !tbaa !632
  br label %.thread, !dbg !633

; <label>:63                                      ; preds = %.thread1
  %64 = call i8* @malloc(i64 32) #6, !dbg !634
  %65 = icmp eq i8* %64, null, !dbg !636
  br i1 %65, label %66, label %68, !dbg !638

; <label>:66                                      ; preds = %63
  %67 = call i32 @CCTK_Warn(i32 1, i32 474, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str15, i64 0, i64 0)) #6, !dbg !639
  call void @llvm.dbg.value(metadata i32 -5, i64 0, metadata !140, metadata !389), !dbg !557
  br label %.thread, !dbg !641

; <label>:68                                      ; preds = %63
  %69 = bitcast i8* %64 to %struct.cGH**, !dbg !642
  store %struct.cGH* %GH, %struct.cGH** %69, align 8, !dbg !644, !tbaa !645
  %70 = getelementptr inbounds i8* %64, i64 8, !dbg !646
  %71 = bitcast i8* %70 to double*, !dbg !646
  store double %min, double* %71, align 8, !dbg !647, !tbaa !627
  %72 = getelementptr inbounds i8* %64, i64 16, !dbg !648
  %73 = bitcast i8* %72 to double*, !dbg !648
  store double %max, double* %73, align 8, !dbg !649, !tbaa !632
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !143, metadata !389), !dbg !562
  %74 = load %struct.Coordprops** %50, align 8, !dbg !650, !tbaa !436
  %75 = getelementptr inbounds %struct.Coordprops* %74, i64 %49, i32 2, !dbg !651
  %76 = bitcast %struct.Coordpropslistcomp** %75 to i64*, !dbg !651
  %77 = load i64* %76, align 8, !dbg !651, !tbaa !618
  %78 = getelementptr inbounds i8* %64, i64 24, !dbg !652
  %79 = bitcast i8* %78 to i64*, !dbg !652
  store i64 %77, i64* %79, align 8, !dbg !652, !tbaa !653
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !143, metadata !389), !dbg !562
  %80 = bitcast %struct.Coordpropslistcomp** %75 to i8**, !dbg !654
  store i8* %64, i8** %80, align 8, !dbg !654, !tbaa !618
  br label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %26, %46, %66, %68, %54, %6
  %retval.2 = phi i32 [ %retval.12, %54 ], [ %retval.12, %68 ], [ -5, %66 ], [ %retval.0, %46 ], [ -1, %6 ], [ -3, %._crit_edge.thread ], [ -4, %26 ]
  ret i32 %retval.2, !dbg !655
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordregisterrange_(i32* nocapture %ierr, %struct.cGH* %GH, double* nocapture readonly %lower, double* nocapture readonly %upper, i32* nocapture readonly %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !150, metadata !389), !dbg !656
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !151, metadata !389), !dbg !657
  tail call void @llvm.dbg.value(metadata double* %lower, i64 0, metadata !152, metadata !389), !dbg !658
  tail call void @llvm.dbg.value(metadata double* %upper, i64 0, metadata !153, metadata !389), !dbg !659
  tail call void @llvm.dbg.value(metadata i32* %dir, i64 0, metadata !154, metadata !389), !dbg !660
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !155, metadata !389), !dbg !661
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !156, metadata !389), !dbg !661
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !157, metadata !389), !dbg !661
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !158, metadata !389), !dbg !661
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !662
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !159, metadata !389), !dbg !662
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !662
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !160, metadata !389), !dbg !662
  %3 = load double* %lower, align 8, !dbg !663, !tbaa !664
  %4 = load double* %upper, align 8, !dbg !665, !tbaa !664
  %5 = load i32* %dir, align 4, !dbg !666, !tbaa !440
  %6 = tail call i32 @CCTK_CoordRegisterRange(%struct.cGH* %GH, double %3, double %4, i32 %5, i8* %1, i8* %2) #7, !dbg !667
  store i32 %6, i32* %ierr, align 4, !dbg !668, !tbaa !440
  tail call void @free(i8* %1) #7, !dbg !669
  tail call void @free(i8* %2) #7, !dbg !670
  ret void, !dbg !671
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordRegisterRangePhysIndex(%struct.cGH* %GH, i32 %min, i32 %max, i32 %dir, i8* %coordname, i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !165, metadata !389), !dbg !672
  tail call void @llvm.dbg.value(metadata i32 %min, i64 0, metadata !166, metadata !389), !dbg !673
  tail call void @llvm.dbg.value(metadata i32 %max, i64 0, metadata !167, metadata !389), !dbg !674
  tail call void @llvm.dbg.value(metadata i32 %dir, i64 0, metadata !168, metadata !389), !dbg !675
  tail call void @llvm.dbg.value(metadata i8* %coordname, i64 0, metadata !169, metadata !389), !dbg !676
  tail call void @llvm.dbg.value(metadata i8* %systemname, i64 0, metadata !170, metadata !389), !dbg !677
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !172, metadata !389), !dbg !678
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !173, metadata !389), !dbg !679
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !680, !tbaa !395
  %2 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !681
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** %2) #6, !dbg !682
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !175, metadata !389), !dbg !683
  %4 = load %struct.Coordsystem** %coord_system, align 8, !dbg !684, !tbaa !395
  %5 = icmp eq %struct.Coordsystem* %4, null, !dbg !684
  br i1 %5, label %6, label %8, !dbg !686

; <label>:6                                       ; preds = %0
  %7 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 579, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str16, i64 0, i64 0), i8* %systemname) #6, !dbg !687
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !172, metadata !389), !dbg !678
  br label %.thread, !dbg !689

; <label>:8                                       ; preds = %0
  %9 = icmp sgt i32 %dir, -1, !dbg !690
  br i1 %9, label %13, label %.preheader, !dbg !693

.preheader:                                       ; preds = %8
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !175, metadata !389), !dbg !683
  %10 = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1, !dbg !694
  %11 = load i32* %10, align 4, !dbg !694, !tbaa !418
  %12 = icmp sgt i32 %11, 0, !dbg !698
  br i1 %12, label %.lr.ph, label %._crit_edge.thread, !dbg !699

; <label>:13                                      ; preds = %8
  %14 = icmp eq i32 %dir, 0, !dbg !700
  %.phi.trans.insert = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1
  %.pre7 = load i32* %.phi.trans.insert, align 4, !dbg !703, !tbaa !418
  %15 = icmp slt i32 %.pre7, %dir, !dbg !705
  %or.cond = or i1 %14, %15, !dbg !706
  br i1 %or.cond, label %._crit_edge6, label %17, !dbg !706

._crit_edge6:                                     ; preds = %13
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !175, metadata !389), !dbg !683
  %16 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 590, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8]* @.str17, i64 0, i64 0), i32 %dir, i32 %.pre7) #6, !dbg !707
  call void @llvm.dbg.value(metadata i32 -2, i64 0, metadata !172, metadata !389), !dbg !678
  %.pre8 = load %struct.Coordsystem** %coord_system, align 8, !dbg !708, !tbaa !395
  br label %17, !dbg !710

; <label>:17                                      ; preds = %13, %._crit_edge6
  %18 = phi %struct.Coordsystem* [ %.pre8, %._crit_edge6 ], [ %4, %13 ]
  %retval.0 = phi i32 [ -2, %._crit_edge6 ], [ 0, %13 ]
  %19 = add nsw i32 %dir, -1, !dbg !711
  %20 = sext i32 %19 to i64, !dbg !708
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !175, metadata !389), !dbg !683
  %21 = getelementptr inbounds %struct.Coordsystem* %18, i64 0, i32 3, !dbg !712
  %22 = load %struct.Coordprops** %21, align 8, !dbg !712, !tbaa !436
  %23 = getelementptr inbounds %struct.Coordprops* %22, i64 %20, i32 0, !dbg !713
  %24 = load i8** %23, align 8, !dbg !713, !tbaa !499
  %25 = icmp eq i8* %24, null, !dbg !708
  br i1 %25, label %26, label %46, !dbg !714

; <label>:26                                      ; preds = %17
  %27 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 601, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8]* @.str18, i64 0, i64 0), i32 %dir) #6, !dbg !715
  call void @llvm.dbg.value(metadata i32 -4, i64 0, metadata !172, metadata !389), !dbg !678
  br label %.thread

.lr.ph:                                           ; preds = %.preheader, %38
  %indvars.iv = phi i64 [ %indvars.iv.next, %38 ], [ 0, %.preheader ]
  %28 = phi %struct.Coordsystem* [ %39, %38 ], [ %4, %.preheader ]
  %vindex.04 = phi i32 [ %vindex.1, %38 ], [ -1, %.preheader ]
  %29 = getelementptr inbounds %struct.Coordsystem* %28, i64 0, i32 3, !dbg !717
  %30 = load %struct.Coordprops** %29, align 8, !dbg !717, !tbaa !436
  %31 = getelementptr inbounds %struct.Coordprops* %30, i64 %indvars.iv, i32 0, !dbg !720
  %32 = load i8** %31, align 8, !dbg !720, !tbaa !499
  %33 = icmp eq i8* %32, null, !dbg !721
  br i1 %33, label %38, label %34, !dbg !722

; <label>:34                                      ; preds = %.lr.ph
  %35 = call i32 @CCTK_Equals(i8* %32, i8* %coordname) #6, !dbg !723
  %36 = icmp eq i32 %35, 0, !dbg !723
  %37 = trunc i64 %indvars.iv to i32, !dbg !724
  %vindex.0.i.0 = select i1 %36, i32 %vindex.04, i32 %37, !dbg !724
  %.pre = load %struct.Coordsystem** %coord_system, align 8, !dbg !725, !tbaa !395
  br label %38, !dbg !724

; <label>:38                                      ; preds = %34, %.lr.ph
  %39 = phi %struct.Coordsystem* [ %28, %.lr.ph ], [ %.pre, %34 ], !dbg !699
  %vindex.1 = phi i32 [ %vindex.04, %.lr.ph ], [ %vindex.0.i.0, %34 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !699
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !175, metadata !389), !dbg !683
  %40 = getelementptr inbounds %struct.Coordsystem* %39, i64 0, i32 1, !dbg !694
  %41 = load i32* %40, align 4, !dbg !694, !tbaa !418
  %42 = sext i32 %41 to i64, !dbg !698
  %43 = icmp slt i64 %indvars.iv.next, %42, !dbg !698
  br i1 %43, label %.lr.ph, label %._crit_edge, !dbg !699

._crit_edge:                                      ; preds = %38
  %44 = icmp eq i32 %vindex.1, -1, !dbg !726
  br i1 %44, label %._crit_edge.thread, label %..thread1_crit_edge, !dbg !728

..thread1_crit_edge:                              ; preds = %._crit_edge
  %.phi.trans.insert9 = getelementptr inbounds %struct.Coordsystem* %39, i64 0, i32 3
  %.pre10 = load %struct.Coordprops** %.phi.trans.insert9, align 8, !dbg !729, !tbaa !436
  br label %.thread1, !dbg !728

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %45 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 620, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str19, i64 0, i64 0), i8* %coordname) #6, !dbg !733
  call void @llvm.dbg.value(metadata i32 -3, i64 0, metadata !172, metadata !389), !dbg !678
  br label %.thread, !dbg !735

; <label>:46                                      ; preds = %17
  br i1 %14, label %.thread, label %.thread1, !dbg !736

.thread1:                                         ; preds = %..thread1_crit_edge, %46
  %47 = phi %struct.Coordprops* [ %22, %46 ], [ %.pre10, %..thread1_crit_edge ]
  %48 = phi %struct.Coordsystem* [ %18, %46 ], [ %39, %..thread1_crit_edge ]
  %vindex.23 = phi i32 [ %19, %46 ], [ %vindex.1, %..thread1_crit_edge ]
  %retval.12 = phi i32 [ %retval.0, %46 ], [ 0, %..thread1_crit_edge ]
  %49 = sext i32 %vindex.23 to i64, !dbg !737
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !175, metadata !389), !dbg !683
  %50 = getelementptr inbounds %struct.Coordsystem* %48, i64 0, i32 3, !dbg !729
  %51 = getelementptr inbounds %struct.Coordprops* %47, i64 %49, i32 3, !dbg !738
  %52 = load %struct.Coordpropslistphysi** %51, align 8, !dbg !738, !tbaa !739
  %53 = icmp eq %struct.Coordpropslistphysi* %52, null, !dbg !737
  br i1 %53, label %63, label %54, !dbg !740

; <label>:54                                      ; preds = %.thread1
  %55 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 3, i32 633, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str20, i64 0, i64 0), i8* %systemname) #6, !dbg !741
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !175, metadata !389), !dbg !683
  %56 = load %struct.Coordsystem** %coord_system, align 8, !dbg !743, !tbaa !395
  %57 = getelementptr inbounds %struct.Coordsystem* %56, i64 0, i32 3, !dbg !744
  %58 = load %struct.Coordprops** %57, align 8, !dbg !744, !tbaa !436
  %59 = getelementptr inbounds %struct.Coordprops* %58, i64 %49, i32 3, !dbg !745
  %60 = load %struct.Coordpropslistphysi** %59, align 8, !dbg !745, !tbaa !739
  %61 = getelementptr inbounds %struct.Coordpropslistphysi* %60, i64 0, i32 1, !dbg !746
  store i32 %min, i32* %61, align 4, !dbg !747, !tbaa !748
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !175, metadata !389), !dbg !683
  %62 = getelementptr inbounds %struct.Coordpropslistphysi* %60, i64 0, i32 2, !dbg !750
  store i32 %max, i32* %62, align 4, !dbg !751, !tbaa !752
  br label %.thread, !dbg !753

; <label>:63                                      ; preds = %.thread1
  %64 = call i8* @malloc(i64 24) #6, !dbg !754
  %65 = icmp eq i8* %64, null, !dbg !756
  br i1 %65, label %66, label %68, !dbg !758

; <label>:66                                      ; preds = %63
  %67 = call i32 @CCTK_Warn(i32 1, i32 647, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8]* @.str21, i64 0, i64 0)) #6, !dbg !759
  call void @llvm.dbg.value(metadata i32 -5, i64 0, metadata !172, metadata !389), !dbg !678
  br label %.thread, !dbg !761

; <label>:68                                      ; preds = %63
  %69 = bitcast i8* %64 to %struct.cGH**, !dbg !762
  store %struct.cGH* %GH, %struct.cGH** %69, align 8, !dbg !764, !tbaa !765
  %70 = getelementptr inbounds i8* %64, i64 8, !dbg !766
  %71 = bitcast i8* %70 to i32*, !dbg !766
  store i32 %min, i32* %71, align 4, !dbg !767, !tbaa !748
  %72 = getelementptr inbounds i8* %64, i64 12, !dbg !768
  %73 = bitcast i8* %72 to i32*, !dbg !768
  store i32 %max, i32* %73, align 4, !dbg !769, !tbaa !752
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !175, metadata !389), !dbg !683
  %74 = load %struct.Coordprops** %50, align 8, !dbg !770, !tbaa !436
  %75 = getelementptr inbounds %struct.Coordprops* %74, i64 %49, i32 3, !dbg !771
  %76 = bitcast %struct.Coordpropslistphysi** %75 to i64*, !dbg !771
  %77 = load i64* %76, align 8, !dbg !771, !tbaa !739
  %78 = getelementptr inbounds i8* %64, i64 16, !dbg !772
  %79 = bitcast i8* %78 to i64*, !dbg !772
  store i64 %77, i64* %79, align 8, !dbg !772, !tbaa !773
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !175, metadata !389), !dbg !683
  %80 = bitcast %struct.Coordpropslistphysi** %75 to i8**, !dbg !774
  store i8* %64, i8** %80, align 8, !dbg !774, !tbaa !739
  br label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %26, %46, %66, %68, %54, %6
  %retval.2 = phi i32 [ %retval.12, %54 ], [ %retval.12, %68 ], [ -5, %66 ], [ %retval.0, %46 ], [ -1, %6 ], [ -3, %._crit_edge.thread ], [ -4, %26 ]
  ret i32 %retval.2, !dbg !775
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordregisterrangephysindex_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %lower, i32* nocapture readonly %upper, i32* nocapture readonly %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !180, metadata !389), !dbg !776
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !181, metadata !389), !dbg !777
  tail call void @llvm.dbg.value(metadata i32* %lower, i64 0, metadata !182, metadata !389), !dbg !778
  tail call void @llvm.dbg.value(metadata i32* %upper, i64 0, metadata !183, metadata !389), !dbg !779
  tail call void @llvm.dbg.value(metadata i32* %dir, i64 0, metadata !184, metadata !389), !dbg !780
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !185, metadata !389), !dbg !781
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !186, metadata !389), !dbg !781
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !187, metadata !389), !dbg !781
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !188, metadata !389), !dbg !781
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !782
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !189, metadata !389), !dbg !782
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !782
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !190, metadata !389), !dbg !782
  %3 = load i32* %lower, align 4, !dbg !783, !tbaa !440
  %4 = load i32* %upper, align 4, !dbg !784, !tbaa !440
  %5 = load i32* %dir, align 4, !dbg !785, !tbaa !440
  %6 = tail call i32 @CCTK_CoordRegisterRangePhysIndex(%struct.cGH* %GH, i32 %3, i32 %4, i32 %5, i8* %1, i8* %2) #7, !dbg !786
  store i32 %6, i32* %ierr, align 4, !dbg !787, !tbaa !440
  tail call void @free(i8* %1) #7, !dbg !788
  tail call void @free(i8* %2) #7, !dbg !789
  ret void, !dbg !790
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordSystemHandle(i8* %systemname) #1 {
  tail call void @llvm.dbg.value(metadata i8* %systemname, i64 0, metadata !195, metadata !389), !dbg !791
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !792, !tbaa !395
  %2 = tail call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** null) #6, !dbg !793
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !196, metadata !389), !dbg !794
  %3 = icmp slt i32 %2, 0, !dbg !795
  br i1 %3, label %4, label %6, !dbg !797

; <label>:4                                       ; preds = %0
  %5 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 3, i32 712, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str22, i64 0, i64 0), i8* %systemname) #6, !dbg !798
  br label %6, !dbg !800

; <label>:6                                       ; preds = %4, %0
  ret i32 %2, !dbg !801
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_CoordSystemName(i32 %handle) #1 {
  tail call void @llvm.dbg.value(metadata i32 %handle, i64 0, metadata !201, metadata !389), !dbg !802
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !803, !tbaa !395
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #6, !dbg !804
  %3 = icmp eq i8* %2, null, !dbg !805
  br i1 %3, label %8, label %4, !dbg !807

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %2, i64 16, !dbg !808
  %6 = bitcast i8* %5 to i8**, !dbg !808
  %7 = load i8** %6, align 8, !dbg !808, !tbaa !430
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !202, metadata !389), !dbg !810
  br label %8, !dbg !811

; <label>:8                                       ; preds = %0, %4
  %systemname.0 = phi i8* [ %7, %4 ], [ null, %0 ]
  ret i8* %systemname.0, !dbg !812
}

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordsystemhandle_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !208, metadata !389), !dbg !813
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !209, metadata !389), !dbg !814
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !210, metadata !389), !dbg !814
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !815
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !211, metadata !389), !dbg !815
  %2 = tail call i32 @CCTK_CoordSystemHandle(i8* %1) #7, !dbg !816
  store i32 %2, i32* %ierr, align 4, !dbg !817, !tbaa !440
  tail call void @free(i8* %1) #7, !dbg !818
  ret void, !dbg !819
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordIndex(i32 %dir, i8* %name, i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  tail call void @llvm.dbg.value(metadata i32 %dir, i64 0, metadata !214, metadata !389), !dbg !820
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !215, metadata !389), !dbg !821
  tail call void @llvm.dbg.value(metadata i8* %systemname, i64 0, metadata !216, metadata !389), !dbg !822
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !218, metadata !389), !dbg !823
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !219, metadata !389), !dbg !824
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !825, !tbaa !395
  %2 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !826
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** %2) #6, !dbg !827
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !220, metadata !389), !dbg !828
  %4 = load %struct.Coordsystem** %coord_system, align 8, !dbg !829, !tbaa !395
  %5 = icmp eq %struct.Coordsystem* %4, null, !dbg !829
  br i1 %5, label %6, label %8, !dbg !831

; <label>:6                                       ; preds = %0
  %7 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 829, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str23, i64 0, i64 0), i8* %systemname) #6, !dbg !832
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !218, metadata !389), !dbg !823
  br label %45, !dbg !834

; <label>:8                                       ; preds = %0
  %9 = icmp sgt i32 %dir, 0, !dbg !835
  %10 = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1, !dbg !838
  %11 = load i32* %10, align 4, !dbg !838, !tbaa !418
  br i1 %9, label %13, label %.preheader, !dbg !841

.preheader:                                       ; preds = %8
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !220, metadata !389), !dbg !828
  %12 = icmp sgt i32 %11, 0, !dbg !842
  br i1 %12, label %.lr.ph, label %._crit_edge.thread, !dbg !846

; <label>:13                                      ; preds = %8
  %14 = icmp slt i32 %11, %dir, !dbg !847
  br i1 %14, label %15, label %17, !dbg !848

; <label>:15                                      ; preds = %13
  %16 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 839, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str24, i64 0, i64 0), i32 %dir, i32 %11) #6, !dbg !849
  call void @llvm.dbg.value(metadata i32 -3, i64 0, metadata !218, metadata !389), !dbg !823
  br label %45, !dbg !851

; <label>:17                                      ; preds = %13
  %18 = add nsw i32 %dir, -1, !dbg !852
  %19 = sext i32 %18 to i64, !dbg !854
  %20 = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 3, !dbg !855
  %21 = load %struct.Coordprops** %20, align 8, !dbg !855, !tbaa !436
  %22 = getelementptr inbounds %struct.Coordprops* %21, i64 %19, i32 1, !dbg !856
  %23 = load i32* %22, align 4, !dbg !856, !tbaa !532
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !218, metadata !389), !dbg !823
  br label %45

.lr.ph:                                           ; preds = %.preheader, %._crit_edge5
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge5 ], [ 0, %.preheader ]
  %24 = phi %struct.Coordsystem* [ %38, %._crit_edge5 ], [ %4, %.preheader ]
  %foundit.03 = phi i32 [ %foundit.1, %._crit_edge5 ], [ 0, %.preheader ]
  %vindex.02 = phi i32 [ %vindex.1, %._crit_edge5 ], [ -1, %.preheader ]
  %25 = getelementptr inbounds %struct.Coordsystem* %24, i64 0, i32 3, !dbg !857
  %26 = load %struct.Coordprops** %25, align 8, !dbg !857, !tbaa !436
  %27 = getelementptr inbounds %struct.Coordprops* %26, i64 %indvars.iv, i32 0, !dbg !860
  %28 = load i8** %27, align 8, !dbg !860, !tbaa !499
  %29 = icmp eq i8* %28, null, !dbg !861
  br i1 %29, label %._crit_edge5, label %30, !dbg !862

; <label>:30                                      ; preds = %.lr.ph
  %31 = call i32 @CCTK_Equals(i8* %28, i8* %name) #6, !dbg !863
  %32 = icmp eq i32 %31, 0, !dbg !863
  %.pre = load %struct.Coordsystem** %coord_system, align 8, !dbg !864, !tbaa !395
  br i1 %32, label %._crit_edge5, label %33, !dbg !865

; <label>:33                                      ; preds = %30
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !219, metadata !389), !dbg !824
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !220, metadata !389), !dbg !828
  %34 = getelementptr inbounds %struct.Coordsystem* %.pre, i64 0, i32 3, !dbg !866
  %35 = load %struct.Coordprops** %34, align 8, !dbg !866, !tbaa !436
  %36 = getelementptr inbounds %struct.Coordprops* %35, i64 %indvars.iv, i32 1, !dbg !868
  %37 = load i32* %36, align 4, !dbg !868, !tbaa !532
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !218, metadata !389), !dbg !823
  br label %._crit_edge5, !dbg !869

._crit_edge5:                                     ; preds = %30, %.lr.ph, %33
  %38 = phi %struct.Coordsystem* [ %.pre, %33 ], [ %24, %.lr.ph ], [ %.pre, %30 ], !dbg !846
  %vindex.1 = phi i32 [ %37, %33 ], [ %vindex.02, %.lr.ph ], [ %vindex.02, %30 ]
  %foundit.1 = phi i32 [ 1, %33 ], [ %foundit.03, %.lr.ph ], [ %foundit.03, %30 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !846
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !220, metadata !389), !dbg !828
  %39 = getelementptr inbounds %struct.Coordsystem* %38, i64 0, i32 1, !dbg !870
  %40 = load i32* %39, align 4, !dbg !870, !tbaa !418
  %41 = sext i32 %40 to i64, !dbg !842
  %42 = icmp slt i64 %indvars.iv.next, %41, !dbg !842
  br i1 %42, label %.lr.ph, label %._crit_edge, !dbg !846

._crit_edge:                                      ; preds = %._crit_edge5
  %43 = icmp eq i32 %foundit.1, 0, !dbg !871
  br i1 %43, label %._crit_edge.thread, label %45, !dbg !873

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %44 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 862, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str25, i64 0, i64 0), i8* %name) #6, !dbg !874
  call void @llvm.dbg.value(metadata i32 -2, i64 0, metadata !218, metadata !389), !dbg !823
  br label %45, !dbg !876

; <label>:45                                      ; preds = %17, %15, %._crit_edge.thread, %._crit_edge, %6
  %vindex.2 = phi i32 [ -3, %15 ], [ %23, %17 ], [ -2, %._crit_edge.thread ], [ %vindex.1, %._crit_edge ], [ -1, %6 ]
  ret i32 %vindex.2, !dbg !877
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordindex_(i32* nocapture %vindex, i32* nocapture readonly %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  tail call void @llvm.dbg.value(metadata i32* %vindex, i64 0, metadata !223, metadata !389), !dbg !878
  tail call void @llvm.dbg.value(metadata i32* %dir, i64 0, metadata !224, metadata !389), !dbg !879
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !225, metadata !389), !dbg !880
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !226, metadata !389), !dbg !880
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !227, metadata !389), !dbg !880
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !228, metadata !389), !dbg !880
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !881
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !229, metadata !389), !dbg !881
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !881
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !230, metadata !389), !dbg !881
  %3 = load i32* %dir, align 4, !dbg !882, !tbaa !440
  %4 = tail call i32 @CCTK_CoordIndex(i32 %3, i8* %1, i8* %2) #7, !dbg !883
  store i32 %4, i32* %vindex, align 4, !dbg !884, !tbaa !440
  tail call void @free(i8* %1) #7, !dbg !885
  tail call void @free(i8* %2) #7, !dbg !886
  ret void, !dbg !887
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordSystemDim(i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  tail call void @llvm.dbg.value(metadata i8* %systemname, i64 0, metadata !233, metadata !389), !dbg !888
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !889, !tbaa !395
  %2 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !890
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** %2) #6, !dbg !891
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !235, metadata !389), !dbg !892
  %4 = load %struct.Coordsystem** %coord_system, align 8, !dbg !893, !tbaa !395
  %5 = icmp eq %struct.Coordsystem* %4, null, !dbg !893
  br i1 %5, label %6, label %8, !dbg !895

; <label>:6                                       ; preds = %0
  %7 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 893, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str26, i64 0, i64 0), i8* %systemname) #6, !dbg !896
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !234, metadata !389), !dbg !898
  br label %11, !dbg !899

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1, !dbg !900
  %10 = load i32* %9, align 4, !dbg !900, !tbaa !418
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !234, metadata !389), !dbg !898
  br label %11

; <label>:11                                      ; preds = %8, %6
  %dim.0 = phi i32 [ %10, %8 ], [ -1, %6 ]
  ret i32 %dim.0, !dbg !902
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordsystemdim_(i32* nocapture %dim, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %dim, i64 0, metadata !238, metadata !389), !dbg !903
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !239, metadata !389), !dbg !904
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !240, metadata !389), !dbg !904
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !905
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !241, metadata !389), !dbg !905
  %2 = tail call i32 @CCTK_CoordSystemDim(i8* %1) #7, !dbg !906
  store i32 %2, i32* %dim, align 4, !dbg !907, !tbaa !440
  tail call void @free(i8* %1) #7, !dbg !908
  ret void, !dbg !909
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordDir(i8* %name, i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !246, metadata !389), !dbg !910
  tail call void @llvm.dbg.value(metadata i8* %systemname, i64 0, metadata !247, metadata !389), !dbg !911
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !249, metadata !389), !dbg !912
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !913, !tbaa !395
  %2 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !914
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** %2) #6, !dbg !915
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !250, metadata !389), !dbg !916
  %4 = load %struct.Coordsystem** %coord_system, align 8, !dbg !917, !tbaa !395
  %5 = icmp eq %struct.Coordsystem* %4, null, !dbg !917
  br i1 %5, label %9, label %.preheader, !dbg !919

.preheader:                                       ; preds = %0
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !250, metadata !389), !dbg !916
  %6 = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 1, !dbg !920
  %7 = load i32* %6, align 4, !dbg !920, !tbaa !418
  %8 = icmp sgt i32 %7, 0, !dbg !924
  br i1 %8, label %.lr.ph, label %._crit_edge.thread, !dbg !925

; <label>:9                                       ; preds = %0
  %10 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 944, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str27, i64 0, i64 0), i8* %systemname) #6, !dbg !926
  br label %26, !dbg !928

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %11 = phi %struct.Coordsystem* [ %19, %.lr.ph ], [ %4, %.preheader ]
  %dir.02 = phi i32 [ %dir.0., %.lr.ph ], [ -1, %.preheader ]
  %12 = getelementptr inbounds %struct.Coordsystem* %11, i64 0, i32 3, !dbg !929
  %13 = load %struct.Coordprops** %12, align 8, !dbg !929, !tbaa !436
  %14 = getelementptr inbounds %struct.Coordprops* %13, i64 %indvars.iv, i32 0, !dbg !932
  %15 = load i8** %14, align 8, !dbg !932, !tbaa !499
  %16 = call i32 @CCTK_Equals(i8* %15, i8* %name) #6, !dbg !933
  %17 = icmp eq i32 %16, 0, !dbg !933
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !925
  %18 = trunc i64 %indvars.iv.next to i32, !dbg !934
  %dir.0. = select i1 %17, i32 %dir.02, i32 %18, !dbg !934
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !250, metadata !389), !dbg !916
  %19 = load %struct.Coordsystem** %coord_system, align 8, !dbg !935, !tbaa !395
  %20 = getelementptr inbounds %struct.Coordsystem* %19, i64 0, i32 1, !dbg !920
  %21 = load i32* %20, align 4, !dbg !920, !tbaa !418
  %22 = sext i32 %21 to i64, !dbg !924
  %23 = icmp slt i64 %indvars.iv.next, %22, !dbg !924
  br i1 %23, label %.lr.ph, label %._crit_edge, !dbg !925

._crit_edge:                                      ; preds = %.lr.ph
  %24 = icmp slt i32 %dir.0., 1, !dbg !936
  br i1 %24, label %._crit_edge.thread, label %26, !dbg !938

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %25 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 958, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str28, i64 0, i64 0), i8* %name, i8* %systemname) #6, !dbg !939
  call void @llvm.dbg.value(metadata i32 -2, i64 0, metadata !249, metadata !389), !dbg !912
  br label %26, !dbg !941

; <label>:26                                      ; preds = %._crit_edge, %._crit_edge.thread, %9
  %dir.2 = phi i32 [ -2, %._crit_edge.thread ], [ %dir.0., %._crit_edge ], [ -1, %9 ]
  ret i32 %dir.2, !dbg !942
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coorddir_(i32* nocapture %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  tail call void @llvm.dbg.value(metadata i32* %dir, i64 0, metadata !255, metadata !389), !dbg !943
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !256, metadata !389), !dbg !944
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !257, metadata !389), !dbg !944
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !258, metadata !389), !dbg !944
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !259, metadata !389), !dbg !944
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !945
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !260, metadata !389), !dbg !945
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !945
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !261, metadata !389), !dbg !945
  %3 = tail call i32 @CCTK_CoordDir(i8* %1, i8* %2) #7, !dbg !946
  store i32 %3, i32* %dir, align 4, !dbg !947, !tbaa !440
  tail call void @free(i8* %1) #7, !dbg !948
  tail call void @free(i8* %2) #7, !dbg !949
  ret void, !dbg !950
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordRange(%struct.cGH* readnone %GH, double* %lower, double* %upper, i32 %coorddir, i8* %coordname, i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !268, metadata !389), !dbg !951
  tail call void @llvm.dbg.value(metadata double* %lower, i64 0, metadata !269, metadata !389), !dbg !952
  tail call void @llvm.dbg.value(metadata double* %upper, i64 0, metadata !270, metadata !389), !dbg !953
  tail call void @llvm.dbg.value(metadata i32 %coorddir, i64 0, metadata !271, metadata !389), !dbg !954
  tail call void @llvm.dbg.value(metadata i8* %coordname, i64 0, metadata !272, metadata !389), !dbg !955
  tail call void @llvm.dbg.value(metadata i8* %systemname, i64 0, metadata !273, metadata !389), !dbg !956
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !275, metadata !389), !dbg !957
  %1 = icmp eq double* %lower, null, !dbg !958
  %2 = icmp eq double* %upper, null, !dbg !960
  %or.cond = or i1 %1, %2, !dbg !961
  br i1 %or.cond, label %3, label %5, !dbg !961

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_Warn(i32 2, i32 1050, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str29, i64 0, i64 0)) #6, !dbg !962
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !275, metadata !389), !dbg !957
  br label %72, !dbg !964

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %coorddir, 1, !dbg !965
  %7 = icmp eq i8* %coordname, null, !dbg !967
  %or.cond3 = and i1 %6, %7, !dbg !968
  br i1 %or.cond3, label %8, label %10, !dbg !968

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CCTK_Warn(i32 2, i32 1056, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str30, i64 0, i64 0)) #6, !dbg !969
  tail call void @llvm.dbg.value(metadata i32 -2, i64 0, metadata !275, metadata !389), !dbg !957
  br label %72, !dbg !971

; <label>:10                                      ; preds = %5
  %11 = icmp eq i8* %systemname, null, !dbg !972
  br i1 %11, label %12, label %14, !dbg !974

; <label>:12                                      ; preds = %10
  %13 = tail call i32 @CCTK_Warn(i32 2, i32 1062, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str31, i64 0, i64 0)) #6, !dbg !975
  tail call void @llvm.dbg.value(metadata i32 -3, i64 0, metadata !275, metadata !389), !dbg !957
  br label %72, !dbg !977

; <label>:14                                      ; preds = %10
  %15 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !978, !tbaa !395
  %16 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !980
  %17 = call i32 @Util_GetHandle(%struct.cHandledData* %15, i8* %systemname, i8** %16) #6, !dbg !981
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !278, metadata !389), !dbg !982
  %18 = load %struct.Coordsystem** %coord_system, align 8, !dbg !983, !tbaa !395
  %19 = icmp eq %struct.Coordsystem* %18, null, !dbg !983
  br i1 %19, label %20, label %22, !dbg !985

; <label>:20                                      ; preds = %14
  %21 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1072, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str32, i64 0, i64 0), i8* %systemname) #6, !dbg !986
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !275, metadata !389), !dbg !957
  br label %72, !dbg !988

; <label>:22                                      ; preds = %14
  %23 = icmp sgt i32 %coorddir, 0, !dbg !989
  br i1 %23, label %46, label %.preheader, !dbg !992

.preheader:                                       ; preds = %22
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !278, metadata !389), !dbg !982
  %24 = getelementptr inbounds %struct.Coordsystem* %18, i64 0, i32 1, !dbg !993
  %25 = load i32* %24, align 4, !dbg !993, !tbaa !418
  %26 = icmp sgt i32 %25, 0, !dbg !997
  br i1 %26, label %.lr.ph13, label %.thread5, !dbg !998

; <label>:27                                      ; preds = %.lr.ph13
  %28 = getelementptr inbounds %struct.Coordsystem* %39, i64 0, i32 1, !dbg !993
  %29 = load i32* %28, align 4, !dbg !993, !tbaa !418
  %30 = sext i32 %29 to i64, !dbg !997
  %31 = icmp slt i64 %indvars.iv.next, %30, !dbg !997
  br i1 %31, label %.lr.ph13, label %.thread5, !dbg !998

.lr.ph13:                                         ; preds = %.preheader, %27
  %indvars.iv = phi i64 [ %indvars.iv.next, %27 ], [ 0, %.preheader ]
  %32 = phi %struct.Coordsystem* [ %39, %27 ], [ %18, %.preheader ]
  %33 = getelementptr inbounds %struct.Coordsystem* %32, i64 0, i32 3, !dbg !999
  %34 = load %struct.Coordprops** %33, align 8, !dbg !999, !tbaa !436
  %35 = getelementptr inbounds %struct.Coordprops* %34, i64 %indvars.iv, i32 0, !dbg !1002
  %36 = load i8** %35, align 8, !dbg !1002, !tbaa !499
  %37 = call i32 @CCTK_Equals(i8* %36, i8* %coordname) #6, !dbg !1003
  %38 = icmp eq i32 %37, 0, !dbg !1003
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !998
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !278, metadata !389), !dbg !982
  %39 = load %struct.Coordsystem** %coord_system, align 8, !dbg !1004, !tbaa !395
  br i1 %38, label %27, label %40, !dbg !1005

; <label>:40                                      ; preds = %.lr.ph13
  %41 = getelementptr inbounds %struct.Coordsystem* %39, i64 0, i32 3, !dbg !1006
  %42 = load %struct.Coordprops** %41, align 8, !dbg !1006, !tbaa !436
  %43 = getelementptr inbounds %struct.Coordprops* %42, i64 %indvars.iv, !dbg !1008
  call void @llvm.dbg.value(metadata %struct.Coordprops* %43, i64 0, metadata !279, metadata !389), !dbg !1009
  %44 = icmp eq %struct.Coordprops* %43, null, !dbg !1010
  br i1 %44, label %.thread5, label %.thread6, !dbg !1012

.thread5:                                         ; preds = %27, %.preheader, %40
  %45 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1095, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str33, i64 0, i64 0), i8* %coordname) #6, !dbg !1013
  call void @llvm.dbg.value(metadata i32 -4, i64 0, metadata !275, metadata !389), !dbg !957
  br label %72, !dbg !1015

; <label>:46                                      ; preds = %22
  %47 = add nsw i32 %coorddir, -1, !dbg !1016
  %48 = sext i32 %47 to i64, !dbg !1018
  %49 = getelementptr inbounds %struct.Coordsystem* %18, i64 0, i32 3, !dbg !1019
  %50 = load %struct.Coordprops** %49, align 8, !dbg !1019, !tbaa !436
  %51 = getelementptr inbounds %struct.Coordprops* %50, i64 %48, !dbg !1018
  call void @llvm.dbg.value(metadata %struct.Coordprops* %51, i64 0, metadata !279, metadata !389), !dbg !1009
  %52 = icmp eq %struct.Coordprops* %51, null, !dbg !1020
  br i1 %52, label %72, label %.thread6, !dbg !1015

.thread6:                                         ; preds = %40, %46
  %coord.18 = phi %struct.Coordprops* [ %51, %46 ], [ %43, %40 ]
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !276, metadata !389), !dbg !1022
  %53 = getelementptr inbounds %struct.Coordprops* %coord.18, i64 0, i32 2, !dbg !1023
  %curr.09 = load %struct.Coordpropslistcomp** %53, align 8, !dbg !1023
  %54 = icmp eq %struct.Coordpropslistcomp* %curr.09, null, !dbg !1026
  br i1 %54, label %._crit_edge, label %.lr.ph, !dbg !1026

.lr.ph:                                           ; preds = %.thread6
  %55 = bitcast double* %lower to i64*, !dbg !1027
  %56 = bitcast double* %upper to i64*, !dbg !1032
  br label %57, !dbg !1026

; <label>:57                                      ; preds = %.lr.ph, %68
  %curr.011 = phi %struct.Coordpropslistcomp* [ %curr.09, %.lr.ph ], [ %curr.0, %68 ]
  %gotrange.010 = phi i32 [ 0, %.lr.ph ], [ %gotrange.1, %68 ]
  %58 = getelementptr inbounds %struct.Coordpropslistcomp* %curr.011, i64 0, i32 0, !dbg !1033
  %59 = load %struct.cGH** %58, align 8, !dbg !1033, !tbaa !645
  %60 = icmp eq %struct.cGH* %59, %GH, !dbg !1034
  br i1 %60, label %61, label %68, !dbg !1035

; <label>:61                                      ; preds = %57
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !276, metadata !389), !dbg !1022
  %62 = getelementptr inbounds %struct.Coordpropslistcomp* %curr.011, i64 0, i32 1, !dbg !1036
  %63 = bitcast double* %62 to i64*, !dbg !1036
  %64 = load i64* %63, align 8, !dbg !1036, !tbaa !627
  store i64 %64, i64* %55, align 8, !dbg !1027, !tbaa !664
  %65 = getelementptr inbounds %struct.Coordpropslistcomp* %curr.011, i64 0, i32 2, !dbg !1037
  %66 = bitcast double* %65 to i64*, !dbg !1037
  %67 = load i64* %66, align 8, !dbg !1037, !tbaa !632
  store i64 %67, i64* %56, align 8, !dbg !1032, !tbaa !664
  br label %68, !dbg !1038

; <label>:68                                      ; preds = %57, %61
  %gotrange.1 = phi i32 [ 1, %61 ], [ %gotrange.010, %57 ]
  %69 = getelementptr inbounds %struct.Coordpropslistcomp* %curr.011, i64 0, i32 3, !dbg !1039
  %curr.0 = load %struct.Coordpropslistcomp** %69, align 8, !dbg !1023
  %70 = icmp eq %struct.Coordpropslistcomp* %curr.0, null, !dbg !1026
  br i1 %70, label %._crit_edge, label %57, !dbg !1026

._crit_edge:                                      ; preds = %68, %.thread6
  %gotrange.0.lcssa = phi i32 [ 0, %.thread6 ], [ %gotrange.1, %68 ]
  %71 = icmp eq i32 %gotrange.0.lcssa, 0, !dbg !1040
  call void @llvm.dbg.value(metadata i32 -6, i64 0, metadata !275, metadata !389), !dbg !957
  %.retval.0 = select i1 %71, i32 -6, i32 0, !dbg !1042
  ret i32 %.retval.0, !dbg !1042

; <label>:72                                      ; preds = %.thread5, %46, %8, %20, %12, %3
  %retval.1 = phi i32 [ -1, %3 ], [ -2, %8 ], [ -3, %12 ], [ 0, %46 ], [ -1, %20 ], [ -4, %.thread5 ]
  ret i32 %retval.1, !dbg !1043
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordrange_(i32* nocapture %ierr, %struct.cGH* %GH, double* %lower, double* %upper, i32* nocapture readonly %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !284, metadata !389), !dbg !1044
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !285, metadata !389), !dbg !1045
  tail call void @llvm.dbg.value(metadata double* %lower, i64 0, metadata !286, metadata !389), !dbg !1046
  tail call void @llvm.dbg.value(metadata double* %upper, i64 0, metadata !287, metadata !389), !dbg !1047
  tail call void @llvm.dbg.value(metadata i32* %dir, i64 0, metadata !288, metadata !389), !dbg !1048
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !289, metadata !389), !dbg !1049
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !290, metadata !389), !dbg !1049
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !291, metadata !389), !dbg !1049
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !292, metadata !389), !dbg !1049
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !1050
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !293, metadata !389), !dbg !1050
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !1050
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !294, metadata !389), !dbg !1050
  %3 = load i32* %dir, align 4, !dbg !1051, !tbaa !440
  %4 = tail call i32 @CCTK_CoordRange(%struct.cGH* %GH, double* %lower, double* %upper, i32 %3, i8* %1, i8* %2) #7, !dbg !1052
  store i32 %4, i32* %ierr, align 4, !dbg !1053, !tbaa !440
  tail call void @free(i8* %1) #7, !dbg !1054
  tail call void @free(i8* %2) #7, !dbg !1055
  ret void, !dbg !1056
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordRangePhysIndex(%struct.cGH* readnone %GH, i32* %lower, i32* %upper, i32 %coorddir, i8* %coordname, i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !299, metadata !389), !dbg !1057
  tail call void @llvm.dbg.value(metadata i32* %lower, i64 0, metadata !300, metadata !389), !dbg !1058
  tail call void @llvm.dbg.value(metadata i32* %upper, i64 0, metadata !301, metadata !389), !dbg !1059
  tail call void @llvm.dbg.value(metadata i32 %coorddir, i64 0, metadata !302, metadata !389), !dbg !1060
  tail call void @llvm.dbg.value(metadata i8* %coordname, i64 0, metadata !303, metadata !389), !dbg !1061
  tail call void @llvm.dbg.value(metadata i8* %systemname, i64 0, metadata !304, metadata !389), !dbg !1062
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !306, metadata !389), !dbg !1063
  %1 = icmp eq i32* %lower, null, !dbg !1064
  %2 = icmp eq i32* %upper, null, !dbg !1066
  %or.cond = or i1 %1, %2, !dbg !1067
  br i1 %or.cond, label %3, label %5, !dbg !1067

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_Warn(i32 2, i32 1223, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str34, i64 0, i64 0)) #6, !dbg !1068
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !306, metadata !389), !dbg !1063
  br label %67, !dbg !1070

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %coorddir, 1, !dbg !1071
  %7 = icmp eq i8* %coordname, null, !dbg !1073
  %or.cond3 = and i1 %6, %7, !dbg !1074
  br i1 %or.cond3, label %8, label %10, !dbg !1074

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CCTK_Warn(i32 2, i32 1230, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str35, i64 0, i64 0)) #6, !dbg !1075
  tail call void @llvm.dbg.value(metadata i32 -2, i64 0, metadata !306, metadata !389), !dbg !1063
  br label %67, !dbg !1077

; <label>:10                                      ; preds = %5
  %11 = icmp eq i8* %systemname, null, !dbg !1078
  br i1 %11, label %12, label %14, !dbg !1080

; <label>:12                                      ; preds = %10
  %13 = tail call i32 @CCTK_Warn(i32 2, i32 1236, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str36, i64 0, i64 0)) #6, !dbg !1081
  tail call void @llvm.dbg.value(metadata i32 -3, i64 0, metadata !306, metadata !389), !dbg !1063
  br label %67, !dbg !1083

; <label>:14                                      ; preds = %10
  %15 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !1084, !tbaa !395
  %16 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !1086
  %17 = call i32 @Util_GetHandle(%struct.cHandledData* %15, i8* %systemname, i8** %16) #6, !dbg !1087
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !308, metadata !389), !dbg !1088
  %18 = load %struct.Coordsystem** %coord_system, align 8, !dbg !1089, !tbaa !395
  %19 = icmp eq %struct.Coordsystem* %18, null, !dbg !1089
  br i1 %19, label %20, label %22, !dbg !1091

; <label>:20                                      ; preds = %14
  %21 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1246, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str37, i64 0, i64 0), i8* %systemname) #6, !dbg !1092
  call void @llvm.dbg.value(metadata i32 -4, i64 0, metadata !306, metadata !389), !dbg !1063
  br label %67, !dbg !1094

; <label>:22                                      ; preds = %14
  %23 = icmp sgt i32 %coorddir, 0, !dbg !1095
  br i1 %23, label %46, label %.preheader, !dbg !1098

.preheader:                                       ; preds = %22
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !308, metadata !389), !dbg !1088
  %24 = getelementptr inbounds %struct.Coordsystem* %18, i64 0, i32 1, !dbg !1099
  %25 = load i32* %24, align 4, !dbg !1099, !tbaa !418
  %26 = icmp sgt i32 %25, 0, !dbg !1103
  br i1 %26, label %.lr.ph14, label %.thread5, !dbg !1104

; <label>:27                                      ; preds = %.lr.ph14
  %28 = getelementptr inbounds %struct.Coordsystem* %39, i64 0, i32 1, !dbg !1099
  %29 = load i32* %28, align 4, !dbg !1099, !tbaa !418
  %30 = sext i32 %29 to i64, !dbg !1103
  %31 = icmp slt i64 %indvars.iv.next, %30, !dbg !1103
  br i1 %31, label %.lr.ph14, label %.thread5, !dbg !1104

.lr.ph14:                                         ; preds = %.preheader, %27
  %indvars.iv = phi i64 [ %indvars.iv.next, %27 ], [ 0, %.preheader ]
  %32 = phi %struct.Coordsystem* [ %39, %27 ], [ %18, %.preheader ]
  %33 = getelementptr inbounds %struct.Coordsystem* %32, i64 0, i32 3, !dbg !1105
  %34 = load %struct.Coordprops** %33, align 8, !dbg !1105, !tbaa !436
  %35 = getelementptr inbounds %struct.Coordprops* %34, i64 %indvars.iv, i32 0, !dbg !1108
  %36 = load i8** %35, align 8, !dbg !1108, !tbaa !499
  %37 = call i32 @CCTK_Equals(i8* %36, i8* %coordname) #6, !dbg !1109
  %38 = icmp eq i32 %37, 0, !dbg !1109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1104
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !308, metadata !389), !dbg !1088
  %39 = load %struct.Coordsystem** %coord_system, align 8, !dbg !1110, !tbaa !395
  br i1 %38, label %27, label %40, !dbg !1111

; <label>:40                                      ; preds = %.lr.ph14
  %41 = getelementptr inbounds %struct.Coordsystem* %39, i64 0, i32 3, !dbg !1112
  %42 = load %struct.Coordprops** %41, align 8, !dbg !1112, !tbaa !436
  %43 = getelementptr inbounds %struct.Coordprops* %42, i64 %indvars.iv, !dbg !1114
  call void @llvm.dbg.value(metadata %struct.Coordprops* %43, i64 0, metadata !309, metadata !389), !dbg !1115
  %44 = icmp eq %struct.Coordprops* %43, null, !dbg !1116
  br i1 %44, label %.thread5, label %.thread6, !dbg !1118

.thread5:                                         ; preds = %27, %.preheader, %40
  %45 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1269, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str38, i64 0, i64 0), i8* %coordname) #6, !dbg !1119
  call void @llvm.dbg.value(metadata i32 -5, i64 0, metadata !306, metadata !389), !dbg !1063
  br label %67, !dbg !1121

; <label>:46                                      ; preds = %22
  %47 = add nsw i32 %coorddir, -1, !dbg !1122
  %48 = sext i32 %47 to i64, !dbg !1124
  %49 = getelementptr inbounds %struct.Coordsystem* %18, i64 0, i32 3, !dbg !1125
  %50 = load %struct.Coordprops** %49, align 8, !dbg !1125, !tbaa !436
  %51 = getelementptr inbounds %struct.Coordprops* %50, i64 %48, !dbg !1124
  call void @llvm.dbg.value(metadata %struct.Coordprops* %51, i64 0, metadata !309, metadata !389), !dbg !1115
  %52 = icmp eq %struct.Coordprops* %51, null, !dbg !1126
  br i1 %52, label %67, label %.thread6, !dbg !1121

.thread6:                                         ; preds = %40, %46
  %coord.18 = phi %struct.Coordprops* [ %51, %46 ], [ %43, %40 ]
  %53 = getelementptr inbounds %struct.Coordprops* %coord.18, i64 0, i32 3, !dbg !1128
  %curr.010 = load %struct.Coordpropslistphysi** %53, align 8, !dbg !1128
  %cond11 = icmp eq %struct.Coordpropslistphysi* %curr.010, null, !dbg !1131
  br i1 %cond11, label %._crit_edge, label %.lr.ph, !dbg !1131

.lr.ph:                                           ; preds = %.thread6, %62
  %curr.012 = phi %struct.Coordpropslistphysi* [ %curr.0, %62 ], [ %curr.010, %.thread6 ]
  %54 = getelementptr inbounds %struct.Coordpropslistphysi* %curr.012, i64 0, i32 0, !dbg !1132
  %55 = load %struct.cGH** %54, align 8, !dbg !1132, !tbaa !765
  %56 = icmp eq %struct.cGH* %55, %GH, !dbg !1136
  br i1 %56, label %57, label %62, !dbg !1137

; <label>:57                                      ; preds = %.lr.ph
  %58 = getelementptr inbounds %struct.Coordpropslistphysi* %curr.012, i64 0, i32 1, !dbg !1138
  %59 = load i32* %58, align 4, !dbg !1138, !tbaa !748
  store i32 %59, i32* %lower, align 4, !dbg !1140, !tbaa !440
  %60 = getelementptr inbounds %struct.Coordpropslistphysi* %curr.012, i64 0, i32 2, !dbg !1141
  %61 = load i32* %60, align 4, !dbg !1141, !tbaa !752
  store i32 %61, i32* %upper, align 4, !dbg !1142, !tbaa !440
  br label %67

; <label>:62                                      ; preds = %.lr.ph
  %63 = getelementptr inbounds %struct.Coordpropslistphysi* %curr.012, i64 0, i32 3, !dbg !1143
  %curr.0 = load %struct.Coordpropslistphysi** %63, align 8, !dbg !1128
  %cond = icmp eq %struct.Coordpropslistphysi* %curr.0, null, !dbg !1131
  br i1 %cond, label %._crit_edge, label %.lr.ph, !dbg !1131

._crit_edge:                                      ; preds = %62, %.thread6
  %64 = getelementptr inbounds %struct.Coordprops* %coord.18, i64 0, i32 0, !dbg !1144
  %65 = load i8** %64, align 8, !dbg !1144, !tbaa !499
  %66 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1300, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([90 x i8]* @.str39, i64 0, i64 0), i8* %65, i8* %systemname) #6, !dbg !1147
  call void @llvm.dbg.value(metadata i32 -6, i64 0, metadata !306, metadata !389), !dbg !1063
  br label %67, !dbg !1148

; <label>:67                                      ; preds = %57, %.thread5, %46, %8, %20, %._crit_edge, %12, %3
  %retval.1 = phi i32 [ -1, %3 ], [ -2, %8 ], [ -3, %12 ], [ -6, %._crit_edge ], [ 0, %57 ], [ 0, %46 ], [ -4, %20 ], [ -5, %.thread5 ]
  ret i32 %retval.1, !dbg !1149
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordrangephysindex_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %lower, i32* %upper, i32* nocapture readonly %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !314, metadata !389), !dbg !1150
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !315, metadata !389), !dbg !1151
  tail call void @llvm.dbg.value(metadata i32* %lower, i64 0, metadata !316, metadata !389), !dbg !1152
  tail call void @llvm.dbg.value(metadata i32* %upper, i64 0, metadata !317, metadata !389), !dbg !1153
  tail call void @llvm.dbg.value(metadata i32* %dir, i64 0, metadata !318, metadata !389), !dbg !1154
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !319, metadata !389), !dbg !1155
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !320, metadata !389), !dbg !1155
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !321, metadata !389), !dbg !1155
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !322, metadata !389), !dbg !1155
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !1156
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !323, metadata !389), !dbg !1156
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !1156
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !324, metadata !389), !dbg !1156
  %3 = load i32* %dir, align 4, !dbg !1157, !tbaa !440
  %4 = tail call i32 @CCTK_CoordRangePhysIndex(%struct.cGH* %GH, i32* %lower, i32* %upper, i32 %3, i8* %1, i8* %2) #7, !dbg !1158
  store i32 %4, i32* %ierr, align 4, !dbg !1159, !tbaa !440
  tail call void @free(i8* %1) #7, !dbg !1160
  tail call void @free(i8* %2) #7, !dbg !1161
  ret void, !dbg !1162
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CoordLocalRange(%struct.cGH* readonly %GH, double* nocapture %lower, double* nocapture %upper, i32 %dir, i8* %name, i8* %systemname) #1 {
  %global_lower = alloca double, align 8
  %global_upper = alloca double, align 8
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !327, metadata !389), !dbg !1163
  tail call void @llvm.dbg.value(metadata double* %lower, i64 0, metadata !328, metadata !389), !dbg !1164
  tail call void @llvm.dbg.value(metadata double* %upper, i64 0, metadata !329, metadata !389), !dbg !1165
  tail call void @llvm.dbg.value(metadata i32 %dir, i64 0, metadata !330, metadata !389), !dbg !1166
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !331, metadata !389), !dbg !1167
  tail call void @llvm.dbg.value(metadata i8* %systemname, i64 0, metadata !332, metadata !389), !dbg !1168
  tail call void @llvm.dbg.value(metadata double* %global_lower, i64 0, metadata !335, metadata !389), !dbg !1169
  tail call void @llvm.dbg.value(metadata double* %global_upper, i64 0, metadata !336, metadata !389), !dbg !1170
  %1 = call i32 @CCTK_CoordRange(%struct.cGH* %GH, double* %global_lower, double* %global_upper, i32 %dir, i8* %name, i8* %systemname) #7, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !333, metadata !389), !dbg !1172
  %2 = icmp sgt i32 %1, -1, !dbg !1173
  br i1 %2, label %3, label %31, !dbg !1175

; <label>:3                                       ; preds = %0
  %4 = icmp sgt i32 %dir, 0, !dbg !1176
  br i1 %4, label %7, label %5, !dbg !1179

; <label>:5                                       ; preds = %3
  %6 = call i32 @CCTK_CoordDir(i8* %name, i8* %systemname) #7, !dbg !1180
  call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !334, metadata !389), !dbg !1182
  br label %7

; <label>:7                                       ; preds = %3, %5
  %realdir.0 = phi i32 [ %6, %5 ], [ %dir, %3 ]
  call void @llvm.dbg.value(metadata double* %global_lower, i64 0, metadata !335, metadata !389), !dbg !1169
  %8 = load double* %global_lower, align 8, !dbg !1183, !tbaa !664
  %9 = add nsw i32 %realdir.0, -1, !dbg !1184
  %10 = sext i32 %9 to i64, !dbg !1185
  %11 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4, !dbg !1186
  %12 = load i32** %11, align 8, !dbg !1186, !tbaa !1187
  %13 = getelementptr inbounds i32* %12, i64 %10, !dbg !1185
  %14 = load i32* %13, align 4, !dbg !1185, !tbaa !440
  %15 = sitofp i32 %14 to double, !dbg !1185
  %16 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10, !dbg !1189
  %17 = load double** %16, align 8, !dbg !1189, !tbaa !1190
  %18 = getelementptr inbounds double* %17, i64 %10, !dbg !1191
  %19 = load double* %18, align 8, !dbg !1191, !tbaa !664
  %20 = fmul double %15, %19, !dbg !1192
  %21 = fadd double %8, %20, !dbg !1193
  store double %21, double* %lower, align 8, !dbg !1194, !tbaa !664
  call void @llvm.dbg.value(metadata double* %global_lower, i64 0, metadata !335, metadata !389), !dbg !1169
  %22 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5, !dbg !1195
  %23 = load i32** %22, align 8, !dbg !1195, !tbaa !1196
  %24 = getelementptr inbounds i32* %23, i64 %10, !dbg !1197
  %25 = load i32* %24, align 4, !dbg !1197, !tbaa !440
  %26 = add nsw i32 %25, 1, !dbg !1198
  %27 = sitofp i32 %26 to double, !dbg !1199
  %28 = load double* %18, align 8, !dbg !1200, !tbaa !664
  %29 = fmul double %27, %28, !dbg !1201
  %30 = fadd double %8, %29, !dbg !1202
  store double %30, double* %upper, align 8, !dbg !1203, !tbaa !664
  br label %33, !dbg !1204

; <label>:31                                      ; preds = %0
  %32 = call i32 @CCTK_Warn(i32 4, i32 1383, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str40, i64 0, i64 0)) #6, !dbg !1205
  br label %33

; <label>:33                                      ; preds = %31, %7
  ret i32 %1, !dbg !1207
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_coordlocalrange_(i32* nocapture %ierr, %struct.cGH* %GH, double* nocapture %lower, double* nocapture %upper, i32* nocapture readonly %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !339, metadata !389), !dbg !1208
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !340, metadata !389), !dbg !1209
  tail call void @llvm.dbg.value(metadata double* %lower, i64 0, metadata !341, metadata !389), !dbg !1210
  tail call void @llvm.dbg.value(metadata double* %upper, i64 0, metadata !342, metadata !389), !dbg !1211
  tail call void @llvm.dbg.value(metadata i32* %dir, i64 0, metadata !343, metadata !389), !dbg !1212
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !344, metadata !389), !dbg !1213
  tail call void @llvm.dbg.value(metadata i8* %cctk_str2, i64 0, metadata !345, metadata !389), !dbg !1213
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !346, metadata !389), !dbg !1213
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen2, i64 0, metadata !347, metadata !389), !dbg !1213
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !1214
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !348, metadata !389), !dbg !1214
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !1214
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !349, metadata !389), !dbg !1214
  %3 = load i32* %dir, align 4, !dbg !1215, !tbaa !440
  %4 = tail call i32 @CCTK_CoordLocalRange(%struct.cGH* %GH, double* %lower, double* %upper, i32 %3, i8* %1, i8* %2) #7, !dbg !1216
  store i32 %4, i32* %ierr, align 4, !dbg !1217, !tbaa !440
  tail call void @free(i8* %1) #7, !dbg !1218
  tail call void @free(i8* %2) #7, !dbg !1219
  ret void, !dbg !1220
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_NumCoordSystems() #4 {
  %1 = load i32* @num_systems, align 4, !dbg !1221, !tbaa !440
  ret i32 %1, !dbg !1222
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_CoordSystemImplementation(i32 %handle) #1 {
  tail call void @llvm.dbg.value(metadata i32 %handle, i64 0, metadata !355, metadata !389), !dbg !1223
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !1224, !tbaa !395
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #6, !dbg !1225
  %3 = icmp eq i8* %2, null, !dbg !1226
  br i1 %3, label %7, label %4, !dbg !1226

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to i8**, !dbg !1227
  %6 = load i8** %5, align 8, !dbg !1227, !tbaa !425
  br label %7, !dbg !1226

; <label>:7                                       ; preds = %0, %4
  %8 = phi i8* [ %6, %4 ], [ null, %0 ], !dbg !1226
  ret i8* %8, !dbg !1228
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_CoordName(i32 %dir, i8* %systemname) #1 {
  %coord_system = alloca %struct.Coordsystem*, align 8
  tail call void @llvm.dbg.value(metadata i32 %dir, i64 0, metadata !361, metadata !389), !dbg !1229
  tail call void @llvm.dbg.value(metadata i8* %systemname, i64 0, metadata !362, metadata !389), !dbg !1230
  %1 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !1231, !tbaa !395
  %2 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !1232
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %systemname, i8** %2) #6, !dbg !1233
  call void @llvm.dbg.value(metadata %struct.Coordsystem** %coord_system, i64 0, metadata !363, metadata !389), !dbg !1234
  %4 = load %struct.Coordsystem** %coord_system, align 8, !dbg !1235, !tbaa !395
  %5 = icmp eq %struct.Coordsystem* %4, null, !dbg !1235
  br i1 %5, label %6, label %8, !dbg !1237

; <label>:6                                       ; preds = %0
  %7 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 1492, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str41, i64 0, i64 0), i8* %systemname) #6, !dbg !1238
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !364, metadata !389), !dbg !1240
  br label %15, !dbg !1241

; <label>:8                                       ; preds = %0
  %9 = add nsw i32 %dir, -1, !dbg !1242
  %10 = sext i32 %9 to i64, !dbg !1244
  %11 = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 3, !dbg !1245
  %12 = load %struct.Coordprops** %11, align 8, !dbg !1245, !tbaa !436
  %13 = getelementptr inbounds %struct.Coordprops* %12, i64 %10, i32 0, !dbg !1246
  %14 = load i8** %13, align 8, !dbg !1246, !tbaa !499
  call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !364, metadata !389), !dbg !1240
  br label %15

; <label>:15                                      ; preds = %8, %6
  %retval.0 = phi i8* [ %14, %8 ], [ null, %6 ]
  ret i8* %retval.0, !dbg !1247
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!384, !385, !386}
!llvm.ident = !{!387}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !74, globals: !365, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !6, !17, !24, !67, !10, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "Coordsystem", file: !1, line: 38, size: 256, align: 64, elements: !8)
!8 = !{!9, !13, !15, !16}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !7, file: !1, line: 40, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "dimension", scope: !7, file: !1, line: 41, baseType: !14, size: 32, align: 32, offset: 64)
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "systemname", scope: !7, file: !1, line: 42, baseType: !10, size: 64, align: 64, offset: 128)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "coords", scope: !7, file: !1, line: 43, baseType: !17, size: 64, align: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "Coordprops", file: !1, line: 46, size: 256, align: 64, elements: !19)
!19 = !{!20, !22, !23, !66}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !18, file: !1, line: 48, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !18, file: !1, line: 49, baseType: !14, size: 32, align: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "listcomp", scope: !18, file: !1, line: 50, baseType: !24, size: 64, align: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "Coordpropslistcomp", file: !1, line: 54, size: 256, align: 64, elements: !26)
!26 = !{!27, !63, !64, !65}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "GH", scope: !25, file: !1, line: 57, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !30, line: 75, baseType: !31)
!30 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!31 = !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 24, size: 1216, align: 64, elements: !32)
!32 = !{!33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !45, !47, !48, !49, !50, !51, !52, !53, !55, !56}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !31, file: !30, line: 26, baseType: !14, size: 32, align: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !31, file: !30, line: 27, baseType: !14, size: 32, align: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !31, file: !30, line: 30, baseType: !36, size: 64, align: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !31, file: !30, line: 31, baseType: !36, size: 64, align: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !31, file: !30, line: 32, baseType: !36, size: 64, align: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !31, file: !30, line: 33, baseType: !36, size: 64, align: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !31, file: !30, line: 36, baseType: !36, size: 64, align: 64, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !31, file: !30, line: 39, baseType: !36, size: 64, align: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !31, file: !30, line: 40, baseType: !36, size: 64, align: 64, offset: 448)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !31, file: !30, line: 43, baseType: !44, size: 64, align: 64, offset: 512)
!44 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !31, file: !30, line: 44, baseType: !46, size: 64, align: 64, offset: 576)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !31, file: !30, line: 47, baseType: !46, size: 64, align: 64, offset: 640)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !31, file: !30, line: 51, baseType: !36, size: 64, align: 64, offset: 704)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !31, file: !30, line: 54, baseType: !36, size: 64, align: 64, offset: 768)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !31, file: !30, line: 57, baseType: !14, size: 32, align: 32, offset: 832)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !31, file: !30, line: 60, baseType: !36, size: 64, align: 64, offset: 896)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !31, file: !30, line: 63, baseType: !44, size: 64, align: 64, offset: 960)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !31, file: !30, line: 67, baseType: !54, size: 64, align: 64, offset: 1024)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !31, file: !30, line: 70, baseType: !4, size: 64, align: 64, offset: 1088)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !31, file: !30, line: 73, baseType: !57, size: 64, align: 64, offset: 1152)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !30, line: 22, baseType: !59)
!59 = !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 18, size: 16, align: 8, elements: !60)
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !59, file: !30, line: 20, baseType: !12, size: 8, align: 8)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !59, file: !30, line: 21, baseType: !12, size: 8, align: 8, offset: 8)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !25, file: !1, line: 59, baseType: !44, size: 64, align: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !25, file: !1, line: 60, baseType: !44, size: 64, align: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !25, file: !1, line: 62, baseType: !24, size: 64, align: 64, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "listphysi", scope: !18, file: !1, line: 51, baseType: !67, size: 64, align: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "Coordpropslistphysi", file: !1, line: 65, size: 192, align: 64, elements: !69)
!69 = !{!70, !71, !72, !73}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "GH", scope: !68, file: !1, line: 68, baseType: !28, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !68, file: !1, line: 70, baseType: !14, size: 32, align: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !68, file: !1, line: 71, baseType: !14, size: 32, align: 32, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !68, file: !1, line: 73, baseType: !67, size: 64, align: 64, offset: 128)
!74 = !{!75, !78, !87, !102, !114, !129, !144, !161, !176, !191, !197, !204, !212, !221, !231, !236, !242, !251, !262, !280, !295, !310, !325, !337, !350, !353, !357}
!75 = !DISubprogram(name: "CCTKi_version_main_Coord_c", scope: !1, file: !1, line: 31, type: !76, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_Coord_c, variables: !2)
!76 = !DISubroutineType(types: !77)
!77 = !{!10}
!78 = !DISubprogram(name: "CCTKi_CoordRegisterSystem", scope: !1, file: !1, line: 158, type: !79, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8*, i8*)* @CCTKi_CoordRegisterSystem, variables: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{!14, !14, !10, !10}
!81 = !{!82, !83, !84, !85, !86}
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 1, scope: !78, file: !1, line: 158, type: !14)
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "thorn", arg: 2, scope: !78, file: !1, line: 159, type: !10)
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "systemname", arg: 3, scope: !78, file: !1, line: 160, type: !10)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !78, file: !1, line: 162, type: !14)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_system", scope: !78, file: !1, line: 163, type: !6)
!87 = !DISubprogram(name: "cctki_coordregistersystem_", scope: !1, file: !1, line: 220, type: !88, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i8*, i8*, i32, i32)* @cctki_coordregistersystem_, variables: !93)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !36, !90, !21, !21, !92, !92}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!92 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101}
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !87, file: !1, line: 221, type: !36)
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 2, scope: !87, file: !1, line: 221, type: !90)
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !87, file: !1, line: 221, type: !21)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 4, scope: !87, file: !1, line: 221, type: !21)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 5, scope: !87, file: !1, line: 221, type: !92)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 6, scope: !87, file: !1, line: 221, type: !92)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "thorn", scope: !87, file: !1, line: 223, type: !21)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "systemname", scope: !87, file: !1, line: 223, type: !21)
!102 = !DISubprogram(name: "CCTK_CoordRegisterData", scope: !1, file: !1, line: 250, type: !103, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8*, i8*, i8*)* @CCTK_CoordRegisterData, variables: !105)
!103 = !DISubroutineType(types: !104)
!104 = !{!14, !14, !10, !10, !10}
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113}
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 1, scope: !102, file: !1, line: 250, type: !14)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gfname", arg: 2, scope: !102, file: !1, line: 251, type: !10)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "coordname", arg: 3, scope: !102, file: !1, line: 252, type: !10)
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "systemname", arg: 4, scope: !102, file: !1, line: 253, type: !10)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !102, file: !1, line: 255, type: !14)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !102, file: !1, line: 256, type: !14)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dup", scope: !102, file: !1, line: 257, type: !14)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coord_system", scope: !102, file: !1, line: 258, type: !6)
!114 = !DISubprogram(name: "cctk_coordregisterdata_", scope: !1, file: !1, line: 324, type: !115, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i8*, i8*, i8*, i32, i32, i32)* @cctk_coordregisterdata_, variables: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !36, !90, !21, !21, !21, !92, !92, !92}
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "handle", arg: 1, scope: !114, file: !1, line: 325, type: !36)
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 2, scope: !114, file: !1, line: 325, type: !90)
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !114, file: !1, line: 325, type: !21)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 4, scope: !114, file: !1, line: 325, type: !21)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str3", arg: 5, scope: !114, file: !1, line: 325, type: !21)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 6, scope: !114, file: !1, line: 325, type: !92)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 7, scope: !114, file: !1, line: 325, type: !92)
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen3", arg: 8, scope: !114, file: !1, line: 325, type: !92)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gf", scope: !114, file: !1, line: 327, type: !21)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !114, file: !1, line: 327, type: !21)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "systemname", scope: !114, file: !1, line: 327, type: !21)
!129 = !DISubprogram(name: "CCTK_CoordRegisterRange", scope: !1, file: !1, line: 390, type: !130, isLocal: false, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, double, double, i32, i8*, i8*)* @CCTK_CoordRegisterRange, variables: !132)
!130 = !DISubroutineType(types: !131)
!131 = !{!14, !28, !44, !44, !14, !10, !10}
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !129, file: !1, line: 390, type: !28)
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "min", arg: 2, scope: !129, file: !1, line: 391, type: !44)
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "max", arg: 3, scope: !129, file: !1, line: 392, type: !44)
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 4, scope: !129, file: !1, line: 393, type: !14)
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "coordname", arg: 5, scope: !129, file: !1, line: 394, type: !10)
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "systemname", arg: 6, scope: !129, file: !1, line: 395, type: !10)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !129, file: !1, line: 397, type: !14)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !129, file: !1, line: 398, type: !14)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vindex", scope: !129, file: !1, line: 399, type: !14)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newguy", scope: !129, file: !1, line: 400, type: !24)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coord_system", scope: !129, file: !1, line: 401, type: !6)
!144 = !DISubprogram(name: "cctk_coordregisterrange_", scope: !1, file: !1, line: 494, type: !145, isLocal: false, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, double*, double*, i32*, i8*, i8*, i32, i32)* @cctk_coordregisterrange_, variables: !149)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !36, !28, !147, !147, !90, !21, !21, !92, !92}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !144, file: !1, line: 495, type: !36)
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !144, file: !1, line: 496, type: !28)
!152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lower", arg: 3, scope: !144, file: !1, line: 497, type: !147)
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "upper", arg: 4, scope: !144, file: !1, line: 498, type: !147)
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 5, scope: !144, file: !1, line: 499, type: !90)
!155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 6, scope: !144, file: !1, line: 500, type: !21)
!156 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 7, scope: !144, file: !1, line: 500, type: !21)
!157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 8, scope: !144, file: !1, line: 500, type: !92)
!158 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 9, scope: !144, file: !1, line: 500, type: !92)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !144, file: !1, line: 502, type: !21)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "systemname", scope: !144, file: !1, line: 502, type: !21)
!161 = !DISubprogram(name: "CCTK_CoordRegisterRangePhysIndex", scope: !1, file: !1, line: 561, type: !162, isLocal: false, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32, i32, i32, i8*, i8*)* @CCTK_CoordRegisterRangePhysIndex, variables: !164)
!162 = !DISubroutineType(types: !163)
!163 = !{!14, !28, !14, !14, !14, !10, !10}
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !161, file: !1, line: 561, type: !28)
!166 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "min", arg: 2, scope: !161, file: !1, line: 562, type: !14)
!167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "max", arg: 3, scope: !161, file: !1, line: 563, type: !14)
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 4, scope: !161, file: !1, line: 564, type: !14)
!169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "coordname", arg: 5, scope: !161, file: !1, line: 565, type: !10)
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "systemname", arg: 6, scope: !161, file: !1, line: 566, type: !10)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !161, file: !1, line: 568, type: !14)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !161, file: !1, line: 569, type: !14)
!173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vindex", scope: !161, file: !1, line: 570, type: !14)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newguy", scope: !161, file: !1, line: 571, type: !67)
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coord_system", scope: !161, file: !1, line: 572, type: !6)
!176 = !DISubprogram(name: "cctk_coordregisterrangephysindex_", scope: !1, file: !1, line: 667, type: !177, isLocal: false, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i32*, i32*, i32*, i8*, i8*, i32, i32)* @cctk_coordregisterrangephysindex_, variables: !179)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !36, !28, !90, !90, !90, !21, !21, !92, !92}
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !176, file: !1, line: 668, type: !36)
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !176, file: !1, line: 669, type: !28)
!182 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lower", arg: 3, scope: !176, file: !1, line: 670, type: !90)
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "upper", arg: 4, scope: !176, file: !1, line: 671, type: !90)
!184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 5, scope: !176, file: !1, line: 672, type: !90)
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 6, scope: !176, file: !1, line: 673, type: !21)
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 7, scope: !176, file: !1, line: 673, type: !21)
!187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 8, scope: !176, file: !1, line: 673, type: !92)
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 9, scope: !176, file: !1, line: 673, type: !92)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !176, file: !1, line: 675, type: !21)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "systemname", scope: !176, file: !1, line: 675, type: !21)
!191 = !DISubprogram(name: "CCTK_CoordSystemHandle", scope: !1, file: !1, line: 703, type: !192, isLocal: false, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @CCTK_CoordSystemHandle, variables: !194)
!192 = !DISubroutineType(types: !193)
!193 = !{!14, !10}
!194 = !{!195, !196}
!195 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "systemname", arg: 1, scope: !191, file: !1, line: 703, type: !10)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !191, file: !1, line: 705, type: !14)
!197 = !DISubprogram(name: "CCTK_CoordSystemName", scope: !1, file: !1, line: 741, type: !198, isLocal: false, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32)* @CCTK_CoordSystemName, variables: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{!10, !14}
!200 = !{!201, !202, !203}
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "handle", arg: 1, scope: !197, file: !1, line: 741, type: !14)
!202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "systemname", scope: !197, file: !1, line: 743, type: !10)
!203 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coord_system", scope: !197, file: !1, line: 744, type: !6)
!204 = !DISubprogram(name: "cctk_coordsystemhandle_", scope: !1, file: !1, line: 762, type: !205, isLocal: false, isDefinition: true, scopeLine: 764, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8*, i32)* @cctk_coordsystemhandle_, variables: !207)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !36, !21, !92}
!207 = !{!208, !209, !210, !211}
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !204, file: !1, line: 763, type: !36)
!209 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 2, scope: !204, file: !1, line: 763, type: !21)
!210 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 3, scope: !204, file: !1, line: 763, type: !92)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "systemname", scope: !204, file: !1, line: 765, type: !21)
!212 = !DISubprogram(name: "CCTK_CoordIndex", scope: !1, file: !1, line: 817, type: !79, isLocal: false, isDefinition: true, scopeLine: 818, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8*, i8*)* @CCTK_CoordIndex, variables: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220}
!214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 1, scope: !212, file: !1, line: 817, type: !14)
!215 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !212, file: !1, line: 817, type: !10)
!216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "systemname", arg: 3, scope: !212, file: !1, line: 817, type: !10)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !212, file: !1, line: 819, type: !14)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vindex", scope: !212, file: !1, line: 820, type: !14)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "foundit", scope: !212, file: !1, line: 821, type: !14)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coord_system", scope: !212, file: !1, line: 822, type: !6)
!221 = !DISubprogram(name: "cctk_coordindex_", scope: !1, file: !1, line: 873, type: !88, isLocal: false, isDefinition: true, scopeLine: 875, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32*, i8*, i8*, i32, i32)* @cctk_coordindex_, variables: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230}
!223 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vindex", arg: 1, scope: !221, file: !1, line: 874, type: !36)
!224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 2, scope: !221, file: !1, line: 874, type: !90)
!225 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !221, file: !1, line: 874, type: !21)
!226 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 4, scope: !221, file: !1, line: 874, type: !21)
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 5, scope: !221, file: !1, line: 874, type: !92)
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 6, scope: !221, file: !1, line: 874, type: !92)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !221, file: !1, line: 876, type: !21)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "systemname", scope: !221, file: !1, line: 876, type: !21)
!231 = !DISubprogram(name: "CCTK_CoordSystemDim", scope: !1, file: !1, line: 883, type: !192, isLocal: false, isDefinition: true, scopeLine: 884, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @CCTK_CoordSystemDim, variables: !232)
!232 = !{!233, !234, !235}
!233 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "systemname", arg: 1, scope: !231, file: !1, line: 883, type: !10)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dim", scope: !231, file: !1, line: 885, type: !14)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coord_system", scope: !231, file: !1, line: 886, type: !6)
!236 = !DISubprogram(name: "cctk_coordsystemdim_", scope: !1, file: !1, line: 905, type: !205, isLocal: false, isDefinition: true, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8*, i32)* @cctk_coordsystemdim_, variables: !237)
!237 = !{!238, !239, !240, !241}
!238 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 1, scope: !236, file: !1, line: 906, type: !36)
!239 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 2, scope: !236, file: !1, line: 906, type: !21)
!240 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 3, scope: !236, file: !1, line: 906, type: !92)
!241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "systemname", scope: !236, file: !1, line: 908, type: !21)
!242 = !DISubprogram(name: "CCTK_CoordDir", scope: !1, file: !1, line: 932, type: !243, isLocal: false, isDefinition: true, scopeLine: 933, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @CCTK_CoordDir, variables: !245)
!243 = !DISubroutineType(types: !244)
!244 = !{!14, !10, !10}
!245 = !{!246, !247, !248, !249, !250}
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !242, file: !1, line: 932, type: !10)
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "systemname", arg: 2, scope: !242, file: !1, line: 932, type: !10)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !242, file: !1, line: 934, type: !14)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dir", scope: !242, file: !1, line: 935, type: !14)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coord_system", scope: !242, file: !1, line: 936, type: !6)
!251 = !DISubprogram(name: "cctk_coorddir_", scope: !1, file: !1, line: 968, type: !252, isLocal: false, isDefinition: true, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i8*, i8*, i32, i32)* @cctk_coorddir_, variables: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !36, !21, !21, !92, !92}
!254 = !{!255, !256, !257, !258, !259, !260, !261}
!255 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 1, scope: !251, file: !1, line: 969, type: !36)
!256 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 2, scope: !251, file: !1, line: 969, type: !21)
!257 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 3, scope: !251, file: !1, line: 969, type: !21)
!258 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 4, scope: !251, file: !1, line: 969, type: !92)
!259 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 5, scope: !251, file: !1, line: 969, type: !92)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !251, file: !1, line: 971, type: !21)
!261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "systemname", scope: !251, file: !1, line: 971, type: !21)
!262 = !DISubprogram(name: "CCTK_CoordRange", scope: !1, file: !1, line: 1034, type: !263, isLocal: false, isDefinition: true, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, double*, double*, i32, i8*, i8*)* @CCTK_CoordRange, variables: !267)
!263 = !DISubroutineType(types: !264)
!264 = !{!14, !265, !46, !46, !14, !10, !10}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279}
!268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !262, file: !1, line: 1034, type: !265)
!269 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lower", arg: 2, scope: !262, file: !1, line: 1035, type: !46)
!270 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "upper", arg: 3, scope: !262, file: !1, line: 1036, type: !46)
!271 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "coorddir", arg: 4, scope: !262, file: !1, line: 1037, type: !14)
!272 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "coordname", arg: 5, scope: !262, file: !1, line: 1038, type: !10)
!273 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "systemname", arg: 6, scope: !262, file: !1, line: 1039, type: !10)
!274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !262, file: !1, line: 1041, type: !14)
!275 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !262, file: !1, line: 1042, type: !14)
!276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gotrange", scope: !262, file: !1, line: 1043, type: !14)
!277 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curr", scope: !262, file: !1, line: 1044, type: !24)
!278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coord_system", scope: !262, file: !1, line: 1045, type: !6)
!279 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coord", scope: !262, file: !1, line: 1046, type: !17)
!280 = !DISubprogram(name: "cctk_coordrange_", scope: !1, file: !1, line: 1136, type: !281, isLocal: false, isDefinition: true, scopeLine: 1143, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, double*, double*, i32*, i8*, i8*, i32, i32)* @cctk_coordrange_, variables: !283)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !36, !265, !46, !46, !90, !21, !21, !92, !92}
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!284 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !280, file: !1, line: 1137, type: !36)
!285 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !280, file: !1, line: 1138, type: !265)
!286 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lower", arg: 3, scope: !280, file: !1, line: 1139, type: !46)
!287 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "upper", arg: 4, scope: !280, file: !1, line: 1140, type: !46)
!288 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 5, scope: !280, file: !1, line: 1141, type: !90)
!289 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 6, scope: !280, file: !1, line: 1142, type: !21)
!290 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 7, scope: !280, file: !1, line: 1142, type: !21)
!291 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 8, scope: !280, file: !1, line: 1142, type: !92)
!292 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 9, scope: !280, file: !1, line: 1142, type: !92)
!293 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !280, file: !1, line: 1144, type: !21)
!294 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "systemname", scope: !280, file: !1, line: 1144, type: !21)
!295 = !DISubprogram(name: "CCTK_CoordRangePhysIndex", scope: !1, file: !1, line: 1207, type: !296, isLocal: false, isDefinition: true, scopeLine: 1213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32*, i32*, i32, i8*, i8*)* @CCTK_CoordRangePhysIndex, variables: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{!14, !265, !36, !36, !14, !10, !10}
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!299 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !295, file: !1, line: 1207, type: !265)
!300 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lower", arg: 2, scope: !295, file: !1, line: 1208, type: !36)
!301 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "upper", arg: 3, scope: !295, file: !1, line: 1209, type: !36)
!302 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "coorddir", arg: 4, scope: !295, file: !1, line: 1210, type: !14)
!303 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "coordname", arg: 5, scope: !295, file: !1, line: 1211, type: !10)
!304 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "systemname", arg: 6, scope: !295, file: !1, line: 1212, type: !10)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !295, file: !1, line: 1214, type: !14)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !295, file: !1, line: 1215, type: !14)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curr", scope: !295, file: !1, line: 1216, type: !67)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coord_system", scope: !295, file: !1, line: 1217, type: !6)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coord", scope: !295, file: !1, line: 1218, type: !17)
!310 = !DISubprogram(name: "cctk_coordrangephysindex_", scope: !1, file: !1, line: 1313, type: !311, isLocal: false, isDefinition: true, scopeLine: 1320, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i32*, i32*, i32*, i8*, i8*, i32, i32)* @cctk_coordrangephysindex_, variables: !313)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !36, !265, !36, !36, !90, !21, !21, !92, !92}
!313 = !{!314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324}
!314 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !310, file: !1, line: 1314, type: !36)
!315 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !310, file: !1, line: 1315, type: !265)
!316 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lower", arg: 3, scope: !310, file: !1, line: 1316, type: !36)
!317 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "upper", arg: 4, scope: !310, file: !1, line: 1317, type: !36)
!318 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 5, scope: !310, file: !1, line: 1318, type: !90)
!319 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 6, scope: !310, file: !1, line: 1319, type: !21)
!320 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 7, scope: !310, file: !1, line: 1319, type: !21)
!321 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 8, scope: !310, file: !1, line: 1319, type: !92)
!322 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 9, scope: !310, file: !1, line: 1319, type: !92)
!323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !310, file: !1, line: 1321, type: !21)
!324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "systemname", scope: !310, file: !1, line: 1321, type: !21)
!325 = !DISubprogram(name: "CCTK_CoordLocalRange", scope: !1, file: !1, line: 1351, type: !263, isLocal: false, isDefinition: true, scopeLine: 1357, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, double*, double*, i32, i8*, i8*)* @CCTK_CoordLocalRange, variables: !326)
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !325, file: !1, line: 1351, type: !265)
!328 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lower", arg: 2, scope: !325, file: !1, line: 1352, type: !46)
!329 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "upper", arg: 3, scope: !325, file: !1, line: 1353, type: !46)
!330 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 4, scope: !325, file: !1, line: 1354, type: !14)
!331 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 5, scope: !325, file: !1, line: 1355, type: !10)
!332 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "systemname", arg: 6, scope: !325, file: !1, line: 1356, type: !10)
!333 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !325, file: !1, line: 1358, type: !14)
!334 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "realdir", scope: !325, file: !1, line: 1359, type: !14)
!335 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_lower", scope: !325, file: !1, line: 1360, type: !44)
!336 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_upper", scope: !325, file: !1, line: 1361, type: !44)
!337 = !DISubprogram(name: "cctk_coordlocalrange_", scope: !1, file: !1, line: 1394, type: !281, isLocal: false, isDefinition: true, scopeLine: 1401, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, double*, double*, i32*, i8*, i8*, i32, i32)* @cctk_coordlocalrange_, variables: !338)
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349}
!339 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierr", arg: 1, scope: !337, file: !1, line: 1395, type: !36)
!340 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !337, file: !1, line: 1396, type: !265)
!341 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lower", arg: 3, scope: !337, file: !1, line: 1397, type: !46)
!342 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "upper", arg: 4, scope: !337, file: !1, line: 1398, type: !46)
!343 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 5, scope: !337, file: !1, line: 1399, type: !90)
!344 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 6, scope: !337, file: !1, line: 1400, type: !21)
!345 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str2", arg: 7, scope: !337, file: !1, line: 1400, type: !21)
!346 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 8, scope: !337, file: !1, line: 1400, type: !92)
!347 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen2", arg: 9, scope: !337, file: !1, line: 1400, type: !92)
!348 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !337, file: !1, line: 1402, type: !21)
!349 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "systemname", scope: !337, file: !1, line: 1402, type: !21)
!350 = !DISubprogram(name: "CCTK_NumCoordSystems", scope: !1, file: !1, line: 1422, type: !351, isLocal: false, isDefinition: true, scopeLine: 1423, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTK_NumCoordSystems, variables: !2)
!351 = !DISubroutineType(types: !352)
!352 = !{!14}
!353 = !DISubprogram(name: "CCTK_CoordSystemImplementation", scope: !1, file: !1, line: 1447, type: !198, isLocal: false, isDefinition: true, scopeLine: 1448, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32)* @CCTK_CoordSystemImplementation, variables: !354)
!354 = !{!355, !356}
!355 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "handle", arg: 1, scope: !353, file: !1, line: 1447, type: !14)
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coord_system", scope: !353, file: !1, line: 1449, type: !6)
!357 = !DISubprogram(name: "CCTK_CoordName", scope: !1, file: !1, line: 1484, type: !358, isLocal: false, isDefinition: true, scopeLine: 1485, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32, i8*)* @CCTK_CoordName, variables: !360)
!358 = !DISubroutineType(types: !359)
!359 = !{!10, !14, !10}
!360 = !{!361, !362, !363, !364}
!361 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 1, scope: !357, file: !1, line: 1484, type: !14)
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "systemname", arg: 2, scope: !357, file: !1, line: 1484, type: !10)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coord_system", scope: !357, file: !1, line: 1486, type: !6)
!364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !357, file: !1, line: 1487, type: !10)
!365 = !{!366, !367, !383}
!366 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 29, type: !10, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariable(name: "CoordSystems", scope: !0, file: !1, line: 81, type: !368, isLocal: true, isDefinition: true, variable: %struct.cHandledData** @CoordSystems)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "cHandledData", file: !370, line: 28, baseType: !371)
!370 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreHandledData.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!371 = !DICompositeType(tag: DW_TAG_structure_type, file: !370, line: 23, size: 128, align: 64, elements: !372)
!372 = !{!373, !381, !382}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !371, file: !370, line: 25, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "cHandleStorage", file: !370, line: 21, baseType: !376)
!376 = !DICompositeType(tag: DW_TAG_structure_type, file: !370, line: 16, size: 192, align: 64, elements: !377)
!377 = !{!378, !379, !380}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !376, file: !370, line: 18, baseType: !92, size: 32, align: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !376, file: !370, line: 19, baseType: !21, size: 64, align: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !376, file: !370, line: 20, baseType: !5, size: 64, align: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "array_size", scope: !371, file: !370, line: 26, baseType: !92, size: 32, align: 32, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "first_unused", scope: !371, file: !370, line: 27, baseType: !92, size: 32, align: 32, offset: 96)
!383 = !DIGlobalVariable(name: "num_systems", scope: !0, file: !1, line: 82, type: !14, isLocal: true, isDefinition: true, variable: i32* @num_systems)
!384 = !{i32 2, !"Dwarf Version", i32 2}
!385 = !{i32 2, !"Debug Info Version", i32 700000003}
!386 = !{i32 1, !"PIC Level", i32 2}
!387 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!388 = !DILocation(line: 31, column: 1, scope: !75)
!389 = !DIExpression()
!390 = !DILocation(line: 158, column: 36, scope: !78)
!391 = !DILocation(line: 159, column: 43, scope: !78)
!392 = !DILocation(line: 160, column: 22, scope: !78)
!393 = !DILocation(line: 162, column: 7, scope: !78)
!394 = !DILocation(line: 167, column: 19, scope: !78)
!395 = !{!396, !396, i64 0}
!396 = !{!"any pointer", !397, i64 0}
!397 = !{!"omnipotent char", !398, i64 0}
!398 = !{!"Simple C/C++ TBAA"}
!399 = !DILocation(line: 167, column: 45, scope: !78)
!400 = !DILocation(line: 167, column: 3, scope: !78)
!401 = !DILocation(line: 163, column: 23, scope: !78)
!402 = !DILocation(line: 168, column: 9, scope: !403)
!403 = distinct !DILexicalBlock(scope: !78, file: !1, line: 168, column: 7)
!404 = !DILocation(line: 168, column: 7, scope: !78)
!405 = !DILocation(line: 171, column: 41, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !1, line: 169, column: 3)
!407 = !DILocation(line: 171, column: 16, scope: !406)
!408 = !DILocation(line: 174, column: 9, scope: !409)
!409 = distinct !DILexicalBlock(scope: !406, file: !1, line: 174, column: 9)
!410 = !DILocation(line: 174, column: 9, scope: !406)
!411 = !DILocation(line: 176, column: 15, scope: !412)
!412 = distinct !DILexicalBlock(scope: !413, file: !1, line: 176, column: 11)
!413 = distinct !DILexicalBlock(scope: !409, file: !1, line: 175, column: 5)
!414 = !DILocation(line: 176, column: 11, scope: !413)
!415 = !DILocation(line: 178, column: 21, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !1, line: 177, column: 7)
!417 = !DILocation(line: 178, column: 32, scope: !416)
!418 = !{!419, !420, i64 8}
!419 = !{!"Coordsystem", !396, i64 0, !420, i64 8, !396, i64 16, !396, i64 24}
!420 = !{!"int", !397, i64 0}
!421 = !DILocation(line: 179, column: 31, scope: !416)
!422 = !DILocation(line: 179, column: 2, scope: !416)
!423 = !DILocation(line: 179, column: 14, scope: !416)
!424 = !DILocation(line: 179, column: 29, scope: !416)
!425 = !{!419, !396, i64 0}
!426 = !DILocation(line: 180, column: 34, scope: !416)
!427 = !DILocation(line: 180, column: 9, scope: !416)
!428 = !DILocation(line: 180, column: 21, scope: !416)
!429 = !DILocation(line: 180, column: 32, scope: !416)
!430 = !{!419, !396, i64 16}
!431 = !DILocation(line: 181, column: 60, scope: !416)
!432 = !DILocation(line: 181, column: 52, scope: !416)
!433 = !DILocation(line: 181, column: 9, scope: !416)
!434 = !DILocation(line: 181, column: 21, scope: !416)
!435 = !DILocation(line: 181, column: 28, scope: !416)
!436 = !{!419, !396, i64 24}
!437 = !DILocation(line: 183, column: 61, scope: !416)
!438 = !DILocation(line: 183, column: 18, scope: !416)
!439 = !DILocation(line: 186, column: 13, scope: !416)
!440 = !{!420, !420, i64 0}
!441 = !DILocation(line: 188, column: 7, scope: !416)
!442 = !DILocation(line: 192, column: 9, scope: !443)
!443 = distinct !DILexicalBlock(scope: !412, file: !1, line: 190, column: 7)
!444 = !DILocation(line: 200, column: 21, scope: !445)
!445 = distinct !DILexicalBlock(scope: !446, file: !1, line: 200, column: 9)
!446 = distinct !DILexicalBlock(scope: !403, file: !1, line: 199, column: 3)
!447 = !DILocation(line: 200, column: 31, scope: !445)
!448 = !DILocation(line: 200, column: 9, scope: !446)
!449 = !DILocation(line: 203, column: 7, scope: !450)
!450 = distinct !DILexicalBlock(scope: !445, file: !1, line: 201, column: 5)
!451 = !DILocation(line: 206, column: 5, scope: !450)
!452 = !DILocation(line: 210, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !445, file: !1, line: 208, column: 5)
!454 = !DILocation(line: 217, column: 3, scope: !78)
!455 = !DILocation(line: 221, column: 34, scope: !87)
!456 = !DILocation(line: 221, column: 51, scope: !87)
!457 = !DILocation(line: 221, column: 56, scope: !87)
!458 = !DILocation(line: 223, column: 3, scope: !87)
!459 = !DILocation(line: 224, column: 38, scope: !87)
!460 = !DILocation(line: 224, column: 11, scope: !87)
!461 = !DILocation(line: 224, column: 9, scope: !87)
!462 = !DILocation(line: 225, column: 3, scope: !87)
!463 = !DILocation(line: 226, column: 3, scope: !87)
!464 = !DILocation(line: 227, column: 1, scope: !87)
!465 = !DILocation(line: 250, column: 32, scope: !102)
!466 = !DILocation(line: 251, column: 40, scope: !102)
!467 = !DILocation(line: 252, column: 40, scope: !102)
!468 = !DILocation(line: 253, column: 40, scope: !102)
!469 = !DILocation(line: 256, column: 7, scope: !102)
!470 = !DILocation(line: 257, column: 7, scope: !102)
!471 = !DILocation(line: 262, column: 19, scope: !102)
!472 = !DILocation(line: 262, column: 45, scope: !102)
!473 = !DILocation(line: 262, column: 3, scope: !102)
!474 = !DILocation(line: 258, column: 23, scope: !102)
!475 = !DILocation(line: 263, column: 9, scope: !476)
!476 = distinct !DILexicalBlock(scope: !102, file: !1, line: 263, column: 7)
!477 = !DILocation(line: 263, column: 7, scope: !102)
!478 = !DILocation(line: 265, column: 5, scope: !479)
!479 = distinct !DILexicalBlock(scope: !476, file: !1, line: 264, column: 3)
!480 = !DILocation(line: 268, column: 3, scope: !479)
!481 = !DILocation(line: 272, column: 13, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 272, column: 9)
!483 = distinct !DILexicalBlock(scope: !476, file: !1, line: 270, column: 3)
!484 = !DILocation(line: 277, column: 38, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !1, line: 273, column: 5)
!486 = !DILocation(line: 272, column: 24, scope: !482)
!487 = !DILocation(line: 272, column: 17, scope: !482)
!488 = !DILocation(line: 284, column: 21, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !1, line: 284, column: 7)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 284, column: 7)
!491 = distinct !DILexicalBlock(scope: !482, file: !1, line: 281, column: 5)
!492 = !DILocation(line: 284, column: 7, scope: !490)
!493 = !DILocation(line: 274, column: 7, scope: !485)
!494 = !DILocation(line: 279, column: 5, scope: !485)
!495 = !DILocation(line: 286, column: 27, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !1, line: 286, column: 13)
!497 = distinct !DILexicalBlock(scope: !489, file: !1, line: 285, column: 7)
!498 = !DILocation(line: 286, column: 37, scope: !496)
!499 = !{!500, !396, i64 0}
!500 = !{!"Coordprops", !396, i64 0, !420, i64 8, !396, i64 16, !396, i64 24}
!501 = !DILocation(line: 286, column: 13, scope: !496)
!502 = !DILocation(line: 286, column: 42, scope: !496)
!503 = !DILocation(line: 287, column: 13, scope: !496)
!504 = !DILocation(line: 286, column: 13, scope: !497)
!505 = !DILocation(line: 289, column: 11, scope: !506)
!506 = distinct !DILexicalBlock(scope: !496, file: !1, line: 288, column: 9)
!507 = !DILocation(line: 294, column: 9, scope: !506)
!508 = !DILocation(line: 284, column: 23, scope: !489)
!509 = !DILocation(line: 284, column: 37, scope: !489)
!510 = !DILocation(line: 297, column: 35, scope: !511)
!511 = distinct !DILexicalBlock(scope: !491, file: !1, line: 297, column: 11)
!512 = !DILocation(line: 297, column: 11, scope: !511)
!513 = !DILocation(line: 297, column: 25, scope: !511)
!514 = !DILocation(line: 297, column: 39, scope: !511)
!515 = !DILocation(line: 297, column: 11, scope: !491)
!516 = !DILocation(line: 299, column: 9, scope: !517)
!517 = distinct !DILexicalBlock(scope: !511, file: !1, line: 298, column: 7)
!518 = !DILocation(line: 306, column: 11, scope: !491)
!519 = !DILocation(line: 306, column: 15, scope: !520)
!520 = distinct !DILexicalBlock(scope: !491, file: !1, line: 306, column: 11)
!521 = !DILocation(line: 309, column: 44, scope: !522)
!522 = distinct !DILexicalBlock(scope: !520, file: !1, line: 307, column: 7)
!523 = !DILocation(line: 309, column: 9, scope: !522)
!524 = !DILocation(line: 309, column: 23, scope: !522)
!525 = !DILocation(line: 309, column: 37, scope: !522)
!526 = !DILocation(line: 309, column: 42, scope: !522)
!527 = !DILocation(line: 311, column: 45, scope: !522)
!528 = !DILocation(line: 311, column: 9, scope: !522)
!529 = !DILocation(line: 311, column: 23, scope: !522)
!530 = !DILocation(line: 311, column: 37, scope: !522)
!531 = !DILocation(line: 311, column: 43, scope: !522)
!532 = !{!500, !420, i64 8}
!533 = !DILocation(line: 312, column: 47, scope: !534)
!534 = distinct !DILexicalBlock(scope: !522, file: !1, line: 312, column: 13)
!535 = !DILocation(line: 312, column: 13, scope: !522)
!536 = !DILocation(line: 314, column: 11, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !1, line: 313, column: 9)
!538 = !DILocation(line: 316, column: 9, scope: !537)
!539 = !DILocation(line: 321, column: 3, scope: !102)
!540 = !DILocation(line: 325, column: 34, scope: !114)
!541 = !DILocation(line: 325, column: 53, scope: !114)
!542 = !DILocation(line: 325, column: 58, scope: !114)
!543 = !DILocation(line: 327, column: 3, scope: !114)
!544 = !DILocation(line: 328, column: 37, scope: !114)
!545 = !DILocation(line: 328, column: 13, scope: !114)
!546 = !DILocation(line: 328, column: 11, scope: !114)
!547 = !DILocation(line: 329, column: 3, scope: !114)
!548 = !DILocation(line: 330, column: 3, scope: !114)
!549 = !DILocation(line: 331, column: 3, scope: !114)
!550 = !DILocation(line: 332, column: 1, scope: !114)
!551 = !DILocation(line: 390, column: 35, scope: !129)
!552 = !DILocation(line: 391, column: 40, scope: !129)
!553 = !DILocation(line: 392, column: 40, scope: !129)
!554 = !DILocation(line: 393, column: 34, scope: !129)
!555 = !DILocation(line: 394, column: 42, scope: !129)
!556 = !DILocation(line: 395, column: 42, scope: !129)
!557 = !DILocation(line: 398, column: 7, scope: !129)
!558 = !DILocation(line: 399, column: 7, scope: !129)
!559 = !DILocation(line: 405, column: 19, scope: !129)
!560 = !DILocation(line: 405, column: 45, scope: !129)
!561 = !DILocation(line: 405, column: 3, scope: !129)
!562 = !DILocation(line: 401, column: 23, scope: !129)
!563 = !DILocation(line: 406, column: 9, scope: !564)
!564 = distinct !DILexicalBlock(scope: !129, file: !1, line: 406, column: 7)
!565 = !DILocation(line: 406, column: 7, scope: !129)
!566 = !DILocation(line: 408, column: 5, scope: !567)
!567 = distinct !DILexicalBlock(scope: !564, file: !1, line: 407, column: 3)
!568 = !DILocation(line: 412, column: 3, scope: !567)
!569 = !DILocation(line: 415, column: 13, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !1, line: 415, column: 9)
!571 = distinct !DILexicalBlock(scope: !564, file: !1, line: 414, column: 3)
!572 = !DILocation(line: 415, column: 9, scope: !571)
!573 = !DILocation(line: 438, column: 37, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !1, line: 438, column: 7)
!575 = distinct !DILexicalBlock(scope: !576, file: !1, line: 438, column: 7)
!576 = distinct !DILexicalBlock(scope: !570, file: !1, line: 437, column: 5)
!577 = !DILocation(line: 438, column: 21, scope: !574)
!578 = !DILocation(line: 438, column: 7, scope: !575)
!579 = !DILocation(line: 417, column: 15, scope: !580)
!580 = distinct !DILexicalBlock(scope: !581, file: !1, line: 417, column: 11)
!581 = distinct !DILexicalBlock(scope: !570, file: !1, line: 416, column: 5)
!582 = !DILocation(line: 421, column: 56, scope: !583)
!583 = distinct !DILexicalBlock(scope: !580, file: !1, line: 418, column: 7)
!584 = !DILocation(line: 417, column: 27, scope: !580)
!585 = !DILocation(line: 417, column: 20, scope: !580)
!586 = !DILocation(line: 419, column: 9, scope: !583)
!587 = !DILocation(line: 424, column: 11, scope: !588)
!588 = distinct !DILexicalBlock(scope: !581, file: !1, line: 424, column: 11)
!589 = !DILocation(line: 423, column: 7, scope: !583)
!590 = !DILocation(line: 424, column: 35, scope: !588)
!591 = !DILocation(line: 424, column: 25, scope: !588)
!592 = !DILocation(line: 424, column: 39, scope: !588)
!593 = !DILocation(line: 424, column: 11, scope: !581)
!594 = !DILocation(line: 430, column: 9, scope: !595)
!595 = distinct !DILexicalBlock(scope: !588, file: !1, line: 429, column: 7)
!596 = !DILocation(line: 440, column: 27, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !1, line: 440, column: 13)
!598 = distinct !DILexicalBlock(scope: !574, file: !1, line: 439, column: 7)
!599 = !DILocation(line: 440, column: 37, scope: !597)
!600 = !DILocation(line: 440, column: 13, scope: !597)
!601 = !DILocation(line: 440, column: 42, scope: !597)
!602 = !DILocation(line: 441, column: 13, scope: !597)
!603 = !DILocation(line: 440, column: 13, scope: !598)
!604 = !DILocation(line: 438, column: 23, scope: !574)
!605 = !DILocation(line: 446, column: 18, scope: !606)
!606 = distinct !DILexicalBlock(scope: !576, file: !1, line: 446, column: 11)
!607 = !DILocation(line: 446, column: 11, scope: !576)
!608 = !DILocation(line: 459, column: 25, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 459, column: 11)
!610 = distinct !DILexicalBlock(scope: !611, file: !1, line: 456, column: 5)
!611 = distinct !DILexicalBlock(scope: !571, file: !1, line: 455, column: 9)
!612 = !DILocation(line: 448, column: 9, scope: !613)
!613 = distinct !DILexicalBlock(scope: !606, file: !1, line: 447, column: 7)
!614 = !DILocation(line: 452, column: 7, scope: !613)
!615 = !DILocation(line: 455, column: 9, scope: !571)
!616 = !DILocation(line: 459, column: 11, scope: !609)
!617 = !DILocation(line: 459, column: 40, scope: !609)
!618 = !{!500, !396, i64 16}
!619 = !DILocation(line: 459, column: 11, scope: !610)
!620 = !DILocation(line: 461, column: 9, scope: !621)
!621 = distinct !DILexicalBlock(scope: !609, file: !1, line: 460, column: 7)
!622 = !DILocation(line: 463, column: 9, scope: !621)
!623 = !DILocation(line: 463, column: 23, scope: !621)
!624 = !DILocation(line: 463, column: 38, scope: !621)
!625 = !DILocation(line: 463, column: 48, scope: !621)
!626 = !DILocation(line: 463, column: 54, scope: !621)
!627 = !{!628, !629, i64 8}
!628 = !{!"Coordpropslistcomp", !396, i64 0, !629, i64 8, !629, i64 16, !396, i64 24}
!629 = !{!"double", !397, i64 0}
!630 = !DILocation(line: 464, column: 48, scope: !621)
!631 = !DILocation(line: 464, column: 54, scope: !621)
!632 = !{!628, !629, i64 16}
!633 = !DILocation(line: 465, column: 7, scope: !621)
!634 = !DILocation(line: 470, column: 11, scope: !635)
!635 = distinct !DILexicalBlock(scope: !609, file: !1, line: 467, column: 7)
!636 = !DILocation(line: 472, column: 15, scope: !637)
!637 = distinct !DILexicalBlock(scope: !635, file: !1, line: 472, column: 13)
!638 = !DILocation(line: 472, column: 13, scope: !635)
!639 = !DILocation(line: 474, column: 11, scope: !640)
!640 = distinct !DILexicalBlock(scope: !637, file: !1, line: 473, column: 9)
!641 = !DILocation(line: 478, column: 9, scope: !640)
!642 = !DILocation(line: 481, column: 19, scope: !643)
!643 = distinct !DILexicalBlock(scope: !637, file: !1, line: 480, column: 9)
!644 = !DILocation(line: 481, column: 25, scope: !643)
!645 = !{!628, !396, i64 0}
!646 = !DILocation(line: 482, column: 19, scope: !643)
!647 = !DILocation(line: 482, column: 25, scope: !643)
!648 = !DILocation(line: 483, column: 19, scope: !643)
!649 = !DILocation(line: 483, column: 25, scope: !643)
!650 = !DILocation(line: 484, column: 41, scope: !643)
!651 = !DILocation(line: 484, column: 56, scope: !643)
!652 = !DILocation(line: 484, column: 25, scope: !643)
!653 = !{!628, !396, i64 24}
!654 = !DILocation(line: 485, column: 49, scope: !643)
!655 = !DILocation(line: 491, column: 3, scope: !129)
!656 = !DILocation(line: 495, column: 34, scope: !144)
!657 = !DILocation(line: 496, column: 34, scope: !144)
!658 = !DILocation(line: 497, column: 46, scope: !144)
!659 = !DILocation(line: 498, column: 46, scope: !144)
!660 = !DILocation(line: 499, column: 40, scope: !144)
!661 = !DILocation(line: 500, column: 29, scope: !144)
!662 = !DILocation(line: 502, column: 3, scope: !144)
!663 = !DILocation(line: 503, column: 40, scope: !144)
!664 = !{!629, !629, i64 0}
!665 = !DILocation(line: 503, column: 48, scope: !144)
!666 = !DILocation(line: 503, column: 56, scope: !144)
!667 = !DILocation(line: 503, column: 11, scope: !144)
!668 = !DILocation(line: 503, column: 9, scope: !144)
!669 = !DILocation(line: 504, column: 3, scope: !144)
!670 = !DILocation(line: 505, column: 3, scope: !144)
!671 = !DILocation(line: 506, column: 1, scope: !144)
!672 = !DILocation(line: 561, column: 44, scope: !161)
!673 = !DILocation(line: 562, column: 43, scope: !161)
!674 = !DILocation(line: 563, column: 43, scope: !161)
!675 = !DILocation(line: 564, column: 43, scope: !161)
!676 = !DILocation(line: 565, column: 51, scope: !161)
!677 = !DILocation(line: 566, column: 51, scope: !161)
!678 = !DILocation(line: 569, column: 7, scope: !161)
!679 = !DILocation(line: 570, column: 7, scope: !161)
!680 = !DILocation(line: 576, column: 19, scope: !161)
!681 = !DILocation(line: 576, column: 45, scope: !161)
!682 = !DILocation(line: 576, column: 3, scope: !161)
!683 = !DILocation(line: 572, column: 23, scope: !161)
!684 = !DILocation(line: 577, column: 9, scope: !685)
!685 = distinct !DILexicalBlock(scope: !161, file: !1, line: 577, column: 7)
!686 = !DILocation(line: 577, column: 7, scope: !161)
!687 = !DILocation(line: 579, column: 5, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !1, line: 578, column: 3)
!689 = !DILocation(line: 583, column: 3, scope: !688)
!690 = !DILocation(line: 586, column: 13, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !1, line: 586, column: 9)
!692 = distinct !DILexicalBlock(scope: !685, file: !1, line: 585, column: 3)
!693 = !DILocation(line: 586, column: 9, scope: !692)
!694 = !DILocation(line: 610, column: 37, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !1, line: 610, column: 7)
!696 = distinct !DILexicalBlock(scope: !697, file: !1, line: 610, column: 7)
!697 = distinct !DILexicalBlock(scope: !691, file: !1, line: 609, column: 5)
!698 = !DILocation(line: 610, column: 21, scope: !695)
!699 = !DILocation(line: 610, column: 7, scope: !696)
!700 = !DILocation(line: 588, column: 15, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !1, line: 588, column: 11)
!702 = distinct !DILexicalBlock(scope: !691, file: !1, line: 587, column: 5)
!703 = !DILocation(line: 592, column: 56, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !1, line: 589, column: 7)
!705 = !DILocation(line: 588, column: 27, scope: !701)
!706 = !DILocation(line: 588, column: 20, scope: !701)
!707 = !DILocation(line: 590, column: 9, scope: !704)
!708 = !DILocation(line: 595, column: 11, scope: !709)
!709 = distinct !DILexicalBlock(scope: !702, file: !1, line: 595, column: 11)
!710 = !DILocation(line: 594, column: 7, scope: !704)
!711 = !DILocation(line: 595, column: 35, scope: !709)
!712 = !DILocation(line: 595, column: 25, scope: !709)
!713 = !DILocation(line: 595, column: 39, scope: !709)
!714 = !DILocation(line: 595, column: 11, scope: !702)
!715 = !DILocation(line: 601, column: 9, scope: !716)
!716 = distinct !DILexicalBlock(scope: !709, file: !1, line: 600, column: 7)
!717 = !DILocation(line: 612, column: 27, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !1, line: 612, column: 13)
!719 = distinct !DILexicalBlock(scope: !695, file: !1, line: 611, column: 7)
!720 = !DILocation(line: 612, column: 37, scope: !718)
!721 = !DILocation(line: 612, column: 13, scope: !718)
!722 = !DILocation(line: 612, column: 42, scope: !718)
!723 = !DILocation(line: 613, column: 13, scope: !718)
!724 = !DILocation(line: 612, column: 13, scope: !719)
!725 = !DILocation(line: 610, column: 23, scope: !695)
!726 = !DILocation(line: 618, column: 18, scope: !727)
!727 = distinct !DILexicalBlock(scope: !697, file: !1, line: 618, column: 11)
!728 = !DILocation(line: 618, column: 11, scope: !697)
!729 = !DILocation(line: 631, column: 25, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !1, line: 631, column: 11)
!731 = distinct !DILexicalBlock(scope: !732, file: !1, line: 628, column: 5)
!732 = distinct !DILexicalBlock(scope: !692, file: !1, line: 627, column: 9)
!733 = !DILocation(line: 620, column: 9, scope: !734)
!734 = distinct !DILexicalBlock(scope: !727, file: !1, line: 619, column: 7)
!735 = !DILocation(line: 624, column: 7, scope: !734)
!736 = !DILocation(line: 627, column: 9, scope: !692)
!737 = !DILocation(line: 631, column: 11, scope: !730)
!738 = !DILocation(line: 631, column: 40, scope: !730)
!739 = !{!500, !396, i64 24}
!740 = !DILocation(line: 631, column: 11, scope: !731)
!741 = !DILocation(line: 633, column: 9, scope: !742)
!742 = distinct !DILexicalBlock(scope: !730, file: !1, line: 632, column: 7)
!743 = !DILocation(line: 636, column: 9, scope: !742)
!744 = !DILocation(line: 636, column: 23, scope: !742)
!745 = !DILocation(line: 636, column: 38, scope: !742)
!746 = !DILocation(line: 636, column: 49, scope: !742)
!747 = !DILocation(line: 636, column: 55, scope: !742)
!748 = !{!749, !420, i64 8}
!749 = !{!"Coordpropslistphysi", !396, i64 0, !420, i64 8, !420, i64 12, !396, i64 16}
!750 = !DILocation(line: 637, column: 49, scope: !742)
!751 = !DILocation(line: 637, column: 55, scope: !742)
!752 = !{!749, !420, i64 12}
!753 = !DILocation(line: 638, column: 7, scope: !742)
!754 = !DILocation(line: 643, column: 11, scope: !755)
!755 = distinct !DILexicalBlock(scope: !730, file: !1, line: 640, column: 7)
!756 = !DILocation(line: 645, column: 15, scope: !757)
!757 = distinct !DILexicalBlock(scope: !755, file: !1, line: 645, column: 13)
!758 = !DILocation(line: 645, column: 13, scope: !755)
!759 = !DILocation(line: 647, column: 11, scope: !760)
!760 = distinct !DILexicalBlock(scope: !757, file: !1, line: 646, column: 9)
!761 = !DILocation(line: 651, column: 9, scope: !760)
!762 = !DILocation(line: 654, column: 19, scope: !763)
!763 = distinct !DILexicalBlock(scope: !757, file: !1, line: 653, column: 9)
!764 = !DILocation(line: 654, column: 25, scope: !763)
!765 = !{!749, !396, i64 0}
!766 = !DILocation(line: 655, column: 19, scope: !763)
!767 = !DILocation(line: 655, column: 25, scope: !763)
!768 = !DILocation(line: 656, column: 19, scope: !763)
!769 = !DILocation(line: 656, column: 25, scope: !763)
!770 = !DILocation(line: 657, column: 41, scope: !763)
!771 = !DILocation(line: 657, column: 56, scope: !763)
!772 = !DILocation(line: 657, column: 25, scope: !763)
!773 = !{!749, !396, i64 16}
!774 = !DILocation(line: 658, column: 50, scope: !763)
!775 = !DILocation(line: 664, column: 3, scope: !161)
!776 = !DILocation(line: 668, column: 34, scope: !176)
!777 = !DILocation(line: 669, column: 34, scope: !176)
!778 = !DILocation(line: 670, column: 40, scope: !176)
!779 = !DILocation(line: 671, column: 40, scope: !176)
!780 = !DILocation(line: 672, column: 40, scope: !176)
!781 = !DILocation(line: 673, column: 29, scope: !176)
!782 = !DILocation(line: 675, column: 3, scope: !176)
!783 = !DILocation(line: 676, column: 49, scope: !176)
!784 = !DILocation(line: 676, column: 57, scope: !176)
!785 = !DILocation(line: 676, column: 65, scope: !176)
!786 = !DILocation(line: 676, column: 11, scope: !176)
!787 = !DILocation(line: 676, column: 9, scope: !176)
!788 = !DILocation(line: 677, column: 3, scope: !176)
!789 = !DILocation(line: 678, column: 3, scope: !176)
!790 = !DILocation(line: 679, column: 1, scope: !176)
!791 = !DILocation(line: 703, column: 41, scope: !191)
!792 = !DILocation(line: 708, column: 28, scope: !191)
!793 = !DILocation(line: 708, column: 12, scope: !191)
!794 = !DILocation(line: 705, column: 7, scope: !191)
!795 = !DILocation(line: 710, column: 14, scope: !796)
!796 = distinct !DILexicalBlock(scope: !191, file: !1, line: 710, column: 7)
!797 = !DILocation(line: 710, column: 7, scope: !191)
!798 = !DILocation(line: 712, column: 5, scope: !799)
!799 = distinct !DILexicalBlock(scope: !796, file: !1, line: 711, column: 3)
!800 = !DILocation(line: 715, column: 3, scope: !799)
!801 = !DILocation(line: 717, column: 3, scope: !191)
!802 = !DILocation(line: 741, column: 39, scope: !197)
!803 = !DILocation(line: 749, column: 39, scope: !197)
!804 = !DILocation(line: 749, column: 18, scope: !197)
!805 = !DILocation(line: 750, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !197, file: !1, line: 750, column: 7)
!807 = !DILocation(line: 750, column: 7, scope: !197)
!808 = !DILocation(line: 752, column: 47, scope: !809)
!809 = distinct !DILexicalBlock(scope: !806, file: !1, line: 751, column: 3)
!810 = !DILocation(line: 743, column: 15, scope: !197)
!811 = !DILocation(line: 753, column: 3, scope: !809)
!812 = !DILocation(line: 759, column: 3, scope: !197)
!813 = !DILocation(line: 763, column: 34, scope: !204)
!814 = !DILocation(line: 763, column: 40, scope: !204)
!815 = !DILocation(line: 765, column: 3, scope: !204)
!816 = !DILocation(line: 766, column: 11, scope: !204)
!817 = !DILocation(line: 766, column: 9, scope: !204)
!818 = !DILocation(line: 767, column: 3, scope: !204)
!819 = !DILocation(line: 768, column: 1, scope: !204)
!820 = !DILocation(line: 817, column: 26, scope: !212)
!821 = !DILocation(line: 817, column: 43, scope: !212)
!822 = !DILocation(line: 817, column: 61, scope: !212)
!823 = !DILocation(line: 820, column: 7, scope: !212)
!824 = !DILocation(line: 821, column: 7, scope: !212)
!825 = !DILocation(line: 826, column: 19, scope: !212)
!826 = !DILocation(line: 826, column: 45, scope: !212)
!827 = !DILocation(line: 826, column: 3, scope: !212)
!828 = !DILocation(line: 822, column: 23, scope: !212)
!829 = !DILocation(line: 827, column: 9, scope: !830)
!830 = distinct !DILexicalBlock(scope: !212, file: !1, line: 827, column: 7)
!831 = !DILocation(line: 827, column: 7, scope: !212)
!832 = !DILocation(line: 829, column: 5, scope: !833)
!833 = distinct !DILexicalBlock(scope: !830, file: !1, line: 828, column: 3)
!834 = !DILocation(line: 832, column: 3, scope: !833)
!835 = !DILocation(line: 835, column: 13, scope: !836)
!836 = distinct !DILexicalBlock(scope: !837, file: !1, line: 835, column: 9)
!837 = distinct !DILexicalBlock(scope: !830, file: !1, line: 834, column: 3)
!838 = !DILocation(line: 837, column: 31, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !1, line: 837, column: 11)
!840 = distinct !DILexicalBlock(scope: !836, file: !1, line: 836, column: 5)
!841 = !DILocation(line: 835, column: 9, scope: !837)
!842 = !DILocation(line: 851, column: 21, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !1, line: 851, column: 7)
!844 = distinct !DILexicalBlock(scope: !845, file: !1, line: 851, column: 7)
!845 = distinct !DILexicalBlock(scope: !836, file: !1, line: 850, column: 5)
!846 = !DILocation(line: 851, column: 7, scope: !844)
!847 = !DILocation(line: 837, column: 15, scope: !839)
!848 = !DILocation(line: 837, column: 11, scope: !840)
!849 = !DILocation(line: 839, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !839, file: !1, line: 838, column: 7)
!851 = !DILocation(line: 843, column: 7, scope: !850)
!852 = !DILocation(line: 846, column: 42, scope: !853)
!853 = distinct !DILexicalBlock(scope: !839, file: !1, line: 845, column: 7)
!854 = !DILocation(line: 846, column: 18, scope: !853)
!855 = !DILocation(line: 846, column: 32, scope: !853)
!856 = !DILocation(line: 846, column: 46, scope: !853)
!857 = !DILocation(line: 853, column: 27, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !1, line: 853, column: 13)
!859 = distinct !DILexicalBlock(scope: !843, file: !1, line: 852, column: 7)
!860 = !DILocation(line: 853, column: 37, scope: !858)
!861 = !DILocation(line: 853, column: 13, scope: !858)
!862 = !DILocation(line: 853, column: 42, scope: !858)
!863 = !DILocation(line: 854, column: 13, scope: !858)
!864 = !DILocation(line: 851, column: 23, scope: !843)
!865 = !DILocation(line: 853, column: 13, scope: !859)
!866 = !DILocation(line: 857, column: 34, scope: !867)
!867 = distinct !DILexicalBlock(scope: !858, file: !1, line: 855, column: 9)
!868 = !DILocation(line: 857, column: 44, scope: !867)
!869 = !DILocation(line: 858, column: 9, scope: !867)
!870 = !DILocation(line: 851, column: 37, scope: !843)
!871 = !DILocation(line: 860, column: 19, scope: !872)
!872 = distinct !DILexicalBlock(scope: !845, file: !1, line: 860, column: 11)
!873 = !DILocation(line: 860, column: 11, scope: !845)
!874 = !DILocation(line: 862, column: 9, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !1, line: 861, column: 7)
!876 = !DILocation(line: 866, column: 7, scope: !875)
!877 = !DILocation(line: 870, column: 3, scope: !212)
!878 = !DILocation(line: 874, column: 34, scope: !221)
!879 = !DILocation(line: 874, column: 53, scope: !221)
!880 = !DILocation(line: 874, column: 58, scope: !221)
!881 = !DILocation(line: 876, column: 3, scope: !221)
!882 = !DILocation(line: 877, column: 30, scope: !221)
!883 = !DILocation(line: 877, column: 13, scope: !221)
!884 = !DILocation(line: 877, column: 11, scope: !221)
!885 = !DILocation(line: 878, column: 3, scope: !221)
!886 = !DILocation(line: 879, column: 3, scope: !221)
!887 = !DILocation(line: 880, column: 1, scope: !221)
!888 = !DILocation(line: 883, column: 38, scope: !231)
!889 = !DILocation(line: 890, column: 19, scope: !231)
!890 = !DILocation(line: 890, column: 45, scope: !231)
!891 = !DILocation(line: 890, column: 3, scope: !231)
!892 = !DILocation(line: 886, column: 23, scope: !231)
!893 = !DILocation(line: 891, column: 9, scope: !894)
!894 = distinct !DILexicalBlock(scope: !231, file: !1, line: 891, column: 7)
!895 = !DILocation(line: 891, column: 7, scope: !231)
!896 = !DILocation(line: 893, column: 5, scope: !897)
!897 = distinct !DILexicalBlock(scope: !894, file: !1, line: 892, column: 3)
!898 = !DILocation(line: 885, column: 7, scope: !231)
!899 = !DILocation(line: 896, column: 3, scope: !897)
!900 = !DILocation(line: 899, column: 25, scope: !901)
!901 = distinct !DILexicalBlock(scope: !894, file: !1, line: 898, column: 3)
!902 = !DILocation(line: 902, column: 3, scope: !231)
!903 = !DILocation(line: 906, column: 34, scope: !236)
!904 = !DILocation(line: 906, column: 39, scope: !236)
!905 = !DILocation(line: 908, column: 3, scope: !236)
!906 = !DILocation(line: 909, column: 10, scope: !236)
!907 = !DILocation(line: 909, column: 8, scope: !236)
!908 = !DILocation(line: 910, column: 3, scope: !236)
!909 = !DILocation(line: 911, column: 1, scope: !236)
!910 = !DILocation(line: 932, column: 32, scope: !242)
!911 = !DILocation(line: 932, column: 50, scope: !242)
!912 = !DILocation(line: 935, column: 7, scope: !242)
!913 = !DILocation(line: 941, column: 19, scope: !242)
!914 = !DILocation(line: 941, column: 45, scope: !242)
!915 = !DILocation(line: 941, column: 3, scope: !242)
!916 = !DILocation(line: 936, column: 23, scope: !242)
!917 = !DILocation(line: 942, column: 9, scope: !918)
!918 = distinct !DILexicalBlock(scope: !242, file: !1, line: 942, column: 7)
!919 = !DILocation(line: 942, column: 7, scope: !242)
!920 = !DILocation(line: 949, column: 35, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !1, line: 949, column: 5)
!922 = distinct !DILexicalBlock(scope: !923, file: !1, line: 949, column: 5)
!923 = distinct !DILexicalBlock(scope: !918, file: !1, line: 948, column: 3)
!924 = !DILocation(line: 949, column: 19, scope: !921)
!925 = !DILocation(line: 949, column: 5, scope: !922)
!926 = !DILocation(line: 944, column: 5, scope: !927)
!927 = distinct !DILexicalBlock(scope: !918, file: !1, line: 943, column: 3)
!928 = !DILocation(line: 946, column: 3, scope: !927)
!929 = !DILocation(line: 951, column: 38, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !1, line: 951, column: 11)
!931 = distinct !DILexicalBlock(scope: !921, file: !1, line: 950, column: 5)
!932 = !DILocation(line: 951, column: 48, scope: !930)
!933 = !DILocation(line: 951, column: 11, scope: !930)
!934 = !DILocation(line: 951, column: 11, scope: !931)
!935 = !DILocation(line: 949, column: 21, scope: !921)
!936 = !DILocation(line: 956, column: 13, scope: !937)
!937 = distinct !DILexicalBlock(scope: !923, file: !1, line: 956, column: 9)
!938 = !DILocation(line: 956, column: 9, scope: !923)
!939 = !DILocation(line: 958, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !937, file: !1, line: 957, column: 5)
!941 = !DILocation(line: 962, column: 5, scope: !940)
!942 = !DILocation(line: 965, column: 3, scope: !242)
!943 = !DILocation(line: 969, column: 34, scope: !251)
!944 = !DILocation(line: 969, column: 39, scope: !251)
!945 = !DILocation(line: 971, column: 3, scope: !251)
!946 = !DILocation(line: 972, column: 10, scope: !251)
!947 = !DILocation(line: 972, column: 8, scope: !251)
!948 = !DILocation(line: 973, column: 3, scope: !251)
!949 = !DILocation(line: 974, column: 3, scope: !251)
!950 = !DILocation(line: 975, column: 1, scope: !251)
!951 = !DILocation(line: 1034, column: 33, scope: !262)
!952 = !DILocation(line: 1035, column: 33, scope: !262)
!953 = !DILocation(line: 1036, column: 33, scope: !262)
!954 = !DILocation(line: 1037, column: 26, scope: !262)
!955 = !DILocation(line: 1038, column: 34, scope: !262)
!956 = !DILocation(line: 1039, column: 34, scope: !262)
!957 = !DILocation(line: 1042, column: 7, scope: !262)
!958 = !DILocation(line: 1048, column: 13, scope: !959)
!959 = distinct !DILexicalBlock(scope: !262, file: !1, line: 1048, column: 7)
!960 = !DILocation(line: 1048, column: 30, scope: !959)
!961 = !DILocation(line: 1048, column: 21, scope: !959)
!962 = !DILocation(line: 1050, column: 5, scope: !963)
!963 = distinct !DILexicalBlock(scope: !959, file: !1, line: 1049, column: 3)
!964 = !DILocation(line: 1053, column: 3, scope: !963)
!965 = !DILocation(line: 1054, column: 21, scope: !966)
!966 = distinct !DILexicalBlock(scope: !959, file: !1, line: 1054, column: 12)
!967 = !DILocation(line: 1054, column: 39, scope: !966)
!968 = !DILocation(line: 1054, column: 26, scope: !966)
!969 = !DILocation(line: 1056, column: 5, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !1, line: 1055, column: 3)
!971 = !DILocation(line: 1059, column: 3, scope: !970)
!972 = !DILocation(line: 1060, column: 23, scope: !973)
!973 = distinct !DILexicalBlock(scope: !966, file: !1, line: 1060, column: 12)
!974 = !DILocation(line: 1060, column: 12, scope: !966)
!975 = !DILocation(line: 1062, column: 5, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !1, line: 1061, column: 3)
!977 = !DILocation(line: 1065, column: 3, scope: !976)
!978 = !DILocation(line: 1069, column: 21, scope: !979)
!979 = distinct !DILexicalBlock(scope: !973, file: !1, line: 1067, column: 3)
!980 = !DILocation(line: 1069, column: 47, scope: !979)
!981 = !DILocation(line: 1069, column: 5, scope: !979)
!982 = !DILocation(line: 1045, column: 26, scope: !262)
!983 = !DILocation(line: 1070, column: 11, scope: !984)
!984 = distinct !DILexicalBlock(scope: !979, file: !1, line: 1070, column: 9)
!985 = !DILocation(line: 1070, column: 9, scope: !979)
!986 = !DILocation(line: 1072, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !1, line: 1071, column: 5)
!988 = !DILocation(line: 1075, column: 5, scope: !987)
!989 = !DILocation(line: 1078, column: 20, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !1, line: 1078, column: 11)
!991 = distinct !DILexicalBlock(scope: !984, file: !1, line: 1077, column: 5)
!992 = !DILocation(line: 1078, column: 11, scope: !991)
!993 = !DILocation(line: 1085, column: 39, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !1, line: 1085, column: 9)
!995 = distinct !DILexicalBlock(scope: !996, file: !1, line: 1085, column: 9)
!996 = distinct !DILexicalBlock(scope: !990, file: !1, line: 1083, column: 7)
!997 = !DILocation(line: 1085, column: 23, scope: !994)
!998 = !DILocation(line: 1085, column: 9, scope: !995)
!999 = !DILocation(line: 1087, column: 42, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 1087, column: 15)
!1001 = distinct !DILexicalBlock(scope: !994, file: !1, line: 1086, column: 9)
!1002 = !DILocation(line: 1087, column: 52, scope: !1000)
!1003 = !DILocation(line: 1087, column: 15, scope: !1000)
!1004 = !DILocation(line: 1085, column: 25, scope: !994)
!1005 = !DILocation(line: 1087, column: 15, scope: !1001)
!1006 = !DILocation(line: 1089, column: 36, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 1088, column: 11)
!1008 = !DILocation(line: 1089, column: 22, scope: !1007)
!1009 = !DILocation(line: 1046, column: 26, scope: !262)
!1010 = !DILocation(line: 1093, column: 19, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !996, file: !1, line: 1093, column: 13)
!1012 = !DILocation(line: 1093, column: 13, scope: !996)
!1013 = !DILocation(line: 1095, column: 11, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !1, line: 1094, column: 9)
!1015 = !DILocation(line: 1101, column: 11, scope: !991)
!1016 = !DILocation(line: 1080, column: 47, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !990, file: !1, line: 1079, column: 7)
!1018 = !DILocation(line: 1080, column: 18, scope: !1017)
!1019 = !DILocation(line: 1080, column: 32, scope: !1017)
!1020 = !DILocation(line: 1101, column: 11, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !991, file: !1, line: 1101, column: 11)
!1022 = !DILocation(line: 1043, column: 7, scope: !262)
!1023 = !DILocation(line: 1104, column: 28, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 1104, column: 9)
!1025 = distinct !DILexicalBlock(scope: !1021, file: !1, line: 1102, column: 7)
!1026 = !DILocation(line: 1104, column: 9, scope: !1024)
!1027 = !DILocation(line: 1117, column: 20, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 1115, column: 11)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 1114, column: 15)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 1105, column: 9)
!1031 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 1104, column: 9)
!1032 = !DILocation(line: 1118, column: 20, scope: !1028)
!1033 = !DILocation(line: 1114, column: 21, scope: !1029)
!1034 = !DILocation(line: 1114, column: 24, scope: !1029)
!1035 = !DILocation(line: 1114, column: 15, scope: !1030)
!1036 = !DILocation(line: 1117, column: 28, scope: !1028)
!1037 = !DILocation(line: 1118, column: 28, scope: !1028)
!1038 = !DILocation(line: 1123, column: 11, scope: !1028)
!1039 = !DILocation(line: 1104, column: 57, scope: !1031)
!1040 = !DILocation(line: 1125, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 1125, column: 6)
!1042 = !DILocation(line: 1125, column: 6, scope: !1025)
!1043 = !DILocation(line: 1133, column: 3, scope: !262)
!1044 = !DILocation(line: 1137, column: 34, scope: !280)
!1045 = !DILocation(line: 1138, column: 40, scope: !280)
!1046 = !DILocation(line: 1139, column: 40, scope: !280)
!1047 = !DILocation(line: 1140, column: 40, scope: !280)
!1048 = !DILocation(line: 1141, column: 40, scope: !280)
!1049 = !DILocation(line: 1142, column: 29, scope: !280)
!1050 = !DILocation(line: 1144, column: 3, scope: !280)
!1051 = !DILocation(line: 1145, column: 46, scope: !280)
!1052 = !DILocation(line: 1145, column: 11, scope: !280)
!1053 = !DILocation(line: 1145, column: 9, scope: !280)
!1054 = !DILocation(line: 1146, column: 3, scope: !280)
!1055 = !DILocation(line: 1147, column: 3, scope: !280)
!1056 = !DILocation(line: 1148, column: 1, scope: !280)
!1057 = !DILocation(line: 1207, column: 42, scope: !295)
!1058 = !DILocation(line: 1208, column: 36, scope: !295)
!1059 = !DILocation(line: 1209, column: 36, scope: !295)
!1060 = !DILocation(line: 1210, column: 35, scope: !295)
!1061 = !DILocation(line: 1211, column: 43, scope: !295)
!1062 = !DILocation(line: 1212, column: 43, scope: !295)
!1063 = !DILocation(line: 1215, column: 7, scope: !295)
!1064 = !DILocation(line: 1221, column: 13, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !295, file: !1, line: 1221, column: 7)
!1066 = !DILocation(line: 1221, column: 30, scope: !1065)
!1067 = !DILocation(line: 1221, column: 21, scope: !1065)
!1068 = !DILocation(line: 1223, column: 5, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 1222, column: 3)
!1070 = !DILocation(line: 1227, column: 3, scope: !1069)
!1071 = !DILocation(line: 1228, column: 21, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 1228, column: 12)
!1073 = !DILocation(line: 1228, column: 39, scope: !1072)
!1074 = !DILocation(line: 1228, column: 26, scope: !1072)
!1075 = !DILocation(line: 1230, column: 5, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 1229, column: 3)
!1077 = !DILocation(line: 1233, column: 3, scope: !1076)
!1078 = !DILocation(line: 1234, column: 23, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 1234, column: 12)
!1080 = !DILocation(line: 1234, column: 12, scope: !1072)
!1081 = !DILocation(line: 1236, column: 5, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 1235, column: 3)
!1083 = !DILocation(line: 1239, column: 3, scope: !1082)
!1084 = !DILocation(line: 1243, column: 21, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 1241, column: 3)
!1086 = !DILocation(line: 1243, column: 47, scope: !1085)
!1087 = !DILocation(line: 1243, column: 5, scope: !1085)
!1088 = !DILocation(line: 1217, column: 26, scope: !295)
!1089 = !DILocation(line: 1244, column: 11, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 1244, column: 9)
!1091 = !DILocation(line: 1244, column: 9, scope: !1085)
!1092 = !DILocation(line: 1246, column: 7, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 1245, column: 5)
!1094 = !DILocation(line: 1249, column: 5, scope: !1093)
!1095 = !DILocation(line: 1252, column: 20, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 1252, column: 11)
!1097 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 1251, column: 5)
!1098 = !DILocation(line: 1252, column: 11, scope: !1097)
!1099 = !DILocation(line: 1259, column: 39, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 1259, column: 9)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 1259, column: 9)
!1102 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 1257, column: 7)
!1103 = !DILocation(line: 1259, column: 23, scope: !1100)
!1104 = !DILocation(line: 1259, column: 9, scope: !1101)
!1105 = !DILocation(line: 1261, column: 42, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !1, line: 1261, column: 15)
!1107 = distinct !DILexicalBlock(scope: !1100, file: !1, line: 1260, column: 9)
!1108 = !DILocation(line: 1261, column: 52, scope: !1106)
!1109 = !DILocation(line: 1261, column: 15, scope: !1106)
!1110 = !DILocation(line: 1259, column: 25, scope: !1100)
!1111 = !DILocation(line: 1261, column: 15, scope: !1107)
!1112 = !DILocation(line: 1263, column: 36, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 1262, column: 11)
!1114 = !DILocation(line: 1263, column: 22, scope: !1113)
!1115 = !DILocation(line: 1218, column: 26, scope: !295)
!1116 = !DILocation(line: 1267, column: 19, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 1267, column: 13)
!1118 = !DILocation(line: 1267, column: 13, scope: !1102)
!1119 = !DILocation(line: 1269, column: 11, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 1268, column: 9)
!1121 = !DILocation(line: 1275, column: 11, scope: !1097)
!1122 = !DILocation(line: 1254, column: 47, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 1253, column: 7)
!1124 = !DILocation(line: 1254, column: 18, scope: !1123)
!1125 = !DILocation(line: 1254, column: 32, scope: !1123)
!1126 = !DILocation(line: 1275, column: 11, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 1275, column: 11)
!1128 = !DILocation(line: 1277, column: 28, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 1277, column: 9)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !1, line: 1276, column: 7)
!1131 = !DILocation(line: 1277, column: 9, scope: !1129)
!1132 = !DILocation(line: 1287, column: 21, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 1287, column: 15)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 1278, column: 9)
!1135 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 1277, column: 9)
!1136 = !DILocation(line: 1287, column: 24, scope: !1133)
!1137 = !DILocation(line: 1287, column: 15, scope: !1134)
!1138 = !DILocation(line: 1293, column: 28, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 1288, column: 11)
!1140 = !DILocation(line: 1293, column: 20, scope: !1139)
!1141 = !DILocation(line: 1294, column: 28, scope: !1139)
!1142 = !DILocation(line: 1294, column: 20, scope: !1139)
!1143 = !DILocation(line: 1277, column: 58, scope: !1135)
!1144 = !DILocation(line: 1303, column: 30, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !1, line: 1299, column: 9)
!1146 = distinct !DILexicalBlock(scope: !1130, file: !1, line: 1298, column: 13)
!1147 = !DILocation(line: 1300, column: 11, scope: !1145)
!1148 = !DILocation(line: 1305, column: 9, scope: !1145)
!1149 = !DILocation(line: 1310, column: 3, scope: !295)
!1150 = !DILocation(line: 1314, column: 34, scope: !310)
!1151 = !DILocation(line: 1315, column: 40, scope: !310)
!1152 = !DILocation(line: 1316, column: 34, scope: !310)
!1153 = !DILocation(line: 1317, column: 34, scope: !310)
!1154 = !DILocation(line: 1318, column: 40, scope: !310)
!1155 = !DILocation(line: 1319, column: 29, scope: !310)
!1156 = !DILocation(line: 1321, column: 3, scope: !310)
!1157 = !DILocation(line: 1322, column: 55, scope: !310)
!1158 = !DILocation(line: 1322, column: 11, scope: !310)
!1159 = !DILocation(line: 1322, column: 9, scope: !310)
!1160 = !DILocation(line: 1323, column: 3, scope: !310)
!1161 = !DILocation(line: 1324, column: 3, scope: !310)
!1162 = !DILocation(line: 1325, column: 1, scope: !310)
!1163 = !DILocation(line: 1351, column: 37, scope: !325)
!1164 = !DILocation(line: 1352, column: 37, scope: !325)
!1165 = !DILocation(line: 1353, column: 37, scope: !325)
!1166 = !DILocation(line: 1354, column: 30, scope: !325)
!1167 = !DILocation(line: 1355, column: 38, scope: !325)
!1168 = !DILocation(line: 1356, column: 38, scope: !325)
!1169 = !DILocation(line: 1360, column: 13, scope: !325)
!1170 = !DILocation(line: 1361, column: 13, scope: !325)
!1171 = !DILocation(line: 1364, column: 12, scope: !325)
!1172 = !DILocation(line: 1358, column: 7, scope: !325)
!1173 = !DILocation(line: 1366, column: 14, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !325, file: !1, line: 1366, column: 7)
!1175 = !DILocation(line: 1366, column: 7, scope: !325)
!1176 = !DILocation(line: 1368, column: 13, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 1368, column: 9)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 1367, column: 3)
!1179 = !DILocation(line: 1368, column: 9, scope: !1178)
!1180 = !DILocation(line: 1374, column: 17, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 1373, column: 5)
!1182 = !DILocation(line: 1359, column: 7, scope: !325)
!1183 = !DILocation(line: 1376, column: 14, scope: !1178)
!1184 = !DILocation(line: 1377, column: 35, scope: !1178)
!1185 = !DILocation(line: 1377, column: 14, scope: !1178)
!1186 = !DILocation(line: 1377, column: 18, scope: !1178)
!1187 = !{!1188, !396, i64 24}
!1188 = !{!"", !420, i64 0, !420, i64 4, !396, i64 8, !396, i64 16, !396, i64 24, !396, i64 32, !396, i64 40, !396, i64 48, !396, i64 56, !629, i64 64, !396, i64 72, !396, i64 80, !396, i64 88, !396, i64 96, !420, i64 104, !396, i64 112, !629, i64 120, !396, i64 128, !396, i64 136, !396, i64 144}
!1189 = !DILocation(line: 1377, column: 45, scope: !1178)
!1190 = !{!1188, !396, i64 72}
!1191 = !DILocation(line: 1377, column: 41, scope: !1178)
!1192 = !DILocation(line: 1377, column: 39, scope: !1178)
!1193 = !DILocation(line: 1376, column: 27, scope: !1178)
!1194 = !DILocation(line: 1376, column: 12, scope: !1178)
!1195 = !DILocation(line: 1379, column: 18, scope: !1178)
!1196 = !{!1188, !396, i64 32}
!1197 = !DILocation(line: 1379, column: 14, scope: !1178)
!1198 = !DILocation(line: 1379, column: 39, scope: !1178)
!1199 = !DILocation(line: 1379, column: 13, scope: !1178)
!1200 = !DILocation(line: 1379, column: 46, scope: !1178)
!1201 = !DILocation(line: 1379, column: 44, scope: !1178)
!1202 = !DILocation(line: 1378, column: 27, scope: !1178)
!1203 = !DILocation(line: 1378, column: 12, scope: !1178)
!1204 = !DILocation(line: 1380, column: 3, scope: !1178)
!1205 = !DILocation(line: 1383, column: 5, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 1382, column: 3)
!1207 = !DILocation(line: 1391, column: 3, scope: !325)
!1208 = !DILocation(line: 1395, column: 34, scope: !337)
!1209 = !DILocation(line: 1396, column: 40, scope: !337)
!1210 = !DILocation(line: 1397, column: 40, scope: !337)
!1211 = !DILocation(line: 1398, column: 40, scope: !337)
!1212 = !DILocation(line: 1399, column: 40, scope: !337)
!1213 = !DILocation(line: 1400, column: 29, scope: !337)
!1214 = !DILocation(line: 1402, column: 3, scope: !337)
!1215 = !DILocation(line: 1403, column: 51, scope: !337)
!1216 = !DILocation(line: 1403, column: 11, scope: !337)
!1217 = !DILocation(line: 1403, column: 9, scope: !337)
!1218 = !DILocation(line: 1404, column: 3, scope: !337)
!1219 = !DILocation(line: 1405, column: 3, scope: !337)
!1220 = !DILocation(line: 1406, column: 1, scope: !337)
!1221 = !DILocation(line: 1424, column: 11, scope: !350)
!1222 = !DILocation(line: 1424, column: 3, scope: !350)
!1223 = !DILocation(line: 1447, column: 49, scope: !353)
!1224 = !DILocation(line: 1452, column: 26, scope: !353)
!1225 = !DILocation(line: 1452, column: 5, scope: !353)
!1226 = !DILocation(line: 1454, column: 11, scope: !353)
!1227 = !DILocation(line: 1454, column: 40, scope: !353)
!1228 = !DILocation(line: 1454, column: 3, scope: !353)
!1229 = !DILocation(line: 1484, column: 33, scope: !357)
!1230 = !DILocation(line: 1484, column: 50, scope: !357)
!1231 = !DILocation(line: 1489, column: 19, scope: !357)
!1232 = !DILocation(line: 1489, column: 45, scope: !357)
!1233 = !DILocation(line: 1489, column: 3, scope: !357)
!1234 = !DILocation(line: 1486, column: 23, scope: !357)
!1235 = !DILocation(line: 1490, column: 9, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !357, file: !1, line: 1490, column: 7)
!1237 = !DILocation(line: 1490, column: 7, scope: !357)
!1238 = !DILocation(line: 1492, column: 5, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 1491, column: 3)
!1240 = !DILocation(line: 1487, column: 15, scope: !357)
!1241 = !DILocation(line: 1495, column: 3, scope: !1239)
!1242 = !DILocation(line: 1498, column: 53, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 1497, column: 3)
!1244 = !DILocation(line: 1498, column: 29, scope: !1243)
!1245 = !DILocation(line: 1498, column: 43, scope: !1243)
!1246 = !DILocation(line: 1498, column: 57, scope: !1243)
!1247 = !DILocation(line: 1501, column: 3, scope: !357)
