; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }

@xdr_opaque.crud = internal global [4 x i8] zeroinitializer, align 1
@xdr_zero = internal global [4 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [27 x i8] c"xdr_string: out of memory\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@xdr_double.LSW = internal unnamed_addr global i32 -1, align 4
@xdrstdio_ops = internal constant %struct.xdr_ops { i32 (%struct.XDR*, i64*)* @xdrstdio_getlong, i32 (%struct.XDR*, i64*)* @xdrstdio_putlong, i32 (%struct.XDR*, i8*, i32)* @xdrstdio_getbytes, i32 (%struct.XDR*, i8*, i32)* @xdrstdio_putbytes, i32 (%struct.XDR*)* @xdrstdio_getpos, i32 (%struct.XDR*, i32)* @xdrstdio_setpos, i32* (%struct.XDR*, i32)* @xdrstdio_inline, void (%struct.XDR*)* @xdrstdio_destroy, i32 (%struct.XDR*, i32*)* @xdrstdio_getint32, i32 (%struct.XDR*, i32*)* @xdrstdio_putint32 }, align 8

; Function Attrs: nounwind optsize uwtable
define void @xdr_free(i32 (%struct.XDR*, i8*, ...)* nocapture %proc, i8* %objp) #0 {
entry:
  %x = alloca %struct.XDR, align 8
  call void @llvm.dbg.value(metadata !{i32 (%struct.XDR*, i8*, ...)* %proc}, i64 0, metadata !76), !dbg !343
  call void @llvm.dbg.value(metadata !{i8* %objp}, i64 0, metadata !77), !dbg !343
  %0 = bitcast %struct.XDR* %x to i8*, !dbg !344
  call void @llvm.lifetime.start(i64 48, i8* %0) #2, !dbg !344
  call void @llvm.dbg.declare(metadata !{%struct.XDR* %x}, metadata !78), !dbg !344
  %x_op = getelementptr inbounds %struct.XDR* %x, i64 0, i32 0, !dbg !345
  store i32 2, i32* %x_op, align 8, !dbg !345, !tbaa !346
  %call = call i32 (%struct.XDR*, i8*, ...)* %proc(%struct.XDR* %x, i8* %objp) #6, !dbg !349
  call void @llvm.lifetime.end(i64 48, i8* %0) #2, !dbg !350
  ret void, !dbg !350
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize readnone uwtable
define i32 @xdr_void() #3 {
entry:
  ret i32 1, !dbg !351
}

; Function Attrs: nounwind optsize uwtable
define i32 @xdr_int(%struct.XDR* %xdrs, i32* nocapture %ip) #0 {
entry:
  %l = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !87), !dbg !352
  call void @llvm.dbg.value(metadata !{i32* %ip}, i64 0, metadata !88), !dbg !352
  call void @llvm.dbg.declare(metadata !{i64* %l}, metadata !89), !dbg !353
  %x_op = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !354
  %0 = load i32* %x_op, align 4, !dbg !354, !tbaa !346
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %return
  ], !dbg !354

sw.bb:                                            ; preds = %entry
  %1 = load i32* %ip, align 4, !dbg !355, !tbaa !357
  %conv = sext i32 %1 to i64, !dbg !355
  call void @llvm.dbg.value(metadata !{i64 %conv}, i64 0, metadata !89), !dbg !355
  store i64 %conv, i64* %l, align 8, !dbg !355, !tbaa !358
  %x_ops = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !359
  %2 = load %struct.xdr_ops** %x_ops, align 8, !dbg !359, !tbaa !360
  %x_putlong = getelementptr inbounds %struct.xdr_ops* %2, i64 0, i32 1, !dbg !359
  %3 = load i32 (%struct.XDR*, i64*)** %x_putlong, align 8, !dbg !359, !tbaa !360
  %call = call i32 %3(%struct.XDR* %xdrs, i64* %l) #6, !dbg !359
  br label %return, !dbg !359

sw.bb1:                                           ; preds = %entry
  %x_ops2 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !361
  %4 = load %struct.xdr_ops** %x_ops2, align 8, !dbg !361, !tbaa !360
  %x_getlong = getelementptr inbounds %struct.xdr_ops* %4, i64 0, i32 0, !dbg !361
  %5 = load i32 (%struct.XDR*, i64*)** %x_getlong, align 8, !dbg !361, !tbaa !360
  %call3 = call i32 %5(%struct.XDR* %xdrs, i64* %l) #6, !dbg !361
  %tobool = icmp eq i32 %call3, 0, !dbg !361
  br i1 %tobool, label %return, label %if.end, !dbg !361

if.end:                                           ; preds = %sw.bb1
  call void @llvm.dbg.value(metadata !{i64* %l}, i64 0, metadata !89), !dbg !362
  %6 = load i64* %l, align 8, !dbg !362, !tbaa !358
  %conv4 = trunc i64 %6 to i32, !dbg !362
  store i32 %conv4, i32* %ip, align 4, !dbg !362, !tbaa !357
  br label %return, !dbg !362

sw.epilog:                                        ; preds = %entry
  br label %return, !dbg !363

return:                                           ; preds = %if.end, %entry, %sw.bb1, %sw.epilog, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call, %sw.bb ], [ 0, %sw.bb1 ], [ 1, %entry ], [ 1, %if.end ]
  ret i32 %retval.0, !dbg !364
}

; Function Attrs: nounwind optsize uwtable
define i32 @xdr_u_int(%struct.XDR* %xdrs, i32* nocapture %up) #0 {
entry:
  %l = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !95), !dbg !365
  call void @llvm.dbg.value(metadata !{i32* %up}, i64 0, metadata !96), !dbg !365
  call void @llvm.dbg.declare(metadata !{i64* %l}, metadata !97), !dbg !366
  %x_op = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !367
  %0 = load i32* %x_op, align 4, !dbg !367, !tbaa !346
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
  ], !dbg !367

sw.bb:                                            ; preds = %entry
  %1 = load i32* %up, align 4, !dbg !368, !tbaa !357
  %conv = zext i32 %1 to i64, !dbg !368
  call void @llvm.dbg.value(metadata !{i64 %conv}, i64 0, metadata !97), !dbg !368
  store i64 %conv, i64* %l, align 8, !dbg !368, !tbaa !358
  %x_ops = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !370
  %2 = load %struct.xdr_ops** %x_ops, align 8, !dbg !370, !tbaa !360
  %x_putlong = getelementptr inbounds %struct.xdr_ops* %2, i64 0, i32 1, !dbg !370
  %3 = load i32 (%struct.XDR*, i64*)** %x_putlong, align 8, !dbg !370, !tbaa !360
  %call = call i32 %3(%struct.XDR* %xdrs, i64* %l) #6, !dbg !370
  br label %sw.epilog, !dbg !370

sw.bb1:                                           ; preds = %entry
  %x_ops2 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !371
  %4 = load %struct.xdr_ops** %x_ops2, align 8, !dbg !371, !tbaa !360
  %x_getlong = getelementptr inbounds %struct.xdr_ops* %4, i64 0, i32 0, !dbg !371
  %5 = load i32 (%struct.XDR*, i64*)** %x_getlong, align 8, !dbg !371, !tbaa !360
  %call3 = call i32 %5(%struct.XDR* %xdrs, i64* %l) #6, !dbg !371
  %tobool = icmp eq i32 %call3, 0, !dbg !371
  br i1 %tobool, label %sw.epilog, label %if.end, !dbg !371

if.end:                                           ; preds = %sw.bb1
  call void @llvm.dbg.value(metadata !{i64* %l}, i64 0, metadata !97), !dbg !372
  %6 = load i64* %l, align 8, !dbg !372, !tbaa !358
  %conv4 = trunc i64 %6 to i32, !dbg !372
  store i32 %conv4, i32* %up, align 4, !dbg !372, !tbaa !357
  br label %sw.bb5, !dbg !372

sw.bb5:                                           ; preds = %entry, %if.end
  br label %sw.epilog, !dbg !373

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %sw.bb5, %entry
  %retval.0 = phi i32 [ undef, %entry ], [ 1, %sw.bb5 ], [ %call, %sw.bb ], [ 0, %sw.bb1 ]
  ret i32 %retval.0, !dbg !374
}

; Function Attrs: nounwind optsize uwtable
define i32 @xdr_long(%struct.XDR* %xdrs, i64* %lp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !101), !dbg !375
  tail call void @llvm.dbg.value(metadata !{i64* %lp}, i64 0, metadata !102), !dbg !375
  %x_op = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !376
  %0 = load i32* %x_op, align 4, !dbg !376, !tbaa !346
  switch i32 %0, label %if.end15 [
    i32 0, label %land.lhs.true
    i32 1, label %if.then7
    i32 2, label %return
  ], !dbg !376

land.lhs.true:                                    ; preds = %entry
  %1 = load i64* %lp, align 8, !dbg !376, !tbaa !358
  %sext = shl i64 %1, 32, !dbg !376
  %conv1 = ashr exact i64 %sext, 32, !dbg !376
  %cmp2 = icmp eq i64 %conv1, %1, !dbg !376
  br i1 %cmp2, label %if.then, label %if.end15, !dbg !376

if.then:                                          ; preds = %land.lhs.true
  %x_ops = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !377
  %2 = load %struct.xdr_ops** %x_ops, align 8, !dbg !377, !tbaa !360
  %x_putlong = getelementptr inbounds %struct.xdr_ops* %2, i64 0, i32 1, !dbg !377
  %3 = load i32 (%struct.XDR*, i64*)** %x_putlong, align 8, !dbg !377, !tbaa !360
  %call = tail call i32 %3(%struct.XDR* %xdrs, i64* %lp) #6, !dbg !377
  br label %return, !dbg !377

if.then7:                                         ; preds = %entry
  %x_ops8 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !378
  %4 = load %struct.xdr_ops** %x_ops8, align 8, !dbg !378, !tbaa !360
  %x_getlong = getelementptr inbounds %struct.xdr_ops* %4, i64 0, i32 0, !dbg !378
  %5 = load i32 (%struct.XDR*, i64*)** %x_getlong, align 8, !dbg !378, !tbaa !360
  %call9 = tail call i32 %5(%struct.XDR* %xdrs, i64* %lp) #6, !dbg !378
  br label %return, !dbg !378

if.end15:                                         ; preds = %entry, %land.lhs.true
  br label %return, !dbg !379

return:                                           ; preds = %entry, %if.end15, %if.then7, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call9, %if.then7 ], [ 0, %if.end15 ], [ 1, %entry ]
  ret i32 %retval.0, !dbg !380
}

; Function Attrs: nounwind optsize uwtable
define i32 @xdr_u_long(%struct.XDR* %xdrs, i64* %ulp) #0 {
entry:
  %tmp = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !108), !dbg !381
  call void @llvm.dbg.value(metadata !{i64* %ulp}, i64 0, metadata !109), !dbg !381
  %x_op = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !382
  %0 = load i32* %x_op, align 4, !dbg !382, !tbaa !346
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
    i32 2, label %return
  ], !dbg !382

sw.bb:                                            ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i64* %tmp}, metadata !110), !dbg !383
  %x_ops = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !384
  %1 = load %struct.xdr_ops** %x_ops, align 8, !dbg !384, !tbaa !360
  %x_getlong = getelementptr inbounds %struct.xdr_ops* %1, i64 0, i32 0, !dbg !384
  %2 = load i32 (%struct.XDR*, i64*)** %x_getlong, align 8, !dbg !384, !tbaa !360
  %call = call i32 %2(%struct.XDR* %xdrs, i64* %tmp) #6, !dbg !384
  %cmp = icmp eq i32 %call, 0, !dbg !384
  br i1 %cmp, label %return, label %if.end, !dbg !384

if.end:                                           ; preds = %sw.bb
  call void @llvm.dbg.value(metadata !{i64* %tmp}, i64 0, metadata !110), !dbg !385
  %3 = load i64* %tmp, align 8, !dbg !385, !tbaa !358
  %conv1 = and i64 %3, 4294967295, !dbg !385
  store i64 %conv1, i64* %ulp, align 8, !dbg !385, !tbaa !358
  br label %return, !dbg !386

sw.bb2:                                           ; preds = %entry
  %4 = load i64* %ulp, align 8, !dbg !387, !tbaa !358
  %conv4 = and i64 %4, 4294967295, !dbg !387
  %cmp5 = icmp eq i64 %conv4, %4, !dbg !387
  br i1 %cmp5, label %if.end8, label %return, !dbg !387

if.end8:                                          ; preds = %sw.bb2
  %x_ops9 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !388
  %5 = load %struct.xdr_ops** %x_ops9, align 8, !dbg !388, !tbaa !360
  %x_putlong = getelementptr inbounds %struct.xdr_ops* %5, i64 0, i32 1, !dbg !388
  %6 = load i32 (%struct.XDR*, i64*)** %x_putlong, align 8, !dbg !388, !tbaa !360
  %call10 = call i32 %6(%struct.XDR* %xdrs, i64* %ulp) #6, !dbg !388
  br label %return, !dbg !388

sw.epilog:                                        ; preds = %entry
  br label %return, !dbg !389

return:                                           ; preds = %entry, %sw.bb2, %sw.bb, %sw.epilog, %if.end8, %if.end
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call10, %if.end8 ], [ 1, %if.end ], [ 0, %sw.bb ], [ 0, %sw.bb2 ], [ 1, %entry ]
  ret i32 %retval.0, !dbg !390
}

; Function Attrs: nounwind optsize uwtable
define i32 @xdr_short(%struct.XDR* %xdrs, i16* nocapture %sp) #0 {
entry:
  %l = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !119), !dbg !391
  call void @llvm.dbg.value(metadata !{i16* %sp}, i64 0, metadata !120), !dbg !391
  call void @llvm.dbg.declare(metadata !{i64* %l}, metadata !121), !dbg !392
  %x_op = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !393
  %0 = load i32* %x_op, align 4, !dbg !393, !tbaa !346
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %return
  ], !dbg !393

sw.bb:                                            ; preds = %entry
  %1 = load i16* %sp, align 2, !dbg !394, !tbaa !396
  %conv = sext i16 %1 to i64, !dbg !394
  call void @llvm.dbg.value(metadata !{i64 %conv}, i64 0, metadata !121), !dbg !394
  store i64 %conv, i64* %l, align 8, !dbg !394, !tbaa !358
  %x_ops = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !397
  %2 = load %struct.xdr_ops** %x_ops, align 8, !dbg !397, !tbaa !360
  %x_putlong = getelementptr inbounds %struct.xdr_ops* %2, i64 0, i32 1, !dbg !397
  %3 = load i32 (%struct.XDR*, i64*)** %x_putlong, align 8, !dbg !397, !tbaa !360
  %call = call i32 %3(%struct.XDR* %xdrs, i64* %l) #6, !dbg !397
  br label %return, !dbg !397

sw.bb1:                                           ; preds = %entry
  %x_ops2 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !398
  %4 = load %struct.xdr_ops** %x_ops2, align 8, !dbg !398, !tbaa !360
  %x_getlong = getelementptr inbounds %struct.xdr_ops* %4, i64 0, i32 0, !dbg !398
  %5 = load i32 (%struct.XDR*, i64*)** %x_getlong, align 8, !dbg !398, !tbaa !360
  %call3 = call i32 %5(%struct.XDR* %xdrs, i64* %l) #6, !dbg !398
  %tobool = icmp eq i32 %call3, 0, !dbg !398
  br i1 %tobool, label %return, label %if.end, !dbg !398

