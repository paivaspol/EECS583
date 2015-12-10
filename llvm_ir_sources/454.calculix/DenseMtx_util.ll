; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A fatal error in DenseMtx_sort(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DenseMtx_copyRow(%p,%d,%p,%d)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_addRow(%p,%d,%p,%d)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A fatal error in DenseMtx_zero(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [63 x i8] c"\0A fatal error in DenseMtx_fillRandomEntries(%p,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [55 x i8] c"\0A fatal error in DenseMtx_checksums(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DenseMtx_maxabs(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [51 x i8] c"\0A fatal error in DenseMtx_maxabs(%p)\0A bad type %d\0A\00", align 1
@.str8 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DenseMtx_sub(%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DenseMtx_sub(%p,%p)\0A mtxB->type = %d, mtxA->type = %d\0A\00", align 1
@.str10 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DenseMtx_sub(%p,%p)\0A mtxB->nrow = %d, mtxA->nrow = %d\0A\00", align 1
@.str11 = private unnamed_addr constant [72 x i8] c"\0A fatal error in DenseMtx_sub(%p,%p)\0A mtxB->ncol = %d, mtxA->ncol = %d\0A\00", align 1
@.str12 = private unnamed_addr constant [78 x i8] c"\0A fatal error in DenseMtx_sub(%p,%p)\0A mtxB->entries = %p, mtxA->entries = %p\0A\00", align 1
@.str13 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_copyRowIntoVector()\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [69 x i8] c"\0A fatal error in DenseMtx_copyRowIntoVector()\0A irow = %d, nrow = %d\0A\00", align 1
@.str15 = private unnamed_addr constant [83 x i8] c"\0A fatal error in DenseMtx_copyVectorIntoRow()\0A bad input, mtx %p, irow %d, vec %p\0A\00", align 1
@.str16 = private unnamed_addr constant [69 x i8] c"\0A fatal error in DenseMtx_copyVectorIntoRow()\0A irow = %d, nrow = %d\0A\00", align 1
@.str17 = private unnamed_addr constant [82 x i8] c"\0A fatal error in DenseMtx_addVectorIntoRow()\0A bad input, mtx %p, irow %d, vec %p\0A\00", align 1
@.str18 = private unnamed_addr constant [68 x i8] c"\0A fatal error in DenseMtx_addVectorIntoRow()\0A irow = %d, nrow = %d\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_sort(%struct._DenseMtx* %mtx) #0 {
  %a2 = alloca %struct._A2, align 8
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !39, metadata !195), !dbg !196
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !197
  br i1 %1, label %2, label %5, !dbg !199

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !200, !tbaa !202
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._DenseMtx* null) #7, !dbg !206
  tail call void @exit(i32 -1) #8, !dbg !207
  unreachable, !dbg !207

; <label>:5                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !54, metadata !195), !dbg !208
  tail call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !58, metadata !195), !dbg !209
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #7, !dbg !210
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !53, metadata !195), !dbg !211
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !57, metadata !195), !dbg !212
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #7, !dbg !213
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !54, metadata !195), !dbg !208
  %6 = load i32* %nrow, align 4, !dbg !214, !tbaa !216
  %7 = icmp slt i32 %6, 1, !dbg !218
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !53, metadata !195), !dbg !211
  %8 = load i32* %ncol, align 4
  %9 = icmp slt i32 %8, 1, !dbg !219
  %or.cond = or i1 %7, %9, !dbg !220
  br i1 %or.cond, label %44, label %.preheader, !dbg !220

.preheader:                                       ; preds = %5
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !54, metadata !195), !dbg !208
  %10 = icmp sgt i32 %6, 1, !dbg !221
  br i1 %10, label %.lr.ph8, label %._crit_edge9, !dbg !224

.lr.ph8:                                          ; preds = %.preheader
  %11 = load i32** %rowind, align 8, !dbg !225, !tbaa !202
  %12 = sext i32 %6 to i64, !dbg !224
  %.pre = load i32* %11, align 4, !dbg !225, !tbaa !216
  br label %15, !dbg !224

; <label>:13                                      ; preds = %15
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !54, metadata !195), !dbg !208
  %14 = icmp slt i64 %indvars.iv.next14, %12, !dbg !221
  br i1 %14, label %15, label %._crit_edge9, !dbg !224

; <label>:15                                      ; preds = %.lr.ph8, %13
  %16 = phi i32 [ %.pre, %.lr.ph8 ], [ %18, %13 ], !dbg !228
  %indvars.iv13 = phi i64 [ 1, %.lr.ph8 ], [ %indvars.iv.next14, %13 ]
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !58, metadata !195), !dbg !209
  %17 = getelementptr inbounds i32* %11, i64 %indvars.iv13, !dbg !229
  %18 = load i32* %17, align 4, !dbg !229, !tbaa !216
  %19 = icmp sgt i32 %16, %18, !dbg !230
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !224
  br i1 %19, label %._crit_edge9, label %13, !dbg !231

._crit_edge9:                                     ; preds = %13, %15, %.preheader
  %sortRows.0 = phi i32 [ 0, %.preheader ], [ 0, %13 ], [ 1, %15 ]
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !52, metadata !195), !dbg !232
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !53, metadata !195), !dbg !211
  %20 = icmp sgt i32 %8, 1, !dbg !233
  br i1 %20, label %.lr.ph, label %._crit_edge, !dbg !236

.lr.ph:                                           ; preds = %._crit_edge9
  %21 = load i32** %colind, align 8, !dbg !237, !tbaa !202
  %22 = sext i32 %8 to i64, !dbg !236
  %.pre15 = load i32* %21, align 4, !dbg !237, !tbaa !216
  br label %25, !dbg !236

; <label>:23                                      ; preds = %25
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !53, metadata !195), !dbg !211
  %24 = icmp slt i64 %indvars.iv.next, %22, !dbg !233
  br i1 %24, label %25, label %._crit_edge, !dbg !236

; <label>:25                                      ; preds = %.lr.ph, %23
  %26 = phi i32 [ %.pre15, %.lr.ph ], [ %28, %23 ], !dbg !240
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %23 ]
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !57, metadata !195), !dbg !212
  %27 = getelementptr inbounds i32* %21, i64 %indvars.iv, !dbg !241
  %28 = load i32* %27, align 4, !dbg !241, !tbaa !216
  %29 = icmp sgt i32 %26, %28, !dbg !242
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !236
  br i1 %29, label %._crit_edge, label %23, !dbg !243

._crit_edge:                                      ; preds = %23, %25, %._crit_edge9
  %sortColumns.0 = phi i32 [ 0, %._crit_edge9 ], [ 0, %23 ], [ 1, %25 ]
  %30 = or i32 %sortColumns.0, %sortRows.0, !dbg !244
  %31 = icmp eq i32 %30, 0, !dbg !244
  br i1 %31, label %44, label %32, !dbg !244

; <label>:32                                      ; preds = %._crit_edge
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !40, metadata !195), !dbg !246
  call void @A2_setDefaultFields(%struct._A2* %a2) #7, !dbg !247
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !40, metadata !195), !dbg !246
  call void @DenseMtx_setA2(%struct._DenseMtx* %mtx, %struct._A2* %a2) #7, !dbg !248
  %33 = icmp eq i32 %sortRows.0, 1, !dbg !249
  br i1 %33, label %34, label %38, !dbg !251

; <label>:34                                      ; preds = %32
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !54, metadata !195), !dbg !208
  %35 = load i32* %nrow, align 4, !dbg !252, !tbaa !216
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !58, metadata !195), !dbg !209
  %36 = load i32** %rowind, align 8, !dbg !254, !tbaa !202
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !40, metadata !195), !dbg !246
  %37 = call i32 @A2_sortRowsUp(%struct._A2* %a2, i32 %35, i32* %36) #7, !dbg !255
  br label %38, !dbg !256

; <label>:38                                      ; preds = %34, %32
  %39 = icmp eq i32 %sortColumns.0, 1, !dbg !257
  br i1 %39, label %40, label %44, !dbg !259

; <label>:40                                      ; preds = %38
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !53, metadata !195), !dbg !211
  %41 = load i32* %ncol, align 4, !dbg !260, !tbaa !216
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !57, metadata !195), !dbg !212
  %42 = load i32** %colind, align 8, !dbg !262, !tbaa !202
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !40, metadata !195), !dbg !246
  %43 = call i32 @A2_sortColumnsUp(%struct._A2* %a2, i32 %41, i32* %42) #7, !dbg !263
  br label %44, !dbg !264

; <label>:44                                      ; preds = %38, %40, %._crit_edge, %5
  ret void, !dbg !265
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @DenseMtx_rowIndices(%struct._DenseMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @DenseMtx_columnIndices(%struct._DenseMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @A2_setDefaultFields(%struct._A2*) #3

; Function Attrs: optsize
declare void @DenseMtx_setA2(%struct._DenseMtx*, %struct._A2*) #3

; Function Attrs: optsize
declare i32 @A2_sortRowsUp(%struct._A2*, i32, i32*) #3

; Function Attrs: optsize
declare i32 @A2_sortColumnsUp(%struct._A2*, i32, i32*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_copyRow(%struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtxB, i64 0, metadata !63, metadata !195), !dbg !266
  tail call void @llvm.dbg.value(metadata i32 %irowB, i64 0, metadata !64, metadata !195), !dbg !267
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtxA, i64 0, metadata !65, metadata !195), !dbg !268
  tail call void @llvm.dbg.value(metadata i32 %irowA, i64 0, metadata !66, metadata !195), !dbg !269
  %1 = icmp eq %struct._DenseMtx* %mtxB, null, !dbg !270
  %2 = icmp slt i32 %irowB, 0, !dbg !272
  %or.cond = or i1 %1, %2, !dbg !273
  br i1 %or.cond, label %19, label %3, !dbg !273

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 3, !dbg !274
  %5 = load i32* %4, align 4, !dbg !274, !tbaa !275
  %6 = icmp sle i32 %5, %irowB, !dbg !278
  %7 = icmp eq %struct._DenseMtx* %mtxA, null, !dbg !279
  %or.cond3 = or i1 %7, %6, !dbg !280
  %8 = icmp slt i32 %irowA, 0, !dbg !281
  %or.cond5 = or i1 %8, %or.cond3, !dbg !280
  br i1 %or.cond5, label %19, label %9, !dbg !280

; <label>:9                                       ; preds = %3
  %10 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 3, !dbg !282
  %11 = load i32* %10, align 4, !dbg !282, !tbaa !275
  %12 = icmp sgt i32 %11, %irowA, !dbg !283
  br i1 %12, label %13, label %19, !dbg !284

; <label>:13                                      ; preds = %9
  %14 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 4, !dbg !285
  %15 = load i32* %14, align 4, !dbg !285, !tbaa !286
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !74, metadata !195), !dbg !287
  %16 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 4, !dbg !288
  %17 = load i32* %16, align 4, !dbg !288, !tbaa !286
  %18 = icmp eq i32 %15, %17, !dbg !289
  br i1 %18, label %22, label %19, !dbg !290

; <label>:19                                      ; preds = %13, %9, %3, %0
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !291, !tbaa !202
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #7, !dbg !293
  tail call void @exit(i32 -1) #8, !dbg !294
  unreachable, !dbg !294

; <label>:22                                      ; preds = %13
  %23 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 6, !dbg !295
  %24 = load i32* %23, align 4, !dbg !295, !tbaa !296
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !70, metadata !195), !dbg !297
  %25 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 6, !dbg !298
  %26 = load i32* %25, align 4, !dbg !298, !tbaa !296
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !71, metadata !195), !dbg !299
  %27 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 0, !dbg !300
  %28 = load i32* %27, align 4, !dbg !300, !tbaa !302
  switch i32 %28, label %.loopexit [
    i32 1, label %29
    i32 2, label %57
  ], !dbg !303

; <label>:29                                      ; preds = %22
  %30 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 0, !dbg !304
  %31 = load i32* %30, align 4, !dbg !304, !tbaa !302
  %32 = icmp eq i32 %31, 1, !dbg !304
  br i1 %32, label %33, label %.loopexit, !dbg !305

; <label>:33                                      ; preds = %29
  %34 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 9, !dbg !306
  %35 = load double** %34, align 8, !dbg !306, !tbaa !308
  %36 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 5, !dbg !309
  %37 = load i32* %36, align 4, !dbg !309, !tbaa !310
  %38 = mul nsw i32 %37, %irowA, !dbg !311
  %39 = sext i32 %38 to i64, !dbg !312
  %40 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 9, !dbg !313
  %41 = load double** %40, align 8, !dbg !313, !tbaa !308
  %42 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 5, !dbg !314
  %43 = load i32* %42, align 4, !dbg !314, !tbaa !310
  %44 = mul nsw i32 %43, %irowB, !dbg !315
  %45 = sext i32 %44 to i64, !dbg !316
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !73, metadata !195), !dbg !317
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !72, metadata !195), !dbg !318
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !69, metadata !195), !dbg !319
  %46 = icmp sgt i32 %15, 0, !dbg !320
  br i1 %46, label %.lr.ph, label %.loopexit, !dbg !323

.lr.ph:                                           ; preds = %33
  %47 = sext i32 %26 to i64
  %48 = sext i32 %24 to i64
  %49 = add i32 %15, -1, !dbg !323
  br label %50, !dbg !323

; <label>:50                                      ; preds = %50, %.lr.ph
  %indvars.iv19 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next20, %50 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %50 ]
  %ii.012 = phi i32 [ 0, %.lr.ph ], [ %56, %50 ]
  %.sum9 = add nsw i64 %indvars.iv19, %39, !dbg !324
  %51 = getelementptr inbounds double* %35, i64 %.sum9, !dbg !324
  %52 = bitcast double* %51 to i64*, !dbg !324
  %53 = load i64* %52, align 8, !dbg !324, !tbaa !326
  %.sum10 = add nsw i64 %indvars.iv, %45, !dbg !328
  %54 = getelementptr inbounds double* %41, i64 %.sum10, !dbg !328
  %55 = bitcast double* %54 to i64*, !dbg !329
  store i64 %53, i64* %55, align 8, !dbg !329, !tbaa !326
  %56 = add nuw nsw i32 %ii.012, 1, !dbg !330
  tail call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !69, metadata !195), !dbg !319
  %indvars.iv.next20 = add i64 %indvars.iv19, %48, !dbg !323
  %indvars.iv.next = add i64 %indvars.iv, %47, !dbg !323
  %exitcond = icmp eq i32 %ii.012, %49, !dbg !323
  br i1 %exitcond, label %.loopexit, label %50, !dbg !323

; <label>:57                                      ; preds = %22
  %58 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 0, !dbg !331
  %59 = load i32* %58, align 4, !dbg !331, !tbaa !302
  %60 = icmp eq i32 %59, 2, !dbg !331
  br i1 %60, label %61, label %.loopexit, !dbg !333

; <label>:61                                      ; preds = %57
  %62 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 9, !dbg !334
  %63 = load double** %62, align 8, !dbg !334, !tbaa !308
  %64 = shl i32 %irowA, 1, !dbg !336
  %65 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 5, !dbg !337
  %66 = load i32* %65, align 4, !dbg !337, !tbaa !310
  %67 = mul nsw i32 %64, %66, !dbg !338
  %68 = sext i32 %67 to i64, !dbg !339
  %69 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 9, !dbg !340
  %70 = load double** %69, align 8, !dbg !340, !tbaa !308
  %71 = shl i32 %irowB, 1, !dbg !341
  %72 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 5, !dbg !342
  %73 = load i32* %72, align 4, !dbg !342, !tbaa !310
  %74 = mul nsw i32 %71, %73, !dbg !343
  %75 = sext i32 %74 to i64, !dbg !344
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !73, metadata !195), !dbg !317
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !72, metadata !195), !dbg !318
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !69, metadata !195), !dbg !319
  %76 = icmp sgt i32 %15, 0, !dbg !345
  br i1 %76, label %.lr.ph18, label %.loopexit, !dbg !348

.lr.ph18:                                         ; preds = %61
  %77 = sext i32 %26 to i64
  %78 = sext i32 %24 to i64
  %79 = add i32 %15, -1, !dbg !348
  br label %80, !dbg !348

