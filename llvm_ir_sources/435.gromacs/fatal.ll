; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/fatal.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@_DefaultRuneLocale = external global %struct._RuneLocale
@bDebug = internal unnamed_addr global i1 false
@_where.bFirst = internal unnamed_addr global i1 false
@stdlog = external global %struct.__sFILE*
@__stderrp = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [39 x i8] c"\0AHALT in file %s line %d because:\0A\09%s\0A\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@debug = global %struct.__sFILE* null, align 8
@.str3 = private unnamed_addr constant [17 x i8] c"dump core (y/n):\00", align 1
@__stdinp = external global %struct.__sFILE*
@fatal_tmp_file = internal unnamed_addr global i8* null, align 8
@.str4 = private unnamed_addr constant [48 x i8] c"BUGWARNING: fatal_tmp_file already set at %s:%d\00", align 1
@.str5 = private unnamed_addr constant [15 x i8] c"fatal_tmp_file\00", align 1
@.str6 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/fatal.c\00", align 1
@.str7 = private unnamed_addr constant [55 x i8] c"BUGWARNING: file %s not set as fatal_tmp_file at %s:%d\00", align 1
@.str8 = private unnamed_addr constant [31 x i8] c"Cleaning up temporary file %s\0A\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"Fatal error: \00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"0x%%%dx\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"%%%dd\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"%%%df\00", align 1
@maxwarn = internal unnamed_addr global i32 10, align 4
@nwarn = internal unnamed_addr global i32 0, align 4
@filenm = internal global [256 x i8] zeroinitializer, align 16
@lineno = internal unnamed_addr global i32 1, align 4
@warn_buf = common global [1024 x i8] zeroinitializer, align 16
@.str13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str16 = private unnamed_addr constant [35 x i8] c"WARNING %d [file %s, line %s]:\0A%s\0A\00", align 1
@.str17 = private unnamed_addr constant [6 x i8] c"temp2\00", align 1
@.str18 = private unnamed_addr constant [33 x i8] c"Too many warnings, %s terminated\00", align 1
@.str19 = private unnamed_addr constant [23 x i8] c"There %s %d warning%s\0A\00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c"was\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"were\00", align 1
@.str22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str23 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str24 = private unnamed_addr constant [53 x i8] c"Too few parameters on line (source file %s, line %d)\00", align 1
@.str25 = private unnamed_addr constant [51 x i8] c"Invalid case in switch statement, file %s, line %d\00", align 1
@.str26 = private unnamed_addr constant [71 x i8] c"Unexpected end of file in file %s at line %d\0A(Source file %s, line %d)\00", align 1
@.str27 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !74, metadata !336), !dbg !337
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !75, metadata !336), !dbg !338
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !339
  %2 = load i32* %1, align 4, !dbg !341, !tbaa !342
  %3 = add nsw i32 %2, -1, !dbg !341
  store i32 %3, i32* %1, align 4, !dbg !341, !tbaa !342
  %4 = icmp sgt i32 %2, 0, !dbg !351
  br i1 %4, label %._crit_edge, label %5, !dbg !352

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !353
  br label %10, !dbg !352

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !354
  %7 = load i32* %6, align 4, !dbg !354, !tbaa !355
  %8 = icmp sle i32 %2, %7, !dbg !356
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !357
  %or.cond = or i1 %9, %8, !dbg !358
  br i1 %or.cond, label %15, label %10, !dbg !358

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !353
  %11 = trunc i32 %_c to i8, !dbg !359
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !360
  %13 = load i8** %12, align 8, !dbg !361, !tbaa !362
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !361
  store i8* %14, i8** %12, align 8, !dbg !361, !tbaa !362
  store i8 %11, i8* %13, align 1, !dbg !363, !tbaa !364
  br label %17, !dbg !365

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #12, !dbg !366
  br label %17, !dbg !367

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !368
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !81, metadata !336), !dbg !369
  %1 = icmp sgt i32 %__signo, 32, !dbg !370
  br i1 %1, label %5, label %2, !dbg !371

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !372
  %4 = shl i32 1, %3, !dbg !373
  br label %5, !dbg !371

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !371
  ret i32 %6, !dbg !374
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @isascii(i32 %_c) #4 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !85, metadata !336), !dbg !375
  %1 = icmp ult i32 %_c, 128, !dbg !376
  %2 = zext i1 %1 to i32, !dbg !376
  ret i32 %2, !dbg !377
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @__istype(i32 %_c, i64 %_f) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !92, metadata !336), !dbg !378
  tail call void @llvm.dbg.value(metadata i64 %_f, i64 0, metadata !93, metadata !336), !dbg !379
  %isascii = icmp ult i32 %_c, 128, !dbg !380
  br i1 %isascii, label %1, label %8, !dbg !380

; <label>:1                                       ; preds = %0
  %2 = sext i32 %_c to i64, !dbg !381
  %3 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %2, !dbg !381
  %4 = load i32* %3, align 4, !dbg !381, !tbaa !382
  %5 = zext i32 %4 to i64, !dbg !381
  %6 = and i64 %5, %_f, !dbg !383
  %7 = icmp ne i64 %6, 0, !dbg !384
  br label %11, !dbg !380

; <label>:8                                       ; preds = %0
  %9 = tail call i32 @__maskrune(i32 %_c, i64 %_f) #12, !dbg !385
  %10 = icmp ne i32 %9, 0, !dbg !386
  br label %11, !dbg !380

; <label>:11                                      ; preds = %8, %1
  %.sink = phi i1 [ %7, %1 ], [ %10, %8 ]
  %12 = zext i1 %.sink to i32, !dbg !387
  ret i32 %12, !dbg !388
}

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @__isctype(i32 %_c, i64 %_f) #6 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !98, metadata !336), !dbg !389
  tail call void @llvm.dbg.value(metadata i64 %_f, i64 0, metadata !99, metadata !336), !dbg !390
  %1 = icmp ugt i32 %_c, 255, !dbg !391
  br i1 %1, label %10, label %2, !dbg !391

; <label>:2                                       ; preds = %0
  %3 = sext i32 %_c to i64, !dbg !392
  %4 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %3, !dbg !392
  %5 = load i32* %4, align 4, !dbg !392, !tbaa !382
  %6 = zext i32 %5 to i64, !dbg !392
  %7 = and i64 %6, %_f, !dbg !393
  %8 = icmp ne i64 %7, 0, !dbg !394
  %9 = zext i1 %8 to i32, !dbg !395
  br label %10, !dbg !396

; <label>:10                                      ; preds = %0, %2
  %11 = phi i32 [ %9, %2 ], [ 0, %0 ], !dbg !396
  ret i32 %11, !dbg !397
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @__wcwidth(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !104, metadata !336), !dbg !398
  %1 = icmp eq i32 %_c, 0, !dbg !399
  br i1 %1, label %11, label %2, !dbg !401

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @__maskrune(i32 %_c, i64 3758358528) #12, !dbg !402
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !105, metadata !336), !dbg !403
  %4 = icmp ult i32 %3, 536870912, !dbg !404
  br i1 %4, label %7, label %5, !dbg !406

; <label>:5                                       ; preds = %2
  %6 = lshr i32 %3, 30, !dbg !407
  br label %11, !dbg !408

; <label>:7                                       ; preds = %2
  %8 = lshr i32 %3, 17, !dbg !409
  %9 = and i32 %8, 2, !dbg !409
  %10 = add nsw i32 %9, -1, !dbg !409
  br label %11, !dbg !410

; <label>:11                                      ; preds = %0, %7, %5
  %.0 = phi i32 [ %6, %5 ], [ %10, %7 ], [ 0, %0 ]
  ret i32 %.0, !dbg !411
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isalnum(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !108, metadata !336), !dbg !412
  %1 = tail call i32 @__istype(i32 %_c, i64 1280) #13, !dbg !413
  ret i32 %1, !dbg !414
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isalpha(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !111, metadata !336), !dbg !415
  %1 = tail call i32 @__istype(i32 %_c, i64 256) #13, !dbg !416
  ret i32 %1, !dbg !417
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isblank(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !114, metadata !336), !dbg !418
  %1 = tail call i32 @__istype(i32 %_c, i64 131072) #13, !dbg !419
  ret i32 %1, !dbg !420
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @iscntrl(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !117, metadata !336), !dbg !421
  %1 = tail call i32 @__istype(i32 %_c, i64 512) #13, !dbg !422
  ret i32 %1, !dbg !423
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @isdigit(i32 %_c) #6 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !120, metadata !336), !dbg !424
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !98, metadata !336), !dbg !425
  tail call void @llvm.dbg.value(metadata i64 1024, i64 0, metadata !99, metadata !336), !dbg !427
  %1 = icmp ugt i32 %_c, 255, !dbg !428
  br i1 %1, label %__isctype.exit, label %2, !dbg !428

; <label>:2                                       ; preds = %0
  %3 = sext i32 %_c to i64, !dbg !429
  %4 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %3, !dbg !429
  %5 = load i32* %4, align 4, !dbg !429, !tbaa !382
  %6 = lshr i32 %5, 10, !dbg !430
  %.lobit = and i32 %6, 1, !dbg !430
  br label %__isctype.exit, !dbg !431

__isctype.exit:                                   ; preds = %0, %2
  %7 = phi i32 [ %.lobit, %2 ], [ 0, %0 ], !dbg !431
  ret i32 %7, !dbg !432
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isgraph(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !123, metadata !336), !dbg !433
  %1 = tail call i32 @__istype(i32 %_c, i64 2048) #13, !dbg !434
  ret i32 %1, !dbg !435
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @islower(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !126, metadata !336), !dbg !436
  %1 = tail call i32 @__istype(i32 %_c, i64 4096) #13, !dbg !437
  ret i32 %1, !dbg !438
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isprint(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !129, metadata !336), !dbg !439
  %1 = tail call i32 @__istype(i32 %_c, i64 262144) #13, !dbg !440
  ret i32 %1, !dbg !441
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ispunct(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !132, metadata !336), !dbg !442
  %1 = tail call i32 @__istype(i32 %_c, i64 8192) #13, !dbg !443
  ret i32 %1, !dbg !444
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isspace(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !135, metadata !336), !dbg !445
  %1 = tail call i32 @__istype(i32 %_c, i64 16384) #13, !dbg !446
  ret i32 %1, !dbg !447
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isupper(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !138, metadata !336), !dbg !448
  %1 = tail call i32 @__istype(i32 %_c, i64 32768) #13, !dbg !449
  ret i32 %1, !dbg !450
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @isxdigit(i32 %_c) #6 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !141, metadata !336), !dbg !451
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !98, metadata !336), !dbg !452
  tail call void @llvm.dbg.value(metadata i64 65536, i64 0, metadata !99, metadata !336), !dbg !454
  %1 = icmp ugt i32 %_c, 255, !dbg !455
  br i1 %1, label %__isctype.exit, label %2, !dbg !455

; <label>:2                                       ; preds = %0
  %3 = sext i32 %_c to i64, !dbg !456
  %4 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %3, !dbg !456
  %5 = load i32* %4, align 4, !dbg !456, !tbaa !382
  %6 = lshr i32 %5, 16, !dbg !457
  %.lobit = and i32 %6, 1, !dbg !457
  br label %__isctype.exit, !dbg !458

__isctype.exit:                                   ; preds = %0, %2
  %7 = phi i32 [ %.lobit, %2 ], [ 0, %0 ], !dbg !458
  ret i32 %7, !dbg !459
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @toascii(i32 %_c) #4 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !144, metadata !336), !dbg !460
  %1 = and i32 %_c, 127, !dbg !461
  ret i32 %1, !dbg !462
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @tolower(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !147, metadata !336), !dbg !463
  %1 = tail call i32 @__tolower(i32 %_c) #12, !dbg !464
  ret i32 %1, !dbg !465
}

; Function Attrs: optsize
declare i32 @__tolower(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @toupper(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !150, metadata !336), !dbg !466
  %1 = tail call i32 @__toupper(i32 %_c) #12, !dbg !467
  ret i32 %1, !dbg !468
}

; Function Attrs: optsize
declare i32 @__toupper(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @digittoint(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !153, metadata !336), !dbg !469
  %1 = tail call i32 @__maskrune(i32 %_c, i64 15) #12, !dbg !470
  ret i32 %1, !dbg !471
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ishexnumber(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !156, metadata !336), !dbg !472
  %1 = tail call i32 @__istype(i32 %_c, i64 65536) #13, !dbg !473
  ret i32 %1, !dbg !474
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isideogram(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !159, metadata !336), !dbg !475
  %1 = tail call i32 @__istype(i32 %_c, i64 524288) #13, !dbg !476
  ret i32 %1, !dbg !477
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isnumber(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !162, metadata !336), !dbg !478
  %1 = tail call i32 @__istype(i32 %_c, i64 1024) #13, !dbg !479
  ret i32 %1, !dbg !480
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isphonogram(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !165, metadata !336), !dbg !481
  %1 = tail call i32 @__istype(i32 %_c, i64 2097152) #13, !dbg !482
  ret i32 %1, !dbg !483
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isrune(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !168, metadata !336), !dbg !484
  %1 = tail call i32 @__istype(i32 %_c, i64 4294967280) #13, !dbg !485
  ret i32 %1, !dbg !486
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isspecial(i32 %_c) #5 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !171, metadata !336), !dbg !487
  %1 = tail call i32 @__istype(i32 %_c, i64 1048576) #13, !dbg !488
  ret i32 %1, !dbg !489
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @bDebugMode() #6 {
  %.b = load i1* @bDebug, align 1
  %1 = zext i1 %.b to i32
  ret i32 %1, !dbg !490
}

