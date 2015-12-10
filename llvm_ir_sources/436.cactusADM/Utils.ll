; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOUtil/Utils.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cTimerData = type { i32, %struct.cTimerVal* }
%struct.cTimerVal = type { i32, i8*, i8*, %union.anon }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"cart%dd\00", align 1
@.str1 = private unnamed_addr constant [74 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOUtil/Utils.c\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"IOUtil\00", align 1
@.str3 = private unnamed_addr constant [80 x i8] c"IOUtil_1DLines: Could not get ranges for %c-direction of coordinate system '%s'\00", align 1
@.str4 = private unnamed_addr constant [126 x i8] c"IOUtil_1DLines: Cartesian coordinate system '%s' not found - no slice center set up for output of 1D lines from %dD variables\00", align 1
@.str5 = private unnamed_addr constant [122 x i8] c"IOUtil_1DLines: %c-coordinate for slice center of 1D lines in %c-direction (%f) is out of grid coordinates range (%f, %f)\00", align 1
@.str6 = private unnamed_addr constant [102 x i8] c"IOUtil_1DLines: no 1D %c-line output will be written for %dD variables with this slice center default\00", align 1
@.str7 = private unnamed_addr constant [128 x i8] c"IOUtil_2DPlanes: Cartesian coordinate system '%s' not found - no slice center set up for output of 2D planes from %dD variables\00", align 1
@.str8 = private unnamed_addr constant [81 x i8] c"IOUtil_2DPlanes: Could not get ranges for %c-direction of coordinate system '%s'\00", align 1
@.str9 = private unnamed_addr constant [108 x i8] c"IOUtil_2DPlanes: %c-coordinate for slice center of 2D planes (%f) is out of grid coordinates range (%f, %f)\00", align 1
@.str10 = private unnamed_addr constant [111 x i8] c"IOUtil_2DPlanes: no 2D planes in %c-direction will be written for %dD variables with this slice center default\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"  %s:\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"    %s %5d %s\00", align 1
@.str13 = private unnamed_addr constant [16 x i8] c"    %s %5.1f %s\00", align 1
@.str14 = private unnamed_addr constant [33 x i8] c"Unknown data type for timer info\00", align 1
@.str15 = private unnamed_addr constant [43 x i8] c"-----------------------------------------\0A\00", align 1
@.str16 = private unnamed_addr constant [67 x i8] c"Couldn't create timer info structure ! No timing output available.\00", align 1
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@CCTK_Barrier = external global i32 (%struct.cGH*)*
@.str17 = private unnamed_addr constant [87 x i8] c"$Header: /cactus/CactusBase/IOUtil/src/Utils.c,v 1.15 2001/12/28 21:26:13 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOUtil_Utils_c() #0 {
  ret i8* getelementptr inbounds ([87 x i8]* @.str17, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOUtil_1DLines(%struct.cGH* %GH, i32 %num_dims, i32** readonly %origin_index, double** nocapture readonly %origin_phys, i32** nocapture readonly %slice_center) #1 {
  %coord_system_name = alloca [20 x i8], align 16
  %1 = shl nsw i32 %num_dims, 1
  %2 = sext i32 %1 to i64
  %3 = tail call i8* @calloc(i64 %2, i64 8) #6
  %4 = bitcast i8* %3 to double*
  %5 = sext i32 %num_dims to i64
  %6 = getelementptr inbounds [20 x i8]* %coord_system_name, i64 0, i64 0
  %7 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %6, i32 0, i64 20, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 %num_dims) #6
  %8 = call i32 @CCTK_CoordSystemHandle(i8* %6) #6
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %.preheader6, label %25

.preheader6:                                      ; preds = %0
  %10 = icmp sgt i32 %num_dims, 0
  br i1 %10, label %.lr.ph13, label %.thread5

.lr.ph13:                                         ; preds = %.preheader6
  %11 = add i32 %num_dims, -1
  br label %15

.thread.preheader:                                ; preds = %.backedge
  br i1 %10, label %.preheader.lr.ph, label %.thread5

.preheader.lr.ph:                                 ; preds = %.thread.preheader
  %12 = icmp eq i32** %origin_index, null
  %13 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10
  %14 = add i32 %num_dims, -1
  br label %.lr.ph

; <label>:15                                      ; preds = %.backedge, %.lr.ph13
  %indvars.iv22 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next23, %.backedge ]
  %16 = getelementptr inbounds double* %4, i64 %indvars.iv22
  %.sum2 = add nsw i64 %indvars.iv22, %5
  %17 = getelementptr inbounds double* %4, i64 %.sum2
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %18 = trunc i64 %indvars.iv.next23 to i32
  %19 = call i32 @CCTK_CoordRange(%struct.cGH* %GH, double* %16, double* %17, i32 %18, i8* null, i8* %6) #6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %.backedge

