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
  ret i8* getelementptr inbounds ([94 x i8]* @.str6, i64 0, i64 0), !dbg !262
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ReductionArrays(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* nocapture readonly %dims, i32 %intype, i32 %num_inarrays, i8** %inarrays, i32 %outtype, i32 %num_outvals, i8* nocapture %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* nocapture %reduction_fn) #1 {
  %from = alloca [1 x i32], align 4
  %to = alloca [1 x i32], align 4
  %iterator = alloca [1 x i32], align 4
  %points_per_dim = alloca [1 x i32], align 4
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !143, metadata !263), !dbg !264
  tail call void @llvm.dbg.value(metadata i32 %proc, i64 0, metadata !144, metadata !263), !dbg !265
  tail call void @llvm.dbg.value(metadata i32 %num_dims, i64 0, metadata !145, metadata !263), !dbg !266
  tail call void @llvm.dbg.value(metadata i32* %dims, i64 0, metadata !146, metadata !263), !dbg !267
  tail call void @llvm.dbg.value(metadata i32 %intype, i64 0, metadata !147, metadata !263), !dbg !268
  tail call void @llvm.dbg.value(metadata i32 %num_inarrays, i64 0, metadata !148, metadata !263), !dbg !269
  tail call void @llvm.dbg.value(metadata i8** %inarrays, i64 0, metadata !149, metadata !263), !dbg !270
  tail call void @llvm.dbg.value(metadata i32 %outtype, i64 0, metadata !150, metadata !263), !dbg !271
  tail call void @llvm.dbg.value(metadata i32 %num_outvals, i64 0, metadata !151, metadata !263), !dbg !272
  tail call void @llvm.dbg.value(metadata i8* %outvals, i64 0, metadata !152, metadata !263), !dbg !273
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* %reduction_fn, i64 0, metadata !153, metadata !263), !dbg !274
  tail call void @llvm.dbg.declare(metadata [1 x i32]* %from, metadata !157, metadata !263), !dbg !275
  tail call void @llvm.dbg.declare(metadata [1 x i32]* %to, metadata !161, metadata !263), !dbg !276
  tail call void @llvm.dbg.declare(metadata [1 x i32]* %iterator, metadata !162, metadata !263), !dbg !277
  tail call void @llvm.dbg.declare(metadata [1 x i32]* %points_per_dim, metadata !163, metadata !263), !dbg !278
  %1 = getelementptr inbounds [1 x i32]* %points_per_dim, i64 0, i64 0, !dbg !279
  store i32 1, i32* %1, align 4, !dbg !280, !tbaa !281
  %2 = getelementptr inbounds [1 x i32]* %from, i64 0, i64 0, !dbg !285
  store i32 0, i32* %2, align 4, !dbg !286, !tbaa !281
  %3 = load i32* %dims, align 4, !dbg !287, !tbaa !281
  %4 = getelementptr inbounds [1 x i32]* %to, i64 0, i64 0, !dbg !288
  store i32 %3, i32* %4, align 4, !dbg !289, !tbaa !281
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !154, metadata !263), !dbg !290
  %5 = icmp sgt i32 %num_dims, 1, !dbg !291
  br i1 %5, label %.lr.ph4, label %12, !dbg !294

.lr.ph4:                                          ; preds = %0
  %6 = add i32 %num_dims, -1, !dbg !294
  br label %7, !dbg !294

; <label>:7                                       ; preds = %7, %.lr.ph4
  %indvars.iv6 = phi i64 [ 1, %.lr.ph4 ], [ %indvars.iv.next7, %7 ]
  %8 = phi i32 [ %3, %.lr.ph4 ], [ %11, %7 ], !dbg !295
  %9 = getelementptr inbounds i32* %dims, i64 %indvars.iv6, !dbg !295
  %10 = load i32* %9, align 4, !dbg !295, !tbaa !281
  %11 = mul nsw i32 %8, %10, !dbg !297
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !294
  %lftr.wideiv8 = trunc i64 %indvars.iv6 to i32, !dbg !294
  %exitcond9 = icmp eq i32 %lftr.wideiv8, %6, !dbg !294
  br i1 %exitcond9, label %._crit_edge5, label %7, !dbg !294

._crit_edge5:                                     ; preds = %7
  store i32 %11, i32* %4, align 4, !dbg !297, !tbaa !281
  br label %12, !dbg !294

; <label>:12                                      ; preds = %._crit_edge5, %0
  %13 = phi i32 [ %11, %._crit_edge5 ], [ %3, %0 ]
  %14 = icmp eq i32 %num_outvals, 1, !dbg !298
  br i1 %14, label %20, label %15, !dbg !300

; <label>:15                                      ; preds = %12
  %16 = icmp eq i32 %13, %num_outvals, !dbg !301
  br i1 %16, label %19, label %17, !dbg !304

; <label>:17                                      ; preds = %15
  %18 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 150, i8* getelementptr inbounds ([82 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([121 x i8]* @.str2, i64 0, i64 0), i32 %num_dims, i32 %13, i32 %num_outvals) #6, !dbg !305
  br label %50, !dbg !307

; <label>:19                                      ; preds = %15
  store i32 1, i32* %4, align 4, !dbg !308, !tbaa !281
  br label %20, !dbg !309

; <label>:20                                      ; preds = %12, %19
  %21 = phi i32 [ %13, %12 ], [ 1, %19 ]
  %22 = load i32 (%struct.cGH*)** @CCTK_nProcs, align 8, !dbg !310, !tbaa !311
  %23 = tail call i32 %22(%struct.cGH* %GH) #6, !dbg !310
  %24 = mul nsw i32 %23, %21, !dbg !313
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !155, metadata !263), !dbg !314
  %25 = sext i32 %num_inarrays to i64, !dbg !315
  %26 = shl nsw i64 %25, 2, !dbg !316
  %27 = tail call i8* @malloc(i64 %26) #6, !dbg !317
  %28 = bitcast i8* %27 to i32*, !dbg !318
  tail call void @llvm.dbg.value(metadata i32* %28, i64 0, metadata !164, metadata !263), !dbg !319
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !154, metadata !263), !dbg !290
  %29 = icmp sgt i32 %num_inarrays, 0, !dbg !320
  br i1 %29, label %.lr.ph, label %._crit_edge, !dbg !323

.lr.ph:                                           ; preds = %20
  %30 = add i32 %num_inarrays, -1, !dbg !323
  br label %31, !dbg !323

; <label>:31                                      ; preds = %31, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %31 ]
  %32 = getelementptr inbounds i32* %28, i64 %indvars.iv, !dbg !324
  store i32 %intype, i32* %32, align 4, !dbg !326, !tbaa !281
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !323
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !323
  %exitcond = icmp eq i32 %lftr.wideiv, %30, !dbg !323
  br i1 %exitcond, label %._crit_edge, label %31, !dbg !323

._crit_edge:                                      ; preds = %31, %20
  %33 = sext i32 %num_outvals to i64, !dbg !327
  %34 = shl nsw i64 %33, 3, !dbg !328
  %35 = tail call i8* @malloc(i64 %34) #6, !dbg !329
  %36 = bitcast i8* %35 to double*, !dbg !330
  tail call void @llvm.dbg.value(metadata double* %36, i64 0, metadata !165, metadata !263), !dbg !331
  %37 = getelementptr inbounds [1 x i32]* %iterator, i64 0, i64 0, !dbg !332
  %38 = call i32 %reduction_fn(%struct.cGH* %GH, i32 %proc, i32 %num_dims, i32* %2, i32* %4, i32* %37, i32* %1, i32 %24, i32 %num_inarrays, i32* %28, i8** %inarrays, i32 %num_outvals, double* %36) #6, !dbg !333
  call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !156, metadata !263), !dbg !334
  %39 = icmp eq i32 %38, 0, !dbg !335
  br i1 %39, label %40, label %49, !dbg !337

; <label>:40                                      ; preds = %._crit_edge
  %41 = icmp slt i32 %proc, 0, !dbg !338
  br i1 %41, label %46, label %42, !dbg !339

; <label>:42                                      ; preds = %40
  %43 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !340, !tbaa !311
  %44 = call i32 %43(%struct.cGH* %GH) #6, !dbg !340
  %45 = icmp eq i32 %44, %proc, !dbg !341
  br i1 %45, label %46, label %49, !dbg !342

; <label>:46                                      ; preds = %42, %40
  %47 = mul nsw i32 %num_outvals, %num_inarrays, !dbg !343
  %48 = call fastcc i32 @copy_real_to_outtype(i32 %47, double* %36, i32 %outtype, i8* %outvals) #7, !dbg !345
  call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !156, metadata !263), !dbg !334
  br label %49, !dbg !346

; <label>:49                                      ; preds = %46, %42, %._crit_edge
  %retval.0 = phi i32 [ %48, %46 ], [ 0, %42 ], [ %38, %._crit_edge ]
  call void @free(i8* %27) #7, !dbg !347
  call void @free(i8* %35) #7, !dbg !348
  br label %50, !dbg !349

; <label>:50                                      ; preds = %49, %17
  %.0 = phi i32 [ -1, %17 ], [ %retval.0, %49 ]
  ret i32 %.0, !dbg !350
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @copy_real_to_outtype(i32 %num_elems, double* nocapture readonly %inarray, i32 %outtype, i8* nocapture %outarray) #1 {
  tail call void @llvm.dbg.value(metadata i32 %num_elems, i64 0, metadata !222, metadata !263), !dbg !351
  tail call void @llvm.dbg.value(metadata double* %inarray, i64 0, metadata !223, metadata !263), !dbg !352
  tail call void @llvm.dbg.value(metadata i32 %outtype, i64 0, metadata !224, metadata !263), !dbg !353
  tail call void @llvm.dbg.value(metadata i8* %outarray, i64 0, metadata !225, metadata !263), !dbg !354
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !227, metadata !263), !dbg !355
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
  ], !dbg !356

.preheader:                                       ; preds = %0
  %1 = icmp sgt i32 %num_elems, 0, !dbg !357
  br i1 %1, label %.lr.ph, label %.loopexit, !dbg !360

.lr.ph:                                           ; preds = %.preheader
  %2 = add i32 %num_elems, -1, !dbg !360
  br label %3, !dbg !360

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds double* %inarray, i64 %indvars.iv, !dbg !361
  %5 = load double* %4, align 8, !dbg !361, !tbaa !363
  %6 = fptoui double %5 to i8, !dbg !365
  %7 = getelementptr inbounds i8* %outarray, i64 %indvars.iv, !dbg !366
  store i8 %6, i8* %7, align 1, !dbg !367, !tbaa !368
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !360
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !360
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !360
  br i1 %exitcond, label %.loopexit, label %3, !dbg !360

; <label>:8                                       ; preds = %0
  %9 = bitcast i8* %outarray to i32*, !dbg !369
  tail call void @llvm.dbg.value(metadata i32* %9, i64 0, metadata !232, metadata !263), !dbg !370
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !226, metadata !263), !dbg !371
  %10 = icmp sgt i32 %num_elems, 0, !dbg !372
  br i1 %10, label %.lr.ph19, label %.loopexit, !dbg !375

.lr.ph19:                                         ; preds = %8
  %11 = add i32 %num_elems, -1, !dbg !375
  br label %12, !dbg !375

