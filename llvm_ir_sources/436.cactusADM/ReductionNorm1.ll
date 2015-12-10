; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.CCTK_COMPLEX16 = type { double, double }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }

@.str = private unnamed_addr constant [61 x i8] c"$Id: ReductionNorm1.c,v 1.4 2001/05/14 17:06:20 tradke Exp $\00", align 1
@.str1 = private unnamed_addr constant [87 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm1.c\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str3 = private unnamed_addr constant [43 x i8] c"PUGH_ReductionNorm1: Unknown variable type\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHReduce_ReductionNorm1_c() #0 {
  ret i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ReductionNorm1Arrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %dims, i32 %num_inarrays, i8** %inarrays, i32 %intype, i32 %num_outvals, i8* %outvals, i32 %outtype) #1 {
  %1 = tail call i32 @PUGH_ReductionArrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %dims, i32 %intype, i32 %num_inarrays, i8** %inarrays, i32 %outtype, i32 %num_outvals, i8* %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionNorm1) #5
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @PUGH_ReductionArrays(%struct.cGH*, i32, i32, i32*, i32, i32, i8**, i32, i32, i8*, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @PUGH_ReductionNorm1(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %from, i32* %to, i32* %iterator, i32* nocapture readonly %points_per_dim, i32 %num_points, i32 %num_inarrays, i32* nocapture readonly %intypes, i8** nocapture readonly %inarrays, i32 %num_outvals, double* nocapture %outvals) #1 {
  %1 = icmp sgt i32 %num_inarrays, 0
  br i1 %1, label %.lr.ph397, label %._crit_edge398

.lr.ph397:                                        ; preds = %0
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

; <label>:17                                      ; preds = %.lr.ph397, %.loopexit123
  %indvars.iv609 = phi i64 [ 0, %.lr.ph397 ], [ %indvars.iv.next610, %.loopexit123 ]
  %total_outvals.0395 = phi i32 [ 0, %.lr.ph397 ], [ %total_outvals.11, %.loopexit123 ]
  %18 = getelementptr inbounds i32* %intypes, i64 %indvars.iv609
  %19 = load i32* %18, align 4, !tbaa !2
  switch i32 %19, label %532 [
    i32 1, label %20
    i32 2, label %67
    i32 3, label %118
    i32 4, label %169
    i32 5, label %220
    i32 6, label %271
    i32 7, label %323
    i32 8, label %376
    i32 9, label %428
    i32 10, label %481
  ]

; <label>:20                                      ; preds = %17
  br i1 %2, label %.preheader95.lr.ph, label %.loopexit123

.preheader95.lr.ph:                               ; preds = %20
  %21 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %22 = load i8** %21, align 8, !tbaa !6
  %23 = sext i32 %total_outvals.0395 to i64
  br label %.preheader95

.preheader95:                                     ; preds = %.thread55, %.preheader95.lr.ph
  %indvars.iv606 = phi i64 [ %23, %.preheader95.lr.ph ], [ %indvars.iv.next607, %.thread55 ]
  %typed_vdata.0392 = phi i8* [ %22, %.preheader95.lr.ph ], [ %66, %.thread55 ]
  %_j.0391 = phi i32 [ 0, %.preheader95.lr.ph ], [ %65, %.thread55 ]
  %24 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge

.backedge:                                        ; preds = %43, %.thread.preheader, %.thread, %.preheader95
  %typed_outval.0 = phi i8 [ 0, %.preheader95 ], [ %typed_outval.1.lcssa, %.thread ], [ %typed_outval.1.lcssa, %.thread.preheader ], [ %typed_outval.1.lcssa, %43 ]
  br i1 %8, label %.lr.ph374, label %._crit_edge375

.lr.ph374:                                        ; preds = %.backedge, %.lr.ph374
  %indvars.iv596 = phi i64 [ %indvars.iv.next597, %.lr.ph374 ], [ 1, %.backedge ]
  %_vindex.1372 = phi i32 [ %30, %.lr.ph374 ], [ 0, %.backedge ]
  %25 = getelementptr inbounds i32* %iterator, i64 %indvars.iv596
  %26 = load i32* %25, align 4, !tbaa !2
  %27 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv596
  %28 = load i32* %27, align 4, !tbaa !2
  %29 = mul nsw i32 %28, %26
  %30 = add nsw i32 %29, %_vindex.1372
  %indvars.iv.next597 = add nuw nsw i64 %indvars.iv596, 1
  %lftr.wideiv598 = trunc i64 %indvars.iv596 to i32
  %exitcond599 = icmp eq i32 %lftr.wideiv598, %12
  br i1 %exitcond599, label %._crit_edge375, label %.lr.ph374

._crit_edge375:                                   ; preds = %.lr.ph374, %.backedge
  %_vindex.1.lcssa = phi i32 [ 0, %.backedge ], [ %30, %.lr.ph374 ]
  %31 = load i32* %from, align 4, !tbaa !2
  %32 = load i32* %to, align 4, !tbaa !2
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %.lr.ph380, label %._crit_edge381

.lr.ph380:                                        ; preds = %._crit_edge375
  %34 = sext i32 %31 to i64
  %35 = sext i32 %_vindex.1.lcssa to i64
  %36 = sext i32 %32 to i64
  br label %37

; <label>:37                                      ; preds = %.lr.ph380, %37
  %indvars.iv600 = phi i64 [ %34, %.lr.ph380 ], [ %indvars.iv.next601, %37 ]
  %typed_outval.1378 = phi i8 [ %typed_outval.0, %.lr.ph380 ], [ %41, %37 ]
  %38 = add nsw i64 %indvars.iv600, %35
  %39 = getelementptr inbounds i8* %typed_vdata.0392, i64 %38
  %40 = load i8* %39, align 1, !tbaa !8
  %41 = add i8 %40, %typed_outval.1378
  %indvars.iv.next601 = add nsw i64 %indvars.iv600, 1
  %42 = icmp slt i64 %indvars.iv.next601, %36
  br i1 %42, label %37, label %._crit_edge381

._crit_edge381:                                   ; preds = %37, %._crit_edge375
  %typed_outval.1.lcssa = phi i8 [ %typed_outval.0, %._crit_edge375 ], [ %41, %37 ]
  br i1 %8, label %43, label %.thread55

; <label>:43                                      ; preds = %._crit_edge381
  %44 = load i32* %9, align 4, !tbaa !2
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4, !tbaa !2
  %46 = load i32* %10, align 4, !tbaa !2
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %.backedge, label %.preheader75

.preheader75:                                     ; preds = %43
  br i1 %11, label %.lr.ph384, label %.thread55

.lr.ph384:                                        ; preds = %.preheader75, %57
  %indvars.iv602 = phi i64 [ %indvars.iv.next603, %57 ], [ 2, %.preheader75 ]
  %48 = getelementptr inbounds i32* %iterator, i64 %indvars.iv602
  %49 = load i32* %48, align 4, !tbaa !2
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4, !tbaa !2
  %51 = getelementptr inbounds i32* %to, i64 %indvars.iv602
  %52 = load i32* %51, align 4, !tbaa !2
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %.thread.preheader, label %57

.thread.preheader:                                ; preds = %.lr.ph384
  %54 = trunc i64 %indvars.iv602 to i32
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %.lr.ph389, label %.backedge

.lr.ph389:                                        ; preds = %.thread.preheader
  %sext619 = shl i64 %indvars.iv602, 32
  %56 = ashr exact i64 %sext619, 32
  br label %.thread

; <label>:57                                      ; preds = %.lr.ph384
  %indvars.iv.next603 = add nuw nsw i64 %indvars.iv602, 1
  %58 = icmp slt i64 %indvars.iv.next603, %5
  br i1 %58, label %.lr.ph384, label %.thread55

.thread:                                          ; preds = %.lr.ph389, %.thread
  %indvars.iv604 = phi i64 [ %56, %.lr.ph389 ], [ %indvars.iv.next605, %.thread ]
  %indvars.iv.next605 = add nsw i64 %indvars.iv604, -1
  %59 = getelementptr inbounds i32* %from, i64 %indvars.iv.next605
  %60 = load i32* %59, align 4, !tbaa !2
  %61 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next605
  store i32 %60, i32* %61, align 4, !tbaa !2
  %62 = icmp sgt i64 %indvars.iv604, 1
  br i1 %62, label %.thread, label %.backedge

.thread55:                                        ; preds = %._crit_edge381, %.preheader75, %57
  %63 = uitofp i8 %typed_outval.1.lcssa to double
  %indvars.iv.next607 = add nsw i64 %indvars.iv606, 1
  %64 = getelementptr inbounds double* %outvals, i64 %indvars.iv606
  store double %63, double* %64, align 8, !tbaa !9
  %65 = add nuw nsw i32 %_j.0391, 1
  %66 = getelementptr inbounds i8* %typed_vdata.0392, i64 1
  %exitcond608 = icmp eq i32 %_j.0391, %13
  br i1 %exitcond608, label %..loopexit123_crit_edge, label %.preheader95

; <label>:67                                      ; preds = %17
  br i1 %2, label %.preheader98.lr.ph, label %.loopexit123

.preheader98.lr.ph:                               ; preds = %67
  %68 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %69 = bitcast i8** %68 to i32**
  %70 = load i32** %69, align 8, !tbaa !6
  %71 = sext i32 %total_outvals.0395 to i64
  br label %.preheader98

.preheader98:                                     ; preds = %.thread57, %.preheader98.lr.ph
  %indvars.iv593 = phi i64 [ %71, %.preheader98.lr.ph ], [ %indvars.iv.next594, %.thread57 ]
  %typed_vdata5.0369 = phi i32* [ %70, %.preheader98.lr.ph ], [ %117, %.thread57 ]
  %_j2.0368 = phi i32 [ 0, %.preheader98.lr.ph ], [ %116, %.thread57 ]
  %72 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge97

.backedge97:                                      ; preds = %94, %.thread56.preheader, %.thread56, %.preheader98
  %typed_outval6.0 = phi i32 [ 0, %.preheader98 ], [ %typed_outval6.1.lcssa, %.thread56 ], [ %typed_outval6.1.lcssa, %.thread56.preheader ], [ %typed_outval6.1.lcssa, %94 ]
  br i1 %8, label %.lr.ph351, label %._crit_edge352

.lr.ph351:                                        ; preds = %.backedge97, %.lr.ph351
  %indvars.iv583 = phi i64 [ %indvars.iv.next584, %.lr.ph351 ], [ 1, %.backedge97 ]
  %_vindex4.1349 = phi i32 [ %78, %.lr.ph351 ], [ 0, %.backedge97 ]
  %73 = getelementptr inbounds i32* %iterator, i64 %indvars.iv583
  %74 = load i32* %73, align 4, !tbaa !2
  %75 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv583
  %76 = load i32* %75, align 4, !tbaa !2
  %77 = mul nsw i32 %76, %74
  %78 = add nsw i32 %77, %_vindex4.1349
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1
  %lftr.wideiv585 = trunc i64 %indvars.iv583 to i32
  %exitcond586 = icmp eq i32 %lftr.wideiv585, %12
  br i1 %exitcond586, label %._crit_edge352, label %.lr.ph351

._crit_edge352:                                   ; preds = %.lr.ph351, %.backedge97
  %_vindex4.1.lcssa = phi i32 [ 0, %.backedge97 ], [ %78, %.lr.ph351 ]
  %79 = load i32* %from, align 4, !tbaa !2
  %80 = load i32* %to, align 4, !tbaa !2
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %.lr.ph357, label %._crit_edge358

.lr.ph357:                                        ; preds = %._crit_edge352
  %82 = sext i32 %79 to i64
  %83 = sext i32 %_vindex4.1.lcssa to i64
  %84 = sext i32 %80 to i64
  br label %85

; <label>:85                                      ; preds = %.lr.ph357, %85
  %indvars.iv587 = phi i64 [ %82, %.lr.ph357 ], [ %indvars.iv.next588, %85 ]
  %typed_outval6.1355 = phi i32 [ %typed_outval6.0, %.lr.ph357 ], [ %92, %85 ]
  %86 = add nsw i64 %indvars.iv587, %83
  %87 = getelementptr inbounds i32* %typed_vdata5.0369, i64 %86
  %88 = load i32* %87, align 4, !tbaa !2
  %89 = icmp slt i32 %88, 0
  %90 = sub nsw i32 0, %88
  %91 = select i1 %89, i32 %90, i32 %88
  %92 = add nsw i32 %91, %typed_outval6.1355
  %indvars.iv.next588 = add nsw i64 %indvars.iv587, 1
  %93 = icmp slt i64 %indvars.iv.next588, %84
  br i1 %93, label %85, label %._crit_edge358

._crit_edge358:                                   ; preds = %85, %._crit_edge352
  %typed_outval6.1.lcssa = phi i32 [ %typed_outval6.0, %._crit_edge352 ], [ %92, %85 ]
  br i1 %8, label %94, label %.thread57

; <label>:94                                      ; preds = %._crit_edge358
  %95 = load i32* %9, align 4, !tbaa !2
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4, !tbaa !2
  %97 = load i32* %10, align 4, !tbaa !2
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %.backedge97, label %.preheader77

.preheader77:                                     ; preds = %94
  br i1 %11, label %.lr.ph361, label %.thread57

.lr.ph361:                                        ; preds = %.preheader77, %108
  %indvars.iv589 = phi i64 [ %indvars.iv.next590, %108 ], [ 2, %.preheader77 ]
  %99 = getelementptr inbounds i32* %iterator, i64 %indvars.iv589
  %100 = load i32* %99, align 4, !tbaa !2
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4, !tbaa !2
  %102 = getelementptr inbounds i32* %to, i64 %indvars.iv589
  %103 = load i32* %102, align 4, !tbaa !2
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %.thread56.preheader, label %108

.thread56.preheader:                              ; preds = %.lr.ph361
  %105 = trunc i64 %indvars.iv589 to i32
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %.lr.ph366, label %.backedge97

.lr.ph366:                                        ; preds = %.thread56.preheader
  %sext618 = shl i64 %indvars.iv589, 32
  %107 = ashr exact i64 %sext618, 32
  br label %.thread56

; <label>:108                                     ; preds = %.lr.ph361
  %indvars.iv.next590 = add nuw nsw i64 %indvars.iv589, 1
  %109 = icmp slt i64 %indvars.iv.next590, %5
  br i1 %109, label %.lr.ph361, label %.thread57

.thread56:                                        ; preds = %.lr.ph366, %.thread56
  %indvars.iv591 = phi i64 [ %107, %.lr.ph366 ], [ %indvars.iv.next592, %.thread56 ]
  %indvars.iv.next592 = add nsw i64 %indvars.iv591, -1
  %110 = getelementptr inbounds i32* %from, i64 %indvars.iv.next592
  %111 = load i32* %110, align 4, !tbaa !2
  %112 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next592
  store i32 %111, i32* %112, align 4, !tbaa !2
  %113 = icmp sgt i64 %indvars.iv591, 1
  br i1 %113, label %.thread56, label %.backedge97

.thread57:                                        ; preds = %._crit_edge358, %.preheader77, %108
  %114 = sitofp i32 %typed_outval6.1.lcssa to double
  %indvars.iv.next594 = add nsw i64 %indvars.iv593, 1
  %115 = getelementptr inbounds double* %outvals, i64 %indvars.iv593
  store double %114, double* %115, align 8, !tbaa !9
  %116 = add nuw nsw i32 %_j2.0368, 1
  %117 = getelementptr inbounds i32* %typed_vdata5.0369, i64 1
  %exitcond595 = icmp eq i32 %_j2.0368, %13
  br i1 %exitcond595, label %..loopexit124_crit_edge, label %.preheader98

; <label>:118                                     ; preds = %17
  br i1 %2, label %.preheader101.lr.ph, label %.loopexit123

.preheader101.lr.ph:                              ; preds = %118
  %119 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %120 = bitcast i8** %119 to i16**
  %121 = load i16** %120, align 8, !tbaa !6
  %122 = sext i32 %total_outvals.0395 to i64
  br label %.preheader101

.preheader101:                                    ; preds = %.thread59, %.preheader101.lr.ph
  %indvars.iv580 = phi i64 [ %122, %.preheader101.lr.ph ], [ %indvars.iv.next581, %.thread59 ]
  %typed_vdata11.0346 = phi i16* [ %121, %.preheader101.lr.ph ], [ %168, %.thread59 ]
  %_j8.0345 = phi i32 [ 0, %.preheader101.lr.ph ], [ %167, %.thread59 ]
  %123 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge100

.backedge100:                                     ; preds = %145, %.thread58.preheader, %.thread58, %.preheader101
  %typed_outval12.0 = phi i16 [ 0, %.preheader101 ], [ %typed_outval12.1.lcssa, %.thread58 ], [ %typed_outval12.1.lcssa, %.thread58.preheader ], [ %typed_outval12.1.lcssa, %145 ]
  br i1 %8, label %.lr.ph328, label %._crit_edge329

.lr.ph328:                                        ; preds = %.backedge100, %.lr.ph328
  %indvars.iv570 = phi i64 [ %indvars.iv.next571, %.lr.ph328 ], [ 1, %.backedge100 ]
  %_vindex10.1326 = phi i32 [ %129, %.lr.ph328 ], [ 0, %.backedge100 ]
  %124 = getelementptr inbounds i32* %iterator, i64 %indvars.iv570
  %125 = load i32* %124, align 4, !tbaa !2
  %126 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv570
  %127 = load i32* %126, align 4, !tbaa !2
  %128 = mul nsw i32 %127, %125
  %129 = add nsw i32 %128, %_vindex10.1326
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1
  %lftr.wideiv572 = trunc i64 %indvars.iv570 to i32
  %exitcond573 = icmp eq i32 %lftr.wideiv572, %12
  br i1 %exitcond573, label %._crit_edge329, label %.lr.ph328

._crit_edge329:                                   ; preds = %.lr.ph328, %.backedge100
  %_vindex10.1.lcssa = phi i32 [ 0, %.backedge100 ], [ %129, %.lr.ph328 ]
  %130 = load i32* %from, align 4, !tbaa !2
  %131 = load i32* %to, align 4, !tbaa !2
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %.lr.ph334, label %._crit_edge335

.lr.ph334:                                        ; preds = %._crit_edge329
  %133 = sext i32 %130 to i64
  %134 = sext i32 %_vindex10.1.lcssa to i64
  %135 = sext i32 %131 to i64
  br label %136

; <label>:136                                     ; preds = %.lr.ph334, %136
  %indvars.iv574 = phi i64 [ %133, %.lr.ph334 ], [ %indvars.iv.next575, %136 ]
  %typed_outval12.1332 = phi i16 [ %typed_outval12.0, %.lr.ph334 ], [ %143, %136 ]
  %137 = add nsw i64 %indvars.iv574, %134
  %138 = getelementptr inbounds i16* %typed_vdata11.0346, i64 %137
  %139 = load i16* %138, align 2, !tbaa !11
  %140 = icmp slt i16 %139, 0
  %141 = sub i16 0, %139
  %142 = select i1 %140, i16 %141, i16 %139
  %143 = add i16 %142, %typed_outval12.1332
  %indvars.iv.next575 = add nsw i64 %indvars.iv574, 1
  %144 = icmp slt i64 %indvars.iv.next575, %135
  br i1 %144, label %136, label %._crit_edge335

._crit_edge335:                                   ; preds = %136, %._crit_edge329
  %typed_outval12.1.lcssa = phi i16 [ %typed_outval12.0, %._crit_edge329 ], [ %143, %136 ]
  br i1 %8, label %145, label %.thread59

; <label>:145                                     ; preds = %._crit_edge335
  %146 = load i32* %9, align 4, !tbaa !2
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4, !tbaa !2
  %148 = load i32* %10, align 4, !tbaa !2
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %.backedge100, label %.preheader79

.preheader79:                                     ; preds = %145
  br i1 %11, label %.lr.ph338, label %.thread59

.lr.ph338:                                        ; preds = %.preheader79, %159
  %indvars.iv576 = phi i64 [ %indvars.iv.next577, %159 ], [ 2, %.preheader79 ]
  %150 = getelementptr inbounds i32* %iterator, i64 %indvars.iv576
  %151 = load i32* %150, align 4, !tbaa !2
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4, !tbaa !2
  %153 = getelementptr inbounds i32* %to, i64 %indvars.iv576
  %154 = load i32* %153, align 4, !tbaa !2
  %155 = icmp slt i32 %152, %154
  br i1 %155, label %.thread58.preheader, label %159

.thread58.preheader:                              ; preds = %.lr.ph338
  %156 = trunc i64 %indvars.iv576 to i32
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %.lr.ph343, label %.backedge100

.lr.ph343:                                        ; preds = %.thread58.preheader
  %sext617 = shl i64 %indvars.iv576, 32
  %158 = ashr exact i64 %sext617, 32
  br label %.thread58

; <label>:159                                     ; preds = %.lr.ph338
  %indvars.iv.next577 = add nuw nsw i64 %indvars.iv576, 1
  %160 = icmp slt i64 %indvars.iv.next577, %5
  br i1 %160, label %.lr.ph338, label %.thread59

.thread58:                                        ; preds = %.lr.ph343, %.thread58
  %indvars.iv578 = phi i64 [ %158, %.lr.ph343 ], [ %indvars.iv.next579, %.thread58 ]
  %indvars.iv.next579 = add nsw i64 %indvars.iv578, -1
  %161 = getelementptr inbounds i32* %from, i64 %indvars.iv.next579
  %162 = load i32* %161, align 4, !tbaa !2
  %163 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next579
  store i32 %162, i32* %163, align 4, !tbaa !2
  %164 = icmp sgt i64 %indvars.iv578, 1
  br i1 %164, label %.thread58, label %.backedge100

.thread59:                                        ; preds = %._crit_edge335, %.preheader79, %159
  %165 = sitofp i16 %typed_outval12.1.lcssa to double
  %indvars.iv.next581 = add nsw i64 %indvars.iv580, 1
  %166 = getelementptr inbounds double* %outvals, i64 %indvars.iv580
  store double %165, double* %166, align 8, !tbaa !9
  %167 = add nuw nsw i32 %_j8.0345, 1
  %168 = getelementptr inbounds i16* %typed_vdata11.0346, i64 1
  %exitcond582 = icmp eq i32 %_j8.0345, %13
  br i1 %exitcond582, label %..loopexit125_crit_edge, label %.preheader101

; <label>:169                                     ; preds = %17
  br i1 %2, label %.preheader104.lr.ph, label %.loopexit123

.preheader104.lr.ph:                              ; preds = %169
  %170 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %171 = bitcast i8** %170 to i32**
  %172 = load i32** %171, align 8, !tbaa !6
  %173 = sext i32 %total_outvals.0395 to i64
  br label %.preheader104

.preheader104:                                    ; preds = %.thread61, %.preheader104.lr.ph
  %indvars.iv567 = phi i64 [ %173, %.preheader104.lr.ph ], [ %indvars.iv.next568, %.thread61 ]
  %typed_vdata17.0323 = phi i32* [ %172, %.preheader104.lr.ph ], [ %219, %.thread61 ]
  %_j14.0322 = phi i32 [ 0, %.preheader104.lr.ph ], [ %218, %.thread61 ]
  %174 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge103

.backedge103:                                     ; preds = %196, %.thread60.preheader, %.thread60, %.preheader104
  %typed_outval18.0 = phi i32 [ 0, %.preheader104 ], [ %typed_outval18.1.lcssa, %.thread60 ], [ %typed_outval18.1.lcssa, %.thread60.preheader ], [ %typed_outval18.1.lcssa, %196 ]
  br i1 %8, label %.lr.ph305, label %._crit_edge306

.lr.ph305:                                        ; preds = %.backedge103, %.lr.ph305
  %indvars.iv557 = phi i64 [ %indvars.iv.next558, %.lr.ph305 ], [ 1, %.backedge103 ]
  %_vindex16.1303 = phi i32 [ %180, %.lr.ph305 ], [ 0, %.backedge103 ]
  %175 = getelementptr inbounds i32* %iterator, i64 %indvars.iv557
  %176 = load i32* %175, align 4, !tbaa !2
  %177 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv557
  %178 = load i32* %177, align 4, !tbaa !2
  %179 = mul nsw i32 %178, %176
  %180 = add nsw i32 %179, %_vindex16.1303
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1
  %lftr.wideiv559 = trunc i64 %indvars.iv557 to i32
  %exitcond560 = icmp eq i32 %lftr.wideiv559, %12
  br i1 %exitcond560, label %._crit_edge306, label %.lr.ph305

._crit_edge306:                                   ; preds = %.lr.ph305, %.backedge103
  %_vindex16.1.lcssa = phi i32 [ 0, %.backedge103 ], [ %180, %.lr.ph305 ]
  %181 = load i32* %from, align 4, !tbaa !2
  %182 = load i32* %to, align 4, !tbaa !2
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %.lr.ph311, label %._crit_edge312

.lr.ph311:                                        ; preds = %._crit_edge306
  %184 = sext i32 %181 to i64
  %185 = sext i32 %_vindex16.1.lcssa to i64
  %186 = sext i32 %182 to i64
  br label %187

; <label>:187                                     ; preds = %.lr.ph311, %187
  %indvars.iv561 = phi i64 [ %184, %.lr.ph311 ], [ %indvars.iv.next562, %187 ]
  %typed_outval18.1309 = phi i32 [ %typed_outval18.0, %.lr.ph311 ], [ %194, %187 ]
  %188 = add nsw i64 %indvars.iv561, %185
  %189 = getelementptr inbounds i32* %typed_vdata17.0323, i64 %188
  %190 = load i32* %189, align 4, !tbaa !2
  %191 = icmp slt i32 %190, 0
  %192 = sub nsw i32 0, %190
  %193 = select i1 %191, i32 %192, i32 %190
  %194 = add nsw i32 %193, %typed_outval18.1309
  %indvars.iv.next562 = add nsw i64 %indvars.iv561, 1
  %195 = icmp slt i64 %indvars.iv.next562, %186
  br i1 %195, label %187, label %._crit_edge312

._crit_edge312:                                   ; preds = %187, %._crit_edge306
  %typed_outval18.1.lcssa = phi i32 [ %typed_outval18.0, %._crit_edge306 ], [ %194, %187 ]
  br i1 %8, label %196, label %.thread61

; <label>:196                                     ; preds = %._crit_edge312
  %197 = load i32* %9, align 4, !tbaa !2
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4, !tbaa !2
  %199 = load i32* %10, align 4, !tbaa !2
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %.backedge103, label %.preheader81

.preheader81:                                     ; preds = %196
  br i1 %11, label %.lr.ph315, label %.thread61

.lr.ph315:                                        ; preds = %.preheader81, %210
  %indvars.iv563 = phi i64 [ %indvars.iv.next564, %210 ], [ 2, %.preheader81 ]
  %201 = getelementptr inbounds i32* %iterator, i64 %indvars.iv563
  %202 = load i32* %201, align 4, !tbaa !2
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 4, !tbaa !2
  %204 = getelementptr inbounds i32* %to, i64 %indvars.iv563
  %205 = load i32* %204, align 4, !tbaa !2
  %206 = icmp slt i32 %203, %205
  br i1 %206, label %.thread60.preheader, label %210

.thread60.preheader:                              ; preds = %.lr.ph315
  %207 = trunc i64 %indvars.iv563 to i32
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %.lr.ph320, label %.backedge103

.lr.ph320:                                        ; preds = %.thread60.preheader
  %sext616 = shl i64 %indvars.iv563, 32
  %209 = ashr exact i64 %sext616, 32
  br label %.thread60

; <label>:210                                     ; preds = %.lr.ph315
  %indvars.iv.next564 = add nuw nsw i64 %indvars.iv563, 1
  %211 = icmp slt i64 %indvars.iv.next564, %5
  br i1 %211, label %.lr.ph315, label %.thread61

.thread60:                                        ; preds = %.lr.ph320, %.thread60
  %indvars.iv565 = phi i64 [ %209, %.lr.ph320 ], [ %indvars.iv.next566, %.thread60 ]
  %indvars.iv.next566 = add nsw i64 %indvars.iv565, -1
  %212 = getelementptr inbounds i32* %from, i64 %indvars.iv.next566
  %213 = load i32* %212, align 4, !tbaa !2
  %214 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next566
  store i32 %213, i32* %214, align 4, !tbaa !2
  %215 = icmp sgt i64 %indvars.iv565, 1
  br i1 %215, label %.thread60, label %.backedge103

.thread61:                                        ; preds = %._crit_edge312, %.preheader81, %210
  %216 = sitofp i32 %typed_outval18.1.lcssa to double
  %indvars.iv.next568 = add nsw i64 %indvars.iv567, 1
  %217 = getelementptr inbounds double* %outvals, i64 %indvars.iv567
  store double %216, double* %217, align 8, !tbaa !9
  %218 = add nuw nsw i32 %_j14.0322, 1
  %219 = getelementptr inbounds i32* %typed_vdata17.0323, i64 1
  %exitcond569 = icmp eq i32 %_j14.0322, %13
  br i1 %exitcond569, label %..loopexit126_crit_edge, label %.preheader104

; <label>:220                                     ; preds = %17
  br i1 %2, label %.preheader107.lr.ph, label %.loopexit123

.preheader107.lr.ph:                              ; preds = %220
  %221 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %222 = bitcast i8** %221 to i64**
  %223 = load i64** %222, align 8, !tbaa !6
  %224 = sext i32 %total_outvals.0395 to i64
  br label %.preheader107

.preheader107:                                    ; preds = %.thread63, %.preheader107.lr.ph
  %indvars.iv554 = phi i64 [ %224, %.preheader107.lr.ph ], [ %indvars.iv.next555, %.thread63 ]
  %typed_vdata23.0300 = phi i64* [ %223, %.preheader107.lr.ph ], [ %270, %.thread63 ]
  %_j20.0299 = phi i32 [ 0, %.preheader107.lr.ph ], [ %269, %.thread63 ]
  %225 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge106

.backedge106:                                     ; preds = %247, %.thread62.preheader, %.thread62, %.preheader107
  %typed_outval24.0 = phi i64 [ 0, %.preheader107 ], [ %typed_outval24.1.lcssa, %.thread62 ], [ %typed_outval24.1.lcssa, %.thread62.preheader ], [ %typed_outval24.1.lcssa, %247 ]
  br i1 %8, label %.lr.ph282, label %._crit_edge283

.lr.ph282:                                        ; preds = %.backedge106, %.lr.ph282
  %indvars.iv544 = phi i64 [ %indvars.iv.next545, %.lr.ph282 ], [ 1, %.backedge106 ]
  %_vindex22.1280 = phi i32 [ %231, %.lr.ph282 ], [ 0, %.backedge106 ]
  %226 = getelementptr inbounds i32* %iterator, i64 %indvars.iv544
  %227 = load i32* %226, align 4, !tbaa !2
  %228 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv544
  %229 = load i32* %228, align 4, !tbaa !2
  %230 = mul nsw i32 %229, %227
  %231 = add nsw i32 %230, %_vindex22.1280
  %indvars.iv.next545 = add nuw nsw i64 %indvars.iv544, 1
  %lftr.wideiv546 = trunc i64 %indvars.iv544 to i32
  %exitcond547 = icmp eq i32 %lftr.wideiv546, %12
  br i1 %exitcond547, label %._crit_edge283, label %.lr.ph282

._crit_edge283:                                   ; preds = %.lr.ph282, %.backedge106
  %_vindex22.1.lcssa = phi i32 [ 0, %.backedge106 ], [ %231, %.lr.ph282 ]
  %232 = load i32* %from, align 4, !tbaa !2
  %233 = load i32* %to, align 4, !tbaa !2
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %.lr.ph288, label %._crit_edge289

.lr.ph288:                                        ; preds = %._crit_edge283
  %235 = sext i32 %232 to i64
  %236 = sext i32 %_vindex22.1.lcssa to i64
  %237 = sext i32 %233 to i64
  br label %238

; <label>:238                                     ; preds = %.lr.ph288, %238
  %indvars.iv548 = phi i64 [ %235, %.lr.ph288 ], [ %indvars.iv.next549, %238 ]
  %typed_outval24.1286 = phi i64 [ %typed_outval24.0, %.lr.ph288 ], [ %245, %238 ]
  %239 = add nsw i64 %indvars.iv548, %236
  %240 = getelementptr inbounds i64* %typed_vdata23.0300, i64 %239
  %241 = load i64* %240, align 8, !tbaa !13
  %242 = icmp slt i64 %241, 0
  %243 = sub nsw i64 0, %241
  %244 = select i1 %242, i64 %243, i64 %241
  %245 = add nsw i64 %244, %typed_outval24.1286
  %indvars.iv.next549 = add nsw i64 %indvars.iv548, 1
  %246 = icmp slt i64 %indvars.iv.next549, %237
  br i1 %246, label %238, label %._crit_edge289

._crit_edge289:                                   ; preds = %238, %._crit_edge283
  %typed_outval24.1.lcssa = phi i64 [ %typed_outval24.0, %._crit_edge283 ], [ %245, %238 ]
  br i1 %8, label %247, label %.thread63

; <label>:247                                     ; preds = %._crit_edge289
  %248 = load i32* %9, align 4, !tbaa !2
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %9, align 4, !tbaa !2
  %250 = load i32* %10, align 4, !tbaa !2
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %.backedge106, label %.preheader83

.preheader83:                                     ; preds = %247
  br i1 %11, label %.lr.ph292, label %.thread63

.lr.ph292:                                        ; preds = %.preheader83, %261
  %indvars.iv550 = phi i64 [ %indvars.iv.next551, %261 ], [ 2, %.preheader83 ]
  %252 = getelementptr inbounds i32* %iterator, i64 %indvars.iv550
  %253 = load i32* %252, align 4, !tbaa !2
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 4, !tbaa !2
  %255 = getelementptr inbounds i32* %to, i64 %indvars.iv550
  %256 = load i32* %255, align 4, !tbaa !2
  %257 = icmp slt i32 %254, %256
  br i1 %257, label %.thread62.preheader, label %261

.thread62.preheader:                              ; preds = %.lr.ph292
  %258 = trunc i64 %indvars.iv550 to i32
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %.lr.ph297, label %.backedge106

.lr.ph297:                                        ; preds = %.thread62.preheader
  %sext615 = shl i64 %indvars.iv550, 32
  %260 = ashr exact i64 %sext615, 32
  br label %.thread62

; <label>:261                                     ; preds = %.lr.ph292
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1
  %262 = icmp slt i64 %indvars.iv.next551, %5
  br i1 %262, label %.lr.ph292, label %.thread63

.thread62:                                        ; preds = %.lr.ph297, %.thread62
  %indvars.iv552 = phi i64 [ %260, %.lr.ph297 ], [ %indvars.iv.next553, %.thread62 ]
  %indvars.iv.next553 = add nsw i64 %indvars.iv552, -1
  %263 = getelementptr inbounds i32* %from, i64 %indvars.iv.next553
  %264 = load i32* %263, align 4, !tbaa !2
  %265 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next553
  store i32 %264, i32* %265, align 4, !tbaa !2
  %266 = icmp sgt i64 %indvars.iv552, 1
  br i1 %266, label %.thread62, label %.backedge106

.thread63:                                        ; preds = %._crit_edge289, %.preheader83, %261
  %267 = sitofp i64 %typed_outval24.1.lcssa to double
  %indvars.iv.next555 = add nsw i64 %indvars.iv554, 1
  %268 = getelementptr inbounds double* %outvals, i64 %indvars.iv554
  store double %267, double* %268, align 8, !tbaa !9
  %269 = add nuw nsw i32 %_j20.0299, 1
  %270 = getelementptr inbounds i64* %typed_vdata23.0300, i64 1
  %exitcond556 = icmp eq i32 %_j20.0299, %13
  br i1 %exitcond556, label %..loopexit127_crit_edge, label %.preheader107

; <label>:271                                     ; preds = %17
  br i1 %2, label %.preheader110.lr.ph, label %.loopexit123

.preheader110.lr.ph:                              ; preds = %271
  %272 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %273 = bitcast i8** %272 to double**
  %274 = load double** %273, align 8, !tbaa !6
  %275 = sext i32 %total_outvals.0395 to i64
  br label %.preheader110

.preheader110:                                    ; preds = %.thread65, %.preheader110.lr.ph
  %indvars.iv541 = phi i64 [ %275, %.preheader110.lr.ph ], [ %indvars.iv.next542, %.thread65 ]
  %typed_vdata29.0277 = phi double* [ %274, %.preheader110.lr.ph ], [ %322, %.thread65 ]
  %_j26.0276 = phi i32 [ 0, %.preheader110.lr.ph ], [ %321, %.thread65 ]
  %276 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge109

.backedge109:                                     ; preds = %300, %.thread64.preheader, %.thread64, %.preheader110
  %typed_outval30.0 = phi double [ 0.000000e+00, %.preheader110 ], [ %typed_outval30.1.lcssa, %.thread64 ], [ %typed_outval30.1.lcssa, %.thread64.preheader ], [ %typed_outval30.1.lcssa, %300 ]
  br i1 %8, label %.lr.ph259, label %._crit_edge260

.lr.ph259:                                        ; preds = %.backedge109, %.lr.ph259
  %indvars.iv531 = phi i64 [ %indvars.iv.next532, %.lr.ph259 ], [ 1, %.backedge109 ]
  %_vindex28.1257 = phi i32 [ %282, %.lr.ph259 ], [ 0, %.backedge109 ]
  %277 = getelementptr inbounds i32* %iterator, i64 %indvars.iv531
  %278 = load i32* %277, align 4, !tbaa !2
  %279 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv531
  %280 = load i32* %279, align 4, !tbaa !2
  %281 = mul nsw i32 %280, %278
  %282 = add nsw i32 %281, %_vindex28.1257
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1
  %lftr.wideiv533 = trunc i64 %indvars.iv531 to i32
  %exitcond534 = icmp eq i32 %lftr.wideiv533, %12
  br i1 %exitcond534, label %._crit_edge260, label %.lr.ph259

._crit_edge260:                                   ; preds = %.lr.ph259, %.backedge109
  %_vindex28.1.lcssa = phi i32 [ 0, %.backedge109 ], [ %282, %.lr.ph259 ]
  %283 = load i32* %from, align 4, !tbaa !2
  %284 = load i32* %to, align 4, !tbaa !2
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %.lr.ph265, label %._crit_edge266

.lr.ph265:                                        ; preds = %._crit_edge260
  %286 = sext i32 %283 to i64
  %287 = sext i32 %_vindex28.1.lcssa to i64
  %288 = sext i32 %284 to i64
  br label %289

; <label>:289                                     ; preds = %.lr.ph265, %296
  %indvars.iv535 = phi i64 [ %286, %.lr.ph265 ], [ %indvars.iv.next536, %296 ]
  %typed_outval30.1263 = phi double [ %typed_outval30.0, %.lr.ph265 ], [ %298, %296 ]
  %290 = add nsw i64 %indvars.iv535, %287
  %291 = getelementptr inbounds double* %typed_vdata29.0277, i64 %290
  %292 = load double* %291, align 8, !tbaa !9
  %293 = fcmp olt double %292, 0.000000e+00
  br i1 %293, label %294, label %296

; <label>:294                                     ; preds = %289
  %295 = fsub double -0.000000e+00, %292
  br label %296

; <label>:296                                     ; preds = %289, %294
  %297 = phi double [ %295, %294 ], [ %292, %289 ]
  %298 = fadd double %typed_outval30.1263, %297
  %indvars.iv.next536 = add nsw i64 %indvars.iv535, 1
  %299 = icmp slt i64 %indvars.iv.next536, %288
  br i1 %299, label %289, label %._crit_edge266

._crit_edge266:                                   ; preds = %296, %._crit_edge260
  %typed_outval30.1.lcssa = phi double [ %typed_outval30.0, %._crit_edge260 ], [ %298, %296 ]
  br i1 %8, label %300, label %.thread65

; <label>:300                                     ; preds = %._crit_edge266
  %301 = load i32* %9, align 4, !tbaa !2
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %9, align 4, !tbaa !2
  %303 = load i32* %10, align 4, !tbaa !2
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %.backedge109, label %.preheader85

.preheader85:                                     ; preds = %300
  br i1 %11, label %.lr.ph269, label %.thread65

.lr.ph269:                                        ; preds = %.preheader85, %314
  %indvars.iv537 = phi i64 [ %indvars.iv.next538, %314 ], [ 2, %.preheader85 ]
  %305 = getelementptr inbounds i32* %iterator, i64 %indvars.iv537
  %306 = load i32* %305, align 4, !tbaa !2
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %305, align 4, !tbaa !2
  %308 = getelementptr inbounds i32* %to, i64 %indvars.iv537
  %309 = load i32* %308, align 4, !tbaa !2
  %310 = icmp slt i32 %307, %309
  br i1 %310, label %.thread64.preheader, label %314

.thread64.preheader:                              ; preds = %.lr.ph269
  %311 = trunc i64 %indvars.iv537 to i32
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %.lr.ph274, label %.backedge109

.lr.ph274:                                        ; preds = %.thread64.preheader
  %sext614 = shl i64 %indvars.iv537, 32
  %313 = ashr exact i64 %sext614, 32
  br label %.thread64

; <label>:314                                     ; preds = %.lr.ph269
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1
  %315 = icmp slt i64 %indvars.iv.next538, %5
  br i1 %315, label %.lr.ph269, label %.thread65

.thread64:                                        ; preds = %.lr.ph274, %.thread64
  %indvars.iv539 = phi i64 [ %313, %.lr.ph274 ], [ %indvars.iv.next540, %.thread64 ]
  %indvars.iv.next540 = add nsw i64 %indvars.iv539, -1
  %316 = getelementptr inbounds i32* %from, i64 %indvars.iv.next540
  %317 = load i32* %316, align 4, !tbaa !2
  %318 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next540
  store i32 %317, i32* %318, align 4, !tbaa !2
  %319 = icmp sgt i64 %indvars.iv539, 1
  br i1 %319, label %.thread64, label %.backedge109

.thread65:                                        ; preds = %._crit_edge266, %.preheader85, %314
  %indvars.iv.next542 = add nsw i64 %indvars.iv541, 1
  %320 = getelementptr inbounds double* %outvals, i64 %indvars.iv541
  store double %typed_outval30.1.lcssa, double* %320, align 8, !tbaa !9
  %321 = add nuw nsw i32 %_j26.0276, 1
  %322 = getelementptr inbounds double* %typed_vdata29.0277, i64 1
  %exitcond543 = icmp eq i32 %_j26.0276, %13
  br i1 %exitcond543, label %..loopexit128_crit_edge, label %.preheader110

; <label>:323                                     ; preds = %17
  br i1 %2, label %.preheader113.lr.ph, label %.loopexit123

.preheader113.lr.ph:                              ; preds = %323
  %324 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %325 = bitcast i8** %324 to float**
  %326 = load float** %325, align 8, !tbaa !6
  %327 = sext i32 %total_outvals.0395 to i64
  br label %.preheader113

.preheader113:                                    ; preds = %.thread67, %.preheader113.lr.ph
  %indvars.iv528 = phi i64 [ %327, %.preheader113.lr.ph ], [ %indvars.iv.next529, %.thread67 ]
  %typed_vdata35.0254 = phi float* [ %326, %.preheader113.lr.ph ], [ %375, %.thread67 ]
  %_j32.0253 = phi i32 [ 0, %.preheader113.lr.ph ], [ %374, %.thread67 ]
  %328 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge112

.backedge112:                                     ; preds = %352, %.thread66.preheader, %.thread66, %.preheader113
  %typed_outval36.0 = phi float [ 0.000000e+00, %.preheader113 ], [ %typed_outval36.1.lcssa, %.thread66 ], [ %typed_outval36.1.lcssa, %.thread66.preheader ], [ %typed_outval36.1.lcssa, %352 ]
  br i1 %8, label %.lr.ph236, label %._crit_edge237

.lr.ph236:                                        ; preds = %.backedge112, %.lr.ph236
  %indvars.iv518 = phi i64 [ %indvars.iv.next519, %.lr.ph236 ], [ 1, %.backedge112 ]
  %_vindex34.1234 = phi i32 [ %334, %.lr.ph236 ], [ 0, %.backedge112 ]
  %329 = getelementptr inbounds i32* %iterator, i64 %indvars.iv518
  %330 = load i32* %329, align 4, !tbaa !2
  %331 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv518
  %332 = load i32* %331, align 4, !tbaa !2
  %333 = mul nsw i32 %332, %330
  %334 = add nsw i32 %333, %_vindex34.1234
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1
  %lftr.wideiv520 = trunc i64 %indvars.iv518 to i32
  %exitcond521 = icmp eq i32 %lftr.wideiv520, %12
  br i1 %exitcond521, label %._crit_edge237, label %.lr.ph236

._crit_edge237:                                   ; preds = %.lr.ph236, %.backedge112
  %_vindex34.1.lcssa = phi i32 [ 0, %.backedge112 ], [ %334, %.lr.ph236 ]
  %335 = load i32* %from, align 4, !tbaa !2
  %336 = load i32* %to, align 4, !tbaa !2
  %337 = icmp slt i32 %335, %336
  br i1 %337, label %.lr.ph242, label %._crit_edge243

.lr.ph242:                                        ; preds = %._crit_edge237
  %338 = sext i32 %335 to i64
  %339 = sext i32 %_vindex34.1.lcssa to i64
  %340 = sext i32 %336 to i64
  br label %341

; <label>:341                                     ; preds = %.lr.ph242, %348
  %indvars.iv522 = phi i64 [ %338, %.lr.ph242 ], [ %indvars.iv.next523, %348 ]
  %typed_outval36.1240 = phi float [ %typed_outval36.0, %.lr.ph242 ], [ %350, %348 ]
  %342 = add nsw i64 %indvars.iv522, %339
  %343 = getelementptr inbounds float* %typed_vdata35.0254, i64 %342
  %344 = load float* %343, align 4, !tbaa !15
  %345 = fcmp olt float %344, 0.000000e+00
  br i1 %345, label %346, label %348

; <label>:346                                     ; preds = %341
  %347 = fsub float -0.000000e+00, %344
  br label %348

; <label>:348                                     ; preds = %341, %346
  %349 = phi float [ %347, %346 ], [ %344, %341 ]
  %350 = fadd float %typed_outval36.1240, %349
  %indvars.iv.next523 = add nsw i64 %indvars.iv522, 1
  %351 = icmp slt i64 %indvars.iv.next523, %340
  br i1 %351, label %341, label %._crit_edge243

._crit_edge243:                                   ; preds = %348, %._crit_edge237
  %typed_outval36.1.lcssa = phi float [ %typed_outval36.0, %._crit_edge237 ], [ %350, %348 ]
  br i1 %8, label %352, label %.thread67

; <label>:352                                     ; preds = %._crit_edge243
  %353 = load i32* %9, align 4, !tbaa !2
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %9, align 4, !tbaa !2
  %355 = load i32* %10, align 4, !tbaa !2
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %.backedge112, label %.preheader87

.preheader87:                                     ; preds = %352
  br i1 %11, label %.lr.ph246, label %.thread67

.lr.ph246:                                        ; preds = %.preheader87, %366
  %indvars.iv524 = phi i64 [ %indvars.iv.next525, %366 ], [ 2, %.preheader87 ]
  %357 = getelementptr inbounds i32* %iterator, i64 %indvars.iv524
  %358 = load i32* %357, align 4, !tbaa !2
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %357, align 4, !tbaa !2
  %360 = getelementptr inbounds i32* %to, i64 %indvars.iv524
  %361 = load i32* %360, align 4, !tbaa !2
  %362 = icmp slt i32 %359, %361
  br i1 %362, label %.thread66.preheader, label %366

.thread66.preheader:                              ; preds = %.lr.ph246
  %363 = trunc i64 %indvars.iv524 to i32
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %.lr.ph251, label %.backedge112

.lr.ph251:                                        ; preds = %.thread66.preheader
  %sext613 = shl i64 %indvars.iv524, 32
  %365 = ashr exact i64 %sext613, 32
  br label %.thread66

; <label>:366                                     ; preds = %.lr.ph246
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1
  %367 = icmp slt i64 %indvars.iv.next525, %5
  br i1 %367, label %.lr.ph246, label %.thread67

.thread66:                                        ; preds = %.lr.ph251, %.thread66
  %indvars.iv526 = phi i64 [ %365, %.lr.ph251 ], [ %indvars.iv.next527, %.thread66 ]
  %indvars.iv.next527 = add nsw i64 %indvars.iv526, -1
  %368 = getelementptr inbounds i32* %from, i64 %indvars.iv.next527
  %369 = load i32* %368, align 4, !tbaa !2
  %370 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next527
  store i32 %369, i32* %370, align 4, !tbaa !2
  %371 = icmp sgt i64 %indvars.iv526, 1
  br i1 %371, label %.thread66, label %.backedge112

.thread67:                                        ; preds = %._crit_edge243, %.preheader87, %366
  %372 = fpext float %typed_outval36.1.lcssa to double
  %indvars.iv.next529 = add nsw i64 %indvars.iv528, 1
  %373 = getelementptr inbounds double* %outvals, i64 %indvars.iv528
  store double %372, double* %373, align 8, !tbaa !9
  %374 = add nuw nsw i32 %_j32.0253, 1
  %375 = getelementptr inbounds float* %typed_vdata35.0254, i64 1
  %exitcond530 = icmp eq i32 %_j32.0253, %13
  br i1 %exitcond530, label %..loopexit129_crit_edge, label %.preheader113

; <label>:376                                     ; preds = %17
  br i1 %2, label %.preheader116.lr.ph, label %.loopexit123

.preheader116.lr.ph:                              ; preds = %376
  %377 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %378 = bitcast i8** %377 to double**
  %379 = load double** %378, align 8, !tbaa !6
  %380 = sext i32 %total_outvals.0395 to i64
  br label %.preheader116

.preheader116:                                    ; preds = %.thread69, %.preheader116.lr.ph
  %indvars.iv515 = phi i64 [ %380, %.preheader116.lr.ph ], [ %indvars.iv.next516, %.thread69 ]
  %typed_vdata41.0231 = phi double* [ %379, %.preheader116.lr.ph ], [ %427, %.thread69 ]
  %_j38.0230 = phi i32 [ 0, %.preheader116.lr.ph ], [ %426, %.thread69 ]
  %381 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge115

.backedge115:                                     ; preds = %405, %.thread68.preheader, %.thread68, %.preheader116
  %typed_outval42.0 = phi double [ 0.000000e+00, %.preheader116 ], [ %typed_outval42.1.lcssa, %.thread68 ], [ %typed_outval42.1.lcssa, %.thread68.preheader ], [ %typed_outval42.1.lcssa, %405 ]
  br i1 %8, label %.lr.ph213, label %._crit_edge214

.lr.ph213:                                        ; preds = %.backedge115, %.lr.ph213
  %indvars.iv505 = phi i64 [ %indvars.iv.next506, %.lr.ph213 ], [ 1, %.backedge115 ]
  %_vindex40.1211 = phi i32 [ %387, %.lr.ph213 ], [ 0, %.backedge115 ]
  %382 = getelementptr inbounds i32* %iterator, i64 %indvars.iv505
  %383 = load i32* %382, align 4, !tbaa !2
  %384 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv505
  %385 = load i32* %384, align 4, !tbaa !2
  %386 = mul nsw i32 %385, %383
  %387 = add nsw i32 %386, %_vindex40.1211
  %indvars.iv.next506 = add nuw nsw i64 %indvars.iv505, 1
  %lftr.wideiv507 = trunc i64 %indvars.iv505 to i32
  %exitcond508 = icmp eq i32 %lftr.wideiv507, %12
  br i1 %exitcond508, label %._crit_edge214, label %.lr.ph213

._crit_edge214:                                   ; preds = %.lr.ph213, %.backedge115
  %_vindex40.1.lcssa = phi i32 [ 0, %.backedge115 ], [ %387, %.lr.ph213 ]
  %388 = load i32* %from, align 4, !tbaa !2
  %389 = load i32* %to, align 4, !tbaa !2
  %390 = icmp slt i32 %388, %389
  br i1 %390, label %.lr.ph219, label %._crit_edge220

.lr.ph219:                                        ; preds = %._crit_edge214
  %391 = sext i32 %388 to i64
  %392 = sext i32 %_vindex40.1.lcssa to i64
  %393 = sext i32 %389 to i64
  br label %394

; <label>:394                                     ; preds = %.lr.ph219, %401
  %indvars.iv509 = phi i64 [ %391, %.lr.ph219 ], [ %indvars.iv.next510, %401 ]
  %typed_outval42.1217 = phi double [ %typed_outval42.0, %.lr.ph219 ], [ %403, %401 ]
  %395 = add nsw i64 %indvars.iv509, %392
  %396 = getelementptr inbounds double* %typed_vdata41.0231, i64 %395
  %397 = load double* %396, align 8, !tbaa !9
  %398 = fcmp olt double %397, 0.000000e+00
  br i1 %398, label %399, label %401

; <label>:399                                     ; preds = %394
  %400 = fsub double -0.000000e+00, %397
  br label %401

; <label>:401                                     ; preds = %394, %399
  %402 = phi double [ %400, %399 ], [ %397, %394 ]
  %403 = fadd double %typed_outval42.1217, %402
  %indvars.iv.next510 = add nsw i64 %indvars.iv509, 1
  %404 = icmp slt i64 %indvars.iv.next510, %393
  br i1 %404, label %394, label %._crit_edge220

._crit_edge220:                                   ; preds = %401, %._crit_edge214
  %typed_outval42.1.lcssa = phi double [ %typed_outval42.0, %._crit_edge214 ], [ %403, %401 ]
  br i1 %8, label %405, label %.thread69

; <label>:405                                     ; preds = %._crit_edge220
  %406 = load i32* %9, align 4, !tbaa !2
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %9, align 4, !tbaa !2
  %408 = load i32* %10, align 4, !tbaa !2
  %409 = icmp slt i32 %407, %408
  br i1 %409, label %.backedge115, label %.preheader89

.preheader89:                                     ; preds = %405
  br i1 %11, label %.lr.ph223, label %.thread69

.lr.ph223:                                        ; preds = %.preheader89, %419
  %indvars.iv511 = phi i64 [ %indvars.iv.next512, %419 ], [ 2, %.preheader89 ]
  %410 = getelementptr inbounds i32* %iterator, i64 %indvars.iv511
  %411 = load i32* %410, align 4, !tbaa !2
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %410, align 4, !tbaa !2
  %413 = getelementptr inbounds i32* %to, i64 %indvars.iv511
  %414 = load i32* %413, align 4, !tbaa !2
  %415 = icmp slt i32 %412, %414
  br i1 %415, label %.thread68.preheader, label %419

.thread68.preheader:                              ; preds = %.lr.ph223
  %416 = trunc i64 %indvars.iv511 to i32
  %417 = icmp sgt i32 %416, 0
  br i1 %417, label %.lr.ph228, label %.backedge115

.lr.ph228:                                        ; preds = %.thread68.preheader
  %sext612 = shl i64 %indvars.iv511, 32
  %418 = ashr exact i64 %sext612, 32
  br label %.thread68

; <label>:419                                     ; preds = %.lr.ph223
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, 1
  %420 = icmp slt i64 %indvars.iv.next512, %5
  br i1 %420, label %.lr.ph223, label %.thread69

.thread68:                                        ; preds = %.lr.ph228, %.thread68
  %indvars.iv513 = phi i64 [ %418, %.lr.ph228 ], [ %indvars.iv.next514, %.thread68 ]
  %indvars.iv.next514 = add nsw i64 %indvars.iv513, -1
  %421 = getelementptr inbounds i32* %from, i64 %indvars.iv.next514
  %422 = load i32* %421, align 4, !tbaa !2
  %423 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next514
  store i32 %422, i32* %423, align 4, !tbaa !2
  %424 = icmp sgt i64 %indvars.iv513, 1
  br i1 %424, label %.thread68, label %.backedge115

.thread69:                                        ; preds = %._crit_edge220, %.preheader89, %419
  %indvars.iv.next516 = add nsw i64 %indvars.iv515, 1
  %425 = getelementptr inbounds double* %outvals, i64 %indvars.iv515
  store double %typed_outval42.1.lcssa, double* %425, align 8, !tbaa !9
  %426 = add nuw nsw i32 %_j38.0230, 1
  %427 = getelementptr inbounds double* %typed_vdata41.0231, i64 1
  %exitcond517 = icmp eq i32 %_j38.0230, %13
  br i1 %exitcond517, label %..loopexit130_crit_edge, label %.preheader116

; <label>:428                                     ; preds = %17
  br i1 %2, label %.preheader119.lr.ph, label %.loopexit123

.preheader119.lr.ph:                              ; preds = %428
  %429 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %430 = bitcast i8** %429 to x86_fp80**
  %431 = load x86_fp80** %430, align 8, !tbaa !6
  %432 = sext i32 %total_outvals.0395 to i64
  br label %.preheader119

.preheader119:                                    ; preds = %.thread71, %.preheader119.lr.ph
  %indvars.iv502 = phi i64 [ %432, %.preheader119.lr.ph ], [ %indvars.iv.next503, %.thread71 ]
  %typed_vdata47.0208 = phi x86_fp80* [ %431, %.preheader119.lr.ph ], [ %480, %.thread71 ]
  %_j44.0207 = phi i32 [ 0, %.preheader119.lr.ph ], [ %479, %.thread71 ]
  %433 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge118

.backedge118:                                     ; preds = %457, %.thread70.preheader, %.thread70, %.preheader119
  %typed_outval48.0 = phi x86_fp80 [ 0xK00000000000000000000, %.preheader119 ], [ %typed_outval48.1.lcssa, %.thread70 ], [ %typed_outval48.1.lcssa, %.thread70.preheader ], [ %typed_outval48.1.lcssa, %457 ]
  br i1 %8, label %.lr.ph190, label %._crit_edge191

.lr.ph190:                                        ; preds = %.backedge118, %.lr.ph190
  %indvars.iv492 = phi i64 [ %indvars.iv.next493, %.lr.ph190 ], [ 1, %.backedge118 ]
  %_vindex46.1188 = phi i32 [ %439, %.lr.ph190 ], [ 0, %.backedge118 ]
  %434 = getelementptr inbounds i32* %iterator, i64 %indvars.iv492
  %435 = load i32* %434, align 4, !tbaa !2
  %436 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv492
  %437 = load i32* %436, align 4, !tbaa !2
  %438 = mul nsw i32 %437, %435
  %439 = add nsw i32 %438, %_vindex46.1188
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1
  %lftr.wideiv494 = trunc i64 %indvars.iv492 to i32
  %exitcond495 = icmp eq i32 %lftr.wideiv494, %12
  br i1 %exitcond495, label %._crit_edge191, label %.lr.ph190

._crit_edge191:                                   ; preds = %.lr.ph190, %.backedge118
  %_vindex46.1.lcssa = phi i32 [ 0, %.backedge118 ], [ %439, %.lr.ph190 ]
  %440 = load i32* %from, align 4, !tbaa !2
  %441 = load i32* %to, align 4, !tbaa !2
  %442 = icmp slt i32 %440, %441
  br i1 %442, label %.lr.ph196, label %._crit_edge197

.lr.ph196:                                        ; preds = %._crit_edge191
  %443 = sext i32 %440 to i64
  %444 = sext i32 %_vindex46.1.lcssa to i64
  %445 = sext i32 %441 to i64
  br label %446

; <label>:446                                     ; preds = %.lr.ph196, %453
  %indvars.iv496 = phi i64 [ %443, %.lr.ph196 ], [ %indvars.iv.next497, %453 ]
  %typed_outval48.1194 = phi x86_fp80 [ %typed_outval48.0, %.lr.ph196 ], [ %455, %453 ]
  %447 = add nsw i64 %indvars.iv496, %444
  %448 = getelementptr inbounds x86_fp80* %typed_vdata47.0208, i64 %447
  %449 = load x86_fp80* %448, align 16, !tbaa !17
  %450 = fcmp olt x86_fp80 %449, 0xK00000000000000000000
  br i1 %450, label %451, label %453

; <label>:451                                     ; preds = %446
  %452 = fsub x86_fp80 0xK80000000000000000000, %449
  br label %453

; <label>:453                                     ; preds = %446, %451
  %454 = phi x86_fp80 [ %452, %451 ], [ %449, %446 ]
  %455 = fadd x86_fp80 %typed_outval48.1194, %454
  %indvars.iv.next497 = add nsw i64 %indvars.iv496, 1
  %456 = icmp slt i64 %indvars.iv.next497, %445
  br i1 %456, label %446, label %._crit_edge197

._crit_edge197:                                   ; preds = %453, %._crit_edge191
  %typed_outval48.1.lcssa = phi x86_fp80 [ %typed_outval48.0, %._crit_edge191 ], [ %455, %453 ]
  br i1 %8, label %457, label %.thread71

; <label>:457                                     ; preds = %._crit_edge197
  %458 = load i32* %9, align 4, !tbaa !2
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %9, align 4, !tbaa !2
  %460 = load i32* %10, align 4, !tbaa !2
  %461 = icmp slt i32 %459, %460
  br i1 %461, label %.backedge118, label %.preheader91

.preheader91:                                     ; preds = %457
  br i1 %11, label %.lr.ph200, label %.thread71

.lr.ph200:                                        ; preds = %.preheader91, %471
  %indvars.iv498 = phi i64 [ %indvars.iv.next499, %471 ], [ 2, %.preheader91 ]
  %462 = getelementptr inbounds i32* %iterator, i64 %indvars.iv498
  %463 = load i32* %462, align 4, !tbaa !2
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %462, align 4, !tbaa !2
  %465 = getelementptr inbounds i32* %to, i64 %indvars.iv498
  %466 = load i32* %465, align 4, !tbaa !2
  %467 = icmp slt i32 %464, %466
  br i1 %467, label %.thread70.preheader, label %471

.thread70.preheader:                              ; preds = %.lr.ph200
  %468 = trunc i64 %indvars.iv498 to i32
  %469 = icmp sgt i32 %468, 0
  br i1 %469, label %.lr.ph205, label %.backedge118

.lr.ph205:                                        ; preds = %.thread70.preheader
  %sext611 = shl i64 %indvars.iv498, 32
  %470 = ashr exact i64 %sext611, 32
  br label %.thread70

; <label>:471                                     ; preds = %.lr.ph200
  %indvars.iv.next499 = add nuw nsw i64 %indvars.iv498, 1
  %472 = icmp slt i64 %indvars.iv.next499, %5
  br i1 %472, label %.lr.ph200, label %.thread71

.thread70:                                        ; preds = %.lr.ph205, %.thread70
  %indvars.iv500 = phi i64 [ %470, %.lr.ph205 ], [ %indvars.iv.next501, %.thread70 ]
  %indvars.iv.next501 = add nsw i64 %indvars.iv500, -1
  %473 = getelementptr inbounds i32* %from, i64 %indvars.iv.next501
  %474 = load i32* %473, align 4, !tbaa !2
  %475 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next501
  store i32 %474, i32* %475, align 4, !tbaa !2
  %476 = icmp sgt i64 %indvars.iv500, 1
  br i1 %476, label %.thread70, label %.backedge118

.thread71:                                        ; preds = %._crit_edge197, %.preheader91, %471
  %477 = fptrunc x86_fp80 %typed_outval48.1.lcssa to double
  %indvars.iv.next503 = add nsw i64 %indvars.iv502, 1
  %478 = getelementptr inbounds double* %outvals, i64 %indvars.iv502
  store double %477, double* %478, align 8, !tbaa !9
  %479 = add nuw nsw i32 %_j44.0207, 1
  %480 = getelementptr inbounds x86_fp80* %typed_vdata47.0208, i64 1
  %exitcond504 = icmp eq i32 %_j44.0207, %13
  br i1 %exitcond504, label %..loopexit131_crit_edge, label %.preheader119

; <label>:481                                     ; preds = %17
  br i1 %2, label %.preheader122.lr.ph, label %.loopexit123

.preheader122.lr.ph:                              ; preds = %481
  %482 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %483 = bitcast i8** %482 to %struct.CCTK_COMPLEX16**
  %484 = load %struct.CCTK_COMPLEX16** %483, align 8, !tbaa !6
  %485 = sext i32 %total_outvals.0395 to i64
  br label %.preheader122

.preheader122:                                    ; preds = %.thread73, %.preheader122.lr.ph
  %indvars.iv489 = phi i64 [ %485, %.preheader122.lr.ph ], [ %indvars.iv.next490, %.thread73 ]
  %typed_vdata53.0183 = phi %struct.CCTK_COMPLEX16* [ %484, %.preheader122.lr.ph ], [ %531, %.thread73 ]
  %_j50.0182 = phi i32 [ 0, %.preheader122.lr.ph ], [ %530, %.thread73 ]
  %486 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge121

.backedge121:                                     ; preds = %509, %.thread72.preheader, %.thread72, %.preheader122
  %typed_outval54.0 = phi double [ 0.000000e+00, %.preheader122 ], [ %typed_outval54.1.lcssa, %.thread72 ], [ %typed_outval54.1.lcssa, %.thread72.preheader ], [ %typed_outval54.1.lcssa, %509 ]
  br i1 %8, label %.lr.ph167, label %._crit_edge

.lr.ph167:                                        ; preds = %.backedge121, %.lr.ph167
  %indvars.iv479 = phi i64 [ %indvars.iv.next480, %.lr.ph167 ], [ 1, %.backedge121 ]
  %_vindex52.1166 = phi i32 [ %492, %.lr.ph167 ], [ 0, %.backedge121 ]
  %487 = getelementptr inbounds i32* %iterator, i64 %indvars.iv479
  %488 = load i32* %487, align 4, !tbaa !2
  %489 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv479
  %490 = load i32* %489, align 4, !tbaa !2
  %491 = mul nsw i32 %490, %488
  %492 = add nsw i32 %491, %_vindex52.1166
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1
  %lftr.wideiv481 = trunc i64 %indvars.iv479 to i32
  %exitcond482 = icmp eq i32 %lftr.wideiv481, %12
  br i1 %exitcond482, label %._crit_edge, label %.lr.ph167

._crit_edge:                                      ; preds = %.lr.ph167, %.backedge121
  %_vindex52.1.lcssa = phi i32 [ 0, %.backedge121 ], [ %492, %.lr.ph167 ]
  %493 = load i32* %from, align 4, !tbaa !2
  %494 = load i32* %to, align 4, !tbaa !2
  %495 = icmp slt i32 %493, %494
  br i1 %495, label %.lr.ph171, label %._crit_edge172

.lr.ph171:                                        ; preds = %._crit_edge
  %496 = sext i32 %493 to i64
  %497 = sext i32 %_vindex52.1.lcssa to i64
  br label %498

; <label>:498                                     ; preds = %.lr.ph171, %498
  %indvars.iv483 = phi i64 [ %496, %.lr.ph171 ], [ %indvars.iv.next484, %498 ]
  %typed_outval54.1169 = phi double [ %typed_outval54.0, %.lr.ph171 ], [ %505, %498 ]
  %499 = add nsw i64 %indvars.iv483, %497
  %500 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_vdata53.0183, i64 %499, i32 0
  %501 = load double* %500, align 1
  %502 = getelementptr %struct.CCTK_COMPLEX16* %typed_vdata53.0183, i64 %499, i32 1
  %503 = load double* %502, align 1
  %504 = tail call double @CCTK_Cmplx16Abs(double %501, double %503) #5
  %505 = fadd double %typed_outval54.1169, %504
  %indvars.iv.next484 = add nsw i64 %indvars.iv483, 1
  %506 = load i32* %to, align 4, !tbaa !2
  %507 = sext i32 %506 to i64
  %508 = icmp slt i64 %indvars.iv.next484, %507
  br i1 %508, label %498, label %._crit_edge172

._crit_edge172:                                   ; preds = %498, %._crit_edge
  %typed_outval54.1.lcssa = phi double [ %typed_outval54.0, %._crit_edge ], [ %505, %498 ]
  br i1 %8, label %509, label %.thread73

; <label>:509                                     ; preds = %._crit_edge172
  %510 = load i32* %9, align 4, !tbaa !2
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %9, align 4, !tbaa !2
  %512 = load i32* %10, align 4, !tbaa !2
  %513 = icmp slt i32 %511, %512
  br i1 %513, label %.backedge121, label %.preheader93

.preheader93:                                     ; preds = %509
  br i1 %11, label %.lr.ph175, label %.thread73

.lr.ph175:                                        ; preds = %.preheader93, %523
  %indvars.iv485 = phi i64 [ %indvars.iv.next486, %523 ], [ 2, %.preheader93 ]
  %514 = getelementptr inbounds i32* %iterator, i64 %indvars.iv485
  %515 = load i32* %514, align 4, !tbaa !2
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %514, align 4, !tbaa !2
  %517 = getelementptr inbounds i32* %to, i64 %indvars.iv485
  %518 = load i32* %517, align 4, !tbaa !2
  %519 = icmp slt i32 %516, %518
  br i1 %519, label %.thread72.preheader, label %523

.thread72.preheader:                              ; preds = %.lr.ph175
  %520 = trunc i64 %indvars.iv485 to i32
  %521 = icmp sgt i32 %520, 0
  br i1 %521, label %.lr.ph180, label %.backedge121

.lr.ph180:                                        ; preds = %.thread72.preheader
  %sext = shl i64 %indvars.iv485, 32
  %522 = ashr exact i64 %sext, 32
  br label %.thread72

; <label>:523                                     ; preds = %.lr.ph175
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1
  %524 = icmp slt i64 %indvars.iv.next486, %5
  br i1 %524, label %.lr.ph175, label %.thread73

.thread72:                                        ; preds = %.lr.ph180, %.thread72
  %indvars.iv487 = phi i64 [ %522, %.lr.ph180 ], [ %indvars.iv.next488, %.thread72 ]
  %indvars.iv.next488 = add nsw i64 %indvars.iv487, -1
  %525 = getelementptr inbounds i32* %from, i64 %indvars.iv.next488
  %526 = load i32* %525, align 4, !tbaa !2
  %527 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next488
  store i32 %526, i32* %527, align 4, !tbaa !2
  %528 = icmp sgt i64 %indvars.iv487, 1
  br i1 %528, label %.thread72, label %.backedge121

.thread73:                                        ; preds = %._crit_edge172, %.preheader93, %523
  %indvars.iv.next490 = add nsw i64 %indvars.iv489, 1
  %529 = getelementptr inbounds double* %outvals, i64 %indvars.iv489
  store double %typed_outval54.1.lcssa, double* %529, align 8, !tbaa !9
  %530 = add nuw nsw i32 %_j50.0182, 1
  %531 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_vdata53.0183, i64 1
  %exitcond491 = icmp eq i32 %_j50.0182, %13
  br i1 %exitcond491, label %..loopexit132_crit_edge, label %.preheader122

; <label>:532                                     ; preds = %17
  %533 = tail call i32 @CCTK_Warn(i32 1, i32 318, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str3, i64 0, i64 0)) #5
  br label %.loopexit

