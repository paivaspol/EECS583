; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [51 x i8] c"\0A error in DenseMtx_readFromFile(%p,%s)\0A bad input\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"\0A error in DenseMtx_readFromFile()\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [107 x i8] c"\0A error in DenseMtx_readFromFile()\0A bad DenseMtx file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [60 x i8] c"\0A error in DenseMtx_readFromFormattedFile(%p,%p)\0A bad input\00", align 1
@.str6 = private unnamed_addr constant [66 x i8] c"\0A error in DenseMtx_readFromFormattedFile()\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [77 x i8] c"\0A error in DenseMtx_readFromFormattedFile()\0A %d items of %d read for rowind\0A\00", align 1
@.str8 = private unnamed_addr constant [77 x i8] c"\0A error in DenseMtx_readFromFormattedFile()\0A %d items of %d read for colind\0A\00", align 1
@.str9 = private unnamed_addr constant [78 x i8] c"\0A error in DenseMtx_readFromFormattedFile()\0A %d items of %d read for entries\0A\00", align 1
@.str10 = private unnamed_addr constant [63 x i8] c"\0A fatal error in DenseMtx_readFromBinaryFile(%p,%p)\0A bad input\00", align 1
@.str11 = private unnamed_addr constant [63 x i8] c"\0A error in DenseMtx_readFromBinaryFile()\0A %d items of %d read\0A\00", align 1
@.str12 = private unnamed_addr constant [76 x i8] c"\0A error in DenseMtx_readFromBinaryFile()\0A %d items of %d read for rowind[]\0A\00", align 1
@.str13 = private unnamed_addr constant [76 x i8] c"\0A error in DenseMtx_readFromBinaryFile()\0A %d items of %d read for colind[]\0A\00", align 1
@.str14 = private unnamed_addr constant [75 x i8] c"\0A error in DenseMtx_readFromBinaryFile()\0A %d items of %d read for entries\0A\00", align 1
@.str15 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_writeToFile(%p,%s)\0A mtx is NULL\00", align 1
@.str16 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DenseMtx_writeToFile(%p,%s)\0A fn is NULL\00", align 1
@.str17 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str18 = private unnamed_addr constant [58 x i8] c"\0A error in DenseMtx_writeToFile()\0A unable to open file %s\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str20 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str21 = private unnamed_addr constant [62 x i8] c"\0A fatal error in DenseMtx_writeToFormattedFile()\0A mtx is NULL\00", align 1
@.str22 = private unnamed_addr constant [61 x i8] c"\0A fatal error in DenseMtx_writeToFormattedFile()\0A fp is NULL\00", align 1
@.str23 = private unnamed_addr constant [23 x i8] c"\0A %d %d %d %d %d %d %d\00", align 1
@.str24 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DenseMtx_writeToBinaryFile()\0A mtx is NULL\00", align 1
@.str25 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_writeToBinaryFile()\0A fp is NULL\00", align 1
@.str26 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DenseMtx_writeStats()\0A mtx is NULL\00", align 1
@.str27 = private unnamed_addr constant [51 x i8] c"\0A fatal error in DenseMtx_writeStats()\0A fp is NULL\00", align 1
@.str28 = private unnamed_addr constant [32 x i8] c"\0A DenseMtx object at address %p\00", align 1
@.str29 = private unnamed_addr constant [15 x i8] c", real entries\00", align 1
@.str30 = private unnamed_addr constant [18 x i8] c", complex entries\00", align 1
@.str31 = private unnamed_addr constant [23 x i8] c", unknown entries type\00", align 1
@.str32 = private unnamed_addr constant [71 x i8] c"\0A row id = %d, col id = %d\0A nrow = %d, ncol = %d, inc1 = %d, inc2 = %d\00", align 1
@.str33 = private unnamed_addr constant [41 x i8] c"\0A rowind = %p, colind = %p, entries = %p\00", align 1
@.str34 = private unnamed_addr constant [12 x i8] c", base = %p\00", align 1
@.str35 = private unnamed_addr constant [65 x i8] c"\0A rowind - base = %zd, colind - base = %zd, entries - base = %zd\00", align 1
@.str36 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DenseMtx_writeForHumanEye()\0A mtx is NULL\0A\00", align 1
@.str37 = private unnamed_addr constant [26 x i8] c"\0A mtx's row indices at %p\00", align 1
@.str38 = private unnamed_addr constant [29 x i8] c"\0A mtx's column indices at %p\00", align 1
@.str39 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DenseMtx_writeForMatlab()\0A mtx is NULL\0A\00", align 1
@.str40 = private unnamed_addr constant [61 x i8] c"\0A fatal error in DenseMtx_writeForMatlab()\0A mtxname is NULL\0A\00", align 1
@.str41 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DenseMtx_writeForMatlab()\0A fp is NULL\0A\00", align 1
@.str42 = private unnamed_addr constant [24 x i8] c"\0A %s(%d,%d) = %24.16e ;\00", align 1
@.str43 = private unnamed_addr constant [36 x i8] c"\0A %s(%d,%d) = %24.16e + %24.16e*i ;\00", align 1
@.str44 = private unnamed_addr constant [11 x i8] c".densemtxb\00", align 1
@.str45 = private unnamed_addr constant [11 x i8] c".densemtxf\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_readFromFile(%struct._DenseMtx* %mtx, i8* %fn) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !41, metadata !191), !dbg !192
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !42, metadata !191), !dbg !193
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !105, metadata !191), !dbg !194
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !195
  %2 = icmp eq i8* %fn, null, !dbg !197
  %or.cond = or i1 %1, %2, !dbg !198
  br i1 %or.cond, label %3, label %6, !dbg !198

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !199, !tbaa !201
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._DenseMtx* %mtx, i8* %fn) #6, !dbg !205
  br label %43, !dbg !206

; <label>:6                                       ; preds = %0
  %7 = tail call i64 @strlen(i8* %fn) #6, !dbg !207
  %8 = trunc i64 %7 to i32, !dbg !207
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !104, metadata !191), !dbg !208
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !106, metadata !191), !dbg !209
  %9 = icmp sgt i32 %8, 10, !dbg !210
  br i1 %9, label %10, label %40, !dbg !212

; <label>:10                                      ; preds = %6
  %11 = shl i64 %7, 32, !dbg !213
  %sext = add i64 %11, -42949672960, !dbg !213
  %12 = ashr exact i64 %sext, 32, !dbg !213
  %13 = getelementptr inbounds i8* %fn, i64 %12, !dbg !213
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0)) #6, !dbg !216
  %15 = icmp eq i32 %14, 0, !dbg !217
  br i1 %15, label %16, label %25, !dbg !218

; <label>:16                                      ; preds = %10
  %17 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !219
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %17, i64 0, metadata !43, metadata !191), !dbg !222
  %18 = icmp eq %struct.__sFILE* %17, null, !dbg !223
  br i1 %18, label %19, label %22, !dbg !224

; <label>:19                                      ; preds = %16
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !225, !tbaa !201
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* %fn) #6, !dbg !227
  br label %43, !dbg !228

; <label>:22                                      ; preds = %16
  %23 = tail call i32 @DenseMtx_readFromBinaryFile(%struct._DenseMtx* %mtx, %struct.__sFILE* %17) #7, !dbg !229
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !105, metadata !191), !dbg !194
  %24 = tail call i32 @fclose(%struct.__sFILE* %17) #6, !dbg !231
  br label %43

; <label>:25                                      ; preds = %10
  %26 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([11 x i8]* @.str45, i64 0, i64 0)) #6, !dbg !232
  %27 = icmp eq i32 %26, 0, !dbg !234
  br i1 %27, label %28, label %37, !dbg !235

; <label>:28                                      ; preds = %25
  %29 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !236
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %29, i64 0, metadata !43, metadata !191), !dbg !222
  %30 = icmp eq %struct.__sFILE* %29, null, !dbg !239
  br i1 %30, label %31, label %34, !dbg !240

; <label>:31                                      ; preds = %28
  %32 = load %struct.__sFILE** @__stderrp, align 8, !dbg !241, !tbaa !201
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* %fn) #6, !dbg !243
  br label %43, !dbg !244

; <label>:34                                      ; preds = %28
  %35 = tail call i32 @DenseMtx_readFromFormattedFile(%struct._DenseMtx* %mtx, %struct.__sFILE* %29) #7, !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !105, metadata !191), !dbg !194
  %36 = tail call i32 @fclose(%struct.__sFILE* %29) #6, !dbg !247
  br label %43

; <label>:37                                      ; preds = %25
  %38 = load %struct.__sFILE** @__stderrp, align 8, !dbg !248, !tbaa !201
  %39 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %38, i8* getelementptr inbounds ([107 x i8]* @.str4, i64 0, i64 0), i8* %fn, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str45, i64 0, i64 0)) #6, !dbg !250
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !105, metadata !191), !dbg !194
  br label %43

; <label>:40                                      ; preds = %6
  %41 = load %struct.__sFILE** @__stderrp, align 8, !dbg !251, !tbaa !201
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([107 x i8]* @.str4, i64 0, i64 0), i8* %fn, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str45, i64 0, i64 0)) #6, !dbg !253
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !105, metadata !191), !dbg !194
  br label %43

; <label>:43                                      ; preds = %40, %37, %34, %31, %19, %22, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %19 ], [ %23, %22 ], [ 0, %31 ], [ %35, %34 ], [ 0, %37 ], [ 0, %40 ]
  ret i32 %.0, !dbg !254
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_readFromBinaryFile(%struct._DenseMtx* %mtx, %struct.__sFILE* %fp) #0 {
  %itemp = alloca [7 x i32], align 16
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !121, metadata !191), !dbg !255
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !122, metadata !191), !dbg !256
  tail call void @llvm.dbg.declare(metadata [7 x i32]* %itemp, metadata !125, metadata !191), !dbg !257
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !258
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !260
  %or.cond = or i1 %1, %2, !dbg !261
  br i1 %or.cond, label %3, label %6, !dbg !261

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !262, !tbaa !201
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([63 x i8]* @.str10, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct.__sFILE* %fp) #6, !dbg !264
  br label %94, !dbg !265

; <label>:6                                       ; preds = %0
  tail call void @DenseMtx_clearData(%struct._DenseMtx* %mtx) #6, !dbg !266
  %7 = bitcast [7 x i32]* %itemp to i8*, !dbg !267
  %8 = call i64 @fread(i8* %7, i64 4, i64 7, %struct.__sFILE* %fp) #6, !dbg !269
  %9 = trunc i64 %8 to i32, !dbg !269
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !123, metadata !191), !dbg !270
  %10 = icmp eq i32 %9, 7, !dbg !271
  br i1 %10, label %14, label %11, !dbg !272

; <label>:11                                      ; preds = %6
  %12 = load %struct.__sFILE** @__stderrp, align 8, !dbg !273, !tbaa !201
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([63 x i8]* @.str11, i64 0, i64 0), i32 %9, i32 7) #6, !dbg !275
  br label %94, !dbg !276

; <label>:14                                      ; preds = %6
  %15 = bitcast [7 x i32]* %itemp to i64*, !dbg !277
  %16 = load i64* %15, align 16, !dbg !277
  %17 = trunc i64 %16 to i32, !dbg !277
  %18 = lshr i64 %16, 32
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 2, !dbg !278
  %21 = bitcast i32* %20 to i64*, !dbg !278
  %22 = load i64* %21, align 8, !dbg !278
  %23 = trunc i64 %22 to i32, !dbg !278
  %24 = lshr i64 %22, 32
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 4, !dbg !279
  %27 = bitcast i32* %26 to i64*, !dbg !279
  %28 = load i64* %27, align 16, !dbg !279
  %29 = trunc i64 %28 to i32, !dbg !279
  %30 = lshr i64 %28, 32
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 6, !dbg !280
  %33 = load i32* %32, align 8, !dbg !280, !tbaa !281
  tail call void @DenseMtx_init(%struct._DenseMtx* %mtx, i32 %17, i32 %19, i32 %23, i32 %25, i32 %29, i32 %31, i32 %33) #6, !dbg !283
  %34 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !284
  %35 = load i32* %34, align 4, !dbg !284, !tbaa !286
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !124, metadata !191), !dbg !289
  %36 = icmp sgt i32 %35, 0, !dbg !290
  br i1 %36, label %37, label %48, !dbg !291

; <label>:37                                      ; preds = %14
  %38 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !292
  %39 = bitcast i32** %38 to i8**, !dbg !292
  %40 = load i8** %39, align 8, !dbg !292, !tbaa !295
  %41 = sext i32 %35 to i64, !dbg !296
  %42 = tail call i64 @fread(i8* %40, i64 4, i64 %41, %struct.__sFILE* %fp) #6, !dbg !297
  %43 = trunc i64 %42 to i32, !dbg !297
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !123, metadata !191), !dbg !270
  %44 = icmp eq i32 %43, %35, !dbg !298
  br i1 %44, label %48, label %45, !dbg !299

; <label>:45                                      ; preds = %37
  %46 = load %struct.__sFILE** @__stderrp, align 8, !dbg !300, !tbaa !201
  %47 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %46, i8* getelementptr inbounds ([76 x i8]* @.str12, i64 0, i64 0), i32 %43, i32 %35) #6, !dbg !302
  br label %94, !dbg !303

; <label>:48                                      ; preds = %37, %14
  %49 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !304
  %50 = load i32* %49, align 4, !dbg !304, !tbaa !306
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !124, metadata !191), !dbg !289
  %51 = icmp sgt i32 %50, 0, !dbg !307
  br i1 %51, label %52, label %63, !dbg !308

; <label>:52                                      ; preds = %48
  %53 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !309
  %54 = bitcast i32** %53 to i8**, !dbg !309
  %55 = load i8** %54, align 8, !dbg !309, !tbaa !312
  %56 = sext i32 %50 to i64, !dbg !313
  %57 = tail call i64 @fread(i8* %55, i64 4, i64 %56, %struct.__sFILE* %fp) #6, !dbg !314
  %58 = trunc i64 %57 to i32, !dbg !314
  tail call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !123, metadata !191), !dbg !270
  %59 = icmp eq i32 %58, %50, !dbg !315
  br i1 %59, label %._crit_edge, label %60, !dbg !316

._crit_edge:                                      ; preds = %52
  %.pre = load i32* %49, align 4, !dbg !317, !tbaa !306
  br label %63, !dbg !316

; <label>:60                                      ; preds = %52
  %61 = load %struct.__sFILE** @__stderrp, align 8, !dbg !319, !tbaa !201
  %62 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %61, i8* getelementptr inbounds ([76 x i8]* @.str13, i64 0, i64 0), i32 %58, i32 %50) #6, !dbg !321
  br label %94, !dbg !322

; <label>:63                                      ; preds = %._crit_edge, %48
  %64 = phi i32 [ %.pre, %._crit_edge ], [ %50, %48 ]
  %65 = load i32* %34, align 4, !dbg !323, !tbaa !286
  %66 = mul nsw i32 %64, %65, !dbg !324
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !124, metadata !191), !dbg !289
  %67 = icmp sgt i32 %66, 0, !dbg !325
  br i1 %67, label %68, label %94, !dbg !326

; <label>:68                                      ; preds = %63
  %69 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !327
  %70 = load i32* %69, align 4, !dbg !327, !tbaa !330
  switch i32 %70, label %94 [
    i32 1, label %71
    i32 2, label %82
  ], !dbg !331

