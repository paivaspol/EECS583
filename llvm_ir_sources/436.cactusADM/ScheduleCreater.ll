; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleCreater.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.T_SCHED_MODIFIER = type { %struct.T_SCHED_MODIFIER*, i32, i8* }
%struct.t_sched_item = type { i8*, i32, i8*, i32, i32, i8**, i8*, %struct.T_SCHED_MODIFIER* }
%struct.t_sched_group = type { i8*, i32*, i32, %struct.t_sched_item* }

@schedule_groups = internal global %struct.cHandledData* null, align 8
@n_schedule_groups = internal unnamed_addr global i32 0, align 4
@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [66 x i8] c"Error while sorting group '%s' - %d remaining unsorted routines.\0A\00", align 1
@.str1 = private unnamed_addr constant [96 x i8] c"$Header: /cactus/Cactus/src/schedule/ScheduleCreater.c,v 1.11 2001/05/10 12:35:18 goodale Exp $\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str5 = private unnamed_addr constant [41 x i8] c"Schedule sort failed with error code %d\0A\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_schedule_ScheduleCreater_c() #0 {
  ret i8* getelementptr inbounds ([96 x i8]* @.str1, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct.T_SCHED_MODIFIER* @CCTKi_ScheduleAddModifier(%struct.T_SCHED_MODIFIER* %orig, i8* nocapture readonly %modifier, i8* %argument) #1 {
  %1 = tail call i8* @malloc(i64 24) #8
  %2 = bitcast i8* %1 to %struct.T_SCHED_MODIFIER*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %27, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call i64 @strlen(i8* %argument) #8
  %6 = add i64 %5, 1
  %7 = tail call i8* @malloc(i64 %6) #8
  %8 = getelementptr inbounds i8* %1, i64 16
  %9 = bitcast i8* %8 to i8**
  store i8* %7, i8** %9, align 8, !tbaa !2
  %10 = icmp eq i8* %7, null
  br i1 %10, label %26, label %11

; <label>:11                                      ; preds = %4
  %12 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %7, i1 false)
  %13 = tail call i8* @__strcpy_chk(i8* %7, i8* %argument, i64 %12) #8
  %14 = tail call i32 @strcmp(i8* %modifier, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %ScheduleTranslateModifierType.exit, label %16

; <label>:16                                      ; preds = %11
  %17 = tail call i32 @strcmp(i8* %modifier, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %ScheduleTranslateModifierType.exit, label %19

; <label>:19                                      ; preds = %16
  %20 = tail call i32 @strcmp(i8* %modifier, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) #8
  %21 = icmp eq i32 %20, 0
  %..i = select i1 %21, i32 3, i32 0
  br label %ScheduleTranslateModifierType.exit

ScheduleTranslateModifierType.exit:               ; preds = %11, %16, %19
  %22 = phi i32 [ %..i, %19 ], [ 1, %11 ], [ 2, %16 ]
  %23 = getelementptr inbounds i8* %1, i64 8
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 4, !tbaa !7
  %25 = bitcast i8* %1 to %struct.T_SCHED_MODIFIER**
  store %struct.T_SCHED_MODIFIER* %orig, %struct.T_SCHED_MODIFIER** %25, align 8, !tbaa !8
  br label %27

; <label>:26                                      ; preds = %4
  tail call void @free(i8* %1) #9
  br label %27

; <label>:27                                      ; preds = %0, %ScheduleTranslateModifierType.exit, %26
  %this.0 = phi %struct.T_SCHED_MODIFIER* [ %2, %ScheduleTranslateModifierType.exit ], [ null, %26 ], [ %2, %0 ]
  ret %struct.T_SCHED_MODIFIER* %this.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DoScheduleFunction(i8* %gname, i8* %fname, i8* %func, %struct.T_SCHED_MODIFIER* %modifiers, i8* %attributes) #1 {
  %this_group = alloca i8*, align 8
  %1 = load %struct.cHandledData** @schedule_groups, align 8, !tbaa !9
  %2 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %gname, i8** %this_group) #8
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %.thread

; <label>:4                                       ; preds = %0
  %5 = call fastcc i32 @ScheduleCreateGroup(i8* %gname) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %13, label %.thread

.thread:                                          ; preds = %0, %4
  %handle.01 = phi i32 [ %5, %4 ], [ %2, %0 ]
  %7 = call fastcc %struct.t_sched_item* @ScheduleCreateItem(i8* %fname, %struct.T_SCHED_MODIFIER* %modifiers, i8* %attributes) #9
  %8 = icmp eq %struct.t_sched_item* %7, null
  br i1 %8, label %13, label %9

; <label>:9                                       ; preds = %.thread
  %10 = getelementptr inbounds %struct.t_sched_item* %7, i64 0, i32 1
  store i32 2, i32* %10, align 4, !tbaa !10
  %11 = getelementptr inbounds %struct.t_sched_item* %7, i64 0, i32 2
  store i8* %func, i8** %11, align 8, !tbaa !13
  %12 = call fastcc i32 @ScheduleAddItem(i32 %handle.01, %struct.t_sched_item* %7) #9
  br label %13

; <label>:13                                      ; preds = %.thread, %4, %9
  %retcode.0 = phi i32 [ %12, %9 ], [ -1, %4 ], [ -1, %.thread ]
  ret i32 %retcode.0
}

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #5

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @ScheduleCreateGroup(i8* %name) #1 {
  %this_group = alloca %struct.t_sched_group*, align 8
  %1 = load %struct.cHandledData** @schedule_groups, align 8, !tbaa !9
  %2 = bitcast %struct.t_sched_group** %this_group to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %name, i8** %2) #8
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %31, label %5