; <label>:12                                      ; preds = %12, %.lr.ph19
  %indvars.iv34 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next35, %12 ]
  %13 = getelementptr inbounds double* %inarray, i64 %indvars.iv34, !dbg !376
  %14 = load double* %13, align 8, !dbg !376, !tbaa !363
  %15 = fptosi double %14 to i32, !dbg !378
  %16 = getelementptr inbounds i32* %9, i64 %indvars.iv34, !dbg !379
  store i32 %15, i32* %16, align 4, !dbg !380, !tbaa !281
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1, !dbg !375
  %lftr.wideiv36 = trunc i64 %indvars.iv34 to i32, !dbg !375
  %exitcond37 = icmp eq i32 %lftr.wideiv36, %11, !dbg !375
  br i1 %exitcond37, label %.loopexit, label %12, !dbg !375

; <label>:17                                      ; preds = %0
  %18 = bitcast i8* %outarray to i16*, !dbg !381
  tail call void @llvm.dbg.value(metadata i16* %18, i64 0, metadata !235, metadata !263), !dbg !382
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !226, metadata !263), !dbg !371
  %19 = icmp sgt i32 %num_elems, 0, !dbg !383
  br i1 %19, label %.lr.ph21, label %.loopexit, !dbg !386

.lr.ph21:                                         ; preds = %17
  %20 = add i32 %num_elems, -1, !dbg !386
  br label %21, !dbg !386

; <label>:21                                      ; preds = %21, %.lr.ph21
  %indvars.iv38 = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next39, %21 ]
  %22 = getelementptr inbounds double* %inarray, i64 %indvars.iv38, !dbg !387
  %23 = load double* %22, align 8, !dbg !387, !tbaa !363
  %24 = fptosi double %23 to i16, !dbg !389
  %25 = getelementptr inbounds i16* %18, i64 %indvars.iv38, !dbg !390
  store i16 %24, i16* %25, align 2, !dbg !391, !tbaa !392
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1, !dbg !386
  %lftr.wideiv40 = trunc i64 %indvars.iv38 to i32, !dbg !386
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %20, !dbg !386
  br i1 %exitcond41, label %.loopexit, label %21, !dbg !386

; <label>:26                                      ; preds = %0
  %27 = bitcast i8* %outarray to i32*, !dbg !394
  tail call void @llvm.dbg.value(metadata i32* %27, i64 0, metadata !238, metadata !263), !dbg !395
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !226, metadata !263), !dbg !371
  %28 = icmp sgt i32 %num_elems, 0, !dbg !396
  br i1 %28, label %.lr.ph23, label %.loopexit, !dbg !399

.lr.ph23:                                         ; preds = %26
  %29 = add i32 %num_elems, -1, !dbg !399
  br label %30, !dbg !399

; <label>:30                                      ; preds = %30, %.lr.ph23
  %indvars.iv42 = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next43, %30 ]
  %31 = getelementptr inbounds double* %inarray, i64 %indvars.iv42, !dbg !400
  %32 = load double* %31, align 8, !dbg !400, !tbaa !363
  %33 = fptosi double %32 to i32, !dbg !402
  %34 = getelementptr inbounds i32* %27, i64 %indvars.iv42, !dbg !403
  store i32 %33, i32* %34, align 4, !dbg !404, !tbaa !281
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1, !dbg !399
  %lftr.wideiv44 = trunc i64 %indvars.iv42 to i32, !dbg !399
  %exitcond45 = icmp eq i32 %lftr.wideiv44, %29, !dbg !399
  br i1 %exitcond45, label %.loopexit, label %30, !dbg !399

; <label>:35                                      ; preds = %0
  %36 = bitcast i8* %outarray to i64*, !dbg !405
  tail call void @llvm.dbg.value(metadata i64* %36, i64 0, metadata !241, metadata !263), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !226, metadata !263), !dbg !371
  %37 = icmp sgt i32 %num_elems, 0, !dbg !407
  br i1 %37, label %.lr.ph25, label %.loopexit, !dbg !410

.lr.ph25:                                         ; preds = %35
  %38 = add i32 %num_elems, -1, !dbg !410
  br label %39, !dbg !410

; <label>:39                                      ; preds = %39, %.lr.ph25
  %indvars.iv46 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next47, %39 ]
  %40 = getelementptr inbounds double* %inarray, i64 %indvars.iv46, !dbg !411
  %41 = load double* %40, align 8, !dbg !411, !tbaa !363
  %42 = fptosi double %41 to i64, !dbg !413
  %43 = getelementptr inbounds i64* %36, i64 %indvars.iv46, !dbg !414
  store i64 %42, i64* %43, align 8, !dbg !415, !tbaa !416
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !410
  %lftr.wideiv48 = trunc i64 %indvars.iv46 to i32, !dbg !410
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %38, !dbg !410
  br i1 %exitcond49, label %.loopexit, label %39, !dbg !410

; <label>:44                                      ; preds = %0
  %45 = bitcast i8* %outarray to double*, !dbg !418
  tail call void @llvm.dbg.value(metadata double* %45, i64 0, metadata !244, metadata !263), !dbg !419
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !226, metadata !263), !dbg !371
  %46 = icmp sgt i32 %num_elems, 0, !dbg !420
  br i1 %46, label %.lr.ph27, label %.loopexit, !dbg !423

.lr.ph27:                                         ; preds = %44
  %47 = add i32 %num_elems, -1, !dbg !423
  br label %48, !dbg !423

; <label>:48                                      ; preds = %48, %.lr.ph27
  %indvars.iv50 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next51, %48 ]
  %49 = getelementptr inbounds double* %inarray, i64 %indvars.iv50, !dbg !424
  %50 = bitcast double* %49 to i64*, !dbg !424
  %51 = load i64* %50, align 8, !dbg !424, !tbaa !363
  %52 = getelementptr inbounds double* %45, i64 %indvars.iv50, !dbg !426
  %53 = bitcast double* %52 to i64*, !dbg !427
  store i64 %51, i64* %53, align 8, !dbg !427, !tbaa !363
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1, !dbg !423
  %lftr.wideiv52 = trunc i64 %indvars.iv50 to i32, !dbg !423
  %exitcond53 = icmp eq i32 %lftr.wideiv52, %47, !dbg !423
  br i1 %exitcond53, label %.loopexit, label %48, !dbg !423

; <label>:54                                      ; preds = %0
  %55 = bitcast i8* %outarray to float*, !dbg !428
  tail call void @llvm.dbg.value(metadata float* %55, i64 0, metadata !247, metadata !263), !dbg !429
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !226, metadata !263), !dbg !371
  %56 = icmp sgt i32 %num_elems, 0, !dbg !430
  br i1 %56, label %.lr.ph29, label %.loopexit, !dbg !433

.lr.ph29:                                         ; preds = %54
  %57 = add i32 %num_elems, -1, !dbg !433
  br label %58, !dbg !433

; <label>:58                                      ; preds = %58, %.lr.ph29
  %indvars.iv54 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next55, %58 ]
  %59 = getelementptr inbounds double* %inarray, i64 %indvars.iv54, !dbg !434
  %60 = load double* %59, align 8, !dbg !434, !tbaa !363
  %61 = fptrunc double %60 to float, !dbg !436
  %62 = getelementptr inbounds float* %55, i64 %indvars.iv54, !dbg !437
  store float %61, float* %62, align 4, !dbg !438, !tbaa !439
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1, !dbg !433
  %lftr.wideiv56 = trunc i64 %indvars.iv54 to i32, !dbg !433
  %exitcond57 = icmp eq i32 %lftr.wideiv56, %57, !dbg !433
  br i1 %exitcond57, label %.loopexit, label %58, !dbg !433

; <label>:63                                      ; preds = %0
  %64 = bitcast i8* %outarray to double*, !dbg !441
  tail call void @llvm.dbg.value(metadata double* %64, i64 0, metadata !250, metadata !263), !dbg !442
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !226, metadata !263), !dbg !371
  %65 = icmp sgt i32 %num_elems, 0, !dbg !443
  br i1 %65, label %.lr.ph31, label %.loopexit, !dbg !446

.lr.ph31:                                         ; preds = %63
  %66 = add i32 %num_elems, -1, !dbg !446
  br label %67, !dbg !446

; <label>:67                                      ; preds = %67, %.lr.ph31
  %indvars.iv58 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next59, %67 ]
  %68 = getelementptr inbounds double* %inarray, i64 %indvars.iv58, !dbg !447
  %69 = bitcast double* %68 to i64*, !dbg !447
  %70 = load i64* %69, align 8, !dbg !447, !tbaa !363
  %71 = getelementptr inbounds double* %64, i64 %indvars.iv58, !dbg !449
  %72 = bitcast double* %71 to i64*, !dbg !450
  store i64 %70, i64* %72, align 8, !dbg !450, !tbaa !363
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1, !dbg !446
  %lftr.wideiv60 = trunc i64 %indvars.iv58 to i32, !dbg !446
  %exitcond61 = icmp eq i32 %lftr.wideiv60, %66, !dbg !446
  br i1 %exitcond61, label %.loopexit, label %67, !dbg !446

; <label>:73                                      ; preds = %0
  %74 = bitcast i8* %outarray to x86_fp80*, !dbg !451
  tail call void @llvm.dbg.value(metadata x86_fp80* %74, i64 0, metadata !253, metadata !263), !dbg !452
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !226, metadata !263), !dbg !371
  %75 = icmp sgt i32 %num_elems, 0, !dbg !453
  br i1 %75, label %.lr.ph33, label %.loopexit, !dbg !456

.lr.ph33:                                         ; preds = %73
  %76 = add i32 %num_elems, -1, !dbg !456
  br label %77, !dbg !456

; <label>:77                                      ; preds = %77, %.lr.ph33
  %indvars.iv62 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next63, %77 ]
  %78 = getelementptr inbounds double* %inarray, i64 %indvars.iv62, !dbg !457
  %79 = load double* %78, align 8, !dbg !457, !tbaa !363
  %80 = fpext double %79 to x86_fp80, !dbg !459
  %81 = getelementptr inbounds x86_fp80* %74, i64 %indvars.iv62, !dbg !460
  store x86_fp80 %80, x86_fp80* %81, align 16, !dbg !461, !tbaa !462
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1, !dbg !456
  %lftr.wideiv64 = trunc i64 %indvars.iv62 to i32, !dbg !456
  %exitcond65 = icmp eq i32 %lftr.wideiv64, %76, !dbg !456
  br i1 %exitcond65, label %.loopexit, label %77, !dbg !456

