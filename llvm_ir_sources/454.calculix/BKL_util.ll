; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._BKL = type { %struct._BPG*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [3 x i32], i32*, float }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in BKL_setRandomColors(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"\0A fatal error in BKL_setColorsWeights(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [65 x i8] c"\0A fatal error in BKL_setColorWeights(%p)\0A region %d has color %d\00", align 1
@.str3 = private unnamed_addr constant [49 x i8] c"\0A fatal error in BKL_segColor(%p,%d)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [51 x i8] c"\0A fatal error in BKL_flipDomain(%p,%d)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [57 x i8] c"\0A fatal error in BKL_flipDomain(%p,%d)\0A colors[%d] = %d\0A\00", align 1
@.str6 = private unnamed_addr constant [52 x i8] c"\0A fatal error in BKL_greyCodeDomain(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [58 x i8] c"\0A fatal error in BKL_setInitPart(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [69 x i8] c"\0A fatal error in BKL_setInitPart(%p,%d,%d,%p)\0A list[] size exceeded\0A\00", align 1
@.str9 = private unnamed_addr constant [52 x i8] c"\0A fatal error in BKL_domAdjToSep(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @BKL_setRandomColors(%struct._BKL* %bkl, i32 %seed) #0 {
  %drand = alloca %struct._Drand, align 8
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !79, metadata !186), !dbg !187
  tail call void @llvm.dbg.value(metadata i32 %seed, i64 0, metadata !80, metadata !186), !dbg !188
  %1 = bitcast %struct._Drand* %drand to i8*, !dbg !189
  call void @llvm.lifetime.start(i64 72, i8* %1) #1, !dbg !189
  %2 = icmp eq %struct._BKL* %bkl, null, !dbg !190
  br i1 %2, label %7, label %3, !dbg !192

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !193
  %5 = load %struct._BPG** %4, align 8, !dbg !193, !tbaa !194
  %6 = icmp eq %struct._BPG* %5, null, !dbg !201
  br i1 %6, label %7, label %10, !dbg !202

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !203, !tbaa !205
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), %struct._BKL* %bkl, i32 %seed) #6, !dbg !206
  tail call void @exit(i32 -1) #7, !dbg !207
  unreachable, !dbg !207

; <label>:10                                      ; preds = %3
  %11 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !208
  %12 = load i32* %11, align 4, !dbg !208, !tbaa !209
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !82, metadata !186), !dbg !210
  %13 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !211
  %14 = load i32** %13, align 8, !dbg !211, !tbaa !212
  tail call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !84, metadata !186), !dbg !213
  tail call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !85, metadata !186), !dbg !214
  call void @Drand_setDefaultFields(%struct._Drand* %drand) #6, !dbg !215
  call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !85, metadata !186), !dbg !214
  call void @Drand_init(%struct._Drand* %drand) #6, !dbg !216
  call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !85, metadata !186), !dbg !214
  call void @Drand_setUniform(%struct._Drand* %drand, double 0.000000e+00, double 1.000000e+00) #6, !dbg !217
  %15 = icmp sgt i32 %seed, 0, !dbg !218
  br i1 %15, label %16, label %.preheader, !dbg !220

; <label>:16                                      ; preds = %10
  call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !85, metadata !186), !dbg !214
  call void @Drand_setSeed(%struct._Drand* %drand, i32 %seed) #6, !dbg !221
  br label %.preheader, !dbg !223

.preheader:                                       ; preds = %16, %10
  %17 = icmp sgt i32 %12, 0, !dbg !224
  br i1 %17, label %.lr.ph, label %._crit_edge, !dbg !227

.lr.ph:                                           ; preds = %.preheader
  %18 = add i32 %12, -1, !dbg !227
  br label %19, !dbg !227

; <label>:19                                      ; preds = %19, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %19 ]
  call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !85, metadata !186), !dbg !214
  %20 = call double @Drand_value(%struct._Drand* %drand) #6, !dbg !228
  %21 = fcmp olt double %20, 5.000000e-01, !dbg !230
  %22 = select i1 %21, i32 1, i32 2, !dbg !231
  %23 = getelementptr inbounds i32* %14, i64 %indvars.iv, !dbg !232
  store i32 %22, i32* %23, align 4, !dbg !233, !tbaa !234
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !227
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !227
  %exitcond = icmp eq i32 %lftr.wideiv, %18, !dbg !227
  br i1 %exitcond, label %._crit_edge, label %19, !dbg !227

._crit_edge:                                      ; preds = %19, %.preheader
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #8, !dbg !235
  call void @llvm.lifetime.end(i64 72, i8* %1) #1, !dbg !236
  ret void, !dbg !236
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: noreturn optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @Drand_setDefaultFields(%struct._Drand*) #4

; Function Attrs: optsize
declare void @Drand_init(%struct._Drand*) #4

; Function Attrs: optsize
declare void @Drand_setUniform(%struct._Drand*, double, double) #4

; Function Attrs: optsize
declare void @Drand_setSeed(%struct._Drand*, i32) #4

; Function Attrs: optsize
declare double @Drand_value(%struct._Drand*) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @BKL_setColorWeights(%struct._BKL* %bkl) #0 {
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !104, metadata !186), !dbg !237
  %1 = icmp eq %struct._BKL* %bkl, null, !dbg !238
  br i1 %1, label %2, label %5, !dbg !240

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !241, !tbaa !205
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), %struct._BKL* null) #6, !dbg !243
  tail call void @exit(i32 -1) #7, !dbg !244
  unreachable, !dbg !244

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !245
  %7 = load i32** %6, align 8, !dbg !245, !tbaa !212
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !107, metadata !186), !dbg !246
  %8 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 2, !dbg !247
  store i32 0, i32* %8, align 4, !dbg !248, !tbaa !234
  %9 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 1, !dbg !249
  store i32 0, i32* %9, align 4, !dbg !250, !tbaa !234
  %10 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 0, !dbg !251
  store i32 0, i32* %10, align 4, !dbg !252, !tbaa !234
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !106, metadata !186), !dbg !253
  %11 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !254
  %12 = load i32* %11, align 4, !dbg !254, !tbaa !209
  %13 = icmp sgt i32 %12, 0, !dbg !257
  br i1 %13, label %.lr.ph12, label %.preheader, !dbg !258

.lr.ph12:                                         ; preds = %5
  %14 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12, !dbg !259
  br label %20, !dbg !258

.preheader:                                       ; preds = %28, %5
  %.lcssa6 = phi i32 [ %12, %5 ], [ %36, %28 ]
  %15 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 3, !dbg !261
  %16 = load i32* %15, align 4, !dbg !261, !tbaa !264
  %17 = icmp slt i32 %.lcssa6, %16, !dbg !265
  br i1 %17, label %.lr.ph, label %._crit_edge, !dbg !266

.lr.ph:                                           ; preds = %.preheader
  %18 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12, !dbg !267
  %19 = sext i32 %.lcssa6 to i64
  br label %39, !dbg !266

; <label>:20                                      ; preds = %.lr.ph12, %28
  %indvars.iv19 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next20, %28 ]
  %21 = getelementptr inbounds i32* %7, i64 %indvars.iv19, !dbg !269
  %22 = load i32* %21, align 4, !dbg !269, !tbaa !234
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !105, metadata !186), !dbg !271
  %.off = add i32 %22, -1, !dbg !272
  %23 = icmp ugt i32 %.off, 1, !dbg !272
  br i1 %23, label %24, label %28, !dbg !272

; <label>:24                                      ; preds = %20
  %25 = trunc i64 %indvars.iv19 to i32, !dbg !273
  %26 = load %struct.__sFILE** @__stderrp, align 8, !dbg !273, !tbaa !205
  %27 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %26, i8* getelementptr inbounds ([65 x i8]* @.str2, i64 0, i64 0), %struct._BKL* %bkl, i32 %25, i32 %22) #6, !dbg !275
  tail call void @exit(i32 -1) #7, !dbg !276
  unreachable, !dbg !276

; <label>:28                                      ; preds = %20
  %29 = load i32** %14, align 8, !dbg !259, !tbaa !277
  %30 = getelementptr inbounds i32* %29, i64 %indvars.iv19, !dbg !278
  %31 = load i32* %30, align 4, !dbg !278, !tbaa !234
  %32 = sext i32 %22 to i64, !dbg !279
  %33 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %32, !dbg !279
  %34 = load i32* %33, align 4, !dbg !280, !tbaa !234
  %35 = add nsw i32 %34, %31, !dbg !280
  store i32 %35, i32* %33, align 4, !dbg !280, !tbaa !234
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !258
  %36 = load i32* %11, align 4, !dbg !254, !tbaa !209
  %37 = sext i32 %36 to i64, !dbg !257
  %38 = icmp slt i64 %indvars.iv.next20, %37, !dbg !257
  br i1 %38, label %20, label %.preheader, !dbg !258

; <label>:39                                      ; preds = %.lr.ph, %46
  %indvars.iv = phi i64 [ %19, %.lr.ph ], [ %indvars.iv.next, %46 ]
  %40 = trunc i64 %indvars.iv to i32, !dbg !281
  %41 = tail call i32 @BKL_segColor(%struct._BKL* %bkl, i32 %40) #8, !dbg !281
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !105, metadata !186), !dbg !271
  %42 = icmp ugt i32 %41, 2, !dbg !283
  br i1 %42, label %43, label %46, !dbg !283

; <label>:43                                      ; preds = %39
  %44 = load %struct.__sFILE** @__stderrp, align 8, !dbg !284, !tbaa !205
  %45 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %44, i8* getelementptr inbounds ([65 x i8]* @.str2, i64 0, i64 0), %struct._BKL* %bkl, i32 %40, i32 %41) #6, !dbg !286
  tail call void @exit(i32 -1) #7, !dbg !287
  unreachable, !dbg !287

; <label>:46                                      ; preds = %39
  %47 = getelementptr inbounds i32* %7, i64 %indvars.iv, !dbg !288
  store i32 %41, i32* %47, align 4, !dbg !289, !tbaa !234
  %48 = load i32** %18, align 8, !dbg !267, !tbaa !277
  %49 = getelementptr inbounds i32* %48, i64 %indvars.iv, !dbg !290
  %50 = load i32* %49, align 4, !dbg !290, !tbaa !234
  %51 = sext i32 %41 to i64, !dbg !291
  %52 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %51, !dbg !291
  %53 = load i32* %52, align 4, !dbg !292, !tbaa !234
  %54 = add nsw i32 %53, %50, !dbg !292
  store i32 %54, i32* %52, align 4, !dbg !292, !tbaa !234
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !266
  %55 = load i32* %15, align 4, !dbg !261, !tbaa !264
  %56 = sext i32 %55 to i64, !dbg !265
  %57 = icmp slt i64 %indvars.iv.next, %56, !dbg !265
  br i1 %57, label %39, label %._crit_edge, !dbg !266

