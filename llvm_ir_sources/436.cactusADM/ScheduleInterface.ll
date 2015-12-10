; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleInterface.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.cTimerData = type { i32, %struct.cTimerVal* }
%struct.cTimerVal = type { i32, i8*, i8*, %union.anon }
%union.anon = type { i64 }
%struct.cFunctionData = type { i32, i32 (%struct.cGH*, i8*)*, i32, i32, i32*, i32, i32, i32*, i8*, i8*, i8* }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.t_attribute = type { i8*, i8*, i32, %struct.cFunctionData, i32, i32*, i32, i32*, i32, i32*, i32*, i32 }
%struct.T_SCHED_MODIFIER = type { %struct.T_SCHED_MODIFIER*, i32, i8* }
%struct.t_sched_data = type { %struct.cGH*, i32, %struct.cTimerData*, %struct.cTimerData*, i32, i32, i32 (i8*, %struct.cFunctionData*, i8*)* }

@.str = private unnamed_addr constant [86 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleInterface.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [37 x i8] c"CCTK_CallFunction: Unknown language.\00", align 1
@.str3 = private unnamed_addr constant [42 x i8] c"CCTK_CallFunction: Unknown function type.\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str4 = private unnamed_addr constant [48 x i8] c"Internal error: Failed to schedule %s at %s!!!\0A\00", align 1
@scheduled_storage_groups = internal unnamed_addr global i32* null, align 8
@n_scheduled_storage_groups = internal unnamed_addr global i32 0, align 4
@scheduled_comm_groups = internal unnamed_addr global i32* null, align 8
@n_scheduled_comm_groups = internal unnamed_addr global i32 0, align 4
@CCTK_ScheduleTraverse.current_point = internal unnamed_addr global i8* null, align 8
@CCTK_ScheduleTraverse.current_length = internal unnamed_addr global i32 0, align 4
@.str5 = private unnamed_addr constant [6 x i8] c"%s$%s\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"ENTRY\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str8 = private unnamed_addr constant [16 x i8] c"CCTK total time\00", align 1
@total_timer = internal unnamed_addr global i32 -1, align 4
@.str9 = private unnamed_addr constant [75 x i8] c"Couldn't create CCTK total timer. No timing information will be available.\00", align 1
@.str14 = private unnamed_addr constant [13 x i8] c"CCTK_STARTUP\00", align 1
@.str17 = private unnamed_addr constant [16 x i8] c"CCTK_PARAMCHECK\00", align 1
@.str19 = private unnamed_addr constant [20 x i8] c"CCTK_BASEGRID$ENTRY\00", align 1
@.str20 = private unnamed_addr constant [14 x i8] c"CCTK_BASEGRID\00", align 1
@.str21 = private unnamed_addr constant [19 x i8] c"CCTK_BASEGRID$EXIT\00", align 1
@.str22 = private unnamed_addr constant [19 x i8] c"CCTK_INITIAL$ENTRY\00", align 1
@.str23 = private unnamed_addr constant [13 x i8] c"CCTK_INITIAL\00", align 1
@.str24 = private unnamed_addr constant [18 x i8] c"CCTK_INITIAL$EXIT\00", align 1
@.str25 = private unnamed_addr constant [23 x i8] c"CCTK_POSTINITIAL$ENTRY\00", align 1
@.str26 = private unnamed_addr constant [17 x i8] c"CCTK_POSTINITIAL\00", align 1
@.str27 = private unnamed_addr constant [22 x i8] c"CCTK_POSTINITIAL$EXIT\00", align 1
@.str28 = private unnamed_addr constant [20 x i8] c"CCTK_POSTSTEP$ENTRY\00", align 1
@.str29 = private unnamed_addr constant [14 x i8] c"CCTK_POSTSTEP\00", align 1
@.str30 = private unnamed_addr constant [19 x i8] c"CCTK_POSTSTEP$EXIT\00", align 1
@indent_level = internal unnamed_addr global i32 0, align 4
@.str32 = private unnamed_addr constant [23 x i8] c"CCTK_RECOVER_VARIABLES\00", align 1
@.str35 = private unnamed_addr constant [15 x i8] c"CCTK_CPINITIAL\00", align 1
@.str37 = private unnamed_addr constant [20 x i8] c"CCTK_ANALYSIS$ENTRY\00", align 1
@.str38 = private unnamed_addr constant [14 x i8] c"CCTK_ANALYSIS\00", align 1
@.str39 = private unnamed_addr constant [19 x i8] c"CCTK_ANALYSIS$EXIT\00", align 1
@.str44 = private unnamed_addr constant [19 x i8] c"CCTK_PRESTEP$ENTRY\00", align 1
@.str45 = private unnamed_addr constant [13 x i8] c"CCTK_PRESTEP\00", align 1
@.str46 = private unnamed_addr constant [18 x i8] c"CCTK_PRESTEP$EXIT\00", align 1
@.str47 = private unnamed_addr constant [16 x i8] c"CCTK_EVOL$ENTRY\00", align 1
@.str48 = private unnamed_addr constant [10 x i8] c"CCTK_EVOL\00", align 1
@.str49 = private unnamed_addr constant [15 x i8] c"CCTK_EVOL$EXIT\00", align 1
@.str51 = private unnamed_addr constant [16 x i8] c"CCTK_CHECKPOINT\00", align 1
@.str54 = private unnamed_addr constant [15 x i8] c"CCTK_TERMINATE\00", align 1
@.str56 = private unnamed_addr constant [14 x i8] c"CCTK_SHUTDOWN\00", align 1
@timerinfo = internal unnamed_addr global %struct.cTimerData* null, align 8
@.str57 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str58 = private unnamed_addr constant [26 x i8] c"Total time for simulation\00", align 1
@.str59 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str60 = private unnamed_addr constant [8 x i8] c"Fortran\00", align 1
@.str61 = private unnamed_addr constant [21 x i8] c"Unknown language %s\0A\00", align 1
@.str62 = private unnamed_addr constant [51 x i8] c"While qualifier %s is not a CCTK_INT grid variable\00", align 1
@.str63 = private unnamed_addr constant [93 x i8] c"$Header: /cactus/Cactus/src/main/ScheduleInterface.c,v 1.68 2001/12/21 14:30:59 tradke Exp $\00", align 1
@.str64 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str65 = private unnamed_addr constant [37 x i8] c"Couldn't create timer with name '%s'\00", align 1
@.str66 = private unnamed_addr constant [7 x i8] c"GLOBAL\00", align 1
@.str67 = private unnamed_addr constant [49 x i8] c"ParseOption: Unknown option for schedule group.\0A\00", align 1
@.str68 = private unnamed_addr constant [7 x i8] c"before\00", align 1
@.str69 = private unnamed_addr constant [6 x i8] c"after\00", align 1
@.str70 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str71 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str72 = private unnamed_addr constant [8 x i8] c"while (\00", align 1
@.str73 = private unnamed_addr constant [5 x i8] c" && \00", align 1
@.str74 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str76 = private unnamed_addr constant [11 x i8] c"end while\0A\00", align 1
@.str77 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str78 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str79 = private unnamed_addr constant [18 x i8] c"Total time for %s\00", align 1
@.str80 = private unnamed_addr constant [19 x i8] c"%-16.16s| %-40.40s\00", align 1
@.str81 = private unnamed_addr constant [6 x i8] c"Thorn\00", align 1
@.str82 = private unnamed_addr constant [30 x i8] c"Scheduled routine in time bin\00", align 1
@.str83 = private unnamed_addr constant [11 x i8] c"| %s [%s] \00", align 1
@.str84 = private unnamed_addr constant [7 x i8] c"| %*d \00", align 1
@.str85 = private unnamed_addr constant [8 x i8] c"| %*ld \00", align 1
@.str86 = private unnamed_addr constant [9 x i8] c"| %*.8f \00", align 1
@.str87 = private unnamed_addr constant [37 x i8] c"Unknown value type at line %d of %s\0A\00", align 1
@str = private unnamed_addr constant [15 x i8] c"  if (recover)\00"
@str88 = private unnamed_addr constant [23 x i8] c"    Recover parameters\00"
@str89 = private unnamed_addr constant [9 x i8] c"  endif\0A\00"
@str90 = private unnamed_addr constant [19 x i8] c"  Startup routines\00"
@str91 = private unnamed_addr constant [30 x i8] c"  Parameter checking routines\00"
@str92 = private unnamed_addr constant [17 x i8] c"  Initialisation\00"
@str93 = private unnamed_addr constant [17 x i8] c"    if (recover)\00"
@str95 = private unnamed_addr constant [33 x i8] c"    if (checkpoint initial data)\00"
@str99 = private unnamed_addr constant [25 x i8] c"  do loop over timesteps\00"
@str100 = private unnamed_addr constant [22 x i8] c"    Rotate timelevels\00"
@str101 = private unnamed_addr constant [30 x i8] c"    iteration = iteration + 1\00"
@str102 = private unnamed_addr constant [13 x i8] c"    t = t+dt\00"
@str103 = private unnamed_addr constant [20 x i8] c"    if (checkpoint)\00"
@str105 = private unnamed_addr constant [18 x i8] c"    if (analysis)\00"
@str106 = private unnamed_addr constant [10 x i8] c"    endif\00"
@str107 = private unnamed_addr constant [8 x i8] c"  enddo\00"
@str108 = private unnamed_addr constant [23 x i8] c"  Termination routines\00"
@str109 = private unnamed_addr constant [20 x i8] c"  Shutdown routines\00"
@str110 = private unnamed_addr constant [2 x i8] c")\00"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_ScheduleInterface_c() #0 {
  ret i8* getelementptr inbounds ([93 x i8]* @.str63, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CallFunction(i8* %function, %struct.cFunctionData* nocapture readonly %fdata, i8* %data) #1 {
  %1 = getelementptr inbounds %struct.cFunctionData* %fdata, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  switch i32 %2, label %21 [
    i32 0, label %3
    i32 1, label %6
    i32 2, label %9
  ]

; <label>:3                                       ; preds = %0
  %4 = bitcast i8* %function to i32 ()*
  %5 = tail call i32 %4() #8
  br label %23

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %function to i32 (i8*)*
  %8 = tail call i32 %7(i8* %data) #8
  br label %23

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.cFunctionData* %fdata, i64 0, i32 0
  %11 = load i32* %10, align 4, !tbaa !8
  switch i32 %11, label %19 [
    i32 1, label %12
    i32 2, label %14
  ]

; <label>:12                                      ; preds = %9
  %13 = bitcast i8* %function to void (i8*)*
  tail call void %13(i8* %data) #8
  br label %23

; <label>:14                                      ; preds = %9
  %15 = getelementptr inbounds %struct.cFunctionData* %fdata, i64 0, i32 1
  %16 = load i32 (%struct.cGH*, i8*)** %15, align 8, !tbaa !9
  %17 = bitcast i8* %data to %struct.cGH*
  %18 = tail call i32 %16(%struct.cGH* %17, i8* %function) #8
  br label %23

; <label>:19                                      ; preds = %9
  %20 = tail call i32 @CCTK_Warn(i32 1, i32 264, i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0)) #8
  br label %23

; <label>:21                                      ; preds = %0
  %22 = tail call i32 @CCTK_Warn(i32 1, i32 269, i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str3, i64 0, i64 0)) #8
  br label %23

; <label>:23                                      ; preds = %12, %14, %19, %21, %6, %3
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ScheduleFunction(i8* %function, i8* %name, i8* %thorn, i8* %implementation, i8* %description, i8* %where, i8* %language, i32 %n_mem_groups, i32 %n_comm_groups, i32 %n_trigger_groups, i32 %n_sync_groups, i32 %n_options, i32 %n_before, i32 %n_after, i32 %n_while, ...) #1 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %1)
  %2 = call fastcc %struct.t_attribute* @CreateAttribute(i8* %where, i8* %name, i8* %description, i8* %language, i8* %thorn, i8* %implementation, i32 %n_mem_groups, i32 %n_comm_groups, i32 %n_trigger_groups, i32 %n_sync_groups, i32 %n_options, [1 x %struct.__va_list_tag]* %ap) #9
  %3 = call fastcc %struct.T_SCHED_MODIFIER* @CreateModifiers(i32 %n_before, i32 %n_after, i32 %n_while, [1 x %struct.__va_list_tag]* %ap) #9
  call void @llvm.va_end(i8* %1)
  %4 = call i32 @ValidateModifiers(%struct.T_SCHED_MODIFIER* %3) #9
  %5 = icmp eq %struct.t_attribute* %2, null
  br i1 %5, label %24, label %6

; <label>:6                                       ; preds = %0
  %7 = icmp eq %struct.T_SCHED_MODIFIER* %3, null
  br i1 %7, label %8, label %.preheader

; <label>:8                                       ; preds = %6
  %9 = or i32 %n_after, %n_before
  %10 = or i32 %9, %n_while
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %.preheader, label %24

.preheader:                                       ; preds = %8, %6, %13
  %current.0.i = phi i8* [ %14, %13 ], [ %where, %6 ], [ %where, %8 ]
  %12 = load i8* %current.0.i, align 1, !tbaa !10
  switch i8 %12, label %13 [
    i8 0, label %15
    i8 36, label %TranslateFunctionType.exit
  ]

; <label>:13                                      ; preds = %.preheader
  %14 = getelementptr inbounds i8* %current.0.i, i64 1
  br label %.preheader

; <label>:15                                      ; preds = %.preheader
  %16 = call i32 @CCTK_Equals(i8* %where, i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0)) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %TranslateFunctionType.exit

; <label>:18                                      ; preds = %15
  %19 = call i32 @CCTK_Equals(i8* %where, i8* getelementptr inbounds ([14 x i8]* @.str56, i64 0, i64 0)) #8
  %20 = icmp eq i32 %19, 0
  %..i = select i1 %20, i32 2, i32 0
  br label %TranslateFunctionType.exit