; <label>:82                                      ; preds = %0
  %83 = tail call i32 @CCTK_Warn(i32 1, i32 655, i8* getelementptr inbounds ([82 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !464
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !227, metadata !263), !dbg !355
  br label %.loopexit

.loopexit:                                        ; preds = %77, %67, %58, %48, %39, %30, %21, %12, %3, %73, %63, %54, %44, %35, %26, %17, %8, %.preheader, %82
  %retval.0 = phi i32 [ -1, %82 ], [ 0, %.preheader ], [ 0, %8 ], [ 0, %17 ], [ 0, %26 ], [ 0, %35 ], [ 0, %44 ], [ 0, %54 ], [ 0, %63 ], [ 0, %73 ], [ 0, %3 ], [ 0, %12 ], [ 0, %21 ], [ 0, %30 ], [ 0, %39 ], [ 0, %48 ], [ 0, %58 ], [ 0, %67 ], [ 0, %77 ]
  ret i32 %retval.0, !dbg !466
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ReductionGVs(%struct.cGH* %GH, i32 %proc, i32 %num_invars, i32* nocapture readonly %invars, i32 %outtype, i32 %num_outvals, i8* nocapture %outvals, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* nocapture %reduction_fn) #1 {
  %from.i = alloca i32, align 4
  %to.i = alloca i32, align 4
  %iterator.i = alloca i32, align 4
  %points_per_dim.i = alloca i32, align 4
  %type.i = alloca i32, align 4
  %data.i = alloca i8*, align 8
  %result = alloca double, align 8
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !170, metadata !263), !dbg !467
  tail call void @llvm.dbg.value(metadata i32 %proc, i64 0, metadata !171, metadata !263), !dbg !468
  tail call void @llvm.dbg.value(metadata i32 %num_invars, i64 0, metadata !172, metadata !263), !dbg !469
  tail call void @llvm.dbg.value(metadata i32* %invars, i64 0, metadata !173, metadata !263), !dbg !470
  tail call void @llvm.dbg.value(metadata i32 %outtype, i64 0, metadata !174, metadata !263), !dbg !471
  tail call void @llvm.dbg.value(metadata i32 %num_outvals, i64 0, metadata !175, metadata !263), !dbg !472
  tail call void @llvm.dbg.value(metadata i8* %outvals, i64 0, metadata !176, metadata !263), !dbg !473
  tail call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* %reduction_fn, i64 0, metadata !177, metadata !263), !dbg !474
  %1 = icmp eq i32 %num_outvals, 1, !dbg !475
  br i1 %1, label %4, label %2, !dbg !477

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_Warn(i32 1, i32 280, i8* getelementptr inbounds ([82 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !478
  br label %.loopexit, !dbg !480

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @CCTK_VarTypeSize(i32 %outtype) #6, !dbg !481
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !180, metadata !263), !dbg !482
  %6 = icmp slt i32 %5, 1, !dbg !483
  br i1 %6, label %7, label %9, !dbg !485

; <label>:7                                       ; preds = %4
  %8 = tail call i32 @CCTK_Warn(i32 1, i32 287, i8* getelementptr inbounds ([82 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !486
  br label %.loopexit, !dbg !488

; <label>:9                                       ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !182, metadata !263), !dbg !489
  %10 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !490, !tbaa !311
  %11 = tail call i32 %10(%struct.cGH* %GH) #6, !dbg !490
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !179, metadata !263), !dbg !491
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !178, metadata !263), !dbg !492
  %12 = icmp sgt i32 %num_invars, 0, !dbg !493
  br i1 %12, label %.lr.ph, label %.loopexit, !dbg !496

.lr.ph:                                           ; preds = %9
  %13 = bitcast i32* %from.i to i8*, !dbg !497
  %14 = bitcast i32* %to.i to i8*, !dbg !497
  %15 = bitcast i32* %iterator.i to i8*, !dbg !497
  %16 = bitcast i32* %points_per_dim.i to i8*, !dbg !497
  %17 = bitcast i32* %type.i to i8*, !dbg !497
  %18 = bitcast i8** %data.i to i8*, !dbg !497
  %19 = bitcast i8** %data.i to i64*, !dbg !501
  %20 = sext i32 %5 to i64, !dbg !496
  %21 = add i32 %num_invars, -1, !dbg !496
  br label %22, !dbg !496

; <label>:22                                      ; preds = %133, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %133 ]
  %retval.04 = phi i32 [ 0, %.lr.ph ], [ %134, %133 ]
  %23 = getelementptr inbounds i32* %invars, i64 %indvars.iv, !dbg !502
  %24 = load i32* %23, align 4, !dbg !502, !tbaa !281
  %25 = call i32 @CCTK_GroupTypeFromVarI(i32 %24) #6, !dbg !503
  switch i32 %25, label %.thread [
    i32 2, label %26
    i32 3, label %26
    i32 1, label %115
  ], !dbg !504

; <label>:26                                      ; preds = %22, %22
  %27 = load i32* %23, align 4, !dbg !505, !tbaa !281
  call void @llvm.dbg.value(metadata double* %result, i64 0, metadata !183, metadata !263), !dbg !506
  call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !188, metadata !263) #5, !dbg !507
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !189, metadata !263) #5, !dbg !509
  call void @llvm.dbg.value(metadata i32 %proc, i64 0, metadata !190, metadata !263) #5, !dbg !510
  call void @llvm.dbg.value(metadata double* %result, i64 0, metadata !191, metadata !263) #5, !dbg !511
  call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* %reduction_fn, i64 0, metadata !192, metadata !263) #5, !dbg !512
  %28 = sext i32 %27 to i64, !dbg !513
  %29 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6, !dbg !514
  %30 = getelementptr inbounds %struct.PGH* %29, i64 0, i32 7, !dbg !515
  %31 = bitcast i8**** %30 to %struct.PGA****, !dbg !515
  %32 = load %struct.PGA**** %31, align 8, !dbg !515, !tbaa !516
  %33 = getelementptr inbounds %struct.PGA*** %32, i64 %28, !dbg !513
  %34 = load %struct.PGA*** %33, align 8, !dbg !513, !tbaa !311
  %35 = load %struct.PGA** %34, align 8, !dbg !513, !tbaa !311
  call void @llvm.dbg.value(metadata %struct.PGA* %35, i64 0, metadata !198, metadata !263) #5, !dbg !518
  %36 = getelementptr inbounds %struct.PGA* %35, i64 0, i32 11, !dbg !519
  %37 = load %struct.PConnectivity** %36, align 8, !dbg !519, !tbaa !520
  %38 = getelementptr inbounds %struct.PConnectivity* %37, i64 0, i32 0, !dbg !522
  %39 = load i32* %38, align 4, !dbg !522, !tbaa !523
  %40 = shl nsw i32 %39, 2, !dbg !525
  %41 = sext i32 %40 to i64, !dbg !526
  %42 = shl nsw i64 %41, 2, !dbg !527
  %43 = call i8* @malloc(i64 %42) #6, !dbg !528
  %44 = bitcast i8* %43 to i32*, !dbg !529
  call void @llvm.dbg.value(metadata i32* %44, i64 0, metadata !199, metadata !263) #5, !dbg !530
  %45 = load %struct.PConnectivity** %36, align 8, !dbg !531, !tbaa !520
  %46 = getelementptr inbounds %struct.PConnectivity* %45, i64 0, i32 0, !dbg !532
  %47 = load i32* %46, align 4, !dbg !532, !tbaa !523
  %48 = sext i32 %47 to i64, !dbg !533
  %49 = getelementptr inbounds i32* %44, i64 %48, !dbg !533
  call void @llvm.dbg.value(metadata i32* %49, i64 0, metadata !200, metadata !263) #5, !dbg !534
  %50 = shl nsw i32 %47, 1, !dbg !535
  %51 = sext i32 %50 to i64, !dbg !536
  %52 = getelementptr inbounds i32* %44, i64 %51, !dbg !536
  call void @llvm.dbg.value(metadata i32* %52, i64 0, metadata !201, metadata !263) #5, !dbg !537
  %53 = mul nsw i32 %47, 3, !dbg !538
  %54 = sext i32 %53 to i64, !dbg !539
  %55 = getelementptr inbounds i32* %44, i64 %54, !dbg !539
  call void @llvm.dbg.value(metadata i32* %55, i64 0, metadata !202, metadata !263) #5, !dbg !540
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !195, metadata !263) #5, !dbg !541
  store i32 1, i32* %55, align 4, !dbg !542, !tbaa !281
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !193, metadata !263) #5, !dbg !543
  %56 = load i32* %46, align 4, !dbg !544, !tbaa !523
  %57 = icmp sgt i32 %56, 0, !dbg !547
  br i1 %57, label %.lr.ph.i, label %PUGH_ReductionGA.exit, !dbg !548

.lr.ph.i:                                         ; preds = %26
  %58 = getelementptr inbounds %struct.PGA* %35, i64 0, i32 6, !dbg !549
  %59 = getelementptr inbounds %struct.PGA* %35, i64 0, i32 10, !dbg !551
  br label %60, !dbg !548

; <label>:60                                      ; preds = %107, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %107 ], !dbg !552
  %num_points.03.i = phi i32 [ 1, %.lr.ph.i ], [ %95, %107 ], !dbg !552
  %61 = load i32* %58, align 4, !dbg !549, !tbaa !553
  %62 = trunc i64 %indvars.iv.i to i32, !dbg !554
  %63 = call i32 @CCTK_StaggerDirIndex(i32 %62, i32 %61) #6, !dbg !554
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !194, metadata !263) #5, !dbg !555
  %64 = sext i32 %63 to i64, !dbg !556
  %65 = load %struct.PGExtras** %59, align 8, !dbg !551, !tbaa !557
  %66 = getelementptr inbounds %struct.PGExtras* %65, i64 0, i32 13, i64 %64, i64 0, !dbg !556
  %67 = load i32** %66, align 8, !dbg !556, !tbaa !311
  %68 = getelementptr inbounds i32* %67, i64 %indvars.iv.i, !dbg !556
  %69 = load i32* %68, align 4, !dbg !556, !tbaa !281
  %70 = getelementptr inbounds i32* %44, i64 %indvars.iv.i, !dbg !558
  store i32 %69, i32* %70, align 4, !dbg !559, !tbaa !281
  %71 = getelementptr inbounds %struct.PGExtras* %65, i64 0, i32 13, i64 %64, i64 1, !dbg !560
  %72 = load i32** %71, align 8, !dbg !560, !tbaa !311
  %73 = getelementptr inbounds i32* %72, i64 %indvars.iv.i, !dbg !560
  %74 = load i32* %73, align 4, !dbg !560, !tbaa !281
  %.sum.i = add nsw i64 %indvars.iv.i, %48, !dbg !561
  %75 = getelementptr inbounds i32* %44, i64 %.sum.i, !dbg !561
  store i32 %74, i32* %75, align 4, !dbg !562, !tbaa !281
  %76 = getelementptr inbounds %struct.PGExtras* %65, i64 0, i32 1, !dbg !563
  %77 = load i32** %76, align 8, !dbg !563, !tbaa !564
  %78 = getelementptr inbounds i32* %77, i64 %indvars.iv.i, !dbg !566
  %79 = load i32* %78, align 4, !dbg !566, !tbaa !281
  call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !196, metadata !263) #5, !dbg !567
  %80 = load %struct.PConnectivity** %36, align 8, !dbg !568, !tbaa !520
  %81 = getelementptr inbounds %struct.PConnectivity* %80, i64 0, i32 3, !dbg !570
  %82 = load i32** %81, align 8, !dbg !570, !tbaa !571
  %83 = getelementptr inbounds i32* %82, i64 %indvars.iv.i, !dbg !572
  %84 = load i32* %83, align 4, !dbg !572, !tbaa !281
  %85 = icmp eq i32 %84, 0, !dbg !572
  br i1 %85, label %93, label %86, !dbg !573