; <label>:80                                      ; preds = %80, %.lr.ph18
  %indvars.iv23 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next24, %80 ]
  %indvars.iv21 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next22, %80 ]
  %ii.115 = phi i32 [ 0, %.lr.ph18 ], [ %101, %80 ]
  %81 = trunc i64 %indvars.iv23 to i32, !dbg !349
  %82 = shl nsw i32 %81, 1, !dbg !349
  %83 = sext i32 %82 to i64, !dbg !351
  %.sum = add nsw i64 %83, %68, !dbg !351
  %84 = getelementptr inbounds double* %63, i64 %.sum, !dbg !351
  %85 = bitcast double* %84 to i64*, !dbg !351
  %86 = load i64* %85, align 8, !dbg !351, !tbaa !326
  %87 = trunc i64 %indvars.iv21 to i32, !dbg !352
  %88 = shl nsw i32 %87, 1, !dbg !352
  %89 = sext i32 %88 to i64, !dbg !353
  %.sum6 = add nsw i64 %89, %75, !dbg !353
  %90 = getelementptr inbounds double* %70, i64 %.sum6, !dbg !353
  %91 = bitcast double* %90 to i64*, !dbg !354
  store i64 %86, i64* %91, align 8, !dbg !354, !tbaa !326
  %92 = or i32 %82, 1, !dbg !355
  %93 = sext i32 %92 to i64, !dbg !356
  %.sum7 = add nsw i64 %93, %68, !dbg !356
  %94 = getelementptr inbounds double* %63, i64 %.sum7, !dbg !356
  %95 = bitcast double* %94 to i64*, !dbg !356
  %96 = load i64* %95, align 8, !dbg !356, !tbaa !326
  %97 = or i32 %88, 1, !dbg !357
  %98 = sext i32 %97 to i64, !dbg !358
  %.sum8 = add nsw i64 %98, %75, !dbg !358
  %99 = getelementptr inbounds double* %70, i64 %.sum8, !dbg !358
  %100 = bitcast double* %99 to i64*, !dbg !359
  store i64 %96, i64* %100, align 8, !dbg !359, !tbaa !326
  %101 = add nuw nsw i32 %ii.115, 1, !dbg !360
  tail call void @llvm.dbg.value(metadata i32 %101, i64 0, metadata !69, metadata !195), !dbg !319
  %indvars.iv.next24 = add i64 %indvars.iv23, %78, !dbg !348
  %indvars.iv.next22 = add i64 %indvars.iv21, %77, !dbg !348
  %exitcond25 = icmp eq i32 %ii.115, %79, !dbg !348
  br i1 %exitcond25, label %.loopexit, label %80, !dbg !348

.loopexit:                                        ; preds = %80, %50, %22, %29, %61, %33, %57
  ret void, !dbg !361
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_copyRowAndIndex(%struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtxB, i64 0, metadata !77, metadata !195), !dbg !362
  tail call void @llvm.dbg.value(metadata i32 %irowB, i64 0, metadata !78, metadata !195), !dbg !363
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtxA, i64 0, metadata !79, metadata !195), !dbg !364
  tail call void @llvm.dbg.value(metadata i32 %irowA, i64 0, metadata !80, metadata !195), !dbg !365
  %1 = icmp eq %struct._DenseMtx* %mtxB, null, !dbg !366
  %2 = icmp slt i32 %irowB, 0, !dbg !368
  %or.cond = or i1 %1, %2, !dbg !369
  br i1 %or.cond, label %19, label %3, !dbg !369

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 3, !dbg !370
  %5 = load i32* %4, align 4, !dbg !370, !tbaa !275
  %6 = icmp sle i32 %5, %irowB, !dbg !371
  %7 = icmp eq %struct._DenseMtx* %mtxA, null, !dbg !372
  %or.cond3 = or i1 %7, %6, !dbg !373
  %8 = icmp slt i32 %irowA, 0, !dbg !374
  %or.cond5 = or i1 %8, %or.cond3, !dbg !373
  br i1 %or.cond5, label %19, label %9, !dbg !373

; <label>:9                                       ; preds = %3
  %10 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 3, !dbg !375
  %11 = load i32* %10, align 4, !dbg !375, !tbaa !275
  %12 = icmp sgt i32 %11, %irowA, !dbg !376
  br i1 %12, label %13, label %19, !dbg !377

; <label>:13                                      ; preds = %9
  %14 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 4, !dbg !378
  %15 = load i32* %14, align 4, !dbg !378, !tbaa !286
  %16 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 4, !dbg !379
  %17 = load i32* %16, align 4, !dbg !379, !tbaa !286
  %18 = icmp eq i32 %15, %17, !dbg !380
  br i1 %18, label %22, label %19, !dbg !381

; <label>:19                                      ; preds = %13, %9, %3, %0
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !382, !tbaa !202
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #7, !dbg !384
  tail call void @exit(i32 -1) #8, !dbg !385
  unreachable, !dbg !385

; <label>:22                                      ; preds = %13
  tail call void @DenseMtx_copyRow(%struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #9, !dbg !386
  %23 = sext i32 %irowA to i64, !dbg !387
  %24 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 7, !dbg !388
  %25 = load i32** %24, align 8, !dbg !388, !tbaa !389
  %26 = getelementptr inbounds i32* %25, i64 %23, !dbg !387
  %27 = load i32* %26, align 4, !dbg !387, !tbaa !216
  %28 = sext i32 %irowB to i64, !dbg !390
  %29 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 7, !dbg !391
  %30 = load i32** %29, align 8, !dbg !391, !tbaa !389
  %31 = getelementptr inbounds i32* %30, i64 %28, !dbg !390
  store i32 %27, i32* %31, align 4, !dbg !392, !tbaa !216
  ret void, !dbg !393
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_addRow(%struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtxB, i64 0, metadata !83, metadata !195), !dbg !394
  tail call void @llvm.dbg.value(metadata i32 %irowB, i64 0, metadata !84, metadata !195), !dbg !395
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtxA, i64 0, metadata !85, metadata !195), !dbg !396
  tail call void @llvm.dbg.value(metadata i32 %irowA, i64 0, metadata !86, metadata !195), !dbg !397
  %1 = icmp eq %struct._DenseMtx* %mtxB, null, !dbg !398
  %2 = icmp slt i32 %irowB, 0, !dbg !400
  %or.cond = or i1 %1, %2, !dbg !401
  br i1 %or.cond, label %19, label %3, !dbg !401

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 3, !dbg !402
  %5 = load i32* %4, align 4, !dbg !402, !tbaa !275
  %6 = icmp sle i32 %5, %irowB, !dbg !403
  %7 = icmp eq %struct._DenseMtx* %mtxA, null, !dbg !404
  %or.cond3 = or i1 %7, %6, !dbg !405
  %8 = icmp slt i32 %irowA, 0, !dbg !406
  %or.cond5 = or i1 %8, %or.cond3, !dbg !405
  br i1 %or.cond5, label %19, label %9, !dbg !405

; <label>:9                                       ; preds = %3
  %10 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 3, !dbg !407
  %11 = load i32* %10, align 4, !dbg !407, !tbaa !275
  %12 = icmp sgt i32 %11, %irowA, !dbg !408
  br i1 %12, label %13, label %19, !dbg !409

; <label>:13                                      ; preds = %9
  %14 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 4, !dbg !410
  %15 = load i32* %14, align 4, !dbg !410, !tbaa !286
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !94, metadata !195), !dbg !411
  %16 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 4, !dbg !412
  %17 = load i32* %16, align 4, !dbg !412, !tbaa !286
  %18 = icmp eq i32 %15, %17, !dbg !413
  br i1 %18, label %22, label %19, !dbg !414

; <label>:19                                      ; preds = %13, %9, %3, %0
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !415, !tbaa !202
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([58 x i8]* @.str2, i64 0, i64 0), %struct._DenseMtx* %mtxB, i32 %irowB, %struct._DenseMtx* %mtxA, i32 %irowA) #7, !dbg !417
  tail call void @exit(i32 -1) #8, !dbg !418
  unreachable, !dbg !418

; <label>:22                                      ; preds = %13
  %23 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 6, !dbg !419
  %24 = load i32* %23, align 4, !dbg !419, !tbaa !296
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !90, metadata !195), !dbg !420
  %25 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 6, !dbg !421
  %26 = load i32* %25, align 4, !dbg !421, !tbaa !296
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !91, metadata !195), !dbg !422
  %27 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 0, !dbg !423
  %28 = load i32* %27, align 4, !dbg !423, !tbaa !302
  switch i32 %28, label %.loopexit [
    i32 1, label %29
    i32 2, label %57
  ], !dbg !425

; <label>:29                                      ; preds = %22
  %30 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 0, !dbg !426
  %31 = load i32* %30, align 4, !dbg !426, !tbaa !302
  %32 = icmp eq i32 %31, 1, !dbg !426
  br i1 %32, label %33, label %.loopexit, !dbg !427

; <label>:33                                      ; preds = %29
  %34 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 9, !dbg !428
  %35 = load double** %34, align 8, !dbg !428, !tbaa !308
  %36 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 5, !dbg !430
  %37 = load i32* %36, align 4, !dbg !430, !tbaa !310
  %38 = mul nsw i32 %37, %irowA, !dbg !431
  %39 = sext i32 %38 to i64, !dbg !432
  %40 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 9, !dbg !433
  %41 = load double** %40, align 8, !dbg !433, !tbaa !308
  %42 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 5, !dbg !434
  %43 = load i32* %42, align 4, !dbg !434, !tbaa !310
  %44 = mul nsw i32 %43, %irowB, !dbg !435
  %45 = sext i32 %44 to i64, !dbg !436
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !195), !dbg !437
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !92, metadata !195), !dbg !438
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !89, metadata !195), !dbg !439
  %46 = icmp sgt i32 %15, 0, !dbg !440
  br i1 %46, label %.lr.ph, label %.loopexit, !dbg !443

.lr.ph:                                           ; preds = %33
  %47 = sext i32 %26 to i64
  %48 = sext i32 %24 to i64
  %49 = add i32 %15, -1, !dbg !443
  br label %50, !dbg !443

; <label>:50                                      ; preds = %50, %.lr.ph
  %indvars.iv19 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next20, %50 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %50 ]
  %ii.012 = phi i32 [ 0, %.lr.ph ], [ %56, %50 ]
  %.sum9 = add nsw i64 %indvars.iv19, %39, !dbg !444
  %51 = getelementptr inbounds double* %35, i64 %.sum9, !dbg !444
  %52 = load double* %51, align 8, !dbg !444, !tbaa !326
  %.sum10 = add nsw i64 %indvars.iv, %45, !dbg !446
  %53 = getelementptr inbounds double* %41, i64 %.sum10, !dbg !446
  %54 = load double* %53, align 8, !dbg !447, !tbaa !326
  %55 = fadd double %52, %54, !dbg !447
  store double %55, double* %53, align 8, !dbg !447, !tbaa !326
  %56 = add nuw nsw i32 %ii.012, 1, !dbg !448
  tail call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !89, metadata !195), !dbg !439
  %indvars.iv.next20 = add i64 %indvars.iv19, %48, !dbg !443
  %indvars.iv.next = add i64 %indvars.iv, %47, !dbg !443
  %exitcond = icmp eq i32 %ii.012, %49, !dbg !443
  br i1 %exitcond, label %.loopexit, label %50, !dbg !443

; <label>:57                                      ; preds = %22
  %58 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 0, !dbg !449
  %59 = load i32* %58, align 4, !dbg !449, !tbaa !302
  %60 = icmp eq i32 %59, 2, !dbg !449
  br i1 %60, label %61, label %.loopexit, !dbg !451

; <label>:61                                      ; preds = %57
  %62 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 9, !dbg !452
  %63 = load double** %62, align 8, !dbg !452, !tbaa !308
  %64 = shl i32 %irowA, 1, !dbg !454
  %65 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 5, !dbg !455
  %66 = load i32* %65, align 4, !dbg !455, !tbaa !310
  %67 = mul nsw i32 %64, %66, !dbg !456
  %68 = sext i32 %67 to i64, !dbg !457
  %69 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 9, !dbg !458
  %70 = load double** %69, align 8, !dbg !458, !tbaa !308
  %71 = shl i32 %irowB, 1, !dbg !459
  %72 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 5, !dbg !460
  %73 = load i32* %72, align 4, !dbg !460, !tbaa !310
  %74 = mul nsw i32 %71, %73, !dbg !461
  %75 = sext i32 %74 to i64, !dbg !462
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !195), !dbg !437
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !92, metadata !195), !dbg !438
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !89, metadata !195), !dbg !439
  %76 = icmp sgt i32 %15, 0, !dbg !463
  br i1 %76, label %.lr.ph18, label %.loopexit, !dbg !466

.lr.ph18:                                         ; preds = %61
  %77 = sext i32 %26 to i64
  %78 = sext i32 %24 to i64
  %79 = add i32 %15, -1, !dbg !466
  br label %80, !dbg !466

; <label>:80                                      ; preds = %80, %.lr.ph18
  %indvars.iv23 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next24, %80 ]
  %indvars.iv21 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next22, %80 ]
  %ii.115 = phi i32 [ 0, %.lr.ph18 ], [ %101, %80 ]
  %81 = trunc i64 %indvars.iv23 to i32, !dbg !467
  %82 = shl nsw i32 %81, 1, !dbg !467
  %83 = sext i32 %82 to i64, !dbg !469
  %.sum = add nsw i64 %83, %68, !dbg !469
  %84 = getelementptr inbounds double* %63, i64 %.sum, !dbg !469
  %85 = load double* %84, align 8, !dbg !469, !tbaa !326
  %86 = trunc i64 %indvars.iv21 to i32, !dbg !470
  %87 = shl nsw i32 %86, 1, !dbg !470
  %88 = sext i32 %87 to i64, !dbg !471
  %.sum6 = add nsw i64 %88, %75, !dbg !471
  %89 = getelementptr inbounds double* %70, i64 %.sum6, !dbg !471
  %90 = load double* %89, align 8, !dbg !472, !tbaa !326
  %91 = fadd double %85, %90, !dbg !472
  store double %91, double* %89, align 8, !dbg !472, !tbaa !326
  %92 = or i32 %82, 1, !dbg !473
  %93 = sext i32 %92 to i64, !dbg !474
  %.sum7 = add nsw i64 %93, %68, !dbg !474
  %94 = getelementptr inbounds double* %63, i64 %.sum7, !dbg !474
  %95 = load double* %94, align 8, !dbg !474, !tbaa !326
  %96 = or i32 %87, 1, !dbg !475
  %97 = sext i32 %96 to i64, !dbg !476
  %.sum8 = add nsw i64 %97, %75, !dbg !476
  %98 = getelementptr inbounds double* %70, i64 %.sum8, !dbg !476
  %99 = load double* %98, align 8, !dbg !477, !tbaa !326
  %100 = fadd double %95, %99, !dbg !477
  store double %100, double* %98, align 8, !dbg !477, !tbaa !326
  %101 = add nuw nsw i32 %ii.115, 1, !dbg !478
  tail call void @llvm.dbg.value(metadata i32 %101, i64 0, metadata !89, metadata !195), !dbg !439
  %indvars.iv.next24 = add i64 %indvars.iv23, %78, !dbg !466
  %indvars.iv.next22 = add i64 %indvars.iv21, %77, !dbg !466
  %exitcond25 = icmp eq i32 %ii.115, %79, !dbg !466
  br i1 %exitcond25, label %.loopexit, label %80, !dbg !466

.loopexit:                                        ; preds = %80, %50, %22, %29, %61, %33, %57
  ret void, !dbg !479
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_zero(%struct._DenseMtx* %mtx) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !97, metadata !195), !dbg !480
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !481
  br i1 %1, label %2, label %5, !dbg !483

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !484, !tbaa !202
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), %struct._DenseMtx* null) #7, !dbg !486
  tail call void @exit(i32 -1) #8, !dbg !487
  unreachable, !dbg !487

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !488
  %7 = load i32* %6, align 4, !dbg !488, !tbaa !302
  switch i32 %7, label %25 [
    i32 1, label %8
    i32 2, label %16
  ], !dbg !490

; <label>:8                                       ; preds = %5
  %9 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !491
  %10 = load i32* %9, align 4, !dbg !491, !tbaa !275
  %11 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !493
  %12 = load i32* %11, align 4, !dbg !493, !tbaa !286
  %13 = mul nsw i32 %12, %10, !dbg !494
  %14 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !495
  %15 = load double** %14, align 8, !dbg !495, !tbaa !308
  tail call void @DVzero(i32 %13, double* %15) #7, !dbg !496
  br label %25, !dbg !497

; <label>:16                                      ; preds = %5
  %17 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !498
  %18 = load i32* %17, align 4, !dbg !498, !tbaa !275
  %19 = shl i32 %18, 1, !dbg !501
  %20 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !502
  %21 = load i32* %20, align 4, !dbg !502, !tbaa !286
  %22 = mul nsw i32 %19, %21, !dbg !503
  %23 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !504
  %24 = load double** %23, align 8, !dbg !504, !tbaa !308
  tail call void @DVzero(i32 %22, double* %24) #7, !dbg !505
  br label %25, !dbg !506

; <label>:25                                      ; preds = %5, %16, %8
  ret void, !dbg !507
}

