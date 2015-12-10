; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionMin.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [59 x i8] c"$Id: ReductionMin.c,v 1.6 2001/11/05 15:04:13 tradke Exp $\00", align 1
@.str1 = private unnamed_addr constant [85 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionMin.c\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str3 = private unnamed_addr constant [85 x i8] c"PUGH_ReductionMinVal: Don't know how to compute the minimum of complex variables !!!\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"PUGH_ReductionMinVal: Unknown variable type\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHReduce_ReductionMin_c() #0 {
  ret i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ReductionMinValArrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %dims, i32 %num_inarrays, i8** %inarrays, i32 %intype, i32 %num_outvals, i8* %outvals, i32 %outtype) #1 {
  %1 = tail call i32 @PUGH_ReductionArrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %dims, i32 %intype, i32 %num_inarrays, i8** %inarrays, i32 %outtype, i32 %num_outvals, i8* %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionMinVal) #5
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @PUGH_ReductionArrays(%struct.cGH*, i32, i32, i32*, i32, i32, i8**, i32, i32, i8*, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @PUGH_ReductionMinVal(%struct.cGH* nocapture readnone %GH, i32 %proc, i32 %num_dims, i32* %from, i32* %to, i32* %iterator, i32* nocapture readonly %points_per_dim, i32 %num_points, i32 %num_inarrays, i32* nocapture readonly %intypes, i8** nocapture readonly %inarrays, i32 %num_outvals, double* nocapture %outvals) #1 {
  %1 = icmp sgt i32 %num_inarrays, 0
  br i1 %1, label %.lr.ph414, label %.loopexit108

.lr.ph414:                                        ; preds = %0
  %2 = icmp sgt i32 %num_outvals, 0
  %3 = icmp sgt i32 %num_dims, 1
  %4 = bitcast i32* %iterator to i8*
  %5 = bitcast i32* %from to i8*
  %6 = sext i32 %num_dims to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %4, i1 false)
  %9 = getelementptr inbounds i32* %iterator, i64 1
  %10 = getelementptr inbounds i32* %to, i64 1
  %11 = icmp sgt i32 %num_dims, 2
  %12 = add i32 %num_dims, -1
  %13 = add i32 %num_outvals, -1
  %14 = zext i32 %13 to i64
  %15 = add nuw nsw i64 %14, 1
  %16 = sext i32 %num_inarrays to i64
  br label %17

; <label>:17                                      ; preds = %.lr.ph414, %.loopexit99
  %indvars.iv635 = phi i64 [ 0, %.lr.ph414 ], [ %indvars.iv.next636, %.loopexit99 ]
  %total_outvals.0412 = phi i32 [ 0, %.lr.ph414 ], [ %total_outvals.10, %.loopexit99 ]
  %18 = getelementptr inbounds i32* %intypes, i64 %indvars.iv635
  %19 = load i32* %18, align 4, !tbaa !2
  switch i32 %19, label %550 [
    i32 1, label %20
    i32 2, label %78
    i32 3, label %137
    i32 4, label %196
    i32 5, label %255
    i32 6, label %314
    i32 7, label %372
    i32 8, label %431
    i32 9, label %489
    i32 10, label %548
  ]

; <label>:20                                      ; preds = %17
  br i1 %2, label %.lr.ph409, label %.loopexit99

.lr.ph409:                                        ; preds = %20
  %21 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv635
  %22 = load i8** %21, align 8, !tbaa !6
  %23 = sext i32 %total_outvals.0412 to i64
  br label %24

; <label>:24                                      ; preds = %.thread49, %.lr.ph409
  %indvars.iv632 = phi i64 [ %23, %.lr.ph409 ], [ %indvars.iv.next633, %.thread49 ]
  %typed_vdata.0407 = phi i8* [ %22, %.lr.ph409 ], [ %77, %.thread49 ]
  %_j.0406 = phi i32 [ 0, %.lr.ph409 ], [ %76, %.thread49 ]
  %25 = load i32* %from, align 4, !tbaa !2
  br i1 %3, label %.lr.ph383, label %._crit_edge384

.lr.ph383:                                        ; preds = %24, %.lr.ph383
  %indvars.iv618 = phi i64 [ %indvars.iv.next619, %.lr.ph383 ], [ 1, %24 ]
  %_vindex.0381 = phi i32 [ %31, %.lr.ph383 ], [ %25, %24 ]
  %26 = getelementptr inbounds i32* %from, i64 %indvars.iv618
  %27 = load i32* %26, align 4, !tbaa !2
  %28 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv618
  %29 = load i32* %28, align 4, !tbaa !2
  %30 = mul nsw i32 %29, %27
  %31 = add nsw i32 %30, %_vindex.0381
  %indvars.iv.next619 = add nuw nsw i64 %indvars.iv618, 1
  %lftr.wideiv620 = trunc i64 %indvars.iv618 to i32
  %exitcond621 = icmp eq i32 %lftr.wideiv620, %12
  br i1 %exitcond621, label %._crit_edge384, label %.lr.ph383

._crit_edge384:                                   ; preds = %.lr.ph383, %24
  %_vindex.0.lcssa = phi i32 [ %25, %24 ], [ %31, %.lr.ph383 ]
  %32 = sext i32 %_vindex.0.lcssa to i64
  %33 = getelementptr inbounds i8* %typed_vdata.0407, i64 %32
  %34 = load i8* %33, align 1, !tbaa !8
  %35 = tail call i8* @__memcpy_chk(i8* %4, i8* %5, i64 %7, i64 %8) #5
  br label %.backedge

.backedge:                                        ; preds = %54, %.thread.preheader, %.thread, %._crit_edge384
  %typed_outval.0 = phi i8 [ %34, %._crit_edge384 ], [ %typed_outval.1.lcssa, %.thread ], [ %typed_outval.1.lcssa, %.thread.preheader ], [ %typed_outval.1.lcssa, %54 ]
  br i1 %3, label %.lr.ph389, label %._crit_edge390

.lr.ph389:                                        ; preds = %.backedge, %.lr.ph389
  %indvars.iv622 = phi i64 [ %indvars.iv.next623, %.lr.ph389 ], [ 1, %.backedge ]
  %_vindex.1387 = phi i32 [ %41, %.lr.ph389 ], [ 0, %.backedge ]
  %36 = getelementptr inbounds i32* %iterator, i64 %indvars.iv622
  %37 = load i32* %36, align 4, !tbaa !2
  %38 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv622
  %39 = load i32* %38, align 4, !tbaa !2
  %40 = mul nsw i32 %39, %37
  %41 = add nsw i32 %40, %_vindex.1387
  %indvars.iv.next623 = add nuw nsw i64 %indvars.iv622, 1
  %lftr.wideiv624 = trunc i64 %indvars.iv622 to i32
  %exitcond625 = icmp eq i32 %lftr.wideiv624, %12
  br i1 %exitcond625, label %._crit_edge390, label %.lr.ph389

._crit_edge390:                                   ; preds = %.lr.ph389, %.backedge
  %_vindex.1.lcssa = phi i32 [ 0, %.backedge ], [ %41, %.lr.ph389 ]
  %42 = load i32* %from, align 4, !tbaa !2
  %43 = load i32* %to, align 4, !tbaa !2
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %.lr.ph395, label %._crit_edge396

.lr.ph395:                                        ; preds = %._crit_edge390
  %45 = sext i32 %42 to i64
  %46 = sext i32 %_vindex.1.lcssa to i64
  %47 = sext i32 %43 to i64
  br label %48

; <label>:48                                      ; preds = %.lr.ph395, %48
  %indvars.iv626 = phi i64 [ %45, %.lr.ph395 ], [ %indvars.iv.next627, %48 ]
  %typed_outval.1393 = phi i8 [ %typed_outval.0, %.lr.ph395 ], [ %.typed_outval.1, %48 ]
  %49 = add nsw i64 %indvars.iv626, %46
  %50 = getelementptr inbounds i8* %typed_vdata.0407, i64 %49
  %51 = load i8* %50, align 1, !tbaa !8
  %52 = icmp ugt i8 %typed_outval.1393, %51
  %.typed_outval.1 = select i1 %52, i8 %51, i8 %typed_outval.1393
  %indvars.iv.next627 = add nsw i64 %indvars.iv626, 1
  %53 = icmp slt i64 %indvars.iv.next627, %47
  br i1 %53, label %48, label %._crit_edge396

._crit_edge396:                                   ; preds = %48, %._crit_edge390
  %typed_outval.1.lcssa = phi i8 [ %typed_outval.0, %._crit_edge390 ], [ %.typed_outval.1, %48 ]
  br i1 %3, label %54, label %.thread49

; <label>:54                                      ; preds = %._crit_edge396
  %55 = load i32* %9, align 4, !tbaa !2
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4, !tbaa !2
  %57 = load i32* %10, align 4, !tbaa !2
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %.backedge, label %.preheader

.preheader:                                       ; preds = %54
  br i1 %11, label %.lr.ph399, label %.thread49

.lr.ph399:                                        ; preds = %.preheader, %68
  %indvars.iv628 = phi i64 [ %indvars.iv.next629, %68 ], [ 2, %.preheader ]
  %59 = getelementptr inbounds i32* %iterator, i64 %indvars.iv628
  %60 = load i32* %59, align 4, !tbaa !2
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4, !tbaa !2
  %62 = getelementptr inbounds i32* %to, i64 %indvars.iv628
  %63 = load i32* %62, align 4, !tbaa !2
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %.thread.preheader, label %68

.thread.preheader:                                ; preds = %.lr.ph399
  %65 = trunc i64 %indvars.iv628 to i32
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %.lr.ph404, label %.backedge

.lr.ph404:                                        ; preds = %.thread.preheader
  %sext644 = shl i64 %indvars.iv628, 32
  %67 = ashr exact i64 %sext644, 32
  br label %.thread

; <label>:68                                      ; preds = %.lr.ph399
  %indvars.iv.next629 = add nuw nsw i64 %indvars.iv628, 1
  %69 = icmp slt i64 %indvars.iv.next629, %6
  br i1 %69, label %.lr.ph399, label %.thread49

