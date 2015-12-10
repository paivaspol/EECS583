; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNormInf.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.CCTK_COMPLEX16 = type { double, double }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }

@.str = private unnamed_addr constant [101 x i8] c"$Header: /cactus/CactusPUGH/PUGHReduce/src/ReductionNormInf.c,v 1.2 2001/11/05 15:04:13 tradke Exp $\00", align 1
@.str1 = private unnamed_addr constant [89 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNormInf.c\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str3 = private unnamed_addr constant [45 x i8] c"PUGH_ReductionNormInf: Unknown variable type\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHReduce_ReductionNormInf_c() #0 {
  ret i8* getelementptr inbounds ([101 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ReductionNormInfArrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %dims, i32 %num_inarrays, i8** %inarrays, i32 %intype, i32 %num_outvals, i8* %outvals, i32 %outtype) #1 {
  %1 = tail call i32 @PUGH_ReductionArrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %dims, i32 %intype, i32 %num_inarrays, i8** %inarrays, i32 %outtype, i32 %num_outvals, i8* %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionNormInf) #5
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @PUGH_ReductionArrays(%struct.cGH*, i32, i32, i32*, i32, i32, i8**, i32, i32, i8*, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @PUGH_ReductionNormInf(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %from, i32* %to, i32* %iterator, i32* nocapture readonly %points_per_dim, i32 %num_points, i32 %num_inarrays, i32* nocapture readonly %intypes, i8** nocapture readonly %inarrays, i32 %num_outvals, double* nocapture %outvals) #1 {
  %1 = icmp sgt i32 %num_inarrays, 0
  br i1 %1, label %.lr.ph392, label %._crit_edge393

.lr.ph392:                                        ; preds = %0
  %2 = icmp sgt i32 %num_outvals, 0
  %3 = bitcast i32* %iterator to i8*
  %4 = bitcast i32* %from to i8*
  %5 = sext i32 %num_dims to i64
  %6 = shl nsw i64 %5, 2
  %7 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %3, i1 false)
  %8 = icmp sgt i32 %num_dims, 1
  %9 = getelementptr inbounds i32* %iterator, i64 1
  %10 = getelementptr inbounds i32* %to, i64 1
  %11 = icmp sgt i32 %num_dims, 2
  %12 = add i32 %num_dims, -1
  %13 = add i32 %num_outvals, -1
  %14 = zext i32 %13 to i64
  %15 = add nuw nsw i64 %14, 1
  %16 = sext i32 %num_inarrays to i64
  br label %17

; <label>:17                                      ; preds = %.lr.ph392, %.loopexit121
  %indvars.iv595 = phi i64 [ 0, %.lr.ph392 ], [ %indvars.iv.next596, %.loopexit121 ]
  %total_outvals.0390 = phi i32 [ 0, %.lr.ph392 ], [ %total_outvals.11, %.loopexit121 ]
  %18 = getelementptr inbounds i32* %intypes, i64 %indvars.iv595
  %19 = load i32* %18, align 4, !tbaa !2
  switch i32 %19, label %553 [
    i32 1, label %20
    i32 2, label %67
    i32 3, label %118
    i32 4, label %172
    i32 5, label %223
    i32 6, label %274
    i32 7, label %329
    i32 8, label %385
    i32 9, label %440
    i32 10, label %496
  ]

; <label>:20                                      ; preds = %17
  br i1 %2, label %.preheader93.lr.ph, label %.loopexit121

.preheader93.lr.ph:                               ; preds = %20
  %21 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv595
  %22 = load i8** %21, align 8, !tbaa !6
  %23 = sext i32 %total_outvals.0390 to i64
  br label %.preheader93

.preheader93:                                     ; preds = %.thread55, %.preheader93.lr.ph
  %indvars.iv592 = phi i64 [ %23, %.preheader93.lr.ph ], [ %indvars.iv.next593, %.thread55 ]
  %typed_vdata.0387 = phi i8* [ %22, %.preheader93.lr.ph ], [ %66, %.thread55 ]
  %_j.0386 = phi i32 [ 0, %.preheader93.lr.ph ], [ %65, %.thread55 ]
  %24 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge

.backedge:                                        ; preds = %43, %.thread.preheader, %.thread, %.preheader93
  %typed_outval.0 = phi i8 [ 0, %.preheader93 ], [ %typed_outval.1.lcssa, %.thread ], [ %typed_outval.1.lcssa, %.thread.preheader ], [ %typed_outval.1.lcssa, %43 ]
  br i1 %8, label %.lr.ph369, label %._crit_edge370

.lr.ph369:                                        ; preds = %.backedge, %.lr.ph369
  %indvars.iv582 = phi i64 [ %indvars.iv.next583, %.lr.ph369 ], [ 1, %.backedge ]
  %_vindex.1367 = phi i32 [ %30, %.lr.ph369 ], [ 0, %.backedge ]
  %25 = getelementptr inbounds i32* %iterator, i64 %indvars.iv582
  %26 = load i32* %25, align 4, !tbaa !2
  %27 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv582
  %28 = load i32* %27, align 4, !tbaa !2
  %29 = mul nsw i32 %28, %26
  %30 = add nsw i32 %29, %_vindex.1367
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1
  %lftr.wideiv584 = trunc i64 %indvars.iv582 to i32
  %exitcond585 = icmp eq i32 %lftr.wideiv584, %12
  br i1 %exitcond585, label %._crit_edge370, label %.lr.ph369

._crit_edge370:                                   ; preds = %.lr.ph369, %.backedge
  %_vindex.1.lcssa = phi i32 [ 0, %.backedge ], [ %30, %.lr.ph369 ]
  %31 = load i32* %from, align 4, !tbaa !2
  %32 = load i32* %to, align 4, !tbaa !2
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %.lr.ph375, label %._crit_edge376

.lr.ph375:                                        ; preds = %._crit_edge370
  %34 = sext i32 %31 to i64
  %35 = sext i32 %_vindex.1.lcssa to i64
  %36 = sext i32 %32 to i64
  br label %37

; <label>:37                                      ; preds = %.lr.ph375, %37
  %indvars.iv586 = phi i64 [ %34, %.lr.ph375 ], [ %indvars.iv.next587, %37 ]
  %typed_outval.1373 = phi i8 [ %typed_outval.0, %.lr.ph375 ], [ %.typed_outval.1, %37 ]
  %38 = add nsw i64 %indvars.iv586, %35
  %39 = getelementptr inbounds i8* %typed_vdata.0387, i64 %38
  %40 = load i8* %39, align 1, !tbaa !8
  %41 = icmp ult i8 %typed_outval.1373, %40
  %.typed_outval.1 = select i1 %41, i8 %40, i8 %typed_outval.1373
  %indvars.iv.next587 = add nsw i64 %indvars.iv586, 1
  %42 = icmp slt i64 %indvars.iv.next587, %36
  br i1 %42, label %37, label %._crit_edge376

._crit_edge376:                                   ; preds = %37, %._crit_edge370
  %typed_outval.1.lcssa = phi i8 [ %typed_outval.0, %._crit_edge370 ], [ %.typed_outval.1, %37 ]
  br i1 %8, label %43, label %.thread55

; <label>:43                                      ; preds = %._crit_edge376
  %44 = load i32* %9, align 4, !tbaa !2
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4, !tbaa !2
  %46 = load i32* %10, align 4, !tbaa !2
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %.backedge, label %.preheader

.preheader:                                       ; preds = %43
  br i1 %11, label %.lr.ph379, label %.thread55

.lr.ph379:                                        ; preds = %.preheader, %57
  %indvars.iv588 = phi i64 [ %indvars.iv.next589, %57 ], [ 2, %.preheader ]
  %48 = getelementptr inbounds i32* %iterator, i64 %indvars.iv588
  %49 = load i32* %48, align 4, !tbaa !2
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4, !tbaa !2
  %51 = getelementptr inbounds i32* %to, i64 %indvars.iv588
  %52 = load i32* %51, align 4, !tbaa !2
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %.thread.preheader, label %57

.thread.preheader:                                ; preds = %.lr.ph379
  %54 = trunc i64 %indvars.iv588 to i32
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %.lr.ph384, label %.backedge

.lr.ph384:                                        ; preds = %.thread.preheader
  %sext605 = shl i64 %indvars.iv588, 32
  %56 = ashr exact i64 %sext605, 32
  br label %.thread

; <label>:57                                      ; preds = %.lr.ph379
  %indvars.iv.next589 = add nuw nsw i64 %indvars.iv588, 1
  %58 = icmp slt i64 %indvars.iv.next589, %5
  br i1 %58, label %.lr.ph379, label %.thread55

.thread:                                          ; preds = %.lr.ph384, %.thread
  %indvars.iv590 = phi i64 [ %56, %.lr.ph384 ], [ %indvars.iv.next591, %.thread ]
  %indvars.iv.next591 = add nsw i64 %indvars.iv590, -1
  %59 = getelementptr inbounds i32* %from, i64 %indvars.iv.next591
  %60 = load i32* %59, align 4, !tbaa !2
  %61 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next591
  store i32 %60, i32* %61, align 4, !tbaa !2
  %62 = icmp sgt i64 %indvars.iv590, 1
  br i1 %62, label %.thread, label %.backedge

.thread55:                                        ; preds = %._crit_edge376, %.preheader, %57
  %63 = uitofp i8 %typed_outval.1.lcssa to double
  %indvars.iv.next593 = add nsw i64 %indvars.iv592, 1
  %64 = getelementptr inbounds double* %outvals, i64 %indvars.iv592
  store double %63, double* %64, align 8, !tbaa !9
  %65 = add nuw nsw i32 %_j.0386, 1
  %66 = getelementptr inbounds i8* %typed_vdata.0387, i64 1
  %exitcond594 = icmp eq i32 %_j.0386, %13
  br i1 %exitcond594, label %..loopexit121_crit_edge, label %.preheader93

; <label>:67                                      ; preds = %17
  br i1 %2, label %.preheader96.lr.ph, label %.loopexit121

.preheader96.lr.ph:                               ; preds = %67
  %68 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv595
  %69 = bitcast i8** %68 to i32**
  %70 = load i32** %69, align 8, !tbaa !6
  %71 = sext i32 %total_outvals.0390 to i64
  br label %.preheader96

.preheader96:                                     ; preds = %.thread57, %.preheader96.lr.ph
  %indvars.iv579 = phi i64 [ %71, %.preheader96.lr.ph ], [ %indvars.iv.next580, %.thread57 ]
  %typed_vdata5.0364 = phi i32* [ %70, %.preheader96.lr.ph ], [ %117, %.thread57 ]
  %_j2.0363 = phi i32 [ 0, %.preheader96.lr.ph ], [ %116, %.thread57 ]
  %72 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge95

.backedge95:                                      ; preds = %94, %.thread56.preheader, %.thread56, %.preheader96
  %typed_outval6.0 = phi i32 [ 0, %.preheader96 ], [ %typed_outval6.1.lcssa, %.thread56 ], [ %typed_outval6.1.lcssa, %.thread56.preheader ], [ %typed_outval6.1.lcssa, %94 ]
  br i1 %8, label %.lr.ph346, label %._crit_edge347

.lr.ph346:                                        ; preds = %.backedge95, %.lr.ph346
  %indvars.iv569 = phi i64 [ %indvars.iv.next570, %.lr.ph346 ], [ 1, %.backedge95 ]
  %_vindex4.1344 = phi i32 [ %78, %.lr.ph346 ], [ 0, %.backedge95 ]
  %73 = getelementptr inbounds i32* %iterator, i64 %indvars.iv569
  %74 = load i32* %73, align 4, !tbaa !2
  %75 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv569
  %76 = load i32* %75, align 4, !tbaa !2
  %77 = mul nsw i32 %76, %74
  %78 = add nsw i32 %77, %_vindex4.1344
  %indvars.iv.next570 = add nuw nsw i64 %indvars.iv569, 1
  %lftr.wideiv571 = trunc i64 %indvars.iv569 to i32
  %exitcond572 = icmp eq i32 %lftr.wideiv571, %12
  br i1 %exitcond572, label %._crit_edge347, label %.lr.ph346

._crit_edge347:                                   ; preds = %.lr.ph346, %.backedge95
  %_vindex4.1.lcssa = phi i32 [ 0, %.backedge95 ], [ %78, %.lr.ph346 ]
  %79 = load i32* %from, align 4, !tbaa !2
  %80 = load i32* %to, align 4, !tbaa !2
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %.lr.ph352, label %._crit_edge353

.lr.ph352:                                        ; preds = %._crit_edge347
  %82 = sext i32 %79 to i64
  %83 = sext i32 %_vindex4.1.lcssa to i64
  %84 = sext i32 %80 to i64
  br label %85

; <label>:85                                      ; preds = %.lr.ph352, %85
  %indvars.iv573 = phi i64 [ %82, %.lr.ph352 ], [ %indvars.iv.next574, %85 ]
  %typed_outval6.1350 = phi i32 [ %typed_outval6.0, %.lr.ph352 ], [ %.typed_outval6.1, %85 ]
  %86 = add nsw i64 %indvars.iv573, %83
  %87 = getelementptr inbounds i32* %typed_vdata5.0364, i64 %86
  %88 = load i32* %87, align 4, !tbaa !2
  %89 = icmp slt i32 %88, 0
  %90 = sub nsw i32 0, %88
  %91 = select i1 %89, i32 %90, i32 %88
  %92 = icmp slt i32 %typed_outval6.1350, %91
  %.typed_outval6.1 = select i1 %92, i32 %91, i32 %typed_outval6.1350
  %indvars.iv.next574 = add nsw i64 %indvars.iv573, 1
  %93 = icmp slt i64 %indvars.iv.next574, %84
  br i1 %93, label %85, label %._crit_edge353

._crit_edge353:                                   ; preds = %85, %._crit_edge347
  %typed_outval6.1.lcssa = phi i32 [ %typed_outval6.0, %._crit_edge347 ], [ %.typed_outval6.1, %85 ]
  br i1 %8, label %94, label %.thread57

; <label>:94                                      ; preds = %._crit_edge353
  %95 = load i32* %9, align 4, !tbaa !2
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4, !tbaa !2
  %97 = load i32* %10, align 4, !tbaa !2
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %.backedge95, label %.preheader75

.preheader75:                                     ; preds = %94
  br i1 %11, label %.lr.ph356, label %.thread57

.lr.ph356:                                        ; preds = %.preheader75, %108
  %indvars.iv575 = phi i64 [ %indvars.iv.next576, %108 ], [ 2, %.preheader75 ]
  %99 = getelementptr inbounds i32* %iterator, i64 %indvars.iv575
  %100 = load i32* %99, align 4, !tbaa !2
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4, !tbaa !2
  %102 = getelementptr inbounds i32* %to, i64 %indvars.iv575
  %103 = load i32* %102, align 4, !tbaa !2
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %.thread56.preheader, label %108

.thread56.preheader:                              ; preds = %.lr.ph356
  %105 = trunc i64 %indvars.iv575 to i32
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %.lr.ph361, label %.backedge95

.lr.ph361:                                        ; preds = %.thread56.preheader
  %sext604 = shl i64 %indvars.iv575, 32
  %107 = ashr exact i64 %sext604, 32
  br label %.thread56

; <label>:108                                     ; preds = %.lr.ph356
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1
  %109 = icmp slt i64 %indvars.iv.next576, %5
  br i1 %109, label %.lr.ph356, label %.thread57

.thread56:                                        ; preds = %.lr.ph361, %.thread56
  %indvars.iv577 = phi i64 [ %107, %.lr.ph361 ], [ %indvars.iv.next578, %.thread56 ]
  %indvars.iv.next578 = add nsw i64 %indvars.iv577, -1
  %110 = getelementptr inbounds i32* %from, i64 %indvars.iv.next578
  %111 = load i32* %110, align 4, !tbaa !2
  %112 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next578
  store i32 %111, i32* %112, align 4, !tbaa !2
  %113 = icmp sgt i64 %indvars.iv577, 1
  br i1 %113, label %.thread56, label %.backedge95

.thread57:                                        ; preds = %._crit_edge353, %.preheader75, %108
  %114 = sitofp i32 %typed_outval6.1.lcssa to double
  %indvars.iv.next580 = add nsw i64 %indvars.iv579, 1
  %115 = getelementptr inbounds double* %outvals, i64 %indvars.iv579
  store double %114, double* %115, align 8, !tbaa !9
  %116 = add nuw nsw i32 %_j2.0363, 1
  %117 = getelementptr inbounds i32* %typed_vdata5.0364, i64 1
  %exitcond581 = icmp eq i32 %_j2.0363, %13
  br i1 %exitcond581, label %..loopexit122_crit_edge, label %.preheader96

; <label>:118                                     ; preds = %17
  br i1 %2, label %.preheader99.lr.ph, label %.loopexit121

.preheader99.lr.ph:                               ; preds = %118
  %119 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv595
  %120 = bitcast i8** %119 to i16**
  %121 = load i16** %120, align 8, !tbaa !6
  %122 = sext i32 %total_outvals.0390 to i64
  br label %.preheader99

.preheader99:                                     ; preds = %.thread59, %.preheader99.lr.ph
  %indvars.iv566 = phi i64 [ %122, %.preheader99.lr.ph ], [ %indvars.iv.next567, %.thread59 ]
  %typed_vdata11.0341 = phi i16* [ %121, %.preheader99.lr.ph ], [ %171, %.thread59 ]
  %_j8.0340 = phi i32 [ 0, %.preheader99.lr.ph ], [ %170, %.thread59 ]
  %123 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge98

.backedge98:                                      ; preds = %148, %.thread58.preheader, %.thread58, %.preheader99
  %typed_outval12.0 = phi i16 [ 0, %.preheader99 ], [ %typed_outval12.1.lcssa, %.thread58 ], [ %typed_outval12.1.lcssa, %.thread58.preheader ], [ %typed_outval12.1.lcssa, %148 ]
  br i1 %8, label %.lr.ph323, label %._crit_edge324

.lr.ph323:                                        ; preds = %.backedge98, %.lr.ph323
  %indvars.iv556 = phi i64 [ %indvars.iv.next557, %.lr.ph323 ], [ 1, %.backedge98 ]
  %_vindex10.1321 = phi i32 [ %129, %.lr.ph323 ], [ 0, %.backedge98 ]
  %124 = getelementptr inbounds i32* %iterator, i64 %indvars.iv556
  %125 = load i32* %124, align 4, !tbaa !2
  %126 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv556
  %127 = load i32* %126, align 4, !tbaa !2
  %128 = mul nsw i32 %127, %125
  %129 = add nsw i32 %128, %_vindex10.1321
  %indvars.iv.next557 = add nuw nsw i64 %indvars.iv556, 1
  %lftr.wideiv558 = trunc i64 %indvars.iv556 to i32
  %exitcond559 = icmp eq i32 %lftr.wideiv558, %12
  br i1 %exitcond559, label %._crit_edge324, label %.lr.ph323

._crit_edge324:                                   ; preds = %.lr.ph323, %.backedge98
  %_vindex10.1.lcssa = phi i32 [ 0, %.backedge98 ], [ %129, %.lr.ph323 ]
  %130 = load i32* %from, align 4, !tbaa !2
  %131 = load i32* %to, align 4, !tbaa !2
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %.lr.ph329, label %._crit_edge330

.lr.ph329:                                        ; preds = %._crit_edge324
  %133 = sext i32 %130 to i64
  %134 = sext i32 %_vindex10.1.lcssa to i64
  %135 = sext i32 %131 to i64
  br label %136

; <label>:136                                     ; preds = %.lr.ph329, %136
  %indvars.iv560 = phi i64 [ %133, %.lr.ph329 ], [ %indvars.iv.next561, %136 ]
  %typed_outval12.1327 = phi i16 [ %typed_outval12.0, %.lr.ph329 ], [ %146, %136 ]
  %137 = sext i16 %typed_outval12.1327 to i32
  %138 = add nsw i64 %indvars.iv560, %134
  %139 = getelementptr inbounds i16* %typed_vdata11.0341, i64 %138
  %140 = load i16* %139, align 2, !tbaa !11
  %141 = sext i16 %140 to i32
  %142 = icmp slt i16 %140, 0
  %143 = sub nsw i32 0, %141
  %144 = select i1 %142, i32 %143, i32 %141
  %145 = icmp slt i32 %137, %144
  %. = select i1 %145, i32 %144, i32 %137
  %146 = trunc i32 %. to i16
  %indvars.iv.next561 = add nsw i64 %indvars.iv560, 1
  %147 = icmp slt i64 %indvars.iv.next561, %135
  br i1 %147, label %136, label %._crit_edge330

._crit_edge330:                                   ; preds = %136, %._crit_edge324
  %typed_outval12.1.lcssa = phi i16 [ %typed_outval12.0, %._crit_edge324 ], [ %146, %136 ]
  br i1 %8, label %148, label %.thread59

; <label>:148                                     ; preds = %._crit_edge330
  %149 = load i32* %9, align 4, !tbaa !2
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4, !tbaa !2
  %151 = load i32* %10, align 4, !tbaa !2
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %.backedge98, label %.preheader77

.preheader77:                                     ; preds = %148
  br i1 %11, label %.lr.ph333, label %.thread59

.lr.ph333:                                        ; preds = %.preheader77, %162
  %indvars.iv562 = phi i64 [ %indvars.iv.next563, %162 ], [ 2, %.preheader77 ]
  %153 = getelementptr inbounds i32* %iterator, i64 %indvars.iv562
  %154 = load i32* %153, align 4, !tbaa !2
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4, !tbaa !2
  %156 = getelementptr inbounds i32* %to, i64 %indvars.iv562
  %157 = load i32* %156, align 4, !tbaa !2
  %158 = icmp slt i32 %155, %157
  br i1 %158, label %.thread58.preheader, label %162

.thread58.preheader:                              ; preds = %.lr.ph333
  %159 = trunc i64 %indvars.iv562 to i32
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %.lr.ph338, label %.backedge98

.lr.ph338:                                        ; preds = %.thread58.preheader
  %sext603 = shl i64 %indvars.iv562, 32
  %161 = ashr exact i64 %sext603, 32
  br label %.thread58

; <label>:162                                     ; preds = %.lr.ph333
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1
  %163 = icmp slt i64 %indvars.iv.next563, %5
  br i1 %163, label %.lr.ph333, label %.thread59

.thread58:                                        ; preds = %.lr.ph338, %.thread58
  %indvars.iv564 = phi i64 [ %161, %.lr.ph338 ], [ %indvars.iv.next565, %.thread58 ]
  %indvars.iv.next565 = add nsw i64 %indvars.iv564, -1
  %164 = getelementptr inbounds i32* %from, i64 %indvars.iv.next565
  %165 = load i32* %164, align 4, !tbaa !2
  %166 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next565
  store i32 %165, i32* %166, align 4, !tbaa !2
  %167 = icmp sgt i64 %indvars.iv564, 1
  br i1 %167, label %.thread58, label %.backedge98

.thread59:                                        ; preds = %._crit_edge330, %.preheader77, %162
  %168 = sitofp i16 %typed_outval12.1.lcssa to double
  %indvars.iv.next567 = add nsw i64 %indvars.iv566, 1
  %169 = getelementptr inbounds double* %outvals, i64 %indvars.iv566
  store double %168, double* %169, align 8, !tbaa !9
  %170 = add nuw nsw i32 %_j8.0340, 1
  %171 = getelementptr inbounds i16* %typed_vdata11.0341, i64 1
  %exitcond568 = icmp eq i32 %_j8.0340, %13
  br i1 %exitcond568, label %..loopexit123_crit_edge, label %.preheader99

; <label>:172                                     ; preds = %17
  br i1 %2, label %.preheader102.lr.ph, label %.loopexit121

.preheader102.lr.ph:                              ; preds = %172
  %173 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv595
  %174 = bitcast i8** %173 to i32**
  %175 = load i32** %174, align 8, !tbaa !6
  %176 = sext i32 %total_outvals.0390 to i64
  br label %.preheader102

.preheader102:                                    ; preds = %.thread61, %.preheader102.lr.ph
  %indvars.iv553 = phi i64 [ %176, %.preheader102.lr.ph ], [ %indvars.iv.next554, %.thread61 ]
  %typed_vdata17.0318 = phi i32* [ %175, %.preheader102.lr.ph ], [ %222, %.thread61 ]
  %_j14.0317 = phi i32 [ 0, %.preheader102.lr.ph ], [ %221, %.thread61 ]
  %177 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge101

.backedge101:                                     ; preds = %199, %.thread60.preheader, %.thread60, %.preheader102
  %typed_outval18.0 = phi i32 [ 0, %.preheader102 ], [ %typed_outval18.1.lcssa, %.thread60 ], [ %typed_outval18.1.lcssa, %.thread60.preheader ], [ %typed_outval18.1.lcssa, %199 ]
  br i1 %8, label %.lr.ph300, label %._crit_edge301

.lr.ph300:                                        ; preds = %.backedge101, %.lr.ph300
  %indvars.iv543 = phi i64 [ %indvars.iv.next544, %.lr.ph300 ], [ 1, %.backedge101 ]
  %_vindex16.1298 = phi i32 [ %183, %.lr.ph300 ], [ 0, %.backedge101 ]
  %178 = getelementptr inbounds i32* %iterator, i64 %indvars.iv543
  %179 = load i32* %178, align 4, !tbaa !2
  %180 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv543
  %181 = load i32* %180, align 4, !tbaa !2
  %182 = mul nsw i32 %181, %179
  %183 = add nsw i32 %182, %_vindex16.1298
  %indvars.iv.next544 = add nuw nsw i64 %indvars.iv543, 1
  %lftr.wideiv545 = trunc i64 %indvars.iv543 to i32
  %exitcond546 = icmp eq i32 %lftr.wideiv545, %12
  br i1 %exitcond546, label %._crit_edge301, label %.lr.ph300

._crit_edge301:                                   ; preds = %.lr.ph300, %.backedge101
  %_vindex16.1.lcssa = phi i32 [ 0, %.backedge101 ], [ %183, %.lr.ph300 ]
  %184 = load i32* %from, align 4, !tbaa !2
  %185 = load i32* %to, align 4, !tbaa !2
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %.lr.ph306, label %._crit_edge307

.lr.ph306:                                        ; preds = %._crit_edge301
  %187 = sext i32 %184 to i64
  %188 = sext i32 %_vindex16.1.lcssa to i64
  %189 = sext i32 %185 to i64
  br label %190

; <label>:190                                     ; preds = %.lr.ph306, %190
  %indvars.iv547 = phi i64 [ %187, %.lr.ph306 ], [ %indvars.iv.next548, %190 ]
  %typed_outval18.1304 = phi i32 [ %typed_outval18.0, %.lr.ph306 ], [ %.typed_outval18.1, %190 ]
  %191 = add nsw i64 %indvars.iv547, %188
  %192 = getelementptr inbounds i32* %typed_vdata17.0318, i64 %191
  %193 = load i32* %192, align 4, !tbaa !2
  %194 = icmp slt i32 %193, 0
  %195 = sub nsw i32 0, %193
  %196 = select i1 %194, i32 %195, i32 %193
  %197 = icmp slt i32 %typed_outval18.1304, %196
  %.typed_outval18.1 = select i1 %197, i32 %196, i32 %typed_outval18.1304
  %indvars.iv.next548 = add nsw i64 %indvars.iv547, 1
  %198 = icmp slt i64 %indvars.iv.next548, %189
  br i1 %198, label %190, label %._crit_edge307

._crit_edge307:                                   ; preds = %190, %._crit_edge301
  %typed_outval18.1.lcssa = phi i32 [ %typed_outval18.0, %._crit_edge301 ], [ %.typed_outval18.1, %190 ]
  br i1 %8, label %199, label %.thread61

; <label>:199                                     ; preds = %._crit_edge307
  %200 = load i32* %9, align 4, !tbaa !2
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %9, align 4, !tbaa !2
  %202 = load i32* %10, align 4, !tbaa !2
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %.backedge101, label %.preheader79

.preheader79:                                     ; preds = %199
  br i1 %11, label %.lr.ph310, label %.thread61

.lr.ph310:                                        ; preds = %.preheader79, %213
  %indvars.iv549 = phi i64 [ %indvars.iv.next550, %213 ], [ 2, %.preheader79 ]
  %204 = getelementptr inbounds i32* %iterator, i64 %indvars.iv549
  %205 = load i32* %204, align 4, !tbaa !2
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4, !tbaa !2
  %207 = getelementptr inbounds i32* %to, i64 %indvars.iv549
  %208 = load i32* %207, align 4, !tbaa !2
  %209 = icmp slt i32 %206, %208
  br i1 %209, label %.thread60.preheader, label %213

.thread60.preheader:                              ; preds = %.lr.ph310
  %210 = trunc i64 %indvars.iv549 to i32
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %.lr.ph315, label %.backedge101

.lr.ph315:                                        ; preds = %.thread60.preheader
  %sext602 = shl i64 %indvars.iv549, 32
  %212 = ashr exact i64 %sext602, 32
  br label %.thread60

; <label>:213                                     ; preds = %.lr.ph310
  %indvars.iv.next550 = add nuw nsw i64 %indvars.iv549, 1
  %214 = icmp slt i64 %indvars.iv.next550, %5
  br i1 %214, label %.lr.ph310, label %.thread61

.thread60:                                        ; preds = %.lr.ph315, %.thread60
  %indvars.iv551 = phi i64 [ %212, %.lr.ph315 ], [ %indvars.iv.next552, %.thread60 ]
  %indvars.iv.next552 = add nsw i64 %indvars.iv551, -1
  %215 = getelementptr inbounds i32* %from, i64 %indvars.iv.next552
  %216 = load i32* %215, align 4, !tbaa !2
  %217 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next552
  store i32 %216, i32* %217, align 4, !tbaa !2
  %218 = icmp sgt i64 %indvars.iv551, 1
  br i1 %218, label %.thread60, label %.backedge101

.thread61:                                        ; preds = %._crit_edge307, %.preheader79, %213
  %219 = sitofp i32 %typed_outval18.1.lcssa to double
  %indvars.iv.next554 = add nsw i64 %indvars.iv553, 1
  %220 = getelementptr inbounds double* %outvals, i64 %indvars.iv553
  store double %219, double* %220, align 8, !tbaa !9
  %221 = add nuw nsw i32 %_j14.0317, 1
  %222 = getelementptr inbounds i32* %typed_vdata17.0318, i64 1
  %exitcond555 = icmp eq i32 %_j14.0317, %13
  br i1 %exitcond555, label %..loopexit124_crit_edge, label %.preheader102

; <label>:223                                     ; preds = %17
  br i1 %2, label %.preheader105.lr.ph, label %.loopexit121

.preheader105.lr.ph:                              ; preds = %223
  %224 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv595
  %225 = bitcast i8** %224 to i64**
  %226 = load i64** %225, align 8, !tbaa !6
  %227 = sext i32 %total_outvals.0390 to i64
  br label %.preheader105

.preheader105:                                    ; preds = %.thread63, %.preheader105.lr.ph
  %indvars.iv540 = phi i64 [ %227, %.preheader105.lr.ph ], [ %indvars.iv.next541, %.thread63 ]
  %typed_vdata23.0295 = phi i64* [ %226, %.preheader105.lr.ph ], [ %273, %.thread63 ]
  %_j20.0294 = phi i32 [ 0, %.preheader105.lr.ph ], [ %272, %.thread63 ]
  %228 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge104

.backedge104:                                     ; preds = %250, %.thread62.preheader, %.thread62, %.preheader105
  %typed_outval24.0 = phi i64 [ 0, %.preheader105 ], [ %typed_outval24.1.lcssa, %.thread62 ], [ %typed_outval24.1.lcssa, %.thread62.preheader ], [ %typed_outval24.1.lcssa, %250 ]
  br i1 %8, label %.lr.ph277, label %._crit_edge278

.lr.ph277:                                        ; preds = %.backedge104, %.lr.ph277
  %indvars.iv530 = phi i64 [ %indvars.iv.next531, %.lr.ph277 ], [ 1, %.backedge104 ]
  %_vindex22.1275 = phi i32 [ %234, %.lr.ph277 ], [ 0, %.backedge104 ]
  %229 = getelementptr inbounds i32* %iterator, i64 %indvars.iv530
  %230 = load i32* %229, align 4, !tbaa !2
  %231 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv530
  %232 = load i32* %231, align 4, !tbaa !2
  %233 = mul nsw i32 %232, %230
  %234 = add nsw i32 %233, %_vindex22.1275
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1
  %lftr.wideiv532 = trunc i64 %indvars.iv530 to i32
  %exitcond533 = icmp eq i32 %lftr.wideiv532, %12
  br i1 %exitcond533, label %._crit_edge278, label %.lr.ph277

._crit_edge278:                                   ; preds = %.lr.ph277, %.backedge104
  %_vindex22.1.lcssa = phi i32 [ 0, %.backedge104 ], [ %234, %.lr.ph277 ]
  %235 = load i32* %from, align 4, !tbaa !2
  %236 = load i32* %to, align 4, !tbaa !2
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %.lr.ph283, label %._crit_edge284

.lr.ph283:                                        ; preds = %._crit_edge278
  %238 = sext i32 %235 to i64
  %239 = sext i32 %_vindex22.1.lcssa to i64
  %240 = sext i32 %236 to i64
  br label %241

; <label>:241                                     ; preds = %.lr.ph283, %241
  %indvars.iv534 = phi i64 [ %238, %.lr.ph283 ], [ %indvars.iv.next535, %241 ]
  %typed_outval24.1281 = phi i64 [ %typed_outval24.0, %.lr.ph283 ], [ %.typed_outval24.1, %241 ]
  %242 = add nsw i64 %indvars.iv534, %239
  %243 = getelementptr inbounds i64* %typed_vdata23.0295, i64 %242
  %244 = load i64* %243, align 8, !tbaa !13
  %245 = icmp slt i64 %244, 0
  %246 = sub nsw i64 0, %244
  %247 = select i1 %245, i64 %246, i64 %244
  %248 = icmp slt i64 %typed_outval24.1281, %247
  %.typed_outval24.1 = select i1 %248, i64 %247, i64 %typed_outval24.1281
  %indvars.iv.next535 = add nsw i64 %indvars.iv534, 1
  %249 = icmp slt i64 %indvars.iv.next535, %240
  br i1 %249, label %241, label %._crit_edge284

._crit_edge284:                                   ; preds = %241, %._crit_edge278
  %typed_outval24.1.lcssa = phi i64 [ %typed_outval24.0, %._crit_edge278 ], [ %.typed_outval24.1, %241 ]
  br i1 %8, label %250, label %.thread63

; <label>:250                                     ; preds = %._crit_edge284
  %251 = load i32* %9, align 4, !tbaa !2
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %9, align 4, !tbaa !2
  %253 = load i32* %10, align 4, !tbaa !2
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %.backedge104, label %.preheader81

.preheader81:                                     ; preds = %250
  br i1 %11, label %.lr.ph287, label %.thread63

.lr.ph287:                                        ; preds = %.preheader81, %264
  %indvars.iv536 = phi i64 [ %indvars.iv.next537, %264 ], [ 2, %.preheader81 ]
  %255 = getelementptr inbounds i32* %iterator, i64 %indvars.iv536
  %256 = load i32* %255, align 4, !tbaa !2
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 4, !tbaa !2
  %258 = getelementptr inbounds i32* %to, i64 %indvars.iv536
  %259 = load i32* %258, align 4, !tbaa !2
  %260 = icmp slt i32 %257, %259
  br i1 %260, label %.thread62.preheader, label %264

.thread62.preheader:                              ; preds = %.lr.ph287
  %261 = trunc i64 %indvars.iv536 to i32
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %.lr.ph292, label %.backedge104

.lr.ph292:                                        ; preds = %.thread62.preheader
  %sext601 = shl i64 %indvars.iv536, 32
  %263 = ashr exact i64 %sext601, 32
  br label %.thread62

; <label>:264                                     ; preds = %.lr.ph287
  %indvars.iv.next537 = add nuw nsw i64 %indvars.iv536, 1
  %265 = icmp slt i64 %indvars.iv.next537, %5
  br i1 %265, label %.lr.ph287, label %.thread63

.thread62:                                        ; preds = %.lr.ph292, %.thread62
  %indvars.iv538 = phi i64 [ %263, %.lr.ph292 ], [ %indvars.iv.next539, %.thread62 ]
  %indvars.iv.next539 = add nsw i64 %indvars.iv538, -1
  %266 = getelementptr inbounds i32* %from, i64 %indvars.iv.next539
  %267 = load i32* %266, align 4, !tbaa !2
  %268 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next539
  store i32 %267, i32* %268, align 4, !tbaa !2
  %269 = icmp sgt i64 %indvars.iv538, 1
  br i1 %269, label %.thread62, label %.backedge104

.thread63:                                        ; preds = %._crit_edge284, %.preheader81, %264
  %270 = sitofp i64 %typed_outval24.1.lcssa to double
  %indvars.iv.next541 = add nsw i64 %indvars.iv540, 1
  %271 = getelementptr inbounds double* %outvals, i64 %indvars.iv540
  store double %270, double* %271, align 8, !tbaa !9
  %272 = add nuw nsw i32 %_j20.0294, 1
  %273 = getelementptr inbounds i64* %typed_vdata23.0295, i64 1
  %exitcond542 = icmp eq i32 %_j20.0294, %13
  br i1 %exitcond542, label %..loopexit125_crit_edge, label %.preheader105

; <label>:274                                     ; preds = %17
  br i1 %2, label %.preheader108.lr.ph, label %.loopexit121

.preheader108.lr.ph:                              ; preds = %274
  %275 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv595
  %276 = bitcast i8** %275 to double**
  %277 = load double** %276, align 8, !tbaa !6
  %278 = sext i32 %total_outvals.0390 to i64
  br label %.preheader108

.preheader108:                                    ; preds = %.thread65, %.preheader108.lr.ph
  %indvars.iv527 = phi i64 [ %278, %.preheader108.lr.ph ], [ %indvars.iv.next528, %.thread65 ]
  %typed_vdata29.0272 = phi double* [ %277, %.preheader108.lr.ph ], [ %328, %.thread65 ]
  %_j26.0271 = phi i32 [ 0, %.preheader108.lr.ph ], [ %327, %.thread65 ]
  %279 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge107

.backedge107:                                     ; preds = %306, %.thread64.preheader, %.thread64, %.preheader108
  %typed_outval30.0 = phi double [ 0.000000e+00, %.preheader108 ], [ %typed_outval30.1.lcssa, %.thread64 ], [ %typed_outval30.1.lcssa, %.thread64.preheader ], [ %typed_outval30.1.lcssa, %306 ]
  br i1 %8, label %.lr.ph254, label %._crit_edge255

.lr.ph254:                                        ; preds = %.backedge107, %.lr.ph254
  %indvars.iv517 = phi i64 [ %indvars.iv.next518, %.lr.ph254 ], [ 1, %.backedge107 ]
  %_vindex28.1252 = phi i32 [ %285, %.lr.ph254 ], [ 0, %.backedge107 ]
  %280 = getelementptr inbounds i32* %iterator, i64 %indvars.iv517
  %281 = load i32* %280, align 4, !tbaa !2
  %282 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv517
  %283 = load i32* %282, align 4, !tbaa !2
  %284 = mul nsw i32 %283, %281
  %285 = add nsw i32 %284, %_vindex28.1252
  %indvars.iv.next518 = add nuw nsw i64 %indvars.iv517, 1
  %lftr.wideiv519 = trunc i64 %indvars.iv517 to i32
  %exitcond520 = icmp eq i32 %lftr.wideiv519, %12
  br i1 %exitcond520, label %._crit_edge255, label %.lr.ph254

._crit_edge255:                                   ; preds = %.lr.ph254, %.backedge107
  %_vindex28.1.lcssa = phi i32 [ 0, %.backedge107 ], [ %285, %.lr.ph254 ]
  %286 = load i32* %from, align 4, !tbaa !2
  %287 = load i32* %to, align 4, !tbaa !2
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %.lr.ph260, label %._crit_edge261

.lr.ph260:                                        ; preds = %._crit_edge255
  %289 = sext i32 %286 to i64
  %290 = sext i32 %_vindex28.1.lcssa to i64
  %291 = sext i32 %287 to i64
  br label %292

; <label>:292                                     ; preds = %.lr.ph260, %303
  %indvars.iv521 = phi i64 [ %289, %.lr.ph260 ], [ %indvars.iv.next522, %303 ]
  %typed_outval30.1258 = phi double [ %typed_outval30.0, %.lr.ph260 ], [ %304, %303 ]
  %293 = add nsw i64 %indvars.iv521, %290
  %294 = getelementptr inbounds double* %typed_vdata29.0272, i64 %293
  %295 = load double* %294, align 8, !tbaa !9
  %296 = fcmp olt double %295, 0.000000e+00
  br i1 %296, label %297, label %299

; <label>:297                                     ; preds = %292
  %298 = fsub double -0.000000e+00, %295
  br label %299

; <label>:299                                     ; preds = %292, %297
  %300 = phi double [ %298, %297 ], [ %295, %292 ]
  %.not = fcmp oge double %typed_outval30.1258, %300
  %.not606 = xor i1 %296, true
  %brmerge = or i1 %.not, %.not606
  %typed_outval30.1258.mux = select i1 %.not, double %typed_outval30.1258, double %295
  br i1 %brmerge, label %303, label %301

; <label>:301                                     ; preds = %299
  %302 = fsub double -0.000000e+00, %295
  br label %303

; <label>:303                                     ; preds = %299, %301
  %304 = phi double [ %302, %301 ], [ %typed_outval30.1258.mux, %299 ]
  %indvars.iv.next522 = add nsw i64 %indvars.iv521, 1
  %305 = icmp slt i64 %indvars.iv.next522, %291
  br i1 %305, label %292, label %._crit_edge261

._crit_edge261:                                   ; preds = %303, %._crit_edge255
  %typed_outval30.1.lcssa = phi double [ %typed_outval30.0, %._crit_edge255 ], [ %304, %303 ]
  br i1 %8, label %306, label %.thread65

; <label>:306                                     ; preds = %._crit_edge261
  %307 = load i32* %9, align 4, !tbaa !2
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %9, align 4, !tbaa !2
  %309 = load i32* %10, align 4, !tbaa !2
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %.backedge107, label %.preheader83

.preheader83:                                     ; preds = %306
  br i1 %11, label %.lr.ph264, label %.thread65

.lr.ph264:                                        ; preds = %.preheader83, %320
  %indvars.iv523 = phi i64 [ %indvars.iv.next524, %320 ], [ 2, %.preheader83 ]
  %311 = getelementptr inbounds i32* %iterator, i64 %indvars.iv523
  %312 = load i32* %311, align 4, !tbaa !2
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %311, align 4, !tbaa !2
  %314 = getelementptr inbounds i32* %to, i64 %indvars.iv523
  %315 = load i32* %314, align 4, !tbaa !2
  %316 = icmp slt i32 %313, %315
  br i1 %316, label %.thread64.preheader, label %320

.thread64.preheader:                              ; preds = %.lr.ph264
  %317 = trunc i64 %indvars.iv523 to i32
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %.lr.ph269, label %.backedge107

.lr.ph269:                                        ; preds = %.thread64.preheader
  %sext600 = shl i64 %indvars.iv523, 32
  %319 = ashr exact i64 %sext600, 32
  br label %.thread64

; <label>:320                                     ; preds = %.lr.ph264
  %indvars.iv.next524 = add nuw nsw i64 %indvars.iv523, 1
  %321 = icmp slt i64 %indvars.iv.next524, %5
  br i1 %321, label %.lr.ph264, label %.thread65

.thread64:                                        ; preds = %.lr.ph269, %.thread64
  %indvars.iv525 = phi i64 [ %319, %.lr.ph269 ], [ %indvars.iv.next526, %.thread64 ]
  %indvars.iv.next526 = add nsw i64 %indvars.iv525, -1
  %322 = getelementptr inbounds i32* %from, i64 %indvars.iv.next526
  %323 = load i32* %322, align 4, !tbaa !2
  %324 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next526
  store i32 %323, i32* %324, align 4, !tbaa !2
  %325 = icmp sgt i64 %indvars.iv525, 1
  br i1 %325, label %.thread64, label %.backedge107

.thread65:                                        ; preds = %._crit_edge261, %.preheader83, %320
  %indvars.iv.next528 = add nsw i64 %indvars.iv527, 1
  %326 = getelementptr inbounds double* %outvals, i64 %indvars.iv527
  store double %typed_outval30.1.lcssa, double* %326, align 8, !tbaa !9
  %327 = add nuw nsw i32 %_j26.0271, 1
  %328 = getelementptr inbounds double* %typed_vdata29.0272, i64 1
  %exitcond529 = icmp eq i32 %_j26.0271, %13
  br i1 %exitcond529, label %..loopexit126_crit_edge, label %.preheader108

; <label>:329                                     ; preds = %17
  br i1 %2, label %.preheader111.lr.ph, label %.loopexit121

.preheader111.lr.ph:                              ; preds = %329
  %330 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv595
  %331 = bitcast i8** %330 to float**
  %332 = load float** %331, align 8, !tbaa !6
  %333 = sext i32 %total_outvals.0390 to i64
  br label %.preheader111

.preheader111:                                    ; preds = %.thread67, %.preheader111.lr.ph
  %indvars.iv514 = phi i64 [ %333, %.preheader111.lr.ph ], [ %indvars.iv.next515, %.thread67 ]
  %typed_vdata35.0249 = phi float* [ %332, %.preheader111.lr.ph ], [ %384, %.thread67 ]
  %_j32.0248 = phi i32 [ 0, %.preheader111.lr.ph ], [ %383, %.thread67 ]
  %334 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge110

.backedge110:                                     ; preds = %361, %.thread66.preheader, %.thread66, %.preheader111
  %typed_outval36.0 = phi float [ 0.000000e+00, %.preheader111 ], [ %typed_outval36.1.lcssa, %.thread66 ], [ %typed_outval36.1.lcssa, %.thread66.preheader ], [ %typed_outval36.1.lcssa, %361 ]
  br i1 %8, label %.lr.ph231, label %._crit_edge232

.lr.ph231:                                        ; preds = %.backedge110, %.lr.ph231
  %indvars.iv504 = phi i64 [ %indvars.iv.next505, %.lr.ph231 ], [ 1, %.backedge110 ]
  %_vindex34.1229 = phi i32 [ %340, %.lr.ph231 ], [ 0, %.backedge110 ]
  %335 = getelementptr inbounds i32* %iterator, i64 %indvars.iv504
  %336 = load i32* %335, align 4, !tbaa !2
  %337 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv504
  %338 = load i32* %337, align 4, !tbaa !2
  %339 = mul nsw i32 %338, %336
  %340 = add nsw i32 %339, %_vindex34.1229
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1
  %lftr.wideiv506 = trunc i64 %indvars.iv504 to i32
  %exitcond507 = icmp eq i32 %lftr.wideiv506, %12
  br i1 %exitcond507, label %._crit_edge232, label %.lr.ph231

._crit_edge232:                                   ; preds = %.lr.ph231, %.backedge110
  %_vindex34.1.lcssa = phi i32 [ 0, %.backedge110 ], [ %340, %.lr.ph231 ]
  %341 = load i32* %from, align 4, !tbaa !2
  %342 = load i32* %to, align 4, !tbaa !2
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %.lr.ph237, label %._crit_edge238

.lr.ph237:                                        ; preds = %._crit_edge232
  %344 = sext i32 %341 to i64
  %345 = sext i32 %_vindex34.1.lcssa to i64
  %346 = sext i32 %342 to i64
  br label %347

; <label>:347                                     ; preds = %.lr.ph237, %358
  %indvars.iv508 = phi i64 [ %344, %.lr.ph237 ], [ %indvars.iv.next509, %358 ]
  %typed_outval36.1235 = phi float [ %typed_outval36.0, %.lr.ph237 ], [ %359, %358 ]
  %348 = add nsw i64 %indvars.iv508, %345
  %349 = getelementptr inbounds float* %typed_vdata35.0249, i64 %348
  %350 = load float* %349, align 4, !tbaa !15
  %351 = fcmp olt float %350, 0.000000e+00
  br i1 %351, label %352, label %354

; <label>:352                                     ; preds = %347
  %353 = fsub float -0.000000e+00, %350
  br label %354

; <label>:354                                     ; preds = %347, %352
  %355 = phi float [ %353, %352 ], [ %350, %347 ]
  %.not607 = fcmp oge float %typed_outval36.1235, %355
  %.not608 = xor i1 %351, true
  %brmerge609 = or i1 %.not607, %.not608
  %typed_outval36.1235.mux = select i1 %.not607, float %typed_outval36.1235, float %350
  br i1 %brmerge609, label %358, label %356

; <label>:356                                     ; preds = %354
  %357 = fsub float -0.000000e+00, %350
  br label %358

; <label>:358                                     ; preds = %354, %356
  %359 = phi float [ %357, %356 ], [ %typed_outval36.1235.mux, %354 ]
  %indvars.iv.next509 = add nsw i64 %indvars.iv508, 1
  %360 = icmp slt i64 %indvars.iv.next509, %346
  br i1 %360, label %347, label %._crit_edge238

._crit_edge238:                                   ; preds = %358, %._crit_edge232
  %typed_outval36.1.lcssa = phi float [ %typed_outval36.0, %._crit_edge232 ], [ %359, %358 ]
  br i1 %8, label %361, label %.thread67

; <label>:361                                     ; preds = %._crit_edge238
  %362 = load i32* %9, align 4, !tbaa !2
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %9, align 4, !tbaa !2
  %364 = load i32* %10, align 4, !tbaa !2
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %.backedge110, label %.preheader85

.preheader85:                                     ; preds = %361
  br i1 %11, label %.lr.ph241, label %.thread67

.lr.ph241:                                        ; preds = %.preheader85, %375
  %indvars.iv510 = phi i64 [ %indvars.iv.next511, %375 ], [ 2, %.preheader85 ]
  %366 = getelementptr inbounds i32* %iterator, i64 %indvars.iv510
  %367 = load i32* %366, align 4, !tbaa !2
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %366, align 4, !tbaa !2
  %369 = getelementptr inbounds i32* %to, i64 %indvars.iv510
  %370 = load i32* %369, align 4, !tbaa !2
  %371 = icmp slt i32 %368, %370
  br i1 %371, label %.thread66.preheader, label %375

.thread66.preheader:                              ; preds = %.lr.ph241
  %372 = trunc i64 %indvars.iv510 to i32
  %373 = icmp sgt i32 %372, 0
  br i1 %373, label %.lr.ph246, label %.backedge110

.lr.ph246:                                        ; preds = %.thread66.preheader
  %sext599 = shl i64 %indvars.iv510, 32
  %374 = ashr exact i64 %sext599, 32
  br label %.thread66

; <label>:375                                     ; preds = %.lr.ph241
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1
  %376 = icmp slt i64 %indvars.iv.next511, %5
  br i1 %376, label %.lr.ph241, label %.thread67

.thread66:                                        ; preds = %.lr.ph246, %.thread66
  %indvars.iv512 = phi i64 [ %374, %.lr.ph246 ], [ %indvars.iv.next513, %.thread66 ]
  %indvars.iv.next513 = add nsw i64 %indvars.iv512, -1
  %377 = getelementptr inbounds i32* %from, i64 %indvars.iv.next513
  %378 = load i32* %377, align 4, !tbaa !2
  %379 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next513
  store i32 %378, i32* %379, align 4, !tbaa !2
  %380 = icmp sgt i64 %indvars.iv512, 1
  br i1 %380, label %.thread66, label %.backedge110

.thread67:                                        ; preds = %._crit_edge238, %.preheader85, %375
  %381 = fpext float %typed_outval36.1.lcssa to double
  %indvars.iv.next515 = add nsw i64 %indvars.iv514, 1
  %382 = getelementptr inbounds double* %outvals, i64 %indvars.iv514
  store double %381, double* %382, align 8, !tbaa !9
  %383 = add nuw nsw i32 %_j32.0248, 1
  %384 = getelementptr inbounds float* %typed_vdata35.0249, i64 1
  %exitcond516 = icmp eq i32 %_j32.0248, %13
  br i1 %exitcond516, label %..loopexit127_crit_edge, label %.preheader111

; <label>:385                                     ; preds = %17
  br i1 %2, label %.preheader114.lr.ph, label %.loopexit121

.preheader114.lr.ph:                              ; preds = %385
  %386 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv595
  %387 = bitcast i8** %386 to double**
  %388 = load double** %387, align 8, !tbaa !6
  %389 = sext i32 %total_outvals.0390 to i64
  br label %.preheader114

.preheader114:                                    ; preds = %.thread69, %.preheader114.lr.ph
  %indvars.iv501 = phi i64 [ %389, %.preheader114.lr.ph ], [ %indvars.iv.next502, %.thread69 ]
  %typed_vdata41.0226 = phi double* [ %388, %.preheader114.lr.ph ], [ %439, %.thread69 ]
  %_j38.0225 = phi i32 [ 0, %.preheader114.lr.ph ], [ %438, %.thread69 ]
  %390 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge113

.backedge113:                                     ; preds = %417, %.thread68.preheader, %.thread68, %.preheader114
  %typed_outval42.0 = phi double [ 0.000000e+00, %.preheader114 ], [ %typed_outval42.1.lcssa, %.thread68 ], [ %typed_outval42.1.lcssa, %.thread68.preheader ], [ %typed_outval42.1.lcssa, %417 ]
  br i1 %8, label %.lr.ph208, label %._crit_edge209

.lr.ph208:                                        ; preds = %.backedge113, %.lr.ph208
  %indvars.iv491 = phi i64 [ %indvars.iv.next492, %.lr.ph208 ], [ 1, %.backedge113 ]
  %_vindex40.1206 = phi i32 [ %396, %.lr.ph208 ], [ 0, %.backedge113 ]
  %391 = getelementptr inbounds i32* %iterator, i64 %indvars.iv491
  %392 = load i32* %391, align 4, !tbaa !2
  %393 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv491
  %394 = load i32* %393, align 4, !tbaa !2
  %395 = mul nsw i32 %394, %392
  %396 = add nsw i32 %395, %_vindex40.1206
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1
  %lftr.wideiv493 = trunc i64 %indvars.iv491 to i32
  %exitcond494 = icmp eq i32 %lftr.wideiv493, %12
  br i1 %exitcond494, label %._crit_edge209, label %.lr.ph208

._crit_edge209:                                   ; preds = %.lr.ph208, %.backedge113
  %_vindex40.1.lcssa = phi i32 [ 0, %.backedge113 ], [ %396, %.lr.ph208 ]
  %397 = load i32* %from, align 4, !tbaa !2
  %398 = load i32* %to, align 4, !tbaa !2
  %399 = icmp slt i32 %397, %398
  br i1 %399, label %.lr.ph214, label %._crit_edge215

.lr.ph214:                                        ; preds = %._crit_edge209
  %400 = sext i32 %397 to i64
  %401 = sext i32 %_vindex40.1.lcssa to i64
  %402 = sext i32 %398 to i64
  br label %403

; <label>:403                                     ; preds = %.lr.ph214, %414
  %indvars.iv495 = phi i64 [ %400, %.lr.ph214 ], [ %indvars.iv.next496, %414 ]
  %typed_outval42.1212 = phi double [ %typed_outval42.0, %.lr.ph214 ], [ %415, %414 ]
  %404 = add nsw i64 %indvars.iv495, %401
  %405 = getelementptr inbounds double* %typed_vdata41.0226, i64 %404
  %406 = load double* %405, align 8, !tbaa !9
  %407 = fcmp olt double %406, 0.000000e+00
  br i1 %407, label %408, label %410

; <label>:408                                     ; preds = %403
  %409 = fsub double -0.000000e+00, %406
  br label %410

; <label>:410                                     ; preds = %403, %408
  %411 = phi double [ %409, %408 ], [ %406, %403 ]
  %.not610 = fcmp oge double %typed_outval42.1212, %411
  %.not611 = xor i1 %407, true
  %brmerge612 = or i1 %.not610, %.not611
  %typed_outval42.1212.mux = select i1 %.not610, double %typed_outval42.1212, double %406
  br i1 %brmerge612, label %414, label %412

; <label>:412                                     ; preds = %410
  %413 = fsub double -0.000000e+00, %406
  br label %414

; <label>:414                                     ; preds = %410, %412
  %415 = phi double [ %413, %412 ], [ %typed_outval42.1212.mux, %410 ]
  %indvars.iv.next496 = add nsw i64 %indvars.iv495, 1
  %416 = icmp slt i64 %indvars.iv.next496, %402
  br i1 %416, label %403, label %._crit_edge215

._crit_edge215:                                   ; preds = %414, %._crit_edge209
  %typed_outval42.1.lcssa = phi double [ %typed_outval42.0, %._crit_edge209 ], [ %415, %414 ]
  br i1 %8, label %417, label %.thread69

; <label>:417                                     ; preds = %._crit_edge215
  %418 = load i32* %9, align 4, !tbaa !2
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %9, align 4, !tbaa !2
  %420 = load i32* %10, align 4, !tbaa !2
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %.backedge113, label %.preheader87

.preheader87:                                     ; preds = %417
  br i1 %11, label %.lr.ph218, label %.thread69

.lr.ph218:                                        ; preds = %.preheader87, %431
  %indvars.iv497 = phi i64 [ %indvars.iv.next498, %431 ], [ 2, %.preheader87 ]
  %422 = getelementptr inbounds i32* %iterator, i64 %indvars.iv497
  %423 = load i32* %422, align 4, !tbaa !2
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %422, align 4, !tbaa !2
  %425 = getelementptr inbounds i32* %to, i64 %indvars.iv497
  %426 = load i32* %425, align 4, !tbaa !2
  %427 = icmp slt i32 %424, %426
  br i1 %427, label %.thread68.preheader, label %431

.thread68.preheader:                              ; preds = %.lr.ph218
  %428 = trunc i64 %indvars.iv497 to i32
  %429 = icmp sgt i32 %428, 0
  br i1 %429, label %.lr.ph223, label %.backedge113

.lr.ph223:                                        ; preds = %.thread68.preheader
  %sext598 = shl i64 %indvars.iv497, 32
  %430 = ashr exact i64 %sext598, 32
  br label %.thread68

; <label>:431                                     ; preds = %.lr.ph218
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1
  %432 = icmp slt i64 %indvars.iv.next498, %5
  br i1 %432, label %.lr.ph218, label %.thread69

.thread68:                                        ; preds = %.lr.ph223, %.thread68
  %indvars.iv499 = phi i64 [ %430, %.lr.ph223 ], [ %indvars.iv.next500, %.thread68 ]
  %indvars.iv.next500 = add nsw i64 %indvars.iv499, -1
  %433 = getelementptr inbounds i32* %from, i64 %indvars.iv.next500
  %434 = load i32* %433, align 4, !tbaa !2
  %435 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next500
  store i32 %434, i32* %435, align 4, !tbaa !2
  %436 = icmp sgt i64 %indvars.iv499, 1
  br i1 %436, label %.thread68, label %.backedge113

.thread69:                                        ; preds = %._crit_edge215, %.preheader87, %431
  %indvars.iv.next502 = add nsw i64 %indvars.iv501, 1
  %437 = getelementptr inbounds double* %outvals, i64 %indvars.iv501
  store double %typed_outval42.1.lcssa, double* %437, align 8, !tbaa !9
  %438 = add nuw nsw i32 %_j38.0225, 1
  %439 = getelementptr inbounds double* %typed_vdata41.0226, i64 1
  %exitcond503 = icmp eq i32 %_j38.0225, %13
  br i1 %exitcond503, label %..loopexit128_crit_edge, label %.preheader114

; <label>:440                                     ; preds = %17
  br i1 %2, label %.preheader117.lr.ph, label %.loopexit121

.preheader117.lr.ph:                              ; preds = %440
  %441 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv595
  %442 = bitcast i8** %441 to x86_fp80**
  %443 = load x86_fp80** %442, align 8, !tbaa !6
  %444 = sext i32 %total_outvals.0390 to i64
  br label %.preheader117

.preheader117:                                    ; preds = %.thread71, %.preheader117.lr.ph
  %indvars.iv488 = phi i64 [ %444, %.preheader117.lr.ph ], [ %indvars.iv.next489, %.thread71 ]
  %typed_vdata47.0203 = phi x86_fp80* [ %443, %.preheader117.lr.ph ], [ %495, %.thread71 ]
  %_j44.0202 = phi i32 [ 0, %.preheader117.lr.ph ], [ %494, %.thread71 ]
  %445 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge116

.backedge116:                                     ; preds = %472, %.thread70.preheader, %.thread70, %.preheader117
  %typed_outval48.0 = phi x86_fp80 [ 0xK00000000000000000000, %.preheader117 ], [ %typed_outval48.1.lcssa, %.thread70 ], [ %typed_outval48.1.lcssa, %.thread70.preheader ], [ %typed_outval48.1.lcssa, %472 ]
  br i1 %8, label %.lr.ph185, label %._crit_edge186

.lr.ph185:                                        ; preds = %.backedge116, %.lr.ph185
  %indvars.iv478 = phi i64 [ %indvars.iv.next479, %.lr.ph185 ], [ 1, %.backedge116 ]
  %_vindex46.1183 = phi i32 [ %451, %.lr.ph185 ], [ 0, %.backedge116 ]
  %446 = getelementptr inbounds i32* %iterator, i64 %indvars.iv478
  %447 = load i32* %446, align 4, !tbaa !2
  %448 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv478
  %449 = load i32* %448, align 4, !tbaa !2
  %450 = mul nsw i32 %449, %447
  %451 = add nsw i32 %450, %_vindex46.1183
  %indvars.iv.next479 = add nuw nsw i64 %indvars.iv478, 1
  %lftr.wideiv480 = trunc i64 %indvars.iv478 to i32
  %exitcond481 = icmp eq i32 %lftr.wideiv480, %12
  br i1 %exitcond481, label %._crit_edge186, label %.lr.ph185

._crit_edge186:                                   ; preds = %.lr.ph185, %.backedge116
  %_vindex46.1.lcssa = phi i32 [ 0, %.backedge116 ], [ %451, %.lr.ph185 ]
  %452 = load i32* %from, align 4, !tbaa !2
  %453 = load i32* %to, align 4, !tbaa !2
  %454 = icmp slt i32 %452, %453
  br i1 %454, label %.lr.ph191, label %._crit_edge192

.lr.ph191:                                        ; preds = %._crit_edge186
  %455 = sext i32 %452 to i64
  %456 = sext i32 %_vindex46.1.lcssa to i64
  %457 = sext i32 %453 to i64
  br label %458

; <label>:458                                     ; preds = %.lr.ph191, %469
  %indvars.iv482 = phi i64 [ %455, %.lr.ph191 ], [ %indvars.iv.next483, %469 ]
  %typed_outval48.1189 = phi x86_fp80 [ %typed_outval48.0, %.lr.ph191 ], [ %470, %469 ]
  %459 = add nsw i64 %indvars.iv482, %456
  %460 = getelementptr inbounds x86_fp80* %typed_vdata47.0203, i64 %459
  %461 = load x86_fp80* %460, align 16, !tbaa !17
  %462 = fcmp olt x86_fp80 %461, 0xK00000000000000000000
  br i1 %462, label %463, label %465

; <label>:463                                     ; preds = %458
  %464 = fsub x86_fp80 0xK80000000000000000000, %461
  br label %465

; <label>:465                                     ; preds = %458, %463
  %466 = phi x86_fp80 [ %464, %463 ], [ %461, %458 ]
  %.not613 = fcmp oge x86_fp80 %typed_outval48.1189, %466
  %.not614 = xor i1 %462, true
  %brmerge615 = or i1 %.not613, %.not614
  %typed_outval48.1189.mux = select i1 %.not613, x86_fp80 %typed_outval48.1189, x86_fp80 %461
  br i1 %brmerge615, label %469, label %467

; <label>:467                                     ; preds = %465
  %468 = fsub x86_fp80 0xK80000000000000000000, %461
  br label %469

; <label>:469                                     ; preds = %465, %467
  %470 = phi x86_fp80 [ %468, %467 ], [ %typed_outval48.1189.mux, %465 ]
  %indvars.iv.next483 = add nsw i64 %indvars.iv482, 1
  %471 = icmp slt i64 %indvars.iv.next483, %457
  br i1 %471, label %458, label %._crit_edge192

._crit_edge192:                                   ; preds = %469, %._crit_edge186
  %typed_outval48.1.lcssa = phi x86_fp80 [ %typed_outval48.0, %._crit_edge186 ], [ %470, %469 ]
  br i1 %8, label %472, label %.thread71

; <label>:472                                     ; preds = %._crit_edge192
  %473 = load i32* %9, align 4, !tbaa !2
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %9, align 4, !tbaa !2
  %475 = load i32* %10, align 4, !tbaa !2
  %476 = icmp slt i32 %474, %475
  br i1 %476, label %.backedge116, label %.preheader89

.preheader89:                                     ; preds = %472
  br i1 %11, label %.lr.ph195, label %.thread71

.lr.ph195:                                        ; preds = %.preheader89, %486
  %indvars.iv484 = phi i64 [ %indvars.iv.next485, %486 ], [ 2, %.preheader89 ]
  %477 = getelementptr inbounds i32* %iterator, i64 %indvars.iv484
  %478 = load i32* %477, align 4, !tbaa !2
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %477, align 4, !tbaa !2
  %480 = getelementptr inbounds i32* %to, i64 %indvars.iv484
  %481 = load i32* %480, align 4, !tbaa !2
  %482 = icmp slt i32 %479, %481
  br i1 %482, label %.thread70.preheader, label %486

.thread70.preheader:                              ; preds = %.lr.ph195
  %483 = trunc i64 %indvars.iv484 to i32
  %484 = icmp sgt i32 %483, 0
  br i1 %484, label %.lr.ph200, label %.backedge116

.lr.ph200:                                        ; preds = %.thread70.preheader
  %sext597 = shl i64 %indvars.iv484, 32
  %485 = ashr exact i64 %sext597, 32
  br label %.thread70

; <label>:486                                     ; preds = %.lr.ph195
  %indvars.iv.next485 = add nuw nsw i64 %indvars.iv484, 1
  %487 = icmp slt i64 %indvars.iv.next485, %5
  br i1 %487, label %.lr.ph195, label %.thread71

.thread70:                                        ; preds = %.lr.ph200, %.thread70
  %indvars.iv486 = phi i64 [ %485, %.lr.ph200 ], [ %indvars.iv.next487, %.thread70 ]
  %indvars.iv.next487 = add nsw i64 %indvars.iv486, -1
  %488 = getelementptr inbounds i32* %from, i64 %indvars.iv.next487
  %489 = load i32* %488, align 4, !tbaa !2
  %490 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next487
  store i32 %489, i32* %490, align 4, !tbaa !2
  %491 = icmp sgt i64 %indvars.iv486, 1
  br i1 %491, label %.thread70, label %.backedge116

.thread71:                                        ; preds = %._crit_edge192, %.preheader89, %486
  %492 = fptrunc x86_fp80 %typed_outval48.1.lcssa to double
  %indvars.iv.next489 = add nsw i64 %indvars.iv488, 1
  %493 = getelementptr inbounds double* %outvals, i64 %indvars.iv488
  store double %492, double* %493, align 8, !tbaa !9
  %494 = add nuw nsw i32 %_j44.0202, 1
  %495 = getelementptr inbounds x86_fp80* %typed_vdata47.0203, i64 1
  %exitcond490 = icmp eq i32 %_j44.0202, %13
  br i1 %exitcond490, label %..loopexit129_crit_edge, label %.preheader117

; <label>:496                                     ; preds = %17
  br i1 %2, label %.preheader120.lr.ph, label %.loopexit121

.preheader120.lr.ph:                              ; preds = %496
  %497 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv595
  %498 = bitcast i8** %497 to %struct.CCTK_COMPLEX16**
  %499 = load %struct.CCTK_COMPLEX16** %498, align 8, !tbaa !6
  %500 = sext i32 %total_outvals.0390 to i64
  br label %.preheader120

.preheader120:                                    ; preds = %.thread73, %.preheader120.lr.ph
  %indvars.iv475 = phi i64 [ %500, %.preheader120.lr.ph ], [ %indvars.iv.next476, %.thread73 ]
  %typed_vdata53.0178 = phi %struct.CCTK_COMPLEX16* [ %499, %.preheader120.lr.ph ], [ %552, %.thread73 ]
  %_j50.0177 = phi i32 [ 0, %.preheader120.lr.ph ], [ %551, %.thread73 ]
  %501 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge119

.backedge119:                                     ; preds = %530, %.thread72.preheader, %.thread72, %.preheader120
  %typed_outval54.0 = phi double [ 0.000000e+00, %.preheader120 ], [ %typed_outval54.1.lcssa, %.thread72 ], [ %typed_outval54.1.lcssa, %.thread72.preheader ], [ %typed_outval54.1.lcssa, %530 ]
  br i1 %8, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.backedge119, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %.backedge119 ]
  %_vindex52.1162 = phi i32 [ %507, %.lr.ph ], [ 0, %.backedge119 ]
  %502 = getelementptr inbounds i32* %iterator, i64 %indvars.iv
  %503 = load i32* %502, align 4, !tbaa !2
  %504 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv
  %505 = load i32* %504, align 4, !tbaa !2
  %506 = mul nsw i32 %505, %503
  %507 = add nsw i32 %506, %_vindex52.1162
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %12
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.backedge119
  %_vindex52.1.lcssa = phi i32 [ 0, %.backedge119 ], [ %507, %.lr.ph ]
  %508 = load i32* %from, align 4, !tbaa !2
  %509 = load i32* %to, align 4, !tbaa !2
  %510 = icmp slt i32 %508, %509
  br i1 %510, label %.lr.ph166, label %._crit_edge167

