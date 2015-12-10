; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [82 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str2 = private unnamed_addr constant [121 x i8] c"PUGH_ReductionArrays: Don't know how to reduce a %d-dimensional array with %d elements to an output array of %d elements\00", align 1
@CCTK_nProcs = external global i32 (%struct.cGH*)*
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str3 = private unnamed_addr constant [65 x i8] c"PUGH_ReductionGVs: Only one output value per input array allowed\00", align 1
@.str4 = private unnamed_addr constant [48 x i8] c"PUGH_ReductionGVs: Invalid output variable type\00", align 1
@.str5 = private unnamed_addr constant [42 x i8] c"PUGH_ReductionGVs: Invalid variable index\00", align 1
@.str6 = private unnamed_addr constant [94 x i8] c"$Header: /cactus/CactusPUGH/PUGHReduce/src/Reduction.c,v 1.8 2001/10/09 14:04:10 tradke Exp $\00", align 1
@.str7 = private unnamed_addr constant [46 x i8] c"copy_real_to_outtype: Unsupported output type\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHReduce_Reduction_c() #0 {
  ret i8* getelementptr inbounds ([94 x i8]* @.str6, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ReductionArrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* nocapture readonly %dims, i32 %intype, i32 %num_inarrays, i8** %inarrays, i32 %outtype, i32 %num_outvals, i8* nocapture %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* nocapture %reduction_fn) #1 {
  %from = alloca [1 x i32], align 4
  %to = alloca [1 x i32], align 4
  %iterator = alloca [1 x i32], align 4
  %points_per_dim = alloca [1 x i32], align 4
  %1 = getelementptr inbounds [1 x i32]* %points_per_dim, i64 0, i64 0
  store i32 1, i32* %1, align 4, !tbaa !2
  %2 = getelementptr inbounds [1 x i32]* %from, i64 0, i64 0
  store i32 0, i32* %2, align 4, !tbaa !2
  %3 = load i32* %dims, align 4, !tbaa !2
  %4 = getelementptr inbounds [1 x i32]* %to, i64 0, i64 0
  store i32 %3, i32* %4, align 4, !tbaa !2
  %5 = icmp sgt i32 %num_dims, 1
  br i1 %5, label %.lr.ph4, label %12

.lr.ph4:                                          ; preds = %0
  %6 = add i32 %num_dims, -1
  br label %7

; <label>:7                                       ; preds = %7, %.lr.ph4
  %indvars.iv6 = phi i64 [ 1, %.lr.ph4 ], [ %indvars.iv.next7, %7 ]
  %8 = phi i32 [ %3, %.lr.ph4 ], [ %11, %7 ]
  %9 = getelementptr inbounds i32* %dims, i64 %indvars.iv6
  %10 = load i32* %9, align 4, !tbaa !2
  %11 = mul nsw i32 %8, %10
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %lftr.wideiv8 = trunc i64 %indvars.iv6 to i32
  %exitcond9 = icmp eq i32 %lftr.wideiv8, %6
  br i1 %exitcond9, label %._crit_edge5, label %7

._crit_edge5:                                     ; preds = %7
  store i32 %11, i32* %4, align 4, !tbaa !2
  br label %12

; <label>:12                                      ; preds = %._crit_edge5, %0
  %13 = phi i32 [ %11, %._crit_edge5 ], [ %3, %0 ]
  %14 = icmp eq i32 %num_outvals, 1
  br i1 %14, label %20, label %15

; <label>:15                                      ; preds = %12
  %16 = icmp eq i32 %13, %num_outvals
  br i1 %16, label %19, label %17

; <label>:17                                      ; preds = %15
  %18 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 150, i8* getelementptr inbounds ([82 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([121 x i8]* @.str2, i64 0, i64 0), i32 %num_dims, i32 %13, i32 %num_outvals) #5
  br label %50

; <label>:19                                      ; preds = %15
  store i32 1, i32* %4, align 4, !tbaa !2
  br label %20

; <label>:20                                      ; preds = %12, %19
  %21 = phi i32 [ %13, %12 ], [ 1, %19 ]
  %22 = load i32 (%struct.cGH*)** @CCTK_nProcs, align 8, !tbaa !6
  %23 = tail call i32 %22(%struct.cGH* %GH) #5
  %24 = mul nsw i32 %23, %21
  %25 = sext i32 %num_inarrays to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call i8* @malloc(i64 %26) #5
  %28 = bitcast i8* %27 to i32*
  %29 = icmp sgt i32 %num_inarrays, 0
  br i1 %29, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %20
  %30 = add i32 %num_inarrays, -1
  br label %31

; <label>:31                                      ; preds = %31, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %31 ]
  %32 = getelementptr inbounds i32* %28, i64 %indvars.iv
  store i32 %intype, i32* %32, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %30
  br i1 %exitcond, label %._crit_edge, label %31

._crit_edge:                                      ; preds = %31, %20
  %33 = sext i32 %num_outvals to i64
  %34 = shl nsw i64 %33, 3
  %35 = tail call i8* @malloc(i64 %34) #5
  %36 = bitcast i8* %35 to double*
  %37 = getelementptr inbounds [1 x i32]* %iterator, i64 0, i64 0
  %38 = call i32 %reduction_fn(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %2, i32* %4, i32* %37, i32* %1, i32 %24, i32 %num_inarrays, i32* %28, i8** %inarrays, i32 %num_outvals, double* %36) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

; <label>:40                                      ; preds = %._crit_edge
  %41 = icmp slt i32 %proc, 0
  br i1 %41, label %46, label %42

; <label>:42                                      ; preds = %40
  %43 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !6
  %44 = call i32 %43(%struct.cGH* %GH) #5
  %45 = icmp eq i32 %44, %proc
  br i1 %45, label %46, label %49

; <label>:46                                      ; preds = %42, %40
  %47 = mul nsw i32 %num_outvals, %num_inarrays
  %48 = call fastcc i32 @copy_real_to_outtype(i32 %47, double* %36, i32 %outtype, i8* %outvals) #6
  br label %49

; <label>:49                                      ; preds = %46, %42, %._crit_edge
  %retval.0 = phi i32 [ %48, %46 ], [ 0, %42 ], [ %38, %._crit_edge ]
  call void @free(i8* %27) #6
  call void @free(i8* %35) #6
  br label %50

; <label>:50                                      ; preds = %49, %17
  %.0 = phi i32 [ -1, %17 ], [ %retval.0, %49 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @copy_real_to_outtype(i32 %num_elems, double* nocapture readonly %inarray, i32 %outtype, i8* nocapture %outarray) #1 {
  switch i32 %outtype, label %82 [
    i32 1, label %.preheader
    i32 2, label %8
    i32 3, label %17
    i32 4, label %26
    i32 5, label %35
    i32 6, label %44
    i32 7, label %54
    i32 8, label %63
    i32 9, label %73
  ]

.preheader:                                       ; preds = %0
  %1 = icmp sgt i32 %num_elems, 0
  br i1 %1, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %2 = add i32 %num_elems, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds double* %inarray, i64 %indvars.iv
  %5 = load double* %4, align 8, !tbaa !8
  %6 = fptoui double %5 to i8
  %7 = getelementptr inbounds i8* %outarray, i64 %indvars.iv
  store i8 %6, i8* %7, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %.loopexit, label %3

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %outarray to i32*
  %10 = icmp sgt i32 %num_elems, 0
  br i1 %10, label %.lr.ph19, label %.loopexit

.lr.ph19:                                         ; preds = %8
  %11 = add i32 %num_elems, -1
  br label %12

; <label>:12                                      ; preds = %12, %.lr.ph19
  %indvars.iv34 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next35, %12 ]
  %13 = getelementptr inbounds double* %inarray, i64 %indvars.iv34
  %14 = load double* %13, align 8, !tbaa !8
  %15 = fptosi double %14 to i32
  %16 = getelementptr inbounds i32* %9, i64 %indvars.iv34
  store i32 %15, i32* %16, align 4, !tbaa !2
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %lftr.wideiv36 = trunc i64 %indvars.iv34 to i32
  %exitcond37 = icmp eq i32 %lftr.wideiv36, %11
  br i1 %exitcond37, label %.loopexit, label %12

; <label>:17                                      ; preds = %0
  %18 = bitcast i8* %outarray to i16*
  %19 = icmp sgt i32 %num_elems, 0
  br i1 %19, label %.lr.ph21, label %.loopexit

.lr.ph21:                                         ; preds = %17
  %20 = add i32 %num_elems, -1
  br label %21

; <label>:21                                      ; preds = %21, %.lr.ph21
  %indvars.iv38 = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next39, %21 ]
  %22 = getelementptr inbounds double* %inarray, i64 %indvars.iv38
  %23 = load double* %22, align 8, !tbaa !8
  %24 = fptosi double %23 to i16
  %25 = getelementptr inbounds i16* %18, i64 %indvars.iv38
  store i16 %24, i16* %25, align 2, !tbaa !11
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %lftr.wideiv40 = trunc i64 %indvars.iv38 to i32
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %20
  br i1 %exitcond41, label %.loopexit, label %21

