; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionSum.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [59 x i8] c"$Id: ReductionSum.c,v 1.6 2001/11/05 15:04:13 tradke Exp $\00", align 1
@.str1 = private unnamed_addr constant [85 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionSum.c\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str3 = private unnamed_addr constant [78 x i8] c"PUGH_ReductionSum: Don't know how to compute the sum of complex variables !!!\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"PUGH_ReductionSum: Unknown variable type\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHReduce_ReductionSum_c() #0 {
  ret i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ReductionSumArrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %dims, i32 %num_inarrays, i8** %inarrays, i32 %intype, i32 %num_outvals, i8* %outvals, i32 %outtype) #1 {
  %1 = tail call i32 @PUGH_ReductionArrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %dims, i32 %intype, i32 %num_inarrays, i8** %inarrays, i32 %outtype, i32 %num_outvals, i8* %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionSum) #5
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @PUGH_ReductionArrays(%struct.cGH*, i32, i32, i32*, i32, i32, i8**, i32, i32, i8*, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @PUGH_ReductionSum(%struct.cGH* nocapture readnone %GH, i32 %proc, i32 %num_dims, i32* %from, i32* %to, i32* %iterator, i32* nocapture readonly %points_per_dim, i32 %num_points, i32 %num_inarrays, i32* nocapture readonly %intypes, i8** nocapture readonly %inarrays, i32 %num_outvals, double* nocapture %outvals) #1 {
  %1 = icmp sgt i32 %num_inarrays, 0
  br i1 %1, label %.lr.ph351, label %.loopexit117

.lr.ph351:                                        ; preds = %0
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

; <label>:17                                      ; preds = %.lr.ph351, %.loopexit108
  %indvars.iv536 = phi i64 [ 0, %.lr.ph351 ], [ %indvars.iv.next537, %.loopexit108 ]
  %total_outvals.0349 = phi i32 [ 0, %.lr.ph351 ], [ %total_outvals.10, %.loopexit108 ]
  %18 = getelementptr inbounds i32* %intypes, i64 %indvars.iv536
  %19 = load i32* %18, align 4, !tbaa !2
  switch i32 %19, label %451 [
    i32 1, label %20
    i32 2, label %67
    i32 3, label %115
    i32 4, label %163
    i32 5, label %211
    i32 6, label %259
    i32 7, label %306
    i32 8, label %354
    i32 9, label %401
    i32 10, label %449
  ]

; <label>:20                                      ; preds = %17
  br i1 %2, label %.preheader83.lr.ph, label %.loopexit108

.preheader83.lr.ph:                               ; preds = %20
  %21 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv536
  %22 = load i8** %21, align 8, !tbaa !6
  %23 = sext i32 %total_outvals.0349 to i64
  br label %.preheader83

.preheader83:                                     ; preds = %.thread49, %.preheader83.lr.ph
  %indvars.iv533 = phi i64 [ %23, %.preheader83.lr.ph ], [ %indvars.iv.next534, %.thread49 ]
  %typed_vdata.0346 = phi i8* [ %22, %.preheader83.lr.ph ], [ %66, %.thread49 ]
  %_j.0345 = phi i32 [ 0, %.preheader83.lr.ph ], [ %65, %.thread49 ]
  %24 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge

.backedge:                                        ; preds = %43, %.thread.preheader, %.thread, %.preheader83
  %typed_outval.0 = phi i8 [ 0, %.preheader83 ], [ %typed_outval.1.lcssa, %.thread ], [ %typed_outval.1.lcssa, %.thread.preheader ], [ %typed_outval.1.lcssa, %43 ]
  br i1 %8, label %.lr.ph328, label %._crit_edge329

.lr.ph328:                                        ; preds = %.backedge, %.lr.ph328
  %indvars.iv523 = phi i64 [ %indvars.iv.next524, %.lr.ph328 ], [ 1, %.backedge ]
  %_vindex.1326 = phi i32 [ %30, %.lr.ph328 ], [ 0, %.backedge ]
  %25 = getelementptr inbounds i32* %iterator, i64 %indvars.iv523
  %26 = load i32* %25, align 4, !tbaa !2
  %27 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv523
  %28 = load i32* %27, align 4, !tbaa !2
  %29 = mul nsw i32 %28, %26
  %30 = add nsw i32 %29, %_vindex.1326
  %indvars.iv.next524 = add nuw nsw i64 %indvars.iv523, 1
  %lftr.wideiv525 = trunc i64 %indvars.iv523 to i32
  %exitcond526 = icmp eq i32 %lftr.wideiv525, %12
  br i1 %exitcond526, label %._crit_edge329, label %.lr.ph328

._crit_edge329:                                   ; preds = %.lr.ph328, %.backedge
  %_vindex.1.lcssa = phi i32 [ 0, %.backedge ], [ %30, %.lr.ph328 ]
  %31 = load i32* %from, align 4, !tbaa !2
  %32 = load i32* %to, align 4, !tbaa !2
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %.lr.ph334, label %._crit_edge335

.lr.ph334:                                        ; preds = %._crit_edge329
  %34 = sext i32 %31 to i64
  %35 = sext i32 %_vindex.1.lcssa to i64
  %36 = sext i32 %32 to i64
  br label %37

; <label>:37                                      ; preds = %.lr.ph334, %37
  %indvars.iv527 = phi i64 [ %34, %.lr.ph334 ], [ %indvars.iv.next528, %37 ]
  %typed_outval.1332 = phi i8 [ %typed_outval.0, %.lr.ph334 ], [ %41, %37 ]
  %38 = add nsw i64 %indvars.iv527, %35
  %39 = getelementptr inbounds i8* %typed_vdata.0346, i64 %38
  %40 = load i8* %39, align 1, !tbaa !8
  %41 = add i8 %40, %typed_outval.1332
  %indvars.iv.next528 = add nsw i64 %indvars.iv527, 1
  %42 = icmp slt i64 %indvars.iv.next528, %36
  br i1 %42, label %37, label %._crit_edge335

._crit_edge335:                                   ; preds = %37, %._crit_edge329
  %typed_outval.1.lcssa = phi i8 [ %typed_outval.0, %._crit_edge329 ], [ %41, %37 ]
  br i1 %8, label %43, label %.thread49

; <label>:43                                      ; preds = %._crit_edge335
  %44 = load i32* %9, align 4, !tbaa !2
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4, !tbaa !2
  %46 = load i32* %10, align 4, !tbaa !2
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %.backedge, label %.preheader

.preheader:                                       ; preds = %43
  br i1 %11, label %.lr.ph338, label %.thread49

.lr.ph338:                                        ; preds = %.preheader, %57
  %indvars.iv529 = phi i64 [ %indvars.iv.next530, %57 ], [ 2, %.preheader ]
  %48 = getelementptr inbounds i32* %iterator, i64 %indvars.iv529
  %49 = load i32* %48, align 4, !tbaa !2
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4, !tbaa !2
  %51 = getelementptr inbounds i32* %to, i64 %indvars.iv529
  %52 = load i32* %51, align 4, !tbaa !2
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %.thread.preheader, label %57

.thread.preheader:                                ; preds = %.lr.ph338
  %54 = trunc i64 %indvars.iv529 to i32
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %.lr.ph343, label %.backedge

.lr.ph343:                                        ; preds = %.thread.preheader
  %sext545 = shl i64 %indvars.iv529, 32
  %56 = ashr exact i64 %sext545, 32
  br label %.thread

; <label>:57                                      ; preds = %.lr.ph338
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 1
  %58 = icmp slt i64 %indvars.iv.next530, %5
  br i1 %58, label %.lr.ph338, label %.thread49

.thread:                                          ; preds = %.lr.ph343, %.thread
  %indvars.iv531 = phi i64 [ %56, %.lr.ph343 ], [ %indvars.iv.next532, %.thread ]
  %indvars.iv.next532 = add nsw i64 %indvars.iv531, -1
  %59 = getelementptr inbounds i32* %from, i64 %indvars.iv.next532
  %60 = load i32* %59, align 4, !tbaa !2
  %61 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next532
  store i32 %60, i32* %61, align 4, !tbaa !2
  %62 = icmp sgt i64 %indvars.iv531, 1
  br i1 %62, label %.thread, label %.backedge

.thread49:                                        ; preds = %._crit_edge335, %.preheader, %57
  %63 = uitofp i8 %typed_outval.1.lcssa to double
  %indvars.iv.next534 = add nsw i64 %indvars.iv533, 1
  %64 = getelementptr inbounds double* %outvals, i64 %indvars.iv533
  store double %63, double* %64, align 8, !tbaa !9
  %65 = add nuw nsw i32 %_j.0345, 1
  %66 = getelementptr inbounds i8* %typed_vdata.0346, i64 1
  %exitcond535 = icmp eq i32 %_j.0345, %13
  br i1 %exitcond535, label %..loopexit108_crit_edge, label %.preheader83

; <label>:67                                      ; preds = %17
  br i1 %2, label %.preheader86.lr.ph, label %.loopexit108

.preheader86.lr.ph:                               ; preds = %67
  %68 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv536
  %69 = bitcast i8** %68 to i32**
  %70 = load i32** %69, align 8, !tbaa !6
  %71 = sext i32 %total_outvals.0349 to i64
  br label %.preheader86

.preheader86:                                     ; preds = %.thread51, %.preheader86.lr.ph
  %indvars.iv520 = phi i64 [ %71, %.preheader86.lr.ph ], [ %indvars.iv.next521, %.thread51 ]
  %typed_vdata5.0323 = phi i32* [ %70, %.preheader86.lr.ph ], [ %114, %.thread51 ]
  %_j2.0322 = phi i32 [ 0, %.preheader86.lr.ph ], [ %113, %.thread51 ]
  %72 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge85

.backedge85:                                      ; preds = %91, %.thread50.preheader, %.thread50, %.preheader86
  %typed_outval6.0 = phi i32 [ 0, %.preheader86 ], [ %typed_outval6.1.lcssa, %.thread50 ], [ %typed_outval6.1.lcssa, %.thread50.preheader ], [ %typed_outval6.1.lcssa, %91 ]
  br i1 %8, label %.lr.ph305, label %._crit_edge306

.lr.ph305:                                        ; preds = %.backedge85, %.lr.ph305
  %indvars.iv510 = phi i64 [ %indvars.iv.next511, %.lr.ph305 ], [ 1, %.backedge85 ]
  %_vindex4.1303 = phi i32 [ %78, %.lr.ph305 ], [ 0, %.backedge85 ]
  %73 = getelementptr inbounds i32* %iterator, i64 %indvars.iv510
  %74 = load i32* %73, align 4, !tbaa !2
  %75 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv510
  %76 = load i32* %75, align 4, !tbaa !2
  %77 = mul nsw i32 %76, %74
  %78 = add nsw i32 %77, %_vindex4.1303
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1
  %lftr.wideiv512 = trunc i64 %indvars.iv510 to i32
  %exitcond513 = icmp eq i32 %lftr.wideiv512, %12
  br i1 %exitcond513, label %._crit_edge306, label %.lr.ph305

._crit_edge306:                                   ; preds = %.lr.ph305, %.backedge85
  %_vindex4.1.lcssa = phi i32 [ 0, %.backedge85 ], [ %78, %.lr.ph305 ]
  %79 = load i32* %from, align 4, !tbaa !2
  %80 = load i32* %to, align 4, !tbaa !2
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %.lr.ph311, label %._crit_edge312

.lr.ph311:                                        ; preds = %._crit_edge306
  %82 = sext i32 %79 to i64
  %83 = sext i32 %_vindex4.1.lcssa to i64
  %84 = sext i32 %80 to i64
  br label %85

; <label>:85                                      ; preds = %.lr.ph311, %85
  %indvars.iv514 = phi i64 [ %82, %.lr.ph311 ], [ %indvars.iv.next515, %85 ]
  %typed_outval6.1309 = phi i32 [ %typed_outval6.0, %.lr.ph311 ], [ %89, %85 ]
  %86 = add nsw i64 %indvars.iv514, %83
  %87 = getelementptr inbounds i32* %typed_vdata5.0323, i64 %86
  %88 = load i32* %87, align 4, !tbaa !2
  %89 = add nsw i32 %88, %typed_outval6.1309
  %indvars.iv.next515 = add nsw i64 %indvars.iv514, 1
  %90 = icmp slt i64 %indvars.iv.next515, %84
  br i1 %90, label %85, label %._crit_edge312

._crit_edge312:                                   ; preds = %85, %._crit_edge306
  %typed_outval6.1.lcssa = phi i32 [ %typed_outval6.0, %._crit_edge306 ], [ %89, %85 ]
  br i1 %8, label %91, label %.thread51

; <label>:91                                      ; preds = %._crit_edge312
  %92 = load i32* %9, align 4, !tbaa !2
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4, !tbaa !2
  %94 = load i32* %10, align 4, !tbaa !2
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %.backedge85, label %.preheader67

.preheader67:                                     ; preds = %91
  br i1 %11, label %.lr.ph315, label %.thread51

.lr.ph315:                                        ; preds = %.preheader67, %105
  %indvars.iv516 = phi i64 [ %indvars.iv.next517, %105 ], [ 2, %.preheader67 ]
  %96 = getelementptr inbounds i32* %iterator, i64 %indvars.iv516
  %97 = load i32* %96, align 4, !tbaa !2
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4, !tbaa !2
  %99 = getelementptr inbounds i32* %to, i64 %indvars.iv516
  %100 = load i32* %99, align 4, !tbaa !2
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %.thread50.preheader, label %105

.thread50.preheader:                              ; preds = %.lr.ph315
  %102 = trunc i64 %indvars.iv516 to i32
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %.lr.ph320, label %.backedge85

.lr.ph320:                                        ; preds = %.thread50.preheader
  %sext544 = shl i64 %indvars.iv516, 32
  %104 = ashr exact i64 %sext544, 32
  br label %.thread50

; <label>:105                                     ; preds = %.lr.ph315
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1
  %106 = icmp slt i64 %indvars.iv.next517, %5
  br i1 %106, label %.lr.ph315, label %.thread51

.thread50:                                        ; preds = %.lr.ph320, %.thread50
  %indvars.iv518 = phi i64 [ %104, %.lr.ph320 ], [ %indvars.iv.next519, %.thread50 ]
  %indvars.iv.next519 = add nsw i64 %indvars.iv518, -1
  %107 = getelementptr inbounds i32* %from, i64 %indvars.iv.next519
  %108 = load i32* %107, align 4, !tbaa !2
  %109 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next519
  store i32 %108, i32* %109, align 4, !tbaa !2
  %110 = icmp sgt i64 %indvars.iv518, 1
  br i1 %110, label %.thread50, label %.backedge85

.thread51:                                        ; preds = %._crit_edge312, %.preheader67, %105
  %111 = sitofp i32 %typed_outval6.1.lcssa to double
  %indvars.iv.next521 = add nsw i64 %indvars.iv520, 1
  %112 = getelementptr inbounds double* %outvals, i64 %indvars.iv520
  store double %111, double* %112, align 8, !tbaa !9
  %113 = add nuw nsw i32 %_j2.0322, 1
  %114 = getelementptr inbounds i32* %typed_vdata5.0323, i64 1
  %exitcond522 = icmp eq i32 %_j2.0322, %13
  br i1 %exitcond522, label %..loopexit109_crit_edge, label %.preheader86

; <label>:115                                     ; preds = %17
  br i1 %2, label %.preheader89.lr.ph, label %.loopexit108

.preheader89.lr.ph:                               ; preds = %115
  %116 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv536
  %117 = bitcast i8** %116 to i16**
  %118 = load i16** %117, align 8, !tbaa !6
  %119 = sext i32 %total_outvals.0349 to i64
  br label %.preheader89

.preheader89:                                     ; preds = %.thread53, %.preheader89.lr.ph
  %indvars.iv507 = phi i64 [ %119, %.preheader89.lr.ph ], [ %indvars.iv.next508, %.thread53 ]
  %typed_vdata11.0300 = phi i16* [ %118, %.preheader89.lr.ph ], [ %162, %.thread53 ]
  %_j8.0299 = phi i32 [ 0, %.preheader89.lr.ph ], [ %161, %.thread53 ]
  %120 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge88

.backedge88:                                      ; preds = %139, %.thread52.preheader, %.thread52, %.preheader89
  %typed_outval12.0 = phi i16 [ 0, %.preheader89 ], [ %typed_outval12.1.lcssa, %.thread52 ], [ %typed_outval12.1.lcssa, %.thread52.preheader ], [ %typed_outval12.1.lcssa, %139 ]
  br i1 %8, label %.lr.ph282, label %._crit_edge283

.lr.ph282:                                        ; preds = %.backedge88, %.lr.ph282
  %indvars.iv497 = phi i64 [ %indvars.iv.next498, %.lr.ph282 ], [ 1, %.backedge88 ]
  %_vindex10.1280 = phi i32 [ %126, %.lr.ph282 ], [ 0, %.backedge88 ]
  %121 = getelementptr inbounds i32* %iterator, i64 %indvars.iv497
  %122 = load i32* %121, align 4, !tbaa !2
  %123 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv497
  %124 = load i32* %123, align 4, !tbaa !2
  %125 = mul nsw i32 %124, %122
  %126 = add nsw i32 %125, %_vindex10.1280
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1
  %lftr.wideiv499 = trunc i64 %indvars.iv497 to i32
  %exitcond500 = icmp eq i32 %lftr.wideiv499, %12
  br i1 %exitcond500, label %._crit_edge283, label %.lr.ph282

._crit_edge283:                                   ; preds = %.lr.ph282, %.backedge88
  %_vindex10.1.lcssa = phi i32 [ 0, %.backedge88 ], [ %126, %.lr.ph282 ]
  %127 = load i32* %from, align 4, !tbaa !2
  %128 = load i32* %to, align 4, !tbaa !2
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %.lr.ph288, label %._crit_edge289

.lr.ph288:                                        ; preds = %._crit_edge283
  %130 = sext i32 %127 to i64
  %131 = sext i32 %_vindex10.1.lcssa to i64
  %132 = sext i32 %128 to i64
  br label %133

; <label>:133                                     ; preds = %.lr.ph288, %133
  %indvars.iv501 = phi i64 [ %130, %.lr.ph288 ], [ %indvars.iv.next502, %133 ]
  %typed_outval12.1286 = phi i16 [ %typed_outval12.0, %.lr.ph288 ], [ %137, %133 ]
  %134 = add nsw i64 %indvars.iv501, %131
  %135 = getelementptr inbounds i16* %typed_vdata11.0300, i64 %134
  %136 = load i16* %135, align 2, !tbaa !11
  %137 = add i16 %136, %typed_outval12.1286
  %indvars.iv.next502 = add nsw i64 %indvars.iv501, 1
  %138 = icmp slt i64 %indvars.iv.next502, %132
  br i1 %138, label %133, label %._crit_edge289

._crit_edge289:                                   ; preds = %133, %._crit_edge283
  %typed_outval12.1.lcssa = phi i16 [ %typed_outval12.0, %._crit_edge283 ], [ %137, %133 ]
  br i1 %8, label %139, label %.thread53

; <label>:139                                     ; preds = %._crit_edge289
  %140 = load i32* %9, align 4, !tbaa !2
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4, !tbaa !2
  %142 = load i32* %10, align 4, !tbaa !2
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %.backedge88, label %.preheader69

.preheader69:                                     ; preds = %139
  br i1 %11, label %.lr.ph292, label %.thread53

.lr.ph292:                                        ; preds = %.preheader69, %153
  %indvars.iv503 = phi i64 [ %indvars.iv.next504, %153 ], [ 2, %.preheader69 ]
  %144 = getelementptr inbounds i32* %iterator, i64 %indvars.iv503
  %145 = load i32* %144, align 4, !tbaa !2
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4, !tbaa !2
  %147 = getelementptr inbounds i32* %to, i64 %indvars.iv503
  %148 = load i32* %147, align 4, !tbaa !2
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %.thread52.preheader, label %153

.thread52.preheader:                              ; preds = %.lr.ph292
  %150 = trunc i64 %indvars.iv503 to i32
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %.lr.ph297, label %.backedge88

.lr.ph297:                                        ; preds = %.thread52.preheader
  %sext543 = shl i64 %indvars.iv503, 32
  %152 = ashr exact i64 %sext543, 32
  br label %.thread52

; <label>:153                                     ; preds = %.lr.ph292
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1
  %154 = icmp slt i64 %indvars.iv.next504, %5
  br i1 %154, label %.lr.ph292, label %.thread53

.thread52:                                        ; preds = %.lr.ph297, %.thread52
  %indvars.iv505 = phi i64 [ %152, %.lr.ph297 ], [ %indvars.iv.next506, %.thread52 ]
  %indvars.iv.next506 = add nsw i64 %indvars.iv505, -1
  %155 = getelementptr inbounds i32* %from, i64 %indvars.iv.next506
  %156 = load i32* %155, align 4, !tbaa !2
  %157 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next506
  store i32 %156, i32* %157, align 4, !tbaa !2
  %158 = icmp sgt i64 %indvars.iv505, 1
  br i1 %158, label %.thread52, label %.backedge88

.thread53:                                        ; preds = %._crit_edge289, %.preheader69, %153
  %159 = sitofp i16 %typed_outval12.1.lcssa to double
  %indvars.iv.next508 = add nsw i64 %indvars.iv507, 1
  %160 = getelementptr inbounds double* %outvals, i64 %indvars.iv507
  store double %159, double* %160, align 8, !tbaa !9
  %161 = add nuw nsw i32 %_j8.0299, 1
  %162 = getelementptr inbounds i16* %typed_vdata11.0300, i64 1
  %exitcond509 = icmp eq i32 %_j8.0299, %13
  br i1 %exitcond509, label %..loopexit110_crit_edge, label %.preheader89

; <label>:163                                     ; preds = %17
  br i1 %2, label %.preheader92.lr.ph, label %.loopexit108

.preheader92.lr.ph:                               ; preds = %163
  %164 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv536
  %165 = bitcast i8** %164 to i32**
  %166 = load i32** %165, align 8, !tbaa !6
  %167 = sext i32 %total_outvals.0349 to i64
  br label %.preheader92

.preheader92:                                     ; preds = %.thread55, %.preheader92.lr.ph
  %indvars.iv494 = phi i64 [ %167, %.preheader92.lr.ph ], [ %indvars.iv.next495, %.thread55 ]
  %typed_vdata17.0277 = phi i32* [ %166, %.preheader92.lr.ph ], [ %210, %.thread55 ]
  %_j14.0276 = phi i32 [ 0, %.preheader92.lr.ph ], [ %209, %.thread55 ]
  %168 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge91

.backedge91:                                      ; preds = %187, %.thread54.preheader, %.thread54, %.preheader92
  %typed_outval18.0 = phi i32 [ 0, %.preheader92 ], [ %typed_outval18.1.lcssa, %.thread54 ], [ %typed_outval18.1.lcssa, %.thread54.preheader ], [ %typed_outval18.1.lcssa, %187 ]
  br i1 %8, label %.lr.ph259, label %._crit_edge260

.lr.ph259:                                        ; preds = %.backedge91, %.lr.ph259
  %indvars.iv484 = phi i64 [ %indvars.iv.next485, %.lr.ph259 ], [ 1, %.backedge91 ]
  %_vindex16.1257 = phi i32 [ %174, %.lr.ph259 ], [ 0, %.backedge91 ]
  %169 = getelementptr inbounds i32* %iterator, i64 %indvars.iv484
  %170 = load i32* %169, align 4, !tbaa !2
  %171 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv484
  %172 = load i32* %171, align 4, !tbaa !2
  %173 = mul nsw i32 %172, %170
  %174 = add nsw i32 %173, %_vindex16.1257
  %indvars.iv.next485 = add nuw nsw i64 %indvars.iv484, 1
  %lftr.wideiv486 = trunc i64 %indvars.iv484 to i32
  %exitcond487 = icmp eq i32 %lftr.wideiv486, %12
  br i1 %exitcond487, label %._crit_edge260, label %.lr.ph259

._crit_edge260:                                   ; preds = %.lr.ph259, %.backedge91
  %_vindex16.1.lcssa = phi i32 [ 0, %.backedge91 ], [ %174, %.lr.ph259 ]
  %175 = load i32* %from, align 4, !tbaa !2
  %176 = load i32* %to, align 4, !tbaa !2
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %.lr.ph265, label %._crit_edge266

.lr.ph265:                                        ; preds = %._crit_edge260
  %178 = sext i32 %175 to i64
  %179 = sext i32 %_vindex16.1.lcssa to i64
  %180 = sext i32 %176 to i64
  br label %181

; <label>:181                                     ; preds = %.lr.ph265, %181
  %indvars.iv488 = phi i64 [ %178, %.lr.ph265 ], [ %indvars.iv.next489, %181 ]
  %typed_outval18.1263 = phi i32 [ %typed_outval18.0, %.lr.ph265 ], [ %185, %181 ]
  %182 = add nsw i64 %indvars.iv488, %179
  %183 = getelementptr inbounds i32* %typed_vdata17.0277, i64 %182
  %184 = load i32* %183, align 4, !tbaa !2
  %185 = add nsw i32 %184, %typed_outval18.1263
  %indvars.iv.next489 = add nsw i64 %indvars.iv488, 1
  %186 = icmp slt i64 %indvars.iv.next489, %180
  br i1 %186, label %181, label %._crit_edge266

._crit_edge266:                                   ; preds = %181, %._crit_edge260
  %typed_outval18.1.lcssa = phi i32 [ %typed_outval18.0, %._crit_edge260 ], [ %185, %181 ]
  br i1 %8, label %187, label %.thread55

; <label>:187                                     ; preds = %._crit_edge266
  %188 = load i32* %9, align 4, !tbaa !2
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4, !tbaa !2
  %190 = load i32* %10, align 4, !tbaa !2
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %.backedge91, label %.preheader71

.preheader71:                                     ; preds = %187
  br i1 %11, label %.lr.ph269, label %.thread55

.lr.ph269:                                        ; preds = %.preheader71, %201
  %indvars.iv490 = phi i64 [ %indvars.iv.next491, %201 ], [ 2, %.preheader71 ]
  %192 = getelementptr inbounds i32* %iterator, i64 %indvars.iv490
  %193 = load i32* %192, align 4, !tbaa !2
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4, !tbaa !2
  %195 = getelementptr inbounds i32* %to, i64 %indvars.iv490
  %196 = load i32* %195, align 4, !tbaa !2
  %197 = icmp slt i32 %194, %196
  br i1 %197, label %.thread54.preheader, label %201

.thread54.preheader:                              ; preds = %.lr.ph269
  %198 = trunc i64 %indvars.iv490 to i32
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %.lr.ph274, label %.backedge91

.lr.ph274:                                        ; preds = %.thread54.preheader
  %sext542 = shl i64 %indvars.iv490, 32
  %200 = ashr exact i64 %sext542, 32
  br label %.thread54

; <label>:201                                     ; preds = %.lr.ph269
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, 1
  %202 = icmp slt i64 %indvars.iv.next491, %5
  br i1 %202, label %.lr.ph269, label %.thread55

.thread54:                                        ; preds = %.lr.ph274, %.thread54
  %indvars.iv492 = phi i64 [ %200, %.lr.ph274 ], [ %indvars.iv.next493, %.thread54 ]
  %indvars.iv.next493 = add nsw i64 %indvars.iv492, -1
  %203 = getelementptr inbounds i32* %from, i64 %indvars.iv.next493
  %204 = load i32* %203, align 4, !tbaa !2
  %205 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next493
  store i32 %204, i32* %205, align 4, !tbaa !2
  %206 = icmp sgt i64 %indvars.iv492, 1
  br i1 %206, label %.thread54, label %.backedge91

.thread55:                                        ; preds = %._crit_edge266, %.preheader71, %201
  %207 = sitofp i32 %typed_outval18.1.lcssa to double
  %indvars.iv.next495 = add nsw i64 %indvars.iv494, 1
  %208 = getelementptr inbounds double* %outvals, i64 %indvars.iv494
  store double %207, double* %208, align 8, !tbaa !9
  %209 = add nuw nsw i32 %_j14.0276, 1
  %210 = getelementptr inbounds i32* %typed_vdata17.0277, i64 1
  %exitcond496 = icmp eq i32 %_j14.0276, %13
  br i1 %exitcond496, label %..loopexit111_crit_edge, label %.preheader92

; <label>:211                                     ; preds = %17
  br i1 %2, label %.preheader95.lr.ph, label %.loopexit108

.preheader95.lr.ph:                               ; preds = %211
  %212 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv536
  %213 = bitcast i8** %212 to i64**
  %214 = load i64** %213, align 8, !tbaa !6
  %215 = sext i32 %total_outvals.0349 to i64
  br label %.preheader95

.preheader95:                                     ; preds = %.thread57, %.preheader95.lr.ph
  %indvars.iv481 = phi i64 [ %215, %.preheader95.lr.ph ], [ %indvars.iv.next482, %.thread57 ]
  %typed_vdata23.0254 = phi i64* [ %214, %.preheader95.lr.ph ], [ %258, %.thread57 ]
  %_j20.0253 = phi i32 [ 0, %.preheader95.lr.ph ], [ %257, %.thread57 ]
  %216 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge94

.backedge94:                                      ; preds = %235, %.thread56.preheader, %.thread56, %.preheader95
  %typed_outval24.0 = phi i64 [ 0, %.preheader95 ], [ %typed_outval24.1.lcssa, %.thread56 ], [ %typed_outval24.1.lcssa, %.thread56.preheader ], [ %typed_outval24.1.lcssa, %235 ]
  br i1 %8, label %.lr.ph236, label %._crit_edge237

.lr.ph236:                                        ; preds = %.backedge94, %.lr.ph236
  %indvars.iv471 = phi i64 [ %indvars.iv.next472, %.lr.ph236 ], [ 1, %.backedge94 ]
  %_vindex22.1234 = phi i32 [ %222, %.lr.ph236 ], [ 0, %.backedge94 ]
  %217 = getelementptr inbounds i32* %iterator, i64 %indvars.iv471
  %218 = load i32* %217, align 4, !tbaa !2
  %219 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv471
  %220 = load i32* %219, align 4, !tbaa !2
  %221 = mul nsw i32 %220, %218
  %222 = add nsw i32 %221, %_vindex22.1234
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1
  %lftr.wideiv473 = trunc i64 %indvars.iv471 to i32
  %exitcond474 = icmp eq i32 %lftr.wideiv473, %12
  br i1 %exitcond474, label %._crit_edge237, label %.lr.ph236

._crit_edge237:                                   ; preds = %.lr.ph236, %.backedge94
  %_vindex22.1.lcssa = phi i32 [ 0, %.backedge94 ], [ %222, %.lr.ph236 ]
  %223 = load i32* %from, align 4, !tbaa !2
  %224 = load i32* %to, align 4, !tbaa !2
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %.lr.ph242, label %._crit_edge243

.lr.ph242:                                        ; preds = %._crit_edge237
  %226 = sext i32 %223 to i64
  %227 = sext i32 %_vindex22.1.lcssa to i64
  %228 = sext i32 %224 to i64
  br label %229

; <label>:229                                     ; preds = %.lr.ph242, %229
  %indvars.iv475 = phi i64 [ %226, %.lr.ph242 ], [ %indvars.iv.next476, %229 ]
  %typed_outval24.1240 = phi i64 [ %typed_outval24.0, %.lr.ph242 ], [ %233, %229 ]
  %230 = add nsw i64 %indvars.iv475, %227
  %231 = getelementptr inbounds i64* %typed_vdata23.0254, i64 %230
  %232 = load i64* %231, align 8, !tbaa !13
  %233 = add nsw i64 %232, %typed_outval24.1240
  %indvars.iv.next476 = add nsw i64 %indvars.iv475, 1
  %234 = icmp slt i64 %indvars.iv.next476, %228
  br i1 %234, label %229, label %._crit_edge243

._crit_edge243:                                   ; preds = %229, %._crit_edge237
  %typed_outval24.1.lcssa = phi i64 [ %typed_outval24.0, %._crit_edge237 ], [ %233, %229 ]
  br i1 %8, label %235, label %.thread57

; <label>:235                                     ; preds = %._crit_edge243
  %236 = load i32* %9, align 4, !tbaa !2
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %9, align 4, !tbaa !2
  %238 = load i32* %10, align 4, !tbaa !2
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %.backedge94, label %.preheader73

.preheader73:                                     ; preds = %235
  br i1 %11, label %.lr.ph246, label %.thread57

.lr.ph246:                                        ; preds = %.preheader73, %249
  %indvars.iv477 = phi i64 [ %indvars.iv.next478, %249 ], [ 2, %.preheader73 ]
  %240 = getelementptr inbounds i32* %iterator, i64 %indvars.iv477
  %241 = load i32* %240, align 4, !tbaa !2
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 4, !tbaa !2
  %243 = getelementptr inbounds i32* %to, i64 %indvars.iv477
  %244 = load i32* %243, align 4, !tbaa !2
  %245 = icmp slt i32 %242, %244
  br i1 %245, label %.thread56.preheader, label %249

.thread56.preheader:                              ; preds = %.lr.ph246
  %246 = trunc i64 %indvars.iv477 to i32
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %.lr.ph251, label %.backedge94

.lr.ph251:                                        ; preds = %.thread56.preheader
  %sext541 = shl i64 %indvars.iv477, 32
  %248 = ashr exact i64 %sext541, 32
  br label %.thread56

; <label>:249                                     ; preds = %.lr.ph246
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1
  %250 = icmp slt i64 %indvars.iv.next478, %5
  br i1 %250, label %.lr.ph246, label %.thread57

.thread56:                                        ; preds = %.lr.ph251, %.thread56
  %indvars.iv479 = phi i64 [ %248, %.lr.ph251 ], [ %indvars.iv.next480, %.thread56 ]
  %indvars.iv.next480 = add nsw i64 %indvars.iv479, -1
  %251 = getelementptr inbounds i32* %from, i64 %indvars.iv.next480
  %252 = load i32* %251, align 4, !tbaa !2
  %253 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next480
  store i32 %252, i32* %253, align 4, !tbaa !2
  %254 = icmp sgt i64 %indvars.iv479, 1
  br i1 %254, label %.thread56, label %.backedge94

.thread57:                                        ; preds = %._crit_edge243, %.preheader73, %249
  %255 = sitofp i64 %typed_outval24.1.lcssa to double
  %indvars.iv.next482 = add nsw i64 %indvars.iv481, 1
  %256 = getelementptr inbounds double* %outvals, i64 %indvars.iv481
  store double %255, double* %256, align 8, !tbaa !9
  %257 = add nuw nsw i32 %_j20.0253, 1
  %258 = getelementptr inbounds i64* %typed_vdata23.0254, i64 1
  %exitcond483 = icmp eq i32 %_j20.0253, %13
  br i1 %exitcond483, label %..loopexit112_crit_edge, label %.preheader95

; <label>:259                                     ; preds = %17
  br i1 %2, label %.preheader98.lr.ph, label %.loopexit108

.preheader98.lr.ph:                               ; preds = %259
  %260 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv536
  %261 = bitcast i8** %260 to double**
  %262 = load double** %261, align 8, !tbaa !6
  %263 = sext i32 %total_outvals.0349 to i64
  br label %.preheader98

.preheader98:                                     ; preds = %.thread59, %.preheader98.lr.ph
  %indvars.iv468 = phi i64 [ %263, %.preheader98.lr.ph ], [ %indvars.iv.next469, %.thread59 ]
  %typed_vdata29.0231 = phi double* [ %262, %.preheader98.lr.ph ], [ %305, %.thread59 ]
  %_j26.0230 = phi i32 [ 0, %.preheader98.lr.ph ], [ %304, %.thread59 ]
  %264 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge97

.backedge97:                                      ; preds = %283, %.thread58.preheader, %.thread58, %.preheader98
  %typed_outval30.0 = phi double [ 0.000000e+00, %.preheader98 ], [ %typed_outval30.1.lcssa, %.thread58 ], [ %typed_outval30.1.lcssa, %.thread58.preheader ], [ %typed_outval30.1.lcssa, %283 ]
  br i1 %8, label %.lr.ph213, label %._crit_edge214

.lr.ph213:                                        ; preds = %.backedge97, %.lr.ph213
  %indvars.iv458 = phi i64 [ %indvars.iv.next459, %.lr.ph213 ], [ 1, %.backedge97 ]
  %_vindex28.1211 = phi i32 [ %270, %.lr.ph213 ], [ 0, %.backedge97 ]
  %265 = getelementptr inbounds i32* %iterator, i64 %indvars.iv458
  %266 = load i32* %265, align 4, !tbaa !2
  %267 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv458
  %268 = load i32* %267, align 4, !tbaa !2
  %269 = mul nsw i32 %268, %266
  %270 = add nsw i32 %269, %_vindex28.1211
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1
  %lftr.wideiv460 = trunc i64 %indvars.iv458 to i32
  %exitcond461 = icmp eq i32 %lftr.wideiv460, %12
  br i1 %exitcond461, label %._crit_edge214, label %.lr.ph213

._crit_edge214:                                   ; preds = %.lr.ph213, %.backedge97
  %_vindex28.1.lcssa = phi i32 [ 0, %.backedge97 ], [ %270, %.lr.ph213 ]
  %271 = load i32* %from, align 4, !tbaa !2
  %272 = load i32* %to, align 4, !tbaa !2
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %.lr.ph219, label %._crit_edge220

.lr.ph219:                                        ; preds = %._crit_edge214
  %274 = sext i32 %271 to i64
  %275 = sext i32 %_vindex28.1.lcssa to i64
  %276 = sext i32 %272 to i64
  br label %277

; <label>:277                                     ; preds = %.lr.ph219, %277
  %indvars.iv462 = phi i64 [ %274, %.lr.ph219 ], [ %indvars.iv.next463, %277 ]
  %typed_outval30.1217 = phi double [ %typed_outval30.0, %.lr.ph219 ], [ %281, %277 ]
  %278 = add nsw i64 %indvars.iv462, %275
  %279 = getelementptr inbounds double* %typed_vdata29.0231, i64 %278
  %280 = load double* %279, align 8, !tbaa !9
  %281 = fadd double %typed_outval30.1217, %280
  %indvars.iv.next463 = add nsw i64 %indvars.iv462, 1
  %282 = icmp slt i64 %indvars.iv.next463, %276
  br i1 %282, label %277, label %._crit_edge220

._crit_edge220:                                   ; preds = %277, %._crit_edge214
  %typed_outval30.1.lcssa = phi double [ %typed_outval30.0, %._crit_edge214 ], [ %281, %277 ]
  br i1 %8, label %283, label %.thread59

; <label>:283                                     ; preds = %._crit_edge220
  %284 = load i32* %9, align 4, !tbaa !2
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %9, align 4, !tbaa !2
  %286 = load i32* %10, align 4, !tbaa !2
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %.backedge97, label %.preheader75

.preheader75:                                     ; preds = %283
  br i1 %11, label %.lr.ph223, label %.thread59

.lr.ph223:                                        ; preds = %.preheader75, %297
  %indvars.iv464 = phi i64 [ %indvars.iv.next465, %297 ], [ 2, %.preheader75 ]
  %288 = getelementptr inbounds i32* %iterator, i64 %indvars.iv464
  %289 = load i32* %288, align 4, !tbaa !2
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 4, !tbaa !2
  %291 = getelementptr inbounds i32* %to, i64 %indvars.iv464
  %292 = load i32* %291, align 4, !tbaa !2
  %293 = icmp slt i32 %290, %292
  br i1 %293, label %.thread58.preheader, label %297

.thread58.preheader:                              ; preds = %.lr.ph223
  %294 = trunc i64 %indvars.iv464 to i32
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %.lr.ph228, label %.backedge97

.lr.ph228:                                        ; preds = %.thread58.preheader
  %sext540 = shl i64 %indvars.iv464, 32
  %296 = ashr exact i64 %sext540, 32
  br label %.thread58

; <label>:297                                     ; preds = %.lr.ph223
  %indvars.iv.next465 = add nuw nsw i64 %indvars.iv464, 1
  %298 = icmp slt i64 %indvars.iv.next465, %5
  br i1 %298, label %.lr.ph223, label %.thread59

.thread58:                                        ; preds = %.lr.ph228, %.thread58
  %indvars.iv466 = phi i64 [ %296, %.lr.ph228 ], [ %indvars.iv.next467, %.thread58 ]
  %indvars.iv.next467 = add nsw i64 %indvars.iv466, -1
  %299 = getelementptr inbounds i32* %from, i64 %indvars.iv.next467
  %300 = load i32* %299, align 4, !tbaa !2
  %301 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next467
  store i32 %300, i32* %301, align 4, !tbaa !2
  %302 = icmp sgt i64 %indvars.iv466, 1
  br i1 %302, label %.thread58, label %.backedge97

.thread59:                                        ; preds = %._crit_edge220, %.preheader75, %297
  %indvars.iv.next469 = add nsw i64 %indvars.iv468, 1
  %303 = getelementptr inbounds double* %outvals, i64 %indvars.iv468
  store double %typed_outval30.1.lcssa, double* %303, align 8, !tbaa !9
  %304 = add nuw nsw i32 %_j26.0230, 1
  %305 = getelementptr inbounds double* %typed_vdata29.0231, i64 1
  %exitcond470 = icmp eq i32 %_j26.0230, %13
  br i1 %exitcond470, label %..loopexit113_crit_edge, label %.preheader98

; <label>:306                                     ; preds = %17
  br i1 %2, label %.preheader101.lr.ph, label %.loopexit108

.preheader101.lr.ph:                              ; preds = %306
  %307 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv536
  %308 = bitcast i8** %307 to float**
  %309 = load float** %308, align 8, !tbaa !6
  %310 = sext i32 %total_outvals.0349 to i64
  br label %.preheader101

.preheader101:                                    ; preds = %.thread61, %.preheader101.lr.ph
  %indvars.iv455 = phi i64 [ %310, %.preheader101.lr.ph ], [ %indvars.iv.next456, %.thread61 ]
  %typed_vdata35.0208 = phi float* [ %309, %.preheader101.lr.ph ], [ %353, %.thread61 ]
  %_j32.0207 = phi i32 [ 0, %.preheader101.lr.ph ], [ %352, %.thread61 ]
  %311 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge100

.backedge100:                                     ; preds = %330, %.thread60.preheader, %.thread60, %.preheader101
  %typed_outval36.0 = phi float [ 0.000000e+00, %.preheader101 ], [ %typed_outval36.1.lcssa, %.thread60 ], [ %typed_outval36.1.lcssa, %.thread60.preheader ], [ %typed_outval36.1.lcssa, %330 ]
  br i1 %8, label %.lr.ph190, label %._crit_edge191

.lr.ph190:                                        ; preds = %.backedge100, %.lr.ph190
  %indvars.iv445 = phi i64 [ %indvars.iv.next446, %.lr.ph190 ], [ 1, %.backedge100 ]
  %_vindex34.1188 = phi i32 [ %317, %.lr.ph190 ], [ 0, %.backedge100 ]
  %312 = getelementptr inbounds i32* %iterator, i64 %indvars.iv445
  %313 = load i32* %312, align 4, !tbaa !2
  %314 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv445
  %315 = load i32* %314, align 4, !tbaa !2
  %316 = mul nsw i32 %315, %313
  %317 = add nsw i32 %316, %_vindex34.1188
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1
  %lftr.wideiv447 = trunc i64 %indvars.iv445 to i32
  %exitcond448 = icmp eq i32 %lftr.wideiv447, %12
  br i1 %exitcond448, label %._crit_edge191, label %.lr.ph190

._crit_edge191:                                   ; preds = %.lr.ph190, %.backedge100
  %_vindex34.1.lcssa = phi i32 [ 0, %.backedge100 ], [ %317, %.lr.ph190 ]
  %318 = load i32* %from, align 4, !tbaa !2
  %319 = load i32* %to, align 4, !tbaa !2
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %.lr.ph196, label %._crit_edge197

.lr.ph196:                                        ; preds = %._crit_edge191
  %321 = sext i32 %318 to i64
  %322 = sext i32 %_vindex34.1.lcssa to i64
  %323 = sext i32 %319 to i64
  br label %324

; <label>:324                                     ; preds = %.lr.ph196, %324
  %indvars.iv449 = phi i64 [ %321, %.lr.ph196 ], [ %indvars.iv.next450, %324 ]
  %typed_outval36.1194 = phi float [ %typed_outval36.0, %.lr.ph196 ], [ %328, %324 ]
  %325 = add nsw i64 %indvars.iv449, %322
  %326 = getelementptr inbounds float* %typed_vdata35.0208, i64 %325
  %327 = load float* %326, align 4, !tbaa !15
  %328 = fadd float %typed_outval36.1194, %327
  %indvars.iv.next450 = add nsw i64 %indvars.iv449, 1
  %329 = icmp slt i64 %indvars.iv.next450, %323
  br i1 %329, label %324, label %._crit_edge197

._crit_edge197:                                   ; preds = %324, %._crit_edge191
  %typed_outval36.1.lcssa = phi float [ %typed_outval36.0, %._crit_edge191 ], [ %328, %324 ]
  br i1 %8, label %330, label %.thread61

; <label>:330                                     ; preds = %._crit_edge197
  %331 = load i32* %9, align 4, !tbaa !2
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %9, align 4, !tbaa !2
  %333 = load i32* %10, align 4, !tbaa !2
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %.backedge100, label %.preheader77

.preheader77:                                     ; preds = %330
  br i1 %11, label %.lr.ph200, label %.thread61

.lr.ph200:                                        ; preds = %.preheader77, %344
  %indvars.iv451 = phi i64 [ %indvars.iv.next452, %344 ], [ 2, %.preheader77 ]
  %335 = getelementptr inbounds i32* %iterator, i64 %indvars.iv451
  %336 = load i32* %335, align 4, !tbaa !2
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %335, align 4, !tbaa !2
  %338 = getelementptr inbounds i32* %to, i64 %indvars.iv451
  %339 = load i32* %338, align 4, !tbaa !2
  %340 = icmp slt i32 %337, %339
  br i1 %340, label %.thread60.preheader, label %344

.thread60.preheader:                              ; preds = %.lr.ph200
  %341 = trunc i64 %indvars.iv451 to i32
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %.lr.ph205, label %.backedge100

.lr.ph205:                                        ; preds = %.thread60.preheader
  %sext539 = shl i64 %indvars.iv451, 32
  %343 = ashr exact i64 %sext539, 32
  br label %.thread60

; <label>:344                                     ; preds = %.lr.ph200
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1
  %345 = icmp slt i64 %indvars.iv.next452, %5
  br i1 %345, label %.lr.ph200, label %.thread61

.thread60:                                        ; preds = %.lr.ph205, %.thread60
  %indvars.iv453 = phi i64 [ %343, %.lr.ph205 ], [ %indvars.iv.next454, %.thread60 ]
  %indvars.iv.next454 = add nsw i64 %indvars.iv453, -1
  %346 = getelementptr inbounds i32* %from, i64 %indvars.iv.next454
  %347 = load i32* %346, align 4, !tbaa !2
  %348 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next454
  store i32 %347, i32* %348, align 4, !tbaa !2
  %349 = icmp sgt i64 %indvars.iv453, 1
  br i1 %349, label %.thread60, label %.backedge100

.thread61:                                        ; preds = %._crit_edge197, %.preheader77, %344
  %350 = fpext float %typed_outval36.1.lcssa to double
  %indvars.iv.next456 = add nsw i64 %indvars.iv455, 1
  %351 = getelementptr inbounds double* %outvals, i64 %indvars.iv455
  store double %350, double* %351, align 8, !tbaa !9
  %352 = add nuw nsw i32 %_j32.0207, 1
  %353 = getelementptr inbounds float* %typed_vdata35.0208, i64 1
  %exitcond457 = icmp eq i32 %_j32.0207, %13
  br i1 %exitcond457, label %..loopexit114_crit_edge, label %.preheader101

; <label>:354                                     ; preds = %17
  br i1 %2, label %.preheader104.lr.ph, label %.loopexit108

.preheader104.lr.ph:                              ; preds = %354
  %355 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv536
  %356 = bitcast i8** %355 to double**
  %357 = load double** %356, align 8, !tbaa !6
  %358 = sext i32 %total_outvals.0349 to i64
  br label %.preheader104

.preheader104:                                    ; preds = %.thread63, %.preheader104.lr.ph
  %indvars.iv442 = phi i64 [ %358, %.preheader104.lr.ph ], [ %indvars.iv.next443, %.thread63 ]
  %typed_vdata41.0185 = phi double* [ %357, %.preheader104.lr.ph ], [ %400, %.thread63 ]
  %_j38.0184 = phi i32 [ 0, %.preheader104.lr.ph ], [ %399, %.thread63 ]
  %359 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge103

.backedge103:                                     ; preds = %378, %.thread62.preheader, %.thread62, %.preheader104
  %typed_outval42.0 = phi double [ 0.000000e+00, %.preheader104 ], [ %typed_outval42.1.lcssa, %.thread62 ], [ %typed_outval42.1.lcssa, %.thread62.preheader ], [ %typed_outval42.1.lcssa, %378 ]
  br i1 %8, label %.lr.ph167, label %._crit_edge168

.lr.ph167:                                        ; preds = %.backedge103, %.lr.ph167
  %indvars.iv432 = phi i64 [ %indvars.iv.next433, %.lr.ph167 ], [ 1, %.backedge103 ]
  %_vindex40.1165 = phi i32 [ %365, %.lr.ph167 ], [ 0, %.backedge103 ]
  %360 = getelementptr inbounds i32* %iterator, i64 %indvars.iv432
  %361 = load i32* %360, align 4, !tbaa !2
  %362 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv432
  %363 = load i32* %362, align 4, !tbaa !2
  %364 = mul nsw i32 %363, %361
  %365 = add nsw i32 %364, %_vindex40.1165
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1
  %lftr.wideiv434 = trunc i64 %indvars.iv432 to i32
  %exitcond435 = icmp eq i32 %lftr.wideiv434, %12
  br i1 %exitcond435, label %._crit_edge168, label %.lr.ph167

._crit_edge168:                                   ; preds = %.lr.ph167, %.backedge103
  %_vindex40.1.lcssa = phi i32 [ 0, %.backedge103 ], [ %365, %.lr.ph167 ]
  %366 = load i32* %from, align 4, !tbaa !2
  %367 = load i32* %to, align 4, !tbaa !2
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %.lr.ph173, label %._crit_edge174

.lr.ph173:                                        ; preds = %._crit_edge168
  %369 = sext i32 %366 to i64
  %370 = sext i32 %_vindex40.1.lcssa to i64
  %371 = sext i32 %367 to i64
  br label %372

; <label>:372                                     ; preds = %.lr.ph173, %372
  %indvars.iv436 = phi i64 [ %369, %.lr.ph173 ], [ %indvars.iv.next437, %372 ]
  %typed_outval42.1171 = phi double [ %typed_outval42.0, %.lr.ph173 ], [ %376, %372 ]
  %373 = add nsw i64 %indvars.iv436, %370
  %374 = getelementptr inbounds double* %typed_vdata41.0185, i64 %373
  %375 = load double* %374, align 8, !tbaa !9
  %376 = fadd double %typed_outval42.1171, %375
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, 1
  %377 = icmp slt i64 %indvars.iv.next437, %371
  br i1 %377, label %372, label %._crit_edge174

._crit_edge174:                                   ; preds = %372, %._crit_edge168
  %typed_outval42.1.lcssa = phi double [ %typed_outval42.0, %._crit_edge168 ], [ %376, %372 ]
  br i1 %8, label %378, label %.thread63

; <label>:378                                     ; preds = %._crit_edge174
  %379 = load i32* %9, align 4, !tbaa !2
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %9, align 4, !tbaa !2
  %381 = load i32* %10, align 4, !tbaa !2
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %.backedge103, label %.preheader79

.preheader79:                                     ; preds = %378
  br i1 %11, label %.lr.ph177, label %.thread63

.lr.ph177:                                        ; preds = %.preheader79, %392
  %indvars.iv438 = phi i64 [ %indvars.iv.next439, %392 ], [ 2, %.preheader79 ]
  %383 = getelementptr inbounds i32* %iterator, i64 %indvars.iv438
  %384 = load i32* %383, align 4, !tbaa !2
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %383, align 4, !tbaa !2
  %386 = getelementptr inbounds i32* %to, i64 %indvars.iv438
  %387 = load i32* %386, align 4, !tbaa !2
  %388 = icmp slt i32 %385, %387
  br i1 %388, label %.thread62.preheader, label %392

.thread62.preheader:                              ; preds = %.lr.ph177
  %389 = trunc i64 %indvars.iv438 to i32
  %390 = icmp sgt i32 %389, 0
  br i1 %390, label %.lr.ph182, label %.backedge103

.lr.ph182:                                        ; preds = %.thread62.preheader
  %sext538 = shl i64 %indvars.iv438, 32
  %391 = ashr exact i64 %sext538, 32
  br label %.thread62

; <label>:392                                     ; preds = %.lr.ph177
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1
  %393 = icmp slt i64 %indvars.iv.next439, %5
  br i1 %393, label %.lr.ph177, label %.thread63

.thread62:                                        ; preds = %.lr.ph182, %.thread62
  %indvars.iv440 = phi i64 [ %391, %.lr.ph182 ], [ %indvars.iv.next441, %.thread62 ]
  %indvars.iv.next441 = add nsw i64 %indvars.iv440, -1
  %394 = getelementptr inbounds i32* %from, i64 %indvars.iv.next441
  %395 = load i32* %394, align 4, !tbaa !2
  %396 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next441
  store i32 %395, i32* %396, align 4, !tbaa !2
  %397 = icmp sgt i64 %indvars.iv440, 1
  br i1 %397, label %.thread62, label %.backedge103

.thread63:                                        ; preds = %._crit_edge174, %.preheader79, %392
  %indvars.iv.next443 = add nsw i64 %indvars.iv442, 1
  %398 = getelementptr inbounds double* %outvals, i64 %indvars.iv442
  store double %typed_outval42.1.lcssa, double* %398, align 8, !tbaa !9
  %399 = add nuw nsw i32 %_j38.0184, 1
  %400 = getelementptr inbounds double* %typed_vdata41.0185, i64 1
  %exitcond444 = icmp eq i32 %_j38.0184, %13
  br i1 %exitcond444, label %..loopexit115_crit_edge, label %.preheader104

; <label>:401                                     ; preds = %17
  br i1 %2, label %.preheader107.lr.ph, label %.loopexit108

.preheader107.lr.ph:                              ; preds = %401
  %402 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv536
  %403 = bitcast i8** %402 to x86_fp80**
  %404 = load x86_fp80** %403, align 8, !tbaa !6
  %405 = sext i32 %total_outvals.0349 to i64
  br label %.preheader107

.preheader107:                                    ; preds = %.thread65, %.preheader107.lr.ph
  %indvars.iv429 = phi i64 [ %405, %.preheader107.lr.ph ], [ %indvars.iv.next430, %.thread65 ]
  %typed_vdata47.0162 = phi x86_fp80* [ %404, %.preheader107.lr.ph ], [ %448, %.thread65 ]
  %_j44.0161 = phi i32 [ 0, %.preheader107.lr.ph ], [ %447, %.thread65 ]
  %406 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #5
  br label %.backedge106

.backedge106:                                     ; preds = %425, %.thread64.preheader, %.thread64, %.preheader107
  %typed_outval48.0 = phi x86_fp80 [ 0xK00000000000000000000, %.preheader107 ], [ %typed_outval48.1.lcssa, %.thread64 ], [ %typed_outval48.1.lcssa, %.thread64.preheader ], [ %typed_outval48.1.lcssa, %425 ]
  br i1 %8, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.backedge106, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %.backedge106 ]
  %_vindex46.1146 = phi i32 [ %412, %.lr.ph ], [ 0, %.backedge106 ]
  %407 = getelementptr inbounds i32* %iterator, i64 %indvars.iv
  %408 = load i32* %407, align 4, !tbaa !2
  %409 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv
  %410 = load i32* %409, align 4, !tbaa !2
  %411 = mul nsw i32 %410, %408
  %412 = add nsw i32 %411, %_vindex46.1146
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %12
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.backedge106
  %_vindex46.1.lcssa = phi i32 [ 0, %.backedge106 ], [ %412, %.lr.ph ]
  %413 = load i32* %from, align 4, !tbaa !2
  %414 = load i32* %to, align 4, !tbaa !2
  %415 = icmp slt i32 %413, %414
  br i1 %415, label %.lr.ph150, label %._crit_edge151

