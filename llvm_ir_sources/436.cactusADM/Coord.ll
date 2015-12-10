; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@.str = private unnamed_addr constant [62 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c\00", align 1
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

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_Coord_c() #0 {
entry:
  ret i8* getelementptr inbounds ([80 x i8]* @.str42, i64 0, i64 0), !dbg !384
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_CoordRegisterSystem(i32 %dim, i8* %thorn, i8* %systemname) #1 {
entry:
  %new_system = alloca %struct.Coordsystem*, align 8
  call void @llvm.dbg.value(metadata !{i32 %dim}, i64 0, metadata !16), !dbg !385
  call void @llvm.dbg.value(metadata !{i8* %thorn}, i64 0, metadata !17), !dbg !386
  call void @llvm.dbg.value(metadata !{i8* %systemname}, i64 0, metadata !18), !dbg !387
  call void @llvm.dbg.value(metadata !388, i64 0, metadata !19), !dbg !389
  call void @llvm.dbg.declare(metadata !{%struct.Coordsystem** %new_system}, metadata !20), !dbg !390
  %0 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !391, !tbaa !392
  %1 = bitcast %struct.Coordsystem** %new_system to i8**, !dbg !391
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %systemname, i8** %1) #6, !dbg !391
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %new_system}, i64 0, metadata !20), !dbg !395
  %2 = load %struct.Coordsystem** %new_system, align 8, !dbg !395, !tbaa !392
  %tobool = icmp eq %struct.Coordsystem* %2, null, !dbg !395
  br i1 %tobool, label %if.then, label %if.else13, !dbg !395

if.then:                                          ; preds = %entry
  %call2 = call noalias i8* @malloc(i64 32) #6, !dbg !396
  %3 = bitcast i8* %call2 to %struct.Coordsystem*, !dbg !396
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem* %3}, i64 0, metadata !20), !dbg !396
  store %struct.Coordsystem* %3, %struct.Coordsystem** %new_system, align 8, !dbg !396, !tbaa !392
  %tobool3 = icmp eq i8* %call2, null, !dbg !398
  br i1 %tobool3, label %if.end22, label %if.then4, !dbg !398

if.then4:                                         ; preds = %if.then
  %cmp = icmp sgt i32 %dim, 0, !dbg !399
  br i1 %cmp, label %if.then5, label %if.else, !dbg !399

if.then5:                                         ; preds = %if.then4
  %dimension = getelementptr inbounds i8* %call2, i64 8, !dbg !401
  %4 = bitcast i8* %dimension to i32*, !dbg !401
  store i32 %dim, i32* %4, align 4, !dbg !401, !tbaa !403
  %call6 = call i8* @CCTK_ThornImplementation(i8* %thorn) #6, !dbg !404
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %new_system}, i64 0, metadata !20), !dbg !404
  %5 = load %struct.Coordsystem** %new_system, align 8, !dbg !404, !tbaa !392
  %implementation = getelementptr inbounds %struct.Coordsystem* %5, i64 0, i32 0, !dbg !404
  store i8* %call6, i8** %implementation, align 8, !dbg !404, !tbaa !392
  %call7 = call noalias i8* @strdup(i8* %systemname) #6, !dbg !405
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %new_system}, i64 0, metadata !20), !dbg !405
  %6 = load %struct.Coordsystem** %new_system, align 8, !dbg !405, !tbaa !392
  %systemname8 = getelementptr inbounds %struct.Coordsystem* %6, i64 0, i32 2, !dbg !405
  store i8* %call7, i8** %systemname8, align 8, !dbg !405, !tbaa !392
  %conv = sext i32 %dim to i64, !dbg !406
  %call9 = call noalias i8* @calloc(i64 %conv, i64 32) #6, !dbg !406
  %7 = bitcast i8* %call9 to %struct.Coordprops*, !dbg !406
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %new_system}, i64 0, metadata !20), !dbg !406
  %8 = load %struct.Coordsystem** %new_system, align 8, !dbg !406, !tbaa !392
  %coords = getelementptr inbounds %struct.Coordsystem* %8, i64 0, i32 3, !dbg !406
  store %struct.Coordprops* %7, %struct.Coordprops** %coords, align 8, !dbg !406, !tbaa !392
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %new_system}, i64 0, metadata !20), !dbg !407
  %9 = load %struct.Coordsystem** %new_system, align 8, !dbg !407, !tbaa !392
  %10 = bitcast %struct.Coordsystem* %9 to i8*, !dbg !407
  %call10 = call i32 @Util_NewHandle(%struct.cHandledData** @CoordSystems, i8* %systemname, i8* %10) #6, !dbg !407
  call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !19), !dbg !407
  %11 = load i32* @num_systems, align 4, !dbg !408, !tbaa !403
  %inc = add nsw i32 %11, 1, !dbg !408
  store i32 %inc, i32* @num_systems, align 4, !dbg !408, !tbaa !403
  br label %if.end22, !dbg !409

if.else:                                          ; preds = %if.then4
  call void @llvm.dbg.value(metadata !410, i64 0, metadata !19), !dbg !411
  %call11 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 192, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i32 %dim) #6, !dbg !413
  br label %if.end22

if.else13:                                        ; preds = %entry
  %dimension14 = getelementptr inbounds %struct.Coordsystem* %2, i64 0, i32 1, !dbg !414
  %12 = load i32* %dimension14, align 4, !dbg !414, !tbaa !403
  %cmp15 = icmp eq i32 %12, %dim, !dbg !414
  br i1 %cmp15, label %if.then17, label %if.else19, !dbg !414

if.then17:                                        ; preds = %if.else13
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !19), !dbg !416
  %call18 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 203, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), i8* %systemname) #6, !dbg !418
  br label %if.end22, !dbg !419

if.else19:                                        ; preds = %if.else13
  call void @llvm.dbg.value(metadata !388, i64 0, metadata !19), !dbg !420
  %call20 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 210, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([82 x i8]* @.str4, i64 0, i64 0), i8* %systemname) #6, !dbg !422
  br label %if.end22

if.end22:                                         ; preds = %if.then, %if.then17, %if.else19, %if.else, %if.then5
  %retval1.0 = phi i32 [ 0, %if.then17 ], [ -1, %if.else19 ], [ %call10, %if.then5 ], [ -2, %if.else ], [ -1, %if.then ]
  ret i32 %retval1.0, !dbg !423
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: optsize
declare i8* @CCTK_ThornImplementation(i8*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #4

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @cctki_coordregistersystem_(i32* nocapture %ierr, i32* nocapture %dim, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !94), !dbg !424
  tail call void @llvm.dbg.value(metadata !{i32* %dim}, i64 0, metadata !95), !dbg !424
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !96), !dbg !424
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !97), !dbg !424
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !98), !dbg !424
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !99), !dbg !424
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !425
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !100), !dbg !425
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !425
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !101), !dbg !425
  %0 = load i32* %dim, align 4, !dbg !426, !tbaa !403
  %call2 = tail call i32 @CCTKi_CoordRegisterSystem(i32 %0, i8* %call, i8* %call1) #7, !dbg !426
  store i32 %call2, i32* %ierr, align 4, !dbg !426, !tbaa !403
  tail call void @free(i8* %call1) #6, !dbg !427
  tail call void @free(i8* %call) #6, !dbg !428
  ret void, !dbg !429
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_CoordRegisterData(i32 %dir, i8* %gfname, i8* %coordname, i8* %systemname) #1 {
entry:
  %coord_system = alloca %struct.Coordsystem*, align 8
  call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !106), !dbg !430
  call void @llvm.dbg.value(metadata !{i8* %gfname}, i64 0, metadata !107), !dbg !431
  call void @llvm.dbg.value(metadata !{i8* %coordname}, i64 0, metadata !108), !dbg !432
  call void @llvm.dbg.value(metadata !{i8* %systemname}, i64 0, metadata !109), !dbg !433
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !111), !dbg !434
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !112), !dbg !435
  call void @llvm.dbg.declare(metadata !{%struct.Coordsystem** %coord_system}, metadata !113), !dbg !436
  %0 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !437, !tbaa !392
  %1 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !437
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %systemname, i8** %1) #6, !dbg !437
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !113), !dbg !438
  %2 = load %struct.Coordsystem** %coord_system, align 8, !dbg !438, !tbaa !392
  %tobool = icmp eq %struct.Coordsystem* %2, null, !dbg !438
  br i1 %tobool, label %if.then, label %if.else, !dbg !438

if.then:                                          ; preds = %entry
  %call2 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 265, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str5, i64 0, i64 0), i8* %systemname) #6, !dbg !439
  call void @llvm.dbg.value(metadata !388, i64 0, metadata !111), !dbg !441
  br label %if.end51, !dbg !442

if.else:                                          ; preds = %entry
  %cmp = icmp slt i32 %dir, 1, !dbg !443
  %dimension5.phi.trans.insert = getelementptr inbounds %struct.Coordsystem* %2, i64 0, i32 1
  %.pre = load i32* %dimension5.phi.trans.insert, align 4, !dbg !445, !tbaa !403
  %cmp3 = icmp slt i32 %.pre, %dir, !dbg !443
  %or.cond = or i1 %cmp, %cmp3, !dbg !443
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !113), !dbg !445
  br i1 %or.cond, label %if.then4, label %for.cond.preheader, !dbg !443

for.cond.preheader:                               ; preds = %if.else
  %cmp967 = icmp sgt i32 %.pre, 0, !dbg !447
  br i1 %cmp967, label %for.body, label %for.end, !dbg !447

if.then4:                                         ; preds = %if.else
  %call6 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 274, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str6, i64 0, i64 0), i32 %dir, i32 %.pre) #6, !dbg !445
  call void @llvm.dbg.value(metadata !410, i64 0, metadata !111), !dbg !450
  br label %if.end51, !dbg !451

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %3 = phi %struct.Coordsystem* [ %6, %for.inc ], [ %2, %for.cond.preheader ]
  %dup.070 = phi i32 [ %dup.1, %for.inc ], [ 0, %for.cond.preheader ]
  %retval1.069 = phi i32 [ %retval1.1, %for.inc ], [ 0, %for.cond.preheader ]
  %coords = getelementptr inbounds %struct.Coordsystem* %3, i64 0, i32 3, !dbg !452
  %4 = load %struct.Coordprops** %coords, align 8, !dbg !452, !tbaa !392
  %name = getelementptr inbounds %struct.Coordprops* %4, i64 %indvars.iv, i32 0, !dbg !452
  %5 = load i8** %name, align 8, !dbg !452, !tbaa !392
  %tobool10 = icmp eq i8* %5, null, !dbg !452
  br i1 %tobool10, label %for.inc, label %land.lhs.true, !dbg !452

land.lhs.true:                                    ; preds = %for.body
  %call15 = call i32 @CCTK_Equals(i8* %5, i8* %coordname) #6, !dbg !454
  %tobool16 = icmp eq i32 %call15, 0, !dbg !454
  br i1 %tobool16, label %for.inc, label %if.then17, !dbg !454

if.then17:                                        ; preds = %land.lhs.true
  %call18 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 289, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str7, i64 0, i64 0), i8* %coordname) #6, !dbg !455
  call void @llvm.dbg.value(metadata !457, i64 0, metadata !112), !dbg !458
  call void @llvm.dbg.value(metadata !459, i64 0, metadata !111), !dbg !460
  br label %for.inc, !dbg !461

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then17
  %retval1.1 = phi i32 [ -3, %if.then17 ], [ %retval1.069, %for.body ], [ %retval1.069, %land.lhs.true ]
  %dup.1 = phi i32 [ 1, %if.then17 ], [ %dup.070, %for.body ], [ %dup.070, %land.lhs.true ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !447
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !113), !dbg !447
  %6 = load %struct.Coordsystem** %coord_system, align 8, !dbg !447, !tbaa !392
  %dimension8 = getelementptr inbounds %struct.Coordsystem* %6, i64 0, i32 1, !dbg !447
  %7 = load i32* %dimension8, align 4, !dbg !447, !tbaa !403
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !447
  %cmp9 = icmp slt i32 %8, %7, !dbg !447
  br i1 %cmp9, label %for.body, label %for.end, !dbg !447

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %.lcssa = phi %struct.Coordsystem* [ %2, %for.cond.preheader ], [ %6, %for.inc ]
  %dup.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %dup.1, %for.inc ]
  %retval1.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %retval1.1, %for.inc ]
  %sub = add nsw i32 %dir, -1, !dbg !462
  %idxprom19 = sext i32 %sub to i64, !dbg !462
  %coords20 = getelementptr inbounds %struct.Coordsystem* %.lcssa, i64 0, i32 3, !dbg !462
  %9 = load %struct.Coordprops** %coords20, align 8, !dbg !462, !tbaa !392
  %name22 = getelementptr inbounds %struct.Coordprops* %9, i64 %idxprom19, i32 0, !dbg !462
  %10 = load i8** %name22, align 8, !dbg !462, !tbaa !392
  %tobool23 = icmp eq i8* %10, null, !dbg !462
  br i1 %tobool23, label %if.end26, label %if.end26.thread, !dbg !462

if.end26.thread:                                  ; preds = %for.end
  %call25 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 299, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str8, i64 0, i64 0), i32 %dir) #6, !dbg !463
  call void @llvm.dbg.value(metadata !457, i64 0, metadata !112), !dbg !465
  call void @llvm.dbg.value(metadata !466, i64 0, metadata !111), !dbg !467
  br label %if.end51, !dbg !468

if.end26:                                         ; preds = %for.end
  %cmp27 = icmp eq i32 %dup.0.lcssa, 0, !dbg !468
  br i1 %cmp27, label %if.then28, label %if.end51, !dbg !468

if.then28:                                        ; preds = %if.end26
  %call29 = call noalias i8* @strdup(i8* %coordname) #6, !dbg !469
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !113), !dbg !469
  %11 = load %struct.Coordsystem** %coord_system, align 8, !dbg !469, !tbaa !392
  %coords32 = getelementptr inbounds %struct.Coordsystem* %11, i64 0, i32 3, !dbg !469
  %12 = load %struct.Coordprops** %coords32, align 8, !dbg !469, !tbaa !392
  %name34 = getelementptr inbounds %struct.Coordprops* %12, i64 %idxprom19, i32 0, !dbg !469
  store i8* %call29, i8** %name34, align 8, !dbg !469, !tbaa !392
  %call35 = call i32 @CCTK_VarIndex(i8* %gfname) #6, !dbg !471
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !113), !dbg !471
  %13 = load %struct.Coordsystem** %coord_system, align 8, !dbg !471, !tbaa !392
  %coords38 = getelementptr inbounds %struct.Coordsystem* %13, i64 0, i32 3, !dbg !471
  %14 = load %struct.Coordprops** %coords38, align 8, !dbg !471, !tbaa !392
  %index = getelementptr inbounds %struct.Coordprops* %14, i64 %idxprom19, i32 1, !dbg !471
  store i32 %call35, i32* %index, align 4, !dbg !471, !tbaa !403
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !113), !dbg !472
  %cmp45 = icmp slt i32 %call35, 0, !dbg !472
  br i1 %cmp45, label %if.then46, label %if.end51, !dbg !472

if.then46:                                        ; preds = %if.then28
  %call47 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 314, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str9, i64 0, i64 0)) #6, !dbg !473
  br label %if.end51, !dbg !475

if.end51:                                         ; preds = %if.end26.thread, %if.then4, %if.then28, %if.then46, %if.end26, %if.then
  %retval1.3 = phi i32 [ -2, %if.then4 ], [ %retval1.0.lcssa, %if.then46 ], [ %retval1.0.lcssa, %if.then28 ], [ %retval1.0.lcssa, %if.end26 ], [ -1, %if.then ], [ -4, %if.end26.thread ]
  ret i32 %retval1.3, !dbg !476
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @cctk_coordregisterdata_(i32* nocapture %handle, i32* nocapture %dir, i8* %cctk_str1, i8* %cctk_str2, i8* %cctk_str3, i32 %cctk_strlen1, i32 %cctk_strlen2, i32 %cctk_strlen3) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %handle}, i64 0, metadata !118), !dbg !477
  tail call void @llvm.dbg.value(metadata !{i32* %dir}, i64 0, metadata !119), !dbg !477
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !120), !dbg !477
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !121), !dbg !477
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str3}, i64 0, metadata !122), !dbg !477
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !123), !dbg !477
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !124), !dbg !477
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen3}, i64 0, metadata !125), !dbg !477
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !478
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !126), !dbg !478
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !478
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !127), !dbg !478
  %call2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str3, i32 %cctk_strlen3) #6, !dbg !478
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !128), !dbg !478
  %0 = load i32* %dir, align 4, !dbg !479, !tbaa !403
  %call3 = tail call i32 @CCTK_CoordRegisterData(i32 %0, i8* %call, i8* %call1, i8* %call2) #7, !dbg !479
  store i32 %call3, i32* %handle, align 4, !dbg !479, !tbaa !403
  tail call void @free(i8* %call) #6, !dbg !480
  tail call void @free(i8* %call1) #6, !dbg !481
  tail call void @free(i8* %call2) #6, !dbg !482
  ret void, !dbg !483
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_CoordRegisterRange(%struct.cGH* %GH, double %min, double %max, i32 %dir, i8* %coordname, i8* %systemname) #1 {
entry:
  %coord_system = alloca %struct.Coordsystem*, align 8
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !133), !dbg !484
  call void @llvm.dbg.value(metadata !{double %min}, i64 0, metadata !134), !dbg !485
  call void @llvm.dbg.value(metadata !{double %max}, i64 0, metadata !135), !dbg !486
  call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !136), !dbg !487
  call void @llvm.dbg.value(metadata !{i8* %coordname}, i64 0, metadata !137), !dbg !488
  call void @llvm.dbg.value(metadata !{i8* %systemname}, i64 0, metadata !138), !dbg !489
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !140), !dbg !490
  call void @llvm.dbg.value(metadata !388, i64 0, metadata !141), !dbg !491
  call void @llvm.dbg.declare(metadata !{%struct.Coordsystem** %coord_system}, metadata !143), !dbg !492
  %0 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !493, !tbaa !392
  %1 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !493
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %systemname, i8** %1) #6, !dbg !493
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !143), !dbg !494
  %2 = load %struct.Coordsystem** %coord_system, align 8, !dbg !494, !tbaa !392
  %tobool = icmp eq %struct.Coordsystem* %2, null, !dbg !494
  br i1 %tobool, label %if.then, label %if.else, !dbg !494

if.then:                                          ; preds = %entry
  %call2 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 408, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str10, i64 0, i64 0), i8* %systemname) #6, !dbg !495
  call void @llvm.dbg.value(metadata !388, i64 0, metadata !140), !dbg !497
  br label %if.end72, !dbg !498

if.else:                                          ; preds = %entry
  %cmp = icmp sgt i32 %dir, -1, !dbg !499
  br i1 %cmp, label %if.then3, label %for.cond.preheader, !dbg !499

for.cond.preheader:                               ; preds = %if.else
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !143), !dbg !501
  %dimension16103 = getelementptr inbounds %struct.Coordsystem* %2, i64 0, i32 1, !dbg !501
  %3 = load i32* %dimension16103, align 4, !dbg !501, !tbaa !403
  %cmp17104 = icmp sgt i32 %3, 0, !dbg !501
  br i1 %cmp17104, label %for.body, label %if.then32, !dbg !501

if.then3:                                         ; preds = %if.else
  %cmp4 = icmp eq i32 %dir, 0, !dbg !504
  %dimension7.phi.trans.insert = getelementptr inbounds %struct.Coordsystem* %2, i64 0, i32 1
  %.pre108 = load i32* %dimension7.phi.trans.insert, align 4, !dbg !506, !tbaa !403
  %cmp5 = icmp slt i32 %.pre108, %dir, !dbg !504
  %or.cond = or i1 %cmp4, %cmp5, !dbg !504
  br i1 %or.cond, label %if.then6, label %if.end, !dbg !504

if.then6:                                         ; preds = %if.then3
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !143), !dbg !506
  %call8 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 419, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i32 %dir, i32 %.pre108) #6, !dbg !506
  call void @llvm.dbg.value(metadata !410, i64 0, metadata !140), !dbg !508
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !143), !dbg !509
  %.pre = load %struct.Coordsystem** %coord_system, align 8, !dbg !509, !tbaa !392
  br label %if.end, !dbg !510

if.end:                                           ; preds = %if.then3, %if.then6
  %4 = phi %struct.Coordsystem* [ %.pre, %if.then6 ], [ %2, %if.then3 ]
  %retval1.0 = phi i32 [ -2, %if.then6 ], [ 0, %if.then3 ]
  %sub = add nsw i32 %dir, -1, !dbg !509
  %idxprom = sext i32 %sub to i64, !dbg !509
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !143), !dbg !509
  %coords = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 3, !dbg !509
  %5 = load %struct.Coordprops** %coords, align 8, !dbg !509, !tbaa !392
  %name = getelementptr inbounds %struct.Coordprops* %5, i64 %idxprom, i32 0, !dbg !509
  %6 = load i8** %name, align 8, !dbg !509, !tbaa !392
  %tobool9 = icmp eq i8* %6, null, !dbg !509
  br i1 %tobool9, label %if.else12, label %if.end35, !dbg !509

if.else12:                                        ; preds = %if.end
  %call13 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 430, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str12, i64 0, i64 0), i32 %dir) #6, !dbg !511
  call void @llvm.dbg.value(metadata !466, i64 0, metadata !140), !dbg !513
  br label %if.end72

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %7 = phi %struct.Coordsystem* [ %11, %for.inc ], [ %2, %for.cond.preheader ]
  %vindex.0105 = phi i32 [ %vindex.1, %for.inc ], [ -1, %for.cond.preheader ]
  %coords19 = getelementptr inbounds %struct.Coordsystem* %7, i64 0, i32 3, !dbg !514
  %8 = load %struct.Coordprops** %coords19, align 8, !dbg !514, !tbaa !392
  %name21 = getelementptr inbounds %struct.Coordprops* %8, i64 %indvars.iv, i32 0, !dbg !514
  %9 = load i8** %name21, align 8, !dbg !514, !tbaa !392
  %tobool22 = icmp eq i8* %9, null, !dbg !514
  br i1 %tobool22, label %for.inc, label %land.lhs.true, !dbg !514