; Function Attrs: nounwind optsize ssp uwtable
define void @_where(i8* nocapture readnone %file, i32 %line) #5 {
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !179, metadata !336), !dbg !491
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !180, metadata !336), !dbg !492
  %.b = load i1* @_where.bFirst, align 1
  br i1 %.b, label %2, label %1, !dbg !493

; <label>:1                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !182, metadata !336), !dbg !494
  store i1 true, i1* @_where.bFirst, align 1
  br label %2, !dbg !495

; <label>:2                                       ; preds = %1, %0
  ret void, !dbg !498
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @_halt(i8* %file, i32 %line, i8* %reason) #8 {
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !187, metadata !336), !dbg !499
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !188, metadata !336), !dbg !500
  tail call void @llvm.dbg.value(metadata i8* %reason, i64 0, metadata !189, metadata !336), !dbg !501
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !502, !tbaa !503
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([39 x i8]* @.str1, i64 0, i64 0), i8* %file, i32 %line, i8* %reason) #12, !dbg !504
  tail call void @exit(i32 1) #14, !dbg !505
  unreachable, !dbg !505
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #9

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @quit_gmx(i32 %fatal_errno, i8* %msg) #8 {
  tail call void @llvm.dbg.value(metadata i32 %fatal_errno, i64 0, metadata !194, metadata !336), !dbg !506
  tail call void @llvm.dbg.value(metadata i8* %msg, i64 0, metadata !195, metadata !336), !dbg !507
  switch i32 %fatal_errno, label %9 [
    i32 0, label %1
    i32 -1, label %11
  ], !dbg !508

; <label>:1                                       ; preds = %0
  %2 = load %struct.__sFILE** @stdlog, align 8, !dbg !509, !tbaa !503
  %3 = icmp eq %struct.__sFILE* %2, null, !dbg !509
  br i1 %3, label %6, label %4, !dbg !513

; <label>:4                                       ; preds = %1
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* %msg) #12, !dbg !514
  br label %6, !dbg !514

; <label>:6                                       ; preds = %1, %4
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !515, !tbaa !503
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* %msg) #12, !dbg !516
  br label %12, !dbg !517

; <label>:9                                       ; preds = %0
  %10 = tail call i32* @__error() #12, !dbg !518
  store i32 %fatal_errno, i32* %10, align 4, !dbg !521, !tbaa !382
  br label %11, !dbg !518

; <label>:11                                      ; preds = %0, %9
  tail call void @perror(i8* %msg) #15, !dbg !522
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = load %struct.__sFILE** @debug, align 8, !dbg !523, !tbaa !503
  %14 = icmp eq %struct.__sFILE* %13, null, !dbg !523
  br i1 %14, label %17, label %15, !dbg !525

; <label>:15                                      ; preds = %12
  %16 = tail call i32 @fflush(%struct.__sFILE* %13) #12, !dbg !526
  br label %17, !dbg !526

; <label>:17                                      ; preds = %12, %15
  %.b = load i1* @bDebug, align 1
  br i1 %.b, label %18, label %28, !dbg !527

; <label>:18                                      ; preds = %17
  %19 = load %struct.__sFILE** @__stderrp, align 8, !dbg !528, !tbaa !503
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0), i64 16, i64 1, %struct.__sFILE* %19), !dbg !531
  %21 = load %struct.__sFILE** @__stderrp, align 8, !dbg !532, !tbaa !503
  %22 = tail call i32 @fflush(%struct.__sFILE* %21) #12, !dbg !533
  %23 = load %struct.__sFILE** @__stdinp, align 8, !dbg !534, !tbaa !503
  %24 = tail call i32 @getc(%struct.__sFILE* %23) #12, !dbg !536
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !150, metadata !336) #11, !dbg !537
  %25 = tail call i32 @__toupper(i32 %24) #12, !dbg !539
  %26 = icmp eq i32 %25, 78, !dbg !540
  br i1 %26, label %28, label %27, !dbg !541

; <label>:27                                      ; preds = %18
  tail call void @abort() #14, !dbg !542
  unreachable, !dbg !542

; <label>:28                                      ; preds = %18, %17
  tail call void @exit(i32 -1) #14, !dbg !543
  unreachable, !dbg !543
}

; Function Attrs: optsize
declare i32* @__error() #2

; Function Attrs: nounwind optsize
declare void @perror(i8* nocapture readonly) #7

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #7

; Function Attrs: nounwind optsize
declare i32 @getc(%struct.__sFILE* nocapture) #7

; Function Attrs: noreturn optsize
declare void @abort() #9

; Function Attrs: nounwind optsize ssp uwtable
define void @_set_fatal_tmp_file(i8* nocapture readonly %fn, i8* %file, i32 %line) #5 {
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !200, metadata !336), !dbg !544
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !201, metadata !336), !dbg !545
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !202, metadata !336), !dbg !546
  %1 = load i8** @fatal_tmp_file, align 8, !dbg !547, !tbaa !503
  %2 = icmp eq i8* %1, null, !dbg !549
  br i1 %2, label %3, label %5, !dbg !550

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @strdup(i8* %fn) #12, !dbg !551
  store i8* %4, i8** @fatal_tmp_file, align 8, !dbg !552, !tbaa !503
  br label %8, !dbg !553

; <label>:5                                       ; preds = %0
  %6 = load %struct.__sFILE** @__stderrp, align 8, !dbg !554, !tbaa !503
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), i8* %file, i32 %line) #12, !dbg !555
  br label %8

; <label>:8                                       ; preds = %5, %3
  ret void, !dbg !556
}

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #7

; Function Attrs: nounwind optsize ssp uwtable
define void @_unset_fatal_tmp_file(i8* %fn, i8* %file, i32 %line) #5 {
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !205, metadata !336), !dbg !557
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !206, metadata !336), !dbg !558
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !207, metadata !336), !dbg !559
  %1 = load i8** @fatal_tmp_file, align 8, !dbg !560, !tbaa !503
  %2 = tail call i32 @strcmp(i8* %fn, i8* %1) #12, !dbg !562
  %3 = icmp eq i32 %2, 0, !dbg !563
  br i1 %3, label %4, label %5, !dbg !564

; <label>:4                                       ; preds = %0
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str6, i64 0, i64 0), i32 193, i8* %1) #12, !dbg !565
  store i8* null, i8** @fatal_tmp_file, align 8, !dbg !567, !tbaa !503
  br label %8, !dbg !568

; <label>:5                                       ; preds = %0
  %6 = load %struct.__sFILE** @__stderrp, align 8, !dbg !569, !tbaa !503
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i8* %fn, i8* %file, i32 %line) #12, !dbg !570
  br label %8

; <label>:8                                       ; preds = %5, %4
  ret void, !dbg !571
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #10

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @fatal_error(i32 %fatal_errno, i8* %fmt, ...) #8 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %msg = alloca [4096 x i8], align 16
  %ibuf = alloca [64 x i8], align 16
  %ifmt = alloca [64 x i8], align 16
  %len = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %fatal_errno, i64 0, metadata !212, metadata !336), !dbg !572
  tail call void @llvm.dbg.value(metadata i8* %fmt, i64 0, metadata !213, metadata !336), !dbg !573
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !214, metadata !336), !dbg !574
  %1 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 0, !dbg !575
  call void @llvm.lifetime.start(i64 4096, i8* %1) #11, !dbg !575
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %msg, metadata !229, metadata !336), !dbg !576
  %2 = getelementptr inbounds [64 x i8]* %ibuf, i64 0, i64 0, !dbg !577
  call void @llvm.lifetime.start(i64 64, i8* %2) #11, !dbg !577
  tail call void @llvm.dbg.declare(metadata [64 x i8]* %ibuf, metadata !233, metadata !336), !dbg !578
  %3 = getelementptr inbounds [64 x i8]* %ifmt, i64 0, i64 0, !dbg !577
  call void @llvm.lifetime.start(i64 64, i8* %3) #11, !dbg !577
  tail call void @llvm.dbg.declare(metadata [64 x i8]* %ifmt, metadata !237, metadata !336), !dbg !579
  %4 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !580
  call void @llvm.va_start(i8* %4), !dbg !580
  %5 = load i8** @fatal_tmp_file, align 8, !dbg !581, !tbaa !503
  %6 = icmp eq i8* %5, null, !dbg !581
  br i1 %6, label %13, label %7, !dbg !583

; <label>:7                                       ; preds = %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !584, !tbaa !503
  %9 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([31 x i8]* @.str8, i64 0, i64 0), i8* %5) #12, !dbg !586
  %10 = load i8** @fatal_tmp_file, align 8, !dbg !587, !tbaa !503
  %11 = call i32 @remove(i8* %10) #12, !dbg !588
  %12 = load i8** @fatal_tmp_file, align 8, !dbg !589, !tbaa !503
  call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str6, i64 0, i64 0), i32 221, i8* %12) #12, !dbg !589
  store i8* null, i8** @fatal_tmp_file, align 8, !dbg !590, !tbaa !503
  br label %13, !dbg !591

; <label>:13                                      ; preds = %0, %7
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !241, metadata !336), !dbg !592
  store i32 0, i32* %len, align 4, !dbg !593, !tbaa !382
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !241, metadata !336), !dbg !592
  call fastcc void @bputs(i8* %1, i32* %len, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i32 0) #13, !dbg !594
  call void @llvm.dbg.value(metadata i8* %fmt, i64 0, metadata !226, metadata !336), !dbg !595
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !596
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !596
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !596
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 1, !dbg !603
  br label %18, !dbg !604

; <label>:18                                      ; preds = %.loopexit, %13
  %storemerge = phi i8* [ %fmt, %13 ], [ %160, %.loopexit ]
  call void @llvm.dbg.value(metadata i8* %storemerge, i64 0, metadata !312, metadata !336), !dbg !605
  call void @llvm.dbg.value(metadata i8* %storemerge, i64 0, metadata !226, metadata !336), !dbg !595
  call void @llvm.dbg.value(metadata i8* %storemerge, i64 0, metadata !226, metadata !336), !dbg !595
  call void @llvm.dbg.value(metadata i8* %storemerge, i64 0, metadata !226, metadata !336), !dbg !595
  call void @llvm.dbg.value(metadata i8* %storemerge, i64 0, metadata !226, metadata !336), !dbg !595
  %19 = load i8* %storemerge, align 1, !dbg !607, !tbaa !364
  switch i8 %19, label %20 [
    i8 0, label %161
    i8 37, label %25
  ], !dbg !608

; <label>:20                                      ; preds = %18
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !241, metadata !336), !dbg !592
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !304, metadata !336), !dbg !609
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !305, metadata !336), !dbg !611
  tail call void @llvm.dbg.value(metadata i8 %19, i64 0, metadata !306, metadata !336), !dbg !612
  %21 = load i32* %len, align 4, !dbg !613, !tbaa !382
  %22 = add nsw i32 %21, 1, !dbg !613
  store i32 %22, i32* %len, align 4, !dbg !613, !tbaa !382
  %23 = sext i32 %21 to i64, !dbg !614
  %24 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %23, !dbg !614
  store i8 %19, i8* %24, align 1, !dbg !615, !tbaa !364
  br label %.loopexit, !dbg !616

; <label>:25                                      ; preds = %18
  %26 = getelementptr inbounds i8* %storemerge, i64 1, !dbg !617
  call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !226, metadata !336), !dbg !595
  call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !312, metadata !336), !dbg !605
  call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !226, metadata !336), !dbg !595
  call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !226, metadata !336), !dbg !595
  call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !226, metadata !336), !dbg !595
  call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !226, metadata !336), !dbg !595
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !313, metadata !336), !dbg !618
  %27 = load i8* %26, align 1, !dbg !619, !tbaa !364
  %28 = sext i8 %27 to i32, !dbg !619
  %isdigittmp1.i = add nsw i32 %28, -48, !dbg !620
  %isdigit2.i = icmp ult i32 %isdigittmp1.i, 10, !dbg !620
  br i1 %isdigit2.i, label %.lr.ph.i, label %getfld.exit, !dbg !621

.lr.ph.i:                                         ; preds = %25, %.lr.ph.i
  %29 = phi i8 [ %37, %.lr.ph.i ], [ %27, %25 ], !dbg !622
  %30 = phi i8* [ %31, %.lr.ph.i ], [ %storemerge, %25 ], !dbg !623
  %31 = phi i8* [ %33, %.lr.ph.i ], [ %26, %25 ], !dbg !623
  %fld.03.i = phi i32 [ %36, %.lr.ph.i ], [ 0, %25 ], !dbg !623
  %32 = mul nsw i32 %fld.03.i, 10, !dbg !622
  %33 = getelementptr inbounds i8* %30, i64 2, !dbg !624
  call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !312, metadata !336), !dbg !605
  call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !226, metadata !336), !dbg !595
  call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !226, metadata !336), !dbg !595
  call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !226, metadata !336), !dbg !595
  call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !226, metadata !336), !dbg !595
  %34 = sext i8 %29 to i32, !dbg !625
  %35 = add i32 %32, -48, !dbg !626
  %36 = add i32 %35, %34, !dbg !627
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !313, metadata !336), !dbg !618
  %37 = load i8* %33, align 1, !dbg !619, !tbaa !364
  %38 = sext i8 %37 to i32, !dbg !619
  %isdigittmp.i = add nsw i32 %38, -48, !dbg !620
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10, !dbg !620
  br i1 %isdigit.i, label %.lr.ph.i, label %getfld.exit, !dbg !621