; <label>:26                                      ; preds = %0
  %27 = bitcast i8* %outarray to i32*
  %28 = icmp sgt i32 %num_elems, 0
  br i1 %28, label %.lr.ph23, label %.loopexit

.lr.ph23:                                         ; preds = %26
  %29 = add i32 %num_elems, -1
  br label %30

; <label>:30                                      ; preds = %30, %.lr.ph23
  %indvars.iv42 = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next43, %30 ]
  %31 = getelementptr inbounds double* %inarray, i64 %indvars.iv42
  %32 = load double* %31, align 8, !tbaa !8
  %33 = fptosi double %32 to i32
  %34 = getelementptr inbounds i32* %27, i64 %indvars.iv42
  store i32 %33, i32* %34, align 4, !tbaa !2
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %lftr.wideiv44 = trunc i64 %indvars.iv42 to i32
  %exitcond45 = icmp eq i32 %lftr.wideiv44, %29
  br i1 %exitcond45, label %.loopexit, label %30

; <label>:35                                      ; preds = %0
  %36 = bitcast i8* %outarray to i64*
  %37 = icmp sgt i32 %num_elems, 0
  br i1 %37, label %.lr.ph25, label %.loopexit

.lr.ph25:                                         ; preds = %35
  %38 = add i32 %num_elems, -1
  br label %39

