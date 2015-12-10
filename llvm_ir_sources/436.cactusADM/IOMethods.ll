; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.IOMethod = type { i8*, i8*, i32 (%struct.cGH*)*, i32 (%struct.cGH*, i8*, i8*)*, i32 (%struct.cGH*, i32)*, i32 (%struct.cGH*, i32)* }

@IOMethods = internal global %struct.cHandledData* null, align 8
@num_methods = internal unnamed_addr global i32 0, align 4
@CCTK_OutputVarAsByMethod = external global i32 (%struct.cGH*, i8*, i8*, i8*)*
@.str = private unnamed_addr constant [78 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/IOMethods.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [88 x i8] c"CactusDefaultOutputVarAsByMethod: I/O method '%s' not found for output of variable '%s'\00", align 1
@.str3 = private unnamed_addr constant [83 x i8] c"$Header: /cactus/Cactus/src/IO/IOMethods.c,v 1.36 2001/12/30 13:12:06 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_IO_IOMethods_c() #0 {
  ret i8* getelementptr inbounds ([83 x i8]* @.str3, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_RegisterIOMethod(i8* %thorn, i8* %name) #1 {
  %1 = load %struct.cHandledData** @IOMethods, align 8, !tbaa !2
  %2 = tail call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %name, i8** null) #5
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %23

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @malloc(i64 48) #5
  %6 = icmp eq i8* %5, null
  br i1 %6, label %23, label %7

; <label>:7                                       ; preds = %4
  %8 = tail call i32 @Util_NewHandle(%struct.cHandledData** @IOMethods, i8* %name, i8* %5) #5
  %9 = tail call i8* @CCTK_ThornImplementation(i8* %thorn) #5
  %10 = bitcast i8* %5 to i8**
  store i8* %9, i8** %10, align 8, !tbaa !6
  %11 = getelementptr inbounds i8* %5, i64 8
  %12 = bitcast i8* %11 to i8**
  store i8* %name, i8** %12, align 8, !tbaa !8
  %13 = getelementptr inbounds i8* %5, i64 16
  %14 = bitcast i8* %13 to i32 (%struct.cGH*)**
  store i32 (%struct.cGH*)* @DummyOutputGH, i32 (%struct.cGH*)** %14, align 8, !tbaa !9
  %15 = getelementptr inbounds i8* %5, i64 24
  %16 = bitcast i8* %15 to i32 (%struct.cGH*, i8*, i8*)**
  store i32 (%struct.cGH*, i8*, i8*)* @DummyOutputVarAs, i32 (%struct.cGH*, i8*, i8*)** %16, align 8, !tbaa !10
  %17 = getelementptr inbounds i8* %5, i64 32
  %18 = bitcast i8* %17 to i32 (%struct.cGH*, i32)**
  store i32 (%struct.cGH*, i32)* @DummyTriggerOutput, i32 (%struct.cGH*, i32)** %18, align 8, !tbaa !11
  %19 = getelementptr inbounds i8* %5, i64 40
  %20 = bitcast i8* %19 to i32 (%struct.cGH*, i32)**
  store i32 (%struct.cGH*, i32)* @DummyTimeToOutput, i32 (%struct.cGH*, i32)** %20, align 8, !tbaa !12
  %21 = load i32* @num_methods, align 4, !tbaa !13
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @num_methods, align 4, !tbaa !13
  br label %23

; <label>:23                                      ; preds = %0, %4, %7
  %handle.0 = phi i32 [ %8, %7 ], [ -2, %4 ], [ -1, %0 ]
  ret i32 %handle.0
}

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #2

; Function Attrs: optsize
declare i8* @CCTK_ThornImplementation(i8*) #2

; Function Attrs: nounwind optsize readnone ssp uwtable
define internal i32 @DummyOutputGH(%struct.cGH* nocapture readnone %GH) #0 {
  ret i32 0
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define internal i32 @DummyOutputVarAs(%struct.cGH* nocapture readnone %GH, i8* nocapture readnone %var, i8* nocapture readnone %alias) #0 {
  ret i32 0
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define internal i32 @DummyTriggerOutput(%struct.cGH* nocapture readnone %GH, i32 %var) #0 {
  ret i32 0
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define internal i32 @DummyTimeToOutput(%struct.cGH* nocapture readnone %GH, i32 %var) #0 {
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RegisterIOMethodOutputGH(i32 %handle, i32 (%struct.cGH*)* %OutputGH) #1 {
  %1 = load %struct.cHandledData** @IOMethods, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #5
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %2, i64 16
  %6 = bitcast i8* %5 to i32 (%struct.cGH*)**
  store i32 (%struct.cGH*)* %OutputGH, i32 (%struct.cGH*)** %6, align 8, !tbaa !9
  br label %7

