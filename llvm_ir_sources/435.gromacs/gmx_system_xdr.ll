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
  tail call void @llvm.dbg.value(metadata i32 (%struct.XDR*, i8*, ...)* %proc, i64 0, metadata !137, metadata !360), !dbg !361
  tail call void @llvm.dbg.value(metadata i8* %objp, i64 0, metadata !138, metadata !360), !dbg !362
  %1 = bitcast %struct.XDR* %x to i8*, !dbg !363
  call void @llvm.lifetime.start(i64 48, i8* %1) #2, !dbg !363
  %2 = getelementptr inbounds %struct.XDR* %x, i64 0, i32 0, !dbg !364
  store i32 2, i32* %2, align 8, !dbg !365, !tbaa !366
  tail call void @llvm.dbg.value(metadata %struct.XDR* %x, i64 0, metadata !139, metadata !360), !dbg !372
  %3 = call i32 (%struct.XDR*, i8*, ...)* %proc(%struct.XDR* %x, i8* %objp) #7, !dbg !373
  call void @llvm.lifetime.end(i64 48, i8* %1) #2, !dbg !374
  ret void, !dbg !374
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @xdr_void() #3 {
  ret i32 1, !dbg !375
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_int(%struct.XDR* %xdrs, i32* nocapture %ip) #0 {
  %l = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !148, metadata !360), !dbg !376
  tail call void @llvm.dbg.value(metadata i32* %ip, i64 0, metadata !149, metadata !360), !dbg !377
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !378
  %2 = load i32* %1, align 4, !dbg !378, !tbaa !366
  switch i32 %2, label %21 [
    i32 0, label %3
    i32 1, label %11
    i32 2, label %22
  ], !dbg !379

; <label>:3                                       ; preds = %0
  %4 = load i32* %ip, align 4, !dbg !380, !tbaa !382
  %5 = sext i32 %4 to i64, !dbg !383
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !150, metadata !360), !dbg !384
  store i64 %5, i64* %l, align 8, !dbg !385, !tbaa !386
  %6 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !388
  %7 = load %struct.xdr_ops** %6, align 8, !dbg !388, !tbaa !389
  %8 = getelementptr inbounds %struct.xdr_ops* %7, i64 0, i32 1, !dbg !388
  %9 = load i32 (%struct.XDR*, i64*)** %8, align 8, !dbg !388, !tbaa !390
  tail call void @llvm.dbg.value(metadata i64* %l, i64 0, metadata !150, metadata !360), !dbg !384
  %10 = call i32 %9(%struct.XDR* %xdrs, i64* %l) #7, !dbg !388
  br label %22, !dbg !392

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !393
  %13 = load %struct.xdr_ops** %12, align 8, !dbg !393, !tbaa !389
  %14 = getelementptr inbounds %struct.xdr_ops* %13, i64 0, i32 0, !dbg !393
  %15 = load i32 (%struct.XDR*, i64*)** %14, align 8, !dbg !393, !tbaa !395
  tail call void @llvm.dbg.value(metadata i64* %l, i64 0, metadata !150, metadata !360), !dbg !384
  %16 = call i32 %15(%struct.XDR* %xdrs, i64* %l) #7, !dbg !393
  %17 = icmp eq i32 %16, 0, !dbg !393
  br i1 %17, label %22, label %18, !dbg !396

; <label>:18                                      ; preds = %11
  call void @llvm.dbg.value(metadata i64* %l, i64 0, metadata !150, metadata !360), !dbg !384
  %19 = load i64* %l, align 8, !dbg !397, !tbaa !386
  %20 = trunc i64 %19 to i32, !dbg !398
  store i32 %20, i32* %ip, align 4, !dbg !399, !tbaa !382
  br label %22, !dbg !400

; <label>:21                                      ; preds = %0
  br label %22, !dbg !401

; <label>:22                                      ; preds = %18, %0, %11, %21, %3
  %.0 = phi i32 [ 0, %21 ], [ %10, %3 ], [ 0, %11 ], [ 1, %0 ], [ 1, %18 ]
  ret i32 %.0, !dbg !402
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_u_int(%struct.XDR* %xdrs, i32* nocapture %up) #0 {
  %l = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !156, metadata !360), !dbg !403
  tail call void @llvm.dbg.value(metadata i32* %up, i64 0, metadata !157, metadata !360), !dbg !404
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !405
  %2 = load i32* %1, align 4, !dbg !405, !tbaa !366
  switch i32 %2, label %21 [
    i32 0, label %3
    i32 1, label %11
  ], !dbg !406

; <label>:3                                       ; preds = %0
  %4 = load i32* %up, align 4, !dbg !407, !tbaa !382
  %5 = zext i32 %4 to i64, !dbg !409
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !158, metadata !360), !dbg !410
  store i64 %5, i64* %l, align 8, !dbg !411, !tbaa !386
  %6 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !412
  %7 = load %struct.xdr_ops** %6, align 8, !dbg !412, !tbaa !389
  %8 = getelementptr inbounds %struct.xdr_ops* %7, i64 0, i32 1, !dbg !412
  %9 = load i32 (%struct.XDR*, i64*)** %8, align 8, !dbg !412, !tbaa !390
  tail call void @llvm.dbg.value(metadata i64* %l, i64 0, metadata !158, metadata !360), !dbg !410
  %10 = call i32 %9(%struct.XDR* %xdrs, i64* %l) #7, !dbg !412
  br label %21, !dbg !413

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !414
  %13 = load %struct.xdr_ops** %12, align 8, !dbg !414, !tbaa !389
  %14 = getelementptr inbounds %struct.xdr_ops* %13, i64 0, i32 0, !dbg !414
  %15 = load i32 (%struct.XDR*, i64*)** %14, align 8, !dbg !414, !tbaa !395
  tail call void @llvm.dbg.value(metadata i64* %l, i64 0, metadata !158, metadata !360), !dbg !410
  %16 = call i32 %15(%struct.XDR* %xdrs, i64* %l) #7, !dbg !414
  %17 = icmp eq i32 %16, 0, !dbg !414
  br i1 %17, label %21, label %18, !dbg !416

; <label>:18                                      ; preds = %11
  call void @llvm.dbg.value(metadata i64* %l, i64 0, metadata !158, metadata !360), !dbg !410
  %19 = load i64* %l, align 8, !dbg !417, !tbaa !386
  %20 = trunc i64 %19 to i32, !dbg !418
  store i32 %20, i32* %up, align 4, !dbg !419, !tbaa !382
  br label %21, !dbg !420

; <label>:21                                      ; preds = %18, %11, %3, %0
  %.0 = phi i32 [ %10, %3 ], [ 0, %11 ], [ 1, %0 ], [ 1, %18 ]
  ret i32 %.0, !dbg !421
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_long(%struct.XDR* %xdrs, i64* %lp) #0 {
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !161, metadata !360), !dbg !422
  tail call void @llvm.dbg.value(metadata i64* %lp, i64 0, metadata !162, metadata !360), !dbg !423
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !424
  %2 = load i32* %1, align 4, !dbg !424, !tbaa !366
  switch i32 %2, label %thread-pre-split.thread [
    i32 0, label %3
    i32 1, label %13
    i32 2, label %19
  ], !dbg !426

; <label>:3                                       ; preds = %0
  %4 = load i64* %lp, align 8, !dbg !427, !tbaa !386
  %sext = shl i64 %4, 32, !dbg !428
  %5 = ashr exact i64 %sext, 32, !dbg !428
  %6 = icmp eq i64 %5, %4, !dbg !429
  br i1 %6, label %7, label %thread-pre-split.thread, !dbg !430

; <label>:7                                       ; preds = %3
  %8 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !431
  %9 = load %struct.xdr_ops** %8, align 8, !dbg !431, !tbaa !389
  %10 = getelementptr inbounds %struct.xdr_ops* %9, i64 0, i32 1, !dbg !431
  %11 = load i32 (%struct.XDR*, i64*)** %10, align 8, !dbg !431, !tbaa !390
  %12 = tail call i32 %11(%struct.XDR* %xdrs, i64* %lp) #7, !dbg !431
  br label %19, !dbg !432

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !433
  %15 = load %struct.xdr_ops** %14, align 8, !dbg !433, !tbaa !389
  %16 = getelementptr inbounds %struct.xdr_ops* %15, i64 0, i32 0, !dbg !433
  %17 = load i32 (%struct.XDR*, i64*)** %16, align 8, !dbg !433, !tbaa !395
  %18 = tail call i32 %17(%struct.XDR* %xdrs, i64* %lp) #7, !dbg !433
  br label %19, !dbg !435

thread-pre-split.thread:                          ; preds = %0, %3
  br label %19, !dbg !436

; <label>:19                                      ; preds = %0, %thread-pre-split.thread, %13, %7
  %.0 = phi i32 [ %12, %7 ], [ %18, %13 ], [ 0, %thread-pre-split.thread ], [ 1, %0 ]
  ret i32 %.0, !dbg !437
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_u_long(%struct.XDR* %xdrs, i64* %ulp) #0 {
  %tmp = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !168, metadata !360), !dbg !438
  tail call void @llvm.dbg.value(metadata i64* %ulp, i64 0, metadata !169, metadata !360), !dbg !439
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !440
  %2 = load i32* %1, align 4, !dbg !440, !tbaa !366
  switch i32 %2, label %23 [
    i32 1, label %3
    i32 0, label %13
    i32 2, label %24
  ], !dbg !441

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !442
  %5 = load %struct.xdr_ops** %4, align 8, !dbg !442, !tbaa !389
  %6 = getelementptr inbounds %struct.xdr_ops* %5, i64 0, i32 0, !dbg !442
  %7 = load i32 (%struct.XDR*, i64*)** %6, align 8, !dbg !442, !tbaa !395
  tail call void @llvm.dbg.value(metadata i64* %tmp, i64 0, metadata !170, metadata !360), !dbg !444
  %8 = call i32 %7(%struct.XDR* %xdrs, i64* %tmp) #7, !dbg !442
  %9 = icmp eq i32 %8, 0, !dbg !445
  br i1 %9, label %24, label %10, !dbg !446

; <label>:10                                      ; preds = %3
  call void @llvm.dbg.value(metadata i64* %tmp, i64 0, metadata !170, metadata !360), !dbg !444
  %11 = load i64* %tmp, align 8, !dbg !447, !tbaa !386
  %12 = and i64 %11, 4294967295, !dbg !448
  store i64 %12, i64* %ulp, align 8, !dbg !449, !tbaa !386
  br label %24, !dbg !450

; <label>:13                                      ; preds = %0
  %14 = load i64* %ulp, align 8, !dbg !451, !tbaa !386
  %15 = and i64 %14, 4294967295, !dbg !453
  %16 = icmp eq i64 %15, %14, !dbg !454
  br i1 %16, label %17, label %24, !dbg !455

; <label>:17                                      ; preds = %13
  %18 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !456
  %19 = load %struct.xdr_ops** %18, align 8, !dbg !456, !tbaa !389
  %20 = getelementptr inbounds %struct.xdr_ops* %19, i64 0, i32 1, !dbg !456
  %21 = load i32 (%struct.XDR*, i64*)** %20, align 8, !dbg !456, !tbaa !390
  %22 = tail call i32 %21(%struct.XDR* %xdrs, i64* %ulp) #7, !dbg !456
  br label %24, !dbg !457

; <label>:23                                      ; preds = %0
  br label %24, !dbg !458

; <label>:24                                      ; preds = %0, %13, %3, %23, %17, %10
  %.0 = phi i32 [ 0, %23 ], [ %22, %17 ], [ 1, %10 ], [ 0, %3 ], [ 0, %13 ], [ 1, %0 ]
  ret i32 %.0, !dbg !459
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_short(%struct.XDR* %xdrs, i16* nocapture %sp) #0 {
  %l = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !178, metadata !360), !dbg !460
  tail call void @llvm.dbg.value(metadata i16* %sp, i64 0, metadata !179, metadata !360), !dbg !461
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !462
  %2 = load i32* %1, align 4, !dbg !462, !tbaa !366
  switch i32 %2, label %21 [
    i32 0, label %3
    i32 1, label %11
    i32 2, label %22
  ], !dbg !463

; <label>:3                                       ; preds = %0
  %4 = load i16* %sp, align 2, !dbg !464, !tbaa !466
  %5 = sext i16 %4 to i64, !dbg !468
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !180, metadata !360), !dbg !469
  store i64 %5, i64* %l, align 8, !dbg !470, !tbaa !386
  %6 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !471
  %7 = load %struct.xdr_ops** %6, align 8, !dbg !471, !tbaa !389
  %8 = getelementptr inbounds %struct.xdr_ops* %7, i64 0, i32 1, !dbg !471
  %9 = load i32 (%struct.XDR*, i64*)** %8, align 8, !dbg !471, !tbaa !390
  tail call void @llvm.dbg.value(metadata i64* %l, i64 0, metadata !180, metadata !360), !dbg !469
  %10 = call i32 %9(%struct.XDR* %xdrs, i64* %l) #7, !dbg !471
  br label %22, !dbg !472

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !473
  %13 = load %struct.xdr_ops** %12, align 8, !dbg !473, !tbaa !389
  %14 = getelementptr inbounds %struct.xdr_ops* %13, i64 0, i32 0, !dbg !473
  %15 = load i32 (%struct.XDR*, i64*)** %14, align 8, !dbg !473, !tbaa !395
  tail call void @llvm.dbg.value(metadata i64* %l, i64 0, metadata !180, metadata !360), !dbg !469
  %16 = call i32 %15(%struct.XDR* %xdrs, i64* %l) #7, !dbg !473
  %17 = icmp eq i32 %16, 0, !dbg !473
  br i1 %17, label %22, label %18, !dbg !475

; <label>:18                                      ; preds = %11
  call void @llvm.dbg.value(metadata i64* %l, i64 0, metadata !180, metadata !360), !dbg !469
  %19 = load i64* %l, align 8, !dbg !476, !tbaa !386
  %20 = trunc i64 %19 to i16, !dbg !477
  store i16 %20, i16* %sp, align 2, !dbg !478, !tbaa !466
  br label %22, !dbg !479

; <label>:21                                      ; preds = %0
  br label %22, !dbg !480

; <label>:22                                      ; preds = %0, %11, %21, %18, %3
  %.0 = phi i32 [ 0, %21 ], [ 1, %18 ], [ %10, %3 ], [ 0, %11 ], [ 1, %0 ]
  ret i32 %.0, !dbg !481
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_u_short(%struct.XDR* %xdrs, i16* nocapture %usp) #0 {
  %l = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !186, metadata !360), !dbg !482
  tail call void @llvm.dbg.value(metadata i16* %usp, i64 0, metadata !187, metadata !360), !dbg !483
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !484
  %2 = load i32* %1, align 4, !dbg !484, !tbaa !366
  switch i32 %2, label %21 [
    i32 0, label %3
    i32 1, label %11
    i32 2, label %22
  ], !dbg !485

; <label>:3                                       ; preds = %0
  %4 = load i16* %usp, align 2, !dbg !486, !tbaa !466
  %5 = zext i16 %4 to i64, !dbg !488
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !188, metadata !360), !dbg !489
  store i64 %5, i64* %l, align 8, !dbg !490, !tbaa !386
  %6 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !491
  %7 = load %struct.xdr_ops** %6, align 8, !dbg !491, !tbaa !389
  %8 = getelementptr inbounds %struct.xdr_ops* %7, i64 0, i32 1, !dbg !491
  %9 = load i32 (%struct.XDR*, i64*)** %8, align 8, !dbg !491, !tbaa !390
  tail call void @llvm.dbg.value(metadata i64* %l, i64 0, metadata !188, metadata !360), !dbg !489
  %10 = call i32 %9(%struct.XDR* %xdrs, i64* %l) #7, !dbg !491
  br label %22, !dbg !492

