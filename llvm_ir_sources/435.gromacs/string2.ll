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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #10
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @isascii(i32 %_c) #2 {
  %1 = icmp ult i32 %_c, 128
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @__istype(i32 %_c, i64 %_f) #3 {
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
  %9 = tail call i32 @__maskrune(i32 %_c, i64 %_f) #10
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
define i32 @__isctype(i32 %_c, i64 %_f) #4 {
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
define i32 @__wcwidth(i32 %_c) #3 {
  %1 = icmp eq i32 %_c, 0
  br i1 %1, label %11, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @__maskrune(i32 %_c, i64 3758358528) #10
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
define i32 @isalnum(i32 %_c) #3 {
  %1 = tail call i32 @__istype(i32 %_c, i64 1280) #11
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isalpha(i32 %_c) #3 {
  %1 = tail call i32 @__istype(i32 %_c, i64 256) #11
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isblank(i32 %_c) #3 {
  %1 = tail call i32 @__istype(i32 %_c, i64 131072) #11
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @iscntrl(i32 %_c) #3 {
  %1 = tail call i32 @__istype(i32 %_c, i64 512) #11
  ret i32 %1
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @isdigit(i32 %_c) #4 {
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
define i32 @isgraph(i32 %_c) #3 {
  %1 = tail call i32 @__istype(i32 %_c, i64 2048) #11
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @islower(i32 %_c) #3 {
  %1 = tail call i32 @__istype(i32 %_c, i64 4096) #11
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isprint(i32 %_c) #3 {
  %1 = tail call i32 @__istype(i32 %_c, i64 262144) #11
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ispunct(i32 %_c) #3 {
  %1 = tail call i32 @__istype(i32 %_c, i64 8192) #11
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isspace(i32 %_c) #3 {
  %1 = tail call i32 @__istype(i32 %_c, i64 16384) #11
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isupper(i32 %_c) #3 {
  %1 = tail call i32 @__istype(i32 %_c, i64 32768) #11
  ret i32 %1
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @isxdigit(i32 %_c) #4 {
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
define i32 @toascii(i32 %_c) #2 {
  %1 = and i32 %_c, 127
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @tolower(i32 %_c) #3 {
  %1 = tail call i32 @__tolower(i32 %_c) #10
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @__tolower(i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @toupper(i32 %_c) #3 {
  %1 = tail call i32 @__toupper(i32 %_c) #10
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @__toupper(i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @digittoint(i32 %_c) #3 {
  %1 = tail call i32 @__maskrune(i32 %_c, i64 15) #10
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ishexnumber(i32 %_c) #3 {
  %1 = tail call i32 @__istype(i32 %_c, i64 65536) #11
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isideogram(i32 %_c) #3 {
  %1 = tail call i32 @__istype(i32 %_c, i64 524288) #11
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isnumber(i32 %_c) #3 {
  %1 = tail call i32 @__istype(i32 %_c, i64 1024) #11
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isphonogram(i32 %_c) #3 {
  %1 = tail call i32 @__istype(i32 %_c, i64 2097152) #11
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isrune(i32 %_c) #3 {
  %1 = tail call i32 @__istype(i32 %_c, i64 4294967280) #11
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @isspecial(i32 %_c) #3 {
  %1 = tail call i32 @__istype(i32 %_c, i64 1048576) #11
  ret i32 %1
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #5 {
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

; Function Attrs: nounwind optsize ssp uwtable
define i32 @continuing(i8* %s) #3 {
  tail call void @rtrim(i8* %s) #11
  %1 = tail call i64 @strlen(i8* %s) #10
  %2 = trunc i64 %1 to i32
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %11

; <label>:4                                       ; preds = %0
  %5 = shl i64 %1, 32
  %sext = add i64 %5, -4294967296
  %6 = ashr exact i64 %sext, 32
  %7 = getelementptr inbounds i8* %s, i64 %6
  %8 = load i8* %7, align 1, !tbaa !13
  %9 = icmp eq i8 %8, 92
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %4
  store i8 0, i8* %7, align 1, !tbaa !13
  br label %11

; <label>:11                                      ; preds = %0, %4, %10
  %.0 = phi i32 [ 1, %10 ], [ 0, %4 ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @rtrim(i8* %str) #3 {
  %1 = icmp eq i8* %str, null
  br i1 %1, label %.critedge, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i64 @strlen(i8* %str) #10
  %4 = add i64 %3, 4294967295
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %2
  %sext = shl i64 %4, 32
  %7 = ashr exact i64 %sext, 32
  br label %8

; <label>:8                                       ; preds = %.lr.ph, %.critedge1
  %indvars.iv = phi i64 [ %7, %.lr.ph ], [ %indvars.iv.next, %.critedge1 ]
  %9 = getelementptr inbounds i8* %str, i64 %indvars.iv
  %10 = load i8* %9, align 1, !tbaa !13
  switch i8 %10, label %.critedge [
    i8 32, label %.critedge1
    i8 9, label %.critedge1
  ]

.critedge1:                                       ; preds = %8, %8
  store i8 0, i8* %9, align 1, !tbaa !13
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %11 = icmp sgt i64 %indvars.iv, 1
  br i1 %11, label %8, label %.critedge

.critedge:                                        ; preds = %.critedge1, %8, %2, %0
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define i8* @fgets2(i8* %line, i32 %n, %struct.__sFILE* nocapture %stream) #3 {
  %1 = tail call i8* @fgets(i8* %line, i32 %n, %struct.__sFILE* %stream) #10
  %2 = icmp eq i8* %1, null
  br i1 %2, label %7, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @strchr(i8* %line, i32 10) #10
  %5 = icmp eq i8* %4, null
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %3
  store i8 0, i8* %4, align 1, !tbaa !13
  br label %7

; <label>:7                                       ; preds = %6, %3, %0
  %.0 = phi i8* [ null, %0 ], [ %line, %3 ], [ %line, %6 ]
  ret i8* %.0
}

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @strip_comment(i8* %line) #3 {
  %1 = icmp eq i8* %line, null
  br i1 %1, label %6, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i8* @strchr(i8* %line, i32 59) #10
  %4 = icmp eq i8* %3, null
  br i1 %4, label %6, label %5

; <label>:5                                       ; preds = %2
  store i8 0, i8* %3, align 1, !tbaa !13
  br label %6

; <label>:6                                       ; preds = %2, %0, %5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @upstring(i8* nocapture %str) #3 {
  %1 = tail call i64 @strlen(i8* %str) #10
  %2 = trunc i64 %1 to i32
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %4 = getelementptr inbounds i8* %str, i64 %indvars.iv
  %5 = load i8* %4, align 1, !tbaa !13
  %6 = sext i8 %5 to i32
  %7 = tail call i32 @__toupper(i32 %6) #10
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %4, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = tail call i64 @strlen(i8* %str) #10
  %sext = shl i64 %9, 32
  %10 = ashr exact i64 %sext, 32
  %11 = icmp slt i64 %indvars.iv.next, %10
  br i1 %11, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ltrim(i8* %str) #3 {
  %1 = icmp eq i8* %str, null
  br i1 %1, label %10, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i8* @strdup(i8* %str) #10
  br label %4

; <label>:4                                       ; preds = %.critedge, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %2 ]
  %5 = getelementptr inbounds i8* %3, i64 %indvars.iv
  %6 = load i8* %5, align 1, !tbaa !13
  switch i8 %6, label %7 [
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

.critedge:                                        ; preds = %4, %4
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br label %4

; <label>:7                                       ; preds = %4
  %8 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %str, i1 false)
  %9 = tail call i8* @__strcpy_chk(i8* %str, i8* %5, i64 %8) #10
  tail call void @free(i8* %3) #11
  br label %10

; <label>:10                                      ; preds = %0, %7
  ret void
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
  tail call void @ltrim(i8* %str) #11
  tail call void @rtrim(i8* %str) #11
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @nice_header(%struct.__sFILE* nocapture %out, i8* %fn) #3 {
  %clock = alloca i64, align 8
  %1 = tail call i64 @time(i64* null) #10
  store i64 %1, i64* %clock, align 8, !tbaa !15
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32 59) #10
  %3 = icmp ne i8* %fn, null
  %4 = select i1 %3, i8* %fn, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([28 x i8]* @.str2, i64 0, i64 0), i32 59, i8* %4) #10
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str3, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i32 0) #10
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)) #10
  %8 = call i8* @ctime(i64* %clock) #10
  %9 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i32 59, i8* %8) #10
  %10 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32 59) #10
  ret void
}

