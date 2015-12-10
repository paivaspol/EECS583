; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/PughUtils.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }

@pughpriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str1 = private unnamed_addr constant [27 x i8] c"Single processor evolution\00", align 1
@.str2 = private unnamed_addr constant [30 x i8] c"%d-dimensional grid functions\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"  Size:\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str6 = private unnamed_addr constant [6 x i8] c"%s%s \00", align 1
@.str7 = private unnamed_addr constant [37 x i8] c"Grid Variables with storage enabled:\00", align 1
@.str8 = private unnamed_addr constant [20 x i8] c" Grid Functions: %s\00", align 1
@.str9 = private unnamed_addr constant [17 x i8] c" Grid Arrays: %s\00", align 1
@.str10 = private unnamed_addr constant [18 x i8] c" Grid Scalars: %s\00", align 1
@.str11 = private unnamed_addr constant [90 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/PughUtils.c,v 1.32 2001/11/11 17:52:25 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_PughUtils_c() #0 {
  ret i8* getelementptr inbounds ([90 x i8]* @.str11, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32* @PUGH_Topology(%struct.cGH* %GH, i32 %dim) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #7
  %2 = add nsw i32 %dim, -1
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds i8* %1, i64 128
  %5 = bitcast i8* %4 to %struct.PConnectivity***
  %6 = load %struct.PConnectivity*** %5, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.PConnectivity** %6, i64 %3
  %8 = load %struct.PConnectivity** %7, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.PConnectivity* %8, i64 0, i32 1
  %10 = load i32** %9, align 8, !tbaa !10
  ret i32* %10
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #7
  %2 = bitcast i8* %1 to %struct.PGH*
  ret %struct.PGH* %2
}

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_Report(%struct.cGH* %GH) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #7
  %2 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !12
  %4 = sext i32 %3 to i64
  %5 = tail call i8* @calloc(i64 %4, i64 4) #7
  %6 = bitcast i8* %5 to i32*
  %7 = tail call i8* @malloc(i64 200) #7
  %8 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str1, i64 0, i64 0)) #7
  %9 = tail call i32 @CCTK_NumGroups() #7
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %.lr.ph7, label %.preheader

.preheader:                                       ; preds = %22, %0
  %11 = load i32* %2, align 4, !tbaa !12
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %.lr.ph3, label %._crit_edge4

.lr.ph3:                                          ; preds = %.preheader
  %13 = getelementptr inbounds i8* %1, i64 120
  %14 = bitcast i8* %13 to %struct.PGExtras***
  br label %26

.lr.ph7:                                          ; preds = %0, %22
  %gi.05 = phi i32 [ %23, %22 ], [ 0, %0 ]
  %15 = tail call i32 @CCTK_GroupTypeI(i32 %gi.05) #7
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %22

; <label>:17                                      ; preds = %.lr.ph7
  %18 = tail call i32 @CCTK_GroupDimI(i32 %gi.05) #7
  %19 = add nsw i32 %18, -1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32* %6, i64 %20
  store i32 1, i32* %21, align 4, !tbaa !14
  br label %22

; <label>:22                                      ; preds = %.lr.ph7, %17
  %23 = add nuw nsw i32 %gi.05, 1
  %24 = tail call i32 @CCTK_NumGroups() #7
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %.lr.ph7, label %.preheader

; <label>:26                                      ; preds = %.lr.ph3, %._crit_edge11
  %27 = phi i32 [ %11, %.lr.ph3 ], [ %45, %._crit_edge11 ]
  %indvars.iv8 = phi i64 [ 0, %.lr.ph3 ], [ %.pre12, %._crit_edge11 ]
  %28 = getelementptr inbounds i32* %6, i64 %indvars.iv8
  %29 = load i32* %28, align 4, !tbaa !14
  %30 = icmp eq i32 %29, 0
  %.pre12 = add nuw nsw i64 %indvars.iv8, 1
  br i1 %30, label %._crit_edge11, label %.lr.ph

.lr.ph:                                           ; preds = %26
  %31 = trunc i64 %.pre12 to i32
  %32 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0), i32 %31) #7
  %33 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %7, i32 0, i64 200, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0)) #7
  br label %34

