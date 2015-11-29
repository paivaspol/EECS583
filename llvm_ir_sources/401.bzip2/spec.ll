; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/401.bzip2/src/spec.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.spec_fd_t = type { i32, i32, i32, i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@dbglvl = global i32 4, align 4
@seedi = common global i64 0, align 8
@spec_fd = common global [3 x %struct.spec_fd_t] zeroinitializer, align 16
@.str3 = private unnamed_addr constant [19 x i8] c"Creating Chunk %d\0A\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str5 = private unnamed_addr constant [24 x i8] c"Can't open file %s: %s\0A\00", align 1
@.str6 = private unnamed_addr constant [27 x i8] c"Error reading from %s: %s\0A\00", align 1
@.str7 = private unnamed_addr constant [22 x i8] c"Duplicating %d bytes\0A\00", align 1
@.str8 = private unnamed_addr constant [25 x i8] c"spec_read: %d, %p, %d = \00", align 1
@.str9 = private unnamed_addr constant [34 x i8] c"spec_read: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str12 = private unnamed_addr constant [34 x i8] c"spec_fread: %p, (%d x %d) fd %d =\00", align 1
@.str13 = private unnamed_addr constant [35 x i8] c"spec_fread: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str14 = private unnamed_addr constant [17 x i8] c"spec_getc: %d = \00", align 1
@.str15 = private unnamed_addr constant [19 x i8] c"spec_ungetc: %d = \00", align 1
@.str16 = private unnamed_addr constant [26 x i8] c"spec_ungetc: pos %d <= 0\0A\00", align 1
@.str17 = private unnamed_addr constant [72 x i8] c"spec_ungetc: can't unget something that wasn't what was in the buffer!\0A\00", align 1
@.str18 = private unnamed_addr constant [26 x i8] c"spec_write: %d, %p, %d = \00", align 1
@.str19 = private unnamed_addr constant [35 x i8] c"spec_write: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str20 = private unnamed_addr constant [31 x i8] c"spec_fwrite: %p, %d, %d, %d = \00", align 1
@.str21 = private unnamed_addr constant [36 x i8] c"spec_fwrite: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str22 = private unnamed_addr constant [21 x i8] c"spec_putc: %d, %d = \00", align 1
@str = private unnamed_addr constant [35 x i8] c"spec_init: Error mallocing memory!\00"
@str23 = private unnamed_addr constant [10 x i8] c"spec_init\00"
@str24 = private unnamed_addr constant [19 x i8] c"Filling input file\00"
@str25 = private unnamed_addr constant [16 x i8] c"Creating Chunks\00"
@str28 = private unnamed_addr constant [4 x i8] c"EOF\00"

; Function Attrs: nounwind optsize ssp uwtable
define double @ran() #0 {
  %1 = load i64* @seedi, align 8, !tbaa !2
  %2 = sdiv i64 %1, 127773
  %3 = srem i64 %1, 127773
  %4 = mul nsw i64 %3, 16807
  %5 = mul nsw i64 %2, -2836
  %6 = add i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  %8 = add nsw i64 %6, 2147483647
  %storemerge = select i1 %7, i64 %6, i64 %8
  store i64 %storemerge, i64* @seedi, align 8, !tbaa !2
  %9 = sitofp i64 %storemerge to float
  %10 = fmul float %9, 0x3E00000000000000
  %11 = fpext float %10 to double
  ret double %11
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_init() #0 {
  %1 = load i32* @dbglvl, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 3
  br i1 %2, label %3, label %.preheader2

; <label>:3                                       ; preds = %0
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str23, i64 0, i64 0))
  br label %.preheader2

.preheader2:                                      ; preds = %0, %3, %._crit_edge
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %._crit_edge ], [ 0, %3 ], [ 0, %0 ]
  %4 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %indvars.iv5
  %5 = getelementptr inbounds %struct.spec_fd_t* %4, i64 0, i32 0
  %6 = load i32* %5, align 8, !tbaa !8
  %7 = bitcast %struct.spec_fd_t* %4 to i8*
  %8 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %7, i1 false)
  %9 = tail call i8* @__memset_chk(i8* %7, i32 0, i64 24, i64 %8) #6
  store i32 %6, i32* %5, align 8, !tbaa !8
  %10 = add nsw i32 %6, 1048576
  %11 = sext i32 %10 to i64
  %12 = tail call i8* @malloc(i64 %11) #6
  %13 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %indvars.iv5, i32 3
  store i8* %12, i8** %13, align 8, !tbaa !11
  %14 = icmp eq i8* %12, null
  br i1 %14, label %18, label %.preheader

