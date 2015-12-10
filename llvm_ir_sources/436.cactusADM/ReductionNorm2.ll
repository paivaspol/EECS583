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
  ret i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), !dbg !259
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ReductionNorm2Arrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %dims, i32 %num_inarrays, i8** %inarrays, i32 %intype, i32 %num_outvals, i8* %outvals, i32 %outtype) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !71, metadata !260), !dbg !261
  tail call void @llvm.dbg.value(metadata i32 %proc, i64 0, metadata !72, metadata !260), !dbg !262
  tail call void @llvm.dbg.value(metadata i32 %num_dims, i64 0, metadata !73, metadata !260), !dbg !263
  tail call void @llvm.dbg.value(metadata i32* %dims, i64 0, metadata !74, metadata !260), !dbg !264
  tail call void @llvm.dbg.value(metadata i32 %num_inarrays, i64 0, metadata !75, metadata !260), !dbg !265
  tail call void @llvm.dbg.value(metadata i8** %inarrays, i64 0, metadata !76, metadata !260), !dbg !266
  tail call void @llvm.dbg.value(metadata i32 %intype, i64 0, metadata !77, metadata !260), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 %num_outvals, i64 0, metadata !78, metadata !260), !dbg !268
  tail call void @llvm.dbg.value(metadata i8* %outvals, i64 0, metadata !79, metadata !260), !dbg !269
  tail call void @llvm.dbg.value(metadata i32 %outtype, i64 0, metadata !80, metadata !260), !dbg !270
  %1 = tail call i32 @PUGH_ReductionArrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %dims, i32 %intype, i32 %num_inarrays, i8** %inarrays, i32 %outtype, i32 %num_outvals, i8* %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionNorm2) #6, !dbg !271
  ret i32 %1, !dbg !272
}

; Function Attrs: optsize
declare i32 @PUGH_ReductionArrays(%struct.cGH*, i32, i32, i32*, i32, i32, i8**, i32, i32, i8*, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @PUGH_ReductionNorm2(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %from, i32* %to, i32* %iterator, i32* nocapture readonly %points_per_dim, i32 %num_points, i32 %num_inarrays, i32* nocapture readonly %intypes, i8** nocapture readonly %inarrays, i32 %num_outvals, double* nocapture %outvals) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !96, metadata !260), !dbg !273
  tail call void @llvm.dbg.value(metadata i32 %proc, i64 0, metadata !97, metadata !260), !dbg !274
  tail call void @llvm.dbg.value(metadata i32 %num_dims, i64 0, metadata !98, metadata !260), !dbg !275
  tail call void @llvm.dbg.value(metadata i32* %from, i64 0, metadata !99, metadata !260), !dbg !276
  tail call void @llvm.dbg.value(metadata i32* %to, i64 0, metadata !100, metadata !260), !dbg !277
  tail call void @llvm.dbg.value(metadata i32* %iterator, i64 0, metadata !101, metadata !260), !dbg !278
  tail call void @llvm.dbg.value(metadata i32* %points_per_dim, i64 0, metadata !102, metadata !260), !dbg !279
  tail call void @llvm.dbg.value(metadata i32 %num_points, i64 0, metadata !103, metadata !260), !dbg !280
  tail call void @llvm.dbg.value(metadata i32 %num_inarrays, i64 0, metadata !104, metadata !260), !dbg !281
  tail call void @llvm.dbg.value(metadata i32* %intypes, i64 0, metadata !105, metadata !260), !dbg !282
  tail call void @llvm.dbg.value(metadata i8** %inarrays, i64 0, metadata !106, metadata !260), !dbg !283
  tail call void @llvm.dbg.value(metadata i32 %num_outvals, i64 0, metadata !107, metadata !260), !dbg !284
  tail call void @llvm.dbg.value(metadata double* %outvals, i64 0, metadata !108, metadata !260), !dbg !285
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !110, metadata !260), !dbg !286
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !109, metadata !260), !dbg !287
  %1 = icmp sgt i32 %num_inarrays, 0, !dbg !288
  br i1 %1, label %.lr.ph397, label %._crit_edge398, !dbg !289

.lr.ph397:                                        ; preds = %0
  %2 = icmp sgt i32 %num_outvals, 0, !dbg !290
  %3 = bitcast i32* %iterator to i8*, !dbg !293
  %4 = bitcast i32* %from to i8*, !dbg !293
  %5 = sext i32 %num_dims to i64, !dbg !293
  %6 = shl nsw i64 %5, 2, !dbg !293
  %7 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %3, i1 false), !dbg !293
  %8 = icmp sgt i32 %num_dims, 1, !dbg !295
  %9 = getelementptr inbounds i32* %iterator, i64 1, !dbg !299
  %10 = getelementptr inbounds i32* %to, i64 1, !dbg !299
  %11 = icmp sgt i32 %num_dims, 2, !dbg !303
  %12 = add i32 %num_dims, -1, !dbg !289
  %13 = add i32 %num_outvals, -1, !dbg !289
  %14 = zext i32 %13 to i64
  %15 = add nuw nsw i64 %14, 1, !dbg !307
  %16 = sext i32 %num_inarrays to i64, !dbg !289
  br label %17, !dbg !289

; <label>:17                                      ; preds = %.lr.ph397, %.loopexit123
  %indvars.iv609 = phi i64 [ 0, %.lr.ph397 ], [ %indvars.iv.next610, %.loopexit123 ]
  %total_outvals.0395 = phi i32 [ 0, %.lr.ph397 ], [ %total_outvals.11, %.loopexit123 ]
  %18 = getelementptr inbounds i32* %intypes, i64 %indvars.iv609, !dbg !309
  %19 = load i32* %18, align 4, !dbg !309, !tbaa !310
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
  ], !dbg !314

; <label>:20                                      ; preds = %17
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !188, metadata !260), !dbg !315
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !185, metadata !260), !dbg !315
  br i1 %2, label %.preheader95.lr.ph, label %.loopexit123, !dbg !316

.preheader95.lr.ph:                               ; preds = %20
  %21 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609, !dbg !315
  %22 = load i8** %21, align 8, !dbg !315, !tbaa !317
  %23 = sext i32 %total_outvals.0395 to i64
  br label %.preheader95, !dbg !316

.preheader95:                                     ; preds = %.thread55, %.preheader95.lr.ph
  %indvars.iv606 = phi i64 [ %23, %.preheader95.lr.ph ], [ %indvars.iv.next607, %.thread55 ]
  %typed_vdata.0392 = phi i8* [ %22, %.preheader95.lr.ph ], [ %67, %.thread55 ]
  %_j.0391 = phi i32 [ 0, %.preheader95.lr.ph ], [ %66, %.thread55 ]
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !189, metadata !260), !dbg !315
  %24 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6, !dbg !293
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !186, metadata !260), !dbg !315
  br label %.backedge, !dbg !293

.backedge:                                        ; preds = %44, %.thread.preheader, %.thread, %.preheader95
  %typed_outval.0 = phi i8 [ 0, %.preheader95 ], [ %typed_outval.1.lcssa, %.thread ], [ %typed_outval.1.lcssa, %.thread.preheader ], [ %typed_outval.1.lcssa, %44 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !187, metadata !260), !dbg !315
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !179, metadata !260), !dbg !315
  br i1 %8, label %.lr.ph374, label %._crit_edge375, !dbg !319

.lr.ph374:                                        ; preds = %.backedge, %.lr.ph374
  %indvars.iv596 = phi i64 [ %indvars.iv.next597, %.lr.ph374 ], [ 1, %.backedge ]
  %_vindex.1372 = phi i32 [ %30, %.lr.ph374 ], [ 0, %.backedge ]
  %25 = getelementptr inbounds i32* %iterator, i64 %indvars.iv596, !dbg !295
  %26 = load i32* %25, align 4, !dbg !295, !tbaa !310
  %27 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv596, !dbg !295
  %28 = load i32* %27, align 4, !dbg !295, !tbaa !310
  %29 = mul nsw i32 %28, %26, !dbg !295
  %30 = add nsw i32 %29, %_vindex.1372, !dbg !295
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !187, metadata !260), !dbg !315
  %indvars.iv.next597 = add nuw nsw i64 %indvars.iv596, 1, !dbg !319
  %lftr.wideiv598 = trunc i64 %indvars.iv596 to i32, !dbg !319
  %exitcond599 = icmp eq i32 %lftr.wideiv598, %12, !dbg !319
  br i1 %exitcond599, label %._crit_edge375, label %.lr.ph374, !dbg !319

._crit_edge375:                                   ; preds = %.lr.ph374, %.backedge
  %_vindex.1.lcssa = phi i32 [ 0, %.backedge ], [ %30, %.lr.ph374 ]
  %31 = load i32* %from, align 4, !dbg !320, !tbaa !310
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !179, metadata !260), !dbg !315
  %32 = load i32* %to, align 4, !dbg !322, !tbaa !310
  %33 = icmp slt i32 %31, %32, !dbg !322
  br i1 %33, label %.lr.ph380, label %._crit_edge381, !dbg !320

.lr.ph380:                                        ; preds = %._crit_edge375
  %34 = sext i32 %31 to i64
  %35 = sext i32 %_vindex.1.lcssa to i64, !dbg !320
  %36 = sext i32 %32 to i64, !dbg !320
  br label %37, !dbg !320

; <label>:37                                      ; preds = %.lr.ph380, %37
  %indvars.iv600 = phi i64 [ %34, %.lr.ph380 ], [ %indvars.iv.next601, %37 ]
  %typed_outval.1378 = phi i8 [ %typed_outval.0, %.lr.ph380 ], [ %42, %37 ]
  %38 = add nsw i64 %indvars.iv600, %35, !dbg !324
  %39 = getelementptr inbounds i8* %typed_vdata.0392, i64 %38, !dbg !324
  %40 = load i8* %39, align 1, !dbg !324, !tbaa !326
  %41 = mul i8 %40, %40, !dbg !324
  %42 = add i8 %41, %typed_outval.1378, !dbg !324
  tail call void @llvm.dbg.value(metadata i8 %42, i64 0, metadata !189, metadata !260), !dbg !315
  %indvars.iv.next601 = add nsw i64 %indvars.iv600, 1, !dbg !320
  %43 = icmp slt i64 %indvars.iv.next601, %36, !dbg !322
  br i1 %43, label %37, label %._crit_edge381, !dbg !320

._crit_edge381:                                   ; preds = %37, %._crit_edge375
  %typed_outval.1.lcssa = phi i8 [ %typed_outval.0, %._crit_edge375 ], [ %42, %37 ]
  br i1 %8, label %44, label %.thread55, !dbg !327

; <label>:44                                      ; preds = %._crit_edge381
  %45 = load i32* %9, align 4, !dbg !299, !tbaa !310
  %46 = add nsw i32 %45, 1, !dbg !299
  store i32 %46, i32* %9, align 4, !dbg !299, !tbaa !310
  %47 = load i32* %10, align 4, !dbg !299, !tbaa !310
  %48 = icmp slt i32 %46, %47, !dbg !299
  br i1 %48, label %.backedge, label %.preheader75, !dbg !328

.preheader75:                                     ; preds = %44
  br i1 %11, label %.lr.ph384, label %.thread55, !dbg !329

.lr.ph384:                                        ; preds = %.preheader75, %58
  %indvars.iv602 = phi i64 [ %indvars.iv.next603, %58 ], [ 2, %.preheader75 ]
  %49 = getelementptr inbounds i32* %iterator, i64 %indvars.iv602, !dbg !330
  %50 = load i32* %49, align 4, !dbg !330, !tbaa !310
  %51 = add nsw i32 %50, 1, !dbg !330
  store i32 %51, i32* %49, align 4, !dbg !330, !tbaa !310
  %52 = getelementptr inbounds i32* %to, i64 %indvars.iv602, !dbg !330
  %53 = load i32* %52, align 4, !dbg !330, !tbaa !310
  %54 = icmp slt i32 %51, %53, !dbg !330
  br i1 %54, label %.thread.preheader, label %58, !dbg !333

.thread.preheader:                                ; preds = %.lr.ph384
  %55 = trunc i64 %indvars.iv602 to i32, !dbg !334
  %56 = icmp sgt i32 %55, 0, !dbg !334
  br i1 %56, label %.lr.ph389, label %.backedge, !dbg !337

.lr.ph389:                                        ; preds = %.thread.preheader
  %sext619 = shl i64 %indvars.iv602, 32
  %57 = ashr exact i64 %sext619, 32
  br label %.thread, !dbg !337

; <label>:58                                      ; preds = %.lr.ph384
  %indvars.iv.next603 = add nuw nsw i64 %indvars.iv602, 1, !dbg !329
  %59 = icmp slt i64 %indvars.iv.next603, %5, !dbg !303
  br i1 %59, label %.lr.ph384, label %.thread55, !dbg !329

.thread:                                          ; preds = %.lr.ph389, %.thread
  %indvars.iv604 = phi i64 [ %57, %.lr.ph389 ], [ %indvars.iv.next605, %.thread ]
  %indvars.iv.next605 = add nsw i64 %indvars.iv604, -1, !dbg !337
  %60 = getelementptr inbounds i32* %from, i64 %indvars.iv.next605, !dbg !334
  %61 = load i32* %60, align 4, !dbg !334, !tbaa !310
  %62 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next605, !dbg !334
  store i32 %61, i32* %62, align 4, !dbg !334, !tbaa !310
  %63 = icmp sgt i64 %indvars.iv604, 1, !dbg !334
  br i1 %63, label %.thread, label %.backedge, !dbg !337

.thread55:                                        ; preds = %._crit_edge381, %.preheader75, %58
  %64 = uitofp i8 %typed_outval.1.lcssa to double, !dbg !293
  %indvars.iv.next607 = add nsw i64 %indvars.iv606, 1, !dbg !316
  %65 = getelementptr inbounds double* %outvals, i64 %indvars.iv606, !dbg !293
  store double %64, double* %65, align 8, !dbg !293, !tbaa !338
  %66 = add nuw nsw i32 %_j.0391, 1, !dbg !290
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !185, metadata !260), !dbg !315
  %67 = getelementptr inbounds i8* %typed_vdata.0392, i64 1, !dbg !290
  tail call void @llvm.dbg.value(metadata i8* %67, i64 0, metadata !188, metadata !260), !dbg !315
  %exitcond608 = icmp eq i32 %_j.0391, %13, !dbg !316
  br i1 %exitcond608, label %..loopexit123_crit_edge, label %.preheader95, !dbg !316

; <label>:68                                      ; preds = %17
  tail call void @llvm.dbg.value(metadata i32* %71, i64 0, metadata !195, metadata !260), !dbg !340
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !192, metadata !260), !dbg !340
  br i1 %2, label %.preheader98.lr.ph, label %.loopexit123, !dbg !341

.preheader98.lr.ph:                               ; preds = %68
  %69 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609, !dbg !340
  %70 = bitcast i8** %69 to i32**, !dbg !340
  %71 = load i32** %70, align 8, !dbg !340, !tbaa !317
  %72 = sext i32 %total_outvals.0395 to i64
  br label %.preheader98, !dbg !341

.preheader98:                                     ; preds = %.thread57, %.preheader98.lr.ph
  %indvars.iv593 = phi i64 [ %72, %.preheader98.lr.ph ], [ %indvars.iv.next594, %.thread57 ]
  %typed_vdata5.0369 = phi i32* [ %71, %.preheader98.lr.ph ], [ %116, %.thread57 ]
  %_j2.0368 = phi i32 [ 0, %.preheader98.lr.ph ], [ %115, %.thread57 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !196, metadata !260), !dbg !340
  %73 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6, !dbg !343
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !193, metadata !260), !dbg !340
  br label %.backedge97, !dbg !343

.backedge97:                                      ; preds = %93, %.thread56.preheader, %.thread56, %.preheader98
  %typed_outval6.0 = phi i32 [ 0, %.preheader98 ], [ %typed_outval6.1.lcssa, %.thread56 ], [ %typed_outval6.1.lcssa, %.thread56.preheader ], [ %typed_outval6.1.lcssa, %93 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !194, metadata !260), !dbg !340
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !190, metadata !260), !dbg !340
  br i1 %8, label %.lr.ph351, label %._crit_edge352, !dbg !346

.lr.ph351:                                        ; preds = %.backedge97, %.lr.ph351
  %indvars.iv583 = phi i64 [ %indvars.iv.next584, %.lr.ph351 ], [ 1, %.backedge97 ]
  %_vindex4.1349 = phi i32 [ %79, %.lr.ph351 ], [ 0, %.backedge97 ]
  %74 = getelementptr inbounds i32* %iterator, i64 %indvars.iv583, !dbg !349
  %75 = load i32* %74, align 4, !dbg !349, !tbaa !310
  %76 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv583, !dbg !349
  %77 = load i32* %76, align 4, !dbg !349, !tbaa !310
  %78 = mul nsw i32 %77, %75, !dbg !349
  %79 = add nsw i32 %78, %_vindex4.1349, !dbg !349
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !194, metadata !260), !dbg !340
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1, !dbg !346
  %lftr.wideiv585 = trunc i64 %indvars.iv583 to i32, !dbg !346
  %exitcond586 = icmp eq i32 %lftr.wideiv585, %12, !dbg !346
  br i1 %exitcond586, label %._crit_edge352, label %.lr.ph351, !dbg !346

._crit_edge352:                                   ; preds = %.lr.ph351, %.backedge97
  %_vindex4.1.lcssa = phi i32 [ 0, %.backedge97 ], [ %79, %.lr.ph351 ]
  %80 = load i32* %from, align 4, !dbg !351, !tbaa !310
  tail call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !190, metadata !260), !dbg !340
  %81 = load i32* %to, align 4, !dbg !353, !tbaa !310
  %82 = icmp slt i32 %80, %81, !dbg !353
  br i1 %82, label %.lr.ph357, label %._crit_edge358, !dbg !351

.lr.ph357:                                        ; preds = %._crit_edge352
  %83 = sext i32 %80 to i64
  %84 = sext i32 %_vindex4.1.lcssa to i64, !dbg !351
  %85 = sext i32 %81 to i64, !dbg !351
  br label %86, !dbg !351

; <label>:86                                      ; preds = %.lr.ph357, %86
  %indvars.iv587 = phi i64 [ %83, %.lr.ph357 ], [ %indvars.iv.next588, %86 ]
  %typed_outval6.1355 = phi i32 [ %typed_outval6.0, %.lr.ph357 ], [ %91, %86 ]
  %87 = add nsw i64 %indvars.iv587, %84, !dbg !355
  %88 = getelementptr inbounds i32* %typed_vdata5.0369, i64 %87, !dbg !355
  %89 = load i32* %88, align 4, !dbg !355, !tbaa !310
  %90 = mul nsw i32 %89, %89, !dbg !355
  %91 = add nsw i32 %90, %typed_outval6.1355, !dbg !355
  tail call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !196, metadata !260), !dbg !340
  %indvars.iv.next588 = add nsw i64 %indvars.iv587, 1, !dbg !351
  %92 = icmp slt i64 %indvars.iv.next588, %85, !dbg !353
  br i1 %92, label %86, label %._crit_edge358, !dbg !351