; <label>:11                                      ; preds = %0
  %12 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !493
  %13 = load %struct.xdr_ops** %12, align 8, !dbg !493, !tbaa !389
  %14 = getelementptr inbounds %struct.xdr_ops* %13, i64 0, i32 0, !dbg !493
  %15 = load i32 (%struct.XDR*, i64*)** %14, align 8, !dbg !493, !tbaa !395
  tail call void @llvm.dbg.value(metadata i64* %l, i64 0, metadata !188, metadata !360), !dbg !489
  %16 = call i32 %15(%struct.XDR* %xdrs, i64* %l) #7, !dbg !493
  %17 = icmp eq i32 %16, 0, !dbg !493
  br i1 %17, label %22, label %18, !dbg !495

; <label>:18                                      ; preds = %11
  call void @llvm.dbg.value(metadata i64* %l, i64 0, metadata !188, metadata !360), !dbg !489
  %19 = load i64* %l, align 8, !dbg !496, !tbaa !386
  %20 = trunc i64 %19 to i16, !dbg !497
  store i16 %20, i16* %usp, align 2, !dbg !498, !tbaa !466
  br label %22, !dbg !499

; <label>:21                                      ; preds = %0
  br label %22, !dbg !500

; <label>:22                                      ; preds = %0, %11, %21, %18, %3
  %.0 = phi i32 [ 0, %21 ], [ 1, %18 ], [ %10, %3 ], [ 0, %11 ], [ 1, %0 ]
  ret i32 %.0, !dbg !501
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_char(%struct.XDR* %xdrs, i8* nocapture %cp) #0 {
  %i = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !193, metadata !360), !dbg !502
  tail call void @llvm.dbg.value(metadata i8* %cp, i64 0, metadata !194, metadata !360), !dbg !503
  %1 = load i8* %cp, align 1, !dbg !504, !tbaa !505
  %2 = sext i8 %1 to i32, !dbg !506
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !195, metadata !360), !dbg !507
  store i32 %2, i32* %i, align 4, !dbg !508, !tbaa !382
  tail call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !195, metadata !360), !dbg !507
  %3 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %i) #8, !dbg !509
  %4 = icmp eq i32 %3, 0, !dbg !509
  br i1 %4, label %8, label %5, !dbg !511

; <label>:5                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32* %i, i64 0, metadata !195, metadata !360), !dbg !507
  %6 = load i32* %i, align 4, !dbg !512, !tbaa !382
  %7 = trunc i32 %6 to i8, !dbg !512
  store i8 %7, i8* %cp, align 1, !dbg !513, !tbaa !505
  br label %8, !dbg !514

; <label>:8                                       ; preds = %0, %5
  %.0 = phi i32 [ 1, %5 ], [ 0, %0 ]
  ret i32 %.0, !dbg !515
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_u_char(%struct.XDR* %xdrs, i8* nocapture %cp) #0 {
  %u = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !200, metadata !360), !dbg !516
  tail call void @llvm.dbg.value(metadata i8* %cp, i64 0, metadata !201, metadata !360), !dbg !517
  %1 = load i8* %cp, align 1, !dbg !518, !tbaa !505
  %2 = zext i8 %1 to i32, !dbg !519
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !202, metadata !360), !dbg !520
  store i32 %2, i32* %u, align 4, !dbg !521, !tbaa !382
  tail call void @llvm.dbg.value(metadata i32* %u, i64 0, metadata !202, metadata !360), !dbg !520
  %3 = call i32 @xdr_u_int(%struct.XDR* %xdrs, i32* %u) #8, !dbg !522
  %4 = icmp eq i32 %3, 0, !dbg !522
  br i1 %4, label %8, label %5, !dbg !524

; <label>:5                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32* %u, i64 0, metadata !202, metadata !360), !dbg !520
  %6 = load i32* %u, align 4, !dbg !525, !tbaa !382
  %7 = trunc i32 %6 to i8, !dbg !525
  store i8 %7, i8* %cp, align 1, !dbg !526, !tbaa !505
  br label %8, !dbg !527

; <label>:8                                       ; preds = %0, %5
  %.0 = phi i32 [ 1, %5 ], [ 0, %0 ]
  ret i32 %.0, !dbg !528
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_bool(%struct.XDR* %xdrs, i32* nocapture %bp) #0 {
  %lb = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !205, metadata !360), !dbg !529
  tail call void @llvm.dbg.value(metadata i32* %bp, i64 0, metadata !206, metadata !360), !dbg !530
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !531
  %2 = load i32* %1, align 4, !dbg !531, !tbaa !366
  switch i32 %2, label %22 [
    i32 0, label %3
    i32 1, label %12
    i32 2, label %23
  ], !dbg !532

; <label>:3                                       ; preds = %0
  %4 = load i32* %bp, align 4, !dbg !533, !tbaa !382
  %5 = icmp ne i32 %4, 0, !dbg !533
  %6 = zext i1 %5 to i64, !dbg !533
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !207, metadata !360), !dbg !535
  store i64 %6, i64* %lb, align 8, !dbg !536, !tbaa !386
  %7 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !537
  %8 = load %struct.xdr_ops** %7, align 8, !dbg !537, !tbaa !389
  %9 = getelementptr inbounds %struct.xdr_ops* %8, i64 0, i32 1, !dbg !537
  %10 = load i32 (%struct.XDR*, i64*)** %9, align 8, !dbg !537, !tbaa !390
  tail call void @llvm.dbg.value(metadata i64* %lb, i64 0, metadata !207, metadata !360), !dbg !535
  %11 = call i32 %10(%struct.XDR* %xdrs, i64* %lb) #7, !dbg !537
  br label %23, !dbg !538

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !539
  %14 = load %struct.xdr_ops** %13, align 8, !dbg !539, !tbaa !389
  %15 = getelementptr inbounds %struct.xdr_ops* %14, i64 0, i32 0, !dbg !539
  %16 = load i32 (%struct.XDR*, i64*)** %15, align 8, !dbg !539, !tbaa !395
  tail call void @llvm.dbg.value(metadata i64* %lb, i64 0, metadata !207, metadata !360), !dbg !535
  %17 = call i32 %16(%struct.XDR* %xdrs, i64* %lb) #7, !dbg !539
  %18 = icmp eq i32 %17, 0, !dbg !539
  br i1 %18, label %23, label %19, !dbg !541

; <label>:19                                      ; preds = %12
  call void @llvm.dbg.value(metadata i64* %lb, i64 0, metadata !207, metadata !360), !dbg !535
  %20 = load i64* %lb, align 8, !dbg !542, !tbaa !386
  %not. = icmp ne i64 %20, 0, !dbg !543
  %21 = zext i1 %not. to i32, !dbg !543
  store i32 %21, i32* %bp, align 4, !dbg !544, !tbaa !382
  br label %23, !dbg !545

; <label>:22                                      ; preds = %0
  br label %23, !dbg !546

; <label>:23                                      ; preds = %0, %12, %22, %19, %3
  %.0 = phi i32 [ 0, %22 ], [ 1, %19 ], [ %11, %3 ], [ 0, %12 ], [ 1, %0 ]
  ret i32 %.0, !dbg !547
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_opaque(%struct.XDR* %xdrs, i8* %cp, i32 %cnt) #0 {
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !210, metadata !360), !dbg !548
  tail call void @llvm.dbg.value(metadata i8* %cp, i64 0, metadata !211, metadata !360), !dbg !549
  tail call void @llvm.dbg.value(metadata i32 %cnt, i64 0, metadata !212, metadata !360), !dbg !550
  %1 = icmp eq i32 %cnt, 0, !dbg !551
  br i1 %1, label %37, label %2, !dbg !553

; <label>:2                                       ; preds = %0
  %3 = and i32 %cnt, 3, !dbg !554
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !213, metadata !360), !dbg !555
  %4 = icmp eq i32 %3, 0, !dbg !556
  %5 = sub nsw i32 4, %3, !dbg !558
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !213, metadata !360), !dbg !555
  %. = select i1 %4, i32 0, i32 %5, !dbg !559
  %6 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !560
  %7 = load i32* %6, align 4, !dbg !560, !tbaa !366
  switch i32 %7, label %36 [
    i32 1, label %8
    i32 0, label %22
    i32 2, label %37
  ], !dbg !561

; <label>:8                                       ; preds = %2
  %9 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !562
  %10 = load %struct.xdr_ops** %9, align 8, !dbg !562, !tbaa !389
  %11 = getelementptr inbounds %struct.xdr_ops* %10, i64 0, i32 2, !dbg !562
  %12 = load i32 (%struct.XDR*, i8*, i32)** %11, align 8, !dbg !562, !tbaa !565
  %13 = tail call i32 %12(%struct.XDR* %xdrs, i8* %cp, i32 %cnt) #7, !dbg !562
  %14 = icmp eq i32 %13, 0, !dbg !562
  br i1 %14, label %37, label %15, !dbg !566

; <label>:15                                      ; preds = %8
  %16 = icmp eq i32 %., 0, !dbg !567
  br i1 %16, label %37, label %17, !dbg !569

; <label>:17                                      ; preds = %15
  %18 = load %struct.xdr_ops** %9, align 8, !dbg !570, !tbaa !389
  %19 = getelementptr inbounds %struct.xdr_ops* %18, i64 0, i32 2, !dbg !570
  %20 = load i32 (%struct.XDR*, i8*, i32)** %19, align 8, !dbg !570, !tbaa !565
  %21 = tail call i32 %20(%struct.XDR* %xdrs, i8* getelementptr inbounds ([4 x i8]* @xdr_opaque.crud, i64 0, i64 0), i32 %.) #7, !dbg !570
  br label %37, !dbg !571

; <label>:22                                      ; preds = %2
  %23 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !572
  %24 = load %struct.xdr_ops** %23, align 8, !dbg !572, !tbaa !389
  %25 = getelementptr inbounds %struct.xdr_ops* %24, i64 0, i32 3, !dbg !572
  %26 = load i32 (%struct.XDR*, i8*, i32)** %25, align 8, !dbg !572, !tbaa !574
  %27 = tail call i32 %26(%struct.XDR* %xdrs, i8* %cp, i32 %cnt) #7, !dbg !572
  %28 = icmp eq i32 %27, 0, !dbg !572
  br i1 %28, label %37, label %29, !dbg !575

; <label>:29                                      ; preds = %22
  %30 = icmp eq i32 %., 0, !dbg !576
  br i1 %30, label %37, label %31, !dbg !578

; <label>:31                                      ; preds = %29
  %32 = load %struct.xdr_ops** %23, align 8, !dbg !579, !tbaa !389
  %33 = getelementptr inbounds %struct.xdr_ops* %32, i64 0, i32 3, !dbg !579
  %34 = load i32 (%struct.XDR*, i8*, i32)** %33, align 8, !dbg !579, !tbaa !574
  %35 = tail call i32 %34(%struct.XDR* %xdrs, i8* getelementptr inbounds ([4 x i8]* @xdr_zero, i64 0, i64 0), i32 %.) #7, !dbg !579
  br label %37, !dbg !580

; <label>:36                                      ; preds = %2
  br label %37, !dbg !581

; <label>:37                                      ; preds = %2, %29, %22, %15, %8, %0, %36, %31, %17
  %.0 = phi i32 [ 0, %36 ], [ %35, %31 ], [ %21, %17 ], [ 1, %0 ], [ 0, %8 ], [ 1, %15 ], [ 0, %22 ], [ 1, %29 ], [ 1, %2 ]
  ret i32 %.0, !dbg !582
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_string(%struct.XDR* %xdrs, i8** nocapture %cpp, i32 %maxsize) #0 {
  %size = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !219, metadata !360), !dbg !583
  tail call void @llvm.dbg.value(metadata i8** %cpp, i64 0, metadata !220, metadata !360), !dbg !584
  tail call void @llvm.dbg.value(metadata i32 %maxsize, i64 0, metadata !221, metadata !360), !dbg !585
  %1 = load i8** %cpp, align 8, !dbg !586, !tbaa !587
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !222, metadata !360), !dbg !588
  %2 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !589
  %3 = load i32* %2, align 4, !dbg !589, !tbaa !366
  switch i32 %3, label %10 [
    i32 2, label %4
    i32 0, label %5
  ], !dbg !590

; <label>:4                                       ; preds = %0
  %cond = icmp eq i8* %1, null, !dbg !591
  br i1 %cond, label %35, label %7, !dbg !591

; <label>:5                                       ; preds = %0
  %6 = icmp eq i8* %1, null, !dbg !593
  br i1 %6, label %35, label %7, !dbg !595

; <label>:7                                       ; preds = %4, %5
  %8 = tail call i64 @strlen(i8* %1) #7, !dbg !596
  %9 = trunc i64 %8 to i32, !dbg !596
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !223, metadata !360), !dbg !597
  store i32 %9, i32* %size, align 4, !dbg !598, !tbaa !382
  br label %10, !dbg !599

; <label>:10                                      ; preds = %0, %7
  tail call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !223, metadata !360), !dbg !597
  %11 = call i32 @xdr_u_int(%struct.XDR* %xdrs, i32* %size) #8, !dbg !600
  %12 = icmp eq i32 %11, 0, !dbg !600
  br i1 %12, label %35, label %13, !dbg !602

; <label>:13                                      ; preds = %10
  tail call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !223, metadata !360), !dbg !597
  %14 = load i32* %size, align 4, !dbg !603, !tbaa !382
  %15 = icmp ugt i32 %14, %maxsize, !dbg !605
  br i1 %15, label %35, label %16, !dbg !606

; <label>:16                                      ; preds = %13
  %17 = add i32 %14, 1, !dbg !607
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !224, metadata !360), !dbg !608
  %18 = load i32* %2, align 4, !dbg !609, !tbaa !366
  switch i32 %18, label %35 [
    i32 1, label %19
    i32 0, label %32
    i32 2, label %34
  ], !dbg !610

; <label>:19                                      ; preds = %16
  %20 = icmp eq i32 %17, 0, !dbg !611
  br i1 %20, label %35, label %21, !dbg !614

; <label>:21                                      ; preds = %19
  %22 = icmp eq i8* %1, null, !dbg !615
  br i1 %22, label %23, label %.thread, !dbg !617

; <label>:23                                      ; preds = %21
  %24 = zext i32 %17 to i64, !dbg !618
  %25 = tail call i8* @malloc(i64 %24) #7, !dbg !619
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !222, metadata !360), !dbg !588
  store i8* %25, i8** %cpp, align 8, !dbg !620, !tbaa !587
  %26 = icmp eq i8* %25, null, !dbg !621
  br i1 %26, label %27, label %.thread, !dbg !623

; <label>:27                                      ; preds = %23
  %28 = load %struct.__sFILE** @__stderrp, align 8, !dbg !624, !tbaa !587
  %29 = tail call i32 @"\01_fputs"(i8* getelementptr inbounds ([27 x i8]* @.str, i64 0, i64 0), %struct.__sFILE* %28) #7, !dbg !626
  br label %35, !dbg !627