; Function Attrs: optsize
declare i64 @time(i64*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: optsize
declare i8* @ctime(i64*) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @strcasecmp_min(i8* nocapture readonly %str1, i8* nocapture readonly %str2) #3 {
  br label %.critedge.outer

.critedge.outer:                                  ; preds = %15, %0
  %.03.ph = phi i8* [ %6, %15 ], [ %str2, %0 ]
  %.02.ph = phi i8* [ %1, %15 ], [ %str1, %0 ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge, %.critedge, %.critedge.outer
  %.02 = phi i8* [ %.02.ph, %.critedge.outer ], [ %1, %.critedge ], [ %1, %.critedge ]
  %1 = getelementptr inbounds i8* %.02, i64 1
  %2 = load i8* %.02, align 1, !tbaa !13
  %3 = sext i8 %2 to i32
  %4 = tail call i32 @__toupper(i32 %3) #10
  %sext = shl i32 %4, 24
  %5 = ashr exact i32 %sext, 24
  switch i32 %5, label %.critedge1 [
    i32 45, label %.critedge
    i32 95, label %.critedge
  ]

.critedge1:                                       ; preds = %.critedge1, %.critedge1, %.critedge
  %.1 = phi i8* [ %.03.ph, %.critedge ], [ %6, %.critedge1 ], [ %6, %.critedge1 ]
  %6 = getelementptr inbounds i8* %.1, i64 1
  %7 = load i8* %.1, align 1, !tbaa !13
  %8 = sext i8 %7 to i32
  %9 = tail call i32 @__toupper(i32 %8) #10
  %sext4 = shl i32 %9, 24
  %10 = ashr exact i32 %sext4, 24
  switch i32 %10, label %11 [
    i32 45, label %.critedge1
    i32 95, label %.critedge1
  ]

; <label>:11                                      ; preds = %.critedge1
  %12 = icmp eq i32 %5, %10
  br i1 %12, label %15, label %13

; <label>:13                                      ; preds = %11
  %14 = sub nsw i32 %5, %10
  br label %.loopexit

; <label>:15                                      ; preds = %11
  %16 = trunc i32 %4 to i8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %.loopexit, label %.critedge.outer

.loopexit:                                        ; preds = %15, %13
  %.0 = phi i32 [ %14, %13 ], [ 0, %15 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gmx_strcasecmp(i8* nocapture readonly %str1, i8* nocapture readonly %str2) #3 {
  br label %1

; <label>:1                                       ; preds = %13, %0
  %.02 = phi i8* [ %str2, %0 ], [ %15, %13 ]
  %.01 = phi i8* [ %str1, %0 ], [ %16, %13 ]
  %2 = load i8* %.01, align 1, !tbaa !13
  %3 = sext i8 %2 to i32
  %4 = tail call i32 @__toupper(i32 %3) #10
  %5 = load i8* %.02, align 1, !tbaa !13
  %6 = sext i8 %5 to i32
  %7 = tail call i32 @__toupper(i32 %6) #10
  %sext = shl i32 %4, 24
  %8 = ashr exact i32 %sext, 24
  %sext3 = shl i32 %7, 24
  %9 = ashr exact i32 %sext3, 24
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %13, label %11

; <label>:11                                      ; preds = %1
  %12 = sub nsw i32 %8, %9
  br label %.loopexit

; <label>:13                                      ; preds = %1
  %14 = trunc i32 %4 to i8
  %15 = getelementptr inbounds i8* %.02, i64 1
  %16 = getelementptr inbounds i8* %.01, i64 1
  %17 = icmp eq i8 %14, 0
  br i1 %17, label %.loopexit, label %1

.loopexit:                                        ; preds = %13, %11
  %.0 = phi i32 [ %12, %11 ], [ 0, %13 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gmx_strncasecmp(i8* nocapture readonly %str1, i8* nocapture readonly %str2, i32 %n) #3 {
  %1 = icmp eq i32 %n, 0
  br i1 %1, label %.critedge, label %.preheader

.preheader:                                       ; preds = %0, %13
  %.04 = phi i8* [ %14, %13 ], [ %str2, %0 ]
  %.03 = phi i32 [ %16, %13 ], [ %n, %0 ]
  %.02 = phi i8* [ %15, %13 ], [ %str1, %0 ]
  %2 = load i8* %.02, align 1, !tbaa !13
  %3 = sext i8 %2 to i32
  %4 = tail call i32 @__toupper(i32 %3) #10
  %5 = load i8* %.04, align 1, !tbaa !13
  %6 = sext i8 %5 to i32
  %7 = tail call i32 @__toupper(i32 %6) #10
  %sext = shl i32 %4, 24
  %8 = ashr exact i32 %sext, 24
  %sext5 = shl i32 %7, 24
  %9 = ashr exact i32 %sext5, 24
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %13, label %11

; <label>:11                                      ; preds = %.preheader
  %12 = sub nsw i32 %8, %9
  br label %.critedge

; <label>:13                                      ; preds = %.preheader
  %14 = getelementptr inbounds i8* %.04, i64 1
  %15 = getelementptr inbounds i8* %.02, i64 1
  %16 = add nsw i32 %.03, -1
  %17 = icmp ne i32 %8, 0
  %18 = icmp ne i32 %16, 0
  %or.cond = and i1 %18, %17
  br i1 %or.cond, label %.preheader, label %.critedge

.critedge:                                        ; preds = %13, %0, %11
  %.0 = phi i32 [ %12, %11 ], [ 0, %0 ], [ 0, %13 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @gmx_strdup(i8* %src) #3 {
  %1 = tail call i64 @strlen(i8* %src) #10
  %2 = add i64 %1, 1
  %3 = trunc i64 %2 to i32
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str7, i64 0, i64 0), i32 227, i32 %3, i32 1) #10
  %5 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %4, i1 false)
  %6 = tail call i8* @__strcpy_chk(i8* %4, i8* %src, i64 %5) #10
  ret i8* %4
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i8* @wrap_lines(i8* nocapture readonly %buf, i32 %line_width, i32 %indent) #3 {
  %1 = tail call i64 @strlen(i8* %buf) #10
  %2 = add i64 %1, 1
  %3 = trunc i64 %2 to i32
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str7, i64 0, i64 0), i32 253, i32 %3, i32 1) #10
  %5 = icmp sgt i32 %indent, 0
  %6 = icmp eq i32 %indent, 0
  %7 = add i32 %indent, 1
  %8 = add i32 %indent, -1
  %9 = zext i32 %8 to i64
  %10 = add nuw nsw i64 %9, 1
  br label %11

