; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/GroupsOnGH.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.GROUPDYNAMICDATA = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [79 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/GroupsOnGH.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [46 x i8] c"Invalid variable name '%s' in CCTK_VarDataPtr\00", align 1
@.str3 = private unnamed_addr constant [63 x i8] c"CCTK_VarPtrDataI: calling CCTK_VarDataPtrI with negative index\00", align 1
@CCTK_EnableGroupComm = external global i32 (%struct.cGH*, i8*)*
@CCTK_EnableGroupStorage = external global i32 (%struct.cGH*, i8*)*
@CCTK_DisableGroupComm = external global i32 (%struct.cGH*, i8*)*
@CCTK_DisableGroupStorage = external global i32 (%struct.cGH*, i8*)*
@CCTK_ArrayGroupSizeB = external global i32* (%struct.cGH*, i32, i32, i8*)*
@CCTK_QueryGroupStorageB = external global i32 (%struct.cGH*, i32, i8*)*
@.str4 = private unnamed_addr constant [62 x i8] c"CCTK_GrouplbndGI: Grid information called for scalar group %s\00", align 1
@CCTK_GroupDynamicData = external global i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)*
@.str5 = private unnamed_addr constant [98 x i8] c"CCTK_GrouplbndGI: Incorrect dimension %d supplied, group %s has dimension %d, copying %d integers\00", align 1
@.str6 = private unnamed_addr constant [55 x i8] c"CCTK_GrouplbndGI: Data not available from driver thorn\00", align 1
@.str7 = private unnamed_addr constant [47 x i8] c"CCTK_GrouplbndGN: Group index not found for %s\00", align 1
@.str8 = private unnamed_addr constant [62 x i8] c"CCTK_GrouplbndVI: Group index not found for variable index %d\00", align 1
@.str9 = private unnamed_addr constant [47 x i8] c"CCTK_GrouplbndVN: Group index not found for %s\00", align 1
@.str10 = private unnamed_addr constant [62 x i8] c"CCTK_GroupubndGI: Grid information called for scalar group %s\00", align 1
@.str11 = private unnamed_addr constant [98 x i8] c"CCTK_GroupubndGI: Incorrect dimension %d supplied, group %s has dimension %d, copying %d integers\00", align 1
@.str12 = private unnamed_addr constant [55 x i8] c"CCTK_GroupubndGI: Data not available from driver thorn\00", align 1
@.str13 = private unnamed_addr constant [47 x i8] c"CCTK_GroupubndGN: Group index not found for %s\00", align 1
@.str14 = private unnamed_addr constant [62 x i8] c"CCTK_GroupubndVI: Group index not found for variable index %d\00", align 1
@.str15 = private unnamed_addr constant [47 x i8] c"CCTK_GroupubndVN: Group index not found for %s\00", align 1
@.str16 = private unnamed_addr constant [61 x i8] c"CCTK_GrouplshGI: Grid information called for scalar group %s\00", align 1
@.str17 = private unnamed_addr constant [97 x i8] c"CCTK_GrouplshGI: Incorrect dimension %d supplied, group %s has dimension %d, copying %d integers\00", align 1
@.str18 = private unnamed_addr constant [54 x i8] c"CCTK_GrouplshGI: Data not available from driver thorn\00", align 1
@.str19 = private unnamed_addr constant [46 x i8] c"CCTK_GrouplshGN: Group index not found for %s\00", align 1
@.str20 = private unnamed_addr constant [61 x i8] c"CCTK_GrouplshVI: Group index not found for variable index %d\00", align 1
@.str21 = private unnamed_addr constant [46 x i8] c"CCTK_GrouplshVN: Group index not found for %s\00", align 1
@.str22 = private unnamed_addr constant [61 x i8] c"CCTK_GroupgshGI: Grid information called for scalar group %s\00", align 1
@.str23 = private unnamed_addr constant [97 x i8] c"CCTK_GroupgshGI: Incorrect dimension %d supplied, group %s has dimension %d, copying %d integers\00", align 1
@.str24 = private unnamed_addr constant [54 x i8] c"CCTK_GroupgshGI: Data not available from driver thorn\00", align 1
@.str25 = private unnamed_addr constant [46 x i8] c"CCTK_GroupgshGN: Group index not found for %s\00", align 1
@.str26 = private unnamed_addr constant [61 x i8] c"CCTK_GroupgshVI: Group index not found for variable index %d\00", align 1
@.str27 = private unnamed_addr constant [46 x i8] c"CCTK_GroupgshVN: Group index not found for %s\00", align 1
@.str28 = private unnamed_addr constant [69 x i8] c"CCTK_GroupnghostzonesGI: Grid information called for scalar group %s\00", align 1
@.str29 = private unnamed_addr constant [105 x i8] c"CCTK_GroupnghostzonesGI: Incorrect dimension %d supplied, group %s has dimension %d, copying %d integers\00", align 1
@.str30 = private unnamed_addr constant [62 x i8] c"CCTK_GroupnghostzonesGI: Data not available from driver thorn\00", align 1
@.str31 = private unnamed_addr constant [54 x i8] c"CCTK_GroupnghostzonesGN: Group index not found for %s\00", align 1
@.str32 = private unnamed_addr constant [69 x i8] c"CCTK_GroupnghostzonesVI: Group index not found for variable index %d\00", align 1
@.str33 = private unnamed_addr constant [54 x i8] c"CCTK_GroupnghostzonesVN: Group index not found for %s\00", align 1
@.str34 = private unnamed_addr constant [62 x i8] c"CCTK_GroupbboxGI: Grid information called for scalar group %s\00", align 1
@.str35 = private unnamed_addr constant [93 x i8] c"CCTK_GroupbboxGI: Incorrect size %d supplied, group %s has dimension %d, copying %d integers\00", align 1
@.str36 = private unnamed_addr constant [55 x i8] c"CCTK_GroupbboxGI: Data not available from driver thorn\00", align 1
@.str37 = private unnamed_addr constant [47 x i8] c"CCTK_GroupbboxGN: Group index not found for %s\00", align 1
@.str38 = private unnamed_addr constant [62 x i8] c"CCTK_GroupbboxVI: Group index not found for variable index %d\00", align 1
@.str39 = private unnamed_addr constant [47 x i8] c"CCTK_GroupbboxVN: Group index not found for %s\00", align 1
@.str40 = private unnamed_addr constant [86 x i8] c"$Header: /cactus/Cactus/src/main/GroupsOnGH.c,v 1.26 2001/11/27 23:39:01 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_GroupsOnGH_c() #0 {
  ret i8* getelementptr inbounds ([86 x i8]* @.str40, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_VarDataPtr(%struct.cGH* nocapture readonly %GH, i32 %timelevel, i8* %varname) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %varname) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %12

