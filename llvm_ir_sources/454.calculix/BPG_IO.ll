; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A error in BPG_readFromFile(%p,%s)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"\0A error in BPG_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [102 x i8] c"\0A error in BPG_readFromFile(%p,%s)\0A bad BPG file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [56 x i8] c"\0A error in BPG_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [66 x i8] c"\0A error in BPG_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [121 x i8] c"\0A error in BPG_readFromFormattedFile(%p,%p)\0A trying to read in Graph\0A return code %d from Graph_readFormattedFile(%p,%p)\00", align 1
@.str8 = private unnamed_addr constant [59 x i8] c"\0A fatal error in BPG_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [63 x i8] c"\0A error in BPG_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str10 = private unnamed_addr constant [115 x i8] c"\0A error in BPG_readFromBinaryFile(%p,%p)\0A trying to read in Graph\0A return code %d from Graph_readBinaryFile(%p,%p)\00", align 1
@.str11 = private unnamed_addr constant [52 x i8] c"\0A fatal error in BPG_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str13 = private unnamed_addr constant [58 x i8] c"\0A error in BPG_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str16 = private unnamed_addr constant [61 x i8] c"\0A fatal error in BPG_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str17 = private unnamed_addr constant [8 x i8] c"\0A %d %d\00", align 1
@.str18 = private unnamed_addr constant [86 x i8] c"\0A fatal error in BPG_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str19 = private unnamed_addr constant [143 x i8] c"\0A fatal error in BPG_writeToFormattedFile(%p,%p)\0A rc = %d, return from Graph_writeToFormattedFile(%p,%p)\0A while attempting to write out graph\0A\00", align 1
@.str20 = private unnamed_addr constant [58 x i8] c"\0A fatal error in BPG_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str21 = private unnamed_addr constant [72 x i8] c"\0A error in BPG_writeToBinaryFile(%p,%p)\0A %d of %d scalar items written\0A\00", align 1
@.str22 = private unnamed_addr constant [137 x i8] c"\0A fatal error in BPG_writeToBinaryFile(%p,%p)\0A rc = %d, return from Graph_writeToBinaryFile(%p,%p)\0A while attempting to write out graph\0A\00", align 1
@.str23 = private unnamed_addr constant [57 x i8] c"\0A fatal error in BPG_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str24 = private unnamed_addr constant [90 x i8] c"\0A fatal error in BPG_writeForHumanEye(%p,%p)\0A rc = %d, return from BPG_writeStats(%p,%p)\0A\00", align 1
@.str25 = private unnamed_addr constant [16 x i8] c"\0A\0A Graph object\00", align 1
@.str26 = private unnamed_addr constant [135 x i8] c"\0A fatal error in BPG_writeForHumanEye(%p,%p)\0A rc = %d, return from Graph_writeForHumanEye(%p,%p)\0A while attempting to write out graph\0A\00", align 1
@.str27 = private unnamed_addr constant [45 x i8] c"\0A error in BPG_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str28 = private unnamed_addr constant [55 x i8] c"\0A warning in BPG_writeStats(%p,%p)\0A bpg->graph = NULL\0A\00", align 1
@.str29 = private unnamed_addr constant [32 x i8] c"\0A BPG : unweighted bpg object :\00", align 1
@.str30 = private unnamed_addr constant [39 x i8] c"\0A BPG : vertices weighted bpg object :\00", align 1
@.str31 = private unnamed_addr constant [36 x i8] c"\0A BPG : edges weighted bpg object :\00", align 1
@.str32 = private unnamed_addr constant [49 x i8] c"\0A BPG : vertices and edges weighted bpg object :\00", align 1
@.str33 = private unnamed_addr constant [67 x i8] c"\0A fatal error in BPG_writeStats(%p,%p)\0A invalid bpg->g->type = %d\0A\00", align 1
@.str34 = private unnamed_addr constant [18 x i8] c" nX = %d, nY = %d\00", align 1
@.str35 = private unnamed_addr constant [21 x i8] c", |X| = %d, |Y| = %d\00", align 1
@.str36 = private unnamed_addr constant [70 x i8] c"\0A fatal error in BPG_writeStats(%p,%p)\0A rc = %d, return from fprintf\0A\00", align 1
@.str37 = private unnamed_addr constant [6 x i8] c".bpgb\00", align 1
@.str38 = private unnamed_addr constant [6 x i8] c".bpgf\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BPG_readFromFile(%struct._BPG* %bpg, i8* %fn) #0 {
  tail call void @llvm.dbg.value(metadata %struct._BPG* %bpg, i64 0, metadata !58, metadata !188), !dbg !189
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !59, metadata !188), !dbg !190
  %1 = icmp eq %struct._BPG* %bpg, null, !dbg !191
  %2 = icmp eq i8* %fn, null, !dbg !193
  %or.cond = or i1 %1, %2, !dbg !194
  br i1 %or.cond, label %3, label %6, !dbg !194

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !195, !tbaa !197
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn) #7, !dbg !201
  br label %43, !dbg !202

; <label>:6                                       ; preds = %0
  %7 = tail call i64 @strlen(i8* %fn) #7, !dbg !203
  %8 = trunc i64 %7 to i32, !dbg !203
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !121, metadata !188), !dbg !204
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !123, metadata !188), !dbg !205
  %9 = icmp sgt i32 %8, 5, !dbg !206
  br i1 %9, label %10, label %40, !dbg !208

; <label>:10                                      ; preds = %6
  %11 = shl i64 %7, 32, !dbg !209
  %sext = add i64 %11, -21474836480, !dbg !209
  %12 = ashr exact i64 %sext, 32, !dbg !209
  %13 = getelementptr inbounds i8* %fn, i64 %12, !dbg !209
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0)) #7, !dbg !212
  %15 = icmp eq i32 %14, 0, !dbg !213
  br i1 %15, label %16, label %25, !dbg !214

; <label>:16                                      ; preds = %10
  %17 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !215
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %17, i64 0, metadata !60, metadata !188), !dbg !218
  %18 = icmp eq %struct.__sFILE* %17, null, !dbg !219
  br i1 %18, label %19, label %22, !dbg !220

; <label>:19                                      ; preds = %16
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !221, !tbaa !197
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #7, !dbg !223
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !122, metadata !188), !dbg !224
  br label %43, !dbg !225

; <label>:22                                      ; preds = %16
  %23 = tail call i32 @BPG_readFromBinaryFile(%struct._BPG* %bpg, %struct.__sFILE* %17) #8, !dbg !226
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !122, metadata !188), !dbg !224
  %24 = tail call i32 @fclose(%struct.__sFILE* %17) #7, !dbg !228
  br label %43

; <label>:25                                      ; preds = %10
  %26 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8]* @.str38, i64 0, i64 0)) #7, !dbg !229
  %27 = icmp eq i32 %26, 0, !dbg !231
  br i1 %27, label %28, label %37, !dbg !232

; <label>:28                                      ; preds = %25
  %29 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !233
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %29, i64 0, metadata !60, metadata !188), !dbg !218
  %30 = icmp eq %struct.__sFILE* %29, null, !dbg !236
  br i1 %30, label %31, label %34, !dbg !237

; <label>:31                                      ; preds = %28
  %32 = load %struct.__sFILE** @__stderrp, align 8, !dbg !238, !tbaa !197
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #7, !dbg !240
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !122, metadata !188), !dbg !224
  br label %43, !dbg !241

; <label>:34                                      ; preds = %28
  %35 = tail call i32 @BPG_readFromFormattedFile(%struct._BPG* %bpg, %struct.__sFILE* %29) #8, !dbg !242
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !122, metadata !188), !dbg !224
  %36 = tail call i32 @fclose(%struct.__sFILE* %29) #7, !dbg !244
  br label %43

; <label>:37                                      ; preds = %25
  %38 = load %struct.__sFILE** @__stderrp, align 8, !dbg !245, !tbaa !197
  %39 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %38, i8* getelementptr inbounds ([102 x i8]* @.str4, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn, i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str38, i64 0, i64 0)) #7, !dbg !247
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !122, metadata !188), !dbg !224
  br label %43

; <label>:40                                      ; preds = %6
  %41 = load %struct.__sFILE** @__stderrp, align 8, !dbg !248, !tbaa !197
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([102 x i8]* @.str4, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn, i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str38, i64 0, i64 0)) #7, !dbg !250
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !122, metadata !188), !dbg !224
  br label %43

; <label>:43                                      ; preds = %40, %37, %34, %31, %19, %22, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %19 ], [ %23, %22 ], [ 0, %31 ], [ %35, %34 ], [ 0, %37 ], [ 0, %40 ]
  ret i32 %.0, !dbg !251
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
define i32 @BPG_readFromBinaryFile(%struct._BPG* %bpg, %struct.__sFILE* %fp) #0 {
  %itemp = alloca [2 x i32], align 4
  tail call void @llvm.dbg.value(metadata %struct._BPG* %bpg, i64 0, metadata !140, metadata !188), !dbg !252
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !141, metadata !188), !dbg !253
  tail call void @llvm.dbg.declare(metadata [2 x i32]* %itemp, metadata !146, metadata !188), !dbg !254
  %1 = icmp eq %struct._BPG* %bpg, null, !dbg !255
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !257
  %or.cond = or i1 %1, %2, !dbg !258
  br i1 %or.cond, label %3, label %6, !dbg !258

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !259, !tbaa !197
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([59 x i8]* @.str8, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp) #7, !dbg !261
  br label %26, !dbg !262