._crit_edge358:                                   ; preds = %86, %._crit_edge352
  %typed_outval6.1.lcssa = phi i32 [ %typed_outval6.0, %._crit_edge352 ], [ %91, %86 ]
  br i1 %8, label %93, label %.thread57, !dbg !357

; <label>:93                                      ; preds = %._crit_edge358
  %94 = load i32* %9, align 4, !dbg !358, !tbaa !310
  %95 = add nsw i32 %94, 1, !dbg !358
  store i32 %95, i32* %9, align 4, !dbg !358, !tbaa !310
  %96 = load i32* %10, align 4, !dbg !358, !tbaa !310
  %97 = icmp slt i32 %95, %96, !dbg !358
  br i1 %97, label %.backedge97, label %.preheader77, !dbg !362

.preheader77:                                     ; preds = %93
  br i1 %11, label %.lr.ph361, label %.thread57, !dbg !363

.lr.ph361:                                        ; preds = %.preheader77, %107
  %indvars.iv589 = phi i64 [ %indvars.iv.next590, %107 ], [ 2, %.preheader77 ]
  %98 = getelementptr inbounds i32* %iterator, i64 %indvars.iv589, !dbg !366
  %99 = load i32* %98, align 4, !dbg !366, !tbaa !310
  %100 = add nsw i32 %99, 1, !dbg !366
  store i32 %100, i32* %98, align 4, !dbg !366, !tbaa !310
  %101 = getelementptr inbounds i32* %to, i64 %indvars.iv589, !dbg !366
  %102 = load i32* %101, align 4, !dbg !366, !tbaa !310
  %103 = icmp slt i32 %100, %102, !dbg !366
  br i1 %103, label %.thread56.preheader, label %107, !dbg !370

.thread56.preheader:                              ; preds = %.lr.ph361
  %104 = trunc i64 %indvars.iv589 to i32, !dbg !371
  %105 = icmp sgt i32 %104, 0, !dbg !371
  br i1 %105, label %.lr.ph366, label %.backedge97, !dbg !374

.lr.ph366:                                        ; preds = %.thread56.preheader
  %sext618 = shl i64 %indvars.iv589, 32
  %106 = ashr exact i64 %sext618, 32
  br label %.thread56, !dbg !374

; <label>:107                                     ; preds = %.lr.ph361
  %indvars.iv.next590 = add nuw nsw i64 %indvars.iv589, 1, !dbg !363
  %108 = icmp slt i64 %indvars.iv.next590, %5, !dbg !375
  br i1 %108, label %.lr.ph361, label %.thread57, !dbg !363

.thread56:                                        ; preds = %.lr.ph366, %.thread56
  %indvars.iv591 = phi i64 [ %106, %.lr.ph366 ], [ %indvars.iv.next592, %.thread56 ]
  %indvars.iv.next592 = add nsw i64 %indvars.iv591, -1, !dbg !374
  %109 = getelementptr inbounds i32* %from, i64 %indvars.iv.next592, !dbg !371
  %110 = load i32* %109, align 4, !dbg !371, !tbaa !310
  %111 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next592, !dbg !371
  store i32 %110, i32* %111, align 4, !dbg !371, !tbaa !310
  %112 = icmp sgt i64 %indvars.iv591, 1, !dbg !371
  br i1 %112, label %.thread56, label %.backedge97, !dbg !374

.thread57:                                        ; preds = %._crit_edge358, %.preheader77, %107
  %113 = sitofp i32 %typed_outval6.1.lcssa to double, !dbg !343
  %indvars.iv.next594 = add nsw i64 %indvars.iv593, 1, !dbg !341
  %114 = getelementptr inbounds double* %outvals, i64 %indvars.iv593, !dbg !343
  store double %113, double* %114, align 8, !dbg !343, !tbaa !338
  %115 = add nuw nsw i32 %_j2.0368, 1, !dbg !376
  tail call void @llvm.dbg.value(metadata i32 %115, i64 0, metadata !192, metadata !260), !dbg !340
  %116 = getelementptr inbounds i32* %typed_vdata5.0369, i64 1, !dbg !376
  tail call void @llvm.dbg.value(metadata i32* %116, i64 0, metadata !195, metadata !260), !dbg !340
  %exitcond595 = icmp eq i32 %_j2.0368, %13, !dbg !341
  br i1 %exitcond595, label %..loopexit124_crit_edge, label %.preheader98, !dbg !341

; <label>:117                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata i16* %120, i64 0, metadata !202, metadata !260), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !199, metadata !260), !dbg !377
  br i1 %2, label %.preheader101.lr.ph, label %.loopexit123, !dbg !378

.preheader101.lr.ph:                              ; preds = %117
  %118 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609, !dbg !377
  %119 = bitcast i8** %118 to i16**, !dbg !377
  %120 = load i16** %119, align 8, !dbg !377, !tbaa !317
  %121 = sext i32 %total_outvals.0395 to i64
  br label %.preheader101, !dbg !378

.preheader101:                                    ; preds = %.thread59, %.preheader101.lr.ph
  %indvars.iv580 = phi i64 [ %121, %.preheader101.lr.ph ], [ %indvars.iv.next581, %.thread59 ]
  %typed_vdata11.0346 = phi i16* [ %120, %.preheader101.lr.ph ], [ %165, %.thread59 ]
  %_j8.0345 = phi i32 [ 0, %.preheader101.lr.ph ], [ %164, %.thread59 ]
  tail call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !203, metadata !260), !dbg !377
  %122 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6, !dbg !380
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !200, metadata !260), !dbg !377
  br label %.backedge100, !dbg !380

.backedge100:                                     ; preds = %142, %.thread58.preheader, %.thread58, %.preheader101
  %typed_outval12.0 = phi i16 [ 0, %.preheader101 ], [ %typed_outval12.1.lcssa, %.thread58 ], [ %typed_outval12.1.lcssa, %.thread58.preheader ], [ %typed_outval12.1.lcssa, %142 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !201, metadata !260), !dbg !377
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !197, metadata !260), !dbg !377
  br i1 %8, label %.lr.ph328, label %._crit_edge329, !dbg !383

.lr.ph328:                                        ; preds = %.backedge100, %.lr.ph328
  %indvars.iv570 = phi i64 [ %indvars.iv.next571, %.lr.ph328 ], [ 1, %.backedge100 ]
  %_vindex10.1326 = phi i32 [ %128, %.lr.ph328 ], [ 0, %.backedge100 ]
  %123 = getelementptr inbounds i32* %iterator, i64 %indvars.iv570, !dbg !386
  %124 = load i32* %123, align 4, !dbg !386, !tbaa !310
  %125 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv570, !dbg !386
  %126 = load i32* %125, align 4, !dbg !386, !tbaa !310
  %127 = mul nsw i32 %126, %124, !dbg !386
  %128 = add nsw i32 %127, %_vindex10.1326, !dbg !386
  tail call void @llvm.dbg.value(metadata i32 %128, i64 0, metadata !201, metadata !260), !dbg !377
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1, !dbg !383
  %lftr.wideiv572 = trunc i64 %indvars.iv570 to i32, !dbg !383
  %exitcond573 = icmp eq i32 %lftr.wideiv572, %12, !dbg !383
  br i1 %exitcond573, label %._crit_edge329, label %.lr.ph328, !dbg !383

._crit_edge329:                                   ; preds = %.lr.ph328, %.backedge100
  %_vindex10.1.lcssa = phi i32 [ 0, %.backedge100 ], [ %128, %.lr.ph328 ]
  %129 = load i32* %from, align 4, !dbg !388, !tbaa !310
  tail call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !197, metadata !260), !dbg !377
  %130 = load i32* %to, align 4, !dbg !390, !tbaa !310
  %131 = icmp slt i32 %129, %130, !dbg !390
  br i1 %131, label %.lr.ph334, label %._crit_edge335, !dbg !388

.lr.ph334:                                        ; preds = %._crit_edge329
  %132 = sext i32 %129 to i64
  %133 = sext i32 %_vindex10.1.lcssa to i64, !dbg !388
  %134 = sext i32 %130 to i64, !dbg !388
  br label %135, !dbg !388

; <label>:135                                     ; preds = %.lr.ph334, %135
  %indvars.iv574 = phi i64 [ %132, %.lr.ph334 ], [ %indvars.iv.next575, %135 ]
  %typed_outval12.1332 = phi i16 [ %typed_outval12.0, %.lr.ph334 ], [ %140, %135 ]
  %136 = add nsw i64 %indvars.iv574, %133, !dbg !392
  %137 = getelementptr inbounds i16* %typed_vdata11.0346, i64 %136, !dbg !392
  %138 = load i16* %137, align 2, !dbg !392, !tbaa !394
  %139 = mul i16 %138, %138, !dbg !392
  %140 = add i16 %139, %typed_outval12.1332, !dbg !392
  tail call void @llvm.dbg.value(metadata i16 %140, i64 0, metadata !203, metadata !260), !dbg !377
  %indvars.iv.next575 = add nsw i64 %indvars.iv574, 1, !dbg !388
  %141 = icmp slt i64 %indvars.iv.next575, %134, !dbg !390
  br i1 %141, label %135, label %._crit_edge335, !dbg !388

._crit_edge335:                                   ; preds = %135, %._crit_edge329
  %typed_outval12.1.lcssa = phi i16 [ %typed_outval12.0, %._crit_edge329 ], [ %140, %135 ]
  br i1 %8, label %142, label %.thread59, !dbg !396

; <label>:142                                     ; preds = %._crit_edge335
  %143 = load i32* %9, align 4, !dbg !397, !tbaa !310
  %144 = add nsw i32 %143, 1, !dbg !397
  store i32 %144, i32* %9, align 4, !dbg !397, !tbaa !310
  %145 = load i32* %10, align 4, !dbg !397, !tbaa !310
  %146 = icmp slt i32 %144, %145, !dbg !397
  br i1 %146, label %.backedge100, label %.preheader79, !dbg !401

.preheader79:                                     ; preds = %142
  br i1 %11, label %.lr.ph338, label %.thread59, !dbg !402

.lr.ph338:                                        ; preds = %.preheader79, %156
  %indvars.iv576 = phi i64 [ %indvars.iv.next577, %156 ], [ 2, %.preheader79 ]
  %147 = getelementptr inbounds i32* %iterator, i64 %indvars.iv576, !dbg !405
  %148 = load i32* %147, align 4, !dbg !405, !tbaa !310
  %149 = add nsw i32 %148, 1, !dbg !405
  store i32 %149, i32* %147, align 4, !dbg !405, !tbaa !310
  %150 = getelementptr inbounds i32* %to, i64 %indvars.iv576, !dbg !405
  %151 = load i32* %150, align 4, !dbg !405, !tbaa !310
  %152 = icmp slt i32 %149, %151, !dbg !405
  br i1 %152, label %.thread58.preheader, label %156, !dbg !409

.thread58.preheader:                              ; preds = %.lr.ph338
  %153 = trunc i64 %indvars.iv576 to i32, !dbg !410
  %154 = icmp sgt i32 %153, 0, !dbg !410
  br i1 %154, label %.lr.ph343, label %.backedge100, !dbg !413

.lr.ph343:                                        ; preds = %.thread58.preheader
  %sext617 = shl i64 %indvars.iv576, 32
  %155 = ashr exact i64 %sext617, 32
  br label %.thread58, !dbg !413

; <label>:156                                     ; preds = %.lr.ph338
  %indvars.iv.next577 = add nuw nsw i64 %indvars.iv576, 1, !dbg !402
  %157 = icmp slt i64 %indvars.iv.next577, %5, !dbg !414
  br i1 %157, label %.lr.ph338, label %.thread59, !dbg !402

.thread58:                                        ; preds = %.lr.ph343, %.thread58
  %indvars.iv578 = phi i64 [ %155, %.lr.ph343 ], [ %indvars.iv.next579, %.thread58 ]
  %indvars.iv.next579 = add nsw i64 %indvars.iv578, -1, !dbg !413
  %158 = getelementptr inbounds i32* %from, i64 %indvars.iv.next579, !dbg !410
  %159 = load i32* %158, align 4, !dbg !410, !tbaa !310
  %160 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next579, !dbg !410
  store i32 %159, i32* %160, align 4, !dbg !410, !tbaa !310
  %161 = icmp sgt i64 %indvars.iv578, 1, !dbg !410
  br i1 %161, label %.thread58, label %.backedge100, !dbg !413

.thread59:                                        ; preds = %._crit_edge335, %.preheader79, %156
  %162 = sitofp i16 %typed_outval12.1.lcssa to double, !dbg !380
  %indvars.iv.next581 = add nsw i64 %indvars.iv580, 1, !dbg !378
  %163 = getelementptr inbounds double* %outvals, i64 %indvars.iv580, !dbg !380
  store double %162, double* %163, align 8, !dbg !380, !tbaa !338
  %164 = add nuw nsw i32 %_j8.0345, 1, !dbg !415
  tail call void @llvm.dbg.value(metadata i32 %164, i64 0, metadata !199, metadata !260), !dbg !377
  %165 = getelementptr inbounds i16* %typed_vdata11.0346, i64 1, !dbg !415
  tail call void @llvm.dbg.value(metadata i16* %165, i64 0, metadata !202, metadata !260), !dbg !377
  %exitcond582 = icmp eq i32 %_j8.0345, %13, !dbg !378
  br i1 %exitcond582, label %..loopexit125_crit_edge, label %.preheader101, !dbg !378

; <label>:166                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata i32* %169, i64 0, metadata !209, metadata !260), !dbg !416
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !206, metadata !260), !dbg !416
  br i1 %2, label %.preheader104.lr.ph, label %.loopexit123, !dbg !417

.preheader104.lr.ph:                              ; preds = %166
  %167 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609, !dbg !416
  %168 = bitcast i8** %167 to i32**, !dbg !416
  %169 = load i32** %168, align 8, !dbg !416, !tbaa !317
  %170 = sext i32 %total_outvals.0395 to i64
  br label %.preheader104, !dbg !417

.preheader104:                                    ; preds = %.thread61, %.preheader104.lr.ph
  %indvars.iv567 = phi i64 [ %170, %.preheader104.lr.ph ], [ %indvars.iv.next568, %.thread61 ]
  %typed_vdata17.0323 = phi i32* [ %169, %.preheader104.lr.ph ], [ %214, %.thread61 ]
  %_j14.0322 = phi i32 [ 0, %.preheader104.lr.ph ], [ %213, %.thread61 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !210, metadata !260), !dbg !416
  %171 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6, !dbg !419
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !207, metadata !260), !dbg !416
  br label %.backedge103, !dbg !419

.backedge103:                                     ; preds = %191, %.thread60.preheader, %.thread60, %.preheader104
  %typed_outval18.0 = phi i32 [ 0, %.preheader104 ], [ %typed_outval18.1.lcssa, %.thread60 ], [ %typed_outval18.1.lcssa, %.thread60.preheader ], [ %typed_outval18.1.lcssa, %191 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !208, metadata !260), !dbg !416
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !204, metadata !260), !dbg !416
  br i1 %8, label %.lr.ph305, label %._crit_edge306, !dbg !422

.lr.ph305:                                        ; preds = %.backedge103, %.lr.ph305
  %indvars.iv557 = phi i64 [ %indvars.iv.next558, %.lr.ph305 ], [ 1, %.backedge103 ]
  %_vindex16.1303 = phi i32 [ %177, %.lr.ph305 ], [ 0, %.backedge103 ]
  %172 = getelementptr inbounds i32* %iterator, i64 %indvars.iv557, !dbg !425
  %173 = load i32* %172, align 4, !dbg !425, !tbaa !310
  %174 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv557, !dbg !425
  %175 = load i32* %174, align 4, !dbg !425, !tbaa !310
  %176 = mul nsw i32 %175, %173, !dbg !425
  %177 = add nsw i32 %176, %_vindex16.1303, !dbg !425
  tail call void @llvm.dbg.value(metadata i32 %177, i64 0, metadata !208, metadata !260), !dbg !416
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1, !dbg !422
  %lftr.wideiv559 = trunc i64 %indvars.iv557 to i32, !dbg !422
  %exitcond560 = icmp eq i32 %lftr.wideiv559, %12, !dbg !422
  br i1 %exitcond560, label %._crit_edge306, label %.lr.ph305, !dbg !422

._crit_edge306:                                   ; preds = %.lr.ph305, %.backedge103
  %_vindex16.1.lcssa = phi i32 [ 0, %.backedge103 ], [ %177, %.lr.ph305 ]
  %178 = load i32* %from, align 4, !dbg !427, !tbaa !310
  tail call void @llvm.dbg.value(metadata i32 %178, i64 0, metadata !204, metadata !260), !dbg !416
  %179 = load i32* %to, align 4, !dbg !429, !tbaa !310
  %180 = icmp slt i32 %178, %179, !dbg !429
  br i1 %180, label %.lr.ph311, label %._crit_edge312, !dbg !427

.lr.ph311:                                        ; preds = %._crit_edge306
  %181 = sext i32 %178 to i64
  %182 = sext i32 %_vindex16.1.lcssa to i64, !dbg !427
  %183 = sext i32 %179 to i64, !dbg !427
  br label %184, !dbg !427

; <label>:184                                     ; preds = %.lr.ph311, %184
  %indvars.iv561 = phi i64 [ %181, %.lr.ph311 ], [ %indvars.iv.next562, %184 ]
  %typed_outval18.1309 = phi i32 [ %typed_outval18.0, %.lr.ph311 ], [ %189, %184 ]
  %185 = add nsw i64 %indvars.iv561, %182, !dbg !431
  %186 = getelementptr inbounds i32* %typed_vdata17.0323, i64 %185, !dbg !431
  %187 = load i32* %186, align 4, !dbg !431, !tbaa !310
  %188 = mul nsw i32 %187, %187, !dbg !431
  %189 = add nsw i32 %188, %typed_outval18.1309, !dbg !431
  tail call void @llvm.dbg.value(metadata i32 %189, i64 0, metadata !210, metadata !260), !dbg !416
  %indvars.iv.next562 = add nsw i64 %indvars.iv561, 1, !dbg !427
  %190 = icmp slt i64 %indvars.iv.next562, %183, !dbg !429
  br i1 %190, label %184, label %._crit_edge312, !dbg !427

._crit_edge312:                                   ; preds = %184, %._crit_edge306
  %typed_outval18.1.lcssa = phi i32 [ %typed_outval18.0, %._crit_edge306 ], [ %189, %184 ]
  br i1 %8, label %191, label %.thread61, !dbg !433

; <label>:191                                     ; preds = %._crit_edge312
  %192 = load i32* %9, align 4, !dbg !434, !tbaa !310
  %193 = add nsw i32 %192, 1, !dbg !434
  store i32 %193, i32* %9, align 4, !dbg !434, !tbaa !310
  %194 = load i32* %10, align 4, !dbg !434, !tbaa !310
  %195 = icmp slt i32 %193, %194, !dbg !434
  br i1 %195, label %.backedge103, label %.preheader81, !dbg !438