; <label>:5                                       ; preds = %0
  %6 = call i8* @malloc(i64 32) #8
  store i8* %6, i8** %2, align 8, !tbaa !9
  %7 = icmp eq i8* %6, null
  br i1 %7, label %31, label %8

; <label>:8                                       ; preds = %5
  %9 = call i64 @strlen(i8* %name) #8
  %10 = add i64 %9, 1
  %11 = call i8* @malloc(i64 %10) #8
  %12 = bitcast i8* %6 to i8**
  store i8* %11, i8** %12, align 8, !tbaa !14
  %13 = load %struct.t_sched_group** %this_group, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.t_sched_group* %13, i64 0, i32 0
  %15 = load i8** %14, align 8, !tbaa !14
  %16 = icmp eq i8* %15, null
  br i1 %16, label %29, label %17

; <label>:17                                      ; preds = %8
  %18 = call i64 @llvm.objectsize.i64.p0i8(i8* %15, i1 false)
  %19 = call i8* @__strcpy_chk(i8* %15, i8* %name, i64 %18) #8
  %20 = load %struct.t_sched_group** %this_group, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.t_sched_group* %20, i64 0, i32 1
  store i32* null, i32** %21, align 8, !tbaa !16
  %22 = load %struct.t_sched_group** %this_group, align 8, !tbaa !9
  %23 = getelementptr inbounds %struct.t_sched_group* %22, i64 0, i32 2
  store i32 0, i32* %23, align 4, !tbaa !17
  %24 = getelementptr inbounds %struct.t_sched_group* %22, i64 0, i32 3
  store %struct.t_sched_item* null, %struct.t_sched_item** %24, align 8, !tbaa !18
  %25 = load i8** %2, align 8, !tbaa !9
  %26 = call i32 @Util_NewHandle(%struct.cHandledData** @schedule_groups, i8* %name, i8* %25) #8
  %27 = load i32* @n_schedule_groups, align 4, !tbaa !19
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @n_schedule_groups, align 4, !tbaa !19
  br label %31

; <label>:29                                      ; preds = %8
  %30 = bitcast %struct.t_sched_group* %13 to i8*
  call void @free(i8* %30) #9
  br label %31

; <label>:31                                      ; preds = %5, %0, %29, %17
  %retcode.0 = phi i32 [ %26, %17 ], [ -2, %29 ], [ -1, %0 ], [ -2, %5 ]
  ret i32 %retcode.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc noalias %struct.t_sched_item* @ScheduleCreateItem(i8* %name, %struct.T_SCHED_MODIFIER* %modifiers, i8* %attributes) #1 {
  %1 = tail call i8* @malloc(i64 56) #8
  %2 = bitcast i8* %1 to %struct.t_sched_item*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %62, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call i64 @strlen(i8* %name) #8
  %6 = add i64 %5, 1
  %7 = tail call i8* @malloc(i64 %6) #8
  %8 = bitcast i8* %1 to i8**
  store i8* %7, i8** %8, align 8, !tbaa !20
  %9 = icmp eq i8* %7, null
  br i1 %9, label %61, label %10