..loopexit123_crit_edge:                          ; preds = %.thread55
  %534 = add nsw i64 %15, %23
  %535 = trunc i64 %534 to i32
  br label %.loopexit123

..loopexit124_crit_edge:                          ; preds = %.thread57
  %536 = add nsw i64 %15, %71
  %537 = trunc i64 %536 to i32
  br label %.loopexit123

..loopexit125_crit_edge:                          ; preds = %.thread59
  %538 = add nsw i64 %15, %122
  %539 = trunc i64 %538 to i32
  br label %.loopexit123

..loopexit126_crit_edge:                          ; preds = %.thread61
  %540 = add nsw i64 %15, %173
  %541 = trunc i64 %540 to i32
  br label %.loopexit123

..loopexit127_crit_edge:                          ; preds = %.thread63
  %542 = add nsw i64 %15, %224
  %543 = trunc i64 %542 to i32
  br label %.loopexit123

..loopexit128_crit_edge:                          ; preds = %.thread65
  %544 = add nsw i64 %15, %275
  %545 = trunc i64 %544 to i32
  br label %.loopexit123

..loopexit129_crit_edge:                          ; preds = %.thread67
  %546 = add nsw i64 %15, %327
  %547 = trunc i64 %546 to i32
  br label %.loopexit123

..loopexit130_crit_edge:                          ; preds = %.thread69
  %548 = add nsw i64 %15, %380
  %549 = trunc i64 %548 to i32
  br label %.loopexit123

