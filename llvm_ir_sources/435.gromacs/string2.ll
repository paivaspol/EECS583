; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/string2.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@_DefaultRuneLocale = external global %struct._RuneLocale
@.str = private unnamed_addr constant [9 x i8] c"onbekend\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@.str2 = private unnamed_addr constant [28 x i8] c"%c\09File '%s' was generated\0A\00", align 1
@.str3 = private unnamed_addr constant [21 x i8] c"%c\09By user: %s (%d)\0A\00", align 1
@.str4 = private unnamed_addr constant [16 x i8] c"%c\09On host: %s\0A\00", align 1
@.str5 = private unnamed_addr constant [15 x i8] c"%c\09At date: %s\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"dest\00", align 1
@.str7 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/string2.c\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"b2\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !74, metadata !281), !dbg !282
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !75, metadata !281), !dbg !283
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !284
  %2 = load i32* %1, align 4, !dbg !286, !tbaa !287
  %3 = add nsw i32 %2, -1, !dbg !286
  store i32 %3, i32* %1, align 4, !dbg !286, !tbaa !287
  %4 = icmp sgt i32 %2, 0, !dbg !296
  br i1 %4, label %._crit_edge, label %5, !dbg !297

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !298
  br label %10, !dbg !297

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !299
  %7 = load i32* %6, align 4, !dbg !299, !tbaa !300
  %8 = icmp sle i32 %2, %7, !dbg !301
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !302
  %or.cond = or i1 %9, %8, !dbg !303
  br i1 %or.cond, label %15, label %10, !dbg !303

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !298
  %11 = trunc i32 %_c to i8, !dbg !304
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !305
  %13 = load i8** %12, align 8, !dbg !306, !tbaa !307
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !306
  store i8* %14, i8** %12, align 8, !dbg !306, !tbaa !307
  store i8 %11, i8* %13, align 1, !dbg !308, !tbaa !309
  br label %17, !dbg !310

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #10, !dbg !311
  br label %17, !dbg !312

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !313
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @isascii(i32 %_c) #2 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !81, metadata !281), !dbg !314
  %1 = icmp ult i32 %_c, 128, !dbg !315
  %2 = zext i1 %1 to i32, !dbg !315
  ret i32 %2, !dbg !316
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @__istype(i32 %_c, i64 %_f) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !88, metadata !281), !dbg !317
  tail call void @llvm.dbg.value(metadata i64 %_f, i64 0, metadata !89, metadata !281), !dbg !318
  %isascii = icmp ult i32 %_c, 128, !dbg !319
  br i1 %isascii, label %1, label %8, !dbg !319

; <label>:1                                       ; preds = %0
  %2 = sext i32 %_c to i64, !dbg !320
  %3 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %2, !dbg !320
  %4 = load i32* %3, align 4, !dbg !320, !tbaa !321
  %5 = zext i32 %4 to i64, !dbg !320
  %6 = and i64 %5, %_f, !dbg !322
  %7 = icmp ne i64 %6, 0, !dbg !323
  br label %11, !dbg !319

; <label>:8                                       ; preds = %0
  %9 = tail call i32 @__maskrune(i32 %_c, i64 %_f) #10, !dbg !324
  %10 = icmp ne i32 %9, 0, !dbg !325
  br label %11, !dbg !319

; <label>:11                                      ; preds = %8, %1
  %.sink = phi i1 [ %7, %1 ], [ %10, %8 ]
  %12 = zext i1 %.sink to i32, !dbg !326
  ret i32 %12, !dbg !327
}

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #1

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @__isctype(i32 %_c, i64 %_f) #4 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !94, metadata !281), !dbg !328
  tail call void @llvm.dbg.value(metadata i64 %_f, i64 0, metadata !95, metadata !281), !dbg !329
  %1 = icmp ugt i32 %_c, 255, !dbg !330
  br i1 %1, label %10, label %2, !dbg !330

; <label>:2                                       ; preds = %0
  %3 = sext i32 %_c to i64, !dbg !331
  %4 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %3, !dbg !331
  %5 = load i32* %4, align 4, !dbg !331, !tbaa !321
  %6 = zext i32 %5 to i64, !dbg !331
  %7 = and i64 %6, %_f, !dbg !332
  %8 = icmp ne i64 %7, 0, !dbg !333
  %9 = zext i1 %8 to i32, !dbg !334
  br label %10, !dbg !335

; <label>:10                                      ; preds = %0, %2
  %11 = phi i32 [ %9, %2 ], [ 0, %0 ], !dbg !335
  ret i32 %11, !dbg !336
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @__wcwidth(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !100, metadata !281), !dbg !337
  %1 = icmp eq i32 %_c, 0, !dbg !338
  br i1 %1, label %11, label %2, !dbg !340

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @__maskrune(i32 %_c, i64 3758358528) #10, !dbg !341
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !101, metadata !281), !dbg !342
  %4 = icmp ult i32 %3, 536870912, !dbg !343
  br i1 %4, label %7, label %5, !dbg !345

; <label>:5                                       ; preds = %2
  %6 = lshr i32 %3, 30, !dbg !346
  br label %11, !dbg !347

; <label>:7                                       ; preds = %2
  %8 = lshr i32 %3, 17, !dbg !348
  %9 = and i32 %8, 2, !dbg !348
  %10 = add nsw i32 %9, -1, !dbg !348
  br label %11, !dbg !349

; <label>:11                                      ; preds = %0, %7, %5
  %.0 = phi i32 [ %6, %5 ], [ %10, %7 ], [ 0, %0 ]
  ret i32 %.0, !dbg !350
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isalnum(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !104, metadata !281), !dbg !351
  %1 = tail call i32 @__istype(i32 %_c, i64 1280) #11, !dbg !352
  ret i32 %1, !dbg !353
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isalpha(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !107, metadata !281), !dbg !354
  %1 = tail call i32 @__istype(i32 %_c, i64 256) #11, !dbg !355
  ret i32 %1, !dbg !356
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isblank(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !110, metadata !281), !dbg !357
  %1 = tail call i32 @__istype(i32 %_c, i64 131072) #11, !dbg !358
  ret i32 %1, !dbg !359
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @iscntrl(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !113, metadata !281), !dbg !360
  %1 = tail call i32 @__istype(i32 %_c, i64 512) #11, !dbg !361
  ret i32 %1, !dbg !362
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @isdigit(i32 %_c) #4 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !116, metadata !281), !dbg !363
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !94, metadata !281), !dbg !364
  tail call void @llvm.dbg.value(metadata i64 1024, i64 0, metadata !95, metadata !281), !dbg !366
  %1 = icmp ugt i32 %_c, 255, !dbg !367
  br i1 %1, label %__isctype.exit, label %2, !dbg !367

; <label>:2                                       ; preds = %0
  %3 = sext i32 %_c to i64, !dbg !368
  %4 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %3, !dbg !368
  %5 = load i32* %4, align 4, !dbg !368, !tbaa !321
  %6 = lshr i32 %5, 10, !dbg !369
  %.lobit = and i32 %6, 1, !dbg !369
  br label %__isctype.exit, !dbg !370

__isctype.exit:                                   ; preds = %0, %2
  %7 = phi i32 [ %.lobit, %2 ], [ 0, %0 ], !dbg !370
  ret i32 %7, !dbg !371
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isgraph(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !119, metadata !281), !dbg !372
  %1 = tail call i32 @__istype(i32 %_c, i64 2048) #11, !dbg !373
  ret i32 %1, !dbg !374
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @islower(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !122, metadata !281), !dbg !375
  %1 = tail call i32 @__istype(i32 %_c, i64 4096) #11, !dbg !376
  ret i32 %1, !dbg !377
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isprint(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !125, metadata !281), !dbg !378
  %1 = tail call i32 @__istype(i32 %_c, i64 262144) #11, !dbg !379
  ret i32 %1, !dbg !380
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ispunct(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !128, metadata !281), !dbg !381
  %1 = tail call i32 @__istype(i32 %_c, i64 8192) #11, !dbg !382
  ret i32 %1, !dbg !383
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isspace(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !131, metadata !281), !dbg !384
  %1 = tail call i32 @__istype(i32 %_c, i64 16384) #11, !dbg !385
  ret i32 %1, !dbg !386
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isupper(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !134, metadata !281), !dbg !387
  %1 = tail call i32 @__istype(i32 %_c, i64 32768) #11, !dbg !388
  ret i32 %1, !dbg !389
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @isxdigit(i32 %_c) #4 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !137, metadata !281), !dbg !390
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !94, metadata !281), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 65536, i64 0, metadata !95, metadata !281), !dbg !393
  %1 = icmp ugt i32 %_c, 255, !dbg !394
  br i1 %1, label %__isctype.exit, label %2, !dbg !394

; <label>:2                                       ; preds = %0
  %3 = sext i32 %_c to i64, !dbg !395
  %4 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %3, !dbg !395
  %5 = load i32* %4, align 4, !dbg !395, !tbaa !321
  %6 = lshr i32 %5, 16, !dbg !396
  %.lobit = and i32 %6, 1, !dbg !396
  br label %__isctype.exit, !dbg !397

__isctype.exit:                                   ; preds = %0, %2
  %7 = phi i32 [ %.lobit, %2 ], [ 0, %0 ], !dbg !397
  ret i32 %7, !dbg !398
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @toascii(i32 %_c) #2 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !140, metadata !281), !dbg !399
  %1 = and i32 %_c, 127, !dbg !400
  ret i32 %1, !dbg !401
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @tolower(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !143, metadata !281), !dbg !402
  %1 = tail call i32 @__tolower(i32 %_c) #10, !dbg !403
  ret i32 %1, !dbg !404
}

; Function Attrs: optsize
declare i32 @__tolower(i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @toupper(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !146, metadata !281), !dbg !405
  %1 = tail call i32 @__toupper(i32 %_c) #10, !dbg !406
  ret i32 %1, !dbg !407
}

; Function Attrs: optsize
declare i32 @__toupper(i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @digittoint(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !149, metadata !281), !dbg !408
  %1 = tail call i32 @__maskrune(i32 %_c, i64 15) #10, !dbg !409
  ret i32 %1, !dbg !410
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ishexnumber(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !152, metadata !281), !dbg !411
  %1 = tail call i32 @__istype(i32 %_c, i64 65536) #11, !dbg !412
  ret i32 %1, !dbg !413
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isideogram(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !155, metadata !281), !dbg !414
  %1 = tail call i32 @__istype(i32 %_c, i64 524288) #11, !dbg !415
  ret i32 %1, !dbg !416
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isnumber(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !158, metadata !281), !dbg !417
  %1 = tail call i32 @__istype(i32 %_c, i64 1024) #11, !dbg !418
  ret i32 %1, !dbg !419
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isphonogram(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !161, metadata !281), !dbg !420
  %1 = tail call i32 @__istype(i32 %_c, i64 2097152) #11, !dbg !421
  ret i32 %1, !dbg !422
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isrune(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !164, metadata !281), !dbg !423
  %1 = tail call i32 @__istype(i32 %_c, i64 4294967280) #11, !dbg !424
  ret i32 %1, !dbg !425
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isspecial(i32 %_c) #3 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !167, metadata !281), !dbg !426
  %1 = tail call i32 @__istype(i32 %_c, i64 1048576) #11, !dbg !427
  ret i32 %1, !dbg !428
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #5 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !171, metadata !281), !dbg !429
  %1 = icmp sgt i32 %__signo, 32, !dbg !430
  br i1 %1, label %5, label %2, !dbg !431

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !432
  %4 = shl i32 1, %3, !dbg !433
  br label %5, !dbg !431

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !431
  ret i32 %6, !dbg !434
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @continuing(i8* %s) #3 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !176, metadata !281), !dbg !435
  tail call void @rtrim(i8* %s) #11, !dbg !436
  %1 = tail call i64 @strlen(i8* %s) #10, !dbg !437
  %2 = trunc i64 %1 to i32, !dbg !437
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !177, metadata !281), !dbg !438
  %3 = icmp sgt i32 %2, 0, !dbg !439
  br i1 %3, label %4, label %11, !dbg !441

