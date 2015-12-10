; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A error in ETree_readFromFile(%p,%s)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [61 x i8] c"\0A error in ETree_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [106 x i8] c"\0A error in ETree_readFromFile(%p,%s)\0A bad ETree file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [58 x i8] c"\0A error in ETree_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [68 x i8] c"\0A error in ETree_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [61 x i8] c"\0A fatal error in ETree_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [76 x i8] c"\0A error in ETree_readFromBinaryFile(%p,%p)\0A itemp(2) : %d items of %d read\0A\00", align 1
@.str9 = private unnamed_addr constant [54 x i8] c"\0A fatal error in ETree_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str11 = private unnamed_addr constant [60 x i8] c"\0A error in ETree_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str14 = private unnamed_addr constant [63 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"\0A %d %d\00", align 1
@.str16 = private unnamed_addr constant [88 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str17 = private unnamed_addr constant [95 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing Tree to file\0A\00", align 1
@.str18 = private unnamed_addr constant [101 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing nodwghtsIV to file\0A\00", align 1
@.str19 = private unnamed_addr constant [101 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing bndwghtsIV to file\0A\00", align 1
@.str20 = private unnamed_addr constant [103 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing vtxToFrontIV to file\0A\00", align 1
@.str21 = private unnamed_addr constant [60 x i8] c"\0A fatal error in ETree_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str22 = private unnamed_addr constant [74 x i8] c"\0A error in ETree_writeToBinaryFile(%p,%p)\0A %d of %d scalar items written\0A\00", align 1
@.str23 = private unnamed_addr constant [92 x i8] c"\0A fatal error in ETree_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing Tree to file\0A\00", align 1
@.str24 = private unnamed_addr constant [98 x i8] c"\0A fatal error in ETree_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing nodwghtsIV to file\0A\00", align 1
@.str25 = private unnamed_addr constant [98 x i8] c"\0A fatal error in ETree_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing bndwghtsIV to file\0A\00", align 1
@.str26 = private unnamed_addr constant [100 x i8] c"\0A fatal error in ETree_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing vtxToFrontIV to file\0A\00", align 1
@.str27 = private unnamed_addr constant [59 x i8] c"\0A fatal error in ETree_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str28 = private unnamed_addr constant [94 x i8] c"\0A fatal error in ETree_writeForHumanEye(%p,%p)\0A rc = %d, return from ETree_writeStats(%p,%p)\0A\00", align 1
@.str29 = private unnamed_addr constant [57 x i8] c"\0A front    parent   fchild   sibling   nodwght   bndwght\00", align 1
@.str30 = private unnamed_addr constant [27 x i8] c"\0A %5d %9d %9d %9d %9d %9d \00", align 1
@.str31 = private unnamed_addr constant [24 x i8] c"\0A\0A vtxToFront IV object\00", align 1
@.str32 = private unnamed_addr constant [47 x i8] c"\0A error in ETree_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str33 = private unnamed_addr constant [63 x i8] c"\0A ETree : etree object, %d fronts, %d vertices, takes %d bytes\00", align 1
@.str34 = private unnamed_addr constant [72 x i8] c"\0A fatal error in ETree_writeStats(%p,%p)\0A rc = %d, return from fprintf\0A\00", align 1
@.str35 = private unnamed_addr constant [8 x i8] c".etreeb\00", align 1
@.str36 = private unnamed_addr constant [8 x i8] c".etreef\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ETree_readFromFile(%struct._ETree* %etree, i8* %fn) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !44, metadata !170), !dbg !171
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !45, metadata !170), !dbg !172
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !173
  %2 = icmp eq i8* %fn, null, !dbg !175
  %or.cond = or i1 %1, %2, !dbg !176
  br i1 %or.cond, label %3, label %6, !dbg !176

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !177, !tbaa !179
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._ETree* %etree, i8* %fn) #7, !dbg !183
  br label %43, !dbg !184

; <label>:6                                       ; preds = %0
  %7 = tail call i64 @strlen(i8* %fn) #7, !dbg !185
  %8 = trunc i64 %7 to i32, !dbg !185
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !107, metadata !170), !dbg !186
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !109, metadata !170), !dbg !187
  %9 = icmp sgt i32 %8, 7, !dbg !188
  br i1 %9, label %10, label %40, !dbg !190

; <label>:10                                      ; preds = %6
  %11 = shl i64 %7, 32, !dbg !191
  %sext = add i64 %11, -30064771072, !dbg !191
  %12 = ashr exact i64 %sext, 32, !dbg !191
  %13 = getelementptr inbounds i8* %fn, i64 %12, !dbg !191
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0)) #7, !dbg !194
  %15 = icmp eq i32 %14, 0, !dbg !195
  br i1 %15, label %16, label %25, !dbg !196

; <label>:16                                      ; preds = %10
  %17 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !197
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %17, i64 0, metadata !46, metadata !170), !dbg !200
  %18 = icmp eq %struct.__sFILE* %17, null, !dbg !201
  br i1 %18, label %19, label %22, !dbg !202

; <label>:19                                      ; preds = %16
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !203, !tbaa !179
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #7, !dbg !205
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !108, metadata !170), !dbg !206
  br label %43, !dbg !207

; <label>:22                                      ; preds = %16
  %23 = tail call i32 @ETree_readFromBinaryFile(%struct._ETree* %etree, %struct.__sFILE* %17) #8, !dbg !208
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !108, metadata !170), !dbg !206
  %24 = tail call i32 @fclose(%struct.__sFILE* %17) #7, !dbg !210
  br label %43

; <label>:25                                      ; preds = %10
  %26 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !211
  %27 = icmp eq i32 %26, 0, !dbg !213
  br i1 %27, label %28, label %37, !dbg !214

; <label>:28                                      ; preds = %25
  %29 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !215
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %29, i64 0, metadata !46, metadata !170), !dbg !200
  %30 = icmp eq %struct.__sFILE* %29, null, !dbg !218
  br i1 %30, label %31, label %34, !dbg !219

; <label>:31                                      ; preds = %28
  %32 = load %struct.__sFILE** @__stderrp, align 8, !dbg !220, !tbaa !179
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #7, !dbg !222
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !108, metadata !170), !dbg !206
  br label %43, !dbg !223

; <label>:34                                      ; preds = %28
  %35 = tail call i32 @ETree_readFromFormattedFile(%struct._ETree* %etree, %struct.__sFILE* %29) #8, !dbg !224
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !108, metadata !170), !dbg !206
  %36 = tail call i32 @fclose(%struct.__sFILE* %29) #7, !dbg !226
  br label %43

; <label>:37                                      ; preds = %25
  %38 = load %struct.__sFILE** @__stderrp, align 8, !dbg !227, !tbaa !179
  %39 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %38, i8* getelementptr inbounds ([106 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn, i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !229
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !108, metadata !170), !dbg !206
  br label %43

; <label>:40                                      ; preds = %6
  %41 = load %struct.__sFILE** @__stderrp, align 8, !dbg !230, !tbaa !179
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([106 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn, i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !232
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !108, metadata !170), !dbg !206
  br label %43

; <label>:43                                      ; preds = %40, %37, %34, %31, %19, %22, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %19 ], [ %23, %22 ], [ 0, %31 ], [ %35, %34 ], [ 0, %37 ], [ 0, %40 ]
  ret i32 %.0, !dbg !233
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
define i32 @ETree_readFromBinaryFile(%struct._ETree* %etree, %struct.__sFILE* %fp) #0 {
  %itemp = alloca [2 x i32], align 4
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !123, metadata !170), !dbg !234
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !124, metadata !170), !dbg !235
  tail call void @llvm.dbg.declare(metadata [2 x i32]* %itemp, metadata !126, metadata !170), !dbg !236
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !237
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !239
  %or.cond = or i1 %1, %2, !dbg !240
  br i1 %or.cond, label %3, label %6, !dbg !240

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !241, !tbaa !179
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([61 x i8]* @.str7, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp) #7, !dbg !243
  br label %33, !dbg !244

; <label>:6                                       ; preds = %0
  tail call void @ETree_clearData(%struct._ETree* %etree) #7, !dbg !245
  tail call void @ETree_init1(%struct._ETree* %etree, i32 0, i32 0) #7, !dbg !246
  %7 = bitcast [2 x i32]* %itemp to i8*, !dbg !247
  %8 = call i64 @fread(i8* %7, i64 4, i64 2, %struct.__sFILE* %fp) #7, !dbg !249
  %9 = trunc i64 %8 to i32, !dbg !249
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !125, metadata !170), !dbg !250
  %10 = icmp eq i32 %9, 2, !dbg !251
  br i1 %10, label %14, label %11, !dbg !252

; <label>:11                                      ; preds = %6
  %12 = load %struct.__sFILE** @__stderrp, align 8, !dbg !253, !tbaa !179
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([76 x i8]* @.str8, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp, i32 %9, i32 2) #7, !dbg !255
  br label %33, !dbg !256