.backedge:                                        ; preds = %15, %21
  %lftr.wideiv24 = trunc i64 %indvars.iv22 to i32
  %exitcond25 = icmp eq i32 %lftr.wideiv24, %11
  br i1 %exitcond25, label %.thread.preheader, label %15

; <label>:21                                      ; preds = %15
  %22 = add nuw nsw i64 %indvars.iv22, 120
  %23 = trunc i64 %22 to i32
  %24 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 107, i8* getelementptr inbounds ([74 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8]* @.str3, i64 0, i64 0), i32 %23, i8* %6) #6
  br label %.backedge

; <label>:25                                      ; preds = %0
  %26 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 116, i8* getelementptr inbounds ([74 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([126 x i8]* @.str4, i64 0, i64 0), i8* %6, i32 %num_dims) #6
  %27 = icmp sgt i32 %num_dims, 0
  br i1 %27, label %.preheader7.lr.ph, label %.thread5

.preheader7.lr.ph:                                ; preds = %25
  %28 = add i32 %num_dims, -1
  %29 = zext i32 %28 to i64
  %30 = shl nuw nsw i64 %29, 2
  %31 = add nuw nsw i64 %30, 4
  br label %32

; <label>:32                                      ; preds = %32, %.preheader7.lr.ph
  %indvars.iv30 = phi i64 [ 0, %.preheader7.lr.ph ], [ %indvars.iv.next31, %32 ]
  %33 = getelementptr inbounds i32** %slice_center, i64 %indvars.iv30
  %34 = bitcast i32** %33 to i8**
  %35 = load i8** %34, align 8, !tbaa !2
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 %31, i32 4, i1 false)
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %lftr.wideiv32 = trunc i64 %indvars.iv30 to i32
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %28
  br i1 %exitcond33, label %.thread5, label %32

.lr.ph:                                           ; preds = %.preheader.lr.ph, %.thread
  %indvars.iv18 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next19, %.thread ]
  %36 = getelementptr inbounds i32** %slice_center, i64 %indvars.iv18
  %37 = getelementptr inbounds double** %origin_phys, i64 %indvars.iv18
  %38 = add nuw nsw i64 %indvars.iv18, 120
  %39 = getelementptr inbounds i32** %origin_index, i64 %indvars.iv18
  br label %40

; <label>:40                                      ; preds = %85, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %85 ]
  %41 = trunc i64 %indvars.iv to i32
  %42 = trunc i64 %indvars.iv18 to i32
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

; <label>:44                                      ; preds = %40
  %45 = load i32** %36, align 8, !tbaa !2
  %46 = getelementptr inbounds i32* %45, i64 %indvars.iv
  store i32 0, i32* %46, align 4, !tbaa !6
  br label %85

; <label>:47                                      ; preds = %40
  br i1 %12, label %56, label %48

; <label>:48                                      ; preds = %47
  %49 = load i32** %39, align 8, !tbaa !2
  %50 = getelementptr inbounds i32* %49, i64 %indvars.iv
  %51 = load i32* %50, align 4, !tbaa !6
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %56

; <label>:53                                      ; preds = %48
  %54 = load i32** %36, align 8, !tbaa !2
  %55 = getelementptr inbounds i32* %54, i64 %indvars.iv
  store i32 %51, i32* %55, align 4, !tbaa !6
  br label %85