; <label>:4                                       ; preds = %0
  %5 = shl i64 %1, 32, !dbg !442
  %sext = add i64 %5, -4294967296, !dbg !442
  %6 = ashr exact i64 %sext, 32, !dbg !442
  %7 = getelementptr inbounds i8* %s, i64 %6, !dbg !442
  %8 = load i8* %7, align 1, !dbg !442, !tbaa !309
  %9 = icmp eq i8 %8, 92, !dbg !443
  br i1 %9, label %10, label %11, !dbg !444

; <label>:10                                      ; preds = %4
  store i8 0, i8* %7, align 1, !dbg !445, !tbaa !309
  br label %11, !dbg !447

; <label>:11                                      ; preds = %0, %4, %10
  %.0 = phi i32 [ 1, %10 ], [ 0, %4 ], [ 0, %0 ]
  ret i32 %.0, !dbg !448
}

; Function Attrs: nounwind optsize ssp uwtable
define void @rtrim(i8* %str) #3 {
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !203, metadata !281), !dbg !449
  %1 = icmp eq i8* %str, null, !dbg !450
  br i1 %1, label %.critedge, label %2, !dbg !452

; <label>:2                                       ; preds = %0
  %3 = tail call i64 @strlen(i8* %str) #10, !dbg !453
  %4 = add i64 %3, 4294967295, !dbg !454
  %5 = trunc i64 %4 to i32, !dbg !453
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !204, metadata !281), !dbg !455
  %6 = icmp sgt i32 %5, 0, !dbg !456
  br i1 %6, label %.lr.ph, label %.critedge, !dbg !457

.lr.ph:                                           ; preds = %2
  %sext = shl i64 %4, 32
  %7 = ashr exact i64 %sext, 32
  br label %8, !dbg !457

; <label>:8                                       ; preds = %.lr.ph, %.critedge1
  %indvars.iv = phi i64 [ %7, %.lr.ph ], [ %indvars.iv.next, %.critedge1 ]
  %9 = getelementptr inbounds i8* %str, i64 %indvars.iv, !dbg !458
  %10 = load i8* %9, align 1, !dbg !458, !tbaa !309
  switch i8 %10, label %.critedge [
    i8 32, label %.critedge1
    i8 9, label %.critedge1
  ], !dbg !459

.critedge1:                                       ; preds = %8, %8
  store i8 0, i8* %9, align 1, !dbg !460, !tbaa !309
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !457
  %11 = icmp sgt i64 %indvars.iv, 1, !dbg !456
  br i1 %11, label %8, label %.critedge, !dbg !457

.critedge:                                        ; preds = %.critedge1, %8, %2, %0
  ret void, !dbg !462
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define i8* @fgets2(i8* %line, i32 %n, %struct.__sFILE* nocapture %stream) #3 {
  tail call void @llvm.dbg.value(metadata i8* %line, i64 0, metadata !182, metadata !281), !dbg !463
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !183, metadata !281), !dbg !464
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %stream, i64 0, metadata !184, metadata !281), !dbg !465
  %1 = tail call i8* @fgets(i8* %line, i32 %n, %struct.__sFILE* %stream) #10, !dbg !466
  %2 = icmp eq i8* %1, null, !dbg !468
  br i1 %2, label %7, label %3, !dbg !469

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @strchr(i8* %line, i32 10) #10, !dbg !470
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !185, metadata !281), !dbg !472
  %5 = icmp eq i8* %4, null, !dbg !473
  br i1 %5, label %7, label %6, !dbg !474

; <label>:6                                       ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !475, !tbaa !309
  br label %7, !dbg !476

; <label>:7                                       ; preds = %6, %3, %0
  %.0 = phi i8* [ null, %0 ], [ %line, %3 ], [ %line, %6 ]
  ret i8* %.0, !dbg !477
}

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @strip_comment(i8* %line) #3 {
  tail call void @llvm.dbg.value(metadata i8* %line, i64 0, metadata !190, metadata !281), !dbg !478
  %1 = icmp eq i8* %line, null, !dbg !479
  br i1 %1, label %6, label %2, !dbg !481

; <label>:2                                       ; preds = %0
  %3 = tail call i8* @strchr(i8* %line, i32 59) #10, !dbg !482
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !191, metadata !281), !dbg !484
  %4 = icmp eq i8* %3, null, !dbg !485
  br i1 %4, label %6, label %5, !dbg !486

; <label>:5                                       ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !487, !tbaa !309
  br label %6, !dbg !488

; <label>:6                                       ; preds = %2, %0, %5
  ret void, !dbg !489
}

; Function Attrs: nounwind optsize ssp uwtable
define void @upstring(i8* nocapture %str) #3 {
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !194, metadata !281), !dbg !490
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !195, metadata !281), !dbg !491
  %1 = tail call i64 @strlen(i8* %str) #10, !dbg !492
  %2 = trunc i64 %1 to i32, !dbg !495
  %3 = icmp sgt i32 %2, 0, !dbg !496
  br i1 %3, label %.lr.ph, label %._crit_edge, !dbg !497

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %4 = getelementptr inbounds i8* %str, i64 %indvars.iv, !dbg !498
  %5 = load i8* %4, align 1, !dbg !498, !tbaa !309
  %6 = sext i8 %5 to i32, !dbg !498
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !146, metadata !281) #9, !dbg !499
  %7 = tail call i32 @__toupper(i32 %6) #10, !dbg !501
  %8 = trunc i32 %7 to i8, !dbg !502
  store i8 %8, i8* %4, align 1, !dbg !503, !tbaa !309
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !497
  %9 = tail call i64 @strlen(i8* %str) #10, !dbg !492
  %sext = shl i64 %9, 32, !dbg !496
  %10 = ashr exact i64 %sext, 32, !dbg !496
  %11 = icmp slt i64 %indvars.iv.next, %10, !dbg !496
  br i1 %11, label %.lr.ph, label %._crit_edge, !dbg !497

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void, !dbg !504
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ltrim(i8* %str) #3 {
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !198, metadata !281), !dbg !505
  %1 = icmp eq i8* %str, null, !dbg !506
  br i1 %1, label %10, label %2, !dbg !508

; <label>:2                                       ; preds = %0
  %3 = tail call i8* @strdup(i8* %str) #10, !dbg !509
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !199, metadata !281), !dbg !510
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !200, metadata !281), !dbg !511
  br label %4, !dbg !512

; <label>:4                                       ; preds = %.critedge, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %2 ]
  %5 = getelementptr inbounds i8* %3, i64 %indvars.iv, !dbg !513
  %6 = load i8* %5, align 1, !dbg !513, !tbaa !309
  switch i8 %6, label %7 [
    i8 32, label %.critedge
    i8 9, label %.critedge
  ], !dbg !514

.critedge:                                        ; preds = %4, %4
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !512
  br label %4, !dbg !512

; <label>:7                                       ; preds = %4
  %8 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %str, i1 false), !dbg !515
  %9 = tail call i8* @__strcpy_chk(i8* %str, i8* %5, i64 %8) #10, !dbg !515
  tail call void @free(i8* %3) #11, !dbg !516
  br label %10, !dbg !517

; <label>:10                                      ; preds = %0, %7
  ret void, !dbg !517
}

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #7

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #7

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #8

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #7

; Function Attrs: nounwind optsize ssp uwtable
define void @trim(i8* %str) #3 {
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !207, metadata !281), !dbg !518
  tail call void @ltrim(i8* %str) #11, !dbg !519
  tail call void @rtrim(i8* %str) #11, !dbg !520
  ret void, !dbg !521
}

; Function Attrs: nounwind optsize ssp uwtable
define void @nice_header(%struct.__sFILE* nocapture %out, i8* %fn) #3 {
  %clock = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !212, metadata !281), !dbg !522
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !213, metadata !281), !dbg !523
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !214, metadata !281), !dbg !524
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !220, metadata !281), !dbg !525
  %1 = tail call i64 @time(i64* null) #10, !dbg !526
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !215, metadata !281), !dbg !527
  store i64 %1, i64* %clock, align 8, !dbg !528, !tbaa !529
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32 59) #10, !dbg !531
  %3 = icmp ne i8* %fn, null, !dbg !532
  %4 = select i1 %3, i8* %fn, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), !dbg !532
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([28 x i8]* @.str2, i64 0, i64 0), i32 59, i8* %4) #10, !dbg !533
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !222, metadata !281), !dbg !534
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !221, metadata !281), !dbg !535
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str3, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i32 0) #10, !dbg !536
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)) #10, !dbg !537
  tail call void @llvm.dbg.value(metadata i64* %clock, i64 0, metadata !215, metadata !281), !dbg !527
  %8 = call i8* @ctime(i64* %clock) #10, !dbg !538
  %9 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i32 59, i8* %8) #10, !dbg !539
  %10 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32 59) #10, !dbg !540
  ret void, !dbg !541
}

; Function Attrs: optsize
declare i64 @time(i64*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: optsize
declare i8* @ctime(i64*) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @strcasecmp_min(i8* nocapture readonly %str1, i8* nocapture readonly %str2) #3 {
  tail call void @llvm.dbg.value(metadata i8* %str1, i64 0, metadata !235, metadata !281), !dbg !542
  tail call void @llvm.dbg.value(metadata i8* %str2, i64 0, metadata !236, metadata !281), !dbg !543
  br label %.critedge.outer, !dbg !544

.critedge.outer:                                  ; preds = %15, %0
  %.03.ph = phi i8* [ %6, %15 ], [ %str2, %0 ]
  %.02.ph = phi i8* [ %1, %15 ], [ %str1, %0 ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge, %.critedge, %.critedge.outer
  %.02 = phi i8* [ %.02.ph, %.critedge.outer ], [ %1, %.critedge ], [ %1, %.critedge ]
  %1 = getelementptr inbounds i8* %.02, i64 1, !dbg !545
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !235, metadata !281), !dbg !542
  %2 = load i8* %.02, align 1, !dbg !547, !tbaa !309
  %3 = sext i8 %2 to i32, !dbg !547
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !146, metadata !281) #9, !dbg !548
  %4 = tail call i32 @__toupper(i32 %3) #10, !dbg !550
  %sext = shl i32 %4, 24, !dbg !551
  %5 = ashr exact i32 %sext, 24, !dbg !551
  switch i32 %5, label %.critedge1 [
    i32 45, label %.critedge
    i32 95, label %.critedge
  ], !dbg !552