; <label>:3                                       ; preds = %0
  %4 = sext i32 %timelevel to i64
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %7 = load i8**** %6, align 8, !tbaa !2
  %8 = getelementptr inbounds i8*** %7, i64 %5
  %9 = load i8*** %8, align 8, !tbaa !9
  %10 = getelementptr inbounds i8** %9, i64 %4
  %11 = load i8** %10, align 8, !tbaa !9
  br label %14

; <label>:12                                      ; preds = %0
  %13 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 228, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str2, i64 0, i64 0), i8* %varname) #6
  br label %14

; <label>:14                                      ; preds = %12, %3
  %retval.0 = phi i8* [ %11, %3 ], [ null, %12 ]
  ret i8* %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_VarDataPtrI(%struct.cGH* nocapture readonly %GH, i32 %timelevel, i32 %vari) #1 {
  %1 = icmp slt i32 %vari, 0
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_Warn(i32 1, i32 285, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str3, i64 0, i64 0)) #6
  br label %4

; <label>:4                                       ; preds = %2, %0
  %5 = sext i32 %timelevel to i64
  %6 = sext i32 %vari to i64
  %7 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %8 = load i8**** %7, align 8, !tbaa !2
  %9 = getelementptr inbounds i8*** %8, i64 %6
  %10 = load i8*** %9, align 8, !tbaa !9
  %11 = getelementptr inbounds i8** %10, i64 %5
  %12 = load i8** %11, align 8, !tbaa !9
  ret i8* %12
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_VarDataPtrB(%struct.cGH* nocapture readonly %GH, i32 %timelevel, i32 %vari, i8* %varn) #1 {
  %1 = icmp eq i8* %varn, null
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i8* @CCTK_VarDataPtr(%struct.cGH* %GH, i32 %timelevel, i8* %varn) #7
  br label %6

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 %timelevel, i32 %vari) #7
  br label %6

; <label>:6                                       ; preds = %4, %2
  %.0 = phi i8* [ %3, %2 ], [ %5, %4 ]
  ret i8* %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_EnableGroupCommI(%struct.cGH* %GH, i32 %group) #1 {
  %1 = tail call i8* @CCTK_GroupName(i32 %group) #6
  %2 = icmp eq i8* %1, null
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = load i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupComm, align 8, !tbaa !9
  %5 = tail call i32 %4(%struct.cGH* %GH, i8* %1) #6
  tail call void @free(i8* %1) #7
  br label %6

; <label>:6                                       ; preds = %0, %3
  %retcode.0 = phi i32 [ %5, %3 ], [ 0, %0 ]
  ret i32 %retcode.0
}

