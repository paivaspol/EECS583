; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [45 x i8] c"\0A error in A2_readFromFile(%p,%s)\0A bad input\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [55 x i8] c"\0A error in A2_readFromFile(%s)\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [97 x i8] c"\0A error in A2_readFromFile(%s)\0A bad A2 file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [54 x i8] c"\0A error in A2_readFromFormattedFile(%p,%p)\0A bad input\00", align 1
@.str6 = private unnamed_addr constant [60 x i8] c"\0A error in A2_readFromFormattedFile()\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [58 x i8] c"\0A error in A2_readFromFormattedFile\0A %d items of %d read\0A\00", align 1
@.str8 = private unnamed_addr constant [57 x i8] c"\0A fatal error in A2_readFromBinaryFile(%p,%p)\0A bad input\00", align 1
@.str9 = private unnamed_addr constant [55 x i8] c"\0A error in A2_readFromBinaryFile\0A %d items of %d read\0A\00", align 1
@__stdoutp = external global %struct.__sFILE*
@.str10 = private unnamed_addr constant [31 x i8] c"\0A itemp = {%d, %d, %d, %d, %d}\00", align 1
@.str11 = private unnamed_addr constant [50 x i8] c"\0A fatal error in A2_writeToFile(%p,%s)\0A bad input\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str13 = private unnamed_addr constant [52 x i8] c"\0A error in A2_writeToFile()\0A unable to open file %s\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str16 = private unnamed_addr constant [50 x i8] c"\0A error in A2_writeToFile\0A unable to open file %s\00", align 1
@.str17 = private unnamed_addr constant [17 x i8] c"\0A %d %d %d %d %d\00", align 1
@.str18 = private unnamed_addr constant [56 x i8] c"\0A fatal error in A2_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"%19d\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"\0A%4d\00", align 1
@.str22 = private unnamed_addr constant [8 x i8] c"%19.11e\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"%36d\00", align 1
@.str24 = private unnamed_addr constant [19 x i8] c" (%16.9e,%16.9e*i)\00", align 1
@.str25 = private unnamed_addr constant [50 x i8] c"\0A fatal error in A2_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str26 = private unnamed_addr constant [32 x i8] c"\0A A2 : double 2D array object :\00", align 1
@.str27 = private unnamed_addr constant [40 x i8] c"\0A A2 : double complex 2D array object :\00", align 1
@.str28 = private unnamed_addr constant [126 x i8] c"\0A %d x %d matrix, inc1 = %d, inc2 = %d,\0A nowned = %d, %d entries allocated, occupies %d bytes\0A entries = %p, maxabs = %20.12e\00", align 1
@.str29 = private unnamed_addr constant [57 x i8] c"\0A fatal error in A2_writeForMatlab(%p,%p,%p)\0A bad input\0A\00", align 1
@.str30 = private unnamed_addr constant [24 x i8] c"\0A %s(%d,%d) = %24.16e ;\00", align 1
@.str31 = private unnamed_addr constant [36 x i8] c"\0A %s(%d,%d) = %24.16e + %24.16e*i ;\00", align 1
@.str32 = private unnamed_addr constant [5 x i8] c".a2b\00", align 1
@.str33 = private unnamed_addr constant [5 x i8] c".a2f\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @A2_readFromFile(%struct._A2* %mtx, i8* %fn) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !27, metadata !177), !dbg !178
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !28, metadata !177), !dbg !179
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !91, metadata !177), !dbg !180
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !181
  %2 = icmp eq i8* %fn, null, !dbg !183
  %or.cond = or i1 %1, %2, !dbg !184
  br i1 %or.cond, label %3, label %6, !dbg !184

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !185, !tbaa !187
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._A2* %mtx, i8* %fn) #7, !dbg !191
  br label %43, !dbg !192

; <label>:6                                       ; preds = %0
  %7 = tail call i64 @strlen(i8* %fn) #7, !dbg !193
  %8 = trunc i64 %7 to i32, !dbg !193
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !90, metadata !177), !dbg !194
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !92, metadata !177), !dbg !195
  %9 = icmp sgt i32 %8, 4, !dbg !196
  br i1 %9, label %10, label %40, !dbg !198

; <label>:10                                      ; preds = %6
  %11 = shl i64 %7, 32, !dbg !199
  %sext = add i64 %11, -17179869184, !dbg !199
  %12 = ashr exact i64 %sext, 32, !dbg !199
  %13 = getelementptr inbounds i8* %fn, i64 %12, !dbg !199
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8]* @.str32, i64 0, i64 0)) #7, !dbg !202
  %15 = icmp eq i32 %14, 0, !dbg !203
  br i1 %15, label %16, label %25, !dbg !204

; <label>:16                                      ; preds = %10
  %17 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !205
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %17, i64 0, metadata !29, metadata !177), !dbg !208
  %18 = icmp eq %struct.__sFILE* %17, null, !dbg !209
  br i1 %18, label %19, label %22, !dbg !210

; <label>:19                                      ; preds = %16
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !211, !tbaa !187
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i8* %fn, i8* %fn) #7, !dbg !213
  br label %43, !dbg !214

; <label>:22                                      ; preds = %16
  %23 = tail call i32 @A2_readFromBinaryFile(%struct._A2* %mtx, %struct.__sFILE* %17) #8, !dbg !215
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !91, metadata !177), !dbg !180
  %24 = tail call i32 @fclose(%struct.__sFILE* %17) #7, !dbg !217
  br label %43

; <label>:25                                      ; preds = %10
  %26 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0)) #7, !dbg !218
  %27 = icmp eq i32 %26, 0, !dbg !220
  br i1 %27, label %28, label %37, !dbg !221

; <label>:28                                      ; preds = %25
  %29 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !222
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %29, i64 0, metadata !29, metadata !177), !dbg !208
  %30 = icmp eq %struct.__sFILE* %29, null, !dbg !225
  br i1 %30, label %31, label %34, !dbg !226

; <label>:31                                      ; preds = %28
  %32 = load %struct.__sFILE** @__stderrp, align 8, !dbg !227, !tbaa !187
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i8* %fn, i8* %fn) #7, !dbg !229
  br label %43, !dbg !230

; <label>:34                                      ; preds = %28
  %35 = tail call i32 @A2_readFromFormattedFile(%struct._A2* %mtx, %struct.__sFILE* %29) #8, !dbg !231
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !91, metadata !177), !dbg !180
  %36 = tail call i32 @fclose(%struct.__sFILE* %29) #7, !dbg !233
  br label %43

; <label>:37                                      ; preds = %25
  %38 = load %struct.__sFILE** @__stderrp, align 8, !dbg !234, !tbaa !187
  %39 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %38, i8* getelementptr inbounds ([97 x i8]* @.str4, i64 0, i64 0), i8* %fn, i8* %fn, i8* getelementptr inbounds ([5 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0)) #7, !dbg !236
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !91, metadata !177), !dbg !180
  br label %43

; <label>:40                                      ; preds = %6
  %41 = load %struct.__sFILE** @__stderrp, align 8, !dbg !237, !tbaa !187
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([97 x i8]* @.str4, i64 0, i64 0), i8* %fn, i8* %fn, i8* getelementptr inbounds ([5 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0)) #7, !dbg !239
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !91, metadata !177), !dbg !180
  br label %43

; <label>:43                                      ; preds = %40, %37, %34, %31, %19, %22, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %19 ], [ %23, %22 ], [ 0, %31 ], [ %35, %34 ], [ 0, %37 ], [ 0, %40 ]
  ret i32 %.0, !dbg !240
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
define i32 @A2_readFromBinaryFile(%struct._A2* %mtx, %struct.__sFILE* %fp) #0 {
  %itemp = alloca [5 x i32], align 16
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !107, metadata !177), !dbg !241
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !108, metadata !177), !dbg !242
  tail call void @llvm.dbg.declare(metadata [5 x i32]* %itemp, metadata !111, metadata !177), !dbg !243
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !244
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !246
  %or.cond = or i1 %1, %2, !dbg !247
  br i1 %or.cond, label %3, label %6, !dbg !247

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !248, !tbaa !187
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([57 x i8]* @.str8, i64 0, i64 0), %struct._A2* %mtx, %struct.__sFILE* %fp) #7, !dbg !250
  br label %73, !dbg !251

; <label>:6                                       ; preds = %0
  tail call void @A2_clearData(%struct._A2* %mtx) #7, !dbg !252
  %7 = bitcast [5 x i32]* %itemp to i8*, !dbg !253
  %8 = call i64 @fread(i8* %7, i64 4, i64 5, %struct.__sFILE* %fp) #7, !dbg !255
  %9 = trunc i64 %8 to i32, !dbg !255
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !109, metadata !177), !dbg !256
  %10 = icmp eq i32 %9, 5, !dbg !257
  br i1 %10, label %14, label %11, !dbg !258

; <label>:11                                      ; preds = %6
  %12 = load %struct.__sFILE** @__stderrp, align 8, !dbg !259, !tbaa !187
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i32 %9, i32 5) #7, !dbg !261
  br label %73, !dbg !262

; <label>:14                                      ; preds = %6
  %15 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !263, !tbaa !187
  %16 = bitcast [5 x i32]* %itemp to i64*, !dbg !264
  %17 = load i64* %16, align 16, !dbg !264
  %18 = trunc i64 %17 to i32, !dbg !264
  %19 = lshr i64 %17, 32
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 2, !dbg !265
  %22 = bitcast i32* %21 to i64*, !dbg !265
  %23 = load i64* %22, align 8, !dbg !265
  %24 = trunc i64 %23 to i32, !dbg !265
  %25 = lshr i64 %23, 32
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 4, !dbg !266
  %28 = load i32* %27, align 16, !dbg !266, !tbaa !267
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([31 x i8]* @.str10, i64 0, i64 0), i32 %18, i32 %20, i32 %24, i32 %26, i32 %28) #7, !dbg !269
  %30 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !270, !tbaa !187
  %31 = tail call i32 @fflush(%struct.__sFILE* %30) #7, !dbg !271
  tail call void @A2_init(%struct._A2* %mtx, i32 %18, i32 %20, i32 %24, i32 %26, i32 %28, double* null) #7, !dbg !272
  %32 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !273
  %33 = load i32* %32, align 4, !dbg !273, !tbaa !275
  %34 = add nsw i32 %33, -1, !dbg !277
  %35 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !278
  %36 = load i32* %35, align 4, !dbg !278, !tbaa !279
  %37 = mul nsw i32 %34, %36, !dbg !280
  %38 = add nsw i32 %37, 1, !dbg !281
  %39 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !282
  %40 = load i32* %39, align 4, !dbg !282, !tbaa !283
  %41 = add nsw i32 %40, -1, !dbg !284
  %42 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !285
  %43 = load i32* %42, align 4, !dbg !285, !tbaa !286
  %44 = mul nsw i32 %41, %43, !dbg !287
  %45 = add nsw i32 %38, %44, !dbg !288
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !110, metadata !177), !dbg !289
  %46 = icmp sgt i32 %45, 0, !dbg !290
  br i1 %46, label %47, label %73, !dbg !291

; <label>:47                                      ; preds = %14
  %48 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !292
  %49 = load i32* %48, align 4, !dbg !292, !tbaa !295
  switch i32 %49, label %73 [
    i32 1, label %50
    i32 2, label %61
  ], !dbg !296

; <label>:50                                      ; preds = %47
  %51 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !297
  %52 = bitcast double** %51 to i8**, !dbg !297
  %53 = load i8** %52, align 8, !dbg !297, !tbaa !300
  %54 = sext i32 %45 to i64, !dbg !301
  %55 = tail call i64 @fread(i8* %53, i64 8, i64 %54, %struct.__sFILE* %fp) #7, !dbg !302
  %56 = trunc i64 %55 to i32, !dbg !302
  tail call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !109, metadata !177), !dbg !256
  %57 = icmp eq i32 %56, %45, !dbg !303
  br i1 %57, label %73, label %58, !dbg !304

; <label>:58                                      ; preds = %50
  %59 = load %struct.__sFILE** @__stderrp, align 8, !dbg !305, !tbaa !187
  %60 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %59, i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i32 %56, i32 %45) #7, !dbg !307
  br label %73, !dbg !308