.preheader81:                                     ; preds = %191
  br i1 %11, label %.lr.ph315, label %.thread61, !dbg !439

.lr.ph315:                                        ; preds = %.preheader81, %205
  %indvars.iv563 = phi i64 [ %indvars.iv.next564, %205 ], [ 2, %.preheader81 ]
  %196 = getelementptr inbounds i32* %iterator, i64 %indvars.iv563, !dbg !442
  %197 = load i32* %196, align 4, !dbg !442, !tbaa !310
  %198 = add nsw i32 %197, 1, !dbg !442
  store i32 %198, i32* %196, align 4, !dbg !442, !tbaa !310
  %199 = getelementptr inbounds i32* %to, i64 %indvars.iv563, !dbg !442
  %200 = load i32* %199, align 4, !dbg !442, !tbaa !310
  %201 = icmp slt i32 %198, %200, !dbg !442
  br i1 %201, label %.thread60.preheader, label %205, !dbg !446

.thread60.preheader:                              ; preds = %.lr.ph315
  %202 = trunc i64 %indvars.iv563 to i32, !dbg !447
  %203 = icmp sgt i32 %202, 0, !dbg !447
  br i1 %203, label %.lr.ph320, label %.backedge103, !dbg !450

.lr.ph320:                                        ; preds = %.thread60.preheader
  %sext616 = shl i64 %indvars.iv563, 32
  %204 = ashr exact i64 %sext616, 32
  br label %.thread60, !dbg !450

; <label>:205                                     ; preds = %.lr.ph315
  %indvars.iv.next564 = add nuw nsw i64 %indvars.iv563, 1, !dbg !439
  %206 = icmp slt i64 %indvars.iv.next564, %5, !dbg !451
  br i1 %206, label %.lr.ph315, label %.thread61, !dbg !439

.thread60:                                        ; preds = %.lr.ph320, %.thread60
  %indvars.iv565 = phi i64 [ %204, %.lr.ph320 ], [ %indvars.iv.next566, %.thread60 ]
  %indvars.iv.next566 = add nsw i64 %indvars.iv565, -1, !dbg !450
  %207 = getelementptr inbounds i32* %from, i64 %indvars.iv.next566, !dbg !447
  %208 = load i32* %207, align 4, !dbg !447, !tbaa !310
  %209 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next566, !dbg !447
  store i32 %208, i32* %209, align 4, !dbg !447, !tbaa !310
  %210 = icmp sgt i64 %indvars.iv565, 1, !dbg !447
  br i1 %210, label %.thread60, label %.backedge103, !dbg !450

.thread61:                                        ; preds = %._crit_edge312, %.preheader81, %205
  %211 = sitofp i32 %typed_outval18.1.lcssa to double, !dbg !419
  %indvars.iv.next568 = add nsw i64 %indvars.iv567, 1, !dbg !417
  %212 = getelementptr inbounds double* %outvals, i64 %indvars.iv567, !dbg !419
  store double %211, double* %212, align 8, !dbg !419, !tbaa !338
  %213 = add nuw nsw i32 %_j14.0322, 1, !dbg !452
  tail call void @llvm.dbg.value(metadata i32 %213, i64 0, metadata !206, metadata !260), !dbg !416
  %214 = getelementptr inbounds i32* %typed_vdata17.0323, i64 1, !dbg !452
  tail call void @llvm.dbg.value(metadata i32* %214, i64 0, metadata !209, metadata !260), !dbg !416
  %exitcond569 = icmp eq i32 %_j14.0322, %13, !dbg !417
  br i1 %exitcond569, label %..loopexit126_crit_edge, label %.preheader104, !dbg !417

; <label>:215                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata i64* %218, i64 0, metadata !216, metadata !260), !dbg !453
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !213, metadata !260), !dbg !453
  br i1 %2, label %.preheader107.lr.ph, label %.loopexit123, !dbg !454

.preheader107.lr.ph:                              ; preds = %215
  %216 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609, !dbg !453
  %217 = bitcast i8** %216 to i64**, !dbg !453
  %218 = load i64** %217, align 8, !dbg !453, !tbaa !317
  %219 = sext i32 %total_outvals.0395 to i64
  br label %.preheader107, !dbg !454

.preheader107:                                    ; preds = %.thread63, %.preheader107.lr.ph
  %indvars.iv554 = phi i64 [ %219, %.preheader107.lr.ph ], [ %indvars.iv.next555, %.thread63 ]
  %typed_vdata23.0300 = phi i64* [ %218, %.preheader107.lr.ph ], [ %263, %.thread63 ]
  %_j20.0299 = phi i32 [ 0, %.preheader107.lr.ph ], [ %262, %.thread63 ]
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !217, metadata !260), !dbg !453
  %220 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6, !dbg !456
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !214, metadata !260), !dbg !453
  br label %.backedge106, !dbg !456

.backedge106:                                     ; preds = %240, %.thread62.preheader, %.thread62, %.preheader107
  %typed_outval24.0 = phi i64 [ 0, %.preheader107 ], [ %typed_outval24.1.lcssa, %.thread62 ], [ %typed_outval24.1.lcssa, %.thread62.preheader ], [ %typed_outval24.1.lcssa, %240 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !215, metadata !260), !dbg !453
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !211, metadata !260), !dbg !453
  br i1 %8, label %.lr.ph282, label %._crit_edge283, !dbg !459

.lr.ph282:                                        ; preds = %.backedge106, %.lr.ph282
  %indvars.iv544 = phi i64 [ %indvars.iv.next545, %.lr.ph282 ], [ 1, %.backedge106 ]
  %_vindex22.1280 = phi i32 [ %226, %.lr.ph282 ], [ 0, %.backedge106 ]
  %221 = getelementptr inbounds i32* %iterator, i64 %indvars.iv544, !dbg !462
  %222 = load i32* %221, align 4, !dbg !462, !tbaa !310
  %223 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv544, !dbg !462
  %224 = load i32* %223, align 4, !dbg !462, !tbaa !310
  %225 = mul nsw i32 %224, %222, !dbg !462
  %226 = add nsw i32 %225, %_vindex22.1280, !dbg !462
  tail call void @llvm.dbg.value(metadata i32 %226, i64 0, metadata !215, metadata !260), !dbg !453
  %indvars.iv.next545 = add nuw nsw i64 %indvars.iv544, 1, !dbg !459
  %lftr.wideiv546 = trunc i64 %indvars.iv544 to i32, !dbg !459
  %exitcond547 = icmp eq i32 %lftr.wideiv546, %12, !dbg !459
  br i1 %exitcond547, label %._crit_edge283, label %.lr.ph282, !dbg !459

._crit_edge283:                                   ; preds = %.lr.ph282, %.backedge106
  %_vindex22.1.lcssa = phi i32 [ 0, %.backedge106 ], [ %226, %.lr.ph282 ]
  %227 = load i32* %from, align 4, !dbg !464, !tbaa !310
  tail call void @llvm.dbg.value(metadata i32 %227, i64 0, metadata !211, metadata !260), !dbg !453
  %228 = load i32* %to, align 4, !dbg !466, !tbaa !310
  %229 = icmp slt i32 %227, %228, !dbg !466
  br i1 %229, label %.lr.ph288, label %._crit_edge289, !dbg !464

.lr.ph288:                                        ; preds = %._crit_edge283
  %230 = sext i32 %227 to i64
  %231 = sext i32 %_vindex22.1.lcssa to i64, !dbg !464
  %232 = sext i32 %228 to i64, !dbg !464
  br label %233, !dbg !464

; <label>:233                                     ; preds = %.lr.ph288, %233
  %indvars.iv548 = phi i64 [ %230, %.lr.ph288 ], [ %indvars.iv.next549, %233 ]
  %typed_outval24.1286 = phi i64 [ %typed_outval24.0, %.lr.ph288 ], [ %238, %233 ]
  %234 = add nsw i64 %indvars.iv548, %231, !dbg !468
  %235 = getelementptr inbounds i64* %typed_vdata23.0300, i64 %234, !dbg !468
  %236 = load i64* %235, align 8, !dbg !468, !tbaa !470
  %237 = mul nsw i64 %236, %236, !dbg !468
  %238 = add nsw i64 %237, %typed_outval24.1286, !dbg !468
  tail call void @llvm.dbg.value(metadata i64 %238, i64 0, metadata !217, metadata !260), !dbg !453
  %indvars.iv.next549 = add nsw i64 %indvars.iv548, 1, !dbg !464
  %239 = icmp slt i64 %indvars.iv.next549, %232, !dbg !466
  br i1 %239, label %233, label %._crit_edge289, !dbg !464

._crit_edge289:                                   ; preds = %233, %._crit_edge283
  %typed_outval24.1.lcssa = phi i64 [ %typed_outval24.0, %._crit_edge283 ], [ %238, %233 ]
  br i1 %8, label %240, label %.thread63, !dbg !472

; <label>:240                                     ; preds = %._crit_edge289
  %241 = load i32* %9, align 4, !dbg !473, !tbaa !310
  %242 = add nsw i32 %241, 1, !dbg !473
  store i32 %242, i32* %9, align 4, !dbg !473, !tbaa !310
  %243 = load i32* %10, align 4, !dbg !473, !tbaa !310
  %244 = icmp slt i32 %242, %243, !dbg !473
  br i1 %244, label %.backedge106, label %.preheader83, !dbg !477

.preheader83:                                     ; preds = %240
  br i1 %11, label %.lr.ph292, label %.thread63, !dbg !478

.lr.ph292:                                        ; preds = %.preheader83, %254
  %indvars.iv550 = phi i64 [ %indvars.iv.next551, %254 ], [ 2, %.preheader83 ]
  %245 = getelementptr inbounds i32* %iterator, i64 %indvars.iv550, !dbg !481
  %246 = load i32* %245, align 4, !dbg !481, !tbaa !310
  %247 = add nsw i32 %246, 1, !dbg !481
  store i32 %247, i32* %245, align 4, !dbg !481, !tbaa !310
  %248 = getelementptr inbounds i32* %to, i64 %indvars.iv550, !dbg !481
  %249 = load i32* %248, align 4, !dbg !481, !tbaa !310
  %250 = icmp slt i32 %247, %249, !dbg !481
  br i1 %250, label %.thread62.preheader, label %254, !dbg !485

.thread62.preheader:                              ; preds = %.lr.ph292
  %251 = trunc i64 %indvars.iv550 to i32, !dbg !486
  %252 = icmp sgt i32 %251, 0, !dbg !486
  br i1 %252, label %.lr.ph297, label %.backedge106, !dbg !489

.lr.ph297:                                        ; preds = %.thread62.preheader
  %sext615 = shl i64 %indvars.iv550, 32
  %253 = ashr exact i64 %sext615, 32
  br label %.thread62, !dbg !489

; <label>:254                                     ; preds = %.lr.ph292
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1, !dbg !478
  %255 = icmp slt i64 %indvars.iv.next551, %5, !dbg !490
  br i1 %255, label %.lr.ph292, label %.thread63, !dbg !478

.thread62:                                        ; preds = %.lr.ph297, %.thread62
  %indvars.iv552 = phi i64 [ %253, %.lr.ph297 ], [ %indvars.iv.next553, %.thread62 ]
  %indvars.iv.next553 = add nsw i64 %indvars.iv552, -1, !dbg !489
  %256 = getelementptr inbounds i32* %from, i64 %indvars.iv.next553, !dbg !486
  %257 = load i32* %256, align 4, !dbg !486, !tbaa !310
  %258 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next553, !dbg !486
  store i32 %257, i32* %258, align 4, !dbg !486, !tbaa !310
  %259 = icmp sgt i64 %indvars.iv552, 1, !dbg !486
  br i1 %259, label %.thread62, label %.backedge106, !dbg !489

.thread63:                                        ; preds = %._crit_edge289, %.preheader83, %254
  %260 = sitofp i64 %typed_outval24.1.lcssa to double, !dbg !456
  %indvars.iv.next555 = add nsw i64 %indvars.iv554, 1, !dbg !454
  %261 = getelementptr inbounds double* %outvals, i64 %indvars.iv554, !dbg !456
  store double %260, double* %261, align 8, !dbg !456, !tbaa !338
  %262 = add nuw nsw i32 %_j20.0299, 1, !dbg !491
  tail call void @llvm.dbg.value(metadata i32 %262, i64 0, metadata !213, metadata !260), !dbg !453
  %263 = getelementptr inbounds i64* %typed_vdata23.0300, i64 1, !dbg !491
  tail call void @llvm.dbg.value(metadata i64* %263, i64 0, metadata !216, metadata !260), !dbg !453
  %exitcond556 = icmp eq i32 %_j20.0299, %13, !dbg !454
  br i1 %exitcond556, label %..loopexit127_crit_edge, label %.preheader107, !dbg !454

; <label>:264                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata double* %267, i64 0, metadata !223, metadata !260), !dbg !492
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !220, metadata !260), !dbg !492
  br i1 %2, label %.preheader110.lr.ph, label %.loopexit123, !dbg !493

.preheader110.lr.ph:                              ; preds = %264
  %265 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609, !dbg !492
  %266 = bitcast i8** %265 to double**, !dbg !492
  %267 = load double** %266, align 8, !dbg !492, !tbaa !317
  %268 = sext i32 %total_outvals.0395 to i64
  br label %.preheader110, !dbg !493

.preheader110:                                    ; preds = %.thread65, %.preheader110.lr.ph
  %indvars.iv541 = phi i64 [ %268, %.preheader110.lr.ph ], [ %indvars.iv.next542, %.thread65 ]
  %typed_vdata29.0277 = phi double* [ %267, %.preheader110.lr.ph ], [ %311, %.thread65 ]
  %_j26.0276 = phi i32 [ 0, %.preheader110.lr.ph ], [ %310, %.thread65 ]
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !224, metadata !260), !dbg !492
  %269 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6, !dbg !495
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !221, metadata !260), !dbg !492
  br label %.backedge109, !dbg !495

.backedge109:                                     ; preds = %289, %.thread64.preheader, %.thread64, %.preheader110
  %typed_outval30.0 = phi double [ 0.000000e+00, %.preheader110 ], [ %typed_outval30.1.lcssa, %.thread64 ], [ %typed_outval30.1.lcssa, %.thread64.preheader ], [ %typed_outval30.1.lcssa, %289 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !222, metadata !260), !dbg !492
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !218, metadata !260), !dbg !492
  br i1 %8, label %.lr.ph259, label %._crit_edge260, !dbg !498

.lr.ph259:                                        ; preds = %.backedge109, %.lr.ph259
  %indvars.iv531 = phi i64 [ %indvars.iv.next532, %.lr.ph259 ], [ 1, %.backedge109 ]
  %_vindex28.1257 = phi i32 [ %275, %.lr.ph259 ], [ 0, %.backedge109 ]
  %270 = getelementptr inbounds i32* %iterator, i64 %indvars.iv531, !dbg !501
  %271 = load i32* %270, align 4, !dbg !501, !tbaa !310
  %272 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv531, !dbg !501
  %273 = load i32* %272, align 4, !dbg !501, !tbaa !310
  %274 = mul nsw i32 %273, %271, !dbg !501
  %275 = add nsw i32 %274, %_vindex28.1257, !dbg !501
  tail call void @llvm.dbg.value(metadata i32 %275, i64 0, metadata !222, metadata !260), !dbg !492
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1, !dbg !498
  %lftr.wideiv533 = trunc i64 %indvars.iv531 to i32, !dbg !498
  %exitcond534 = icmp eq i32 %lftr.wideiv533, %12, !dbg !498
  br i1 %exitcond534, label %._crit_edge260, label %.lr.ph259, !dbg !498

._crit_edge260:                                   ; preds = %.lr.ph259, %.backedge109
  %_vindex28.1.lcssa = phi i32 [ 0, %.backedge109 ], [ %275, %.lr.ph259 ]
  %276 = load i32* %from, align 4, !dbg !503, !tbaa !310
  tail call void @llvm.dbg.value(metadata i32 %276, i64 0, metadata !218, metadata !260), !dbg !492
  %277 = load i32* %to, align 4, !dbg !505, !tbaa !310
  %278 = icmp slt i32 %276, %277, !dbg !505
  br i1 %278, label %.lr.ph265, label %._crit_edge266, !dbg !503

.lr.ph265:                                        ; preds = %._crit_edge260
  %279 = sext i32 %276 to i64
  %280 = sext i32 %_vindex28.1.lcssa to i64, !dbg !503
  %281 = sext i32 %277 to i64, !dbg !503
  br label %282, !dbg !503

; <label>:282                                     ; preds = %.lr.ph265, %282
  %indvars.iv535 = phi i64 [ %279, %.lr.ph265 ], [ %indvars.iv.next536, %282 ]
  %typed_outval30.1263 = phi double [ %typed_outval30.0, %.lr.ph265 ], [ %287, %282 ]
  %283 = add nsw i64 %indvars.iv535, %280, !dbg !507
  %284 = getelementptr inbounds double* %typed_vdata29.0277, i64 %283, !dbg !507
  %285 = load double* %284, align 8, !dbg !507, !tbaa !338
  %286 = fmul double %285, %285, !dbg !507
  %287 = fadd double %typed_outval30.1263, %286, !dbg !507
  tail call void @llvm.dbg.value(metadata double %287, i64 0, metadata !224, metadata !260), !dbg !492
  %indvars.iv.next536 = add nsw i64 %indvars.iv535, 1, !dbg !503
  %288 = icmp slt i64 %indvars.iv.next536, %281, !dbg !505
  br i1 %288, label %282, label %._crit_edge266, !dbg !503

._crit_edge266:                                   ; preds = %282, %._crit_edge260
  %typed_outval30.1.lcssa = phi double [ %typed_outval30.0, %._crit_edge260 ], [ %287, %282 ]
  br i1 %8, label %289, label %.thread65, !dbg !509

; <label>:289                                     ; preds = %._crit_edge266
  %290 = load i32* %9, align 4, !dbg !510, !tbaa !310
  %291 = add nsw i32 %290, 1, !dbg !510
  store i32 %291, i32* %9, align 4, !dbg !510, !tbaa !310
  %292 = load i32* %10, align 4, !dbg !510, !tbaa !310
  %293 = icmp slt i32 %291, %292, !dbg !510
  br i1 %293, label %.backedge109, label %.preheader85, !dbg !514

.preheader85:                                     ; preds = %289
  br i1 %11, label %.lr.ph269, label %.thread65, !dbg !515

.lr.ph269:                                        ; preds = %.preheader85, %303
  %indvars.iv537 = phi i64 [ %indvars.iv.next538, %303 ], [ 2, %.preheader85 ]
  %294 = getelementptr inbounds i32* %iterator, i64 %indvars.iv537, !dbg !518
  %295 = load i32* %294, align 4, !dbg !518, !tbaa !310
  %296 = add nsw i32 %295, 1, !dbg !518
  store i32 %296, i32* %294, align 4, !dbg !518, !tbaa !310
  %297 = getelementptr inbounds i32* %to, i64 %indvars.iv537, !dbg !518
  %298 = load i32* %297, align 4, !dbg !518, !tbaa !310
  %299 = icmp slt i32 %296, %298, !dbg !518
  br i1 %299, label %.thread64.preheader, label %303, !dbg !522