; <label>:71                                      ; preds = %68
  %72 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !332
  %73 = bitcast double** %72 to i8**, !dbg !332
  %74 = load i8** %73, align 8, !dbg !332, !tbaa !334
  %75 = sext i32 %66 to i64, !dbg !335
  %76 = tail call i64 @fread(i8* %74, i64 8, i64 %75, %struct.__sFILE* %fp) #6, !dbg !336
  %77 = trunc i64 %76 to i32, !dbg !336
  tail call void @llvm.dbg.value(metadata i32 %77, i64 0, metadata !123, metadata !191), !dbg !270
  %78 = icmp eq i32 %77, %66, !dbg !337
  br i1 %78, label %94, label %79, !dbg !339

; <label>:79                                      ; preds = %71
  %80 = load %struct.__sFILE** @__stderrp, align 8, !dbg !340, !tbaa !201
  %81 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %80, i8* getelementptr inbounds ([75 x i8]* @.str14, i64 0, i64 0), i32 %77, i32 %66) #6, !dbg !342
  br label %94, !dbg !343

; <label>:82                                      ; preds = %68
  %83 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !344
  %84 = bitcast double** %83 to i8**, !dbg !344
  %85 = load i8** %84, align 8, !dbg !344, !tbaa !334
  %86 = shl nsw i32 %66, 1, !dbg !347
  %87 = sext i32 %86 to i64, !dbg !348
  %88 = tail call i64 @fread(i8* %85, i64 8, i64 %87, %struct.__sFILE* %fp) #6, !dbg !349
  %89 = trunc i64 %88 to i32, !dbg !349
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !123, metadata !191), !dbg !270
  %90 = icmp eq i32 %89, %86, !dbg !350
  br i1 %90, label %94, label %91, !dbg !352

; <label>:91                                      ; preds = %82
  %92 = load %struct.__sFILE** @__stderrp, align 8, !dbg !353, !tbaa !201
  %93 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %92, i8* getelementptr inbounds ([75 x i8]* @.str14, i64 0, i64 0), i32 %89, i32 %86) #6, !dbg !355
  br label %94, !dbg !356

; <label>:94                                      ; preds = %63, %82, %71, %68, %91, %79, %60, %45, %11, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %11 ], [ 0, %45 ], [ 0, %60 ], [ 0, %79 ], [ 0, %91 ], [ 1, %68 ], [ 1, %71 ], [ 1, %82 ], [ 1, %63 ]
  ret i32 %.0, !dbg !357
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_readFromFormattedFile(%struct._DenseMtx* %mtx, %struct.__sFILE* %fp) #0 {
  %itemp = alloca [7 x i32], align 16
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !111, metadata !191), !dbg !358
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !112, metadata !191), !dbg !359
  tail call void @llvm.dbg.declare(metadata [7 x i32]* %itemp, metadata !115, metadata !191), !dbg !360
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !361
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !363
  %or.cond = or i1 %1, %2, !dbg !364
  br i1 %or.cond, label %3, label %6, !dbg !364

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !365, !tbaa !201
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([60 x i8]* @.str5, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct.__sFILE* %fp) #6, !dbg !367
  br label %81, !dbg !368

; <label>:6                                       ; preds = %0
  tail call void @DenseMtx_clearData(%struct._DenseMtx* %mtx) #6, !dbg !369
  %7 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 0, !dbg !370
  %8 = call i32 @IVfscanf(%struct.__sFILE* %fp, i32 7, i32* %7) #6, !dbg !372
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !113, metadata !191), !dbg !373
  %9 = icmp eq i32 %8, 7, !dbg !374
  br i1 %9, label %13, label %10, !dbg !375

; <label>:10                                      ; preds = %6
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !376, !tbaa !201
  %12 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([66 x i8]* @.str6, i64 0, i64 0), i32 %8, i32 7) #6, !dbg !378
  br label %81, !dbg !379

; <label>:13                                      ; preds = %6
  %14 = bitcast [7 x i32]* %itemp to i64*, !dbg !380
  %15 = load i64* %14, align 16, !dbg !380
  %16 = trunc i64 %15 to i32, !dbg !380
  %17 = lshr i64 %15, 32
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 2, !dbg !381
  %20 = bitcast i32* %19 to i64*, !dbg !381
  %21 = load i64* %20, align 8, !dbg !381
  %22 = trunc i64 %21 to i32, !dbg !381
  %23 = lshr i64 %21, 32
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 4, !dbg !382
  %26 = bitcast i32* %25 to i64*, !dbg !382
  %27 = load i64* %26, align 16, !dbg !382
  %28 = trunc i64 %27 to i32, !dbg !382
  %29 = lshr i64 %27, 32
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 6, !dbg !383
  %32 = load i32* %31, align 8, !dbg !383, !tbaa !281
  call void @DenseMtx_init(%struct._DenseMtx* %mtx, i32 %16, i32 %18, i32 %22, i32 %24, i32 %28, i32 %30, i32 %32) #6, !dbg !384
  %33 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !385
  %34 = load i32* %33, align 4, !dbg !385, !tbaa !286
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !114, metadata !191), !dbg !387
  %35 = icmp sgt i32 %34, 0, !dbg !388
  br i1 %35, label %36, label %44, !dbg !389

; <label>:36                                      ; preds = %13
  %37 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !390
  %38 = load i32** %37, align 8, !dbg !390, !tbaa !295
  %39 = call i32 @IVfscanf(%struct.__sFILE* %fp, i32 %34, i32* %38) #6, !dbg !393
  call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !113, metadata !191), !dbg !373
  %40 = icmp eq i32 %39, %34, !dbg !394
  br i1 %40, label %44, label %41, !dbg !395

; <label>:41                                      ; preds = %36
  %42 = load %struct.__sFILE** @__stderrp, align 8, !dbg !396, !tbaa !201
  %43 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %42, i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0), i32 %39, i32 %34) #6, !dbg !398
  br label %81, !dbg !399

; <label>:44                                      ; preds = %36, %13
  %45 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !400
  %46 = load i32* %45, align 4, !dbg !400, !tbaa !306
  call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !114, metadata !191), !dbg !387
  %47 = icmp sgt i32 %46, 0, !dbg !402
  br i1 %47, label %48, label %56, !dbg !403

; <label>:48                                      ; preds = %44
  %49 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !404
  %50 = load i32** %49, align 8, !dbg !404, !tbaa !312
  %51 = call i32 @IVfscanf(%struct.__sFILE* %fp, i32 %46, i32* %50) #6, !dbg !407
  call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !113, metadata !191), !dbg !373
  %52 = icmp eq i32 %51, %46, !dbg !408
  br i1 %52, label %._crit_edge, label %53, !dbg !409

._crit_edge:                                      ; preds = %48
  %.pre = load i32* %45, align 4, !dbg !410, !tbaa !306
  br label %56, !dbg !409

; <label>:53                                      ; preds = %48
  %54 = load %struct.__sFILE** @__stderrp, align 8, !dbg !412, !tbaa !201
  %55 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %54, i8* getelementptr inbounds ([77 x i8]* @.str8, i64 0, i64 0), i32 %51, i32 %46) #6, !dbg !414
  br label %81, !dbg !415

; <label>:56                                      ; preds = %._crit_edge, %44
  %57 = phi i32 [ %.pre, %._crit_edge ], [ %46, %44 ]
  %58 = load i32* %33, align 4, !dbg !416, !tbaa !286
  %59 = mul nsw i32 %57, %58, !dbg !417
  call void @llvm.dbg.value(metadata i32 %59, i64 0, metadata !114, metadata !191), !dbg !387
  %60 = icmp sgt i32 %59, 0, !dbg !418
  br i1 %60, label %61, label %81, !dbg !419

; <label>:61                                      ; preds = %56
  %62 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !420
  %63 = load i32* %62, align 4, !dbg !420, !tbaa !330
  switch i32 %63, label %81 [
    i32 1, label %64
    i32 2, label %72
  ], !dbg !423

; <label>:64                                      ; preds = %61
  %65 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !424
  %66 = load double** %65, align 8, !dbg !424, !tbaa !334
  %67 = call i32 @DVfscanf(%struct.__sFILE* %fp, i32 %59, double* %66) #6, !dbg !427
  call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !113, metadata !191), !dbg !373
  %68 = icmp eq i32 %67, %59, !dbg !428
  br i1 %68, label %81, label %69, !dbg !429

; <label>:69                                      ; preds = %64
  %70 = load %struct.__sFILE** @__stderrp, align 8, !dbg !430, !tbaa !201
  %71 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %70, i8* getelementptr inbounds ([78 x i8]* @.str9, i64 0, i64 0), i32 %67, i32 %59) #6, !dbg !432
  br label %81, !dbg !433

; <label>:72                                      ; preds = %61
  %73 = shl nsw i32 %59, 1, !dbg !434
  %74 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !438
  %75 = load double** %74, align 8, !dbg !438, !tbaa !334
  %76 = call i32 @DVfscanf(%struct.__sFILE* %fp, i32 %73, double* %75) #6, !dbg !439
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !113, metadata !191), !dbg !373
  %77 = icmp eq i32 %76, %73, !dbg !440
  br i1 %77, label %81, label %78, !dbg !441

; <label>:78                                      ; preds = %72
  %79 = load %struct.__sFILE** @__stderrp, align 8, !dbg !442, !tbaa !201
  %80 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %79, i8* getelementptr inbounds ([78 x i8]* @.str9, i64 0, i64 0), i32 %76, i32 %73) #6, !dbg !444
  br label %81, !dbg !445

; <label>:81                                      ; preds = %56, %72, %64, %61, %78, %69, %53, %41, %10, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %10 ], [ 0, %41 ], [ 0, %53 ], [ 0, %69 ], [ 0, %78 ], [ 1, %61 ], [ 1, %64 ], [ 1, %72 ], [ 1, %56 ]
  ret i32 %.0, !dbg !446
}

; Function Attrs: optsize
declare void @DenseMtx_clearData(%struct._DenseMtx*) #4

; Function Attrs: optsize
declare i32 @IVfscanf(%struct.__sFILE*, i32, i32*) #4

; Function Attrs: optsize
declare void @DenseMtx_init(%struct._DenseMtx*, i32, i32, i32, i32, i32, i32, i32) #4

; Function Attrs: optsize
declare i32 @DVfscanf(%struct.__sFILE*, i32, double*) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_writeToFile(%struct._DenseMtx* %mtx, i8* %fn) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !128, metadata !191), !dbg !447
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !129, metadata !191), !dbg !448
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !449
  br i1 %1, label %2, label %5, !dbg !451

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !452, !tbaa !201
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), %struct._DenseMtx* null, i8* %fn) #6, !dbg !454
  br label %59, !dbg !455

; <label>:5                                       ; preds = %0
  %6 = icmp eq i8* %fn, null, !dbg !456
  br i1 %6, label %7, label %10, !dbg !458

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !459, !tbaa !201
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([57 x i8]* @.str16, i64 0, i64 0), %struct._DenseMtx* %mtx, i8* null) #6, !dbg !461
  br label %59, !dbg !462

; <label>:10                                      ; preds = %5
  %11 = tail call i64 @strlen(i8* %fn) #6, !dbg !463
  %12 = trunc i64 %11 to i32, !dbg !463
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !131, metadata !191), !dbg !464
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !132, metadata !191), !dbg !465
  %13 = icmp sgt i32 %12, 10, !dbg !466
  br i1 %13, label %14, label %50, !dbg !468

; <label>:14                                      ; preds = %10
  %15 = shl i64 %11, 32, !dbg !469
  %sext = add i64 %15, -42949672960, !dbg !469
  %16 = ashr exact i64 %sext, 32, !dbg !469
  %17 = getelementptr inbounds i8* %fn, i64 %16, !dbg !469
  %18 = tail call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0)) #6, !dbg !472
  %19 = icmp eq i32 %18, 0, !dbg !473
  br i1 %19, label %20, label %29, !dbg !474

; <label>:20                                      ; preds = %14
  %21 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0)) #6, !dbg !475
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %21, i64 0, metadata !130, metadata !191), !dbg !478
  %22 = icmp eq %struct.__sFILE* %21, null, !dbg !479
  br i1 %22, label %23, label %26, !dbg !480

; <label>:23                                      ; preds = %20
  %24 = load %struct.__sFILE** @__stderrp, align 8, !dbg !481, !tbaa !201
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %24, i8* getelementptr inbounds ([58 x i8]* @.str18, i64 0, i64 0), i8* %fn) #6, !dbg !483
  br label %59, !dbg !484

; <label>:26                                      ; preds = %20
  %27 = tail call i32 @DenseMtx_writeToBinaryFile(%struct._DenseMtx* %mtx, %struct.__sFILE* %21) #7, !dbg !485
  %28 = tail call i32 @fclose(%struct.__sFILE* %21) #6, !dbg !487
  br label %59, !dbg !488

; <label>:29                                      ; preds = %14
  %30 = tail call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([11 x i8]* @.str45, i64 0, i64 0)) #6, !dbg !489
  %31 = icmp eq i32 %30, 0, !dbg !491
  br i1 %31, label %32, label %41, !dbg !492

; <label>:32                                      ; preds = %29
  %33 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #6, !dbg !493
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %33, i64 0, metadata !130, metadata !191), !dbg !478
  %34 = icmp eq %struct.__sFILE* %33, null, !dbg !496
  br i1 %34, label %35, label %38, !dbg !497

; <label>:35                                      ; preds = %32
  %36 = load %struct.__sFILE** @__stderrp, align 8, !dbg !498, !tbaa !201
  %37 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %36, i8* getelementptr inbounds ([58 x i8]* @.str18, i64 0, i64 0), i8* %fn) #6, !dbg !500
  br label %59, !dbg !501

; <label>:38                                      ; preds = %32
  %39 = tail call i32 @DenseMtx_writeToFormattedFile(%struct._DenseMtx* %mtx, %struct.__sFILE* %33) #7, !dbg !502
  %40 = tail call i32 @fclose(%struct.__sFILE* %33) #6, !dbg !504
  br label %59, !dbg !505

; <label>:41                                      ; preds = %29
  %42 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str20, i64 0, i64 0)) #6, !dbg !506
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %42, i64 0, metadata !130, metadata !191), !dbg !478
  %43 = icmp eq %struct.__sFILE* %42, null, !dbg !509
  br i1 %43, label %44, label %47, !dbg !510

; <label>:44                                      ; preds = %41
  %45 = load %struct.__sFILE** @__stderrp, align 8, !dbg !511, !tbaa !201
  %46 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %45, i8* getelementptr inbounds ([58 x i8]* @.str18, i64 0, i64 0), i8* %fn) #6, !dbg !513
  br label %59, !dbg !514

; <label>:47                                      ; preds = %41
  %48 = tail call i32 @DenseMtx_writeForHumanEye(%struct._DenseMtx* %mtx, %struct.__sFILE* %42) #7, !dbg !515
  %49 = tail call i32 @fclose(%struct.__sFILE* %42) #6, !dbg !517
  br label %59

; <label>:50                                      ; preds = %10
  %51 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str20, i64 0, i64 0)) #6, !dbg !518
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %51, i64 0, metadata !130, metadata !191), !dbg !478
  %52 = icmp eq %struct.__sFILE* %51, null, !dbg !521
  br i1 %52, label %53, label %56, !dbg !522

; <label>:53                                      ; preds = %50
  %54 = load %struct.__sFILE** @__stderrp, align 8, !dbg !523, !tbaa !201
  %55 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %54, i8* getelementptr inbounds ([58 x i8]* @.str18, i64 0, i64 0), i8* %fn) #6, !dbg !525
  br label %59, !dbg !526

