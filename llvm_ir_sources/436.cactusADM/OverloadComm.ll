; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadComm.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.GROUPDYNAMICDATA = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@CCTK_SyncGroup = global i32 (%struct.cGH*, i8*)* null, align 8
@CCTK_OverloadSyncGroup.overloaded = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h\00", align 1
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
@stderr = external global %struct._IO_FILE*
@.str19 = private unnamed_addr constant [20 x i8] c"Dummy %s%s called.\0A\00", align 1
@.str20 = private unnamed_addr constant [12 x i8] c"CCTKi_Dummy\00", align 1
@.str21 = private unnamed_addr constant [88 x i8] c"$Header: /cactus/Cactus/src/comm/OverloadComm.c,v 1.25 2001/12/09 23:34:55 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_comm_OverloadComm_c() #0 {
entry:
  ret i8* getelementptr inbounds ([88 x i8]* @.str21, i64 0, i64 0), !dbg !344
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadSyncGroup(i32 (%struct.cGH*, i8*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i8*)* %func}, i64 0, metadata !58), !dbg !345
  %tobool = icmp eq i32 (%struct.cGH*, i8*)* %func, null, !dbg !346
  %0 = load i32* @CCTK_OverloadSyncGroup.overloaded, align 4, !dbg !347, !tbaa !349
  br i1 %tobool, label %if.end3, label %if.then, !dbg !346

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !347
  br i1 %cmp, label %if.then1, label %if.else, !dbg !347

if.then1:                                         ; preds = %if.then
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** @CCTK_SyncGroup, align 8, !dbg !352, !tbaa !354
  %inc = add nsw i32 %0, 1, !dbg !352
  store i32 %inc, i32* @CCTK_OverloadSyncGroup.overloaded, align 4, !dbg !352, !tbaa !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !59), !dbg !352
  br label %if.end3, !dbg !352

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 46, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !355
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !59), !dbg !355
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !346
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadEnableGroupStorage(i32 (%struct.cGH*, i8*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i8*)* %func}, i64 0, metadata !63), !dbg !357
  %tobool = icmp eq i32 (%struct.cGH*, i8*)* %func, null, !dbg !357
  %0 = load i32* @CCTK_OverloadEnableGroupStorage.overloaded, align 4, !dbg !358, !tbaa !349
  br i1 %tobool, label %if.end3, label %if.then, !dbg !357

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !358
  br i1 %cmp, label %if.then1, label %if.else, !dbg !358

if.then1:                                         ; preds = %if.then
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupStorage, align 8, !dbg !360, !tbaa !354
  %inc = add nsw i32 %0, 1, !dbg !360
  store i32 %inc, i32* @CCTK_OverloadEnableGroupStorage.overloaded, align 4, !dbg !360, !tbaa !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !64), !dbg !360
  br label %if.end3, !dbg !360

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 48, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !362
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !64), !dbg !362
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !357
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadDisableGroupStorage(i32 (%struct.cGH*, i8*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i8*)* %func}, i64 0, metadata !67), !dbg !364
  %tobool = icmp eq i32 (%struct.cGH*, i8*)* %func, null, !dbg !364
  %0 = load i32* @CCTK_OverloadDisableGroupStorage.overloaded, align 4, !dbg !365, !tbaa !349
  br i1 %tobool, label %if.end3, label %if.then, !dbg !364

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !365
  br i1 %cmp, label %if.then1, label %if.else, !dbg !365

if.then1:                                         ; preds = %if.then
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupStorage, align 8, !dbg !367, !tbaa !354
  %inc = add nsw i32 %0, 1, !dbg !367
  store i32 %inc, i32* @CCTK_OverloadDisableGroupStorage.overloaded, align 4, !dbg !367, !tbaa !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !68), !dbg !367
  br label %if.end3, !dbg !367

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 49, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str6, i64 0, i64 0)) #5, !dbg !369
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !68), !dbg !369
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !364
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadEnableGroupComm(i32 (%struct.cGH*, i8*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i8*)* %func}, i64 0, metadata !71), !dbg !371
  %tobool = icmp eq i32 (%struct.cGH*, i8*)* %func, null, !dbg !371
  %0 = load i32* @CCTK_OverloadEnableGroupComm.overloaded, align 4, !dbg !372, !tbaa !349
  br i1 %tobool, label %if.end3, label %if.then, !dbg !371

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !372
  br i1 %cmp, label %if.then1, label %if.else, !dbg !372

if.then1:                                         ; preds = %if.then
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupComm, align 8, !dbg !374, !tbaa !354
  %inc = add nsw i32 %0, 1, !dbg !374
  store i32 %inc, i32* @CCTK_OverloadEnableGroupComm.overloaded, align 4, !dbg !374, !tbaa !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !72), !dbg !374
  br label %if.end3, !dbg !374

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 51, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !376
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !72), !dbg !376
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !371
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadDisableGroupComm(i32 (%struct.cGH*, i8*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i8*)* %func}, i64 0, metadata !75), !dbg !378
  %tobool = icmp eq i32 (%struct.cGH*, i8*)* %func, null, !dbg !378
  %0 = load i32* @CCTK_OverloadDisableGroupComm.overloaded, align 4, !dbg !379, !tbaa !349
  br i1 %tobool, label %if.end3, label %if.then, !dbg !378

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !379
  br i1 %cmp, label %if.then1, label %if.else, !dbg !379

if.then1:                                         ; preds = %if.then
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupComm, align 8, !dbg !381, !tbaa !354
  %inc = add nsw i32 %0, 1, !dbg !381
  store i32 %inc, i32* @CCTK_OverloadDisableGroupComm.overloaded, align 4, !dbg !381, !tbaa !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !76), !dbg !381
  br label %if.end3, !dbg !381

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 52, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0)) #5, !dbg !383
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !76), !dbg !383
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !378
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadBarrier(i32 (%struct.cGH*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*)* %func}, i64 0, metadata !86), !dbg !385
  %tobool = icmp eq i32 (%struct.cGH*)* %func, null, !dbg !385
  %0 = load i32* @CCTK_OverloadBarrier.overloaded, align 4, !dbg !386, !tbaa !349
  br i1 %tobool, label %if.end3, label %if.then, !dbg !385

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !386
  br i1 %cmp, label %if.then1, label %if.else, !dbg !386

if.then1:                                         ; preds = %if.then
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** @CCTK_Barrier, align 8, !dbg !388, !tbaa !354
  %inc = add nsw i32 %0, 1, !dbg !388
  store i32 %inc, i32* @CCTK_OverloadBarrier.overloaded, align 4, !dbg !388, !tbaa !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !87), !dbg !388
  br label %if.end3, !dbg !388

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 58, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0)) #5, !dbg !390
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !87), !dbg !390
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !385
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadMyProc(i32 (%struct.cGH*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*)* %func}, i64 0, metadata !90), !dbg !392
  %tobool = icmp eq i32 (%struct.cGH*)* %func, null, !dbg !392
  %0 = load i32* @CCTK_OverloadMyProc.overloaded, align 4, !dbg !393, !tbaa !349
  br i1 %tobool, label %if.end3, label %if.then, !dbg !392

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !393
  br i1 %cmp, label %if.then1, label %if.else, !dbg !393

if.then1:                                         ; preds = %if.then
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !395, !tbaa !354
  %inc = add nsw i32 %0, 1, !dbg !395
  store i32 %inc, i32* @CCTK_OverloadMyProc.overloaded, align 4, !dbg !395, !tbaa !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !91), !dbg !395
  br label %if.end3, !dbg !395

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 59, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #5, !dbg !397
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !397
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !392
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadnProcs(i32 (%struct.cGH*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*)* %func}, i64 0, metadata !94), !dbg !399
  %tobool = icmp eq i32 (%struct.cGH*)* %func, null, !dbg !399
  %0 = load i32* @CCTK_OverloadnProcs.overloaded, align 4, !dbg !400, !tbaa !349
  br i1 %tobool, label %if.end3, label %if.then, !dbg !399

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !400
  br i1 %cmp, label %if.then1, label %if.else, !dbg !400

if.then1:                                         ; preds = %if.then
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** @CCTK_nProcs, align 8, !dbg !402, !tbaa !354
  %inc = add nsw i32 %0, 1, !dbg !402
  store i32 %inc, i32* @CCTK_OverloadnProcs.overloaded, align 4, !dbg !402, !tbaa !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !95), !dbg !402
  br label %if.end3, !dbg !402

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 60, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !404
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !95), !dbg !404
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !399
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadParallelInit(i32 (%struct.cGH*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*)* %func}, i64 0, metadata !103), !dbg !406
  %tobool = icmp eq i32 (%struct.cGH*)* %func, null, !dbg !406
  %0 = load i32* @CCTK_OverloadParallelInit.overloaded, align 4, !dbg !407, !tbaa !349
  br i1 %tobool, label %if.end3, label %if.then, !dbg !406

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !407
  br i1 %cmp, label %if.then1, label %if.else, !dbg !407

if.then1:                                         ; preds = %if.then
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** @CCTK_ParallelInit, align 8, !dbg !409, !tbaa !354
  %inc = add nsw i32 %0, 1, !dbg !409
  store i32 %inc, i32* @CCTK_OverloadParallelInit.overloaded, align 4, !dbg !409, !tbaa !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !104), !dbg !409
  br label %if.end3, !dbg !409

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 66, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str12, i64 0, i64 0)) #5, !dbg !411
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !104), !dbg !411
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !406
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadExit(i32 (%struct.cGH*, i32)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i32)* %func}, i64 0, metadata !112), !dbg !413
  %tobool = icmp eq i32 (%struct.cGH*, i32)* %func, null, !dbg !413
  %0 = load i32* @CCTK_OverloadExit.overloaded, align 4, !dbg !414, !tbaa !349
  br i1 %tobool, label %if.end3, label %if.then, !dbg !413

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !414
  br i1 %cmp, label %if.then1, label %if.else, !dbg !414

if.then1:                                         ; preds = %if.then
  store i32 (%struct.cGH*, i32)* %func, i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !dbg !416, !tbaa !354
  %inc = add nsw i32 %0, 1, !dbg !416
  store i32 %inc, i32* @CCTK_OverloadExit.overloaded, align 4, !dbg !416, !tbaa !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !113), !dbg !416
  br label %if.end3, !dbg !416

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 74, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0)) #5, !dbg !418
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !113), !dbg !418
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !413
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadAbort(i32 (%struct.cGH*, i32)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i32)* %func}, i64 0, metadata !116), !dbg !420
  %tobool = icmp eq i32 (%struct.cGH*, i32)* %func, null, !dbg !420
  %0 = load i32* @CCTK_OverloadAbort.overloaded, align 4, !dbg !421, !tbaa !349
  br i1 %tobool, label %if.end3, label %if.then, !dbg !420

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !421
  br i1 %cmp, label %if.then1, label %if.else, !dbg !421