; <label>:10                                      ; preds = %4
  %11 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %7, i1 false)
  %12 = tail call i8* @__strcpy_chk(i8* %7, i8* %name, i64 %11) #8
  %13 = getelementptr inbounds i8* %1, i64 8
  %14 = bitcast i8* %13 to i32*
  store i32 0, i32* %14, align 4, !tbaa !10
  %15 = getelementptr inbounds i8* %1, i64 16
  %16 = bitcast i8* %15 to i8**
  store i8* null, i8** %16, align 8, !tbaa !13
  %17 = getelementptr inbounds i8* %1, i64 24
  %18 = bitcast i8* %17 to i32*
  store i32 -1, i32* %18, align 4, !tbaa !21
  %19 = getelementptr inbounds i8* %1, i64 48
  %20 = bitcast i8* %19 to %struct.T_SCHED_MODIFIER**
  store %struct.T_SCHED_MODIFIER* %modifiers, %struct.T_SCHED_MODIFIER** %20, align 8, !tbaa !22
  %21 = getelementptr inbounds i8* %1, i64 28
  %22 = bitcast i8* %21 to i32*
  store i32 0, i32* %22, align 4, !tbaa !23
  %23 = getelementptr inbounds i8* %1, i64 32
  %24 = bitcast i8* %23 to i8***
  store i8** null, i8*** %24, align 8, !tbaa !24
  %25 = icmp eq %struct.T_SCHED_MODIFIER* %modifiers, null
  br i1 %25, label %ScheduleSetupWhiles.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %10
  %26 = bitcast i8* %23 to i8**
  br label %27

; <label>:27                                      ; preds = %54, %.lr.ph.i
  %28 = phi i8* [ null, %.lr.ph.i ], [ %55, %54 ]
  %29 = phi i32 [ 0, %.lr.ph.i ], [ %56, %54 ]
  %modifier.03.i = phi %struct.T_SCHED_MODIFIER* [ %modifiers, %.lr.ph.i ], [ %modifier.0.i, %54 ]
  %30 = getelementptr inbounds %struct.T_SCHED_MODIFIER* %modifier.03.i, i64 0, i32 1
  %31 = load i32* %30, align 4, !tbaa !7
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %54

; <label>:33                                      ; preds = %27
  %34 = add nsw i32 %29, 1
  store i32 %34, i32* %22, align 4, !tbaa !23
  %35 = sext i32 %34 to i64
  %36 = shl nsw i64 %35, 3
  %37 = tail call i8* @realloc(i8* %28, i64 %36) #8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %54, label %39

; <label>:39                                      ; preds = %33
  %40 = bitcast i8* %37 to i8**
  store i8* %37, i8** %26, align 8, !tbaa !24
  %41 = getelementptr inbounds %struct.T_SCHED_MODIFIER* %modifier.03.i, i64 0, i32 2
  %42 = load i8** %41, align 8, !tbaa !2
  %43 = tail call i64 @strlen(i8* %42) #8
  %44 = add i64 %43, 1
  %45 = tail call i8* @malloc(i64 %44) #8
  %46 = sext i32 %29 to i64
  %47 = getelementptr inbounds i8** %40, i64 %46
  store i8* %45, i8** %47, align 8, !tbaa !9
  %48 = icmp eq i8* %45, null
  br i1 %48, label %53, label %49

; <label>:49                                      ; preds = %39
  %50 = load i8** %41, align 8, !tbaa !2
  %51 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %45, i1 false) #7
  %52 = tail call i8* @__strcpy_chk(i8* %45, i8* %50, i64 %51) #8
  br label %54

; <label>:53                                      ; preds = %39
  store i32 %29, i32* %22, align 4, !tbaa !23
  br label %54