.preheader:                                       ; preds = %.preheader2
  %15 = icmp sgt i32 %6, 0
  br i1 %15, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %16 = sext i32 %6 to i64
  store i8 0, i8* %12, align 1, !tbaa !12
  %17 = icmp sgt i32 %6, 1024
  br i1 %17, label %._crit_edge7, label %._crit_edge

; <label>:18                                      ; preds = %.preheader2
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([35 x i8]* @str, i64 0, i64 0))
  tail call void @exit(i32 0) #7
  unreachable

._crit_edge7:                                     ; preds = %.lr.ph, %._crit_edge7
  %indvars.iv.next8 = phi i64 [ %indvars.iv.next, %._crit_edge7 ], [ 1024, %.lr.ph ]
  %.pre = load i8** %13, align 8, !tbaa !11
  %19 = getelementptr inbounds i8* %.pre, i64 %indvars.iv.next8
  store i8 0, i8* %19, align 1, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next8, 1024
  %20 = icmp slt i64 %indvars.iv.next, %16
  br i1 %20, label %._crit_edge7, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge7, %.preheader
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %21 = icmp slt i64 %indvars.iv.next6, 3
  br i1 %21, label %.preheader2, label %22

; <label>:22                                      ; preds = %._crit_edge
  ret i32 0
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_random_load(i32 %fd) #0 {
  %random_text = alloca [32 x [131072 x i8]], align 16
  %1 = getelementptr inbounds [32 x [131072 x i8]]* %random_text, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4194304, i8* %1) #4
  %2 = load i32* @dbglvl, align 4, !tbaa !6
  %3 = icmp sgt i32 %2, 4
  br i1 %3, label %4, label %.preheader

; <label>:4                                       ; preds = %0
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str25, i64 0, i64 0))
  br label %5

; <label>:5                                       ; preds = %4, %27
  %i.0.ph = phi i32 [ 0, %4 ], [ %28, %27 ]
  %.pr = load i32* @dbglvl, align 4, !tbaa !6
  %6 = icmp slt i32 %i.0.ph, 32
  br i1 %6, label %7, label %29

; <label>:7                                       ; preds = %5
  %8 = icmp sgt i32 %.pr, 5
  br i1 %8, label %9, label %.preheader

; <label>:9                                       ; preds = %7
  %10 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str3, i64 0, i64 0), i32 %i.0.ph) #6
  br label %.preheader

.preheader:                                       ; preds = %0, %9, %7
  %i.0911 = phi i32 [ %i.0.ph, %9 ], [ %i.0.ph, %7 ], [ 0, %0 ]
  %11 = sext i32 %i.0911 to i64
  %seedi.promoted = load i64* @seedi, align 8, !tbaa !2
  br label %12

; <label>:12                                      ; preds = %12, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %12 ]
  %storemerge.i5 = phi i64 [ %seedi.promoted, %.preheader ], [ %storemerge.i, %12 ]
  %13 = sdiv i64 %storemerge.i5, 127773
  %14 = srem i64 %storemerge.i5, 127773
  %15 = mul nsw i64 %14, 16807
  %16 = mul nsw i64 %13, -2836
  %17 = add i64 %15, %16
  %18 = icmp sgt i64 %17, 0
  %19 = add nsw i64 %17, 2147483647
  %storemerge.i = select i1 %18, i64 %17, i64 %19
  %20 = sitofp i64 %storemerge.i to float
  %21 = fmul float %20, 0x3E00000000000000
  %22 = fpext float %21 to double
  %23 = fmul double %22, 2.560000e+02
  %24 = fptosi double %23 to i32
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [32 x [131072 x i8]]* %random_text, i64 0, i64 %11, i64 %indvars.iv
  store i8 %25, i8* %26, align 1, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 131072
  br i1 %exitcond, label %27, label %12

; <label>:27                                      ; preds = %12
  store i64 %storemerge.i, i64* @seedi, align 8, !tbaa !2
  %28 = add nsw i32 %i.0911, 1
  br label %5