if.end:                                           ; preds = %sw.bb1
  call void @llvm.dbg.value(metadata !{i64* %l}, i64 0, metadata !121), !dbg !399
  %6 = load i64* %l, align 8, !dbg !399, !tbaa !358
  %conv4 = trunc i64 %6 to i16, !dbg !399
  store i16 %conv4, i16* %sp, align 2, !dbg !399, !tbaa !396
  br label %return, !dbg !400

sw.epilog:                                        ; preds = %entry
  br label %return, !dbg !401

return:                                           ; preds = %entry, %sw.bb1, %sw.epilog, %if.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %if.end ], [ %call, %sw.bb ], [ 0, %sw.bb1 ], [ 1, %entry ]
  ret i32 %retval.0, !dbg !402
}

; Function Attrs: nounwind optsize uwtable
define i32 @xdr_u_short(%struct.XDR* %xdrs, i16* nocapture %usp) #0 {
entry:
  %l = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !128), !dbg !403
  call void @llvm.dbg.value(metadata !{i16* %usp}, i64 0, metadata !129), !dbg !403
  call void @llvm.dbg.declare(metadata !{i64* %l}, metadata !130), !dbg !404
  %x_op = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !405
  %0 = load i32* %x_op, align 4, !dbg !405, !tbaa !346
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %return
  ], !dbg !405

sw.bb:                                            ; preds = %entry
  %1 = load i16* %usp, align 2, !dbg !406, !tbaa !396
  %conv = zext i16 %1 to i64, !dbg !406
  call void @llvm.dbg.value(metadata !{i64 %conv}, i64 0, metadata !130), !dbg !406
  store i64 %conv, i64* %l, align 8, !dbg !406, !tbaa !358
  %x_ops = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !408
  %2 = load %struct.xdr_ops** %x_ops, align 8, !dbg !408, !tbaa !360
  %x_putlong = getelementptr inbounds %struct.xdr_ops* %2, i64 0, i32 1, !dbg !408
  %3 = load i32 (%struct.XDR*, i64*)** %x_putlong, align 8, !dbg !408, !tbaa !360
  %call = call i32 %3(%struct.XDR* %xdrs, i64* %l) #6, !dbg !408
  br label %return, !dbg !408

sw.bb1:                                           ; preds = %entry
  %x_ops2 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !409
  %4 = load %struct.xdr_ops** %x_ops2, align 8, !dbg !409, !tbaa !360
  %x_getlong = getelementptr inbounds %struct.xdr_ops* %4, i64 0, i32 0, !dbg !409
  %5 = load i32 (%struct.XDR*, i64*)** %x_getlong, align 8, !dbg !409, !tbaa !360
  %call3 = call i32 %5(%struct.XDR* %xdrs, i64* %l) #6, !dbg !409
  %tobool = icmp eq i32 %call3, 0, !dbg !409
  br i1 %tobool, label %return, label %if.end, !dbg !409

if.end:                                           ; preds = %sw.bb1
  call void @llvm.dbg.value(metadata !{i64* %l}, i64 0, metadata !130), !dbg !410
  %6 = load i64* %l, align 8, !dbg !410, !tbaa !358
  %conv4 = trunc i64 %6 to i16, !dbg !410
  store i16 %conv4, i16* %usp, align 2, !dbg !410, !tbaa !396
  br label %return, !dbg !411

sw.epilog:                                        ; preds = %entry
  br label %return, !dbg !412

return:                                           ; preds = %entry, %sw.bb1, %sw.epilog, %if.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %if.end ], [ %call, %sw.bb ], [ 0, %sw.bb1 ], [ 1, %entry ]
  ret i32 %retval.0, !dbg !413
}

; Function Attrs: nounwind optsize uwtable
define i32 @xdr_char(%struct.XDR* %xdrs, i8* nocapture %cp) #0 {
entry:
  %i = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !135), !dbg !414
  call void @llvm.dbg.value(metadata !{i8* %cp}, i64 0, metadata !136), !dbg !414
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !137), !dbg !415
  %0 = load i8* %cp, align 1, !dbg !416, !tbaa !347
  %conv = sext i8 %0 to i32, !dbg !416
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !137), !dbg !416
  store i32 %conv, i32* %i, align 4, !dbg !416, !tbaa !357
  %call = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %i) #7, !dbg !417
  %tobool = icmp eq i32 %call, 0, !dbg !417
  br i1 %tobool, label %return, label %if.end, !dbg !417

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32* %i}, i64 0, metadata !137), !dbg !418
  %1 = load i32* %i, align 4, !dbg !418, !tbaa !357
  %conv1 = trunc i32 %1 to i8, !dbg !418
  store i8 %conv1, i8* %cp, align 1, !dbg !418, !tbaa !347
  br label %return, !dbg !419

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !419
}

; Function Attrs: nounwind optsize uwtable
define i32 @xdr_u_char(%struct.XDR* %xdrs, i8* nocapture %cp) #0 {
entry:
  %u = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !144), !dbg !420
  call void @llvm.dbg.value(metadata !{i8* %cp}, i64 0, metadata !145), !dbg !420
  call void @llvm.dbg.declare(metadata !{i32* %u}, metadata !146), !dbg !421
  %0 = load i8* %cp, align 1, !dbg !422, !tbaa !347
  %conv = zext i8 %0 to i32, !dbg !422
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !146), !dbg !422
  store i32 %conv, i32* %u, align 4, !dbg !422, !tbaa !357
  %call = call i32 @xdr_u_int(%struct.XDR* %xdrs, i32* %u) #7, !dbg !423
  %tobool = icmp eq i32 %call, 0, !dbg !423
  br i1 %tobool, label %return, label %if.end, !dbg !423

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32* %u}, i64 0, metadata !146), !dbg !424
  %1 = load i32* %u, align 4, !dbg !424, !tbaa !357
  %conv1 = trunc i32 %1 to i8, !dbg !424
  store i8 %conv1, i8* %cp, align 1, !dbg !424, !tbaa !347
  br label %return, !dbg !425

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !425
}

; Function Attrs: nounwind optsize uwtable
define i32 @xdr_bool(%struct.XDR* %xdrs, i32* nocapture %bp) #0 {
entry:
  %lb = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !149), !dbg !426
  call void @llvm.dbg.value(metadata !{i32* %bp}, i64 0, metadata !150), !dbg !426
  call void @llvm.dbg.declare(metadata !{i64* %lb}, metadata !151), !dbg !427
  %x_op = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !428
  %0 = load i32* %x_op, align 4, !dbg !428, !tbaa !346
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %return
  ], !dbg !428

sw.bb:                                            ; preds = %entry
  %1 = load i32* %bp, align 4, !dbg !429, !tbaa !357
  %tobool = icmp ne i32 %1, 0, !dbg !429
  %cond = zext i1 %tobool to i64, !dbg !429
  call void @llvm.dbg.value(metadata !{i64 %cond}, i64 0, metadata !151), !dbg !429
  store i64 %cond, i64* %lb, align 8, !dbg !429, !tbaa !358
  %x_ops = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !431
  %2 = load %struct.xdr_ops** %x_ops, align 8, !dbg !431, !tbaa !360
  %x_putlong = getelementptr inbounds %struct.xdr_ops* %2, i64 0, i32 1, !dbg !431
  %3 = load i32 (%struct.XDR*, i64*)** %x_putlong, align 8, !dbg !431, !tbaa !360
  %call = call i32 %3(%struct.XDR* %xdrs, i64* %lb) #6, !dbg !431
  br label %return, !dbg !431

sw.bb1:                                           ; preds = %entry
  %x_ops2 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !432
  %4 = load %struct.xdr_ops** %x_ops2, align 8, !dbg !432, !tbaa !360
  %x_getlong = getelementptr inbounds %struct.xdr_ops* %4, i64 0, i32 0, !dbg !432
  %5 = load i32 (%struct.XDR*, i64*)** %x_getlong, align 8, !dbg !432, !tbaa !360
  %call3 = call i32 %5(%struct.XDR* %xdrs, i64* %lb) #6, !dbg !432
  %tobool4 = icmp eq i32 %call3, 0, !dbg !432
  br i1 %tobool4, label %return, label %if.end, !dbg !432

if.end:                                           ; preds = %sw.bb1
  call void @llvm.dbg.value(metadata !{i64* %lb}, i64 0, metadata !151), !dbg !433
  %6 = load i64* %lb, align 8, !dbg !433, !tbaa !358
  %not.cmp = icmp ne i64 %6, 0, !dbg !433
  %cond5 = zext i1 %not.cmp to i32, !dbg !433
  store i32 %cond5, i32* %bp, align 4, !dbg !433, !tbaa !357
  br label %return, !dbg !434

sw.epilog:                                        ; preds = %entry
  br label %return, !dbg !435

return:                                           ; preds = %entry, %sw.bb1, %sw.epilog, %if.end, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %if.end ], [ %call, %sw.bb ], [ 0, %sw.bb1 ], [ 1, %entry ]
  ret i32 %retval.0, !dbg !436
}

; Function Attrs: nounwind optsize uwtable
define i32 @xdr_opaque(%struct.XDR* %xdrs, i8* %cp, i32 %cnt) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !154), !dbg !437
  tail call void @llvm.dbg.value(metadata !{i8* %cp}, i64 0, metadata !155), !dbg !437
  tail call void @llvm.dbg.value(metadata !{i32 %cnt}, i64 0, metadata !156), !dbg !437
  %cmp = icmp eq i32 %cnt, 0, !dbg !438
  br i1 %cmp, label %return, label %if.end, !dbg !438

if.end:                                           ; preds = %entry
  %rem = and i32 %cnt, 3, !dbg !439
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !157), !dbg !439
  %cmp1 = icmp eq i32 %rem, 0, !dbg !440
  %sub = sub i32 4, %rem, !dbg !441
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !157), !dbg !441
  %rem.sub = select i1 %cmp1, i32 0, i32 %sub, !dbg !440
  %x_op = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !442
  %0 = load i32* %x_op, align 4, !dbg !442, !tbaa !346
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb12
    i32 2, label %return
  ], !dbg !442

sw.bb:                                            ; preds = %if.end
  %x_ops = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !443
  %1 = load %struct.xdr_ops** %x_ops, align 8, !dbg !443, !tbaa !360
  %x_getbytes = getelementptr inbounds %struct.xdr_ops* %1, i64 0, i32 2, !dbg !443
  %2 = load i32 (%struct.XDR*, i8*, i32)** %x_getbytes, align 8, !dbg !443, !tbaa !360
  %call = tail call i32 %2(%struct.XDR* %xdrs, i8* %cp, i32 %cnt) #6, !dbg !443
  %tobool = icmp eq i32 %call, 0, !dbg !443
  br i1 %tobool, label %return, label %if.end5, !dbg !443

if.end5:                                          ; preds = %sw.bb
  %cmp6 = icmp eq i32 %rem.sub, 0, !dbg !445
  br i1 %cmp6, label %return, label %if.end8, !dbg !445

if.end8:                                          ; preds = %if.end5
  %3 = load %struct.xdr_ops** %x_ops, align 8, !dbg !446, !tbaa !360
  %x_getbytes10 = getelementptr inbounds %struct.xdr_ops* %3, i64 0, i32 2, !dbg !446
  %4 = load i32 (%struct.XDR*, i8*, i32)** %x_getbytes10, align 8, !dbg !446, !tbaa !360
  %call11 = tail call i32 %4(%struct.XDR* %xdrs, i8* getelementptr inbounds ([4 x i8]* @xdr_opaque.crud, i64 0, i64 0), i32 %rem.sub) #6, !dbg !446
  br label %return, !dbg !446

sw.bb12:                                          ; preds = %if.end
  %x_ops13 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !447
  %5 = load %struct.xdr_ops** %x_ops13, align 8, !dbg !447, !tbaa !360
  %x_putbytes = getelementptr inbounds %struct.xdr_ops* %5, i64 0, i32 3, !dbg !447
  %6 = load i32 (%struct.XDR*, i8*, i32)** %x_putbytes, align 8, !dbg !447, !tbaa !360
  %call14 = tail call i32 %6(%struct.XDR* %xdrs, i8* %cp, i32 %cnt) #6, !dbg !447
  %tobool15 = icmp eq i32 %call14, 0, !dbg !447
  br i1 %tobool15, label %return, label %if.end17, !dbg !447

if.end17:                                         ; preds = %sw.bb12
  %cmp18 = icmp eq i32 %rem.sub, 0, !dbg !448
  br i1 %cmp18, label %return, label %if.end20, !dbg !448

if.end20:                                         ; preds = %if.end17
  %7 = load %struct.xdr_ops** %x_ops13, align 8, !dbg !449, !tbaa !360
  %x_putbytes22 = getelementptr inbounds %struct.xdr_ops* %7, i64 0, i32 3, !dbg !449
  %8 = load i32 (%struct.XDR*, i8*, i32)** %x_putbytes22, align 8, !dbg !449, !tbaa !360
  %call23 = tail call i32 %8(%struct.XDR* %xdrs, i8* getelementptr inbounds ([4 x i8]* @xdr_zero, i64 0, i64 0), i32 %rem.sub) #6, !dbg !449
  br label %return, !dbg !449

sw.epilog:                                        ; preds = %if.end
  br label %return, !dbg !450

return:                                           ; preds = %if.end, %if.end17, %sw.bb12, %if.end5, %sw.bb, %entry, %sw.epilog, %if.end20, %if.end8
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call23, %if.end20 ], [ %call11, %if.end8 ], [ 1, %entry ], [ 0, %sw.bb ], [ 1, %if.end5 ], [ 0, %sw.bb12 ], [ 1, %if.end17 ], [ 1, %if.end ]
  ret i32 %retval.0, !dbg !451
}

; Function Attrs: nounwind optsize uwtable
define i32 @xdr_string(%struct.XDR* %xdrs, i8** nocapture %cpp, i32 %maxsize) #0 {
entry:
  %size = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !163), !dbg !452
  call void @llvm.dbg.value(metadata !{i8** %cpp}, i64 0, metadata !164), !dbg !453
  call void @llvm.dbg.value(metadata !{i32 %maxsize}, i64 0, metadata !165), !dbg !454
  %0 = load i8** %cpp, align 8, !dbg !455, !tbaa !360
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !166), !dbg !455
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !167), !dbg !456
  %x_op = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !457
  %1 = load i32* %x_op, align 4, !dbg !457, !tbaa !346
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb1
  ], !dbg !457

sw.bb:                                            ; preds = %entry
  %cond = icmp eq i8* %0, null, !dbg !458
  br i1 %cond, label %return, label %if.end4, !dbg !458

sw.bb1:                                           ; preds = %entry
  %cmp2 = icmp eq i8* %0, null, !dbg !460
  br i1 %cmp2, label %return, label %if.end4, !dbg !460

if.end4:                                          ; preds = %sw.bb, %sw.bb1
  %call = call i64 @strlen(i8* %0) #8, !dbg !461
  %conv = trunc i64 %call to i32, !dbg !461
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !167), !dbg !461
  store i32 %conv, i32* %size, align 4, !dbg !461, !tbaa !357
  br label %sw.epilog, !dbg !462

sw.epilog:                                        ; preds = %entry, %if.end4
  %call5 = call i32 @xdr_u_int(%struct.XDR* %xdrs, i32* %size) #7, !dbg !463
  %tobool = icmp eq i32 %call5, 0, !dbg !463
  br i1 %tobool, label %return, label %if.end7, !dbg !463

if.end7:                                          ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !167), !dbg !464
  %2 = load i32* %size, align 4, !dbg !464, !tbaa !357
  %cmp8 = icmp ugt i32 %2, %maxsize, !dbg !464
  br i1 %cmp8, label %return, label %if.end11, !dbg !464