.thread:                                          ; preds = %.lr.ph404, %.thread
  %indvars.iv630 = phi i64 [ %67, %.lr.ph404 ], [ %indvars.iv.next631, %.thread ]
  %indvars.iv.next631 = add nsw i64 %indvars.iv630, -1
  %70 = getelementptr inbounds i32* %from, i64 %indvars.iv.next631
  %71 = load i32* %70, align 4, !tbaa !2
  %72 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next631
  store i32 %71, i32* %72, align 4, !tbaa !2
  %73 = icmp sgt i64 %indvars.iv630, 1
  br i1 %73, label %.thread, label %.backedge

.thread49:                                        ; preds = %._crit_edge396, %.preheader, %68
  %74 = uitofp i8 %typed_outval.1.lcssa to double
  %indvars.iv.next633 = add nsw i64 %indvars.iv632, 1
  %75 = getelementptr inbounds double* %outvals, i64 %indvars.iv632
  store double %74, double* %75, align 8, !tbaa !9
  %76 = add nuw nsw i32 %_j.0406, 1
  %77 = getelementptr inbounds i8* %typed_vdata.0407, i64 1
  %exitcond634 = icmp eq i32 %_j.0406, %13
  br i1 %exitcond634, label %..loopexit99_crit_edge, label %24

; <label>:78                                      ; preds = %17
  br i1 %2, label %.lr.ph378, label %.loopexit99

.lr.ph378:                                        ; preds = %78
  %79 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv635
  %80 = bitcast i8** %79 to i32**
  %81 = load i32** %80, align 8, !tbaa !6
  %82 = sext i32 %total_outvals.0412 to i64
  br label %83

; <label>:83                                      ; preds = %.thread51, %.lr.ph378
  %indvars.iv615 = phi i64 [ %82, %.lr.ph378 ], [ %indvars.iv.next616, %.thread51 ]
  %typed_vdata5.0376 = phi i32* [ %81, %.lr.ph378 ], [ %136, %.thread51 ]
  %_j2.0375 = phi i32 [ 0, %.lr.ph378 ], [ %135, %.thread51 ]
  %84 = load i32* %from, align 4, !tbaa !2
  br i1 %3, label %.lr.ph352, label %._crit_edge353

.lr.ph352:                                        ; preds = %83, %.lr.ph352
  %indvars.iv601 = phi i64 [ %indvars.iv.next602, %.lr.ph352 ], [ 1, %83 ]
  %_vindex4.0350 = phi i32 [ %90, %.lr.ph352 ], [ %84, %83 ]
  %85 = getelementptr inbounds i32* %from, i64 %indvars.iv601
  %86 = load i32* %85, align 4, !tbaa !2
  %87 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv601
  %88 = load i32* %87, align 4, !tbaa !2
  %89 = mul nsw i32 %88, %86
  %90 = add nsw i32 %89, %_vindex4.0350
  %indvars.iv.next602 = add nuw nsw i64 %indvars.iv601, 1
  %lftr.wideiv603 = trunc i64 %indvars.iv601 to i32
  %exitcond604 = icmp eq i32 %lftr.wideiv603, %12
  br i1 %exitcond604, label %._crit_edge353, label %.lr.ph352

._crit_edge353:                                   ; preds = %.lr.ph352, %83
  %_vindex4.0.lcssa = phi i32 [ %84, %83 ], [ %90, %.lr.ph352 ]
  %91 = sext i32 %_vindex4.0.lcssa to i64
  %92 = getelementptr inbounds i32* %typed_vdata5.0376, i64 %91
  %93 = load i32* %92, align 4, !tbaa !2
  %94 = tail call i8* @__memcpy_chk(i8* %4, i8* %5, i64 %7, i64 %8) #5
  br label %.backedge84

.backedge84:                                      ; preds = %113, %.thread50.preheader, %.thread50, %._crit_edge353
  %typed_outval6.0 = phi i32 [ %93, %._crit_edge353 ], [ %typed_outval6.1.lcssa, %.thread50 ], [ %typed_outval6.1.lcssa, %.thread50.preheader ], [ %typed_outval6.1.lcssa, %113 ]
  br i1 %3, label %.lr.ph358, label %._crit_edge359

.lr.ph358:                                        ; preds = %.backedge84, %.lr.ph358
  %indvars.iv605 = phi i64 [ %indvars.iv.next606, %.lr.ph358 ], [ 1, %.backedge84 ]
  %_vindex4.1356 = phi i32 [ %100, %.lr.ph358 ], [ 0, %.backedge84 ]
  %95 = getelementptr inbounds i32* %iterator, i64 %indvars.iv605
  %96 = load i32* %95, align 4, !tbaa !2
  %97 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv605
  %98 = load i32* %97, align 4, !tbaa !2
  %99 = mul nsw i32 %98, %96
  %100 = add nsw i32 %99, %_vindex4.1356
  %indvars.iv.next606 = add nuw nsw i64 %indvars.iv605, 1
  %lftr.wideiv607 = trunc i64 %indvars.iv605 to i32
  %exitcond608 = icmp eq i32 %lftr.wideiv607, %12
  br i1 %exitcond608, label %._crit_edge359, label %.lr.ph358

._crit_edge359:                                   ; preds = %.lr.ph358, %.backedge84
  %_vindex4.1.lcssa = phi i32 [ 0, %.backedge84 ], [ %100, %.lr.ph358 ]
  %101 = load i32* %from, align 4, !tbaa !2
  %102 = load i32* %to, align 4, !tbaa !2
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %.lr.ph364, label %._crit_edge365

.lr.ph364:                                        ; preds = %._crit_edge359
  %104 = sext i32 %101 to i64
  %105 = sext i32 %_vindex4.1.lcssa to i64
  %106 = sext i32 %102 to i64
  br label %107

; <label>:107                                     ; preds = %.lr.ph364, %107
  %indvars.iv609 = phi i64 [ %104, %.lr.ph364 ], [ %indvars.iv.next610, %107 ]
  %typed_outval6.1362 = phi i32 [ %typed_outval6.0, %.lr.ph364 ], [ %.typed_outval6.1, %107 ]
  %108 = add nsw i64 %indvars.iv609, %105
  %109 = getelementptr inbounds i32* %typed_vdata5.0376, i64 %108
  %110 = load i32* %109, align 4, !tbaa !2
  %111 = icmp sgt i32 %typed_outval6.1362, %110
  %.typed_outval6.1 = select i1 %111, i32 %110, i32 %typed_outval6.1362
  %indvars.iv.next610 = add nsw i64 %indvars.iv609, 1
  %112 = icmp slt i64 %indvars.iv.next610, %106
  br i1 %112, label %107, label %._crit_edge365

._crit_edge365:                                   ; preds = %107, %._crit_edge359
  %typed_outval6.1.lcssa = phi i32 [ %typed_outval6.0, %._crit_edge359 ], [ %.typed_outval6.1, %107 ]
  br i1 %3, label %113, label %.thread51

; <label>:113                                     ; preds = %._crit_edge365
  %114 = load i32* %9, align 4, !tbaa !2
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4, !tbaa !2
  %116 = load i32* %10, align 4, !tbaa !2
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %.backedge84, label %.preheader67

.preheader67:                                     ; preds = %113
  br i1 %11, label %.lr.ph368, label %.thread51

.lr.ph368:                                        ; preds = %.preheader67, %127
  %indvars.iv611 = phi i64 [ %indvars.iv.next612, %127 ], [ 2, %.preheader67 ]
  %118 = getelementptr inbounds i32* %iterator, i64 %indvars.iv611
  %119 = load i32* %118, align 4, !tbaa !2
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4, !tbaa !2
  %121 = getelementptr inbounds i32* %to, i64 %indvars.iv611
  %122 = load i32* %121, align 4, !tbaa !2
  %123 = icmp slt i32 %120, %122
  br i1 %123, label %.thread50.preheader, label %127

.thread50.preheader:                              ; preds = %.lr.ph368
  %124 = trunc i64 %indvars.iv611 to i32
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %.lr.ph373, label %.backedge84

.lr.ph373:                                        ; preds = %.thread50.preheader
  %sext643 = shl i64 %indvars.iv611, 32
  %126 = ashr exact i64 %sext643, 32
  br label %.thread50

; <label>:127                                     ; preds = %.lr.ph368
  %indvars.iv.next612 = add nuw nsw i64 %indvars.iv611, 1
  %128 = icmp slt i64 %indvars.iv.next612, %6
  br i1 %128, label %.lr.ph368, label %.thread51

.thread50:                                        ; preds = %.lr.ph373, %.thread50
  %indvars.iv613 = phi i64 [ %126, %.lr.ph373 ], [ %indvars.iv.next614, %.thread50 ]
  %indvars.iv.next614 = add nsw i64 %indvars.iv613, -1
  %129 = getelementptr inbounds i32* %from, i64 %indvars.iv.next614
  %130 = load i32* %129, align 4, !tbaa !2
  %131 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next614
  store i32 %130, i32* %131, align 4, !tbaa !2
  %132 = icmp sgt i64 %indvars.iv613, 1
  br i1 %132, label %.thread50, label %.backedge84

.thread51:                                        ; preds = %._crit_edge365, %.preheader67, %127
  %133 = sitofp i32 %typed_outval6.1.lcssa to double
  %indvars.iv.next616 = add nsw i64 %indvars.iv615, 1
  %134 = getelementptr inbounds double* %outvals, i64 %indvars.iv615
  store double %133, double* %134, align 8, !tbaa !9
  %135 = add nuw nsw i32 %_j2.0375, 1
  %136 = getelementptr inbounds i32* %typed_vdata5.0376, i64 1
  %exitcond617 = icmp eq i32 %_j2.0375, %13
  br i1 %exitcond617, label %..loopexit100_crit_edge, label %83

; <label>:137                                     ; preds = %17
  br i1 %2, label %.lr.ph347, label %.loopexit99

.lr.ph347:                                        ; preds = %137
  %138 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv635
  %139 = bitcast i8** %138 to i16**
  %140 = load i16** %139, align 8, !tbaa !6
  %141 = sext i32 %total_outvals.0412 to i64
  br label %142

; <label>:142                                     ; preds = %.thread53, %.lr.ph347
  %indvars.iv598 = phi i64 [ %141, %.lr.ph347 ], [ %indvars.iv.next599, %.thread53 ]
  %typed_vdata11.0345 = phi i16* [ %140, %.lr.ph347 ], [ %195, %.thread53 ]
  %_j8.0344 = phi i32 [ 0, %.lr.ph347 ], [ %194, %.thread53 ]
  %143 = load i32* %from, align 4, !tbaa !2
  br i1 %3, label %.lr.ph321, label %._crit_edge322