; <label>:29                                      ; preds = %5
  %30 = icmp sgt i32 %.pr, 4
  br i1 %30, label %31, label %.preheader3

; <label>:31                                      ; preds = %29
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str24, i64 0, i64 0))
  br label %.preheader3

.preheader3:                                      ; preds = %31, %29
  %32 = sext i32 %fd to i64
  %33 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %32, i32 0
  %34 = load i32* %33, align 8, !tbaa !8
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader3
  %36 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %32, i32 3
  br label %37

; <label>:37                                      ; preds = %.lr.ph, %37
  %indvars.iv7 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next8, %37 ]
  %38 = load i8** %36, align 8, !tbaa !11
  %39 = getelementptr inbounds i8* %38, i64 %indvars.iv7
  %40 = load i64* @seedi, align 8, !tbaa !2
  %41 = sdiv i64 %40, 127773
  %42 = srem i64 %40, 127773
  %43 = mul nsw i64 %42, 16807
  %44 = mul nsw i64 %41, -2836
  %45 = add i64 %43, %44
  %46 = icmp sgt i64 %45, 0
  %47 = add nsw i64 %45, 2147483647
  %storemerge.i2 = select i1 %46, i64 %45, i64 %47
  store i64 %storemerge.i2, i64* @seedi, align 8, !tbaa !2
  %48 = sitofp i64 %storemerge.i2 to float
  %49 = fmul float %48, 0x3E00000000000000
  %50 = fpext float %49 to double
  %51 = fmul double %50, 3.200000e+01
  %52 = fptosi double %51 to i32
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [32 x [131072 x i8]]* %random_text, i64 0, i64 %53, i64 0
  %55 = call i64 @llvm.objectsize.i64.p0i8(i8* %39, i1 false)
  %56 = call i8* @__memcpy_chk(i8* %39, i8* %54, i64 131072, i64 %55) #6
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, 131072
  %57 = load i32* %33, align 8, !tbaa !8
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %indvars.iv.next8, %58
  br i1 %59, label %37, label %._crit_edge

._crit_edge:                                      ; preds = %37, %.preheader3
  %60 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %32, i32 1
  store i32 1048576, i32* %60, align 4, !tbaa !13
  call void @llvm.lifetime.end(i64 4194304, i8* %1) #4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_load(i32 %num, i8* %filename, i32 %size) #0 {
  %1 = tail call i32 (i8*, i32, ...)* @"\01_open"(i8* %filename, i32 0) #6
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %5 = tail call i32* @__error() #6
  %6 = load i32* %5, align 4, !tbaa !6
  %7 = tail call i8* @"\01_strerror"(i32 %6) #6
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([24 x i8]* @.str5, i64 0, i64 0), i8* %filename, i8* %7) #6
  tail call void @exit(i32 0) #7
  unreachable

; <label>:9                                       ; preds = %0
  %10 = sext i32 %num to i64
  %11 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %10, i32 1
  store i32 0, i32* %11, align 4, !tbaa !13
  %12 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %10, i32 2
  store i32 0, i32* %12, align 8, !tbaa !15
  %13 = icmp sgt i32 %size, 0
  br i1 %13, label %.lr.ph3, label %._crit_edge4

.lr.ph3:                                          ; preds = %9
  %14 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %10, i32 3
  br label %15

; <label>:15                                      ; preds = %.lr.ph3, %30
  %i.01 = phi i32 [ 0, %.lr.ph3 ], [ %33, %30 ]
  %16 = load i8** %14, align 8, !tbaa !11
  %17 = sext i32 %i.01 to i64
  %18 = getelementptr inbounds i8* %16, i64 %17
  %19 = tail call i64 @"\01_read"(i32 %1, i8* %18, i64 131072) #6
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %._crit_edge4, label %22

; <label>:22                                      ; preds = %15
  %23 = icmp slt i32 %20, 0
  br i1 %23, label %24, label %30

; <label>:24                                      ; preds = %22
  %25 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %26 = tail call i32* @__error() #6
  %27 = load i32* %26, align 4, !tbaa !6
  %28 = tail call i8* @"\01_strerror"(i32 %27) #6
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %25, i8* getelementptr inbounds ([27 x i8]* @.str6, i64 0, i64 0), i8* %filename, i8* %28) #6
  tail call void @exit(i32 0) #7
  unreachable