TranslateFunctionType.exit:                       ; preds = %.preheader, %15, %18
  %retcode.0.i = phi i32 [ 0, %15 ], [ %..i, %18 ], [ 1, %.preheader ]
  %21 = getelementptr inbounds %struct.t_attribute* %2, i64 0, i32 3, i32 2
  store i32 %retcode.0.i, i32* %21, align 4, !tbaa !11
  %22 = bitcast %struct.t_attribute* %2 to i8*
  %23 = call i32 @CCTKi_DoScheduleFunction(i8* %where, i8* %name, i8* %function, %struct.T_SCHED_MODIFIER* %3, i8* %22) #8
  ret i32 %23

; <label>:24                                      ; preds = %0, %8
  %25 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !13
  %26 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %25, i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), i8* %name, i8* %where) #8
  call void @exit(i32 2) #10
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc %struct.t_attribute* @CreateAttribute(i8* %where, i8* %name, i8* %description, i8* %language, i8* %thorn, i8* %implementation, i32 %n_mem_groups, i32 %n_comm_groups, i32 %n_trigger_groups, i32 %n_sync_groups, i32 %n_options, [1 x %struct.__va_list_tag]* nocapture %ap) #1 {
  %1 = tail call i8* @malloc(i64 160) #8
  %2 = bitcast i8* %1 to %struct.t_attribute*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %162, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call i64 @strlen(i8* %where) #8
  %6 = add i64 %5, 1
  %7 = tail call i8* @malloc(i64 %6) #8
  %8 = getelementptr inbounds i8* %1, i64 24
  %9 = getelementptr inbounds i8* %1, i64 72
  %10 = bitcast i8* %9 to i8**
  store i8* %7, i8** %10, align 8, !tbaa !14
  %11 = tail call i64 @strlen(i8* %name) #8
  %12 = add i64 %11, 1
  %13 = tail call i8* @malloc(i64 %12) #8
  %14 = getelementptr inbounds i8* %1, i64 80
  %15 = bitcast i8* %14 to i8**
  store i8* %13, i8** %15, align 8, !tbaa !15
  %16 = tail call i64 @strlen(i8* %description) #8
  %17 = add i64 %16, 1
  %18 = tail call i8* @malloc(i64 %17) #8
  %19 = bitcast i8* %1 to i8**
  store i8* %18, i8** %19, align 8, !tbaa !16
  %20 = tail call i64 @strlen(i8* %thorn) #8
  %21 = add i64 %20, 1
  %22 = tail call i8* @malloc(i64 %21) #8
  %23 = getelementptr inbounds i8* %1, i64 88
  %24 = bitcast i8* %23 to i8**
  store i8* %22, i8** %24, align 8, !tbaa !17
  %25 = tail call i64 @strlen(i8* %implementation) #8
  %26 = add i64 %25, 1
  %27 = tail call i8* @malloc(i64 %26) #8
  %28 = getelementptr inbounds i8* %1, i64 8
  %29 = bitcast i8* %28 to i8**
  store i8* %27, i8** %29, align 8, !tbaa !18
  %30 = sext i32 %n_mem_groups to i64
  %31 = shl nsw i64 %30, 2
  %32 = tail call i8* @malloc(i64 %31) #8
  %33 = getelementptr inbounds i8* %1, i64 104
  %34 = bitcast i8* %33 to i32**
  %35 = bitcast i8* %33 to i8**
  store i8* %32, i8** %35, align 8, !tbaa !19
  %36 = sext i32 %n_comm_groups to i64
  %37 = shl nsw i64 %36, 2
  %38 = tail call i8* @malloc(i64 %37) #8
  %39 = getelementptr inbounds i8* %1, i64 120
  %40 = bitcast i8* %39 to i32**
  %41 = bitcast i8* %39 to i8**
  store i8* %38, i8** %41, align 8, !tbaa !20
  %42 = sext i32 %n_trigger_groups to i64
  %43 = shl nsw i64 %42, 2
  %44 = tail call i8* @malloc(i64 %43) #8
  %45 = getelementptr inbounds i8* %1, i64 64
  %46 = bitcast i8* %45 to i32**
  %47 = bitcast i8* %45 to i8**
  store i8* %44, i8** %47, align 8, !tbaa !21
  %48 = sext i32 %n_sync_groups to i64
  %49 = shl nsw i64 %48, 2
  %50 = tail call i8* @malloc(i64 %49) #8
  %51 = getelementptr inbounds i8* %1, i64 48
  %52 = bitcast i8* %51 to i32**
  %53 = bitcast i8* %51 to i8**
  store i8* %50, i8** %53, align 8, !tbaa !22
  %54 = tail call i8* @malloc(i64 %31) #8
  %55 = getelementptr inbounds i8* %1, i64 144
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8, !tbaa !23
  %57 = tail call i8* @malloc(i64 %37) #8
  %58 = getelementptr inbounds i8* %1, i64 136
  %59 = bitcast i8* %58 to i8**
  store i8* %57, i8** %59, align 8, !tbaa !24
  %60 = icmp eq i8* %7, null
  %61 = icmp eq i8* %13, null
  %or.cond8 = or i1 %60, %61
  %62 = icmp eq i8* %18, null
  %or.cond9 = or i1 %or.cond8, %62
  %63 = icmp eq i8* %22, null
  %or.cond10 = or i1 %or.cond9, %63
  %64 = icmp eq i8* %27, null
  %or.cond11 = or i1 %or.cond10, %64
  br i1 %or.cond11, label %156, label %65

; <label>:65                                      ; preds = %4
  %66 = icmp ne i8* %32, null
  %67 = icmp eq i32 %n_mem_groups, 0
  %or.cond = or i1 %67, %66
  br i1 %or.cond, label %68, label %156

; <label>:68                                      ; preds = %65
  %69 = icmp ne i8* %38, null
  %70 = icmp eq i32 %n_comm_groups, 0
  %or.cond3 = or i1 %70, %69
  br i1 %or.cond3, label %71, label %156

; <label>:71                                      ; preds = %68
  %72 = icmp ne i8* %44, null
  %73 = icmp eq i32 %n_trigger_groups, 0
  %or.cond5 = or i1 %73, %72
  br i1 %or.cond5, label %74, label %156

; <label>:74                                      ; preds = %71
  %75 = icmp ne i8* %50, null
  %76 = icmp eq i32 %n_sync_groups, 0
  %or.cond7 = or i1 %76, %75
  br i1 %or.cond7, label %77, label %156

; <label>:77                                      ; preds = %74
  %78 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %7, i1 false)
  %79 = tail call i8* @__strcpy_chk(i8* %7, i8* %where, i64 %78) #8
  %80 = load i8** %15, align 8, !tbaa !15
  %81 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %80, i1 false)
  %82 = tail call i8* @__strcpy_chk(i8* %80, i8* %name, i64 %81) #8
  %83 = load i8** %19, align 8, !tbaa !16
  %84 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %83, i1 false)
  %85 = tail call i8* @__strcpy_chk(i8* %83, i8* %description, i64 %84) #8
  %86 = load i8** %24, align 8, !tbaa !17
  %87 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %86, i1 false)
  %88 = tail call i8* @__strcpy_chk(i8* %86, i8* %thorn, i64 %87) #8
  %89 = load i8** %29, align 8, !tbaa !18
  %90 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %89, i1 false)
  %91 = tail call i8* @__strcpy_chk(i8* %89, i8* %implementation, i64 %90) #8
  %92 = icmp eq i8* %language, null
  %93 = getelementptr inbounds i8* %1, i64 16
  %94 = bitcast i8* %93 to i32*
  br i1 %92, label %101, label %95

; <label>:95                                      ; preds = %77
  store i32 2, i32* %94, align 4, !tbaa !25
  %96 = tail call i32 @CCTK_TranslateLanguage(i8* %language) #9
  %97 = bitcast i8* %8 to i32*
  store i32 %96, i32* %97, align 4, !tbaa !26
  %98 = tail call i32 (i8*, i8*)* (i8*)* @CCTKi_FortranWrapper(i8* %thorn) #8
  %99 = getelementptr inbounds i8* %1, i64 32
  %100 = bitcast i8* %99 to i32 (i8*, i8*)**
  store i32 (i8*, i8*)* %98, i32 (i8*, i8*)** %100, align 8, !tbaa !27
  br label %102

; <label>:101                                     ; preds = %77
  store i32 1, i32* %94, align 4, !tbaa !25
  br label %102

; <label>:102                                     ; preds = %101, %95
  %103 = load i32** %34, align 8, !tbaa !19
  tail call fastcc void @CreateGroupIndexList(i32 %n_mem_groups, i32* %103, [1 x %struct.__va_list_tag]* %ap) #9
  %104 = load i32** %40, align 8, !tbaa !20
  tail call fastcc void @CreateGroupIndexList(i32 %n_comm_groups, i32* %104, [1 x %struct.__va_list_tag]* %ap) #9
  %105 = load i32** %46, align 8, !tbaa !21
  tail call fastcc void @CreateGroupIndexList(i32 %n_trigger_groups, i32* %105, [1 x %struct.__va_list_tag]* %ap) #9
  %106 = load i32** %52, align 8, !tbaa !22
  tail call fastcc void @CreateGroupIndexList(i32 %n_sync_groups, i32* %106, [1 x %struct.__va_list_tag]* %ap) #9
  %107 = getelementptr inbounds i8* %1, i64 56
  %108 = bitcast i8* %107 to i32*
  store i32 0, i32* %108, align 4, !tbaa !28
  %109 = icmp sgt i32 %n_options, 0
  br i1 %109, label %.lr.ph.i, label %ParseOptionList.exit

.lr.ph.i:                                         ; preds = %102
  %110 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %111 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %112 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  %113 = add i32 %n_options, -1
  br label %114

; <label>:114                                     ; preds = %ParseOption.exit.i, %.lr.ph.i
  %i.01.i = phi i32 [ 0, %.lr.ph.i ], [ %133, %ParseOption.exit.i ]
  %115 = load i32* %110, align 4
  %116 = icmp ult i32 %115, 41
  br i1 %116, label %117, label %122

; <label>:117                                     ; preds = %114
  %118 = load i8** %111, align 8
  %119 = sext i32 %115 to i64
  %120 = getelementptr i8* %118, i64 %119
  %121 = add i32 %115, 8
  store i32 %121, i32* %110, align 4
  br label %125

; <label>:122                                     ; preds = %114
  %123 = load i8** %112, align 8
  %124 = getelementptr i8* %123, i64 8
  store i8* %124, i8** %112, align 8
  br label %125

; <label>:125                                     ; preds = %122, %117
  %.in.i = phi i8* [ %120, %117 ], [ %123, %122 ]
  %126 = bitcast i8* %.in.i to i8**
  %127 = load i8** %126, align 8
  %128 = tail call i32 @CCTK_Equals(i8* %127, i8* getelementptr inbounds ([7 x i8]* @.str66, i64 0, i64 0)) #8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

; <label>:130                                     ; preds = %125
  store i32 1, i32* %108, align 4, !tbaa !28
  br label %ParseOption.exit.i

; <label>:131                                     ; preds = %125
  %132 = tail call i32 @CCTK_Warn(i32 1, i32 1511, i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str67, i64 0, i64 0)) #8
  br label %ParseOption.exit.i

ParseOption.exit.i:                               ; preds = %131, %130
  %133 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %i.01.i, %113
  br i1 %exitcond.i, label %ParseOptionList.exit, label %114

ParseOptionList.exit:                             ; preds = %ParseOption.exit.i, %102
  %134 = getelementptr inbounds i8* %1, i64 96
  %135 = bitcast i8* %134 to i32*
  store i32 %n_mem_groups, i32* %135, align 4, !tbaa !29
  %136 = getelementptr inbounds i8* %1, i64 112
  %137 = bitcast i8* %136 to i32*
  store i32 %n_comm_groups, i32* %137, align 4, !tbaa !30
  %138 = getelementptr inbounds i8* %1, i64 60
  %139 = bitcast i8* %138 to i32*
  store i32 %n_trigger_groups, i32* %139, align 4, !tbaa !31
  %140 = getelementptr inbounds i8* %1, i64 44
  %141 = bitcast i8* %140 to i32*
  store i32 %n_sync_groups, i32* %141, align 4, !tbaa !32
  %142 = tail call i64 @strlen(i8* %thorn) #8
  %143 = tail call i64 @strlen(i8* %description) #8
  %144 = add i64 %142, 3
  %145 = add i64 %144, %143
  %146 = tail call i8* @malloc(i64 %145) #8
  %147 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %146, i1 false)
  %148 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %146, i32 0, i64 %147, i8* getelementptr inbounds ([7 x i8]* @.str64, i64 0, i64 0), i8* %thorn, i8* %description) #8
  %149 = tail call i32 @CCTK_TimerCreate(i8* %146) #8
  %150 = getelementptr inbounds i8* %1, i64 128
  %151 = bitcast i8* %150 to i32*
  store i32 %149, i32* %151, align 4, !tbaa !33
  %152 = icmp slt i32 %149, 0
  br i1 %152, label %153, label %155

; <label>:153                                     ; preds = %ParseOptionList.exit
  %154 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 1238, i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str65, i64 0, i64 0), i8* %146) #8
  br label %155

; <label>:155                                     ; preds = %153, %ParseOptionList.exit
  tail call void @free(i8* %146) #9
  br label %162