.thread64.preheader:                              ; preds = %.lr.ph269
  %300 = trunc i64 %indvars.iv537 to i32, !dbg !523
  %301 = icmp sgt i32 %300, 0, !dbg !523
  br i1 %301, label %.lr.ph274, label %.backedge109, !dbg !526

.lr.ph274:                                        ; preds = %.thread64.preheader
  %sext614 = shl i64 %indvars.iv537, 32
  %302 = ashr exact i64 %sext614, 32
  br label %.thread64, !dbg !526

; <label>:303                                     ; preds = %.lr.ph269
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1, !dbg !515
  %304 = icmp slt i64 %indvars.iv.next538, %5, !dbg !527
  br i1 %304, label %.lr.ph269, label %.thread65, !dbg !515

.thread64:                                        ; preds = %.lr.ph274, %.thread64
  %indvars.iv539 = phi i64 [ %302, %.lr.ph274 ], [ %indvars.iv.next540, %.thread64 ]
  %indvars.iv.next540 = add nsw i64 %indvars.iv539, -1, !dbg !526
  %305 = getelementptr inbounds i32* %from, i64 %indvars.iv.next540, !dbg !523
  %306 = load i32* %305, align 4, !dbg !523, !tbaa !310
  %307 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next540, !dbg !523
  store i32 %306, i32* %307, align 4, !dbg !523, !tbaa !310
  %308 = icmp sgt i64 %indvars.iv539, 1, !dbg !523
  br i1 %308, label %.thread64, label %.backedge109, !dbg !526

.thread65:                                        ; preds = %._crit_edge266, %.preheader85, %303
  %indvars.iv.next542 = add nsw i64 %indvars.iv541, 1, !dbg !493
  %309 = getelementptr inbounds double* %outvals, i64 %indvars.iv541, !dbg !495
  store double %typed_outval30.1.lcssa, double* %309, align 8, !dbg !495, !tbaa !338
  %310 = add nuw nsw i32 %_j26.0276, 1, !dbg !528
  tail call void @llvm.dbg.value(metadata i32 %310, i64 0, metadata !220, metadata !260), !dbg !492
  %311 = getelementptr inbounds double* %typed_vdata29.0277, i64 1, !dbg !528
  tail call void @llvm.dbg.value(metadata double* %311, i64 0, metadata !223, metadata !260), !dbg !492
  %exitcond543 = icmp eq i32 %_j26.0276, %13, !dbg !493
  br i1 %exitcond543, label %..loopexit128_crit_edge, label %.preheader110, !dbg !493

; <label>:312                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata float* %315, i64 0, metadata !230, metadata !260), !dbg !529
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !227, metadata !260), !dbg !529
  br i1 %2, label %.preheader113.lr.ph, label %.loopexit123, !dbg !530

.preheader113.lr.ph:                              ; preds = %312
  %313 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609, !dbg !529
  %314 = bitcast i8** %313 to float**, !dbg !529
  %315 = load float** %314, align 8, !dbg !529, !tbaa !317
  %316 = sext i32 %total_outvals.0395 to i64
  br label %.preheader113, !dbg !530

.preheader113:                                    ; preds = %.thread67, %.preheader113.lr.ph
  %indvars.iv528 = phi i64 [ %316, %.preheader113.lr.ph ], [ %indvars.iv.next529, %.thread67 ]
  %typed_vdata35.0254 = phi float* [ %315, %.preheader113.lr.ph ], [ %360, %.thread67 ]
  %_j32.0253 = phi i32 [ 0, %.preheader113.lr.ph ], [ %359, %.thread67 ]
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !231, metadata !260), !dbg !529
  %317 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6, !dbg !532
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !228, metadata !260), !dbg !529
  br label %.backedge112, !dbg !532

.backedge112:                                     ; preds = %337, %.thread66.preheader, %.thread66, %.preheader113
  %typed_outval36.0 = phi float [ 0.000000e+00, %.preheader113 ], [ %typed_outval36.1.lcssa, %.thread66 ], [ %typed_outval36.1.lcssa, %.thread66.preheader ], [ %typed_outval36.1.lcssa, %337 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !229, metadata !260), !dbg !529
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !225, metadata !260), !dbg !529
  br i1 %8, label %.lr.ph236, label %._crit_edge237, !dbg !535

.lr.ph236:                                        ; preds = %.backedge112, %.lr.ph236
  %indvars.iv518 = phi i64 [ %indvars.iv.next519, %.lr.ph236 ], [ 1, %.backedge112 ]
  %_vindex34.1234 = phi i32 [ %323, %.lr.ph236 ], [ 0, %.backedge112 ]
  %318 = getelementptr inbounds i32* %iterator, i64 %indvars.iv518, !dbg !538
  %319 = load i32* %318, align 4, !dbg !538, !tbaa !310
  %320 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv518, !dbg !538
  %321 = load i32* %320, align 4, !dbg !538, !tbaa !310
  %322 = mul nsw i32 %321, %319, !dbg !538
  %323 = add nsw i32 %322, %_vindex34.1234, !dbg !538
  tail call void @llvm.dbg.value(metadata i32 %323, i64 0, metadata !229, metadata !260), !dbg !529
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1, !dbg !535
  %lftr.wideiv520 = trunc i64 %indvars.iv518 to i32, !dbg !535
  %exitcond521 = icmp eq i32 %lftr.wideiv520, %12, !dbg !535
  br i1 %exitcond521, label %._crit_edge237, label %.lr.ph236, !dbg !535

._crit_edge237:                                   ; preds = %.lr.ph236, %.backedge112
  %_vindex34.1.lcssa = phi i32 [ 0, %.backedge112 ], [ %323, %.lr.ph236 ]
  %324 = load i32* %from, align 4, !dbg !540, !tbaa !310
  tail call void @llvm.dbg.value(metadata i32 %324, i64 0, metadata !225, metadata !260), !dbg !529
  %325 = load i32* %to, align 4, !dbg !542, !tbaa !310
  %326 = icmp slt i32 %324, %325, !dbg !542
  br i1 %326, label %.lr.ph242, label %._crit_edge243, !dbg !540

.lr.ph242:                                        ; preds = %._crit_edge237
  %327 = sext i32 %324 to i64
  %328 = sext i32 %_vindex34.1.lcssa to i64, !dbg !540
  %329 = sext i32 %325 to i64, !dbg !540
  br label %330, !dbg !540

; <label>:330                                     ; preds = %.lr.ph242, %330
  %indvars.iv522 = phi i64 [ %327, %.lr.ph242 ], [ %indvars.iv.next523, %330 ]
  %typed_outval36.1240 = phi float [ %typed_outval36.0, %.lr.ph242 ], [ %335, %330 ]
  %331 = add nsw i64 %indvars.iv522, %328, !dbg !544
  %332 = getelementptr inbounds float* %typed_vdata35.0254, i64 %331, !dbg !544
  %333 = load float* %332, align 4, !dbg !544, !tbaa !546
  %334 = fmul float %333, %333, !dbg !544
  %335 = fadd float %typed_outval36.1240, %334, !dbg !544
  tail call void @llvm.dbg.value(metadata float %335, i64 0, metadata !231, metadata !260), !dbg !529
  %indvars.iv.next523 = add nsw i64 %indvars.iv522, 1, !dbg !540
  %336 = icmp slt i64 %indvars.iv.next523, %329, !dbg !542
  br i1 %336, label %330, label %._crit_edge243, !dbg !540

._crit_edge243:                                   ; preds = %330, %._crit_edge237
  %typed_outval36.1.lcssa = phi float [ %typed_outval36.0, %._crit_edge237 ], [ %335, %330 ]
  br i1 %8, label %337, label %.thread67, !dbg !548

; <label>:337                                     ; preds = %._crit_edge243
  %338 = load i32* %9, align 4, !dbg !549, !tbaa !310
  %339 = add nsw i32 %338, 1, !dbg !549
  store i32 %339, i32* %9, align 4, !dbg !549, !tbaa !310
  %340 = load i32* %10, align 4, !dbg !549, !tbaa !310
  %341 = icmp slt i32 %339, %340, !dbg !549
  br i1 %341, label %.backedge112, label %.preheader87, !dbg !553

.preheader87:                                     ; preds = %337
  br i1 %11, label %.lr.ph246, label %.thread67, !dbg !554

.lr.ph246:                                        ; preds = %.preheader87, %351
  %indvars.iv524 = phi i64 [ %indvars.iv.next525, %351 ], [ 2, %.preheader87 ]
  %342 = getelementptr inbounds i32* %iterator, i64 %indvars.iv524, !dbg !557
  %343 = load i32* %342, align 4, !dbg !557, !tbaa !310
  %344 = add nsw i32 %343, 1, !dbg !557
  store i32 %344, i32* %342, align 4, !dbg !557, !tbaa !310
  %345 = getelementptr inbounds i32* %to, i64 %indvars.iv524, !dbg !557
  %346 = load i32* %345, align 4, !dbg !557, !tbaa !310
  %347 = icmp slt i32 %344, %346, !dbg !557
  br i1 %347, label %.thread66.preheader, label %351, !dbg !561

.thread66.preheader:                              ; preds = %.lr.ph246
  %348 = trunc i64 %indvars.iv524 to i32, !dbg !562
  %349 = icmp sgt i32 %348, 0, !dbg !562
  br i1 %349, label %.lr.ph251, label %.backedge112, !dbg !565

.lr.ph251:                                        ; preds = %.thread66.preheader
  %sext613 = shl i64 %indvars.iv524, 32
  %350 = ashr exact i64 %sext613, 32
  br label %.thread66, !dbg !565

; <label>:351                                     ; preds = %.lr.ph246
  %indvars.iv.next525 = add nuw nsw i64 %indvars.iv524, 1, !dbg !554
  %352 = icmp slt i64 %indvars.iv.next525, %5, !dbg !566
  br i1 %352, label %.lr.ph246, label %.thread67, !dbg !554

.thread66:                                        ; preds = %.lr.ph251, %.thread66
  %indvars.iv526 = phi i64 [ %350, %.lr.ph251 ], [ %indvars.iv.next527, %.thread66 ]
  %indvars.iv.next527 = add nsw i64 %indvars.iv526, -1, !dbg !565
  %353 = getelementptr inbounds i32* %from, i64 %indvars.iv.next527, !dbg !562
  %354 = load i32* %353, align 4, !dbg !562, !tbaa !310
  %355 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next527, !dbg !562
  store i32 %354, i32* %355, align 4, !dbg !562, !tbaa !310
  %356 = icmp sgt i64 %indvars.iv526, 1, !dbg !562
  br i1 %356, label %.thread66, label %.backedge112, !dbg !565

.thread67:                                        ; preds = %._crit_edge243, %.preheader87, %351
  %357 = fpext float %typed_outval36.1.lcssa to double, !dbg !532
  %indvars.iv.next529 = add nsw i64 %indvars.iv528, 1, !dbg !530
  %358 = getelementptr inbounds double* %outvals, i64 %indvars.iv528, !dbg !532
  store double %357, double* %358, align 8, !dbg !532, !tbaa !338
  %359 = add nuw nsw i32 %_j32.0253, 1, !dbg !567
  tail call void @llvm.dbg.value(metadata i32 %359, i64 0, metadata !227, metadata !260), !dbg !529
  %360 = getelementptr inbounds float* %typed_vdata35.0254, i64 1, !dbg !567
  tail call void @llvm.dbg.value(metadata float* %360, i64 0, metadata !230, metadata !260), !dbg !529
  %exitcond530 = icmp eq i32 %_j32.0253, %13, !dbg !530
  br i1 %exitcond530, label %..loopexit129_crit_edge, label %.preheader113, !dbg !530

; <label>:361                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata double* %364, i64 0, metadata !237, metadata !260), !dbg !568
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !234, metadata !260), !dbg !568
  br i1 %2, label %.preheader116.lr.ph, label %.loopexit123, !dbg !569

.preheader116.lr.ph:                              ; preds = %361
  %362 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609, !dbg !568
  %363 = bitcast i8** %362 to double**, !dbg !568
  %364 = load double** %363, align 8, !dbg !568, !tbaa !317
  %365 = sext i32 %total_outvals.0395 to i64
  br label %.preheader116, !dbg !569

.preheader116:                                    ; preds = %.thread69, %.preheader116.lr.ph
  %indvars.iv515 = phi i64 [ %365, %.preheader116.lr.ph ], [ %indvars.iv.next516, %.thread69 ]
  %typed_vdata41.0231 = phi double* [ %364, %.preheader116.lr.ph ], [ %408, %.thread69 ]
  %_j38.0230 = phi i32 [ 0, %.preheader116.lr.ph ], [ %407, %.thread69 ]
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !238, metadata !260), !dbg !568
  %366 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6, !dbg !571
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !235, metadata !260), !dbg !568
  br label %.backedge115, !dbg !571

.backedge115:                                     ; preds = %386, %.thread68.preheader, %.thread68, %.preheader116
  %typed_outval42.0 = phi double [ 0.000000e+00, %.preheader116 ], [ %typed_outval42.1.lcssa, %.thread68 ], [ %typed_outval42.1.lcssa, %.thread68.preheader ], [ %typed_outval42.1.lcssa, %386 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !236, metadata !260), !dbg !568
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !232, metadata !260), !dbg !568
  br i1 %8, label %.lr.ph213, label %._crit_edge214, !dbg !574

.lr.ph213:                                        ; preds = %.backedge115, %.lr.ph213
  %indvars.iv505 = phi i64 [ %indvars.iv.next506, %.lr.ph213 ], [ 1, %.backedge115 ]
  %_vindex40.1211 = phi i32 [ %372, %.lr.ph213 ], [ 0, %.backedge115 ]
  %367 = getelementptr inbounds i32* %iterator, i64 %indvars.iv505, !dbg !577
  %368 = load i32* %367, align 4, !dbg !577, !tbaa !310
  %369 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv505, !dbg !577
  %370 = load i32* %369, align 4, !dbg !577, !tbaa !310
  %371 = mul nsw i32 %370, %368, !dbg !577
  %372 = add nsw i32 %371, %_vindex40.1211, !dbg !577
  tail call void @llvm.dbg.value(metadata i32 %372, i64 0, metadata !236, metadata !260), !dbg !568
  %indvars.iv.next506 = add nuw nsw i64 %indvars.iv505, 1, !dbg !574
  %lftr.wideiv507 = trunc i64 %indvars.iv505 to i32, !dbg !574
  %exitcond508 = icmp eq i32 %lftr.wideiv507, %12, !dbg !574
  br i1 %exitcond508, label %._crit_edge214, label %.lr.ph213, !dbg !574

._crit_edge214:                                   ; preds = %.lr.ph213, %.backedge115
  %_vindex40.1.lcssa = phi i32 [ 0, %.backedge115 ], [ %372, %.lr.ph213 ]
  %373 = load i32* %from, align 4, !dbg !579, !tbaa !310
  tail call void @llvm.dbg.value(metadata i32 %373, i64 0, metadata !232, metadata !260), !dbg !568
  %374 = load i32* %to, align 4, !dbg !581, !tbaa !310
  %375 = icmp slt i32 %373, %374, !dbg !581
  br i1 %375, label %.lr.ph219, label %._crit_edge220, !dbg !579

.lr.ph219:                                        ; preds = %._crit_edge214
  %376 = sext i32 %373 to i64
  %377 = sext i32 %_vindex40.1.lcssa to i64, !dbg !579
  %378 = sext i32 %374 to i64, !dbg !579
  br label %379, !dbg !579

; <label>:379                                     ; preds = %.lr.ph219, %379
  %indvars.iv509 = phi i64 [ %376, %.lr.ph219 ], [ %indvars.iv.next510, %379 ]
  %typed_outval42.1217 = phi double [ %typed_outval42.0, %.lr.ph219 ], [ %384, %379 ]
  %380 = add nsw i64 %indvars.iv509, %377, !dbg !583
  %381 = getelementptr inbounds double* %typed_vdata41.0231, i64 %380, !dbg !583
  %382 = load double* %381, align 8, !dbg !583, !tbaa !338
  %383 = fmul double %382, %382, !dbg !583
  %384 = fadd double %typed_outval42.1217, %383, !dbg !583
  tail call void @llvm.dbg.value(metadata double %384, i64 0, metadata !238, metadata !260), !dbg !568
  %indvars.iv.next510 = add nsw i64 %indvars.iv509, 1, !dbg !579
  %385 = icmp slt i64 %indvars.iv.next510, %378, !dbg !581
  br i1 %385, label %379, label %._crit_edge220, !dbg !579

._crit_edge220:                                   ; preds = %379, %._crit_edge214
  %typed_outval42.1.lcssa = phi double [ %typed_outval42.0, %._crit_edge214 ], [ %384, %379 ]
  br i1 %8, label %386, label %.thread69, !dbg !585

; <label>:386                                     ; preds = %._crit_edge220
  %387 = load i32* %9, align 4, !dbg !586, !tbaa !310
  %388 = add nsw i32 %387, 1, !dbg !586
  store i32 %388, i32* %9, align 4, !dbg !586, !tbaa !310
  %389 = load i32* %10, align 4, !dbg !586, !tbaa !310
  %390 = icmp slt i32 %388, %389, !dbg !586
  br i1 %390, label %.backedge115, label %.preheader89, !dbg !590

.preheader89:                                     ; preds = %386
  br i1 %11, label %.lr.ph223, label %.thread69, !dbg !591

.lr.ph223:                                        ; preds = %.preheader89, %400
  %indvars.iv511 = phi i64 [ %indvars.iv.next512, %400 ], [ 2, %.preheader89 ]
  %391 = getelementptr inbounds i32* %iterator, i64 %indvars.iv511, !dbg !594
  %392 = load i32* %391, align 4, !dbg !594, !tbaa !310
  %393 = add nsw i32 %392, 1, !dbg !594
  store i32 %393, i32* %391, align 4, !dbg !594, !tbaa !310
  %394 = getelementptr inbounds i32* %to, i64 %indvars.iv511, !dbg !594
  %395 = load i32* %394, align 4, !dbg !594, !tbaa !310
  %396 = icmp slt i32 %393, %395, !dbg !594
  br i1 %396, label %.thread68.preheader, label %400, !dbg !598

.thread68.preheader:                              ; preds = %.lr.ph223
  %397 = trunc i64 %indvars.iv511 to i32, !dbg !599
  %398 = icmp sgt i32 %397, 0, !dbg !599
  br i1 %398, label %.lr.ph228, label %.backedge115, !dbg !602

.lr.ph228:                                        ; preds = %.thread68.preheader
  %sext612 = shl i64 %indvars.iv511, 32
  %399 = ashr exact i64 %sext612, 32
  br label %.thread68, !dbg !602