.lr.ph166:                                        ; preds = %._crit_edge
  %511 = sext i32 %508 to i64
  %512 = sext i32 %_vindex52.1.lcssa to i64
  br label %513

; <label>:513                                     ; preds = %.lr.ph166, %525
  %indvars.iv469 = phi i64 [ %511, %.lr.ph166 ], [ %indvars.iv.next470, %525 ]
  %typed_outval54.1164 = phi double [ %typed_outval54.0, %.lr.ph166 ], [ %526, %525 ]
  %514 = add nsw i64 %indvars.iv469, %512
  %515 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_vdata53.0178, i64 %514, i32 0
  %516 = load double* %515, align 1
  %517 = getelementptr %struct.CCTK_COMPLEX16* %typed_vdata53.0178, i64 %514, i32 1
  %518 = load double* %517, align 1
  %519 = tail call double @CCTK_Cmplx16Abs(double %516, double %518) #5
  %520 = fcmp ult double %typed_outval54.1164, %519
  br i1 %520, label %521, label %525

; <label>:521                                     ; preds = %513
  %522 = load double* %515, align 1
  %523 = load double* %517, align 1
  %524 = tail call double @CCTK_Cmplx16Abs(double %522, double %523) #5
  br label %525

; <label>:525                                     ; preds = %513, %521
  %526 = phi double [ %524, %521 ], [ %typed_outval54.1164, %513 ]
  %indvars.iv.next470 = add nsw i64 %indvars.iv469, 1
  %527 = load i32* %to, align 4, !tbaa !2
  %528 = sext i32 %527 to i64
  %529 = icmp slt i64 %indvars.iv.next470, %528
  br i1 %529, label %513, label %._crit_edge167