; <label>:61                                      ; preds = %47
  %62 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !309
  %63 = bitcast double** %62 to i8**, !dbg !309
  %64 = load i8** %63, align 8, !dbg !309, !tbaa !300
  %65 = shl nsw i32 %45, 1, !dbg !313
  %66 = sext i32 %65 to i64, !dbg !314
  %67 = tail call i64 @fread(i8* %64, i64 8, i64 %66, %struct.__sFILE* %fp) #7, !dbg !315
  %68 = trunc i64 %67 to i32, !dbg !315
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !109, metadata !177), !dbg !256
  %69 = icmp eq i32 %68, %65, !dbg !316
  br i1 %69, label %73, label %70, !dbg !317

; <label>:70                                      ; preds = %61
  %71 = load %struct.__sFILE** @__stderrp, align 8, !dbg !318, !tbaa !187
  %72 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %71, i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i32 %68, i32 %65) #7, !dbg !320
  br label %73, !dbg !321

; <label>:73                                      ; preds = %14, %61, %50, %47, %70, %58, %11, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %11 ], [ 0, %58 ], [ 0, %70 ], [ 1, %47 ], [ 1, %50 ], [ 1, %61 ], [ 1, %14 ]
  ret i32 %.0, !dbg !322
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @A2_readFromFormattedFile(%struct._A2* %mtx, %struct.__sFILE* %fp) #0 {
  %itemp = alloca [5 x i32], align 16
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !97, metadata !177), !dbg !323
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !98, metadata !177), !dbg !324
  tail call void @llvm.dbg.declare(metadata [5 x i32]* %itemp, metadata !101, metadata !177), !dbg !325
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !326
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !328
  %or.cond = or i1 %1, %2, !dbg !329
  br i1 %or.cond, label %3, label %6, !dbg !329

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !330, !tbaa !187
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([54 x i8]* @.str5, i64 0, i64 0), %struct._A2* %mtx, %struct.__sFILE* %fp) #7, !dbg !332
  br label %62, !dbg !333

; <label>:6                                       ; preds = %0
  tail call void @A2_clearData(%struct._A2* %mtx) #7, !dbg !334
  %7 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 0, !dbg !335
  %8 = call i32 @IVfscanf(%struct.__sFILE* %fp, i32 5, i32* %7) #7, !dbg !337
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !99, metadata !177), !dbg !338
  %9 = icmp eq i32 %8, 5, !dbg !339
  br i1 %9, label %13, label %10, !dbg !340

; <label>:10                                      ; preds = %6
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !341, !tbaa !187
  %12 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([60 x i8]* @.str6, i64 0, i64 0), i32 %8, i32 5) #7, !dbg !343
  br label %62, !dbg !344

; <label>:13                                      ; preds = %6
  %14 = bitcast [5 x i32]* %itemp to i64*, !dbg !345
  %15 = load i64* %14, align 16, !dbg !345
  %16 = trunc i64 %15 to i32, !dbg !345
  %17 = lshr i64 %15, 32
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 2, !dbg !346
  %20 = bitcast i32* %19 to i64*, !dbg !346
  %21 = load i64* %20, align 8, !dbg !346
  %22 = trunc i64 %21 to i32, !dbg !346
  %23 = lshr i64 %21, 32
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 4, !dbg !347
  %26 = load i32* %25, align 16, !dbg !347, !tbaa !267
  call void @A2_init(%struct._A2* %mtx, i32 %16, i32 %18, i32 %22, i32 %24, i32 %26, double* null) #7, !dbg !348
  %27 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !349
  %28 = load i32* %27, align 4, !dbg !349, !tbaa !275
  %29 = add nsw i32 %28, -1, !dbg !351
  %30 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !352
  %31 = load i32* %30, align 4, !dbg !352, !tbaa !279
  %32 = mul nsw i32 %29, %31, !dbg !353
  %33 = add nsw i32 %32, 1, !dbg !354
  %34 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !355
  %35 = load i32* %34, align 4, !dbg !355, !tbaa !283
  %36 = add nsw i32 %35, -1, !dbg !356
  %37 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !357
  %38 = load i32* %37, align 4, !dbg !357, !tbaa !286
  %39 = mul nsw i32 %36, %38, !dbg !358
  %40 = add nsw i32 %33, %39, !dbg !359
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !100, metadata !177), !dbg !360
  %41 = icmp sgt i32 %40, 0, !dbg !361
  br i1 %41, label %42, label %62, !dbg !362

; <label>:42                                      ; preds = %13
  %43 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !363
  %44 = load i32* %43, align 4, !dbg !363, !tbaa !295
  switch i32 %44, label %62 [
    i32 1, label %45
    i32 2, label %53
  ], !dbg !366

; <label>:45                                      ; preds = %42
  %46 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !367
  %47 = load double** %46, align 8, !dbg !367, !tbaa !300
  %48 = call i32 @DVfscanf(%struct.__sFILE* %fp, i32 %40, double* %47) #7, !dbg !370
  call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !99, metadata !177), !dbg !338
  %49 = icmp eq i32 %48, %40, !dbg !371
  br i1 %49, label %62, label %50, !dbg !372

; <label>:50                                      ; preds = %45
  %51 = load %struct.__sFILE** @__stderrp, align 8, !dbg !373, !tbaa !187
  %52 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %51, i8* getelementptr inbounds ([58 x i8]* @.str7, i64 0, i64 0), i32 %48, i32 %40) #7, !dbg !375
  br label %62, !dbg !376

; <label>:53                                      ; preds = %42
  %54 = shl nsw i32 %40, 1, !dbg !377
  %55 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !381
  %56 = load double** %55, align 8, !dbg !381, !tbaa !300
  %57 = call i32 @DVfscanf(%struct.__sFILE* %fp, i32 %54, double* %56) #7, !dbg !382
  call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !99, metadata !177), !dbg !338
  %58 = icmp eq i32 %57, %54, !dbg !383
  br i1 %58, label %62, label %59, !dbg !384

; <label>:59                                      ; preds = %53
  %60 = load %struct.__sFILE** @__stderrp, align 8, !dbg !385, !tbaa !187
  %61 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %60, i8* getelementptr inbounds ([58 x i8]* @.str7, i64 0, i64 0), i32 %57, i32 %54) #7, !dbg !387
  br label %62, !dbg !388

; <label>:62                                      ; preds = %13, %53, %45, %42, %59, %50, %10, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %10 ], [ 0, %50 ], [ 0, %59 ], [ 1, %42 ], [ 1, %45 ], [ 1, %53 ], [ 1, %13 ]
  ret i32 %.0, !dbg !389
}

; Function Attrs: optsize
declare void @A2_clearData(%struct._A2*) #4

; Function Attrs: optsize
declare i32 @IVfscanf(%struct.__sFILE*, i32, i32*) #4

; Function Attrs: optsize
declare void @A2_init(%struct._A2*, i32, i32, i32, i32, i32, double*) #4

; Function Attrs: optsize
declare i32 @DVfscanf(%struct.__sFILE*, i32, double*) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_writeToFile(%struct._A2* %mtx, i8* %fn) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !116, metadata !177), !dbg !390
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !117, metadata !177), !dbg !391
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !392
  %2 = icmp eq i8* %fn, null, !dbg !394
  %or.cond = or i1 %1, %2, !dbg !395
  br i1 %or.cond, label %3, label %6, !dbg !395

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !396, !tbaa !187
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([50 x i8]* @.str11, i64 0, i64 0), %struct._A2* %mtx, i8* %fn) #7, !dbg !398
  br label %6, !dbg !399

; <label>:6                                       ; preds = %0, %3
  %7 = tail call i64 @strlen(i8* %fn) #7, !dbg !400
  %8 = trunc i64 %7 to i32, !dbg !400
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !119, metadata !177), !dbg !401
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !120, metadata !177), !dbg !402
  %9 = icmp sgt i32 %8, 4, !dbg !403
  br i1 %9, label %10, label %43, !dbg !405

; <label>:10                                      ; preds = %6
  %11 = shl i64 %7, 32, !dbg !406
  %sext = add i64 %11, -17179869184, !dbg !406
  %12 = ashr exact i64 %sext, 32, !dbg !406
  %13 = getelementptr inbounds i8* %fn, i64 %12, !dbg !406
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8]* @.str32, i64 0, i64 0)) #7, !dbg !409
  %15 = icmp eq i32 %14, 0, !dbg !410
  br i1 %15, label %16, label %24, !dbg !411

; <label>:16                                      ; preds = %10
  %17 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0)) #7, !dbg !412
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %17, i64 0, metadata !118, metadata !177), !dbg !415
  %18 = icmp eq %struct.__sFILE* %17, null, !dbg !416
  br i1 %18, label %19, label %22, !dbg !417

; <label>:19                                      ; preds = %16
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !418, !tbaa !187
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), i8* %fn) #7, !dbg !420
  br label %51, !dbg !421

; <label>:22                                      ; preds = %16
  tail call void @A2_writeToBinaryFile(%struct._A2* %mtx, %struct.__sFILE* %17) #8, !dbg !422
  %23 = tail call i32 @fclose(%struct.__sFILE* %17) #7, !dbg !424
  br label %51

; <label>:24                                      ; preds = %10
  %25 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0)) #7, !dbg !425
  %26 = icmp eq i32 %25, 0, !dbg !427
  br i1 %26, label %27, label %35, !dbg !428

; <label>:27                                      ; preds = %24
  %28 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !429
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %28, i64 0, metadata !118, metadata !177), !dbg !415
  %29 = icmp eq %struct.__sFILE* %28, null, !dbg !432
  br i1 %29, label %30, label %33, !dbg !433

; <label>:30                                      ; preds = %27
  %31 = load %struct.__sFILE** @__stderrp, align 8, !dbg !434, !tbaa !187
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %31, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), i8* %fn) #7, !dbg !436
  br label %51, !dbg !437

; <label>:33                                      ; preds = %27
  tail call void @A2_writeToFormattedFile(%struct._A2* %mtx, %struct.__sFILE* %28) #8, !dbg !438
  %34 = tail call i32 @fclose(%struct.__sFILE* %28) #7, !dbg !440
  br label %51

; <label>:35                                      ; preds = %24
  %36 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !441
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %36, i64 0, metadata !118, metadata !177), !dbg !415
  %37 = icmp eq %struct.__sFILE* %36, null, !dbg !444
  br i1 %37, label %38, label %41, !dbg !445

; <label>:38                                      ; preds = %35
  %39 = load %struct.__sFILE** @__stderrp, align 8, !dbg !446, !tbaa !187
  %40 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %39, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), i8* %fn) #7, !dbg !448
  br label %51, !dbg !449

; <label>:41                                      ; preds = %35
  tail call void @A2_writeForHumanEye(%struct._A2* %mtx, %struct.__sFILE* %36) #8, !dbg !450
  %42 = tail call i32 @fclose(%struct.__sFILE* %36) #7, !dbg !452
  br label %51

; <label>:43                                      ; preds = %6
  %44 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !453
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %44, i64 0, metadata !118, metadata !177), !dbg !415
  %45 = icmp eq %struct.__sFILE* %44, null, !dbg !456
  br i1 %45, label %46, label %49, !dbg !457

; <label>:46                                      ; preds = %43
  %47 = load %struct.__sFILE** @__stderrp, align 8, !dbg !458, !tbaa !187
  %48 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %47, i8* getelementptr inbounds ([50 x i8]* @.str16, i64 0, i64 0), i8* %fn) #7, !dbg !460
  br label %51, !dbg !461

; <label>:49                                      ; preds = %43
  tail call void @A2_writeForHumanEye(%struct._A2* %mtx, %struct.__sFILE* %44) #8, !dbg !462
  %50 = tail call i32 @fclose(%struct.__sFILE* %44) #7, !dbg !464
  br label %51