.lr.ph150:                                        ; preds = %._crit_edge
  %416 = sext i32 %413 to i64
  %417 = sext i32 %_vindex46.1.lcssa to i64
  %418 = sext i32 %414 to i64
  br label %419

; <label>:419                                     ; preds = %.lr.ph150, %419
  %indvars.iv423 = phi i64 [ %416, %.lr.ph150 ], [ %indvars.iv.next424, %419 ]
  %typed_outval48.1148 = phi x86_fp80 [ %typed_outval48.0, %.lr.ph150 ], [ %423, %419 ]
  %420 = add nsw i64 %indvars.iv423, %417
  %421 = getelementptr inbounds x86_fp80* %typed_vdata47.0162, i64 %420
  %422 = load x86_fp80* %421, align 16, !tbaa !17
  %423 = fadd x86_fp80 %typed_outval48.1148, %422
  %indvars.iv.next424 = add nsw i64 %indvars.iv423, 1
  %424 = icmp slt i64 %indvars.iv.next424, %418
  br i1 %424, label %419, label %._crit_edge151

._crit_edge151:                                   ; preds = %419, %._crit_edge
  %typed_outval48.1.lcssa = phi x86_fp80 [ %typed_outval48.0, %._crit_edge ], [ %423, %419 ]
  br i1 %8, label %425, label %.thread65