; <label>:39                                      ; preds = %39, %.lr.ph25
  %indvars.iv46 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next47, %39 ]
  %40 = getelementptr inbounds double* %inarray, i64 %indvars.iv46
  %41 = load double* %40, align 8, !tbaa !8
  %42 = fptosi double %41 to i64
  %43 = getelementptr inbounds i64* %36, i64 %indvars.iv46
  store i64 %42, i64* %43, align 8, !tbaa !13
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %lftr.wideiv48 = trunc i64 %indvars.iv46 to i32
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %38
  br i1 %exitcond49, label %.loopexit, label %39

; <label>:44                                      ; preds = %0
  %45 = bitcast i8* %outarray to double*
  %46 = icmp sgt i32 %num_elems, 0
  br i1 %46, label %.lr.ph27, label %.loopexit

.lr.ph27:                                         ; preds = %44
  %47 = add i32 %num_elems, -1
  br label %48

; <label>:48                                      ; preds = %48, %.lr.ph27
  %indvars.iv50 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next51, %48 ]
  %49 = getelementptr inbounds double* %inarray, i64 %indvars.iv50
  %50 = bitcast double* %49 to i64*
  %51 = load i64* %50, align 8, !tbaa !8
  %52 = getelementptr inbounds double* %45, i64 %indvars.iv50
  %53 = bitcast double* %52 to i64*
  store i64 %51, i64* %53, align 8, !tbaa !8
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %lftr.wideiv52 = trunc i64 %indvars.iv50 to i32
  %exitcond53 = icmp eq i32 %lftr.wideiv52, %47
  br i1 %exitcond53, label %.loopexit, label %48

; <label>:54                                      ; preds = %0
  %55 = bitcast i8* %outarray to float*
  %56 = icmp sgt i32 %num_elems, 0
  br i1 %56, label %.lr.ph29, label %.loopexit

.lr.ph29:                                         ; preds = %54
  %57 = add i32 %num_elems, -1
  br label %58

; <label>:58                                      ; preds = %58, %.lr.ph29
  %indvars.iv54 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next55, %58 ]
  %59 = getelementptr inbounds double* %inarray, i64 %indvars.iv54
  %60 = load double* %59, align 8, !tbaa !8
  %61 = fptrunc double %60 to float
  %62 = getelementptr inbounds float* %55, i64 %indvars.iv54
  store float %61, float* %62, align 4, !tbaa !15
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %lftr.wideiv56 = trunc i64 %indvars.iv54 to i32
  %exitcond57 = icmp eq i32 %lftr.wideiv56, %57
  br i1 %exitcond57, label %.loopexit, label %58