; <label>:54                                      ; preds = %53, %49, %33, %27
  %55 = phi i8* [ %37, %53 ], [ %37, %49 ], [ %28, %33 ], [ %28, %27 ]
  %56 = phi i32 [ %29, %53 ], [ %34, %49 ], [ %34, %33 ], [ %29, %27 ]
  %57 = getelementptr inbounds %struct.T_SCHED_MODIFIER* %modifier.03.i, i64 0, i32 0
  %modifier.0.i = load %struct.T_SCHED_MODIFIER** %57, align 8
  %58 = icmp eq %struct.T_SCHED_MODIFIER* %modifier.0.i, null
  br i1 %58, label %ScheduleSetupWhiles.exit, label %27

ScheduleSetupWhiles.exit:                         ; preds = %54, %10
  %59 = getelementptr inbounds i8* %1, i64 40
  %60 = bitcast i8* %59 to i8**
  store i8* %attributes, i8** %60, align 8, !tbaa !25
  br label %62

; <label>:61                                      ; preds = %4
  tail call void @free(i8* %1) #9
  br label %62

; <label>:62                                      ; preds = %0, %ScheduleSetupWhiles.exit, %61
  %this.0 = phi %struct.t_sched_item* [ %2, %ScheduleSetupWhiles.exit ], [ null, %61 ], [ %2, %0 ]
  ret %struct.t_sched_item* %this.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @ScheduleAddItem(i32 %ghandle, %struct.t_sched_item* nocapture %item) #1 {
  %1 = load %struct.cHandledData** @schedule_groups, align 8, !tbaa !9
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %ghandle) #8
  %3 = getelementptr inbounds i8* %2, i64 16
  %4 = bitcast i8* %3 to i32*
  %5 = load i32* %4, align 4, !tbaa !17
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4, !tbaa !17
  %7 = getelementptr inbounds i8* %2, i64 24
  %8 = bitcast i8* %7 to i8**
  %9 = load i8** %8, align 8, !tbaa !18
  %10 = sext i32 %6 to i64
  %11 = mul nsw i64 %10, 56
  %12 = tail call i8* @realloc(i8* %9, i64 %11) #8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %22, label %14

; <label>:14                                      ; preds = %0
  %15 = bitcast i8* %12 to %struct.t_sched_item*
  store i8* %12, i8** %8, align 8, !tbaa !18
  %16 = load i32* %4, align 4, !tbaa !17
  %17 = add nsw i32 %16, -1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.t_sched_item* %15, i64 %18
  %20 = bitcast %struct.t_sched_item* %19 to i8*
  %21 = bitcast %struct.t_sched_item* %item to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 56, i32 8, i1 false), !tbaa.struct !26
  tail call void @free(i8* %21) #9
  br label %25

; <label>:22                                      ; preds = %0
  %23 = load i32* %4, align 4, !tbaa !17
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4, !tbaa !17
  br label %25

; <label>:25                                      ; preds = %22, %14
  %retcode.0 = phi i32 [ 0, %14 ], [ -1, %22 ]
  ret i32 %retcode.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DoScheduleGroup(i8* %gname, i8* %thisname, %struct.T_SCHED_MODIFIER* %modifiers, i8* %attributes) #1 {
  %this_group = alloca i8*, align 8
  %1 = load %struct.cHandledData** @schedule_groups, align 8, !tbaa !9
  %2 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %gname, i8** %this_group) #8
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = call fastcc i32 @ScheduleCreateGroup(i8* %gname) #9
  br label %6

; <label>:6                                       ; preds = %4, %0
  %handle.0 = phi i32 [ %5, %4 ], [ %2, %0 ]
  %7 = load %struct.cHandledData** @schedule_groups, align 8, !tbaa !9
  %8 = call i32 @Util_GetHandle(%struct.cHandledData* %7, i8* %thisname, i8** %this_group) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %6
  %11 = call fastcc i32 @ScheduleCreateGroup(i8* %thisname) #9
  br label %12

; <label>:12                                      ; preds = %10, %6
  %thishandle.0 = phi i32 [ %11, %10 ], [ %8, %6 ]
  %13 = or i32 %thishandle.0, %handle.0
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %22, label %15