; <label>:425                                     ; preds = %._crit_edge151
  %426 = load i32* %9, align 4, !tbaa !2
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %9, align 4, !tbaa !2
  %428 = load i32* %10, align 4, !tbaa !2
  %429 = icmp slt i32 %427, %428
  br i1 %429, label %.backedge106, label %.preheader81

.preheader81:                                     ; preds = %425
  br i1 %11, label %.lr.ph154, label %.thread65

.lr.ph154:                                        ; preds = %.preheader81, %439
  %indvars.iv425 = phi i64 [ %indvars.iv.next426, %439 ], [ 2, %.preheader81 ]
  %430 = getelementptr inbounds i32* %iterator, i64 %indvars.iv425
  %431 = load i32* %430, align 4, !tbaa !2
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %430, align 4, !tbaa !2
  %433 = getelementptr inbounds i32* %to, i64 %indvars.iv425
  %434 = load i32* %433, align 4, !tbaa !2
  %435 = icmp slt i32 %432, %434
  br i1 %435, label %.thread64.preheader, label %439

.thread64.preheader:                              ; preds = %.lr.ph154
  %436 = trunc i64 %indvars.iv425 to i32
  %437 = icmp sgt i32 %436, 0
  br i1 %437, label %.lr.ph159, label %.backedge106