; <label>:56                                      ; preds = %50
  %57 = tail call i32 @DenseMtx_writeForHumanEye(%struct._DenseMtx* %mtx, %struct.__sFILE* %51) #7, !dbg !527
  %58 = tail call i32 @fclose(%struct.__sFILE* %51) #6, !dbg !529
  br label %59

; <label>:59                                      ; preds = %56, %38, %47, %26, %53, %44, %35, %23, %7, %2
  %.0 = phi i32 [ -1, %2 ], [ -2, %7 ], [ -3, %23 ], [ -3, %35 ], [ -3, %44 ], [ -3, %53 ], [ 1, %26 ], [ 1, %47 ], [ 1, %38 ], [ 1, %56 ]
  ret i32 %.0, !dbg !530
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_writeToBinaryFile(%struct._DenseMtx* %mtx, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !140, metadata !191), !dbg !531
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !141, metadata !191), !dbg !532
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !533
  br i1 %1, label %2, label %5, !dbg !535

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !536, !tbaa !201
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str24, i64 0, i64 0), i64 58, i64 1, %struct.__sFILE* %3), !dbg !538
  br label %73, !dbg !539

; <label>:5                                       ; preds = %0
  %6 = icmp eq %struct.__sFILE* %fp, null, !dbg !540
  br i1 %6, label %7, label %10, !dbg !542

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !543, !tbaa !201
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str25, i64 0, i64 0), i64 57, i64 1, %struct.__sFILE* %8), !dbg !545
  br label %73, !dbg !546

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !547
  %12 = bitcast %struct._DenseMtx* %mtx to i8*, !dbg !548
  %13 = tail call i64 @"\01_fwrite"(i8* %12, i64 4, i64 1, %struct.__sFILE* %fp) #6, !dbg !549
  %14 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1, !dbg !550
  %15 = bitcast i32* %14 to i8*, !dbg !551
  %16 = tail call i64 @"\01_fwrite"(i8* %15, i64 4, i64 1, %struct.__sFILE* %fp) #6, !dbg !552
  %17 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2, !dbg !553
  %18 = bitcast i32* %17 to i8*, !dbg !554
  %19 = tail call i64 @"\01_fwrite"(i8* %18, i64 4, i64 1, %struct.__sFILE* %fp) #6, !dbg !555
  %20 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !556
  %21 = bitcast i32* %20 to i8*, !dbg !557
  %22 = tail call i64 @"\01_fwrite"(i8* %21, i64 4, i64 1, %struct.__sFILE* %fp) #6, !dbg !558
  %23 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !559
  %24 = bitcast i32* %23 to i8*, !dbg !560
  %25 = tail call i64 @"\01_fwrite"(i8* %24, i64 4, i64 1, %struct.__sFILE* %fp) #6, !dbg !561
  %26 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !562
  %27 = bitcast i32* %26 to i8*, !dbg !563
  %28 = tail call i64 @"\01_fwrite"(i8* %27, i64 4, i64 1, %struct.__sFILE* %fp) #6, !dbg !564
  %29 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !565
  %30 = bitcast i32* %29 to i8*, !dbg !566
  %31 = tail call i64 @"\01_fwrite"(i8* %30, i64 4, i64 1, %struct.__sFILE* %fp) #6, !dbg !567
  %32 = load i32* %20, align 4, !dbg !568, !tbaa !286
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !142, metadata !191), !dbg !570
  %33 = icmp sgt i32 %32, 0, !dbg !571
  br i1 %33, label %34, label %42, !dbg !572

; <label>:34                                      ; preds = %10
  %35 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !573
  %36 = load i32** %35, align 8, !dbg !573, !tbaa !295
  %37 = icmp eq i32* %36, null, !dbg !574
  br i1 %37, label %42, label %38, !dbg !575

; <label>:38                                      ; preds = %34
  %39 = bitcast i32* %36 to i8*, !dbg !576
  %40 = sext i32 %32 to i64, !dbg !578
  %41 = tail call i64 @"\01_fwrite"(i8* %39, i64 4, i64 %40, %struct.__sFILE* %fp) #6, !dbg !579
  br label %42, !dbg !580

; <label>:42                                      ; preds = %34, %38, %10
  %43 = load i32* %23, align 4, !dbg !581, !tbaa !306
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !142, metadata !191), !dbg !570
  %44 = icmp sgt i32 %43, 0, !dbg !583
  br i1 %44, label %45, label %53, !dbg !584

; <label>:45                                      ; preds = %42
  %46 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !585
  %47 = load i32** %46, align 8, !dbg !585, !tbaa !312
  %48 = icmp eq i32* %47, null, !dbg !586
  br i1 %48, label %53, label %49, !dbg !587

; <label>:49                                      ; preds = %45
  %50 = bitcast i32* %47 to i8*, !dbg !588
  %51 = sext i32 %43 to i64, !dbg !590
  %52 = tail call i64 @"\01_fwrite"(i8* %50, i64 4, i64 %51, %struct.__sFILE* %fp) #6, !dbg !591
  %.pre = load i32* %23, align 4, !dbg !592, !tbaa !306
  br label %53, !dbg !594

; <label>:53                                      ; preds = %45, %49, %42
  %54 = phi i32 [ %43, %45 ], [ %.pre, %49 ], [ %43, %42 ]
  %55 = load i32* %20, align 4, !dbg !595, !tbaa !286
  %56 = mul nsw i32 %54, %55, !dbg !596
  tail call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !142, metadata !191), !dbg !570
  %57 = icmp sgt i32 %56, 0, !dbg !597
  br i1 %57, label %58, label %73, !dbg !598

; <label>:58                                      ; preds = %53
  %59 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !599
  %60 = load double** %59, align 8, !dbg !599, !tbaa !334
  %61 = icmp eq double* %60, null, !dbg !600
  br i1 %61, label %73, label %62, !dbg !601

; <label>:62                                      ; preds = %58
  %63 = load i32* %11, align 4, !dbg !602, !tbaa !330
  switch i32 %63, label %73 [
    i32 1, label %64
    i32 2, label %68
  ], !dbg !605

; <label>:64                                      ; preds = %62
  %65 = bitcast double* %60 to i8*, !dbg !606
  %66 = sext i32 %56 to i64, !dbg !608
  %67 = tail call i64 @"\01_fwrite"(i8* %65, i64 8, i64 %66, %struct.__sFILE* %fp) #6, !dbg !609
  br label %73, !dbg !610

; <label>:68                                      ; preds = %62
  %69 = bitcast double* %60 to i8*, !dbg !611
  %70 = shl nsw i32 %56, 1, !dbg !614
  %71 = sext i32 %70 to i64, !dbg !615
  %72 = tail call i64 @"\01_fwrite"(i8* %69, i64 8, i64 %71, %struct.__sFILE* %fp) #6, !dbg !616
  br label %73, !dbg !617

; <label>:73                                      ; preds = %53, %68, %64, %58, %62, %7, %2
  %.0 = phi i32 [ -1, %2 ], [ -2, %7 ], [ 1, %62 ], [ 1, %58 ], [ 1, %64 ], [ 1, %68 ], [ 1, %53 ]
  ret i32 %.0, !dbg !618
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_writeToFormattedFile(%struct._DenseMtx* readonly %mtx, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !135, metadata !191), !dbg !619
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !136, metadata !191), !dbg !620
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !621
  br i1 %1, label %2, label %5, !dbg !623

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !624, !tbaa !201
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str21, i64 0, i64 0), i64 61, i64 1, %struct.__sFILE* %3), !dbg !626
  br label %55, !dbg !627

; <label>:5                                       ; preds = %0
  %6 = icmp eq %struct.__sFILE* %fp, null, !dbg !628
  br i1 %6, label %7, label %10, !dbg !630

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !631, !tbaa !201
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str22, i64 0, i64 0), i64 60, i64 1, %struct.__sFILE* %8), !dbg !633
  br label %55, !dbg !634

; <label>:10                                      ; preds = %5
  %11 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !635
  %12 = load i32* %11, align 4, !dbg !635, !tbaa !330
  %13 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1, !dbg !636
  %14 = load i32* %13, align 4, !dbg !636, !tbaa !637
  %15 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2, !dbg !638
  %16 = load i32* %15, align 4, !dbg !638, !tbaa !639
  %17 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !640
  %18 = load i32* %17, align 4, !dbg !640, !tbaa !286
  %19 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !641
  %20 = load i32* %19, align 4, !dbg !641, !tbaa !306
  %21 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !642
  %22 = load i32* %21, align 4, !dbg !642, !tbaa !643
  %23 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !644
  %24 = load i32* %23, align 4, !dbg !644, !tbaa !645
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0), i32 %12, i32 %14, i32 %16, i32 %18, i32 %20, i32 %22, i32 %24) #6, !dbg !646
  %26 = load i32* %17, align 4, !dbg !647, !tbaa !286
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !137, metadata !191), !dbg !649
  %27 = icmp sgt i32 %26, 0, !dbg !650
  br i1 %27, label %28, label %33, !dbg !651

; <label>:28                                      ; preds = %10
  %29 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !652
  %30 = load i32** %29, align 8, !dbg !652, !tbaa !295
  %31 = icmp eq i32* %30, null, !dbg !653
  br i1 %31, label %33, label %32, !dbg !654

; <label>:32                                      ; preds = %28
  tail call void @IVfprintf(%struct.__sFILE* %fp, i32 %26, i32* %30) #6, !dbg !655
  br label %33, !dbg !657

; <label>:33                                      ; preds = %28, %32, %10
  %34 = load i32* %19, align 4, !dbg !658, !tbaa !306
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !137, metadata !191), !dbg !649
  %35 = icmp sgt i32 %34, 0, !dbg !660
  br i1 %35, label %36, label %41, !dbg !661

; <label>:36                                      ; preds = %33
  %37 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !662
  %38 = load i32** %37, align 8, !dbg !662, !tbaa !312
  %39 = icmp eq i32* %38, null, !dbg !663
  br i1 %39, label %41, label %40, !dbg !664

; <label>:40                                      ; preds = %36
  tail call void @IVfprintf(%struct.__sFILE* %fp, i32 %34, i32* %38) #6, !dbg !665
  %.pre = load i32* %19, align 4, !dbg !667, !tbaa !306
  br label %41, !dbg !669

; <label>:41                                      ; preds = %36, %40, %33
  %42 = phi i32 [ %34, %36 ], [ %.pre, %40 ], [ %34, %33 ]
  %43 = load i32* %17, align 4, !dbg !670, !tbaa !286
  %44 = mul nsw i32 %42, %43, !dbg !671
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !137, metadata !191), !dbg !649
  %45 = icmp sgt i32 %44, 0, !dbg !672
  br i1 %45, label %46, label %55, !dbg !673

; <label>:46                                      ; preds = %41
  %47 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !674
  %48 = load double** %47, align 8, !dbg !674, !tbaa !334
  %49 = icmp eq double* %48, null, !dbg !675
  br i1 %49, label %55, label %50, !dbg !676

; <label>:50                                      ; preds = %46
  %51 = load i32* %11, align 4, !dbg !677, !tbaa !330
  switch i32 %51, label %55 [
    i32 1, label %52
    i32 2, label %53
  ], !dbg !680

; <label>:52                                      ; preds = %50
  tail call void @DVfprintf(%struct.__sFILE* %fp, i32 %44, double* %48) #6, !dbg !681
  br label %55, !dbg !683

; <label>:53                                      ; preds = %50
  %54 = shl nsw i32 %44, 1, !dbg !684
  tail call void @DVfprintf(%struct.__sFILE* %fp, i32 %54, double* %48) #6, !dbg !687
  br label %55, !dbg !688

; <label>:55                                      ; preds = %41, %53, %52, %46, %50, %7, %2
  %.0 = phi i32 [ -1, %2 ], [ -2, %7 ], [ 1, %50 ], [ 1, %46 ], [ 1, %52 ], [ 1, %53 ], [ 1, %41 ]
  ret i32 %.0, !dbg !689
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_writeForHumanEye(%struct._DenseMtx* %mtx, %struct.__sFILE* %fp) #0 {
  %a2 = alloca %struct._A2, align 8
  %ierr = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !149, metadata !191), !dbg !690
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !150, metadata !191), !dbg !691
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !692
  br i1 %1, label %2, label %5, !dbg !694

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !695, !tbaa !201
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str36, i64 0, i64 0), i64 58, i64 1, %struct.__sFILE* %3), !dbg !697
  br label %37, !dbg !698

; <label>:5                                       ; preds = %0
  %6 = icmp eq %struct.__sFILE* %fp, null, !dbg !699
  br i1 %6, label %7, label %10, !dbg !701

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !702, !tbaa !201
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str36, i64 0, i64 0), i64 58, i64 1, %struct.__sFILE* %8), !dbg !704
  br label %37, !dbg !705

; <label>:10                                      ; preds = %5
  %11 = tail call i32 @DenseMtx_writeStats(%struct._DenseMtx* %mtx, %struct.__sFILE* %fp) #7, !dbg !706
  tail call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !165, metadata !191), !dbg !707
  tail call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !167, metadata !191), !dbg !708
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #6, !dbg !709
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !165, metadata !191), !dbg !707
  %12 = load i32* %nrow, align 4, !dbg !710, !tbaa !281
  %13 = icmp sgt i32 %12, 0, !dbg !712
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !167, metadata !191), !dbg !708
  %14 = load i32** %rowind, align 8
  %15 = icmp ne i32* %14, null, !dbg !713
  %or.cond = and i1 %13, %15, !dbg !714
  br i1 %or.cond, label %16, label %21, !dbg !714

; <label>:16                                      ; preds = %10
  %17 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str37, i64 0, i64 0), i32* %14) #6, !dbg !715
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !165, metadata !191), !dbg !707
  %18 = load i32* %nrow, align 4, !dbg !717, !tbaa !281
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !167, metadata !191), !dbg !708
  %19 = load i32** %rowind, align 8, !dbg !718, !tbaa !201
  call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !163, metadata !191), !dbg !719
  %20 = call i32 @IVfp80(%struct.__sFILE* %fp, i32 %18, i32* %19, i32 80, i32* %ierr) #6, !dbg !720
  br label %21, !dbg !721

; <label>:21                                      ; preds = %16, %10
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !164, metadata !191), !dbg !722
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !166, metadata !191), !dbg !723
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #6, !dbg !724
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !164, metadata !191), !dbg !722
  %22 = load i32* %ncol, align 4, !dbg !725, !tbaa !281
  %23 = icmp sgt i32 %22, 0, !dbg !727
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !166, metadata !191), !dbg !723
  %24 = load i32** %colind, align 8
  %25 = icmp ne i32* %24, null, !dbg !728
  %or.cond3 = and i1 %23, %25, !dbg !729
  br i1 %or.cond3, label %26, label %31, !dbg !729

; <label>:26                                      ; preds = %21
  %27 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str38, i64 0, i64 0), i32* %24) #6, !dbg !730
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !164, metadata !191), !dbg !722
  %28 = load i32* %ncol, align 4, !dbg !732, !tbaa !281
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !166, metadata !191), !dbg !723
  %29 = load i32** %colind, align 8, !dbg !733, !tbaa !201
  call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !163, metadata !191), !dbg !719
  %30 = call i32 @IVfp80(%struct.__sFILE* %fp, i32 %28, i32* %29, i32 80, i32* %ierr) #6, !dbg !734
  %.pre = load i32* %ncol, align 4
  br label %31, !dbg !735