; <label>:56                                      ; preds = %47, %48
  %57 = getelementptr inbounds double* %4, i64 %indvars.iv
  %58 = load double* %57, align 8, !tbaa !8
  %59 = load double** %37, align 8, !tbaa !2
  %60 = getelementptr inbounds double* %59, i64 %indvars.iv
  %61 = load double* %60, align 8, !tbaa !8
  %62 = fcmp ogt double %58, %61
  %.pre35 = add nsw i64 %indvars.iv, %5
  %.pre36 = getelementptr inbounds double* %4, i64 %.pre35
  br i1 %62, label %._crit_edge34, label %63

; <label>:63                                      ; preds = %56
  %64 = load double* %.pre36, align 8, !tbaa !8
  %65 = fcmp olt double %64, %61
  br i1 %65, label %._crit_edge34, label %74

._crit_edge34:                                    ; preds = %56, %63
  %66 = add nuw nsw i64 %indvars.iv, 120
  %67 = load double* %.pre36, align 8, !tbaa !8
  %68 = trunc i64 %66 to i32
  %69 = trunc i64 %38 to i32
  %70 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 153, i8* getelementptr inbounds ([74 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([122 x i8]* @.str5, i64 0, i64 0), i32 %68, i32 %69, double %61, double %58, double %67) #6
  %71 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 159, i8* getelementptr inbounds ([74 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([102 x i8]* @.str6, i64 0, i64 0), i32 %69, i32 %num_dims) #6
  %72 = load i32** %36, align 8, !tbaa !2
  %73 = getelementptr inbounds i32* %72, i64 %indvars.iv
  store i32 -1, i32* %73, align 4, !tbaa !6
  br label %85

; <label>:74                                      ; preds = %63
  %75 = fsub double %61, %58
  %76 = load double** %13, align 8, !tbaa !10
  %77 = getelementptr inbounds double* %76, i64 %indvars.iv
  %78 = load double* %77, align 8, !tbaa !8
  %79 = fdiv double %75, %78
  %80 = fadd double %79, -1.000000e-06
  %81 = call double @ceil(double %80) #7
  %82 = fptosi double %81 to i32
  %83 = load i32** %36, align 8, !tbaa !2
  %84 = getelementptr inbounds i32* %83, i64 %indvars.iv
  store i32 %82, i32* %84, align 4, !tbaa !6
  br label %85

; <label>:85                                      ; preds = %44, %._crit_edge34, %74, %53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %41, %14
  br i1 %exitcond, label %.thread, label %40

.thread:                                          ; preds = %85
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21 = icmp eq i32 %42, %14
  br i1 %exitcond21, label %.thread5, label %.lr.ph

.thread5:                                         ; preds = %32, %.thread, %.preheader6, %25, %.thread.preheader
  %retval.03 = phi i32 [ 0, %.thread.preheader ], [ -1, %25 ], [ 0, %.preheader6 ], [ 0, %.thread ], [ -1, %32 ]
  call void @free(i8* %3) #8
  ret i32 %retval.03
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: optsize
declare i32 @CCTK_CoordSystemHandle(i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_CoordRange(%struct.cGH*, double*, double*, i32, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize readnone
declare double @ceil(double) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOUtil_2DPlanes(%struct.cGH* %GH, i32 %num_dims, i32* readonly %origin_index, double* nocapture readonly %origin_phys, i32* nocapture %slice_center) #1 {
  %coord_system_name = alloca [20 x i8], align 16
  %1 = getelementptr inbounds [20 x i8]* %coord_system_name, i64 0, i64 0
  %2 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 20, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 %num_dims) #6
  %3 = call i32 @CCTK_CoordSystemHandle(i8* %1) #6
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 248, i8* getelementptr inbounds ([74 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([128 x i8]* @.str7, i64 0, i64 0), i8* %1, i32 %num_dims) #6
  br label %67

; <label>:7                                       ; preds = %0
  %8 = shl nsw i32 %num_dims, 1
  %9 = sext i32 %8 to i64
  %10 = call i8* @calloc(i64 %9, i64 8) #6
  %11 = bitcast i8* %10 to double*
  %12 = sext i32 %num_dims to i64
  %13 = icmp sgt i32 %num_dims, 0
  br i1 %13, label %.lr.ph7, label %._crit_edge

.lr.ph7:                                          ; preds = %7
  %14 = add i32 %num_dims, -1
  br label %18

.preheader:                                       ; preds = %29
  br i1 %13, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %15 = icmp eq i32* %origin_index, null
  %16 = add i32 %num_dims, -1
  %17 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10
  br label %30

; <label>:18                                      ; preds = %29, %.lr.ph7
  %indvars.iv8 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next9, %29 ]
  %19 = getelementptr inbounds double* %11, i64 %indvars.iv8
  %.sum2 = add nsw i64 %indvars.iv8, %12
  %20 = getelementptr inbounds double* %11, i64 %.sum2
  %21 = sub nsw i64 %12, %indvars.iv8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @CCTK_CoordRange(%struct.cGH* %GH, double* %19, double* %20, i32 %22, i8* null, i8* %1) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

; <label>:25                                      ; preds = %18
  %26 = add nsw i64 %21, 119
  %27 = trunc i64 %26 to i32
  %28 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 265, i8* getelementptr inbounds ([74 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([81 x i8]* @.str8, i64 0, i64 0), i32 %27, i8* %1) #6
  br label %29

; <label>:29                                      ; preds = %18, %25
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %lftr.wideiv10 = trunc i64 %indvars.iv8 to i32
  %exitcond11 = icmp eq i32 %lftr.wideiv10, %14
  br i1 %exitcond11, label %.preheader, label %18

; <label>:30                                      ; preds = %66, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %66 ]
  br i1 %15, label %37, label %31

; <label>:31                                      ; preds = %30
  %32 = getelementptr inbounds i32* %origin_index, i64 %indvars.iv
  %33 = load i32* %32, align 4, !tbaa !6
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %37

; <label>:35                                      ; preds = %31
  %36 = getelementptr inbounds i32* %slice_center, i64 %indvars.iv
  store i32 %33, i32* %36, align 4, !tbaa !6
  br label %66

; <label>:37                                      ; preds = %30, %31
  %38 = getelementptr inbounds double* %11, i64 %indvars.iv
  %39 = load double* %38, align 8, !tbaa !8
  %40 = getelementptr inbounds double* %origin_phys, i64 %indvars.iv
  %41 = load double* %40, align 8, !tbaa !8
  %42 = fcmp ogt double %39, %41
  %.pre = add nsw i64 %indvars.iv, %12
  %.pre13 = getelementptr inbounds double* %11, i64 %.pre
  br i1 %42, label %._crit_edge12, label %43

; <label>:43                                      ; preds = %37
  %44 = load double* %.pre13, align 8, !tbaa !8
  %45 = fcmp olt double %44, %41
  br i1 %45, label %._crit_edge12, label %53

._crit_edge12:                                    ; preds = %37, %43
  %46 = sub nsw i64 %12, %indvars.iv
  %47 = add nsw i64 %46, 119
  %48 = load double* %.pre13, align 8, !tbaa !8
  %49 = trunc i64 %47 to i32
  %50 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 283, i8* getelementptr inbounds ([74 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([108 x i8]* @.str9, i64 0, i64 0), i32 %49, double %41, double %39, double %48) #6
  %51 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 288, i8* getelementptr inbounds ([74 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([111 x i8]* @.str10, i64 0, i64 0), i32 %49, i32 %num_dims) #6
  %52 = getelementptr inbounds i32* %slice_center, i64 %indvars.iv
  store i32 0, i32* %52, align 4, !tbaa !6
  br label %66

; <label>:53                                      ; preds = %43
  %54 = fsub double %41, %39
  %55 = trunc i64 %indvars.iv to i32
  %56 = sub i32 %16, %55
  %57 = sext i32 %56 to i64
  %58 = load double** %17, align 8, !tbaa !10
  %59 = getelementptr inbounds double* %58, i64 %57
  %60 = load double* %59, align 8, !tbaa !8
  %61 = fdiv double %54, %60
  %62 = fadd double %61, -1.000000e-06
  %63 = call double @ceil(double %62) #7
  %64 = fptosi double %63 to i32
  %65 = getelementptr inbounds i32* %slice_center, i64 %indvars.iv
  store i32 %64, i32* %65, align 4, !tbaa !6
  br label %66

; <label>:66                                      ; preds = %35, %53, %._crit_edge12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %16
  br i1 %exitcond, label %._crit_edge, label %30

._crit_edge:                                      ; preds = %66, %7, %.preheader
  call void @free(i8* %10) #8
  br label %67

; <label>:67                                      ; preds = %._crit_edge, %5
  %.0 = phi i32 [ -1, %5 ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @IOUtil_PrintTimings(i8* %description, i32 %ntimers, i32* nocapture readonly %timers, i8** nocapture readonly %timer_descriptions) #1 {
  %1 = tail call %struct.cTimerData* @CCTK_TimerCreateData() #6
  %2 = icmp eq %struct.cTimerData* %1, null
  br i1 %2, label %62, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* %description) #6
  %5 = getelementptr inbounds %struct.cTimerData* %1, i64 0, i32 0
  %6 = load i32* %5, align 4, !tbaa !12
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.preheader.lr.ph, label %._crit_edge3

.preheader.lr.ph:                                 ; preds = %3
  %8 = icmp sgt i32 %ntimers, 0
  %9 = getelementptr inbounds %struct.cTimerData* %1, i64 0, i32 1
  %10 = add i32 %ntimers, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %56
  %11 = phi i32 [ %6, %.preheader.lr.ph ], [ %57, %56 ]
  %indvars.iv4 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next5, %56 ]
  br i1 %8, label %.lr.ph, label %56

.lr.ph:                                           ; preds = %.preheader, %55
  %indvars.iv = phi i64 [ %indvars.iv.next, %55 ], [ 0, %.preheader ]
  %12 = getelementptr inbounds i32* %timers, i64 %indvars.iv
  %13 = load i32* %12, align 4, !tbaa !6
  %14 = tail call i32 @CCTK_TimerI(i32 %13, %struct.cTimerData* %1) #6
  %15 = trunc i64 %indvars.iv to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

; <label>:17                                      ; preds = %.lr.ph
  %18 = load %struct.cTimerVal** %9, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.cTimerVal* %18, i64 %indvars.iv4, i32 1
  %20 = load i8** %19, align 8, !tbaa !15
  %21 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0), i8* %20) #6
  br label %22

; <label>:22                                      ; preds = %17, %.lr.ph
  %23 = load %struct.cTimerVal** %9, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct.cTimerVal* %23, i64 %indvars.iv4, i32 0
  %25 = load i32* %24, align 4, !tbaa !17
  switch i32 %25, label %53 [
    i32 1, label %26
    i32 2, label %35
    i32 3, label %44
  ]

; <label>:26                                      ; preds = %22
  %27 = getelementptr inbounds i8** %timer_descriptions, i64 %indvars.iv
  %28 = load i8** %27, align 8, !tbaa !2
  %29 = getelementptr inbounds %struct.cTimerVal* %23, i64 %indvars.iv4, i32 3
  %30 = bitcast %union.anon* %29 to i32*
  %31 = load i32* %30, align 4, !tbaa !6
  %32 = getelementptr inbounds %struct.cTimerVal* %23, i64 %indvars.iv4, i32 2
  %33 = load i8** %32, align 8, !tbaa !18
  %34 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i8* %28, i32 %31, i8* %33) #6
  br label %55

; <label>:35                                      ; preds = %22
  %36 = getelementptr inbounds i8** %timer_descriptions, i64 %indvars.iv
  %37 = load i8** %36, align 8, !tbaa !2
  %38 = getelementptr inbounds %struct.cTimerVal* %23, i64 %indvars.iv4, i32 3, i32 0
  %39 = load i64* %38, align 8, !tbaa !19
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.cTimerVal* %23, i64 %indvars.iv4, i32 2
  %42 = load i8** %41, align 8, !tbaa !18
  %43 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i8* %37, i32 %40, i8* %42) #6
  br label %55

