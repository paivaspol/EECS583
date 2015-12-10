; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.IOASCIIGH = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32*, i32*, %struct.PNamedData*, %struct.PNamedData*, %struct.PNamedData*, i32***, i32** }
%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str1 = private unnamed_addr constant [78 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output3D.c\00", align 1
@.str2 = private unnamed_addr constant [85 x i8] c"Already done IOASCII 3D output for '%s' in current iteration (probably via triggers)\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"$Id: Output3D.c,v 1.2 2001/12/28 21:22:44 tradke Exp $\00", align 1
@CheckSteerableParameters.out3D_vars_lastset = internal unnamed_addr global i32 -1, align 4
@ioasciipriv_ = external global %struct.anon
@iorest_ = external global %struct.anon.0
@.str4 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str6 = private unnamed_addr constant [39 x i8] c"IOASCII_3D: Output every %d iterations\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"out3D_vars\00", align 1
@.str8 = private unnamed_addr constant [36 x i8] c"IOASCII_3D: Output requested for %s\00", align 1
@.str9 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str10 = private unnamed_addr constant [46 x i8] c"Optional string '%s' in variable name ignored\00", align 1
@.str11 = private unnamed_addr constant [41 x i8] c"No IOASCII 3D output for '%s' (dim != 3)\00", align 1
@.str12 = private unnamed_addr constant [61 x i8] c"No IOASCII 3D output for '%s' (not a grid function or array)\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOASCII_Output3D_c() #0 {
  ret i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_Output3DGH(%struct.cGH* %GH) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5
  %2 = bitcast i8* %1 to %struct.IOASCIIGH*
  tail call fastcc void @CheckSteerableParameters(%struct.IOASCIIGH* %2) #6
  %3 = getelementptr inbounds i8* %1, i64 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32* %4, align 4, !tbaa !2
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %0
  %7 = tail call i32 @CCTK_NumVars() #5
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %9 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %10 = getelementptr inbounds i8* %1, i64 80
  %11 = bitcast i8* %10 to i32**
  br label %12

; <label>:12                                      ; preds = %.lr.ph, %25
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %25 ]
  %retval.01 = phi i32 [ 0, %.lr.ph ], [ %retval.1, %25 ]
  %13 = trunc i64 %indvars.iv to i32
  %14 = tail call i32 @IOASCII_TimeFor3D(%struct.cGH* %GH, i32 %13) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

; <label>:16                                      ; preds = %12
  %17 = tail call i8* @CCTK_VarName(i32 %13) #5
  %18 = tail call i32 @IOASCII_Write3D(%struct.cGH* %GH, i32 %13, i8* %17) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

; <label>:20                                      ; preds = %16
  %21 = load i32* %9, align 4, !tbaa !8
  %22 = load i32** %11, align 8, !tbaa !11
  %23 = getelementptr inbounds i32* %22, i64 %indvars.iv
  store i32 %21, i32* %23, align 4, !tbaa !12
  %24 = add nsw i32 %retval.01, 1
  br label %25

; <label>:25                                      ; preds = %12, %16, %20
  %retval.1 = phi i32 [ %24, %20 ], [ %retval.01, %16 ], [ %retval.01, %12 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %26 = tail call i32 @CCTK_NumVars() #5
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %indvars.iv.next, %27
  br i1 %28, label %12, label %.loopexit

.loopexit:                                        ; preds = %25, %.preheader, %0
  %.0 = phi i32 [ 0, %0 ], [ 0, %.preheader ], [ %retval.1, %25 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CheckSteerableParameters(%struct.IOASCIIGH* nocapture %myGH) #1 {
  %msg = alloca i8*, align 8
  %1 = load i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 14), align 8, !tbaa !13
  %2 = load i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 35), align 4, !tbaa !15
  %3 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 37), align 8, !tbaa !16
  %4 = load i8** getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 12), align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.IOASCIIGH* %myGH, i64 0, i32 2
  %6 = load i32* %5, align 4, !tbaa !2
  %7 = icmp sgt i32 %3, 0
  %8 = select i1 %7, i32 %3, i32 -1
  %9 = icmp sgt i32 %2, 0
  %. = select i1 %9, i32 %2, i32 %8
  store i32 %., i32* %5, align 4, !tbaa !2
  %10 = icmp eq i32 %., %6
  br i1 %10, label %20, label %11

; <label>:11                                      ; preds = %0
  %12 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %11
  %15 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

; <label>:17                                      ; preds = %14, %11
  %18 = load i32* %5, align 4, !tbaa !2
  %19 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str6, i64 0, i64 0), i32 %18) #5
  br label %20

; <label>:20                                      ; preds = %14, %0, %17
  %21 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5
  %22 = load i32* @CheckSteerableParameters.out3D_vars_lastset, align 4, !tbaa !12
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %60, label %24

