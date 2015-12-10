; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/sre_string.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"malloc of %ld bytes failed: file %s line %d\00", align 1
@.str1 = private unnamed_addr constant [45 x i8] c"realloc of %ld bytes failed: file %s line %d\00", align 1
@.str2 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/sre_string.c\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale

; Function Attrs: nounwind optsize ssp uwtable
define i8* @Strdup(i8* %s) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !13, metadata !225), !dbg !226
  %1 = icmp eq i8* %s, null, !dbg !227
  br i1 %1, label %10, label %2, !dbg !229

; <label>:2                                       ; preds = %0
  %3 = tail call i64 @strlen(i8* %s) #5, !dbg !230
  %4 = add i64 %3, 1, !dbg !232
  %5 = tail call i8* @malloc(i64 %4) #5, !dbg !233
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !14, metadata !225), !dbg !234
  %6 = icmp eq i8* %5, null, !dbg !235
  br i1 %6, label %10, label %7, !dbg !236

; <label>:7                                       ; preds = %2
  %8 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %5, i1 false), !dbg !237
  %9 = tail call i8* @__strcpy_chk(i8* %5, i8* %s, i64 %8) #5, !dbg !237
  br label %10, !dbg !238

; <label>:10                                      ; preds = %2, %0, %7
  %.0 = phi i8* [ %5, %7 ], [ null, %0 ], [ null, %2 ]
  ret i8* %.0, !dbg !239
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @StringChop(i8* nocapture %s) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !19, metadata !225), !dbg !240
  %1 = tail call i64 @strlen(i8* %s) #5, !dbg !241
  %2 = add i64 %1, 4294967295, !dbg !242
  %3 = trunc i64 %2 to i32, !dbg !241
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !20, metadata !225), !dbg !243
  %4 = icmp sgt i32 %3, -1, !dbg !244
  br i1 %4, label %.lr.ph, label %.critedge, !dbg !245

.lr.ph:                                           ; preds = %0
  %sext5 = shl i64 %2, 32
  %5 = ashr exact i64 %sext5, 32
  br label %6, !dbg !245

; <label>:6                                       ; preds = %.lr.ph, %17
  %indvars.iv = phi i64 [ %5, %.lr.ph ], [ %indvars.iv.next, %17 ]
  %7 = getelementptr inbounds i8* %s, i64 %indvars.iv, !dbg !246
  %8 = load i8* %7, align 1, !dbg !246, !tbaa !247
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !210, metadata !225) #6, !dbg !250
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !216, metadata !225) #6, !dbg !252
  tail call void @llvm.dbg.value(metadata i64 16384, i64 0, metadata !217, metadata !225) #6, !dbg !254
  %isascii.i.i1 = icmp sgt i8 %8, -1, !dbg !255
  br i1 %isascii.i.i1, label %9, label %14, !dbg !255

; <label>:9                                       ; preds = %6
  %10 = sext i8 %8 to i64, !dbg !256
  %11 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %10, !dbg !256
  %12 = load i32* %11, align 4, !dbg !256, !tbaa !257
  %13 = and i32 %12, 16384, !dbg !259
  br label %isspace.exit, !dbg !255

; <label>:14                                      ; preds = %6
  %15 = sext i8 %8 to i32, !dbg !260
  %16 = tail call i32 @__maskrune(i32 %15, i64 16384) #5, !dbg !261
  br label %isspace.exit, !dbg !255

isspace.exit:                                     ; preds = %9, %14
  %.sink.i.in.i = phi i32 [ %13, %9 ], [ %16, %14 ], !dbg !262
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !263
  br i1 %.sink.i.i, label %.critedge, label %17, !dbg !264

; <label>:17                                      ; preds = %isspace.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !245
  %18 = icmp sgt i64 %indvars.iv, 0, !dbg !244
  br i1 %18, label %6, label %.critedge, !dbg !245

.critedge:                                        ; preds = %17, %isspace.exit, %0
  %i.0.lcssa = phi i64 [ %2, %0 ], [ %indvars.iv.next, %17 ], [ %indvars.iv, %isspace.exit ]
  %19 = shl i64 %i.0.lcssa, 32, !dbg !265
  %sext = add i64 %19, 4294967296, !dbg !265
  %20 = ashr exact i64 %sext, 32, !dbg !265
  %21 = getelementptr inbounds i8* %s, i64 %20, !dbg !265
  store i8 0, i8* %21, align 1, !dbg !266, !tbaa !247
  ret void, !dbg !267
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Strinsert(i8* nocapture %s1, i8 signext %c, i32 %pos) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s1, i64 0, metadata !25, metadata !225), !dbg !268
  tail call void @llvm.dbg.value(metadata i8 %c, i64 0, metadata !26, metadata !225), !dbg !269
  tail call void @llvm.dbg.value(metadata i32 %pos, i64 0, metadata !27, metadata !225), !dbg !270
  %1 = sext i32 %pos to i64, !dbg !271
  %2 = getelementptr inbounds i8* %s1, i64 %1, !dbg !271
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !29, metadata !225), !dbg !273
  %3 = icmp eq i8 %c, 0, !dbg !274
  br i1 %3, label %._crit_edge, label %.lr.ph, !dbg !274

.lr.ph:                                           ; preds = %0, %.lr.ph
  %s.02 = phi i8* [ %5, %.lr.ph ], [ %2, %0 ]
  %.01 = phi i8 [ %4, %.lr.ph ], [ %c, %0 ]
  %4 = load i8* %s.02, align 1, !dbg !275, !tbaa !247
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !28, metadata !225), !dbg !278
  store i8 %.01, i8* %s.02, align 1, !dbg !279, !tbaa !247
  tail call void @llvm.dbg.value(metadata i8 %4, i64 0, metadata !26, metadata !225), !dbg !269
  %5 = getelementptr inbounds i8* %s.02, i64 1, !dbg !280
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !29, metadata !225), !dbg !273
  %6 = icmp eq i8 %4, 0, !dbg !274
  br i1 %6, label %._crit_edge, label %.lr.ph, !dbg !274

._crit_edge:                                      ; preds = %.lr.ph, %0
  %s.0.lcssa = phi i8* [ %2, %0 ], [ %5, %.lr.ph ]
  store i8 0, i8* %s.0.lcssa, align 1, !dbg !281, !tbaa !247
  ret i32 1, !dbg !282
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Strdelete(i8* nocapture %s1, i32 %pos) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s1, i64 0, metadata !34, metadata !225), !dbg !283
  tail call void @llvm.dbg.value(metadata i32 %pos, i64 0, metadata !35, metadata !225), !dbg !284
  %1 = sext i32 %pos to i64, !dbg !285
  %2 = getelementptr inbounds i8* %s1, i64 %1, !dbg !285
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !36, metadata !225), !dbg !287
  %3 = load i8* %2, align 1, !dbg !288, !tbaa !247
  %4 = icmp eq i8 %3, 0, !dbg !290
  br i1 %4, label %._crit_edge, label %.lr.ph, !dbg !290

.lr.ph:                                           ; preds = %0, %.lr.ph
  %s.01 = phi i8* [ %5, %.lr.ph ], [ %2, %0 ]
  %5 = getelementptr inbounds i8* %s.01, i64 1, !dbg !291
  %6 = load i8* %5, align 1, !dbg !292, !tbaa !247
  store i8 %6, i8* %s.01, align 1, !dbg !293, !tbaa !247
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !36, metadata !225), !dbg !287
  %7 = icmp eq i8 %6, 0, !dbg !290
  br i1 %7, label %._crit_edge, label %.lr.ph, !dbg !290

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret i32 1, !dbg !294
}

; Function Attrs: nounwind optsize ssp uwtable
define void @s2lower(i8* nocapture %s) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !39, metadata !225), !dbg !295
  %1 = load i8* %s, align 1, !dbg !296, !tbaa !247
  %2 = icmp eq i8 %1, 0, !dbg !299
  br i1 %2, label %._crit_edge, label %.lr.ph, !dbg !300

.lr.ph:                                           ; preds = %0, %.lr.ph
  %3 = phi i8 [ %8, %.lr.ph ], [ %1, %0 ]
  %.01 = phi i8* [ %7, %.lr.ph ], [ %s, %0 ]
  %4 = sext i8 %3 to i32, !dbg !296
  %5 = tail call i32 @sre_tolower(i32 %4) #5, !dbg !301
  %6 = trunc i32 %5 to i8, !dbg !301
  store i8 %6, i8* %.01, align 1, !dbg !302, !tbaa !247
  %7 = getelementptr inbounds i8* %.01, i64 1, !dbg !303
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !39, metadata !225), !dbg !295
  %8 = load i8* %7, align 1, !dbg !296, !tbaa !247
  %9 = icmp eq i8 %8, 0, !dbg !299
  br i1 %9, label %._crit_edge, label %.lr.ph, !dbg !300

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void, !dbg !304
}

; Function Attrs: optsize
declare i32 @sre_tolower(i32) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @s2upper(i8* nocapture %s) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !42, metadata !225), !dbg !305
  %1 = load i8* %s, align 1, !dbg !306, !tbaa !247
  %2 = icmp eq i8 %1, 0, !dbg !309
  br i1 %2, label %._crit_edge, label %.lr.ph, !dbg !310