land.lhs.true:                                    ; preds = %for.body
  %call27 = call i32 @CCTK_Equals(i8* %9, i8* %coordname) #6, !dbg !516
  %tobool28 = icmp eq i32 %call27, 0, !dbg !516
  call void @llvm.dbg.value(metadata !517, i64 0, metadata !141), !dbg !518
  %10 = trunc i64 %indvars.iv to i32, !dbg !516
  %vindex.0.i.0 = select i1 %tobool28, i32 %vindex.0105, i32 %10, !dbg !516
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !143), !dbg !501
  %.pre107 = load %struct.Coordsystem** %coord_system, align 8, !dbg !501, !tbaa !392
  br label %for.inc, !dbg !516

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %11 = phi %struct.Coordsystem* [ %7, %for.body ], [ %.pre107, %land.lhs.true ], !dbg !501
  %vindex.1 = phi i32 [ %vindex.0105, %for.body ], [ %vindex.0.i.0, %land.lhs.true ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !501
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !143), !dbg !501
  %dimension16 = getelementptr inbounds %struct.Coordsystem* %11, i64 0, i32 1, !dbg !501
  %12 = load i32* %dimension16, align 4, !dbg !501, !tbaa !403
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !501
  %cmp17 = icmp slt i32 %13, %12, !dbg !501
  br i1 %cmp17, label %for.body, label %for.end, !dbg !501

for.end:                                          ; preds = %for.inc
  %cmp31 = icmp eq i32 %vindex.1, -1, !dbg !520
  br i1 %cmp31, label %if.then32, label %for.end.if.then37_crit_edge, !dbg !520

for.end.if.then37_crit_edge:                      ; preds = %for.end
  %coords39.phi.trans.insert = getelementptr inbounds %struct.Coordsystem* %11, i64 0, i32 3
  %.pre109 = load %struct.Coordprops** %coords39.phi.trans.insert, align 8, !dbg !521, !tbaa !392
  br label %if.then37, !dbg !520

if.then32:                                        ; preds = %for.cond.preheader, %for.end
  %call33 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 448, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str13, i64 0, i64 0), i8* %coordname) #6, !dbg !523
  call void @llvm.dbg.value(metadata !459, i64 0, metadata !140), !dbg !525
  br label %if.end72, !dbg !526

if.end35:                                         ; preds = %if.end
  br i1 %cmp4, label %if.end72, label %if.then37, !dbg !527

if.then37:                                        ; preds = %for.end.if.then37_crit_edge, %if.end35
  %14 = phi %struct.Coordprops* [ %5, %if.end35 ], [ %.pre109, %for.end.if.then37_crit_edge ]
  %15 = phi %struct.Coordsystem* [ %4, %if.end35 ], [ %11, %for.end.if.then37_crit_edge ]
  %vindex.2102 = phi i32 [ %sub, %if.end35 ], [ %vindex.1, %for.end.if.then37_crit_edge ]
  %retval1.1101 = phi i32 [ %retval1.0, %if.end35 ], [ 0, %for.end.if.then37_crit_edge ]
  %idxprom38 = sext i32 %vindex.2102 to i64, !dbg !521
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !143), !dbg !521
  %coords39 = getelementptr inbounds %struct.Coordsystem* %15, i64 0, i32 3, !dbg !521
  %listcomp = getelementptr inbounds %struct.Coordprops* %14, i64 %idxprom38, i32 2, !dbg !521
  %16 = load %struct.Coordpropslistcomp** %listcomp, align 8, !dbg !521, !tbaa !392
  %tobool41 = icmp eq %struct.Coordpropslistcomp* %16, null, !dbg !521
  br i1 %tobool41, label %if.else52, label %if.then42, !dbg !521

if.then42:                                        ; preds = %if.then37
  %call43 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 3, i32 461, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str14, i64 0, i64 0), i8* %systemname) #6, !dbg !528
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !143), !dbg !530
  %17 = load %struct.Coordsystem** %coord_system, align 8, !dbg !530, !tbaa !392
  %coords45 = getelementptr inbounds %struct.Coordsystem* %17, i64 0, i32 3, !dbg !530
  %18 = load %struct.Coordprops** %coords45, align 8, !dbg !530, !tbaa !392
  %listcomp47 = getelementptr inbounds %struct.Coordprops* %18, i64 %idxprom38, i32 2, !dbg !530
  %19 = load %struct.Coordpropslistcomp** %listcomp47, align 8, !dbg !530, !tbaa !392
  %lower = getelementptr inbounds %struct.Coordpropslistcomp* %19, i64 0, i32 1, !dbg !530
  store double %min, double* %lower, align 8, !dbg !530, !tbaa !531
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !143), !dbg !532
  %upper = getelementptr inbounds %struct.Coordpropslistcomp* %19, i64 0, i32 2, !dbg !532
  store double %max, double* %upper, align 8, !dbg !532, !tbaa !531
  br label %if.end72, !dbg !533

if.else52:                                        ; preds = %if.then37
  %call53 = call noalias i8* @malloc(i64 32) #6, !dbg !534
  call void @llvm.dbg.value(metadata !{%struct.Coordpropslistcomp* %20}, i64 0, metadata !142), !dbg !534
  %tobool54 = icmp eq i8* %call53, null, !dbg !536
  br i1 %tobool54, label %if.then55, label %if.else57, !dbg !536

if.then55:                                        ; preds = %if.else52
  %call56 = call i32 @CCTK_Warn(i32 1, i32 474, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str15, i64 0, i64 0)) #6, !dbg !537
  call void @llvm.dbg.value(metadata !539, i64 0, metadata !140), !dbg !540
  br label %if.end72, !dbg !541

if.else57:                                        ; preds = %if.else52
  %20 = bitcast i8* %call53 to %struct.Coordpropslistcomp*, !dbg !534
  %GH58 = bitcast i8* %call53 to %struct.cGH**, !dbg !542
  store %struct.cGH* %GH, %struct.cGH** %GH58, align 8, !dbg !542, !tbaa !392
  %lower59 = getelementptr inbounds i8* %call53, i64 8, !dbg !544
  %21 = bitcast i8* %lower59 to double*, !dbg !544
  store double %min, double* %21, align 8, !dbg !544, !tbaa !531
  %upper60 = getelementptr inbounds i8* %call53, i64 16, !dbg !545
  %22 = bitcast i8* %upper60 to double*, !dbg !545
  store double %max, double* %22, align 8, !dbg !545, !tbaa !531
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !143), !dbg !546
  %23 = load %struct.Coordprops** %coords39, align 8, !dbg !546, !tbaa !392
  %listcomp64 = getelementptr inbounds %struct.Coordprops* %23, i64 %idxprom38, i32 2, !dbg !546
  %24 = load %struct.Coordpropslistcomp** %listcomp64, align 8, !dbg !546, !tbaa !392
  %next = getelementptr inbounds i8* %call53, i64 24, !dbg !546
  %25 = bitcast i8* %next to %struct.Coordpropslistcomp**, !dbg !546
  store %struct.Coordpropslistcomp* %24, %struct.Coordpropslistcomp** %25, align 8, !dbg !546, !tbaa !392
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !143), !dbg !547
  %26 = load %struct.Coordprops** %coords39, align 8, !dbg !547, !tbaa !392
  %listcomp68 = getelementptr inbounds %struct.Coordprops* %26, i64 %idxprom38, i32 2, !dbg !547
  store %struct.Coordpropslistcomp* %20, %struct.Coordpropslistcomp** %listcomp68, align 8, !dbg !547, !tbaa !392
  br label %if.end72

if.end72:                                         ; preds = %if.then32, %if.else12, %if.end35, %if.then55, %if.else57, %if.then42, %if.then
  %retval1.2 = phi i32 [ %retval1.1101, %if.then42 ], [ %retval1.1101, %if.else57 ], [ -5, %if.then55 ], [ %retval1.0, %if.end35 ], [ -1, %if.then ], [ -4, %if.else12 ], [ -3, %if.then32 ]
  ret i32 %retval1.2, !dbg !548
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define void @cctk_coordregisterrange_(i32* nocapture %ierr, %struct.cGH* %GH, double* nocapture %lower, double* nocapture %upper, i32* nocapture %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !150), !dbg !549
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !151), !dbg !550
  tail call void @llvm.dbg.value(metadata !{double* %lower}, i64 0, metadata !152), !dbg !551
  tail call void @llvm.dbg.value(metadata !{double* %upper}, i64 0, metadata !153), !dbg !552
  tail call void @llvm.dbg.value(metadata !{i32* %dir}, i64 0, metadata !154), !dbg !553
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !155), !dbg !554
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !156), !dbg !554
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !157), !dbg !554
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !158), !dbg !554
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !555
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !159), !dbg !555
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !555
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !160), !dbg !555
  %0 = load double* %lower, align 8, !dbg !556, !tbaa !531
  %1 = load double* %upper, align 8, !dbg !556, !tbaa !531
  %2 = load i32* %dir, align 4, !dbg !556, !tbaa !403
  %call2 = tail call i32 @CCTK_CoordRegisterRange(%struct.cGH* %GH, double %0, double %1, i32 %2, i8* %call, i8* %call1) #7, !dbg !556
  store i32 %call2, i32* %ierr, align 4, !dbg !556, !tbaa !403
  tail call void @free(i8* %call) #6, !dbg !557
  tail call void @free(i8* %call1) #6, !dbg !558
  ret void, !dbg !559
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_CoordRegisterRangePhysIndex(%struct.cGH* %GH, i32 %min, i32 %max, i32 %dir, i8* %coordname, i8* %systemname) #1 {
entry:
  %coord_system = alloca %struct.Coordsystem*, align 8
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !165), !dbg !560
  call void @llvm.dbg.value(metadata !{i32 %min}, i64 0, metadata !166), !dbg !561
  call void @llvm.dbg.value(metadata !{i32 %max}, i64 0, metadata !167), !dbg !562
  call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !168), !dbg !563
  call void @llvm.dbg.value(metadata !{i8* %coordname}, i64 0, metadata !169), !dbg !564
  call void @llvm.dbg.value(metadata !{i8* %systemname}, i64 0, metadata !170), !dbg !565
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !172), !dbg !566
  call void @llvm.dbg.value(metadata !388, i64 0, metadata !173), !dbg !567
  call void @llvm.dbg.declare(metadata !{%struct.Coordsystem** %coord_system}, metadata !175), !dbg !568
  %0 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !569, !tbaa !392
  %1 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !569
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %systemname, i8** %1) #6, !dbg !569
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !175), !dbg !570
  %2 = load %struct.Coordsystem** %coord_system, align 8, !dbg !570, !tbaa !392
  %tobool = icmp eq %struct.Coordsystem* %2, null, !dbg !570
  br i1 %tobool, label %if.then, label %if.else, !dbg !570

if.then:                                          ; preds = %entry
  %call2 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 579, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str16, i64 0, i64 0), i8* %systemname) #6, !dbg !571
  call void @llvm.dbg.value(metadata !388, i64 0, metadata !172), !dbg !573
  br label %if.end72, !dbg !574

if.else:                                          ; preds = %entry
  %cmp = icmp sgt i32 %dir, -1, !dbg !575
  br i1 %cmp, label %if.then3, label %for.cond.preheader, !dbg !575

for.cond.preheader:                               ; preds = %if.else
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !175), !dbg !577
  %dimension16103 = getelementptr inbounds %struct.Coordsystem* %2, i64 0, i32 1, !dbg !577
  %3 = load i32* %dimension16103, align 4, !dbg !577, !tbaa !403
  %cmp17104 = icmp sgt i32 %3, 0, !dbg !577
  br i1 %cmp17104, label %for.body, label %if.then32, !dbg !577

if.then3:                                         ; preds = %if.else
  %cmp4 = icmp eq i32 %dir, 0, !dbg !580
  %dimension7.phi.trans.insert = getelementptr inbounds %struct.Coordsystem* %2, i64 0, i32 1
  %.pre108 = load i32* %dimension7.phi.trans.insert, align 4, !dbg !582, !tbaa !403
  %cmp5 = icmp slt i32 %.pre108, %dir, !dbg !580
  %or.cond = or i1 %cmp4, %cmp5, !dbg !580
  br i1 %or.cond, label %if.then6, label %if.end, !dbg !580

if.then6:                                         ; preds = %if.then3
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !175), !dbg !582
  %call8 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 590, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8]* @.str17, i64 0, i64 0), i32 %dir, i32 %.pre108) #6, !dbg !582
  call void @llvm.dbg.value(metadata !410, i64 0, metadata !172), !dbg !584
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !175), !dbg !585
  %.pre = load %struct.Coordsystem** %coord_system, align 8, !dbg !585, !tbaa !392
  br label %if.end, !dbg !586

if.end:                                           ; preds = %if.then3, %if.then6
  %4 = phi %struct.Coordsystem* [ %.pre, %if.then6 ], [ %2, %if.then3 ]
  %retval1.0 = phi i32 [ -2, %if.then6 ], [ 0, %if.then3 ]
  %sub = add nsw i32 %dir, -1, !dbg !585
  %idxprom = sext i32 %sub to i64, !dbg !585
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !175), !dbg !585
  %coords = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 3, !dbg !585
  %5 = load %struct.Coordprops** %coords, align 8, !dbg !585, !tbaa !392
  %name = getelementptr inbounds %struct.Coordprops* %5, i64 %idxprom, i32 0, !dbg !585
  %6 = load i8** %name, align 8, !dbg !585, !tbaa !392
  %tobool9 = icmp eq i8* %6, null, !dbg !585
  br i1 %tobool9, label %if.else12, label %if.end35, !dbg !585

if.else12:                                        ; preds = %if.end
  %call13 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 601, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8]* @.str18, i64 0, i64 0), i32 %dir) #6, !dbg !587
  call void @llvm.dbg.value(metadata !466, i64 0, metadata !172), !dbg !589
  br label %if.end72

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %7 = phi %struct.Coordsystem* [ %11, %for.inc ], [ %2, %for.cond.preheader ]
  %vindex.0105 = phi i32 [ %vindex.1, %for.inc ], [ -1, %for.cond.preheader ]
  %coords19 = getelementptr inbounds %struct.Coordsystem* %7, i64 0, i32 3, !dbg !590
  %8 = load %struct.Coordprops** %coords19, align 8, !dbg !590, !tbaa !392
  %name21 = getelementptr inbounds %struct.Coordprops* %8, i64 %indvars.iv, i32 0, !dbg !590
  %9 = load i8** %name21, align 8, !dbg !590, !tbaa !392
  %tobool22 = icmp eq i8* %9, null, !dbg !590
  br i1 %tobool22, label %for.inc, label %land.lhs.true, !dbg !590

land.lhs.true:                                    ; preds = %for.body
  %call27 = call i32 @CCTK_Equals(i8* %9, i8* %coordname) #6, !dbg !592
  %tobool28 = icmp eq i32 %call27, 0, !dbg !592
  call void @llvm.dbg.value(metadata !517, i64 0, metadata !173), !dbg !593
  %10 = trunc i64 %indvars.iv to i32, !dbg !592
  %vindex.0.i.0 = select i1 %tobool28, i32 %vindex.0105, i32 %10, !dbg !592
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !175), !dbg !577
  %.pre107 = load %struct.Coordsystem** %coord_system, align 8, !dbg !577, !tbaa !392
  br label %for.inc, !dbg !592

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %11 = phi %struct.Coordsystem* [ %7, %for.body ], [ %.pre107, %land.lhs.true ], !dbg !577
  %vindex.1 = phi i32 [ %vindex.0105, %for.body ], [ %vindex.0.i.0, %land.lhs.true ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !577
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !175), !dbg !577
  %dimension16 = getelementptr inbounds %struct.Coordsystem* %11, i64 0, i32 1, !dbg !577
  %12 = load i32* %dimension16, align 4, !dbg !577, !tbaa !403
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !577
  %cmp17 = icmp slt i32 %13, %12, !dbg !577
  br i1 %cmp17, label %for.body, label %for.end, !dbg !577

for.end:                                          ; preds = %for.inc
  %cmp31 = icmp eq i32 %vindex.1, -1, !dbg !595
  br i1 %cmp31, label %if.then32, label %for.end.if.then37_crit_edge, !dbg !595

for.end.if.then37_crit_edge:                      ; preds = %for.end
  %coords39.phi.trans.insert = getelementptr inbounds %struct.Coordsystem* %11, i64 0, i32 3
  %.pre109 = load %struct.Coordprops** %coords39.phi.trans.insert, align 8, !dbg !596, !tbaa !392
  br label %if.then37, !dbg !595

if.then32:                                        ; preds = %for.cond.preheader, %for.end
  %call33 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 620, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str19, i64 0, i64 0), i8* %coordname) #6, !dbg !598
  call void @llvm.dbg.value(metadata !459, i64 0, metadata !172), !dbg !600
  br label %if.end72, !dbg !601

if.end35:                                         ; preds = %if.end
  br i1 %cmp4, label %if.end72, label %if.then37, !dbg !602

if.then37:                                        ; preds = %for.end.if.then37_crit_edge, %if.end35
  %14 = phi %struct.Coordprops* [ %5, %if.end35 ], [ %.pre109, %for.end.if.then37_crit_edge ]
  %15 = phi %struct.Coordsystem* [ %4, %if.end35 ], [ %11, %for.end.if.then37_crit_edge ]
  %vindex.2102 = phi i32 [ %sub, %if.end35 ], [ %vindex.1, %for.end.if.then37_crit_edge ]
  %retval1.1101 = phi i32 [ %retval1.0, %if.end35 ], [ 0, %for.end.if.then37_crit_edge ]
  %idxprom38 = sext i32 %vindex.2102 to i64, !dbg !596
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !175), !dbg !596
  %coords39 = getelementptr inbounds %struct.Coordsystem* %15, i64 0, i32 3, !dbg !596
  %listphysi = getelementptr inbounds %struct.Coordprops* %14, i64 %idxprom38, i32 3, !dbg !596
  %16 = load %struct.Coordpropslistphysi** %listphysi, align 8, !dbg !596, !tbaa !392
  %tobool41 = icmp eq %struct.Coordpropslistphysi* %16, null, !dbg !596
  br i1 %tobool41, label %if.else52, label %if.then42, !dbg !596

if.then42:                                        ; preds = %if.then37
  %call43 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 3, i32 633, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str20, i64 0, i64 0), i8* %systemname) #6, !dbg !603
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !175), !dbg !605
  %17 = load %struct.Coordsystem** %coord_system, align 8, !dbg !605, !tbaa !392
  %coords45 = getelementptr inbounds %struct.Coordsystem* %17, i64 0, i32 3, !dbg !605
  %18 = load %struct.Coordprops** %coords45, align 8, !dbg !605, !tbaa !392
  %listphysi47 = getelementptr inbounds %struct.Coordprops* %18, i64 %idxprom38, i32 3, !dbg !605
  %19 = load %struct.Coordpropslistphysi** %listphysi47, align 8, !dbg !605, !tbaa !392
  %lower = getelementptr inbounds %struct.Coordpropslistphysi* %19, i64 0, i32 1, !dbg !605
  store i32 %min, i32* %lower, align 4, !dbg !605, !tbaa !403
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !175), !dbg !606
  %upper = getelementptr inbounds %struct.Coordpropslistphysi* %19, i64 0, i32 2, !dbg !606
  store i32 %max, i32* %upper, align 4, !dbg !606, !tbaa !403
  br label %if.end72, !dbg !607

if.else52:                                        ; preds = %if.then37
  %call53 = call noalias i8* @malloc(i64 24) #6, !dbg !608
  call void @llvm.dbg.value(metadata !{%struct.Coordpropslistphysi* %20}, i64 0, metadata !174), !dbg !608
  %tobool54 = icmp eq i8* %call53, null, !dbg !610
  br i1 %tobool54, label %if.then55, label %if.else57, !dbg !610

if.then55:                                        ; preds = %if.else52
  %call56 = call i32 @CCTK_Warn(i32 1, i32 647, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([76 x i8]* @.str21, i64 0, i64 0)) #6, !dbg !611
  call void @llvm.dbg.value(metadata !539, i64 0, metadata !172), !dbg !613
  br label %if.end72, !dbg !614

if.else57:                                        ; preds = %if.else52
  %20 = bitcast i8* %call53 to %struct.Coordpropslistphysi*, !dbg !608
  %GH58 = bitcast i8* %call53 to %struct.cGH**, !dbg !615
  store %struct.cGH* %GH, %struct.cGH** %GH58, align 8, !dbg !615, !tbaa !392
  %lower59 = getelementptr inbounds i8* %call53, i64 8, !dbg !617
  %21 = bitcast i8* %lower59 to i32*, !dbg !617
  store i32 %min, i32* %21, align 4, !dbg !617, !tbaa !403
  %upper60 = getelementptr inbounds i8* %call53, i64 12, !dbg !618
  %22 = bitcast i8* %upper60 to i32*, !dbg !618
  store i32 %max, i32* %22, align 4, !dbg !618, !tbaa !403
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !175), !dbg !619
  %23 = load %struct.Coordprops** %coords39, align 8, !dbg !619, !tbaa !392
  %listphysi64 = getelementptr inbounds %struct.Coordprops* %23, i64 %idxprom38, i32 3, !dbg !619
  %24 = load %struct.Coordpropslistphysi** %listphysi64, align 8, !dbg !619, !tbaa !392
  %next = getelementptr inbounds i8* %call53, i64 16, !dbg !619
  %25 = bitcast i8* %next to %struct.Coordpropslistphysi**, !dbg !619
  store %struct.Coordpropslistphysi* %24, %struct.Coordpropslistphysi** %25, align 8, !dbg !619, !tbaa !392
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !175), !dbg !620
  %26 = load %struct.Coordprops** %coords39, align 8, !dbg !620, !tbaa !392
  %listphysi68 = getelementptr inbounds %struct.Coordprops* %26, i64 %idxprom38, i32 3, !dbg !620
  store %struct.Coordpropslistphysi* %20, %struct.Coordpropslistphysi** %listphysi68, align 8, !dbg !620, !tbaa !392
  br label %if.end72

