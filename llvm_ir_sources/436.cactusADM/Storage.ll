; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [74 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [20 x i8] c"Wrong value for dir\00", align 1
@_cctk_one = external global i32
@.str3 = private unnamed_addr constant [45 x i8] c"PUGH_ArrayGroupSize: Invalid group name '%s'\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"PUGH_ArrayGroupSize: Invalid group ID %d\00", align 1
@.str5 = private unnamed_addr constant [45 x i8] c"Unknown group type in PUGH_QueryGroupStorage\00", align 1
@.str6 = private unnamed_addr constant [40 x i8] c"Inconsistency in PUGH_QueryGroupStorage\00", align 1
@pughpriv_ = external global %struct.anon.0
@.str7 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@totalnumberGF = internal unnamed_addr global i32 0, align 4
@totalnumberGA = internal unnamed_addr global i32 0, align 4
@totalstorage = internal unnamed_addr global float 0.000000e+00, align 4
@maxstorage = internal unnamed_addr global float 0.000000e+00, align 4
@numberGF = internal unnamed_addr global i32 0, align 4
@numberGA = internal unnamed_addr global i32 0, align 4
@.str8 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str9 = private unnamed_addr constant [73 x i8] c"Switched memory on for group '%s'  [GFs: %d GAs: %d Total Size: %6.2fMB]\00", align 1
@.str10 = private unnamed_addr constant [44 x i8] c"PUGH_EnableGroupStorage: Unknown group type\00", align 1
@.str11 = private unnamed_addr constant [64 x i8] c"PUGH_EnableGroupStorage: Error with cctkGH pointer for group %s\00", align 1
@.str12 = private unnamed_addr constant [42 x i8] c"PUGH_EnableGroupStorage: Invalid group %s\00", align 1
@.str13 = private unnamed_addr constant [47 x i8] c"Unknown group type in PUGH_DisableGroupStorage\00", align 1
@.str14 = private unnamed_addr constant [74 x i8] c"Switched memory off for group '%s'  [GFs: %d GAs: %d Total Size: %6.2fMB]\00", align 1
@.str15 = private unnamed_addr constant [34 x i8] c"Memory already off for group '%s'\00", align 1
@.str16 = private unnamed_addr constant [67 x i8] c"PUGH_DisableGroupStorage: Inconsistency in group memory assignment\00", align 1
@.str17 = private unnamed_addr constant [85 x i8] c"PUGH_EnableGArrayDataStorage: Tried to allocate storage for zero-sized variable '%s'\00", align 1
@.str18 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str19 = private unnamed_addr constant [65 x i8] c"PUGH_EnableGArrayDataStorage: Cannot allocate data for '%s' [%d]\00", align 1
@.str20 = private unnamed_addr constant [19 x i8] c"Storage statistics\00", align 1
@.str21 = private unnamed_addr constant [27 x i8] c"  Maximum storage: %6.2fMB\00", align 1
@.str22 = private unnamed_addr constant [38 x i8] c"  [%d Grid Functions, %d Grid Arrays]\00", align 1
@.str23 = private unnamed_addr constant [87 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/Storage.c,v 1.23 2001/11/06 11:19:35 tradke Exp $\00", align 1
@.str24 = private unnamed_addr constant [57 x i8] c"Group storage violation in PUGH_EnableGArrayGroupStorage\00", align 1
@.str25 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str26 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str27 = private unnamed_addr constant [19 x i8] c"CCTK_VARIABLE_REAL\00", align 1
@.str28 = private unnamed_addr constant [22 x i8] c"CCTK_VARIABLE_COMPLEX\00", align 1
@.str29 = private unnamed_addr constant [73 x i8] c"InitializeMemory: Unknown keyword '%s' for parameter 'initialize_memory'\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_Storage_c() #0 {
  ret i8* getelementptr inbounds ([87 x i8]* @.str23, i64 0, i64 0), !dbg !538
}

; Function Attrs: nounwind optsize ssp uwtable
define i32* @PUGH_ArrayGroupSize(%struct.cGH* %GH, i32 %dir, i32 %group, i8* %groupname) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !130, metadata !539), !dbg !540
  tail call void @llvm.dbg.value(metadata i32 %dir, i64 0, metadata !131, metadata !539), !dbg !541
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !132, metadata !539), !dbg !542
  tail call void @llvm.dbg.value(metadata i8* %groupname, i64 0, metadata !133, metadata !539), !dbg !543
  %1 = icmp ne i8* %groupname, null, !dbg !544
  br i1 %1, label %2, label %4, !dbg !546

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #7, !dbg !547
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !132, metadata !539), !dbg !542
  br label %4, !dbg !549

; <label>:4                                       ; preds = %2, %0
  %.0 = phi i32 [ %3, %2 ], [ %group, %0 ]
  %5 = tail call i32 @CCTK_FirstVarIndexI(i32 %.0) #7, !dbg !550
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !134, metadata !539), !dbg !551
  %6 = icmp sgt i32 %5, -1, !dbg !552
  br i1 %6, label %7, label %34, !dbg !554

; <label>:7                                       ; preds = %4
  %8 = sext i32 %5 to i64, !dbg !555
  %9 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7, !dbg !555
  %10 = getelementptr inbounds %struct.PGH* %9, i64 0, i32 7, !dbg !557
  %11 = load i8**** %10, align 8, !dbg !557, !tbaa !558
  %12 = getelementptr inbounds i8*** %11, i64 %8, !dbg !555
  %13 = bitcast i8*** %12 to %struct.PGA***, !dbg !555
  %14 = load %struct.PGA*** %13, align 8, !dbg !555, !tbaa !565
  %15 = load %struct.PGA** %14, align 8, !dbg !555, !tbaa !565
  tail call void @llvm.dbg.value(metadata %struct.PGA* %15, i64 0, metadata !135, metadata !539), !dbg !566
  %16 = getelementptr inbounds %struct.PGA* %15, i64 0, i32 5, !dbg !567
  %17 = load i32* %16, align 4, !dbg !567, !tbaa !569
  %18 = icmp eq i32 %17, 1, !dbg !571
  br i1 %18, label %19, label %39, !dbg !572

; <label>:19                                      ; preds = %7
  %20 = icmp sgt i32 %dir, -1, !dbg !573
  br i1 %20, label %21, label %32, !dbg !576

; <label>:21                                      ; preds = %19
  %22 = getelementptr inbounds %struct.PGA* %15, i64 0, i32 10, !dbg !577
  %23 = load %struct.PGExtras** %22, align 8, !dbg !577, !tbaa !578
  %24 = getelementptr inbounds %struct.PGExtras* %23, i64 0, i32 0, !dbg !579
  %25 = load i32* %24, align 4, !dbg !579, !tbaa !580
  %26 = icmp sgt i32 %25, %dir, !dbg !582
  br i1 %26, label %27, label %32, !dbg !583

; <label>:27                                      ; preds = %21
  %28 = sext i32 %dir to i64, !dbg !584
  %29 = getelementptr inbounds %struct.PGExtras* %23, i64 0, i32 6, !dbg !586
  %30 = load i32** %29, align 8, !dbg !586, !tbaa !587
  %31 = getelementptr inbounds i32* %30, i64 %28, !dbg !584
  tail call void @llvm.dbg.value(metadata i32* %31, i64 0, metadata !136, metadata !539), !dbg !588
  br label %39, !dbg !589

; <label>:32                                      ; preds = %21, %19
  %33 = tail call i32 @CCTK_Warn(i32 1, i32 131, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !590
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !136, metadata !539), !dbg !588
  br label %39

; <label>:34                                      ; preds = %4
  br i1 %1, label %35, label %37, !dbg !592

; <label>:35                                      ; preds = %34
  %36 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 144, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0), i8* %groupname) #7, !dbg !594
  br label %39, !dbg !597

; <label>:37                                      ; preds = %34
  %38 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 150, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), i32 %.0) #7, !dbg !598
  br label %39

; <label>:39                                      ; preds = %35, %37, %7, %32, %27
  %retval.0 = phi i32* [ %31, %27 ], [ null, %32 ], [ @_cctk_one, %7 ], [ null, %37 ], [ null, %35 ]
  ret i32* %retval.0, !dbg !600
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #2

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_QueryGroupStorage(%struct.cGH* %GH, i32 %group, i8* %groupname) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !141, metadata !539), !dbg !601
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !142, metadata !539), !dbg !602
  tail call void @llvm.dbg.value(metadata i8* %groupname, i64 0, metadata !143, metadata !539), !dbg !603
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !148, metadata !539), !dbg !604
  %1 = icmp ne i8* %groupname, null, !dbg !605
  br i1 %1, label %2, label %4, !dbg !607

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #7, !dbg !608
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !142, metadata !539), !dbg !602
  br label %4, !dbg !610

; <label>:4                                       ; preds = %2, %0
  %.0 = phi i32 [ %3, %2 ], [ %group, %0 ]
  %5 = tail call i32 @CCTK_FirstVarIndexI(i32 %.0) #7, !dbg !611
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !144, metadata !539), !dbg !612
  %6 = icmp sgt i32 %5, -1, !dbg !613
  br i1 %6, label %7, label %42, !dbg !615

; <label>:7                                       ; preds = %4
  %8 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7, !dbg !616
  tail call void @llvm.dbg.value(metadata %struct.PGH* %8, i64 0, metadata !149, metadata !539), !dbg !618
  %9 = tail call i32 @CCTK_GroupTypeI(i32 %.0) #7, !dbg !619
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !146, metadata !539), !dbg !620
  %10 = icmp eq i32 %9, 1, !dbg !621
  br i1 %10, label %11, label %24, !dbg !623

; <label>:11                                      ; preds = %7
  %12 = tail call i32 @CCTK_VarTypeI(i32 %5) #7, !dbg !624
  %13 = tail call i32 @CCTK_VarTypeSize(i32 %12) #7, !dbg !626
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !147, metadata !539), !dbg !627
  %14 = sext i32 %13 to i64, !dbg !628
  %15 = sext i32 %5 to i64, !dbg !629
  %16 = getelementptr inbounds %struct.PGH* %8, i64 0, i32 7, !dbg !630
  %17 = load i8**** %16, align 8, !dbg !630, !tbaa !558
  %18 = getelementptr inbounds i8*** %17, i64 %15, !dbg !629
  %19 = load i8*** %18, align 8, !dbg !629, !tbaa !565
  %20 = load i8** %19, align 8, !dbg !629, !tbaa !565
  %21 = getelementptr inbounds i8* %20, i64 %14, !dbg !628
  %22 = load i8* %21, align 1, !dbg !628, !tbaa !631
  %23 = sext i8 %22 to i32, !dbg !628
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !145, metadata !539), !dbg !632
  br label %38, !dbg !633

; <label>:24                                      ; preds = %7
  %25 = and i32 %9, -2, !dbg !634
  %26 = icmp eq i32 %25, 2, !dbg !634
  br i1 %26, label %27, label %.thread, !dbg !634

; <label>:27                                      ; preds = %24
  %28 = sext i32 %5 to i64, !dbg !636
  %29 = getelementptr inbounds %struct.PGH* %8, i64 0, i32 7, !dbg !638
  %30 = load i8**** %29, align 8, !dbg !638, !tbaa !558
  %31 = getelementptr inbounds i8*** %30, i64 %28, !dbg !636
  %32 = bitcast i8*** %31 to %struct.PGA***, !dbg !636
  %33 = load %struct.PGA*** %32, align 8, !dbg !636, !tbaa !565
  %34 = load %struct.PGA** %33, align 8, !dbg !636, !tbaa !565
  %35 = getelementptr inbounds %struct.PGA* %34, i64 0, i32 5, !dbg !639
  %36 = load i32* %35, align 4, !dbg !639, !tbaa !569
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !145, metadata !539), !dbg !632
  br label %38, !dbg !640

.thread:                                          ; preds = %24
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !145, metadata !539), !dbg !632
  %37 = tail call i32 @CCTK_Warn(i32 1, i32 233, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !641
  br label %40, !dbg !643

; <label>:38                                      ; preds = %27, %11
  %storage.0 = phi i32 [ %23, %11 ], [ %36, %27 ]
  switch i32 %storage.0, label %40 [
    i32 1, label %47
    i32 0, label %39
  ], !dbg !643

; <label>:39                                      ; preds = %38
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !148, metadata !539), !dbg !604
  br label %47, !dbg !644

; <label>:40                                      ; preds = %.thread, %38
  %41 = tail call i32 @CCTK_Warn(i32 1, i32 246, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !648
  br label %47

; <label>:42                                      ; preds = %4
  br i1 %1, label %43, label %45, !dbg !650

; <label>:43                                      ; preds = %42
  %44 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 253, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0), i8* %groupname) #7, !dbg !652
  br label %47, !dbg !655

; <label>:45                                      ; preds = %42
  %46 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 259, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), i32 %.0) #7, !dbg !656
  br label %47

; <label>:47                                      ; preds = %38, %43, %45, %40, %39
  %retval.0 = phi i32 [ 0, %39 ], [ -1, %40 ], [ -1, %43 ], [ -1, %45 ], [ 1, %38 ]
  ret i32 %retval.0, !dbg !658
}

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_EnableGroupStorage(%struct.cGH* %GH, i8* %groupname) #1 {
  %pgroup = alloca %struct.cGroup, align 4
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !185, metadata !539), !dbg !659
  tail call void @llvm.dbg.value(metadata i8* %groupname, i64 0, metadata !186, metadata !539), !dbg !660
  %1 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 10), align 8, !dbg !661, !tbaa !662
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !209, metadata !539), !dbg !661
  %2 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7, !dbg !664
  tail call void @llvm.dbg.value(metadata %struct.PGH* %2, i64 0, metadata !269, metadata !539), !dbg !665
  %3 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #7, !dbg !666
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !252, metadata !539), !dbg !667
  %4 = icmp ne %struct.PGH* %2, null, !dbg !668
  %5 = icmp sgt i32 %3, -1, !dbg !670
  %or.cond = and i1 %4, %5, !dbg !671
  br i1 %or.cond, label %6, label %155, !dbg !671

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @CCTK_FirstVarIndexI(i32 %3) #7, !dbg !672
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !253, metadata !539), !dbg !674
  tail call void @llvm.dbg.value(metadata %struct.cGroup* %pgroup, i64 0, metadata !254, metadata !539), !dbg !675
  %8 = call i32 @CCTK_GroupData(i32 %3, %struct.cGroup* %pgroup) #7, !dbg !676
  %9 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0, !dbg !677
  %10 = load i32* %9, align 4, !dbg !677, !tbaa !679
  switch i32 %10, label %153 [
    i32 1, label %11
    i32 2, label %46
    i32 3, label %46
  ], !dbg !681

; <label>:11                                      ; preds = %6
  %12 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !682
  %13 = load i32* %12, align 4, !dbg !682, !tbaa !684
  %14 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6, !dbg !685
  %15 = load i32* %14, align 4, !dbg !685, !tbaa !686
  call void @llvm.dbg.value(metadata %struct.PGH* %2, i64 0, metadata !371, metadata !539) #6, !dbg !687
  call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !372, metadata !539) #6, !dbg !689
  call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !373, metadata !539) #6, !dbg !690
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !374, metadata !539) #6, !dbg !691
  %16 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 1), align 8, !dbg !692, !tbaa !693
  call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !388, metadata !539) #6, !dbg !692
  %17 = call i32 @CCTK_VarTypeI(i32 %7) #7, !dbg !694
  call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !437, metadata !539) #6, !dbg !695
  %18 = call i32 @CCTK_VarTypeSize(i32 %17) #7, !dbg !696
  call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !438, metadata !539) #6, !dbg !697
  %19 = sext i32 %7 to i64, !dbg !698
  %20 = getelementptr inbounds %struct.PGH* %2, i64 0, i32 7, !dbg !699
  %21 = load i8**** %20, align 8, !dbg !699, !tbaa !558
  %22 = getelementptr inbounds i8*** %21, i64 %19, !dbg !698
  %23 = load i8*** %22, align 8, !dbg !698, !tbaa !565
  %24 = load i8** %23, align 8, !dbg !698, !tbaa !565
  call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !442, metadata !539) #6, !dbg !700
  %25 = sext i32 %18 to i64, !dbg !701
  %26 = getelementptr inbounds i8* %24, i64 %25, !dbg !701
  %27 = load i8* %26, align 1, !dbg !701, !tbaa !631
  %28 = icmp eq i8 %27, 1, !dbg !702
  %29 = zext i1 %28 to i32, !dbg !702
  call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !441, metadata !539) #6, !dbg !703
  %.not.i = xor i1 %28, true, !dbg !704
  %30 = icmp sgt i32 %13, 0, !dbg !705
  %or.cond.i = and i1 %30, %.not.i, !dbg !704
  br i1 %or.cond.i, label %.preheader.lr.ph.i, label %PUGH_EnableScalarGroupStorage.exit, !dbg !704

.preheader.lr.ph.i:                               ; preds = %11
  %31 = icmp sgt i32 %15, 0, !dbg !710
  %32 = add i32 %15, -1, !dbg !714
  %33 = add i32 %13, -1, !dbg !714
  br label %.preheader.i, !dbg !714

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %indvars.iv4.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next5.i, %._crit_edge.i ], !dbg !715
  br i1 %31, label %.lr.ph.i, label %._crit_edge.i, !dbg !716

.lr.ph.i:                                         ; preds = %.preheader.i
  %34 = add nsw i64 %indvars.iv4.i, %19, !dbg !717
  br label %35, !dbg !716