; <label>:63                                      ; preds = %0
  %64 = bitcast i8* %outarray to double*
  %65 = icmp sgt i32 %num_elems, 0
  br i1 %65, label %.lr.ph31, label %.loopexit

.lr.ph31:                                         ; preds = %63
  %66 = add i32 %num_elems, -1
  br label %67

; <label>:67                                      ; preds = %67, %.lr.ph31
  %indvars.iv58 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next59, %67 ]
  %68 = getelementptr inbounds double* %inarray, i64 %indvars.iv58
  %69 = bitcast double* %68 to i64*
  %70 = load i64* %69, align 8, !tbaa !8
  %71 = getelementptr inbounds double* %64, i64 %indvars.iv58
  %72 = bitcast double* %71 to i64*
  store i64 %70, i64* %72, align 8, !tbaa !8
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %lftr.wideiv60 = trunc i64 %indvars.iv58 to i32
  %exitcond61 = icmp eq i32 %lftr.wideiv60, %66
  br i1 %exitcond61, label %.loopexit, label %67

; <label>:73                                      ; preds = %0
  %74 = bitcast i8* %outarray to x86_fp80*
  %75 = icmp sgt i32 %num_elems, 0
  br i1 %75, label %.lr.ph33, label %.loopexit

.lr.ph33:                                         ; preds = %73
  %76 = add i32 %num_elems, -1
  br label %77

; <label>:77                                      ; preds = %77, %.lr.ph33
  %indvars.iv62 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next63, %77 ]
  %78 = getelementptr inbounds double* %inarray, i64 %indvars.iv62
  %79 = load double* %78, align 8, !tbaa !8
  %80 = fpext double %79 to x86_fp80
  %81 = getelementptr inbounds x86_fp80* %74, i64 %indvars.iv62
  store x86_fp80 %80, x86_fp80* %81, align 16, !tbaa !17
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %lftr.wideiv64 = trunc i64 %indvars.iv62 to i32
  %exitcond65 = icmp eq i32 %lftr.wideiv64, %76
  br i1 %exitcond65, label %.loopexit, label %77