; <label>:15                                      ; preds = %12
  %16 = call fastcc %struct.t_sched_item* @ScheduleCreateItem(i8* %thisname, %struct.T_SCHED_MODIFIER* %modifiers, i8* %attributes) #9
  %17 = icmp eq %struct.t_sched_item* %16, null
  br i1 %17, label %22, label %18

; <label>:18                                      ; preds = %15
  %19 = getelementptr inbounds %struct.t_sched_item* %16, i64 0, i32 1
  store i32 1, i32* %19, align 4, !tbaa !10
  %20 = getelementptr inbounds %struct.t_sched_item* %16, i64 0, i32 3
  store i32 %thishandle.0, i32* %20, align 4, !tbaa !21
  %21 = call fastcc i32 @ScheduleAddItem(i32 %handle.0, %struct.t_sched_item* %16) #9
  br label %22

; <label>:22                                      ; preds = %15, %12, %18
  %retcode.0 = phi i32 [ %21, %18 ], [ -1, %12 ], [ -1, %15 ]
  ret i32 %retcode.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DoScheduleSortAllGroups() #1 {
  %1 = load i32* @n_schedule_groups, align 4, !tbaa !19
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %79
  %n_errors.04 = phi i32 [ %n_errors.1, %79 ], [ 0, %0 ]
  %group.03 = phi i32 [ %80, %79 ], [ 0, %0 ]
  %3 = load %struct.cHandledData** @schedule_groups, align 8, !tbaa !9
  %4 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %3, i32 %group.03) #8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %79, label %6

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds i8* %4, i64 16
  %8 = bitcast i8* %7 to i32*
  %9 = load i32* %8, align 4, !tbaa !17
  %10 = tail call i8** @CCTKi_ScheduleCreateArray(i32 %9) #8
  %11 = load i32* %8, align 4, !tbaa !17
  %12 = tail call i32* @CCTKi_ScheduleCreateIVec(i32 %11) #8
  %13 = load i32* %8, align 4, !tbaa !17
  %14 = tail call i32* @CCTKi_ScheduleCreateIVec(i32 %13) #8
  %15 = load i32* %8, align 4, !tbaa !17
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %.lr.ph12.i, label %._crit_edge13.i

.lr.ph12.i:                                       ; preds = %6
  %17 = getelementptr inbounds i8* %4, i64 24
  %18 = bitcast i8* %17 to %struct.t_sched_item**
  br label %19

; <label>:19                                      ; preds = %._crit_edge9.i, %.lr.ph12.i
  %20 = phi i32 [ %15, %.lr.ph12.i ], [ %58, %._crit_edge9.i ]
  %indvars.iv16.i = phi i64 [ 0, %.lr.ph12.i ], [ %indvars.iv.next17.i, %._crit_edge9.i ]
  %21 = load %struct.t_sched_item** %18, align 8, !tbaa !18
  %22 = getelementptr inbounds %struct.t_sched_item* %21, i64 %indvars.iv16.i, i32 7
  %modifier.04.i = load %struct.T_SCHED_MODIFIER** %22, align 8
  %23 = icmp eq %struct.T_SCHED_MODIFIER* %modifier.04.i, null
  br i1 %23, label %48, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %19, %ScheduleItemNumber.exit.thread.i
  %modifier.05.i = phi %struct.T_SCHED_MODIFIER* [ %modifier.0.i, %ScheduleItemNumber.exit.thread.i ], [ %modifier.04.i, %19 ]
  %24 = getelementptr inbounds %struct.T_SCHED_MODIFIER* %modifier.05.i, i64 0, i32 1
  %25 = load i32* %24, align 4, !tbaa !7
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %ScheduleItemNumber.exit.thread.i, label %27

; <label>:27                                      ; preds = %.lr.ph.i
  %28 = getelementptr inbounds %struct.T_SCHED_MODIFIER* %modifier.05.i, i64 0, i32 2
  %29 = load i8** %28, align 8, !tbaa !2
  %30 = load i32* %8, align 4, !tbaa !17
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %.lr.ph.i.i, label %ScheduleItemNumber.exit.thread.i

.lr.ph.i.i:                                       ; preds = %27
  %32 = sext i32 %30 to i64
  br label %33

