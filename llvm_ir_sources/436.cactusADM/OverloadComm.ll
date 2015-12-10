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
  ret i8* getelementptr inbounds ([88 x i8]* @.str21, i64 0, i64 0), !dbg !345
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadSyncGroup(i32 (%struct.cGH*, i8*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i8*)* %func, i64 0, metadata !56, metadata !346), !dbg !347
  %1 = icmp eq i32 (%struct.cGH*, i8*)* %func, null, !dbg !348
  %2 = load i32* @CCTK_OverloadSyncGroup.overloaded, align 4, !dbg !350, !tbaa !353
  br i1 %1, label %9, label %3, !dbg !347

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !350
  br i1 %4, label %5, label %7, !dbg !357

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** @CCTK_SyncGroup, align 8, !dbg !358, !tbaa !360
  %6 = add nsw i32 %2, 1, !dbg !358
  store i32 %6, i32* @CCTK_OverloadSyncGroup.overloaded, align 4, !dbg !358, !tbaa !353
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !57, metadata !346), !dbg !347
  br label %9, !dbg !358

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 46, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !362
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !57, metadata !346), !dbg !347
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !347
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadEnableGroupStorage(i32 (%struct.cGH*, i8*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i8*)* %func, i64 0, metadata !60, metadata !346), !dbg !364
  %1 = icmp eq i32 (%struct.cGH*, i8*)* %func, null, !dbg !365
  %2 = load i32* @CCTK_OverloadEnableGroupStorage.overloaded, align 4, !dbg !367, !tbaa !353
  br i1 %1, label %9, label %3, !dbg !364

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !367
  br i1 %4, label %5, label %7, !dbg !370

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupStorage, align 8, !dbg !371, !tbaa !360
  %6 = add nsw i32 %2, 1, !dbg !371
  store i32 %6, i32* @CCTK_OverloadEnableGroupStorage.overloaded, align 4, !dbg !371, !tbaa !353
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !61, metadata !346), !dbg !364
  br label %9, !dbg !371

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 48, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !373
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !61, metadata !346), !dbg !364
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !364
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadDisableGroupStorage(i32 (%struct.cGH*, i8*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i8*)* %func, i64 0, metadata !64, metadata !346), !dbg !375
  %1 = icmp eq i32 (%struct.cGH*, i8*)* %func, null, !dbg !376
  %2 = load i32* @CCTK_OverloadDisableGroupStorage.overloaded, align 4, !dbg !378, !tbaa !353
  br i1 %1, label %9, label %3, !dbg !375

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !378
  br i1 %4, label %5, label %7, !dbg !381

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupStorage, align 8, !dbg !382, !tbaa !360
  %6 = add nsw i32 %2, 1, !dbg !382
  store i32 %6, i32* @CCTK_OverloadDisableGroupStorage.overloaded, align 4, !dbg !382, !tbaa !353
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !65, metadata !346), !dbg !375
  br label %9, !dbg !382

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 49, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str6, i64 0, i64 0)) #5, !dbg !384
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !65, metadata !346), !dbg !375
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !375
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadEnableGroupComm(i32 (%struct.cGH*, i8*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i8*)* %func, i64 0, metadata !68, metadata !346), !dbg !386
  %1 = icmp eq i32 (%struct.cGH*, i8*)* %func, null, !dbg !387
  %2 = load i32* @CCTK_OverloadEnableGroupComm.overloaded, align 4, !dbg !389, !tbaa !353
  br i1 %1, label %9, label %3, !dbg !386

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !389
  br i1 %4, label %5, label %7, !dbg !392

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupComm, align 8, !dbg !393, !tbaa !360
  %6 = add nsw i32 %2, 1, !dbg !393
  store i32 %6, i32* @CCTK_OverloadEnableGroupComm.overloaded, align 4, !dbg !393, !tbaa !353
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !69, metadata !346), !dbg !386
  br label %9, !dbg !393

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 51, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !395
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !69, metadata !346), !dbg !386
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !386
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadDisableGroupComm(i32 (%struct.cGH*, i8*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i8*)* %func, i64 0, metadata !72, metadata !346), !dbg !397
  %1 = icmp eq i32 (%struct.cGH*, i8*)* %func, null, !dbg !398
  %2 = load i32* @CCTK_OverloadDisableGroupComm.overloaded, align 4, !dbg !400, !tbaa !353
  br i1 %1, label %9, label %3, !dbg !397

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !400
  br i1 %4, label %5, label %7, !dbg !403

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupComm, align 8, !dbg !404, !tbaa !360
  %6 = add nsw i32 %2, 1, !dbg !404
  store i32 %6, i32* @CCTK_OverloadDisableGroupComm.overloaded, align 4, !dbg !404, !tbaa !353
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !73, metadata !346), !dbg !397
  br label %9, !dbg !404

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 52, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0)) #5, !dbg !406
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !73, metadata !346), !dbg !397
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !397
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadBarrier(i32 (%struct.cGH*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*)* %func, i64 0, metadata !83, metadata !346), !dbg !408
  %1 = icmp eq i32 (%struct.cGH*)* %func, null, !dbg !409
  %2 = load i32* @CCTK_OverloadBarrier.overloaded, align 4, !dbg !411, !tbaa !353
  br i1 %1, label %9, label %3, !dbg !408

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !411
  br i1 %4, label %5, label %7, !dbg !414

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** @CCTK_Barrier, align 8, !dbg !415, !tbaa !360
  %6 = add nsw i32 %2, 1, !dbg !415
  store i32 %6, i32* @CCTK_OverloadBarrier.overloaded, align 4, !dbg !415, !tbaa !353
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !84, metadata !346), !dbg !408
  br label %9, !dbg !415

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 58, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0)) #5, !dbg !417
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !84, metadata !346), !dbg !408
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !408
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadMyProc(i32 (%struct.cGH*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*)* %func, i64 0, metadata !87, metadata !346), !dbg !419
  %1 = icmp eq i32 (%struct.cGH*)* %func, null, !dbg !420
  %2 = load i32* @CCTK_OverloadMyProc.overloaded, align 4, !dbg !422, !tbaa !353
  br i1 %1, label %9, label %3, !dbg !419

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !422
  br i1 %4, label %5, label %7, !dbg !425

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !426, !tbaa !360
  %6 = add nsw i32 %2, 1, !dbg !426
  store i32 %6, i32* @CCTK_OverloadMyProc.overloaded, align 4, !dbg !426, !tbaa !353
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !88, metadata !346), !dbg !419
  br label %9, !dbg !426

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 59, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #5, !dbg !428
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !88, metadata !346), !dbg !419
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !419
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadnProcs(i32 (%struct.cGH*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*)* %func, i64 0, metadata !91, metadata !346), !dbg !430
  %1 = icmp eq i32 (%struct.cGH*)* %func, null, !dbg !431
  %2 = load i32* @CCTK_OverloadnProcs.overloaded, align 4, !dbg !433, !tbaa !353
  br i1 %1, label %9, label %3, !dbg !430

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !433
  br i1 %4, label %5, label %7, !dbg !436

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** @CCTK_nProcs, align 8, !dbg !437, !tbaa !360
  %6 = add nsw i32 %2, 1, !dbg !437
  store i32 %6, i32* @CCTK_OverloadnProcs.overloaded, align 4, !dbg !437, !tbaa !353
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !92, metadata !346), !dbg !430
  br label %9, !dbg !437

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 60, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !439
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !92, metadata !346), !dbg !430
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !430
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadParallelInit(i32 (%struct.cGH*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*)* %func, i64 0, metadata !100, metadata !346), !dbg !441
  %1 = icmp eq i32 (%struct.cGH*)* %func, null, !dbg !442
  %2 = load i32* @CCTK_OverloadParallelInit.overloaded, align 4, !dbg !444, !tbaa !353
  br i1 %1, label %9, label %3, !dbg !441

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !444
  br i1 %4, label %5, label %7, !dbg !447

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** @CCTK_ParallelInit, align 8, !dbg !448, !tbaa !360
  %6 = add nsw i32 %2, 1, !dbg !448
  store i32 %6, i32* @CCTK_OverloadParallelInit.overloaded, align 4, !dbg !448, !tbaa !353
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !101, metadata !346), !dbg !441
  br label %9, !dbg !448

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 66, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str12, i64 0, i64 0)) #5, !dbg !450
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !101, metadata !346), !dbg !441
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !441
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadExit(i32 (%struct.cGH*, i32)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i32)* %func, i64 0, metadata !109, metadata !346), !dbg !452
  %1 = icmp eq i32 (%struct.cGH*, i32)* %func, null, !dbg !453
  %2 = load i32* @CCTK_OverloadExit.overloaded, align 4, !dbg !455, !tbaa !353
  br i1 %1, label %9, label %3, !dbg !452

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !455
  br i1 %4, label %5, label %7, !dbg !458

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i32)* %func, i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !dbg !459, !tbaa !360
  %6 = add nsw i32 %2, 1, !dbg !459
  store i32 %6, i32* @CCTK_OverloadExit.overloaded, align 4, !dbg !459, !tbaa !353
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !110, metadata !346), !dbg !452
  br label %9, !dbg !459

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 74, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0)) #5, !dbg !461
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !110, metadata !346), !dbg !452
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !452
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadAbort(i32 (%struct.cGH*, i32)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i32)* %func, i64 0, metadata !113, metadata !346), !dbg !463
  %1 = icmp eq i32 (%struct.cGH*, i32)* %func, null, !dbg !464
  %2 = load i32* @CCTK_OverloadAbort.overloaded, align 4, !dbg !466, !tbaa !353
  br i1 %1, label %9, label %3, !dbg !463

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !466
  br i1 %4, label %5, label %7, !dbg !469

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i32)* %func, i32 (%struct.cGH*, i32)** @CCTK_Abort, align 8, !dbg !470, !tbaa !360
  %6 = add nsw i32 %2, 1, !dbg !470
  store i32 %6, i32* @CCTK_OverloadAbort.overloaded, align 4, !dbg !470, !tbaa !353
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !114, metadata !346), !dbg !463
  br label %9, !dbg !470

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 75, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0)) #5, !dbg !472
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !114, metadata !346), !dbg !463
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !463
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadSetupGH(%struct.cGH* (%struct.tFleshConfig*, i32)* %func) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* (%struct.tFleshConfig*, i32)* %func, i64 0, metadata !133, metadata !346), !dbg !474
  %1 = icmp eq %struct.cGH* (%struct.tFleshConfig*, i32)* %func, null, !dbg !475
  %2 = load i32* @CCTK_OverloadSetupGH.overloaded, align 4, !dbg !477, !tbaa !353
  br i1 %1, label %9, label %3, !dbg !474

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !477
  br i1 %4, label %5, label %7, !dbg !480