; <label>:156                                     ; preds = %4, %74, %71, %68, %65
  tail call void @free(i8* %7) #9
  %157 = load i8** %15, align 8, !tbaa !15
  tail call void @free(i8* %157) #9
  %158 = load i8** %19, align 8, !tbaa !16
  tail call void @free(i8* %158) #9
  %159 = load i8** %41, align 8, !tbaa !20
  tail call void @free(i8* %159) #9
  %160 = load i8** %47, align 8, !tbaa !21
  tail call void @free(i8* %160) #9
  %161 = load i8** %53, align 8, !tbaa !22
  tail call void @free(i8* %161) #9
  tail call void @free(i8* %1) #9
  br label %162

; <label>:162                                     ; preds = %0, %155, %156
  %this.0 = phi %struct.t_attribute* [ %2, %155 ], [ null, %156 ], [ %2, %0 ]
  ret %struct.t_attribute* %this.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc %struct.T_SCHED_MODIFIER* @CreateModifiers(i32 %n_before, i32 %n_after, i32 %n_while, [1 x %struct.__va_list_tag]* nocapture %ap) #1 {
  %1 = tail call fastcc %struct.T_SCHED_MODIFIER* @CreateTypedModifier(%struct.T_SCHED_MODIFIER* null, i8* getelementptr inbounds ([7 x i8]* @.str68, i64 0, i64 0), i32 %n_before, [1 x %struct.__va_list_tag]* %ap) #9
  %2 = tail call fastcc %struct.T_SCHED_MODIFIER* @CreateTypedModifier(%struct.T_SCHED_MODIFIER* %1, i8* getelementptr inbounds ([6 x i8]* @.str69, i64 0, i64 0), i32 %n_after, [1 x %struct.__va_list_tag]* %ap) #9
  %3 = tail call fastcc %struct.T_SCHED_MODIFIER* @CreateTypedModifier(%struct.T_SCHED_MODIFIER* %2, i8* getelementptr inbounds ([6 x i8]* @.str70, i64 0, i64 0), i32 %n_while, [1 x %struct.__va_list_tag]* %ap) #9
  ret %struct.T_SCHED_MODIFIER* %3
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ValidateModifiers(%struct.T_SCHED_MODIFIER* readonly %modifier) #1 {
  %1 = icmp eq %struct.T_SCHED_MODIFIER* %modifier, null
  br i1 %1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0, %14
  %.02 = phi %struct.T_SCHED_MODIFIER* [ %16, %14 ], [ %modifier, %0 ]
  %retval.01 = phi i32 [ %retval.1, %14 ], [ 0, %0 ]
  %2 = getelementptr inbounds %struct.T_SCHED_MODIFIER* %.02, i64 0, i32 1
  %3 = load i32* %2, align 4, !tbaa !34
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %14

; <label>:5                                       ; preds = %.lr.ph
  %6 = getelementptr inbounds %struct.T_SCHED_MODIFIER* %.02, i64 0, i32 2
  %7 = load i8** %6, align 8, !tbaa !36
  %8 = tail call i32 @CCTK_VarIndex(i8* %7) #8
  %9 = tail call i32 @CCTK_VarTypeI(i32 %8) #8
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %14, label %11

; <label>:11                                      ; preds = %5
  %12 = load i8** %6, align 8, !tbaa !36
  %13 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 1345, i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str62, i64 0, i64 0), i8* %12) #8
  br label %14

; <label>:14                                      ; preds = %5, %.lr.ph, %11
  %retval.1 = phi i32 [ -1, %11 ], [ %retval.01, %5 ], [ %retval.01, %.lr.ph ]
  %15 = getelementptr inbounds %struct.T_SCHED_MODIFIER* %.02, i64 0, i32 0
  %16 = load %struct.T_SCHED_MODIFIER** %15, align 8, !tbaa !37
  %17 = icmp eq %struct.T_SCHED_MODIFIER* %16, null
  br i1 %17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %14, %0
  %retval.0.lcssa = phi i32 [ 0, %0 ], [ %retval.1, %14 ]
  ret i32 %retval.0.lcssa
}

; Function Attrs: optsize
declare i32 @CCTKi_DoScheduleFunction(i8*, i8*, i8*, %struct.T_SCHED_MODIFIER*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: noreturn optsize
declare void @exit(i32) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ScheduleGroup(i8* %name, i8* %thorn, i8* %implementation, i8* %description, i8* %where, i32 %n_mem_groups, i32 %n_comm_groups, i32 %n_trigger_groups, i32 %n_sync_groups, i32 %n_options, i32 %n_before, i32 %n_after, i32 %n_while, ...) #1 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %1)
  %2 = call fastcc %struct.t_attribute* @CreateAttribute(i8* %where, i8* %name, i8* %description, i8* null, i8* %thorn, i8* %implementation, i32 %n_mem_groups, i32 %n_comm_groups, i32 %n_trigger_groups, i32 %n_sync_groups, i32 %n_options, [1 x %struct.__va_list_tag]* %ap) #9
  %3 = call fastcc %struct.T_SCHED_MODIFIER* @CreateModifiers(i32 %n_before, i32 %n_after, i32 %n_while, [1 x %struct.__va_list_tag]* %ap) #9
  call void @llvm.va_end(i8* %1)
  %4 = call i32 @ValidateModifiers(%struct.T_SCHED_MODIFIER* %3) #9
  %5 = icmp eq %struct.t_attribute* %2, null
  br i1 %5, label %15, label %6

; <label>:6                                       ; preds = %0
  %7 = icmp eq %struct.T_SCHED_MODIFIER* %3, null
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %6
  %9 = or i32 %n_after, %n_before
  %10 = or i32 %9, %n_while
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

; <label>:12                                      ; preds = %6, %8
  %13 = bitcast %struct.t_attribute* %2 to i8*
  %14 = call i32 @CCTKi_DoScheduleGroup(i8* %where, i8* %name, %struct.T_SCHED_MODIFIER* %3, i8* %13) #8
  br label %15

; <label>:15                                      ; preds = %8, %0, %12
  %retcode.0 = phi i32 [ %14, %12 ], [ -1, %0 ], [ -1, %8 ]
  ret i32 %retcode.0
}

; Function Attrs: optsize
declare i32 @CCTKi_DoScheduleGroup(i8*, i8*, %struct.T_SCHED_MODIFIER*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ScheduleGroupStorage(i8* %group) #1 {
  %1 = load i8** bitcast (i32** @scheduled_storage_groups to i8**), align 8, !tbaa !13
  %2 = load i32* @n_scheduled_storage_groups, align 4, !tbaa !38
  %3 = add nsw i32 %2, 1
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = tail call i8* @realloc(i8* %1, i64 %5) #8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %.critedge, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to i32*
  %10 = tail call i32 @CCTK_GroupIndex(i8* %group) #8
  %11 = load i32* @n_scheduled_storage_groups, align 4, !tbaa !38
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @n_scheduled_storage_groups, align 4, !tbaa !38
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i32* %9, i64 %13
  store i32 %10, i32* %14, align 4, !tbaa !38
  store i8* %6, i8** bitcast (i32** @scheduled_storage_groups to i8**), align 8, !tbaa !13
  br label %.critedge

.critedge:                                        ; preds = %0, %8
  %15 = phi i32 [ %10, %8 ], [ -1, %0 ]
  ret i32 %15
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #4

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ScheduleGroupComm(i8* %group) #1 {
  %1 = load i8** bitcast (i32** @scheduled_comm_groups to i8**), align 8, !tbaa !13
  %2 = load i32* @n_scheduled_comm_groups, align 4, !tbaa !38
  %3 = add nsw i32 %2, 1
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = tail call i8* @realloc(i8* %1, i64 %5) #8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %.critedge, label %8

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %6 to i32*
  %10 = tail call i32 @CCTK_GroupIndex(i8* %group) #8
  %11 = load i32* @n_scheduled_comm_groups, align 4, !tbaa !38
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @n_scheduled_comm_groups, align 4, !tbaa !38
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i32* %9, i64 %13
  store i32 %10, i32* %14, align 4, !tbaa !38
  store i8* %6, i8** bitcast (i32** @scheduled_comm_groups to i8**), align 8, !tbaa !13
  br label %.critedge

.critedge:                                        ; preds = %0, %8
  %15 = phi i32 [ %10, %8 ], [ -1, %0 ]
  ret i32 %15
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_ScheduleTraverse(i8* %where, i8* %GH, i32 (i8*, %struct.cFunctionData*, i8*)* %CallFunction) #1 {
  br label %1

; <label>:1                                       ; preds = %3, %0
  %current.0 = phi i8* [ %where, %0 ], [ %4, %3 ]
  %2 = load i8* %current.0, align 1, !tbaa !10
  switch i8 %2, label %3 [
    i8 0, label %5
    i8 36, label %.critedge
  ]

; <label>:3                                       ; preds = %1
  %4 = getelementptr inbounds i8* %current.0, i64 1
  br label %1

.critedge:                                        ; preds = %1
  tail call fastcc void @ScheduleTraverse(i8* %where, i8* %GH, i32 (i8*, %struct.cFunctionData*, i8*)* %CallFunction) #9
  br label %.thread2

; <label>:5                                       ; preds = %1
  %6 = load i32* @CCTK_ScheduleTraverse.current_length, align 4, !tbaa !38
  %7 = zext i32 %6 to i64
  %8 = tail call i64 @strlen(i8* %where) #8
  %9 = add i64 %8, 7
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %._crit_edge

._crit_edge:                                      ; preds = %5
  %.pre = load i8** @CCTK_ScheduleTraverse.current_point, align 8, !tbaa !13
  br label %18

; <label>:11                                      ; preds = %5
  %12 = trunc i64 %9 to i32
  store i32 %12, i32* @CCTK_ScheduleTraverse.current_length, align 4, !tbaa !38
  %13 = load i8** @CCTK_ScheduleTraverse.current_point, align 8, !tbaa !13
  %14 = and i64 %9, 4294967295
  %15 = tail call i8* @realloc(i8* %13, i64 %14) #8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %.thread2, label %17

; <label>:17                                      ; preds = %11
  store i8* %15, i8** @CCTK_ScheduleTraverse.current_point, align 8, !tbaa !13
  br label %18

; <label>:18                                      ; preds = %._crit_edge, %17
  %19 = phi i8* [ %.pre, %._crit_edge ], [ %15, %17 ]
  %20 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %19, i1 false)
  %21 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %19, i32 0, i64 %20, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* %where, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) #8
  %22 = load i8** @CCTK_ScheduleTraverse.current_point, align 8, !tbaa !13
  tail call fastcc void @ScheduleTraverse(i8* %22, i8* %GH, i32 (i8*, %struct.cFunctionData*, i8*)* %CallFunction) #9
  tail call fastcc void @ScheduleTraverse(i8* %where, i8* %GH, i32 (i8*, %struct.cFunctionData*, i8*)* %CallFunction) #9
  %23 = load i8** @CCTK_ScheduleTraverse.current_point, align 8, !tbaa !13
  %24 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %23, i1 false)
  %25 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %23, i32 0, i64 %24, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* %where, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #8
  %26 = load i8** @CCTK_ScheduleTraverse.current_point, align 8, !tbaa !13
  tail call fastcc void @ScheduleTraverse(i8* %26, i8* %GH, i32 (i8*, %struct.cFunctionData*, i8*)* %CallFunction) #9
  br label %.thread2

.thread2:                                         ; preds = %11, %18, %.critedge
  %retcode.1 = phi i32 [ 0, %.critedge ], [ 0, %18 ], [ 1, %11 ]
  ret i32 %retcode.1
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @ScheduleTraverse(i8* %where, i8* %GH, i32 (i8*, %struct.cFunctionData*, i8*)* %CallFunction) #1 {
  %data = alloca %struct.t_sched_data, align 8
  %1 = bitcast %struct.t_sched_data* %data to i8*
  call void @llvm.lifetime.start(i64 48, i8* %1) #3
  %2 = bitcast %struct.t_sched_data* %data to i8**
  store i8* %GH, i8** %2, align 8, !tbaa !39
  %3 = icmp ne i32 (i8*, %struct.cFunctionData*, i8*)* %CallFunction, null
  %4 = select i1 %3, i32 (i8*, %struct.cFunctionData*, i8*)* %CallFunction, i32 (i8*, %struct.cFunctionData*, i8*)* @CCTK_CallFunction
  %5 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 6
  store i32 (i8*, %struct.cFunctionData*, i8*)* %4, i32 (i8*, %struct.cFunctionData*, i8*)** %5, align 8, !tbaa !41
  %6 = tail call i32 @CCTK_Equals(i8* %where, i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #8
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 1
  store i32 %8, i32* %9, align 8, !tbaa !42
  %10 = call i32 @CCTKi_DoScheduleTraverse(i8* %where, i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_ScheduleCallEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_ScheduleCallExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_ScheduleCallWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_ScheduleCallFunction to i32 (i8*, i8*, i8*)*), i8* %1) #8
  call void @llvm.lifetime.end(i64 48, i8* %1) #3
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #7

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ScheduleGHInit(i8* %GH) #1 {
  %1 = tail call i32 @CCTK_TimerCreate(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0)) #8
  store i32 %1, i32* @total_timer, align 4, !tbaa !38
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_TimerStartI(i32 %1) #8
  br label %.preheader1

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 767, i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8]* @.str9, i64 0, i64 0)) #8
  br label %.preheader1

.preheader1:                                      ; preds = %5, %3
  %7 = load i32* @n_scheduled_storage_groups, align 4, !tbaa !38
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph4, label %.preheader

.lr.ph4:                                          ; preds = %.preheader1
  %9 = bitcast i8* %GH to %struct.cGH*
  br label %13

.preheader:                                       ; preds = %13, %.preheader1
  %10 = load i32* @n_scheduled_comm_groups, align 4, !tbaa !38
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %12 = bitcast i8* %GH to %struct.cGH*
  br label %21