; <label>:33                                      ; preds = %38, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %38 ]
  %34 = getelementptr inbounds %struct.t_sched_item* %21, i64 %indvars.iv.i.i, i32 0
  %35 = load i8** %34, align 8, !tbaa !20
  %36 = tail call i32 @strcmp(i8* %35, i8* %29) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %ScheduleItemNumber.exit.i, label %38

; <label>:38                                      ; preds = %33
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %39 = icmp slt i64 %indvars.iv.next.i.i, %32
  br i1 %39, label %33, label %ScheduleItemNumber.exit.thread.i

ScheduleItemNumber.exit.i:                        ; preds = %33
  %40 = trunc i64 %indvars.iv.i.i to i32
  %41 = icmp sgt i32 %40, -1
  %42 = icmp slt i32 %40, %30
  %or.cond.i = and i1 %41, %42
  br i1 %or.cond.i, label %43, label %ScheduleItemNumber.exit.thread.i

; <label>:43                                      ; preds = %ScheduleItemNumber.exit.i
  %switch.selectcmp.i = icmp eq i32 %25, 2
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  %switch.selectcmp1.i = icmp eq i32 %25, 1
  %switch.select2.i = select i1 %switch.selectcmp1.i, i32 -1, i32 %switch.select.i
  %sext.i = shl i64 %indvars.iv.i.i, 32
  %44 = ashr exact i64 %sext.i, 32
  %45 = getelementptr inbounds i32* %14, i64 %44
  store i32 %switch.select2.i, i32* %45, align 4, !tbaa !19
  br label %ScheduleItemNumber.exit.thread.i

ScheduleItemNumber.exit.thread.i:                 ; preds = %38, %43, %ScheduleItemNumber.exit.i, %27, %.lr.ph.i
  %46 = getelementptr inbounds %struct.T_SCHED_MODIFIER* %modifier.05.i, i64 0, i32 0
  %modifier.0.i = load %struct.T_SCHED_MODIFIER** %46, align 8
  %47 = icmp eq %struct.T_SCHED_MODIFIER* %modifier.0.i, null
  br i1 %47, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %ScheduleItemNumber.exit.thread.i
  %.pre.i = load i32* %8, align 4, !tbaa !17
  br label %48

; <label>:48                                      ; preds = %._crit_edge.i, %19
  %49 = phi i32 [ %.pre.i, %._crit_edge.i ], [ %20, %19 ]
  %50 = trunc i64 %indvars.iv16.i to i32
  %51 = tail call i32 @CCTKi_ScheduleAddRow(i32 %49, i8** %10, i32* %12, i32 %50, i32* %14) #8
  %52 = load i32* %8, align 4, !tbaa !17
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %.lr.ph8.i, label %._crit_edge9.i

.lr.ph8.i:                                        ; preds = %48, %.lr.ph8.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph8.i ], [ 0, %48 ]
  %54 = getelementptr inbounds i32* %14, i64 %indvars.iv.i
  store i32 0, i32* %54, align 4, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %55 = load i32* %8, align 4, !tbaa !17
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %indvars.iv.next.i, %56
  br i1 %57, label %.lr.ph8.i, label %._crit_edge9.i

._crit_edge9.i:                                   ; preds = %.lr.ph8.i, %48
  %58 = phi i32 [ %52, %48 ], [ %55, %.lr.ph8.i ]
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %indvars.iv.next17.i, %59
  br i1 %60, label %19, label %._crit_edge13.i

._crit_edge13.i:                                  ; preds = %._crit_edge9.i, %6
  %.lcssa.i = phi i32 [ %15, %6 ], [ %58, %._crit_edge9.i ]
  %61 = tail call i32 @CCTKi_ScheduleSort(i32 %.lcssa.i, i8** %10, i32* %12) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %.critedge, label %ScheduleSortGroup.exit