.lr.ph321:                                        ; preds = %142, %.lr.ph321
  %indvars.iv584 = phi i64 [ %indvars.iv.next585, %.lr.ph321 ], [ 1, %142 ]
  %_vindex10.0319 = phi i32 [ %149, %.lr.ph321 ], [ %143, %142 ]
  %144 = getelementptr inbounds i32* %from, i64 %indvars.iv584
  %145 = load i32* %144, align 4, !tbaa !2
  %146 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv584
  %147 = load i32* %146, align 4, !tbaa !2
  %148 = mul nsw i32 %147, %145
  %149 = add nsw i32 %148, %_vindex10.0319
  %indvars.iv.next585 = add nuw nsw i64 %indvars.iv584, 1
  %lftr.wideiv586 = trunc i64 %indvars.iv584 to i32
  %exitcond587 = icmp eq i32 %lftr.wideiv586, %12
  br i1 %exitcond587, label %._crit_edge322, label %.lr.ph321

._crit_edge322:                                   ; preds = %.lr.ph321, %142
  %_vindex10.0.lcssa = phi i32 [ %143, %142 ], [ %149, %.lr.ph321 ]
  %150 = sext i32 %_vindex10.0.lcssa to i64
  %151 = getelementptr inbounds i16* %typed_vdata11.0345, i64 %150
  %152 = load i16* %151, align 2, !tbaa !11
  %153 = tail call i8* @__memcpy_chk(i8* %4, i8* %5, i64 %7, i64 %8) #5
  br label %.backedge86

.backedge86:                                      ; preds = %172, %.thread52.preheader, %.thread52, %._crit_edge322
  %typed_outval12.0 = phi i16 [ %152, %._crit_edge322 ], [ %typed_outval12.1.lcssa, %.thread52 ], [ %typed_outval12.1.lcssa, %.thread52.preheader ], [ %typed_outval12.1.lcssa, %172 ]
  br i1 %3, label %.lr.ph327, label %._crit_edge328

.lr.ph327:                                        ; preds = %.backedge86, %.lr.ph327
  %indvars.iv588 = phi i64 [ %indvars.iv.next589, %.lr.ph327 ], [ 1, %.backedge86 ]
  %_vindex10.1325 = phi i32 [ %159, %.lr.ph327 ], [ 0, %.backedge86 ]
  %154 = getelementptr inbounds i32* %iterator, i64 %indvars.iv588
  %155 = load i32* %154, align 4, !tbaa !2
  %156 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv588
  %157 = load i32* %156, align 4, !tbaa !2
  %158 = mul nsw i32 %157, %155
  %159 = add nsw i32 %158, %_vindex10.1325
  %indvars.iv.next589 = add nuw nsw i64 %indvars.iv588, 1
  %lftr.wideiv590 = trunc i64 %indvars.iv588 to i32
  %exitcond591 = icmp eq i32 %lftr.wideiv590, %12
  br i1 %exitcond591, label %._crit_edge328, label %.lr.ph327

._crit_edge328:                                   ; preds = %.lr.ph327, %.backedge86
  %_vindex10.1.lcssa = phi i32 [ 0, %.backedge86 ], [ %159, %.lr.ph327 ]
  %160 = load i32* %from, align 4, !tbaa !2
  %161 = load i32* %to, align 4, !tbaa !2
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %.lr.ph333, label %._crit_edge334

.lr.ph333:                                        ; preds = %._crit_edge328
  %163 = sext i32 %160 to i64
  %164 = sext i32 %_vindex10.1.lcssa to i64
  %165 = sext i32 %161 to i64
  br label %166

; <label>:166                                     ; preds = %.lr.ph333, %166
  %indvars.iv592 = phi i64 [ %163, %.lr.ph333 ], [ %indvars.iv.next593, %166 ]
  %typed_outval12.1331 = phi i16 [ %typed_outval12.0, %.lr.ph333 ], [ %.typed_outval12.1, %166 ]
  %167 = add nsw i64 %indvars.iv592, %164
  %168 = getelementptr inbounds i16* %typed_vdata11.0345, i64 %167
  %169 = load i16* %168, align 2, !tbaa !11
  %170 = icmp sgt i16 %typed_outval12.1331, %169
  %.typed_outval12.1 = select i1 %170, i16 %169, i16 %typed_outval12.1331
  %indvars.iv.next593 = add nsw i64 %indvars.iv592, 1
  %171 = icmp slt i64 %indvars.iv.next593, %165
  br i1 %171, label %166, label %._crit_edge334

._crit_edge334:                                   ; preds = %166, %._crit_edge328
  %typed_outval12.1.lcssa = phi i16 [ %typed_outval12.0, %._crit_edge328 ], [ %.typed_outval12.1, %166 ]
  br i1 %3, label %172, label %.thread53

; <label>:172                                     ; preds = %._crit_edge334
  %173 = load i32* %9, align 4, !tbaa !2
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4, !tbaa !2
  %175 = load i32* %10, align 4, !tbaa !2
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %.backedge86, label %.preheader69

.preheader69:                                     ; preds = %172
  br i1 %11, label %.lr.ph337, label %.thread53

.lr.ph337:                                        ; preds = %.preheader69, %186
  %indvars.iv594 = phi i64 [ %indvars.iv.next595, %186 ], [ 2, %.preheader69 ]
  %177 = getelementptr inbounds i32* %iterator, i64 %indvars.iv594
  %178 = load i32* %177, align 4, !tbaa !2
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4, !tbaa !2
  %180 = getelementptr inbounds i32* %to, i64 %indvars.iv594
  %181 = load i32* %180, align 4, !tbaa !2
  %182 = icmp slt i32 %179, %181
  br i1 %182, label %.thread52.preheader, label %186

.thread52.preheader:                              ; preds = %.lr.ph337
  %183 = trunc i64 %indvars.iv594 to i32
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %.lr.ph342, label %.backedge86

.lr.ph342:                                        ; preds = %.thread52.preheader
  %sext642 = shl i64 %indvars.iv594, 32
  %185 = ashr exact i64 %sext642, 32
  br label %.thread52

; <label>:186                                     ; preds = %.lr.ph337
  %indvars.iv.next595 = add nuw nsw i64 %indvars.iv594, 1
  %187 = icmp slt i64 %indvars.iv.next595, %6
  br i1 %187, label %.lr.ph337, label %.thread53

.thread52:                                        ; preds = %.lr.ph342, %.thread52
  %indvars.iv596 = phi i64 [ %185, %.lr.ph342 ], [ %indvars.iv.next597, %.thread52 ]
  %indvars.iv.next597 = add nsw i64 %indvars.iv596, -1
  %188 = getelementptr inbounds i32* %from, i64 %indvars.iv.next597
  %189 = load i32* %188, align 4, !tbaa !2
  %190 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next597
  store i32 %189, i32* %190, align 4, !tbaa !2
  %191 = icmp sgt i64 %indvars.iv596, 1
  br i1 %191, label %.thread52, label %.backedge86

.thread53:                                        ; preds = %._crit_edge334, %.preheader69, %186
  %192 = sitofp i16 %typed_outval12.1.lcssa to double
  %indvars.iv.next599 = add nsw i64 %indvars.iv598, 1
  %193 = getelementptr inbounds double* %outvals, i64 %indvars.iv598
  store double %192, double* %193, align 8, !tbaa !9
  %194 = add nuw nsw i32 %_j8.0344, 1
  %195 = getelementptr inbounds i16* %typed_vdata11.0345, i64 1
  %exitcond600 = icmp eq i32 %_j8.0344, %13
  br i1 %exitcond600, label %..loopexit101_crit_edge, label %142

; <label>:196                                     ; preds = %17
  br i1 %2, label %.lr.ph316, label %.loopexit99

.lr.ph316:                                        ; preds = %196
  %197 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv635
  %198 = bitcast i8** %197 to i32**
  %199 = load i32** %198, align 8, !tbaa !6
  %200 = sext i32 %total_outvals.0412 to i64
  br label %201

; <label>:201                                     ; preds = %.thread55, %.lr.ph316
  %indvars.iv581 = phi i64 [ %200, %.lr.ph316 ], [ %indvars.iv.next582, %.thread55 ]
  %typed_vdata17.0314 = phi i32* [ %199, %.lr.ph316 ], [ %254, %.thread55 ]
  %_j14.0313 = phi i32 [ 0, %.lr.ph316 ], [ %253, %.thread55 ]
  %202 = load i32* %from, align 4, !tbaa !2
  br i1 %3, label %.lr.ph290, label %._crit_edge291

.lr.ph290:                                        ; preds = %201, %.lr.ph290
  %indvars.iv567 = phi i64 [ %indvars.iv.next568, %.lr.ph290 ], [ 1, %201 ]
  %_vindex16.0288 = phi i32 [ %208, %.lr.ph290 ], [ %202, %201 ]
  %203 = getelementptr inbounds i32* %from, i64 %indvars.iv567
  %204 = load i32* %203, align 4, !tbaa !2
  %205 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv567
  %206 = load i32* %205, align 4, !tbaa !2
  %207 = mul nsw i32 %206, %204
  %208 = add nsw i32 %207, %_vindex16.0288
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1
  %lftr.wideiv569 = trunc i64 %indvars.iv567 to i32
  %exitcond570 = icmp eq i32 %lftr.wideiv569, %12
  br i1 %exitcond570, label %._crit_edge291, label %.lr.ph290

._crit_edge291:                                   ; preds = %.lr.ph290, %201
  %_vindex16.0.lcssa = phi i32 [ %202, %201 ], [ %208, %.lr.ph290 ]
  %209 = sext i32 %_vindex16.0.lcssa to i64
  %210 = getelementptr inbounds i32* %typed_vdata17.0314, i64 %209
  %211 = load i32* %210, align 4, !tbaa !2
  %212 = tail call i8* @__memcpy_chk(i8* %4, i8* %5, i64 %7, i64 %8) #5
  br label %.backedge88

.backedge88:                                      ; preds = %231, %.thread54.preheader, %.thread54, %._crit_edge291
  %typed_outval18.0 = phi i32 [ %211, %._crit_edge291 ], [ %typed_outval18.1.lcssa, %.thread54 ], [ %typed_outval18.1.lcssa, %.thread54.preheader ], [ %typed_outval18.1.lcssa, %231 ]
  br i1 %3, label %.lr.ph296, label %._crit_edge297

