; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cFunctionData = type { i32, i32 (%struct.cGH*, i8*)*, i32, i32, i32*, i32, i32, i32*, i8*, i8*, i8* }

@GHExtensions = internal global %struct.cHandledData* null, align 8
@num_extensions = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"$Header: /cactus/Cactus/src/main/GHExtensions.c,v 1.27 2001/07/04 13:20:29 tradke Exp $\00", align 1
@.str1 = private unnamed_addr constant [81 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/GHExtensions.c\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"GH Extension '%s' has not registered a SetupGH routine\00", align 1
@.str4 = private unnamed_addr constant [54 x i8] c"GH Extension '%s' has not registered a InitGH routine\00", align 1
@.str5 = private unnamed_addr constant [64 x i8] c"GH Extension '%s' has not registered a ScheduleTraverse routine\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_GHExtensions_c() #0 {
  ret i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RegisterGHExtension(i8* %name) #1 {
  %1 = load %struct.cHandledData** @GHExtensions, align 8, !tbaa !2
  %2 = tail call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %name, i8** null) #5
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %11

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @malloc(i64 24) #5
  %6 = icmp eq i8* %5, null
  br i1 %6, label %11, label %7

; <label>:7                                       ; preds = %4
  %8 = tail call i32 @Util_NewHandle(%struct.cHandledData** @GHExtensions, i8* %name, i8* %5) #5
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 24, i32 8, i1 false)
  %9 = load i32* @num_extensions, align 4, !tbaa !6
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @num_extensions, align 4, !tbaa !6
  br label %11

; <label>:11                                      ; preds = %0, %4, %7
  %handle.0 = phi i32 [ %8, %7 ], [ -2, %4 ], [ -1, %0 ]
  ret i32 %handle.0
}

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_UnregisterGHExtension(i8* %name) #1 {
  %extension = alloca i8*, align 8
  %1 = load %struct.cHandledData** @GHExtensions, align 8, !tbaa !2
  %2 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %name, i8** %extension) #5
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %12

; <label>:4                                       ; preds = %0
  %5 = load %struct.cHandledData** @GHExtensions, align 8, !tbaa !2
  %6 = call i32 @Util_DeleteHandle(%struct.cHandledData* %5, i32 %2) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %4
  %9 = load i8** %extension, align 8, !tbaa !2
  call void @free(i8* %9) #6
  %10 = load i32* @num_extensions, align 4, !tbaa !6
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* @num_extensions, align 4, !tbaa !6
  br label %12

; <label>:12                                      ; preds = %4, %8, %0
  %ret_val.0 = phi i32 [ 0, %8 ], [ -1, %4 ], [ -1, %0 ]
  ret i32 %ret_val.0
}

; Function Attrs: optsize
declare i32 @Util_DeleteHandle(%struct.cHandledData*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RegisterGHExtensionSetupGH(i32 %handle, i8* (%struct.tFleshConfig*, i32, %struct.cGH*)* %func) #1 {
  %1 = load %struct.cHandledData** @GHExtensions, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #5
  %3 = icmp eq i8* %2, null
  br i1 %3, label %6, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to i8* (%struct.tFleshConfig*, i32, %struct.cGH*)**
  store i8* (%struct.tFleshConfig*, i32, %struct.cGH*)* %func, i8* (%struct.tFleshConfig*, i32, %struct.cGH*)** %5, align 8, !tbaa !8
  br label %6

; <label>:6                                       ; preds = %0, %4
  %return_code.0 = phi i32 [ 1, %4 ], [ 0, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RegisterGHExtensionInitGH(i32 %handle, i32 (%struct.cGH*)* %func) #1 {
  %1 = load %struct.cHandledData** @GHExtensions, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #5
  %3 = icmp eq i8* %2, null
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %2, i64 8
  %6 = bitcast i8* %5 to i32 (%struct.cGH*)**
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** %6, align 8, !tbaa !10
  br label %7

; <label>:7                                       ; preds = %0, %4
  %return_code.0 = phi i32 [ 1, %4 ], [ 0, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RegisterGHExtensionScheduleTraverseGH(i32 %handle, i32 (%struct.cGH*, i8*)* %func) #1 {
  %1 = load %struct.cHandledData** @GHExtensions, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %handle) #5
  %3 = icmp eq i8* %2, null
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %2, i64 16
  %6 = bitcast i8* %5 to i32 (%struct.cGH*, i8*)**
  store i32 (%struct.cGH*, i8*)* %func, i32 (%struct.cGH*, i8*)** %6, align 8, !tbaa !11
  br label %7

; <label>:7                                       ; preds = %0, %4
  %return_code.0 = phi i32 [ 1, %4 ], [ 0, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetupGHExtensions(%struct.tFleshConfig* %config, i32 %convergence_level, %struct.cGH* %GH) #1 {
  %1 = load i32* @num_extensions, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph.i, label %CheckAllExtensionsSetup.exit

.lr.ph.i:                                         ; preds = %0, %32
  %handle.01.i = phi i32 [ %33, %32 ], [ 0, %0 ]
  %3 = load %struct.cHandledData** @GHExtensions, align 8, !tbaa !2
  %4 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %3, i32 %handle.01.i) #5
  %5 = icmp eq i8* %4, null
  br i1 %5, label %32, label %6

; <label>:6                                       ; preds = %.lr.ph.i
  %7 = bitcast i8* %4 to i8* (%struct.tFleshConfig*, i32, %struct.cGH*)**
  %8 = load i8* (%struct.tFleshConfig*, i32, %struct.cGH*)** %7, align 8, !tbaa !8
  %9 = icmp eq i8* (%struct.tFleshConfig*, i32, %struct.cGH*)* %8, null
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = load %struct.cHandledData** @GHExtensions, align 8, !tbaa !2
  %12 = tail call i8* @Util_GetHandleName(%struct.cHandledData* %11, i32 %handle.01.i) #5
  %13 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 728, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i8* %12) #5
  store i8* (%struct.tFleshConfig*, i32, %struct.cGH*)* @DummySetupGH, i8* (%struct.tFleshConfig*, i32, %struct.cGH*)** %7, align 8, !tbaa !8
  br label %14

; <label>:14                                      ; preds = %10, %6
  %15 = getelementptr inbounds i8* %4, i64 8
  %16 = bitcast i8* %15 to i32 (%struct.cGH*)**
  %17 = load i32 (%struct.cGH*)** %16, align 8, !tbaa !10
  %18 = icmp eq i32 (%struct.cGH*)* %17, null
  br i1 %18, label %19, label %23

; <label>:19                                      ; preds = %14
  %20 = load %struct.cHandledData** @GHExtensions, align 8, !tbaa !2
  %21 = tail call i8* @Util_GetHandleName(%struct.cHandledData* %20, i32 %handle.01.i) #5
  %22 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 737, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i8* %21) #5
  store i32 (%struct.cGH*)* @DummyInitGH, i32 (%struct.cGH*)** %16, align 8, !tbaa !10
  br label %23