; Function Attrs: optsize
declare i8* @CCTK_GroupName(i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_EnableGroupStorageI(%struct.cGH* %GH, i32 %group) #1 {
  %1 = tail call i8* @CCTK_GroupName(i32 %group) #6
  %2 = icmp eq i8* %1, null
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = load i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupStorage, align 8, !tbaa !9
  %5 = tail call i32 %4(%struct.cGH* %GH, i8* %1) #6
  tail call void @free(i8* %1) #7
  br label %6

; <label>:6                                       ; preds = %0, %3
  %retcode.0 = phi i32 [ %5, %3 ], [ 0, %0 ]
  ret i32 %retcode.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_DisableGroupCommI(%struct.cGH* %GH, i32 %group) #1 {
  %1 = tail call i8* @CCTK_GroupName(i32 %group) #6
  %2 = icmp eq i8* %1, null
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = load i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupComm, align 8, !tbaa !9
  %5 = tail call i32 %4(%struct.cGH* %GH, i8* %1) #6
  tail call void @free(i8* %1) #7
  br label %6

; <label>:6                                       ; preds = %0, %3
  %retcode.0 = phi i32 [ %5, %3 ], [ 0, %0 ]
  ret i32 %retcode.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_DisableGroupStorageI(%struct.cGH* %GH, i32 %group) #1 {
  %1 = tail call i8* @CCTK_GroupName(i32 %group) #6
  %2 = icmp eq i8* %1, null
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = load i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupStorage, align 8, !tbaa !9
  %5 = tail call i32 %4(%struct.cGH* %GH, i8* %1) #6
  tail call void @free(i8* %1) #7
  br label %6

; <label>:6                                       ; preds = %0, %3
  %retcode.0 = phi i32 [ %5, %3 ], [ 0, %0 ]
  ret i32 %retcode.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32* @CCTK_ArrayGroupSizeI(%struct.cGH* %GH, i32 %dir, i32 %groupi) #1 {
  %1 = load i32* (%struct.cGH*, i32, i32, i8*)** @CCTK_ArrayGroupSizeB, align 8, !tbaa !9
  %2 = tail call i32* %1(%struct.cGH* %GH, i32 %dir, i32 %groupi, i8* null) #6
  ret i32* %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 %dir, i8* %groupn) #1 {
  %1 = load i32* (%struct.cGH*, i32, i32, i8*)** @CCTK_ArrayGroupSizeB, align 8, !tbaa !9
  %2 = tail call i32* %1(%struct.cGH* %GH, i32 %dir, i32 -1, i8* %groupn) #6
  ret i32* %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_QueryGroupStorageI(%struct.cGH* %GH, i32 %groupi) #1 {
  %1 = load i32 (%struct.cGH*, i32, i8*)** @CCTK_QueryGroupStorageB, align 8, !tbaa !9
  %2 = tail call i32 %1(%struct.cGH* %GH, i32 %groupi, i8* null) #6
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* %groupn) #1 {
  %1 = load i32 (%struct.cGH*, i32, i8*)** @CCTK_QueryGroupStorageB, align 8, !tbaa !9
  %2 = tail call i32 %1(%struct.cGH* %GH, i32 -1, i8* %groupn) #6
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GrouplbndGI(%struct.cGH* %cctkGH, i32 %dim, i32* %lbnd, i32 %groupindex) #1 {
  %data = alloca %struct.GROUPDYNAMICDATA, align 8
  %1 = bitcast %struct.GROUPDYNAMICDATA* %data to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1) #4
  %2 = tail call i32 @CCTK_GroupTypeI(i32 %groupindex) #6
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @CCTK_GroupName(i32 %groupindex) #6
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 544, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str4, i64 0, i64 0), i8* %5) #6
  br label %33

; <label>:7                                       ; preds = %0
  %8 = load i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)** @CCTK_GroupDynamicData, align 8, !tbaa !9
  %9 = call i32 %8(%struct.cGH* %cctkGH, i32 %groupindex, %struct.GROUPDYNAMICDATA* %data) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 0
  %13 = load i32* %12, align 8, !tbaa !10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

; <label>:15                                      ; preds = %11
  %16 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 3
  %17 = load i32** %16, align 8, !tbaa !12
  %18 = icmp eq i32* %17, null
  br i1 %18, label %31, label %19

; <label>:19                                      ; preds = %15
  %20 = bitcast i32* %17 to i8*
  %21 = icmp eq i32 %13, %dim
  br i1 %21, label %._crit_edge, label %22

; <label>:22                                      ; preds = %19
  %23 = icmp slt i32 %13, %dim
  %.dim = select i1 %23, i32 %13, i32 %dim
  %24 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 558, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([98 x i8]* @.str5, i64 0, i64 0), i32 %dim, i32 %13, i32 %.dim) #6
  %.phi.trans.insert = bitcast i32** %16 to i8**
  %.pre = load i8** %.phi.trans.insert, align 8, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %19, %22
  %25 = phi i8* [ %.pre, %22 ], [ %20, %19 ]
  %usedim.0 = phi i32 [ %.dim, %22 ], [ %dim, %19 ]
  %retval.0 = phi i32 [ -1, %22 ], [ 0, %19 ]
  %26 = bitcast i32* %lbnd to i8*
  %27 = sext i32 %usedim.0 to i64
  %28 = shl nsw i64 %27, 2
  %29 = call i64 @llvm.objectsize.i64.p0i8(i8* %26, i1 false)
  %30 = call i8* @__memcpy_chk(i8* %26, i8* %25, i64 %28, i64 %29) #6
  br label %33

; <label>:31                                      ; preds = %15, %11, %7
  %32 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 567, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str6, i64 0, i64 0)) #6
  br label %33