.lr.ph296:                                        ; preds = %.backedge88, %.lr.ph296
  %indvars.iv571 = phi i64 [ %indvars.iv.next572, %.lr.ph296 ], [ 1, %.backedge88 ]
  %_vindex16.1294 = phi i32 [ %218, %.lr.ph296 ], [ 0, %.backedge88 ]
  %213 = getelementptr inbounds i32* %iterator, i64 %indvars.iv571
  %214 = load i32* %213, align 4, !tbaa !2
  %215 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv571
  %216 = load i32* %215, align 4, !tbaa !2
  %217 = mul nsw i32 %216, %214
  %218 = add nsw i32 %217, %_vindex16.1294
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1
  %lftr.wideiv573 = trunc i64 %indvars.iv571 to i32
  %exitcond574 = icmp eq i32 %lftr.wideiv573, %12
  br i1 %exitcond574, label %._crit_edge297, label %.lr.ph296

._crit_edge297:                                   ; preds = %.lr.ph296, %.backedge88
  %_vindex16.1.lcssa = phi i32 [ 0, %.backedge88 ], [ %218, %.lr.ph296 ]
  %219 = load i32* %from, align 4, !tbaa !2
  %220 = load i32* %to, align 4, !tbaa !2
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %.lr.ph302, label %._crit_edge303

.lr.ph302:                                        ; preds = %._crit_edge297
  %222 = sext i32 %219 to i64
  %223 = sext i32 %_vindex16.1.lcssa to i64
  %224 = sext i32 %220 to i64
  br label %225

; <label>:225                                     ; preds = %.lr.ph302, %225
  %indvars.iv575 = phi i64 [ %222, %.lr.ph302 ], [ %indvars.iv.next576, %225 ]
  %typed_outval18.1300 = phi i32 [ %typed_outval18.0, %.lr.ph302 ], [ %.typed_outval18.1, %225 ]
  %226 = add nsw i64 %indvars.iv575, %223
  %227 = getelementptr inbounds i32* %typed_vdata17.0314, i64 %226
  %228 = load i32* %227, align 4, !tbaa !2
  %229 = icmp sgt i32 %typed_outval18.1300, %228
  %.typed_outval18.1 = select i1 %229, i32 %228, i32 %typed_outval18.1300
  %indvars.iv.next576 = add nsw i64 %indvars.iv575, 1
  %230 = icmp slt i64 %indvars.iv.next576, %224
  br i1 %230, label %225, label %._crit_edge303

._crit_edge303:                                   ; preds = %225, %._crit_edge297
  %typed_outval18.1.lcssa = phi i32 [ %typed_outval18.0, %._crit_edge297 ], [ %.typed_outval18.1, %225 ]
  br i1 %3, label %231, label %.thread55

; <label>:231                                     ; preds = %._crit_edge303
  %232 = load i32* %9, align 4, !tbaa !2
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4, !tbaa !2
  %234 = load i32* %10, align 4, !tbaa !2
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %.backedge88, label %.preheader71

.preheader71:                                     ; preds = %231
  br i1 %11, label %.lr.ph306, label %.thread55

.lr.ph306:                                        ; preds = %.preheader71, %245
  %indvars.iv577 = phi i64 [ %indvars.iv.next578, %245 ], [ 2, %.preheader71 ]
  %236 = getelementptr inbounds i32* %iterator, i64 %indvars.iv577
  %237 = load i32* %236, align 4, !tbaa !2
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 4, !tbaa !2
  %239 = getelementptr inbounds i32* %to, i64 %indvars.iv577
  %240 = load i32* %239, align 4, !tbaa !2
  %241 = icmp slt i32 %238, %240
  br i1 %241, label %.thread54.preheader, label %245

.thread54.preheader:                              ; preds = %.lr.ph306
  %242 = trunc i64 %indvars.iv577 to i32
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %.lr.ph311, label %.backedge88

.lr.ph311:                                        ; preds = %.thread54.preheader
  %sext641 = shl i64 %indvars.iv577, 32
  %244 = ashr exact i64 %sext641, 32
  br label %.thread54

; <label>:245                                     ; preds = %.lr.ph306
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1
  %246 = icmp slt i64 %indvars.iv.next578, %6
  br i1 %246, label %.lr.ph306, label %.thread55

.thread54:                                        ; preds = %.lr.ph311, %.thread54
  %indvars.iv579 = phi i64 [ %244, %.lr.ph311 ], [ %indvars.iv.next580, %.thread54 ]
  %indvars.iv.next580 = add nsw i64 %indvars.iv579, -1
  %247 = getelementptr inbounds i32* %from, i64 %indvars.iv.next580
  %248 = load i32* %247, align 4, !tbaa !2
  %249 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next580
  store i32 %248, i32* %249, align 4, !tbaa !2
  %250 = icmp sgt i64 %indvars.iv579, 1
  br i1 %250, label %.thread54, label %.backedge88

.thread55:                                        ; preds = %._crit_edge303, %.preheader71, %245
  %251 = sitofp i32 %typed_outval18.1.lcssa to double
  %indvars.iv.next582 = add nsw i64 %indvars.iv581, 1
  %252 = getelementptr inbounds double* %outvals, i64 %indvars.iv581
  store double %251, double* %252, align 8, !tbaa !9
  %253 = add nuw nsw i32 %_j14.0313, 1
  %254 = getelementptr inbounds i32* %typed_vdata17.0314, i64 1
  %exitcond583 = icmp eq i32 %_j14.0313, %13
  br i1 %exitcond583, label %..loopexit102_crit_edge, label %201

; <label>:255                                     ; preds = %17
  br i1 %2, label %.lr.ph285, label %.loopexit99

.lr.ph285:                                        ; preds = %255
  %256 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv635
  %257 = bitcast i8** %256 to i64**
  %258 = load i64** %257, align 8, !tbaa !6
  %259 = sext i32 %total_outvals.0412 to i64
  br label %260

; <label>:260                                     ; preds = %.thread57, %.lr.ph285
  %indvars.iv564 = phi i64 [ %259, %.lr.ph285 ], [ %indvars.iv.next565, %.thread57 ]
  %typed_vdata23.0283 = phi i64* [ %258, %.lr.ph285 ], [ %313, %.thread57 ]
  %_j20.0282 = phi i32 [ 0, %.lr.ph285 ], [ %312, %.thread57 ]
  %261 = load i32* %from, align 4, !tbaa !2
  br i1 %3, label %.lr.ph259, label %._crit_edge260

.lr.ph259:                                        ; preds = %260, %.lr.ph259
  %indvars.iv550 = phi i64 [ %indvars.iv.next551, %.lr.ph259 ], [ 1, %260 ]
  %_vindex22.0257 = phi i32 [ %267, %.lr.ph259 ], [ %261, %260 ]
  %262 = getelementptr inbounds i32* %from, i64 %indvars.iv550
  %263 = load i32* %262, align 4, !tbaa !2
  %264 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv550
  %265 = load i32* %264, align 4, !tbaa !2
  %266 = mul nsw i32 %265, %263
  %267 = add nsw i32 %266, %_vindex22.0257
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1
  %lftr.wideiv552 = trunc i64 %indvars.iv550 to i32
  %exitcond553 = icmp eq i32 %lftr.wideiv552, %12
  br i1 %exitcond553, label %._crit_edge260, label %.lr.ph259

._crit_edge260:                                   ; preds = %.lr.ph259, %260
  %_vindex22.0.lcssa = phi i32 [ %261, %260 ], [ %267, %.lr.ph259 ]
  %268 = sext i32 %_vindex22.0.lcssa to i64
  %269 = getelementptr inbounds i64* %typed_vdata23.0283, i64 %268
  %270 = load i64* %269, align 8, !tbaa !13
  %271 = tail call i8* @__memcpy_chk(i8* %4, i8* %5, i64 %7, i64 %8) #5
  br label %.backedge90

.backedge90:                                      ; preds = %290, %.thread56.preheader, %.thread56, %._crit_edge260
  %typed_outval24.0 = phi i64 [ %270, %._crit_edge260 ], [ %typed_outval24.1.lcssa, %.thread56 ], [ %typed_outval24.1.lcssa, %.thread56.preheader ], [ %typed_outval24.1.lcssa, %290 ]
  br i1 %3, label %.lr.ph265, label %._crit_edge266

.lr.ph265:                                        ; preds = %.backedge90, %.lr.ph265
  %indvars.iv554 = phi i64 [ %indvars.iv.next555, %.lr.ph265 ], [ 1, %.backedge90 ]
  %_vindex22.1263 = phi i32 [ %277, %.lr.ph265 ], [ 0, %.backedge90 ]
  %272 = getelementptr inbounds i32* %iterator, i64 %indvars.iv554
  %273 = load i32* %272, align 4, !tbaa !2
  %274 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv554
  %275 = load i32* %274, align 4, !tbaa !2
  %276 = mul nsw i32 %275, %273
  %277 = add nsw i32 %276, %_vindex22.1263
  %indvars.iv.next555 = add nuw nsw i64 %indvars.iv554, 1
  %lftr.wideiv556 = trunc i64 %indvars.iv554 to i32
  %exitcond557 = icmp eq i32 %lftr.wideiv556, %12
  br i1 %exitcond557, label %._crit_edge266, label %.lr.ph265

._crit_edge266:                                   ; preds = %.lr.ph265, %.backedge90
  %_vindex22.1.lcssa = phi i32 [ 0, %.backedge90 ], [ %277, %.lr.ph265 ]
  %278 = load i32* %from, align 4, !tbaa !2
  %279 = load i32* %to, align 4, !tbaa !2
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %.lr.ph271, label %._crit_edge272

.lr.ph271:                                        ; preds = %._crit_edge266
  %281 = sext i32 %278 to i64
  %282 = sext i32 %_vindex22.1.lcssa to i64
  %283 = sext i32 %279 to i64
  br label %284

; <label>:284                                     ; preds = %.lr.ph271, %284
  %indvars.iv558 = phi i64 [ %281, %.lr.ph271 ], [ %indvars.iv.next559, %284 ]
  %typed_outval24.1269 = phi i64 [ %typed_outval24.0, %.lr.ph271 ], [ %.typed_outval24.1, %284 ]
  %285 = add nsw i64 %indvars.iv558, %282
  %286 = getelementptr inbounds i64* %typed_vdata23.0283, i64 %285
  %287 = load i64* %286, align 8, !tbaa !13
  %288 = icmp sgt i64 %typed_outval24.1269, %287
  %.typed_outval24.1 = select i1 %288, i64 %287, i64 %typed_outval24.1269
  %indvars.iv.next559 = add nsw i64 %indvars.iv558, 1
  %289 = icmp slt i64 %indvars.iv.next559, %283
  br i1 %289, label %284, label %._crit_edge272