if.then1:                                         ; preds = %if.then
  store i32 (%struct.cGH*, i32)* %func, i32 (%struct.cGH*, i32)** @CCTK_Abort, align 8, !dbg !423, !tbaa !354
  %inc = add nsw i32 %0, 1, !dbg !423
  store i32 %inc, i32* @CCTK_OverloadAbort.overloaded, align 4, !dbg !423, !tbaa !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !117), !dbg !423
  br label %if.end3, !dbg !423

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 75, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0)) #5, !dbg !425
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !117), !dbg !425
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !420
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadSetupGH(%struct.cGH* (%struct.tFleshConfig*, i32)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* (%struct.tFleshConfig*, i32)* %func}, i64 0, metadata !136), !dbg !427
  %tobool = icmp eq %struct.cGH* (%struct.tFleshConfig*, i32)* %func, null, !dbg !427
  %0 = load i32* @CCTK_OverloadSetupGH.overloaded, align 4, !dbg !428, !tbaa !349
  br i1 %tobool, label %if.end3, label %if.then, !dbg !427

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !428
  br i1 %cmp, label %if.then1, label %if.else, !dbg !428

if.then1:                                         ; preds = %if.then
  store %struct.cGH* (%struct.tFleshConfig*, i32)* %func, %struct.cGH* (%struct.tFleshConfig*, i32)** @CCTK_SetupGH, align 8, !dbg !430, !tbaa !354
  %inc = add nsw i32 %0, 1, !dbg !430
  store i32 %inc, i32* @CCTK_OverloadSetupGH.overloaded, align 4, !dbg !430, !tbaa !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !137), !dbg !430
  br label %if.end3, !dbg !430

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 83, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0)) #5, !dbg !432
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !137), !dbg !432
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !427
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadArrayGroupSizeB(i32* (%struct.cGH*, i32, i32, i8*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* (%struct.cGH*, i32, i32, i8*)* %func}, i64 0, metadata !147), !dbg !434
  %tobool = icmp eq i32* (%struct.cGH*, i32, i32, i8*)* %func, null, !dbg !434
  %0 = load i32* @CCTK_OverloadArrayGroupSizeB.overloaded, align 4, !dbg !435, !tbaa !349
  br i1 %tobool, label %if.end3, label %if.then, !dbg !434

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !435
  br i1 %cmp, label %if.then1, label %if.else, !dbg !435

if.then1:                                         ; preds = %if.then
  store i32* (%struct.cGH*, i32, i32, i8*)* %func, i32* (%struct.cGH*, i32, i32, i8*)** @CCTK_ArrayGroupSizeB, align 8, !dbg !437, !tbaa !354
  %inc = add nsw i32 %0, 1, !dbg !437
  store i32 %inc, i32* @CCTK_OverloadArrayGroupSizeB.overloaded, align 4, !dbg !437, !tbaa !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !148), !dbg !437
  br label %if.end3, !dbg !437

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 91, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #5, !dbg !439
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !148), !dbg !439
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !434
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadQueryGroupStorageB(i32 (%struct.cGH*, i32, i8*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i32, i8*)* %func}, i64 0, metadata !156), !dbg !441
  %tobool = icmp eq i32 (%struct.cGH*, i32, i8*)* %func, null, !dbg !441
  %0 = load i32* @CCTK_OverloadQueryGroupStorageB.overloaded, align 4, !dbg !442, !tbaa !349
  br i1 %tobool, label %if.end3, label %if.then, !dbg !441

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !442
  br i1 %cmp, label %if.then1, label %if.else, !dbg !442

if.then1:                                         ; preds = %if.then
  store i32 (%struct.cGH*, i32, i8*)* %func, i32 (%struct.cGH*, i32, i8*)** @CCTK_QueryGroupStorageB, align 8, !dbg !444, !tbaa !354
  %inc = add nsw i32 %0, 1, !dbg !444
  store i32 %inc, i32* @CCTK_OverloadQueryGroupStorageB.overloaded, align 4, !dbg !444, !tbaa !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !157), !dbg !444
  br label %if.end3, !dbg !444

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 99, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str17, i64 0, i64 0)) #5, !dbg !446
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !157), !dbg !446
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !441
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadGroupDynamicData(i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* %func}, i64 0, metadata !177), !dbg !448
  %tobool = icmp eq i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* %func, null, !dbg !448
  %0 = load i32* @CCTK_OverloadGroupDynamicData.overloaded, align 4, !dbg !449, !tbaa !349
  br i1 %tobool, label %if.end3, label %if.then, !dbg !448

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !449
  br i1 %cmp, label %if.then1, label %if.else, !dbg !449

if.then1:                                         ; preds = %if.then
  store i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* %func, i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)** @CCTK_GroupDynamicData, align 8, !dbg !451, !tbaa !354
  %inc = add nsw i32 %0, 1, !dbg !451
  store i32 %inc, i32* @CCTK_OverloadGroupDynamicData.overloaded, align 4, !dbg !451, !tbaa !349
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !178), !dbg !451
  br label %if.end3, !dbg !451

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 107, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0)) #5, !dbg !453
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !178), !dbg !453
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !448
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_SetupCommFunctions() #1 {
entry:
  %call = tail call i32 @CCTK_OverloadSyncGroup(i32 (%struct.cGH*, i8*)* @CCTKi_DummySyncGroup) #6, !dbg !455
  %call1 = tail call i32 @CCTK_OverloadEnableGroupStorage(i32 (%struct.cGH*, i8*)* @CCTKi_DummyEnableGroupStorage) #6, !dbg !457
  %call2 = tail call i32 @CCTK_OverloadDisableGroupStorage(i32 (%struct.cGH*, i8*)* @CCTKi_DummyDisableGroupStorage) #6, !dbg !458
  %call3 = tail call i32 @CCTK_OverloadEnableGroupComm(i32 (%struct.cGH*, i8*)* @CCTKi_DummyEnableGroupComm) #6, !dbg !459
  %call4 = tail call i32 @CCTK_OverloadDisableGroupComm(i32 (%struct.cGH*, i8*)* @CCTKi_DummyDisableGroupComm) #6, !dbg !460
  %call5 = tail call i32 @CCTK_OverloadBarrier(i32 (%struct.cGH*)* @CactusDefaultBarrier) #6, !dbg !461
  %call6 = tail call i32 @CCTK_OverloadMyProc(i32 (%struct.cGH*)* @CactusDefaultMyProc) #6, !dbg !462
  %call7 = tail call i32 @CCTK_OverloadnProcs(i32 (%struct.cGH*)* @CactusDefaultnProcs) #6, !dbg !463
  %call8 = tail call i32 @CCTK_OverloadParallelInit(i32 (%struct.cGH*)* @CCTKi_DummyParallelInit) #6, !dbg !464
  %call9 = tail call i32 @CCTK_OverloadExit(i32 (%struct.cGH*, i32)* @CactusDefaultExit) #6, !dbg !465
  %call10 = tail call i32 @CCTK_OverloadAbort(i32 (%struct.cGH*, i32)* @CactusDefaultAbort) #6, !dbg !466
  %call11 = tail call i32 @CCTK_OverloadSetupGH(%struct.cGH* (%struct.tFleshConfig*, i32)* @CactusDefaultSetupGH) #6, !dbg !467
  %call12 = tail call i32 @CCTK_OverloadArrayGroupSizeB(i32* (%struct.cGH*, i32, i32, i8*)* @CCTKi_DummyArrayGroupSizeB) #6, !dbg !468
  %call13 = tail call i32 @CCTK_OverloadQueryGroupStorageB(i32 (%struct.cGH*, i32, i8*)* @CCTKi_DummyQueryGroupStorageB) #6, !dbg !469
  %call14 = tail call i32 @CCTK_OverloadGroupDynamicData(i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* @CCTKi_DummyGroupDynamicData) #6, !dbg !470
  ret i32 0, !dbg !471
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummySyncGroup(%struct.cGH* nocapture %GH, i8* nocapture %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !184), !dbg !473
  tail call void @llvm.dbg.value(metadata !{i8* %group}, i64 0, metadata !185), !dbg !473
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !184), !dbg !474
  tail call void @llvm.dbg.value(metadata !{i8* %group}, i64 0, metadata !185), !dbg !474
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !474, !tbaa !354
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0)) #5, !dbg !474
  ret i32 0, !dbg !474
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummyEnableGroupStorage(%struct.cGH* nocapture %GH, i8* nocapture %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !188), !dbg !476
  tail call void @llvm.dbg.value(metadata !{i8* %group}, i64 0, metadata !189), !dbg !476
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !188), !dbg !476
  tail call void @llvm.dbg.value(metadata !{i8* %group}, i64 0, metadata !189), !dbg !476
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !476, !tbaa !354
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !476
  ret i32 0, !dbg !476
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummyDisableGroupStorage(%struct.cGH* nocapture %GH, i8* nocapture %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !192), !dbg !477
  tail call void @llvm.dbg.value(metadata !{i8* %group}, i64 0, metadata !193), !dbg !477
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !192), !dbg !477
  tail call void @llvm.dbg.value(metadata !{i8* %group}, i64 0, metadata !193), !dbg !477
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !477, !tbaa !354
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str6, i64 0, i64 0)) #5, !dbg !477
  ret i32 0, !dbg !477
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummyEnableGroupComm(%struct.cGH* nocapture %GH, i8* nocapture %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !196), !dbg !478
  tail call void @llvm.dbg.value(metadata !{i8* %group}, i64 0, metadata !197), !dbg !478
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !196), !dbg !478
  tail call void @llvm.dbg.value(metadata !{i8* %group}, i64 0, metadata !197), !dbg !478
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !478, !tbaa !354
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0)) #5, !dbg !478
  ret i32 0, !dbg !478
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummyDisableGroupComm(%struct.cGH* nocapture %GH, i8* nocapture %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !200), !dbg !479
  tail call void @llvm.dbg.value(metadata !{i8* %group}, i64 0, metadata !201), !dbg !479
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !200), !dbg !479
  tail call void @llvm.dbg.value(metadata !{i8* %group}, i64 0, metadata !201), !dbg !479
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !479, !tbaa !354
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0)) #5, !dbg !479
  ret i32 0, !dbg !479
}

; Function Attrs: optsize
declare i32 @CactusDefaultBarrier(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CactusDefaultMyProc(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CactusDefaultnProcs(%struct.cGH*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummyParallelInit(%struct.cGH* nocapture %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !213), !dbg !480
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !213), !dbg !480
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !480, !tbaa !354
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str12, i64 0, i64 0)) #5, !dbg !480
  ret i32 0, !dbg !480
}

; Function Attrs: optsize
declare i32 @CactusDefaultExit(%struct.cGH*, i32) #2