; <label>:82                                      ; preds = %0
  %83 = tail call i32 @CCTK_Warn(i32 1, i32 655, i8* getelementptr inbounds ([82 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str7, i64 0, i64 0)) #5
  br label %.loopexit

.loopexit:                                        ; preds = %77, %67, %58, %48, %39, %30, %21, %12, %3, %73, %63, %54, %44, %35, %26, %17, %8, %.preheader, %82
  %retval.0 = phi i32 [ -1, %82 ], [ 0, %.preheader ], [ 0, %8 ], [ 0, %17 ], [ 0, %26 ], [ 0, %35 ], [ 0, %44 ], [ 0, %54 ], [ 0, %63 ], [ 0, %73 ], [ 0, %3 ], [ 0, %12 ], [ 0, %21 ], [ 0, %30 ], [ 0, %39 ], [ 0, %48 ], [ 0, %58 ], [ 0, %67 ], [ 0, %77 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ReductionGVs(%struct.cGH* %GH, i32 %proc, i32 %num_invars, i32* nocapture readonly %invars, i32 %outtype, i32 %num_outvals, i8* nocapture %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* nocapture %reduction_fn) #1 {
  %from.i = alloca i32, align 4
  %to.i = alloca i32, align 4
  %iterator.i = alloca i32, align 4
  %points_per_dim.i = alloca i32, align 4
  %type.i = alloca i32, align 4
  %data.i = alloca i8*, align 8
  %result = alloca double, align 8
  %1 = icmp eq i32 %num_outvals, 1
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_Warn(i32 1, i32 280, i8* getelementptr inbounds ([82 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0)) #5
  br label %.loopexit

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @CCTK_VarTypeSize(i32 %outtype) #5
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %9

; <label>:7                                       ; preds = %4
  %8 = tail call i32 @CCTK_Warn(i32 1, i32 287, i8* getelementptr inbounds ([82 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0)) #5
  br label %.loopexit

; <label>:9                                       ; preds = %4
  %10 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !6
  %11 = tail call i32 %10(%struct.cGH* %GH) #5
  %12 = icmp sgt i32 %num_invars, 0
  br i1 %12, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %9
  %13 = bitcast i32* %from.i to i8*
  %14 = bitcast i32* %to.i to i8*
  %15 = bitcast i32* %iterator.i to i8*
  %16 = bitcast i32* %points_per_dim.i to i8*
  %17 = bitcast i32* %type.i to i8*
  %18 = bitcast i8** %data.i to i8*
  %19 = bitcast i8** %data.i to i64*
  %20 = sext i32 %5 to i64
  %21 = add i32 %num_invars, -1
  br label %22

; <label>:22                                      ; preds = %133, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %133 ]
  %retval.04 = phi i32 [ 0, %.lr.ph ], [ %134, %133 ]
  %23 = getelementptr inbounds i32* %invars, i64 %indvars.iv
  %24 = load i32* %23, align 4, !tbaa !2
  %25 = call i32 @CCTK_GroupTypeFromVarI(i32 %24) #5
  switch i32 %25, label %.thread [
    i32 2, label %26
    i32 3, label %26
    i32 1, label %115
  ]

; <label>:26                                      ; preds = %22, %22
  %27 = load i32* %23, align 4, !tbaa !2
  %28 = sext i32 %27 to i64
  %29 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #5
  %30 = getelementptr inbounds %struct.PGH* %29, i64 0, i32 7
  %31 = bitcast i8**** %30 to %struct.PGA****
  %32 = load %struct.PGA**** %31, align 8, !tbaa !19
  %33 = getelementptr inbounds %struct.PGA*** %32, i64 %28
  %34 = load %struct.PGA*** %33, align 8, !tbaa !6
  %35 = load %struct.PGA** %34, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.PGA* %35, i64 0, i32 11
  %37 = load %struct.PConnectivity** %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.PConnectivity* %37, i64 0, i32 0
  %39 = load i32* %38, align 4, !tbaa !23
  %40 = shl nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 2
  %43 = call i8* @malloc(i64 %42) #5
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.PConnectivity** %36, align 8, !tbaa !21
  %46 = getelementptr inbounds %struct.PConnectivity* %45, i64 0, i32 0
  %47 = load i32* %46, align 4, !tbaa !23
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32* %44, i64 %48
  %50 = shl nsw i32 %47, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32* %44, i64 %51
  %53 = mul nsw i32 %47, 3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32* %44, i64 %54
  store i32 1, i32* %55, align 4, !tbaa !2
  %56 = load i32* %46, align 4, !tbaa !23
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %.lr.ph.i, label %PUGH_ReductionGA.exit

.lr.ph.i:                                         ; preds = %26
  %58 = getelementptr inbounds %struct.PGA* %35, i64 0, i32 6
  %59 = getelementptr inbounds %struct.PGA* %35, i64 0, i32 10
  br label %60

; <label>:60                                      ; preds = %107, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %107 ]
  %num_points.03.i = phi i32 [ 1, %.lr.ph.i ], [ %95, %107 ]
  %61 = load i32* %58, align 4, !tbaa !25
  %62 = trunc i64 %indvars.iv.i to i32
  %63 = call i32 @CCTK_StaggerDirIndex(i32 %62, i32 %61) #5
  %64 = sext i32 %63 to i64
  %65 = load %struct.PGExtras** %59, align 8, !tbaa !26
  %66 = getelementptr inbounds %struct.PGExtras* %65, i64 0, i32 13, i64 %64, i64 0
  %67 = load i32** %66, align 8, !tbaa !6
  %68 = getelementptr inbounds i32* %67, i64 %indvars.iv.i
  %69 = load i32* %68, align 4, !tbaa !2
  %70 = getelementptr inbounds i32* %44, i64 %indvars.iv.i
  store i32 %69, i32* %70, align 4, !tbaa !2
  %71 = getelementptr inbounds %struct.PGExtras* %65, i64 0, i32 13, i64 %64, i64 1
  %72 = load i32** %71, align 8, !tbaa !6
  %73 = getelementptr inbounds i32* %72, i64 %indvars.iv.i
  %74 = load i32* %73, align 4, !tbaa !2
  %.sum.i = add nsw i64 %indvars.iv.i, %48
  %75 = getelementptr inbounds i32* %44, i64 %.sum.i
  store i32 %74, i32* %75, align 4, !tbaa !2
  %76 = getelementptr inbounds %struct.PGExtras* %65, i64 0, i32 1
  %77 = load i32** %76, align 8, !tbaa !27
  %78 = getelementptr inbounds i32* %77, i64 %indvars.iv.i
  %79 = load i32* %78, align 4, !tbaa !2
  %80 = load %struct.PConnectivity** %36, align 8, !tbaa !21
  %81 = getelementptr inbounds %struct.PConnectivity* %80, i64 0, i32 3
  %82 = load i32** %81, align 8, !tbaa !29
  %83 = getelementptr inbounds i32* %82, i64 %indvars.iv.i
  %84 = load i32* %83, align 4, !tbaa !2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %93, label %86

; <label>:86                                      ; preds = %60
  %87 = getelementptr inbounds %struct.PGExtras* %65, i64 0, i32 12
  %88 = load i32** %87, align 8, !tbaa !30
  %89 = getelementptr inbounds i32* %88, i64 %indvars.iv.i
  %90 = load i32* %89, align 4, !tbaa !2
  %91 = shl nsw i32 %90, 1
  %92 = sub nsw i32 %79, %91
  br label %93

; <label>:93                                      ; preds = %86, %60
  %dir_points.0.i = phi i32 [ %92, %86 ], [ %79, %60 ]
  %not..i = icmp ne i32 %63, 0
  %94 = sext i1 %not..i to i32
  %dir_points.0..i = add nsw i32 %dir_points.0.i, %94
  %95 = mul nsw i32 %dir_points.0..i, %num_points.03.i
  %96 = icmp sgt i64 %indvars.iv.i, 0
  br i1 %96, label %97, label %107

; <label>:97                                      ; preds = %93
  %98 = add nsw i64 %indvars.iv.i, -1
  %.sum1.i = add nsw i64 %98, %54
  %99 = getelementptr inbounds i32* %44, i64 %.sum1.i
  %100 = load i32* %99, align 4, !tbaa !2
  %101 = getelementptr inbounds %struct.PGExtras* %65, i64 0, i32 6
  %102 = load i32** %101, align 8, !tbaa !31
  %103 = getelementptr inbounds i32* %102, i64 %98
  %104 = load i32* %103, align 4, !tbaa !2
  %105 = mul nsw i32 %104, %100
  %.sum2.i = add nsw i64 %indvars.iv.i, %54
  %106 = getelementptr inbounds i32* %44, i64 %.sum2.i
  store i32 %105, i32* %106, align 4, !tbaa !2
  br label %107

; <label>:107                                     ; preds = %97, %93
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %108 = getelementptr inbounds %struct.PConnectivity* %80, i64 0, i32 0
  %109 = load i32* %108, align 4, !tbaa !23
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %indvars.iv.next.i, %110
  br i1 %111, label %60, label %PUGH_ReductionGA.exit

PUGH_ReductionGA.exit:                            ; preds = %107, %26
  %.lcssa.i = phi i32 [ %56, %26 ], [ %109, %107 ]
  %num_points.0.lcssa.i = phi i32 [ 1, %26 ], [ %95, %107 ]
  %112 = getelementptr inbounds %struct.PGA* %35, i64 0, i32 9
  %113 = getelementptr inbounds %struct.PGA* %35, i64 0, i32 4
  %114 = call i32 %reduction_fn(%struct.cGH* %GH, i32 %proc, i32 %.lcssa.i, i32* %44, i32* %49, i32* %52, i32* %55, i32 %num_points.0.lcssa.i, i32 1, i32* %112, i8** %113, i32 1, double* %result) #5
  call void @free(i8* %43) #5
  br label %128

; <label>:115                                     ; preds = %22
  %116 = load i32* %23, align 4, !tbaa !2
  call void @llvm.lifetime.start(i64 4, i8* %13)
  call void @llvm.lifetime.start(i64 4, i8* %14)
  call void @llvm.lifetime.start(i64 4, i8* %15)
  call void @llvm.lifetime.start(i64 4, i8* %16)
  call void @llvm.lifetime.start(i64 4, i8* %17)
  call void @llvm.lifetime.start(i64 8, i8* %18)
  %117 = sext i32 %116 to i64
  %118 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #5
  %119 = getelementptr inbounds %struct.PGH* %118, i64 0, i32 7
  %120 = load i8**** %119, align 8, !tbaa !19
  %121 = getelementptr inbounds i8*** %120, i64 %117
  %122 = bitcast i8*** %121 to i64**
  %123 = load i64** %122, align 8, !tbaa !6
  %124 = load i64* %123, align 8, !tbaa !6
  store i64 %124, i64* %19, align 8, !tbaa !6
  store i32 0, i32* %from.i, align 4, !tbaa !2
  store i32 1, i32* %to.i, align 4, !tbaa !2
  store i32 1, i32* %iterator.i, align 4, !tbaa !2
  store i32 1, i32* %points_per_dim.i, align 4, !tbaa !2
  %125 = call i32 @CCTK_VarTypeI(i32 %116) #5
  store i32 %125, i32* %type.i, align 4, !tbaa !2
  %126 = call i32 %reduction_fn(%struct.cGH* %GH, i32 %proc, i32 1, i32* %from.i, i32* %to.i, i32* %iterator.i, i32* %points_per_dim.i, i32 1, i32 1, i32* %type.i, i8** %data.i, i32 1, double* %result) #5
  call void @llvm.lifetime.end(i64 4, i8* %13)
  call void @llvm.lifetime.end(i64 4, i8* %14)
  call void @llvm.lifetime.end(i64 4, i8* %15)
  call void @llvm.lifetime.end(i64 4, i8* %16)
  call void @llvm.lifetime.end(i64 4, i8* %17)
  call void @llvm.lifetime.end(i64 8, i8* %18)
  br label %128

.thread:                                          ; preds = %22
  %127 = call i32 @CCTK_Warn(i32 1, i32 310, i8* getelementptr inbounds ([82 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str5, i64 0, i64 0)) #5
  br label %133

; <label>:128                                     ; preds = %115, %PUGH_ReductionGA.exit
  %this_retval.0 = phi i32 [ %126, %115 ], [ %114, %PUGH_ReductionGA.exit ]
  %.not = icmp ne i32 %this_retval.0, 0
  %notlhs = icmp sgt i32 %proc, -1
  %notrhs = icmp ne i32 %11, %proc
  %or.cond.not = and i1 %notrhs, %notlhs
  %brmerge = or i1 %.not, %or.cond.not
  br i1 %brmerge, label %133, label %129

; <label>:129                                     ; preds = %128
  %130 = mul nsw i64 %indvars.iv, %20
  %131 = getelementptr inbounds i8* %outvals, i64 %130
  %132 = call fastcc i32 @copy_real_to_outtype(i32 1, double* %result, i32 %outtype, i8* %131) #6
  br label %133

; <label>:133                                     ; preds = %128, %.thread, %129
  %this_retval.1 = phi i32 [ %132, %129 ], [ %this_retval.0, %128 ], [ -1, %.thread ]
  %134 = or i32 %this_retval.1, %retval.04
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %21
  br i1 %exitcond, label %.loopexit, label %22

.loopexit:                                        ; preds = %133, %9, %7, %2
  %.0 = phi i32 [ -1, %2 ], [ -1, %7 ], [ 0, %9 ], [ %134, %133 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeFromVarI(i32) #2

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_StaggerDirIndex(i32, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

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
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !4, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !4, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"long double", !4, i64 0}
!19 = !{!20, !7, i64 32}
!20 = !{!"PGH", !7, i64 0, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !7, i64 32, !3, i64 40, !7, i64 48, !3, i64 56, !3, i64 60, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !7, i64 120, !7, i64 128, !7, i64 136}
!21 = !{!22, !7, i64 64}
!22 = !{!"PGA", !7, i64 0, !3, i64 8, !3, i64 12, !7, i64 16, !7, i64 24, !3, i64 32, !3, i64 36, !7, i64 40, !3, i64 48, !3, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !3, i64 88, !3, i64 92, !7, i64 96}
!23 = !{!24, !3, i64 0}
!24 = !{!"PConnectivity", !3, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!25 = !{!22, !3, i64 36}
!26 = !{!22, !7, i64 56}
!27 = !{!28, !7, i64 8}
!28 = !{!"PGExtras", !3, i64 0, !7, i64 8, !9, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !3, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !4, i64 104, !4, i64 168, !4, i64 232}
!29 = !{!24, !7, i64 24}
!30 = !{!28, !7, i64 96}
!31 = !{!28, !7, i64 48}