; <label>:23                                      ; preds = %19, %14
  %24 = getelementptr inbounds i8* %4, i64 16
  %25 = bitcast i8* %24 to i32 (%struct.cGH*, i8*)**
  %26 = load i32 (%struct.cGH*, i8*)** %25, align 8, !tbaa !11
  %27 = icmp eq i32 (%struct.cGH*, i8*)* %26, null
  br i1 %27, label %28, label %32

; <label>:28                                      ; preds = %23
  %29 = load %struct.cHandledData** @GHExtensions, align 8, !tbaa !2
  %30 = tail call i8* @Util_GetHandleName(%struct.cHandledData* %29, i32 %handle.01.i) #5
  %31 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 746, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str5, i64 0, i64 0), i8* %30) #5
  store i32 (%struct.cGH*, i8*)* @DummyScheduleTraverseGH, i32 (%struct.cGH*, i8*)** %25, align 8, !tbaa !11
  br label %32

; <label>:32                                      ; preds = %28, %23, %.lr.ph.i
  %33 = add nuw nsw i32 %handle.01.i, 1
  %34 = load i32* @num_extensions, align 4, !tbaa !6
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %.lr.ph.i, label %CheckAllExtensionsSetup.exit

CheckAllExtensionsSetup.exit:                     ; preds = %32, %0
  %36 = phi i32 [ %1, %0 ], [ %34, %32 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %.preheader.thread, label %39

.preheader.thread:                                ; preds = %CheckAllExtensionsSetup.exit
  %38 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18
  store i8** null, i8*** %38, align 8, !tbaa !12
  br label %.loopexit

; <label>:39                                      ; preds = %CheckAllExtensionsSetup.exit
  %40 = sext i32 %36 to i64
  %41 = shl nsw i64 %40, 3
  %42 = tail call i8* @malloc(i64 %41) #5
  %43 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18
  %44 = bitcast i8*** %43 to i8**
  store i8* %42, i8** %44, align 8, !tbaa !12
  %phitmp = icmp eq i8* %42, null
  br i1 %phitmp, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %39
  %45 = icmp sgt i32 %36, 0
  br i1 %45, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %46 = load %struct.cHandledData** @GHExtensions, align 8, !tbaa !2
  %47 = trunc i64 %indvars.iv to i32
  %48 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %46, i32 %47) #5
  %49 = bitcast i8* %48 to i8* (%struct.tFleshConfig*, i32, %struct.cGH*)**
  %50 = load i8* (%struct.tFleshConfig*, i32, %struct.cGH*)** %49, align 8, !tbaa !8
  %51 = tail call i8* %50(%struct.tFleshConfig* %config, i32 %convergence_level, %struct.cGH* %GH) #5
  %52 = load i8*** %43, align 8, !tbaa !12
  %53 = getelementptr inbounds i8** %52, i64 %indvars.iv
  store i8* %51, i8** %53, align 8, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %54 = load i32* @num_extensions, align 4, !tbaa !6
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %indvars.iv.next, %55
  br i1 %56, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %.preheader.thread, %39
  %return_code.0 = phi i32 [ 1, %39 ], [ 0, %.preheader.thread ], [ 0, %.preheader ], [ 0, %.lr.ph ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_InitGHExtensions(%struct.cGH* %GH) #1 {
  %1 = load i32* @num_extensions, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %11
  %handle.01 = phi i32 [ %12, %11 ], [ 0, %0 ]
  %3 = load %struct.cHandledData** @GHExtensions, align 8, !tbaa !2
  %4 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %3, i32 %handle.01) #5
  %5 = icmp eq i8* %4, null
  br i1 %5, label %11, label %6

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds i8* %4, i64 8
  %8 = bitcast i8* %7 to i32 (%struct.cGH*)**
  %9 = load i32 (%struct.cGH*)** %8, align 8, !tbaa !10
  %10 = tail call i32 %9(%struct.cGH* %GH) #5
  br label %11