.thread:                                          ; preds = %21, %23
  %sp.01 = phi i8* [ %25, %23 ], [ %1, %21 ]
  tail call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !223, metadata !360), !dbg !597
  %30 = zext i32 %14 to i64, !dbg !628
  %31 = getelementptr inbounds i8* %sp.01, i64 %30, !dbg !628
  store i8 0, i8* %31, align 1, !dbg !629, !tbaa !505
  br label %32, !dbg !628

; <label>:32                                      ; preds = %16, %.thread
  %sp.1 = phi i8* [ %1, %16 ], [ %sp.01, %.thread ]
  tail call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !223, metadata !360), !dbg !597
  %33 = tail call i32 @xdr_opaque(%struct.XDR* %xdrs, i8* %sp.1, i32 %14) #8, !dbg !630
  br label %35, !dbg !631

; <label>:34                                      ; preds = %16
  tail call void @free(i8* %1) #8, !dbg !632
  store i8* null, i8** %cpp, align 8, !dbg !633, !tbaa !587
  br label %35, !dbg !634

; <label>:35                                      ; preds = %4, %16, %19, %13, %10, %5, %34, %32, %27
  %.0 = phi i32 [ 1, %34 ], [ %33, %32 ], [ 0, %27 ], [ 1, %4 ], [ 0, %5 ], [ 0, %10 ], [ 0, %13 ], [ 1, %19 ], [ 0, %16 ]
  ret i32 %.0, !dbg !635
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #5

; Function Attrs: optsize
declare i32 @"\01_fputs"(i8*, %struct.__sFILE*) #6

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_float(%struct.XDR* %xdrs, float* nocapture %fp) #0 {
  %tmp = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !231, metadata !360), !dbg !636
  tail call void @llvm.dbg.value(metadata float* %fp, i64 0, metadata !232, metadata !360), !dbg !637
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !638
  %2 = load i32* %1, align 4, !dbg !638, !tbaa !366
  switch i32 %2, label %23 [
    i32 0, label %3
    i32 1, label %12
    i32 2, label %24
  ], !dbg !639

; <label>:3                                       ; preds = %0
  %4 = bitcast float* %fp to i32*, !dbg !640
  %5 = load i32* %4, align 4, !dbg !641, !tbaa !382
  %6 = sext i32 %5 to i64, !dbg !641
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !233, metadata !360), !dbg !642
  store i64 %6, i64* %tmp, align 8, !dbg !642, !tbaa !386
  %7 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !643
  %8 = load %struct.xdr_ops** %7, align 8, !dbg !643, !tbaa !389
  %9 = getelementptr inbounds %struct.xdr_ops* %8, i64 0, i32 1, !dbg !643
  %10 = load i32 (%struct.XDR*, i64*)** %9, align 8, !dbg !643, !tbaa !390
  tail call void @llvm.dbg.value(metadata i64* %tmp, i64 0, metadata !233, metadata !360), !dbg !642
  %11 = call i32 %10(%struct.XDR* %xdrs, i64* %tmp) #7, !dbg !643
  br label %24, !dbg !644

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !645
  %14 = load %struct.xdr_ops** %13, align 8, !dbg !645, !tbaa !389
  %15 = getelementptr inbounds %struct.xdr_ops* %14, i64 0, i32 0, !dbg !645
  %16 = load i32 (%struct.XDR*, i64*)** %15, align 8, !dbg !645, !tbaa !395
  tail call void @llvm.dbg.value(metadata i64* %tmp1, i64 0, metadata !238, metadata !360), !dbg !647
  %17 = call i32 %16(%struct.XDR* %xdrs, i64* %tmp1) #7, !dbg !645
  %18 = icmp eq i32 %17, 0, !dbg !645
  br i1 %18, label %23, label %19, !dbg !648

; <label>:19                                      ; preds = %12
  call void @llvm.dbg.value(metadata i64* %tmp1, i64 0, metadata !238, metadata !360), !dbg !647
  %20 = load i64* %tmp1, align 8, !dbg !649, !tbaa !386
  %21 = trunc i64 %20 to i32, !dbg !649
  %22 = bitcast float* %fp to i32*, !dbg !651
  store i32 %21, i32* %22, align 4, !dbg !652, !tbaa !382
  br label %24, !dbg !653

; <label>:23                                      ; preds = %12, %0
  br label %24, !dbg !654

; <label>:24                                      ; preds = %0, %23, %19, %3
  %.0 = phi i32 [ 0, %23 ], [ 1, %19 ], [ %11, %3 ], [ 1, %0 ]
  ret i32 %.0, !dbg !655
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_double(%struct.XDR* %xdrs, double* nocapture %dp) #0 {
  %tmp = alloca [2 x i64], align 16
  %tmp2 = alloca [2 x i64], align 16
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !248, metadata !360), !dbg !656
  tail call void @llvm.dbg.value(metadata double* %dp, i64 0, metadata !249, metadata !360), !dbg !657
  %.b6 = load i1* @xdr_double.LSW, align 1
  br i1 %.b6, label %2, label %1, !dbg !658

; <label>:1                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata double 0x3FEF9ADD3C0E56B8, i64 0, metadata !250, metadata !360), !dbg !659
  tail call void @llvm.dbg.value(metadata i8 -72, i64 0, metadata !253, metadata !360), !dbg !660
  store i1 true, i1* @xdr_double.LSW, align 1
  br label %2

; <label>:2                                       ; preds = %0, %1
  %3 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !661
  %4 = load i32* %3, align 4, !dbg !661, !tbaa !366
  switch i32 %4, label %53 [
    i32 0, label %5
    i32 1, label %29
    i32 2, label %54
  ], !dbg !662

; <label>:5                                       ; preds = %2
  %6 = bitcast double* %dp to i32*, !dbg !663
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !254, metadata !360), !dbg !664
  tail call void @llvm.dbg.declare(metadata [2 x i64]* %tmp, metadata !259, metadata !360), !dbg !665
  %7 = getelementptr inbounds i32* %6, i64 1, !dbg !666
  %8 = load i32* %7, align 4, !dbg !666, !tbaa !382
  %9 = sext i32 %8 to i64, !dbg !666
  %10 = getelementptr inbounds [2 x i64]* %tmp, i64 0, i64 0, !dbg !667
  store i64 %9, i64* %10, align 16, !dbg !668, !tbaa !386
  %11 = load i32* %6, align 4, !dbg !669, !tbaa !382
  %12 = sext i32 %11 to i64, !dbg !669
  %13 = getelementptr inbounds [2 x i64]* %tmp, i64 0, i64 1, !dbg !670
  store i64 %12, i64* %13, align 8, !dbg !671, !tbaa !386
  %14 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !672
  %15 = load %struct.xdr_ops** %14, align 8, !dbg !672, !tbaa !389
  %16 = getelementptr inbounds %struct.xdr_ops* %15, i64 0, i32 1, !dbg !672
  %17 = load i32 (%struct.XDR*, i64*)** %16, align 8, !dbg !672, !tbaa !390
  %18 = call i32 %17(%struct.XDR* %xdrs, i64* %10) #7, !dbg !672
  %19 = icmp eq i32 %18, 0, !dbg !672
  br i1 %19, label %26, label %20, !dbg !673

; <label>:20                                      ; preds = %5
  %21 = load %struct.xdr_ops** %14, align 8, !dbg !674, !tbaa !389
  %22 = getelementptr inbounds %struct.xdr_ops* %21, i64 0, i32 1, !dbg !674
  %23 = load i32 (%struct.XDR*, i64*)** %22, align 8, !dbg !674, !tbaa !390
  %24 = call i32 %23(%struct.XDR* %xdrs, i64* %13) #7, !dbg !674
  %25 = icmp ne i32 %24, 0, !dbg !673
  br label %26

; <label>:26                                      ; preds = %5, %20
  %27 = phi i1 [ false, %5 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32, !dbg !673
  br label %54, !dbg !675

; <label>:29                                      ; preds = %2
  %30 = bitcast double* %dp to i32*, !dbg !676
  tail call void @llvm.dbg.value(metadata i32* %30, i64 0, metadata !263, metadata !360), !dbg !677
  tail call void @llvm.dbg.declare(metadata [2 x i64]* %tmp2, metadata !267, metadata !360), !dbg !678
  %31 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !679
  %32 = load %struct.xdr_ops** %31, align 8, !dbg !679, !tbaa !389
  %33 = getelementptr inbounds %struct.xdr_ops* %32, i64 0, i32 0, !dbg !679
  %34 = load i32 (%struct.XDR*, i64*)** %33, align 8, !dbg !679, !tbaa !395
  %35 = getelementptr inbounds [2 x i64]* %tmp2, i64 0, i64 1, !dbg !679
  %36 = call i32 %34(%struct.XDR* %xdrs, i64* %35) #7, !dbg !679
  %37 = icmp eq i32 %36, 0, !dbg !679
  br i1 %37, label %53, label %38, !dbg !681

; <label>:38                                      ; preds = %29
  %39 = load %struct.xdr_ops** %31, align 8, !dbg !682, !tbaa !389
  %40 = getelementptr inbounds %struct.xdr_ops* %39, i64 0, i32 0, !dbg !682
  %41 = load i32 (%struct.XDR*, i64*)** %40, align 8, !dbg !682, !tbaa !395
  %.b = load i1* @xdr_double.LSW, align 1
  %not..b = xor i1 %.b, true
  %42 = sext i1 %not..b to i64, !dbg !682
  %43 = getelementptr inbounds [2 x i64]* %tmp2, i64 0, i64 %42, !dbg !682
  %44 = call i32 %41(%struct.XDR* %xdrs, i64* %43) #7, !dbg !682
  %45 = icmp eq i32 %44, 0, !dbg !682
  br i1 %45, label %53, label %46, !dbg !683

; <label>:46                                      ; preds = %38
  %47 = getelementptr inbounds [2 x i64]* %tmp2, i64 0, i64 0, !dbg !684
  %48 = load i64* %47, align 16, !dbg !684, !tbaa !386
  %49 = trunc i64 %48 to i32, !dbg !684
  store i32 %49, i32* %30, align 4, !dbg !686, !tbaa !382
  %50 = load i64* %35, align 8, !dbg !687, !tbaa !386
  %51 = trunc i64 %50 to i32, !dbg !687
  %52 = getelementptr inbounds i32* %30, i64 1, !dbg !688
  store i32 %51, i32* %52, align 4, !dbg !689, !tbaa !382
  br label %54, !dbg !690

; <label>:53                                      ; preds = %38, %29, %2
  br label %54, !dbg !691

; <label>:54                                      ; preds = %2, %53, %46, %26
  %.0 = phi i32 [ 0, %53 ], [ 1, %46 ], [ %28, %26 ], [ 1, %2 ]
  ret i32 %.0, !dbg !692
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr_vector(%struct.XDR* %xdrs, i8* %basep, i32 %nelem, i32 %elemsize, i32 (%struct.XDR*, i8*, ...)* nocapture %xdr_elem) #0 {
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !272, metadata !360), !dbg !693
  tail call void @llvm.dbg.value(metadata i8* %basep, i64 0, metadata !273, metadata !360), !dbg !694
  tail call void @llvm.dbg.value(metadata i32 %nelem, i64 0, metadata !274, metadata !360), !dbg !695
  tail call void @llvm.dbg.value(metadata i32 %elemsize, i64 0, metadata !275, metadata !360), !dbg !696
  tail call void @llvm.dbg.value(metadata i32 (%struct.XDR*, i8*, ...)* %xdr_elem, i64 0, metadata !276, metadata !360), !dbg !697
  tail call void @llvm.dbg.value(metadata i8* %basep, i64 0, metadata !278, metadata !360), !dbg !698
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !277, metadata !360), !dbg !699
  %1 = icmp eq i32 %nelem, 0, !dbg !700
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !703

.lr.ph:                                           ; preds = %0
  %2 = zext i32 %elemsize to i64, !dbg !704
  br label %3, !dbg !703

; <label>:3                                       ; preds = %.lr.ph, %6
  %elptr.02 = phi i8* [ %basep, %.lr.ph ], [ %7, %6 ]
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %8, %6 ]
  %4 = tail call i32 (%struct.XDR*, i8*, ...)* %xdr_elem(%struct.XDR* %xdrs, i8* %elptr.02, i32 -1) #7, !dbg !706
  %5 = icmp eq i32 %4, 0, !dbg !706
  br i1 %5, label %._crit_edge, label %6, !dbg !708

; <label>:6                                       ; preds = %3
  %7 = getelementptr inbounds i8* %elptr.02, i64 %2, !dbg !704
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !278, metadata !360), !dbg !698
  %8 = add nuw i32 %i.01, 1, !dbg !709
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !277, metadata !360), !dbg !699
  %9 = icmp ult i32 %8, %nelem, !dbg !700
  br i1 %9, label %3, label %._crit_edge, !dbg !703

._crit_edge:                                      ; preds = %3, %6, %0
  %.0 = phi i32 [ 1, %0 ], [ 0, %3 ], [ 1, %6 ]
  ret i32 %.0, !dbg !710
}

; Function Attrs: nounwind optsize ssp uwtable
define void @xdrstdio_create(%struct.XDR* nocapture %xdrs, %struct.__sFILE* %file, i32 %op) #0 {
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !283, metadata !360), !dbg !711
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %file, i64 0, metadata !284, metadata !360), !dbg !712
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !285, metadata !360), !dbg !713
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !714
  store i32 %op, i32* %1, align 4, !dbg !715, !tbaa !366
  %2 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !716
  store %struct.xdr_ops* @xdrstdio_ops, %struct.xdr_ops** %2, align 8, !dbg !717, !tbaa !389
  %3 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !718
  %4 = bitcast i8** %3 to %struct.__sFILE**, !dbg !719
  store %struct.__sFILE* %file, %struct.__sFILE** %4, align 8, !dbg !719, !tbaa !720
  %5 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 5, !dbg !721
  store i32 0, i32* %5, align 4, !dbg !722, !tbaa !723
  %6 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 4, !dbg !724
  store i8* null, i8** %6, align 8, !dbg !725, !tbaa !726
  ret void, !dbg !727
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @xdrstdio_getlong(%struct.XDR* nocapture readonly %xdrs, i64* nocapture %lp) #0 {
  %1 = alloca i32, align 4
  %y.i.i = alloca i32, align 4
  %mycopy = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !288, metadata !360), !dbg !728
  tail call void @llvm.dbg.value(metadata i64* %lp, i64 0, metadata !289, metadata !360), !dbg !729
  %2 = bitcast i32* %mycopy to i8*, !dbg !730
  %3 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !732
  %4 = bitcast i8** %3 to %struct.__sFILE**, !dbg !732
  %5 = load %struct.__sFILE** %4, align 8, !dbg !732, !tbaa !720
  %6 = call i64 @fread(i8* %2, i64 4, i64 1, %struct.__sFILE* %5) #7, !dbg !733
  %7 = icmp eq i64 %6, 1, !dbg !734
  br i1 %7, label %8, label %19, !dbg !735