.critedge1:                                       ; preds = %.critedge1, %.critedge1, %.critedge
  %.1 = phi i8* [ %.03.ph, %.critedge ], [ %6, %.critedge1 ], [ %6, %.critedge1 ]
  %6 = getelementptr inbounds i8* %.1, i64 1, !dbg !553
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !236, metadata !281), !dbg !543
  %7 = load i8* %.1, align 1, !dbg !554, !tbaa !309
  %8 = sext i8 %7 to i32, !dbg !554
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !146, metadata !281) #9, !dbg !555
  %9 = tail call i32 @__toupper(i32 %8) #10, !dbg !557
  %sext4 = shl i32 %9, 24, !dbg !558
  %10 = ashr exact i32 %sext4, 24, !dbg !558
  switch i32 %10, label %11 [
    i32 45, label %.critedge1
    i32 95, label %.critedge1
  ], !dbg !559

; <label>:11                                      ; preds = %.critedge1
  %12 = icmp eq i32 %5, %10, !dbg !560
  br i1 %12, label %15, label %13, !dbg !562

; <label>:13                                      ; preds = %11
  %14 = sub nsw i32 %5, %10, !dbg !563
  br label %.loopexit, !dbg !564

; <label>:15                                      ; preds = %11
  %16 = trunc i32 %4 to i8, !dbg !565
  %17 = icmp eq i8 %16, 0, !dbg !566
  br i1 %17, label %.loopexit, label %.critedge.outer, !dbg !566

.loopexit:                                        ; preds = %15, %13
  %.0 = phi i32 [ %14, %13 ], [ 0, %15 ]
  ret i32 %.0, !dbg !567
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gmx_strcasecmp(i8* nocapture readonly %str1, i8* nocapture readonly %str2) #3 {
  tail call void @llvm.dbg.value(metadata i8* %str1, i64 0, metadata !241, metadata !281), !dbg !568
  tail call void @llvm.dbg.value(metadata i8* %str2, i64 0, metadata !242, metadata !281), !dbg !569
  br label %1, !dbg !570

; <label>:1                                       ; preds = %13, %0
  %.02 = phi i8* [ %str2, %0 ], [ %15, %13 ]
  %.01 = phi i8* [ %str1, %0 ], [ %16, %13 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !241, metadata !281), !dbg !568
  %2 = load i8* %.01, align 1, !dbg !571, !tbaa !309
  %3 = sext i8 %2 to i32, !dbg !571
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !146, metadata !281) #9, !dbg !573
  %4 = tail call i32 @__toupper(i32 %3) #10, !dbg !575
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !243, metadata !281), !dbg !576
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !242, metadata !281), !dbg !569
  %5 = load i8* %.02, align 1, !dbg !577, !tbaa !309
  %6 = sext i8 %5 to i32, !dbg !577
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !146, metadata !281) #9, !dbg !578
  %7 = tail call i32 @__toupper(i32 %6) #10, !dbg !580
  %sext = shl i32 %4, 24, !dbg !581
  %8 = ashr exact i32 %sext, 24, !dbg !581
  %sext3 = shl i32 %7, 24, !dbg !583
  %9 = ashr exact i32 %sext3, 24, !dbg !583
  %10 = icmp eq i32 %8, %9, !dbg !584
  br i1 %10, label %13, label %11, !dbg !585

; <label>:11                                      ; preds = %1
  %12 = sub nsw i32 %8, %9, !dbg !586
  br label %.loopexit, !dbg !587

; <label>:13                                      ; preds = %1
  %14 = trunc i32 %4 to i8, !dbg !588
  %15 = getelementptr inbounds i8* %.02, i64 1, !dbg !589
  %16 = getelementptr inbounds i8* %.01, i64 1, !dbg !590
  %17 = icmp eq i8 %14, 0, !dbg !591
  br i1 %17, label %.loopexit, label %1, !dbg !591

.loopexit:                                        ; preds = %13, %11
  %.0 = phi i32 [ %12, %11 ], [ 0, %13 ]
  ret i32 %.0, !dbg !592
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gmx_strncasecmp(i8* nocapture readonly %str1, i8* nocapture readonly %str2, i32 %n) #3 {
  tail call void @llvm.dbg.value(metadata i8* %str1, i64 0, metadata !249, metadata !281), !dbg !593
  tail call void @llvm.dbg.value(metadata i8* %str2, i64 0, metadata !250, metadata !281), !dbg !594
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !251, metadata !281), !dbg !595
  %1 = icmp eq i32 %n, 0, !dbg !596
  br i1 %1, label %.critedge, label %.preheader, !dbg !598

.preheader:                                       ; preds = %0, %13
  %.04 = phi i8* [ %14, %13 ], [ %str2, %0 ]
  %.03 = phi i32 [ %16, %13 ], [ %n, %0 ]
  %.02 = phi i8* [ %15, %13 ], [ %str1, %0 ]
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !249, metadata !281), !dbg !593
  %2 = load i8* %.02, align 1, !dbg !599, !tbaa !309
  %3 = sext i8 %2 to i32, !dbg !599
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !146, metadata !281) #9, !dbg !601
  %4 = tail call i32 @__toupper(i32 %3) #10, !dbg !603
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !250, metadata !281), !dbg !594
  %5 = load i8* %.04, align 1, !dbg !604, !tbaa !309
  %6 = sext i8 %5 to i32, !dbg !604
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !146, metadata !281) #9, !dbg !605
  %7 = tail call i32 @__toupper(i32 %6) #10, !dbg !607
  %sext = shl i32 %4, 24, !dbg !608
  %8 = ashr exact i32 %sext, 24, !dbg !608
  %sext5 = shl i32 %7, 24, !dbg !610
  %9 = ashr exact i32 %sext5, 24, !dbg !610
  %10 = icmp eq i32 %8, %9, !dbg !611
  br i1 %10, label %13, label %11, !dbg !612

; <label>:11                                      ; preds = %.preheader
  %12 = sub nsw i32 %8, %9, !dbg !613
  br label %.critedge, !dbg !614

; <label>:13                                      ; preds = %.preheader
  %14 = getelementptr inbounds i8* %.04, i64 1, !dbg !615
  %15 = getelementptr inbounds i8* %.02, i64 1, !dbg !616
  %16 = add nsw i32 %.03, -1, !dbg !617
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !251, metadata !281), !dbg !595
  %17 = icmp ne i32 %8, 0, !dbg !618
  %18 = icmp ne i32 %16, 0, !dbg !619
  %or.cond = and i1 %18, %17, !dbg !619
  br i1 %or.cond, label %.preheader, label %.critedge, !dbg !619

.critedge:                                        ; preds = %13, %0, %11
  %.0 = phi i32 [ %12, %11 ], [ 0, %0 ], [ 0, %13 ]
  ret i32 %.0, !dbg !620
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @gmx_strdup(i8* %src) #3 {
  tail call void @llvm.dbg.value(metadata i8* %src, i64 0, metadata !258, metadata !281), !dbg !621
  %1 = tail call i64 @strlen(i8* %src) #10, !dbg !622
  %2 = add i64 %1, 1, !dbg !622
  %3 = trunc i64 %2 to i32, !dbg !622
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str7, i64 0, i64 0), i32 227, i32 %3, i32 1) #10, !dbg !622
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !259, metadata !281), !dbg !623
  %5 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %4, i1 false), !dbg !624
  %6 = tail call i8* @__strcpy_chk(i8* %4, i8* %src, i64 %5) #10, !dbg !624
  ret i8* %4, !dbg !625
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i8* @wrap_lines(i8* nocapture readonly %buf, i32 %line_width, i32 %indent) #3 {
  tail call void @llvm.dbg.value(metadata i8* %buf, i64 0, metadata !264, metadata !281), !dbg !626
  tail call void @llvm.dbg.value(metadata i32 %line_width, i64 0, metadata !265, metadata !281), !dbg !627
  tail call void @llvm.dbg.value(metadata i32 %indent, i64 0, metadata !266, metadata !281), !dbg !628
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !273, metadata !281), !dbg !629
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !274, metadata !281), !dbg !630
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !267, metadata !281), !dbg !631
  %1 = tail call i64 @strlen(i8* %buf) #10, !dbg !632
  %2 = add i64 %1, 1, !dbg !633
  %3 = trunc i64 %2 to i32, !dbg !632
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !272, metadata !281), !dbg !634
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str7, i64 0, i64 0), i32 253, i32 %3, i32 1) #10, !dbg !635
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !267, metadata !281), !dbg !631
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !269, metadata !281), !dbg !636
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !270, metadata !281), !dbg !637
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !275, metadata !281), !dbg !638
  %5 = icmp sgt i32 %indent, 0, !dbg !639
  %6 = icmp eq i32 %indent, 0, !dbg !648
  %7 = add i32 %indent, 1, !dbg !654
  %8 = add i32 %indent, -1, !dbg !655
  %9 = zext i32 %8 to i64
  %10 = add nuw nsw i64 %9, 1, !dbg !655
  br label %11, !dbg !655

; <label>:11                                      ; preds = %67, %0
  %b2.0 = phi i8* [ %4, %0 ], [ %b2.3, %67 ]
  %i0.0 = phi i32 [ 0, %0 ], [ %i0.4, %67 ]
  %i2.0 = phi i32 [ 0, %0 ], [ %i2.5, %67 ]
  %b2len.0 = phi i32 [ %3, %0 ], [ %b2len.3, %67 ]
  %lspace.0 = phi i32 [ 0, %0 ], [ %lspace.1.lcssa, %67 ]
  %bFirst.0 = phi i32 [ 1, %0 ], [ %bFirst.2, %67 ]
  %.0 = phi i32 [ %line_width, %0 ], [ %.2, %67 ]
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !274, metadata !281), !dbg !630
  tail call void @llvm.dbg.value(metadata i32 %i0.0, i64 0, metadata !268, metadata !281), !dbg !656
  %12 = sext i32 %i0.0 to i64, !dbg !657
  %13 = getelementptr inbounds i8* %buf, i64 %12, !dbg !657
  %14 = load i8* %13, align 1, !dbg !657, !tbaa !309
  %15 = icmp eq i8 %14, 0, !dbg !658
  %16 = getelementptr inbounds i8* %buf, i64 %12, !dbg !659
  br i1 %15, label %.thread, label %.lr.ph39, !dbg !660

.lr.ph39:                                         ; preds = %11, %._crit_edge
  %17 = phi i8* [ %42, %._crit_edge ], [ %16, %11 ]
  %b2.1637 = phi i8* [ %b2.2, %._crit_edge ], [ %b2.0, %11 ]
  %i.0736 = phi i32 [ %26, %._crit_edge ], [ %i0.0, %11 ]
  %i0.1835 = phi i32 [ %i0.2, %._crit_edge ], [ %i0.0, %11 ]
  %i2.1934 = phi i32 [ %i2.3, %._crit_edge ], [ %i2.0, %11 ]
  %b2len.11033 = phi i32 [ %b2len.2, %._crit_edge ], [ %b2len.0, %11 ]
  %lspace.11132 = phi i32 [ %i.0.lspace.1, %._crit_edge ], [ %lspace.0, %11 ]
  %l2space.01231 = phi i32 [ %i2.1.l2space.0, %._crit_edge ], [ -1, %11 ]
  %indvars.iv30 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ %12, %11 ]
  %18 = phi i8 [ %.pre, %._crit_edge ], [ %14, %11 ]
  %19 = add i32 %i2.1934, 1, !dbg !661
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !270, metadata !281), !dbg !637
  %20 = sext i32 %i2.1934 to i64, !dbg !662
  %21 = getelementptr inbounds i8* %b2.1637, i64 %20, !dbg !662
  store i8 %18, i8* %21, align 1, !dbg !663, !tbaa !309
  %22 = load i8* %17, align 1, !dbg !664, !tbaa !309
  %23 = icmp eq i8 %22, 32, !dbg !666
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !273, metadata !281), !dbg !629
  tail call void @llvm.dbg.value(metadata i32 %i2.3, i64 0, metadata !274, metadata !281), !dbg !630
  %24 = trunc i64 %indvars.iv30 to i32, !dbg !667
  %i.0.lspace.1 = select i1 %23, i32 %24, i32 %lspace.11132, !dbg !667
  %i2.1.l2space.0 = select i1 %23, i32 %i2.1934, i32 %l2space.01231, !dbg !667
  %25 = icmp eq i8 %22, 10, !dbg !668
  %26 = add nsw i32 %i.0736, 1, !dbg !669
  %27 = sext i32 %26 to i64, !dbg !670
  %28 = getelementptr inbounds i8* %buf, i64 %27, !dbg !670
  br i1 %25, label %29, label %.loopexit, !dbg !671