; <label>:14                                      ; preds = %6
  %15 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0, !dbg !257
  %16 = load i32* %15, align 4, !dbg !257, !tbaa !258
  %17 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !260
  store i32 %16, i32* %17, align 4, !dbg !261, !tbaa !262
  %18 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1, !dbg !264
  %19 = load i32* %18, align 4, !dbg !264, !tbaa !258
  %20 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !265
  store i32 %19, i32* %20, align 4, !dbg !266, !tbaa !267
  %21 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !268
  %22 = load %struct._Tree** %21, align 8, !dbg !268, !tbaa !269
  %23 = tail call i32 @Tree_readFromBinaryFile(%struct._Tree* %22, %struct.__sFILE* %fp) #7, !dbg !270
  %24 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !271
  %25 = load %struct._IV** %24, align 8, !dbg !271, !tbaa !272
  %26 = tail call i32 @IV_readFromBinaryFile(%struct._IV* %25, %struct.__sFILE* %fp) #7, !dbg !273
  %27 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !274
  %28 = load %struct._IV** %27, align 8, !dbg !274, !tbaa !275
  %29 = tail call i32 @IV_readFromBinaryFile(%struct._IV* %28, %struct.__sFILE* %fp) #7, !dbg !276
  %30 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !277
  %31 = load %struct._IV** %30, align 8, !dbg !277, !tbaa !278
  %32 = tail call i32 @IV_readFromBinaryFile(%struct._IV* %31, %struct.__sFILE* %fp) #7, !dbg !279
  br label %33, !dbg !280

; <label>:33                                      ; preds = %14, %11, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %11 ], [ 1, %14 ]
  ret i32 %.0, !dbg !281
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ETree_readFromFormattedFile(%struct._ETree* %etree, %struct.__sFILE* %fp) #0 {
  %itemp = alloca [2 x i32], align 4
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !114, metadata !170), !dbg !282
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !115, metadata !170), !dbg !283
  tail call void @llvm.dbg.declare(metadata [2 x i32]* %itemp, metadata !117, metadata !170), !dbg !284
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !285
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !287
  %or.cond = or i1 %1, %2, !dbg !288
  br i1 %or.cond, label %3, label %6, !dbg !288

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !289, !tbaa !179
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str5, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp) #7, !dbg !291
  br label %31, !dbg !292

; <label>:6                                       ; preds = %0
  tail call void @ETree_clearData(%struct._ETree* %etree) #7, !dbg !293
  tail call void @ETree_init1(%struct._ETree* %etree, i32 0, i32 0) #7, !dbg !294
  %7 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0, !dbg !295
  %8 = call i32 @IVfscanf(%struct.__sFILE* %fp, i32 2, i32* %7) #7, !dbg !297
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !116, metadata !170), !dbg !298
  %9 = icmp eq i32 %8, 2, !dbg !299
  br i1 %9, label %13, label %10, !dbg !300

; <label>:10                                      ; preds = %6
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !301, !tbaa !179
  %12 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp, i32 %8, i32 2) #7, !dbg !303
  br label %31, !dbg !304

; <label>:13                                      ; preds = %6
  %14 = load i32* %7, align 4, !dbg !305, !tbaa !258
  %15 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !306
  store i32 %14, i32* %15, align 4, !dbg !307, !tbaa !262
  %16 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1, !dbg !308
  %17 = load i32* %16, align 4, !dbg !308, !tbaa !258
  %18 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !309
  store i32 %17, i32* %18, align 4, !dbg !310, !tbaa !267
  %19 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !311
  %20 = load %struct._Tree** %19, align 8, !dbg !311, !tbaa !269
  %21 = call i32 @Tree_readFromFormattedFile(%struct._Tree* %20, %struct.__sFILE* %fp) #7, !dbg !312
  %22 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !313
  %23 = load %struct._IV** %22, align 8, !dbg !313, !tbaa !272
  %24 = call i32 @IV_readFromFormattedFile(%struct._IV* %23, %struct.__sFILE* %fp) #7, !dbg !314
  %25 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !315
  %26 = load %struct._IV** %25, align 8, !dbg !315, !tbaa !275
  %27 = call i32 @IV_readFromFormattedFile(%struct._IV* %26, %struct.__sFILE* %fp) #7, !dbg !316
  %28 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !317
  %29 = load %struct._IV** %28, align 8, !dbg !317, !tbaa !278
  %30 = call i32 @IV_readFromFormattedFile(%struct._IV* %29, %struct.__sFILE* %fp) #7, !dbg !318
  br label %31, !dbg !319

; <label>:31                                      ; preds = %13, %10, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %10 ], [ 1, %13 ]
  ret i32 %.0, !dbg !320
}

; Function Attrs: optsize
declare void @ETree_clearData(%struct._ETree*) #4

; Function Attrs: optsize
declare void @ETree_init1(%struct._ETree*, i32, i32) #4

; Function Attrs: optsize
declare i32 @IVfscanf(%struct.__sFILE*, i32, i32*) #4

; Function Attrs: optsize
declare i32 @Tree_readFromFormattedFile(%struct._Tree*, %struct.__sFILE*) #4

; Function Attrs: optsize
declare i32 @IV_readFromFormattedFile(%struct._IV*, %struct.__sFILE*) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #2

; Function Attrs: optsize
declare i32 @Tree_readFromBinaryFile(%struct._Tree*, %struct.__sFILE*) #4

; Function Attrs: optsize
declare i32 @IV_readFromBinaryFile(%struct._IV*, %struct.__sFILE*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ETree_writeToFile(%struct._ETree* %etree, i8* %fn) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !129, metadata !170), !dbg !321
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !130, metadata !170), !dbg !322
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !323
  %2 = icmp eq i8* %fn, null, !dbg !325
  %or.cond = or i1 %1, %2, !dbg !326
  br i1 %or.cond, label %3, label %6, !dbg !326

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !327, !tbaa !179
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([54 x i8]* @.str9, i64 0, i64 0), %struct._ETree* %etree, i8* %fn) #7, !dbg !329
  br label %6, !dbg !330

; <label>:6                                       ; preds = %0, %3
  %7 = tail call i64 @strlen(i8* %fn) #7, !dbg !331
  %8 = trunc i64 %7 to i32, !dbg !331
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !132, metadata !170), !dbg !332
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !134, metadata !170), !dbg !333
  %9 = icmp sgt i32 %8, 7, !dbg !334
  br i1 %9, label %10, label %46, !dbg !336

; <label>:10                                      ; preds = %6
  %11 = shl i64 %7, 32, !dbg !337
  %sext = add i64 %11, -30064771072, !dbg !337
  %12 = ashr exact i64 %sext, 32, !dbg !337
  %13 = getelementptr inbounds i8* %fn, i64 %12, !dbg !337
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0)) #7, !dbg !340
  %15 = icmp eq i32 %14, 0, !dbg !341
  br i1 %15, label %16, label %25, !dbg !342

; <label>:16                                      ; preds = %10
  %17 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0)) #7, !dbg !343
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %17, i64 0, metadata !131, metadata !170), !dbg !346
  %18 = icmp eq %struct.__sFILE* %17, null, !dbg !347
  br i1 %18, label %19, label %22, !dbg !348

; <label>:19                                      ; preds = %16
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !349, !tbaa !179
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([60 x i8]* @.str11, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #7, !dbg !351
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !133, metadata !170), !dbg !352
  br label %55, !dbg !353

; <label>:22                                      ; preds = %16
  %23 = tail call i32 @ETree_writeToBinaryFile(%struct._ETree* %etree, %struct.__sFILE* %17) #8, !dbg !354
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !133, metadata !170), !dbg !352
  %24 = tail call i32 @fclose(%struct.__sFILE* %17) #7, !dbg !356
  br label %55

; <label>:25                                      ; preds = %10
  %26 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !357
  %27 = icmp eq i32 %26, 0, !dbg !359
  br i1 %27, label %28, label %37, !dbg !360

; <label>:28                                      ; preds = %25
  %29 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #7, !dbg !361
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %29, i64 0, metadata !131, metadata !170), !dbg !346
  %30 = icmp eq %struct.__sFILE* %29, null, !dbg !364
  br i1 %30, label %31, label %34, !dbg !365

; <label>:31                                      ; preds = %28
  %32 = load %struct.__sFILE** @__stderrp, align 8, !dbg !366, !tbaa !179
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([60 x i8]* @.str11, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #7, !dbg !368
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !133, metadata !170), !dbg !352
  br label %55, !dbg !369

; <label>:34                                      ; preds = %28
  %35 = tail call i32 @ETree_writeToFormattedFile(%struct._ETree* %etree, %struct.__sFILE* %29) #8, !dbg !370
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !133, metadata !170), !dbg !352
  %36 = tail call i32 @fclose(%struct.__sFILE* %29) #7, !dbg !372
  br label %55

; <label>:37                                      ; preds = %25
  %38 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !373
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %38, i64 0, metadata !131, metadata !170), !dbg !346
  %39 = icmp eq %struct.__sFILE* %38, null, !dbg !376
  br i1 %39, label %40, label %43, !dbg !377

; <label>:40                                      ; preds = %37
  %41 = load %struct.__sFILE** @__stderrp, align 8, !dbg !378, !tbaa !179
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([60 x i8]* @.str11, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #7, !dbg !380
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !133, metadata !170), !dbg !352
  br label %55, !dbg !381

; <label>:43                                      ; preds = %37
  %44 = tail call i32 @ETree_writeForHumanEye(%struct._ETree* %etree, %struct.__sFILE* %38) #8, !dbg !382
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !133, metadata !170), !dbg !352
  %45 = tail call i32 @fclose(%struct.__sFILE* %38) #7, !dbg !384
  br label %55

; <label>:46                                      ; preds = %6
  %47 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !385
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %47, i64 0, metadata !131, metadata !170), !dbg !346
  %48 = icmp eq %struct.__sFILE* %47, null, !dbg !388
  br i1 %48, label %49, label %52, !dbg !389

; <label>:49                                      ; preds = %46
  %50 = load %struct.__sFILE** @__stderrp, align 8, !dbg !390, !tbaa !179
  %51 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %50, i8* getelementptr inbounds ([60 x i8]* @.str11, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #7, !dbg !392
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !133, metadata !170), !dbg !352
  br label %55, !dbg !393