.lr.ph:                                           ; preds = %0, %.lr.ph
  %3 = phi i8 [ %8, %.lr.ph ], [ %1, %0 ]
  %.01 = phi i8* [ %7, %.lr.ph ], [ %s, %0 ]
  %4 = sext i8 %3 to i32, !dbg !306
  %5 = tail call i32 @sre_toupper(i32 %4) #5, !dbg !311
  %6 = trunc i32 %5 to i8, !dbg !311
  store i8 %6, i8* %.01, align 1, !dbg !312, !tbaa !247
  %7 = getelementptr inbounds i8* %.01, i64 1, !dbg !313
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !42, metadata !225), !dbg !305
  %8 = load i8* %7, align 1, !dbg !306, !tbaa !247
  %9 = icmp eq i8 %8, 0, !dbg !309
  br i1 %9, label %._crit_edge, label %.lr.ph, !dbg !310

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void, !dbg !314
}

; Function Attrs: optsize
declare i32 @sre_toupper(i32) #4

; Function Attrs: nounwind optsize ssp uwtable
define noalias i8* @sre_malloc(i8* %file, i32 %line, i64 %size) #0 {
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !52, metadata !225), !dbg !315
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !53, metadata !225), !dbg !316
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !54, metadata !225), !dbg !317
  %1 = tail call i8* @malloc(i64 %size) #5, !dbg !318
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !55, metadata !225), !dbg !320
  %2 = icmp eq i8* %1, null, !dbg !321
  br i1 %2, label %3, label %4, !dbg !322

; <label>:3                                       ; preds = %0
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), i64 %size, i8* %file, i32 %line) #5, !dbg !323
  br label %4, !dbg !323

; <label>:4                                       ; preds = %3, %0
  ret i8* %1, !dbg !324
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define noalias i8* @sre_realloc(i8* %file, i32 %line, i8* nocapture %p, i64 %size) #0 {
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !60, metadata !225), !dbg !325
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !61, metadata !225), !dbg !326
  tail call void @llvm.dbg.value(metadata i8* %p, i64 0, metadata !62, metadata !225), !dbg !327
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !63, metadata !225), !dbg !328
  %1 = tail call i8* @realloc(i8* %p, i64 %size) #5, !dbg !329
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !64, metadata !225), !dbg !331
  %2 = icmp eq i8* %1, null, !dbg !332
  br i1 %2, label %3, label %4, !dbg !333

; <label>:3                                       ; preds = %0
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i64 %size, i8* %file, i32 %line) #5, !dbg !334
  br label %4, !dbg !334

; <label>:4                                       ; preds = %3, %0
  ret i8* %1, !dbg !335
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @Free2DArray(i8** %p, i32 %dim1) #0 {
  tail call void @llvm.dbg.value(metadata i8** %p, i64 0, metadata !70, metadata !225), !dbg !336
  tail call void @llvm.dbg.value(metadata i32 %dim1, i64 0, metadata !71, metadata !225), !dbg !337
  %1 = icmp eq i8** %p, null, !dbg !338
  br i1 %1, label %11, label %.preheader, !dbg !340

.preheader:                                       ; preds = %0
  %2 = icmp sgt i32 %dim1, 0, !dbg !341
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !345

.lr.ph:                                           ; preds = %.preheader
  %3 = add i32 %dim1, -1, !dbg !345
  br label %4, !dbg !345

; <label>:4                                       ; preds = %9, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %9 ]
  %5 = getelementptr inbounds i8** %p, i64 %indvars.iv, !dbg !346
  %6 = load i8** %5, align 8, !dbg !346, !tbaa !348
  %7 = icmp eq i8* %6, null, !dbg !350
  br i1 %7, label %9, label %8, !dbg !351

; <label>:8                                       ; preds = %4
  tail call void @free(i8* %6) #7, !dbg !352
  br label %9, !dbg !352

; <label>:9                                       ; preds = %4, %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !345
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !345
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !345
  br i1 %exitcond, label %._crit_edge, label %4, !dbg !345

._crit_edge:                                      ; preds = %9, %.preheader
  %10 = bitcast i8** %p to i8*, !dbg !353
  tail call void @free(i8* %10) #7, !dbg !354
  br label %11, !dbg !355

; <label>:11                                      ; preds = %0, %._crit_edge
  ret void, !dbg !356
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @Free3DArray(i8*** %p, i32 %dim1, i32 %dim2) #0 {
  tail call void @llvm.dbg.value(metadata i8*** %p, i64 0, metadata !78, metadata !225), !dbg !357
  tail call void @llvm.dbg.value(metadata i32 %dim1, i64 0, metadata !79, metadata !225), !dbg !358
  tail call void @llvm.dbg.value(metadata i32 %dim2, i64 0, metadata !80, metadata !225), !dbg !359
  %1 = icmp eq i8*** %p, null, !dbg !360
  br i1 %1, label %20, label %.preheader1, !dbg !362

.preheader1:                                      ; preds = %0
  %2 = icmp sgt i32 %dim1, 0, !dbg !363
  br i1 %2, label %.lr.ph4, label %._crit_edge5, !dbg !367

.lr.ph4:                                          ; preds = %.preheader1
  %3 = icmp sgt i32 %dim2, 0, !dbg !368
  %4 = add i32 %dim2, -1, !dbg !367
  %5 = add i32 %dim1, -1, !dbg !367
  br label %6, !dbg !367

; <label>:6                                       ; preds = %18, %.lr.ph4
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7, %18 ]
  %7 = getelementptr inbounds i8*** %p, i64 %indvars.iv6, !dbg !373
  %8 = load i8*** %7, align 8, !dbg !373, !tbaa !348
  %9 = icmp eq i8** %8, null, !dbg !374
  br i1 %9, label %18, label %.preheader, !dbg !375

.preheader:                                       ; preds = %6
  %10 = bitcast i8** %8 to i8*
  br i1 %3, label %.lr.ph, label %.preheader._crit_edge, !dbg !376

.lr.ph:                                           ; preds = %.preheader, %._crit_edge10
  %11 = phi i8** [ %.pre, %._crit_edge10 ], [ %8, %.preheader ], !dbg !377
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge10 ], [ 0, %.preheader ]
  %12 = getelementptr inbounds i8** %11, i64 %indvars.iv, !dbg !377
  %13 = load i8** %12, align 8, !dbg !377, !tbaa !348
  %14 = icmp eq i8* %13, null, !dbg !379
  br i1 %14, label %16, label %15, !dbg !380

; <label>:15                                      ; preds = %.lr.ph
  tail call void @free(i8* %13) #7, !dbg !381
  br label %16, !dbg !381

; <label>:16                                      ; preds = %.lr.ph, %15
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !376
  %exitcond = icmp eq i32 %lftr.wideiv, %4, !dbg !376
  br i1 %exitcond, label %._crit_edge, label %._crit_edge10, !dbg !376

._crit_edge10:                                    ; preds = %16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !376
  %.pre = load i8*** %7, align 8, !dbg !377, !tbaa !348
  br label %.lr.ph, !dbg !376

._crit_edge:                                      ; preds = %16
  %.phi.trans.insert = bitcast i8*** %7 to i8**
  %.pre11 = load i8** %.phi.trans.insert, align 8, !dbg !382, !tbaa !348
  br label %.preheader._crit_edge, !dbg !376

.preheader._crit_edge:                            ; preds = %.preheader, %._crit_edge
  %17 = phi i8* [ %.pre11, %._crit_edge ], [ %10, %.preheader ]
  tail call void @free(i8* %17) #7, !dbg !383
  br label %18, !dbg !384

; <label>:18                                      ; preds = %6, %.preheader._crit_edge
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !367
  %lftr.wideiv8 = trunc i64 %indvars.iv6 to i32, !dbg !367
  %exitcond9 = icmp eq i32 %lftr.wideiv8, %5, !dbg !367
  br i1 %exitcond9, label %._crit_edge5, label %6, !dbg !367

._crit_edge5:                                     ; preds = %18, %.preheader1
  %19 = bitcast i8*** %p to i8*, !dbg !385
  tail call void @free(i8* %19) #7, !dbg !386
  br label %20, !dbg !387

; <label>:20                                      ; preds = %0, %._crit_edge5
  ret void, !dbg !388
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias i8* @RandomSequence(i8* nocapture readonly %alphabet, float* %p, i32 %n, i32 %len) #0 {
  tail call void @llvm.dbg.value(metadata i8* %alphabet, i64 0, metadata !89, metadata !225), !dbg !389
  tail call void @llvm.dbg.value(metadata float* %p, i64 0, metadata !90, metadata !225), !dbg !390
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !91, metadata !225), !dbg !391
  tail call void @llvm.dbg.value(metadata i32 %len, i64 0, metadata !92, metadata !225), !dbg !392
  %1 = add nsw i32 %len, 1, !dbg !393
  %2 = sext i32 %1 to i64, !dbg !393
  %3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([68 x i8]* @.str2, i64 0, i64 0), i32 199, i64 %2) #7, !dbg !393
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !93, metadata !225), !dbg !394
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !94, metadata !225), !dbg !395
  %4 = icmp sgt i32 %len, 0, !dbg !396
  br i1 %4, label %.lr.ph, label %12, !dbg !399