; <label>:30                                      ; preds = %22
  %31 = load i32* %11, align 4, !tbaa !13
  %32 = add nsw i32 %31, %20
  store i32 %32, i32* %11, align 4, !tbaa !13
  %33 = add nsw i32 %20, %i.01
  %34 = icmp slt i32 %33, %size
  br i1 %34, label %15, label %._crit_edge4

._crit_edge4:                                     ; preds = %30, %15, %9
  %35 = tail call i32 @"\01_close"(i32 %1) #6
  %36 = load i32* %11, align 4, !tbaa !13
  %37 = icmp slt i32 %36, %size
  br i1 %37, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge4
  %38 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %10, i32 3
  br label %39

; <label>:39                                      ; preds = %.lr.ph, %47
  %40 = phi i32 [ %36, %.lr.ph ], [ %56, %47 ]
  %41 = sub nsw i32 %size, %40
  %42 = icmp sgt i32 %41, %40
  %. = select i1 %42, i32 %40, i32 %41
  %43 = load i32* @dbglvl, align 4, !tbaa !6
  %44 = icmp sgt i32 %43, 3
  br i1 %44, label %45, label %47

; <label>:45                                      ; preds = %39
  %46 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i32 %.) #6
  %.pre = load i32* %11, align 4, !tbaa !13
  br label %47

; <label>:47                                      ; preds = %45, %39
  %48 = phi i32 [ %.pre, %45 ], [ %40, %39 ]
  %49 = load i8** %38, align 8, !tbaa !11
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8* %49, i64 %50
  %52 = sext i32 %. to i64
  %53 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %51, i1 false)
  %54 = tail call i8* @__memcpy_chk(i8* %51, i8* %49, i64 %52, i64 %53) #6
  %55 = load i32* %11, align 4, !tbaa !13
  %56 = add nsw i32 %55, %.
  store i32 %56, i32* %11, align 4, !tbaa !13
  %57 = icmp slt i32 %56, %size
  br i1 %57, label %39, label %._crit_edge

._crit_edge:                                      ; preds = %47, %._crit_edge4
  ret i32 0
}

; Function Attrs: optsize
declare i32 @"\01_open"(i8*, i32, ...) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: optsize
declare i8* @"\01_strerror"(i32) #5

; Function Attrs: optsize
declare i32* @__error() #5

; Function Attrs: optsize
declare i64 @"\01_read"(i32, i8*, i64) #5

; Function Attrs: optsize
declare i32 @"\01_close"(i32) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_read(i32 %fd, i8* %buf, i32 %size) #0 {
  %1 = load i32* @dbglvl, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 4
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0), i32 %fd, i8* %buf, i32 %size) #6
  br label %5

; <label>:5                                       ; preds = %3, %0
  %6 = icmp sgt i32 %fd, 3
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([34 x i8]* @.str9, i64 0, i64 0), i32 %fd) #6
  tail call void @exit(i32 0) #7
  unreachable

; <label>:10                                      ; preds = %5
  %11 = sext i32 %fd to i64
  %12 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 2
  %13 = load i32* %12, align 8, !tbaa !15
  %14 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 1
  %15 = load i32* %14, align 4, !tbaa !13
  %16 = icmp sgt i32 %15, %13
  br i1 %16, label %21, label %17

; <label>:17                                      ; preds = %10
  %18 = load i32* @dbglvl, align 4, !tbaa !6
  %19 = icmp sgt i32 %18, 4
  br i1 %19, label %20, label %38

; <label>:20                                      ; preds = %17
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([4 x i8]* @str28, i64 0, i64 0))
  br label %38

; <label>:21                                      ; preds = %10
  %22 = add nsw i32 %13, %size
  %23 = icmp slt i32 %22, %15
  %24 = sub nsw i32 %15, %13
  %rc.0 = select i1 %23, i32 %size, i32 %24
  %25 = sext i32 %13 to i64
  %26 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 3
  %27 = load i8** %26, align 8, !tbaa !11
  %28 = getelementptr inbounds i8* %27, i64 %25
  %29 = sext i32 %rc.0 to i64
  %30 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %buf, i1 false)
  %31 = tail call i8* @__memcpy_chk(i8* %buf, i8* %28, i64 %29, i64 %30) #6
  %32 = load i32* %12, align 8, !tbaa !15
  %33 = add nsw i32 %32, %rc.0
  store i32 %33, i32* %12, align 8, !tbaa !15
  %34 = load i32* @dbglvl, align 4, !tbaa !6
  %35 = icmp sgt i32 %34, 4
  br i1 %35, label %36, label %38