; <label>:33                                      ; preds = %._crit_edge, %31, %4
  %retval.1 = phi i32 [ -3, %4 ], [ %retval.0, %._crit_edge ], [ -2, %31 ]
  call void @llvm.lifetime.end(i64 56, i8* %1) #4
  ret i32 %retval.1
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeI(i32) #2

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_grouplbndgi_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %lbnd, i32* nocapture readonly %groupindex) #1 {
  %1 = load i32* %dim, align 4, !tbaa !13
  %2 = load i32* %groupindex, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GrouplbndGI(%struct.cGH* %cctkGH, i32 %1, i32* %lbnd, i32 %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GrouplbndGN(%struct.cGH* %cctkGH, i32 %dim, i32* %lbnd, i8* %groupname) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GrouplbndGI(%struct.cGH* %cctkGH, i32 %dim, i32* %lbnd, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 601, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str7, i64 0, i64 0), i8* %groupname) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_grouplbndgn_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %lbnd, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load i32* %dim, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GrouplbndGN(%struct.cGH* %cctkGH, i32 %2, i32* %lbnd, i8* %1) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GrouplbndVI(%struct.cGH* %cctkGH, i32 %dim, i32* %lbnd, i32 %varindex) #1 {
  %1 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %varindex) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GrouplbndGI(%struct.cGH* %cctkGH, i32 %dim, i32* %lbnd, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 637, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str8, i64 0, i64 0), i32 %varindex) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_grouplbndvi_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %lbnd, i32* nocapture readonly %varindex) #1 {
  %1 = load i32* %dim, align 4, !tbaa !13
  %2 = load i32* %varindex, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GrouplbndVI(%struct.cGH* %cctkGH, i32 %1, i32* %lbnd, i32 %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GrouplbndVN(%struct.cGH* %cctkGH, i32 %dim, i32* %lbnd, i8* %varname) #1 {
  %1 = tail call i32 @CCTK_GroupIndexFromVar(i8* %varname) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GrouplbndGI(%struct.cGH* %cctkGH, i32 %dim, i32* %lbnd, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 672, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str9, i64 0, i64 0), i8* %varname) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVar(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_grouplbndvn_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %lbnd, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load i32* %dim, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GrouplbndVN(%struct.cGH* %cctkGH, i32 %2, i32* %lbnd, i8* %1) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupubndGI(%struct.cGH* %cctkGH, i32 %dim, i32* %ubnd, i32 %groupindex) #1 {
  %data = alloca %struct.GROUPDYNAMICDATA, align 8
  %1 = bitcast %struct.GROUPDYNAMICDATA* %data to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1) #4
  %2 = tail call i32 @CCTK_GroupTypeI(i32 %groupindex) #6
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @CCTK_GroupName(i32 %groupindex) #6
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 725, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str10, i64 0, i64 0), i8* %5) #6
  br label %35

; <label>:7                                       ; preds = %0
  %8 = load i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)** @CCTK_GroupDynamicData, align 8, !tbaa !9
  %9 = call i32 %8(%struct.cGH* %cctkGH, i32 %groupindex, %struct.GROUPDYNAMICDATA* %data) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %33

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 0
  %13 = load i32* %12, align 8, !tbaa !10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

; <label>:15                                      ; preds = %11
  %16 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 4
  %17 = load i32** %16, align 8, !tbaa !14
  %18 = icmp eq i32* %17, null
  br i1 %18, label %33, label %19

; <label>:19                                      ; preds = %15
  %20 = bitcast i32* %17 to i8*
  %21 = icmp eq i32 %13, %dim
  br i1 %21, label %._crit_edge, label %22

; <label>:22                                      ; preds = %19
  %23 = icmp slt i32 %13, %dim
  %.dim = select i1 %23, i32 %13, i32 %dim
  %24 = call i8* @CCTK_GroupName(i32 %groupindex) #6
  %25 = load i32* %12, align 8, !tbaa !10
  %26 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 739, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([98 x i8]* @.str11, i64 0, i64 0), i32 %dim, i8* %24, i32 %25, i32 %.dim) #6
  %.phi.trans.insert = bitcast i32** %16 to i8**
  %.pre = load i8** %.phi.trans.insert, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %19, %22
  %27 = phi i8* [ %.pre, %22 ], [ %20, %19 ]
  %usedim.0 = phi i32 [ %.dim, %22 ], [ %dim, %19 ]
  %retval.0 = phi i32 [ -1, %22 ], [ 0, %19 ]
  %28 = bitcast i32* %ubnd to i8*
  %29 = sext i32 %usedim.0 to i64
  %30 = shl nsw i64 %29, 2
  %31 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %32 = call i8* @__memcpy_chk(i8* %28, i8* %27, i64 %30, i64 %31) #6
  br label %35

; <label>:33                                      ; preds = %15, %11, %7
  %34 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 749, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str12, i64 0, i64 0)) #6
  br label %35