; <label>:24                                      ; preds = %20
  %25 = tail call i32 @CCTK_NumVars() #5
  %26 = getelementptr inbounds %struct.IOASCIIGH* %myGH, i64 0, i32 5
  %27 = load i8** %26, align 8, !tbaa !19
  %28 = sext i32 %25 to i64
  %29 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %27, i1 false)
  %30 = tail call i8* @__memset_chk(i8* %27, i32 0, i64 %28, i64 %29) #5
  %31 = load i8** %26, align 8, !tbaa !19
  %32 = tail call i32 @CCTK_TraverseString(i8* %1, void (i32, i8*, i8*)* @SetOutputFlag, i8* %31, i32 3) #5
  %33 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

; <label>:35                                      ; preds = %24
  %36 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %.thread, label %38

; <label>:38                                      ; preds = %35, %24
  store i8* null, i8** %msg, align 8, !tbaa !20
  %39 = icmp sgt i32 %25, 0
  br i1 %39, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %38
  %40 = add i32 %25, -1
  br label %41

; <label>:41                                      ; preds = %._crit_edge2, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge2 ]
  %42 = load i8** %26, align 8, !tbaa !19
  %43 = getelementptr inbounds i8* %42, i64 %indvars.iv
  %44 = load i8* %43, align 1, !tbaa !21
  %45 = icmp eq i8 %44, 0
  %.pre3 = trunc i64 %indvars.iv to i32
  br i1 %45, label %._crit_edge2, label %46

; <label>:46                                      ; preds = %41
  %47 = call i8* @CCTK_FullName(i32 %.pre3) #5
  %48 = load i8** %msg, align 8, !tbaa !20
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

; <label>:50                                      ; preds = %46
  %51 = call i32 (i8**, i8*, ...)* @Util_asprintf(i8** %msg, i8* getelementptr inbounds ([36 x i8]* @.str8, i64 0, i64 0), i8* %47) #5
  br label %54

; <label>:52                                      ; preds = %46
  %53 = call i32 (i8**, i8*, ...)* @Util_asprintf(i8** %msg, i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0), i8* %48, i8* %47) #5
  br label %54

; <label>:54                                      ; preds = %52, %50
  call void @free(i8* %47) #6
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %41, %54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %.pre3, %40
  br i1 %exitcond, label %55, label %41

; <label>:55                                      ; preds = %._crit_edge2
  %.pre = load i8** %msg, align 8, !tbaa !20
  %56 = icmp eq i8* %.pre, null
  br i1 %56, label %.thread, label %57

; <label>:57                                      ; preds = %55
  %58 = call i32 @CCTK_Info(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %.pre) #5
  %59 = load i8** %msg, align 8, !tbaa !20
  call void @free(i8* %59) #6
  br label %.thread

.thread:                                          ; preds = %38, %55, %35, %57
  store i32 %21, i32* @CheckSteerableParameters.out3D_vars_lastset, align 4, !tbaa !12
  br label %60

; <label>:60                                      ; preds = %20, %.thread
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_TimeFor3D(%struct.cGH* %GH, i32 %vindex) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5
  %2 = bitcast i8* %1 to %struct.IOASCIIGH*
  tail call fastcc void @CheckSteerableParameters(%struct.IOASCIIGH* %2) #6
  %3 = getelementptr inbounds i8* %1, i64 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32* %4, align 4, !tbaa !2
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %30, label %7

; <label>:7                                       ; preds = %0
  %8 = sext i32 %vindex to i64
  %9 = getelementptr inbounds i8* %1, i64 32
  %10 = bitcast i8* %9 to i8**
  %11 = load i8** %10, align 8, !tbaa !19
  %12 = getelementptr inbounds i8* %11, i64 %8
  %13 = load i8* %12, align 1, !tbaa !21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %30, label %15

; <label>:15                                      ; preds = %7
  %16 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %17 = load i32* %16, align 4, !tbaa !8
  %18 = srem i32 %17, %5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

; <label>:20                                      ; preds = %15
  %21 = getelementptr inbounds i8* %1, i64 80
  %22 = bitcast i8* %21 to i32**
  %23 = load i32** %22, align 8, !tbaa !11
  %24 = getelementptr inbounds i32* %23, i64 %8
  %25 = load i32* %24, align 4, !tbaa !12
  %26 = icmp eq i32 %25, %17
  br i1 %26, label %27, label %30

; <label>:27                                      ; preds = %20
  %28 = tail call i8* @CCTK_FullName(i32 %vindex) #5
  %29 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 224, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8]* @.str2, i64 0, i64 0), i8* %28) #5
  tail call void @free(i8* %28) #6
  br label %30