; <label>:35                                      ; preds = %45, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %45 ], !dbg !715
  %36 = load i8**** %20, align 8, !dbg !719, !tbaa !558
  %37 = getelementptr inbounds i8*** %36, i64 %34, !dbg !720
  %38 = load i8*** %37, align 8, !dbg !720, !tbaa !565
  %39 = getelementptr inbounds i8** %38, i64 %indvars.iv.i, !dbg !720
  %40 = load i8** %39, align 8, !dbg !720, !tbaa !565
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !442, metadata !539) #6, !dbg !700
  %41 = getelementptr inbounds i8* %40, i64 %25, !dbg !721
  store i8 1, i8* %41, align 1, !dbg !722, !tbaa !631
  %42 = call i32 @CCTK_Equals(i8* %16, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !723
  %43 = icmp eq i32 %42, 0, !dbg !723
  br i1 %43, label %44, label %45, !dbg !725

; <label>:44                                      ; preds = %35
  call fastcc void @PUGH_InitializeMemory(i8* %16, i32 %17, i32 %18, i8* %40) #7, !dbg !726
  br label %45, !dbg !728

; <label>:45                                      ; preds = %44, %35
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !716
  %lftr.wideiv = trunc i64 %indvars.iv.i to i32, !dbg !716
  %exitcond = icmp eq i32 %lftr.wideiv, %32, !dbg !716
  br i1 %exitcond, label %._crit_edge.i, label %35, !dbg !716

._crit_edge.i:                                    ; preds = %45, %.preheader.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1, !dbg !714
  %lftr.wideiv13 = trunc i64 %indvars.iv4.i to i32, !dbg !714
  %exitcond14 = icmp eq i32 %lftr.wideiv13, %33, !dbg !714
  br i1 %exitcond14, label %PUGH_EnableScalarGroupStorage.exit, label %.preheader.i, !dbg !714

; <label>:46                                      ; preds = %6, %6
  %47 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !729
  %48 = load i32* %47, align 4, !dbg !729, !tbaa !684
  %49 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6, !dbg !732
  %50 = load i32* %49, align 4, !dbg !732, !tbaa !686
  call void @llvm.dbg.value(metadata %struct.PGH* %2, i64 0, metadata !445, metadata !539) #6, !dbg !733
  call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !446, metadata !539) #6, !dbg !735
  call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !447, metadata !539) #6, !dbg !736
  call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !448, metadata !539) #6, !dbg !737
  %51 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 1), align 8, !dbg !738, !tbaa !693
  call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !462, metadata !539) #6, !dbg !738
  %52 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 32), align 4, !dbg !738, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !493, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !512, metadata !539) #6, !dbg !740
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !511, metadata !539) #6, !dbg !741
  call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !514, metadata !539) #6, !dbg !742
  %53 = icmp sgt i32 %48, 0, !dbg !743
  br i1 %53, label %.preheader.lr.ph.i4, label %._crit_edge9.thread.i, !dbg !746

.preheader.lr.ph.i4:                              ; preds = %46
  %54 = add nsw i32 %48, %7, !dbg !747
  %55 = icmp sgt i32 %50, 0, !dbg !748
  %56 = getelementptr inbounds %struct.PGH* %2, i64 0, i32 7, !dbg !752
  %57 = bitcast %struct.PGH* %2 to %struct.cGH**, !dbg !754
  %58 = add i32 %50, -1, !dbg !746
  %59 = sext i32 %7 to i64, !dbg !757
  %60 = sext i32 %54 to i64, !dbg !746
  br label %.preheader.i5, !dbg !746

.preheader.i5:                                    ; preds = %._crit_edge.i11, %.preheader.lr.ph.i4
  %indvars.iv12.i = phi i64 [ %59, %.preheader.lr.ph.i4 ], [ %indvars.iv.next13.i, %._crit_edge.i11 ], !dbg !757
  %nstorage.08.i = phi i32 [ 0, %.preheader.lr.ph.i4 ], [ %nstorage.1.lcssa.i, %._crit_edge.i11 ], !dbg !757
  %nnostorage.06.i = phi i32 [ 0, %.preheader.lr.ph.i4 ], [ %nnostorage.1.lcssa.i, %._crit_edge.i11 ], !dbg !757
  br i1 %55, label %.lr.ph.i7, label %._crit_edge.i11, !dbg !758

.lr.ph.i7:                                        ; preds = %.preheader.i5, %95
  %indvars.iv.i6 = phi i64 [ %indvars.iv.next.i8, %95 ], [ 0, %.preheader.i5 ], !dbg !757
  %nstorage.13.i = phi i32 [ %nstorage.2.i, %95 ], [ %nstorage.08.i, %.preheader.i5 ], !dbg !757
  %nnostorage.12.i = phi i32 [ %nnostorage.2.i, %95 ], [ %nnostorage.06.i, %.preheader.i5 ], !dbg !757
  %61 = load i8**** %56, align 8, !dbg !752, !tbaa !558
  %62 = getelementptr inbounds i8*** %61, i64 %indvars.iv12.i, !dbg !759
  %63 = load i8*** %62, align 8, !dbg !759, !tbaa !565
  %64 = getelementptr inbounds i8** %63, i64 %indvars.iv.i6, !dbg !759
  %65 = bitcast i8** %64 to %struct.PGA**, !dbg !759
  %66 = load %struct.PGA** %65, align 8, !dbg !759, !tbaa !565
  call void @llvm.dbg.value(metadata %struct.PGA* %66, i64 0, metadata !515, metadata !539) #6, !dbg !760
  %67 = getelementptr inbounds %struct.PGA* %66, i64 0, i32 5, !dbg !761
  %68 = load i32* %67, align 4, !dbg !761, !tbaa !569
  %69 = icmp eq i32 %68, 0, !dbg !762
  br i1 %69, label %70, label %83, !dbg !763

; <label>:70                                      ; preds = %.lr.ph.i7
  %71 = call i32 @PUGH_EnableGArrayDataStorage(%struct.PGA* %66, i32 undef, i8* %51, i32 %52, i32 undef, i32 undef, i32 undef) #7, !dbg !764
  %72 = getelementptr inbounds %struct.PGA* %66, i64 0, i32 4, !dbg !765
  %73 = bitcast i8** %72 to i64*, !dbg !765
  %74 = load i64* %73, align 8, !dbg !765, !tbaa !766
  %75 = load %struct.cGH** %57, align 8, !dbg !754, !tbaa !767
  %76 = getelementptr inbounds %struct.cGH* %75, i64 0, i32 17, !dbg !768
  %77 = load i8**** %76, align 8, !dbg !768, !tbaa !769
  %78 = getelementptr inbounds i8*** %77, i64 %indvars.iv12.i, !dbg !771
  %79 = load i8*** %78, align 8, !dbg !771, !tbaa !565
  %80 = getelementptr inbounds i8** %79, i64 %indvars.iv.i6, !dbg !771
  %81 = bitcast i8** %80 to i64*, !dbg !772
  store i64 %74, i64* %81, align 8, !dbg !772, !tbaa !565
  %82 = add nsw i32 %nnostorage.12.i, 1, !dbg !773
  call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !512, metadata !539) #6, !dbg !740
  br label %95, !dbg !774

; <label>:83                                      ; preds = %.lr.ph.i7
  %84 = getelementptr inbounds %struct.PGA* %66, i64 0, i32 4, !dbg !775
  %85 = bitcast i8** %84 to i64*, !dbg !775
  %86 = load i64* %85, align 8, !dbg !775, !tbaa !766
  %87 = load %struct.cGH** %57, align 8, !dbg !777, !tbaa !767
  %88 = getelementptr inbounds %struct.cGH* %87, i64 0, i32 17, !dbg !778
  %89 = load i8**** %88, align 8, !dbg !778, !tbaa !769
  %90 = getelementptr inbounds i8*** %89, i64 %indvars.iv12.i, !dbg !779
  %91 = load i8*** %90, align 8, !dbg !779, !tbaa !565
  %92 = getelementptr inbounds i8** %91, i64 %indvars.iv.i6, !dbg !779
  %93 = bitcast i8** %92 to i64*, !dbg !780
  store i64 %86, i64* %93, align 8, !dbg !780, !tbaa !565
  %94 = add nsw i32 %nstorage.13.i, 1, !dbg !781
  call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !511, metadata !539) #6, !dbg !741
  br label %95, !dbg !757

; <label>:95                                      ; preds = %83, %70
  %nnostorage.2.i = phi i32 [ %nnostorage.12.i, %83 ], [ %82, %70 ], !dbg !757
  %nstorage.2.i = phi i32 [ %94, %83 ], [ %nstorage.13.i, %70 ], !dbg !757
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i6, 1, !dbg !758
  %lftr.wideiv15 = trunc i64 %indvars.iv.i6 to i32, !dbg !758
  %exitcond16 = icmp eq i32 %lftr.wideiv15, %58, !dbg !758
  br i1 %exitcond16, label %._crit_edge.i11, label %.lr.ph.i7, !dbg !758

._crit_edge.i11:                                  ; preds = %95, %.preheader.i5
  %nstorage.1.lcssa.i = phi i32 [ %nstorage.08.i, %.preheader.i5 ], [ %nstorage.2.i, %95 ], !dbg !757
  %nnostorage.1.lcssa.i = phi i32 [ %nnostorage.06.i, %.preheader.i5 ], [ %nnostorage.2.i, %95 ], !dbg !757
  %indvars.iv.next13.i = add nsw i64 %indvars.iv12.i, 1, !dbg !746
  %96 = icmp slt i64 %indvars.iv.next13.i, %60, !dbg !743
  br i1 %96, label %.preheader.i5, label %._crit_edge9.i, !dbg !746

._crit_edge9.i:                                   ; preds = %._crit_edge.i11
  %97 = icmp sgt i32 %nstorage.1.lcssa.i, 0, !dbg !782
  %98 = icmp sgt i32 %nnostorage.1.lcssa.i, 0, !dbg !784
  %or.cond.i12 = and i1 %97, %98, !dbg !785
  br i1 %or.cond.i12, label %99, label %._crit_edge9.thread.i, !dbg !785

; <label>:99                                      ; preds = %._crit_edge9.i
  %100 = call i32 @CCTK_Warn(i32 0, i32 713, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str24, i64 0, i64 0)) #7, !dbg !786
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !513, metadata !539) #6, !dbg !788
  br label %PUGH_EnableGArrayGroupStorage.exit, !dbg !789

._crit_edge9.thread.i:                            ; preds = %._crit_edge9.i, %46
  %101 = phi i1 [ %97, %._crit_edge9.i ], [ false, %46 ], !dbg !757
  %102 = zext i1 %101 to i32, !dbg !790
  call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !513, metadata !539) #6, !dbg !788
  br label %PUGH_EnableGArrayGroupStorage.exit, !dbg !757

PUGH_EnableGArrayGroupStorage.exit:               ; preds = %99, %._crit_edge9.thread.i
  %retval.0.i = phi i32 [ -1, %99 ], [ %102, %._crit_edge9.thread.i ], !dbg !757
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !510, metadata !539) #6, !dbg !738
  call void @llvm.dbg.value(metadata i32 %retval.0.i, i64 0, metadata !267, metadata !539), !dbg !792
  %103 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !793
  %104 = or i32 %103, %retval.0.i, !dbg !795
  %105 = icmp eq i32 %104, 0, !dbg !795
  br i1 %105, label %106, label %PUGH_EnableScalarGroupStorage.exit, !dbg !795

; <label>:106                                     ; preds = %PUGH_EnableGArrayGroupStorage.exit
  %107 = sext i32 %7 to i64, !dbg !796
  %108 = getelementptr inbounds %struct.PGH* %2, i64 0, i32 7, !dbg !798
  %109 = load i8**** %108, align 8, !dbg !798, !tbaa !558
  %110 = getelementptr inbounds i8*** %109, i64 %107, !dbg !796
  %111 = bitcast i8*** %110 to %struct.PGA***, !dbg !796
  %112 = load %struct.PGA*** %111, align 8, !dbg !796, !tbaa !565
  %113 = load %struct.PGA** %112, align 8, !dbg !796, !tbaa !565
  call void @llvm.dbg.value(metadata %struct.PGA* %113, i64 0, metadata !268, metadata !539), !dbg !799
  %114 = load i32* %9, align 4, !dbg !800, !tbaa !679
  %115 = icmp eq i32 %114, 2, !dbg !802
  %116 = load i32* %47, align 4, !dbg !803, !tbaa !684
  %117 = load i32* %49, align 4, !dbg !805, !tbaa !686
  %118 = mul nsw i32 %117, %116, !dbg !806
  br i1 %115, label %119, label %122, !dbg !807

; <label>:119                                     ; preds = %106
  %120 = load i32* @totalnumberGF, align 4, !dbg !808, !tbaa !809
  %121 = add nsw i32 %120, %118, !dbg !808
  store i32 %121, i32* @totalnumberGF, align 4, !dbg !808, !tbaa !809
  br label %125, !dbg !810

; <label>:122                                     ; preds = %106
  %123 = load i32* @totalnumberGA, align 4, !dbg !811, !tbaa !809
  %124 = add nsw i32 %123, %118, !dbg !811
  store i32 %124, i32* @totalnumberGA, align 4, !dbg !811, !tbaa !809
  br label %125

; <label>:125                                     ; preds = %122, %119
  %126 = getelementptr inbounds %struct.PGA* %113, i64 0, i32 10, !dbg !813
  %127 = load %struct.PGExtras** %126, align 8, !dbg !813, !tbaa !578
  %128 = getelementptr inbounds %struct.PGExtras* %127, i64 0, i32 7, !dbg !814
  %129 = load i32* %128, align 4, !dbg !814, !tbaa !815
  %130 = getelementptr inbounds %struct.PGA* %113, i64 0, i32 8, !dbg !816
  %131 = load i32* %130, align 4, !dbg !816, !tbaa !817
  %132 = mul nsw i32 %131, %129, !dbg !818
  %133 = mul nsw i32 %132, %117, !dbg !819
  %134 = mul nsw i32 %133, %116, !dbg !820
  %135 = sitofp i32 %134 to float, !dbg !821
  %136 = fmul float %135, 0x3EB0000000000000, !dbg !822
  %137 = load float* @totalstorage, align 4, !dbg !823, !tbaa !824
  %138 = fadd float %137, %136, !dbg !823
  store float %138, float* @totalstorage, align 4, !dbg !823, !tbaa !824
  %139 = load float* @maxstorage, align 4, !dbg !826, !tbaa !824
  %140 = fcmp ogt float %138, %139, !dbg !828
  br i1 %140, label %141, label %144, !dbg !829

; <label>:141                                     ; preds = %125
  %142 = load i32* @totalnumberGF, align 4, !dbg !830, !tbaa !809
  store i32 %142, i32* @numberGF, align 4, !dbg !832, !tbaa !809
  %143 = load i32* @totalnumberGA, align 4, !dbg !833, !tbaa !809
  store i32 %143, i32* @numberGA, align 4, !dbg !834, !tbaa !809
  store float %138, float* @maxstorage, align 4, !dbg !835, !tbaa !824
  br label %144, !dbg !836

; <label>:144                                     ; preds = %141, %125
  %145 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !837
  %146 = icmp eq i32 %145, 0, !dbg !837
  br i1 %146, label %PUGH_EnableScalarGroupStorage.exit, label %147, !dbg !839

; <label>:147                                     ; preds = %144
  %148 = load i32* @totalnumberGF, align 4, !dbg !840, !tbaa !809
  %149 = load i32* @totalnumberGA, align 4, !dbg !842, !tbaa !809
  %150 = load float* @totalstorage, align 4, !dbg !843, !tbaa !824
  %151 = fpext float %150 to double, !dbg !843
  %152 = call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8]* @.str9, i64 0, i64 0), i8* %groupname, i32 %148, i32 %149, double %151) #7, !dbg !844
  br label %PUGH_EnableScalarGroupStorage.exit, !dbg !845

; <label>:153                                     ; preds = %6
  %154 = call i32 @CCTK_Warn(i32 1, i32 377, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str10, i64 0, i64 0)) #7, !dbg !846
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !267, metadata !539), !dbg !792
  br label %PUGH_EnableScalarGroupStorage.exit

; <label>:155                                     ; preds = %0
  br i1 %4, label %158, label %156, !dbg !848

; <label>:156                                     ; preds = %155
  %157 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 386, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str11, i64 0, i64 0), i8* %groupname) #7, !dbg !850
  tail call void @llvm.dbg.value(metadata i32 -2, i64 0, metadata !267, metadata !539), !dbg !792
  br label %PUGH_EnableScalarGroupStorage.exit, !dbg !853

; <label>:158                                     ; preds = %155
  %159 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 393, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str12, i64 0, i64 0), i8* %groupname) #7, !dbg !854
  tail call void @llvm.dbg.value(metadata i32 -3, i64 0, metadata !267, metadata !539), !dbg !792
  br label %PUGH_EnableScalarGroupStorage.exit

PUGH_EnableScalarGroupStorage.exit:               ; preds = %._crit_edge.i, %11, %144, %156, %158, %PUGH_EnableGArrayGroupStorage.exit, %147, %153
  %retval.0 = phi i32 [ %retval.0.i, %147 ], [ %retval.0.i, %144 ], [ %retval.0.i, %PUGH_EnableGArrayGroupStorage.exit ], [ -1, %153 ], [ -3, %158 ], [ -2, %156 ], [ %29, %11 ], [ %29, %._crit_edge.i ]
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !249, metadata !539), !dbg !661
  ret i32 %retval.0, !dbg !856
}

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #2

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VInfo(i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_DisableGroupStorage(%struct.cGH* %GH, i8* %groupname) #1 {
  %pgroup = alloca %struct.cGroup, align 4
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !272, metadata !539), !dbg !857
  tail call void @llvm.dbg.value(metadata i8* %groupname, i64 0, metadata !273, metadata !539), !dbg !858
  %1 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 10), align 8, !dbg !859, !tbaa !662
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !296, metadata !539), !dbg !859
  %2 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #7, !dbg !860
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !336, metadata !539), !dbg !861
  tail call void @llvm.dbg.value(metadata %struct.cGroup* %pgroup, i64 0, metadata !337, metadata !539), !dbg !862
  %3 = call i32 @CCTK_GroupData(i32 %2, %struct.cGroup* %pgroup) #7, !dbg !863
  %4 = call i32 @CCTK_FirstVarIndexI(i32 %2) #7, !dbg !864
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !341, metadata !539), !dbg !865
  %5 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7, !dbg !866
  %6 = getelementptr inbounds %struct.PGH* %5, i64 0, i32 7, !dbg !867
  %7 = bitcast i8**** %6 to %struct.PGA****, !dbg !867
  %8 = load %struct.PGA**** %7, align 8, !dbg !867, !tbaa !558
  call void @llvm.dbg.value(metadata %struct.PGA*** %8, i64 0, metadata !340, metadata !539), !dbg !868
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !344, metadata !539), !dbg !869
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !339, metadata !539), !dbg !870
  %9 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0, !dbg !871
  %10 = load i32* %9, align 4, !dbg !871, !tbaa !679
  switch i32 %10, label %71 [
    i32 2, label %.preheader2
    i32 3, label %.preheader2
    i32 1, label %35
  ], !dbg !873