; <label>:31                                      ; preds = %26, %21
  %32 = phi i32 [ %.pre, %26 ], [ %22, %21 ]
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !165, metadata !191), !dbg !707
  %33 = load i32* %nrow, align 4, !dbg !736, !tbaa !281
  %34 = icmp sgt i32 %33, 0, !dbg !738
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !164, metadata !191), !dbg !722
  %35 = icmp sgt i32 %32, 0, !dbg !739
  %or.cond5 = and i1 %34, %35, !dbg !740
  br i1 %or.cond5, label %36, label %37, !dbg !740

; <label>:36                                      ; preds = %31
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !151, metadata !191), !dbg !741
  call void @A2_setDefaultFields(%struct._A2* %a2) #6, !dbg !742
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !151, metadata !191), !dbg !741
  call void @DenseMtx_setA2(%struct._DenseMtx* %mtx, %struct._A2* %a2) #6, !dbg !744
  call void @llvm.dbg.value(metadata %struct._A2* %a2, i64 0, metadata !151, metadata !191), !dbg !741
  call void @A2_writeForHumanEye(%struct._A2* %a2, %struct.__sFILE* %fp) #6, !dbg !745
  br label %37, !dbg !746

; <label>:37                                      ; preds = %31, %36, %7, %2
  %.0 = phi i32 [ -1, %2 ], [ -2, %7 ], [ 1, %36 ], [ 1, %31 ]
  ret i32 %.0, !dbg !747
}

; Function Attrs: optsize
declare void @IVfprintf(%struct.__sFILE*, i32, i32*) #4

; Function Attrs: optsize
declare void @DVfprintf(%struct.__sFILE*, i32, double*) #4

; Function Attrs: optsize
declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_writeStats(%struct._DenseMtx* %mtx, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !145, metadata !191), !dbg !748
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !146, metadata !191), !dbg !749
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !750
  br i1 %1, label %2, label %5, !dbg !752

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !753, !tbaa !201
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str26, i64 0, i64 0), i64 51, i64 1, %struct.__sFILE* %3), !dbg !755
  br label %63, !dbg !756

; <label>:5                                       ; preds = %0
  %6 = icmp eq %struct.__sFILE* %fp, null, !dbg !757
  br i1 %6, label %7, label %10, !dbg !759

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !760, !tbaa !201
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([51 x i8]* @.str27, i64 0, i64 0), i64 50, i64 1, %struct.__sFILE* %8), !dbg !762
  br label %63, !dbg !763

; <label>:10                                      ; preds = %5
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str28, i64 0, i64 0), %struct._DenseMtx* %mtx) #6, !dbg !764
  %12 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !765
  %13 = load i32* %12, align 4, !dbg !765, !tbaa !330
  switch i32 %13, label %18 [
    i32 1, label %14
    i32 2, label %16
  ], !dbg !766

; <label>:14                                      ; preds = %10
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str29, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %fp), !dbg !767
  br label %20, !dbg !769

; <label>:16                                      ; preds = %10
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str30, i64 0, i64 0), i64 17, i64 1, %struct.__sFILE* %fp), !dbg !770
  br label %20, !dbg !771

; <label>:18                                      ; preds = %10
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str31, i64 0, i64 0), i64 22, i64 1, %struct.__sFILE* %fp), !dbg !772
  br label %20, !dbg !773

; <label>:20                                      ; preds = %18, %16, %14
  %21 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1, !dbg !774
  %22 = load i32* %21, align 4, !dbg !774, !tbaa !637
  %23 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2, !dbg !775
  %24 = load i32* %23, align 4, !dbg !775, !tbaa !639
  %25 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !776
  %26 = load i32* %25, align 4, !dbg !776, !tbaa !286
  %27 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !777
  %28 = load i32* %27, align 4, !dbg !777, !tbaa !306
  %29 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !778
  %30 = load i32* %29, align 4, !dbg !778, !tbaa !643
  %31 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !779
  %32 = load i32* %31, align 4, !dbg !779, !tbaa !645
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([71 x i8]* @.str32, i64 0, i64 0), i32 %22, i32 %24, i32 %26, i32 %28, i32 %30, i32 %32) #6, !dbg !780
  %34 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !781
  %35 = load i32** %34, align 8, !dbg !781, !tbaa !295
  %36 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !782
  %37 = load i32** %36, align 8, !dbg !782, !tbaa !312
  %38 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !783
  %39 = load double** %38, align 8, !dbg !783, !tbaa !334
  %40 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([41 x i8]* @.str33, i64 0, i64 0), i32* %35, i32* %37, double* %39) #6, !dbg !784
  %41 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10, !dbg !785
  %42 = tail call double* @DV_entries(%struct._DV* %41) #6, !dbg !786
  %43 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str34, i64 0, i64 0), double* %42) #6, !dbg !787
  %44 = load i32** %34, align 8, !dbg !788, !tbaa !295
  %45 = tail call double* @DV_entries(%struct._DV* %41) #6, !dbg !789
  %46 = ptrtoint i32* %44 to i64, !dbg !790
  %47 = ptrtoint double* %45 to i64, !dbg !790
  %48 = sub i64 %46, %47, !dbg !790
  %49 = ashr exact i64 %48, 2, !dbg !790
  %50 = load i32** %36, align 8, !dbg !791, !tbaa !312
  %51 = tail call double* @DV_entries(%struct._DV* %41) #6, !dbg !792
  %52 = ptrtoint i32* %50 to i64, !dbg !793
  %53 = ptrtoint double* %51 to i64, !dbg !793
  %54 = sub i64 %52, %53, !dbg !793
  %55 = ashr exact i64 %54, 2, !dbg !793
  %56 = load double** %38, align 8, !dbg !794, !tbaa !334
  %57 = tail call double* @DV_entries(%struct._DV* %41) #6, !dbg !795
  %58 = ptrtoint double* %56 to i64, !dbg !796
  %59 = ptrtoint double* %57 to i64, !dbg !796
  %60 = sub i64 %58, %59, !dbg !796
  %61 = ashr exact i64 %60, 3, !dbg !796
  %62 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([65 x i8]* @.str35, i64 0, i64 0), i64 %49, i64 %55, i64 %61) #6, !dbg !797
  br label %63, !dbg !798

; <label>:63                                      ; preds = %20, %7, %2
  %.0 = phi i32 [ -1, %2 ], [ -2, %7 ], [ 1, %20 ]
  ret i32 %.0, !dbg !799
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #4

; Function Attrs: optsize
declare void @DenseMtx_rowIndices(%struct._DenseMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare i32 @IVfp80(%struct.__sFILE*, i32, i32*, i32, i32*) #4

; Function Attrs: optsize
declare void @DenseMtx_columnIndices(%struct._DenseMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare void @A2_setDefaultFields(%struct._A2*) #4

; Function Attrs: optsize
declare void @DenseMtx_setA2(%struct._DenseMtx*, %struct._A2*) #4

; Function Attrs: optsize
declare void @A2_writeForHumanEye(%struct._A2*, %struct.__sFILE*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @DenseMtx_writeForMatlab(%struct._DenseMtx* %mtx, i8* %mtxname, %struct.__sFILE* %fp) #0 {
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  tail call void @llvm.dbg.value(metadata %struct._DenseMtx* %mtx, i64 0, metadata !172, metadata !191), !dbg !800
  tail call void @llvm.dbg.value(metadata i8* %mtxname, i64 0, metadata !173, metadata !191), !dbg !801
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !174, metadata !191), !dbg !802
  %1 = icmp eq %struct._DenseMtx* %mtx, null, !dbg !803
  br i1 %1, label %2, label %5, !dbg !805

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !806, !tbaa !201
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([57 x i8]* @.str39, i64 0, i64 0), i64 56, i64 1, %struct.__sFILE* %3), !dbg !808
  br label %.loopexit, !dbg !809

; <label>:5                                       ; preds = %0
  %6 = icmp eq i8* %mtxname, null, !dbg !810
  br i1 %6, label %7, label %10, !dbg !812

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !813, !tbaa !201
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str40, i64 0, i64 0), i64 60, i64 1, %struct.__sFILE* %8), !dbg !815
  br label %.loopexit, !dbg !816

; <label>:10                                      ; preds = %5
  %11 = icmp eq %struct.__sFILE* %fp, null, !dbg !817
  br i1 %11, label %12, label %15, !dbg !819

; <label>:12                                      ; preds = %10
  %13 = load %struct.__sFILE** @__stderrp, align 8, !dbg !820, !tbaa !201
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str41, i64 0, i64 0), i64 55, i64 1, %struct.__sFILE* %13), !dbg !822
  br label %.loopexit, !dbg !823

; <label>:15                                      ; preds = %10
  tail call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !181, metadata !191), !dbg !824
  tail call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !183, metadata !191), !dbg !825
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #6, !dbg !826
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !180, metadata !191), !dbg !827
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !182, metadata !191), !dbg !828
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #6, !dbg !829
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !180, metadata !191), !dbg !827
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !181, metadata !191), !dbg !824
  call void @DenseMtx_dimensions(%struct._DenseMtx* %mtx, i32* %nrow, i32* %ncol) #6, !dbg !830
  %16 = call i32 @DenseMtx_rowIncrement(%struct._DenseMtx* %mtx) #6, !dbg !831
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !176, metadata !191), !dbg !832
  %17 = call i32 @DenseMtx_columnIncrement(%struct._DenseMtx* %mtx) #6, !dbg !833
  call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !177, metadata !191), !dbg !834
  %18 = call double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #6, !dbg !835
  call void @llvm.dbg.value(metadata double* %18, i64 0, metadata !175, metadata !191), !dbg !836
  %19 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !837
  %20 = load i32* %19, align 4, !dbg !837, !tbaa !330
  switch i32 %20, label %.loopexit [
    i32 1, label %.preheader1
    i32 2, label %.preheader3
  ], !dbg !839

.preheader3:                                      ; preds = %15
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !180, metadata !191), !dbg !827
  %21 = load i32* %ncol, align 4, !dbg !840, !tbaa !281
  %22 = icmp sgt i32 %21, 0, !dbg !845
  br i1 %22, label %.preheader2.lr.ph, label %.loopexit, !dbg !846

.preheader2.lr.ph:                                ; preds = %.preheader3
  %23 = sext i32 %16 to i64, !dbg !846
  %24 = sext i32 %17 to i64, !dbg !846
  %.pre = load i32* %nrow, align 4, !dbg !847, !tbaa !281
  br label %.preheader2, !dbg !846

.preheader1:                                      ; preds = %15
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !180, metadata !191), !dbg !827
  %25 = load i32* %ncol, align 4, !dbg !851, !tbaa !281
  %26 = icmp sgt i32 %25, 0, !dbg !855
  br i1 %26, label %.preheader.lr.ph, label %.loopexit, !dbg !856

.preheader.lr.ph:                                 ; preds = %.preheader1
  %27 = sext i32 %16 to i64, !dbg !856
  %28 = sext i32 %17 to i64, !dbg !856
  %.pre18 = load i32* %nrow, align 4, !dbg !857, !tbaa !281
  br label %.preheader, !dbg !856

.preheader:                                       ; preds = %.preheader.lr.ph, %50
  %29 = phi i32 [ %25, %.preheader.lr.ph ], [ %51, %50 ]
  %30 = phi i32 [ %.pre18, %.preheader.lr.ph ], [ %52, %50 ], !dbg !824
  %indvars.iv11 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next12, %50 ]
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !181, metadata !191), !dbg !824
  %31 = icmp sgt i32 %30, 0, !dbg !861
  br i1 %31, label %.lr.ph, label %50, !dbg !862

.lr.ph:                                           ; preds = %.preheader
  %32 = mul nsw i64 %indvars.iv11, %28, !dbg !863
  br label %33, !dbg !862

; <label>:33                                      ; preds = %.lr.ph, %33
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %33 ]
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !183, metadata !191), !dbg !825
  %34 = load i32** %rowind, align 8, !dbg !865, !tbaa !201
  %35 = getelementptr inbounds i32* %34, i64 %indvars.iv, !dbg !865
  %36 = load i32* %35, align 4, !dbg !865, !tbaa !281
  %37 = add nsw i32 %36, 1, !dbg !866
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !182, metadata !191), !dbg !828
  %38 = load i32** %colind, align 8, !dbg !867, !tbaa !201
  %39 = getelementptr inbounds i32* %38, i64 %indvars.iv11, !dbg !867
  %40 = load i32* %39, align 4, !dbg !867, !tbaa !281
  %41 = add nsw i32 %40, 1, !dbg !868
  %42 = mul nsw i64 %indvars.iv, %27, !dbg !869
  %43 = add nsw i64 %42, %32, !dbg !870
  %44 = getelementptr inbounds double* %18, i64 %43, !dbg !871
  %45 = load double* %44, align 8, !dbg !871, !tbaa !872
  %46 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str42, i64 0, i64 0), i8* %mtxname, i32 %37, i32 %41, double %45) #6, !dbg !874
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !862
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !181, metadata !191), !dbg !824
  %47 = load i32* %nrow, align 4, !dbg !857, !tbaa !281
  %48 = sext i32 %47 to i64, !dbg !861
  %49 = icmp slt i64 %indvars.iv.next, %48, !dbg !861
  br i1 %49, label %33, label %._crit_edge, !dbg !862

._crit_edge:                                      ; preds = %33
  %.pre19 = load i32* %ncol, align 4, !dbg !851, !tbaa !281
  br label %50, !dbg !862

; <label>:50                                      ; preds = %._crit_edge, %.preheader
  %51 = phi i32 [ %.pre19, %._crit_edge ], [ %29, %.preheader ], !dbg !856
  %52 = phi i32 [ %47, %._crit_edge ], [ %30, %.preheader ]
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !856
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !180, metadata !191), !dbg !827
  %53 = sext i32 %51 to i64, !dbg !855
  %54 = icmp slt i64 %indvars.iv.next12, %53, !dbg !855
  br i1 %54, label %.preheader, label %.loopexit, !dbg !856

.preheader2:                                      ; preds = %.preheader2.lr.ph, %83
  %55 = phi i32 [ %21, %.preheader2.lr.ph ], [ %84, %83 ]
  %56 = phi i32 [ %.pre, %.preheader2.lr.ph ], [ %85, %83 ], !dbg !824
  %indvars.iv15 = phi i64 [ 0, %.preheader2.lr.ph ], [ %indvars.iv.next16, %83 ]
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !181, metadata !191), !dbg !824
  %57 = icmp sgt i32 %56, 0, !dbg !875
  br i1 %57, label %.lr.ph8, label %83, !dbg !876

.lr.ph8:                                          ; preds = %.preheader2
  %58 = mul nsw i64 %indvars.iv15, %24, !dbg !877
  br label %59, !dbg !876