._crit_edge272:                                   ; preds = %284, %._crit_edge266
  %typed_outval24.1.lcssa = phi i64 [ %typed_outval24.0, %._crit_edge266 ], [ %.typed_outval24.1, %284 ]
  br i1 %3, label %290, label %.thread57

; <label>:290                                     ; preds = %._crit_edge272
  %291 = load i32* %9, align 4, !tbaa !2
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %9, align 4, !tbaa !2
  %293 = load i32* %10, align 4, !tbaa !2
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %.backedge90, label %.preheader73

.preheader73:                                     ; preds = %290
  br i1 %11, label %.lr.ph275, label %.thread57

.lr.ph275:                                        ; preds = %.preheader73, %304
  %indvars.iv560 = phi i64 [ %indvars.iv.next561, %304 ], [ 2, %.preheader73 ]
  %295 = getelementptr inbounds i32* %iterator, i64 %indvars.iv560
  %296 = load i32* %295, align 4, !tbaa !2
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %295, align 4, !tbaa !2
  %298 = getelementptr inbounds i32* %to, i64 %indvars.iv560
  %299 = load i32* %298, align 4, !tbaa !2
  %300 = icmp slt i32 %297, %299
  br i1 %300, label %.thread56.preheader, label %304

.thread56.preheader:                              ; preds = %.lr.ph275
  %301 = trunc i64 %indvars.iv560 to i32
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %.lr.ph280, label %.backedge90

.lr.ph280:                                        ; preds = %.thread56.preheader
  %sext640 = shl i64 %indvars.iv560, 32
  %303 = ashr exact i64 %sext640, 32
  br label %.thread56

; <label>:304                                     ; preds = %.lr.ph275
  %indvars.iv.next561 = add nuw nsw i64 %indvars.iv560, 1
  %305 = icmp slt i64 %indvars.iv.next561, %6
  br i1 %305, label %.lr.ph275, label %.thread57

.thread56:                                        ; preds = %.lr.ph280, %.thread56
  %indvars.iv562 = phi i64 [ %303, %.lr.ph280 ], [ %indvars.iv.next563, %.thread56 ]
  %indvars.iv.next563 = add nsw i64 %indvars.iv562, -1
  %306 = getelementptr inbounds i32* %from, i64 %indvars.iv.next563
  %307 = load i32* %306, align 4, !tbaa !2
  %308 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next563
  store i32 %307, i32* %308, align 4, !tbaa !2
  %309 = icmp sgt i64 %indvars.iv562, 1
  br i1 %309, label %.thread56, label %.backedge90

.thread57:                                        ; preds = %._crit_edge272, %.preheader73, %304
  %310 = sitofp i64 %typed_outval24.1.lcssa to double
  %indvars.iv.next565 = add nsw i64 %indvars.iv564, 1
  %311 = getelementptr inbounds double* %outvals, i64 %indvars.iv564
  store double %310, double* %311, align 8, !tbaa !9
  %312 = add nuw nsw i32 %_j20.0282, 1
  %313 = getelementptr inbounds i64* %typed_vdata23.0283, i64 1
  %exitcond566 = icmp eq i32 %_j20.0282, %13
  br i1 %exitcond566, label %..loopexit103_crit_edge, label %260

; <label>:314                                     ; preds = %17
  br i1 %2, label %.lr.ph254, label %.loopexit99

.lr.ph254:                                        ; preds = %314
  %315 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv635
  %316 = bitcast i8** %315 to double**
  %317 = load double** %316, align 8, !tbaa !6
  %318 = sext i32 %total_outvals.0412 to i64
  br label %319

; <label>:319                                     ; preds = %.thread59, %.lr.ph254
  %indvars.iv547 = phi i64 [ %318, %.lr.ph254 ], [ %indvars.iv.next548, %.thread59 ]
  %typed_vdata29.0252 = phi double* [ %317, %.lr.ph254 ], [ %371, %.thread59 ]
  %_j26.0251 = phi i32 [ 0, %.lr.ph254 ], [ %370, %.thread59 ]
  %320 = load i32* %from, align 4, !tbaa !2
  br i1 %3, label %.lr.ph228, label %._crit_edge229

.lr.ph228:                                        ; preds = %319, %.lr.ph228
  %indvars.iv533 = phi i64 [ %indvars.iv.next534, %.lr.ph228 ], [ 1, %319 ]
  %_vindex28.0226 = phi i32 [ %326, %.lr.ph228 ], [ %320, %319 ]
  %321 = getelementptr inbounds i32* %from, i64 %indvars.iv533
  %322 = load i32* %321, align 4, !tbaa !2
  %323 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv533
  %324 = load i32* %323, align 4, !tbaa !2
  %325 = mul nsw i32 %324, %322
  %326 = add nsw i32 %325, %_vindex28.0226
  %indvars.iv.next534 = add nuw nsw i64 %indvars.iv533, 1
  %lftr.wideiv535 = trunc i64 %indvars.iv533 to i32
  %exitcond536 = icmp eq i32 %lftr.wideiv535, %12
  br i1 %exitcond536, label %._crit_edge229, label %.lr.ph228

._crit_edge229:                                   ; preds = %.lr.ph228, %319
  %_vindex28.0.lcssa = phi i32 [ %320, %319 ], [ %326, %.lr.ph228 ]
  %327 = sext i32 %_vindex28.0.lcssa to i64
  %328 = getelementptr inbounds double* %typed_vdata29.0252, i64 %327
  %329 = load double* %328, align 8, !tbaa !9
  %330 = tail call i8* @__memcpy_chk(i8* %4, i8* %5, i64 %7, i64 %8) #5
  br label %.backedge92

.backedge92:                                      ; preds = %349, %.thread58.preheader, %.thread58, %._crit_edge229
  %typed_outval30.0 = phi double [ %329, %._crit_edge229 ], [ %typed_outval30.1.lcssa, %.thread58 ], [ %typed_outval30.1.lcssa, %.thread58.preheader ], [ %typed_outval30.1.lcssa, %349 ]
  br i1 %3, label %.lr.ph234, label %._crit_edge235

.lr.ph234:                                        ; preds = %.backedge92, %.lr.ph234
  %indvars.iv537 = phi i64 [ %indvars.iv.next538, %.lr.ph234 ], [ 1, %.backedge92 ]
  %_vindex28.1232 = phi i32 [ %336, %.lr.ph234 ], [ 0, %.backedge92 ]
  %331 = getelementptr inbounds i32* %iterator, i64 %indvars.iv537
  %332 = load i32* %331, align 4, !tbaa !2
  %333 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv537
  %334 = load i32* %333, align 4, !tbaa !2
  %335 = mul nsw i32 %334, %332
  %336 = add nsw i32 %335, %_vindex28.1232
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1
  %lftr.wideiv539 = trunc i64 %indvars.iv537 to i32
  %exitcond540 = icmp eq i32 %lftr.wideiv539, %12
  br i1 %exitcond540, label %._crit_edge235, label %.lr.ph234

._crit_edge235:                                   ; preds = %.lr.ph234, %.backedge92
  %_vindex28.1.lcssa = phi i32 [ 0, %.backedge92 ], [ %336, %.lr.ph234 ]
  %337 = load i32* %from, align 4, !tbaa !2
  %338 = load i32* %to, align 4, !tbaa !2
  %339 = icmp slt i32 %337, %338
  br i1 %339, label %.lr.ph240, label %._crit_edge241

.lr.ph240:                                        ; preds = %._crit_edge235
  %340 = sext i32 %337 to i64
  %341 = sext i32 %_vindex28.1.lcssa to i64
  %342 = sext i32 %338 to i64
  br label %343

; <label>:343                                     ; preds = %.lr.ph240, %343
  %indvars.iv541 = phi i64 [ %340, %.lr.ph240 ], [ %indvars.iv.next542, %343 ]
  %typed_outval30.1238 = phi double [ %typed_outval30.0, %.lr.ph240 ], [ %typed_outval30.2, %343 ]
  %344 = add nsw i64 %indvars.iv541, %341
  %345 = getelementptr inbounds double* %typed_vdata29.0252, i64 %344
  %346 = load double* %345, align 8, !tbaa !9
  %347 = fcmp ogt double %typed_outval30.1238, %346
  %typed_outval30.2 = select i1 %347, double %346, double %typed_outval30.1238
  %indvars.iv.next542 = add nsw i64 %indvars.iv541, 1
  %348 = icmp slt i64 %indvars.iv.next542, %342
  br i1 %348, label %343, label %._crit_edge241

._crit_edge241:                                   ; preds = %343, %._crit_edge235
  %typed_outval30.1.lcssa = phi double [ %typed_outval30.0, %._crit_edge235 ], [ %typed_outval30.2, %343 ]
  br i1 %3, label %349, label %.thread59

; <label>:349                                     ; preds = %._crit_edge241
  %350 = load i32* %9, align 4, !tbaa !2
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %9, align 4, !tbaa !2
  %352 = load i32* %10, align 4, !tbaa !2
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %.backedge92, label %.preheader75

.preheader75:                                     ; preds = %349
  br i1 %11, label %.lr.ph244, label %.thread59

.lr.ph244:                                        ; preds = %.preheader75, %363
  %indvars.iv543 = phi i64 [ %indvars.iv.next544, %363 ], [ 2, %.preheader75 ]
  %354 = getelementptr inbounds i32* %iterator, i64 %indvars.iv543
  %355 = load i32* %354, align 4, !tbaa !2
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %354, align 4, !tbaa !2
  %357 = getelementptr inbounds i32* %to, i64 %indvars.iv543
  %358 = load i32* %357, align 4, !tbaa !2
  %359 = icmp slt i32 %356, %358
  br i1 %359, label %.thread58.preheader, label %363

.thread58.preheader:                              ; preds = %.lr.ph244
  %360 = trunc i64 %indvars.iv543 to i32
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %.lr.ph249, label %.backedge92