; <label>:36                                      ; preds = %21
  %37 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %rc.0) #6
  br label %38

; <label>:38                                      ; preds = %21, %36, %17, %20
  %.0 = phi i32 [ -1, %20 ], [ -1, %17 ], [ %rc.0, %36 ], [ %rc.0, %21 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_fread(i8* %buf, i32 %size, i32 %num, i32 %fd) #0 {
  %1 = load i32* @dbglvl, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 4
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str12, i64 0, i64 0), i8* %buf, i32 %size, i32 %num, i32 %fd) #6
  br label %5

; <label>:5                                       ; preds = %3, %0
  %6 = icmp sgt i32 %fd, 3
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([35 x i8]* @.str13, i64 0, i64 0), i32 %fd) #6
  tail call void @exit(i32 0) #7
  unreachable

; <label>:10                                      ; preds = %5
  %11 = sext i32 %fd to i64
  %12 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 2
  %13 = load i32* %12, align 8, !tbaa !15
  %14 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 1
  %15 = load i32* %14, align 4, !tbaa !13
  %16 = icmp sgt i32 %15, %13
  br i1 %16, label %21, label %17

; <label>:17                                      ; preds = %10
  %18 = load i32* @dbglvl, align 4, !tbaa !6
  %19 = icmp sgt i32 %18, 4
  br i1 %19, label %20, label %43

; <label>:20                                      ; preds = %17
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([4 x i8]* @str28, i64 0, i64 0))
  br label %43

; <label>:21                                      ; preds = %10
  %22 = mul nsw i32 %num, %size
  %23 = add nsw i32 %13, %22
  %24 = icmp slt i32 %23, %15
  br i1 %24, label %28, label %25

; <label>:25                                      ; preds = %21
  %26 = sub nsw i32 %15, %13
  %27 = sdiv i32 %26, %size
  br label %28

; <label>:28                                      ; preds = %21, %25
  %rc.0 = phi i32 [ %27, %25 ], [ %num, %21 ]
  %29 = sext i32 %13 to i64
  %30 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 3
  %31 = load i8** %30, align 8, !tbaa !11
  %32 = getelementptr inbounds i8* %31, i64 %29
  %33 = sext i32 %rc.0 to i64
  %34 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %buf, i1 false)
  %35 = tail call i8* @__memcpy_chk(i8* %buf, i8* %32, i64 %33, i64 %34) #6
  %36 = mul nsw i32 %rc.0, %size
  %37 = load i32* %12, align 8, !tbaa !15
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %12, align 8, !tbaa !15
  %39 = load i32* @dbglvl, align 4, !tbaa !6
  %40 = icmp sgt i32 %39, 4
  br i1 %40, label %41, label %43

; <label>:41                                      ; preds = %28
  %42 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %36) #6
  br label %43

; <label>:43                                      ; preds = %28, %41, %17, %20
  %.0 = phi i32 [ -1, %20 ], [ -1, %17 ], [ %rc.0, %41 ], [ %rc.0, %28 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_getc(i32 %fd) #0 {
  %1 = load i32* @dbglvl, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 4
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str14, i64 0, i64 0), i32 %fd) #6
  br label %5

; <label>:5                                       ; preds = %3, %0
  %6 = icmp sgt i32 %fd, 3
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([34 x i8]* @.str9, i64 0, i64 0), i32 %fd) #6
  tail call void @exit(i32 0) #7
  unreachable

; <label>:10                                      ; preds = %5
  %11 = sext i32 %fd to i64
  %12 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 2
  %13 = load i32* %12, align 8, !tbaa !15
  %14 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 1
  %15 = load i32* %14, align 4, !tbaa !13
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %21, label %17

; <label>:17                                      ; preds = %10
  %18 = load i32* @dbglvl, align 4, !tbaa !6
  %19 = icmp sgt i32 %18, 4
  br i1 %19, label %20, label %33

