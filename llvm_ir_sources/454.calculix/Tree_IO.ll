; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [48 x i8] c"\0A error in Tree_readFromFile(%p,%s)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A error in Tree_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [104 x i8] c"\0A error in Tree_readFromFile(%p,%s)\0A bad Tree file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [57 x i8] c"\0A error in Tree_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [67 x i8] c"\0A error in Tree_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [72 x i8] c"\0A par: error in Tree_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str8 = private unnamed_addr constant [72 x i8] c"\0A fch: error in Tree_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str9 = private unnamed_addr constant [72 x i8] c"\0A sib: error in Tree_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str10 = private unnamed_addr constant [60 x i8] c"\0A fatal error in Tree_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [75 x i8] c"\0A error in Tree_readFromBinaryFile(%p,%p)\0A itemp(2) : %d items of %d read\0A\00", align 1
@.str12 = private unnamed_addr constant [70 x i8] c"\0A par : error in Tree_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str13 = private unnamed_addr constant [70 x i8] c"\0A fch : error in Tree_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str14 = private unnamed_addr constant [70 x i8] c"\0A sib : error in Tree_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str15 = private unnamed_addr constant [53 x i8] c"\0A fatal error in Tree_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str17 = private unnamed_addr constant [59 x i8] c"\0A error in Tree_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str18 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str20 = private unnamed_addr constant [62 x i8] c"\0A fatal error in Tree_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str21 = private unnamed_addr constant [8 x i8] c"\0A %d %d\00", align 1
@.str22 = private unnamed_addr constant [87 x i8] c"\0A fatal error in Tree_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str23 = private unnamed_addr constant [59 x i8] c"\0A fatal error in Tree_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str24 = private unnamed_addr constant [73 x i8] c"\0A error in Tree_writeToBinaryFile(%p,%p)\0A %d of %d scalar items written\0A\00", align 1
@.str25 = private unnamed_addr constant [77 x i8] c"\0A error in Tree_writeToBinaryFile(%p,%p)\0A tree->par, %d of %d items written\0A\00", align 1
@.str26 = private unnamed_addr constant [77 x i8] c"\0A error in Tree_writeToBinaryFile(%p,%p)\0A tree->fch, %d of %d items written\0A\00", align 1
@.str27 = private unnamed_addr constant [77 x i8] c"\0A error in Tree_writeToBinaryFile(%p,%p)\0A tree->sib, %d of %d items written\0A\00", align 1
@.str28 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str29 = private unnamed_addr constant [92 x i8] c"\0A fatal error in Tree_writeForHumanEye(%p,%p)\0A rc = %d, return from Tree_writeStats(%p,%p)\0A\00", align 1
@.str30 = private unnamed_addr constant [37 x i8] c"\0A vertex   parent   fchild   sibling\00", align 1
@.str31 = private unnamed_addr constant [20 x i8] c"\0A %5d %9d %9d %9d :\00", align 1
@.str32 = private unnamed_addr constant [46 x i8] c"\0A error in Tree_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str33 = private unnamed_addr constant [61 x i8] c"\0A Tree : tree object, %d vertices, root = %d, takes %d bytes\00", align 1
@.str34 = private unnamed_addr constant [71 x i8] c"\0A fatal error in Tree_writeStats(%p,%p)\0A rc = %d, return from fprintf\0A\00", align 1
@.str35 = private unnamed_addr constant [7 x i8] c".treeb\00", align 1
@.str36 = private unnamed_addr constant [7 x i8] c".treef\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_readFromFile(%struct._Tree* %tree, i8* %fn) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !24, metadata !145), !dbg !146
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !25, metadata !145), !dbg !147
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !148
  %2 = icmp eq i8* %fn, null, !dbg !150
  %or.cond = or i1 %1, %2, !dbg !151
  br i1 %or.cond, label %3, label %6, !dbg !151

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !152, !tbaa !154
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree, i8* %fn) #7, !dbg !158
  br label %43, !dbg !159

; <label>:6                                       ; preds = %0
  %7 = tail call i64 @strlen(i8* %fn) #7, !dbg !160
  %8 = trunc i64 %7 to i32, !dbg !160
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !87, metadata !145), !dbg !161
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !89, metadata !145), !dbg !162
  %9 = icmp sgt i32 %8, 6, !dbg !163
  br i1 %9, label %10, label %40, !dbg !165

; <label>:10                                      ; preds = %6
  %11 = shl i64 %7, 32, !dbg !166
  %sext = add i64 %11, -25769803776, !dbg !166
  %12 = ashr exact i64 %sext, 32, !dbg !166
  %13 = getelementptr inbounds i8* %fn, i64 %12, !dbg !166
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0)) #7, !dbg !169
  %15 = icmp eq i32 %14, 0, !dbg !170
  br i1 %15, label %16, label %25, !dbg !171

; <label>:16                                      ; preds = %10
  %17 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !172
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %17, i64 0, metadata !26, metadata !145), !dbg !175
  %18 = icmp eq %struct.__sFILE* %17, null, !dbg !176
  br i1 %18, label %19, label %22, !dbg !177

; <label>:19                                      ; preds = %16
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !178, !tbaa !154
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #7, !dbg !180
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !88, metadata !145), !dbg !181
  br label %43, !dbg !182

; <label>:22                                      ; preds = %16
  %23 = tail call i32 @Tree_readFromBinaryFile(%struct._Tree* %tree, %struct.__sFILE* %17) #8, !dbg !183
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !88, metadata !145), !dbg !181
  %24 = tail call i32 @fclose(%struct.__sFILE* %17) #7, !dbg !185
  br label %43

; <label>:25                                      ; preds = %10
  %26 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !186
  %27 = icmp eq i32 %26, 0, !dbg !188
  br i1 %27, label %28, label %37, !dbg !189

; <label>:28                                      ; preds = %25
  %29 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !190
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %29, i64 0, metadata !26, metadata !145), !dbg !175
  %30 = icmp eq %struct.__sFILE* %29, null, !dbg !193
  br i1 %30, label %31, label %34, !dbg !194

; <label>:31                                      ; preds = %28
  %32 = load %struct.__sFILE** @__stderrp, align 8, !dbg !195, !tbaa !154
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #7, !dbg !197
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !88, metadata !145), !dbg !181
  br label %43, !dbg !198

; <label>:34                                      ; preds = %28
  %35 = tail call i32 @Tree_readFromFormattedFile(%struct._Tree* %tree, %struct.__sFILE* %29) #8, !dbg !199
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !88, metadata !145), !dbg !181
  %36 = tail call i32 @fclose(%struct.__sFILE* %29) #7, !dbg !201
  br label %43

; <label>:37                                      ; preds = %25
  %38 = load %struct.__sFILE** @__stderrp, align 8, !dbg !202, !tbaa !154
  %39 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %38, i8* getelementptr inbounds ([104 x i8]* @.str4, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn, i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !204
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !88, metadata !145), !dbg !181
  br label %43

; <label>:40                                      ; preds = %6
  %41 = load %struct.__sFILE** @__stderrp, align 8, !dbg !205, !tbaa !154
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([104 x i8]* @.str4, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn, i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !207
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !88, metadata !145), !dbg !181
  br label %43

; <label>:43                                      ; preds = %40, %37, %34, %31, %19, %22, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %19 ], [ %23, %22 ], [ 0, %31 ], [ %35, %34 ], [ 0, %37 ], [ 0, %40 ]
  ret i32 %.0, !dbg !208
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
define i32 @Tree_readFromBinaryFile(%struct._Tree* %tree, %struct.__sFILE* %fp) #0 {
  %itemp = alloca [2 x i32], align 4
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !103, metadata !145), !dbg !209
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !104, metadata !145), !dbg !210
  tail call void @llvm.dbg.declare(metadata [2 x i32]* %itemp, metadata !106, metadata !145), !dbg !211
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !212
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !214
  %or.cond = or i1 %1, %2, !dbg !215
  br i1 %or.cond, label %3, label %6, !dbg !215

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !216, !tbaa !154
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([60 x i8]* @.str10, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp) #7, !dbg !218
  br label %57, !dbg !219

; <label>:6                                       ; preds = %0
  tail call void @Tree_clearData(%struct._Tree* %tree) #7, !dbg !220
  %7 = bitcast [2 x i32]* %itemp to i8*, !dbg !221
  %8 = call i64 @fread(i8* %7, i64 4, i64 2, %struct.__sFILE* %fp) #7, !dbg !223
  %9 = trunc i64 %8 to i32, !dbg !223
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !105, metadata !145), !dbg !224
  %10 = icmp eq i32 %9, 2, !dbg !225
  br i1 %10, label %14, label %11, !dbg !226

; <label>:11                                      ; preds = %6
  %12 = load %struct.__sFILE** @__stderrp, align 8, !dbg !227, !tbaa !154
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([75 x i8]* @.str11, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp, i32 %9, i32 2) #7, !dbg !229
  br label %57, !dbg !230