.lr.ph159:                                        ; preds = %.thread64.preheader
  %sext = shl i64 %indvars.iv425, 32
  %438 = ashr exact i64 %sext, 32
  br label %.thread64

; <label>:439                                     ; preds = %.lr.ph154
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1
  %440 = icmp slt i64 %indvars.iv.next426, %5
  br i1 %440, label %.lr.ph154, label %.thread65

.thread64:                                        ; preds = %.lr.ph159, %.thread64
  %indvars.iv427 = phi i64 [ %438, %.lr.ph159 ], [ %indvars.iv.next428, %.thread64 ]
  %indvars.iv.next428 = add nsw i64 %indvars.iv427, -1
  %441 = getelementptr inbounds i32* %from, i64 %indvars.iv.next428
  %442 = load i32* %441, align 4, !tbaa !2
  %443 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next428
  store i32 %442, i32* %443, align 4, !tbaa !2
  %444 = icmp sgt i64 %indvars.iv427, 1
  br i1 %444, label %.thread64, label %.backedge106

.thread65:                                        ; preds = %._crit_edge151, %.preheader81, %439
  %445 = fptrunc x86_fp80 %typed_outval48.1.lcssa to double
  %indvars.iv.next430 = add nsw i64 %indvars.iv429, 1
  %446 = getelementptr inbounds double* %outvals, i64 %indvars.iv429
  store double %445, double* %446, align 8, !tbaa !9
  %447 = add nuw nsw i32 %_j44.0161, 1
  %448 = getelementptr inbounds x86_fp80* %typed_vdata47.0162, i64 1
  %exitcond431 = icmp eq i32 %_j44.0161, %13
  br i1 %exitcond431, label %..loopexit116_crit_edge, label %.preheader107