; <label>:8                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32* %mycopy, i64 0, metadata !290, metadata !360), !dbg !736
  %9 = load i32* %mycopy, align 4, !dbg !737, !tbaa !382
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !295, metadata !360) #2, !dbg !738
  tail call void @llvm.dbg.declare(metadata i16* undef, metadata !296, metadata !360) #2, !dbg !740
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !296, metadata !741) #2, !dbg !740
  tail call void @llvm.dbg.value(metadata i8 15, i64 0, metadata !296, metadata !742) #2, !dbg !740
  %10 = bitcast i32* %1 to i8*, !dbg !743
  call void @llvm.lifetime.start(i64 4, i8* %10) #2, !dbg !743
  %11 = bitcast i32* %y.i.i to i8*, !dbg !743
  call void @llvm.lifetime.start(i64 4, i8* %11) #2, !dbg !743
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !299, metadata !360) #2, !dbg !743
  store i32 %9, i32* %1, align 4, !dbg !747, !tbaa !382
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !302, metadata !360) #2, !dbg !748
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !303, metadata !360) #2, !dbg !749
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !301, metadata !360) #2, !dbg !750
  br label %12, !dbg !751

; <label>:12                                      ; preds = %12, %8
  %indvars.iv.i.i = phi i64 [ 0, %8 ], [ %indvars.iv.next.i.i, %12 ], !dbg !747
  %13 = sub nsw i64 3, %indvars.iv.i.i, !dbg !753
  %14 = getelementptr inbounds i8* %10, i64 %13, !dbg !755
  %15 = load i8* %14, align 1, !dbg !755, !tbaa !505
  %16 = getelementptr inbounds i8* %11, i64 %indvars.iv.i.i, !dbg !756
  store i8 %15, i8* %16, align 1, !dbg !757, !tbaa !505
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !751
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 4, !dbg !751
  br i1 %exitcond.i.i, label %xdr_ntohl.exit, label %12, !dbg !751

xdr_ntohl.exit:                                   ; preds = %12
  tail call void @llvm.dbg.value(metadata i32* %y.i.i, i64 0, metadata !300, metadata !360) #2, !dbg !758
  %17 = load i32* %y.i.i, align 4, !dbg !759, !tbaa !382
  call void @llvm.lifetime.end(i64 4, i8* %10) #2, !dbg !760
  call void @llvm.lifetime.end(i64 4, i8* %11) #2, !dbg !760
  %18 = sext i32 %17 to i64, !dbg !761
  store i64 %18, i64* %lp, align 8, !dbg !762, !tbaa !386
  br label %19, !dbg !763

; <label>:19                                      ; preds = %0, %xdr_ntohl.exit
  %.0 = phi i32 [ 1, %xdr_ntohl.exit ], [ 0, %0 ]
  ret i32 %.0, !dbg !764
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @xdrstdio_putlong(%struct.XDR* nocapture readonly %xdrs, i64* nocapture readonly %lp) #0 {
  %1 = alloca i32, align 4
  %y.i.i = alloca i32, align 4
  %mycopy = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !306, metadata !360), !dbg !765
  tail call void @llvm.dbg.value(metadata i64* %lp, i64 0, metadata !307, metadata !360), !dbg !766
  %2 = load i64* %lp, align 8, !dbg !767, !tbaa !386
  %3 = trunc i64 %2 to i32, !dbg !767
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !311, metadata !360) #2, !dbg !768
  tail call void @llvm.dbg.declare(metadata i16* undef, metadata !312, metadata !360) #2, !dbg !770
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !312, metadata !741) #2, !dbg !770
  tail call void @llvm.dbg.value(metadata i8 15, i64 0, metadata !312, metadata !742) #2, !dbg !770
  %4 = bitcast i32* %1 to i8*, !dbg !771
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !771
  %5 = bitcast i32* %y.i.i to i8*, !dbg !771
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !771
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !299, metadata !360) #2, !dbg !771
  store i32 %3, i32* %1, align 4, !dbg !775, !tbaa !382
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !302, metadata !360) #2, !dbg !776
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !303, metadata !360) #2, !dbg !777
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !301, metadata !360) #2, !dbg !778
  br label %6, !dbg !779

; <label>:6                                       ; preds = %6, %0
  %indvars.iv.i.i = phi i64 [ 0, %0 ], [ %indvars.iv.next.i.i, %6 ], !dbg !775
  %7 = sub nsw i64 3, %indvars.iv.i.i, !dbg !780
  %8 = getelementptr inbounds i8* %4, i64 %7, !dbg !781
  %9 = load i8* %8, align 1, !dbg !781, !tbaa !505
  %10 = getelementptr inbounds i8* %5, i64 %indvars.iv.i.i, !dbg !782
  store i8 %9, i8* %10, align 1, !dbg !783, !tbaa !505
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !779
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 4, !dbg !779
  br i1 %exitcond.i.i, label %xdr_htonl.exit, label %6, !dbg !779

xdr_htonl.exit:                                   ; preds = %6
  tail call void @llvm.dbg.value(metadata i32* %y.i.i, i64 0, metadata !300, metadata !360) #2, !dbg !784
  %11 = load i32* %y.i.i, align 4, !dbg !785, !tbaa !382
  call void @llvm.lifetime.end(i64 4, i8* %4) #2, !dbg !786
  call void @llvm.lifetime.end(i64 4, i8* %5) #2, !dbg !786
  %12 = zext i32 %11 to i64, !dbg !787
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !308, metadata !360), !dbg !788
  store i64 %12, i64* %mycopy, align 8, !dbg !788, !tbaa !386
  tail call void @llvm.dbg.value(metadata i64* %mycopy, i64 0, metadata !307, metadata !360), !dbg !766
  %13 = bitcast i64* %mycopy to i8*, !dbg !789
  %14 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !791
  %15 = bitcast i8** %14 to %struct.__sFILE**, !dbg !791
  %16 = load %struct.__sFILE** %15, align 8, !dbg !791, !tbaa !720
  %17 = call i64 @"\01_fwrite"(i8* %13, i64 4, i64 1, %struct.__sFILE* %16) #7, !dbg !792
  %18 = icmp eq i64 %17, 1, !dbg !793
  %. = zext i1 %18 to i32, !dbg !794
  ret i32 %., !dbg !795
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @xdrstdio_getbytes(%struct.XDR* nocapture readonly %xdrs, i8* nocapture %addr, i32 %len) #0 {
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !315, metadata !360), !dbg !796
  tail call void @llvm.dbg.value(metadata i8* %addr, i64 0, metadata !316, metadata !360), !dbg !797
  tail call void @llvm.dbg.value(metadata i32 %len, i64 0, metadata !317, metadata !360), !dbg !798
  %1 = icmp eq i32 %len, 0, !dbg !799
  br i1 %1, label %9, label %2, !dbg !801

; <label>:2                                       ; preds = %0
  %3 = sext i32 %len to i64, !dbg !802
  %4 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !803
  %5 = bitcast i8** %4 to %struct.__sFILE**, !dbg !803
  %6 = load %struct.__sFILE** %5, align 8, !dbg !803, !tbaa !720
  %7 = tail call i64 @fread(i8* %addr, i64 %3, i64 1, %struct.__sFILE* %6) #7, !dbg !804
  %8 = icmp eq i64 %7, 1, !dbg !805
  br i1 %8, label %9, label %10, !dbg !806

; <label>:9                                       ; preds = %2, %0
  br label %10, !dbg !807

; <label>:10                                      ; preds = %2, %9
  %.0 = phi i32 [ 1, %9 ], [ 0, %2 ]
  ret i32 %.0, !dbg !808
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @xdrstdio_putbytes(%struct.XDR* nocapture readonly %xdrs, i8* %addr, i32 %len) #0 {
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !320, metadata !360), !dbg !809
  tail call void @llvm.dbg.value(metadata i8* %addr, i64 0, metadata !321, metadata !360), !dbg !810
  tail call void @llvm.dbg.value(metadata i32 %len, i64 0, metadata !322, metadata !360), !dbg !811
  %1 = icmp eq i32 %len, 0, !dbg !812
  br i1 %1, label %9, label %2, !dbg !814

; <label>:2                                       ; preds = %0
  %3 = sext i32 %len to i64, !dbg !815
  %4 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !816
  %5 = bitcast i8** %4 to %struct.__sFILE**, !dbg !816
  %6 = load %struct.__sFILE** %5, align 8, !dbg !816, !tbaa !720
  %7 = tail call i64 @"\01_fwrite"(i8* %addr, i64 %3, i64 1, %struct.__sFILE* %6) #7, !dbg !817
  %8 = icmp eq i64 %7, 1, !dbg !818
  br i1 %8, label %9, label %10, !dbg !819

; <label>:9                                       ; preds = %2, %0
  br label %10, !dbg !820

; <label>:10                                      ; preds = %2, %9
  %.0 = phi i32 [ 1, %9 ], [ 0, %2 ]
  ret i32 %.0, !dbg !821
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @xdrstdio_getpos(%struct.XDR* nocapture readonly %xdrs) #0 {
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !325, metadata !360), !dbg !822
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !823
  %2 = bitcast i8** %1 to %struct.__sFILE**, !dbg !823
  %3 = load %struct.__sFILE** %2, align 8, !dbg !823, !tbaa !720
  %4 = tail call i64 @ftell(%struct.__sFILE* %3) #7, !dbg !824
  %5 = trunc i64 %4 to i32, !dbg !825
  ret i32 %5, !dbg !826
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @xdrstdio_setpos(%struct.XDR* nocapture readonly %xdrs, i32 %pos) #0 {
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !328, metadata !360), !dbg !827
  tail call void @llvm.dbg.value(metadata i32 %pos, i64 0, metadata !329, metadata !360), !dbg !828
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !829
  %2 = bitcast i8** %1 to %struct.__sFILE**, !dbg !829
  %3 = load %struct.__sFILE** %2, align 8, !dbg !829, !tbaa !720
  %4 = zext i32 %pos to i64, !dbg !830
  %5 = tail call i32 @fseek(%struct.__sFILE* %3, i64 %4, i32 0) #7, !dbg !831
  %.lobit = lshr i32 %5, 31, !dbg !831
  %.lobit.not = xor i32 %.lobit, 1, !dbg !831
  ret i32 %.lobit.not, !dbg !832
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define internal noalias i32* @xdrstdio_inline(%struct.XDR* nocapture readnone %xdrs, i32 %len) #3 {
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !332, metadata !360), !dbg !833
  tail call void @llvm.dbg.value(metadata i32 %len, i64 0, metadata !333, metadata !360), !dbg !834
  ret i32* null, !dbg !835
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @xdrstdio_destroy(%struct.XDR* nocapture readonly %xdrs) #0 {
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !336, metadata !360), !dbg !836
  %1 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !837
  %2 = bitcast i8** %1 to %struct.__sFILE**, !dbg !837
  %3 = load %struct.__sFILE** %2, align 8, !dbg !837, !tbaa !720
  %4 = tail call i32 @fflush(%struct.__sFILE* %3) #7, !dbg !838
  ret void, !dbg !839
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @xdrstdio_getint32(%struct.XDR* nocapture readonly %xdrs, i32* nocapture %ip) #0 {
  %1 = alloca i32, align 4
  %y.i.i = alloca i32, align 4
  %mycopy = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !339, metadata !360), !dbg !840
  tail call void @llvm.dbg.value(metadata i32* %ip, i64 0, metadata !340, metadata !360), !dbg !841
  %2 = bitcast i32* %mycopy to i8*, !dbg !842
  %3 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !844
  %4 = bitcast i8** %3 to %struct.__sFILE**, !dbg !844
  %5 = load %struct.__sFILE** %4, align 8, !dbg !844, !tbaa !720
  %6 = call i64 @fread(i8* %2, i64 4, i64 1, %struct.__sFILE* %5) #7, !dbg !845
  %7 = icmp eq i64 %6, 1, !dbg !846
  br i1 %7, label %8, label %18, !dbg !847

; <label>:8                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32* %mycopy, i64 0, metadata !341, metadata !360), !dbg !848
  %9 = load i32* %mycopy, align 4, !dbg !849, !tbaa !382
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !295, metadata !360) #2, !dbg !850
  tail call void @llvm.dbg.declare(metadata i16* undef, metadata !296, metadata !360) #2, !dbg !852
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !296, metadata !741) #2, !dbg !852
  tail call void @llvm.dbg.value(metadata i8 15, i64 0, metadata !296, metadata !742) #2, !dbg !852
  %10 = bitcast i32* %1 to i8*, !dbg !853
  call void @llvm.lifetime.start(i64 4, i8* %10) #2, !dbg !853
  %11 = bitcast i32* %y.i.i to i8*, !dbg !853
  call void @llvm.lifetime.start(i64 4, i8* %11) #2, !dbg !853
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !299, metadata !360) #2, !dbg !853
  store i32 %9, i32* %1, align 4, !dbg !855, !tbaa !382
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !302, metadata !360) #2, !dbg !856
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !303, metadata !360) #2, !dbg !857
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !301, metadata !360) #2, !dbg !858
  br label %12, !dbg !859

; <label>:12                                      ; preds = %12, %8
  %indvars.iv.i.i = phi i64 [ 0, %8 ], [ %indvars.iv.next.i.i, %12 ], !dbg !855
  %13 = sub nsw i64 3, %indvars.iv.i.i, !dbg !860
  %14 = getelementptr inbounds i8* %10, i64 %13, !dbg !861
  %15 = load i8* %14, align 1, !dbg !861, !tbaa !505
  %16 = getelementptr inbounds i8* %11, i64 %indvars.iv.i.i, !dbg !862
  store i8 %15, i8* %16, align 1, !dbg !863, !tbaa !505
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !859
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 4, !dbg !859
  br i1 %exitcond.i.i, label %xdr_ntohl.exit, label %12, !dbg !859

xdr_ntohl.exit:                                   ; preds = %12
  tail call void @llvm.dbg.value(metadata i32* %y.i.i, i64 0, metadata !300, metadata !360) #2, !dbg !864
  %17 = load i32* %y.i.i, align 4, !dbg !865, !tbaa !382
  call void @llvm.lifetime.end(i64 4, i8* %10) #2, !dbg !866
  call void @llvm.lifetime.end(i64 4, i8* %11) #2, !dbg !866
  store i32 %17, i32* %ip, align 4, !dbg !867, !tbaa !382
  br label %18, !dbg !868

; <label>:18                                      ; preds = %0, %xdr_ntohl.exit
  %.0 = phi i32 [ 1, %xdr_ntohl.exit ], [ 0, %0 ]
  ret i32 %.0, !dbg !869
}

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @xdrstdio_putint32(%struct.XDR* nocapture readonly %xdrs, i32* nocapture readonly %ip) #0 {
  %1 = alloca i32, align 4
  %y.i.i = alloca i32, align 4
  %mycopy = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !344, metadata !360), !dbg !870
  tail call void @llvm.dbg.value(metadata i32* %ip, i64 0, metadata !345, metadata !360), !dbg !871
  %2 = load i32* %ip, align 4, !dbg !872, !tbaa !382
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !311, metadata !360) #2, !dbg !873
  tail call void @llvm.dbg.declare(metadata i16* undef, metadata !312, metadata !360) #2, !dbg !875
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !312, metadata !741) #2, !dbg !875
  tail call void @llvm.dbg.value(metadata i8 15, i64 0, metadata !312, metadata !742) #2, !dbg !875
  %3 = bitcast i32* %1 to i8*, !dbg !876
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !876
  %4 = bitcast i32* %y.i.i to i8*, !dbg !876
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !876
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !299, metadata !360) #2, !dbg !876
  store i32 %2, i32* %1, align 4, !dbg !878, !tbaa !382
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !302, metadata !360) #2, !dbg !879
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !303, metadata !360) #2, !dbg !880
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !301, metadata !360) #2, !dbg !881
  br label %5, !dbg !882