; <label>:35                                      ; preds = %._crit_edge, %33, %4
  %retval.1 = phi i32 [ -3, %4 ], [ %retval.0, %._crit_edge ], [ -2, %33 ]
  call void @llvm.lifetime.end(i64 56, i8* %1) #4
  ret i32 %retval.1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupubndgi_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %ubnd, i32* nocapture readonly %groupindex) #1 {
  %1 = load i32* %dim, align 4, !tbaa !13
  %2 = load i32* %groupindex, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GroupubndGI(%struct.cGH* %cctkGH, i32 %1, i32* %ubnd, i32 %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupubndGN(%struct.cGH* %cctkGH, i32 %dim, i32* %ubnd, i8* %groupname) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GroupubndGI(%struct.cGH* %cctkGH, i32 %dim, i32* %ubnd, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 783, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str13, i64 0, i64 0), i8* %groupname) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupubndgn_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %ubnd, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load i32* %dim, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GroupubndGN(%struct.cGH* %cctkGH, i32 %2, i32* %ubnd, i8* %1) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupubndVI(%struct.cGH* %cctkGH, i32 %dim, i32* %ubnd, i32 %varindex) #1 {
  %1 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %varindex) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GroupubndGI(%struct.cGH* %cctkGH, i32 %dim, i32* %ubnd, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 819, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str14, i64 0, i64 0), i32 %varindex) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupubndvi_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %ubnd, i32* nocapture readonly %varindex) #1 {
  %1 = load i32* %dim, align 4, !tbaa !13
  %2 = load i32* %varindex, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GroupubndVI(%struct.cGH* %cctkGH, i32 %1, i32* %ubnd, i32 %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupubndVN(%struct.cGH* %cctkGH, i32 %dim, i32* %ubnd, i8* %varname) #1 {
  %1 = tail call i32 @CCTK_GroupIndexFromVar(i8* %varname) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GroupubndGI(%struct.cGH* %cctkGH, i32 %dim, i32* %ubnd, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 854, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str15, i64 0, i64 0), i8* %varname) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupubndvn_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %ubnd, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load i32* %dim, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GroupubndVN(%struct.cGH* %cctkGH, i32 %2, i32* %ubnd, i8* %1) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GrouplshGI(%struct.cGH* %cctkGH, i32 %dim, i32* %lsh, i32 %groupindex) #1 {
  %data = alloca %struct.GROUPDYNAMICDATA, align 8
  %1 = bitcast %struct.GROUPDYNAMICDATA* %data to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1) #4
  %2 = tail call i32 @CCTK_GroupTypeI(i32 %groupindex) #6
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @CCTK_GroupName(i32 %groupindex) #6
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 907, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str16, i64 0, i64 0), i8* %5) #6
  br label %35

; <label>:7                                       ; preds = %0
  %8 = load i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)** @CCTK_GroupDynamicData, align 8, !tbaa !9
  %9 = call i32 %8(%struct.cGH* %cctkGH, i32 %groupindex, %struct.GROUPDYNAMICDATA* %data) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %33

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 0
  %13 = load i32* %12, align 8, !tbaa !10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

; <label>:15                                      ; preds = %11
  %16 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 2
  %17 = load i32** %16, align 8, !tbaa !15
  %18 = icmp eq i32* %17, null
  br i1 %18, label %33, label %19

; <label>:19                                      ; preds = %15
  %20 = bitcast i32* %17 to i8*
  %21 = icmp eq i32 %13, %dim
  br i1 %21, label %._crit_edge, label %22

; <label>:22                                      ; preds = %19
  %23 = icmp slt i32 %13, %dim
  %.dim = select i1 %23, i32 %13, i32 %dim
  %24 = call i8* @CCTK_GroupName(i32 %groupindex) #6
  %25 = load i32* %12, align 8, !tbaa !10
  %26 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 921, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([97 x i8]* @.str17, i64 0, i64 0), i32 %dim, i8* %24, i32 %25, i32 %.dim) #6
  %.phi.trans.insert = bitcast i32** %16 to i8**
  %.pre = load i8** %.phi.trans.insert, align 8, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %19, %22
  %27 = phi i8* [ %.pre, %22 ], [ %20, %19 ]
  %usedim.0 = phi i32 [ %.dim, %22 ], [ %dim, %19 ]
  %retval.0 = phi i32 [ -1, %22 ], [ 0, %19 ]
  %28 = bitcast i32* %lsh to i8*
  %29 = sext i32 %usedim.0 to i64
  %30 = shl nsw i64 %29, 2
  %31 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %32 = call i8* @__memcpy_chk(i8* %28, i8* %27, i64 %30, i64 %31) #6
  br label %35

; <label>:33                                      ; preds = %15, %11, %7
  %34 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 931, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str18, i64 0, i64 0)) #6
  br label %35

; <label>:35                                      ; preds = %._crit_edge, %33, %4
  %retval.1 = phi i32 [ -3, %4 ], [ %retval.0, %._crit_edge ], [ -2, %33 ]
  call void @llvm.lifetime.end(i64 56, i8* %1) #4
  ret i32 %retval.1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_grouplshgi_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %lsh, i32* nocapture readonly %groupindex) #1 {
  %1 = load i32* %dim, align 4, !tbaa !13
  %2 = load i32* %groupindex, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GrouplshGI(%struct.cGH* %cctkGH, i32 %1, i32* %lsh, i32 %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GrouplshGN(%struct.cGH* %cctkGH, i32 %dim, i32* %lsh, i8* %groupname) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GrouplshGI(%struct.cGH* %cctkGH, i32 %dim, i32* %lsh, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 965, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str19, i64 0, i64 0), i8* %groupname) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_grouplshgn_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %lsh, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load i32* %dim, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GrouplshGN(%struct.cGH* %cctkGH, i32 %2, i32* %lsh, i8* %1) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GrouplshVI(%struct.cGH* %cctkGH, i32 %dim, i32* %lsh, i32 %varindex) #1 {
  %1 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %varindex) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GrouplshGI(%struct.cGH* %cctkGH, i32 %dim, i32* %lsh, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1001, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str20, i64 0, i64 0), i32 %varindex) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_grouplshvi_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %lsh, i32* nocapture readonly %varindex) #1 {
  %1 = load i32* %dim, align 4, !tbaa !13
  %2 = load i32* %varindex, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GrouplshVI(%struct.cGH* %cctkGH, i32 %1, i32* %lsh, i32 %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GrouplshVN(%struct.cGH* %cctkGH, i32 %dim, i32* %lsh, i8* %varname) #1 {
  %1 = tail call i32 @CCTK_GroupIndexFromVar(i8* %varname) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GrouplshGI(%struct.cGH* %cctkGH, i32 %dim, i32* %lsh, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1036, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str21, i64 0, i64 0), i8* %varname) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_grouplshvn_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %lsh, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load i32* %dim, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GrouplshVN(%struct.cGH* %cctkGH, i32 %2, i32* %lsh, i8* %1) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupgshGI(%struct.cGH* %cctkGH, i32 %dim, i32* %gsh, i32 %groupindex) #1 {
  %data = alloca %struct.GROUPDYNAMICDATA, align 8
  %1 = bitcast %struct.GROUPDYNAMICDATA* %data to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1) #4
  %2 = tail call i32 @CCTK_GroupTypeI(i32 %groupindex) #6
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @CCTK_GroupName(i32 %groupindex) #6
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1089, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str22, i64 0, i64 0), i8* %5) #6
  br label %35