; <label>:6                                       ; preds = %0
  tail call void @BPG_clearData(%struct._BPG* %bpg) #7, !dbg !263
  %7 = bitcast [2 x i32]* %itemp to i8*, !dbg !264
  %8 = call i64 @fread(i8* %7, i64 4, i64 2, %struct.__sFILE* %fp) #7, !dbg !266
  %9 = trunc i64 %8 to i32, !dbg !266
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !145, metadata !188), !dbg !267
  %10 = icmp eq i32 %9, 2, !dbg !268
  br i1 %10, label %14, label %11, !dbg !269

; <label>:11                                      ; preds = %6
  %12 = load %struct.__sFILE** @__stderrp, align 8, !dbg !270, !tbaa !197
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([63 x i8]* @.str9, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp, i32 %9, i32 2) #7, !dbg !272
  br label %26, !dbg !273

; <label>:14                                      ; preds = %6
  %15 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0, !dbg !274
  %16 = load i32* %15, align 4, !dbg !274, !tbaa !275
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !143, metadata !188), !dbg !277
  %17 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1, !dbg !278
  %18 = load i32* %17, align 4, !dbg !278, !tbaa !275
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !144, metadata !188), !dbg !279
  %19 = tail call %struct._Graph* @Graph_new() #7, !dbg !280
  tail call void @llvm.dbg.value(metadata %struct._Graph* %19, i64 0, metadata !142, metadata !188), !dbg !281
  tail call void @Graph_setDefaultFields(%struct._Graph* %19) #7, !dbg !282
  %20 = tail call i32 @Graph_readFromBinaryFile(%struct._Graph* %19, %struct.__sFILE* %fp) #7, !dbg !283
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !145, metadata !188), !dbg !267
  %21 = icmp eq i32 %20, 1, !dbg !284
  br i1 %21, label %25, label %22, !dbg !286

; <label>:22                                      ; preds = %14
  %23 = load %struct.__sFILE** @__stderrp, align 8, !dbg !287, !tbaa !197
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([115 x i8]* @.str10, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp, i32 %20, %struct._Graph* %19, %struct.__sFILE* %fp) #7, !dbg !289
  br label %26, !dbg !290

; <label>:25                                      ; preds = %14
  tail call void @BPG_init(%struct._BPG* %bpg, i32 %16, i32 %18, %struct._Graph* %19) #7, !dbg !291
  br label %26, !dbg !292

; <label>:26                                      ; preds = %25, %22, %11, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %11 ], [ 0, %22 ], [ 1, %25 ]
  ret i32 %.0, !dbg !293
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BPG_readFromFormattedFile(%struct._BPG* %bpg, %struct.__sFILE* %fp) #0 {
  %itemp = alloca [2 x i32], align 4
  tail call void @llvm.dbg.value(metadata %struct._BPG* %bpg, i64 0, metadata !128, metadata !188), !dbg !294
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !129, metadata !188), !dbg !295
  tail call void @llvm.dbg.declare(metadata [2 x i32]* %itemp, metadata !134, metadata !188), !dbg !296
  %1 = icmp eq %struct._BPG* %bpg, null, !dbg !297
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !299
  %or.cond = or i1 %1, %2, !dbg !300
  br i1 %or.cond, label %3, label %6, !dbg !300

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !301, !tbaa !197
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([56 x i8]* @.str5, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp) #7, !dbg !303
  br label %24, !dbg !304

; <label>:6                                       ; preds = %0
  tail call void @BPG_clearData(%struct._BPG* %bpg) #7, !dbg !305
  %7 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0, !dbg !306
  %8 = call i32 @IVfscanf(%struct.__sFILE* %fp, i32 2, i32* %7) #7, !dbg !308
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !133, metadata !188), !dbg !309
  %9 = icmp eq i32 %8, 2, !dbg !310
  br i1 %9, label %13, label %10, !dbg !311

; <label>:10                                      ; preds = %6
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !312, !tbaa !197
  %12 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([66 x i8]* @.str6, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp, i32 %8, i32 2) #7, !dbg !314
  br label %24, !dbg !315

; <label>:13                                      ; preds = %6
  %14 = load i32* %7, align 4, !dbg !316, !tbaa !275
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !131, metadata !188), !dbg !317
  %15 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1, !dbg !318
  %16 = load i32* %15, align 4, !dbg !318, !tbaa !275
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !132, metadata !188), !dbg !319
  %17 = call %struct._Graph* @Graph_new() #7, !dbg !320
  call void @llvm.dbg.value(metadata %struct._Graph* %17, i64 0, metadata !130, metadata !188), !dbg !321
  call void @Graph_setDefaultFields(%struct._Graph* %17) #7, !dbg !322
  %18 = call i32 @Graph_readFromFormattedFile(%struct._Graph* %17, %struct.__sFILE* %fp) #7, !dbg !323
  call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !133, metadata !188), !dbg !309
  %19 = icmp eq i32 %18, 1, !dbg !324
  br i1 %19, label %23, label %20, !dbg !326

; <label>:20                                      ; preds = %13
  %21 = load %struct.__sFILE** @__stderrp, align 8, !dbg !327, !tbaa !197
  %22 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([121 x i8]* @.str7, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp, i32 %18, %struct._Graph* %17, %struct.__sFILE* %fp) #7, !dbg !329
  br label %24, !dbg !330

; <label>:23                                      ; preds = %13
  call void @BPG_init(%struct._BPG* %bpg, i32 %14, i32 %16, %struct._Graph* %17) #7, !dbg !331
  br label %24, !dbg !332

; <label>:24                                      ; preds = %23, %20, %10, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %10 ], [ 0, %20 ], [ 1, %23 ]
  ret i32 %.0, !dbg !333
}

; Function Attrs: optsize
declare void @BPG_clearData(%struct._BPG*) #4

; Function Attrs: optsize
declare i32 @IVfscanf(%struct.__sFILE*, i32, i32*) #4

; Function Attrs: optsize
declare %struct._Graph* @Graph_new() #4

; Function Attrs: optsize
declare void @Graph_setDefaultFields(%struct._Graph*) #4

; Function Attrs: optsize
declare i32 @Graph_readFromFormattedFile(%struct._Graph*, %struct.__sFILE*) #4

; Function Attrs: optsize
declare void @BPG_init(%struct._BPG*, i32, i32, %struct._Graph*) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #2

; Function Attrs: optsize
declare i32 @Graph_readFromBinaryFile(%struct._Graph*, %struct.__sFILE*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BPG_writeToFile(%struct._BPG* %bpg, i8* %fn) #0 {
  tail call void @llvm.dbg.value(metadata %struct._BPG* %bpg, i64 0, metadata !149, metadata !188), !dbg !334
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !150, metadata !188), !dbg !335
  %1 = icmp eq %struct._BPG* %bpg, null, !dbg !336
  %2 = icmp eq i8* %fn, null, !dbg !338
  %or.cond = or i1 %1, %2, !dbg !339
  br i1 %or.cond, label %3, label %6, !dbg !339

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !340, !tbaa !197
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([52 x i8]* @.str11, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn) #7, !dbg !342
  br label %55, !dbg !343

; <label>:6                                       ; preds = %0
  %7 = tail call i64 @strlen(i8* %fn) #7, !dbg !344
  %8 = trunc i64 %7 to i32, !dbg !344
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !152, metadata !188), !dbg !345
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !154, metadata !188), !dbg !346
  %9 = icmp sgt i32 %8, 5, !dbg !347
  br i1 %9, label %10, label %46, !dbg !349

; <label>:10                                      ; preds = %6
  %11 = shl i64 %7, 32, !dbg !350
  %sext = add i64 %11, -21474836480, !dbg !350
  %12 = ashr exact i64 %sext, 32, !dbg !350
  %13 = getelementptr inbounds i8* %fn, i64 %12, !dbg !350
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0)) #7, !dbg !353
  %15 = icmp eq i32 %14, 0, !dbg !354
  br i1 %15, label %16, label %25, !dbg !355

; <label>:16                                      ; preds = %10
  %17 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0)) #7, !dbg !356
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %17, i64 0, metadata !151, metadata !188), !dbg !359
  %18 = icmp eq %struct.__sFILE* %17, null, !dbg !360
  br i1 %18, label %19, label %22, !dbg !361

; <label>:19                                      ; preds = %16
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !362, !tbaa !197
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #7, !dbg !364
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !153, metadata !188), !dbg !365
  br label %55, !dbg !366

; <label>:22                                      ; preds = %16
  %23 = tail call i32 @BPG_writeToBinaryFile(%struct._BPG* %bpg, %struct.__sFILE* %17) #8, !dbg !367
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !153, metadata !188), !dbg !365
  %24 = tail call i32 @fclose(%struct.__sFILE* %17) #7, !dbg !369
  br label %55

; <label>:25                                      ; preds = %10
  %26 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8]* @.str38, i64 0, i64 0)) #7, !dbg !370
  %27 = icmp eq i32 %26, 0, !dbg !372
  br i1 %27, label %28, label %37, !dbg !373

; <label>:28                                      ; preds = %25
  %29 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !374
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %29, i64 0, metadata !151, metadata !188), !dbg !359
  %30 = icmp eq %struct.__sFILE* %29, null, !dbg !377
  br i1 %30, label %31, label %34, !dbg !378