; <label>:13                                      ; preds = %.lr.ph4, %13
  %indvars.iv5 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next6, %13 ]
  %14 = load i32** @scheduled_storage_groups, align 8, !tbaa !13
  %15 = getelementptr inbounds i32* %14, i64 %indvars.iv5
  %16 = load i32* %15, align 4, !tbaa !38
  %17 = tail call i32 @CCTK_EnableGroupStorageI(%struct.cGH* %9, i32 %16) #8
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %18 = load i32* @n_scheduled_storage_groups, align 4, !tbaa !38
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %indvars.iv.next6, %19
  br i1 %20, label %13, label %.preheader

; <label>:21                                      ; preds = %.lr.ph, %21
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %21 ]
  %22 = load i32** @scheduled_comm_groups, align 8, !tbaa !13
  %23 = getelementptr inbounds i32* %22, i64 %indvars.iv
  %24 = load i32* %23, align 4, !tbaa !38
  %25 = tail call i32 @CCTK_EnableGroupCommI(%struct.cGH* %12, i32 %24) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %26 = load i32* @n_scheduled_comm_groups, align 4, !tbaa !38
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %indvars.iv.next, %27
  br i1 %28, label %21, label %._crit_edge

._crit_edge:                                      ; preds = %21, %.preheader
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTK_TimerCreate(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_TimerStartI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_EnableGroupStorageI(%struct.cGH*, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_EnableGroupCommI(%struct.cGH*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SchedulePrint(i8* %where) #1 {
  %data.i58 = alloca %struct.t_sched_data, align 8
  %data.i57 = alloca %struct.t_sched_data, align 8
  %data.i56 = alloca %struct.t_sched_data, align 8
  %data.i55 = alloca %struct.t_sched_data, align 8
  %data.i54 = alloca %struct.t_sched_data, align 8
  %data.i53 = alloca %struct.t_sched_data, align 8
  %data.i52 = alloca %struct.t_sched_data, align 8
  %data.i51 = alloca %struct.t_sched_data, align 8
  %data.i50 = alloca %struct.t_sched_data, align 8
  %data.i49 = alloca %struct.t_sched_data, align 8
  %data.i48 = alloca %struct.t_sched_data, align 8
  %data.i47 = alloca %struct.t_sched_data, align 8
  %data.i46 = alloca %struct.t_sched_data, align 8
  %data.i45 = alloca %struct.t_sched_data, align 8
  %data.i44 = alloca %struct.t_sched_data, align 8
  %data.i43 = alloca %struct.t_sched_data, align 8
  %data.i42 = alloca %struct.t_sched_data, align 8
  %data.i41 = alloca %struct.t_sched_data, align 8
  %data.i40 = alloca %struct.t_sched_data, align 8
  %data.i39 = alloca %struct.t_sched_data, align 8
  %data.i38 = alloca %struct.t_sched_data, align 8
  %data.i37 = alloca %struct.t_sched_data, align 8
  %data.i36 = alloca %struct.t_sched_data, align 8
  %data.i35 = alloca %struct.t_sched_data, align 8
  %data.i34 = alloca %struct.t_sched_data, align 8
  %data.i33 = alloca %struct.t_sched_data, align 8
  %data.i32 = alloca %struct.t_sched_data, align 8
  %data.i31 = alloca %struct.t_sched_data, align 8
  %data.i30 = alloca %struct.t_sched_data, align 8
  %data.i29 = alloca %struct.t_sched_data, align 8
  %data.i28 = alloca %struct.t_sched_data, align 8
  %data.i27 = alloca %struct.t_sched_data, align 8
  %data.i26 = alloca %struct.t_sched_data, align 8
  %data.i25 = alloca %struct.t_sched_data, align 8
  %data.i = alloca %struct.t_sched_data, align 8
  %1 = icmp eq i8* %where, null
  br i1 %1, label %2, label %SchedulePrint.exit

; <label>:2                                       ; preds = %0
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8]* @str, i64 0, i64 0))
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str88, i64 0, i64 0))
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([9 x i8]* @str89, i64 0, i64 0))
  %puts3 = tail call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str90, i64 0, i64 0))
  %3 = bitcast %struct.t_sched_data* %data.i to i8*
  call void @llvm.lifetime.start(i64 48, i8* %3) #3
  %4 = getelementptr inbounds %struct.t_sched_data* %data.i, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %4, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.t_sched_data* %data.i, i64 0, i32 1
  store i32 0, i32* %5, align 8, !tbaa !42
  %6 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %3) #8
  call void @llvm.lifetime.end(i64 48, i8* %3) #3
  %putchar = call i32 @putchar(i32 10) #3
  %puts4 = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str91, i64 0, i64 0))
  %7 = bitcast %struct.t_sched_data* %data.i25 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %7) #3
  %8 = getelementptr inbounds %struct.t_sched_data* %data.i25, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %8, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.t_sched_data* %data.i25, i64 0, i32 1
  store i32 0, i32* %9, align 8, !tbaa !42
  %10 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %7) #8
  call void @llvm.lifetime.end(i64 48, i8* %7) #3
  %putchar5 = call i32 @putchar(i32 10) #3
  %puts6 = call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str92, i64 0, i64 0))
  %11 = bitcast %struct.t_sched_data* %data.i26 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %11) #3
  %12 = getelementptr inbounds %struct.t_sched_data* %data.i26, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %12, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.t_sched_data* %data.i26, i64 0, i32 1
  store i32 0, i32* %13, align 8, !tbaa !42
  %14 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %11) #8
  call void @llvm.lifetime.end(i64 48, i8* %11) #3
  %15 = bitcast %struct.t_sched_data* %data.i27 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %15) #3
  %16 = getelementptr inbounds %struct.t_sched_data* %data.i27, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %16, align 8, !tbaa !39
  %17 = getelementptr inbounds %struct.t_sched_data* %data.i27, i64 0, i32 1
  store i32 0, i32* %17, align 8, !tbaa !42
  %18 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %15) #8
  call void @llvm.lifetime.end(i64 48, i8* %15) #3
  %19 = bitcast %struct.t_sched_data* %data.i28 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %19) #3
  %20 = getelementptr inbounds %struct.t_sched_data* %data.i28, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %20, align 8, !tbaa !39
  %21 = getelementptr inbounds %struct.t_sched_data* %data.i28, i64 0, i32 1
  store i32 0, i32* %21, align 8, !tbaa !42
  %22 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([19 x i8]* @.str21, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %19) #8
  call void @llvm.lifetime.end(i64 48, i8* %19) #3
  %23 = bitcast %struct.t_sched_data* %data.i29 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %23) #3
  %24 = getelementptr inbounds %struct.t_sched_data* %data.i29, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %24, align 8, !tbaa !39
  %25 = getelementptr inbounds %struct.t_sched_data* %data.i29, i64 0, i32 1
  store i32 0, i32* %25, align 8, !tbaa !42
  %26 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([19 x i8]* @.str22, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %23) #8
  call void @llvm.lifetime.end(i64 48, i8* %23) #3
  %27 = bitcast %struct.t_sched_data* %data.i30 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %27) #3
  %28 = getelementptr inbounds %struct.t_sched_data* %data.i30, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %28, align 8, !tbaa !39
  %29 = getelementptr inbounds %struct.t_sched_data* %data.i30, i64 0, i32 1
  store i32 0, i32* %29, align 8, !tbaa !42
  %30 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([13 x i8]* @.str23, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %27) #8
  call void @llvm.lifetime.end(i64 48, i8* %27) #3
  %31 = bitcast %struct.t_sched_data* %data.i31 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %31) #3
  %32 = getelementptr inbounds %struct.t_sched_data* %data.i31, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %32, align 8, !tbaa !39
  %33 = getelementptr inbounds %struct.t_sched_data* %data.i31, i64 0, i32 1
  store i32 0, i32* %33, align 8, !tbaa !42
  %34 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([18 x i8]* @.str24, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %31) #8
  call void @llvm.lifetime.end(i64 48, i8* %31) #3
  %35 = bitcast %struct.t_sched_data* %data.i32 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %35) #3
  %36 = getelementptr inbounds %struct.t_sched_data* %data.i32, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %36, align 8, !tbaa !39
  %37 = getelementptr inbounds %struct.t_sched_data* %data.i32, i64 0, i32 1
  store i32 0, i32* %37, align 8, !tbaa !42
  %38 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([23 x i8]* @.str25, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %35) #8
  call void @llvm.lifetime.end(i64 48, i8* %35) #3
  %39 = bitcast %struct.t_sched_data* %data.i33 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %39) #3
  %40 = getelementptr inbounds %struct.t_sched_data* %data.i33, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %40, align 8, !tbaa !39
  %41 = getelementptr inbounds %struct.t_sched_data* %data.i33, i64 0, i32 1
  store i32 0, i32* %41, align 8, !tbaa !42
  %42 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([17 x i8]* @.str26, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %39) #8
  call void @llvm.lifetime.end(i64 48, i8* %39) #3
  %43 = bitcast %struct.t_sched_data* %data.i34 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %43) #3
  %44 = getelementptr inbounds %struct.t_sched_data* %data.i34, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %44, align 8, !tbaa !39
  %45 = getelementptr inbounds %struct.t_sched_data* %data.i34, i64 0, i32 1
  store i32 0, i32* %45, align 8, !tbaa !42
  %46 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([22 x i8]* @.str27, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %43) #8
  call void @llvm.lifetime.end(i64 48, i8* %43) #3
  %47 = bitcast %struct.t_sched_data* %data.i35 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %47) #3
  %48 = getelementptr inbounds %struct.t_sched_data* %data.i35, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %48, align 8, !tbaa !39
  %49 = getelementptr inbounds %struct.t_sched_data* %data.i35, i64 0, i32 1
  store i32 0, i32* %49, align 8, !tbaa !42
  %50 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %47) #8
  call void @llvm.lifetime.end(i64 48, i8* %47) #3
  %51 = bitcast %struct.t_sched_data* %data.i36 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %51) #3
  %52 = getelementptr inbounds %struct.t_sched_data* %data.i36, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %52, align 8, !tbaa !39
  %53 = getelementptr inbounds %struct.t_sched_data* %data.i36, i64 0, i32 1
  store i32 0, i32* %53, align 8, !tbaa !42
  %54 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %51) #8
  call void @llvm.lifetime.end(i64 48, i8* %51) #3
  %55 = bitcast %struct.t_sched_data* %data.i37 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %55) #3
  %56 = getelementptr inbounds %struct.t_sched_data* %data.i37, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %56, align 8, !tbaa !39
  %57 = getelementptr inbounds %struct.t_sched_data* %data.i37, i64 0, i32 1
  store i32 0, i32* %57, align 8, !tbaa !42
  %58 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([19 x i8]* @.str30, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %55) #8
  call void @llvm.lifetime.end(i64 48, i8* %55) #3
  %puts7 = call i32 @puts(i8* getelementptr inbounds ([17 x i8]* @str93, i64 0, i64 0))
  %59 = load i32* @indent_level, align 4, !tbaa !38
  %60 = add nsw i32 %59, 2
  store i32 %60, i32* @indent_level, align 4, !tbaa !38
  %61 = bitcast %struct.t_sched_data* %data.i38 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %61) #3
  %62 = getelementptr inbounds %struct.t_sched_data* %data.i38, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %62, align 8, !tbaa !39
  %63 = getelementptr inbounds %struct.t_sched_data* %data.i38, i64 0, i32 1
  store i32 0, i32* %63, align 8, !tbaa !42
  %64 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([23 x i8]* @.str32, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %61) #8
  call void @llvm.lifetime.end(i64 48, i8* %61) #3
  %65 = load i32* @indent_level, align 4, !tbaa !38
  %66 = add nsw i32 %65, -2
  store i32 %66, i32* @indent_level, align 4, !tbaa !38
  %puts8 = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str106, i64 0, i64 0))
  %puts9 = call i32 @puts(i8* getelementptr inbounds ([33 x i8]* @str95, i64 0, i64 0))
  %67 = load i32* @indent_level, align 4, !tbaa !38
  %68 = add nsw i32 %67, 2
  store i32 %68, i32* @indent_level, align 4, !tbaa !38
  %69 = bitcast %struct.t_sched_data* %data.i39 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %69) #3
  %70 = getelementptr inbounds %struct.t_sched_data* %data.i39, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %70, align 8, !tbaa !39
  %71 = getelementptr inbounds %struct.t_sched_data* %data.i39, i64 0, i32 1
  store i32 0, i32* %71, align 8, !tbaa !42
  %72 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([15 x i8]* @.str35, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %69) #8
  call void @llvm.lifetime.end(i64 48, i8* %69) #3
  %73 = load i32* @indent_level, align 4, !tbaa !38
  %74 = add nsw i32 %73, -2
  store i32 %74, i32* @indent_level, align 4, !tbaa !38
  %puts10 = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str106, i64 0, i64 0))
  %puts11 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str105, i64 0, i64 0))
  %75 = load i32* @indent_level, align 4, !tbaa !38
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* @indent_level, align 4, !tbaa !38
  %77 = bitcast %struct.t_sched_data* %data.i40 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %77) #3
  %78 = getelementptr inbounds %struct.t_sched_data* %data.i40, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %78, align 8, !tbaa !39
  %79 = getelementptr inbounds %struct.t_sched_data* %data.i40, i64 0, i32 1
  store i32 0, i32* %79, align 8, !tbaa !42
  %80 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([20 x i8]* @.str37, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %77) #8
  call void @llvm.lifetime.end(i64 48, i8* %77) #3
  %81 = bitcast %struct.t_sched_data* %data.i41 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %81) #3
  %82 = getelementptr inbounds %struct.t_sched_data* %data.i41, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %82, align 8, !tbaa !39
  %83 = getelementptr inbounds %struct.t_sched_data* %data.i41, i64 0, i32 1
  store i32 0, i32* %83, align 8, !tbaa !42
  %84 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %81) #8
  call void @llvm.lifetime.end(i64 48, i8* %81) #3
  %85 = bitcast %struct.t_sched_data* %data.i42 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %85) #3
  %86 = getelementptr inbounds %struct.t_sched_data* %data.i42, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %86, align 8, !tbaa !39
  %87 = getelementptr inbounds %struct.t_sched_data* %data.i42, i64 0, i32 1
  store i32 0, i32* %87, align 8, !tbaa !42
  %88 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([19 x i8]* @.str39, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %85) #8
  call void @llvm.lifetime.end(i64 48, i8* %85) #3
  %89 = load i32* @indent_level, align 4, !tbaa !38
  %90 = add nsw i32 %89, -2
  store i32 %90, i32* @indent_level, align 4, !tbaa !38
  %puts12 = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str106, i64 0, i64 0))
  %putchar13 = call i32 @putchar(i32 10) #3
  %puts14 = call i32 @puts(i8* getelementptr inbounds ([25 x i8]* @str99, i64 0, i64 0))
  %puts15 = call i32 @puts(i8* getelementptr inbounds ([22 x i8]* @str100, i64 0, i64 0))
  %puts16 = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str101, i64 0, i64 0))
  %puts17 = call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @str102, i64 0, i64 0))
  %91 = bitcast %struct.t_sched_data* %data.i43 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %91) #3
  %92 = getelementptr inbounds %struct.t_sched_data* %data.i43, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %92, align 8, !tbaa !39
  %93 = getelementptr inbounds %struct.t_sched_data* %data.i43, i64 0, i32 1
  store i32 0, i32* %93, align 8, !tbaa !42
  %94 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([19 x i8]* @.str44, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %91) #8
  call void @llvm.lifetime.end(i64 48, i8* %91) #3
  %95 = bitcast %struct.t_sched_data* %data.i44 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %95) #3
  %96 = getelementptr inbounds %struct.t_sched_data* %data.i44, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %96, align 8, !tbaa !39
  %97 = getelementptr inbounds %struct.t_sched_data* %data.i44, i64 0, i32 1
  store i32 0, i32* %97, align 8, !tbaa !42
  %98 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([13 x i8]* @.str45, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %95) #8
  call void @llvm.lifetime.end(i64 48, i8* %95) #3
  %99 = bitcast %struct.t_sched_data* %data.i45 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %99) #3
  %100 = getelementptr inbounds %struct.t_sched_data* %data.i45, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %100, align 8, !tbaa !39
  %101 = getelementptr inbounds %struct.t_sched_data* %data.i45, i64 0, i32 1
  store i32 0, i32* %101, align 8, !tbaa !42
  %102 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([18 x i8]* @.str46, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %99) #8
  call void @llvm.lifetime.end(i64 48, i8* %99) #3
  %103 = bitcast %struct.t_sched_data* %data.i46 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %103) #3
  %104 = getelementptr inbounds %struct.t_sched_data* %data.i46, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %104, align 8, !tbaa !39
  %105 = getelementptr inbounds %struct.t_sched_data* %data.i46, i64 0, i32 1
  store i32 0, i32* %105, align 8, !tbaa !42
  %106 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %103) #8
  call void @llvm.lifetime.end(i64 48, i8* %103) #3
  %107 = bitcast %struct.t_sched_data* %data.i47 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %107) #3
  %108 = getelementptr inbounds %struct.t_sched_data* %data.i47, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %108, align 8, !tbaa !39
  %109 = getelementptr inbounds %struct.t_sched_data* %data.i47, i64 0, i32 1
  store i32 0, i32* %109, align 8, !tbaa !42
  %110 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([10 x i8]* @.str48, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %107) #8
  call void @llvm.lifetime.end(i64 48, i8* %107) #3
  %111 = bitcast %struct.t_sched_data* %data.i48 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %111) #3
  %112 = getelementptr inbounds %struct.t_sched_data* %data.i48, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %112, align 8, !tbaa !39
  %113 = getelementptr inbounds %struct.t_sched_data* %data.i48, i64 0, i32 1
  store i32 0, i32* %113, align 8, !tbaa !42
  %114 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([15 x i8]* @.str49, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %111) #8
  call void @llvm.lifetime.end(i64 48, i8* %111) #3
  %115 = bitcast %struct.t_sched_data* %data.i49 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %115) #3
  %116 = getelementptr inbounds %struct.t_sched_data* %data.i49, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %116, align 8, !tbaa !39
  %117 = getelementptr inbounds %struct.t_sched_data* %data.i49, i64 0, i32 1
  store i32 0, i32* %117, align 8, !tbaa !42
  %118 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %115) #8
  call void @llvm.lifetime.end(i64 48, i8* %115) #3
  %119 = bitcast %struct.t_sched_data* %data.i50 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %119) #3
  %120 = getelementptr inbounds %struct.t_sched_data* %data.i50, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %120, align 8, !tbaa !39
  %121 = getelementptr inbounds %struct.t_sched_data* %data.i50, i64 0, i32 1
  store i32 0, i32* %121, align 8, !tbaa !42
  %122 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %119) #8
  call void @llvm.lifetime.end(i64 48, i8* %119) #3
  %123 = bitcast %struct.t_sched_data* %data.i51 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %123) #3
  %124 = getelementptr inbounds %struct.t_sched_data* %data.i51, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %124, align 8, !tbaa !39
  %125 = getelementptr inbounds %struct.t_sched_data* %data.i51, i64 0, i32 1
  store i32 0, i32* %125, align 8, !tbaa !42
  %126 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([19 x i8]* @.str30, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %123) #8
  call void @llvm.lifetime.end(i64 48, i8* %123) #3
  %puts18 = call i32 @puts(i8* getelementptr inbounds ([20 x i8]* @str103, i64 0, i64 0))
  %127 = load i32* @indent_level, align 4, !tbaa !38
  %128 = add nsw i32 %127, 2
  store i32 %128, i32* @indent_level, align 4, !tbaa !38
  %129 = bitcast %struct.t_sched_data* %data.i52 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %129) #3
  %130 = getelementptr inbounds %struct.t_sched_data* %data.i52, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %130, align 8, !tbaa !39
  %131 = getelementptr inbounds %struct.t_sched_data* %data.i52, i64 0, i32 1
  store i32 0, i32* %131, align 8, !tbaa !42
  %132 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([16 x i8]* @.str51, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %129) #8
  call void @llvm.lifetime.end(i64 48, i8* %129) #3
  %133 = load i32* @indent_level, align 4, !tbaa !38
  %134 = add nsw i32 %133, -2
  store i32 %134, i32* @indent_level, align 4, !tbaa !38
  %puts19 = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str106, i64 0, i64 0))
  %puts20 = call i32 @puts(i8* getelementptr inbounds ([18 x i8]* @str105, i64 0, i64 0))
  %135 = load i32* @indent_level, align 4, !tbaa !38
  %136 = add nsw i32 %135, 2
  store i32 %136, i32* @indent_level, align 4, !tbaa !38
  %137 = bitcast %struct.t_sched_data* %data.i53 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %137) #3
  %138 = getelementptr inbounds %struct.t_sched_data* %data.i53, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %138, align 8, !tbaa !39
  %139 = getelementptr inbounds %struct.t_sched_data* %data.i53, i64 0, i32 1
  store i32 0, i32* %139, align 8, !tbaa !42
  %140 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([20 x i8]* @.str37, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %137) #8
  call void @llvm.lifetime.end(i64 48, i8* %137) #3
  %141 = bitcast %struct.t_sched_data* %data.i54 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %141) #3
  %142 = getelementptr inbounds %struct.t_sched_data* %data.i54, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %142, align 8, !tbaa !39
  %143 = getelementptr inbounds %struct.t_sched_data* %data.i54, i64 0, i32 1
  store i32 0, i32* %143, align 8, !tbaa !42
  %144 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %141) #8
  call void @llvm.lifetime.end(i64 48, i8* %141) #3
  %145 = bitcast %struct.t_sched_data* %data.i55 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %145) #3
  %146 = getelementptr inbounds %struct.t_sched_data* %data.i55, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %146, align 8, !tbaa !39
  %147 = getelementptr inbounds %struct.t_sched_data* %data.i55, i64 0, i32 1
  store i32 0, i32* %147, align 8, !tbaa !42
  %148 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([19 x i8]* @.str39, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %145) #8
  call void @llvm.lifetime.end(i64 48, i8* %145) #3
  %149 = load i32* @indent_level, align 4, !tbaa !38
  %150 = add nsw i32 %149, -2
  store i32 %150, i32* @indent_level, align 4, !tbaa !38
  %puts21 = call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str106, i64 0, i64 0))
  %puts22 = call i32 @puts(i8* getelementptr inbounds ([8 x i8]* @str107, i64 0, i64 0))
  %puts23 = call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str108, i64 0, i64 0))
  %151 = bitcast %struct.t_sched_data* %data.i56 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %151) #3
  %152 = getelementptr inbounds %struct.t_sched_data* %data.i56, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %152, align 8, !tbaa !39
  %153 = getelementptr inbounds %struct.t_sched_data* %data.i56, i64 0, i32 1
  store i32 0, i32* %153, align 8, !tbaa !42
  %154 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([15 x i8]* @.str54, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %151) #8
  call void @llvm.lifetime.end(i64 48, i8* %151) #3
  %puts24 = call i32 @puts(i8* getelementptr inbounds ([20 x i8]* @str109, i64 0, i64 0))
  %155 = bitcast %struct.t_sched_data* %data.i57 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %155) #3
  %156 = getelementptr inbounds %struct.t_sched_data* %data.i57, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %156, align 8, !tbaa !39
  %157 = getelementptr inbounds %struct.t_sched_data* %data.i57, i64 0, i32 1
  store i32 0, i32* %157, align 8, !tbaa !42
  %158 = call i32 @CCTKi_DoScheduleTraverse(i8* getelementptr inbounds ([14 x i8]* @.str56, i64 0, i64 0), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %155) #8
  call void @llvm.lifetime.end(i64 48, i8* %155) #3
  br label %163

