; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }

@xdr_opaque.crud = internal global [4 x i8] zeroinitializer, align 1
@xdr_zero = internal global [4 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [27 x i8] c"xdr_string: out of memory\0A\00", align 1
@__stderrp = external global %struct.__sFILE*
@xdr_double.LSW = internal unnamed_addr global i1 false
@xdrstdio_ops = internal constant %struct.xdr_ops { i32 (%struct.XDR*, i64*)* @xdrstdio_getlong, i32 (%struct.XDR*, i64*)* @xdrstdio_putlong, i32 (%struct.XDR*, i8*, i32)* @xdrstdio_getbytes, i32 (%struct.XDR*, i8*, i32)* @xdrstdio_putbytes, i32 (%struct.XDR*)* @xdrstdio_getpos, i32 (%struct.XDR*, i32)* @xdrstdio_setpos, i32* (%struct.XDR*, i32)* @xdrstdio_inline, void (%struct.XDR*)* @xdrstdio_destroy, i32 (%struct.XDR*, i32*)* @xdrstdio_getint32, i32 (%struct.XDR*, i32*)* @xdrstdio_putint32 }, align 8

; Function Attrs: nounwind optsize ssp uwtable
define void @xdr_free(i32 (%struct.XDR*, i8*, ...)* nocapture %proc, i8* %objp) #0 {
  %x = alloca %struct.XDR, align 8
  %1 = bitcast %struct.XDR* %x to i8*
  call void @llvm.lifetime.start(i64 48, i8* %1) #1
  %2 = getelementptr inbounds %struct.XDR* %x, i64 0, i32 0
  store i32 2, i32* %2, align 8, !tbaa !2
  %3 = call i32 (%struct.XDR*, i8*, ...)* %proc(%struct.XDR* %x, i8* %objp) #6
  call void @llvm.lifetime.end(i64 48, i8* %1) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @xdr_void() #2 {
  ret i32 1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_int(%struct.XDR* %xdrs, i32* nocapture %ip) #0 {
  %l = alloca i64, align 8
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !2
  switch i32 %2, label %21 [
    i32 0, label %3
    i32 1, label %11
    i32 2, label %22
  ]

; <label>:3                                       ; preds = %0
  %4 = load i32* %ip, align 4, !tbaa !8
  %5 = sext i32 %4 to i64
  store i64 %5, i64* %l, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %7 = load %struct.xdr_ops** %6, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.xdr_ops* %7, i64 0, i32 1
  %9 = load i32 (%struct.XDR*, i64*)** %8, align 8, !tbaa !12
  %10 = call i32 %9(%struct.XDR* %xdrs, i64* %l) #6
  br label %22

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %13 = load %struct.xdr_ops** %12, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.xdr_ops* %13, i64 0, i32 0
  %15 = load i32 (%struct.XDR*, i64*)** %14, align 8, !tbaa !14
  %16 = call i32 %15(%struct.XDR* %xdrs, i64* %l) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

; <label>:18                                      ; preds = %11
  %19 = load i64* %l, align 8, !tbaa !9
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %ip, align 4, !tbaa !8
  br label %22

; <label>:21                                      ; preds = %0
  br label %22

; <label>:22                                      ; preds = %18, %0, %11, %21, %3
  %.0 = phi i32 [ 0, %21 ], [ %10, %3 ], [ 0, %11 ], [ 1, %0 ], [ 1, %18 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_u_int(%struct.XDR* %xdrs, i32* nocapture %up) #0 {
  %l = alloca i64, align 8
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !2
  switch i32 %2, label %21 [
    i32 0, label %3
    i32 1, label %11
  ]

; <label>:3                                       ; preds = %0
  %4 = load i32* %up, align 4, !tbaa !8
  %5 = zext i32 %4 to i64
  store i64 %5, i64* %l, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %7 = load %struct.xdr_ops** %6, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.xdr_ops* %7, i64 0, i32 1
  %9 = load i32 (%struct.XDR*, i64*)** %8, align 8, !tbaa !12
  %10 = call i32 %9(%struct.XDR* %xdrs, i64* %l) #6
  br label %21

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %13 = load %struct.xdr_ops** %12, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.xdr_ops* %13, i64 0, i32 0
  %15 = load i32 (%struct.XDR*, i64*)** %14, align 8, !tbaa !14
  %16 = call i32 %15(%struct.XDR* %xdrs, i64* %l) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

; <label>:18                                      ; preds = %11
  %19 = load i64* %l, align 8, !tbaa !9
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %up, align 4, !tbaa !8
  br label %21

; <label>:21                                      ; preds = %18, %11, %3, %0
  %.0 = phi i32 [ %10, %3 ], [ 0, %11 ], [ 1, %0 ], [ 1, %18 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_long(%struct.XDR* %xdrs, i64* %lp) #0 {
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !2
  switch i32 %2, label %thread-pre-split.thread [
    i32 0, label %3
    i32 1, label %13
    i32 2, label %19
  ]

; <label>:3                                       ; preds = %0
  %4 = load i64* %lp, align 8, !tbaa !9
  %sext = shl i64 %4, 32
  %5 = ashr exact i64 %sext, 32
  %6 = icmp eq i64 %5, %4
  br i1 %6, label %7, label %thread-pre-split.thread

; <label>:7                                       ; preds = %3
  %8 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %9 = load %struct.xdr_ops** %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.xdr_ops* %9, i64 0, i32 1
  %11 = load i32 (%struct.XDR*, i64*)** %10, align 8, !tbaa !12
  %12 = tail call i32 %11(%struct.XDR* %xdrs, i64* %lp) #6
  br label %19

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %15 = load %struct.xdr_ops** %14, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.xdr_ops* %15, i64 0, i32 0
  %17 = load i32 (%struct.XDR*, i64*)** %16, align 8, !tbaa !14
  %18 = tail call i32 %17(%struct.XDR* %xdrs, i64* %lp) #6
  br label %19

thread-pre-split.thread:                          ; preds = %0, %3
  br label %19

; <label>:19                                      ; preds = %0, %thread-pre-split.thread, %13, %7
  %.0 = phi i32 [ %12, %7 ], [ %18, %13 ], [ 0, %thread-pre-split.thread ], [ 1, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_u_long(%struct.XDR* %xdrs, i64* %ulp) #0 {
  %tmp = alloca i64, align 8
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !2
  switch i32 %2, label %23 [
    i32 1, label %3
    i32 0, label %13
    i32 2, label %24
  ]

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %5 = load %struct.xdr_ops** %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.xdr_ops* %5, i64 0, i32 0
  %7 = load i32 (%struct.XDR*, i64*)** %6, align 8, !tbaa !14
  %8 = call i32 %7(%struct.XDR* %xdrs, i64* %tmp) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

; <label>:10                                      ; preds = %3
  %11 = load i64* %tmp, align 8, !tbaa !9
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %ulp, align 8, !tbaa !9
  br label %24

; <label>:13                                      ; preds = %0
  %14 = load i64* %ulp, align 8, !tbaa !9
  %15 = and i64 %14, 4294967295
  %16 = icmp eq i64 %15, %14
  br i1 %16, label %17, label %24

; <label>:17                                      ; preds = %13
  %18 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %19 = load %struct.xdr_ops** %18, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.xdr_ops* %19, i64 0, i32 1
  %21 = load i32 (%struct.XDR*, i64*)** %20, align 8, !tbaa !12
  %22 = tail call i32 %21(%struct.XDR* %xdrs, i64* %ulp) #6
  br label %24

; <label>:23                                      ; preds = %0
  br label %24

; <label>:24                                      ; preds = %0, %13, %3, %23, %17, %10
  %.0 = phi i32 [ 0, %23 ], [ %22, %17 ], [ 1, %10 ], [ 0, %3 ], [ 0, %13 ], [ 1, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_short(%struct.XDR* %xdrs, i16* nocapture %sp) #0 {
  %l = alloca i64, align 8
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !2
  switch i32 %2, label %21 [
    i32 0, label %3
    i32 1, label %11
    i32 2, label %22
  ]

; <label>:3                                       ; preds = %0
  %4 = load i16* %sp, align 2, !tbaa !15
  %5 = sext i16 %4 to i64
  store i64 %5, i64* %l, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %7 = load %struct.xdr_ops** %6, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.xdr_ops* %7, i64 0, i32 1
  %9 = load i32 (%struct.XDR*, i64*)** %8, align 8, !tbaa !12
  %10 = call i32 %9(%struct.XDR* %xdrs, i64* %l) #6
  br label %22

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %13 = load %struct.xdr_ops** %12, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.xdr_ops* %13, i64 0, i32 0
  %15 = load i32 (%struct.XDR*, i64*)** %14, align 8, !tbaa !14
  %16 = call i32 %15(%struct.XDR* %xdrs, i64* %l) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

; <label>:18                                      ; preds = %11
  %19 = load i64* %l, align 8, !tbaa !9
  %20 = trunc i64 %19 to i16
  store i16 %20, i16* %sp, align 2, !tbaa !15
  br label %22

; <label>:21                                      ; preds = %0
  br label %22

; <label>:22                                      ; preds = %0, %11, %21, %18, %3
  %.0 = phi i32 [ 0, %21 ], [ 1, %18 ], [ %10, %3 ], [ 0, %11 ], [ 1, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_u_short(%struct.XDR* %xdrs, i16* nocapture %usp) #0 {
  %l = alloca i64, align 8
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !2
  switch i32 %2, label %21 [
    i32 0, label %3
    i32 1, label %11
    i32 2, label %22
  ]

; <label>:3                                       ; preds = %0
  %4 = load i16* %usp, align 2, !tbaa !15
  %5 = zext i16 %4 to i64
  store i64 %5, i64* %l, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %7 = load %struct.xdr_ops** %6, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.xdr_ops* %7, i64 0, i32 1
  %9 = load i32 (%struct.XDR*, i64*)** %8, align 8, !tbaa !12
  %10 = call i32 %9(%struct.XDR* %xdrs, i64* %l) #6
  br label %22

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %13 = load %struct.xdr_ops** %12, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.xdr_ops* %13, i64 0, i32 0
  %15 = load i32 (%struct.XDR*, i64*)** %14, align 8, !tbaa !14
  %16 = call i32 %15(%struct.XDR* %xdrs, i64* %l) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

; <label>:18                                      ; preds = %11
  %19 = load i64* %l, align 8, !tbaa !9
  %20 = trunc i64 %19 to i16
  store i16 %20, i16* %usp, align 2, !tbaa !15
  br label %22

; <label>:21                                      ; preds = %0
  br label %22

; <label>:22                                      ; preds = %0, %11, %21, %18, %3
  %.0 = phi i32 [ 0, %21 ], [ 1, %18 ], [ %10, %3 ], [ 0, %11 ], [ 1, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_char(%struct.XDR* %xdrs, i8* nocapture %cp) #0 {
  %i = alloca i32, align 4
  %1 = load i8* %cp, align 1, !tbaa !17
  %2 = sext i8 %1 to i32
  store i32 %2, i32* %i, align 4, !tbaa !8
  %3 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %i) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32* %i, align 4, !tbaa !8
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* %cp, align 1, !tbaa !17
  br label %8

; <label>:8                                       ; preds = %0, %5
  %.0 = phi i32 [ 1, %5 ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_u_char(%struct.XDR* %xdrs, i8* nocapture %cp) #0 {
  %u = alloca i32, align 4
  %1 = load i8* %cp, align 1, !tbaa !17
  %2 = zext i8 %1 to i32
  store i32 %2, i32* %u, align 4, !tbaa !8
  %3 = call i32 @xdr_u_int(%struct.XDR* %xdrs, i32* %u) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load i32* %u, align 4, !tbaa !8
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* %cp, align 1, !tbaa !17
  br label %8

; <label>:8                                       ; preds = %0, %5
  %.0 = phi i32 [ 1, %5 ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_bool(%struct.XDR* %xdrs, i32* nocapture %bp) #0 {
  %lb = alloca i64, align 8
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !2
  switch i32 %2, label %22 [
    i32 0, label %3
    i32 1, label %12
    i32 2, label %23
  ]

; <label>:3                                       ; preds = %0
  %4 = load i32* %bp, align 4, !tbaa !8
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i64
  store i64 %6, i64* %lb, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %8 = load %struct.xdr_ops** %7, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.xdr_ops* %8, i64 0, i32 1
  %10 = load i32 (%struct.XDR*, i64*)** %9, align 8, !tbaa !12
  %11 = call i32 %10(%struct.XDR* %xdrs, i64* %lb) #6
  br label %23

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %14 = load %struct.xdr_ops** %13, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.xdr_ops* %14, i64 0, i32 0
  %16 = load i32 (%struct.XDR*, i64*)** %15, align 8, !tbaa !14
  %17 = call i32 %16(%struct.XDR* %xdrs, i64* %lb) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

; <label>:19                                      ; preds = %12
  %20 = load i64* %lb, align 8, !tbaa !9
  %not. = icmp ne i64 %20, 0
  %21 = zext i1 %not. to i32
  store i32 %21, i32* %bp, align 4, !tbaa !8
  br label %23

; <label>:22                                      ; preds = %0
  br label %23

; <label>:23                                      ; preds = %0, %12, %22, %19, %3
  %.0 = phi i32 [ 0, %22 ], [ 1, %19 ], [ %11, %3 ], [ 0, %12 ], [ 1, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_opaque(%struct.XDR* %xdrs, i8* %cp, i32 %cnt) #0 {
  %1 = icmp eq i32 %cnt, 0
  br i1 %1, label %37, label %2

; <label>:2                                       ; preds = %0
  %3 = and i32 %cnt, 3
  %4 = icmp eq i32 %3, 0
  %5 = sub nsw i32 4, %3
  %. = select i1 %4, i32 0, i32 %5
  %6 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0
  %7 = load i32* %6, align 4, !tbaa !2
  switch i32 %7, label %36 [
    i32 1, label %8
    i32 0, label %22
    i32 2, label %37
  ]

; <label>:8                                       ; preds = %2
  %9 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %10 = load %struct.xdr_ops** %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.xdr_ops* %10, i64 0, i32 2
  %12 = load i32 (%struct.XDR*, i8*, i32)** %11, align 8, !tbaa !18
  %13 = tail call i32 %12(%struct.XDR* %xdrs, i8* %cp, i32 %cnt) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %37, label %15

; <label>:15                                      ; preds = %8
  %16 = icmp eq i32 %., 0
  br i1 %16, label %37, label %17

; <label>:17                                      ; preds = %15
  %18 = load %struct.xdr_ops** %9, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct.xdr_ops* %18, i64 0, i32 2
  %20 = load i32 (%struct.XDR*, i8*, i32)** %19, align 8, !tbaa !18
  %21 = tail call i32 %20(%struct.XDR* %xdrs, i8* getelementptr inbounds ([4 x i8]* @xdr_opaque.crud, i64 0, i64 0), i32 %.) #6
  br label %37

; <label>:22                                      ; preds = %2
  %23 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %24 = load %struct.xdr_ops** %23, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.xdr_ops* %24, i64 0, i32 3
  %26 = load i32 (%struct.XDR*, i8*, i32)** %25, align 8, !tbaa !19
  %27 = tail call i32 %26(%struct.XDR* %xdrs, i8* %cp, i32 %cnt) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

; <label>:29                                      ; preds = %22
  %30 = icmp eq i32 %., 0
  br i1 %30, label %37, label %31

; <label>:31                                      ; preds = %29
  %32 = load %struct.xdr_ops** %23, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct.xdr_ops* %32, i64 0, i32 3
  %34 = load i32 (%struct.XDR*, i8*, i32)** %33, align 8, !tbaa !19
  %35 = tail call i32 %34(%struct.XDR* %xdrs, i8* getelementptr inbounds ([4 x i8]* @xdr_zero, i64 0, i64 0), i32 %.) #6
  br label %37

; <label>:36                                      ; preds = %2
  br label %37

; <label>:37                                      ; preds = %2, %29, %22, %15, %8, %0, %36, %31, %17
  %.0 = phi i32 [ 0, %36 ], [ %35, %31 ], [ %21, %17 ], [ 1, %0 ], [ 0, %8 ], [ 1, %15 ], [ 0, %22 ], [ 1, %29 ], [ 1, %2 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_string(%struct.XDR* %xdrs, i8** nocapture %cpp, i32 %maxsize) #0 {
  %size = alloca i32, align 4
  %1 = load i8** %cpp, align 8, !tbaa !20
  %2 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !2
  switch i32 %3, label %10 [
    i32 2, label %4
    i32 0, label %5
  ]

; <label>:4                                       ; preds = %0
  %cond = icmp eq i8* %1, null
  br i1 %cond, label %35, label %7

; <label>:5                                       ; preds = %0
  %6 = icmp eq i8* %1, null
  br i1 %6, label %35, label %7

; <label>:7                                       ; preds = %4, %5
  %8 = tail call i64 @strlen(i8* %1) #6
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %size, align 4, !tbaa !8
  br label %10

; <label>:10                                      ; preds = %0, %7
  %11 = call i32 @xdr_u_int(%struct.XDR* %xdrs, i32* %size) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %35, label %13

; <label>:13                                      ; preds = %10
  %14 = load i32* %size, align 4, !tbaa !8
  %15 = icmp ugt i32 %14, %maxsize
  br i1 %15, label %35, label %16

; <label>:16                                      ; preds = %13
  %17 = add i32 %14, 1
  %18 = load i32* %2, align 4, !tbaa !2
  switch i32 %18, label %35 [
    i32 1, label %19
    i32 0, label %32
    i32 2, label %34
  ]

; <label>:19                                      ; preds = %16
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %35, label %21

; <label>:21                                      ; preds = %19
  %22 = icmp eq i8* %1, null
  br i1 %22, label %23, label %.thread

; <label>:23                                      ; preds = %21
  %24 = zext i32 %17 to i64
  %25 = tail call i8* @malloc(i64 %24) #6
  store i8* %25, i8** %cpp, align 8, !tbaa !20
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %.thread

; <label>:27                                      ; preds = %23
  %28 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !20
  %29 = tail call i32 @"\01_fputs"(i8* getelementptr inbounds ([27 x i8]* @.str, i64 0, i64 0), %struct.__sFILE* %28) #6
  br label %35

.thread:                                          ; preds = %21, %23
  %sp.01 = phi i8* [ %25, %23 ], [ %1, %21 ]
  %30 = zext i32 %14 to i64
  %31 = getelementptr inbounds i8* %sp.01, i64 %30
  store i8 0, i8* %31, align 1, !tbaa !17
  br label %32

; <label>:32                                      ; preds = %16, %.thread
  %sp.1 = phi i8* [ %1, %16 ], [ %sp.01, %.thread ]
  %33 = tail call i32 @xdr_opaque(%struct.XDR* %xdrs, i8* %sp.1, i32 %14) #7
  br label %35

; <label>:34                                      ; preds = %16
  tail call void @free(i8* %1) #7
  store i8* null, i8** %cpp, align 8, !tbaa !20
  br label %35

; <label>:35                                      ; preds = %4, %16, %19, %13, %10, %5, %34, %32, %27
  %.0 = phi i32 [ 1, %34 ], [ %33, %32 ], [ 0, %27 ], [ 1, %4 ], [ 0, %5 ], [ 0, %10 ], [ 0, %13 ], [ 1, %19 ], [ 0, %16 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: optsize
declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #5

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_float(%struct.XDR* %xdrs, float* nocapture %fp) #0 {
  %tmp = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !2
  switch i32 %2, label %23 [
    i32 0, label %3
    i32 1, label %12
    i32 2, label %24
  ]

; <label>:3                                       ; preds = %0
  %4 = bitcast float* %fp to i32*
  %5 = load i32* %4, align 4, !tbaa !8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %tmp, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %8 = load %struct.xdr_ops** %7, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.xdr_ops* %8, i64 0, i32 1
  %10 = load i32 (%struct.XDR*, i64*)** %9, align 8, !tbaa !12
  %11 = call i32 %10(%struct.XDR* %xdrs, i64* %tmp) #6
  br label %24

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %14 = load %struct.xdr_ops** %13, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.xdr_ops* %14, i64 0, i32 0
  %16 = load i32 (%struct.XDR*, i64*)** %15, align 8, !tbaa !14
  %17 = call i32 %16(%struct.XDR* %xdrs, i64* %tmp1) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

; <label>:19                                      ; preds = %12
  %20 = load i64* %tmp1, align 8, !tbaa !9
  %21 = trunc i64 %20 to i32
  %22 = bitcast float* %fp to i32*
  store i32 %21, i32* %22, align 4, !tbaa !8
  br label %24

; <label>:23                                      ; preds = %12, %0
  br label %24

; <label>:24                                      ; preds = %0, %23, %19, %3
  %.0 = phi i32 [ 0, %23 ], [ 1, %19 ], [ %11, %3 ], [ 1, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_double(%struct.XDR* %xdrs, double* nocapture %dp) #0 {
  %tmp = alloca [2 x i64], align 16
  %tmp2 = alloca [2 x i64], align 16
  %.b6 = load i1* @xdr_double.LSW, align 1
  br i1 %.b6, label %2, label %1

; <label>:1                                       ; preds = %0
  store i1 true, i1* @xdr_double.LSW, align 1
  br label %2

; <label>:2                                       ; preds = %0, %1
  %3 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0
  %4 = load i32* %3, align 4, !tbaa !2
  switch i32 %4, label %53 [
    i32 0, label %5
    i32 1, label %29
    i32 2, label %54
  ]

; <label>:5                                       ; preds = %2
  %6 = bitcast double* %dp to i32*
  %7 = getelementptr inbounds i32* %6, i64 1
  %8 = load i32* %7, align 4, !tbaa !8
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [2 x i64]* %tmp, i64 0, i64 0
  store i64 %9, i64* %10, align 16, !tbaa !9
  %11 = load i32* %6, align 4, !tbaa !8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [2 x i64]* %tmp, i64 0, i64 1
  store i64 %12, i64* %13, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %15 = load %struct.xdr_ops** %14, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.xdr_ops* %15, i64 0, i32 1
  %17 = load i32 (%struct.XDR*, i64*)** %16, align 8, !tbaa !12
  %18 = call i32 %17(%struct.XDR* %xdrs, i64* %10) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

; <label>:20                                      ; preds = %5
  %21 = load %struct.xdr_ops** %14, align 8, !tbaa !11
  %22 = getelementptr inbounds %struct.xdr_ops* %21, i64 0, i32 1
  %23 = load i32 (%struct.XDR*, i64*)** %22, align 8, !tbaa !12
  %24 = call i32 %23(%struct.XDR* %xdrs, i64* %13) #6
  %25 = icmp ne i32 %24, 0
  br label %26

; <label>:26                                      ; preds = %5, %20
  %27 = phi i1 [ false, %5 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  br label %54

; <label>:29                                      ; preds = %2
  %30 = bitcast double* %dp to i32*
  %31 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %32 = load %struct.xdr_ops** %31, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct.xdr_ops* %32, i64 0, i32 0
  %34 = load i32 (%struct.XDR*, i64*)** %33, align 8, !tbaa !14
  %35 = getelementptr inbounds [2 x i64]* %tmp2, i64 0, i64 1
  %36 = call i32 %34(%struct.XDR* %xdrs, i64* %35) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %53, label %38

; <label>:38                                      ; preds = %29
  %39 = load %struct.xdr_ops** %31, align 8, !tbaa !11
  %40 = getelementptr inbounds %struct.xdr_ops* %39, i64 0, i32 0
  %41 = load i32 (%struct.XDR*, i64*)** %40, align 8, !tbaa !14
  %.b = load i1* @xdr_double.LSW, align 1
  %not..b = xor i1 %.b, true
  %42 = sext i1 %not..b to i64
  %43 = getelementptr inbounds [2 x i64]* %tmp2, i64 0, i64 %42
  %44 = call i32 %41(%struct.XDR* %xdrs, i64* %43) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

; <label>:46                                      ; preds = %38
  %47 = getelementptr inbounds [2 x i64]* %tmp2, i64 0, i64 0
  %48 = load i64* %47, align 16, !tbaa !9
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %30, align 4, !tbaa !8
  %50 = load i64* %35, align 8, !tbaa !9
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds i32* %30, i64 1
  store i32 %51, i32* %52, align 4, !tbaa !8
  br label %54

; <label>:53                                      ; preds = %38, %29, %2
  br label %54

; <label>:54                                      ; preds = %2, %53, %46, %26
  %.0 = phi i32 [ 0, %53 ], [ 1, %46 ], [ %28, %26 ], [ 1, %2 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_vector(%struct.XDR* %xdrs, i8* %basep, i32 %nelem, i32 %elemsize, i32 (%struct.XDR*, i8*, ...)* nocapture %xdr_elem) #0 {
  %1 = icmp eq i32 %nelem, 0
  br i1 %1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %2 = zext i32 %elemsize to i64
  br label %3

; <label>:3                                       ; preds = %.lr.ph, %6
  %elptr.02 = phi i8* [ %basep, %.lr.ph ], [ %7, %6 ]
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %8, %6 ]
  %4 = tail call i32 (%struct.XDR*, i8*, ...)* %xdr_elem(%struct.XDR* %xdrs, i8* %elptr.02, i32 -1) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %._crit_edge, label %6

; <label>:6                                       ; preds = %3
  %7 = getelementptr inbounds i8* %elptr.02, i64 %2
  %8 = add nuw i32 %i.01, 1
  %9 = icmp ult i32 %8, %nelem
  br i1 %9, label %3, label %._crit_edge

._crit_edge:                                      ; preds = %3, %6, %0
  %.0 = phi i32 [ 1, %0 ], [ 0, %3 ], [ 1, %6 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @xdrstdio_create(%struct.XDR* nocapture %xdrs, %struct.__sFILE* %file, i32 %op) #0 {
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0
  store i32 %op, i32* %1, align 4, !tbaa !2
  %2 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  store %struct.xdr_ops* @xdrstdio_ops, %struct.xdr_ops** %2, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3
  %4 = bitcast i8** %3 to %struct.__sFILE**
  store %struct.__sFILE* %file, %struct.__sFILE** %4, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 5
  store i32 0, i32* %5, align 4, !tbaa !22
  %6 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 4
  store i8* null, i8** %6, align 8, !tbaa !23
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @xdrstdio_getlong(%struct.XDR* nocapture readonly %xdrs, i64* nocapture %lp) #0 {
  %1 = alloca i32, align 4
  %y.i.i = alloca i32, align 4
  %mycopy = alloca i32, align 4
  %2 = bitcast i32* %mycopy to i8*
  %3 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3
  %4 = bitcast i8** %3 to %struct.__sFILE**
  %5 = load %struct.__sFILE** %4, align 8, !tbaa !21
  %6 = call i64 @fread(i8* %2, i64 4, i64 1, %struct.__sFILE* %5) #6
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %8, label %19

; <label>:8                                       ; preds = %0
  %9 = load i32* %mycopy, align 4, !tbaa !8
  %10 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %y.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 %9, i32* %1, align 4, !tbaa !8
  br label %12

; <label>:12                                      ; preds = %12, %8
  %indvars.iv.i.i = phi i64 [ 0, %8 ], [ %indvars.iv.next.i.i, %12 ]
  %13 = sub nsw i64 3, %indvars.iv.i.i
  %14 = getelementptr inbounds i8* %10, i64 %13
  %15 = load i8* %14, align 1, !tbaa !17
  %16 = getelementptr inbounds i8* %11, i64 %indvars.iv.i.i
  store i8 %15, i8* %16, align 1, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 4
  br i1 %exitcond.i.i, label %xdr_ntohl.exit, label %12

xdr_ntohl.exit:                                   ; preds = %12
  %17 = load i32* %y.i.i, align 4, !tbaa !8
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %lp, align 8, !tbaa !9
  br label %19

; <label>:19                                      ; preds = %0, %xdr_ntohl.exit
  %.0 = phi i32 [ 1, %xdr_ntohl.exit ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @xdrstdio_putlong(%struct.XDR* nocapture readonly %xdrs, i64* nocapture readonly %lp) #0 {
  %1 = alloca i32, align 4
  %y.i.i = alloca i32, align 4
  %mycopy = alloca i64, align 8
  %2 = load i64* %lp, align 8, !tbaa !9
  %3 = trunc i64 %2 to i32
  %4 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %y.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 %3, i32* %1, align 4, !tbaa !8
  br label %6

; <label>:6                                       ; preds = %6, %0
  %indvars.iv.i.i = phi i64 [ 0, %0 ], [ %indvars.iv.next.i.i, %6 ]
  %7 = sub nsw i64 3, %indvars.iv.i.i
  %8 = getelementptr inbounds i8* %4, i64 %7
  %9 = load i8* %8, align 1, !tbaa !17
  %10 = getelementptr inbounds i8* %5, i64 %indvars.iv.i.i
  store i8 %9, i8* %10, align 1, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 4
  br i1 %exitcond.i.i, label %xdr_htonl.exit, label %6

xdr_htonl.exit:                                   ; preds = %6
  %11 = load i32* %y.i.i, align 4, !tbaa !8
  call void @llvm.lifetime.end(i64 4, i8* %4) #1
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %mycopy, align 8, !tbaa !9
  %13 = bitcast i64* %mycopy to i8*
  %14 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3
  %15 = bitcast i8** %14 to %struct.__sFILE**
  %16 = load %struct.__sFILE** %15, align 8, !tbaa !21
  %17 = call i64 @"\01_fwrite"(i8* %13, i64 4, i64 1, %struct.__sFILE* %16) #6
  %18 = icmp eq i64 %17, 1
  %. = zext i1 %18 to i32
  ret i32 %.
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @xdrstdio_getbytes(%struct.XDR* nocapture readonly %xdrs, i8* nocapture %addr, i32 %len) #0 {
  %1 = icmp eq i32 %len, 0
  br i1 %1, label %9, label %2

; <label>:2                                       ; preds = %0
  %3 = sext i32 %len to i64
  %4 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3
  %5 = bitcast i8** %4 to %struct.__sFILE**
  %6 = load %struct.__sFILE** %5, align 8, !tbaa !21
  %7 = tail call i64 @fread(i8* %addr, i64 %3, i64 1, %struct.__sFILE* %6) #6
  %8 = icmp eq i64 %7, 1
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2, %0
  br label %10

; <label>:10                                      ; preds = %2, %9
  %.0 = phi i32 [ 1, %9 ], [ 0, %2 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @xdrstdio_putbytes(%struct.XDR* nocapture readonly %xdrs, i8* %addr, i32 %len) #0 {
  %1 = icmp eq i32 %len, 0
  br i1 %1, label %9, label %2

; <label>:2                                       ; preds = %0
  %3 = sext i32 %len to i64
  %4 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3
  %5 = bitcast i8** %4 to %struct.__sFILE**
  %6 = load %struct.__sFILE** %5, align 8, !tbaa !21
  %7 = tail call i64 @"\01_fwrite"(i8* %addr, i64 %3, i64 1, %struct.__sFILE* %6) #6
  %8 = icmp eq i64 %7, 1
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2, %0
  br label %10

; <label>:10                                      ; preds = %2, %9
  %.0 = phi i32 [ 1, %9 ], [ 0, %2 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @xdrstdio_getpos(%struct.XDR* nocapture readonly %xdrs) #0 {
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3
  %2 = bitcast i8** %1 to %struct.__sFILE**
  %3 = load %struct.__sFILE** %2, align 8, !tbaa !21
  %4 = tail call i64 @ftell(%struct.__sFILE* %3) #6
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @xdrstdio_setpos(%struct.XDR* nocapture readonly %xdrs, i32 %pos) #0 {
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3
  %2 = bitcast i8** %1 to %struct.__sFILE**
  %3 = load %struct.__sFILE** %2, align 8, !tbaa !21
  %4 = zext i32 %pos to i64
  %5 = tail call i32 @fseek(%struct.__sFILE* %3, i64 %4, i32 0) #6
  %.lobit = lshr i32 %5, 31
  %.lobit.not = xor i32 %.lobit, 1
  ret i32 %.lobit.not
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define internal noalias i32* @xdrstdio_inline(%struct.XDR* nocapture readnone %xdrs, i32 %len) #2 {
  ret i32* null
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @xdrstdio_destroy(%struct.XDR* nocapture readonly %xdrs) #0 {
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3
  %2 = bitcast i8** %1 to %struct.__sFILE**
  %3 = load %struct.__sFILE** %2, align 8, !tbaa !21
  %4 = tail call i32 @fflush(%struct.__sFILE* %3) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @xdrstdio_getint32(%struct.XDR* nocapture readonly %xdrs, i32* nocapture %ip) #0 {
  %1 = alloca i32, align 4
  %y.i.i = alloca i32, align 4
  %mycopy = alloca i32, align 4
  %2 = bitcast i32* %mycopy to i8*
  %3 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3
  %4 = bitcast i8** %3 to %struct.__sFILE**
  %5 = load %struct.__sFILE** %4, align 8, !tbaa !21
  %6 = call i64 @fread(i8* %2, i64 4, i64 1, %struct.__sFILE* %5) #6
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %0
  %9 = load i32* %mycopy, align 4, !tbaa !8
  %10 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %y.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  store i32 %9, i32* %1, align 4, !tbaa !8
  br label %12

; <label>:12                                      ; preds = %12, %8
  %indvars.iv.i.i = phi i64 [ 0, %8 ], [ %indvars.iv.next.i.i, %12 ]
  %13 = sub nsw i64 3, %indvars.iv.i.i
  %14 = getelementptr inbounds i8* %10, i64 %13
  %15 = load i8* %14, align 1, !tbaa !17
  %16 = getelementptr inbounds i8* %11, i64 %indvars.iv.i.i
  store i8 %15, i8* %16, align 1, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 4
  br i1 %exitcond.i.i, label %xdr_ntohl.exit, label %12

xdr_ntohl.exit:                                   ; preds = %12
  %17 = load i32* %y.i.i, align 4, !tbaa !8
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  store i32 %17, i32* %ip, align 4, !tbaa !8
  br label %18

; <label>:18                                      ; preds = %0, %xdr_ntohl.exit
  %.0 = phi i32 [ 1, %xdr_ntohl.exit ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @xdrstdio_putint32(%struct.XDR* nocapture readonly %xdrs, i32* nocapture readonly %ip) #0 {
  %1 = alloca i32, align 4
  %y.i.i = alloca i32, align 4
  %mycopy = alloca i32, align 4
  %2 = load i32* %ip, align 4, !tbaa !8
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %y.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 %2, i32* %1, align 4, !tbaa !8
  br label %5

; <label>:5                                       ; preds = %5, %0
  %indvars.iv.i.i = phi i64 [ 0, %0 ], [ %indvars.iv.next.i.i, %5 ]
  %6 = sub nsw i64 3, %indvars.iv.i.i
  %7 = getelementptr inbounds i8* %3, i64 %6
  %8 = load i8* %7, align 1, !tbaa !17
  %9 = getelementptr inbounds i8* %4, i64 %indvars.iv.i.i
  store i8 %8, i8* %9, align 1, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 4
  br i1 %exitcond.i.i, label %xdr_htonl.exit, label %5

xdr_htonl.exit:                                   ; preds = %5
  %10 = load i32* %y.i.i, align 4, !tbaa !8
  call void @llvm.lifetime.end(i64 4, i8* %3) #1
  call void @llvm.lifetime.end(i64 4, i8* %4) #1
  store i32 %10, i32* %mycopy, align 4, !tbaa !8
  %11 = bitcast i32* %mycopy to i8*
  %12 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3
  %13 = bitcast i8** %12 to %struct.__sFILE**
  %14 = load %struct.__sFILE** %13, align 8, !tbaa !21
  %15 = call i64 @"\01_fwrite"(i8* %11, i64 4, i64 1, %struct.__sFILE* %14) #6
  %16 = icmp eq i64 %15, 1
  %. = zext i1 %16 to i32
  ret i32 %.
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

; Function Attrs: optsize
declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #5

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct.__sFILE* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct.__sFILE* nocapture, i64, i32) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"XDR", !4, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"any pointer", !4, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!3, !6, i64 8}
!12 = !{!13, !6, i64 8}
!13 = !{!"xdr_ops", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!14 = !{!13, !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !4, i64 0}
!17 = !{!4, !4, i64 0}
!18 = !{!13, !6, i64 16}
!19 = !{!13, !6, i64 24}
!20 = !{!6, !6, i64 0}
!21 = !{!3, !6, i64 24}
!22 = !{!3, !7, i64 40}
!23 = !{!3, !6, i64 32}