.preheader2:                                      ; preds = %0, %0
  %11 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !874
  %12 = load i32* %11, align 4, !dbg !874, !tbaa !684
  %13 = icmp sgt i32 %12, 0, !dbg !878
  br i1 %13, label %.preheader.lr.ph, label %.loopexit, !dbg !879

.preheader.lr.ph:                                 ; preds = %.preheader2
  %14 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6, !dbg !880
  %15 = sext i32 %4 to i64
  %.pre26 = load i32* %14, align 4, !dbg !880, !tbaa !686
  br label %.preheader, !dbg !879

.preheader:                                       ; preds = %.preheader.lr.ph, %29
  %16 = phi i32 [ %12, %.preheader.lr.ph ], [ %30, %29 ]
  %17 = phi i32 [ %.pre26, %.preheader.lr.ph ], [ %31, %29 ], !dbg !880
  %indvars.iv18 = phi i64 [ %15, %.preheader.lr.ph ], [ %indvars.iv.next19, %29 ]
  %unchanged.08 = phi i32 [ 0, %.preheader.lr.ph ], [ %unchanged.1.lcssa, %29 ]
  %18 = icmp sgt i32 %17, 0, !dbg !884
  br i1 %18, label %.lr.ph, label %29, !dbg !885

.lr.ph:                                           ; preds = %.preheader
  %19 = getelementptr inbounds %struct.PGA*** %8, i64 %indvars.iv18, !dbg !886
  br label %20, !dbg !885

; <label>:20                                      ; preds = %.lr.ph, %20
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %20 ]
  %unchanged.16 = phi i32 [ %unchanged.08, %.lr.ph ], [ %25, %20 ]
  %21 = load %struct.PGA*** %19, align 8, !dbg !886, !tbaa !565
  %22 = getelementptr inbounds %struct.PGA** %21, i64 %indvars.iv, !dbg !886
  %23 = load %struct.PGA** %22, align 8, !dbg !886, !tbaa !565
  %24 = call i32 @PUGH_DisableGArrayDataStorage(%struct.PGA* %23) #8, !dbg !888
  %25 = add nsw i32 %24, %unchanged.16, !dbg !889
  call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !344, metadata !539), !dbg !869
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !885
  %26 = load i32* %14, align 4, !dbg !880, !tbaa !686
  %27 = sext i32 %26 to i64, !dbg !884
  %28 = icmp slt i64 %indvars.iv.next, %27, !dbg !884
  br i1 %28, label %20, label %._crit_edge, !dbg !885

._crit_edge:                                      ; preds = %20
  %.pre27 = load i32* %11, align 4, !dbg !874, !tbaa !684
  br label %29, !dbg !885

; <label>:29                                      ; preds = %._crit_edge, %.preheader
  %30 = phi i32 [ %.pre27, %._crit_edge ], [ %16, %.preheader ], !dbg !879
  %31 = phi i32 [ %26, %._crit_edge ], [ %17, %.preheader ]
  %unchanged.1.lcssa = phi i32 [ %25, %._crit_edge ], [ %unchanged.08, %.preheader ]
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1, !dbg !879
  %32 = add nsw i32 %30, %4, !dbg !890
  %33 = sext i32 %32 to i64, !dbg !878
  %34 = icmp slt i64 %indvars.iv.next19, %33, !dbg !878
  br i1 %34, label %.preheader, label %.loopexit, !dbg !879

; <label>:35                                      ; preds = %0
  %36 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 1, !dbg !891
  %37 = load i32* %36, align 4, !dbg !891, !tbaa !894
  %38 = call i32 @CCTK_VarTypeSize(i32 %37) #7, !dbg !895
  call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !338, metadata !539), !dbg !896
  call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !342, metadata !539), !dbg !897
  %39 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !898
  %40 = load i32* %39, align 4, !dbg !898, !tbaa !684
  %41 = icmp sgt i32 %40, 0, !dbg !901
  br i1 %41, label %.preheader3.lr.ph, label %.loopexit, !dbg !902

.preheader3.lr.ph:                                ; preds = %35
  %42 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6, !dbg !903
  %43 = sext i32 %38 to i64, !dbg !907
  %44 = sext i32 %4 to i64
  %.pre = load i32* %42, align 4, !dbg !903, !tbaa !686
  br label %.preheader3, !dbg !902

.preheader3:                                      ; preds = %.preheader3.lr.ph, %65
  %45 = phi i32 [ %40, %.preheader3.lr.ph ], [ %66, %65 ]
  %46 = phi i32 [ %.pre, %.preheader3.lr.ph ], [ %67, %65 ], !dbg !903
  %indvars.iv22 = phi i64 [ %44, %.preheader3.lr.ph ], [ %indvars.iv.next23, %65 ]
  %unchanged.216 = phi i32 [ 0, %.preheader3.lr.ph ], [ %unchanged.3.lcssa, %65 ]
  %47 = icmp sgt i32 %46, 0, !dbg !910
  br i1 %47, label %.lr.ph12, label %65, !dbg !911

.lr.ph12:                                         ; preds = %.preheader3
  %48 = getelementptr inbounds %struct.PGA*** %8, i64 %indvars.iv22, !dbg !912
  br label %49, !dbg !911

; <label>:49                                      ; preds = %.lr.ph12, %61
  %50 = phi i32 [ %46, %.lr.ph12 ], [ %62, %61 ]
  %indvars.iv20 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next21, %61 ]
  %unchanged.311 = phi i32 [ %unchanged.216, %.lr.ph12 ], [ %unchanged.4, %61 ]
  %51 = load %struct.PGA*** %48, align 8, !dbg !912, !tbaa !565
  %52 = getelementptr inbounds %struct.PGA** %51, i64 %indvars.iv20, !dbg !912
  %53 = bitcast %struct.PGA** %52 to i8**, !dbg !912
  %54 = load i8** %53, align 8, !dbg !912, !tbaa !565
  call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !345, metadata !539), !dbg !913
  %55 = getelementptr inbounds i8* %54, i64 %43, !dbg !907
  %56 = load i8* %55, align 1, !dbg !907, !tbaa !631
  %57 = icmp eq i8 %56, 1, !dbg !914
  br i1 %57, label %58, label %59, !dbg !915

; <label>:58                                      ; preds = %49
  store i8 0, i8* %55, align 1, !dbg !916, !tbaa !631
  %.pre24 = load i32* %42, align 4, !dbg !903, !tbaa !686
  br label %61, !dbg !918

; <label>:59                                      ; preds = %49
  %60 = add nsw i32 %unchanged.311, 1, !dbg !919
  call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !344, metadata !539), !dbg !869
  br label %61

; <label>:61                                      ; preds = %58, %59
  %62 = phi i32 [ %.pre24, %58 ], [ %50, %59 ], !dbg !911
  %unchanged.4 = phi i32 [ %unchanged.311, %58 ], [ %60, %59 ]
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1, !dbg !911
  %63 = sext i32 %62 to i64, !dbg !910
  %64 = icmp slt i64 %indvars.iv.next21, %63, !dbg !910
  br i1 %64, label %49, label %._crit_edge13, !dbg !911

._crit_edge13:                                    ; preds = %61
  %.pre25 = load i32* %39, align 4, !dbg !898, !tbaa !684
  br label %65, !dbg !911

; <label>:65                                      ; preds = %._crit_edge13, %.preheader3
  %66 = phi i32 [ %.pre25, %._crit_edge13 ], [ %45, %.preheader3 ], !dbg !902
  %67 = phi i32 [ %62, %._crit_edge13 ], [ %46, %.preheader3 ]
  %unchanged.3.lcssa = phi i32 [ %unchanged.4, %._crit_edge13 ], [ %unchanged.216, %.preheader3 ]
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1, !dbg !902
  %68 = add nsw i32 %66, %4, !dbg !921
  %69 = sext i32 %68 to i64, !dbg !901
  %70 = icmp slt i64 %indvars.iv.next23, %69, !dbg !901
  br i1 %70, label %.preheader3, label %.loopexit, !dbg !902

; <label>:71                                      ; preds = %0
  %72 = call i32 @CCTK_Warn(i32 1, i32 493, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !922
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !339, metadata !539), !dbg !870
  br label %.loopexit

.loopexit:                                        ; preds = %65, %29, %35, %.preheader2, %71
  %unchanged.5 = phi i32 [ 0, %71 ], [ 0, %.preheader2 ], [ 0, %35 ], [ %unchanged.1.lcssa, %29 ], [ %unchanged.3.lcssa, %65 ]
  %retval.0 = phi i32 [ -1, %71 ], [ 1, %.preheader2 ], [ 1, %35 ], [ 1, %29 ], [ 1, %65 ]
  %73 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !924
  %74 = icmp eq i32 %73, 0, !dbg !924
  %75 = icmp sgt i32 %retval.0, -1, !dbg !926
  %or.cond = and i1 %75, %74, !dbg !927
  br i1 %or.cond, label %76, label %130, !dbg !927

; <label>:76                                      ; preds = %.loopexit
  %77 = icmp eq i32 %unchanged.5, 0, !dbg !928
  br i1 %77, label %78, label %119, !dbg !931

; <label>:78                                      ; preds = %76
  %79 = load i32* %9, align 4, !dbg !932, !tbaa !679
  switch i32 %79, label %._crit_edge28 [
    i32 2, label %80
    i32 3, label %85
  ], !dbg !935

._crit_edge28:                                    ; preds = %78
  %.phi.trans.insert = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5
  %.pre29 = load i32* %.phi.trans.insert, align 4, !dbg !936, !tbaa !684
  br label %90, !dbg !935

; <label>:80                                      ; preds = %78
  %81 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !937
  %82 = load i32* %81, align 4, !dbg !937, !tbaa !684
  %83 = load i32* @totalnumberGF, align 4, !dbg !939, !tbaa !809
  %84 = sub nsw i32 %83, %82, !dbg !939
  store i32 %84, i32* @totalnumberGF, align 4, !dbg !939, !tbaa !809
  br label %90, !dbg !940

; <label>:85                                      ; preds = %78
  %86 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !941
  %87 = load i32* %86, align 4, !dbg !941, !tbaa !684
  %88 = load i32* @totalnumberGA, align 4, !dbg !944, !tbaa !809
  %89 = sub nsw i32 %88, %87, !dbg !944
  store i32 %89, i32* @totalnumberGA, align 4, !dbg !944, !tbaa !809
  br label %90, !dbg !945

; <label>:90                                      ; preds = %._crit_edge28, %85, %80
  %91 = phi i32 [ %.pre29, %._crit_edge28 ], [ %87, %85 ], [ %82, %80 ]
  %92 = sext i32 %4 to i64, !dbg !946
  %93 = getelementptr inbounds %struct.PGA*** %8, i64 %92, !dbg !946
  %94 = load %struct.PGA*** %93, align 8, !dbg !946, !tbaa !565
  %95 = load %struct.PGA** %94, align 8, !dbg !946, !tbaa !565
  %96 = getelementptr inbounds %struct.PGA* %95, i64 0, i32 10, !dbg !947
  %97 = load %struct.PGExtras** %96, align 8, !dbg !947, !tbaa !578
  %98 = getelementptr inbounds %struct.PGExtras* %97, i64 0, i32 7, !dbg !948
  %99 = load i32* %98, align 4, !dbg !948, !tbaa !815
  %100 = getelementptr inbounds %struct.PGA* %95, i64 0, i32 8, !dbg !949
  %101 = load i32* %100, align 4, !dbg !949, !tbaa !817
  %102 = mul nsw i32 %101, %99, !dbg !950
  %103 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6, !dbg !951
  %104 = load i32* %103, align 4, !dbg !951, !tbaa !686
  %105 = mul nsw i32 %102, %104, !dbg !952
  %106 = mul nsw i32 %105, %91, !dbg !953
  %107 = sitofp i32 %106 to float, !dbg !954
  %108 = fmul float %107, 0x3EB0000000000000, !dbg !955
  %109 = load float* @totalstorage, align 4, !dbg !956, !tbaa !824
  %110 = fsub float %109, %108, !dbg !956
  store float %110, float* @totalstorage, align 4, !dbg !956, !tbaa !824
  %111 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !957
  %112 = icmp eq i32 %111, 0, !dbg !957
  br i1 %112, label %130, label %113, !dbg !959

; <label>:113                                     ; preds = %90
  %114 = load i32* @totalnumberGF, align 4, !dbg !960, !tbaa !809
  %115 = load i32* @totalnumberGA, align 4, !dbg !962, !tbaa !809
  %116 = load float* @totalstorage, align 4, !dbg !963, !tbaa !824
  %117 = fpext float %116 to double, !dbg !963
  %118 = call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8]* @.str14, i64 0, i64 0), i8* %groupname, i32 %114, i32 %115, double %117) #7, !dbg !964
  br label %130, !dbg !965

; <label>:119                                     ; preds = %76
  %120 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !966
  %121 = load i32* %120, align 4, !dbg !966, !tbaa !684
  %122 = icmp eq i32 %unchanged.5, %121, !dbg !968
  br i1 %122, label %123, label %128, !dbg !969

; <label>:123                                     ; preds = %119
  %124 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !970
  %125 = icmp eq i32 %124, 0, !dbg !970
  br i1 %125, label %130, label %126, !dbg !973

; <label>:126                                     ; preds = %123
  %127 = call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str15, i64 0, i64 0), i8* %groupname) #7, !dbg !974
  br label %130, !dbg !976

; <label>:128                                     ; preds = %119
  %129 = call i32 @CCTK_Warn(i32 1, i32 533, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str16, i64 0, i64 0)) #7, !dbg !977
  br label %130

; <label>:130                                     ; preds = %90, %123, %113, %126, %128, %.loopexit
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !335, metadata !539), !dbg !859
  ret i32 %retval.0, !dbg !979
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_DisableGArrayDataStorage(%struct.PGA* nocapture %GA) #1 {
  tail call void @llvm.dbg.value(metadata %struct.PGA* %GA, i64 0, metadata !362, metadata !539), !dbg !980
  %1 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 5, !dbg !981
  %2 = load i32* %1, align 4, !dbg !981, !tbaa !569
  %3 = icmp ne i32 %2, 1, !dbg !982
  %4 = zext i1 %3 to i32, !dbg !982
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !363, metadata !539), !dbg !983
  %5 = icmp eq i32 %2, 1, !dbg !984
  br i1 %5, label %6, label %32, !dbg !986

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 14, !dbg !987
  %8 = load i32* %7, align 4, !dbg !987, !tbaa !990
  %9 = icmp sgt i32 %8, 1, !dbg !991
  br i1 %9, label %10, label %20, !dbg !992

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 15, !dbg !993
  %12 = load i32* %11, align 4, !dbg !993, !tbaa !994
  %13 = icmp sgt i32 %12, 0, !dbg !995
  br i1 %13, label %14, label %20, !dbg !996

; <label>:14                                      ; preds = %10
  %15 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 3, !dbg !997
  %16 = bitcast i8** %15 to i64*, !dbg !997
  %17 = load i64* %16, align 8, !dbg !997, !tbaa !999
  %18 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 4, !dbg !1000
  %19 = bitcast i8** %18 to i64*, !dbg !1001
  store i64 %17, i64* %19, align 8, !dbg !1001, !tbaa !766
  br label %31, !dbg !1002

; <label>:20                                      ; preds = %10, %6
  %21 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 3, !dbg !1003
  %22 = load i8** %21, align 8, !dbg !1003, !tbaa !999
  %23 = icmp eq i8* %22, null, !dbg !1006
  br i1 %23, label %25, label %24, !dbg !1007

; <label>:24                                      ; preds = %20
  tail call void @free(i8* %22) #8, !dbg !1008
  br label %25, !dbg !1010

; <label>:25                                      ; preds = %20, %24
  %26 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 8, !dbg !1011
  %27 = load i32* %26, align 4, !dbg !1011, !tbaa !817
  %28 = sext i32 %27 to i64, !dbg !1012
  %29 = tail call i8* @calloc(i64 1, i64 %28) #7, !dbg !1013
  store i8* %29, i8** %21, align 8, !dbg !1014, !tbaa !999
  %30 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 4, !dbg !1015
  store i8* %29, i8** %30, align 8, !dbg !1016, !tbaa !766
  br label %31

; <label>:31                                      ; preds = %25, %14
  store i32 0, i32* %1, align 4, !dbg !1017, !tbaa !569
  br label %32, !dbg !1018

; <label>:32                                      ; preds = %31, %0
  ret i32 %4, !dbg !1019
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_EnableGArrayDataStorage(%struct.PGA* %GA, i32 %this_proc, i8* %initialize_memory, i32 %padding_active, i32 %padding_cacheline_bits, i32 %padding_size, i32 %padding_address_spacing) #1 {
  tail call void @llvm.dbg.value(metadata %struct.PGA* %GA, i64 0, metadata !350, metadata !539), !dbg !1020
  tail call void @llvm.dbg.value(metadata i32 %this_proc, i64 0, metadata !351, metadata !539), !dbg !1021
  tail call void @llvm.dbg.value(metadata i8* %initialize_memory, i64 0, metadata !352, metadata !539), !dbg !1022
  tail call void @llvm.dbg.value(metadata i32 %padding_active, i64 0, metadata !353, metadata !539), !dbg !1023
  tail call void @llvm.dbg.value(metadata i32 %padding_cacheline_bits, i64 0, metadata !354, metadata !539), !dbg !1024
  tail call void @llvm.dbg.value(metadata i32 %padding_size, i64 0, metadata !355, metadata !539), !dbg !1025
  tail call void @llvm.dbg.value(metadata i32 %padding_address_spacing, i64 0, metadata !356, metadata !539), !dbg !1026
  tail call void @llvm.dbg.value(metadata i32 %this_proc, i64 0, metadata !351, metadata !539), !dbg !1021
  tail call void @llvm.dbg.value(metadata i32 %padding_active, i64 0, metadata !353, metadata !539), !dbg !1023
  tail call void @llvm.dbg.value(metadata i32 %padding_cacheline_bits, i64 0, metadata !354, metadata !539), !dbg !1024
  tail call void @llvm.dbg.value(metadata i32 %padding_size, i64 0, metadata !355, metadata !539), !dbg !1025
  tail call void @llvm.dbg.value(metadata i32 %padding_address_spacing, i64 0, metadata !356, metadata !539), !dbg !1026
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !357, metadata !539), !dbg !1027
  %1 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 5, !dbg !1028
  %2 = load i32* %1, align 4, !dbg !1028, !tbaa !569
  %3 = icmp eq i32 %2, 0, !dbg !1030
  br i1 %3, label %4, label %92, !dbg !1031

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 14, !dbg !1032
  %6 = load i32* %5, align 4, !dbg !1032, !tbaa !990
  %7 = icmp sgt i32 %6, 1, !dbg !1035
  br i1 %7, label %8, label %28, !dbg !1036