; <label>:31                                      ; preds = %28
  %32 = load %struct.__sFILE** @__stderrp, align 8, !dbg !379, !tbaa !197
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #7, !dbg !381
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !153, metadata !188), !dbg !365
  br label %55, !dbg !382

; <label>:34                                      ; preds = %28
  %35 = tail call i32 @BPG_writeToFormattedFile(%struct._BPG* %bpg, %struct.__sFILE* %29) #8, !dbg !383
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !153, metadata !188), !dbg !365
  %36 = tail call i32 @fclose(%struct.__sFILE* %29) #7, !dbg !385
  br label %55

; <label>:37                                      ; preds = %25
  %38 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !386
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %38, i64 0, metadata !151, metadata !188), !dbg !359
  %39 = icmp eq %struct.__sFILE* %38, null, !dbg !389
  br i1 %39, label %40, label %43, !dbg !390

; <label>:40                                      ; preds = %37
  %41 = load %struct.__sFILE** @__stderrp, align 8, !dbg !391, !tbaa !197
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #7, !dbg !393
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !153, metadata !188), !dbg !365
  br label %55, !dbg !394

; <label>:43                                      ; preds = %37
  %44 = tail call i32 @BPG_writeForHumanEye(%struct._BPG* %bpg, %struct.__sFILE* %38) #8, !dbg !395
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !153, metadata !188), !dbg !365
  %45 = tail call i32 @fclose(%struct.__sFILE* %38) #7, !dbg !397
  br label %55

; <label>:46                                      ; preds = %6
  %47 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !398
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %47, i64 0, metadata !151, metadata !188), !dbg !359
  %48 = icmp eq %struct.__sFILE* %47, null, !dbg !401
  br i1 %48, label %49, label %52, !dbg !402

; <label>:49                                      ; preds = %46
  %50 = load %struct.__sFILE** @__stderrp, align 8, !dbg !403, !tbaa !197
  %51 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %50, i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #7, !dbg !405
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !153, metadata !188), !dbg !365
  br label %55, !dbg !406

; <label>:52                                      ; preds = %46
  %53 = tail call i32 @BPG_writeForHumanEye(%struct._BPG* %bpg, %struct.__sFILE* %47) #8, !dbg !407
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !153, metadata !188), !dbg !365
  %54 = tail call i32 @fclose(%struct.__sFILE* %47) #7, !dbg !409
  br label %55

; <label>:55                                      ; preds = %34, %31, %43, %40, %19, %22, %52, %49, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %19 ], [ %23, %22 ], [ 0, %31 ], [ %35, %34 ], [ 0, %40 ], [ %44, %43 ], [ 0, %49 ], [ %53, %52 ]
  ret i32 %.0, !dbg !410
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BPG_writeToBinaryFile(%struct._BPG* %bpg, %struct.__sFILE* %fp) #0 {
  %itemp = alloca [6 x i32], align 16
  tail call void @llvm.dbg.value(metadata %struct._BPG* %bpg, i64 0, metadata !163, metadata !188), !dbg !411
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !164, metadata !188), !dbg !412
  tail call void @llvm.dbg.declare(metadata [6 x i32]* %itemp, metadata !166, metadata !188), !dbg !413
  %1 = icmp eq %struct._BPG* %bpg, null, !dbg !414
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !416
  %or.cond = or i1 %1, %2, !dbg !417
  br i1 %or.cond, label %3, label %6, !dbg !417

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !418, !tbaa !197
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str20, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp) #7, !dbg !420
  br label %29, !dbg !421

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0, !dbg !422
  %8 = load i32* %7, align 4, !dbg !422, !tbaa !423
  %9 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 0, !dbg !425
  store i32 %8, i32* %9, align 16, !dbg !426, !tbaa !275
  %10 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1, !dbg !427
  %11 = load i32* %10, align 4, !dbg !427, !tbaa !428
  %12 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 1, !dbg !429
  store i32 %11, i32* %12, align 4, !dbg !430, !tbaa !275
  %13 = bitcast [6 x i32]* %itemp to i8*, !dbg !431
  %14 = call i64 @"\01_fwrite"(i8* %13, i64 4, i64 6, %struct.__sFILE* %fp) #7, !dbg !432
  %15 = trunc i64 %14 to i32, !dbg !432
  call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !165, metadata !188), !dbg !433
  %16 = icmp eq i32 %15, 6, !dbg !434
  br i1 %16, label %20, label %17, !dbg !436

; <label>:17                                      ; preds = %6
  %18 = load %struct.__sFILE** @__stderrp, align 8, !dbg !437, !tbaa !197
  %19 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([72 x i8]* @.str21, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp, i32 %15, i32 6) #7, !dbg !439
  br label %29, !dbg !440

; <label>:20                                      ; preds = %6
  %21 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !441
  %22 = load %struct._Graph** %21, align 8, !dbg !441, !tbaa !442
  %23 = call i32 @Graph_writeToBinaryFile(%struct._Graph* %22, %struct.__sFILE* %fp) #7, !dbg !443
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !165, metadata !188), !dbg !433
  %24 = icmp slt i32 %23, 0, !dbg !444
  br i1 %24, label %25, label %29, !dbg !446

; <label>:25                                      ; preds = %20
  %26 = load %struct.__sFILE** @__stderrp, align 8, !dbg !447, !tbaa !197
  %27 = load %struct._Graph** %21, align 8, !dbg !449, !tbaa !442
  %28 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %26, i8* getelementptr inbounds ([137 x i8]* @.str22, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp, i32 %23, %struct._Graph* %27, %struct.__sFILE* %fp) #7, !dbg !450
  br label %29, !dbg !451

; <label>:29                                      ; preds = %20, %25, %17, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %17 ], [ 0, %25 ], [ 1, %20 ]
  ret i32 %.0, !dbg !452
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BPG_writeToFormattedFile(%struct._BPG* %bpg, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._BPG* %bpg, i64 0, metadata !157, metadata !188), !dbg !453
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !158, metadata !188), !dbg !454
  %1 = icmp eq %struct._BPG* %bpg, null, !dbg !455
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !457
  %or.cond = or i1 %1, %2, !dbg !458
  br i1 %or.cond, label %3, label %6, !dbg !458

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !459, !tbaa !197
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([61 x i8]* @.str16, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp) #7, !dbg !461
  br label %25, !dbg !462

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0, !dbg !463
  %8 = load i32* %7, align 4, !dbg !463, !tbaa !423
  %9 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1, !dbg !464
  %10 = load i32* %9, align 4, !dbg !464, !tbaa !428
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str17, i64 0, i64 0), i32 %8, i32 %10) #7, !dbg !465
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !160, metadata !188), !dbg !466
  %12 = icmp slt i32 %11, 0, !dbg !467
  br i1 %12, label %13, label %16, !dbg !469

; <label>:13                                      ; preds = %6
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !470, !tbaa !197
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([86 x i8]* @.str18, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp, i32 %11) #7, !dbg !472
  br label %25, !dbg !473

; <label>:16                                      ; preds = %6
  %17 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !474
  %18 = load %struct._Graph** %17, align 8, !dbg !474, !tbaa !442
  %19 = tail call i32 @Graph_writeToFormattedFile(%struct._Graph* %18, %struct.__sFILE* %fp) #7, !dbg !475
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !160, metadata !188), !dbg !466
  %20 = icmp slt i32 %19, 0, !dbg !476
  br i1 %20, label %21, label %25, !dbg !478

; <label>:21                                      ; preds = %16
  %22 = load %struct.__sFILE** @__stderrp, align 8, !dbg !479, !tbaa !197
  %23 = load %struct._Graph** %17, align 8, !dbg !481, !tbaa !442
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([143 x i8]* @.str19, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp, i32 %19, %struct._Graph* %23, %struct.__sFILE* %fp) #7, !dbg !482
  br label %25, !dbg !483

; <label>:25                                      ; preds = %16, %21, %13, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %13 ], [ 0, %21 ], [ 1, %16 ]
  ret i32 %.0, !dbg !484
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BPG_writeForHumanEye(%struct._BPG* %bpg, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._BPG* %bpg, i64 0, metadata !172, metadata !188), !dbg !485
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !173, metadata !188), !dbg !486
  %1 = icmp eq %struct._BPG* %bpg, null, !dbg !487
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !489
  %or.cond = or i1 %1, %2, !dbg !490
  br i1 %or.cond, label %3, label %6, !dbg !490

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !491, !tbaa !197
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([57 x i8]* @.str23, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp) #7, !dbg !493
  tail call void @exit(i32 -1) #9, !dbg !494
  unreachable, !dbg !494

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @BPG_writeStats(%struct._BPG* %bpg, %struct.__sFILE* %fp) #8, !dbg !495
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !175, metadata !188), !dbg !497
  %8 = icmp eq i32 %7, 0, !dbg !498
  br i1 %8, label %9, label %12, !dbg !499

; <label>:9                                       ; preds = %6
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !500, !tbaa !197
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([90 x i8]* @.str24, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp, i32 0, %struct._BPG* %bpg, %struct.__sFILE* %fp) #7, !dbg !502
  br label %26, !dbg !503

; <label>:12                                      ; preds = %6
  %13 = tail call i32 @fflush(%struct.__sFILE* %fp) #7, !dbg !504
  %14 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !505
  %15 = load %struct._Graph** %14, align 8, !dbg !505, !tbaa !442
  %16 = icmp eq %struct._Graph* %15, null, !dbg !507
  br i1 %16, label %26, label %17, !dbg !508