; <label>:51                                      ; preds = %46, %49, %22, %19, %38, %41, %30, %33
  ret void, !dbg !465
}

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_writeToBinaryFile(%struct._A2* %mtx, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !130, metadata !177), !dbg !466
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !131, metadata !177), !dbg !467
  %1 = icmp eq %struct.__sFILE* %fp, null, !dbg !468
  br i1 %1, label %44, label %2, !dbg !470

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !471
  %4 = bitcast %struct._A2* %mtx to i8*, !dbg !472
  %5 = tail call i64 @"\01_fwrite"(i8* %4, i64 4, i64 1, %struct.__sFILE* %fp) #7, !dbg !473
  %6 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !474
  %7 = bitcast i32* %6 to i8*, !dbg !475
  %8 = tail call i64 @"\01_fwrite"(i8* %7, i64 4, i64 1, %struct.__sFILE* %fp) #7, !dbg !476
  %9 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !477
  %10 = bitcast i32* %9 to i8*, !dbg !478
  %11 = tail call i64 @"\01_fwrite"(i8* %10, i64 4, i64 1, %struct.__sFILE* %fp) #7, !dbg !479
  %12 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !480
  %13 = bitcast i32* %12 to i8*, !dbg !481
  %14 = tail call i64 @"\01_fwrite"(i8* %13, i64 4, i64 1, %struct.__sFILE* %fp) #7, !dbg !482
  %15 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !483
  %16 = bitcast i32* %15 to i8*, !dbg !484
  %17 = tail call i64 @"\01_fwrite"(i8* %16, i64 4, i64 1, %struct.__sFILE* %fp) #7, !dbg !485
  %18 = load i32* %6, align 4, !dbg !486, !tbaa !275
  %19 = add nsw i32 %18, -1, !dbg !488
  %20 = load i32* %12, align 4, !dbg !489, !tbaa !279
  %21 = mul nsw i32 %19, %20, !dbg !490
  %22 = add nsw i32 %21, 1, !dbg !491
  %23 = load i32* %9, align 4, !dbg !492, !tbaa !283
  %24 = add nsw i32 %23, -1, !dbg !493
  %25 = load i32* %15, align 4, !dbg !494, !tbaa !286
  %26 = mul nsw i32 %24, %25, !dbg !495
  %27 = add nsw i32 %22, %26, !dbg !496
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !132, metadata !177), !dbg !497
  %28 = icmp sgt i32 %27, 0, !dbg !498
  br i1 %28, label %29, label %44, !dbg !499

; <label>:29                                      ; preds = %2
  %30 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !500
  %31 = load double** %30, align 8, !dbg !500, !tbaa !300
  %32 = icmp eq double* %31, null, !dbg !501
  br i1 %32, label %44, label %33, !dbg !502

; <label>:33                                      ; preds = %29
  %34 = load i32* %3, align 4, !dbg !503, !tbaa !295
  switch i32 %34, label %44 [
    i32 1, label %35
    i32 2, label %39
  ], !dbg !506

; <label>:35                                      ; preds = %33
  %36 = bitcast double** %30 to i8*, !dbg !507
  %37 = sext i32 %27 to i64, !dbg !509
  %38 = tail call i64 @"\01_fwrite"(i8* %36, i64 8, i64 %37, %struct.__sFILE* %fp) #7, !dbg !510
  br label %44, !dbg !511

; <label>:39                                      ; preds = %33
  %40 = bitcast double** %30 to i8*, !dbg !512
  %41 = shl nsw i32 %27, 1, !dbg !515
  %42 = sext i32 %41 to i64, !dbg !516
  %43 = tail call i64 @"\01_fwrite"(i8* %40, i64 8, i64 %42, %struct.__sFILE* %fp) #7, !dbg !517
  br label %44, !dbg !518

; <label>:44                                      ; preds = %33, %29, %2, %39, %35, %0
  ret void, !dbg !519
}

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_writeToFormattedFile(%struct._A2* readonly %mtx, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !125, metadata !177), !dbg !520
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !126, metadata !177), !dbg !521
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !522
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !524
  %or.cond = or i1 %1, %2, !dbg !525
  br i1 %or.cond, label %35, label %3, !dbg !525

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !526
  %5 = load i32* %4, align 4, !dbg !526, !tbaa !295
  %6 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !527
  %7 = load i32* %6, align 4, !dbg !527, !tbaa !275
  %8 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !528
  %9 = load i32* %8, align 4, !dbg !528, !tbaa !283
  %10 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !529
  %11 = load i32* %10, align 4, !dbg !529, !tbaa !279
  %12 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !530
  %13 = load i32* %12, align 4, !dbg !530, !tbaa !286
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), i32 %5, i32 %7, i32 %9, i32 %11, i32 %13) #7, !dbg !531
  %15 = load i32* %6, align 4, !dbg !532, !tbaa !275
  %16 = add nsw i32 %15, -1, !dbg !534
  %17 = load i32* %10, align 4, !dbg !535, !tbaa !279
  %18 = mul nsw i32 %16, %17, !dbg !536
  %19 = add nsw i32 %18, 1, !dbg !537
  %20 = load i32* %8, align 4, !dbg !538, !tbaa !283
  %21 = add nsw i32 %20, -1, !dbg !539
  %22 = load i32* %12, align 4, !dbg !540, !tbaa !286
  %23 = mul nsw i32 %21, %22, !dbg !541
  %24 = add nsw i32 %19, %23, !dbg !542
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !127, metadata !177), !dbg !543
  %25 = icmp sgt i32 %24, 0, !dbg !544
  br i1 %25, label %26, label %35, !dbg !545

; <label>:26                                      ; preds = %3
  %27 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !546
  %28 = load double** %27, align 8, !dbg !546, !tbaa !300
  %29 = icmp eq double* %28, null, !dbg !547
  br i1 %29, label %35, label %30, !dbg !548

; <label>:30                                      ; preds = %26
  %31 = load i32* %4, align 4, !dbg !549, !tbaa !295
  switch i32 %31, label %35 [
    i32 1, label %32
    i32 2, label %33
  ], !dbg !552

; <label>:32                                      ; preds = %30
  tail call void @DVfprintf(%struct.__sFILE* %fp, i32 %24, double* %28) #7, !dbg !553
  br label %35, !dbg !555

; <label>:33                                      ; preds = %30
  %34 = shl nsw i32 %24, 1, !dbg !556
  tail call void @DVfprintf(%struct.__sFILE* %fp, i32 %34, double* %28) #7, !dbg !559
  br label %35, !dbg !560

; <label>:35                                      ; preds = %30, %26, %3, %33, %32, %0
  ret void, !dbg !561
}

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_writeForHumanEye(%struct._A2* %mtx, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !135, metadata !177), !dbg !562
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !136, metadata !177), !dbg !563
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !564
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !566
  %or.cond = or i1 %1, %2, !dbg !567
  br i1 %or.cond, label %3, label %6, !dbg !567

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !568, !tbaa !187
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([56 x i8]* @.str18, i64 0, i64 0), %struct._A2* %mtx, %struct.__sFILE* %fp) #7, !dbg !570
  tail call void @exit(i32 -1) #9, !dbg !571
  unreachable, !dbg !571

; <label>:6                                       ; preds = %0
  tail call void @A2_writeStats(%struct._A2* %mtx, %struct.__sFILE* %fp) #8, !dbg !572
  %7 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !573
  %8 = load i32* %7, align 4, !dbg !573, !tbaa !295
  switch i32 %8, label %.loopexit [
    i32 1, label %.preheader3
    i32 2, label %.preheader5
  ], !dbg !575

.preheader5:                                      ; preds = %6
  %9 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !576
  %10 = load i32* %9, align 4, !dbg !576, !tbaa !283
  %11 = icmp sgt i32 %10, 0, !dbg !581
  br i1 %11, label %.lr.ph30, label %.loopexit, !dbg !582

.lr.ph30:                                         ; preds = %.preheader5
  %12 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !583
  %13 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !587
  %14 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !592
  %15 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !593
  br label %52, !dbg !582

.preheader3:                                      ; preds = %6
  %16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !594
  %17 = load i32* %16, align 4, !dbg !594, !tbaa !283
  %18 = icmp sgt i32 %17, 0, !dbg !598
  br i1 %18, label %.lr.ph16, label %.loopexit, !dbg !599

.lr.ph16:                                         ; preds = %.preheader3
  %19 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !600
  %20 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !604
  %21 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !609
  %22 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !610
  br label %23, !dbg !599

; <label>:23                                      ; preds = %.lr.ph16, %._crit_edge13
  %24 = phi i32 [ %17, %.lr.ph16 ], [ %50, %._crit_edge13 ]
  %jfirst.014 = phi i32 [ 0, %.lr.ph16 ], [ %49, %._crit_edge13 ]
  %25 = or i32 %jfirst.014, 3, !dbg !611
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !140, metadata !177), !dbg !612
  %26 = icmp slt i32 %25, %24, !dbg !613
  %27 = add nsw i32 %24, -1, !dbg !615
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !140, metadata !177), !dbg !612
  %. = select i1 %26, i32 %25, i32 %27, !dbg !617
  %28 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0), i64 5, i64 1, %struct.__sFILE* %fp), !dbg !618
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !138, metadata !177), !dbg !619
  %29 = icmp sgt i32 %jfirst.014, %., !dbg !620
  br i1 %29, label %.preheader, label %.lr.ph, !dbg !623

.preheader:                                       ; preds = %.lr.ph, %23
  %30 = load i32* %19, align 4, !dbg !600, !tbaa !275
  %31 = icmp sgt i32 %30, 0, !dbg !624
  br i1 %31, label %.lr.ph12, label %._crit_edge13, !dbg !625

.lr.ph:                                           ; preds = %23, %.lr.ph
  %j.07 = phi i32 [ %33, %.lr.ph ], [ %jfirst.014, %23 ]
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i32 %j.07) #7, !dbg !626
  %33 = add nuw nsw i32 %j.07, 1, !dbg !628
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !138, metadata !177), !dbg !619
  %exitcond = icmp eq i32 %j.07, %., !dbg !623
  br i1 %exitcond, label %.preheader, label %.lr.ph, !dbg !623

.lr.ph12:                                         ; preds = %.preheader, %._crit_edge
  %i.010 = phi i32 [ %46, %._crit_edge ], [ 0, %.preheader ]
  %34 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i32 %i.010) #7, !dbg !629
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !138, metadata !177), !dbg !619
  br i1 %29, label %._crit_edge, label %.lr.ph9, !dbg !630

.lr.ph9:                                          ; preds = %.lr.ph12, %.lr.ph9
  %j.18 = phi i32 [ %45, %.lr.ph9 ], [ %jfirst.014, %.lr.ph12 ]
  %35 = load i32* %20, align 4, !dbg !604, !tbaa !279
  %36 = mul nsw i32 %35, %i.010, !dbg !631
  %37 = load i32* %21, align 4, !dbg !609, !tbaa !286
  %38 = mul nsw i32 %37, %j.18, !dbg !632
  %39 = add nsw i32 %38, %36, !dbg !633
  %40 = sext i32 %39 to i64, !dbg !634
  %41 = load double** %22, align 8, !dbg !610, !tbaa !300
  %42 = getelementptr inbounds double* %41, i64 %40, !dbg !634
  %43 = load double* %42, align 8, !dbg !634, !tbaa !635
  %44 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), double %43) #7, !dbg !637
  %45 = add nuw nsw i32 %j.18, 1, !dbg !638
  tail call void @llvm.dbg.value(metadata i32 %45, i64 0, metadata !138, metadata !177), !dbg !619
  %exitcond31 = icmp eq i32 %j.18, %., !dbg !630
  br i1 %exitcond31, label %._crit_edge, label %.lr.ph9, !dbg !630

._crit_edge:                                      ; preds = %.lr.ph9, %.lr.ph12
  %46 = add nuw nsw i32 %i.010, 1, !dbg !639
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !137, metadata !177), !dbg !640
  %47 = load i32* %19, align 4, !dbg !600, !tbaa !275
  %48 = icmp slt i32 %46, %47, !dbg !624
  br i1 %48, label %.lr.ph12, label %._crit_edge13, !dbg !625

._crit_edge13:                                    ; preds = %._crit_edge, %.preheader
  %49 = add nsw i32 %jfirst.014, 4, !dbg !641
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !139, metadata !177), !dbg !642
  %50 = load i32* %16, align 4, !dbg !594, !tbaa !283
  %51 = icmp slt i32 %49, %50, !dbg !598
  br i1 %51, label %23, label %.loopexit, !dbg !599