.lr.ph:                                           ; preds = %0
  %5 = add i32 %len, -1, !dbg !399
  br label %6, !dbg !399

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %7 = tail call i32 @FChoose(float* %p, i32 %n) #5, !dbg !400
  %8 = sext i32 %7 to i64, !dbg !401
  %9 = getelementptr inbounds i8* %alphabet, i64 %8, !dbg !401
  %10 = load i8* %9, align 1, !dbg !401, !tbaa !247
  %11 = getelementptr inbounds i8* %3, i64 %indvars.iv, !dbg !402
  store i8 %10, i8* %11, align 1, !dbg !403, !tbaa !247
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !399
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !399
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !399
  br i1 %exitcond, label %._crit_edge, label %6, !dbg !399

._crit_edge:                                      ; preds = %6
  %phitmp = sext i32 %len to i64, !dbg !399
  br label %12, !dbg !399

; <label>:12                                      ; preds = %._crit_edge, %0
  %x.0.lcssa = phi i64 [ %phitmp, %._crit_edge ], [ 0, %0 ]
  %13 = getelementptr inbounds i8* %3, i64 %x.0.lcssa, !dbg !404
  store i8 0, i8* %13, align 1, !dbg !405, !tbaa !247
  ret i8* %3, !dbg !406
}

; Function Attrs: optsize
declare i32 @FChoose(float*, i32) #4

; Function Attrs: nounwind optsize ssp uwtable
define i8* @sre_fgets(i8** nocapture %buf, i32* nocapture %n, %struct.__sFILE* nocapture %fp) #0 {
  tail call void @llvm.dbg.value(metadata i8** %buf, i64 0, metadata !160, metadata !225), !dbg !407
  tail call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !161, metadata !225), !dbg !408
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !162, metadata !225), !dbg !409
  %1 = load i32* %n, align 4, !dbg !410, !tbaa !257
  %2 = icmp eq i32 %1, 0, !dbg !412
  br i1 %2, label %3, label %._crit_edge, !dbg !413

._crit_edge:                                      ; preds = %0
  %.pre = load i8** %buf, align 8, !dbg !414, !tbaa !348
  br label %5, !dbg !413

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([68 x i8]* @.str2, i64 0, i64 0), i32 253, i64 128) #7, !dbg !416
  store i8* %4, i8** %buf, align 8, !dbg !418, !tbaa !348
  store i32 128, i32* %n, align 4, !dbg !419, !tbaa !257
  br label %5, !dbg !420

; <label>:5                                       ; preds = %._crit_edge, %3
  %6 = phi i32 [ %1, %._crit_edge ], [ 128, %3 ]
  %7 = phi i8* [ %.pre, %._crit_edge ], [ %4, %3 ]
  %8 = tail call i8* @fgets(i8* %7, i32 %6, %struct.__sFILE* %fp) #5, !dbg !421
  %9 = icmp eq i8* %8, null, !dbg !422
  br i1 %9, label %48, label %10, !dbg !423

; <label>:10                                      ; preds = %5
  %11 = tail call i32 @feof(%struct.__sFILE* %fp) #5, !dbg !424
  %12 = icmp eq i32 %11, 0, !dbg !424
  %13 = load i8** %buf, align 8, !dbg !426, !tbaa !348
  br i1 %12, label %14, label %48, !dbg !427

; <label>:14                                      ; preds = %10
  %15 = tail call i64 @strlen(i8* %13) #5, !dbg !428
  %16 = shl i64 %15, 32, !dbg !429
  %sext = add i64 %16, -4294967296, !dbg !429
  %17 = ashr exact i64 %sext, 32, !dbg !429
  %18 = getelementptr inbounds i8* %13, i64 %17, !dbg !429
  %19 = load i8* %18, align 1, !dbg !429, !tbaa !247
  %20 = icmp eq i8 %19, 10, !dbg !431
  br i1 %20, label %48, label %21, !dbg !432

; <label>:21                                      ; preds = %14
  %22 = load i32* %n, align 4, !dbg !433, !tbaa !257
  %23 = add nsw i32 %22, -1, !dbg !434
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !165, metadata !225), !dbg !435
  %24 = sext i32 %23 to i64
  %25 = add nsw i32 %22, 128, !dbg !436
  store i32 %25, i32* %n, align 4, !dbg !436, !tbaa !257
  %26 = sext i32 %25 to i64, !dbg !438
  %27 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([68 x i8]* @.str2, i64 0, i64 0), i32 283, i8* %13, i64 %26) #7, !dbg !438
  store i8* %27, i8** %buf, align 8, !dbg !439, !tbaa !348
  %28 = getelementptr inbounds i8* %27, i64 %24, !dbg !440
  tail call void @llvm.dbg.value(metadata i8* %28, i64 0, metadata !163, metadata !225), !dbg !441
  %29 = tail call i8* @fgets(i8* %28, i32 129, %struct.__sFILE* %fp) #5, !dbg !442
  %30 = icmp eq i8* %29, null, !dbg !444
  br i1 %30, label %._crit_edge7, label %.lr.ph, !dbg !445

._crit_edge7:                                     ; preds = %._crit_edge2, %21
  %31 = load i8** %buf, align 8, !dbg !446, !tbaa !348
  br label %48, !dbg !447

.lr.ph:                                           ; preds = %21, %._crit_edge2
  %32 = phi i8* [ %43, %._crit_edge2 ], [ %28, %21 ]
  %33 = phi i8* [ %42, %._crit_edge2 ], [ %27, %21 ]
  %indvars.iv5 = phi i64 [ %indvars.iv.next, %._crit_edge2 ], [ %24, %21 ]
  %34 = tail call i64 @strlen(i8* %32) #5, !dbg !448
  %35 = shl i64 %34, 32, !dbg !449
  %sext1 = add i64 %35, -4294967296, !dbg !449
  %36 = ashr exact i64 %sext1, 32, !dbg !449
  %.sum = add nsw i64 %36, %indvars.iv5, !dbg !449
  %37 = getelementptr inbounds i8* %33, i64 %.sum, !dbg !449
  %38 = load i8* %37, align 1, !dbg !449, !tbaa !247
  %39 = icmp eq i8 %38, 10, !dbg !451
  br i1 %39, label %46, label %._crit_edge2, !dbg !452

._crit_edge2:                                     ; preds = %.lr.ph
  %indvars.iv.next = add i64 %indvars.iv5, 128, !dbg !452
  %.pre3 = load i32* %n, align 4, !dbg !436, !tbaa !257
  %.pre4 = load i8** %buf, align 8, !dbg !438, !tbaa !348
  %40 = add nsw i32 %.pre3, 128, !dbg !436
  store i32 %40, i32* %n, align 4, !dbg !436, !tbaa !257
  %41 = sext i32 %40 to i64, !dbg !438
  %42 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([68 x i8]* @.str2, i64 0, i64 0), i32 283, i8* %.pre4, i64 %41) #7, !dbg !438
  store i8* %42, i8** %buf, align 8, !dbg !439, !tbaa !348
  %43 = getelementptr inbounds i8* %42, i64 %indvars.iv.next, !dbg !440
  tail call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !163, metadata !225), !dbg !441
  %44 = tail call i8* @fgets(i8* %43, i32 129, %struct.__sFILE* %fp) #5, !dbg !442
  %45 = icmp eq i8* %44, null, !dbg !444
  br i1 %45, label %._crit_edge7, label %.lr.ph, !dbg !445

; <label>:46                                      ; preds = %.lr.ph
  %47 = load i8** %buf, align 8, !dbg !453, !tbaa !348
  br label %48, !dbg !454

; <label>:48                                      ; preds = %14, %10, %5, %46, %._crit_edge7
  %.0 = phi i8* [ %31, %._crit_edge7 ], [ %47, %46 ], [ null, %5 ], [ %13, %10 ], [ %13, %14 ]
  ret i8* %.0, !dbg !455
}

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct.__sFILE* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @feof(%struct.__sFILE* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @sre_strcat(i8** nocapture %dest, i32 %ldest, i8* %src, i32 %lsrc) #0 {
  tail call void @llvm.dbg.value(metadata i8** %dest, i64 0, metadata !170, metadata !225), !dbg !456
  tail call void @llvm.dbg.value(metadata i32 %ldest, i64 0, metadata !171, metadata !225), !dbg !457
  tail call void @llvm.dbg.value(metadata i8* %src, i64 0, metadata !172, metadata !225), !dbg !458
  tail call void @llvm.dbg.value(metadata i32 %lsrc, i64 0, metadata !173, metadata !225), !dbg !459
  %1 = icmp slt i32 %ldest, 0, !dbg !460
  br i1 %1, label %2, label %7, !dbg !462

; <label>:2                                       ; preds = %0
  %3 = load i8** %dest, align 8, !dbg !463, !tbaa !348
  %4 = icmp eq i8* %3, null, !dbg !464
  br i1 %4, label %7, label %5, !dbg !465

; <label>:5                                       ; preds = %2
  %6 = tail call i64 @strlen(i8* %3) #5, !dbg !466
  %phitmp1 = trunc i64 %6 to i32, !dbg !465
  br label %7, !dbg !465

; <label>:7                                       ; preds = %0, %5, %2
  %len1.0 = phi i32 [ %phitmp1, %5 ], [ 0, %2 ], [ %ldest, %0 ]
  %8 = icmp slt i32 %lsrc, 0, !dbg !467
  br i1 %8, label %9, label %13, !dbg !469

; <label>:9                                       ; preds = %7
  %10 = icmp eq i8* %src, null, !dbg !470
  br i1 %10, label %.thread, label %11, !dbg !471

; <label>:11                                      ; preds = %9
  %12 = tail call i64 @strlen(i8* %src) #5, !dbg !472
  %phitmp = trunc i64 %12 to i32, !dbg !471
  br label %13, !dbg !471

; <label>:13                                      ; preds = %7, %11
  %len2.0 = phi i32 [ %phitmp, %11 ], [ %lsrc, %7 ]
  %14 = icmp eq i32 %len2.0, 0, !dbg !473
  br i1 %14, label %.thread, label %15, !dbg !475

; <label>:15                                      ; preds = %13
  %16 = load i8** %dest, align 8, !dbg !476, !tbaa !348
  %17 = icmp eq i8* %16, null, !dbg !478
  br i1 %17, label %18, label %22, !dbg !479

; <label>:18                                      ; preds = %15
  %19 = add nsw i32 %len2.0, 1, !dbg !480
  %20 = sext i32 %19 to i64, !dbg !480
  %21 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([68 x i8]* @.str2, i64 0, i64 0), i32 344, i64 %20) #7, !dbg !480
  br label %27, !dbg !481

