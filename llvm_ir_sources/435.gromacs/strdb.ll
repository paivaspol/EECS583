; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/strdb.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@get_a_line.line0 = internal unnamed_addr global i8* null, align 8
@get_a_line.nalloc = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"line0\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/strdb.c\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str2 = private unnamed_addr constant [74 x i8] c"Warning: line length exceeds buffer length (%d), data might be corrupted\0A\00", align 1
@.str3 = private unnamed_addr constant [58 x i8] c"Warning: file does not end with a newline, last line:\0A%s\0A\00", align 1
@.str4 = private unnamed_addr constant [40 x i8] c"header is not terminated on line:\0A'%s'\0A\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"%s%*s\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@warn_buf = external global [1024 x i8]
@.str7 = private unnamed_addr constant [17 x i8] c"File %s is empty\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str10 = private unnamed_addr constant [14 x i8] c"File is empty\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
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
define i32 @get_a_line(%struct.__sFILE* nocapture %fp, i8* %line, i32 %n) #1 {
  %1 = load i32* @get_a_line.nalloc, align 4, !tbaa !2
  %2 = icmp slt i32 %1, %n
  br i1 %2, label %3, label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %0
  %.pre1 = add nsw i32 %n, 1
  br label %.preheader

; <label>:3                                       ; preds = %0
  store i32 %n, i32* @get_a_line.nalloc, align 4, !tbaa !2
  %4 = load i8** @get_a_line.line0, align 8, !tbaa !6
  %5 = add nsw i32 %n, 1
  %6 = tail call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 49, i8* %4, i32 %5) #8
  store i8* %6, i8** @get_a_line.line0, align 8, !tbaa !6
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %3
  %.pre-phi = phi i32 [ %.pre1, %..preheader_crit_edge ], [ %5, %3 ]
  %7 = sext i32 %n to i64
  %8 = add nsw i32 %n, -1
  %9 = sext i32 %8 to i64
  %10 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %line, i1 false)
  br label %11

; <label>:11                                      ; preds = %.preheader, %35
  %12 = load i8** @get_a_line.line0, align 8, !tbaa !6
  %13 = tail call i8* @fgets(i8* %12, i32 %.pre-phi, %struct.__sFILE* %fp) #8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %41, label %15

; <label>:15                                      ; preds = %11
  %16 = load i8** @get_a_line.line0, align 8, !tbaa !6
  %17 = tail call i8* @strchr(i8* %16, i32 10) #8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %20, label %19

; <label>:19                                      ; preds = %15
  store i8 0, i8* %17, align 1, !tbaa !8
  br label %30

; <label>:20                                      ; preds = %15
  %21 = tail call i64 @strlen(i8* %16) #8
  %22 = icmp eq i64 %21, %7
  %23 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !6
  br i1 %22, label %24, label %28

; <label>:24                                      ; preds = %20
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([74 x i8]* @.str2, i64 0, i64 0), i32 %n) #8
  %26 = load i8** @get_a_line.line0, align 8, !tbaa !6
  %27 = getelementptr inbounds i8* %26, i64 %9
  store i8 0, i8* %27, align 1, !tbaa !8
  br label %30

; <label>:28                                      ; preds = %20
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), i8* %16) #8
  br label %30

; <label>:30                                      ; preds = %24, %28, %19
  %31 = load i8** @get_a_line.line0, align 8, !tbaa !6
  %32 = tail call i8* @strchr(i8* %31, i32 59) #8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %35, label %34

; <label>:34                                      ; preds = %30
  store i8 0, i8* %32, align 1, !tbaa !8
  %.pre = load i8** @get_a_line.line0, align 8, !tbaa !6
  br label %35

; <label>:35                                      ; preds = %30, %34
  %36 = phi i8* [ %31, %30 ], [ %.pre, %34 ]
  %37 = tail call i8* @__strcpy_chk(i8* %line, i8* %36, i64 %10) #8
  %38 = load i8** @get_a_line.line0, align 8, !tbaa !6
  tail call void @ltrim(i8* %38) #8
  %39 = load i8* %38, align 1, !tbaa !8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %11, label %41