; <label>:11                                      ; preds = %.lr.ph, %6
  %12 = add nuw nsw i32 %handle.01, 1
  %13 = load i32* @num_extensions, align 4, !tbaa !6
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %11, %0
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ScheduleTraverseGHExtensions(%struct.cGH* %GH, i8* %where) #1 {
  %1 = load i32* @num_extensions, align 4, !tbaa !6
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %3, label %.lr.ph

; <label>:3                                       ; preds = %0
  %4 = bitcast %struct.cGH* %GH to i8*
  %5 = tail call i32 @CCTK_ScheduleTraverse(i8* %where, i8* %4, i32 (i8*, %struct.cFunctionData*, i8*)* null) #5
  br label %.loopexit

.lr.ph:                                           ; preds = %0, %14
  %handle.01 = phi i32 [ %15, %14 ], [ 0, %0 ]
  %6 = load %struct.cHandledData** @GHExtensions, align 8, !tbaa !2
  %7 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %6, i32 %handle.01) #5
  %8 = icmp eq i8* %7, null
  br i1 %8, label %14, label %9

; <label>:9                                       ; preds = %.lr.ph
  %10 = getelementptr inbounds i8* %7, i64 16
  %11 = bitcast i8* %10 to i32 (%struct.cGH*, i8*)**
  %12 = load i32 (%struct.cGH*, i8*)** %11, align 8, !tbaa !11
  %13 = tail call i32 %12(%struct.cGH* %GH, i8* %where) #5
  br label %14

; <label>:14                                      ; preds = %.lr.ph, %9
  %15 = add nuw nsw i32 %handle.01, 1
  %16 = load i32* @num_extensions, align 4, !tbaa !6
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %14, %3
  %retval.0 = phi i32 [ %5, %3 ], [ 0, %14 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_ScheduleTraverse(i8*, i8*, i32 (i8*, %struct.cFunctionData*, i8*)*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_GHExtensionHandle(i8* %name) #1 {
  %1 = load %struct.cHandledData** @GHExtensions, align 8, !tbaa !2
  %2 = tail call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %name, i8** null) #5
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_ghextensionhandle_(i32* nocapture %handle, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = load %struct.cHandledData** @GHExtensions, align 8, !tbaa !2
  %3 = tail call i32 @Util_GetHandle(%struct.cHandledData* %2, i8* %1, i8** null) #5
  store i32 %3, i32* %handle, align 4, !tbaa !6
  tail call void @free(i8* %1) #6
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_GHExtension(%struct.cGH* nocapture readonly %GH, i8* %name) #1 {
  %1 = load %struct.cHandledData** @GHExtensions, align 8, !tbaa !2
  %2 = tail call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %name, i8** null) #5
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %12

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18
  %6 = load i8*** %5, align 8, !tbaa !12
  %7 = icmp eq i8** %6, null
  br i1 %7, label %12, label %8

; <label>:8                                       ; preds = %4
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds i8** %6, i64 %9
  %11 = load i8** %10, align 8, !tbaa !2
  br label %12

; <label>:12                                      ; preds = %4, %0, %8
  %13 = phi i8* [ %11, %8 ], [ null, %4 ], [ null, %0 ]
  ret i8* %13
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: optsize
declare i8* @Util_GetHandleName(%struct.cHandledData*, i32) #2

; Function Attrs: nounwind optsize readnone ssp uwtable
define internal noalias i8* @DummySetupGH(%struct.tFleshConfig* nocapture readnone %config, i32 %convergence_level, %struct.cGH* nocapture readnone %GH) #0 {
  ret i8* null
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define internal i32 @DummyInitGH(%struct.cGH* nocapture readnone %GH) #0 {
  ret i32 0
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define internal i32 @DummyScheduleTraverseGH(%struct.cGH* nocapture readnone %GH, i8* nocapture readnone %where) #0 {
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
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
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !3, i64 0}
!9 = !{!"GHExtension", !3, i64 0, !3, i64 8, !3, i64 16}
!10 = !{!9, !3, i64 8}
!11 = !{!9, !3, i64 16}
!12 = !{!13, !3, i64 136}
!13 = !{!"", !7, i64 0, !7, i64 4, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !14, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !7, i64 104, !3, i64 112, !14, i64 120, !3, i64 128, !3, i64 136, !3, i64 144}
!14 = !{!"double", !4, i64 0}