.lr.ph249:                                        ; preds = %.thread58.preheader
  %sext639 = shl i64 %indvars.iv543, 32
  %362 = ashr exact i64 %sext639, 32
  br label %.thread58

; <label>:363                                     ; preds = %.lr.ph244
  %indvars.iv.next544 = add nuw nsw i64 %indvars.iv543, 1
  %364 = icmp slt i64 %indvars.iv.next544, %6
  br i1 %364, label %.lr.ph244, label %.thread59

.thread58:                                        ; preds = %.lr.ph249, %.thread58
  %indvars.iv545 = phi i64 [ %362, %.lr.ph249 ], [ %indvars.iv.next546, %.thread58 ]
  %indvars.iv.next546 = add nsw i64 %indvars.iv545, -1
  %365 = getelementptr inbounds i32* %from, i64 %indvars.iv.next546
  %366 = load i32* %365, align 4, !tbaa !2
  %367 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next546
  store i32 %366, i32* %367, align 4, !tbaa !2
  %368 = icmp sgt i64 %indvars.iv545, 1
  br i1 %368, label %.thread58, label %.backedge92

.thread59:                                        ; preds = %._crit_edge241, %.preheader75, %363
  %indvars.iv.next548 = add nsw i64 %indvars.iv547, 1
  %369 = getelementptr inbounds double* %outvals, i64 %indvars.iv547
  store double %typed_outval30.1.lcssa, double* %369, align 8, !tbaa !9
  %370 = add nuw nsw i32 %_j26.0251, 1
  %371 = getelementptr inbounds double* %typed_vdata29.0252, i64 1
  %exitcond549 = icmp eq i32 %_j26.0251, %13
  br i1 %exitcond549, label %..loopexit104_crit_edge, label %319

; <label>:372                                     ; preds = %17
  br i1 %2, label %.lr.ph223, label %.loopexit99

.lr.ph223:                                        ; preds = %372
  %373 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv635
  %374 = bitcast i8** %373 to float**
  %375 = load float** %374, align 8, !tbaa !6
  %376 = sext i32 %total_outvals.0412 to i64
  br label %377

; <label>:377                                     ; preds = %.thread61, %.lr.ph223
  %indvars.iv530 = phi i64 [ %376, %.lr.ph223 ], [ %indvars.iv.next531, %.thread61 ]
  %typed_vdata35.0221 = phi float* [ %375, %.lr.ph223 ], [ %430, %.thread61 ]
  %_j32.0220 = phi i32 [ 0, %.lr.ph223 ], [ %429, %.thread61 ]
  %378 = load i32* %from, align 4, !tbaa !2
  br i1 %3, label %.lr.ph197, label %._crit_edge198

.lr.ph197:                                        ; preds = %377, %.lr.ph197
  %indvars.iv516 = phi i64 [ %indvars.iv.next517, %.lr.ph197 ], [ 1, %377 ]
  %_vindex34.0195 = phi i32 [ %384, %.lr.ph197 ], [ %378, %377 ]
  %379 = getelementptr inbounds i32* %from, i64 %indvars.iv516
  %380 = load i32* %379, align 4, !tbaa !2
  %381 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv516
  %382 = load i32* %381, align 4, !tbaa !2
  %383 = mul nsw i32 %382, %380
  %384 = add nsw i32 %383, %_vindex34.0195
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1
  %lftr.wideiv518 = trunc i64 %indvars.iv516 to i32
  %exitcond519 = icmp eq i32 %lftr.wideiv518, %12
  br i1 %exitcond519, label %._crit_edge198, label %.lr.ph197

._crit_edge198:                                   ; preds = %.lr.ph197, %377
  %_vindex34.0.lcssa = phi i32 [ %378, %377 ], [ %384, %.lr.ph197 ]
  %385 = sext i32 %_vindex34.0.lcssa to i64
  %386 = getelementptr inbounds float* %typed_vdata35.0221, i64 %385
  %387 = load float* %386, align 4, !tbaa !15
  %388 = tail call i8* @__memcpy_chk(i8* %4, i8* %5, i64 %7, i64 %8) #5
  br label %.backedge94

.backedge94:                                      ; preds = %407, %.thread60.preheader, %.thread60, %._crit_edge198
  %typed_outval36.0 = phi float [ %387, %._crit_edge198 ], [ %typed_outval36.1.lcssa, %.thread60 ], [ %typed_outval36.1.lcssa, %.thread60.preheader ], [ %typed_outval36.1.lcssa, %407 ]
  br i1 %3, label %.lr.ph203, label %._crit_edge204

.lr.ph203:                                        ; preds = %.backedge94, %.lr.ph203
  %indvars.iv520 = phi i64 [ %indvars.iv.next521, %.lr.ph203 ], [ 1, %.backedge94 ]
  %_vindex34.1201 = phi i32 [ %394, %.lr.ph203 ], [ 0, %.backedge94 ]
  %389 = getelementptr inbounds i32* %iterator, i64 %indvars.iv520
  %390 = load i32* %389, align 4, !tbaa !2
  %391 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv520
  %392 = load i32* %391, align 4, !tbaa !2
  %393 = mul nsw i32 %392, %390
  %394 = add nsw i32 %393, %_vindex34.1201
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 1
  %lftr.wideiv522 = trunc i64 %indvars.iv520 to i32
  %exitcond523 = icmp eq i32 %lftr.wideiv522, %12
  br i1 %exitcond523, label %._crit_edge204, label %.lr.ph203

._crit_edge204:                                   ; preds = %.lr.ph203, %.backedge94
  %_vindex34.1.lcssa = phi i32 [ 0, %.backedge94 ], [ %394, %.lr.ph203 ]
  %395 = load i32* %from, align 4, !tbaa !2
  %396 = load i32* %to, align 4, !tbaa !2
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %.lr.ph209, label %._crit_edge210

.lr.ph209:                                        ; preds = %._crit_edge204
  %398 = sext i32 %395 to i64
  %399 = sext i32 %_vindex34.1.lcssa to i64
  %400 = sext i32 %396 to i64
  br label %401

; <label>:401                                     ; preds = %.lr.ph209, %401
  %indvars.iv524 = phi i64 [ %398, %.lr.ph209 ], [ %indvars.iv.next525, %401 ]
  %typed_outval36.1207 = phi float [ %typed_outval36.0, %.lr.ph209 ], [ %typed_outval36.2, %401 ]
  %402 = add nsw i64 %indvars.iv524, %399
  %403 = getelementptr inbounds float* %typed_vdata35.0221, i64 %402
  %404 = load float* %403, align 4, !tbaa !15
  %405 = fcmp ogt float %typed_outval36.1207, %404
  %typed_outval36.2 = select i1 %405, float %404, float %typed_outval36.1207
  %indvars.iv.next525 = add nsw i64 %indvars.iv524, 1
  %406 = icmp slt i64 %indvars.iv.next525, %400
  br i1 %406, label %401, label %._crit_edge210

._crit_edge210:                                   ; preds = %401, %._crit_edge204
  %typed_outval36.1.lcssa = phi float [ %typed_outval36.0, %._crit_edge204 ], [ %typed_outval36.2, %401 ]
  br i1 %3, label %407, label %.thread61

; <label>:407                                     ; preds = %._crit_edge210
  %408 = load i32* %9, align 4, !tbaa !2
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %9, align 4, !tbaa !2
  %410 = load i32* %10, align 4, !tbaa !2
  %411 = icmp slt i32 %409, %410
  br i1 %411, label %.backedge94, label %.preheader77

.preheader77:                                     ; preds = %407
  br i1 %11, label %.lr.ph213, label %.thread61

.lr.ph213:                                        ; preds = %.preheader77, %421
  %indvars.iv526 = phi i64 [ %indvars.iv.next527, %421 ], [ 2, %.preheader77 ]
  %412 = getelementptr inbounds i32* %iterator, i64 %indvars.iv526
  %413 = load i32* %412, align 4, !tbaa !2
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %412, align 4, !tbaa !2
  %415 = getelementptr inbounds i32* %to, i64 %indvars.iv526
  %416 = load i32* %415, align 4, !tbaa !2
  %417 = icmp slt i32 %414, %416
  br i1 %417, label %.thread60.preheader, label %421

.thread60.preheader:                              ; preds = %.lr.ph213
  %418 = trunc i64 %indvars.iv526 to i32
  %419 = icmp sgt i32 %418, 0
  br i1 %419, label %.lr.ph218, label %.backedge94

.lr.ph218:                                        ; preds = %.thread60.preheader
  %sext638 = shl i64 %indvars.iv526, 32
  %420 = ashr exact i64 %sext638, 32
  br label %.thread60

; <label>:421                                     ; preds = %.lr.ph213
  %indvars.iv.next527 = add nuw nsw i64 %indvars.iv526, 1
  %422 = icmp slt i64 %indvars.iv.next527, %6
  br i1 %422, label %.lr.ph213, label %.thread61

.thread60:                                        ; preds = %.lr.ph218, %.thread60
  %indvars.iv528 = phi i64 [ %420, %.lr.ph218 ], [ %indvars.iv.next529, %.thread60 ]
  %indvars.iv.next529 = add nsw i64 %indvars.iv528, -1
  %423 = getelementptr inbounds i32* %from, i64 %indvars.iv.next529
  %424 = load i32* %423, align 4, !tbaa !2
  %425 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next529
  store i32 %424, i32* %425, align 4, !tbaa !2
  %426 = icmp sgt i64 %indvars.iv528, 1
  br i1 %426, label %.thread60, label %.backedge94

.thread61:                                        ; preds = %._crit_edge210, %.preheader77, %421
  %427 = fpext float %typed_outval36.1.lcssa to double
  %indvars.iv.next531 = add nsw i64 %indvars.iv530, 1
  %428 = getelementptr inbounds double* %outvals, i64 %indvars.iv530
  store double %427, double* %428, align 8, !tbaa !9
  %429 = add nuw nsw i32 %_j32.0220, 1
  %430 = getelementptr inbounds float* %typed_vdata35.0221, i64 1
  %exitcond532 = icmp eq i32 %_j32.0220, %13
  br i1 %exitcond532, label %..loopexit105_crit_edge, label %377

; <label>:431                                     ; preds = %17
  br i1 %2, label %.lr.ph192, label %.loopexit99

.lr.ph192:                                        ; preds = %431
  %432 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv635
  %433 = bitcast i8** %432 to double**
  %434 = load double** %433, align 8, !tbaa !6
  %435 = sext i32 %total_outvals.0412 to i64
  br label %436