getfld.exit:                                      ; preds = %.lr.ph.i, %25
  %39 = phi i8 [ %27, %25 ], [ %37, %.lr.ph.i ]
  %40 = phi i8* [ %26, %25 ], [ %33, %.lr.ph.i ]
  %fld.0.lcssa.i = phi i32 [ 0, %25 ], [ %36, %.lr.ph.i ], !dbg !623
  call void @llvm.dbg.value(metadata i32 %fld.0.lcssa.i, i64 0, metadata !240, metadata !336), !dbg !628
  %41 = sext i8 %39 to i32, !dbg !629
  switch i32 %41, label %.loopexit [
    i32 120, label %42
    i32 100, label %69
    i32 102, label %96
    i32 99, label %123
    i32 115, label %142
  ], !dbg !630

; <label>:42                                      ; preds = %getfld.exit
  %43 = load i32* %14, align 16, !dbg !596
  %44 = icmp ult i32 %43, 41, !dbg !596
  br i1 %44, label %45, label %50, !dbg !596

; <label>:45                                      ; preds = %42
  %46 = load i8** %15, align 16, !dbg !596
  %47 = sext i32 %43 to i64, !dbg !596
  %48 = getelementptr i8* %46, i64 %47, !dbg !596
  %49 = add i32 %43, 8, !dbg !596
  store i32 %49, i32* %14, align 16, !dbg !596
  br label %53, !dbg !596

; <label>:50                                      ; preds = %42
  %51 = load i8** %16, align 8, !dbg !596
  %52 = getelementptr i8* %51, i64 8, !dbg !596
  store i8* %52, i8** %16, align 8, !dbg !596
  br label %53, !dbg !596

; <label>:53                                      ; preds = %50, %45
  %.in4 = phi i8* [ %48, %45 ], [ %51, %50 ]
  %54 = bitcast i8* %.in4 to i32*, !dbg !596
  %55 = load i32* %54, align 4, !dbg !596
  call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !239, metadata !336), !dbg !631
  %56 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %3, i32 0, i64 64, i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0), i32 %fld.0.lcssa.i) #12, !dbg !632
  %57 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 64, i8* %3, i32 %55) #12, !dbg !633
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !238, metadata !336), !dbg !634
  %58 = call i64 @strlen(i8* %2) #12, !dbg !635
  %59 = trunc i64 %58 to i32, !dbg !638
  %60 = icmp sgt i32 %59, 0, !dbg !639
  br i1 %60, label %.lr.ph15, label %.loopexit, !dbg !640

.lr.ph15:                                         ; preds = %53
  %len.promoted16 = load i32* %len, align 4, !dbg !641, !tbaa !382
  %61 = sext i32 %len.promoted16 to i64
  br label %62, !dbg !640

; <label>:62                                      ; preds = %.lr.ph15, %62
  %indvars.iv30 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next31, %62 ]
  %indvars.iv28 = phi i64 [ %61, %.lr.ph15 ], [ %indvars.iv.next29, %62 ]
  %63 = getelementptr inbounds [64 x i8]* %ibuf, i64 0, i64 %indvars.iv30, !dbg !643
  %64 = load i8* %63, align 1, !dbg !643, !tbaa !364
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !241, metadata !336), !dbg !592
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !304, metadata !336), !dbg !644
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !305, metadata !336), !dbg !645
  tail call void @llvm.dbg.value(metadata i8 %64, i64 0, metadata !306, metadata !336), !dbg !646
  %indvars.iv.next29 = add i64 %indvars.iv28, 1, !dbg !640
  %65 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %indvars.iv28, !dbg !647
  store i8 %64, i8* %65, align 1, !dbg !648, !tbaa !364
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1, !dbg !640
  %66 = call i64 @strlen(i8* %2) #12, !dbg !635
  %sext33 = shl i64 %66, 32, !dbg !639
  %67 = ashr exact i64 %sext33, 32, !dbg !639
  %68 = icmp slt i64 %indvars.iv.next31, %67, !dbg !639
  br i1 %68, label %62, label %..loopexit_crit_edge, !dbg !640

; <label>:69                                      ; preds = %getfld.exit
  %70 = load i32* %14, align 16, !dbg !649
  %71 = icmp ult i32 %70, 41, !dbg !649
  br i1 %71, label %72, label %77, !dbg !649

; <label>:72                                      ; preds = %69
  %73 = load i8** %15, align 16, !dbg !649
  %74 = sext i32 %70 to i64, !dbg !649
  %75 = getelementptr i8* %73, i64 %74, !dbg !649
  %76 = add i32 %70, 8, !dbg !649
  store i32 %76, i32* %14, align 16, !dbg !649
  br label %80, !dbg !649

; <label>:77                                      ; preds = %69
  %78 = load i8** %16, align 8, !dbg !649
  %79 = getelementptr i8* %78, i64 8, !dbg !649
  store i8* %79, i8** %16, align 8, !dbg !649
  br label %80, !dbg !649

; <label>:80                                      ; preds = %77, %72
  %.in3 = phi i8* [ %75, %72 ], [ %78, %77 ]
  %81 = bitcast i8* %.in3 to i32*, !dbg !649
  %82 = load i32* %81, align 4, !dbg !649
  call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !239, metadata !336), !dbg !631
  %83 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %3, i32 0, i64 64, i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0), i32 %fld.0.lcssa.i) #12, !dbg !650
  %84 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 64, i8* %3, i32 %82) #12, !dbg !651
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !238, metadata !336), !dbg !634
  %85 = call i64 @strlen(i8* %2) #12, !dbg !652
  %86 = trunc i64 %85 to i32, !dbg !655
  %87 = icmp sgt i32 %86, 0, !dbg !656
  br i1 %87, label %.lr.ph11, label %.loopexit, !dbg !657

.lr.ph11:                                         ; preds = %80
  %len.promoted12 = load i32* %len, align 4, !dbg !658, !tbaa !382
  %88 = sext i32 %len.promoted12 to i64
  br label %89, !dbg !657

; <label>:89                                      ; preds = %.lr.ph11, %89
  %indvars.iv26 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next27, %89 ]
  %indvars.iv24 = phi i64 [ %88, %.lr.ph11 ], [ %indvars.iv.next25, %89 ]
  %90 = getelementptr inbounds [64 x i8]* %ibuf, i64 0, i64 %indvars.iv26, !dbg !660
  %91 = load i8* %90, align 1, !dbg !660, !tbaa !364
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !241, metadata !336), !dbg !592
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !304, metadata !336), !dbg !661
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !305, metadata !336), !dbg !662
  tail call void @llvm.dbg.value(metadata i8 %91, i64 0, metadata !306, metadata !336), !dbg !663
  %indvars.iv.next25 = add i64 %indvars.iv24, 1, !dbg !657
  %92 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %indvars.iv24, !dbg !664
  store i8 %91, i8* %92, align 1, !dbg !665, !tbaa !364
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1, !dbg !657
  %93 = call i64 @strlen(i8* %2) #12, !dbg !652
  %sext32 = shl i64 %93, 32, !dbg !656
  %94 = ashr exact i64 %sext32, 32, !dbg !656
  %95 = icmp slt i64 %indvars.iv.next27, %94, !dbg !656
  br i1 %95, label %89, label %..loopexit5_crit_edge, !dbg !657

; <label>:96                                      ; preds = %getfld.exit
  %97 = load i32* %17, align 4, !dbg !603
  %98 = icmp ult i32 %97, 161, !dbg !603
  br i1 %98, label %99, label %104, !dbg !603

; <label>:99                                      ; preds = %96
  %100 = load i8** %15, align 16, !dbg !603
  %101 = sext i32 %97 to i64, !dbg !603
  %102 = getelementptr i8* %100, i64 %101, !dbg !603
  %103 = add i32 %97, 16, !dbg !603
  store i32 %103, i32* %17, align 4, !dbg !603
  br label %107, !dbg !603

; <label>:104                                     ; preds = %96
  %105 = load i8** %16, align 8, !dbg !603
  %106 = getelementptr i8* %105, i64 8, !dbg !603
  store i8* %106, i8** %16, align 8, !dbg !603
  br label %107, !dbg !603

; <label>:107                                     ; preds = %104, %99
  %.in2 = phi i8* [ %102, %99 ], [ %105, %104 ]
  %108 = bitcast i8* %.in2 to double*, !dbg !603
  %109 = load double* %108, align 8, !dbg !603
  call void @llvm.dbg.value(metadata double %109, i64 0, metadata !242, metadata !336), !dbg !666
  %110 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %3, i32 0, i64 64, i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i32 %fld.0.lcssa.i) #12, !dbg !667
  %111 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 64, i8* %3, double %109) #12, !dbg !668
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !238, metadata !336), !dbg !634
  %112 = call i64 @strlen(i8* %2) #12, !dbg !669
  %113 = trunc i64 %112 to i32, !dbg !672
  %114 = icmp sgt i32 %113, 0, !dbg !673
  br i1 %114, label %.lr.ph, label %.loopexit, !dbg !674

.lr.ph:                                           ; preds = %107
  %len.promoted = load i32* %len, align 4, !dbg !675, !tbaa !382
  %115 = sext i32 %len.promoted to i64
  br label %116, !dbg !674

; <label>:116                                     ; preds = %.lr.ph, %116
  %indvars.iv22 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next23, %116 ]
  %indvars.iv = phi i64 [ %115, %.lr.ph ], [ %indvars.iv.next, %116 ]
  %117 = getelementptr inbounds [64 x i8]* %ibuf, i64 0, i64 %indvars.iv22, !dbg !677
  %118 = load i8* %117, align 1, !dbg !677, !tbaa !364
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !241, metadata !336), !dbg !592
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !304, metadata !336), !dbg !678
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !305, metadata !336), !dbg !679
  tail call void @llvm.dbg.value(metadata i8 %118, i64 0, metadata !306, metadata !336), !dbg !680
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !674
  %119 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %indvars.iv, !dbg !681
  store i8 %118, i8* %119, align 1, !dbg !682, !tbaa !364
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !dbg !674
  %120 = call i64 @strlen(i8* %2) #12, !dbg !669
  %sext = shl i64 %120, 32, !dbg !673
  %121 = ashr exact i64 %sext, 32, !dbg !673
  %122 = icmp slt i64 %indvars.iv.next23, %121, !dbg !673
  br i1 %122, label %116, label %..loopexit6_crit_edge, !dbg !674

; <label>:123                                     ; preds = %getfld.exit
  %124 = load i32* %14, align 16, !dbg !683
  %125 = icmp ult i32 %124, 41, !dbg !683
  br i1 %125, label %126, label %131, !dbg !683

; <label>:126                                     ; preds = %123
  %127 = load i8** %15, align 16, !dbg !683
  %128 = sext i32 %124 to i64, !dbg !683
  %129 = getelementptr i8* %127, i64 %128, !dbg !683
  %130 = add i32 %124, 8, !dbg !683
  store i32 %130, i32* %14, align 16, !dbg !683
  br label %134, !dbg !683

; <label>:131                                     ; preds = %123
  %132 = load i8** %16, align 8, !dbg !683
  %133 = getelementptr i8* %132, i64 8, !dbg !683
  store i8* %133, i8** %16, align 8, !dbg !683
  br label %134, !dbg !683

; <label>:134                                     ; preds = %131, %126
  %.in1 = phi i8* [ %129, %126 ], [ %132, %131 ]
  %135 = bitcast i8* %.in1 to i32*, !dbg !683
  %136 = load i32* %135, align 4, !dbg !683
  %137 = trunc i32 %136 to i8, !dbg !684
  call void @llvm.dbg.value(metadata i8 %137, i64 0, metadata !227, metadata !336), !dbg !685
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !241, metadata !336), !dbg !592
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !304, metadata !336), !dbg !686
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !305, metadata !336), !dbg !688
  tail call void @llvm.dbg.value(metadata i8 %137, i64 0, metadata !306, metadata !336), !dbg !689
  %138 = load i32* %len, align 4, !dbg !690, !tbaa !382
  %139 = add nsw i32 %138, 1, !dbg !690
  store i32 %139, i32* %len, align 4, !dbg !690, !tbaa !382
  %140 = sext i32 %138 to i64, !dbg !691
  %141 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %140, !dbg !691
  store i8 %137, i8* %141, align 1, !dbg !692, !tbaa !364
  br label %.loopexit, !dbg !693

; <label>:142                                     ; preds = %getfld.exit
  %143 = load i32* %14, align 16, !dbg !694
  %144 = icmp ult i32 %143, 41, !dbg !694
  br i1 %144, label %145, label %150, !dbg !694