; <label>:7                                       ; preds = %0
  %8 = load i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)** @CCTK_GroupDynamicData, align 8, !tbaa !9
  %9 = call i32 %8(%struct.cGH* %cctkGH, i32 %groupindex, %struct.GROUPDYNAMICDATA* %data) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %33

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 0
  %13 = load i32* %12, align 8, !tbaa !10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

; <label>:15                                      ; preds = %11
  %16 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 1
  %17 = load i32** %16, align 8, !tbaa !16
  %18 = icmp eq i32* %17, null
  br i1 %18, label %33, label %19

; <label>:19                                      ; preds = %15
  %20 = bitcast i32* %17 to i8*
  %21 = icmp eq i32 %13, %dim
  br i1 %21, label %._crit_edge, label %22

; <label>:22                                      ; preds = %19
  %23 = icmp slt i32 %13, %dim
  %.dim = select i1 %23, i32 %13, i32 %dim
  %24 = call i8* @CCTK_GroupName(i32 %groupindex) #6
  %25 = load i32* %12, align 8, !tbaa !10
  %26 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1103, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([97 x i8]* @.str23, i64 0, i64 0), i32 %dim, i8* %24, i32 %25, i32 %.dim) #6
  %.phi.trans.insert = bitcast i32** %16 to i8**
  %.pre = load i8** %.phi.trans.insert, align 8, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %19, %22
  %27 = phi i8* [ %.pre, %22 ], [ %20, %19 ]
  %usedim.0 = phi i32 [ %.dim, %22 ], [ %dim, %19 ]
  %retval.0 = phi i32 [ -1, %22 ], [ 0, %19 ]
  %28 = bitcast i32* %gsh to i8*
  %29 = sext i32 %usedim.0 to i64
  %30 = shl nsw i64 %29, 2
  %31 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %32 = call i8* @__memcpy_chk(i8* %28, i8* %27, i64 %30, i64 %31) #6
  br label %35

; <label>:33                                      ; preds = %15, %11, %7
  %34 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1113, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str24, i64 0, i64 0)) #6
  br label %35

; <label>:35                                      ; preds = %._crit_edge, %33, %4
  %retval.1 = phi i32 [ -3, %4 ], [ %retval.0, %._crit_edge ], [ -2, %33 ]
  call void @llvm.lifetime.end(i64 56, i8* %1) #4
  ret i32 %retval.1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupgshgi_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %gsh, i32* nocapture readonly %groupindex) #1 {
  %1 = load i32* %dim, align 4, !tbaa !13
  %2 = load i32* %groupindex, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GroupgshGI(%struct.cGH* %cctkGH, i32 %1, i32* %gsh, i32 %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupgshGN(%struct.cGH* %cctkGH, i32 %dim, i32* %gsh, i8* %groupname) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GroupgshGI(%struct.cGH* %cctkGH, i32 %dim, i32* %gsh, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1147, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str25, i64 0, i64 0), i8* %groupname) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupgshgn_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %gsh, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load i32* %dim, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GroupgshGN(%struct.cGH* %cctkGH, i32 %2, i32* %gsh, i8* %1) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupgshVI(%struct.cGH* %cctkGH, i32 %dim, i32* %gsh, i32 %varindex) #1 {
  %1 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %varindex) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GroupgshGI(%struct.cGH* %cctkGH, i32 %dim, i32* %gsh, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1183, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str26, i64 0, i64 0), i32 %varindex) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupgshvi_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %gsh, i32* nocapture readonly %varindex) #1 {
  %1 = load i32* %dim, align 4, !tbaa !13
  %2 = load i32* %varindex, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GroupgshVI(%struct.cGH* %cctkGH, i32 %1, i32* %gsh, i32 %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupgshVN(%struct.cGH* %cctkGH, i32 %dim, i32* %gsh, i8* %varname) #1 {
  %1 = tail call i32 @CCTK_GroupIndexFromVar(i8* %varname) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GroupgshGI(%struct.cGH* %cctkGH, i32 %dim, i32* %gsh, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1218, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str27, i64 0, i64 0), i8* %varname) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupgshvn_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %gsh, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load i32* %dim, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GroupgshVN(%struct.cGH* %cctkGH, i32 %2, i32* %gsh, i8* %1) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupnghostzonesGI(%struct.cGH* %cctkGH, i32 %dim, i32* %nghostzones, i32 %groupindex) #1 {
  %data = alloca %struct.GROUPDYNAMICDATA, align 8
  %1 = bitcast %struct.GROUPDYNAMICDATA* %data to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1) #4
  %2 = tail call i32 @CCTK_GroupTypeI(i32 %groupindex) #6
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @CCTK_GroupName(i32 %groupindex) #6
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1271, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str28, i64 0, i64 0), i8* %5) #6
  br label %35

