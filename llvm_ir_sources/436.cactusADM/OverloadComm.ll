; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadComm.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.GROUPDYNAMICDATA = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@CCTK_SyncGroup = global i32 (%struct.cGH*, i8*)* null, align 8
@CCTK_OverloadSyncGroup.overloaded = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"Overload Macros: Attempted to overload function %s%s twice\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"CCTK_\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"SyncGroup\00", align 1
@CCTK_EnableGroupStorage = global i32 (%struct.cGH*, i8*)* null, align 8
@CCTK_OverloadEnableGroupStorage.overloaded = internal unnamed_addr global i32 0, align 4
@.str5 = private unnamed_addr constant [19 x i8] c"EnableGroupStorage\00", align 1
@CCTK_DisableGroupStorage = global i32 (%struct.cGH*, i8*)* null, align 8
@CCTK_OverloadDisableGroupStorage.overloaded = internal unnamed_addr global i32 0, align 4
@.str6 = private unnamed_addr constant [20 x i8] c"DisableGroupStorage\00", align 1
@CCTK_EnableGroupComm = global i32 (%struct.cGH*, i8*)* null, align 8
@CCTK_OverloadEnableGroupComm.overloaded = internal unnamed_addr global i32 0, align 4
@.str7 = private unnamed_addr constant [16 x i8] c"EnableGroupComm\00", align 1
@CCTK_DisableGroupComm = global i32 (%struct.cGH*, i8*)* null, align 8
@CCTK_OverloadDisableGroupComm.overloaded = internal unnamed_addr global i32 0, align 4
@.str8 = private unnamed_addr constant [17 x i8] c"DisableGroupComm\00", align 1
@CCTK_Barrier = global i32 (%struct.cGH*)* null, align 8
@CCTK_OverloadBarrier.overloaded = internal unnamed_addr global i32 0, align 4
@.str9 = private unnamed_addr constant [8 x i8] c"Barrier\00", align 1
@CCTK_MyProc = global i32 (%struct.cGH*)* null, align 8
@CCTK_OverloadMyProc.overloaded = internal unnamed_addr global i32 0, align 4
@.str10 = private unnamed_addr constant [7 x i8] c"MyProc\00", align 1
@CCTK_nProcs = global i32 (%struct.cGH*)* null, align 8
@CCTK_OverloadnProcs.overloaded = internal unnamed_addr global i32 0, align 4
@.str11 = private unnamed_addr constant [7 x i8] c"nProcs\00", align 1
@CCTK_ParallelInit = global i32 (%struct.cGH*)* null, align 8
@CCTK_OverloadParallelInit.overloaded = internal unnamed_addr global i32 0, align 4
@.str12 = private unnamed_addr constant [13 x i8] c"ParallelInit\00", align 1
@CCTK_Exit = global i32 (%struct.cGH*, i32)* null, align 8
@CCTK_OverloadExit.overloaded = internal unnamed_addr global i32 0, align 4
@.str13 = private unnamed_addr constant [5 x i8] c"Exit\00", align 1
@CCTK_Abort = global i32 (%struct.cGH*, i32)* null, align 8
@CCTK_OverloadAbort.overloaded = internal unnamed_addr global i32 0, align 4
@.str14 = private unnamed_addr constant [6 x i8] c"Abort\00", align 1
@CCTK_SetupGH = global %struct.cGH* (%struct.tFleshConfig*, i32)* null, align 8
@CCTK_OverloadSetupGH.overloaded = internal unnamed_addr global i32 0, align 4
@.str15 = private unnamed_addr constant [8 x i8] c"SetupGH\00", align 1
@CCTK_ArrayGroupSizeB = global i32* (%struct.cGH*, i32, i32, i8*)* null, align 8
@CCTK_OverloadArrayGroupSizeB.overloaded = internal unnamed_addr global i32 0, align 4
@.str16 = private unnamed_addr constant [16 x i8] c"ArrayGroupSizeB\00", align 1
@CCTK_QueryGroupStorageB = global i32 (%struct.cGH*, i32, i8*)* null, align 8
@CCTK_OverloadQueryGroupStorageB.overloaded = internal unnamed_addr global i32 0, align 4
@.str17 = private unnamed_addr constant [19 x i8] c"QueryGroupStorageB\00", align 1
@CCTK_GroupDynamicData = global i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* null, align 8
@CCTK_OverloadGroupDynamicData.overloaded = internal unnamed_addr global i32 0, align 4
@.str18 = private unnamed_addr constant [17 x i8] c"GroupDynamicData\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str19 = private unnamed_addr constant [20 x i8] c"Dummy %s%s called.\0A\00", align 1
@.str20 = private unnamed_addr constant [12 x i8] c"CCTKi_Dummy\00", align 1
@.str21 = private unnamed_addr constant [88 x i8] c"$Header: /cactus/Cactus/src/comm/OverloadComm.c,v 1.25 2001/12/09 23:34:55 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_comm_OverloadComm_c() #0 {
  ret i8* getelementptr inbounds ([88 x i8]* @.str21, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadSyncGroup(i32 (%struct.cGH*, i8*)* %func) #1 {
  %1 = icmp eq i32 (%struct.cGH*, i8*)* %func, null
  %2 = load i32* @CCTK_OverloadSyncGroup.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** @CCTK_SyncGroup, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadSyncGroup.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 46, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0)) #4
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadEnableGroupStorage(i32 (%struct.cGH*, i8*)* %func) #1 {
  %1 = icmp eq i32 (%struct.cGH*, i8*)* %func, null
  %2 = load i32* @CCTK_OverloadEnableGroupStorage.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupStorage, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadEnableGroupStorage.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 48, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)) #4
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadDisableGroupStorage(i32 (%struct.cGH*, i8*)* %func) #1 {
  %1 = icmp eq i32 (%struct.cGH*, i8*)* %func, null
  %2 = load i32* @CCTK_OverloadDisableGroupStorage.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupStorage, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadDisableGroupStorage.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 49, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str6, i64 0, i64 0)) #4
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadEnableGroupComm(i32 (%struct.cGH*, i8*)* %func) #1 {
  %1 = icmp eq i32 (%struct.cGH*, i8*)* %func, null
  %2 = load i32* @CCTK_OverloadEnableGroupComm.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupComm, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadEnableGroupComm.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 51, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0)) #4
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadDisableGroupComm(i32 (%struct.cGH*, i8*)* %func) #1 {
  %1 = icmp eq i32 (%struct.cGH*, i8*)* %func, null
  %2 = load i32* @CCTK_OverloadDisableGroupComm.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupComm, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadDisableGroupComm.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 52, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0)) #4
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadBarrier(i32 (%struct.cGH*)* %func) #1 {
  %1 = icmp eq i32 (%struct.cGH*)* %func, null
  %2 = load i32* @CCTK_OverloadBarrier.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** @CCTK_Barrier, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadBarrier.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 58, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0)) #4
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadMyProc(i32 (%struct.cGH*)* %func) #1 {
  %1 = icmp eq i32 (%struct.cGH*)* %func, null
  %2 = load i32* @CCTK_OverloadMyProc.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadMyProc.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 59, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #4
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadnProcs(i32 (%struct.cGH*)* %func) #1 {
  %1 = icmp eq i32 (%struct.cGH*)* %func, null
  %2 = load i32* @CCTK_OverloadnProcs.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** @CCTK_nProcs, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadnProcs.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 60, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0)) #4
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadParallelInit(i32 (%struct.cGH*)* %func) #1 {
  %1 = icmp eq i32 (%struct.cGH*)* %func, null
  %2 = load i32* @CCTK_OverloadParallelInit.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** @CCTK_ParallelInit, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadParallelInit.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 66, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str12, i64 0, i64 0)) #4
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadExit(i32 (%struct.cGH*, i32)* %func) #1 {
  %1 = icmp eq i32 (%struct.cGH*, i32)* %func, null
  %2 = load i32* @CCTK_OverloadExit.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i32)* %func, i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadExit.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 74, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0)) #4
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadAbort(i32 (%struct.cGH*, i32)* %func) #1 {
  %1 = icmp eq i32 (%struct.cGH*, i32)* %func, null
  %2 = load i32* @CCTK_OverloadAbort.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i32)* %func, i32 (%struct.cGH*, i32)** @CCTK_Abort, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadAbort.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 75, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0)) #4
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadSetupGH(%struct.cGH* (%struct.tFleshConfig*, i32)* %func) #1 {
  %1 = icmp eq %struct.cGH* (%struct.tFleshConfig*, i32)* %func, null
  %2 = load i32* @CCTK_OverloadSetupGH.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store %struct.cGH* (%struct.tFleshConfig*, i32)* %func, %struct.cGH* (%struct.tFleshConfig*, i32)** @CCTK_SetupGH, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadSetupGH.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 83, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0)) #4
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadArrayGroupSizeB(i32* (%struct.cGH*, i32, i32, i8*)* %func) #1 {
  %1 = icmp eq i32* (%struct.cGH*, i32, i32, i8*)* %func, null
  %2 = load i32* @CCTK_OverloadArrayGroupSizeB.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32* (%struct.cGH*, i32, i32, i8*)* %func, i32* (%struct.cGH*, i32, i32, i8*)** @CCTK_ArrayGroupSizeB, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadArrayGroupSizeB.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 91, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #4
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadQueryGroupStorageB(i32 (%struct.cGH*, i32, i8*)* %func) #1 {
  %1 = icmp eq i32 (%struct.cGH*, i32, i8*)* %func, null
  %2 = load i32* @CCTK_OverloadQueryGroupStorageB.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i32, i8*)* %func, i32 (%struct.cGH*, i32, i8*)** @CCTK_QueryGroupStorageB, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadQueryGroupStorageB.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 99, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str17, i64 0, i64 0)) #4
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadGroupDynamicData(i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* %func) #1 {
  %1 = icmp eq i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* %func, null
  %2 = load i32* @CCTK_OverloadGroupDynamicData.overloaded, align 4, !tbaa !2
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* %func, i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)** @CCTK_GroupDynamicData, align 8, !tbaa !6
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @CCTK_OverloadGroupDynamicData.overloaded, align 4, !tbaa !2
  br label %9

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 107, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0)) #4
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetupCommFunctions() #1 {
  %1 = tail call i32 @CCTK_OverloadSyncGroup(i32 (%struct.cGH*, i8*)* @CCTKi_DummySyncGroup) #5
  %2 = tail call i32 @CCTK_OverloadEnableGroupStorage(i32 (%struct.cGH*, i8*)* @CCTKi_DummyEnableGroupStorage) #5
  %3 = tail call i32 @CCTK_OverloadDisableGroupStorage(i32 (%struct.cGH*, i8*)* @CCTKi_DummyDisableGroupStorage) #5
  %4 = tail call i32 @CCTK_OverloadEnableGroupComm(i32 (%struct.cGH*, i8*)* @CCTKi_DummyEnableGroupComm) #5
  %5 = tail call i32 @CCTK_OverloadDisableGroupComm(i32 (%struct.cGH*, i8*)* @CCTKi_DummyDisableGroupComm) #5
  %6 = tail call i32 @CCTK_OverloadBarrier(i32 (%struct.cGH*)* @CactusDefaultBarrier) #5
  %7 = tail call i32 @CCTK_OverloadMyProc(i32 (%struct.cGH*)* @CactusDefaultMyProc) #5
  %8 = tail call i32 @CCTK_OverloadnProcs(i32 (%struct.cGH*)* @CactusDefaultnProcs) #5
  %9 = tail call i32 @CCTK_OverloadParallelInit(i32 (%struct.cGH*)* @CCTKi_DummyParallelInit) #5
  %10 = tail call i32 @CCTK_OverloadExit(i32 (%struct.cGH*, i32)* @CactusDefaultExit) #5
  %11 = tail call i32 @CCTK_OverloadAbort(i32 (%struct.cGH*, i32)* @CactusDefaultAbort) #5
  %12 = tail call i32 @CCTK_OverloadSetupGH(%struct.cGH* (%struct.tFleshConfig*, i32)* @CactusDefaultSetupGH) #5
  %13 = tail call i32 @CCTK_OverloadArrayGroupSizeB(i32* (%struct.cGH*, i32, i32, i8*)* @CCTKi_DummyArrayGroupSizeB) #5
  %14 = tail call i32 @CCTK_OverloadQueryGroupStorageB(i32 (%struct.cGH*, i32, i8*)* @CCTKi_DummyQueryGroupStorageB) #5
  %15 = tail call i32 @CCTK_OverloadGroupDynamicData(i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* @CCTKi_DummyGroupDynamicData) #5
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummySyncGroup(%struct.cGH* nocapture readnone %GH, i8* nocapture readnone %group) #1 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0)) #4
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyEnableGroupStorage(%struct.cGH* nocapture readnone %GH, i8* nocapture readnone %group) #1 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)) #4
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyDisableGroupStorage(%struct.cGH* nocapture readnone %GH, i8* nocapture readnone %group) #1 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str6, i64 0, i64 0)) #4
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyEnableGroupComm(%struct.cGH* nocapture readnone %GH, i8* nocapture readnone %group) #1 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0)) #4
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyDisableGroupComm(%struct.cGH* nocapture readnone %GH, i8* nocapture readnone %group) #1 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0)) #4
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CactusDefaultBarrier(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CactusDefaultMyProc(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CactusDefaultnProcs(%struct.cGH*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyParallelInit(%struct.cGH* nocapture readnone %GH) #1 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str12, i64 0, i64 0)) #4
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CactusDefaultExit(%struct.cGH*, i32) #2

; Function Attrs: optsize
declare i32 @CactusDefaultAbort(%struct.cGH*, i32) #2

; Function Attrs: optsize
declare %struct.cGH* @CactusDefaultSetupGH(%struct.tFleshConfig*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define noalias i32* @CCTKi_DummyArrayGroupSizeB(%struct.cGH* nocapture readnone %GH, i32 %dir, i32 %group, i8* nocapture readnone %groupname) #1 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #4
  ret i32* null
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyQueryGroupStorageB(%struct.cGH* nocapture readnone %GH, i32 %group, i8* nocapture readnone %groupname) #1 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str17, i64 0, i64 0)) #4
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyGroupDynamicData(%struct.cGH* nocapture readnone %GH, i32 %group, %struct.GROUPDYNAMICDATA* nocapture readnone %data) #1 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0)) #4
  ret i32 0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyBarrier(%struct.cGH* nocapture readnone %GH) #1 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0)) #4
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyMyProc(%struct.cGH* nocapture readnone %GH) #1 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #4
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummynProcs(%struct.cGH* nocapture readnone %GH) #1 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0)) #4
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyExit(%struct.cGH* nocapture readnone %GH, i32 %retval) #1 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0)) #4
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyAbort(%struct.cGH* nocapture readnone %GH, i32 %retval) #1 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0)) #4
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct.cGH* @CCTKi_DummySetupGH(%struct.tFleshConfig* nocapture readnone %config, i32 %convergence_level) #1 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0)) #4
  ret %struct.cGH* null
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @cctk_nprocs_(%struct.cGH* %GH) #1 {
  %1 = load i32 (%struct.cGH*)** @CCTK_nProcs, align 8, !tbaa !6
  %2 = tail call i32 %1(%struct.cGH* %GH) #4
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @cctk_myproc_(%struct.cGH* %GH) #1 {
  %1 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !6
  %2 = tail call i32 %1(%struct.cGH* %GH) #4
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_barrier_(i32* nocapture %ierror, %struct.cGH* %GH) #1 {
  %1 = load i32 (%struct.cGH*)** @CCTK_Barrier, align 8, !tbaa !6
  %2 = tail call i32 %1(%struct.cGH* %GH) #4
  store i32 %2, i32* %ierror, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_exit_(i32* nocapture %ierror, %struct.cGH* %GH, i32* nocapture readonly %retval) #1 {
  %1 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !tbaa !6
  %2 = load i32* %retval, align 4, !tbaa !2
  %3 = tail call i32 %1(%struct.cGH* %GH, i32 %2) #4
  store i32 %3, i32* %ierror, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_abort_(i32* nocapture %ierror, %struct.cGH* %GH, i32* nocapture readonly %retval) #1 {
  %1 = load i32 (%struct.cGH*, i32)** @CCTK_Abort, align 8, !tbaa !6
  %2 = load i32* %retval, align 4, !tbaa !2
  %3 = tail call i32 %1(%struct.cGH* %GH, i32 %2) #4
  store i32 %3, i32* %ierror, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_syncgroup_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #4
  %2 = load i32 (%struct.cGH*, i8*)** @CCTK_SyncGroup, align 8, !tbaa !6
  %3 = tail call i32 %2(%struct.cGH* %GH, i8* %1) #4
  store i32 %3, i32* %ierror, align 4, !tbaa !2
  tail call void @free(i8* %1) #5
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_enablegroupcomm_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #4
  %2 = load i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupComm, align 8, !tbaa !6
  %3 = tail call i32 %2(%struct.cGH* %GH, i8* %1) #4
  store i32 %3, i32* %ierror, align 4, !tbaa !2
  tail call void @free(i8* %1) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_disablegroupcomm_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #4
  %2 = load i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupComm, align 8, !tbaa !6
  %3 = tail call i32 %2(%struct.cGH* %GH, i8* %1) #4
  store i32 %3, i32* %ierror, align 4, !tbaa !2
  tail call void @free(i8* %1) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_enablegroupstorage_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #4
  %2 = load i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupStorage, align 8, !tbaa !6
  %3 = tail call i32 %2(%struct.cGH* %GH, i8* %1) #4
  store i32 %3, i32* %ierror, align 4, !tbaa !2
  tail call void @free(i8* %1) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_disablegroupstorage_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #4
  %2 = load i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupStorage, align 8, !tbaa !6
  %3 = tail call i32 %2(%struct.cGH* %GH, i8* %1) #4
  store i32 %3, i32* %ierror, align 4, !tbaa !2
  tail call void @free(i8* %1) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_querygroupstorage_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #4
  %2 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* %1) #4
  store i32 %2, i32* %ierror, align 4, !tbaa !2
  tail call void @free(i8* %1) #5
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorage(%struct.cGH*, i8*) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
