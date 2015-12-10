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
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !2
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !11
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !12
  store i8 %11, i8* %13, align 1, !tbaa !13
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #12
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  %1 = icmp sgt i32 %__signo, 32
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1
  %4 = shl i32 1, %3
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @isascii(i32 %_c) #3 {
  %1 = icmp ult i32 %_c, 128
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @__istype(i32 %_c, i64 %_f) #4 {
  %isascii = icmp ult i32 %_c, 128
  br i1 %isascii, label %1, label %8

; <label>:1                                       ; preds = %0
  %2 = sext i32 %_c to i64
  %3 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %2
  %4 = load i32* %3, align 4, !tbaa !14
  %5 = zext i32 %4 to i64
  %6 = and i64 %5, %_f
  %7 = icmp ne i64 %6, 0
  br label %11

; <label>:8                                       ; preds = %0
  %9 = tail call i32 @__maskrune(i32 %_c, i64 %_f) #12
  %10 = icmp ne i32 %9, 0
  br label %11

; <label>:11                                      ; preds = %8, %1
  %.sink = phi i1 [ %7, %1 ], [ %10, %8 ]
  %12 = zext i1 %.sink to i32
  ret i32 %12
}

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #1

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @__isctype(i32 %_c, i64 %_f) #5 {
  %1 = icmp ugt i32 %_c, 255
  br i1 %1, label %10, label %2

; <label>:2                                       ; preds = %0
  %3 = sext i32 %_c to i64
  %4 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %3
  %5 = load i32* %4, align 4, !tbaa !14
  %6 = zext i32 %5 to i64
  %7 = and i64 %6, %_f
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  br label %10

; <label>:10                                      ; preds = %0, %2
  %11 = phi i32 [ %9, %2 ], [ 0, %0 ]
  ret i32 %11
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @__wcwidth(i32 %_c) #4 {
  %1 = icmp eq i32 %_c, 0
  br i1 %1, label %11, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @__maskrune(i32 %_c, i64 3758358528) #12
  %4 = icmp ult i32 %3, 536870912
  br i1 %4, label %7, label %5

; <label>:5                                       ; preds = %2
  %6 = lshr i32 %3, 30
  br label %11

; <label>:7                                       ; preds = %2
  %8 = lshr i32 %3, 17
  %9 = and i32 %8, 2
  %10 = add nsw i32 %9, -1
  br label %11