; <label>:86                                      ; preds = %60
  %87 = getelementptr inbounds %struct.PGExtras* %65, i64 0, i32 12, !dbg !574
  %88 = load i32** %87, align 8, !dbg !574, !tbaa !576
  %89 = getelementptr inbounds i32* %88, i64 %indvars.iv.i, !dbg !577
  %90 = load i32* %89, align 4, !dbg !577, !tbaa !281
  %91 = shl nsw i32 %90, 1, !dbg !578
  %92 = sub nsw i32 %79, %91, !dbg !579
  call void @llvm.dbg.value(metadata i32 %92, i64 0, metadata !196, metadata !263) #5, !dbg !567
  br label %93, !dbg !580

; <label>:93                                      ; preds = %86, %60
  %dir_points.0.i = phi i32 [ %92, %86 ], [ %79, %60 ], !dbg !552
  %not..i = icmp ne i32 %63, 0, !dbg !581
  %94 = sext i1 %not..i to i32, !dbg !581
  %dir_points.0..i = add nsw i32 %dir_points.0.i, %94, !dbg !581
  %95 = mul nsw i32 %dir_points.0..i, %num_points.03.i, !dbg !582
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !195, metadata !263) #5, !dbg !541
  %96 = icmp sgt i64 %indvars.iv.i, 0, !dbg !583
  br i1 %96, label %97, label %107, !dbg !585

; <label>:97                                      ; preds = %93
  %98 = add nsw i64 %indvars.iv.i, -1, !dbg !586
  %.sum1.i = add nsw i64 %98, %54, !dbg !588
  %99 = getelementptr inbounds i32* %44, i64 %.sum1.i, !dbg !588
  %100 = load i32* %99, align 4, !dbg !588, !tbaa !281
  %101 = getelementptr inbounds %struct.PGExtras* %65, i64 0, i32 6, !dbg !589
  %102 = load i32** %101, align 8, !dbg !589, !tbaa !590
  %103 = getelementptr inbounds i32* %102, i64 %98, !dbg !591
  %104 = load i32* %103, align 4, !dbg !591, !tbaa !281
  %105 = mul nsw i32 %104, %100, !dbg !592
  %.sum2.i = add nsw i64 %indvars.iv.i, %54, !dbg !593
  %106 = getelementptr inbounds i32* %44, i64 %.sum2.i, !dbg !593
  store i32 %105, i32* %106, align 4, !dbg !594, !tbaa !281
  br label %107, !dbg !595

; <label>:107                                     ; preds = %97, %93
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !548
  %108 = getelementptr inbounds %struct.PConnectivity* %80, i64 0, i32 0, !dbg !544
  %109 = load i32* %108, align 4, !dbg !544, !tbaa !523
  %110 = sext i32 %109 to i64, !dbg !547
  %111 = icmp slt i64 %indvars.iv.next.i, %110, !dbg !547
  br i1 %111, label %60, label %PUGH_ReductionGA.exit, !dbg !548

PUGH_ReductionGA.exit:                            ; preds = %107, %26
  %.lcssa.i = phi i32 [ %56, %26 ], [ %109, %107 ], !dbg !552
  %num_points.0.lcssa.i = phi i32 [ 1, %26 ], [ %95, %107 ], !dbg !552
  %112 = getelementptr inbounds %struct.PGA* %35, i64 0, i32 9, !dbg !596
  %113 = getelementptr inbounds %struct.PGA* %35, i64 0, i32 4, !dbg !597
  %114 = call i32 %reduction_fn(%struct.cGH* %GH, i32 %proc, i32 %.lcssa.i, i32* %44, i32* %49, i32* %52, i32* %55, i32 %num_points.0.lcssa.i, i32 1, i32* %112, i8** %113, i32 1, double* %result) #6, !dbg !598
  call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !197, metadata !263) #5, !dbg !599
  call void @free(i8* %43) #6, !dbg !600
  call void @llvm.dbg.value(metadata i32 %114, i64 0, metadata !181, metadata !263), !dbg !601
  br label %128, !dbg !602

; <label>:115                                     ; preds = %22
  %116 = load i32* %23, align 4, !dbg !603, !tbaa !281
  call void @llvm.dbg.value(metadata double* %result, i64 0, metadata !183, metadata !263), !dbg !506
  call void @llvm.lifetime.start(i64 4, i8* %13), !dbg !497
  call void @llvm.lifetime.start(i64 4, i8* %14), !dbg !497
  call void @llvm.lifetime.start(i64 4, i8* %15), !dbg !497
  call void @llvm.lifetime.start(i64 4, i8* %16), !dbg !497
  call void @llvm.lifetime.start(i64 4, i8* %17), !dbg !497
  call void @llvm.lifetime.start(i64 8, i8* %18), !dbg !497
  call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !205, metadata !263) #5, !dbg !497
  call void @llvm.dbg.value(metadata i32 %116, i64 0, metadata !206, metadata !263) #5, !dbg !604
  call void @llvm.dbg.value(metadata i32 %proc, i64 0, metadata !207, metadata !263) #5, !dbg !605
  call void @llvm.dbg.value(metadata double* %result, i64 0, metadata !208, metadata !263) #5, !dbg !606
  call void @llvm.dbg.value(metadata i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)* %reduction_fn, i64 0, metadata !209, metadata !263) #5, !dbg !607
  %117 = sext i32 %116 to i64, !dbg !608
  %118 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6, !dbg !609
  %119 = getelementptr inbounds %struct.PGH* %118, i64 0, i32 7, !dbg !610
  %120 = load i8**** %119, align 8, !dbg !610, !tbaa !516
  %121 = getelementptr inbounds i8*** %120, i64 %117, !dbg !608
  %122 = bitcast i8*** %121 to i64**, !dbg !608
  %123 = load i64** %122, align 8, !dbg !608, !tbaa !311
  %124 = load i64* %123, align 8, !dbg !608, !tbaa !311
  store i64 %124, i64* %19, align 8, !dbg !501, !tbaa !311
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !212, metadata !263) #5, !dbg !611
  store i32 0, i32* %from.i, align 4, !dbg !612, !tbaa !281
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !213, metadata !263) #5, !dbg !613
  store i32 1, i32* %to.i, align 4, !dbg !614, !tbaa !281
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !214, metadata !263) #5, !dbg !615
  store i32 1, i32* %iterator.i, align 4, !dbg !616, !tbaa !281
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !215, metadata !263) #5, !dbg !617
  store i32 1, i32* %points_per_dim.i, align 4, !dbg !618, !tbaa !281
  %125 = call i32 @CCTK_VarTypeI(i32 %116) #6, !dbg !619
  call void @llvm.dbg.value(metadata i32 %125, i64 0, metadata !216, metadata !263) #5, !dbg !620
  store i32 %125, i32* %type.i, align 4, !dbg !621, !tbaa !281
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !211, metadata !263) #5, !dbg !622
  call void @llvm.dbg.value(metadata i32* %from.i, i64 0, metadata !212, metadata !263) #5, !dbg !611
  call void @llvm.dbg.value(metadata i32* %to.i, i64 0, metadata !213, metadata !263) #5, !dbg !613
  call void @llvm.dbg.value(metadata i32* %iterator.i, i64 0, metadata !214, metadata !263) #5, !dbg !615
  call void @llvm.dbg.value(metadata i32* %points_per_dim.i, i64 0, metadata !215, metadata !263) #5, !dbg !617
  call void @llvm.dbg.value(metadata i32* %type.i, i64 0, metadata !216, metadata !263) #5, !dbg !620
  call void @llvm.dbg.value(metadata i8** %data.i, i64 0, metadata !217, metadata !263) #5, !dbg !623
  %126 = call i32 %reduction_fn(%struct.cGH* %GH, i32 %proc, i32 1, i32* %from.i, i32* %to.i, i32* %iterator.i, i32* %points_per_dim.i, i32 1, i32 1, i32* %type.i, i8** %data.i, i32 1, double* %result) #6, !dbg !624
  call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !210, metadata !263) #5, !dbg !625
  call void @llvm.lifetime.end(i64 4, i8* %13), !dbg !626
  call void @llvm.lifetime.end(i64 4, i8* %14), !dbg !626
  call void @llvm.lifetime.end(i64 4, i8* %15), !dbg !626
  call void @llvm.lifetime.end(i64 4, i8* %16), !dbg !626
  call void @llvm.lifetime.end(i64 4, i8* %17), !dbg !626
  call void @llvm.lifetime.end(i64 8, i8* %18), !dbg !626
  call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !181, metadata !263), !dbg !601
  br label %128, !dbg !627

.thread:                                          ; preds = %22
  %127 = call i32 @CCTK_Warn(i32 1, i32 310, i8* getelementptr inbounds ([82 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str5, i64 0, i64 0)) #6, !dbg !628
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !181, metadata !263), !dbg !601
  br label %133, !dbg !629

; <label>:128                                     ; preds = %115, %PUGH_ReductionGA.exit
  %this_retval.0 = phi i32 [ %126, %115 ], [ %114, %PUGH_ReductionGA.exit ]
  %.not = icmp ne i32 %this_retval.0, 0, !dbg !629
  %notlhs = icmp sgt i32 %proc, -1, !dbg !629
  %notrhs = icmp ne i32 %11, %proc, !dbg !629
  %or.cond.not = and i1 %notrhs, %notlhs, !dbg !629
  %brmerge = or i1 %.not, %or.cond.not, !dbg !629
  br i1 %brmerge, label %133, label %129, !dbg !629

; <label>:129                                     ; preds = %128
  %130 = mul nsw i64 %indvars.iv, %20, !dbg !631
  %131 = getelementptr inbounds i8* %outvals, i64 %130, !dbg !633
  call void @llvm.dbg.value(metadata double* %result, i64 0, metadata !183, metadata !263), !dbg !506
  %132 = call fastcc i32 @copy_real_to_outtype(i32 1, double* %result, i32 %outtype, i8* %131) #7, !dbg !634
  call void @llvm.dbg.value(metadata i32 %132, i64 0, metadata !181, metadata !263), !dbg !601
  br label %133, !dbg !635

; <label>:133                                     ; preds = %128, %.thread, %129
  %this_retval.1 = phi i32 [ %132, %129 ], [ %this_retval.0, %128 ], [ -1, %.thread ]
  %134 = or i32 %this_retval.1, %retval.04, !dbg !636
  call void @llvm.dbg.value(metadata i32 %134, i64 0, metadata !182, metadata !263), !dbg !489
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !496
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !496
  %exitcond = icmp eq i32 %lftr.wideiv, %21, !dbg !496
  br i1 %exitcond, label %.loopexit, label %22, !dbg !496

.loopexit:                                        ; preds = %133, %9, %7, %2
  %.0 = phi i32 [ -1, %2 ], [ -1, %7 ], [ 0, %9 ], [ %134, %133 ]
  ret i32 %.0, !dbg !637
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeFromVarI(i32) #3

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #3