if.end11:                                         ; preds = %if.end7
  %add = add i32 %2, 1, !dbg !465
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !168), !dbg !465
  %3 = load i32* %x_op, align 4, !dbg !466, !tbaa !346
  switch i32 %3, label %return [
    i32 1, label %sw.bb13
    i32 0, label %sw.bb29
    i32 2, label %sw.bb31
  ], !dbg !466

sw.bb13:                                          ; preds = %if.end11
  %cmp14 = icmp eq i32 %add, 0, !dbg !467
  br i1 %cmp14, label %return, label %if.end17, !dbg !467

if.end17:                                         ; preds = %sw.bb13
  %cmp18 = icmp eq i8* %0, null, !dbg !469
  br i1 %cmp18, label %if.end23, label %if.end28, !dbg !469

if.end23:                                         ; preds = %if.end17
  %conv21 = zext i32 %add to i64, !dbg !470
  %call22 = call noalias i8* @malloc(i64 %conv21) #6, !dbg !470
  call void @llvm.dbg.value(metadata !{i8* %call22}, i64 0, metadata !166), !dbg !470
  store i8* %call22, i8** %cpp, align 8, !dbg !470, !tbaa !360
  %cmp24 = icmp eq i8* %call22, null, !dbg !471
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !471

if.then26:                                        ; preds = %if.end23
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !472, !tbaa !360
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %4) #2, !dbg !472
  br label %return, !dbg !474

if.end28:                                         ; preds = %if.end17, %if.end23
  %sp.047 = phi i8* [ %call22, %if.end23 ], [ %0, %if.end17 ]
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !167), !dbg !475
  %idxprom = zext i32 %2 to i64, !dbg !475
  %arrayidx = getelementptr inbounds i8* %sp.047, i64 %idxprom, !dbg !475
  store i8 0, i8* %arrayidx, align 1, !dbg !475, !tbaa !347
  br label %sw.bb29, !dbg !475

sw.bb29:                                          ; preds = %if.end11, %if.end28
  %sp.1 = phi i8* [ %0, %if.end11 ], [ %sp.047, %if.end28 ]
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !167), !dbg !476
  %call30 = call i32 @xdr_opaque(%struct.XDR* %xdrs, i8* %sp.1, i32 %2) #7, !dbg !476
  br label %return, !dbg !476

sw.bb31:                                          ; preds = %if.end11
  call void @free(i8* %0) #6, !dbg !477
  store i8* null, i8** %cpp, align 8, !dbg !478, !tbaa !360
  br label %return, !dbg !479

return:                                           ; preds = %sw.bb, %if.end11, %sw.bb13, %if.end7, %sw.epilog, %sw.bb1, %sw.bb31, %sw.bb29, %if.then26
  %retval.0 = phi i32 [ 1, %sw.bb31 ], [ %call30, %sw.bb29 ], [ 0, %if.then26 ], [ 1, %sw.bb ], [ 0, %sw.bb1 ], [ 0, %sw.epilog ], [ 0, %if.end7 ], [ 1, %sw.bb13 ], [ 0, %if.end11 ]
  ret i32 %retval.0, !dbg !480
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #5

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define i32 @xdr_float(%struct.XDR* %xdrs, float* nocapture %fp) #0 {
entry:
  %tmp = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !175), !dbg !481
  call void @llvm.dbg.value(metadata !{float* %fp}, i64 0, metadata !176), !dbg !482
  %x_op = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !483
  %0 = load i32* %x_op, align 4, !dbg !483, !tbaa !346
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %return
  ], !dbg !483

sw.bb:                                            ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i64* %tmp}, metadata !177), !dbg !484
  %1 = bitcast float* %fp to i32*, !dbg !484
  %2 = load i32* %1, align 4, !dbg !484, !tbaa !357
  %conv = sext i32 %2 to i64, !dbg !484
  call void @llvm.dbg.value(metadata !{i64 %conv}, i64 0, metadata !177), !dbg !484
  store i64 %conv, i64* %tmp, align 8, !dbg !484, !tbaa !358
  %x_ops = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !485
  %3 = load %struct.xdr_ops** %x_ops, align 8, !dbg !485, !tbaa !360
  %x_putlong = getelementptr inbounds %struct.xdr_ops* %3, i64 0, i32 1, !dbg !485
  %4 = load i32 (%struct.XDR*, i64*)** %x_putlong, align 8, !dbg !485, !tbaa !360
  %call = call i32 %4(%struct.XDR* %xdrs, i64* %tmp) #6, !dbg !485
  br label %return, !dbg !485

sw.bb1:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i64* %tmp3}, metadata !180), !dbg !486
  %x_ops4 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !487
  %5 = load %struct.xdr_ops** %x_ops4, align 8, !dbg !487, !tbaa !360
  %x_getlong = getelementptr inbounds %struct.xdr_ops* %5, i64 0, i32 0, !dbg !487
  %6 = load i32 (%struct.XDR*, i64*)** %x_getlong, align 8, !dbg !487, !tbaa !360
  %call5 = call i32 %6(%struct.XDR* %xdrs, i64* %tmp3) #6, !dbg !487
  %tobool = icmp eq i32 %call5, 0, !dbg !487
  br i1 %tobool, label %sw.epilog, label %if.then, !dbg !487

if.then:                                          ; preds = %sw.bb1
  call void @llvm.dbg.value(metadata !{i64* %tmp3}, i64 0, metadata !180), !dbg !488
  %7 = load i64* %tmp3, align 8, !dbg !488, !tbaa !358
  %conv6 = trunc i64 %7 to i32, !dbg !488
  %8 = bitcast float* %fp to i32*, !dbg !488
  store i32 %conv6, i32* %8, align 4, !dbg !488, !tbaa !357
  br label %return, !dbg !490

sw.epilog:                                        ; preds = %sw.bb1, %entry
  br label %return, !dbg !491

return:                                           ; preds = %entry, %sw.epilog, %if.then, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %if.then ], [ %call, %sw.bb ], [ 1, %entry ]
  ret i32 %retval.0, !dbg !492
}

; Function Attrs: nounwind optsize uwtable
define i32 @xdr_double(%struct.XDR* %xdrs, double* nocapture %dp) #0 {
entry:
  %tmp = alloca [2 x i64], align 16
  %tmp35 = alloca [2 x i64], align 16
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !188), !dbg !493
  call void @llvm.dbg.value(metadata !{double* %dp}, i64 0, metadata !189), !dbg !494
  %0 = load i32* @xdr_double.LSW, align 4, !dbg !495, !tbaa !357
  %cmp = icmp slt i32 %0, 0, !dbg !495
  br i1 %cmp, label %if.then14, label %if.end17, !dbg !495

if.then14:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata !496, i64 0, metadata !190), !dbg !497
  call void @llvm.dbg.value(metadata !498, i64 0, metadata !192), !dbg !499
  store i32 0, i32* @xdr_double.LSW, align 4, !dbg !500, !tbaa !357
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %entry
  %1 = phi i32 [ 0, %if.then14 ], [ %0, %entry ]
  %x_op = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !501
  %2 = load i32* %x_op, align 4, !dbg !501, !tbaa !346
  switch i32 %2, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb31
    i32 2, label %return
  ], !dbg !501

sw.bb:                                            ; preds = %if.end17
  %3 = bitcast double* %dp to i32*, !dbg !502
  call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !193), !dbg !502
  call void @llvm.dbg.declare(metadata !{[2 x i64]* %tmp}, metadata !196), !dbg !503
  %lnot = icmp eq i32 %1, 0, !dbg !504
  %idxprom = zext i1 %lnot to i64, !dbg !504
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom, !dbg !504
  %4 = load i32* %arrayidx, align 4, !dbg !504, !tbaa !357
  %conv18 = sext i32 %4 to i64, !dbg !504
  %arrayidx19 = getelementptr inbounds [2 x i64]* %tmp, i64 0, i64 0, !dbg !504
  store i64 %conv18, i64* %arrayidx19, align 16, !dbg !504, !tbaa !358
  %idxprom20 = sext i32 %1 to i64, !dbg !505
  %arrayidx21 = getelementptr inbounds i32* %3, i64 %idxprom20, !dbg !505
  %5 = load i32* %arrayidx21, align 4, !dbg !505, !tbaa !357
  %conv22 = sext i32 %5 to i64, !dbg !505
  %arrayidx23 = getelementptr inbounds [2 x i64]* %tmp, i64 0, i64 1, !dbg !505
  store i64 %conv22, i64* %arrayidx23, align 8, !dbg !505, !tbaa !358
  %x_ops = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !506
  %6 = load %struct.xdr_ops** %x_ops, align 8, !dbg !506, !tbaa !360
  %x_putlong = getelementptr inbounds %struct.xdr_ops* %6, i64 0, i32 1, !dbg !506
  %7 = load i32 (%struct.XDR*, i64*)** %x_putlong, align 8, !dbg !506, !tbaa !360
  %call24 = call i32 %7(%struct.XDR* %xdrs, i64* %arrayidx19) #6, !dbg !506
  %tobool25 = icmp eq i32 %call24, 0, !dbg !506
  br i1 %tobool25, label %land.end, label %land.rhs, !dbg !506

land.rhs:                                         ; preds = %sw.bb
  %8 = load %struct.xdr_ops** %x_ops, align 8, !dbg !507, !tbaa !360
  %x_putlong27 = getelementptr inbounds %struct.xdr_ops* %8, i64 0, i32 1, !dbg !507
  %9 = load i32 (%struct.XDR*, i64*)** %x_putlong27, align 8, !dbg !507, !tbaa !360
  %call29 = call i32 %9(%struct.XDR* %xdrs, i64* %arrayidx23) #6, !dbg !507
  %tobool30 = icmp ne i32 %call29, 0, !dbg !507
  br label %land.end

land.end:                                         ; preds = %sw.bb, %land.rhs
  %10 = phi i1 [ false, %sw.bb ], [ %tobool30, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  br label %return

sw.bb31:                                          ; preds = %if.end17
  %11 = bitcast double* %dp to i32*, !dbg !508
  call void @llvm.dbg.value(metadata !{i32* %11}, i64 0, metadata !200), !dbg !508
  call void @llvm.dbg.declare(metadata !{[2 x i64]* %tmp35}, metadata !202), !dbg !509
  %x_ops36 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !510
  %12 = load %struct.xdr_ops** %x_ops36, align 8, !dbg !510, !tbaa !360
  %x_getlong = getelementptr inbounds %struct.xdr_ops* %12, i64 0, i32 0, !dbg !510
  %13 = load i32 (%struct.XDR*, i64*)** %x_getlong, align 8, !dbg !510, !tbaa !360
  %lnot39 = icmp eq i32 %1, 0, !dbg !510
  %idx.ext = zext i1 %lnot39 to i64, !dbg !510
  %add.ptr41 = getelementptr inbounds [2 x i64]* %tmp35, i64 0, i64 %idx.ext, !dbg !510
  %call42 = call i32 %13(%struct.XDR* %xdrs, i64* %add.ptr41) #6, !dbg !510
  %tobool43 = icmp eq i32 %call42, 0, !dbg !510
  br i1 %tobool43, label %sw.epilog, label %land.lhs.true, !dbg !510

land.lhs.true:                                    ; preds = %sw.bb31
  %14 = load %struct.xdr_ops** %x_ops36, align 8, !dbg !511, !tbaa !360
  %x_getlong45 = getelementptr inbounds %struct.xdr_ops* %14, i64 0, i32 0, !dbg !511
  %15 = load i32 (%struct.XDR*, i64*)** %x_getlong45, align 8, !dbg !511, !tbaa !360
  %16 = load i32* @xdr_double.LSW, align 4, !dbg !511, !tbaa !357
  %idx.ext47 = sext i32 %16 to i64, !dbg !511
  %add.ptr48 = getelementptr inbounds [2 x i64]* %tmp35, i64 0, i64 %idx.ext47, !dbg !511
  %call49 = call i32 %15(%struct.XDR* %xdrs, i64* %add.ptr48) #6, !dbg !511
  %tobool50 = icmp eq i32 %call49, 0, !dbg !511
  br i1 %tobool50, label %sw.epilog, label %if.then51, !dbg !511

if.then51:                                        ; preds = %land.lhs.true
  %arrayidx52 = getelementptr inbounds [2 x i64]* %tmp35, i64 0, i64 0, !dbg !512
  %17 = load i64* %arrayidx52, align 16, !dbg !512, !tbaa !358
  %conv53 = trunc i64 %17 to i32, !dbg !512
  store i32 %conv53, i32* %11, align 4, !dbg !512, !tbaa !357
  %arrayidx55 = getelementptr inbounds [2 x i64]* %tmp35, i64 0, i64 1, !dbg !514
  %18 = load i64* %arrayidx55, align 8, !dbg !514, !tbaa !358
  %conv56 = trunc i64 %18 to i32, !dbg !514
  %arrayidx57 = getelementptr inbounds i32* %11, i64 1, !dbg !514
  store i32 %conv56, i32* %arrayidx57, align 4, !dbg !514, !tbaa !357
  br label %return, !dbg !515

sw.epilog:                                        ; preds = %land.lhs.true, %sw.bb31, %if.end17
  br label %return, !dbg !516

return:                                           ; preds = %if.end17, %sw.epilog, %if.then51, %land.end
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 1, %if.then51 ], [ %land.ext, %land.end ], [ 1, %if.end17 ]
  ret i32 %retval.0, !dbg !517
}

; Function Attrs: nounwind optsize uwtable
define i32 @xdr_vector(%struct.XDR* %xdrs, i8* %basep, i32 %nelem, i32 %elemsize, i32 (%struct.XDR*, i8*, ...)* nocapture %xdr_elem) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !207), !dbg !518
  tail call void @llvm.dbg.value(metadata !{i8* %basep}, i64 0, metadata !208), !dbg !519
  tail call void @llvm.dbg.value(metadata !{i32 %nelem}, i64 0, metadata !209), !dbg !520
  tail call void @llvm.dbg.value(metadata !{i32 %elemsize}, i64 0, metadata !210), !dbg !521
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.XDR*, i8*, ...)* %xdr_elem}, i64 0, metadata !211), !dbg !522
  tail call void @llvm.dbg.value(metadata !{i8* %basep}, i64 0, metadata !213), !dbg !523
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !212), !dbg !524
  %cmp3 = icmp eq i32 %nelem, 0, !dbg !524
  br i1 %cmp3, label %return, label %for.body.lr.ph, !dbg !524

for.body.lr.ph:                                   ; preds = %entry
  %idx.ext = zext i32 %elemsize to i64, !dbg !526
  br label %for.body, !dbg !524

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %elptr.05 = phi i8* [ %basep, %for.body.lr.ph ], [ %add.ptr, %if.end ]
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end ]
  %call = tail call i32 (%struct.XDR*, i8*, ...)* %xdr_elem(%struct.XDR* %xdrs, i8* %elptr.05, i32 -1) #6, !dbg !528
  %tobool = icmp eq i32 %call, 0, !dbg !528
  br i1 %tobool, label %return, label %if.end, !dbg !528

if.end:                                           ; preds = %for.body
  %add.ptr = getelementptr inbounds i8* %elptr.05, i64 %idx.ext, !dbg !526
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !213), !dbg !526
  %inc = add i32 %i.04, 1, !dbg !524
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !212), !dbg !524
  %cmp = icmp ult i32 %inc, %nelem, !dbg !524
  br i1 %cmp, label %for.body, label %return, !dbg !524