; <label>:52                                      ; preds = %.lr.ph30, %._crit_edge27
  %53 = phi i32 [ %10, %.lr.ph30 ], [ %84, %._crit_edge27 ]
  %jfirst.128 = phi i32 [ 0, %.lr.ph30 ], [ %83, %._crit_edge27 ]
  %54 = or i32 %jfirst.128, 1, !dbg !643
  tail call void @llvm.dbg.value(metadata i32 %54, i64 0, metadata !140, metadata !177), !dbg !612
  %55 = icmp slt i32 %54, %53, !dbg !644
  %56 = add nsw i32 %53, -1, !dbg !646
  tail call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !140, metadata !177), !dbg !612
  %.2 = select i1 %55, i32 %54, i32 %56, !dbg !648
  %57 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0), i64 5, i64 1, %struct.__sFILE* %fp), !dbg !649
  tail call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !138, metadata !177), !dbg !619
  %58 = icmp sgt i32 %jfirst.128, %.2, !dbg !650
  br i1 %58, label %.preheader4, label %.lr.ph19, !dbg !653

.preheader4:                                      ; preds = %.lr.ph19, %52
  %59 = load i32* %12, align 4, !dbg !583, !tbaa !275
  %60 = icmp sgt i32 %59, 0, !dbg !654
  br i1 %60, label %.lr.ph26, label %._crit_edge27, !dbg !655

.lr.ph19:                                         ; preds = %52, %.lr.ph19
  %j.217 = phi i32 [ %62, %.lr.ph19 ], [ %jfirst.128, %52 ]
  %61 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i32 %j.217) #7, !dbg !656
  %62 = add nuw nsw i32 %j.217, 1, !dbg !658
  tail call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !138, metadata !177), !dbg !619
  %exitcond32 = icmp eq i32 %j.217, %.2, !dbg !653
  br i1 %exitcond32, label %.preheader4, label %.lr.ph19, !dbg !653

.lr.ph26:                                         ; preds = %.preheader4, %._crit_edge23
  %i.124 = phi i32 [ %80, %._crit_edge23 ], [ 0, %.preheader4 ]
  %63 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i32 %i.124) #7, !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !138, metadata !177), !dbg !619
  br i1 %58, label %._crit_edge23, label %.lr.ph22, !dbg !660

.lr.ph22:                                         ; preds = %.lr.ph26, %.lr.ph22
  %j.320 = phi i32 [ %79, %.lr.ph22 ], [ %jfirst.128, %.lr.ph26 ]
  %64 = load i32* %13, align 4, !dbg !587, !tbaa !279
  %65 = mul nsw i32 %64, %i.124, !dbg !661
  %66 = load i32* %14, align 4, !dbg !592, !tbaa !286
  %67 = mul nsw i32 %66, %j.320, !dbg !662
  %68 = add nsw i32 %67, %65, !dbg !663
  %69 = shl nsw i32 %68, 1, !dbg !664
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !141, metadata !177), !dbg !665
  %70 = sext i32 %69 to i64, !dbg !666
  %71 = load double** %15, align 8, !dbg !593, !tbaa !300
  %72 = getelementptr inbounds double* %71, i64 %70, !dbg !666
  %73 = load double* %72, align 8, !dbg !666, !tbaa !635
  %74 = or i32 %69, 1, !dbg !667
  %75 = sext i32 %74 to i64, !dbg !668
  %76 = getelementptr inbounds double* %71, i64 %75, !dbg !668
  %77 = load double* %76, align 8, !dbg !668, !tbaa !635
  %78 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str24, i64 0, i64 0), double %73, double %77) #7, !dbg !669
  %79 = add nuw nsw i32 %j.320, 1, !dbg !670
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !138, metadata !177), !dbg !619
  %exitcond33 = icmp eq i32 %j.320, %.2, !dbg !660
  br i1 %exitcond33, label %._crit_edge23, label %.lr.ph22, !dbg !660

._crit_edge23:                                    ; preds = %.lr.ph22, %.lr.ph26
  %80 = add nuw nsw i32 %i.124, 1, !dbg !671
  tail call void @llvm.dbg.value(metadata i32 %80, i64 0, metadata !137, metadata !177), !dbg !640
  %81 = load i32* %12, align 4, !dbg !583, !tbaa !275
  %82 = icmp slt i32 %80, %81, !dbg !654
  br i1 %82, label %.lr.ph26, label %._crit_edge27, !dbg !655

._crit_edge27:                                    ; preds = %._crit_edge23, %.preheader4
  %83 = add nsw i32 %jfirst.128, 2, !dbg !672
  tail call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !139, metadata !177), !dbg !642
  %84 = load i32* %9, align 4, !dbg !576, !tbaa !283
  %85 = icmp slt i32 %83, %84, !dbg !581
  br i1 %85, label %52, label %.loopexit, !dbg !582

.loopexit:                                        ; preds = %._crit_edge27, %._crit_edge13, %.preheader5, %.preheader3, %6
  ret void, !dbg !673
}

; Function Attrs: optsize
declare void @DVfprintf(%struct.__sFILE*, i32, double*) #4

; Function Attrs: optsize
declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #4

; Function Attrs: noreturn optsize
declare void @exit(i32) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_writeStats(%struct._A2* %mtx, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !144, metadata !177), !dbg !674
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !145, metadata !177), !dbg !675
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !676
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !678
  %or.cond = or i1 %1, %2, !dbg !679
  br i1 %or.cond, label %3, label %6, !dbg !679

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !680, !tbaa !187
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([50 x i8]* @.str25, i64 0, i64 0), %struct._A2* %mtx, %struct.__sFILE* %fp) #7, !dbg !682
  tail call void @exit(i32 -1) #9, !dbg !683
  unreachable, !dbg !683

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !684
  %8 = load i32* %7, align 4, !dbg !684, !tbaa !295
  switch i32 %8, label %13 [
    i32 1, label %9
    i32 2, label %11
  ], !dbg !686

; <label>:9                                       ; preds = %6
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str26, i64 0, i64 0), i64 31, i64 1, %struct.__sFILE* %fp), !dbg !687
  br label %13, !dbg !689

; <label>:11                                      ; preds = %6
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str27, i64 0, i64 0), i64 39, i64 1, %struct.__sFILE* %fp), !dbg !690
  br label %13, !dbg !693

; <label>:13                                      ; preds = %6, %11, %9
  %14 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !694
  %15 = load i32* %14, align 4, !dbg !694, !tbaa !275
  %16 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !695
  %17 = load i32* %16, align 4, !dbg !695, !tbaa !283
  %18 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !696
  %19 = load i32* %18, align 4, !dbg !696, !tbaa !279
  %20 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !697
  %21 = load i32* %20, align 4, !dbg !697, !tbaa !286
  %22 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5, !dbg !698
  %23 = load i32* %22, align 4, !dbg !698, !tbaa !699
  %24 = mul nsw i32 %17, %15, !dbg !700
  %25 = tail call i32 @A2_sizeOf(%struct._A2* %mtx) #7, !dbg !701
  %26 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !702
  %27 = load double** %26, align 8, !dbg !702, !tbaa !300
  %28 = tail call double @A2_maxabs(%struct._A2* %mtx) #7, !dbg !703
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([126 x i8]* @.str28, i64 0, i64 0), i32 %15, i32 %17, i32 %19, i32 %21, i32 %23, i32 %24, i32 %25, double* %27, double %28) #7, !dbg !704
  ret void, !dbg !705
}

; Function Attrs: optsize
declare i32 @A2_sizeOf(%struct._A2*) #4

; Function Attrs: optsize
declare double @A2_maxabs(%struct._A2*) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @A2_writeForMatlab(%struct._A2* %mtx, i8* %mtxname, %struct.__sFILE* %fp) #0 {
  %value = alloca double, align 8
  %imag = alloca double, align 8
  %real = alloca double, align 8
  tail call void @llvm.dbg.value(metadata %struct._A2* %mtx, i64 0, metadata !150, metadata !177), !dbg !706
  tail call void @llvm.dbg.value(metadata i8* %mtxname, i64 0, metadata !151, metadata !177), !dbg !707
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !152, metadata !177), !dbg !708
  %1 = icmp eq %struct._A2* %mtx, null, !dbg !709
  %2 = icmp eq i8* %mtxname, null, !dbg !711
  %or.cond = or i1 %1, %2, !dbg !712
  %3 = icmp eq %struct.__sFILE* %fp, null, !dbg !713
  %or.cond3 = or i1 %or.cond, %3, !dbg !712
  br i1 %or.cond3, label %4, label %7, !dbg !712

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !714, !tbaa !187
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([57 x i8]* @.str29, i64 0, i64 0), %struct._A2* %mtx, i8* %mtxname, %struct.__sFILE* %fp) #7, !dbg !716
  tail call void @exit(i32 -1) #9, !dbg !717
  unreachable, !dbg !717

; <label>:7                                       ; preds = %0
  %8 = tail call i32 @A2_nrow(%struct._A2* %mtx) #7, !dbg !718
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !156, metadata !177), !dbg !719
  %9 = tail call i32 @A2_ncol(%struct._A2* %mtx) #7, !dbg !720
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !155, metadata !177), !dbg !721
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !153, metadata !177), !dbg !722
  %10 = icmp sgt i32 %8, 0, !dbg !723
  br i1 %10, label %.preheader.lr.ph, label %._crit_edge6, !dbg !724

.preheader.lr.ph:                                 ; preds = %7
  %11 = icmp sgt i32 %9, 0, !dbg !725
  %12 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !726
  %13 = add i32 %9, -1, !dbg !724
  %14 = add i32 %8, -1, !dbg !724
  br label %.preheader, !dbg !724

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %irow.05 = phi i32 [ 0, %.preheader.lr.ph ], [ %15, %._crit_edge ]
  %15 = add nuw nsw i32 %irow.05, 1, !dbg !727
  br i1 %11, label %.lr.ph, label %._crit_edge, !dbg !728

.lr.ph:                                           ; preds = %.preheader, %26
  %jcol.04 = phi i32 [ %.pre-phi, %26 ], [ 0, %.preheader ]
  %16 = load i32* %12, align 4, !dbg !726, !tbaa !295
  switch i32 %16, label %._crit_edge8 [
    i32 1, label %17
    i32 2, label %21
  ], !dbg !729

._crit_edge8:                                     ; preds = %.lr.ph
  %.pre = add nuw nsw i32 %jcol.04, 1, !dbg !730
  br label %26, !dbg !729

; <label>:17                                      ; preds = %.lr.ph
  call void @llvm.dbg.value(metadata double* %value, i64 0, metadata !157, metadata !177), !dbg !731
  call void @A2_realEntry(%struct._A2* %mtx, i32 %irow.05, i32 %jcol.04, double* %value) #7, !dbg !732
  %18 = add nuw nsw i32 %jcol.04, 1, !dbg !733
  call void @llvm.dbg.value(metadata double* %value, i64 0, metadata !157, metadata !177), !dbg !731
  %19 = load double* %value, align 8, !dbg !734, !tbaa !635
  %20 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str30, i64 0, i64 0), i8* %mtxname, i32 %15, i32 %18, double %19) #7, !dbg !735
  br label %26, !dbg !736

; <label>:21                                      ; preds = %.lr.ph
  call void @llvm.dbg.value(metadata double* %imag, i64 0, metadata !166, metadata !177), !dbg !737
  call void @llvm.dbg.value(metadata double* %real, i64 0, metadata !169, metadata !177), !dbg !738
  call void @A2_complexEntry(%struct._A2* %mtx, i32 %irow.05, i32 %jcol.04, double* %real, double* %imag) #7, !dbg !739
  %22 = add nuw nsw i32 %jcol.04, 1, !dbg !740
  call void @llvm.dbg.value(metadata double* %real, i64 0, metadata !169, metadata !177), !dbg !738
  %23 = load double* %real, align 8, !dbg !741, !tbaa !635
  call void @llvm.dbg.value(metadata double* %imag, i64 0, metadata !166, metadata !177), !dbg !737
  %24 = load double* %imag, align 8, !dbg !742, !tbaa !635
  %25 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str31, i64 0, i64 0), i8* %mtxname, i32 %15, i32 %22, double %23, double %24) #7, !dbg !743
  br label %26, !dbg !744

; <label>:26                                      ; preds = %._crit_edge8, %17, %21
  %.pre-phi = phi i32 [ %.pre, %._crit_edge8 ], [ %18, %17 ], [ %22, %21 ], !dbg !730
  call void @llvm.dbg.value(metadata i32 %.pre-phi, i64 0, metadata !154, metadata !177), !dbg !745
  %exitcond = icmp eq i32 %jcol.04, %13, !dbg !728
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !728