; <label>:449                                     ; preds = %17
  %450 = tail call i32 @CCTK_Warn(i32 1, i32 305, i8* getelementptr inbounds ([85 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8]* @.str3, i64 0, i64 0)) #5
  br label %.loopexit117

; <label>:451                                     ; preds = %17
  %452 = tail call i32 @CCTK_Warn(i32 1, i32 309, i8* getelementptr inbounds ([85 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0)) #5
  br label %.loopexit117

..loopexit108_crit_edge:                          ; preds = %.thread49
  %453 = add nsw i64 %15, %23
  %454 = trunc i64 %453 to i32
  br label %.loopexit108

..loopexit109_crit_edge:                          ; preds = %.thread51
  %455 = add nsw i64 %15, %71
  %456 = trunc i64 %455 to i32
  br label %.loopexit108

..loopexit110_crit_edge:                          ; preds = %.thread53
  %457 = add nsw i64 %15, %119
  %458 = trunc i64 %457 to i32
  br label %.loopexit108

..loopexit111_crit_edge:                          ; preds = %.thread55
  %459 = add nsw i64 %15, %167
  %460 = trunc i64 %459 to i32
  br label %.loopexit108

..loopexit112_crit_edge:                          ; preds = %.thread57
  %461 = add nsw i64 %15, %215
  %462 = trunc i64 %461 to i32
  br label %.loopexit108

..loopexit113_crit_edge:                          ; preds = %.thread59
  %463 = add nsw i64 %15, %263
  %464 = trunc i64 %463 to i32
  br label %.loopexit108

..loopexit114_crit_edge:                          ; preds = %.thread61
  %465 = add nsw i64 %15, %310
  %466 = trunc i64 %465 to i32
  br label %.loopexit108

..loopexit115_crit_edge:                          ; preds = %.thread63
  %467 = add nsw i64 %15, %358
  %468 = trunc i64 %467 to i32
  br label %.loopexit108

..loopexit116_crit_edge:                          ; preds = %.thread65
  %469 = add nsw i64 %15, %405
  %470 = trunc i64 %469 to i32
  br label %.loopexit108

.loopexit108:                                     ; preds = %401, %..loopexit116_crit_edge, %354, %..loopexit115_crit_edge, %306, %..loopexit114_crit_edge, %259, %..loopexit113_crit_edge, %211, %..loopexit112_crit_edge, %163, %..loopexit111_crit_edge, %115, %..loopexit110_crit_edge, %67, %..loopexit109_crit_edge, %20, %..loopexit108_crit_edge
  %total_outvals.10 = phi i32 [ %454, %..loopexit108_crit_edge ], [ %total_outvals.0349, %20 ], [ %456, %..loopexit109_crit_edge ], [ %total_outvals.0349, %67 ], [ %458, %..loopexit110_crit_edge ], [ %total_outvals.0349, %115 ], [ %460, %..loopexit111_crit_edge ], [ %total_outvals.0349, %163 ], [ %462, %..loopexit112_crit_edge ], [ %total_outvals.0349, %211 ], [ %464, %..loopexit113_crit_edge ], [ %total_outvals.0349, %259 ], [ %466, %..loopexit114_crit_edge ], [ %total_outvals.0349, %306 ], [ %468, %..loopexit115_crit_edge ], [ %total_outvals.0349, %354 ], [ %470, %..loopexit116_crit_edge ], [ %total_outvals.0349, %401 ]
  %indvars.iv.next537 = add nuw nsw i64 %indvars.iv536, 1
  %471 = icmp slt i64 %indvars.iv.next537, %16
  br i1 %471, label %17, label %.loopexit117

.loopexit117:                                     ; preds = %.loopexit108, %0, %451, %449
  %.0 = phi i32 [ -1, %451 ], [ -1, %449 ], [ 0, %0 ], [ 0, %.loopexit108 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ReductionSumGVs(%struct.cGH* %GH, i32 %proc, i32 %num_outvals, i32 %outtype, i8* %outvals, i32 %num_invars, i32* %invars) #1 {
  %1 = tail call i32 @PUGH_ReductionGVs(%struct.cGH* %GH, i32 %proc, i32 %num_invars, i32* %invars, i32 %outtype, i32 %num_outvals, i8* %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionSum) #5
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