; <label>:400                                     ; preds = %.lr.ph223
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, 1, !dbg !591
  %401 = icmp slt i64 %indvars.iv.next512, %5, !dbg !603
  br i1 %401, label %.lr.ph223, label %.thread69, !dbg !591

.thread68:                                        ; preds = %.lr.ph228, %.thread68
  %indvars.iv513 = phi i64 [ %399, %.lr.ph228 ], [ %indvars.iv.next514, %.thread68 ]
  %indvars.iv.next514 = add nsw i64 %indvars.iv513, -1, !dbg !602
  %402 = getelementptr inbounds i32* %from, i64 %indvars.iv.next514, !dbg !599
  %403 = load i32* %402, align 4, !dbg !599, !tbaa !310
  %404 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next514, !dbg !599
  store i32 %403, i32* %404, align 4, !dbg !599, !tbaa !310
  %405 = icmp sgt i64 %indvars.iv513, 1, !dbg !599
  br i1 %405, label %.thread68, label %.backedge115, !dbg !602

.thread69:                                        ; preds = %._crit_edge220, %.preheader89, %400
  %indvars.iv.next516 = add nsw i64 %indvars.iv515, 1, !dbg !569
  %406 = getelementptr inbounds double* %outvals, i64 %indvars.iv515, !dbg !571
  store double %typed_outval42.1.lcssa, double* %406, align 8, !dbg !571, !tbaa !338
  %407 = add nuw nsw i32 %_j38.0230, 1, !dbg !604
  tail call void @llvm.dbg.value(metadata i32 %407, i64 0, metadata !234, metadata !260), !dbg !568
  %408 = getelementptr inbounds double* %typed_vdata41.0231, i64 1, !dbg !604
  tail call void @llvm.dbg.value(metadata double* %408, i64 0, metadata !237, metadata !260), !dbg !568
  %exitcond517 = icmp eq i32 %_j38.0230, %13, !dbg !569
  br i1 %exitcond517, label %..loopexit130_crit_edge, label %.preheader116, !dbg !569

; <label>:409                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata x86_fp80* %412, i64 0, metadata !244, metadata !260), !dbg !605
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !241, metadata !260), !dbg !605
  br i1 %2, label %.preheader119.lr.ph, label %.loopexit123, !dbg !606

.preheader119.lr.ph:                              ; preds = %409
  %410 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609, !dbg !605
  %411 = bitcast i8** %410 to x86_fp80**, !dbg !605
  %412 = load x86_fp80** %411, align 8, !dbg !605, !tbaa !317
  %413 = sext i32 %total_outvals.0395 to i64
  br label %.preheader119, !dbg !606

.preheader119:                                    ; preds = %.thread71, %.preheader119.lr.ph
  %indvars.iv502 = phi i64 [ %413, %.preheader119.lr.ph ], [ %indvars.iv.next503, %.thread71 ]
  %typed_vdata47.0208 = phi x86_fp80* [ %412, %.preheader119.lr.ph ], [ %457, %.thread71 ]
  %_j44.0207 = phi i32 [ 0, %.preheader119.lr.ph ], [ %456, %.thread71 ]
  tail call void @llvm.dbg.value(metadata x86_fp80 0xK00000000000000000000, i64 0, metadata !245, metadata !260), !dbg !605
  %414 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6, !dbg !608
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !242, metadata !260), !dbg !605
  br label %.backedge118, !dbg !608

.backedge118:                                     ; preds = %434, %.thread70.preheader, %.thread70, %.preheader119
  %typed_outval48.0 = phi x86_fp80 [ 0xK00000000000000000000, %.preheader119 ], [ %typed_outval48.1.lcssa, %.thread70 ], [ %typed_outval48.1.lcssa, %.thread70.preheader ], [ %typed_outval48.1.lcssa, %434 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !243, metadata !260), !dbg !605
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !239, metadata !260), !dbg !605
  br i1 %8, label %.lr.ph190, label %._crit_edge191, !dbg !611

.lr.ph190:                                        ; preds = %.backedge118, %.lr.ph190
  %indvars.iv492 = phi i64 [ %indvars.iv.next493, %.lr.ph190 ], [ 1, %.backedge118 ]
  %_vindex46.1188 = phi i32 [ %420, %.lr.ph190 ], [ 0, %.backedge118 ]
  %415 = getelementptr inbounds i32* %iterator, i64 %indvars.iv492, !dbg !614
  %416 = load i32* %415, align 4, !dbg !614, !tbaa !310
  %417 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv492, !dbg !614
  %418 = load i32* %417, align 4, !dbg !614, !tbaa !310
  %419 = mul nsw i32 %418, %416, !dbg !614
  %420 = add nsw i32 %419, %_vindex46.1188, !dbg !614
  tail call void @llvm.dbg.value(metadata i32 %420, i64 0, metadata !243, metadata !260), !dbg !605
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1, !dbg !611
  %lftr.wideiv494 = trunc i64 %indvars.iv492 to i32, !dbg !611
  %exitcond495 = icmp eq i32 %lftr.wideiv494, %12, !dbg !611
  br i1 %exitcond495, label %._crit_edge191, label %.lr.ph190, !dbg !611

._crit_edge191:                                   ; preds = %.lr.ph190, %.backedge118
  %_vindex46.1.lcssa = phi i32 [ 0, %.backedge118 ], [ %420, %.lr.ph190 ]
  %421 = load i32* %from, align 4, !dbg !616, !tbaa !310
  tail call void @llvm.dbg.value(metadata i32 %421, i64 0, metadata !239, metadata !260), !dbg !605
  %422 = load i32* %to, align 4, !dbg !618, !tbaa !310
  %423 = icmp slt i32 %421, %422, !dbg !618
  br i1 %423, label %.lr.ph196, label %._crit_edge197, !dbg !616

.lr.ph196:                                        ; preds = %._crit_edge191
  %424 = sext i32 %421 to i64
  %425 = sext i32 %_vindex46.1.lcssa to i64, !dbg !616
  %426 = sext i32 %422 to i64, !dbg !616
  br label %427, !dbg !616

; <label>:427                                     ; preds = %.lr.ph196, %427
  %indvars.iv496 = phi i64 [ %424, %.lr.ph196 ], [ %indvars.iv.next497, %427 ]
  %typed_outval48.1194 = phi x86_fp80 [ %typed_outval48.0, %.lr.ph196 ], [ %432, %427 ]
  %428 = add nsw i64 %indvars.iv496, %425, !dbg !620
  %429 = getelementptr inbounds x86_fp80* %typed_vdata47.0208, i64 %428, !dbg !620
  %430 = load x86_fp80* %429, align 16, !dbg !620, !tbaa !622
  %431 = fmul x86_fp80 %430, %430, !dbg !620
  %432 = fadd x86_fp80 %typed_outval48.1194, %431, !dbg !620
  tail call void @llvm.dbg.value(metadata x86_fp80 %432, i64 0, metadata !245, metadata !260), !dbg !605
  %indvars.iv.next497 = add nsw i64 %indvars.iv496, 1, !dbg !616
  %433 = icmp slt i64 %indvars.iv.next497, %426, !dbg !618
  br i1 %433, label %427, label %._crit_edge197, !dbg !616

._crit_edge197:                                   ; preds = %427, %._crit_edge191
  %typed_outval48.1.lcssa = phi x86_fp80 [ %typed_outval48.0, %._crit_edge191 ], [ %432, %427 ]
  br i1 %8, label %434, label %.thread71, !dbg !624

; <label>:434                                     ; preds = %._crit_edge197
  %435 = load i32* %9, align 4, !dbg !625, !tbaa !310
  %436 = add nsw i32 %435, 1, !dbg !625
  store i32 %436, i32* %9, align 4, !dbg !625, !tbaa !310
  %437 = load i32* %10, align 4, !dbg !625, !tbaa !310
  %438 = icmp slt i32 %436, %437, !dbg !625
  br i1 %438, label %.backedge118, label %.preheader91, !dbg !629

.preheader91:                                     ; preds = %434
  br i1 %11, label %.lr.ph200, label %.thread71, !dbg !630

.lr.ph200:                                        ; preds = %.preheader91, %448
  %indvars.iv498 = phi i64 [ %indvars.iv.next499, %448 ], [ 2, %.preheader91 ]
  %439 = getelementptr inbounds i32* %iterator, i64 %indvars.iv498, !dbg !633
  %440 = load i32* %439, align 4, !dbg !633, !tbaa !310
  %441 = add nsw i32 %440, 1, !dbg !633
  store i32 %441, i32* %439, align 4, !dbg !633, !tbaa !310
  %442 = getelementptr inbounds i32* %to, i64 %indvars.iv498, !dbg !633
  %443 = load i32* %442, align 4, !dbg !633, !tbaa !310
  %444 = icmp slt i32 %441, %443, !dbg !633
  br i1 %444, label %.thread70.preheader, label %448, !dbg !637

.thread70.preheader:                              ; preds = %.lr.ph200
  %445 = trunc i64 %indvars.iv498 to i32, !dbg !638
  %446 = icmp sgt i32 %445, 0, !dbg !638
  br i1 %446, label %.lr.ph205, label %.backedge118, !dbg !641

.lr.ph205:                                        ; preds = %.thread70.preheader
  %sext611 = shl i64 %indvars.iv498, 32
  %447 = ashr exact i64 %sext611, 32
  br label %.thread70, !dbg !641

; <label>:448                                     ; preds = %.lr.ph200
  %indvars.iv.next499 = add nuw nsw i64 %indvars.iv498, 1, !dbg !630
  %449 = icmp slt i64 %indvars.iv.next499, %5, !dbg !642
  br i1 %449, label %.lr.ph200, label %.thread71, !dbg !630

.thread70:                                        ; preds = %.lr.ph205, %.thread70
  %indvars.iv500 = phi i64 [ %447, %.lr.ph205 ], [ %indvars.iv.next501, %.thread70 ]
  %indvars.iv.next501 = add nsw i64 %indvars.iv500, -1, !dbg !641
  %450 = getelementptr inbounds i32* %from, i64 %indvars.iv.next501, !dbg !638
  %451 = load i32* %450, align 4, !dbg !638, !tbaa !310
  %452 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next501, !dbg !638
  store i32 %451, i32* %452, align 4, !dbg !638, !tbaa !310
  %453 = icmp sgt i64 %indvars.iv500, 1, !dbg !638
  br i1 %453, label %.thread70, label %.backedge118, !dbg !641

.thread71:                                        ; preds = %._crit_edge197, %.preheader91, %448
  %454 = fptrunc x86_fp80 %typed_outval48.1.lcssa to double, !dbg !608
  %indvars.iv.next503 = add nsw i64 %indvars.iv502, 1, !dbg !606
  %455 = getelementptr inbounds double* %outvals, i64 %indvars.iv502, !dbg !608
  store double %454, double* %455, align 8, !dbg !608, !tbaa !338
  %456 = add nuw nsw i32 %_j44.0207, 1, !dbg !643
  tail call void @llvm.dbg.value(metadata i32 %456, i64 0, metadata !241, metadata !260), !dbg !605
  %457 = getelementptr inbounds x86_fp80* %typed_vdata47.0208, i64 1, !dbg !643
  tail call void @llvm.dbg.value(metadata x86_fp80* %457, i64 0, metadata !244, metadata !260), !dbg !605
  %exitcond504 = icmp eq i32 %_j44.0207, %13, !dbg !606
  br i1 %exitcond504, label %..loopexit131_crit_edge, label %.preheader119, !dbg !606

; <label>:458                                     ; preds = %17
  tail call void @llvm.dbg.value(metadata %struct.CCTK_COMPLEX16* %461, i64 0, metadata !251, metadata !260), !dbg !644
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !248, metadata !260), !dbg !644
  br i1 %2, label %.preheader122.lr.ph, label %.loopexit123, !dbg !307

.preheader122.lr.ph:                              ; preds = %458
  %459 = getelementptr inbounds i8** %inarrays, i64 %indvars.iv609, !dbg !644
  %460 = bitcast i8** %459 to %struct.CCTK_COMPLEX16**, !dbg !644
  %461 = load %struct.CCTK_COMPLEX16** %460, align 8, !dbg !644, !tbaa !317
  %462 = sext i32 %total_outvals.0395 to i64
  br label %.preheader122, !dbg !307

.preheader122:                                    ; preds = %.thread73, %.preheader122.lr.ph
  %indvars.iv489 = phi i64 [ %462, %.preheader122.lr.ph ], [ %indvars.iv.next490, %.thread73 ]
  %typed_vdata53.0183 = phi %struct.CCTK_COMPLEX16* [ %461, %.preheader122.lr.ph ], [ %509, %.thread73 ]
  %_j50.0182 = phi i32 [ 0, %.preheader122.lr.ph ], [ %508, %.thread73 ]
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !252, metadata !260), !dbg !644
  %463 = tail call i8* @__memcpy_chk(i8* %3, i8* %4, i64 %6, i64 %7) #6, !dbg !645
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !249, metadata !260), !dbg !644
  br label %.backedge121, !dbg !645

.backedge121:                                     ; preds = %487, %.thread72.preheader, %.thread72, %.preheader122
  %typed_outval54.0 = phi double [ 0.000000e+00, %.preheader122 ], [ %typed_outval54.1.lcssa, %.thread72 ], [ %typed_outval54.1.lcssa, %.thread72.preheader ], [ %typed_outval54.1.lcssa, %487 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !250, metadata !260), !dbg !644
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !246, metadata !260), !dbg !644
  br i1 %8, label %.lr.ph167, label %._crit_edge, !dbg !648

.lr.ph167:                                        ; preds = %.backedge121, %.lr.ph167
  %indvars.iv479 = phi i64 [ %indvars.iv.next480, %.lr.ph167 ], [ 1, %.backedge121 ]
  %_vindex52.1166 = phi i32 [ %469, %.lr.ph167 ], [ 0, %.backedge121 ]
  %464 = getelementptr inbounds i32* %iterator, i64 %indvars.iv479, !dbg !651
  %465 = load i32* %464, align 4, !dbg !651, !tbaa !310
  %466 = getelementptr inbounds i32* %points_per_dim, i64 %indvars.iv479, !dbg !651
  %467 = load i32* %466, align 4, !dbg !651, !tbaa !310
  %468 = mul nsw i32 %467, %465, !dbg !651
  %469 = add nsw i32 %468, %_vindex52.1166, !dbg !651
  tail call void @llvm.dbg.value(metadata i32 %469, i64 0, metadata !250, metadata !260), !dbg !644
  %indvars.iv.next480 = add nuw nsw i64 %indvars.iv479, 1, !dbg !648
  %lftr.wideiv481 = trunc i64 %indvars.iv479 to i32, !dbg !648
  %exitcond482 = icmp eq i32 %lftr.wideiv481, %12, !dbg !648
  br i1 %exitcond482, label %._crit_edge, label %.lr.ph167, !dbg !648

._crit_edge:                                      ; preds = %.lr.ph167, %.backedge121
  %_vindex52.1.lcssa = phi i32 [ 0, %.backedge121 ], [ %469, %.lr.ph167 ]
  %470 = load i32* %from, align 4, !dbg !653, !tbaa !310
  tail call void @llvm.dbg.value(metadata i32 %470, i64 0, metadata !246, metadata !260), !dbg !644
  %471 = load i32* %to, align 4, !dbg !655, !tbaa !310
  %472 = icmp slt i32 %470, %471, !dbg !655
  br i1 %472, label %.lr.ph171, label %._crit_edge172, !dbg !653

.lr.ph171:                                        ; preds = %._crit_edge
  %473 = sext i32 %470 to i64
  %474 = sext i32 %_vindex52.1.lcssa to i64, !dbg !653
  %475 = sext i32 %471 to i64, !dbg !653
  br label %476, !dbg !653

; <label>:476                                     ; preds = %.lr.ph171, %476
  %indvars.iv483 = phi i64 [ %473, %.lr.ph171 ], [ %indvars.iv.next484, %476 ]
  %typed_outval54.1169 = phi double [ %typed_outval54.0, %.lr.ph171 ], [ %485, %476 ]
  %477 = add nsw i64 %indvars.iv483, %474, !dbg !657
  %478 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_vdata53.0183, i64 %477, i32 0, !dbg !657
  %479 = bitcast double* %478 to <2 x double>*, !dbg !657
  %480 = load <2 x double>* %479, align 8, !dbg !657, !tbaa !338
  %481 = fmul <2 x double> %480, %480, !dbg !657
  %482 = extractelement <2 x double> %481, i32 0, !dbg !657
  %483 = extractelement <2 x double> %481, i32 1, !dbg !657
  %484 = fadd double %482, %483, !dbg !657
  %485 = fadd double %typed_outval54.1169, %484, !dbg !657
  tail call void @llvm.dbg.value(metadata double %485, i64 0, metadata !252, metadata !260), !dbg !644
  %indvars.iv.next484 = add nsw i64 %indvars.iv483, 1, !dbg !653
  %486 = icmp slt i64 %indvars.iv.next484, %475, !dbg !655
  br i1 %486, label %476, label %._crit_edge172, !dbg !653

._crit_edge172:                                   ; preds = %476, %._crit_edge
  %typed_outval54.1.lcssa = phi double [ %typed_outval54.0, %._crit_edge ], [ %485, %476 ]
  br i1 %8, label %487, label %.thread73, !dbg !659

; <label>:487                                     ; preds = %._crit_edge172
  %488 = load i32* %9, align 4, !dbg !660, !tbaa !310
  %489 = add nsw i32 %488, 1, !dbg !660
  store i32 %489, i32* %9, align 4, !dbg !660, !tbaa !310
  %490 = load i32* %10, align 4, !dbg !660, !tbaa !310
  %491 = icmp slt i32 %489, %490, !dbg !660
  br i1 %491, label %.backedge121, label %.preheader93, !dbg !664

.preheader93:                                     ; preds = %487
  br i1 %11, label %.lr.ph175, label %.thread73, !dbg !665

.lr.ph175:                                        ; preds = %.preheader93, %501
  %indvars.iv485 = phi i64 [ %indvars.iv.next486, %501 ], [ 2, %.preheader93 ]
  %492 = getelementptr inbounds i32* %iterator, i64 %indvars.iv485, !dbg !668
  %493 = load i32* %492, align 4, !dbg !668, !tbaa !310
  %494 = add nsw i32 %493, 1, !dbg !668
  store i32 %494, i32* %492, align 4, !dbg !668, !tbaa !310
  %495 = getelementptr inbounds i32* %to, i64 %indvars.iv485, !dbg !668
  %496 = load i32* %495, align 4, !dbg !668, !tbaa !310
  %497 = icmp slt i32 %494, %496, !dbg !668
  br i1 %497, label %.thread72.preheader, label %501, !dbg !672

.thread72.preheader:                              ; preds = %.lr.ph175
  %498 = trunc i64 %indvars.iv485 to i32, !dbg !673
  %499 = icmp sgt i32 %498, 0, !dbg !673
  br i1 %499, label %.lr.ph180, label %.backedge121, !dbg !676