._crit_edge167:                                   ; preds = %525, %._crit_edge
  %typed_outval54.1.lcssa = phi double [ %typed_outval54.0, %._crit_edge ], [ %526, %525 ]
  br i1 %8, label %530, label %.thread73

; <label>:530                                     ; preds = %._crit_edge167
  %531 = load i32* %9, align 4, !tbaa !2
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %9, align 4, !tbaa !2
  %533 = load i32* %10, align 4, !tbaa !2
  %534 = icmp slt i32 %532, %533
  br i1 %534, label %.backedge119, label %.preheader91

.preheader91:                                     ; preds = %530
  br i1 %11, label %.lr.ph170, label %.thread73

.lr.ph170:                                        ; preds = %.preheader91, %544
  %indvars.iv471 = phi i64 [ %indvars.iv.next472, %544 ], [ 2, %.preheader91 ]
  %535 = getelementptr inbounds i32* %iterator, i64 %indvars.iv471
  %536 = load i32* %535, align 4, !tbaa !2
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %535, align 4, !tbaa !2
  %538 = getelementptr inbounds i32* %to, i64 %indvars.iv471
  %539 = load i32* %538, align 4, !tbaa !2
  %540 = icmp slt i32 %537, %539
  br i1 %540, label %.thread72.preheader, label %544