; <label>:52                                      ; preds = %46
  %53 = tail call i32 @ETree_writeForHumanEye(%struct._ETree* %etree, %struct.__sFILE* %47) #8, !dbg !394
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !133, metadata !170), !dbg !352
  %54 = tail call i32 @fclose(%struct.__sFILE* %47) #7, !dbg !396
  br label %55

; <label>:55                                      ; preds = %49, %52, %22, %19, %40, %43, %31, %34
  %rc.0 = phi i32 [ 0, %19 ], [ %23, %22 ], [ 0, %31 ], [ %35, %34 ], [ 0, %40 ], [ %44, %43 ], [ 0, %49 ], [ %53, %52 ]
  ret i32 %rc.0, !dbg !397
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ETree_writeToBinaryFile(%struct._ETree* %etree, %struct.__sFILE* %fp) #0 {
  %itemp = alloca [2 x i32], align 4
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !142, metadata !170), !dbg !398
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !143, metadata !170), !dbg !399
  tail call void @llvm.dbg.declare(metadata [2 x i32]* %itemp, metadata !145, metadata !170), !dbg !400
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !401
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !403
  %or.cond = or i1 %1, %2, !dbg !404
  br i1 %or.cond, label %7, label %3, !dbg !404

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !405
  %5 = load %struct._Tree** %4, align 8, !dbg !405, !tbaa !269
  %6 = icmp eq %struct._Tree* %5, null, !dbg !406
  br i1 %6, label %7, label %10, !dbg !407

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !408, !tbaa !179
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([60 x i8]* @.str21, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp) #7, !dbg !410
  tail call void @exit(i32 -1) #9, !dbg !411
  unreachable, !dbg !411

; <label>:10                                      ; preds = %3
  %11 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !412
  %12 = load i32* %11, align 4, !dbg !412, !tbaa !262
  %13 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0, !dbg !413
  store i32 %12, i32* %13, align 4, !dbg !414, !tbaa !258
  %14 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !415
  %15 = load i32* %14, align 4, !dbg !415, !tbaa !267
  %16 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1, !dbg !416
  store i32 %15, i32* %16, align 4, !dbg !417, !tbaa !258
  %17 = bitcast [2 x i32]* %itemp to i8*, !dbg !418
  %18 = call i64 @"\01_fwrite"(i8* %17, i64 4, i64 2, %struct.__sFILE* %fp) #7, !dbg !419
  %19 = trunc i64 %18 to i32, !dbg !419
  call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !144, metadata !170), !dbg !420
  %20 = icmp eq i32 %19, 2, !dbg !421
  br i1 %20, label %24, label %21, !dbg !423

; <label>:21                                      ; preds = %10
  %22 = load %struct.__sFILE** @__stderrp, align 8, !dbg !424, !tbaa !179
  %23 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([74 x i8]* @.str22, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp, i32 %19, i32 2) #7, !dbg !426
  br label %55, !dbg !427

; <label>:24                                      ; preds = %10
  %25 = load %struct._Tree** %4, align 8, !dbg !428, !tbaa !269
  %26 = call i32 @Tree_writeToBinaryFile(%struct._Tree* %25, %struct.__sFILE* %fp) #7, !dbg !429
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !144, metadata !170), !dbg !420
  %27 = icmp slt i32 %26, 0, !dbg !430
  br i1 %27, label %28, label %31, !dbg !432

; <label>:28                                      ; preds = %24
  %29 = load %struct.__sFILE** @__stderrp, align 8, !dbg !433, !tbaa !179
  %30 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([92 x i8]* @.str23, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp, i32 %26) #7, !dbg !435
  br label %55, !dbg !436

; <label>:31                                      ; preds = %24
  %32 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !437
  %33 = load %struct._IV** %32, align 8, !dbg !437, !tbaa !272
  %34 = call i32 @IV_writeToBinaryFile(%struct._IV* %33, %struct.__sFILE* %fp) #7, !dbg !438
  call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !144, metadata !170), !dbg !420
  %35 = icmp slt i32 %34, 0, !dbg !439
  br i1 %35, label %36, label %39, !dbg !441

; <label>:36                                      ; preds = %31
  %37 = load %struct.__sFILE** @__stderrp, align 8, !dbg !442, !tbaa !179
  %38 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %37, i8* getelementptr inbounds ([98 x i8]* @.str24, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp, i32 %34) #7, !dbg !444
  br label %55, !dbg !445

; <label>:39                                      ; preds = %31
  %40 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !446
  %41 = load %struct._IV** %40, align 8, !dbg !446, !tbaa !275
  %42 = call i32 @IV_writeToBinaryFile(%struct._IV* %41, %struct.__sFILE* %fp) #7, !dbg !447
  call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !144, metadata !170), !dbg !420
  %43 = icmp slt i32 %42, 0, !dbg !448
  br i1 %43, label %44, label %47, !dbg !450

; <label>:44                                      ; preds = %39
  %45 = load %struct.__sFILE** @__stderrp, align 8, !dbg !451, !tbaa !179
  %46 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %45, i8* getelementptr inbounds ([98 x i8]* @.str25, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp, i32 %42) #7, !dbg !453
  br label %55, !dbg !454

; <label>:47                                      ; preds = %39
  %48 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !455
  %49 = load %struct._IV** %48, align 8, !dbg !455, !tbaa !278
  %50 = call i32 @IV_writeToBinaryFile(%struct._IV* %49, %struct.__sFILE* %fp) #7, !dbg !456
  call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !144, metadata !170), !dbg !420
  %51 = icmp slt i32 %50, 0, !dbg !457
  br i1 %51, label %52, label %55, !dbg !459

; <label>:52                                      ; preds = %47
  %53 = load %struct.__sFILE** @__stderrp, align 8, !dbg !460, !tbaa !179
  %54 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %53, i8* getelementptr inbounds ([100 x i8]* @.str26, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp, i32 %50) #7, !dbg !462
  br label %55, !dbg !463

; <label>:55                                      ; preds = %47, %52, %44, %36, %28, %21
  %.0 = phi i32 [ 0, %21 ], [ 0, %28 ], [ 0, %36 ], [ 0, %44 ], [ 0, %52 ], [ 1, %47 ]
  ret i32 %.0, !dbg !464
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ETree_writeToFormattedFile(%struct._ETree* %etree, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !137, metadata !170), !dbg !465
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !138, metadata !170), !dbg !466
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !467
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !469
  %or.cond = or i1 %1, %2, !dbg !470
  br i1 %or.cond, label %7, label %3, !dbg !470

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !471
  %5 = load %struct._Tree** %4, align 8, !dbg !471, !tbaa !269
  %6 = icmp eq %struct._Tree* %5, null, !dbg !472
  br i1 %6, label %7, label %10, !dbg !473

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !474, !tbaa !179
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([63 x i8]* @.str14, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp) #7, !dbg !476
  tail call void @exit(i32 -1) #9, !dbg !477
  unreachable, !dbg !477

; <label>:10                                      ; preds = %3
  %11 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !478
  %12 = load i32* %11, align 4, !dbg !478, !tbaa !262
  %13 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !479
  %14 = load i32* %13, align 4, !dbg !479, !tbaa !267
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 %12, i32 %14) #7, !dbg !480
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !139, metadata !170), !dbg !481
  %16 = icmp slt i32 %15, 0, !dbg !482
  br i1 %16, label %17, label %20, !dbg !484

; <label>:17                                      ; preds = %10
  %18 = load %struct.__sFILE** @__stderrp, align 8, !dbg !485, !tbaa !179
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([88 x i8]* @.str16, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp, i32 %15) #7, !dbg !487
  br label %51, !dbg !488

; <label>:20                                      ; preds = %10
  %21 = load %struct._Tree** %4, align 8, !dbg !489, !tbaa !269
  %22 = tail call i32 @Tree_writeToFormattedFile(%struct._Tree* %21, %struct.__sFILE* %fp) #7, !dbg !490
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !139, metadata !170), !dbg !481
  %23 = icmp slt i32 %22, 0, !dbg !491
  br i1 %23, label %24, label %27, !dbg !493

; <label>:24                                      ; preds = %20
  %25 = load %struct.__sFILE** @__stderrp, align 8, !dbg !494, !tbaa !179
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %25, i8* getelementptr inbounds ([95 x i8]* @.str17, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp, i32 %22) #7, !dbg !496
  br label %51, !dbg !497

; <label>:27                                      ; preds = %20
  %28 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !498
  %29 = load %struct._IV** %28, align 8, !dbg !498, !tbaa !272
  %30 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %29, %struct.__sFILE* %fp) #7, !dbg !499
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !139, metadata !170), !dbg !481
  %31 = icmp slt i32 %30, 0, !dbg !500
  br i1 %31, label %32, label %35, !dbg !502

; <label>:32                                      ; preds = %27
  %33 = load %struct.__sFILE** @__stderrp, align 8, !dbg !503, !tbaa !179
  %34 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %33, i8* getelementptr inbounds ([101 x i8]* @.str18, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp, i32 %30) #7, !dbg !505
  br label %51, !dbg !506

; <label>:35                                      ; preds = %27
  %36 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !507
  %37 = load %struct._IV** %36, align 8, !dbg !507, !tbaa !275
  %38 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %37, %struct.__sFILE* %fp) #7, !dbg !508
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !139, metadata !170), !dbg !481
  %39 = icmp slt i32 %38, 0, !dbg !509
  br i1 %39, label %40, label %43, !dbg !511

; <label>:40                                      ; preds = %35
  %41 = load %struct.__sFILE** @__stderrp, align 8, !dbg !512, !tbaa !179
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([101 x i8]* @.str19, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp, i32 %38) #7, !dbg !514
  br label %51, !dbg !515