.lr.ph180:                                        ; preds = %.thread72.preheader
  %sext = shl i64 %indvars.iv485, 32
  %500 = ashr exact i64 %sext, 32
  br label %.thread72, !dbg !676

; <label>:501                                     ; preds = %.lr.ph175
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1, !dbg !665
  %502 = icmp slt i64 %indvars.iv.next486, %5, !dbg !677
  br i1 %502, label %.lr.ph175, label %.thread73, !dbg !665

.thread72:                                        ; preds = %.lr.ph180, %.thread72
  %indvars.iv487 = phi i64 [ %500, %.lr.ph180 ], [ %indvars.iv.next488, %.thread72 ]
  %indvars.iv.next488 = add nsw i64 %indvars.iv487, -1, !dbg !676
  %503 = getelementptr inbounds i32* %from, i64 %indvars.iv.next488, !dbg !673
  %504 = load i32* %503, align 4, !dbg !673, !tbaa !310
  %505 = getelementptr inbounds i32* %iterator, i64 %indvars.iv.next488, !dbg !673
  store i32 %504, i32* %505, align 4, !dbg !673, !tbaa !310
  %506 = icmp sgt i64 %indvars.iv487, 1, !dbg !673
  br i1 %506, label %.thread72, label %.backedge121, !dbg !676

.thread73:                                        ; preds = %._crit_edge172, %.preheader93, %501
  %indvars.iv.next490 = add nsw i64 %indvars.iv489, 1, !dbg !307
  %507 = getelementptr inbounds double* %outvals, i64 %indvars.iv489, !dbg !645
  store double %typed_outval54.1.lcssa, double* %507, align 8, !dbg !645, !tbaa !338
  %508 = add nuw nsw i32 %_j50.0182, 1, !dbg !678
  tail call void @llvm.dbg.value(metadata i32 %508, i64 0, metadata !248, metadata !260), !dbg !644
  %509 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_vdata53.0183, i64 1, !dbg !678
  tail call void @llvm.dbg.value(metadata %struct.CCTK_COMPLEX16* %509, i64 0, metadata !251, metadata !260), !dbg !644
  %exitcond491 = icmp eq i32 %_j50.0182, %13, !dbg !307
  br i1 %exitcond491, label %..loopexit132_crit_edge, label %.preheader122, !dbg !307

; <label>:510                                     ; preds = %17
  %511 = tail call i32 @CCTK_Warn(i32 1, i32 318, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !679
  br label %.loopexit, !dbg !680

..loopexit123_crit_edge:                          ; preds = %.thread55
  %512 = add nsw i64 %15, %23, !dbg !316
  %513 = trunc i64 %512 to i32, !dbg !316
  br label %.loopexit123, !dbg !316

..loopexit124_crit_edge:                          ; preds = %.thread57
  %514 = add nsw i64 %15, %72, !dbg !341
  %515 = trunc i64 %514 to i32, !dbg !341
  br label %.loopexit123, !dbg !341

..loopexit125_crit_edge:                          ; preds = %.thread59
  %516 = add nsw i64 %15, %121, !dbg !378
  %517 = trunc i64 %516 to i32, !dbg !378
  br label %.loopexit123, !dbg !378

..loopexit126_crit_edge:                          ; preds = %.thread61
  %518 = add nsw i64 %15, %170, !dbg !417
  %519 = trunc i64 %518 to i32, !dbg !417
  br label %.loopexit123, !dbg !417

..loopexit127_crit_edge:                          ; preds = %.thread63
  %520 = add nsw i64 %15, %219, !dbg !454
  %521 = trunc i64 %520 to i32, !dbg !454
  br label %.loopexit123, !dbg !454

..loopexit128_crit_edge:                          ; preds = %.thread65
  %522 = add nsw i64 %15, %268, !dbg !493
  %523 = trunc i64 %522 to i32, !dbg !493
  br label %.loopexit123, !dbg !493

..loopexit129_crit_edge:                          ; preds = %.thread67
  %524 = add nsw i64 %15, %316, !dbg !530
  %525 = trunc i64 %524 to i32, !dbg !530
  br label %.loopexit123, !dbg !530

..loopexit130_crit_edge:                          ; preds = %.thread69
  %526 = add nsw i64 %15, %365, !dbg !569
  %527 = trunc i64 %526 to i32, !dbg !569
  br label %.loopexit123, !dbg !569

..loopexit131_crit_edge:                          ; preds = %.thread71
  %528 = add nsw i64 %15, %413, !dbg !606
  %529 = trunc i64 %528 to i32, !dbg !606
  br label %.loopexit123, !dbg !606

..loopexit132_crit_edge:                          ; preds = %.thread73
  %530 = add nsw i64 %15, %462, !dbg !307
  %531 = trunc i64 %530 to i32, !dbg !307
  br label %.loopexit123, !dbg !307

.loopexit123:                                     ; preds = %458, %..loopexit132_crit_edge, %409, %..loopexit131_crit_edge, %361, %..loopexit130_crit_edge, %312, %..loopexit129_crit_edge, %264, %..loopexit128_crit_edge, %215, %..loopexit127_crit_edge, %166, %..loopexit126_crit_edge, %117, %..loopexit125_crit_edge, %68, %..loopexit124_crit_edge, %20, %..loopexit123_crit_edge
  %total_outvals.11 = phi i32 [ %513, %..loopexit123_crit_edge ], [ %total_outvals.0395, %20 ], [ %515, %..loopexit124_crit_edge ], [ %total_outvals.0395, %68 ], [ %517, %..loopexit125_crit_edge ], [ %total_outvals.0395, %117 ], [ %519, %..loopexit126_crit_edge ], [ %total_outvals.0395, %166 ], [ %521, %..loopexit127_crit_edge ], [ %total_outvals.0395, %215 ], [ %523, %..loopexit128_crit_edge ], [ %total_outvals.0395, %264 ], [ %525, %..loopexit129_crit_edge ], [ %total_outvals.0395, %312 ], [ %527, %..loopexit130_crit_edge ], [ %total_outvals.0395, %361 ], [ %529, %..loopexit131_crit_edge ], [ %total_outvals.0395, %409 ], [ %531, %..loopexit132_crit_edge ], [ %total_outvals.0395, %458 ]
  %indvars.iv.next610 = add nuw nsw i64 %indvars.iv609, 1, !dbg !289
  %532 = icmp slt i64 %indvars.iv.next610, %16, !dbg !288
  br i1 %532, label %17, label %._crit_edge398, !dbg !289

._crit_edge398:                                   ; preds = %.loopexit123, %0
  %total_outvals.0.lcssa = phi i32 [ 0, %0 ], [ %total_outvals.11, %.loopexit123 ]
  %533 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6, !dbg !681
  tail call void @llvm.dbg.value(metadata %struct.PGH* %533, i64 0, metadata !111, metadata !260), !dbg !682
  %534 = icmp slt i32 %proc, 0, !dbg !683
  br i1 %534, label %.preheader, label %535, !dbg !685

; <label>:535                                     ; preds = %._crit_edge398
  %536 = getelementptr inbounds %struct.PGH* %533, i64 0, i32 3, !dbg !686
  %537 = load i32* %536, align 4, !dbg !686, !tbaa !687
  %538 = icmp eq i32 %537, %proc, !dbg !689
  %539 = icmp sgt i32 %total_outvals.0.lcssa, 0, !dbg !690
  %or.cond = and i1 %538, %539, !dbg !694
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !dbg !694

.preheader:                                       ; preds = %._crit_edge398
  %.old = icmp sgt i32 %total_outvals.0.lcssa, 0, !dbg !690
  br i1 %.old, label %.lr.ph, label %.loopexit, !dbg !695

.lr.ph:                                           ; preds = %535, %.preheader
  %540 = sitofp i32 %num_points to double, !dbg !696
  %541 = add i32 %total_outvals.0.lcssa, -1, !dbg !695
  br label %542, !dbg !695

; <label>:542                                     ; preds = %542, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %542 ]
  %543 = getelementptr inbounds double* %outvals, i64 %indvars.iv, !dbg !698
  %544 = load double* %543, align 8, !dbg !698, !tbaa !338
  %545 = fdiv double %544, %540, !dbg !699
  %546 = tail call double @sqrt(double %545) #7, !dbg !700
  store double %546, double* %543, align 8, !dbg !701, !tbaa !338
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !695
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !695
  %exitcond = icmp eq i32 %lftr.wideiv, %541, !dbg !695
  br i1 %exitcond, label %.loopexit, label %542, !dbg !695