; Function Attrs: optsize
declare i32 @CactusDefaultAbort(%struct.cGH*, i32) #2

; Function Attrs: optsize
declare %struct.cGH* @CactusDefaultSetupGH(%struct.tFleshConfig*, i32) #2

; Function Attrs: nounwind optsize uwtable
define noalias i32* @CCTKi_DummyArrayGroupSizeB(%struct.cGH* nocapture %GH, i32 %dir, i32 %group, i8* nocapture %groupname) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !228), !dbg !481
  tail call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !229), !dbg !481
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !230), !dbg !481
  tail call void @llvm.dbg.value(metadata !{i8* %groupname}, i64 0, metadata !231), !dbg !481
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !228), !dbg !481
  tail call void @llvm.dbg.value(metadata !{i32 %dir}, i64 0, metadata !229), !dbg !481
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !230), !dbg !481
  tail call void @llvm.dbg.value(metadata !{i8* %groupname}, i64 0, metadata !231), !dbg !481
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !481, !tbaa !354
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #5, !dbg !481
  ret i32* null, !dbg !481
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummyQueryGroupStorageB(%struct.cGH* nocapture %GH, i32 %group, i8* nocapture %groupname) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !234), !dbg !482
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !235), !dbg !482
  tail call void @llvm.dbg.value(metadata !{i8* %groupname}, i64 0, metadata !236), !dbg !482
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !234), !dbg !482
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !235), !dbg !482
  tail call void @llvm.dbg.value(metadata !{i8* %groupname}, i64 0, metadata !236), !dbg !482
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !482, !tbaa !354
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str17, i64 0, i64 0)) #5, !dbg !482
  ret i32 0, !dbg !482
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummyGroupDynamicData(%struct.cGH* nocapture %GH, i32 %group, %struct.GROUPDYNAMICDATA* nocapture %data) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !239), !dbg !483
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !240), !dbg !483
  tail call void @llvm.dbg.value(metadata !{%struct.GROUPDYNAMICDATA* %data}, i64 0, metadata !241), !dbg !483
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !239), !dbg !483
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !240), !dbg !483
  tail call void @llvm.dbg.value(metadata !{%struct.GROUPDYNAMICDATA* %data}, i64 0, metadata !241), !dbg !483
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !483, !tbaa !354
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0)) #5, !dbg !483
  ret i32 0, !dbg !483
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummyBarrier(%struct.cGH* nocapture %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !204), !dbg !484
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !204), !dbg !484
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !484, !tbaa !354
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0)) #5, !dbg !484
  ret i32 0, !dbg !484
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummyMyProc(%struct.cGH* nocapture %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !207), !dbg !485
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !207), !dbg !485
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !485, !tbaa !354
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #5, !dbg !485
  ret i32 0, !dbg !485
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummynProcs(%struct.cGH* nocapture %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !210), !dbg !486
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !210), !dbg !486
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !486, !tbaa !354
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !486
  ret i32 0, !dbg !486
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummyExit(%struct.cGH* nocapture %GH, i32 %retval1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !216), !dbg !487
  tail call void @llvm.dbg.value(metadata !{i32 %retval1}, i64 0, metadata !217), !dbg !487
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !216), !dbg !487
  tail call void @llvm.dbg.value(metadata !{i32 %retval1}, i64 0, metadata !217), !dbg !487
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !487, !tbaa !354
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0)) #5, !dbg !487
  ret i32 0, !dbg !487
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_DummyAbort(%struct.cGH* nocapture %GH, i32 %retval1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !220), !dbg !488
  tail call void @llvm.dbg.value(metadata !{i32 %retval1}, i64 0, metadata !221), !dbg !488
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !220), !dbg !488
  tail call void @llvm.dbg.value(metadata !{i32 %retval1}, i64 0, metadata !221), !dbg !488
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !488, !tbaa !354
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0)) #5, !dbg !488
  ret i32 0, !dbg !488
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.cGH* @CCTKi_DummySetupGH(%struct.tFleshConfig* nocapture %config, i32 %convergence_level) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %config}, i64 0, metadata !224), !dbg !489
  tail call void @llvm.dbg.value(metadata !{i32 %convergence_level}, i64 0, metadata !225), !dbg !489
  tail call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %config}, i64 0, metadata !224), !dbg !489
  tail call void @llvm.dbg.value(metadata !{i32 %convergence_level}, i64 0, metadata !225), !dbg !489
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !489, !tbaa !354
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0)) #5, !dbg !489
  ret %struct.cGH* null, !dbg !489
}

; Function Attrs: nounwind optsize uwtable
define i32 @cctk_nprocs_(%struct.cGH* %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !244), !dbg !490
  %0 = load i32 (%struct.cGH*)** @CCTK_nProcs, align 8, !dbg !491, !tbaa !354
  %call = tail call i32 %0(%struct.cGH* %GH) #5, !dbg !491
  ret i32 %call, !dbg !491
}