; <label>:5                                       ; preds = %3
  store %struct.cGH* (%struct.tFleshConfig*, i32)* %func, %struct.cGH* (%struct.tFleshConfig*, i32)** @CCTK_SetupGH, align 8, !dbg !481, !tbaa !360
  %6 = add nsw i32 %2, 1, !dbg !481
  store i32 %6, i32* @CCTK_OverloadSetupGH.overloaded, align 4, !dbg !481, !tbaa !353
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !134, metadata !346), !dbg !474
  br label %9, !dbg !481

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 83, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0)) #5, !dbg !483
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !134, metadata !346), !dbg !474
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !474
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadArrayGroupSizeB(i32* (%struct.cGH*, i32, i32, i8*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32* (%struct.cGH*, i32, i32, i8*)* %func, i64 0, metadata !144, metadata !346), !dbg !485
  %1 = icmp eq i32* (%struct.cGH*, i32, i32, i8*)* %func, null, !dbg !486
  %2 = load i32* @CCTK_OverloadArrayGroupSizeB.overloaded, align 4, !dbg !488, !tbaa !353
  br i1 %1, label %9, label %3, !dbg !485

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !488
  br i1 %4, label %5, label %7, !dbg !491

; <label>:5                                       ; preds = %3
  store i32* (%struct.cGH*, i32, i32, i8*)* %func, i32* (%struct.cGH*, i32, i32, i8*)** @CCTK_ArrayGroupSizeB, align 8, !dbg !492, !tbaa !360
  %6 = add nsw i32 %2, 1, !dbg !492
  store i32 %6, i32* @CCTK_OverloadArrayGroupSizeB.overloaded, align 4, !dbg !492, !tbaa !353
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !145, metadata !346), !dbg !485
  br label %9, !dbg !492

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 91, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #5, !dbg !494
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !145, metadata !346), !dbg !485
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !485
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadQueryGroupStorageB(i32 (%struct.cGH*, i32, i8*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i32, i8*)* %func, i64 0, metadata !153, metadata !346), !dbg !496
  %1 = icmp eq i32 (%struct.cGH*, i32, i8*)* %func, null, !dbg !497
  %2 = load i32* @CCTK_OverloadQueryGroupStorageB.overloaded, align 4, !dbg !499, !tbaa !353
  br i1 %1, label %9, label %3, !dbg !496

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !499
  br i1 %4, label %5, label %7, !dbg !502

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i32, i8*)* %func, i32 (%struct.cGH*, i32, i8*)** @CCTK_QueryGroupStorageB, align 8, !dbg !503, !tbaa !360
  %6 = add nsw i32 %2, 1, !dbg !503
  store i32 %6, i32* @CCTK_OverloadQueryGroupStorageB.overloaded, align 4, !dbg !503, !tbaa !353
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !154, metadata !346), !dbg !496
  br label %9, !dbg !503

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 99, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str17, i64 0, i64 0)) #5, !dbg !505
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !154, metadata !346), !dbg !496
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !496
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OverloadGroupDynamicData(i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* %func, i64 0, metadata !174, metadata !346), !dbg !507
  %1 = icmp eq i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* %func, null, !dbg !508
  %2 = load i32* @CCTK_OverloadGroupDynamicData.overloaded, align 4, !dbg !510, !tbaa !353
  br i1 %1, label %9, label %3, !dbg !507

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %2, 2, !dbg !510
  br i1 %4, label %5, label %7, !dbg !513

; <label>:5                                       ; preds = %3
  store i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* %func, i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)** @CCTK_GroupDynamicData, align 8, !dbg !514, !tbaa !360
  %6 = add nsw i32 %2, 1, !dbg !514
  store i32 %6, i32* @CCTK_OverloadGroupDynamicData.overloaded, align 4, !dbg !514, !tbaa !353
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !175, metadata !346), !dbg !507
  br label %9, !dbg !514

; <label>:7                                       ; preds = %3
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 107, i8* getelementptr inbounds ([97 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0)) #5, !dbg !516
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !175, metadata !346), !dbg !507
  br label %9

; <label>:9                                       ; preds = %0, %5, %7
  %return_code.0 = phi i32 [ %6, %5 ], [ 0, %7 ], [ %2, %0 ]
  ret i32 %return_code.0, !dbg !507
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetupCommFunctions() #1 {
  %1 = tail call i32 @CCTK_OverloadSyncGroup(i32 (%struct.cGH*, i8*)* @CCTKi_DummySyncGroup) #6, !dbg !518
  %2 = tail call i32 @CCTK_OverloadEnableGroupStorage(i32 (%struct.cGH*, i8*)* @CCTKi_DummyEnableGroupStorage) #6, !dbg !520
  %3 = tail call i32 @CCTK_OverloadDisableGroupStorage(i32 (%struct.cGH*, i8*)* @CCTKi_DummyDisableGroupStorage) #6, !dbg !521
  %4 = tail call i32 @CCTK_OverloadEnableGroupComm(i32 (%struct.cGH*, i8*)* @CCTKi_DummyEnableGroupComm) #6, !dbg !522
  %5 = tail call i32 @CCTK_OverloadDisableGroupComm(i32 (%struct.cGH*, i8*)* @CCTKi_DummyDisableGroupComm) #6, !dbg !523
  %6 = tail call i32 @CCTK_OverloadBarrier(i32 (%struct.cGH*)* @CactusDefaultBarrier) #6, !dbg !524
  %7 = tail call i32 @CCTK_OverloadMyProc(i32 (%struct.cGH*)* @CactusDefaultMyProc) #6, !dbg !525
  %8 = tail call i32 @CCTK_OverloadnProcs(i32 (%struct.cGH*)* @CactusDefaultnProcs) #6, !dbg !526
  %9 = tail call i32 @CCTK_OverloadParallelInit(i32 (%struct.cGH*)* @CCTKi_DummyParallelInit) #6, !dbg !527
  %10 = tail call i32 @CCTK_OverloadExit(i32 (%struct.cGH*, i32)* @CactusDefaultExit) #6, !dbg !528
  %11 = tail call i32 @CCTK_OverloadAbort(i32 (%struct.cGH*, i32)* @CactusDefaultAbort) #6, !dbg !529
  %12 = tail call i32 @CCTK_OverloadSetupGH(%struct.cGH* (%struct.tFleshConfig*, i32)* @CactusDefaultSetupGH) #6, !dbg !530
  %13 = tail call i32 @CCTK_OverloadArrayGroupSizeB(i32* (%struct.cGH*, i32, i32, i8*)* @CCTKi_DummyArrayGroupSizeB) #6, !dbg !531
  %14 = tail call i32 @CCTK_OverloadQueryGroupStorageB(i32 (%struct.cGH*, i32, i8*)* @CCTKi_DummyQueryGroupStorageB) #6, !dbg !532
  %15 = tail call i32 @CCTK_OverloadGroupDynamicData(i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* @CCTKi_DummyGroupDynamicData) #6, !dbg !533
  ret i32 0, !dbg !534
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummySyncGroup(%struct.cGH* nocapture readnone %GH, i8* nocapture readnone %group) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !181, metadata !346), !dbg !536
  tail call void @llvm.dbg.value(metadata i8* %group, i64 0, metadata !182, metadata !346), !dbg !536
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !181, metadata !346), !dbg !536
  tail call void @llvm.dbg.value(metadata i8* %group, i64 0, metadata !182, metadata !346), !dbg !536
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !536, !tbaa !360
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !536
  ret i32 0, !dbg !536
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyEnableGroupStorage(%struct.cGH* nocapture readnone %GH, i8* nocapture readnone %group) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !185, metadata !346), !dbg !537
  tail call void @llvm.dbg.value(metadata i8* %group, i64 0, metadata !186, metadata !346), !dbg !537
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !185, metadata !346), !dbg !537
  tail call void @llvm.dbg.value(metadata i8* %group, i64 0, metadata !186, metadata !346), !dbg !537
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !537, !tbaa !360
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !537
  ret i32 0, !dbg !537
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyDisableGroupStorage(%struct.cGH* nocapture readnone %GH, i8* nocapture readnone %group) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !189, metadata !346), !dbg !538
  tail call void @llvm.dbg.value(metadata i8* %group, i64 0, metadata !190, metadata !346), !dbg !538
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !189, metadata !346), !dbg !538
  tail call void @llvm.dbg.value(metadata i8* %group, i64 0, metadata !190, metadata !346), !dbg !538
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !538, !tbaa !360
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str6, i64 0, i64 0)) #5, !dbg !538
  ret i32 0, !dbg !538
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyEnableGroupComm(%struct.cGH* nocapture readnone %GH, i8* nocapture readnone %group) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !193, metadata !346), !dbg !539
  tail call void @llvm.dbg.value(metadata i8* %group, i64 0, metadata !194, metadata !346), !dbg !539
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !193, metadata !346), !dbg !539
  tail call void @llvm.dbg.value(metadata i8* %group, i64 0, metadata !194, metadata !346), !dbg !539
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !539, !tbaa !360
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !539
  ret i32 0, !dbg !539
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyDisableGroupComm(%struct.cGH* nocapture readnone %GH, i8* nocapture readnone %group) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !197, metadata !346), !dbg !540
  tail call void @llvm.dbg.value(metadata i8* %group, i64 0, metadata !198, metadata !346), !dbg !540
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !197, metadata !346), !dbg !540
  tail call void @llvm.dbg.value(metadata i8* %group, i64 0, metadata !198, metadata !346), !dbg !540
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !540, !tbaa !360
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0)) #5, !dbg !540
  ret i32 0, !dbg !540
}