; <label>:59                                      ; preds = %.lr.ph8, %59
  %indvars.iv13 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next14, %59 ]
  call void @llvm.dbg.value(metadata i32** %rowind, i64 0, metadata !183, metadata !191), !dbg !825
  %60 = load i32** %rowind, align 8, !dbg !879, !tbaa !201
  %61 = getelementptr inbounds i32* %60, i64 %indvars.iv13, !dbg !879
  %62 = load i32* %61, align 4, !dbg !879, !tbaa !281
  %63 = add nsw i32 %62, 1, !dbg !880
  call void @llvm.dbg.value(metadata i32** %colind, i64 0, metadata !182, metadata !191), !dbg !828
  %64 = load i32** %colind, align 8, !dbg !881, !tbaa !201
  %65 = getelementptr inbounds i32* %64, i64 %indvars.iv15, !dbg !881
  %66 = load i32* %65, align 4, !dbg !881, !tbaa !281
  %67 = add nsw i32 %66, 1, !dbg !882
  %68 = mul nsw i64 %indvars.iv13, %23, !dbg !883
  %69 = add nsw i64 %68, %58, !dbg !884
  %70 = trunc i64 %69 to i32, !dbg !885
  %71 = shl nsw i32 %70, 1, !dbg !885
  %72 = sext i32 %71 to i64, !dbg !886
  %73 = getelementptr inbounds double* %18, i64 %72, !dbg !886
  %74 = load double* %73, align 8, !dbg !886, !tbaa !872
  %75 = or i32 %71, 1, !dbg !887
  %76 = sext i32 %75 to i64, !dbg !888
  %77 = getelementptr inbounds double* %18, i64 %76, !dbg !888
  %78 = load double* %77, align 8, !dbg !888, !tbaa !872
  %79 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str43, i64 0, i64 0), i8* %mtxname, i32 %63, i32 %67, double %74, double %78) #6, !dbg !889
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !876
  call void @llvm.dbg.value(metadata i32* %nrow, i64 0, metadata !181, metadata !191), !dbg !824
  %80 = load i32* %nrow, align 4, !dbg !847, !tbaa !281
  %81 = sext i32 %80 to i64, !dbg !875
  %82 = icmp slt i64 %indvars.iv.next14, %81, !dbg !875
  br i1 %82, label %59, label %._crit_edge9, !dbg !876

._crit_edge9:                                     ; preds = %59
  %.pre17 = load i32* %ncol, align 4, !dbg !840, !tbaa !281
  br label %83, !dbg !876

; <label>:83                                      ; preds = %._crit_edge9, %.preheader2
  %84 = phi i32 [ %.pre17, %._crit_edge9 ], [ %55, %.preheader2 ], !dbg !846
  %85 = phi i32 [ %80, %._crit_edge9 ], [ %56, %.preheader2 ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !846
  call void @llvm.dbg.value(metadata i32* %ncol, i64 0, metadata !180, metadata !191), !dbg !827
  %86 = sext i32 %84 to i64, !dbg !845
  %87 = icmp slt i64 %indvars.iv.next16, %86, !dbg !845
  br i1 %87, label %.preheader2, label %.loopexit, !dbg !846

.loopexit:                                        ; preds = %83, %50, %.preheader3, %.preheader1, %15, %12, %7, %2
  %.0 = phi i32 [ -1, %2 ], [ -2, %7 ], [ -3, %12 ], [ 1, %15 ], [ 1, %.preheader1 ], [ 1, %.preheader3 ], [ 1, %50 ], [ 1, %83 ]
  ret i32 %.0, !dbg !890
}

; Function Attrs: optsize
declare void @DenseMtx_dimensions(%struct._DenseMtx*, i32*, i32*) #4

; Function Attrs: optsize
declare i32 @DenseMtx_rowIncrement(%struct._DenseMtx*) #4

; Function Attrs: optsize
declare i32 @DenseMtx_columnIncrement(%struct._DenseMtx*) #4