; <label>:145                                     ; preds = %142
  %146 = load i8** %15, align 16, !dbg !694
  %147 = sext i32 %143 to i64, !dbg !694
  %148 = getelementptr i8* %146, i64 %147, !dbg !694
  %149 = add i32 %143, 8, !dbg !694
  store i32 %149, i32* %14, align 16, !dbg !694
  br label %153, !dbg !694

; <label>:150                                     ; preds = %142
  %151 = load i8** %16, align 8, !dbg !694
  %152 = getelementptr i8* %151, i64 8, !dbg !694
  store i8* %152, i8** %16, align 8, !dbg !694
  br label %153, !dbg !694

; <label>:153                                     ; preds = %150, %145
  %.in = phi i8* [ %148, %145 ], [ %151, %150 ]
  %154 = bitcast i8* %.in to i8**, !dbg !694
  %155 = load i8** %154, align 8, !dbg !694
  call void @llvm.dbg.value(metadata i8* %155, i64 0, metadata !228, metadata !336), !dbg !695
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !241, metadata !336), !dbg !592
  call fastcc void @bputs(i8* %1, i32* %len, i8* %155, i32 %fld.0.lcssa.i) #13, !dbg !696
  br label %.loopexit, !dbg !697

..loopexit_crit_edge:                             ; preds = %62
  %156 = trunc i64 %indvars.iv.next29 to i32, !dbg !641
  store i32 %156, i32* %len, align 4, !dbg !641, !tbaa !382
  br label %.loopexit, !dbg !640

..loopexit5_crit_edge:                            ; preds = %89
  %157 = trunc i64 %indvars.iv.next25 to i32, !dbg !658
  store i32 %157, i32* %len, align 4, !dbg !658, !tbaa !382
  br label %.loopexit, !dbg !657

..loopexit6_crit_edge:                            ; preds = %116
  %158 = trunc i64 %indvars.iv.next to i32, !dbg !675
  store i32 %158, i32* %len, align 4, !dbg !675, !tbaa !382
  br label %.loopexit, !dbg !674

.loopexit:                                        ; preds = %107, %..loopexit6_crit_edge, %80, %..loopexit5_crit_edge, %53, %..loopexit_crit_edge, %20, %getfld.exit, %153, %134
  %159 = phi i8* [ %storemerge, %20 ], [ %40, %getfld.exit ], [ %40, %153 ], [ %40, %134 ], [ %40, %..loopexit_crit_edge ], [ %40, %53 ], [ %40, %..loopexit5_crit_edge ], [ %40, %80 ], [ %40, %..loopexit6_crit_edge ], [ %40, %107 ]
  %160 = getelementptr inbounds i8* %159, i64 1, !dbg !698
  call void @llvm.dbg.value(metadata i8* %160, i64 0, metadata !226, metadata !336), !dbg !595
  br label %18, !dbg !699

; <label>:161                                     ; preds = %18
  call void @llvm.va_end(i8* %4), !dbg !700
  call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !241, metadata !336), !dbg !592
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !304, metadata !336), !dbg !701
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !305, metadata !336), !dbg !703
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !306, metadata !336), !dbg !704
  %162 = load i32* %len, align 4, !dbg !705, !tbaa !382
  %163 = sext i32 %162 to i64, !dbg !706
  %164 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %163, !dbg !706
  store i8 0, i8* %164, align 1, !dbg !707, !tbaa !364
  call void @quit_gmx(i32 %fatal_errno, i8* %1) #13, !dbg !708
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #11

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind optsize
declare i32 @remove(i8* nocapture readonly) #7

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @bputs(i8* nocapture %msg, i32* nocapture %len, i8* nocapture readonly %s, i32 %fld) #5 {
  tail call void @llvm.dbg.value(metadata i8* %msg, i64 0, metadata !296, metadata !336), !dbg !709
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !297, metadata !336), !dbg !710
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !298, metadata !336), !dbg !711
  tail call void @llvm.dbg.value(metadata i32 %fld, i64 0, metadata !299, metadata !336), !dbg !712
  %1 = tail call i64 @strlen(i8* %s) #12, !dbg !713
  %2 = trunc i64 %1 to i32, !dbg !715
  %3 = sub nsw i32 %fld, %2, !dbg !716
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !299, metadata !336), !dbg !712
  %4 = icmp sgt i32 %3, 0, !dbg !717
  br i1 %4, label %.lr.ph5, label %.preheader, !dbg !719

.preheader:                                       ; preds = %.lr.ph5, %0
  %5 = load i8* %s, align 1, !dbg !720, !tbaa !364
  %6 = icmp eq i8 %5, 0, !dbg !721
  br i1 %6, label %._crit_edge, label %.lr.ph, !dbg !721

.lr.ph5:                                          ; preds = %0, %.lr.ph5
  %.03 = phi i32 [ %11, %.lr.ph5 ], [ %3, %0 ]
  tail call void @llvm.dbg.value(metadata i8* %msg, i64 0, metadata !304, metadata !336), !dbg !722
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !305, metadata !336), !dbg !724
  tail call void @llvm.dbg.value(metadata i8 32, i64 0, metadata !306, metadata !336), !dbg !725
  %7 = load i32* %len, align 4, !dbg !726, !tbaa !382
  %8 = add nsw i32 %7, 1, !dbg !726
  store i32 %8, i32* %len, align 4, !dbg !726, !tbaa !382
  %9 = sext i32 %7 to i64, !dbg !727
  %10 = getelementptr inbounds i8* %msg, i64 %9, !dbg !727
  store i8 32, i8* %10, align 1, !dbg !728, !tbaa !364
  %11 = add nsw i32 %.03, -1, !dbg !729
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !299, metadata !336), !dbg !712
  %12 = icmp sgt i32 %.03, 1, !dbg !717
  br i1 %12, label %.lr.ph5, label %.preheader, !dbg !719

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %13 = phi i8 [ %19, %.lr.ph ], [ %5, %.preheader ]
  %.012 = phi i8* [ %14, %.lr.ph ], [ %s, %.preheader ]
  %14 = getelementptr inbounds i8* %.012, i64 1, !dbg !730
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !298, metadata !336), !dbg !711
  tail call void @llvm.dbg.value(metadata i8* %msg, i64 0, metadata !304, metadata !336), !dbg !731
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !305, metadata !336), !dbg !733
  tail call void @llvm.dbg.value(metadata i8 %19, i64 0, metadata !306, metadata !336), !dbg !734
  %15 = load i32* %len, align 4, !dbg !735, !tbaa !382
  %16 = add nsw i32 %15, 1, !dbg !735
  store i32 %16, i32* %len, align 4, !dbg !735, !tbaa !382
  %17 = sext i32 %15 to i64, !dbg !736
  %18 = getelementptr inbounds i8* %msg, i64 %17, !dbg !736
  store i8 %13, i8* %18, align 1, !dbg !737, !tbaa !364
  %19 = load i8* %14, align 1, !dbg !720, !tbaa !364
  %20 = icmp eq i8 %19, 0, !dbg !721
  br i1 %20, label %._crit_edge, label %.lr.ph, !dbg !721

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  ret void, !dbg !738
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind optsize ssp uwtable
define void @init_warning(i32 %maxwarning) #5 {
  tail call void @llvm.dbg.value(metadata i32 %maxwarning, i64 0, metadata !248, metadata !336), !dbg !739
  store i32 %maxwarning, i32* @maxwarn, align 4, !dbg !740, !tbaa !382
  store i32 0, i32* @nwarn, align 4, !dbg !741, !tbaa !382
  ret void, !dbg !742
}

; Function Attrs: nounwind optsize ssp uwtable
define void @set_warning_line(i8* %s, i32 %line) #5 {
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !251, metadata !336), !dbg !743
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !252, metadata !336), !dbg !744
  %1 = tail call i8* @__strcpy_chk(i8* getelementptr inbounds ([256 x i8]* @filenm, i64 0, i64 0), i8* %s, i64 256) #12, !dbg !745
  store i32 %line, i32* @lineno, align 4, !dbg !746, !tbaa !382
  ret void, !dbg !747
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #7

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @get_warning_line() #6 {
  %1 = load i32* @lineno, align 4, !dbg !748, !tbaa !382
  ret i32 %1, !dbg !749
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @get_warning_file() #4 {
  ret i8* getelementptr inbounds ([256 x i8]* @filenm, i64 0, i64 0), !dbg !750
}

; Function Attrs: nounwind optsize ssp uwtable
define void @warning(i8* %s) #5 {
  %linenobuf = alloca [32 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !261, metadata !336), !dbg !751
  tail call void @llvm.dbg.declare(metadata [32 x i8]* %linenobuf, metadata !262, metadata !336), !dbg !752
  %1 = load i32* @nwarn, align 4, !dbg !753, !tbaa !382
  %2 = add nsw i32 %1, 1, !dbg !753
  store i32 %2, i32* @nwarn, align 4, !dbg !753, !tbaa !382
  %3 = icmp eq i8* %s, null, !dbg !754
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !261, metadata !336), !dbg !751
  %.s = select i1 %3, i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i8* %s, !dbg !756
  %4 = load i32* @lineno, align 4, !dbg !757, !tbaa !382
  %5 = icmp eq i32 %4, -1, !dbg !759
  %6 = getelementptr inbounds [32 x i8]* %linenobuf, i64 0, i64 0, !dbg !760
  br i1 %5, label %9, label %7, !dbg !761

; <label>:7                                       ; preds = %0
  %8 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %6, i32 0, i64 32, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i32 %4) #12, !dbg !760
  br label %11, !dbg !760

; <label>:9                                       ; preds = %0
  %10 = bitcast [32 x i8]* %linenobuf to i64*, !dbg !762
  store i64 31093567915781749, i64* %10, align 16, !dbg !762
  br label %11

; <label>:11                                      ; preds = %9, %7
  %12 = call i64 @strlen(i8* %.s) #12, !dbg !763
  %13 = add i64 %12, 3, !dbg !763
  %14 = trunc i64 %13 to i32, !dbg !763
  %15 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str6, i64 0, i64 0), i32 315, i32 %14, i32 1) #12, !dbg !763
  call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !266, metadata !336), !dbg !764
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !268, metadata !336), !dbg !765
  %16 = bitcast i8* %15 to i16*, !dbg !766
  store i16 8224, i16* %16, align 1, !dbg !766
  %17 = getelementptr inbounds i8* %15, i64 2, !dbg !769
  store i8 0, i8* %17, align 1, !dbg !770, !tbaa !364
  %18 = call i64 @llvm.objectsize.i64.p0i8(i8* %15, i1 false), !dbg !771
  %19 = call i8* @__strcat_chk(i8* %15, i8* %.s, i64 %18) #12, !dbg !771
  %20 = call i8* @wrap_lines(i8* %15, i32 79, i32 2) #12, !dbg !772
  call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !267, metadata !336), !dbg !773
  %21 = load %struct.__sFILE** @__stderrp, align 8, !dbg !774, !tbaa !503
  %22 = load i32* @nwarn, align 4, !dbg !775, !tbaa !382
  %23 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([35 x i8]* @.str16, i64 0, i64 0), i32 %22, i8* getelementptr inbounds ([256 x i8]* @filenm, i64 0, i64 0), i8* %6, i8* %20) #12, !dbg !776
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str6, i64 0, i64 0), i32 323, i8* %15) #12, !dbg !777
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str6, i64 0, i64 0), i32 324, i8* %20) #12, !dbg !778
  %24 = load i32* @nwarn, align 4, !dbg !779, !tbaa !382
  %25 = load i32* @maxwarn, align 4, !dbg !781, !tbaa !382
  %26 = icmp slt i32 %24, %25, !dbg !782
  br i1 %26, label %29, label %27, !dbg !783

; <label>:27                                      ; preds = %11
  %28 = call i8* @Program() #12, !dbg !784
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str18, i64 0, i64 0), i8* %28) #13, !dbg !785
  unreachable

; <label>:29                                      ; preds = %11
  ret void, !dbg !786
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize
declare i8* @__strcat_chk(i8*, i8*, i64) #7

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #2

; Function Attrs: optsize
declare i8* @Program() #2

; Function Attrs: nounwind optsize ssp uwtable
define void @print_warn_num() #5 {
  %1 = load i32* @nwarn, align 4, !dbg !787, !tbaa !382
  %2 = icmp sgt i32 %1, 0, !dbg !789
  br i1 %2, label %3, label %9, !dbg !790

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !791, !tbaa !503
  %5 = icmp eq i32 %1, 1, !dbg !792
  %6 = select i1 %5, i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), !dbg !793
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0), !dbg !794
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([23 x i8]* @.str19, i64 0, i64 0), i8* %6, i32 %1, i8* %7) #12, !dbg !795
  br label %9, !dbg !795

; <label>:9                                       ; preds = %3, %0
  ret void, !dbg !796
}