; <label>:34                                      ; preds = %.lr.ph, %34
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %34 ]
  %35 = load %struct.PGExtras*** %14, align 8, !tbaa !15
  %36 = getelementptr inbounds %struct.PGExtras** %35, i64 %indvars.iv8
  %37 = load %struct.PGExtras** %36, align 8, !tbaa !9
  %38 = getelementptr inbounds %struct.PGExtras* %37, i64 0, i32 1
  %39 = load i32** %38, align 8, !tbaa !16
  %40 = getelementptr inbounds i32* %39, i64 %indvars.iv
  %41 = load i32* %40, align 4, !tbaa !14
  %42 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %7, i32 0, i64 200, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* %7, i32 %41) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %43 = icmp slt i64 %indvars.iv.next, %.pre12
  br i1 %43, label %34, label %._crit_edge

._crit_edge:                                      ; preds = %34
  %44 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* %7) #7
  %.pre = load i32* %2, align 4, !tbaa !12
  br label %._crit_edge11

._crit_edge11:                                    ; preds = %26, %._crit_edge
  %45 = phi i32 [ %.pre, %._crit_edge ], [ %27, %26 ]
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %.pre12, %46
  br i1 %47, label %26, label %._crit_edge4

._crit_edge4:                                     ; preds = %._crit_edge11, %.preheader
  tail call void @free(i8* %5) #8
  tail call void @free(i8* %7) #8
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare i32 @CCTK_VInfo(i8*, i8*, ...) #3

; Function Attrs: optsize
declare i32 @CCTK_NumGroups() #3

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupDimI(i32) #3

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_PrintStorageReport(%struct.cGH* nocapture readonly %GH) #1 {
  %1 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 42), align 4, !tbaa !18
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %5 = load i32* %4, align 4, !tbaa !20
  %6 = srem i32 %5, %1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %3
  tail call void @PUGHi_PrintStorageReport() #7
  br label %9

; <label>:9                                       ; preds = %8, %3, %0
  ret void
}

; Function Attrs: optsize
declare void @PUGHi_PrintStorageReport() #3

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_PrintFinalStorageReport(%struct.cGH* nocapture readnone %GH) #1 {
  tail call void @PUGHi_PrintStorageReport() #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_PrintStorage(%struct.cGH* %GH) #1 {
  %1 = tail call i32 @CCTK_NumGroups() #7
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph10, label %.thread19

.lr.ph10:                                         ; preds = %0, %35
  %countscalar.08 = phi i32 [ %countscalar.1, %35 ], [ 0, %0 ]
  %countarray.07 = phi i32 [ %countarray.1, %35 ], [ 0, %0 ]
  %countgf.06 = phi i32 [ %countgf.1, %35 ], [ 0, %0 ]
  %i.05 = phi i32 [ %36, %35 ], [ 0, %0 ]
  %3 = tail call i32 @PUGH_QueryGroupStorage(%struct.cGH* %GH, i32 %i.05, i8* null) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %35, label %5

; <label>:5                                       ; preds = %.lr.ph10
  %6 = tail call i32 @CCTK_GroupTypeI(i32 %i.05) #7
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %15

; <label>:8                                       ; preds = %5
  %9 = tail call i8* @CCTK_GroupName(i32 %i.05) #7
  %10 = tail call i64 @strlen(i8* %9) #7
  %11 = zext i32 %countgf.06 to i64
  %12 = add nuw nsw i64 %11, 1
  %13 = add i64 %12, %10
  %14 = trunc i64 %13 to i32
  br label %35

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @CCTK_GroupTypeI(i32 %i.05) #7
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %25

; <label>:18                                      ; preds = %15
  %19 = tail call i8* @CCTK_GroupName(i32 %i.05) #7
  %20 = tail call i64 @strlen(i8* %19) #7
  %21 = zext i32 %countarray.07 to i64
  %22 = add nuw nsw i64 %21, 1
  %23 = add i64 %22, %20
  %24 = trunc i64 %23 to i32
  br label %35

; <label>:25                                      ; preds = %15
  %26 = tail call i32 @CCTK_GroupTypeI(i32 %i.05) #7
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %35

; <label>:28                                      ; preds = %25
  %29 = tail call i8* @CCTK_GroupName(i32 %i.05) #7
  %30 = tail call i64 @strlen(i8* %29) #7
  %31 = zext i32 %countscalar.08 to i64
  %32 = add nuw nsw i64 %31, 1
  %33 = add i64 %32, %30
  %34 = trunc i64 %33 to i32
  br label %35