; <label>:20                                      ; preds = %17
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([4 x i8]* @str28, i64 0, i64 0))
  br label %33

; <label>:21                                      ; preds = %10
  %22 = add nsw i32 %13, 1
  store i32 %22, i32* %12, align 8, !tbaa !15
  %23 = sext i32 %13 to i64
  %24 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 3
  %25 = load i8** %24, align 8, !tbaa !11
  %26 = getelementptr inbounds i8* %25, i64 %23
  %27 = load i8* %26, align 1, !tbaa !12
  %28 = zext i8 %27 to i32
  %29 = load i32* @dbglvl, align 4, !tbaa !6
  %30 = icmp sgt i32 %29, 4
  br i1 %30, label %31, label %33

; <label>:31                                      ; preds = %21
  %32 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %28) #6
  br label %33

; <label>:33                                      ; preds = %21, %31, %17, %20
  %.0 = phi i32 [ -1, %20 ], [ -1, %17 ], [ %28, %31 ], [ %28, %21 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_ungetc(i8 zeroext %ch, i32 %fd) #0 {
  %1 = load i32* @dbglvl, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 4
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str15, i64 0, i64 0), i32 %fd) #6
  br label %5

; <label>:5                                       ; preds = %3, %0
  %6 = icmp sgt i32 %fd, 3
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([34 x i8]* @.str9, i64 0, i64 0), i32 %fd) #6
  tail call void @exit(i32 0) #7
  unreachable

; <label>:10                                      ; preds = %5
  %11 = sext i32 %fd to i64
  %12 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 2
  %13 = load i32* %12, align 8, !tbaa !15
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %10
  %16 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([26 x i8]* @.str16, i64 0, i64 0), i32 %13) #6
  tail call void @exit(i32 0) #7
  unreachable

; <label>:18                                      ; preds = %10
  %19 = add nsw i32 %13, -1
  store i32 %19, i32* %12, align 8, !tbaa !15
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 3
  %22 = load i8** %21, align 8, !tbaa !11
  %23 = getelementptr inbounds i8* %22, i64 %20
  %24 = load i8* %23, align 1, !tbaa !12
  %25 = zext i8 %ch to i32
  %26 = icmp eq i8 %24, %ch
  br i1 %26, label %30, label %27

; <label>:27                                      ; preds = %18
  %28 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %29 = tail call i64 @fwrite(i8* getelementptr inbounds ([72 x i8]* @.str17, i64 0, i64 0), i64 71, i64 1, %struct.__sFILE* %28)
  tail call void @exit(i32 0) #7
  unreachable

; <label>:30                                      ; preds = %18
  %31 = load i32* @dbglvl, align 4, !tbaa !6
  %32 = icmp sgt i32 %31, 4
  br i1 %32, label %33, label %35

; <label>:33                                      ; preds = %30
  %34 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 0) #6
  br label %35

; <label>:35                                      ; preds = %33, %30
  ret i32 %25
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_rewind(i32 %fd) #0 {
  %1 = sext i32 %fd to i64
  %2 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %1, i32 2
  store i32 0, i32* %2, align 8, !tbaa !15
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_reset(i32 %fd) #0 {
  %1 = sext i32 %fd to i64
  %2 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %1, i32 3
  %3 = load i8** %2, align 8, !tbaa !11
  %4 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %1, i32 1
  %5 = load i32* %4, align 4, !tbaa !13
  %6 = sext i32 %5 to i64
  %7 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %3, i1 false)
  %8 = tail call i8* @__memset_chk(i8* %3, i32 0, i64 %6, i64 %7) #6
  store i32 0, i32* %4, align 4, !tbaa !13
  %9 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %1, i32 2
  store i32 0, i32* %9, align 8, !tbaa !15
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_write(i32 %fd, i8* %buf, i32 %size) #0 {
  %1 = load i32* @dbglvl, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 4
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str18, i64 0, i64 0), i32 %fd, i8* %buf, i32 %size) #6
  br label %5

; <label>:5                                       ; preds = %3, %0
  %6 = icmp sgt i32 %fd, 3
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([35 x i8]* @.str19, i64 0, i64 0), i32 %fd) #6
  tail call void @exit(i32 0) #7
  unreachable