; <label>:5                                       ; preds = %5, %0
  %indvars.iv.i.i = phi i64 [ 0, %0 ], [ %indvars.iv.next.i.i, %5 ], !dbg !878
  %6 = sub nsw i64 3, %indvars.iv.i.i, !dbg !883
  %7 = getelementptr inbounds i8* %3, i64 %6, !dbg !884
  %8 = load i8* %7, align 1, !dbg !884, !tbaa !505
  %9 = getelementptr inbounds i8* %4, i64 %indvars.iv.i.i, !dbg !885
  store i8 %8, i8* %9, align 1, !dbg !886, !tbaa !505
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !882
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 4, !dbg !882
  br i1 %exitcond.i.i, label %xdr_htonl.exit, label %5, !dbg !882

xdr_htonl.exit:                                   ; preds = %5
  tail call void @llvm.dbg.value(metadata i32* %y.i.i, i64 0, metadata !300, metadata !360) #2, !dbg !887
  %10 = load i32* %y.i.i, align 4, !dbg !888, !tbaa !382
  call void @llvm.lifetime.end(i64 4, i8* %3) #2, !dbg !889
  call void @llvm.lifetime.end(i64 4, i8* %4) #2, !dbg !889
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !346, metadata !360), !dbg !890
  store i32 %10, i32* %mycopy, align 4, !dbg !890, !tbaa !382
  tail call void @llvm.dbg.value(metadata i32* %mycopy, i64 0, metadata !345, metadata !360), !dbg !871
  %11 = bitcast i32* %mycopy to i8*, !dbg !891
  %12 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !893
  %13 = bitcast i8** %12 to %struct.__sFILE**, !dbg !893
  %14 = load %struct.__sFILE** %13, align 8, !dbg !893, !tbaa !720
  %15 = call i64 @"\01_fwrite"(i8* %11, i64 4, i64 1, %struct.__sFILE* %14) #7, !dbg !894
  %16 = icmp eq i64 %15, 1, !dbg !895
  %. = zext i1 %16 to i32, !dbg !896
  ret i32 %., !dbg !897
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