._crit_edge:                                      ; preds = %46, %.preheader
  ret void, !dbg !293
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BKL_segColor(%struct._BKL* %bkl, i32 %iseg) #0 {
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !112, metadata !186), !dbg !294
  tail call void @llvm.dbg.value(metadata i32 %iseg, i64 0, metadata !113, metadata !186), !dbg !295
  %1 = icmp eq %struct._BKL* %bkl, null, !dbg !296
  br i1 %1, label %10, label %2, !dbg !298

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !299
  %4 = load i32* %3, align 4, !dbg !299, !tbaa !209
  %5 = icmp sgt i32 %4, %iseg, !dbg !300
  br i1 %5, label %10, label %6, !dbg !301

; <label>:6                                       ; preds = %2
  %7 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 3, !dbg !302
  %8 = load i32* %7, align 4, !dbg !302, !tbaa !264
  %9 = icmp sgt i32 %8, %iseg, !dbg !303
  br i1 %9, label %13, label %10, !dbg !304

; <label>:10                                      ; preds = %6, %2, %0
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !305, !tbaa !205
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0), %struct._BKL* %bkl, i32 %iseg) #6, !dbg !307
  tail call void @exit(i32 -1) #7, !dbg !308
  unreachable, !dbg !308

; <label>:13                                      ; preds = %6
  %14 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !309
  %15 = load i32** %14, align 8, !dbg !309, !tbaa !212
  tail call void @llvm.dbg.value(metadata i32* %15, i64 0, metadata !118, metadata !186), !dbg !310
  %16 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !311
  %17 = load %struct._BPG** %16, align 8, !dbg !311, !tbaa !194
  %18 = getelementptr inbounds %struct._BPG* %17, i64 0, i32 2, !dbg !312
  %19 = load %struct._Graph** %18, align 8, !dbg !312, !tbaa !313
  tail call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !116, metadata !186), !dbg !315
  tail call void @llvm.dbg.value(metadata i32** %adj, i64 0, metadata !117, metadata !186), !dbg !316
  call void @Graph_adjAndSize(%struct._Graph* %19, i32 %iseg, i32* %size, i32** %adj) #6, !dbg !317
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !114, metadata !186), !dbg !318
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !116, metadata !186), !dbg !315
  %20 = load i32* %size, align 4, !dbg !319, !tbaa !234
  %21 = icmp sgt i32 %20, 0, !dbg !321
  br i1 %21, label %22, label %.loopexit, !dbg !322

; <label>:22                                      ; preds = %13
  call void @llvm.dbg.value(metadata i32** %adj, i64 0, metadata !117, metadata !186), !dbg !316
  %23 = load i32** %adj, align 8, !dbg !323, !tbaa !205
  %24 = load i32* %23, align 4, !dbg !323, !tbaa !234
  %25 = sext i32 %24 to i64, !dbg !325
  %26 = getelementptr inbounds i32* %15, i64 %25, !dbg !325
  %27 = load i32* %26, align 4, !dbg !325, !tbaa !234
  call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !114, metadata !186), !dbg !318
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !115, metadata !186), !dbg !326
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !116, metadata !186), !dbg !315
  %28 = icmp sgt i32 %20, 1, !dbg !327
  br i1 %28, label %.lr.ph, label %.loopexit, !dbg !330

.lr.ph:                                           ; preds = %22
  %29 = sext i32 %20 to i64, !dbg !330
  br label %32, !dbg !330

; <label>:30                                      ; preds = %32
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !116, metadata !186), !dbg !315
  %31 = icmp slt i64 %indvars.iv.next, %29, !dbg !327
  br i1 %31, label %32, label %.loopexit, !dbg !330

; <label>:32                                      ; preds = %.lr.ph, %30
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %30 ]
  call void @llvm.dbg.value(metadata i32** %adj, i64 0, metadata !117, metadata !186), !dbg !316
  %33 = getelementptr inbounds i32* %23, i64 %indvars.iv, !dbg !331
  %34 = load i32* %33, align 4, !dbg !331, !tbaa !234
  %35 = sext i32 %34 to i64, !dbg !334
  %36 = getelementptr inbounds i32* %15, i64 %35, !dbg !334
  %37 = load i32* %36, align 4, !dbg !334, !tbaa !234
  %38 = icmp eq i32 %27, %37, !dbg !335
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !330
  br i1 %38, label %30, label %.loopexit, !dbg !336

.loopexit:                                        ; preds = %30, %32, %22, %13
  %color.0 = phi i32 [ 0, %13 ], [ %27, %22 ], [ 0, %32 ], [ %27, %30 ]
  ret i32 %color.0, !dbg !337
}

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @BKL_flipDomain(%struct._BKL* %bkl, i32 %idom) #0 {
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !121, metadata !186), !dbg !338
  tail call void @llvm.dbg.value(metadata i32 %idom, i64 0, metadata !122, metadata !186), !dbg !339
  %1 = icmp eq %struct._BKL* %bkl, null, !dbg !340
  %2 = icmp slt i32 %idom, 0, !dbg !342
  %or.cond = or i1 %1, %2, !dbg !343
  br i1 %or.cond, label %7, label %3, !dbg !343

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !344
  %5 = load i32* %4, align 4, !dbg !344, !tbaa !209
  %6 = icmp sgt i32 %5, %idom, !dbg !345
  br i1 %6, label %10, label %7, !dbg !346

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !347, !tbaa !205
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), %struct._BKL* %bkl, i32 %idom) #6, !dbg !349
  tail call void @exit(i32 -1) #7, !dbg !350
  unreachable, !dbg !350

; <label>:10                                      ; preds = %3
  %11 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !351
  %12 = load i32** %11, align 8, !dbg !351, !tbaa !212
  tail call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !131, metadata !186), !dbg !352
  %13 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 12, !dbg !353
  %14 = load i32** %13, align 8, !dbg !353, !tbaa !277
  tail call void @llvm.dbg.value(metadata i32* %14, i64 0, metadata !132, metadata !186), !dbg !354
  %15 = sext i32 %idom to i64, !dbg !355
  %16 = getelementptr inbounds i32* %12, i64 %15, !dbg !355
  %17 = load i32* %16, align 4, !dbg !355, !tbaa !234
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !126, metadata !186), !dbg !356
  switch i32 %17, label %19 [
    i32 1, label %22
    i32 2, label %18
  ], !dbg !357

; <label>:18                                      ; preds = %10
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !125, metadata !186), !dbg !358
  br label %22, !dbg !359

; <label>:19                                      ; preds = %10
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !361, !tbaa !205
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([57 x i8]* @.str5, i64 0, i64 0), %struct._BKL* %bkl, i32 %idom, i32 %idom, i32 %17) #6, !dbg !362
  tail call void @exit(i32 -1) #7, !dbg !363
  unreachable, !dbg !363

; <label>:22                                      ; preds = %10, %18
  %newcolor.0 = phi i32 [ 1, %18 ], [ 2, %10 ]
  store i32 %newcolor.0, i32* %16, align 4, !dbg !364, !tbaa !234
  %23 = getelementptr inbounds i32* %14, i64 %15, !dbg !365
  %24 = load i32* %23, align 4, !dbg !365, !tbaa !234
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !128, metadata !186), !dbg !366
  %25 = sext i32 %17 to i64, !dbg !367
  %26 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %25, !dbg !367
  %27 = load i32* %26, align 4, !dbg !368, !tbaa !234
  %28 = sub nsw i32 %27, %24, !dbg !368
  store i32 %28, i32* %26, align 4, !dbg !368, !tbaa !234
  %29 = zext i32 %newcolor.0 to i64, !dbg !369
  %30 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %29, !dbg !369
  %31 = load i32* %30, align 4, !dbg !370, !tbaa !234
  %32 = add nsw i32 %31, %24, !dbg !370
  store i32 %32, i32* %30, align 4, !dbg !370, !tbaa !234
  %33 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !371
  %34 = load %struct._BPG** %33, align 8, !dbg !371, !tbaa !194
  %35 = getelementptr inbounds %struct._BPG* %34, i64 0, i32 2, !dbg !372
  %36 = load %struct._Graph** %35, align 8, !dbg !372, !tbaa !313
  tail call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !127, metadata !186), !dbg !373
  tail call void @llvm.dbg.value(metadata i32** %adj, i64 0, metadata !130, metadata !186), !dbg !374
  call void @Graph_adjAndSize(%struct._Graph* %36, i32 %idom, i32* %size, i32** %adj) #6, !dbg !375
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !123, metadata !186), !dbg !376
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !127, metadata !186), !dbg !373
  %37 = load i32* %size, align 4, !dbg !377, !tbaa !234
  %38 = icmp sgt i32 %37, 0, !dbg !380
  br i1 %38, label %.lr.ph, label %._crit_edge, !dbg !381

.lr.ph:                                           ; preds = %22, %58
  %indvars.iv = phi i64 [ %indvars.iv.next, %58 ], [ 0, %22 ]
  call void @llvm.dbg.value(metadata i32** %adj, i64 0, metadata !130, metadata !186), !dbg !374
  %39 = load i32** %adj, align 8, !dbg !382, !tbaa !205
  %40 = getelementptr inbounds i32* %39, i64 %indvars.iv, !dbg !382
  %41 = load i32* %40, align 4, !dbg !382, !tbaa !234
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !124, metadata !186), !dbg !384
  %42 = sext i32 %41 to i64, !dbg !385
  %43 = getelementptr inbounds i32* %14, i64 %42, !dbg !385
  %44 = load i32* %43, align 4, !dbg !385, !tbaa !234
  call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !129, metadata !186), !dbg !386
  %45 = getelementptr inbounds i32* %12, i64 %42, !dbg !387
  %46 = load i32* %45, align 4, !dbg !387, !tbaa !234
  call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !126, metadata !186), !dbg !356
  %47 = call i32 @BKL_segColor(%struct._BKL* %bkl, i32 %41) #8, !dbg !389
  call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !125, metadata !186), !dbg !358
  %48 = icmp eq i32 %46, %47, !dbg !390
  br i1 %48, label %58, label %49, !dbg !391

; <label>:49                                      ; preds = %.lr.ph
  %50 = sext i32 %46 to i64, !dbg !392
  %51 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %50, !dbg !392
  %52 = load i32* %51, align 4, !dbg !394, !tbaa !234
  %53 = sub nsw i32 %52, %44, !dbg !394
  store i32 %53, i32* %51, align 4, !dbg !394, !tbaa !234
  %54 = sext i32 %47 to i64, !dbg !395
  %55 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 %54, !dbg !395
  %56 = load i32* %55, align 4, !dbg !396, !tbaa !234
  %57 = add nsw i32 %56, %44, !dbg !396
  store i32 %57, i32* %55, align 4, !dbg !396, !tbaa !234
  store i32 %47, i32* %45, align 4, !dbg !397, !tbaa !234
  br label %58, !dbg !398