; <label>:35                                      ; preds = %.lr.ph10, %18, %28, %25, %8
  %countgf.1 = phi i32 [ %14, %8 ], [ %countgf.06, %18 ], [ %countgf.06, %28 ], [ %countgf.06, %25 ], [ %countgf.06, %.lr.ph10 ]
  %countarray.1 = phi i32 [ %countarray.07, %8 ], [ %24, %18 ], [ %countarray.07, %28 ], [ %countarray.07, %25 ], [ %countarray.07, %.lr.ph10 ]
  %countscalar.1 = phi i32 [ %countscalar.08, %8 ], [ %countscalar.08, %18 ], [ %34, %28 ], [ %countscalar.08, %25 ], [ %countscalar.08, %.lr.ph10 ]
  %36 = add nuw nsw i32 %i.05, 1
  %37 = tail call i32 @CCTK_NumGroups() #7
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %.lr.ph10, label %._crit_edge11

._crit_edge11:                                    ; preds = %35
  %39 = icmp eq i32 %countgf.1, 0
  br i1 %39, label %46, label %40

; <label>:40                                      ; preds = %._crit_edge11
  %41 = add nsw i32 %countgf.1, 1
  %42 = sext i32 %41 to i64
  %43 = tail call i8* @malloc(i64 %42) #7
  %44 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %43, i1 false)
  %45 = tail call i8* @__memcpy_chk(i8* %43, i8* getelementptr inbounds ([1 x i8]* @.str5, i64 0, i64 0), i64 1, i64 %44)
  br label %46

; <label>:46                                      ; preds = %._crit_edge11, %40
  %messgf.0 = phi i8* [ %43, %40 ], [ null, %._crit_edge11 ]
  %47 = icmp eq i32 %countarray.1, 0
  br i1 %47, label %54, label %48

; <label>:48                                      ; preds = %46
  %49 = add nsw i32 %countarray.1, 100
  %50 = sext i32 %49 to i64
  %51 = tail call i8* @malloc(i64 %50) #7
  %52 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %51, i1 false)
  %53 = tail call i8* @__memcpy_chk(i8* %51, i8* getelementptr inbounds ([1 x i8]* @.str5, i64 0, i64 0), i64 1, i64 %52)
  br label %54

; <label>:54                                      ; preds = %46, %48
  %messarray.0 = phi i8* [ %51, %48 ], [ null, %46 ]
  %55 = icmp eq i32 %countscalar.1, 0
  br i1 %55, label %.thread19, label %56

; <label>:56                                      ; preds = %54
  %57 = add nsw i32 %countscalar.1, 100
  %58 = sext i32 %57 to i64
  %59 = tail call i8* @malloc(i64 %58) #7
  %60 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %59, i1 false)
  %61 = tail call i8* @__memcpy_chk(i8* %59, i8* getelementptr inbounds ([1 x i8]* @.str5, i64 0, i64 0), i64 1, i64 %60)
  br label %.thread19

.thread19:                                        ; preds = %0, %54, %56
  %messarray.021 = phi i8* [ %messarray.0, %56 ], [ %messarray.0, %54 ], [ null, %0 ]
  %messgf.01720 = phi i8* [ %messgf.0, %56 ], [ %messgf.0, %54 ], [ null, %0 ]
  %messscalar.0 = phi i8* [ %59, %56 ], [ null, %54 ], [ null, %0 ]
  %62 = tail call i32 @CCTK_NumGroups() #7
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread19
  %64 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %messgf.01720, i1 false)
  %65 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %messarray.021, i1 false)
  %66 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %messscalar.0, i1 false)
  br label %67

; <label>:67                                      ; preds = %.lr.ph, %88
  %i.14 = phi i32 [ 0, %.lr.ph ], [ %89, %88 ]
  %68 = tail call i32 @PUGH_QueryGroupStorage(%struct.cGH* %GH, i32 %i.14, i8* null) #7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %88, label %70

; <label>:70                                      ; preds = %67
  %71 = tail call i32 @CCTK_GroupTypeI(i32 %i.14) #7
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %76

