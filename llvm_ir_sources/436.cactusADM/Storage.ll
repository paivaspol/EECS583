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
  ret i8* getelementptr inbounds ([87 x i8]* @.str23, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32* @PUGH_ArrayGroupSize(%struct.cGH* %GH, i32 %dir, i32 %group, i8* %groupname) #1 {
  %1 = icmp ne i8* %groupname, null
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #7
  br label %4

; <label>:4                                       ; preds = %2, %0
  %.0 = phi i32 [ %3, %2 ], [ %group, %0 ]
  %5 = tail call i32 @CCTK_FirstVarIndexI(i32 %.0) #7
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %34

; <label>:7                                       ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7
  %10 = getelementptr inbounds %struct.PGH* %9, i64 0, i32 7
  %11 = load i8**** %10, align 8, !tbaa !2
  %12 = getelementptr inbounds i8*** %11, i64 %8
  %13 = bitcast i8*** %12 to %struct.PGA***
  %14 = load %struct.PGA*** %13, align 8, !tbaa !9
  %15 = load %struct.PGA** %14, align 8, !tbaa !9
  %16 = getelementptr inbounds %struct.PGA* %15, i64 0, i32 5
  %17 = load i32* %16, align 4, !tbaa !10
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %39

; <label>:19                                      ; preds = %7
  %20 = icmp sgt i32 %dir, -1
  br i1 %20, label %21, label %32

; <label>:21                                      ; preds = %19
  %22 = getelementptr inbounds %struct.PGA* %15, i64 0, i32 10
  %23 = load %struct.PGExtras** %22, align 8, !tbaa !12
  %24 = getelementptr inbounds %struct.PGExtras* %23, i64 0, i32 0
  %25 = load i32* %24, align 4, !tbaa !13
  %26 = icmp sgt i32 %25, %dir
  br i1 %26, label %27, label %32

; <label>:27                                      ; preds = %21
  %28 = sext i32 %dir to i64
  %29 = getelementptr inbounds %struct.PGExtras* %23, i64 0, i32 6
  %30 = load i32** %29, align 8, !tbaa !15
  %31 = getelementptr inbounds i32* %30, i64 %28
  br label %39

; <label>:32                                      ; preds = %21, %19
  %33 = tail call i32 @CCTK_Warn(i32 1, i32 131, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str2, i64 0, i64 0)) #7
  br label %39

; <label>:34                                      ; preds = %4
  br i1 %1, label %35, label %37

; <label>:35                                      ; preds = %34
  %36 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 144, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0), i8* %groupname) #7
  br label %39

; <label>:37                                      ; preds = %34
  %38 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 150, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), i32 %.0) #7
  br label %39

; <label>:39                                      ; preds = %35, %37, %7, %32, %27
  %retval.0 = phi i32* [ %31, %27 ], [ null, %32 ], [ @_cctk_one, %7 ], [ null, %37 ], [ null, %35 ]
  ret i32* %retval.0
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
  %1 = icmp ne i8* %groupname, null
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #7
  br label %4

; <label>:4                                       ; preds = %2, %0
  %.0 = phi i32 [ %3, %2 ], [ %group, %0 ]
  %5 = tail call i32 @CCTK_FirstVarIndexI(i32 %.0) #7
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %42

; <label>:7                                       ; preds = %4
  %8 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7
  %9 = tail call i32 @CCTK_GroupTypeI(i32 %.0) #7
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %24

; <label>:11                                      ; preds = %7
  %12 = tail call i32 @CCTK_VarTypeI(i32 %5) #7
  %13 = tail call i32 @CCTK_VarTypeSize(i32 %12) #7
  %14 = sext i32 %13 to i64
  %15 = sext i32 %5 to i64
  %16 = getelementptr inbounds %struct.PGH* %8, i64 0, i32 7
  %17 = load i8**** %16, align 8, !tbaa !2
  %18 = getelementptr inbounds i8*** %17, i64 %15
  %19 = load i8*** %18, align 8, !tbaa !9
  %20 = load i8** %19, align 8, !tbaa !9
  %21 = getelementptr inbounds i8* %20, i64 %14
  %22 = load i8* %21, align 1, !tbaa !16
  %23 = sext i8 %22 to i32
  br label %38

; <label>:24                                      ; preds = %7
  %25 = and i32 %9, -2
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %.thread

; <label>:27                                      ; preds = %24
  %28 = sext i32 %5 to i64
  %29 = getelementptr inbounds %struct.PGH* %8, i64 0, i32 7
  %30 = load i8**** %29, align 8, !tbaa !2
  %31 = getelementptr inbounds i8*** %30, i64 %28
  %32 = bitcast i8*** %31 to %struct.PGA***
  %33 = load %struct.PGA*** %32, align 8, !tbaa !9
  %34 = load %struct.PGA** %33, align 8, !tbaa !9
  %35 = getelementptr inbounds %struct.PGA* %34, i64 0, i32 5
  %36 = load i32* %35, align 4, !tbaa !10
  br label %38

.thread:                                          ; preds = %24
  %37 = tail call i32 @CCTK_Warn(i32 1, i32 233, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str5, i64 0, i64 0)) #7
  br label %40

; <label>:38                                      ; preds = %27, %11
  %storage.0 = phi i32 [ %23, %11 ], [ %36, %27 ]
  switch i32 %storage.0, label %40 [
    i32 1, label %47
    i32 0, label %39
  ]

; <label>:39                                      ; preds = %38
  br label %47

; <label>:40                                      ; preds = %.thread, %38
  %41 = tail call i32 @CCTK_Warn(i32 1, i32 246, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str6, i64 0, i64 0)) #7
  br label %47