; <label>:43                                      ; preds = %35
  %44 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !516
  %45 = load %struct._IV** %44, align 8, !dbg !516, !tbaa !278
  %46 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %45, %struct.__sFILE* %fp) #7, !dbg !517
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !139, metadata !170), !dbg !481
  %47 = icmp slt i32 %46, 0, !dbg !518
  br i1 %47, label %48, label %51, !dbg !520

; <label>:48                                      ; preds = %43
  %49 = load %struct.__sFILE** @__stderrp, align 8, !dbg !521, !tbaa !179
  %50 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %49, i8* getelementptr inbounds ([103 x i8]* @.str20, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp, i32 %46) #7, !dbg !523
  br label %51, !dbg !524

; <label>:51                                      ; preds = %43, %48, %40, %32, %24, %17
  %.0 = phi i32 [ 0, %17 ], [ 0, %24 ], [ 0, %32 ], [ 0, %40 ], [ 0, %48 ], [ 1, %43 ]
  ret i32 %.0, !dbg !525
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ETree_writeForHumanEye(%struct._ETree* %etree, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !148, metadata !170), !dbg !526
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !149, metadata !170), !dbg !527
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !528
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !530
  %or.cond = or i1 %1, %2, !dbg !531
  br i1 %or.cond, label %7, label %3, !dbg !531

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !532
  %5 = load i32* %4, align 4, !dbg !532, !tbaa !262
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !150, metadata !170), !dbg !533
  %6 = icmp slt i32 %5, 1, !dbg !534
  br i1 %6, label %7, label %10, !dbg !535

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !536, !tbaa !179
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([59 x i8]* @.str27, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp) #7, !dbg !538
  tail call void @exit(i32 -1) #9, !dbg !539
  unreachable, !dbg !539

; <label>:10                                      ; preds = %3
  %11 = tail call i32 @ETree_writeStats(%struct._ETree* %etree, %struct.__sFILE* %fp) #8, !dbg !540
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !151, metadata !170), !dbg !542
  %12 = icmp eq i32 %11, 0, !dbg !543
  br i1 %12, label %13, label %.lr.ph, !dbg !544

; <label>:13                                      ; preds = %10
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !545, !tbaa !179
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([94 x i8]* @.str28, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp, i32 0, %struct._ETree* %etree, %struct.__sFILE* %fp) #7, !dbg !547
  br label %51, !dbg !548

.lr.ph:                                           ; preds = %10
  %16 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !549
  %17 = load %struct._Tree** %16, align 8, !dbg !549, !tbaa !269
  %18 = getelementptr inbounds %struct._Tree* %17, i64 0, i32 2, !dbg !550
  %19 = load i32** %18, align 8, !dbg !550, !tbaa !551
  tail call void @llvm.dbg.value(metadata i32* %19, i64 0, metadata !156, metadata !170), !dbg !553
  %20 = getelementptr inbounds %struct._Tree* %17, i64 0, i32 3, !dbg !554
  %21 = load i32** %20, align 8, !dbg !554, !tbaa !555
  tail call void @llvm.dbg.value(metadata i32* %21, i64 0, metadata !154, metadata !170), !dbg !556
  %22 = getelementptr inbounds %struct._Tree* %17, i64 0, i32 4, !dbg !557
  %23 = load i32** %22, align 8, !dbg !557, !tbaa !558
  tail call void @llvm.dbg.value(metadata i32* %23, i64 0, metadata !157, metadata !170), !dbg !559
  %24 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !560
  %25 = load %struct._IV** %24, align 8, !dbg !560, !tbaa !272
  %26 = tail call i32* @IV_entries(%struct._IV* %25) #7, !dbg !561
  tail call void @llvm.dbg.value(metadata i32* %26, i64 0, metadata !155, metadata !170), !dbg !562
  %27 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !563
  %28 = load %struct._IV** %27, align 8, !dbg !563, !tbaa !275
  %29 = tail call i32* @IV_entries(%struct._IV* %28) #7, !dbg !564
  tail call void @llvm.dbg.value(metadata i32* %29, i64 0, metadata !153, metadata !170), !dbg !565
  %30 = tail call i64 @fwrite(i8* getelementptr inbounds ([57 x i8]* @.str29, i64 0, i64 0), i64 56, i64 1, %struct.__sFILE* %fp), !dbg !566
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !152, metadata !170), !dbg !567
  %31 = add i32 %5, -1, !dbg !568
  br label %32, !dbg !568

; <label>:32                                      ; preds = %32, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %32 ]
  %33 = getelementptr inbounds i32* %19, i64 %indvars.iv, !dbg !570
  %34 = load i32* %33, align 4, !dbg !570, !tbaa !258
  %35 = getelementptr inbounds i32* %21, i64 %indvars.iv, !dbg !573
  %36 = load i32* %35, align 4, !dbg !573, !tbaa !258
  %37 = getelementptr inbounds i32* %23, i64 %indvars.iv, !dbg !574
  %38 = load i32* %37, align 4, !dbg !574, !tbaa !258
  %39 = getelementptr inbounds i32* %26, i64 %indvars.iv, !dbg !575
  %40 = load i32* %39, align 4, !dbg !575, !tbaa !258
  %41 = getelementptr inbounds i32* %29, i64 %indvars.iv, !dbg !576
  %42 = load i32* %41, align 4, !dbg !576, !tbaa !258
  %43 = trunc i64 %indvars.iv to i32, !dbg !577
  %44 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str30, i64 0, i64 0), i32 %43, i32 %34, i32 %36, i32 %38, i32 %40, i32 %42) #7, !dbg !577
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !568
  %exitcond = icmp eq i32 %43, %31, !dbg !568
  br i1 %exitcond, label %._crit_edge, label %32, !dbg !568

._crit_edge:                                      ; preds = %32
  %45 = tail call i32 @fflush(%struct.__sFILE* %fp) #7, !dbg !578
  %46 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str31, i64 0, i64 0), i64 23, i64 1, %struct.__sFILE* %fp), !dbg !579
  %47 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !580
  %48 = load %struct._IV** %47, align 8, !dbg !580, !tbaa !278
  %49 = tail call i32 @IV_writeForHumanEye(%struct._IV* %48, %struct.__sFILE* %fp) #7, !dbg !581
  %50 = tail call i32 @fflush(%struct.__sFILE* %fp) #7, !dbg !582
  br label %51, !dbg !583

; <label>:51                                      ; preds = %._crit_edge, %13
  %.0 = phi i32 [ 0, %13 ], [ 1, %._crit_edge ]
  ret i32 %.0, !dbg !584
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #5

; Function Attrs: optsize
declare i32 @Tree_writeToFormattedFile(%struct._Tree*, %struct.__sFILE*) #4

; Function Attrs: optsize
declare i32 @IV_writeToFormattedFile(%struct._IV*, %struct.__sFILE*) #4

; Function Attrs: optsize
declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #4

; Function Attrs: optsize
declare i32 @Tree_writeToBinaryFile(%struct._Tree*, %struct.__sFILE*) #4

; Function Attrs: optsize
declare i32 @IV_writeToBinaryFile(%struct._IV*, %struct.__sFILE*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ETree_writeStats(%struct._ETree* %etree, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ETree* %etree, i64 0, metadata !160, metadata !170), !dbg !585
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !161, metadata !170), !dbg !586
  %1 = icmp eq %struct._ETree* %etree, null, !dbg !587
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !589
  %or.cond = or i1 %1, %2, !dbg !590
  br i1 %or.cond, label %3, label %6, !dbg !590

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !591, !tbaa !179
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([47 x i8]* @.str32, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp) #7, !dbg !593
  tail call void @exit(i32 -1) #9, !dbg !594
  unreachable, !dbg !594

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !595
  %8 = load i32* %7, align 4, !dbg !595, !tbaa !262
  %9 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !596
  %10 = load i32* %9, align 4, !dbg !596, !tbaa !267
  %11 = tail call i32 @ETree_sizeOf(%struct._ETree* %etree) #7, !dbg !597
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([63 x i8]* @.str33, i64 0, i64 0), i32 %8, i32 %10, i32 %11) #7, !dbg !598
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !162, metadata !170), !dbg !599
  %13 = icmp slt i32 %12, 0, !dbg !600
  br i1 %13, label %14, label %17, !dbg !602

; <label>:14                                      ; preds = %6
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !603, !tbaa !179
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([72 x i8]* @.str34, i64 0, i64 0), %struct._ETree* %etree, %struct.__sFILE* %fp, i32 %12) #7, !dbg !605
  br label %17, !dbg !606

; <label>:17                                      ; preds = %6, %14
  %.0 = phi i32 [ 0, %14 ], [ 1, %6 ]
  ret i32 %.0, !dbg !607
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #2

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct.__sFILE*) #4