; <label>:73                                      ; preds = %70
  %74 = tail call i8* @CCTK_GroupName(i32 %i.14) #7
  %75 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %messgf.01720, i32 0, i64 %64, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i8* %messgf.01720, i8* %74) #7
  br label %88

; <label>:76                                      ; preds = %70
  %77 = tail call i32 @CCTK_GroupTypeI(i32 %i.14) #7
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %79, label %82

; <label>:79                                      ; preds = %76
  %80 = tail call i8* @CCTK_GroupName(i32 %i.14) #7
  %81 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %messarray.021, i32 0, i64 %65, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i8* %messarray.021, i8* %80) #7
  br label %88

; <label>:82                                      ; preds = %76
  %83 = tail call i32 @CCTK_GroupTypeI(i32 %i.14) #7
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %88

; <label>:85                                      ; preds = %82
  %86 = tail call i8* @CCTK_GroupName(i32 %i.14) #7
  %87 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %messscalar.0, i32 0, i64 %66, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i8* %messscalar.0, i8* %86) #7
  br label %88

; <label>:88                                      ; preds = %67, %79, %85, %82, %73
  %89 = add nuw nsw i32 %i.14, 1
  %90 = tail call i32 @CCTK_NumGroups() #7
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %67, label %._crit_edge

._crit_edge:                                      ; preds = %88, %.thread19
  %92 = icmp ne i8* %messgf.01720, null
  %93 = icmp ne i8* %messarray.021, null
  %or.cond = or i1 %92, %93
  %94 = icmp ne i8* %messscalar.0, null
  %or.cond3 = or i1 %or.cond, %94
  br i1 %or.cond3, label %95, label %105

; <label>:95                                      ; preds = %._crit_edge
  %96 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str7, i64 0, i64 0)) #7
  br i1 %92, label %97, label %99

; <label>:97                                      ; preds = %95
  %98 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str8, i64 0, i64 0), i8* %messgf.01720) #7
  br label %99

; <label>:99                                      ; preds = %97, %95
  br i1 %93, label %100, label %102

; <label>:100                                     ; preds = %99
  %101 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str9, i64 0, i64 0), i8* %messarray.021) #7
  br label %102

; <label>:102                                     ; preds = %100, %99
  br i1 %94, label %103, label %105

; <label>:103                                     ; preds = %102
  %104 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i8* %messscalar.0) #7
  br label %105

; <label>:105                                     ; preds = %102, %103, %._crit_edge
  br i1 %92, label %106, label %107

; <label>:106                                     ; preds = %105
  tail call void @free(i8* %messgf.01720) #8
  br label %107

; <label>:107                                     ; preds = %106, %105
  br i1 %93, label %108, label %109

; <label>:108                                     ; preds = %107
  tail call void @free(i8* %messarray.021) #8
  br label %109

; <label>:109                                     ; preds = %108, %107
  br i1 %94, label %110, label %111

; <label>:110                                     ; preds = %109
  tail call void @free(i8* %messscalar.0) #8
  br label %111

; <label>:111                                     ; preds = %110, %109
  ret void
}

; Function Attrs: optsize
declare i32 @PUGH_QueryGroupStorage(%struct.cGH*, i32, i8*) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare i8* @CCTK_GroupName(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @pugh_printstorage_(%struct.cGH* %GH) #1 {
  tail call void @PUGH_PrintStorage(%struct.cGH* %GH) #8
  ret void
}

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #6

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 128}
!3 = !{!"PGH", !4, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !7, i64 60, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !4, i64 120, !4, i64 128, !4, i64 136}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!11, !4, i64 8}
!11 = !{!"PConnectivity", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24}
!12 = !{!13, !7, i64 0}
!13 = !{!"", !7, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !8, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !7, i64 104, !4, i64 112, !8, i64 120, !4, i64 128, !4, i64 136, !4, i64 144}
!14 = !{!7, !7, i64 0}
!15 = !{!3, !4, i64 120}
!16 = !{!17, !4, i64 8}
!17 = !{!"PGExtras", !7, i64 0, !4, i64 8, !8, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !5, i64 104, !5, i64 168, !5, i64 232}
!18 = !{!19, !7, i64 212}
!19 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !7, i64 216}
!20 = !{!13, !7, i64 4}