; Function Attrs: optsize
declare double* @DenseMtx_entries(%struct._DenseMtx*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!187, !188, !189}
!llvm.ident = !{!190}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !9, globals: !184, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !7}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !{!10, !107, !119, !126, !133, !138, !143, !147, !168}
!10 = !DISubprogram(name: "DenseMtx_readFromFile", scope: !1, file: !1, line: 23, type: !11, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DenseMtx*, i8*)* @DenseMtx_readFromFile, variables: !40)
!11 = !DISubroutineType(types: !12)
!12 = !{!8, !13, !5}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "DenseMtx", file: !15, line: 28, baseType: !16)
!15 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../DenseMtx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DenseMtx", file: !15, line: 29, size: 704, align: 64, elements: !17)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !30, !39}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !16, file: !15, line: 30, baseType: !8, size: 32, align: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "rowid", scope: !16, file: !15, line: 31, baseType: !8, size: 32, align: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "colid", scope: !16, file: !15, line: 32, baseType: !8, size: 32, align: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "nrow", scope: !16, file: !15, line: 33, baseType: !8, size: 32, align: 32, offset: 96)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ncol", scope: !16, file: !15, line: 34, baseType: !8, size: 32, align: 32, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "inc1", scope: !16, file: !15, line: 35, baseType: !8, size: 32, align: 32, offset: 160)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "inc2", scope: !16, file: !15, line: 36, baseType: !8, size: 32, align: 32, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "rowind", scope: !16, file: !15, line: 37, baseType: !7, size: 64, align: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "colind", scope: !16, file: !15, line: 38, baseType: !7, size: 64, align: 64, offset: 320)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !16, file: !15, line: 39, baseType: !28, size: 64, align: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "wrkDV", scope: !16, file: !15, line: 40, baseType: !31, size: 192, align: 64, offset: 448)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "DV", file: !32, line: 20, baseType: !33)
!32 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../DV/DV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "_DV", file: !32, line: 21, size: 192, align: 64, elements: !34)
!34 = !{!35, !36, !37, !38}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !33, file: !32, line: 22, baseType: !8, size: 32, align: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !33, file: !32, line: 23, baseType: !8, size: 32, align: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !33, file: !32, line: 24, baseType: !8, size: 32, align: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !33, file: !32, line: 25, baseType: !28, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !16, file: !15, line: 41, baseType: !13, size: 64, align: 64, offset: 640)
!40 = !{!41, !42, !43, !104, !105, !106}
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !10, file: !1, line: 24, type: !13)
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !10, file: !1, line: 25, type: !5)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !10, file: !1, line: 27, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !46, line: 153, baseType: !47)
!46 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !46, line: 122, size: 1216, align: 64, elements: !48)
!48 = !{!49, !52, !53, !54, !56, !57, !62, !63, !64, !68, !72, !82, !88, !89, !92, !93, !97, !101, !102, !103}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !47, file: !46, line: 123, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !47, file: !46, line: 124, baseType: !8, size: 32, align: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !47, file: !46, line: 125, baseType: !8, size: 32, align: 32, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !46, line: 126, baseType: !55, size: 16, align: 16, offset: 128)
!55 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !47, file: !46, line: 127, baseType: !55, size: 16, align: 16, offset: 144)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !47, file: !46, line: 128, baseType: !58, size: 128, align: 64, offset: 192)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !46, line: 88, size: 128, align: 64, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !58, file: !46, line: 89, baseType: !50, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !58, file: !46, line: 90, baseType: !8, size: 32, align: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !47, file: !46, line: 129, baseType: !8, size: 32, align: 32, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !47, file: !46, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !47, file: !46, line: 133, baseType: !65, size: 64, align: 64, offset: 448)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!8, !4}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !47, file: !46, line: 134, baseType: !69, size: 64, align: 64, offset: 512)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!8, !4, !5, !8}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !47, file: !46, line: 135, baseType: !73, size: 64, align: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!76, !4, !76, !8}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !46, line: 77, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !78, line: 71, baseType: !79)
!78 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !80, line: 46, baseType: !81)
!80 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!81 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !47, file: !46, line: 136, baseType: !83, size: 64, align: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!8, !4, !86, !8}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !47, file: !46, line: 139, baseType: !58, size: 128, align: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !47, file: !46, line: 140, baseType: !90, size: 64, align: 64, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !46, line: 94, flags: DIFlagFwdDecl)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !47, file: !46, line: 141, baseType: !8, size: 32, align: 32, offset: 896)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !47, file: !46, line: 144, baseType: !94, size: 24, align: 8, offset: 928)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 24, align: 8, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 3)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !47, file: !46, line: 145, baseType: !98, size: 8, align: 8, offset: 952)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 8, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 1)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !47, file: !46, line: 148, baseType: !58, size: 128, align: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !47, file: !46, line: 151, baseType: !8, size: 32, align: 32, offset: 1088)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !46, line: 152, baseType: !76, size: 64, align: 64, offset: 1152)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fnlength", scope: !10, file: !1, line: 28, type: !8)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !10, file: !1, line: 28, type: !8)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sulength", scope: !10, file: !1, line: 28, type: !8)
!107 = !DISubprogram(name: "DenseMtx_readFromFormattedFile", scope: !1, file: !1, line: 91, type: !108, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DenseMtx*, %struct.__sFILE*)* @DenseMtx_readFromFormattedFile, variables: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{!8, !13, !44}
!110 = !{!111, !112, !113, !114, !115}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !107, file: !1, line: 92, type: !13)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !107, file: !1, line: 93, type: !44)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !107, file: !1, line: 95, type: !8)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !107, file: !1, line: 95, type: !8)
!115 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemp", scope: !107, file: !1, line: 96, type: !116)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 224, align: 32, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 7)
!119 = !DISubprogram(name: "DenseMtx_readFromBinaryFile", scope: !1, file: !1, line: 188, type: !108, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DenseMtx*, %struct.__sFILE*)* @DenseMtx_readFromBinaryFile, variables: !120)
!120 = !{!121, !122, !123, !124, !125}
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !119, file: !1, line: 189, type: !13)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !119, file: !1, line: 190, type: !44)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !119, file: !1, line: 192, type: !8)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !119, file: !1, line: 192, type: !8)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemp", scope: !119, file: !1, line: 193, type: !116)
!126 = !DISubprogram(name: "DenseMtx_writeToFile", scope: !1, file: !1, line: 299, type: !11, isLocal: false, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DenseMtx*, i8*)* @DenseMtx_writeToFile, variables: !127)
!127 = !{!128, !129, !130, !131, !132}
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !126, file: !1, line: 300, type: !13)
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !126, file: !1, line: 301, type: !5)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !126, file: !1, line: 303, type: !44)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fnlength", scope: !126, file: !1, line: 304, type: !8)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sulength", scope: !126, file: !1, line: 304, type: !8)
!133 = !DISubprogram(name: "DenseMtx_writeToFormattedFile", scope: !1, file: !1, line: 382, type: !108, isLocal: false, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DenseMtx*, %struct.__sFILE*)* @DenseMtx_writeToFormattedFile, variables: !134)
!134 = !{!135, !136, !137}
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !133, file: !1, line: 383, type: !13)
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !133, file: !1, line: 384, type: !44)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !133, file: !1, line: 386, type: !8)
!138 = !DISubprogram(name: "DenseMtx_writeToBinaryFile", scope: !1, file: !1, line: 430, type: !108, isLocal: false, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DenseMtx*, %struct.__sFILE*)* @DenseMtx_writeToBinaryFile, variables: !139)
!139 = !{!140, !141, !142}
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !138, file: !1, line: 431, type: !13)
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !138, file: !1, line: 432, type: !44)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !138, file: !1, line: 434, type: !8)
!143 = !DISubprogram(name: "DenseMtx_writeStats", scope: !1, file: !1, line: 483, type: !108, isLocal: false, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DenseMtx*, %struct.__sFILE*)* @DenseMtx_writeStats, variables: !144)
!144 = !{!145, !146}
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !143, file: !1, line: 484, type: !13)
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !143, file: !1, line: 485, type: !44)
!147 = !DISubprogram(name: "DenseMtx_writeForHumanEye", scope: !1, file: !1, line: 548, type: !108, isLocal: false, isDefinition: true, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DenseMtx*, %struct.__sFILE*)* @DenseMtx_writeForHumanEye, variables: !148)
!148 = !{!149, !150, !151, !163, !164, !165, !166, !167}
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !147, file: !1, line: 549, type: !13)
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !147, file: !1, line: 550, type: !44)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !147, file: !1, line: 552, type: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "A2", file: !153, line: 49, baseType: !154)
!153 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../A2/A2.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!154 = !DICompositeType(tag: DW_TAG_structure_type, name: "_A2", file: !153, line: 41, size: 256, align: 64, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !154, file: !153, line: 42, baseType: !8, size: 32, align: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "n1", scope: !154, file: !153, line: 43, baseType: !8, size: 32, align: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "n2", scope: !154, file: !153, line: 44, baseType: !8, size: 32, align: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "inc1", scope: !154, file: !153, line: 45, baseType: !8, size: 32, align: 32, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "inc2", scope: !154, file: !153, line: 46, baseType: !8, size: 32, align: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nowned", scope: !154, file: !153, line: 47, baseType: !8, size: 32, align: 32, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !154, file: !153, line: 48, baseType: !28, size: 64, align: 64, offset: 192)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ierr", scope: !147, file: !1, line: 553, type: !8)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !147, file: !1, line: 553, type: !8)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrow", scope: !147, file: !1, line: 553, type: !8)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colind", scope: !147, file: !1, line: 554, type: !7)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowind", scope: !147, file: !1, line: 554, type: !7)
!168 = !DISubprogram(name: "DenseMtx_writeForMatlab", scope: !1, file: !1, line: 603, type: !169, isLocal: false, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._DenseMtx*, i8*, %struct.__sFILE*)* @DenseMtx_writeForMatlab, variables: !171)
!169 = !DISubroutineType(types: !170)
!170 = !{!8, !13, !5, !44}
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!172 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !168, file: !1, line: 604, type: !13)
!173 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtxname", arg: 2, scope: !168, file: !1, line: 605, type: !5)
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 3, scope: !168, file: !1, line: 606, type: !44)
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "entries", scope: !168, file: !1, line: 608, type: !28)
!176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inc1", scope: !168, file: !1, line: 609, type: !8)
!177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inc2", scope: !168, file: !1, line: 609, type: !8)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irow", scope: !168, file: !1, line: 609, type: !8)
!179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcol", scope: !168, file: !1, line: 609, type: !8)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !168, file: !1, line: 609, type: !8)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrow", scope: !168, file: !1, line: 609, type: !8)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "colind", scope: !168, file: !1, line: 610, type: !7)
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rowind", scope: !168, file: !1, line: 610, type: !7)
!184 = !{!185, !186}
!185 = !DIGlobalVariable(name: "suffixb", scope: !0, file: !1, line: 5, type: !86, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariable(name: "suffixf", scope: !0, file: !1, line: 6, type: !86, isLocal: true, isDefinition: true)
!187 = !{i32 2, !"Dwarf Version", i32 2}
!188 = !{i32 2, !"Debug Info Version", i32 700000003}
!189 = !{i32 1, !"PIC Level", i32 2}
!190 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!191 = !DIExpression()
!192 = !DILocation(line: 24, column: 16, scope: !10)
!193 = !DILocation(line: 25, column: 16, scope: !10)
!194 = !DILocation(line: 28, column: 18, scope: !10)
!195 = !DILocation(line: 34, column: 10, scope: !196)
!196 = distinct !DILexicalBlock(scope: !10, file: !1, line: 34, column: 6)
!197 = !DILocation(line: 34, column: 24, scope: !196)
!198 = !DILocation(line: 34, column: 18, scope: !196)
!199 = !DILocation(line: 35, column: 12, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !1, line: 34, column: 34)
!201 = !{!202, !202, i64 0}
!202 = !{!"any pointer", !203, i64 0}
!203 = !{!"omnipotent char", !204, i64 0}
!204 = !{!"Simple C/C++ TBAA"}
!205 = !DILocation(line: 35, column: 4, scope: !200)
!206 = !DILocation(line: 37, column: 4, scope: !200)
!207 = !DILocation(line: 44, column: 12, scope: !10)
!208 = !DILocation(line: 28, column: 8, scope: !10)
!209 = !DILocation(line: 28, column: 26, scope: !10)
!210 = !DILocation(line: 46, column: 15, scope: !211)
!211 = distinct !DILexicalBlock(scope: !10, file: !1, line: 46, column: 6)
!212 = !DILocation(line: 46, column: 6, scope: !10)
!213 = !DILocation(line: 47, column: 17, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !1, line: 47, column: 9)
!215 = distinct !DILexicalBlock(scope: !211, file: !1, line: 46, column: 28)
!216 = !DILocation(line: 47, column: 9, scope: !214)
!217 = !DILocation(line: 47, column: 49, scope: !214)
!218 = !DILocation(line: 47, column: 9, scope: !215)
!219 = !DILocation(line: 48, column: 18, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !1, line: 48, column: 12)
!221 = distinct !DILexicalBlock(scope: !214, file: !1, line: 47, column: 56)
!222 = !DILocation(line: 27, column: 9, scope: !10)
!223 = !DILocation(line: 48, column: 35, scope: !220)
!224 = !DILocation(line: 48, column: 12, scope: !221)
!225 = !DILocation(line: 49, column: 18, scope: !226)
!226 = distinct !DILexicalBlock(scope: !220, file: !1, line: 48, column: 45)
!227 = !DILocation(line: 49, column: 10, scope: !226)
!228 = !DILocation(line: 51, column: 7, scope: !226)
!229 = !DILocation(line: 52, column: 15, scope: !230)
!230 = distinct !DILexicalBlock(scope: !220, file: !1, line: 51, column: 14)
!231 = !DILocation(line: 53, column: 10, scope: !230)
!232 = !DILocation(line: 55, column: 16, scope: !233)
!233 = distinct !DILexicalBlock(scope: !214, file: !1, line: 55, column: 16)
!234 = !DILocation(line: 55, column: 56, scope: !233)
!235 = !DILocation(line: 55, column: 16, scope: !214)
!236 = !DILocation(line: 56, column: 18, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 56, column: 12)
!238 = distinct !DILexicalBlock(scope: !233, file: !1, line: 55, column: 63)
!239 = !DILocation(line: 56, column: 34, scope: !237)
!240 = !DILocation(line: 56, column: 12, scope: !238)
!241 = !DILocation(line: 57, column: 18, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 56, column: 44)
!243 = !DILocation(line: 57, column: 10, scope: !242)
!244 = !DILocation(line: 59, column: 7, scope: !242)
!245 = !DILocation(line: 60, column: 15, scope: !246)
!246 = distinct !DILexicalBlock(scope: !237, file: !1, line: 59, column: 14)
!247 = !DILocation(line: 61, column: 10, scope: !246)
!248 = !DILocation(line: 64, column: 15, scope: !249)
!249 = distinct !DILexicalBlock(scope: !233, file: !1, line: 63, column: 11)
!250 = !DILocation(line: 64, column: 7, scope: !249)
!251 = !DILocation(line: 71, column: 12, scope: !252)
!252 = distinct !DILexicalBlock(scope: !211, file: !1, line: 70, column: 8)
!253 = !DILocation(line: 71, column: 4, scope: !252)
!254 = !DILocation(line: 78, column: 14, scope: !10)
!255 = !DILocation(line: 189, column: 16, scope: !119)
!256 = !DILocation(line: 190, column: 16, scope: !119)
!257 = !DILocation(line: 193, column: 7, scope: !119)
!258 = !DILocation(line: 199, column: 10, scope: !259)
!259 = distinct !DILexicalBlock(scope: !119, file: !1, line: 199, column: 6)
!260 = !DILocation(line: 199, column: 24, scope: !259)
!261 = !DILocation(line: 199, column: 18, scope: !259)
!262 = !DILocation(line: 200, column: 12, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !1, line: 199, column: 34)
!264 = !DILocation(line: 200, column: 4, scope: !263)
!265 = !DILocation(line: 203, column: 4, scope: !263)
!266 = !DILocation(line: 210, column: 1, scope: !119)
!267 = !DILocation(line: 217, column: 18, scope: !268)
!268 = distinct !DILexicalBlock(scope: !119, file: !1, line: 217, column: 6)
!269 = !DILocation(line: 217, column: 12, scope: !268)
!270 = !DILocation(line: 192, column: 7, scope: !119)
!271 = !DILocation(line: 217, column: 55, scope: !268)
!272 = !DILocation(line: 217, column: 6, scope: !119)
!273 = !DILocation(line: 218, column: 12, scope: !274)
!274 = distinct !DILexicalBlock(scope: !268, file: !1, line: 217, column: 62)
!275 = !DILocation(line: 218, column: 4, scope: !274)
!276 = !DILocation(line: 220, column: 4, scope: !274)
!277 = !DILocation(line: 227, column: 20, scope: !119)
!278 = !DILocation(line: 227, column: 40, scope: !119)
!279 = !DILocation(line: 228, column: 25, scope: !119)
!280 = !DILocation(line: 228, column: 45, scope: !119)
!281 = !{!282, !282, i64 0}
!282 = !{!"int", !203, i64 0}
!283 = !DILocation(line: 227, column: 1, scope: !119)
!284 = !DILocation(line: 234, column: 19, scope: !285)
!285 = distinct !DILexicalBlock(scope: !119, file: !1, line: 234, column: 6)
!286 = !{!287, !282, i64 12}
!287 = !{!"_DenseMtx", !282, i64 0, !282, i64 4, !282, i64 8, !282, i64 12, !282, i64 16, !282, i64 20, !282, i64 24, !202, i64 32, !202, i64 40, !202, i64 48, !288, i64 56, !202, i64 80}
!288 = !{!"_DV", !282, i64 0, !282, i64 4, !282, i64 8, !202, i64 16}
!289 = !DILocation(line: 192, column: 11, scope: !119)
!290 = !DILocation(line: 234, column: 25, scope: !285)
!291 = !DILocation(line: 234, column: 6, scope: !119)
!292 = !DILocation(line: 235, column: 26, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !1, line: 235, column: 9)
!294 = distinct !DILexicalBlock(scope: !285, file: !1, line: 234, column: 31)
!295 = !{!287, !202, i64 32}
!296 = !DILocation(line: 235, column: 47, scope: !293)
!297 = !DILocation(line: 235, column: 15, scope: !293)
!298 = !DILocation(line: 235, column: 58, scope: !293)
!299 = !DILocation(line: 235, column: 9, scope: !294)
!300 = !DILocation(line: 236, column: 15, scope: !301)
!301 = distinct !DILexicalBlock(scope: !293, file: !1, line: 235, column: 68)
!302 = !DILocation(line: 236, column: 7, scope: !301)
!303 = !DILocation(line: 238, column: 7, scope: !301)
!304 = !DILocation(line: 246, column: 19, scope: !305)
!305 = distinct !DILexicalBlock(scope: !119, file: !1, line: 246, column: 6)
!306 = !{!287, !282, i64 16}
!307 = !DILocation(line: 246, column: 25, scope: !305)
!308 = !DILocation(line: 246, column: 6, scope: !119)
!309 = !DILocation(line: 247, column: 26, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !1, line: 247, column: 9)
!311 = distinct !DILexicalBlock(scope: !305, file: !1, line: 246, column: 31)
!312 = !{!287, !202, i64 40}
!313 = !DILocation(line: 247, column: 47, scope: !310)
!314 = !DILocation(line: 247, column: 15, scope: !310)
!315 = !DILocation(line: 247, column: 58, scope: !310)
!316 = !DILocation(line: 247, column: 9, scope: !311)
!317 = !DILocation(line: 258, column: 29, scope: !318)
!318 = distinct !DILexicalBlock(scope: !119, file: !1, line: 258, column: 6)
!319 = !DILocation(line: 248, column: 15, scope: !320)
!320 = distinct !DILexicalBlock(scope: !310, file: !1, line: 247, column: 68)
!321 = !DILocation(line: 248, column: 7, scope: !320)
!322 = !DILocation(line: 250, column: 7, scope: !320)
!323 = !DILocation(line: 258, column: 19, scope: !318)
!324 = !DILocation(line: 258, column: 23, scope: !318)
!325 = !DILocation(line: 258, column: 35, scope: !318)
!326 = !DILocation(line: 258, column: 6, scope: !119)
!327 = !DILocation(line: 259, column: 9, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 259, column: 9)
!329 = distinct !DILexicalBlock(scope: !318, file: !1, line: 258, column: 41)
!330 = !{!287, !282, i64 0}
!331 = !DILocation(line: 259, column: 9, scope: !329)
!332 = !DILocation(line: 260, column: 23, scope: !333)
!333 = distinct !DILexicalBlock(scope: !328, file: !1, line: 259, column: 33)
!334 = !{!287, !202, i64 48}
!335 = !DILocation(line: 260, column: 48, scope: !333)
!336 = !DILocation(line: 260, column: 12, scope: !333)
!337 = !DILocation(line: 261, column: 15, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !1, line: 261, column: 12)
!339 = !DILocation(line: 261, column: 12, scope: !333)
!340 = !DILocation(line: 262, column: 18, scope: !341)
!341 = distinct !DILexicalBlock(scope: !338, file: !1, line: 261, column: 25)
!342 = !DILocation(line: 262, column: 10, scope: !341)
!343 = !DILocation(line: 264, column: 10, scope: !341)
!344 = !DILocation(line: 267, column: 23, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 266, column: 43)
!346 = distinct !DILexicalBlock(scope: !328, file: !1, line: 266, column: 16)
!347 = !DILocation(line: 267, column: 49, scope: !345)
!348 = !DILocation(line: 267, column: 48, scope: !345)
!349 = !DILocation(line: 267, column: 12, scope: !345)
!350 = !DILocation(line: 268, column: 15, scope: !351)
!351 = distinct !DILexicalBlock(scope: !345, file: !1, line: 268, column: 12)
!352 = !DILocation(line: 268, column: 12, scope: !345)
!353 = !DILocation(line: 269, column: 18, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !1, line: 268, column: 27)
!355 = !DILocation(line: 269, column: 10, scope: !354)
!356 = !DILocation(line: 271, column: 10, scope: !354)
!357 = !DILocation(line: 275, column: 13, scope: !119)
!358 = !DILocation(line: 92, column: 16, scope: !107)
!359 = !DILocation(line: 93, column: 16, scope: !107)
!360 = !DILocation(line: 96, column: 7, scope: !107)
!361 = !DILocation(line: 102, column: 10, scope: !362)
!362 = distinct !DILexicalBlock(scope: !107, file: !1, line: 102, column: 6)
!363 = !DILocation(line: 102, column: 24, scope: !362)
!364 = !DILocation(line: 102, column: 18, scope: !362)
!365 = !DILocation(line: 103, column: 12, scope: !366)
!366 = distinct !DILexicalBlock(scope: !362, file: !1, line: 102, column: 34)
!367 = !DILocation(line: 103, column: 4, scope: !366)
!368 = !DILocation(line: 105, column: 4, scope: !366)
!369 = !DILocation(line: 112, column: 1, scope: !107)
!370 = !DILocation(line: 119, column: 28, scope: !371)
!371 = distinct !DILexicalBlock(scope: !107, file: !1, line: 119, column: 6)
!372 = !DILocation(line: 119, column: 12, scope: !371)
!373 = !DILocation(line: 95, column: 7, scope: !107)
!374 = !DILocation(line: 119, column: 36, scope: !371)
!375 = !DILocation(line: 119, column: 6, scope: !107)
!376 = !DILocation(line: 120, column: 12, scope: !377)
!377 = distinct !DILexicalBlock(scope: !371, file: !1, line: 119, column: 43)
!378 = !DILocation(line: 120, column: 4, scope: !377)
!379 = !DILocation(line: 122, column: 4, scope: !377)
!380 = !DILocation(line: 129, column: 20, scope: !107)
!381 = !DILocation(line: 129, column: 40, scope: !107)
!382 = !DILocation(line: 130, column: 25, scope: !107)
!383 = !DILocation(line: 130, column: 45, scope: !107)
!384 = !DILocation(line: 129, column: 1, scope: !107)
!385 = !DILocation(line: 136, column: 19, scope: !386)
!386 = distinct !DILexicalBlock(scope: !107, file: !1, line: 136, column: 6)
!387 = !DILocation(line: 95, column: 11, scope: !107)
!388 = !DILocation(line: 136, column: 25, scope: !386)
!389 = !DILocation(line: 136, column: 6, scope: !107)
!390 = !DILocation(line: 137, column: 39, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 137, column: 9)
!392 = distinct !DILexicalBlock(scope: !386, file: !1, line: 136, column: 31)
!393 = !DILocation(line: 137, column: 15, scope: !391)
!394 = !DILocation(line: 137, column: 48, scope: !391)
!395 = !DILocation(line: 137, column: 9, scope: !392)
!396 = !DILocation(line: 138, column: 15, scope: !397)
!397 = distinct !DILexicalBlock(scope: !391, file: !1, line: 137, column: 58)
!398 = !DILocation(line: 138, column: 7, scope: !397)
!399 = !DILocation(line: 140, column: 7, scope: !397)
!400 = !DILocation(line: 148, column: 19, scope: !401)
!401 = distinct !DILexicalBlock(scope: !107, file: !1, line: 148, column: 6)
!402 = !DILocation(line: 148, column: 25, scope: !401)
!403 = !DILocation(line: 148, column: 6, scope: !107)
!404 = !DILocation(line: 149, column: 39, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !1, line: 149, column: 9)
!406 = distinct !DILexicalBlock(scope: !401, file: !1, line: 148, column: 31)
!407 = !DILocation(line: 149, column: 15, scope: !405)
!408 = !DILocation(line: 149, column: 48, scope: !405)
!409 = !DILocation(line: 149, column: 9, scope: !406)
!410 = !DILocation(line: 160, column: 29, scope: !411)
!411 = distinct !DILexicalBlock(scope: !107, file: !1, line: 160, column: 6)
!412 = !DILocation(line: 150, column: 15, scope: !413)
!413 = distinct !DILexicalBlock(scope: !405, file: !1, line: 149, column: 58)
!414 = !DILocation(line: 150, column: 7, scope: !413)
!415 = !DILocation(line: 152, column: 7, scope: !413)
!416 = !DILocation(line: 160, column: 19, scope: !411)
!417 = !DILocation(line: 160, column: 23, scope: !411)
!418 = !DILocation(line: 160, column: 35, scope: !411)
!419 = !DILocation(line: 160, column: 6, scope: !107)
!420 = !DILocation(line: 161, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !1, line: 161, column: 9)
!422 = distinct !DILexicalBlock(scope: !411, file: !1, line: 160, column: 41)
!423 = !DILocation(line: 161, column: 9, scope: !422)
!424 = !DILocation(line: 162, column: 42, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !1, line: 162, column: 12)
!426 = distinct !DILexicalBlock(scope: !421, file: !1, line: 161, column: 33)
!427 = !DILocation(line: 162, column: 18, scope: !425)
!428 = !DILocation(line: 162, column: 52, scope: !425)
!429 = !DILocation(line: 162, column: 12, scope: !426)
!430 = !DILocation(line: 163, column: 18, scope: !431)
!431 = distinct !DILexicalBlock(scope: !425, file: !1, line: 162, column: 62)
!432 = !DILocation(line: 163, column: 10, scope: !431)
!433 = !DILocation(line: 165, column: 10, scope: !431)
!434 = !DILocation(line: 168, column: 32, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !1, line: 168, column: 12)
!436 = distinct !DILexicalBlock(scope: !437, file: !1, line: 167, column: 43)
!437 = distinct !DILexicalBlock(scope: !421, file: !1, line: 167, column: 16)
!438 = !DILocation(line: 168, column: 44, scope: !435)
!439 = !DILocation(line: 168, column: 18, scope: !435)
!440 = !DILocation(line: 168, column: 54, scope: !435)
!441 = !DILocation(line: 168, column: 12, scope: !436)
!442 = !DILocation(line: 169, column: 18, scope: !443)
!443 = distinct !DILexicalBlock(scope: !435, file: !1, line: 168, column: 66)
!444 = !DILocation(line: 169, column: 10, scope: !443)
!445 = !DILocation(line: 171, column: 10, scope: !443)
!446 = !DILocation(line: 175, column: 13, scope: !107)
!447 = !DILocation(line: 300, column: 16, scope: !126)
!448 = !DILocation(line: 301, column: 16, scope: !126)
!449 = !DILocation(line: 310, column: 10, scope: !450)
!450 = distinct !DILexicalBlock(scope: !126, file: !1, line: 310, column: 6)
!451 = !DILocation(line: 310, column: 6, scope: !126)
!452 = !DILocation(line: 311, column: 12, scope: !453)
!453 = distinct !DILexicalBlock(scope: !450, file: !1, line: 310, column: 20)
!454 = !DILocation(line: 311, column: 4, scope: !453)
!455 = !DILocation(line: 313, column: 4, scope: !453)
!456 = !DILocation(line: 315, column: 9, scope: !457)
!457 = distinct !DILexicalBlock(scope: !126, file: !1, line: 315, column: 6)
!458 = !DILocation(line: 315, column: 6, scope: !126)
!459 = !DILocation(line: 316, column: 12, scope: !460)
!460 = distinct !DILexicalBlock(scope: !457, file: !1, line: 315, column: 19)
!461 = !DILocation(line: 316, column: 4, scope: !460)
!462 = !DILocation(line: 318, column: 4, scope: !460)
!463 = !DILocation(line: 325, column: 12, scope: !126)
!464 = !DILocation(line: 304, column: 8, scope: !126)
!465 = !DILocation(line: 304, column: 18, scope: !126)
!466 = !DILocation(line: 327, column: 15, scope: !467)
!467 = distinct !DILexicalBlock(scope: !126, file: !1, line: 327, column: 6)
!468 = !DILocation(line: 327, column: 6, scope: !126)
!469 = !DILocation(line: 328, column: 17, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 328, column: 9)
!471 = distinct !DILexicalBlock(scope: !467, file: !1, line: 327, column: 28)
!472 = !DILocation(line: 328, column: 9, scope: !470)
!473 = !DILocation(line: 328, column: 49, scope: !470)
!474 = !DILocation(line: 328, column: 9, scope: !471)
!475 = !DILocation(line: 329, column: 18, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !1, line: 329, column: 12)
!477 = distinct !DILexicalBlock(scope: !470, file: !1, line: 328, column: 56)
!478 = !DILocation(line: 303, column: 9, scope: !126)
!479 = !DILocation(line: 329, column: 35, scope: !476)
!480 = !DILocation(line: 329, column: 12, scope: !477)
!481 = !DILocation(line: 330, column: 18, scope: !482)
!482 = distinct !DILexicalBlock(scope: !476, file: !1, line: 329, column: 45)
!483 = !DILocation(line: 330, column: 10, scope: !482)
!484 = !DILocation(line: 332, column: 10, scope: !482)
!485 = !DILocation(line: 334, column: 10, scope: !486)
!486 = distinct !DILexicalBlock(scope: !476, file: !1, line: 333, column: 14)
!487 = !DILocation(line: 335, column: 10, scope: !486)
!488 = !DILocation(line: 337, column: 4, scope: !477)
!489 = !DILocation(line: 337, column: 16, scope: !490)
!490 = distinct !DILexicalBlock(scope: !470, file: !1, line: 337, column: 16)
!491 = !DILocation(line: 337, column: 56, scope: !490)
!492 = !DILocation(line: 337, column: 16, scope: !470)
!493 = !DILocation(line: 338, column: 18, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !1, line: 338, column: 12)
!495 = distinct !DILexicalBlock(scope: !490, file: !1, line: 337, column: 63)
!496 = !DILocation(line: 338, column: 34, scope: !494)
!497 = !DILocation(line: 338, column: 12, scope: !495)
!498 = !DILocation(line: 339, column: 18, scope: !499)
!499 = distinct !DILexicalBlock(scope: !494, file: !1, line: 338, column: 44)
!500 = !DILocation(line: 339, column: 10, scope: !499)
!501 = !DILocation(line: 341, column: 10, scope: !499)
!502 = !DILocation(line: 343, column: 10, scope: !503)
!503 = distinct !DILexicalBlock(scope: !494, file: !1, line: 342, column: 14)
!504 = !DILocation(line: 344, column: 10, scope: !503)
!505 = !DILocation(line: 346, column: 4, scope: !495)
!506 = !DILocation(line: 347, column: 18, scope: !507)
!507 = distinct !DILexicalBlock(scope: !508, file: !1, line: 347, column: 12)
!508 = distinct !DILexicalBlock(scope: !490, file: !1, line: 346, column: 11)
!509 = !DILocation(line: 347, column: 34, scope: !507)
!510 = !DILocation(line: 347, column: 12, scope: !508)
!511 = !DILocation(line: 348, column: 18, scope: !512)
!512 = distinct !DILexicalBlock(scope: !507, file: !1, line: 347, column: 44)
!513 = !DILocation(line: 348, column: 10, scope: !512)
!514 = !DILocation(line: 350, column: 10, scope: !512)
!515 = !DILocation(line: 352, column: 10, scope: !516)
!516 = distinct !DILexicalBlock(scope: !507, file: !1, line: 351, column: 14)
!517 = !DILocation(line: 353, column: 10, scope: !516)
!518 = !DILocation(line: 357, column: 15, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 357, column: 9)
!520 = distinct !DILexicalBlock(scope: !467, file: !1, line: 356, column: 8)
!521 = !DILocation(line: 357, column: 31, scope: !519)
!522 = !DILocation(line: 357, column: 9, scope: !520)
!523 = !DILocation(line: 358, column: 15, scope: !524)
!524 = distinct !DILexicalBlock(scope: !519, file: !1, line: 357, column: 41)
!525 = !DILocation(line: 358, column: 7, scope: !524)
!526 = !DILocation(line: 360, column: 7, scope: !524)
!527 = !DILocation(line: 362, column: 7, scope: !528)
!528 = distinct !DILexicalBlock(scope: !519, file: !1, line: 361, column: 11)
!529 = !DILocation(line: 363, column: 7, scope: !528)
!530 = !DILocation(line: 366, column: 13, scope: !126)
!531 = !DILocation(line: 431, column: 16, scope: !138)
!532 = !DILocation(line: 432, column: 16, scope: !138)
!533 = !DILocation(line: 436, column: 10, scope: !534)
!534 = distinct !DILexicalBlock(scope: !138, file: !1, line: 436, column: 6)
!535 = !DILocation(line: 436, column: 6, scope: !138)
!536 = !DILocation(line: 437, column: 12, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !1, line: 436, column: 20)
!538 = !DILocation(line: 437, column: 4, scope: !537)
!539 = !DILocation(line: 439, column: 4, scope: !537)
!540 = !DILocation(line: 441, column: 9, scope: !541)
!541 = distinct !DILexicalBlock(scope: !138, file: !1, line: 441, column: 6)
!542 = !DILocation(line: 441, column: 6, scope: !138)
!543 = !DILocation(line: 442, column: 12, scope: !544)
!544 = distinct !DILexicalBlock(scope: !541, file: !1, line: 441, column: 19)
!545 = !DILocation(line: 442, column: 4, scope: !544)
!546 = !DILocation(line: 444, column: 4, scope: !544)
!547 = !DILocation(line: 446, column: 23, scope: !138)
!548 = !DILocation(line: 446, column: 8, scope: !138)
!549 = !DILocation(line: 446, column: 1, scope: !138)
!550 = !DILocation(line: 447, column: 23, scope: !138)
!551 = !DILocation(line: 447, column: 8, scope: !138)
!552 = !DILocation(line: 447, column: 1, scope: !138)
!553 = !DILocation(line: 448, column: 23, scope: !138)
!554 = !DILocation(line: 448, column: 8, scope: !138)
!555 = !DILocation(line: 448, column: 1, scope: !138)
!556 = !DILocation(line: 449, column: 23, scope: !138)
!557 = !DILocation(line: 449, column: 8, scope: !138)
!558 = !DILocation(line: 449, column: 1, scope: !138)
!559 = !DILocation(line: 450, column: 23, scope: !138)
!560 = !DILocation(line: 450, column: 8, scope: !138)
!561 = !DILocation(line: 450, column: 1, scope: !138)
!562 = !DILocation(line: 451, column: 23, scope: !138)
!563 = !DILocation(line: 451, column: 8, scope: !138)
!564 = !DILocation(line: 451, column: 1, scope: !138)
!565 = !DILocation(line: 452, column: 23, scope: !138)
!566 = !DILocation(line: 452, column: 8, scope: !138)
!567 = !DILocation(line: 452, column: 1, scope: !138)
!568 = !DILocation(line: 453, column: 19, scope: !569)
!569 = distinct !DILexicalBlock(scope: !138, file: !1, line: 453, column: 6)
!570 = !DILocation(line: 434, column: 7, scope: !138)
!571 = !DILocation(line: 453, column: 25, scope: !569)
!572 = !DILocation(line: 453, column: 29, scope: !569)
!573 = !DILocation(line: 453, column: 37, scope: !569)
!574 = !DILocation(line: 453, column: 44, scope: !569)
!575 = !DILocation(line: 453, column: 6, scope: !138)
!576 = !DILocation(line: 454, column: 11, scope: !577)
!577 = distinct !DILexicalBlock(scope: !569, file: !1, line: 453, column: 54)
!578 = !DILocation(line: 454, column: 46, scope: !577)
!579 = !DILocation(line: 454, column: 4, scope: !577)
!580 = !DILocation(line: 455, column: 1, scope: !577)
!581 = !DILocation(line: 456, column: 19, scope: !582)
!582 = distinct !DILexicalBlock(scope: !138, file: !1, line: 456, column: 6)
!583 = !DILocation(line: 456, column: 25, scope: !582)
!584 = !DILocation(line: 456, column: 29, scope: !582)
!585 = !DILocation(line: 456, column: 37, scope: !582)
!586 = !DILocation(line: 456, column: 44, scope: !582)
!587 = !DILocation(line: 456, column: 6, scope: !138)
!588 = !DILocation(line: 457, column: 11, scope: !589)
!589 = distinct !DILexicalBlock(scope: !582, file: !1, line: 456, column: 54)
!590 = !DILocation(line: 457, column: 46, scope: !589)
!591 = !DILocation(line: 457, column: 4, scope: !589)
!592 = !DILocation(line: 459, column: 29, scope: !593)
!593 = distinct !DILexicalBlock(scope: !138, file: !1, line: 459, column: 6)
!594 = !DILocation(line: 458, column: 1, scope: !589)
!595 = !DILocation(line: 459, column: 19, scope: !593)
!596 = !DILocation(line: 459, column: 23, scope: !593)
!597 = !DILocation(line: 459, column: 35, scope: !593)
!598 = !DILocation(line: 459, column: 39, scope: !593)
!599 = !DILocation(line: 459, column: 47, scope: !593)
!600 = !DILocation(line: 459, column: 55, scope: !593)
!601 = !DILocation(line: 459, column: 6, scope: !138)
!602 = !DILocation(line: 460, column: 9, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !1, line: 460, column: 9)
!604 = distinct !DILexicalBlock(scope: !593, file: !1, line: 459, column: 65)
!605 = !DILocation(line: 460, column: 9, scope: !604)
!606 = !DILocation(line: 461, column: 14, scope: !607)
!607 = distinct !DILexicalBlock(scope: !603, file: !1, line: 460, column: 33)
!608 = !DILocation(line: 461, column: 53, scope: !607)
!609 = !DILocation(line: 461, column: 7, scope: !607)
!610 = !DILocation(line: 462, column: 4, scope: !607)
!611 = !DILocation(line: 463, column: 14, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 462, column: 43)
!613 = distinct !DILexicalBlock(scope: !603, file: !1, line: 462, column: 16)
!614 = !DILocation(line: 463, column: 54, scope: !612)
!615 = !DILocation(line: 463, column: 53, scope: !612)
!616 = !DILocation(line: 463, column: 7, scope: !612)
!617 = !DILocation(line: 464, column: 4, scope: !612)
!618 = !DILocation(line: 466, column: 13, scope: !138)
!619 = !DILocation(line: 383, column: 16, scope: !133)
!620 = !DILocation(line: 384, column: 16, scope: !133)
!621 = !DILocation(line: 388, column: 10, scope: !622)
!622 = distinct !DILexicalBlock(scope: !133, file: !1, line: 388, column: 6)
!623 = !DILocation(line: 388, column: 6, scope: !133)
!624 = !DILocation(line: 389, column: 12, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !1, line: 388, column: 20)
!626 = !DILocation(line: 389, column: 4, scope: !625)
!627 = !DILocation(line: 391, column: 4, scope: !625)
!628 = !DILocation(line: 393, column: 9, scope: !629)
!629 = distinct !DILexicalBlock(scope: !133, file: !1, line: 393, column: 6)
!630 = !DILocation(line: 393, column: 6, scope: !133)
!631 = !DILocation(line: 394, column: 12, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !1, line: 393, column: 19)
!633 = !DILocation(line: 394, column: 4, scope: !632)
!634 = !DILocation(line: 396, column: 4, scope: !632)
!635 = !DILocation(line: 399, column: 14, scope: !133)
!636 = !DILocation(line: 399, column: 25, scope: !133)
!637 = !{!287, !282, i64 4}
!638 = !DILocation(line: 399, column: 37, scope: !133)
!639 = !{!287, !282, i64 8}
!640 = !DILocation(line: 400, column: 14, scope: !133)
!641 = !DILocation(line: 400, column: 25, scope: !133)
!642 = !DILocation(line: 400, column: 36, scope: !133)
!643 = !{!287, !282, i64 20}
!644 = !DILocation(line: 400, column: 47, scope: !133)
!645 = !{!287, !282, i64 24}
!646 = !DILocation(line: 398, column: 1, scope: !133)
!647 = !DILocation(line: 401, column: 19, scope: !648)
!648 = distinct !DILexicalBlock(scope: !133, file: !1, line: 401, column: 6)
!649 = !DILocation(line: 386, column: 7, scope: !133)
!650 = !DILocation(line: 401, column: 25, scope: !648)
!651 = !DILocation(line: 401, column: 29, scope: !648)
!652 = !DILocation(line: 401, column: 37, scope: !648)
!653 = !DILocation(line: 401, column: 44, scope: !648)
!654 = !DILocation(line: 401, column: 6, scope: !133)
!655 = !DILocation(line: 402, column: 4, scope: !656)
!656 = distinct !DILexicalBlock(scope: !648, file: !1, line: 401, column: 54)
!657 = !DILocation(line: 403, column: 1, scope: !656)
!658 = !DILocation(line: 404, column: 19, scope: !659)
!659 = distinct !DILexicalBlock(scope: !133, file: !1, line: 404, column: 6)
!660 = !DILocation(line: 404, column: 25, scope: !659)
!661 = !DILocation(line: 404, column: 29, scope: !659)
!662 = !DILocation(line: 404, column: 37, scope: !659)
!663 = !DILocation(line: 404, column: 44, scope: !659)
!664 = !DILocation(line: 404, column: 6, scope: !133)
!665 = !DILocation(line: 405, column: 4, scope: !666)
!666 = distinct !DILexicalBlock(scope: !659, file: !1, line: 404, column: 54)
!667 = !DILocation(line: 407, column: 29, scope: !668)
!668 = distinct !DILexicalBlock(scope: !133, file: !1, line: 407, column: 6)
!669 = !DILocation(line: 406, column: 1, scope: !666)
!670 = !DILocation(line: 407, column: 19, scope: !668)
!671 = !DILocation(line: 407, column: 23, scope: !668)
!672 = !DILocation(line: 407, column: 35, scope: !668)
!673 = !DILocation(line: 407, column: 39, scope: !668)
!674 = !DILocation(line: 407, column: 47, scope: !668)
!675 = !DILocation(line: 407, column: 55, scope: !668)
!676 = !DILocation(line: 407, column: 6, scope: !133)
!677 = !DILocation(line: 408, column: 9, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !1, line: 408, column: 9)
!679 = distinct !DILexicalBlock(scope: !668, file: !1, line: 407, column: 65)
!680 = !DILocation(line: 408, column: 9, scope: !679)
!681 = !DILocation(line: 409, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !678, file: !1, line: 408, column: 33)
!683 = !DILocation(line: 410, column: 4, scope: !682)
!684 = !DILocation(line: 411, column: 22, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !1, line: 410, column: 43)
!686 = distinct !DILexicalBlock(scope: !678, file: !1, line: 410, column: 16)
!687 = !DILocation(line: 411, column: 7, scope: !685)
!688 = !DILocation(line: 412, column: 4, scope: !685)
!689 = !DILocation(line: 414, column: 13, scope: !133)
!690 = !DILocation(line: 549, column: 16, scope: !147)
!691 = !DILocation(line: 550, column: 16, scope: !147)
!692 = !DILocation(line: 560, column: 10, scope: !693)
!693 = distinct !DILexicalBlock(scope: !147, file: !1, line: 560, column: 6)
!694 = !DILocation(line: 560, column: 6, scope: !147)
!695 = !DILocation(line: 561, column: 12, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !1, line: 560, column: 20)
!697 = !DILocation(line: 561, column: 4, scope: !696)
!698 = !DILocation(line: 563, column: 4, scope: !696)
!699 = !DILocation(line: 565, column: 9, scope: !700)
!700 = distinct !DILexicalBlock(scope: !147, file: !1, line: 565, column: 6)
!701 = !DILocation(line: 565, column: 6, scope: !147)
!702 = !DILocation(line: 566, column: 12, scope: !703)
!703 = distinct !DILexicalBlock(scope: !700, file: !1, line: 565, column: 19)
!704 = !DILocation(line: 566, column: 4, scope: !703)
!705 = !DILocation(line: 568, column: 4, scope: !703)
!706 = !DILocation(line: 570, column: 1, scope: !147)
!707 = !DILocation(line: 553, column: 19, scope: !147)
!708 = !DILocation(line: 554, column: 17, scope: !147)
!709 = !DILocation(line: 571, column: 1, scope: !147)
!710 = !DILocation(line: 572, column: 6, scope: !711)
!711 = distinct !DILexicalBlock(scope: !147, file: !1, line: 572, column: 6)
!712 = !DILocation(line: 572, column: 11, scope: !711)
!713 = !DILocation(line: 572, column: 25, scope: !711)
!714 = !DILocation(line: 572, column: 15, scope: !711)
!715 = !DILocation(line: 573, column: 4, scope: !716)
!716 = distinct !DILexicalBlock(scope: !711, file: !1, line: 572, column: 35)
!717 = !DILocation(line: 574, column: 15, scope: !716)
!718 = !DILocation(line: 574, column: 21, scope: !716)
!719 = !DILocation(line: 553, column: 7, scope: !147)
!720 = !DILocation(line: 574, column: 4, scope: !716)
!721 = !DILocation(line: 575, column: 1, scope: !716)
!722 = !DILocation(line: 553, column: 13, scope: !147)
!723 = !DILocation(line: 554, column: 8, scope: !147)
!724 = !DILocation(line: 576, column: 1, scope: !147)
!725 = !DILocation(line: 577, column: 6, scope: !726)
!726 = distinct !DILexicalBlock(scope: !147, file: !1, line: 577, column: 6)
!727 = !DILocation(line: 577, column: 11, scope: !726)
!728 = !DILocation(line: 577, column: 25, scope: !726)
!729 = !DILocation(line: 577, column: 15, scope: !726)
!730 = !DILocation(line: 578, column: 4, scope: !731)
!731 = distinct !DILexicalBlock(scope: !726, file: !1, line: 577, column: 35)
!732 = !DILocation(line: 579, column: 15, scope: !731)
!733 = !DILocation(line: 579, column: 21, scope: !731)
!734 = !DILocation(line: 579, column: 4, scope: !731)
!735 = !DILocation(line: 580, column: 1, scope: !731)
!736 = !DILocation(line: 581, column: 6, scope: !737)
!737 = distinct !DILexicalBlock(scope: !147, file: !1, line: 581, column: 6)
!738 = !DILocation(line: 581, column: 11, scope: !737)
!739 = !DILocation(line: 581, column: 23, scope: !737)
!740 = !DILocation(line: 581, column: 15, scope: !737)
!741 = !DILocation(line: 552, column: 7, scope: !147)
!742 = !DILocation(line: 582, column: 4, scope: !743)
!743 = distinct !DILexicalBlock(scope: !737, file: !1, line: 581, column: 29)
!744 = !DILocation(line: 583, column: 4, scope: !743)
!745 = !DILocation(line: 584, column: 4, scope: !743)
!746 = !DILocation(line: 585, column: 1, scope: !743)
!747 = !DILocation(line: 586, column: 13, scope: !147)
!748 = !DILocation(line: 484, column: 16, scope: !143)
!749 = !DILocation(line: 485, column: 16, scope: !143)
!750 = !DILocation(line: 492, column: 10, scope: !751)
!751 = distinct !DILexicalBlock(scope: !143, file: !1, line: 492, column: 6)
!752 = !DILocation(line: 492, column: 6, scope: !143)
!753 = !DILocation(line: 493, column: 12, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !1, line: 492, column: 20)
!755 = !DILocation(line: 493, column: 4, scope: !754)
!756 = !DILocation(line: 495, column: 4, scope: !754)
!757 = !DILocation(line: 497, column: 9, scope: !758)
!758 = distinct !DILexicalBlock(scope: !143, file: !1, line: 497, column: 6)
!759 = !DILocation(line: 497, column: 6, scope: !143)
!760 = !DILocation(line: 498, column: 12, scope: !761)
!761 = distinct !DILexicalBlock(scope: !758, file: !1, line: 497, column: 19)
!762 = !DILocation(line: 498, column: 4, scope: !761)
!763 = !DILocation(line: 500, column: 4, scope: !761)
!764 = !DILocation(line: 502, column: 1, scope: !143)
!765 = !DILocation(line: 503, column: 15, scope: !143)
!766 = !DILocation(line: 503, column: 1, scope: !143)
!767 = !DILocation(line: 505, column: 4, scope: !768)
!768 = distinct !DILexicalBlock(scope: !143, file: !1, line: 503, column: 22)
!769 = !DILocation(line: 506, column: 4, scope: !768)
!770 = !DILocation(line: 508, column: 4, scope: !768)
!771 = !DILocation(line: 509, column: 4, scope: !768)
!772 = !DILocation(line: 511, column: 4, scope: !768)
!773 = !DILocation(line: 512, column: 4, scope: !768)
!774 = !DILocation(line: 516, column: 14, scope: !143)
!775 = !DILocation(line: 516, column: 26, scope: !143)
!776 = !DILocation(line: 517, column: 14, scope: !143)
!777 = !DILocation(line: 517, column: 25, scope: !143)
!778 = !DILocation(line: 517, column: 36, scope: !143)
!779 = !DILocation(line: 517, column: 47, scope: !143)
!780 = !DILocation(line: 514, column: 1, scope: !143)
!781 = !DILocation(line: 519, column: 14, scope: !143)
!782 = !DILocation(line: 519, column: 27, scope: !143)
!783 = !DILocation(line: 519, column: 40, scope: !143)
!784 = !DILocation(line: 518, column: 1, scope: !143)
!785 = !DILocation(line: 520, column: 45, scope: !143)
!786 = !DILocation(line: 520, column: 28, scope: !143)
!787 = !DILocation(line: 520, column: 1, scope: !143)
!788 = !DILocation(line: 527, column: 13, scope: !143)
!789 = !DILocation(line: 527, column: 30, scope: !143)
!790 = !DILocation(line: 527, column: 20, scope: !143)
!791 = !DILocation(line: 528, column: 13, scope: !143)
!792 = !DILocation(line: 528, column: 30, scope: !143)
!793 = !DILocation(line: 528, column: 20, scope: !143)
!794 = !DILocation(line: 529, column: 13, scope: !143)
!795 = !DILocation(line: 529, column: 23, scope: !143)
!796 = !DILocation(line: 529, column: 21, scope: !143)
!797 = !DILocation(line: 521, column: 1, scope: !143)
!798 = !DILocation(line: 531, column: 1, scope: !143)
!799 = !DILocation(line: 531, column: 13, scope: !143)
!800 = !DILocation(line: 604, column: 16, scope: !168)
!801 = !DILocation(line: 605, column: 16, scope: !168)
!802 = !DILocation(line: 606, column: 16, scope: !168)
!803 = !DILocation(line: 616, column: 10, scope: !804)
!804 = distinct !DILexicalBlock(scope: !168, file: !1, line: 616, column: 6)
!805 = !DILocation(line: 616, column: 6, scope: !168)
!806 = !DILocation(line: 617, column: 12, scope: !807)
!807 = distinct !DILexicalBlock(scope: !804, file: !1, line: 616, column: 20)
!808 = !DILocation(line: 617, column: 4, scope: !807)
!809 = !DILocation(line: 619, column: 4, scope: !807)
!810 = !DILocation(line: 621, column: 14, scope: !811)
!811 = distinct !DILexicalBlock(scope: !168, file: !1, line: 621, column: 6)
!812 = !DILocation(line: 621, column: 6, scope: !168)
!813 = !DILocation(line: 622, column: 12, scope: !814)
!814 = distinct !DILexicalBlock(scope: !811, file: !1, line: 621, column: 24)
!815 = !DILocation(line: 622, column: 4, scope: !814)
!816 = !DILocation(line: 624, column: 4, scope: !814)
!817 = !DILocation(line: 626, column: 9, scope: !818)
!818 = distinct !DILexicalBlock(scope: !168, file: !1, line: 626, column: 6)
!819 = !DILocation(line: 626, column: 6, scope: !168)
!820 = !DILocation(line: 627, column: 12, scope: !821)
!821 = distinct !DILexicalBlock(scope: !818, file: !1, line: 626, column: 19)
!822 = !DILocation(line: 627, column: 4, scope: !821)
!823 = !DILocation(line: 629, column: 4, scope: !821)
!824 = !DILocation(line: 609, column: 40, scope: !168)
!825 = !DILocation(line: 610, column: 20, scope: !168)
!826 = !DILocation(line: 631, column: 1, scope: !168)
!827 = !DILocation(line: 609, column: 34, scope: !168)
!828 = !DILocation(line: 610, column: 11, scope: !168)
!829 = !DILocation(line: 632, column: 1, scope: !168)
!830 = !DILocation(line: 633, column: 1, scope: !168)
!831 = !DILocation(line: 634, column: 8, scope: !168)
!832 = !DILocation(line: 609, column: 10, scope: !168)
!833 = !DILocation(line: 635, column: 8, scope: !168)
!834 = !DILocation(line: 609, column: 16, scope: !168)
!835 = !DILocation(line: 636, column: 11, scope: !168)
!836 = !DILocation(line: 608, column: 11, scope: !168)
!837 = !DILocation(line: 637, column: 6, scope: !838)
!838 = distinct !DILexicalBlock(scope: !168, file: !1, line: 637, column: 6)
!839 = !DILocation(line: 637, column: 6, scope: !168)
!840 = !DILocation(line: 646, column: 28, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !1, line: 646, column: 4)
!842 = distinct !DILexicalBlock(scope: !843, file: !1, line: 646, column: 4)
!843 = distinct !DILexicalBlock(scope: !844, file: !1, line: 645, column: 40)
!844 = distinct !DILexicalBlock(scope: !838, file: !1, line: 645, column: 13)
!845 = !DILocation(line: 646, column: 26, scope: !841)
!846 = !DILocation(line: 646, column: 4, scope: !842)
!847 = !DILocation(line: 647, column: 31, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !1, line: 647, column: 7)
!849 = distinct !DILexicalBlock(scope: !850, file: !1, line: 647, column: 7)
!850 = distinct !DILexicalBlock(scope: !841, file: !1, line: 646, column: 44)
!851 = !DILocation(line: 638, column: 28, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !1, line: 638, column: 4)
!853 = distinct !DILexicalBlock(scope: !854, file: !1, line: 638, column: 4)
!854 = distinct !DILexicalBlock(scope: !838, file: !1, line: 637, column: 30)
!855 = !DILocation(line: 638, column: 26, scope: !852)
!856 = !DILocation(line: 638, column: 4, scope: !853)
!857 = !DILocation(line: 639, column: 31, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !1, line: 639, column: 7)
!859 = distinct !DILexicalBlock(scope: !860, file: !1, line: 639, column: 7)
!860 = distinct !DILexicalBlock(scope: !852, file: !1, line: 638, column: 44)
!861 = !DILocation(line: 639, column: 29, scope: !858)
!862 = !DILocation(line: 639, column: 7, scope: !859)
!863 = !DILocation(line: 642, column: 40, scope: !864)
!864 = distinct !DILexicalBlock(scope: !858, file: !1, line: 639, column: 47)
!865 = !DILocation(line: 641, column: 27, scope: !864)
!866 = !DILocation(line: 641, column: 39, scope: !864)
!867 = !DILocation(line: 641, column: 43, scope: !864)
!868 = !DILocation(line: 641, column: 55, scope: !864)
!869 = !DILocation(line: 642, column: 30, scope: !864)
!870 = !DILocation(line: 642, column: 35, scope: !864)
!871 = !DILocation(line: 642, column: 18, scope: !864)
!872 = !{!873, !873, i64 0}
!873 = !{!"double", !203, i64 0}
!874 = !DILocation(line: 640, column: 10, scope: !864)
!875 = !DILocation(line: 647, column: 29, scope: !848)
!876 = !DILocation(line: 647, column: 7, scope: !849)
!877 = !DILocation(line: 650, column: 43, scope: !878)
!878 = distinct !DILexicalBlock(scope: !848, file: !1, line: 647, column: 47)
!879 = !DILocation(line: 649, column: 27, scope: !878)
!880 = !DILocation(line: 649, column: 39, scope: !878)
!881 = !DILocation(line: 649, column: 43, scope: !878)
!882 = !DILocation(line: 649, column: 55, scope: !878)
!883 = !DILocation(line: 650, column: 33, scope: !878)
!884 = !DILocation(line: 650, column: 38, scope: !878)
!885 = !DILocation(line: 650, column: 27, scope: !878)
!886 = !DILocation(line: 650, column: 18, scope: !878)
!887 = !DILocation(line: 651, column: 49, scope: !878)
!888 = !DILocation(line: 651, column: 18, scope: !878)
!889 = !DILocation(line: 648, column: 10, scope: !878)
!890 = !DILocation(line: 655, column: 13, scope: !168)