; <label>:11                                      ; preds = %67, %0
  %b2.0 = phi i8* [ %4, %0 ], [ %b2.3, %67 ]
  %i0.0 = phi i32 [ 0, %0 ], [ %i0.4, %67 ]
  %i2.0 = phi i32 [ 0, %0 ], [ %i2.5, %67 ]
  %b2len.0 = phi i32 [ %3, %0 ], [ %b2len.3, %67 ]
  %lspace.0 = phi i32 [ 0, %0 ], [ %lspace.1.lcssa, %67 ]
  %bFirst.0 = phi i32 [ 1, %0 ], [ %bFirst.2, %67 ]
  %.0 = phi i32 [ %line_width, %0 ], [ %.2, %67 ]
  %12 = sext i32 %i0.0 to i64
  %13 = getelementptr inbounds i8* %buf, i64 %12
  %14 = load i8* %13, align 1, !tbaa !13
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds i8* %buf, i64 %12
  br i1 %15, label %.thread, label %.lr.ph39

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
  %19 = add i32 %i2.1934, 1
  %20 = sext i32 %i2.1934 to i64
  %21 = getelementptr inbounds i8* %b2.1637, i64 %20
  store i8 %18, i8* %21, align 1, !tbaa !13
  %22 = load i8* %17, align 1, !tbaa !13
  %23 = icmp eq i8 %22, 32
  %24 = trunc i64 %indvars.iv30 to i32
  %i.0.lspace.1 = select i1 %23, i32 %24, i32 %lspace.11132
  %i2.1.l2space.0 = select i1 %23, i32 %i2.1934, i32 %l2space.01231
  %25 = icmp eq i8 %22, 10
  %26 = add nsw i32 %i.0736, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8* %buf, i64 %27
  br i1 %25, label %29, label %.loopexit