; <label>:29                                      ; preds = %.lr.ph39
  %30 = load i8* %28, align 1, !dbg !670, !tbaa !309
  %31 = icmp eq i8 %30, 0, !dbg !670
  br i1 %31, label %.loopexit, label %32, !dbg !672

; <label>:32                                      ; preds = %29
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !269, metadata !281), !dbg !636
  %33 = add nsw i32 %b2len.11033, %indent, !dbg !673
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !272, metadata !281), !dbg !634
  %34 = tail call i8* @save_realloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str7, i64 0, i64 0), i32 271, i8* %b2.1637, i32 %33) #10, !dbg !674
  tail call void @llvm.dbg.value(metadata i8* %34, i64 0, metadata !267, metadata !281), !dbg !631
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !271, metadata !281), !dbg !675
  br i1 %5, label %.lr.ph, label %.loopexit, !dbg !654

.lr.ph:                                           ; preds = %32
  %35 = sext i32 %19 to i64
  %scevgep = getelementptr i8* %34, i64 %35
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 32, i64 %10, i32 1, i1 false), !dbg !676
  %36 = add i32 %7, %i2.1934, !dbg !654
  br label %.loopexit, !dbg !654

.loopexit:                                        ; preds = %.lr.ph39, %32, %.lr.ph, %29
  %b2.2 = phi i8* [ %b2.1637, %29 ], [ %34, %.lr.ph ], [ %34, %32 ], [ %b2.1637, %.lr.ph39 ]
  %i0.2 = phi i32 [ %i0.1835, %29 ], [ %26, %.lr.ph ], [ %26, %32 ], [ %i0.1835, %.lr.ph39 ]
  %i2.3 = phi i32 [ %19, %29 ], [ %36, %.lr.ph ], [ %19, %32 ], [ %19, %.lr.ph39 ]
  %b2len.2 = phi i32 [ %b2len.11033, %29 ], [ %33, %.lr.ph ], [ %33, %32 ], [ %b2len.11033, %.lr.ph39 ]
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !268, metadata !281), !dbg !656
  %37 = sub nsw i32 %26, %i0.2, !dbg !677
  %38 = icmp slt i32 %37, %.0, !dbg !678
  %39 = icmp eq i32 %i2.1.l2space.0, -1, !dbg !679
  %or.cond = or i1 %38, %39, !dbg !680
  %40 = load i8* %28, align 1, !dbg !657, !tbaa !309
  %indvars.iv.next = add i64 %indvars.iv30, 1, !dbg !680
  br i1 %or.cond, label %._crit_edge, label %.thread, !dbg !680

._crit_edge:                                      ; preds = %.loopexit
  %.phi.trans.insert = getelementptr inbounds i8* %buf, i64 %indvars.iv.next
  %.pre = load i8* %.phi.trans.insert, align 1, !dbg !659, !tbaa !309
  %41 = icmp eq i8 %40, 0, !dbg !658
  %42 = getelementptr inbounds i8* %buf, i64 %indvars.iv.next, !dbg !659
  br i1 %41, label %.thread, label %.lr.ph39, !dbg !660

.thread:                                          ; preds = %.loopexit, %._crit_edge, %11
  %.lcssa = phi i32 [ 0, %11 ], [ %37, %._crit_edge ], [ %37, %.loopexit ]
  %l2space.0.lcssa = phi i32 [ -1, %11 ], [ %i2.1.l2space.0, %._crit_edge ], [ %i2.1.l2space.0, %.loopexit ]
  %lspace.1.lcssa = phi i32 [ %lspace.0, %11 ], [ %i.0.lspace.1, %._crit_edge ], [ %i.0.lspace.1, %.loopexit ]
  %b2len.1.lcssa = phi i32 [ %b2len.0, %11 ], [ %b2len.2, %._crit_edge ], [ %b2len.2, %.loopexit ]
  %i2.1.lcssa = phi i32 [ %i2.0, %11 ], [ %i2.3, %._crit_edge ], [ %i2.3, %.loopexit ]
  %i0.1.lcssa = phi i32 [ %i0.0, %11 ], [ %i0.2, %._crit_edge ], [ %i0.2, %.loopexit ]
  %b2.1.lcssa = phi i8* [ %b2.0, %11 ], [ %b2.2, %._crit_edge ], [ %b2.2, %.loopexit ]
  %43 = phi i8 [ %14, %11 ], [ %.pre, %._crit_edge ], [ %40, %.loopexit ]
  %44 = phi i8* [ %16, %11 ], [ %42, %._crit_edge ], [ %28, %.loopexit ]
  %45 = icmp eq i8 %43, 0, !dbg !681
  br i1 %45, label %67, label %46, !dbg !682

; <label>:46                                      ; preds = %.thread
  %47 = icmp sgt i32 %.lcssa, %.0, !dbg !683
  %48 = add i32 %lspace.1.lcssa, 1, !dbg !684
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !269, metadata !281), !dbg !636
  %49 = add i32 %l2space.0.lcssa, 1, !dbg !685
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !270, metadata !281), !dbg !637
  %50 = icmp slt i32 %l2space.0.lcssa, %indent, !dbg !686
  %or.cond2 = or i1 %47, %50, !dbg !687
  br i1 %or.cond2, label %67, label %51, !dbg !687

; <label>:51                                      ; preds = %46
  %52 = sext i32 %l2space.0.lcssa to i64, !dbg !688
  %53 = getelementptr inbounds i8* %b2.1.lcssa, i64 %52, !dbg !688
  store i8 10, i8* %53, align 1, !dbg !689, !tbaa !309
  br i1 %6, label %67, label %54, !dbg !690

; <label>:54                                      ; preds = %51
  %55 = icmp eq i32 %bFirst.0, 0, !dbg !691
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !275, metadata !281), !dbg !638
  %56 = select i1 %55, i32 0, i32 %indent, !dbg !694
  %.0. = sub nsw i32 %.0, %56, !dbg !694
  %57 = add nsw i32 %b2len.1.lcssa, %indent, !dbg !695
  tail call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !272, metadata !281), !dbg !634
  %58 = tail call i8* @save_realloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str7, i64 0, i64 0), i32 295, i8* %b2.1.lcssa, i32 %57) #10, !dbg !696
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !267, metadata !281), !dbg !631
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !271, metadata !281), !dbg !675
  br i1 %5, label %.lr.ph15, label %.preheader, !dbg !697

.lr.ph15:                                         ; preds = %54
  %59 = sext i32 %49 to i64
  %scevgep21 = getelementptr i8* %58, i64 %59
  call void @llvm.memset.p0i8.i64(i8* %scevgep21, i8 32, i64 %10, i32 1, i1 false), !dbg !699
  %60 = add i32 %7, %l2space.0.lcssa, !dbg !697
  br label %.preheader, !dbg !697

.preheader:                                       ; preds = %.lr.ph15, %54
  %i2.4.lcssa = phi i32 [ %60, %.lr.ph15 ], [ %49, %54 ]
  %61 = sext i32 %48 to i64
  br label %62, !dbg !701

; <label>:62                                      ; preds = %62, %.preheader
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %62 ], [ %61, %.preheader ]
  %63 = getelementptr inbounds i8* %buf, i64 %indvars.iv22, !dbg !701
  %64 = load i8* %63, align 1, !dbg !701, !tbaa !309
  %65 = icmp eq i8 %64, 32, !dbg !702
  %indvars.iv.next23 = add i64 %indvars.iv22, 1, !dbg !703
  br i1 %65, label %62, label %.loopexit3, !dbg !703

.loopexit3:                                       ; preds = %62
  %66 = trunc i64 %indvars.iv22 to i32
  br label %67

; <label>:67                                      ; preds = %.loopexit3, %51, %46, %.thread
  %b2.3 = phi i8* [ %b2.1.lcssa, %51 ], [ %b2.1.lcssa, %46 ], [ %b2.1.lcssa, %.thread ], [ %58, %.loopexit3 ]
  %i0.4 = phi i32 [ %48, %51 ], [ %48, %46 ], [ %i0.1.lcssa, %.thread ], [ %66, %.loopexit3 ]
  %i2.5 = phi i32 [ %49, %51 ], [ %49, %46 ], [ %i2.1.lcssa, %.thread ], [ %i2.4.lcssa, %.loopexit3 ]
  %b2len.3 = phi i32 [ %b2len.1.lcssa, %51 ], [ %b2len.1.lcssa, %46 ], [ %b2len.1.lcssa, %.thread ], [ %57, %.loopexit3 ]
  %bFirst.2 = phi i32 [ %bFirst.0, %51 ], [ %bFirst.0, %46 ], [ %bFirst.0, %.thread ], [ 0, %.loopexit3 ]
  %.2 = phi i32 [ %.0, %51 ], [ %.0, %46 ], [ %.0, %.thread ], [ %.0., %.loopexit3 ]
  %68 = load i8* %44, align 1, !dbg !704, !tbaa !309
  %69 = icmp eq i8 %68, 0, !dbg !705
  br i1 %69, label %70, label %11, !dbg !705