; Function Attrs: optsize
declare i32 @ETree_sizeOf(%struct._ETree*) #4

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
!llvm.module.flags = !{!166, !167, !168}
!llvm.ident = !{!169}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !163, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !110, !121, !127, !135, !140, !146, !158}
!6 = !DISubprogram(name: "ETree_readFromFile", scope: !1, file: !1, line: 23, type: !7, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ETree*, i8*)* @ETree_readFromFile, variables: !43)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10, !41}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "ETree", file: !12, line: 31, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../ETree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ETree", file: !12, line: 32, size: 320, align: 64, elements: !14)
!14 = !{!15, !16, !17, !29, !39, !40}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "nfront", scope: !13, file: !12, line: 33, baseType: !9, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !13, file: !12, line: 34, baseType: !9, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !13, file: !12, line: 35, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tree", file: !20, line: 15, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../Tree/Tree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Tree", file: !20, line: 16, size: 256, align: 64, elements: !22)
!22 = !{!23, !24, !25, !27, !28}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !21, file: !20, line: 17, baseType: !9, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !21, file: !20, line: 18, baseType: !9, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !21, file: !20, line: 19, baseType: !26, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !21, file: !20, line: 20, baseType: !26, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !21, file: !20, line: 21, baseType: !26, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nodwghtsIV", scope: !13, file: !12, line: 36, baseType: !30, size: 64, align: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !32, line: 20, baseType: !33)
!32 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../IV/IV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IV", file: !32, line: 21, size: 192, align: 64, elements: !34)
!34 = !{!35, !36, !37, !38}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !33, file: !32, line: 22, baseType: !9, size: 32, align: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !33, file: !32, line: 23, baseType: !9, size: 32, align: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !33, file: !32, line: 24, baseType: !9, size: 32, align: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !33, file: !32, line: 25, baseType: !26, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "bndwghtsIV", scope: !13, file: !12, line: 37, baseType: !30, size: 64, align: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "vtxToFrontIV", scope: !13, file: !12, line: 38, baseType: !30, size: 64, align: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!43 = !{!44, !45, !46, !107, !108, !109}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !6, file: !1, line: 24, type: !10)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !6, file: !1, line: 25, type: !41)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !6, file: !1, line: 27, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !49, line: 153, baseType: !50)
!49 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !49, line: 122, size: 1216, align: 64, elements: !51)
!51 = !{!52, !55, !56, !57, !59, !60, !65, !66, !67, !71, !75, !85, !91, !92, !95, !96, !100, !104, !105, !106}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !50, file: !49, line: 123, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !50, file: !49, line: 124, baseType: !9, size: 32, align: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !50, file: !49, line: 125, baseType: !9, size: 32, align: 32, offset: 96)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !50, file: !49, line: 126, baseType: !58, size: 16, align: 16, offset: 128)
!58 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !50, file: !49, line: 127, baseType: !58, size: 16, align: 16, offset: 144)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !50, file: !49, line: 128, baseType: !61, size: 128, align: 64, offset: 192)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !49, line: 88, size: 128, align: 64, elements: !62)
!62 = !{!63, !64}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !61, file: !49, line: 89, baseType: !53, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !61, file: !49, line: 90, baseType: !9, size: 32, align: 32, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !50, file: !49, line: 129, baseType: !9, size: 32, align: 32, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !50, file: !49, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !50, file: !49, line: 133, baseType: !68, size: 64, align: 64, offset: 448)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!9, !4}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !50, file: !49, line: 134, baseType: !72, size: 64, align: 64, offset: 512)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!9, !4, !41, !9}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !50, file: !49, line: 135, baseType: !76, size: 64, align: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !4, !79, !9}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !49, line: 77, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !81, line: 71, baseType: !82)
!81 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !83, line: 46, baseType: !84)
!83 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!84 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !50, file: !49, line: 136, baseType: !86, size: 64, align: 64, offset: 640)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!9, !4, !89, !9}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !50, file: !49, line: 139, baseType: !61, size: 128, align: 64, offset: 704)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !50, file: !49, line: 140, baseType: !93, size: 64, align: 64, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !49, line: 94, flags: DIFlagFwdDecl)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !50, file: !49, line: 141, baseType: !9, size: 32, align: 32, offset: 896)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !50, file: !49, line: 144, baseType: !97, size: 24, align: 8, offset: 928)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 24, align: 8, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 3)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !50, file: !49, line: 145, baseType: !101, size: 8, align: 8, offset: 952)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8, align: 8, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 1)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !50, file: !49, line: 148, baseType: !61, size: 128, align: 64, offset: 960)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !50, file: !49, line: 151, baseType: !9, size: 32, align: 32, offset: 1088)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !50, file: !49, line: 152, baseType: !79, size: 64, align: 64, offset: 1152)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fnlength", scope: !6, file: !1, line: 28, type: !9)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !6, file: !1, line: 28, type: !9)
!109 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sulength", scope: !6, file: !1, line: 28, type: !9)
!110 = !DISubprogram(name: "ETree_readFromFormattedFile", scope: !1, file: !1, line: 92, type: !111, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ETree*, %struct.__sFILE*)* @ETree_readFromFormattedFile, variables: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{!9, !10, !47}
!113 = !{!114, !115, !116, !117}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !110, file: !1, line: 93, type: !10)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !110, file: !1, line: 94, type: !47)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !110, file: !1, line: 96, type: !9)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemp", scope: !110, file: !1, line: 97, type: !118)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, align: 32, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 2)
!121 = !DISubprogram(name: "ETree_readFromBinaryFile", scope: !1, file: !1, line: 170, type: !111, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ETree*, %struct.__sFILE*)* @ETree_readFromBinaryFile, variables: !122)
!122 = !{!123, !124, !125, !126}
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !121, file: !1, line: 171, type: !10)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !121, file: !1, line: 172, type: !47)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !121, file: !1, line: 174, type: !9)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemp", scope: !121, file: !1, line: 175, type: !118)
!127 = !DISubprogram(name: "ETree_writeToFile", scope: !1, file: !1, line: 255, type: !7, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ETree*, i8*)* @ETree_writeToFile, variables: !128)
!128 = !{!129, !130, !131, !132, !133, !134}
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !127, file: !1, line: 256, type: !10)
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !127, file: !1, line: 257, type: !41)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !127, file: !1, line: 259, type: !47)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fnlength", scope: !127, file: !1, line: 260, type: !9)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !127, file: !1, line: 260, type: !9)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sulength", scope: !127, file: !1, line: 260, type: !9)
!135 = !DISubprogram(name: "ETree_writeToFormattedFile", scope: !1, file: !1, line: 329, type: !111, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ETree*, %struct.__sFILE*)* @ETree_writeToFormattedFile, variables: !136)
!136 = !{!137, !138, !139}
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !135, file: !1, line: 330, type: !10)
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !135, file: !1, line: 331, type: !47)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !135, file: !1, line: 333, type: !9)
!140 = !DISubprogram(name: "ETree_writeToBinaryFile", scope: !1, file: !1, line: 417, type: !111, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ETree*, %struct.__sFILE*)* @ETree_writeToBinaryFile, variables: !141)
!141 = !{!142, !143, !144, !145}
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !140, file: !1, line: 418, type: !10)
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !140, file: !1, line: 419, type: !47)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !140, file: !1, line: 421, type: !9)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemp", scope: !140, file: !1, line: 422, type: !118)
!146 = !DISubprogram(name: "ETree_writeForHumanEye", scope: !1, file: !1, line: 508, type: !111, isLocal: false, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ETree*, %struct.__sFILE*)* @ETree_writeForHumanEye, variables: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !146, file: !1, line: 509, type: !10)
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !146, file: !1, line: 510, type: !47)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nfront", scope: !146, file: !1, line: 512, type: !9)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !146, file: !1, line: 512, type: !9)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !146, file: !1, line: 512, type: !9)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bndwghts", scope: !146, file: !1, line: 513, type: !26)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fch", scope: !146, file: !1, line: 513, type: !26)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nodwghts", scope: !146, file: !1, line: 513, type: !26)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "par", scope: !146, file: !1, line: 513, type: !26)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sib", scope: !146, file: !1, line: 513, type: !26)
!158 = !DISubprogram(name: "ETree_writeStats", scope: !1, file: !1, line: 555, type: !111, isLocal: false, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ETree*, %struct.__sFILE*)* @ETree_writeStats, variables: !159)
!159 = !{!160, !161, !162}
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "etree", arg: 1, scope: !158, file: !1, line: 556, type: !10)
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !158, file: !1, line: 557, type: !47)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !158, file: !1, line: 559, type: !9)
!163 = !{!164, !165}
!164 = !DIGlobalVariable(name: "suffixb", scope: !0, file: !1, line: 5, type: !89, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariable(name: "suffixf", scope: !0, file: !1, line: 6, type: !89, isLocal: true, isDefinition: true)
!166 = !{i32 2, !"Dwarf Version", i32 2}
!167 = !{i32 2, !"Debug Info Version", i32 700000003}
!168 = !{i32 1, !"PIC Level", i32 2}
!169 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!170 = !DIExpression()
!171 = !DILocation(line: 24, column: 13, scope: !6)
!172 = !DILocation(line: 25, column: 13, scope: !6)
!173 = !DILocation(line: 34, column: 12, scope: !174)
!174 = distinct !DILexicalBlock(scope: !6, file: !1, line: 34, column: 6)
!175 = !DILocation(line: 34, column: 26, scope: !174)
!176 = !DILocation(line: 34, column: 20, scope: !174)
!177 = !DILocation(line: 35, column: 12, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 34, column: 36)
!179 = !{!180, !180, i64 0}
!180 = !{!"any pointer", !181, i64 0}
!181 = !{!"omnipotent char", !182, i64 0}
!182 = !{!"Simple C/C++ TBAA"}
!183 = !DILocation(line: 35, column: 4, scope: !178)
!184 = !DILocation(line: 37, column: 4, scope: !178)
!185 = !DILocation(line: 44, column: 12, scope: !6)
!186 = !DILocation(line: 28, column: 8, scope: !6)
!187 = !DILocation(line: 28, column: 22, scope: !6)
!188 = !DILocation(line: 46, column: 15, scope: !189)
!189 = distinct !DILexicalBlock(scope: !6, file: !1, line: 46, column: 6)
!190 = !DILocation(line: 46, column: 6, scope: !6)
!191 = !DILocation(line: 47, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !1, line: 47, column: 9)
!193 = distinct !DILexicalBlock(scope: !189, file: !1, line: 46, column: 28)
!194 = !DILocation(line: 47, column: 9, scope: !192)
!195 = !DILocation(line: 47, column: 49, scope: !192)
!196 = !DILocation(line: 47, column: 9, scope: !193)
!197 = !DILocation(line: 48, column: 18, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !1, line: 48, column: 12)
!199 = distinct !DILexicalBlock(scope: !192, file: !1, line: 47, column: 56)
!200 = !DILocation(line: 27, column: 9, scope: !6)
!201 = !DILocation(line: 48, column: 35, scope: !198)
!202 = !DILocation(line: 48, column: 12, scope: !199)
!203 = !DILocation(line: 49, column: 18, scope: !204)
!204 = distinct !DILexicalBlock(scope: !198, file: !1, line: 48, column: 45)
!205 = !DILocation(line: 49, column: 10, scope: !204)
!206 = !DILocation(line: 28, column: 18, scope: !6)
!207 = !DILocation(line: 52, column: 7, scope: !204)
!208 = !DILocation(line: 53, column: 15, scope: !209)
!209 = distinct !DILexicalBlock(scope: !198, file: !1, line: 52, column: 14)
!210 = !DILocation(line: 54, column: 10, scope: !209)
!211 = !DILocation(line: 56, column: 16, scope: !212)
!212 = distinct !DILexicalBlock(scope: !192, file: !1, line: 56, column: 16)
!213 = !DILocation(line: 56, column: 56, scope: !212)
!214 = !DILocation(line: 56, column: 16, scope: !192)
!215 = !DILocation(line: 57, column: 18, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !1, line: 57, column: 12)
!217 = distinct !DILexicalBlock(scope: !212, file: !1, line: 56, column: 63)
!218 = !DILocation(line: 57, column: 34, scope: !216)
!219 = !DILocation(line: 57, column: 12, scope: !217)
!220 = !DILocation(line: 58, column: 18, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !1, line: 57, column: 44)
!222 = !DILocation(line: 58, column: 10, scope: !221)
!223 = !DILocation(line: 61, column: 7, scope: !221)
!224 = !DILocation(line: 62, column: 15, scope: !225)
!225 = distinct !DILexicalBlock(scope: !216, file: !1, line: 61, column: 14)
!226 = !DILocation(line: 63, column: 10, scope: !225)
!227 = !DILocation(line: 66, column: 15, scope: !228)
!228 = distinct !DILexicalBlock(scope: !212, file: !1, line: 65, column: 11)
!229 = !DILocation(line: 66, column: 7, scope: !228)
!230 = !DILocation(line: 73, column: 12, scope: !231)
!231 = distinct !DILexicalBlock(scope: !189, file: !1, line: 72, column: 8)
!232 = !DILocation(line: 73, column: 4, scope: !231)
!233 = !DILocation(line: 79, column: 14, scope: !6)
!234 = !DILocation(line: 171, column: 14, scope: !121)
!235 = !DILocation(line: 172, column: 12, scope: !121)
!236 = !DILocation(line: 175, column: 8, scope: !121)
!237 = !DILocation(line: 181, column: 12, scope: !238)
!238 = distinct !DILexicalBlock(scope: !121, file: !1, line: 181, column: 6)
!239 = !DILocation(line: 181, column: 26, scope: !238)
!240 = !DILocation(line: 181, column: 20, scope: !238)
!241 = !DILocation(line: 182, column: 12, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !1, line: 181, column: 36)
!243 = !DILocation(line: 182, column: 4, scope: !242)
!244 = !DILocation(line: 184, column: 4, scope: !242)
!245 = !DILocation(line: 191, column: 1, scope: !121)
!246 = !DILocation(line: 197, column: 1, scope: !121)
!247 = !DILocation(line: 203, column: 18, scope: !248)
!248 = distinct !DILexicalBlock(scope: !121, file: !1, line: 203, column: 6)
!249 = !DILocation(line: 203, column: 12, scope: !248)
!250 = !DILocation(line: 174, column: 8, scope: !121)
!251 = !DILocation(line: 203, column: 55, scope: !248)
!252 = !DILocation(line: 203, column: 6, scope: !121)
!253 = !DILocation(line: 204, column: 12, scope: !254)
!254 = distinct !DILexicalBlock(scope: !248, file: !1, line: 203, column: 62)
!255 = !DILocation(line: 204, column: 4, scope: !254)
!256 = !DILocation(line: 206, column: 3, scope: !254)
!257 = !DILocation(line: 208, column: 17, scope: !121)
!258 = !{!259, !259, i64 0}
!259 = !{!"int", !181, i64 0}
!260 = !DILocation(line: 208, column: 8, scope: !121)
!261 = !DILocation(line: 208, column: 15, scope: !121)
!262 = !{!263, !259, i64 0}
!263 = !{!"_ETree", !259, i64 0, !259, i64 4, !180, i64 8, !180, i64 16, !180, i64 24, !180, i64 32}
!264 = !DILocation(line: 209, column: 17, scope: !121)
!265 = !DILocation(line: 209, column: 8, scope: !121)
!266 = !DILocation(line: 209, column: 15, scope: !121)
!267 = !{!263, !259, i64 4}
!268 = !DILocation(line: 215, column: 32, scope: !121)
!269 = !{!263, !180, i64 8}
!270 = !DILocation(line: 215, column: 1, scope: !121)
!271 = !DILocation(line: 221, column: 30, scope: !121)
!272 = !{!263, !180, i64 16}
!273 = !DILocation(line: 221, column: 1, scope: !121)
!274 = !DILocation(line: 227, column: 30, scope: !121)
!275 = !{!263, !180, i64 24}
!276 = !DILocation(line: 227, column: 1, scope: !121)
!277 = !DILocation(line: 233, column: 30, scope: !121)
!278 = !{!263, !180, i64 32}
!279 = !DILocation(line: 233, column: 1, scope: !121)
!280 = !DILocation(line: 235, column: 1, scope: !121)
!281 = !DILocation(line: 235, column: 13, scope: !121)
!282 = !DILocation(line: 93, column: 13, scope: !110)
!283 = !DILocation(line: 94, column: 13, scope: !110)
!284 = !DILocation(line: 97, column: 8, scope: !110)
!285 = !DILocation(line: 103, column: 12, scope: !286)
!286 = distinct !DILexicalBlock(scope: !110, file: !1, line: 103, column: 6)
!287 = !DILocation(line: 103, column: 26, scope: !286)
!288 = !DILocation(line: 103, column: 20, scope: !286)
!289 = !DILocation(line: 104, column: 12, scope: !290)
!290 = distinct !DILexicalBlock(scope: !286, file: !1, line: 103, column: 36)
!291 = !DILocation(line: 104, column: 4, scope: !290)
!292 = !DILocation(line: 106, column: 4, scope: !290)
!293 = !DILocation(line: 113, column: 1, scope: !110)
!294 = !DILocation(line: 119, column: 1, scope: !110)
!295 = !DILocation(line: 125, column: 28, scope: !296)
!296 = distinct !DILexicalBlock(scope: !110, file: !1, line: 125, column: 6)
!297 = !DILocation(line: 125, column: 12, scope: !296)
!298 = !DILocation(line: 96, column: 8, scope: !110)
!299 = !DILocation(line: 125, column: 36, scope: !296)
!300 = !DILocation(line: 125, column: 6, scope: !110)
!301 = !DILocation(line: 126, column: 12, scope: !302)
!302 = distinct !DILexicalBlock(scope: !296, file: !1, line: 125, column: 43)
!303 = !DILocation(line: 126, column: 4, scope: !302)
!304 = !DILocation(line: 128, column: 4, scope: !302)
!305 = !DILocation(line: 130, column: 17, scope: !110)
!306 = !DILocation(line: 130, column: 8, scope: !110)
!307 = !DILocation(line: 130, column: 15, scope: !110)
!308 = !DILocation(line: 131, column: 17, scope: !110)
!309 = !DILocation(line: 131, column: 8, scope: !110)
!310 = !DILocation(line: 131, column: 15, scope: !110)
!311 = !DILocation(line: 137, column: 35, scope: !110)
!312 = !DILocation(line: 137, column: 1, scope: !110)
!313 = !DILocation(line: 143, column: 33, scope: !110)
!314 = !DILocation(line: 143, column: 1, scope: !110)
!315 = !DILocation(line: 149, column: 33, scope: !110)
!316 = !DILocation(line: 149, column: 1, scope: !110)
!317 = !DILocation(line: 155, column: 33, scope: !110)
!318 = !DILocation(line: 155, column: 1, scope: !110)
!319 = !DILocation(line: 157, column: 1, scope: !110)
!320 = !DILocation(line: 157, column: 13, scope: !110)
!321 = !DILocation(line: 256, column: 13, scope: !127)
!322 = !DILocation(line: 257, column: 12, scope: !127)
!323 = !DILocation(line: 266, column: 12, scope: !324)
!324 = distinct !DILexicalBlock(scope: !127, file: !1, line: 266, column: 6)
!325 = !DILocation(line: 266, column: 26, scope: !324)
!326 = !DILocation(line: 266, column: 20, scope: !324)
!327 = !DILocation(line: 267, column: 12, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !1, line: 266, column: 36)
!329 = !DILocation(line: 267, column: 4, scope: !328)
!330 = !DILocation(line: 269, column: 1, scope: !328)
!331 = !DILocation(line: 275, column: 12, scope: !127)
!332 = !DILocation(line: 260, column: 8, scope: !127)
!333 = !DILocation(line: 260, column: 22, scope: !127)
!334 = !DILocation(line: 277, column: 15, scope: !335)
!335 = distinct !DILexicalBlock(scope: !127, file: !1, line: 277, column: 6)
!336 = !DILocation(line: 277, column: 6, scope: !127)
!337 = !DILocation(line: 278, column: 17, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !1, line: 278, column: 9)
!339 = distinct !DILexicalBlock(scope: !335, file: !1, line: 277, column: 28)
!340 = !DILocation(line: 278, column: 9, scope: !338)
!341 = !DILocation(line: 278, column: 49, scope: !338)
!342 = !DILocation(line: 278, column: 9, scope: !339)
!343 = !DILocation(line: 279, column: 18, scope: !344)
!344 = distinct !DILexicalBlock(scope: !345, file: !1, line: 279, column: 12)
!345 = distinct !DILexicalBlock(scope: !338, file: !1, line: 278, column: 56)
!346 = !DILocation(line: 259, column: 9, scope: !127)
!347 = !DILocation(line: 279, column: 35, scope: !344)
!348 = !DILocation(line: 279, column: 12, scope: !345)
!349 = !DILocation(line: 280, column: 18, scope: !350)
!350 = distinct !DILexicalBlock(scope: !344, file: !1, line: 279, column: 45)
!351 = !DILocation(line: 280, column: 10, scope: !350)
!352 = !DILocation(line: 260, column: 18, scope: !127)
!353 = !DILocation(line: 283, column: 7, scope: !350)
!354 = !DILocation(line: 284, column: 15, scope: !355)
!355 = distinct !DILexicalBlock(scope: !344, file: !1, line: 283, column: 14)
!356 = !DILocation(line: 285, column: 10, scope: !355)
!357 = !DILocation(line: 287, column: 16, scope: !358)
!358 = distinct !DILexicalBlock(scope: !338, file: !1, line: 287, column: 16)
!359 = !DILocation(line: 287, column: 56, scope: !358)
!360 = !DILocation(line: 287, column: 16, scope: !338)
!361 = !DILocation(line: 288, column: 18, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !1, line: 288, column: 12)
!363 = distinct !DILexicalBlock(scope: !358, file: !1, line: 287, column: 63)
!364 = !DILocation(line: 288, column: 34, scope: !362)
!365 = !DILocation(line: 288, column: 12, scope: !363)
!366 = !DILocation(line: 289, column: 18, scope: !367)
!367 = distinct !DILexicalBlock(scope: !362, file: !1, line: 288, column: 44)
!368 = !DILocation(line: 289, column: 10, scope: !367)
!369 = !DILocation(line: 292, column: 7, scope: !367)
!370 = !DILocation(line: 293, column: 15, scope: !371)
!371 = distinct !DILexicalBlock(scope: !362, file: !1, line: 292, column: 14)
!372 = !DILocation(line: 294, column: 10, scope: !371)
!373 = !DILocation(line: 297, column: 18, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !1, line: 297, column: 12)
!375 = distinct !DILexicalBlock(scope: !358, file: !1, line: 296, column: 11)
!376 = !DILocation(line: 297, column: 34, scope: !374)
!377 = !DILocation(line: 297, column: 12, scope: !375)
!378 = !DILocation(line: 298, column: 18, scope: !379)
!379 = distinct !DILexicalBlock(scope: !374, file: !1, line: 297, column: 44)
!380 = !DILocation(line: 298, column: 10, scope: !379)
!381 = !DILocation(line: 301, column: 7, scope: !379)
!382 = !DILocation(line: 302, column: 15, scope: !383)
!383 = distinct !DILexicalBlock(scope: !374, file: !1, line: 301, column: 14)
!384 = !DILocation(line: 303, column: 10, scope: !383)
!385 = !DILocation(line: 307, column: 15, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !1, line: 307, column: 9)
!387 = distinct !DILexicalBlock(scope: !335, file: !1, line: 306, column: 8)
!388 = !DILocation(line: 307, column: 31, scope: !386)
!389 = !DILocation(line: 307, column: 9, scope: !387)
!390 = !DILocation(line: 308, column: 15, scope: !391)
!391 = distinct !DILexicalBlock(scope: !386, file: !1, line: 307, column: 41)
!392 = !DILocation(line: 308, column: 7, scope: !391)
!393 = !DILocation(line: 311, column: 4, scope: !391)
!394 = !DILocation(line: 312, column: 12, scope: !395)
!395 = distinct !DILexicalBlock(scope: !386, file: !1, line: 311, column: 11)
!396 = !DILocation(line: 313, column: 7, scope: !395)
!397 = !DILocation(line: 316, column: 1, scope: !127)
!398 = !DILocation(line: 418, column: 14, scope: !140)
!399 = !DILocation(line: 419, column: 12, scope: !140)
!400 = !DILocation(line: 422, column: 7, scope: !140)
!401 = !DILocation(line: 428, column: 12, scope: !402)
!402 = distinct !DILexicalBlock(scope: !140, file: !1, line: 428, column: 6)
!403 = !DILocation(line: 428, column: 26, scope: !402)
!404 = !DILocation(line: 428, column: 20, scope: !402)
!405 = !DILocation(line: 428, column: 44, scope: !402)
!406 = !DILocation(line: 428, column: 49, scope: !402)
!407 = !DILocation(line: 428, column: 6, scope: !140)
!408 = !DILocation(line: 429, column: 12, scope: !409)
!409 = distinct !DILexicalBlock(scope: !402, file: !1, line: 428, column: 59)
!410 = !DILocation(line: 429, column: 4, scope: !409)
!411 = !DILocation(line: 431, column: 4, scope: !409)
!412 = !DILocation(line: 438, column: 19, scope: !140)
!413 = !DILocation(line: 438, column: 1, scope: !140)
!414 = !DILocation(line: 438, column: 10, scope: !140)
!415 = !DILocation(line: 439, column: 19, scope: !140)
!416 = !DILocation(line: 439, column: 1, scope: !140)
!417 = !DILocation(line: 439, column: 10, scope: !140)
!418 = !DILocation(line: 440, column: 13, scope: !140)
!419 = !DILocation(line: 440, column: 6, scope: !140)
!420 = !DILocation(line: 421, column: 7, scope: !140)
!421 = !DILocation(line: 441, column: 9, scope: !422)
!422 = distinct !DILexicalBlock(scope: !140, file: !1, line: 441, column: 6)
!423 = !DILocation(line: 441, column: 6, scope: !140)
!424 = !DILocation(line: 442, column: 12, scope: !425)
!425 = distinct !DILexicalBlock(scope: !422, file: !1, line: 441, column: 16)
!426 = !DILocation(line: 442, column: 4, scope: !425)
!427 = !DILocation(line: 444, column: 4, scope: !425)
!428 = !DILocation(line: 451, column: 36, scope: !140)
!429 = !DILocation(line: 451, column: 6, scope: !140)
!430 = !DILocation(line: 452, column: 9, scope: !431)
!431 = distinct !DILexicalBlock(scope: !140, file: !1, line: 452, column: 6)
!432 = !DILocation(line: 452, column: 6, scope: !140)
!433 = !DILocation(line: 453, column: 12, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !1, line: 452, column: 15)
!435 = !DILocation(line: 453, column: 4, scope: !434)
!436 = !DILocation(line: 456, column: 4, scope: !434)
!437 = !DILocation(line: 463, column: 34, scope: !140)
!438 = !DILocation(line: 463, column: 6, scope: !140)
!439 = !DILocation(line: 464, column: 9, scope: !440)
!440 = distinct !DILexicalBlock(scope: !140, file: !1, line: 464, column: 6)
!441 = !DILocation(line: 464, column: 6, scope: !140)
!442 = !DILocation(line: 465, column: 12, scope: !443)
!443 = distinct !DILexicalBlock(scope: !440, file: !1, line: 464, column: 15)
!444 = !DILocation(line: 465, column: 4, scope: !443)
!445 = !DILocation(line: 468, column: 4, scope: !443)
!446 = !DILocation(line: 475, column: 34, scope: !140)
!447 = !DILocation(line: 475, column: 6, scope: !140)
!448 = !DILocation(line: 476, column: 9, scope: !449)
!449 = distinct !DILexicalBlock(scope: !140, file: !1, line: 476, column: 6)
!450 = !DILocation(line: 476, column: 6, scope: !140)
!451 = !DILocation(line: 477, column: 12, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !1, line: 476, column: 15)
!453 = !DILocation(line: 477, column: 4, scope: !452)
!454 = !DILocation(line: 480, column: 4, scope: !452)
!455 = !DILocation(line: 487, column: 34, scope: !140)
!456 = !DILocation(line: 487, column: 6, scope: !140)
!457 = !DILocation(line: 488, column: 9, scope: !458)
!458 = distinct !DILexicalBlock(scope: !140, file: !1, line: 488, column: 6)
!459 = !DILocation(line: 488, column: 6, scope: !140)
!460 = !DILocation(line: 489, column: 12, scope: !461)
!461 = distinct !DILexicalBlock(scope: !458, file: !1, line: 488, column: 15)
!462 = !DILocation(line: 489, column: 4, scope: !461)
!463 = !DILocation(line: 492, column: 4, scope: !461)
!464 = !DILocation(line: 495, column: 13, scope: !140)
!465 = !DILocation(line: 330, column: 13, scope: !135)
!466 = !DILocation(line: 331, column: 13, scope: !135)
!467 = !DILocation(line: 339, column: 12, scope: !468)
!468 = distinct !DILexicalBlock(scope: !135, file: !1, line: 339, column: 6)
!469 = !DILocation(line: 339, column: 26, scope: !468)
!470 = !DILocation(line: 339, column: 20, scope: !468)
!471 = !DILocation(line: 339, column: 44, scope: !468)
!472 = !DILocation(line: 339, column: 49, scope: !468)
!473 = !DILocation(line: 339, column: 6, scope: !135)
!474 = !DILocation(line: 340, column: 12, scope: !475)
!475 = distinct !DILexicalBlock(scope: !468, file: !1, line: 339, column: 59)
!476 = !DILocation(line: 340, column: 4, scope: !475)
!477 = !DILocation(line: 342, column: 4, scope: !475)
!478 = !DILocation(line: 349, column: 37, scope: !135)
!479 = !DILocation(line: 349, column: 52, scope: !135)
!480 = !DILocation(line: 349, column: 6, scope: !135)
!481 = !DILocation(line: 333, column: 7, scope: !135)
!482 = !DILocation(line: 350, column: 9, scope: !483)
!483 = distinct !DILexicalBlock(scope: !135, file: !1, line: 350, column: 6)
!484 = !DILocation(line: 350, column: 6, scope: !135)
!485 = !DILocation(line: 351, column: 12, scope: !486)
!486 = distinct !DILexicalBlock(scope: !483, file: !1, line: 350, column: 15)
!487 = !DILocation(line: 351, column: 4, scope: !486)
!488 = !DILocation(line: 353, column: 4, scope: !486)
!489 = !DILocation(line: 360, column: 39, scope: !135)
!490 = !DILocation(line: 360, column: 6, scope: !135)
!491 = !DILocation(line: 361, column: 9, scope: !492)
!492 = distinct !DILexicalBlock(scope: !135, file: !1, line: 361, column: 6)
!493 = !DILocation(line: 361, column: 6, scope: !135)
!494 = !DILocation(line: 362, column: 12, scope: !495)
!495 = distinct !DILexicalBlock(scope: !492, file: !1, line: 361, column: 15)
!496 = !DILocation(line: 362, column: 4, scope: !495)
!497 = !DILocation(line: 365, column: 4, scope: !495)
!498 = !DILocation(line: 372, column: 37, scope: !135)
!499 = !DILocation(line: 372, column: 6, scope: !135)
!500 = !DILocation(line: 373, column: 9, scope: !501)
!501 = distinct !DILexicalBlock(scope: !135, file: !1, line: 373, column: 6)
!502 = !DILocation(line: 373, column: 6, scope: !135)
!503 = !DILocation(line: 374, column: 12, scope: !504)
!504 = distinct !DILexicalBlock(scope: !501, file: !1, line: 373, column: 15)
!505 = !DILocation(line: 374, column: 4, scope: !504)
!506 = !DILocation(line: 377, column: 4, scope: !504)
!507 = !DILocation(line: 384, column: 37, scope: !135)
!508 = !DILocation(line: 384, column: 6, scope: !135)
!509 = !DILocation(line: 385, column: 9, scope: !510)
!510 = distinct !DILexicalBlock(scope: !135, file: !1, line: 385, column: 6)
!511 = !DILocation(line: 385, column: 6, scope: !135)
!512 = !DILocation(line: 386, column: 12, scope: !513)
!513 = distinct !DILexicalBlock(scope: !510, file: !1, line: 385, column: 15)
!514 = !DILocation(line: 386, column: 4, scope: !513)
!515 = !DILocation(line: 389, column: 4, scope: !513)
!516 = !DILocation(line: 396, column: 37, scope: !135)
!517 = !DILocation(line: 396, column: 6, scope: !135)
!518 = !DILocation(line: 397, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !135, file: !1, line: 397, column: 6)
!520 = !DILocation(line: 397, column: 6, scope: !135)
!521 = !DILocation(line: 398, column: 12, scope: !522)
!522 = distinct !DILexicalBlock(scope: !519, file: !1, line: 397, column: 15)
!523 = !DILocation(line: 398, column: 4, scope: !522)
!524 = !DILocation(line: 401, column: 4, scope: !522)
!525 = !DILocation(line: 404, column: 13, scope: !135)
!526 = !DILocation(line: 509, column: 14, scope: !146)
!527 = !DILocation(line: 510, column: 12, scope: !146)
!528 = !DILocation(line: 515, column: 12, scope: !529)
!529 = distinct !DILexicalBlock(scope: !146, file: !1, line: 515, column: 6)
!530 = !DILocation(line: 515, column: 26, scope: !529)
!531 = !DILocation(line: 515, column: 20, scope: !529)
!532 = !DILocation(line: 515, column: 54, scope: !529)
!533 = !DILocation(line: 512, column: 7, scope: !146)
!534 = !DILocation(line: 515, column: 62, scope: !529)
!535 = !DILocation(line: 515, column: 6, scope: !146)
!536 = !DILocation(line: 516, column: 12, scope: !537)
!537 = distinct !DILexicalBlock(scope: !529, file: !1, line: 515, column: 69)
!538 = !DILocation(line: 516, column: 4, scope: !537)
!539 = !DILocation(line: 518, column: 4, scope: !537)
!540 = !DILocation(line: 520, column: 12, scope: !541)
!541 = distinct !DILexicalBlock(scope: !146, file: !1, line: 520, column: 6)
!542 = !DILocation(line: 512, column: 15, scope: !146)
!543 = !DILocation(line: 520, column: 41, scope: !541)
!544 = !DILocation(line: 520, column: 6, scope: !146)
!545 = !DILocation(line: 521, column: 12, scope: !546)
!546 = distinct !DILexicalBlock(scope: !541, file: !1, line: 520, column: 48)
!547 = !DILocation(line: 521, column: 4, scope: !546)
!548 = !DILocation(line: 524, column: 4, scope: !546)
!549 = !DILocation(line: 526, column: 14, scope: !146)
!550 = !DILocation(line: 526, column: 20, scope: !146)
!551 = !{!552, !180, i64 8}
!552 = !{!"_Tree", !259, i64 0, !259, i64 4, !180, i64 8, !180, i64 16, !180, i64 24}
!553 = !DILocation(line: 513, column: 36, scope: !146)
!554 = !DILocation(line: 527, column: 20, scope: !146)
!555 = !{!552, !180, i64 16}
!556 = !DILocation(line: 513, column: 19, scope: !146)
!557 = !DILocation(line: 528, column: 20, scope: !146)
!558 = !{!552, !180, i64 24}
!559 = !DILocation(line: 513, column: 42, scope: !146)
!560 = !DILocation(line: 529, column: 30, scope: !146)
!561 = !DILocation(line: 529, column: 12, scope: !146)
!562 = !DILocation(line: 513, column: 25, scope: !146)
!563 = !DILocation(line: 530, column: 30, scope: !146)
!564 = !DILocation(line: 530, column: 12, scope: !146)
!565 = !DILocation(line: 513, column: 8, scope: !146)
!566 = !DILocation(line: 531, column: 1, scope: !146)
!567 = !DILocation(line: 512, column: 19, scope: !146)
!568 = !DILocation(line: 533, column: 1, scope: !569)
!569 = distinct !DILexicalBlock(scope: !146, file: !1, line: 533, column: 1)
!570 = !DILocation(line: 535, column: 14, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !1, line: 533, column: 34)
!572 = distinct !DILexicalBlock(scope: !569, file: !1, line: 533, column: 1)
!573 = !DILocation(line: 535, column: 22, scope: !571)
!574 = !DILocation(line: 535, column: 30, scope: !571)
!575 = !DILocation(line: 535, column: 38, scope: !571)
!576 = !DILocation(line: 535, column: 51, scope: !571)
!577 = !DILocation(line: 534, column: 4, scope: !571)
!578 = !DILocation(line: 537, column: 1, scope: !146)
!579 = !DILocation(line: 538, column: 1, scope: !146)
!580 = !DILocation(line: 539, column: 28, scope: !146)
!581 = !DILocation(line: 539, column: 1, scope: !146)
!582 = !DILocation(line: 540, column: 1, scope: !146)
!583 = !DILocation(line: 542, column: 1, scope: !146)
!584 = !DILocation(line: 542, column: 13, scope: !146)
!585 = !DILocation(line: 556, column: 14, scope: !158)
!586 = !DILocation(line: 557, column: 12, scope: !158)
!587 = !DILocation(line: 565, column: 12, scope: !588)
!588 = distinct !DILexicalBlock(scope: !158, file: !1, line: 565, column: 6)
!589 = !DILocation(line: 565, column: 26, scope: !588)
!590 = !DILocation(line: 565, column: 20, scope: !588)
!591 = !DILocation(line: 566, column: 12, scope: !592)
!592 = distinct !DILexicalBlock(scope: !588, file: !1, line: 565, column: 36)
!593 = !DILocation(line: 566, column: 4, scope: !592)
!594 = !DILocation(line: 568, column: 4, scope: !592)
!595 = !DILocation(line: 572, column: 14, scope: !158)
!596 = !DILocation(line: 572, column: 29, scope: !158)
!597 = !DILocation(line: 572, column: 35, scope: !158)
!598 = !DILocation(line: 570, column: 6, scope: !158)
!599 = !DILocation(line: 559, column: 7, scope: !158)
!600 = !DILocation(line: 573, column: 9, scope: !601)
!601 = distinct !DILexicalBlock(scope: !158, file: !1, line: 573, column: 6)
!602 = !DILocation(line: 573, column: 6, scope: !158)
!603 = !DILocation(line: 574, column: 12, scope: !604)
!604 = distinct !DILexicalBlock(scope: !601, file: !1, line: 573, column: 15)
!605 = !DILocation(line: 574, column: 4, scope: !604)
!606 = !DILocation(line: 576, column: 4, scope: !604)
!607 = !DILocation(line: 578, column: 13, scope: !158)