; <label>:11                                      ; preds = %0, %7, %5
  %.0 = phi i32 [ %6, %5 ], [ %10, %7 ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isalnum(i32 %_c) #4 {
  %1 = tail call i32 @__istype(i32 %_c, i64 1280) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isalpha(i32 %_c) #4 {
  %1 = tail call i32 @__istype(i32 %_c, i64 256) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isblank(i32 %_c) #4 {
  %1 = tail call i32 @__istype(i32 %_c, i64 131072) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @iscntrl(i32 %_c) #4 {
  %1 = tail call i32 @__istype(i32 %_c, i64 512) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @isdigit(i32 %_c) #5 {
  %1 = icmp ugt i32 %_c, 255
  br i1 %1, label %__isctype.exit, label %2

; <label>:2                                       ; preds = %0
  %3 = sext i32 %_c to i64
  %4 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %3
  %5 = load i32* %4, align 4, !tbaa !14
  %6 = lshr i32 %5, 10
  %.lobit = and i32 %6, 1
  br label %__isctype.exit

__isctype.exit:                                   ; preds = %0, %2
  %7 = phi i32 [ %.lobit, %2 ], [ 0, %0 ]
  ret i32 %7
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isgraph(i32 %_c) #4 {
  %1 = tail call i32 @__istype(i32 %_c, i64 2048) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @islower(i32 %_c) #4 {
  %1 = tail call i32 @__istype(i32 %_c, i64 4096) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isprint(i32 %_c) #4 {
  %1 = tail call i32 @__istype(i32 %_c, i64 262144) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ispunct(i32 %_c) #4 {
  %1 = tail call i32 @__istype(i32 %_c, i64 8192) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isspace(i32 %_c) #4 {
  %1 = tail call i32 @__istype(i32 %_c, i64 16384) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isupper(i32 %_c) #4 {
  %1 = tail call i32 @__istype(i32 %_c, i64 32768) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @isxdigit(i32 %_c) #5 {
  %1 = icmp ugt i32 %_c, 255
  br i1 %1, label %__isctype.exit, label %2

; <label>:2                                       ; preds = %0
  %3 = sext i32 %_c to i64
  %4 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %3
  %5 = load i32* %4, align 4, !tbaa !14
  %6 = lshr i32 %5, 16
  %.lobit = and i32 %6, 1
  br label %__isctype.exit

__isctype.exit:                                   ; preds = %0, %2
  %7 = phi i32 [ %.lobit, %2 ], [ 0, %0 ]
  ret i32 %7
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @toascii(i32 %_c) #3 {
  %1 = and i32 %_c, 127
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @tolower(i32 %_c) #4 {
  %1 = tail call i32 @__tolower(i32 %_c) #12
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @__tolower(i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @toupper(i32 %_c) #4 {
  %1 = tail call i32 @__toupper(i32 %_c) #12
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @__toupper(i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @digittoint(i32 %_c) #4 {
  %1 = tail call i32 @__maskrune(i32 %_c, i64 15) #12
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ishexnumber(i32 %_c) #4 {
  %1 = tail call i32 @__istype(i32 %_c, i64 65536) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isideogram(i32 %_c) #4 {
  %1 = tail call i32 @__istype(i32 %_c, i64 524288) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isnumber(i32 %_c) #4 {
  %1 = tail call i32 @__istype(i32 %_c, i64 1024) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isphonogram(i32 %_c) #4 {
  %1 = tail call i32 @__istype(i32 %_c, i64 2097152) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isrune(i32 %_c) #4 {
  %1 = tail call i32 @__istype(i32 %_c, i64 4294967280) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isspecial(i32 %_c) #4 {
  %1 = tail call i32 @__istype(i32 %_c, i64 1048576) #13
  ret i32 %1
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @bDebugMode() #5 {
  %.b = load i1* @bDebug, align 1
  %1 = zext i1 %.b to i32
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @_where(i8* nocapture readnone %file, i32 %line) #4 {
  %.b = load i1* @_where.bFirst, align 1
  br i1 %.b, label %2, label %1

; <label>:1                                       ; preds = %0
  store i1 true, i1* @_where.bFirst, align 1
  br label %2

; <label>:2                                       ; preds = %1, %0
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @_halt(i8* %file, i32 %line, i8* %reason) #7 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([39 x i8]* @.str1, i64 0, i64 0), i8* %file, i32 %line, i8* %reason) #12
  tail call void @exit(i32 1) #14
  unreachable
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #8

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @quit_gmx(i32 %fatal_errno, i8* %msg) #7 {
  switch i32 %fatal_errno, label %9 [
    i32 0, label %1
    i32 -1, label %11
  ]

; <label>:1                                       ; preds = %0
  %2 = load %struct.__sFILE** @stdlog, align 8, !tbaa !15
  %3 = icmp eq %struct.__sFILE* %2, null
  br i1 %3, label %6, label %4

; <label>:4                                       ; preds = %1
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %2, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* %msg) #12
  br label %6

; <label>:6                                       ; preds = %1, %4
  %7 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* %msg) #12
  br label %12

; <label>:9                                       ; preds = %0
  %10 = tail call i32* @__error() #12
  store i32 %fatal_errno, i32* %10, align 4, !tbaa !14
  br label %11

; <label>:11                                      ; preds = %0, %9
  tail call void @perror(i8* %msg) #15
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = load %struct.__sFILE** @debug, align 8, !tbaa !15
  %14 = icmp eq %struct.__sFILE* %13, null
  br i1 %14, label %17, label %15

; <label>:15                                      ; preds = %12
  %16 = tail call i32 @fflush(%struct.__sFILE* %13) #12
  br label %17

; <label>:17                                      ; preds = %12, %15
  %.b = load i1* @bDebug, align 1
  br i1 %.b, label %18, label %28

; <label>:18                                      ; preds = %17
  %19 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0), i64 16, i64 1, %struct.__sFILE* %19)
  %21 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %22 = tail call i32 @fflush(%struct.__sFILE* %21) #12
  %23 = load %struct.__sFILE** @__stdinp, align 8, !tbaa !15
  %24 = tail call i32 @getc(%struct.__sFILE* %23) #12
  %25 = tail call i32 @__toupper(i32 %24) #12
  %26 = icmp eq i32 %25, 78
  br i1 %26, label %28, label %27