._crit_edge:                                      ; preds = %26, %.preheader
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !153, metadata !177), !dbg !722
  %exitcond7 = icmp eq i32 %irow.05, %14, !dbg !724
  br i1 %exitcond7, label %._crit_edge6, label %.preheader, !dbg !724

._crit_edge6:                                     ; preds = %._crit_edge, %7
  ret void, !dbg !746
}

; Function Attrs: optsize
declare i32 @A2_nrow(%struct._A2*) #4

; Function Attrs: optsize
declare i32 @A2_ncol(%struct._A2*) #4

; Function Attrs: optsize
declare void @A2_realEntry(%struct._A2*, i32, i32, double*) #4

; Function Attrs: optsize
declare void @A2_complexEntry(%struct._A2*, i32, i32, double*, double*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!173, !174, !175}
!llvm.ident = !{!176}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !170, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !{!8, !93, !105, !112, !121, !128, !133, !142, !146}
!8 = !DISubprogram(name: "A2_readFromFile", scope: !1, file: !1, line: 23, type: !9, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._A2*, i8*)* @A2_readFromFile, variables: !26)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12, !5}
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "A2", file: !14, line: 49, baseType: !15)
!14 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/../A2.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_A2", file: !14, line: 41, size: 256, align: 64, elements: !16)
!16 = !{!17, !18, !19, !20, !21, !22, !23}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !15, file: !14, line: 42, baseType: !11, size: 32, align: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "n1", scope: !15, file: !14, line: 43, baseType: !11, size: 32, align: 32, offset: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "n2", scope: !15, file: !14, line: 44, baseType: !11, size: 32, align: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "inc1", scope: !15, file: !14, line: 45, baseType: !11, size: 32, align: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "inc2", scope: !15, file: !14, line: 46, baseType: !11, size: 32, align: 32, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nowned", scope: !15, file: !14, line: 47, baseType: !11, size: 32, align: 32, offset: 160)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !15, file: !14, line: 48, baseType: !24, size: 64, align: 64, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!26 = !{!27, !28, !29, !90, !91, !92}
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !8, file: !1, line: 24, type: !12)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !8, file: !1, line: 25, type: !5)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !8, file: !1, line: 27, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !32, line: 153, baseType: !33)
!32 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !32, line: 122, size: 1216, align: 64, elements: !34)
!34 = !{!35, !38, !39, !40, !42, !43, !48, !49, !50, !54, !58, !68, !74, !75, !78, !79, !83, !87, !88, !89}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !33, file: !32, line: 123, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !33, file: !32, line: 124, baseType: !11, size: 32, align: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !33, file: !32, line: 125, baseType: !11, size: 32, align: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !33, file: !32, line: 126, baseType: !41, size: 16, align: 16, offset: 128)
!41 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !33, file: !32, line: 127, baseType: !41, size: 16, align: 16, offset: 144)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !33, file: !32, line: 128, baseType: !44, size: 128, align: 64, offset: 192)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !32, line: 88, size: 128, align: 64, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !44, file: !32, line: 89, baseType: !36, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !44, file: !32, line: 90, baseType: !11, size: 32, align: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !33, file: !32, line: 129, baseType: !11, size: 32, align: 32, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !33, file: !32, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !33, file: !32, line: 133, baseType: !51, size: 64, align: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!11, !4}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !33, file: !32, line: 134, baseType: !55, size: 64, align: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!11, !4, !5, !11}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !33, file: !32, line: 135, baseType: !59, size: 64, align: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !4, !62, !11}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !32, line: 77, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !64, line: 71, baseType: !65)
!64 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !66, line: 46, baseType: !67)
!66 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!67 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !33, file: !32, line: 136, baseType: !69, size: 64, align: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!11, !4, !72, !11}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !33, file: !32, line: 139, baseType: !44, size: 128, align: 64, offset: 704)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !33, file: !32, line: 140, baseType: !76, size: 64, align: 64, offset: 832)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !32, line: 94, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !33, file: !32, line: 141, baseType: !11, size: 32, align: 32, offset: 896)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !33, file: !32, line: 144, baseType: !80, size: 24, align: 8, offset: 928)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 24, align: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 3)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !33, file: !32, line: 145, baseType: !84, size: 8, align: 8, offset: 952)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, align: 8, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 1)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !33, file: !32, line: 148, baseType: !44, size: 128, align: 64, offset: 960)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !33, file: !32, line: 151, baseType: !11, size: 32, align: 32, offset: 1088)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !33, file: !32, line: 152, baseType: !62, size: 64, align: 64, offset: 1152)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fnlength", scope: !8, file: !1, line: 28, type: !11)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !8, file: !1, line: 28, type: !11)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sulength", scope: !8, file: !1, line: 28, type: !11)
!93 = !DISubprogram(name: "A2_readFromFormattedFile", scope: !1, file: !1, line: 90, type: !94, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._A2*, %struct.__sFILE*)* @A2_readFromFormattedFile, variables: !96)
!94 = !DISubroutineType(types: !95)
!95 = !{!11, !12, !30}
!96 = !{!97, !98, !99, !100, !101}
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !93, file: !1, line: 91, type: !12)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !93, file: !1, line: 92, type: !30)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !93, file: !1, line: 94, type: !11)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !93, file: !1, line: 94, type: !11)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemp", scope: !93, file: !1, line: 95, type: !102)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, align: 32, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 5)
!105 = !DISubprogram(name: "A2_readFromBinaryFile", scope: !1, file: !1, line: 162, type: !94, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._A2*, %struct.__sFILE*)* @A2_readFromBinaryFile, variables: !106)
!106 = !{!107, !108, !109, !110, !111}
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !105, file: !1, line: 163, type: !12)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !105, file: !1, line: 164, type: !30)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !105, file: !1, line: 166, type: !11)
!110 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !105, file: !1, line: 166, type: !11)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemp", scope: !105, file: !1, line: 167, type: !102)
!112 = !DISubprogram(name: "A2_writeToFile", scope: !1, file: !1, line: 244, type: !113, isLocal: false, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*, i8*)* @A2_writeToFile, variables: !115)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !12, !5}
!115 = !{!116, !117, !118, !119, !120}
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !112, file: !1, line: 245, type: !12)
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !112, file: !1, line: 246, type: !5)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !112, file: !1, line: 248, type: !30)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fnlength", scope: !112, file: !1, line: 249, type: !11)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sulength", scope: !112, file: !1, line: 249, type: !11)
!121 = !DISubprogram(name: "A2_writeToFormattedFile", scope: !1, file: !1, line: 312, type: !122, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*, %struct.__sFILE*)* @A2_writeToFormattedFile, variables: !124)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !12, !30}
!124 = !{!125, !126, !127}
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !121, file: !1, line: 313, type: !12)
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !121, file: !1, line: 314, type: !30)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !121, file: !1, line: 316, type: !11)
!128 = !DISubprogram(name: "A2_writeToBinaryFile", scope: !1, file: !1, line: 343, type: !122, isLocal: false, isDefinition: true, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*, %struct.__sFILE*)* @A2_writeToBinaryFile, variables: !129)
!129 = !{!130, !131, !132}
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !128, file: !1, line: 344, type: !12)
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !128, file: !1, line: 345, type: !30)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !128, file: !1, line: 347, type: !11)
!133 = !DISubprogram(name: "A2_writeForHumanEye", scope: !1, file: !1, line: 377, type: !122, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*, %struct.__sFILE*)* @A2_writeForHumanEye, variables: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141}
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !133, file: !1, line: 378, type: !12)
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !133, file: !1, line: 379, type: !30)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !133, file: !1, line: 381, type: !11)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !133, file: !1, line: 381, type: !11)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jfirst", scope: !133, file: !1, line: 381, type: !11)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jlast", scope: !133, file: !1, line: 381, type: !11)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "loc", scope: !133, file: !1, line: 381, type: !11)
!142 = !DISubprogram(name: "A2_writeStats", scope: !1, file: !1, line: 438, type: !122, isLocal: false, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*, %struct.__sFILE*)* @A2_writeStats, variables: !143)
!143 = !{!144, !145}
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !142, file: !1, line: 439, type: !12)
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !142, file: !1, line: 440, type: !30)
!146 = !DISubprogram(name: "A2_writeForMatlab", scope: !1, file: !1, line: 471, type: !147, isLocal: false, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._A2*, i8*, %struct.__sFILE*)* @A2_writeForMatlab, variables: !149)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !12, !5, !30}
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !166, !169}
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtx", arg: 1, scope: !146, file: !1, line: 472, type: !12)
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtxname", arg: 2, scope: !146, file: !1, line: 473, type: !5)
!152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 3, scope: !146, file: !1, line: 474, type: !30)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irow", scope: !146, file: !1, line: 476, type: !11)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jcol", scope: !146, file: !1, line: 476, type: !11)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ncol", scope: !146, file: !1, line: 476, type: !11)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nrow", scope: !146, file: !1, line: 476, type: !11)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !158, file: !1, line: 488, type: !25)
!158 = distinct !DILexicalBlock(scope: !159, file: !1, line: 487, column: 30)
!159 = distinct !DILexicalBlock(scope: !160, file: !1, line: 487, column: 12)
!160 = distinct !DILexicalBlock(scope: !161, file: !1, line: 486, column: 44)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 486, column: 4)
!162 = distinct !DILexicalBlock(scope: !163, file: !1, line: 486, column: 4)
!163 = distinct !DILexicalBlock(scope: !164, file: !1, line: 485, column: 41)
!164 = distinct !DILexicalBlock(scope: !165, file: !1, line: 485, column: 1)
!165 = distinct !DILexicalBlock(scope: !146, file: !1, line: 485, column: 1)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "imag", scope: !167, file: !1, line: 493, type: !25)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 492, column: 40)
!168 = distinct !DILexicalBlock(scope: !159, file: !1, line: 492, column: 19)
!169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "real", scope: !167, file: !1, line: 493, type: !25)
!170 = !{!171, !172}
!171 = !DIGlobalVariable(name: "suffixb", scope: !0, file: !1, line: 5, type: !72, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariable(name: "suffixf", scope: !0, file: !1, line: 6, type: !72, isLocal: true, isDefinition: true)
!173 = !{i32 2, !"Dwarf Version", i32 2}
!174 = !{i32 2, !"Debug Info Version", i32 700000003}
!175 = !{i32 1, !"PIC Level", i32 2}
!176 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!177 = !DIExpression()
!178 = !DILocation(line: 24, column: 12, scope: !8)
!179 = !DILocation(line: 25, column: 12, scope: !8)
!180 = !DILocation(line: 28, column: 18, scope: !8)
!181 = !DILocation(line: 34, column: 10, scope: !182)
!182 = distinct !DILexicalBlock(scope: !8, file: !1, line: 34, column: 6)
!183 = !DILocation(line: 34, column: 24, scope: !182)
!184 = !DILocation(line: 34, column: 18, scope: !182)
!185 = !DILocation(line: 35, column: 12, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 34, column: 34)
!187 = !{!188, !188, i64 0}
!188 = !{!"any pointer", !189, i64 0}
!189 = !{!"omnipotent char", !190, i64 0}
!190 = !{!"Simple C/C++ TBAA"}
!191 = !DILocation(line: 35, column: 4, scope: !186)
!192 = !DILocation(line: 37, column: 4, scope: !186)
!193 = !DILocation(line: 44, column: 12, scope: !8)
!194 = !DILocation(line: 28, column: 8, scope: !8)
!195 = !DILocation(line: 28, column: 26, scope: !8)
!196 = !DILocation(line: 46, column: 15, scope: !197)
!197 = distinct !DILexicalBlock(scope: !8, file: !1, line: 46, column: 6)
!198 = !DILocation(line: 46, column: 6, scope: !8)
!199 = !DILocation(line: 47, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !201, file: !1, line: 47, column: 9)
!201 = distinct !DILexicalBlock(scope: !197, file: !1, line: 46, column: 28)
!202 = !DILocation(line: 47, column: 9, scope: !200)
!203 = !DILocation(line: 47, column: 49, scope: !200)
!204 = !DILocation(line: 47, column: 9, scope: !201)
!205 = !DILocation(line: 48, column: 18, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 48, column: 12)
!207 = distinct !DILexicalBlock(scope: !200, file: !1, line: 47, column: 56)
!208 = !DILocation(line: 27, column: 9, scope: !8)
!209 = !DILocation(line: 48, column: 35, scope: !206)
!210 = !DILocation(line: 48, column: 12, scope: !207)
!211 = !DILocation(line: 49, column: 18, scope: !212)
!212 = distinct !DILexicalBlock(scope: !206, file: !1, line: 48, column: 45)
!213 = !DILocation(line: 49, column: 10, scope: !212)
!214 = !DILocation(line: 51, column: 7, scope: !212)
!215 = !DILocation(line: 52, column: 15, scope: !216)
!216 = distinct !DILexicalBlock(scope: !206, file: !1, line: 51, column: 14)
!217 = !DILocation(line: 53, column: 10, scope: !216)
!218 = !DILocation(line: 55, column: 16, scope: !219)
!219 = distinct !DILexicalBlock(scope: !200, file: !1, line: 55, column: 16)
!220 = !DILocation(line: 55, column: 56, scope: !219)
!221 = !DILocation(line: 55, column: 16, scope: !200)
!222 = !DILocation(line: 56, column: 18, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !1, line: 56, column: 12)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 55, column: 63)
!225 = !DILocation(line: 56, column: 34, scope: !223)
!226 = !DILocation(line: 56, column: 12, scope: !224)
!227 = !DILocation(line: 57, column: 18, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !1, line: 56, column: 44)
!229 = !DILocation(line: 57, column: 10, scope: !228)
!230 = !DILocation(line: 59, column: 7, scope: !228)
!231 = !DILocation(line: 60, column: 15, scope: !232)
!232 = distinct !DILexicalBlock(scope: !223, file: !1, line: 59, column: 14)
!233 = !DILocation(line: 61, column: 10, scope: !232)
!234 = !DILocation(line: 64, column: 15, scope: !235)
!235 = distinct !DILexicalBlock(scope: !219, file: !1, line: 63, column: 11)
!236 = !DILocation(line: 64, column: 7, scope: !235)
!237 = !DILocation(line: 71, column: 12, scope: !238)
!238 = distinct !DILexicalBlock(scope: !197, file: !1, line: 70, column: 8)
!239 = !DILocation(line: 71, column: 4, scope: !238)
!240 = !DILocation(line: 77, column: 14, scope: !8)
!241 = !DILocation(line: 163, column: 11, scope: !105)
!242 = !DILocation(line: 164, column: 12, scope: !105)
!243 = !DILocation(line: 167, column: 7, scope: !105)
!244 = !DILocation(line: 173, column: 10, scope: !245)
!245 = distinct !DILexicalBlock(scope: !105, file: !1, line: 173, column: 6)
!246 = !DILocation(line: 173, column: 24, scope: !245)
!247 = !DILocation(line: 173, column: 18, scope: !245)
!248 = !DILocation(line: 174, column: 12, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !1, line: 173, column: 34)
!250 = !DILocation(line: 174, column: 4, scope: !249)
!251 = !DILocation(line: 176, column: 4, scope: !249)
!252 = !DILocation(line: 183, column: 1, scope: !105)
!253 = !DILocation(line: 189, column: 18, scope: !254)
!254 = distinct !DILexicalBlock(scope: !105, file: !1, line: 189, column: 6)
!255 = !DILocation(line: 189, column: 12, scope: !254)
!256 = !DILocation(line: 166, column: 7, scope: !105)
!257 = !DILocation(line: 189, column: 55, scope: !254)
!258 = !DILocation(line: 189, column: 6, scope: !105)
!259 = !DILocation(line: 190, column: 12, scope: !260)
!260 = distinct !DILexicalBlock(scope: !254, file: !1, line: 189, column: 62)
!261 = !DILocation(line: 190, column: 4, scope: !260)
!262 = !DILocation(line: 192, column: 4, scope: !260)
!263 = !DILocation(line: 194, column: 9, scope: !105)
!264 = !DILocation(line: 195, column: 9, scope: !105)
!265 = !DILocation(line: 195, column: 29, scope: !105)
!266 = !DILocation(line: 195, column: 49, scope: !105)
!267 = !{!268, !268, i64 0}
!268 = !{!"int", !189, i64 0}
!269 = !DILocation(line: 194, column: 1, scope: !105)
!270 = !DILocation(line: 196, column: 8, scope: !105)
!271 = !DILocation(line: 196, column: 1, scope: !105)
!272 = !DILocation(line: 202, column: 1, scope: !105)
!273 = !DILocation(line: 208, column: 24, scope: !274)
!274 = distinct !DILexicalBlock(scope: !105, file: !1, line: 208, column: 6)
!275 = !{!276, !268, i64 4}
!276 = !{!"_A2", !268, i64 0, !268, i64 4, !268, i64 8, !268, i64 12, !268, i64 16, !268, i64 20, !188, i64 24}
!277 = !DILocation(line: 208, column: 26, scope: !274)
!278 = !DILocation(line: 208, column: 35, scope: !274)
!279 = !{!276, !268, i64 12}
!280 = !DILocation(line: 208, column: 29, scope: !274)
!281 = !DILocation(line: 208, column: 16, scope: !274)
!282 = !DILocation(line: 208, column: 48, scope: !274)
!283 = !{!276, !268, i64 8}
!284 = !DILocation(line: 208, column: 50, scope: !274)
!285 = !DILocation(line: 208, column: 59, scope: !274)
!286 = !{!276, !268, i64 16}
!287 = !DILocation(line: 208, column: 53, scope: !274)
!288 = !DILocation(line: 208, column: 40, scope: !274)
!289 = !DILocation(line: 166, column: 11, scope: !105)
!290 = !DILocation(line: 208, column: 65, scope: !274)
!291 = !DILocation(line: 208, column: 6, scope: !105)
!292 = !DILocation(line: 209, column: 9, scope: !293)
!293 = distinct !DILexicalBlock(scope: !294, file: !1, line: 209, column: 9)
!294 = distinct !DILexicalBlock(scope: !274, file: !1, line: 208, column: 71)
!295 = !{!276, !268, i64 0}
!296 = !DILocation(line: 209, column: 9, scope: !294)
!297 = !DILocation(line: 210, column: 29, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !1, line: 210, column: 12)
!299 = distinct !DILexicalBlock(scope: !293, file: !1, line: 209, column: 27)
!300 = !{!276, !188, i64 24}
!301 = !DILocation(line: 210, column: 54, scope: !298)
!302 = !DILocation(line: 210, column: 18, scope: !298)
!303 = !DILocation(line: 211, column: 12, scope: !298)
!304 = !DILocation(line: 210, column: 12, scope: !299)
!305 = !DILocation(line: 212, column: 18, scope: !306)
!306 = distinct !DILexicalBlock(scope: !298, file: !1, line: 211, column: 22)
!307 = !DILocation(line: 212, column: 10, scope: !306)
!308 = !DILocation(line: 214, column: 10, scope: !306)
!309 = !DILocation(line: 217, column: 29, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !1, line: 217, column: 12)
!311 = distinct !DILexicalBlock(scope: !312, file: !1, line: 216, column: 37)
!312 = distinct !DILexicalBlock(scope: !293, file: !1, line: 216, column: 16)
!313 = !DILocation(line: 217, column: 55, scope: !310)
!314 = !DILocation(line: 217, column: 54, scope: !310)
!315 = !DILocation(line: 217, column: 18, scope: !310)
!316 = !DILocation(line: 218, column: 12, scope: !310)
!317 = !DILocation(line: 217, column: 12, scope: !311)
!318 = !DILocation(line: 219, column: 18, scope: !319)
!319 = distinct !DILexicalBlock(scope: !310, file: !1, line: 218, column: 24)
!320 = !DILocation(line: 219, column: 10, scope: !319)
!321 = !DILocation(line: 221, column: 10, scope: !319)
!322 = !DILocation(line: 226, column: 13, scope: !105)
!323 = !DILocation(line: 91, column: 11, scope: !93)
!324 = !DILocation(line: 92, column: 12, scope: !93)
!325 = !DILocation(line: 95, column: 7, scope: !93)
!326 = !DILocation(line: 101, column: 10, scope: !327)
!327 = distinct !DILexicalBlock(scope: !93, file: !1, line: 101, column: 6)
!328 = !DILocation(line: 101, column: 24, scope: !327)
!329 = !DILocation(line: 101, column: 18, scope: !327)
!330 = !DILocation(line: 102, column: 12, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !1, line: 101, column: 34)
!332 = !DILocation(line: 102, column: 4, scope: !331)
!333 = !DILocation(line: 104, column: 4, scope: !331)
!334 = !DILocation(line: 111, column: 1, scope: !93)
!335 = !DILocation(line: 117, column: 28, scope: !336)
!336 = distinct !DILexicalBlock(scope: !93, file: !1, line: 117, column: 6)
!337 = !DILocation(line: 117, column: 12, scope: !336)
!338 = !DILocation(line: 94, column: 7, scope: !93)
!339 = !DILocation(line: 117, column: 36, scope: !336)
!340 = !DILocation(line: 117, column: 6, scope: !93)
!341 = !DILocation(line: 118, column: 12, scope: !342)
!342 = distinct !DILexicalBlock(scope: !336, file: !1, line: 117, column: 43)
!343 = !DILocation(line: 118, column: 4, scope: !342)
!344 = !DILocation(line: 120, column: 4, scope: !342)
!345 = !DILocation(line: 127, column: 14, scope: !93)
!346 = !DILocation(line: 127, column: 34, scope: !93)
!347 = !DILocation(line: 127, column: 54, scope: !93)
!348 = !DILocation(line: 127, column: 1, scope: !93)
!349 = !DILocation(line: 133, column: 24, scope: !350)
!350 = distinct !DILexicalBlock(scope: !93, file: !1, line: 133, column: 6)
!351 = !DILocation(line: 133, column: 26, scope: !350)
!352 = !DILocation(line: 133, column: 35, scope: !350)
!353 = !DILocation(line: 133, column: 29, scope: !350)
!354 = !DILocation(line: 133, column: 16, scope: !350)
!355 = !DILocation(line: 133, column: 48, scope: !350)
!356 = !DILocation(line: 133, column: 50, scope: !350)
!357 = !DILocation(line: 133, column: 59, scope: !350)
!358 = !DILocation(line: 133, column: 53, scope: !350)
!359 = !DILocation(line: 133, column: 40, scope: !350)
!360 = !DILocation(line: 94, column: 11, scope: !93)
!361 = !DILocation(line: 133, column: 65, scope: !350)
!362 = !DILocation(line: 133, column: 6, scope: !93)
!363 = !DILocation(line: 134, column: 9, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !1, line: 134, column: 9)
!365 = distinct !DILexicalBlock(scope: !350, file: !1, line: 133, column: 71)
!366 = !DILocation(line: 134, column: 9, scope: !365)
!367 = !DILocation(line: 135, column: 42, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !1, line: 135, column: 12)
!369 = distinct !DILexicalBlock(scope: !364, file: !1, line: 134, column: 27)
!370 = !DILocation(line: 135, column: 18, scope: !368)
!371 = !DILocation(line: 135, column: 52, scope: !368)
!372 = !DILocation(line: 135, column: 12, scope: !369)
!373 = !DILocation(line: 136, column: 18, scope: !374)
!374 = distinct !DILexicalBlock(scope: !368, file: !1, line: 135, column: 62)
!375 = !DILocation(line: 136, column: 10, scope: !374)
!376 = !DILocation(line: 138, column: 10, scope: !374)
!377 = !DILocation(line: 141, column: 32, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !1, line: 141, column: 12)
!379 = distinct !DILexicalBlock(scope: !380, file: !1, line: 140, column: 37)
!380 = distinct !DILexicalBlock(scope: !364, file: !1, line: 140, column: 16)
!381 = !DILocation(line: 141, column: 44, scope: !378)
!382 = !DILocation(line: 141, column: 18, scope: !378)
!383 = !DILocation(line: 141, column: 54, scope: !378)
!384 = !DILocation(line: 141, column: 12, scope: !379)
!385 = !DILocation(line: 142, column: 18, scope: !386)
!386 = distinct !DILexicalBlock(scope: !378, file: !1, line: 141, column: 66)
!387 = !DILocation(line: 142, column: 10, scope: !386)
!388 = !DILocation(line: 144, column: 10, scope: !386)
!389 = !DILocation(line: 149, column: 13, scope: !93)
!390 = !DILocation(line: 245, column: 11, scope: !112)
!391 = !DILocation(line: 246, column: 12, scope: !112)
!392 = !DILocation(line: 255, column: 10, scope: !393)
!393 = distinct !DILexicalBlock(scope: !112, file: !1, line: 255, column: 6)
!394 = !DILocation(line: 255, column: 24, scope: !393)
!395 = !DILocation(line: 255, column: 18, scope: !393)
!396 = !DILocation(line: 256, column: 12, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !1, line: 255, column: 34)
!398 = !DILocation(line: 256, column: 4, scope: !397)
!399 = !DILocation(line: 258, column: 1, scope: !397)
!400 = !DILocation(line: 264, column: 12, scope: !112)
!401 = !DILocation(line: 249, column: 8, scope: !112)
!402 = !DILocation(line: 249, column: 18, scope: !112)
!403 = !DILocation(line: 266, column: 15, scope: !404)
!404 = distinct !DILexicalBlock(scope: !112, file: !1, line: 266, column: 6)
!405 = !DILocation(line: 266, column: 6, scope: !112)
!406 = !DILocation(line: 267, column: 17, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 267, column: 9)
!408 = distinct !DILexicalBlock(scope: !404, file: !1, line: 266, column: 28)
!409 = !DILocation(line: 267, column: 9, scope: !407)
!410 = !DILocation(line: 267, column: 49, scope: !407)
!411 = !DILocation(line: 267, column: 9, scope: !408)
!412 = !DILocation(line: 268, column: 18, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !1, line: 268, column: 12)
!414 = distinct !DILexicalBlock(scope: !407, file: !1, line: 267, column: 56)
!415 = !DILocation(line: 248, column: 9, scope: !112)
!416 = !DILocation(line: 268, column: 35, scope: !413)
!417 = !DILocation(line: 268, column: 12, scope: !414)
!418 = !DILocation(line: 269, column: 18, scope: !419)
!419 = distinct !DILexicalBlock(scope: !413, file: !1, line: 268, column: 45)
!420 = !DILocation(line: 269, column: 10, scope: !419)
!421 = !DILocation(line: 271, column: 7, scope: !419)
!422 = !DILocation(line: 272, column: 10, scope: !423)
!423 = distinct !DILexicalBlock(scope: !413, file: !1, line: 271, column: 14)
!424 = !DILocation(line: 273, column: 10, scope: !423)
!425 = !DILocation(line: 275, column: 16, scope: !426)
!426 = distinct !DILexicalBlock(scope: !407, file: !1, line: 275, column: 16)
!427 = !DILocation(line: 275, column: 56, scope: !426)
!428 = !DILocation(line: 275, column: 16, scope: !407)
!429 = !DILocation(line: 276, column: 18, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 276, column: 12)
!431 = distinct !DILexicalBlock(scope: !426, file: !1, line: 275, column: 63)
!432 = !DILocation(line: 276, column: 34, scope: !430)
!433 = !DILocation(line: 276, column: 12, scope: !431)
!434 = !DILocation(line: 277, column: 18, scope: !435)
!435 = distinct !DILexicalBlock(scope: !430, file: !1, line: 276, column: 44)
!436 = !DILocation(line: 277, column: 10, scope: !435)
!437 = !DILocation(line: 279, column: 7, scope: !435)
!438 = !DILocation(line: 280, column: 10, scope: !439)
!439 = distinct !DILexicalBlock(scope: !430, file: !1, line: 279, column: 14)
!440 = !DILocation(line: 281, column: 10, scope: !439)
!441 = !DILocation(line: 284, column: 18, scope: !442)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 284, column: 12)
!443 = distinct !DILexicalBlock(scope: !426, file: !1, line: 283, column: 11)
!444 = !DILocation(line: 284, column: 34, scope: !442)
!445 = !DILocation(line: 284, column: 12, scope: !443)
!446 = !DILocation(line: 285, column: 18, scope: !447)
!447 = distinct !DILexicalBlock(scope: !442, file: !1, line: 284, column: 44)
!448 = !DILocation(line: 285, column: 10, scope: !447)
!449 = !DILocation(line: 287, column: 7, scope: !447)
!450 = !DILocation(line: 288, column: 10, scope: !451)
!451 = distinct !DILexicalBlock(scope: !442, file: !1, line: 287, column: 14)
!452 = !DILocation(line: 289, column: 10, scope: !451)
!453 = !DILocation(line: 293, column: 15, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !1, line: 293, column: 9)
!455 = distinct !DILexicalBlock(scope: !404, file: !1, line: 292, column: 8)
!456 = !DILocation(line: 293, column: 31, scope: !454)
!457 = !DILocation(line: 293, column: 9, scope: !455)
!458 = !DILocation(line: 294, column: 15, scope: !459)
!459 = distinct !DILexicalBlock(scope: !454, file: !1, line: 293, column: 41)
!460 = !DILocation(line: 294, column: 7, scope: !459)
!461 = !DILocation(line: 296, column: 4, scope: !459)
!462 = !DILocation(line: 297, column: 7, scope: !463)
!463 = distinct !DILexicalBlock(scope: !454, file: !1, line: 296, column: 11)
!464 = !DILocation(line: 298, column: 7, scope: !463)
!465 = !DILocation(line: 301, column: 1, scope: !112)
!466 = !DILocation(line: 344, column: 11, scope: !128)
!467 = !DILocation(line: 345, column: 12, scope: !128)
!468 = !DILocation(line: 349, column: 9, scope: !469)
!469 = distinct !DILexicalBlock(scope: !128, file: !1, line: 349, column: 6)
!470 = !DILocation(line: 349, column: 6, scope: !128)
!471 = !DILocation(line: 352, column: 23, scope: !128)
!472 = !DILocation(line: 352, column: 8, scope: !128)
!473 = !DILocation(line: 352, column: 1, scope: !128)
!474 = !DILocation(line: 353, column: 23, scope: !128)
!475 = !DILocation(line: 353, column: 8, scope: !128)
!476 = !DILocation(line: 353, column: 1, scope: !128)
!477 = !DILocation(line: 354, column: 23, scope: !128)
!478 = !DILocation(line: 354, column: 8, scope: !128)
!479 = !DILocation(line: 354, column: 1, scope: !128)
!480 = !DILocation(line: 355, column: 23, scope: !128)
!481 = !DILocation(line: 355, column: 8, scope: !128)
!482 = !DILocation(line: 355, column: 1, scope: !128)
!483 = !DILocation(line: 356, column: 23, scope: !128)
!484 = !DILocation(line: 356, column: 8, scope: !128)
!485 = !DILocation(line: 356, column: 1, scope: !128)
!486 = !DILocation(line: 357, column: 24, scope: !487)
!487 = distinct !DILexicalBlock(scope: !128, file: !1, line: 357, column: 6)
!488 = !DILocation(line: 357, column: 26, scope: !487)
!489 = !DILocation(line: 357, column: 35, scope: !487)
!490 = !DILocation(line: 357, column: 29, scope: !487)
!491 = !DILocation(line: 357, column: 16, scope: !487)
!492 = !DILocation(line: 357, column: 48, scope: !487)
!493 = !DILocation(line: 357, column: 50, scope: !487)
!494 = !DILocation(line: 357, column: 59, scope: !487)
!495 = !DILocation(line: 357, column: 53, scope: !487)
!496 = !DILocation(line: 357, column: 40, scope: !487)
!497 = !DILocation(line: 347, column: 7, scope: !128)
!498 = !DILocation(line: 357, column: 65, scope: !487)
!499 = !DILocation(line: 358, column: 6, scope: !487)
!500 = !DILocation(line: 358, column: 14, scope: !487)
!501 = !DILocation(line: 358, column: 22, scope: !487)
!502 = !DILocation(line: 357, column: 6, scope: !128)
!503 = !DILocation(line: 359, column: 9, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !1, line: 359, column: 9)
!505 = distinct !DILexicalBlock(scope: !487, file: !1, line: 358, column: 32)
!506 = !DILocation(line: 359, column: 9, scope: !505)
!507 = !DILocation(line: 360, column: 14, scope: !508)
!508 = distinct !DILexicalBlock(scope: !504, file: !1, line: 359, column: 27)
!509 = !DILocation(line: 360, column: 54, scope: !508)
!510 = !DILocation(line: 360, column: 7, scope: !508)
!511 = !DILocation(line: 361, column: 4, scope: !508)
!512 = !DILocation(line: 362, column: 14, scope: !513)
!513 = distinct !DILexicalBlock(scope: !514, file: !1, line: 361, column: 37)
!514 = distinct !DILexicalBlock(scope: !504, file: !1, line: 361, column: 16)
!515 = !DILocation(line: 362, column: 55, scope: !513)
!516 = !DILocation(line: 362, column: 54, scope: !513)
!517 = !DILocation(line: 362, column: 7, scope: !513)
!518 = !DILocation(line: 363, column: 4, scope: !513)
!519 = !DILocation(line: 366, column: 10, scope: !128)
!520 = !DILocation(line: 313, column: 11, scope: !121)
!521 = !DILocation(line: 314, column: 12, scope: !121)
!522 = !DILocation(line: 318, column: 10, scope: !523)
!523 = distinct !DILexicalBlock(scope: !121, file: !1, line: 318, column: 6)
!524 = !DILocation(line: 318, column: 24, scope: !523)
!525 = !DILocation(line: 318, column: 18, scope: !523)
!526 = !DILocation(line: 322, column: 14, scope: !121)
!527 = !DILocation(line: 322, column: 25, scope: !121)
!528 = !DILocation(line: 322, column: 34, scope: !121)
!529 = !DILocation(line: 322, column: 43, scope: !121)
!530 = !DILocation(line: 322, column: 54, scope: !121)
!531 = !DILocation(line: 321, column: 1, scope: !121)
!532 = !DILocation(line: 323, column: 24, scope: !533)
!533 = distinct !DILexicalBlock(scope: !121, file: !1, line: 323, column: 6)
!534 = !DILocation(line: 323, column: 26, scope: !533)
!535 = !DILocation(line: 323, column: 35, scope: !533)
!536 = !DILocation(line: 323, column: 29, scope: !533)
!537 = !DILocation(line: 323, column: 16, scope: !533)
!538 = !DILocation(line: 323, column: 48, scope: !533)
!539 = !DILocation(line: 323, column: 50, scope: !533)
!540 = !DILocation(line: 323, column: 59, scope: !533)
!541 = !DILocation(line: 323, column: 53, scope: !533)
!542 = !DILocation(line: 323, column: 40, scope: !533)
!543 = !DILocation(line: 316, column: 7, scope: !121)
!544 = !DILocation(line: 323, column: 65, scope: !533)
!545 = !DILocation(line: 324, column: 6, scope: !533)
!546 = !DILocation(line: 324, column: 14, scope: !533)
!547 = !DILocation(line: 324, column: 22, scope: !533)
!548 = !DILocation(line: 323, column: 6, scope: !121)
!549 = !DILocation(line: 325, column: 9, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !1, line: 325, column: 9)
!551 = distinct !DILexicalBlock(scope: !533, file: !1, line: 324, column: 32)
!552 = !DILocation(line: 325, column: 9, scope: !551)
!553 = !DILocation(line: 326, column: 7, scope: !554)
!554 = distinct !DILexicalBlock(scope: !550, file: !1, line: 325, column: 27)
!555 = !DILocation(line: 327, column: 4, scope: !554)
!556 = !DILocation(line: 328, column: 22, scope: !557)
!557 = distinct !DILexicalBlock(scope: !558, file: !1, line: 327, column: 37)
!558 = distinct !DILexicalBlock(scope: !550, file: !1, line: 327, column: 16)
!559 = !DILocation(line: 328, column: 7, scope: !557)
!560 = !DILocation(line: 329, column: 4, scope: !557)
!561 = !DILocation(line: 332, column: 10, scope: !121)
!562 = !DILocation(line: 378, column: 11, scope: !133)
!563 = !DILocation(line: 379, column: 12, scope: !133)
!564 = !DILocation(line: 383, column: 10, scope: !565)
!565 = distinct !DILexicalBlock(scope: !133, file: !1, line: 383, column: 6)
!566 = !DILocation(line: 383, column: 24, scope: !565)
!567 = !DILocation(line: 383, column: 18, scope: !565)
!568 = !DILocation(line: 384, column: 12, scope: !569)
!569 = distinct !DILexicalBlock(scope: !565, file: !1, line: 383, column: 34)
!570 = !DILocation(line: 384, column: 4, scope: !569)
!571 = !DILocation(line: 386, column: 4, scope: !569)
!572 = !DILocation(line: 388, column: 1, scope: !133)
!573 = !DILocation(line: 389, column: 6, scope: !574)
!574 = distinct !DILexicalBlock(scope: !133, file: !1, line: 389, column: 6)
!575 = !DILocation(line: 389, column: 6, scope: !133)
!576 = !DILocation(line: 408, column: 37, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !1, line: 408, column: 4)
!578 = distinct !DILexicalBlock(scope: !579, file: !1, line: 408, column: 4)
!579 = distinct !DILexicalBlock(scope: !580, file: !1, line: 407, column: 34)
!580 = distinct !DILexicalBlock(scope: !574, file: !1, line: 407, column: 13)
!581 = !DILocation(line: 408, column: 30, scope: !577)
!582 = !DILocation(line: 408, column: 4, scope: !578)
!583 = !DILocation(line: 417, column: 30, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !1, line: 417, column: 7)
!585 = distinct !DILexicalBlock(scope: !586, file: !1, line: 417, column: 7)
!586 = distinct !DILexicalBlock(scope: !577, file: !1, line: 408, column: 56)
!587 = !DILocation(line: 420, column: 29, scope: !588)
!588 = distinct !DILexicalBlock(scope: !589, file: !1, line: 419, column: 48)
!589 = distinct !DILexicalBlock(scope: !590, file: !1, line: 419, column: 10)
!590 = distinct !DILexicalBlock(scope: !591, file: !1, line: 419, column: 10)
!591 = distinct !DILexicalBlock(scope: !584, file: !1, line: 417, column: 41)
!592 = !DILocation(line: 420, column: 43, scope: !588)
!593 = !DILocation(line: 422, column: 26, scope: !588)
!594 = !DILocation(line: 390, column: 37, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 390, column: 4)
!596 = distinct !DILexicalBlock(scope: !597, file: !1, line: 390, column: 4)
!597 = distinct !DILexicalBlock(scope: !574, file: !1, line: 389, column: 24)
!598 = !DILocation(line: 390, column: 30, scope: !595)
!599 = !DILocation(line: 390, column: 4, scope: !596)
!600 = !DILocation(line: 399, column: 30, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !1, line: 399, column: 7)
!602 = distinct !DILexicalBlock(scope: !603, file: !1, line: 399, column: 7)
!603 = distinct !DILexicalBlock(scope: !595, file: !1, line: 390, column: 56)
!604 = !DILocation(line: 403, column: 42, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 401, column: 48)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 401, column: 10)
!607 = distinct !DILexicalBlock(scope: !608, file: !1, line: 401, column: 10)
!608 = distinct !DILexicalBlock(scope: !601, file: !1, line: 399, column: 41)
!609 = !DILocation(line: 403, column: 56, scope: !605)
!610 = !DILocation(line: 403, column: 27, scope: !605)
!611 = !DILocation(line: 391, column: 22, scope: !603)
!612 = !DILocation(line: 381, column: 21, scope: !133)
!613 = !DILocation(line: 392, column: 18, scope: !614)
!614 = distinct !DILexicalBlock(scope: !603, file: !1, line: 392, column: 12)
!615 = !DILocation(line: 393, column: 26, scope: !616)
!616 = distinct !DILexicalBlock(scope: !614, file: !1, line: 392, column: 31)
!617 = !DILocation(line: 392, column: 12, scope: !603)
!618 = !DILocation(line: 395, column: 7, scope: !603)
!619 = !DILocation(line: 381, column: 10, scope: !133)
!620 = !DILocation(line: 396, column: 28, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 396, column: 7)
!622 = distinct !DILexicalBlock(scope: !603, file: !1, line: 396, column: 7)
!623 = !DILocation(line: 396, column: 7, scope: !622)
!624 = !DILocation(line: 399, column: 23, scope: !601)
!625 = !DILocation(line: 399, column: 7, scope: !602)
!626 = !DILocation(line: 397, column: 10, scope: !627)
!627 = distinct !DILexicalBlock(scope: !621, file: !1, line: 396, column: 45)
!628 = !DILocation(line: 396, column: 40, scope: !621)
!629 = !DILocation(line: 400, column: 10, scope: !608)
!630 = !DILocation(line: 401, column: 10, scope: !607)
!631 = !DILocation(line: 403, column: 36, scope: !605)
!632 = !DILocation(line: 403, column: 50, scope: !605)
!633 = !DILocation(line: 403, column: 47, scope: !605)
!634 = !DILocation(line: 403, column: 22, scope: !605)
!635 = !{!636, !636, i64 0}
!636 = !{!"double", !189, i64 0}
!637 = !DILocation(line: 402, column: 13, scope: !605)
!638 = !DILocation(line: 401, column: 43, scope: !606)
!639 = !DILocation(line: 399, column: 36, scope: !601)
!640 = !DILocation(line: 381, column: 7, scope: !133)
!641 = !DILocation(line: 390, column: 49, scope: !595)
!642 = !DILocation(line: 381, column: 13, scope: !133)
!643 = !DILocation(line: 409, column: 22, scope: !586)
!644 = !DILocation(line: 410, column: 18, scope: !645)
!645 = distinct !DILexicalBlock(scope: !586, file: !1, line: 410, column: 12)
!646 = !DILocation(line: 411, column: 26, scope: !647)
!647 = distinct !DILexicalBlock(scope: !645, file: !1, line: 410, column: 31)
!648 = !DILocation(line: 410, column: 12, scope: !586)
!649 = !DILocation(line: 413, column: 7, scope: !586)
!650 = !DILocation(line: 414, column: 28, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !1, line: 414, column: 7)
!652 = distinct !DILexicalBlock(scope: !586, file: !1, line: 414, column: 7)
!653 = !DILocation(line: 414, column: 7, scope: !652)
!654 = !DILocation(line: 417, column: 23, scope: !584)
!655 = !DILocation(line: 417, column: 7, scope: !585)
!656 = !DILocation(line: 415, column: 10, scope: !657)
!657 = distinct !DILexicalBlock(scope: !651, file: !1, line: 414, column: 45)
!658 = !DILocation(line: 414, column: 40, scope: !651)
!659 = !DILocation(line: 418, column: 10, scope: !591)
!660 = !DILocation(line: 419, column: 10, scope: !590)
!661 = !DILocation(line: 420, column: 23, scope: !588)
!662 = !DILocation(line: 420, column: 37, scope: !588)
!663 = !DILocation(line: 420, column: 34, scope: !588)
!664 = !DILocation(line: 420, column: 20, scope: !588)
!665 = !DILocation(line: 381, column: 28, scope: !133)
!666 = !DILocation(line: 422, column: 21, scope: !588)
!667 = !DILocation(line: 422, column: 56, scope: !588)
!668 = !DILocation(line: 422, column: 40, scope: !588)
!669 = !DILocation(line: 421, column: 13, scope: !588)
!670 = !DILocation(line: 419, column: 43, scope: !589)
!671 = !DILocation(line: 417, column: 36, scope: !584)
!672 = !DILocation(line: 408, column: 49, scope: !577)
!673 = !DILocation(line: 427, column: 1, scope: !133)
!674 = !DILocation(line: 439, column: 11, scope: !142)
!675 = !DILocation(line: 440, column: 12, scope: !142)
!676 = !DILocation(line: 442, column: 10, scope: !677)
!677 = distinct !DILexicalBlock(scope: !142, file: !1, line: 442, column: 6)
!678 = !DILocation(line: 442, column: 24, scope: !677)
!679 = !DILocation(line: 442, column: 18, scope: !677)
!680 = !DILocation(line: 443, column: 12, scope: !681)
!681 = distinct !DILexicalBlock(scope: !677, file: !1, line: 442, column: 34)
!682 = !DILocation(line: 443, column: 4, scope: !681)
!683 = !DILocation(line: 445, column: 4, scope: !681)
!684 = !DILocation(line: 447, column: 6, scope: !685)
!685 = distinct !DILexicalBlock(scope: !142, file: !1, line: 447, column: 6)
!686 = !DILocation(line: 447, column: 6, scope: !142)
!687 = !DILocation(line: 448, column: 4, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !1, line: 447, column: 24)
!689 = !DILocation(line: 449, column: 1, scope: !688)
!690 = !DILocation(line: 450, column: 4, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !1, line: 449, column: 34)
!692 = distinct !DILexicalBlock(scope: !685, file: !1, line: 449, column: 13)
!693 = !DILocation(line: 451, column: 1, scope: !691)
!694 = !DILocation(line: 456, column: 14, scope: !142)
!695 = !DILocation(line: 456, column: 23, scope: !142)
!696 = !DILocation(line: 456, column: 32, scope: !142)
!697 = !DILocation(line: 456, column: 43, scope: !142)
!698 = !DILocation(line: 456, column: 54, scope: !142)
!699 = !{!276, !268, i64 20}
!700 = !DILocation(line: 457, column: 16, scope: !142)
!701 = !DILocation(line: 458, column: 9, scope: !142)
!702 = !DILocation(line: 458, column: 30, scope: !142)
!703 = !DILocation(line: 458, column: 39, scope: !142)
!704 = !DILocation(line: 452, column: 1, scope: !142)
!705 = !DILocation(line: 460, column: 1, scope: !142)
!706 = !DILocation(line: 472, column: 11, scope: !146)
!707 = !DILocation(line: 473, column: 12, scope: !146)
!708 = !DILocation(line: 474, column: 12, scope: !146)
!709 = !DILocation(line: 478, column: 10, scope: !710)
!710 = distinct !DILexicalBlock(scope: !146, file: !1, line: 478, column: 6)
!711 = !DILocation(line: 478, column: 29, scope: !710)
!712 = !DILocation(line: 478, column: 18, scope: !710)
!713 = !DILocation(line: 478, column: 43, scope: !710)
!714 = !DILocation(line: 479, column: 12, scope: !715)
!715 = distinct !DILexicalBlock(scope: !710, file: !1, line: 478, column: 53)
!716 = !DILocation(line: 479, column: 4, scope: !715)
!717 = !DILocation(line: 481, column: 4, scope: !715)
!718 = !DILocation(line: 483, column: 8, scope: !146)
!719 = !DILocation(line: 476, column: 28, scope: !146)
!720 = !DILocation(line: 484, column: 8, scope: !146)
!721 = !DILocation(line: 476, column: 22, scope: !146)
!722 = !DILocation(line: 476, column: 10, scope: !146)
!723 = !DILocation(line: 485, column: 23, scope: !164)
!724 = !DILocation(line: 485, column: 1, scope: !165)
!725 = !DILocation(line: 486, column: 26, scope: !161)
!726 = !DILocation(line: 487, column: 12, scope: !159)
!727 = !DILocation(line: 491, column: 31, scope: !158)
!728 = !DILocation(line: 486, column: 4, scope: !162)
!729 = !DILocation(line: 487, column: 12, scope: !160)
!730 = !DILocation(line: 486, column: 39, scope: !161)
!731 = !DILocation(line: 488, column: 19, scope: !158)
!732 = !DILocation(line: 489, column: 10, scope: !158)
!733 = !DILocation(line: 491, column: 39, scope: !158)
!734 = !DILocation(line: 491, column: 43, scope: !158)
!735 = !DILocation(line: 490, column: 10, scope: !158)
!736 = !DILocation(line: 492, column: 7, scope: !158)
!737 = !DILocation(line: 493, column: 19, scope: !167)
!738 = !DILocation(line: 493, column: 25, scope: !167)
!739 = !DILocation(line: 494, column: 10, scope: !167)
!740 = !DILocation(line: 496, column: 39, scope: !167)
!741 = !DILocation(line: 496, column: 43, scope: !167)
!742 = !DILocation(line: 496, column: 49, scope: !167)
!743 = !DILocation(line: 495, column: 10, scope: !167)
!744 = !DILocation(line: 497, column: 7, scope: !167)
!745 = !DILocation(line: 476, column: 16, scope: !146)
!746 = !DILocation(line: 500, column: 1, scope: !146)