; <label>:44                                      ; preds = %22
  %45 = getelementptr inbounds i8** %timer_descriptions, i64 %indvars.iv
  %46 = load i8** %45, align 8, !tbaa !2
  %47 = getelementptr inbounds %struct.cTimerVal* %23, i64 %indvars.iv4, i32 3
  %48 = bitcast %union.anon* %47 to double*
  %49 = load double* %48, align 8, !tbaa !8
  %50 = getelementptr inbounds %struct.cTimerVal* %23, i64 %indvars.iv4, i32 2
  %51 = load i8** %50, align 8, !tbaa !18
  %52 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str13, i64 0, i64 0), i8* %46, double %49, i8* %51) #6
  br label %55

; <label>:53                                      ; preds = %22
  %54 = tail call i32 @CCTK_Warn(i32 1, i32 391, i8* getelementptr inbounds ([74 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str14, i64 0, i64 0)) #6
  br label %55

; <label>:55                                      ; preds = %26, %35, %44, %53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %15, %10
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %55
  %.pre = load i32* %5, align 4, !tbaa !12
  br label %56

; <label>:56                                      ; preds = %._crit_edge, %.preheader
  %57 = phi i32 [ %.pre, %._crit_edge ], [ %11, %.preheader ]
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %indvars.iv.next5, %58
  br i1 %59, label %.preheader, label %._crit_edge3

._crit_edge3:                                     ; preds = %56, %3
  %60 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str15, i64 0, i64 0)) #6
  %61 = tail call i32 @CCTK_TimerDestroyData(%struct.cTimerData* %1) #6
  br label %64