; <label>:27                                      ; preds = %18
  tail call void @abort() #14
  unreachable

; <label>:28                                      ; preds = %18, %17
  tail call void @exit(i32 -1) #14
  unreachable
}

; Function Attrs: optsize
declare i32* @__error() #1

; Function Attrs: nounwind optsize
declare void @perror(i8* nocapture readonly) #6

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #6

; Function Attrs: nounwind optsize
declare i32 @getc(%struct.__sFILE* nocapture) #6

; Function Attrs: noreturn optsize
declare void @abort() #8

; Function Attrs: nounwind optsize ssp uwtable
define void @_set_fatal_tmp_file(i8* nocapture readonly %fn, i8* %file, i32 %line) #4 {
  %1 = load i8** @fatal_tmp_file, align 8, !tbaa !15
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @strdup(i8* %fn) #12
  store i8* %4, i8** @fatal_tmp_file, align 8, !tbaa !15
  br label %8

; <label>:5                                       ; preds = %0
  %6 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), i8* %file, i32 %line) #12
  br label %8

; <label>:8                                       ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @_unset_fatal_tmp_file(i8* %fn, i8* %file, i32 %line) #4 {
  %1 = load i8** @fatal_tmp_file, align 8, !tbaa !15
  %2 = tail call i32 @strcmp(i8* %fn, i8* %1) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str6, i64 0, i64 0), i32 193, i8* %1) #12
  store i8* null, i8** @fatal_tmp_file, align 8, !tbaa !15
  br label %8

; <label>:5                                       ; preds = %0
  %6 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i8* %fn, i8* %file, i32 %line) #12
  br label %8

; <label>:8                                       ; preds = %5, %4
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #9

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @fatal_error(i32 %fatal_errno, i8* %fmt, ...) #7 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %msg = alloca [4096 x i8], align 16
  %ibuf = alloca [64 x i8], align 16
  %ifmt = alloca [64 x i8], align 16
  %len = alloca i32, align 4
  %1 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #10
  %2 = getelementptr inbounds [64 x i8]* %ibuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64, i8* %2) #10
  %3 = getelementptr inbounds [64 x i8]* %ifmt, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64, i8* %3) #10
  %4 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %4)
  %5 = load i8** @fatal_tmp_file, align 8, !tbaa !15
  %6 = icmp eq i8* %5, null
  br i1 %6, label %13, label %7

; <label>:7                                       ; preds = %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %9 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([31 x i8]* @.str8, i64 0, i64 0), i8* %5) #12
  %10 = load i8** @fatal_tmp_file, align 8, !tbaa !15
  %11 = call i32 @remove(i8* %10) #12
  %12 = load i8** @fatal_tmp_file, align 8, !tbaa !15
  call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str6, i64 0, i64 0), i32 221, i8* %12) #12
  store i8* null, i8** @fatal_tmp_file, align 8, !tbaa !15
  br label %13

; <label>:13                                      ; preds = %0, %7
  store i32 0, i32* %len, align 4, !tbaa !14
  call fastcc void @bputs(i8* %1, i32* %len, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i32 0) #13
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 1
  br label %18

; <label>:18                                      ; preds = %.loopexit, %13
  %storemerge = phi i8* [ %fmt, %13 ], [ %160, %.loopexit ]
  %19 = load i8* %storemerge, align 1, !tbaa !13
  switch i8 %19, label %20 [
    i8 0, label %161
    i8 37, label %25
  ]