; <label>:29                                      ; preds = %.lr.ph39
  %30 = load i8* %28, align 1, !tbaa !13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %.loopexit, label %32

; <label>:32                                      ; preds = %29
  %33 = add nsw i32 %b2len.11033, %indent
  %34 = tail call i8* @save_realloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str7, i64 0, i64 0), i32 271, i8* %b2.1637, i32 %33) #10
  br i1 %5, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %32
  %35 = sext i32 %19 to i64
  %scevgep = getelementptr i8* %34, i64 %35
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 32, i64 %10, i32 1, i1 false)
  %36 = add i32 %7, %i2.1934
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph39, %32, %.lr.ph, %29
  %b2.2 = phi i8* [ %b2.1637, %29 ], [ %34, %.lr.ph ], [ %34, %32 ], [ %b2.1637, %.lr.ph39 ]
  %i0.2 = phi i32 [ %i0.1835, %29 ], [ %26, %.lr.ph ], [ %26, %32 ], [ %i0.1835, %.lr.ph39 ]
  %i2.3 = phi i32 [ %19, %29 ], [ %36, %.lr.ph ], [ %19, %32 ], [ %19, %.lr.ph39 ]
  %b2len.2 = phi i32 [ %b2len.11033, %29 ], [ %33, %.lr.ph ], [ %33, %32 ], [ %b2len.11033, %.lr.ph39 ]
  %37 = sub nsw i32 %26, %i0.2
  %38 = icmp slt i32 %37, %.0
  %39 = icmp eq i32 %i2.1.l2space.0, -1
  %or.cond = or i1 %38, %39
  %40 = load i8* %28, align 1, !tbaa !13
  %indvars.iv.next = add i64 %indvars.iv30, 1
  br i1 %or.cond, label %._crit_edge, label %.thread