; <label>:14                                      ; preds = %6
  %15 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0, !dbg !231
  %16 = load i32* %15, align 4, !dbg !231, !tbaa !232
  tail call void @Tree_init1(%struct._Tree* %tree, i32 %16) #7, !dbg !234
  %17 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1, !dbg !235
  %18 = load i32* %17, align 4, !dbg !235, !tbaa !232
  %19 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !236
  store i32 %18, i32* %19, align 4, !dbg !237, !tbaa !238
  %20 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !240
  %21 = bitcast i32** %20 to i8**, !dbg !240
  %22 = load i8** %21, align 8, !dbg !240, !tbaa !242
  %23 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !243
  %24 = load i32* %23, align 4, !dbg !243, !tbaa !244
  %25 = sext i32 %24 to i64, !dbg !245
  %26 = tail call i64 @fread(i8* %22, i64 4, i64 %25, %struct.__sFILE* %fp) #7, !dbg !246
  %27 = trunc i64 %26 to i32, !dbg !246
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !105, metadata !145), !dbg !224
  %28 = load i32* %23, align 4, !dbg !247, !tbaa !244
  %29 = icmp eq i32 %27, %28, !dbg !248
  br i1 %29, label %33, label %30, !dbg !249

; <label>:30                                      ; preds = %14
  %31 = load %struct.__sFILE** @__stderrp, align 8, !dbg !250, !tbaa !154
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %31, i8* getelementptr inbounds ([70 x i8]* @.str12, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp, i32 %27, i32 %28) #7, !dbg !252
  br label %57, !dbg !253

; <label>:33                                      ; preds = %14
  %34 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !254
  %35 = bitcast i32** %34 to i8**, !dbg !254
  %36 = load i8** %35, align 8, !dbg !254, !tbaa !256
  %sext = shl i64 %26, 32, !dbg !257
  %37 = ashr exact i64 %sext, 32, !dbg !257
  %38 = tail call i64 @fread(i8* %36, i64 4, i64 %37, %struct.__sFILE* %fp) #7, !dbg !258
  %39 = trunc i64 %38 to i32, !dbg !258
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !105, metadata !145), !dbg !224
  %40 = load i32* %23, align 4, !dbg !259, !tbaa !244
  %41 = icmp eq i32 %39, %40, !dbg !260
  br i1 %41, label %45, label %42, !dbg !261

; <label>:42                                      ; preds = %33
  %43 = load %struct.__sFILE** @__stderrp, align 8, !dbg !262, !tbaa !154
  %44 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %43, i8* getelementptr inbounds ([70 x i8]* @.str13, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp, i32 %39, i32 %40) #7, !dbg !264
  br label %57, !dbg !265

; <label>:45                                      ; preds = %33
  %46 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !266
  %47 = bitcast i32** %46 to i8**, !dbg !266
  %48 = load i8** %47, align 8, !dbg !266, !tbaa !268
  %sext2 = shl i64 %38, 32, !dbg !269
  %49 = ashr exact i64 %sext2, 32, !dbg !269
  %50 = tail call i64 @fread(i8* %48, i64 4, i64 %49, %struct.__sFILE* %fp) #7, !dbg !270
  %51 = trunc i64 %50 to i32, !dbg !270
  tail call void @llvm.dbg.value(metadata i32 %51, i64 0, metadata !105, metadata !145), !dbg !224
  %52 = load i32* %23, align 4, !dbg !271, !tbaa !244
  %53 = icmp eq i32 %51, %52, !dbg !272
  br i1 %53, label %57, label %54, !dbg !273

; <label>:54                                      ; preds = %45
  %55 = load %struct.__sFILE** @__stderrp, align 8, !dbg !274, !tbaa !154
  %56 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %55, i8* getelementptr inbounds ([70 x i8]* @.str14, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp, i32 %51, i32 %52) #7, !dbg !276
  br label %57, !dbg !277

; <label>:57                                      ; preds = %45, %54, %42, %30, %11, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %11 ], [ 0, %30 ], [ 0, %42 ], [ 0, %54 ], [ 1, %45 ]
  ret i32 %.0, !dbg !278
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_readFromFormattedFile(%struct._Tree* %tree, %struct.__sFILE* %fp) #0 {
  %itemp = alloca [2 x i32], align 4
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !94, metadata !145), !dbg !279
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !95, metadata !145), !dbg !280
  tail call void @llvm.dbg.declare(metadata [2 x i32]* %itemp, metadata !97, metadata !145), !dbg !281
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !282
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !284
  %or.cond = or i1 %1, %2, !dbg !285
  br i1 %or.cond, label %3, label %6, !dbg !285

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !286, !tbaa !154
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([57 x i8]* @.str5, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp) #7, !dbg !288
  br label %46, !dbg !289

; <label>:6                                       ; preds = %0
  tail call void @Tree_clearData(%struct._Tree* %tree) #7, !dbg !290
  %7 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0, !dbg !291
  %8 = call i32 @IVfscanf(%struct.__sFILE* %fp, i32 2, i32* %7) #7, !dbg !293
  call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !96, metadata !145), !dbg !294
  %9 = icmp eq i32 %8, 2, !dbg !295
  br i1 %9, label %13, label %10, !dbg !296

; <label>:10                                      ; preds = %6
  %11 = load %struct.__sFILE** @__stderrp, align 8, !dbg !297, !tbaa !154
  %12 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([67 x i8]* @.str6, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp, i32 %8, i32 2) #7, !dbg !299
  br label %46, !dbg !300

; <label>:13                                      ; preds = %6
  %14 = load i32* %7, align 4, !dbg !301, !tbaa !232
  call void @Tree_init1(%struct._Tree* %tree, i32 %14) #7, !dbg !302
  %15 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1, !dbg !303
  %16 = load i32* %15, align 4, !dbg !303, !tbaa !232
  %17 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !304
  store i32 %16, i32* %17, align 4, !dbg !305, !tbaa !238
  %18 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !306
  %19 = load i32* %18, align 4, !dbg !306, !tbaa !244
  %20 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !308
  %21 = load i32** %20, align 8, !dbg !308, !tbaa !242
  %22 = call i32 @IVfscanf(%struct.__sFILE* %fp, i32 %19, i32* %21) #7, !dbg !309
  call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !96, metadata !145), !dbg !294
  %23 = load i32* %18, align 4, !dbg !310, !tbaa !244
  %24 = icmp eq i32 %22, %23, !dbg !311
  br i1 %24, label %28, label %25, !dbg !312

; <label>:25                                      ; preds = %13
  %26 = load %struct.__sFILE** @__stderrp, align 8, !dbg !313, !tbaa !154
  %27 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %26, i8* getelementptr inbounds ([72 x i8]* @.str7, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp, i32 %22, i32 %23) #7, !dbg !315
  br label %46, !dbg !316

; <label>:28                                      ; preds = %13
  %29 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !317
  %30 = load i32** %29, align 8, !dbg !317, !tbaa !256
  %31 = call i32 @IVfscanf(%struct.__sFILE* %fp, i32 %22, i32* %30) #7, !dbg !319
  call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !96, metadata !145), !dbg !294
  %32 = load i32* %18, align 4, !dbg !320, !tbaa !244
  %33 = icmp eq i32 %31, %32, !dbg !321
  br i1 %33, label %37, label %34, !dbg !322

; <label>:34                                      ; preds = %28
  %35 = load %struct.__sFILE** @__stderrp, align 8, !dbg !323, !tbaa !154
  %36 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %35, i8* getelementptr inbounds ([72 x i8]* @.str8, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp, i32 %31, i32 %32) #7, !dbg !325
  br label %46, !dbg !326

; <label>:37                                      ; preds = %28
  %38 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !327
  %39 = load i32** %38, align 8, !dbg !327, !tbaa !268
  %40 = call i32 @IVfscanf(%struct.__sFILE* %fp, i32 %31, i32* %39) #7, !dbg !329
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !96, metadata !145), !dbg !294
  %41 = load i32* %18, align 4, !dbg !330, !tbaa !244
  %42 = icmp eq i32 %40, %41, !dbg !331
  br i1 %42, label %46, label %43, !dbg !332

; <label>:43                                      ; preds = %37
  %44 = load %struct.__sFILE** @__stderrp, align 8, !dbg !333, !tbaa !154
  %45 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %44, i8* getelementptr inbounds ([72 x i8]* @.str9, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp, i32 %40, i32 %41) #7, !dbg !335
  br label %46, !dbg !336

; <label>:46                                      ; preds = %37, %43, %34, %25, %10, %3
  %.0 = phi i32 [ 0, %3 ], [ 0, %10 ], [ 0, %25 ], [ 0, %34 ], [ 0, %43 ], [ 1, %37 ]
  ret i32 %.0, !dbg !337
}

; Function Attrs: optsize
declare void @Tree_clearData(%struct._Tree*) #4

; Function Attrs: optsize
declare i32 @IVfscanf(%struct.__sFILE*, i32, i32*) #4

; Function Attrs: optsize
declare void @Tree_init1(%struct._Tree*, i32) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_writeToFile(%struct._Tree* %tree, i8* %fn) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !109, metadata !145), !dbg !338
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !110, metadata !145), !dbg !339
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !340
  %2 = icmp eq i8* %fn, null, !dbg !342
  %or.cond = or i1 %1, %2, !dbg !343
  br i1 %or.cond, label %3, label %6, !dbg !343

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !344, !tbaa !154
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([53 x i8]* @.str15, i64 0, i64 0), %struct._Tree* %tree, i8* %fn) #7, !dbg !346
  br label %6, !dbg !347