; <label>:8                                       ; preds = %4
  %9 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 15, !dbg !1037
  %10 = load i32* %9, align 4, !dbg !1037, !tbaa !994
  %11 = icmp sgt i32 %10, 0, !dbg !1038
  br i1 %11, label %12, label %28, !dbg !1039

; <label>:12                                      ; preds = %8
  %13 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 16, !dbg !1040
  %14 = load %struct.PGA** %13, align 8, !dbg !1040, !tbaa !1042
  %15 = getelementptr inbounds %struct.PGA* %14, i64 0, i32 4, !dbg !1043
  %16 = load i8** %15, align 8, !dbg !1043, !tbaa !766
  %17 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 10, !dbg !1044
  %18 = load %struct.PGExtras** %17, align 8, !dbg !1044, !tbaa !578
  %19 = getelementptr inbounds %struct.PGExtras* %18, i64 0, i32 7, !dbg !1045
  %20 = load i32* %19, align 4, !dbg !1045, !tbaa !815
  %21 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 8, !dbg !1046
  %22 = load i32* %21, align 4, !dbg !1046, !tbaa !817
  %23 = mul i32 %20, %10, !dbg !1047
  %24 = mul i32 %23, %22, !dbg !1048
  %25 = sext i32 %24 to i64, !dbg !1049
  %26 = getelementptr inbounds i8* %16, i64 %25, !dbg !1049
  %27 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 4, !dbg !1050
  store i8* %26, i8** %27, align 8, !dbg !1051, !tbaa !766
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !357, metadata !539), !dbg !1027
  br label %75, !dbg !1052

; <label>:28                                      ; preds = %8, %4
  %29 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 3, !dbg !1053
  %30 = load i8** %29, align 8, !dbg !1053, !tbaa !999
  %31 = icmp eq i8* %30, null, !dbg !1056
  br i1 %31, label %33, label %32, !dbg !1057

; <label>:32                                      ; preds = %28
  tail call void @free(i8* %30) #8, !dbg !1058
  store i8* null, i8** %29, align 8, !dbg !1060, !tbaa !999
  br label %33, !dbg !1061

; <label>:33                                      ; preds = %28, %32
  %34 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 10, !dbg !1062
  %35 = load %struct.PGExtras** %34, align 8, !dbg !1062, !tbaa !578
  %36 = getelementptr inbounds %struct.PGExtras* %35, i64 0, i32 7, !dbg !1064
  %37 = load i32* %36, align 4, !dbg !1064, !tbaa !815
  %38 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 8, !dbg !1065
  %39 = load i32* %38, align 4, !dbg !1065, !tbaa !817
  %40 = mul nsw i32 %39, %37, !dbg !1066
  %41 = icmp slt i32 %40, 1, !dbg !1067
  br i1 %41, label %.thread, label %46, !dbg !1068

.thread:                                          ; preds = %33
  %42 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 0, !dbg !1069
  %43 = load i8** %42, align 8, !dbg !1069, !tbaa !1071
  %44 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 809, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8]* @.str17, i64 0, i64 0), i8* %43) #7, !dbg !1072
  %45 = bitcast i8** %29 to i8*, !dbg !1073
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 16, i32 8, i1 false), !dbg !1074
  br label %75, !dbg !1075

; <label>:46                                      ; preds = %33
  %47 = icmp eq i32 %padding_active, 0, !dbg !1077
  br i1 %47, label %48, label %52, !dbg !1079

; <label>:48                                      ; preds = %46
  %49 = sext i32 %40 to i64, !dbg !1080
  %50 = tail call i8* @malloc(i64 %49) #7, !dbg !1082
  %51 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 4, !dbg !1083
  store i8* %50, i8** %51, align 8, !dbg !1084, !tbaa !766
  store i8* %50, i8** %29, align 8, !dbg !1085, !tbaa !999
  br label %60, !dbg !1086

; <label>:52                                      ; preds = %46
  %53 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 2, !dbg !1087
  %54 = load i32* %53, align 4, !dbg !1087, !tbaa !1089
  %55 = load i32* %5, align 4, !dbg !1090, !tbaa !990
  %56 = mul nsw i32 %55, %40, !dbg !1091
  %57 = sext i32 %56 to i64, !dbg !1092
  %58 = tail call i8* @Util_CacheMalloc(i32 %54, i64 %57, i8** %29) #7, !dbg !1093
  %59 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 4, !dbg !1094
  store i8* %58, i8** %59, align 8, !dbg !1095, !tbaa !766
  br label %60

; <label>:60                                      ; preds = %48, %52
  %.pre-phi2 = phi i8** [ %51, %48 ], [ %59, %52 ], !dbg !1096
  %61 = phi i8* [ %50, %48 ], [ %58, %52 ]
  %62 = icmp eq i8* %61, null, !dbg !1097
  br i1 %62, label %75, label %63, !dbg !1075

; <label>:63                                      ; preds = %60
  %64 = tail call i32 @CCTK_Equals(i8* %initialize_memory, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !1098
  %65 = icmp eq i32 %64, 0, !dbg !1098
  br i1 %65, label %66, label %75, !dbg !1099

; <label>:66                                      ; preds = %63
  %67 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 9, !dbg !1100
  %68 = load i32* %67, align 4, !dbg !1100, !tbaa !1102
  %69 = load %struct.PGExtras** %34, align 8, !dbg !1103, !tbaa !578
  %70 = getelementptr inbounds %struct.PGExtras* %69, i64 0, i32 7, !dbg !1104
  %71 = load i32* %70, align 4, !dbg !1104, !tbaa !815
  %72 = load i32* %38, align 4, !dbg !1105, !tbaa !817
  %73 = mul nsw i32 %72, %71, !dbg !1106
  %74 = load i8** %.pre-phi2, align 8, !dbg !1107, !tbaa !766
  tail call fastcc void @PUGH_InitializeMemory(i8* %initialize_memory, i32 %68, i32 %73, i8* %74) #8, !dbg !1108
  br label %75, !dbg !1109

; <label>:75                                      ; preds = %.thread, %63, %60, %66, %12
  %.pre-phi1 = phi i32* [ %38, %63 ], [ %38, %60 ], [ %38, %66 ], [ %21, %12 ], [ %38, %.thread ], !dbg !1110
  %.pre-phi = phi %struct.PGExtras** [ %34, %63 ], [ %34, %60 ], [ %34, %66 ], [ %17, %12 ], [ %34, %.thread ], !dbg !1112
  %76 = load %struct.PGExtras** %.pre-phi, align 8, !dbg !1112, !tbaa !578
  %77 = getelementptr inbounds %struct.PGExtras* %76, i64 0, i32 7, !dbg !1113
  %78 = load i32* %77, align 4, !dbg !1113, !tbaa !815
  %79 = load i32* %.pre-phi1, align 4, !dbg !1110, !tbaa !817
  %80 = mul nsw i32 %79, %78, !dbg !1114
  %81 = icmp sgt i32 %80, 0, !dbg !1115
  br i1 %81, label %82, label %92, !dbg !1116

; <label>:82                                      ; preds = %75
  %83 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 3, !dbg !1117
  %84 = load i8** %83, align 8, !dbg !1117, !tbaa !999
  %85 = icmp eq i8* %84, null, !dbg !1118
  br i1 %85, label %86, label %92, !dbg !1119

; <label>:86                                      ; preds = %82
  %87 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 0, !dbg !1120
  %88 = load i8** %87, align 8, !dbg !1120, !tbaa !1071
  %89 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 1, !dbg !1122
  %90 = load i32* %89, align 4, !dbg !1122, !tbaa !1123
  %91 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 838, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str19, i64 0, i64 0), i8* %88, i32 %90) #7, !dbg !1124
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !357, metadata !539), !dbg !1027
  br label %92, !dbg !1125

; <label>:92                                      ; preds = %75, %82, %86, %0
  %retval.1 = phi i32 [ -1, %86 ], [ 0, %82 ], [ 0, %75 ], [ 0, %0 ]
  store i32 1, i32* %1, align 4, !dbg !1126, !tbaa !569
  ret i32 %retval.1, !dbg !1127
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i8* @Util_CacheMalloc(i32, i64, i8**) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @PUGH_InitializeMemory(i8* %initialize_memory, i32 %vtype, i32 %bytes, i8* %data) #1 {
  tail call void @llvm.dbg.value(metadata i8* %initialize_memory, i64 0, metadata !521, metadata !539), !dbg !1128
  tail call void @llvm.dbg.value(metadata i32 %vtype, i64 0, metadata !522, metadata !539), !dbg !1129
  tail call void @llvm.dbg.value(metadata i32 %bytes, i64 0, metadata !523, metadata !539), !dbg !1130
  tail call void @llvm.dbg.value(metadata i8* %data, i64 0, metadata !524, metadata !539), !dbg !1131
  %1 = tail call i32 @CCTK_Equals(i8* %initialize_memory, i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0)) #7, !dbg !1132
  %2 = icmp eq i32 %1, 0, !dbg !1132
  br i1 %2, label %7, label %3, !dbg !1134

; <label>:3                                       ; preds = %0
  %4 = sext i32 %bytes to i64, !dbg !1135
  %5 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %data, i1 false), !dbg !1135
  %6 = tail call i8* @__memset_chk(i8* %data, i32 0, i64 %4, i64 %5) #7, !dbg !1135
  br label %26, !dbg !1137

; <label>:7                                       ; preds = %0
  %8 = tail call i32 @CCTK_Equals(i8* %initialize_memory, i8* getelementptr inbounds ([4 x i8]* @.str26, i64 0, i64 0)) #7, !dbg !1138
  %9 = icmp eq i32 %8, 0, !dbg !1138
  br i1 %9, label %21, label %10, !dbg !1140

; <label>:10                                      ; preds = %7
  %11 = tail call i8* @CCTK_VarTypeName(i32 %vtype) #7, !dbg !1141
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !525, metadata !539), !dbg !1143
  %12 = tail call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([19 x i8]* @.str27, i64 0, i64 0), i64 18) #7, !dbg !1144
  %13 = icmp eq i32 %12, 0, !dbg !1146
  br i1 %13, label %17, label %14, !dbg !1147

; <label>:14                                      ; preds = %10
  %15 = tail call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([22 x i8]* @.str28, i64 0, i64 0), i64 22) #7, !dbg !1148
  %16 = icmp eq i32 %15, 0, !dbg !1149
  br i1 %16, label %17, label %26, !dbg !1150

; <label>:17                                      ; preds = %14, %10
  %18 = sext i32 %bytes to i64, !dbg !1151
  %19 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %data, i1 false), !dbg !1151
  %20 = tail call i8* @__memset_chk(i8* %data, i32 -1, i64 %18, i64 %19) #7, !dbg !1151
  br label %26, !dbg !1153

; <label>:21                                      ; preds = %7
  %22 = tail call i32 @CCTK_Equals(i8* %initialize_memory, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !1154
  %23 = icmp eq i32 %22, 0, !dbg !1154
  br i1 %23, label %24, label %26, !dbg !1156

; <label>:24                                      ; preds = %21
  %25 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 964, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8]* @.str29, i64 0, i64 0), i8* %initialize_memory) #7, !dbg !1157
  br label %26, !dbg !1159