; <label>:436                                     ; preds = %.thread63, %.lr.ph192
  %indvars.iv513 = phi i64 [ %435, %.lr.ph192 ], [ %indvars.iv.next514, %.thread63 ]
  %typed_vdata41.0190 = phi double* [ %434, %.lr.ph192 ], [ %488, %.thread63 ]
  %_j38.0189 = phi i32 [ 0, %.lr.ph192 ], [ %487, %.thread63 ]
  %437 = load i32* %from, align 4, !tbaa !2
  br i1 %3, label %.lr.ph166, label %._crit_edge167

.lr.ph166:                                        ; preds = %436, %.lr.ph166
  %indvars.iv499 = phi i64 [ %indvars.iv.next500, %.lr.ph166 ], [ 1, %436 ]
  %_vindex40.0164 = phi i32 [ %443, %.lr.ph166 ], [ %437, %436 ]
  %438 = getelementptr inbounds i32* %from, i64 %indvars.iv499
  %439 = load i32* %438, align 4, !tbaa !2
  %440 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv499
  %441 = load i32* %440, align 4, !tbaa !2
  %442 = mul nsw i32 %441, %439
  %443 = add nsw i32 %442, %_vindex40.0164
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 1
  %lftr.wideiv501 = trunc i64 %indvars.iv499 to i32
  %exitcond502 = icmp eq i32 %lftr.wideiv501, %12
  br i1 %exitcond502, label %._crit_edge167, label %.lr.ph166

._crit_edge167:                                   ; preds = %.lr.ph166, %436
  %_vindex40.0.lcssa = phi i32 [ %437, %436 ], [ %443, %.lr.ph166 ]
  %444 = sext i32 %_vindex40.0.lcssa to i64
  %445 = getelementptr inbounds double* %typed_vdata41.0190, i64 %444
  %446 = load double* %445, align 8, !tbaa !9
  %447 = tail call i8* @__memcpy_chk(i8* %4, i8* %5, i64 %7, i64 %8) #5
  br label %.backedge96

.backedge96:                                      ; preds = %466, %.thread62.preheader, %.thread62, %._crit_edge167
  %typed_outval42.0 = phi double [ %446, %._crit_edge167 ], [ %typed_outval42.1.lcssa, %.thread62 ], [ %typed_outval42.1.lcssa, %.thread62.preheader ], [ %typed_outval42.1.lcssa, %466 ]
  br i1 %3, label %.lr.ph172, label %._crit_edge173

.lr.ph172:                                        ; preds = %.backedge96, %.lr.ph172
  %indvars.iv503 = phi i64 [ %indvars.iv.next504, %.lr.ph172 ], [ 1, %.backedge96 ]
  %_vindex40.1170 = phi i32 [ %453, %.lr.ph172 ], [ 0, %.backedge96 ]
  %448 = getelementptr inbounds i32* %iterator, i64 %indvars.iv503
  %449 = load i32* %448, align 4, !tbaa !2
  %450 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv503
  %451 = load i32* %450, align 4, !tbaa !2
  %452 = mul nsw i32 %451, %449
  %453 = add nsw i32 %452, %_vindex40.1170
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1
  %lftr.wideiv505 = trunc i64 %indvars.iv503 to i32
  %exitcond506 = icmp eq i32 %lftr.wideiv505, %12
  br i1 %exitcond506, label %._crit_edge173, label %.lr.ph172

._crit_edge173:                                   ; preds = %.lr.ph172, %.backedge96
  %_vindex40.1.lcssa = phi i32 [ 0, %.backedge96 ], [ %453, %.lr.ph172 ]
  %454 = load i32* %from, align 4, !tbaa !2
  %455 = load i32* %to, align 4, !tbaa !2
  %456 = icmp slt i32 %454, %455
  br i1 %456, label %.lr.ph178, label %._crit_edge179

.lr.ph178:                                        ; preds = %._crit_edge173
  %457 = sext i32 %454 to i64
  %458 = sext i32 %_vindex40.1.lcssa to i64
  %459 = sext i32 %455 to i64
  br label %460

; <label>:460                                     ; preds = %.lr.ph178, %460
  %indvars.iv507 = phi i64 [ %457, %.lr.ph178 ], [ %indvars.iv.next508, %460 ]
  %typed_outval42.1176 = phi double [ %typed_outval42.0, %.lr.ph178 ], [ %typed_outval42.2, %460 ]
  %461 = add nsw i64 %indvars.iv507, %458
  %462 = getelementptr inbounds double* %typed_vdata41.0190, i64 %461
  %463 = load double* %462, align 8, !tbaa !9
  %464 = fcmp ogt double %typed_outval42.1176, %463
  %typed_outval42.2 = select i1 %464, double %463, double %typed_outval42.1176
  %indvars.iv.next508 = add nsw i64 %indvars.iv507, 1
  %465 = icmp slt i64 %indvars.iv.next508, %459
  br i1 %465, label %460, label %._crit_edge179

._crit_edge179:                                   ; preds = %460, %._crit_edge173
  %typed_outval42.1.lcssa = phi double [ %typed_outval42.0, %._crit_edge173 ], [ %typed_outval42.2, %460 ]
  br i1 %3, label %466, label %.thread63

; <label>:466                                     ; preds = %._crit_edge179
  %467 = load i32* %9, align 4, !tbaa !2
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %9, align 4, !tbaa !2
  %469 = load i32* %10, align 4, !tbaa !2
  %470 = icmp slt i32 %468, %469
  br i1 %470, label %.backedge96, label %.preheader79

.preheader79:                                     ; preds = %466
  br i1 %11, label %.lr.ph182, label %.thread63

.lr.ph182:                                        ; preds = %.preheader79, %480
  %indvars.iv509 = phi i64 [ %indvars.iv.next510, %480 ], [ 2, %.preheader79 ]
  %471 = getelementptr inbounds i32* %iterator, i64 %indvars.iv509
  %472 = load i32* %471, align 4, !tbaa !2
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %471, align 4, !tbaa !2
  %474 = getelementptr inbounds i32* %to, i64 %indvars.iv509
  %475 = load i32* %474, align 4, !tbaa !2
  %476 = icmp slt i32 %473, %475
  br i1 %476, label %.thread62.preheader, label %480

.thread62.preheader:                              ; preds = %.lr.ph182
  %477 = trunc i64 %indvars.iv509 to i32
  %478 = icmp sgt i32 %477, 0
  br i1 %478, label %.lr.ph187, label %.backedge96

.lr.ph187:                                        ; preds = %.thread62.preheader
  %sext637 = shl i64 %indvars.iv509, 32
  %479 = ashr exact i64 %sext637, 32
  br label %.thread62

; <label>:480                                     ; preds = %.lr.ph182
  %indvars.iv.next510 = add nuw nsw i64 %indvars.iv509, 1
  %481 = icmp slt i64 %indvars.iv.next510, %6
  br i1 %481, label %.lr.ph182, label %.thread63

.thread62:                                        ; preds = %.lr.ph187, %.thread62
  %indvars.iv511 = phi i64 [ %479, %.lr.ph187 ], [ %indvars.iv.next512, %.thread62 ]
  %indvars.iv.next512 = add nsw i64 %indvars.iv511, -1
  %482 = getelementptr inbounds i32* %from, i64 %indvars.iv.next512
  %483 = load i32* %482, align 4, !tbaa !2
  %484 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next512
  store i32 %483, i32* %484, align 4, !tbaa !2
  %485 = icmp sgt i64 %indvars.iv511, 1
  br i1 %485, label %.thread62, label %.backedge96

.thread63:                                        ; preds = %._crit_edge179, %.preheader79, %480
  %indvars.iv.next514 = add nsw i64 %indvars.iv513, 1
  %486 = getelementptr inbounds double* %outvals, i64 %indvars.iv513
  store double %typed_outval42.1.lcssa, double* %486, align 8, !tbaa !9
  %487 = add nuw nsw i32 %_j38.0189, 1
  %488 = getelementptr inbounds double* %typed_vdata41.0190, i64 1
  %exitcond515 = icmp eq i32 %_j38.0189, %13
  br i1 %exitcond515, label %..loopexit106_crit_edge, label %436

; <label>:489                                     ; preds = %17
  br i1 %2, label %.lr.ph161, label %.loopexit99

.lr.ph161:                                        ; preds = %489
  %490 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv635
  %491 = bitcast i8** %490 to x86_fp80**
  %492 = load x86_fp80** %491, align 8, !tbaa !6
  %493 = sext i32 %total_outvals.0412 to i64
  br label %494

; <label>:494                                     ; preds = %.thread65, %.lr.ph161
  %indvars.iv496 = phi i64 [ %493, %.lr.ph161 ], [ %indvars.iv.next497, %.thread65 ]
  %typed_vdata47.0159 = phi x86_fp80* [ %492, %.lr.ph161 ], [ %547, %.thread65 ]
  %_j44.0158 = phi i32 [ 0, %.lr.ph161 ], [ %546, %.thread65 ]
  %495 = load i32* %from, align 4, !tbaa !2
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %494, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %494 ]
  %_vindex46.0137 = phi i32 [ %501, %.lr.ph ], [ %495, %494 ]
  %496 = getelementptr inbounds i32* %from, i64 %indvars.iv
  %497 = load i32* %496, align 4, !tbaa !2
  %498 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv
  %499 = load i32* %498, align 4, !tbaa !2
  %500 = mul nsw i32 %499, %497
  %501 = add nsw i32 %500, %_vindex46.0137
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %12
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %494
  %_vindex46.0.lcssa = phi i32 [ %495, %494 ], [ %501, %.lr.ph ]
  %502 = sext i32 %_vindex46.0.lcssa to i64
  %503 = getelementptr inbounds x86_fp80* %typed_vdata47.0159, i64 %502
  %504 = load x86_fp80* %503, align 16, !tbaa !17
  %505 = tail call i8* @__memcpy_chk(i8* %4, i8* %5, i64 %7, i64 %8) #5
  br label %.backedge98

.backedge98:                                      ; preds = %524, %.thread64.preheader, %.thread64, %._crit_edge
  %typed_outval48.0 = phi x86_fp80 [ %504, %._crit_edge ], [ %typed_outval48.1.lcssa, %.thread64 ], [ %typed_outval48.1.lcssa, %.thread64.preheader ], [ %typed_outval48.1.lcssa, %524 ]
  br i1 %3, label %.lr.ph141, label %._crit_edge142