; <label>:20                                      ; preds = %18
  %21 = load i32* %len, align 4, !tbaa !14
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %len, align 4, !tbaa !14
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %23
  store i8 %19, i8* %24, align 1, !tbaa !13
  br label %.loopexit

; <label>:25                                      ; preds = %18
  %26 = getelementptr inbounds i8* %storemerge, i64 1
  %27 = load i8* %26, align 1, !tbaa !13
  %28 = sext i8 %27 to i32
  %isdigittmp1.i = add nsw i32 %28, -48
  %isdigit2.i = icmp ult i32 %isdigittmp1.i, 10
  br i1 %isdigit2.i, label %.lr.ph.i, label %getfld.exit

.lr.ph.i:                                         ; preds = %25, %.lr.ph.i
  %29 = phi i8 [ %37, %.lr.ph.i ], [ %27, %25 ]
  %30 = phi i8* [ %31, %.lr.ph.i ], [ %storemerge, %25 ]
  %31 = phi i8* [ %33, %.lr.ph.i ], [ %26, %25 ]
  %fld.03.i = phi i32 [ %36, %.lr.ph.i ], [ 0, %25 ]
  %32 = mul nsw i32 %fld.03.i, 10
  %33 = getelementptr inbounds i8* %30, i64 2
  %34 = sext i8 %29 to i32
  %35 = add i32 %32, -48
  %36 = add i32 %35, %34
  %37 = load i8* %33, align 1, !tbaa !13
  %38 = sext i8 %37 to i32
  %isdigittmp.i = add nsw i32 %38, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %.lr.ph.i, label %getfld.exit

getfld.exit:                                      ; preds = %.lr.ph.i, %25
  %39 = phi i8 [ %27, %25 ], [ %37, %.lr.ph.i ]
  %40 = phi i8* [ %26, %25 ], [ %33, %.lr.ph.i ]
  %fld.0.lcssa.i = phi i32 [ 0, %25 ], [ %36, %.lr.ph.i ]
  %41 = sext i8 %39 to i32
  switch i32 %41, label %.loopexit [
    i32 120, label %42
    i32 100, label %69
    i32 102, label %96
    i32 99, label %123
    i32 115, label %142
  ]

; <label>:42                                      ; preds = %getfld.exit
  %43 = load i32* %14, align 16
  %44 = icmp ult i32 %43, 41
  br i1 %44, label %45, label %50

; <label>:45                                      ; preds = %42
  %46 = load i8** %15, align 16
  %47 = sext i32 %43 to i64
  %48 = getelementptr i8* %46, i64 %47
  %49 = add i32 %43, 8
  store i32 %49, i32* %14, align 16
  br label %53

; <label>:50                                      ; preds = %42
  %51 = load i8** %16, align 8
  %52 = getelementptr i8* %51, i64 8
  store i8* %52, i8** %16, align 8
  br label %53

; <label>:53                                      ; preds = %50, %45
  %.in4 = phi i8* [ %48, %45 ], [ %51, %50 ]
  %54 = bitcast i8* %.in4 to i32*
  %55 = load i32* %54, align 4
  %56 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %3, i32 0, i64 64, i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0), i32 %fld.0.lcssa.i) #12
  %57 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 64, i8* %3, i32 %55) #12
  %58 = call i64 @strlen(i8* %2) #12
  %59 = trunc i64 %58 to i32
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %.lr.ph15, label %.loopexit

.lr.ph15:                                         ; preds = %53
  %len.promoted16 = load i32* %len, align 4, !tbaa !14
  %61 = sext i32 %len.promoted16 to i64
  br label %62

