; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.anon.0 = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.IOBASIC_GH = type { i32, i32, i8, i8*, i8*, i32*, i32*, %struct.IOBASIC_REDUCTIONLIST*, %struct.PNamedData* }
%struct.IOBASIC_REDUCTIONLIST = type { i32, %struct.IOBASIC_REDUCTION* }
%struct.IOBASIC_REDUCTION = type { i32, i8*, i8, double, %struct.IOBASIC_REDUCTION* }
%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str1 = private unnamed_addr constant [82 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/OutputScalar.c\00", align 1
@.str2 = private unnamed_addr constant [89 x i8] c"Already done IOBasic scalar output for '%s' in current iteration (probably via triggers)\00", align 1
@.str3 = private unnamed_addr constant [94 x i8] c"$Header: /cactus/CactusBase/IOBasic/src/OutputScalar.c,v 1.7 2002/01/18 16:06:47 tradke Exp $\00", align 1
@CheckSteerableParameters.outScalar_vars_lastset = internal unnamed_addr global i32 -1, align 4
@iobasicpriv_ = external global %struct.anon
@iorest_ = external global %struct.anon.0
@.str4 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str6 = private unnamed_addr constant [35 x i8] c"Scalar: Output every %d iterations\00", align 1
@.str7 = private unnamed_addr constant [15 x i8] c"outScalar_vars\00", align 1
@.str8 = private unnamed_addr constant [32 x i8] c"Scalar: Output requested for %s\00", align 1
@.str9 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str10 = private unnamed_addr constant [46 x i8] c"Optional string '%s' in variable name ignored\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOBasic_OutputScalar_c() #0 {
  ret i8* getelementptr inbounds ([94 x i8]* @.str3, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_ScalarOutputGH(%struct.cGH* %GH) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5
  %2 = bitcast i8* %1 to %struct.IOBASIC_GH*
  tail call fastcc void @CheckSteerableParameters(%struct.IOBASIC_GH* %2) #6
  %3 = bitcast i8* %1 to i32*
  %4 = load i32* %3, align 4, !tbaa !2
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %0
  %6 = tail call i32 @CCTK_NumVars() #5
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %8 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %9 = getelementptr inbounds i8* %1, i64 40
  %10 = bitcast i8* %9 to i32**
  br label %11

; <label>:11                                      ; preds = %.lr.ph, %30
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %30 ]
  %retval.02 = phi i32 [ 0, %.lr.ph ], [ %retval.1, %30 ]
  %12 = trunc i64 %indvars.iv to i32
  %13 = tail call i32 @IOBasic_TimeForScalarOutput(%struct.cGH* %GH, i32 %12) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %30, label %15

; <label>:15                                      ; preds = %11
  %16 = tail call i8* @CCTK_VarName(i32 %12) #5
  %17 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %12) #5
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %21

; <label>:19                                      ; preds = %15
  %20 = tail call i32 @IOBasic_WriteScalarGS(%struct.cGH* %GH, i32 %12, i8* %16) #5
  br label %23

; <label>:21                                      ; preds = %15
  %22 = tail call i32 @IOBasic_WriteScalarGA(%struct.cGH* %GH, i32 %12, i8* %16) #5
  br label %23

; <label>:23                                      ; preds = %21, %19
  %i.0 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %24 = icmp eq i32 %i.0, 0
  br i1 %24, label %25, label %30

; <label>:25                                      ; preds = %23
  %26 = load i32* %8, align 4, !tbaa !8
  %27 = load i32** %10, align 8, !tbaa !11
  %28 = getelementptr inbounds i32* %27, i64 %indvars.iv
  store i32 %26, i32* %28, align 4, !tbaa !12
  %29 = add nsw i32 %retval.02, 1
  br label %30

; <label>:30                                      ; preds = %11, %23, %25
  %retval.1 = phi i32 [ %29, %25 ], [ %retval.02, %23 ], [ %retval.02, %11 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %31 = tail call i32 @CCTK_NumVars() #5
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %indvars.iv.next, %32
  br i1 %33, label %11, label %.loopexit

.loopexit:                                        ; preds = %30, %.preheader, %0
  %.0 = phi i32 [ 0, %0 ], [ 0, %.preheader ], [ %retval.1, %30 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CheckSteerableParameters(%struct.IOBASIC_GH* nocapture %myGH) #1 {
  %msg = alloca i8*, align 8
  %1 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 4), align 8, !tbaa !13
  %2 = load i32* getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 8), align 4, !tbaa !15
  %3 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 37), align 8, !tbaa !16
  %4 = load i8** getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 12), align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.IOBASIC_GH* %myGH, i64 0, i32 0
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
  %19 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str6, i64 0, i64 0), i32 %18) #5
  br label %20