; <label>:58                                      ; preds = %.lr.ph, %49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !381
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !127, metadata !186), !dbg !373
  %59 = load i32* %size, align 4, !dbg !377, !tbaa !234
  %60 = sext i32 %59 to i64, !dbg !380
  %61 = icmp slt i64 %indvars.iv.next, %60, !dbg !380
  br i1 %61, label %.lr.ph, label %._crit_edge, !dbg !381

._crit_edge:                                      ; preds = %58, %22
  %62 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 7, !dbg !399
  %63 = load i32* %62, align 4, !dbg !400, !tbaa !401
  %64 = add nsw i32 %63, 1, !dbg !400
  store i32 %64, i32* %62, align 4, !dbg !400, !tbaa !401
  ret void, !dbg !402
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BKL_greyCodeDomain(%struct._BKL* %bkl, i32 %count) #0 {
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !135, metadata !186), !dbg !403
  tail call void @llvm.dbg.value(metadata i32 %count, i64 0, metadata !136, metadata !186), !dbg !404
  %1 = icmp eq %struct._BKL* %bkl, null, !dbg !405
  br i1 %1, label %4, label %.preheader, !dbg !407

.preheader:                                       ; preds = %0
  %2 = srem i32 %count, 2, !dbg !408
  %3 = icmp eq i32 %2, 1, !dbg !413
  br i1 %3, label %._crit_edge, label %.lr.ph, !dbg !414

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !415, !tbaa !205
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), %struct._BKL* null) #6, !dbg !417
  tail call void @exit(i32 -1) #7, !dbg !418
  unreachable, !dbg !418

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %idom.0.lcssa = phi i32 [ 0, %.preheader ], [ %7, %.lr.ph ]
  ret i32 %idom.0.lcssa, !dbg !419

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %idom.02 = phi i32 [ %7, %.lr.ph ], [ 0, %.preheader ]
  %chk.01 = phi i32 [ %8, %.lr.ph ], [ 2, %.preheader ]
  %7 = add nuw nsw i32 %idom.02, 1, !dbg !421
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !138, metadata !186), !dbg !422
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !139, metadata !186), !dbg !423
  %8 = shl nsw i32 %chk.01, 1, !dbg !424
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !137, metadata !186), !dbg !425
  %9 = srem i32 %count, %8, !dbg !408
  %10 = icmp eq i32 %9, %chk.01, !dbg !413
  br i1 %10, label %._crit_edge, label %.lr.ph, !dbg !414
}

; Function Attrs: nounwind optsize ssp uwtable
define float @BKL_setInitPart(%struct._BKL* %bkl, i32 %flag, i32 %seed, i32* %domcolors) #0 {
  %dsize = alloca i32, align 4
  %ssize = alloca i32, align 4
  %dadj = alloca i32*, align 8
  %sadj = alloca i32*, align 8
  %drand = alloca %struct._Drand, align 8
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !144, metadata !186), !dbg !426
  tail call void @llvm.dbg.value(metadata i32 %flag, i64 0, metadata !145, metadata !186), !dbg !427
  tail call void @llvm.dbg.value(metadata i32 %seed, i64 0, metadata !146, metadata !186), !dbg !428
  tail call void @llvm.dbg.value(metadata i32* %domcolors, i64 0, metadata !147, metadata !186), !dbg !429
  %1 = icmp eq %struct._BKL* %bkl, null, !dbg !430
  %flag.off = add i32 %flag, -1, !dbg !432
  %2 = icmp ugt i32 %flag.off, 5, !dbg !432
  %3 = or i1 %1, %2, !dbg !432
  br i1 %3, label %7, label %4, !dbg !432

; <label>:4                                       ; preds = %0
  %5 = icmp eq i32 %flag, 6, !dbg !433
  %6 = icmp eq i32* %domcolors, null, !dbg !434
  %or.cond5 = and i1 %5, %6, !dbg !435
  br i1 %or.cond5, label %7, label %10, !dbg !435

; <label>:7                                       ; preds = %4, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !436, !tbaa !205
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([58 x i8]* @.str7, i64 0, i64 0), %struct._BKL* %bkl, i32 %flag, i32 %seed, i32* %domcolors) #6, !dbg !438
  tail call void @exit(i32 -1) #7, !dbg !439
  unreachable, !dbg !439

; <label>:10                                      ; preds = %4
  %11 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !440
  %12 = load %struct._BPG** %11, align 8, !dbg !440, !tbaa !194
  tail call void @llvm.dbg.value(metadata %struct._BPG* %12, i64 0, metadata !148, metadata !186), !dbg !441
  %13 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !442
  %14 = load i32* %13, align 4, !dbg !442, !tbaa !209
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !157, metadata !186), !dbg !443
  %15 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !444
  %16 = load i32** %15, align 8, !dbg !444, !tbaa !212
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !162, metadata !186), !dbg !445
  switch i32 %14, label %20 [
    i32 1, label %17
    i32 2, label %18
  ], !dbg !446

; <label>:17                                      ; preds = %10
  store i32 1, i32* %16, align 4, !dbg !447, !tbaa !234
  tail call void @BKL_setColorWeights(%struct._BKL* %bkl) #8, !dbg !449
  br label %107, !dbg !450

; <label>:18                                      ; preds = %10
  store i32 1, i32* %16, align 4, !dbg !451, !tbaa !234
  %19 = getelementptr inbounds i32* %16, i64 1, !dbg !453
  store i32 2, i32* %19, align 4, !dbg !454, !tbaa !234
  tail call void @BKL_setColorWeights(%struct._BKL* %bkl) #8, !dbg !455
  br label %107, !dbg !456

; <label>:20                                      ; preds = %10
  switch i32 %flag, label %107 [
    i32 1, label %21
    i32 2, label %32
    i32 3, label %32
    i32 4, label %45
    i32 5, label %45
    i32 6, label %106
  ], !dbg !457

; <label>:21                                      ; preds = %20
  %22 = bitcast %struct._Drand* %drand to i8*, !dbg !458
  call void @llvm.lifetime.start(i64 72, i8* %22) #1, !dbg !458
  tail call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !168, metadata !186), !dbg !459
  call void @Drand_setDefaultFields(%struct._Drand* %drand) #6, !dbg !460
  call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !168, metadata !186), !dbg !459
  call void @Drand_init(%struct._Drand* %drand) #6, !dbg !461
  call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !168, metadata !186), !dbg !459
  call void @Drand_setUniform(%struct._Drand* %drand, double 0.000000e+00, double 1.000000e+00) #6, !dbg !462
  %23 = icmp sgt i32 %seed, 0, !dbg !463
  br i1 %23, label %24, label %.preheader, !dbg !465

; <label>:24                                      ; preds = %21
  call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !168, metadata !186), !dbg !459
  call void @Drand_setSeed(%struct._Drand* %drand, i32 %seed) #6, !dbg !466
  br label %.preheader, !dbg !468

.preheader:                                       ; preds = %24, %21
  %25 = icmp sgt i32 %14, 0, !dbg !469
  br i1 %25, label %.lr.ph, label %._crit_edge, !dbg !472

.lr.ph:                                           ; preds = %.preheader
  %26 = add i32 %14, -1, !dbg !472
  br label %27, !dbg !472

; <label>:27                                      ; preds = %27, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %27 ]
  call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !168, metadata !186), !dbg !459
  %28 = call double @Drand_value(%struct._Drand* %drand) #6, !dbg !473
  %29 = fcmp olt double %28, 5.000000e-01, !dbg !475
  %30 = select i1 %29, i32 1, i32 2, !dbg !476
  %31 = getelementptr inbounds i32* %16, i64 %indvars.iv, !dbg !477
  store i32 %30, i32* %31, align 4, !dbg !478, !tbaa !234
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !472
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !472
  %exitcond = icmp eq i32 %lftr.wideiv, %26, !dbg !472
  br i1 %exitcond, label %._crit_edge, label %27, !dbg !472

._crit_edge:                                      ; preds = %27, %.preheader
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #8, !dbg !479
  call void @llvm.lifetime.end(i64 72, i8* %22) #1, !dbg !480
  br label %107

; <label>:32                                      ; preds = %20, %20
  tail call void @IVfill(i32 %14, i32* %16, i32 2) #6, !dbg !481
  %33 = icmp eq i32 %flag, 2, !dbg !482
  br i1 %33, label %34, label %38, !dbg !484

; <label>:34                                      ; preds = %32
  %35 = srem i32 %seed, %14, !dbg !485
  %36 = sext i32 %35 to i64, !dbg !487
  %37 = getelementptr inbounds i32* %16, i64 %36, !dbg !487
  store i32 1, i32* %37, align 4, !dbg !488, !tbaa !234
  br label %44, !dbg !489

; <label>:38                                      ; preds = %32
  %39 = load %struct._BPG** %11, align 8, !dbg !490, !tbaa !194
  %40 = srem i32 %seed, %14, !dbg !492
  %41 = tail call i32 @BPG_pseudoperipheralnode(%struct._BPG* %39, i32 %40) #6, !dbg !493
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !159, metadata !186), !dbg !494
  %42 = sext i32 %41 to i64, !dbg !495
  %43 = getelementptr inbounds i32* %16, i64 %42, !dbg !495
  store i32 1, i32* %43, align 4, !dbg !496, !tbaa !234
  br label %44

; <label>:44                                      ; preds = %38, %34
  tail call void @BKL_setColorWeights(%struct._BKL* %bkl) #8, !dbg !497
  br label %107, !dbg !498

; <label>:45                                      ; preds = %20, %20
  tail call void @IVfill(i32 %14, i32* %16, i32 2) #6, !dbg !499
  tail call void @BKL_setColorWeights(%struct._BKL* %bkl) #8, !dbg !500
  %46 = tail call i32* @IVinit(i32 %14, i32 -1) #6, !dbg !501
  tail call void @llvm.dbg.value(metadata i32* %46, i64 0, metadata !165, metadata !186), !dbg !502
  %47 = tail call i32* @IVinit(i32 %14, i32 -1) #6, !dbg !503
  tail call void @llvm.dbg.value(metadata i32* %47, i64 0, metadata !166, metadata !186), !dbg !504
  %48 = icmp eq i32 %flag, 4, !dbg !505
  br i1 %48, label %49, label %51, !dbg !507

; <label>:49                                      ; preds = %45
  %50 = srem i32 %seed, %14, !dbg !508
  br label %55, !dbg !510

; <label>:51                                      ; preds = %45
  %52 = load %struct._BPG** %11, align 8, !dbg !511, !tbaa !194
  %53 = srem i32 %seed, %14, !dbg !513
  %54 = tail call i32 @BPG_pseudoperipheralnode(%struct._BPG* %52, i32 %53) #6, !dbg !514
  br label %55