; <label>:62                                      ; preds = %.lr.ph15, %62
  %indvars.iv30 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next31, %62 ]
  %indvars.iv28 = phi i64 [ %61, %.lr.ph15 ], [ %indvars.iv.next29, %62 ]
  %63 = getelementptr inbounds [64 x i8]* %ibuf, i64 0, i64 %indvars.iv30
  %64 = load i8* %63, align 1, !tbaa !13
  %indvars.iv.next29 = add i64 %indvars.iv28, 1
  %65 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %indvars.iv28
  store i8 %64, i8* %65, align 1, !tbaa !13
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %66 = call i64 @strlen(i8* %2) #12
  %sext33 = shl i64 %66, 32
  %67 = ashr exact i64 %sext33, 32
  %68 = icmp slt i64 %indvars.iv.next31, %67
  br i1 %68, label %62, label %..loopexit_crit_edge

; <label>:69                                      ; preds = %getfld.exit
  %70 = load i32* %14, align 16
  %71 = icmp ult i32 %70, 41
  br i1 %71, label %72, label %77

; <label>:72                                      ; preds = %69
  %73 = load i8** %15, align 16
  %74 = sext i32 %70 to i64
  %75 = getelementptr i8* %73, i64 %74
  %76 = add i32 %70, 8
  store i32 %76, i32* %14, align 16
  br label %80

; <label>:77                                      ; preds = %69
  %78 = load i8** %16, align 8
  %79 = getelementptr i8* %78, i64 8
  store i8* %79, i8** %16, align 8
  br label %80

; <label>:80                                      ; preds = %77, %72
  %.in3 = phi i8* [ %75, %72 ], [ %78, %77 ]
  %81 = bitcast i8* %.in3 to i32*
  %82 = load i32* %81, align 4
  %83 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %3, i32 0, i64 64, i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0), i32 %fld.0.lcssa.i) #12
  %84 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 64, i8* %3, i32 %82) #12
  %85 = call i64 @strlen(i8* %2) #12
  %86 = trunc i64 %85 to i32
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %.lr.ph11, label %.loopexit

.lr.ph11:                                         ; preds = %80
  %len.promoted12 = load i32* %len, align 4, !tbaa !14
  %88 = sext i32 %len.promoted12 to i64
  br label %89

; <label>:89                                      ; preds = %.lr.ph11, %89
  %indvars.iv26 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next27, %89 ]
  %indvars.iv24 = phi i64 [ %88, %.lr.ph11 ], [ %indvars.iv.next25, %89 ]
  %90 = getelementptr inbounds [64 x i8]* %ibuf, i64 0, i64 %indvars.iv26
  %91 = load i8* %90, align 1, !tbaa !13
  %indvars.iv.next25 = add i64 %indvars.iv24, 1
  %92 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %indvars.iv24
  store i8 %91, i8* %92, align 1, !tbaa !13
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %93 = call i64 @strlen(i8* %2) #12
  %sext32 = shl i64 %93, 32
  %94 = ashr exact i64 %sext32, 32
  %95 = icmp slt i64 %indvars.iv.next27, %94
  br i1 %95, label %89, label %..loopexit5_crit_edge

; <label>:96                                      ; preds = %getfld.exit
  %97 = load i32* %17, align 4
  %98 = icmp ult i32 %97, 161
  br i1 %98, label %99, label %104

; <label>:99                                      ; preds = %96
  %100 = load i8** %15, align 16
  %101 = sext i32 %97 to i64
  %102 = getelementptr i8* %100, i64 %101
  %103 = add i32 %97, 16
  store i32 %103, i32* %17, align 4
  br label %107

; <label>:104                                     ; preds = %96
  %105 = load i8** %16, align 8
  %106 = getelementptr i8* %105, i64 8
  store i8* %106, i8** %16, align 8
  br label %107

; <label>:107                                     ; preds = %104, %99
  %.in2 = phi i8* [ %102, %99 ], [ %105, %104 ]
  %108 = bitcast i8* %.in2 to double*
  %109 = load double* %108, align 8
  %110 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %3, i32 0, i64 64, i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i32 %fld.0.lcssa.i) #12
  %111 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 64, i8* %3, double %109) #12
  %112 = call i64 @strlen(i8* %2) #12
  %113 = trunc i64 %112 to i32
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %107
  %len.promoted = load i32* %len, align 4, !tbaa !14
  %115 = sext i32 %len.promoted to i64
  br label %116