; <label>:6                                       ; preds = %0, %3
  %7 = tail call i64 @strlen(i8* %fn) #7, !dbg !348
  %8 = trunc i64 %7 to i32, !dbg !348
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !112, metadata !145), !dbg !349
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !114, metadata !145), !dbg !350
  %9 = icmp sgt i32 %8, 6, !dbg !351
  br i1 %9, label %10, label %46, !dbg !353

; <label>:10                                      ; preds = %6
  %11 = shl i64 %7, 32, !dbg !354
  %sext = add i64 %11, -25769803776, !dbg !354
  %12 = ashr exact i64 %sext, 32, !dbg !354
  %13 = getelementptr inbounds i8* %fn, i64 %12, !dbg !354
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0)) #7, !dbg !357
  %15 = icmp eq i32 %14, 0, !dbg !358
  br i1 %15, label %16, label %25, !dbg !359

; <label>:16                                      ; preds = %10
  %17 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0)) #7, !dbg !360
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %17, i64 0, metadata !111, metadata !145), !dbg !363
  %18 = icmp eq %struct.__sFILE* %17, null, !dbg !364
  br i1 %18, label %19, label %22, !dbg !365

; <label>:19                                      ; preds = %16
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !366, !tbaa !154
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([59 x i8]* @.str17, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #7, !dbg !368
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !113, metadata !145), !dbg !369
  br label %55, !dbg !370

; <label>:22                                      ; preds = %16
  %23 = tail call i32 @Tree_writeToBinaryFile(%struct._Tree* %tree, %struct.__sFILE* %17) #8, !dbg !371
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !113, metadata !145), !dbg !369
  %24 = tail call i32 @fclose(%struct.__sFILE* %17) #7, !dbg !373
  br label %55

; <label>:25                                      ; preds = %10
  %26 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !374
  %27 = icmp eq i32 %26, 0, !dbg !376
  br i1 %27, label %28, label %37, !dbg !377

; <label>:28                                      ; preds = %25
  %29 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !378
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %29, i64 0, metadata !111, metadata !145), !dbg !363
  %30 = icmp eq %struct.__sFILE* %29, null, !dbg !381
  br i1 %30, label %31, label %34, !dbg !382

; <label>:31                                      ; preds = %28
  %32 = load %struct.__sFILE** @__stderrp, align 8, !dbg !383, !tbaa !154
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([59 x i8]* @.str17, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #7, !dbg !385
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !113, metadata !145), !dbg !369
  br label %55, !dbg !386

; <label>:34                                      ; preds = %28
  %35 = tail call i32 @Tree_writeToFormattedFile(%struct._Tree* %tree, %struct.__sFILE* %29) #8, !dbg !387
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !113, metadata !145), !dbg !369
  %36 = tail call i32 @fclose(%struct.__sFILE* %29) #7, !dbg !389
  br label %55

; <label>:37                                      ; preds = %25
  %38 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !390
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %38, i64 0, metadata !111, metadata !145), !dbg !363
  %39 = icmp eq %struct.__sFILE* %38, null, !dbg !393
  br i1 %39, label %40, label %43, !dbg !394

; <label>:40                                      ; preds = %37
  %41 = load %struct.__sFILE** @__stderrp, align 8, !dbg !395, !tbaa !154
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([59 x i8]* @.str17, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #7, !dbg !397
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !113, metadata !145), !dbg !369
  br label %55, !dbg !398

; <label>:43                                      ; preds = %37
  %44 = tail call i32 @Tree_writeForHumanEye(%struct._Tree* %tree, %struct.__sFILE* %38) #8, !dbg !399
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !113, metadata !145), !dbg !369
  %45 = tail call i32 @fclose(%struct.__sFILE* %38) #7, !dbg !401
  br label %55

; <label>:46                                      ; preds = %6
  %47 = tail call %struct.__sFILE* @"\01_fopen"(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !402
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %47, i64 0, metadata !111, metadata !145), !dbg !363
  %48 = icmp eq %struct.__sFILE* %47, null, !dbg !405
  br i1 %48, label %49, label %52, !dbg !406

; <label>:49                                      ; preds = %46
  %50 = load %struct.__sFILE** @__stderrp, align 8, !dbg !407, !tbaa !154
  %51 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %50, i8* getelementptr inbounds ([59 x i8]* @.str17, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #7, !dbg !409
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !113, metadata !145), !dbg !369
  br label %55, !dbg !410

; <label>:52                                      ; preds = %46
  %53 = tail call i32 @Tree_writeForHumanEye(%struct._Tree* %tree, %struct.__sFILE* %47) #8, !dbg !411
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !113, metadata !145), !dbg !369
  %54 = tail call i32 @fclose(%struct.__sFILE* %47) #7, !dbg !413
  br label %55

; <label>:55                                      ; preds = %49, %52, %22, %19, %40, %43, %31, %34
  %rc.0 = phi i32 [ 0, %19 ], [ %23, %22 ], [ 0, %31 ], [ %35, %34 ], [ 0, %40 ], [ %44, %43 ], [ 0, %49 ], [ %53, %52 ]
  ret i32 %rc.0, !dbg !414
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_writeToBinaryFile(%struct._Tree* %tree, %struct.__sFILE* %fp) #0 {
  %itemp = alloca [2 x i32], align 4
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !123, metadata !145), !dbg !415
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !124, metadata !145), !dbg !416
  tail call void @llvm.dbg.declare(metadata [2 x i32]* %itemp, metadata !126, metadata !145), !dbg !417
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !418
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !420
  %or.cond = or i1 %1, %2, !dbg !421
  br i1 %or.cond, label %7, label %3, !dbg !421

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !422
  %5 = load i32* %4, align 4, !dbg !422, !tbaa !244
  %6 = icmp slt i32 %5, 1, !dbg !423
  br i1 %6, label %7, label %10, !dbg !424

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !425, !tbaa !154
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([59 x i8]* @.str23, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp) #7, !dbg !427
  tail call void @exit(i32 -1) #9, !dbg !428
  unreachable, !dbg !428

; <label>:10                                      ; preds = %3
  %11 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0, !dbg !429
  store i32 %5, i32* %11, align 4, !dbg !430, !tbaa !232
  %12 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !431
  %13 = load i32* %12, align 4, !dbg !431, !tbaa !238
  %14 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1, !dbg !432
  store i32 %13, i32* %14, align 4, !dbg !433, !tbaa !232
  %15 = bitcast [2 x i32]* %itemp to i8*, !dbg !434
  %16 = call i64 @"\01_fwrite"(i8* %15, i64 4, i64 2, %struct.__sFILE* %fp) #7, !dbg !435
  %17 = trunc i64 %16 to i32, !dbg !435
  call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !125, metadata !145), !dbg !436
  %18 = icmp eq i32 %17, 2, !dbg !437
  br i1 %18, label %22, label %19, !dbg !439

; <label>:19                                      ; preds = %10
  %20 = load %struct.__sFILE** @__stderrp, align 8, !dbg !440, !tbaa !154
  %21 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([73 x i8]* @.str24, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp, i32 %17, i32 2) #7, !dbg !442
  br label %59, !dbg !443

; <label>:22                                      ; preds = %10
  %23 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !444
  %24 = bitcast i32** %23 to i8**, !dbg !444
  %25 = load i8** %24, align 8, !dbg !444, !tbaa !242
  %26 = load i32* %4, align 4, !dbg !445, !tbaa !244
  %27 = sext i32 %26 to i64, !dbg !446
  %28 = call i64 @"\01_fwrite"(i8* %25, i64 4, i64 %27, %struct.__sFILE* %fp) #7, !dbg !447
  %29 = trunc i64 %28 to i32, !dbg !447
  call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !125, metadata !145), !dbg !436
  %30 = load i32* %4, align 4, !dbg !448, !tbaa !244
  %31 = icmp eq i32 %29, %30, !dbg !450
  br i1 %31, label %35, label %32, !dbg !451

; <label>:32                                      ; preds = %22
  %33 = load %struct.__sFILE** @__stderrp, align 8, !dbg !452, !tbaa !154
  %34 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %33, i8* getelementptr inbounds ([77 x i8]* @.str25, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp, i32 %29, i32 %30) #7, !dbg !454
  br label %59, !dbg !455

; <label>:35                                      ; preds = %22
  %36 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !456
  %37 = bitcast i32** %36 to i8**, !dbg !456
  %38 = load i8** %37, align 8, !dbg !456, !tbaa !256
  %sext = shl i64 %28, 32, !dbg !457
  %39 = ashr exact i64 %sext, 32, !dbg !457
  %40 = call i64 @"\01_fwrite"(i8* %38, i64 4, i64 %39, %struct.__sFILE* %fp) #7, !dbg !458
  %41 = trunc i64 %40 to i32, !dbg !458
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !125, metadata !145), !dbg !436
  %42 = load i32* %4, align 4, !dbg !459, !tbaa !244
  %43 = icmp eq i32 %41, %42, !dbg !461
  br i1 %43, label %47, label %44, !dbg !462

; <label>:44                                      ; preds = %35
  %45 = load %struct.__sFILE** @__stderrp, align 8, !dbg !463, !tbaa !154
  %46 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %45, i8* getelementptr inbounds ([77 x i8]* @.str26, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp, i32 %41, i32 %42) #7, !dbg !465
  br label %59, !dbg !466