; <label>:30                                      ; preds = %15, %27, %7, %20, %0
  %.0 = phi i32 [ 0, %0 ], [ 0, %27 ], [ 0, %15 ], [ 0, %7 ], [ 1, %20 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #2

; Function Attrs: optsize
declare i32 @IOASCII_Write3D(%struct.cGH*, i32, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_Output3DVarAs(%struct.cGH* %GH, i8* %fullname, i8* %alias) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %fullname) #5
  %2 = tail call fastcc i32 @CheckOutputVar(i32 %1) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @IOASCII_Write3D(%struct.cGH* %GH, i32 %1, i8* %alias) #5
  br label %6

; <label>:6                                       ; preds = %4, %0
  %retval.0 = phi i32 [ %5, %4 ], [ -1, %0 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @CheckOutputVar(i32 %vindex) #1 {
  %groupinfo = alloca %struct.cGroup, align 4
  %1 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #5
  %2 = call i32 @CCTK_GroupData(i32 %1, %struct.cGroup* %groupinfo) #5
  %3 = getelementptr inbounds %struct.cGroup* %groupinfo, i64 0, i32 4
  %4 = load i32* %3, align 4, !tbaa !22
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %10

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.cGroup* %groupinfo, i64 0, i32 0
  %8 = load i32* %7, align 4, !tbaa !24
  %9 = and i32 %8, -2
  %switch = icmp eq i32 %9, 2
  br i1 %switch, label %13, label %10

; <label>:10                                      ; preds = %0, %6
  %errormsg.0.ph = phi i8* [ getelementptr inbounds ([61 x i8]* @.str12, i64 0, i64 0), %6 ], [ getelementptr inbounds ([41 x i8]* @.str11, i64 0, i64 0), %0 ]
  %11 = call i8* @CCTK_FullName(i32 %vindex) #5
  %12 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 398, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %errormsg.0.ph, i8* %11) #5
  call void @free(i8* %11) #6
  br label %13

; <label>:13                                      ; preds = %6, %10
  %14 = phi i32 [ 1, %10 ], [ 0, %6 ]
  ret i32 %14
}

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_TriggerOutput3D(%struct.cGH* %GH, i32 %vindex) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5
  %2 = tail call i8* @CCTK_VarName(i32 %vindex) #5
  %3 = tail call i32 @IOASCII_Write3D(%struct.cGH* %GH, i32 %vindex, i8* %2) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %7 = load i32* %6, align 4, !tbaa !8
  %8 = sext i32 %vindex to i64
  %9 = getelementptr inbounds i8* %1, i64 80
  %10 = bitcast i8* %9 to i32**
  %11 = load i32** %10, align 8, !tbaa !11
  %12 = getelementptr inbounds i32* %11, i64 %8
  store i32 %7, i32* %12, align 4, !tbaa !12
  br label %13

; <label>:13                                      ; preds = %5, %0
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VInfo(i8*, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_ParameterQueryTimesSet(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: optsize
declare i32 @CCTK_TraverseString(i8*, void (i32, i8*, i8*)*, i8*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal void @SetOutputFlag(i32 %vindex, i8* %optstring, i8* nocapture %arg) #1 {
  %1 = tail call fastcc i32 @CheckOutputVar(i32 %vindex) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = sext i32 %vindex to i64
  %5 = getelementptr inbounds i8* %arg, i64 %4
  store i8 1, i8* %5, align 1, !tbaa !21
  br label %6

; <label>:6                                       ; preds = %3, %0
  %7 = icmp eq i8* %optstring, null
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %6
  %9 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 421, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), i8* %optstring) #5
  br label %10

; <label>:10                                      ; preds = %6, %8
  ret void
}

; Function Attrs: optsize
declare i32 @Util_asprintf(i8**, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 8}
!3 = !{!"IOASCIIGH", !4, i64 0, !4, i64 4, !4, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!9, !4, i64 4}
!9 = !{!"", !4, i64 0, !4, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !10, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !4, i64 104, !7, i64 112, !10, i64 120, !7, i64 128, !7, i64 136, !7, i64 144}
!10 = !{!"double", !5, i64 0}
!11 = !{!3, !7, i64 80}
!12 = !{!4, !4, i64 0}
!13 = !{!14, !7, i64 112}
!14 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !4, i64 160, !4, i64 164, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !4, i64 200, !4, i64 204, !4, i64 208, !4, i64 212, !4, i64 216, !4, i64 220}
!15 = !{!14, !4, i64 220}
!16 = !{!17, !4, i64 240}
!17 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !4, i64 200, !4, i64 204, !4, i64 208, !4, i64 212, !4, i64 216, !4, i64 220, !4, i64 224, !4, i64 228, !4, i64 232, !4, i64 236, !4, i64 240, !4, i64 244, !4, i64 248, !4, i64 252, !4, i64 256, !4, i64 260, !4, i64 264, !4, i64 268, !4, i64 272, !4, i64 276, !4, i64 280, !4, i64 284, !4, i64 288, !4, i64 292}
!18 = !{!17, !7, i64 96}
!19 = !{!3, !7, i64 32}
!20 = !{!7, !7, i64 0}
!21 = !{!5, !5, i64 0}
!22 = !{!23, !4, i64 16}
!23 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!24 = !{!23, !4, i64 0}