; <label>:55                                      ; preds = %51, %49
  %storemerge = phi i32 [ %54, %51 ], [ %50, %49 ]
  store i32 %storemerge, i32* %46, align 4, !dbg !515, !tbaa !234
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !156, metadata !186), !dbg !516
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !158, metadata !186), !dbg !517
  %56 = sext i32 %storemerge to i64, !dbg !518
  %57 = getelementptr inbounds i32* %47, i64 %56, !dbg !518
  store i32 1, i32* %57, align 4, !dbg !519, !tbaa !234
  %58 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 1, !dbg !520
  %59 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 11, i64 2, !dbg !523
  %60 = getelementptr inbounds %struct._BPG* %12, i64 0, i32 2, !dbg !524
  %61 = add nsw i32 %14, -1, !dbg !525
  br label %64, !dbg !535

.loopexit:                                        ; preds = %._crit_edge13, %70
  %last.1.lcssa = phi i32 [ %last.020, %70 ], [ %last.2.lcssa, %._crit_edge13 ]
  %62 = sext i32 %last.1.lcssa to i64, !dbg !536
  %63 = icmp slt i64 %indvars.iv25, %62, !dbg !536
  br i1 %63, label %64, label %105, !dbg !535

; <label>:64                                      ; preds = %.loopexit, %55
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %.loopexit ], [ 0, %55 ]
  %last.020 = phi i32 [ %last.1.lcssa, %.loopexit ], [ 0, %55 ]
  %indvars.iv.next26 = add nuw i64 %indvars.iv25, 1, !dbg !535
  %65 = getelementptr inbounds i32* %46, i64 %indvars.iv25, !dbg !537
  %66 = load i32* %65, align 4, !dbg !537, !tbaa !234
  call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !150, metadata !186), !dbg !538
  call void @BKL_flipDomain(%struct._BKL* %bkl, i32 %66) #8, !dbg !539
  %67 = load i32* %58, align 4, !dbg !520, !tbaa !234
  %68 = load i32* %59, align 4, !dbg !523, !tbaa !234
  %69 = icmp slt i32 %67, %68, !dbg !540
  br i1 %69, label %70, label %105, !dbg !541

; <label>:70                                      ; preds = %64
  %71 = load %struct._Graph** %60, align 8, !dbg !524, !tbaa !313
  call void @llvm.dbg.value(metadata i32* %dsize, i64 0, metadata !152, metadata !186), !dbg !542
  call void @llvm.dbg.value(metadata i32** %dadj, i64 0, metadata !164, metadata !186), !dbg !543
  call void @Graph_adjAndSize(%struct._Graph* %71, i32 %66, i32* %dsize, i32** %dadj) #6, !dbg !544
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !154, metadata !186), !dbg !545
  call void @llvm.dbg.value(metadata i32* %dsize, i64 0, metadata !152, metadata !186), !dbg !542
  %72 = load i32* %dsize, align 4, !dbg !546, !tbaa !234
  %73 = icmp sgt i32 %72, 0, !dbg !547
  br i1 %73, label %.lr.ph17, label %.loopexit, !dbg !548

.lr.ph17:                                         ; preds = %70, %._crit_edge13
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %._crit_edge13 ], [ 0, %70 ]
  %last.114 = phi i32 [ %last.2.lcssa, %._crit_edge13 ], [ %last.020, %70 ]
  call void @llvm.dbg.value(metadata i32** %dadj, i64 0, metadata !164, metadata !186), !dbg !543
  %74 = load i32** %dadj, align 8, !dbg !549, !tbaa !205
  %75 = getelementptr inbounds i32* %74, i64 %indvars.iv23, !dbg !549
  %76 = load i32* %75, align 4, !dbg !549, !tbaa !234
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !160, metadata !186), !dbg !550
  %77 = load %struct._Graph** %60, align 8, !dbg !551, !tbaa !313
  call void @llvm.dbg.value(metadata i32* %ssize, i64 0, metadata !161, metadata !186), !dbg !552
  call void @llvm.dbg.value(metadata i32** %sadj, i64 0, metadata !167, metadata !186), !dbg !553
  call void @Graph_adjAndSize(%struct._Graph* %77, i32 %76, i32* %ssize, i32** %sadj) #6, !dbg !554
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !155, metadata !186), !dbg !555
  call void @llvm.dbg.value(metadata i32* %ssize, i64 0, metadata !161, metadata !186), !dbg !552
  %78 = load i32* %ssize, align 4, !dbg !556, !tbaa !234
  %79 = icmp sgt i32 %78, 0, !dbg !557
  br i1 %79, label %.lr.ph12, label %._crit_edge13, !dbg !558

.lr.ph12:                                         ; preds = %.lr.ph17
  %80 = load i32** %sadj, align 8, !dbg !559, !tbaa !205
  br label %81, !dbg !558

; <label>:81                                      ; preds = %.lr.ph12, %98
  %82 = phi i32 [ %78, %.lr.ph12 ], [ %99, %98 ]
  %indvars.iv21 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next22, %98 ]
  %last.29 = phi i32 [ %last.114, %.lr.ph12 ], [ %last.3, %98 ]
  call void @llvm.dbg.value(metadata i32** %sadj, i64 0, metadata !167, metadata !186), !dbg !553
  %83 = getelementptr inbounds i32* %80, i64 %indvars.iv21, !dbg !559
  %84 = load i32* %83, align 4, !dbg !559, !tbaa !234
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !151, metadata !186), !dbg !560
  %85 = sext i32 %84 to i64, !dbg !561
  %86 = getelementptr inbounds i32* %47, i64 %85, !dbg !561
  %87 = load i32* %86, align 4, !dbg !561, !tbaa !234
  %88 = icmp eq i32 %87, -1, !dbg !562
  br i1 %88, label %89, label %98, !dbg !563

; <label>:89                                      ; preds = %81
  %90 = icmp eq i32 %last.29, %61, !dbg !564
  br i1 %90, label %91, label %94, !dbg !565

; <label>:91                                      ; preds = %89
  %92 = load %struct.__sFILE** @__stderrp, align 8, !dbg !566, !tbaa !205
  %93 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %92, i8* getelementptr inbounds ([69 x i8]* @.str8, i64 0, i64 0), %struct._BKL* %bkl, i32 %flag, i32 %seed, i32* %domcolors) #6, !dbg !568
  call void @exit(i32 -1) #7, !dbg !569
  unreachable, !dbg !569

; <label>:94                                      ; preds = %89
  store i32 1, i32* %86, align 4, !dbg !570, !tbaa !234
  %95 = add nsw i32 %last.29, 1, !dbg !571
  call void @llvm.dbg.value(metadata i32 %95, i64 0, metadata !156, metadata !186), !dbg !516
  %96 = sext i32 %95 to i64, !dbg !572
  %97 = getelementptr inbounds i32* %46, i64 %96, !dbg !572
  store i32 %84, i32* %97, align 4, !dbg !573, !tbaa !234
  %.pre = load i32* %ssize, align 4, !dbg !556, !tbaa !234
  br label %98, !dbg !574

; <label>:98                                      ; preds = %81, %94
  %99 = phi i32 [ %.pre, %94 ], [ %82, %81 ], !dbg !558
  %last.3 = phi i32 [ %95, %94 ], [ %last.29, %81 ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !dbg !558
  call void @llvm.dbg.value(metadata i32* %ssize, i64 0, metadata !161, metadata !186), !dbg !552
  %100 = sext i32 %99 to i64, !dbg !557
  %101 = icmp slt i64 %indvars.iv.next22, %100, !dbg !557
  br i1 %101, label %81, label %._crit_edge13, !dbg !558

._crit_edge13:                                    ; preds = %98, %.lr.ph17
  %last.2.lcssa = phi i32 [ %last.114, %.lr.ph17 ], [ %last.3, %98 ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1, !dbg !548
  call void @llvm.dbg.value(metadata i32* %dsize, i64 0, metadata !152, metadata !186), !dbg !542
  %102 = load i32* %dsize, align 4, !dbg !546, !tbaa !234
  %103 = sext i32 %102 to i64, !dbg !547
  %104 = icmp slt i64 %indvars.iv.next24, %103, !dbg !547
  br i1 %104, label %.lr.ph17, label %.loopexit, !dbg !548

; <label>:105                                     ; preds = %.loopexit, %64
  call void @IVfree(i32* %46) #6, !dbg !575
  call void @IVfree(i32* %47) #6, !dbg !576
  call void @BKL_setColorWeights(%struct._BKL* %bkl) #8, !dbg !577
  br label %107, !dbg !578

; <label>:106                                     ; preds = %20
  tail call void @IVcopy(i32 %14, i32* %16, i32* %domcolors) #6, !dbg !579
  tail call void @BKL_setColorWeights(%struct._BKL* %bkl) #8, !dbg !580
  br label %107, !dbg !581

; <label>:107                                     ; preds = %18, %20, %106, %105, %44, %._crit_edge, %17
  %108 = call float @BKL_evalfcn(%struct._BKL* %bkl) #6, !dbg !582
  call void @llvm.dbg.value(metadata float %108, i64 0, metadata !149, metadata !186), !dbg !583
  ret float %108, !dbg !584
}

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #4

; Function Attrs: optsize
declare i32 @BPG_pseudoperipheralnode(%struct._BPG*, i32) #4

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #4

; Function Attrs: optsize
declare void @IVfree(i32*) #4

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #4

; Function Attrs: optsize
declare float @BKL_evalfcn(%struct._BKL*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BKL_domAdjToSep(%struct._BKL* %bkl, i32 %dom) #0 {
  %size = alloca i32, align 4
  %adj = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._BKL* %bkl, i64 0, metadata !176, metadata !186), !dbg !585
  tail call void @llvm.dbg.value(metadata i32 %dom, i64 0, metadata !177, metadata !186), !dbg !586
  %1 = icmp eq %struct._BKL* %bkl, null, !dbg !587
  %2 = icmp slt i32 %dom, 0, !dbg !589
  %or.cond = or i1 %1, %2, !dbg !590
  br i1 %or.cond, label %7, label %3, !dbg !590

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 1, !dbg !591
  %5 = load i32* %4, align 4, !dbg !591, !tbaa !209
  %6 = icmp sgt i32 %5, %dom, !dbg !592
  br i1 %6, label %10, label %7, !dbg !593

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !594, !tbaa !205
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([52 x i8]* @.str9, i64 0, i64 0), %struct._BKL* %bkl, i32 %dom) #6, !dbg !596
  tail call void @exit(i32 -1) #7, !dbg !597
  unreachable, !dbg !597