; <label>:42                                      ; preds = %4
  br i1 %1, label %43, label %45

; <label>:43                                      ; preds = %42
  %44 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 253, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0), i8* %groupname) #7
  br label %47

; <label>:45                                      ; preds = %42
  %46 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 259, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), i32 %.0) #7
  br label %47

; <label>:47                                      ; preds = %38, %43, %45, %40, %39
  %retval.0 = phi i32 [ 0, %39 ], [ -1, %40 ], [ -1, %43 ], [ -1, %45 ], [ 1, %38 ]
  ret i32 %retval.0
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
  %1 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 10), align 8, !tbaa !17
  %2 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7
  %3 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #7
  %4 = icmp ne %struct.PGH* %2, null
  %5 = icmp sgt i32 %3, -1
  %or.cond = and i1 %4, %5
  br i1 %or.cond, label %6, label %155

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @CCTK_FirstVarIndexI(i32 %3) #7
  %8 = call i32 @CCTK_GroupData(i32 %3, %struct.cGroup* %pgroup) #7
  %9 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0
  %10 = load i32* %9, align 4, !tbaa !19
  switch i32 %10, label %153 [
    i32 1, label %11
    i32 2, label %46
    i32 3, label %46
  ]

; <label>:11                                      ; preds = %6
  %12 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5
  %13 = load i32* %12, align 4, !tbaa !21
  %14 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6
  %15 = load i32* %14, align 4, !tbaa !22
  %16 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 1), align 8, !tbaa !23
  %17 = call i32 @CCTK_VarTypeI(i32 %7) #7
  %18 = call i32 @CCTK_VarTypeSize(i32 %17) #7
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds %struct.PGH* %2, i64 0, i32 7
  %21 = load i8**** %20, align 8, !tbaa !2
  %22 = getelementptr inbounds i8*** %21, i64 %19
  %23 = load i8*** %22, align 8, !tbaa !9
  %24 = load i8** %23, align 8, !tbaa !9
  %25 = sext i32 %18 to i64
  %26 = getelementptr inbounds i8* %24, i64 %25
  %27 = load i8* %26, align 1, !tbaa !16
  %28 = icmp eq i8 %27, 1
  %29 = zext i1 %28 to i32
  %.not.i = xor i1 %28, true
  %30 = icmp sgt i32 %13, 0
  %or.cond.i = and i1 %30, %.not.i
  br i1 %or.cond.i, label %.preheader.lr.ph.i, label %PUGH_EnableScalarGroupStorage.exit

.preheader.lr.ph.i:                               ; preds = %11
  %31 = icmp sgt i32 %15, 0
  %32 = add i32 %15, -1
  %33 = add i32 %13, -1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %indvars.iv4.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next5.i, %._crit_edge.i ]
  br i1 %31, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %34 = add nsw i64 %indvars.iv4.i, %19
  br label %35

; <label>:35                                      ; preds = %45, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %45 ]
  %36 = load i8**** %20, align 8, !tbaa !2
  %37 = getelementptr inbounds i8*** %36, i64 %34
  %38 = load i8*** %37, align 8, !tbaa !9
  %39 = getelementptr inbounds i8** %38, i64 %indvars.iv.i
  %40 = load i8** %39, align 8, !tbaa !9
  %41 = getelementptr inbounds i8* %40, i64 %25
  store i8 1, i8* %41, align 1, !tbaa !16
  %42 = call i32 @CCTK_Equals(i8* %16, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0)) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %35
  call fastcc void @PUGH_InitializeMemory(i8* %16, i32 %17, i32 %18, i8* %40) #7
  br label %45

; <label>:45                                      ; preds = %44, %35
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %32
  br i1 %exitcond, label %._crit_edge.i, label %35

._crit_edge.i:                                    ; preds = %45, %.preheader.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %lftr.wideiv13 = trunc i64 %indvars.iv4.i to i32
  %exitcond14 = icmp eq i32 %lftr.wideiv13, %33
  br i1 %exitcond14, label %PUGH_EnableScalarGroupStorage.exit, label %.preheader.i

; <label>:46                                      ; preds = %6, %6
  %47 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5
  %48 = load i32* %47, align 4, !tbaa !21
  %49 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6
  %50 = load i32* %49, align 4, !tbaa !22
  %51 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 1), align 8, !tbaa !23
  %52 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 32), align 4, !tbaa !24
  %53 = icmp sgt i32 %48, 0
  br i1 %53, label %.preheader.lr.ph.i4, label %._crit_edge9.thread.i

.preheader.lr.ph.i4:                              ; preds = %46
  %54 = add nsw i32 %48, %7
  %55 = icmp sgt i32 %50, 0
  %56 = getelementptr inbounds %struct.PGH* %2, i64 0, i32 7
  %57 = bitcast %struct.PGH* %2 to %struct.cGH**
  %58 = add i32 %50, -1
  %59 = sext i32 %7 to i64
  %60 = sext i32 %54 to i64
  br label %.preheader.i5

.preheader.i5:                                    ; preds = %._crit_edge.i11, %.preheader.lr.ph.i4
  %indvars.iv12.i = phi i64 [ %59, %.preheader.lr.ph.i4 ], [ %indvars.iv.next13.i, %._crit_edge.i11 ]
  %nstorage.08.i = phi i32 [ 0, %.preheader.lr.ph.i4 ], [ %nstorage.1.lcssa.i, %._crit_edge.i11 ]
  %nnostorage.06.i = phi i32 [ 0, %.preheader.lr.ph.i4 ], [ %nnostorage.1.lcssa.i, %._crit_edge.i11 ]
  br i1 %55, label %.lr.ph.i7, label %._crit_edge.i11