; <label>:17                                      ; preds = %12
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0), i64 15, i64 1, %struct.__sFILE* %fp), !dbg !509
  %19 = load %struct._Graph** %14, align 8, !dbg !511, !tbaa !442
  %20 = tail call i32 @Graph_writeForHumanEye(%struct._Graph* %19, %struct.__sFILE* %fp) #7, !dbg !512
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !175, metadata !188), !dbg !497
  %21 = icmp slt i32 %20, 0, !dbg !513
  br i1 %21, label %22, label %26, !dbg !515

; <label>:22                                      ; preds = %17
  %23 = load %struct.__sFILE** @__stderrp, align 8, !dbg !516, !tbaa !197
  %24 = load %struct._Graph** %14, align 8, !dbg !518, !tbaa !442
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([135 x i8]* @.str26, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp, i32 %20, %struct._Graph* %24, %struct.__sFILE* %fp) #7, !dbg !519
  br label %26, !dbg !520

; <label>:26                                      ; preds = %17, %12, %22, %9
  %.0 = phi i32 [ 0, %9 ], [ 0, %22 ], [ 1, %12 ], [ 1, %17 ]
  ret i32 %.0, !dbg !521
}

; Function Attrs: optsize
declare i32 @Graph_writeToFormattedFile(%struct._Graph*, %struct.__sFILE*) #4

; Function Attrs: optsize
declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #4

; Function Attrs: optsize
declare i32 @Graph_writeToBinaryFile(%struct._Graph*, %struct.__sFILE*) #4

; Function Attrs: noreturn optsize
declare void @exit(i32) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BPG_writeStats(%struct._BPG* %bpg, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._BPG* %bpg, i64 0, metadata !178, metadata !188), !dbg !522
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !179, metadata !188), !dbg !523
  %1 = icmp eq %struct._BPG* %bpg, null, !dbg !524
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !526
  %or.cond = or i1 %1, %2, !dbg !527
  br i1 %or.cond, label %3, label %6, !dbg !527

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !528, !tbaa !197
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([45 x i8]* @.str27, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp) #7, !dbg !530
  tail call void @exit(i32 -1) #9, !dbg !531
  unreachable, !dbg !531

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !532
  %8 = load %struct._Graph** %7, align 8, !dbg !532, !tbaa !442
  %9 = icmp eq %struct._Graph* %8, null, !dbg !534
  br i1 %9, label %10, label %13, !dbg !535

; <label>:10                                      ; preds = %6
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !536, !tbaa !197
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([55 x i8]* @.str28, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp) #7, !dbg !538
  br label %66, !dbg !539

; <label>:13                                      ; preds = %6
  %14 = getelementptr inbounds %struct._Graph* %8, i64 0, i32 0, !dbg !540
  %15 = load i32* %14, align 4, !dbg !540, !tbaa !541
  switch i32 %15, label %24 [
    i32 0, label %16
    i32 1, label %18
    i32 2, label %20
    i32 3, label %22
  ], !dbg !543

; <label>:16                                      ; preds = %13
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str29, i64 0, i64 0)) #7, !dbg !544
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !180, metadata !188), !dbg !546
  br label %27, !dbg !547

; <label>:18                                      ; preds = %13
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str30, i64 0, i64 0)) #7, !dbg !548
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !180, metadata !188), !dbg !546
  br label %27, !dbg !549

; <label>:20                                      ; preds = %13
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str31, i64 0, i64 0)) #7, !dbg !550
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !180, metadata !188), !dbg !546
  br label %27, !dbg !551

; <label>:22                                      ; preds = %13
  %23 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([49 x i8]* @.str32, i64 0, i64 0)) #7, !dbg !552
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !180, metadata !188), !dbg !546
  br label %27, !dbg !553

; <label>:24                                      ; preds = %13
  %25 = load %struct.__sFILE** @__stderrp, align 8, !dbg !554, !tbaa !197
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %25, i8* getelementptr inbounds ([67 x i8]* @.str33, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp, i32 %15) #7, !dbg !555
  br label %66, !dbg !556

; <label>:27                                      ; preds = %22, %20, %18, %16
  %rc.0 = phi i32 [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ]
  %28 = icmp slt i32 %rc.0, 0, !dbg !557
  br i1 %28, label %63, label %29, !dbg !559

; <label>:29                                      ; preds = %27
  %30 = tail call i32 @fflush(%struct.__sFILE* %fp) #7, !dbg !560
  %31 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0, !dbg !561
  %32 = load i32* %31, align 4, !dbg !561, !tbaa !423
  %33 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1, !dbg !562
  %34 = load i32* %33, align 4, !dbg !562, !tbaa !428
  %35 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str34, i64 0, i64 0), i32 %32, i32 %34) #7, !dbg !563
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !180, metadata !188), !dbg !546
  %36 = icmp slt i32 %35, 0, !dbg !564
  br i1 %36, label %63, label %37, !dbg !566

; <label>:37                                      ; preds = %29
  %38 = tail call i32 @fflush(%struct.__sFILE* %fp) #7, !dbg !567
  %39 = load %struct._Graph** %7, align 8, !dbg !568, !tbaa !442
  %40 = icmp eq %struct._Graph* %39, null, !dbg !570
  br i1 %40, label %.thread, label %41, !dbg !571

; <label>:41                                      ; preds = %37
  %42 = getelementptr inbounds %struct._Graph* %39, i64 0, i32 7, !dbg !572
  %43 = load i32** %42, align 8, !dbg !572, !tbaa !575
  %44 = icmp eq i32* %43, null, !dbg !576
  %45 = load i32* %31, align 4, !dbg !577, !tbaa !423
  br i1 %44, label %57, label %46, !dbg !579

; <label>:46                                      ; preds = %41
  %47 = tail call i32 @IVsum(i32 %45, i32* %43) #7, !dbg !580
  %48 = load i32* %33, align 4, !dbg !581, !tbaa !428
  %49 = load %struct._Graph** %7, align 8, !dbg !582, !tbaa !442
  %50 = getelementptr inbounds %struct._Graph* %49, i64 0, i32 7, !dbg !583
  %51 = load i32** %50, align 8, !dbg !583, !tbaa !575
  %52 = load i32* %31, align 4, !dbg !584, !tbaa !423
  %53 = sext i32 %52 to i64, !dbg !585
  %54 = getelementptr inbounds i32* %51, i64 %53, !dbg !585
  %55 = tail call i32 @IVsum(i32 %48, i32* %54) #7, !dbg !586
  %56 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str35, i64 0, i64 0), i32 %47, i32 %55) #7, !dbg !587
  tail call void @llvm.dbg.value(metadata i32 %56, i64 0, metadata !180, metadata !188), !dbg !546
  br label %60, !dbg !588

; <label>:57                                      ; preds = %41
  %58 = load i32* %33, align 4, !dbg !589, !tbaa !428
  %59 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str35, i64 0, i64 0), i32 %45, i32 %58) #7, !dbg !591
  tail call void @llvm.dbg.value(metadata i32 %59, i64 0, metadata !180, metadata !188), !dbg !546
  br label %60

; <label>:60                                      ; preds = %46, %57
  %rc.1 = phi i32 [ %56, %46 ], [ %59, %57 ]
  %61 = icmp slt i32 %rc.1, 0, !dbg !592
  br i1 %61, label %63, label %.thread, !dbg !594

.thread:                                          ; preds = %37, %60
  %62 = tail call i32 @fflush(%struct.__sFILE* %fp) #7, !dbg !595
  br label %66, !dbg !596

; <label>:63                                      ; preds = %60, %29, %27
  %rc.2 = phi i32 [ %rc.0, %27 ], [ %35, %29 ], [ %rc.1, %60 ]
  %64 = load %struct.__sFILE** @__stderrp, align 8, !dbg !597, !tbaa !197
  %65 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %64, i8* getelementptr inbounds ([70 x i8]* @.str36, i64 0, i64 0), %struct._BPG* %bpg, %struct.__sFILE* %fp, i32 %rc.2) #7, !dbg !598
  br label %66, !dbg !599

; <label>:66                                      ; preds = %63, %.thread, %24, %10
  %.0 = phi i32 [ 1, %10 ], [ 0, %24 ], [ 0, %63 ], [ 1, %.thread ]
  ret i32 %.0, !dbg !600
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #2