; Function Attrs: nounwind optsize ssp uwtable
define void @_too_few(i8* %fn, i32 %line) #5 {
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !274, metadata !336), !dbg !797
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !275, metadata !336), !dbg !798
  %1 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i32 0, i64 1024, i8* getelementptr inbounds ([53 x i8]* @.str24, i64 0, i64 0), i8* %fn, i32 %line) #12, !dbg !799
  tail call void @warning(i8* null) #13, !dbg !800
  ret void, !dbg !801
}

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @_invalid_case(i8* %fn, i32 %line) #8 {
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !278, metadata !336), !dbg !802
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !279, metadata !336), !dbg !803
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([51 x i8]* @.str25, i64 0, i64 0), i8* %fn, i32 %line) #13, !dbg !804
  unreachable
}

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @_unexpected_eof(i8* %fn, i32 %line, i8* %srcfn, i32 %srcline) #8 {
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !284, metadata !336), !dbg !805
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !285, metadata !336), !dbg !806
  tail call void @llvm.dbg.value(metadata i8* %srcfn, i64 0, metadata !286, metadata !336), !dbg !807
  tail call void @llvm.dbg.value(metadata i32 %srcline, i64 0, metadata !287, metadata !336), !dbg !808
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([71 x i8]* @.str26, i64 0, i64 0), i8* %fn, i32 %line, i8* %srcfn, i32 %srcline) #13, !dbg !809
  unreachable
}

; Function Attrs: nounwind optsize ssp uwtable
define void @init_debug(i8* %dbgfile) #5 {
  tail call void @llvm.dbg.value(metadata i8* %dbgfile, i64 0, metadata !290, metadata !336), !dbg !810
  tail call void @no_buffers() #12, !dbg !811
  %1 = tail call %struct.__sFILE* @ffopen(i8* %dbgfile, i8* getelementptr inbounds ([2 x i8]* @.str27, i64 0, i64 0)) #12, !dbg !812
  store %struct.__sFILE* %1, %struct.__sFILE** @debug, align 8, !dbg !813, !tbaa !503
  store i1 true, i1* @bDebug, align 1
  ret void, !dbg !814
}