; <label>:26                                      ; preds = %21, %17, %14, %24, %3
  ret void, !dbg !1160
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGHi_PrintStorageReport() #1 {
  %1 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !1161
  %2 = load float* @maxstorage, align 4, !dbg !1162, !tbaa !824
  %3 = fpext float %2 to double, !dbg !1162
  %4 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str21, i64 0, i64 0), double %3) #7, !dbg !1163
  %5 = load i32* @numberGF, align 4, !dbg !1164, !tbaa !809
  %6 = load i32* @numberGA, align 4, !dbg !1165, !tbaa !809
  %7 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str22, i64 0, i64 0), i32 %5, i32 %6) #7, !dbg !1166
  ret void, !dbg !1167
}

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: optsize
declare i8* @CCTK_VarTypeName(i32) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!534, !535, !536}
!llvm.ident = !{!537}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !116, globals: !526, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/Storage.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !80, !81, !16, !83}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGA", file: !6, line: 126, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGA", file: !6, line: 96, size: 832, align: 64, elements: !8)
!8 = !{!9, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !52, !61, !75, !76, !77, !78}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !6, line: 98, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !7, file: !6, line: 99, baseType: !13, size: 32, align: 32, offset: 64)
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "arrayid", scope: !7, file: !6, line: 100, baseType: !13, size: 32, align: 32, offset: 96)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "padddata", scope: !7, file: !6, line: 101, baseType: !16, size: 64, align: 64, offset: 128)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 102, baseType: !16, size: 64, align: 64, offset: 192)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !7, file: !6, line: 103, baseType: !13, size: 32, align: 32, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "stagger", scope: !7, file: !6, line: 104, baseType: !13, size: 32, align: 32, offset: 288)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !7, file: !6, line: 106, baseType: !16, size: 64, align: 64, offset: 320)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "varsize", scope: !7, file: !6, line: 114, baseType: !13, size: 32, align: 32, offset: 384)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "vtype", scope: !7, file: !6, line: 115, baseType: !13, size: 32, align: 32, offset: 416)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "extras", scope: !7, file: !6, line: 117, baseType: !24, size: 64, align: 64, offset: 448)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGExtras", file: !6, line: 72, baseType: !26)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGExtras", file: !6, line: 37, size: 2368, align: 64, elements: !27)
!27 = !{!28, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !49, !51}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !26, file: !6, line: 39, baseType: !13, size: 32, align: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nsize", scope: !26, file: !6, line: 41, baseType: !30, size: 64, align: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "maxskew", scope: !26, file: !6, line: 44, baseType: !32, size: 64, align: 64, offset: 128)
!32 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "lb", scope: !26, file: !6, line: 45, baseType: !34, size: 64, align: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ub", scope: !26, file: !6, line: 46, baseType: !34, size: 64, align: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !26, file: !6, line: 47, baseType: !30, size: 64, align: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "lnsize", scope: !26, file: !6, line: 49, baseType: !30, size: 64, align: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "npoints", scope: !26, file: !6, line: 50, baseType: !13, size: 32, align: 32, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "rnpoints", scope: !26, file: !6, line: 51, baseType: !30, size: 64, align: 64, offset: 512)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "rnsize", scope: !26, file: !6, line: 52, baseType: !34, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !26, file: !6, line: 55, baseType: !30, size: 64, align: 64, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_volume", scope: !26, file: !6, line: 56, baseType: !30, size: 64, align: 64, offset: 704)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "nghostzones", scope: !26, file: !6, line: 59, baseType: !30, size: 64, align: 64, offset: 768)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ownership", scope: !26, file: !6, line: 60, baseType: !45, size: 512, align: 64, offset: 832)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, align: 64, elements: !46)
!46 = !{!47, !48}
!47 = !DISubrange(count: 4)
!48 = !DISubrange(count: 2)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ghosts", scope: !26, file: !6, line: 64, baseType: !50, size: 512, align: 64, offset: 1344)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 512, align: 64, elements: !46)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "overlap", scope: !26, file: !6, line: 68, baseType: !50, size: 512, align: 64, offset: 1856)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "connectivity", scope: !7, file: !6, line: 118, baseType: !53, size: 64, align: 64, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "pConnectivity", file: !6, line: 29, baseType: !55)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "PConnectivity", file: !6, line: 23, size: 256, align: 64, elements: !56)
!56 = !{!57, !58, !59, !60}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !55, file: !6, line: 25, baseType: !13, size: 32, align: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !55, file: !6, line: 26, baseType: !30, size: 64, align: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "neighbours", scope: !55, file: !6, line: 27, baseType: !34, size: 64, align: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !55, file: !6, line: 28, baseType: !30, size: 64, align: 64, offset: 192)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !7, file: !6, line: 120, baseType: !62, size: 64, align: 64, offset: 576)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "pComm", file: !6, line: 94, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "PComm", file: !6, line: 74, size: 448, align: 64, elements: !65)
!65 = !{!66, !67, !69, !70, !71, !72, !73, !74}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_sz", scope: !64, file: !6, line: 77, baseType: !30, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !64, file: !6, line: 78, baseType: !68, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "recv_buffer", scope: !64, file: !6, line: 79, baseType: !68, size: 64, align: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "commflag", scope: !64, file: !6, line: 80, baseType: !13, size: 32, align: 32, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "docomm", scope: !64, file: !6, line: 82, baseType: !30, size: 64, align: 64, offset: 256)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "first_var", scope: !64, file: !6, line: 84, baseType: !13, size: 32, align: 32, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "n_vars", scope: !64, file: !6, line: 85, baseType: !13, size: 32, align: 32, offset: 352)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "sync_timelevel", scope: !64, file: !6, line: 86, baseType: !13, size: 32, align: 32, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "groupcomm", scope: !7, file: !6, line: 121, baseType: !62, size: 64, align: 64, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "vector_size", scope: !7, file: !6, line: 123, baseType: !13, size: 32, align: 32, offset: 704)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "vector_entry", scope: !7, file: !6, line: 124, baseType: !13, size: 32, align: 32, offset: 736)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "vector_base", scope: !7, file: !6, line: 125, baseType: !79, size: 64, align: 64, offset: 768)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!80 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !85, line: 75, baseType: !86)
!85 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!86 = !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 24, size: 1216, align: 64, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !100, !101, !102, !103, !104, !105, !106, !108, !109}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !86, file: !85, line: 26, baseType: !13, size: 32, align: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !86, file: !85, line: 27, baseType: !13, size: 32, align: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !86, file: !85, line: 30, baseType: !30, size: 64, align: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !86, file: !85, line: 31, baseType: !30, size: 64, align: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !86, file: !85, line: 32, baseType: !30, size: 64, align: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !86, file: !85, line: 33, baseType: !30, size: 64, align: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !86, file: !85, line: 36, baseType: !30, size: 64, align: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !86, file: !85, line: 39, baseType: !30, size: 64, align: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !86, file: !85, line: 40, baseType: !30, size: 64, align: 64, offset: 448)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !86, file: !85, line: 43, baseType: !32, size: 64, align: 64, offset: 512)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !86, file: !85, line: 44, baseType: !99, size: 64, align: 64, offset: 576)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !86, file: !85, line: 47, baseType: !99, size: 64, align: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !86, file: !85, line: 51, baseType: !30, size: 64, align: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !86, file: !85, line: 54, baseType: !30, size: 64, align: 64, offset: 768)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !86, file: !85, line: 57, baseType: !13, size: 32, align: 32, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !86, file: !85, line: 60, baseType: !30, size: 64, align: 64, offset: 896)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !86, file: !85, line: 63, baseType: !32, size: 64, align: 64, offset: 960)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !86, file: !85, line: 67, baseType: !107, size: 64, align: 64, offset: 1024)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !86, file: !85, line: 70, baseType: !68, size: 64, align: 64, offset: 1088)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !86, file: !85, line: 73, baseType: !110, size: 64, align: 64, offset: 1152)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !85, line: 22, baseType: !112)
!112 = !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 18, size: 16, align: 8, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !112, file: !85, line: 20, baseType: !11, size: 8, align: 8)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !112, file: !85, line: 21, baseType: !11, size: 8, align: 8, offset: 8)
!116 = !{!117, !122, !137, !181, !270, !346, !358, !364, !367, !443, !517}
!117 = !DISubprogram(name: "CCTKi_version_CactusPUGH_PUGH_Storage_c", scope: !1, file: !1, line: 25, type: !118, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusPUGH_PUGH_Storage_c, variables: !2)
!118 = !DISubroutineType(types: !119)
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!122 = !DISubprogram(name: "PUGH_ArrayGroupSize", scope: !1, file: !1, line: 102, type: !123, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, function: i32* (%struct.cGH*, i32, i32, i8*)* @PUGH_ArrayGroupSize, variables: !129)
!123 = !DISubroutineType(types: !124)
!124 = !{!125, !127, !13, !13, !120}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!129 = !{!130, !131, !132, !133, !134, !135, !136}
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !122, file: !1, line: 102, type: !127)
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 2, scope: !122, file: !1, line: 103, type: !13)
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 3, scope: !122, file: !1, line: 104, type: !13)
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "groupname", arg: 4, scope: !122, file: !1, line: 105, type: !120)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "first_var", scope: !122, file: !1, line: 107, type: !13)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "GA", scope: !122, file: !1, line: 108, type: !4)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !122, file: !1, line: 109, type: !125)
!137 = !DISubprogram(name: "PUGH_QueryGroupStorage", scope: !1, file: !1, line: 198, type: !138, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32, i8*)* @PUGH_QueryGroupStorage, variables: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{!13, !127, !13, !120}
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149}
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !137, file: !1, line: 198, type: !127)
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 2, scope: !137, file: !1, line: 198, type: !13)
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "groupname", arg: 3, scope: !137, file: !1, line: 198, type: !120)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "first_var", scope: !137, file: !1, line: 200, type: !13)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage", scope: !137, file: !1, line: 201, type: !13)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "grouptype", scope: !137, file: !1, line: 202, type: !13)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vtypesize", scope: !137, file: !1, line: 203, type: !13)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !137, file: !1, line: 204, type: !13)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pughGH", scope: !137, file: !1, line: 205, type: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGH", file: !152, line: 81, baseType: !153)
!152 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGH", file: !152, line: 13, size: 1152, align: 64, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !178, !180}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "callerid", scope: !153, file: !152, line: 17, baseType: !16, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !153, file: !152, line: 18, baseType: !13, size: 32, align: 32, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !153, file: !152, line: 21, baseType: !13, size: 32, align: 32, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "myproc", scope: !153, file: !152, line: 22, baseType: !13, size: 32, align: 32, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "commmodel", scope: !153, file: !152, line: 23, baseType: !13, size: 32, align: 32, offset: 160)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nvariables", scope: !153, file: !152, line: 27, baseType: !13, size: 32, align: 32, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "narrays", scope: !153, file: !152, line: 28, baseType: !13, size: 32, align: 32, offset: 224)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !153, file: !152, line: 29, baseType: !107, size: 64, align: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "timelevel", scope: !153, file: !152, line: 32, baseType: !13, size: 32, align: 32, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !153, file: !152, line: 34, baseType: !30, size: 64, align: 64, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !153, file: !152, line: 35, baseType: !13, size: 32, align: 32, offset: 448)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "forceSync", scope: !153, file: !152, line: 37, baseType: !13, size: 32, align: 32, offset: 480)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "dx0", scope: !153, file: !152, line: 41, baseType: !32, size: 64, align: 64, offset: 512)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "dy0", scope: !153, file: !152, line: 41, baseType: !32, size: 64, align: 64, offset: 576)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dz0", scope: !153, file: !152, line: 41, baseType: !32, size: 64, align: 64, offset: 640)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "dt0", scope: !153, file: !152, line: 41, baseType: !32, size: 64, align: 64, offset: 704)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !153, file: !152, line: 44, baseType: !13, size: 32, align: 32, offset: 768)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "mglevel", scope: !153, file: !152, line: 45, baseType: !13, size: 32, align: 32, offset: 800)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "convlevel", scope: !153, file: !152, line: 46, baseType: !13, size: 32, align: 32, offset: 832)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !153, file: !152, line: 49, baseType: !13, size: 32, align: 32, offset: 864)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "comm_time", scope: !153, file: !152, line: 53, baseType: !13, size: 32, align: 32, offset: 896)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "GFExtras", scope: !153, file: !152, line: 76, baseType: !177, size: 64, align: 64, offset: 960)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "Connectivity", scope: !153, file: !152, line: 77, baseType: !179, size: 64, align: 64, offset: 1024)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "identity_string", scope: !153, file: !152, line: 79, baseType: !10, size: 64, align: 64, offset: 1088)
!181 = !DISubprogram(name: "PUGH_EnableGroupStorage", scope: !1, file: !1, line: 304, type: !182, isLocal: false, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @PUGH_EnableGroupStorage, variables: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{!13, !83, !120}
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !246, !247, !248, !249, !252, !253, !254, !267, !268, !269}
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !181, file: !1, line: 304, type: !83)
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "groupname", arg: 2, scope: !181, file: !1, line: 304, type: !120)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !181, file: !1, line: 306, type: !126)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !181, file: !1, line: 306, type: !126)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !181, file: !1, line: 306, type: !126)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !181, file: !1, line: 306, type: !126)
!191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !181, file: !1, line: 306, type: !126)
!192 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !181, file: !1, line: 306, type: !126)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !181, file: !1, line: 306, type: !126)
!194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !181, file: !1, line: 306, type: !126)
!195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !181, file: !1, line: 306, type: !126)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !181, file: !1, line: 306, type: !126)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !181, file: !1, line: 306, type: !126)
!198 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !181, file: !1, line: 306, type: !126)
!199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !181, file: !1, line: 306, type: !120)
!200 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !181, file: !1, line: 306, type: !120)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !181, file: !1, line: 306, type: !120)
!202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !181, file: !1, line: 306, type: !120)
!203 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !181, file: !1, line: 306, type: !120)
!204 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !181, file: !1, line: 306, type: !120)
!205 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !181, file: !1, line: 306, type: !120)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !181, file: !1, line: 306, type: !120)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !181, file: !1, line: 306, type: !120)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !181, file: !1, line: 306, type: !120)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !181, file: !1, line: 306, type: !120)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !181, file: !1, line: 306, type: !126)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !181, file: !1, line: 306, type: !126)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !181, file: !1, line: 306, type: !126)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !181, file: !1, line: 306, type: !126)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !181, file: !1, line: 306, type: !126)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !181, file: !1, line: 306, type: !126)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !181, file: !1, line: 306, type: !126)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !181, file: !1, line: 306, type: !126)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !181, file: !1, line: 306, type: !126)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !181, file: !1, line: 306, type: !126)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !181, file: !1, line: 306, type: !126)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !181, file: !1, line: 306, type: !126)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !181, file: !1, line: 306, type: !126)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !181, file: !1, line: 306, type: !126)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !181, file: !1, line: 306, type: !126)
!225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !181, file: !1, line: 306, type: !126)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !181, file: !1, line: 306, type: !126)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !181, file: !1, line: 306, type: !126)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !181, file: !1, line: 306, type: !126)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !181, file: !1, line: 306, type: !126)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !181, file: !1, line: 306, type: !126)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !181, file: !1, line: 306, type: !126)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !181, file: !1, line: 306, type: !126)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !181, file: !1, line: 306, type: !126)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !181, file: !1, line: 306, type: !126)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !181, file: !1, line: 306, type: !126)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !181, file: !1, line: 306, type: !126)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !181, file: !1, line: 306, type: !126)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !181, file: !1, line: 306, type: !126)
!239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !181, file: !1, line: 306, type: !126)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !181, file: !1, line: 306, type: !126)
!241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !181, file: !1, line: 306, type: !126)
!242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !181, file: !1, line: 306, type: !126)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !181, file: !1, line: 306, type: !120)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !181, file: !1, line: 306, type: !245)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !181, file: !1, line: 306, type: !245)
!247 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !181, file: !1, line: 306, type: !126)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !181, file: !1, line: 306, type: !126)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !181, file: !1, line: 306, type: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "group", scope: !181, file: !1, line: 307, type: !13)
!253 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "first_var", scope: !181, file: !1, line: 308, type: !13)
!254 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pgroup", scope: !181, file: !1, line: 309, type: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGroup", file: !256, line: 24, baseType: !257)
!256 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cctk_Groups.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!257 = !DICompositeType(tag: DW_TAG_structure_type, file: !256, line: 14, size: 256, align: 32, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "grouptype", scope: !257, file: !256, line: 16, baseType: !13, size: 32, align: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "vartype", scope: !257, file: !256, line: 17, baseType: !13, size: 32, align: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "disttype", scope: !257, file: !256, line: 18, baseType: !13, size: 32, align: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "stagtype", scope: !257, file: !256, line: 19, baseType: !13, size: 32, align: 32, offset: 96)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !257, file: !256, line: 20, baseType: !13, size: 32, align: 32, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "numvars", scope: !257, file: !256, line: 21, baseType: !13, size: 32, align: 32, offset: 160)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "numtimelevels", scope: !257, file: !256, line: 22, baseType: !13, size: 32, align: 32, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "vectorgroup", scope: !257, file: !256, line: 23, baseType: !13, size: 32, align: 32, offset: 224)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !181, file: !1, line: 310, type: !13)
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "GA", scope: !181, file: !1, line: 311, type: !4)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pughGH", scope: !181, file: !1, line: 312, type: !150)
!270 = !DISubprogram(name: "PUGH_DisableGroupStorage", scope: !1, file: !1, line: 433, type: !182, isLocal: false, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @PUGH_DisableGroupStorage, variables: !271)
!271 = !{!272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345}
!272 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !270, file: !1, line: 433, type: !83)
!273 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "groupname", arg: 2, scope: !270, file: !1, line: 433, type: !120)
!274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !270, file: !1, line: 435, type: !126)
!275 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !270, file: !1, line: 435, type: !126)
!276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !270, file: !1, line: 435, type: !126)
!277 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !270, file: !1, line: 435, type: !126)
!278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !270, file: !1, line: 435, type: !126)
!279 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !270, file: !1, line: 435, type: !126)
!280 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !270, file: !1, line: 435, type: !126)
!281 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !270, file: !1, line: 435, type: !126)
!282 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !270, file: !1, line: 435, type: !126)
!283 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !270, file: !1, line: 435, type: !126)
!284 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !270, file: !1, line: 435, type: !126)
!285 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !270, file: !1, line: 435, type: !126)
!286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !270, file: !1, line: 435, type: !120)
!287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !270, file: !1, line: 435, type: !120)
!288 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !270, file: !1, line: 435, type: !120)
!289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !270, file: !1, line: 435, type: !120)
!290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !270, file: !1, line: 435, type: !120)
!291 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !270, file: !1, line: 435, type: !120)
!292 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !270, file: !1, line: 435, type: !120)
!293 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !270, file: !1, line: 435, type: !120)
!294 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !270, file: !1, line: 435, type: !120)
!295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !270, file: !1, line: 435, type: !120)
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !270, file: !1, line: 435, type: !120)
!297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !270, file: !1, line: 435, type: !126)
!298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !270, file: !1, line: 435, type: !126)
!299 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !270, file: !1, line: 435, type: !126)
!300 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !270, file: !1, line: 435, type: !126)
!301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !270, file: !1, line: 435, type: !126)
!302 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !270, file: !1, line: 435, type: !126)
!303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !270, file: !1, line: 435, type: !126)
!304 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !270, file: !1, line: 435, type: !126)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !270, file: !1, line: 435, type: !126)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !270, file: !1, line: 435, type: !126)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !270, file: !1, line: 435, type: !126)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !270, file: !1, line: 435, type: !126)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !270, file: !1, line: 435, type: !126)
!310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !270, file: !1, line: 435, type: !126)
!311 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !270, file: !1, line: 435, type: !126)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !270, file: !1, line: 435, type: !126)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !270, file: !1, line: 435, type: !126)
!314 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !270, file: !1, line: 435, type: !126)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !270, file: !1, line: 435, type: !126)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !270, file: !1, line: 435, type: !126)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !270, file: !1, line: 435, type: !126)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !270, file: !1, line: 435, type: !126)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !270, file: !1, line: 435, type: !126)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !270, file: !1, line: 435, type: !126)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !270, file: !1, line: 435, type: !126)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !270, file: !1, line: 435, type: !126)
!323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !270, file: !1, line: 435, type: !126)
!324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !270, file: !1, line: 435, type: !126)
!325 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !270, file: !1, line: 435, type: !126)
!326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !270, file: !1, line: 435, type: !126)
!327 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !270, file: !1, line: 435, type: !126)
!328 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !270, file: !1, line: 435, type: !126)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !270, file: !1, line: 435, type: !126)
!330 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !270, file: !1, line: 435, type: !120)
!331 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !270, file: !1, line: 435, type: !245)
!332 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !270, file: !1, line: 435, type: !245)
!333 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !270, file: !1, line: 435, type: !126)
!334 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !270, file: !1, line: 435, type: !126)
!335 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !270, file: !1, line: 435, type: !250)
!336 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "group", scope: !270, file: !1, line: 436, type: !13)
!337 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pgroup", scope: !270, file: !1, line: 437, type: !255)
!338 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vtypesize", scope: !270, file: !1, line: 438, type: !13)
!339 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !270, file: !1, line: 438, type: !13)
!340 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "variables", scope: !270, file: !1, line: 439, type: !81)
!341 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "first_var", scope: !270, file: !1, line: 440, type: !13)
!342 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "var", scope: !270, file: !1, line: 440, type: !13)
!343 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "level", scope: !270, file: !1, line: 440, type: !13)
!344 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unchanged", scope: !270, file: !1, line: 441, type: !13)
!345 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !270, file: !1, line: 442, type: !10)
!346 = !DISubprogram(name: "PUGH_EnableGArrayDataStorage", scope: !1, file: !1, line: 764, type: !347, isLocal: false, isDefinition: true, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PGA*, i32, i8*, i32, i32, i32, i32)* @PUGH_EnableGArrayDataStorage, variables: !349)
!347 = !DISubroutineType(types: !348)
!348 = !{!13, !4, !13, !120, !13, !13, !13, !13}
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357}
!350 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GA", arg: 1, scope: !346, file: !1, line: 764, type: !4)
!351 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_proc", arg: 2, scope: !346, file: !1, line: 765, type: !13)
!352 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "initialize_memory", arg: 3, scope: !346, file: !1, line: 766, type: !120)
!353 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "padding_active", arg: 4, scope: !346, file: !1, line: 767, type: !13)
!354 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "padding_cacheline_bits", arg: 5, scope: !346, file: !1, line: 768, type: !13)
!355 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "padding_size", arg: 6, scope: !346, file: !1, line: 769, type: !13)
!356 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "padding_address_spacing", arg: 7, scope: !346, file: !1, line: 770, type: !13)
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !346, file: !1, line: 772, type: !13)
!358 = !DISubprogram(name: "PUGH_DisableGArrayDataStorage", scope: !1, file: !1, line: 873, type: !359, isLocal: false, isDefinition: true, scopeLine: 874, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PGA*)* @PUGH_DisableGArrayDataStorage, variables: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{!13, !4}
!361 = !{!362, !363}
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GA", arg: 1, scope: !358, file: !1, line: 873, type: !4)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !358, file: !1, line: 875, type: !13)
!364 = !DISubprogram(name: "PUGHi_PrintStorageReport", scope: !1, file: !1, line: 980, type: !365, isLocal: false, isDefinition: true, scopeLine: 981, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PUGHi_PrintStorageReport, variables: !2)
!365 = !DISubroutineType(types: !366)
!366 = !{null}
!367 = !DISubprogram(name: "PUGH_EnableScalarGroupStorage", scope: !1, file: !1, line: 585, type: !368, isLocal: true, isDefinition: true, scopeLine: 589, flags: DIFlagPrototyped, isOptimized: true, variables: !370)
!368 = !DISubroutineType(types: !369)
!369 = !{!13, !150, !13, !13, !13}
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442}
!371 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pughGH", arg: 1, scope: !367, file: !1, line: 585, type: !150)
!372 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "first_var", arg: 2, scope: !367, file: !1, line: 586, type: !13)
!373 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_variables", arg: 3, scope: !367, file: !1, line: 587, type: !13)
!374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_timelevels", arg: 4, scope: !367, file: !1, line: 588, type: !13)
!375 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !367, file: !1, line: 590, type: !126)
!376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !367, file: !1, line: 590, type: !126)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !367, file: !1, line: 590, type: !126)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !367, file: !1, line: 590, type: !126)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !367, file: !1, line: 590, type: !126)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !367, file: !1, line: 590, type: !126)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !367, file: !1, line: 590, type: !126)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !367, file: !1, line: 590, type: !126)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !367, file: !1, line: 590, type: !126)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !367, file: !1, line: 590, type: !126)
!385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !367, file: !1, line: 590, type: !126)
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !367, file: !1, line: 590, type: !126)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !367, file: !1, line: 590, type: !120)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !367, file: !1, line: 590, type: !120)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !367, file: !1, line: 590, type: !120)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !367, file: !1, line: 590, type: !120)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !367, file: !1, line: 590, type: !120)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !367, file: !1, line: 590, type: !120)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !367, file: !1, line: 590, type: !120)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !367, file: !1, line: 590, type: !120)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !367, file: !1, line: 590, type: !120)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !367, file: !1, line: 590, type: !120)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !367, file: !1, line: 590, type: !120)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !367, file: !1, line: 590, type: !126)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !367, file: !1, line: 590, type: !126)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !367, file: !1, line: 590, type: !126)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !367, file: !1, line: 590, type: !126)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !367, file: !1, line: 590, type: !126)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !367, file: !1, line: 590, type: !126)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !367, file: !1, line: 590, type: !126)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !367, file: !1, line: 590, type: !126)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !367, file: !1, line: 590, type: !126)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !367, file: !1, line: 590, type: !126)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !367, file: !1, line: 590, type: !126)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !367, file: !1, line: 590, type: !126)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !367, file: !1, line: 590, type: !126)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !367, file: !1, line: 590, type: !126)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !367, file: !1, line: 590, type: !126)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !367, file: !1, line: 590, type: !126)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !367, file: !1, line: 590, type: !126)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !367, file: !1, line: 590, type: !126)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !367, file: !1, line: 590, type: !126)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !367, file: !1, line: 590, type: !126)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !367, file: !1, line: 590, type: !126)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !367, file: !1, line: 590, type: !126)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !367, file: !1, line: 590, type: !126)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !367, file: !1, line: 590, type: !126)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !367, file: !1, line: 590, type: !126)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !367, file: !1, line: 590, type: !126)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !367, file: !1, line: 590, type: !126)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !367, file: !1, line: 590, type: !126)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !367, file: !1, line: 590, type: !126)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !367, file: !1, line: 590, type: !126)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !367, file: !1, line: 590, type: !126)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !367, file: !1, line: 590, type: !126)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !367, file: !1, line: 590, type: !126)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !367, file: !1, line: 590, type: !120)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !367, file: !1, line: 590, type: !245)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !367, file: !1, line: 590, type: !245)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !367, file: !1, line: 590, type: !126)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !367, file: !1, line: 590, type: !126)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !367, file: !1, line: 590, type: !250)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vtype", scope: !367, file: !1, line: 591, type: !13)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vtypesize", scope: !367, file: !1, line: 591, type: !13)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "variable", scope: !367, file: !1, line: 591, type: !13)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "level", scope: !367, file: !1, line: 591, type: !13)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !367, file: !1, line: 591, type: !13)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !367, file: !1, line: 592, type: !16)
!443 = !DISubprogram(name: "PUGH_EnableGArrayGroupStorage", scope: !1, file: !1, line: 662, type: !368, isLocal: true, isDefinition: true, scopeLine: 666, flags: DIFlagPrototyped, isOptimized: true, variables: !444)
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516}
!445 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pughGH", arg: 1, scope: !443, file: !1, line: 662, type: !150)
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "first_var", arg: 2, scope: !443, file: !1, line: 663, type: !13)
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_variables", arg: 3, scope: !443, file: !1, line: 664, type: !13)
!448 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n_timelevels", arg: 4, scope: !443, file: !1, line: 665, type: !13)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !443, file: !1, line: 667, type: !126)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !443, file: !1, line: 667, type: !126)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !443, file: !1, line: 667, type: !126)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !443, file: !1, line: 667, type: !126)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !443, file: !1, line: 667, type: !126)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !443, file: !1, line: 667, type: !126)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !443, file: !1, line: 667, type: !126)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !443, file: !1, line: 667, type: !126)
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !443, file: !1, line: 667, type: !126)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !443, file: !1, line: 667, type: !126)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !443, file: !1, line: 667, type: !126)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !443, file: !1, line: 667, type: !126)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !443, file: !1, line: 667, type: !120)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !443, file: !1, line: 667, type: !120)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !443, file: !1, line: 667, type: !120)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !443, file: !1, line: 667, type: !120)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !443, file: !1, line: 667, type: !120)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !443, file: !1, line: 667, type: !120)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !443, file: !1, line: 667, type: !120)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !443, file: !1, line: 667, type: !120)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !443, file: !1, line: 667, type: !120)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !443, file: !1, line: 667, type: !120)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !443, file: !1, line: 667, type: !120)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !443, file: !1, line: 667, type: !126)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !443, file: !1, line: 667, type: !126)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !443, file: !1, line: 667, type: !126)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !443, file: !1, line: 667, type: !126)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !443, file: !1, line: 667, type: !126)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !443, file: !1, line: 667, type: !126)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !443, file: !1, line: 667, type: !126)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !443, file: !1, line: 667, type: !126)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !443, file: !1, line: 667, type: !126)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !443, file: !1, line: 667, type: !126)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !443, file: !1, line: 667, type: !126)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !443, file: !1, line: 667, type: !126)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !443, file: !1, line: 667, type: !126)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !443, file: !1, line: 667, type: !126)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !443, file: !1, line: 667, type: !126)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !443, file: !1, line: 667, type: !126)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !443, file: !1, line: 667, type: !126)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !443, file: !1, line: 667, type: !126)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !443, file: !1, line: 667, type: !126)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !443, file: !1, line: 667, type: !126)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !443, file: !1, line: 667, type: !126)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !443, file: !1, line: 667, type: !126)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !443, file: !1, line: 667, type: !126)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !443, file: !1, line: 667, type: !126)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !443, file: !1, line: 667, type: !126)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !443, file: !1, line: 667, type: !126)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !443, file: !1, line: 667, type: !126)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !443, file: !1, line: 667, type: !126)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !443, file: !1, line: 667, type: !126)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !443, file: !1, line: 667, type: !126)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !443, file: !1, line: 667, type: !126)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !443, file: !1, line: 667, type: !126)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !443, file: !1, line: 667, type: !126)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !443, file: !1, line: 667, type: !120)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !443, file: !1, line: 667, type: !245)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !443, file: !1, line: 667, type: !245)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !443, file: !1, line: 667, type: !126)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !443, file: !1, line: 667, type: !126)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !443, file: !1, line: 667, type: !250)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nstorage", scope: !443, file: !1, line: 668, type: !13)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nnostorage", scope: !443, file: !1, line: 669, type: !13)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !443, file: !1, line: 670, type: !13)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "var", scope: !443, file: !1, line: 671, type: !13)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "GA", scope: !443, file: !1, line: 672, type: !4)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "level", scope: !443, file: !1, line: 673, type: !13)
!517 = !DISubprogram(name: "PUGH_InitializeMemory", scope: !1, file: !1, line: 939, type: !518, isLocal: true, isDefinition: true, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, i32, i8*)* @PUGH_InitializeMemory, variables: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !120, !13, !13, !16}
!520 = !{!521, !522, !523, !524, !525}
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "initialize_memory", arg: 1, scope: !517, file: !1, line: 939, type: !120)
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vtype", arg: 2, scope: !517, file: !1, line: 940, type: !13)
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bytes", arg: 3, scope: !517, file: !1, line: 941, type: !13)
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 4, scope: !517, file: !1, line: 942, type: !16)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vtypename", scope: !517, file: !1, line: 944, type: !120)
!526 = !{!527, !528, !529, !530, !531, !532, !533}
!527 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 24, type: !120, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariable(name: "totalnumberGF", scope: !0, file: !1, line: 36, type: !13, isLocal: true, isDefinition: true, variable: i32* @totalnumberGF)
!529 = !DIGlobalVariable(name: "totalnumberGA", scope: !0, file: !1, line: 35, type: !13, isLocal: true, isDefinition: true, variable: i32* @totalnumberGA)
!530 = !DIGlobalVariable(name: "totalstorage", scope: !0, file: !1, line: 33, type: !80, isLocal: true, isDefinition: true, variable: float* @totalstorage)
!531 = !DIGlobalVariable(name: "maxstorage", scope: !0, file: !1, line: 34, type: !80, isLocal: true, isDefinition: true, variable: float* @maxstorage)
!532 = !DIGlobalVariable(name: "numberGF", scope: !0, file: !1, line: 38, type: !13, isLocal: true, isDefinition: true, variable: i32* @numberGF)
!533 = !DIGlobalVariable(name: "numberGA", scope: !0, file: !1, line: 37, type: !13, isLocal: true, isDefinition: true, variable: i32* @numberGA)
!534 = !{i32 2, !"Dwarf Version", i32 2}
!535 = !{i32 2, !"Debug Info Version", i32 700000003}
!536 = !{i32 1, !"PIC Level", i32 2}
!537 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!538 = !DILocation(line: 25, column: 1, scope: !117)
!539 = !DIExpression()
!540 = !DILocation(line: 102, column: 44, scope: !122)
!541 = !DILocation(line: 103, column: 37, scope: !122)
!542 = !DILocation(line: 104, column: 37, scope: !122)
!543 = !DILocation(line: 105, column: 45, scope: !122)
!544 = !DILocation(line: 112, column: 7, scope: !545)
!545 = distinct !DILexicalBlock(scope: !122, file: !1, line: 112, column: 7)
!546 = !DILocation(line: 112, column: 7, scope: !122)
!547 = !DILocation(line: 114, column: 13, scope: !548)
!548 = distinct !DILexicalBlock(scope: !545, file: !1, line: 113, column: 3)
!549 = !DILocation(line: 115, column: 3, scope: !548)
!550 = !DILocation(line: 117, column: 15, scope: !122)
!551 = !DILocation(line: 107, column: 7, scope: !122)
!552 = !DILocation(line: 118, column: 17, scope: !553)
!553 = distinct !DILexicalBlock(scope: !122, file: !1, line: 118, column: 7)
!554 = !DILocation(line: 118, column: 7, scope: !122)
!555 = !DILocation(line: 121, column: 18, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !1, line: 119, column: 3)
!557 = !DILocation(line: 121, column: 33, scope: !556)
!558 = !{!559, !560, i64 32}
!559 = !{!"PGH", !560, i64 0, !563, i64 8, !563, i64 12, !563, i64 16, !563, i64 20, !563, i64 24, !563, i64 28, !560, i64 32, !563, i64 40, !560, i64 48, !563, i64 56, !563, i64 60, !564, i64 64, !564, i64 72, !564, i64 80, !564, i64 88, !563, i64 96, !563, i64 100, !563, i64 104, !563, i64 108, !563, i64 112, !560, i64 120, !560, i64 128, !560, i64 136}
!560 = !{!"any pointer", !561, i64 0}
!561 = !{!"omnipotent char", !562, i64 0}
!562 = !{!"Simple C/C++ TBAA"}
!563 = !{!"int", !561, i64 0}
!564 = !{!"double", !561, i64 0}
!565 = !{!560, !560, i64 0}
!566 = !DILocation(line: 108, column: 8, scope: !122)
!567 = !DILocation(line: 123, column: 13, scope: !568)
!568 = distinct !DILexicalBlock(scope: !556, file: !1, line: 123, column: 9)
!569 = !{!570, !563, i64 32}
!570 = !{!"PGA", !560, i64 0, !563, i64 8, !563, i64 12, !560, i64 16, !560, i64 24, !563, i64 32, !563, i64 36, !560, i64 40, !563, i64 48, !563, i64 52, !560, i64 56, !560, i64 64, !560, i64 72, !560, i64 80, !563, i64 88, !563, i64 92, !560, i64 96}
!571 = !DILocation(line: 123, column: 21, scope: !568)
!572 = !DILocation(line: 123, column: 9, scope: !556)
!573 = !DILocation(line: 125, column: 15, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !1, line: 125, column: 11)
!575 = distinct !DILexicalBlock(scope: !568, file: !1, line: 124, column: 5)
!576 = !DILocation(line: 125, column: 20, scope: !574)
!577 = !DILocation(line: 125, column: 33, scope: !574)
!578 = !{!570, !560, i64 56}
!579 = !DILocation(line: 125, column: 41, scope: !574)
!580 = !{!581, !563, i64 0}
!581 = !{!"PGExtras", !563, i64 0, !560, i64 8, !564, i64 16, !560, i64 24, !560, i64 32, !560, i64 40, !560, i64 48, !563, i64 56, !560, i64 64, !560, i64 72, !560, i64 80, !560, i64 88, !560, i64 96, !561, i64 104, !561, i64 168, !561, i64 232}
!582 = !DILocation(line: 125, column: 27, scope: !574)
!583 = !DILocation(line: 125, column: 11, scope: !575)
!584 = !DILocation(line: 127, column: 19, scope: !585)
!585 = distinct !DILexicalBlock(scope: !574, file: !1, line: 126, column: 7)
!586 = !DILocation(line: 127, column: 31, scope: !585)
!587 = !{!581, !560, i64 48}
!588 = !DILocation(line: 109, column: 14, scope: !122)
!589 = !DILocation(line: 128, column: 7, scope: !585)
!590 = !DILocation(line: 131, column: 9, scope: !591)
!591 = distinct !DILexicalBlock(scope: !574, file: !1, line: 130, column: 7)
!592 = !DILocation(line: 142, column: 9, scope: !593)
!593 = distinct !DILexicalBlock(scope: !553, file: !1, line: 141, column: 3)
!594 = !DILocation(line: 144, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 143, column: 5)
!596 = distinct !DILexicalBlock(scope: !593, file: !1, line: 142, column: 9)
!597 = !DILocation(line: 147, column: 5, scope: !595)
!598 = !DILocation(line: 150, column: 7, scope: !599)
!599 = distinct !DILexicalBlock(scope: !596, file: !1, line: 149, column: 5)
!600 = !DILocation(line: 158, column: 3, scope: !122)
!601 = !DILocation(line: 198, column: 40, scope: !137)
!602 = !DILocation(line: 198, column: 48, scope: !137)
!603 = !DILocation(line: 198, column: 67, scope: !137)
!604 = !DILocation(line: 204, column: 7, scope: !137)
!605 = !DILocation(line: 210, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !137, file: !1, line: 210, column: 7)
!607 = !DILocation(line: 210, column: 7, scope: !137)
!608 = !DILocation(line: 212, column: 13, scope: !609)
!609 = distinct !DILexicalBlock(scope: !606, file: !1, line: 211, column: 3)
!610 = !DILocation(line: 213, column: 3, scope: !609)
!611 = !DILocation(line: 216, column: 15, scope: !137)
!612 = !DILocation(line: 200, column: 7, scope: !137)
!613 = !DILocation(line: 217, column: 17, scope: !614)
!614 = distinct !DILexicalBlock(scope: !137, file: !1, line: 217, column: 7)
!615 = !DILocation(line: 217, column: 7, scope: !137)
!616 = !DILocation(line: 219, column: 14, scope: !617)
!617 = distinct !DILexicalBlock(scope: !614, file: !1, line: 218, column: 3)
!618 = !DILocation(line: 205, column: 8, scope: !137)
!619 = !DILocation(line: 220, column: 17, scope: !617)
!620 = !DILocation(line: 202, column: 7, scope: !137)
!621 = !DILocation(line: 221, column: 19, scope: !622)
!622 = distinct !DILexicalBlock(scope: !617, file: !1, line: 221, column: 9)
!623 = !DILocation(line: 221, column: 9, scope: !617)
!624 = !DILocation(line: 223, column: 37, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !1, line: 222, column: 5)
!626 = !DILocation(line: 223, column: 19, scope: !625)
!627 = !DILocation(line: 203, column: 7, scope: !137)
!628 = !DILocation(line: 224, column: 17, scope: !625)
!629 = !DILocation(line: 224, column: 27, scope: !625)
!630 = !DILocation(line: 224, column: 35, scope: !625)
!631 = !{!561, !561, i64 0}
!632 = !DILocation(line: 201, column: 7, scope: !137)
!633 = !DILocation(line: 225, column: 5, scope: !625)
!634 = !DILocation(line: 226, column: 35, scope: !635)
!635 = distinct !DILexicalBlock(scope: !622, file: !1, line: 226, column: 14)
!636 = !DILocation(line: 228, column: 26, scope: !637)
!637 = distinct !DILexicalBlock(scope: !635, file: !1, line: 227, column: 5)
!638 = !DILocation(line: 228, column: 34, scope: !637)
!639 = !DILocation(line: 228, column: 60, scope: !637)
!640 = !DILocation(line: 229, column: 5, scope: !637)
!641 = !DILocation(line: 233, column: 7, scope: !642)
!642 = distinct !DILexicalBlock(scope: !635, file: !1, line: 231, column: 5)
!643 = !DILocation(line: 236, column: 9, scope: !617)
!644 = !DILocation(line: 243, column: 5, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !1, line: 241, column: 5)
!646 = distinct !DILexicalBlock(scope: !647, file: !1, line: 240, column: 14)
!647 = distinct !DILexicalBlock(scope: !617, file: !1, line: 236, column: 9)
!648 = !DILocation(line: 246, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !646, file: !1, line: 245, column: 5)
!650 = !DILocation(line: 251, column: 9, scope: !651)
!651 = distinct !DILexicalBlock(scope: !614, file: !1, line: 250, column: 3)
!652 = !DILocation(line: 253, column: 7, scope: !653)
!653 = distinct !DILexicalBlock(scope: !654, file: !1, line: 252, column: 5)
!654 = distinct !DILexicalBlock(scope: !651, file: !1, line: 251, column: 9)
!655 = !DILocation(line: 256, column: 5, scope: !653)
!656 = !DILocation(line: 259, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !654, file: !1, line: 258, column: 5)
!658 = !DILocation(line: 265, column: 3, scope: !137)
!659 = !DILocation(line: 304, column: 35, scope: !181)
!660 = !DILocation(line: 304, column: 51, scope: !181)
!661 = !DILocation(line: 306, column: 3, scope: !181)
!662 = !{!663, !560, i64 80}
!663 = !{!"", !560, i64 0, !560, i64 8, !560, i64 16, !560, i64 24, !560, i64 32, !560, i64 40, !560, i64 48, !560, i64 56, !560, i64 64, !560, i64 72, !560, i64 80, !563, i64 88, !563, i64 92, !563, i64 96, !563, i64 100, !563, i64 104, !563, i64 108, !563, i64 112, !563, i64 116, !563, i64 120, !563, i64 124, !563, i64 128, !563, i64 132, !563, i64 136, !563, i64 140, !563, i64 144, !563, i64 148, !563, i64 152, !563, i64 156, !563, i64 160, !563, i64 164, !563, i64 168, !563, i64 172, !563, i64 176, !563, i64 180, !563, i64 184, !563, i64 188, !563, i64 192, !563, i64 196, !563, i64 200, !563, i64 204, !563, i64 208, !563, i64 212, !563, i64 216}
!664 = !DILocation(line: 320, column: 12, scope: !181)
!665 = !DILocation(line: 312, column: 8, scope: !181)
!666 = !DILocation(line: 321, column: 11, scope: !181)
!667 = !DILocation(line: 307, column: 7, scope: !181)
!668 = !DILocation(line: 323, column: 7, scope: !669)
!669 = distinct !DILexicalBlock(scope: !181, file: !1, line: 323, column: 7)
!670 = !DILocation(line: 323, column: 23, scope: !669)
!671 = !DILocation(line: 323, column: 14, scope: !669)
!672 = !DILocation(line: 325, column: 17, scope: !673)
!673 = distinct !DILexicalBlock(scope: !669, file: !1, line: 324, column: 3)
!674 = !DILocation(line: 308, column: 7, scope: !181)
!675 = !DILocation(line: 309, column: 10, scope: !181)
!676 = !DILocation(line: 328, column: 5, scope: !673)
!677 = !DILocation(line: 330, column: 16, scope: !678)
!678 = distinct !DILexicalBlock(scope: !673, file: !1, line: 330, column: 9)
!679 = !{!680, !563, i64 0}
!680 = !{!"", !563, i64 0, !563, i64 4, !563, i64 8, !563, i64 12, !563, i64 16, !563, i64 20, !563, i64 24, !563, i64 28}
!681 = !DILocation(line: 330, column: 9, scope: !673)
!682 = !DILocation(line: 334, column: 54, scope: !683)
!683 = distinct !DILexicalBlock(scope: !678, file: !1, line: 331, column: 5)
!684 = !{!680, !563, i64 20}
!685 = !DILocation(line: 335, column: 54, scope: !683)
!686 = !{!680, !563, i64 24}
!687 = !DILocation(line: 585, column: 48, scope: !367, inlinedAt: !688)
!688 = distinct !DILocation(line: 332, column: 16, scope: !683)
!689 = !DILocation(line: 586, column: 47, scope: !367, inlinedAt: !688)
!690 = !DILocation(line: 587, column: 47, scope: !367, inlinedAt: !688)
!691 = !DILocation(line: 588, column: 47, scope: !367, inlinedAt: !688)
!692 = !DILocation(line: 590, column: 3, scope: !367, inlinedAt: !688)
!693 = !{!663, !560, i64 8}
!694 = !DILocation(line: 595, column: 11, scope: !367, inlinedAt: !688)
!695 = !DILocation(line: 591, column: 7, scope: !367, inlinedAt: !688)
!696 = !DILocation(line: 596, column: 15, scope: !367, inlinedAt: !688)
!697 = !DILocation(line: 591, column: 14, scope: !367, inlinedAt: !688)
!698 = !DILocation(line: 597, column: 10, scope: !367, inlinedAt: !688)
!699 = !DILocation(line: 597, column: 18, scope: !367, inlinedAt: !688)
!700 = !DILocation(line: 592, column: 9, scope: !367, inlinedAt: !688)
!701 = !DILocation(line: 598, column: 12, scope: !367, inlinedAt: !688)
!702 = !DILocation(line: 598, column: 39, scope: !367, inlinedAt: !688)
!703 = !DILocation(line: 591, column: 42, scope: !367, inlinedAt: !688)
!704 = !DILocation(line: 601, column: 7, scope: !367, inlinedAt: !688)
!705 = !DILocation(line: 603, column: 33, scope: !706, inlinedAt: !688)
!706 = distinct !DILexicalBlock(scope: !707, file: !1, line: 603, column: 5)
!707 = distinct !DILexicalBlock(scope: !708, file: !1, line: 603, column: 5)
!708 = distinct !DILexicalBlock(scope: !709, file: !1, line: 602, column: 3)
!709 = distinct !DILexicalBlock(scope: !367, file: !1, line: 601, column: 7)
!710 = !DILocation(line: 605, column: 29, scope: !711, inlinedAt: !688)
!711 = distinct !DILexicalBlock(scope: !712, file: !1, line: 605, column: 7)
!712 = distinct !DILexicalBlock(scope: !713, file: !1, line: 605, column: 7)
!713 = distinct !DILexicalBlock(scope: !706, file: !1, line: 604, column: 5)
!714 = !DILocation(line: 603, column: 5, scope: !707, inlinedAt: !688)
!715 = !DILocation(line: 332, column: 16, scope: !683)
!716 = !DILocation(line: 605, column: 7, scope: !712, inlinedAt: !688)
!717 = !DILocation(line: 607, column: 42, scope: !718, inlinedAt: !688)
!718 = distinct !DILexicalBlock(scope: !711, file: !1, line: 606, column: 7)
!719 = !DILocation(line: 607, column: 24, scope: !718, inlinedAt: !688)
!720 = !DILocation(line: 607, column: 16, scope: !718, inlinedAt: !688)
!721 = !DILocation(line: 610, column: 9, scope: !718, inlinedAt: !688)
!722 = !DILocation(line: 610, column: 36, scope: !718, inlinedAt: !688)
!723 = !DILocation(line: 613, column: 15, scope: !724, inlinedAt: !688)
!724 = distinct !DILexicalBlock(scope: !718, file: !1, line: 613, column: 13)
!725 = !DILocation(line: 613, column: 13, scope: !718, inlinedAt: !688)
!726 = !DILocation(line: 615, column: 11, scope: !727, inlinedAt: !688)
!727 = distinct !DILexicalBlock(scope: !724, file: !1, line: 614, column: 9)
!728 = !DILocation(line: 616, column: 9, scope: !727, inlinedAt: !688)
!729 = !DILocation(line: 341, column: 54, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !1, line: 338, column: 5)
!731 = distinct !DILexicalBlock(scope: !678, file: !1, line: 337, column: 14)
!732 = !DILocation(line: 342, column: 54, scope: !730)
!733 = !DILocation(line: 662, column: 48, scope: !443, inlinedAt: !734)
!734 = distinct !DILocation(line: 339, column: 16, scope: !730)
!735 = !DILocation(line: 663, column: 47, scope: !443, inlinedAt: !734)
!736 = !DILocation(line: 664, column: 47, scope: !443, inlinedAt: !734)
!737 = !DILocation(line: 665, column: 47, scope: !443, inlinedAt: !734)
!738 = !DILocation(line: 667, column: 3, scope: !443, inlinedAt: !734)
!739 = !{!663, !563, i64 172}
!740 = !DILocation(line: 669, column: 7, scope: !443, inlinedAt: !734)
!741 = !DILocation(line: 668, column: 7, scope: !443, inlinedAt: !734)
!742 = !DILocation(line: 671, column: 7, scope: !443, inlinedAt: !734)
!743 = !DILocation(line: 678, column: 29, scope: !744, inlinedAt: !734)
!744 = distinct !DILexicalBlock(scope: !745, file: !1, line: 678, column: 3)
!745 = distinct !DILexicalBlock(scope: !443, file: !1, line: 678, column: 3)
!746 = !DILocation(line: 678, column: 3, scope: !745, inlinedAt: !734)
!747 = !DILocation(line: 678, column: 41, scope: !744, inlinedAt: !734)
!748 = !DILocation(line: 680, column: 27, scope: !749, inlinedAt: !734)
!749 = distinct !DILexicalBlock(scope: !750, file: !1, line: 680, column: 5)
!750 = distinct !DILexicalBlock(scope: !751, file: !1, line: 680, column: 5)
!751 = distinct !DILexicalBlock(scope: !744, file: !1, line: 679, column: 3)
!752 = !DILocation(line: 682, column: 28, scope: !753, inlinedAt: !734)
!753 = distinct !DILexicalBlock(scope: !749, file: !1, line: 681, column: 5)
!754 = !DILocation(line: 699, column: 26, scope: !755, inlinedAt: !734)
!755 = distinct !DILexicalBlock(scope: !756, file: !1, line: 685, column: 7)
!756 = distinct !DILexicalBlock(scope: !753, file: !1, line: 684, column: 11)
!757 = !DILocation(line: 339, column: 16, scope: !730)
!758 = !DILocation(line: 680, column: 5, scope: !750, inlinedAt: !734)
!759 = !DILocation(line: 682, column: 20, scope: !753, inlinedAt: !734)
!760 = !DILocation(line: 672, column: 8, scope: !443, inlinedAt: !734)
!761 = !DILocation(line: 684, column: 17, scope: !756, inlinedAt: !734)
!762 = !DILocation(line: 684, column: 13, scope: !756, inlinedAt: !734)
!763 = !DILocation(line: 684, column: 11, scope: !753, inlinedAt: !734)
!764 = !DILocation(line: 691, column: 9, scope: !755, inlinedAt: !734)
!765 = !DILocation(line: 699, column: 60, scope: !755, inlinedAt: !734)
!766 = !{!570, !560, i64 24}
!767 = !{!559, !560, i64 0}
!768 = !DILocation(line: 699, column: 37, scope: !755, inlinedAt: !734)
!769 = !{!770, !560, i64 128}
!770 = !{!"", !563, i64 0, !563, i64 4, !560, i64 8, !560, i64 16, !560, i64 24, !560, i64 32, !560, i64 40, !560, i64 48, !560, i64 56, !564, i64 64, !560, i64 72, !560, i64 80, !560, i64 88, !560, i64 96, !563, i64 104, !560, i64 112, !564, i64 120, !560, i64 128, !560, i64 136, !560, i64 144}
!771 = !DILocation(line: 699, column: 9, scope: !755, inlinedAt: !734)
!772 = !DILocation(line: 699, column: 54, scope: !755, inlinedAt: !734)
!773 = !DILocation(line: 701, column: 19, scope: !755, inlinedAt: !734)
!774 = !DILocation(line: 702, column: 7, scope: !755, inlinedAt: !734)
!775 = !DILocation(line: 705, column: 60, scope: !776, inlinedAt: !734)
!776 = distinct !DILexicalBlock(scope: !756, file: !1, line: 704, column: 7)
!777 = !DILocation(line: 705, column: 26, scope: !776, inlinedAt: !734)
!778 = !DILocation(line: 705, column: 37, scope: !776, inlinedAt: !734)
!779 = !DILocation(line: 705, column: 9, scope: !776, inlinedAt: !734)
!780 = !DILocation(line: 705, column: 54, scope: !776, inlinedAt: !734)
!781 = !DILocation(line: 706, column: 17, scope: !776, inlinedAt: !734)
!782 = !DILocation(line: 711, column: 16, scope: !783, inlinedAt: !734)
!783 = distinct !DILexicalBlock(scope: !443, file: !1, line: 711, column: 7)
!784 = !DILocation(line: 711, column: 34, scope: !783, inlinedAt: !734)
!785 = !DILocation(line: 711, column: 20, scope: !783, inlinedAt: !734)
!786 = !DILocation(line: 713, column: 5, scope: !787, inlinedAt: !734)
!787 = distinct !DILexicalBlock(scope: !783, file: !1, line: 712, column: 3)
!788 = !DILocation(line: 670, column: 7, scope: !443, inlinedAt: !734)
!789 = !DILocation(line: 715, column: 3, scope: !787, inlinedAt: !734)
!790 = !DILocation(line: 718, column: 14, scope: !791, inlinedAt: !734)
!791 = distinct !DILexicalBlock(scope: !783, file: !1, line: 717, column: 3)
!792 = !DILocation(line: 310, column: 7, scope: !181)
!793 = !DILocation(line: 343, column: 12, scope: !794)
!794 = distinct !DILexicalBlock(scope: !730, file: !1, line: 343, column: 11)
!795 = !DILocation(line: 343, column: 46, scope: !794)
!796 = !DILocation(line: 346, column: 22, scope: !797)
!797 = distinct !DILexicalBlock(scope: !794, file: !1, line: 344, column: 7)
!798 = !DILocation(line: 346, column: 30, scope: !797)
!799 = !DILocation(line: 311, column: 8, scope: !181)
!800 = !DILocation(line: 347, column: 20, scope: !801)
!801 = distinct !DILexicalBlock(scope: !797, file: !1, line: 347, column: 13)
!802 = !DILocation(line: 347, column: 30, scope: !801)
!803 = !DILocation(line: 349, column: 36, scope: !804)
!804 = distinct !DILexicalBlock(scope: !801, file: !1, line: 348, column: 9)
!805 = !DILocation(line: 349, column: 53, scope: !804)
!806 = !DILocation(line: 349, column: 44, scope: !804)
!807 = !DILocation(line: 347, column: 13, scope: !797)
!808 = !DILocation(line: 349, column: 26, scope: !804)
!809 = !{!563, !563, i64 0}
!810 = !DILocation(line: 350, column: 9, scope: !804)
!811 = !DILocation(line: 353, column: 26, scope: !812)
!812 = distinct !DILexicalBlock(scope: !801, file: !1, line: 352, column: 9)
!813 = !DILocation(line: 355, column: 30, scope: !797)
!814 = !DILocation(line: 355, column: 38, scope: !797)
!815 = !{!581, !563, i64 56}
!816 = !DILocation(line: 355, column: 52, scope: !797)
!817 = !{!570, !563, i64 48}
!818 = !DILocation(line: 355, column: 46, scope: !797)
!819 = !DILocation(line: 355, column: 60, scope: !797)
!820 = !DILocation(line: 356, column: 47, scope: !797)
!821 = !DILocation(line: 355, column: 25, scope: !797)
!822 = !DILocation(line: 356, column: 65, scope: !797)
!823 = !DILocation(line: 355, column: 22, scope: !797)
!824 = !{!825, !825, i64 0}
!825 = !{!"float", !561, i64 0}
!826 = !DILocation(line: 358, column: 28, scope: !827)
!827 = distinct !DILexicalBlock(scope: !797, file: !1, line: 358, column: 13)
!828 = !DILocation(line: 358, column: 26, scope: !827)
!829 = !DILocation(line: 358, column: 13, scope: !797)
!830 = !DILocation(line: 360, column: 22, scope: !831)
!831 = distinct !DILexicalBlock(scope: !827, file: !1, line: 359, column: 9)
!832 = !DILocation(line: 360, column: 20, scope: !831)
!833 = !DILocation(line: 361, column: 22, scope: !831)
!834 = !DILocation(line: 361, column: 20, scope: !831)
!835 = !DILocation(line: 362, column: 22, scope: !831)
!836 = !DILocation(line: 363, column: 9, scope: !831)
!837 = !DILocation(line: 366, column: 13, scope: !838)
!838 = distinct !DILexicalBlock(scope: !797, file: !1, line: 366, column: 13)
!839 = !DILocation(line: 366, column: 13, scope: !797)
!840 = !DILocation(line: 370, column: 34, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !1, line: 367, column: 9)
!842 = !DILocation(line: 370, column: 49, scope: !841)
!843 = !DILocation(line: 370, column: 64, scope: !841)
!844 = !DILocation(line: 368, column: 11, scope: !841)
!845 = !DILocation(line: 371, column: 9, scope: !841)
!846 = !DILocation(line: 377, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !731, file: !1, line: 376, column: 5)
!848 = !DILocation(line: 384, column: 9, scope: !849)
!849 = distinct !DILexicalBlock(scope: !669, file: !1, line: 383, column: 3)
!850 = !DILocation(line: 386, column: 7, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !1, line: 385, column: 5)
!852 = distinct !DILexicalBlock(scope: !849, file: !1, line: 384, column: 9)
!853 = !DILocation(line: 390, column: 5, scope: !851)
!854 = !DILocation(line: 393, column: 7, scope: !855)
!855 = distinct !DILexicalBlock(scope: !852, file: !1, line: 392, column: 5)
!856 = !DILocation(line: 399, column: 26, scope: !181)
!857 = !DILocation(line: 433, column: 36, scope: !270)
!858 = !DILocation(line: 433, column: 52, scope: !270)
!859 = !DILocation(line: 435, column: 3, scope: !270)
!860 = !DILocation(line: 450, column: 11, scope: !270)
!861 = !DILocation(line: 436, column: 7, scope: !270)
!862 = !DILocation(line: 437, column: 10, scope: !270)
!863 = !DILocation(line: 451, column: 3, scope: !270)
!864 = !DILocation(line: 454, column: 15, scope: !270)
!865 = !DILocation(line: 440, column: 7, scope: !270)
!866 = !DILocation(line: 456, column: 25, scope: !270)
!867 = !DILocation(line: 456, column: 40, scope: !270)
!868 = !DILocation(line: 439, column: 10, scope: !270)
!869 = !DILocation(line: 441, column: 7, scope: !270)
!870 = !DILocation(line: 438, column: 18, scope: !270)
!871 = !DILocation(line: 462, column: 14, scope: !872)
!872 = distinct !DILexicalBlock(scope: !270, file: !1, line: 462, column: 7)
!873 = !DILocation(line: 462, column: 35, scope: !872)
!874 = !DILocation(line: 464, column: 50, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !1, line: 464, column: 5)
!876 = distinct !DILexicalBlock(scope: !877, file: !1, line: 464, column: 5)
!877 = distinct !DILexicalBlock(scope: !872, file: !1, line: 463, column: 3)
!878 = !DILocation(line: 464, column: 31, scope: !875)
!879 = !DILocation(line: 464, column: 5, scope: !876)
!880 = !DILocation(line: 466, column: 38, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !1, line: 466, column: 7)
!882 = distinct !DILexicalBlock(scope: !883, file: !1, line: 466, column: 7)
!883 = distinct !DILexicalBlock(scope: !875, file: !1, line: 465, column: 5)
!884 = !DILocation(line: 466, column: 29, scope: !881)
!885 = !DILocation(line: 466, column: 7, scope: !882)
!886 = !DILocation(line: 468, column: 53, scope: !887)
!887 = distinct !DILexicalBlock(scope: !881, file: !1, line: 467, column: 7)
!888 = !DILocation(line: 468, column: 22, scope: !887)
!889 = !DILocation(line: 468, column: 19, scope: !887)
!890 = !DILocation(line: 464, column: 42, scope: !875)
!891 = !DILocation(line: 474, column: 42, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !1, line: 473, column: 3)
!893 = distinct !DILexicalBlock(scope: !872, file: !1, line: 472, column: 12)
!894 = !{!680, !563, i64 4}
!895 = !DILocation(line: 474, column: 17, scope: !892)
!896 = !DILocation(line: 438, column: 7, scope: !270)
!897 = !DILocation(line: 440, column: 18, scope: !270)
!898 = !DILocation(line: 475, column: 50, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !1, line: 475, column: 5)
!900 = distinct !DILexicalBlock(scope: !892, file: !1, line: 475, column: 5)
!901 = !DILocation(line: 475, column: 31, scope: !899)
!902 = !DILocation(line: 475, column: 5, scope: !900)
!903 = !DILocation(line: 477, column: 38, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !1, line: 477, column: 7)
!905 = distinct !DILexicalBlock(scope: !906, file: !1, line: 477, column: 7)
!906 = distinct !DILexicalBlock(scope: !899, file: !1, line: 476, column: 5)
!907 = !DILocation(line: 480, column: 13, scope: !908)
!908 = distinct !DILexicalBlock(scope: !909, file: !1, line: 480, column: 13)
!909 = distinct !DILexicalBlock(scope: !904, file: !1, line: 478, column: 7)
!910 = !DILocation(line: 477, column: 29, scope: !904)
!911 = !DILocation(line: 477, column: 7, scope: !905)
!912 = !DILocation(line: 479, column: 25, scope: !909)
!913 = !DILocation(line: 442, column: 9, scope: !270)
!914 = !DILocation(line: 480, column: 29, scope: !908)
!915 = !DILocation(line: 480, column: 13, scope: !909)
!916 = !DILocation(line: 482, column: 27, scope: !917)
!917 = distinct !DILexicalBlock(scope: !908, file: !1, line: 481, column: 9)
!918 = !DILocation(line: 483, column: 9, scope: !917)
!919 = !DILocation(line: 486, column: 20, scope: !920)
!920 = distinct !DILexicalBlock(scope: !908, file: !1, line: 485, column: 9)
!921 = !DILocation(line: 475, column: 42, scope: !899)
!922 = !DILocation(line: 493, column: 5, scope: !923)
!923 = distinct !DILexicalBlock(scope: !893, file: !1, line: 492, column: 3)
!924 = !DILocation(line: 498, column: 8, scope: !925)
!925 = distinct !DILexicalBlock(scope: !270, file: !1, line: 498, column: 7)
!926 = !DILocation(line: 498, column: 52, scope: !925)
!927 = !DILocation(line: 498, column: 42, scope: !925)
!928 = !DILocation(line: 500, column: 19, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !1, line: 500, column: 9)
!930 = distinct !DILexicalBlock(scope: !925, file: !1, line: 499, column: 3)
!931 = !DILocation(line: 500, column: 9, scope: !930)
!932 = !DILocation(line: 504, column: 18, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !1, line: 504, column: 11)
!934 = distinct !DILexicalBlock(scope: !929, file: !1, line: 501, column: 5)
!935 = !DILocation(line: 504, column: 11, scope: !934)
!936 = !DILocation(line: 514, column: 54, scope: !934)
!937 = !DILocation(line: 506, column: 34, scope: !938)
!938 = distinct !DILexicalBlock(scope: !933, file: !1, line: 505, column: 7)
!939 = !DILocation(line: 506, column: 24, scope: !938)
!940 = !DILocation(line: 507, column: 7, scope: !938)
!941 = !DILocation(line: 510, column: 34, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !1, line: 509, column: 7)
!943 = distinct !DILexicalBlock(scope: !933, file: !1, line: 508, column: 16)
!944 = !DILocation(line: 510, column: 24, scope: !942)
!945 = !DILocation(line: 511, column: 7, scope: !942)
!946 = !DILocation(line: 512, column: 24, scope: !934)
!947 = !DILocation(line: 512, column: 49, scope: !934)
!948 = !DILocation(line: 512, column: 57, scope: !934)
!949 = !DILocation(line: 513, column: 49, scope: !934)
!950 = !DILocation(line: 512, column: 65, scope: !934)
!951 = !DILocation(line: 514, column: 31, scope: !934)
!952 = !DILocation(line: 513, column: 57, scope: !934)
!953 = !DILocation(line: 514, column: 45, scope: !934)
!954 = !DILocation(line: 512, column: 23, scope: !934)
!955 = !DILocation(line: 514, column: 63, scope: !934)
!956 = !DILocation(line: 512, column: 20, scope: !934)
!957 = !DILocation(line: 516, column: 11, scope: !958)
!958 = distinct !DILexicalBlock(scope: !934, file: !1, line: 516, column: 11)
!959 = !DILocation(line: 516, column: 11, scope: !934)
!960 = !DILocation(line: 520, column: 32, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !1, line: 517, column: 7)
!962 = !DILocation(line: 520, column: 47, scope: !961)
!963 = !DILocation(line: 520, column: 62, scope: !961)
!964 = !DILocation(line: 518, column: 9, scope: !961)
!965 = !DILocation(line: 521, column: 7, scope: !961)
!966 = !DILocation(line: 523, column: 34, scope: !967)
!967 = distinct !DILexicalBlock(scope: !929, file: !1, line: 523, column: 14)
!968 = !DILocation(line: 523, column: 24, scope: !967)
!969 = !DILocation(line: 523, column: 14, scope: !929)
!970 = !DILocation(line: 526, column: 11, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !1, line: 526, column: 11)
!972 = distinct !DILexicalBlock(scope: !967, file: !1, line: 524, column: 5)
!973 = !DILocation(line: 526, column: 11, scope: !972)
!974 = !DILocation(line: 528, column: 9, scope: !975)
!975 = distinct !DILexicalBlock(scope: !971, file: !1, line: 527, column: 7)
!976 = !DILocation(line: 529, column: 7, scope: !975)
!977 = !DILocation(line: 533, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !967, file: !1, line: 532, column: 5)
!979 = !DILocation(line: 537, column: 26, scope: !270)
!980 = !DILocation(line: 873, column: 54, scope: !358)
!981 = !DILocation(line: 877, column: 16, scope: !358)
!982 = !DILocation(line: 877, column: 24, scope: !358)
!983 = !DILocation(line: 875, column: 7, scope: !358)
!984 = !DILocation(line: 879, column: 19, scope: !985)
!985 = distinct !DILexicalBlock(scope: !358, file: !1, line: 879, column: 7)
!986 = !DILocation(line: 879, column: 7, scope: !358)
!987 = !DILocation(line: 888, column: 12, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !1, line: 888, column: 8)
!989 = distinct !DILexicalBlock(scope: !985, file: !1, line: 880, column: 3)
!990 = !{!570, !563, i64 88}
!991 = !DILocation(line: 888, column: 24, scope: !988)
!992 = !DILocation(line: 888, column: 28, scope: !988)
!993 = !DILocation(line: 888, column: 35, scope: !988)
!994 = !{!570, !563, i64 92}
!995 = !DILocation(line: 888, column: 48, scope: !988)
!996 = !DILocation(line: 888, column: 8, scope: !989)
!997 = !DILocation(line: 890, column: 22, scope: !998)
!998 = distinct !DILexicalBlock(scope: !988, file: !1, line: 889, column: 5)
!999 = !{!570, !560, i64 16}
!1000 = !DILocation(line: 890, column: 11, scope: !998)
!1001 = !DILocation(line: 890, column: 16, scope: !998)
!1002 = !DILocation(line: 891, column: 5, scope: !998)
!1003 = !DILocation(line: 894, column: 15, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 894, column: 11)
!1005 = distinct !DILexicalBlock(scope: !988, file: !1, line: 893, column: 5)
!1006 = !DILocation(line: 894, column: 11, scope: !1004)
!1007 = !DILocation(line: 894, column: 11, scope: !1005)
!1008 = !DILocation(line: 896, column: 9, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 895, column: 7)
!1010 = !DILocation(line: 897, column: 7, scope: !1009)
!1011 = !DILocation(line: 898, column: 37, scope: !1005)
!1012 = !DILocation(line: 898, column: 33, scope: !1005)
!1013 = !DILocation(line: 898, column: 22, scope: !1005)
!1014 = !DILocation(line: 898, column: 20, scope: !1005)
!1015 = !DILocation(line: 899, column: 11, scope: !1005)
!1016 = !DILocation(line: 899, column: 16, scope: !1005)
!1017 = !DILocation(line: 902, column: 17, scope: !989)
!1018 = !DILocation(line: 903, column: 3, scope: !989)
!1019 = !DILocation(line: 905, column: 3, scope: !358)
!1020 = !DILocation(line: 764, column: 53, scope: !346)
!1021 = !DILocation(line: 765, column: 46, scope: !346)
!1022 = !DILocation(line: 766, column: 54, scope: !346)
!1023 = !DILocation(line: 767, column: 46, scope: !346)
!1024 = !DILocation(line: 768, column: 46, scope: !346)
!1025 = !DILocation(line: 769, column: 46, scope: !346)
!1026 = !DILocation(line: 770, column: 46, scope: !346)
!1027 = !DILocation(line: 772, column: 7, scope: !346)
!1028 = !DILocation(line: 783, column: 11, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !346, file: !1, line: 783, column: 7)
!1030 = !DILocation(line: 783, column: 19, scope: !1029)
!1031 = !DILocation(line: 783, column: 7, scope: !346)
!1032 = !DILocation(line: 792, column: 12, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 792, column: 8)
!1034 = distinct !DILexicalBlock(scope: !1029, file: !1, line: 784, column: 3)
!1035 = !DILocation(line: 792, column: 24, scope: !1033)
!1036 = !DILocation(line: 792, column: 28, scope: !1033)
!1037 = !DILocation(line: 792, column: 35, scope: !1033)
!1038 = !DILocation(line: 792, column: 48, scope: !1033)
!1039 = !DILocation(line: 792, column: 8, scope: !1034)
!1040 = !DILocation(line: 794, column: 31, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 793, column: 5)
!1042 = !{!570, !560, i64 96}
!1043 = !DILocation(line: 794, column: 44, scope: !1041)
!1044 = !DILocation(line: 794, column: 56, scope: !1041)
!1045 = !DILocation(line: 794, column: 64, scope: !1041)
!1046 = !DILocation(line: 794, column: 78, scope: !1041)
!1047 = !DILocation(line: 794, column: 72, scope: !1041)
!1048 = !DILocation(line: 794, column: 86, scope: !1041)
!1049 = !DILocation(line: 794, column: 50, scope: !1041)
!1050 = !DILocation(line: 794, column: 11, scope: !1041)
!1051 = !DILocation(line: 794, column: 16, scope: !1041)
!1052 = !DILocation(line: 796, column: 5, scope: !1041)
!1053 = !DILocation(line: 801, column: 15, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 801, column: 11)
!1055 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 798, column: 5)
!1056 = !DILocation(line: 801, column: 11, scope: !1054)
!1057 = !DILocation(line: 801, column: 11, scope: !1055)
!1058 = !DILocation(line: 803, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 802, column: 7)
!1060 = !DILocation(line: 804, column: 22, scope: !1059)
!1061 = !DILocation(line: 805, column: 7, scope: !1059)
!1062 = !DILocation(line: 807, column: 15, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 807, column: 11)
!1064 = !DILocation(line: 807, column: 23, scope: !1063)
!1065 = !DILocation(line: 807, column: 37, scope: !1063)
!1066 = !DILocation(line: 807, column: 31, scope: !1063)
!1067 = !DILocation(line: 807, column: 45, scope: !1063)
!1068 = !DILocation(line: 807, column: 11, scope: !1055)
!1069 = !DILocation(line: 811, column: 57, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 808, column: 7)
!1071 = !{!570, !560, i64 0}
!1072 = !DILocation(line: 809, column: 9, scope: !1070)
!1073 = !DILocation(line: 813, column: 7, scope: !1070)
!1074 = !DILocation(line: 812, column: 18, scope: !1070)
!1075 = !DILocation(line: 829, column: 20, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 829, column: 11)
!1077 = !DILocation(line: 814, column: 18, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 814, column: 16)
!1079 = !DILocation(line: 814, column: 16, scope: !1063)
!1080 = !DILocation(line: 817, column: 28, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 815, column: 7)
!1082 = !DILocation(line: 817, column: 20, scope: !1081)
!1083 = !DILocation(line: 817, column: 13, scope: !1081)
!1084 = !DILocation(line: 817, column: 18, scope: !1081)
!1085 = !DILocation(line: 818, column: 22, scope: !1081)
!1086 = !DILocation(line: 819, column: 7, scope: !1081)
!1087 = !DILocation(line: 823, column: 42, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 821, column: 7)
!1089 = !{!570, !563, i64 12}
!1090 = !DILocation(line: 824, column: 78, scope: !1088)
!1091 = !DILocation(line: 824, column: 72, scope: !1088)
!1092 = !DILocation(line: 824, column: 38, scope: !1088)
!1093 = !DILocation(line: 823, column: 20, scope: !1088)
!1094 = !DILocation(line: 823, column: 13, scope: !1088)
!1095 = !DILocation(line: 823, column: 18, scope: !1088)
!1096 = !DILocation(line: 829, column: 15, scope: !1076)
!1097 = !DILocation(line: 829, column: 11, scope: !1076)
!1098 = !DILocation(line: 829, column: 25, scope: !1076)
!1099 = !DILocation(line: 829, column: 11, scope: !1055)
!1100 = !DILocation(line: 831, column: 55, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1076, file: !1, line: 830, column: 7)
!1102 = !{!570, !563, i64 52}
!1103 = !DILocation(line: 832, column: 36, scope: !1101)
!1104 = !DILocation(line: 832, column: 44, scope: !1101)
!1105 = !DILocation(line: 832, column: 58, scope: !1101)
!1106 = !DILocation(line: 832, column: 52, scope: !1101)
!1107 = !DILocation(line: 832, column: 71, scope: !1101)
!1108 = !DILocation(line: 831, column: 9, scope: !1101)
!1109 = !DILocation(line: 833, column: 7, scope: !1101)
!1110 = !DILocation(line: 836, column: 35, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 836, column: 9)
!1112 = !DILocation(line: 836, column: 13, scope: !1111)
!1113 = !DILocation(line: 836, column: 21, scope: !1111)
!1114 = !DILocation(line: 836, column: 29, scope: !1111)
!1115 = !DILocation(line: 836, column: 43, scope: !1111)
!1116 = !DILocation(line: 836, column: 47, scope: !1111)
!1117 = !DILocation(line: 836, column: 54, scope: !1111)
!1118 = !DILocation(line: 836, column: 63, scope: !1111)
!1119 = !DILocation(line: 836, column: 9, scope: !1034)
!1120 = !DILocation(line: 840, column: 36, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 837, column: 5)
!1122 = !DILocation(line: 840, column: 46, scope: !1121)
!1123 = !{!570, !563, i64 8}
!1124 = !DILocation(line: 838, column: 7, scope: !1121)
!1125 = !DILocation(line: 842, column: 5, scope: !1121)
!1126 = !DILocation(line: 845, column: 15, scope: !346)
!1127 = !DILocation(line: 847, column: 3, scope: !346)
!1128 = !DILocation(line: 939, column: 48, scope: !517)
!1129 = !DILocation(line: 940, column: 40, scope: !517)
!1130 = !DILocation(line: 941, column: 40, scope: !517)
!1131 = !DILocation(line: 942, column: 42, scope: !517)
!1132 = !DILocation(line: 948, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !517, file: !1, line: 948, column: 7)
!1134 = !DILocation(line: 948, column: 7, scope: !517)
!1135 = !DILocation(line: 950, column: 5, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 949, column: 3)
!1137 = !DILocation(line: 951, column: 3, scope: !1136)
!1138 = !DILocation(line: 953, column: 12, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 953, column: 12)
!1140 = !DILocation(line: 953, column: 12, scope: !1133)
!1141 = !DILocation(line: 955, column: 17, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1139, file: !1, line: 954, column: 3)
!1143 = !DILocation(line: 944, column: 15, scope: !517)
!1144 = !DILocation(line: 956, column: 9, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 956, column: 9)
!1146 = !DILocation(line: 956, column: 58, scope: !1145)
!1147 = !DILocation(line: 956, column: 63, scope: !1145)
!1148 = !DILocation(line: 957, column: 9, scope: !1145)
!1149 = !DILocation(line: 957, column: 58, scope: !1145)
!1150 = !DILocation(line: 956, column: 9, scope: !1142)
!1151 = !DILocation(line: 959, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 958, column: 5)
!1153 = !DILocation(line: 960, column: 5, scope: !1152)
!1154 = !DILocation(line: 962, column: 14, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1139, file: !1, line: 962, column: 12)
!1156 = !DILocation(line: 962, column: 12, scope: !1139)
!1157 = !DILocation(line: 964, column: 5, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 963, column: 3)
!1159 = !DILocation(line: 967, column: 3, scope: !1158)
!1160 = !DILocation(line: 968, column: 1, scope: !517)
!1161 = !DILocation(line: 982, column: 3, scope: !364)
!1162 = !DILocation(line: 983, column: 61, scope: !364)
!1163 = !DILocation(line: 983, column: 3, scope: !364)
!1164 = !DILocation(line: 984, column: 72, scope: !364)
!1165 = !DILocation(line: 984, column: 81, scope: !364)
!1166 = !DILocation(line: 984, column: 3, scope: !364)
!1167 = !DILocation(line: 985, column: 1, scope: !364)