; Function Attrs: optsize
declare i32 @Graph_writeForHumanEye(%struct._Graph*, %struct.__sFILE*) #4

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #4

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
!llvm.module.flags = !{!184, !185, !186}
!llvm.ident = !{!187}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !181, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !124, !138, !147, !155, !161, !170, !176}
!6 = !DISubprogram(name: "BPG_readFromFile", scope: !1, file: !1, line: 23, type: !7, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._BPG*, i8*)* @BPG_readFromFile, variables: !57)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10, !55}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "BPG", file: !12, line: 21, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../BPG.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BPG", file: !12, line: 22, size: 128, align: 64, elements: !14)
!14 = !{!15, !16, !17}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "nX", scope: !13, file: !12, line: 23, baseType: !9, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nY", scope: !13, file: !12, line: 24, baseType: !9, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !13, file: !12, line: 25, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !20, line: 49, baseType: !21)
!20 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../../Graph/Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !20, line: 50, size: 384, align: 64, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !53, !54}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !21, file: !20, line: 51, baseType: !9, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !21, file: !20, line: 52, baseType: !9, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !21, file: !20, line: 53, baseType: !9, size: 32, align: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !21, file: !20, line: 54, baseType: !9, size: 32, align: 32, offset: 96)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !21, file: !20, line: 55, baseType: !9, size: 32, align: 32, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !21, file: !20, line: 56, baseType: !9, size: 32, align: 32, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !21, file: !20, line: 57, baseType: !30, size: 64, align: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !32, line: 55, baseType: !33)
!32 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !32, line: 79, size: 384, align: 64, elements: !34)
!34 = !{!35, !36, !37, !38, !39, !41, !43, !44}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !32, line: 80, baseType: !9, size: 32, align: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !33, file: !32, line: 81, baseType: !9, size: 32, align: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !33, file: !32, line: 82, baseType: !9, size: 32, align: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !33, file: !32, line: 83, baseType: !9, size: 32, align: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !33, file: !32, line: 84, baseType: !40, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !33, file: !32, line: 85, baseType: !42, size: 64, align: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !33, file: !32, line: 86, baseType: !9, size: 32, align: 32, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !33, file: !32, line: 87, baseType: !45, size: 64, align: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !32, line: 56, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !32, line: 102, size: 192, align: 64, elements: !48)
!48 = !{!49, !50, !51, !52}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !47, file: !32, line: 103, baseType: !9, size: 32, align: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !47, file: !32, line: 104, baseType: !9, size: 32, align: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !47, file: !32, line: 105, baseType: !40, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !47, file: !32, line: 106, baseType: !45, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !21, file: !20, line: 58, baseType: !40, size: 64, align: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !21, file: !20, line: 59, baseType: !30, size: 64, align: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!57 = !{!58, !59, !60, !121, !122, !123}
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bpg", arg: 1, scope: !6, file: !1, line: 24, type: !10)
!59 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !6, file: !1, line: 25, type: !55)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !6, file: !1, line: 27, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !63, line: 153, baseType: !64)
!63 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !63, line: 122, size: 1216, align: 64, elements: !65)
!65 = !{!66, !69, !70, !71, !73, !74, !79, !80, !81, !85, !89, !99, !105, !106, !109, !110, !114, !118, !119, !120}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !64, file: !63, line: 123, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !64, file: !63, line: 124, baseType: !9, size: 32, align: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !64, file: !63, line: 125, baseType: !9, size: 32, align: 32, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !64, file: !63, line: 126, baseType: !72, size: 16, align: 16, offset: 128)
!72 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !64, file: !63, line: 127, baseType: !72, size: 16, align: 16, offset: 144)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !64, file: !63, line: 128, baseType: !75, size: 128, align: 64, offset: 192)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !63, line: 88, size: 128, align: 64, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !75, file: !63, line: 89, baseType: !67, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !75, file: !63, line: 90, baseType: !9, size: 32, align: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !64, file: !63, line: 129, baseType: !9, size: 32, align: 32, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !64, file: !63, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !64, file: !63, line: 133, baseType: !82, size: 64, align: 64, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!9, !4}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !64, file: !63, line: 134, baseType: !86, size: 64, align: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!9, !4, !55, !9}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !64, file: !63, line: 135, baseType: !90, size: 64, align: 64, offset: 576)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!93, !4, !93, !9}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !63, line: 77, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !95, line: 71, baseType: !96)
!95 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !97, line: 46, baseType: !98)
!97 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!98 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !64, file: !63, line: 136, baseType: !100, size: 64, align: 64, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!9, !4, !103, !9}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !64, file: !63, line: 139, baseType: !75, size: 128, align: 64, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !64, file: !63, line: 140, baseType: !107, size: 64, align: 64, offset: 832)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !63, line: 94, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !64, file: !63, line: 141, baseType: !9, size: 32, align: 32, offset: 896)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !64, file: !63, line: 144, baseType: !111, size: 24, align: 8, offset: 928)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 24, align: 8, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 3)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !64, file: !63, line: 145, baseType: !115, size: 8, align: 8, offset: 952)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 8, align: 8, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 1)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !64, file: !63, line: 148, baseType: !75, size: 128, align: 64, offset: 960)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !64, file: !63, line: 151, baseType: !9, size: 32, align: 32, offset: 1088)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !64, file: !63, line: 152, baseType: !93, size: 64, align: 64, offset: 1152)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fnlength", scope: !6, file: !1, line: 28, type: !9)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !6, file: !1, line: 28, type: !9)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sulength", scope: !6, file: !1, line: 28, type: !9)
!124 = !DISubprogram(name: "BPG_readFromFormattedFile", scope: !1, file: !1, line: 92, type: !125, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._BPG*, %struct.__sFILE*)* @BPG_readFromFormattedFile, variables: !127)
!125 = !DISubroutineType(types: !126)
!126 = !{!9, !10, !61}
!127 = !{!128, !129, !130, !131, !132, !133, !134}
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bpg", arg: 1, scope: !124, file: !1, line: 93, type: !10)
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !124, file: !1, line: 94, type: !61)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "graph", scope: !124, file: !1, line: 96, type: !18)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nX", scope: !124, file: !1, line: 97, type: !9)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nY", scope: !124, file: !1, line: 97, type: !9)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !124, file: !1, line: 97, type: !9)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemp", scope: !124, file: !1, line: 98, type: !135)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, align: 32, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 2)
!138 = !DISubprogram(name: "BPG_readFromBinaryFile", scope: !1, file: !1, line: 162, type: !125, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._BPG*, %struct.__sFILE*)* @BPG_readFromBinaryFile, variables: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146}
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bpg", arg: 1, scope: !138, file: !1, line: 163, type: !10)
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !138, file: !1, line: 164, type: !61)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "graph", scope: !138, file: !1, line: 166, type: !18)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nX", scope: !138, file: !1, line: 167, type: !9)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nY", scope: !138, file: !1, line: 167, type: !9)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !138, file: !1, line: 167, type: !9)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemp", scope: !138, file: !1, line: 168, type: !135)
!147 = !DISubprogram(name: "BPG_writeToFile", scope: !1, file: !1, line: 239, type: !7, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._BPG*, i8*)* @BPG_writeToFile, variables: !148)
!148 = !{!149, !150, !151, !152, !153, !154}
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bpg", arg: 1, scope: !147, file: !1, line: 240, type: !10)
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !147, file: !1, line: 241, type: !55)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !147, file: !1, line: 243, type: !61)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fnlength", scope: !147, file: !1, line: 244, type: !9)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !147, file: !1, line: 244, type: !9)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sulength", scope: !147, file: !1, line: 244, type: !9)
!155 = !DISubprogram(name: "BPG_writeToFormattedFile", scope: !1, file: !1, line: 314, type: !125, isLocal: false, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._BPG*, %struct.__sFILE*)* @BPG_writeToFormattedFile, variables: !156)
!156 = !{!157, !158, !159, !160}
!157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bpg", arg: 1, scope: !155, file: !1, line: 315, type: !10)
!158 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !155, file: !1, line: 316, type: !61)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ierr", scope: !155, file: !1, line: 318, type: !9)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !155, file: !1, line: 318, type: !9)
!161 = !DISubprogram(name: "BPG_writeToBinaryFile", scope: !1, file: !1, line: 367, type: !125, isLocal: false, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._BPG*, %struct.__sFILE*)* @BPG_writeToBinaryFile, variables: !162)
!162 = !{!163, !164, !165, !166}
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bpg", arg: 1, scope: !161, file: !1, line: 368, type: !10)
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !161, file: !1, line: 369, type: !61)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !161, file: !1, line: 371, type: !9)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemp", scope: !161, file: !1, line: 372, type: !167)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, align: 32, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 6)
!170 = !DISubprogram(name: "BPG_writeForHumanEye", scope: !1, file: !1, line: 423, type: !125, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._BPG*, %struct.__sFILE*)* @BPG_writeForHumanEye, variables: !171)
!171 = !{!172, !173, !174, !175}
!172 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bpg", arg: 1, scope: !170, file: !1, line: 424, type: !10)
!173 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !170, file: !1, line: 425, type: !61)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ierr", scope: !170, file: !1, line: 427, type: !9)
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !170, file: !1, line: 427, type: !9)
!176 = !DISubprogram(name: "BPG_writeStats", scope: !1, file: !1, line: 476, type: !125, isLocal: false, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._BPG*, %struct.__sFILE*)* @BPG_writeStats, variables: !177)
!177 = !{!178, !179, !180}
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bpg", arg: 1, scope: !176, file: !1, line: 477, type: !10)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !176, file: !1, line: 478, type: !61)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !176, file: !1, line: 480, type: !9)
!181 = !{!182, !183}
!182 = !DIGlobalVariable(name: "suffixb", scope: !0, file: !1, line: 5, type: !103, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariable(name: "suffixf", scope: !0, file: !1, line: 6, type: !103, isLocal: true, isDefinition: true)
!184 = !{i32 2, !"Dwarf Version", i32 2}
!185 = !{i32 2, !"Debug Info Version", i32 700000003}
!186 = !{i32 1, !"PIC Level", i32 2}
!187 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!188 = !DIExpression()
!189 = !DILocation(line: 24, column: 12, scope: !6)
!190 = !DILocation(line: 25, column: 12, scope: !6)
!191 = !DILocation(line: 34, column: 10, scope: !192)
!192 = distinct !DILexicalBlock(scope: !6, file: !1, line: 34, column: 6)
!193 = !DILocation(line: 34, column: 24, scope: !192)
!194 = !DILocation(line: 34, column: 18, scope: !192)
!195 = !DILocation(line: 35, column: 12, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 34, column: 34)
!197 = !{!198, !198, i64 0}
!198 = !{!"any pointer", !199, i64 0}
!199 = !{!"omnipotent char", !200, i64 0}
!200 = !{!"Simple C/C++ TBAA"}
!201 = !DILocation(line: 35, column: 4, scope: !196)
!202 = !DILocation(line: 37, column: 4, scope: !196)
!203 = !DILocation(line: 44, column: 12, scope: !6)
!204 = !DILocation(line: 28, column: 8, scope: !6)
!205 = !DILocation(line: 28, column: 22, scope: !6)
!206 = !DILocation(line: 46, column: 15, scope: !207)
!207 = distinct !DILexicalBlock(scope: !6, file: !1, line: 46, column: 6)
!208 = !DILocation(line: 46, column: 6, scope: !6)
!209 = !DILocation(line: 47, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !1, line: 47, column: 9)
!211 = distinct !DILexicalBlock(scope: !207, file: !1, line: 46, column: 28)
!212 = !DILocation(line: 47, column: 9, scope: !210)
!213 = !DILocation(line: 47, column: 49, scope: !210)
!214 = !DILocation(line: 47, column: 9, scope: !211)
!215 = !DILocation(line: 48, column: 18, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !1, line: 48, column: 12)
!217 = distinct !DILexicalBlock(scope: !210, file: !1, line: 47, column: 56)
!218 = !DILocation(line: 27, column: 9, scope: !6)
!219 = !DILocation(line: 48, column: 35, scope: !216)
!220 = !DILocation(line: 48, column: 12, scope: !217)
!221 = !DILocation(line: 49, column: 18, scope: !222)
!222 = distinct !DILexicalBlock(scope: !216, file: !1, line: 48, column: 45)
!223 = !DILocation(line: 49, column: 10, scope: !222)
!224 = !DILocation(line: 28, column: 18, scope: !6)
!225 = !DILocation(line: 52, column: 7, scope: !222)
!226 = !DILocation(line: 53, column: 15, scope: !227)
!227 = distinct !DILexicalBlock(scope: !216, file: !1, line: 52, column: 14)
!228 = !DILocation(line: 54, column: 10, scope: !227)
!229 = !DILocation(line: 56, column: 16, scope: !230)
!230 = distinct !DILexicalBlock(scope: !210, file: !1, line: 56, column: 16)
!231 = !DILocation(line: 56, column: 56, scope: !230)
!232 = !DILocation(line: 56, column: 16, scope: !210)
!233 = !DILocation(line: 57, column: 18, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 57, column: 12)
!235 = distinct !DILexicalBlock(scope: !230, file: !1, line: 56, column: 63)
!236 = !DILocation(line: 57, column: 34, scope: !234)
!237 = !DILocation(line: 57, column: 12, scope: !235)
!238 = !DILocation(line: 58, column: 18, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !1, line: 57, column: 44)
!240 = !DILocation(line: 58, column: 10, scope: !239)
!241 = !DILocation(line: 61, column: 7, scope: !239)
!242 = !DILocation(line: 62, column: 15, scope: !243)
!243 = distinct !DILexicalBlock(scope: !234, file: !1, line: 61, column: 14)
!244 = !DILocation(line: 63, column: 10, scope: !243)
!245 = !DILocation(line: 66, column: 15, scope: !246)
!246 = distinct !DILexicalBlock(scope: !230, file: !1, line: 65, column: 11)
!247 = !DILocation(line: 66, column: 7, scope: !246)
!248 = !DILocation(line: 73, column: 12, scope: !249)
!249 = distinct !DILexicalBlock(scope: !207, file: !1, line: 72, column: 8)
!250 = !DILocation(line: 73, column: 4, scope: !249)
!251 = !DILocation(line: 79, column: 14, scope: !6)
!252 = !DILocation(line: 163, column: 12, scope: !138)
!253 = !DILocation(line: 164, column: 12, scope: !138)
!254 = !DILocation(line: 168, column: 9, scope: !138)
!255 = !DILocation(line: 174, column: 10, scope: !256)
!256 = distinct !DILexicalBlock(scope: !138, file: !1, line: 174, column: 6)
!257 = !DILocation(line: 174, column: 24, scope: !256)
!258 = !DILocation(line: 174, column: 18, scope: !256)
!259 = !DILocation(line: 175, column: 12, scope: !260)
!260 = distinct !DILexicalBlock(scope: !256, file: !1, line: 174, column: 34)
!261 = !DILocation(line: 175, column: 4, scope: !260)
!262 = !DILocation(line: 177, column: 4, scope: !260)
!263 = !DILocation(line: 184, column: 1, scope: !138)
!264 = !DILocation(line: 190, column: 18, scope: !265)
!265 = distinct !DILexicalBlock(scope: !138, file: !1, line: 190, column: 6)
!266 = !DILocation(line: 190, column: 12, scope: !265)
!267 = !DILocation(line: 167, column: 17, scope: !138)
!268 = !DILocation(line: 190, column: 55, scope: !265)
!269 = !DILocation(line: 190, column: 6, scope: !138)
!270 = !DILocation(line: 191, column: 12, scope: !271)
!271 = distinct !DILexicalBlock(scope: !265, file: !1, line: 190, column: 62)
!272 = !DILocation(line: 191, column: 4, scope: !271)
!273 = !DILocation(line: 193, column: 4, scope: !271)
!274 = !DILocation(line: 195, column: 6, scope: !138)
!275 = !{!276, !276, i64 0}
!276 = !{!"int", !199, i64 0}
!277 = !DILocation(line: 167, column: 9, scope: !138)
!278 = !DILocation(line: 196, column: 6, scope: !138)
!279 = !DILocation(line: 167, column: 13, scope: !138)
!280 = !DILocation(line: 202, column: 9, scope: !138)
!281 = !DILocation(line: 166, column: 10, scope: !138)
!282 = !DILocation(line: 203, column: 1, scope: !138)
!283 = !DILocation(line: 204, column: 6, scope: !138)
!284 = !DILocation(line: 205, column: 9, scope: !285)
!285 = distinct !DILexicalBlock(scope: !138, file: !1, line: 205, column: 6)
!286 = !DILocation(line: 205, column: 6, scope: !138)
!287 = !DILocation(line: 206, column: 12, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !1, line: 205, column: 16)
!289 = !DILocation(line: 206, column: 4, scope: !288)
!290 = !DILocation(line: 210, column: 4, scope: !288)
!291 = !DILocation(line: 217, column: 1, scope: !138)
!292 = !DILocation(line: 219, column: 1, scope: !138)
!293 = !DILocation(line: 219, column: 13, scope: !138)
!294 = !DILocation(line: 93, column: 12, scope: !124)
!295 = !DILocation(line: 94, column: 12, scope: !124)
!296 = !DILocation(line: 98, column: 9, scope: !124)
!297 = !DILocation(line: 104, column: 10, scope: !298)
!298 = distinct !DILexicalBlock(scope: !124, file: !1, line: 104, column: 6)
!299 = !DILocation(line: 104, column: 24, scope: !298)
!300 = !DILocation(line: 104, column: 18, scope: !298)
!301 = !DILocation(line: 105, column: 12, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !1, line: 104, column: 34)
!303 = !DILocation(line: 105, column: 4, scope: !302)
!304 = !DILocation(line: 107, column: 4, scope: !302)
!305 = !DILocation(line: 114, column: 1, scope: !124)
!306 = !DILocation(line: 120, column: 28, scope: !307)
!307 = distinct !DILexicalBlock(scope: !124, file: !1, line: 120, column: 6)
!308 = !DILocation(line: 120, column: 12, scope: !307)
!309 = !DILocation(line: 97, column: 17, scope: !124)
!310 = !DILocation(line: 120, column: 36, scope: !307)
!311 = !DILocation(line: 120, column: 6, scope: !124)
!312 = !DILocation(line: 121, column: 12, scope: !313)
!313 = distinct !DILexicalBlock(scope: !307, file: !1, line: 120, column: 43)
!314 = !DILocation(line: 121, column: 4, scope: !313)
!315 = !DILocation(line: 123, column: 4, scope: !313)
!316 = !DILocation(line: 125, column: 6, scope: !124)
!317 = !DILocation(line: 97, column: 9, scope: !124)
!318 = !DILocation(line: 126, column: 6, scope: !124)
!319 = !DILocation(line: 97, column: 13, scope: !124)
!320 = !DILocation(line: 132, column: 9, scope: !124)
!321 = !DILocation(line: 96, column: 10, scope: !124)
!322 = !DILocation(line: 133, column: 1, scope: !124)
!323 = !DILocation(line: 134, column: 6, scope: !124)
!324 = !DILocation(line: 135, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !124, file: !1, line: 135, column: 6)
!326 = !DILocation(line: 135, column: 6, scope: !124)
!327 = !DILocation(line: 136, column: 12, scope: !328)
!328 = distinct !DILexicalBlock(scope: !325, file: !1, line: 135, column: 16)
!329 = !DILocation(line: 136, column: 4, scope: !328)
!330 = !DILocation(line: 140, column: 4, scope: !328)
!331 = !DILocation(line: 147, column: 1, scope: !124)
!332 = !DILocation(line: 149, column: 1, scope: !124)
!333 = !DILocation(line: 149, column: 13, scope: !124)
!334 = !DILocation(line: 240, column: 12, scope: !147)
!335 = !DILocation(line: 241, column: 12, scope: !147)
!336 = !DILocation(line: 250, column: 10, scope: !337)
!337 = distinct !DILexicalBlock(scope: !147, file: !1, line: 250, column: 6)
!338 = !DILocation(line: 250, column: 24, scope: !337)
!339 = !DILocation(line: 250, column: 18, scope: !337)
!340 = !DILocation(line: 251, column: 12, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !1, line: 250, column: 34)
!342 = !DILocation(line: 251, column: 4, scope: !341)
!343 = !DILocation(line: 253, column: 4, scope: !341)
!344 = !DILocation(line: 260, column: 12, scope: !147)
!345 = !DILocation(line: 244, column: 8, scope: !147)
!346 = !DILocation(line: 244, column: 22, scope: !147)
!347 = !DILocation(line: 262, column: 15, scope: !348)
!348 = distinct !DILexicalBlock(scope: !147, file: !1, line: 262, column: 6)
!349 = !DILocation(line: 262, column: 6, scope: !147)
!350 = !DILocation(line: 263, column: 17, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !1, line: 263, column: 9)
!352 = distinct !DILexicalBlock(scope: !348, file: !1, line: 262, column: 28)
!353 = !DILocation(line: 263, column: 9, scope: !351)
!354 = !DILocation(line: 263, column: 49, scope: !351)
!355 = !DILocation(line: 263, column: 9, scope: !352)
!356 = !DILocation(line: 264, column: 18, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !1, line: 264, column: 12)
!358 = distinct !DILexicalBlock(scope: !351, file: !1, line: 263, column: 56)
!359 = !DILocation(line: 243, column: 9, scope: !147)
!360 = !DILocation(line: 264, column: 35, scope: !357)
!361 = !DILocation(line: 264, column: 12, scope: !358)
!362 = !DILocation(line: 265, column: 18, scope: !363)
!363 = distinct !DILexicalBlock(scope: !357, file: !1, line: 264, column: 45)
!364 = !DILocation(line: 265, column: 10, scope: !363)
!365 = !DILocation(line: 244, column: 18, scope: !147)
!366 = !DILocation(line: 268, column: 7, scope: !363)
!367 = !DILocation(line: 269, column: 15, scope: !368)
!368 = distinct !DILexicalBlock(scope: !357, file: !1, line: 268, column: 14)
!369 = !DILocation(line: 270, column: 10, scope: !368)
!370 = !DILocation(line: 272, column: 16, scope: !371)
!371 = distinct !DILexicalBlock(scope: !351, file: !1, line: 272, column: 16)
!372 = !DILocation(line: 272, column: 56, scope: !371)
!373 = !DILocation(line: 272, column: 16, scope: !351)
!374 = !DILocation(line: 273, column: 18, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !1, line: 273, column: 12)
!376 = distinct !DILexicalBlock(scope: !371, file: !1, line: 272, column: 63)
!377 = !DILocation(line: 273, column: 34, scope: !375)
!378 = !DILocation(line: 273, column: 12, scope: !376)
!379 = !DILocation(line: 274, column: 18, scope: !380)
!380 = distinct !DILexicalBlock(scope: !375, file: !1, line: 273, column: 44)
!381 = !DILocation(line: 274, column: 10, scope: !380)
!382 = !DILocation(line: 277, column: 7, scope: !380)
!383 = !DILocation(line: 278, column: 15, scope: !384)
!384 = distinct !DILexicalBlock(scope: !375, file: !1, line: 277, column: 14)
!385 = !DILocation(line: 279, column: 10, scope: !384)
!386 = !DILocation(line: 282, column: 18, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !1, line: 282, column: 12)
!388 = distinct !DILexicalBlock(scope: !371, file: !1, line: 281, column: 11)
!389 = !DILocation(line: 282, column: 34, scope: !387)
!390 = !DILocation(line: 282, column: 12, scope: !388)
!391 = !DILocation(line: 283, column: 18, scope: !392)
!392 = distinct !DILexicalBlock(scope: !387, file: !1, line: 282, column: 44)
!393 = !DILocation(line: 283, column: 10, scope: !392)
!394 = !DILocation(line: 286, column: 7, scope: !392)
!395 = !DILocation(line: 287, column: 15, scope: !396)
!396 = distinct !DILexicalBlock(scope: !387, file: !1, line: 286, column: 14)
!397 = !DILocation(line: 288, column: 10, scope: !396)
!398 = !DILocation(line: 292, column: 15, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !1, line: 292, column: 9)
!400 = distinct !DILexicalBlock(scope: !348, file: !1, line: 291, column: 8)
!401 = !DILocation(line: 292, column: 31, scope: !399)
!402 = !DILocation(line: 292, column: 9, scope: !400)
!403 = !DILocation(line: 293, column: 15, scope: !404)
!404 = distinct !DILexicalBlock(scope: !399, file: !1, line: 292, column: 41)
!405 = !DILocation(line: 293, column: 7, scope: !404)
!406 = !DILocation(line: 296, column: 4, scope: !404)
!407 = !DILocation(line: 297, column: 12, scope: !408)
!408 = distinct !DILexicalBlock(scope: !399, file: !1, line: 296, column: 11)
!409 = !DILocation(line: 298, column: 7, scope: !408)
!410 = !DILocation(line: 301, column: 14, scope: !147)
!411 = !DILocation(line: 368, column: 12, scope: !161)
!412 = !DILocation(line: 369, column: 12, scope: !161)
!413 = !DILocation(line: 372, column: 7, scope: !161)
!414 = !DILocation(line: 378, column: 10, scope: !415)
!415 = distinct !DILexicalBlock(scope: !161, file: !1, line: 378, column: 6)
!416 = !DILocation(line: 378, column: 24, scope: !415)
!417 = !DILocation(line: 378, column: 18, scope: !415)
!418 = !DILocation(line: 379, column: 12, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !1, line: 378, column: 34)
!420 = !DILocation(line: 379, column: 4, scope: !419)
!421 = !DILocation(line: 381, column: 4, scope: !419)
!422 = !DILocation(line: 388, column: 17, scope: !161)
!423 = !{!424, !276, i64 0}
!424 = !{!"_BPG", !276, i64 0, !276, i64 4, !198, i64 8}
!425 = !DILocation(line: 388, column: 1, scope: !161)
!426 = !DILocation(line: 388, column: 10, scope: !161)
!427 = !DILocation(line: 389, column: 17, scope: !161)
!428 = !{!424, !276, i64 4}
!429 = !DILocation(line: 389, column: 1, scope: !161)
!430 = !DILocation(line: 389, column: 10, scope: !161)
!431 = !DILocation(line: 390, column: 13, scope: !161)
!432 = !DILocation(line: 390, column: 6, scope: !161)
!433 = !DILocation(line: 371, column: 7, scope: !161)
!434 = !DILocation(line: 391, column: 9, scope: !435)
!435 = distinct !DILexicalBlock(scope: !161, file: !1, line: 391, column: 6)
!436 = !DILocation(line: 391, column: 6, scope: !161)
!437 = !DILocation(line: 392, column: 12, scope: !438)
!438 = distinct !DILexicalBlock(scope: !435, file: !1, line: 391, column: 16)
!439 = !DILocation(line: 392, column: 4, scope: !438)
!440 = !DILocation(line: 394, column: 4, scope: !438)
!441 = !DILocation(line: 401, column: 35, scope: !161)
!442 = !{!424, !198, i64 8}
!443 = !DILocation(line: 401, column: 6, scope: !161)
!444 = !DILocation(line: 402, column: 9, scope: !445)
!445 = distinct !DILexicalBlock(scope: !161, file: !1, line: 402, column: 6)
!446 = !DILocation(line: 402, column: 6, scope: !161)
!447 = !DILocation(line: 403, column: 12, scope: !448)
!448 = distinct !DILexicalBlock(scope: !445, file: !1, line: 402, column: 15)
!449 = !DILocation(line: 406, column: 30, scope: !448)
!450 = !DILocation(line: 403, column: 4, scope: !448)
!451 = !DILocation(line: 407, column: 4, scope: !448)
!452 = !DILocation(line: 410, column: 13, scope: !161)
!453 = !DILocation(line: 315, column: 12, scope: !155)
!454 = !DILocation(line: 316, column: 12, scope: !155)
!455 = !DILocation(line: 324, column: 10, scope: !456)
!456 = distinct !DILexicalBlock(scope: !155, file: !1, line: 324, column: 6)
!457 = !DILocation(line: 324, column: 24, scope: !456)
!458 = !DILocation(line: 324, column: 18, scope: !456)
!459 = !DILocation(line: 325, column: 12, scope: !460)
!460 = distinct !DILexicalBlock(scope: !456, file: !1, line: 324, column: 34)
!461 = !DILocation(line: 325, column: 4, scope: !460)
!462 = !DILocation(line: 327, column: 4, scope: !460)
!463 = !DILocation(line: 334, column: 35, scope: !155)
!464 = !DILocation(line: 334, column: 44, scope: !155)
!465 = !DILocation(line: 334, column: 6, scope: !155)
!466 = !DILocation(line: 318, column: 13, scope: !155)
!467 = !DILocation(line: 335, column: 9, scope: !468)
!468 = distinct !DILexicalBlock(scope: !155, file: !1, line: 335, column: 6)
!469 = !DILocation(line: 335, column: 6, scope: !155)
!470 = !DILocation(line: 336, column: 12, scope: !471)
!471 = distinct !DILexicalBlock(scope: !468, file: !1, line: 335, column: 15)
!472 = !DILocation(line: 336, column: 4, scope: !471)
!473 = !DILocation(line: 338, column: 4, scope: !471)
!474 = !DILocation(line: 345, column: 38, scope: !155)
!475 = !DILocation(line: 345, column: 6, scope: !155)
!476 = !DILocation(line: 346, column: 9, scope: !477)
!477 = distinct !DILexicalBlock(scope: !155, file: !1, line: 346, column: 6)
!478 = !DILocation(line: 346, column: 6, scope: !155)
!479 = !DILocation(line: 347, column: 12, scope: !480)
!480 = distinct !DILexicalBlock(scope: !477, file: !1, line: 346, column: 15)
!481 = !DILocation(line: 350, column: 30, scope: !480)
!482 = !DILocation(line: 347, column: 4, scope: !480)
!483 = !DILocation(line: 351, column: 4, scope: !480)
!484 = !DILocation(line: 354, column: 13, scope: !155)
!485 = !DILocation(line: 424, column: 12, scope: !170)
!486 = !DILocation(line: 425, column: 12, scope: !170)
!487 = !DILocation(line: 429, column: 10, scope: !488)
!488 = distinct !DILexicalBlock(scope: !170, file: !1, line: 429, column: 6)
!489 = !DILocation(line: 429, column: 24, scope: !488)
!490 = !DILocation(line: 429, column: 18, scope: !488)
!491 = !DILocation(line: 430, column: 12, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !1, line: 429, column: 34)
!493 = !DILocation(line: 430, column: 4, scope: !492)
!494 = !DILocation(line: 432, column: 4, scope: !492)
!495 = !DILocation(line: 439, column: 12, scope: !496)
!496 = distinct !DILexicalBlock(scope: !170, file: !1, line: 439, column: 6)
!497 = !DILocation(line: 427, column: 13, scope: !170)
!498 = !DILocation(line: 439, column: 37, scope: !496)
!499 = !DILocation(line: 439, column: 6, scope: !170)
!500 = !DILocation(line: 440, column: 12, scope: !501)
!501 = distinct !DILexicalBlock(scope: !496, file: !1, line: 439, column: 44)
!502 = !DILocation(line: 440, column: 4, scope: !501)
!503 = !DILocation(line: 443, column: 4, scope: !501)
!504 = !DILocation(line: 445, column: 1, scope: !170)
!505 = !DILocation(line: 446, column: 11, scope: !506)
!506 = distinct !DILexicalBlock(scope: !170, file: !1, line: 446, column: 6)
!507 = !DILocation(line: 446, column: 17, scope: !506)
!508 = !DILocation(line: 446, column: 6, scope: !170)
!509 = !DILocation(line: 452, column: 4, scope: !510)
!510 = distinct !DILexicalBlock(scope: !506, file: !1, line: 446, column: 27)
!511 = !DILocation(line: 453, column: 37, scope: !510)
!512 = !DILocation(line: 453, column: 9, scope: !510)
!513 = !DILocation(line: 454, column: 12, scope: !514)
!514 = distinct !DILexicalBlock(scope: !510, file: !1, line: 454, column: 9)
!515 = !DILocation(line: 454, column: 9, scope: !510)
!516 = !DILocation(line: 455, column: 15, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !1, line: 454, column: 18)
!518 = !DILocation(line: 458, column: 33, scope: !517)
!519 = !DILocation(line: 455, column: 7, scope: !517)
!520 = !DILocation(line: 459, column: 7, scope: !517)
!521 = !DILocation(line: 463, column: 13, scope: !170)
!522 = !DILocation(line: 477, column: 12, scope: !176)
!523 = !DILocation(line: 478, column: 12, scope: !176)
!524 = !DILocation(line: 486, column: 10, scope: !525)
!525 = distinct !DILexicalBlock(scope: !176, file: !1, line: 486, column: 6)
!526 = !DILocation(line: 486, column: 24, scope: !525)
!527 = !DILocation(line: 486, column: 18, scope: !525)
!528 = !DILocation(line: 487, column: 12, scope: !529)
!529 = distinct !DILexicalBlock(scope: !525, file: !1, line: 486, column: 34)
!530 = !DILocation(line: 487, column: 4, scope: !529)
!531 = !DILocation(line: 489, column: 4, scope: !529)
!532 = !DILocation(line: 491, column: 11, scope: !533)
!533 = distinct !DILexicalBlock(scope: !176, file: !1, line: 491, column: 6)
!534 = !DILocation(line: 491, column: 17, scope: !533)
!535 = !DILocation(line: 491, column: 6, scope: !176)
!536 = !DILocation(line: 492, column: 12, scope: !537)
!537 = distinct !DILexicalBlock(scope: !533, file: !1, line: 491, column: 27)
!538 = !DILocation(line: 492, column: 4, scope: !537)
!539 = !DILocation(line: 494, column: 4, scope: !537)
!540 = !DILocation(line: 496, column: 22, scope: !176)
!541 = !{!542, !276, i64 0}
!542 = !{!"_Graph", !276, i64 0, !276, i64 4, !276, i64 8, !276, i64 12, !276, i64 16, !276, i64 20, !198, i64 24, !198, i64 32, !198, i64 40}
!543 = !DILocation(line: 496, column: 1, scope: !176)
!544 = !DILocation(line: 498, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !176, file: !1, line: 496, column: 29)
!546 = !DILocation(line: 480, column: 7, scope: !176)
!547 = !DILocation(line: 499, column: 4, scope: !545)
!548 = !DILocation(line: 501, column: 9, scope: !545)
!549 = !DILocation(line: 502, column: 4, scope: !545)
!550 = !DILocation(line: 504, column: 9, scope: !545)
!551 = !DILocation(line: 505, column: 4, scope: !545)
!552 = !DILocation(line: 507, column: 9, scope: !545)
!553 = !DILocation(line: 509, column: 4, scope: !545)
!554 = !DILocation(line: 511, column: 12, scope: !545)
!555 = !DILocation(line: 511, column: 4, scope: !545)
!556 = !DILocation(line: 514, column: 4, scope: !545)
!557 = !DILocation(line: 516, column: 9, scope: !558)
!558 = distinct !DILexicalBlock(scope: !176, file: !1, line: 516, column: 6)
!559 = !DILocation(line: 516, column: 6, scope: !176)
!560 = !DILocation(line: 517, column: 1, scope: !176)
!561 = !DILocation(line: 518, column: 44, scope: !176)
!562 = !DILocation(line: 518, column: 53, scope: !176)
!563 = !DILocation(line: 518, column: 6, scope: !176)
!564 = !DILocation(line: 519, column: 9, scope: !565)
!565 = distinct !DILexicalBlock(scope: !176, file: !1, line: 519, column: 6)
!566 = !DILocation(line: 519, column: 6, scope: !176)
!567 = !DILocation(line: 520, column: 1, scope: !176)
!568 = !DILocation(line: 521, column: 11, scope: !569)
!569 = distinct !DILexicalBlock(scope: !176, file: !1, line: 521, column: 6)
!570 = !DILocation(line: 521, column: 17, scope: !569)
!571 = !DILocation(line: 521, column: 6, scope: !176)
!572 = !DILocation(line: 522, column: 21, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !1, line: 522, column: 9)
!574 = distinct !DILexicalBlock(scope: !569, file: !1, line: 521, column: 27)
!575 = !{!542, !198, i64 32}
!576 = !DILocation(line: 522, column: 28, scope: !573)
!577 = !DILocation(line: 524, column: 30, scope: !578)
!578 = distinct !DILexicalBlock(scope: !573, file: !1, line: 522, column: 38)
!579 = !DILocation(line: 522, column: 9, scope: !574)
!580 = !DILocation(line: 524, column: 19, scope: !578)
!581 = !DILocation(line: 525, column: 30, scope: !578)
!582 = !DILocation(line: 525, column: 39, scope: !578)
!583 = !DILocation(line: 525, column: 46, scope: !578)
!584 = !DILocation(line: 525, column: 60, scope: !578)
!585 = !DILocation(line: 525, column: 53, scope: !578)
!586 = !DILocation(line: 525, column: 19, scope: !578)
!587 = !DILocation(line: 523, column: 12, scope: !578)
!588 = !DILocation(line: 526, column: 4, scope: !578)
!589 = !DILocation(line: 527, column: 62, scope: !590)
!590 = distinct !DILexicalBlock(scope: !573, file: !1, line: 526, column: 11)
!591 = !DILocation(line: 527, column: 12, scope: !590)
!592 = !DILocation(line: 530, column: 9, scope: !593)
!593 = distinct !DILexicalBlock(scope: !176, file: !1, line: 530, column: 6)
!594 = !DILocation(line: 530, column: 6, scope: !176)
!595 = !DILocation(line: 531, column: 1, scope: !176)
!596 = !DILocation(line: 533, column: 1, scope: !176)
!597 = !DILocation(line: 536, column: 12, scope: !176)
!598 = !DILocation(line: 536, column: 4, scope: !176)
!599 = !DILocation(line: 538, column: 4, scope: !176)
!600 = !DILocation(line: 539, column: 1, scope: !176)