; <label>:7                                       ; preds = %0
  %8 = load i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)** @CCTK_GroupDynamicData, align 8, !tbaa !9
  %9 = call i32 %8(%struct.cGH* %cctkGH, i32 %groupindex, %struct.GROUPDYNAMICDATA* %data) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %33

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 0
  %13 = load i32* %12, align 8, !tbaa !10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

; <label>:15                                      ; preds = %11
  %16 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 6
  %17 = load i32** %16, align 8, !tbaa !17
  %18 = icmp eq i32* %17, null
  br i1 %18, label %33, label %19

; <label>:19                                      ; preds = %15
  %20 = bitcast i32* %17 to i8*
  %21 = icmp eq i32 %13, %dim
  br i1 %21, label %._crit_edge, label %22

; <label>:22                                      ; preds = %19
  %23 = icmp slt i32 %13, %dim
  %.dim = select i1 %23, i32 %13, i32 %dim
  %24 = call i8* @CCTK_GroupName(i32 %groupindex) #6
  %25 = load i32* %12, align 8, !tbaa !10
  %26 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1286, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([105 x i8]* @.str29, i64 0, i64 0), i32 %dim, i8* %24, i32 %25, i32 %.dim) #6
  %.phi.trans.insert = bitcast i32** %16 to i8**
  %.pre = load i8** %.phi.trans.insert, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %19, %22
  %27 = phi i8* [ %.pre, %22 ], [ %20, %19 ]
  %usedim.0 = phi i32 [ %.dim, %22 ], [ %dim, %19 ]
  %retval.0 = phi i32 [ -1, %22 ], [ 0, %19 ]
  %28 = bitcast i32* %nghostzones to i8*
  %29 = sext i32 %usedim.0 to i64
  %30 = shl nsw i64 %29, 2
  %31 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %32 = call i8* @__memcpy_chk(i8* %28, i8* %27, i64 %30, i64 %31) #6
  br label %35

; <label>:33                                      ; preds = %15, %11, %7
  %34 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1296, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str30, i64 0, i64 0)) #6
  br label %35

; <label>:35                                      ; preds = %._crit_edge, %33, %4
  %retval.1 = phi i32 [ -3, %4 ], [ %retval.0, %._crit_edge ], [ -2, %33 ]
  call void @llvm.lifetime.end(i64 56, i8* %1) #4
  ret i32 %retval.1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupnghostzonesgi_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %nghostzones, i32* nocapture readonly %groupindex) #1 {
  %1 = load i32* %dim, align 4, !tbaa !13
  %2 = load i32* %groupindex, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GroupnghostzonesGI(%struct.cGH* %cctkGH, i32 %1, i32* %nghostzones, i32 %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupnghostzonesGN(%struct.cGH* %cctkGH, i32 %dim, i32* %nghostzones, i8* %groupname) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GroupnghostzonesGI(%struct.cGH* %cctkGH, i32 %dim, i32* %nghostzones, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1330, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str31, i64 0, i64 0), i8* %groupname) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupnghostzonesgn_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %nghostzones, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load i32* %dim, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GroupnghostzonesGN(%struct.cGH* %cctkGH, i32 %2, i32* %nghostzones, i8* %1) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupnghostzonesVI(%struct.cGH* %cctkGH, i32 %dim, i32* %nghostzones, i32 %varindex) #1 {
  %1 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %varindex) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GroupnghostzonesGI(%struct.cGH* %cctkGH, i32 %dim, i32* %nghostzones, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1366, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str32, i64 0, i64 0), i32 %varindex) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupnghostzonesvi_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %nghostzones, i32* nocapture readonly %varindex) #1 {
  %1 = load i32* %dim, align 4, !tbaa !13
  %2 = load i32* %varindex, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GroupnghostzonesVI(%struct.cGH* %cctkGH, i32 %1, i32* %nghostzones, i32 %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupnghostzonesVN(%struct.cGH* %cctkGH, i32 %dim, i32* %nghostzones, i8* %varname) #1 {
  %1 = tail call i32 @CCTK_GroupIndexFromVar(i8* %varname) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GroupnghostzonesGI(%struct.cGH* %cctkGH, i32 %dim, i32* %nghostzones, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1401, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str33, i64 0, i64 0), i8* %varname) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupnghostzonesvn_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %dim, i32* %nghostzones, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load i32* %dim, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GroupnghostzonesVN(%struct.cGH* %cctkGH, i32 %2, i32* %nghostzones, i8* %1) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupbboxGI(%struct.cGH* %cctkGH, i32 %size, i32* %bbox, i32 %groupindex) #1 {
  %data = alloca %struct.GROUPDYNAMICDATA, align 8
  %1 = bitcast %struct.GROUPDYNAMICDATA* %data to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1) #4
  %2 = tail call i32 @CCTK_GroupTypeI(i32 %groupindex) #6
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @CCTK_GroupName(i32 %groupindex) #6
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 1453, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str34, i64 0, i64 0), i8* %5) #6
  br label %36