ScheduleSortGroup.exit:                           ; preds = %._crit_edge13.i
  %63 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !9
  %64 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %63, i8* getelementptr inbounds ([41 x i8]* @.str5, i64 0, i64 0), i32 %61) #8
  %65 = load i32* %8, align 4, !tbaa !17
  tail call void @CCTKi_ScheduleDestroyIVec(i32 %65, i32* %14) #8
  %66 = load i32* %8, align 4, !tbaa !17
  tail call void @CCTKi_ScheduleDestroyArray(i32 %66, i8** %10) #8
  %67 = getelementptr inbounds i8* %4, i64 8
  %68 = bitcast i8* %67 to i32**
  store i32* %12, i32** %68, align 8, !tbaa !16
  %69 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !9
  %70 = bitcast i8* %4 to i8**
  %71 = load i8** %70, align 8, !tbaa !14
  %72 = sub nsw i32 0, %61
  %73 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %69, i8* getelementptr inbounds ([66 x i8]* @.str, i64 0, i64 0), i8* %71, i32 %72) #8
  %74 = sub i32 %n_errors.04, %61
  br label %79

.critedge:                                        ; preds = %._crit_edge13.i
  %75 = load i32* %8, align 4, !tbaa !17
  tail call void @CCTKi_ScheduleDestroyIVec(i32 %75, i32* %14) #8
  %76 = load i32* %8, align 4, !tbaa !17
  tail call void @CCTKi_ScheduleDestroyArray(i32 %76, i8** %10) #8
  %77 = getelementptr inbounds i8* %4, i64 8
  %78 = bitcast i8* %77 to i32**
  store i32* %12, i32** %78, align 8, !tbaa !16
  br label %79

; <label>:79                                      ; preds = %.critedge, %.lr.ph, %ScheduleSortGroup.exit
  %n_errors.1 = phi i32 [ %74, %ScheduleSortGroup.exit ], [ %n_errors.04, %.lr.ph ], [ %n_errors.04, %.critedge ]
  %80 = add nuw nsw i32 %group.03, 1
  %81 = load i32* @n_schedule_groups, align 4, !tbaa !19
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %79, %0
  %n_errors.0.lcssa = phi i32 [ 0, %0 ], [ %n_errors.1, %79 ]
  %83 = sub nsw i32 0, %n_errors.0.lcssa
  ret i32 %83
}

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define %struct.cHandledData* @CCTKi_DoScheduleGetGroups() #6 {
  %1 = load %struct.cHandledData** @schedule_groups, align 8, !tbaa !9
  ret %struct.cHandledData* %1
}

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #5

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare i8** @CCTKi_ScheduleCreateArray(i32) #5

; Function Attrs: optsize
declare i32* @CCTKi_ScheduleCreateIVec(i32) #5

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleAddRow(i32, i8**, i32*, i32, i32*) #5

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleSort(i32, i8**, i32*) #5

; Function Attrs: optsize
declare void @CCTKi_ScheduleDestroyIVec(i32, i32*) #5

; Function Attrs: optsize
declare void @CCTKi_ScheduleDestroyArray(i32, i8**) #5

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 16}
!3 = !{!"T_SCHED_MODIFIER", !4, i64 0, !5, i64 8, !4, i64 16}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!3, !5, i64 8}
!8 = !{!3, !4, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!11, !5, i64 8}
!11 = !{!"", !4, i64 0, !5, i64 8, !4, i64 16, !12, i64 24, !12, i64 28, !4, i64 32, !4, i64 40, !4, i64 48}
!12 = !{!"int", !5, i64 0}
!13 = !{!11, !4, i64 16}
!14 = !{!15, !4, i64 0}
!15 = !{!"", !4, i64 0, !4, i64 8, !12, i64 16, !4, i64 24}
!16 = !{!15, !4, i64 8}
!17 = !{!15, !12, i64 16}
!18 = !{!15, !4, i64 24}
!19 = !{!12, !12, i64 0}
!20 = !{!11, !4, i64 0}
!21 = !{!11, !12, i64 24}
!22 = !{!11, !4, i64 48}
!23 = !{!11, !12, i64 28}
!24 = !{!11, !4, i64 32}
!25 = !{!11, !4, i64 40}
!26 = !{i64 0, i64 8, !9, i64 8, i64 4, !27, i64 16, i64 8, !9, i64 24, i64 4, !19, i64 28, i64 4, !19, i64 32, i64 8, !9, i64 40, i64 8, !9, i64 48, i64 8, !9}
!27 = !{!5, !5, i64 0}