return:                                           ; preds = %if.end, %for.body, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %for.body ], [ 1, %if.end ]
  ret i32 %retval.0, !dbg !529
}

; Function Attrs: nounwind optsize uwtable
define void @xdrstdio_create(%struct.XDR* nocapture %xdrs, %struct._IO_FILE* %file, i32 %op) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !269), !dbg !530
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %file}, i64 0, metadata !270), !dbg !530
  tail call void @llvm.dbg.value(metadata !{i32 %op}, i64 0, metadata !271), !dbg !530
  %x_op = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 0, !dbg !531
  store i32 %op, i32* %x_op, align 4, !dbg !531, !tbaa !346
  %x_ops = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !532
  store %struct.xdr_ops* @xdrstdio_ops, %struct.xdr_ops** %x_ops, align 8, !dbg !532, !tbaa !360
  %0 = bitcast %struct._IO_FILE* %file to i8*, !dbg !533
  %x_private = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !533
  store i8* %0, i8** %x_private, align 8, !dbg !533, !tbaa !360
  %x_handy = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 5, !dbg !534
  store i32 0, i32* %x_handy, align 4, !dbg !534, !tbaa !357
  %x_base = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 4, !dbg !535
  store i8* null, i8** %x_base, align 8, !dbg !535, !tbaa !360
  ret void, !dbg !536
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @xdrstdio_getlong(%struct.XDR* nocapture %xdrs, i64* nocapture %lp) #0 {
entry:
  %x.addr.i.i = alloca i32, align 4
  %y.i.i = alloca i32, align 4
  %mycopy = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !331), !dbg !537
  call void @llvm.dbg.value(metadata !{i64* %lp}, i64 0, metadata !332), !dbg !537
  call void @llvm.dbg.declare(metadata !{i32* %mycopy}, metadata !333), !dbg !538
  %0 = bitcast i32* %mycopy to i8*, !dbg !539
  %x_private = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !539
  %1 = load i8** %x_private, align 8, !dbg !539, !tbaa !360
  %2 = bitcast i8* %1 to %struct._IO_FILE*, !dbg !539
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %2) #6, !dbg !539
  %cmp = icmp eq i64 %call, 1, !dbg !539
  br i1 %cmp, label %if.end, label %return, !dbg !539

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32* %mycopy}, i64 0, metadata !333), !dbg !540
  %3 = load i32* %mycopy, align 4, !dbg !540, !tbaa !357
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !541) #2, !dbg !542
  call void @llvm.dbg.declare(metadata !543, metadata !299) #2, !dbg !544
  %4 = bitcast i32* %x.addr.i.i to i8*, !dbg !545
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !545
  %5 = bitcast i32* %y.i.i to i8*, !dbg !545
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !545
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !548) #2, !dbg !545
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !548) #2, !dbg !545
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !286), !dbg !545
  store i32 %3, i32* %x.addr.i.i, align 4, !tbaa !357
  call void @llvm.dbg.declare(metadata !{i32* %x.addr.i.i}, metadata !286) #2, !dbg !545
  call void @llvm.dbg.declare(metadata !{i32* %y.i.i}, metadata !287) #2, !dbg !549
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !550) #2, !dbg !551
  call void @llvm.dbg.value(metadata !{i8* %5}, i64 0, metadata !552) #2, !dbg !553
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !554) #2, !dbg !555
  br label %for.body.i.i, !dbg !555

for.body.i.i:                                     ; preds = %for.body.i.i, %if.end
  %indvars.iv.i.i = phi i64 [ 0, %if.end ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  %6 = sub nsw i64 3, %indvars.iv.i.i, !dbg !557
  %arrayidx.i.i = getelementptr inbounds i8* %4, i64 %6, !dbg !557
  %7 = load i8* %arrayidx.i.i, align 1, !dbg !557, !tbaa !347
  %arrayidx2.i.i = getelementptr inbounds i8* %5, i64 %indvars.iv.i.i, !dbg !557
  store i8 %7, i8* %arrayidx2.i.i, align 1, !dbg !557, !tbaa !347
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1, !dbg !555
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.i to i32, !dbg !555
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !555
  br i1 %exitcond, label %xdr_ntohl.exit, label %for.body.i.i, !dbg !555

xdr_ntohl.exit:                                   ; preds = %for.body.i.i
  call void @llvm.dbg.value(metadata !{i32* %y.i.i}, i64 0, metadata !558) #2, !dbg !559
  call void @llvm.dbg.value(metadata !{i32* %y.i.i}, i64 0, metadata !558) #2, !dbg !559
  call void @llvm.dbg.value(metadata !{i32* %y.i.i}, i64 0, metadata !287), !dbg !559
  %8 = load i32* %y.i.i, align 4, !dbg !559, !tbaa !357
  call void @llvm.lifetime.end(i64 4, i8* %4) #2, !dbg !559
  call void @llvm.lifetime.end(i64 4, i8* %5) #2, !dbg !559
  %conv = sext i32 %8 to i64, !dbg !540
  store i64 %conv, i64* %lp, align 8, !dbg !540, !tbaa !358
  br label %return, !dbg !560

return:                                           ; preds = %entry, %xdr_ntohl.exit
  %retval.0 = phi i32 [ 1, %xdr_ntohl.exit ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !560
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @xdrstdio_putlong(%struct.XDR* nocapture %xdrs, i64* nocapture %lp) #0 {
entry:
  %x.addr.i.i = alloca i32, align 4
  %y.i.i = alloca i32, align 4
  %mycopy = alloca i64, align 8
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !326), !dbg !561
  call void @llvm.dbg.value(metadata !{i64* %lp}, i64 0, metadata !327), !dbg !561
  call void @llvm.dbg.declare(metadata !{i64* %mycopy}, metadata !328), !dbg !562
  %0 = load i64* %lp, align 8, !dbg !562, !tbaa !358
  %conv = trunc i64 %0 to i32, !dbg !562
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !563) #2, !dbg !564
  call void @llvm.dbg.declare(metadata !543, metadata !283) #2, !dbg !565
  %1 = bitcast i32* %x.addr.i.i to i8*, !dbg !566
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !566
  %2 = bitcast i32* %y.i.i to i8*, !dbg !566
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !566
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !569) #2, !dbg !566
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !569) #2, !dbg !566
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !286), !dbg !566
  store i32 %conv, i32* %x.addr.i.i, align 4, !tbaa !357
  call void @llvm.dbg.declare(metadata !{i32* %x.addr.i.i}, metadata !286) #2, !dbg !566
  call void @llvm.dbg.declare(metadata !{i32* %y.i.i}, metadata !287) #2, !dbg !570
  call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !571) #2, !dbg !572
  call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !573) #2, !dbg !574
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !575) #2, !dbg !576
  br label %for.body.i.i, !dbg !576

for.body.i.i:                                     ; preds = %for.body.i.i, %entry
  %indvars.iv.i.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  %3 = sub nsw i64 3, %indvars.iv.i.i, !dbg !577
  %arrayidx.i.i = getelementptr inbounds i8* %1, i64 %3, !dbg !577
  %4 = load i8* %arrayidx.i.i, align 1, !dbg !577, !tbaa !347
  %arrayidx2.i.i = getelementptr inbounds i8* %2, i64 %indvars.iv.i.i, !dbg !577
  store i8 %4, i8* %arrayidx2.i.i, align 1, !dbg !577, !tbaa !347
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1, !dbg !576
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.i to i32, !dbg !576
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !576
  br i1 %exitcond, label %xdr_htonl.exit, label %for.body.i.i, !dbg !576

xdr_htonl.exit:                                   ; preds = %for.body.i.i
  call void @llvm.dbg.value(metadata !{i32* %y.i.i}, i64 0, metadata !578) #2, !dbg !579
  call void @llvm.dbg.value(metadata !{i32* %y.i.i}, i64 0, metadata !578) #2, !dbg !579
  call void @llvm.dbg.value(metadata !{i32* %y.i.i}, i64 0, metadata !287), !dbg !579
  %5 = load i32* %y.i.i, align 4, !dbg !579, !tbaa !357
  call void @llvm.lifetime.end(i64 4, i8* %1) #2, !dbg !579
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !579
  %conv1 = zext i32 %5 to i64, !dbg !562
  call void @llvm.dbg.value(metadata !{i64 %conv1}, i64 0, metadata !328), !dbg !562
  store i64 %conv1, i64* %mycopy, align 8, !dbg !562, !tbaa !358
  call void @llvm.dbg.value(metadata !{i64* %mycopy}, i64 0, metadata !327), !dbg !580
  %6 = bitcast i64* %mycopy to i8*, !dbg !581
  %x_private = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !581
  %7 = load i8** %x_private, align 8, !dbg !581, !tbaa !360
  %8 = bitcast i8* %7 to %struct._IO_FILE*, !dbg !581
  %call2 = call i64 @fwrite(i8* %6, i64 4, i64 1, %struct._IO_FILE* %8) #6, !dbg !581
  %cmp = icmp eq i64 %call2, 1, !dbg !581
  %. = zext i1 %cmp to i32, !dbg !582
  ret i32 %., !dbg !582
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @xdrstdio_getbytes(%struct.XDR* nocapture %xdrs, i8* nocapture %addr, i32 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !321), !dbg !583
  tail call void @llvm.dbg.value(metadata !{i8* %addr}, i64 0, metadata !322), !dbg !583
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !323), !dbg !583
  %cmp = icmp eq i32 %len, 0, !dbg !584
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !584

land.lhs.true:                                    ; preds = %entry
  %conv = sext i32 %len to i64, !dbg !584
  %x_private = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !584
  %0 = load i8** %x_private, align 8, !dbg !584, !tbaa !360
  %1 = bitcast i8* %0 to %struct._IO_FILE*, !dbg !584
  %call = tail call i64 @fread(i8* %addr, i64 %conv, i64 1, %struct._IO_FILE* %1) #6, !dbg !584
  %cmp1 = icmp eq i64 %call, 1, !dbg !584
  br i1 %cmp1, label %if.end, label %return, !dbg !584

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return, !dbg !585

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0, !dbg !585
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @xdrstdio_putbytes(%struct.XDR* nocapture %xdrs, i8* nocapture %addr, i32 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !316), !dbg !586
  tail call void @llvm.dbg.value(metadata !{i8* %addr}, i64 0, metadata !317), !dbg !586
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !318), !dbg !586
  %cmp = icmp eq i32 %len, 0, !dbg !587
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !587

land.lhs.true:                                    ; preds = %entry
  %conv = sext i32 %len to i64, !dbg !587
  %x_private = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !587
  %0 = load i8** %x_private, align 8, !dbg !587, !tbaa !360
  %1 = bitcast i8* %0 to %struct._IO_FILE*, !dbg !587
  %call = tail call i64 @fwrite(i8* %addr, i64 %conv, i64 1, %struct._IO_FILE* %1) #6, !dbg !587
  %cmp1 = icmp eq i64 %call, 1, !dbg !587
  br i1 %cmp1, label %if.end, label %return, !dbg !587

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %return, !dbg !588

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0, !dbg !588
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @xdrstdio_getpos(%struct.XDR* nocapture %xdrs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !313), !dbg !589
  %x_private = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !590
  %0 = load i8** %x_private, align 8, !dbg !590, !tbaa !360
  %1 = bitcast i8* %0 to %struct._IO_FILE*, !dbg !590
  %call = tail call i64 @ftell(%struct._IO_FILE* %1) #6, !dbg !590
  %conv = trunc i64 %call to i32, !dbg !590
  ret i32 %conv, !dbg !590
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @xdrstdio_setpos(%struct.XDR* nocapture %xdrs, i32 %pos) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !309), !dbg !591
  tail call void @llvm.dbg.value(metadata !{i32 %pos}, i64 0, metadata !310), !dbg !591
  %x_private = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !592
  %0 = load i8** %x_private, align 8, !dbg !592, !tbaa !360
  %1 = bitcast i8* %0 to %struct._IO_FILE*, !dbg !592
  %conv = zext i32 %pos to i64, !dbg !592
  %call = tail call i32 @fseek(%struct._IO_FILE* %1, i64 %conv, i32 0) #6, !dbg !592
  %call.lobit = lshr i32 %call, 31, !dbg !592
  %call.lobit.not = xor i32 %call.lobit, 1, !dbg !592
  ret i32 %call.lobit.not, !dbg !592
}

; Function Attrs: nounwind optsize readnone uwtable
define internal noalias i32* @xdrstdio_inline(%struct.XDR* nocapture %xdrs, i32 %len) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !305), !dbg !593
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !306), !dbg !593
  ret i32* null, !dbg !594
}

; Function Attrs: nounwind optsize uwtable
define internal void @xdrstdio_destroy(%struct.XDR* nocapture %xdrs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !302), !dbg !595
  %x_private = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !596
  %0 = load i8** %x_private, align 8, !dbg !596, !tbaa !360
  %1 = bitcast i8* %0 to %struct._IO_FILE*, !dbg !596
  %call = tail call i32 @fflush(%struct._IO_FILE* %1) #6, !dbg !596
  ret void, !dbg !597
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @xdrstdio_getint32(%struct.XDR* nocapture %xdrs, i32* nocapture %ip) #0 {
entry:
  %x.addr.i.i = alloca i32, align 4
  %y.i.i = alloca i32, align 4
  %mycopy = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !293), !dbg !598
  call void @llvm.dbg.value(metadata !{i32* %ip}, i64 0, metadata !294), !dbg !598
  call void @llvm.dbg.declare(metadata !{i32* %mycopy}, metadata !295), !dbg !599
  %0 = bitcast i32* %mycopy to i8*, !dbg !600
  %x_private = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !600
  %1 = load i8** %x_private, align 8, !dbg !600, !tbaa !360
  %2 = bitcast i8* %1 to %struct._IO_FILE*, !dbg !600
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %2) #6, !dbg !600
  %cmp = icmp eq i64 %call, 1, !dbg !600
  br i1 %cmp, label %if.end, label %return, !dbg !600

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32* %mycopy}, i64 0, metadata !295), !dbg !601
  %3 = load i32* %mycopy, align 4, !dbg !601, !tbaa !357
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !602) #2, !dbg !603
  call void @llvm.dbg.declare(metadata !543, metadata !299) #2, !dbg !604
  %4 = bitcast i32* %x.addr.i.i to i8*, !dbg !605
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !605
  %5 = bitcast i32* %y.i.i to i8*, !dbg !605
  call void @llvm.lifetime.start(i64 4, i8* %5) #2, !dbg !605
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !607) #2, !dbg !605
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !607) #2, !dbg !605
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !286), !dbg !605
  store i32 %3, i32* %x.addr.i.i, align 4, !tbaa !357
  call void @llvm.dbg.declare(metadata !{i32* %x.addr.i.i}, metadata !286) #2, !dbg !605
  call void @llvm.dbg.declare(metadata !{i32* %y.i.i}, metadata !287) #2, !dbg !608
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !609) #2, !dbg !610
  call void @llvm.dbg.value(metadata !{i8* %5}, i64 0, metadata !611) #2, !dbg !612
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !613) #2, !dbg !614
  br label %for.body.i.i, !dbg !614