; <label>:20                                      ; preds = %14, %0, %17
  %21 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([15 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5
  %22 = load i32* @CheckSteerableParameters.outScalar_vars_lastset, align 4, !tbaa !12
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %63, label %24

; <label>:24                                      ; preds = %20
  %25 = tail call i32 @CCTK_NumVars() #5
  %26 = getelementptr inbounds %struct.IOBASIC_GH* %myGH, i64 0, i32 3
  %27 = load i8** %26, align 8, !tbaa !19
  %28 = sext i32 %25 to i64
  %29 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %27, i1 false)
  %30 = tail call i8* @__memset_chk(i8* %27, i32 0, i64 %28, i64 %29) #5
  %31 = load i8** %26, align 8, !tbaa !19
  %32 = tail call i32 @CCTK_TraverseString(i8* %1, void (i32, i8*, i8*)* @SetOutputFlag, i8* %31, i32 3) #5
  %33 = load i32* %5, align 4, !tbaa !2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %.thread, label %35

; <label>:35                                      ; preds = %24
  %36 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

; <label>:38                                      ; preds = %35
  %39 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %.thread, label %41

; <label>:41                                      ; preds = %38, %35
  store i8* null, i8** %msg, align 8, !tbaa !20
  %42 = icmp sgt i32 %25, 0
  br i1 %42, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %41
  %43 = add i32 %25, -1
  br label %44

; <label>:44                                      ; preds = %._crit_edge2, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge2 ]
  %45 = load i8** %26, align 8, !tbaa !19
  %46 = getelementptr inbounds i8* %45, i64 %indvars.iv
  %47 = load i8* %46, align 1, !tbaa !21
  %48 = icmp eq i8 %47, 0
  %.pre3 = trunc i64 %indvars.iv to i32
  br i1 %48, label %._crit_edge2, label %49

; <label>:49                                      ; preds = %44
  %50 = call i8* @CCTK_FullName(i32 %.pre3) #5
  %51 = load i8** %msg, align 8, !tbaa !20
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %55

; <label>:53                                      ; preds = %49
  %54 = call i32 (i8**, i8*, ...)* @Util_asprintf(i8** %msg, i8* getelementptr inbounds ([32 x i8]* @.str8, i64 0, i64 0), i8* %50) #5
  br label %57

; <label>:55                                      ; preds = %49
  %56 = call i32 (i8**, i8*, ...)* @Util_asprintf(i8** %msg, i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0), i8* %51, i8* %50) #5
  call void @free(i8* %51) #6
  br label %57

; <label>:57                                      ; preds = %55, %53
  call void @free(i8* %50) #6
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %44, %57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %.pre3, %43
  br i1 %exitcond, label %58, label %44

; <label>:58                                      ; preds = %._crit_edge2
  %.pre = load i8** %msg, align 8, !tbaa !20
  %59 = icmp eq i8* %.pre, null
  br i1 %59, label %.thread, label %60

; <label>:60                                      ; preds = %58
  %61 = call i32 @CCTK_Info(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %.pre) #5
  %62 = load i8** %msg, align 8, !tbaa !20
  call void @free(i8* %62) #6
  br label %.thread

.thread:                                          ; preds = %41, %58, %38, %24, %60
  store i32 %21, i32* @CheckSteerableParameters.outScalar_vars_lastset, align 4, !tbaa !12
  br label %63

; <label>:63                                      ; preds = %20, %.thread
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_TimeForScalarOutput(%struct.cGH* %GH, i32 %vindex) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5
  %2 = bitcast i8* %1 to %struct.IOBASIC_GH*
  tail call fastcc void @CheckSteerableParameters(%struct.IOBASIC_GH* %2) #6
  %3 = bitcast i8* %1 to i32*
  %4 = load i32* %3, align 4, !tbaa !2
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %29, label %6

; <label>:6                                       ; preds = %0
  %7 = sext i32 %vindex to i64
  %8 = getelementptr inbounds i8* %1, i64 16
  %9 = bitcast i8* %8 to i8**
  %10 = load i8** %9, align 8, !tbaa !19
  %11 = getelementptr inbounds i8* %10, i64 %7
  %12 = load i8* %11, align 1, !tbaa !21
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %29, label %14

; <label>:14                                      ; preds = %6
  %15 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %16 = load i32* %15, align 4, !tbaa !8
  %17 = srem i32 %16, %4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

; <label>:19                                      ; preds = %14
  %20 = getelementptr inbounds i8* %1, i64 40
  %21 = bitcast i8* %20 to i32**
  %22 = load i32** %21, align 8, !tbaa !11
  %23 = getelementptr inbounds i32* %22, i64 %7
  %24 = load i32* %23, align 4, !tbaa !12
  %25 = icmp eq i32 %24, %16
  br i1 %25, label %26, label %29

