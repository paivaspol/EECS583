; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.CCTK_COMPLEX16 = type { double, double }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }

@.str = private unnamed_addr constant [61 x i8] c"$Id: ReductionNorm2.c,v 1.4 2001/05/14 17:06:20 tradke Exp $\00", align 1
@.str1 = private unnamed_addr constant [87 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str3 = private unnamed_addr constant [43 x i8] c"PUGH_ReductionNorm2: Unknown variable type\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHReduce_ReductionNorm2_c() #0 {
  ret i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ReductionNorm2Arrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %dims, i32 %num_inarrays, i8** %inarrays, i32 %intype, i32 %num_outvals, i8* %outvals, i32 %outtype) #1 {
  %1 = tail call i32 @PUGH_ReductionArrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %dims, i32 %intype, i32 %num_inarrays, i8** %inarrays, i32 %outtype, i32 %num_outvals, i8* %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionNorm2) #6
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @PUGH_ReductionArrays(%struct.cGH*, i32, i32, i32*, i32, i32, i8**, i32, i32, i8*, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @PUGH_ReductionNorm2(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %from, i32* %to, i32* %iterator, i32* nocapture readonly %points_per_dim, i32 %num_points, i32 %num_inarrays, i32* nocapture readonly %intypes, i8** nocapture readonly %inarrays, i32 %num_outvals, double* nocapture %outvals) #1 {
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
  switch i32 %19, label %510 [
    i32 1, label %20
    i32 2, label %68
    i32 3, label %117
    i32 4, label %166
    i32 5, label %215
    i32 6, label %264
    i32 7, label %312
    i32 8, label %361
    i32 9, label %409
    i32 10, label %458
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
  %typed_vdata.0392 = phi i8* [ %22, %.preheader95.lr.ph ], [ %67, %.thread55 ]
  %_j.0391 = phi i32 [ 0, %.preheader95.lr.ph ], [ %66, %.thread55 ]
  %24 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6
  br label %.backedge

.backedge:                                        ; preds = %44, %.thread.preheader, %.thread, %.preheader95
  %typed_outval.0 = phi i8 [ 0, %.preheader95 ], [ %typed_outval.1.lcssa, %.thread ], [ %typed_outval.1.lcssa, %.thread.preheader ], [ %typed_outval.1.lcssa, %44 ]
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
  %typed_outval.1378 = phi i8 [ %typed_outval.0, %.lr.ph380 ], [ %42, %37 ]
  %38 = add nsw i64 %indvars.iv600, %35
  %39 = getelementptr inbounds i8* %typed_vdata.0392, i64 %38
  %40 = load i8* %39, align 1, !tbaa !8
  %41 = mul i8 %40, %40
  %42 = add i8 %41, %typed_outval.1378
  %indvars.iv.next601 = add nsw i64 %indvars.iv600, 1
  %43 = icmp slt i64 %indvars.iv.next601, %36
  br i1 %43, label %37, label %._crit_edge381

._crit_edge381:                                   ; preds = %37, %._crit_edge375
  %typed_outval.1.lcssa = phi i8 [ %typed_outval.0, %._crit_edge375 ], [ %42, %37 ]
  br i1 %8, label %44, label %.thread55

; <label>:44                                      ; preds = %._crit_edge381
  %45 = load i32* %9, align 4, !tbaa !2
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4, !tbaa !2
  %47 = load i32* %10, align 4, !tbaa !2
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %.backedge, label %.preheader75

.preheader75:                                     ; preds = %44
  br i1 %11, label %.lr.ph384, label %.thread55

.lr.ph384:                                        ; preds = %.preheader75, %58
  %indvars.iv602 = phi i64 [ %indvars.iv.next603, %58 ], [ 2, %.preheader75 ]
  %49 = getelementptr inbounds i32* %iterator, i64 %indvars.iv602
  %50 = load i32* %49, align 4, !tbaa !2
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4, !tbaa !2
  %52 = getelementptr inbounds i32* %to, i64 %indvars.iv602
  %53 = load i32* %52, align 4, !tbaa !2
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %.thread.preheader, label %58

.thread.preheader:                                ; preds = %.lr.ph384
  %55 = trunc i64 %indvars.iv602 to i32
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %.lr.ph389, label %.backedge

.lr.ph389:                                        ; preds = %.thread.preheader
  %sext619 = shl i64 %indvars.iv602, 32
  %57 = ashr exact i64 %sext619, 32
  br label %.thread

; <label>:58                                      ; preds = %.lr.ph384
  %indvars.iv.next603 = add nuw nsw i64 %indvars.iv602, 1
  %59 = icmp slt i64 %indvars.iv.next603, %5
  br i1 %59, label %.lr.ph384, label %.thread55

.thread:                                          ; preds = %.lr.ph389, %.thread
  %indvars.iv604 = phi i64 [ %57, %.lr.ph389 ], [ %indvars.iv.next605, %.thread ]
  %indvars.iv.next605 = add nsw i64 %indvars.iv604, -1
  %60 = getelementptr inbounds i32* %from, i64 %indvars.iv.next605
  %61 = load i32* %60, align 4, !tbaa !2
  %62 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next605
  store i32 %61, i32* %62, align 4, !tbaa !2
  %63 = icmp sgt i64 %indvars.iv604, 1
  br i1 %63, label %.thread, label %.backedge

.thread55:                                        ; preds = %._crit_edge381, %.preheader75, %58
  %64 = uitofp i8 %typed_outval.1.lcssa to double
  %indvars.iv.next607 = add nsw i64 %indvars.iv606, 1
  %65 = getelementptr inbounds double* %outvals, i64 %indvars.iv606
  store double %64, double* %65, align 8, !tbaa !9
  %66 = add nuw nsw i32 %_j.0391, 1
  %67 = getelementptr inbounds i8* %typed_vdata.0392, i64 1
  %exitcond608 = icmp eq i32 %_j.0391, %13
  br i1 %exitcond608, label %..loopexit123_crit_edge, label %.preheader95

; <label>:68                                      ; preds = %17
  br i1 %2, label %.preheader98.lr.ph, label %.loopexit123

.preheader98.lr.ph:                               ; preds = %68
  %69 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %70 = bitcast i8** %69 to i32**
  %71 = load i32** %70, align 8, !tbaa !6
  %72 = sext i32 %total_outvals.0395 to i64
  br label %.preheader98

.preheader98:                                     ; preds = %.thread57, %.preheader98.lr.ph
  %indvars.iv593 = phi i64 [ %72, %.preheader98.lr.ph ], [ %indvars.iv.next594, %.thread57 ]
  %typed_vdata5.0369 = phi i32* [ %71, %.preheader98.lr.ph ], [ %116, %.thread57 ]
  %_j2.0368 = phi i32 [ 0, %.preheader98.lr.ph ], [ %115, %.thread57 ]
  %73 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6
  br label %.backedge97

.backedge97:                                      ; preds = %93, %.thread56.preheader, %.thread56, %.preheader98
  %typed_outval6.0 = phi i32 [ 0, %.preheader98 ], [ %typed_outval6.1.lcssa, %.thread56 ], [ %typed_outval6.1.lcssa, %.thread56.preheader ], [ %typed_outval6.1.lcssa, %93 ]
  br i1 %8, label %.lr.ph351, label %._crit_edge352

.lr.ph351:                                        ; preds = %.backedge97, %.lr.ph351
  %indvars.iv583 = phi i64 [ %indvars.iv.next584, %.lr.ph351 ], [ 1, %.backedge97 ]
  %_vindex4.1349 = phi i32 [ %79, %.lr.ph351 ], [ 0, %.backedge97 ]
  %74 = getelementptr inbounds i32* %iterator, i64 %indvars.iv583
  %75 = load i32* %74, align 4, !tbaa !2
  %76 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv583
  %77 = load i32* %76, align 4, !tbaa !2
  %78 = mul nsw i32 %77, %75
  %79 = add nsw i32 %78, %_vindex4.1349
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1
  %lftr.wideiv585 = trunc i64 %indvars.iv583 to i32
  %exitcond586 = icmp eq i32 %lftr.wideiv585, %12
  br i1 %exitcond586, label %._crit_edge352, label %.lr.ph351

._crit_edge352:                                   ; preds = %.lr.ph351, %.backedge97
  %_vindex4.1.lcssa = phi i32 [ 0, %.backedge97 ], [ %79, %.lr.ph351 ]
  %80 = load i32* %from, align 4, !tbaa !2
  %81 = load i32* %to, align 4, !tbaa !2
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %.lr.ph357, label %._crit_edge358

.lr.ph357:                                        ; preds = %._crit_edge352
  %83 = sext i32 %80 to i64
  %84 = sext i32 %_vindex4.1.lcssa to i64
  %85 = sext i32 %81 to i64
  br label %86

; <label>:86                                      ; preds = %.lr.ph357, %86
  %indvars.iv587 = phi i64 [ %83, %.lr.ph357 ], [ %indvars.iv.next588, %86 ]
  %typed_outval6.1355 = phi i32 [ %typed_outval6.0, %.lr.ph357 ], [ %91, %86 ]
  %87 = add nsw i64 %indvars.iv587, %84
  %88 = getelementptr inbounds i32* %typed_vdata5.0369, i64 %87
  %89 = load i32* %88, align 4, !tbaa !2
  %90 = mul nsw i32 %89, %89
  %91 = add nsw i32 %90, %typed_outval6.1355
  %indvars.iv.next588 = add nsw i64 %indvars.iv587, 1
  %92 = icmp slt i64 %indvars.iv.next588, %85
  br i1 %92, label %86, label %._crit_edge358

._crit_edge358:                                   ; preds = %86, %._crit_edge352
  %typed_outval6.1.lcssa = phi i32 [ %typed_outval6.0, %._crit_edge352 ], [ %91, %86 ]
  br i1 %8, label %93, label %.thread57

; <label>:93                                      ; preds = %._crit_edge358
  %94 = load i32* %9, align 4, !tbaa !2
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4, !tbaa !2
  %96 = load i32* %10, align 4, !tbaa !2
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %.backedge97, label %.preheader77

.preheader77:                                     ; preds = %93
  br i1 %11, label %.lr.ph361, label %.thread57

.lr.ph361:                                        ; preds = %.preheader77, %107
  %indvars.iv589 = phi i64 [ %indvars.iv.next590, %107 ], [ 2, %.preheader77 ]
  %98 = getelementptr inbounds i32* %iterator, i64 %indvars.iv589
  %99 = load i32* %98, align 4, !tbaa !2
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4, !tbaa !2
  %101 = getelementptr inbounds i32* %to, i64 %indvars.iv589
  %102 = load i32* %101, align 4, !tbaa !2
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %.thread56.preheader, label %107

.thread56.preheader:                              ; preds = %.lr.ph361
  %104 = trunc i64 %indvars.iv589 to i32
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %.lr.ph366, label %.backedge97

.lr.ph366:                                        ; preds = %.thread56.preheader
  %sext618 = shl i64 %indvars.iv589, 32
  %106 = ashr exact i64 %sext618, 32
  br label %.thread56

; <label>:107                                     ; preds = %.lr.ph361
  %indvars.iv.next590 = add nuw nsw i64 %indvars.iv589, 1
  %108 = icmp slt i64 %indvars.iv.next590, %5
  br i1 %108, label %.lr.ph361, label %.thread57

.thread56:                                        ; preds = %.lr.ph366, %.thread56
  %indvars.iv591 = phi i64 [ %106, %.lr.ph366 ], [ %indvars.iv.next592, %.thread56 ]
  %indvars.iv.next592 = add nsw i64 %indvars.iv591, -1
  %109 = getelementptr inbounds i32* %from, i64 %indvars.iv.next592
  %110 = load i32* %109, align 4, !tbaa !2
  %111 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next592
  store i32 %110, i32* %111, align 4, !tbaa !2
  %112 = icmp sgt i64 %indvars.iv591, 1
  br i1 %112, label %.thread56, label %.backedge97

.thread57:                                        ; preds = %._crit_edge358, %.preheader77, %107
  %113 = sitofp i32 %typed_outval6.1.lcssa to double
  %indvars.iv.next594 = add nsw i64 %indvars.iv593, 1
  %114 = getelementptr inbounds double* %outvals, i64 %indvars.iv593
  store double %113, double* %114, align 8, !tbaa !9
  %115 = add nuw nsw i32 %_j2.0368, 1
  %116 = getelementptr inbounds i32* %typed_vdata5.0369, i64 1
  %exitcond595 = icmp eq i32 %_j2.0368, %13
  br i1 %exitcond595, label %..loopexit124_crit_edge, label %.preheader98

; <label>:117                                     ; preds = %17
  br i1 %2, label %.preheader101.lr.ph, label %.loopexit123

.preheader101.lr.ph:                              ; preds = %117
  %118 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %119 = bitcast i8** %118 to i16**
  %120 = load i16** %119, align 8, !tbaa !6
  %121 = sext i32 %total_outvals.0395 to i64
  br label %.preheader101

.preheader101:                                    ; preds = %.thread59, %.preheader101.lr.ph
  %indvars.iv580 = phi i64 [ %121, %.preheader101.lr.ph ], [ %indvars.iv.next581, %.thread59 ]
  %typed_vdata11.0346 = phi i16* [ %120, %.preheader101.lr.ph ], [ %165, %.thread59 ]
  %_j8.0345 = phi i32 [ 0, %.preheader101.lr.ph ], [ %164, %.thread59 ]
  %122 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6
  br label %.backedge100

.backedge100:                                     ; preds = %142, %.thread58.preheader, %.thread58, %.preheader101
  %typed_outval12.0 = phi i16 [ 0, %.preheader101 ], [ %typed_outval12.1.lcssa, %.thread58 ], [ %typed_outval12.1.lcssa, %.thread58.preheader ], [ %typed_outval12.1.lcssa, %142 ]
  br i1 %8, label %.lr.ph328, label %._crit_edge329

.lr.ph328:                                        ; preds = %.backedge100, %.lr.ph328
  %indvars.iv570 = phi i64 [ %indvars.iv.next571, %.lr.ph328 ], [ 1, %.backedge100 ]
  %_vindex10.1326 = phi i32 [ %128, %.lr.ph328 ], [ 0, %.backedge100 ]
  %123 = getelementptr inbounds i32* %iterator, i64 %indvars.iv570
  %124 = load i32* %123, align 4, !tbaa !2
  %125 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv570
  %126 = load i32* %125, align 4, !tbaa !2
  %127 = mul nsw i32 %126, %124
  %128 = add nsw i32 %127, %_vindex10.1326
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1
  %lftr.wideiv572 = trunc i64 %indvars.iv570 to i32
  %exitcond573 = icmp eq i32 %lftr.wideiv572, %12
  br i1 %exitcond573, label %._crit_edge329, label %.lr.ph328

._crit_edge329:                                   ; preds = %.lr.ph328, %.backedge100
  %_vindex10.1.lcssa = phi i32 [ 0, %.backedge100 ], [ %128, %.lr.ph328 ]
  %129 = load i32* %from, align 4, !tbaa !2
  %130 = load i32* %to, align 4, !tbaa !2
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %.lr.ph334, label %._crit_edge335

.lr.ph334:                                        ; preds = %._crit_edge329
  %132 = sext i32 %129 to i64
  %133 = sext i32 %_vindex10.1.lcssa to i64
  %134 = sext i32 %130 to i64
  br label %135

; <label>:135                                     ; preds = %.lr.ph334, %135
  %indvars.iv574 = phi i64 [ %132, %.lr.ph334 ], [ %indvars.iv.next575, %135 ]
  %typed_outval12.1332 = phi i16 [ %typed_outval12.0, %.lr.ph334 ], [ %140, %135 ]
  %136 = add nsw i64 %indvars.iv574, %133
  %137 = getelementptr inbounds i16* %typed_vdata11.0346, i64 %136
  %138 = load i16* %137, align 2, !tbaa !11
  %139 = mul i16 %138, %138
  %140 = add i16 %139, %typed_outval12.1332
  %indvars.iv.next575 = add nsw i64 %indvars.iv574, 1
  %141 = icmp slt i64 %indvars.iv.next575, %134
  br i1 %141, label %135, label %._crit_edge335

._crit_edge335:                                   ; preds = %135, %._crit_edge329
  %typed_outval12.1.lcssa = phi i16 [ %typed_outval12.0, %._crit_edge329 ], [ %140, %135 ]
  br i1 %8, label %142, label %.thread59

; <label>:142                                     ; preds = %._crit_edge335
  %143 = load i32* %9, align 4, !tbaa !2
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4, !tbaa !2
  %145 = load i32* %10, align 4, !tbaa !2
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %.backedge100, label %.preheader79

.preheader79:                                     ; preds = %142
  br i1 %11, label %.lr.ph338, label %.thread59

.lr.ph338:                                        ; preds = %.preheader79, %156
  %indvars.iv576 = phi i64 [ %indvars.iv.next577, %156 ], [ 2, %.preheader79 ]
  %147 = getelementptr inbounds i32* %iterator, i64 %indvars.iv576
  %148 = load i32* %147, align 4, !tbaa !2
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4, !tbaa !2
  %150 = getelementptr inbounds i32* %to, i64 %indvars.iv576
  %151 = load i32* %150, align 4, !tbaa !2
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %.thread58.preheader, label %156

.thread58.preheader:                              ; preds = %.lr.ph338
  %153 = trunc i64 %indvars.iv576 to i32
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %.lr.ph343, label %.backedge100

.lr.ph343:                                        ; preds = %.thread58.preheader
  %sext617 = shl i64 %indvars.iv576, 32
  %155 = ashr exact i64 %sext617, 32
  br label %.thread58

; <label>:156                                     ; preds = %.lr.ph338
  %indvars.iv.next577 = add nuw nsw i64 %indvars.iv576, 1
  %157 = icmp slt i64 %indvars.iv.next577, %5
  br i1 %157, label %.lr.ph338, label %.thread59

.thread58:                                        ; preds = %.lr.ph343, %.thread58
  %indvars.iv578 = phi i64 [ %155, %.lr.ph343 ], [ %indvars.iv.next579, %.thread58 ]
  %indvars.iv.next579 = add nsw i64 %indvars.iv578, -1
  %158 = getelementptr inbounds i32* %from, i64 %indvars.iv.next579
  %159 = load i32* %158, align 4, !tbaa !2
  %160 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next579
  store i32 %159, i32* %160, align 4, !tbaa !2
  %161 = icmp sgt i64 %indvars.iv578, 1
  br i1 %161, label %.thread58, label %.backedge100

.thread59:                                        ; preds = %._crit_edge335, %.preheader79, %156
  %162 = sitofp i16 %typed_outval12.1.lcssa to double
  %indvars.iv.next581 = add nsw i64 %indvars.iv580, 1
  %163 = getelementptr inbounds double* %outvals, i64 %indvars.iv580
  store double %162, double* %163, align 8, !tbaa !9
  %164 = add nuw nsw i32 %_j8.0345, 1
  %165 = getelementptr inbounds i16* %typed_vdata11.0346, i64 1
  %exitcond582 = icmp eq i32 %_j8.0345, %13
  br i1 %exitcond582, label %..loopexit125_crit_edge, label %.preheader101

; <label>:166                                     ; preds = %17
  br i1 %2, label %.preheader104.lr.ph, label %.loopexit123

.preheader104.lr.ph:                              ; preds = %166
  %167 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %168 = bitcast i8** %167 to i32**
  %169 = load i32** %168, align 8, !tbaa !6
  %170 = sext i32 %total_outvals.0395 to i64
  br label %.preheader104

.preheader104:                                    ; preds = %.thread61, %.preheader104.lr.ph
  %indvars.iv567 = phi i64 [ %170, %.preheader104.lr.ph ], [ %indvars.iv.next568, %.thread61 ]
  %typed_vdata17.0323 = phi i32* [ %169, %.preheader104.lr.ph ], [ %214, %.thread61 ]
  %_j14.0322 = phi i32 [ 0, %.preheader104.lr.ph ], [ %213, %.thread61 ]
  %171 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6
  br label %.backedge103

.backedge103:                                     ; preds = %191, %.thread60.preheader, %.thread60, %.preheader104
  %typed_outval18.0 = phi i32 [ 0, %.preheader104 ], [ %typed_outval18.1.lcssa, %.thread60 ], [ %typed_outval18.1.lcssa, %.thread60.preheader ], [ %typed_outval18.1.lcssa, %191 ]
  br i1 %8, label %.lr.ph305, label %._crit_edge306

.lr.ph305:                                        ; preds = %.backedge103, %.lr.ph305
  %indvars.iv557 = phi i64 [ %indvars.iv.next558, %.lr.ph305 ], [ 1, %.backedge103 ]
  %_vindex16.1303 = phi i32 [ %177, %.lr.ph305 ], [ 0, %.backedge103 ]
  %172 = getelementptr inbounds i32* %iterator, i64 %indvars.iv557
  %173 = load i32* %172, align 4, !tbaa !2
  %174 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv557
  %175 = load i32* %174, align 4, !tbaa !2
  %176 = mul nsw i32 %175, %173
  %177 = add nsw i32 %176, %_vindex16.1303
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1
  %lftr.wideiv559 = trunc i64 %indvars.iv557 to i32
  %exitcond560 = icmp eq i32 %lftr.wideiv559, %12
  br i1 %exitcond560, label %._crit_edge306, label %.lr.ph305

._crit_edge306:                                   ; preds = %.lr.ph305, %.backedge103
  %_vindex16.1.lcssa = phi i32 [ 0, %.backedge103 ], [ %177, %.lr.ph305 ]
  %178 = load i32* %from, align 4, !tbaa !2
  %179 = load i32* %to, align 4, !tbaa !2
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %.lr.ph311, label %._crit_edge312

.lr.ph311:                                        ; preds = %._crit_edge306
  %181 = sext i32 %178 to i64
  %182 = sext i32 %_vindex16.1.lcssa to i64
  %183 = sext i32 %179 to i64
  br label %184

; <label>:184                                     ; preds = %.lr.ph311, %184
  %indvars.iv561 = phi i64 [ %181, %.lr.ph311 ], [ %indvars.iv.next562, %184 ]
  %typed_outval18.1309 = phi i32 [ %typed_outval18.0, %.lr.ph311 ], [ %189, %184 ]
  %185 = add nsw i64 %indvars.iv561, %182
  %186 = getelementptr inbounds i32* %typed_vdata17.0323, i64 %185
  %187 = load i32* %186, align 4, !tbaa !2
  %188 = mul nsw i32 %187, %187
  %189 = add nsw i32 %188, %typed_outval18.1309
  %indvars.iv.next562 = add nsw i64 %indvars.iv561, 1
  %190 = icmp slt i64 %indvars.iv.next562, %183
  br i1 %190, label %184, label %._crit_edge312

._crit_edge312:                                   ; preds = %184, %._crit_edge306
  %typed_outval18.1.lcssa = phi i32 [ %typed_outval18.0, %._crit_edge306 ], [ %189, %184 ]
  br i1 %8, label %191, label %.thread61

; <label>:191                                     ; preds = %._crit_edge312
  %192 = load i32* %9, align 4, !tbaa !2
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %9, align 4, !tbaa !2
  %194 = load i32* %10, align 4, !tbaa !2
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %.backedge103, label %.preheader81

.preheader81:                                     ; preds = %191
  br i1 %11, label %.lr.ph315, label %.thread61

.lr.ph315:                                        ; preds = %.preheader81, %205
  %indvars.iv563 = phi i64 [ %indvars.iv.next564, %205 ], [ 2, %.preheader81 ]
  %196 = getelementptr inbounds i32* %iterator, i64 %indvars.iv563
  %197 = load i32* %196, align 4, !tbaa !2
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4, !tbaa !2
  %199 = getelementptr inbounds i32* %to, i64 %indvars.iv563
  %200 = load i32* %199, align 4, !tbaa !2
  %201 = icmp slt i32 %198, %200
  br i1 %201, label %.thread60.preheader, label %205

.thread60.preheader:                              ; preds = %.lr.ph315
  %202 = trunc i64 %indvars.iv563 to i32
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %.lr.ph320, label %.backedge103

.lr.ph320:                                        ; preds = %.thread60.preheader
  %sext616 = shl i64 %indvars.iv563, 32
  %204 = ashr exact i64 %sext616, 32
  br label %.thread60

; <label>:205                                     ; preds = %.lr.ph315
  %indvars.iv.next564 = add nuw nsw i64 %indvars.iv563, 1
  %206 = icmp slt i64 %indvars.iv.next564, %5
  br i1 %206, label %.lr.ph315, label %.thread61

.thread60:                                        ; preds = %.lr.ph320, %.thread60
  %indvars.iv565 = phi i64 [ %204, %.lr.ph320 ], [ %indvars.iv.next566, %.thread60 ]
  %indvars.iv.next566 = add nsw i64 %indvars.iv565, -1
  %207 = getelementptr inbounds i32* %from, i64 %indvars.iv.next566
  %208 = load i32* %207, align 4, !tbaa !2
  %209 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next566
  store i32 %208, i32* %209, align 4, !tbaa !2
  %210 = icmp sgt i64 %indvars.iv565, 1
  br i1 %210, label %.thread60, label %.backedge103

.thread61:                                        ; preds = %._crit_edge312, %.preheader81, %205
  %211 = sitofp i32 %typed_outval18.1.lcssa to double
  %indvars.iv.next568 = add nsw i64 %indvars.iv567, 1
  %212 = getelementptr inbounds double* %outvals, i64 %indvars.iv567
  store double %211, double* %212, align 8, !tbaa !9
  %213 = add nuw nsw i32 %_j14.0322, 1
  %214 = getelementptr inbounds i32* %typed_vdata17.0323, i64 1
  %exitcond569 = icmp eq i32 %_j14.0322, %13
  br i1 %exitcond569, label %..loopexit126_crit_edge, label %.preheader104

; <label>:215                                     ; preds = %17
  br i1 %2, label %.preheader107.lr.ph, label %.loopexit123

.preheader107.lr.ph:                              ; preds = %215
  %216 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %217 = bitcast i8** %216 to i64**
  %218 = load i64** %217, align 8, !tbaa !6
  %219 = sext i32 %total_outvals.0395 to i64
  br label %.preheader107

.preheader107:                                    ; preds = %.thread63, %.preheader107.lr.ph
  %indvars.iv554 = phi i64 [ %219, %.preheader107.lr.ph ], [ %indvars.iv.next555, %.thread63 ]
  %typed_vdata23.0300 = phi i64* [ %218, %.preheader107.lr.ph ], [ %263, %.thread63 ]
  %_j20.0299 = phi i32 [ 0, %.preheader107.lr.ph ], [ %262, %.thread63 ]
  %220 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6
  br label %.backedge106

.backedge106:                                     ; preds = %240, %.thread62.preheader, %.thread62, %.preheader107
  %typed_outval24.0 = phi i64 [ 0, %.preheader107 ], [ %typed_outval24.1.lcssa, %.thread62 ], [ %typed_outval24.1.lcssa, %.thread62.preheader ], [ %typed_outval24.1.lcssa, %240 ]
  br i1 %8, label %.lr.ph282, label %._crit_edge283

.lr.ph282:                                        ; preds = %.backedge106, %.lr.ph282
  %indvars.iv544 = phi i64 [ %indvars.iv.next545, %.lr.ph282 ], [ 1, %.backedge106 ]
  %_vindex22.1280 = phi i32 [ %226, %.lr.ph282 ], [ 0, %.backedge106 ]
  %221 = getelementptr inbounds i32* %iterator, i64 %indvars.iv544
  %222 = load i32* %221, align 4, !tbaa !2
  %223 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv544
  %224 = load i32* %223, align 4, !tbaa !2
  %225 = mul nsw i32 %224, %222
  %226 = add nsw i32 %225, %_vindex22.1280
  %indvars.iv.next545 = add nuw nsw i64 %indvars.iv544, 1
  %lftr.wideiv546 = trunc i64 %indvars.iv544 to i32
  %exitcond547 = icmp eq i32 %lftr.wideiv546, %12
  br i1 %exitcond547, label %._crit_edge283, label %.lr.ph282

._crit_edge283:                                   ; preds = %.lr.ph282, %.backedge106
  %_vindex22.1.lcssa = phi i32 [ 0, %.backedge106 ], [ %226, %.lr.ph282 ]
  %227 = load i32* %from, align 4, !tbaa !2
  %228 = load i32* %to, align 4, !tbaa !2
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %.lr.ph288, label %._crit_edge289

.lr.ph288:                                        ; preds = %._crit_edge283
  %230 = sext i32 %227 to i64
  %231 = sext i32 %_vindex22.1.lcssa to i64
  %232 = sext i32 %228 to i64
  br label %233

; <label>:233                                     ; preds = %.lr.ph288, %233
  %indvars.iv548 = phi i64 [ %230, %.lr.ph288 ], [ %indvars.iv.next549, %233 ]
  %typed_outval24.1286 = phi i64 [ %typed_outval24.0, %.lr.ph288 ], [ %238, %233 ]
  %234 = add nsw i64 %indvars.iv548, %231
  %235 = getelementptr inbounds i64* %typed_vdata23.0300, i64 %234
  %236 = load i64* %235, align 8, !tbaa !13
  %237 = mul nsw i64 %236, %236
  %238 = add nsw i64 %237, %typed_outval24.1286
  %indvars.iv.next549 = add nsw i64 %indvars.iv548, 1
  %239 = icmp slt i64 %indvars.iv.next549, %232
  br i1 %239, label %233, label %._crit_edge289

._crit_edge289:                                   ; preds = %233, %._crit_edge283
  %typed_outval24.1.lcssa = phi i64 [ %typed_outval24.0, %._crit_edge283 ], [ %238, %233 ]
  br i1 %8, label %240, label %.thread63

; <label>:240                                     ; preds = %._crit_edge289
  %241 = load i32* %9, align 4, !tbaa !2
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %9, align 4, !tbaa !2
  %243 = load i32* %10, align 4, !tbaa !2
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %.backedge106, label %.preheader83

.preheader83:                                     ; preds = %240
  br i1 %11, label %.lr.ph292, label %.thread63

.lr.ph292:                                        ; preds = %.preheader83, %254
  %indvars.iv550 = phi i64 [ %indvars.iv.next551, %254 ], [ 2, %.preheader83 ]
  %245 = getelementptr inbounds i32* %iterator, i64 %indvars.iv550
  %246 = load i32* %245, align 4, !tbaa !2
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4, !tbaa !2
  %248 = getelementptr inbounds i32* %to, i64 %indvars.iv550
  %249 = load i32* %248, align 4, !tbaa !2
  %250 = icmp slt i32 %247, %249
  br i1 %250, label %.thread62.preheader, label %254

.thread62.preheader:                              ; preds = %.lr.ph292
  %251 = trunc i64 %indvars.iv550 to i32
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %.lr.ph297, label %.backedge106

.lr.ph297:                                        ; preds = %.thread62.preheader
  %sext615 = shl i64 %indvars.iv550, 32
  %253 = ashr exact i64 %sext615, 32
  br label %.thread62

; <label>:254                                     ; preds = %.lr.ph292
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1
  %255 = icmp slt i64 %indvars.iv.next551, %5
  br i1 %255, label %.lr.ph292, label %.thread63

.thread62:                                        ; preds = %.lr.ph297, %.thread62
  %indvars.iv552 = phi i64 [ %253, %.lr.ph297 ], [ %indvars.iv.next553, %.thread62 ]
  %indvars.iv.next553 = add nsw i64 %indvars.iv552, -1
  %256 = getelementptr inbounds i32* %from, i64 %indvars.iv.next553
  %257 = load i32* %256, align 4, !tbaa !2
  %258 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next553
  store i32 %257, i32* %258, align 4, !tbaa !2
  %259 = icmp sgt i64 %indvars.iv552, 1
  br i1 %259, label %.thread62, label %.backedge106

.thread63:                                        ; preds = %._crit_edge289, %.preheader83, %254
  %260 = sitofp i64 %typed_outval24.1.lcssa to double
  %indvars.iv.next555 = add nsw i64 %indvars.iv554, 1
  %261 = getelementptr inbounds double* %outvals, i64 %indvars.iv554
  store double %260, double* %261, align 8, !tbaa !9
  %262 = add nuw nsw i32 %_j20.0299, 1
  %263 = getelementptr inbounds i64* %typed_vdata23.0300, i64 1
  %exitcond556 = icmp eq i32 %_j20.0299, %13
  br i1 %exitcond556, label %..loopexit127_crit_edge, label %.preheader107

; <label>:264                                     ; preds = %17
  br i1 %2, label %.preheader110.lr.ph, label %.loopexit123

.preheader110.lr.ph:                              ; preds = %264
  %265 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %266 = bitcast i8** %265 to double**
  %267 = load double** %266, align 8, !tbaa !6
  %268 = sext i32 %total_outvals.0395 to i64
  br label %.preheader110

.preheader110:                                    ; preds = %.thread65, %.preheader110.lr.ph
  %indvars.iv541 = phi i64 [ %268, %.preheader110.lr.ph ], [ %indvars.iv.next542, %.thread65 ]
  %typed_vdata29.0277 = phi double* [ %267, %.preheader110.lr.ph ], [ %311, %.thread65 ]
  %_j26.0276 = phi i32 [ 0, %.preheader110.lr.ph ], [ %310, %.thread65 ]
  %269 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6
  br label %.backedge109

.backedge109:                                     ; preds = %289, %.thread64.preheader, %.thread64, %.preheader110
  %typed_outval30.0 = phi double [ 0.000000e+00, %.preheader110 ], [ %typed_outval30.1.lcssa, %.thread64 ], [ %typed_outval30.1.lcssa, %.thread64.preheader ], [ %typed_outval30.1.lcssa, %289 ]
  br i1 %8, label %.lr.ph259, label %._crit_edge260

.lr.ph259:                                        ; preds = %.backedge109, %.lr.ph259
  %indvars.iv531 = phi i64 [ %indvars.iv.next532, %.lr.ph259 ], [ 1, %.backedge109 ]
  %_vindex28.1257 = phi i32 [ %275, %.lr.ph259 ], [ 0, %.backedge109 ]
  %270 = getelementptr inbounds i32* %iterator, i64 %indvars.iv531
  %271 = load i32* %270, align 4, !tbaa !2
  %272 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv531
  %273 = load i32* %272, align 4, !tbaa !2
  %274 = mul nsw i32 %273, %271
  %275 = add nsw i32 %274, %_vindex28.1257
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1
  %lftr.wideiv533 = trunc i64 %indvars.iv531 to i32
  %exitcond534 = icmp eq i32 %lftr.wideiv533, %12
  br i1 %exitcond534, label %._crit_edge260, label %.lr.ph259

._crit_edge260:                                   ; preds = %.lr.ph259, %.backedge109
  %_vindex28.1.lcssa = phi i32 [ 0, %.backedge109 ], [ %275, %.lr.ph259 ]
  %276 = load i32* %from, align 4, !tbaa !2
  %277 = load i32* %to, align 4, !tbaa !2
  %278 = icmp slt i32 %276, %277
  br i1 %278, label %.lr.ph265, label %._crit_edge266

.lr.ph265:                                        ; preds = %._crit_edge260
  %279 = sext i32 %276 to i64
  %280 = sext i32 %_vindex28.1.lcssa to i64
  %281 = sext i32 %277 to i64
  br label %282

; <label>:282                                     ; preds = %.lr.ph265, %282
  %indvars.iv535 = phi i64 [ %279, %.lr.ph265 ], [ %indvars.iv.next536, %282 ]
  %typed_outval30.1263 = phi double [ %typed_outval30.0, %.lr.ph265 ], [ %287, %282 ]
  %283 = add nsw i64 %indvars.iv535, %280
  %284 = getelementptr inbounds double* %typed_vdata29.0277, i64 %283
  %285 = load double* %284, align 8, !tbaa !9
  %286 = fmul double %285, %285
  %287 = fadd double %typed_outval30.1263, %286
  %indvars.iv.next536 = add nsw i64 %indvars.iv535, 1
  %288 = icmp slt i64 %indvars.iv.next536, %281
  br i1 %288, label %282, label %._crit_edge266

._crit_edge266:                                   ; preds = %282, %._crit_edge260
  %typed_outval30.1.lcssa = phi double [ %typed_outval30.0, %._crit_edge260 ], [ %287, %282 ]
  br i1 %8, label %289, label %.thread65

; <label>:289                                     ; preds = %._crit_edge266
  %290 = load i32* %9, align 4, !tbaa !2
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %9, align 4, !tbaa !2
  %292 = load i32* %10, align 4, !tbaa !2
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %.backedge109, label %.preheader85

.preheader85:                                     ; preds = %289
  br i1 %11, label %.lr.ph269, label %.thread65

.lr.ph269:                                        ; preds = %.preheader85, %303
  %indvars.iv537 = phi i64 [ %indvars.iv.next538, %303 ], [ 2, %.preheader85 ]
  %294 = getelementptr inbounds i32* %iterator, i64 %indvars.iv537
  %295 = load i32* %294, align 4, !tbaa !2
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %294, align 4, !tbaa !2
  %297 = getelementptr inbounds i32* %to, i64 %indvars.iv537
  %298 = load i32* %297, align 4, !tbaa !2
  %299 = icmp slt i32 %296, %298
  br i1 %299, label %.thread64.preheader, label %303

.thread64.preheader:                              ; preds = %.lr.ph269
  %300 = trunc i64 %indvars.iv537 to i32
  %301 = icmp sgt i32 %300, 0
  br i1 %301, label %.lr.ph274, label %.backedge109

.lr.ph274:                                        ; preds = %.thread64.preheader
  %sext614 = shl i64 %indvars.iv537, 32
  %302 = ashr exact i64 %sext614, 32
  br label %.thread64

; <label>:303                                     ; preds = %.lr.ph269
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1
  %304 = icmp slt i64 %indvars.iv.next538, %5
  br i1 %304, label %.lr.ph269, label %.thread65

.thread64:                                        ; preds = %.lr.ph274, %.thread64
  %indvars.iv539 = phi i64 [ %302, %.lr.ph274 ], [ %indvars.iv.next540, %.thread64 ]
  %indvars.iv.next540 = add nsw i64 %indvars.iv539, -1
  %305 = getelementptr inbounds i32* %from, i64 %indvars.iv.next540
  %306 = load i32* %305, align 4, !tbaa !2
  %307 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next540
  store i32 %306, i32* %307, align 4, !tbaa !2
  %308 = icmp sgt i64 %indvars.iv539, 1
  br i1 %308, label %.thread64, label %.backedge109

.thread65:                                        ; preds = %._crit_edge266, %.preheader85, %303
  %indvars.iv.next542 = add nsw i64 %indvars.iv541, 1
  %309 = getelementptr inbounds double* %outvals, i64 %indvars.iv541
  store double %typed_outval30.1.lcssa, double* %309, align 8, !tbaa !9
  %310 = add nuw nsw i32 %_j26.0276, 1
  %311 = getelementptr inbounds double* %typed_vdata29.0277, i64 1
  %exitcond543 = icmp eq i32 %_j26.0276, %13
  br i1 %exitcond543, label %..loopexit128_crit_edge, label %.preheader110

; <label>:312                                     ; preds = %17
  br i1 %2, label %.preheader113.lr.ph, label %.loopexit123

.preheader113.lr.ph:                              ; preds = %312
  %313 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %314 = bitcast i8** %313 to float**
  %315 = load float** %314, align 8, !tbaa !6
  %316 = sext i32 %total_outvals.0395 to i64
  br label %.preheader113

.preheader113:                                    ; preds = %.thread67, %.preheader113.lr.ph
  %indvars.iv528 = phi i64 [ %316, %.preheader113.lr.ph ], [ %indvars.iv.next529, %.thread67 ]
  %typed_vdata35.0254 = phi float* [ %315, %.preheader113.lr.ph ], [ %360, %.thread67 ]
  %_j32.0253 = phi i32 [ 0, %.preheader113.lr.ph ], [ %359, %.thread67 ]
  %317 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6
  br label %.backedge112

.backedge112:                                     ; preds = %337, %.thread66.preheader, %.thread66, %.preheader113
  %typed_outval36.0 = phi float [ 0.000000e+00, %.preheader113 ], [ %typed_outval36.1.lcssa, %.thread66 ], [ %typed_outval36.1.lcssa, %.thread66.preheader ], [ %typed_outval36.1.lcssa, %337 ]
  br i1 %8, label %.lr.ph236, label %._crit_edge237

.lr.ph236:                                        ; preds = %.backedge112, %.lr.ph236
  %indvars.iv518 = phi i64 [ %indvars.iv.next519, %.lr.ph236 ], [ 1, %.backedge112 ]
  %_vindex34.1234 = phi i32 [ %323, %.lr.ph236 ], [ 0, %.backedge112 ]
  %318 = getelementptr inbounds i32* %iterator, i64 %indvars.iv518
  %319 = load i32* %318, align 4, !tbaa !2
  %320 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv518
  %321 = load i32* %320, align 4, !tbaa !2
  %322 = mul nsw i32 %321, %319
  %323 = add nsw i32 %322, %_vindex34.1234
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1
  %lftr.wideiv520 = trunc i64 %indvars.iv518 to i32
  %exitcond521 = icmp eq i32 %lftr.wideiv520, %12
  br i1 %exitcond521, label %._crit_edge237, label %.lr.ph236

._crit_edge237:                                   ; preds = %.lr.ph236, %.backedge112
  %_vindex34.1.lcssa = phi i32 [ 0, %.backedge112 ], [ %323, %.lr.ph236 ]
  %324 = load i32* %from, align 4, !tbaa !2
  %325 = load i32* %to, align 4, !tbaa !2
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %.lr.ph242, label %._crit_edge243

.lr.ph242:                                        ; preds = %._crit_edge237
  %327 = sext i32 %324 to i64
  %328 = sext i32 %_vindex34.1.lcssa to i64
  %329 = sext i32 %325 to i64
  br label %330

; <label>:330                                     ; preds = %.lr.ph242, %330
  %indvars.iv522 = phi i64 [ %327, %.lr.ph242 ], [ %indvars.iv.next523, %330 ]
  %typed_outval36.1240 = phi float [ %typed_outval36.0, %.lr.ph242 ], [ %335, %330 ]
  %331 = add nsw i64 %indvars.iv522, %328
  %332 = getelementptr inbounds float* %typed_vdata35.0254, i64 %331
  %333 = load float* %332, align 4, !tbaa !15
  %334 = fmul float %333, %333
  %335 = fadd float %typed_outval36.1240, %334
  %indvars.iv.next523 = add nsw i64 %indvars.iv522, 1
  %336 = icmp slt i64 %indvars.iv.next523, %329
  br i1 %336, label %330, label %._crit_edge243

._crit_edge243:                                   ; preds = %330, %._crit_edge237
  %typed_outval36.1.lcssa = phi float [ %typed_outval36.0, %._crit_edge237 ], [ %335, %330 ]
  br i1 %8, label %337, label %.thread67

; <label>:337                                     ; preds = %._crit_edge243
  %338 = load i32* %9, align 4, !tbaa !2
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %9, align 4, !tbaa !2
  %340 = load i32* %10, align 4, !tbaa !2
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %.backedge112, label %.preheader87

.preheader87:                                     ; preds = %337
  br i1 %11, label %.lr.ph246, label %.thread67

.lr.ph246:                                        ; preds = %.preheader87, %351
  %indvars.iv524 = phi i64 [ %indvars.iv.next525, %351 ], [ 2, %.preheader87 ]
  %342 = getelementptr inbounds i32* %iterator, i64 %indvars.iv524
  %343 = load i32* %342, align 4, !tbaa !2
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %342, align 4, !tbaa !2
  %345 = getelementptr inbounds i32* %to, i64 %indvars.iv524
  %346 = load i32* %345, align 4, !tbaa !2
  %347 = icmp slt i32 %344, %346
  br i1 %347, label %.thread66.preheader, label %351

.thread66.preheader:                              ; preds = %.lr.ph246
  %348 = trunc i64 %indvars.iv524 to i32
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %.lr.ph251, label %.backedge112

.lr.ph251:                                        ; preds = %.thread66.preheader
  %sext613 = shl i64 %indvars.iv524, 32
  %350 = ashr exact i64 %sext613, 32
  br label %.thread66

; <label>:351                                     ; preds = %.lr.ph246
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1
  %352 = icmp slt i64 %indvars.iv.next525, %5
  br i1 %352, label %.lr.ph246, label %.thread67

.thread66:                                        ; preds = %.lr.ph251, %.thread66
  %indvars.iv526 = phi i64 [ %350, %.lr.ph251 ], [ %indvars.iv.next527, %.thread66 ]
  %indvars.iv.next527 = add nsw i64 %indvars.iv526, -1
  %353 = getelementptr inbounds i32* %from, i64 %indvars.iv.next527
  %354 = load i32* %353, align 4, !tbaa !2
  %355 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next527
  store i32 %354, i32* %355, align 4, !tbaa !2
  %356 = icmp sgt i64 %indvars.iv526, 1
  br i1 %356, label %.thread66, label %.backedge112

.thread67:                                        ; preds = %._crit_edge243, %.preheader87, %351
  %357 = fpext float %typed_outval36.1.lcssa to double
  %indvars.iv.next529 = add nsw i64 %indvars.iv528, 1
  %358 = getelementptr inbounds double* %outvals, i64 %indvars.iv528
  store double %357, double* %358, align 8, !tbaa !9
  %359 = add nuw nsw i32 %_j32.0253, 1
  %360 = getelementptr inbounds float* %typed_vdata35.0254, i64 1
  %exitcond530 = icmp eq i32 %_j32.0253, %13
  br i1 %exitcond530, label %..loopexit129_crit_edge, label %.preheader113

; <label>:361                                     ; preds = %17
  br i1 %2, label %.preheader116.lr.ph, label %.loopexit123

.preheader116.lr.ph:                              ; preds = %361
  %362 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %363 = bitcast i8** %362 to double**
  %364 = load double** %363, align 8, !tbaa !6
  %365 = sext i32 %total_outvals.0395 to i64
  br label %.preheader116

.preheader116:                                    ; preds = %.thread69, %.preheader116.lr.ph
  %indvars.iv515 = phi i64 [ %365, %.preheader116.lr.ph ], [ %indvars.iv.next516, %.thread69 ]
  %typed_vdata41.0231 = phi double* [ %364, %.preheader116.lr.ph ], [ %408, %.thread69 ]
  %_j38.0230 = phi i32 [ 0, %.preheader116.lr.ph ], [ %407, %.thread69 ]
  %366 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6
  br label %.backedge115

.backedge115:                                     ; preds = %386, %.thread68.preheader, %.thread68, %.preheader116
  %typed_outval42.0 = phi double [ 0.000000e+00, %.preheader116 ], [ %typed_outval42.1.lcssa, %.thread68 ], [ %typed_outval42.1.lcssa, %.thread68.preheader ], [ %typed_outval42.1.lcssa, %386 ]
  br i1 %8, label %.lr.ph213, label %._crit_edge214

.lr.ph213:                                        ; preds = %.backedge115, %.lr.ph213
  %indvars.iv505 = phi i64 [ %indvars.iv.next506, %.lr.ph213 ], [ 1, %.backedge115 ]
  %_vindex40.1211 = phi i32 [ %372, %.lr.ph213 ], [ 0, %.backedge115 ]
  %367 = getelementptr inbounds i32* %iterator, i64 %indvars.iv505
  %368 = load i32* %367, align 4, !tbaa !2
  %369 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv505
  %370 = load i32* %369, align 4, !tbaa !2
  %371 = mul nsw i32 %370, %368
  %372 = add nsw i32 %371, %_vindex40.1211
  %indvars.iv.next506 = add nuw nsw i64 %indvars.iv505, 1
  %lftr.wideiv507 = trunc i64 %indvars.iv505 to i32
  %exitcond508 = icmp eq i32 %lftr.wideiv507, %12
  br i1 %exitcond508, label %._crit_edge214, label %.lr.ph213

._crit_edge214:                                   ; preds = %.lr.ph213, %.backedge115
  %_vindex40.1.lcssa = phi i32 [ 0, %.backedge115 ], [ %372, %.lr.ph213 ]
  %373 = load i32* %from, align 4, !tbaa !2
  %374 = load i32* %to, align 4, !tbaa !2
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %.lr.ph219, label %._crit_edge220

.lr.ph219:                                        ; preds = %._crit_edge214
  %376 = sext i32 %373 to i64
  %377 = sext i32 %_vindex40.1.lcssa to i64
  %378 = sext i32 %374 to i64
  br label %379

; <label>:379                                     ; preds = %.lr.ph219, %379
  %indvars.iv509 = phi i64 [ %376, %.lr.ph219 ], [ %indvars.iv.next510, %379 ]
  %typed_outval42.1217 = phi double [ %typed_outval42.0, %.lr.ph219 ], [ %384, %379 ]
  %380 = add nsw i64 %indvars.iv509, %377
  %381 = getelementptr inbounds double* %typed_vdata41.0231, i64 %380
  %382 = load double* %381, align 8, !tbaa !9
  %383 = fmul double %382, %382
  %384 = fadd double %typed_outval42.1217, %383
  %indvars.iv.next510 = add nsw i64 %indvars.iv509, 1
  %385 = icmp slt i64 %indvars.iv.next510, %378
  br i1 %385, label %379, label %._crit_edge220

._crit_edge220:                                   ; preds = %379, %._crit_edge214
  %typed_outval42.1.lcssa = phi double [ %typed_outval42.0, %._crit_edge214 ], [ %384, %379 ]
  br i1 %8, label %386, label %.thread69

; <label>:386                                     ; preds = %._crit_edge220
  %387 = load i32* %9, align 4, !tbaa !2
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %9, align 4, !tbaa !2
  %389 = load i32* %10, align 4, !tbaa !2
  %390 = icmp slt i32 %388, %389
  br i1 %390, label %.backedge115, label %.preheader89

.preheader89:                                     ; preds = %386
  br i1 %11, label %.lr.ph223, label %.thread69

.lr.ph223:                                        ; preds = %.preheader89, %400
  %indvars.iv511 = phi i64 [ %indvars.iv.next512, %400 ], [ 2, %.preheader89 ]
  %391 = getelementptr inbounds i32* %iterator, i64 %indvars.iv511
  %392 = load i32* %391, align 4, !tbaa !2
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %391, align 4, !tbaa !2
  %394 = getelementptr inbounds i32* %to, i64 %indvars.iv511
  %395 = load i32* %394, align 4, !tbaa !2
  %396 = icmp slt i32 %393, %395
  br i1 %396, label %.thread68.preheader, label %400

.thread68.preheader:                              ; preds = %.lr.ph223
  %397 = trunc i64 %indvars.iv511 to i32
  %398 = icmp sgt i32 %397, 0
  br i1 %398, label %.lr.ph228, label %.backedge115

.lr.ph228:                                        ; preds = %.thread68.preheader
  %sext612 = shl i64 %indvars.iv511, 32
  %399 = ashr exact i64 %sext612, 32
  br label %.thread68

; <label>:400                                     ; preds = %.lr.ph223
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, 1
  %401 = icmp slt i64 %indvars.iv.next512, %5
  br i1 %401, label %.lr.ph223, label %.thread69

.thread68:                                        ; preds = %.lr.ph228, %.thread68
  %indvars.iv513 = phi i64 [ %399, %.lr.ph228 ], [ %indvars.iv.next514, %.thread68 ]
  %indvars.iv.next514 = add nsw i64 %indvars.iv513, -1
  %402 = getelementptr inbounds i32* %from, i64 %indvars.iv.next514
  %403 = load i32* %402, align 4, !tbaa !2
  %404 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next514
  store i32 %403, i32* %404, align 4, !tbaa !2
  %405 = icmp sgt i64 %indvars.iv513, 1
  br i1 %405, label %.thread68, label %.backedge115

.thread69:                                        ; preds = %._crit_edge220, %.preheader89, %400
  %indvars.iv.next516 = add nsw i64 %indvars.iv515, 1
  %406 = getelementptr inbounds double* %outvals, i64 %indvars.iv515
  store double %typed_outval42.1.lcssa, double* %406, align 8, !tbaa !9
  %407 = add nuw nsw i32 %_j38.0230, 1
  %408 = getelementptr inbounds double* %typed_vdata41.0231, i64 1
  %exitcond517 = icmp eq i32 %_j38.0230, %13
  br i1 %exitcond517, label %..loopexit130_crit_edge, label %.preheader116

; <label>:409                                     ; preds = %17
  br i1 %2, label %.preheader119.lr.ph, label %.loopexit123

.preheader119.lr.ph:                              ; preds = %409
  %410 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %411 = bitcast i8** %410 to x86_fp80**
  %412 = load x86_fp80** %411, align 8, !tbaa !6
  %413 = sext i32 %total_outvals.0395 to i64
  br label %.preheader119

.preheader119:                                    ; preds = %.thread71, %.preheader119.lr.ph
  %indvars.iv502 = phi i64 [ %413, %.preheader119.lr.ph ], [ %indvars.iv.next503, %.thread71 ]
  %typed_vdata47.0208 = phi x86_fp80* [ %412, %.preheader119.lr.ph ], [ %457, %.thread71 ]
  %_j44.0207 = phi i32 [ 0, %.preheader119.lr.ph ], [ %456, %.thread71 ]
  %414 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6
  br label %.backedge118

.backedge118:                                     ; preds = %434, %.thread70.preheader, %.thread70, %.preheader119
  %typed_outval48.0 = phi x86_fp80 [ 0xK00000000000000000000, %.preheader119 ], [ %typed_outval48.1.lcssa, %.thread70 ], [ %typed_outval48.1.lcssa, %.thread70.preheader ], [ %typed_outval48.1.lcssa, %434 ]
  br i1 %8, label %.lr.ph190, label %._crit_edge191

.lr.ph190:                                        ; preds = %.backedge118, %.lr.ph190
  %indvars.iv492 = phi i64 [ %indvars.iv.next493, %.lr.ph190 ], [ 1, %.backedge118 ]
  %_vindex46.1188 = phi i32 [ %420, %.lr.ph190 ], [ 0, %.backedge118 ]
  %415 = getelementptr inbounds i32* %iterator, i64 %indvars.iv492
  %416 = load i32* %415, align 4, !tbaa !2
  %417 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv492
  %418 = load i32* %417, align 4, !tbaa !2
  %419 = mul nsw i32 %418, %416
  %420 = add nsw i32 %419, %_vindex46.1188
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1
  %lftr.wideiv494 = trunc i64 %indvars.iv492 to i32
  %exitcond495 = icmp eq i32 %lftr.wideiv494, %12
  br i1 %exitcond495, label %._crit_edge191, label %.lr.ph190

._crit_edge191:                                   ; preds = %.lr.ph190, %.backedge118
  %_vindex46.1.lcssa = phi i32 [ 0, %.backedge118 ], [ %420, %.lr.ph190 ]
  %421 = load i32* %from, align 4, !tbaa !2
  %422 = load i32* %to, align 4, !tbaa !2
  %423 = icmp slt i32 %421, %422
  br i1 %423, label %.lr.ph196, label %._crit_edge197

.lr.ph196:                                        ; preds = %._crit_edge191
  %424 = sext i32 %421 to i64
  %425 = sext i32 %_vindex46.1.lcssa to i64
  %426 = sext i32 %422 to i64
  br label %427

; <label>:427                                     ; preds = %.lr.ph196, %427
  %indvars.iv496 = phi i64 [ %424, %.lr.ph196 ], [ %indvars.iv.next497, %427 ]
  %typed_outval48.1194 = phi x86_fp80 [ %typed_outval48.0, %.lr.ph196 ], [ %432, %427 ]
  %428 = add nsw i64 %indvars.iv496, %425
  %429 = getelementptr inbounds x86_fp80* %typed_vdata47.0208, i64 %428
  %430 = load x86_fp80* %429, align 16, !tbaa !17
  %431 = fmul x86_fp80 %430, %430
  %432 = fadd x86_fp80 %typed_outval48.1194, %431
  %indvars.iv.next497 = add nsw i64 %indvars.iv496, 1
  %433 = icmp slt i64 %indvars.iv.next497, %426
  br i1 %433, label %427, label %._crit_edge197

._crit_edge197:                                   ; preds = %427, %._crit_edge191
  %typed_outval48.1.lcssa = phi x86_fp80 [ %typed_outval48.0, %._crit_edge191 ], [ %432, %427 ]
  br i1 %8, label %434, label %.thread71

; <label>:434                                     ; preds = %._crit_edge197
  %435 = load i32* %9, align 4, !tbaa !2
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %9, align 4, !tbaa !2
  %437 = load i32* %10, align 4, !tbaa !2
  %438 = icmp slt i32 %436, %437
  br i1 %438, label %.backedge118, label %.preheader91

.preheader91:                                     ; preds = %434
  br i1 %11, label %.lr.ph200, label %.thread71

.lr.ph200:                                        ; preds = %.preheader91, %448
  %indvars.iv498 = phi i64 [ %indvars.iv.next499, %448 ], [ 2, %.preheader91 ]
  %439 = getelementptr inbounds i32* %iterator, i64 %indvars.iv498
  %440 = load i32* %439, align 4, !tbaa !2
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %439, align 4, !tbaa !2
  %442 = getelementptr inbounds i32* %to, i64 %indvars.iv498
  %443 = load i32* %442, align 4, !tbaa !2
  %444 = icmp slt i32 %441, %443
  br i1 %444, label %.thread70.preheader, label %448

.thread70.preheader:                              ; preds = %.lr.ph200
  %445 = trunc i64 %indvars.iv498 to i32
  %446 = icmp sgt i32 %445, 0
  br i1 %446, label %.lr.ph205, label %.backedge118

.lr.ph205:                                        ; preds = %.thread70.preheader
  %sext611 = shl i64 %indvars.iv498, 32
  %447 = ashr exact i64 %sext611, 32
  br label %.thread70

; <label>:448                                     ; preds = %.lr.ph200
  %indvars.iv.next499 = add nuw nsw i64 %indvars.iv498, 1
  %449 = icmp slt i64 %indvars.iv.next499, %5
  br i1 %449, label %.lr.ph200, label %.thread71

.thread70:                                        ; preds = %.lr.ph205, %.thread70
  %indvars.iv500 = phi i64 [ %447, %.lr.ph205 ], [ %indvars.iv.next501, %.thread70 ]
  %indvars.iv.next501 = add nsw i64 %indvars.iv500, -1
  %450 = getelementptr inbounds i32* %from, i64 %indvars.iv.next501
  %451 = load i32* %450, align 4, !tbaa !2
  %452 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next501
  store i32 %451, i32* %452, align 4, !tbaa !2
  %453 = icmp sgt i64 %indvars.iv500, 1
  br i1 %453, label %.thread70, label %.backedge118

.thread71:                                        ; preds = %._crit_edge197, %.preheader91, %448
  %454 = fptrunc x86_fp80 %typed_outval48.1.lcssa to double
  %indvars.iv.next503 = add nsw i64 %indvars.iv502, 1
  %455 = getelementptr inbounds double* %outvals, i64 %indvars.iv502
  store double %454, double* %455, align 8, !tbaa !9
  %456 = add nuw nsw i32 %_j44.0207, 1
  %457 = getelementptr inbounds x86_fp80* %typed_vdata47.0208, i64 1
  %exitcond504 = icmp eq i32 %_j44.0207, %13
  br i1 %exitcond504, label %..loopexit131_crit_edge, label %.preheader119

; <label>:458                                     ; preds = %17
  br i1 %2, label %.preheader122.lr.ph, label %.loopexit123

.preheader122.lr.ph:                              ; preds = %458
  %459 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609
  %460 = bitcast i8** %459 to %struct.CCTK_COMPLEX16**
  %461 = load %struct.CCTK_COMPLEX16** %460, align 8, !tbaa !6
  %462 = sext i32 %total_outvals.0395 to i64
  br label %.preheader122

.preheader122:                                    ; preds = %.thread73, %.preheader122.lr.ph
  %indvars.iv489 = phi i64 [ %462, %.preheader122.lr.ph ], [ %indvars.iv.next490, %.thread73 ]
  %typed_vdata53.0183 = phi %struct.CCTK_COMPLEX16* [ %461, %.preheader122.lr.ph ], [ %509, %.thread73 ]
  %_j50.0182 = phi i32 [ 0, %.preheader122.lr.ph ], [ %508, %.thread73 ]
  %463 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6
  br label %.backedge121

.backedge121:                                     ; preds = %487, %.thread72.preheader, %.thread72, %.preheader122
  %typed_outval54.0 = phi double [ 0.000000e+00, %.preheader122 ], [ %typed_outval54.1.lcssa, %.thread72 ], [ %typed_outval54.1.lcssa, %.thread72.preheader ], [ %typed_outval54.1.lcssa, %487 ]
  br i1 %8, label %.lr.ph167, label %._crit_edge

.lr.ph167:                                        ; preds = %.backedge121, %.lr.ph167
  %indvars.iv479 = phi i64 [ %indvars.iv.next480, %.lr.ph167 ], [ 1, %.backedge121 ]
  %_vindex52.1166 = phi i32 [ %469, %.lr.ph167 ], [ 0, %.backedge121 ]
  %464 = getelementptr inbounds i32* %iterator, i64 %indvars.iv479
  %465 = load i32* %464, align 4, !tbaa !2
  %466 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv479
  %467 = load i32* %466, align 4, !tbaa !2
  %468 = mul nsw i32 %467, %465
  %469 = add nsw i32 %468, %_vindex52.1166
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1
  %lftr.wideiv481 = trunc i64 %indvars.iv479 to i32
  %exitcond482 = icmp eq i32 %lftr.wideiv481, %12
  br i1 %exitcond482, label %._crit_edge, label %.lr.ph167

._crit_edge:                                      ; preds = %.lr.ph167, %.backedge121
  %_vindex52.1.lcssa = phi i32 [ 0, %.backedge121 ], [ %469, %.lr.ph167 ]
  %470 = load i32* %from, align 4, !tbaa !2
  %471 = load i32* %to, align 4, !tbaa !2
  %472 = icmp slt i32 %470, %471
  br i1 %472, label %.lr.ph171, label %._crit_edge172

.lr.ph171:                                        ; preds = %._crit_edge
  %473 = sext i32 %470 to i64
  %474 = sext i32 %_vindex52.1.lcssa to i64
  %475 = sext i32 %471 to i64
  br label %476

; <label>:476                                     ; preds = %.lr.ph171, %476
  %indvars.iv483 = phi i64 [ %473, %.lr.ph171 ], [ %indvars.iv.next484, %476 ]
  %typed_outval54.1169 = phi double [ %typed_outval54.0, %.lr.ph171 ], [ %485, %476 ]
  %477 = add nsw i64 %indvars.iv483, %474
  %478 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_vdata53.0183, i64 %477, i32 0
  %479 = bitcast double* %478 to <2 x double>*
  %480 = load <2 x double>* %479, align 8, !tbaa !9
  %481 = fmul <2 x double> %480, %480
  %482 = extractelement <2 x double> %481, i32 0
  %483 = extractelement <2 x double> %481, i32 1
  %484 = fadd double %482, %483
  %485 = fadd double %typed_outval54.1169, %484
  %indvars.iv.next484 = add nsw i64 %indvars.iv483, 1
  %486 = icmp slt i64 %indvars.iv.next484, %475
  br i1 %486, label %476, label %._crit_edge172

._crit_edge172:                                   ; preds = %476, %._crit_edge
  %typed_outval54.1.lcssa = phi double [ %typed_outval54.0, %._crit_edge ], [ %485, %476 ]
  br i1 %8, label %487, label %.thread73

; <label>:487                                     ; preds = %._crit_edge172
  %488 = load i32* %9, align 4, !tbaa !2
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %9, align 4, !tbaa !2
  %490 = load i32* %10, align 4, !tbaa !2
  %491 = icmp slt i32 %489, %490
  br i1 %491, label %.backedge121, label %.preheader93

.preheader93:                                     ; preds = %487
  br i1 %11, label %.lr.ph175, label %.thread73

.lr.ph175:                                        ; preds = %.preheader93, %501
  %indvars.iv485 = phi i64 [ %indvars.iv.next486, %501 ], [ 2, %.preheader93 ]
  %492 = getelementptr inbounds i32* %iterator, i64 %indvars.iv485
  %493 = load i32* %492, align 4, !tbaa !2
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %492, align 4, !tbaa !2
  %495 = getelementptr inbounds i32* %to, i64 %indvars.iv485
  %496 = load i32* %495, align 4, !tbaa !2
  %497 = icmp slt i32 %494, %496
  br i1 %497, label %.thread72.preheader, label %501

.thread72.preheader:                              ; preds = %.lr.ph175
  %498 = trunc i64 %indvars.iv485 to i32
  %499 = icmp sgt i32 %498, 0
  br i1 %499, label %.lr.ph180, label %.backedge121

.lr.ph180:                                        ; preds = %.thread72.preheader
  %sext = shl i64 %indvars.iv485, 32
  %500 = ashr exact i64 %sext, 32
  br label %.thread72

; <label>:501                                     ; preds = %.lr.ph175
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1
  %502 = icmp slt i64 %indvars.iv.next486, %5
  br i1 %502, label %.lr.ph175, label %.thread73

.thread72:                                        ; preds = %.lr.ph180, %.thread72
  %indvars.iv487 = phi i64 [ %500, %.lr.ph180 ], [ %indvars.iv.next488, %.thread72 ]
  %indvars.iv.next488 = add nsw i64 %indvars.iv487, -1
  %503 = getelementptr inbounds i32* %from, i64 %indvars.iv.next488
  %504 = load i32* %503, align 4, !tbaa !2
  %505 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next488
  store i32 %504, i32* %505, align 4, !tbaa !2
  %506 = icmp sgt i64 %indvars.iv487, 1
  br i1 %506, label %.thread72, label %.backedge121

.thread73:                                        ; preds = %._crit_edge172, %.preheader93, %501
  %indvars.iv.next490 = add nsw i64 %indvars.iv489, 1
  %507 = getelementptr inbounds double* %outvals, i64 %indvars.iv489
  store double %typed_outval54.1.lcssa, double* %507, align 8, !tbaa !9
  %508 = add nuw nsw i32 %_j50.0182, 1
  %509 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_vdata53.0183, i64 1
  %exitcond491 = icmp eq i32 %_j50.0182, %13
  br i1 %exitcond491, label %..loopexit132_crit_edge, label %.preheader122

; <label>:510                                     ; preds = %17
  %511 = tail call i32 @CCTK_Warn(i32 1, i32 318, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str3, i64 0, i64 0)) #6
  br label %.loopexit

..loopexit123_crit_edge:                          ; preds = %.thread55
  %512 = add nsw i64 %15, %23
  %513 = trunc i64 %512 to i32
  br label %.loopexit123

..loopexit124_crit_edge:                          ; preds = %.thread57
  %514 = add nsw i64 %15, %72
  %515 = trunc i64 %514 to i32
  br label %.loopexit123

..loopexit125_crit_edge:                          ; preds = %.thread59
  %516 = add nsw i64 %15, %121
  %517 = trunc i64 %516 to i32
  br label %.loopexit123

..loopexit126_crit_edge:                          ; preds = %.thread61
  %518 = add nsw i64 %15, %170
  %519 = trunc i64 %518 to i32
  br label %.loopexit123

..loopexit127_crit_edge:                          ; preds = %.thread63
  %520 = add nsw i64 %15, %219
  %521 = trunc i64 %520 to i32
  br label %.loopexit123

..loopexit128_crit_edge:                          ; preds = %.thread65
  %522 = add nsw i64 %15, %268
  %523 = trunc i64 %522 to i32
  br label %.loopexit123

..loopexit129_crit_edge:                          ; preds = %.thread67
  %524 = add nsw i64 %15, %316
  %525 = trunc i64 %524 to i32
  br label %.loopexit123

..loopexit130_crit_edge:                          ; preds = %.thread69
  %526 = add nsw i64 %15, %365
  %527 = trunc i64 %526 to i32
  br label %.loopexit123

..loopexit131_crit_edge:                          ; preds = %.thread71
  %528 = add nsw i64 %15, %413
  %529 = trunc i64 %528 to i32
  br label %.loopexit123

..loopexit132_crit_edge:                          ; preds = %.thread73
  %530 = add nsw i64 %15, %462
  %531 = trunc i64 %530 to i32
  br label %.loopexit123

.loopexit123:                                     ; preds = %458, %..loopexit132_crit_edge, %409, %..loopexit131_crit_edge, %361, %..loopexit130_crit_edge, %312, %..loopexit129_crit_edge, %264, %..loopexit128_crit_edge, %215, %..loopexit127_crit_edge, %166, %..loopexit126_crit_edge, %117, %..loopexit125_crit_edge, %68, %..loopexit124_crit_edge, %20, %..loopexit123_crit_edge
  %total_outvals.11 = phi i32 [ %513, %..loopexit123_crit_edge ], [ %total_outvals.0395, %20 ], [ %515, %..loopexit124_crit_edge ], [ %total_outvals.0395, %68 ], [ %517, %..loopexit125_crit_edge ], [ %total_outvals.0395, %117 ], [ %519, %..loopexit126_crit_edge ], [ %total_outvals.0395, %166 ], [ %521, %..loopexit127_crit_edge ], [ %total_outvals.0395, %215 ], [ %523, %..loopexit128_crit_edge ], [ %total_outvals.0395, %264 ], [ %525, %..loopexit129_crit_edge ], [ %total_outvals.0395, %312 ], [ %527, %..loopexit130_crit_edge ], [ %total_outvals.0395, %361 ], [ %529, %..loopexit131_crit_edge ], [ %total_outvals.0395, %409 ], [ %531, %..loopexit132_crit_edge ], [ %total_outvals.0395, %458 ]
  %indvars.iv.next610 = add nuw nsw i64 %indvars.iv609, 1
  %532 = icmp slt i64 %indvars.iv.next610, %16
  br i1 %532, label %17, label %._crit_edge398

._crit_edge398:                                   ; preds = %.loopexit123, %0
  %total_outvals.0.lcssa = phi i32 [ 0, %0 ], [ %total_outvals.11, %.loopexit123 ]
  %533 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6
  %534 = icmp slt i32 %proc, 0
  br i1 %534, label %.preheader, label %535

; <label>:535                                     ; preds = %._crit_edge398
  %536 = getelementptr inbounds %struct.PGH* %533, i64 0, i32 3
  %537 = load i32* %536, align 4, !tbaa !19
  %538 = icmp eq i32 %537, %proc
  %539 = icmp sgt i32 %total_outvals.0.lcssa, 0
  %or.cond = and i1 %538, %539
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %._crit_edge398
  %.old = icmp sgt i32 %total_outvals.0.lcssa, 0
  br i1 %.old, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %535, %.preheader
  %540 = sitofp i32 %num_points to double
  %541 = add i32 %total_outvals.0.lcssa, -1
  br label %542

; <label>:542                                     ; preds = %542, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %542 ]
  %543 = getelementptr inbounds double* %outvals, i64 %indvars.iv
  %544 = load double* %543, align 8, !tbaa !9
  %545 = fdiv double %544, %540
  %546 = tail call double @sqrt(double %545) #7
  store double %546, double* %543, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %541
  br i1 %exitcond, label %.loopexit, label %542

.loopexit:                                        ; preds = %542, %.preheader, %535, %510
  %.0 = phi i32 [ -1, %510 ], [ 0, %535 ], [ 0, %.preheader ], [ 0, %542 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ReductionNorm2GVs(%struct.cGH* %GH, i32 %proc, i32 %num_outvals, i32 %outtype, i8* %outvals, i32 %num_invars, i32* %invars) #1 {
  %1 = tail call i32 @PUGH_ReductionGVs(%struct.cGH* %GH, i32 %proc, i32 %num_invars, i32* %invars, i32 %outtype, i32 %num_outvals, i8* %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionNorm2) #6
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

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #5

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone }

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