for.body.i.i:                                     ; preds = %for.body.i.i, %if.end
  %indvars.iv.i.i = phi i64 [ 0, %if.end ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  %6 = sub nsw i64 3, %indvars.iv.i.i, !dbg !615
  %arrayidx.i.i = getelementptr inbounds i8* %4, i64 %6, !dbg !615
  %7 = load i8* %arrayidx.i.i, align 1, !dbg !615, !tbaa !347
  %arrayidx2.i.i = getelementptr inbounds i8* %5, i64 %indvars.iv.i.i, !dbg !615
  store i8 %7, i8* %arrayidx2.i.i, align 1, !dbg !615, !tbaa !347
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1, !dbg !614
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.i to i32, !dbg !614
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !614
  br i1 %exitcond, label %xdr_ntohl.exit, label %for.body.i.i, !dbg !614

xdr_ntohl.exit:                                   ; preds = %for.body.i.i
  call void @llvm.dbg.value(metadata !{i32* %y.i.i}, i64 0, metadata !616) #2, !dbg !617
  call void @llvm.dbg.value(metadata !{i32* %y.i.i}, i64 0, metadata !616) #2, !dbg !617
  call void @llvm.dbg.value(metadata !{i32* %y.i.i}, i64 0, metadata !287), !dbg !617
  %8 = load i32* %y.i.i, align 4, !dbg !617, !tbaa !357
  call void @llvm.lifetime.end(i64 4, i8* %4) #2, !dbg !617
  call void @llvm.lifetime.end(i64 4, i8* %5) #2, !dbg !617
  store i32 %8, i32* %ip, align 4, !dbg !601, !tbaa !357
  br label %return, !dbg !618

return:                                           ; preds = %entry, %xdr_ntohl.exit
  %retval.0 = phi i32 [ 1, %xdr_ntohl.exit ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !618
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @xdrstdio_putint32(%struct.XDR* nocapture %xdrs, i32* nocapture %ip) #0 {
entry:
  %x.addr.i.i = alloca i32, align 4
  %y.i.i = alloca i32, align 4
  %mycopy = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !274), !dbg !619
  call void @llvm.dbg.value(metadata !{i32* %ip}, i64 0, metadata !275), !dbg !619
  call void @llvm.dbg.declare(metadata !{i32* %mycopy}, metadata !276), !dbg !620
  %0 = load i32* %ip, align 4, !dbg !620, !tbaa !357
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !621) #2, !dbg !622
  call void @llvm.dbg.declare(metadata !543, metadata !283) #2, !dbg !623
  %1 = bitcast i32* %x.addr.i.i to i8*, !dbg !624
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !624
  %2 = bitcast i32* %y.i.i to i8*, !dbg !624
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !624
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !626) #2, !dbg !624
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !626) #2, !dbg !624
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !286), !dbg !624
  store i32 %0, i32* %x.addr.i.i, align 4, !tbaa !357
  call void @llvm.dbg.declare(metadata !{i32* %x.addr.i.i}, metadata !286) #2, !dbg !624
  call void @llvm.dbg.declare(metadata !{i32* %y.i.i}, metadata !287) #2, !dbg !627
  call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !628) #2, !dbg !629
  call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !630) #2, !dbg !631
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !632) #2, !dbg !633
  br label %for.body.i.i, !dbg !633

for.body.i.i:                                     ; preds = %for.body.i.i, %entry
  %indvars.iv.i.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  %3 = sub nsw i64 3, %indvars.iv.i.i, !dbg !634
  %arrayidx.i.i = getelementptr inbounds i8* %1, i64 %3, !dbg !634
  %4 = load i8* %arrayidx.i.i, align 1, !dbg !634, !tbaa !347
  %arrayidx2.i.i = getelementptr inbounds i8* %2, i64 %indvars.iv.i.i, !dbg !634
  store i8 %4, i8* %arrayidx2.i.i, align 1, !dbg !634, !tbaa !347
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1, !dbg !633
  %lftr.wideiv = trunc i64 %indvars.iv.next.i.i to i32, !dbg !633
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !633
  br i1 %exitcond, label %xdr_htonl.exit, label %for.body.i.i, !dbg !633