; <label>:116                                     ; preds = %.lr.ph, %116
  %indvars.iv22 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next23, %116 ]
  %indvars.iv = phi i64 [ %115, %.lr.ph ], [ %indvars.iv.next, %116 ]
  %117 = getelementptr inbounds [64 x i8]* %ibuf, i64 0, i64 %indvars.iv22
  %118 = load i8* %117, align 1, !tbaa !13
  %indvars.iv.next = add i64 %indvars.iv, 1
  %119 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %indvars.iv
  store i8 %118, i8* %119, align 1, !tbaa !13
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %120 = call i64 @strlen(i8* %2) #12
  %sext = shl i64 %120, 32
  %121 = ashr exact i64 %sext, 32
  %122 = icmp slt i64 %indvars.iv.next23, %121
  br i1 %122, label %116, label %..loopexit6_crit_edge

; <label>:123                                     ; preds = %getfld.exit
  %124 = load i32* %14, align 16
  %125 = icmp ult i32 %124, 41
  br i1 %125, label %126, label %131

; <label>:126                                     ; preds = %123
  %127 = load i8** %15, align 16
  %128 = sext i32 %124 to i64
  %129 = getelementptr i8* %127, i64 %128
  %130 = add i32 %124, 8
  store i32 %130, i32* %14, align 16
  br label %134

; <label>:131                                     ; preds = %123
  %132 = load i8** %16, align 8
  %133 = getelementptr i8* %132, i64 8
  store i8* %133, i8** %16, align 8
  br label %134

; <label>:134                                     ; preds = %131, %126
  %.in1 = phi i8* [ %129, %126 ], [ %132, %131 ]
  %135 = bitcast i8* %.in1 to i32*
  %136 = load i32* %135, align 4
  %137 = trunc i32 %136 to i8
  %138 = load i32* %len, align 4, !tbaa !14
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %len, align 4, !tbaa !14
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %140
  store i8 %137, i8* %141, align 1, !tbaa !13
  br label %.loopexit

; <label>:142                                     ; preds = %getfld.exit
  %143 = load i32* %14, align 16
  %144 = icmp ult i32 %143, 41
  br i1 %144, label %145, label %150

; <label>:145                                     ; preds = %142
  %146 = load i8** %15, align 16
  %147 = sext i32 %143 to i64
  %148 = getelementptr i8* %146, i64 %147
  %149 = add i32 %143, 8
  store i32 %149, i32* %14, align 16
  br label %153

; <label>:150                                     ; preds = %142
  %151 = load i8** %16, align 8
  %152 = getelementptr i8* %151, i64 8
  store i8* %152, i8** %16, align 8
  br label %153

; <label>:153                                     ; preds = %150, %145
  %.in = phi i8* [ %148, %145 ], [ %151, %150 ]
  %154 = bitcast i8* %.in to i8**
  %155 = load i8** %154, align 8
  call fastcc void @bputs(i8* %1, i32* %len, i8* %155, i32 %fld.0.lcssa.i) #13
  br label %.loopexit

..loopexit_crit_edge:                             ; preds = %62
  %156 = trunc i64 %indvars.iv.next29 to i32
  store i32 %156, i32* %len, align 4, !tbaa !14
  br label %.loopexit

..loopexit5_crit_edge:                            ; preds = %89
  %157 = trunc i64 %indvars.iv.next25 to i32
  store i32 %157, i32* %len, align 4, !tbaa !14
  br label %.loopexit

..loopexit6_crit_edge:                            ; preds = %116
  %158 = trunc i64 %indvars.iv.next to i32
  store i32 %158, i32* %len, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %107, %..loopexit6_crit_edge, %80, %..loopexit5_crit_edge, %53, %..loopexit_crit_edge, %20, %getfld.exit, %153, %134
  %159 = phi i8* [ %storemerge, %20 ], [ %40, %getfld.exit ], [ %40, %153 ], [ %40, %134 ], [ %40, %..loopexit_crit_edge ], [ %40, %53 ], [ %40, %..loopexit5_crit_edge ], [ %40, %80 ], [ %40, %..loopexit6_crit_edge ], [ %40, %107 ]
  %160 = getelementptr inbounds i8* %159, i64 1
  br label %18