.lr.ph.i7:                                        ; preds = %.preheader.i5, %95
  %indvars.iv.i6 = phi i64 [ %indvars.iv.next.i8, %95 ], [ 0, %.preheader.i5 ]
  %nstorage.13.i = phi i32 [ %nstorage.2.i, %95 ], [ %nstorage.08.i, %.preheader.i5 ]
  %nnostorage.12.i = phi i32 [ %nnostorage.2.i, %95 ], [ %nnostorage.06.i, %.preheader.i5 ]
  %61 = load i8**** %56, align 8, !tbaa !2
  %62 = getelementptr inbounds i8*** %61, i64 %indvars.iv12.i
  %63 = load i8*** %62, align 8, !tbaa !9
  %64 = getelementptr inbounds i8** %63, i64 %indvars.iv.i6
  %65 = bitcast i8** %64 to %struct.PGA**
  %66 = load %struct.PGA** %65, align 8, !tbaa !9
  %67 = getelementptr inbounds %struct.PGA* %66, i64 0, i32 5
  %68 = load i32* %67, align 4, !tbaa !10
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %83

; <label>:70                                      ; preds = %.lr.ph.i7
  %71 = call i32 @PUGH_EnableGArrayDataStorage(%struct.PGA* %66, i32 undef, i8* %51, i32 %52, i32 undef, i32 undef, i32 undef) #7
  %72 = getelementptr inbounds %struct.PGA* %66, i64 0, i32 4
  %73 = bitcast i8** %72 to i64*
  %74 = load i64* %73, align 8, !tbaa !25
  %75 = load %struct.cGH** %57, align 8, !tbaa !26
  %76 = getelementptr inbounds %struct.cGH* %75, i64 0, i32 17
  %77 = load i8**** %76, align 8, !tbaa !27
  %78 = getelementptr inbounds i8*** %77, i64 %indvars.iv12.i
  %79 = load i8*** %78, align 8, !tbaa !9
  %80 = getelementptr inbounds i8** %79, i64 %indvars.iv.i6
  %81 = bitcast i8** %80 to i64*
  store i64 %74, i64* %81, align 8, !tbaa !9
  %82 = add nsw i32 %nnostorage.12.i, 1
  br label %95

; <label>:83                                      ; preds = %.lr.ph.i7
  %84 = getelementptr inbounds %struct.PGA* %66, i64 0, i32 4
  %85 = bitcast i8** %84 to i64*
  %86 = load i64* %85, align 8, !tbaa !25
  %87 = load %struct.cGH** %57, align 8, !tbaa !26
  %88 = getelementptr inbounds %struct.cGH* %87, i64 0, i32 17
  %89 = load i8**** %88, align 8, !tbaa !27
  %90 = getelementptr inbounds i8*** %89, i64 %indvars.iv12.i
  %91 = load i8*** %90, align 8, !tbaa !9
  %92 = getelementptr inbounds i8** %91, i64 %indvars.iv.i6
  %93 = bitcast i8** %92 to i64*
  store i64 %86, i64* %93, align 8, !tbaa !9
  %94 = add nsw i32 %nstorage.13.i, 1
  br label %95

; <label>:95                                      ; preds = %83, %70
  %nnostorage.2.i = phi i32 [ %nnostorage.12.i, %83 ], [ %82, %70 ]
  %nstorage.2.i = phi i32 [ %94, %83 ], [ %nstorage.13.i, %70 ]
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i6, 1
  %lftr.wideiv15 = trunc i64 %indvars.iv.i6 to i32
  %exitcond16 = icmp eq i32 %lftr.wideiv15, %58
  br i1 %exitcond16, label %._crit_edge.i11, label %.lr.ph.i7

._crit_edge.i11:                                  ; preds = %95, %.preheader.i5
  %nstorage.1.lcssa.i = phi i32 [ %nstorage.08.i, %.preheader.i5 ], [ %nstorage.2.i, %95 ]
  %nnostorage.1.lcssa.i = phi i32 [ %nnostorage.06.i, %.preheader.i5 ], [ %nnostorage.2.i, %95 ]
  %indvars.iv.next13.i = add nsw i64 %indvars.iv12.i, 1
  %96 = icmp slt i64 %indvars.iv.next13.i, %60
  br i1 %96, label %.preheader.i5, label %._crit_edge9.i

._crit_edge9.i:                                   ; preds = %._crit_edge.i11
  %97 = icmp sgt i32 %nstorage.1.lcssa.i, 0
  %98 = icmp sgt i32 %nnostorage.1.lcssa.i, 0
  %or.cond.i12 = and i1 %97, %98
  br i1 %or.cond.i12, label %99, label %._crit_edge9.thread.i

; <label>:99                                      ; preds = %._crit_edge9.i
  %100 = call i32 @CCTK_Warn(i32 0, i32 713, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str24, i64 0, i64 0)) #7
  br label %PUGH_EnableGArrayGroupStorage.exit

._crit_edge9.thread.i:                            ; preds = %._crit_edge9.i, %46
  %101 = phi i1 [ %97, %._crit_edge9.i ], [ false, %46 ]
  %102 = zext i1 %101 to i32
  br label %PUGH_EnableGArrayGroupStorage.exit

PUGH_EnableGArrayGroupStorage.exit:               ; preds = %99, %._crit_edge9.thread.i
  %retval.0.i = phi i32 [ -1, %99 ], [ %102, %._crit_edge9.thread.i ]
  %103 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #7
  %104 = or i32 %103, %retval.0.i
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %PUGH_EnableScalarGroupStorage.exit