; <label>:10                                      ; preds = %3
  %11 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !598
  %12 = load i32** %11, align 8, !dbg !598, !tbaa !212
  tail call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !181, metadata !186), !dbg !599
  %13 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 0, !dbg !600
  %14 = load %struct._BPG** %13, align 8, !dbg !600, !tbaa !194
  %15 = getelementptr inbounds %struct._BPG* %14, i64 0, i32 2, !dbg !601
  %16 = load %struct._Graph** %15, align 8, !dbg !601, !tbaa !313
  tail call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !179, metadata !186), !dbg !602
  tail call void @llvm.dbg.value(metadata i32** %adj, i64 0, metadata !180, metadata !186), !dbg !603
  call void @Graph_adjAndSize(%struct._Graph* %16, i32 %dom, i32* %size, i32** %adj) #6, !dbg !604
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !178, metadata !186), !dbg !605
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !179, metadata !186), !dbg !602
  %17 = load i32* %size, align 4, !dbg !606, !tbaa !234
  %18 = icmp sgt i32 %17, 0, !dbg !609
  br i1 %18, label %.lr.ph, label %._crit_edge, !dbg !610

.lr.ph:                                           ; preds = %10
  %19 = load i32** %adj, align 8, !dbg !611, !tbaa !205
  %20 = sext i32 %17 to i64, !dbg !610
  br label %23, !dbg !610

; <label>:21                                      ; preds = %23
  call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !179, metadata !186), !dbg !602
  %22 = icmp slt i64 %indvars.iv.next, %20, !dbg !609
  br i1 %22, label %23, label %._crit_edge, !dbg !610

; <label>:23                                      ; preds = %.lr.ph, %21
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %21 ]
  call void @llvm.dbg.value(metadata i32** %adj, i64 0, metadata !180, metadata !186), !dbg !603
  %24 = getelementptr inbounds i32* %19, i64 %indvars.iv, !dbg !611
  %25 = load i32* %24, align 4, !dbg !611, !tbaa !234
  %26 = sext i32 %25 to i64, !dbg !614
  %27 = getelementptr inbounds i32* %12, i64 %26, !dbg !614
  %28 = load i32* %27, align 4, !dbg !614, !tbaa !234
  %29 = icmp eq i32 %28, 0, !dbg !615
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !610
  br i1 %29, label %._crit_edge, label %21, !dbg !616