; <label>:7                                       ; preds = %4, %0
  %not. = xor i1 %3, true
  %8 = sext i1 %not. to i32
  ret i32 %8
}

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RegisterIOMethodOutputVarAs(i32 %handle, i32 (%struct.cGH*, i8*, i8*)* %OutputVarAs) #1 {
  %1 = load %struct.cHandledData** @IOMethods, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #5
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %2, i64 24
  %6 = bitcast i8* %5 to i32 (%struct.cGH*, i8*, i8*)**
  store i32 (%struct.cGH*, i8*, i8*)* %OutputVarAs, i32 (%struct.cGH*, i8*, i8*)** %6, align 8, !tbaa !10
  br label %7

; <label>:7                                       ; preds = %4, %0
  %not. = xor i1 %3, true
  %8 = sext i1 %not. to i32
  ret i32 %8
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RegisterIOMethodTriggerOutput(i32 %handle, i32 (%struct.cGH*, i32)* %TriggerOutput) #1 {
  %1 = load %struct.cHandledData** @IOMethods, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #5
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %2, i64 32
  %6 = bitcast i8* %5 to i32 (%struct.cGH*, i32)**
  store i32 (%struct.cGH*, i32)* %TriggerOutput, i32 (%struct.cGH*, i32)** %6, align 8, !tbaa !11
  br label %7

; <label>:7                                       ; preds = %4, %0
  %8 = zext i1 %3 to i32
  ret i32 %8
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RegisterIOMethodTimeToOutput(i32 %handle, i32 (%struct.cGH*, i32)* %TimeToOutput) #1 {
  %1 = load %struct.cHandledData** @IOMethods, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #5
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %2, i64 40
  %6 = bitcast i8* %5 to i32 (%struct.cGH*, i32)**
  store i32 (%struct.cGH*, i32)* %TimeToOutput, i32 (%struct.cGH*, i32)** %6, align 8, !tbaa !12
  br label %7

; <label>:7                                       ; preds = %4, %0
  %not. = xor i1 %3, true
  %8 = sext i1 %not. to i32
  ret i32 %8
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OutputVarAs(%struct.cGH* %GH, i8* %var, i8* %alias) #1 {
  %1 = load i32* @num_methods, align 4, !tbaa !13
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %0, %13
  %handle.02 = phi i32 [ %14, %13 ], [ 0, %0 ]
  %retval.01 = phi i32 [ %retval.1, %13 ], [ 0, %0 ]
  %3 = load %struct.cHandledData** @IOMethods, align 8, !tbaa !2
  %4 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %3, i32 %handle.02) #5
  %5 = icmp eq i8* %4, null
  br i1 %5, label %13, label %6

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds i8* %4, i64 24
  %8 = bitcast i8* %7 to i32 (%struct.cGH*, i8*, i8*)**
  %9 = load i32 (%struct.cGH*, i8*, i8*)** %8, align 8, !tbaa !10
  %10 = tail call i32 %9(%struct.cGH* %GH, i8* %var, i8* %alias) #5
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %.retval.0 = add nsw i32 %12, %retval.01
  br label %13