; Function Attrs: nounwind optsize uwtable
define i32 @cctk_myproc_(%struct.cGH* %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !247), !dbg !493
  %0 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !494, !tbaa !354
  %call = tail call i32 %0(%struct.cGH* %GH) #5, !dbg !494
  ret i32 %call, !dbg !494
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_barrier_(i32* nocapture %ierror, %struct.cGH* %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierror}, i64 0, metadata !252), !dbg !495
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !253), !dbg !495
  %0 = load i32 (%struct.cGH*)** @CCTK_Barrier, align 8, !dbg !496, !tbaa !354
  %call = tail call i32 %0(%struct.cGH* %GH) #5, !dbg !496
  store i32 %call, i32* %ierror, align 4, !dbg !496, !tbaa !349
  ret void, !dbg !497
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_exit_(i32* nocapture %ierror, %struct.cGH* %GH, i32* nocapture %retval) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierror}, i64 0, metadata !258), !dbg !498
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !259), !dbg !498
  tail call void @llvm.dbg.value(metadata !{i32* %retval}, i64 0, metadata !260), !dbg !498
  %0 = load i32 (%struct.cGH*, i32)** @CCTK_Exit, align 8, !dbg !499, !tbaa !354
  %1 = load i32* %retval, align 4, !dbg !499, !tbaa !349
  %call = tail call i32 %0(%struct.cGH* %GH, i32 %1) #5, !dbg !499
  store i32 %call, i32* %ierror, align 4, !dbg !499, !tbaa !349
  ret void, !dbg !500
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_abort_(i32* nocapture %ierror, %struct.cGH* %GH, i32* nocapture %retval) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierror}, i64 0, metadata !263), !dbg !501
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !264), !dbg !501
  tail call void @llvm.dbg.value(metadata !{i32* %retval}, i64 0, metadata !265), !dbg !501
  %0 = load i32 (%struct.cGH*, i32)** @CCTK_Abort, align 8, !dbg !502, !tbaa !354
  %1 = load i32* %retval, align 4, !dbg !502, !tbaa !349
  %call = tail call i32 %0(%struct.cGH* %GH, i32 %1) #5, !dbg !502
  store i32 %call, i32* %ierror, align 4, !dbg !502, !tbaa !349
  ret void, !dbg !503
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_syncgroup_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierror}, i64 0, metadata !270), !dbg !504
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !271), !dbg !504
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !272), !dbg !504
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !273), !dbg !504
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !505
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !274), !dbg !505
  %0 = load i32 (%struct.cGH*, i8*)** @CCTK_SyncGroup, align 8, !dbg !506, !tbaa !354
  %call1 = tail call i32 %0(%struct.cGH* %GH, i8* %call) #5, !dbg !506
  store i32 %call1, i32* %ierror, align 4, !dbg !506, !tbaa !349
  tail call void @free(i8* %call) #5, !dbg !507
  ret void, !dbg !508
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @cctk_enablegroupcomm_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierror}, i64 0, metadata !277), !dbg !509
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !278), !dbg !509
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !279), !dbg !509
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !280), !dbg !509
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !510
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !281), !dbg !510
  %0 = load i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupComm, align 8, !dbg !511, !tbaa !354
  %call1 = tail call i32 %0(%struct.cGH* %GH, i8* %call) #5, !dbg !511
  store i32 %call1, i32* %ierror, align 4, !dbg !511, !tbaa !349
  tail call void @free(i8* %call) #5, !dbg !512
  ret void, !dbg !513
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_disablegroupcomm_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierror}, i64 0, metadata !284), !dbg !514
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !285), !dbg !514
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !286), !dbg !514
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !287), !dbg !514
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !515
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !288), !dbg !515
  %0 = load i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupComm, align 8, !dbg !516, !tbaa !354
  %call1 = tail call i32 %0(%struct.cGH* %GH, i8* %call) #5, !dbg !516
  store i32 %call1, i32* %ierror, align 4, !dbg !516, !tbaa !349
  tail call void @free(i8* %call) #5, !dbg !517
  ret void, !dbg !518
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_enablegroupstorage_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierror}, i64 0, metadata !291), !dbg !519
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !292), !dbg !519
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !293), !dbg !519
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !294), !dbg !519
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !520
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !295), !dbg !520
  %0 = load i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupStorage, align 8, !dbg !521, !tbaa !354
  %call1 = tail call i32 %0(%struct.cGH* %GH, i8* %call) #5, !dbg !521
  store i32 %call1, i32* %ierror, align 4, !dbg !521, !tbaa !349
  tail call void @free(i8* %call) #5, !dbg !522
  ret void, !dbg !523
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_disablegroupstorage_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierror}, i64 0, metadata !298), !dbg !524
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !299), !dbg !524
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !300), !dbg !524
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !301), !dbg !524
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !525
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !302), !dbg !525
  %0 = load i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupStorage, align 8, !dbg !526, !tbaa !354
  %call1 = tail call i32 %0(%struct.cGH* %GH, i8* %call) #5, !dbg !526
  store i32 %call1, i32* %ierror, align 4, !dbg !526, !tbaa !349
  tail call void @free(i8* %call) #5, !dbg !527
  ret void, !dbg !528
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_querygroupstorage_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierror}, i64 0, metadata !307), !dbg !529
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !308), !dbg !529
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !309), !dbg !529
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !310), !dbg !529
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !530
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !311), !dbg !530
  %call1 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* %call) #5, !dbg !531
  store i32 %call1, i32* %ierror, align 4, !dbg !531, !tbaa !349
  tail call void @free(i8* %call) #5, !dbg !532
  ret void, !dbg !533
}

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorage(%struct.cGH*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !312, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadComm.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadComm.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !61, metadata !65, metadata !69, metadata !73, metadata !77, metadata !88, metadata !92, metadata !96, metadata !105, metadata !114, metadata !118, metadata !138, metadata !149, metadata !158, metadata !179, metadata !182, metadata !186, metadata !190, metadata !194, metadata !198, metadata !202, metadata !205, metadata !208, metadata !211, metadata !214, metadata !218, metadata !222, metadata !226, metadata !232, metadata !237, metadata !242, metadata !245, metadata !248, metadata !254, metadata !261, metadata !266, metadata !275, metadata !282, metadata !289, metadata !296, metadata !303}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_comm_OverloadComm_c", metadata !"CCTKi_version_comm_OverloadComm_c", metadata !"", i32 26, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_comm_OverloadComm_c, null, null, metadata !2, i32 26} ; [ DW_TAG_subprogram ] [line 26] [def] [CCTKi_version_comm_OverloadComm_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadComm.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadSyncGroup", metadata !"CCTK_OverloadSyncGroup", metadata !"", i32 46, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32 (%struct.cGH*, i8*)*)* @CCTK_OverloadSyncGroup, null, null, metadata !57, i32 46} ; [ DW_TAG_subprogram ] [line 46] [def] [CCTK_OverloadSyncGroup]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{i32 786473, metadata !12}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!14 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !16, metadata !17}
!16 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!18 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{metadata !16, metadata !20, metadata !8}
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!21 = metadata !{i32 786454, metadata !12, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!22 = metadata !{i32 786451, metadata !23, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !24, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!23 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!24 = metadata !{metadata !25, metadata !26, metadata !27, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !37, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !49, metadata !50}
!25 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!26 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !16} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!27 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!29 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!30 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !28} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!31 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !28} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!32 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!33 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!34 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!35 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !36} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!36 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!37 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !38} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!39 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !38} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!40 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !28} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!41 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !28} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!42 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !16} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!43 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !28} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!44 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !36} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!45 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !46} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !47} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!50 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !51} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!52 = metadata !{i32 786454, metadata !23, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!53 = metadata !{i32 786451, metadata !23, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !54, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!54 = metadata !{metadata !55, metadata !56}
!55 = metadata !{i32 786445, metadata !23, metadata !53, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!56 = metadata !{i32 786445, metadata !23, metadata !53, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!57 = metadata !{metadata !58, metadata !59}
!58 = metadata !{i32 786689, metadata !11, metadata !"func", metadata !13, i32 16777262, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 46]
!59 = metadata !{i32 786688, metadata !60, metadata !"return_code", metadata !13, i32 46, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 46]
!60 = metadata !{i32 786443, metadata !12, metadata !11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!61 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadEnableGroupStorage", metadata !"CCTK_OverloadEnableGroupStorage", metadata !"", i32 48, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32 (%struct.cGH*, i8*)*)* @CCTK_OverloadEnableGroupStorage, null, null, metadata !62, i32 48} ; [ DW_TAG_subprogram ] [line 48] [def] [CCTK_OverloadEnableGroupStorage]
!62 = metadata !{metadata !63, metadata !64}
!63 = metadata !{i32 786689, metadata !61, metadata !"func", metadata !13, i32 16777264, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 48]
!64 = metadata !{i32 786688, metadata !61, metadata !"return_code", metadata !13, i32 48, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 48]
!65 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadDisableGroupStorage", metadata !"CCTK_OverloadDisableGroupStorage", metadata !"", i32 49, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32 (%struct.cGH*, i8*)*)* @CCTK_OverloadDisableGroupStorage, null, null, metadata !66, i32 49} ; [ DW_TAG_subprogram ] [line 49] [def] [CCTK_OverloadDisableGroupStorage]
!66 = metadata !{metadata !67, metadata !68}
!67 = metadata !{i32 786689, metadata !65, metadata !"func", metadata !13, i32 16777265, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 49]
!68 = metadata !{i32 786688, metadata !65, metadata !"return_code", metadata !13, i32 49, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 49]
!69 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadEnableGroupComm", metadata !"CCTK_OverloadEnableGroupComm", metadata !"", i32 51, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32 (%struct.cGH*, i8*)*)* @CCTK_OverloadEnableGroupComm, null, null, metadata !70, i32 51} ; [ DW_TAG_subprogram ] [line 51] [def] [CCTK_OverloadEnableGroupComm]
!70 = metadata !{metadata !71, metadata !72}
!71 = metadata !{i32 786689, metadata !69, metadata !"func", metadata !13, i32 16777267, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 51]
!72 = metadata !{i32 786688, metadata !69, metadata !"return_code", metadata !13, i32 51, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 51]
!73 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadDisableGroupComm", metadata !"CCTK_OverloadDisableGroupComm", metadata !"", i32 52, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32 (%struct.cGH*, i8*)*)* @CCTK_OverloadDisableGroupComm, null, null, metadata !74, i32 52} ; [ DW_TAG_subprogram ] [line 52] [def] [CCTK_OverloadDisableGroupComm]
!74 = metadata !{metadata !75, metadata !76}
!75 = metadata !{i32 786689, metadata !73, metadata !"func", metadata !13, i32 16777268, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 52]
!76 = metadata !{i32 786688, metadata !73, metadata !"return_code", metadata !13, i32 52, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 52]
!77 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadBarrier", metadata !"CCTK_OverloadBarrier", metadata !"", i32 58, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32 (%struct.cGH*)*)* @CCTK_OverloadBarrier, null, null, metadata !85, i32 58} ; [ DW_TAG_subprogram ] [line 58] [def] [CCTK_OverloadBarrier]
!78 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!79 = metadata !{metadata !16, metadata !80}
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!81 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!82 = metadata !{metadata !16, metadata !83}
!83 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!84 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!85 = metadata !{metadata !86, metadata !87}
!86 = metadata !{i32 786689, metadata !77, metadata !"func", metadata !13, i32 16777274, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 58]
!87 = metadata !{i32 786688, metadata !77, metadata !"return_code", metadata !13, i32 58, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 58]
!88 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadMyProc", metadata !"CCTK_OverloadMyProc", metadata !"", i32 59, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32 (%struct.cGH*)*)* @CCTK_OverloadMyProc, null, null, metadata !89, i32 59} ; [ DW_TAG_subprogram ] [line 59] [def] [CCTK_OverloadMyProc]
!89 = metadata !{metadata !90, metadata !91}
!90 = metadata !{i32 786689, metadata !88, metadata !"func", metadata !13, i32 16777275, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 59]
!91 = metadata !{i32 786688, metadata !88, metadata !"return_code", metadata !13, i32 59, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 59]
!92 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadnProcs", metadata !"CCTK_OverloadnProcs", metadata !"", i32 60, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32 (%struct.cGH*)*)* @CCTK_OverloadnProcs, null, null, metadata !93, i32 60} ; [ DW_TAG_subprogram ] [line 60] [def] [CCTK_OverloadnProcs]
!93 = metadata !{metadata !94, metadata !95}
!94 = metadata !{i32 786689, metadata !92, metadata !"func", metadata !13, i32 16777276, metadata !80, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 60]
!95 = metadata !{i32 786688, metadata !92, metadata !"return_code", metadata !13, i32 60, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 60]
!96 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadParallelInit", metadata !"CCTK_OverloadParallelInit", metadata !"", i32 66, metadata !97, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32 (%struct.cGH*)*)* @CCTK_OverloadParallelInit, null, null, metadata !102, i32 66} ; [ DW_TAG_subprogram ] [line 66] [def] [CCTK_OverloadParallelInit]
!97 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!98 = metadata !{metadata !16, metadata !99}
!99 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !100} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!100 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!101 = metadata !{metadata !16, metadata !20}
!102 = metadata !{metadata !103, metadata !104}
!103 = metadata !{i32 786689, metadata !96, metadata !"func", metadata !13, i32 16777282, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 66]
!104 = metadata !{i32 786688, metadata !96, metadata !"return_code", metadata !13, i32 66, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 66]
!105 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadExit", metadata !"CCTK_OverloadExit", metadata !"", i32 74, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32 (%struct.cGH*, i32)*)* @CCTK_OverloadExit, null, null, metadata !111, i32 74} ; [ DW_TAG_subprogram ] [line 74] [def] [CCTK_OverloadExit]
!106 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!107 = metadata !{metadata !16, metadata !108}
!108 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!109 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!110 = metadata !{metadata !16, metadata !20, metadata !16}
!111 = metadata !{metadata !112, metadata !113}
!112 = metadata !{i32 786689, metadata !105, metadata !"func", metadata !13, i32 16777290, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 74]
!113 = metadata !{i32 786688, metadata !105, metadata !"return_code", metadata !13, i32 74, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 74]
!114 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadAbort", metadata !"CCTK_OverloadAbort", metadata !"", i32 75, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32 (%struct.cGH*, i32)*)* @CCTK_OverloadAbort, null, null, metadata !115, i32 75} ; [ DW_TAG_subprogram ] [line 75] [def] [CCTK_OverloadAbort]
!115 = metadata !{metadata !116, metadata !117}
!116 = metadata !{i32 786689, metadata !114, metadata !"func", metadata !13, i32 16777291, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 75]
!117 = metadata !{i32 786688, metadata !114, metadata !"return_code", metadata !13, i32 75, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 75]
!118 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadSetupGH", metadata !"CCTK_OverloadSetupGH", metadata !"", i32 83, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH* (%struct.tFleshConfig*, i32)*)* @CCTK_OverloadSetupGH, null, null, metadata !135, i32 83} ; [ DW_TAG_subprogram ] [line 83] [def] [CCTK_OverloadSetupGH]
!119 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{metadata !16, metadata !121}
!121 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !122} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!122 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!123 = metadata !{metadata !20, metadata !124, metadata !16}
!124 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !125} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tFleshConfig]
!125 = metadata !{i32 786454, metadata !12, null, metadata !"tFleshConfig", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !126} ; [ DW_TAG_typedef ] [tFleshConfig] [line 28, size 0, align 0, offset 0] [from ]
!126 = metadata !{i32 786451, metadata !127, null, metadata !"", i32 19, i64 192, i64 64, i32 0, i32 0, null, metadata !128, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 19, size 192, align 64, offset 0] [from ]
!127 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!128 = metadata !{metadata !129, metadata !131, metadata !133}
!129 = metadata !{i32 786445, metadata !127, metadata !126, metadata !"parameter_file_name", i32 21, i64 64, i64 64, i64 0, i32 0, metadata !130} ; [ DW_TAG_member ] [parameter_file_name] [line 21, size 64, align 64, offset 0] [from ]
!130 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!131 = metadata !{i32 786445, metadata !127, metadata !126, metadata !"GH", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !132} ; [ DW_TAG_member ] [GH] [line 24, size 64, align 64, offset 64] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!133 = metadata !{i32 786445, metadata !127, metadata !126, metadata !"nGHs", i32 25, i64 32, i64 32, i64 128, i32 0, metadata !134} ; [ DW_TAG_member ] [nGHs] [line 25, size 32, align 32, offset 128] [from unsigned int]
!134 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!135 = metadata !{metadata !136, metadata !137}
!136 = metadata !{i32 786689, metadata !118, metadata !"func", metadata !13, i32 16777299, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 83]
!137 = metadata !{i32 786688, metadata !118, metadata !"return_code", metadata !13, i32 83, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 83]
!138 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadArrayGroupSizeB", metadata !"CCTK_OverloadArrayGroupSizeB", metadata !"", i32 91, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32* (%struct.cGH*, i32, i32, i8*)*)* @CCTK_OverloadArrayGroupSizeB, null, null, metadata !146, i32 91} ; [ DW_TAG_subprogram ] [line 91] [def] [CCTK_OverloadArrayGroupSizeB]
!139 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{metadata !16, metadata !141}
!141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!142 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!143 = metadata !{metadata !144, metadata !83, metadata !16, metadata !16, metadata !8}
!144 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !145} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!145 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!146 = metadata !{metadata !147, metadata !148}
!147 = metadata !{i32 786689, metadata !138, metadata !"func", metadata !13, i32 16777307, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 91]
!148 = metadata !{i32 786688, metadata !138, metadata !"return_code", metadata !13, i32 91, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 91]
!149 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadQueryGroupStorageB", metadata !"CCTK_OverloadQueryGroupStorageB", metadata !"", i32 99, metadata !150, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32 (%struct.cGH*, i32, i8*)*)* @CCTK_OverloadQueryGroupStorageB, null, null, metadata !155, i32 99} ; [ DW_TAG_subprogram ] [line 99] [def] [CCTK_OverloadQueryGroupStorageB]
!150 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!151 = metadata !{metadata !16, metadata !152}
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!153 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!154 = metadata !{metadata !16, metadata !83, metadata !16, metadata !8}
!155 = metadata !{metadata !156, metadata !157}
!156 = metadata !{i32 786689, metadata !149, metadata !"func", metadata !13, i32 16777315, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 99]
!157 = metadata !{i32 786688, metadata !149, metadata !"return_code", metadata !13, i32 99, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 99]
!158 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadGroupDynamicData", metadata !"CCTK_OverloadGroupDynamicData", metadata !"", i32 107, metadata !159, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)*)* @CCTK_OverloadGroupDynamicData, null, null, metadata !176, i32 107} ; [ DW_TAG_subprogram ] [line 107] [def] [CCTK_OverloadGroupDynamicData]
!159 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !160, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!160 = metadata !{metadata !16, metadata !161}
!161 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !162} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!162 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !163, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!163 = metadata !{metadata !16, metadata !83, metadata !16, metadata !164}
!164 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !165} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGroupDynamicData]
!165 = metadata !{i32 786454, metadata !12, null, metadata !"cGroupDynamicData", i32 23, i64 0, i64 0, i64 0, i32 0, metadata !166} ; [ DW_TAG_typedef ] [cGroupDynamicData] [line 23, size 0, align 0, offset 0] [from GROUPDYNAMICDATA]
!166 = metadata !{i32 786451, metadata !167, null, metadata !"GROUPDYNAMICDATA", i32 14, i64 448, i64 64, i32 0, i32 0, null, metadata !168, i32 0, null, null} ; [ DW_TAG_structure_type ] [GROUPDYNAMICDATA] [line 14, size 448, align 64, offset 0] [from ]
!167 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_GroupsOnGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!168 = metadata !{metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175}
!169 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"dim", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [dim] [line 16, size 32, align 32, offset 0] [from int]
!170 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"gsh", i32 17, i64 64, i64 64, i64 64, i32 0, metadata !144} ; [ DW_TAG_member ] [gsh] [line 17, size 64, align 64, offset 64] [from ]
!171 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"lsh", i32 18, i64 64, i64 64, i64 128, i32 0, metadata !144} ; [ DW_TAG_member ] [lsh] [line 18, size 64, align 64, offset 128] [from ]
!172 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"lbnd", i32 19, i64 64, i64 64, i64 192, i32 0, metadata !144} ; [ DW_TAG_member ] [lbnd] [line 19, size 64, align 64, offset 192] [from ]
!173 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"ubnd", i32 20, i64 64, i64 64, i64 256, i32 0, metadata !144} ; [ DW_TAG_member ] [ubnd] [line 20, size 64, align 64, offset 256] [from ]
!174 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"bbox", i32 21, i64 64, i64 64, i64 320, i32 0, metadata !144} ; [ DW_TAG_member ] [bbox] [line 21, size 64, align 64, offset 320] [from ]
!175 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"nghostzones", i32 22, i64 64, i64 64, i64 384, i32 0, metadata !144} ; [ DW_TAG_member ] [nghostzones] [line 22, size 64, align 64, offset 384] [from ]
!176 = metadata !{metadata !177, metadata !178}
!177 = metadata !{i32 786689, metadata !158, metadata !"func", metadata !13, i32 16777323, metadata !161, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 107]
!178 = metadata !{i32 786688, metadata !158, metadata !"return_code", metadata !13, i32 107, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 107]
!179 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_SetupCommFunctions", metadata !"CCTKi_SetupCommFunctions", metadata !"", i32 76, metadata !180, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_SetupCommFunctions, null, null, metadata !2, i32 77} ; [ DW_TAG_subprogram ] [line 76] [def] [scope 77] [CCTKi_SetupCommFunctions]
!180 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!181 = metadata !{metadata !16}
!182 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTKi_DummySyncGroup", metadata !"CCTKi_DummySyncGroup", metadata !"", i32 46, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @CCTKi_DummySyncGroup, null, null, metadata !183, i32 46} ; [ DW_TAG_subprogram ] [line 46] [def] [CCTKi_DummySyncGroup]
!183 = metadata !{metadata !184, metadata !185}
!184 = metadata !{i32 786689, metadata !182, metadata !"GH", metadata !13, i32 16777262, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 46]
!185 = metadata !{i32 786689, metadata !182, metadata !"group", metadata !13, i32 33554478, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 46]
!186 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTKi_DummyEnableGroupStorage", metadata !"CCTKi_DummyEnableGroupStorage", metadata !"", i32 48, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @CCTKi_DummyEnableGroupStorage, null, null, metadata !187, i32 48} ; [ DW_TAG_subprogram ] [line 48] [def] [CCTKi_DummyEnableGroupStorage]
!187 = metadata !{metadata !188, metadata !189}
!188 = metadata !{i32 786689, metadata !186, metadata !"GH", metadata !13, i32 16777264, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 48]
!189 = metadata !{i32 786689, metadata !186, metadata !"group", metadata !13, i32 33554480, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 48]
!190 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTKi_DummyDisableGroupStorage", metadata !"CCTKi_DummyDisableGroupStorage", metadata !"", i32 49, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @CCTKi_DummyDisableGroupStorage, null, null, metadata !191, i32 49} ; [ DW_TAG_subprogram ] [line 49] [def] [CCTKi_DummyDisableGroupStorage]
!191 = metadata !{metadata !192, metadata !193}
!192 = metadata !{i32 786689, metadata !190, metadata !"GH", metadata !13, i32 16777265, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 49]
!193 = metadata !{i32 786689, metadata !190, metadata !"group", metadata !13, i32 33554481, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 49]
!194 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTKi_DummyEnableGroupComm", metadata !"CCTKi_DummyEnableGroupComm", metadata !"", i32 51, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @CCTKi_DummyEnableGroupComm, null, null, metadata !195, i32 51} ; [ DW_TAG_subprogram ] [line 51] [def] [CCTKi_DummyEnableGroupComm]
!195 = metadata !{metadata !196, metadata !197}
!196 = metadata !{i32 786689, metadata !194, metadata !"GH", metadata !13, i32 16777267, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 51]
!197 = metadata !{i32 786689, metadata !194, metadata !"group", metadata !13, i32 33554483, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 51]
!198 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTKi_DummyDisableGroupComm", metadata !"CCTKi_DummyDisableGroupComm", metadata !"", i32 52, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @CCTKi_DummyDisableGroupComm, null, null, metadata !199, i32 52} ; [ DW_TAG_subprogram ] [line 52] [def] [CCTKi_DummyDisableGroupComm]
!199 = metadata !{metadata !200, metadata !201}
!200 = metadata !{i32 786689, metadata !198, metadata !"GH", metadata !13, i32 16777268, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 52]
!201 = metadata !{i32 786689, metadata !198, metadata !"group", metadata !13, i32 33554484, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 52]
!202 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTKi_DummyBarrier", metadata !"CCTKi_DummyBarrier", metadata !"", i32 58, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @CCTKi_DummyBarrier, null, null, metadata !203, i32 58} ; [ DW_TAG_subprogram ] [line 58] [def] [CCTKi_DummyBarrier]
!203 = metadata !{metadata !204}
!204 = metadata !{i32 786689, metadata !202, metadata !"GH", metadata !13, i32 16777274, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 58]
!205 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTKi_DummyMyProc", metadata !"CCTKi_DummyMyProc", metadata !"", i32 59, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @CCTKi_DummyMyProc, null, null, metadata !206, i32 59} ; [ DW_TAG_subprogram ] [line 59] [def] [CCTKi_DummyMyProc]
!206 = metadata !{metadata !207}
!207 = metadata !{i32 786689, metadata !205, metadata !"GH", metadata !13, i32 16777275, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 59]
!208 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTKi_DummynProcs", metadata !"CCTKi_DummynProcs", metadata !"", i32 60, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @CCTKi_DummynProcs, null, null, metadata !209, i32 60} ; [ DW_TAG_subprogram ] [line 60] [def] [CCTKi_DummynProcs]
!209 = metadata !{metadata !210}
!210 = metadata !{i32 786689, metadata !208, metadata !"GH", metadata !13, i32 16777276, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 60]
!211 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTKi_DummyParallelInit", metadata !"CCTKi_DummyParallelInit", metadata !"", i32 66, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @CCTKi_DummyParallelInit, null, null, metadata !212, i32 66} ; [ DW_TAG_subprogram ] [line 66] [def] [CCTKi_DummyParallelInit]
!212 = metadata !{metadata !213}
!213 = metadata !{i32 786689, metadata !211, metadata !"GH", metadata !13, i32 16777282, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 66]
!214 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTKi_DummyExit", metadata !"CCTKi_DummyExit", metadata !"", i32 74, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @CCTKi_DummyExit, null, null, metadata !215, i32 74} ; [ DW_TAG_subprogram ] [line 74] [def] [CCTKi_DummyExit]
!215 = metadata !{metadata !216, metadata !217}
!216 = metadata !{i32 786689, metadata !214, metadata !"GH", metadata !13, i32 16777290, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 74]
!217 = metadata !{i32 786689, metadata !214, metadata !"retval", metadata !13, i32 33554506, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [retval] [line 74]
!218 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTKi_DummyAbort", metadata !"CCTKi_DummyAbort", metadata !"", i32 75, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @CCTKi_DummyAbort, null, null, metadata !219, i32 75} ; [ DW_TAG_subprogram ] [line 75] [def] [CCTKi_DummyAbort]
!219 = metadata !{metadata !220, metadata !221}
!220 = metadata !{i32 786689, metadata !218, metadata !"GH", metadata !13, i32 16777291, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 75]
!221 = metadata !{i32 786689, metadata !218, metadata !"retval", metadata !13, i32 33554507, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [retval] [line 75]
!222 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTKi_DummySetupGH", metadata !"CCTKi_DummySetupGH", metadata !"", i32 83, metadata !122, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.cGH* (%struct.tFleshConfig*, i32)* @CCTKi_DummySetupGH, null, null, metadata !223, i32 83} ; [ DW_TAG_subprogram ] [line 83] [def] [CCTKi_DummySetupGH]
!223 = metadata !{metadata !224, metadata !225}
!224 = metadata !{i32 786689, metadata !222, metadata !"config", metadata !13, i32 16777299, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [config] [line 83]
!225 = metadata !{i32 786689, metadata !222, metadata !"convergence_level", metadata !13, i32 33554515, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [convergence_level] [line 83]
!226 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTKi_DummyArrayGroupSizeB", metadata !"CCTKi_DummyArrayGroupSizeB", metadata !"", i32 91, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct.cGH*, i32, i32, i8*)* @CCTKi_DummyArrayGroupSizeB, null, null, metadata !227, i32 91} ; [ DW_TAG_subprogram ] [line 91] [def] [CCTKi_DummyArrayGroupSizeB]
!227 = metadata !{metadata !228, metadata !229, metadata !230, metadata !231}
!228 = metadata !{i32 786689, metadata !226, metadata !"GH", metadata !13, i32 16777307, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 91]
!229 = metadata !{i32 786689, metadata !226, metadata !"dir", metadata !13, i32 33554523, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dir] [line 91]
!230 = metadata !{i32 786689, metadata !226, metadata !"group", metadata !13, i32 50331739, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 91]
!231 = metadata !{i32 786689, metadata !226, metadata !"groupname", metadata !13, i32 67108955, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [groupname] [line 91]
!232 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTKi_DummyQueryGroupStorageB", metadata !"CCTKi_DummyQueryGroupStorageB", metadata !"", i32 99, metadata !153, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i8*)* @CCTKi_DummyQueryGroupStorageB, null, null, metadata !233, i32 99} ; [ DW_TAG_subprogram ] [line 99] [def] [CCTKi_DummyQueryGroupStorageB]
!233 = metadata !{metadata !234, metadata !235, metadata !236}
!234 = metadata !{i32 786689, metadata !232, metadata !"GH", metadata !13, i32 16777315, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 99]
!235 = metadata !{i32 786689, metadata !232, metadata !"group", metadata !13, i32 33554531, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 99]
!236 = metadata !{i32 786689, metadata !232, metadata !"groupname", metadata !13, i32 50331747, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [groupname] [line 99]
!237 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTKi_DummyGroupDynamicData", metadata !"CCTKi_DummyGroupDynamicData", metadata !"", i32 107, metadata !162, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)* @CCTKi_DummyGroupDynamicData, null, null, metadata !238, i32 107} ; [ DW_TAG_subprogram ] [line 107] [def] [CCTKi_DummyGroupDynamicData]
!238 = metadata !{metadata !239, metadata !240, metadata !241}
!239 = metadata !{i32 786689, metadata !237, metadata !"GH", metadata !13, i32 16777323, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 107]
!240 = metadata !{i32 786689, metadata !237, metadata !"group", metadata !13, i32 33554539, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 107]
!241 = metadata !{i32 786689, metadata !237, metadata !"data", metadata !13, i32 50331755, metadata !164, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 107]
!242 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_nprocs_", metadata !"cctk_nprocs_", metadata !"", i32 136, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @cctk_nprocs_, null, null, metadata !243, i32 137} ; [ DW_TAG_subprogram ] [line 136] [def] [scope 137] [cctk_nprocs_]
!243 = metadata !{metadata !244}
!244 = metadata !{i32 786689, metadata !242, metadata !"GH", metadata !5, i32 16777352, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 136]
!245 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_myproc_", metadata !"cctk_myproc_", metadata !"", i32 141, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @cctk_myproc_, null, null, metadata !246, i32 142} ; [ DW_TAG_subprogram ] [line 141] [def] [scope 142] [cctk_myproc_]
!246 = metadata !{metadata !247}
!247 = metadata !{i32 786689, metadata !245, metadata !"GH", metadata !5, i32 16777357, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 141]
!248 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_barrier_", metadata !"cctk_barrier_", metadata !"", i32 146, metadata !249, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*)* @cctk_barrier_, null, null, metadata !251, i32 147} ; [ DW_TAG_subprogram ] [line 146] [def] [scope 147] [cctk_barrier_]
!249 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !250, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!250 = metadata !{null, metadata !28, metadata !83}
!251 = metadata !{metadata !252, metadata !253}
!252 = metadata !{i32 786689, metadata !248, metadata !"ierror", metadata !5, i32 16777362, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierror] [line 146]
!253 = metadata !{i32 786689, metadata !248, metadata !"GH", metadata !5, i32 33554578, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 146]
!254 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_exit_", metadata !"cctk_exit_", metadata !"", i32 151, metadata !255, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*)* @cctk_exit_, null, null, metadata !257, i32 152} ; [ DW_TAG_subprogram ] [line 151] [def] [scope 152] [cctk_exit_]
!255 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!256 = metadata !{null, metadata !28, metadata !20, metadata !144}
!257 = metadata !{metadata !258, metadata !259, metadata !260}
!258 = metadata !{i32 786689, metadata !254, metadata !"ierror", metadata !5, i32 16777367, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierror] [line 151]
!259 = metadata !{i32 786689, metadata !254, metadata !"GH", metadata !5, i32 33554583, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 151]
!260 = metadata !{i32 786689, metadata !254, metadata !"retval", metadata !5, i32 50331799, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [retval] [line 151]
!261 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_abort_", metadata !"cctk_abort_", metadata !"", i32 156, metadata !255, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*)* @cctk_abort_, null, null, metadata !262, i32 157} ; [ DW_TAG_subprogram ] [line 156] [def] [scope 157] [cctk_abort_]
!262 = metadata !{metadata !263, metadata !264, metadata !265}
!263 = metadata !{i32 786689, metadata !261, metadata !"ierror", metadata !5, i32 16777372, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierror] [line 156]
!264 = metadata !{i32 786689, metadata !261, metadata !"GH", metadata !5, i32 33554588, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 156]
!265 = metadata !{i32 786689, metadata !261, metadata !"retval", metadata !5, i32 50331804, metadata !144, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [retval] [line 156]
!266 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_syncgroup_", metadata !"cctk_syncgroup_", metadata !"", i32 161, metadata !267, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i8*, i32)* @cctk_syncgroup_, null, null, metadata !269, i32 162} ; [ DW_TAG_subprogram ] [line 161] [def] [scope 162] [cctk_syncgroup_]
!267 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !268, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!268 = metadata !{null, metadata !28, metadata !20, metadata !130, metadata !134}
!269 = metadata !{metadata !270, metadata !271, metadata !272, metadata !273, metadata !274}
!270 = metadata !{i32 786689, metadata !266, metadata !"ierror", metadata !5, i32 16777377, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierror] [line 161]
!271 = metadata !{i32 786689, metadata !266, metadata !"GH", metadata !5, i32 33554593, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 161]
!272 = metadata !{i32 786689, metadata !266, metadata !"cctk_str1", metadata !5, i32 50331809, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 161]
!273 = metadata !{i32 786689, metadata !266, metadata !"cctk_strlen1", metadata !5, i32 67109025, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 161]
!274 = metadata !{i32 786688, metadata !266, metadata !"group_name", metadata !5, i32 163, metadata !130, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group_name] [line 163]
!275 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_enablegroupcomm_", metadata !"cctk_enablegroupcomm_", metadata !"", i32 168, metadata !267, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i8*, i32)* @cctk_enablegroupcomm_, null, null, metadata !276, i32 169} ; [ DW_TAG_subprogram ] [line 168] [def] [scope 169] [cctk_enablegroupcomm_]
!276 = metadata !{metadata !277, metadata !278, metadata !279, metadata !280, metadata !281}
!277 = metadata !{i32 786689, metadata !275, metadata !"ierror", metadata !5, i32 16777384, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierror] [line 168]
!278 = metadata !{i32 786689, metadata !275, metadata !"GH", metadata !5, i32 33554600, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 168]
!279 = metadata !{i32 786689, metadata !275, metadata !"cctk_str1", metadata !5, i32 50331816, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 168]
!280 = metadata !{i32 786689, metadata !275, metadata !"cctk_strlen1", metadata !5, i32 67109032, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 168]
!281 = metadata !{i32 786688, metadata !275, metadata !"group_name", metadata !5, i32 170, metadata !130, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group_name] [line 170]
!282 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_disablegroupcomm_", metadata !"cctk_disablegroupcomm_", metadata !"", i32 175, metadata !267, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i8*, i32)* @cctk_disablegroupcomm_, null, null, metadata !283, i32 176} ; [ DW_TAG_subprogram ] [line 175] [def] [scope 176] [cctk_disablegroupcomm_]
!283 = metadata !{metadata !284, metadata !285, metadata !286, metadata !287, metadata !288}
!284 = metadata !{i32 786689, metadata !282, metadata !"ierror", metadata !5, i32 16777391, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierror] [line 175]
!285 = metadata !{i32 786689, metadata !282, metadata !"GH", metadata !5, i32 33554607, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 175]
!286 = metadata !{i32 786689, metadata !282, metadata !"cctk_str1", metadata !5, i32 50331823, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 175]
!287 = metadata !{i32 786689, metadata !282, metadata !"cctk_strlen1", metadata !5, i32 67109039, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 175]
!288 = metadata !{i32 786688, metadata !282, metadata !"group_name", metadata !5, i32 177, metadata !130, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group_name] [line 177]
!289 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_enablegroupstorage_", metadata !"cctk_enablegroupstorage_", metadata !"", i32 182, metadata !267, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i8*, i32)* @cctk_enablegroupstorage_, null, null, metadata !290, i32 183} ; [ DW_TAG_subprogram ] [line 182] [def] [scope 183] [cctk_enablegroupstorage_]
!290 = metadata !{metadata !291, metadata !292, metadata !293, metadata !294, metadata !295}
!291 = metadata !{i32 786689, metadata !289, metadata !"ierror", metadata !5, i32 16777398, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierror] [line 182]
!292 = metadata !{i32 786689, metadata !289, metadata !"GH", metadata !5, i32 33554614, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 182]
!293 = metadata !{i32 786689, metadata !289, metadata !"cctk_str1", metadata !5, i32 50331830, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 182]
!294 = metadata !{i32 786689, metadata !289, metadata !"cctk_strlen1", metadata !5, i32 67109046, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 182]
!295 = metadata !{i32 786688, metadata !289, metadata !"group_name", metadata !5, i32 184, metadata !130, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group_name] [line 184]
!296 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_disablegroupstorage_", metadata !"cctk_disablegroupstorage_", metadata !"", i32 189, metadata !267, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i8*, i32)* @cctk_disablegroupstorage_, null, null, metadata !297, i32 190} ; [ DW_TAG_subprogram ] [line 189] [def] [scope 190] [cctk_disablegroupstorage_]
!297 = metadata !{metadata !298, metadata !299, metadata !300, metadata !301, metadata !302}
!298 = metadata !{i32 786689, metadata !296, metadata !"ierror", metadata !5, i32 16777405, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierror] [line 189]
!299 = metadata !{i32 786689, metadata !296, metadata !"GH", metadata !5, i32 33554621, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 189]
!300 = metadata !{i32 786689, metadata !296, metadata !"cctk_str1", metadata !5, i32 50331837, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 189]
!301 = metadata !{i32 786689, metadata !296, metadata !"cctk_strlen1", metadata !5, i32 67109053, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 189]
!302 = metadata !{i32 786688, metadata !296, metadata !"group_name", metadata !5, i32 191, metadata !130, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group_name] [line 191]
!303 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_querygroupstorage_", metadata !"cctk_querygroupstorage_", metadata !"", i32 196, metadata !304, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i8*, i32)* @cctk_querygroupstorage_, null, null, metadata !306, i32 197} ; [ DW_TAG_subprogram ] [line 196] [def] [scope 197] [cctk_querygroupstorage_]
!304 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !305, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!305 = metadata !{null, metadata !28, metadata !83, metadata !130, metadata !134}
!306 = metadata !{metadata !307, metadata !308, metadata !309, metadata !310, metadata !311}
!307 = metadata !{i32 786689, metadata !303, metadata !"ierror", metadata !5, i32 16777412, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierror] [line 196]
!308 = metadata !{i32 786689, metadata !303, metadata !"GH", metadata !5, i32 33554628, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 196]
!309 = metadata !{i32 786689, metadata !303, metadata !"cctk_str1", metadata !5, i32 50331844, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 196]
!310 = metadata !{i32 786689, metadata !303, metadata !"cctk_strlen1", metadata !5, i32 67109060, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 196]
!311 = metadata !{i32 786688, metadata !303, metadata !"group_name", metadata !5, i32 199, metadata !130, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [group_name] [line 199]
!312 = metadata !{metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343}
!313 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_SyncGroup", metadata !"CCTK_SyncGroup", metadata !"", metadata !13, i32 46, metadata !17, i32 0, i32 1, i32 (%struct.cGH*, i8*)** @CCTK_SyncGroup, null} ; [ DW_TAG_variable ] [CCTK_SyncGroup] [line 46] [def]
!314 = metadata !{i32 786484, i32 0, metadata !11, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 46, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadSyncGroup.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 46] [local] [def]
!315 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_EnableGroupStorage", metadata !"CCTK_EnableGroupStorage", metadata !"", metadata !13, i32 48, metadata !17, i32 0, i32 1, i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupStorage, null} ; [ DW_TAG_variable ] [CCTK_EnableGroupStorage] [line 48] [def]
!316 = metadata !{i32 786484, i32 0, metadata !61, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 48, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadEnableGroupStorage.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 48] [local] [def]
!317 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_DisableGroupStorage", metadata !"CCTK_DisableGroupStorage", metadata !"", metadata !13, i32 49, metadata !17, i32 0, i32 1, i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupStorage, null} ; [ DW_TAG_variable ] [CCTK_DisableGroupStorage] [line 49] [def]
!318 = metadata !{i32 786484, i32 0, metadata !65, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 49, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadDisableGroupStorage.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 49] [local] [def]
!319 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_EnableGroupComm", metadata !"CCTK_EnableGroupComm", metadata !"", metadata !13, i32 51, metadata !17, i32 0, i32 1, i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupComm, null} ; [ DW_TAG_variable ] [CCTK_EnableGroupComm] [line 51] [def]
!320 = metadata !{i32 786484, i32 0, metadata !69, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 51, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadEnableGroupComm.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 51] [local] [def]
!321 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_DisableGroupComm", metadata !"CCTK_DisableGroupComm", metadata !"", metadata !13, i32 52, metadata !17, i32 0, i32 1, i32 (%struct.cGH*, i8*)** @CCTK_DisableGroupComm, null} ; [ DW_TAG_variable ] [CCTK_DisableGroupComm] [line 52] [def]
!322 = metadata !{i32 786484, i32 0, metadata !73, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 52, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadDisableGroupComm.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 52] [local] [def]
!323 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_Barrier", metadata !"CCTK_Barrier", metadata !"", metadata !13, i32 58, metadata !80, i32 0, i32 1, i32 (%struct.cGH*)** @CCTK_Barrier, null} ; [ DW_TAG_variable ] [CCTK_Barrier] [line 58] [def]
!324 = metadata !{i32 786484, i32 0, metadata !77, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 58, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadBarrier.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 58] [local] [def]
!325 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_MyProc", metadata !"CCTK_MyProc", metadata !"", metadata !13, i32 59, metadata !80, i32 0, i32 1, i32 (%struct.cGH*)** @CCTK_MyProc, null} ; [ DW_TAG_variable ] [CCTK_MyProc] [line 59] [def]
!326 = metadata !{i32 786484, i32 0, metadata !88, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 59, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadMyProc.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 59] [local] [def]
!327 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_nProcs", metadata !"CCTK_nProcs", metadata !"", metadata !13, i32 60, metadata !80, i32 0, i32 1, i32 (%struct.cGH*)** @CCTK_nProcs, null} ; [ DW_TAG_variable ] [CCTK_nProcs] [line 60] [def]
!328 = metadata !{i32 786484, i32 0, metadata !92, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 60, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadnProcs.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 60] [local] [def]
!329 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_ParallelInit", metadata !"CCTK_ParallelInit", metadata !"", metadata !13, i32 66, metadata !99, i32 0, i32 1, i32 (%struct.cGH*)** @CCTK_ParallelInit, null} ; [ DW_TAG_variable ] [CCTK_ParallelInit] [line 66] [def]
!330 = metadata !{i32 786484, i32 0, metadata !96, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 66, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadParallelInit.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 66] [local] [def]
!331 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_Exit", metadata !"CCTK_Exit", metadata !"", metadata !13, i32 74, metadata !108, i32 0, i32 1, i32 (%struct.cGH*, i32)** @CCTK_Exit, null} ; [ DW_TAG_variable ] [CCTK_Exit] [line 74] [def]
!332 = metadata !{i32 786484, i32 0, metadata !105, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 74, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadExit.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 74] [local] [def]
!333 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_Abort", metadata !"CCTK_Abort", metadata !"", metadata !13, i32 75, metadata !108, i32 0, i32 1, i32 (%struct.cGH*, i32)** @CCTK_Abort, null} ; [ DW_TAG_variable ] [CCTK_Abort] [line 75] [def]
!334 = metadata !{i32 786484, i32 0, metadata !114, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 75, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadAbort.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 75] [local] [def]
!335 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_SetupGH", metadata !"CCTK_SetupGH", metadata !"", metadata !13, i32 83, metadata !121, i32 0, i32 1, %struct.cGH* (%struct.tFleshConfig*, i32)** @CCTK_SetupGH, null} ; [ DW_TAG_variable ] [CCTK_SetupGH] [line 83] [def]
!336 = metadata !{i32 786484, i32 0, metadata !118, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 83, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadSetupGH.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 83] [local] [def]
!337 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_ArrayGroupSizeB", metadata !"CCTK_ArrayGroupSizeB", metadata !"", metadata !13, i32 91, metadata !141, i32 0, i32 1, i32* (%struct.cGH*, i32, i32, i8*)** @CCTK_ArrayGroupSizeB, null} ; [ DW_TAG_variable ] [CCTK_ArrayGroupSizeB] [line 91] [def]
!338 = metadata !{i32 786484, i32 0, metadata !138, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 91, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadArrayGroupSizeB.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 91] [local] [def]
!339 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_QueryGroupStorageB", metadata !"CCTK_QueryGroupStorageB", metadata !"", metadata !13, i32 99, metadata !152, i32 0, i32 1, i32 (%struct.cGH*, i32, i8*)** @CCTK_QueryGroupStorageB, null} ; [ DW_TAG_variable ] [CCTK_QueryGroupStorageB] [line 99] [def]
!340 = metadata !{i32 786484, i32 0, metadata !149, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 99, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadQueryGroupStorageB.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 99] [local] [def]
!341 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_GroupDynamicData", metadata !"CCTK_GroupDynamicData", metadata !"", metadata !13, i32 107, metadata !161, i32 0, i32 1, i32 (%struct.cGH*, i32, %struct.GROUPDYNAMICDATA*)** @CCTK_GroupDynamicData, null} ; [ DW_TAG_variable ] [CCTK_GroupDynamicData] [line 107] [def]
!342 = metadata !{i32 786484, i32 0, metadata !158, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 107, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadGroupDynamicData.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 107] [local] [def]
!343 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 25, metadata !8, i32 1, i32 1, null, null}
!344 = metadata !{i32 26, i32 0, metadata !4, null}
!345 = metadata !{i32 46, i32 0, metadata !11, null}
!346 = metadata !{i32 46, i32 0, metadata !60, null}
!347 = metadata !{i32 46, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !12, metadata !60, i32 46, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!349 = metadata !{metadata !"int", metadata !350}
!350 = metadata !{metadata !"omnipotent char", metadata !351}
!351 = metadata !{metadata !"Simple C/C++ TBAA"}
!352 = metadata !{i32 46, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !12, metadata !348, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!354 = metadata !{metadata !"any pointer", metadata !350}
!355 = metadata !{i32 46, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !12, metadata !348, i32 46, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!357 = metadata !{i32 48, i32 0, metadata !61, null}
!358 = metadata !{i32 48, i32 0, metadata !359, null}
!359 = metadata !{i32 786443, metadata !12, metadata !61, i32 48, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!360 = metadata !{i32 48, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !12, metadata !359, i32 48, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!362 = metadata !{i32 48, i32 0, metadata !363, null}
!363 = metadata !{i32 786443, metadata !12, metadata !359, i32 48, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!364 = metadata !{i32 49, i32 0, metadata !65, null}
!365 = metadata !{i32 49, i32 0, metadata !366, null}
!366 = metadata !{i32 786443, metadata !12, metadata !65, i32 49, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!367 = metadata !{i32 49, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !12, metadata !366, i32 49, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!369 = metadata !{i32 49, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !12, metadata !366, i32 49, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!371 = metadata !{i32 51, i32 0, metadata !69, null}
!372 = metadata !{i32 51, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !12, metadata !69, i32 51, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!374 = metadata !{i32 51, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !12, metadata !373, i32 51, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!376 = metadata !{i32 51, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !12, metadata !373, i32 51, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!378 = metadata !{i32 52, i32 0, metadata !73, null}
!379 = metadata !{i32 52, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !12, metadata !73, i32 52, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!381 = metadata !{i32 52, i32 0, metadata !382, null}
!382 = metadata !{i32 786443, metadata !12, metadata !380, i32 52, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!383 = metadata !{i32 52, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !12, metadata !380, i32 52, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!385 = metadata !{i32 58, i32 0, metadata !77, null} ; [ DW_TAG_imported_module ]
!386 = metadata !{i32 58, i32 0, metadata !387, null} ; [ DW_TAG_imported_module ]
!387 = metadata !{i32 786443, metadata !12, metadata !77, i32 58, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!388 = metadata !{i32 58, i32 0, metadata !389, null} ; [ DW_TAG_imported_module ]
!389 = metadata !{i32 786443, metadata !12, metadata !387, i32 58, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!390 = metadata !{i32 58, i32 0, metadata !391, null} ; [ DW_TAG_imported_module ]
!391 = metadata !{i32 786443, metadata !12, metadata !387, i32 58, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!392 = metadata !{i32 59, i32 0, metadata !88, null}
!393 = metadata !{i32 59, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !12, metadata !88, i32 59, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!395 = metadata !{i32 59, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !12, metadata !394, i32 59, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!397 = metadata !{i32 59, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !12, metadata !394, i32 59, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!399 = metadata !{i32 60, i32 0, metadata !92, null}
!400 = metadata !{i32 60, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !12, metadata !92, i32 60, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!402 = metadata !{i32 60, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !12, metadata !401, i32 60, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!404 = metadata !{i32 60, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !12, metadata !401, i32 60, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!406 = metadata !{i32 66, i32 0, metadata !96, null}
!407 = metadata !{i32 66, i32 0, metadata !408, null}
!408 = metadata !{i32 786443, metadata !12, metadata !96, i32 66, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!409 = metadata !{i32 66, i32 0, metadata !410, null}
!410 = metadata !{i32 786443, metadata !12, metadata !408, i32 66, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!411 = metadata !{i32 66, i32 0, metadata !412, null}
!412 = metadata !{i32 786443, metadata !12, metadata !408, i32 66, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!413 = metadata !{i32 74, i32 0, metadata !105, null}
!414 = metadata !{i32 74, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !12, metadata !105, i32 74, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!416 = metadata !{i32 74, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !12, metadata !415, i32 74, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!418 = metadata !{i32 74, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !12, metadata !415, i32 74, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!420 = metadata !{i32 75, i32 0, metadata !114, null}
!421 = metadata !{i32 75, i32 0, metadata !422, null}
!422 = metadata !{i32 786443, metadata !12, metadata !114, i32 75, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!423 = metadata !{i32 75, i32 0, metadata !424, null}
!424 = metadata !{i32 786443, metadata !12, metadata !422, i32 75, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!425 = metadata !{i32 75, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !12, metadata !422, i32 75, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!427 = metadata !{i32 83, i32 0, metadata !118, null}
!428 = metadata !{i32 83, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !12, metadata !118, i32 83, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!430 = metadata !{i32 83, i32 0, metadata !431, null}
!431 = metadata !{i32 786443, metadata !12, metadata !429, i32 83, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!432 = metadata !{i32 83, i32 0, metadata !433, null}
!433 = metadata !{i32 786443, metadata !12, metadata !429, i32 83, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!434 = metadata !{i32 91, i32 0, metadata !138, null}
!435 = metadata !{i32 91, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !12, metadata !138, i32 91, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!437 = metadata !{i32 91, i32 0, metadata !438, null}
!438 = metadata !{i32 786443, metadata !12, metadata !436, i32 91, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!439 = metadata !{i32 91, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !12, metadata !436, i32 91, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!441 = metadata !{i32 99, i32 0, metadata !149, null}
!442 = metadata !{i32 99, i32 0, metadata !443, null}
!443 = metadata !{i32 786443, metadata !12, metadata !149, i32 99, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!444 = metadata !{i32 99, i32 0, metadata !445, null}
!445 = metadata !{i32 786443, metadata !12, metadata !443, i32 99, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!446 = metadata !{i32 99, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !12, metadata !443, i32 99, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!448 = metadata !{i32 107, i32 0, metadata !158, null}
!449 = metadata !{i32 107, i32 0, metadata !450, null}
!450 = metadata !{i32 786443, metadata !12, metadata !158, i32 107, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!451 = metadata !{i32 107, i32 0, metadata !452, null}
!452 = metadata !{i32 786443, metadata !12, metadata !450, i32 107, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!453 = metadata !{i32 107, i32 0, metadata !454, null}
!454 = metadata !{i32 786443, metadata !12, metadata !450, i32 107, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!455 = metadata !{i32 46, i32 0, metadata !456, null}
!456 = metadata !{i32 786443, metadata !12, metadata !179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!457 = metadata !{i32 48, i32 0, metadata !456, null}
!458 = metadata !{i32 49, i32 0, metadata !456, null}
!459 = metadata !{i32 51, i32 0, metadata !456, null}
!460 = metadata !{i32 52, i32 0, metadata !456, null}
!461 = metadata !{i32 58, i32 0, metadata !456, null} ; [ DW_TAG_imported_module ]
!462 = metadata !{i32 59, i32 0, metadata !456, null}
!463 = metadata !{i32 60, i32 0, metadata !456, null}
!464 = metadata !{i32 66, i32 0, metadata !456, null}
!465 = metadata !{i32 74, i32 0, metadata !456, null}
!466 = metadata !{i32 75, i32 0, metadata !456, null}
!467 = metadata !{i32 83, i32 0, metadata !456, null}
!468 = metadata !{i32 91, i32 0, metadata !456, null}
!469 = metadata !{i32 99, i32 0, metadata !456, null}
!470 = metadata !{i32 107, i32 0, metadata !456, null}
!471 = metadata !{i32 101, i32 0, metadata !472, null}
!472 = metadata !{i32 786443, metadata !1, metadata !179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadComm.c]
!473 = metadata !{i32 46, i32 0, metadata !182, null}
!474 = metadata !{i32 46, i32 0, metadata !475, null}
!475 = metadata !{i32 786443, metadata !12, metadata !182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/CommOverloadables.h]
!476 = metadata !{i32 48, i32 0, metadata !186, null}
!477 = metadata !{i32 49, i32 0, metadata !190, null}
!478 = metadata !{i32 51, i32 0, metadata !194, null}
!479 = metadata !{i32 52, i32 0, metadata !198, null}
!480 = metadata !{i32 66, i32 0, metadata !211, null}
!481 = metadata !{i32 91, i32 0, metadata !226, null}
!482 = metadata !{i32 99, i32 0, metadata !232, null}
!483 = metadata !{i32 107, i32 0, metadata !237, null}
!484 = metadata !{i32 58, i32 0, metadata !202, null} ; [ DW_TAG_imported_module ]
!485 = metadata !{i32 59, i32 0, metadata !205, null}
!486 = metadata !{i32 60, i32 0, metadata !208, null}
!487 = metadata !{i32 74, i32 0, metadata !214, null}
!488 = metadata !{i32 75, i32 0, metadata !218, null}
!489 = metadata !{i32 83, i32 0, metadata !222, null}
!490 = metadata !{i32 136, i32 0, metadata !242, null}
!491 = metadata !{i32 138, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !242} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadComm.c]
!493 = metadata !{i32 141, i32 0, metadata !245, null}
!494 = metadata !{i32 143, i32 0, metadata !245, null}
!495 = metadata !{i32 146, i32 0, metadata !248, null}
!496 = metadata !{i32 148, i32 0, metadata !248, null}
!497 = metadata !{i32 149, i32 0, metadata !248, null}
!498 = metadata !{i32 151, i32 0, metadata !254, null}
!499 = metadata !{i32 153, i32 0, metadata !254, null}
!500 = metadata !{i32 154, i32 0, metadata !254, null}
!501 = metadata !{i32 156, i32 0, metadata !261, null}
!502 = metadata !{i32 158, i32 0, metadata !261, null}
!503 = metadata !{i32 159, i32 0, metadata !261, null}
!504 = metadata !{i32 161, i32 0, metadata !266, null}
!505 = metadata !{i32 163, i32 0, metadata !266, null}
!506 = metadata !{i32 164, i32 0, metadata !266, null}
!507 = metadata !{i32 165, i32 0, metadata !266, null}
!508 = metadata !{i32 166, i32 0, metadata !266, null}
!509 = metadata !{i32 168, i32 0, metadata !275, null}
!510 = metadata !{i32 170, i32 0, metadata !275, null}
!511 = metadata !{i32 171, i32 0, metadata !275, null}
!512 = metadata !{i32 172, i32 0, metadata !275, null}
!513 = metadata !{i32 173, i32 0, metadata !275, null}
!514 = metadata !{i32 175, i32 0, metadata !282, null}
!515 = metadata !{i32 177, i32 0, metadata !282, null}
!516 = metadata !{i32 178, i32 0, metadata !282, null}
!517 = metadata !{i32 179, i32 0, metadata !282, null}
!518 = metadata !{i32 180, i32 0, metadata !282, null}
!519 = metadata !{i32 182, i32 0, metadata !289, null}
!520 = metadata !{i32 184, i32 0, metadata !289, null}
!521 = metadata !{i32 185, i32 0, metadata !289, null}
!522 = metadata !{i32 186, i32 0, metadata !289, null}
!523 = metadata !{i32 187, i32 0, metadata !289, null}
!524 = metadata !{i32 189, i32 0, metadata !296, null}
!525 = metadata !{i32 191, i32 0, metadata !296, null}
!526 = metadata !{i32 192, i32 0, metadata !296, null}
!527 = metadata !{i32 193, i32 0, metadata !296, null}
!528 = metadata !{i32 194, i32 0, metadata !296, null}
!529 = metadata !{i32 196, i32 0, metadata !303, null}
!530 = metadata !{i32 199, i32 0, metadata !303, null}
!531 = metadata !{i32 200, i32 0, metadata !303, null}
!532 = metadata !{i32 201, i32 0, metadata !303, null}
!533 = metadata !{i32 202, i32 0, metadata !303, null}
