; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output1D.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.IOASCIIGH = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32*, i32*, %struct.PNamedData*, %struct.PNamedData*, %struct.PNamedData*, i32***, i32** }
%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str1 = private unnamed_addr constant [78 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/Output1D.c\00", align 1
@.str2 = private unnamed_addr constant [85 x i8] c"Already done IOASCII 1D output for '%s' in current iteration (probably via triggers)\00", align 1
@.str3 = private unnamed_addr constant [56 x i8] c"$Id: Output1D.c,v 1.15 2001/12/28 21:22:44 tradke Exp $\00", align 1
@CheckSteerableParameters.out1D_vars_lastset = internal unnamed_addr global i32 -1, align 4
@ioasciipriv_ = external global %struct.anon
@iorest_ = external global %struct.anon.0
@.str4 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str6 = private unnamed_addr constant [39 x i8] c"IOASCII_1D: Output every %d iterations\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"out1D_vars\00", align 1
@.str8 = private unnamed_addr constant [34 x i8] c"IOASCII_1D: Output requested for \00", align 1
@.str9 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str10 = private unnamed_addr constant [61 x i8] c"SetOutputFlag: Optional string '%s' in variable name ignored\00", align 1
@.str11 = private unnamed_addr constant [80 x i8] c"CheckOutputVar: No IOASCII 1D output for '%s' (not a grid function or an array)\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOASCII_Output1D_c() #0 {
  ret i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_Output1DGH(%struct.cGH* %GH) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #6
  %2 = bitcast i8* %1 to %struct.IOASCIIGH*
  tail call fastcc void @CheckSteerableParameters(%struct.IOASCIIGH* %2) #7
  %3 = bitcast i8* %1 to i32*
  %4 = load i32* %3, align 4, !tbaa !2
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %0
  %6 = tail call i32 @CCTK_NumVars() #6
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %8 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %9 = getelementptr inbounds i8* %1, i64 64
  %10 = bitcast i8* %9 to i32**
  br label %11

; <label>:11                                      ; preds = %.lr.ph, %24
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %24 ]
  %retval.01 = phi i32 [ 0, %.lr.ph ], [ %retval.1, %24 ]
  %12 = trunc i64 %indvars.iv to i32
  %13 = tail call i32 @IOASCII_TimeFor1D(%struct.cGH* %GH, i32 %12) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

; <label>:15                                      ; preds = %11
  %16 = tail call i8* @CCTK_VarName(i32 %12) #6
  %17 = tail call i32 @IOASCII_Write1D(%struct.cGH* %GH, i32 %12, i8* %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19                                      ; preds = %15
  %20 = load i32* %8, align 4, !tbaa !8
  %21 = load i32** %10, align 8, !tbaa !11
  %22 = getelementptr inbounds i32* %21, i64 %indvars.iv
  store i32 %20, i32* %22, align 4, !tbaa !12
  %23 = add nsw i32 %retval.01, 1
  br label %24

; <label>:24                                      ; preds = %11, %15, %19
  %retval.1 = phi i32 [ %23, %19 ], [ %retval.01, %15 ], [ %retval.01, %11 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %25 = tail call i32 @CCTK_NumVars() #6
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %indvars.iv.next, %26
  br i1 %27, label %11, label %.loopexit

.loopexit:                                        ; preds = %24, %.preheader, %0
  %.0 = phi i32 [ 0, %0 ], [ 0, %.preheader ], [ %retval.1, %24 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @CheckSteerableParameters(%struct.IOASCIIGH* nocapture %myGH) #1 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 10), align 8, !tbaa !13
  %2 = load i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 21), align 4, !tbaa !15
  %3 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 37), align 8, !tbaa !16
  %4 = load i8** getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 12), align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.IOASCIIGH* %myGH, i64 0, i32 0
  %6 = load i32* %5, align 4, !tbaa !2
  %7 = icmp sgt i32 %3, 0
  %8 = select i1 %7, i32 %3, i32 -1
  %9 = icmp sgt i32 %2, 0
  %. = select i1 %9, i32 %2, i32 %8
  store i32 %., i32* %5, align 4, !tbaa !2
  %10 = icmp eq i32 %., %6
  br i1 %10, label %20, label %11

; <label>:11                                      ; preds = %0
  %12 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %11
  %15 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

; <label>:17                                      ; preds = %14, %11
  %18 = load i32* %5, align 4, !tbaa !2
  %19 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str6, i64 0, i64 0), i32 %18) #6
  br label %20

; <label>:20                                      ; preds = %14, %0, %17
  %21 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #6
  %22 = load i32* @CheckSteerableParameters.out1D_vars_lastset, align 4, !tbaa !12
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %70, label %24