; <label>:13                                      ; preds = %6, %.lr.ph
  %retval.1 = phi i32 [ %retval.01, %.lr.ph ], [ %.retval.0, %6 ]
  %14 = add nuw nsw i32 %handle.02, 1
  %15 = load i32* @num_methods, align 4, !tbaa !13
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %13, %0
  %retval.2 = phi i32 [ -1, %0 ], [ %retval.1, %13 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OutputVar(%struct.cGH* %GH, i8* %var) #1 {
  %1 = tail call i32 @CCTK_OutputVarAs(%struct.cGH* %GH, i8* %var, i8* %var) #6
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_OutputVarByMethod(%struct.cGH* %GH, i8* %var, i8* %method) #1 {
  %1 = load i32 (%struct.cGH*, i8*, i8*, i8*)** @CCTK_OutputVarAsByMethod, align 8, !tbaa !2
  %2 = tail call i32 %1(%struct.cGH* %GH, i8* %var, i8* %method, i8* %var) #5
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_outputvarbymethod_(i32* nocapture %ierr, %struct.cGH* %GH, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5
  %3 = load i32 (%struct.cGH*, i8*, i8*, i8*)** @CCTK_OutputVarAsByMethod, align 8, !tbaa !2
  %4 = tail call i32 %3(%struct.cGH* %GH, i8* %1, i8* %2, i8* %1) #5
  store i32 %4, i32* %ierr, align 4, !tbaa !13
  tail call void @free(i8* %1) #6
  tail call void @free(i8* %2) #6
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CCTK_NumIOMethods() #4 {
  %1 = load i32* @num_methods, align 4, !tbaa !13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_IOMethodImplementation(i32 %handle) #1 {
  %1 = load %struct.cHandledData** @IOMethods, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #5
  %3 = icmp eq i8* %2, null
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to i8**
  %6 = load i8** %5, align 8, !tbaa !6
  br label %7

; <label>:7                                       ; preds = %0, %4
  %8 = phi i8* [ %6, %4 ], [ null, %0 ]
  ret i8* %8
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_IOMethod(i32 %handle) #1 {
  %1 = load %struct.cHandledData** @IOMethods, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #5
  %3 = icmp eq i8* %2, null
  br i1 %3, label %8, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %2, i64 8
  %6 = bitcast i8* %5 to i8**
  %7 = load i8** %6, align 8, !tbaa !8
  br label %8

; <label>:8                                       ; preds = %0, %4
  %9 = phi i8* [ %7, %4 ], [ null, %0 ]
  ret i8* %9
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusDefaultOutputGH(%struct.cGH* %GH) #1 {
  %1 = load i32* @num_methods, align 4, !tbaa !13
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %0, %12
  %handle.02 = phi i32 [ %13, %12 ], [ 0, %0 ]
  %retval.01 = phi i32 [ %retval.1, %12 ], [ 0, %0 ]
  %3 = load %struct.cHandledData** @IOMethods, align 8, !tbaa !2
  %4 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %3, i32 %handle.02) #5
  %5 = icmp eq i8* %4, null
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds i8* %4, i64 16
  %8 = bitcast i8* %7 to i32 (%struct.cGH*)**
  %9 = load i32 (%struct.cGH*)** %8, align 8, !tbaa !9
  %10 = tail call i32 %9(%struct.cGH* %GH) #5
  %11 = add nsw i32 %10, %retval.01
  br label %12

; <label>:12                                      ; preds = %.lr.ph, %6
  %retval.1 = phi i32 [ %11, %6 ], [ %retval.01, %.lr.ph ]
  %13 = add nuw nsw i32 %handle.02, 1
  %14 = load i32* @num_methods, align 4, !tbaa !13
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %12, %0
  %retval.2 = phi i32 [ -1, %0 ], [ %retval.1, %12 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusDefaultOutputVarAsByMethod(%struct.cGH* %GH, i8* %var, i8* %methodname, i8* %alias) #1 {
  %method = alloca %struct.IOMethod*, align 8
  %1 = load %struct.cHandledData** @IOMethods, align 8, !tbaa !2
  %2 = bitcast %struct.IOMethod** %method to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %methodname, i8** %2) #5
  %4 = load %struct.IOMethod** %method, align 8, !tbaa !2
  %5 = icmp eq %struct.IOMethod* %4, null
  br i1 %5, label %10, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.IOMethod* %4, i64 0, i32 3
  %8 = load i32 (%struct.cGH*, i8*, i8*)** %7, align 8, !tbaa !10
  %9 = call i32 %8(%struct.cGH* %GH, i8* %var, i8* %alias) #5
  br label %12

; <label>:10                                      ; preds = %0
  %11 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 8, i32 730, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([88 x i8]* @.str2, i64 0, i64 0), i8* %methodname, i8* %var) #5
  br label %12