; <label>:26                                      ; preds = %19
  %27 = tail call i8* @CCTK_FullName(i32 %vindex) #5
  %28 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 231, i8* getelementptr inbounds ([82 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([89 x i8]* @.str2, i64 0, i64 0), i8* %27) #5
  tail call void @free(i8* %27) #6
  br label %29

; <label>:29                                      ; preds = %14, %26, %6, %19, %0
  %.0 = phi i32 [ 0, %0 ], [ 0, %26 ], [ 0, %14 ], [ 0, %6 ], [ 1, %19 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeFromVarI(i32) #2

; Function Attrs: optsize
declare i32 @IOBasic_WriteScalarGS(%struct.cGH*, i32, i8*) #2

; Function Attrs: optsize
declare i32 @IOBasic_WriteScalarGA(%struct.cGH*, i32, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_ScalarOutputVarAs(%struct.cGH* %GH, i8* %fullname, i8* %alias) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %fullname) #5
  %2 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %1) #5
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @IOBasic_WriteScalarGS(%struct.cGH* %GH, i32 %1, i8* %alias) #5
  br label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @IOBasic_WriteScalarGA(%struct.cGH* %GH, i32 %1, i8* %alias) #5
  br label %8

; <label>:8                                       ; preds = %6, %4
  %retval.0 = phi i32 [ %5, %4 ], [ %7, %6 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_TriggerScalarOutput(%struct.cGH* %GH, i32 %vindex) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #5
  %2 = tail call i8* @CCTK_VarName(i32 %vindex) #5
  %3 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %vindex) #5
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @IOBasic_WriteScalarGS(%struct.cGH* %GH, i32 %vindex, i8* %2) #5
  br label %9

; <label>:7                                       ; preds = %0
  %8 = tail call i32 @IOBasic_WriteScalarGA(%struct.cGH* %GH, i32 %vindex, i8* %2) #5
  br label %9

; <label>:9                                       ; preds = %7, %5
  %retval.0 = phi i32 [ %6, %5 ], [ %8, %7 ]
  %10 = icmp eq i32 %retval.0, 0
  br i1 %10, label %11, label %19

; <label>:11                                      ; preds = %9
  %12 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %13 = load i32* %12, align 4, !tbaa !8
  %14 = sext i32 %vindex to i64
  %15 = getelementptr inbounds i8* %1, i64 40
  %16 = bitcast i8* %15 to i32**
  %17 = load i32** %16, align 8, !tbaa !11
  %18 = getelementptr inbounds i32* %17, i64 %14
  store i32 %13, i32* %18, align 4, !tbaa !12
  br label %19

; <label>:19                                      ; preds = %11, %9
  ret i32 %retval.0
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
  %1 = sext i32 %vindex to i64
  %2 = getelementptr inbounds i8* %arg, i64 %1
  store i8 1, i8* %2, align 1, !tbaa !21
  %3 = icmp eq i8* %optstring, null
  br i1 %3, label %6, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 396, i8* getelementptr inbounds ([82 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), i8* %optstring) #5
  br label %6

; <label>:6                                       ; preds = %0, %4
  ret void
}

; Function Attrs: optsize
declare i32 @Util_asprintf(i8**, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #2

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
!2 = !{!3, !4, i64 0}
!3 = !{!"IOBASIC_GH", !4, i64 0, !4, i64 4, !5, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!9, !4, i64 4}
!9 = !{!"", !4, i64 0, !4, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !10, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !4, i64 104, !7, i64 112, !10, i64 120, !7, i64 128, !7, i64 136, !7, i64 144}
!10 = !{!"double", !5, i64 0}
!11 = !{!3, !7, i64 40}
!12 = !{!4, !4, i64 0}
!13 = !{!14, !7, i64 32}
!14 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !4, i64 56, !4, i64 60}
!15 = !{!14, !4, i64 60}
!16 = !{!17, !4, i64 240}
!17 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !4, i64 200, !4, i64 204, !4, i64 208, !4, i64 212, !4, i64 216, !4, i64 220, !4, i64 224, !4, i64 228, !4, i64 232, !4, i64 236, !4, i64 240, !4, i64 244, !4, i64 248, !4, i64 252, !4, i64 256, !4, i64 260, !4, i64 264, !4, i64 268, !4, i64 272, !4, i64 276, !4, i64 280, !4, i64 284, !4, i64 288, !4, i64 292}
!18 = !{!17, !7, i64 96}
!19 = !{!3, !7, i64 16}
!20 = !{!7, !7, i64 0}
!21 = !{!5, !5, i64 0}