; Function Attrs: optsize
declare i32 @CCTK_StaggerDirIndex(i32, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!258, !259, !260}
!llvm.ident = !{!261}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !97, globals: !256, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Reduction.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !6, !8, !10, !83, !84, !88, !5, !89, !90, !91, !92, !7, !93, !94, !95, !96}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGA", file: !14, line: 126, baseType: !15)
!14 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/../include/pGV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGA", file: !14, line: 96, size: 832, align: 64, elements: !16)
!16 = !{!17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !55, !64, !78, !79, !80, !81}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !15, file: !14, line: 98, baseType: !8, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !15, file: !14, line: 99, baseType: !5, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "arrayid", scope: !15, file: !14, line: 100, baseType: !5, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "padddata", scope: !15, file: !14, line: 101, baseType: !21, size: 64, align: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !15, file: !14, line: 102, baseType: !21, size: 64, align: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !15, file: !14, line: 103, baseType: !5, size: 32, align: 32, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "stagger", scope: !15, file: !14, line: 104, baseType: !5, size: 32, align: 32, offset: 288)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !15, file: !14, line: 106, baseType: !21, size: 64, align: 64, offset: 320)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "varsize", scope: !15, file: !14, line: 114, baseType: !5, size: 32, align: 32, offset: 384)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "vtype", scope: !15, file: !14, line: 115, baseType: !5, size: 32, align: 32, offset: 416)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "extras", scope: !15, file: !14, line: 117, baseType: !29, size: 64, align: 64, offset: 448)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGExtras", file: !14, line: 72, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGExtras", file: !14, line: 37, size: 2368, align: 64, elements: !32)
!32 = !{!33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !52, !54}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !31, file: !14, line: 39, baseType: !5, size: 32, align: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "nsize", scope: !31, file: !14, line: 41, baseType: !4, size: 64, align: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "maxskew", scope: !31, file: !14, line: 44, baseType: !7, size: 64, align: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "lb", scope: !31, file: !14, line: 45, baseType: !37, size: 64, align: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ub", scope: !31, file: !14, line: 46, baseType: !37, size: 64, align: 64, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !31, file: !14, line: 47, baseType: !4, size: 64, align: 64, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "lnsize", scope: !31, file: !14, line: 49, baseType: !4, size: 64, align: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "npoints", scope: !31, file: !14, line: 50, baseType: !5, size: 32, align: 32, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "rnpoints", scope: !31, file: !14, line: 51, baseType: !4, size: 64, align: 64, offset: 512)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "rnsize", scope: !31, file: !14, line: 52, baseType: !37, size: 64, align: 64, offset: 576)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !31, file: !14, line: 55, baseType: !4, size: 64, align: 64, offset: 640)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_volume", scope: !31, file: !14, line: 56, baseType: !4, size: 64, align: 64, offset: 704)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "nghostzones", scope: !31, file: !14, line: 59, baseType: !4, size: 64, align: 64, offset: 768)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "ownership", scope: !31, file: !14, line: 60, baseType: !48, size: 512, align: 64, offset: 832)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, align: 64, elements: !49)
!49 = !{!50, !51}
!50 = !DISubrange(count: 4)
!51 = !DISubrange(count: 2)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "ghosts", scope: !31, file: !14, line: 64, baseType: !53, size: 512, align: 64, offset: 1344)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 512, align: 64, elements: !49)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "overlap", scope: !31, file: !14, line: 68, baseType: !53, size: 512, align: 64, offset: 1856)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "connectivity", scope: !15, file: !14, line: 118, baseType: !56, size: 64, align: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "pConnectivity", file: !14, line: 29, baseType: !58)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "PConnectivity", file: !14, line: 23, size: 256, align: 64, elements: !59)
!59 = !{!60, !61, !62, !63}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !58, file: !14, line: 25, baseType: !5, size: 32, align: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !58, file: !14, line: 26, baseType: !4, size: 64, align: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "neighbours", scope: !58, file: !14, line: 27, baseType: !37, size: 64, align: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !58, file: !14, line: 28, baseType: !4, size: 64, align: 64, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !15, file: !14, line: 120, baseType: !65, size: 64, align: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "pComm", file: !14, line: 94, baseType: !67)
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "PComm", file: !14, line: 74, size: 448, align: 64, elements: !68)
!68 = !{!69, !70, !72, !73, !74, !75, !76, !77}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_sz", scope: !67, file: !14, line: 77, baseType: !4, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !67, file: !14, line: 78, baseType: !71, size: 64, align: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "recv_buffer", scope: !67, file: !14, line: 79, baseType: !71, size: 64, align: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "commflag", scope: !67, file: !14, line: 80, baseType: !5, size: 32, align: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "docomm", scope: !67, file: !14, line: 82, baseType: !4, size: 64, align: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "first_var", scope: !67, file: !14, line: 84, baseType: !5, size: 32, align: 32, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "n_vars", scope: !67, file: !14, line: 85, baseType: !5, size: 32, align: 32, offset: 352)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "sync_timelevel", scope: !67, file: !14, line: 86, baseType: !5, size: 32, align: 32, offset: 384)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "groupcomm", scope: !15, file: !14, line: 121, baseType: !65, size: 64, align: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "vector_size", scope: !15, file: !14, line: 123, baseType: !5, size: 32, align: 32, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "vector_entry", scope: !15, file: !14, line: 124, baseType: !5, size: 32, align: 32, offset: 736)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "vector_base", scope: !15, file: !14, line: 125, baseType: !82, size: 64, align: 64, offset: 768)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "CCTK_CHAR", file: !86, line: 57, baseType: !87)
!86 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/../include/cctk_Types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!87 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "CCTK_BYTE", file: !86, line: 59, baseType: !87)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!97 = !{!98, !103, !166, !184, !203, !218}
!98 = !DISubprogram(name: "CCTKi_version_CactusPUGH_PUGHReduce_Reduction_c", scope: !1, file: !1, line: 20, type: !99, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusPUGH_PUGHReduce_Reduction_c, variables: !2)
!99 = !DISubroutineType(types: !100)
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!103 = !DISubprogram(name: "PUGH_ReductionArrays", scope: !1, file: !1, line: 119, type: !104, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32, i32, i32*, i32, i32, i8**, i32, i32, i8*, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)*)* @PUGH_ReductionArrays, variables: !142)
!104 = !DISubroutineType(types: !105)
!105 = !{!5, !106, !5, !5, !4, !5, !5, !71, !5, !5, !21, !137}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !108, line: 75, baseType: !109)
!108 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!109 = !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 24, size: 1216, align: 64, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !109, file: !108, line: 26, baseType: !5, size: 32, align: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !109, file: !108, line: 27, baseType: !5, size: 32, align: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !109, file: !108, line: 30, baseType: !4, size: 64, align: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !109, file: !108, line: 31, baseType: !4, size: 64, align: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !109, file: !108, line: 32, baseType: !4, size: 64, align: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !109, file: !108, line: 33, baseType: !4, size: 64, align: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !109, file: !108, line: 36, baseType: !4, size: 64, align: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !109, file: !108, line: 39, baseType: !4, size: 64, align: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !109, file: !108, line: 40, baseType: !4, size: 64, align: 64, offset: 448)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !109, file: !108, line: 43, baseType: !7, size: 64, align: 64, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !109, file: !108, line: 44, baseType: !6, size: 64, align: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !109, file: !108, line: 47, baseType: !6, size: 64, align: 64, offset: 640)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !109, file: !108, line: 51, baseType: !4, size: 64, align: 64, offset: 704)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !109, file: !108, line: 54, baseType: !4, size: 64, align: 64, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !109, file: !108, line: 57, baseType: !5, size: 32, align: 32, offset: 832)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !109, file: !108, line: 60, baseType: !4, size: 64, align: 64, offset: 896)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !109, file: !108, line: 63, baseType: !7, size: 64, align: 64, offset: 960)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !109, file: !108, line: 67, baseType: !83, size: 64, align: 64, offset: 1024)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !109, file: !108, line: 70, baseType: !71, size: 64, align: 64, offset: 1088)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !109, file: !108, line: 73, baseType: !131, size: 64, align: 64, offset: 1152)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !108, line: 22, baseType: !133)
!133 = !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 18, size: 16, align: 8, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !133, file: !108, line: 20, baseType: !9, size: 8, align: 8)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !133, file: !108, line: 21, baseType: !9, size: 8, align: 8, offset: 8)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "reduction_fn_t", file: !138, line: 150, baseType: !139)
!138 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/../include/pugh_reductions.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!5, !106, !5, !5, !4, !4, !4, !4, !5, !5, !4, !71, !5, !6}
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !161, !162, !163, !164, !165}
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !103, file: !1, line: 119, type: !106)
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proc", arg: 2, scope: !103, file: !1, line: 120, type: !5)
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_dims", arg: 3, scope: !103, file: !1, line: 121, type: !5)
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dims", arg: 4, scope: !103, file: !1, line: 122, type: !4)
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "intype", arg: 5, scope: !103, file: !1, line: 123, type: !5)
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_inarrays", arg: 6, scope: !103, file: !1, line: 124, type: !5)
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inarrays", arg: 7, scope: !103, file: !1, line: 125, type: !71)
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outtype", arg: 8, scope: !103, file: !1, line: 126, type: !5)
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_outvals", arg: 9, scope: !103, file: !1, line: 127, type: !5)
!152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outvals", arg: 10, scope: !103, file: !1, line: 128, type: !21)
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "reduction_fn", arg: 11, scope: !103, file: !1, line: 129, type: !137)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !103, file: !1, line: 131, type: !5)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_points", scope: !103, file: !1, line: 131, type: !5)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !103, file: !1, line: 131, type: !5)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "from", scope: !103, file: !1, line: 132, type: !158)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, align: 32, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 1)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "to", scope: !103, file: !1, line: 132, type: !158)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iterator", scope: !103, file: !1, line: 132, type: !158)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "points_per_dim", scope: !103, file: !1, line: 132, type: !158)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "intypes", scope: !103, file: !1, line: 133, type: !4)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buffer", scope: !103, file: !1, line: 134, type: !6)
!166 = !DISubprogram(name: "PUGH_ReductionGVs", scope: !1, file: !1, line: 264, type: !167, isLocal: false, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32, i32, i32*, i32, i32, i8*, i32 (%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32*, i8**, i32, double*)*)* @PUGH_ReductionGVs, variables: !169)
!167 = !DISubroutineType(types: !168)
!168 = !{!5, !106, !5, !5, !4, !5, !5, !21, !137}
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !166, file: !1, line: 264, type: !106)
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proc", arg: 2, scope: !166, file: !1, line: 265, type: !5)
!172 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_invars", arg: 3, scope: !166, file: !1, line: 266, type: !5)
!173 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "invars", arg: 4, scope: !166, file: !1, line: 267, type: !4)
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outtype", arg: 5, scope: !166, file: !1, line: 268, type: !5)
!175 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_outvals", arg: 6, scope: !166, file: !1, line: 269, type: !5)
!176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outvals", arg: 7, scope: !166, file: !1, line: 270, type: !21)
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "reduction_fn", arg: 8, scope: !166, file: !1, line: 271, type: !137)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !166, file: !1, line: 273, type: !5)
!179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "myproc", scope: !166, file: !1, line: 273, type: !5)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outtypesize", scope: !166, file: !1, line: 273, type: !5)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_retval", scope: !166, file: !1, line: 273, type: !5)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !166, file: !1, line: 273, type: !5)
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !166, file: !1, line: 274, type: !7)
!184 = !DISubprogram(name: "PUGH_ReductionGA", scope: !1, file: !1, line: 371, type: !185, isLocal: true, isDefinition: true, scopeLine: 373, flags: DIFlagPrototyped, isOptimized: true, variables: !187)
!185 = !DISubroutineType(types: !186)
!186 = !{!5, !106, !5, !5, !6, !137}
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202}
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !184, file: !1, line: 371, type: !106)
!189 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 2, scope: !184, file: !1, line: 371, type: !5)
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proc", arg: 3, scope: !184, file: !1, line: 371, type: !5)
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outval", arg: 4, scope: !184, file: !1, line: 371, type: !6)
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "reduction_fn", arg: 5, scope: !184, file: !1, line: 372, type: !137)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !184, file: !1, line: 374, type: !5)
!194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stagger_index", scope: !184, file: !1, line: 374, type: !5)
!195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_points", scope: !184, file: !1, line: 374, type: !5)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dir_points", scope: !184, file: !1, line: 374, type: !5)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !184, file: !1, line: 374, type: !5)
!198 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "GA", scope: !184, file: !1, line: 375, type: !12)
!199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "from", scope: !184, file: !1, line: 376, type: !4)
!200 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "to", scope: !184, file: !1, line: 376, type: !4)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iterator", scope: !184, file: !1, line: 376, type: !4)
!202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "points_per_dim", scope: !184, file: !1, line: 376, type: !4)
!203 = !DISubprogram(name: "PUGH_ReductionScalar", scope: !1, file: !1, line: 468, type: !185, isLocal: true, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: true, variables: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217}
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !203, file: !1, line: 468, type: !106)
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 2, scope: !203, file: !1, line: 469, type: !5)
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proc", arg: 3, scope: !203, file: !1, line: 470, type: !5)
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outval", arg: 4, scope: !203, file: !1, line: 471, type: !6)
!209 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "reduction_fn", arg: 5, scope: !203, file: !1, line: 472, type: !137)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !203, file: !1, line: 474, type: !5)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_points", scope: !203, file: !1, line: 476, type: !5)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "from", scope: !203, file: !1, line: 476, type: !5)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "to", scope: !203, file: !1, line: 476, type: !5)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iterator", scope: !203, file: !1, line: 476, type: !5)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "points_per_dim", scope: !203, file: !1, line: 476, type: !5)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !203, file: !1, line: 476, type: !5)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !203, file: !1, line: 478, type: !21)
!218 = !DISubprogram(name: "copy_real_to_outtype", scope: !1, file: !1, line: 541, type: !219, isLocal: true, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, double*, i32, i8*)* @copy_real_to_outtype, variables: !221)
!219 = !DISubroutineType(types: !220)
!220 = !{!5, !5, !6, !5, !21}
!221 = !{!222, !223, !224, !225, !226, !227, !228, !232, !235, !238, !241, !244, !247, !250, !253}
!222 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_elems", arg: 1, scope: !218, file: !1, line: 541, type: !5)
!223 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inarray", arg: 2, scope: !218, file: !1, line: 542, type: !6)
!224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outtype", arg: 3, scope: !218, file: !1, line: 543, type: !5)
!225 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outarray", arg: 4, scope: !218, file: !1, line: 544, type: !21)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !218, file: !1, line: 546, type: !5)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !218, file: !1, line: 546, type: !5)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_outarray", scope: !229, file: !1, line: 553, type: !231)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 552, column: 3)
!230 = distinct !DILexicalBlock(scope: !218, file: !1, line: 551, column: 7)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_outarray", scope: !233, file: !1, line: 563, type: !4)
!233 = distinct !DILexicalBlock(scope: !234, file: !1, line: 562, column: 3)
!234 = distinct !DILexicalBlock(scope: !230, file: !1, line: 561, column: 12)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_outarray", scope: !236, file: !1, line: 574, type: !89)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 573, column: 3)
!237 = distinct !DILexicalBlock(scope: !234, file: !1, line: 572, column: 12)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_outarray", scope: !239, file: !1, line: 586, type: !4)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 585, column: 3)
!240 = distinct !DILexicalBlock(scope: !237, file: !1, line: 584, column: 12)
!241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_outarray", scope: !242, file: !1, line: 598, type: !91)
!242 = distinct !DILexicalBlock(scope: !243, file: !1, line: 597, column: 3)
!243 = distinct !DILexicalBlock(scope: !240, file: !1, line: 596, column: 12)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_outarray", scope: !245, file: !1, line: 609, type: !6)
!245 = distinct !DILexicalBlock(scope: !246, file: !1, line: 608, column: 3)
!246 = distinct !DILexicalBlock(scope: !243, file: !1, line: 607, column: 12)
!247 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_outarray", scope: !248, file: !1, line: 620, type: !93)
!248 = distinct !DILexicalBlock(scope: !249, file: !1, line: 619, column: 3)
!249 = distinct !DILexicalBlock(scope: !246, file: !1, line: 618, column: 12)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_outarray", scope: !251, file: !1, line: 632, type: !6)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 631, column: 3)
!252 = distinct !DILexicalBlock(scope: !249, file: !1, line: 630, column: 12)
!253 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_outarray", scope: !254, file: !1, line: 644, type: !95)
!254 = distinct !DILexicalBlock(scope: !255, file: !1, line: 643, column: 3)
!255 = distinct !DILexicalBlock(scope: !252, file: !1, line: 642, column: 12)
!256 = !{!257}
!257 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 18, type: !101, isLocal: true, isDefinition: true)
!258 = !{i32 2, !"Dwarf Version", i32 2}
!259 = !{i32 2, !"Debug Info Version", i32 700000003}
!260 = !{i32 1, !"PIC Level", i32 2}
!261 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!262 = !DILocation(line: 20, column: 1, scope: !98)
!263 = !DIExpression()
!264 = !DILocation(line: 119, column: 32, scope: !103)
!265 = !DILocation(line: 120, column: 31, scope: !103)
!266 = !DILocation(line: 121, column: 31, scope: !103)
!267 = !DILocation(line: 122, column: 31, scope: !103)
!268 = !DILocation(line: 123, column: 31, scope: !103)
!269 = !DILocation(line: 124, column: 31, scope: !103)
!270 = !DILocation(line: 125, column: 33, scope: !103)
!271 = !DILocation(line: 126, column: 31, scope: !103)
!272 = !DILocation(line: 127, column: 31, scope: !103)
!273 = !DILocation(line: 128, column: 33, scope: !103)
!274 = !DILocation(line: 129, column: 42, scope: !103)
!275 = !DILocation(line: 132, column: 7, scope: !103)
!276 = !DILocation(line: 132, column: 16, scope: !103)
!277 = !DILocation(line: 132, column: 23, scope: !103)
!278 = !DILocation(line: 132, column: 36, scope: !103)
!279 = !DILocation(line: 137, column: 3, scope: !103)
!280 = !DILocation(line: 137, column: 21, scope: !103)
!281 = !{!282, !282, i64 0}
!282 = !{!"int", !283, i64 0}
!283 = !{!"omnipotent char", !284, i64 0}
!284 = !{!"Simple C/C++ TBAA"}
!285 = !DILocation(line: 138, column: 3, scope: !103)
!286 = !DILocation(line: 138, column: 11, scope: !103)
!287 = !DILocation(line: 139, column: 11, scope: !103)
!288 = !DILocation(line: 139, column: 3, scope: !103)
!289 = !DILocation(line: 139, column: 9, scope: !103)
!290 = !DILocation(line: 131, column: 7, scope: !103)
!291 = !DILocation(line: 141, column: 17, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !1, line: 141, column: 3)
!293 = distinct !DILexicalBlock(scope: !103, file: !1, line: 141, column: 3)
!294 = !DILocation(line: 141, column: 3, scope: !293)
!295 = !DILocation(line: 143, column: 14, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !1, line: 142, column: 3)
!297 = !DILocation(line: 143, column: 11, scope: !296)
!298 = !DILocation(line: 146, column: 19, scope: !299)
!299 = distinct !DILexicalBlock(scope: !103, file: !1, line: 146, column: 7)
!300 = !DILocation(line: 146, column: 7, scope: !103)
!301 = !DILocation(line: 148, column: 21, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !1, line: 148, column: 9)
!303 = distinct !DILexicalBlock(scope: !299, file: !1, line: 147, column: 3)
!304 = !DILocation(line: 148, column: 9, scope: !303)
!305 = !DILocation(line: 150, column: 7, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !1, line: 149, column: 5)
!307 = !DILocation(line: 155, column: 7, scope: !306)
!308 = !DILocation(line: 157, column: 11, scope: !303)
!309 = !DILocation(line: 158, column: 3, scope: !303)
!310 = !DILocation(line: 159, column: 24, scope: !103)
!311 = !{!312, !312, i64 0}
!312 = !{!"any pointer", !283, i64 0}
!313 = !DILocation(line: 159, column: 22, scope: !103)
!314 = !DILocation(line: 131, column: 10, scope: !103)
!315 = !DILocation(line: 163, column: 29, scope: !103)
!316 = !DILocation(line: 163, column: 42, scope: !103)
!317 = !DILocation(line: 163, column: 21, scope: !103)
!318 = !DILocation(line: 163, column: 13, scope: !103)
!319 = !DILocation(line: 133, column: 8, scope: !103)
!320 = !DILocation(line: 164, column: 17, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !1, line: 164, column: 3)
!322 = distinct !DILexicalBlock(scope: !103, file: !1, line: 164, column: 3)
!323 = !DILocation(line: 164, column: 3, scope: !322)
!324 = !DILocation(line: 166, column: 5, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !1, line: 165, column: 3)
!326 = !DILocation(line: 166, column: 16, scope: !325)
!327 = !DILocation(line: 169, column: 34, scope: !103)
!328 = !DILocation(line: 169, column: 46, scope: !103)
!329 = !DILocation(line: 169, column: 26, scope: !103)
!330 = !DILocation(line: 169, column: 12, scope: !103)
!331 = !DILocation(line: 134, column: 14, scope: !103)
!332 = !DILocation(line: 177, column: 26, scope: !103)
!333 = !DILocation(line: 172, column: 12, scope: !103)
!334 = !DILocation(line: 131, column: 22, scope: !103)
!335 = !DILocation(line: 186, column: 14, scope: !336)
!336 = distinct !DILexicalBlock(scope: !103, file: !1, line: 186, column: 7)
!337 = !DILocation(line: 186, column: 19, scope: !336)
!338 = !DILocation(line: 186, column: 28, scope: !336)
!339 = !DILocation(line: 186, column: 32, scope: !336)
!340 = !DILocation(line: 186, column: 43, scope: !336)
!341 = !DILocation(line: 186, column: 40, scope: !336)
!342 = !DILocation(line: 186, column: 7, scope: !103)
!343 = !DILocation(line: 189, column: 49, scope: !344)
!344 = distinct !DILexicalBlock(scope: !336, file: !1, line: 187, column: 3)
!345 = !DILocation(line: 189, column: 14, scope: !344)
!346 = !DILocation(line: 193, column: 3, scope: !344)
!347 = !DILocation(line: 195, column: 3, scope: !103)
!348 = !DILocation(line: 196, column: 3, scope: !103)
!349 = !DILocation(line: 198, column: 3, scope: !103)
!350 = !DILocation(line: 199, column: 1, scope: !103)
!351 = !DILocation(line: 541, column: 38, scope: !218)
!352 = !DILocation(line: 542, column: 44, scope: !218)
!353 = !DILocation(line: 543, column: 38, scope: !218)
!354 = !DILocation(line: 544, column: 40, scope: !218)
!355 = !DILocation(line: 546, column: 10, scope: !218)
!356 = !DILocation(line: 551, column: 7, scope: !218)
!357 = !DILocation(line: 556, column: 19, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !1, line: 556, column: 5)
!359 = distinct !DILexicalBlock(scope: !229, file: !1, line: 556, column: 5)
!360 = !DILocation(line: 556, column: 5, scope: !359)
!361 = !DILocation(line: 558, column: 34, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !1, line: 557, column: 5)
!363 = !{!364, !364, i64 0}
!364 = !{!"double", !283, i64 0}
!365 = !DILocation(line: 558, column: 22, scope: !362)
!366 = !DILocation(line: 558, column: 7, scope: !362)
!367 = !DILocation(line: 558, column: 20, scope: !362)
!368 = !{!283, !283, i64 0}
!369 = !DILocation(line: 563, column: 27, scope: !233)
!370 = !DILocation(line: 563, column: 15, scope: !233)
!371 = !DILocation(line: 546, column: 7, scope: !218)
!372 = !DILocation(line: 566, column: 19, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !1, line: 566, column: 5)
!374 = distinct !DILexicalBlock(scope: !233, file: !1, line: 566, column: 5)
!375 = !DILocation(line: 566, column: 5, scope: !374)
!376 = !DILocation(line: 568, column: 33, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !1, line: 567, column: 5)
!378 = !DILocation(line: 568, column: 22, scope: !377)
!379 = !DILocation(line: 568, column: 7, scope: !377)
!380 = !DILocation(line: 568, column: 20, scope: !377)
!381 = !DILocation(line: 574, column: 28, scope: !236)
!382 = !DILocation(line: 574, column: 16, scope: !236)
!383 = !DILocation(line: 577, column: 19, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !1, line: 577, column: 5)
!385 = distinct !DILexicalBlock(scope: !236, file: !1, line: 577, column: 5)
!386 = !DILocation(line: 577, column: 5, scope: !385)
!387 = !DILocation(line: 579, column: 34, scope: !388)
!388 = distinct !DILexicalBlock(scope: !384, file: !1, line: 578, column: 5)
!389 = !DILocation(line: 579, column: 22, scope: !388)
!390 = !DILocation(line: 579, column: 7, scope: !388)
!391 = !DILocation(line: 579, column: 20, scope: !388)
!392 = !{!393, !393, i64 0}
!393 = !{!"short", !283, i64 0}
!394 = !DILocation(line: 586, column: 28, scope: !239)
!395 = !DILocation(line: 586, column: 16, scope: !239)
!396 = !DILocation(line: 589, column: 19, scope: !397)
!397 = distinct !DILexicalBlock(scope: !398, file: !1, line: 589, column: 5)
!398 = distinct !DILexicalBlock(scope: !239, file: !1, line: 589, column: 5)
!399 = !DILocation(line: 589, column: 5, scope: !398)
!400 = !DILocation(line: 591, column: 34, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !1, line: 590, column: 5)
!402 = !DILocation(line: 591, column: 22, scope: !401)
!403 = !DILocation(line: 591, column: 7, scope: !401)
!404 = !DILocation(line: 591, column: 20, scope: !401)
!405 = !DILocation(line: 598, column: 28, scope: !242)
!406 = !DILocation(line: 598, column: 16, scope: !242)
!407 = !DILocation(line: 601, column: 19, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 601, column: 5)
!409 = distinct !DILexicalBlock(scope: !242, file: !1, line: 601, column: 5)
!410 = !DILocation(line: 601, column: 5, scope: !409)
!411 = !DILocation(line: 603, column: 34, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !1, line: 602, column: 5)
!413 = !DILocation(line: 603, column: 22, scope: !412)
!414 = !DILocation(line: 603, column: 7, scope: !412)
!415 = !DILocation(line: 603, column: 20, scope: !412)
!416 = !{!417, !417, i64 0}
!417 = !{!"long", !283, i64 0}
!418 = !DILocation(line: 609, column: 28, scope: !245)
!419 = !DILocation(line: 609, column: 16, scope: !245)
!420 = !DILocation(line: 612, column: 19, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !1, line: 612, column: 5)
!422 = distinct !DILexicalBlock(scope: !245, file: !1, line: 612, column: 5)
!423 = !DILocation(line: 612, column: 5, scope: !422)
!424 = !DILocation(line: 614, column: 34, scope: !425)
!425 = distinct !DILexicalBlock(scope: !421, file: !1, line: 613, column: 5)
!426 = !DILocation(line: 614, column: 7, scope: !425)
!427 = !DILocation(line: 614, column: 20, scope: !425)
!428 = !DILocation(line: 620, column: 29, scope: !248)
!429 = !DILocation(line: 620, column: 17, scope: !248)
!430 = !DILocation(line: 623, column: 19, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !1, line: 623, column: 5)
!432 = distinct !DILexicalBlock(scope: !248, file: !1, line: 623, column: 5)
!433 = !DILocation(line: 623, column: 5, scope: !432)
!434 = !DILocation(line: 625, column: 35, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !1, line: 624, column: 5)
!436 = !DILocation(line: 625, column: 22, scope: !435)
!437 = !DILocation(line: 625, column: 7, scope: !435)
!438 = !DILocation(line: 625, column: 20, scope: !435)
!439 = !{!440, !440, i64 0}
!440 = !{!"float", !283, i64 0}
!441 = !DILocation(line: 632, column: 33, scope: !251)
!442 = !DILocation(line: 632, column: 21, scope: !251)
!443 = !DILocation(line: 635, column: 23, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 635, column: 9)
!445 = distinct !DILexicalBlock(scope: !251, file: !1, line: 635, column: 9)
!446 = !DILocation(line: 635, column: 9, scope: !445)
!447 = !DILocation(line: 637, column: 39, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !1, line: 636, column: 9)
!449 = !DILocation(line: 637, column: 11, scope: !448)
!450 = !DILocation(line: 637, column: 24, scope: !448)
!451 = !DILocation(line: 644, column: 30, scope: !254)
!452 = !DILocation(line: 644, column: 18, scope: !254)
!453 = !DILocation(line: 647, column: 19, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !1, line: 647, column: 5)
!455 = distinct !DILexicalBlock(scope: !254, file: !1, line: 647, column: 5)
!456 = !DILocation(line: 647, column: 5, scope: !455)
!457 = !DILocation(line: 649, column: 36, scope: !458)
!458 = distinct !DILexicalBlock(scope: !454, file: !1, line: 648, column: 5)
!459 = !DILocation(line: 649, column: 22, scope: !458)
!460 = !DILocation(line: 649, column: 7, scope: !458)
!461 = !DILocation(line: 649, column: 20, scope: !458)
!462 = !{!463, !463, i64 0}
!463 = !{!"long double", !283, i64 0}
!464 = !DILocation(line: 655, column: 5, scope: !465)
!465 = distinct !DILexicalBlock(scope: !255, file: !1, line: 654, column: 3)
!466 = !DILocation(line: 659, column: 3, scope: !218)
!467 = !DILocation(line: 264, column: 29, scope: !166)
!468 = !DILocation(line: 265, column: 28, scope: !166)
!469 = !DILocation(line: 266, column: 28, scope: !166)
!470 = !DILocation(line: 267, column: 28, scope: !166)
!471 = !DILocation(line: 268, column: 28, scope: !166)
!472 = !DILocation(line: 269, column: 28, scope: !166)
!473 = !DILocation(line: 270, column: 30, scope: !166)
!474 = !DILocation(line: 271, column: 39, scope: !166)
!475 = !DILocation(line: 277, column: 19, scope: !476)
!476 = distinct !DILexicalBlock(scope: !166, file: !1, line: 277, column: 7)
!477 = !DILocation(line: 277, column: 7, scope: !166)
!478 = !DILocation(line: 279, column: 5, scope: !479)
!479 = distinct !DILexicalBlock(scope: !476, file: !1, line: 278, column: 3)
!480 = !DILocation(line: 281, column: 5, scope: !479)
!481 = !DILocation(line: 284, column: 17, scope: !166)
!482 = !DILocation(line: 273, column: 18, scope: !166)
!483 = !DILocation(line: 285, column: 19, scope: !484)
!484 = distinct !DILexicalBlock(scope: !166, file: !1, line: 285, column: 7)
!485 = !DILocation(line: 285, column: 7, scope: !166)
!486 = !DILocation(line: 287, column: 5, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !1, line: 286, column: 3)
!488 = !DILocation(line: 288, column: 5, scope: !487)
!489 = !DILocation(line: 273, column: 44, scope: !166)
!490 = !DILocation(line: 292, column: 12, scope: !166)
!491 = !DILocation(line: 273, column: 10, scope: !166)
!492 = !DILocation(line: 273, column: 7, scope: !166)
!493 = !DILocation(line: 294, column: 17, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 294, column: 3)
!495 = distinct !DILexicalBlock(scope: !166, file: !1, line: 294, column: 3)
!496 = !DILocation(line: 294, column: 3, scope: !495)
!497 = !DILocation(line: 468, column: 39, scope: !203, inlinedAt: !498)
!498 = distinct !DILocation(line: 305, column: 23, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !1, line: 297, column: 5)
!500 = distinct !DILexicalBlock(scope: !494, file: !1, line: 295, column: 3)
!501 = !DILocation(line: 481, column: 8, scope: !203, inlinedAt: !498)
!502 = !DILocation(line: 296, column: 37, scope: !500)
!503 = !DILocation(line: 296, column: 13, scope: !500)
!504 = !DILocation(line: 296, column: 5, scope: !500)
!505 = !DILocation(line: 300, column: 45, scope: !499)
!506 = !DILocation(line: 274, column: 13, scope: !166)
!507 = !DILocation(line: 371, column: 35, scope: !184, inlinedAt: !508)
!508 = distinct !DILocation(line: 300, column: 23, scope: !499)
!509 = !DILocation(line: 371, column: 43, scope: !184, inlinedAt: !508)
!510 = !DILocation(line: 371, column: 54, scope: !184, inlinedAt: !508)
!511 = !DILocation(line: 371, column: 71, scope: !184, inlinedAt: !508)
!512 = !DILocation(line: 372, column: 45, scope: !184, inlinedAt: !508)
!513 = !DILocation(line: 380, column: 8, scope: !184, inlinedAt: !508)
!514 = !DILocation(line: 380, column: 19, scope: !184, inlinedAt: !508)
!515 = !DILocation(line: 380, column: 34, scope: !184, inlinedAt: !508)
!516 = !{!517, !312, i64 32}
!517 = !{!"PGH", !312, i64 0, !282, i64 8, !282, i64 12, !282, i64 16, !282, i64 20, !282, i64 24, !282, i64 28, !312, i64 32, !282, i64 40, !312, i64 48, !282, i64 56, !282, i64 60, !364, i64 64, !364, i64 72, !364, i64 80, !364, i64 88, !282, i64 96, !282, i64 100, !282, i64 104, !282, i64 108, !282, i64 112, !312, i64 120, !312, i64 128, !312, i64 136}
!518 = !DILocation(line: 375, column: 8, scope: !184, inlinedAt: !508)
!519 = !DILocation(line: 383, column: 44, scope: !184, inlinedAt: !508)
!520 = !{!521, !312, i64 64}
!521 = !{!"PGA", !312, i64 0, !282, i64 8, !282, i64 12, !312, i64 16, !312, i64 24, !282, i64 32, !282, i64 36, !312, i64 40, !282, i64 48, !282, i64 52, !312, i64 56, !312, i64 64, !312, i64 72, !312, i64 80, !282, i64 88, !282, i64 92, !312, i64 96}
!522 = !DILocation(line: 383, column: 58, scope: !184, inlinedAt: !508)
!523 = !{!524, !282, i64 0}
!524 = !{!"PConnectivity", !282, i64 0, !312, i64 8, !312, i64 16, !312, i64 24}
!525 = !DILocation(line: 383, column: 38, scope: !184, inlinedAt: !508)
!526 = !DILocation(line: 383, column: 36, scope: !184, inlinedAt: !508)
!527 = !DILocation(line: 383, column: 62, scope: !184, inlinedAt: !508)
!528 = !DILocation(line: 383, column: 28, scope: !184, inlinedAt: !508)
!529 = !DILocation(line: 383, column: 20, scope: !184, inlinedAt: !508)
!530 = !DILocation(line: 376, column: 8, scope: !184, inlinedAt: !508)
!531 = !DILocation(line: 384, column: 33, scope: !184, inlinedAt: !508)
!532 = !DILocation(line: 384, column: 47, scope: !184, inlinedAt: !508)
!533 = !DILocation(line: 384, column: 25, scope: !184, inlinedAt: !508)
!534 = !DILocation(line: 376, column: 15, scope: !184, inlinedAt: !508)
!535 = !DILocation(line: 385, column: 28, scope: !184, inlinedAt: !508)
!536 = !DILocation(line: 385, column: 25, scope: !184, inlinedAt: !508)
!537 = !DILocation(line: 376, column: 20, scope: !184, inlinedAt: !508)
!538 = !DILocation(line: 386, column: 28, scope: !184, inlinedAt: !508)
!539 = !DILocation(line: 386, column: 25, scope: !184, inlinedAt: !508)
!540 = !DILocation(line: 376, column: 31, scope: !184, inlinedAt: !508)
!541 = !DILocation(line: 374, column: 25, scope: !184, inlinedAt: !508)
!542 = !DILocation(line: 391, column: 21, scope: !184, inlinedAt: !508)
!543 = !DILocation(line: 374, column: 7, scope: !184, inlinedAt: !508)
!544 = !DILocation(line: 392, column: 37, scope: !545, inlinedAt: !508)
!545 = distinct !DILexicalBlock(scope: !546, file: !1, line: 392, column: 3)
!546 = distinct !DILexicalBlock(scope: !184, file: !1, line: 392, column: 3)
!547 = !DILocation(line: 392, column: 17, scope: !545, inlinedAt: !508)
!548 = !DILocation(line: 392, column: 3, scope: !546, inlinedAt: !508)
!549 = !DILocation(line: 394, column: 50, scope: !550, inlinedAt: !508)
!550 = distinct !DILexicalBlock(scope: !545, file: !1, line: 393, column: 3)
!551 = !DILocation(line: 396, column: 19, scope: !550, inlinedAt: !508)
!552 = !DILocation(line: 300, column: 23, scope: !499)
!553 = !{!521, !282, i64 36}
!554 = !DILocation(line: 394, column: 21, scope: !550, inlinedAt: !508)
!555 = !DILocation(line: 374, column: 10, scope: !184, inlinedAt: !508)
!556 = !DILocation(line: 396, column: 15, scope: !550, inlinedAt: !508)
!557 = !{!521, !312, i64 56}
!558 = !DILocation(line: 396, column: 5, scope: !550, inlinedAt: !508)
!559 = !DILocation(line: 396, column: 13, scope: !550, inlinedAt: !508)
!560 = !DILocation(line: 397, column: 15, scope: !550, inlinedAt: !508)
!561 = !DILocation(line: 397, column: 5, scope: !550, inlinedAt: !508)
!562 = !DILocation(line: 397, column: 13, scope: !550, inlinedAt: !508)
!563 = !DILocation(line: 399, column: 30, scope: !550, inlinedAt: !508)
!564 = !{!565, !312, i64 8}
!565 = !{!"PGExtras", !282, i64 0, !312, i64 8, !364, i64 16, !312, i64 24, !312, i64 32, !312, i64 40, !312, i64 48, !282, i64 56, !312, i64 64, !312, i64 72, !312, i64 80, !312, i64 88, !312, i64 96, !283, i64 104, !283, i64 168, !283, i64 232}
!566 = !DILocation(line: 399, column: 18, scope: !550, inlinedAt: !508)
!567 = !DILocation(line: 374, column: 37, scope: !184, inlinedAt: !508)
!568 = !DILocation(line: 400, column: 13, scope: !569, inlinedAt: !508)
!569 = distinct !DILexicalBlock(scope: !550, file: !1, line: 400, column: 9)
!570 = !DILocation(line: 400, column: 27, scope: !569, inlinedAt: !508)
!571 = !{!524, !312, i64 24}
!572 = !DILocation(line: 400, column: 9, scope: !569, inlinedAt: !508)
!573 = !DILocation(line: 400, column: 9, scope: !550, inlinedAt: !508)
!574 = !DILocation(line: 402, column: 35, scope: !575, inlinedAt: !508)
!575 = distinct !DILexicalBlock(scope: !569, file: !1, line: 401, column: 5)
!576 = !{!565, !312, i64 96}
!577 = !DILocation(line: 402, column: 23, scope: !575, inlinedAt: !508)
!578 = !DILocation(line: 402, column: 22, scope: !575, inlinedAt: !508)
!579 = !DILocation(line: 402, column: 18, scope: !575, inlinedAt: !508)
!580 = !DILocation(line: 403, column: 5, scope: !575, inlinedAt: !508)
!581 = !DILocation(line: 404, column: 9, scope: !550, inlinedAt: !508)
!582 = !DILocation(line: 408, column: 16, scope: !550, inlinedAt: !508)
!583 = !DILocation(line: 410, column: 11, scope: !584, inlinedAt: !508)
!584 = distinct !DILexicalBlock(scope: !550, file: !1, line: 410, column: 9)
!585 = !DILocation(line: 410, column: 9, scope: !550, inlinedAt: !508)
!586 = !DILocation(line: 412, column: 43, scope: !587, inlinedAt: !508)
!587 = distinct !DILexicalBlock(scope: !584, file: !1, line: 411, column: 5)
!588 = !DILocation(line: 412, column: 27, scope: !587, inlinedAt: !508)
!589 = !DILocation(line: 412, column: 61, scope: !587, inlinedAt: !508)
!590 = !{!565, !312, i64 48}
!591 = !DILocation(line: 412, column: 49, scope: !587, inlinedAt: !508)
!592 = !DILocation(line: 412, column: 47, scope: !587, inlinedAt: !508)
!593 = !DILocation(line: 412, column: 7, scope: !587, inlinedAt: !508)
!594 = !DILocation(line: 412, column: 25, scope: !587, inlinedAt: !508)
!595 = !DILocation(line: 413, column: 5, scope: !587, inlinedAt: !508)
!596 = !DILocation(line: 418, column: 62, scope: !184, inlinedAt: !508)
!597 = !DILocation(line: 418, column: 74, scope: !184, inlinedAt: !508)
!598 = !DILocation(line: 417, column: 12, scope: !184, inlinedAt: !508)
!599 = !DILocation(line: 374, column: 49, scope: !184, inlinedAt: !508)
!600 = !DILocation(line: 422, column: 3, scope: !184, inlinedAt: !508)
!601 = !DILocation(line: 273, column: 31, scope: !166)
!602 = !DILocation(line: 302, column: 9, scope: !499)
!603 = !DILocation(line: 305, column: 49, scope: !499)
!604 = !DILocation(line: 469, column: 38, scope: !203, inlinedAt: !498)
!605 = !DILocation(line: 470, column: 38, scope: !203, inlinedAt: !498)
!606 = !DILocation(line: 471, column: 45, scope: !203, inlinedAt: !498)
!607 = !DILocation(line: 472, column: 49, scope: !203, inlinedAt: !498)
!608 = !DILocation(line: 481, column: 10, scope: !203, inlinedAt: !498)
!609 = !DILocation(line: 481, column: 22, scope: !203, inlinedAt: !498)
!610 = !DILocation(line: 481, column: 37, scope: !203, inlinedAt: !498)
!611 = !DILocation(line: 476, column: 19, scope: !203, inlinedAt: !498)
!612 = !DILocation(line: 483, column: 18, scope: !203, inlinedAt: !498)
!613 = !DILocation(line: 476, column: 25, scope: !203, inlinedAt: !498)
!614 = !DILocation(line: 484, column: 18, scope: !203, inlinedAt: !498)
!615 = !DILocation(line: 476, column: 29, scope: !203, inlinedAt: !498)
!616 = !DILocation(line: 485, column: 18, scope: !203, inlinedAt: !498)
!617 = !DILocation(line: 476, column: 39, scope: !203, inlinedAt: !498)
!618 = !DILocation(line: 486, column: 18, scope: !203, inlinedAt: !498)
!619 = !DILocation(line: 487, column: 20, scope: !203, inlinedAt: !498)
!620 = !DILocation(line: 476, column: 55, scope: !203, inlinedAt: !498)
!621 = !DILocation(line: 487, column: 18, scope: !203, inlinedAt: !498)
!622 = !DILocation(line: 476, column: 7, scope: !203, inlinedAt: !498)
!623 = !DILocation(line: 478, column: 9, scope: !203, inlinedAt: !498)
!624 = !DILocation(line: 492, column: 12, scope: !203, inlinedAt: !498)
!625 = !DILocation(line: 474, column: 7, scope: !203, inlinedAt: !498)
!626 = !DILocation(line: 496, column: 3, scope: !203, inlinedAt: !498)
!627 = !DILocation(line: 307, column: 9, scope: !499)
!628 = !DILocation(line: 310, column: 9, scope: !499)
!629 = !DILocation(line: 315, column: 26, scope: !630)
!630 = distinct !DILexicalBlock(scope: !500, file: !1, line: 315, column: 9)
!631 = !DILocation(line: 319, column: 63, scope: !632)
!632 = distinct !DILexicalBlock(scope: !630, file: !1, line: 316, column: 5)
!633 = !DILocation(line: 319, column: 60, scope: !632)
!634 = !DILocation(line: 318, column: 21, scope: !632)
!635 = !DILocation(line: 320, column: 5, scope: !632)
!636 = !DILocation(line: 322, column: 12, scope: !500)
!637 = !DILocation(line: 326, column: 1, scope: !166)