; <label>:12                                      ; preds = %10, %6
  %retval.0 = phi i32 [ %9, %6 ], [ -1, %10 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_outputvarasbymethod_(i32* nocapture %ierr, %struct.cGH* %GH, i8* %cctk_str1, i8* %cctk_str2, i8* %cctk_str3, i32 %cctk_strlen1, i32 %cctk_strlen2, i32 %cctk_strlen3) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5
  %3 = tail call i8* @Util_NullTerminateString(i8* %cctk_str3, i32 %cctk_strlen3) #5
  %4 = load i32 (%struct.cGH*, i8*, i8*, i8*)** @CCTK_OutputVarAsByMethod, align 8, !tbaa !2
  %5 = tail call i32 %4(%struct.cGH* %GH, i8* %1, i8* %2, i8* %3) #5
  store i32 %5, i32* %ierr, align 4, !tbaa !13
  tail call void @free(i8* %1) #6
  tail call void @free(i8* %2) #6
  tail call void @free(i8* %3) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_TriggerSaysGo(%struct.cGH* %GH, i32 %variable) #1 {
  %1 = load i32* @num_methods, align 4, !tbaa !13
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %12
  %handle.01 = phi i32 [ %13, %12 ], [ 0, %0 ]
  %3 = load %struct.cHandledData** @IOMethods, align 8, !tbaa !2
  %4 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %3, i32 %handle.01) #5
  %5 = icmp eq i8* %4, null
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds i8* %4, i64 40
  %8 = bitcast i8* %7 to i32 (%struct.cGH*, i32)**
  %9 = load i32 (%struct.cGH*, i32)** %8, align 8, !tbaa !12
  %10 = tail call i32 %9(%struct.cGH* %GH, i32 %variable) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %._crit_edge

; <label>:12                                      ; preds = %6, %.lr.ph
  %13 = add nuw nsw i32 %handle.01, 1
  %14 = load i32* @num_methods, align 4, !tbaa !13
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %6, %12, %0
  %.0 = phi i32 [ 0, %0 ], [ 1, %6 ], [ 0, %12 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_TriggerAction(i8* %GH, i32 %variable) #1 {
  %1 = load i32* @num_methods, align 4, !tbaa !13
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %3 = bitcast i8* %GH to %struct.cGH*
  br label %4

; <label>:4                                       ; preds = %.lr.ph, %20
  %handle.02 = phi i32 [ 0, %.lr.ph ], [ %21, %20 ]
  %nmethods.01 = phi i32 [ 0, %.lr.ph ], [ %nmethods.1, %20 ]
  %5 = load %struct.cHandledData** @IOMethods, align 8, !tbaa !2
  %6 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %5, i32 %handle.02) #5
  %7 = icmp eq i8* %6, null
  br i1 %7, label %20, label %8

; <label>:8                                       ; preds = %4
  %9 = getelementptr inbounds i8* %6, i64 40
  %10 = bitcast i8* %9 to i32 (%struct.cGH*, i32)**
  %11 = load i32 (%struct.cGH*, i32)** %10, align 8, !tbaa !12
  %12 = tail call i32 %11(%struct.cGH* %3, i32 %variable) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

; <label>:14                                      ; preds = %8
  %15 = getelementptr inbounds i8* %6, i64 32
  %16 = bitcast i8* %15 to i32 (%struct.cGH*, i32)**
  %17 = load i32 (%struct.cGH*, i32)** %16, align 8, !tbaa !11
  %18 = tail call i32 %17(%struct.cGH* %3, i32 %variable) #5
  %19 = add nsw i32 %nmethods.01, 1
  br label %20

; <label>:20                                      ; preds = %8, %4, %14
  %nmethods.1 = phi i32 [ %19, %14 ], [ %nmethods.01, %8 ], [ %nmethods.01, %4 ]
  %21 = add nuw nsw i32 %handle.02, 1
  %22 = load i32* @num_methods, align 4, !tbaa !13
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %20, %0
  %nmethods.0.lcssa = phi i32 [ 0, %0 ], [ %nmethods.1, %20 ]
  ret i32 %nmethods.0.lcssa
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
!6 = !{!7, !3, i64 0}
!7 = !{!"IOMethod", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40}
!8 = !{!7, !3, i64 8}
!9 = !{!7, !3, i64 16}
!10 = !{!7, !3, i64 24}
!11 = !{!7, !3, i64 32}
!12 = !{!7, !3, i64 40}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !4, i64 0}