; <label>:7                                       ; preds = %0
  %8 = load i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)** @CCTK_GroupDynamicData, align 8, !tbaa !9
  %9 = call i32 %8(%struct.cGH* %cctkGH, i32 %groupindex, %struct.GROUPDYNAMICDATA* %data) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %34

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 0
  %13 = load i32* %12, align 8, !tbaa !10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %15

; <label>:15                                      ; preds = %11
  %16 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 5
  %17 = load i32** %16, align 8, !tbaa !18
  %18 = icmp eq i32* %17, null
  br i1 %18, label %34, label %19

; <label>:19                                      ; preds = %15
  %20 = bitcast i32* %17 to i8*
  %21 = shl nsw i32 %13, 1
  %22 = icmp eq i32 %21, %size
  br i1 %22, label %._crit_edge, label %23

; <label>:23                                      ; preds = %19
  %24 = icmp slt i32 %21, %size
  %.size = select i1 %24, i32 %21, i32 %size
  %25 = call i8* @CCTK_GroupName(i32 %groupindex) #6
  %26 = load i32* %12, align 8, !tbaa !10
  %27 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1467, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([93 x i8]* @.str35, i64 0, i64 0), i32 %size, i8* %25, i32 %26, i32 %.size) #6
  %.phi.trans.insert = bitcast i32** %16 to i8**
  %.pre = load i8** %.phi.trans.insert, align 8, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %19, %23
  %28 = phi i8* [ %.pre, %23 ], [ %20, %19 ]
  %usesize.0 = phi i32 [ %.size, %23 ], [ %size, %19 ]
  %retval.0 = phi i32 [ -1, %23 ], [ 0, %19 ]
  %29 = bitcast i32* %bbox to i8*
  %30 = sext i32 %usesize.0 to i64
  %31 = shl nsw i64 %30, 2
  %32 = call i64 @llvm.objectsize.i64.p0i8(i8* %29, i1 false)
  %33 = call i8* @__memcpy_chk(i8* %29, i8* %28, i64 %31, i64 %32) #6
  br label %36

; <label>:34                                      ; preds = %15, %11, %7
  %35 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1477, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str36, i64 0, i64 0)) #6
  br label %36

; <label>:36                                      ; preds = %._crit_edge, %34, %4
  %retval.1 = phi i32 [ -3, %4 ], [ %retval.0, %._crit_edge ], [ -2, %34 ]
  call void @llvm.lifetime.end(i64 56, i8* %1) #4
  ret i32 %retval.1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupbboxgi_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %size, i32* %bbox, i32* nocapture readonly %groupindex) #1 {
  %1 = load i32* %size, align 4, !tbaa !13
  %2 = load i32* %groupindex, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GroupbboxGI(%struct.cGH* %cctkGH, i32 %1, i32* %bbox, i32 %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupbboxGN(%struct.cGH* %cctkGH, i32 %size, i32* %bbox, i8* %groupname) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GroupbboxGI(%struct.cGH* %cctkGH, i32 %size, i32* %bbox, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1511, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str37, i64 0, i64 0), i8* %groupname) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupbboxgn_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %size, i32* %bbox, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load i32* %size, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GroupbboxGN(%struct.cGH* %cctkGH, i32 %2, i32* %bbox, i8* %1) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupbboxVI(%struct.cGH* %cctkGH, i32 %size, i32* %bbox, i32 %varindex) #1 {
  %1 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %varindex) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GroupbboxGI(%struct.cGH* %cctkGH, i32 %size, i32* %bbox, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1547, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str38, i64 0, i64 0), i32 %varindex) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupbboxvi_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %size, i32* %bbox, i32* nocapture readonly %varindex) #1 {
  %1 = load i32* %size, align 4, !tbaa !13
  %2 = load i32* %varindex, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GroupbboxVI(%struct.cGH* %cctkGH, i32 %1, i32* %bbox, i32 %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GroupbboxVN(%struct.cGH* %cctkGH, i32 %size, i32* %bbox, i8* %varname) #1 {
  %1 = tail call i32 @CCTK_GroupIndexFromVar(i8* %varname) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_GroupbboxGI(%struct.cGH* %cctkGH, i32 %size, i32* %bbox, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1582, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str39, i64 0, i64 0), i8* %varname) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -4, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_groupbboxvn_(i32* nocapture %ierr, %struct.cGH* %cctkGH, i32* nocapture readonly %size, i32* %bbox, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load i32* %size, align 4, !tbaa !13
  %3 = tail call i32 @CCTK_GroupbboxVN(%struct.cGH* %cctkGH, i32 %2, i32* %bbox, i8* %1) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !13
  tail call void @free(i8* %1) #7
  ret void
}

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 128}
!3 = !{!"", !4, i64 0, !4, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !4, i64 104, !7, i64 112, !8, i64 120, !7, i64 128, !7, i64 136, !7, i64 144}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !4, i64 0}
!11 = !{!"GROUPDYNAMICDATA", !4, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!12 = !{!11, !7, i64 24}
!13 = !{!4, !4, i64 0}
!14 = !{!11, !7, i64 32}
!15 = !{!11, !7, i64 16}
!16 = !{!11, !7, i64 8}
!17 = !{!11, !7, i64 48}
!18 = !{!11, !7, i64 40}