; Function Attrs: optsize
declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #6

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct.__sFILE* nocapture, i64, i32) #5

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!356, !357, !358}
!llvm.ident = !{!359}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !9, subprograms: !128, globals: !347, imports: !143)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !4, line: 119, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!7 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!8 = !DIEnumerator(name: "XDR_FREE", value: 2)
!9 = !{!10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !69, !20}
!10 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!14 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdr_int32_t", file: !4, line: 106, baseType: !11)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdr_uint32_t", file: !4, line: 107, baseType: !14)
!17 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!18 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !4, line: 148, size: 640, align: 64, elements: !25)
!25 = !{!26, !41, !42, !46, !47, !51, !55, !60, !64, !68}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !24, file: !4, line: 150, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !31, !13}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !4, line: 99, baseType: !11)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !4, line: 144, baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !4, line: 145, size: 384, align: 64, elements: !34)
!34 = !{!35, !36, !37, !38, !39, !40}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !33, file: !4, line: 147, baseType: !3, size: 32, align: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !33, file: !4, line: 171, baseType: !23, size: 64, align: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !33, file: !4, line: 172, baseType: !19, size: 64, align: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !33, file: !4, line: 173, baseType: !19, size: 64, align: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !33, file: !4, line: 174, baseType: !19, size: 64, align: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !33, file: !4, line: 175, baseType: !11, size: 32, align: 32, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !24, file: !4, line: 152, baseType: !27, size: 64, align: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !24, file: !4, line: 154, baseType: !43, size: 64, align: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!30, !31, !19, !14}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !24, file: !4, line: 156, baseType: !43, size: 64, align: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !24, file: !4, line: 158, baseType: !48, size: 64, align: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!14, !31}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !24, file: !4, line: 160, baseType: !52, size: 64, align: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!30, !31, !14}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !24, file: !4, line: 162, baseType: !56, size: 64, align: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !31, !11}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !24, file: !4, line: 164, baseType: !61, size: 64, align: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !31}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !24, file: !4, line: 166, baseType: !65, size: 64, align: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!30, !31, !59}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !24, file: !4, line: 168, baseType: !65, size: 64, align: 64, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !71, line: 153, baseType: !72)
!71 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !71, line: 122, size: 1216, align: 64, elements: !73)
!73 = !{!74, !77, !78, !79, !80, !81, !86, !87, !88, !92, !96, !106, !112, !113, !116, !117, !121, !125, !126, !127}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !72, file: !71, line: 123, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !72, file: !71, line: 124, baseType: !11, size: 32, align: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !72, file: !71, line: 125, baseType: !11, size: 32, align: 32, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !72, file: !71, line: 126, baseType: !17, size: 16, align: 16, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !72, file: !71, line: 127, baseType: !17, size: 16, align: 16, offset: 144)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !72, file: !71, line: 128, baseType: !82, size: 128, align: 64, offset: 192)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !71, line: 88, size: 128, align: 64, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !82, file: !71, line: 89, baseType: !75, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !82, file: !71, line: 90, baseType: !11, size: 32, align: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !72, file: !71, line: 129, baseType: !11, size: 32, align: 32, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !72, file: !71, line: 132, baseType: !21, size: 64, align: 64, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !72, file: !71, line: 133, baseType: !89, size: 64, align: 64, offset: 448)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!11, !21}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !72, file: !71, line: 134, baseType: !93, size: 64, align: 64, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!11, !21, !19, !11}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !72, file: !71, line: 135, baseType: !97, size: 64, align: 64, offset: 576)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !21, !100, !11}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !71, line: 77, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !102, line: 71, baseType: !103)
!102 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !104, line: 46, baseType: !105)
!104 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!105 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !72, file: !71, line: 136, baseType: !107, size: 64, align: 64, offset: 640)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!11, !21, !110, !11}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !72, file: !71, line: 139, baseType: !82, size: 128, align: 64, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !72, file: !71, line: 140, baseType: !114, size: 64, align: 64, offset: 832)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !71, line: 94, flags: DIFlagFwdDecl)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !72, file: !71, line: 141, baseType: !11, size: 32, align: 32, offset: 896)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !72, file: !71, line: 144, baseType: !118, size: 24, align: 8, offset: 928)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 24, align: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 3)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !72, file: !71, line: 145, baseType: !122, size: 8, align: 8, offset: 952)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 8, align: 8, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 1)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !72, file: !71, line: 148, baseType: !82, size: 128, align: 64, offset: 960)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !72, file: !71, line: 151, baseType: !11, size: 32, align: 32, offset: 1088)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !72, file: !71, line: 152, baseType: !100, size: 64, align: 64, offset: 1152)
!128 = !{!129, !140, !144, !151, !159, !163, !173, !181, !189, !196, !203, !208, !214, !225, !242, !268, !279, !286, !291, !297, !304, !309, !313, !318, !323, !326, !330, !334, !337, !342}
!129 = !DISubprogram(name: "xdr_free", scope: !1, file: !1, line: 104, type: !130, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, function: void (i32 (%struct.XDR*, i8*, ...)*, i8*)* @xdr_free, variables: !136)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !132, !19}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdrproc_t", file: !4, line: 187, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!30, !31, !21, null}
!136 = !{!137, !138, !139}
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "proc", arg: 1, scope: !129, file: !1, line: 104, type: !132)
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "objp", arg: 2, scope: !129, file: !1, line: 104, type: !19)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !129, file: !1, line: 106, type: !32)
!140 = !DISubprogram(name: "xdr_void", scope: !1, file: !1, line: 116, type: !141, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @xdr_void, variables: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{!30}
!143 = !{}
!144 = !DISubprogram(name: "xdr_int", scope: !1, file: !1, line: 125, type: !145, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i32*)* @xdr_int, variables: !147)
!145 = !DISubroutineType(types: !146)
!146 = !{!30, !31, !22}
!147 = !{!148, !149, !150}
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !144, file: !1, line: 125, type: !31)
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ip", arg: 2, scope: !144, file: !1, line: 125, type: !22)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !144, file: !1, line: 127, type: !10)
!151 = !DISubprogram(name: "xdr_u_int", scope: !1, file: !1, line: 152, type: !152, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i32*)* @xdr_u_int, variables: !155)
!152 = !DISubroutineType(types: !153)
!153 = !{!30, !31, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!155 = !{!156, !157, !158}
!156 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !151, file: !1, line: 152, type: !31)
!157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "up", arg: 2, scope: !151, file: !1, line: 152, type: !154)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !151, file: !1, line: 154, type: !12)
!159 = !DISubprogram(name: "xdr_long", scope: !1, file: !1, line: 180, type: !28, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i64*)* @xdr_long, variables: !160)
!160 = !{!161, !162}
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !159, file: !1, line: 180, type: !31)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lp", arg: 2, scope: !159, file: !1, line: 180, type: !13)
!163 = !DISubprogram(name: "xdr_u_long", scope: !1, file: !1, line: 204, type: !164, isLocal: false, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i64*)* @xdr_u_long, variables: !167)
!164 = !DISubroutineType(types: !165)
!165 = !{!30, !31, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!167 = !{!168, !169, !170}
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !163, file: !1, line: 204, type: !31)
!169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ulp", arg: 2, scope: !163, file: !1, line: 204, type: !166)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !171, file: !1, line: 210, type: !10)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 209, column: 7)
!172 = distinct !DILexicalBlock(scope: !163, file: !1, line: 207, column: 5)
!173 = !DISubprogram(name: "xdr_short", scope: !1, file: !1, line: 237, type: !174, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i16*)* @xdr_short, variables: !177)
!174 = !DISubroutineType(types: !175)
!175 = !{!30, !31, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!177 = !{!178, !179, !180}
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !173, file: !1, line: 237, type: !31)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sp", arg: 2, scope: !173, file: !1, line: 237, type: !176)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !173, file: !1, line: 239, type: !10)
!181 = !DISubprogram(name: "xdr_u_short", scope: !1, file: !1, line: 266, type: !182, isLocal: false, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i16*)* @xdr_u_short, variables: !185)
!182 = !DISubroutineType(types: !183)
!183 = !{!30, !31, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!185 = !{!186, !187, !188}
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !181, file: !1, line: 266, type: !31)
!187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "usp", arg: 2, scope: !181, file: !1, line: 266, type: !184)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !181, file: !1, line: 268, type: !12)
!189 = !DISubprogram(name: "xdr_char", scope: !1, file: !1, line: 295, type: !190, isLocal: false, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i8*)* @xdr_char, variables: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{!30, !31, !19}
!192 = !{!193, !194, !195}
!193 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !189, file: !1, line: 295, type: !31)
!194 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cp", arg: 2, scope: !189, file: !1, line: 295, type: !19)
!195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !189, file: !1, line: 297, type: !11)
!196 = !DISubprogram(name: "xdr_u_char", scope: !1, file: !1, line: 312, type: !197, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i8*)* @xdr_u_char, variables: !199)
!197 = !DISubroutineType(types: !198)
!198 = !{!30, !31, !75}
!199 = !{!200, !201, !202}
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !196, file: !1, line: 312, type: !31)
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cp", arg: 2, scope: !196, file: !1, line: 312, type: !75)
!202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !196, file: !1, line: 314, type: !14)
!203 = !DISubprogram(name: "xdr_bool", scope: !1, file: !1, line: 329, type: !145, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i32*)* @xdr_bool, variables: !204)
!204 = !{!205, !206, !207}
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !203, file: !1, line: 329, type: !31)
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bp", arg: 2, scope: !203, file: !1, line: 329, type: !22)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lb", scope: !203, file: !1, line: 333, type: !10)
!208 = !DISubprogram(name: "xdr_opaque", scope: !1, file: !1, line: 365, type: !44, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i8*, i32)* @xdr_opaque, variables: !209)
!209 = !{!210, !211, !212, !213}
!210 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !208, file: !1, line: 365, type: !31)
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cp", arg: 2, scope: !208, file: !1, line: 365, type: !19)
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cnt", arg: 3, scope: !208, file: !1, line: 365, type: !14)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rndup", scope: !208, file: !1, line: 367, type: !14)
!214 = !DISubprogram(name: "xdr_string", scope: !1, file: !1, line: 419, type: !215, isLocal: false, isDefinition: true, scopeLine: 423, isOptimized: true, function: i32 (%struct.XDR*, i8**, i32)* @xdr_string, variables: !218)
!215 = !DISubroutineType(types: !216)
!216 = !{!30, !31, !217, !14}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!218 = !{!219, !220, !221, !222, !223, !224}
!219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !214, file: !1, line: 420, type: !31)
!220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cpp", arg: 2, scope: !214, file: !1, line: 421, type: !217)
!221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxsize", arg: 3, scope: !214, file: !1, line: 422, type: !14)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sp", scope: !214, file: !1, line: 424, type: !19)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !214, file: !1, line: 425, type: !14)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nodesize", scope: !214, file: !1, line: 426, type: !14)
!225 = !DISubprogram(name: "xdr_float", scope: !1, file: !1, line: 493, type: !226, isLocal: false, isDefinition: true, scopeLine: 496, isOptimized: true, function: i32 (%struct.XDR*, float*)* @xdr_float, variables: !230)
!226 = !DISubroutineType(types: !227)
!227 = !{!30, !31, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!230 = !{!231, !232, !233, !238}
!231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !225, file: !1, line: 494, type: !31)
!232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !225, file: !1, line: 495, type: !228)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !234, file: !1, line: 503, type: !10)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 502, column: 42)
!235 = distinct !DILexicalBlock(scope: !236, file: !1, line: 502, column: 12)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 500, column: 7)
!237 = distinct !DILexicalBlock(scope: !225, file: !1, line: 497, column: 22)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !239, file: !1, line: 512, type: !10)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 511, column: 42)
!240 = distinct !DILexicalBlock(scope: !241, file: !1, line: 511, column: 12)
!241 = distinct !DILexicalBlock(scope: !237, file: !1, line: 509, column: 7)
!242 = !DISubprogram(name: "xdr_double", scope: !1, file: !1, line: 528, type: !243, isLocal: false, isDefinition: true, scopeLine: 531, isOptimized: true, function: i32 (%struct.XDR*, double*)* @xdr_double, variables: !247)
!243 = !DISubroutineType(types: !244)
!244 = !{!30, !31, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!247 = !{!248, !249, !250, !253, !254, !259, !263, !267}
!248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !242, file: !1, line: 529, type: !31)
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dp", arg: 2, scope: !242, file: !1, line: 530, type: !245)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !251, file: !1, line: 540, type: !246)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 539, column: 13)
!252 = distinct !DILexicalBlock(scope: !242, file: !1, line: 539, column: 6)
!253 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ix", scope: !251, file: !1, line: 552, type: !76)
!254 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ip", scope: !255, file: !1, line: 575, type: !22)
!255 = distinct !DILexicalBlock(scope: !256, file: !1, line: 574, column: 49)
!256 = distinct !DILexicalBlock(scope: !257, file: !1, line: 574, column: 16)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 570, column: 9)
!258 = distinct !DILexicalBlock(scope: !242, file: !1, line: 567, column: 23)
!259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !255, file: !1, line: 576, type: !260)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, align: 64, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 2)
!263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ip", scope: !264, file: !1, line: 590, type: !22)
!264 = distinct !DILexicalBlock(scope: !265, file: !1, line: 589, column: 49)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 589, column: 16)
!266 = distinct !DILexicalBlock(scope: !258, file: !1, line: 585, column: 9)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !264, file: !1, line: 591, type: !260)
!268 = !DISubprogram(name: "xdr_vector", scope: !1, file: !1, line: 621, type: !269, isLocal: false, isDefinition: true, scopeLine: 627, isOptimized: true, function: i32 (%struct.XDR*, i8*, i32, i32, i32 (%struct.XDR*, i8*, ...)*)* @xdr_vector, variables: !271)
!269 = !DISubroutineType(types: !270)
!270 = !{!30, !31, !19, !14, !14, !132}
!271 = !{!272, !273, !274, !275, !276, !277, !278}
!272 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !268, file: !1, line: 622, type: !31)
!273 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "basep", arg: 2, scope: !268, file: !1, line: 623, type: !19)
!274 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nelem", arg: 3, scope: !268, file: !1, line: 624, type: !14)
!275 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "elemsize", arg: 4, scope: !268, file: !1, line: 625, type: !14)
!276 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdr_elem", arg: 5, scope: !268, file: !1, line: 626, type: !132)
!277 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !268, file: !1, line: 629, type: !14)
!278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "elptr", scope: !268, file: !1, line: 630, type: !19)
!279 = !DISubprogram(name: "xdrstdio_create", scope: !1, file: !1, line: 681, type: !280, isLocal: false, isDefinition: true, scopeLine: 682, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.XDR*, %struct.__sFILE*, i32)* @xdrstdio_create, variables: !282)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !31, !69, !3}
!282 = !{!283, !284, !285}
!283 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !279, file: !1, line: 681, type: !31)
!284 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 2, scope: !279, file: !1, line: 681, type: !69)
!285 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !279, file: !1, line: 681, type: !3)
!286 = !DISubprogram(name: "xdrstdio_getlong", scope: !1, file: !1, line: 704, type: !28, isLocal: true, isDefinition: true, scopeLine: 705, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i64*)* @xdrstdio_getlong, variables: !287)
!287 = !{!288, !289, !290}
!288 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !286, file: !1, line: 704, type: !31)
!289 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lp", arg: 2, scope: !286, file: !1, line: 704, type: !13)
!290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mycopy", scope: !286, file: !1, line: 706, type: !15)
!291 = !DISubprogram(name: "xdr_ntohl", scope: !1, file: !1, line: 86, type: !292, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, variables: !294)
!292 = !DISubroutineType(types: !293)
!293 = !{!16, !16}
!294 = !{!295, !296}
!295 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !291, file: !1, line: 86, type: !16)
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !291, file: !1, line: 88, type: !17)
!297 = !DISubprogram(name: "xdr_swapbytes", scope: !1, file: !1, line: 61, type: !292, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, variables: !298)
!298 = !{!299, !300, !301, !302, !303}
!299 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !297, file: !1, line: 61, type: !16)
!300 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !297, file: !1, line: 63, type: !16)
!301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !297, file: !1, line: 64, type: !11)
!302 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "px", scope: !297, file: !1, line: 65, type: !19)
!303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "py", scope: !297, file: !1, line: 66, type: !19)
!304 = !DISubprogram(name: "xdrstdio_putlong", scope: !1, file: !1, line: 715, type: !28, isLocal: true, isDefinition: true, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i64*)* @xdrstdio_putlong, variables: !305)
!305 = !{!306, !307, !308}
!306 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !304, file: !1, line: 715, type: !31)
!307 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lp", arg: 2, scope: !304, file: !1, line: 715, type: !13)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mycopy", scope: !304, file: !1, line: 717, type: !10)
!309 = !DISubprogram(name: "xdr_htonl", scope: !1, file: !1, line: 74, type: !292, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, variables: !310)
!310 = !{!311, !312}
!311 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !309, file: !1, line: 74, type: !16)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !309, file: !1, line: 76, type: !17)
!313 = !DISubprogram(name: "xdrstdio_getbytes", scope: !1, file: !1, line: 725, type: !44, isLocal: true, isDefinition: true, scopeLine: 726, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i8*, i32)* @xdrstdio_getbytes, variables: !314)
!314 = !{!315, !316, !317}
!315 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !313, file: !1, line: 725, type: !31)
!316 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "addr", arg: 2, scope: !313, file: !1, line: 725, type: !19)
!317 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !313, file: !1, line: 725, type: !14)
!318 = !DISubprogram(name: "xdrstdio_putbytes", scope: !1, file: !1, line: 734, type: !44, isLocal: true, isDefinition: true, scopeLine: 735, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i8*, i32)* @xdrstdio_putbytes, variables: !319)
!319 = !{!320, !321, !322}
!320 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !318, file: !1, line: 734, type: !31)
!321 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "addr", arg: 2, scope: !318, file: !1, line: 734, type: !19)
!322 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !318, file: !1, line: 734, type: !14)
!323 = !DISubprogram(name: "xdrstdio_getpos", scope: !1, file: !1, line: 743, type: !49, isLocal: true, isDefinition: true, scopeLine: 744, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*)* @xdrstdio_getpos, variables: !324)
!324 = !{!325}
!325 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !323, file: !1, line: 743, type: !31)
!326 = !DISubprogram(name: "xdrstdio_setpos", scope: !1, file: !1, line: 749, type: !53, isLocal: true, isDefinition: true, scopeLine: 750, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i32)* @xdrstdio_setpos, variables: !327)
!327 = !{!328, !329}
!328 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !326, file: !1, line: 749, type: !31)
!329 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pos", arg: 2, scope: !326, file: !1, line: 749, type: !14)
!330 = !DISubprogram(name: "xdrstdio_inline", scope: !1, file: !1, line: 755, type: !57, isLocal: true, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: true, function: i32* (%struct.XDR*, i32)* @xdrstdio_inline, variables: !331)
!331 = !{!332, !333}
!332 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !330, file: !1, line: 755, type: !31)
!333 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !330, file: !1, line: 755, type: !11)
!334 = !DISubprogram(name: "xdrstdio_destroy", scope: !1, file: !1, line: 697, type: !62, isLocal: true, isDefinition: true, scopeLine: 698, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.XDR*)* @xdrstdio_destroy, variables: !335)
!335 = !{!336}
!336 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !334, file: !1, line: 697, type: !31)
!337 = !DISubprogram(name: "xdrstdio_getint32", scope: !1, file: !1, line: 770, type: !66, isLocal: true, isDefinition: true, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i32*)* @xdrstdio_getint32, variables: !338)
!338 = !{!339, !340, !341}
!339 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !337, file: !1, line: 770, type: !31)
!340 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ip", arg: 2, scope: !337, file: !1, line: 770, type: !59)
!341 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mycopy", scope: !337, file: !1, line: 772, type: !15)
!342 = !DISubprogram(name: "xdrstdio_putint32", scope: !1, file: !1, line: 781, type: !66, isLocal: true, isDefinition: true, scopeLine: 782, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i32*)* @xdrstdio_putint32, variables: !343)
!343 = !{!344, !345, !346}
!344 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !342, file: !1, line: 781, type: !31)
!345 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ip", arg: 2, scope: !342, file: !1, line: 781, type: !59)
!346 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mycopy", scope: !342, file: !1, line: 783, type: !15)
!347 = !{!348, !352, !353, !354}
!348 = !DIGlobalVariable(name: "crud", scope: !208, file: !1, line: 368, type: !349, isLocal: true, isDefinition: true, variable: [4 x i8]* @xdr_opaque.crud)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 32, align: 8, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 4)
!352 = !DIGlobalVariable(name: "LSW", scope: !242, file: !1, line: 537, type: !11, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariable(name: "xdr_zero", scope: !0, file: !1, line: 59, type: !349, isLocal: true, isDefinition: true, variable: [4 x i8]* @xdr_zero)
!354 = !DIGlobalVariable(name: "xdrstdio_ops", scope: !0, file: !1, line: 661, type: !355, isLocal: true, isDefinition: true, variable: %struct.xdr_ops* @xdrstdio_ops)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!356 = !{i32 2, !"Dwarf Version", i32 2}
!357 = !{i32 2, !"Debug Info Version", i32 700000003}
!358 = !{i32 1, !"PIC Level", i32 2}
!359 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!360 = !DIExpression()
!361 = !DILocation(line: 104, column: 21, scope: !129)
!362 = !DILocation(line: 104, column: 33, scope: !129)
!363 = !DILocation(line: 106, column: 3, scope: !129)
!364 = !DILocation(line: 108, column: 5, scope: !129)
!365 = !DILocation(line: 108, column: 10, scope: !129)
!366 = !{!367, !368, i64 0}
!367 = !{!"XDR", !368, i64 0, !370, i64 8, !370, i64 16, !370, i64 24, !370, i64 32, !371, i64 40}
!368 = !{!"omnipotent char", !369, i64 0}
!369 = !{!"Simple C/C++ TBAA"}
!370 = !{!"any pointer", !368, i64 0}
!371 = !{!"int", !368, i64 0}
!372 = !DILocation(line: 106, column: 7, scope: !129)
!373 = !DILocation(line: 109, column: 3, scope: !129)
!374 = !DILocation(line: 110, column: 1, scope: !129)
!375 = !DILocation(line: 118, column: 3, scope: !140)
!376 = !DILocation(line: 125, column: 15, scope: !144)
!377 = !DILocation(line: 125, column: 26, scope: !144)
!378 = !DILocation(line: 129, column: 17, scope: !144)
!379 = !DILocation(line: 129, column: 3, scope: !144)
!380 = !DILocation(line: 132, column: 18, scope: !381)
!381 = distinct !DILexicalBlock(scope: !144, file: !1, line: 130, column: 5)
!382 = !{!371, !371, i64 0}
!383 = !DILocation(line: 132, column: 11, scope: !381)
!384 = !DILocation(line: 127, column: 8, scope: !144)
!385 = !DILocation(line: 132, column: 9, scope: !381)
!386 = !{!387, !387, i64 0}
!387 = !{!"long", !368, i64 0}
!388 = !DILocation(line: 133, column: 14, scope: !381)
!389 = !{!367, !370, i64 8}
!390 = !{!391, !370, i64 8}
!391 = !{!"xdr_ops", !370, i64 0, !370, i64 8, !370, i64 16, !370, i64 24, !370, i64 32, !370, i64 40, !370, i64 48, !370, i64 56, !370, i64 64, !370, i64 72}
!392 = !DILocation(line: 133, column: 7, scope: !381)
!393 = !DILocation(line: 136, column: 12, scope: !394)
!394 = distinct !DILexicalBlock(scope: !381, file: !1, line: 136, column: 11)
!395 = !{!391, !370, i64 0}
!396 = !DILocation(line: 136, column: 11, scope: !381)
!397 = !DILocation(line: 140, column: 19, scope: !381)
!398 = !DILocation(line: 140, column: 13, scope: !381)
!399 = !DILocation(line: 140, column: 11, scope: !381)
!400 = !DILocation(line: 140, column: 7, scope: !381)
!401 = !DILocation(line: 144, column: 3, scope: !144)
!402 = !DILocation(line: 145, column: 1, scope: !144)
!403 = !DILocation(line: 152, column: 17, scope: !151)
!404 = !DILocation(line: 152, column: 37, scope: !151)
!405 = !DILocation(line: 156, column: 17, scope: !151)
!406 = !DILocation(line: 156, column: 3, scope: !151)
!407 = !DILocation(line: 159, column: 27, scope: !408)
!408 = distinct !DILexicalBlock(scope: !151, file: !1, line: 157, column: 5)
!409 = !DILocation(line: 159, column: 11, scope: !408)
!410 = !DILocation(line: 154, column: 17, scope: !151)
!411 = !DILocation(line: 159, column: 9, scope: !408)
!412 = !DILocation(line: 160, column: 14, scope: !408)
!413 = !DILocation(line: 160, column: 7, scope: !408)
!414 = !DILocation(line: 163, column: 12, scope: !415)
!415 = distinct !DILexicalBlock(scope: !408, file: !1, line: 163, column: 11)
!416 = !DILocation(line: 163, column: 11, scope: !408)
!417 = !DILocation(line: 167, column: 28, scope: !408)
!418 = !DILocation(line: 167, column: 13, scope: !408)
!419 = !DILocation(line: 167, column: 11, scope: !408)
!420 = !DILocation(line: 167, column: 7, scope: !408)
!421 = !DILocation(line: 171, column: 1, scope: !151)
!422 = !DILocation(line: 180, column: 16, scope: !159)
!423 = !DILocation(line: 180, column: 28, scope: !159)
!424 = !DILocation(line: 183, column: 13, scope: !425)
!425 = distinct !DILexicalBlock(scope: !159, file: !1, line: 183, column: 7)
!426 = !DILocation(line: 184, column: 7, scope: !425)
!427 = !DILocation(line: 185, column: 21, scope: !425)
!428 = !DILocation(line: 185, column: 7, scope: !425)
!429 = !DILocation(line: 185, column: 25, scope: !425)
!430 = !DILocation(line: 183, column: 7, scope: !159)
!431 = !DILocation(line: 186, column: 12, scope: !425)
!432 = !DILocation(line: 186, column: 5, scope: !425)
!433 = !DILocation(line: 189, column: 12, scope: !434)
!434 = distinct !DILexicalBlock(scope: !159, file: !1, line: 188, column: 7)
!435 = !DILocation(line: 189, column: 5, scope: !434)
!436 = !DILocation(line: 194, column: 3, scope: !159)
!437 = !DILocation(line: 195, column: 1, scope: !159)
!438 = !DILocation(line: 204, column: 18, scope: !163)
!439 = !DILocation(line: 204, column: 39, scope: !163)
!440 = !DILocation(line: 206, column: 17, scope: !163)
!441 = !DILocation(line: 206, column: 3, scope: !163)
!442 = !DILocation(line: 212, column: 6, scope: !443)
!443 = distinct !DILexicalBlock(scope: !171, file: !1, line: 212, column: 6)
!444 = !DILocation(line: 210, column: 11, scope: !171)
!445 = !DILocation(line: 212, column: 31, scope: !443)
!446 = !DILocation(line: 212, column: 6, scope: !171)
!447 = !DILocation(line: 215, column: 24, scope: !171)
!448 = !DILocation(line: 215, column: 9, scope: !171)
!449 = !DILocation(line: 215, column: 7, scope: !171)
!450 = !DILocation(line: 216, column: 2, scope: !171)
!451 = !DILocation(line: 221, column: 22, scope: !452)
!452 = distinct !DILexicalBlock(scope: !172, file: !1, line: 220, column: 11)
!453 = !DILocation(line: 221, column: 7, scope: !452)
!454 = !DILocation(line: 221, column: 27, scope: !452)
!455 = !DILocation(line: 220, column: 11, scope: !172)
!456 = !DILocation(line: 224, column: 14, scope: !172)
!457 = !DILocation(line: 224, column: 7, scope: !172)
!458 = !DILocation(line: 229, column: 3, scope: !163)
!459 = !DILocation(line: 230, column: 1, scope: !163)
!460 = !DILocation(line: 237, column: 17, scope: !173)
!461 = !DILocation(line: 237, column: 30, scope: !173)
!462 = !DILocation(line: 241, column: 17, scope: !173)
!463 = !DILocation(line: 241, column: 3, scope: !173)
!464 = !DILocation(line: 244, column: 18, scope: !465)
!465 = distinct !DILexicalBlock(scope: !173, file: !1, line: 242, column: 5)
!466 = !{!467, !467, i64 0}
!467 = !{!"short", !368, i64 0}
!468 = !DILocation(line: 244, column: 11, scope: !465)
!469 = !DILocation(line: 239, column: 8, scope: !173)
!470 = !DILocation(line: 244, column: 9, scope: !465)
!471 = !DILocation(line: 245, column: 14, scope: !465)
!472 = !DILocation(line: 245, column: 7, scope: !465)
!473 = !DILocation(line: 248, column: 12, scope: !474)
!474 = distinct !DILexicalBlock(scope: !465, file: !1, line: 248, column: 11)
!475 = !DILocation(line: 248, column: 11, scope: !465)
!476 = !DILocation(line: 252, column: 21, scope: !465)
!477 = !DILocation(line: 252, column: 13, scope: !465)
!478 = !DILocation(line: 252, column: 11, scope: !465)
!479 = !DILocation(line: 253, column: 7, scope: !465)
!480 = !DILocation(line: 258, column: 3, scope: !173)
!481 = !DILocation(line: 259, column: 1, scope: !173)
!482 = !DILocation(line: 266, column: 19, scope: !181)
!483 = !DILocation(line: 266, column: 41, scope: !181)
!484 = !DILocation(line: 270, column: 17, scope: !181)
!485 = !DILocation(line: 270, column: 3, scope: !181)
!486 = !DILocation(line: 273, column: 27, scope: !487)
!487 = distinct !DILexicalBlock(scope: !181, file: !1, line: 271, column: 5)
!488 = !DILocation(line: 273, column: 11, scope: !487)
!489 = !DILocation(line: 268, column: 17, scope: !181)
!490 = !DILocation(line: 273, column: 9, scope: !487)
!491 = !DILocation(line: 274, column: 14, scope: !487)
!492 = !DILocation(line: 274, column: 7, scope: !487)
!493 = !DILocation(line: 277, column: 12, scope: !494)
!494 = distinct !DILexicalBlock(scope: !487, file: !1, line: 277, column: 11)
!495 = !DILocation(line: 277, column: 11, scope: !487)
!496 = !DILocation(line: 281, column: 31, scope: !487)
!497 = !DILocation(line: 281, column: 14, scope: !487)
!498 = !DILocation(line: 281, column: 12, scope: !487)
!499 = !DILocation(line: 282, column: 7, scope: !487)
!500 = !DILocation(line: 287, column: 3, scope: !181)
!501 = !DILocation(line: 288, column: 1, scope: !181)
!502 = !DILocation(line: 295, column: 16, scope: !189)
!503 = !DILocation(line: 295, column: 28, scope: !189)
!504 = !DILocation(line: 299, column: 8, scope: !189)
!505 = !{!368, !368, i64 0}
!506 = !DILocation(line: 299, column: 7, scope: !189)
!507 = !DILocation(line: 297, column: 7, scope: !189)
!508 = !DILocation(line: 299, column: 5, scope: !189)
!509 = !DILocation(line: 300, column: 8, scope: !510)
!510 = distinct !DILexicalBlock(scope: !189, file: !1, line: 300, column: 7)
!511 = !DILocation(line: 300, column: 7, scope: !189)
!512 = !DILocation(line: 304, column: 9, scope: !189)
!513 = !DILocation(line: 304, column: 7, scope: !189)
!514 = !DILocation(line: 305, column: 3, scope: !189)
!515 = !DILocation(line: 306, column: 1, scope: !189)
!516 = !DILocation(line: 312, column: 18, scope: !196)
!517 = !DILocation(line: 312, column: 39, scope: !196)
!518 = !DILocation(line: 316, column: 8, scope: !196)
!519 = !DILocation(line: 316, column: 7, scope: !196)
!520 = !DILocation(line: 314, column: 16, scope: !196)
!521 = !DILocation(line: 316, column: 5, scope: !196)
!522 = !DILocation(line: 317, column: 8, scope: !523)
!523 = distinct !DILexicalBlock(scope: !196, file: !1, line: 317, column: 7)
!524 = !DILocation(line: 317, column: 7, scope: !196)
!525 = !DILocation(line: 321, column: 9, scope: !196)
!526 = !DILocation(line: 321, column: 7, scope: !196)
!527 = !DILocation(line: 322, column: 3, scope: !196)
!528 = !DILocation(line: 323, column: 1, scope: !196)
!529 = !DILocation(line: 329, column: 16, scope: !203)
!530 = !DILocation(line: 329, column: 27, scope: !203)
!531 = !DILocation(line: 335, column: 17, scope: !203)
!532 = !DILocation(line: 335, column: 3, scope: !203)
!533 = !DILocation(line: 338, column: 12, scope: !534)
!534 = distinct !DILexicalBlock(scope: !203, file: !1, line: 336, column: 5)
!535 = !DILocation(line: 333, column: 8, scope: !203)
!536 = !DILocation(line: 338, column: 10, scope: !534)
!537 = !DILocation(line: 339, column: 14, scope: !534)
!538 = !DILocation(line: 339, column: 7, scope: !534)
!539 = !DILocation(line: 342, column: 12, scope: !540)
!540 = distinct !DILexicalBlock(scope: !534, file: !1, line: 342, column: 11)
!541 = !DILocation(line: 342, column: 11, scope: !534)
!542 = !DILocation(line: 346, column: 14, scope: !534)
!543 = !DILocation(line: 346, column: 13, scope: !534)
!544 = !DILocation(line: 346, column: 11, scope: !534)
!545 = !DILocation(line: 347, column: 7, scope: !534)
!546 = !DILocation(line: 352, column: 3, scope: !203)
!547 = !DILocation(line: 355, column: 1, scope: !203)
!548 = !DILocation(line: 365, column: 18, scope: !208)
!549 = !DILocation(line: 365, column: 30, scope: !208)
!550 = !DILocation(line: 365, column: 47, scope: !208)
!551 = !DILocation(line: 373, column: 11, scope: !552)
!552 = distinct !DILexicalBlock(scope: !208, file: !1, line: 373, column: 7)
!553 = !DILocation(line: 373, column: 7, scope: !208)
!554 = !DILocation(line: 379, column: 15, scope: !208)
!555 = !DILocation(line: 367, column: 16, scope: !208)
!556 = !DILocation(line: 380, column: 13, scope: !557)
!557 = distinct !DILexicalBlock(scope: !208, file: !1, line: 380, column: 7)
!558 = !DILocation(line: 381, column: 32, scope: !557)
!559 = !DILocation(line: 380, column: 7, scope: !208)
!560 = !DILocation(line: 383, column: 17, scope: !208)
!561 = !DILocation(line: 383, column: 3, scope: !208)
!562 = !DILocation(line: 386, column: 12, scope: !563)
!563 = distinct !DILexicalBlock(scope: !564, file: !1, line: 386, column: 11)
!564 = distinct !DILexicalBlock(scope: !208, file: !1, line: 384, column: 5)
!565 = !{!391, !370, i64 16}
!566 = !DILocation(line: 386, column: 11, scope: !564)
!567 = !DILocation(line: 390, column: 17, scope: !568)
!568 = distinct !DILexicalBlock(scope: !564, file: !1, line: 390, column: 11)
!569 = !DILocation(line: 390, column: 11, scope: !564)
!570 = !DILocation(line: 392, column: 14, scope: !564)
!571 = !DILocation(line: 392, column: 7, scope: !564)
!572 = !DILocation(line: 395, column: 12, scope: !573)
!573 = distinct !DILexicalBlock(scope: !564, file: !1, line: 395, column: 11)
!574 = !{!391, !370, i64 24}
!575 = !DILocation(line: 395, column: 11, scope: !564)
!576 = !DILocation(line: 399, column: 17, scope: !577)
!577 = distinct !DILexicalBlock(scope: !564, file: !1, line: 399, column: 11)
!578 = !DILocation(line: 399, column: 11, scope: !564)
!579 = !DILocation(line: 401, column: 14, scope: !564)
!580 = !DILocation(line: 401, column: 7, scope: !564)
!581 = !DILocation(line: 406, column: 3, scope: !208)
!582 = !DILocation(line: 407, column: 1, scope: !208)
!583 = !DILocation(line: 420, column: 11, scope: !214)
!584 = !DILocation(line: 421, column: 13, scope: !214)
!585 = !DILocation(line: 422, column: 19, scope: !214)
!586 = !DILocation(line: 424, column: 14, scope: !214)
!587 = !{!370, !370, i64 0}
!588 = !DILocation(line: 424, column: 9, scope: !214)
!589 = !DILocation(line: 431, column: 17, scope: !214)
!590 = !DILocation(line: 431, column: 3, scope: !214)
!591 = !DILocation(line: 434, column: 11, scope: !592)
!592 = distinct !DILexicalBlock(scope: !214, file: !1, line: 432, column: 5)
!593 = !DILocation(line: 440, column: 14, scope: !594)
!594 = distinct !DILexicalBlock(scope: !592, file: !1, line: 440, column: 11)
!595 = !DILocation(line: 440, column: 11, scope: !592)
!596 = !DILocation(line: 442, column: 14, scope: !592)
!597 = !DILocation(line: 425, column: 16, scope: !214)
!598 = !DILocation(line: 442, column: 12, scope: !592)
!599 = !DILocation(line: 443, column: 7, scope: !592)
!600 = !DILocation(line: 447, column: 8, scope: !601)
!601 = distinct !DILexicalBlock(scope: !214, file: !1, line: 447, column: 7)
!602 = !DILocation(line: 447, column: 7, scope: !214)
!603 = !DILocation(line: 451, column: 7, scope: !604)
!604 = distinct !DILexicalBlock(scope: !214, file: !1, line: 451, column: 7)
!605 = !DILocation(line: 451, column: 12, scope: !604)
!606 = !DILocation(line: 451, column: 7, scope: !214)
!607 = !DILocation(line: 455, column: 19, scope: !214)
!608 = !DILocation(line: 426, column: 16, scope: !214)
!609 = !DILocation(line: 460, column: 17, scope: !214)
!610 = !DILocation(line: 460, column: 3, scope: !214)
!611 = !DILocation(line: 463, column: 20, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 463, column: 11)
!613 = distinct !DILexicalBlock(scope: !214, file: !1, line: 461, column: 5)
!614 = !DILocation(line: 463, column: 11, scope: !613)
!615 = !DILocation(line: 467, column: 14, scope: !616)
!616 = distinct !DILexicalBlock(scope: !613, file: !1, line: 467, column: 11)
!617 = !DILocation(line: 467, column: 11, scope: !613)
!618 = !DILocation(line: 468, column: 31, scope: !616)
!619 = !DILocation(line: 468, column: 23, scope: !616)
!620 = !DILocation(line: 468, column: 7, scope: !616)
!621 = !DILocation(line: 469, column: 14, scope: !622)
!622 = distinct !DILexicalBlock(scope: !613, file: !1, line: 469, column: 11)
!623 = !DILocation(line: 469, column: 11, scope: !613)
!624 = !DILocation(line: 471, column: 49, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !1, line: 470, column: 2)
!626 = !DILocation(line: 471, column: 11, scope: !625)
!627 = !DILocation(line: 472, column: 4, scope: !625)
!628 = !DILocation(line: 474, column: 7, scope: !613)
!629 = !DILocation(line: 474, column: 16, scope: !613)
!630 = !DILocation(line: 478, column: 14, scope: !613)
!631 = !DILocation(line: 478, column: 7, scope: !613)
!632 = !DILocation(line: 481, column: 7, scope: !613)
!633 = !DILocation(line: 482, column: 12, scope: !613)
!634 = !DILocation(line: 483, column: 7, scope: !613)
!635 = !DILocation(line: 486, column: 1, scope: !214)
!636 = !DILocation(line: 494, column: 11, scope: !225)
!637 = !DILocation(line: 495, column: 13, scope: !225)
!638 = !DILocation(line: 497, column: 16, scope: !225)
!639 = !DILocation(line: 497, column: 2, scope: !225)
!640 = !DILocation(line: 503, column: 16, scope: !234)
!641 = !DILocation(line: 503, column: 15, scope: !234)
!642 = !DILocation(line: 503, column: 9, scope: !234)
!643 = !DILocation(line: 504, column: 12, scope: !234)
!644 = !DILocation(line: 504, column: 4, scope: !234)
!645 = !DILocation(line: 513, column: 8, scope: !646)
!646 = distinct !DILexicalBlock(scope: !239, file: !1, line: 513, column: 8)
!647 = !DILocation(line: 512, column: 9, scope: !239)
!648 = !DILocation(line: 513, column: 8, scope: !239)
!649 = !DILocation(line: 514, column: 18, scope: !650)
!650 = distinct !DILexicalBlock(scope: !646, file: !1, line: 513, column: 33)
!651 = !DILocation(line: 514, column: 6, scope: !650)
!652 = !DILocation(line: 514, column: 16, scope: !650)
!653 = !DILocation(line: 515, column: 5, scope: !650)
!654 = !DILocation(line: 523, column: 2, scope: !225)
!655 = !DILocation(line: 524, column: 1, scope: !225)
!656 = !DILocation(line: 529, column: 11, scope: !242)
!657 = !DILocation(line: 530, column: 14, scope: !242)
!658 = !DILocation(line: 539, column: 6, scope: !242)
!659 = !DILocation(line: 540, column: 12, scope: !251)
!660 = !DILocation(line: 552, column: 19, scope: !251)
!661 = !DILocation(line: 567, column: 17, scope: !242)
!662 = !DILocation(line: 567, column: 3, scope: !242)
!663 = !DILocation(line: 575, column: 17, scope: !255)
!664 = !DILocation(line: 575, column: 12, scope: !255)
!665 = !DILocation(line: 576, column: 12, scope: !255)
!666 = !DILocation(line: 577, column: 16, scope: !255)
!667 = !DILocation(line: 577, column: 7, scope: !255)
!668 = !DILocation(line: 577, column: 14, scope: !255)
!669 = !DILocation(line: 578, column: 16, scope: !255)
!670 = !DILocation(line: 578, column: 7, scope: !255)
!671 = !DILocation(line: 578, column: 14, scope: !255)
!672 = !DILocation(line: 579, column: 15, scope: !255)
!673 = !DILocation(line: 579, column: 38, scope: !255)
!674 = !DILocation(line: 580, column: 8, scope: !255)
!675 = !DILocation(line: 579, column: 7, scope: !255)
!676 = !DILocation(line: 590, column: 17, scope: !264)
!677 = !DILocation(line: 590, column: 12, scope: !264)
!678 = !DILocation(line: 591, column: 12, scope: !264)
!679 = !DILocation(line: 592, column: 11, scope: !680)
!680 = distinct !DILexicalBlock(scope: !264, file: !1, line: 592, column: 11)
!681 = !DILocation(line: 592, column: 39, scope: !680)
!682 = !DILocation(line: 593, column: 4, scope: !680)
!683 = !DILocation(line: 592, column: 11, scope: !264)
!684 = !DILocation(line: 594, column: 10, scope: !685)
!685 = distinct !DILexicalBlock(scope: !680, file: !1, line: 593, column: 32)
!686 = !DILocation(line: 594, column: 8, scope: !685)
!687 = !DILocation(line: 595, column: 10, scope: !685)
!688 = !DILocation(line: 595, column: 2, scope: !685)
!689 = !DILocation(line: 595, column: 8, scope: !685)
!690 = !DILocation(line: 596, column: 2, scope: !685)
!691 = !DILocation(line: 604, column: 3, scope: !242)
!692 = !DILocation(line: 605, column: 1, scope: !242)
!693 = !DILocation(line: 622, column: 11, scope: !268)
!694 = !DILocation(line: 623, column: 12, scope: !268)
!695 = !DILocation(line: 624, column: 19, scope: !268)
!696 = !DILocation(line: 625, column: 19, scope: !268)
!697 = !DILocation(line: 626, column: 16, scope: !268)
!698 = !DILocation(line: 630, column: 9, scope: !268)
!699 = !DILocation(line: 629, column: 16, scope: !268)
!700 = !DILocation(line: 633, column: 17, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !1, line: 633, column: 3)
!702 = distinct !DILexicalBlock(scope: !268, file: !1, line: 633, column: 3)
!703 = !DILocation(line: 633, column: 3, scope: !702)
!704 = !DILocation(line: 639, column: 13, scope: !705)
!705 = distinct !DILexicalBlock(scope: !701, file: !1, line: 634, column: 5)
!706 = !DILocation(line: 635, column: 12, scope: !707)
!707 = distinct !DILexicalBlock(scope: !705, file: !1, line: 635, column: 11)
!708 = !DILocation(line: 635, column: 11, scope: !705)
!709 = !DILocation(line: 633, column: 27, scope: !701)
!710 = !DILocation(line: 643, column: 1, scope: !268)
!711 = !DILocation(line: 681, column: 23, scope: !279)
!712 = !DILocation(line: 681, column: 35, scope: !279)
!713 = !DILocation(line: 681, column: 53, scope: !279)
!714 = !DILocation(line: 683, column: 9, scope: !279)
!715 = !DILocation(line: 683, column: 14, scope: !279)
!716 = !DILocation(line: 686, column: 9, scope: !279)
!717 = !DILocation(line: 686, column: 15, scope: !279)
!718 = !DILocation(line: 687, column: 9, scope: !279)
!719 = !DILocation(line: 687, column: 19, scope: !279)
!720 = !{!367, !370, i64 24}
!721 = !DILocation(line: 688, column: 9, scope: !279)
!722 = !DILocation(line: 688, column: 17, scope: !279)
!723 = !{!367, !371, i64 40}
!724 = !DILocation(line: 689, column: 9, scope: !279)
!725 = !DILocation(line: 689, column: 16, scope: !279)
!726 = !{!367, !370, i64 32}
!727 = !DILocation(line: 690, column: 1, scope: !279)
!728 = !DILocation(line: 704, column: 24, scope: !286)
!729 = !DILocation(line: 704, column: 36, scope: !286)
!730 = !DILocation(line: 708, column: 14, scope: !731)
!731 = distinct !DILexicalBlock(scope: !286, file: !1, line: 708, column: 7)
!732 = !DILocation(line: 708, column: 54, scope: !731)
!733 = !DILocation(line: 708, column: 7, scope: !731)
!734 = !DILocation(line: 708, column: 65, scope: !731)
!735 = !DILocation(line: 708, column: 7, scope: !286)
!736 = !DILocation(line: 706, column: 15, scope: !286)
!737 = !DILocation(line: 710, column: 34, scope: !286)
!738 = !DILocation(line: 86, column: 44, scope: !291, inlinedAt: !739)
!739 = distinct !DILocation(line: 710, column: 23, scope: !286)
!740 = !DILocation(line: 88, column: 9, scope: !291, inlinedAt: !739)
!741 = !DIExpression(DW_OP_bit_piece, 0, 8)
!742 = !DIExpression(DW_OP_bit_piece, 8, 8)
!743 = !DILocation(line: 61, column: 48, scope: !297, inlinedAt: !744)
!744 = distinct !DILocation(line: 94, column: 12, scope: !745, inlinedAt: !739)
!745 = distinct !DILexicalBlock(scope: !746, file: !1, line: 92, column: 10)
!746 = distinct !DILexicalBlock(scope: !291, file: !1, line: 89, column: 7)
!747 = !DILocation(line: 94, column: 12, scope: !745, inlinedAt: !739)
!748 = !DILocation(line: 65, column: 9, scope: !297, inlinedAt: !744)
!749 = !DILocation(line: 66, column: 9, scope: !297, inlinedAt: !744)
!750 = !DILocation(line: 64, column: 7, scope: !297, inlinedAt: !744)
!751 = !DILocation(line: 68, column: 3, scope: !752, inlinedAt: !744)
!752 = distinct !DILexicalBlock(scope: !297, file: !1, line: 68, column: 3)
!753 = !DILocation(line: 69, column: 15, scope: !754, inlinedAt: !744)
!754 = distinct !DILexicalBlock(scope: !752, file: !1, line: 68, column: 3)
!755 = !DILocation(line: 69, column: 11, scope: !754, inlinedAt: !744)
!756 = !DILocation(line: 69, column: 5, scope: !754, inlinedAt: !744)
!757 = !DILocation(line: 69, column: 10, scope: !754, inlinedAt: !744)
!758 = !DILocation(line: 63, column: 16, scope: !297, inlinedAt: !744)
!759 = !DILocation(line: 71, column: 10, scope: !297, inlinedAt: !744)
!760 = !DILocation(line: 71, column: 3, scope: !297, inlinedAt: !744)
!761 = !DILocation(line: 710, column: 9, scope: !286)
!762 = !DILocation(line: 710, column: 7, scope: !286)
!763 = !DILocation(line: 711, column: 3, scope: !286)
!764 = !DILocation(line: 712, column: 1, scope: !286)
!765 = !DILocation(line: 715, column: 24, scope: !304)
!766 = !DILocation(line: 715, column: 36, scope: !304)
!767 = !DILocation(line: 717, column: 28, scope: !304)
!768 = !DILocation(line: 74, column: 44, scope: !309, inlinedAt: !769)
!769 = distinct !DILocation(line: 717, column: 17, scope: !304)
!770 = !DILocation(line: 76, column: 9, scope: !309, inlinedAt: !769)
!771 = !DILocation(line: 61, column: 48, scope: !297, inlinedAt: !772)
!772 = distinct !DILocation(line: 82, column: 12, scope: !773, inlinedAt: !769)
!773 = distinct !DILexicalBlock(scope: !774, file: !1, line: 80, column: 10)
!774 = distinct !DILexicalBlock(scope: !309, file: !1, line: 77, column: 7)
!775 = !DILocation(line: 82, column: 12, scope: !773, inlinedAt: !769)
!776 = !DILocation(line: 65, column: 9, scope: !297, inlinedAt: !772)
!777 = !DILocation(line: 66, column: 9, scope: !297, inlinedAt: !772)
!778 = !DILocation(line: 64, column: 7, scope: !297, inlinedAt: !772)
!779 = !DILocation(line: 68, column: 3, scope: !752, inlinedAt: !772)
!780 = !DILocation(line: 69, column: 15, scope: !754, inlinedAt: !772)
!781 = !DILocation(line: 69, column: 11, scope: !754, inlinedAt: !772)
!782 = !DILocation(line: 69, column: 5, scope: !754, inlinedAt: !772)
!783 = !DILocation(line: 69, column: 10, scope: !754, inlinedAt: !772)
!784 = !DILocation(line: 63, column: 16, scope: !297, inlinedAt: !772)
!785 = !DILocation(line: 71, column: 10, scope: !297, inlinedAt: !772)
!786 = !DILocation(line: 71, column: 3, scope: !297, inlinedAt: !772)
!787 = !DILocation(line: 717, column: 17, scope: !304)
!788 = !DILocation(line: 717, column: 8, scope: !304)
!789 = !DILocation(line: 719, column: 15, scope: !790)
!790 = distinct !DILexicalBlock(scope: !304, file: !1, line: 719, column: 7)
!791 = !DILocation(line: 719, column: 49, scope: !790)
!792 = !DILocation(line: 719, column: 7, scope: !790)
!793 = !DILocation(line: 719, column: 60, scope: !790)
!794 = !DILocation(line: 721, column: 3, scope: !304)
!795 = !DILocation(line: 722, column: 1, scope: !304)
!796 = !DILocation(line: 725, column: 25, scope: !313)
!797 = !DILocation(line: 725, column: 37, scope: !313)
!798 = !DILocation(line: 725, column: 56, scope: !313)
!799 = !DILocation(line: 727, column: 12, scope: !800)
!800 = distinct !DILexicalBlock(scope: !313, file: !1, line: 727, column: 7)
!801 = !DILocation(line: 727, column: 18, scope: !800)
!802 = !DILocation(line: 727, column: 35, scope: !800)
!803 = !DILocation(line: 728, column: 23, scope: !800)
!804 = !DILocation(line: 727, column: 22, scope: !800)
!805 = !DILocation(line: 728, column: 34, scope: !800)
!806 = !DILocation(line: 727, column: 7, scope: !313)
!807 = !DILocation(line: 730, column: 3, scope: !313)
!808 = !DILocation(line: 731, column: 1, scope: !313)
!809 = !DILocation(line: 734, column: 25, scope: !318)
!810 = !DILocation(line: 734, column: 37, scope: !318)
!811 = !DILocation(line: 734, column: 56, scope: !318)
!812 = !DILocation(line: 736, column: 12, scope: !813)
!813 = distinct !DILexicalBlock(scope: !318, file: !1, line: 736, column: 7)
!814 = !DILocation(line: 736, column: 18, scope: !813)
!815 = !DILocation(line: 736, column: 36, scope: !813)
!816 = !DILocation(line: 737, column: 24, scope: !813)
!817 = !DILocation(line: 736, column: 22, scope: !813)
!818 = !DILocation(line: 737, column: 35, scope: !813)
!819 = !DILocation(line: 736, column: 7, scope: !318)
!820 = !DILocation(line: 739, column: 3, scope: !318)
!821 = !DILocation(line: 740, column: 1, scope: !318)
!822 = !DILocation(line: 743, column: 23, scope: !323)
!823 = !DILocation(line: 745, column: 47, scope: !323)
!824 = !DILocation(line: 745, column: 25, scope: !323)
!825 = !DILocation(line: 745, column: 10, scope: !323)
!826 = !DILocation(line: 745, column: 3, scope: !323)
!827 = !DILocation(line: 749, column: 23, scope: !326)
!828 = !DILocation(line: 749, column: 42, scope: !326)
!829 = !DILocation(line: 751, column: 32, scope: !326)
!830 = !DILocation(line: 751, column: 43, scope: !326)
!831 = !DILocation(line: 751, column: 10, scope: !326)
!832 = !DILocation(line: 751, column: 3, scope: !326)
!833 = !DILocation(line: 755, column: 23, scope: !330)
!834 = !DILocation(line: 755, column: 33, scope: !330)
!835 = !DILocation(line: 766, column: 3, scope: !330)
!836 = !DILocation(line: 697, column: 24, scope: !334)
!837 = !DILocation(line: 699, column: 33, scope: !334)
!838 = !DILocation(line: 699, column: 10, scope: !334)
!839 = !DILocation(line: 701, column: 1, scope: !334)
!840 = !DILocation(line: 770, column: 25, scope: !337)
!841 = !DILocation(line: 770, column: 44, scope: !337)
!842 = !DILocation(line: 774, column: 14, scope: !843)
!843 = distinct !DILexicalBlock(scope: !337, file: !1, line: 774, column: 7)
!844 = !DILocation(line: 774, column: 53, scope: !843)
!845 = !DILocation(line: 774, column: 7, scope: !843)
!846 = !DILocation(line: 774, column: 64, scope: !843)
!847 = !DILocation(line: 774, column: 7, scope: !337)
!848 = !DILocation(line: 772, column: 15, scope: !337)
!849 = !DILocation(line: 776, column: 20, scope: !337)
!850 = !DILocation(line: 86, column: 44, scope: !291, inlinedAt: !851)
!851 = distinct !DILocation(line: 776, column: 9, scope: !337)
!852 = !DILocation(line: 88, column: 9, scope: !291, inlinedAt: !851)
!853 = !DILocation(line: 61, column: 48, scope: !297, inlinedAt: !854)
!854 = distinct !DILocation(line: 94, column: 12, scope: !745, inlinedAt: !851)
!855 = !DILocation(line: 94, column: 12, scope: !745, inlinedAt: !851)
!856 = !DILocation(line: 65, column: 9, scope: !297, inlinedAt: !854)
!857 = !DILocation(line: 66, column: 9, scope: !297, inlinedAt: !854)
!858 = !DILocation(line: 64, column: 7, scope: !297, inlinedAt: !854)
!859 = !DILocation(line: 68, column: 3, scope: !752, inlinedAt: !854)
!860 = !DILocation(line: 69, column: 15, scope: !754, inlinedAt: !854)
!861 = !DILocation(line: 69, column: 11, scope: !754, inlinedAt: !854)
!862 = !DILocation(line: 69, column: 5, scope: !754, inlinedAt: !854)
!863 = !DILocation(line: 69, column: 10, scope: !754, inlinedAt: !854)
!864 = !DILocation(line: 63, column: 16, scope: !297, inlinedAt: !854)
!865 = !DILocation(line: 71, column: 10, scope: !297, inlinedAt: !854)
!866 = !DILocation(line: 71, column: 3, scope: !297, inlinedAt: !854)
!867 = !DILocation(line: 776, column: 7, scope: !337)
!868 = !DILocation(line: 777, column: 3, scope: !337)
!869 = !DILocation(line: 778, column: 1, scope: !337)
!870 = !DILocation(line: 781, column: 25, scope: !342)
!871 = !DILocation(line: 781, column: 44, scope: !342)
!872 = !DILocation(line: 783, column: 35, scope: !342)
!873 = !DILocation(line: 74, column: 44, scope: !309, inlinedAt: !874)
!874 = distinct !DILocation(line: 783, column: 24, scope: !342)
!875 = !DILocation(line: 76, column: 9, scope: !309, inlinedAt: !874)
!876 = !DILocation(line: 61, column: 48, scope: !297, inlinedAt: !877)
!877 = distinct !DILocation(line: 82, column: 12, scope: !773, inlinedAt: !874)
!878 = !DILocation(line: 82, column: 12, scope: !773, inlinedAt: !874)
!879 = !DILocation(line: 65, column: 9, scope: !297, inlinedAt: !877)
!880 = !DILocation(line: 66, column: 9, scope: !297, inlinedAt: !877)
!881 = !DILocation(line: 64, column: 7, scope: !297, inlinedAt: !877)
!882 = !DILocation(line: 68, column: 3, scope: !752, inlinedAt: !877)
!883 = !DILocation(line: 69, column: 15, scope: !754, inlinedAt: !877)
!884 = !DILocation(line: 69, column: 11, scope: !754, inlinedAt: !877)
!885 = !DILocation(line: 69, column: 5, scope: !754, inlinedAt: !877)
!886 = !DILocation(line: 69, column: 10, scope: !754, inlinedAt: !877)
!887 = !DILocation(line: 63, column: 16, scope: !297, inlinedAt: !877)
!888 = !DILocation(line: 71, column: 10, scope: !297, inlinedAt: !877)
!889 = !DILocation(line: 71, column: 3, scope: !297, inlinedAt: !877)
!890 = !DILocation(line: 783, column: 15, scope: !342)
!891 = !DILocation(line: 786, column: 15, scope: !892)
!892 = distinct !DILexicalBlock(scope: !342, file: !1, line: 786, column: 7)
!893 = !DILocation(line: 786, column: 49, scope: !892)
!894 = !DILocation(line: 786, column: 7, scope: !892)
!895 = !DILocation(line: 786, column: 60, scope: !892)
!896 = !DILocation(line: 788, column: 3, scope: !342)
!897 = !DILocation(line: 789, column: 1, scope: !342)