; <label>:106                                     ; preds = %PUGH_EnableGArrayGroupStorage.exit
  %107 = sext i32 %7 to i64
  %108 = getelementptr inbounds %struct.PGH* %2, i64 0, i32 7
  %109 = load i8**** %108, align 8, !tbaa !2
  %110 = getelementptr inbounds i8*** %109, i64 %107
  %111 = bitcast i8*** %110 to %struct.PGA***
  %112 = load %struct.PGA*** %111, align 8, !tbaa !9
  %113 = load %struct.PGA** %112, align 8, !tbaa !9
  %114 = load i32* %9, align 4, !tbaa !19
  %115 = icmp eq i32 %114, 2
  %116 = load i32* %47, align 4, !tbaa !21
  %117 = load i32* %49, align 4, !tbaa !22
  %118 = mul nsw i32 %117, %116
  br i1 %115, label %119, label %122

; <label>:119                                     ; preds = %106
  %120 = load i32* @totalnumberGF, align 4, !tbaa !29
  %121 = add nsw i32 %120, %118
  store i32 %121, i32* @totalnumberGF, align 4, !tbaa !29
  br label %125

; <label>:122                                     ; preds = %106
  %123 = load i32* @totalnumberGA, align 4, !tbaa !29
  %124 = add nsw i32 %123, %118
  store i32 %124, i32* @totalnumberGA, align 4, !tbaa !29
  br label %125

; <label>:125                                     ; preds = %122, %119
  %126 = getelementptr inbounds %struct.PGA* %113, i64 0, i32 10
  %127 = load %struct.PGExtras** %126, align 8, !tbaa !12
  %128 = getelementptr inbounds %struct.PGExtras* %127, i64 0, i32 7
  %129 = load i32* %128, align 4, !tbaa !30
  %130 = getelementptr inbounds %struct.PGA* %113, i64 0, i32 8
  %131 = load i32* %130, align 4, !tbaa !31
  %132 = mul nsw i32 %131, %129
  %133 = mul nsw i32 %132, %117
  %134 = mul nsw i32 %133, %116
  %135 = sitofp i32 %134 to float
  %136 = fmul float %135, 0x3EB0000000000000
  %137 = load float* @totalstorage, align 4, !tbaa !32
  %138 = fadd float %137, %136
  store float %138, float* @totalstorage, align 4, !tbaa !32
  %139 = load float* @maxstorage, align 4, !tbaa !32
  %140 = fcmp ogt float %138, %139
  br i1 %140, label %141, label %144

; <label>:141                                     ; preds = %125
  %142 = load i32* @totalnumberGF, align 4, !tbaa !29
  store i32 %142, i32* @numberGF, align 4, !tbaa !29
  %143 = load i32* @totalnumberGA, align 4, !tbaa !29
  store i32 %143, i32* @numberGA, align 4, !tbaa !29
  store float %138, float* @maxstorage, align 4, !tbaa !32
  br label %144

; <label>:144                                     ; preds = %141, %125
  %145 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #7
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %PUGH_EnableScalarGroupStorage.exit, label %147

; <label>:147                                     ; preds = %144
  %148 = load i32* @totalnumberGF, align 4, !tbaa !29
  %149 = load i32* @totalnumberGA, align 4, !tbaa !29
  %150 = load float* @totalstorage, align 4, !tbaa !32
  %151 = fpext float %150 to double
  %152 = call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8]* @.str9, i64 0, i64 0), i8* %groupname, i32 %148, i32 %149, double %151) #7
  br label %PUGH_EnableScalarGroupStorage.exit

; <label>:153                                     ; preds = %6
  %154 = call i32 @CCTK_Warn(i32 1, i32 377, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str10, i64 0, i64 0)) #7
  br label %PUGH_EnableScalarGroupStorage.exit

; <label>:155                                     ; preds = %0
  br i1 %4, label %158, label %156

; <label>:156                                     ; preds = %155
  %157 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 386, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str11, i64 0, i64 0), i8* %groupname) #7
  br label %PUGH_EnableScalarGroupStorage.exit

; <label>:158                                     ; preds = %155
  %159 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 393, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str12, i64 0, i64 0), i8* %groupname) #7
  br label %PUGH_EnableScalarGroupStorage.exit

PUGH_EnableScalarGroupStorage.exit:               ; preds = %._crit_edge.i, %11, %144, %156, %158, %PUGH_EnableGArrayGroupStorage.exit, %147, %153
  %retval.0 = phi i32 [ %retval.0.i, %147 ], [ %retval.0.i, %144 ], [ %retval.0.i, %PUGH_EnableGArrayGroupStorage.exit ], [ -1, %153 ], [ -3, %158 ], [ -2, %156 ], [ %29, %11 ], [ %29, %._crit_edge.i ]
  ret i32 %retval.0
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
  %1 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 10), align 8, !tbaa !17
  %2 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #7
  %3 = call i32 @CCTK_GroupData(i32 %2, %struct.cGroup* %pgroup) #7
  %4 = call i32 @CCTK_FirstVarIndexI(i32 %2) #7
  %5 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7
  %6 = getelementptr inbounds %struct.PGH* %5, i64 0, i32 7
  %7 = bitcast i8**** %6 to %struct.PGA****
  %8 = load %struct.PGA**** %7, align 8, !tbaa !2
  %9 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0
  %10 = load i32* %9, align 4, !tbaa !19
  switch i32 %10, label %71 [
    i32 2, label %.preheader2
    i32 3, label %.preheader2
    i32 1, label %35
  ]