; Function Attrs: optsize
declare void @no_buffers() #2

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #11

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { noreturn nounwind optsize }
attributes #15 = { cold nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!332, !333, !334}
!llvm.ident = !{!335}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !314, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/fatal.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6, !7}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !76, !82, !86, !94, !100, !106, !109, !112, !115, !118, !121, !124, !127, !130, !133, !136, !139, !142, !145, !148, !151, !154, !157, !160, !163, !166, !169, !172, !175, !183, !190, !196, !203, !208, !244, !249, !253, !254, !257, !269, !272, !276, !280, !288, !291, !300, !307}
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
!76 = !DISubprogram(name: "__sigbits", scope: !77, file: !77, line: 114, type: !78, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !80)
!77 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!78 = !DISubroutineType(types: !79)
!79 = !{!7, !7}
!80 = !{!81}
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !76, file: !77, line: 114, type: !7)
!82 = !DISubprogram(name: "isascii", scope: !83, file: !83, line: 135, type: !78, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isascii, variables: !84)
!83 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!84 = !{!85}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !82, file: !83, line: 135, type: !7)
!86 = !DISubprogram(name: "__istype", scope: !83, file: !83, line: 153, type: !87, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i64)* @__istype, variables: !91)
!87 = !DISubroutineType(types: !88)
!88 = !{!7, !89, !90}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !49, line: 70, baseType: !7)
!90 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!91 = !{!92, !93}
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !86, file: !83, line: 153, type: !89)
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !86, file: !83, line: 153, type: !90)
!94 = !DISubprogram(name: "__isctype", scope: !83, file: !83, line: 164, type: !95, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i64)* @__isctype, variables: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{!89, !89, !90}
!97 = !{!98, !99}
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !94, file: !83, line: 164, type: !89)
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !94, file: !83, line: 164, type: !90)
!100 = !DISubprogram(name: "__wcwidth", scope: !83, file: !83, line: 194, type: !101, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__wcwidth, variables: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{!7, !89}
!103 = !{!104, !105}
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !100, file: !83, line: 194, type: !89)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_x", scope: !100, file: !83, line: 196, type: !5)
!106 = !DISubprogram(name: "isalnum", scope: !83, file: !83, line: 212, type: !78, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isalnum, variables: !107)
!107 = !{!108}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !106, file: !83, line: 212, type: !7)
!109 = !DISubprogram(name: "isalpha", scope: !83, file: !83, line: 218, type: !78, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isalpha, variables: !110)
!110 = !{!111}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !109, file: !83, line: 218, type: !7)
!112 = !DISubprogram(name: "isblank", scope: !83, file: !83, line: 224, type: !78, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isblank, variables: !113)
!113 = !{!114}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !112, file: !83, line: 224, type: !7)
!115 = !DISubprogram(name: "iscntrl", scope: !83, file: !83, line: 230, type: !78, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @iscntrl, variables: !116)
!116 = !{!117}
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !115, file: !83, line: 230, type: !7)
!118 = !DISubprogram(name: "isdigit", scope: !83, file: !83, line: 237, type: !78, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isdigit, variables: !119)
!119 = !{!120}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !118, file: !83, line: 237, type: !7)
!121 = !DISubprogram(name: "isgraph", scope: !83, file: !83, line: 243, type: !78, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isgraph, variables: !122)
!122 = !{!123}
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !121, file: !83, line: 243, type: !7)
!124 = !DISubprogram(name: "islower", scope: !83, file: !83, line: 249, type: !78, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @islower, variables: !125)
!125 = !{!126}
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !124, file: !83, line: 249, type: !7)
!127 = !DISubprogram(name: "isprint", scope: !83, file: !83, line: 255, type: !78, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isprint, variables: !128)
!128 = !{!129}
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !127, file: !83, line: 255, type: !7)
!130 = !DISubprogram(name: "ispunct", scope: !83, file: !83, line: 261, type: !78, isLocal: false, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @ispunct, variables: !131)
!131 = !{!132}
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !130, file: !83, line: 261, type: !7)
!133 = !DISubprogram(name: "isspace", scope: !83, file: !83, line: 267, type: !78, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isspace, variables: !134)
!134 = !{!135}
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !133, file: !83, line: 267, type: !7)
!136 = !DISubprogram(name: "isupper", scope: !83, file: !83, line: 273, type: !78, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isupper, variables: !137)
!137 = !{!138}
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !136, file: !83, line: 273, type: !7)
!139 = !DISubprogram(name: "isxdigit", scope: !83, file: !83, line: 280, type: !78, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isxdigit, variables: !140)
!140 = !{!141}
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !139, file: !83, line: 280, type: !7)
!142 = !DISubprogram(name: "toascii", scope: !83, file: !83, line: 286, type: !78, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @toascii, variables: !143)
!143 = !{!144}
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !142, file: !83, line: 286, type: !7)
!145 = !DISubprogram(name: "tolower", scope: !83, file: !83, line: 292, type: !78, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @tolower, variables: !146)
!146 = !{!147}
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !145, file: !83, line: 292, type: !7)
!148 = !DISubprogram(name: "toupper", scope: !83, file: !83, line: 298, type: !78, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @toupper, variables: !149)
!149 = !{!150}
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !148, file: !83, line: 298, type: !7)
!151 = !DISubprogram(name: "digittoint", scope: !83, file: !83, line: 305, type: !78, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @digittoint, variables: !152)
!152 = !{!153}
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !151, file: !83, line: 305, type: !7)
!154 = !DISubprogram(name: "ishexnumber", scope: !83, file: !83, line: 311, type: !78, isLocal: false, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @ishexnumber, variables: !155)
!155 = !{!156}
!156 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !154, file: !83, line: 311, type: !7)
!157 = !DISubprogram(name: "isideogram", scope: !83, file: !83, line: 317, type: !78, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isideogram, variables: !158)
!158 = !{!159}
!159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !157, file: !83, line: 317, type: !7)
!160 = !DISubprogram(name: "isnumber", scope: !83, file: !83, line: 323, type: !78, isLocal: false, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isnumber, variables: !161)
!161 = !{!162}
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !160, file: !83, line: 323, type: !7)
!163 = !DISubprogram(name: "isphonogram", scope: !83, file: !83, line: 329, type: !78, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isphonogram, variables: !164)
!164 = !{!165}
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !163, file: !83, line: 329, type: !7)
!166 = !DISubprogram(name: "isrune", scope: !83, file: !83, line: 335, type: !78, isLocal: false, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isrune, variables: !167)
!167 = !{!168}
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !166, file: !83, line: 335, type: !7)
!169 = !DISubprogram(name: "isspecial", scope: !83, file: !83, line: 341, type: !78, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @isspecial, variables: !170)
!170 = !{!171}
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !169, file: !83, line: 341, type: !7)
!172 = !DISubprogram(name: "bDebugMode", scope: !1, file: !1, line: 50, type: !173, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @bDebugMode, variables: !2)
!173 = !DISubroutineType(types: !174)
!174 = !{!7}
!175 = !DISubprogram(name: "_where", scope: !1, file: !1, line: 55, type: !176, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_where, variables: !178)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !40, !7}
!178 = !{!179, !180, !181, !182}
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 1, scope: !175, file: !1, line: 55, type: !40)
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 2, scope: !175, file: !1, line: 55, type: !7)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !175, file: !1, line: 60, type: !13)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !175, file: !1, line: 61, type: !40)
!183 = !DISubprogram(name: "_halt", scope: !1, file: !1, line: 136, type: !184, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, i8*)* @_halt, variables: !186)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !40, !7, !40}
!186 = !{!187, !188, !189}
!187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 1, scope: !183, file: !1, line: 136, type: !40)
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 2, scope: !183, file: !1, line: 136, type: !7)
!189 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "reason", arg: 3, scope: !183, file: !1, line: 136, type: !40)
!190 = !DISubprogram(name: "quit_gmx", scope: !1, file: !1, line: 143, type: !191, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*)* @quit_gmx, variables: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !7, !40}
!193 = !{!194, !195}
!194 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fatal_errno", arg: 1, scope: !190, file: !1, line: 143, type: !7)
!195 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 2, scope: !190, file: !1, line: 143, type: !40)
!196 = !DISubprogram(name: "_set_fatal_tmp_file", scope: !1, file: !1, line: 181, type: !197, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32)* @_set_fatal_tmp_file, variables: !199)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !40, !40, !7}
!199 = !{!200, !201, !202}
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !196, file: !1, line: 181, type: !40)
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 2, scope: !196, file: !1, line: 181, type: !40)
!202 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 3, scope: !196, file: !1, line: 181, type: !7)
!203 = !DISubprogram(name: "_unset_fatal_tmp_file", scope: !1, file: !1, line: 190, type: !197, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32)* @_unset_fatal_tmp_file, variables: !204)
!204 = !{!205, !206, !207}
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !203, file: !1, line: 190, type: !40)
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 2, scope: !203, file: !1, line: 190, type: !40)
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 3, scope: !203, file: !1, line: 190, type: !7)
!208 = !DISubprogram(name: "fatal_error", scope: !1, file: !1, line: 200, type: !209, isLocal: false, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i8*, ...)* @fatal_error, variables: !211)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !7, !40, null}
!211 = !{!212, !213, !214, !226, !227, !228, !229, !233, !237, !238, !239, !240, !241, !242}
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fatal_errno", arg: 1, scope: !208, file: !1, line: 200, type: !7)
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 2, scope: !208, file: !1, line: 200, type: !40)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ap", scope: !208, file: !1, line: 202, type: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !216, line: 30, baseType: !217)
!216 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/7.0.0/include/stdarg.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 202, baseType: !218)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 192, align: 64, elements: !68)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 202, baseType: !220)
!220 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 202, size: 192, align: 64, elements: !221)
!221 = !{!222, !223, !224, !225}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !220, file: !1, line: 202, baseType: !5, size: 32, align: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !220, file: !1, line: 202, baseType: !5, size: 32, align: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !220, file: !1, line: 202, baseType: !6, size: 64, align: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !220, file: !1, line: 202, baseType: !6, size: 64, align: 64, offset: 128)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !208, file: !1, line: 203, type: !40)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cval", scope: !208, file: !1, line: 203, type: !4)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sval", scope: !208, file: !1, line: 203, type: !40)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !208, file: !1, line: 203, type: !230)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, align: 8, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 4096)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ibuf", scope: !208, file: !1, line: 204, type: !234)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, align: 8, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 64)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ifmt", scope: !208, file: !1, line: 204, type: !234)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !208, file: !1, line: 205, type: !7)
!239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ival", scope: !208, file: !1, line: 205, type: !7)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fld", scope: !208, file: !1, line: 205, type: !7)
!241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !208, file: !1, line: 205, type: !7)
!242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dval", scope: !208, file: !1, line: 206, type: !243)
!243 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!244 = !DISubprogram(name: "init_warning", scope: !1, file: !1, line: 280, type: !245, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @init_warning, variables: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !7}
!247 = !{!248}
!248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxwarning", arg: 1, scope: !244, file: !1, line: 280, type: !7)
!249 = !DISubprogram(name: "set_warning_line", scope: !1, file: !1, line: 286, type: !176, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @set_warning_line, variables: !250)
!250 = !{!251, !252}
!251 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !249, file: !1, line: 286, type: !40)
!252 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 2, scope: !249, file: !1, line: 286, type: !7)
!253 = !DISubprogram(name: "get_warning_line", scope: !1, file: !1, line: 292, type: !173, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @get_warning_line, variables: !2)
!254 = !DISubprogram(name: "get_warning_file", scope: !1, file: !1, line: 297, type: !255, isLocal: false, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @get_warning_file, variables: !2)
!255 = !DISubroutineType(types: !256)
!256 = !{!40}
!257 = !DISubprogram(name: "warning", scope: !1, file: !1, line: 302, type: !258, isLocal: false, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @warning, variables: !260)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !40}
!260 = !{!261, !262, !266, !267, !268}
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !257, file: !1, line: 302, type: !40)
!262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "linenobuf", scope: !257, file: !1, line: 305, type: !263)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, align: 8, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 32)
!266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !257, file: !1, line: 305, type: !40)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp2", scope: !257, file: !1, line: 305, type: !40)
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !257, file: !1, line: 306, type: !7)
!269 = !DISubprogram(name: "print_warn_num", scope: !1, file: !1, line: 329, type: !270, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @print_warn_num, variables: !2)
!270 = !DISubroutineType(types: !271)
!271 = !{null}
!272 = !DISubprogram(name: "_too_few", scope: !1, file: !1, line: 336, type: !176, isLocal: false, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_too_few, variables: !273)
!273 = !{!274, !275}
!274 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !272, file: !1, line: 336, type: !40)
!275 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 2, scope: !272, file: !1, line: 336, type: !7)
!276 = !DISubprogram(name: "_invalid_case", scope: !1, file: !1, line: 343, type: !176, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_invalid_case, variables: !277)
!277 = !{!278, !279}
!278 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !276, file: !1, line: 343, type: !40)
!279 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 2, scope: !276, file: !1, line: 343, type: !7)
!280 = !DISubprogram(name: "_unexpected_eof", scope: !1, file: !1, line: 349, type: !281, isLocal: false, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, i8*, i32)* @_unexpected_eof, variables: !283)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !40, !7, !40, !7}
!283 = !{!284, !285, !286, !287}
!284 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !280, file: !1, line: 349, type: !40)
!285 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 2, scope: !280, file: !1, line: 349, type: !7)
!286 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "srcfn", arg: 3, scope: !280, file: !1, line: 349, type: !40)
!287 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "srcline", arg: 4, scope: !280, file: !1, line: 349, type: !7)
!288 = !DISubprogram(name: "init_debug", scope: !1, file: !1, line: 364, type: !258, isLocal: false, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @init_debug, variables: !289)
!289 = !{!290}
!290 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dbgfile", arg: 1, scope: !288, file: !1, line: 364, type: !40)
!291 = !DISubprogram(name: "bputs", scope: !1, file: !1, line: 92, type: !292, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32*, i8*, i32)* @bputs, variables: !295)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !40, !294, !40, !7}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!295 = !{!296, !297, !298, !299}
!296 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 1, scope: !291, file: !1, line: 92, type: !40)
!297 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !291, file: !1, line: 92, type: !294)
!298 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 3, scope: !291, file: !1, line: 92, type: !40)
!299 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fld", arg: 4, scope: !291, file: !1, line: 92, type: !7)
!300 = !DISubprogram(name: "bputc", scope: !1, file: !1, line: 87, type: !301, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, variables: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !40, !294, !4}
!303 = !{!304, !305, !306}
!304 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 1, scope: !300, file: !1, line: 87, type: !40)
!305 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !300, file: !1, line: 87, type: !294)
!306 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ch", arg: 3, scope: !300, file: !1, line: 87, type: !4)
!307 = !DISubprogram(name: "getfld", scope: !1, file: !1, line: 127, type: !308, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, variables: !311)
!308 = !DISubroutineType(types: !309)
!309 = !{!7, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!311 = !{!312, !313}
!312 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !307, file: !1, line: 127, type: !310)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fld", scope: !307, file: !1, line: 129, type: !7)
!314 = !{!315, !316, !317, !318, !319, !323, !324, !325, !326, !327, !331}
!315 = !DIGlobalVariable(name: "bFirst", scope: !175, file: !1, line: 57, type: !7, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariable(name: "nskip", scope: !175, file: !1, line: 58, type: !7, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariable(name: "nwhere", scope: !175, file: !1, line: 59, type: !7, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariable(name: "debug", scope: !0, file: !1, line: 362, type: !13, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @debug)
!319 = !DIGlobalVariable(name: "warn_buf", scope: !0, file: !1, line: 278, type: !320, isLocal: false, isDefinition: true, variable: [1024 x i8]* @warn_buf)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, align: 8, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 1024)
!323 = !DIGlobalVariable(name: "bDebug", scope: !0, file: !1, line: 47, type: !7, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariable(name: "fatal_tmp_file", scope: !0, file: !1, line: 48, type: !40, isLocal: true, isDefinition: true, variable: i8** @fatal_tmp_file)
!325 = !DIGlobalVariable(name: "maxwarn", scope: !0, file: !1, line: 275, type: !7, isLocal: true, isDefinition: true, variable: i32* @maxwarn)
!326 = !DIGlobalVariable(name: "nwarn", scope: !0, file: !1, line: 274, type: !7, isLocal: true, isDefinition: true, variable: i32* @nwarn)
!327 = !DIGlobalVariable(name: "filenm", scope: !0, file: !1, line: 277, type: !328, isLocal: true, isDefinition: true, variable: [256 x i8]* @filenm)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, align: 8, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 256)
!331 = !DIGlobalVariable(name: "lineno", scope: !0, file: !1, line: 276, type: !7, isLocal: true, isDefinition: true, variable: i32* @lineno)
!332 = !{i32 2, !"Dwarf Version", i32 2}
!333 = !{i32 2, !"Debug Info Version", i32 700000003}
!334 = !{i32 1, !"PIC Level", i32 2}
!335 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!336 = !DIExpression()
!337 = !DILocation(line: 348, column: 40, scope: !9)
!338 = !DILocation(line: 348, column: 50, scope: !9)
!339 = !DILocation(line: 349, column: 12, scope: !340)
!340 = distinct !DILexicalBlock(scope: !9, file: !10, line: 349, column: 6)
!341 = !DILocation(line: 349, column: 6, scope: !340)
!342 = !{!343, !347, i64 12}
!343 = !{!"__sFILE", !344, i64 0, !347, i64 8, !347, i64 12, !348, i64 16, !348, i64 18, !349, i64 24, !347, i64 40, !344, i64 48, !344, i64 56, !344, i64 64, !344, i64 72, !344, i64 80, !349, i64 88, !344, i64 104, !347, i64 112, !345, i64 116, !345, i64 119, !349, i64 120, !347, i64 136, !350, i64 144}
!344 = !{!"any pointer", !345, i64 0}
!345 = !{!"omnipotent char", !346, i64 0}
!346 = !{!"Simple C/C++ TBAA"}
!347 = !{!"int", !345, i64 0}
!348 = !{!"short", !345, i64 0}
!349 = !{!"__sbuf", !344, i64 0, !347, i64 8}
!350 = !{!"long long", !345, i64 0}
!351 = !DILocation(line: 349, column: 15, scope: !340)
!352 = !DILocation(line: 349, column: 20, scope: !340)
!353 = !DILocation(line: 350, column: 10, scope: !340)
!354 = !DILocation(line: 349, column: 38, scope: !340)
!355 = !{!343, !347, i64 40}
!356 = !DILocation(line: 349, column: 31, scope: !340)
!357 = !DILocation(line: 349, column: 59, scope: !340)
!358 = !DILocation(line: 349, column: 47, scope: !340)
!359 = !DILocation(line: 350, column: 23, scope: !340)
!360 = !DILocation(line: 350, column: 16, scope: !340)
!361 = !DILocation(line: 350, column: 18, scope: !340)
!362 = !{!343, !344, i64 0}
!363 = !DILocation(line: 350, column: 21, scope: !340)
!364 = !{!345, !345, i64 0}
!365 = !DILocation(line: 350, column: 3, scope: !340)
!366 = !DILocation(line: 352, column: 11, scope: !340)
!367 = !DILocation(line: 352, column: 3, scope: !340)
!368 = !DILocation(line: 353, column: 1, scope: !9)
!369 = !DILocation(line: 114, column: 15, scope: !76)
!370 = !DILocation(line: 116, column: 20, scope: !76)
!371 = !DILocation(line: 116, column: 12, scope: !76)
!372 = !DILocation(line: 116, column: 57, scope: !76)
!373 = !DILocation(line: 116, column: 45, scope: !76)
!374 = !DILocation(line: 116, column: 5, scope: !76)
!375 = !DILocation(line: 135, column: 13, scope: !82)
!376 = !DILocation(line: 137, column: 23, scope: !82)
!377 = !DILocation(line: 137, column: 2, scope: !82)
!378 = !DILocation(line: 153, column: 29, scope: !86)
!379 = !DILocation(line: 153, column: 47, scope: !86)
!380 = !DILocation(line: 158, column: 10, scope: !86)
!381 = !DILocation(line: 158, column: 27, scope: !86)
!382 = !{!347, !347, i64 0}
!383 = !DILocation(line: 158, column: 61, scope: !86)
!384 = !DILocation(line: 158, column: 25, scope: !86)
!385 = !DILocation(line: 159, column: 7, scope: !86)
!386 = !DILocation(line: 159, column: 6, scope: !86)
!387 = !DILocation(line: 158, column: 24, scope: !86)
!388 = !DILocation(line: 158, column: 2, scope: !86)
!389 = !DILocation(line: 164, column: 30, scope: !94)
!390 = !DILocation(line: 164, column: 48, scope: !94)
!391 = !DILocation(line: 169, column: 17, scope: !94)
!392 = !DILocation(line: 170, column: 6, scope: !94)
!393 = !DILocation(line: 170, column: 40, scope: !94)
!394 = !DILocation(line: 170, column: 4, scope: !94)
!395 = !DILocation(line: 170, column: 3, scope: !94)
!396 = !DILocation(line: 169, column: 9, scope: !94)
!397 = !DILocation(line: 169, column: 2, scope: !94)
!398 = !DILocation(line: 194, column: 30, scope: !100)
!399 = !DILocation(line: 198, column: 9, scope: !400)
!400 = distinct !DILexicalBlock(scope: !100, file: !83, line: 198, column: 6)
!401 = !DILocation(line: 198, column: 6, scope: !100)
!402 = !DILocation(line: 200, column: 21, scope: !100)
!403 = !DILocation(line: 196, column: 15, scope: !100)
!404 = !DILocation(line: 201, column: 24, scope: !405)
!405 = distinct !DILexicalBlock(scope: !100, file: !83, line: 201, column: 6)
!406 = !DILocation(line: 201, column: 6, scope: !100)
!407 = !DILocation(line: 202, column: 29, scope: !405)
!408 = !DILocation(line: 202, column: 3, scope: !405)
!409 = !DILocation(line: 203, column: 10, scope: !100)
!410 = !DILocation(line: 203, column: 2, scope: !100)
!411 = !DILocation(line: 204, column: 1, scope: !100)
!412 = !DILocation(line: 212, column: 13, scope: !106)
!413 = !DILocation(line: 214, column: 10, scope: !106)
!414 = !DILocation(line: 214, column: 2, scope: !106)
!415 = !DILocation(line: 218, column: 13, scope: !109)
!416 = !DILocation(line: 220, column: 10, scope: !109)
!417 = !DILocation(line: 220, column: 2, scope: !109)
!418 = !DILocation(line: 224, column: 13, scope: !112)
!419 = !DILocation(line: 226, column: 10, scope: !112)
!420 = !DILocation(line: 226, column: 2, scope: !112)
!421 = !DILocation(line: 230, column: 13, scope: !115)
!422 = !DILocation(line: 232, column: 10, scope: !115)
!423 = !DILocation(line: 232, column: 2, scope: !115)
!424 = !DILocation(line: 237, column: 13, scope: !118)
!425 = !DILocation(line: 164, column: 30, scope: !94, inlinedAt: !426)
!426 = distinct !DILocation(line: 239, column: 10, scope: !118)
!427 = !DILocation(line: 164, column: 48, scope: !94, inlinedAt: !426)
!428 = !DILocation(line: 169, column: 17, scope: !94, inlinedAt: !426)
!429 = !DILocation(line: 170, column: 6, scope: !94, inlinedAt: !426)
!430 = !DILocation(line: 170, column: 3, scope: !94, inlinedAt: !426)
!431 = !DILocation(line: 169, column: 9, scope: !94, inlinedAt: !426)
!432 = !DILocation(line: 239, column: 2, scope: !118)
!433 = !DILocation(line: 243, column: 13, scope: !121)
!434 = !DILocation(line: 245, column: 10, scope: !121)
!435 = !DILocation(line: 245, column: 2, scope: !121)
!436 = !DILocation(line: 249, column: 13, scope: !124)
!437 = !DILocation(line: 251, column: 10, scope: !124)
!438 = !DILocation(line: 251, column: 2, scope: !124)
!439 = !DILocation(line: 255, column: 13, scope: !127)
!440 = !DILocation(line: 257, column: 10, scope: !127)
!441 = !DILocation(line: 257, column: 2, scope: !127)
!442 = !DILocation(line: 261, column: 13, scope: !130)
!443 = !DILocation(line: 263, column: 10, scope: !130)
!444 = !DILocation(line: 263, column: 2, scope: !130)
!445 = !DILocation(line: 267, column: 13, scope: !133)
!446 = !DILocation(line: 269, column: 10, scope: !133)
!447 = !DILocation(line: 269, column: 2, scope: !133)
!448 = !DILocation(line: 273, column: 13, scope: !136)
!449 = !DILocation(line: 275, column: 10, scope: !136)
!450 = !DILocation(line: 275, column: 2, scope: !136)
!451 = !DILocation(line: 280, column: 14, scope: !139)
!452 = !DILocation(line: 164, column: 30, scope: !94, inlinedAt: !453)
!453 = distinct !DILocation(line: 282, column: 10, scope: !139)
!454 = !DILocation(line: 164, column: 48, scope: !94, inlinedAt: !453)
!455 = !DILocation(line: 169, column: 17, scope: !94, inlinedAt: !453)
!456 = !DILocation(line: 170, column: 6, scope: !94, inlinedAt: !453)
!457 = !DILocation(line: 170, column: 3, scope: !94, inlinedAt: !453)
!458 = !DILocation(line: 169, column: 9, scope: !94, inlinedAt: !453)
!459 = !DILocation(line: 282, column: 2, scope: !139)
!460 = !DILocation(line: 286, column: 13, scope: !142)
!461 = !DILocation(line: 288, column: 13, scope: !142)
!462 = !DILocation(line: 288, column: 2, scope: !142)
!463 = !DILocation(line: 292, column: 13, scope: !145)
!464 = !DILocation(line: 294, column: 17, scope: !145)
!465 = !DILocation(line: 294, column: 9, scope: !145)
!466 = !DILocation(line: 298, column: 13, scope: !148)
!467 = !DILocation(line: 300, column: 17, scope: !148)
!468 = !DILocation(line: 300, column: 9, scope: !148)
!469 = !DILocation(line: 305, column: 16, scope: !151)
!470 = !DILocation(line: 307, column: 10, scope: !151)
!471 = !DILocation(line: 307, column: 2, scope: !151)
!472 = !DILocation(line: 311, column: 17, scope: !154)
!473 = !DILocation(line: 313, column: 10, scope: !154)
!474 = !DILocation(line: 313, column: 2, scope: !154)
!475 = !DILocation(line: 317, column: 16, scope: !157)
!476 = !DILocation(line: 319, column: 10, scope: !157)
!477 = !DILocation(line: 319, column: 2, scope: !157)
!478 = !DILocation(line: 323, column: 14, scope: !160)
!479 = !DILocation(line: 325, column: 10, scope: !160)
!480 = !DILocation(line: 325, column: 2, scope: !160)
!481 = !DILocation(line: 329, column: 17, scope: !163)
!482 = !DILocation(line: 331, column: 10, scope: !163)
!483 = !DILocation(line: 331, column: 2, scope: !163)
!484 = !DILocation(line: 335, column: 12, scope: !166)
!485 = !DILocation(line: 337, column: 10, scope: !166)
!486 = !DILocation(line: 337, column: 2, scope: !166)
!487 = !DILocation(line: 341, column: 15, scope: !169)
!488 = !DILocation(line: 343, column: 10, scope: !169)
!489 = !DILocation(line: 343, column: 2, scope: !169)
!490 = !DILocation(line: 52, column: 3, scope: !172)
!491 = !DILocation(line: 55, column: 19, scope: !175)
!492 = !DILocation(line: 55, column: 28, scope: !175)
!493 = !DILocation(line: 63, column: 8, scope: !175)
!494 = !DILocation(line: 61, column: 9, scope: !175)
!495 = !DILocation(line: 72, column: 3, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !1, line: 63, column: 17)
!497 = distinct !DILexicalBlock(scope: !175, file: !1, line: 63, column: 8)
!498 = !DILocation(line: 85, column: 1, scope: !175)
!499 = !DILocation(line: 136, column: 18, scope: !183)
!500 = !DILocation(line: 136, column: 27, scope: !183)
!501 = !DILocation(line: 136, column: 38, scope: !183)
!502 = !DILocation(line: 138, column: 11, scope: !183)
!503 = !{!344, !344, i64 0}
!504 = !DILocation(line: 138, column: 3, scope: !183)
!505 = !DILocation(line: 140, column: 3, scope: !183)
!506 = !DILocation(line: 143, column: 19, scope: !190)
!507 = !DILocation(line: 143, column: 37, scope: !190)
!508 = !DILocation(line: 145, column: 7, scope: !190)
!509 = !DILocation(line: 146, column: 9, scope: !510)
!510 = distinct !DILexicalBlock(scope: !511, file: !1, line: 146, column: 9)
!511 = distinct !DILexicalBlock(scope: !512, file: !1, line: 145, column: 21)
!512 = distinct !DILexicalBlock(scope: !190, file: !1, line: 145, column: 7)
!513 = !DILocation(line: 146, column: 9, scope: !511)
!514 = !DILocation(line: 147, column: 7, scope: !510)
!515 = !DILocation(line: 148, column: 13, scope: !511)
!516 = !DILocation(line: 148, column: 5, scope: !511)
!517 = !DILocation(line: 149, column: 3, scope: !511)
!518 = !DILocation(line: 152, column: 7, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !1, line: 151, column: 9)
!520 = distinct !DILexicalBlock(scope: !512, file: !1, line: 150, column: 8)
!521 = !DILocation(line: 152, column: 12, scope: !519)
!522 = !DILocation(line: 153, column: 5, scope: !520)
!523 = !DILocation(line: 169, column: 7, scope: !524)
!524 = distinct !DILexicalBlock(scope: !190, file: !1, line: 169, column: 7)
!525 = !DILocation(line: 169, column: 7, scope: !190)
!526 = !DILocation(line: 170, column: 5, scope: !524)
!527 = !DILocation(line: 171, column: 7, scope: !190)
!528 = !DILocation(line: 172, column: 13, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !1, line: 171, column: 15)
!530 = distinct !DILexicalBlock(scope: !190, file: !1, line: 171, column: 7)
!531 = !DILocation(line: 172, column: 5, scope: !529)
!532 = !DILocation(line: 173, column: 12, scope: !529)
!533 = !DILocation(line: 173, column: 5, scope: !529)
!534 = !DILocation(line: 174, column: 22, scope: !535)
!535 = distinct !DILexicalBlock(scope: !529, file: !1, line: 174, column: 9)
!536 = !DILocation(line: 174, column: 17, scope: !535)
!537 = !DILocation(line: 298, column: 13, scope: !148, inlinedAt: !538)
!538 = distinct !DILocation(line: 174, column: 9, scope: !535)
!539 = !DILocation(line: 300, column: 17, scope: !148, inlinedAt: !538)
!540 = !DILocation(line: 174, column: 29, scope: !535)
!541 = !DILocation(line: 174, column: 9, scope: !529)
!542 = !DILocation(line: 175, column: 14, scope: !535)
!543 = !DILocation(line: 178, column: 3, scope: !190)
!544 = !DILocation(line: 181, column: 32, scope: !196)
!545 = !DILocation(line: 181, column: 42, scope: !196)
!546 = !DILocation(line: 181, column: 52, scope: !196)
!547 = !DILocation(line: 183, column: 7, scope: !548)
!548 = distinct !DILexicalBlock(scope: !196, file: !1, line: 183, column: 7)
!549 = !DILocation(line: 183, column: 22, scope: !548)
!550 = !DILocation(line: 183, column: 7, scope: !196)
!551 = !DILocation(line: 184, column: 22, scope: !548)
!552 = !DILocation(line: 184, column: 20, scope: !548)
!553 = !DILocation(line: 184, column: 5, scope: !548)
!554 = !DILocation(line: 186, column: 13, scope: !548)
!555 = !DILocation(line: 186, column: 5, scope: !548)
!556 = !DILocation(line: 188, column: 1, scope: !196)
!557 = !DILocation(line: 190, column: 34, scope: !203)
!558 = !DILocation(line: 190, column: 44, scope: !203)
!559 = !DILocation(line: 190, column: 54, scope: !203)
!560 = !DILocation(line: 192, column: 17, scope: !561)
!561 = distinct !DILexicalBlock(scope: !203, file: !1, line: 192, column: 7)
!562 = !DILocation(line: 192, column: 7, scope: !561)
!563 = !DILocation(line: 192, column: 33, scope: !561)
!564 = !DILocation(line: 192, column: 7, scope: !203)
!565 = !DILocation(line: 193, column: 5, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !1, line: 192, column: 39)
!567 = !DILocation(line: 194, column: 20, scope: !566)
!568 = !DILocation(line: 195, column: 3, scope: !566)
!569 = !DILocation(line: 196, column: 13, scope: !561)
!570 = !DILocation(line: 196, column: 5, scope: !561)
!571 = !DILocation(line: 198, column: 1, scope: !203)
!572 = !DILocation(line: 200, column: 22, scope: !208)
!573 = !DILocation(line: 200, column: 40, scope: !208)
!574 = !DILocation(line: 202, column: 11, scope: !208)
!575 = !DILocation(line: 203, column: 3, scope: !208)
!576 = !DILocation(line: 203, column: 25, scope: !208)
!577 = !DILocation(line: 204, column: 3, scope: !208)
!578 = !DILocation(line: 204, column: 11, scope: !208)
!579 = !DILocation(line: 204, column: 20, scope: !208)
!580 = !DILocation(line: 215, column: 3, scope: !208)
!581 = !DILocation(line: 218, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !208, file: !1, line: 218, column: 7)
!583 = !DILocation(line: 218, column: 7, scope: !208)
!584 = !DILocation(line: 219, column: 13, scope: !585)
!585 = distinct !DILexicalBlock(scope: !582, file: !1, line: 218, column: 23)
!586 = !DILocation(line: 219, column: 5, scope: !585)
!587 = !DILocation(line: 220, column: 12, scope: !585)
!588 = !DILocation(line: 220, column: 5, scope: !585)
!589 = !DILocation(line: 221, column: 5, scope: !585)
!590 = !DILocation(line: 222, column: 20, scope: !585)
!591 = !DILocation(line: 223, column: 3, scope: !585)
!592 = !DILocation(line: 205, column: 26, scope: !208)
!593 = !DILocation(line: 225, column: 6, scope: !208)
!594 = !DILocation(line: 226, column: 3, scope: !208)
!595 = !DILocation(line: 203, column: 12, scope: !208)
!596 = !DILocation(line: 235, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !1, line: 233, column: 18)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 230, column: 10)
!599 = distinct !DILexicalBlock(scope: !600, file: !1, line: 228, column: 9)
!600 = distinct !DILexicalBlock(scope: !601, file: !1, line: 227, column: 24)
!601 = distinct !DILexicalBlock(scope: !602, file: !1, line: 227, column: 3)
!602 = distinct !DILexicalBlock(scope: !208, file: !1, line: 227, column: 3)
!603 = !DILocation(line: 249, column: 7, scope: !597)
!604 = !DILocation(line: 227, column: 8, scope: !602)
!605 = !DILocation(line: 127, column: 26, scope: !307, inlinedAt: !606)
!606 = distinct !DILocation(line: 232, column: 11, scope: !598)
!607 = !DILocation(line: 227, column: 15, scope: !601)
!608 = !DILocation(line: 227, column: 3, scope: !602)
!609 = !DILocation(line: 87, column: 25, scope: !300, inlinedAt: !610)
!610 = distinct !DILocation(line: 229, column: 7, scope: !599)
!611 = !DILocation(line: 87, column: 34, scope: !300, inlinedAt: !610)
!612 = !DILocation(line: 87, column: 43, scope: !300, inlinedAt: !610)
!613 = !DILocation(line: 89, column: 13, scope: !300, inlinedAt: !610)
!614 = !DILocation(line: 89, column: 3, scope: !300, inlinedAt: !610)
!615 = !DILocation(line: 89, column: 16, scope: !300, inlinedAt: !610)
!616 = !DILocation(line: 229, column: 7, scope: !599)
!617 = !DILocation(line: 231, column: 8, scope: !598)
!618 = !DILocation(line: 129, column: 7, scope: !307, inlinedAt: !606)
!619 = !DILocation(line: 132, column: 18, scope: !307, inlinedAt: !606)
!620 = !DILocation(line: 132, column: 10, scope: !307, inlinedAt: !606)
!621 = !DILocation(line: 132, column: 3, scope: !307, inlinedAt: !606)
!622 = !DILocation(line: 132, column: 32, scope: !307, inlinedAt: !606)
!623 = !DILocation(line: 232, column: 11, scope: !598)
!624 = !DILocation(line: 132, column: 45, scope: !307, inlinedAt: !606)
!625 = !DILocation(line: 132, column: 38, scope: !307, inlinedAt: !606)
!626 = !DILocation(line: 132, column: 49, scope: !307, inlinedAt: !606)
!627 = !DILocation(line: 132, column: 36, scope: !307, inlinedAt: !606)
!628 = !DILocation(line: 205, column: 22, scope: !208)
!629 = !DILocation(line: 233, column: 14, scope: !598)
!630 = !DILocation(line: 233, column: 7, scope: !598)
!631 = !DILocation(line: 205, column: 17, scope: !208)
!632 = !DILocation(line: 236, column: 2, scope: !597)
!633 = !DILocation(line: 237, column: 2, scope: !597)
!634 = !DILocation(line: 205, column: 11, scope: !208)
!635 = !DILocation(line: 238, column: 27, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !1, line: 238, column: 2)
!637 = distinct !DILexicalBlock(scope: !597, file: !1, line: 238, column: 2)
!638 = !DILocation(line: 238, column: 22, scope: !636)
!639 = !DILocation(line: 238, column: 21, scope: !636)
!640 = !DILocation(line: 238, column: 2, scope: !637)
!641 = !DILocation(line: 89, column: 13, scope: !300, inlinedAt: !642)
!642 = distinct !DILocation(line: 239, column: 4, scope: !636)
!643 = !DILocation(line: 239, column: 19, scope: !636)
!644 = !DILocation(line: 87, column: 25, scope: !300, inlinedAt: !642)
!645 = !DILocation(line: 87, column: 34, scope: !300, inlinedAt: !642)
!646 = !DILocation(line: 87, column: 43, scope: !300, inlinedAt: !642)
!647 = !DILocation(line: 89, column: 3, scope: !300, inlinedAt: !642)
!648 = !DILocation(line: 89, column: 16, scope: !300, inlinedAt: !642)
!649 = !DILocation(line: 242, column: 7, scope: !597)
!650 = !DILocation(line: 243, column: 2, scope: !597)
!651 = !DILocation(line: 244, column: 2, scope: !597)
!652 = !DILocation(line: 245, column: 27, scope: !653)
!653 = distinct !DILexicalBlock(scope: !654, file: !1, line: 245, column: 2)
!654 = distinct !DILexicalBlock(scope: !597, file: !1, line: 245, column: 2)
!655 = !DILocation(line: 245, column: 22, scope: !653)
!656 = !DILocation(line: 245, column: 21, scope: !653)
!657 = !DILocation(line: 245, column: 2, scope: !654)
!658 = !DILocation(line: 89, column: 13, scope: !300, inlinedAt: !659)
!659 = distinct !DILocation(line: 246, column: 4, scope: !653)
!660 = !DILocation(line: 246, column: 19, scope: !653)
!661 = !DILocation(line: 87, column: 25, scope: !300, inlinedAt: !659)
!662 = !DILocation(line: 87, column: 34, scope: !300, inlinedAt: !659)
!663 = !DILocation(line: 87, column: 43, scope: !300, inlinedAt: !659)
!664 = !DILocation(line: 89, column: 3, scope: !300, inlinedAt: !659)
!665 = !DILocation(line: 89, column: 16, scope: !300, inlinedAt: !659)
!666 = !DILocation(line: 206, column: 11, scope: !208)
!667 = !DILocation(line: 250, column: 2, scope: !597)
!668 = !DILocation(line: 251, column: 2, scope: !597)
!669 = !DILocation(line: 252, column: 27, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !1, line: 252, column: 2)
!671 = distinct !DILexicalBlock(scope: !597, file: !1, line: 252, column: 2)
!672 = !DILocation(line: 252, column: 22, scope: !670)
!673 = !DILocation(line: 252, column: 21, scope: !670)
!674 = !DILocation(line: 252, column: 2, scope: !671)
!675 = !DILocation(line: 89, column: 13, scope: !300, inlinedAt: !676)
!676 = distinct !DILocation(line: 253, column: 4, scope: !670)
!677 = !DILocation(line: 253, column: 19, scope: !670)
!678 = !DILocation(line: 87, column: 25, scope: !300, inlinedAt: !676)
!679 = !DILocation(line: 87, column: 34, scope: !300, inlinedAt: !676)
!680 = !DILocation(line: 87, column: 43, scope: !300, inlinedAt: !676)
!681 = !DILocation(line: 89, column: 3, scope: !300, inlinedAt: !676)
!682 = !DILocation(line: 89, column: 16, scope: !300, inlinedAt: !676)
!683 = !DILocation(line: 256, column: 14, scope: !597)
!684 = !DILocation(line: 256, column: 7, scope: !597)
!685 = !DILocation(line: 203, column: 14, scope: !208)
!686 = !DILocation(line: 87, column: 25, scope: !300, inlinedAt: !687)
!687 = distinct !DILocation(line: 257, column: 2, scope: !597)
!688 = !DILocation(line: 87, column: 34, scope: !300, inlinedAt: !687)
!689 = !DILocation(line: 87, column: 43, scope: !300, inlinedAt: !687)
!690 = !DILocation(line: 89, column: 13, scope: !300, inlinedAt: !687)
!691 = !DILocation(line: 89, column: 3, scope: !300, inlinedAt: !687)
!692 = !DILocation(line: 89, column: 16, scope: !300, inlinedAt: !687)
!693 = !DILocation(line: 258, column: 2, scope: !597)
!694 = !DILocation(line: 260, column: 7, scope: !597)
!695 = !DILocation(line: 203, column: 20, scope: !208)
!696 = !DILocation(line: 261, column: 2, scope: !597)
!697 = !DILocation(line: 262, column: 2, scope: !597)
!698 = !DILocation(line: 227, column: 20, scope: !601)
!699 = !DILocation(line: 227, column: 3, scope: !601)
!700 = !DILocation(line: 268, column: 3, scope: !208)
!701 = !DILocation(line: 87, column: 25, scope: !300, inlinedAt: !702)
!702 = distinct !DILocation(line: 269, column: 3, scope: !208)
!703 = !DILocation(line: 87, column: 34, scope: !300, inlinedAt: !702)
!704 = !DILocation(line: 87, column: 43, scope: !300, inlinedAt: !702)
!705 = !DILocation(line: 89, column: 13, scope: !300, inlinedAt: !702)
!706 = !DILocation(line: 89, column: 3, scope: !300, inlinedAt: !702)
!707 = !DILocation(line: 89, column: 16, scope: !300, inlinedAt: !702)
!708 = !DILocation(line: 271, column: 3, scope: !208)
!709 = !DILocation(line: 92, column: 25, scope: !291)
!710 = !DILocation(line: 92, column: 34, scope: !291)
!711 = !DILocation(line: 92, column: 44, scope: !291)
!712 = !DILocation(line: 92, column: 50, scope: !291)
!713 = !DILocation(line: 94, column: 18, scope: !714)
!714 = distinct !DILexicalBlock(scope: !291, file: !1, line: 94, column: 3)
!715 = !DILocation(line: 94, column: 13, scope: !714)
!716 = !DILocation(line: 94, column: 11, scope: !714)
!717 = !DILocation(line: 94, column: 32, scope: !718)
!718 = distinct !DILexicalBlock(scope: !714, file: !1, line: 94, column: 3)
!719 = !DILocation(line: 94, column: 3, scope: !714)
!720 = !DILocation(line: 95, column: 10, scope: !291)
!721 = !DILocation(line: 95, column: 3, scope: !291)
!722 = !DILocation(line: 87, column: 25, scope: !300, inlinedAt: !723)
!723 = distinct !DILocation(line: 94, column: 43, scope: !718)
!724 = !DILocation(line: 87, column: 34, scope: !300, inlinedAt: !723)
!725 = !DILocation(line: 87, column: 43, scope: !300, inlinedAt: !723)
!726 = !DILocation(line: 89, column: 13, scope: !300, inlinedAt: !723)
!727 = !DILocation(line: 89, column: 3, scope: !300, inlinedAt: !723)
!728 = !DILocation(line: 89, column: 16, scope: !300, inlinedAt: !723)
!729 = !DILocation(line: 94, column: 39, scope: !718)
!730 = !DILocation(line: 95, column: 31, scope: !291)
!731 = !DILocation(line: 87, column: 25, scope: !300, inlinedAt: !732)
!732 = distinct !DILocation(line: 95, column: 14, scope: !291)
!733 = !DILocation(line: 87, column: 34, scope: !300, inlinedAt: !732)
!734 = !DILocation(line: 87, column: 43, scope: !300, inlinedAt: !732)
!735 = !DILocation(line: 89, column: 13, scope: !300, inlinedAt: !732)
!736 = !DILocation(line: 89, column: 3, scope: !300, inlinedAt: !732)
!737 = !DILocation(line: 89, column: 16, scope: !300, inlinedAt: !732)
!738 = !DILocation(line: 96, column: 1, scope: !291)
!739 = !DILocation(line: 280, column: 23, scope: !244)
!740 = !DILocation(line: 282, column: 11, scope: !244)
!741 = !DILocation(line: 283, column: 11, scope: !244)
!742 = !DILocation(line: 284, column: 1, scope: !244)
!743 = !DILocation(line: 286, column: 29, scope: !249)
!744 = !DILocation(line: 286, column: 35, scope: !249)
!745 = !DILocation(line: 288, column: 3, scope: !249)
!746 = !DILocation(line: 289, column: 10, scope: !249)
!747 = !DILocation(line: 290, column: 1, scope: !249)
!748 = !DILocation(line: 294, column: 10, scope: !253)
!749 = !DILocation(line: 294, column: 3, scope: !253)
!750 = !DILocation(line: 299, column: 3, scope: !254)
!751 = !DILocation(line: 302, column: 20, scope: !257)
!752 = !DILocation(line: 305, column: 8, scope: !257)
!753 = !DILocation(line: 308, column: 8, scope: !257)
!754 = !DILocation(line: 309, column: 9, scope: !755)
!755 = distinct !DILexicalBlock(scope: !257, file: !1, line: 309, column: 7)
!756 = !DILocation(line: 309, column: 7, scope: !257)
!757 = !DILocation(line: 311, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !257, file: !1, line: 311, column: 7)
!759 = !DILocation(line: 311, column: 14, scope: !758)
!760 = !DILocation(line: 312, column: 5, scope: !758)
!761 = !DILocation(line: 311, column: 7, scope: !257)
!762 = !DILocation(line: 314, column: 5, scope: !758)
!763 = !DILocation(line: 315, column: 3, scope: !257)
!764 = !DILocation(line: 305, column: 24, scope: !257)
!765 = !DILocation(line: 306, column: 7, scope: !257)
!766 = !DILocation(line: 317, column: 13, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !1, line: 316, column: 3)
!768 = distinct !DILexicalBlock(scope: !257, file: !1, line: 316, column: 3)
!769 = !DILocation(line: 318, column: 3, scope: !257)
!770 = !DILocation(line: 318, column: 16, scope: !257)
!771 = !DILocation(line: 319, column: 3, scope: !257)
!772 = !DILocation(line: 320, column: 11, scope: !257)
!773 = !DILocation(line: 305, column: 31, scope: !257)
!774 = !DILocation(line: 321, column: 11, scope: !257)
!775 = !DILocation(line: 322, column: 4, scope: !257)
!776 = !DILocation(line: 321, column: 3, scope: !257)
!777 = !DILocation(line: 323, column: 3, scope: !257)
!778 = !DILocation(line: 324, column: 3, scope: !257)
!779 = !DILocation(line: 325, column: 7, scope: !780)
!780 = distinct !DILexicalBlock(scope: !257, file: !1, line: 325, column: 7)
!781 = !DILocation(line: 325, column: 16, scope: !780)
!782 = !DILocation(line: 325, column: 13, scope: !780)
!783 = !DILocation(line: 325, column: 7, scope: !257)
!784 = !DILocation(line: 326, column: 54, scope: !780)
!785 = !DILocation(line: 326, column: 5, scope: !780)
!786 = !DILocation(line: 327, column: 1, scope: !257)
!787 = !DILocation(line: 331, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !269, file: !1, line: 331, column: 7)
!789 = !DILocation(line: 331, column: 13, scope: !788)
!790 = !DILocation(line: 331, column: 7, scope: !269)
!791 = !DILocation(line: 332, column: 13, scope: !788)
!792 = !DILocation(line: 333, column: 12, scope: !788)
!793 = !DILocation(line: 333, column: 6, scope: !788)
!794 = !DILocation(line: 333, column: 42, scope: !788)
!795 = !DILocation(line: 332, column: 5, scope: !788)
!796 = !DILocation(line: 334, column: 1, scope: !269)
!797 = !DILocation(line: 336, column: 21, scope: !272)
!798 = !DILocation(line: 336, column: 28, scope: !272)
!799 = !DILocation(line: 338, column: 3, scope: !272)
!800 = !DILocation(line: 340, column: 3, scope: !272)
!801 = !DILocation(line: 341, column: 1, scope: !272)
!802 = !DILocation(line: 343, column: 26, scope: !276)
!803 = !DILocation(line: 343, column: 33, scope: !276)
!804 = !DILocation(line: 345, column: 3, scope: !276)
!805 = !DILocation(line: 349, column: 28, scope: !280)
!806 = !DILocation(line: 349, column: 35, scope: !280)
!807 = !DILocation(line: 349, column: 46, scope: !280)
!808 = !DILocation(line: 349, column: 56, scope: !280)
!809 = !DILocation(line: 351, column: 3, scope: !280)
!810 = !DILocation(line: 364, column: 24, scope: !288)
!811 = !DILocation(line: 366, column: 3, scope: !288)
!812 = !DILocation(line: 367, column: 9, scope: !288)
!813 = !DILocation(line: 367, column: 8, scope: !288)
!814 = !DILocation(line: 369, column: 1, scope: !288)