if.end72:                                         ; preds = %if.then32, %if.else12, %if.end35, %if.then55, %if.else57, %if.then42, %if.then
  %retval1.2 = phi i32 [ %retval1.1101, %if.then42 ], [ %retval1.1101, %if.else57 ], [ -5, %if.then55 ], [ %retval1.0, %if.end35 ], [ -1, %if.then ], [ -4, %if.else12 ], [ -3, %if.then32 ]
  ret i32 %retval1.2, !dbg !621
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_coordregisterrangephysindex_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture %lower, i32* nocapture %upper, i32* nocapture %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !180), !dbg !622
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !181), !dbg !623
  tail call void @llvm.dbg.value(metadata !{i32* %lower}, i64 0, metadata !182), !dbg !624
  tail call void @llvm.dbg.value(metadata !{i32* %upper}, i64 0, metadata !183), !dbg !625
  tail call void @llvm.dbg.value(metadata !{i32* %dir}, i64 0, metadata !184), !dbg !626
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !185), !dbg !627
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !186), !dbg !627
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !187), !dbg !627
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !188), !dbg !627
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !628
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !189), !dbg !628
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !628
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !190), !dbg !628
  %0 = load i32* %lower, align 4, !dbg !629, !tbaa !403
  %1 = load i32* %upper, align 4, !dbg !629, !tbaa !403
  %2 = load i32* %dir, align 4, !dbg !629, !tbaa !403
  %call2 = tail call i32 @CCTK_CoordRegisterRangePhysIndex(%struct.cGH* %GH, i32 %0, i32 %1, i32 %2, i8* %call, i8* %call1) #7, !dbg !629
  store i32 %call2, i32* %ierr, align 4, !dbg !629, !tbaa !403
  tail call void @free(i8* %call) #6, !dbg !630
  tail call void @free(i8* %call1) #6, !dbg !631
  ret void, !dbg !632
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_CoordSystemHandle(i8* %systemname) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %systemname}, i64 0, metadata !195), !dbg !633
  %0 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !634, !tbaa !392
  %call = tail call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %systemname, i8** null) #6, !dbg !634
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !196), !dbg !634
  %cmp = icmp slt i32 %call, 0, !dbg !635
  br i1 %cmp, label %if.then, label %if.end, !dbg !635

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 3, i32 712, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str22, i64 0, i64 0), i8* %systemname) #6, !dbg !636
  br label %if.end, !dbg !638

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call, !dbg !639
}

; Function Attrs: nounwind optsize uwtable
define i8* @CCTK_CoordSystemName(i32 %handle) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %handle}, i64 0, metadata !201), !dbg !640
  %0 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !641, !tbaa !392
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %handle) #6, !dbg !641
  %tobool = icmp eq i8* %call, null, !dbg !642
  br i1 %tobool, label %if.end, label %if.then, !dbg !642

if.then:                                          ; preds = %entry
  %systemname1 = getelementptr inbounds i8* %call, i64 16, !dbg !643
  %1 = bitcast i8* %systemname1 to i8**, !dbg !643
  %2 = load i8** %1, align 8, !dbg !643, !tbaa !392
  tail call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !202), !dbg !643
  br label %if.end, !dbg !645

if.end:                                           ; preds = %entry, %if.then
  %systemname.0 = phi i8* [ %2, %if.then ], [ null, %entry ]
  ret i8* %systemname.0, !dbg !646
}

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @cctk_coordsystemhandle_(i32* nocapture %ierr, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !208), !dbg !647
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !209), !dbg !647
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !210), !dbg !647
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !648
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !211), !dbg !648
  %call1 = tail call i32 @CCTK_CoordSystemHandle(i8* %call) #7, !dbg !649
  store i32 %call1, i32* %ierr, align 4, !dbg !649, !tbaa !403
  tail call void @free(i8* %call) #6, !dbg !650
  ret void, !dbg !651
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_CoordIndex(i32 %dir, i8* %name, i8* %systemname) #1 {
entry:
  %coord_system = alloca %struct.Coordsystem*, align 8
  call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !214), !dbg !652
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !215), !dbg !652
  call void @llvm.dbg.value(metadata !{i8* %systemname}, i64 0, metadata !216), !dbg !652
  call void @llvm.dbg.value(metadata !388, i64 0, metadata !218), !dbg !653
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !219), !dbg !654
  call void @llvm.dbg.declare(metadata !{%struct.Coordsystem** %coord_system}, metadata !220), !dbg !655
  %0 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !656, !tbaa !392
  %1 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !656
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %systemname, i8** %1) #6, !dbg !656
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !220), !dbg !657
  %2 = load %struct.Coordsystem** %coord_system, align 8, !dbg !657, !tbaa !392
  %tobool = icmp eq %struct.Coordsystem* %2, null, !dbg !657
  br i1 %tobool, label %if.then, label %if.else, !dbg !657

if.then:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 829, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str23, i64 0, i64 0), i8* %systemname) #6, !dbg !658
  call void @llvm.dbg.value(metadata !388, i64 0, metadata !218), !dbg !660
  br label %if.end33, !dbg !661

if.else:                                          ; preds = %entry
  %cmp = icmp sgt i32 %dir, 0, !dbg !662
  %dimension = getelementptr inbounds %struct.Coordsystem* %2, i64 0, i32 1, !dbg !664
  %3 = load i32* %dimension, align 4, !dbg !664, !tbaa !403
  br i1 %cmp, label %if.then2, label %for.cond.preheader, !dbg !662

for.cond.preheader:                               ; preds = %if.else
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !220), !dbg !666
  %cmp1043 = icmp sgt i32 %3, 0, !dbg !666
  br i1 %cmp1043, label %for.body, label %if.then29, !dbg !666

if.then2:                                         ; preds = %if.else
  %cmp3 = icmp slt i32 %3, %dir, !dbg !664
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !664

if.then4:                                         ; preds = %if.then2
  %call6 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 839, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str24, i64 0, i64 0), i32 %dir, i32 %3) #6, !dbg !669
  call void @llvm.dbg.value(metadata !459, i64 0, metadata !218), !dbg !671
  br label %if.end33, !dbg !672

if.else7:                                         ; preds = %if.then2
  %sub = add nsw i32 %dir, -1, !dbg !673
  %idxprom = sext i32 %sub to i64, !dbg !673
  %coords = getelementptr inbounds %struct.Coordsystem* %2, i64 0, i32 3, !dbg !673
  %4 = load %struct.Coordprops** %coords, align 8, !dbg !673, !tbaa !392
  %index = getelementptr inbounds %struct.Coordprops* %4, i64 %idxprom, i32 1, !dbg !673
  %5 = load i32* %index, align 4, !dbg !673, !tbaa !403
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !218), !dbg !673
  br label %if.end33

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %6 = phi %struct.Coordsystem* [ %11, %for.inc ], [ %2, %for.cond.preheader ]
  %foundit.046 = phi i32 [ %foundit.1, %for.inc ], [ 0, %for.cond.preheader ]
  %vindex.045 = phi i32 [ %vindex.1, %for.inc ], [ -1, %for.cond.preheader ]
  %coords12 = getelementptr inbounds %struct.Coordsystem* %6, i64 0, i32 3, !dbg !675
  %7 = load %struct.Coordprops** %coords12, align 8, !dbg !675, !tbaa !392
  %name14 = getelementptr inbounds %struct.Coordprops* %7, i64 %indvars.iv, i32 0, !dbg !675
  %8 = load i8** %name14, align 8, !dbg !675, !tbaa !392
  %tobool15 = icmp eq i8* %8, null, !dbg !675
  br i1 %tobool15, label %for.inc, label %land.lhs.true, !dbg !675

land.lhs.true:                                    ; preds = %for.body
  %call20 = call i32 @CCTK_Equals(i8* %8, i8* %name) #6, !dbg !677
  %tobool21 = icmp eq i32 %call20, 0, !dbg !677
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !220), !dbg !666
  %.pre = load %struct.Coordsystem** %coord_system, align 8, !dbg !666, !tbaa !392
  br i1 %tobool21, label %for.inc, label %if.then22, !dbg !677

if.then22:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata !457, i64 0, metadata !219), !dbg !678
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !220), !dbg !680
  %coords24 = getelementptr inbounds %struct.Coordsystem* %.pre, i64 0, i32 3, !dbg !680
  %9 = load %struct.Coordprops** %coords24, align 8, !dbg !680, !tbaa !392
  %index26 = getelementptr inbounds %struct.Coordprops* %9, i64 %indvars.iv, i32 1, !dbg !680
  %10 = load i32* %index26, align 4, !dbg !680, !tbaa !403
  call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !218), !dbg !680
  br label %for.inc, !dbg !681

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then22
  %11 = phi %struct.Coordsystem* [ %.pre, %if.then22 ], [ %6, %for.body ], [ %.pre, %land.lhs.true ], !dbg !666
  %vindex.1 = phi i32 [ %10, %if.then22 ], [ %vindex.045, %for.body ], [ %vindex.045, %land.lhs.true ]
  %foundit.1 = phi i32 [ 1, %if.then22 ], [ %foundit.046, %for.body ], [ %foundit.046, %land.lhs.true ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !666
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !220), !dbg !666
  %dimension9 = getelementptr inbounds %struct.Coordsystem* %11, i64 0, i32 1, !dbg !666
  %12 = load i32* %dimension9, align 4, !dbg !666, !tbaa !403
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !666
  %cmp10 = icmp slt i32 %13, %12, !dbg !666
  br i1 %cmp10, label %for.body, label %for.end, !dbg !666

for.end:                                          ; preds = %for.inc
  %cmp28 = icmp eq i32 %foundit.1, 0, !dbg !682
  br i1 %cmp28, label %if.then29, label %if.end33, !dbg !682

if.then29:                                        ; preds = %for.cond.preheader, %for.end
  %call30 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 862, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str25, i64 0, i64 0), i8* %name) #6, !dbg !683
  call void @llvm.dbg.value(metadata !410, i64 0, metadata !218), !dbg !685
  br label %if.end33, !dbg !686

if.end33:                                         ; preds = %if.else7, %if.then4, %if.then29, %for.end, %if.then
  %vindex.2 = phi i32 [ -3, %if.then4 ], [ %5, %if.else7 ], [ -2, %if.then29 ], [ %vindex.1, %for.end ], [ -1, %if.then ]
  ret i32 %vindex.2, !dbg !687
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_coordindex_(i32* nocapture %vindex, i32* nocapture %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %vindex}, i64 0, metadata !223), !dbg !688
  tail call void @llvm.dbg.value(metadata !{i32* %dir}, i64 0, metadata !224), !dbg !688
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !225), !dbg !688
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !226), !dbg !688
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !227), !dbg !688
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !228), !dbg !688
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !689
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !229), !dbg !689
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !689
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !230), !dbg !689
  %0 = load i32* %dir, align 4, !dbg !690, !tbaa !403
  %call2 = tail call i32 @CCTK_CoordIndex(i32 %0, i8* %call, i8* %call1) #7, !dbg !690
  store i32 %call2, i32* %vindex, align 4, !dbg !690, !tbaa !403
  tail call void @free(i8* %call) #6, !dbg !691
  tail call void @free(i8* %call1) #6, !dbg !692
  ret void, !dbg !693
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_CoordSystemDim(i8* %systemname) #1 {
entry:
  %coord_system = alloca %struct.Coordsystem*, align 8
  call void @llvm.dbg.value(metadata !{i8* %systemname}, i64 0, metadata !233), !dbg !694
  call void @llvm.dbg.declare(metadata !{%struct.Coordsystem** %coord_system}, metadata !235), !dbg !695
  %0 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !696, !tbaa !392
  %1 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !696
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %systemname, i8** %1) #6, !dbg !696
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !235), !dbg !697
  %2 = load %struct.Coordsystem** %coord_system, align 8, !dbg !697, !tbaa !392
  %tobool = icmp eq %struct.Coordsystem* %2, null, !dbg !697
  br i1 %tobool, label %if.then, label %if.else, !dbg !697

if.then:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 893, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str26, i64 0, i64 0), i8* %systemname) #6, !dbg !698
  call void @llvm.dbg.value(metadata !388, i64 0, metadata !234), !dbg !700
  br label %if.end, !dbg !701

if.else:                                          ; preds = %entry
  %dimension = getelementptr inbounds %struct.Coordsystem* %2, i64 0, i32 1, !dbg !702
  %3 = load i32* %dimension, align 4, !dbg !702, !tbaa !403
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !234), !dbg !702
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dim.0 = phi i32 [ %3, %if.else ], [ -1, %if.then ]
  ret i32 %dim.0, !dbg !704
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_coordsystemdim_(i32* nocapture %dim, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %dim}, i64 0, metadata !238), !dbg !705
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !239), !dbg !705
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !240), !dbg !705
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !706
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !241), !dbg !706
  %call1 = tail call i32 @CCTK_CoordSystemDim(i8* %call) #7, !dbg !707
  store i32 %call1, i32* %dim, align 4, !dbg !707, !tbaa !403
  tail call void @free(i8* %call) #6, !dbg !708
  ret void, !dbg !709
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_CoordDir(i8* %name, i8* %systemname) #1 {
entry:
  %coord_system = alloca %struct.Coordsystem*, align 8
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !246), !dbg !710
  call void @llvm.dbg.value(metadata !{i8* %systemname}, i64 0, metadata !247), !dbg !710
  call void @llvm.dbg.declare(metadata !{%struct.Coordsystem** %coord_system}, metadata !250), !dbg !711
  call void @llvm.dbg.value(metadata !388, i64 0, metadata !249), !dbg !712
  %0 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !713, !tbaa !392
  %1 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !713
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %systemname, i8** %1) #6, !dbg !713
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !250), !dbg !714
  %2 = load %struct.Coordsystem** %coord_system, align 8, !dbg !714, !tbaa !392
  %tobool = icmp eq %struct.Coordsystem* %2, null, !dbg !714
  br i1 %tobool, label %if.then, label %for.cond.preheader, !dbg !714

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !250), !dbg !715
  %dimension18 = getelementptr inbounds %struct.Coordsystem* %2, i64 0, i32 1, !dbg !715
  %3 = load i32* %dimension18, align 4, !dbg !715, !tbaa !403
  %cmp19 = icmp sgt i32 %3, 0, !dbg !715
  br i1 %cmp19, label %for.body, label %if.then7, !dbg !715

if.then:                                          ; preds = %entry
  %call1 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 944, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str27, i64 0, i64 0), i8* %systemname) #6, !dbg !718
  br label %if.end10, !dbg !720

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %4 = phi %struct.Coordsystem* [ %8, %for.body ], [ %2, %for.cond.preheader ]
  %dir.021 = phi i32 [ %dir.0.add, %for.body ], [ -1, %for.cond.preheader ]
  %coords = getelementptr inbounds %struct.Coordsystem* %4, i64 0, i32 3, !dbg !721
  %5 = load %struct.Coordprops** %coords, align 8, !dbg !721, !tbaa !392
  %name2 = getelementptr inbounds %struct.Coordprops* %5, i64 %indvars.iv, i32 0, !dbg !721
  %6 = load i8** %name2, align 8, !dbg !721, !tbaa !392
  %call3 = call i32 @CCTK_Equals(i8* %6, i8* %name) #6, !dbg !721
  %tobool4 = icmp eq i32 %call3, 0, !dbg !721
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !715
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !721
  %dir.0.add = select i1 %tobool4, i32 %dir.021, i32 %7, !dbg !721
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !250), !dbg !715
  %8 = load %struct.Coordsystem** %coord_system, align 8, !dbg !715, !tbaa !392
  %dimension = getelementptr inbounds %struct.Coordsystem* %8, i64 0, i32 1, !dbg !715
  %9 = load i32* %dimension, align 4, !dbg !715, !tbaa !403
  %cmp = icmp slt i32 %7, %9, !dbg !715
  br i1 %cmp, label %for.body, label %for.end, !dbg !715

for.end:                                          ; preds = %for.body
  %cmp6 = icmp slt i32 %dir.0.add, 1, !dbg !723
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !723

if.then7:                                         ; preds = %for.cond.preheader, %for.end
  %call8 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 958, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str28, i64 0, i64 0), i8* %name, i8* %systemname) #6, !dbg !724
  call void @llvm.dbg.value(metadata !410, i64 0, metadata !249), !dbg !726
  br label %if.end10, !dbg !727

if.end10:                                         ; preds = %for.end, %if.then7, %if.then
  %dir.2 = phi i32 [ -2, %if.then7 ], [ %dir.0.add, %for.end ], [ -1, %if.then ]
  ret i32 %dir.2, !dbg !728
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_coorddir_(i32* nocapture %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %dir}, i64 0, metadata !255), !dbg !729
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !256), !dbg !729
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !257), !dbg !729
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !258), !dbg !729
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !259), !dbg !729
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !730
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !260), !dbg !730
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !730
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !261), !dbg !730
  %call2 = tail call i32 @CCTK_CoordDir(i8* %call, i8* %call1) #7, !dbg !731
  store i32 %call2, i32* %dir, align 4, !dbg !731, !tbaa !403
  tail call void @free(i8* %call) #6, !dbg !732
  tail call void @free(i8* %call1) #6, !dbg !733
  ret void, !dbg !734
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_CoordRange(%struct.cGH* %GH, double* %lower, double* %upper, i32 %coorddir, i8* %coordname, i8* %systemname) #1 {
entry:
  %coord_system = alloca %struct.Coordsystem*, align 8
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !268), !dbg !735
  call void @llvm.dbg.value(metadata !{double* %lower}, i64 0, metadata !269), !dbg !736
  call void @llvm.dbg.value(metadata !{double* %upper}, i64 0, metadata !270), !dbg !737
  call void @llvm.dbg.value(metadata !{i32 %coorddir}, i64 0, metadata !271), !dbg !738
  call void @llvm.dbg.value(metadata !{i8* %coordname}, i64 0, metadata !272), !dbg !739
  call void @llvm.dbg.value(metadata !{i8* %systemname}, i64 0, metadata !273), !dbg !740
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !275), !dbg !741
  call void @llvm.dbg.declare(metadata !{%struct.Coordsystem** %coord_system}, metadata !278), !dbg !742
  %cmp = icmp eq double* %lower, null, !dbg !743
  %cmp2 = icmp eq double* %upper, null, !dbg !743
  %or.cond = or i1 %cmp, %cmp2, !dbg !743
  br i1 %or.cond, label %if.then, label %if.else, !dbg !743

if.then:                                          ; preds = %entry
  %call = call i32 @CCTK_Warn(i32 2, i32 1050, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str29, i64 0, i64 0)) #6, !dbg !744
  call void @llvm.dbg.value(metadata !388, i64 0, metadata !275), !dbg !746
  br label %if.end54, !dbg !747

if.else:                                          ; preds = %entry
  %cmp3 = icmp slt i32 %coorddir, 1, !dbg !748
  %cmp4 = icmp eq i8* %coordname, null, !dbg !748
  %or.cond71 = and i1 %cmp3, %cmp4, !dbg !748
  br i1 %or.cond71, label %if.then5, label %if.else7, !dbg !748

if.then5:                                         ; preds = %if.else
  %call6 = call i32 @CCTK_Warn(i32 2, i32 1056, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str30, i64 0, i64 0)) #6, !dbg !749
  call void @llvm.dbg.value(metadata !410, i64 0, metadata !275), !dbg !751
  br label %if.end54, !dbg !752

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp eq i8* %systemname, null, !dbg !753
  br i1 %cmp8, label %if.then9, label %if.else11, !dbg !753

if.then9:                                         ; preds = %if.else7
  %call10 = call i32 @CCTK_Warn(i32 2, i32 1062, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str31, i64 0, i64 0)) #6, !dbg !754
  call void @llvm.dbg.value(metadata !459, i64 0, metadata !275), !dbg !756
  br label %if.end54, !dbg !757

if.else11:                                        ; preds = %if.else7
  %0 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !758, !tbaa !392
  %1 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !758
  %call12 = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %systemname, i8** %1) #6, !dbg !758
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !278), !dbg !760
  %2 = load %struct.Coordsystem** %coord_system, align 8, !dbg !760, !tbaa !392
  %tobool = icmp eq %struct.Coordsystem* %2, null, !dbg !760
  br i1 %tobool, label %if.then13, label %if.else15, !dbg !760

if.then13:                                        ; preds = %if.else11
  %call14 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1072, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str32, i64 0, i64 0), i8* %systemname) #6, !dbg !761
  call void @llvm.dbg.value(metadata !388, i64 0, metadata !275), !dbg !763
  br label %if.end54, !dbg !764

if.else15:                                        ; preds = %if.else11
  %cmp16 = icmp sgt i32 %coorddir, 0, !dbg !765
  br i1 %cmp16, label %if.end33, label %for.cond.preheader, !dbg !765

for.cond.preheader:                               ; preds = %if.else15
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !278), !dbg !767
  %dimension83 = getelementptr inbounds %struct.Coordsystem* %2, i64 0, i32 1, !dbg !767
  %3 = load i32* %dimension83, align 4, !dbg !767, !tbaa !403
  %cmp1984 = icmp sgt i32 %3, 0, !dbg !767
  br i1 %cmp1984, label %for.body, label %if.end33.thread, !dbg !767