xdr_htonl.exit:                                   ; preds = %for.body.i.i
  call void @llvm.dbg.value(metadata !{i32* %y.i.i}, i64 0, metadata !635) #2, !dbg !636
  call void @llvm.dbg.value(metadata !{i32* %y.i.i}, i64 0, metadata !635) #2, !dbg !636
  call void @llvm.dbg.value(metadata !{i32* %y.i.i}, i64 0, metadata !287), !dbg !636
  %5 = load i32* %y.i.i, align 4, !dbg !636, !tbaa !357
  call void @llvm.lifetime.end(i64 4, i8* %1) #2, !dbg !636
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !636
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !276), !dbg !620
  store i32 %5, i32* %mycopy, align 4, !dbg !620, !tbaa !357
  call void @llvm.dbg.value(metadata !{i32* %mycopy}, i64 0, metadata !275), !dbg !637
  %6 = bitcast i32* %mycopy to i8*, !dbg !638
  %x_private = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 3, !dbg !638
  %7 = load i8** %x_private, align 8, !dbg !638, !tbaa !360
  %8 = bitcast i8* %7 to %struct._IO_FILE*, !dbg !638
  %call1 = call i64 @fwrite(i8* %6, i64 4, i64 1, %struct._IO_FILE* %8) #6, !dbg !638
  %cmp = icmp eq i64 %call1, 1, !dbg !638
  %. = zext i1 %cmp to i32, !dbg !639
  ret i32 %., !dbg !639
}

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) #5

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !9, metadata !10, metadata !334, metadata !9, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"xdr_op", i32 119, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [xdr_op] [line 119, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8}
!6 = metadata !{i32 786472, metadata !"XDR_ENCODE", i64 0} ; [ DW_TAG_enumerator ] [XDR_ENCODE :: 0]
!7 = metadata !{i32 786472, metadata !"XDR_DECODE", i64 1} ; [ DW_TAG_enumerator ] [XDR_DECODE :: 1]
!8 = metadata !{i32 786472, metadata !"XDR_FREE", i64 2} ; [ DW_TAG_enumerator ] [XDR_FREE :: 2]
!9 = metadata !{i32 0}
!10 = metadata !{metadata !11, metadata !79, metadata !82, metadata !90, metadata !99, metadata !103, metadata !113, metadata !122, metadata !131, metadata !138, metadata !147, metadata !152, metadata !158, metadata !169, metadata !182, metadata !203, metadata !214, metadata !272, metadata !277, metadata !284, metadata !291, metadata !296, metadata !300, metadata !303, metadata !307, metadata !311, metadata !314, metadata !319, metadata !324, metadata !329}
!11 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_free", metadata !"xdr_free", metadata !"", i32 104, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32 (%struct.XDR*, i8*, ...)*, i8*)* @xdr_free, null, null, metadata !75, i32 105} ; [ DW_TAG_subprogram ] [line 104] [def] [scope 105] [xdr_free]
!12 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!13 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{null, metadata !15, metadata !43}
!15 = metadata !{i32 786454, metadata !1, null, metadata !"xdrproc_t", i32 187, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [xdrproc_t] [line 187, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!17 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !19, metadata !21, metadata !74}
!19 = metadata !{i32 786454, metadata !1, null, metadata !"bool_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [bool_t] [line 99, size 0, align 0, offset 0] [from int]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from XDR]
!22 = metadata !{i32 786454, metadata !1, null, metadata !"XDR", i32 144, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [XDR] [line 144, size 0, align 0, offset 0] [from XDR]
!23 = metadata !{i32 786451, metadata !4, null, metadata !"XDR", i32 145, i64 384, i64 64, i32 0, i32 0, null, metadata !24, i32 0, null, null} ; [ DW_TAG_structure_type ] [XDR] [line 145, size 384, align 64, offset 0] [from ]
!24 = metadata !{metadata !25, metadata !26, metadata !70, metadata !71, metadata !72, metadata !73}
!25 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_op", i32 147, i64 32, i64 32, i64 0, i32 0, metadata !3} ; [ DW_TAG_member ] [x_op] [line 147, size 32, align 32, offset 0] [from xdr_op]
!26 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_ops", i32 171, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [x_ops] [line 171, size 64, align 64, offset 64] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from xdr_ops]
!28 = metadata !{i32 786451, metadata !4, null, metadata !"xdr_ops", i32 148, i64 640, i64 64, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_structure_type ] [xdr_ops] [line 148, size 640, align 64, offset 0] [from ]
!29 = metadata !{metadata !30, metadata !38, metadata !39, metadata !46, metadata !47, metadata !51, metadata !55, metadata !61, metadata !65, metadata !69}
!30 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"x_getlong", i32 150, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [x_getlong] [line 150, size 64, align 64, offset 0] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!32 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{metadata !19, metadata !34, metadata !36}
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from XDR]
!35 = metadata !{i32 786454, metadata !4, null, metadata !"XDR", i32 144, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [XDR] [line 144, size 0, align 0, offset 0] [from XDR]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long int]
!37 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!38 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"x_putlong", i32 152, i64 64, i64 64, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [x_putlong] [line 152, size 64, align 64, offset 64] [from ]
!39 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"x_getbytes", i32 154, i64 64, i64 64, i64 128, i32 0, metadata !40} ; [ DW_TAG_member ] [x_getbytes] [line 154, size 64, align 64, offset 128] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!41 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{metadata !19, metadata !34, metadata !43, metadata !45}
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!44 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!45 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!46 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"x_putbytes", i32 156, i64 64, i64 64, i64 192, i32 0, metadata !40} ; [ DW_TAG_member ] [x_putbytes] [line 156, size 64, align 64, offset 192] [from ]
!47 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"x_getpostn", i32 158, i64 64, i64 64, i64 256, i32 0, metadata !48} ; [ DW_TAG_member ] [x_getpostn] [line 158, size 64, align 64, offset 256] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{metadata !45, metadata !34}
!51 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"x_setpostn", i32 160, i64 64, i64 64, i64 320, i32 0, metadata !52} ; [ DW_TAG_member ] [x_setpostn] [line 160, size 64, align 64, offset 320] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{metadata !19, metadata !34, metadata !45}
!55 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"x_inline", i32 162, i64 64, i64 64, i64 384, i32 0, metadata !56} ; [ DW_TAG_member ] [x_inline] [line 162, size 64, align 64, offset 384] [from ]
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!57 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!58 = metadata !{metadata !59, metadata !34, metadata !20}
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from xdr_int32_t]
!60 = metadata !{i32 786454, metadata !4, null, metadata !"xdr_int32_t", i32 106, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [xdr_int32_t] [line 106, size 0, align 0, offset 0] [from int]
!61 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"x_destroy", i32 164, i64 64, i64 64, i64 448, i32 0, metadata !62} ; [ DW_TAG_member ] [x_destroy] [line 164, size 64, align 64, offset 448] [from ]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!63 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!64 = metadata !{null, metadata !34}
!65 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"x_getint32", i32 166, i64 64, i64 64, i64 512, i32 0, metadata !66} ; [ DW_TAG_member ] [x_getint32] [line 166, size 64, align 64, offset 512] [from ]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!67 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!68 = metadata !{metadata !19, metadata !34, metadata !59}
!69 = metadata !{i32 786445, metadata !4, metadata !28, metadata !"x_putint32", i32 168, i64 64, i64 64, i64 576, i32 0, metadata !66} ; [ DW_TAG_member ] [x_putint32] [line 168, size 64, align 64, offset 576] [from ]
!70 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_public", i32 172, i64 64, i64 64, i64 128, i32 0, metadata !43} ; [ DW_TAG_member ] [x_public] [line 172, size 64, align 64, offset 128] [from ]
!71 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_private", i32 173, i64 64, i64 64, i64 192, i32 0, metadata !43} ; [ DW_TAG_member ] [x_private] [line 173, size 64, align 64, offset 192] [from ]
!72 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_base", i32 174, i64 64, i64 64, i64 256, i32 0, metadata !43} ; [ DW_TAG_member ] [x_base] [line 174, size 64, align 64, offset 256] [from ]
!73 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_handy", i32 175, i64 32, i64 32, i64 320, i32 0, metadata !20} ; [ DW_TAG_member ] [x_handy] [line 175, size 32, align 32, offset 320] [from int]
!74 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!75 = metadata !{metadata !76, metadata !77, metadata !78}
!76 = metadata !{i32 786689, metadata !11, metadata !"proc", metadata !12, i32 16777320, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [proc] [line 104]
!77 = metadata !{i32 786689, metadata !11, metadata !"objp", metadata !12, i32 33554536, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [objp] [line 104]
!78 = metadata !{i32 786688, metadata !11, metadata !"x", metadata !12, i32 106, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 106]
!79 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_void", metadata !"xdr_void", metadata !"", i32 116, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @xdr_void, null, null, metadata !9, i32 117} ; [ DW_TAG_subprogram ] [line 116] [def] [scope 117] [xdr_void]
!80 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{metadata !19}
!82 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_int", metadata !"xdr_int", metadata !"", i32 125, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i32*)* @xdr_int, null, null, metadata !86, i32 126} ; [ DW_TAG_subprogram ] [line 125] [def] [scope 126] [xdr_int]
!83 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{metadata !19, metadata !21, metadata !85}
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!86 = metadata !{metadata !87, metadata !88, metadata !89}
!87 = metadata !{i32 786689, metadata !82, metadata !"xdrs", metadata !12, i32 16777341, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 125]
!88 = metadata !{i32 786689, metadata !82, metadata !"ip", metadata !12, i32 33554557, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ip] [line 125]
!89 = metadata !{i32 786688, metadata !82, metadata !"l", metadata !12, i32 127, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 127]
!90 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_u_int", metadata !"xdr_u_int", metadata !"", i32 152, metadata !91, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i32*)* @xdr_u_int, null, null, metadata !94, i32 153} ; [ DW_TAG_subprogram ] [line 152] [def] [scope 153] [xdr_u_int]
!91 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!92 = metadata !{metadata !19, metadata !21, metadata !93}
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned int]
!94 = metadata !{metadata !95, metadata !96, metadata !97}
!95 = metadata !{i32 786689, metadata !90, metadata !"xdrs", metadata !12, i32 16777368, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 152]
!96 = metadata !{i32 786689, metadata !90, metadata !"up", metadata !12, i32 33554584, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [up] [line 152]
!97 = metadata !{i32 786688, metadata !90, metadata !"l", metadata !12, i32 154, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 154]
!98 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!99 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_long", metadata !"xdr_long", metadata !"", i32 180, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i64*)* @xdr_long, null, null, metadata !100, i32 181} ; [ DW_TAG_subprogram ] [line 180] [def] [scope 181] [xdr_long]
!100 = metadata !{metadata !101, metadata !102}
!101 = metadata !{i32 786689, metadata !99, metadata !"xdrs", metadata !12, i32 16777396, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 180]
!102 = metadata !{i32 786689, metadata !99, metadata !"lp", metadata !12, i32 33554612, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lp] [line 180]
!103 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_u_long", metadata !"xdr_u_long", metadata !"", i32 204, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i64*)* @xdr_u_long, null, null, metadata !107, i32 205} ; [ DW_TAG_subprogram ] [line 204] [def] [scope 205] [xdr_u_long]
!104 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{metadata !19, metadata !21, metadata !106}
!106 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long unsigned int]
!107 = metadata !{metadata !108, metadata !109, metadata !110}
!108 = metadata !{i32 786689, metadata !103, metadata !"xdrs", metadata !12, i32 16777420, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 204]
!109 = metadata !{i32 786689, metadata !103, metadata !"ulp", metadata !12, i32 33554636, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ulp] [line 204]
!110 = metadata !{i32 786688, metadata !111, metadata !"tmp", metadata !12, i32 210, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 210]
!111 = metadata !{i32 786443, metadata !1, metadata !112, i32 209, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!112 = metadata !{i32 786443, metadata !1, metadata !103, i32 207, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!113 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_short", metadata !"xdr_short", metadata !"", i32 237, metadata !114, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i16*)* @xdr_short, null, null, metadata !118, i32 238} ; [ DW_TAG_subprogram ] [line 237] [def] [scope 238] [xdr_short]
!114 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!115 = metadata !{metadata !19, metadata !21, metadata !116}
!116 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !117} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!117 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!118 = metadata !{metadata !119, metadata !120, metadata !121}
!119 = metadata !{i32 786689, metadata !113, metadata !"xdrs", metadata !12, i32 16777453, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 237]
!120 = metadata !{i32 786689, metadata !113, metadata !"sp", metadata !12, i32 33554669, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sp] [line 237]
!121 = metadata !{i32 786688, metadata !113, metadata !"l", metadata !12, i32 239, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 239]
!122 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_u_short", metadata !"xdr_u_short", metadata !"", i32 266, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i16*)* @xdr_u_short, null, null, metadata !127, i32 267} ; [ DW_TAG_subprogram ] [line 266] [def] [scope 267] [xdr_u_short]
!123 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!124 = metadata !{metadata !19, metadata !21, metadata !125}
!125 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !126} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!126 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!127 = metadata !{metadata !128, metadata !129, metadata !130}
!128 = metadata !{i32 786689, metadata !122, metadata !"xdrs", metadata !12, i32 16777482, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 266]
!129 = metadata !{i32 786689, metadata !122, metadata !"usp", metadata !12, i32 33554698, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [usp] [line 266]
!130 = metadata !{i32 786688, metadata !122, metadata !"l", metadata !12, i32 268, metadata !98, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 268]
!131 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_char", metadata !"xdr_char", metadata !"", i32 295, metadata !132, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i8*)* @xdr_char, null, null, metadata !134, i32 296} ; [ DW_TAG_subprogram ] [line 295] [def] [scope 296] [xdr_char]
!132 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!133 = metadata !{metadata !19, metadata !21, metadata !43}
!134 = metadata !{metadata !135, metadata !136, metadata !137}
!135 = metadata !{i32 786689, metadata !131, metadata !"xdrs", metadata !12, i32 16777511, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 295]
!136 = metadata !{i32 786689, metadata !131, metadata !"cp", metadata !12, i32 33554727, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 295]
!137 = metadata !{i32 786688, metadata !131, metadata !"i", metadata !12, i32 297, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 297]
!138 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_u_char", metadata !"xdr_u_char", metadata !"", i32 312, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i8*)* @xdr_u_char, null, null, metadata !143, i32 313} ; [ DW_TAG_subprogram ] [line 312] [def] [scope 313] [xdr_u_char]
!139 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{metadata !19, metadata !21, metadata !141}
!141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!142 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!143 = metadata !{metadata !144, metadata !145, metadata !146}
!144 = metadata !{i32 786689, metadata !138, metadata !"xdrs", metadata !12, i32 16777528, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 312]
!145 = metadata !{i32 786689, metadata !138, metadata !"cp", metadata !12, i32 33554744, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 312]
!146 = metadata !{i32 786688, metadata !138, metadata !"u", metadata !12, i32 314, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 314]
!147 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_bool", metadata !"xdr_bool", metadata !"", i32 329, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i32*)* @xdr_bool, null, null, metadata !148, i32 330} ; [ DW_TAG_subprogram ] [line 329] [def] [scope 330] [xdr_bool]
!148 = metadata !{metadata !149, metadata !150, metadata !151}
!149 = metadata !{i32 786689, metadata !147, metadata !"xdrs", metadata !12, i32 16777545, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 329]
!150 = metadata !{i32 786689, metadata !147, metadata !"bp", metadata !12, i32 33554761, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bp] [line 329]
!151 = metadata !{i32 786688, metadata !147, metadata !"lb", metadata !12, i32 333, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lb] [line 333]
!152 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_opaque", metadata !"xdr_opaque", metadata !"", i32 365, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i8*, i32)* @xdr_opaque, null, null, metadata !153, i32 366} ; [ DW_TAG_subprogram ] [line 365] [def] [scope 366] [xdr_opaque]
!153 = metadata !{metadata !154, metadata !155, metadata !156, metadata !157}
!154 = metadata !{i32 786689, metadata !152, metadata !"xdrs", metadata !12, i32 16777581, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 365]
!155 = metadata !{i32 786689, metadata !152, metadata !"cp", metadata !12, i32 33554797, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 365]
!156 = metadata !{i32 786689, metadata !152, metadata !"cnt", metadata !12, i32 50332013, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cnt] [line 365]
!157 = metadata !{i32 786688, metadata !152, metadata !"rndup", metadata !12, i32 367, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rndup] [line 367]
!158 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_string", metadata !"xdr_string", metadata !"", i32 419, metadata !159, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (%struct.XDR*, i8**, i32)* @xdr_string, null, null, metadata !162, i32 423} ; [ DW_TAG_subprogram ] [line 419] [def] [scope 423] [xdr_string]
!159 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !160, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!160 = metadata !{metadata !19, metadata !21, metadata !161, metadata !45}
!161 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!162 = metadata !{metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168}
!163 = metadata !{i32 786689, metadata !158, metadata !"xdrs", metadata !12, i32 16777636, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 420]
!164 = metadata !{i32 786689, metadata !158, metadata !"cpp", metadata !12, i32 33554853, metadata !161, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cpp] [line 421]
!165 = metadata !{i32 786689, metadata !158, metadata !"maxsize", metadata !12, i32 50332070, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxsize] [line 422]
!166 = metadata !{i32 786688, metadata !158, metadata !"sp", metadata !12, i32 424, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sp] [line 424]
!167 = metadata !{i32 786688, metadata !158, metadata !"size", metadata !12, i32 425, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 425]
!168 = metadata !{i32 786688, metadata !158, metadata !"nodesize", metadata !12, i32 426, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodesize] [line 426]
!169 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_float", metadata !"xdr_float", metadata !"", i32 493, metadata !170, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (%struct.XDR*, float*)* @xdr_float, null, null, metadata !174, i32 496} ; [ DW_TAG_subprogram ] [line 493] [def] [scope 496] [xdr_float]
!170 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!171 = metadata !{metadata !19, metadata !21, metadata !172}
!172 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !173} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!173 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!174 = metadata !{metadata !175, metadata !176, metadata !177, metadata !180}
!175 = metadata !{i32 786689, metadata !169, metadata !"xdrs", metadata !12, i32 16777710, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 494]
!176 = metadata !{i32 786689, metadata !169, metadata !"fp", metadata !12, i32 33554927, metadata !172, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 495]
!177 = metadata !{i32 786688, metadata !178, metadata !"tmp", metadata !12, i32 503, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 503]
!178 = metadata !{i32 786443, metadata !1, metadata !179, i32 502, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!179 = metadata !{i32 786443, metadata !1, metadata !169, i32 497, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!180 = metadata !{i32 786688, metadata !181, metadata !"tmp", metadata !12, i32 512, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 512]
!181 = metadata !{i32 786443, metadata !1, metadata !179, i32 511, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!182 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_double", metadata !"xdr_double", metadata !"", i32 528, metadata !183, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (%struct.XDR*, double*)* @xdr_double, null, null, metadata !187, i32 531} ; [ DW_TAG_subprogram ] [line 528] [def] [scope 531] [xdr_double]
!183 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !184, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!184 = metadata !{metadata !19, metadata !21, metadata !185}
!185 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !186} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!186 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!187 = metadata !{metadata !188, metadata !189, metadata !190, metadata !192, metadata !193, metadata !196, metadata !200, metadata !202}
!188 = metadata !{i32 786689, metadata !182, metadata !"xdrs", metadata !12, i32 16777745, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 529]
!189 = metadata !{i32 786689, metadata !182, metadata !"dp", metadata !12, i32 33554962, metadata !185, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dp] [line 530]
!190 = metadata !{i32 786688, metadata !191, metadata !"x", metadata !12, i32 540, metadata !186, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 540]
!191 = metadata !{i32 786443, metadata !1, metadata !182, i32 539, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!192 = metadata !{i32 786688, metadata !191, metadata !"ix", metadata !12, i32 552, metadata !142, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 552]
!193 = metadata !{i32 786688, metadata !194, metadata !"ip", metadata !12, i32 575, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 575]
!194 = metadata !{i32 786443, metadata !1, metadata !195, i32 574, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!195 = metadata !{i32 786443, metadata !1, metadata !182, i32 567, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!196 = metadata !{i32 786688, metadata !194, metadata !"tmp", metadata !12, i32 576, metadata !197, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 576]
!197 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !37, metadata !198, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from long int]
!198 = metadata !{metadata !199}
!199 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!200 = metadata !{i32 786688, metadata !201, metadata !"ip", metadata !12, i32 590, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 590]
!201 = metadata !{i32 786443, metadata !1, metadata !195, i32 589, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!202 = metadata !{i32 786688, metadata !201, metadata !"tmp", metadata !12, i32 591, metadata !197, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 591]
!203 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_vector", metadata !"xdr_vector", metadata !"", i32 621, metadata !204, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (%struct.XDR*, i8*, i32, i32, i32 (%struct.XDR*, i8*, ...)*)* @xdr_vector, null, null, metadata !206, i32 627} ; [ DW_TAG_subprogram ] [line 621] [def] [scope 627] [xdr_vector]
!204 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!205 = metadata !{metadata !19, metadata !21, metadata !43, metadata !45, metadata !45, metadata !15}
!206 = metadata !{metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213}
!207 = metadata !{i32 786689, metadata !203, metadata !"xdrs", metadata !12, i32 16777838, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 622]
!208 = metadata !{i32 786689, metadata !203, metadata !"basep", metadata !12, i32 33555055, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [basep] [line 623]
!209 = metadata !{i32 786689, metadata !203, metadata !"nelem", metadata !12, i32 50332272, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelem] [line 624]
!210 = metadata !{i32 786689, metadata !203, metadata !"elemsize", metadata !12, i32 67109489, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [elemsize] [line 625]
!211 = metadata !{i32 786689, metadata !203, metadata !"xdr_elem", metadata !12, i32 83886706, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdr_elem] [line 626]
!212 = metadata !{i32 786688, metadata !203, metadata !"i", metadata !12, i32 629, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 629]
!213 = metadata !{i32 786688, metadata !203, metadata !"elptr", metadata !12, i32 630, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [elptr] [line 630]
!214 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdrstdio_create", metadata !"xdrstdio_create", metadata !"", i32 681, metadata !215, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.XDR*, %struct._IO_FILE*, i32)* @xdrstdio_create, null, null, metadata !268, i32 682} ; [ DW_TAG_subprogram ] [line 681] [def] [scope 682] [xdrstdio_create]
!215 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !216, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!216 = metadata !{null, metadata !21, metadata !217, metadata !3}
!217 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !218} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!218 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!219 = metadata !{i32 786451, metadata !220, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !221, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!220 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!221 = metadata !{metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !242, metadata !243, metadata !244, metadata !245, metadata !247, metadata !248, metadata !250, metadata !254, metadata !255, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !263, metadata !264}
!222 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!223 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !43} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!224 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !43} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!225 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !43} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!226 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !43} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!227 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !43} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!228 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !43} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!229 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !43} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!230 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !43} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!231 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !43} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!232 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !43} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!233 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !43} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!234 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !235} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!235 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!236 = metadata !{i32 786451, metadata !220, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !237, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!237 = metadata !{metadata !238, metadata !239, metadata !241}
!238 = metadata !{i32 786445, metadata !220, metadata !236, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !235} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!239 = metadata !{i32 786445, metadata !220, metadata !236, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !240} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!240 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !219} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!241 = metadata !{i32 786445, metadata !220, metadata !236, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!242 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !240} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!243 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !20} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!244 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !20} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!245 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !246} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!246 = metadata !{i32 786454, metadata !220, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!247 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !126} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!248 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !249} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!249 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!250 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !251} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!251 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !44, metadata !252, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!252 = metadata !{metadata !253}
!253 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!254 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !74} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!255 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !256} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!256 = metadata !{i32 786454, metadata !220, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!257 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !74} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!258 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !74} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!259 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !74} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!260 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !74} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!261 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !262} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!262 = metadata !{i32 786454, metadata !220, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!263 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !20} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!264 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !265} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!265 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !44, metadata !266, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!266 = metadata !{metadata !267}
!267 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!268 = metadata !{metadata !269, metadata !270, metadata !271}
!269 = metadata !{i32 786689, metadata !214, metadata !"xdrs", metadata !12, i32 16777897, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 681]
!270 = metadata !{i32 786689, metadata !214, metadata !"file", metadata !12, i32 33555113, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 681]
!271 = metadata !{i32 786689, metadata !214, metadata !"op", metadata !12, i32 50332329, metadata !3, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 681]
!272 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdrstdio_putint32", metadata !"xdrstdio_putint32", metadata !"", i32 781, metadata !67, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i32*)* @xdrstdio_putint32, null, null, metadata !273, i32 782} ; [ DW_TAG_subprogram ] [line 781] [local] [def] [scope 782] [xdrstdio_putint32]
!273 = metadata !{metadata !274, metadata !275, metadata !276}
!274 = metadata !{i32 786689, metadata !272, metadata !"xdrs", metadata !12, i32 16777997, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 781]
!275 = metadata !{i32 786689, metadata !272, metadata !"ip", metadata !12, i32 33555213, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ip] [line 781]
!276 = metadata !{i32 786688, metadata !272, metadata !"mycopy", metadata !12, i32 783, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mycopy] [line 783]
!277 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_htonl", metadata !"xdr_htonl", metadata !"", i32 74, metadata !278, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !281, i32 75} ; [ DW_TAG_subprogram ] [line 74] [local] [def] [scope 75] [xdr_htonl]
!278 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !279, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!279 = metadata !{metadata !280, metadata !280}
!280 = metadata !{i32 786454, metadata !1, null, metadata !"xdr_uint32_t", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [xdr_uint32_t] [line 107, size 0, align 0, offset 0] [from unsigned int]
!281 = metadata !{metadata !282, metadata !283}
!282 = metadata !{i32 786689, metadata !277, metadata !"x", metadata !12, i32 16777290, metadata !280, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 74]
!283 = metadata !{i32 786688, metadata !277, metadata !"s", metadata !12, i32 76, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 76]
!284 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_swapbytes", metadata !"xdr_swapbytes", metadata !"", i32 61, metadata !278, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !285, i32 62} ; [ DW_TAG_subprogram ] [line 61] [local] [def] [scope 62] [xdr_swapbytes]
!285 = metadata !{metadata !286, metadata !287, metadata !288, metadata !289, metadata !290}
!286 = metadata !{i32 786689, metadata !284, metadata !"x", metadata !12, i32 16777277, metadata !280, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 61]
!287 = metadata !{i32 786688, metadata !284, metadata !"y", metadata !12, i32 63, metadata !280, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 63]
!288 = metadata !{i32 786688, metadata !284, metadata !"i", metadata !12, i32 64, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 64]
!289 = metadata !{i32 786688, metadata !284, metadata !"px", metadata !12, i32 65, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [px] [line 65]
!290 = metadata !{i32 786688, metadata !284, metadata !"py", metadata !12, i32 66, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [py] [line 66]
!291 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdrstdio_getint32", metadata !"xdrstdio_getint32", metadata !"", i32 770, metadata !67, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i32*)* @xdrstdio_getint32, null, null, metadata !292, i32 771} ; [ DW_TAG_subprogram ] [line 770] [local] [def] [scope 771] [xdrstdio_getint32]
!292 = metadata !{metadata !293, metadata !294, metadata !295}
!293 = metadata !{i32 786689, metadata !291, metadata !"xdrs", metadata !12, i32 16777986, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 770]
!294 = metadata !{i32 786689, metadata !291, metadata !"ip", metadata !12, i32 33555202, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ip] [line 770]
!295 = metadata !{i32 786688, metadata !291, metadata !"mycopy", metadata !12, i32 772, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mycopy] [line 772]
!296 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_ntohl", metadata !"xdr_ntohl", metadata !"", i32 86, metadata !278, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !297, i32 87} ; [ DW_TAG_subprogram ] [line 86] [local] [def] [scope 87] [xdr_ntohl]
!297 = metadata !{metadata !298, metadata !299}
!298 = metadata !{i32 786689, metadata !296, metadata !"x", metadata !12, i32 16777302, metadata !280, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 86]
!299 = metadata !{i32 786688, metadata !296, metadata !"s", metadata !12, i32 88, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 88]
!300 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdrstdio_destroy", metadata !"xdrstdio_destroy", metadata !"", i32 697, metadata !63, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.XDR*)* @xdrstdio_destroy, null, null, metadata !301, i32 698} ; [ DW_TAG_subprogram ] [line 697] [local] [def] [scope 698] [xdrstdio_destroy]
!301 = metadata !{metadata !302}
!302 = metadata !{i32 786689, metadata !300, metadata !"xdrs", metadata !12, i32 16777913, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 697]
!303 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdrstdio_inline", metadata !"xdrstdio_inline", metadata !"", i32 755, metadata !57, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct.XDR*, i32)* @xdrstdio_inline, null, null, metadata !304, i32 756} ; [ DW_TAG_subprogram ] [line 755] [local] [def] [scope 756] [xdrstdio_inline]
!304 = metadata !{metadata !305, metadata !306}
!305 = metadata !{i32 786689, metadata !303, metadata !"xdrs", metadata !12, i32 16777971, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 755]
!306 = metadata !{i32 786689, metadata !303, metadata !"len", metadata !12, i32 33555187, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 755]
!307 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdrstdio_setpos", metadata !"xdrstdio_setpos", metadata !"", i32 749, metadata !53, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i32)* @xdrstdio_setpos, null, null, metadata !308, i32 750} ; [ DW_TAG_subprogram ] [line 749] [local] [def] [scope 750] [xdrstdio_setpos]
!308 = metadata !{metadata !309, metadata !310}
!309 = metadata !{i32 786689, metadata !307, metadata !"xdrs", metadata !12, i32 16777965, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 749]
!310 = metadata !{i32 786689, metadata !307, metadata !"pos", metadata !12, i32 33555181, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pos] [line 749]
!311 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdrstdio_getpos", metadata !"xdrstdio_getpos", metadata !"", i32 743, metadata !49, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*)* @xdrstdio_getpos, null, null, metadata !312, i32 744} ; [ DW_TAG_subprogram ] [line 743] [local] [def] [scope 744] [xdrstdio_getpos]
!312 = metadata !{metadata !313}
!313 = metadata !{i32 786689, metadata !311, metadata !"xdrs", metadata !12, i32 16777959, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 743]
!314 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdrstdio_putbytes", metadata !"xdrstdio_putbytes", metadata !"", i32 734, metadata !41, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i8*, i32)* @xdrstdio_putbytes, null, null, metadata !315, i32 735} ; [ DW_TAG_subprogram ] [line 734] [local] [def] [scope 735] [xdrstdio_putbytes]
!315 = metadata !{metadata !316, metadata !317, metadata !318}
!316 = metadata !{i32 786689, metadata !314, metadata !"xdrs", metadata !12, i32 16777950, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 734]
!317 = metadata !{i32 786689, metadata !314, metadata !"addr", metadata !12, i32 33555166, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addr] [line 734]
!318 = metadata !{i32 786689, metadata !314, metadata !"len", metadata !12, i32 50332382, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 734]
!319 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdrstdio_getbytes", metadata !"xdrstdio_getbytes", metadata !"", i32 725, metadata !41, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i8*, i32)* @xdrstdio_getbytes, null, null, metadata !320, i32 726} ; [ DW_TAG_subprogram ] [line 725] [local] [def] [scope 726] [xdrstdio_getbytes]
!320 = metadata !{metadata !321, metadata !322, metadata !323}
!321 = metadata !{i32 786689, metadata !319, metadata !"xdrs", metadata !12, i32 16777941, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 725]
!322 = metadata !{i32 786689, metadata !319, metadata !"addr", metadata !12, i32 33555157, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addr] [line 725]
!323 = metadata !{i32 786689, metadata !319, metadata !"len", metadata !12, i32 50332373, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 725]
!324 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdrstdio_putlong", metadata !"xdrstdio_putlong", metadata !"", i32 715, metadata !32, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i64*)* @xdrstdio_putlong, null, null, metadata !325, i32 716} ; [ DW_TAG_subprogram ] [line 715] [local] [def] [scope 716] [xdrstdio_putlong]
!325 = metadata !{metadata !326, metadata !327, metadata !328}
!326 = metadata !{i32 786689, metadata !324, metadata !"xdrs", metadata !12, i32 16777931, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 715]
!327 = metadata !{i32 786689, metadata !324, metadata !"lp", metadata !12, i32 33555147, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lp] [line 715]
!328 = metadata !{i32 786688, metadata !324, metadata !"mycopy", metadata !12, i32 717, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mycopy] [line 717]
!329 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdrstdio_getlong", metadata !"xdrstdio_getlong", metadata !"", i32 704, metadata !32, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i64*)* @xdrstdio_getlong, null, null, metadata !330, i32 705} ; [ DW_TAG_subprogram ] [line 704] [local] [def] [scope 705] [xdrstdio_getlong]
!330 = metadata !{metadata !331, metadata !332, metadata !333}
!331 = metadata !{i32 786689, metadata !329, metadata !"xdrs", metadata !12, i32 16777920, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 704]
!332 = metadata !{i32 786689, metadata !329, metadata !"lp", metadata !12, i32 33555136, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lp] [line 704]
!333 = metadata !{i32 786688, metadata !329, metadata !"mycopy", metadata !12, i32 706, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mycopy] [line 706]
!334 = metadata !{metadata !335, metadata !339, metadata !340, metadata !342}
!335 = metadata !{i32 786484, i32 0, metadata !152, metadata !"crud", metadata !"crud", metadata !"", metadata !12, i32 368, metadata !336, i32 1, i32 1, [4 x i8]* @xdr_opaque.crud, null} ; [ DW_TAG_variable ] [crud] [line 368] [local] [def]
!336 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 8, i32 0, i32 0, metadata !44, metadata !337, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from char]
!337 = metadata !{metadata !338}
!338 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!339 = metadata !{i32 786484, i32 0, metadata !182, metadata !"LSW", metadata !"LSW", metadata !"", metadata !12, i32 537, metadata !20, i32 1, i32 1, i32* @xdr_double.LSW, null} ; [ DW_TAG_variable ] [LSW] [line 537] [local] [def]
!340 = metadata !{i32 786484, i32 0, null, metadata !"xdrstdio_ops", metadata !"xdrstdio_ops", metadata !"", metadata !12, i32 661, metadata !341, i32 1, i32 1, %struct.xdr_ops* @xdrstdio_ops, null} ; [ DW_TAG_variable ] [xdrstdio_ops] [line 661] [local] [def]
!341 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from xdr_ops]
!342 = metadata !{i32 786484, i32 0, null, metadata !"xdr_zero", metadata !"xdr_zero", metadata !"", metadata !12, i32 59, metadata !336, i32 1, i32 1, [4 x i8]* @xdr_zero, null} ; [ DW_TAG_variable ] [xdr_zero] [line 59] [local] [def]
!343 = metadata !{i32 104, i32 0, metadata !11, null}
!344 = metadata !{i32 106, i32 0, metadata !11, null}
!345 = metadata !{i32 108, i32 0, metadata !11, null}
!346 = metadata !{metadata !"_ZTS6xdr_op", metadata !347}
!347 = metadata !{metadata !"omnipotent char", metadata !348}
!348 = metadata !{metadata !"Simple C/C++ TBAA"}
!349 = metadata !{i32 109, i32 0, metadata !11, null}
!350 = metadata !{i32 110, i32 0, metadata !11, null}
!351 = metadata !{i32 118, i32 0, metadata !79, null}
!352 = metadata !{i32 125, i32 0, metadata !82, null}
!353 = metadata !{i32 127, i32 0, metadata !82, null}
!354 = metadata !{i32 129, i32 0, metadata !82, null}
!355 = metadata !{i32 132, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !82, i32 130, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!357 = metadata !{metadata !"int", metadata !347}
!358 = metadata !{metadata !"long", metadata !347}
!359 = metadata !{i32 133, i32 0, metadata !356, null}
!360 = metadata !{metadata !"any pointer", metadata !347}
!361 = metadata !{i32 136, i32 0, metadata !356, null}
!362 = metadata !{i32 140, i32 0, metadata !356, null}
!363 = metadata !{i32 144, i32 0, metadata !82, null}
!364 = metadata !{i32 145, i32 0, metadata !82, null}
!365 = metadata !{i32 152, i32 0, metadata !90, null}
!366 = metadata !{i32 154, i32 0, metadata !90, null}
!367 = metadata !{i32 156, i32 0, metadata !90, null}
!368 = metadata !{i32 159, i32 0, metadata !369, null}
!369 = metadata !{i32 786443, metadata !1, metadata !90, i32 157, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!370 = metadata !{i32 160, i32 0, metadata !369, null}
!371 = metadata !{i32 163, i32 0, metadata !369, null}
!372 = metadata !{i32 167, i32 0, metadata !369, null}
!373 = metadata !{i32 169, i32 0, metadata !369, null}
!374 = metadata !{i32 171, i32 0, metadata !90, null}
!375 = metadata !{i32 180, i32 0, metadata !99, null}
!376 = metadata !{i32 183, i32 0, metadata !99, null}
!377 = metadata !{i32 186, i32 0, metadata !99, null}
!378 = metadata !{i32 189, i32 0, metadata !99, null}
!379 = metadata !{i32 194, i32 0, metadata !99, null}
!380 = metadata !{i32 195, i32 0, metadata !99, null}
!381 = metadata !{i32 204, i32 0, metadata !103, null}
!382 = metadata !{i32 206, i32 0, metadata !103, null}
!383 = metadata !{i32 210, i32 0, metadata !111, null}
!384 = metadata !{i32 212, i32 0, metadata !111, null}
!385 = metadata !{i32 215, i32 0, metadata !111, null}
!386 = metadata !{i32 216, i32 0, metadata !111, null}
!387 = metadata !{i32 220, i32 0, metadata !112, null}
!388 = metadata !{i32 224, i32 0, metadata !112, null}
!389 = metadata !{i32 229, i32 0, metadata !103, null}
!390 = metadata !{i32 230, i32 0, metadata !103, null}
!391 = metadata !{i32 237, i32 0, metadata !113, null}
!392 = metadata !{i32 239, i32 0, metadata !113, null}
!393 = metadata !{i32 241, i32 0, metadata !113, null}
!394 = metadata !{i32 244, i32 0, metadata !395, null}
!395 = metadata !{i32 786443, metadata !1, metadata !113, i32 242, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!396 = metadata !{metadata !"short", metadata !347}
!397 = metadata !{i32 245, i32 0, metadata !395, null}
!398 = metadata !{i32 248, i32 0, metadata !395, null}
!399 = metadata !{i32 252, i32 0, metadata !395, null}
!400 = metadata !{i32 253, i32 0, metadata !395, null}
!401 = metadata !{i32 258, i32 0, metadata !113, null}
!402 = metadata !{i32 259, i32 0, metadata !113, null}
!403 = metadata !{i32 266, i32 0, metadata !122, null}
!404 = metadata !{i32 268, i32 0, metadata !122, null}
!405 = metadata !{i32 270, i32 0, metadata !122, null}
!406 = metadata !{i32 273, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !1, metadata !122, i32 271, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!408 = metadata !{i32 274, i32 0, metadata !407, null}
!409 = metadata !{i32 277, i32 0, metadata !407, null}
!410 = metadata !{i32 281, i32 0, metadata !407, null}
!411 = metadata !{i32 282, i32 0, metadata !407, null}
!412 = metadata !{i32 287, i32 0, metadata !122, null}
!413 = metadata !{i32 288, i32 0, metadata !122, null}
!414 = metadata !{i32 295, i32 0, metadata !131, null}
!415 = metadata !{i32 297, i32 0, metadata !131, null}
!416 = metadata !{i32 299, i32 0, metadata !131, null}
!417 = metadata !{i32 300, i32 0, metadata !131, null}
!418 = metadata !{i32 304, i32 0, metadata !131, null}
!419 = metadata !{i32 305, i32 0, metadata !131, null}
!420 = metadata !{i32 312, i32 0, metadata !138, null}
!421 = metadata !{i32 314, i32 0, metadata !138, null}
!422 = metadata !{i32 316, i32 0, metadata !138, null}
!423 = metadata !{i32 317, i32 0, metadata !138, null}
!424 = metadata !{i32 321, i32 0, metadata !138, null}
!425 = metadata !{i32 322, i32 0, metadata !138, null}
!426 = metadata !{i32 329, i32 0, metadata !147, null}
!427 = metadata !{i32 333, i32 0, metadata !147, null}
!428 = metadata !{i32 335, i32 0, metadata !147, null}
!429 = metadata !{i32 338, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !147, i32 336, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!431 = metadata !{i32 339, i32 0, metadata !430, null}
!432 = metadata !{i32 342, i32 0, metadata !430, null}
!433 = metadata !{i32 346, i32 0, metadata !430, null}
!434 = metadata !{i32 347, i32 0, metadata !430, null}
!435 = metadata !{i32 352, i32 0, metadata !147, null}
!436 = metadata !{i32 355, i32 0, metadata !147, null}
!437 = metadata !{i32 365, i32 0, metadata !152, null}
!438 = metadata !{i32 373, i32 0, metadata !152, null}
!439 = metadata !{i32 379, i32 0, metadata !152, null}
!440 = metadata !{i32 380, i32 0, metadata !152, null}
!441 = metadata !{i32 381, i32 0, metadata !152, null}
!442 = metadata !{i32 383, i32 0, metadata !152, null}
!443 = metadata !{i32 386, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !1, metadata !152, i32 384, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!445 = metadata !{i32 390, i32 0, metadata !444, null}
!446 = metadata !{i32 392, i32 0, metadata !444, null}
!447 = metadata !{i32 395, i32 0, metadata !444, null}
!448 = metadata !{i32 399, i32 0, metadata !444, null}
!449 = metadata !{i32 401, i32 0, metadata !444, null}
!450 = metadata !{i32 406, i32 0, metadata !152, null}
!451 = metadata !{i32 407, i32 0, metadata !152, null}
!452 = metadata !{i32 420, i32 0, metadata !158, null}
!453 = metadata !{i32 421, i32 0, metadata !158, null}
!454 = metadata !{i32 422, i32 0, metadata !158, null}
!455 = metadata !{i32 424, i32 0, metadata !158, null}
!456 = metadata !{i32 425, i32 0, metadata !158, null}
!457 = metadata !{i32 431, i32 0, metadata !158, null}
!458 = metadata !{i32 434, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !1, metadata !158, i32 432, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!460 = metadata !{i32 440, i32 0, metadata !459, null}
!461 = metadata !{i32 442, i32 0, metadata !459, null}
!462 = metadata !{i32 443, i32 0, metadata !459, null}
!463 = metadata !{i32 447, i32 0, metadata !158, null}
!464 = metadata !{i32 451, i32 0, metadata !158, null}
!465 = metadata !{i32 455, i32 0, metadata !158, null}
!466 = metadata !{i32 460, i32 0, metadata !158, null}
!467 = metadata !{i32 463, i32 0, metadata !468, null}
!468 = metadata !{i32 786443, metadata !1, metadata !158, i32 461, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!469 = metadata !{i32 467, i32 0, metadata !468, null}
!470 = metadata !{i32 468, i32 0, metadata !468, null}
!471 = metadata !{i32 469, i32 0, metadata !468, null}
!472 = metadata !{i32 471, i32 0, metadata !473, null}
!473 = metadata !{i32 786443, metadata !1, metadata !468, i32 470, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!474 = metadata !{i32 472, i32 0, metadata !473, null}
!475 = metadata !{i32 474, i32 0, metadata !468, null}
!476 = metadata !{i32 478, i32 0, metadata !468, null}
!477 = metadata !{i32 481, i32 0, metadata !468, null}
!478 = metadata !{i32 482, i32 0, metadata !468, null}
!479 = metadata !{i32 483, i32 0, metadata !468, null}
!480 = metadata !{i32 486, i32 0, metadata !158, null}
!481 = metadata !{i32 494, i32 0, metadata !169, null}
!482 = metadata !{i32 495, i32 0, metadata !169, null}
!483 = metadata !{i32 497, i32 0, metadata !169, null}
!484 = metadata !{i32 503, i32 0, metadata !178, null}
!485 = metadata !{i32 504, i32 0, metadata !178, null}
!486 = metadata !{i32 512, i32 0, metadata !181, null}
!487 = metadata !{i32 513, i32 0, metadata !181, null}
!488 = metadata !{i32 514, i32 0, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !181, i32 513, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!490 = metadata !{i32 515, i32 0, metadata !489, null}
!491 = metadata !{i32 523, i32 0, metadata !169, null}
!492 = metadata !{i32 524, i32 0, metadata !169, null}
!493 = metadata !{i32 529, i32 0, metadata !182, null}
!494 = metadata !{i32 530, i32 0, metadata !182, null}
!495 = metadata !{i32 539, i32 0, metadata !182, null}
!496 = metadata !{double 0x3FEF9ADD3C0E56B8}
!497 = metadata !{i32 540, i32 0, metadata !191, null}
!498 = metadata !{i8 -72}
!499 = metadata !{i32 552, i32 0, metadata !191, null}
!500 = metadata !{i32 557, i32 0, metadata !191, null}
!501 = metadata !{i32 567, i32 0, metadata !182, null}
!502 = metadata !{i32 575, i32 0, metadata !194, null}
!503 = metadata !{i32 576, i32 0, metadata !194, null}
!504 = metadata !{i32 577, i32 0, metadata !194, null}
!505 = metadata !{i32 578, i32 0, metadata !194, null}
!506 = metadata !{i32 579, i32 0, metadata !194, null}
!507 = metadata !{i32 580, i32 0, metadata !194, null}
!508 = metadata !{i32 590, i32 0, metadata !201, null}
!509 = metadata !{i32 591, i32 0, metadata !201, null}
!510 = metadata !{i32 592, i32 0, metadata !201, null}
!511 = metadata !{i32 593, i32 0, metadata !201, null}
!512 = metadata !{i32 594, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !1, metadata !201, i32 593, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!514 = metadata !{i32 595, i32 0, metadata !513, null}
!515 = metadata !{i32 596, i32 0, metadata !513, null}
!516 = metadata !{i32 604, i32 0, metadata !182, null}
!517 = metadata !{i32 605, i32 0, metadata !182, null}
!518 = metadata !{i32 622, i32 0, metadata !203, null}
!519 = metadata !{i32 623, i32 0, metadata !203, null}
!520 = metadata !{i32 624, i32 0, metadata !203, null}
!521 = metadata !{i32 625, i32 0, metadata !203, null}
!522 = metadata !{i32 626, i32 0, metadata !203, null}
!523 = metadata !{i32 632, i32 0, metadata !203, null}
!524 = metadata !{i32 633, i32 0, metadata !525, null}
!525 = metadata !{i32 786443, metadata !1, metadata !203, i32 633, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!526 = metadata !{i32 639, i32 0, metadata !527, null}
!527 = metadata !{i32 786443, metadata !1, metadata !525, i32 634, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!528 = metadata !{i32 635, i32 0, metadata !527, null}
!529 = metadata !{i32 641, i32 0, metadata !203, null}
!530 = metadata !{i32 681, i32 0, metadata !214, null}
!531 = metadata !{i32 683, i32 0, metadata !214, null}
!532 = metadata !{i32 686, i32 0, metadata !214, null}
!533 = metadata !{i32 687, i32 0, metadata !214, null}
!534 = metadata !{i32 688, i32 0, metadata !214, null}
!535 = metadata !{i32 689, i32 0, metadata !214, null}
!536 = metadata !{i32 690, i32 0, metadata !214, null}
!537 = metadata !{i32 704, i32 0, metadata !329, null}
!538 = metadata !{i32 706, i32 0, metadata !329, null}
!539 = metadata !{i32 708, i32 0, metadata !329, null}
!540 = metadata !{i32 710, i32 0, metadata !329, null}
!541 = metadata !{i32 786689, metadata !296, metadata !"x", metadata !12, i32 16777302, metadata !280, i32 0, metadata !540} ; [ DW_TAG_arg_variable ] [x] [line 86]
!542 = metadata !{i32 86, i32 0, metadata !296, metadata !540}
!543 = metadata !{i16* undef}
!544 = metadata !{i32 88, i32 0, metadata !296, metadata !540}
!545 = metadata !{i32 61, i32 0, metadata !284, metadata !546}
!546 = metadata !{i32 94, i32 0, metadata !547, metadata !540}
!547 = metadata !{i32 786443, metadata !1, metadata !296, i32 92, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!548 = metadata !{i32 786689, metadata !284, metadata !"x", metadata !12, i32 16777277, metadata !280, i32 0, metadata !546} ; [ DW_TAG_arg_variable ] [x] [line 61]
!549 = metadata !{i32 63, i32 0, metadata !284, metadata !546}
!550 = metadata !{i32 786688, metadata !284, metadata !"px", metadata !12, i32 65, metadata !43, i32 0, metadata !546} ; [ DW_TAG_auto_variable ] [px] [line 65]
!551 = metadata !{i32 65, i32 0, metadata !284, metadata !546}
!552 = metadata !{i32 786688, metadata !284, metadata !"py", metadata !12, i32 66, metadata !43, i32 0, metadata !546} ; [ DW_TAG_auto_variable ] [py] [line 66]
!553 = metadata !{i32 66, i32 0, metadata !284, metadata !546}
!554 = metadata !{i32 786688, metadata !284, metadata !"i", metadata !12, i32 64, metadata !20, i32 0, metadata !546} ; [ DW_TAG_auto_variable ] [i] [line 64]
!555 = metadata !{i32 68, i32 0, metadata !556, metadata !546}
!556 = metadata !{i32 786443, metadata !1, metadata !284, i32 68, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!557 = metadata !{i32 69, i32 0, metadata !556, metadata !546}
!558 = metadata !{i32 786688, metadata !284, metadata !"y", metadata !12, i32 63, metadata !280, i32 0, metadata !546} ; [ DW_TAG_auto_variable ] [y] [line 63]
!559 = metadata !{i32 71, i32 0, metadata !284, metadata !546}
!560 = metadata !{i32 711, i32 0, metadata !329, null}
!561 = metadata !{i32 715, i32 0, metadata !324, null}
!562 = metadata !{i32 717, i32 0, metadata !324, null}
!563 = metadata !{i32 786689, metadata !277, metadata !"x", metadata !12, i32 16777290, metadata !280, i32 0, metadata !562} ; [ DW_TAG_arg_variable ] [x] [line 74]
!564 = metadata !{i32 74, i32 0, metadata !277, metadata !562}
!565 = metadata !{i32 76, i32 0, metadata !277, metadata !562}
!566 = metadata !{i32 61, i32 0, metadata !284, metadata !567}
!567 = metadata !{i32 82, i32 0, metadata !568, metadata !562}
!568 = metadata !{i32 786443, metadata !1, metadata !277, i32 80, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.c]
!569 = metadata !{i32 786689, metadata !284, metadata !"x", metadata !12, i32 16777277, metadata !280, i32 0, metadata !567} ; [ DW_TAG_arg_variable ] [x] [line 61]
!570 = metadata !{i32 63, i32 0, metadata !284, metadata !567}
!571 = metadata !{i32 786688, metadata !284, metadata !"px", metadata !12, i32 65, metadata !43, i32 0, metadata !567} ; [ DW_TAG_auto_variable ] [px] [line 65]
!572 = metadata !{i32 65, i32 0, metadata !284, metadata !567}
!573 = metadata !{i32 786688, metadata !284, metadata !"py", metadata !12, i32 66, metadata !43, i32 0, metadata !567} ; [ DW_TAG_auto_variable ] [py] [line 66]
!574 = metadata !{i32 66, i32 0, metadata !284, metadata !567}
!575 = metadata !{i32 786688, metadata !284, metadata !"i", metadata !12, i32 64, metadata !20, i32 0, metadata !567} ; [ DW_TAG_auto_variable ] [i] [line 64]
!576 = metadata !{i32 68, i32 0, metadata !556, metadata !567}
!577 = metadata !{i32 69, i32 0, metadata !556, metadata !567}
!578 = metadata !{i32 786688, metadata !284, metadata !"y", metadata !12, i32 63, metadata !280, i32 0, metadata !567} ; [ DW_TAG_auto_variable ] [y] [line 63]
!579 = metadata !{i32 71, i32 0, metadata !284, metadata !567}
!580 = metadata !{i32 718, i32 0, metadata !324, null}
!581 = metadata !{i32 719, i32 0, metadata !324, null}
!582 = metadata !{i32 721, i32 0, metadata !324, null}
!583 = metadata !{i32 725, i32 0, metadata !319, null}
!584 = metadata !{i32 727, i32 0, metadata !319, null}
!585 = metadata !{i32 730, i32 0, metadata !319, null}
!586 = metadata !{i32 734, i32 0, metadata !314, null}
!587 = metadata !{i32 736, i32 0, metadata !314, null}
!588 = metadata !{i32 739, i32 0, metadata !314, null}
!589 = metadata !{i32 743, i32 0, metadata !311, null}
!590 = metadata !{i32 745, i32 0, metadata !311, null}
!591 = metadata !{i32 749, i32 0, metadata !307, null}
!592 = metadata !{i32 751, i32 0, metadata !307, null}
!593 = metadata !{i32 755, i32 0, metadata !303, null}
!594 = metadata !{i32 766, i32 0, metadata !303, null}
!595 = metadata !{i32 697, i32 0, metadata !300, null}
!596 = metadata !{i32 699, i32 0, metadata !300, null}
!597 = metadata !{i32 701, i32 0, metadata !300, null}
!598 = metadata !{i32 770, i32 0, metadata !291, null}
!599 = metadata !{i32 772, i32 0, metadata !291, null}
!600 = metadata !{i32 774, i32 0, metadata !291, null}
!601 = metadata !{i32 776, i32 0, metadata !291, null}
!602 = metadata !{i32 786689, metadata !296, metadata !"x", metadata !12, i32 16777302, metadata !280, i32 0, metadata !601} ; [ DW_TAG_arg_variable ] [x] [line 86]
!603 = metadata !{i32 86, i32 0, metadata !296, metadata !601}
!604 = metadata !{i32 88, i32 0, metadata !296, metadata !601}
!605 = metadata !{i32 61, i32 0, metadata !284, metadata !606}
!606 = metadata !{i32 94, i32 0, metadata !547, metadata !601}
!607 = metadata !{i32 786689, metadata !284, metadata !"x", metadata !12, i32 16777277, metadata !280, i32 0, metadata !606} ; [ DW_TAG_arg_variable ] [x] [line 61]
!608 = metadata !{i32 63, i32 0, metadata !284, metadata !606}
!609 = metadata !{i32 786688, metadata !284, metadata !"px", metadata !12, i32 65, metadata !43, i32 0, metadata !606} ; [ DW_TAG_auto_variable ] [px] [line 65]
!610 = metadata !{i32 65, i32 0, metadata !284, metadata !606}
!611 = metadata !{i32 786688, metadata !284, metadata !"py", metadata !12, i32 66, metadata !43, i32 0, metadata !606} ; [ DW_TAG_auto_variable ] [py] [line 66]
!612 = metadata !{i32 66, i32 0, metadata !284, metadata !606}
!613 = metadata !{i32 786688, metadata !284, metadata !"i", metadata !12, i32 64, metadata !20, i32 0, metadata !606} ; [ DW_TAG_auto_variable ] [i] [line 64]
!614 = metadata !{i32 68, i32 0, metadata !556, metadata !606}
!615 = metadata !{i32 69, i32 0, metadata !556, metadata !606}
!616 = metadata !{i32 786688, metadata !284, metadata !"y", metadata !12, i32 63, metadata !280, i32 0, metadata !606} ; [ DW_TAG_auto_variable ] [y] [line 63]
!617 = metadata !{i32 71, i32 0, metadata !284, metadata !606}
!618 = metadata !{i32 777, i32 0, metadata !291, null}
!619 = metadata !{i32 781, i32 0, metadata !272, null}
!620 = metadata !{i32 783, i32 0, metadata !272, null}
!621 = metadata !{i32 786689, metadata !277, metadata !"x", metadata !12, i32 16777290, metadata !280, i32 0, metadata !620} ; [ DW_TAG_arg_variable ] [x] [line 74]
!622 = metadata !{i32 74, i32 0, metadata !277, metadata !620}
!623 = metadata !{i32 76, i32 0, metadata !277, metadata !620}
!624 = metadata !{i32 61, i32 0, metadata !284, metadata !625}
!625 = metadata !{i32 82, i32 0, metadata !568, metadata !620}
!626 = metadata !{i32 786689, metadata !284, metadata !"x", metadata !12, i32 16777277, metadata !280, i32 0, metadata !625} ; [ DW_TAG_arg_variable ] [x] [line 61]
!627 = metadata !{i32 63, i32 0, metadata !284, metadata !625}
!628 = metadata !{i32 786688, metadata !284, metadata !"px", metadata !12, i32 65, metadata !43, i32 0, metadata !625} ; [ DW_TAG_auto_variable ] [px] [line 65]
!629 = metadata !{i32 65, i32 0, metadata !284, metadata !625}
!630 = metadata !{i32 786688, metadata !284, metadata !"py", metadata !12, i32 66, metadata !43, i32 0, metadata !625} ; [ DW_TAG_auto_variable ] [py] [line 66]
!631 = metadata !{i32 66, i32 0, metadata !284, metadata !625}
!632 = metadata !{i32 786688, metadata !284, metadata !"i", metadata !12, i32 64, metadata !20, i32 0, metadata !625} ; [ DW_TAG_auto_variable ] [i] [line 64]
!633 = metadata !{i32 68, i32 0, metadata !556, metadata !625}
!634 = metadata !{i32 69, i32 0, metadata !556, metadata !625}
!635 = metadata !{i32 786688, metadata !284, metadata !"y", metadata !12, i32 63, metadata !280, i32 0, metadata !625} ; [ DW_TAG_auto_variable ] [y] [line 63]
!636 = metadata !{i32 71, i32 0, metadata !284, metadata !625}
!637 = metadata !{i32 785, i32 0, metadata !272, null}
!638 = metadata !{i32 786, i32 0, metadata !272, null}
!639 = metadata !{i32 788, i32 0, metadata !272, null}