; Function Attrs: optsize
declare void @DVzero(i32, double*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_fillRandomEntries(%struct._DenseMtx* %mtx, %struct._Drand* %drand) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !116, metadata !195), !dbg !508
  tail call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !117, metadata !195), !dbg !509
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !510
  %2 = icmp eq %struct._Drand* %drand, null, !dbg !512
  %or.cond = or i1 %1, %2, !dbg !513
  br i1 %or.cond, label %3, label %6, !dbg !513

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !514, !tbaa !202
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._Drand* %drand) #7, !dbg !516
  tail call void @exit(i32 -1) #8, !dbg !517
  unreachable, !dbg !517

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !518
  %8 = load i32* %7, align 4, !dbg !518, !tbaa !302
  switch i32 %8, label %26 [
    i32 1, label %9
    i32 2, label %17
  ], !dbg !520

; <label>:9                                       ; preds = %6
  %10 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !521
  %11 = load i32* %10, align 4, !dbg !521, !tbaa !275
  %12 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !523
  %13 = load i32* %12, align 4, !dbg !523, !tbaa !286
  %14 = mul nsw i32 %13, %11, !dbg !524
  %15 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !525
  %16 = load double** %15, align 8, !dbg !525, !tbaa !308
  tail call void @Drand_fillDvector(%struct._Drand* %drand, i32 %14, double* %16) #7, !dbg !526
  br label %26, !dbg !527

; <label>:17                                      ; preds = %6
  %18 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !528
  %19 = load i32* %18, align 4, !dbg !528, !tbaa !275
  %20 = shl i32 %19, 1, !dbg !531
  %21 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !532
  %22 = load i32* %21, align 4, !dbg !532, !tbaa !286
  %23 = mul nsw i32 %20, %22, !dbg !533
  %24 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !534
  %25 = load double** %24, align 8, !dbg !534, !tbaa !308
  tail call void @Drand_fillDvector(%struct._Drand* %drand, i32 %23, double* %25) #7, !dbg !535
  br label %26, !dbg !536

; <label>:26                                      ; preds = %6, %17, %9
  ret void, !dbg !537
}

; Function Attrs: optsize
declare void @Drand_fillDvector(%struct._Drand*, i32, double*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_checksums(%struct._DenseMtx* %mtx, double* %sums) #0 {
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !122, metadata !195), !dbg !538
  tail call void @llvm.dbg.value(metadata double* %sums, i64 0, metadata !123, metadata !195), !dbg !539
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !540
  %2 = icmp eq double* %sums, null, !dbg !542
  %or.cond = or i1 %1, %2, !dbg !543
  br i1 %or.cond, label %3, label %6, !dbg !543

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !544, !tbaa !202
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), %struct._DenseMtx* %mtx, double* %sums) #7, !dbg !546
  tail call void @exit(i32 -1) #8, !dbg !547
  unreachable, !dbg !547

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds double* %sums, i64 2, !dbg !548
  %8 = getelementptr inbounds double* %sums, i64 1, !dbg !549
  tail call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !128, metadata !195), !dbg !550
  tail call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !130, metadata !195), !dbg !551
  %9 = bitcast double* %sums to i8*, !dbg !552
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 24, i32 8, i1 false), !dbg !553
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #7, !dbg !552
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !125, metadata !195), !dbg !554
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !128, metadata !195), !dbg !550
  %10 = load i32* %nrow, align 4, !dbg !555, !tbaa !216
  %11 = icmp sgt i32 %10, 0, !dbg !558
  br i1 %11, label %.lr.ph11, label %21, !dbg !559

.lr.ph11:                                         ; preds = %6
  %12 = load i32** %rowind, align 8, !dbg !560, !tbaa !202
  %sums.promoted = load double* %sums, align 8, !dbg !562, !tbaa !326
  %13 = sext i32 %10 to i64, !dbg !559
  br label %14, !dbg !559

; <label>:14                                      ; preds = %.lr.ph11, %14
  %indvars.iv21 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next22, %14 ]
  %15 = phi double [ %sums.promoted, %.lr.ph11 ], [ %19, %14 ], !dbg !560
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !130, metadata !195), !dbg !551
  %16 = getelementptr inbounds i32* %12, i64 %indvars.iv21, !dbg !560
  %17 = load i32* %16, align 4, !dbg !560, !tbaa !216
  %18 = sitofp i32 %17 to double, !dbg !560
  %19 = fadd double %15, %18, !dbg !562
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !dbg !559
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !128, metadata !195), !dbg !550
  %20 = icmp slt i64 %indvars.iv.next22, %13, !dbg !558
  br i1 %20, label %14, label %._crit_edge12, !dbg !559

._crit_edge12:                                    ; preds = %14
  store double %19, double* %sums, align 8, !dbg !562, !tbaa !326
  br label %21, !dbg !559

; <label>:21                                      ; preds = %._crit_edge12, %6
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !126, metadata !195), !dbg !563
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !129, metadata !195), !dbg !564
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #7, !dbg !565
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !125, metadata !195), !dbg !554
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !126, metadata !195), !dbg !563
  %22 = load i32* %ncol, align 4, !dbg !566, !tbaa !216
  %23 = icmp sgt i32 %22, 0, !dbg !569
  br i1 %23, label %.lr.ph8, label %33, !dbg !570

.lr.ph8:                                          ; preds = %21
  %24 = load i32** %colind, align 8, !dbg !571, !tbaa !202
  %.promoted = load double* %8, align 8, !dbg !573, !tbaa !326
  %25 = sext i32 %22 to i64, !dbg !570
  br label %26, !dbg !570

; <label>:26                                      ; preds = %.lr.ph8, %26
  %indvars.iv19 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next20, %26 ]
  %27 = phi double [ %.promoted, %.lr.ph8 ], [ %31, %26 ], !dbg !571
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !129, metadata !195), !dbg !564
  %28 = getelementptr inbounds i32* %24, i64 %indvars.iv19, !dbg !571
  %29 = load i32* %28, align 4, !dbg !571, !tbaa !216
  %30 = sitofp i32 %29 to double, !dbg !571
  %31 = fadd double %27, %30, !dbg !573
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !570
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !126, metadata !195), !dbg !563
  %32 = icmp slt i64 %indvars.iv.next20, %25, !dbg !569
  br i1 %32, label %26, label %._crit_edge, !dbg !570

._crit_edge:                                      ; preds = %26
  store double %31, double* %8, align 8, !dbg !573, !tbaa !326
  br label %33, !dbg !570

; <label>:33                                      ; preds = %._crit_edge, %21
  %34 = call double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #7, !dbg !574
  call void @llvm.dbg.value(metadata double* %34, i64 0, metadata !124, metadata !195), !dbg !575
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !128, metadata !195), !dbg !550
  %35 = load i32* %nrow, align 4, !dbg !576, !tbaa !216
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !126, metadata !195), !dbg !563
  %36 = load i32* %ncol, align 4, !dbg !577, !tbaa !216
  %37 = mul i32 %36, %35, !dbg !578
  call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !127, metadata !195), !dbg !579
  %38 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !580
  %39 = load i32* %38, align 4, !dbg !580, !tbaa !302
  switch i32 %39, label %.loopexit [
    i32 1, label %.preheader
    i32 2, label %.preheader2
  ], !dbg !582

.preheader2:                                      ; preds = %33
  %40 = icmp sgt i32 %37, 0, !dbg !583
  br i1 %40, label %.lr.ph6, label %.loopexit, !dbg !588

.lr.ph6:                                          ; preds = %.preheader2
  %41 = add i32 %37, -1, !dbg !588
  br label %50, !dbg !588

.preheader:                                       ; preds = %33
  %42 = icmp sgt i32 %37, 0, !dbg !589
  br i1 %42, label %.lr.ph, label %.loopexit, !dbg !593

.lr.ph:                                           ; preds = %.preheader
  %43 = add i32 %37, -1, !dbg !593
  %.pre = load double* %7, align 8, !dbg !594, !tbaa !326
  br label %44, !dbg !593

; <label>:44                                      ; preds = %44, %.lr.ph
  %45 = phi double [ %.pre, %.lr.ph ], [ %49, %44 ], !dbg !596
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %44 ]
  %46 = getelementptr inbounds double* %34, i64 %indvars.iv, !dbg !596
  %47 = load double* %46, align 8, !dbg !596, !tbaa !326
  %48 = call double @fabs(double %47) #10, !dbg !597
  %49 = fadd double %48, %45, !dbg !594
  store double %49, double* %7, align 8, !dbg !594, !tbaa !326
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !593
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !593
  %exitcond = icmp eq i32 %lftr.wideiv, %43, !dbg !593
  br i1 %exitcond, label %.loopexit, label %44, !dbg !593

; <label>:50                                      ; preds = %50, %.lr.ph6
  %indvars.iv15 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next16, %50 ]
  %51 = trunc i64 %indvars.iv15 to i32, !dbg !598
  %52 = shl nsw i32 %51, 1, !dbg !598
  %53 = sext i32 %52 to i64, !dbg !600
  %54 = getelementptr inbounds double* %34, i64 %53, !dbg !600
  %55 = load double* %54, align 8, !dbg !600, !tbaa !326
  %56 = or i32 %52, 1, !dbg !601
  %57 = sext i32 %56 to i64, !dbg !602
  %58 = getelementptr inbounds double* %34, i64 %57, !dbg !602
  %59 = load double* %58, align 8, !dbg !602, !tbaa !326
  %60 = call double @Zabs(double %55, double %59) #7, !dbg !603
  %61 = load double* %7, align 8, !dbg !604, !tbaa !326
  %62 = fadd double %60, %61, !dbg !604
  store double %62, double* %7, align 8, !dbg !604, !tbaa !326
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !588
  %exitcond18 = icmp eq i32 %51, %41, !dbg !588
  br i1 %exitcond18, label %.loopexit, label %50, !dbg !588

.loopexit:                                        ; preds = %50, %44, %.preheader2, %.preheader, %33
  ret void, !dbg !605
}

; Function Attrs: optsize
declare double* @DenseMtx_entries(%struct._DenseMtx*) #3

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #4

; Function Attrs: optsize
declare double @Zabs(double, double) #3

; Function Attrs: nounwind optsize ssp uwtable
define double @DenseMtx_maxabs(%struct._DenseMtx* %mtx) #0 {
  %loc = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !135, metadata !195), !dbg !606
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !607
  br i1 %1, label %2, label %5, !dbg !609

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !610, !tbaa !202
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), %struct._DenseMtx* null) #7, !dbg !612
  tail call void @exit(i32 -1) #8, !dbg !613
  unreachable, !dbg !613

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !614
  %7 = load i32* %6, align 4, !dbg !614, !tbaa !302
  switch i32 %7, label %26 [
    i32 1, label %8
    i32 2, label %17
  ], !dbg !616

; <label>:8                                       ; preds = %5
  %9 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !617
  %10 = load i32* %9, align 4, !dbg !617, !tbaa !275
  %11 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !619
  %12 = load i32* %11, align 4, !dbg !619, !tbaa !286
  %13 = mul nsw i32 %12, %10, !dbg !620
  %14 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !621
  %15 = load double** %14, align 8, !dbg !621, !tbaa !308
  tail call void @llvm.dbg.value(metadata i32* %loc, i64 0, metadata !137, metadata !195), !dbg !622
  %16 = call double @DVmaxabs(i32 %13, double* %15, i32* %loc) #7, !dbg !623
  call void @llvm.dbg.value(metadata double %16, i64 0, metadata !136, metadata !195), !dbg !624
  br label %29, !dbg !625

; <label>:17                                      ; preds = %5
  %18 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !626
  %19 = load i32* %18, align 4, !dbg !626, !tbaa !275
  %20 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !629
  %21 = load i32* %20, align 4, !dbg !629, !tbaa !286
  %22 = mul nsw i32 %21, %19, !dbg !630
  %23 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !631
  %24 = load double** %23, align 8, !dbg !631, !tbaa !308
  %25 = tail call double @ZVmaxabs(i32 %22, double* %24) #7, !dbg !632
  tail call void @llvm.dbg.value(metadata double %25, i64 0, metadata !136, metadata !195), !dbg !624
  br label %29

; <label>:26                                      ; preds = %5
  %27 = load %struct.__sFILE** @__stderrp, align 8, !dbg !633, !tbaa !202
  %28 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %27, i8* getelementptr inbounds ([51 x i8]* @.str7, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %7) #7, !dbg !635
  tail call void @exit(i32 -1) #8, !dbg !636
  unreachable, !dbg !636

; <label>:29                                      ; preds = %17, %8
  %maxabs.0 = phi double [ %16, %8 ], [ %25, %17 ]
  ret double %maxabs.0, !dbg !637
}

; Function Attrs: optsize
declare double @DVmaxabs(i32, double*, i32*) #3

; Function Attrs: optsize
declare double @ZVmaxabs(i32, double*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_sub(%struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtxB, i64 0, metadata !142, metadata !195), !dbg !638
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtxA, i64 0, metadata !143, metadata !195), !dbg !639
  %1 = icmp eq %struct._DenseMtx* %mtxB, null, !dbg !640
  %2 = icmp eq %struct._DenseMtx* %mtxA, null, !dbg !642
  %or.cond = or i1 %1, %2, !dbg !643
  br i1 %or.cond, label %3, label %6, !dbg !643

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !644, !tbaa !202
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([49 x i8]* @.str8, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA) #7, !dbg !646
  tail call void @exit(i32 -1) #8, !dbg !647
  unreachable, !dbg !647

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 0, !dbg !648
  %8 = load i32* %7, align 4, !dbg !648, !tbaa !302
  %9 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 0, !dbg !650
  %10 = load i32* %9, align 4, !dbg !650, !tbaa !302
  %11 = icmp eq i32 %8, %10, !dbg !651
  br i1 %11, label %15, label %12, !dbg !652

; <label>:12                                      ; preds = %6
  %13 = load %struct.__sFILE** @__stderrp, align 8, !dbg !653, !tbaa !202
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([72 x i8]* @.str9, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA, i32 %8, i32 %10) #7, !dbg !655
  tail call void @exit(i32 -1) #8, !dbg !656
  unreachable, !dbg !656

; <label>:15                                      ; preds = %6
  %16 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 3, !dbg !657
  %17 = load i32* %16, align 4, !dbg !657, !tbaa !275
  %18 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 3, !dbg !659
  %19 = load i32* %18, align 4, !dbg !659, !tbaa !275
  %20 = icmp eq i32 %17, %19, !dbg !660
  br i1 %20, label %24, label %21, !dbg !661

; <label>:21                                      ; preds = %15
  %22 = load %struct.__sFILE** @__stderrp, align 8, !dbg !662, !tbaa !202
  %23 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([72 x i8]* @.str10, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA, i32 %17, i32 %19) #7, !dbg !664
  tail call void @exit(i32 -1) #8, !dbg !665
  unreachable, !dbg !665

; <label>:24                                      ; preds = %15
  %25 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 4, !dbg !666
  %26 = load i32* %25, align 4, !dbg !666, !tbaa !286
  %27 = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 4, !dbg !668
  %28 = load i32* %27, align 4, !dbg !668, !tbaa !286
  %29 = icmp eq i32 %26, %28, !dbg !669
  br i1 %29, label %33, label %30, !dbg !670

; <label>:30                                      ; preds = %24
  %31 = load %struct.__sFILE** @__stderrp, align 8, !dbg !671, !tbaa !202
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %31, i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA, i32 %26, i32 %28) #7, !dbg !673
  tail call void @exit(i32 -1) #8, !dbg !674
  unreachable, !dbg !674

; <label>:33                                      ; preds = %24
  %34 = getelementptr inbounds %struct._DenseMtx* %mtxB, i64 0, i32 9, !dbg !675
  %35 = load double** %34, align 8, !dbg !675, !tbaa !308
  %36 = icmp eq double* %35, null, !dbg !677
  %.phi.trans.insert = getelementptr inbounds %struct._DenseMtx* %mtxA, i64 0, i32 9
  %.pre = load double** %.phi.trans.insert, align 8, !dbg !678, !tbaa !308
  br i1 %36, label %._crit_edge, label %37, !dbg !680

; <label>:37                                      ; preds = %33
  %38 = icmp eq double* %.pre, null, !dbg !681
  br i1 %38, label %._crit_edge, label %42, !dbg !682

._crit_edge:                                      ; preds = %33, %37
  %39 = phi double* [ null, %37 ], [ %.pre, %33 ]
  %40 = load %struct.__sFILE** @__stderrp, align 8, !dbg !683, !tbaa !202
  %41 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %40, i8* getelementptr inbounds ([78 x i8]* @.str12, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA, double* %35, double* %39) #7, !dbg !684
  tail call void @exit(i32 -1) #8, !dbg !685
  unreachable, !dbg !685

; <label>:42                                      ; preds = %37
  switch i32 %8, label %47 [
    i32 1, label %43
    i32 2, label %45
  ], !dbg !686

; <label>:43                                      ; preds = %42
  %44 = mul nsw i32 %26, %17, !dbg !687
  tail call void @DVsub(i32 %44, double* %35, double* %.pre) #7, !dbg !690
  br label %50, !dbg !691

; <label>:45                                      ; preds = %42
  %46 = mul nsw i32 %26, %17, !dbg !692
  tail call void @ZVsub(i32 %46, double* %35, double* %.pre) #7, !dbg !695
  br label %50