; Function Attrs: optsize
declare i32 @CactusDefaultBarrier(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CactusDefaultMyProc(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CactusDefaultnProcs(%struct.cGH*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyParallelInit(%struct.cGH* nocapture readnone %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !210, metadata !346), !dbg !541
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !210, metadata !346), !dbg !541
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !541, !tbaa !360
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str12, i64 0, i64 0)) #5, !dbg !541
  ret i32 0, !dbg !541
}

; Function Attrs: optsize
declare i32 @CactusDefaultExit(%struct.cGH*, i32) #2

; Function Attrs: optsize
declare i32 @CactusDefaultAbort(%struct.cGH*, i32) #2

; Function Attrs: optsize
declare %struct.cGH* @CactusDefaultSetupGH(%struct.tFleshConfig*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define noalias i32* @CCTKi_DummyArrayGroupSizeB(%struct.cGH* nocapture readnone %GH, i32 %dir, i32 %group, i8* nocapture readnone %groupname) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !225, metadata !346), !dbg !542
  tail call void @llvm.dbg.value(metadata i32 %dir, i64 0, metadata !226, metadata !346), !dbg !542
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !227, metadata !346), !dbg !542
  tail call void @llvm.dbg.value(metadata i8* %groupname, i64 0, metadata !228, metadata !346), !dbg !542
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !225, metadata !346), !dbg !542
  tail call void @llvm.dbg.value(metadata i32 %dir, i64 0, metadata !226, metadata !346), !dbg !542
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !227, metadata !346), !dbg !542
  tail call void @llvm.dbg.value(metadata i8* %groupname, i64 0, metadata !228, metadata !346), !dbg !542
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !542, !tbaa !360
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #5, !dbg !542
  ret i32* null, !dbg !542
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyQueryGroupStorageB(%struct.cGH* nocapture readnone %GH, i32 %group, i8* nocapture readnone %groupname) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !231, metadata !346), !dbg !543
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !232, metadata !346), !dbg !543
  tail call void @llvm.dbg.value(metadata i8* %groupname, i64 0, metadata !233, metadata !346), !dbg !543
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !231, metadata !346), !dbg !543
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !232, metadata !346), !dbg !543
  tail call void @llvm.dbg.value(metadata i8* %groupname, i64 0, metadata !233, metadata !346), !dbg !543
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !543, !tbaa !360
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str17, i64 0, i64 0)) #5, !dbg !543
  ret i32 0, !dbg !543
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyGroupDynamicData(%struct.cGH* nocapture readnone %GH, i32 %group, %struct.GROUPDYNAMICDATA* nocapture readnone %data) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !236, metadata !346), !dbg !544
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !237, metadata !346), !dbg !544
  tail call void @llvm.dbg.value(metadata %struct.GROUPDYNAMICDATA* %data, i64 0, metadata !238, metadata !346), !dbg !544
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !236, metadata !346), !dbg !544
  tail call void @llvm.dbg.value(metadata i32 %group, i64 0, metadata !237, metadata !346), !dbg !544
  tail call void @llvm.dbg.value(metadata %struct.GROUPDYNAMICDATA* %data, i64 0, metadata !238, metadata !346), !dbg !544
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !544, !tbaa !360
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0)) #5, !dbg !544
  ret i32 0, !dbg !544
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyBarrier(%struct.cGH* nocapture readnone %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !201, metadata !346), !dbg !545
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !201, metadata !346), !dbg !545
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !545, !tbaa !360
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0)) #5, !dbg !545
  ret i32 0, !dbg !545
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyMyProc(%struct.cGH* nocapture readnone %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !204, metadata !346), !dbg !546
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !204, metadata !346), !dbg !546
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !546, !tbaa !360
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #5, !dbg !546
  ret i32 0, !dbg !546
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummynProcs(%struct.cGH* nocapture readnone %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !207, metadata !346), !dbg !547
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !207, metadata !346), !dbg !547
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !547, !tbaa !360
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !547
  ret i32 0, !dbg !547
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyExit(%struct.cGH* nocapture readnone %GH, i32 %retval) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !213, metadata !346), !dbg !548
  tail call void @llvm.dbg.value(metadata i32 %retval, i64 0, metadata !214, metadata !346), !dbg !548
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !213, metadata !346), !dbg !548
  tail call void @llvm.dbg.value(metadata i32 %retval, i64 0, metadata !214, metadata !346), !dbg !548
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !548, !tbaa !360
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0)) #5, !dbg !548
  ret i32 0, !dbg !548
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DummyAbort(%struct.cGH* nocapture readnone %GH, i32 %retval) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !217, metadata !346), !dbg !549
  tail call void @llvm.dbg.value(metadata i32 %retval, i64 0, metadata !218, metadata !346), !dbg !549
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !217, metadata !346), !dbg !549
  tail call void @llvm.dbg.value(metadata i32 %retval, i64 0, metadata !218, metadata !346), !dbg !549
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !549, !tbaa !360
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0)) #5, !dbg !549
  ret i32 0, !dbg !549
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct.cGH* @CCTKi_DummySetupGH(%struct.tFleshConfig* nocapture readnone %config, i32 %convergence_level) #1 {
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %config, i64 0, metadata !221, metadata !346), !dbg !550
  tail call void @llvm.dbg.value(metadata i32 %convergence_level, i64 0, metadata !222, metadata !346), !dbg !550
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %config, i64 0, metadata !221, metadata !346), !dbg !550
  tail call void @llvm.dbg.value(metadata i32 %convergence_level, i64 0, metadata !222, metadata !346), !dbg !550
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !550, !tbaa !360
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0)) #5, !dbg !550
  ret %struct.cGH* null, !dbg !550
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @cctk_nprocs_(%struct.cGH* %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !241, metadata !346), !dbg !551
  %1 = load i32 (%struct.cGH*)** @CCTK_nProcs, align 8, !dbg !552, !tbaa !360
  %2 = tail call i32 %1(%struct.cGH* %GH) #5, !dbg !552
  ret i32 %2, !dbg !553
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @cctk_myproc_(%struct.cGH* %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !244, metadata !346), !dbg !554
  %1 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !555, !tbaa !360
  %2 = tail call i32 %1(%struct.cGH* %GH) #5, !dbg !555
  ret i32 %2, !dbg !556
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_barrier_(i32* nocapture %ierror, %struct.cGH* %GH) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierror, i64 0, metadata !249, metadata !346), !dbg !557
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !250, metadata !346), !dbg !558
  %1 = load i32 (%struct.cGH*)** @CCTK_Barrier, align 8, !dbg !559, !tbaa !360
  %2 = tail call i32 %1(%struct.cGH* %GH) #5, !dbg !559
  store i32 %2, i32* %ierror, align 4, !dbg !560, !tbaa !353
  ret void, !dbg !561
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_exit_(i32* nocapture %ierror, %struct.cGH* %GH, i32* nocapture readonly %retval) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierror, i64 0, metadata !255, metadata !346), !dbg !562
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !256, metadata !346), !dbg !563
  tail call void @llvm.dbg.value(metadata i32* %retval, i64 0, metadata !257, metadata !346), !dbg !564
  %1 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !dbg !565, !tbaa !360
  %2 = load i32* %retval, align 4, !dbg !566, !tbaa !353
  %3 = tail call i32 %1(%struct.cGH* %GH, i32 %2) #5, !dbg !565
  store i32 %3, i32* %ierror, align 4, !dbg !567, !tbaa !353
  ret void, !dbg !568
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_abort_(i32* nocapture %ierror, %struct.cGH* %GH, i32* nocapture readonly %retval) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierror, i64 0, metadata !260, metadata !346), !dbg !569
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !261, metadata !346), !dbg !570
  tail call void @llvm.dbg.value(metadata i32* %retval, i64 0, metadata !262, metadata !346), !dbg !571
  %1 = load i32 (%struct.cGH*, i32)** @CCTK_Abort, align 8, !dbg !572, !tbaa !360
  %2 = load i32* %retval, align 4, !dbg !573, !tbaa !353
  %3 = tail call i32 %1(%struct.cGH* %GH, i32 %2) #5, !dbg !572
  store i32 %3, i32* %ierror, align 4, !dbg !574, !tbaa !353
  ret void, !dbg !575
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_syncgroup_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierror, i64 0, metadata !267, metadata !346), !dbg !576
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !268, metadata !346), !dbg !577
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !269, metadata !346), !dbg !578
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !270, metadata !346), !dbg !578
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !579
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !271, metadata !346), !dbg !579
  %2 = load i32 (%struct.cGH*, i8*)** @CCTK_SyncGroup, align 8, !dbg !580, !tbaa !360
  %3 = tail call i32 %2(%struct.cGH* %GH, i8* %1) #5, !dbg !580
  store i32 %3, i32* %ierror, align 4, !dbg !581, !tbaa !353
  tail call void @free(i8* %1) #6, !dbg !582
  ret void, !dbg !583
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_enablegroupcomm_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierror, i64 0, metadata !274, metadata !346), !dbg !584
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !275, metadata !346), !dbg !585
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !276, metadata !346), !dbg !586
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !277, metadata !346), !dbg !586
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !587
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !278, metadata !346), !dbg !587
  %2 = load i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupComm, align 8, !dbg !588, !tbaa !360
  %3 = tail call i32 %2(%struct.cGH* %GH, i8* %1) #5, !dbg !588
  store i32 %3, i32* %ierror, align 4, !dbg !589, !tbaa !353
  tail call void @free(i8* %1) #6, !dbg !590
  ret void, !dbg !591
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_disablegroupcomm_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierror, i64 0, metadata !281, metadata !346), !dbg !592
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !282, metadata !346), !dbg !593
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !283, metadata !346), !dbg !594
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !284, metadata !346), !dbg !594
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !595
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !285, metadata !346), !dbg !595
  %2 = load i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupComm, align 8, !dbg !596, !tbaa !360
  %3 = tail call i32 %2(%struct.cGH* %GH, i8* %1) #5, !dbg !596
  store i32 %3, i32* %ierror, align 4, !dbg !597, !tbaa !353
  tail call void @free(i8* %1) #6, !dbg !598
  ret void, !dbg !599
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_enablegroupstorage_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierror, i64 0, metadata !288, metadata !346), !dbg !600
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !289, metadata !346), !dbg !601
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !290, metadata !346), !dbg !602
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !291, metadata !346), !dbg !602
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !603
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !292, metadata !346), !dbg !603
  %2 = load i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupStorage, align 8, !dbg !604, !tbaa !360
  %3 = tail call i32 %2(%struct.cGH* %GH, i8* %1) #5, !dbg !604
  store i32 %3, i32* %ierror, align 4, !dbg !605, !tbaa !353
  tail call void @free(i8* %1) #6, !dbg !606
  ret void, !dbg !607
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_disablegroupstorage_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierror, i64 0, metadata !295, metadata !346), !dbg !608
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !296, metadata !346), !dbg !609
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !297, metadata !346), !dbg !610
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !298, metadata !346), !dbg !610
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !611
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !299, metadata !346), !dbg !611
  %2 = load i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupStorage, align 8, !dbg !612, !tbaa !360
  %3 = tail call i32 %2(%struct.cGH* %GH, i8* %1) #5, !dbg !612
  store i32 %3, i32* %ierror, align 4, !dbg !613, !tbaa !353
  tail call void @free(i8* %1) #6, !dbg !614
  ret void, !dbg !615
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_querygroupstorage_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  tail call void @llvm.dbg.value(metadata i32* %ierror, i64 0, metadata !304, metadata !346), !dbg !616
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !305, metadata !346), !dbg !617
  tail call void @llvm.dbg.value(metadata i8* %cctk_str1, i64 0, metadata !306, metadata !346), !dbg !618
  tail call void @llvm.dbg.value(metadata i32 %cctk_strlen1, i64 0, metadata !307, metadata !346), !dbg !618
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !619
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !308, metadata !346), !dbg !619
  %2 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* %1) #5, !dbg !620
  store i32 %2, i32* %ierror, align 4, !dbg !621, !tbaa !353
  tail call void @free(i8* %1) #6, !dbg !622
  ret void, !dbg !623
}

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorage(%struct.cGH*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!341, !342, !343}
!llvm.ident = !{!344}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !309, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadComm.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !58, !62, !66, !70, !74, !85, !89, !93, !102, !111, !115, !135, !146, !155, !176, !179, !183, !187, !191, !195, !199, !202, !205, !208, !211, !215, !219, !223, !229, !234, !239, !242, !245, !251, !258, !263, !272, !279, !286, !293, !300}
!4 = !DISubprogram(name: "CCTKi_version_comm_OverloadComm_c", scope: !1, file: !1, line: 26, type: !5, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_comm_OverloadComm_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTK_OverloadSyncGroup", scope: !11, file: !11, line: 46, type: !12, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.cGH*, i8*)*)* @CCTK_OverloadSyncGroup, variables: !55)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15}
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{!14, !18, !7}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !20, line: 75, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 24, size: 1216, align: 64, elements: !22)
!22 = !{!23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !35, !37, !38, !39, !40, !41, !42, !43, !47, !48}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !21, file: !20, line: 26, baseType: !14, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !21, file: !20, line: 27, baseType: !14, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !21, file: !20, line: 30, baseType: !26, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !21, file: !20, line: 31, baseType: !26, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !21, file: !20, line: 32, baseType: !26, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !21, file: !20, line: 33, baseType: !26, size: 64, align: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !21, file: !20, line: 36, baseType: !26, size: 64, align: 64, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !21, file: !20, line: 39, baseType: !26, size: 64, align: 64, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !21, file: !20, line: 40, baseType: !26, size: 64, align: 64, offset: 448)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !21, file: !20, line: 43, baseType: !34, size: 64, align: 64, offset: 512)
!34 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !21, file: !20, line: 44, baseType: !36, size: 64, align: 64, offset: 576)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !21, file: !20, line: 47, baseType: !36, size: 64, align: 64, offset: 640)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !21, file: !20, line: 51, baseType: !26, size: 64, align: 64, offset: 704)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !21, file: !20, line: 54, baseType: !26, size: 64, align: 64, offset: 768)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !21, file: !20, line: 57, baseType: !14, size: 32, align: 32, offset: 832)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !21, file: !20, line: 60, baseType: !26, size: 64, align: 64, offset: 896)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !21, file: !20, line: 63, baseType: !34, size: 64, align: 64, offset: 960)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !21, file: !20, line: 67, baseType: !44, size: 64, align: 64, offset: 1024)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !21, file: !20, line: 70, baseType: !45, size: 64, align: 64, offset: 1088)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !21, file: !20, line: 73, baseType: !49, size: 64, align: 64, offset: 1152)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !20, line: 22, baseType: !51)
!51 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 18, size: 16, align: 8, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !51, file: !20, line: 20, baseType: !9, size: 8, align: 8)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !51, file: !20, line: 21, baseType: !9, size: 8, align: 8, offset: 8)
!55 = !{!56, !57}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !10, file: !11, line: 46, type: !15)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !10, file: !11, line: 46, type: !14)
!58 = !DISubprogram(name: "CCTK_OverloadEnableGroupStorage", scope: !11, file: !11, line: 48, type: !12, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.cGH*, i8*)*)* @CCTK_OverloadEnableGroupStorage, variables: !59)
!59 = !{!60, !61}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !58, file: !11, line: 48, type: !15)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !58, file: !11, line: 48, type: !14)
!62 = !DISubprogram(name: "CCTK_OverloadDisableGroupStorage", scope: !11, file: !11, line: 49, type: !12, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.cGH*, i8*)*)* @CCTK_OverloadDisableGroupStorage, variables: !63)
!63 = !{!64, !65}
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !62, file: !11, line: 49, type: !15)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !62, file: !11, line: 49, type: !14)
!66 = !DISubprogram(name: "CCTK_OverloadEnableGroupComm", scope: !11, file: !11, line: 51, type: !12, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.cGH*, i8*)*)* @CCTK_OverloadEnableGroupComm, variables: !67)
!67 = !{!68, !69}
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !66, file: !11, line: 51, type: !15)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !66, file: !11, line: 51, type: !14)
!70 = !DISubprogram(name: "CCTK_OverloadDisableGroupComm", scope: !11, file: !11, line: 52, type: !12, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.cGH*, i8*)*)* @CCTK_OverloadDisableGroupComm, variables: !71)
!71 = !{!72, !73}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !70, file: !11, line: 52, type: !15)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !70, file: !11, line: 52, type: !14)
!74 = !DISubprogram(name: "CCTK_OverloadBarrier", scope: !11, file: !11, line: 58, type: !75, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.cGH*)*)* @CCTK_OverloadBarrier, variables: !82)
!75 = !DISubroutineType(types: !76)
!76 = !{!14, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!14, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!82 = !{!83, !84}
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !74, file: !11, line: 58, type: !77)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !74, file: !11, line: 58, type: !14)
!85 = !DISubprogram(name: "CCTK_OverloadMyProc", scope: !11, file: !11, line: 59, type: !75, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.cGH*)*)* @CCTK_OverloadMyProc, variables: !86)
!86 = !{!87, !88}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !85, file: !11, line: 59, type: !77)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !85, file: !11, line: 59, type: !14)
!89 = !DISubprogram(name: "CCTK_OverloadnProcs", scope: !11, file: !11, line: 60, type: !75, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.cGH*)*)* @CCTK_OverloadnProcs, variables: !90)
!90 = !{!91, !92}
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !89, file: !11, line: 60, type: !77)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !89, file: !11, line: 60, type: !14)
!93 = !DISubprogram(name: "CCTK_OverloadParallelInit", scope: !11, file: !11, line: 66, type: !94, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.cGH*)*)* @CCTK_OverloadParallelInit, variables: !99)
!94 = !DISubroutineType(types: !95)
!95 = !{!14, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{!14, !18}
!99 = !{!100, !101}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !93, file: !11, line: 66, type: !96)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !93, file: !11, line: 66, type: !14)
!102 = !DISubprogram(name: "CCTK_OverloadExit", scope: !11, file: !11, line: 74, type: !103, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.cGH*, i32)*)* @CCTK_OverloadExit, variables: !108)
!103 = !DISubroutineType(types: !104)
!104 = !{!14, !105}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!14, !18, !14}
!108 = !{!109, !110}
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !102, file: !11, line: 74, type: !105)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !102, file: !11, line: 74, type: !14)
!111 = !DISubprogram(name: "CCTK_OverloadAbort", scope: !11, file: !11, line: 75, type: !103, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.cGH*, i32)*)* @CCTK_OverloadAbort, variables: !112)
!112 = !{!113, !114}
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !111, file: !11, line: 75, type: !105)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !111, file: !11, line: 75, type: !14)
!115 = !DISubprogram(name: "CCTK_OverloadSetupGH", scope: !11, file: !11, line: 83, type: !116, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH* (%struct.tFleshConfig*, i32)*)* @CCTK_OverloadSetupGH, variables: !132)
!116 = !DISubroutineType(types: !117)
!117 = !{!14, !118}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!18, !121, !14}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "tFleshConfig", file: !123, line: 28, baseType: !124)
!123 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!124 = !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 19, size: 192, align: 64, elements: !125)
!125 = !{!126, !128, !130}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_file_name", scope: !124, file: !123, line: 21, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "GH", scope: !124, file: !123, line: 24, baseType: !129, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nGHs", scope: !124, file: !123, line: 25, baseType: !131, size: 32, align: 32, offset: 128)
!131 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!132 = !{!133, !134}
!133 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !115, file: !11, line: 83, type: !118)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !115, file: !11, line: 83, type: !14)
!135 = !DISubprogram(name: "CCTK_OverloadArrayGroupSizeB", scope: !11, file: !11, line: 91, type: !136, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32* (%struct.cGH*, i32, i32, i8*)*)* @CCTK_OverloadArrayGroupSizeB, variables: !143)
!136 = !DISubroutineType(types: !137)
!137 = !{!14, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !80, !14, !14, !7}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!143 = !{!144, !145}
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !135, file: !11, line: 91, type: !138)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !135, file: !11, line: 91, type: !14)
!146 = !DISubprogram(name: "CCTK_OverloadQueryGroupStorageB", scope: !11, file: !11, line: 99, type: !147, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.cGH*, i32, i8*)*)* @CCTK_OverloadQueryGroupStorageB, variables: !152)
!147 = !DISubroutineType(types: !148)
!148 = !{!14, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!14, !80, !14, !7}
!152 = !{!153, !154}
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !146, file: !11, line: 99, type: !149)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !146, file: !11, line: 99, type: !14)
!155 = !DISubprogram(name: "CCTK_OverloadGroupDynamicData", scope: !11, file: !11, line: 107, type: !156, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)*)* @CCTK_OverloadGroupDynamicData, variables: !173)
!156 = !DISubroutineType(types: !157)
!157 = !{!14, !158}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!14, !80, !14, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGroupDynamicData", file: !163, line: 23, baseType: !164)
!163 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_GroupsOnGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!164 = !DICompositeType(tag: DW_TAG_structure_type, name: "GROUPDYNAMICDATA", file: !163, line: 14, size: 448, align: 64, elements: !165)
!165 = !{!166, !167, !168, !169, !170, !171, !172}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !164, file: !163, line: 16, baseType: !14, size: 32, align: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "gsh", scope: !164, file: !163, line: 17, baseType: !141, size: 64, align: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "lsh", scope: !164, file: !163, line: 18, baseType: !141, size: 64, align: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "lbnd", scope: !164, file: !163, line: 19, baseType: !141, size: 64, align: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ubnd", scope: !164, file: !163, line: 20, baseType: !141, size: 64, align: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !164, file: !163, line: 21, baseType: !141, size: 64, align: 64, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nghostzones", scope: !164, file: !163, line: 22, baseType: !141, size: 64, align: 64, offset: 384)
!173 = !{!174, !175}
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !155, file: !11, line: 107, type: !158)
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_code", scope: !155, file: !11, line: 107, type: !14)
!176 = !DISubprogram(name: "CCTKi_SetupCommFunctions", scope: !1, file: !1, line: 76, type: !177, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_SetupCommFunctions, variables: !2)
!177 = !DISubroutineType(types: !178)
!178 = !{!14}
!179 = !DISubprogram(name: "CCTKi_DummySyncGroup", scope: !11, file: !11, line: 46, type: !16, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @CCTKi_DummySyncGroup, variables: !180)
!180 = !{!181, !182}
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !179, file: !11, line: 46, type: !18)
!182 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 2, scope: !179, file: !11, line: 46, type: !7)
!183 = !DISubprogram(name: "CCTKi_DummyEnableGroupStorage", scope: !11, file: !11, line: 48, type: !16, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @CCTKi_DummyEnableGroupStorage, variables: !184)
!184 = !{!185, !186}
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !183, file: !11, line: 48, type: !18)
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 2, scope: !183, file: !11, line: 48, type: !7)
!187 = !DISubprogram(name: "CCTKi_DummyDisableGroupStorage", scope: !11, file: !11, line: 49, type: !16, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @CCTKi_DummyDisableGroupStorage, variables: !188)
!188 = !{!189, !190}
!189 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !187, file: !11, line: 49, type: !18)
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 2, scope: !187, file: !11, line: 49, type: !7)
!191 = !DISubprogram(name: "CCTKi_DummyEnableGroupComm", scope: !11, file: !11, line: 51, type: !16, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @CCTKi_DummyEnableGroupComm, variables: !192)
!192 = !{!193, !194}
!193 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !191, file: !11, line: 51, type: !18)
!194 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 2, scope: !191, file: !11, line: 51, type: !7)
!195 = !DISubprogram(name: "CCTKi_DummyDisableGroupComm", scope: !11, file: !11, line: 52, type: !16, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @CCTKi_DummyDisableGroupComm, variables: !196)
!196 = !{!197, !198}
!197 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !195, file: !11, line: 52, type: !18)
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 2, scope: !195, file: !11, line: 52, type: !7)
!199 = !DISubprogram(name: "CCTKi_DummyBarrier", scope: !11, file: !11, line: 58, type: !78, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @CCTKi_DummyBarrier, variables: !200)
!200 = !{!201}
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !199, file: !11, line: 58, type: !80)
!202 = !DISubprogram(name: "CCTKi_DummyMyProc", scope: !11, file: !11, line: 59, type: !78, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @CCTKi_DummyMyProc, variables: !203)
!203 = !{!204}
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !202, file: !11, line: 59, type: !80)
!205 = !DISubprogram(name: "CCTKi_DummynProcs", scope: !11, file: !11, line: 60, type: !78, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @CCTKi_DummynProcs, variables: !206)
!206 = !{!207}
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !205, file: !11, line: 60, type: !80)
!208 = !DISubprogram(name: "CCTKi_DummyParallelInit", scope: !11, file: !11, line: 66, type: !97, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @CCTKi_DummyParallelInit, variables: !209)
!209 = !{!210}
!210 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !208, file: !11, line: 66, type: !18)
!211 = !DISubprogram(name: "CCTKi_DummyExit", scope: !11, file: !11, line: 74, type: !106, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @CCTKi_DummyExit, variables: !212)
!212 = !{!213, !214}
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !211, file: !11, line: 74, type: !18)
!214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "retval", arg: 2, scope: !211, file: !11, line: 74, type: !14)
!215 = !DISubprogram(name: "CCTKi_DummyAbort", scope: !11, file: !11, line: 75, type: !106, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @CCTKi_DummyAbort, variables: !216)
!216 = !{!217, !218}
!217 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !215, file: !11, line: 75, type: !18)
!218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "retval", arg: 2, scope: !215, file: !11, line: 75, type: !14)
!219 = !DISubprogram(name: "CCTKi_DummySetupGH", scope: !11, file: !11, line: 83, type: !119, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, function: %struct.cGH* (%struct.tFleshConfig*, i32)* @CCTKi_DummySetupGH, variables: !220)
!220 = !{!221, !222}
!221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "config", arg: 1, scope: !219, file: !11, line: 83, type: !121)
!222 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "convergence_level", arg: 2, scope: !219, file: !11, line: 83, type: !14)
!223 = !DISubprogram(name: "CCTKi_DummyArrayGroupSizeB", scope: !11, file: !11, line: 91, type: !139, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, function: i32* (%struct.cGH*, i32, i32, i8*)* @CCTKi_DummyArrayGroupSizeB, variables: !224)
!224 = !{!225, !226, !227, !228}
!225 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !223, file: !11, line: 91, type: !80)
!226 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dir", arg: 2, scope: !223, file: !11, line: 91, type: !14)
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 3, scope: !223, file: !11, line: 91, type: !14)
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "groupname", arg: 4, scope: !223, file: !11, line: 91, type: !7)
!229 = !DISubprogram(name: "CCTKi_DummyQueryGroupStorageB", scope: !11, file: !11, line: 99, type: !150, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32, i8*)* @CCTKi_DummyQueryGroupStorageB, variables: !230)
!230 = !{!231, !232, !233}
!231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !229, file: !11, line: 99, type: !80)
!232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 2, scope: !229, file: !11, line: 99, type: !14)
!233 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "groupname", arg: 3, scope: !229, file: !11, line: 99, type: !7)
!234 = !DISubprogram(name: "CCTKi_DummyGroupDynamicData", scope: !11, file: !11, line: 107, type: !159, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* @CCTKi_DummyGroupDynamicData, variables: !235)
!235 = !{!236, !237, !238}
!236 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !234, file: !11, line: 107, type: !80)
!237 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "group", arg: 2, scope: !234, file: !11, line: 107, type: !14)
!238 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 3, scope: !234, file: !11, line: 107, type: !161)
!239 = !DISubprogram(name: "cctk_nprocs_", scope: !1, file: !1, line: 136, type: !78, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @cctk_nprocs_, variables: !240)
!240 = !{!241}
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !239, file: !1, line: 136, type: !80)
!242 = !DISubprogram(name: "cctk_myproc_", scope: !1, file: !1, line: 141, type: !78, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @cctk_myproc_, variables: !243)
!243 = !{!244}
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !242, file: !1, line: 141, type: !80)
!245 = !DISubprogram(name: "cctk_barrier_", scope: !1, file: !1, line: 146, type: !246, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*)* @cctk_barrier_, variables: !248)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !26, !80}
!248 = !{!249, !250}
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierror", arg: 1, scope: !245, file: !1, line: 146, type: !26)
!250 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !245, file: !1, line: 146, type: !80)
!251 = !DISubprogram(name: "cctk_exit_", scope: !1, file: !1, line: 151, type: !252, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i32*)* @cctk_exit_, variables: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !26, !18, !141}
!254 = !{!255, !256, !257}
!255 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierror", arg: 1, scope: !251, file: !1, line: 151, type: !26)
!256 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !251, file: !1, line: 151, type: !18)
!257 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "retval", arg: 3, scope: !251, file: !1, line: 151, type: !141)
!258 = !DISubprogram(name: "cctk_abort_", scope: !1, file: !1, line: 156, type: !252, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i32*)* @cctk_abort_, variables: !259)
!259 = !{!260, !261, !262}
!260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierror", arg: 1, scope: !258, file: !1, line: 156, type: !26)
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !258, file: !1, line: 156, type: !18)
!262 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "retval", arg: 3, scope: !258, file: !1, line: 156, type: !141)
!263 = !DISubprogram(name: "cctk_syncgroup_", scope: !1, file: !1, line: 161, type: !264, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i8*, i32)* @cctk_syncgroup_, variables: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !26, !18, !127, !131}
!266 = !{!267, !268, !269, !270, !271}
!267 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierror", arg: 1, scope: !263, file: !1, line: 161, type: !26)
!268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !263, file: !1, line: 161, type: !18)
!269 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !263, file: !1, line: 161, type: !127)
!270 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 4, scope: !263, file: !1, line: 161, type: !131)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "group_name", scope: !263, file: !1, line: 163, type: !127)
!272 = !DISubprogram(name: "cctk_enablegroupcomm_", scope: !1, file: !1, line: 168, type: !264, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i8*, i32)* @cctk_enablegroupcomm_, variables: !273)
!273 = !{!274, !275, !276, !277, !278}
!274 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierror", arg: 1, scope: !272, file: !1, line: 168, type: !26)
!275 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !272, file: !1, line: 168, type: !18)
!276 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !272, file: !1, line: 168, type: !127)
!277 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 4, scope: !272, file: !1, line: 168, type: !131)
!278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "group_name", scope: !272, file: !1, line: 170, type: !127)
!279 = !DISubprogram(name: "cctk_disablegroupcomm_", scope: !1, file: !1, line: 175, type: !264, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i8*, i32)* @cctk_disablegroupcomm_, variables: !280)
!280 = !{!281, !282, !283, !284, !285}
!281 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierror", arg: 1, scope: !279, file: !1, line: 175, type: !26)
!282 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !279, file: !1, line: 175, type: !18)
!283 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !279, file: !1, line: 175, type: !127)
!284 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 4, scope: !279, file: !1, line: 175, type: !131)
!285 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "group_name", scope: !279, file: !1, line: 177, type: !127)
!286 = !DISubprogram(name: "cctk_enablegroupstorage_", scope: !1, file: !1, line: 182, type: !264, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i8*, i32)* @cctk_enablegroupstorage_, variables: !287)
!287 = !{!288, !289, !290, !291, !292}
!288 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierror", arg: 1, scope: !286, file: !1, line: 182, type: !26)
!289 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !286, file: !1, line: 182, type: !18)
!290 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !286, file: !1, line: 182, type: !127)
!291 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 4, scope: !286, file: !1, line: 182, type: !131)
!292 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "group_name", scope: !286, file: !1, line: 184, type: !127)
!293 = !DISubprogram(name: "cctk_disablegroupstorage_", scope: !1, file: !1, line: 189, type: !264, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i8*, i32)* @cctk_disablegroupstorage_, variables: !294)
!294 = !{!295, !296, !297, !298, !299}
!295 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierror", arg: 1, scope: !293, file: !1, line: 189, type: !26)
!296 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !293, file: !1, line: 189, type: !18)
!297 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !293, file: !1, line: 189, type: !127)
!298 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 4, scope: !293, file: !1, line: 189, type: !131)
!299 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "group_name", scope: !293, file: !1, line: 191, type: !127)
!300 = !DISubprogram(name: "cctk_querygroupstorage_", scope: !1, file: !1, line: 196, type: !301, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, %struct.cGH*, i8*, i32)* @cctk_querygroupstorage_, variables: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !26, !80, !127, !131}
!303 = !{!304, !305, !306, !307, !308}
!304 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ierror", arg: 1, scope: !300, file: !1, line: 196, type: !26)
!305 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 2, scope: !300, file: !1, line: 196, type: !80)
!306 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_str1", arg: 3, scope: !300, file: !1, line: 196, type: !127)
!307 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cctk_strlen1", arg: 4, scope: !300, file: !1, line: 196, type: !131)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "group_name", scope: !300, file: !1, line: 199, type: !127)
!309 = !{!310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340}
!310 = !DIGlobalVariable(name: "CCTK_SyncGroup", scope: !0, file: !11, line: 46, type: !15, isLocal: false, isDefinition: true, variable: i32 (%struct.cGH*, i8*)** @CCTK_SyncGroup)
!311 = !DIGlobalVariable(name: "overloaded", scope: !10, file: !11, line: 46, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadSyncGroup.overloaded)
!312 = !DIGlobalVariable(name: "CCTK_EnableGroupStorage", scope: !0, file: !11, line: 48, type: !15, isLocal: false, isDefinition: true, variable: i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupStorage)
!313 = !DIGlobalVariable(name: "overloaded", scope: !58, file: !11, line: 48, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadEnableGroupStorage.overloaded)
!314 = !DIGlobalVariable(name: "CCTK_DisableGroupStorage", scope: !0, file: !11, line: 49, type: !15, isLocal: false, isDefinition: true, variable: i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupStorage)
!315 = !DIGlobalVariable(name: "overloaded", scope: !62, file: !11, line: 49, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadDisableGroupStorage.overloaded)
!316 = !DIGlobalVariable(name: "CCTK_EnableGroupComm", scope: !0, file: !11, line: 51, type: !15, isLocal: false, isDefinition: true, variable: i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupComm)
!317 = !DIGlobalVariable(name: "overloaded", scope: !66, file: !11, line: 51, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadEnableGroupComm.overloaded)
!318 = !DIGlobalVariable(name: "CCTK_DisableGroupComm", scope: !0, file: !11, line: 52, type: !15, isLocal: false, isDefinition: true, variable: i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupComm)
!319 = !DIGlobalVariable(name: "overloaded", scope: !70, file: !11, line: 52, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadDisableGroupComm.overloaded)
!320 = !DIGlobalVariable(name: "CCTK_Barrier", scope: !0, file: !11, line: 58, type: !77, isLocal: false, isDefinition: true, variable: i32 (%struct.cGH*)** @CCTK_Barrier)
!321 = !DIGlobalVariable(name: "overloaded", scope: !74, file: !11, line: 58, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadBarrier.overloaded)
!322 = !DIGlobalVariable(name: "CCTK_MyProc", scope: !0, file: !11, line: 59, type: !77, isLocal: false, isDefinition: true, variable: i32 (%struct.cGH*)** @CCTK_MyProc)
!323 = !DIGlobalVariable(name: "overloaded", scope: !85, file: !11, line: 59, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadMyProc.overloaded)
!324 = !DIGlobalVariable(name: "CCTK_nProcs", scope: !0, file: !11, line: 60, type: !77, isLocal: false, isDefinition: true, variable: i32 (%struct.cGH*)** @CCTK_nProcs)
!325 = !DIGlobalVariable(name: "overloaded", scope: !89, file: !11, line: 60, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadnProcs.overloaded)
!326 = !DIGlobalVariable(name: "CCTK_ParallelInit", scope: !0, file: !11, line: 66, type: !96, isLocal: false, isDefinition: true, variable: i32 (%struct.cGH*)** @CCTK_ParallelInit)
!327 = !DIGlobalVariable(name: "overloaded", scope: !93, file: !11, line: 66, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadParallelInit.overloaded)
!328 = !DIGlobalVariable(name: "CCTK_Exit", scope: !0, file: !11, line: 74, type: !105, isLocal: false, isDefinition: true, variable: i32 (%struct.cGH*, i32)** @CCTK_Exit)
!329 = !DIGlobalVariable(name: "overloaded", scope: !102, file: !11, line: 74, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadExit.overloaded)
!330 = !DIGlobalVariable(name: "CCTK_Abort", scope: !0, file: !11, line: 75, type: !105, isLocal: false, isDefinition: true, variable: i32 (%struct.cGH*, i32)** @CCTK_Abort)
!331 = !DIGlobalVariable(name: "overloaded", scope: !111, file: !11, line: 75, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadAbort.overloaded)
!332 = !DIGlobalVariable(name: "CCTK_SetupGH", scope: !0, file: !11, line: 83, type: !118, isLocal: false, isDefinition: true, variable: %struct.cGH* (%struct.tFleshConfig*, i32)** @CCTK_SetupGH)
!333 = !DIGlobalVariable(name: "overloaded", scope: !115, file: !11, line: 83, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadSetupGH.overloaded)
!334 = !DIGlobalVariable(name: "CCTK_ArrayGroupSizeB", scope: !0, file: !11, line: 91, type: !138, isLocal: false, isDefinition: true, variable: i32* (%struct.cGH*, i32, i32, i8*)** @CCTK_ArrayGroupSizeB)
!335 = !DIGlobalVariable(name: "overloaded", scope: !135, file: !11, line: 91, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadArrayGroupSizeB.overloaded)
!336 = !DIGlobalVariable(name: "CCTK_QueryGroupStorageB", scope: !0, file: !11, line: 99, type: !149, isLocal: false, isDefinition: true, variable: i32 (%struct.cGH*, i32, i8*)** @CCTK_QueryGroupStorageB)
!337 = !DIGlobalVariable(name: "overloaded", scope: !146, file: !11, line: 99, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadQueryGroupStorageB.overloaded)
!338 = !DIGlobalVariable(name: "CCTK_GroupDynamicData", scope: !0, file: !11, line: 107, type: !158, isLocal: false, isDefinition: true, variable: i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)** @CCTK_GroupDynamicData)
!339 = !DIGlobalVariable(name: "overloaded", scope: !155, file: !11, line: 107, type: !14, isLocal: true, isDefinition: true, variable: i32* @CCTK_OverloadGroupDynamicData.overloaded)
!340 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 25, type: !7, isLocal: true, isDefinition: true)
!341 = !{i32 2, !"Dwarf Version", i32 2}
!342 = !{i32 2, !"Debug Info Version", i32 700000003}
!343 = !{i32 1, !"PIC Level", i32 2}
!344 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!345 = !DILocation(line: 26, column: 1, scope: !4)
!346 = !DIExpression()
!347 = !DILocation(line: 46, column: 1, scope: !10)
!348 = !DILocation(line: 46, column: 1, scope: !349)
!349 = distinct !DILexicalBlock(scope: !10, file: !11, line: 46, column: 1)
!350 = !DILocation(line: 46, column: 1, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !11, line: 46, column: 1)
!352 = distinct !DILexicalBlock(scope: !349, file: !11, line: 46, column: 1)
!353 = !{!354, !354, i64 0}
!354 = !{!"int", !355, i64 0}
!355 = !{!"omnipotent char", !356, i64 0}
!356 = !{!"Simple C/C++ TBAA"}
!357 = !DILocation(line: 46, column: 1, scope: !352)
!358 = !DILocation(line: 46, column: 1, scope: !359)
!359 = distinct !DILexicalBlock(scope: !351, file: !11, line: 46, column: 1)
!360 = !{!361, !361, i64 0}
!361 = !{!"any pointer", !355, i64 0}
!362 = !DILocation(line: 46, column: 1, scope: !363)
!363 = distinct !DILexicalBlock(scope: !351, file: !11, line: 46, column: 1)
!364 = !DILocation(line: 48, column: 1, scope: !58)
!365 = !DILocation(line: 48, column: 1, scope: !366)
!366 = distinct !DILexicalBlock(scope: !58, file: !11, line: 48, column: 1)
!367 = !DILocation(line: 48, column: 1, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !11, line: 48, column: 1)
!369 = distinct !DILexicalBlock(scope: !366, file: !11, line: 48, column: 1)
!370 = !DILocation(line: 48, column: 1, scope: !369)
!371 = !DILocation(line: 48, column: 1, scope: !372)
!372 = distinct !DILexicalBlock(scope: !368, file: !11, line: 48, column: 1)
!373 = !DILocation(line: 48, column: 1, scope: !374)
!374 = distinct !DILexicalBlock(scope: !368, file: !11, line: 48, column: 1)
!375 = !DILocation(line: 49, column: 1, scope: !62)
!376 = !DILocation(line: 49, column: 1, scope: !377)
!377 = distinct !DILexicalBlock(scope: !62, file: !11, line: 49, column: 1)
!378 = !DILocation(line: 49, column: 1, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !11, line: 49, column: 1)
!380 = distinct !DILexicalBlock(scope: !377, file: !11, line: 49, column: 1)
!381 = !DILocation(line: 49, column: 1, scope: !380)
!382 = !DILocation(line: 49, column: 1, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !11, line: 49, column: 1)
!384 = !DILocation(line: 49, column: 1, scope: !385)
!385 = distinct !DILexicalBlock(scope: !379, file: !11, line: 49, column: 1)
!386 = !DILocation(line: 51, column: 1, scope: !66)
!387 = !DILocation(line: 51, column: 1, scope: !388)
!388 = distinct !DILexicalBlock(scope: !66, file: !11, line: 51, column: 1)
!389 = !DILocation(line: 51, column: 1, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !11, line: 51, column: 1)
!391 = distinct !DILexicalBlock(scope: !388, file: !11, line: 51, column: 1)
!392 = !DILocation(line: 51, column: 1, scope: !391)
!393 = !DILocation(line: 51, column: 1, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !11, line: 51, column: 1)
!395 = !DILocation(line: 51, column: 1, scope: !396)
!396 = distinct !DILexicalBlock(scope: !390, file: !11, line: 51, column: 1)
!397 = !DILocation(line: 52, column: 1, scope: !70)
!398 = !DILocation(line: 52, column: 1, scope: !399)
!399 = distinct !DILexicalBlock(scope: !70, file: !11, line: 52, column: 1)
!400 = !DILocation(line: 52, column: 1, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !11, line: 52, column: 1)
!402 = distinct !DILexicalBlock(scope: !399, file: !11, line: 52, column: 1)
!403 = !DILocation(line: 52, column: 1, scope: !402)
!404 = !DILocation(line: 52, column: 1, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !11, line: 52, column: 1)
!406 = !DILocation(line: 52, column: 1, scope: !407)
!407 = distinct !DILexicalBlock(scope: !401, file: !11, line: 52, column: 1)
!408 = !DILocation(line: 58, column: 1, scope: !74)
!409 = !DILocation(line: 58, column: 1, scope: !410)
!410 = distinct !DILexicalBlock(scope: !74, file: !11, line: 58, column: 1)
!411 = !DILocation(line: 58, column: 1, scope: !412)
!412 = distinct !DILexicalBlock(scope: !413, file: !11, line: 58, column: 1)
!413 = distinct !DILexicalBlock(scope: !410, file: !11, line: 58, column: 1)
!414 = !DILocation(line: 58, column: 1, scope: !413)
!415 = !DILocation(line: 58, column: 1, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !11, line: 58, column: 1)
!417 = !DILocation(line: 58, column: 1, scope: !418)
!418 = distinct !DILexicalBlock(scope: !412, file: !11, line: 58, column: 1)
!419 = !DILocation(line: 59, column: 1, scope: !85)
!420 = !DILocation(line: 59, column: 1, scope: !421)
!421 = distinct !DILexicalBlock(scope: !85, file: !11, line: 59, column: 1)
!422 = !DILocation(line: 59, column: 1, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !11, line: 59, column: 1)
!424 = distinct !DILexicalBlock(scope: !421, file: !11, line: 59, column: 1)
!425 = !DILocation(line: 59, column: 1, scope: !424)
!426 = !DILocation(line: 59, column: 1, scope: !427)
!427 = distinct !DILexicalBlock(scope: !423, file: !11, line: 59, column: 1)
!428 = !DILocation(line: 59, column: 1, scope: !429)
!429 = distinct !DILexicalBlock(scope: !423, file: !11, line: 59, column: 1)
!430 = !DILocation(line: 60, column: 1, scope: !89)
!431 = !DILocation(line: 60, column: 1, scope: !432)
!432 = distinct !DILexicalBlock(scope: !89, file: !11, line: 60, column: 1)
!433 = !DILocation(line: 60, column: 1, scope: !434)
!434 = distinct !DILexicalBlock(scope: !435, file: !11, line: 60, column: 1)
!435 = distinct !DILexicalBlock(scope: !432, file: !11, line: 60, column: 1)
!436 = !DILocation(line: 60, column: 1, scope: !435)
!437 = !DILocation(line: 60, column: 1, scope: !438)
!438 = distinct !DILexicalBlock(scope: !434, file: !11, line: 60, column: 1)
!439 = !DILocation(line: 60, column: 1, scope: !440)
!440 = distinct !DILexicalBlock(scope: !434, file: !11, line: 60, column: 1)
!441 = !DILocation(line: 66, column: 1, scope: !93)
!442 = !DILocation(line: 66, column: 1, scope: !443)
!443 = distinct !DILexicalBlock(scope: !93, file: !11, line: 66, column: 1)
!444 = !DILocation(line: 66, column: 1, scope: !445)
!445 = distinct !DILexicalBlock(scope: !446, file: !11, line: 66, column: 1)
!446 = distinct !DILexicalBlock(scope: !443, file: !11, line: 66, column: 1)
!447 = !DILocation(line: 66, column: 1, scope: !446)
!448 = !DILocation(line: 66, column: 1, scope: !449)
!449 = distinct !DILexicalBlock(scope: !445, file: !11, line: 66, column: 1)
!450 = !DILocation(line: 66, column: 1, scope: !451)
!451 = distinct !DILexicalBlock(scope: !445, file: !11, line: 66, column: 1)
!452 = !DILocation(line: 74, column: 1, scope: !102)
!453 = !DILocation(line: 74, column: 1, scope: !454)
!454 = distinct !DILexicalBlock(scope: !102, file: !11, line: 74, column: 1)
!455 = !DILocation(line: 74, column: 1, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !11, line: 74, column: 1)
!457 = distinct !DILexicalBlock(scope: !454, file: !11, line: 74, column: 1)
!458 = !DILocation(line: 74, column: 1, scope: !457)
!459 = !DILocation(line: 74, column: 1, scope: !460)
!460 = distinct !DILexicalBlock(scope: !456, file: !11, line: 74, column: 1)
!461 = !DILocation(line: 74, column: 1, scope: !462)
!462 = distinct !DILexicalBlock(scope: !456, file: !11, line: 74, column: 1)
!463 = !DILocation(line: 75, column: 1, scope: !111)
!464 = !DILocation(line: 75, column: 1, scope: !465)
!465 = distinct !DILexicalBlock(scope: !111, file: !11, line: 75, column: 1)
!466 = !DILocation(line: 75, column: 1, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !11, line: 75, column: 1)
!468 = distinct !DILexicalBlock(scope: !465, file: !11, line: 75, column: 1)
!469 = !DILocation(line: 75, column: 1, scope: !468)
!470 = !DILocation(line: 75, column: 1, scope: !471)
!471 = distinct !DILexicalBlock(scope: !467, file: !11, line: 75, column: 1)
!472 = !DILocation(line: 75, column: 1, scope: !473)
!473 = distinct !DILexicalBlock(scope: !467, file: !11, line: 75, column: 1)
!474 = !DILocation(line: 83, column: 1, scope: !115)
!475 = !DILocation(line: 83, column: 1, scope: !476)
!476 = distinct !DILexicalBlock(scope: !115, file: !11, line: 83, column: 1)
!477 = !DILocation(line: 83, column: 1, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !11, line: 83, column: 1)
!479 = distinct !DILexicalBlock(scope: !476, file: !11, line: 83, column: 1)
!480 = !DILocation(line: 83, column: 1, scope: !479)
!481 = !DILocation(line: 83, column: 1, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !11, line: 83, column: 1)
!483 = !DILocation(line: 83, column: 1, scope: !484)
!484 = distinct !DILexicalBlock(scope: !478, file: !11, line: 83, column: 1)
!485 = !DILocation(line: 91, column: 1, scope: !135)
!486 = !DILocation(line: 91, column: 1, scope: !487)
!487 = distinct !DILexicalBlock(scope: !135, file: !11, line: 91, column: 1)
!488 = !DILocation(line: 91, column: 1, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !11, line: 91, column: 1)
!490 = distinct !DILexicalBlock(scope: !487, file: !11, line: 91, column: 1)
!491 = !DILocation(line: 91, column: 1, scope: !490)
!492 = !DILocation(line: 91, column: 1, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !11, line: 91, column: 1)
!494 = !DILocation(line: 91, column: 1, scope: !495)
!495 = distinct !DILexicalBlock(scope: !489, file: !11, line: 91, column: 1)
!496 = !DILocation(line: 99, column: 1, scope: !146)
!497 = !DILocation(line: 99, column: 1, scope: !498)
!498 = distinct !DILexicalBlock(scope: !146, file: !11, line: 99, column: 1)
!499 = !DILocation(line: 99, column: 1, scope: !500)
!500 = distinct !DILexicalBlock(scope: !501, file: !11, line: 99, column: 1)
!501 = distinct !DILexicalBlock(scope: !498, file: !11, line: 99, column: 1)
!502 = !DILocation(line: 99, column: 1, scope: !501)
!503 = !DILocation(line: 99, column: 1, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !11, line: 99, column: 1)
!505 = !DILocation(line: 99, column: 1, scope: !506)
!506 = distinct !DILexicalBlock(scope: !500, file: !11, line: 99, column: 1)
!507 = !DILocation(line: 107, column: 1, scope: !155)
!508 = !DILocation(line: 107, column: 1, scope: !509)
!509 = distinct !DILexicalBlock(scope: !155, file: !11, line: 107, column: 1)
!510 = !DILocation(line: 107, column: 1, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !11, line: 107, column: 1)
!512 = distinct !DILexicalBlock(scope: !509, file: !11, line: 107, column: 1)
!513 = !DILocation(line: 107, column: 1, scope: !512)
!514 = !DILocation(line: 107, column: 1, scope: !515)
!515 = distinct !DILexicalBlock(scope: !511, file: !11, line: 107, column: 1)
!516 = !DILocation(line: 107, column: 1, scope: !517)
!517 = distinct !DILexicalBlock(scope: !511, file: !11, line: 107, column: 1)
!518 = !DILocation(line: 46, column: 1, scope: !519)
!519 = !DILexicalBlockFile(scope: !176, file: !11, discriminator: 0)
!520 = !DILocation(line: 48, column: 1, scope: !519)
!521 = !DILocation(line: 49, column: 1, scope: !519)
!522 = !DILocation(line: 51, column: 1, scope: !519)
!523 = !DILocation(line: 52, column: 1, scope: !519)
!524 = !DILocation(line: 58, column: 1, scope: !519)
!525 = !DILocation(line: 59, column: 1, scope: !519)
!526 = !DILocation(line: 60, column: 1, scope: !519)
!527 = !DILocation(line: 66, column: 1, scope: !519)
!528 = !DILocation(line: 74, column: 1, scope: !519)
!529 = !DILocation(line: 75, column: 1, scope: !519)
!530 = !DILocation(line: 83, column: 1, scope: !519)
!531 = !DILocation(line: 91, column: 1, scope: !519)
!532 = !DILocation(line: 99, column: 1, scope: !519)
!533 = !DILocation(line: 107, column: 1, scope: !519)
!534 = !DILocation(line: 101, column: 3, scope: !535)
!535 = !DILexicalBlockFile(scope: !176, file: !1, discriminator: 0)
!536 = !DILocation(line: 46, column: 1, scope: !179)
!537 = !DILocation(line: 48, column: 1, scope: !183)
!538 = !DILocation(line: 49, column: 1, scope: !187)
!539 = !DILocation(line: 51, column: 1, scope: !191)
!540 = !DILocation(line: 52, column: 1, scope: !195)
!541 = !DILocation(line: 66, column: 1, scope: !208)
!542 = !DILocation(line: 91, column: 1, scope: !223)
!543 = !DILocation(line: 99, column: 1, scope: !229)
!544 = !DILocation(line: 107, column: 1, scope: !234)
!545 = !DILocation(line: 58, column: 1, scope: !199)
!546 = !DILocation(line: 59, column: 1, scope: !202)
!547 = !DILocation(line: 60, column: 1, scope: !205)
!548 = !DILocation(line: 74, column: 1, scope: !211)
!549 = !DILocation(line: 75, column: 1, scope: !215)
!550 = !DILocation(line: 83, column: 1, scope: !219)
!551 = !DILocation(line: 136, column: 41, scope: !239)
!552 = !DILocation(line: 138, column: 11, scope: !239)
!553 = !DILocation(line: 138, column: 3, scope: !239)
!554 = !DILocation(line: 141, column: 41, scope: !242)
!555 = !DILocation(line: 143, column: 11, scope: !242)
!556 = !DILocation(line: 143, column: 3, scope: !242)
!557 = !DILocation(line: 146, column: 37, scope: !245)
!558 = !DILocation(line: 146, column: 56, scope: !245)
!559 = !DILocation(line: 148, column: 13, scope: !245)
!560 = !DILocation(line: 148, column: 11, scope: !245)
!561 = !DILocation(line: 149, column: 1, scope: !245)
!562 = !DILocation(line: 151, column: 34, scope: !251)
!563 = !DILocation(line: 151, column: 47, scope: !251)
!564 = !DILocation(line: 151, column: 62, scope: !251)
!565 = !DILocation(line: 153, column: 13, scope: !251)
!566 = !DILocation(line: 153, column: 28, scope: !251)
!567 = !DILocation(line: 153, column: 11, scope: !251)
!568 = !DILocation(line: 154, column: 1, scope: !251)
!569 = !DILocation(line: 156, column: 35, scope: !258)
!570 = !DILocation(line: 156, column: 48, scope: !258)
!571 = !DILocation(line: 156, column: 63, scope: !258)
!572 = !DILocation(line: 158, column: 13, scope: !258)
!573 = !DILocation(line: 158, column: 29, scope: !258)
!574 = !DILocation(line: 158, column: 11, scope: !258)
!575 = !DILocation(line: 159, column: 1, scope: !258)
!576 = !DILocation(line: 161, column: 39, scope: !263)
!577 = !DILocation(line: 161, column: 52, scope: !263)
!578 = !DILocation(line: 161, column: 56, scope: !263)
!579 = !DILocation(line: 163, column: 3, scope: !263)
!580 = !DILocation(line: 164, column: 13, scope: !263)
!581 = !DILocation(line: 164, column: 11, scope: !263)
!582 = !DILocation(line: 165, column: 3, scope: !263)
!583 = !DILocation(line: 166, column: 1, scope: !263)
!584 = !DILocation(line: 168, column: 45, scope: !272)
!585 = !DILocation(line: 168, column: 58, scope: !272)
!586 = !DILocation(line: 168, column: 62, scope: !272)
!587 = !DILocation(line: 170, column: 3, scope: !272)
!588 = !DILocation(line: 171, column: 13, scope: !272)
!589 = !DILocation(line: 171, column: 11, scope: !272)
!590 = !DILocation(line: 172, column: 3, scope: !272)
!591 = !DILocation(line: 173, column: 1, scope: !272)
!592 = !DILocation(line: 175, column: 46, scope: !279)
!593 = !DILocation(line: 175, column: 59, scope: !279)
!594 = !DILocation(line: 175, column: 63, scope: !279)
!595 = !DILocation(line: 177, column: 3, scope: !279)
!596 = !DILocation(line: 178, column: 13, scope: !279)
!597 = !DILocation(line: 178, column: 11, scope: !279)
!598 = !DILocation(line: 179, column: 3, scope: !279)
!599 = !DILocation(line: 180, column: 1, scope: !279)
!600 = !DILocation(line: 182, column: 48, scope: !286)
!601 = !DILocation(line: 182, column: 61, scope: !286)
!602 = !DILocation(line: 182, column: 65, scope: !286)
!603 = !DILocation(line: 184, column: 3, scope: !286)
!604 = !DILocation(line: 185, column: 13, scope: !286)
!605 = !DILocation(line: 185, column: 11, scope: !286)
!606 = !DILocation(line: 186, column: 3, scope: !286)
!607 = !DILocation(line: 187, column: 1, scope: !286)
!608 = !DILocation(line: 189, column: 49, scope: !293)
!609 = !DILocation(line: 189, column: 62, scope: !293)
!610 = !DILocation(line: 189, column: 66, scope: !293)
!611 = !DILocation(line: 191, column: 3, scope: !293)
!612 = !DILocation(line: 192, column: 13, scope: !293)
!613 = !DILocation(line: 192, column: 11, scope: !293)
!614 = !DILocation(line: 193, column: 3, scope: !293)
!615 = !DILocation(line: 194, column: 1, scope: !293)
!616 = !DILocation(line: 196, column: 47, scope: !300)
!617 = !DILocation(line: 196, column: 66, scope: !300)
!618 = !DILocation(line: 196, column: 70, scope: !300)
!619 = !DILocation(line: 199, column: 3, scope: !300)
!620 = !DILocation(line: 200, column: 13, scope: !300)
!621 = !DILocation(line: 200, column: 11, scope: !300)
!622 = !DILocation(line: 201, column: 3, scope: !300)
!623 = !DILocation(line: 202, column: 1, scope: !300)