.thread72.preheader:                              ; preds = %.lr.ph170
  %541 = trunc i64 %indvars.iv471 to i32
  %542 = icmp sgt i32 %541, 0
  br i1 %542, label %.lr.ph175, label %.backedge119

.lr.ph175:                                        ; preds = %.thread72.preheader
  %sext = shl i64 %indvars.iv471, 32
  %543 = ashr exact i64 %sext, 32
  br label %.thread72

; <label>:544                                     ; preds = %.lr.ph170
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1
  %545 = icmp slt i64 %indvars.iv.next472, %5
  br i1 %545, label %.lr.ph170, label %.thread73

.thread72:                                        ; preds = %.lr.ph175, %.thread72
  %indvars.iv473 = phi i64 [ %543, %.lr.ph175 ], [ %indvars.iv.next474, %.thread72 ]
  %indvars.iv.next474 = add nsw i64 %indvars.iv473, -1
  %546 = getelementptr inbounds i32* %from, i64 %indvars.iv.next474
  %547 = load i32* %546, align 4, !tbaa !2
  %548 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next474
  store i32 %547, i32* %548, align 4, !tbaa !2
  %549 = icmp sgt i64 %indvars.iv473, 1
  br i1 %549, label %.thread72, label %.backedge119

.thread73:                                        ; preds = %._crit_edge167, %.preheader91, %544
  %indvars.iv.next476 = add nsw i64 %indvars.iv475, 1
  %550 = getelementptr inbounds double* %outvals, i64 %indvars.iv475
  store double %typed_outval54.1.lcssa, double* %550, align 8, !tbaa !9
  %551 = add nuw nsw i32 %_j50.0177, 1
  %552 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_vdata53.0178, i64 1
  %exitcond477 = icmp eq i32 %_j50.0177, %13
  br i1 %exitcond477, label %..loopexit130_crit_edge, label %.preheader120