; <label>:47                                      ; preds = %42
  %48 = load %struct.__sFILE** @__stderrp, align 8, !dbg !696, !tbaa !202
  %49 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %48, i8* getelementptr inbounds ([72 x i8]* @.str9, i64 0, i64 0), %struct._DenseMtx* %mtxB, %struct._DenseMtx* %mtxA, i32 %8, i32 %8) #7, !dbg !698
  tail call void @exit(i32 -1) #8, !dbg !699
  unreachable, !dbg !699

; <label>:50                                      ; preds = %45, %43
  ret void, !dbg !700
}

; Function Attrs: optsize
declare void @DVsub(i32, double*, double*) #3

; Function Attrs: optsize
declare void @ZVsub(i32, double*, double*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_copyRowIntoVector(%struct._DenseMtx* %mtx, i32 %irow, double* %vec) #0 {
  %nrow = alloca i32, align 4
  %ncol = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !148, metadata !195), !dbg !701
  tail call void @llvm.dbg.value(metadata i32 %irow, i64 0, metadata !149, metadata !195), !dbg !702
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !150, metadata !195), !dbg !703
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !704
  %2 = icmp slt i32 %irow, 0, !dbg !706
  %or.cond = or i1 %1, %2, !dbg !707
  %3 = icmp eq double* %vec, null, !dbg !708
  %or.cond3 = or i1 %or.cond, %3, !dbg !707
  br i1 %or.cond3, label %4, label %7, !dbg !707

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !709, !tbaa !202
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), i64 57, i64 1, %struct.__sFILE* %5), !dbg !711
  tail call void @exit(i32 -1) #8, !dbg !712
  unreachable, !dbg !712

; <label>:7                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !157, metadata !195), !dbg !713
  tail call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !160, metadata !195), !dbg !714
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #7, !dbg !715
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !157, metadata !195), !dbg !713
  %8 = load i32* %nrow, align 4, !dbg !716, !tbaa !216
  %9 = icmp sgt i32 %8, %irow, !dbg !718
  br i1 %9, label %13, label %10, !dbg !719

; <label>:10                                      ; preds = %7
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !720, !tbaa !202
  %12 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([69 x i8]* @.str14, i64 0, i64 0), i32 %irow, i32 %8) #7, !dbg !722
  call void @exit(i32 -1) #8, !dbg !723
  unreachable, !dbg !723

; <label>:13                                      ; preds = %7
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !158, metadata !195), !dbg !724
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !159, metadata !195), !dbg !725
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #7, !dbg !726
  %14 = call i32 @DenseMtx_rowIncrement(%struct._DenseMtx* %mtx) #7, !dbg !727
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !152, metadata !195), !dbg !728
  %15 = call i32 @DenseMtx_columnIncrement(%struct._DenseMtx* %mtx) #7, !dbg !729
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !153, metadata !195), !dbg !730
  %16 = call double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #7, !dbg !731
  call void @llvm.dbg.value(metadata double* %16, i64 0, metadata !151, metadata !195), !dbg !732
  %17 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !733
  %18 = load i32* %17, align 4, !dbg !733, !tbaa !302
  switch i32 %18, label %.loopexit [
    i32 1, label %19
    i32 2, label %33
  ], !dbg !735

; <label>:19                                      ; preds = %13
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !155, metadata !195), !dbg !736
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !154, metadata !195), !dbg !737
  call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !156, metadata !195), !dbg !738
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !158, metadata !195), !dbg !724
  %20 = load i32* %ncol, align 4, !dbg !739, !tbaa !216
  %21 = icmp sgt i32 %20, 0, !dbg !743
  br i1 %21, label %.lr.ph, label %.loopexit, !dbg !744

.lr.ph:                                           ; preds = %19
  %22 = mul nsw i32 %14, %irow, !dbg !745
  %23 = sext i32 %22 to i64
  %24 = sext i32 %15 to i64
  br label %25, !dbg !744

; <label>:25                                      ; preds = %.lr.ph, %25
  %indvars.iv12 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next13, %25 ]
  %indvars.iv = phi i64 [ %23, %.lr.ph ], [ %indvars.iv.next, %25 ]
  %jj.06 = phi i32 [ 0, %.lr.ph ], [ %31, %25 ]
  %26 = getelementptr inbounds double* %16, i64 %indvars.iv, !dbg !746
  %27 = bitcast double* %26 to i64*, !dbg !746
  %28 = load i64* %27, align 8, !dbg !746, !tbaa !326
  %29 = getelementptr inbounds double* %vec, i64 %indvars.iv12, !dbg !748
  %30 = bitcast double* %29 to i64*, !dbg !749
  store i64 %28, i64* %30, align 8, !dbg !749, !tbaa !326
  %31 = add nuw nsw i32 %jj.06, 1, !dbg !750
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !154, metadata !195), !dbg !737
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !744
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !155, metadata !195), !dbg !736
  %indvars.iv.next = add i64 %indvars.iv, %24, !dbg !744
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !158, metadata !195), !dbg !724
  %32 = icmp slt i32 %31, %20, !dbg !743
  br i1 %32, label %25, label %.loopexit, !dbg !744

; <label>:33                                      ; preds = %13
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !155, metadata !195), !dbg !736
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !154, metadata !195), !dbg !737
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !156, metadata !195), !dbg !738
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !158, metadata !195), !dbg !724
  %34 = load i32* %ncol, align 4, !dbg !751, !tbaa !216
  %35 = icmp sgt i32 %34, 0, !dbg !756
  br i1 %35, label %.lr.ph11, label %.loopexit, !dbg !757

.lr.ph11:                                         ; preds = %33
  %36 = mul nsw i32 %14, %irow, !dbg !758
  %37 = sext i32 %36 to i64
  %38 = sext i32 %15 to i64
  br label %39, !dbg !757

; <label>:39                                      ; preds = %.lr.ph11, %39
  %indvars.iv16 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next17, %39 ]
  %indvars.iv14 = phi i64 [ %37, %.lr.ph11 ], [ %indvars.iv.next15, %39 ]
  %jj.19 = phi i32 [ 0, %.lr.ph11 ], [ %60, %39 ]
  %40 = trunc i64 %indvars.iv14 to i32, !dbg !759
  %41 = shl nsw i32 %40, 1, !dbg !759
  %42 = sext i32 %41 to i64, !dbg !761
  %43 = getelementptr inbounds double* %16, i64 %42, !dbg !761
  %44 = bitcast double* %43 to i64*, !dbg !761
  %45 = load i64* %44, align 8, !dbg !761, !tbaa !326
  %46 = trunc i64 %indvars.iv16 to i32, !dbg !762
  %47 = shl nsw i32 %46, 1, !dbg !762
  %48 = sext i32 %47 to i64, !dbg !763
  %49 = getelementptr inbounds double* %vec, i64 %48, !dbg !763
  %50 = bitcast double* %49 to i64*, !dbg !764
  store i64 %45, i64* %50, align 8, !dbg !764, !tbaa !326
  %51 = or i32 %41, 1, !dbg !765
  %52 = sext i32 %51 to i64, !dbg !766
  %53 = getelementptr inbounds double* %16, i64 %52, !dbg !766
  %54 = bitcast double* %53 to i64*, !dbg !766
  %55 = load i64* %54, align 8, !dbg !766, !tbaa !326
  %56 = or i32 %47, 1, !dbg !767
  %57 = sext i32 %56 to i64, !dbg !768
  %58 = getelementptr inbounds double* %vec, i64 %57, !dbg !768
  %59 = bitcast double* %58 to i64*, !dbg !769
  store i64 %55, i64* %59, align 8, !dbg !769, !tbaa !326
  %60 = add nuw nsw i32 %jj.19, 1, !dbg !770
  call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !154, metadata !195), !dbg !737
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1, !dbg !757
  call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !155, metadata !195), !dbg !736
  %indvars.iv.next15 = add i64 %indvars.iv14, %38, !dbg !757
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !158, metadata !195), !dbg !724
  %61 = icmp slt i32 %60, %34, !dbg !756
  br i1 %61, label %39, label %.loopexit, !dbg !757

.loopexit:                                        ; preds = %39, %25, %33, %19, %13
  ret void, !dbg !771
}

; Function Attrs: optsize
declare i32 @DenseMtx_rowIncrement(%struct._DenseMtx*) #3

; Function Attrs: optsize
declare i32 @DenseMtx_columnIncrement(%struct._DenseMtx*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_copyVectorIntoRow(%struct._DenseMtx* %mtx, i32 %irow, double* %vec) #0 {
  %nrow = alloca i32, align 4
  %ncol = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !163, metadata !195), !dbg !772
  tail call void @llvm.dbg.value(metadata i32 %irow, i64 0, metadata !164, metadata !195), !dbg !773
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !165, metadata !195), !dbg !774
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !775
  %2 = icmp slt i32 %irow, 0, !dbg !777
  %or.cond = or i1 %1, %2, !dbg !778
  %3 = icmp eq double* %vec, null, !dbg !779
  %or.cond3 = or i1 %or.cond, %3, !dbg !778
  br i1 %or.cond3, label %4, label %7, !dbg !778

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !780, !tbaa !202
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([83 x i8]* @.str15, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %irow, double* %vec) #7, !dbg !782
  tail call void @exit(i32 -1) #8, !dbg !783
  unreachable, !dbg !783

; <label>:7                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !172, metadata !195), !dbg !784
  tail call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !175, metadata !195), !dbg !785
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #7, !dbg !786
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !172, metadata !195), !dbg !784
  %8 = load i32* %nrow, align 4, !dbg !787, !tbaa !216
  %9 = icmp sgt i32 %8, %irow, !dbg !789
  br i1 %9, label %13, label %10, !dbg !790

; <label>:10                                      ; preds = %7
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !791, !tbaa !202
  %12 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([69 x i8]* @.str16, i64 0, i64 0), i32 %irow, i32 %8) #7, !dbg !793
  call void @exit(i32 -1) #8, !dbg !794
  unreachable, !dbg !794

; <label>:13                                      ; preds = %7
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !173, metadata !195), !dbg !795
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !174, metadata !195), !dbg !796
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #7, !dbg !797
  %14 = call i32 @DenseMtx_rowIncrement(%struct._DenseMtx* %mtx) #7, !dbg !798
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !167, metadata !195), !dbg !799
  %15 = call i32 @DenseMtx_columnIncrement(%struct._DenseMtx* %mtx) #7, !dbg !800
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !168, metadata !195), !dbg !801
  %16 = call double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #7, !dbg !802
  call void @llvm.dbg.value(metadata double* %16, i64 0, metadata !166, metadata !195), !dbg !803
  %17 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !804
  %18 = load i32* %17, align 4, !dbg !804, !tbaa !302
  switch i32 %18, label %.loopexit [
    i32 1, label %19
    i32 2, label %33
  ], !dbg !806

; <label>:19                                      ; preds = %13
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !170, metadata !195), !dbg !807
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !169, metadata !195), !dbg !808
  call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !171, metadata !195), !dbg !809
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !173, metadata !195), !dbg !795
  %20 = load i32* %ncol, align 4, !dbg !810, !tbaa !216
  %21 = icmp sgt i32 %20, 0, !dbg !814
  br i1 %21, label %.lr.ph, label %.loopexit, !dbg !815

.lr.ph:                                           ; preds = %19
  %22 = mul nsw i32 %14, %irow, !dbg !816
  %23 = sext i32 %22 to i64
  %24 = sext i32 %15 to i64
  br label %25, !dbg !815

; <label>:25                                      ; preds = %.lr.ph, %25
  %indvars.iv12 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next13, %25 ]
  %indvars.iv = phi i64 [ %23, %.lr.ph ], [ %indvars.iv.next, %25 ]
  %jj.06 = phi i32 [ 0, %.lr.ph ], [ %31, %25 ]
  %26 = getelementptr inbounds double* %vec, i64 %indvars.iv12, !dbg !817
  %27 = bitcast double* %26 to i64*, !dbg !817
  %28 = load i64* %27, align 8, !dbg !817, !tbaa !326
  %29 = getelementptr inbounds double* %16, i64 %indvars.iv, !dbg !819
  %30 = bitcast double* %29 to i64*, !dbg !820
  store i64 %28, i64* %30, align 8, !dbg !820, !tbaa !326
  %31 = add nuw nsw i32 %jj.06, 1, !dbg !821
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !169, metadata !195), !dbg !808
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !815
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !170, metadata !195), !dbg !807
  %indvars.iv.next = add i64 %indvars.iv, %24, !dbg !815
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !173, metadata !195), !dbg !795
  %32 = icmp slt i32 %31, %20, !dbg !814
  br i1 %32, label %25, label %.loopexit, !dbg !815

; <label>:33                                      ; preds = %13
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !170, metadata !195), !dbg !807
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !169, metadata !195), !dbg !808
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !171, metadata !195), !dbg !809
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !173, metadata !195), !dbg !795
  %34 = load i32* %ncol, align 4, !dbg !822, !tbaa !216
  %35 = icmp sgt i32 %34, 0, !dbg !827
  br i1 %35, label %.lr.ph11, label %.loopexit, !dbg !828

.lr.ph11:                                         ; preds = %33
  %36 = mul nsw i32 %14, %irow, !dbg !829
  %37 = sext i32 %36 to i64
  %38 = sext i32 %15 to i64
  br label %39, !dbg !828

; <label>:39                                      ; preds = %.lr.ph11, %39
  %indvars.iv16 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next17, %39 ]
  %indvars.iv14 = phi i64 [ %37, %.lr.ph11 ], [ %indvars.iv.next15, %39 ]
  %jj.19 = phi i32 [ 0, %.lr.ph11 ], [ %60, %39 ]
  %40 = trunc i64 %indvars.iv16 to i32, !dbg !830
  %41 = shl nsw i32 %40, 1, !dbg !830
  %42 = sext i32 %41 to i64, !dbg !832
  %43 = getelementptr inbounds double* %vec, i64 %42, !dbg !832
  %44 = bitcast double* %43 to i64*, !dbg !832
  %45 = load i64* %44, align 8, !dbg !832, !tbaa !326
  %46 = trunc i64 %indvars.iv14 to i32, !dbg !833
  %47 = shl nsw i32 %46, 1, !dbg !833
  %48 = sext i32 %47 to i64, !dbg !834
  %49 = getelementptr inbounds double* %16, i64 %48, !dbg !834
  %50 = bitcast double* %49 to i64*, !dbg !835
  store i64 %45, i64* %50, align 8, !dbg !835, !tbaa !326
  %51 = or i32 %41, 1, !dbg !836
  %52 = sext i32 %51 to i64, !dbg !837
  %53 = getelementptr inbounds double* %vec, i64 %52, !dbg !837
  %54 = bitcast double* %53 to i64*, !dbg !837
  %55 = load i64* %54, align 8, !dbg !837, !tbaa !326
  %56 = or i32 %47, 1, !dbg !838
  %57 = sext i32 %56 to i64, !dbg !839
  %58 = getelementptr inbounds double* %16, i64 %57, !dbg !839
  %59 = bitcast double* %58 to i64*, !dbg !840
  store i64 %55, i64* %59, align 8, !dbg !840, !tbaa !326
  %60 = add nuw nsw i32 %jj.19, 1, !dbg !841
  call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !169, metadata !195), !dbg !808
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1, !dbg !828
  call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !170, metadata !195), !dbg !807
  %indvars.iv.next15 = add i64 %indvars.iv14, %38, !dbg !828
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !173, metadata !195), !dbg !795
  %61 = icmp slt i32 %60, %34, !dbg !827
  br i1 %61, label %39, label %.loopexit, !dbg !828

.loopexit:                                        ; preds = %39, %25, %33, %19, %13
  ret void, !dbg !842
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DenseMtx_addVectorIntoRow(%struct._DenseMtx* %mtx, i32 %irow, double* %vec) #0 {
  %nrow = alloca i32, align 4
  %ncol = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !178, metadata !195), !dbg !843
  tail call void @llvm.dbg.value(metadata i32 %irow, i64 0, metadata !179, metadata !195), !dbg !844
  tail call void @llvm.dbg.value(metadata double* %vec, i64 0, metadata !180, metadata !195), !dbg !845
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !846
  %2 = icmp slt i32 %irow, 0, !dbg !848
  %or.cond = or i1 %1, %2, !dbg !849
  %3 = icmp eq double* %vec, null, !dbg !850
  %or.cond3 = or i1 %or.cond, %3, !dbg !849
  br i1 %or.cond3, label %4, label %7, !dbg !849

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !851, !tbaa !202
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([82 x i8]* @.str17, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %irow, double* %vec) #7, !dbg !853
  tail call void @exit(i32 -1) #8, !dbg !854
  unreachable, !dbg !854

; <label>:7                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !187, metadata !195), !dbg !855
  tail call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !190, metadata !195), !dbg !856
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #7, !dbg !857
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !187, metadata !195), !dbg !855
  %8 = load i32* %nrow, align 4, !dbg !858, !tbaa !216
  %9 = icmp sgt i32 %8, %irow, !dbg !860
  br i1 %9, label %13, label %10, !dbg !861