._crit_edge:                                      ; preds = %23, %21, %10
  %.0 = phi i32 [ 0, %10 ], [ 1, %23 ], [ 0, %21 ]
  ret i32 %.0, !dbg !617
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!182, !183, !184}
!llvm.ident = !{!185}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_util.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !100, !108, !119, !133, !140, !174}
!6 = !DISubprogram(name: "BKL_setRandomColors", scope: !1, file: !1, line: 18, type: !7, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._BKL*, i32)* @BKL_setRandomColors, variables: !78)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !21}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "BKL", file: !11, line: 45, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../BKL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BKL", file: !11, line: 46, size: 704, align: 64, elements: !13)
!13 = !{!14, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !75, !76}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "bpg", scope: !12, file: !11, line: 47, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "BPG", file: !17, line: 21, baseType: !18)
!17 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../BPG/BPG.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BPG", file: !17, line: 22, size: 128, align: 64, elements: !19)
!19 = !{!20, !22, !23}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "nX", scope: !18, file: !17, line: 23, baseType: !21, size: 32, align: 32)
!21 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nY", scope: !18, file: !17, line: 24, baseType: !21, size: 32, align: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !18, file: !17, line: 25, baseType: !24, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !26, line: 49, baseType: !27)
!26 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../Graph/Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !26, line: 50, size: 384, align: 64, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !59, !60}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !27, file: !26, line: 51, baseType: !21, size: 32, align: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !27, file: !26, line: 52, baseType: !21, size: 32, align: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !27, file: !26, line: 53, baseType: !21, size: 32, align: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !27, file: !26, line: 54, baseType: !21, size: 32, align: 32, offset: 96)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !27, file: !26, line: 55, baseType: !21, size: 32, align: 32, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !27, file: !26, line: 56, baseType: !21, size: 32, align: 32, offset: 160)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !27, file: !26, line: 57, baseType: !36, size: 64, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !38, line: 55, baseType: !39)
!38 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !38, line: 79, size: 384, align: 64, elements: !40)
!40 = !{!41, !42, !43, !44, !45, !47, !49, !50}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !39, file: !38, line: 80, baseType: !21, size: 32, align: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !39, file: !38, line: 81, baseType: !21, size: 32, align: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !39, file: !38, line: 82, baseType: !21, size: 32, align: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !39, file: !38, line: 83, baseType: !21, size: 32, align: 32, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !39, file: !38, line: 84, baseType: !46, size: 64, align: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !39, file: !38, line: 85, baseType: !48, size: 64, align: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !39, file: !38, line: 86, baseType: !21, size: 32, align: 32, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !39, file: !38, line: 87, baseType: !51, size: 64, align: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !38, line: 56, baseType: !53)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !38, line: 102, size: 192, align: 64, elements: !54)
!54 = !{!55, !56, !57, !58}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !53, file: !38, line: 103, baseType: !21, size: 32, align: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !53, file: !38, line: 104, baseType: !21, size: 32, align: 32, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !53, file: !38, line: 105, baseType: !46, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !53, file: !38, line: 106, baseType: !51, size: 64, align: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !27, file: !26, line: 58, baseType: !46, size: 64, align: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !27, file: !26, line: 59, baseType: !36, size: 64, align: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ndom", scope: !12, file: !11, line: 48, baseType: !21, size: 32, align: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "nseg", scope: !12, file: !11, line: 49, baseType: !21, size: 32, align: 32, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !12, file: !11, line: 50, baseType: !21, size: 32, align: 32, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "totweight", scope: !12, file: !11, line: 51, baseType: !21, size: 32, align: 32, offset: 160)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "npass", scope: !12, file: !11, line: 52, baseType: !21, size: 32, align: 32, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "npatch", scope: !12, file: !11, line: 53, baseType: !21, size: 32, align: 32, offset: 224)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "nflips", scope: !12, file: !11, line: 54, baseType: !21, size: 32, align: 32, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "nimprove", scope: !12, file: !11, line: 55, baseType: !21, size: 32, align: 32, offset: 288)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "ngaineval", scope: !12, file: !11, line: 56, baseType: !21, size: 32, align: 32, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !12, file: !11, line: 57, baseType: !46, size: 64, align: 64, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "cweights", scope: !12, file: !11, line: 58, baseType: !72, size: 96, align: 32, offset: 448)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 96, align: 32, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "regwghts", scope: !12, file: !11, line: 59, baseType: !46, size: 64, align: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !12, file: !11, line: 60, baseType: !77, size: 32, align: 32, offset: 640)
!77 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!78 = !{!79, !80, !81, !82, !83, !84, !85}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !6, file: !1, line: 19, type: !9)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seed", arg: 2, scope: !6, file: !1, line: 20, type: !21)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ireg", scope: !6, file: !1, line: 22, type: !21)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndom", scope: !6, file: !1, line: 22, type: !21)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nreg", scope: !6, file: !1, line: 22, type: !21)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colors", scope: !6, file: !1, line: 23, type: !46)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "drand", scope: !6, file: !1, line: 24, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "Drand", file: !87, line: 27, baseType: !88)
!87 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../Drand/Drand.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Drand", file: !87, line: 17, size: 576, align: 64, elements: !89)
!89 = !{!90, !92, !93, !94, !95, !96, !97, !98, !99}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "seed1", scope: !88, file: !87, line: 18, baseType: !91, size: 64, align: 64)
!91 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "seed2", scope: !88, file: !87, line: 19, baseType: !91, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !88, file: !87, line: 20, baseType: !91, size: 64, align: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !88, file: !87, line: 21, baseType: !91, size: 64, align: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !88, file: !87, line: 22, baseType: !91, size: 64, align: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !88, file: !87, line: 23, baseType: !91, size: 64, align: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !88, file: !87, line: 24, baseType: !91, size: 64, align: 64, offset: 384)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sigma", scope: !88, file: !87, line: 25, baseType: !91, size: 64, align: 64, offset: 448)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !88, file: !87, line: 26, baseType: !21, size: 32, align: 32, offset: 512)
!100 = !DISubprogram(name: "BKL_setColorWeights", scope: !1, file: !1, line: 78, type: !101, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._BKL*)* @BKL_setColorWeights, variables: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !9}
!103 = !{!104, !105, !106, !107}
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !100, file: !1, line: 79, type: !9)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !100, file: !1, line: 81, type: !21)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ireg", scope: !100, file: !1, line: 81, type: !21)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colors", scope: !100, file: !1, line: 82, type: !46)
!108 = !DISubprogram(name: "BKL_segColor", scope: !1, file: !1, line: 134, type: !109, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._BKL*, i32)* @BKL_segColor, variables: !111)
!109 = !DISubroutineType(types: !110)
!110 = !{!21, !9, !21}
!111 = !{!112, !113, !114, !115, !116, !117, !118}
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !108, file: !1, line: 135, type: !9)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iseg", arg: 2, scope: !108, file: !1, line: 136, type: !21)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "color", scope: !108, file: !1, line: 138, type: !21)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !108, file: !1, line: 138, type: !21)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !108, file: !1, line: 138, type: !21)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "adj", scope: !108, file: !1, line: 139, type: !46)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colors", scope: !108, file: !1, line: 139, type: !46)
!119 = !DISubprogram(name: "BKL_flipDomain", scope: !1, file: !1, line: 181, type: !7, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._BKL*, i32)* @BKL_flipDomain, variables: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !119, file: !1, line: 182, type: !9)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idom", arg: 2, scope: !119, file: !1, line: 183, type: !21)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !119, file: !1, line: 185, type: !21)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iseg", scope: !119, file: !1, line: 185, type: !21)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newcolor", scope: !119, file: !1, line: 185, type: !21)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldcolor", scope: !119, file: !1, line: 185, type: !21)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !119, file: !1, line: 185, type: !21)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wdom", scope: !119, file: !1, line: 185, type: !21)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wseg", scope: !119, file: !1, line: 185, type: !21)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "adj", scope: !119, file: !1, line: 186, type: !46)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colors", scope: !119, file: !1, line: 186, type: !46)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "regwghts", scope: !119, file: !1, line: 186, type: !46)
!133 = !DISubprogram(name: "BKL_greyCodeDomain", scope: !1, file: !1, line: 261, type: !109, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._BKL*, i32)* @BKL_greyCodeDomain, variables: !134)
!134 = !{!135, !136, !137, !138, !139}
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !133, file: !1, line: 262, type: !9)
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "count", arg: 2, scope: !133, file: !1, line: 263, type: !21)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chk", scope: !133, file: !1, line: 265, type: !21)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idom", scope: !133, file: !1, line: 265, type: !21)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !133, file: !1, line: 265, type: !21)
!140 = !DISubprogram(name: "BKL_setInitPart", scope: !1, file: !1, line: 316, type: !141, isLocal: false, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct._BKL*, i32, i32, i32*)* @BKL_setInitPart, variables: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{!77, !9, !21, !21, !46}
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !140, file: !1, line: 317, type: !9)
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flag", arg: 2, scope: !140, file: !1, line: 318, type: !21)
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seed", arg: 3, scope: !140, file: !1, line: 319, type: !21)
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "domcolors", arg: 4, scope: !140, file: !1, line: 320, type: !46)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bpg", scope: !140, file: !1, line: 322, type: !15)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cost", scope: !140, file: !1, line: 323, type: !77)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dom", scope: !140, file: !1, line: 324, type: !21)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dom2", scope: !140, file: !1, line: 324, type: !21)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dsize", scope: !140, file: !1, line: 324, type: !21)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idom", scope: !140, file: !1, line: 324, type: !21)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !140, file: !1, line: 324, type: !21)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jj", scope: !140, file: !1, line: 324, type: !21)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "last", scope: !140, file: !1, line: 324, type: !21)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndom", scope: !140, file: !1, line: 324, type: !21)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "now", scope: !140, file: !1, line: 324, type: !21)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "root", scope: !140, file: !1, line: 324, type: !21)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seg", scope: !140, file: !1, line: 325, type: !21)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ssize", scope: !140, file: !1, line: 325, type: !21)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colors", scope: !140, file: !1, line: 326, type: !46)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cweights", scope: !140, file: !1, line: 326, type: !46)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dadj", scope: !140, file: !1, line: 326, type: !46)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !140, file: !1, line: 326, type: !46)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mark", scope: !140, file: !1, line: 326, type: !46)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sadj", scope: !140, file: !1, line: 326, type: !46)
!168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "drand", scope: !169, file: !1, line: 357, type: !86)
!169 = distinct !DILexicalBlock(scope: !170, file: !1, line: 356, column: 13)
!170 = distinct !DILexicalBlock(scope: !171, file: !1, line: 355, column: 20)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 349, column: 8)
!172 = distinct !DILexicalBlock(scope: !173, file: !1, line: 345, column: 13)
!173 = distinct !DILexicalBlock(scope: !140, file: !1, line: 342, column: 6)
!174 = !DISubprogram(name: "BKL_domAdjToSep", scope: !1, file: !1, line: 477, type: !109, isLocal: false, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._BKL*, i32)* @BKL_domAdjToSep, variables: !175)
!175 = !{!176, !177, !178, !179, !180, !181}
!176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bkl", arg: 1, scope: !174, file: !1, line: 478, type: !9)
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dom", arg: 2, scope: !174, file: !1, line: 479, type: !21)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !174, file: !1, line: 481, type: !21)
!179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !174, file: !1, line: 481, type: !21)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "adj", scope: !174, file: !1, line: 482, type: !46)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colors", scope: !174, file: !1, line: 482, type: !46)
!182 = !{i32 2, !"Dwarf Version", i32 2}
!183 = !{i32 2, !"Debug Info Version", i32 700000003}
!184 = !{i32 1, !"PIC Level", i32 2}
!185 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!186 = !DIExpression()
!187 = !DILocation(line: 19, column: 11, scope: !6)
!188 = !DILocation(line: 20, column: 10, scope: !6)
!189 = !DILocation(line: 24, column: 1, scope: !6)
!190 = !DILocation(line: 30, column: 10, scope: !191)
!191 = distinct !DILexicalBlock(scope: !6, file: !1, line: 30, column: 6)
!192 = !DILocation(line: 30, column: 18, scope: !191)
!193 = !DILocation(line: 30, column: 26, scope: !191)
!194 = !{!195, !196, i64 0}
!195 = !{!"_BKL", !196, i64 0, !199, i64 8, !199, i64 12, !199, i64 16, !199, i64 20, !199, i64 24, !199, i64 28, !199, i64 32, !199, i64 36, !199, i64 40, !196, i64 48, !197, i64 56, !196, i64 72, !200, i64 80}
!196 = !{!"any pointer", !197, i64 0}
!197 = !{!"omnipotent char", !198, i64 0}
!198 = !{!"Simple C/C++ TBAA"}
!199 = !{!"int", !197, i64 0}
!200 = !{!"float", !197, i64 0}
!201 = !DILocation(line: 30, column: 30, scope: !191)
!202 = !DILocation(line: 30, column: 6, scope: !6)
!203 = !DILocation(line: 31, column: 12, scope: !204)
!204 = distinct !DILexicalBlock(scope: !191, file: !1, line: 30, column: 40)
!205 = !{!196, !196, i64 0}
!206 = !DILocation(line: 31, column: 4, scope: !204)
!207 = !DILocation(line: 33, column: 4, scope: !204)
!208 = !DILocation(line: 35, column: 15, scope: !6)
!209 = !{!195, !199, i64 8}
!210 = !DILocation(line: 22, column: 15, scope: !6)
!211 = !DILocation(line: 37, column: 15, scope: !6)
!212 = !{!195, !196, i64 48}
!213 = !DILocation(line: 23, column: 10, scope: !6)
!214 = !DILocation(line: 24, column: 9, scope: !6)
!215 = !DILocation(line: 38, column: 1, scope: !6)
!216 = !DILocation(line: 39, column: 1, scope: !6)
!217 = !DILocation(line: 40, column: 1, scope: !6)
!218 = !DILocation(line: 41, column: 11, scope: !219)
!219 = distinct !DILexicalBlock(scope: !6, file: !1, line: 41, column: 6)
!220 = !DILocation(line: 41, column: 6, scope: !6)
!221 = !DILocation(line: 47, column: 4, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !1, line: 41, column: 17)
!223 = !DILocation(line: 48, column: 1, scope: !222)
!224 = !DILocation(line: 54, column: 23, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !1, line: 54, column: 1)
!226 = distinct !DILexicalBlock(scope: !6, file: !1, line: 54, column: 1)
!227 = !DILocation(line: 54, column: 1, scope: !226)
!228 = !DILocation(line: 55, column: 20, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !1, line: 54, column: 41)
!230 = !DILocation(line: 55, column: 40, scope: !229)
!231 = !DILocation(line: 55, column: 19, scope: !229)
!232 = !DILocation(line: 55, column: 4, scope: !229)
!233 = !DILocation(line: 55, column: 17, scope: !229)
!234 = !{!199, !199, i64 0}
!235 = !DILocation(line: 62, column: 1, scope: !6)
!236 = !DILocation(line: 64, column: 10, scope: !6)
!237 = !DILocation(line: 79, column: 11, scope: !100)
!238 = !DILocation(line: 88, column: 10, scope: !239)
!239 = distinct !DILexicalBlock(scope: !100, file: !1, line: 88, column: 6)
!240 = !DILocation(line: 88, column: 6, scope: !100)
!241 = !DILocation(line: 89, column: 12, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !1, line: 88, column: 20)
!243 = !DILocation(line: 89, column: 4, scope: !242)
!244 = !DILocation(line: 91, column: 4, scope: !242)
!245 = !DILocation(line: 93, column: 15, scope: !100)
!246 = !DILocation(line: 82, column: 8, scope: !100)
!247 = !DILocation(line: 94, column: 39, scope: !100)
!248 = !DILocation(line: 94, column: 56, scope: !100)
!249 = !DILocation(line: 94, column: 20, scope: !100)
!250 = !DILocation(line: 94, column: 37, scope: !100)
!251 = !DILocation(line: 94, column: 1, scope: !100)
!252 = !DILocation(line: 94, column: 18, scope: !100)
!253 = !DILocation(line: 81, column: 10, scope: !100)
!254 = !DILocation(line: 100, column: 30, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !1, line: 100, column: 1)
!256 = distinct !DILexicalBlock(scope: !100, file: !1, line: 100, column: 1)
!257 = !DILocation(line: 100, column: 23, scope: !255)
!258 = !DILocation(line: 100, column: 1, scope: !256)
!259 = !DILocation(line: 106, column: 29, scope: !260)
!260 = distinct !DILexicalBlock(scope: !255, file: !1, line: 100, column: 46)
!261 = !DILocation(line: 113, column: 38, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !1, line: 113, column: 1)
!263 = distinct !DILexicalBlock(scope: !100, file: !1, line: 113, column: 1)
!264 = !{!195, !199, i64 16}
!265 = !DILocation(line: 113, column: 31, scope: !262)
!266 = !DILocation(line: 113, column: 1, scope: !263)
!267 = !DILocation(line: 120, column: 29, scope: !268)
!268 = distinct !DILexicalBlock(scope: !262, file: !1, line: 113, column: 54)
!269 = !DILocation(line: 101, column: 14, scope: !270)
!270 = distinct !DILexicalBlock(scope: !260, file: !1, line: 101, column: 9)
!271 = !DILocation(line: 81, column: 7, scope: !100)
!272 = !DILocation(line: 101, column: 32, scope: !270)
!273 = !DILocation(line: 102, column: 15, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !1, line: 101, column: 43)
!275 = !DILocation(line: 102, column: 7, scope: !274)
!276 = !DILocation(line: 104, column: 7, scope: !274)
!277 = !{!195, !196, i64 72}
!278 = !DILocation(line: 106, column: 24, scope: !260)
!279 = !DILocation(line: 106, column: 4, scope: !260)
!280 = !DILocation(line: 106, column: 21, scope: !260)
!281 = !DILocation(line: 114, column: 14, scope: !282)
!282 = distinct !DILexicalBlock(scope: !268, file: !1, line: 114, column: 9)
!283 = !DILocation(line: 114, column: 43, scope: !282)
!284 = !DILocation(line: 115, column: 15, scope: !285)
!285 = distinct !DILexicalBlock(scope: !282, file: !1, line: 114, column: 54)
!286 = !DILocation(line: 115, column: 7, scope: !285)
!287 = !DILocation(line: 117, column: 7, scope: !285)
!288 = !DILocation(line: 119, column: 4, scope: !268)
!289 = !DILocation(line: 119, column: 17, scope: !268)
!290 = !DILocation(line: 120, column: 24, scope: !268)
!291 = !DILocation(line: 120, column: 4, scope: !268)
!292 = !DILocation(line: 120, column: 21, scope: !268)
!293 = !DILocation(line: 122, column: 1, scope: !100)
!294 = !DILocation(line: 135, column: 11, scope: !108)
!295 = !DILocation(line: 136, column: 10, scope: !108)
!296 = !DILocation(line: 145, column: 10, scope: !297)
!297 = distinct !DILexicalBlock(scope: !108, file: !1, line: 145, column: 6)
!298 = !DILocation(line: 145, column: 18, scope: !297)
!299 = !DILocation(line: 145, column: 33, scope: !297)
!300 = !DILocation(line: 145, column: 26, scope: !297)
!301 = !DILocation(line: 145, column: 38, scope: !297)
!302 = !DILocation(line: 145, column: 54, scope: !297)
!303 = !DILocation(line: 145, column: 46, scope: !297)
!304 = !DILocation(line: 145, column: 6, scope: !108)
!305 = !DILocation(line: 146, column: 12, scope: !306)
!306 = distinct !DILexicalBlock(scope: !297, file: !1, line: 145, column: 61)
!307 = !DILocation(line: 146, column: 4, scope: !306)
!308 = !DILocation(line: 148, column: 4, scope: !306)
!309 = !DILocation(line: 150, column: 15, scope: !108)
!310 = !DILocation(line: 139, column: 14, scope: !108)
!311 = !DILocation(line: 157, column: 23, scope: !108)
!312 = !DILocation(line: 157, column: 28, scope: !108)
!313 = !{!314, !196, i64 8}
!314 = !{!"_BPG", !199, i64 0, !199, i64 4, !196, i64 8}
!315 = !DILocation(line: 138, column: 18, scope: !108)
!316 = !DILocation(line: 139, column: 8, scope: !108)
!317 = !DILocation(line: 157, column: 1, scope: !108)
!318 = !DILocation(line: 138, column: 7, scope: !108)
!319 = !DILocation(line: 159, column: 6, scope: !320)
!320 = distinct !DILexicalBlock(scope: !108, file: !1, line: 159, column: 6)
!321 = !DILocation(line: 159, column: 11, scope: !320)
!322 = !DILocation(line: 159, column: 6, scope: !108)
!323 = !DILocation(line: 160, column: 19, scope: !324)
!324 = distinct !DILexicalBlock(scope: !320, file: !1, line: 159, column: 17)
!325 = !DILocation(line: 160, column: 12, scope: !324)
!326 = !DILocation(line: 138, column: 14, scope: !108)
!327 = !DILocation(line: 161, column: 22, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 161, column: 4)
!329 = distinct !DILexicalBlock(scope: !324, file: !1, line: 161, column: 4)
!330 = !DILocation(line: 161, column: 4, scope: !329)
!331 = !DILocation(line: 162, column: 28, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !1, line: 162, column: 12)
!333 = distinct !DILexicalBlock(scope: !328, file: !1, line: 161, column: 38)
!334 = !DILocation(line: 162, column: 21, scope: !332)
!335 = !DILocation(line: 162, column: 18, scope: !332)
!336 = !DILocation(line: 162, column: 12, scope: !333)
!337 = !DILocation(line: 168, column: 1, scope: !108)
!338 = !DILocation(line: 182, column: 11, scope: !119)
!339 = !DILocation(line: 183, column: 10, scope: !119)
!340 = !DILocation(line: 192, column: 10, scope: !341)
!341 = distinct !DILexicalBlock(scope: !119, file: !1, line: 192, column: 6)
!342 = !DILocation(line: 192, column: 26, scope: !341)
!343 = !DILocation(line: 192, column: 18, scope: !341)
!344 = !DILocation(line: 192, column: 46, scope: !341)
!345 = !DILocation(line: 192, column: 38, scope: !341)
!346 = !DILocation(line: 192, column: 6, scope: !119)
!347 = !DILocation(line: 193, column: 12, scope: !348)
!348 = distinct !DILexicalBlock(scope: !341, file: !1, line: 192, column: 53)
!349 = !DILocation(line: 193, column: 4, scope: !348)
!350 = !DILocation(line: 195, column: 4, scope: !348)
!351 = !DILocation(line: 197, column: 17, scope: !119)
!352 = !DILocation(line: 186, column: 14, scope: !119)
!353 = !DILocation(line: 198, column: 17, scope: !119)
!354 = !DILocation(line: 186, column: 23, scope: !119)
!355 = !DILocation(line: 199, column: 22, scope: !119)
!356 = !DILocation(line: 185, column: 27, scope: !119)
!357 = !DILocation(line: 199, column: 1, scope: !119)
!358 = !DILocation(line: 185, column: 17, scope: !119)
!359 = !DILocation(line: 205, column: 4, scope: !360)
!360 = distinct !DILexicalBlock(scope: !119, file: !1, line: 199, column: 38)
!361 = !DILocation(line: 207, column: 12, scope: !360)
!362 = !DILocation(line: 207, column: 4, scope: !360)
!363 = !DILocation(line: 209, column: 4, scope: !360)
!364 = !DILocation(line: 211, column: 14, scope: !119)
!365 = !DILocation(line: 217, column: 8, scope: !119)
!366 = !DILocation(line: 185, column: 43, scope: !119)
!367 = !DILocation(line: 218, column: 1, scope: !119)
!368 = !DILocation(line: 218, column: 25, scope: !119)
!369 = !DILocation(line: 219, column: 1, scope: !119)
!370 = !DILocation(line: 219, column: 25, scope: !119)
!371 = !DILocation(line: 225, column: 23, scope: !119)
!372 = !DILocation(line: 225, column: 28, scope: !119)
!373 = !DILocation(line: 185, column: 37, scope: !119)
!374 = !DILocation(line: 186, column: 8, scope: !119)
!375 = !DILocation(line: 225, column: 1, scope: !119)
!376 = !DILocation(line: 185, column: 7, scope: !119)
!377 = !DILocation(line: 226, column: 21, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !1, line: 226, column: 1)
!379 = distinct !DILexicalBlock(scope: !119, file: !1, line: 226, column: 1)
!380 = !DILocation(line: 226, column: 19, scope: !378)
!381 = !DILocation(line: 226, column: 1, scope: !379)
!382 = !DILocation(line: 227, column: 11, scope: !383)
!383 = distinct !DILexicalBlock(scope: !378, file: !1, line: 226, column: 35)
!384 = !DILocation(line: 185, column: 11, scope: !119)
!385 = !DILocation(line: 228, column: 11, scope: !383)
!386 = !DILocation(line: 185, column: 49, scope: !119)
!387 = !DILocation(line: 233, column: 21, scope: !388)
!388 = distinct !DILexicalBlock(scope: !383, file: !1, line: 233, column: 9)
!389 = !DILocation(line: 234, column: 26, scope: !388)
!390 = !DILocation(line: 234, column: 11, scope: !388)
!391 = !DILocation(line: 233, column: 9, scope: !383)
!392 = !DILocation(line: 235, column: 7, scope: !393)
!393 = distinct !DILexicalBlock(scope: !388, file: !1, line: 234, column: 53)
!394 = !DILocation(line: 235, column: 31, scope: !393)
!395 = !DILocation(line: 236, column: 7, scope: !393)
!396 = !DILocation(line: 236, column: 31, scope: !393)
!397 = !DILocation(line: 237, column: 20, scope: !393)
!398 = !DILocation(line: 238, column: 4, scope: !393)
!399 = !DILocation(line: 245, column: 6, scope: !119)
!400 = !DILocation(line: 245, column: 12, scope: !119)
!401 = !{!195, !199, i64 32}
!402 = !DILocation(line: 247, column: 1, scope: !119)
!403 = !DILocation(line: 262, column: 11, scope: !133)
!404 = !DILocation(line: 263, column: 10, scope: !133)
!405 = !DILocation(line: 271, column: 10, scope: !406)
!406 = distinct !DILexicalBlock(scope: !133, file: !1, line: 271, column: 6)
!407 = !DILocation(line: 271, column: 6, scope: !133)
!408 = !DILocation(line: 280, column: 15, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 280, column: 9)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 279, column: 37)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 277, column: 1)
!412 = distinct !DILexicalBlock(scope: !133, file: !1, line: 277, column: 1)
!413 = !DILocation(line: 280, column: 21, scope: !409)
!414 = !DILocation(line: 280, column: 9, scope: !410)
!415 = !DILocation(line: 272, column: 12, scope: !416)
!416 = distinct !DILexicalBlock(scope: !406, file: !1, line: 271, column: 20)
!417 = !DILocation(line: 272, column: 4, scope: !416)
!418 = !DILocation(line: 274, column: 4, scope: !416)
!419 = !DILocation(line: 281, column: 7, scope: !420)
!420 = distinct !DILexicalBlock(scope: !409, file: !1, line: 280, column: 30)
!421 = !DILocation(line: 279, column: 11, scope: !411)
!422 = !DILocation(line: 265, column: 12, scope: !133)
!423 = !DILocation(line: 265, column: 18, scope: !133)
!424 = !DILocation(line: 279, column: 30, scope: !411)
!425 = !DILocation(line: 265, column: 7, scope: !133)
!426 = !DILocation(line: 317, column: 11, scope: !140)
!427 = !DILocation(line: 318, column: 10, scope: !140)
!428 = !DILocation(line: 319, column: 10, scope: !140)
!429 = !DILocation(line: 320, column: 10, scope: !140)
!430 = !DILocation(line: 332, column: 11, scope: !431)
!431 = distinct !DILexicalBlock(scope: !140, file: !1, line: 332, column: 7)
!432 = !DILocation(line: 333, column: 4, scope: !431)
!433 = !DILocation(line: 333, column: 37, scope: !431)
!434 = !DILocation(line: 333, column: 55, scope: !431)
!435 = !DILocation(line: 333, column: 42, scope: !431)
!436 = !DILocation(line: 334, column: 12, scope: !437)
!437 = distinct !DILexicalBlock(scope: !431, file: !1, line: 333, column: 66)
!438 = !DILocation(line: 334, column: 4, scope: !437)
!439 = !DILocation(line: 336, column: 4, scope: !437)
!440 = !DILocation(line: 338, column: 17, scope: !140)
!441 = !DILocation(line: 322, column: 10, scope: !140)
!442 = !DILocation(line: 339, column: 17, scope: !140)
!443 = !DILocation(line: 324, column: 47, scope: !140)
!444 = !DILocation(line: 340, column: 17, scope: !140)
!445 = !DILocation(line: 326, column: 10, scope: !140)
!446 = !DILocation(line: 342, column: 6, scope: !140)
!447 = !DILocation(line: 343, column: 14, scope: !448)
!448 = distinct !DILexicalBlock(scope: !173, file: !1, line: 342, column: 18)
!449 = !DILocation(line: 344, column: 4, scope: !448)
!450 = !DILocation(line: 345, column: 1, scope: !448)
!451 = !DILocation(line: 346, column: 14, scope: !452)
!452 = distinct !DILexicalBlock(scope: !172, file: !1, line: 345, column: 25)
!453 = !DILocation(line: 347, column: 4, scope: !452)
!454 = !DILocation(line: 347, column: 14, scope: !452)
!455 = !DILocation(line: 348, column: 4, scope: !452)
!456 = !DILocation(line: 349, column: 1, scope: !452)
!457 = !DILocation(line: 355, column: 4, scope: !171)
!458 = !DILocation(line: 357, column: 7, scope: !169)
!459 = !DILocation(line: 357, column: 15, scope: !169)
!460 = !DILocation(line: 363, column: 7, scope: !169)
!461 = !DILocation(line: 364, column: 7, scope: !169)
!462 = !DILocation(line: 365, column: 7, scope: !169)
!463 = !DILocation(line: 366, column: 17, scope: !464)
!464 = distinct !DILexicalBlock(scope: !169, file: !1, line: 366, column: 12)
!465 = !DILocation(line: 366, column: 12, scope: !169)
!466 = !DILocation(line: 372, column: 10, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !1, line: 366, column: 23)
!468 = !DILocation(line: 373, column: 7, scope: !467)
!469 = !DILocation(line: 374, column: 29, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 374, column: 7)
!471 = distinct !DILexicalBlock(scope: !169, file: !1, line: 374, column: 7)
!472 = !DILocation(line: 374, column: 7, scope: !471)
!473 = !DILocation(line: 375, column: 26, scope: !474)
!474 = distinct !DILexicalBlock(scope: !470, file: !1, line: 374, column: 47)
!475 = !DILocation(line: 375, column: 46, scope: !474)
!476 = !DILocation(line: 375, column: 25, scope: !474)
!477 = !DILocation(line: 375, column: 10, scope: !474)
!478 = !DILocation(line: 375, column: 23, scope: !474)
!479 = !DILocation(line: 377, column: 7, scope: !169)
!480 = !DILocation(line: 378, column: 15, scope: !170)
!481 = !DILocation(line: 388, column: 7, scope: !170)
!482 = !DILocation(line: 389, column: 17, scope: !483)
!483 = distinct !DILexicalBlock(scope: !170, file: !1, line: 389, column: 12)
!484 = !DILocation(line: 389, column: 12, scope: !170)
!485 = !DILocation(line: 390, column: 22, scope: !486)
!486 = distinct !DILexicalBlock(scope: !483, file: !1, line: 389, column: 24)
!487 = !DILocation(line: 390, column: 10, scope: !486)
!488 = !DILocation(line: 390, column: 30, scope: !486)
!489 = !DILocation(line: 391, column: 7, scope: !486)
!490 = !DILocation(line: 392, column: 47, scope: !491)
!491 = distinct !DILexicalBlock(scope: !483, file: !1, line: 391, column: 14)
!492 = !DILocation(line: 392, column: 57, scope: !491)
!493 = !DILocation(line: 392, column: 17, scope: !491)
!494 = !DILocation(line: 324, column: 58, scope: !140)
!495 = !DILocation(line: 393, column: 10, scope: !491)
!496 = !DILocation(line: 393, column: 23, scope: !491)
!497 = !DILocation(line: 395, column: 7, scope: !170)
!498 = !DILocation(line: 396, column: 7, scope: !170)
!499 = !DILocation(line: 412, column: 7, scope: !170)
!500 = !DILocation(line: 413, column: 7, scope: !170)
!501 = !DILocation(line: 414, column: 14, scope: !170)
!502 = !DILocation(line: 326, column: 37, scope: !140)
!503 = !DILocation(line: 415, column: 14, scope: !170)
!504 = !DILocation(line: 326, column: 44, scope: !140)
!505 = !DILocation(line: 416, column: 17, scope: !506)
!506 = distinct !DILexicalBlock(scope: !170, file: !1, line: 416, column: 12)
!507 = !DILocation(line: 416, column: 12, scope: !170)
!508 = !DILocation(line: 417, column: 25, scope: !509)
!509 = distinct !DILexicalBlock(scope: !506, file: !1, line: 416, column: 24)
!510 = !DILocation(line: 418, column: 7, scope: !509)
!511 = !DILocation(line: 419, column: 50, scope: !512)
!512 = distinct !DILexicalBlock(scope: !506, file: !1, line: 418, column: 14)
!513 = !DILocation(line: 419, column: 60, scope: !512)
!514 = !DILocation(line: 419, column: 20, scope: !512)
!515 = !DILocation(line: 417, column: 18, scope: !509)
!516 = !DILocation(line: 324, column: 41, scope: !140)
!517 = !DILocation(line: 324, column: 53, scope: !140)
!518 = !DILocation(line: 422, column: 7, scope: !170)
!519 = !DILocation(line: 422, column: 21, scope: !170)
!520 = !DILocation(line: 426, column: 15, scope: !521)
!521 = distinct !DILexicalBlock(scope: !522, file: !1, line: 426, column: 15)
!522 = distinct !DILexicalBlock(scope: !170, file: !1, line: 423, column: 29)
!523 = !DILocation(line: 426, column: 30, scope: !521)
!524 = !DILocation(line: 429, column: 32, scope: !522)
!525 = !DILocation(line: 436, column: 37, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !1, line: 436, column: 24)
!527 = distinct !DILexicalBlock(scope: !528, file: !1, line: 435, column: 40)
!528 = distinct !DILexicalBlock(scope: !529, file: !1, line: 435, column: 21)
!529 = distinct !DILexicalBlock(scope: !530, file: !1, line: 433, column: 48)
!530 = distinct !DILexicalBlock(scope: !531, file: !1, line: 433, column: 13)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 433, column: 13)
!532 = distinct !DILexicalBlock(scope: !533, file: !1, line: 430, column: 45)
!533 = distinct !DILexicalBlock(scope: !534, file: !1, line: 430, column: 10)
!534 = distinct !DILexicalBlock(scope: !522, file: !1, line: 430, column: 10)
!535 = !DILocation(line: 423, column: 7, scope: !170)
!536 = !DILocation(line: 423, column: 19, scope: !170)
!537 = !DILocation(line: 424, column: 16, scope: !522)
!538 = !DILocation(line: 324, column: 9, scope: !140)
!539 = !DILocation(line: 425, column: 10, scope: !522)
!540 = !DILocation(line: 426, column: 27, scope: !521)
!541 = !DILocation(line: 426, column: 15, scope: !522)
!542 = !DILocation(line: 324, column: 20, scope: !140)
!543 = !DILocation(line: 326, column: 30, scope: !140)
!544 = !DILocation(line: 429, column: 10, scope: !522)
!545 = !DILocation(line: 324, column: 33, scope: !140)
!546 = !DILocation(line: 430, column: 30, scope: !533)
!547 = !DILocation(line: 430, column: 28, scope: !533)
!548 = !DILocation(line: 430, column: 10, scope: !534)
!549 = !DILocation(line: 431, column: 19, scope: !532)
!550 = !DILocation(line: 325, column: 9, scope: !140)
!551 = !DILocation(line: 432, column: 35, scope: !532)
!552 = !DILocation(line: 325, column: 14, scope: !140)
!553 = !DILocation(line: 326, column: 51, scope: !140)
!554 = !DILocation(line: 432, column: 13, scope: !532)
!555 = !DILocation(line: 324, column: 37, scope: !140)
!556 = !DILocation(line: 433, column: 33, scope: !530)
!557 = !DILocation(line: 433, column: 31, scope: !530)
!558 = !DILocation(line: 433, column: 13, scope: !531)
!559 = !DILocation(line: 434, column: 23, scope: !529)
!560 = !DILocation(line: 324, column: 14, scope: !140)
!561 = !DILocation(line: 435, column: 21, scope: !528)
!562 = !DILocation(line: 435, column: 32, scope: !528)
!563 = !DILocation(line: 435, column: 21, scope: !529)
!564 = !DILocation(line: 436, column: 29, scope: !526)
!565 = !DILocation(line: 436, column: 24, scope: !527)
!566 = !DILocation(line: 437, column: 30, scope: !567)
!567 = distinct !DILexicalBlock(scope: !526, file: !1, line: 436, column: 43)
!568 = !DILocation(line: 437, column: 22, scope: !567)
!569 = !DILocation(line: 441, column: 22, scope: !567)
!570 = !DILocation(line: 443, column: 30, scope: !527)
!571 = !DILocation(line: 444, column: 24, scope: !527)
!572 = !DILocation(line: 444, column: 19, scope: !527)
!573 = !DILocation(line: 444, column: 32, scope: !527)
!574 = !DILocation(line: 445, column: 16, scope: !527)
!575 = !DILocation(line: 449, column: 7, scope: !170)
!576 = !DILocation(line: 450, column: 7, scope: !170)
!577 = !DILocation(line: 451, column: 7, scope: !170)
!578 = !DILocation(line: 452, column: 7, scope: !170)
!579 = !DILocation(line: 459, column: 7, scope: !170)
!580 = !DILocation(line: 460, column: 7, scope: !170)
!581 = !DILocation(line: 461, column: 7, scope: !170)
!582 = !DILocation(line: 464, column: 8, scope: !140)
!583 = !DILocation(line: 323, column: 9, scope: !140)
!584 = !DILocation(line: 466, column: 1, scope: !140)
!585 = !DILocation(line: 478, column: 11, scope: !174)
!586 = !DILocation(line: 479, column: 10, scope: !174)
!587 = !DILocation(line: 488, column: 10, scope: !588)
!588 = distinct !DILexicalBlock(scope: !174, file: !1, line: 488, column: 6)
!589 = !DILocation(line: 488, column: 25, scope: !588)
!590 = !DILocation(line: 488, column: 18, scope: !588)
!591 = !DILocation(line: 488, column: 44, scope: !588)
!592 = !DILocation(line: 488, column: 36, scope: !588)
!593 = !DILocation(line: 488, column: 6, scope: !174)
!594 = !DILocation(line: 489, column: 12, scope: !595)
!595 = distinct !DILexicalBlock(scope: !588, file: !1, line: 488, column: 51)
!596 = !DILocation(line: 489, column: 4, scope: !595)
!597 = !DILocation(line: 491, column: 4, scope: !595)
!598 = !DILocation(line: 493, column: 15, scope: !174)
!599 = !DILocation(line: 482, column: 14, scope: !174)
!600 = !DILocation(line: 495, column: 23, scope: !174)
!601 = !DILocation(line: 495, column: 28, scope: !174)
!602 = !DILocation(line: 481, column: 11, scope: !174)
!603 = !DILocation(line: 482, column: 8, scope: !174)
!604 = !DILocation(line: 495, column: 1, scope: !174)
!605 = !DILocation(line: 481, column: 7, scope: !174)
!606 = !DILocation(line: 496, column: 21, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !1, line: 496, column: 1)
!608 = distinct !DILexicalBlock(scope: !174, file: !1, line: 496, column: 1)
!609 = !DILocation(line: 496, column: 19, scope: !607)
!610 = !DILocation(line: 496, column: 1, scope: !608)
!611 = !DILocation(line: 497, column: 16, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 497, column: 9)
!613 = distinct !DILexicalBlock(scope: !607, file: !1, line: 496, column: 35)
!614 = !DILocation(line: 497, column: 9, scope: !612)
!615 = !DILocation(line: 497, column: 25, scope: !612)
!616 = !DILocation(line: 497, column: 9, scope: !613)
!617 = !DILocation(line: 506, column: 13, scope: !174)