; <label>:553                                     ; preds = %17
  %554 = tail call i32 @CCTK_Warn(i32 1, i32 326, i8* getelementptr inbounds ([89 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0)) #5
  br label %577

..loopexit121_crit_edge:                          ; preds = %.thread55
  %555 = add nsw i64 %15, %23
  %556 = trunc i64 %555 to i32
  br label %.loopexit121

..loopexit122_crit_edge:                          ; preds = %.thread57
  %557 = add nsw i64 %15, %71
  %558 = trunc i64 %557 to i32
  br label %.loopexit121

..loopexit123_crit_edge:                          ; preds = %.thread59
  %559 = add nsw i64 %15, %122
  %560 = trunc i64 %559 to i32
  br label %.loopexit121

..loopexit124_crit_edge:                          ; preds = %.thread61
  %561 = add nsw i64 %15, %176
  %562 = trunc i64 %561 to i32
  br label %.loopexit121

..loopexit125_crit_edge:                          ; preds = %.thread63
  %563 = add nsw i64 %15, %227
  %564 = trunc i64 %563 to i32
  br label %.loopexit121

..loopexit126_crit_edge:                          ; preds = %.thread65
  %565 = add nsw i64 %15, %278
  %566 = trunc i64 %565 to i32
  br label %.loopexit121

..loopexit127_crit_edge:                          ; preds = %.thread67
  %567 = add nsw i64 %15, %333
  %568 = trunc i64 %567 to i32
  br label %.loopexit121

..loopexit128_crit_edge:                          ; preds = %.thread69
  %569 = add nsw i64 %15, %389
  %570 = trunc i64 %569 to i32
  br label %.loopexit121

..loopexit129_crit_edge:                          ; preds = %.thread71
  %571 = add nsw i64 %15, %444
  %572 = trunc i64 %571 to i32
  br label %.loopexit121

..loopexit130_crit_edge:                          ; preds = %.thread73
  %573 = add nsw i64 %15, %500
  %574 = trunc i64 %573 to i32
  br label %.loopexit121

.loopexit121:                                     ; preds = %496, %..loopexit130_crit_edge, %440, %..loopexit129_crit_edge, %385, %..loopexit128_crit_edge, %329, %..loopexit127_crit_edge, %274, %..loopexit126_crit_edge, %223, %..loopexit125_crit_edge, %172, %..loopexit124_crit_edge, %118, %..loopexit123_crit_edge, %67, %..loopexit122_crit_edge, %20, %..loopexit121_crit_edge
  %total_outvals.11 = phi i32 [ %556, %..loopexit121_crit_edge ], [ %total_outvals.0390, %20 ], [ %558, %..loopexit122_crit_edge ], [ %total_outvals.0390, %67 ], [ %560, %..loopexit123_crit_edge ], [ %total_outvals.0390, %118 ], [ %562, %..loopexit124_crit_edge ], [ %total_outvals.0390, %172 ], [ %564, %..loopexit125_crit_edge ], [ %total_outvals.0390, %223 ], [ %566, %..loopexit126_crit_edge ], [ %total_outvals.0390, %274 ], [ %568, %..loopexit127_crit_edge ], [ %total_outvals.0390, %329 ], [ %570, %..loopexit128_crit_edge ], [ %total_outvals.0390, %385 ], [ %572, %..loopexit129_crit_edge ], [ %total_outvals.0390, %440 ], [ %574, %..loopexit130_crit_edge ], [ %total_outvals.0390, %496 ]
  %indvars.iv.next596 = add nuw nsw i64 %indvars.iv595, 1
  %575 = icmp slt i64 %indvars.iv.next596, %16
  br i1 %575, label %17, label %._crit_edge393

._crit_edge393:                                   ; preds = %.loopexit121, %0
  %576 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #5
  br label %577

; <label>:577                                     ; preds = %._crit_edge393, %553
  %.0 = phi i32 [ -1, %553 ], [ 0, %._crit_edge393 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ReductionNormInfGVs(%struct.cGH* %GH, i32 %proc, i32 %num_outvals, i32 %outtype, i8* %outvals, i32 %num_invars, i32* %invars) #1 {
  %1 = tail call i32 @PUGH_ReductionGVs(%struct.cGH* %GH, i32 %proc, i32 %num_invars, i32* %invars, i32 %outtype, i32 %num_outvals, i8* %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionNormInf) #5
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @PUGH_ReductionGVs(%struct.cGH*, i32, i32, i32*, i32, i32, i8*, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)*) #2

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: optsize
declare double @CCTK_Cmplx16Abs(double, double) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

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