.preheader2:                                      ; preds = %0, %0
  %11 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5
  %12 = load i32* %11, align 4, !tbaa !21
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader2
  %14 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6
  %15 = sext i32 %4 to i64
  %.pre26 = load i32* %14, align 4, !tbaa !22
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %29
  %16 = phi i32 [ %12, %.preheader.lr.ph ], [ %30, %29 ]
  %17 = phi i32 [ %.pre26, %.preheader.lr.ph ], [ %31, %29 ]
  %indvars.iv18 = phi i64 [ %15, %.preheader.lr.ph ], [ %indvars.iv.next19, %29 ]
  %unchanged.08 = phi i32 [ 0, %.preheader.lr.ph ], [ %unchanged.1.lcssa, %29 ]
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %.preheader
  %19 = getelementptr inbounds %struct.PGA*** %8, i64 %indvars.iv18
  br label %20

; <label>:20                                      ; preds = %.lr.ph, %20
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %20 ]
  %unchanged.16 = phi i32 [ %unchanged.08, %.lr.ph ], [ %25, %20 ]
  %21 = load %struct.PGA*** %19, align 8, !tbaa !9
  %22 = getelementptr inbounds %struct.PGA** %21, i64 %indvars.iv
  %23 = load %struct.PGA** %22, align 8, !tbaa !9
  %24 = call i32 @PUGH_DisableGArrayDataStorage(%struct.PGA* %23) #8
  %25 = add nsw i32 %24, %unchanged.16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %26 = load i32* %14, align 4, !tbaa !22
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %indvars.iv.next, %27
  br i1 %28, label %20, label %._crit_edge

._crit_edge:                                      ; preds = %20
  %.pre27 = load i32* %11, align 4, !tbaa !21
  br label %29

; <label>:29                                      ; preds = %._crit_edge, %.preheader
  %30 = phi i32 [ %.pre27, %._crit_edge ], [ %16, %.preheader ]
  %31 = phi i32 [ %26, %._crit_edge ], [ %17, %.preheader ]
  %unchanged.1.lcssa = phi i32 [ %25, %._crit_edge ], [ %unchanged.08, %.preheader ]
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1
  %32 = add nsw i32 %30, %4
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %indvars.iv.next19, %33
  br i1 %34, label %.preheader, label %.loopexit

; <label>:35                                      ; preds = %0
  %36 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 1
  %37 = load i32* %36, align 4, !tbaa !34
  %38 = call i32 @CCTK_VarTypeSize(i32 %37) #7
  %39 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5
  %40 = load i32* %39, align 4, !tbaa !21
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %.preheader3.lr.ph, label %.loopexit

.preheader3.lr.ph:                                ; preds = %35
  %42 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6
  %43 = sext i32 %38 to i64
  %44 = sext i32 %4 to i64
  %.pre = load i32* %42, align 4, !tbaa !22
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.lr.ph, %65
  %45 = phi i32 [ %40, %.preheader3.lr.ph ], [ %66, %65 ]
  %46 = phi i32 [ %.pre, %.preheader3.lr.ph ], [ %67, %65 ]
  %indvars.iv22 = phi i64 [ %44, %.preheader3.lr.ph ], [ %indvars.iv.next23, %65 ]
  %unchanged.216 = phi i32 [ 0, %.preheader3.lr.ph ], [ %unchanged.3.lcssa, %65 ]
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %.lr.ph12, label %65

.lr.ph12:                                         ; preds = %.preheader3
  %48 = getelementptr inbounds %struct.PGA*** %8, i64 %indvars.iv22
  br label %49

; <label>:49                                      ; preds = %.lr.ph12, %61
  %50 = phi i32 [ %46, %.lr.ph12 ], [ %62, %61 ]
  %indvars.iv20 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next21, %61 ]
  %unchanged.311 = phi i32 [ %unchanged.216, %.lr.ph12 ], [ %unchanged.4, %61 ]
  %51 = load %struct.PGA*** %48, align 8, !tbaa !9
  %52 = getelementptr inbounds %struct.PGA** %51, i64 %indvars.iv20
  %53 = bitcast %struct.PGA** %52 to i8**
  %54 = load i8** %53, align 8, !tbaa !9
  %55 = getelementptr inbounds i8* %54, i64 %43
  %56 = load i8* %55, align 1, !tbaa !16
  %57 = icmp eq i8 %56, 1
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %49
  store i8 0, i8* %55, align 1, !tbaa !16
  %.pre24 = load i32* %42, align 4, !tbaa !22
  br label %61

; <label>:59                                      ; preds = %49
  %60 = add nsw i32 %unchanged.311, 1
  br label %61

; <label>:61                                      ; preds = %58, %59
  %62 = phi i32 [ %.pre24, %58 ], [ %50, %59 ]
  %unchanged.4 = phi i32 [ %unchanged.311, %58 ], [ %60, %59 ]
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %indvars.iv.next21, %63
  br i1 %64, label %49, label %._crit_edge13

._crit_edge13:                                    ; preds = %61
  %.pre25 = load i32* %39, align 4, !tbaa !21
  br label %65

; <label>:65                                      ; preds = %._crit_edge13, %.preheader3
  %66 = phi i32 [ %.pre25, %._crit_edge13 ], [ %45, %.preheader3 ]
  %67 = phi i32 [ %62, %._crit_edge13 ], [ %46, %.preheader3 ]
  %unchanged.3.lcssa = phi i32 [ %unchanged.4, %._crit_edge13 ], [ %unchanged.216, %.preheader3 ]
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1
  %68 = add nsw i32 %66, %4
  %69 = sext i32 %68 to i64
  %70 = icmp slt i64 %indvars.iv.next23, %69
  br i1 %70, label %.preheader3, label %.loopexit