; <label>:62                                      ; preds = %0
  %63 = tail call i32 @CCTK_Warn(i32 1, i32 402, i8* getelementptr inbounds ([74 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str16, i64 0, i64 0)) #6
  br label %64

; <label>:64                                      ; preds = %62, %._crit_edge3
  ret void
}

; Function Attrs: optsize
declare %struct.cTimerData* @CCTK_TimerCreateData() #3

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_TimerI(i32, %struct.cTimerData*) #3

; Function Attrs: optsize
declare i32 @CCTK_VInfo(i8*, i8*, ...) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_TimerDestroyData(%struct.cTimerData*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOUtil_CreateDirectory(%struct.cGH* %GH, i8* %dirname, i32 %multiple_io_procs, i32 %ioproc) #1 {
  %1 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !2
  %2 = tail call i32 %1(%struct.cGH* %GH) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @CCTK_CreateDirectory(i32 493, i8* %dirname) #6
  br label %6

; <label>:6                                       ; preds = %4, %0
  %retval.0 = phi i32 [ %5, %4 ], [ 0, %0 ]
  %7 = icmp eq i32 %multiple_io_procs, 0
  br i1 %7, label %15, label %8

; <label>:8                                       ; preds = %6
  %9 = load i32 (%struct.cGH*)** @CCTK_Barrier, align 8, !tbaa !2
  %10 = tail call i32 %9(%struct.cGH* %GH) #6
  %11 = icmp eq i32 %2, %ioproc
  %12 = icmp ne i32 %ioproc, 0
  %or.cond = or i1 %12, %11
  br i1 %or.cond, label %13, label %15

; <label>:13                                      ; preds = %8
  %14 = tail call i32 @CCTK_CreateDirectory(i32 493, i8* %dirname) #6
  br label %15

; <label>:15                                      ; preds = %6, %13, %8
  %retval.1 = phi i32 [ %14, %13 ], [ %retval.0, %8 ], [ %retval.0, %6 ]
  ret i32 %retval.1
}

; Function Attrs: optsize
declare i32 @CCTK_CreateDirectory(i32, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone }
attributes #8 = { optsize }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!11, !3, i64 72}
!11 = !{!"", !7, i64 0, !7, i64 4, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !9, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !7, i64 104, !3, i64 112, !9, i64 120, !3, i64 128, !3, i64 136, !3, i64 144}
!12 = !{!13, !7, i64 0}
!13 = !{!"", !7, i64 0, !3, i64 8}
!14 = !{!13, !3, i64 8}
!15 = !{!16, !3, i64 8}
!16 = !{!"", !4, i64 0, !3, i64 8, !3, i64 16, !4, i64 24}
!17 = !{!16, !4, i64 0}
!18 = !{!16, !3, i64 16}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !4, i64 0}