; <label>:47                                      ; preds = %35
  %48 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !467
  %49 = bitcast i32** %48 to i8**, !dbg !467
  %50 = load i8** %49, align 8, !dbg !467, !tbaa !268
  %sext2 = shl i64 %40, 32, !dbg !468
  %51 = ashr exact i64 %sext2, 32, !dbg !468
  %52 = call i64 @"\01_fwrite"(i8* %50, i64 4, i64 %51, %struct.__sFILE* %fp) #7, !dbg !469
  %53 = trunc i64 %52 to i32, !dbg !469
  call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !125, metadata !145), !dbg !436
  %54 = load i32* %4, align 4, !dbg !470, !tbaa !244
  %55 = icmp eq i32 %53, %54, !dbg !472
  br i1 %55, label %59, label %56, !dbg !473

; <label>:56                                      ; preds = %47
  %57 = load %struct.__sFILE** @__stderrp, align 8, !dbg !474, !tbaa !154
  %58 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %57, i8* getelementptr inbounds ([77 x i8]* @.str27, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp, i32 %53, i32 %54) #7, !dbg !476
  br label %59, !dbg !477

; <label>:59                                      ; preds = %47, %56, %44, %32, %19
  %.0 = phi i32 [ 0, %19 ], [ 0, %32 ], [ 0, %44 ], [ 0, %56 ], [ 1, %47 ]
  ret i32 %.0, !dbg !478
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_writeToFormattedFile(%struct._Tree* %tree, %struct.__sFILE* %fp) #0 {
  %ierr = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !117, metadata !145), !dbg !479
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !118, metadata !145), !dbg !480
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !481
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !483
  %or.cond = or i1 %1, %2, !dbg !484
  br i1 %or.cond, label %7, label %3, !dbg !484

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !485
  %5 = load i32* %4, align 4, !dbg !485, !tbaa !244
  %6 = icmp slt i32 %5, 1, !dbg !486
  br i1 %6, label %7, label %10, !dbg !487

; <label>:7                                       ; preds = %3, %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !488, !tbaa !154
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([62 x i8]* @.str20, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp) #7, !dbg !490
  tail call void @exit(i32 -1) #9, !dbg !491
  unreachable, !dbg !491

; <label>:10                                      ; preds = %3
  %11 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !492
  %12 = load i32* %11, align 4, !dbg !492, !tbaa !238
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0), i32 %5, i32 %12) #7, !dbg !493
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !120, metadata !145), !dbg !494
  %14 = icmp slt i32 %13, 0, !dbg !495
  br i1 %14, label %15, label %18, !dbg !497

; <label>:15                                      ; preds = %10
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !498, !tbaa !154
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([87 x i8]* @.str22, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp, i32 %13) #7, !dbg !500
  br label %31, !dbg !501

; <label>:18                                      ; preds = %10
  %19 = load i32* %4, align 4, !dbg !502, !tbaa !244
  %20 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !503
  %21 = load i32** %20, align 8, !dbg !503, !tbaa !242
  tail call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !119, metadata !145), !dbg !504
  %22 = call i32 @IVfp80(%struct.__sFILE* %fp, i32 %19, i32* %21, i32 80, i32* %ierr) #7, !dbg !505
  %23 = load i32* %4, align 4, !dbg !506, !tbaa !244
  %24 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !507
  %25 = load i32** %24, align 8, !dbg !507, !tbaa !256
  call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !119, metadata !145), !dbg !504
  %26 = call i32 @IVfp80(%struct.__sFILE* %fp, i32 %23, i32* %25, i32 80, i32* %ierr) #7, !dbg !508
  %27 = load i32* %4, align 4, !dbg !509, !tbaa !244
  %28 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !510
  %29 = load i32** %28, align 8, !dbg !510, !tbaa !268
  call void @llvm.dbg.value(metadata i32* %ierr, i64 0, metadata !119, metadata !145), !dbg !504
  %30 = call i32 @IVfp80(%struct.__sFILE* %fp, i32 %27, i32* %29, i32 80, i32* %ierr) #7, !dbg !511
  br label %31, !dbg !512

; <label>:31                                      ; preds = %18, %15
  %.0 = phi i32 [ 0, %15 ], [ 1, %18 ]
  ret i32 %.0, !dbg !513
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_writeForHumanEye(%struct._Tree* %tree, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !129, metadata !145), !dbg !514
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !130, metadata !145), !dbg !515
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !516
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !518
  %or.cond = or i1 %1, %2, !dbg !519
  br i1 %or.cond, label %3, label %6, !dbg !519

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !520, !tbaa !154
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str28, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp) #7, !dbg !522
  tail call void @exit(i32 -1) #9, !dbg !523
  unreachable, !dbg !523

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @Tree_writeStats(%struct._Tree* %tree, %struct.__sFILE* %fp) #8, !dbg !524
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !131, metadata !145), !dbg !526
  %8 = icmp eq i32 %7, 0, !dbg !527
  br i1 %8, label %9, label %12, !dbg !528

; <label>:9                                       ; preds = %6
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !529, !tbaa !154
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([92 x i8]* @.str29, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp, i32 0, %struct._Tree* %tree, %struct.__sFILE* %fp) #7, !dbg !531
  br label %.loopexit, !dbg !532

; <label>:12                                      ; preds = %6
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str30, i64 0, i64 0), i64 36, i64 1, %struct.__sFILE* %fp), !dbg !533
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !132, metadata !145), !dbg !534
  %14 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !535
  %15 = load i32* %14, align 4, !dbg !535, !tbaa !244
  %16 = icmp sgt i32 %15, 0, !dbg !538
  br i1 %16, label %.lr.ph, label %.loopexit, !dbg !539

.lr.ph:                                           ; preds = %12
  %17 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !540
  %18 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !542
  %19 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !543
  br label %20, !dbg !539

; <label>:20                                      ; preds = %.lr.ph, %20
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %20 ]
  %21 = load i32** %17, align 8, !dbg !540, !tbaa !242
  %22 = getelementptr inbounds i32* %21, i64 %indvars.iv, !dbg !544
  %23 = load i32* %22, align 4, !dbg !544, !tbaa !232
  %24 = load i32** %18, align 8, !dbg !542, !tbaa !256
  %25 = getelementptr inbounds i32* %24, i64 %indvars.iv, !dbg !545
  %26 = load i32* %25, align 4, !dbg !545, !tbaa !232
  %27 = load i32** %19, align 8, !dbg !543, !tbaa !268
  %28 = getelementptr inbounds i32* %27, i64 %indvars.iv, !dbg !546
  %29 = load i32* %28, align 4, !dbg !546, !tbaa !232
  %30 = trunc i64 %indvars.iv to i32, !dbg !547
  %31 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str31, i64 0, i64 0), i32 %30, i32 %23, i32 %26, i32 %29) #7, !dbg !547
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !539
  %32 = load i32* %14, align 4, !dbg !535, !tbaa !244
  %33 = sext i32 %32 to i64, !dbg !538
  %34 = icmp slt i64 %indvars.iv.next, %33, !dbg !538
  br i1 %34, label %20, label %.loopexit, !dbg !539

.loopexit:                                        ; preds = %20, %12, %9
  %.0 = phi i32 [ 0, %9 ], [ 1, %12 ], [ 1, %20 ]
  ret i32 %.0, !dbg !548
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #5

; Function Attrs: optsize
declare i32 @IVfp80(%struct.__sFILE*, i32, i32*, i32, i32*) #4

; Function Attrs: optsize
declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Tree_writeStats(%struct._Tree* %tree, %struct.__sFILE* %fp) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Tree* %tree, i64 0, metadata !135, metadata !145), !dbg !549
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !136, metadata !145), !dbg !550
  %1 = icmp eq %struct._Tree* %tree, null, !dbg !551
  %2 = icmp eq %struct.__sFILE* %fp, null, !dbg !553
  %or.cond = or i1 %1, %2, !dbg !554
  br i1 %or.cond, label %3, label %6, !dbg !554

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !555, !tbaa !154
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([46 x i8]* @.str32, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp) #7, !dbg !557
  tail call void @exit(i32 -1) #9, !dbg !558
  unreachable, !dbg !558

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !559
  %8 = load i32* %7, align 4, !dbg !559, !tbaa !244
  %9 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !560
  %10 = load i32* %9, align 4, !dbg !560, !tbaa !238
  %11 = tail call i32 @Tree_sizeOf(%struct._Tree* %tree) #7, !dbg !561
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([61 x i8]* @.str33, i64 0, i64 0), i32 %8, i32 %10, i32 %11) #7, !dbg !562
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !137, metadata !145), !dbg !563
  %13 = icmp slt i32 %12, 0, !dbg !564
  br i1 %13, label %14, label %17, !dbg !566

; <label>:14                                      ; preds = %6
  %15 = load %struct.__sFILE** @__stderrp, align 8, !dbg !567, !tbaa !154
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([71 x i8]* @.str34, i64 0, i64 0), %struct._Tree* %tree, %struct.__sFILE* %fp, i32 %12) #7, !dbg !569
  br label %17, !dbg !570

; <label>:17                                      ; preds = %6, %14
  %.0 = phi i32 [ 0, %14 ], [ 1, %6 ]
  ret i32 %.0, !dbg !571
}