; <label>:71                                      ; preds = %0
  %72 = call i32 @CCTK_Warn(i32 1, i32 493, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str13, i64 0, i64 0)) #7
  br label %.loopexit

.loopexit:                                        ; preds = %65, %29, %35, %.preheader2, %71
  %unchanged.5 = phi i32 [ 0, %71 ], [ 0, %.preheader2 ], [ 0, %35 ], [ %unchanged.1.lcssa, %29 ], [ %unchanged.3.lcssa, %65 ]
  %retval.0 = phi i32 [ -1, %71 ], [ 1, %.preheader2 ], [ 1, %35 ], [ 1, %29 ], [ 1, %65 ]
  %73 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0)) #7
  %74 = icmp eq i32 %73, 0
  %75 = icmp sgt i32 %retval.0, -1
  %or.cond = and i1 %75, %74
  br i1 %or.cond, label %76, label %130

; <label>:76                                      ; preds = %.loopexit
  %77 = icmp eq i32 %unchanged.5, 0
  br i1 %77, label %78, label %119

; <label>:78                                      ; preds = %76
  %79 = load i32* %9, align 4, !tbaa !19
  switch i32 %79, label %._crit_edge28 [
    i32 2, label %80
    i32 3, label %85
  ]

._crit_edge28:                                    ; preds = %78
  %.phi.trans.insert = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5
  %.pre29 = load i32* %.phi.trans.insert, align 4, !tbaa !21
  br label %90

; <label>:80                                      ; preds = %78
  %81 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5
  %82 = load i32* %81, align 4, !tbaa !21
  %83 = load i32* @totalnumberGF, align 4, !tbaa !29
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* @totalnumberGF, align 4, !tbaa !29
  br label %90

; <label>:85                                      ; preds = %78
  %86 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5
  %87 = load i32* %86, align 4, !tbaa !21
  %88 = load i32* @totalnumberGA, align 4, !tbaa !29
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* @totalnumberGA, align 4, !tbaa !29
  br label %90

; <label>:90                                      ; preds = %._crit_edge28, %85, %80
  %91 = phi i32 [ %.pre29, %._crit_edge28 ], [ %87, %85 ], [ %82, %80 ]
  %92 = sext i32 %4 to i64
  %93 = getelementptr inbounds %struct.PGA*** %8, i64 %92
  %94 = load %struct.PGA*** %93, align 8, !tbaa !9
  %95 = load %struct.PGA** %94, align 8, !tbaa !9
  %96 = getelementptr inbounds %struct.PGA* %95, i64 0, i32 10
  %97 = load %struct.PGExtras** %96, align 8, !tbaa !12
  %98 = getelementptr inbounds %struct.PGExtras* %97, i64 0, i32 7
  %99 = load i32* %98, align 4, !tbaa !30
  %100 = getelementptr inbounds %struct.PGA* %95, i64 0, i32 8
  %101 = load i32* %100, align 4, !tbaa !31
  %102 = mul nsw i32 %101, %99
  %103 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6
  %104 = load i32* %103, align 4, !tbaa !22
  %105 = mul nsw i32 %102, %104
  %106 = mul nsw i32 %105, %91
  %107 = sitofp i32 %106 to float
  %108 = fmul float %107, 0x3EB0000000000000
  %109 = load float* @totalstorage, align 4, !tbaa !32
  %110 = fsub float %109, %108
  store float %110, float* @totalstorage, align 4, !tbaa !32
  %111 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #7
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %130, label %113

; <label>:113                                     ; preds = %90
  %114 = load i32* @totalnumberGF, align 4, !tbaa !29
  %115 = load i32* @totalnumberGA, align 4, !tbaa !29
  %116 = load float* @totalstorage, align 4, !tbaa !32
  %117 = fpext float %116 to double
  %118 = call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8]* @.str14, i64 0, i64 0), i8* %groupname, i32 %114, i32 %115, double %117) #7
  br label %130

; <label>:119                                     ; preds = %76
  %120 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5
  %121 = load i32* %120, align 4, !tbaa !21
  %122 = icmp eq i32 %unchanged.5, %121
  br i1 %122, label %123, label %128

; <label>:123                                     ; preds = %119
  %124 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #7
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126

; <label>:126                                     ; preds = %123
  %127 = call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str15, i64 0, i64 0), i8* %groupname) #7
  br label %130

; <label>:128                                     ; preds = %119
  %129 = call i32 @CCTK_Warn(i32 1, i32 533, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str16, i64 0, i64 0)) #7
  br label %130

; <label>:130                                     ; preds = %90, %123, %113, %126, %128, %.loopexit
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_DisableGArrayDataStorage(%struct.PGA* nocapture %GA) #1 {
  %1 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 5
  %2 = load i32* %1, align 4, !tbaa !10
  %3 = icmp ne i32 %2, 1
  %4 = zext i1 %3 to i32
  %5 = icmp eq i32 %2, 1
  br i1 %5, label %6, label %32

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 14
  %8 = load i32* %7, align 4, !tbaa !35
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %20

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 15
  %12 = load i32* %11, align 4, !tbaa !36
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %20

; <label>:14                                      ; preds = %10
  %15 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 3
  %16 = bitcast i8** %15 to i64*
  %17 = load i64* %16, align 8, !tbaa !37
  %18 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 4
  %19 = bitcast i8** %18 to i64*
  store i64 %17, i64* %19, align 8, !tbaa !25
  br label %31