; <label>:70                                      ; preds = %67
  %71 = sext i32 %i2.5 to i64, !dbg !706
  %72 = getelementptr inbounds i8* %b2.3, i64 %71, !dbg !706
  store i8 0, i8* %72, align 1, !dbg !707, !tbaa !309
  ret i8* %b2.3, !dbg !708
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #8

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #9

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!277, !278, !279}
!llvm.ident = !{!280}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/string2.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6, !7}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !76, !82, !90, !96, !102, !105, !108, !111, !114, !117, !120, !123, !126, !129, !132, !135, !138, !141, !144, !147, !150, !153, !156, !159, !162, !165, !168, !172, !178, !186, !192, !196, !201, !205, !208, !231, !239, !245, !254, !260}
!9 = !DISubprogram(name: "__sputc", scope: !10, file: !10, line: 348, type: !11, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !73)
!10 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!11 = !DISubroutineType(types: !12)
!12 = !{!7, !7, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !10, line: 153, baseType: !15)
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !10, line: 122, size: 1216, align: 64, elements: !16)
!16 = !{!17, !20, !21, !22, !24, !25, !30, !31, !32, !36, !41, !51, !57, !58, !61, !62, !66, !70, !71, !72}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !15, file: !10, line: 123, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !15, file: !10, line: 124, baseType: !7, size: 32, align: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !15, file: !10, line: 125, baseType: !7, size: 32, align: 32, offset: 96)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !15, file: !10, line: 126, baseType: !23, size: 16, align: 16, offset: 128)
!23 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !15, file: !10, line: 127, baseType: !23, size: 16, align: 16, offset: 144)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !15, file: !10, line: 128, baseType: !26, size: 128, align: 64, offset: 192)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !10, line: 88, size: 128, align: 64, elements: !27)
!27 = !{!28, !29}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !26, file: !10, line: 89, baseType: !18, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !26, file: !10, line: 90, baseType: !7, size: 32, align: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !15, file: !10, line: 129, baseType: !7, size: 32, align: 32, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !15, file: !10, line: 132, baseType: !6, size: 64, align: 64, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !15, file: !10, line: 133, baseType: !33, size: 64, align: 64, offset: 448)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{!7, !6}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !15, file: !10, line: 134, baseType: !37, size: 64, align: 64, offset: 512)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!7, !6, !40, !7}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !15, file: !10, line: 135, baseType: !42, size: 64, align: 64, offset: 576)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !6, !45, !7}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !10, line: 77, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !47, line: 71, baseType: !48)
!47 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !49, line: 46, baseType: !50)
!49 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!50 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !15, file: !10, line: 136, baseType: !52, size: 64, align: 64, offset: 640)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!7, !6, !55, !7}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !15, file: !10, line: 139, baseType: !26, size: 128, align: 64, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !15, file: !10, line: 140, baseType: !59, size: 64, align: 64, offset: 832)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !10, line: 94, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !15, file: !10, line: 141, baseType: !7, size: 32, align: 32, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !15, file: !10, line: 144, baseType: !63, size: 24, align: 8, offset: 928)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, align: 8, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 3)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !15, file: !10, line: 145, baseType: !67, size: 8, align: 8, offset: 952)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, align: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 1)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !15, file: !10, line: 148, baseType: !26, size: 128, align: 64, offset: 960)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !15, file: !10, line: 151, baseType: !7, size: 32, align: 32, offset: 1088)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !15, file: !10, line: 152, baseType: !45, size: 64, align: 64, offset: 1152)
!73 = !{!74, !75}
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !9, file: !10, line: 348, type: !7)
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !9, file: !10, line: 348, type: !13)
!76 = !DISubprogram(name: "isascii", scope: !77, file: !77, line: 135, type: !78, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isascii, variables: !80)
!77 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!78 = !DISubroutineType(types: !79)
!79 = !{!7, !7}
!80 = !{!81}
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !76, file: !77, line: 135, type: !7)
!82 = !DISubprogram(name: "__istype", scope: !77, file: !77, line: 153, type: !83, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i64)* @__istype, variables: !87)
!83 = !DISubroutineType(types: !84)
!84 = !{!7, !85, !86}
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !49, line: 70, baseType: !7)
!86 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!87 = !{!88, !89}
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !82, file: !77, line: 153, type: !85)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !82, file: !77, line: 153, type: !86)
!90 = !DISubprogram(name: "__isctype", scope: !77, file: !77, line: 164, type: !91, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i64)* @__isctype, variables: !93)
!91 = !DISubroutineType(types: !92)
!92 = !{!85, !85, !86}
!93 = !{!94, !95}
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !90, file: !77, line: 164, type: !85)
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !90, file: !77, line: 164, type: !86)
!96 = !DISubprogram(name: "__wcwidth", scope: !77, file: !77, line: 194, type: !97, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__wcwidth, variables: !99)
!97 = !DISubroutineType(types: !98)
!98 = !{!7, !85}
!99 = !{!100, !101}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !96, file: !77, line: 194, type: !85)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_x", scope: !96, file: !77, line: 196, type: !5)
!102 = !DISubprogram(name: "isalnum", scope: !77, file: !77, line: 212, type: !78, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isalnum, variables: !103)
!103 = !{!104}
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !102, file: !77, line: 212, type: !7)
!105 = !DISubprogram(name: "isalpha", scope: !77, file: !77, line: 218, type: !78, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isalpha, variables: !106)
!106 = !{!107}
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !105, file: !77, line: 218, type: !7)
!108 = !DISubprogram(name: "isblank", scope: !77, file: !77, line: 224, type: !78, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isblank, variables: !109)
!109 = !{!110}
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !108, file: !77, line: 224, type: !7)
!111 = !DISubprogram(name: "iscntrl", scope: !77, file: !77, line: 230, type: !78, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @iscntrl, variables: !112)
!112 = !{!113}
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !111, file: !77, line: 230, type: !7)
!114 = !DISubprogram(name: "isdigit", scope: !77, file: !77, line: 237, type: !78, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isdigit, variables: !115)
!115 = !{!116}
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !114, file: !77, line: 237, type: !7)
!117 = !DISubprogram(name: "isgraph", scope: !77, file: !77, line: 243, type: !78, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isgraph, variables: !118)
!118 = !{!119}
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !117, file: !77, line: 243, type: !7)
!120 = !DISubprogram(name: "islower", scope: !77, file: !77, line: 249, type: !78, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @islower, variables: !121)
!121 = !{!122}
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !120, file: !77, line: 249, type: !7)
!123 = !DISubprogram(name: "isprint", scope: !77, file: !77, line: 255, type: !78, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isprint, variables: !124)
!124 = !{!125}
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !123, file: !77, line: 255, type: !7)
!126 = !DISubprogram(name: "ispunct", scope: !77, file: !77, line: 261, type: !78, isLocal: false, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @ispunct, variables: !127)
!127 = !{!128}
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !126, file: !77, line: 261, type: !7)
!129 = !DISubprogram(name: "isspace", scope: !77, file: !77, line: 267, type: !78, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isspace, variables: !130)
!130 = !{!131}
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !129, file: !77, line: 267, type: !7)
!132 = !DISubprogram(name: "isupper", scope: !77, file: !77, line: 273, type: !78, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isupper, variables: !133)
!133 = !{!134}
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !132, file: !77, line: 273, type: !7)
!135 = !DISubprogram(name: "isxdigit", scope: !77, file: !77, line: 280, type: !78, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isxdigit, variables: !136)
!136 = !{!137}
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !135, file: !77, line: 280, type: !7)
!138 = !DISubprogram(name: "toascii", scope: !77, file: !77, line: 286, type: !78, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @toascii, variables: !139)
!139 = !{!140}
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !138, file: !77, line: 286, type: !7)
!141 = !DISubprogram(name: "tolower", scope: !77, file: !77, line: 292, type: !78, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @tolower, variables: !142)
!142 = !{!143}
!143 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !141, file: !77, line: 292, type: !7)
!144 = !DISubprogram(name: "toupper", scope: !77, file: !77, line: 298, type: !78, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @toupper, variables: !145)
!145 = !{!146}
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !144, file: !77, line: 298, type: !7)
!147 = !DISubprogram(name: "digittoint", scope: !77, file: !77, line: 305, type: !78, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @digittoint, variables: !148)
!148 = !{!149}
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !147, file: !77, line: 305, type: !7)
!150 = !DISubprogram(name: "ishexnumber", scope: !77, file: !77, line: 311, type: !78, isLocal: false, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @ishexnumber, variables: !151)
!151 = !{!152}
!152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !150, file: !77, line: 311, type: !7)
!153 = !DISubprogram(name: "isideogram", scope: !77, file: !77, line: 317, type: !78, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isideogram, variables: !154)
!154 = !{!155}
!155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !153, file: !77, line: 317, type: !7)
!156 = !DISubprogram(name: "isnumber", scope: !77, file: !77, line: 323, type: !78, isLocal: false, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isnumber, variables: !157)
!157 = !{!158}
!158 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !156, file: !77, line: 323, type: !7)
!159 = !DISubprogram(name: "isphonogram", scope: !77, file: !77, line: 329, type: !78, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isphonogram, variables: !160)
!160 = !{!161}
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !159, file: !77, line: 329, type: !7)
!162 = !DISubprogram(name: "isrune", scope: !77, file: !77, line: 335, type: !78, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isrune, variables: !163)
!163 = !{!164}
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !162, file: !77, line: 335, type: !7)
!165 = !DISubprogram(name: "isspecial", scope: !77, file: !77, line: 341, type: !78, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isspecial, variables: !166)
!166 = !{!167}
!167 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !165, file: !77, line: 341, type: !7)
!168 = !DISubprogram(name: "__sigbits", scope: !169, file: !169, line: 114, type: !78, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !170)
!169 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!170 = !{!171}
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !168, file: !169, line: 114, type: !7)
!172 = !DISubprogram(name: "continuing", scope: !1, file: !1, line: 52, type: !173, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @continuing, variables: !175)
!173 = !DISubroutineType(types: !174)
!174 = !{!7, !40}
!175 = !{!176, !177}
!176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !172, file: !1, line: 52, type: !40)
!177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sl", scope: !172, file: !1, line: 57, type: !7)
!178 = !DISubprogram(name: "fgets2", scope: !1, file: !1, line: 69, type: !179, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, %struct.__sFILE*)* @fgets2, variables: !181)
!179 = !DISubroutineType(types: !180)
!180 = !{!40, !40, !7, !13}
!181 = !{!182, !183, !184, !185}
!182 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 1, scope: !178, file: !1, line: 69, type: !40)
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !178, file: !1, line: 69, type: !7)
!184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stream", arg: 3, scope: !178, file: !1, line: 69, type: !13)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !178, file: !1, line: 75, type: !40)
!186 = !DISubprogram(name: "strip_comment", scope: !1, file: !1, line: 81, type: !187, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @strip_comment, variables: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !40}
!189 = !{!190, !191}
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 1, scope: !186, file: !1, line: 81, type: !40)
!191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !186, file: !1, line: 83, type: !40)
!192 = !DISubprogram(name: "upstring", scope: !1, file: !1, line: 93, type: !187, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @upstring, variables: !193)
!193 = !{!194, !195}
!194 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !192, file: !1, line: 93, type: !40)
!195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !192, file: !1, line: 95, type: !7)
!196 = !DISubprogram(name: "ltrim", scope: !1, file: !1, line: 101, type: !187, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @ltrim, variables: !197)
!197 = !{!198, !199, !200}
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !196, file: !1, line: 101, type: !40)
!199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tr", scope: !196, file: !1, line: 103, type: !40)
!200 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !196, file: !1, line: 104, type: !7)
!201 = !DISubprogram(name: "rtrim", scope: !1, file: !1, line: 118, type: !187, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @rtrim, variables: !202)
!202 = !{!203, !204}
!203 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !201, file: !1, line: 118, type: !40)
!204 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nul", scope: !201, file: !1, line: 120, type: !7)
!205 = !DISubprogram(name: "trim", scope: !1, file: !1, line: 132, type: !187, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @trim, variables: !206)
!206 = !{!207}
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !205, file: !1, line: 132, type: !40)
!208 = !DISubprogram(name: "nice_header", scope: !1, file: !1, line: 138, type: !209, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*)* @nice_header, variables: !211)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !13, !40}
!211 = !{!212, !213, !214, !215, !220, !221, !222, !227}
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !208, file: !1, line: 138, type: !13)
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !208, file: !1, line: 138, type: !40)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unk", scope: !208, file: !1, line: 140, type: !40)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "clock", scope: !208, file: !1, line: 141, type: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !217, line: 30, baseType: !218)
!217 = !DIFile(filename: "/usr/include/sys/_types/_time_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !49, line: 120, baseType: !219)
!219 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "user", scope: !208, file: !1, line: 142, type: !40)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gh", scope: !208, file: !1, line: 143, type: !7)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gmxuid", scope: !208, file: !1, line: 144, type: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !224, line: 30, baseType: !225)
!224 = !DIFile(filename: "/usr/include/sys/_types/_uid_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !47, line: 75, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 45, baseType: !5)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !208, file: !1, line: 145, type: !228)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, align: 8, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 256)
!231 = !DISubprogram(name: "strcasecmp_min", scope: !1, file: !1, line: 173, type: !232, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @strcasecmp_min, variables: !234)
!232 = !DISubroutineType(types: !233)
!233 = !{!7, !55, !55}
!234 = !{!235, !236, !237, !238}
!235 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str1", arg: 1, scope: !231, file: !1, line: 173, type: !55)
!236 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str2", arg: 2, scope: !231, file: !1, line: 173, type: !55)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch1", scope: !231, file: !1, line: 175, type: !4)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch2", scope: !231, file: !1, line: 175, type: !4)
!239 = !DISubprogram(name: "gmx_strcasecmp", scope: !1, file: !1, line: 191, type: !232, isLocal: false, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @gmx_strcasecmp, variables: !240)
!240 = !{!241, !242, !243, !244}
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str1", arg: 1, scope: !239, file: !1, line: 191, type: !55)
!242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str2", arg: 2, scope: !239, file: !1, line: 191, type: !55)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch1", scope: !239, file: !1, line: 193, type: !4)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch2", scope: !239, file: !1, line: 193, type: !4)
!245 = !DISubprogram(name: "gmx_strncasecmp", scope: !1, file: !1, line: 205, type: !246, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, i32)* @gmx_strncasecmp, variables: !248)
!246 = !DISubroutineType(types: !247)
!247 = !{!7, !55, !55, !7}
!248 = !{!249, !250, !251, !252, !253}
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str1", arg: 1, scope: !245, file: !1, line: 205, type: !55)
!250 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str2", arg: 2, scope: !245, file: !1, line: 205, type: !55)
!251 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 3, scope: !245, file: !1, line: 205, type: !7)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch1", scope: !245, file: !1, line: 207, type: !4)
!253 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ch2", scope: !245, file: !1, line: 207, type: !4)
!254 = !DISubprogram(name: "gmx_strdup", scope: !1, file: !1, line: 223, type: !255, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*)* @gmx_strdup, variables: !257)
!255 = !DISubroutineType(types: !256)
!256 = !{!40, !55}
!257 = !{!258, !259}
!258 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !254, file: !1, line: 223, type: !55)
!259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dest", scope: !254, file: !1, line: 225, type: !40)
!260 = !DISubprogram(name: "wrap_lines", scope: !1, file: !1, line: 233, type: !261, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, i32)* @wrap_lines, variables: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{!40, !40, !7, !7}
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276}
!264 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !260, file: !1, line: 233, type: !40)
!265 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line_width", arg: 2, scope: !260, file: !1, line: 233, type: !7)
!266 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "indent", arg: 3, scope: !260, file: !1, line: 233, type: !7)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b2", scope: !260, file: !1, line: 235, type: !40)
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !260, file: !1, line: 236, type: !7)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i0", scope: !260, file: !1, line: 236, type: !7)
!270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i2", scope: !260, file: !1, line: 236, type: !7)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !260, file: !1, line: 236, type: !7)
!272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b2len", scope: !260, file: !1, line: 236, type: !7)
!273 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lspace", scope: !260, file: !1, line: 236, type: !7)
!274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l2space", scope: !260, file: !1, line: 236, type: !7)
!275 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bFirst", scope: !260, file: !1, line: 237, type: !7)
!276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bFitsOnLine", scope: !260, file: !1, line: 237, type: !7)
!277 = !{i32 2, !"Dwarf Version", i32 2}
!278 = !{i32 2, !"Debug Info Version", i32 700000003}
!279 = !{i32 1, !"PIC Level", i32 2}
!280 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!281 = !DIExpression()
!282 = !DILocation(line: 348, column: 40, scope: !9)
!283 = !DILocation(line: 348, column: 50, scope: !9)
!284 = !DILocation(line: 349, column: 12, scope: !285)
!285 = distinct !DILexicalBlock(scope: !9, file: !10, line: 349, column: 6)
!286 = !DILocation(line: 349, column: 6, scope: !285)
!287 = !{!288, !292, i64 12}
!288 = !{!"__sFILE", !289, i64 0, !292, i64 8, !292, i64 12, !293, i64 16, !293, i64 18, !294, i64 24, !292, i64 40, !289, i64 48, !289, i64 56, !289, i64 64, !289, i64 72, !289, i64 80, !294, i64 88, !289, i64 104, !292, i64 112, !290, i64 116, !290, i64 119, !294, i64 120, !292, i64 136, !295, i64 144}
!289 = !{!"any pointer", !290, i64 0}
!290 = !{!"omnipotent char", !291, i64 0}
!291 = !{!"Simple C/C++ TBAA"}
!292 = !{!"int", !290, i64 0}
!293 = !{!"short", !290, i64 0}
!294 = !{!"__sbuf", !289, i64 0, !292, i64 8}
!295 = !{!"long long", !290, i64 0}
!296 = !DILocation(line: 349, column: 15, scope: !285)
!297 = !DILocation(line: 349, column: 20, scope: !285)
!298 = !DILocation(line: 350, column: 10, scope: !285)
!299 = !DILocation(line: 349, column: 38, scope: !285)
!300 = !{!288, !292, i64 40}
!301 = !DILocation(line: 349, column: 31, scope: !285)
!302 = !DILocation(line: 349, column: 59, scope: !285)
!303 = !DILocation(line: 349, column: 47, scope: !285)
!304 = !DILocation(line: 350, column: 23, scope: !285)
!305 = !DILocation(line: 350, column: 16, scope: !285)
!306 = !DILocation(line: 350, column: 18, scope: !285)
!307 = !{!288, !289, i64 0}
!308 = !DILocation(line: 350, column: 21, scope: !285)
!309 = !{!290, !290, i64 0}
!310 = !DILocation(line: 350, column: 3, scope: !285)
!311 = !DILocation(line: 352, column: 11, scope: !285)
!312 = !DILocation(line: 352, column: 3, scope: !285)
!313 = !DILocation(line: 353, column: 1, scope: !9)
!314 = !DILocation(line: 135, column: 13, scope: !76)
!315 = !DILocation(line: 137, column: 23, scope: !76)
!316 = !DILocation(line: 137, column: 2, scope: !76)
!317 = !DILocation(line: 153, column: 29, scope: !82)
!318 = !DILocation(line: 153, column: 47, scope: !82)
!319 = !DILocation(line: 158, column: 10, scope: !82)
!320 = !DILocation(line: 158, column: 27, scope: !82)
!321 = !{!292, !292, i64 0}
!322 = !DILocation(line: 158, column: 61, scope: !82)
!323 = !DILocation(line: 158, column: 25, scope: !82)
!324 = !DILocation(line: 159, column: 7, scope: !82)
!325 = !DILocation(line: 159, column: 6, scope: !82)
!326 = !DILocation(line: 158, column: 24, scope: !82)
!327 = !DILocation(line: 158, column: 2, scope: !82)
!328 = !DILocation(line: 164, column: 30, scope: !90)
!329 = !DILocation(line: 164, column: 48, scope: !90)
!330 = !DILocation(line: 169, column: 17, scope: !90)
!331 = !DILocation(line: 170, column: 6, scope: !90)
!332 = !DILocation(line: 170, column: 40, scope: !90)
!333 = !DILocation(line: 170, column: 4, scope: !90)
!334 = !DILocation(line: 170, column: 3, scope: !90)
!335 = !DILocation(line: 169, column: 9, scope: !90)
!336 = !DILocation(line: 169, column: 2, scope: !90)
!337 = !DILocation(line: 194, column: 30, scope: !96)
!338 = !DILocation(line: 198, column: 9, scope: !339)
!339 = distinct !DILexicalBlock(scope: !96, file: !77, line: 198, column: 6)
!340 = !DILocation(line: 198, column: 6, scope: !96)
!341 = !DILocation(line: 200, column: 21, scope: !96)
!342 = !DILocation(line: 196, column: 15, scope: !96)
!343 = !DILocation(line: 201, column: 24, scope: !344)
!344 = distinct !DILexicalBlock(scope: !96, file: !77, line: 201, column: 6)
!345 = !DILocation(line: 201, column: 6, scope: !96)
!346 = !DILocation(line: 202, column: 29, scope: !344)
!347 = !DILocation(line: 202, column: 3, scope: !344)
!348 = !DILocation(line: 203, column: 10, scope: !96)
!349 = !DILocation(line: 203, column: 2, scope: !96)
!350 = !DILocation(line: 204, column: 1, scope: !96)
!351 = !DILocation(line: 212, column: 13, scope: !102)
!352 = !DILocation(line: 214, column: 10, scope: !102)
!353 = !DILocation(line: 214, column: 2, scope: !102)
!354 = !DILocation(line: 218, column: 13, scope: !105)
!355 = !DILocation(line: 220, column: 10, scope: !105)
!356 = !DILocation(line: 220, column: 2, scope: !105)
!357 = !DILocation(line: 224, column: 13, scope: !108)
!358 = !DILocation(line: 226, column: 10, scope: !108)
!359 = !DILocation(line: 226, column: 2, scope: !108)
!360 = !DILocation(line: 230, column: 13, scope: !111)
!361 = !DILocation(line: 232, column: 10, scope: !111)
!362 = !DILocation(line: 232, column: 2, scope: !111)
!363 = !DILocation(line: 237, column: 13, scope: !114)
!364 = !DILocation(line: 164, column: 30, scope: !90, inlinedAt: !365)
!365 = distinct !DILocation(line: 239, column: 10, scope: !114)
!366 = !DILocation(line: 164, column: 48, scope: !90, inlinedAt: !365)
!367 = !DILocation(line: 169, column: 17, scope: !90, inlinedAt: !365)
!368 = !DILocation(line: 170, column: 6, scope: !90, inlinedAt: !365)
!369 = !DILocation(line: 170, column: 3, scope: !90, inlinedAt: !365)
!370 = !DILocation(line: 169, column: 9, scope: !90, inlinedAt: !365)
!371 = !DILocation(line: 239, column: 2, scope: !114)
!372 = !DILocation(line: 243, column: 13, scope: !117)
!373 = !DILocation(line: 245, column: 10, scope: !117)
!374 = !DILocation(line: 245, column: 2, scope: !117)
!375 = !DILocation(line: 249, column: 13, scope: !120)
!376 = !DILocation(line: 251, column: 10, scope: !120)
!377 = !DILocation(line: 251, column: 2, scope: !120)
!378 = !DILocation(line: 255, column: 13, scope: !123)
!379 = !DILocation(line: 257, column: 10, scope: !123)
!380 = !DILocation(line: 257, column: 2, scope: !123)
!381 = !DILocation(line: 261, column: 13, scope: !126)
!382 = !DILocation(line: 263, column: 10, scope: !126)
!383 = !DILocation(line: 263, column: 2, scope: !126)
!384 = !DILocation(line: 267, column: 13, scope: !129)
!385 = !DILocation(line: 269, column: 10, scope: !129)
!386 = !DILocation(line: 269, column: 2, scope: !129)
!387 = !DILocation(line: 273, column: 13, scope: !132)
!388 = !DILocation(line: 275, column: 10, scope: !132)
!389 = !DILocation(line: 275, column: 2, scope: !132)
!390 = !DILocation(line: 280, column: 14, scope: !135)
!391 = !DILocation(line: 164, column: 30, scope: !90, inlinedAt: !392)
!392 = distinct !DILocation(line: 282, column: 10, scope: !135)
!393 = !DILocation(line: 164, column: 48, scope: !90, inlinedAt: !392)
!394 = !DILocation(line: 169, column: 17, scope: !90, inlinedAt: !392)
!395 = !DILocation(line: 170, column: 6, scope: !90, inlinedAt: !392)
!396 = !DILocation(line: 170, column: 3, scope: !90, inlinedAt: !392)
!397 = !DILocation(line: 169, column: 9, scope: !90, inlinedAt: !392)
!398 = !DILocation(line: 282, column: 2, scope: !135)
!399 = !DILocation(line: 286, column: 13, scope: !138)
!400 = !DILocation(line: 288, column: 13, scope: !138)
!401 = !DILocation(line: 288, column: 2, scope: !138)
!402 = !DILocation(line: 292, column: 13, scope: !141)
!403 = !DILocation(line: 294, column: 17, scope: !141)
!404 = !DILocation(line: 294, column: 9, scope: !141)
!405 = !DILocation(line: 298, column: 13, scope: !144)
!406 = !DILocation(line: 300, column: 17, scope: !144)
!407 = !DILocation(line: 300, column: 9, scope: !144)
!408 = !DILocation(line: 305, column: 16, scope: !147)
!409 = !DILocation(line: 307, column: 10, scope: !147)
!410 = !DILocation(line: 307, column: 2, scope: !147)
!411 = !DILocation(line: 311, column: 17, scope: !150)
!412 = !DILocation(line: 313, column: 10, scope: !150)
!413 = !DILocation(line: 313, column: 2, scope: !150)
!414 = !DILocation(line: 317, column: 16, scope: !153)
!415 = !DILocation(line: 319, column: 10, scope: !153)
!416 = !DILocation(line: 319, column: 2, scope: !153)
!417 = !DILocation(line: 323, column: 14, scope: !156)
!418 = !DILocation(line: 325, column: 10, scope: !156)
!419 = !DILocation(line: 325, column: 2, scope: !156)
!420 = !DILocation(line: 329, column: 17, scope: !159)
!421 = !DILocation(line: 331, column: 10, scope: !159)
!422 = !DILocation(line: 331, column: 2, scope: !159)
!423 = !DILocation(line: 335, column: 12, scope: !162)
!424 = !DILocation(line: 337, column: 10, scope: !162)
!425 = !DILocation(line: 337, column: 2, scope: !162)
!426 = !DILocation(line: 341, column: 15, scope: !165)
!427 = !DILocation(line: 343, column: 10, scope: !165)
!428 = !DILocation(line: 343, column: 2, scope: !165)
!429 = !DILocation(line: 114, column: 15, scope: !168)
!430 = !DILocation(line: 116, column: 20, scope: !168)
!431 = !DILocation(line: 116, column: 12, scope: !168)
!432 = !DILocation(line: 116, column: 57, scope: !168)
!433 = !DILocation(line: 116, column: 45, scope: !168)
!434 = !DILocation(line: 116, column: 5, scope: !168)
!435 = !DILocation(line: 52, column: 22, scope: !172)
!436 = !DILocation(line: 59, column: 3, scope: !172)
!437 = !DILocation(line: 60, column: 8, scope: !172)
!438 = !DILocation(line: 57, column: 7, scope: !172)
!439 = !DILocation(line: 61, column: 11, scope: !440)
!440 = distinct !DILexicalBlock(scope: !172, file: !1, line: 61, column: 7)
!441 = !DILocation(line: 61, column: 16, scope: !440)
!442 = !DILocation(line: 61, column: 20, scope: !440)
!443 = !DILocation(line: 61, column: 28, scope: !440)
!444 = !DILocation(line: 61, column: 7, scope: !172)
!445 = !DILocation(line: 62, column: 13, scope: !446)
!446 = distinct !DILexicalBlock(scope: !440, file: !1, line: 61, column: 42)
!447 = !DILocation(line: 63, column: 5, scope: !446)
!448 = !DILocation(line: 67, column: 1, scope: !172)
!449 = !DILocation(line: 118, column: 19, scope: !201)
!450 = !DILocation(line: 122, column: 8, scope: !451)
!451 = distinct !DILexicalBlock(scope: !201, file: !1, line: 122, column: 7)
!452 = !DILocation(line: 122, column: 7, scope: !201)
!453 = !DILocation(line: 125, column: 9, scope: !201)
!454 = !DILocation(line: 125, column: 20, scope: !201)
!455 = !DILocation(line: 120, column: 7, scope: !201)
!456 = !DILocation(line: 126, column: 15, scope: !201)
!457 = !DILocation(line: 126, column: 20, scope: !201)
!458 = !DILocation(line: 126, column: 25, scope: !201)
!459 = !DILocation(line: 126, column: 42, scope: !201)
!460 = !DILocation(line: 127, column: 14, scope: !461)
!461 = distinct !DILexicalBlock(scope: !201, file: !1, line: 126, column: 67)
!462 = !DILocation(line: 130, column: 1, scope: !201)
!463 = !DILocation(line: 69, column: 20, scope: !178)
!464 = !DILocation(line: 69, column: 30, scope: !178)
!465 = !DILocation(line: 69, column: 39, scope: !178)
!466 = !DILocation(line: 76, column: 7, scope: !467)
!467 = distinct !DILexicalBlock(scope: !178, file: !1, line: 76, column: 7)
!468 = !DILocation(line: 76, column: 27, scope: !467)
!469 = !DILocation(line: 76, column: 7, scope: !178)
!470 = !DILocation(line: 77, column: 10, scope: !471)
!471 = distinct !DILexicalBlock(scope: !178, file: !1, line: 77, column: 7)
!472 = !DILocation(line: 75, column: 9, scope: !178)
!473 = !DILocation(line: 77, column: 28, scope: !471)
!474 = !DILocation(line: 77, column: 7, scope: !178)
!475 = !DILocation(line: 77, column: 38, scope: !471)
!476 = !DILocation(line: 77, column: 36, scope: !471)
!477 = !DILocation(line: 79, column: 1, scope: !178)
!478 = !DILocation(line: 81, column: 27, scope: !186)
!479 = !DILocation(line: 85, column: 8, scope: !480)
!480 = distinct !DILexicalBlock(scope: !186, file: !1, line: 85, column: 7)
!481 = !DILocation(line: 85, column: 7, scope: !186)
!482 = !DILocation(line: 89, column: 12, scope: !483)
!483 = distinct !DILexicalBlock(scope: !186, file: !1, line: 89, column: 7)
!484 = !DILocation(line: 83, column: 9, scope: !186)
!485 = !DILocation(line: 89, column: 38, scope: !483)
!486 = !DILocation(line: 89, column: 7, scope: !186)
!487 = !DILocation(line: 90, column: 10, scope: !483)
!488 = !DILocation(line: 90, column: 5, scope: !483)
!489 = !DILocation(line: 91, column: 1, scope: !186)
!490 = !DILocation(line: 93, column: 22, scope: !192)
!491 = !DILocation(line: 95, column: 7, scope: !192)
!492 = !DILocation(line: 97, column: 23, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 97, column: 3)
!494 = distinct !DILexicalBlock(scope: !192, file: !1, line: 97, column: 3)
!495 = !DILocation(line: 97, column: 18, scope: !493)
!496 = !DILocation(line: 97, column: 16, scope: !493)
!497 = !DILocation(line: 97, column: 3, scope: !494)
!498 = !DILocation(line: 98, column: 22, scope: !493)
!499 = !DILocation(line: 298, column: 13, scope: !144, inlinedAt: !500)
!500 = distinct !DILocation(line: 98, column: 14, scope: !493)
!501 = !DILocation(line: 300, column: 17, scope: !144, inlinedAt: !500)
!502 = !DILocation(line: 98, column: 14, scope: !493)
!503 = !DILocation(line: 98, column: 12, scope: !493)
!504 = !DILocation(line: 99, column: 1, scope: !192)
!505 = !DILocation(line: 101, column: 19, scope: !196)
!506 = !DILocation(line: 106, column: 8, scope: !507)
!507 = distinct !DILexicalBlock(scope: !196, file: !1, line: 106, column: 7)
!508 = !DILocation(line: 106, column: 7, scope: !196)
!509 = !DILocation(line: 109, column: 8, scope: !196)
!510 = !DILocation(line: 103, column: 9, scope: !196)
!511 = !DILocation(line: 104, column: 7, scope: !196)
!512 = !DILocation(line: 111, column: 3, scope: !196)
!513 = !DILocation(line: 111, column: 11, scope: !196)
!514 = !DILocation(line: 111, column: 25, scope: !196)
!515 = !DILocation(line: 114, column: 3, scope: !196)
!516 = !DILocation(line: 115, column: 3, scope: !196)
!517 = !DILocation(line: 116, column: 1, scope: !196)
!518 = !DILocation(line: 132, column: 18, scope: !205)
!519 = !DILocation(line: 134, column: 3, scope: !205)
!520 = !DILocation(line: 135, column: 3, scope: !205)
!521 = !DILocation(line: 136, column: 1, scope: !205)
!522 = !DILocation(line: 138, column: 25, scope: !208)
!523 = !DILocation(line: 138, column: 35, scope: !208)
!524 = !DILocation(line: 140, column: 11, scope: !208)
!525 = !DILocation(line: 142, column: 11, scope: !208)
!526 = !DILocation(line: 151, column: 11, scope: !208)
!527 = !DILocation(line: 141, column: 10, scope: !208)
!528 = !DILocation(line: 151, column: 9, scope: !208)
!529 = !{!530, !530, i64 0}
!530 = !{!"long", !290, i64 0}
!531 = !DILocation(line: 152, column: 3, scope: !208)
!532 = !DILocation(line: 153, column: 60, scope: !208)
!533 = !DILocation(line: 153, column: 3, scope: !208)
!534 = !DILocation(line: 144, column: 10, scope: !208)
!535 = !DILocation(line: 143, column: 10, scope: !208)
!536 = !DILocation(line: 165, column: 3, scope: !208)
!537 = !DILocation(line: 167, column: 3, scope: !208)
!538 = !DILocation(line: 169, column: 46, scope: !208)
!539 = !DILocation(line: 169, column: 3, scope: !208)
!540 = !DILocation(line: 170, column: 3, scope: !208)
!541 = !DILocation(line: 171, column: 1, scope: !208)
!542 = !DILocation(line: 173, column: 32, scope: !231)
!543 = !DILocation(line: 173, column: 50, scope: !231)
!544 = !DILocation(line: 177, column: 3, scope: !231)
!545 = !DILocation(line: 180, column: 20, scope: !546)
!546 = distinct !DILexicalBlock(scope: !231, file: !1, line: 178, column: 5)
!547 = !DILocation(line: 180, column: 14, scope: !546)
!548 = !DILocation(line: 298, column: 13, scope: !144, inlinedAt: !549)
!549 = distinct !DILocation(line: 180, column: 6, scope: !546)
!550 = !DILocation(line: 300, column: 17, scope: !144, inlinedAt: !549)
!551 = !DILocation(line: 181, column: 15, scope: !546)
!552 = !DILocation(line: 181, column: 25, scope: !546)
!553 = !DILocation(line: 183, column: 20, scope: !546)
!554 = !DILocation(line: 183, column: 14, scope: !546)
!555 = !DILocation(line: 298, column: 13, scope: !144, inlinedAt: !556)
!556 = distinct !DILocation(line: 183, column: 6, scope: !546)
!557 = !DILocation(line: 300, column: 17, scope: !144, inlinedAt: !556)
!558 = !DILocation(line: 184, column: 15, scope: !546)
!559 = !DILocation(line: 184, column: 25, scope: !546)
!560 = !DILocation(line: 185, column: 14, scope: !561)
!561 = distinct !DILexicalBlock(scope: !546, file: !1, line: 185, column: 11)
!562 = !DILocation(line: 185, column: 11, scope: !546)
!563 = !DILocation(line: 185, column: 32, scope: !561)
!564 = !DILocation(line: 185, column: 21, scope: !561)
!565 = !DILocation(line: 180, column: 6, scope: !546)
!566 = !DILocation(line: 186, column: 5, scope: !546)
!567 = !DILocation(line: 189, column: 1, scope: !231)
!568 = !DILocation(line: 191, column: 32, scope: !239)
!569 = !DILocation(line: 191, column: 50, scope: !239)
!570 = !DILocation(line: 195, column: 3, scope: !239)
!571 = !DILocation(line: 197, column: 19, scope: !572)
!572 = distinct !DILexicalBlock(scope: !239, file: !1, line: 196, column: 5)
!573 = !DILocation(line: 298, column: 13, scope: !144, inlinedAt: !574)
!574 = distinct !DILocation(line: 197, column: 11, scope: !572)
!575 = !DILocation(line: 300, column: 17, scope: !144, inlinedAt: !574)
!576 = !DILocation(line: 193, column: 8, scope: !239)
!577 = !DILocation(line: 198, column: 19, scope: !572)
!578 = !DILocation(line: 298, column: 13, scope: !144, inlinedAt: !579)
!579 = distinct !DILocation(line: 198, column: 11, scope: !572)
!580 = !DILocation(line: 300, column: 17, scope: !144, inlinedAt: !579)
!581 = !DILocation(line: 199, column: 11, scope: !582)
!582 = distinct !DILexicalBlock(scope: !572, file: !1, line: 199, column: 11)
!583 = !DILocation(line: 199, column: 16, scope: !582)
!584 = !DILocation(line: 199, column: 14, scope: !582)
!585 = !DILocation(line: 199, column: 11, scope: !572)
!586 = !DILocation(line: 199, column: 32, scope: !582)
!587 = !DILocation(line: 199, column: 21, scope: !582)
!588 = !DILocation(line: 197, column: 11, scope: !572)
!589 = !DILocation(line: 198, column: 25, scope: !572)
!590 = !DILocation(line: 197, column: 25, scope: !572)
!591 = !DILocation(line: 200, column: 5, scope: !572)
!592 = !DILocation(line: 203, column: 1, scope: !239)
!593 = !DILocation(line: 205, column: 33, scope: !245)
!594 = !DILocation(line: 205, column: 51, scope: !245)
!595 = !DILocation(line: 205, column: 61, scope: !245)
!596 = !DILocation(line: 209, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !245, file: !1, line: 209, column: 6)
!598 = !DILocation(line: 209, column: 6, scope: !245)
!599 = !DILocation(line: 214, column: 19, scope: !600)
!600 = distinct !DILexicalBlock(scope: !245, file: !1, line: 213, column: 5)
!601 = !DILocation(line: 298, column: 13, scope: !144, inlinedAt: !602)
!602 = distinct !DILocation(line: 214, column: 11, scope: !600)
!603 = !DILocation(line: 300, column: 17, scope: !144, inlinedAt: !602)
!604 = !DILocation(line: 215, column: 19, scope: !600)
!605 = !DILocation(line: 298, column: 13, scope: !144, inlinedAt: !606)
!606 = distinct !DILocation(line: 215, column: 11, scope: !600)
!607 = !DILocation(line: 300, column: 17, scope: !144, inlinedAt: !606)
!608 = !DILocation(line: 216, column: 11, scope: !609)
!609 = distinct !DILexicalBlock(scope: !600, file: !1, line: 216, column: 11)
!610 = !DILocation(line: 216, column: 16, scope: !609)
!611 = !DILocation(line: 216, column: 14, scope: !609)
!612 = !DILocation(line: 216, column: 11, scope: !600)
!613 = !DILocation(line: 216, column: 32, scope: !609)
!614 = !DILocation(line: 216, column: 21, scope: !609)
!615 = !DILocation(line: 215, column: 25, scope: !600)
!616 = !DILocation(line: 214, column: 25, scope: !600)
!617 = !DILocation(line: 217, column: 8, scope: !600)
!618 = !DILocation(line: 219, column: 10, scope: !245)
!619 = !DILocation(line: 219, column: 14, scope: !245)
!620 = !DILocation(line: 221, column: 1, scope: !245)
!621 = !DILocation(line: 223, column: 30, scope: !254)
!622 = !DILocation(line: 227, column: 3, scope: !254)
!623 = !DILocation(line: 225, column: 9, scope: !254)
!624 = !DILocation(line: 228, column: 3, scope: !254)
!625 = !DILocation(line: 230, column: 3, scope: !254)
!626 = !DILocation(line: 233, column: 24, scope: !260)
!627 = !DILocation(line: 233, column: 32, scope: !260)
!628 = !DILocation(line: 233, column: 48, scope: !260)
!629 = !DILocation(line: 236, column: 23, scope: !260)
!630 = !DILocation(line: 236, column: 32, scope: !260)
!631 = !DILocation(line: 235, column: 9, scope: !260)
!632 = !DILocation(line: 252, column: 9, scope: !260)
!633 = !DILocation(line: 252, column: 20, scope: !260)
!634 = !DILocation(line: 236, column: 17, scope: !260)
!635 = !DILocation(line: 253, column: 3, scope: !260)
!636 = !DILocation(line: 236, column: 9, scope: !260)
!637 = !DILocation(line: 236, column: 12, scope: !260)
!638 = !DILocation(line: 237, column: 8, scope: !260)
!639 = !DILocation(line: 273, column: 13, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !1, line: 273, column: 2)
!641 = distinct !DILexicalBlock(scope: !642, file: !1, line: 273, column: 2)
!642 = distinct !DILexicalBlock(scope: !643, file: !1, line: 268, column: 37)
!643 = distinct !DILexicalBlock(scope: !644, file: !1, line: 268, column: 11)
!644 = distinct !DILexicalBlock(scope: !645, file: !1, line: 260, column: 72)
!645 = distinct !DILexicalBlock(scope: !646, file: !1, line: 260, column: 5)
!646 = distinct !DILexicalBlock(scope: !647, file: !1, line: 260, column: 5)
!647 = distinct !DILexicalBlock(scope: !260, file: !1, line: 257, column: 6)
!648 = !DILocation(line: 289, column: 6, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !1, line: 289, column: 6)
!650 = distinct !DILexicalBlock(scope: !651, file: !1, line: 285, column: 51)
!651 = distinct !DILexicalBlock(scope: !652, file: !1, line: 285, column: 12)
!652 = distinct !DILexicalBlock(scope: !653, file: !1, line: 280, column: 17)
!653 = distinct !DILexicalBlock(scope: !647, file: !1, line: 280, column: 9)
!654 = !DILocation(line: 273, column: 2, scope: !641)
!655 = !DILocation(line: 257, column: 3, scope: !260)
!656 = !DILocation(line: 236, column: 7, scope: !260)
!657 = !DILocation(line: 260, column: 58, scope: !645)
!658 = !DILocation(line: 260, column: 54, scope: !645)
!659 = !DILocation(line: 261, column: 18, scope: !644)
!660 = !DILocation(line: 260, column: 5, scope: !646)
!661 = !DILocation(line: 261, column: 12, scope: !644)
!662 = !DILocation(line: 261, column: 7, scope: !644)
!663 = !DILocation(line: 261, column: 16, scope: !644)
!664 = !DILocation(line: 263, column: 11, scope: !665)
!665 = distinct !DILexicalBlock(scope: !644, file: !1, line: 263, column: 11)
!666 = !DILocation(line: 263, column: 18, scope: !665)
!667 = !DILocation(line: 263, column: 11, scope: !644)
!668 = !DILocation(line: 268, column: 17, scope: !643)
!669 = !DILocation(line: 268, column: 32, scope: !643)
!670 = !DILocation(line: 268, column: 27, scope: !643)
!671 = !DILocation(line: 268, column: 24, scope: !643)
!672 = !DILocation(line: 268, column: 11, scope: !644)
!673 = !DILocation(line: 270, column: 7, scope: !642)
!674 = !DILocation(line: 271, column: 2, scope: !642)
!675 = !DILocation(line: 236, column: 15, scope: !260)
!676 = !DILocation(line: 274, column: 12, scope: !640)
!677 = !DILocation(line: 260, column: 18, scope: !645)
!678 = !DILocation(line: 260, column: 22, scope: !645)
!679 = !DILocation(line: 260, column: 47, scope: !645)
!680 = !DILocation(line: 260, column: 36, scope: !645)
!681 = !DILocation(line: 280, column: 9, scope: !653)
!682 = !DILocation(line: 280, column: 9, scope: !647)
!683 = !DILocation(line: 278, column: 25, scope: !647)
!684 = !DILocation(line: 282, column: 18, scope: !652)
!685 = !DILocation(line: 283, column: 19, scope: !652)
!686 = !DILocation(line: 285, column: 38, scope: !651)
!687 = !DILocation(line: 285, column: 26, scope: !651)
!688 = !DILocation(line: 287, column: 2, scope: !650)
!689 = !DILocation(line: 287, column: 14, scope: !650)
!690 = !DILocation(line: 289, column: 6, scope: !650)
!691 = !DILocation(line: 290, column: 8, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !1, line: 290, column: 8)
!693 = distinct !DILexicalBlock(scope: !649, file: !1, line: 289, column: 14)
!694 = !DILocation(line: 290, column: 8, scope: !693)
!695 = !DILocation(line: 294, column: 9, scope: !693)
!696 = !DILocation(line: 295, column: 4, scope: !693)
!697 = !DILocation(line: 296, column: 4, scope: !698)
!698 = distinct !DILexicalBlock(scope: !693, file: !1, line: 296, column: 4)
!699 = !DILocation(line: 297, column: 14, scope: !700)
!700 = distinct !DILexicalBlock(scope: !698, file: !1, line: 296, column: 4)
!701 = !DILocation(line: 299, column: 10, scope: !693)
!702 = !DILocation(line: 299, column: 17, scope: !693)
!703 = !DILocation(line: 299, column: 4, scope: !693)
!704 = !DILocation(line: 304, column: 12, scope: !260)
!705 = !DILocation(line: 304, column: 3, scope: !647)
!706 = !DILocation(line: 305, column: 3, scope: !260)
!707 = !DILocation(line: 305, column: 10, scope: !260)
!708 = !DILocation(line: 307, column: 3, scope: !260)