for.cond:                                         ; preds = %for.body
  %dimension = getelementptr inbounds %struct.Coordsystem* %9, i64 0, i32 1, !dbg !767
  %4 = load i32* %dimension, align 4, !dbg !767, !tbaa !403
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !767
  %cmp19 = icmp slt i32 %5, %4, !dbg !767
  br i1 %cmp19, label %for.body, label %if.end33.thread, !dbg !767

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.preheader ]
  %6 = phi %struct.Coordsystem* [ %9, %for.cond ], [ %2, %for.cond.preheader ]
  %coords21 = getelementptr inbounds %struct.Coordsystem* %6, i64 0, i32 3, !dbg !770
  %7 = load %struct.Coordprops** %coords21, align 8, !dbg !770, !tbaa !392
  %name = getelementptr inbounds %struct.Coordprops* %7, i64 %indvars.iv, i32 0, !dbg !770
  %8 = load i8** %name, align 8, !dbg !770, !tbaa !392
  %call23 = call i32 @CCTK_Equals(i8* %8, i8* %coordname) #6, !dbg !770
  %tobool24 = icmp eq i32 %call23, 0, !dbg !770
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !767
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !278), !dbg !767
  %9 = load %struct.Coordsystem** %coord_system, align 8, !dbg !767, !tbaa !392
  br i1 %tobool24, label %for.cond, label %for.end, !dbg !770

for.end:                                          ; preds = %for.body
  %coords27 = getelementptr inbounds %struct.Coordsystem* %9, i64 0, i32 3, !dbg !772
  %10 = load %struct.Coordprops** %coords27, align 8, !dbg !772, !tbaa !392
  %arrayidx28 = getelementptr inbounds %struct.Coordprops* %10, i64 %indvars.iv, !dbg !772
  call void @llvm.dbg.value(metadata !{%struct.Coordprops* %arrayidx28}, i64 0, metadata !279), !dbg !772
  %cmp29 = icmp eq %struct.Coordprops* %arrayidx28, null, !dbg !774
  br i1 %cmp29, label %if.end33.thread, label %if.then35, !dbg !774

if.end33.thread:                                  ; preds = %for.cond.preheader, %for.cond, %for.end
  %call31 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1095, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str33, i64 0, i64 0), i8* %coordname) #6, !dbg !775
  call void @llvm.dbg.value(metadata !466, i64 0, metadata !275), !dbg !777
  br label %if.end54, !dbg !778

if.end33:                                         ; preds = %if.else15
  %sub = add nsw i32 %coorddir, -1, !dbg !779
  %idxprom = sext i32 %sub to i64, !dbg !779
  %coords = getelementptr inbounds %struct.Coordsystem* %2, i64 0, i32 3, !dbg !779
  %11 = load %struct.Coordprops** %coords, align 8, !dbg !779, !tbaa !392
  %arrayidx = getelementptr inbounds %struct.Coordprops* %11, i64 %idxprom, !dbg !779
  call void @llvm.dbg.value(metadata !{%struct.Coordprops* %arrayidx}, i64 0, metadata !279), !dbg !779
  %tobool34 = icmp eq %struct.Coordprops* %arrayidx, null, !dbg !778
  br i1 %tobool34, label %if.end54, label %if.then35, !dbg !778

if.then35:                                        ; preds = %for.end, %if.end33
  %coord.178 = phi %struct.Coordprops* [ %arrayidx, %if.end33 ], [ %arrayidx28, %for.end ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !276), !dbg !781
  %listcomp = getelementptr inbounds %struct.Coordprops* %coord.178, i64 0, i32 2, !dbg !783
  %curr.079 = load %struct.Coordpropslistcomp** %listcomp, align 8, !dbg !783
  %tobool3780 = icmp eq %struct.Coordpropslistcomp* %curr.079, null, !dbg !783
  br i1 %tobool3780, label %for.end46, label %for.body38, !dbg !783

for.body38:                                       ; preds = %if.then35, %for.inc45
  %curr.082 = phi %struct.Coordpropslistcomp* [ %curr.0, %for.inc45 ], [ %curr.079, %if.then35 ]
  %gotrange.081 = phi i32 [ %gotrange.1, %for.inc45 ], [ 0, %if.then35 ]
  %GH39 = getelementptr inbounds %struct.Coordpropslistcomp* %curr.082, i64 0, i32 0, !dbg !785
  %12 = load %struct.cGH** %GH39, align 8, !dbg !785, !tbaa !392
  %cmp40 = icmp eq %struct.cGH* %12, %GH, !dbg !785
  br i1 %cmp40, label %if.then41, label %for.inc45, !dbg !785

if.then41:                                        ; preds = %for.body38
  call void @llvm.dbg.value(metadata !457, i64 0, metadata !276), !dbg !787
  %lower42 = getelementptr inbounds %struct.Coordpropslistcomp* %curr.082, i64 0, i32 1, !dbg !789
  %13 = load double* %lower42, align 8, !dbg !789, !tbaa !531
  store double %13, double* %lower, align 8, !dbg !789, !tbaa !531
  %upper43 = getelementptr inbounds %struct.Coordpropslistcomp* %curr.082, i64 0, i32 2, !dbg !790
  %14 = load double* %upper43, align 8, !dbg !790, !tbaa !531
  store double %14, double* %upper, align 8, !dbg !790, !tbaa !531
  br label %for.inc45, !dbg !791

for.inc45:                                        ; preds = %for.body38, %if.then41
  %gotrange.1 = phi i32 [ 1, %if.then41 ], [ %gotrange.081, %for.body38 ]
  %next = getelementptr inbounds %struct.Coordpropslistcomp* %curr.082, i64 0, i32 3, !dbg !783
  %curr.0 = load %struct.Coordpropslistcomp** %next, align 8, !dbg !783
  %tobool37 = icmp eq %struct.Coordpropslistcomp* %curr.0, null, !dbg !783
  br i1 %tobool37, label %for.end46, label %for.body38, !dbg !783

for.end46:                                        ; preds = %for.inc45, %if.then35
  %gotrange.0.lcssa = phi i32 [ 0, %if.then35 ], [ %gotrange.1, %for.inc45 ]
  %tobool47 = icmp eq i32 %gotrange.0.lcssa, 0, !dbg !792
  call void @llvm.dbg.value(metadata !793, i64 0, metadata !275), !dbg !794
  %.retval1.0 = select i1 %tobool47, i32 -6, i32 0, !dbg !792
  ret i32 %.retval1.0, !dbg !792

if.end54:                                         ; preds = %if.end33.thread, %if.end33, %if.then5, %if.then13, %if.then9, %if.then
  %retval1.1 = phi i32 [ -1, %if.then ], [ -2, %if.then5 ], [ -3, %if.then9 ], [ 0, %if.end33 ], [ -1, %if.then13 ], [ -4, %if.end33.thread ]
  ret i32 %retval1.1, !dbg !796
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_coordrange_(i32* nocapture %ierr, %struct.cGH* %GH, double* %lower, double* %upper, i32* nocapture %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !284), !dbg !797
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !285), !dbg !798
  tail call void @llvm.dbg.value(metadata !{double* %lower}, i64 0, metadata !286), !dbg !799
  tail call void @llvm.dbg.value(metadata !{double* %upper}, i64 0, metadata !287), !dbg !800
  tail call void @llvm.dbg.value(metadata !{i32* %dir}, i64 0, metadata !288), !dbg !801
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !289), !dbg !802
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !290), !dbg !802
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !291), !dbg !802
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !292), !dbg !802
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !803
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !293), !dbg !803
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !803
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !294), !dbg !803
  %0 = load i32* %dir, align 4, !dbg !804, !tbaa !403
  %call2 = tail call i32 @CCTK_CoordRange(%struct.cGH* %GH, double* %lower, double* %upper, i32 %0, i8* %call, i8* %call1) #7, !dbg !804
  store i32 %call2, i32* %ierr, align 4, !dbg !804, !tbaa !403
  tail call void @free(i8* %call) #6, !dbg !805
  tail call void @free(i8* %call1) #6, !dbg !806
  ret void, !dbg !807
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_CoordRangePhysIndex(%struct.cGH* %GH, i32* %lower, i32* %upper, i32 %coorddir, i8* %coordname, i8* %systemname) #1 {
entry:
  %coord_system = alloca %struct.Coordsystem*, align 8
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !299), !dbg !808
  call void @llvm.dbg.value(metadata !{i32* %lower}, i64 0, metadata !300), !dbg !809
  call void @llvm.dbg.value(metadata !{i32* %upper}, i64 0, metadata !301), !dbg !810
  call void @llvm.dbg.value(metadata !{i32 %coorddir}, i64 0, metadata !302), !dbg !811
  call void @llvm.dbg.value(metadata !{i8* %coordname}, i64 0, metadata !303), !dbg !812
  call void @llvm.dbg.value(metadata !{i8* %systemname}, i64 0, metadata !304), !dbg !813
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !306), !dbg !814
  call void @llvm.dbg.declare(metadata !{%struct.Coordsystem** %coord_system}, metadata !308), !dbg !815
  %cmp = icmp eq i32* %lower, null, !dbg !816
  %cmp2 = icmp eq i32* %upper, null, !dbg !816
  %or.cond = or i1 %cmp, %cmp2, !dbg !816
  br i1 %or.cond, label %if.then, label %if.else, !dbg !816

if.then:                                          ; preds = %entry
  %call = call i32 @CCTK_Warn(i32 2, i32 1223, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str34, i64 0, i64 0)) #6, !dbg !817
  call void @llvm.dbg.value(metadata !388, i64 0, metadata !306), !dbg !819
  br label %if.end56, !dbg !820

if.else:                                          ; preds = %entry
  %cmp3 = icmp slt i32 %coorddir, 1, !dbg !821
  %cmp4 = icmp eq i8* %coordname, null, !dbg !821
  %or.cond75 = and i1 %cmp3, %cmp4, !dbg !821
  br i1 %or.cond75, label %if.then5, label %if.else7, !dbg !821

if.then5:                                         ; preds = %if.else
  %call6 = call i32 @CCTK_Warn(i32 2, i32 1230, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str35, i64 0, i64 0)) #6, !dbg !822
  call void @llvm.dbg.value(metadata !410, i64 0, metadata !306), !dbg !824
  br label %if.end56, !dbg !825

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp eq i8* %systemname, null, !dbg !826
  br i1 %cmp8, label %if.then9, label %if.else11, !dbg !826

if.then9:                                         ; preds = %if.else7
  %call10 = call i32 @CCTK_Warn(i32 2, i32 1236, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str36, i64 0, i64 0)) #6, !dbg !827
  call void @llvm.dbg.value(metadata !459, i64 0, metadata !306), !dbg !829
  br label %if.end56, !dbg !830

if.else11:                                        ; preds = %if.else7
  %0 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !831, !tbaa !392
  %1 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !831
  %call12 = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %systemname, i8** %1) #6, !dbg !831
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !308), !dbg !833
  %2 = load %struct.Coordsystem** %coord_system, align 8, !dbg !833, !tbaa !392
  %tobool = icmp eq %struct.Coordsystem* %2, null, !dbg !833
  br i1 %tobool, label %if.then13, label %if.else15, !dbg !833

if.then13:                                        ; preds = %if.else11
  %call14 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1246, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str37, i64 0, i64 0), i8* %systemname) #6, !dbg !834
  call void @llvm.dbg.value(metadata !466, i64 0, metadata !306), !dbg !836
  br label %if.end56, !dbg !837

if.else15:                                        ; preds = %if.else11
  %cmp16 = icmp sgt i32 %coorddir, 0, !dbg !838
  br i1 %cmp16, label %if.end33, label %for.cond.preheader, !dbg !838

for.cond.preheader:                               ; preds = %if.else15
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !308), !dbg !840
  %dimension87 = getelementptr inbounds %struct.Coordsystem* %2, i64 0, i32 1, !dbg !840
  %3 = load i32* %dimension87, align 4, !dbg !840, !tbaa !403
  %cmp1988 = icmp sgt i32 %3, 0, !dbg !840
  br i1 %cmp1988, label %for.body, label %if.end33.thread, !dbg !840

for.cond:                                         ; preds = %for.body
  %dimension = getelementptr inbounds %struct.Coordsystem* %9, i64 0, i32 1, !dbg !840
  %4 = load i32* %dimension, align 4, !dbg !840, !tbaa !403
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !840
  %cmp19 = icmp slt i32 %5, %4, !dbg !840
  br i1 %cmp19, label %for.body, label %if.end33.thread, !dbg !840

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %for.cond.preheader ]
  %6 = phi %struct.Coordsystem* [ %9, %for.cond ], [ %2, %for.cond.preheader ]
  %coords21 = getelementptr inbounds %struct.Coordsystem* %6, i64 0, i32 3, !dbg !843
  %7 = load %struct.Coordprops** %coords21, align 8, !dbg !843, !tbaa !392
  %name = getelementptr inbounds %struct.Coordprops* %7, i64 %indvars.iv, i32 0, !dbg !843
  %8 = load i8** %name, align 8, !dbg !843, !tbaa !392
  %call23 = call i32 @CCTK_Equals(i8* %8, i8* %coordname) #6, !dbg !843
  %tobool24 = icmp eq i32 %call23, 0, !dbg !843
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !840
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !308), !dbg !840
  %9 = load %struct.Coordsystem** %coord_system, align 8, !dbg !840, !tbaa !392
  br i1 %tobool24, label %for.cond, label %for.end, !dbg !843

for.end:                                          ; preds = %for.body
  %coords27 = getelementptr inbounds %struct.Coordsystem* %9, i64 0, i32 3, !dbg !845
  %10 = load %struct.Coordprops** %coords27, align 8, !dbg !845, !tbaa !392
  %arrayidx28 = getelementptr inbounds %struct.Coordprops* %10, i64 %indvars.iv, !dbg !845
  call void @llvm.dbg.value(metadata !{%struct.Coordprops* %arrayidx28}, i64 0, metadata !309), !dbg !845
  %cmp29 = icmp eq %struct.Coordprops* %arrayidx28, null, !dbg !847
  br i1 %cmp29, label %if.end33.thread, label %if.then35, !dbg !847

if.end33.thread:                                  ; preds = %for.cond.preheader, %for.cond, %for.end
  %call31 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1269, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str38, i64 0, i64 0), i8* %coordname) #6, !dbg !848
  call void @llvm.dbg.value(metadata !539, i64 0, metadata !306), !dbg !850
  br label %if.end56, !dbg !851

if.end33:                                         ; preds = %if.else15
  %sub = add nsw i32 %coorddir, -1, !dbg !852
  %idxprom = sext i32 %sub to i64, !dbg !852
  %coords = getelementptr inbounds %struct.Coordsystem* %2, i64 0, i32 3, !dbg !852
  %11 = load %struct.Coordprops** %coords, align 8, !dbg !852, !tbaa !392
  %arrayidx = getelementptr inbounds %struct.Coordprops* %11, i64 %idxprom, !dbg !852
  call void @llvm.dbg.value(metadata !{%struct.Coordprops* %arrayidx}, i64 0, metadata !309), !dbg !852
  %tobool34 = icmp eq %struct.Coordprops* %arrayidx, null, !dbg !851
  br i1 %tobool34, label %if.end56, label %if.then35, !dbg !851

if.then35:                                        ; preds = %for.end, %if.end33
  %coord.182 = phi %struct.Coordprops* [ %arrayidx, %if.end33 ], [ %arrayidx28, %for.end ]
  %listphysi = getelementptr inbounds %struct.Coordprops* %coord.182, i64 0, i32 3, !dbg !854
  %curr.084 = load %struct.Coordpropslistphysi** %listphysi, align 8, !dbg !854
  %cond85 = icmp eq %struct.Coordpropslistphysi* %curr.084, null, !dbg !854
  br i1 %cond85, label %if.then48, label %for.body38, !dbg !854

for.cond36:                                       ; preds = %for.body38
  %next = getelementptr inbounds %struct.Coordpropslistphysi* %curr.086, i64 0, i32 3, !dbg !854
  %curr.0 = load %struct.Coordpropslistphysi** %next, align 8, !dbg !854
  %cond = icmp eq %struct.Coordpropslistphysi* %curr.0, null, !dbg !854
  br i1 %cond, label %if.then48, label %for.body38, !dbg !854

for.body38:                                       ; preds = %if.then35, %for.cond36
  %curr.086 = phi %struct.Coordpropslistphysi* [ %curr.0, %for.cond36 ], [ %curr.084, %if.then35 ]
  %GH39 = getelementptr inbounds %struct.Coordpropslistphysi* %curr.086, i64 0, i32 0, !dbg !857
  %12 = load %struct.cGH** %GH39, align 8, !dbg !857, !tbaa !392
  %cmp40 = icmp eq %struct.cGH* %12, %GH, !dbg !857
  br i1 %cmp40, label %if.then41, label %for.cond36, !dbg !857

if.then41:                                        ; preds = %for.body38
  %lower42 = getelementptr inbounds %struct.Coordpropslistphysi* %curr.086, i64 0, i32 1, !dbg !859
  %13 = load i32* %lower42, align 4, !dbg !859, !tbaa !403
  store i32 %13, i32* %lower, align 4, !dbg !859, !tbaa !403
  %upper43 = getelementptr inbounds %struct.Coordpropslistphysi* %curr.086, i64 0, i32 2, !dbg !861
  %14 = load i32* %upper43, align 4, !dbg !861, !tbaa !403
  store i32 %14, i32* %upper, align 4, !dbg !861, !tbaa !403
  br label %if.end56

if.then48:                                        ; preds = %if.then35, %for.cond36
  %name49 = getelementptr inbounds %struct.Coordprops* %coord.182, i64 0, i32 0, !dbg !862
  %15 = load i8** %name49, align 8, !dbg !862, !tbaa !392
  %call50 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1300, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([90 x i8]* @.str39, i64 0, i64 0), i8* %15, i8* %systemname) #6, !dbg !862
  call void @llvm.dbg.value(metadata !793, i64 0, metadata !306), !dbg !864
  br label %if.end56, !dbg !865

if.end56:                                         ; preds = %if.then41, %if.end33.thread, %if.end33, %if.then5, %if.then13, %if.then48, %if.then9, %if.then
  %retval1.1 = phi i32 [ -1, %if.then ], [ -2, %if.then5 ], [ -3, %if.then9 ], [ -6, %if.then48 ], [ 0, %if.then41 ], [ 0, %if.end33 ], [ -4, %if.then13 ], [ -5, %if.end33.thread ]
  ret i32 %retval1.1, !dbg !866
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_coordrangephysindex_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %lower, i32* %upper, i32* nocapture %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !314), !dbg !867
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !315), !dbg !868
  tail call void @llvm.dbg.value(metadata !{i32* %lower}, i64 0, metadata !316), !dbg !869
  tail call void @llvm.dbg.value(metadata !{i32* %upper}, i64 0, metadata !317), !dbg !870
  tail call void @llvm.dbg.value(metadata !{i32* %dir}, i64 0, metadata !318), !dbg !871
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !319), !dbg !872
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !320), !dbg !872
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !321), !dbg !872
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !322), !dbg !872
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !873
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !323), !dbg !873
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !873
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !324), !dbg !873
  %0 = load i32* %dir, align 4, !dbg !874, !tbaa !403
  %call2 = tail call i32 @CCTK_CoordRangePhysIndex(%struct.cGH* %GH, i32* %lower, i32* %upper, i32 %0, i8* %call, i8* %call1) #7, !dbg !874
  store i32 %call2, i32* %ierr, align 4, !dbg !874, !tbaa !403
  tail call void @free(i8* %call) #6, !dbg !875
  tail call void @free(i8* %call1) #6, !dbg !876
  ret void, !dbg !877
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_CoordLocalRange(%struct.cGH* %GH, double* nocapture %lower, double* nocapture %upper, i32 %dir, i8* %name, i8* %systemname) #1 {
entry:
  %global_lower = alloca double, align 8
  %global_upper = alloca double, align 8
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !327), !dbg !878
  call void @llvm.dbg.value(metadata !{double* %lower}, i64 0, metadata !328), !dbg !879
  call void @llvm.dbg.value(metadata !{double* %upper}, i64 0, metadata !329), !dbg !880
  call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !330), !dbg !881
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !331), !dbg !882
  call void @llvm.dbg.value(metadata !{i8* %systemname}, i64 0, metadata !332), !dbg !883
  call void @llvm.dbg.declare(metadata !{double* %global_lower}, metadata !335), !dbg !884
  call void @llvm.dbg.declare(metadata !{double* %global_upper}, metadata !336), !dbg !885
  %call = call i32 @CCTK_CoordRange(%struct.cGH* %GH, double* %global_lower, double* %global_upper, i32 %dir, i8* %name, i8* %systemname) #7, !dbg !886
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !333), !dbg !886
  %cmp = icmp sgt i32 %call, -1, !dbg !887
  br i1 %cmp, label %if.then, label %if.else19, !dbg !887

if.then:                                          ; preds = %entry
  %cmp2 = icmp sgt i32 %dir, 0, !dbg !888
  br i1 %cmp2, label %if.end, label %if.else, !dbg !888