SchedulePrint.exit:                               ; preds = %0
  %159 = bitcast %struct.t_sched_data* %data.i58 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %159) #3
  %160 = getelementptr inbounds %struct.t_sched_data* %data.i58, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %160, align 8, !tbaa !39
  %161 = getelementptr inbounds %struct.t_sched_data* %data.i58, i64 0, i32 1
  store i32 0, i32* %161, align 8, !tbaa !42
  %162 = call i32 @CCTKi_DoScheduleTraverse(i8* %where, i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintEntry to i32 (i8*, i8*)*), i32 (i8*, i8*)* bitcast (i32 (%struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintExit to i32 (i8*, i8*)*), i32 (i32, i8**, i8*, i8*, i32)* bitcast (i32 (i32, i8**, %struct.t_attribute*, %struct.t_sched_data*, i32)* @CCTKi_SchedulePrintWhile to i32 (i32, i8**, i8*, i8*, i32)*), i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintFunction to i32 (i8*, i8*, i8*)*), i8* %159) #8
  call void @llvm.lifetime.end(i64 48, i8* %159) #3
  br label %163

; <label>:163                                     ; preds = %SchedulePrint.exit, %2
  ret i32 0
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SchedulePrintTimes(i8* %where) #1 {
  %data = alloca %struct.t_sched_data, align 8
  %1 = bitcast %struct.t_sched_data* %data to i8*
  call void @llvm.lifetime.start(i64 48, i8* %1) #3
  %2 = load %struct.cTimerData** @timerinfo, align 8, !tbaa !13
  %3 = icmp eq %struct.cTimerData* %2, null
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.cTimerData* @CCTK_TimerCreateData() #8
  store %struct.cTimerData* %5, %struct.cTimerData** @timerinfo, align 8, !tbaa !13
  br label %6