.loopexit:                                        ; preds = %542, %.preheader, %535, %510
  %.0 = phi i32 [ -1, %510 ], [ 0, %535 ], [ 0, %.preheader ], [ 0, %542 ]
  ret i32 %.0, !dbg !702
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ReductionNorm2GVs(%struct.cGH* %GH, i32 %proc, i32 %num_outvals, i32 %outtype, i8* %outvals, i32 %num_invars, i32* %invars) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !85, metadata !260), !dbg !703
  tail call void @llvm.dbg.value(metadata i32 %proc, i64 0, metadata !86, metadata !260), !dbg !704
  tail call void @llvm.dbg.value(metadata i32 %num_outvals, i64 0, metadata !87, metadata !260), !dbg !705
  tail call void @llvm.dbg.value(metadata i32 %outtype, i64 0, metadata !88, metadata !260), !dbg !706
  tail call void @llvm.dbg.value(metadata i8* %outvals, i64 0, metadata !89, metadata !260), !dbg !707
  tail call void @llvm.dbg.value(metadata i32 %num_invars, i64 0, metadata !90, metadata !260), !dbg !708
  tail call void @llvm.dbg.value(metadata i32* %invars, i64 0, metadata !91, metadata !260), !dbg !709
  %1 = tail call i32 @PUGH_ReductionGVs(%struct.cGH* %GH, i32 %proc, i32 %num_invars, i32* %invars, i32 %outtype, i32 %num_outvals, i8* %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionNorm2) #6, !dbg !710
  ret i32 %1, !dbg !711
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

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!255, !256, !257}
!llvm.ident = !{!258}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !26, globals: !253, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/ReductionNorm2.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !8, !9, !11, !13, !15, !16, !18, !20}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "CCTK_BYTE", file: !6, line: 59, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/../include/cctk_Types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "CCTK_COMPLEX16", file: !6, line: 44, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 40, size: 128, align: 64, elements: !23)
!23 = !{!24, !25}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "Re", scope: !22, file: !6, line: 42, baseType: !8, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "Im", scope: !22, file: !6, line: 43, baseType: !8, size: 64, align: 64, offset: 64)
!26 = !{!27, !33, !81, !92}
!27 = !DISubprogram(name: "CCTKi_version_CactusPUGH_PUGHReduce_ReductionNorm2_c", scope: !1, file: !1, line: 24, type: !28, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusPUGH_PUGHReduce_ReductionNorm2_c, variables: !2)
!28 = !DISubroutineType(types: !29)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!33 = !DISubprogram(name: "PUGH_ReductionNorm2Arrays", scope: !1, file: !1, line: 112, type: !34, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)* @PUGH_ReductionNorm2Arrays, variables: !70)
!34 = !DISubroutineType(types: !35)
!35 = !{!10, !36, !10, !10, !9, !10, !60, !10, !10, !61, !10}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !38, line: 75, baseType: !39)
!38 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!39 = !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 24, size: 1216, align: 64, elements: !40)
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !62, !63}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !39, file: !38, line: 26, baseType: !10, size: 32, align: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !39, file: !38, line: 27, baseType: !10, size: 32, align: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !39, file: !38, line: 30, baseType: !9, size: 64, align: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !39, file: !38, line: 31, baseType: !9, size: 64, align: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !39, file: !38, line: 32, baseType: !9, size: 64, align: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !39, file: !38, line: 33, baseType: !9, size: 64, align: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !39, file: !38, line: 36, baseType: !9, size: 64, align: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !39, file: !38, line: 39, baseType: !9, size: 64, align: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !39, file: !38, line: 40, baseType: !9, size: 64, align: 64, offset: 448)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !39, file: !38, line: 43, baseType: !8, size: 64, align: 64, offset: 512)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !39, file: !38, line: 44, baseType: !15, size: 64, align: 64, offset: 576)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !39, file: !38, line: 47, baseType: !15, size: 64, align: 64, offset: 640)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !39, file: !38, line: 51, baseType: !9, size: 64, align: 64, offset: 704)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !39, file: !38, line: 54, baseType: !9, size: 64, align: 64, offset: 768)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !39, file: !38, line: 57, baseType: !10, size: 32, align: 32, offset: 832)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !39, file: !38, line: 60, baseType: !9, size: 64, align: 64, offset: 896)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !39, file: !38, line: 63, baseType: !8, size: 64, align: 64, offset: 960)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !39, file: !38, line: 67, baseType: !59, size: 64, align: 64, offset: 1024)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !39, file: !38, line: 70, baseType: !60, size: 64, align: 64, offset: 1088)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !39, file: !38, line: 73, baseType: !64, size: 64, align: 64, offset: 1152)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !38, line: 22, baseType: !66)
!66 = !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 18, size: 16, align: 8, elements: !67)
!67 = !{!68, !69}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !66, file: !38, line: 20, baseType: !32, size: 8, align: 8)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !66, file: !38, line: 21, baseType: !32, size: 8, align: 8, offset: 8)
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !33, file: !1, line: 112, type: !36)
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proc", arg: 2, scope: !33, file: !1, line: 113, type: !10)
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_dims", arg: 3, scope: !33, file: !1, line: 114, type: !10)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dims", arg: 4, scope: !33, file: !1, line: 115, type: !9)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_inarrays", arg: 5, scope: !33, file: !1, line: 116, type: !10)
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inarrays", arg: 6, scope: !33, file: !1, line: 117, type: !60)
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "intype", arg: 7, scope: !33, file: !1, line: 118, type: !10)
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_outvals", arg: 8, scope: !33, file: !1, line: 119, type: !10)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outvals", arg: 9, scope: !33, file: !1, line: 120, type: !61)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outtype", arg: 10, scope: !33, file: !1, line: 121, type: !10)
!81 = !DISubprogram(name: "PUGH_ReductionNorm2GVs", scope: !1, file: !1, line: 180, type: !82, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)* @PUGH_ReductionNorm2GVs, variables: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{!10, !36, !10, !10, !10, !61, !10, !9}
!84 = !{!85, !86, !87, !88, !89, !90, !91}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !81, file: !1, line: 180, type: !36)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proc", arg: 2, scope: !81, file: !1, line: 181, type: !10)
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_outvals", arg: 3, scope: !81, file: !1, line: 182, type: !10)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outtype", arg: 4, scope: !81, file: !1, line: 183, type: !10)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outvals", arg: 5, scope: !81, file: !1, line: 184, type: !61)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_invars", arg: 6, scope: !81, file: !1, line: 185, type: !10)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "invars", arg: 7, scope: !81, file: !1, line: 186, type: !9)
!92 = !DISubprogram(name: "PUGH_ReductionNorm2", scope: !1, file: !1, line: 208, type: !93, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* @PUGH_ReductionNorm2, variables: !95)
!93 = !DISubroutineType(types: !94)
!94 = !{!10, !36, !10, !10, !9, !9, !9, !9, !10, !10, !9, !60, !10, !15}
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !179, !185, !186, !187, !188, !189, !190, !192, !193, !194, !195, !196, !197, !199, !200, !201, !202, !203, !204, !206, !207, !208, !209, !210, !211, !213, !214, !215, !216, !217, !218, !220, !221, !222, !223, !224, !225, !227, !228, !229, !230, !231, !232, !234, !235, !236, !237, !238, !239, !241, !242, !243, !244, !245, !246, !248, !249, !250, !251, !252}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !92, file: !1, line: 208, type: !36)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proc", arg: 2, scope: !92, file: !1, line: 209, type: !10)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_dims", arg: 3, scope: !92, file: !1, line: 210, type: !10)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "from", arg: 4, scope: !92, file: !1, line: 211, type: !9)
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "to", arg: 5, scope: !92, file: !1, line: 212, type: !9)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iterator", arg: 6, scope: !92, file: !1, line: 213, type: !9)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "points_per_dim", arg: 7, scope: !92, file: !1, line: 214, type: !9)
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_points", arg: 8, scope: !92, file: !1, line: 215, type: !10)
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_inarrays", arg: 9, scope: !92, file: !1, line: 216, type: !10)
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "intypes", arg: 10, scope: !92, file: !1, line: 217, type: !9)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inarrays", arg: 11, scope: !92, file: !1, line: 218, type: !60)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_outvals", arg: 12, scope: !92, file: !1, line: 219, type: !10)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outvals", arg: 13, scope: !92, file: !1, line: 220, type: !15)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !92, file: !1, line: 222, type: !10)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "total_outvals", scope: !92, file: !1, line: 222, type: !10)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pughGH", scope: !92, file: !1, line: 223, type: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGH", file: !114, line: 81, baseType: !115)
!114 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/../include/pGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGH", file: !114, line: 13, size: 1152, align: 64, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !167, !177}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "callerid", scope: !115, file: !114, line: 17, baseType: !61, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !115, file: !114, line: 18, baseType: !10, size: 32, align: 32, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !115, file: !114, line: 21, baseType: !10, size: 32, align: 32, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "myproc", scope: !115, file: !114, line: 22, baseType: !10, size: 32, align: 32, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "commmodel", scope: !115, file: !114, line: 23, baseType: !10, size: 32, align: 32, offset: 160)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "nvariables", scope: !115, file: !114, line: 27, baseType: !10, size: 32, align: 32, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "narrays", scope: !115, file: !114, line: 28, baseType: !10, size: 32, align: 32, offset: 224)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !115, file: !114, line: 29, baseType: !59, size: 64, align: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "timelevel", scope: !115, file: !114, line: 32, baseType: !10, size: 32, align: 32, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !115, file: !114, line: 34, baseType: !9, size: 64, align: 64, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !115, file: !114, line: 35, baseType: !10, size: 32, align: 32, offset: 448)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "forceSync", scope: !115, file: !114, line: 37, baseType: !10, size: 32, align: 32, offset: 480)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "dx0", scope: !115, file: !114, line: 41, baseType: !8, size: 64, align: 64, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dy0", scope: !115, file: !114, line: 41, baseType: !8, size: 64, align: 64, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "dz0", scope: !115, file: !114, line: 41, baseType: !8, size: 64, align: 64, offset: 640)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "dt0", scope: !115, file: !114, line: 41, baseType: !8, size: 64, align: 64, offset: 704)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !115, file: !114, line: 44, baseType: !10, size: 32, align: 32, offset: 768)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "mglevel", scope: !115, file: !114, line: 45, baseType: !10, size: 32, align: 32, offset: 800)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "convlevel", scope: !115, file: !114, line: 46, baseType: !10, size: 32, align: 32, offset: 832)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !115, file: !114, line: 49, baseType: !10, size: 32, align: 32, offset: 864)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "comm_time", scope: !115, file: !114, line: 53, baseType: !10, size: 32, align: 32, offset: 896)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "GFExtras", scope: !115, file: !114, line: 76, baseType: !139, size: 64, align: 64, offset: 960)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGExtras", file: !142, line: 72, baseType: !143)
!142 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/../include/pGV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!143 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGExtras", file: !142, line: 37, size: 2368, align: 64, elements: !144)
!144 = !{!145, !146, !147, !148, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !164, !166}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !143, file: !142, line: 39, baseType: !10, size: 32, align: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nsize", scope: !143, file: !142, line: 41, baseType: !9, size: 64, align: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "maxskew", scope: !143, file: !142, line: 44, baseType: !8, size: 64, align: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "lb", scope: !143, file: !142, line: 45, baseType: !149, size: 64, align: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ub", scope: !143, file: !142, line: 46, baseType: !149, size: 64, align: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !143, file: !142, line: 47, baseType: !9, size: 64, align: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "lnsize", scope: !143, file: !142, line: 49, baseType: !9, size: 64, align: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "npoints", scope: !143, file: !142, line: 50, baseType: !10, size: 32, align: 32, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "rnpoints", scope: !143, file: !142, line: 51, baseType: !9, size: 64, align: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "rnsize", scope: !143, file: !142, line: 52, baseType: !149, size: 64, align: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !143, file: !142, line: 55, baseType: !9, size: 64, align: 64, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_volume", scope: !143, file: !142, line: 56, baseType: !9, size: 64, align: 64, offset: 704)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nghostzones", scope: !143, file: !142, line: 59, baseType: !9, size: 64, align: 64, offset: 768)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ownership", scope: !143, file: !142, line: 60, baseType: !160, size: 512, align: 64, offset: 832)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 512, align: 64, elements: !161)
!161 = !{!162, !163}
!162 = !DISubrange(count: 4)
!163 = !DISubrange(count: 2)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "ghosts", scope: !143, file: !142, line: 64, baseType: !165, size: 512, align: 64, offset: 1344)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 512, align: 64, elements: !161)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "overlap", scope: !143, file: !142, line: 68, baseType: !165, size: 512, align: 64, offset: 1856)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "Connectivity", scope: !115, file: !114, line: 77, baseType: !168, size: 64, align: 64, offset: 1024)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "pConnectivity", file: !142, line: 29, baseType: !171)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "PConnectivity", file: !142, line: 23, size: 256, align: 64, elements: !172)
!172 = !{!173, !174, !175, !176}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !171, file: !142, line: 25, baseType: !10, size: 32, align: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !171, file: !142, line: 26, baseType: !9, size: 64, align: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "neighbours", scope: !171, file: !142, line: 27, baseType: !149, size: 64, align: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !171, file: !142, line: 28, baseType: !9, size: 64, align: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "identity_string", scope: !115, file: !114, line: 79, baseType: !178, size: 64, align: 64, offset: 1088)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_i", scope: !180, file: !1, line: 243, type: !10)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 243, column: 9)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 240, column: 5)
!182 = distinct !DILexicalBlock(scope: !183, file: !1, line: 238, column: 3)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 237, column: 3)
!184 = distinct !DILexicalBlock(scope: !92, file: !1, line: 237, column: 3)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_j", scope: !180, file: !1, line: 243, type: !10)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dim", scope: !180, file: !1, line: 243, type: !10)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_vindex", scope: !180, file: !1, line: 243, type: !10)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_vdata", scope: !180, file: !1, line: 243, type: !4)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_outval", scope: !180, file: !1, line: 243, type: !5)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_i", scope: !191, file: !1, line: 249, type: !10)
!191 = distinct !DILexicalBlock(scope: !181, file: !1, line: 249, column: 9)
!192 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_j", scope: !191, file: !1, line: 249, type: !10)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dim", scope: !191, file: !1, line: 249, type: !10)
!194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_vindex", scope: !191, file: !1, line: 249, type: !10)
!195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_vdata", scope: !191, file: !1, line: 249, type: !9)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_outval", scope: !191, file: !1, line: 249, type: !10)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_i", scope: !198, file: !1, line: 256, type: !10)
!198 = distinct !DILexicalBlock(scope: !181, file: !1, line: 256, column: 9)
!199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_j", scope: !198, file: !1, line: 256, type: !10)
!200 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dim", scope: !198, file: !1, line: 256, type: !10)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_vindex", scope: !198, file: !1, line: 256, type: !10)
!202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_vdata", scope: !198, file: !1, line: 256, type: !11)
!203 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_outval", scope: !198, file: !1, line: 256, type: !12)
!204 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_i", scope: !205, file: !1, line: 264, type: !10)
!205 = distinct !DILexicalBlock(scope: !181, file: !1, line: 264, column: 9)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_j", scope: !205, file: !1, line: 264, type: !10)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dim", scope: !205, file: !1, line: 264, type: !10)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_vindex", scope: !205, file: !1, line: 264, type: !10)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_vdata", scope: !205, file: !1, line: 264, type: !9)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_outval", scope: !205, file: !1, line: 264, type: !10)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_i", scope: !212, file: !1, line: 272, type: !10)
!212 = distinct !DILexicalBlock(scope: !181, file: !1, line: 272, column: 9)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_j", scope: !212, file: !1, line: 272, type: !10)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dim", scope: !212, file: !1, line: 272, type: !10)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_vindex", scope: !212, file: !1, line: 272, type: !10)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_vdata", scope: !212, file: !1, line: 272, type: !13)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_outval", scope: !212, file: !1, line: 272, type: !14)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_i", scope: !219, file: !1, line: 279, type: !10)
!219 = distinct !DILexicalBlock(scope: !181, file: !1, line: 279, column: 9)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_j", scope: !219, file: !1, line: 279, type: !10)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dim", scope: !219, file: !1, line: 279, type: !10)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_vindex", scope: !219, file: !1, line: 279, type: !10)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_vdata", scope: !219, file: !1, line: 279, type: !15)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_outval", scope: !219, file: !1, line: 279, type: !8)
!225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_i", scope: !226, file: !1, line: 286, type: !10)
!226 = distinct !DILexicalBlock(scope: !181, file: !1, line: 286, column: 9)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_j", scope: !226, file: !1, line: 286, type: !10)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dim", scope: !226, file: !1, line: 286, type: !10)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_vindex", scope: !226, file: !1, line: 286, type: !10)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_vdata", scope: !226, file: !1, line: 286, type: !16)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_outval", scope: !226, file: !1, line: 286, type: !17)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_i", scope: !233, file: !1, line: 294, type: !10)
!233 = distinct !DILexicalBlock(scope: !181, file: !1, line: 294, column: 9)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_j", scope: !233, file: !1, line: 294, type: !10)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dim", scope: !233, file: !1, line: 294, type: !10)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_vindex", scope: !233, file: !1, line: 294, type: !10)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_vdata", scope: !233, file: !1, line: 294, type: !15)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_outval", scope: !233, file: !1, line: 294, type: !8)
!239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_i", scope: !240, file: !1, line: 302, type: !10)
!240 = distinct !DILexicalBlock(scope: !181, file: !1, line: 302, column: 9)
!241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_j", scope: !240, file: !1, line: 302, type: !10)
!242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dim", scope: !240, file: !1, line: 302, type: !10)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_vindex", scope: !240, file: !1, line: 302, type: !10)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_vdata", scope: !240, file: !1, line: 302, type: !18)
!245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_outval", scope: !240, file: !1, line: 302, type: !19)
!246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_i", scope: !247, file: !1, line: 312, type: !10)
!247 = distinct !DILexicalBlock(scope: !181, file: !1, line: 312, column: 9)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_j", scope: !247, file: !1, line: 312, type: !10)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_dim", scope: !247, file: !1, line: 312, type: !10)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_vindex", scope: !247, file: !1, line: 312, type: !10)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_vdata", scope: !247, file: !1, line: 312, type: !20)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typed_outval", scope: !247, file: !1, line: 312, type: !8)
!253 = !{!254}
!254 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 22, type: !30, isLocal: true, isDefinition: true)
!255 = !{i32 2, !"Dwarf Version", i32 2}
!256 = !{i32 2, !"Debug Info Version", i32 700000003}
!257 = !{i32 1, !"PIC Level", i32 2}
!258 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!259 = !DILocation(line: 24, column: 1, scope: !27)
!260 = !DIExpression()
!261 = !DILocation(line: 112, column: 37, scope: !33)
!262 = !DILocation(line: 113, column: 36, scope: !33)
!263 = !DILocation(line: 114, column: 36, scope: !33)
!264 = !DILocation(line: 115, column: 36, scope: !33)
!265 = !DILocation(line: 116, column: 36, scope: !33)
!266 = !DILocation(line: 117, column: 38, scope: !33)
!267 = !DILocation(line: 118, column: 36, scope: !33)
!268 = !DILocation(line: 119, column: 36, scope: !33)
!269 = !DILocation(line: 120, column: 38, scope: !33)
!270 = !DILocation(line: 121, column: 36, scope: !33)
!271 = !DILocation(line: 123, column: 11, scope: !33)
!272 = !DILocation(line: 123, column: 3, scope: !33)
!273 = !DILocation(line: 208, column: 38, scope: !92)
!274 = !DILocation(line: 209, column: 37, scope: !92)
!275 = !DILocation(line: 210, column: 37, scope: !92)
!276 = !DILocation(line: 211, column: 37, scope: !92)
!277 = !DILocation(line: 212, column: 37, scope: !92)
!278 = !DILocation(line: 213, column: 37, scope: !92)
!279 = !DILocation(line: 214, column: 37, scope: !92)
!280 = !DILocation(line: 215, column: 37, scope: !92)
!281 = !DILocation(line: 216, column: 37, scope: !92)
!282 = !DILocation(line: 217, column: 37, scope: !92)
!283 = !DILocation(line: 218, column: 39, scope: !92)
!284 = !DILocation(line: 219, column: 37, scope: !92)
!285 = !DILocation(line: 220, column: 43, scope: !92)
!286 = !DILocation(line: 222, column: 10, scope: !92)
!287 = !DILocation(line: 222, column: 7, scope: !92)
!288 = !DILocation(line: 237, column: 33, scope: !183)
!289 = !DILocation(line: 237, column: 3, scope: !184)
!290 = !DILocation(line: 243, column: 9, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !1, line: 243, column: 9)
!292 = distinct !DILexicalBlock(scope: !180, file: !1, line: 243, column: 9)
!293 = !DILocation(line: 243, column: 9, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !1, line: 243, column: 9)
!295 = !DILocation(line: 243, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !1, line: 243, column: 9)
!297 = distinct !DILexicalBlock(scope: !298, file: !1, line: 243, column: 9)
!298 = distinct !DILexicalBlock(scope: !294, file: !1, line: 243, column: 9)
!299 = !DILocation(line: 243, column: 9, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 243, column: 9)
!301 = distinct !DILexicalBlock(scope: !302, file: !1, line: 243, column: 9)
!302 = distinct !DILexicalBlock(scope: !298, file: !1, line: 243, column: 9)
!303 = !DILocation(line: 243, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !1, line: 243, column: 9)
!305 = distinct !DILexicalBlock(scope: !306, file: !1, line: 243, column: 9)
!306 = distinct !DILexicalBlock(scope: !300, file: !1, line: 243, column: 9)
!307 = !DILocation(line: 312, column: 9, scope: !308)
!308 = distinct !DILexicalBlock(scope: !247, file: !1, line: 312, column: 9)
!309 = !DILocation(line: 239, column: 13, scope: !182)
!310 = !{!311, !311, i64 0}
!311 = !{!"int", !312, i64 0}
!312 = !{!"omnipotent char", !313, i64 0}
!313 = !{!"Simple C/C++ TBAA"}
!314 = !DILocation(line: 239, column: 5, scope: !182)
!315 = !DILocation(line: 243, column: 9, scope: !180)
!316 = !DILocation(line: 243, column: 9, scope: !292)
!317 = !{!318, !318, i64 0}
!318 = !{!"any pointer", !312, i64 0}
!319 = !DILocation(line: 243, column: 9, scope: !297)
!320 = !DILocation(line: 243, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !298, file: !1, line: 243, column: 9)
!322 = !DILocation(line: 243, column: 9, scope: !323)
!323 = distinct !DILexicalBlock(scope: !321, file: !1, line: 243, column: 9)
!324 = !DILocation(line: 243, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !323, file: !1, line: 243, column: 9)
!326 = !{!312, !312, i64 0}
!327 = !DILocation(line: 243, column: 9, scope: !298)
!328 = !DILocation(line: 243, column: 9, scope: !301)
!329 = !DILocation(line: 243, column: 9, scope: !305)
!330 = !DILocation(line: 243, column: 9, scope: !331)
!331 = distinct !DILexicalBlock(scope: !332, file: !1, line: 243, column: 9)
!332 = distinct !DILexicalBlock(scope: !304, file: !1, line: 243, column: 9)
!333 = !DILocation(line: 243, column: 9, scope: !332)
!334 = !DILocation(line: 243, column: 9, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !1, line: 243, column: 9)
!336 = distinct !DILexicalBlock(scope: !306, file: !1, line: 243, column: 9)
!337 = !DILocation(line: 243, column: 9, scope: !336)
!338 = !{!339, !339, i64 0}
!339 = !{!"double", !312, i64 0}
!340 = !DILocation(line: 249, column: 9, scope: !191)
!341 = !DILocation(line: 249, column: 9, scope: !342)
!342 = distinct !DILexicalBlock(scope: !191, file: !1, line: 249, column: 9)
!343 = !DILocation(line: 249, column: 9, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !1, line: 249, column: 9)
!345 = distinct !DILexicalBlock(scope: !342, file: !1, line: 249, column: 9)
!346 = !DILocation(line: 249, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 249, column: 9)
!348 = distinct !DILexicalBlock(scope: !344, file: !1, line: 249, column: 9)
!349 = !DILocation(line: 249, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !1, line: 249, column: 9)
!351 = !DILocation(line: 249, column: 9, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !1, line: 249, column: 9)
!353 = !DILocation(line: 249, column: 9, scope: !354)
!354 = distinct !DILexicalBlock(scope: !352, file: !1, line: 249, column: 9)
!355 = !DILocation(line: 249, column: 9, scope: !356)
!356 = distinct !DILexicalBlock(scope: !354, file: !1, line: 249, column: 9)
!357 = !DILocation(line: 249, column: 9, scope: !348)
!358 = !DILocation(line: 249, column: 9, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !1, line: 249, column: 9)
!360 = distinct !DILexicalBlock(scope: !361, file: !1, line: 249, column: 9)
!361 = distinct !DILexicalBlock(scope: !348, file: !1, line: 249, column: 9)
!362 = !DILocation(line: 249, column: 9, scope: !360)
!363 = !DILocation(line: 249, column: 9, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !1, line: 249, column: 9)
!365 = distinct !DILexicalBlock(scope: !359, file: !1, line: 249, column: 9)
!366 = !DILocation(line: 249, column: 9, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !1, line: 249, column: 9)
!368 = distinct !DILexicalBlock(scope: !369, file: !1, line: 249, column: 9)
!369 = distinct !DILexicalBlock(scope: !364, file: !1, line: 249, column: 9)
!370 = !DILocation(line: 249, column: 9, scope: !368)
!371 = !DILocation(line: 249, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !1, line: 249, column: 9)
!373 = distinct !DILexicalBlock(scope: !365, file: !1, line: 249, column: 9)
!374 = !DILocation(line: 249, column: 9, scope: !373)
!375 = !DILocation(line: 249, column: 9, scope: !369)
!376 = !DILocation(line: 249, column: 9, scope: !345)
!377 = !DILocation(line: 256, column: 9, scope: !198)
!378 = !DILocation(line: 256, column: 9, scope: !379)
!379 = distinct !DILexicalBlock(scope: !198, file: !1, line: 256, column: 9)
!380 = !DILocation(line: 256, column: 9, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !1, line: 256, column: 9)
!382 = distinct !DILexicalBlock(scope: !379, file: !1, line: 256, column: 9)
!383 = !DILocation(line: 256, column: 9, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !1, line: 256, column: 9)
!385 = distinct !DILexicalBlock(scope: !381, file: !1, line: 256, column: 9)
!386 = !DILocation(line: 256, column: 9, scope: !387)
!387 = distinct !DILexicalBlock(scope: !384, file: !1, line: 256, column: 9)
!388 = !DILocation(line: 256, column: 9, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !1, line: 256, column: 9)
!390 = !DILocation(line: 256, column: 9, scope: !391)
!391 = distinct !DILexicalBlock(scope: !389, file: !1, line: 256, column: 9)
!392 = !DILocation(line: 256, column: 9, scope: !393)
!393 = distinct !DILexicalBlock(scope: !391, file: !1, line: 256, column: 9)
!394 = !{!395, !395, i64 0}
!395 = !{!"short", !312, i64 0}
!396 = !DILocation(line: 256, column: 9, scope: !385)
!397 = !DILocation(line: 256, column: 9, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 256, column: 9)
!399 = distinct !DILexicalBlock(scope: !400, file: !1, line: 256, column: 9)
!400 = distinct !DILexicalBlock(scope: !385, file: !1, line: 256, column: 9)
!401 = !DILocation(line: 256, column: 9, scope: !399)
!402 = !DILocation(line: 256, column: 9, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 256, column: 9)
!404 = distinct !DILexicalBlock(scope: !398, file: !1, line: 256, column: 9)
!405 = !DILocation(line: 256, column: 9, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 256, column: 9)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 256, column: 9)
!408 = distinct !DILexicalBlock(scope: !403, file: !1, line: 256, column: 9)
!409 = !DILocation(line: 256, column: 9, scope: !407)
!410 = !DILocation(line: 256, column: 9, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 256, column: 9)
!412 = distinct !DILexicalBlock(scope: !404, file: !1, line: 256, column: 9)
!413 = !DILocation(line: 256, column: 9, scope: !412)
!414 = !DILocation(line: 256, column: 9, scope: !408)
!415 = !DILocation(line: 256, column: 9, scope: !382)
!416 = !DILocation(line: 264, column: 9, scope: !205)
!417 = !DILocation(line: 264, column: 9, scope: !418)
!418 = distinct !DILexicalBlock(scope: !205, file: !1, line: 264, column: 9)
!419 = !DILocation(line: 264, column: 9, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !1, line: 264, column: 9)
!421 = distinct !DILexicalBlock(scope: !418, file: !1, line: 264, column: 9)
!422 = !DILocation(line: 264, column: 9, scope: !423)
!423 = distinct !DILexicalBlock(scope: !424, file: !1, line: 264, column: 9)
!424 = distinct !DILexicalBlock(scope: !420, file: !1, line: 264, column: 9)
!425 = !DILocation(line: 264, column: 9, scope: !426)
!426 = distinct !DILexicalBlock(scope: !423, file: !1, line: 264, column: 9)
!427 = !DILocation(line: 264, column: 9, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !1, line: 264, column: 9)
!429 = !DILocation(line: 264, column: 9, scope: !430)
!430 = distinct !DILexicalBlock(scope: !428, file: !1, line: 264, column: 9)
!431 = !DILocation(line: 264, column: 9, scope: !432)
!432 = distinct !DILexicalBlock(scope: !430, file: !1, line: 264, column: 9)
!433 = !DILocation(line: 264, column: 9, scope: !424)
!434 = !DILocation(line: 264, column: 9, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !1, line: 264, column: 9)
!436 = distinct !DILexicalBlock(scope: !437, file: !1, line: 264, column: 9)
!437 = distinct !DILexicalBlock(scope: !424, file: !1, line: 264, column: 9)
!438 = !DILocation(line: 264, column: 9, scope: !436)
!439 = !DILocation(line: 264, column: 9, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !1, line: 264, column: 9)
!441 = distinct !DILexicalBlock(scope: !435, file: !1, line: 264, column: 9)
!442 = !DILocation(line: 264, column: 9, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 264, column: 9)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 264, column: 9)
!445 = distinct !DILexicalBlock(scope: !440, file: !1, line: 264, column: 9)
!446 = !DILocation(line: 264, column: 9, scope: !444)
!447 = !DILocation(line: 264, column: 9, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 264, column: 9)
!449 = distinct !DILexicalBlock(scope: !441, file: !1, line: 264, column: 9)
!450 = !DILocation(line: 264, column: 9, scope: !449)
!451 = !DILocation(line: 264, column: 9, scope: !445)
!452 = !DILocation(line: 264, column: 9, scope: !421)
!453 = !DILocation(line: 272, column: 9, scope: !212)
!454 = !DILocation(line: 272, column: 9, scope: !455)
!455 = distinct !DILexicalBlock(scope: !212, file: !1, line: 272, column: 9)
!456 = !DILocation(line: 272, column: 9, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 272, column: 9)
!458 = distinct !DILexicalBlock(scope: !455, file: !1, line: 272, column: 9)
!459 = !DILocation(line: 272, column: 9, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 272, column: 9)
!461 = distinct !DILexicalBlock(scope: !457, file: !1, line: 272, column: 9)
!462 = !DILocation(line: 272, column: 9, scope: !463)
!463 = distinct !DILexicalBlock(scope: !460, file: !1, line: 272, column: 9)
!464 = !DILocation(line: 272, column: 9, scope: !465)
!465 = distinct !DILexicalBlock(scope: !461, file: !1, line: 272, column: 9)
!466 = !DILocation(line: 272, column: 9, scope: !467)
!467 = distinct !DILexicalBlock(scope: !465, file: !1, line: 272, column: 9)
!468 = !DILocation(line: 272, column: 9, scope: !469)
!469 = distinct !DILexicalBlock(scope: !467, file: !1, line: 272, column: 9)
!470 = !{!471, !471, i64 0}
!471 = !{!"long", !312, i64 0}
!472 = !DILocation(line: 272, column: 9, scope: !461)
!473 = !DILocation(line: 272, column: 9, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !1, line: 272, column: 9)
!475 = distinct !DILexicalBlock(scope: !476, file: !1, line: 272, column: 9)
!476 = distinct !DILexicalBlock(scope: !461, file: !1, line: 272, column: 9)
!477 = !DILocation(line: 272, column: 9, scope: !475)
!478 = !DILocation(line: 272, column: 9, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 272, column: 9)
!480 = distinct !DILexicalBlock(scope: !474, file: !1, line: 272, column: 9)
!481 = !DILocation(line: 272, column: 9, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 272, column: 9)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 272, column: 9)
!484 = distinct !DILexicalBlock(scope: !479, file: !1, line: 272, column: 9)
!485 = !DILocation(line: 272, column: 9, scope: !483)
!486 = !DILocation(line: 272, column: 9, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !1, line: 272, column: 9)
!488 = distinct !DILexicalBlock(scope: !480, file: !1, line: 272, column: 9)
!489 = !DILocation(line: 272, column: 9, scope: !488)
!490 = !DILocation(line: 272, column: 9, scope: !484)
!491 = !DILocation(line: 272, column: 9, scope: !458)
!492 = !DILocation(line: 279, column: 9, scope: !219)
!493 = !DILocation(line: 279, column: 9, scope: !494)
!494 = distinct !DILexicalBlock(scope: !219, file: !1, line: 279, column: 9)
!495 = !DILocation(line: 279, column: 9, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !1, line: 279, column: 9)
!497 = distinct !DILexicalBlock(scope: !494, file: !1, line: 279, column: 9)
!498 = !DILocation(line: 279, column: 9, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !1, line: 279, column: 9)
!500 = distinct !DILexicalBlock(scope: !496, file: !1, line: 279, column: 9)
!501 = !DILocation(line: 279, column: 9, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !1, line: 279, column: 9)
!503 = !DILocation(line: 279, column: 9, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !1, line: 279, column: 9)
!505 = !DILocation(line: 279, column: 9, scope: !506)
!506 = distinct !DILexicalBlock(scope: !504, file: !1, line: 279, column: 9)
!507 = !DILocation(line: 279, column: 9, scope: !508)
!508 = distinct !DILexicalBlock(scope: !506, file: !1, line: 279, column: 9)
!509 = !DILocation(line: 279, column: 9, scope: !500)
!510 = !DILocation(line: 279, column: 9, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !1, line: 279, column: 9)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 279, column: 9)
!513 = distinct !DILexicalBlock(scope: !500, file: !1, line: 279, column: 9)
!514 = !DILocation(line: 279, column: 9, scope: !512)
!515 = !DILocation(line: 279, column: 9, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !1, line: 279, column: 9)
!517 = distinct !DILexicalBlock(scope: !511, file: !1, line: 279, column: 9)
!518 = !DILocation(line: 279, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 279, column: 9)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 279, column: 9)
!521 = distinct !DILexicalBlock(scope: !516, file: !1, line: 279, column: 9)
!522 = !DILocation(line: 279, column: 9, scope: !520)
!523 = !DILocation(line: 279, column: 9, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 279, column: 9)
!525 = distinct !DILexicalBlock(scope: !517, file: !1, line: 279, column: 9)
!526 = !DILocation(line: 279, column: 9, scope: !525)
!527 = !DILocation(line: 279, column: 9, scope: !521)
!528 = !DILocation(line: 279, column: 9, scope: !497)
!529 = !DILocation(line: 286, column: 9, scope: !226)
!530 = !DILocation(line: 286, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !226, file: !1, line: 286, column: 9)
!532 = !DILocation(line: 286, column: 9, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 286, column: 9)
!534 = distinct !DILexicalBlock(scope: !531, file: !1, line: 286, column: 9)
!535 = !DILocation(line: 286, column: 9, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !1, line: 286, column: 9)
!537 = distinct !DILexicalBlock(scope: !533, file: !1, line: 286, column: 9)
!538 = !DILocation(line: 286, column: 9, scope: !539)
!539 = distinct !DILexicalBlock(scope: !536, file: !1, line: 286, column: 9)
!540 = !DILocation(line: 286, column: 9, scope: !541)
!541 = distinct !DILexicalBlock(scope: !537, file: !1, line: 286, column: 9)
!542 = !DILocation(line: 286, column: 9, scope: !543)
!543 = distinct !DILexicalBlock(scope: !541, file: !1, line: 286, column: 9)
!544 = !DILocation(line: 286, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !543, file: !1, line: 286, column: 9)
!546 = !{!547, !547, i64 0}
!547 = !{!"float", !312, i64 0}
!548 = !DILocation(line: 286, column: 9, scope: !537)
!549 = !DILocation(line: 286, column: 9, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !1, line: 286, column: 9)
!551 = distinct !DILexicalBlock(scope: !552, file: !1, line: 286, column: 9)
!552 = distinct !DILexicalBlock(scope: !537, file: !1, line: 286, column: 9)
!553 = !DILocation(line: 286, column: 9, scope: !551)
!554 = !DILocation(line: 286, column: 9, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 286, column: 9)
!556 = distinct !DILexicalBlock(scope: !550, file: !1, line: 286, column: 9)
!557 = !DILocation(line: 286, column: 9, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !1, line: 286, column: 9)
!559 = distinct !DILexicalBlock(scope: !560, file: !1, line: 286, column: 9)
!560 = distinct !DILexicalBlock(scope: !555, file: !1, line: 286, column: 9)
!561 = !DILocation(line: 286, column: 9, scope: !559)
!562 = !DILocation(line: 286, column: 9, scope: !563)
!563 = distinct !DILexicalBlock(scope: !564, file: !1, line: 286, column: 9)
!564 = distinct !DILexicalBlock(scope: !556, file: !1, line: 286, column: 9)
!565 = !DILocation(line: 286, column: 9, scope: !564)
!566 = !DILocation(line: 286, column: 9, scope: !560)
!567 = !DILocation(line: 286, column: 9, scope: !534)
!568 = !DILocation(line: 294, column: 9, scope: !233)
!569 = !DILocation(line: 294, column: 9, scope: !570)
!570 = distinct !DILexicalBlock(scope: !233, file: !1, line: 294, column: 9)
!571 = !DILocation(line: 294, column: 9, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !1, line: 294, column: 9)
!573 = distinct !DILexicalBlock(scope: !570, file: !1, line: 294, column: 9)
!574 = !DILocation(line: 294, column: 9, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !1, line: 294, column: 9)
!576 = distinct !DILexicalBlock(scope: !572, file: !1, line: 294, column: 9)
!577 = !DILocation(line: 294, column: 9, scope: !578)
!578 = distinct !DILexicalBlock(scope: !575, file: !1, line: 294, column: 9)
!579 = !DILocation(line: 294, column: 9, scope: !580)
!580 = distinct !DILexicalBlock(scope: !576, file: !1, line: 294, column: 9)
!581 = !DILocation(line: 294, column: 9, scope: !582)
!582 = distinct !DILexicalBlock(scope: !580, file: !1, line: 294, column: 9)
!583 = !DILocation(line: 294, column: 9, scope: !584)
!584 = distinct !DILexicalBlock(scope: !582, file: !1, line: 294, column: 9)
!585 = !DILocation(line: 294, column: 9, scope: !576)
!586 = !DILocation(line: 294, column: 9, scope: !587)
!587 = distinct !DILexicalBlock(scope: !588, file: !1, line: 294, column: 9)
!588 = distinct !DILexicalBlock(scope: !589, file: !1, line: 294, column: 9)
!589 = distinct !DILexicalBlock(scope: !576, file: !1, line: 294, column: 9)
!590 = !DILocation(line: 294, column: 9, scope: !588)
!591 = !DILocation(line: 294, column: 9, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !1, line: 294, column: 9)
!593 = distinct !DILexicalBlock(scope: !587, file: !1, line: 294, column: 9)
!594 = !DILocation(line: 294, column: 9, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 294, column: 9)
!596 = distinct !DILexicalBlock(scope: !597, file: !1, line: 294, column: 9)
!597 = distinct !DILexicalBlock(scope: !592, file: !1, line: 294, column: 9)
!598 = !DILocation(line: 294, column: 9, scope: !596)
!599 = !DILocation(line: 294, column: 9, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !1, line: 294, column: 9)
!601 = distinct !DILexicalBlock(scope: !593, file: !1, line: 294, column: 9)
!602 = !DILocation(line: 294, column: 9, scope: !601)
!603 = !DILocation(line: 294, column: 9, scope: !597)
!604 = !DILocation(line: 294, column: 9, scope: !573)
!605 = !DILocation(line: 302, column: 9, scope: !240)
!606 = !DILocation(line: 302, column: 9, scope: !607)
!607 = distinct !DILexicalBlock(scope: !240, file: !1, line: 302, column: 9)
!608 = !DILocation(line: 302, column: 9, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 302, column: 9)
!610 = distinct !DILexicalBlock(scope: !607, file: !1, line: 302, column: 9)
!611 = !DILocation(line: 302, column: 9, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 302, column: 9)
!613 = distinct !DILexicalBlock(scope: !609, file: !1, line: 302, column: 9)
!614 = !DILocation(line: 302, column: 9, scope: !615)
!615 = distinct !DILexicalBlock(scope: !612, file: !1, line: 302, column: 9)
!616 = !DILocation(line: 302, column: 9, scope: !617)
!617 = distinct !DILexicalBlock(scope: !613, file: !1, line: 302, column: 9)
!618 = !DILocation(line: 302, column: 9, scope: !619)
!619 = distinct !DILexicalBlock(scope: !617, file: !1, line: 302, column: 9)
!620 = !DILocation(line: 302, column: 9, scope: !621)
!621 = distinct !DILexicalBlock(scope: !619, file: !1, line: 302, column: 9)
!622 = !{!623, !623, i64 0}
!623 = !{!"long double", !312, i64 0}
!624 = !DILocation(line: 302, column: 9, scope: !613)
!625 = !DILocation(line: 302, column: 9, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !1, line: 302, column: 9)
!627 = distinct !DILexicalBlock(scope: !628, file: !1, line: 302, column: 9)
!628 = distinct !DILexicalBlock(scope: !613, file: !1, line: 302, column: 9)
!629 = !DILocation(line: 302, column: 9, scope: !627)
!630 = !DILocation(line: 302, column: 9, scope: !631)
!631 = distinct !DILexicalBlock(scope: !632, file: !1, line: 302, column: 9)
!632 = distinct !DILexicalBlock(scope: !626, file: !1, line: 302, column: 9)
!633 = !DILocation(line: 302, column: 9, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !1, line: 302, column: 9)
!635 = distinct !DILexicalBlock(scope: !636, file: !1, line: 302, column: 9)
!636 = distinct !DILexicalBlock(scope: !631, file: !1, line: 302, column: 9)
!637 = !DILocation(line: 302, column: 9, scope: !635)
!638 = !DILocation(line: 302, column: 9, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !1, line: 302, column: 9)
!640 = distinct !DILexicalBlock(scope: !632, file: !1, line: 302, column: 9)
!641 = !DILocation(line: 302, column: 9, scope: !640)
!642 = !DILocation(line: 302, column: 9, scope: !636)
!643 = !DILocation(line: 302, column: 9, scope: !610)
!644 = !DILocation(line: 312, column: 9, scope: !247)
!645 = !DILocation(line: 312, column: 9, scope: !646)
!646 = distinct !DILexicalBlock(scope: !647, file: !1, line: 312, column: 9)
!647 = distinct !DILexicalBlock(scope: !308, file: !1, line: 312, column: 9)
!648 = !DILocation(line: 312, column: 9, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !1, line: 312, column: 9)
!650 = distinct !DILexicalBlock(scope: !646, file: !1, line: 312, column: 9)
!651 = !DILocation(line: 312, column: 9, scope: !652)
!652 = distinct !DILexicalBlock(scope: !649, file: !1, line: 312, column: 9)
!653 = !DILocation(line: 312, column: 9, scope: !654)
!654 = distinct !DILexicalBlock(scope: !650, file: !1, line: 312, column: 9)
!655 = !DILocation(line: 312, column: 9, scope: !656)
!656 = distinct !DILexicalBlock(scope: !654, file: !1, line: 312, column: 9)
!657 = !DILocation(line: 312, column: 9, scope: !658)
!658 = distinct !DILexicalBlock(scope: !656, file: !1, line: 312, column: 9)
!659 = !DILocation(line: 312, column: 9, scope: !650)
!660 = !DILocation(line: 312, column: 9, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !1, line: 312, column: 9)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 312, column: 9)
!663 = distinct !DILexicalBlock(scope: !650, file: !1, line: 312, column: 9)
!664 = !DILocation(line: 312, column: 9, scope: !662)
!665 = !DILocation(line: 312, column: 9, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !1, line: 312, column: 9)
!667 = distinct !DILexicalBlock(scope: !661, file: !1, line: 312, column: 9)
!668 = !DILocation(line: 312, column: 9, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !1, line: 312, column: 9)
!670 = distinct !DILexicalBlock(scope: !671, file: !1, line: 312, column: 9)
!671 = distinct !DILexicalBlock(scope: !666, file: !1, line: 312, column: 9)
!672 = !DILocation(line: 312, column: 9, scope: !670)
!673 = !DILocation(line: 312, column: 9, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !1, line: 312, column: 9)
!675 = distinct !DILexicalBlock(scope: !667, file: !1, line: 312, column: 9)
!676 = !DILocation(line: 312, column: 9, scope: !675)
!677 = !DILocation(line: 312, column: 9, scope: !671)
!678 = !DILocation(line: 312, column: 9, scope: !647)
!679 = !DILocation(line: 318, column: 9, scope: !181)
!680 = !DILocation(line: 319, column: 9, scope: !181)
!681 = !DILocation(line: 323, column: 12, scope: !92)
!682 = !DILocation(line: 223, column: 8, scope: !92)
!683 = !DILocation(line: 349, column: 12, scope: !684)
!684 = distinct !DILexicalBlock(scope: !92, file: !1, line: 349, column: 7)
!685 = !DILocation(line: 349, column: 16, scope: !684)
!686 = !DILocation(line: 349, column: 35, scope: !684)
!687 = !{!688, !311, i64 16}
!688 = !{!"PGH", !318, i64 0, !311, i64 8, !311, i64 12, !311, i64 16, !311, i64 20, !311, i64 24, !311, i64 28, !318, i64 32, !311, i64 40, !318, i64 48, !311, i64 56, !311, i64 60, !339, i64 64, !339, i64 72, !339, i64 80, !339, i64 88, !311, i64 96, !311, i64 100, !311, i64 104, !311, i64 108, !311, i64 112, !318, i64 120, !318, i64 128, !318, i64 136}
!689 = !DILocation(line: 349, column: 24, scope: !684)
!690 = !DILocation(line: 351, column: 19, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !1, line: 351, column: 5)
!692 = distinct !DILexicalBlock(scope: !693, file: !1, line: 351, column: 5)
!693 = distinct !DILexicalBlock(scope: !684, file: !1, line: 350, column: 3)
!694 = !DILocation(line: 349, column: 7, scope: !92)
!695 = !DILocation(line: 351, column: 5, scope: !692)
!696 = !DILocation(line: 353, column: 39, scope: !697)
!697 = distinct !DILexicalBlock(scope: !691, file: !1, line: 352, column: 5)
!698 = !DILocation(line: 353, column: 26, scope: !697)
!699 = !DILocation(line: 353, column: 37, scope: !697)
!700 = !DILocation(line: 353, column: 20, scope: !697)
!701 = !DILocation(line: 353, column: 18, scope: !697)
!702 = !DILocation(line: 358, column: 1, scope: !92)
!703 = !DILocation(line: 180, column: 34, scope: !81)
!704 = !DILocation(line: 181, column: 33, scope: !81)
!705 = !DILocation(line: 182, column: 33, scope: !81)
!706 = !DILocation(line: 183, column: 33, scope: !81)
!707 = !DILocation(line: 184, column: 35, scope: !81)
!708 = !DILocation(line: 185, column: 33, scope: !81)
!709 = !DILocation(line: 186, column: 33, scope: !81)
!710 = !DILocation(line: 188, column: 11, scope: !81)
!711 = !DILocation(line: 188, column: 3, scope: !81)