.lr.ph141:                                        ; preds = %.backedge98, %.lr.ph141
  %indvars.iv486 = phi i64 [ %indvars.iv.next487, %.lr.ph141 ], [ 1, %.backedge98 ]
  %_vindex46.1139 = phi i32 [ %511, %.lr.ph141 ], [ 0, %.backedge98 ]
  %506 = getelementptr inbounds i32* %iterator, i64 %indvars.iv486
  %507 = load i32* %506, align 4, !tbaa !2
  %508 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv486
  %509 = load i32* %508, align 4, !tbaa !2
  %510 = mul nsw i32 %509, %507
  %511 = add nsw i32 %510, %_vindex46.1139
  %indvars.iv.next487 = add nuw nsw i64 %indvars.iv486, 1
  %lftr.wideiv488 = trunc i64 %indvars.iv486 to i32
  %exitcond489 = icmp eq i32 %lftr.wideiv488, %12
  br i1 %exitcond489, label %._crit_edge142, label %.lr.ph141

._crit_edge142:                                   ; preds = %.lr.ph141, %.backedge98
  %_vindex46.1.lcssa = phi i32 [ 0, %.backedge98 ], [ %511, %.lr.ph141 ]
  %512 = load i32* %from, align 4, !tbaa !2
  %513 = load i32* %to, align 4, !tbaa !2
  %514 = icmp slt i32 %512, %513
  br i1 %514, label %.lr.ph147, label %._crit_edge148

.lr.ph147:                                        ; preds = %._crit_edge142
  %515 = sext i32 %512 to i64
  %516 = sext i32 %_vindex46.1.lcssa to i64
  %517 = sext i32 %513 to i64
  br label %518

; <label>:518                                     ; preds = %.lr.ph147, %518
  %indvars.iv490 = phi i64 [ %515, %.lr.ph147 ], [ %indvars.iv.next491, %518 ]
  %typed_outval48.1145 = phi x86_fp80 [ %typed_outval48.0, %.lr.ph147 ], [ %typed_outval48.2, %518 ]
  %519 = add nsw i64 %indvars.iv490, %516
  %520 = getelementptr inbounds x86_fp80* %typed_vdata47.0159, i64 %519
  %521 = load x86_fp80* %520, align 16, !tbaa !17
  %522 = fcmp ogt x86_fp80 %typed_outval48.1145, %521
  %typed_outval48.2 = select i1 %522, x86_fp80 %521, x86_fp80 %typed_outval48.1145
  %indvars.iv.next491 = add nsw i64 %indvars.iv490, 1
  %523 = icmp slt i64 %indvars.iv.next491, %517
  br i1 %523, label %518, label %._crit_edge148

._crit_edge148:                                   ; preds = %518, %._crit_edge142
  %typed_outval48.1.lcssa = phi x86_fp80 [ %typed_outval48.0, %._crit_edge142 ], [ %typed_outval48.2, %518 ]
  br i1 %3, label %524, label %.thread65

; <label>:524                                     ; preds = %._crit_edge148
  %525 = load i32* %9, align 4, !tbaa !2
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %9, align 4, !tbaa !2
  %527 = load i32* %10, align 4, !tbaa !2
  %528 = icmp slt i32 %526, %527
  br i1 %528, label %.backedge98, label %.preheader81

.preheader81:                                     ; preds = %524
  br i1 %11, label %.lr.ph151, label %.thread65

.lr.ph151:                                        ; preds = %.preheader81, %538
  %indvars.iv492 = phi i64 [ %indvars.iv.next493, %538 ], [ 2, %.preheader81 ]
  %529 = getelementptr inbounds i32* %iterator, i64 %indvars.iv492
  %530 = load i32* %529, align 4, !tbaa !2
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %529, align 4, !tbaa !2
  %532 = getelementptr inbounds i32* %to, i64 %indvars.iv492
  %533 = load i32* %532, align 4, !tbaa !2
  %534 = icmp slt i32 %531, %533
  br i1 %534, label %.thread64.preheader, label %538

.thread64.preheader:                              ; preds = %.lr.ph151
  %535 = trunc i64 %indvars.iv492 to i32
  %536 = icmp sgt i32 %535, 0
  br i1 %536, label %.lr.ph156, label %.backedge98

.lr.ph156:                                        ; preds = %.thread64.preheader
  %sext = shl i64 %indvars.iv492, 32
  %537 = ashr exact i64 %sext, 32
  br label %.thread64

; <label>:538                                     ; preds = %.lr.ph151
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1
  %539 = icmp slt i64 %indvars.iv.next493, %6
  br i1 %539, label %.lr.ph151, label %.thread65

.thread64:                                        ; preds = %.lr.ph156, %.thread64
  %indvars.iv494 = phi i64 [ %537, %.lr.ph156 ], [ %indvars.iv.next495, %.thread64 ]
  %indvars.iv.next495 = add nsw i64 %indvars.iv494, -1
  %540 = getelementptr inbounds i32* %from, i64 %indvars.iv.next495
  %541 = load i32* %540, align 4, !tbaa !2
  %542 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next495
  store i32 %541, i32* %542, align 4, !tbaa !2
  %543 = icmp sgt i64 %indvars.iv494, 1
  br i1 %543, label %.thread64, label %.backedge98

.thread65:                                        ; preds = %._crit_edge148, %.preheader81, %538
  %544 = fptrunc x86_fp80 %typed_outval48.1.lcssa to double
  %indvars.iv.next497 = add nsw i64 %indvars.iv496, 1
  %545 = getelementptr inbounds double* %outvals, i64 %indvars.iv496
  store double %544, double* %545, align 8, !tbaa !9
  %546 = add nuw nsw i32 %_j44.0158, 1
  %547 = getelementptr inbounds x86_fp80* %typed_vdata47.0159, i64 1
  %exitcond498 = icmp eq i32 %_j44.0158, %13
  br i1 %exitcond498, label %..loopexit107_crit_edge, label %494

; <label>:548                                     ; preds = %17
  %549 = tail call i32 @CCTK_Warn(i32 1, i32 306, i8* getelementptr inbounds ([85 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([85 x i8]* @.str3, i64 0, i64 0)) #5
  br label %.loopexit108

; <label>:550                                     ; preds = %17
  %551 = tail call i32 @CCTK_Warn(i32 1, i32 310, i8* getelementptr inbounds ([85 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0)) #5
  br label %.loopexit108

..loopexit99_crit_edge:                           ; preds = %.thread49
  %552 = add nsw i64 %15, %23
  %553 = trunc i64 %552 to i32
  br label %.loopexit99

..loopexit100_crit_edge:                          ; preds = %.thread51
  %554 = add nsw i64 %15, %82
  %555 = trunc i64 %554 to i32
  br label %.loopexit99

..loopexit101_crit_edge:                          ; preds = %.thread53
  %556 = add nsw i64 %15, %141
  %557 = trunc i64 %556 to i32
  br label %.loopexit99

..loopexit102_crit_edge:                          ; preds = %.thread55
  %558 = add nsw i64 %15, %200
  %559 = trunc i64 %558 to i32
  br label %.loopexit99

..loopexit103_crit_edge:                          ; preds = %.thread57
  %560 = add nsw i64 %15, %259
  %561 = trunc i64 %560 to i32
  br label %.loopexit99

..loopexit104_crit_edge:                          ; preds = %.thread59
  %562 = add nsw i64 %15, %318
  %563 = trunc i64 %562 to i32
  br label %.loopexit99

..loopexit105_crit_edge:                          ; preds = %.thread61
  %564 = add nsw i64 %15, %376
  %565 = trunc i64 %564 to i32
  br label %.loopexit99

..loopexit106_crit_edge:                          ; preds = %.thread63
  %566 = add nsw i64 %15, %435
  %567 = trunc i64 %566 to i32
  br label %.loopexit99

..loopexit107_crit_edge:                          ; preds = %.thread65
  %568 = add nsw i64 %15, %493
  %569 = trunc i64 %568 to i32
  br label %.loopexit99

.loopexit99:                                      ; preds = %489, %..loopexit107_crit_edge, %431, %..loopexit106_crit_edge, %372, %..loopexit105_crit_edge, %314, %..loopexit104_crit_edge, %255, %..loopexit103_crit_edge, %196, %..loopexit102_crit_edge, %137, %..loopexit101_crit_edge, %78, %..loopexit100_crit_edge, %20, %..loopexit99_crit_edge
  %total_outvals.10 = phi i32 [ %553, %..loopexit99_crit_edge ], [ %total_outvals.0412, %20 ], [ %555, %..loopexit100_crit_edge ], [ %total_outvals.0412, %78 ], [ %557, %..loopexit101_crit_edge ], [ %total_outvals.0412, %137 ], [ %559, %..loopexit102_crit_edge ], [ %total_outvals.0412, %196 ], [ %561, %..loopexit103_crit_edge ], [ %total_outvals.0412, %255 ], [ %563, %..loopexit104_crit_edge ], [ %total_outvals.0412, %314 ], [ %565, %..loopexit105_crit_edge ], [ %total_outvals.0412, %372 ], [ %567, %..loopexit106_crit_edge ], [ %total_outvals.0412, %431 ], [ %569, %..loopexit107_crit_edge ], [ %total_outvals.0412, %489 ]
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 1
  %570 = icmp slt i64 %indvars.iv.next636, %16
  br i1 %570, label %17, label %.loopexit108

.loopexit108:                                     ; preds = %.loopexit99, %0, %550, %548
  %.0 = phi i32 [ -1, %550 ], [ -1, %548 ], [ 0, %0 ], [ 0, %.loopexit99 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ReductionMinValGVs(%struct.cGH* %GH, i32 %proc, i32 %num_outvals, i32 %outtype, i8* %outvals, i32 %num_invars, i32* %invars) #1 {
  %1 = tail call i32 @PUGH_ReductionGVs(%struct.cGH* %GH, i32 %proc, i32 %num_invars, i32* %invars, i32 %outtype, i32 %num_outvals, i8* %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionMinVal) #5
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @PUGH_ReductionGVs(%struct.cGH*, i32, i32, i32*, i32, i32, i8*, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)*) #2

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }

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
!8 = !{!4, !4, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !4, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !4, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !4, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"long double", !4, i64 0}