; <label>:24                                      ; preds = %20
  %25 = tail call i32 @CCTK_NumVars() #6
  %26 = getelementptr inbounds %struct.IOASCIIGH* %myGH, i64 0, i32 3
  %27 = load i8** %26, align 8, !tbaa !19
  %28 = sext i32 %25 to i64
  %29 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %27, i1 false)
  %30 = tail call i8* @__memset_chk(i8* %27, i32 0, i64 %28, i64 %29) #6
  %31 = load i8** %26, align 8, !tbaa !19
  %32 = tail call i32 @CCTK_TraverseString(i8* %1, void (i32, i8*, i8*)* @SetOutputFlag, i8* %31, i32 3) #6
  %33 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %.preheader

; <label>:35                                      ; preds = %24
  %36 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %69, label %.preheader

.preheader:                                       ; preds = %35, %24
  %38 = icmp sgt i32 %25, 0
  br i1 %38, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %.preheader
  %39 = add i32 %25, -1
  br label %40

; <label>:40                                      ; preds = %._crit_edge11, %.lr.ph4
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7, %._crit_edge11 ]
  %verboselength.02 = phi i32 [ 0, %.lr.ph4 ], [ %verboselength.1, %._crit_edge11 ]
  %41 = load i8** %26, align 8, !tbaa !19
  %42 = getelementptr inbounds i8* %41, i64 %indvars.iv6
  %43 = load i8* %42, align 1, !tbaa !20
  %44 = icmp eq i8 %43, 0
  %.pre = trunc i64 %indvars.iv6 to i32
  br i1 %44, label %._crit_edge11, label %45

; <label>:45                                      ; preds = %40
  %46 = tail call i8* @CCTK_FullName(i32 %.pre) #6
  %47 = tail call i64 @strlen(i8* %46) #6
  %48 = zext i32 %verboselength.02 to i64
  %49 = add nuw nsw i64 %48, 1
  %50 = add i64 %49, %47
  %51 = trunc i64 %50 to i32
  tail call void @free(i8* %46) #7
  br label %._crit_edge11

._crit_edge11:                                    ; preds = %40, %45
  %verboselength.1 = phi i32 [ %51, %45 ], [ %verboselength.02, %40 ]
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond9 = icmp eq i32 %.pre, %39
  br i1 %exitcond9, label %._crit_edge5, label %40

._crit_edge5:                                     ; preds = %._crit_edge11, %.preheader
  %verboselength.0.lcssa = phi i32 [ 0, %.preheader ], [ %verboselength.1, %._crit_edge11 ]
  %52 = add i32 %verboselength.0.lcssa, 34
  %53 = sext i32 %52 to i64
  %54 = tail call i8* @malloc(i64 %53) #6
  %55 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %54, i1 false)
  %56 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %54, i32 0, i64 %55, i8* getelementptr inbounds ([34 x i8]* @.str8, i64 0, i64 0)) #6
  br i1 %38, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge5
  %57 = add i32 %25, -1
  br label %58

; <label>:58                                      ; preds = %._crit_edge10, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge10 ]
  %59 = load i8** %26, align 8, !tbaa !19
  %60 = getelementptr inbounds i8* %59, i64 %indvars.iv
  %61 = load i8* %60, align 1, !tbaa !20
  %62 = icmp eq i8 %61, 0
  %.pre12 = trunc i64 %indvars.iv to i32
  br i1 %62, label %._crit_edge10, label %63

; <label>:63                                      ; preds = %58
  %64 = tail call i8* @CCTK_FullName(i32 %.pre12) #6
  %65 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %54, i32 0, i64 %55, i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0), i8* %54, i8* %64) #6
  tail call void @free(i8* %64) #7
  br label %._crit_edge10

._crit_edge10:                                    ; preds = %58, %63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %.pre12, %57
  br i1 %exitcond, label %._crit_edge, label %58

._crit_edge:                                      ; preds = %._crit_edge10, %._crit_edge5
  %66 = icmp eq i8* %54, null
  br i1 %66, label %69, label %67

; <label>:67                                      ; preds = %._crit_edge
  %68 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* %54) #6
  tail call void @free(i8* %54) #7
  br label %69

; <label>:69                                      ; preds = %._crit_edge, %35, %67
  store i32 %21, i32* @CheckSteerableParameters.out1D_vars_lastset, align 4, !tbaa !12
  br label %70

; <label>:70                                      ; preds = %20, %69
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_TimeFor1D(%struct.cGH* %GH, i32 %vindex) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #6
  %2 = bitcast i8* %1 to %struct.IOASCIIGH*
  tail call fastcc void @CheckSteerableParameters(%struct.IOASCIIGH* %2) #7
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
  %12 = load i8* %11, align 1, !tbaa !20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %29, label %14