; <label>:10                                      ; preds = %5
  %11 = sext i32 %fd to i64
  %12 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 2
  %13 = load i32* %12, align 8, !tbaa !15
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 3
  %16 = load i8** %15, align 8, !tbaa !11
  %17 = getelementptr inbounds i8* %16, i64 %14
  %18 = sext i32 %size to i64
  %19 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %17, i1 false)
  %20 = tail call i8* @__memcpy_chk(i8* %17, i8* %buf, i64 %18, i64 %19) #6
  %21 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 1
  %22 = load i32* %21, align 4, !tbaa !13
  %23 = add nsw i32 %22, %size
  store i32 %23, i32* %21, align 4, !tbaa !13
  %24 = load i32* %12, align 8, !tbaa !15
  %25 = add nsw i32 %24, %size
  store i32 %25, i32* %12, align 8, !tbaa !15
  %26 = load i32* @dbglvl, align 4, !tbaa !6
  %27 = icmp sgt i32 %26, 4
  br i1 %27, label %28, label %30

; <label>:28                                      ; preds = %10
  %29 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %size) #6
  br label %30

; <label>:30                                      ; preds = %28, %10
  ret i32 %size
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_fwrite(i8* %buf, i32 %size, i32 %num, i32 %fd) #0 {
  %1 = load i32* @dbglvl, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 4
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str20, i64 0, i64 0), i8* %buf, i32 %size, i32 %num, i32 %fd) #6
  br label %5

; <label>:5                                       ; preds = %3, %0
  %6 = icmp sgt i32 %fd, 3
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i32 %fd) #6
  tail call void @exit(i32 0) #7
  unreachable

; <label>:10                                      ; preds = %5
  %11 = sext i32 %fd to i64
  %12 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 2
  %13 = load i32* %12, align 8, !tbaa !15
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 3
  %16 = load i8** %15, align 8, !tbaa !11
  %17 = getelementptr inbounds i8* %16, i64 %14
  %18 = mul nsw i32 %num, %size
  %19 = sext i32 %18 to i64
  %20 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %17, i1 false)
  %21 = tail call i8* @__memcpy_chk(i8* %17, i8* %buf, i64 %19, i64 %20) #6
  %22 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %11, i32 1
  %23 = load i32* %22, align 4, !tbaa !13
  %24 = add nsw i32 %23, %18
  store i32 %24, i32* %22, align 4, !tbaa !13
  %25 = load i32* %12, align 8, !tbaa !15
  %26 = add nsw i32 %25, %18
  store i32 %26, i32* %12, align 8, !tbaa !15
  %27 = load i32* @dbglvl, align 4, !tbaa !6
  %28 = icmp sgt i32 %27, 4
  br i1 %28, label %29, label %31

; <label>:29                                      ; preds = %10
  %30 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %num) #6
  br label %31

; <label>:31                                      ; preds = %29, %10
  ret i32 %num
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @spec_putc(i8 zeroext %ch, i32 %fd) #0 {
  %1 = load i32* @dbglvl, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 4
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = zext i8 %ch to i32
  %5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str22, i64 0, i64 0), i32 %4, i32 %fd) #6
  br label %6

; <label>:6                                       ; preds = %3, %0
  %7 = icmp sgt i32 %fd, 3
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %6
  %9 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* getelementptr inbounds ([35 x i8]* @.str19, i64 0, i64 0), i32 %fd) #6
  tail call void @exit(i32 0) #7
  unreachable

; <label>:11                                      ; preds = %6
  %12 = sext i32 %fd to i64
  %13 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %12, i32 2
  %14 = load i32* %13, align 8, !tbaa !15
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8, !tbaa !15
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %12, i32 3
  %18 = load i8** %17, align 8, !tbaa !11
  %19 = getelementptr inbounds i8* %18, i64 %16
  store i8 %ch, i8* %19, align 1, !tbaa !12
  %20 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %12, i32 1
  %21 = load i32* %20, align 4, !tbaa !13
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4, !tbaa !13
  %23 = zext i8 %ch to i32
  ret i32 %23
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !7, i64 0}
!9 = !{!"spec_fd_t", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!9, !10, i64 16}
!12 = !{!4, !4, i64 0}
!13 = !{!9, !7, i64 4}
!14 = !{!10, !10, i64 0}
!15 = !{!9, !7, i64 8}