; <label>:6                                       ; preds = %0, %4
  %.in = phi %struct.cTimerData* [ %2, %0 ], [ %5, %4 ]
  %7 = ptrtoint %struct.cTimerData* %.in to i64
  %8 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 0
  store %struct.cGH* null, %struct.cGH** %8, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 1
  store i32 0, i32* %9, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 4
  store i32 1, i32* %10, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 2
  %12 = bitcast %struct.cTimerData** %11 to i64*
  store i64 %7, i64* %12, align 8, !tbaa !44
  %13 = tail call %struct.cTimerData* @CCTK_TimerCreateData() #8
  %14 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 3
  store %struct.cTimerData* %13, %struct.cTimerData** %14, align 8, !tbaa !45
  %15 = icmp eq i8* %where, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %6
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([23 x i8]* @.str32, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([16 x i8]* @.str51, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([19 x i8]* @.str21, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([19 x i8]* @.str22, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([13 x i8]* @.str23, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([18 x i8]* @.str24, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([23 x i8]* @.str25, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([17 x i8]* @.str26, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([22 x i8]* @.str27, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([19 x i8]* @.str44, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([13 x i8]* @.str45, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([18 x i8]* @.str46, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([10 x i8]* @.str48, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([15 x i8]* @.str49, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([19 x i8]* @.str30, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([20 x i8]* @.str37, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([19 x i8]* @.str39, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([15 x i8]* @.str54, i64 0, i64 0), %struct.t_sched_data* %data) #9
  call fastcc void @SchedulePrintTimes(i8* getelementptr inbounds ([14 x i8]* @.str56, i64 0, i64 0), %struct.t_sched_data* %data) #9
  br label %18

; <label>:17                                      ; preds = %6
  call fastcc void @SchedulePrintTimes(i8* %where, %struct.t_sched_data* %data) #9
  br label %18

; <label>:18                                      ; preds = %17, %16
  %19 = load %struct.cTimerData** %14, align 8, !tbaa !45
  %20 = call i32 @CCTK_TimerDestroyData(%struct.cTimerData* %19) #8
  %21 = load i32* @total_timer, align 4, !tbaa !38
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %31

; <label>:23                                      ; preds = %18
  %24 = call i32 @CCTK_TimerStopI(i32 %21) #8
  %25 = load i32* @total_timer, align 4, !tbaa !38
  %26 = load %struct.cTimerData** @timerinfo, align 8, !tbaa !13
  %27 = call i32 @CCTK_TimerI(i32 %25, %struct.cTimerData* %26) #8
  %28 = load %struct.cTimerData** @timerinfo, align 8, !tbaa !13
  call fastcc void @CCTKi_SchedulePrintTimerInfo(%struct.cTimerData* %28, %struct.cTimerData* null, i8* getelementptr inbounds ([1 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str58, i64 0, i64 0)) #9
  %29 = load i32* @total_timer, align 4, !tbaa !38
  %30 = call i32 @CCTK_TimerStartI(i32 %29) #8
  br label %31

; <label>:31                                      ; preds = %23, %18
  call void @llvm.lifetime.end(i64 48, i8* %1) #3
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare %struct.cTimerData* @CCTK_TimerCreateData() #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @SchedulePrintTimes(i8* %where, %struct.t_sched_data* %data) #1 {
  %1 = icmp eq i8* %where, null
  br i1 %1, label %44, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 3
  %4 = load %struct.cTimerData** %3, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.cTimerData* %4, i64 0, i32 1
  %6 = bitcast %struct.cTimerVal** %5 to i8**
  %7 = load i8** %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.cTimerData* %4, i64 0, i32 0
  %9 = load i32* %8, align 4, !tbaa !48
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 5
  %12 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %7, i1 false)
  %13 = tail call i8* @__memset_chk(i8* %7, i32 0, i64 %11, i64 %12) #8
  %14 = bitcast %struct.t_sched_data* %data to i8*
  %15 = tail call i32 @CCTKi_DoScheduleTraverse(i8* %where, i32 (i8*, i8*)* null, i32 (i8*, i8*)* null, i32 (i32, i8**, i8*, i8*, i32)* null, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.t_attribute*, %struct.t_sched_data*)* @CCTKi_SchedulePrintTimesFunction to i32 (i8*, i8*, i8*)*), i8* %14) #8
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %.preheader, label %44

.preheader:                                       ; preds = %2
  %17 = load %struct.cTimerData** %3, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.cTimerData* %17, i64 0, i32 0
  %19 = load i32* %18, align 4, !tbaa !48
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %21 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 2
  %22 = load %struct.cTimerData** %21, align 8, !tbaa !44
  %23 = getelementptr inbounds %struct.cTimerData* %22, i64 0, i32 1
  %24 = load %struct.cTimerVal** %23, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.cTimerData* %17, i64 0, i32 1
  %26 = load %struct.cTimerVal** %25, align 8, !tbaa !46
  %27 = sext i32 %19 to i64
  br label %28

; <label>:28                                      ; preds = %.lr.ph, %28
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %28 ]
  %29 = getelementptr inbounds %struct.cTimerVal* %24, i64 %indvars.iv, i32 0
  %30 = load i32* %29, align 4, !tbaa !49
  %31 = getelementptr inbounds %struct.cTimerVal* %26, i64 %indvars.iv, i32 0
  store i32 %30, i32* %31, align 4, !tbaa !49
  %32 = getelementptr inbounds %struct.cTimerVal* %24, i64 %indvars.iv, i32 1
  %33 = bitcast i8** %32 to <2 x i64>*
  %34 = load <2 x i64>* %33, align 8, !tbaa !13
  %35 = getelementptr inbounds %struct.cTimerVal* %26, i64 %indvars.iv, i32 1
  %36 = bitcast i8** %35 to <2 x i64>*
  store <2 x i64> %34, <2 x i64>* %36, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %37 = icmp slt i64 %indvars.iv.next, %27
  br i1 %37, label %28, label %._crit_edge

._crit_edge:                                      ; preds = %28, %.preheader
  %38 = tail call i64 @strlen(i8* %where) #8
  %39 = add i64 %38, 16
  %40 = tail call i8* @malloc(i64 %39) #8
  %41 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %40, i1 false)
  %42 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %40, i32 0, i64 %41, i8* getelementptr inbounds ([18 x i8]* @.str79, i64 0, i64 0), i8* %where) #8
  %43 = load %struct.cTimerData** %3, align 8, !tbaa !45
  tail call fastcc void @CCTKi_SchedulePrintTimerInfo(%struct.cTimerData* %43, %struct.cTimerData* null, i8* getelementptr inbounds ([1 x i8]* @.str57, i64 0, i64 0), i8* %40) #9
  tail call void @free(i8* %40) #9
  br label %44

; <label>:44                                      ; preds = %0, %2, %._crit_edge
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_TimerDestroyData(%struct.cTimerData*) #2

; Function Attrs: optsize
declare i32 @CCTK_TimerStopI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_TimerI(i32, %struct.cTimerData*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CCTKi_SchedulePrintTimerInfo(%struct.cTimerData* nocapture readonly %timer, %struct.cTimerData* readonly %total_time, i8* %where, i8* %description) #1 {
  %1 = load i32* @indent_level, align 4, !tbaa !38
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i64 0, i64 0), i32 %1, i8* getelementptr inbounds ([2 x i8]* @.str77, i64 0, i64 0)) #8
  br label %5

; <label>:5                                       ; preds = %3, %0
  %6 = load i8* %where, align 1, !tbaa !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %5
  tail call fastcc void @PrintDelimiterLine(i8 signext 45, %struct.cTimerData* %timer) #9
  br label %9

; <label>:9                                       ; preds = %8, %5
  %10 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str80, i64 0, i64 0), i8* %where, i8* %description) #8
  %11 = getelementptr inbounds %struct.cTimerData* %timer, i64 0, i32 0
  %12 = load i32* %11, align 4, !tbaa !48
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %9
  %14 = getelementptr inbounds %struct.cTimerData* %timer, i64 0, i32 1
  %15 = icmp eq %struct.cTimerData* %total_time, null
  %16 = getelementptr inbounds %struct.cTimerData* %total_time, i64 0, i32 1
  br label %17

; <label>:17                                      ; preds = %.lr.ph, %74
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %74 ]
  %18 = load %struct.cTimerVal** %14, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.cTimerVal* %18, i64 %indvars.iv, i32 1
  %20 = load i8** %19, align 8, !tbaa !51
  %21 = tail call i64 @strlen(i8* %20) #8
  %22 = getelementptr inbounds %struct.cTimerVal* %18, i64 %indvars.iv, i32 2
  %23 = load i8** %22, align 8, !tbaa !52
  %24 = tail call i64 @strlen(i8* %23) #8
  %25 = add i64 %21, 3
  %26 = add i64 %25, %24
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.cTimerVal* %18, i64 %indvars.iv, i32 0
  %29 = load i32* %28, align 4, !tbaa !49
  switch i32 %29, label %72 [
    i32 1, label %30
    i32 2, label %45
    i32 3, label %57
  ]

; <label>:30                                      ; preds = %17
  %31 = getelementptr inbounds %struct.cTimerVal* %18, i64 %indvars.iv, i32 3
  %32 = bitcast %union.anon* %31 to i32*
  %33 = load i32* %32, align 4, !tbaa !38
  %34 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str84, i64 0, i64 0), i32 %27, i32 %33) #8
  br i1 %15, label %74, label %35

; <label>:35                                      ; preds = %30
  %36 = load %struct.cTimerVal** %14, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.cTimerVal* %36, i64 %indvars.iv, i32 3
  %38 = bitcast %union.anon* %37 to i32*
  %39 = load i32* %38, align 4, !tbaa !38
  %40 = load %struct.cTimerVal** %16, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.cTimerVal* %40, i64 %indvars.iv, i32 3
  %42 = bitcast %union.anon* %41 to i32*
  %43 = load i32* %42, align 4, !tbaa !38
  %44 = add nsw i32 %43, %39
  store i32 %44, i32* %42, align 4, !tbaa !38
  br label %74

; <label>:45                                      ; preds = %17
  %46 = getelementptr inbounds %struct.cTimerVal* %18, i64 %indvars.iv, i32 3, i32 0
  %47 = load i64* %46, align 8, !tbaa !53
  %48 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str85, i64 0, i64 0), i32 %27, i64 %47) #8
  br i1 %15, label %74, label %49

; <label>:49                                      ; preds = %45
  %50 = load %struct.cTimerVal** %14, align 8, !tbaa !46
  %51 = getelementptr inbounds %struct.cTimerVal* %50, i64 %indvars.iv, i32 3, i32 0
  %52 = load i64* %51, align 8, !tbaa !53
  %53 = load %struct.cTimerVal** %16, align 8, !tbaa !46
  %54 = getelementptr inbounds %struct.cTimerVal* %53, i64 %indvars.iv, i32 3, i32 0
  %55 = load i64* %54, align 8, !tbaa !53
  %56 = add nsw i64 %55, %52
  store i64 %56, i64* %54, align 8, !tbaa !53
  br label %74

; <label>:57                                      ; preds = %17
  %58 = getelementptr inbounds %struct.cTimerVal* %18, i64 %indvars.iv, i32 3
  %59 = bitcast %union.anon* %58 to double*
  %60 = load double* %59, align 8, !tbaa !55
  %61 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str86, i64 0, i64 0), i32 %27, double %60) #8
  br i1 %15, label %74, label %62

; <label>:62                                      ; preds = %57
  %63 = load %struct.cTimerVal** %14, align 8, !tbaa !46
  %64 = getelementptr inbounds %struct.cTimerVal* %63, i64 %indvars.iv, i32 3
  %65 = bitcast %union.anon* %64 to double*
  %66 = load double* %65, align 8, !tbaa !55
  %67 = load %struct.cTimerVal** %16, align 8, !tbaa !46
  %68 = getelementptr inbounds %struct.cTimerVal* %67, i64 %indvars.iv, i32 3
  %69 = bitcast %union.anon* %68 to double*
  %70 = load double* %69, align 8, !tbaa !55
  %71 = fadd double %66, %70
  store double %71, double* %69, align 8, !tbaa !55
  br label %74

; <label>:72                                      ; preds = %17
  %73 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str87, i64 0, i64 0), i32 2353, i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0)) #8
  br label %74

; <label>:74                                      ; preds = %30, %45, %57, %72, %35, %49, %62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %75 = load i32* %11, align 4, !tbaa !48
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %indvars.iv.next, %76
  br i1 %77, label %17, label %._crit_edge

._crit_edge:                                      ; preds = %74, %9
  %78 = tail call i32 @putchar(i32 10) #8
  %79 = load i8* %where, align 1, !tbaa !10
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %82

; <label>:81                                      ; preds = %._crit_edge
  tail call fastcc void @PrintDelimiterLine(i8 signext 45, %struct.cTimerData* %timer) #9
  br label %82

; <label>:82                                      ; preds = %81, %._crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_TranslateLanguage(i8* %sval) #1 {
  %1 = tail call i32 @CCTK_Equals(i8* %sval, i8* getelementptr inbounds ([2 x i8]* @.str59, i64 0, i64 0)) #8
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_Equals(i8* %sval, i8* getelementptr inbounds ([8 x i8]* @.str60, i64 0, i64 0)) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %3
  %7 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !13
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([21 x i8]* @.str61, i64 0, i64 0), i8* %sval) #8
  br label %9

; <label>:9                                       ; preds = %3, %0, %6
  %retcode.0 = phi i32 [ 0, %6 ], [ 1, %0 ], [ 2, %3 ]
  ret i32 %retcode.0
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @CCTKi_ScheduleCallFunction(i8* %function, %struct.t_attribute* %attribute, %struct.t_sched_data* nocapture %data) #1 {
  %1 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 8
  %2 = load i32* %1, align 4, !tbaa !33
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @CCTK_TimerStartI(i32 %2) #8
  br label %6

; <label>:6                                       ; preds = %4, %0
  %7 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 6
  %8 = load i32 (i8*, %struct.cFunctionData*, i8*)** %7, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 3
  %10 = bitcast %struct.t_sched_data* %data to i8**
  %11 = load i8** %10, align 8, !tbaa !39
  %12 = tail call i32 %8(i8* %function, %struct.cFunctionData* %9, i8* %11) #8
  %13 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 5
  store i32 %12, i32* %13, align 4, !tbaa !57
  %14 = load i32* %1, align 4, !tbaa !33
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %6
  %17 = tail call i32 @CCTK_TimerStopI(i32 %14) #8
  br label %18

; <label>:18                                      ; preds = %16, %6
  ret i32 1
}