if.else:                                          ; preds = %if.then
  %call4 = call i32 @CCTK_CoordDir(i8* %name, i8* %systemname) #7, !dbg !890
  call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !334), !dbg !890
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else
  %realdir.0 = phi i32 [ %call4, %if.else ], [ %dir, %if.then ]
  call void @llvm.dbg.value(metadata !{double* %global_lower}, i64 0, metadata !335), !dbg !892
  %0 = load double* %global_lower, align 8, !dbg !892, !tbaa !531
  %sub = add nsw i32 %realdir.0, -1, !dbg !892
  %idxprom = sext i32 %sub to i64, !dbg !892
  %cctk_lbnd = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4, !dbg !892
  %1 = load i32** %cctk_lbnd, align 8, !dbg !892, !tbaa !392
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !892
  %2 = load i32* %arrayidx, align 4, !dbg !892, !tbaa !403
  %conv = sitofp i32 %2 to double, !dbg !892
  %cctk_delta_space = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10, !dbg !892
  %3 = load double** %cctk_delta_space, align 8, !dbg !892, !tbaa !392
  %arrayidx7 = getelementptr inbounds double* %3, i64 %idxprom, !dbg !892
  %4 = load double* %arrayidx7, align 8, !dbg !892, !tbaa !531
  %mul = fmul double %conv, %4, !dbg !892
  %add = fadd double %0, %mul, !dbg !892
  store double %add, double* %lower, align 8, !dbg !892, !tbaa !531
  call void @llvm.dbg.value(metadata !{double* %global_lower}, i64 0, metadata !335), !dbg !893
  %cctk_ubnd = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5, !dbg !893
  %5 = load i32** %cctk_ubnd, align 8, !dbg !893, !tbaa !392
  %arrayidx10 = getelementptr inbounds i32* %5, i64 %idxprom, !dbg !893
  %6 = load i32* %arrayidx10, align 4, !dbg !893, !tbaa !403
  %add11 = add nsw i32 %6, 1, !dbg !893
  %conv12 = sitofp i32 %add11 to double, !dbg !893
  %7 = load double* %arrayidx7, align 8, !dbg !893, !tbaa !531
  %mul17 = fmul double %conv12, %7, !dbg !893
  %add18 = fadd double %0, %mul17, !dbg !893
  store double %add18, double* %upper, align 8, !dbg !893, !tbaa !531
  br label %if.end21, !dbg !894

if.else19:                                        ; preds = %entry
  %call20 = call i32 @CCTK_Warn(i32 4, i32 1383, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str40, i64 0, i64 0)) #6, !dbg !895
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.end
  ret i32 %call, !dbg !897
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_coordlocalrange_(i32* nocapture %ierr, %struct.cGH* %GH, double* nocapture %lower, double* nocapture %upper, i32* nocapture %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !339), !dbg !898
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !340), !dbg !899
  tail call void @llvm.dbg.value(metadata !{double* %lower}, i64 0, metadata !341), !dbg !900
  tail call void @llvm.dbg.value(metadata !{double* %upper}, i64 0, metadata !342), !dbg !901
  tail call void @llvm.dbg.value(metadata !{i32* %dir}, i64 0, metadata !343), !dbg !902
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !344), !dbg !903
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !345), !dbg !903
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !346), !dbg !903
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !347), !dbg !903
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6, !dbg !904
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !348), !dbg !904
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6, !dbg !904
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !349), !dbg !904
  %0 = load i32* %dir, align 4, !dbg !905, !tbaa !403
  %call2 = tail call i32 @CCTK_CoordLocalRange(%struct.cGH* %GH, double* %lower, double* %upper, i32 %0, i8* %call, i8* %call1) #7, !dbg !905
  store i32 %call2, i32* %ierr, align 4, !dbg !905, !tbaa !403
  tail call void @free(i8* %call) #6, !dbg !906
  tail call void @free(i8* %call1) #6, !dbg !907
  ret void, !dbg !908
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @CCTK_NumCoordSystems() #5 {
entry:
  %0 = load i32* @num_systems, align 4, !dbg !909, !tbaa !403
  ret i32 %0, !dbg !909
}

; Function Attrs: nounwind optsize uwtable
define i8* @CCTK_CoordSystemImplementation(i32 %handle) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %handle}, i64 0, metadata !355), !dbg !910
  %0 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !911, !tbaa !392
  %call = tail call i8* @Util_GetHandledData(%struct.cHandledData* %0, i32 %handle) #6, !dbg !911
  %tobool = icmp eq i8* %call, null, !dbg !912
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !912

cond.true:                                        ; preds = %entry
  %implementation = bitcast i8* %call to i8**, !dbg !912
  %1 = load i8** %implementation, align 8, !dbg !912, !tbaa !392
  br label %cond.end, !dbg !912

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %1, %cond.true ], [ null, %entry ], !dbg !912
  ret i8* %cond, !dbg !912
}

; Function Attrs: nounwind optsize uwtable
define i8* @CCTK_CoordName(i32 %dir, i8* %systemname) #1 {
entry:
  %coord_system = alloca %struct.Coordsystem*, align 8
  call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !361), !dbg !913
  call void @llvm.dbg.value(metadata !{i8* %systemname}, i64 0, metadata !362), !dbg !913
  call void @llvm.dbg.declare(metadata !{%struct.Coordsystem** %coord_system}, metadata !363), !dbg !914
  %0 = load %struct.cHandledData** @CoordSystems, align 8, !dbg !915, !tbaa !392
  %1 = bitcast %struct.Coordsystem** %coord_system to i8**, !dbg !915
  %call = call i32 @Util_GetHandle(%struct.cHandledData* %0, i8* %systemname, i8** %1) #6, !dbg !915
  call void @llvm.dbg.value(metadata !{%struct.Coordsystem** %coord_system}, i64 0, metadata !363), !dbg !916
  %2 = load %struct.Coordsystem** %coord_system, align 8, !dbg !916, !tbaa !392
  %tobool = icmp eq %struct.Coordsystem* %2, null, !dbg !916
  br i1 %tobool, label %if.then, label %if.else, !dbg !916

if.then:                                          ; preds = %entry
  %call2 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 1492, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str41, i64 0, i64 0), i8* %systemname) #6, !dbg !917
  call void @llvm.dbg.value(metadata !919, i64 0, metadata !364), !dbg !920
  br label %if.end, !dbg !921