; <label>:22                                      ; preds = %15
  %23 = add i32 %len1.0, 1, !dbg !482
  %24 = add i32 %23, %len2.0, !dbg !482
  %25 = sext i32 %24 to i64, !dbg !482
  %26 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([68 x i8]* @.str2, i64 0, i64 0), i32 345, i8* %16, i64 %25) #7, !dbg !482
  %.pre = add nsw i32 %len2.0, 1, !dbg !483
  %.pre2 = sext i32 %.pre to i64, !dbg !483
  br label %27

; <label>:27                                      ; preds = %22, %18
  %.pre-phi3 = phi i64 [ %.pre2, %22 ], [ %20, %18 ], !dbg !483
  %storemerge = phi i8* [ %26, %22 ], [ %21, %18 ]
  store i8* %storemerge, i8** %dest, align 8, !dbg !484, !tbaa !348
  %28 = sext i32 %len1.0 to i64, !dbg !483
  %29 = getelementptr inbounds i8* %storemerge, i64 %28, !dbg !483
  %30 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %29, i1 false), !dbg !483
  %31 = tail call i8* @__memcpy_chk(i8* %29, i8* %src, i64 %.pre-phi3, i64 %30) #5, !dbg !483
  %32 = add nsw i32 %len2.0, %len1.0, !dbg !485
  br label %.thread, !dbg !486

.thread:                                          ; preds = %9, %13, %27
  %.0 = phi i32 [ %32, %27 ], [ %len1.0, %13 ], [ %len1.0, %9 ]
  ret i32 %.0, !dbg !487
}

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #1

; Function Attrs: nounwind optsize ssp uwtable
define i8* @sre_strtok(i8** nocapture %s, i8* nocapture readonly %delim, i32* %len) #0 {
  tail call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !180, metadata !225), !dbg !488
  tail call void @llvm.dbg.value(metadata i8* %delim, i64 0, metadata !181, metadata !225), !dbg !489
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !182, metadata !225), !dbg !490
  %1 = load i8** %s, align 8, !dbg !491, !tbaa !348
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !183, metadata !225), !dbg !492
  %2 = tail call i64 @strspn(i8* %1, i8* %delim) #5, !dbg !493
  %3 = getelementptr inbounds i8* %1, i64 %2, !dbg !494
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !183, metadata !225), !dbg !492
  %4 = load i8* %3, align 1, !dbg !495, !tbaa !247
  %5 = icmp eq i8 %4, 0, !dbg !495
  br i1 %5, label %18, label %6, !dbg !497

; <label>:6                                       ; preds = %0
  %7 = tail call i64 @strcspn(i8* %3, i8* %delim) #5, !dbg !498
  %8 = trunc i64 %7 to i32, !dbg !498
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !185, metadata !225), !dbg !499
  %sext = shl i64 %7, 32, !dbg !500
  %9 = ashr exact i64 %sext, 32, !dbg !500
  %.sum = add i64 %9, %2, !dbg !500
  %10 = getelementptr inbounds i8* %1, i64 %.sum, !dbg !500
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !184, metadata !225), !dbg !501
  %11 = load i8* %10, align 1, !dbg !502, !tbaa !247
  %12 = icmp eq i8 %11, 0, !dbg !504
  br i1 %12, label %15, label %13, !dbg !505

; <label>:13                                      ; preds = %6
  store i8 0, i8* %10, align 1, !dbg !506, !tbaa !247
  %.sum1 = add i64 %.sum, 1, !dbg !508
  %14 = getelementptr inbounds i8* %1, i64 %.sum1, !dbg !508
  br label %15

; <label>:15                                      ; preds = %6, %13
  %storemerge = phi i8* [ %14, %13 ], [ %10, %6 ]
  store i8* %storemerge, i8** %s, align 8, !dbg !509, !tbaa !348
  %16 = icmp eq i32* %len, null, !dbg !511
  br i1 %16, label %18, label %17, !dbg !513

; <label>:17                                      ; preds = %15
  store i32 %8, i32* %len, align 4, !dbg !514, !tbaa !257
  br label %18, !dbg !515

; <label>:18                                      ; preds = %17, %15, %0
  %.0 = phi i8* [ null, %0 ], [ %3, %15 ], [ %3, %17 ]
  ret i8* %.0, !dbg !516
}

; Function Attrs: nounwind optsize readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strcspn(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i8* @sre_strdup(i8* %s, i32 %n) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !190, metadata !225), !dbg !517
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !191, metadata !225), !dbg !518
  %1 = icmp eq i8* %s, null, !dbg !519
  br i1 %1, label %13, label %2, !dbg !521

; <label>:2                                       ; preds = %0
  %3 = icmp slt i32 %n, 0, !dbg !522
  br i1 %3, label %4, label %7, !dbg !524

; <label>:4                                       ; preds = %2
  %5 = tail call i64 @strlen(i8* %s) #5, !dbg !525
  %6 = trunc i64 %5 to i32, !dbg !525
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !191, metadata !225), !dbg !518
  br label %7, !dbg !526

; <label>:7                                       ; preds = %4, %2
  %.01 = phi i32 [ %6, %4 ], [ %n, %2 ]
  %8 = add nsw i32 %.01, 1, !dbg !527
  %9 = sext i32 %8 to i64, !dbg !527
  %10 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([68 x i8]* @.str2, i64 0, i64 0), i32 442, i64 %9) #7, !dbg !527
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !192, metadata !225), !dbg !528
  %11 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false), !dbg !529
  %12 = tail call i8* @__strcpy_chk(i8* %10, i8* %s, i64 %11) #5, !dbg !529
  br label %13, !dbg !530

; <label>:13                                      ; preds = %0, %7
  %.0 = phi i8* [ %10, %7 ], [ null, %0 ]
  ret i8* %.0, !dbg !531
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @sre_strncpy(i8* %s1, i8* %s2, i32 %n) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s1, i64 0, metadata !197, metadata !225), !dbg !532
  tail call void @llvm.dbg.value(metadata i8* %s2, i64 0, metadata !198, metadata !225), !dbg !533
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !199, metadata !225), !dbg !534
  %1 = sext i32 %n to i64, !dbg !535
  %2 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %s1, i1 false), !dbg !535
  %3 = tail call i8* @__strncpy_chk(i8* %s1, i8* %s2, i64 %1, i64 %2) #5, !dbg !535
  %4 = getelementptr inbounds i8* %s1, i64 %1, !dbg !536
  store i8 0, i8* %4, align 1, !dbg !537, !tbaa !247
  ret i8* %s1, !dbg !538
}

; Function Attrs: nounwind optsize
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IsBlankline(i8* nocapture readonly %s) #0 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !204, metadata !225), !dbg !539
  %1 = load i8* %s, align 1, !dbg !540, !tbaa !247
  %2 = icmp eq i8 %1, 0, !dbg !543
  br i1 %2, label %isspace.exit._crit_edge, label %.lr.ph, !dbg !544

; <label>:3                                       ; preds = %isspace.exit
  %4 = load i8* %15, align 1, !dbg !540, !tbaa !247
  %5 = icmp eq i8 %4, 0, !dbg !543
  br i1 %5, label %isspace.exit._crit_edge, label %.lr.ph, !dbg !544

.lr.ph:                                           ; preds = %0, %3
  %6 = phi i8 [ %4, %3 ], [ %1, %0 ]
  %.03 = phi i8* [ %15, %3 ], [ %s, %0 ]
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !210, metadata !225) #6, !dbg !545
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !216, metadata !225) #6, !dbg !548
  tail call void @llvm.dbg.value(metadata i64 16384, i64 0, metadata !217, metadata !225) #6, !dbg !550
  %isascii.i.i2 = icmp sgt i8 %6, -1, !dbg !551
  br i1 %isascii.i.i2, label %7, label %12, !dbg !551