; <label>:20                                      ; preds = %10, %6
  %21 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 3
  %22 = load i8** %21, align 8, !tbaa !37
  %23 = icmp eq i8* %22, null
  br i1 %23, label %25, label %24

; <label>:24                                      ; preds = %20
  tail call void @free(i8* %22) #8
  br label %25

; <label>:25                                      ; preds = %20, %24
  %26 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 8
  %27 = load i32* %26, align 4, !tbaa !31
  %28 = sext i32 %27 to i64
  %29 = tail call i8* @calloc(i64 1, i64 %28) #7
  store i8* %29, i8** %21, align 8, !tbaa !37
  %30 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 4
  store i8* %29, i8** %30, align 8, !tbaa !25
  br label %31

; <label>:31                                      ; preds = %25, %14
  store i32 0, i32* %1, align 4, !tbaa !10
  br label %32

; <label>:32                                      ; preds = %31, %0
  ret i32 %4
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_EnableGArrayDataStorage(%struct.PGA* %GA, i32 %this_proc, i8* %initialize_memory, i32 %padding_active, i32 %padding_cacheline_bits, i32 %padding_size, i32 %padding_address_spacing) #1 {
  %1 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 5
  %2 = load i32* %1, align 4, !tbaa !10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %92

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 14
  %6 = load i32* %5, align 4, !tbaa !35
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %28

; <label>:8                                       ; preds = %4
  %9 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 15
  %10 = load i32* %9, align 4, !tbaa !36
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %28

; <label>:12                                      ; preds = %8
  %13 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 16
  %14 = load %struct.PGA** %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.PGA* %14, i64 0, i32 4
  %16 = load i8** %15, align 8, !tbaa !25
  %17 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 10
  %18 = load %struct.PGExtras** %17, align 8, !tbaa !12
  %19 = getelementptr inbounds %struct.PGExtras* %18, i64 0, i32 7
  %20 = load i32* %19, align 4, !tbaa !30
  %21 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 8
  %22 = load i32* %21, align 4, !tbaa !31
  %23 = mul i32 %20, %10
  %24 = mul i32 %23, %22
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8* %16, i64 %25
  %27 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 4
  store i8* %26, i8** %27, align 8, !tbaa !25
  br label %75

; <label>:28                                      ; preds = %8, %4
  %29 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 3
  %30 = load i8** %29, align 8, !tbaa !37
  %31 = icmp eq i8* %30, null
  br i1 %31, label %33, label %32

; <label>:32                                      ; preds = %28
  tail call void @free(i8* %30) #8
  store i8* null, i8** %29, align 8, !tbaa !37
  br label %33

; <label>:33                                      ; preds = %28, %32
  %34 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 10
  %35 = load %struct.PGExtras** %34, align 8, !tbaa !12
  %36 = getelementptr inbounds %struct.PGExtras* %35, i64 0, i32 7
  %37 = load i32* %36, align 4, !tbaa !30
  %38 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 8
  %39 = load i32* %38, align 4, !tbaa !31
  %40 = mul nsw i32 %39, %37
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %.thread, label %46

.thread:                                          ; preds = %33
  %42 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 0
  %43 = load i8** %42, align 8, !tbaa !39
  %44 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 809, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8]* @.str17, i64 0, i64 0), i8* %43) #7
  %45 = bitcast i8** %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 16, i32 8, i1 false)
  br label %75

; <label>:46                                      ; preds = %33
  %47 = icmp eq i32 %padding_active, 0
  br i1 %47, label %48, label %52

; <label>:48                                      ; preds = %46
  %49 = sext i32 %40 to i64
  %50 = tail call i8* @malloc(i64 %49) #7
  %51 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 4
  store i8* %50, i8** %51, align 8, !tbaa !25
  store i8* %50, i8** %29, align 8, !tbaa !37
  br label %60

; <label>:52                                      ; preds = %46
  %53 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 2
  %54 = load i32* %53, align 4, !tbaa !40
  %55 = load i32* %5, align 4, !tbaa !35
  %56 = mul nsw i32 %55, %40
  %57 = sext i32 %56 to i64
  %58 = tail call i8* @Util_CacheMalloc(i32 %54, i64 %57, i8** %29) #7
  %59 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 4
  store i8* %58, i8** %59, align 8, !tbaa !25
  br label %60

; <label>:60                                      ; preds = %48, %52
  %.pre-phi2 = phi i8** [ %51, %48 ], [ %59, %52 ]
  %61 = phi i8* [ %50, %48 ], [ %58, %52 ]
  %62 = icmp eq i8* %61, null
  br i1 %62, label %75, label %63

; <label>:63                                      ; preds = %60
  %64 = tail call i32 @CCTK_Equals(i8* %initialize_memory, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0)) #7
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %75

; <label>:66                                      ; preds = %63
  %67 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 9
  %68 = load i32* %67, align 4, !tbaa !41
  %69 = load %struct.PGExtras** %34, align 8, !tbaa !12
  %70 = getelementptr inbounds %struct.PGExtras* %69, i64 0, i32 7
  %71 = load i32* %70, align 4, !tbaa !30
  %72 = load i32* %38, align 4, !tbaa !31
  %73 = mul nsw i32 %72, %71
  %74 = load i8** %.pre-phi2, align 8, !tbaa !25
  tail call fastcc void @PUGH_InitializeMemory(i8* %initialize_memory, i32 %68, i32 %73, i8* %74) #8
  br label %75