if.else:                                          ; preds = %entry
  %sub = add nsw i32 %dir, -1, !dbg !922
  %idxprom = sext i32 %sub to i64, !dbg !922
  %coords = getelementptr inbounds %struct.Coordsystem* %2, i64 0, i32 3, !dbg !922
  %3 = load %struct.Coordprops** %coords, align 8, !dbg !922, !tbaa !392
  %name = getelementptr inbounds %struct.Coordprops* %3, i64 %idxprom, i32 0, !dbg !922
  %4 = load i8** %name, align 8, !dbg !922, !tbaa !392
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !364), !dbg !922
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i8* [ %4, %if.else ], [ null, %if.then ]
  ret i8* %retval1.0, !dbg !924
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !365, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !87, metadata !102, metadata !114, metadata !129, metadata !144, metadata !161, metadata !176, metadata !191, metadata !197, metadata !204, metadata !212, metadata !221, metadata !231, metadata !236, metadata !242, metadata !251, metadata !262, metadata !280, metadata !295, metadata !310, metadata !325, metadata !337, metadata !350, metadata !353, metadata !357}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_Coord_c", metadata !"CCTKi_version_main_Coord_c", metadata !"", i32 31, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_Coord_c, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 31] [def] [CCTKi_version_main_Coord_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_CoordRegisterSystem", metadata !"CCTKi_CoordRegisterSystem", metadata !"", i32 158, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i8*)* @CCTKi_CoordRegisterSystem, null, null, metadata !15, i32 161} ; [ DW_TAG_subprogram ] [line 158] [def] [scope 161] [CCTKi_CoordRegisterSystem]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !14, metadata !8, metadata !8}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!16 = metadata !{i32 786689, metadata !11, metadata !"dim", metadata !5, i32 16777374, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 158]
!17 = metadata !{i32 786689, metadata !11, metadata !"thorn", metadata !5, i32 33554591, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [thorn] [line 159]
!18 = metadata !{i32 786689, metadata !11, metadata !"systemname", metadata !5, i32 50331808, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [systemname] [line 160]
!19 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 162, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 162]
!20 = metadata !{i32 786688, metadata !11, metadata !"new_system", metadata !5, i32 163, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_system] [line 163]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Coordsystem]
!22 = metadata !{i32 786451, metadata !1, null, metadata !"Coordsystem", i32 38, i64 256, i64 64, i32 0, i32 0, null, metadata !23, i32 0, null, null} ; [ DW_TAG_structure_type ] [Coordsystem] [line 38, size 256, align 64, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !25, metadata !26, metadata !27}
!24 = metadata !{i32 786445, metadata !1, metadata !22, metadata !"implementation", i32 40, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [implementation] [line 40, size 64, align 64, offset 0] [from ]
!25 = metadata !{i32 786445, metadata !1, metadata !22, metadata !"dimension", i32 41, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [dimension] [line 41, size 32, align 32, offset 64] [from int]
!26 = metadata !{i32 786445, metadata !1, metadata !22, metadata !"systemname", i32 42, i64 64, i64 64, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [systemname] [line 42, size 64, align 64, offset 128] [from ]
!27 = metadata !{i32 786445, metadata !1, metadata !22, metadata !"coords", i32 43, i64 64, i64 64, i64 192, i32 0, metadata !28} ; [ DW_TAG_member ] [coords] [line 43, size 64, align 64, offset 192] [from ]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Coordprops]
!29 = metadata !{i32 786451, metadata !1, null, metadata !"Coordprops", i32 46, i64 256, i64 64, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [Coordprops] [line 46, size 256, align 64, offset 0] [from ]
!30 = metadata !{metadata !31, metadata !33, metadata !34, metadata !79}
!31 = metadata !{i32 786445, metadata !1, metadata !29, metadata !"name", i32 48, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [name] [line 48, size 64, align 64, offset 0] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!33 = metadata !{i32 786445, metadata !1, metadata !29, metadata !"index", i32 49, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [index] [line 49, size 32, align 32, offset 64] [from int]
!34 = metadata !{i32 786445, metadata !1, metadata !29, metadata !"listcomp", i32 50, i64 64, i64 64, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [listcomp] [line 50, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Coordpropslistcomp]
!36 = metadata !{i32 786451, metadata !1, null, metadata !"Coordpropslistcomp", i32 54, i64 256, i64 64, i32 0, i32 0, null, metadata !37, i32 0, null, null} ; [ DW_TAG_structure_type ] [Coordpropslistcomp] [line 54, size 256, align 64, offset 0] [from ]
!37 = metadata !{metadata !38, metadata !76, metadata !77, metadata !78}
!38 = metadata !{i32 786445, metadata !1, metadata !36, metadata !"GH", i32 57, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [GH] [line 57, size 64, align 64, offset 0] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!40 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!41 = metadata !{i32 786451, metadata !42, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !43, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!42 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!43 = metadata !{metadata !44, metadata !45, metadata !46, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !56, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !68, metadata !69}
!44 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!45 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!46 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!48 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!49 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !47} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!50 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !47} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!51 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !47} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!52 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !47} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!53 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !47} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!54 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !55} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!55 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!56 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !57} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!58 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !57} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!59 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !47} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!60 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !47} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!61 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!62 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !47} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!63 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !55} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!64 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !65} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!68 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !66} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!69 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !70} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!71 = metadata !{i32 786454, metadata !42, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!72 = metadata !{i32 786451, metadata !42, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !73, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!73 = metadata !{metadata !74, metadata !75}
!74 = metadata !{i32 786445, metadata !42, metadata !72, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!75 = metadata !{i32 786445, metadata !42, metadata !72, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!76 = metadata !{i32 786445, metadata !1, metadata !36, metadata !"lower", i32 59, i64 64, i64 64, i64 64, i32 0, metadata !55} ; [ DW_TAG_member ] [lower] [line 59, size 64, align 64, offset 64] [from double]
!77 = metadata !{i32 786445, metadata !1, metadata !36, metadata !"upper", i32 60, i64 64, i64 64, i64 128, i32 0, metadata !55} ; [ DW_TAG_member ] [upper] [line 60, size 64, align 64, offset 128] [from double]
!78 = metadata !{i32 786445, metadata !1, metadata !36, metadata !"next", i32 62, i64 64, i64 64, i64 192, i32 0, metadata !35} ; [ DW_TAG_member ] [next] [line 62, size 64, align 64, offset 192] [from ]
!79 = metadata !{i32 786445, metadata !1, metadata !29, metadata !"listphysi", i32 51, i64 64, i64 64, i64 192, i32 0, metadata !80} ; [ DW_TAG_member ] [listphysi] [line 51, size 64, align 64, offset 192] [from ]
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Coordpropslistphysi]
!81 = metadata !{i32 786451, metadata !1, null, metadata !"Coordpropslistphysi", i32 65, i64 192, i64 64, i32 0, i32 0, null, metadata !82, i32 0, null, null} ; [ DW_TAG_structure_type ] [Coordpropslistphysi] [line 65, size 192, align 64, offset 0] [from ]
!82 = metadata !{metadata !83, metadata !84, metadata !85, metadata !86}
!83 = metadata !{i32 786445, metadata !1, metadata !81, metadata !"GH", i32 68, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [GH] [line 68, size 64, align 64, offset 0] [from ]
!84 = metadata !{i32 786445, metadata !1, metadata !81, metadata !"lower", i32 70, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [lower] [line 70, size 32, align 32, offset 64] [from int]
!85 = metadata !{i32 786445, metadata !1, metadata !81, metadata !"upper", i32 71, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [upper] [line 71, size 32, align 32, offset 96] [from int]
!86 = metadata !{i32 786445, metadata !1, metadata !81, metadata !"next", i32 73, i64 64, i64 64, i64 128, i32 0, metadata !80} ; [ DW_TAG_member ] [next] [line 73, size 64, align 64, offset 128] [from ]
!87 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctki_coordregistersystem_", metadata !"cctki_coordregistersystem_", metadata !"", i32 220, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i8*, i8*, i32, i32)* @cctki_coordregistersystem_, null, null, metadata !93, i32 222} ; [ DW_TAG_subprogram ] [line 220] [def] [scope 222] [cctki_coordregistersystem_]
!88 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{null, metadata !47, metadata !90, metadata !32, metadata !32, metadata !92, metadata !92}
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!91 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!92 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!93 = metadata !{metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101}
!94 = metadata !{i32 786689, metadata !87, metadata !"ierr", metadata !5, i32 16777437, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 221]
!95 = metadata !{i32 786689, metadata !87, metadata !"dim", metadata !5, i32 33554653, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 221]
!96 = metadata !{i32 786689, metadata !87, metadata !"cctk_str1", metadata !5, i32 50331869, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 221]
!97 = metadata !{i32 786689, metadata !87, metadata !"cctk_str2", metadata !5, i32 67109085, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 221]
!98 = metadata !{i32 786689, metadata !87, metadata !"cctk_strlen1", metadata !5, i32 83886301, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 221]
!99 = metadata !{i32 786689, metadata !87, metadata !"cctk_strlen2", metadata !5, i32 100663517, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 221]
!100 = metadata !{i32 786688, metadata !87, metadata !"thorn", metadata !5, i32 223, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thorn] [line 223]
!101 = metadata !{i32 786688, metadata !87, metadata !"systemname", metadata !5, i32 223, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [systemname] [line 223]
!102 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CoordRegisterData", metadata !"CCTK_CoordRegisterData", metadata !"", i32 250, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i8*, i8*)* @CCTK_CoordRegisterData, null, null, metadata !105, i32 254} ; [ DW_TAG_subprogram ] [line 250] [def] [scope 254] [CCTK_CoordRegisterData]
!103 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!104 = metadata !{metadata !14, metadata !14, metadata !8, metadata !8, metadata !8}
!105 = metadata !{metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113}
!106 = metadata !{i32 786689, metadata !102, metadata !"dir", metadata !5, i32 16777466, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 250]
!107 = metadata !{i32 786689, metadata !102, metadata !"gfname", metadata !5, i32 33554683, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gfname] [line 251]
!108 = metadata !{i32 786689, metadata !102, metadata !"coordname", metadata !5, i32 50331900, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coordname] [line 252]
!109 = metadata !{i32 786689, metadata !102, metadata !"systemname", metadata !5, i32 67109117, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [systemname] [line 253]
!110 = metadata !{i32 786688, metadata !102, metadata !"i", metadata !5, i32 255, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 255]
!111 = metadata !{i32 786688, metadata !102, metadata !"retval", metadata !5, i32 256, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 256]
!112 = metadata !{i32 786688, metadata !102, metadata !"dup", metadata !5, i32 257, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dup] [line 257]
!113 = metadata !{i32 786688, metadata !102, metadata !"coord_system", metadata !5, i32 258, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord_system] [line 258]
!114 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_coordregisterdata_", metadata !"cctk_coordregisterdata_", metadata !"", i32 324, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i8*, i8*, i8*, i32, i32, i32)* @cctk_coordregisterdata_, null, null, metadata !117, i32 326} ; [ DW_TAG_subprogram ] [line 324] [def] [scope 326] [cctk_coordregisterdata_]
!115 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!116 = metadata !{null, metadata !47, metadata !90, metadata !32, metadata !32, metadata !32, metadata !92, metadata !92, metadata !92}
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128}
!118 = metadata !{i32 786689, metadata !114, metadata !"handle", metadata !5, i32 16777541, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 325]
!119 = metadata !{i32 786689, metadata !114, metadata !"dir", metadata !5, i32 33554757, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 325]
!120 = metadata !{i32 786689, metadata !114, metadata !"cctk_str1", metadata !5, i32 50331973, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 325]
!121 = metadata !{i32 786689, metadata !114, metadata !"cctk_str2", metadata !5, i32 67109189, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 325]
!122 = metadata !{i32 786689, metadata !114, metadata !"cctk_str3", metadata !5, i32 83886405, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str3] [line 325]
!123 = metadata !{i32 786689, metadata !114, metadata !"cctk_strlen1", metadata !5, i32 100663621, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 325]
!124 = metadata !{i32 786689, metadata !114, metadata !"cctk_strlen2", metadata !5, i32 117440837, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 325]
!125 = metadata !{i32 786689, metadata !114, metadata !"cctk_strlen3", metadata !5, i32 134218053, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen3] [line 325]
!126 = metadata !{i32 786688, metadata !114, metadata !"gf", metadata !5, i32 327, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gf] [line 327]
!127 = metadata !{i32 786688, metadata !114, metadata !"name", metadata !5, i32 327, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 327]
!128 = metadata !{i32 786688, metadata !114, metadata !"systemname", metadata !5, i32 327, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [systemname] [line 327]
!129 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CoordRegisterRange", metadata !"CCTK_CoordRegisterRange", metadata !"", i32 390, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, double, double, i32, i8*, i8*)* @CCTK_CoordRegisterRange, null, null, metadata !132, i32 396} ; [ DW_TAG_subprogram ] [line 390] [def] [scope 396] [CCTK_CoordRegisterRange]
!130 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!131 = metadata !{metadata !14, metadata !39, metadata !55, metadata !55, metadata !14, metadata !8, metadata !8}
!132 = metadata !{metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143}
!133 = metadata !{i32 786689, metadata !129, metadata !"GH", metadata !5, i32 16777606, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 390]
!134 = metadata !{i32 786689, metadata !129, metadata !"min", metadata !5, i32 33554823, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min] [line 391]
!135 = metadata !{i32 786689, metadata !129, metadata !"max", metadata !5, i32 50332040, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max] [line 392]
!136 = metadata !{i32 786689, metadata !129, metadata !"dir", metadata !5, i32 67109257, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 393]
!137 = metadata !{i32 786689, metadata !129, metadata !"coordname", metadata !5, i32 83886474, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coordname] [line 394]
!138 = metadata !{i32 786689, metadata !129, metadata !"systemname", metadata !5, i32 100663691, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [systemname] [line 395]
!139 = metadata !{i32 786688, metadata !129, metadata !"i", metadata !5, i32 397, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 397]
!140 = metadata !{i32 786688, metadata !129, metadata !"retval", metadata !5, i32 398, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 398]
!141 = metadata !{i32 786688, metadata !129, metadata !"vindex", metadata !5, i32 399, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vindex] [line 399]
!142 = metadata !{i32 786688, metadata !129, metadata !"newguy", metadata !5, i32 400, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newguy] [line 400]
!143 = metadata !{i32 786688, metadata !129, metadata !"coord_system", metadata !5, i32 401, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord_system] [line 401]
!144 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_coordregisterrange_", metadata !"cctk_coordregisterrange_", metadata !"", i32 494, metadata !145, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, double*, double*, i32*, i8*, i8*, i32, i32)* @cctk_coordregisterrange_, null, null, metadata !149, i32 501} ; [ DW_TAG_subprogram ] [line 494] [def] [scope 501] [cctk_coordregisterrange_]
!145 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!146 = metadata !{null, metadata !47, metadata !39, metadata !147, metadata !147, metadata !90, metadata !32, metadata !32, metadata !92, metadata !92}
!147 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!148 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!149 = metadata !{metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160}
!150 = metadata !{i32 786689, metadata !144, metadata !"ierr", metadata !5, i32 16777711, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 495]
!151 = metadata !{i32 786689, metadata !144, metadata !"GH", metadata !5, i32 33554928, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 496]
!152 = metadata !{i32 786689, metadata !144, metadata !"lower", metadata !5, i32 50332145, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower] [line 497]
!153 = metadata !{i32 786689, metadata !144, metadata !"upper", metadata !5, i32 67109362, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper] [line 498]
!154 = metadata !{i32 786689, metadata !144, metadata !"dir", metadata !5, i32 83886579, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 499]
!155 = metadata !{i32 786689, metadata !144, metadata !"cctk_str1", metadata !5, i32 100663796, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 500]
!156 = metadata !{i32 786689, metadata !144, metadata !"cctk_str2", metadata !5, i32 117441012, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 500]
!157 = metadata !{i32 786689, metadata !144, metadata !"cctk_strlen1", metadata !5, i32 134218228, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 500]
!158 = metadata !{i32 786689, metadata !144, metadata !"cctk_strlen2", metadata !5, i32 150995444, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 500]
!159 = metadata !{i32 786688, metadata !144, metadata !"name", metadata !5, i32 502, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 502]
!160 = metadata !{i32 786688, metadata !144, metadata !"systemname", metadata !5, i32 502, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [systemname] [line 502]
!161 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CoordRegisterRangePhysIndex", metadata !"CCTK_CoordRegisterRangePhysIndex", metadata !"", i32 561, metadata !162, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32, i32, i8*, i8*)* @CCTK_CoordRegisterRangePhysIndex, null, null, metadata !164, i32 567} ; [ DW_TAG_subprogram ] [line 561] [def] [scope 567] [CCTK_CoordRegisterRangePhysIndex]
!162 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !163, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!163 = metadata !{metadata !14, metadata !39, metadata !14, metadata !14, metadata !14, metadata !8, metadata !8}
!164 = metadata !{metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175}
!165 = metadata !{i32 786689, metadata !161, metadata !"GH", metadata !5, i32 16777777, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 561]
!166 = metadata !{i32 786689, metadata !161, metadata !"min", metadata !5, i32 33554994, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min] [line 562]
!167 = metadata !{i32 786689, metadata !161, metadata !"max", metadata !5, i32 50332211, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max] [line 563]
!168 = metadata !{i32 786689, metadata !161, metadata !"dir", metadata !5, i32 67109428, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 564]
!169 = metadata !{i32 786689, metadata !161, metadata !"coordname", metadata !5, i32 83886645, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coordname] [line 565]
!170 = metadata !{i32 786689, metadata !161, metadata !"systemname", metadata !5, i32 100663862, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [systemname] [line 566]
!171 = metadata !{i32 786688, metadata !161, metadata !"i", metadata !5, i32 568, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 568]
!172 = metadata !{i32 786688, metadata !161, metadata !"retval", metadata !5, i32 569, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 569]
!173 = metadata !{i32 786688, metadata !161, metadata !"vindex", metadata !5, i32 570, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vindex] [line 570]
!174 = metadata !{i32 786688, metadata !161, metadata !"newguy", metadata !5, i32 571, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newguy] [line 571]
!175 = metadata !{i32 786688, metadata !161, metadata !"coord_system", metadata !5, i32 572, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord_system] [line 572]
!176 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_coordregisterrangephysindex_", metadata !"cctk_coordregisterrangephysindex_", metadata !"", i32 667, metadata !177, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, i32*, i32*, i8*, i8*, i32, i32)* @cctk_coordregisterrangephysindex_, null, null, metadata !179, i32 674} ; [ DW_TAG_subprogram ] [line 667] [def] [scope 674] [cctk_coordregisterrangephysindex_]
!177 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!178 = metadata !{null, metadata !47, metadata !39, metadata !90, metadata !90, metadata !90, metadata !32, metadata !32, metadata !92, metadata !92}
!179 = metadata !{metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190}
!180 = metadata !{i32 786689, metadata !176, metadata !"ierr", metadata !5, i32 16777884, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 668]
!181 = metadata !{i32 786689, metadata !176, metadata !"GH", metadata !5, i32 33555101, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 669]
!182 = metadata !{i32 786689, metadata !176, metadata !"lower", metadata !5, i32 50332318, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower] [line 670]
!183 = metadata !{i32 786689, metadata !176, metadata !"upper", metadata !5, i32 67109535, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper] [line 671]
!184 = metadata !{i32 786689, metadata !176, metadata !"dir", metadata !5, i32 83886752, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 672]
!185 = metadata !{i32 786689, metadata !176, metadata !"cctk_str1", metadata !5, i32 100663969, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 673]
!186 = metadata !{i32 786689, metadata !176, metadata !"cctk_str2", metadata !5, i32 117441185, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 673]
!187 = metadata !{i32 786689, metadata !176, metadata !"cctk_strlen1", metadata !5, i32 134218401, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 673]
!188 = metadata !{i32 786689, metadata !176, metadata !"cctk_strlen2", metadata !5, i32 150995617, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 673]
!189 = metadata !{i32 786688, metadata !176, metadata !"name", metadata !5, i32 675, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 675]
!190 = metadata !{i32 786688, metadata !176, metadata !"systemname", metadata !5, i32 675, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [systemname] [line 675]
!191 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CoordSystemHandle", metadata !"CCTK_CoordSystemHandle", metadata !"", i32 703, metadata !192, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_CoordSystemHandle, null, null, metadata !194, i32 704} ; [ DW_TAG_subprogram ] [line 703] [def] [scope 704] [CCTK_CoordSystemHandle]
!192 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !193, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!193 = metadata !{metadata !14, metadata !8}
!194 = metadata !{metadata !195, metadata !196}
!195 = metadata !{i32 786689, metadata !191, metadata !"systemname", metadata !5, i32 16777919, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [systemname] [line 703]
!196 = metadata !{i32 786688, metadata !191, metadata !"handle", metadata !5, i32 705, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [handle] [line 705]
!197 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CoordSystemName", metadata !"CCTK_CoordSystemName", metadata !"", i32 741, metadata !198, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @CCTK_CoordSystemName, null, null, metadata !200, i32 742} ; [ DW_TAG_subprogram ] [line 741] [def] [scope 742] [CCTK_CoordSystemName]
!198 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !199, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!199 = metadata !{metadata !8, metadata !14}
!200 = metadata !{metadata !201, metadata !202, metadata !203}
!201 = metadata !{i32 786689, metadata !197, metadata !"handle", metadata !5, i32 16777957, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 741]
!202 = metadata !{i32 786688, metadata !197, metadata !"systemname", metadata !5, i32 743, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [systemname] [line 743]
!203 = metadata !{i32 786688, metadata !197, metadata !"coord_system", metadata !5, i32 744, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord_system] [line 744]
!204 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_coordsystemhandle_", metadata !"cctk_coordsystemhandle_", metadata !"", i32 762, metadata !205, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_coordsystemhandle_, null, null, metadata !207, i32 764} ; [ DW_TAG_subprogram ] [line 762] [def] [scope 764] [cctk_coordsystemhandle_]
!205 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!206 = metadata !{null, metadata !47, metadata !32, metadata !92}
!207 = metadata !{metadata !208, metadata !209, metadata !210, metadata !211}
!208 = metadata !{i32 786689, metadata !204, metadata !"ierr", metadata !5, i32 16777979, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 763]
!209 = metadata !{i32 786689, metadata !204, metadata !"cctk_str1", metadata !5, i32 33555195, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 763]
!210 = metadata !{i32 786689, metadata !204, metadata !"cctk_strlen1", metadata !5, i32 50332411, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 763]
!211 = metadata !{i32 786688, metadata !204, metadata !"systemname", metadata !5, i32 765, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [systemname] [line 765]
!212 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CoordIndex", metadata !"CCTK_CoordIndex", metadata !"", i32 817, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i8*)* @CCTK_CoordIndex, null, null, metadata !213, i32 818} ; [ DW_TAG_subprogram ] [line 817] [def] [scope 818] [CCTK_CoordIndex]
!213 = metadata !{metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220}
!214 = metadata !{i32 786689, metadata !212, metadata !"dir", metadata !5, i32 16778033, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 817]
!215 = metadata !{i32 786689, metadata !212, metadata !"name", metadata !5, i32 33555249, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 817]
!216 = metadata !{i32 786689, metadata !212, metadata !"systemname", metadata !5, i32 50332465, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [systemname] [line 817]
!217 = metadata !{i32 786688, metadata !212, metadata !"i", metadata !5, i32 819, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 819]
!218 = metadata !{i32 786688, metadata !212, metadata !"vindex", metadata !5, i32 820, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vindex] [line 820]
!219 = metadata !{i32 786688, metadata !212, metadata !"foundit", metadata !5, i32 821, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [foundit] [line 821]
!220 = metadata !{i32 786688, metadata !212, metadata !"coord_system", metadata !5, i32 822, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord_system] [line 822]
!221 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_coordindex_", metadata !"cctk_coordindex_", metadata !"", i32 873, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i8*, i8*, i32, i32)* @cctk_coordindex_, null, null, metadata !222, i32 875} ; [ DW_TAG_subprogram ] [line 873] [def] [scope 875] [cctk_coordindex_]
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230}
!223 = metadata !{i32 786689, metadata !221, metadata !"vindex", metadata !5, i32 16778090, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 874]
!224 = metadata !{i32 786689, metadata !221, metadata !"dir", metadata !5, i32 33555306, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 874]
!225 = metadata !{i32 786689, metadata !221, metadata !"cctk_str1", metadata !5, i32 50332522, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 874]
!226 = metadata !{i32 786689, metadata !221, metadata !"cctk_str2", metadata !5, i32 67109738, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 874]
!227 = metadata !{i32 786689, metadata !221, metadata !"cctk_strlen1", metadata !5, i32 83886954, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 874]
!228 = metadata !{i32 786689, metadata !221, metadata !"cctk_strlen2", metadata !5, i32 100664170, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 874]
!229 = metadata !{i32 786688, metadata !221, metadata !"name", metadata !5, i32 876, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 876]
!230 = metadata !{i32 786688, metadata !221, metadata !"systemname", metadata !5, i32 876, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [systemname] [line 876]
!231 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CoordSystemDim", metadata !"CCTK_CoordSystemDim", metadata !"", i32 883, metadata !192, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @CCTK_CoordSystemDim, null, null, metadata !232, i32 884} ; [ DW_TAG_subprogram ] [line 883] [def] [scope 884] [CCTK_CoordSystemDim]
!232 = metadata !{metadata !233, metadata !234, metadata !235}
!233 = metadata !{i32 786689, metadata !231, metadata !"systemname", metadata !5, i32 16778099, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [systemname] [line 883]
!234 = metadata !{i32 786688, metadata !231, metadata !"dim", metadata !5, i32 885, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dim] [line 885]
!235 = metadata !{i32 786688, metadata !231, metadata !"coord_system", metadata !5, i32 886, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord_system] [line 886]
!236 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_coordsystemdim_", metadata !"cctk_coordsystemdim_", metadata !"", i32 905, metadata !205, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32)* @cctk_coordsystemdim_, null, null, metadata !237, i32 907} ; [ DW_TAG_subprogram ] [line 905] [def] [scope 907] [cctk_coordsystemdim_]
!237 = metadata !{metadata !238, metadata !239, metadata !240, metadata !241}
!238 = metadata !{i32 786689, metadata !236, metadata !"dim", metadata !5, i32 16778122, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dim] [line 906]
!239 = metadata !{i32 786689, metadata !236, metadata !"cctk_str1", metadata !5, i32 33555338, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 906]
!240 = metadata !{i32 786689, metadata !236, metadata !"cctk_strlen1", metadata !5, i32 50332554, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 906]
!241 = metadata !{i32 786688, metadata !236, metadata !"systemname", metadata !5, i32 908, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [systemname] [line 908]
!242 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CoordDir", metadata !"CCTK_CoordDir", metadata !"", i32 932, metadata !243, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @CCTK_CoordDir, null, null, metadata !245, i32 933} ; [ DW_TAG_subprogram ] [line 932] [def] [scope 933] [CCTK_CoordDir]
!243 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!244 = metadata !{metadata !14, metadata !8, metadata !8}
!245 = metadata !{metadata !246, metadata !247, metadata !248, metadata !249, metadata !250}
!246 = metadata !{i32 786689, metadata !242, metadata !"name", metadata !5, i32 16778148, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 932]
!247 = metadata !{i32 786689, metadata !242, metadata !"systemname", metadata !5, i32 33555364, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [systemname] [line 932]
!248 = metadata !{i32 786688, metadata !242, metadata !"i", metadata !5, i32 934, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 934]
!249 = metadata !{i32 786688, metadata !242, metadata !"dir", metadata !5, i32 935, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir] [line 935]
!250 = metadata !{i32 786688, metadata !242, metadata !"coord_system", metadata !5, i32 936, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord_system] [line 936]
!251 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_coorddir_", metadata !"cctk_coorddir_", metadata !"", i32 968, metadata !252, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i8*, i32, i32)* @cctk_coorddir_, null, null, metadata !254, i32 970} ; [ DW_TAG_subprogram ] [line 968] [def] [scope 970] [cctk_coorddir_]
!252 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !253, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!253 = metadata !{null, metadata !47, metadata !32, metadata !32, metadata !92, metadata !92}
!254 = metadata !{metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261}
!255 = metadata !{i32 786689, metadata !251, metadata !"dir", metadata !5, i32 16778185, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 969]
!256 = metadata !{i32 786689, metadata !251, metadata !"cctk_str1", metadata !5, i32 33555401, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 969]
!257 = metadata !{i32 786689, metadata !251, metadata !"cctk_str2", metadata !5, i32 50332617, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 969]
!258 = metadata !{i32 786689, metadata !251, metadata !"cctk_strlen1", metadata !5, i32 67109833, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 969]
!259 = metadata !{i32 786689, metadata !251, metadata !"cctk_strlen2", metadata !5, i32 83887049, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 969]
!260 = metadata !{i32 786688, metadata !251, metadata !"name", metadata !5, i32 971, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 971]
!261 = metadata !{i32 786688, metadata !251, metadata !"systemname", metadata !5, i32 971, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [systemname] [line 971]
!262 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CoordRange", metadata !"CCTK_CoordRange", metadata !"", i32 1034, metadata !263, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, double*, double*, i32, i8*, i8*)* @CCTK_CoordRange, null, null, metadata !267, i32 1040} ; [ DW_TAG_subprogram ] [line 1034] [def] [scope 1040] [CCTK_CoordRange]
!263 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!264 = metadata !{metadata !14, metadata !265, metadata !57, metadata !57, metadata !14, metadata !8, metadata !8}
!265 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !266} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!266 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!267 = metadata !{metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279}
!268 = metadata !{i32 786689, metadata !262, metadata !"GH", metadata !5, i32 16778250, metadata !265, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 1034]
!269 = metadata !{i32 786689, metadata !262, metadata !"lower", metadata !5, i32 33555467, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower] [line 1035]
!270 = metadata !{i32 786689, metadata !262, metadata !"upper", metadata !5, i32 50332684, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper] [line 1036]
!271 = metadata !{i32 786689, metadata !262, metadata !"coorddir", metadata !5, i32 67109901, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coorddir] [line 1037]
!272 = metadata !{i32 786689, metadata !262, metadata !"coordname", metadata !5, i32 83887118, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coordname] [line 1038]
!273 = metadata !{i32 786689, metadata !262, metadata !"systemname", metadata !5, i32 100664335, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [systemname] [line 1039]
!274 = metadata !{i32 786688, metadata !262, metadata !"i", metadata !5, i32 1041, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1041]
!275 = metadata !{i32 786688, metadata !262, metadata !"retval", metadata !5, i32 1042, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 1042]
!276 = metadata !{i32 786688, metadata !262, metadata !"gotrange", metadata !5, i32 1043, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gotrange] [line 1043]
!277 = metadata !{i32 786688, metadata !262, metadata !"curr", metadata !5, i32 1044, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curr] [line 1044]
!278 = metadata !{i32 786688, metadata !262, metadata !"coord_system", metadata !5, i32 1045, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord_system] [line 1045]
!279 = metadata !{i32 786688, metadata !262, metadata !"coord", metadata !5, i32 1046, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord] [line 1046]
!280 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_coordrange_", metadata !"cctk_coordrange_", metadata !"", i32 1136, metadata !281, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, double*, double*, i32*, i8*, i8*, i32, i32)* @cctk_coordrange_, null, null, metadata !283, i32 1143} ; [ DW_TAG_subprogram ] [line 1136] [def] [scope 1143] [cctk_coordrange_]
!281 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !282, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!282 = metadata !{null, metadata !47, metadata !265, metadata !57, metadata !57, metadata !90, metadata !32, metadata !32, metadata !92, metadata !92}
!283 = metadata !{metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294}
!284 = metadata !{i32 786689, metadata !280, metadata !"ierr", metadata !5, i32 16778353, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 1137]
!285 = metadata !{i32 786689, metadata !280, metadata !"GH", metadata !5, i32 33555570, metadata !265, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 1138]
!286 = metadata !{i32 786689, metadata !280, metadata !"lower", metadata !5, i32 50332787, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower] [line 1139]
!287 = metadata !{i32 786689, metadata !280, metadata !"upper", metadata !5, i32 67110004, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper] [line 1140]
!288 = metadata !{i32 786689, metadata !280, metadata !"dir", metadata !5, i32 83887221, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 1141]
!289 = metadata !{i32 786689, metadata !280, metadata !"cctk_str1", metadata !5, i32 100664438, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 1142]
!290 = metadata !{i32 786689, metadata !280, metadata !"cctk_str2", metadata !5, i32 117441654, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 1142]
!291 = metadata !{i32 786689, metadata !280, metadata !"cctk_strlen1", metadata !5, i32 134218870, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 1142]
!292 = metadata !{i32 786689, metadata !280, metadata !"cctk_strlen2", metadata !5, i32 150996086, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 1142]
!293 = metadata !{i32 786688, metadata !280, metadata !"name", metadata !5, i32 1144, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 1144]
!294 = metadata !{i32 786688, metadata !280, metadata !"systemname", metadata !5, i32 1144, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [systemname] [line 1144]
!295 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CoordRangePhysIndex", metadata !"CCTK_CoordRangePhysIndex", metadata !"", i32 1207, metadata !296, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32*, i32*, i32, i8*, i8*)* @CCTK_CoordRangePhysIndex, null, null, metadata !298, i32 1213} ; [ DW_TAG_subprogram ] [line 1207] [def] [scope 1213] [CCTK_CoordRangePhysIndex]
!296 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !297, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!297 = metadata !{metadata !14, metadata !265, metadata !47, metadata !47, metadata !14, metadata !8, metadata !8}
!298 = metadata !{metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309}
!299 = metadata !{i32 786689, metadata !295, metadata !"GH", metadata !5, i32 16778423, metadata !265, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 1207]
!300 = metadata !{i32 786689, metadata !295, metadata !"lower", metadata !5, i32 33555640, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower] [line 1208]
!301 = metadata !{i32 786689, metadata !295, metadata !"upper", metadata !5, i32 50332857, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper] [line 1209]
!302 = metadata !{i32 786689, metadata !295, metadata !"coorddir", metadata !5, i32 67110074, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coorddir] [line 1210]
!303 = metadata !{i32 786689, metadata !295, metadata !"coordname", metadata !5, i32 83887291, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coordname] [line 1211]
!304 = metadata !{i32 786689, metadata !295, metadata !"systemname", metadata !5, i32 100664508, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [systemname] [line 1212]
!305 = metadata !{i32 786688, metadata !295, metadata !"i", metadata !5, i32 1214, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1214]
!306 = metadata !{i32 786688, metadata !295, metadata !"retval", metadata !5, i32 1215, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 1215]
!307 = metadata !{i32 786688, metadata !295, metadata !"curr", metadata !5, i32 1216, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curr] [line 1216]
!308 = metadata !{i32 786688, metadata !295, metadata !"coord_system", metadata !5, i32 1217, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord_system] [line 1217]
!309 = metadata !{i32 786688, metadata !295, metadata !"coord", metadata !5, i32 1218, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord] [line 1218]
!310 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_coordrangephysindex_", metadata !"cctk_coordrangephysindex_", metadata !"", i32 1313, metadata !311, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*, i32*, i32*, i8*, i8*, i32, i32)* @cctk_coordrangephysindex_, null, null, metadata !313, i32 1320} ; [ DW_TAG_subprogram ] [line 1313] [def] [scope 1320] [cctk_coordrangephysindex_]
!311 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !312, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!312 = metadata !{null, metadata !47, metadata !265, metadata !47, metadata !47, metadata !90, metadata !32, metadata !32, metadata !92, metadata !92}
!313 = metadata !{metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324}
!314 = metadata !{i32 786689, metadata !310, metadata !"ierr", metadata !5, i32 16778530, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 1314]
!315 = metadata !{i32 786689, metadata !310, metadata !"GH", metadata !5, i32 33555747, metadata !265, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 1315]
!316 = metadata !{i32 786689, metadata !310, metadata !"lower", metadata !5, i32 50332964, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower] [line 1316]
!317 = metadata !{i32 786689, metadata !310, metadata !"upper", metadata !5, i32 67110181, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper] [line 1317]
!318 = metadata !{i32 786689, metadata !310, metadata !"dir", metadata !5, i32 83887398, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 1318]
!319 = metadata !{i32 786689, metadata !310, metadata !"cctk_str1", metadata !5, i32 100664615, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 1319]
!320 = metadata !{i32 786689, metadata !310, metadata !"cctk_str2", metadata !5, i32 117441831, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 1319]
!321 = metadata !{i32 786689, metadata !310, metadata !"cctk_strlen1", metadata !5, i32 134219047, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 1319]
!322 = metadata !{i32 786689, metadata !310, metadata !"cctk_strlen2", metadata !5, i32 150996263, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 1319]
!323 = metadata !{i32 786688, metadata !310, metadata !"name", metadata !5, i32 1321, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 1321]
!324 = metadata !{i32 786688, metadata !310, metadata !"systemname", metadata !5, i32 1321, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [systemname] [line 1321]
!325 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CoordLocalRange", metadata !"CCTK_CoordLocalRange", metadata !"", i32 1351, metadata !263, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, double*, double*, i32, i8*, i8*)* @CCTK_CoordLocalRange, null, null, metadata !326, i32 1357} ; [ DW_TAG_subprogram ] [line 1351] [def] [scope 1357] [CCTK_CoordLocalRange]
!326 = metadata !{metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336}
!327 = metadata !{i32 786689, metadata !325, metadata !"GH", metadata !5, i32 16778567, metadata !265, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 1351]
!328 = metadata !{i32 786689, metadata !325, metadata !"lower", metadata !5, i32 33555784, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower] [line 1352]
!329 = metadata !{i32 786689, metadata !325, metadata !"upper", metadata !5, i32 50333001, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper] [line 1353]
!330 = metadata !{i32 786689, metadata !325, metadata !"dir", metadata !5, i32 67110218, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 1354]
!331 = metadata !{i32 786689, metadata !325, metadata !"name", metadata !5, i32 83887435, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1355]
!332 = metadata !{i32 786689, metadata !325, metadata !"systemname", metadata !5, i32 100664652, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [systemname] [line 1356]
!333 = metadata !{i32 786688, metadata !325, metadata !"retval", metadata !5, i32 1358, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 1358]
!334 = metadata !{i32 786688, metadata !325, metadata !"realdir", metadata !5, i32 1359, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [realdir] [line 1359]
!335 = metadata !{i32 786688, metadata !325, metadata !"global_lower", metadata !5, i32 1360, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_lower] [line 1360]
!336 = metadata !{i32 786688, metadata !325, metadata !"global_upper", metadata !5, i32 1361, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_upper] [line 1361]
!337 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_coordlocalrange_", metadata !"cctk_coordlocalrange_", metadata !"", i32 1394, metadata !281, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, double*, double*, i32*, i8*, i8*, i32, i32)* @cctk_coordlocalrange_, null, null, metadata !338, i32 1401} ; [ DW_TAG_subprogram ] [line 1394] [def] [scope 1401] [cctk_coordlocalrange_]
!338 = metadata !{metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349}
!339 = metadata !{i32 786689, metadata !337, metadata !"ierr", metadata !5, i32 16778611, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierr] [line 1395]
!340 = metadata !{i32 786689, metadata !337, metadata !"GH", metadata !5, i32 33555828, metadata !265, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 1396]
!341 = metadata !{i32 786689, metadata !337, metadata !"lower", metadata !5, i32 50333045, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower] [line 1397]
!342 = metadata !{i32 786689, metadata !337, metadata !"upper", metadata !5, i32 67110262, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper] [line 1398]
!343 = metadata !{i32 786689, metadata !337, metadata !"dir", metadata !5, i32 83887479, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 1399]
!344 = metadata !{i32 786689, metadata !337, metadata !"cctk_str1", metadata !5, i32 100664696, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 1400]
!345 = metadata !{i32 786689, metadata !337, metadata !"cctk_str2", metadata !5, i32 117441912, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 1400]
!346 = metadata !{i32 786689, metadata !337, metadata !"cctk_strlen1", metadata !5, i32 134219128, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 1400]
!347 = metadata !{i32 786689, metadata !337, metadata !"cctk_strlen2", metadata !5, i32 150996344, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 1400]
!348 = metadata !{i32 786688, metadata !337, metadata !"name", metadata !5, i32 1402, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 1402]
!349 = metadata !{i32 786688, metadata !337, metadata !"systemname", metadata !5, i32 1402, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [systemname] [line 1402]
!350 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_NumCoordSystems", metadata !"CCTK_NumCoordSystems", metadata !"", i32 1422, metadata !351, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTK_NumCoordSystems, null, null, metadata !2, i32 1423} ; [ DW_TAG_subprogram ] [line 1422] [def] [scope 1423] [CCTK_NumCoordSystems]
!351 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !352, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!352 = metadata !{metadata !14}
!353 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CoordSystemImplementation", metadata !"CCTK_CoordSystemImplementation", metadata !"", i32 1447, metadata !198, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @CCTK_CoordSystemImplementation, null, null, metadata !354, i32 1448} ; [ DW_TAG_subprogram ] [line 1447] [def] [scope 1448] [CCTK_CoordSystemImplementation]
!354 = metadata !{metadata !355, metadata !356}
!355 = metadata !{i32 786689, metadata !353, metadata !"handle", metadata !5, i32 16778663, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 1447]
!356 = metadata !{i32 786688, metadata !353, metadata !"coord_system", metadata !5, i32 1449, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord_system] [line 1449]
!357 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CoordName", metadata !"CCTK_CoordName", metadata !"", i32 1484, metadata !358, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32, i8*)* @CCTK_CoordName, null, null, metadata !360, i32 1485} ; [ DW_TAG_subprogram ] [line 1484] [def] [scope 1485] [CCTK_CoordName]
!358 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !359, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!359 = metadata !{metadata !8, metadata !14, metadata !8}
!360 = metadata !{metadata !361, metadata !362, metadata !363, metadata !364}
!361 = metadata !{i32 786689, metadata !357, metadata !"dir", metadata !5, i32 16778700, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 1484]
!362 = metadata !{i32 786689, metadata !357, metadata !"systemname", metadata !5, i32 33555916, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [systemname] [line 1484]
!363 = metadata !{i32 786688, metadata !357, metadata !"coord_system", metadata !5, i32 1486, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coord_system] [line 1486]
!364 = metadata !{i32 786688, metadata !357, metadata !"retval", metadata !5, i32 1487, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 1487]
!365 = metadata !{metadata !366, metadata !367, metadata !383}
!366 = metadata !{i32 786484, i32 0, null, metadata !"num_systems", metadata !"num_systems", metadata !"", metadata !5, i32 82, metadata !14, i32 1, i32 1, i32* @num_systems, null} ; [ DW_TAG_variable ] [num_systems] [line 82] [local] [def]
!367 = metadata !{i32 786484, i32 0, null, metadata !"CoordSystems", metadata !"CoordSystems", metadata !"", metadata !5, i32 81, metadata !368, i32 1, i32 1, %struct.cHandledData** @CoordSystems, null} ; [ DW_TAG_variable ] [CoordSystems] [line 81] [local] [def]
!368 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !369} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cHandledData]
!369 = metadata !{i32 786454, metadata !1, null, metadata !"cHandledData", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !370} ; [ DW_TAG_typedef ] [cHandledData] [line 28, size 0, align 0, offset 0] [from ]
!370 = metadata !{i32 786451, metadata !371, null, metadata !"", i32 23, i64 128, i64 64, i32 0, i32 0, null, metadata !372, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 23, size 128, align 64, offset 0] [from ]
!371 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreHandledData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!372 = metadata !{metadata !373, metadata !381, metadata !382}
!373 = metadata !{i32 786445, metadata !371, metadata !370, metadata !"array", i32 25, i64 64, i64 64, i64 0, i32 0, metadata !374} ; [ DW_TAG_member ] [array] [line 25, size 64, align 64, offset 0] [from ]
!374 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !375} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cHandleStorage]
!375 = metadata !{i32 786454, metadata !371, null, metadata !"cHandleStorage", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !376} ; [ DW_TAG_typedef ] [cHandleStorage] [line 21, size 0, align 0, offset 0] [from ]
!376 = metadata !{i32 786451, metadata !371, null, metadata !"", i32 16, i64 192, i64 64, i32 0, i32 0, null, metadata !377, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 16, size 192, align 64, offset 0] [from ]
!377 = metadata !{metadata !378, metadata !379, metadata !380}
!378 = metadata !{i32 786445, metadata !371, metadata !376, metadata !"in_use", i32 18, i64 32, i64 32, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ] [in_use] [line 18, size 32, align 32, offset 0] [from unsigned int]
!379 = metadata !{i32 786445, metadata !371, metadata !376, metadata !"name", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [name] [line 19, size 64, align 64, offset 64] [from ]
!380 = metadata !{i32 786445, metadata !371, metadata !376, metadata !"data", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !67} ; [ DW_TAG_member ] [data] [line 20, size 64, align 64, offset 128] [from ]
!381 = metadata !{i32 786445, metadata !371, metadata !370, metadata !"array_size", i32 26, i64 32, i64 32, i64 64, i32 0, metadata !92} ; [ DW_TAG_member ] [array_size] [line 26, size 32, align 32, offset 64] [from unsigned int]
!382 = metadata !{i32 786445, metadata !371, metadata !370, metadata !"first_unused", i32 27, i64 32, i64 32, i64 96, i32 0, metadata !92} ; [ DW_TAG_member ] [first_unused] [line 27, size 32, align 32, offset 96] [from unsigned int]
!383 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 29, metadata !8, i32 1, i32 1, null, null}
!384 = metadata !{i32 31, i32 0, metadata !4, null}
!385 = metadata !{i32 158, i32 0, metadata !11, null}
!386 = metadata !{i32 159, i32 0, metadata !11, null}
!387 = metadata !{i32 160, i32 0, metadata !11, null}
!388 = metadata !{i32 -1}
!389 = metadata !{i32 162, i32 0, metadata !11, null}
!390 = metadata !{i32 163, i32 0, metadata !11, null}
!391 = metadata !{i32 167, i32 0, metadata !11, null}
!392 = metadata !{metadata !"any pointer", metadata !393}
!393 = metadata !{metadata !"omnipotent char", metadata !394}
!394 = metadata !{metadata !"Simple C/C++ TBAA"}
!395 = metadata !{i32 168, i32 0, metadata !11, null}
!396 = metadata !{i32 171, i32 0, metadata !397, null}
!397 = metadata !{i32 786443, metadata !1, metadata !11, i32 169, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!398 = metadata !{i32 174, i32 0, metadata !397, null}
!399 = metadata !{i32 176, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !397, i32 175, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!401 = metadata !{i32 178, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !1, metadata !400, i32 177, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!403 = metadata !{metadata !"int", metadata !393}
!404 = metadata !{i32 179, i32 0, metadata !402, null}
!405 = metadata !{i32 180, i32 0, metadata !402, null}
!406 = metadata !{i32 181, i32 0, metadata !402, null}
!407 = metadata !{i32 183, i32 0, metadata !402, null}
!408 = metadata !{i32 186, i32 0, metadata !402, null}
!409 = metadata !{i32 188, i32 0, metadata !402, null}
!410 = metadata !{i32 -2}
!411 = metadata !{i32 191, i32 0, metadata !412, null}
!412 = metadata !{i32 786443, metadata !1, metadata !400, i32 190, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!413 = metadata !{i32 192, i32 0, metadata !412, null}
!414 = metadata !{i32 200, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !11, i32 199, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!416 = metadata !{i32 202, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !1, metadata !415, i32 201, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!418 = metadata !{i32 203, i32 0, metadata !417, null}
!419 = metadata !{i32 206, i32 0, metadata !417, null}
!420 = metadata !{i32 209, i32 0, metadata !421, null}
!421 = metadata !{i32 786443, metadata !1, metadata !415, i32 208, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!422 = metadata !{i32 210, i32 0, metadata !421, null}
!423 = metadata !{i32 217, i32 0, metadata !11, null}
!424 = metadata !{i32 221, i32 0, metadata !87, null}
!425 = metadata !{i32 223, i32 0, metadata !87, null}
!426 = metadata !{i32 224, i32 0, metadata !87, null}
!427 = metadata !{i32 225, i32 0, metadata !87, null}
!428 = metadata !{i32 226, i32 0, metadata !87, null}
!429 = metadata !{i32 227, i32 0, metadata !87, null}
!430 = metadata !{i32 250, i32 0, metadata !102, null}
!431 = metadata !{i32 251, i32 0, metadata !102, null}
!432 = metadata !{i32 252, i32 0, metadata !102, null}
!433 = metadata !{i32 253, i32 0, metadata !102, null}
!434 = metadata !{i32 256, i32 0, metadata !102, null}
!435 = metadata !{i32 257, i32 0, metadata !102, null}
!436 = metadata !{i32 258, i32 0, metadata !102, null}
!437 = metadata !{i32 262, i32 0, metadata !102, null}
!438 = metadata !{i32 263, i32 0, metadata !102, null}
!439 = metadata !{i32 265, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !1, metadata !102, i32 264, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!441 = metadata !{i32 267, i32 0, metadata !440, null}
!442 = metadata !{i32 268, i32 0, metadata !440, null}
!443 = metadata !{i32 272, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !1, metadata !102, i32 270, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!445 = metadata !{i32 274, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !1, metadata !444, i32 273, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!447 = metadata !{i32 284, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !1, metadata !449, i32 284, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!449 = metadata !{i32 786443, metadata !1, metadata !444, i32 281, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!450 = metadata !{i32 278, i32 0, metadata !446, null}
!451 = metadata !{i32 279, i32 0, metadata !446, null}
!452 = metadata !{i32 286, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !448, i32 285, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!454 = metadata !{i32 287, i32 0, metadata !453, null}
!455 = metadata !{i32 289, i32 0, metadata !456, null}
!456 = metadata !{i32 786443, metadata !1, metadata !453, i32 288, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!457 = metadata !{i32 1}
!458 = metadata !{i32 292, i32 0, metadata !456, null}
!459 = metadata !{i32 -3}
!460 = metadata !{i32 293, i32 0, metadata !456, null}
!461 = metadata !{i32 294, i32 0, metadata !456, null}
!462 = metadata !{i32 297, i32 0, metadata !449, null}
!463 = metadata !{i32 299, i32 0, metadata !464, null}
!464 = metadata !{i32 786443, metadata !1, metadata !449, i32 298, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!465 = metadata !{i32 302, i32 0, metadata !464, null}
!466 = metadata !{i32 -4}
!467 = metadata !{i32 303, i32 0, metadata !464, null}
!468 = metadata !{i32 306, i32 0, metadata !449, null}
!469 = metadata !{i32 309, i32 0, metadata !470, null}
!470 = metadata !{i32 786443, metadata !1, metadata !449, i32 307, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!471 = metadata !{i32 311, i32 0, metadata !470, null}
!472 = metadata !{i32 312, i32 0, metadata !470, null}
!473 = metadata !{i32 314, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !1, metadata !470, i32 313, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!475 = metadata !{i32 316, i32 0, metadata !474, null}
!476 = metadata !{i32 321, i32 0, metadata !102, null}
!477 = metadata !{i32 325, i32 0, metadata !114, null}
!478 = metadata !{i32 327, i32 0, metadata !114, null}
!479 = metadata !{i32 328, i32 0, metadata !114, null}
!480 = metadata !{i32 329, i32 0, metadata !114, null}
!481 = metadata !{i32 330, i32 0, metadata !114, null}
!482 = metadata !{i32 331, i32 0, metadata !114, null}
!483 = metadata !{i32 332, i32 0, metadata !114, null}
!484 = metadata !{i32 390, i32 0, metadata !129, null}
!485 = metadata !{i32 391, i32 0, metadata !129, null}
!486 = metadata !{i32 392, i32 0, metadata !129, null}
!487 = metadata !{i32 393, i32 0, metadata !129, null}
!488 = metadata !{i32 394, i32 0, metadata !129, null}
!489 = metadata !{i32 395, i32 0, metadata !129, null}
!490 = metadata !{i32 398, i32 0, metadata !129, null}
!491 = metadata !{i32 399, i32 0, metadata !129, null}
!492 = metadata !{i32 401, i32 0, metadata !129, null}
!493 = metadata !{i32 405, i32 0, metadata !129, null}
!494 = metadata !{i32 406, i32 0, metadata !129, null}
!495 = metadata !{i32 408, i32 0, metadata !496, null}
!496 = metadata !{i32 786443, metadata !1, metadata !129, i32 407, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!497 = metadata !{i32 411, i32 0, metadata !496, null}
!498 = metadata !{i32 412, i32 0, metadata !496, null}
!499 = metadata !{i32 415, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !129, i32 414, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!501 = metadata !{i32 438, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !1, metadata !503, i32 438, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!503 = metadata !{i32 786443, metadata !1, metadata !500, i32 437, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!504 = metadata !{i32 417, i32 0, metadata !505, null}
!505 = metadata !{i32 786443, metadata !1, metadata !500, i32 416, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!506 = metadata !{i32 419, i32 0, metadata !507, null}
!507 = metadata !{i32 786443, metadata !1, metadata !505, i32 418, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!508 = metadata !{i32 422, i32 0, metadata !507, null}
!509 = metadata !{i32 424, i32 0, metadata !505, null}
!510 = metadata !{i32 423, i32 0, metadata !507, null}
!511 = metadata !{i32 430, i32 0, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !505, i32 429, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!513 = metadata !{i32 433, i32 0, metadata !512, null}
!514 = metadata !{i32 440, i32 0, metadata !515, null}
!515 = metadata !{i32 786443, metadata !1, metadata !502, i32 439, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!516 = metadata !{i32 441, i32 0, metadata !515, null}
!517 = metadata !{i32 undef}
!518 = metadata !{i32 443, i32 0, metadata !519, null}
!519 = metadata !{i32 786443, metadata !1, metadata !515, i32 442, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!520 = metadata !{i32 446, i32 0, metadata !503, null}
!521 = metadata !{i32 459, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !500, i32 456, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!523 = metadata !{i32 448, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !1, metadata !503, i32 447, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!525 = metadata !{i32 451, i32 0, metadata !524, null}
!526 = metadata !{i32 452, i32 0, metadata !524, null}
!527 = metadata !{i32 455, i32 0, metadata !500, null}
!528 = metadata !{i32 461, i32 0, metadata !529, null}
!529 = metadata !{i32 786443, metadata !1, metadata !522, i32 460, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!530 = metadata !{i32 463, i32 0, metadata !529, null}
!531 = metadata !{metadata !"double", metadata !393}
!532 = metadata !{i32 464, i32 0, metadata !529, null}
!533 = metadata !{i32 465, i32 0, metadata !529, null}
!534 = metadata !{i32 470, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !522, i32 467, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!536 = metadata !{i32 472, i32 0, metadata !535, null}
!537 = metadata !{i32 474, i32 0, metadata !538, null}
!538 = metadata !{i32 786443, metadata !1, metadata !535, i32 473, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!539 = metadata !{i32 -5}
!540 = metadata !{i32 477, i32 0, metadata !538, null}
!541 = metadata !{i32 478, i32 0, metadata !538, null}
!542 = metadata !{i32 481, i32 0, metadata !543, null}
!543 = metadata !{i32 786443, metadata !1, metadata !535, i32 480, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!544 = metadata !{i32 482, i32 0, metadata !543, null}
!545 = metadata !{i32 483, i32 0, metadata !543, null}
!546 = metadata !{i32 484, i32 0, metadata !543, null}
!547 = metadata !{i32 485, i32 0, metadata !543, null}
!548 = metadata !{i32 491, i32 0, metadata !129, null}
!549 = metadata !{i32 495, i32 0, metadata !144, null}
!550 = metadata !{i32 496, i32 0, metadata !144, null}
!551 = metadata !{i32 497, i32 0, metadata !144, null}
!552 = metadata !{i32 498, i32 0, metadata !144, null}
!553 = metadata !{i32 499, i32 0, metadata !144, null}
!554 = metadata !{i32 500, i32 0, metadata !144, null}
!555 = metadata !{i32 502, i32 0, metadata !144, null}
!556 = metadata !{i32 503, i32 0, metadata !144, null}
!557 = metadata !{i32 504, i32 0, metadata !144, null}
!558 = metadata !{i32 505, i32 0, metadata !144, null}
!559 = metadata !{i32 506, i32 0, metadata !144, null}
!560 = metadata !{i32 561, i32 0, metadata !161, null}
!561 = metadata !{i32 562, i32 0, metadata !161, null}
!562 = metadata !{i32 563, i32 0, metadata !161, null}
!563 = metadata !{i32 564, i32 0, metadata !161, null}
!564 = metadata !{i32 565, i32 0, metadata !161, null}
!565 = metadata !{i32 566, i32 0, metadata !161, null}
!566 = metadata !{i32 569, i32 0, metadata !161, null}
!567 = metadata !{i32 570, i32 0, metadata !161, null}
!568 = metadata !{i32 572, i32 0, metadata !161, null}
!569 = metadata !{i32 576, i32 0, metadata !161, null}
!570 = metadata !{i32 577, i32 0, metadata !161, null}
!571 = metadata !{i32 579, i32 0, metadata !572, null}
!572 = metadata !{i32 786443, metadata !1, metadata !161, i32 578, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!573 = metadata !{i32 582, i32 0, metadata !572, null}
!574 = metadata !{i32 583, i32 0, metadata !572, null}
!575 = metadata !{i32 586, i32 0, metadata !576, null}
!576 = metadata !{i32 786443, metadata !1, metadata !161, i32 585, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!577 = metadata !{i32 610, i32 0, metadata !578, null}
!578 = metadata !{i32 786443, metadata !1, metadata !579, i32 610, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!579 = metadata !{i32 786443, metadata !1, metadata !576, i32 609, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!580 = metadata !{i32 588, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !1, metadata !576, i32 587, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!582 = metadata !{i32 590, i32 0, metadata !583, null}
!583 = metadata !{i32 786443, metadata !1, metadata !581, i32 589, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!584 = metadata !{i32 593, i32 0, metadata !583, null}
!585 = metadata !{i32 595, i32 0, metadata !581, null}
!586 = metadata !{i32 594, i32 0, metadata !583, null}
!587 = metadata !{i32 601, i32 0, metadata !588, null}
!588 = metadata !{i32 786443, metadata !1, metadata !581, i32 600, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!589 = metadata !{i32 605, i32 0, metadata !588, null}
!590 = metadata !{i32 612, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !578, i32 611, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!592 = metadata !{i32 613, i32 0, metadata !591, null}
!593 = metadata !{i32 615, i32 0, metadata !594, null}
!594 = metadata !{i32 786443, metadata !1, metadata !591, i32 614, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!595 = metadata !{i32 618, i32 0, metadata !579, null}
!596 = metadata !{i32 631, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !1, metadata !576, i32 628, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!598 = metadata !{i32 620, i32 0, metadata !599, null}
!599 = metadata !{i32 786443, metadata !1, metadata !579, i32 619, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!600 = metadata !{i32 623, i32 0, metadata !599, null}
!601 = metadata !{i32 624, i32 0, metadata !599, null}
!602 = metadata !{i32 627, i32 0, metadata !576, null}
!603 = metadata !{i32 633, i32 0, metadata !604, null}
!604 = metadata !{i32 786443, metadata !1, metadata !597, i32 632, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!605 = metadata !{i32 636, i32 0, metadata !604, null}
!606 = metadata !{i32 637, i32 0, metadata !604, null}
!607 = metadata !{i32 638, i32 0, metadata !604, null}
!608 = metadata !{i32 643, i32 0, metadata !609, null}
!609 = metadata !{i32 786443, metadata !1, metadata !597, i32 640, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!610 = metadata !{i32 645, i32 0, metadata !609, null}
!611 = metadata !{i32 647, i32 0, metadata !612, null}
!612 = metadata !{i32 786443, metadata !1, metadata !609, i32 646, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!613 = metadata !{i32 650, i32 0, metadata !612, null}
!614 = metadata !{i32 651, i32 0, metadata !612, null}
!615 = metadata !{i32 654, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !609, i32 653, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!617 = metadata !{i32 655, i32 0, metadata !616, null}
!618 = metadata !{i32 656, i32 0, metadata !616, null}
!619 = metadata !{i32 657, i32 0, metadata !616, null}
!620 = metadata !{i32 658, i32 0, metadata !616, null}
!621 = metadata !{i32 664, i32 0, metadata !161, null}
!622 = metadata !{i32 668, i32 0, metadata !176, null}
!623 = metadata !{i32 669, i32 0, metadata !176, null}
!624 = metadata !{i32 670, i32 0, metadata !176, null}
!625 = metadata !{i32 671, i32 0, metadata !176, null}
!626 = metadata !{i32 672, i32 0, metadata !176, null}
!627 = metadata !{i32 673, i32 0, metadata !176, null}
!628 = metadata !{i32 675, i32 0, metadata !176, null}
!629 = metadata !{i32 676, i32 0, metadata !176, null}
!630 = metadata !{i32 677, i32 0, metadata !176, null}
!631 = metadata !{i32 678, i32 0, metadata !176, null}
!632 = metadata !{i32 679, i32 0, metadata !176, null}
!633 = metadata !{i32 703, i32 0, metadata !191, null}
!634 = metadata !{i32 708, i32 0, metadata !191, null}
!635 = metadata !{i32 710, i32 0, metadata !191, null}
!636 = metadata !{i32 712, i32 0, metadata !637, null}
!637 = metadata !{i32 786443, metadata !1, metadata !191, i32 711, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!638 = metadata !{i32 715, i32 0, metadata !637, null}
!639 = metadata !{i32 717, i32 0, metadata !191, null}
!640 = metadata !{i32 741, i32 0, metadata !197, null}
!641 = metadata !{i32 749, i32 0, metadata !197, null}
!642 = metadata !{i32 750, i32 0, metadata !197, null}
!643 = metadata !{i32 752, i32 0, metadata !644, null}
!644 = metadata !{i32 786443, metadata !1, metadata !197, i32 751, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!645 = metadata !{i32 753, i32 0, metadata !644, null}
!646 = metadata !{i32 759, i32 0, metadata !197, null}
!647 = metadata !{i32 763, i32 0, metadata !204, null}
!648 = metadata !{i32 765, i32 0, metadata !204, null}
!649 = metadata !{i32 766, i32 0, metadata !204, null}
!650 = metadata !{i32 767, i32 0, metadata !204, null}
!651 = metadata !{i32 768, i32 0, metadata !204, null}
!652 = metadata !{i32 817, i32 0, metadata !212, null}
!653 = metadata !{i32 820, i32 0, metadata !212, null}
!654 = metadata !{i32 821, i32 0, metadata !212, null}
!655 = metadata !{i32 822, i32 0, metadata !212, null}
!656 = metadata !{i32 826, i32 0, metadata !212, null}
!657 = metadata !{i32 827, i32 0, metadata !212, null}
!658 = metadata !{i32 829, i32 0, metadata !659, null}
!659 = metadata !{i32 786443, metadata !1, metadata !212, i32 828, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!660 = metadata !{i32 831, i32 0, metadata !659, null}
!661 = metadata !{i32 832, i32 0, metadata !659, null}
!662 = metadata !{i32 835, i32 0, metadata !663, null}
!663 = metadata !{i32 786443, metadata !1, metadata !212, i32 834, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!664 = metadata !{i32 837, i32 0, metadata !665, null}
!665 = metadata !{i32 786443, metadata !1, metadata !663, i32 836, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!666 = metadata !{i32 851, i32 0, metadata !667, null}
!667 = metadata !{i32 786443, metadata !1, metadata !668, i32 851, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!668 = metadata !{i32 786443, metadata !1, metadata !663, i32 850, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!669 = metadata !{i32 839, i32 0, metadata !670, null}
!670 = metadata !{i32 786443, metadata !1, metadata !665, i32 838, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!671 = metadata !{i32 842, i32 0, metadata !670, null}
!672 = metadata !{i32 843, i32 0, metadata !670, null}
!673 = metadata !{i32 846, i32 0, metadata !674, null}
!674 = metadata !{i32 786443, metadata !1, metadata !665, i32 845, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!675 = metadata !{i32 853, i32 0, metadata !676, null}
!676 = metadata !{i32 786443, metadata !1, metadata !667, i32 852, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!677 = metadata !{i32 854, i32 0, metadata !676, null}
!678 = metadata !{i32 856, i32 0, metadata !679, null}
!679 = metadata !{i32 786443, metadata !1, metadata !676, i32 855, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!680 = metadata !{i32 857, i32 0, metadata !679, null}
!681 = metadata !{i32 858, i32 0, metadata !679, null}
!682 = metadata !{i32 860, i32 0, metadata !668, null}
!683 = metadata !{i32 862, i32 0, metadata !684, null}
!684 = metadata !{i32 786443, metadata !1, metadata !668, i32 861, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!685 = metadata !{i32 865, i32 0, metadata !684, null}
!686 = metadata !{i32 866, i32 0, metadata !684, null}
!687 = metadata !{i32 870, i32 0, metadata !212, null}
!688 = metadata !{i32 874, i32 0, metadata !221, null}
!689 = metadata !{i32 876, i32 0, metadata !221, null}
!690 = metadata !{i32 877, i32 0, metadata !221, null}
!691 = metadata !{i32 878, i32 0, metadata !221, null}
!692 = metadata !{i32 879, i32 0, metadata !221, null}
!693 = metadata !{i32 880, i32 0, metadata !221, null}
!694 = metadata !{i32 883, i32 0, metadata !231, null}
!695 = metadata !{i32 886, i32 0, metadata !231, null}
!696 = metadata !{i32 890, i32 0, metadata !231, null}
!697 = metadata !{i32 891, i32 0, metadata !231, null}
!698 = metadata !{i32 893, i32 0, metadata !699, null}
!699 = metadata !{i32 786443, metadata !1, metadata !231, i32 892, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!700 = metadata !{i32 895, i32 0, metadata !699, null}
!701 = metadata !{i32 896, i32 0, metadata !699, null}
!702 = metadata !{i32 899, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !231, i32 898, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!704 = metadata !{i32 902, i32 0, metadata !231, null}
!705 = metadata !{i32 906, i32 0, metadata !236, null}
!706 = metadata !{i32 908, i32 0, metadata !236, null}
!707 = metadata !{i32 909, i32 0, metadata !236, null}
!708 = metadata !{i32 910, i32 0, metadata !236, null}
!709 = metadata !{i32 911, i32 0, metadata !236, null}
!710 = metadata !{i32 932, i32 0, metadata !242, null}
!711 = metadata !{i32 936, i32 0, metadata !242, null}
!712 = metadata !{i32 940, i32 0, metadata !242, null}
!713 = metadata !{i32 941, i32 0, metadata !242, null}
!714 = metadata !{i32 942, i32 0, metadata !242, null}
!715 = metadata !{i32 949, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !1, metadata !717, i32 949, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!717 = metadata !{i32 786443, metadata !1, metadata !242, i32 948, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!718 = metadata !{i32 944, i32 0, metadata !719, null}
!719 = metadata !{i32 786443, metadata !1, metadata !242, i32 943, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!720 = metadata !{i32 946, i32 0, metadata !719, null}
!721 = metadata !{i32 951, i32 0, metadata !722, null}
!722 = metadata !{i32 786443, metadata !1, metadata !716, i32 950, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!723 = metadata !{i32 956, i32 0, metadata !717, null}
!724 = metadata !{i32 958, i32 0, metadata !725, null}
!725 = metadata !{i32 786443, metadata !1, metadata !717, i32 957, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!726 = metadata !{i32 961, i32 0, metadata !725, null}
!727 = metadata !{i32 962, i32 0, metadata !725, null}
!728 = metadata !{i32 965, i32 0, metadata !242, null}
!729 = metadata !{i32 969, i32 0, metadata !251, null}
!730 = metadata !{i32 971, i32 0, metadata !251, null}
!731 = metadata !{i32 972, i32 0, metadata !251, null}
!732 = metadata !{i32 973, i32 0, metadata !251, null}
!733 = metadata !{i32 974, i32 0, metadata !251, null}
!734 = metadata !{i32 975, i32 0, metadata !251, null}
!735 = metadata !{i32 1034, i32 0, metadata !262, null}
!736 = metadata !{i32 1035, i32 0, metadata !262, null}
!737 = metadata !{i32 1036, i32 0, metadata !262, null}
!738 = metadata !{i32 1037, i32 0, metadata !262, null}
!739 = metadata !{i32 1038, i32 0, metadata !262, null}
!740 = metadata !{i32 1039, i32 0, metadata !262, null}
!741 = metadata !{i32 1042, i32 0, metadata !262, null}
!742 = metadata !{i32 1045, i32 0, metadata !262, null}
!743 = metadata !{i32 1048, i32 0, metadata !262, null}
!744 = metadata !{i32 1050, i32 0, metadata !745, null}
!745 = metadata !{i32 786443, metadata !1, metadata !262, i32 1049, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!746 = metadata !{i32 1052, i32 0, metadata !745, null}
!747 = metadata !{i32 1053, i32 0, metadata !745, null}
!748 = metadata !{i32 1054, i32 0, metadata !262, null}
!749 = metadata !{i32 1056, i32 0, metadata !750, null}
!750 = metadata !{i32 786443, metadata !1, metadata !262, i32 1055, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!751 = metadata !{i32 1058, i32 0, metadata !750, null}
!752 = metadata !{i32 1059, i32 0, metadata !750, null}
!753 = metadata !{i32 1060, i32 0, metadata !262, null}
!754 = metadata !{i32 1062, i32 0, metadata !755, null}
!755 = metadata !{i32 786443, metadata !1, metadata !262, i32 1061, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!756 = metadata !{i32 1064, i32 0, metadata !755, null}
!757 = metadata !{i32 1065, i32 0, metadata !755, null}
!758 = metadata !{i32 1069, i32 0, metadata !759, null}
!759 = metadata !{i32 786443, metadata !1, metadata !262, i32 1067, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!760 = metadata !{i32 1070, i32 0, metadata !759, null}
!761 = metadata !{i32 1072, i32 0, metadata !762, null}
!762 = metadata !{i32 786443, metadata !1, metadata !759, i32 1071, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!763 = metadata !{i32 1074, i32 0, metadata !762, null}
!764 = metadata !{i32 1075, i32 0, metadata !762, null}
!765 = metadata !{i32 1078, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !759, i32 1077, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!767 = metadata !{i32 1085, i32 0, metadata !768, null}
!768 = metadata !{i32 786443, metadata !1, metadata !769, i32 1085, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!769 = metadata !{i32 786443, metadata !1, metadata !766, i32 1083, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!770 = metadata !{i32 1087, i32 0, metadata !771, null}
!771 = metadata !{i32 786443, metadata !1, metadata !768, i32 1086, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!772 = metadata !{i32 1089, i32 0, metadata !773, null}
!773 = metadata !{i32 786443, metadata !1, metadata !771, i32 1088, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!774 = metadata !{i32 1093, i32 0, metadata !769, null}
!775 = metadata !{i32 1095, i32 0, metadata !776, null}
!776 = metadata !{i32 786443, metadata !1, metadata !769, i32 1094, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!777 = metadata !{i32 1098, i32 0, metadata !776, null}
!778 = metadata !{i32 1101, i32 0, metadata !766, null}
!779 = metadata !{i32 1080, i32 0, metadata !780, null}
!780 = metadata !{i32 786443, metadata !1, metadata !766, i32 1079, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!781 = metadata !{i32 1103, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !1, metadata !766, i32 1102, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!783 = metadata !{i32 1104, i32 0, metadata !784, null}
!784 = metadata !{i32 786443, metadata !1, metadata !782, i32 1104, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!785 = metadata !{i32 1114, i32 0, metadata !786, null}
!786 = metadata !{i32 786443, metadata !1, metadata !784, i32 1105, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!787 = metadata !{i32 1116, i32 0, metadata !788, null}
!788 = metadata !{i32 786443, metadata !1, metadata !786, i32 1115, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!789 = metadata !{i32 1117, i32 0, metadata !788, null}
!790 = metadata !{i32 1118, i32 0, metadata !788, null}
!791 = metadata !{i32 1123, i32 0, metadata !788, null}
!792 = metadata !{i32 1125, i32 0, metadata !782, null}
!793 = metadata !{i32 -6}
!794 = metadata !{i32 1127, i32 0, metadata !795, null}
!795 = metadata !{i32 786443, metadata !1, metadata !782, i32 1126, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!796 = metadata !{i32 1133, i32 0, metadata !262, null}
!797 = metadata !{i32 1137, i32 0, metadata !280, null}
!798 = metadata !{i32 1138, i32 0, metadata !280, null}
!799 = metadata !{i32 1139, i32 0, metadata !280, null}
!800 = metadata !{i32 1140, i32 0, metadata !280, null}
!801 = metadata !{i32 1141, i32 0, metadata !280, null}
!802 = metadata !{i32 1142, i32 0, metadata !280, null}
!803 = metadata !{i32 1144, i32 0, metadata !280, null}
!804 = metadata !{i32 1145, i32 0, metadata !280, null}
!805 = metadata !{i32 1146, i32 0, metadata !280, null}
!806 = metadata !{i32 1147, i32 0, metadata !280, null}
!807 = metadata !{i32 1148, i32 0, metadata !280, null}
!808 = metadata !{i32 1207, i32 0, metadata !295, null}
!809 = metadata !{i32 1208, i32 0, metadata !295, null}
!810 = metadata !{i32 1209, i32 0, metadata !295, null}
!811 = metadata !{i32 1210, i32 0, metadata !295, null}
!812 = metadata !{i32 1211, i32 0, metadata !295, null}
!813 = metadata !{i32 1212, i32 0, metadata !295, null}
!814 = metadata !{i32 1215, i32 0, metadata !295, null}
!815 = metadata !{i32 1217, i32 0, metadata !295, null}
!816 = metadata !{i32 1221, i32 0, metadata !295, null}
!817 = metadata !{i32 1223, i32 0, metadata !818, null}
!818 = metadata !{i32 786443, metadata !1, metadata !295, i32 1222, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!819 = metadata !{i32 1226, i32 0, metadata !818, null}
!820 = metadata !{i32 1227, i32 0, metadata !818, null}
!821 = metadata !{i32 1228, i32 0, metadata !295, null}
!822 = metadata !{i32 1230, i32 0, metadata !823, null}
!823 = metadata !{i32 786443, metadata !1, metadata !295, i32 1229, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!824 = metadata !{i32 1232, i32 0, metadata !823, null}
!825 = metadata !{i32 1233, i32 0, metadata !823, null}
!826 = metadata !{i32 1234, i32 0, metadata !295, null}
!827 = metadata !{i32 1236, i32 0, metadata !828, null}
!828 = metadata !{i32 786443, metadata !1, metadata !295, i32 1235, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!829 = metadata !{i32 1238, i32 0, metadata !828, null}
!830 = metadata !{i32 1239, i32 0, metadata !828, null}
!831 = metadata !{i32 1243, i32 0, metadata !832, null}
!832 = metadata !{i32 786443, metadata !1, metadata !295, i32 1241, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!833 = metadata !{i32 1244, i32 0, metadata !832, null}
!834 = metadata !{i32 1246, i32 0, metadata !835, null}
!835 = metadata !{i32 786443, metadata !1, metadata !832, i32 1245, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!836 = metadata !{i32 1248, i32 0, metadata !835, null}
!837 = metadata !{i32 1249, i32 0, metadata !835, null}
!838 = metadata !{i32 1252, i32 0, metadata !839, null}
!839 = metadata !{i32 786443, metadata !1, metadata !832, i32 1251, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!840 = metadata !{i32 1259, i32 0, metadata !841, null}
!841 = metadata !{i32 786443, metadata !1, metadata !842, i32 1259, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!842 = metadata !{i32 786443, metadata !1, metadata !839, i32 1257, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!843 = metadata !{i32 1261, i32 0, metadata !844, null}
!844 = metadata !{i32 786443, metadata !1, metadata !841, i32 1260, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!845 = metadata !{i32 1263, i32 0, metadata !846, null}
!846 = metadata !{i32 786443, metadata !1, metadata !844, i32 1262, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!847 = metadata !{i32 1267, i32 0, metadata !842, null}
!848 = metadata !{i32 1269, i32 0, metadata !849, null}
!849 = metadata !{i32 786443, metadata !1, metadata !842, i32 1268, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!850 = metadata !{i32 1272, i32 0, metadata !849, null}
!851 = metadata !{i32 1275, i32 0, metadata !839, null}
!852 = metadata !{i32 1254, i32 0, metadata !853, null}
!853 = metadata !{i32 786443, metadata !1, metadata !839, i32 1253, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!854 = metadata !{i32 1277, i32 0, metadata !855, null}
!855 = metadata !{i32 786443, metadata !1, metadata !856, i32 1277, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!856 = metadata !{i32 786443, metadata !1, metadata !839, i32 1276, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!857 = metadata !{i32 1287, i32 0, metadata !858, null}
!858 = metadata !{i32 786443, metadata !1, metadata !855, i32 1278, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!859 = metadata !{i32 1293, i32 0, metadata !860, null}
!860 = metadata !{i32 786443, metadata !1, metadata !858, i32 1288, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!861 = metadata !{i32 1294, i32 0, metadata !860, null}
!862 = metadata !{i32 1300, i32 0, metadata !863, null}
!863 = metadata !{i32 786443, metadata !1, metadata !856, i32 1299, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!864 = metadata !{i32 1304, i32 0, metadata !863, null}
!865 = metadata !{i32 1305, i32 0, metadata !863, null}
!866 = metadata !{i32 1310, i32 0, metadata !295, null}
!867 = metadata !{i32 1314, i32 0, metadata !310, null}
!868 = metadata !{i32 1315, i32 0, metadata !310, null}
!869 = metadata !{i32 1316, i32 0, metadata !310, null}
!870 = metadata !{i32 1317, i32 0, metadata !310, null}
!871 = metadata !{i32 1318, i32 0, metadata !310, null}
!872 = metadata !{i32 1319, i32 0, metadata !310, null}
!873 = metadata !{i32 1321, i32 0, metadata !310, null}
!874 = metadata !{i32 1322, i32 0, metadata !310, null}
!875 = metadata !{i32 1323, i32 0, metadata !310, null}
!876 = metadata !{i32 1324, i32 0, metadata !310, null}
!877 = metadata !{i32 1325, i32 0, metadata !310, null}
!878 = metadata !{i32 1351, i32 0, metadata !325, null}
!879 = metadata !{i32 1352, i32 0, metadata !325, null}
!880 = metadata !{i32 1353, i32 0, metadata !325, null}
!881 = metadata !{i32 1354, i32 0, metadata !325, null}
!882 = metadata !{i32 1355, i32 0, metadata !325, null}
!883 = metadata !{i32 1356, i32 0, metadata !325, null}
!884 = metadata !{i32 1360, i32 0, metadata !325, null}
!885 = metadata !{i32 1361, i32 0, metadata !325, null}
!886 = metadata !{i32 1364, i32 0, metadata !325, null}
!887 = metadata !{i32 1366, i32 0, metadata !325, null}
!888 = metadata !{i32 1368, i32 0, metadata !889, null}
!889 = metadata !{i32 786443, metadata !1, metadata !325, i32 1367, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!890 = metadata !{i32 1374, i32 0, metadata !891, null}
!891 = metadata !{i32 786443, metadata !1, metadata !889, i32 1373, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!892 = metadata !{i32 1376, i32 0, metadata !889, null}
!893 = metadata !{i32 1378, i32 0, metadata !889, null}
!894 = metadata !{i32 1380, i32 0, metadata !889, null}
!895 = metadata !{i32 1383, i32 0, metadata !896, null}
!896 = metadata !{i32 786443, metadata !1, metadata !325, i32 1382, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!897 = metadata !{i32 1391, i32 0, metadata !325, null}
!898 = metadata !{i32 1395, i32 0, metadata !337, null}
!899 = metadata !{i32 1396, i32 0, metadata !337, null}
!900 = metadata !{i32 1397, i32 0, metadata !337, null}
!901 = metadata !{i32 1398, i32 0, metadata !337, null}
!902 = metadata !{i32 1399, i32 0, metadata !337, null}
!903 = metadata !{i32 1400, i32 0, metadata !337, null}
!904 = metadata !{i32 1402, i32 0, metadata !337, null}
!905 = metadata !{i32 1403, i32 0, metadata !337, null}
!906 = metadata !{i32 1404, i32 0, metadata !337, null}
!907 = metadata !{i32 1405, i32 0, metadata !337, null}
!908 = metadata !{i32 1406, i32 0, metadata !337, null}
!909 = metadata !{i32 1424, i32 0, metadata !350, null}
!910 = metadata !{i32 1447, i32 0, metadata !353, null}
!911 = metadata !{i32 1452, i32 0, metadata !353, null}
!912 = metadata !{i32 1454, i32 0, metadata !353, null}
!913 = metadata !{i32 1484, i32 0, metadata !357, null}
!914 = metadata !{i32 1486, i32 0, metadata !357, null}
!915 = metadata !{i32 1489, i32 0, metadata !357, null}
!916 = metadata !{i32 1490, i32 0, metadata !357, null}
!917 = metadata !{i32 1492, i32 0, metadata !918, null}
!918 = metadata !{i32 786443, metadata !1, metadata !357, i32 1491, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!919 = metadata !{i8* null}
!920 = metadata !{i32 1494, i32 0, metadata !918, null}
!921 = metadata !{i32 1495, i32 0, metadata !918, null}
!922 = metadata !{i32 1498, i32 0, metadata !923, null}
!923 = metadata !{i32 786443, metadata !1, metadata !357, i32 1497, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Coord.c]
!924 = metadata !{i32 1501, i32 0, metadata !357, null}