; <label>:161                                     ; preds = %18
  call void @llvm.va_end(i8* %4)
  %162 = load i32* %len, align 4, !tbaa !14
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [4096 x i8]* %msg, i64 0, i64 %163
  store i8 0, i8* %164, align 1, !tbaa !13
  call void @quit_gmx(i32 %fatal_errno, i8* %1) #13
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #10

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind optsize
declare i32 @remove(i8* nocapture readonly) #6

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @bputs(i8* nocapture %msg, i32* nocapture %len, i8* nocapture readonly %s, i32 %fld) #4 {
  %1 = tail call i64 @strlen(i8* %s) #12
  %2 = trunc i64 %1 to i32
  %3 = sub nsw i32 %fld, %2
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph5, label %.preheader

.preheader:                                       ; preds = %.lr.ph5, %0
  %5 = load i8* %s, align 1, !tbaa !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %._crit_edge, label %.lr.ph

.lr.ph5:                                          ; preds = %0, %.lr.ph5
  %.03 = phi i32 [ %11, %.lr.ph5 ], [ %3, %0 ]
  %7 = load i32* %len, align 4, !tbaa !14
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %len, align 4, !tbaa !14
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds i8* %msg, i64 %9
  store i8 32, i8* %10, align 1, !tbaa !13
  %11 = add nsw i32 %.03, -1
  %12 = icmp sgt i32 %.03, 1
  br i1 %12, label %.lr.ph5, label %.preheader

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %13 = phi i8 [ %19, %.lr.ph ], [ %5, %.preheader ]
  %.012 = phi i8* [ %14, %.lr.ph ], [ %s, %.preheader ]
  %14 = getelementptr inbounds i8* %.012, i64 1
  %15 = load i32* %len, align 4, !tbaa !14
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %len, align 4, !tbaa !14
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8* %msg, i64 %17
  store i8 %13, i8* %18, align 1, !tbaa !13
  %19 = load i8* %14, align 1, !tbaa !13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  ret void
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind optsize ssp uwtable
define void @init_warning(i32 %maxwarning) #4 {
  store i32 %maxwarning, i32* @maxwarn, align 4, !tbaa !14
  store i32 0, i32* @nwarn, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @set_warning_line(i8* %s, i32 %line) #4 {
  %1 = tail call i8* @__strcpy_chk(i8* getelementptr inbounds ([256 x i8]* @filenm, i64 0, i64 0), i8* %s, i64 256) #12
  store i32 %line, i32* @lineno, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #6

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @get_warning_line() #5 {
  %1 = load i32* @lineno, align 4, !tbaa !14
  ret i32 %1
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @get_warning_file() #3 {
  ret i8* getelementptr inbounds ([256 x i8]* @filenm, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define void @warning(i8* %s) #4 {
  %linenobuf = alloca [32 x i8], align 16
  %1 = load i32* @nwarn, align 4, !tbaa !14
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @nwarn, align 4, !tbaa !14
  %3 = icmp eq i8* %s, null
  %.s = select i1 %3, i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i8* %s
  %4 = load i32* @lineno, align 4, !tbaa !14
  %5 = icmp eq i32 %4, -1
  %6 = getelementptr inbounds [32 x i8]* %linenobuf, i64 0, i64 0
  br i1 %5, label %9, label %7

; <label>:7                                       ; preds = %0
  %8 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %6, i32 0, i64 32, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i32 %4) #12
  br label %11

; <label>:9                                       ; preds = %0
  %10 = bitcast [32 x i8]* %linenobuf to i64*
  store i64 31093567915781749, i64* %10, align 16
  br label %11