; <label>:14                                      ; preds = %6
  %15 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %16 = load i32* %15, align 4, !tbaa !8
  %17 = srem i32 %16, %4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

; <label>:19                                      ; preds = %14
  %20 = getelementptr inbounds i8* %1, i64 64
  %21 = bitcast i8* %20 to i32**
  %22 = load i32** %21, align 8, !tbaa !11
  %23 = getelementptr inbounds i32* %22, i64 %7
  %24 = load i32* %23, align 4, !tbaa !12
  %25 = icmp eq i32 %24, %16
  br i1 %25, label %26, label %29

; <label>:26                                      ; preds = %19
  %27 = tail call i8* @CCTK_FullName(i32 %vindex) #6
  %28 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 224, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8]* @.str2, i64 0, i64 0), i8* %27) #6
  tail call void @free(i8* %27) #7
  br label %29

; <label>:29                                      ; preds = %14, %26, %6, %19, %0
  %.0 = phi i32 [ 0, %0 ], [ 0, %26 ], [ 0, %14 ], [ 0, %6 ], [ 1, %19 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #2

; Function Attrs: optsize
declare i32 @IOASCII_Write1D(%struct.cGH*, i32, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_Output1DVarAs(%struct.cGH* %GH, i8* %fullname, i8* %alias) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %fullname) #6
  %2 = tail call fastcc i32 @CheckOutputVar(i32 %1) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @IOASCII_Write1D(%struct.cGH* %GH, i32 %1, i8* %alias) #6
  br label %6

; <label>:6                                       ; preds = %4, %0
  %retval.0 = phi i32 [ %5, %4 ], [ -1, %0 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @CheckOutputVar(i32 %vindex) #1 {
  %1 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %vindex) #6
  %2 = and i32 %1, -2
  %.cmp = icmp ne i32 %2, 2
  %3 = zext i1 %.cmp to i32
  br i1 %.cmp, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @CCTK_FullName(i32 %vindex) #6
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 391, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8]* @.str11, i64 0, i64 0), i8* %5) #6
  tail call void @free(i8* %5) #7
  br label %7

; <label>:7                                       ; preds = %4, %0
  ret i32 %3
}

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOASCII_TriggerOutput1D(%struct.cGH* %GH, i32 %vindex) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #6
  %2 = tail call i8* @CCTK_VarName(i32 %vindex) #6
  %3 = tail call i32 @IOASCII_Write1D(%struct.cGH* %GH, i32 %vindex, i8* %2) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %7 = load i32* %6, align 4, !tbaa !8
  %8 = sext i32 %vindex to i64
  %9 = getelementptr inbounds i8* %1, i64 64
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
  %1 = tail call fastcc i32 @CheckOutputVar(i32 %vindex) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = sext i32 %vindex to i64
  %5 = getelementptr inbounds i8* %arg, i64 %4
  store i8 1, i8* %5, align 1, !tbaa !20
  br label %6

; <label>:6                                       ; preds = %3, %0
  %7 = icmp eq i8* %optstring, null
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %6
  %9 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 5, i32 415, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str10, i64 0, i64 0), i8* %optstring) #6
  br label %10

; <label>:10                                      ; preds = %6, %8
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeFromVarI(i32) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"IOASCIIGH", !4, i64 0, !4, i64 4, !4, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!9, !4, i64 4}
!9 = !{!"", !4, i64 0, !4, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !10, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !4, i64 104, !7, i64 112, !10, i64 120, !7, i64 128, !7, i64 136, !7, i64 144}
!10 = !{!"double", !5, i64 0}
!11 = !{!3, !7, i64 64}
!12 = !{!4, !4, i64 0}
!13 = !{!14, !7, i64 80}
!14 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !4, i64 160, !4, i64 164, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !4, i64 200, !4, i64 204, !4, i64 208, !4, i64 212, !4, i64 216, !4, i64 220}
!15 = !{!14, !4, i64 164}
!16 = !{!17, !4, i64 240}
!17 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !4, i64 200, !4, i64 204, !4, i64 208, !4, i64 212, !4, i64 216, !4, i64 220, !4, i64 224, !4, i64 228, !4, i64 232, !4, i64 236, !4, i64 240, !4, i64 244, !4, i64 248, !4, i64 252, !4, i64 256, !4, i64 260, !4, i64 264, !4, i64 268, !4, i64 272, !4, i64 276, !4, i64 280, !4, i64 284, !4, i64 288, !4, i64 292}
!18 = !{!17, !7, i64 96}
!19 = !{!3, !7, i64 16}
!20 = !{!5, !5, i64 0}