; <label>:7                                       ; preds = %.lr.ph
  %8 = sext i8 %6 to i64, !dbg !552
  %9 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %8, !dbg !552
  %10 = load i32* %9, align 4, !dbg !552, !tbaa !257
  %11 = and i32 %10, 16384, !dbg !553
  br label %isspace.exit, !dbg !551

; <label>:12                                      ; preds = %.lr.ph
  %13 = sext i8 %6 to i32, !dbg !540
  %14 = tail call i32 @__maskrune(i32 %13, i64 16384) #5, !dbg !554
  br label %isspace.exit, !dbg !551

isspace.exit:                                     ; preds = %7, %12
  %.sink.i.in.i = phi i32 [ %11, %7 ], [ %14, %12 ], !dbg !555
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !556
  %15 = getelementptr inbounds i8* %.03, i64 1, !dbg !557
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !204, metadata !225), !dbg !539
  br i1 %.sink.i.i, label %isspace.exit._crit_edge, label %3, !dbg !558

isspace.exit._crit_edge:                          ; preds = %3, %isspace.exit, %0
  %.01 = phi i32 [ 1, %0 ], [ 1, %3 ], [ 0, %isspace.exit ]
  ret i32 %.01, !dbg !559
}

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!221, !222, !223}
!llvm.ident = !{!224}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/sre_string.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !7}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !15, !21, !30, !37, !40, !43, !56, !65, !73, !83, !95, !166, !176, !186, !193, !200, !205, !211, !218}
!9 = !DISubprogram(name: "Strdup", scope: !1, file: !1, line: 36, type: !10, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*)* @Strdup, variables: !12)
!10 = !DISubroutineType(types: !11)
!11 = !{!5, !5}
!12 = !{!13, !14}
!13 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !9, file: !1, line: 36, type: !5)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new", scope: !9, file: !1, line: 38, type: !5)
!15 = !DISubprogram(name: "StringChop", scope: !1, file: !1, line: 51, type: !16, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @StringChop, variables: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !5}
!18 = !{!19, !20}
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !15, file: !1, line: 51, type: !5)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !15, file: !1, line: 53, type: !7)
!21 = !DISubprogram(name: "Strinsert", scope: !1, file: !1, line: 61, type: !22, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8, i32)* @Strinsert, variables: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{!7, !5, !6, !7}
!24 = !{!25, !26, !27, !28, !29}
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !21, file: !1, line: 61, type: !5)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 2, scope: !21, file: !1, line: 62, type: !6)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pos", arg: 3, scope: !21, file: !1, line: 63, type: !7)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldc", scope: !21, file: !1, line: 65, type: !6)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !21, file: !1, line: 66, type: !5)
!30 = !DISubprogram(name: "Strdelete", scope: !1, file: !1, line: 82, type: !31, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @Strdelete, variables: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{!7, !5, !7}
!33 = !{!34, !35, !36}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !30, file: !1, line: 82, type: !5)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pos", arg: 2, scope: !30, file: !1, line: 83, type: !7)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !30, file: !1, line: 85, type: !5)
!37 = !DISubprogram(name: "s2lower", scope: !1, file: !1, line: 94, type: !16, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @s2lower, variables: !38)
!38 = !{!39}
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !37, file: !1, line: 94, type: !5)
!40 = !DISubprogram(name: "s2upper", scope: !1, file: !1, line: 101, type: !16, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @s2upper, variables: !41)
!41 = !{!42}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !40, file: !1, line: 101, type: !5)
!43 = !DISubprogram(name: "sre_malloc", scope: !1, file: !1, line: 109, type: !44, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, i64)* @sre_malloc, variables: !51)
!44 = !DISubroutineType(types: !45)
!45 = !{!4, !5, !7, !46}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 30, baseType: !48)
!47 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !49, line: 92, baseType: !50)
!49 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!50 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!51 = !{!52, !53, !54, !55}
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 1, scope: !43, file: !1, line: 109, type: !5)
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 2, scope: !43, file: !1, line: 109, type: !7)
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !43, file: !1, line: 109, type: !46)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !43, file: !1, line: 111, type: !4)
!56 = !DISubprogram(name: "sre_realloc", scope: !1, file: !1, line: 120, type: !57, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, i8*, i64)* @sre_realloc, variables: !59)
!57 = !DISubroutineType(types: !58)
!58 = !{!4, !5, !7, !4, !46}
!59 = !{!60, !61, !62, !63, !64}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 1, scope: !56, file: !1, line: 120, type: !5)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 2, scope: !56, file: !1, line: 120, type: !7)
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 3, scope: !56, file: !1, line: 120, type: !4)
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 4, scope: !56, file: !1, line: 120, type: !46)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !56, file: !1, line: 122, type: !4)
!65 = !DISubprogram(name: "Free2DArray", scope: !1, file: !1, line: 152, type: !66, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, function: void (i8**, i32)* @Free2DArray, variables: !69)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68, !7}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!69 = !{!70, !71, !72}
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !65, file: !1, line: 152, type: !68)
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim1", arg: 2, scope: !65, file: !1, line: 152, type: !7)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !65, file: !1, line: 154, type: !7)
!73 = !DISubprogram(name: "Free3DArray", scope: !1, file: !1, line: 163, type: !74, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, function: void (i8***, i32, i32)* @Free3DArray, variables: !77)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !76, !7, !7}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!77 = !{!78, !79, !80, !81, !82}
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !73, file: !1, line: 163, type: !76)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim1", arg: 2, scope: !73, file: !1, line: 163, type: !7)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim2", arg: 3, scope: !73, file: !1, line: 163, type: !7)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !73, file: !1, line: 165, type: !7)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !73, file: !1, line: 165, type: !7)
!83 = !DISubprogram(name: "RandomSequence", scope: !1, file: !1, line: 194, type: !84, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, float*, i32, i32)* @RandomSequence, variables: !88)
!84 = !DISubroutineType(types: !85)
!85 = !{!5, !5, !86, !7, !7}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!88 = !{!89, !90, !91, !92, !93, !94}
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alphabet", arg: 1, scope: !83, file: !1, line: 194, type: !5)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !83, file: !1, line: 194, type: !86)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !83, file: !1, line: 194, type: !7)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 4, scope: !83, file: !1, line: 194, type: !7)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !83, file: !1, line: 196, type: !5)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !83, file: !1, line: 197, type: !7)
!95 = !DISubprogram(name: "sre_fgets", scope: !1, file: !1, line: 245, type: !96, isLocal: false, isDefinition: true, scopeLine: 246, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8**, i32*, %struct.__sFILE*)* @sre_fgets, variables: !159)
!96 = !DISubroutineType(types: !97)
!97 = !{!5, !98, !99, !100}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 153, baseType: !103)
!102 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !102, line: 122, size: 1216, align: 64, elements: !104)
!104 = !{!105, !108, !109, !110, !112, !113, !118, !119, !120, !124, !128, !137, !143, !144, !147, !148, !152, !156, !157, !158}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !103, file: !102, line: 123, baseType: !106, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !103, file: !102, line: 124, baseType: !7, size: 32, align: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !103, file: !102, line: 125, baseType: !7, size: 32, align: 32, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !103, file: !102, line: 126, baseType: !111, size: 16, align: 16, offset: 128)
!111 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !103, file: !102, line: 127, baseType: !111, size: 16, align: 16, offset: 144)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !103, file: !102, line: 128, baseType: !114, size: 128, align: 64, offset: 192)
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !102, line: 88, size: 128, align: 64, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !114, file: !102, line: 89, baseType: !106, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !114, file: !102, line: 90, baseType: !7, size: 32, align: 32, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !103, file: !102, line: 129, baseType: !7, size: 32, align: 32, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !103, file: !102, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !103, file: !102, line: 133, baseType: !121, size: 64, align: 64, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!7, !4}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !103, file: !102, line: 134, baseType: !125, size: 64, align: 64, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!7, !4, !5, !7}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !103, file: !102, line: 135, baseType: !129, size: 64, align: 64, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!132, !4, !132, !7}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !102, line: 77, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !134, line: 71, baseType: !135)
!134 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !49, line: 46, baseType: !136)
!136 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !103, file: !102, line: 136, baseType: !138, size: 64, align: 64, offset: 640)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!7, !4, !141, !7}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !103, file: !102, line: 139, baseType: !114, size: 128, align: 64, offset: 704)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !103, file: !102, line: 140, baseType: !145, size: 64, align: 64, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !102, line: 94, flags: DIFlagFwdDecl)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !103, file: !102, line: 141, baseType: !7, size: 32, align: 32, offset: 896)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !103, file: !102, line: 144, baseType: !149, size: 24, align: 8, offset: 928)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 24, align: 8, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 3)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !103, file: !102, line: 145, baseType: !153, size: 8, align: 8, offset: 952)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 8, align: 8, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 1)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !103, file: !102, line: 148, baseType: !114, size: 128, align: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !103, file: !102, line: 151, baseType: !7, size: 32, align: 32, offset: 1088)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !103, file: !102, line: 152, baseType: !132, size: 64, align: 64, offset: 1152)
!159 = !{!160, !161, !162, !163, !164, !165}
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !95, file: !1, line: 245, type: !98)
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !95, file: !1, line: 245, type: !99)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 3, scope: !95, file: !1, line: 245, type: !100)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !95, file: !1, line: 247, type: !5)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !95, file: !1, line: 248, type: !7)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !95, file: !1, line: 249, type: !7)
!166 = !DISubprogram(name: "sre_strcat", scope: !1, file: !1, line: 332, type: !167, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8**, i32, i8*, i32)* @sre_strcat, variables: !169)
!167 = !DISubroutineType(types: !168)
!168 = !{!7, !98, !7, !5, !7}
!169 = !{!170, !171, !172, !173, !174, !175}
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dest", arg: 1, scope: !166, file: !1, line: 332, type: !98)
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ldest", arg: 2, scope: !166, file: !1, line: 332, type: !7)
!172 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 3, scope: !166, file: !1, line: 332, type: !5)
!173 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lsrc", arg: 4, scope: !166, file: !1, line: 332, type: !7)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len1", scope: !166, file: !1, line: 334, type: !7)
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len2", scope: !166, file: !1, line: 334, type: !7)
!176 = !DISubprogram(name: "sre_strtok", scope: !1, file: !1, line: 399, type: !177, isLocal: false, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8**, i8*, i32*)* @sre_strtok, variables: !179)
!177 = !DISubroutineType(types: !178)
!178 = !{!5, !98, !5, !99}
!179 = !{!180, !181, !182, !183, !184, !185}
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !176, file: !1, line: 399, type: !98)
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "delim", arg: 2, scope: !176, file: !1, line: 399, type: !5)
!182 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !176, file: !1, line: 399, type: !99)
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "begin", scope: !176, file: !1, line: 401, type: !5)
!184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !176, file: !1, line: 401, type: !5)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !176, file: !1, line: 402, type: !7)
!186 = !DISubprogram(name: "sre_strdup", scope: !1, file: !1, line: 436, type: !187, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32)* @sre_strdup, variables: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{!5, !5, !7}
!189 = !{!190, !191, !192}
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !186, file: !1, line: 436, type: !5)
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !186, file: !1, line: 436, type: !7)
!192 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new", scope: !186, file: !1, line: 438, type: !5)
!193 = !DISubprogram(name: "sre_strncpy", scope: !1, file: !1, line: 462, type: !194, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i8*, i32)* @sre_strncpy, variables: !196)
!194 = !DISubroutineType(types: !195)
!195 = !{!5, !5, !5, !7}
!196 = !{!197, !198, !199}
!197 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !193, file: !1, line: 462, type: !5)
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !193, file: !1, line: 462, type: !5)
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !193, file: !1, line: 462, type: !7)
!200 = !DISubprogram(name: "IsBlankline", scope: !1, file: !1, line: 477, type: !201, isLocal: false, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @IsBlankline, variables: !203)
!201 = !DISubroutineType(types: !202)
!202 = !{!7, !5}
!203 = !{!204}
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !200, file: !1, line: 477, type: !5)
!205 = !DISubprogram(name: "isspace", scope: !206, file: !206, line: 267, type: !207, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, variables: !209)
!206 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!207 = !DISubroutineType(types: !208)
!208 = !{!7, !7}
!209 = !{!210}
!210 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !205, file: !206, line: 267, type: !7)
!211 = !DISubprogram(name: "__istype", scope: !206, file: !206, line: 153, type: !212, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !215)
!212 = !DISubroutineType(types: !213)
!213 = !{!7, !214, !50}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !49, line: 70, baseType: !7)
!215 = !{!216, !217}
!216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !211, file: !206, line: 153, type: !214)
!217 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !211, file: !206, line: 153, type: !50)
!218 = !DISubprogram(name: "isascii", scope: !206, file: !206, line: 135, type: !207, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !219)
!219 = !{!220}
!220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !218, file: !206, line: 135, type: !7)
!221 = !{i32 2, !"Dwarf Version", i32 2}
!222 = !{i32 2, !"Debug Info Version", i32 700000003}
!223 = !{i32 1, !"PIC Level", i32 2}
!224 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!225 = !DIExpression()
!226 = !DILocation(line: 36, column: 14, scope: !9)
!227 = !DILocation(line: 39, column: 9, scope: !228)
!228 = distinct !DILexicalBlock(scope: !9, file: !1, line: 39, column: 7)
!229 = !DILocation(line: 39, column: 7, scope: !9)
!230 = !DILocation(line: 40, column: 31, scope: !231)
!231 = distinct !DILexicalBlock(scope: !9, file: !1, line: 40, column: 7)
!232 = !DILocation(line: 40, column: 41, scope: !231)
!233 = !DILocation(line: 40, column: 23, scope: !231)
!234 = !DILocation(line: 38, column: 9, scope: !9)
!235 = !DILocation(line: 40, column: 46, scope: !231)
!236 = !DILocation(line: 40, column: 7, scope: !9)
!237 = !DILocation(line: 41, column: 3, scope: !9)
!238 = !DILocation(line: 42, column: 3, scope: !9)
!239 = !DILocation(line: 43, column: 1, scope: !9)
!240 = !DILocation(line: 51, column: 18, scope: !15)
!241 = !DILocation(line: 55, column: 7, scope: !15)
!242 = !DILocation(line: 55, column: 17, scope: !15)
!243 = !DILocation(line: 53, column: 9, scope: !15)
!244 = !DILocation(line: 56, column: 12, scope: !15)
!245 = !DILocation(line: 56, column: 17, scope: !15)
!246 = !DILocation(line: 56, column: 34, scope: !15)
!247 = !{!248, !248, i64 0}
!248 = !{!"omnipotent char", !249, i64 0}
!249 = !{!"Simple C/C++ TBAA"}
!250 = !DILocation(line: 267, column: 13, scope: !205, inlinedAt: !251)
!251 = distinct !DILocation(line: 56, column: 20, scope: !15)
!252 = !DILocation(line: 153, column: 29, scope: !211, inlinedAt: !253)
!253 = distinct !DILocation(line: 269, column: 10, scope: !205, inlinedAt: !251)
!254 = !DILocation(line: 153, column: 47, scope: !211, inlinedAt: !253)
!255 = !DILocation(line: 158, column: 10, scope: !211, inlinedAt: !253)
!256 = !DILocation(line: 158, column: 27, scope: !211, inlinedAt: !253)
!257 = !{!258, !258, i64 0}
!258 = !{!"int", !248, i64 0}
!259 = !DILocation(line: 158, column: 25, scope: !211, inlinedAt: !253)
!260 = !DILocation(line: 56, column: 28, scope: !15)
!261 = !DILocation(line: 159, column: 7, scope: !211, inlinedAt: !253)
!262 = !DILocation(line: 56, column: 20, scope: !15)
!263 = !DILocation(line: 269, column: 10, scope: !205, inlinedAt: !251)
!264 = !DILocation(line: 56, column: 3, scope: !15)
!265 = !DILocation(line: 57, column: 3, scope: !15)
!266 = !DILocation(line: 57, column: 10, scope: !15)
!267 = !DILocation(line: 58, column: 1, scope: !15)
!268 = !DILocation(line: 61, column: 18, scope: !21)
!269 = !DILocation(line: 62, column: 11, scope: !21)
!270 = !DILocation(line: 63, column: 11, scope: !21)
!271 = !DILocation(line: 68, column: 15, scope: !272)
!272 = distinct !DILexicalBlock(scope: !21, file: !1, line: 68, column: 3)
!273 = !DILocation(line: 66, column: 11, scope: !21)
!274 = !DILocation(line: 68, column: 3, scope: !272)
!275 = !DILocation(line: 71, column: 14, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !1, line: 69, column: 5)
!277 = distinct !DILexicalBlock(scope: !272, file: !1, line: 68, column: 3)
!278 = !DILocation(line: 65, column: 11, scope: !21)
!279 = !DILocation(line: 72, column: 12, scope: !276)
!280 = !DILocation(line: 68, column: 26, scope: !277)
!281 = !DILocation(line: 75, column: 6, scope: !21)
!282 = !DILocation(line: 77, column: 3, scope: !21)
!283 = !DILocation(line: 82, column: 17, scope: !30)
!284 = !DILocation(line: 83, column: 10, scope: !30)
!285 = !DILocation(line: 87, column: 15, scope: !286)
!286 = distinct !DILexicalBlock(scope: !30, file: !1, line: 87, column: 3)
!287 = !DILocation(line: 85, column: 9, scope: !30)
!288 = !DILocation(line: 87, column: 22, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !1, line: 87, column: 3)
!290 = !DILocation(line: 87, column: 3, scope: !286)
!291 = !DILocation(line: 88, column: 14, scope: !289)
!292 = !DILocation(line: 88, column: 10, scope: !289)
!293 = !DILocation(line: 88, column: 8, scope: !289)
!294 = !DILocation(line: 90, column: 3, scope: !30)
!295 = !DILocation(line: 94, column: 15, scope: !37)
!296 = !DILocation(line: 96, column: 10, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !1, line: 96, column: 3)
!298 = distinct !DILexicalBlock(scope: !37, file: !1, line: 96, column: 3)
!299 = !DILocation(line: 96, column: 13, scope: !297)
!300 = !DILocation(line: 96, column: 3, scope: !298)
!301 = !DILocation(line: 97, column: 10, scope: !297)
!302 = !DILocation(line: 97, column: 8, scope: !297)
!303 = !DILocation(line: 96, column: 23, scope: !297)
!304 = !DILocation(line: 98, column: 1, scope: !37)
!305 = !DILocation(line: 101, column: 15, scope: !40)
!306 = !DILocation(line: 103, column: 10, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !1, line: 103, column: 3)
!308 = distinct !DILexicalBlock(scope: !40, file: !1, line: 103, column: 3)
!309 = !DILocation(line: 103, column: 13, scope: !307)
!310 = !DILocation(line: 103, column: 3, scope: !308)
!311 = !DILocation(line: 104, column: 10, scope: !307)
!312 = !DILocation(line: 104, column: 8, scope: !307)
!313 = !DILocation(line: 103, column: 23, scope: !307)
!314 = !DILocation(line: 105, column: 1, scope: !40)
!315 = !DILocation(line: 109, column: 18, scope: !43)
!316 = !DILocation(line: 109, column: 28, scope: !43)
!317 = !DILocation(line: 109, column: 41, scope: !43)
!318 = !DILocation(line: 114, column: 14, scope: !319)
!319 = distinct !DILexicalBlock(scope: !43, file: !1, line: 114, column: 7)
!320 = !DILocation(line: 111, column: 9, scope: !43)
!321 = !DILocation(line: 114, column: 29, scope: !319)
!322 = !DILocation(line: 114, column: 7, scope: !43)
!323 = !DILocation(line: 115, column: 5, scope: !319)
!324 = !DILocation(line: 116, column: 3, scope: !43)
!325 = !DILocation(line: 120, column: 19, scope: !56)
!326 = !DILocation(line: 120, column: 29, scope: !56)
!327 = !DILocation(line: 120, column: 41, scope: !56)
!328 = !DILocation(line: 120, column: 51, scope: !56)
!329 = !DILocation(line: 124, column: 14, scope: !330)
!330 = distinct !DILexicalBlock(scope: !56, file: !1, line: 124, column: 7)
!331 = !DILocation(line: 122, column: 9, scope: !56)
!332 = !DILocation(line: 124, column: 32, scope: !330)
!333 = !DILocation(line: 124, column: 7, scope: !56)
!334 = !DILocation(line: 125, column: 5, scope: !330)
!335 = !DILocation(line: 126, column: 3, scope: !56)
!336 = !DILocation(line: 152, column: 20, scope: !65)
!337 = !DILocation(line: 152, column: 27, scope: !65)
!338 = !DILocation(line: 156, column: 9, scope: !339)
!339 = distinct !DILexicalBlock(scope: !65, file: !1, line: 156, column: 7)
!340 = !DILocation(line: 156, column: 7, scope: !65)
!341 = !DILocation(line: 157, column: 19, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !1, line: 157, column: 5)
!343 = distinct !DILexicalBlock(scope: !344, file: !1, line: 157, column: 5)
!344 = distinct !DILexicalBlock(scope: !339, file: !1, line: 156, column: 18)
!345 = !DILocation(line: 157, column: 5, scope: !343)
!346 = !DILocation(line: 158, column: 11, scope: !347)
!347 = distinct !DILexicalBlock(scope: !342, file: !1, line: 158, column: 11)
!348 = !{!349, !349, i64 0}
!349 = !{!"any pointer", !248, i64 0}
!350 = !DILocation(line: 158, column: 16, scope: !347)
!351 = !DILocation(line: 158, column: 11, scope: !342)
!352 = !DILocation(line: 158, column: 25, scope: !347)
!353 = !DILocation(line: 159, column: 10, scope: !344)
!354 = !DILocation(line: 159, column: 5, scope: !344)
!355 = !DILocation(line: 160, column: 3, scope: !344)
!356 = !DILocation(line: 161, column: 1, scope: !65)
!357 = !DILocation(line: 163, column: 21, scope: !73)
!358 = !DILocation(line: 163, column: 28, scope: !73)
!359 = !DILocation(line: 163, column: 38, scope: !73)
!360 = !DILocation(line: 167, column: 9, scope: !361)
!361 = distinct !DILexicalBlock(scope: !73, file: !1, line: 167, column: 7)
!362 = !DILocation(line: 167, column: 7, scope: !73)
!363 = !DILocation(line: 168, column: 19, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !1, line: 168, column: 5)
!365 = distinct !DILexicalBlock(scope: !366, file: !1, line: 168, column: 5)
!366 = distinct !DILexicalBlock(scope: !361, file: !1, line: 167, column: 18)
!367 = !DILocation(line: 168, column: 5, scope: !365)
!368 = !DILocation(line: 170, column: 16, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !1, line: 170, column: 2)
!370 = distinct !DILexicalBlock(scope: !371, file: !1, line: 170, column: 2)
!371 = distinct !DILexicalBlock(scope: !372, file: !1, line: 169, column: 25)
!372 = distinct !DILexicalBlock(scope: !364, file: !1, line: 169, column: 11)
!373 = !DILocation(line: 169, column: 11, scope: !372)
!374 = !DILocation(line: 169, column: 16, scope: !372)
!375 = !DILocation(line: 169, column: 11, scope: !364)
!376 = !DILocation(line: 170, column: 2, scope: !370)
!377 = !DILocation(line: 171, column: 8, scope: !378)
!378 = distinct !DILexicalBlock(scope: !369, file: !1, line: 171, column: 8)
!379 = !DILocation(line: 171, column: 16, scope: !378)
!380 = !DILocation(line: 171, column: 8, scope: !369)
!381 = !DILocation(line: 171, column: 25, scope: !378)
!382 = !DILocation(line: 172, column: 7, scope: !371)
!383 = !DILocation(line: 172, column: 2, scope: !371)
!384 = !DILocation(line: 173, column: 7, scope: !371)
!385 = !DILocation(line: 174, column: 10, scope: !366)
!386 = !DILocation(line: 174, column: 5, scope: !366)
!387 = !DILocation(line: 175, column: 3, scope: !366)
!388 = !DILocation(line: 176, column: 1, scope: !73)
!389 = !DILocation(line: 194, column: 22, scope: !83)
!390 = !DILocation(line: 194, column: 39, scope: !83)
!391 = !DILocation(line: 194, column: 46, scope: !83)
!392 = !DILocation(line: 194, column: 53, scope: !83)
!393 = !DILocation(line: 199, column: 16, scope: !83)
!394 = !DILocation(line: 196, column: 9, scope: !83)
!395 = !DILocation(line: 197, column: 9, scope: !83)
!396 = !DILocation(line: 200, column: 17, scope: !397)
!397 = distinct !DILexicalBlock(scope: !398, file: !1, line: 200, column: 3)
!398 = distinct !DILexicalBlock(scope: !83, file: !1, line: 200, column: 3)
!399 = !DILocation(line: 200, column: 3, scope: !398)
!400 = !DILocation(line: 201, column: 21, scope: !397)
!401 = !DILocation(line: 201, column: 12, scope: !397)
!402 = !DILocation(line: 201, column: 5, scope: !397)
!403 = !DILocation(line: 201, column: 10, scope: !397)
!404 = !DILocation(line: 202, column: 3, scope: !83)
!405 = !DILocation(line: 202, column: 8, scope: !83)
!406 = !DILocation(line: 203, column: 3, scope: !83)
!407 = !DILocation(line: 245, column: 18, scope: !95)
!408 = !DILocation(line: 245, column: 28, scope: !95)
!409 = !DILocation(line: 245, column: 37, scope: !95)
!410 = !DILocation(line: 251, column: 7, scope: !411)
!411 = distinct !DILexicalBlock(scope: !95, file: !1, line: 251, column: 7)
!412 = !DILocation(line: 251, column: 10, scope: !411)
!413 = !DILocation(line: 251, column: 7, scope: !95)
!414 = !DILocation(line: 260, column: 13, scope: !415)
!415 = distinct !DILexicalBlock(scope: !95, file: !1, line: 260, column: 7)
!416 = !DILocation(line: 253, column: 14, scope: !417)
!417 = distinct !DILexicalBlock(scope: !411, file: !1, line: 252, column: 5)
!418 = !DILocation(line: 253, column: 12, scope: !417)
!419 = !DILocation(line: 254, column: 12, scope: !417)
!420 = !DILocation(line: 255, column: 5, scope: !417)
!421 = !DILocation(line: 260, column: 7, scope: !415)
!422 = !DILocation(line: 260, column: 27, scope: !415)
!423 = !DILocation(line: 260, column: 7, scope: !95)
!424 = !DILocation(line: 267, column: 7, scope: !425)
!425 = distinct !DILexicalBlock(scope: !95, file: !1, line: 267, column: 7)
!426 = !DILocation(line: 267, column: 24, scope: !425)
!427 = !DILocation(line: 267, column: 7, scope: !95)
!428 = !DILocation(line: 272, column: 9, scope: !95)
!429 = !DILocation(line: 273, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !95, file: !1, line: 273, column: 7)
!431 = !DILocation(line: 273, column: 21, scope: !430)
!432 = !DILocation(line: 273, column: 7, scope: !95)
!433 = !DILocation(line: 280, column: 10, scope: !95)
!434 = !DILocation(line: 280, column: 13, scope: !95)
!435 = !DILocation(line: 249, column: 9, scope: !95)
!436 = !DILocation(line: 282, column: 9, scope: !437)
!437 = distinct !DILexicalBlock(scope: !95, file: !1, line: 281, column: 13)
!438 = !DILocation(line: 283, column: 12, scope: !437)
!439 = !DILocation(line: 283, column: 10, scope: !437)
!440 = !DILocation(line: 284, column: 14, scope: !437)
!441 = !DILocation(line: 247, column: 9, scope: !95)
!442 = !DILocation(line: 285, column: 9, scope: !443)
!443 = distinct !DILexicalBlock(scope: !437, file: !1, line: 285, column: 9)
!444 = !DILocation(line: 285, column: 27, scope: !443)
!445 = !DILocation(line: 285, column: 9, scope: !437)
!446 = !DILocation(line: 285, column: 43, scope: !443)
!447 = !DILocation(line: 285, column: 36, scope: !443)
!448 = !DILocation(line: 286, column: 11, scope: !437)
!449 = !DILocation(line: 287, column: 9, scope: !450)
!450 = distinct !DILexicalBlock(scope: !437, file: !1, line: 287, column: 9)
!451 = !DILocation(line: 287, column: 18, scope: !450)
!452 = !DILocation(line: 287, column: 9, scope: !437)
!453 = !DILocation(line: 287, column: 34, scope: !450)
!454 = !DILocation(line: 287, column: 27, scope: !450)
!455 = !DILocation(line: 291, column: 1, scope: !95)
!456 = !DILocation(line: 332, column: 19, scope: !166)
!457 = !DILocation(line: 332, column: 29, scope: !166)
!458 = !DILocation(line: 332, column: 42, scope: !166)
!459 = !DILocation(line: 332, column: 51, scope: !166)
!460 = !DILocation(line: 336, column: 13, scope: !461)
!461 = distinct !DILexicalBlock(scope: !166, file: !1, line: 336, column: 7)
!462 = !DILocation(line: 336, column: 7, scope: !166)
!463 = !DILocation(line: 336, column: 27, scope: !461)
!464 = !DILocation(line: 336, column: 33, scope: !461)
!465 = !DILocation(line: 336, column: 26, scope: !461)
!466 = !DILocation(line: 336, column: 48, scope: !461)
!467 = !DILocation(line: 339, column: 12, scope: !468)
!468 = distinct !DILexicalBlock(scope: !166, file: !1, line: 339, column: 7)
!469 = !DILocation(line: 339, column: 7, scope: !166)
!470 = !DILocation(line: 339, column: 33, scope: !468)
!471 = !DILocation(line: 339, column: 26, scope: !468)
!472 = !DILocation(line: 339, column: 48, scope: !468)
!473 = !DILocation(line: 342, column: 12, scope: !474)
!474 = distinct !DILexicalBlock(scope: !166, file: !1, line: 342, column: 7)
!475 = !DILocation(line: 342, column: 7, scope: !166)
!476 = !DILocation(line: 344, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !166, file: !1, line: 344, column: 7)
!478 = !DILocation(line: 344, column: 13, scope: !477)
!479 = !DILocation(line: 344, column: 7, scope: !166)
!480 = !DILocation(line: 344, column: 30, scope: !477)
!481 = !DILocation(line: 344, column: 22, scope: !477)
!482 = !DILocation(line: 345, column: 30, scope: !477)
!483 = !DILocation(line: 347, column: 3, scope: !166)
!484 = !DILocation(line: 344, column: 28, scope: !477)
!485 = !DILocation(line: 348, column: 14, scope: !166)
!486 = !DILocation(line: 348, column: 3, scope: !166)
!487 = !DILocation(line: 349, column: 1, scope: !166)
!488 = !DILocation(line: 399, column: 19, scope: !176)
!489 = !DILocation(line: 399, column: 28, scope: !176)
!490 = !DILocation(line: 399, column: 40, scope: !176)
!491 = !DILocation(line: 404, column: 11, scope: !176)
!492 = !DILocation(line: 401, column: 9, scope: !176)
!493 = !DILocation(line: 405, column: 12, scope: !176)
!494 = !DILocation(line: 405, column: 9, scope: !176)
!495 = !DILocation(line: 406, column: 9, scope: !496)
!496 = distinct !DILexicalBlock(scope: !176, file: !1, line: 406, column: 7)
!497 = !DILocation(line: 406, column: 7, scope: !176)
!498 = !DILocation(line: 408, column: 7, scope: !176)
!499 = !DILocation(line: 402, column: 9, scope: !176)
!500 = !DILocation(line: 409, column: 16, scope: !176)
!501 = !DILocation(line: 401, column: 17, scope: !176)
!502 = !DILocation(line: 410, column: 7, scope: !503)
!503 = distinct !DILexicalBlock(scope: !176, file: !1, line: 410, column: 7)
!504 = !DILocation(line: 410, column: 12, scope: !503)
!505 = !DILocation(line: 410, column: 7, scope: !176)
!506 = !DILocation(line: 412, column: 10, scope: !507)
!507 = distinct !DILexicalBlock(scope: !503, file: !1, line: 411, column: 8)
!508 = !DILocation(line: 413, column: 15, scope: !507)
!509 = !DILocation(line: 410, column: 26, scope: !510)
!510 = distinct !DILexicalBlock(scope: !503, file: !1, line: 410, column: 21)
!511 = !DILocation(line: 416, column: 11, scope: !512)
!512 = distinct !DILexicalBlock(scope: !176, file: !1, line: 416, column: 7)
!513 = !DILocation(line: 416, column: 7, scope: !176)
!514 = !DILocation(line: 416, column: 25, scope: !512)
!515 = !DILocation(line: 416, column: 20, scope: !512)
!516 = !DILocation(line: 418, column: 1, scope: !176)
!517 = !DILocation(line: 436, column: 18, scope: !186)
!518 = !DILocation(line: 436, column: 25, scope: !186)
!519 = !DILocation(line: 440, column: 9, scope: !520)
!520 = distinct !DILexicalBlock(scope: !186, file: !1, line: 440, column: 7)
!521 = !DILocation(line: 440, column: 7, scope: !186)
!522 = !DILocation(line: 441, column: 9, scope: !523)
!523 = distinct !DILexicalBlock(scope: !186, file: !1, line: 441, column: 7)
!524 = !DILocation(line: 441, column: 7, scope: !186)
!525 = !DILocation(line: 441, column: 18, scope: !523)
!526 = !DILocation(line: 441, column: 14, scope: !523)
!527 = !DILocation(line: 442, column: 9, scope: !186)
!528 = !DILocation(line: 438, column: 9, scope: !186)
!529 = !DILocation(line: 443, column: 3, scope: !186)
!530 = !DILocation(line: 444, column: 3, scope: !186)
!531 = !DILocation(line: 445, column: 1, scope: !186)
!532 = !DILocation(line: 462, column: 19, scope: !193)
!533 = !DILocation(line: 462, column: 29, scope: !193)
!534 = !DILocation(line: 462, column: 37, scope: !193)
!535 = !DILocation(line: 464, column: 3, scope: !193)
!536 = !DILocation(line: 465, column: 3, scope: !193)
!537 = !DILocation(line: 465, column: 9, scope: !193)
!538 = !DILocation(line: 466, column: 3, scope: !193)
!539 = !DILocation(line: 477, column: 19, scope: !200)
!540 = !DILocation(line: 479, column: 10, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !1, line: 479, column: 3)
!542 = distinct !DILexicalBlock(scope: !200, file: !1, line: 479, column: 3)
!543 = !DILocation(line: 479, column: 13, scope: !541)
!544 = !DILocation(line: 479, column: 3, scope: !542)
!545 = !DILocation(line: 267, column: 13, scope: !205, inlinedAt: !546)
!546 = distinct !DILocation(line: 480, column: 11, scope: !547)
!547 = distinct !DILexicalBlock(scope: !541, file: !1, line: 480, column: 9)
!548 = !DILocation(line: 153, column: 29, scope: !211, inlinedAt: !549)
!549 = distinct !DILocation(line: 269, column: 10, scope: !205, inlinedAt: !546)
!550 = !DILocation(line: 153, column: 47, scope: !211, inlinedAt: !549)
!551 = !DILocation(line: 158, column: 10, scope: !211, inlinedAt: !549)
!552 = !DILocation(line: 158, column: 27, scope: !211, inlinedAt: !549)
!553 = !DILocation(line: 158, column: 25, scope: !211, inlinedAt: !549)
!554 = !DILocation(line: 159, column: 7, scope: !211, inlinedAt: !549)
!555 = !DILocation(line: 480, column: 11, scope: !547)
!556 = !DILocation(line: 269, column: 10, scope: !205, inlinedAt: !546)
!557 = !DILocation(line: 479, column: 23, scope: !541)
!558 = !DILocation(line: 480, column: 9, scope: !541)
!559 = !DILocation(line: 482, column: 1, scope: !200)