; Function Attrs: optsize
declare i32 @CCTKi_DoScheduleTraverse(i8*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, i32 (i32, i8**, i8*, i8*, i32)*, i32 (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @CCTKi_ScheduleCallEntry(%struct.t_attribute* %attribute, %struct.t_sched_data* nocapture %data) #1 {
  %1 = icmp eq %struct.t_attribute* %attribute, null
  br i1 %1, label %71, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 1
  %4 = load i32* %3, align 4, !tbaa !42
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %.preheader3, label %.thread.preheader

.preheader3:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 3, i32 6
  %7 = load i32* %6, align 4, !tbaa !31
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph12, label %.loopexit

.lr.ph12:                                         ; preds = %.preheader3
  %9 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 3, i32 7
  %10 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 0
  br label %11

; <label>:11                                      ; preds = %.lr.ph12, %._crit_edge
  %indvars.iv17 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next18, %._crit_edge ]
  %go.011 = phi i32 [ 0, %.lr.ph12 ], [ %go.1.lcssa, %._crit_edge ]
  %12 = load i32** %9, align 8, !tbaa !21
  %13 = getelementptr inbounds i32* %12, i64 %indvars.iv17
  %14 = load i32* %13, align 4, !tbaa !38
  %15 = tail call i32 @CCTK_FirstVarIndexI(i32 %14) #8
  %16 = load i32** %9, align 8, !tbaa !21
  %17 = getelementptr inbounds i32* %16, i64 %indvars.iv17
  %18 = load i32* %17, align 4, !tbaa !38
  %19 = tail call i32 @CCTK_NumVarsInGroupI(i32 %18) #8
  %20 = add i32 %15, -1
  %21 = add i32 %20, %19
  %22 = icmp sgt i32 %15, %21
  br i1 %22, label %._crit_edge, label %.lr.ph9

.lr.ph9:                                          ; preds = %11, %28
  %go.18 = phi i32 [ %30, %28 ], [ %go.011, %11 ]
  %indx.07 = phi i32 [ %31, %28 ], [ %15, %11 ]
  %23 = icmp eq i32 %go.18, 0
  br i1 %23, label %24, label %28

; <label>:24                                      ; preds = %.lr.ph9
  %25 = load %struct.cGH** %10, align 8, !tbaa !39
  %26 = tail call i32 @CCTKi_TriggerSaysGo(%struct.cGH* %25, i32 %indx.07) #8
  %27 = icmp ne i32 %26, 0
  br label %28

; <label>:28                                      ; preds = %.lr.ph9, %24
  %29 = phi i1 [ true, %.lr.ph9 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = add nsw i32 %indx.07, 1
  %32 = icmp slt i32 %indx.07, %21
  br i1 %32, label %.lr.ph9, label %._crit_edge

._crit_edge:                                      ; preds = %28, %11
  %go.1.lcssa = phi i32 [ %go.011, %11 ], [ %30, %28 ]
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %33 = load i32* %6, align 4, !tbaa !31
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %indvars.iv.next18, %34
  br i1 %35, label %11, label %._crit_edge13

._crit_edge13:                                    ; preds = %._crit_edge
  %36 = icmp eq i32 %go.1.lcssa, 0
  br i1 %36, label %.loopexit, label %.thread.preheader

.thread.preheader:                                ; preds = %._crit_edge13, %2
  %go.21.ph = phi i32 [ 1, %2 ], [ %go.1.lcssa, %._crit_edge13 ]
  %37 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 4
  %38 = load i32* %37, align 4, !tbaa !29
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %.lr.ph6, label %.preheader

.lr.ph6:                                          ; preds = %.thread.preheader
  %40 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 0
  %41 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 5
  %42 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 10
  br label %.thread

.preheader:                                       ; preds = %.thread, %.thread.preheader
  %43 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 6
  %44 = load i32* %43, align 4, !tbaa !30
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %46 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 0
  %47 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 7
  %48 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 9
  br label %59

.thread:                                          ; preds = %.lr.ph6, %.thread
  %indvars.iv15 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next16, %.thread ]
  %49 = load %struct.cGH** %40, align 8, !tbaa !39
  %50 = load i32** %41, align 8, !tbaa !19
  %51 = getelementptr inbounds i32* %50, i64 %indvars.iv15
  %52 = load i32* %51, align 4, !tbaa !38
  %53 = tail call i32 @CCTK_EnableGroupStorageI(%struct.cGH* %49, i32 %52) #8
  %54 = load i32** %42, align 8, !tbaa !23
  %55 = getelementptr inbounds i32* %54, i64 %indvars.iv15
  store i32 %53, i32* %55, align 4, !tbaa !38
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %56 = load i32* %37, align 4, !tbaa !29
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %indvars.iv.next16, %57
  br i1 %58, label %.thread, label %.preheader

; <label>:59                                      ; preds = %.lr.ph, %59
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %59 ]
  %60 = load %struct.cGH** %46, align 8, !tbaa !39
  %61 = load i32** %47, align 8, !tbaa !20
  %62 = getelementptr inbounds i32* %61, i64 %indvars.iv
  %63 = load i32* %62, align 4, !tbaa !38
  %64 = tail call i32 @CCTK_EnableGroupCommI(%struct.cGH* %60, i32 %63) #8
  %65 = load i32** %48, align 8, !tbaa !24
  %66 = getelementptr inbounds i32* %65, i64 %indvars.iv
  store i32 %64, i32* %66, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %67 = load i32* %43, align 4, !tbaa !30
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %indvars.iv.next, %68
  br i1 %69, label %59, label %.loopexit

.loopexit:                                        ; preds = %59, %.preheader3, %.preheader, %._crit_edge13
  %go.22 = phi i32 [ 0, %._crit_edge13 ], [ %go.21.ph, %.preheader ], [ 0, %.preheader3 ], [ %go.21.ph, %59 ]
  %70 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 11
  store i32 %go.22, i32* %70, align 4, !tbaa !58
  br label %71

; <label>:71                                      ; preds = %0, %.loopexit
  %go.3 = phi i32 [ %go.22, %.loopexit ], [ 1, %0 ]
  %72 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 5
  store i32 0, i32* %72, align 4, !tbaa !57
  ret i32 %go.3
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @CCTKi_ScheduleCallExit(%struct.t_attribute* readonly %attribute, %struct.t_sched_data* nocapture %data) #1 {
  %1 = icmp eq %struct.t_attribute* %attribute, null
  br i1 %1, label %.loopexit, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 11
  %4 = load i32* %3, align 4, !tbaa !58
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %.loopexit, label %6

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 3, i32 3
  %8 = load i32* %7, align 4, !tbaa !32
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %20

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 5
  %12 = load i32* %11, align 4, !tbaa !57
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

; <label>:14                                      ; preds = %10
  %15 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 0
  %16 = load %struct.cGH** %15, align 8, !tbaa !39
  %17 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 3, i32 4
  %18 = load i32** %17, align 8, !tbaa !22
  %19 = tail call i32 @CCTK_SyncGroupsI(%struct.cGH* %16, i32 %8, i32* %18) #8
  store i32 0, i32* %11, align 4, !tbaa !57
  br label %20

; <label>:20                                      ; preds = %10, %14, %6
  %21 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 1
  %22 = load i32* %21, align 4, !tbaa !42
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %.preheader2, label %.preheader1

.preheader2:                                      ; preds = %20
  %24 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 3, i32 6
  %25 = load i32* %24, align 4, !tbaa !31
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %.lr.ph9, label %.preheader1

.lr.ph9:                                          ; preds = %.preheader2
  %27 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 3, i32 7
  %28 = bitcast %struct.t_sched_data* %data to i8**
  br label %35

.preheader1:                                      ; preds = %._crit_edge, %.preheader2, %20
  %29 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 6
  %30 = load i32* %29, align 4, !tbaa !30
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %.lr.ph5, label %.preheader

.lr.ph5:                                          ; preds = %.preheader1
  %32 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 9
  %33 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 0
  %34 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 7
  br label %60

; <label>:35                                      ; preds = %.lr.ph9, %._crit_edge
  %indvars.iv12 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next13, %._crit_edge ]
  %36 = load i32** %27, align 8, !tbaa !21
  %37 = getelementptr inbounds i32* %36, i64 %indvars.iv12
  %38 = load i32* %37, align 4, !tbaa !38
  %39 = tail call i32 @CCTK_FirstVarIndexI(i32 %38) #8
  %40 = load i32** %27, align 8, !tbaa !21
  %41 = getelementptr inbounds i32* %40, i64 %indvars.iv12
  %42 = load i32* %41, align 4, !tbaa !38
  %43 = tail call i32 @CCTK_NumVarsInGroupI(i32 %42) #8
  %44 = add i32 %39, -1
  %45 = add i32 %44, %43
  %46 = icmp sgt i32 %39, %45
  br i1 %46, label %._crit_edge, label %.lr.ph7

.lr.ph7:                                          ; preds = %35, %.lr.ph7
  %vindex.06 = phi i32 [ %49, %.lr.ph7 ], [ %39, %35 ]
  %47 = load i8** %28, align 8, !tbaa !39
  %48 = tail call i32 @CCTKi_TriggerAction(i8* %47, i32 %vindex.06) #8
  %49 = add nsw i32 %vindex.06, 1
  %50 = icmp slt i32 %vindex.06, %45
  br i1 %50, label %.lr.ph7, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph7, %35
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %51 = load i32* %24, align 4, !tbaa !31
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %indvars.iv.next13, %52
  br i1 %53, label %35, label %.preheader1

.preheader:                                       ; preds = %72, %.preheader1
  %54 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 4
  %55 = load i32* %54, align 4, !tbaa !29
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %57 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 10
  %58 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 0
  %59 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 5
  br label %76

; <label>:60                                      ; preds = %.lr.ph5, %72
  %61 = phi i32 [ %30, %.lr.ph5 ], [ %73, %72 ]
  %indvars.iv10 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next11, %72 ]
  %62 = load i32** %32, align 8, !tbaa !24
  %63 = getelementptr inbounds i32* %62, i64 %indvars.iv10
  %64 = load i32* %63, align 4, !tbaa !38
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

; <label>:66                                      ; preds = %60
  %67 = load %struct.cGH** %33, align 8, !tbaa !39
  %68 = load i32** %34, align 8, !tbaa !20
  %69 = getelementptr inbounds i32* %68, i64 %indvars.iv10
  %70 = load i32* %69, align 4, !tbaa !38
  %71 = tail call i32 @CCTK_DisableGroupCommI(%struct.cGH* %67, i32 %70) #8
  %.pre = load i32* %29, align 4, !tbaa !30
  br label %72

; <label>:72                                      ; preds = %60, %66
  %73 = phi i32 [ %61, %60 ], [ %.pre, %66 ]
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %indvars.iv.next11, %74
  br i1 %75, label %60, label %.preheader

; <label>:76                                      ; preds = %.lr.ph, %88
  %77 = phi i32 [ %55, %.lr.ph ], [ %89, %88 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %88 ]
  %78 = load i32** %57, align 8, !tbaa !23
  %79 = getelementptr inbounds i32* %78, i64 %indvars.iv
  %80 = load i32* %79, align 4, !tbaa !38
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

; <label>:82                                      ; preds = %76
  %83 = load %struct.cGH** %58, align 8, !tbaa !39
  %84 = load i32** %59, align 8, !tbaa !19
  %85 = getelementptr inbounds i32* %84, i64 %indvars.iv
  %86 = load i32* %85, align 4, !tbaa !38
  %87 = tail call i32 @CCTK_DisableGroupStorageI(%struct.cGH* %83, i32 %86) #8
  %.pre14 = load i32* %54, align 4, !tbaa !29
  br label %88

; <label>:88                                      ; preds = %76, %82
  %89 = phi i32 [ %77, %76 ], [ %.pre14, %82 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %90 = sext i32 %89 to i64
  %91 = icmp slt i64 %indvars.iv.next, %90
  br i1 %91, label %76, label %.loopexit

.loopexit:                                        ; preds = %88, %.preheader, %2, %0
  ret i32 1
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @CCTKi_ScheduleCallWhile(i32 %n_whiles, i8** nocapture readonly %whiles, %struct.t_attribute* nocapture readnone %attribute, %struct.t_sched_data* nocapture readonly %data, i32 %first) #1 {
  %1 = icmp sgt i32 %n_whiles, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 0
  %3 = add i32 %n_whiles, -1
  br label %4

; <label>:4                                       ; preds = %14, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %14 ]
  %retcode.02 = phi i32 [ 1, %.lr.ph ], [ %16, %14 ]
  %5 = icmp eq i32 %retcode.02, 0
  br i1 %5, label %14, label %6

; <label>:6                                       ; preds = %4
  %7 = load %struct.cGH** %2, align 8, !tbaa !39
  %8 = getelementptr inbounds i8** %whiles, i64 %indvars.iv
  %9 = load i8** %8, align 8, !tbaa !13
  %10 = tail call i8* @CCTK_VarDataPtr(%struct.cGH* %7, i32 0, i8* %9) #8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32* %11, align 4, !tbaa !38
  %13 = icmp ne i32 %12, 0
  br label %14

; <label>:14                                      ; preds = %4, %6
  %15 = phi i1 [ false, %4 ], [ %13, %6 ]
  %16 = zext i1 %15 to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %._crit_edge, label %4

._crit_edge:                                      ; preds = %14, %0
  %retcode.0.lcssa = phi i32 [ 1, %0 ], [ %16, %14 ]
  ret i32 %retcode.0.lcssa
}

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_NumVarsInGroupI(i32) #2