; <label>:75                                      ; preds = %.thread, %63, %60, %66, %12
  %.pre-phi1 = phi i32* [ %38, %63 ], [ %38, %60 ], [ %38, %66 ], [ %21, %12 ], [ %38, %.thread ]
  %.pre-phi = phi %struct.PGExtras** [ %34, %63 ], [ %34, %60 ], [ %34, %66 ], [ %17, %12 ], [ %34, %.thread ]
  %76 = load %struct.PGExtras** %.pre-phi, align 8, !tbaa !12
  %77 = getelementptr inbounds %struct.PGExtras* %76, i64 0, i32 7
  %78 = load i32* %77, align 4, !tbaa !30
  %79 = load i32* %.pre-phi1, align 4, !tbaa !31
  %80 = mul nsw i32 %79, %78
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %92

; <label>:82                                      ; preds = %75
  %83 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 3
  %84 = load i8** %83, align 8, !tbaa !37
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %92

; <label>:86                                      ; preds = %82
  %87 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 0
  %88 = load i8** %87, align 8, !tbaa !39
  %89 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 1
  %90 = load i32* %89, align 4, !tbaa !42
  %91 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 838, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str19, i64 0, i64 0), i8* %88, i32 %90) #7
  br label %92

; <label>:92                                      ; preds = %75, %82, %86, %0
  %retval.1 = phi i32 [ -1, %86 ], [ 0, %82 ], [ 0, %75 ], [ 0, %0 ]
  store i32 1, i32* %1, align 4, !tbaa !10
  ret i32 %retval.1
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i8* @Util_CacheMalloc(i32, i64, i8**) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @PUGH_InitializeMemory(i8* %initialize_memory, i32 %vtype, i32 %bytes, i8* %data) #1 {
  %1 = tail call i32 @CCTK_Equals(i8* %initialize_memory, i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0)) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

; <label>:3                                       ; preds = %0
  %4 = sext i32 %bytes to i64
  %5 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %data, i1 false)
  %6 = tail call i8* @__memset_chk(i8* %data, i32 0, i64 %4, i64 %5) #7
  br label %26

; <label>:7                                       ; preds = %0
  %8 = tail call i32 @CCTK_Equals(i8* %initialize_memory, i8* getelementptr inbounds ([4 x i8]* @.str26, i64 0, i64 0)) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

; <label>:10                                      ; preds = %7
  %11 = tail call i8* @CCTK_VarTypeName(i32 %vtype) #7
  %12 = tail call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([19 x i8]* @.str27, i64 0, i64 0), i64 18) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

; <label>:14                                      ; preds = %10
  %15 = tail call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([22 x i8]* @.str28, i64 0, i64 0), i64 22) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

; <label>:17                                      ; preds = %14, %10
  %18 = sext i32 %bytes to i64
  %19 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %data, i1 false)
  %20 = tail call i8* @__memset_chk(i8* %data, i32 -1, i64 %18, i64 %19) #7
  br label %26

; <label>:21                                      ; preds = %7
  %22 = tail call i32 @CCTK_Equals(i8* %initialize_memory, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0)) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %21
  %25 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 964, i8* getelementptr inbounds ([74 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8]* @.str29, i64 0, i64 0), i8* %initialize_memory) #7
  br label %26

; <label>:26                                      ; preds = %21, %17, %14, %24, %3
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGHi_PrintStorageReport() #1 {
  %1 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str20, i64 0, i64 0)) #7
  %2 = load float* @maxstorage, align 4, !tbaa !32
  %3 = fpext float %2 to double
  %4 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str21, i64 0, i64 0), double %3) #7
  %5 = load i32* @numberGF, align 4, !tbaa !29
  %6 = load i32* @numberGA, align 4, !tbaa !29
  %7 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str22, i64 0, i64 0), i32 %5, i32 %6) #7
  ret void
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

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 32}
!3 = !{!"PGH", !4, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !7, i64 60, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !4, i64 120, !4, i64 128, !4, i64 136}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!11, !7, i64 32}
!11 = !{!"PGA", !4, i64 0, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !7, i64 32, !7, i64 36, !4, i64 40, !7, i64 48, !7, i64 52, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !7, i64 88, !7, i64 92, !4, i64 96}
!12 = !{!11, !4, i64 56}
!13 = !{!14, !7, i64 0}
!14 = !{!"PGExtras", !7, i64 0, !4, i64 8, !8, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !5, i64 104, !5, i64 168, !5, i64 232}
!15 = !{!14, !4, i64 48}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !4, i64 80}
!18 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !7, i64 216}
!19 = !{!20, !7, i64 0}
!20 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!21 = !{!20, !7, i64 20}
!22 = !{!20, !7, i64 24}
!23 = !{!18, !4, i64 8}
!24 = !{!18, !7, i64 172}
!25 = !{!11, !4, i64 24}
!26 = !{!3, !4, i64 0}
!27 = !{!28, !4, i64 128}
!28 = !{!"", !7, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !8, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !7, i64 104, !4, i64 112, !8, i64 120, !4, i64 128, !4, i64 136, !4, i64 144}
!29 = !{!7, !7, i64 0}
!30 = !{!14, !7, i64 56}
!31 = !{!11, !7, i64 48}
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !5, i64 0}
!34 = !{!20, !7, i64 4}
!35 = !{!11, !7, i64 88}
!36 = !{!11, !7, i64 92}
!37 = !{!11, !4, i64 16}
!38 = !{!11, !4, i64 96}
!39 = !{!11, !4, i64 0}
!40 = !{!11, !7, i64 12}
!41 = !{!11, !7, i64 52}
!42 = !{!11, !7, i64 8}