; <label>:11                                      ; preds = %9, %7
  %12 = call i64 @strlen(i8* %.s) #12
  %13 = add i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str6, i64 0, i64 0), i32 315, i32 %14, i32 1) #12
  %16 = bitcast i8* %15 to i16*
  store i16 8224, i16* %16, align 1
  %17 = getelementptr inbounds i8* %15, i64 2
  store i8 0, i8* %17, align 1, !tbaa !13
  %18 = call i64 @llvm.objectsize.i64.p0i8(i8* %15, i1 false)
  %19 = call i8* @__strcat_chk(i8* %15, i8* %.s, i64 %18) #12
  %20 = call i8* @wrap_lines(i8* %15, i32 79, i32 2) #12
  %21 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %22 = load i32* @nwarn, align 4, !tbaa !14
  %23 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %21, i8* getelementptr inbounds ([35 x i8]* @.str16, i64 0, i64 0), i32 %22, i8* getelementptr inbounds ([256 x i8]* @filenm, i64 0, i64 0), i8* %6, i8* %20) #12
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str6, i64 0, i64 0), i32 323, i8* %15) #12
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str6, i64 0, i64 0), i32 324, i8* %20) #12
  %24 = load i32* @nwarn, align 4, !tbaa !14
  %25 = load i32* @maxwarn, align 4, !tbaa !14
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %29, label %27

; <label>:27                                      ; preds = %11
  %28 = call i8* @Program() #12
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str18, i64 0, i64 0), i8* %28) #13
  unreachable

; <label>:29                                      ; preds = %11
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize
declare i8* @__strcat_chk(i8*, i8*, i64) #6

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #11

; Function Attrs: optsize
declare i8* @wrap_lines(i8*, i32, i32) #1

; Function Attrs: optsize
declare i8* @Program() #1

; Function Attrs: nounwind optsize ssp uwtable
define void @print_warn_num() #4 {
  %1 = load i32* @nwarn, align 4, !tbaa !14
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %5 = icmp eq i32 %1, 1
  %6 = select i1 %5, i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0)
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0)
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([23 x i8]* @.str19, i64 0, i64 0), i8* %6, i32 %1, i8* %7) #12
  br label %9

; <label>:9                                       ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @_too_few(i8* %fn, i32 %line) #4 {
  %1 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i32 0, i64 1024, i8* getelementptr inbounds ([53 x i8]* @.str24, i64 0, i64 0), i8* %fn, i32 %line) #12
  tail call void @warning(i8* null) #13
  ret void
}

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @_invalid_case(i8* %fn, i32 %line) #7 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([51 x i8]* @.str25, i64 0, i64 0), i8* %fn, i32 %line) #13
  unreachable
}

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @_unexpected_eof(i8* %fn, i32 %line, i8* %srcfn, i32 %srcline) #7 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([71 x i8]* @.str26, i64 0, i64 0), i8* %fn, i32 %line, i8* %srcfn, i32 %srcline) #13
  unreachable
}

; Function Attrs: nounwind optsize ssp uwtable
define void @init_debug(i8* %dbgfile) #4 {
  tail call void @no_buffers() #12
  %1 = tail call %struct.__sFILE* @ffopen(i8* %dbgfile, i8* getelementptr inbounds ([2 x i8]* @.str27, i64 0, i64 0)) #12
  store %struct.__sFILE* %1, %struct.__sFILE** @debug, align 8, !tbaa !15
  store i1 true, i1* @bDebug, align 1
  ret void
}

; Function Attrs: optsize
declare void @no_buffers() #1

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #10

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { noreturn nounwind optsize }
attributes #15 = { cold nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 12}
!3 = !{!"__sFILE", !4, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 18, !9, i64 24, !7, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !9, i64 88, !4, i64 104, !7, i64 112, !5, i64 116, !5, i64 119, !9, i64 120, !7, i64 136, !10, i64 144}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"__sbuf", !4, i64 0, !7, i64 8}
!10 = !{!"long long", !5, i64 0}
!11 = !{!3, !7, i64 40}
!12 = !{!3, !4, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!4, !4, i64 0}