; <label>:41                                      ; preds = %35, %11
  %.0 = phi i32 [ 0, %11 ], [ 1, %35 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct.__sFILE* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #5

; Function Attrs: optsize
declare void @ltrim(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_header(i8* %line, i8* %header) #1 {
  %temp = alloca [4096 x i8], align 16
  %1 = getelementptr inbounds [4096 x i8]* %temp, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #6
  %2 = call i8* @__strcpy_chk(i8* %1, i8* %line, i64 4096) #8
  %3 = call i8* @strchr(i8* %1, i32 91) #8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %12, label %5

; <label>:5                                       ; preds = %0
  store i8 32, i8* %3, align 1, !tbaa !8
  %6 = call i8* @strchr(i8* %1, i32 93) #8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %5
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([40 x i8]* @.str4, i64 0, i64 0), i8* %line) #8
  br label %12

; <label>:9                                       ; preds = %5
  store i8 0, i8* %6, align 1, !tbaa !8
  %10 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* %header) #8
  %11 = icmp eq i32 %10, 1
  %. = zext i1 %11 to i32
  br label %12

; <label>:12                                      ; preds = %9, %0, %8
  %.0 = phi i32 [ 0, %8 ], [ 0, %0 ], [ %., %9 ]
  call void @llvm.lifetime.end(i64 4096, i8* %1) #6
  ret i32 %.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_strings(i8* %db, i8*** nocapture %strings) #1 {
  %buf = alloca [256 x i8], align 16
  %nstr = alloca i32, align 4
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #6
  %2 = tail call %struct.__sFILE* @libopen(i8* %db) #8
  tail call void @set_warning_line(i8* %db, i32 1) #8
  %3 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %2, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* %nstr) #8
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %7, label %5

; <label>:5                                       ; preds = %0
  %6 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i32 0, i64 1024, i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0), i8* %db) #8
  call void @warning(i8* null) #8
  call void @ffclose(%struct.__sFILE* %2) #8
  br label %21

; <label>:7                                       ; preds = %0
  %8 = load i32* %nstr, align 4, !tbaa !2
  %9 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 112, i32 %8, i32 8) #8
  %10 = bitcast i8* %9 to i8**
  %11 = load i32* %nstr, align 4, !tbaa !2
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %7, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %7 ]
  %13 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %2, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* %1) #8
  %14 = call i8* @strdup(i8* %1) #8
  %15 = getelementptr inbounds i8** %10, i64 %indvars.iv
  store i8* %14, i8** %15, align 8, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %16 = load i32* %nstr, align 4, !tbaa !2
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %indvars.iv.next, %17
  br i1 %18, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %7
  call void @ffclose(%struct.__sFILE* %2) #8
  %19 = bitcast i8*** %strings to i8**
  store i8* %9, i8** %19, align 8, !tbaa !6
  %20 = load i32* %nstr, align 4, !tbaa !2
  br label %21

; <label>:21                                      ; preds = %._crit_edge, %5
  %.0 = phi i32 [ 0, %5 ], [ %20, %._crit_edge ]
  call void @llvm.lifetime.end(i64 256, i8* %1) #6
  ret i32 %.0
}

; Function Attrs: optsize
declare %struct.__sFILE* @libopen(i8*) #2

; Function Attrs: optsize
declare void @set_warning_line(i8*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fscanf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare void @warning(i8*) #2

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #3

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @search_str(i32 %nstr, i8** nocapture readonly %str, i8* nocapture readonly %key) #7 {
  %1 = icmp sgt i32 %nstr, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = sext i32 %nstr to i64
  br label %3

; <label>:3                                       ; preds = %.lr.ph, %8
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %4 = getelementptr inbounds i8** %str, i64 %indvars.iv
  %5 = load i8** %4, align 8, !tbaa !6
  %6 = tail call i32 @strcasecmp(i8* %5, i8* %key) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %._crit_edge2, label %8

; <label>:8                                       ; preds = %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = icmp slt i64 %indvars.iv.next, %2
  br i1 %9, label %3, label %._crit_edge

._crit_edge2:                                     ; preds = %3
  %10 = trunc i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %8, %._crit_edge2, %0
  %.0 = phi i32 [ %10, %._crit_edge2 ], [ -1, %0 ], [ -1, %8 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @fget_lines(%struct.__sFILE* %in, i8*** nocapture %strings) #1 {
  %buf = alloca [256 x i8], align 16
  %nstr = alloca i32, align 4
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #6
  %2 = call i8* @fgets(i8* %1, i32 255, %struct.__sFILE* %in) #8
  %3 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* %nstr) #8
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %7, label %5

; <label>:5                                       ; preds = %0
  %6 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([1024 x i8]* @warn_buf, i64 0, i64 0), i32 0, i64 1024, i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #8
  call void @warning(i8* null) #8
  call void @ffclose(%struct.__sFILE* %in) #8
  br label %21

; <label>:7                                       ; preds = %0
  %8 = load i32* %nstr, align 4, !tbaa !2
  %9 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 153, i32 %8, i32 8) #8
  %10 = bitcast i8* %9 to i8**
  %11 = load i32* %nstr, align 4, !tbaa !2
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %7, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %7 ]
  %13 = call i8* @fgets2(i8* %1, i32 255, %struct.__sFILE* %in) #8
  %14 = call i8* @strdup(i8* %1) #8
  %15 = getelementptr inbounds i8** %10, i64 %indvars.iv
  store i8* %14, i8** %15, align 8, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %16 = load i32* %nstr, align 4, !tbaa !2
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %indvars.iv.next, %17
  br i1 %18, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %7
  %19 = phi i32 [ %11, %7 ], [ %16, %.lr.ph ]
  %20 = bitcast i8*** %strings to i8**
  store i8* %9, i8** %20, align 8, !tbaa !6
  br label %21