; Function Attrs: optsize
declare i32 @Tree_sizeOf(%struct._Tree*) #4

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
!llvm.module.flags = !{!141, !142, !143}
!llvm.ident = !{!144}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !138, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !90, !101, !107, !115, !121, !127, !133}
!6 = !DISubprogram(name: "Tree_readFromFile", scope: !1, file: !1, line: 23, type: !7, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*, i8*)* @Tree_readFromFile, variables: !23)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10, !21}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Tree", file: !12, line: 15, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../Tree.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Tree", file: !12, line: 16, size: 256, align: 64, elements: !14)
!14 = !{!15, !16, !17, !19, !20}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !13, file: !12, line: 17, baseType: !9, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !13, file: !12, line: 18, baseType: !9, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !13, file: !12, line: 19, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "fch", scope: !13, file: !12, line: 20, baseType: !18, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !13, file: !12, line: 21, baseType: !18, size: 64, align: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!23 = !{!24, !25, !26, !87, !88, !89}
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !6, file: !1, line: 24, type: !10)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !6, file: !1, line: 25, type: !21)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !6, file: !1, line: 27, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !29, line: 153, baseType: !30)
!29 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !29, line: 122, size: 1216, align: 64, elements: !31)
!31 = !{!32, !35, !36, !37, !39, !40, !45, !46, !47, !51, !55, !65, !71, !72, !75, !76, !80, !84, !85, !86}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !30, file: !29, line: 123, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !30, file: !29, line: 124, baseType: !9, size: 32, align: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !30, file: !29, line: 125, baseType: !9, size: 32, align: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !30, file: !29, line: 126, baseType: !38, size: 16, align: 16, offset: 128)
!38 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !30, file: !29, line: 127, baseType: !38, size: 16, align: 16, offset: 144)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !30, file: !29, line: 128, baseType: !41, size: 128, align: 64, offset: 192)
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !29, line: 88, size: 128, align: 64, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !41, file: !29, line: 89, baseType: !33, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !41, file: !29, line: 90, baseType: !9, size: 32, align: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !30, file: !29, line: 129, baseType: !9, size: 32, align: 32, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !30, file: !29, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !30, file: !29, line: 133, baseType: !48, size: 64, align: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!9, !4}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !30, file: !29, line: 134, baseType: !52, size: 64, align: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!9, !4, !21, !9}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !30, file: !29, line: 135, baseType: !56, size: 64, align: 64, offset: 576)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !4, !59, !9}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !29, line: 77, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !61, line: 71, baseType: !62)
!61 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !63, line: 46, baseType: !64)
!63 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!64 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !30, file: !29, line: 136, baseType: !66, size: 64, align: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!9, !4, !69, !9}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !30, file: !29, line: 139, baseType: !41, size: 128, align: 64, offset: 704)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !30, file: !29, line: 140, baseType: !73, size: 64, align: 64, offset: 832)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !29, line: 94, flags: DIFlagFwdDecl)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !30, file: !29, line: 141, baseType: !9, size: 32, align: 32, offset: 896)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !30, file: !29, line: 144, baseType: !77, size: 24, align: 8, offset: 928)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 24, align: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 3)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !30, file: !29, line: 145, baseType: !81, size: 8, align: 8, offset: 952)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !30, file: !29, line: 148, baseType: !41, size: 128, align: 64, offset: 960)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !30, file: !29, line: 151, baseType: !9, size: 32, align: 32, offset: 1088)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !30, file: !29, line: 152, baseType: !59, size: 64, align: 64, offset: 1152)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fnlength", scope: !6, file: !1, line: 28, type: !9)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !6, file: !1, line: 28, type: !9)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sulength", scope: !6, file: !1, line: 28, type: !9)
!90 = !DISubprogram(name: "Tree_readFromFormattedFile", scope: !1, file: !1, line: 92, type: !91, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*, %struct.__sFILE*)* @Tree_readFromFormattedFile, variables: !93)
!91 = !DISubroutineType(types: !92)
!92 = !{!9, !10, !27}
!93 = !{!94, !95, !96, !97}
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !90, file: !1, line: 93, type: !10)
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !90, file: !1, line: 94, type: !27)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !90, file: !1, line: 96, type: !9)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemp", scope: !90, file: !1, line: 97, type: !98)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, align: 32, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 2)
!101 = !DISubprogram(name: "Tree_readFromBinaryFile", scope: !1, file: !1, line: 169, type: !91, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*, %struct.__sFILE*)* @Tree_readFromBinaryFile, variables: !102)
!102 = !{!103, !104, !105, !106}
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !101, file: !1, line: 170, type: !10)
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !101, file: !1, line: 171, type: !27)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !101, file: !1, line: 173, type: !9)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemp", scope: !101, file: !1, line: 174, type: !98)
!107 = !DISubprogram(name: "Tree_writeToFile", scope: !1, file: !1, line: 255, type: !7, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*, i8*)* @Tree_writeToFile, variables: !108)
!108 = !{!109, !110, !111, !112, !113, !114}
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !107, file: !1, line: 256, type: !10)
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !107, file: !1, line: 257, type: !21)
!111 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !107, file: !1, line: 259, type: !27)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fnlength", scope: !107, file: !1, line: 260, type: !9)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !107, file: !1, line: 260, type: !9)
!114 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sulength", scope: !107, file: !1, line: 260, type: !9)
!115 = !DISubprogram(name: "Tree_writeToFormattedFile", scope: !1, file: !1, line: 329, type: !91, isLocal: false, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*, %struct.__sFILE*)* @Tree_writeToFormattedFile, variables: !116)
!116 = !{!117, !118, !119, !120}
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !115, file: !1, line: 330, type: !10)
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !115, file: !1, line: 331, type: !27)
!119 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ierr", scope: !115, file: !1, line: 333, type: !9)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !115, file: !1, line: 333, type: !9)
!121 = !DISubprogram(name: "Tree_writeToBinaryFile", scope: !1, file: !1, line: 377, type: !91, isLocal: false, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*, %struct.__sFILE*)* @Tree_writeToBinaryFile, variables: !122)
!122 = !{!123, !124, !125, !126}
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !121, file: !1, line: 378, type: !10)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !121, file: !1, line: 379, type: !27)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !121, file: !1, line: 381, type: !9)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itemp", scope: !121, file: !1, line: 382, type: !98)
!127 = !DISubprogram(name: "Tree_writeForHumanEye", scope: !1, file: !1, line: 436, type: !91, isLocal: false, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*, %struct.__sFILE*)* @Tree_writeForHumanEye, variables: !128)
!128 = !{!129, !130, !131, !132}
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !127, file: !1, line: 437, type: !10)
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !127, file: !1, line: 438, type: !27)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !127, file: !1, line: 440, type: !9)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !127, file: !1, line: 440, type: !9)
!133 = !DISubprogram(name: "Tree_writeStats", scope: !1, file: !1, line: 472, type: !91, isLocal: false, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._Tree*, %struct.__sFILE*)* @Tree_writeStats, variables: !134)
!134 = !{!135, !136, !137}
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !133, file: !1, line: 473, type: !10)
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !133, file: !1, line: 474, type: !27)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !133, file: !1, line: 476, type: !9)
!138 = !{!139, !140}
!139 = !DIGlobalVariable(name: "suffixb", scope: !0, file: !1, line: 5, type: !69, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariable(name: "suffixf", scope: !0, file: !1, line: 6, type: !69, isLocal: true, isDefinition: true)
!141 = !{i32 2, !"Dwarf Version", i32 2}
!142 = !{i32 2, !"Debug Info Version", i32 700000003}
!143 = !{i32 1, !"PIC Level", i32 2}
!144 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!145 = !DIExpression()
!146 = !DILocation(line: 24, column: 12, scope: !6)
!147 = !DILocation(line: 25, column: 12, scope: !6)
!148 = !DILocation(line: 34, column: 11, scope: !149)
!149 = distinct !DILexicalBlock(scope: !6, file: !1, line: 34, column: 6)
!150 = !DILocation(line: 34, column: 25, scope: !149)
!151 = !DILocation(line: 34, column: 19, scope: !149)
!152 = !DILocation(line: 35, column: 12, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !1, line: 34, column: 35)
!154 = !{!155, !155, i64 0}
!155 = !{!"any pointer", !156, i64 0}
!156 = !{!"omnipotent char", !157, i64 0}
!157 = !{!"Simple C/C++ TBAA"}
!158 = !DILocation(line: 35, column: 4, scope: !153)
!159 = !DILocation(line: 37, column: 4, scope: !153)
!160 = !DILocation(line: 44, column: 12, scope: !6)
!161 = !DILocation(line: 28, column: 8, scope: !6)
!162 = !DILocation(line: 28, column: 22, scope: !6)
!163 = !DILocation(line: 46, column: 15, scope: !164)
!164 = distinct !DILexicalBlock(scope: !6, file: !1, line: 46, column: 6)
!165 = !DILocation(line: 46, column: 6, scope: !6)
!166 = !DILocation(line: 47, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 47, column: 9)
!168 = distinct !DILexicalBlock(scope: !164, file: !1, line: 46, column: 28)
!169 = !DILocation(line: 47, column: 9, scope: !167)
!170 = !DILocation(line: 47, column: 49, scope: !167)
!171 = !DILocation(line: 47, column: 9, scope: !168)
!172 = !DILocation(line: 48, column: 18, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !1, line: 48, column: 12)
!174 = distinct !DILexicalBlock(scope: !167, file: !1, line: 47, column: 56)
!175 = !DILocation(line: 27, column: 9, scope: !6)
!176 = !DILocation(line: 48, column: 35, scope: !173)
!177 = !DILocation(line: 48, column: 12, scope: !174)
!178 = !DILocation(line: 49, column: 18, scope: !179)
!179 = distinct !DILexicalBlock(scope: !173, file: !1, line: 48, column: 45)
!180 = !DILocation(line: 49, column: 10, scope: !179)
!181 = !DILocation(line: 28, column: 18, scope: !6)
!182 = !DILocation(line: 52, column: 7, scope: !179)
!183 = !DILocation(line: 53, column: 15, scope: !184)
!184 = distinct !DILexicalBlock(scope: !173, file: !1, line: 52, column: 14)
!185 = !DILocation(line: 54, column: 10, scope: !184)
!186 = !DILocation(line: 56, column: 16, scope: !187)
!187 = distinct !DILexicalBlock(scope: !167, file: !1, line: 56, column: 16)
!188 = !DILocation(line: 56, column: 56, scope: !187)
!189 = !DILocation(line: 56, column: 16, scope: !167)
!190 = !DILocation(line: 57, column: 18, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 57, column: 12)
!192 = distinct !DILexicalBlock(scope: !187, file: !1, line: 56, column: 63)
!193 = !DILocation(line: 57, column: 34, scope: !191)
!194 = !DILocation(line: 57, column: 12, scope: !192)
!195 = !DILocation(line: 58, column: 18, scope: !196)
!196 = distinct !DILexicalBlock(scope: !191, file: !1, line: 57, column: 44)
!197 = !DILocation(line: 58, column: 10, scope: !196)
!198 = !DILocation(line: 61, column: 7, scope: !196)
!199 = !DILocation(line: 62, column: 15, scope: !200)
!200 = distinct !DILexicalBlock(scope: !191, file: !1, line: 61, column: 14)
!201 = !DILocation(line: 63, column: 10, scope: !200)
!202 = !DILocation(line: 66, column: 15, scope: !203)
!203 = distinct !DILexicalBlock(scope: !187, file: !1, line: 65, column: 11)
!204 = !DILocation(line: 66, column: 7, scope: !203)
!205 = !DILocation(line: 73, column: 12, scope: !206)
!206 = distinct !DILexicalBlock(scope: !164, file: !1, line: 72, column: 8)
!207 = !DILocation(line: 73, column: 4, scope: !206)
!208 = !DILocation(line: 79, column: 14, scope: !6)
!209 = !DILocation(line: 170, column: 13, scope: !101)
!210 = !DILocation(line: 171, column: 12, scope: !101)
!211 = !DILocation(line: 174, column: 7, scope: !101)
!212 = !DILocation(line: 180, column: 11, scope: !213)
!213 = distinct !DILexicalBlock(scope: !101, file: !1, line: 180, column: 6)
!214 = !DILocation(line: 180, column: 25, scope: !213)
!215 = !DILocation(line: 180, column: 19, scope: !213)
!216 = !DILocation(line: 181, column: 12, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !1, line: 180, column: 35)
!218 = !DILocation(line: 181, column: 4, scope: !217)
!219 = !DILocation(line: 183, column: 4, scope: !217)
!220 = !DILocation(line: 190, column: 1, scope: !101)
!221 = !DILocation(line: 197, column: 18, scope: !222)
!222 = distinct !DILexicalBlock(scope: !101, file: !1, line: 197, column: 6)
!223 = !DILocation(line: 197, column: 12, scope: !222)
!224 = !DILocation(line: 173, column: 7, scope: !101)
!225 = !DILocation(line: 197, column: 55, scope: !222)
!226 = !DILocation(line: 197, column: 6, scope: !101)
!227 = !DILocation(line: 198, column: 12, scope: !228)
!228 = distinct !DILexicalBlock(scope: !222, file: !1, line: 197, column: 62)
!229 = !DILocation(line: 198, column: 4, scope: !228)
!230 = !DILocation(line: 200, column: 4, scope: !228)
!231 = !DILocation(line: 207, column: 18, scope: !101)
!232 = !{!233, !233, i64 0}
!233 = !{!"int", !156, i64 0}
!234 = !DILocation(line: 207, column: 1, scope: !101)
!235 = !DILocation(line: 208, column: 14, scope: !101)
!236 = !DILocation(line: 208, column: 7, scope: !101)
!237 = !DILocation(line: 208, column: 12, scope: !101)
!238 = !{!239, !233, i64 4}
!239 = !{!"_Tree", !233, i64 0, !233, i64 4, !155, i64 8, !155, i64 16, !155, i64 24}
!240 = !DILocation(line: 214, column: 33, scope: !241)
!241 = distinct !DILexicalBlock(scope: !101, file: !1, line: 214, column: 6)
!242 = !{!239, !155, i64 8}
!243 = !DILocation(line: 214, column: 57, scope: !241)
!244 = !{!239, !233, i64 0}
!245 = !DILocation(line: 214, column: 51, scope: !241)
!246 = !DILocation(line: 214, column: 12, scope: !241)
!247 = !DILocation(line: 215, column: 15, scope: !241)
!248 = !DILocation(line: 215, column: 6, scope: !241)
!249 = !DILocation(line: 214, column: 6, scope: !101)
!250 = !DILocation(line: 216, column: 12, scope: !251)
!251 = distinct !DILexicalBlock(scope: !241, file: !1, line: 215, column: 19)
!252 = !DILocation(line: 216, column: 4, scope: !251)
!253 = !DILocation(line: 219, column: 4, scope: !251)
!254 = !DILocation(line: 221, column: 33, scope: !255)
!255 = distinct !DILexicalBlock(scope: !101, file: !1, line: 221, column: 6)
!256 = !{!239, !155, i64 16}
!257 = !DILocation(line: 221, column: 51, scope: !255)
!258 = !DILocation(line: 221, column: 12, scope: !255)
!259 = !DILocation(line: 222, column: 15, scope: !255)
!260 = !DILocation(line: 222, column: 6, scope: !255)
!261 = !DILocation(line: 221, column: 6, scope: !101)
!262 = !DILocation(line: 223, column: 12, scope: !263)
!263 = distinct !DILexicalBlock(scope: !255, file: !1, line: 222, column: 19)
!264 = !DILocation(line: 223, column: 4, scope: !263)
!265 = !DILocation(line: 226, column: 4, scope: !263)
!266 = !DILocation(line: 228, column: 33, scope: !267)
!267 = distinct !DILexicalBlock(scope: !101, file: !1, line: 228, column: 6)
!268 = !{!239, !155, i64 24}
!269 = !DILocation(line: 228, column: 51, scope: !267)
!270 = !DILocation(line: 228, column: 12, scope: !267)
!271 = !DILocation(line: 229, column: 15, scope: !267)
!272 = !DILocation(line: 229, column: 6, scope: !267)
!273 = !DILocation(line: 228, column: 6, scope: !101)
!274 = !DILocation(line: 230, column: 12, scope: !275)
!275 = distinct !DILexicalBlock(scope: !267, file: !1, line: 229, column: 19)
!276 = !DILocation(line: 230, column: 4, scope: !275)
!277 = !DILocation(line: 233, column: 4, scope: !275)
!278 = !DILocation(line: 235, column: 13, scope: !101)
!279 = !DILocation(line: 93, column: 12, scope: !90)
!280 = !DILocation(line: 94, column: 12, scope: !90)
!281 = !DILocation(line: 97, column: 7, scope: !90)
!282 = !DILocation(line: 103, column: 11, scope: !283)
!283 = distinct !DILexicalBlock(scope: !90, file: !1, line: 103, column: 6)
!284 = !DILocation(line: 103, column: 25, scope: !283)
!285 = !DILocation(line: 103, column: 19, scope: !283)
!286 = !DILocation(line: 104, column: 12, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !1, line: 103, column: 35)
!288 = !DILocation(line: 104, column: 4, scope: !287)
!289 = !DILocation(line: 106, column: 4, scope: !287)
!290 = !DILocation(line: 113, column: 1, scope: !90)
!291 = !DILocation(line: 120, column: 28, scope: !292)
!292 = distinct !DILexicalBlock(scope: !90, file: !1, line: 120, column: 6)
!293 = !DILocation(line: 120, column: 12, scope: !292)
!294 = !DILocation(line: 96, column: 7, scope: !90)
!295 = !DILocation(line: 120, column: 36, scope: !292)
!296 = !DILocation(line: 120, column: 6, scope: !90)
!297 = !DILocation(line: 121, column: 12, scope: !298)
!298 = distinct !DILexicalBlock(scope: !292, file: !1, line: 120, column: 43)
!299 = !DILocation(line: 121, column: 4, scope: !298)
!300 = !DILocation(line: 123, column: 4, scope: !298)
!301 = !DILocation(line: 130, column: 18, scope: !90)
!302 = !DILocation(line: 130, column: 1, scope: !90)
!303 = !DILocation(line: 131, column: 14, scope: !90)
!304 = !DILocation(line: 131, column: 7, scope: !90)
!305 = !DILocation(line: 131, column: 12, scope: !90)
!306 = !DILocation(line: 137, column: 31, scope: !307)
!307 = distinct !DILexicalBlock(scope: !90, file: !1, line: 137, column: 6)
!308 = !DILocation(line: 137, column: 40, scope: !307)
!309 = !DILocation(line: 137, column: 12, scope: !307)
!310 = !DILocation(line: 137, column: 55, scope: !307)
!311 = !DILocation(line: 137, column: 46, scope: !307)
!312 = !DILocation(line: 137, column: 6, scope: !90)
!313 = !DILocation(line: 138, column: 12, scope: !314)
!314 = distinct !DILexicalBlock(scope: !307, file: !1, line: 137, column: 59)
!315 = !DILocation(line: 138, column: 4, scope: !314)
!316 = !DILocation(line: 141, column: 4, scope: !314)
!317 = !DILocation(line: 143, column: 40, scope: !318)
!318 = distinct !DILexicalBlock(scope: !90, file: !1, line: 143, column: 6)
!319 = !DILocation(line: 143, column: 12, scope: !318)
!320 = !DILocation(line: 143, column: 55, scope: !318)
!321 = !DILocation(line: 143, column: 46, scope: !318)
!322 = !DILocation(line: 143, column: 6, scope: !90)
!323 = !DILocation(line: 144, column: 12, scope: !324)
!324 = distinct !DILexicalBlock(scope: !318, file: !1, line: 143, column: 59)
!325 = !DILocation(line: 144, column: 4, scope: !324)
!326 = !DILocation(line: 147, column: 4, scope: !324)
!327 = !DILocation(line: 149, column: 40, scope: !328)
!328 = distinct !DILexicalBlock(scope: !90, file: !1, line: 149, column: 6)
!329 = !DILocation(line: 149, column: 12, scope: !328)
!330 = !DILocation(line: 149, column: 55, scope: !328)
!331 = !DILocation(line: 149, column: 46, scope: !328)
!332 = !DILocation(line: 149, column: 6, scope: !90)
!333 = !DILocation(line: 150, column: 12, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !1, line: 149, column: 59)
!335 = !DILocation(line: 150, column: 4, scope: !334)
!336 = !DILocation(line: 153, column: 4, scope: !334)
!337 = !DILocation(line: 156, column: 13, scope: !90)
!338 = !DILocation(line: 256, column: 12, scope: !107)
!339 = !DILocation(line: 257, column: 12, scope: !107)
!340 = !DILocation(line: 266, column: 11, scope: !341)
!341 = distinct !DILexicalBlock(scope: !107, file: !1, line: 266, column: 6)
!342 = !DILocation(line: 266, column: 25, scope: !341)
!343 = !DILocation(line: 266, column: 19, scope: !341)
!344 = !DILocation(line: 267, column: 12, scope: !345)
!345 = distinct !DILexicalBlock(scope: !341, file: !1, line: 266, column: 35)
!346 = !DILocation(line: 267, column: 4, scope: !345)
!347 = !DILocation(line: 269, column: 1, scope: !345)
!348 = !DILocation(line: 275, column: 12, scope: !107)
!349 = !DILocation(line: 260, column: 8, scope: !107)
!350 = !DILocation(line: 260, column: 22, scope: !107)
!351 = !DILocation(line: 277, column: 15, scope: !352)
!352 = distinct !DILexicalBlock(scope: !107, file: !1, line: 277, column: 6)
!353 = !DILocation(line: 277, column: 6, scope: !107)
!354 = !DILocation(line: 278, column: 17, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !1, line: 278, column: 9)
!356 = distinct !DILexicalBlock(scope: !352, file: !1, line: 277, column: 28)
!357 = !DILocation(line: 278, column: 9, scope: !355)
!358 = !DILocation(line: 278, column: 49, scope: !355)
!359 = !DILocation(line: 278, column: 9, scope: !356)
!360 = !DILocation(line: 279, column: 18, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !1, line: 279, column: 12)
!362 = distinct !DILexicalBlock(scope: !355, file: !1, line: 278, column: 56)
!363 = !DILocation(line: 259, column: 9, scope: !107)
!364 = !DILocation(line: 279, column: 35, scope: !361)
!365 = !DILocation(line: 279, column: 12, scope: !362)
!366 = !DILocation(line: 280, column: 18, scope: !367)
!367 = distinct !DILexicalBlock(scope: !361, file: !1, line: 279, column: 45)
!368 = !DILocation(line: 280, column: 10, scope: !367)
!369 = !DILocation(line: 260, column: 18, scope: !107)
!370 = !DILocation(line: 283, column: 7, scope: !367)
!371 = !DILocation(line: 284, column: 15, scope: !372)
!372 = distinct !DILexicalBlock(scope: !361, file: !1, line: 283, column: 14)
!373 = !DILocation(line: 285, column: 10, scope: !372)
!374 = !DILocation(line: 287, column: 16, scope: !375)
!375 = distinct !DILexicalBlock(scope: !355, file: !1, line: 287, column: 16)
!376 = !DILocation(line: 287, column: 56, scope: !375)
!377 = !DILocation(line: 287, column: 16, scope: !355)
!378 = !DILocation(line: 288, column: 18, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !1, line: 288, column: 12)
!380 = distinct !DILexicalBlock(scope: !375, file: !1, line: 287, column: 63)
!381 = !DILocation(line: 288, column: 34, scope: !379)
!382 = !DILocation(line: 288, column: 12, scope: !380)
!383 = !DILocation(line: 289, column: 18, scope: !384)
!384 = distinct !DILexicalBlock(scope: !379, file: !1, line: 288, column: 44)
!385 = !DILocation(line: 289, column: 10, scope: !384)
!386 = !DILocation(line: 292, column: 7, scope: !384)
!387 = !DILocation(line: 293, column: 15, scope: !388)
!388 = distinct !DILexicalBlock(scope: !379, file: !1, line: 292, column: 14)
!389 = !DILocation(line: 294, column: 10, scope: !388)
!390 = !DILocation(line: 297, column: 18, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 297, column: 12)
!392 = distinct !DILexicalBlock(scope: !375, file: !1, line: 296, column: 11)
!393 = !DILocation(line: 297, column: 34, scope: !391)
!394 = !DILocation(line: 297, column: 12, scope: !392)
!395 = !DILocation(line: 298, column: 18, scope: !396)
!396 = distinct !DILexicalBlock(scope: !391, file: !1, line: 297, column: 44)
!397 = !DILocation(line: 298, column: 10, scope: !396)
!398 = !DILocation(line: 301, column: 7, scope: !396)
!399 = !DILocation(line: 302, column: 15, scope: !400)
!400 = distinct !DILexicalBlock(scope: !391, file: !1, line: 301, column: 14)
!401 = !DILocation(line: 303, column: 10, scope: !400)
!402 = !DILocation(line: 307, column: 15, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 307, column: 9)
!404 = distinct !DILexicalBlock(scope: !352, file: !1, line: 306, column: 8)
!405 = !DILocation(line: 307, column: 31, scope: !403)
!406 = !DILocation(line: 307, column: 9, scope: !404)
!407 = !DILocation(line: 308, column: 15, scope: !408)
!408 = distinct !DILexicalBlock(scope: !403, file: !1, line: 307, column: 41)
!409 = !DILocation(line: 308, column: 7, scope: !408)
!410 = !DILocation(line: 311, column: 4, scope: !408)
!411 = !DILocation(line: 312, column: 12, scope: !412)
!412 = distinct !DILexicalBlock(scope: !403, file: !1, line: 311, column: 11)
!413 = !DILocation(line: 313, column: 7, scope: !412)
!414 = !DILocation(line: 316, column: 1, scope: !107)
!415 = !DILocation(line: 378, column: 13, scope: !121)
!416 = !DILocation(line: 379, column: 12, scope: !121)
!417 = !DILocation(line: 382, column: 7, scope: !121)
!418 = !DILocation(line: 388, column: 11, scope: !419)
!419 = distinct !DILexicalBlock(scope: !121, file: !1, line: 388, column: 6)
!420 = !DILocation(line: 388, column: 25, scope: !419)
!421 = !DILocation(line: 388, column: 19, scope: !419)
!422 = !DILocation(line: 388, column: 42, scope: !419)
!423 = !DILocation(line: 388, column: 44, scope: !419)
!424 = !DILocation(line: 388, column: 6, scope: !121)
!425 = !DILocation(line: 389, column: 12, scope: !426)
!426 = distinct !DILexicalBlock(scope: !419, file: !1, line: 388, column: 51)
!427 = !DILocation(line: 389, column: 4, scope: !426)
!428 = !DILocation(line: 391, column: 4, scope: !426)
!429 = !DILocation(line: 393, column: 1, scope: !121)
!430 = !DILocation(line: 393, column: 10, scope: !121)
!431 = !DILocation(line: 394, column: 18, scope: !121)
!432 = !DILocation(line: 394, column: 1, scope: !121)
!433 = !DILocation(line: 394, column: 10, scope: !121)
!434 = !DILocation(line: 395, column: 13, scope: !121)
!435 = !DILocation(line: 395, column: 6, scope: !121)
!436 = !DILocation(line: 381, column: 7, scope: !121)
!437 = !DILocation(line: 396, column: 9, scope: !438)
!438 = distinct !DILexicalBlock(scope: !121, file: !1, line: 396, column: 6)
!439 = !DILocation(line: 396, column: 6, scope: !121)
!440 = !DILocation(line: 397, column: 12, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !1, line: 396, column: 16)
!442 = !DILocation(line: 397, column: 4, scope: !441)
!443 = !DILocation(line: 399, column: 4, scope: !441)
!444 = !DILocation(line: 401, column: 28, scope: !121)
!445 = !DILocation(line: 401, column: 52, scope: !121)
!446 = !DILocation(line: 401, column: 46, scope: !121)
!447 = !DILocation(line: 401, column: 6, scope: !121)
!448 = !DILocation(line: 402, column: 18, scope: !449)
!449 = distinct !DILexicalBlock(scope: !121, file: !1, line: 402, column: 6)
!450 = !DILocation(line: 402, column: 9, scope: !449)
!451 = !DILocation(line: 402, column: 6, scope: !121)
!452 = !DILocation(line: 403, column: 12, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !1, line: 402, column: 22)
!454 = !DILocation(line: 403, column: 4, scope: !453)
!455 = !DILocation(line: 406, column: 4, scope: !453)
!456 = !DILocation(line: 408, column: 28, scope: !121)
!457 = !DILocation(line: 408, column: 46, scope: !121)
!458 = !DILocation(line: 408, column: 6, scope: !121)
!459 = !DILocation(line: 409, column: 18, scope: !460)
!460 = distinct !DILexicalBlock(scope: !121, file: !1, line: 409, column: 6)
!461 = !DILocation(line: 409, column: 9, scope: !460)
!462 = !DILocation(line: 409, column: 6, scope: !121)
!463 = !DILocation(line: 410, column: 12, scope: !464)
!464 = distinct !DILexicalBlock(scope: !460, file: !1, line: 409, column: 22)
!465 = !DILocation(line: 410, column: 4, scope: !464)
!466 = !DILocation(line: 413, column: 4, scope: !464)
!467 = !DILocation(line: 415, column: 28, scope: !121)
!468 = !DILocation(line: 415, column: 46, scope: !121)
!469 = !DILocation(line: 415, column: 6, scope: !121)
!470 = !DILocation(line: 416, column: 18, scope: !471)
!471 = distinct !DILexicalBlock(scope: !121, file: !1, line: 416, column: 6)
!472 = !DILocation(line: 416, column: 9, scope: !471)
!473 = !DILocation(line: 416, column: 6, scope: !121)
!474 = !DILocation(line: 417, column: 12, scope: !475)
!475 = distinct !DILexicalBlock(scope: !471, file: !1, line: 416, column: 22)
!476 = !DILocation(line: 417, column: 4, scope: !475)
!477 = !DILocation(line: 420, column: 4, scope: !475)
!478 = !DILocation(line: 423, column: 13, scope: !121)
!479 = !DILocation(line: 330, column: 12, scope: !115)
!480 = !DILocation(line: 331, column: 12, scope: !115)
!481 = !DILocation(line: 339, column: 11, scope: !482)
!482 = distinct !DILexicalBlock(scope: !115, file: !1, line: 339, column: 6)
!483 = !DILocation(line: 339, column: 25, scope: !482)
!484 = !DILocation(line: 339, column: 19, scope: !482)
!485 = !DILocation(line: 339, column: 42, scope: !482)
!486 = !DILocation(line: 339, column: 44, scope: !482)
!487 = !DILocation(line: 339, column: 6, scope: !115)
!488 = !DILocation(line: 340, column: 12, scope: !489)
!489 = distinct !DILexicalBlock(scope: !482, file: !1, line: 339, column: 51)
!490 = !DILocation(line: 340, column: 4, scope: !489)
!491 = !DILocation(line: 342, column: 4, scope: !489)
!492 = !DILocation(line: 349, column: 45, scope: !115)
!493 = !DILocation(line: 349, column: 6, scope: !115)
!494 = !DILocation(line: 333, column: 13, scope: !115)
!495 = !DILocation(line: 350, column: 9, scope: !496)
!496 = distinct !DILexicalBlock(scope: !115, file: !1, line: 350, column: 6)
!497 = !DILocation(line: 350, column: 6, scope: !115)
!498 = !DILocation(line: 351, column: 12, scope: !499)
!499 = distinct !DILexicalBlock(scope: !496, file: !1, line: 350, column: 15)
!500 = !DILocation(line: 351, column: 4, scope: !499)
!501 = !DILocation(line: 353, column: 4, scope: !499)
!502 = !DILocation(line: 360, column: 18, scope: !115)
!503 = !DILocation(line: 360, column: 27, scope: !115)
!504 = !DILocation(line: 333, column: 7, scope: !115)
!505 = !DILocation(line: 360, column: 1, scope: !115)
!506 = !DILocation(line: 361, column: 18, scope: !115)
!507 = !DILocation(line: 361, column: 27, scope: !115)
!508 = !DILocation(line: 361, column: 1, scope: !115)
!509 = !DILocation(line: 362, column: 18, scope: !115)
!510 = !DILocation(line: 362, column: 27, scope: !115)
!511 = !DILocation(line: 362, column: 1, scope: !115)
!512 = !DILocation(line: 364, column: 1, scope: !115)
!513 = !DILocation(line: 364, column: 13, scope: !115)
!514 = !DILocation(line: 437, column: 13, scope: !127)
!515 = !DILocation(line: 438, column: 12, scope: !127)
!516 = !DILocation(line: 442, column: 11, scope: !517)
!517 = distinct !DILexicalBlock(scope: !127, file: !1, line: 442, column: 6)
!518 = !DILocation(line: 442, column: 25, scope: !517)
!519 = !DILocation(line: 442, column: 19, scope: !517)
!520 = !DILocation(line: 443, column: 12, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !1, line: 442, column: 35)
!522 = !DILocation(line: 443, column: 4, scope: !521)
!523 = !DILocation(line: 445, column: 4, scope: !521)
!524 = !DILocation(line: 447, column: 12, scope: !525)
!525 = distinct !DILexicalBlock(scope: !127, file: !1, line: 447, column: 6)
!526 = !DILocation(line: 440, column: 7, scope: !127)
!527 = !DILocation(line: 447, column: 39, scope: !525)
!528 = !DILocation(line: 447, column: 6, scope: !127)
!529 = !DILocation(line: 448, column: 12, scope: !530)
!530 = distinct !DILexicalBlock(scope: !525, file: !1, line: 447, column: 46)
!531 = !DILocation(line: 448, column: 4, scope: !530)
!532 = !DILocation(line: 451, column: 4, scope: !530)
!533 = !DILocation(line: 453, column: 1, scope: !127)
!534 = !DILocation(line: 440, column: 11, scope: !127)
!535 = !DILocation(line: 454, column: 25, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !1, line: 454, column: 1)
!537 = distinct !DILexicalBlock(scope: !127, file: !1, line: 454, column: 1)
!538 = !DILocation(line: 454, column: 17, scope: !536)
!539 = !DILocation(line: 454, column: 1, scope: !537)
!540 = !DILocation(line: 456, column: 21, scope: !541)
!541 = distinct !DILexicalBlock(scope: !536, file: !1, line: 454, column: 35)
!542 = !DILocation(line: 456, column: 35, scope: !541)
!543 = !DILocation(line: 456, column: 49, scope: !541)
!544 = !DILocation(line: 456, column: 15, scope: !541)
!545 = !DILocation(line: 456, column: 29, scope: !541)
!546 = !DILocation(line: 456, column: 43, scope: !541)
!547 = !DILocation(line: 455, column: 4, scope: !541)
!548 = !DILocation(line: 459, column: 13, scope: !127)
!549 = !DILocation(line: 473, column: 13, scope: !133)
!550 = !DILocation(line: 474, column: 12, scope: !133)
!551 = !DILocation(line: 482, column: 11, scope: !552)
!552 = distinct !DILexicalBlock(scope: !133, file: !1, line: 482, column: 6)
!553 = !DILocation(line: 482, column: 25, scope: !552)
!554 = !DILocation(line: 482, column: 19, scope: !552)
!555 = !DILocation(line: 483, column: 12, scope: !556)
!556 = distinct !DILexicalBlock(scope: !552, file: !1, line: 482, column: 35)
!557 = !DILocation(line: 483, column: 4, scope: !556)
!558 = !DILocation(line: 485, column: 4, scope: !556)
!559 = !DILocation(line: 489, column: 15, scope: !133)
!560 = !DILocation(line: 489, column: 24, scope: !133)
!561 = !DILocation(line: 489, column: 30, scope: !133)
!562 = !DILocation(line: 487, column: 6, scope: !133)
!563 = !DILocation(line: 476, column: 7, scope: !133)
!564 = !DILocation(line: 490, column: 9, scope: !565)
!565 = distinct !DILexicalBlock(scope: !133, file: !1, line: 490, column: 6)
!566 = !DILocation(line: 490, column: 6, scope: !133)
!567 = !DILocation(line: 491, column: 12, scope: !568)
!568 = distinct !DILexicalBlock(scope: !565, file: !1, line: 490, column: 15)
!569 = !DILocation(line: 491, column: 4, scope: !568)
!570 = !DILocation(line: 493, column: 4, scope: !568)
!571 = !DILocation(line: 495, column: 13, scope: !133)