; Function Attrs: optsize
declare i32 @CCTKi_TriggerSaysGo(%struct.cGH*, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_SyncGroupsI(%struct.cGH*, i32, i32*) #2

; Function Attrs: optsize
declare i32 @CCTKi_TriggerAction(i8*, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_DisableGroupCommI(%struct.cGH*, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_DisableGroupStorageI(%struct.cGH*, i32) #2

; Function Attrs: optsize
declare i8* @CCTK_VarDataPtr(%struct.cGH*, i32, i8*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #4

; Function Attrs: optsize
declare i32 (i8*, i8*)* @CCTKi_FortranWrapper(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CreateGroupIndexList(i32 %n_items, i32* nocapture %array, [1 x %struct.__va_list_tag]* nocapture %ap) #1 {
  %1 = icmp sgt i32 %n_items, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  %5 = add i32 %n_items, -1
  br label %6

; <label>:6                                       ; preds = %17, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %17 ]
  %7 = load i32* %2, align 4
  %8 = icmp ult i32 %7, 41
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %6
  %10 = load i8** %3, align 8
  %11 = sext i32 %7 to i64
  %12 = getelementptr i8* %10, i64 %11
  %13 = add i32 %7, 8
  store i32 %13, i32* %2, align 4
  br label %17

; <label>:14                                      ; preds = %6
  %15 = load i8** %4, align 8
  %16 = getelementptr i8* %15, i64 8
  store i8* %16, i8** %4, align 8
  br label %17

; <label>:17                                      ; preds = %14, %9
  %.in = phi i8* [ %12, %9 ], [ %15, %14 ]
  %18 = bitcast i8* %.in to i8**
  %19 = load i8** %18, align 8
  %20 = tail call i32 @CCTK_GroupIndex(i8* %19) #8
  %21 = getelementptr inbounds i32* %array, i64 %indvars.iv
  store i32 %20, i32* %21, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %17, %0
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc %struct.T_SCHED_MODIFIER* @CreateTypedModifier(%struct.T_SCHED_MODIFIER* %modifier, i8* %type, i32 %n_items, [1 x %struct.__va_list_tag]* nocapture %ap) #1 {
  %1 = icmp sgt i32 %n_items, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  %5 = add i32 %n_items, -1
  br label %6

; <label>:6                                       ; preds = %17, %.lr.ph
  %.02 = phi %struct.T_SCHED_MODIFIER* [ %modifier, %.lr.ph ], [ %20, %17 ]
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %21, %17 ]
  %7 = load i32* %2, align 4
  %8 = icmp ult i32 %7, 41
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %6
  %10 = load i8** %3, align 8
  %11 = sext i32 %7 to i64
  %12 = getelementptr i8* %10, i64 %11
  %13 = add i32 %7, 8
  store i32 %13, i32* %2, align 4
  br label %17

; <label>:14                                      ; preds = %6
  %15 = load i8** %4, align 8
  %16 = getelementptr i8* %15, i64 8
  store i8* %16, i8** %4, align 8
  br label %17

; <label>:17                                      ; preds = %14, %9
  %.in = phi i8* [ %12, %9 ], [ %15, %14 ]
  %18 = bitcast i8* %.in to i8**
  %19 = load i8** %18, align 8
  %20 = tail call %struct.T_SCHED_MODIFIER* @CCTKi_ScheduleAddModifier(%struct.T_SCHED_MODIFIER* %.02, i8* %type, i8* %19) #8
  %21 = add nuw nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %i.01, %5
  br i1 %exitcond, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %17, %0
  %.0.lcssa = phi %struct.T_SCHED_MODIFIER* [ %modifier, %0 ], [ %20, %17 ]
  ret %struct.T_SCHED_MODIFIER* %.0.lcssa
}

; Function Attrs: optsize
declare %struct.T_SCHED_MODIFIER* @CCTKi_ScheduleAddModifier(%struct.T_SCHED_MODIFIER*, i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @CCTKi_SchedulePrintEntry(%struct.t_attribute* nocapture readnone %attribute, %struct.t_sched_data* nocapture readnone %data) #1 {
  %1 = load i32* @indent_level, align 4, !tbaa !38
  %2 = add nsw i32 %1, 2
  store i32 %2, i32* @indent_level, align 4, !tbaa !38
  ret i32 1
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @CCTKi_SchedulePrintExit(%struct.t_attribute* nocapture readnone %attribute, %struct.t_sched_data* nocapture readnone %data) #1 {
  %1 = load i32* @indent_level, align 4, !tbaa !38
  %2 = add nsw i32 %1, -2
  store i32 %2, i32* @indent_level, align 4, !tbaa !38
  ret i32 1
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @CCTKi_SchedulePrintWhile(i32 %n_whiles, i8** nocapture readonly %whiles, %struct.t_attribute* nocapture readnone %attribute, %struct.t_sched_data* nocapture readnone %data, i32 %first) #1 {
  %1 = icmp eq i32 %first, 0
  %2 = load i32* @indent_level, align 4, !tbaa !38
  %3 = add nsw i32 %2, 9
  br i1 %1, label %16, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i64 0, i64 0), i32 %3, i8* getelementptr inbounds ([8 x i8]* @.str72, i64 0, i64 0)) #8
  %6 = icmp sgt i32 %n_whiles, 0
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %4
  %7 = add i32 %n_whiles, -1
  br label %8

; <label>:8                                       ; preds = %12, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %12 ]
  %9 = icmp sgt i64 %indvars.iv, 0
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %8
  %11 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0)) #8
  br label %12

; <label>:12                                      ; preds = %10, %8
  %13 = getelementptr inbounds i8** %whiles, i64 %indvars.iv
  %14 = load i8** %13, align 8, !tbaa !13
  %15 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str74, i64 0, i64 0), i8* %14) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %7
  br i1 %exitcond, label %._crit_edge, label %8

._crit_edge:                                      ; preds = %12, %4
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8]* @str110, i64 0, i64 0))
  br label %18

; <label>:16                                      ; preds = %0
  %17 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i64 0, i64 0), i32 %3, i8* getelementptr inbounds ([11 x i8]* @.str76, i64 0, i64 0)) #8
  br label %18

; <label>:18                                      ; preds = %16, %._crit_edge
  ret i32 %first
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @CCTKi_SchedulePrintFunction(i8* nocapture readnone %function, %struct.t_attribute* nocapture readonly %attribute, %struct.t_sched_data* nocapture readnone %data) #1 {
  %1 = load i32* @indent_level, align 4, !tbaa !38
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i64 0, i64 0), i32 %1, i8* getelementptr inbounds ([2 x i8]* @.str77, i64 0, i64 0)) #8
  br label %5

; <label>:5                                       ; preds = %3, %0
  %6 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 3, i32 10
  %7 = load i8** %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 0
  %9 = load i8** %8, align 8, !tbaa !16
  %10 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0), i8* %7, i8* %9) #8
  ret i32 1
}

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #4

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @CCTKi_SchedulePrintTimesFunction(i8* nocapture readnone %function, %struct.t_attribute* nocapture readonly %attribute, %struct.t_sched_data* nocapture %data) #1 {
  %1 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 8
  %2 = load i32* %1, align 4, !tbaa !33
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %37

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 2
  %6 = load %struct.cTimerData** %5, align 8, !tbaa !44
  %7 = tail call i32 @CCTK_TimerI(i32 %2, %struct.cTimerData* %6) #8
  %8 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 4
  %9 = load i32* %8, align 4, !tbaa !43
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %29, label %11

; <label>:11                                      ; preds = %4
  %12 = load %struct.cTimerData** %5, align 8, !tbaa !44
  tail call fastcc void @PrintDelimiterLine(i8 signext 61, %struct.cTimerData* %12) #8
  %13 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str82, i64 0, i64 0)) #8
  %14 = getelementptr inbounds %struct.cTimerData* %12, i64 0, i32 0
  %15 = load i32* %14, align 4, !tbaa !48
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %.lr.ph.i, label %CCTKi_SchedulePrintTimerHeaders.exit

.lr.ph.i:                                         ; preds = %11
  %17 = getelementptr inbounds %struct.cTimerData* %12, i64 0, i32 1
  br label %18

; <label>:18                                      ; preds = %18, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %18 ]
  %19 = load %struct.cTimerVal** %17, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.cTimerVal* %19, i64 %indvars.iv.i, i32 1
  %21 = load i8** %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.cTimerVal* %19, i64 %indvars.iv.i, i32 2
  %23 = load i8** %22, align 8, !tbaa !52
  %24 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str83, i64 0, i64 0), i8* %21, i8* %23) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %25 = load i32* %14, align 4, !tbaa !48
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %indvars.iv.next.i, %26
  br i1 %27, label %18, label %CCTKi_SchedulePrintTimerHeaders.exit

CCTKi_SchedulePrintTimerHeaders.exit:             ; preds = %18, %11
  %28 = tail call i32 @putchar(i32 10) #8
  tail call fastcc void @PrintDelimiterLine(i8 signext 61, %struct.cTimerData* %12) #8
  store i32 0, i32* %8, align 4, !tbaa !43
  br label %29

; <label>:29                                      ; preds = %4, %CCTKi_SchedulePrintTimerHeaders.exit
  %30 = load %struct.cTimerData** %5, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.t_sched_data* %data, i64 0, i32 3
  %32 = load %struct.cTimerData** %31, align 8, !tbaa !45
  %33 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 3, i32 10
  %34 = load i8** %33, align 8, !tbaa !17
  %35 = getelementptr inbounds %struct.t_attribute* %attribute, i64 0, i32 0
  %36 = load i8** %35, align 8, !tbaa !16
  tail call fastcc void @CCTKi_SchedulePrintTimerInfo(%struct.cTimerData* %30, %struct.cTimerData* %32, i8* %34, i8* %36) #9
  br label %37

; <label>:37                                      ; preds = %29, %0
  ret i32 1
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @PrintDelimiterLine(i8 signext %delimiter, %struct.cTimerData* nocapture readonly %timer) #1 {
  %1 = getelementptr inbounds %struct.cTimerData* %timer, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !48
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph5, label %.lr.ph

.lr.ph5:                                          ; preds = %0
  %4 = getelementptr inbounds %struct.cTimerData* %timer, i64 0, i32 1
  %5 = load %struct.cTimerVal** %4, align 8, !tbaa !46
  %6 = sext i32 %2 to i64
  br label %11

.preheader:                                       ; preds = %11
  %7 = trunc i64 %21 to i32
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.preheader
  %len.0.lcssa6 = phi i32 [ %7, %.preheader ], [ 58, %0 ]
  %9 = sext i8 %delimiter to i32
  %10 = add i32 %len.0.lcssa6, -1
  br label %23

; <label>:11                                      ; preds = %.lr.ph5, %11
  %indvars.iv = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next, %11 ]
  %len.03 = phi i64 [ 58, %.lr.ph5 ], [ %21, %11 ]
  %12 = getelementptr inbounds %struct.cTimerVal* %5, i64 %indvars.iv, i32 1
  %13 = load i8** %12, align 8, !tbaa !51
  %14 = tail call i64 @strlen(i8* %13) #8
  %15 = getelementptr inbounds %struct.cTimerVal* %5, i64 %indvars.iv, i32 2
  %16 = load i8** %15, align 8, !tbaa !52
  %17 = tail call i64 @strlen(i8* %16) #8
  %18 = and i64 %len.03, 4294967295
  %19 = add nuw nsw i64 %18, 6
  %20 = add i64 %19, %14
  %21 = add i64 %20, %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %22 = icmp slt i64 %indvars.iv.next, %6
  br i1 %22, label %11, label %.preheader

; <label>:23                                      ; preds = %23, %.lr.ph
  %i.11 = phi i32 [ 0, %.lr.ph ], [ %25, %23 ]
  %24 = tail call i32 @putchar(i32 %9) #8
  %25 = add nuw nsw i32 %i.11, 1
  %exitcond = icmp eq i32 %i.11, %10
  br i1 %exitcond, label %._crit_edge, label %23

._crit_edge:                                      ; preds = %23, %.preheader
  %26 = tail call i32 @putchar(i32 10) #8
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @putchar(i32) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 16}
!3 = !{!"", !4, i64 0, !6, i64 8, !4, i64 16, !7, i64 20, !6, i64 24, !7, i64 32, !7, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"any pointer", !4, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!3, !4, i64 0}
!9 = !{!3, !6, i64 8}
!10 = !{!4, !4, i64 0}
!11 = !{!12, !4, i64 40}
!12 = !{!"", !6, i64 0, !6, i64 8, !4, i64 16, !3, i64 24, !7, i64 96, !6, i64 104, !7, i64 112, !6, i64 120, !7, i64 128, !6, i64 136, !6, i64 144, !7, i64 152}
!13 = !{!6, !6, i64 0}
!14 = !{!12, !6, i64 72}
!15 = !{!12, !6, i64 80}
!16 = !{!12, !6, i64 0}
!17 = !{!12, !6, i64 88}
!18 = !{!12, !6, i64 8}
!19 = !{!12, !6, i64 104}
!20 = !{!12, !6, i64 120}
!21 = !{!12, !6, i64 64}
!22 = !{!12, !6, i64 48}
!23 = !{!12, !6, i64 144}
!24 = !{!12, !6, i64 136}
!25 = !{!12, !4, i64 16}
!26 = !{!12, !4, i64 24}
!27 = !{!12, !6, i64 32}
!28 = !{!12, !7, i64 56}
!29 = !{!12, !7, i64 96}
!30 = !{!12, !7, i64 112}
!31 = !{!12, !7, i64 60}
!32 = !{!12, !7, i64 44}
!33 = !{!12, !7, i64 128}
!34 = !{!35, !4, i64 8}
!35 = !{!"T_SCHED_MODIFIER", !6, i64 0, !4, i64 8, !6, i64 16}
!36 = !{!35, !6, i64 16}
!37 = !{!35, !6, i64 0}
!38 = !{!7, !7, i64 0}
!39 = !{!40, !6, i64 0}
!40 = !{!"", !6, i64 0, !4, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 36, !6, i64 40}
!41 = !{!40, !6, i64 40}
!42 = !{!40, !4, i64 8}
!43 = !{!40, !7, i64 32}
!44 = !{!40, !6, i64 16}
!45 = !{!40, !6, i64 24}
!46 = !{!47, !6, i64 8}
!47 = !{!"", !7, i64 0, !6, i64 8}
!48 = !{!47, !7, i64 0}
!49 = !{!50, !4, i64 0}
!50 = !{!"", !4, i64 0, !6, i64 8, !6, i64 16, !4, i64 24}
!51 = !{!50, !6, i64 8}
!52 = !{!50, !6, i64 16}
!53 = !{!54, !54, i64 0}
!54 = !{!"long", !4, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"double", !4, i64 0}
!57 = !{!40, !7, i64 36}
!58 = !{!12, !7, i64 152}