._crit_edge:                                      ; preds = %.loopexit
  %.phi.trans.insert = getelementptr inbounds i8* %buf, i64 %indvars.iv.next
  %.pre = load i8* %.phi.trans.insert, align 1, !tbaa !13
  %41 = icmp eq i8 %40, 0
  %42 = getelementptr inbounds i8* %buf, i64 %indvars.iv.next
  br i1 %41, label %.thread, label %.lr.ph39

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
  %45 = icmp eq i8 %43, 0
  br i1 %45, label %67, label %46

; <label>:46                                      ; preds = %.thread
  %47 = icmp sgt i32 %.lcssa, %.0
  %48 = add i32 %lspace.1.lcssa, 1
  %49 = add i32 %l2space.0.lcssa, 1
  %50 = icmp slt i32 %l2space.0.lcssa, %indent
  %or.cond2 = or i1 %47, %50
  br i1 %or.cond2, label %67, label %51

; <label>:51                                      ; preds = %46
  %52 = sext i32 %l2space.0.lcssa to i64
  %53 = getelementptr inbounds i8* %b2.1.lcssa, i64 %52
  store i8 10, i8* %53, align 1, !tbaa !13
  br i1 %6, label %67, label %54

; <label>:54                                      ; preds = %51
  %55 = icmp eq i32 %bFirst.0, 0
  %56 = select i1 %55, i32 0, i32 %indent
  %.0. = sub nsw i32 %.0, %56
  %57 = add nsw i32 %b2len.1.lcssa, %indent
  %58 = tail call i8* @save_realloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str7, i64 0, i64 0), i32 295, i8* %b2.1.lcssa, i32 %57) #10
  br i1 %5, label %.lr.ph15, label %.preheader

.lr.ph15:                                         ; preds = %54
  %59 = sext i32 %49 to i64
  %scevgep21 = getelementptr i8* %58, i64 %59
  call void @llvm.memset.p0i8.i64(i8* %scevgep21, i8 32, i64 %10, i32 1, i1 false)
  %60 = add i32 %7, %l2space.0.lcssa
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph15, %54
  %i2.4.lcssa = phi i32 [ %60, %.lr.ph15 ], [ %49, %54 ]
  %61 = sext i32 %48 to i64
  br label %62

; <label>:62                                      ; preds = %62, %.preheader
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %62 ], [ %61, %.preheader ]
  %63 = getelementptr inbounds i8* %buf, i64 %indvars.iv22
  %64 = load i8* %63, align 1, !tbaa !13
  %65 = icmp eq i8 %64, 32
  %indvars.iv.next23 = add i64 %indvars.iv22, 1
  br i1 %65, label %62, label %.loopexit3

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
  %68 = load i8* %44, align 1, !tbaa !13
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %11

; <label>:70                                      ; preds = %67
  %71 = sext i32 %i2.5 to i64
  %72 = getelementptr inbounds i8* %b2.3, i64 %71
  store i8 0, i8* %72, align 1, !tbaa !13
  ret i8* %b2.3
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

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
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !5, i64 0}