; <label>:10                                      ; preds = %7
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !862, !tbaa !202
  %12 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([68 x i8]* @.str18, i64 0, i64 0), i32 %irow, i32 %8) #7, !dbg !864
  call void @exit(i32 -1) #8, !dbg !865
  unreachable, !dbg !865

; <label>:13                                      ; preds = %7
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !188, metadata !195), !dbg !866
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !189, metadata !195), !dbg !867
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #7, !dbg !868
  %14 = call i32 @DenseMtx_rowIncrement(%struct._DenseMtx* %mtx) #7, !dbg !869
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !182, metadata !195), !dbg !870
  %15 = call i32 @DenseMtx_columnIncrement(%struct._DenseMtx* %mtx) #7, !dbg !871
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !183, metadata !195), !dbg !872
  %16 = call double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #7, !dbg !873
  call void @llvm.dbg.value(metadata double* %16, i64 0, metadata !181, metadata !195), !dbg !874
  %17 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !875
  %18 = load i32* %17, align 4, !dbg !875, !tbaa !302
  switch i32 %18, label %.loopexit [
    i32 1, label %19
    i32 2, label %33
  ], !dbg !877

; <label>:19                                      ; preds = %13
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !185, metadata !195), !dbg !878
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !184, metadata !195), !dbg !879
  call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !186, metadata !195), !dbg !880
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !188, metadata !195), !dbg !866
  %20 = load i32* %ncol, align 4, !dbg !881, !tbaa !216
  %21 = icmp sgt i32 %20, 0, !dbg !885
  br i1 %21, label %.lr.ph, label %.loopexit, !dbg !886

.lr.ph:                                           ; preds = %19
  %22 = mul nsw i32 %14, %irow, !dbg !887
  %23 = sext i32 %22 to i64
  %24 = sext i32 %15 to i64
  br label %25, !dbg !886

; <label>:25                                      ; preds = %.lr.ph, %25
  %indvars.iv12 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next13, %25 ]
  %indvars.iv = phi i64 [ %23, %.lr.ph ], [ %indvars.iv.next, %25 ]
  %jj.06 = phi i32 [ 0, %.lr.ph ], [ %31, %25 ]
  %26 = getelementptr inbounds double* %vec, i64 %indvars.iv12, !dbg !888
  %27 = load double* %26, align 8, !dbg !888, !tbaa !326
  %28 = getelementptr inbounds double* %16, i64 %indvars.iv, !dbg !890
  %29 = load double* %28, align 8, !dbg !891, !tbaa !326
  %30 = fadd double %27, %29, !dbg !891
  store double %30, double* %28, align 8, !dbg !891, !tbaa !326
  %31 = add nuw nsw i32 %jj.06, 1, !dbg !892
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !184, metadata !195), !dbg !879
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !886
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !185, metadata !195), !dbg !878
  %indvars.iv.next = add i64 %indvars.iv, %24, !dbg !886
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !188, metadata !195), !dbg !866
  %32 = icmp slt i32 %31, %20, !dbg !885
  br i1 %32, label %25, label %.loopexit, !dbg !886

; <label>:33                                      ; preds = %13
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !185, metadata !195), !dbg !878
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !184, metadata !195), !dbg !879
  call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !186, metadata !195), !dbg !880
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !188, metadata !195), !dbg !866
  %34 = load i32* %ncol, align 4, !dbg !893, !tbaa !216
  %35 = icmp sgt i32 %34, 0, !dbg !898
  br i1 %35, label %.lr.ph11, label %.loopexit, !dbg !899

.lr.ph11:                                         ; preds = %33
  %36 = mul nsw i32 %14, %irow, !dbg !900
  %37 = sext i32 %36 to i64
  %38 = sext i32 %15 to i64
  br label %39, !dbg !899

; <label>:39                                      ; preds = %.lr.ph11, %39
  %indvars.iv16 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next17, %39 ]
  %indvars.iv14 = phi i64 [ %37, %.lr.ph11 ], [ %indvars.iv.next15, %39 ]
  %jj.19 = phi i32 [ 0, %.lr.ph11 ], [ %60, %39 ]
  %40 = trunc i64 %indvars.iv16 to i32, !dbg !901
  %41 = shl nsw i32 %40, 1, !dbg !901
  %42 = sext i32 %41 to i64, !dbg !903
  %43 = getelementptr inbounds double* %vec, i64 %42, !dbg !903
  %44 = load double* %43, align 8, !dbg !903, !tbaa !326
  %45 = trunc i64 %indvars.iv14 to i32, !dbg !904
  %46 = shl nsw i32 %45, 1, !dbg !904
  %47 = sext i32 %46 to i64, !dbg !905
  %48 = getelementptr inbounds double* %16, i64 %47, !dbg !905
  %49 = load double* %48, align 8, !dbg !906, !tbaa !326
  %50 = fadd double %44, %49, !dbg !906
  store double %50, double* %48, align 8, !dbg !906, !tbaa !326
  %51 = or i32 %41, 1, !dbg !907
  %52 = sext i32 %51 to i64, !dbg !908
  %53 = getelementptr inbounds double* %vec, i64 %52, !dbg !908
  %54 = load double* %53, align 8, !dbg !908, !tbaa !326
  %55 = or i32 %46, 1, !dbg !909
  %56 = sext i32 %55 to i64, !dbg !910
  %57 = getelementptr inbounds double* %16, i64 %56, !dbg !910
  %58 = load double* %57, align 8, !dbg !911, !tbaa !326
  %59 = fadd double %54, %58, !dbg !911
  store double %59, double* %57, align 8, !dbg !911, !tbaa !326
  %60 = add nuw nsw i32 %jj.19, 1, !dbg !912
  call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !184, metadata !195), !dbg !879
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1, !dbg !899
  call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !185, metadata !195), !dbg !878
  %indvars.iv.next15 = add i64 %indvars.iv14, %38, !dbg !899
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !188, metadata !195), !dbg !866
  %61 = icmp slt i32 %60, %34, !dbg !898
  br i1 %61, label %39, label %.loopexit, !dbg !899