..loopexit131_crit_edge:                          ; preds = %.thread71
  %550 = add nsw i64 %15, %432
  %551 = trunc i64 %550 to i32
  br label %.loopexit123

..loopexit132_crit_edge:                          ; preds = %.thread73
  %552 = add nsw i64 %15, %485
  %553 = trunc i64 %552 to i32
  br label %.loopexit123

.loopexit123:                                     ; preds = %481, %..loopexit132_crit_edge, %428, %..loopexit131_crit_edge, %376, %..loopexit130_crit_edge, %323, %..loopexit129_crit_edge, %271, %..loopexit128_crit_edge, %220, %..loopexit127_crit_edge, %169, %..loopexit126_crit_edge, %118, %..loopexit125_crit_edge, %67, %..loopexit124_crit_edge, %20, %..loopexit123_crit_edge
  %total_outvals.11 = phi i32 [ %535, %..loopexit123_crit_edge ], [ %total_outvals.0395, %20 ], [ %537, %..loopexit124_crit_edge ], [ %total_outvals.0395, %67 ], [ %539, %..loopexit125_crit_edge ], [ %total_outvals.0395, %118 ], [ %541, %..loopexit126_crit_edge ], [ %total_outvals.0395, %169 ], [ %543, %..loopexit127_crit_edge ], [ %total_outvals.0395, %220 ], [ %545, %..loopexit128_crit_edge ], [ %total_outvals.0395, %271 ], [ %547, %..loopexit129_crit_edge ], [ %total_outvals.0395, %323 ], [ %549, %..loopexit130_crit_edge ], [ %total_outvals.0395, %376 ], [ %551, %..loopexit131_crit_edge ], [ %total_outvals.0395, %428 ], [ %553, %..loopexit132_crit_edge ], [ %total_outvals.0395, %481 ]
  %indvars.iv.next610 = add nuw nsw i64 %indvars.iv609, 1
  %554 = icmp slt i64 %indvars.iv.next610, %16
  br i1 %554, label %17, label %._crit_edge398