; <label>:21                                      ; preds = %._crit_edge, %5
  %.0 = phi i32 [ 0, %5 ], [ %19, %._crit_edge ]
  call void @llvm.lifetime.end(i64 256, i8* %1) #6
  ret i32 %.0
}

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct.__sFILE*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_lines(i8* %db, i8*** nocapture %strings) #1 {
  tail call void @set_warning_line(i8* %db, i32 1) #8
  %1 = tail call %struct.__sFILE* @libopen(i8* %db) #8
  %2 = tail call i32 @fget_lines(%struct.__sFILE* %1, i8*** %strings) #9
  tail call void @ffclose(%struct.__sFILE* %1) #8
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @get_file(i8* %db, i8*** nocapture %strings) #1 {
  %buf = alloca [256 x i8], align 16
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #6
  %2 = tail call %struct.__sFILE* @libopen(i8* %db) #8
  %3 = call i8* @fgets2(i8* %1, i32 255, %struct.__sFILE* %2) #8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %19, label %.lr.ph

.lr.ph:                                           ; preds = %0, %13
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 0, %0 ]
  %ptr.03 = phi i8** [ %ptr.1, %13 ], [ null, %0 ]
  %maxi.02 = phi i32 [ %maxi.1, %13 ], [ 0, %0 ]
  %5 = sext i32 %maxi.02 to i64
  %6 = icmp slt i64 %indvars.iv, %5
  br i1 %6, label %13, label %7

; <label>:7                                       ; preds = %.lr.ph
  %8 = add nsw i32 %maxi.02, 50
  %9 = bitcast i8** %ptr.03 to i8*
  %10 = shl i32 %8, 3
  %11 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 190, i8* %9, i32 %10) #8
  %12 = bitcast i8* %11 to i8**
  br label %13

; <label>:13                                      ; preds = %.lr.ph, %7
  %maxi.1 = phi i32 [ %8, %7 ], [ %maxi.02, %.lr.ph ]
  %ptr.1 = phi i8** [ %12, %7 ], [ %ptr.03, %.lr.ph ]
  %14 = call i8* @strdup(i8* %1) #8
  %15 = getelementptr inbounds i8** %ptr.1, i64 %indvars.iv
  store i8* %14, i8** %15, align 8, !tbaa !6
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %16 = call i8* @fgets2(i8* %1, i32 255, %struct.__sFILE* %2) #8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %13
  %18 = trunc i64 %indvars.iv.next to i32
  br label %19

; <label>:19                                      ; preds = %._crit_edge, %0
  %ptr.0.lcssa = phi i8** [ %ptr.1, %._crit_edge ], [ null, %0 ]
  %i.0.lcssa = phi i32 [ %18, %._crit_edge ], [ 0, %0 ]
  call void @ffclose(%struct.__sFILE* %2) #8
  %20 = bitcast i8** %ptr.0.lcssa to i8*
  %21 = shl i32 %i.0.lcssa, 3
  %22 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 197, i8* %20, i32 %21) #8
  %23 = bitcast i8*** %strings to i8**
  store i8* %22, i8** %23, align 8, !tbaa !6
  call void @llvm.lifetime.end(i64 256, i8* %1) #6
  ret i32 %i.0.lcssa
}

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!4, !4, i64 0}