.loopexit:                                        ; preds = %39, %25, %33, %19, %13
  ret void, !dbg !913
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!191, !192, !193}
!llvm.ident = !{!194}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_util.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !59, !75, !81, !95, !98, !118, !131, !138, !144, !161, !176}
!6 = !DISubprogram(name: "DenseMtx_sort", scope: !1, file: !1, line: 17, type: !7, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*)* @DenseMtx_sort, variables: !38)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "DenseMtx", file: !11, line: 28, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../DenseMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DenseMtx", file: !11, line: 29, size: 704, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !28, !37}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !11, line: 30, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "rowid", scope: !12, file: !11, line: 31, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "colid", scope: !12, file: !11, line: 32, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nrow", scope: !12, file: !11, line: 33, baseType: !15, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "ncol", scope: !12, file: !11, line: 34, baseType: !15, size: 32, align: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "inc1", scope: !12, file: !11, line: 35, baseType: !15, size: 32, align: 32, offset: 160)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "inc2", scope: !12, file: !11, line: 36, baseType: !15, size: 32, align: 32, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "rowind", scope: !12, file: !11, line: 37, baseType: !23, size: 64, align: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "colind", scope: !12, file: !11, line: 38, baseType: !23, size: 64, align: 64, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !12, file: !11, line: 39, baseType: !26, size: 64, align: 64, offset: 384)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !12, file: !11, line: 40, baseType: !29, size: 192, align: 64, offset: 448)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !30, line: 20, baseType: !31)
!30 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !30, line: 21, size: 192, align: 64, elements: !32)
!32 = !{!33, !34, !35, !36}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !31, file: !30, line: 22, baseType: !15, size: 32, align: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !31, file: !30, line: 23, baseType: !15, size: 32, align: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !31, file: !30, line: 24, baseType: !15, size: 32, align: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !31, file: !30, line: 25, baseType: !26, size: 64, align: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !11, line: 41, baseType: !9, size: 64, align: 64, offset: 640)
!38 = !{!39, !40, !52, !53, !54, !55, !56, !57, !58}
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !6, file: !1, line: 18, type: !9)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !6, file: !1, line: 20, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "A2", file: !42, line: 49, baseType: !43)
!42 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../A2/A2.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "_A2", file: !42, line: 41, size: 256, align: 64, elements: !44)
!44 = !{!45, !46, !47, !48, !49, !50, !51}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !43, file: !42, line: 42, baseType: !15, size: 32, align: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "n1", scope: !43, file: !42, line: 43, baseType: !15, size: 32, align: 32, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "n2", scope: !43, file: !42, line: 44, baseType: !15, size: 32, align: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "inc1", scope: !43, file: !42, line: 45, baseType: !15, size: 32, align: 32, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "inc2", scope: !43, file: !42, line: 46, baseType: !15, size: 32, align: 32, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "nowned", scope: !43, file: !42, line: 47, baseType: !15, size: 32, align: 32, offset: 160)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !43, file: !42, line: 48, baseType: !26, size: 64, align: 64, offset: 192)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !6, file: !1, line: 21, type: !15)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !6, file: !1, line: 21, type: !15)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrow", scope: !6, file: !1, line: 21, type: !15)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sortColumns", scope: !6, file: !1, line: 21, type: !15)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sortRows", scope: !6, file: !1, line: 21, type: !15)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colind", scope: !6, file: !1, line: 22, type: !23)
!58 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowind", scope: !6, file: !1, line: 22, type: !23)
!59 = !DISubprogram(name: "DenseMtx_copyRow", scope: !1, file: !1, line: 73, type: !60, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32, %struct._DenseMtx*, i32)* @DenseMtx_copyRow, variables: !62)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !9, !15, !9, !15}
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtxB", arg: 1, scope: !59, file: !1, line: 74, type: !9)
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irowB", arg: 2, scope: !59, file: !1, line: 75, type: !15)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtxA", arg: 3, scope: !59, file: !1, line: 76, type: !9)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irowA", arg: 4, scope: !59, file: !1, line: 77, type: !15)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowA", scope: !59, file: !1, line: 79, type: !26)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowB", scope: !59, file: !1, line: 79, type: !26)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !59, file: !1, line: 80, type: !15)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inc2A", scope: !59, file: !1, line: 80, type: !15)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inc2B", scope: !59, file: !1, line: 80, type: !15)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iA", scope: !59, file: !1, line: 80, type: !15)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iB", scope: !59, file: !1, line: 80, type: !15)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !59, file: !1, line: 80, type: !15)
!75 = !DISubprogram(name: "DenseMtx_copyRowAndIndex", scope: !1, file: !1, line: 124, type: !60, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32, %struct._DenseMtx*, i32)* @DenseMtx_copyRowAndIndex, variables: !76)
!76 = !{!77, !78, !79, !80}
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtxB", arg: 1, scope: !75, file: !1, line: 125, type: !9)
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irowB", arg: 2, scope: !75, file: !1, line: 126, type: !15)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtxA", arg: 3, scope: !75, file: !1, line: 127, type: !9)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irowA", arg: 4, scope: !75, file: !1, line: 128, type: !15)
!81 = !DISubprogram(name: "DenseMtx_addRow", scope: !1, file: !1, line: 156, type: !60, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32, %struct._DenseMtx*, i32)* @DenseMtx_addRow, variables: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtxB", arg: 1, scope: !81, file: !1, line: 157, type: !9)
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irowB", arg: 2, scope: !81, file: !1, line: 158, type: !15)
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtxA", arg: 3, scope: !81, file: !1, line: 159, type: !9)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irowA", arg: 4, scope: !81, file: !1, line: 160, type: !15)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowA", scope: !81, file: !1, line: 162, type: !26)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowB", scope: !81, file: !1, line: 162, type: !26)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !81, file: !1, line: 163, type: !15)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inc2A", scope: !81, file: !1, line: 163, type: !15)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inc2B", scope: !81, file: !1, line: 163, type: !15)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iA", scope: !81, file: !1, line: 163, type: !15)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iB", scope: !81, file: !1, line: 163, type: !15)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !81, file: !1, line: 163, type: !15)
!95 = !DISubprogram(name: "DenseMtx_zero", scope: !1, file: !1, line: 203, type: !7, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*)* @DenseMtx_zero, variables: !96)
!96 = !{!97}
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !95, file: !1, line: 204, type: !9)
!98 = !DISubprogram(name: "DenseMtx_fillRandomEntries", scope: !1, file: !1, line: 232, type: !99, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, %struct._Drand*)* @DenseMtx_fillRandomEntries, variables: !115)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !9, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "Drand", file: !103, line: 27, baseType: !104)
!103 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../Drand/Drand.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Drand", file: !103, line: 17, size: 576, align: 64, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "seed1", scope: !104, file: !103, line: 18, baseType: !27, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "seed2", scope: !104, file: !103, line: 19, baseType: !27, size: 64, align: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !104, file: !103, line: 20, baseType: !27, size: 64, align: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !104, file: !103, line: 21, baseType: !27, size: 64, align: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !104, file: !103, line: 22, baseType: !27, size: 64, align: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !104, file: !103, line: 23, baseType: !27, size: 64, align: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !104, file: !103, line: 24, baseType: !27, size: 64, align: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "sigma", scope: !104, file: !103, line: 25, baseType: !27, size: 64, align: 64, offset: 448)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !104, file: !103, line: 26, baseType: !15, size: 32, align: 32, offset: 512)
!115 = !{!116, !117}
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !98, file: !1, line: 233, type: !9)
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "drand", arg: 2, scope: !98, file: !1, line: 234, type: !101)
!118 = !DISubprogram(name: "DenseMtx_checksums", scope: !1, file: !1, line: 265, type: !119, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, double*)* @DenseMtx_checksums, variables: !121)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !9, !26}
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130}
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !118, file: !1, line: 266, type: !9)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sums", arg: 2, scope: !118, file: !1, line: 267, type: !26)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entries", scope: !118, file: !1, line: 269, type: !26)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !118, file: !1, line: 270, type: !15)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !118, file: !1, line: 270, type: !15)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nent", scope: !118, file: !1, line: 270, type: !15)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrow", scope: !118, file: !1, line: 270, type: !15)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colind", scope: !118, file: !1, line: 271, type: !23)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowind", scope: !118, file: !1, line: 271, type: !23)
!131 = !DISubprogram(name: "DenseMtx_maxabs", scope: !1, file: !1, line: 313, type: !132, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct._DenseMtx*)* @DenseMtx_maxabs, variables: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{!27, !9}
!134 = !{!135, !136, !137}
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !131, file: !1, line: 314, type: !9)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxabs", scope: !131, file: !1, line: 316, type: !27)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "loc", scope: !131, file: !1, line: 317, type: !15)
!138 = !DISubprogram(name: "DenseMtx_sub", scope: !1, file: !1, line: 348, type: !139, isLocal: false, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, %struct._DenseMtx*)* @DenseMtx_sub, variables: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !9, !9}
!141 = !{!142, !143}
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtxB", arg: 1, scope: !138, file: !1, line: 349, type: !9)
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtxA", arg: 2, scope: !138, file: !1, line: 350, type: !9)
!144 = !DISubprogram(name: "DenseMtx_copyRowIntoVector", scope: !1, file: !1, line: 410, type: !145, isLocal: false, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32, double*)* @DenseMtx_copyRowIntoVector, variables: !147)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !9, !15, !26}
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !144, file: !1, line: 411, type: !9)
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irow", arg: 2, scope: !144, file: !1, line: 412, type: !15)
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 3, scope: !144, file: !1, line: 413, type: !26)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entries", scope: !144, file: !1, line: 415, type: !26)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inc1", scope: !144, file: !1, line: 416, type: !15)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inc2", scope: !144, file: !1, line: 416, type: !15)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcol", scope: !144, file: !1, line: 416, type: !15)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jj", scope: !144, file: !1, line: 416, type: !15)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kk", scope: !144, file: !1, line: 416, type: !15)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrow", scope: !144, file: !1, line: 416, type: !15)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !144, file: !1, line: 416, type: !15)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colind", scope: !144, file: !1, line: 417, type: !23)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowind", scope: !144, file: !1, line: 417, type: !23)
!161 = !DISubprogram(name: "DenseMtx_copyVectorIntoRow", scope: !1, file: !1, line: 468, type: !145, isLocal: false, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32, double*)* @DenseMtx_copyVectorIntoRow, variables: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175}
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !161, file: !1, line: 469, type: !9)
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irow", arg: 2, scope: !161, file: !1, line: 470, type: !15)
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 3, scope: !161, file: !1, line: 471, type: !26)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entries", scope: !161, file: !1, line: 473, type: !26)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inc1", scope: !161, file: !1, line: 474, type: !15)
!168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inc2", scope: !161, file: !1, line: 474, type: !15)
!169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcol", scope: !161, file: !1, line: 474, type: !15)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jj", scope: !161, file: !1, line: 474, type: !15)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kk", scope: !161, file: !1, line: 474, type: !15)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrow", scope: !161, file: !1, line: 474, type: !15)
!173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !161, file: !1, line: 474, type: !15)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colind", scope: !161, file: !1, line: 475, type: !23)
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowind", scope: !161, file: !1, line: 475, type: !23)
!176 = !DISubprogram(name: "DenseMtx_addVectorIntoRow", scope: !1, file: !1, line: 527, type: !145, isLocal: false, isDefinition: true, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._DenseMtx*, i32, double*)* @DenseMtx_addVectorIntoRow, variables: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !176, file: !1, line: 528, type: !9)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irow", arg: 2, scope: !176, file: !1, line: 529, type: !15)
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vec", arg: 3, scope: !176, file: !1, line: 530, type: !26)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entries", scope: !176, file: !1, line: 532, type: !26)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inc1", scope: !176, file: !1, line: 533, type: !15)
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inc2", scope: !176, file: !1, line: 533, type: !15)
!184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcol", scope: !176, file: !1, line: 533, type: !15)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jj", scope: !176, file: !1, line: 533, type: !15)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kk", scope: !176, file: !1, line: 533, type: !15)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrow", scope: !176, file: !1, line: 533, type: !15)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !176, file: !1, line: 533, type: !15)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colind", scope: !176, file: !1, line: 534, type: !23)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowind", scope: !176, file: !1, line: 534, type: !23)
!191 = !{i32 2, !"Dwarf Version", i32 2}
!192 = !{i32 2, !"Debug Info Version", i32 700000003}
!193 = !{i32 1, !"PIC Level", i32 2}
!194 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!195 = !DIExpression()
!196 = !DILocation(line: 18, column: 16, scope: !6)
!197 = !DILocation(line: 28, column: 10, scope: !198)
!198 = distinct !DILexicalBlock(scope: !6, file: !1, line: 28, column: 6)
!199 = !DILocation(line: 28, column: 6, scope: !6)
!200 = !DILocation(line: 29, column: 12, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !1, line: 28, column: 20)
!202 = !{!203, !203, i64 0}
!203 = !{!"any pointer", !204, i64 0}
!204 = !{!"omnipotent char", !205, i64 0}
!205 = !{!"Simple C/C++ TBAA"}
!206 = !DILocation(line: 29, column: 4, scope: !201)
!207 = !DILocation(line: 31, column: 4, scope: !201)
!208 = !DILocation(line: 21, column: 17, scope: !6)
!209 = !DILocation(line: 22, column: 17, scope: !6)
!210 = !DILocation(line: 33, column: 1, scope: !6)
!211 = !DILocation(line: 21, column: 11, scope: !6)
!212 = !DILocation(line: 22, column: 8, scope: !6)
!213 = !DILocation(line: 34, column: 1, scope: !6)
!214 = !DILocation(line: 35, column: 6, scope: !215)
!215 = distinct !DILexicalBlock(scope: !6, file: !1, line: 35, column: 6)
!216 = !{!217, !217, i64 0}
!217 = !{!"int", !204, i64 0}
!218 = !DILocation(line: 35, column: 11, scope: !215)
!219 = !DILocation(line: 35, column: 24, scope: !215)
!220 = !DILocation(line: 35, column: 16, scope: !215)
!221 = !DILocation(line: 39, column: 19, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !1, line: 39, column: 1)
!223 = distinct !DILexicalBlock(scope: !6, file: !1, line: 39, column: 1)
!224 = !DILocation(line: 39, column: 1, scope: !223)
!225 = !DILocation(line: 40, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 40, column: 9)
!227 = distinct !DILexicalBlock(scope: !222, file: !1, line: 39, column: 35)
!228 = !DILocation(line: 40, column: 18, scope: !226)
!229 = !DILocation(line: 40, column: 24, scope: !226)
!230 = !DILocation(line: 40, column: 22, scope: !226)
!231 = !DILocation(line: 40, column: 9, scope: !227)
!232 = !DILocation(line: 21, column: 7, scope: !6)
!233 = !DILocation(line: 45, column: 19, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 45, column: 1)
!235 = distinct !DILexicalBlock(scope: !6, file: !1, line: 45, column: 1)
!236 = !DILocation(line: 45, column: 1, scope: !235)
!237 = !DILocation(line: 46, column: 9, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !1, line: 46, column: 9)
!239 = distinct !DILexicalBlock(scope: !234, file: !1, line: 45, column: 35)
!240 = !DILocation(line: 46, column: 18, scope: !238)
!241 = !DILocation(line: 46, column: 24, scope: !238)
!242 = !DILocation(line: 46, column: 22, scope: !238)
!243 = !DILocation(line: 46, column: 9, scope: !239)
!244 = !DILocation(line: 51, column: 20, scope: !245)
!245 = distinct !DILexicalBlock(scope: !6, file: !1, line: 51, column: 6)
!246 = !DILocation(line: 20, column: 7, scope: !6)
!247 = !DILocation(line: 54, column: 1, scope: !6)
!248 = !DILocation(line: 55, column: 1, scope: !6)
!249 = !DILocation(line: 56, column: 15, scope: !250)
!250 = distinct !DILexicalBlock(scope: !6, file: !1, line: 56, column: 6)
!251 = !DILocation(line: 56, column: 6, scope: !6)
!252 = !DILocation(line: 57, column: 23, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !1, line: 56, column: 22)
!254 = !DILocation(line: 57, column: 29, scope: !253)
!255 = !DILocation(line: 57, column: 4, scope: !253)
!256 = !DILocation(line: 58, column: 1, scope: !253)
!257 = !DILocation(line: 59, column: 18, scope: !258)
!258 = distinct !DILexicalBlock(scope: !6, file: !1, line: 59, column: 6)
!259 = !DILocation(line: 59, column: 6, scope: !6)
!260 = !DILocation(line: 60, column: 26, scope: !261)
!261 = distinct !DILexicalBlock(scope: !258, file: !1, line: 59, column: 25)
!262 = !DILocation(line: 60, column: 32, scope: !261)
!263 = !DILocation(line: 60, column: 4, scope: !261)
!264 = !DILocation(line: 61, column: 1, scope: !261)
!265 = !DILocation(line: 62, column: 10, scope: !6)
!266 = !DILocation(line: 74, column: 16, scope: !59)
!267 = !DILocation(line: 75, column: 15, scope: !59)
!268 = !DILocation(line: 76, column: 16, scope: !59)
!269 = !DILocation(line: 77, column: 15, scope: !59)
!270 = !DILocation(line: 86, column: 12, scope: !271)
!271 = distinct !DILexicalBlock(scope: !59, file: !1, line: 86, column: 7)
!272 = !DILocation(line: 86, column: 29, scope: !271)
!273 = !DILocation(line: 86, column: 20, scope: !271)
!274 = !DILocation(line: 86, column: 51, scope: !271)
!275 = !{!276, !217, i64 12}
!276 = !{!"_DenseMtx", !217, i64 0, !217, i64 4, !217, i64 8, !217, i64 12, !217, i64 16, !217, i64 20, !217, i64 24, !203, i64 32, !203, i64 40, !203, i64 48, !277, i64 56, !203, i64 80}
!277 = !{!"_DV", !217, i64 0, !217, i64 4, !217, i64 8, !203, i64 16}
!278 = !DILocation(line: 86, column: 42, scope: !271)
!279 = !DILocation(line: 87, column: 12, scope: !271)
!280 = !DILocation(line: 87, column: 4, scope: !271)
!281 = !DILocation(line: 87, column: 29, scope: !271)
!282 = !DILocation(line: 87, column: 51, scope: !271)
!283 = !DILocation(line: 87, column: 42, scope: !271)
!284 = !DILocation(line: 88, column: 4, scope: !271)
!285 = !DILocation(line: 88, column: 21, scope: !271)
!286 = !{!276, !217, i64 16}
!287 = !DILocation(line: 80, column: 36, scope: !59)
!288 = !DILocation(line: 88, column: 36, scope: !271)
!289 = !DILocation(line: 88, column: 27, scope: !271)
!290 = !DILocation(line: 86, column: 7, scope: !59)
!291 = !DILocation(line: 89, column: 12, scope: !292)
!292 = distinct !DILexicalBlock(scope: !271, file: !1, line: 88, column: 43)
!293 = !DILocation(line: 89, column: 4, scope: !292)
!294 = !DILocation(line: 91, column: 4, scope: !292)
!295 = !DILocation(line: 93, column: 15, scope: !59)
!296 = !{!276, !217, i64 24}
!297 = !DILocation(line: 80, column: 14, scope: !59)
!298 = !DILocation(line: 94, column: 15, scope: !59)
!299 = !DILocation(line: 80, column: 21, scope: !59)
!300 = !DILocation(line: 98, column: 6, scope: !301)
!301 = distinct !DILexicalBlock(scope: !59, file: !1, line: 98, column: 6)
!302 = !{!276, !217, i64 0}
!303 = !DILocation(line: 98, column: 29, scope: !301)
!304 = !DILocation(line: 98, column: 32, scope: !301)
!305 = !DILocation(line: 98, column: 6, scope: !59)
!306 = !DILocation(line: 99, column: 18, scope: !307)
!307 = distinct !DILexicalBlock(scope: !301, file: !1, line: 98, column: 57)
!308 = !{!276, !203, i64 48}
!309 = !DILocation(line: 99, column: 40, scope: !307)
!310 = !{!276, !217, i64 20}
!311 = !DILocation(line: 99, column: 33, scope: !307)
!312 = !DILocation(line: 99, column: 26, scope: !307)
!313 = !DILocation(line: 100, column: 18, scope: !307)
!314 = !DILocation(line: 100, column: 40, scope: !307)
!315 = !DILocation(line: 100, column: 33, scope: !307)
!316 = !DILocation(line: 100, column: 26, scope: !307)
!317 = !DILocation(line: 80, column: 32, scope: !59)
!318 = !DILocation(line: 80, column: 28, scope: !59)
!319 = !DILocation(line: 80, column: 10, scope: !59)
!320 = !DILocation(line: 101, column: 32, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !1, line: 101, column: 4)
!322 = distinct !DILexicalBlock(scope: !307, file: !1, line: 101, column: 4)
!323 = !DILocation(line: 101, column: 4, scope: !322)
!324 = !DILocation(line: 102, column: 18, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !1, line: 101, column: 72)
!326 = !{!327, !327, i64 0}
!327 = !{!"double", !204, i64 0}
!328 = !DILocation(line: 102, column: 7, scope: !325)
!329 = !DILocation(line: 102, column: 16, scope: !325)
!330 = !DILocation(line: 101, column: 43, scope: !321)
!331 = !DILocation(line: 104, column: 42, scope: !332)
!332 = distinct !DILexicalBlock(scope: !301, file: !1, line: 104, column: 13)
!333 = !DILocation(line: 104, column: 13, scope: !301)
!334 = !DILocation(line: 105, column: 18, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !1, line: 104, column: 70)
!336 = !DILocation(line: 105, column: 29, scope: !335)
!337 = !DILocation(line: 105, column: 42, scope: !335)
!338 = !DILocation(line: 105, column: 35, scope: !335)
!339 = !DILocation(line: 105, column: 26, scope: !335)
!340 = !DILocation(line: 106, column: 18, scope: !335)
!341 = !DILocation(line: 106, column: 29, scope: !335)
!342 = !DILocation(line: 106, column: 42, scope: !335)
!343 = !DILocation(line: 106, column: 35, scope: !335)
!344 = !DILocation(line: 106, column: 26, scope: !335)
!345 = !DILocation(line: 107, column: 32, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !1, line: 107, column: 4)
!347 = distinct !DILexicalBlock(scope: !335, file: !1, line: 107, column: 4)
!348 = !DILocation(line: 107, column: 4, scope: !347)
!349 = !DILocation(line: 108, column: 28, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !1, line: 107, column: 72)
!351 = !DILocation(line: 108, column: 22, scope: !350)
!352 = !DILocation(line: 108, column: 13, scope: !350)
!353 = !DILocation(line: 108, column: 7, scope: !350)
!354 = !DILocation(line: 108, column: 20, scope: !350)
!355 = !DILocation(line: 109, column: 31, scope: !350)
!356 = !DILocation(line: 109, column: 22, scope: !350)
!357 = !DILocation(line: 109, column: 16, scope: !350)
!358 = !DILocation(line: 109, column: 7, scope: !350)
!359 = !DILocation(line: 109, column: 20, scope: !350)
!360 = !DILocation(line: 107, column: 43, scope: !346)
!361 = !DILocation(line: 112, column: 1, scope: !59)
!362 = !DILocation(line: 125, column: 16, scope: !75)
!363 = !DILocation(line: 126, column: 15, scope: !75)
!364 = !DILocation(line: 127, column: 16, scope: !75)
!365 = !DILocation(line: 128, column: 15, scope: !75)
!366 = !DILocation(line: 135, column: 12, scope: !367)
!367 = distinct !DILexicalBlock(scope: !75, file: !1, line: 135, column: 7)
!368 = !DILocation(line: 135, column: 29, scope: !367)
!369 = !DILocation(line: 135, column: 20, scope: !367)
!370 = !DILocation(line: 135, column: 51, scope: !367)
!371 = !DILocation(line: 135, column: 42, scope: !367)
!372 = !DILocation(line: 136, column: 12, scope: !367)
!373 = !DILocation(line: 136, column: 4, scope: !367)
!374 = !DILocation(line: 136, column: 29, scope: !367)
!375 = !DILocation(line: 136, column: 51, scope: !367)
!376 = !DILocation(line: 136, column: 42, scope: !367)
!377 = !DILocation(line: 137, column: 4, scope: !367)
!378 = !DILocation(line: 137, column: 13, scope: !367)
!379 = !DILocation(line: 137, column: 27, scope: !367)
!380 = !DILocation(line: 137, column: 18, scope: !367)
!381 = !DILocation(line: 135, column: 7, scope: !75)
!382 = !DILocation(line: 138, column: 12, scope: !383)
!383 = distinct !DILexicalBlock(scope: !367, file: !1, line: 137, column: 34)
!384 = !DILocation(line: 138, column: 4, scope: !383)
!385 = !DILocation(line: 140, column: 4, scope: !383)
!386 = !DILocation(line: 142, column: 1, scope: !75)
!387 = !DILocation(line: 143, column: 23, scope: !75)
!388 = !DILocation(line: 143, column: 29, scope: !75)
!389 = !{!276, !203, i64 32}
!390 = !DILocation(line: 143, column: 1, scope: !75)
!391 = !DILocation(line: 143, column: 7, scope: !75)
!392 = !DILocation(line: 143, column: 21, scope: !75)
!393 = !DILocation(line: 145, column: 1, scope: !75)
!394 = !DILocation(line: 157, column: 16, scope: !81)
!395 = !DILocation(line: 158, column: 15, scope: !81)
!396 = !DILocation(line: 159, column: 16, scope: !81)
!397 = !DILocation(line: 160, column: 15, scope: !81)
!398 = !DILocation(line: 169, column: 12, scope: !399)
!399 = distinct !DILexicalBlock(scope: !81, file: !1, line: 169, column: 7)
!400 = !DILocation(line: 169, column: 29, scope: !399)
!401 = !DILocation(line: 169, column: 20, scope: !399)
!402 = !DILocation(line: 169, column: 51, scope: !399)
!403 = !DILocation(line: 169, column: 42, scope: !399)
!404 = !DILocation(line: 170, column: 12, scope: !399)
!405 = !DILocation(line: 170, column: 4, scope: !399)
!406 = !DILocation(line: 170, column: 29, scope: !399)
!407 = !DILocation(line: 170, column: 51, scope: !399)
!408 = !DILocation(line: 170, column: 42, scope: !399)
!409 = !DILocation(line: 171, column: 4, scope: !399)
!410 = !DILocation(line: 171, column: 21, scope: !399)
!411 = !DILocation(line: 163, column: 36, scope: !81)
!412 = !DILocation(line: 171, column: 36, scope: !399)
!413 = !DILocation(line: 171, column: 27, scope: !399)
!414 = !DILocation(line: 169, column: 7, scope: !81)
!415 = !DILocation(line: 172, column: 12, scope: !416)
!416 = distinct !DILexicalBlock(scope: !399, file: !1, line: 171, column: 43)
!417 = !DILocation(line: 172, column: 4, scope: !416)
!418 = !DILocation(line: 174, column: 4, scope: !416)
!419 = !DILocation(line: 176, column: 15, scope: !81)
!420 = !DILocation(line: 163, column: 14, scope: !81)
!421 = !DILocation(line: 177, column: 15, scope: !81)
!422 = !DILocation(line: 163, column: 21, scope: !81)
!423 = !DILocation(line: 178, column: 6, scope: !424)
!424 = distinct !DILexicalBlock(scope: !81, file: !1, line: 178, column: 6)
!425 = !DILocation(line: 178, column: 29, scope: !424)
!426 = !DILocation(line: 178, column: 32, scope: !424)
!427 = !DILocation(line: 178, column: 6, scope: !81)
!428 = !DILocation(line: 179, column: 18, scope: !429)
!429 = distinct !DILexicalBlock(scope: !424, file: !1, line: 178, column: 57)
!430 = !DILocation(line: 179, column: 40, scope: !429)
!431 = !DILocation(line: 179, column: 33, scope: !429)
!432 = !DILocation(line: 179, column: 26, scope: !429)
!433 = !DILocation(line: 180, column: 18, scope: !429)
!434 = !DILocation(line: 180, column: 40, scope: !429)
!435 = !DILocation(line: 180, column: 33, scope: !429)
!436 = !DILocation(line: 180, column: 26, scope: !429)
!437 = !DILocation(line: 163, column: 32, scope: !81)
!438 = !DILocation(line: 163, column: 28, scope: !81)
!439 = !DILocation(line: 163, column: 10, scope: !81)
!440 = !DILocation(line: 181, column: 32, scope: !441)
!441 = distinct !DILexicalBlock(scope: !442, file: !1, line: 181, column: 4)
!442 = distinct !DILexicalBlock(scope: !429, file: !1, line: 181, column: 4)
!443 = !DILocation(line: 181, column: 4, scope: !442)
!444 = !DILocation(line: 182, column: 19, scope: !445)
!445 = distinct !DILexicalBlock(scope: !441, file: !1, line: 181, column: 72)
!446 = !DILocation(line: 182, column: 7, scope: !445)
!447 = !DILocation(line: 182, column: 16, scope: !445)
!448 = !DILocation(line: 181, column: 43, scope: !441)
!449 = !DILocation(line: 184, column: 42, scope: !450)
!450 = distinct !DILexicalBlock(scope: !424, file: !1, line: 184, column: 13)
!451 = !DILocation(line: 184, column: 13, scope: !424)
!452 = !DILocation(line: 185, column: 18, scope: !453)
!453 = distinct !DILexicalBlock(scope: !450, file: !1, line: 184, column: 70)
!454 = !DILocation(line: 185, column: 29, scope: !453)
!455 = !DILocation(line: 185, column: 42, scope: !453)
!456 = !DILocation(line: 185, column: 35, scope: !453)
!457 = !DILocation(line: 185, column: 26, scope: !453)
!458 = !DILocation(line: 186, column: 18, scope: !453)
!459 = !DILocation(line: 186, column: 29, scope: !453)
!460 = !DILocation(line: 186, column: 42, scope: !453)
!461 = !DILocation(line: 186, column: 35, scope: !453)
!462 = !DILocation(line: 186, column: 26, scope: !453)
!463 = !DILocation(line: 187, column: 32, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !1, line: 187, column: 4)
!465 = distinct !DILexicalBlock(scope: !453, file: !1, line: 187, column: 4)
!466 = !DILocation(line: 187, column: 4, scope: !465)
!467 = !DILocation(line: 188, column: 29, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !1, line: 187, column: 72)
!469 = !DILocation(line: 188, column: 23, scope: !468)
!470 = !DILocation(line: 188, column: 13, scope: !468)
!471 = !DILocation(line: 188, column: 7, scope: !468)
!472 = !DILocation(line: 188, column: 20, scope: !468)
!473 = !DILocation(line: 189, column: 32, scope: !468)
!474 = !DILocation(line: 189, column: 23, scope: !468)
!475 = !DILocation(line: 189, column: 16, scope: !468)
!476 = !DILocation(line: 189, column: 7, scope: !468)
!477 = !DILocation(line: 189, column: 20, scope: !468)
!478 = !DILocation(line: 187, column: 43, scope: !464)
!479 = !DILocation(line: 192, column: 1, scope: !81)
!480 = !DILocation(line: 204, column: 16, scope: !95)
!481 = !DILocation(line: 211, column: 10, scope: !482)
!482 = distinct !DILexicalBlock(scope: !95, file: !1, line: 211, column: 6)
!483 = !DILocation(line: 211, column: 6, scope: !95)
!484 = !DILocation(line: 212, column: 12, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !1, line: 211, column: 20)
!486 = !DILocation(line: 212, column: 4, scope: !485)
!487 = !DILocation(line: 214, column: 4, scope: !485)
!488 = !DILocation(line: 216, column: 6, scope: !489)
!489 = distinct !DILexicalBlock(scope: !95, file: !1, line: 216, column: 6)
!490 = !DILocation(line: 216, column: 6, scope: !95)
!491 = !DILocation(line: 217, column: 16, scope: !492)
!492 = distinct !DILexicalBlock(scope: !489, file: !1, line: 216, column: 30)
!493 = !DILocation(line: 217, column: 26, scope: !492)
!494 = !DILocation(line: 217, column: 20, scope: !492)
!495 = !DILocation(line: 217, column: 37, scope: !492)
!496 = !DILocation(line: 217, column: 4, scope: !492)
!497 = !DILocation(line: 218, column: 1, scope: !492)
!498 = !DILocation(line: 219, column: 18, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !1, line: 218, column: 40)
!500 = distinct !DILexicalBlock(scope: !489, file: !1, line: 218, column: 13)
!501 = !DILocation(line: 219, column: 12, scope: !499)
!502 = !DILocation(line: 219, column: 28, scope: !499)
!503 = !DILocation(line: 219, column: 22, scope: !499)
!504 = !DILocation(line: 219, column: 39, scope: !499)
!505 = !DILocation(line: 219, column: 4, scope: !499)
!506 = !DILocation(line: 220, column: 1, scope: !499)
!507 = !DILocation(line: 221, column: 1, scope: !95)
!508 = !DILocation(line: 233, column: 16, scope: !98)
!509 = !DILocation(line: 234, column: 16, scope: !98)
!510 = !DILocation(line: 241, column: 10, scope: !511)
!511 = distinct !DILexicalBlock(scope: !98, file: !1, line: 241, column: 6)
!512 = !DILocation(line: 241, column: 27, scope: !511)
!513 = !DILocation(line: 241, column: 18, scope: !511)
!514 = !DILocation(line: 242, column: 12, scope: !515)
!515 = distinct !DILexicalBlock(scope: !511, file: !1, line: 241, column: 37)
!516 = !DILocation(line: 242, column: 4, scope: !515)
!517 = !DILocation(line: 244, column: 4, scope: !515)
!518 = !DILocation(line: 246, column: 6, scope: !519)
!519 = distinct !DILexicalBlock(scope: !98, file: !1, line: 246, column: 6)
!520 = !DILocation(line: 246, column: 6, scope: !98)
!521 = !DILocation(line: 247, column: 34, scope: !522)
!522 = distinct !DILexicalBlock(scope: !519, file: !1, line: 246, column: 30)
!523 = !DILocation(line: 247, column: 44, scope: !522)
!524 = !DILocation(line: 247, column: 38, scope: !522)
!525 = !DILocation(line: 247, column: 55, scope: !522)
!526 = !DILocation(line: 247, column: 4, scope: !522)
!527 = !DILocation(line: 248, column: 1, scope: !522)
!528 = !DILocation(line: 249, column: 36, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !1, line: 248, column: 40)
!530 = distinct !DILexicalBlock(scope: !519, file: !1, line: 248, column: 13)
!531 = !DILocation(line: 249, column: 30, scope: !529)
!532 = !DILocation(line: 249, column: 46, scope: !529)
!533 = !DILocation(line: 249, column: 40, scope: !529)
!534 = !DILocation(line: 249, column: 57, scope: !529)
!535 = !DILocation(line: 249, column: 4, scope: !529)
!536 = !DILocation(line: 250, column: 1, scope: !529)
!537 = !DILocation(line: 251, column: 1, scope: !98)
!538 = !DILocation(line: 266, column: 16, scope: !118)
!539 = !DILocation(line: 267, column: 15, scope: !118)
!540 = !DILocation(line: 277, column: 10, scope: !541)
!541 = distinct !DILexicalBlock(scope: !118, file: !1, line: 277, column: 6)
!542 = !DILocation(line: 277, column: 26, scope: !541)
!543 = !DILocation(line: 277, column: 18, scope: !541)
!544 = !DILocation(line: 278, column: 12, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !1, line: 277, column: 36)
!546 = !DILocation(line: 278, column: 4, scope: !545)
!547 = !DILocation(line: 280, column: 4, scope: !545)
!548 = !DILocation(line: 282, column: 21, scope: !118)
!549 = !DILocation(line: 282, column: 11, scope: !118)
!550 = !DILocation(line: 270, column: 26, scope: !118)
!551 = !DILocation(line: 271, column: 20, scope: !118)
!552 = !DILocation(line: 283, column: 1, scope: !118)
!553 = !DILocation(line: 282, column: 19, scope: !118)
!554 = !DILocation(line: 270, column: 10, scope: !118)
!555 = !DILocation(line: 284, column: 21, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !1, line: 284, column: 1)
!557 = distinct !DILexicalBlock(scope: !118, file: !1, line: 284, column: 1)
!558 = !DILocation(line: 284, column: 19, scope: !556)
!559 = !DILocation(line: 284, column: 1, scope: !557)
!560 = !DILocation(line: 285, column: 15, scope: !561)
!561 = distinct !DILexicalBlock(scope: !556, file: !1, line: 284, column: 35)
!562 = !DILocation(line: 285, column: 12, scope: !561)
!563 = !DILocation(line: 270, column: 14, scope: !118)
!564 = !DILocation(line: 271, column: 11, scope: !118)
!565 = !DILocation(line: 287, column: 1, scope: !118)
!566 = !DILocation(line: 288, column: 21, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !1, line: 288, column: 1)
!568 = distinct !DILexicalBlock(scope: !118, file: !1, line: 288, column: 1)
!569 = !DILocation(line: 288, column: 19, scope: !567)
!570 = !DILocation(line: 288, column: 1, scope: !568)
!571 = !DILocation(line: 289, column: 15, scope: !572)
!572 = distinct !DILexicalBlock(scope: !567, file: !1, line: 288, column: 35)
!573 = !DILocation(line: 289, column: 12, scope: !572)
!574 = !DILocation(line: 291, column: 11, scope: !118)
!575 = !DILocation(line: 269, column: 11, scope: !118)
!576 = !DILocation(line: 292, column: 11, scope: !118)
!577 = !DILocation(line: 292, column: 16, scope: !118)
!578 = !DILocation(line: 292, column: 15, scope: !118)
!579 = !DILocation(line: 270, column: 20, scope: !118)
!580 = !DILocation(line: 293, column: 6, scope: !581)
!581 = distinct !DILexicalBlock(scope: !118, file: !1, line: 293, column: 6)
!582 = !DILocation(line: 293, column: 6, scope: !118)
!583 = !DILocation(line: 298, column: 22, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !1, line: 298, column: 4)
!585 = distinct !DILexicalBlock(scope: !586, file: !1, line: 298, column: 4)
!586 = distinct !DILexicalBlock(scope: !587, file: !1, line: 297, column: 40)
!587 = distinct !DILexicalBlock(scope: !581, file: !1, line: 297, column: 13)
!588 = !DILocation(line: 298, column: 4, scope: !585)
!589 = !DILocation(line: 294, column: 22, scope: !590)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 294, column: 4)
!591 = distinct !DILexicalBlock(scope: !592, file: !1, line: 294, column: 4)
!592 = distinct !DILexicalBlock(scope: !581, file: !1, line: 293, column: 30)
!593 = !DILocation(line: 294, column: 4, scope: !591)
!594 = !DILocation(line: 295, column: 15, scope: !595)
!595 = distinct !DILexicalBlock(scope: !590, file: !1, line: 294, column: 38)
!596 = !DILocation(line: 295, column: 23, scope: !595)
!597 = !DILocation(line: 295, column: 18, scope: !595)
!598 = !DILocation(line: 299, column: 32, scope: !599)
!599 = distinct !DILexicalBlock(scope: !584, file: !1, line: 298, column: 38)
!600 = !DILocation(line: 299, column: 23, scope: !599)
!601 = !DILocation(line: 299, column: 50, scope: !599)
!602 = !DILocation(line: 299, column: 38, scope: !599)
!603 = !DILocation(line: 299, column: 18, scope: !599)
!604 = !DILocation(line: 299, column: 15, scope: !599)
!605 = !DILocation(line: 302, column: 1, scope: !118)
!606 = !DILocation(line: 314, column: 16, scope: !131)
!607 = !DILocation(line: 323, column: 10, scope: !608)
!608 = distinct !DILexicalBlock(scope: !131, file: !1, line: 323, column: 6)
!609 = !DILocation(line: 323, column: 6, scope: !131)
!610 = !DILocation(line: 324, column: 12, scope: !611)
!611 = distinct !DILexicalBlock(scope: !608, file: !1, line: 323, column: 20)
!612 = !DILocation(line: 324, column: 4, scope: !611)
!613 = !DILocation(line: 326, column: 4, scope: !611)
!614 = !DILocation(line: 328, column: 6, scope: !615)
!615 = distinct !DILexicalBlock(scope: !131, file: !1, line: 328, column: 6)
!616 = !DILocation(line: 328, column: 6, scope: !131)
!617 = !DILocation(line: 329, column: 27, scope: !618)
!618 = distinct !DILexicalBlock(scope: !615, file: !1, line: 328, column: 30)
!619 = !DILocation(line: 329, column: 37, scope: !618)
!620 = !DILocation(line: 329, column: 31, scope: !618)
!621 = !DILocation(line: 329, column: 48, scope: !618)
!622 = !DILocation(line: 317, column: 10, scope: !131)
!623 = !DILocation(line: 329, column: 13, scope: !618)
!624 = !DILocation(line: 316, column: 10, scope: !131)
!625 = !DILocation(line: 330, column: 1, scope: !618)
!626 = !DILocation(line: 331, column: 27, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !1, line: 330, column: 40)
!628 = distinct !DILexicalBlock(scope: !615, file: !1, line: 330, column: 13)
!629 = !DILocation(line: 331, column: 37, scope: !627)
!630 = !DILocation(line: 331, column: 31, scope: !627)
!631 = !DILocation(line: 331, column: 48, scope: !627)
!632 = !DILocation(line: 331, column: 13, scope: !627)
!633 = !DILocation(line: 333, column: 12, scope: !634)
!634 = distinct !DILexicalBlock(scope: !628, file: !1, line: 332, column: 8)
!635 = !DILocation(line: 333, column: 4, scope: !634)
!636 = !DILocation(line: 335, column: 4, scope: !634)
!637 = !DILocation(line: 337, column: 1, scope: !131)
!638 = !DILocation(line: 349, column: 16, scope: !138)
!639 = !DILocation(line: 350, column: 16, scope: !138)
!640 = !DILocation(line: 357, column: 11, scope: !641)
!641 = distinct !DILexicalBlock(scope: !138, file: !1, line: 357, column: 6)
!642 = !DILocation(line: 357, column: 27, scope: !641)
!643 = !DILocation(line: 357, column: 19, scope: !641)
!644 = !DILocation(line: 358, column: 12, scope: !645)
!645 = distinct !DILexicalBlock(scope: !641, file: !1, line: 357, column: 37)
!646 = !DILocation(line: 358, column: 4, scope: !645)
!647 = !DILocation(line: 360, column: 4, scope: !645)
!648 = !DILocation(line: 362, column: 12, scope: !649)
!649 = distinct !DILexicalBlock(scope: !138, file: !1, line: 362, column: 6)
!650 = !DILocation(line: 362, column: 26, scope: !649)
!651 = !DILocation(line: 362, column: 17, scope: !649)
!652 = !DILocation(line: 362, column: 6, scope: !138)
!653 = !DILocation(line: 363, column: 12, scope: !654)
!654 = distinct !DILexicalBlock(scope: !649, file: !1, line: 362, column: 33)
!655 = !DILocation(line: 363, column: 4, scope: !654)
!656 = !DILocation(line: 366, column: 4, scope: !654)
!657 = !DILocation(line: 368, column: 12, scope: !658)
!658 = distinct !DILexicalBlock(scope: !138, file: !1, line: 368, column: 6)
!659 = !DILocation(line: 368, column: 26, scope: !658)
!660 = !DILocation(line: 368, column: 17, scope: !658)
!661 = !DILocation(line: 368, column: 6, scope: !138)
!662 = !DILocation(line: 369, column: 12, scope: !663)
!663 = distinct !DILexicalBlock(scope: !658, file: !1, line: 368, column: 33)
!664 = !DILocation(line: 369, column: 4, scope: !663)
!665 = !DILocation(line: 372, column: 4, scope: !663)
!666 = !DILocation(line: 374, column: 12, scope: !667)
!667 = distinct !DILexicalBlock(scope: !138, file: !1, line: 374, column: 6)
!668 = !DILocation(line: 374, column: 26, scope: !667)
!669 = !DILocation(line: 374, column: 17, scope: !667)
!670 = !DILocation(line: 374, column: 6, scope: !138)
!671 = !DILocation(line: 375, column: 12, scope: !672)
!672 = distinct !DILexicalBlock(scope: !667, file: !1, line: 374, column: 33)
!673 = !DILocation(line: 375, column: 4, scope: !672)
!674 = !DILocation(line: 378, column: 4, scope: !672)
!675 = !DILocation(line: 380, column: 12, scope: !676)
!676 = distinct !DILexicalBlock(scope: !138, file: !1, line: 380, column: 6)
!677 = !DILocation(line: 380, column: 20, scope: !676)
!678 = !DILocation(line: 383, column: 45, scope: !679)
!679 = distinct !DILexicalBlock(scope: !676, file: !1, line: 380, column: 55)
!680 = !DILocation(line: 380, column: 28, scope: !676)
!681 = !DILocation(line: 380, column: 45, scope: !676)
!682 = !DILocation(line: 380, column: 6, scope: !138)
!683 = !DILocation(line: 381, column: 12, scope: !679)
!684 = !DILocation(line: 381, column: 4, scope: !679)
!685 = !DILocation(line: 384, column: 4, scope: !679)
!686 = !DILocation(line: 386, column: 6, scope: !138)
!687 = !DILocation(line: 387, column: 20, scope: !688)
!688 = distinct !DILexicalBlock(scope: !689, file: !1, line: 386, column: 31)
!689 = distinct !DILexicalBlock(scope: !138, file: !1, line: 386, column: 6)
!690 = !DILocation(line: 387, column: 4, scope: !688)
!691 = !DILocation(line: 388, column: 1, scope: !688)
!692 = !DILocation(line: 389, column: 20, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !1, line: 388, column: 41)
!694 = distinct !DILexicalBlock(scope: !689, file: !1, line: 388, column: 13)
!695 = !DILocation(line: 389, column: 4, scope: !693)
!696 = !DILocation(line: 391, column: 12, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !1, line: 390, column: 8)
!698 = !DILocation(line: 391, column: 4, scope: !697)
!699 = !DILocation(line: 394, column: 4, scope: !697)
!700 = !DILocation(line: 396, column: 1, scope: !138)
!701 = !DILocation(line: 411, column: 16, scope: !144)
!702 = !DILocation(line: 412, column: 15, scope: !144)
!703 = !DILocation(line: 413, column: 16, scope: !144)
!704 = !DILocation(line: 423, column: 10, scope: !705)
!705 = distinct !DILexicalBlock(scope: !144, file: !1, line: 423, column: 6)
!706 = !DILocation(line: 423, column: 26, scope: !705)
!707 = !DILocation(line: 423, column: 18, scope: !705)
!708 = !DILocation(line: 423, column: 37, scope: !705)
!709 = !DILocation(line: 424, column: 12, scope: !710)
!710 = distinct !DILexicalBlock(scope: !705, file: !1, line: 423, column: 47)
!711 = !DILocation(line: 424, column: 4, scope: !710)
!712 = !DILocation(line: 427, column: 4, scope: !710)
!713 = !DILocation(line: 416, column: 36, scope: !144)
!714 = !DILocation(line: 417, column: 20, scope: !144)
!715 = !DILocation(line: 429, column: 1, scope: !144)
!716 = !DILocation(line: 430, column: 14, scope: !717)
!717 = distinct !DILexicalBlock(scope: !144, file: !1, line: 430, column: 6)
!718 = !DILocation(line: 430, column: 11, scope: !717)
!719 = !DILocation(line: 430, column: 6, scope: !144)
!720 = !DILocation(line: 431, column: 12, scope: !721)
!721 = distinct !DILexicalBlock(scope: !717, file: !1, line: 430, column: 21)
!722 = !DILocation(line: 431, column: 4, scope: !721)
!723 = !DILocation(line: 434, column: 4, scope: !721)
!724 = !DILocation(line: 416, column: 42, scope: !144)
!725 = !DILocation(line: 417, column: 11, scope: !144)
!726 = !DILocation(line: 436, column: 1, scope: !144)
!727 = !DILocation(line: 437, column: 11, scope: !144)
!728 = !DILocation(line: 416, column: 10, scope: !144)
!729 = !DILocation(line: 438, column: 11, scope: !144)
!730 = !DILocation(line: 416, column: 16, scope: !144)
!731 = !DILocation(line: 439, column: 11, scope: !144)
!732 = !DILocation(line: 415, column: 11, scope: !144)
!733 = !DILocation(line: 440, column: 6, scope: !734)
!734 = distinct !DILexicalBlock(scope: !144, file: !1, line: 440, column: 6)
!735 = !DILocation(line: 440, column: 6, scope: !144)
!736 = !DILocation(line: 416, column: 28, scope: !144)
!737 = !DILocation(line: 416, column: 22, scope: !144)
!738 = !DILocation(line: 416, column: 32, scope: !144)
!739 = !DILocation(line: 442, column: 17, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !1, line: 441, column: 4)
!741 = distinct !DILexicalBlock(scope: !742, file: !1, line: 441, column: 4)
!742 = distinct !DILexicalBlock(scope: !734, file: !1, line: 440, column: 30)
!743 = !DILocation(line: 442, column: 15, scope: !740)
!744 = !DILocation(line: 441, column: 4, scope: !741)
!745 = !DILocation(line: 441, column: 34, scope: !741)
!746 = !DILocation(line: 444, column: 17, scope: !747)
!747 = distinct !DILexicalBlock(scope: !740, file: !1, line: 443, column: 37)
!748 = !DILocation(line: 444, column: 7, scope: !747)
!749 = !DILocation(line: 444, column: 15, scope: !747)
!750 = !DILocation(line: 443, column: 20, scope: !740)
!751 = !DILocation(line: 448, column: 17, scope: !752)
!752 = distinct !DILexicalBlock(scope: !753, file: !1, line: 447, column: 4)
!753 = distinct !DILexicalBlock(scope: !754, file: !1, line: 447, column: 4)
!754 = distinct !DILexicalBlock(scope: !755, file: !1, line: 446, column: 40)
!755 = distinct !DILexicalBlock(scope: !734, file: !1, line: 446, column: 13)
!756 = !DILocation(line: 448, column: 15, scope: !752)
!757 = !DILocation(line: 447, column: 4, scope: !753)
!758 = !DILocation(line: 447, column: 34, scope: !753)
!759 = !DILocation(line: 450, column: 30, scope: !760)
!760 = distinct !DILexicalBlock(scope: !752, file: !1, line: 449, column: 37)
!761 = !DILocation(line: 450, column: 21, scope: !760)
!762 = !DILocation(line: 450, column: 12, scope: !760)
!763 = !DILocation(line: 450, column: 7, scope: !760)
!764 = !DILocation(line: 450, column: 19, scope: !760)
!765 = !DILocation(line: 451, column: 33, scope: !760)
!766 = !DILocation(line: 451, column: 21, scope: !760)
!767 = !DILocation(line: 451, column: 15, scope: !760)
!768 = !DILocation(line: 451, column: 7, scope: !760)
!769 = !DILocation(line: 451, column: 19, scope: !760)
!770 = !DILocation(line: 449, column: 20, scope: !752)
!771 = !DILocation(line: 454, column: 1, scope: !144)
!772 = !DILocation(line: 469, column: 16, scope: !161)
!773 = !DILocation(line: 470, column: 15, scope: !161)
!774 = !DILocation(line: 471, column: 16, scope: !161)
!775 = !DILocation(line: 481, column: 10, scope: !776)
!776 = distinct !DILexicalBlock(scope: !161, file: !1, line: 481, column: 6)
!777 = !DILocation(line: 481, column: 26, scope: !776)
!778 = !DILocation(line: 481, column: 18, scope: !776)
!779 = !DILocation(line: 481, column: 37, scope: !776)
!780 = !DILocation(line: 482, column: 12, scope: !781)
!781 = distinct !DILexicalBlock(scope: !776, file: !1, line: 481, column: 47)
!782 = !DILocation(line: 482, column: 4, scope: !781)
!783 = !DILocation(line: 486, column: 4, scope: !781)
!784 = !DILocation(line: 474, column: 36, scope: !161)
!785 = !DILocation(line: 475, column: 20, scope: !161)
!786 = !DILocation(line: 488, column: 1, scope: !161)
!787 = !DILocation(line: 489, column: 14, scope: !788)
!788 = distinct !DILexicalBlock(scope: !161, file: !1, line: 489, column: 6)
!789 = !DILocation(line: 489, column: 11, scope: !788)
!790 = !DILocation(line: 489, column: 6, scope: !161)
!791 = !DILocation(line: 490, column: 12, scope: !792)
!792 = distinct !DILexicalBlock(scope: !788, file: !1, line: 489, column: 21)
!793 = !DILocation(line: 490, column: 4, scope: !792)
!794 = !DILocation(line: 493, column: 4, scope: !792)
!795 = !DILocation(line: 474, column: 42, scope: !161)
!796 = !DILocation(line: 475, column: 11, scope: !161)
!797 = !DILocation(line: 495, column: 1, scope: !161)
!798 = !DILocation(line: 496, column: 11, scope: !161)
!799 = !DILocation(line: 474, column: 10, scope: !161)
!800 = !DILocation(line: 497, column: 11, scope: !161)
!801 = !DILocation(line: 474, column: 16, scope: !161)
!802 = !DILocation(line: 498, column: 11, scope: !161)
!803 = !DILocation(line: 473, column: 11, scope: !161)
!804 = !DILocation(line: 499, column: 6, scope: !805)
!805 = distinct !DILexicalBlock(scope: !161, file: !1, line: 499, column: 6)
!806 = !DILocation(line: 499, column: 6, scope: !161)
!807 = !DILocation(line: 474, column: 28, scope: !161)
!808 = !DILocation(line: 474, column: 22, scope: !161)
!809 = !DILocation(line: 474, column: 32, scope: !161)
!810 = !DILocation(line: 501, column: 17, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !1, line: 500, column: 4)
!812 = distinct !DILexicalBlock(scope: !813, file: !1, line: 500, column: 4)
!813 = distinct !DILexicalBlock(scope: !805, file: !1, line: 499, column: 30)
!814 = !DILocation(line: 501, column: 15, scope: !811)
!815 = !DILocation(line: 500, column: 4, scope: !812)
!816 = !DILocation(line: 500, column: 34, scope: !812)
!817 = !DILocation(line: 503, column: 21, scope: !818)
!818 = distinct !DILexicalBlock(scope: !811, file: !1, line: 502, column: 37)
!819 = !DILocation(line: 503, column: 7, scope: !818)
!820 = !DILocation(line: 503, column: 19, scope: !818)
!821 = !DILocation(line: 502, column: 20, scope: !811)
!822 = !DILocation(line: 507, column: 17, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !1, line: 506, column: 4)
!824 = distinct !DILexicalBlock(scope: !825, file: !1, line: 506, column: 4)
!825 = distinct !DILexicalBlock(scope: !826, file: !1, line: 505, column: 40)
!826 = distinct !DILexicalBlock(scope: !805, file: !1, line: 505, column: 13)
!827 = !DILocation(line: 507, column: 15, scope: !823)
!828 = !DILocation(line: 506, column: 4, scope: !824)
!829 = !DILocation(line: 506, column: 34, scope: !824)
!830 = !DILocation(line: 509, column: 30, scope: !831)
!831 = distinct !DILexicalBlock(scope: !823, file: !1, line: 508, column: 37)
!832 = !DILocation(line: 509, column: 25, scope: !831)
!833 = !DILocation(line: 509, column: 16, scope: !831)
!834 = !DILocation(line: 509, column: 7, scope: !831)
!835 = !DILocation(line: 509, column: 23, scope: !831)
!836 = !DILocation(line: 510, column: 33, scope: !831)
!837 = !DILocation(line: 510, column: 25, scope: !831)
!838 = !DILocation(line: 510, column: 19, scope: !831)
!839 = !DILocation(line: 510, column: 7, scope: !831)
!840 = !DILocation(line: 510, column: 23, scope: !831)
!841 = !DILocation(line: 508, column: 20, scope: !823)
!842 = !DILocation(line: 513, column: 1, scope: !161)
!843 = !DILocation(line: 528, column: 16, scope: !176)
!844 = !DILocation(line: 529, column: 15, scope: !176)
!845 = !DILocation(line: 530, column: 16, scope: !176)
!846 = !DILocation(line: 540, column: 10, scope: !847)
!847 = distinct !DILexicalBlock(scope: !176, file: !1, line: 540, column: 6)
!848 = !DILocation(line: 540, column: 26, scope: !847)
!849 = !DILocation(line: 540, column: 18, scope: !847)
!850 = !DILocation(line: 540, column: 37, scope: !847)
!851 = !DILocation(line: 541, column: 12, scope: !852)
!852 = distinct !DILexicalBlock(scope: !847, file: !1, line: 540, column: 47)
!853 = !DILocation(line: 541, column: 4, scope: !852)
!854 = !DILocation(line: 545, column: 4, scope: !852)
!855 = !DILocation(line: 533, column: 36, scope: !176)
!856 = !DILocation(line: 534, column: 20, scope: !176)
!857 = !DILocation(line: 547, column: 1, scope: !176)
!858 = !DILocation(line: 548, column: 14, scope: !859)
!859 = distinct !DILexicalBlock(scope: !176, file: !1, line: 548, column: 6)
!860 = !DILocation(line: 548, column: 11, scope: !859)
!861 = !DILocation(line: 548, column: 6, scope: !176)
!862 = !DILocation(line: 549, column: 12, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !1, line: 548, column: 21)
!864 = !DILocation(line: 549, column: 4, scope: !863)
!865 = !DILocation(line: 552, column: 4, scope: !863)
!866 = !DILocation(line: 533, column: 42, scope: !176)
!867 = !DILocation(line: 534, column: 11, scope: !176)
!868 = !DILocation(line: 554, column: 1, scope: !176)
!869 = !DILocation(line: 555, column: 11, scope: !176)
!870 = !DILocation(line: 533, column: 10, scope: !176)
!871 = !DILocation(line: 556, column: 11, scope: !176)
!872 = !DILocation(line: 533, column: 16, scope: !176)
!873 = !DILocation(line: 557, column: 11, scope: !176)
!874 = !DILocation(line: 532, column: 11, scope: !176)
!875 = !DILocation(line: 558, column: 6, scope: !876)
!876 = distinct !DILexicalBlock(scope: !176, file: !1, line: 558, column: 6)
!877 = !DILocation(line: 558, column: 6, scope: !176)
!878 = !DILocation(line: 533, column: 28, scope: !176)
!879 = !DILocation(line: 533, column: 22, scope: !176)
!880 = !DILocation(line: 533, column: 32, scope: !176)
!881 = !DILocation(line: 560, column: 17, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !1, line: 559, column: 4)
!883 = distinct !DILexicalBlock(scope: !884, file: !1, line: 559, column: 4)
!884 = distinct !DILexicalBlock(scope: !876, file: !1, line: 558, column: 30)
!885 = !DILocation(line: 560, column: 15, scope: !882)
!886 = !DILocation(line: 559, column: 4, scope: !883)
!887 = !DILocation(line: 559, column: 34, scope: !883)
!888 = !DILocation(line: 562, column: 22, scope: !889)
!889 = distinct !DILexicalBlock(scope: !882, file: !1, line: 561, column: 37)
!890 = !DILocation(line: 562, column: 7, scope: !889)
!891 = !DILocation(line: 562, column: 19, scope: !889)
!892 = !DILocation(line: 561, column: 20, scope: !882)
!893 = !DILocation(line: 566, column: 17, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !1, line: 565, column: 4)
!895 = distinct !DILexicalBlock(scope: !896, file: !1, line: 565, column: 4)
!896 = distinct !DILexicalBlock(scope: !897, file: !1, line: 564, column: 40)
!897 = distinct !DILexicalBlock(scope: !876, file: !1, line: 564, column: 13)
!898 = !DILocation(line: 566, column: 15, scope: !894)
!899 = !DILocation(line: 565, column: 4, scope: !895)
!900 = !DILocation(line: 565, column: 34, scope: !895)
!901 = !DILocation(line: 568, column: 31, scope: !902)
!902 = distinct !DILexicalBlock(scope: !894, file: !1, line: 567, column: 37)
!903 = !DILocation(line: 568, column: 26, scope: !902)
!904 = !DILocation(line: 568, column: 16, scope: !902)
!905 = !DILocation(line: 568, column: 7, scope: !902)
!906 = !DILocation(line: 568, column: 23, scope: !902)
!907 = !DILocation(line: 569, column: 34, scope: !902)
!908 = !DILocation(line: 569, column: 26, scope: !902)
!909 = !DILocation(line: 569, column: 19, scope: !902)
!910 = !DILocation(line: 569, column: 7, scope: !902)
!911 = !DILocation(line: 569, column: 23, scope: !902)
!912 = !DILocation(line: 567, column: 20, scope: !894)
!913 = !DILocation(line: 572, column: 1, scope: !176)