._crit_edge398:                                   ; preds = %.loopexit123, %0
  %total_outvals.0.lcssa = phi i32 [ 0, %0 ], [ %total_outvals.11, %.loopexit123 ]
  %555 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #5
  %556 = icmp slt i32 %proc, 0
  br i1 %556, label %.preheader, label %557

; <label>:557                                     ; preds = %._crit_edge398
  %558 = getelementptr inbounds %struct.PGH* %555, i64 0, i32 3
  %559 = load i32* %558, align 4, !tbaa !19
  %560 = icmp eq i32 %559, %proc
  %561 = icmp sgt i32 %total_outvals.0.lcssa, 0
  %or.cond = and i1 %560, %561
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %._crit_edge398
  %.old = icmp sgt i32 %total_outvals.0.lcssa, 0
  br i1 %.old, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %557, %.preheader
  %562 = sitofp i32 %num_points to double
  %563 = add i32 %total_outvals.0.lcssa, -1
  br label %564

; <label>:564                                     ; preds = %564, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %564 ]
  %565 = getelementptr inbounds double* %outvals, i64 %indvars.iv
  %566 = load double* %565, align 8, !tbaa !9
  %567 = fdiv double %566, %562
  store double %567, double* %565, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %563
  br i1 %exitcond, label %.loopexit, label %564

.loopexit:                                        ; preds = %564, %.preheader, %557, %532
  %.0 = phi i32 [ -1, %532 ], [ 0, %557 ], [ 0, %.preheader ], [ 0, %564 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ReductionNorm1GVs(%struct.cGH* %GH, i32 %proc, i32 %num_outvals, i32 %outtype, i8* %outvals, i32 %num_invars, i32* %invars) #1 {
  %1 = tail call i32 @PUGH_ReductionGVs(%struct.cGH* %GH, i32 %proc, i32 %num_invars, i32* %invars, i32 %outtype, i32 %num_outvals, i8* %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionNorm1) #5
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
!19 = !{!20, !3, i64 16}
!20 = !{!"PGH", !7, i64 0, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !7, i64 32, !3, i64 40, !7, i64 48, !3, i64 56, !3, i64 60, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !7, i64 120, !7, i64 128, !7, i64 136}