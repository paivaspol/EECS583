; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@xdropen.init_done = internal unnamed_addr global i1 false
@xdridptr = internal unnamed_addr global [20 x %struct.XDR*] zeroinitializer, align 16
@xdrfiles = internal unnamed_addr global [20 x %struct._IO_FILE*] zeroinitializer, align 16
@xdrmodes = internal unnamed_addr global [20 x i8] zeroinitializer, align 16
@stderr = external global %struct._IO_FILE*
@.str3 = private unnamed_addr constant [33 x i8] c"xdrclose: passed a NULL pointer\0A\00", align 1
@.str4 = private unnamed_addr constant [33 x i8] c"xdrclose: no such open xdr file\0A\00", align 1
@xdr3dfcoord.ip = internal unnamed_addr global i32* null, align 8
@xdr3dfcoord.oldsize = internal unnamed_addr global i32 0, align 4
@xdr3dfcoord.buf = internal unnamed_addr global i32* null, align 8
@.str5 = private unnamed_addr constant [31 x i8] c"xdr error. no open xdr stream\0A\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@.str7 = private unnamed_addr constant [16 x i8] c"realloc failed\0A\00", align 1
@magicints = internal unnamed_addr constant [73 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 10, i32 12, i32 16, i32 20, i32 25, i32 32, i32 40, i32 50, i32 64, i32 80, i32 101, i32 128, i32 161, i32 203, i32 256, i32 322, i32 406, i32 512, i32 645, i32 812, i32 1024, i32 1290, i32 1625, i32 2048, i32 2580, i32 3250, i32 4096, i32 5060, i32 6501, i32 8192, i32 10321, i32 13003, i32 16384, i32 20642, i32 26007, i32 32768, i32 41285, i32 52015, i32 65536, i32 82570, i32 104031, i32 131072, i32 165140, i32 208063, i32 262144, i32 330280, i32 416127, i32 524287, i32 660561, i32 832255, i32 1048576, i32 1321122, i32 1664510, i32 2097152, i32 2642245, i32 3329021, i32 4194304, i32 5284491, i32 6658042, i32 8388607, i32 10568983, i32 13316085, i32 16777216], align 16
@.str8 = private unnamed_addr constant [65 x i8] c"wrong number of coordinates in xdr3dfcoord; %d arg vs %d in file\00", align 1
@.str9 = private unnamed_addr constant [58 x i8] c"major breakdown in sendints num %u doesn't match size %u\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @xdropen(%struct.XDR* %xdrs, i8* nocapture %filename, i8* nocapture %type) #0 {
entry:
  %newtype = alloca [5 x i8], align 4
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !73), !dbg !295
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !74), !dbg !295
  call void @llvm.dbg.value(metadata !{i8* %type}, i64 0, metadata !75), !dbg !295
  call void @llvm.dbg.declare(metadata !{[5 x i8]* %newtype}, metadata !78), !dbg !296
  %.b = load i1* @xdropen.init_done, align 1
  br i1 %.b, label %land.rhs, label %for.cond.preheader, !dbg !297

for.cond.preheader:                               ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.XDR** getelementptr inbounds ([20 x %struct.XDR*]* @xdridptr, i64 0, i64 1) to i8*), i8 0, i64 152, i32 8, i1 false), !dbg !298
  store i1 true, i1* @xdropen.init_done, align 1
  br label %land.rhs, !dbg !302

while.cond:                                       ; preds = %land.rhs
  %0 = trunc i64 %indvars.iv.next to i32, !dbg !303
  %cmp2 = icmp slt i32 %0, 20, !dbg !303
  br i1 %cmp2, label %land.rhs, label %while.end, !dbg !303

land.rhs:                                         ; preds = %while.cond, %for.cond.preheader, %entry
  %indvars.iv = phi i64 [ 1, %entry ], [ 1, %for.cond.preheader ], [ %indvars.iv.next, %while.cond ]
  %xdrid.183 = phi i32 [ 1, %entry ], [ 1, %for.cond.preheader ], [ %inc6, %while.cond ]
  %arrayidx4 = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %indvars.iv, !dbg !303
  %1 = load %struct.XDR** %arrayidx4, align 8, !dbg !303, !tbaa !304
  %cmp5 = icmp eq %struct.XDR* %1, null, !dbg !303
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !303
  %inc6 = add nsw i32 %xdrid.183, 1, !dbg !307
  call void @llvm.dbg.value(metadata !{i32 %inc6}, i64 0, metadata !77), !dbg !307
  br i1 %cmp5, label %if.end9, label %while.cond

while.end:                                        ; preds = %while.cond
  %cmp7 = icmp eq i32 %inc6, 20, !dbg !309
  br i1 %cmp7, label %return, label %if.end9, !dbg !309

if.end9:                                          ; preds = %land.rhs, %while.end
  %xdrid.182 = phi i32 [ %inc6, %while.end ], [ %xdrid.183, %land.rhs ]
  %2 = load i8* %type, align 1, !dbg !310, !tbaa !305
  switch i8 %2, label %if.else26 [
    i8 119, label %if.then15
    i8 87, label %if.then15
    i8 97, label %if.then23
    i8 65, label %if.then23
  ], !dbg !310

if.then15:                                        ; preds = %if.end9, %if.end9
  %3 = bitcast [5 x i8]* %newtype to i32*, !dbg !311
  store i32 2843255, i32* %3, align 4, !dbg !311
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !76), !dbg !313
  br label %if.end30, !dbg !314

if.then23:                                        ; preds = %if.end9, %if.end9
  %4 = bitcast [5 x i8]* %newtype to i32*, !dbg !315
  store i32 2843233, i32* %4, align 4, !dbg !315
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !76), !dbg !317
  br label %if.end30, !dbg !318

if.else26:                                        ; preds = %if.end9
  %5 = bitcast [5 x i8]* %newtype to i32*, !dbg !319
  store i32 2843250, i32* %5, align 4, !dbg !319
  call void @llvm.dbg.value(metadata !321, i64 0, metadata !76), !dbg !322
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %if.else26, %if.then15
  %lmode.0 = phi i32 [ 0, %if.then15 ], [ 0, %if.then23 ], [ 1, %if.else26 ]
  %arraydecay31 = getelementptr inbounds [5 x i8]* %newtype, i64 0, i64 0, !dbg !323
  %call32 = call %struct._IO_FILE* @fopen(i8* %filename, i8* %arraydecay31) #7, !dbg !323
  %idxprom33 = sext i32 %xdrid.182 to i64, !dbg !323
  %arrayidx34 = getelementptr inbounds [20 x %struct._IO_FILE*]* @xdrfiles, i64 0, i64 %idxprom33, !dbg !323
  store %struct._IO_FILE* %call32, %struct._IO_FILE** %arrayidx34, align 8, !dbg !323, !tbaa !304
  %cmp37 = icmp eq %struct._IO_FILE* %call32, null, !dbg !324
  br i1 %cmp37, label %return, label %if.end40, !dbg !324

if.end40:                                         ; preds = %if.end30
  %6 = load i8* %type, align 1, !dbg !325, !tbaa !305
  %arrayidx42 = getelementptr inbounds [20 x i8]* @xdrmodes, i64 0, i64 %idxprom33, !dbg !325
  store i8 %6, i8* %arrayidx42, align 1, !dbg !325, !tbaa !305
  %cmp43 = icmp eq %struct.XDR* %xdrs, null, !dbg !326
  br i1 %cmp43, label %if.then45, label %if.else53, !dbg !326

if.then45:                                        ; preds = %if.end40
  %call46 = call noalias i8* @malloc(i64 48) #7, !dbg !327
  %7 = bitcast i8* %call46 to %struct.XDR*, !dbg !327
  %arrayidx48 = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %idxprom33, !dbg !327
  store %struct.XDR* %7, %struct.XDR** %arrayidx48, align 8, !dbg !327, !tbaa !304
  call void @xdrstdio_create(%struct.XDR* %7, %struct._IO_FILE* %call32, i32 %lmode.0) #7, !dbg !329
  br label %return, !dbg !330

if.else53:                                        ; preds = %if.end40
  %arrayidx55 = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %idxprom33, !dbg !331
  store %struct.XDR* %xdrs, %struct.XDR** %arrayidx55, align 8, !dbg !331, !tbaa !304
  call void @xdrstdio_create(%struct.XDR* %xdrs, %struct._IO_FILE* %call32, i32 %lmode.0) #7, !dbg !333
  br label %return

return:                                           ; preds = %if.then45, %if.else53, %if.end30, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ 0, %if.end30 ], [ %xdrid.182, %if.else53 ], [ %xdrid.182, %if.then45 ]
  ret i32 %retval.0, !dbg !334
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare void @xdrstdio_create(%struct.XDR*, %struct._IO_FILE*, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @xdrclose(%struct.XDR* %xdrs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !86), !dbg !335
  %cmp = icmp eq %struct.XDR* %xdrs, null, !dbg !336
  br i1 %cmp, label %if.then, label %for.body, !dbg !336

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !337, !tbaa !304
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str3, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %0), !dbg !337
  tail call void @exit(i32 1) #8, !dbg !339
  unreachable, !dbg !339

for.cond:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !340
  %cmp1 = icmp slt i32 %2, 20, !dbg !340
  br i1 %cmp1, label %for.body, label %for.end, !dbg !340

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %indvars.iv, !dbg !342
  %3 = load %struct.XDR** %arrayidx, align 8, !dbg !342, !tbaa !304
  %cmp2 = icmp eq %struct.XDR* %3, %xdrs, !dbg !342
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !340
  br i1 %cmp2, label %do.body, label %for.cond, !dbg !342

do.body:                                          ; preds = %for.body
  %x_ops = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !344
  %4 = load %struct.xdr_ops** %x_ops, align 8, !dbg !344, !tbaa !304
  %x_destroy = getelementptr inbounds %struct.xdr_ops* %4, i64 0, i32 7, !dbg !344
  %5 = load void (%struct.XDR*)** %x_destroy, align 8, !dbg !344, !tbaa !304
  %tobool = icmp eq void (%struct.XDR*)* %5, null, !dbg !344
  br i1 %tobool, label %do.end, label %if.then4, !dbg !344

if.then4:                                         ; preds = %do.body
  tail call void %5(%struct.XDR* %xdrs) #7, !dbg !344
  br label %do.end, !dbg !344

do.end:                                           ; preds = %do.body, %if.then4
  %arrayidx9 = getelementptr inbounds [20 x %struct._IO_FILE*]* @xdrfiles, i64 0, i64 %indvars.iv, !dbg !347
  %6 = load %struct._IO_FILE** %arrayidx9, align 8, !dbg !347, !tbaa !304
  %call10 = tail call i32 @fclose(%struct._IO_FILE* %6) #7, !dbg !347
  store %struct.XDR* null, %struct.XDR** %arrayidx, align 8, !dbg !348, !tbaa !304
  ret i32 1, !dbg !349

for.end:                                          ; preds = %for.cond
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !350, !tbaa !304
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str4, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %7), !dbg !350
  tail call void @exit(i32 1) #8, !dbg !351
  unreachable, !dbg !351
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @xdr3dfcoord(%struct.XDR* %xdrs, float* %fp, i32* %size, float* %precision) #0 {
entry:
  %minint = alloca [3 x i32], align 4
  %maxint = alloca [3 x i32], align 4
  %smallidx = alloca i32, align 4
  %sizeint = alloca [3 x i32], align 4
  %sizesmall = alloca [3 x i32], align 4
  %tmpcoord = alloca [30 x i32], align 16
  %lsize = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !95), !dbg !352
  call void @llvm.dbg.value(metadata !{float* %fp}, i64 0, metadata !96), !dbg !352
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !97), !dbg !352
  call void @llvm.dbg.value(metadata !{float* %precision}, i64 0, metadata !98), !dbg !352
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %minint}, metadata !99), !dbg !353
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %maxint}, metadata !103), !dbg !353
  call void @llvm.dbg.declare(metadata !{i32* %smallidx}, metadata !113), !dbg !354
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %sizeint}, metadata !116), !dbg !355
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %sizesmall}, metadata !118), !dbg !355
  call void @llvm.dbg.declare(metadata !356, metadata !119), !dbg !355
  call void @llvm.dbg.declare(metadata !356, metadata !137), !dbg !357
  %0 = bitcast [30 x i32]* %tmpcoord to i8*, !dbg !358
  call void @llvm.lifetime.start(i64 120, i8* %0) #5, !dbg !358
  call void @llvm.dbg.declare(metadata !{[30 x i32]* %tmpcoord}, metadata !138), !dbg !358
  call void @llvm.dbg.declare(metadata !{i32* %lsize}, metadata !144), !dbg !359
  call void @llvm.dbg.value(metadata !321, i64 0, metadata !147), !dbg !360
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !143), !dbg !361
  br label %while.cond, !dbg !362

while.cond:                                       ; preds = %while.body, %entry
  %indvars.iv1362 = phi i64 [ %indvars.iv.next1363, %while.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %indvars.iv1362, !dbg !362
  %1 = load %struct.XDR** %arrayidx, align 8, !dbg !362, !tbaa !304
  %cmp = icmp eq %struct.XDR* %1, %xdrs, !dbg !362
  br i1 %cmp, label %while.end, label %while.body, !dbg !362

while.body:                                       ; preds = %while.cond
  %indvars.iv.next1363 = add i64 %indvars.iv1362, 1, !dbg !363
  %2 = trunc i64 %indvars.iv1362 to i32, !dbg !363
  %cmp10 = icmp sgt i32 %2, 18, !dbg !363
  br i1 %cmp10, label %if.then, label %while.cond, !dbg !363

if.then:                                          ; preds = %while.body
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !365, !tbaa !304
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str5, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %3), !dbg !365
  call void @exit(i32 1) #8, !dbg !367
  unreachable, !dbg !367

while.end:                                        ; preds = %while.cond
  %arrayidx12 = getelementptr inbounds [20 x i8]* @xdrmodes, i64 0, i64 %indvars.iv1362, !dbg !368
  %5 = load i8* %arrayidx12, align 1, !dbg !368, !tbaa !305
  switch i8 %5, label %if.else585 [
    i8 119, label %if.then20
    i8 97, label %if.then20
  ], !dbg !368

if.then20:                                        ; preds = %while.end, %while.end
  %call21 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %size) #7, !dbg !369
  %cmp22 = icmp eq i32 %call21, 0, !dbg !369
  br i1 %cmp22, label %cleanup, label %if.end25, !dbg !369

if.end25:                                         ; preds = %if.then20
  %6 = load i32* %size, align 4, !dbg !371, !tbaa !372
  %mul = mul nsw i32 %6, 3, !dbg !371
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !120), !dbg !371
  %cmp26 = icmp slt i32 %6, 10, !dbg !373
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !373

if.then28:                                        ; preds = %if.end25
  %7 = bitcast float* %fp to i8*, !dbg !374
  %call29 = call i32 @xdr_vector(%struct.XDR* %xdrs, i8* %7, i32 %mul, i32 4, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, float*)* @xdr_float to i32 (%struct.XDR*, i8*, ...)*)) #7, !dbg !374
  br label %cleanup, !dbg !374

if.end30:                                         ; preds = %if.end25
  %call31 = call i32 @xdr_float(%struct.XDR* %xdrs, float* %precision) #7, !dbg !376
  %8 = load i32** @xdr3dfcoord.ip, align 8, !dbg !377, !tbaa !304
  %cmp32 = icmp eq i32* %8, null, !dbg !377
  br i1 %cmp32, label %if.then34, label %if.else, !dbg !377

if.then34:                                        ; preds = %if.end30
  %conv35 = zext i32 %mul to i64, !dbg !378
  %mul36 = shl nuw nsw i64 %conv35, 2, !dbg !378
  %call37 = call noalias i8* @malloc(i64 %mul36) #7, !dbg !378
  %9 = bitcast i8* %call37 to i32*, !dbg !378
  store i32* %9, i32** @xdr3dfcoord.ip, align 8, !dbg !378, !tbaa !304
  %cmp38 = icmp eq i8* %call37, null, !dbg !380
  br i1 %cmp38, label %if.then40, label %if.end42, !dbg !380

if.then40:                                        ; preds = %if.then34
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !381, !tbaa !304
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %10), !dbg !381
  call void @exit(i32 1) #8, !dbg !383
  unreachable, !dbg !383

if.end42:                                         ; preds = %if.then34
  %conv43 = uitofp i32 %mul to double, !dbg !384
  %mul44 = fmul double %conv43, 1.200000e+00, !dbg !384
  %conv45 = fptosi double %mul44 to i32, !dbg !384
  call void @llvm.dbg.value(metadata !{i32 %conv45}, i64 0, metadata !142), !dbg !384
  %conv46 = sext i32 %conv45 to i64, !dbg !385
  %mul47 = shl nsw i64 %conv46, 2, !dbg !385
  %call48 = call noalias i8* @malloc(i64 %mul47) #7, !dbg !385
  %12 = bitcast i8* %call48 to i32*, !dbg !385
  store i32* %12, i32** @xdr3dfcoord.buf, align 8, !dbg !385, !tbaa !304
  %cmp49 = icmp eq i8* %call48, null, !dbg !386
  br i1 %cmp49, label %if.then51, label %if.end53, !dbg !386

if.then51:                                        ; preds = %if.end42
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !387, !tbaa !304
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %13), !dbg !387
  call void @exit(i32 1) #8, !dbg !389
  unreachable, !dbg !389

if.end53:                                         ; preds = %if.end42
  %15 = load i32* %size, align 4, !dbg !390, !tbaa !372
  store i32 %15, i32* @xdr3dfcoord.oldsize, align 4, !dbg !390, !tbaa !372
  br label %if.end77, !dbg !391

if.else:                                          ; preds = %if.end30
  %16 = load i32* %size, align 4, !dbg !392, !tbaa !372
  %17 = load i32* @xdr3dfcoord.oldsize, align 4, !dbg !392, !tbaa !372
  %cmp54 = icmp sgt i32 %16, %17, !dbg !392
  br i1 %cmp54, label %if.then56, label %if.else.if.end77_crit_edge, !dbg !392

if.else.if.end77_crit_edge:                       ; preds = %if.else
  %.pre1370 = load i32** @xdr3dfcoord.buf, align 8, !dbg !393, !tbaa !304
  %idx.ext.pre = zext i32 %mul to i64, !dbg !394
  br label %if.end77, !dbg !392

if.then56:                                        ; preds = %if.else
  %18 = bitcast i32* %8 to i8*, !dbg !395
  %conv57 = zext i32 %mul to i64, !dbg !395
  %mul58 = shl nuw nsw i64 %conv57, 2, !dbg !395
  %call59 = call i8* @realloc(i8* %18, i64 %mul58) #7, !dbg !395
  %19 = bitcast i8* %call59 to i32*, !dbg !395
  store i32* %19, i32** @xdr3dfcoord.ip, align 8, !dbg !395, !tbaa !304
  %cmp60 = icmp eq i8* %call59, null, !dbg !397
  br i1 %cmp60, label %if.then62, label %if.end64, !dbg !397

if.then62:                                        ; preds = %if.then56
  %20 = load %struct._IO_FILE** @stderr, align 8, !dbg !398, !tbaa !304
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %20), !dbg !398
  call void @exit(i32 1) #8, !dbg !400
  unreachable, !dbg !400

if.end64:                                         ; preds = %if.then56
  %conv65 = uitofp i32 %mul to double, !dbg !401
  %mul66 = fmul double %conv65, 1.200000e+00, !dbg !401
  %conv67 = fptosi double %mul66 to i32, !dbg !401
  call void @llvm.dbg.value(metadata !{i32 %conv67}, i64 0, metadata !142), !dbg !401
  %22 = load i32** @xdr3dfcoord.buf, align 8, !dbg !402, !tbaa !304
  %23 = bitcast i32* %22 to i8*, !dbg !402
  %conv68 = sext i32 %conv67 to i64, !dbg !402
  %mul69 = shl nsw i64 %conv68, 2, !dbg !402
  %call70 = call i8* @realloc(i8* %23, i64 %mul69) #7, !dbg !402
  %24 = bitcast i8* %call70 to i32*, !dbg !402
  store i32* %24, i32** @xdr3dfcoord.buf, align 8, !dbg !402, !tbaa !304
  %cmp71 = icmp eq i8* %call70, null, !dbg !403
  br i1 %cmp71, label %if.then73, label %if.end75, !dbg !403

if.then73:                                        ; preds = %if.end64
  %25 = load %struct._IO_FILE** @stderr, align 8, !dbg !404, !tbaa !304
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %25), !dbg !404
  call void @exit(i32 1) #8, !dbg !406
  unreachable, !dbg !406

if.end75:                                         ; preds = %if.end64
  %27 = load i32* %size, align 4, !dbg !407, !tbaa !372
  store i32 %27, i32* @xdr3dfcoord.oldsize, align 4, !dbg !407, !tbaa !372
  br label %if.end77, !dbg !408

if.end77:                                         ; preds = %if.else.if.end77_crit_edge, %if.end75, %if.end53
  %idx.ext.pre-phi = phi i64 [ %idx.ext.pre, %if.else.if.end77_crit_edge ], [ %conv57, %if.end75 ], [ %conv35, %if.end53 ], !dbg !394
  %28 = phi i32* [ %.pre1370, %if.else.if.end77_crit_edge ], [ %24, %if.end75 ], [ %12, %if.end53 ]
  %arrayidx78 = getelementptr inbounds i32* %28, i64 2, !dbg !393
  store i32 0, i32* %arrayidx78, align 4, !dbg !393, !tbaa !372
  %arrayidx79 = getelementptr inbounds i32* %28, i64 1, !dbg !393
  store i32 0, i32* %arrayidx79, align 4, !dbg !393, !tbaa !372
  store i32 0, i32* %28, align 4, !dbg !393, !tbaa !372
  %arrayidx81 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 2, !dbg !409
  store i32 2147483647, i32* %arrayidx81, align 4, !dbg !409, !tbaa !372
  %arrayidx82 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 1, !dbg !409
  store i32 2147483647, i32* %arrayidx82, align 4, !dbg !409, !tbaa !372
  %arrayidx83 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 0, !dbg !409
  store i32 2147483647, i32* %arrayidx83, align 4, !dbg !409, !tbaa !372
  %arrayidx84 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 2, !dbg !410
  store i32 -2147483648, i32* %arrayidx84, align 4, !dbg !410, !tbaa !372
  %arrayidx85 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 1, !dbg !410
  store i32 -2147483648, i32* %arrayidx85, align 4, !dbg !410, !tbaa !372
  %arrayidx86 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 0, !dbg !410
  store i32 -2147483648, i32* %arrayidx86, align 4, !dbg !410, !tbaa !372
  call void @llvm.dbg.value(metadata !411, i64 0, metadata !132), !dbg !412
  call void @llvm.dbg.value(metadata !{float* %fp}, i64 0, metadata !133), !dbg !413
  call void @llvm.dbg.value(metadata !{i32* %29}, i64 0, metadata !105), !dbg !414
  call void @llvm.dbg.value(metadata !415, i64 0, metadata !104), !dbg !416
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !112), !dbg !417
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !111), !dbg !417
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !110), !dbg !417
  %add.ptr = getelementptr inbounds float* %fp, i64 %idx.ext.pre-phi, !dbg !394
  %cmp881341 = icmp eq i32 %6, 0, !dbg !394
  br i1 %cmp881341, label %while.end208, label %while.body90.lr.ph, !dbg !394

while.body90.lr.ph:                               ; preds = %if.end77
  %29 = load i32** @xdr3dfcoord.ip, align 8, !dbg !414, !tbaa !304
  %30 = load float* %precision, align 4, !dbg !418, !tbaa !420
  br label %while.body90, !dbg !394

while.body90:                                     ; preds = %while.body90.lr.ph, %if.end190
  %errval.01348 = phi i32 [ 1, %while.body90.lr.ph ], [ %errval.3, %if.end190 ]
  %lfp.01347 = phi float* [ %fp, %while.body90.lr.ph ], [ %incdec.ptr192, %if.end190 ]
  %mindiff.01346 = phi i32 [ 2147483647, %while.body90.lr.ph ], [ %mindiff.1, %if.end190 ]
  %lip.01345 = phi i32* [ %29, %while.body90.lr.ph ], [ %incdec.ptr191, %if.end190 ]
  %oldlint3.01344 = phi i32 [ 0, %while.body90.lr.ph ], [ %conv178, %if.end190 ]
  %oldlint2.01343 = phi i32 [ 0, %while.body90.lr.ph ], [ %conv143, %if.end190 ]
  %oldlint1.01342 = phi i32 [ 0, %while.body90.lr.ph ], [ %conv109, %if.end190 ]
  %31 = load float* %lfp.01347, align 4, !dbg !421, !tbaa !420
  %cmp92 = fcmp ult float %31, 0.000000e+00, !dbg !421
  %mul95 = fmul float %31, %30, !dbg !418
  br i1 %cmp92, label %if.else98, label %if.then94, !dbg !421

if.then94:                                        ; preds = %while.body90
  %conv97 = fadd float %mul95, 5.000000e-01, !dbg !418
  call void @llvm.dbg.value(metadata !{float %conv97}, i64 0, metadata !134), !dbg !418
  br label %if.end102, !dbg !418

if.else98:                                        ; preds = %while.body90
  %conv101 = fadd float %mul95, -5.000000e-01, !dbg !422
  call void @llvm.dbg.value(metadata !{float %conv101}, i64 0, metadata !134), !dbg !422
  br label %if.end102

if.end102:                                        ; preds = %if.else98, %if.then94
  %lf.0 = phi float [ %conv97, %if.then94 ], [ %conv101, %if.else98 ]
  %fabsf = call float @fabsf(float %lf.0) #9, !dbg !423
  %32 = fpext float %fabsf to double, !dbg !423
  %cmp105 = fcmp ogt double %32, 0x41DFFFFFFF400000, !dbg !423
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !147), !dbg !424
  %errval.1 = select i1 %cmp105, i32 0, i32 %errval.01348, !dbg !423
  %conv109 = fptosi float %lf.0 to i32, !dbg !426
  call void @llvm.dbg.value(metadata !{i32 %conv109}, i64 0, metadata !107), !dbg !426
  %33 = load i32* %arrayidx83, align 4, !dbg !427, !tbaa !372
  %cmp111 = icmp slt i32 %conv109, %33, !dbg !427
  br i1 %cmp111, label %if.then113, label %if.end115, !dbg !427

if.then113:                                       ; preds = %if.end102
  store i32 %conv109, i32* %arrayidx83, align 4, !dbg !427, !tbaa !372
  br label %if.end115, !dbg !427

if.end115:                                        ; preds = %if.end102, %if.then113
  %34 = load i32* %arrayidx86, align 4, !dbg !428, !tbaa !372
  %cmp117 = icmp sgt i32 %conv109, %34, !dbg !428
  br i1 %cmp117, label %if.then119, label %if.end121, !dbg !428

if.then119:                                       ; preds = %if.end115
  store i32 %conv109, i32* %arrayidx86, align 4, !dbg !428, !tbaa !372
  br label %if.end121, !dbg !428

if.end121:                                        ; preds = %if.then119, %if.end115
  %incdec.ptr = getelementptr inbounds i32* %lip.01345, i64 1, !dbg !429
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr}, i64 0, metadata !105), !dbg !429
  store i32 %conv109, i32* %lip.01345, align 4, !dbg !429, !tbaa !372
  %incdec.ptr122 = getelementptr inbounds float* %lfp.01347, i64 1, !dbg !430
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr122}, i64 0, metadata !133), !dbg !430
  %35 = load float* %incdec.ptr122, align 4, !dbg !431, !tbaa !420
  %cmp124 = fcmp ult float %35, 0.000000e+00, !dbg !431
  %mul127 = fmul float %35, %30, !dbg !432
  br i1 %cmp124, label %if.else131, label %if.then126, !dbg !431

if.then126:                                       ; preds = %if.end121
  %conv130 = fadd float %mul127, 5.000000e-01, !dbg !432
  call void @llvm.dbg.value(metadata !{float %conv130}, i64 0, metadata !134), !dbg !432
  br label %if.end136, !dbg !432

if.else131:                                       ; preds = %if.end121
  %conv135 = fadd float %mul127, -5.000000e-01, !dbg !433
  call void @llvm.dbg.value(metadata !{float %conv135}, i64 0, metadata !134), !dbg !433
  br label %if.end136

if.end136:                                        ; preds = %if.else131, %if.then126
  %lf.1 = phi float [ %conv130, %if.then126 ], [ %conv135, %if.else131 ]
  %fabsf1236 = call float @fabsf(float %lf.1) #9, !dbg !434
  %36 = fpext float %fabsf1236 to double, !dbg !434
  %cmp139 = fcmp ogt double %36, 0x41DFFFFFFF400000, !dbg !434
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !147), !dbg !435
  %errval.2 = select i1 %cmp139, i32 0, i32 %errval.1, !dbg !434
  %conv143 = fptosi float %lf.1 to i32, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %conv143}, i64 0, metadata !108), !dbg !437
  %37 = load i32* %arrayidx82, align 4, !dbg !438, !tbaa !372
  %cmp145 = icmp slt i32 %conv143, %37, !dbg !438
  br i1 %cmp145, label %if.then147, label %if.end149, !dbg !438

if.then147:                                       ; preds = %if.end136
  store i32 %conv143, i32* %arrayidx82, align 4, !dbg !438, !tbaa !372
  br label %if.end149, !dbg !438

if.end149:                                        ; preds = %if.then147, %if.end136
  %38 = load i32* %arrayidx85, align 4, !dbg !439, !tbaa !372
  %cmp151 = icmp sgt i32 %conv143, %38, !dbg !439
  br i1 %cmp151, label %if.then153, label %if.end155, !dbg !439

if.then153:                                       ; preds = %if.end149
  store i32 %conv143, i32* %arrayidx85, align 4, !dbg !439, !tbaa !372
  br label %if.end155, !dbg !439

if.end155:                                        ; preds = %if.then153, %if.end149
  %incdec.ptr156 = getelementptr inbounds i32* %lip.01345, i64 2, !dbg !440
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr156}, i64 0, metadata !105), !dbg !440
  store i32 %conv143, i32* %incdec.ptr, align 4, !dbg !440, !tbaa !372
  %incdec.ptr157 = getelementptr inbounds float* %lfp.01347, i64 2, !dbg !441
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr157}, i64 0, metadata !133), !dbg !441
  %39 = load float* %incdec.ptr157, align 4, !dbg !442, !tbaa !420
  %cmp159 = fcmp ult float %39, 0.000000e+00, !dbg !442
  %mul162 = fmul float %39, %30, !dbg !443
  br i1 %cmp159, label %if.else166, label %if.then161, !dbg !442

if.then161:                                       ; preds = %if.end155
  %conv165 = fadd float %mul162, 5.000000e-01, !dbg !443
  call void @llvm.dbg.value(metadata !{float %conv165}, i64 0, metadata !134), !dbg !443
  br label %if.end171, !dbg !443

if.else166:                                       ; preds = %if.end155
  %conv170 = fadd float %mul162, -5.000000e-01, !dbg !444
  call void @llvm.dbg.value(metadata !{float %conv170}, i64 0, metadata !134), !dbg !444
  br label %if.end171

if.end171:                                        ; preds = %if.else166, %if.then161
  %lf.2 = phi float [ %conv165, %if.then161 ], [ %conv170, %if.else166 ]
  %fabsf1237 = call float @fabsf(float %lf.2) #9, !dbg !445
  %40 = fpext float %fabsf1237 to double, !dbg !445
  %cmp174 = fcmp ogt double %40, 0x41DFFFFFFF400000, !dbg !445
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !147), !dbg !446
  %errval.3 = select i1 %cmp174, i32 0, i32 %errval.2, !dbg !445
  %conv178 = fptosi float %lf.2 to i32, !dbg !448
  call void @llvm.dbg.value(metadata !{i32 %conv178}, i64 0, metadata !109), !dbg !448
  %41 = load i32* %arrayidx81, align 4, !dbg !449, !tbaa !372
  %cmp180 = icmp slt i32 %conv178, %41, !dbg !449
  br i1 %cmp180, label %if.then182, label %if.end184, !dbg !449

if.then182:                                       ; preds = %if.end171
  store i32 %conv178, i32* %arrayidx81, align 4, !dbg !449, !tbaa !372
  br label %if.end184, !dbg !449

if.end184:                                        ; preds = %if.then182, %if.end171
  %42 = load i32* %arrayidx84, align 4, !dbg !450, !tbaa !372
  %cmp186 = icmp sgt i32 %conv178, %42, !dbg !450
  br i1 %cmp186, label %if.then188, label %if.end190, !dbg !450

if.then188:                                       ; preds = %if.end184
  store i32 %conv178, i32* %arrayidx84, align 4, !dbg !450, !tbaa !372
  br label %if.end190, !dbg !450

if.end190:                                        ; preds = %if.then188, %if.end184
  %incdec.ptr191 = getelementptr inbounds i32* %lip.01345, i64 3, !dbg !451
  call void @llvm.dbg.value(metadata !{i32* %incdec.ptr191}, i64 0, metadata !105), !dbg !451
  store i32 %conv178, i32* %incdec.ptr156, align 4, !dbg !451, !tbaa !372
  %incdec.ptr192 = getelementptr inbounds float* %lfp.01347, i64 3, !dbg !452
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr192}, i64 0, metadata !133), !dbg !452
  %sub193 = sub nsw i32 %oldlint1.01342, %conv109, !dbg !453
  %ispos1238 = icmp sgt i32 %sub193, -1, !dbg !453
  %neg1239 = sub i32 0, %sub193, !dbg !453
  %43 = select i1 %ispos1238, i32 %sub193, i32 %neg1239, !dbg !453
  %sub195 = sub nsw i32 %oldlint2.01343, %conv143, !dbg !453
  %ispos1240 = icmp sgt i32 %sub195, -1, !dbg !453
  %neg1241 = sub i32 0, %sub195, !dbg !453
  %44 = select i1 %ispos1240, i32 %sub195, i32 %neg1241, !dbg !453
  %add197 = add nsw i32 %44, %43, !dbg !453
  %sub198 = sub nsw i32 %oldlint3.01344, %conv178, !dbg !453
  %ispos1242 = icmp sgt i32 %sub198, -1, !dbg !453
  %neg1243 = sub i32 0, %sub198, !dbg !453
  %45 = select i1 %ispos1242, i32 %sub198, i32 %neg1243, !dbg !453
  %add200 = add nsw i32 %add197, %45, !dbg !453
  call void @llvm.dbg.value(metadata !{i32 %add200}, i64 0, metadata !106), !dbg !453
  %cmp201 = icmp slt i32 %add200, %mindiff.01346, !dbg !454
  %cmp204 = icmp sgt float* %lfp.01347, %fp, !dbg !454
  %or.cond = and i1 %cmp201, %cmp204, !dbg !454
  call void @llvm.dbg.value(metadata !{i32 %add200}, i64 0, metadata !104), !dbg !455
  %mindiff.1 = select i1 %or.cond, i32 %add200, i32 %mindiff.01346, !dbg !454
  %cmp88 = icmp ult float* %incdec.ptr192, %add.ptr, !dbg !394
  br i1 %cmp88, label %while.body90, label %while.end208, !dbg !394

while.end208:                                     ; preds = %if.end190, %if.end77
  %errval.0.lcssa = phi i32 [ 1, %if.end77 ], [ %errval.3, %if.end190 ]
  %mindiff.0.lcssa = phi i32 [ 2147483647, %if.end77 ], [ %mindiff.1, %if.end190 ]
  %call210 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx83) #7, !dbg !456
  %call212 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx82) #7, !dbg !457
  %call214 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx81) #7, !dbg !458
  %call216 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx86) #7, !dbg !459
  %call218 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx85) #7, !dbg !460
  %call220 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx84) #7, !dbg !461
  %46 = load i32* %arrayidx86, align 4, !dbg !462, !tbaa !372
  %conv222 = sitofp i32 %46 to float, !dbg !462
  %47 = load i32* %arrayidx83, align 4, !dbg !462, !tbaa !372
  %conv224 = sitofp i32 %47 to float, !dbg !462
  %sub225 = fsub float %conv222, %conv224, !dbg !462
  %cmp226 = fcmp ult float %sub225, 0x41E0000000000000, !dbg !462
  %48 = load i32* %arrayidx85, align 4, !dbg !462, !tbaa !372
  br i1 %cmp226, label %lor.lhs.false228, label %while.end208.if.then244_crit_edge, !dbg !462

while.end208.if.then244_crit_edge:                ; preds = %while.end208
  %.pre1364.pre = load i32* %arrayidx82, align 4, !dbg !463, !tbaa !372
  br label %if.then244, !dbg !462

lor.lhs.false228:                                 ; preds = %while.end208
  %conv230 = sitofp i32 %48 to float, !dbg !462
  %49 = load i32* %arrayidx82, align 4, !dbg !462, !tbaa !372
  %conv232 = sitofp i32 %49 to float, !dbg !462
  %sub233 = fsub float %conv230, %conv232, !dbg !462
  %cmp234 = fcmp ult float %sub233, 0x41E0000000000000, !dbg !462
  br i1 %cmp234, label %lor.lhs.false236, label %if.then244, !dbg !462

lor.lhs.false236:                                 ; preds = %lor.lhs.false228
  %50 = load i32* %arrayidx84, align 4, !dbg !462, !tbaa !372
  %conv238 = sitofp i32 %50 to float, !dbg !462
  %51 = load i32* %arrayidx81, align 4, !dbg !462, !tbaa !372
  %conv240 = sitofp i32 %51 to float, !dbg !462
  %sub241 = fsub float %conv238, %conv240, !dbg !462
  %cmp242 = fcmp ult float %sub241, 0x41E0000000000000, !dbg !462
  br i1 %cmp242, label %if.end245, label %if.then244, !dbg !462

if.then244:                                       ; preds = %lor.lhs.false228, %while.end208.if.then244_crit_edge, %lor.lhs.false236
  %.pre1364 = phi i32 [ %.pre1364.pre, %while.end208.if.then244_crit_edge ], [ %49, %lor.lhs.false236 ], [ %49, %lor.lhs.false228 ]
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !147), !dbg !464
  %.pre1365 = load i32* %arrayidx84, align 4, !dbg !466, !tbaa !372
  %.pre1366 = load i32* %arrayidx81, align 4, !dbg !466, !tbaa !372
  br label %if.end245, !dbg !467

if.end245:                                        ; preds = %lor.lhs.false236, %if.then244
  %52 = phi i32 [ %.pre1366, %if.then244 ], [ %51, %lor.lhs.false236 ]
  %53 = phi i32 [ %.pre1365, %if.then244 ], [ %50, %lor.lhs.false236 ]
  %54 = phi i32 [ %.pre1364, %if.then244 ], [ %49, %lor.lhs.false236 ]
  %errval.4 = phi i32 [ 0, %if.then244 ], [ %errval.0.lcssa, %lor.lhs.false236 ]
  %sub248 = add i32 %46, 1, !dbg !468
  %add249 = sub i32 %sub248, %47, !dbg !468
  %arrayidx250 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 0, !dbg !468
  store i32 %add249, i32* %arrayidx250, align 4, !dbg !468, !tbaa !372
  %sub253 = add i32 %48, 1, !dbg !463
  %add254 = sub i32 %sub253, %54, !dbg !463
  %arrayidx255 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 1, !dbg !463
  store i32 %add254, i32* %arrayidx255, align 4, !dbg !463, !tbaa !372
  %sub258 = sub nsw i32 %53, %52, !dbg !466
  %add259 = add nsw i32 %sub258, 1, !dbg !466
  %arrayidx260 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 2, !dbg !466
  store i32 %add259, i32* %arrayidx260, align 4, !dbg !466, !tbaa !372
  %or = or i32 %add254, %add249, !dbg !469
  %or264 = or i32 %or, %add259, !dbg !469
  %cmp265 = icmp ugt i32 %or264, 16777215, !dbg !469
  br i1 %cmp265, label %if.then267, label %if.else277, !dbg !469

if.then267:                                       ; preds = %if.end245
  tail call void @llvm.dbg.value(metadata !{i32 %add249}, i64 0, metadata !470), !dbg !473
  tail call void @llvm.dbg.value(metadata !321, i64 0, metadata !474), !dbg !475
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !476), !dbg !477
  %not.cmp4.i = icmp eq i32 %sub248, %47, !dbg !478
  br i1 %not.cmp4.i, label %sizeofint.exit, label %while.body.i

while.body.i:                                     ; preds = %if.then267, %while.body.i
  %num_of_bits.06.i = phi i32 [ %inc.i, %while.body.i ], [ 0, %if.then267 ]
  %num.05.i = phi i32 [ %shl.i, %while.body.i ], [ 1, %if.then267 ]
  %inc.i = add nsw i32 %num_of_bits.06.i, 1, !dbg !479
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !476), !dbg !479
  %shl.i = shl i32 %num.05.i, 1, !dbg !481
  tail call void @llvm.dbg.value(metadata !{i32 %shl.i}, i64 0, metadata !474), !dbg !481
  %cmp1.i = icmp slt i32 %inc.i, 32, !dbg !478
  %not.cmp.i = icmp ule i32 %shl.i, %add249, !dbg !478
  %.cmp1.i = and i1 %cmp1.i, %not.cmp.i, !dbg !478
  br i1 %.cmp1.i, label %while.body.i, label %sizeofint.exit

sizeofint.exit:                                   ; preds = %while.body.i, %if.then267
  %num_of_bits.0.lcssa.i = phi i32 [ 0, %if.then267 ], [ %inc.i, %while.body.i ]
  tail call void @llvm.dbg.value(metadata !{i32 %add254}, i64 0, metadata !482), !dbg !484
  tail call void @llvm.dbg.value(metadata !321, i64 0, metadata !485), !dbg !486
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !487), !dbg !488
  %not.cmp4.i1249 = icmp eq i32 %sub253, %54, !dbg !489
  br i1 %not.cmp4.i1249, label %sizeofint.exit1259, label %while.body.i1257

while.body.i1257:                                 ; preds = %sizeofint.exit, %while.body.i1257
  %num_of_bits.06.i1250 = phi i32 [ %inc.i1252, %while.body.i1257 ], [ 0, %sizeofint.exit ]
  %num.05.i1251 = phi i32 [ %shl.i1253, %while.body.i1257 ], [ 1, %sizeofint.exit ]
  %inc.i1252 = add nsw i32 %num_of_bits.06.i1250, 1, !dbg !490
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i1252}, i64 0, metadata !487), !dbg !490
  %shl.i1253 = shl i32 %num.05.i1251, 1, !dbg !491
  tail call void @llvm.dbg.value(metadata !{i32 %shl.i1253}, i64 0, metadata !485), !dbg !491
  %cmp1.i1254 = icmp slt i32 %inc.i1252, 32, !dbg !489
  %not.cmp.i1255 = icmp ule i32 %shl.i1253, %add254, !dbg !489
  %.cmp1.i1256 = and i1 %cmp1.i1254, %not.cmp.i1255, !dbg !489
  br i1 %.cmp1.i1256, label %while.body.i1257, label %sizeofint.exit1259

sizeofint.exit1259:                               ; preds = %while.body.i1257, %sizeofint.exit
  %num_of_bits.0.lcssa.i1258 = phi i32 [ 0, %sizeofint.exit ], [ %inc.i1252, %while.body.i1257 ]
  tail call void @llvm.dbg.value(metadata !{i32 %add259}, i64 0, metadata !492), !dbg !494
  tail call void @llvm.dbg.value(metadata !321, i64 0, metadata !495), !dbg !496
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !497), !dbg !498
  %not.cmp4.i1260 = icmp eq i32 %add259, 0, !dbg !499
  br i1 %not.cmp4.i1260, label %if.end279, label %while.body.i1268

while.body.i1268:                                 ; preds = %sizeofint.exit1259, %while.body.i1268
  %num_of_bits.06.i1261 = phi i32 [ %inc.i1263, %while.body.i1268 ], [ 0, %sizeofint.exit1259 ]
  %num.05.i1262 = phi i32 [ %shl.i1264, %while.body.i1268 ], [ 1, %sizeofint.exit1259 ]
  %inc.i1263 = add nsw i32 %num_of_bits.06.i1261, 1, !dbg !500
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i1263}, i64 0, metadata !497), !dbg !500
  %shl.i1264 = shl i32 %num.05.i1262, 1, !dbg !501
  tail call void @llvm.dbg.value(metadata !{i32 %shl.i1264}, i64 0, metadata !495), !dbg !501
  %cmp1.i1265 = icmp slt i32 %inc.i1263, 32, !dbg !499
  %not.cmp.i1266 = icmp ule i32 %shl.i1264, %add259, !dbg !499
  %.cmp1.i1267 = and i1 %cmp1.i1265, %not.cmp.i1266, !dbg !499
  br i1 %.cmp1.i1267, label %while.body.i1268, label %if.end279

if.else277:                                       ; preds = %if.end245
  %call278 = call fastcc i32 @sizeofints(i32* %arrayidx250) #10, !dbg !502
  call void @llvm.dbg.value(metadata !{i32 %call278}, i64 0, metadata !145), !dbg !502
  br label %if.end279

if.end279:                                        ; preds = %while.body.i1268, %sizeofint.exit1259, %if.else277
  %bitsizeint.sroa.2.0 = phi i32 [ undef, %if.else277 ], [ 0, %sizeofint.exit1259 ], [ %inc.i1263, %while.body.i1268 ]
  %bitsizeint.sroa.1.0 = phi i32 [ undef, %if.else277 ], [ %num_of_bits.0.lcssa.i1258, %sizeofint.exit1259 ], [ %num_of_bits.0.lcssa.i1258, %while.body.i1268 ]
  %bitsizeint.sroa.0.0 = phi i32 [ undef, %if.else277 ], [ %num_of_bits.0.lcssa.i, %sizeofint.exit1259 ], [ %num_of_bits.0.lcssa.i, %while.body.i1268 ]
  %bitsize.0 = phi i32 [ %call278, %if.else277 ], [ 0, %sizeofint.exit1259 ], [ 0, %while.body.i1268 ]
  %55 = load i32** @xdr3dfcoord.ip, align 8, !dbg !504, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %55}, i64 0, metadata !121), !dbg !504
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !113), !dbg !506
  call void @llvm.dbg.value(metadata !505, i64 0, metadata !113), !dbg !507
  store i32 9, i32* %smallidx, align 4, !dbg !507, !tbaa !372
  call void @llvm.dbg.value(metadata !{i32* %smallidx}, i64 0, metadata !113), !dbg !509
  br label %land.rhs, !dbg !509

while.cond280:                                    ; preds = %land.rhs
  call void @llvm.dbg.value(metadata !510, i64 0, metadata !113), !dbg !507
  %56 = trunc i64 %indvars.iv.next1360 to i32, !dbg !507
  call void @llvm.dbg.value(metadata !{i32 %56}, i64 0, metadata !113), !dbg !507
  store i32 %56, i32* %smallidx, align 4, !dbg !507, !tbaa !372
  call void @llvm.dbg.value(metadata !{i32* %smallidx}, i64 0, metadata !113), !dbg !509
  %cmp282 = icmp ult i32 %56, 73, !dbg !509
  br i1 %cmp282, label %land.rhs, label %while.end290, !dbg !509

land.rhs:                                         ; preds = %if.end279, %while.cond280
  %indvars.iv1359 = phi i64 [ 9, %if.end279 ], [ %indvars.iv.next1360, %while.cond280 ]
  %arrayidx285 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %indvars.iv1359, !dbg !509
  %57 = load i32* %arrayidx285, align 4, !dbg !509, !tbaa !372
  %cmp286 = icmp slt i32 %57, %mindiff.0.lcssa, !dbg !509
  %indvars.iv.next1360 = add i64 %indvars.iv1359, 1, !dbg !509
  br i1 %cmp286, label %while.cond280, label %while.end290

while.end290:                                     ; preds = %while.cond280, %land.rhs
  %call291 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %smallidx) #7, !dbg !511
  call void @llvm.dbg.value(metadata !{i32* %smallidx}, i64 0, metadata !113), !dbg !512
  %58 = load i32* %smallidx, align 4, !dbg !512, !tbaa !372
  %add292 = add nsw i32 %58, 8, !dbg !512
  %cmp294 = icmp ugt i32 %add292, 73, !dbg !512
  %.add292 = select i1 %cmp294, i32 73, i32 %add292, !dbg !512
  call void @llvm.dbg.value(metadata !{i32 %.add292}, i64 0, metadata !115), !dbg !512
  %sub299 = add nsw i32 %.add292, -8, !dbg !513
  call void @llvm.dbg.value(metadata !{i32 %sub299}, i64 0, metadata !114), !dbg !513
  call void @llvm.dbg.value(metadata !{i32* %smallidx}, i64 0, metadata !113), !dbg !514
  %cmp301 = icmp slt i32 %58, 10, !dbg !514
  br i1 %cmp301, label %cond.end306, label %cond.false304, !dbg !514

cond.false304:                                    ; preds = %while.end290
  %sub300 = add nsw i32 %58, -1, !dbg !514
  %phitmp1210 = sext i32 %sub300 to i64, !dbg !514
  br label %cond.end306, !dbg !514

cond.end306:                                      ; preds = %while.end290, %cond.false304
  %cond307 = phi i64 [ %phitmp1210, %cond.false304 ], [ 9, %while.end290 ]
  %arrayidx309 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %cond307, !dbg !514
  %59 = load i32* %arrayidx309, align 4, !dbg !514, !tbaa !372
  %div = sdiv i32 %59, 2, !dbg !514
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !126), !dbg !514
  call void @llvm.dbg.value(metadata !{i32* %smallidx}, i64 0, metadata !113), !dbg !515
  %idxprom310 = sext i32 %58 to i64, !dbg !515
  %arrayidx311 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom310, !dbg !515
  %60 = load i32* %arrayidx311, align 4, !dbg !515, !tbaa !372
  %div312 = sdiv i32 %60, 2, !dbg !515
  call void @llvm.dbg.value(metadata !{i32 %div312}, i64 0, metadata !125), !dbg !515
  %arrayidx315 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 2, !dbg !516
  store i32 %60, i32* %arrayidx315, align 4, !dbg !516, !tbaa !372
  %arrayidx316 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 1, !dbg !516
  store i32 %60, i32* %arrayidx316, align 4, !dbg !516, !tbaa !372
  %arrayidx317 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 0, !dbg !516
  store i32 %60, i32* %arrayidx317, align 4, !dbg !516, !tbaa !372
  %idxprom318 = sext i32 %.add292 to i64, !dbg !517
  %arrayidx319 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom318, !dbg !517
  %61 = load i32* %arrayidx319, align 4, !dbg !517, !tbaa !372
  %div320 = sdiv i32 %61, 2, !dbg !517
  call void @llvm.dbg.value(metadata !{i32 %div320}, i64 0, metadata !127), !dbg !517
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !128), !dbg !518
  %arrayidx404 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 0, !dbg !519
  %arrayidx408 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 1, !dbg !521
  %arrayidx412 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 2, !dbg !522
  %cmp413 = icmp eq i32 %bitsize.0, 0, !dbg !523
  br label %while.cond321.outer, !dbg !524

while.cond321.outer:                              ; preds = %if.end564, %cond.end306
  %smallnum.0.ph = phi i32 [ %div312, %cond.end306 ], [ %smallnum.1, %if.end564 ]
  %smaller.0.ph = phi i32 [ %div, %cond.end306 ], [ %smaller.1, %if.end564 ]
  %i.0.ph = phi i32 [ 0, %cond.end306 ], [ %i.1.lcssa, %if.end564 ]
  %prevrun.0.ph = phi i32 [ -1, %cond.end306 ], [ %prevrun.1, %if.end564 ]
  %prevcoord.sroa.2.0.ph = phi i32 [ undef, %cond.end306 ], [ %prevcoord.sroa.2.1.lcssa, %if.end564 ]
  %prevcoord.sroa.1.0.ph = phi i32 [ undef, %cond.end306 ], [ %prevcoord.sroa.1.1.lcssa, %if.end564 ]
  %prevcoord.sroa.0.0.ph = phi i32 [ undef, %cond.end306 ], [ %prevcoord.sroa.0.1.lcssa, %if.end564 ]
  %mul473 = mul nsw i32 %smaller.0.ph, %smaller.0.ph, !dbg !525
  br label %while.cond321

while.cond321:                                    ; preds = %while.cond321.outer, %for.end
  %i.0 = phi i32 [ %i.1.lcssa, %for.end ], [ %i.0.ph, %while.cond321.outer ]
  %prevrun.0 = phi i32 [ %prevrun.1, %for.end ], [ %prevrun.0.ph, %while.cond321.outer ]
  %prevcoord.sroa.2.0 = phi i32 [ %prevcoord.sroa.2.1.lcssa, %for.end ], [ %prevcoord.sroa.2.0.ph, %while.cond321.outer ]
  %prevcoord.sroa.1.0 = phi i32 [ %prevcoord.sroa.1.1.lcssa, %for.end ], [ %prevcoord.sroa.1.0.ph, %while.cond321.outer ]
  %prevcoord.sroa.0.0 = phi i32 [ %prevcoord.sroa.0.1.lcssa, %for.end ], [ %prevcoord.sroa.0.0.ph, %while.cond321.outer ]
  %62 = load i32* %size, align 4, !dbg !524, !tbaa !372
  %cmp322 = icmp slt i32 %i.0, %62, !dbg !524
  br i1 %cmp322, label %while.body324, label %while.end571, !dbg !524

while.body324:                                    ; preds = %while.cond321
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !129), !dbg !527
  %mul325 = mul nsw i32 %i.0, 3, !dbg !528
  %idx.ext326 = sext i32 %mul325 to i64, !dbg !528
  %add.ptr327 = getelementptr inbounds i32* %55, i64 %idx.ext326, !dbg !528
  call void @llvm.dbg.value(metadata !{i32* %add.ptr327}, i64 0, metadata !136), !dbg !528
  call void @llvm.dbg.value(metadata !{i32* %smallidx}, i64 0, metadata !113), !dbg !529
  %63 = load i32* %smallidx, align 4, !dbg !529, !tbaa !372
  %cmp328 = icmp slt i32 %63, %.add292, !dbg !529
  %cmp331 = icmp sgt i32 %i.0, 0, !dbg !529
  %or.cond1244 = and i1 %cmp328, %cmp331, !dbg !529
  br i1 %or.cond1244, label %land.lhs.true333, label %if.else355, !dbg !529

land.lhs.true333:                                 ; preds = %while.body324
  %64 = load i32* %add.ptr327, align 4, !dbg !530, !tbaa !372
  %sub336 = sub nsw i32 %64, %prevcoord.sroa.0.0, !dbg !530
  %ispos1228 = icmp sgt i32 %sub336, -1, !dbg !530
  %neg1229 = sub i32 0, %sub336, !dbg !530
  %65 = select i1 %ispos1228, i32 %sub336, i32 %neg1229, !dbg !530
  %cmp338 = icmp slt i32 %65, %div320, !dbg !530
  br i1 %cmp338, label %land.lhs.true340, label %if.else355, !dbg !530

land.lhs.true340:                                 ; preds = %land.lhs.true333
  %add.ptr327.sum1230 = add i64 %idx.ext326, 1, !dbg !531
  %arrayidx341 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1230, !dbg !531
  %66 = load i32* %arrayidx341, align 4, !dbg !531, !tbaa !372
  %sub343 = sub nsw i32 %66, %prevcoord.sroa.1.0, !dbg !531
  %ispos1231 = icmp sgt i32 %sub343, -1, !dbg !531
  %neg1232 = sub i32 0, %sub343, !dbg !531
  %67 = select i1 %ispos1231, i32 %sub343, i32 %neg1232, !dbg !531
  %cmp345 = icmp slt i32 %67, %div320, !dbg !531
  br i1 %cmp345, label %land.lhs.true347, label %if.else355, !dbg !531

land.lhs.true347:                                 ; preds = %land.lhs.true340
  %add.ptr327.sum1233 = add i64 %idx.ext326, 2, !dbg !532
  %arrayidx348 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1233, !dbg !532
  %68 = load i32* %arrayidx348, align 4, !dbg !532, !tbaa !372
  %sub350 = sub nsw i32 %68, %prevcoord.sroa.2.0, !dbg !532
  %ispos1234 = icmp sgt i32 %sub350, -1, !dbg !532
  %neg1235 = sub i32 0, %sub350, !dbg !532
  %69 = select i1 %ispos1234, i32 %sub350, i32 %neg1235, !dbg !532
  %cmp352 = icmp slt i32 %69, %div320, !dbg !532
  br i1 %cmp352, label %if.end361, label %if.else355, !dbg !532

if.else355:                                       ; preds = %land.lhs.true347, %land.lhs.true340, %land.lhs.true333, %while.body324
  call void @llvm.dbg.value(metadata !{i32* %smallidx}, i64 0, metadata !113), !dbg !533
  %cmp356 = icmp sgt i32 %63, %sub299, !dbg !533
  %. = sext i1 %cmp356 to i32, !dbg !534
  br label %if.end361, !dbg !534

if.end361:                                        ; preds = %if.else355, %land.lhs.true347
  %is_smaller.0 = phi i32 [ 1, %land.lhs.true347 ], [ %., %if.else355 ]
  %add362 = add nsw i32 %i.0, 1, !dbg !536
  %cmp363 = icmp slt i32 %add362, %62, !dbg !536
  %70 = load i32* %add.ptr327, align 4, !dbg !537, !tbaa !372
  br i1 %cmp363, label %if.then365, label %if.end400, !dbg !536

if.then365:                                       ; preds = %if.end361
  %add.ptr327.sum1217 = add i64 %idx.ext326, 3, !dbg !537
  %arrayidx367 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1217, !dbg !537
  %71 = load i32* %arrayidx367, align 4, !dbg !537, !tbaa !372
  %sub368 = sub nsw i32 %70, %71, !dbg !537
  %ispos1218 = icmp sgt i32 %sub368, -1, !dbg !537
  %neg1219 = sub i32 0, %sub368, !dbg !537
  %72 = select i1 %ispos1218, i32 %sub368, i32 %neg1219, !dbg !537
  %cmp370 = icmp slt i32 %72, %smallnum.0.ph, !dbg !537
  br i1 %cmp370, label %land.lhs.true372, label %if.end400, !dbg !537

land.lhs.true372:                                 ; preds = %if.then365
  %add.ptr327.sum1220 = add i64 %idx.ext326, 1, !dbg !539
  %arrayidx373 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1220, !dbg !539
  %73 = load i32* %arrayidx373, align 4, !dbg !539, !tbaa !372
  %add.ptr327.sum1221 = add i64 %idx.ext326, 4, !dbg !539
  %arrayidx374 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1221, !dbg !539
  %74 = load i32* %arrayidx374, align 4, !dbg !539, !tbaa !372
  %sub375 = sub nsw i32 %73, %74, !dbg !539
  %ispos1222 = icmp sgt i32 %sub375, -1, !dbg !539
  %neg1223 = sub i32 0, %sub375, !dbg !539
  %75 = select i1 %ispos1222, i32 %sub375, i32 %neg1223, !dbg !539
  %cmp377 = icmp slt i32 %75, %smallnum.0.ph, !dbg !539
  br i1 %cmp377, label %land.lhs.true379, label %if.end400, !dbg !539

land.lhs.true379:                                 ; preds = %land.lhs.true372
  %add.ptr327.sum1224 = add i64 %idx.ext326, 2, !dbg !540
  %arrayidx380 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1224, !dbg !540
  %76 = load i32* %arrayidx380, align 4, !dbg !540, !tbaa !372
  %add.ptr327.sum1225 = add i64 %idx.ext326, 5, !dbg !540
  %arrayidx381 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1225, !dbg !540
  %77 = load i32* %arrayidx381, align 4, !dbg !540, !tbaa !372
  %sub382 = sub nsw i32 %76, %77, !dbg !540
  %ispos1226 = icmp sgt i32 %sub382, -1, !dbg !540
  %neg1227 = sub i32 0, %sub382, !dbg !540
  %78 = select i1 %ispos1226, i32 %sub382, i32 %neg1227, !dbg !540
  %cmp384 = icmp slt i32 %78, %smallnum.0.ph, !dbg !540
  br i1 %cmp384, label %if.then386, label %if.end400, !dbg !540

if.then386:                                       ; preds = %land.lhs.true379
  call void @llvm.dbg.value(metadata !{i32 %70}, i64 0, metadata !135), !dbg !541
  store i32 %71, i32* %add.ptr327, align 4, !dbg !541, !tbaa !372
  store i32 %70, i32* %arrayidx367, align 4, !dbg !543, !tbaa !372
  call void @llvm.dbg.value(metadata !{i32 %73}, i64 0, metadata !135), !dbg !544
  store i32 %74, i32* %arrayidx373, align 4, !dbg !544, !tbaa !372
  store i32 %73, i32* %arrayidx374, align 4, !dbg !545, !tbaa !372
  call void @llvm.dbg.value(metadata !{i32 %76}, i64 0, metadata !135), !dbg !546
  store i32 %77, i32* %arrayidx380, align 4, !dbg !546, !tbaa !372
  store i32 %76, i32* %arrayidx381, align 4, !dbg !547, !tbaa !372
  call void @llvm.dbg.value(metadata !321, i64 0, metadata !129), !dbg !548
  br label %if.end400, !dbg !549

if.end400:                                        ; preds = %if.end361, %land.lhs.true372, %if.then365, %land.lhs.true379, %if.then386
  %79 = phi i32 [ %71, %if.then386 ], [ %70, %land.lhs.true379 ], [ %70, %if.then365 ], [ %70, %land.lhs.true372 ], [ %70, %if.end361 ]
  %is_small.0 = phi i32 [ 1, %if.then386 ], [ 0, %land.lhs.true379 ], [ 0, %if.then365 ], [ 0, %land.lhs.true372 ], [ 0, %if.end361 ]
  %80 = load i32* %arrayidx83, align 4, !dbg !519, !tbaa !372
  %sub403 = sub nsw i32 %79, %80, !dbg !519
  store i32 %sub403, i32* %arrayidx404, align 16, !dbg !519, !tbaa !372
  %add.ptr327.sum = add i64 %idx.ext326, 1, !dbg !521
  %arrayidx405 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum, !dbg !521
  %81 = load i32* %arrayidx405, align 4, !dbg !521, !tbaa !372
  %82 = load i32* %arrayidx82, align 4, !dbg !521, !tbaa !372
  %sub407 = sub nsw i32 %81, %82, !dbg !521
  store i32 %sub407, i32* %arrayidx408, align 4, !dbg !521, !tbaa !372
  %add.ptr327.sum1211 = add i64 %idx.ext326, 2, !dbg !522
  %arrayidx409 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1211, !dbg !522
  %83 = load i32* %arrayidx409, align 4, !dbg !522, !tbaa !372
  %84 = load i32* %arrayidx81, align 4, !dbg !522, !tbaa !372
  %sub411 = sub nsw i32 %83, %84, !dbg !522
  store i32 %sub411, i32* %arrayidx412, align 8, !dbg !522, !tbaa !372
  %85 = load i32** @xdr3dfcoord.buf, align 8, !dbg !550, !tbaa !304
  br i1 %cmp413, label %if.then415, label %if.else422, !dbg !523

if.then415:                                       ; preds = %if.end400
  call fastcc void @sendbits(i32* %85, i32 %bitsizeint.sroa.0.0, i32 %sub403) #10, !dbg !550
  %86 = load i32** @xdr3dfcoord.buf, align 8, !dbg !552, !tbaa !304
  call fastcc void @sendbits(i32* %86, i32 %bitsizeint.sroa.1.0, i32 %sub407) #10, !dbg !552
  %87 = load i32** @xdr3dfcoord.buf, align 8, !dbg !553, !tbaa !304
  call fastcc void @sendbits(i32* %87, i32 %bitsizeint.sroa.2.0, i32 %sub411) #10, !dbg !553
  br label %if.end425, !dbg !554

if.else422:                                       ; preds = %if.end400
  call fastcc void @sendints(i32* %85, i32 %bitsize.0, i32* %arrayidx250, i32* %arrayidx404) #10, !dbg !555
  br label %if.end425

if.end425:                                        ; preds = %if.else422, %if.then415
  %88 = load i32* %add.ptr327, align 4, !dbg !557, !tbaa !372
  %89 = load i32* %arrayidx405, align 4, !dbg !558, !tbaa !372
  %90 = load i32* %arrayidx409, align 4, !dbg !559, !tbaa !372
  call void @llvm.dbg.value(metadata !{i32* %add.ptr432}, i64 0, metadata !136), !dbg !560
  call void @llvm.dbg.value(metadata !{i32 %add362}, i64 0, metadata !128), !dbg !561
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !131), !dbg !562
  %cmp434 = icmp eq i32 %is_small.0, 0, !dbg !563
  %cmp437 = icmp eq i32 %is_smaller.0, -1, !dbg !563
  %or.cond1245 = and i1 %cmp434, %cmp437, !dbg !563
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !130), !dbg !564
  %.is_smaller.0 = select i1 %or.cond1245, i32 0, i32 %is_smaller.0, !dbg !563
  br i1 %cmp434, label %while.end532, label %while.body446.lr.ph, !dbg !565

while.body446.lr.ph:                              ; preds = %if.end425
  %add.ptr327.sum1212 = add i64 %idx.ext326, 3, !dbg !560
  %add.ptr432 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1212, !dbg !560
  br label %while.body446, !dbg !565

while.body446:                                    ; preds = %while.body446.lr.ph, %while.cond441.backedge
  %indvars.iv = phi i64 [ 0, %while.body446.lr.ph ], [ %indvars.iv.next, %while.cond441.backedge ]
  %prevcoord.sroa.0.11331 = phi i32 [ %88, %while.body446.lr.ph ], [ %98, %while.cond441.backedge ]
  %prevcoord.sroa.1.11330 = phi i32 [ %89, %while.body446.lr.ph ], [ %99, %while.cond441.backedge ]
  %prevcoord.sroa.2.11329 = phi i32 [ %90, %while.body446.lr.ph ], [ %100, %while.cond441.backedge ]
  %thiscoord.01328 = phi i32* [ %add.ptr432, %while.body446.lr.ph ], [ %add.ptr506, %while.cond441.backedge ]
  %run.01327 = phi i32 [ 0, %while.body446.lr.ph ], [ %inc496, %while.cond441.backedge ]
  %is_smaller.11326 = phi i32 [ %.is_smaller.0, %while.body446.lr.ph ], [ %is_smaller.2, %while.cond441.backedge ]
  %i.11325 = phi i32 [ %add362, %while.body446.lr.ph ], [ %inc505, %while.cond441.backedge ]
  %cmp447 = icmp eq i32 %is_smaller.11326, -1, !dbg !525
  %91 = load i32* %thiscoord.01328, align 4, !dbg !525, !tbaa !372
  br i1 %cmp447, label %land.lhs.true449, label %while.body446.if.end477_crit_edge, !dbg !525

while.body446.if.end477_crit_edge:                ; preds = %while.body446
  %arrayidx485.pre = getelementptr inbounds i32* %thiscoord.01328, i64 1, !dbg !566
  %arrayidx492.pre = getelementptr inbounds i32* %thiscoord.01328, i64 2, !dbg !567
  br label %if.end477, !dbg !525

land.lhs.true449:                                 ; preds = %while.body446
  %sub452 = sub nsw i32 %91, %prevcoord.sroa.0.11331, !dbg !525
  %mul456 = mul nsw i32 %sub452, %sub452, !dbg !525
  %arrayidx457 = getelementptr inbounds i32* %thiscoord.01328, i64 1, !dbg !525
  %92 = load i32* %arrayidx457, align 4, !dbg !525, !tbaa !372
  %sub459 = sub nsw i32 %92, %prevcoord.sroa.1.11330, !dbg !525
  %mul463 = mul nsw i32 %sub459, %sub459, !dbg !525
  %add464 = add nsw i32 %mul463, %mul456, !dbg !525
  %arrayidx465 = getelementptr inbounds i32* %thiscoord.01328, i64 2, !dbg !525
  %93 = load i32* %arrayidx465, align 4, !dbg !525, !tbaa !372
  %sub467 = sub nsw i32 %93, %prevcoord.sroa.2.11329, !dbg !525
  %mul471 = mul nsw i32 %sub467, %sub467, !dbg !525
  %add472 = add nsw i32 %add464, %mul471, !dbg !525
  %cmp474 = icmp slt i32 %add472, %mul473, !dbg !525
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !130), !dbg !568
  %is_smaller.1. = sext i1 %cmp474 to i32, !dbg !525
  br label %if.end477, !dbg !525

if.end477:                                        ; preds = %while.body446.if.end477_crit_edge, %land.lhs.true449
  %arrayidx492.pre-phi = phi i32* [ %arrayidx492.pre, %while.body446.if.end477_crit_edge ], [ %arrayidx465, %land.lhs.true449 ], !dbg !567
  %arrayidx485.pre-phi = phi i32* [ %arrayidx485.pre, %while.body446.if.end477_crit_edge ], [ %arrayidx457, %land.lhs.true449 ], !dbg !566
  %is_smaller.2 = phi i32 [ %is_smaller.11326, %while.body446.if.end477_crit_edge ], [ %is_smaller.1., %land.lhs.true449 ]
  %sub480 = sub i32 %smallnum.0.ph, %prevcoord.sroa.0.11331, !dbg !570
  %add481 = add i32 %sub480, %91, !dbg !570
  %94 = add nsw i64 %indvars.iv, 1, !dbg !570
  %arrayidx484 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 %indvars.iv, !dbg !570
  store i32 %add481, i32* %arrayidx484, align 4, !dbg !570, !tbaa !372
  %95 = load i32* %arrayidx485.pre-phi, align 4, !dbg !566, !tbaa !372
  %sub487 = sub i32 %smallnum.0.ph, %prevcoord.sroa.1.11330, !dbg !566
  %add488 = add i32 %sub487, %95, !dbg !566
  %96 = add nsw i64 %indvars.iv, 2, !dbg !566
  %arrayidx491 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 %94, !dbg !566
  store i32 %add488, i32* %arrayidx491, align 4, !dbg !566, !tbaa !372
  %97 = load i32* %arrayidx492.pre-phi, align 4, !dbg !567, !tbaa !372
  %sub494 = sub i32 %smallnum.0.ph, %prevcoord.sroa.2.11329, !dbg !567
  %add495 = add i32 %sub494, %97, !dbg !567
  %indvars.iv.next = add i64 %indvars.iv, 3, !dbg !565
  %inc496 = add nsw i32 %run.01327, 3, !dbg !567
  call void @llvm.dbg.value(metadata !{i32 %inc496}, i64 0, metadata !131), !dbg !567
  %arrayidx498 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 %96, !dbg !567
  store i32 %add495, i32* %arrayidx498, align 4, !dbg !567, !tbaa !372
  %98 = load i32* %thiscoord.01328, align 4, !dbg !571, !tbaa !372
  %99 = load i32* %arrayidx485.pre-phi, align 4, !dbg !572, !tbaa !372
  %100 = load i32* %arrayidx492.pre-phi, align 4, !dbg !573, !tbaa !372
  %inc505 = add nsw i32 %i.11325, 1, !dbg !574
  call void @llvm.dbg.value(metadata !{i32 %inc505}, i64 0, metadata !128), !dbg !574
  %add.ptr506 = getelementptr inbounds i32* %thiscoord.01328, i64 3, !dbg !575
  call void @llvm.dbg.value(metadata !{i32* %add.ptr506}, i64 0, metadata !136), !dbg !575
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !129), !dbg !576
  %101 = load i32* %size, align 4, !dbg !577, !tbaa !372
  %cmp507 = icmp slt i32 %inc505, %101, !dbg !577
  br i1 %cmp507, label %land.lhs.true509, label %while.end532, !dbg !577

land.lhs.true509:                                 ; preds = %if.end477
  %102 = load i32* %add.ptr506, align 4, !dbg !578, !tbaa !372
  %sub512 = sub nsw i32 %102, %98, !dbg !578
  %ispos = icmp sgt i32 %sub512, -1, !dbg !578
  %neg = sub i32 0, %sub512, !dbg !578
  %103 = select i1 %ispos, i32 %sub512, i32 %neg, !dbg !578
  %cmp514 = icmp slt i32 %103, %smallnum.0.ph, !dbg !578
  br i1 %cmp514, label %land.lhs.true516, label %while.end532, !dbg !578

land.lhs.true516:                                 ; preds = %land.lhs.true509
  %arrayidx517 = getelementptr inbounds i32* %thiscoord.01328, i64 4, !dbg !579
  %104 = load i32* %arrayidx517, align 4, !dbg !579, !tbaa !372
  %sub519 = sub nsw i32 %104, %99, !dbg !579
  %ispos1213 = icmp sgt i32 %sub519, -1, !dbg !579
  %neg1214 = sub i32 0, %sub519, !dbg !579
  %105 = select i1 %ispos1213, i32 %sub519, i32 %neg1214, !dbg !579
  %cmp521 = icmp slt i32 %105, %smallnum.0.ph, !dbg !579
  br i1 %cmp521, label %while.cond441.backedge, label %while.end532, !dbg !579

while.cond441.backedge:                           ; preds = %land.lhs.true516
  %arrayidx524 = getelementptr inbounds i32* %thiscoord.01328, i64 5, !dbg !580
  %106 = load i32* %arrayidx524, align 4, !dbg !580, !tbaa !372
  %sub526 = sub nsw i32 %106, %100, !dbg !580
  %ispos1215 = icmp sgt i32 %sub526, -1, !dbg !580
  %neg1216 = sub i32 0, %sub526, !dbg !580
  %107 = select i1 %ispos1215, i32 %sub526, i32 %neg1216, !dbg !580
  %cmp528 = icmp slt i32 %107, %smallnum.0.ph, !dbg !580
  call void @llvm.dbg.value(metadata !321, i64 0, metadata !129), !dbg !581
  %108 = trunc i64 %indvars.iv.next to i32, !dbg !565
  %cmp443 = icmp slt i32 %108, 24, !dbg !565
  %or.cond1246 = and i1 %cmp528, %cmp443, !dbg !565
  br i1 %or.cond1246, label %while.body446, label %while.end532, !dbg !565

while.end532:                                     ; preds = %if.end477, %land.lhs.true509, %land.lhs.true516, %while.cond441.backedge, %if.end425
  %prevcoord.sroa.0.1.lcssa = phi i32 [ %88, %if.end425 ], [ %98, %while.cond441.backedge ], [ %98, %land.lhs.true516 ], [ %98, %land.lhs.true509 ], [ %98, %if.end477 ]
  %prevcoord.sroa.1.1.lcssa = phi i32 [ %89, %if.end425 ], [ %99, %while.cond441.backedge ], [ %99, %land.lhs.true516 ], [ %99, %land.lhs.true509 ], [ %99, %if.end477 ]
  %prevcoord.sroa.2.1.lcssa = phi i32 [ %90, %if.end425 ], [ %100, %while.cond441.backedge ], [ %100, %land.lhs.true516 ], [ %100, %land.lhs.true509 ], [ %100, %if.end477 ]
  %run.0.lcssa = phi i32 [ 0, %if.end425 ], [ %inc496, %while.cond441.backedge ], [ %inc496, %land.lhs.true516 ], [ %inc496, %land.lhs.true509 ], [ %inc496, %if.end477 ]
  %is_smaller.1.lcssa = phi i32 [ %.is_smaller.0, %if.end425 ], [ %is_smaller.2, %while.cond441.backedge ], [ %is_smaller.2, %land.lhs.true516 ], [ %is_smaller.2, %land.lhs.true509 ], [ %is_smaller.2, %if.end477 ]
  %i.1.lcssa = phi i32 [ %add362, %if.end425 ], [ %inc505, %while.cond441.backedge ], [ %inc505, %land.lhs.true516 ], [ %inc505, %land.lhs.true509 ], [ %inc505, %if.end477 ]
  %cmp533 = icmp eq i32 %run.0.lcssa, %prevrun.0, !dbg !583
  %cmp536 = icmp eq i32 %is_smaller.1.lcssa, 0, !dbg !583
  %or.cond1248 = and i1 %cmp533, %cmp536, !dbg !583
  %109 = load i32** @xdr3dfcoord.buf, align 8, !dbg !584, !tbaa !304
  br i1 %or.cond1248, label %if.else541, label %if.then538, !dbg !583

if.then538:                                       ; preds = %while.end532
  call void @llvm.dbg.value(metadata !{i32 %run.0.lcssa}, i64 0, metadata !132), !dbg !586
  call fastcc void @sendbits(i32* %109, i32 1, i32 1) #10, !dbg !588
  %110 = load i32** @xdr3dfcoord.buf, align 8, !dbg !589, !tbaa !304
  %add539 = add i32 %is_smaller.1.lcssa, 1, !dbg !589
  %add540 = add i32 %add539, %run.0.lcssa, !dbg !589
  call fastcc void @sendbits(i32* %110, i32 5, i32 %add540) #10, !dbg !589
  br label %if.end542, !dbg !590

if.else541:                                       ; preds = %while.end532
  call fastcc void @sendbits(i32* %109, i32 1, i32 0) #10, !dbg !584
  br label %if.end542

if.end542:                                        ; preds = %if.else541, %if.then538
  %prevrun.1 = phi i32 [ %run.0.lcssa, %if.then538 ], [ %prevrun.0, %if.else541 ]
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !124), !dbg !591
  %cmp5431338 = icmp sgt i32 %run.0.lcssa, 0, !dbg !591
  br i1 %cmp5431338, label %for.body, label %for.end, !dbg !591

for.body:                                         ; preds = %if.end542, %for.body
  %indvars.iv1357 = phi i64 [ %indvars.iv.next1358, %for.body ], [ 0, %if.end542 ]
  %111 = load i32** @xdr3dfcoord.buf, align 8, !dbg !593, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %smallidx}, i64 0, metadata !113), !dbg !593
  %112 = load i32* %smallidx, align 4, !dbg !593, !tbaa !372
  %arrayidx547 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 %indvars.iv1357, !dbg !593
  call fastcc void @sendints(i32* %111, i32 %112, i32* %arrayidx317, i32* %arrayidx547) #10, !dbg !593
  %indvars.iv.next1358 = add i64 %indvars.iv1357, 3, !dbg !591
  %113 = trunc i64 %indvars.iv.next1358 to i32, !dbg !591
  %cmp543 = icmp slt i32 %113, %run.0.lcssa, !dbg !591
  br i1 %cmp543, label %for.body, label %for.end, !dbg !591

for.end:                                          ; preds = %for.body, %if.end542
  br i1 %cmp536, label %while.cond321, label %if.then551, !dbg !595

if.then551:                                       ; preds = %for.end
  call void @llvm.dbg.value(metadata !{i32* %smallidx}, i64 0, metadata !113), !dbg !596
  %114 = load i32* %smallidx, align 4, !dbg !596, !tbaa !372
  %add552 = add nsw i32 %114, %is_smaller.1.lcssa, !dbg !596
  call void @llvm.dbg.value(metadata !{i32 %add552}, i64 0, metadata !113), !dbg !596
  store i32 %add552, i32* %smallidx, align 4, !dbg !596, !tbaa !372
  %cmp553 = icmp slt i32 %is_smaller.1.lcssa, 0, !dbg !598
  br i1 %cmp553, label %if.then555, label %if.else560, !dbg !598

if.then555:                                       ; preds = %if.then551
  call void @llvm.dbg.value(metadata !{i32 %smaller.0.ph}, i64 0, metadata !125), !dbg !599
  %sub556 = add nsw i32 %add552, -1, !dbg !601
  %idxprom557 = sext i32 %sub556 to i64, !dbg !601
  %arrayidx558 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom557, !dbg !601
  %115 = load i32* %arrayidx558, align 4, !dbg !601, !tbaa !372
  %div559 = sdiv i32 %115, 2, !dbg !601
  call void @llvm.dbg.value(metadata !{i32 %div559}, i64 0, metadata !126), !dbg !601
  %idxprom565.phi.trans.insert = sext i32 %add552 to i64
  %arrayidx566.phi.trans.insert = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom565.phi.trans.insert
  %.pre1367 = load i32* %arrayidx566.phi.trans.insert, align 4, !dbg !602, !tbaa !372
  br label %if.end564, !dbg !603

if.else560:                                       ; preds = %if.then551
  call void @llvm.dbg.value(metadata !{i32 %smallnum.0.ph}, i64 0, metadata !126), !dbg !604
  %idxprom561 = sext i32 %add552 to i64, !dbg !606
  %arrayidx562 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom561, !dbg !606
  %116 = load i32* %arrayidx562, align 4, !dbg !606, !tbaa !372
  %div563 = sdiv i32 %116, 2, !dbg !606
  call void @llvm.dbg.value(metadata !{i32 %div563}, i64 0, metadata !125), !dbg !606
  br label %if.end564

if.end564:                                        ; preds = %if.else560, %if.then555
  %117 = phi i32 [ %.pre1367, %if.then555 ], [ %116, %if.else560 ]
  %smallnum.1 = phi i32 [ %smaller.0.ph, %if.then555 ], [ %div563, %if.else560 ]
  %smaller.1 = phi i32 [ %div559, %if.then555 ], [ %smallnum.0.ph, %if.else560 ]
  call void @llvm.dbg.value(metadata !{i32* %smallidx}, i64 0, metadata !113), !dbg !602
  store i32 %117, i32* %arrayidx315, align 4, !dbg !602, !tbaa !372
  store i32 %117, i32* %arrayidx316, align 4, !dbg !602, !tbaa !372
  store i32 %117, i32* %arrayidx317, align 4, !dbg !602, !tbaa !372
  br label %while.cond321.outer, !dbg !607

while.end571:                                     ; preds = %while.cond321
  %118 = load i32** @xdr3dfcoord.buf, align 8, !dbg !608, !tbaa !304
  %arrayidx572 = getelementptr inbounds i32* %118, i64 1, !dbg !608
  %119 = load i32* %arrayidx572, align 4, !dbg !608, !tbaa !372
  %cmp573 = icmp eq i32 %119, 0, !dbg !608
  br i1 %cmp573, label %if.end578, label %if.then575, !dbg !608

if.then575:                                       ; preds = %while.end571
  %120 = load i32* %118, align 4, !dbg !608, !tbaa !372
  %inc577 = add nsw i32 %120, 1, !dbg !608
  store i32 %inc577, i32* %118, align 4, !dbg !608, !tbaa !372
  br label %if.end578, !dbg !608

if.end578:                                        ; preds = %while.end571, %if.then575
  %call580 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %118) #7, !dbg !609
  %121 = load i32** @xdr3dfcoord.buf, align 8, !dbg !610, !tbaa !304
  %arrayidx581 = getelementptr inbounds i32* %121, i64 3, !dbg !610
  %122 = bitcast i32* %arrayidx581 to i8*, !dbg !610
  %123 = load i32* %121, align 4, !dbg !610, !tbaa !372
  %call583 = call i32 @xdr_opaque(%struct.XDR* %xdrs, i8* %122, i32 %123) #7, !dbg !610
  %mul584 = mul nsw i32 %call583, %errval.4, !dbg !610
  br label %cleanup, !dbg !610

if.else585:                                       ; preds = %while.end
  %call586 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %lsize) #7, !dbg !611
  %cmp587 = icmp eq i32 %call586, 0, !dbg !611
  br i1 %cmp587, label %cleanup, label %if.end590, !dbg !611

if.end590:                                        ; preds = %if.else585
  %124 = load i32* %size, align 4, !dbg !613, !tbaa !372
  %cmp591 = icmp eq i32 %124, 0, !dbg !613
  br i1 %cmp591, label %if.end598thread-pre-split, label %land.lhs.true593, !dbg !613

land.lhs.true593:                                 ; preds = %if.end590
  call void @llvm.dbg.value(metadata !{i32* %lsize}, i64 0, metadata !144), !dbg !613
  %125 = load i32* %lsize, align 4, !dbg !613, !tbaa !372
  %cmp594 = icmp eq i32 %125, %124, !dbg !613
  br i1 %cmp594, label %if.end598, label %if.then596, !dbg !613

if.then596:                                       ; preds = %land.lhs.true593
  %126 = load %struct._IO_FILE** @stderr, align 8, !dbg !614, !tbaa !304
  %call597 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([65 x i8]* @.str8, i64 0, i64 0), i32 %124, i32 %125) #7, !dbg !614
  br label %if.end598thread-pre-split, !dbg !616

if.end598thread-pre-split:                        ; preds = %if.then596, %if.end590
  call void @llvm.dbg.value(metadata !{i32* %lsize}, i64 0, metadata !144), !dbg !617
  %.pr = load i32* %lsize, align 4, !dbg !617, !tbaa !372
  br label %if.end598

if.end598:                                        ; preds = %if.end598thread-pre-split, %land.lhs.true593
  %127 = phi i32 [ %.pr, %if.end598thread-pre-split ], [ %124, %land.lhs.true593 ], !dbg !617
  call void @llvm.dbg.value(metadata !{i32* %lsize}, i64 0, metadata !144), !dbg !617
  store i32 %127, i32* %size, align 4, !dbg !617, !tbaa !372
  %mul599 = mul nsw i32 %127, 3, !dbg !618
  call void @llvm.dbg.value(metadata !{i32 %mul599}, i64 0, metadata !120), !dbg !618
  %cmp600 = icmp slt i32 %127, 10, !dbg !619
  br i1 %cmp600, label %if.then602, label %if.end604, !dbg !619

if.then602:                                       ; preds = %if.end598
  %128 = bitcast float* %fp to i8*, !dbg !620
  %call603 = call i32 @xdr_vector(%struct.XDR* %xdrs, i8* %128, i32 %mul599, i32 4, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, float*)* @xdr_float to i32 (%struct.XDR*, i8*, ...)*)) #7, !dbg !620
  br label %cleanup, !dbg !620

if.end604:                                        ; preds = %if.end598
  %call605 = call i32 @xdr_float(%struct.XDR* %xdrs, float* %precision) #7, !dbg !622
  %129 = load i32** @xdr3dfcoord.ip, align 8, !dbg !623, !tbaa !304
  %cmp606 = icmp eq i32* %129, null, !dbg !623
  br i1 %cmp606, label %if.then608, label %if.else628, !dbg !623

if.then608:                                       ; preds = %if.end604
  %conv609 = zext i32 %mul599 to i64, !dbg !624
  %mul610 = shl nuw nsw i64 %conv609, 2, !dbg !624
  %call611 = call noalias i8* @malloc(i64 %mul610) #7, !dbg !624
  %130 = bitcast i8* %call611 to i32*, !dbg !624
  store i32* %130, i32** @xdr3dfcoord.ip, align 8, !dbg !624, !tbaa !304
  %cmp612 = icmp eq i8* %call611, null, !dbg !626
  br i1 %cmp612, label %if.then614, label %if.end616, !dbg !626

if.then614:                                       ; preds = %if.then608
  %131 = load %struct._IO_FILE** @stderr, align 8, !dbg !627, !tbaa !304
  %132 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %131), !dbg !627
  call void @exit(i32 1) #8, !dbg !629
  unreachable, !dbg !629

if.end616:                                        ; preds = %if.then608
  %conv617 = uitofp i32 %mul599 to double, !dbg !630
  %mul618 = fmul double %conv617, 1.200000e+00, !dbg !630
  %conv619 = fptosi double %mul618 to i32, !dbg !630
  call void @llvm.dbg.value(metadata !{i32 %conv619}, i64 0, metadata !142), !dbg !630
  %conv620 = sext i32 %conv619 to i64, !dbg !631
  %mul621 = shl nsw i64 %conv620, 2, !dbg !631
  %call622 = call noalias i8* @malloc(i64 %mul621) #7, !dbg !631
  %133 = bitcast i8* %call622 to i32*, !dbg !631
  store i32* %133, i32** @xdr3dfcoord.buf, align 8, !dbg !631, !tbaa !304
  %cmp623 = icmp eq i8* %call622, null, !dbg !632
  br i1 %cmp623, label %if.then625, label %if.end627, !dbg !632

if.then625:                                       ; preds = %if.end616
  %134 = load %struct._IO_FILE** @stderr, align 8, !dbg !633, !tbaa !304
  %135 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %134), !dbg !633
  call void @exit(i32 1) #8, !dbg !635
  unreachable, !dbg !635

if.end627:                                        ; preds = %if.end616
  %136 = load i32* %size, align 4, !dbg !636, !tbaa !372
  store i32 %136, i32* @xdr3dfcoord.oldsize, align 4, !dbg !636, !tbaa !372
  br label %if.end652, !dbg !637

if.else628:                                       ; preds = %if.end604
  %137 = load i32* %size, align 4, !dbg !638, !tbaa !372
  %138 = load i32* @xdr3dfcoord.oldsize, align 4, !dbg !638, !tbaa !372
  %cmp629 = icmp sgt i32 %137, %138, !dbg !638
  br i1 %cmp629, label %if.then631, label %if.else628.if.end652_crit_edge, !dbg !638

if.else628.if.end652_crit_edge:                   ; preds = %if.else628
  %.pre1368 = load i32** @xdr3dfcoord.buf, align 8, !dbg !639, !tbaa !304
  br label %if.end652, !dbg !638

if.then631:                                       ; preds = %if.else628
  %139 = bitcast i32* %129 to i8*, !dbg !640
  %conv632 = zext i32 %mul599 to i64, !dbg !640
  %mul633 = shl nuw nsw i64 %conv632, 2, !dbg !640
  %call634 = call i8* @realloc(i8* %139, i64 %mul633) #7, !dbg !640
  %140 = bitcast i8* %call634 to i32*, !dbg !640
  store i32* %140, i32** @xdr3dfcoord.ip, align 8, !dbg !640, !tbaa !304
  %cmp635 = icmp eq i8* %call634, null, !dbg !642
  br i1 %cmp635, label %if.then637, label %if.end639, !dbg !642

if.then637:                                       ; preds = %if.then631
  %141 = load %struct._IO_FILE** @stderr, align 8, !dbg !643, !tbaa !304
  %142 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %141), !dbg !643
  call void @exit(i32 1) #8, !dbg !645
  unreachable, !dbg !645

if.end639:                                        ; preds = %if.then631
  %conv640 = uitofp i32 %mul599 to double, !dbg !646
  %mul641 = fmul double %conv640, 1.200000e+00, !dbg !646
  %conv642 = fptosi double %mul641 to i32, !dbg !646
  call void @llvm.dbg.value(metadata !{i32 %conv642}, i64 0, metadata !142), !dbg !646
  %143 = load i32** @xdr3dfcoord.buf, align 8, !dbg !647, !tbaa !304
  %144 = bitcast i32* %143 to i8*, !dbg !647
  %conv643 = sext i32 %conv642 to i64, !dbg !647
  %mul644 = shl nsw i64 %conv643, 2, !dbg !647
  %call645 = call i8* @realloc(i8* %144, i64 %mul644) #7, !dbg !647
  %145 = bitcast i8* %call645 to i32*, !dbg !647
  store i32* %145, i32** @xdr3dfcoord.buf, align 8, !dbg !647, !tbaa !304
  %cmp646 = icmp eq i8* %call645, null, !dbg !648
  br i1 %cmp646, label %if.then648, label %if.end650, !dbg !648

if.then648:                                       ; preds = %if.end639
  %146 = load %struct._IO_FILE** @stderr, align 8, !dbg !649, !tbaa !304
  %147 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %146), !dbg !649
  call void @exit(i32 1) #8, !dbg !651
  unreachable, !dbg !651

if.end650:                                        ; preds = %if.end639
  %148 = load i32* %size, align 4, !dbg !652, !tbaa !372
  store i32 %148, i32* @xdr3dfcoord.oldsize, align 4, !dbg !652, !tbaa !372
  br label %if.end652, !dbg !653

if.end652:                                        ; preds = %if.else628.if.end652_crit_edge, %if.end650, %if.end627
  %149 = phi i32* [ %.pre1368, %if.else628.if.end652_crit_edge ], [ %145, %if.end650 ], [ %133, %if.end627 ]
  %arrayidx653 = getelementptr inbounds i32* %149, i64 2, !dbg !639
  store i32 0, i32* %arrayidx653, align 4, !dbg !639, !tbaa !372
  %arrayidx654 = getelementptr inbounds i32* %149, i64 1, !dbg !639
  store i32 0, i32* %arrayidx654, align 4, !dbg !639, !tbaa !372
  store i32 0, i32* %149, align 4, !dbg !639, !tbaa !372
  %arrayidx656 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 0, !dbg !654
  %call657 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx656) #7, !dbg !654
  %arrayidx658 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 1, !dbg !655
  %call659 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx658) #7, !dbg !655
  %arrayidx660 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 2, !dbg !656
  %call661 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx660) #7, !dbg !656
  %arrayidx662 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 0, !dbg !657
  %call663 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx662) #7, !dbg !657
  %arrayidx664 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 1, !dbg !658
  %call665 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx664) #7, !dbg !658
  %arrayidx666 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 2, !dbg !659
  %call667 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx666) #7, !dbg !659
  %150 = load i32* %arrayidx662, align 4, !dbg !660, !tbaa !372
  %151 = load i32* %arrayidx656, align 4, !dbg !660, !tbaa !372
  %sub670 = add i32 %150, 1, !dbg !660
  %add671 = sub i32 %sub670, %151, !dbg !660
  %arrayidx672 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 0, !dbg !660
  store i32 %add671, i32* %arrayidx672, align 4, !dbg !660, !tbaa !372
  %152 = load i32* %arrayidx664, align 4, !dbg !661, !tbaa !372
  %153 = load i32* %arrayidx658, align 4, !dbg !661, !tbaa !372
  %sub675 = add i32 %152, 1, !dbg !661
  %add676 = sub i32 %sub675, %153, !dbg !661
  %arrayidx677 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 1, !dbg !661
  store i32 %add676, i32* %arrayidx677, align 4, !dbg !661, !tbaa !372
  %154 = load i32* %arrayidx666, align 4, !dbg !662, !tbaa !372
  %155 = load i32* %arrayidx660, align 4, !dbg !662, !tbaa !372
  %sub680 = sub nsw i32 %154, %155, !dbg !662
  %add681 = add nsw i32 %sub680, 1, !dbg !662
  %arrayidx682 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 2, !dbg !662
  store i32 %add681, i32* %arrayidx682, align 4, !dbg !662, !tbaa !372
  %or685 = or i32 %add676, %add671, !dbg !663
  %or687 = or i32 %or685, %add681, !dbg !663
  %cmp688 = icmp ugt i32 %or687, 16777215, !dbg !663
  br i1 %cmp688, label %if.then690, label %if.else700, !dbg !663

if.then690:                                       ; preds = %if.end652
  tail call void @llvm.dbg.value(metadata !{i32 %add671}, i64 0, metadata !664), !dbg !667
  tail call void @llvm.dbg.value(metadata !321, i64 0, metadata !668), !dbg !669
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !670), !dbg !671
  %not.cmp4.i1271 = icmp eq i32 %sub670, %151, !dbg !672
  br i1 %not.cmp4.i1271, label %sizeofint.exit1281, label %while.body.i1279

while.body.i1279:                                 ; preds = %if.then690, %while.body.i1279
  %num_of_bits.06.i1272 = phi i32 [ %inc.i1274, %while.body.i1279 ], [ 0, %if.then690 ]
  %num.05.i1273 = phi i32 [ %shl.i1275, %while.body.i1279 ], [ 1, %if.then690 ]
  %inc.i1274 = add nsw i32 %num_of_bits.06.i1272, 1, !dbg !673
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i1274}, i64 0, metadata !670), !dbg !673
  %shl.i1275 = shl i32 %num.05.i1273, 1, !dbg !674
  tail call void @llvm.dbg.value(metadata !{i32 %shl.i1275}, i64 0, metadata !668), !dbg !674
  %cmp1.i1276 = icmp slt i32 %inc.i1274, 32, !dbg !672
  %not.cmp.i1277 = icmp ule i32 %shl.i1275, %add671, !dbg !672
  %.cmp1.i1278 = and i1 %cmp1.i1276, %not.cmp.i1277, !dbg !672
  br i1 %.cmp1.i1278, label %while.body.i1279, label %sizeofint.exit1281

sizeofint.exit1281:                               ; preds = %while.body.i1279, %if.then690
  %num_of_bits.0.lcssa.i1280 = phi i32 [ 0, %if.then690 ], [ %inc.i1274, %while.body.i1279 ]
  tail call void @llvm.dbg.value(metadata !{i32 %add676}, i64 0, metadata !675), !dbg !677
  tail call void @llvm.dbg.value(metadata !321, i64 0, metadata !678), !dbg !679
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !680), !dbg !681
  %not.cmp4.i1282 = icmp eq i32 %sub675, %153, !dbg !682
  br i1 %not.cmp4.i1282, label %sizeofint.exit1292, label %while.body.i1290

while.body.i1290:                                 ; preds = %sizeofint.exit1281, %while.body.i1290
  %num_of_bits.06.i1283 = phi i32 [ %inc.i1285, %while.body.i1290 ], [ 0, %sizeofint.exit1281 ]
  %num.05.i1284 = phi i32 [ %shl.i1286, %while.body.i1290 ], [ 1, %sizeofint.exit1281 ]
  %inc.i1285 = add nsw i32 %num_of_bits.06.i1283, 1, !dbg !683
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i1285}, i64 0, metadata !680), !dbg !683
  %shl.i1286 = shl i32 %num.05.i1284, 1, !dbg !684
  tail call void @llvm.dbg.value(metadata !{i32 %shl.i1286}, i64 0, metadata !678), !dbg !684
  %cmp1.i1287 = icmp slt i32 %inc.i1285, 32, !dbg !682
  %not.cmp.i1288 = icmp ule i32 %shl.i1286, %add676, !dbg !682
  %.cmp1.i1289 = and i1 %cmp1.i1287, %not.cmp.i1288, !dbg !682
  br i1 %.cmp1.i1289, label %while.body.i1290, label %sizeofint.exit1292

sizeofint.exit1292:                               ; preds = %while.body.i1290, %sizeofint.exit1281
  %num_of_bits.0.lcssa.i1291 = phi i32 [ 0, %sizeofint.exit1281 ], [ %inc.i1285, %while.body.i1290 ]
  tail call void @llvm.dbg.value(metadata !{i32 %add681}, i64 0, metadata !685), !dbg !687
  tail call void @llvm.dbg.value(metadata !321, i64 0, metadata !688), !dbg !689
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !690), !dbg !691
  %not.cmp4.i1293 = icmp eq i32 %add681, 0, !dbg !692
  br i1 %not.cmp4.i1293, label %if.end703, label %while.body.i1301

while.body.i1301:                                 ; preds = %sizeofint.exit1292, %while.body.i1301
  %num_of_bits.06.i1294 = phi i32 [ %inc.i1296, %while.body.i1301 ], [ 0, %sizeofint.exit1292 ]
  %num.05.i1295 = phi i32 [ %shl.i1297, %while.body.i1301 ], [ 1, %sizeofint.exit1292 ]
  %inc.i1296 = add nsw i32 %num_of_bits.06.i1294, 1, !dbg !693
  tail call void @llvm.dbg.value(metadata !{i32 %inc.i1296}, i64 0, metadata !690), !dbg !693
  %shl.i1297 = shl i32 %num.05.i1295, 1, !dbg !694
  tail call void @llvm.dbg.value(metadata !{i32 %shl.i1297}, i64 0, metadata !688), !dbg !694
  %cmp1.i1298 = icmp slt i32 %inc.i1296, 32, !dbg !692
  %not.cmp.i1299 = icmp ule i32 %shl.i1297, %add681, !dbg !692
  %.cmp1.i1300 = and i1 %cmp1.i1298, %not.cmp.i1299, !dbg !692
  br i1 %.cmp1.i1300, label %while.body.i1301, label %if.end703

if.else700:                                       ; preds = %if.end652
  %call702 = call fastcc i32 @sizeofints(i32* %arrayidx672) #10, !dbg !695
  call void @llvm.dbg.value(metadata !{i32 %call702}, i64 0, metadata !145), !dbg !695
  br label %if.end703

if.end703:                                        ; preds = %while.body.i1301, %sizeofint.exit1292, %if.else700
  %bitsizeint.sroa.2.1 = phi i32 [ undef, %if.else700 ], [ 0, %sizeofint.exit1292 ], [ %inc.i1296, %while.body.i1301 ]
  %bitsizeint.sroa.1.1 = phi i32 [ undef, %if.else700 ], [ %num_of_bits.0.lcssa.i1291, %sizeofint.exit1292 ], [ %num_of_bits.0.lcssa.i1291, %while.body.i1301 ]
  %bitsizeint.sroa.0.1 = phi i32 [ undef, %if.else700 ], [ %num_of_bits.0.lcssa.i1280, %sizeofint.exit1292 ], [ %num_of_bits.0.lcssa.i1280, %while.body.i1301 ]
  %bitsize.1 = phi i32 [ %call702, %if.else700 ], [ 0, %sizeofint.exit1292 ], [ 0, %while.body.i1301 ]
  %call704 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %smallidx) #7, !dbg !697
  %cmp705 = icmp eq i32 %call704, 0, !dbg !697
  br i1 %cmp705, label %cleanup, label %if.end708, !dbg !697

if.end708:                                        ; preds = %if.end703
  call void @llvm.dbg.value(metadata !{i32* %smallidx}, i64 0, metadata !113), !dbg !698
  %156 = load i32* %smallidx, align 4, !dbg !698, !tbaa !372
  call void @llvm.dbg.value(metadata !{i32* %smallidx}, i64 0, metadata !113), !dbg !699
  %cmp722 = icmp slt i32 %156, 10, !dbg !699
  br i1 %cmp722, label %cond.end727, label %cond.false725, !dbg !699

cond.false725:                                    ; preds = %if.end708
  %sub721 = add nsw i32 %156, -1, !dbg !699
  %phitmp = sext i32 %sub721 to i64, !dbg !699
  br label %cond.end727, !dbg !699

cond.end727:                                      ; preds = %if.end708, %cond.false725
  %cond728 = phi i64 [ %phitmp, %cond.false725 ], [ 9, %if.end708 ]
  %arrayidx730 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %cond728, !dbg !699
  %157 = load i32* %arrayidx730, align 4, !dbg !699, !tbaa !372
  %div731 = sdiv i32 %157, 2, !dbg !699
  call void @llvm.dbg.value(metadata !{i32 %div731}, i64 0, metadata !126), !dbg !699
  call void @llvm.dbg.value(metadata !{i32* %smallidx}, i64 0, metadata !113), !dbg !700
  %idxprom732 = sext i32 %156 to i64, !dbg !700
  %arrayidx733 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom732, !dbg !700
  %158 = load i32* %arrayidx733, align 4, !dbg !700, !tbaa !372
  %div734 = sdiv i32 %158, 2, !dbg !700
  call void @llvm.dbg.value(metadata !{i32 %div734}, i64 0, metadata !125), !dbg !700
  %arrayidx737 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 2, !dbg !701
  store i32 %158, i32* %arrayidx737, align 4, !dbg !701, !tbaa !372
  %arrayidx738 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 1, !dbg !701
  store i32 %158, i32* %arrayidx738, align 4, !dbg !701, !tbaa !372
  %arrayidx739 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 0, !dbg !701
  store i32 %158, i32* %arrayidx739, align 4, !dbg !701, !tbaa !372
  %159 = load i32** @xdr3dfcoord.buf, align 8, !dbg !702, !tbaa !304
  %call743 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %159) #7, !dbg !702
  %cmp744 = icmp eq i32 %call743, 0, !dbg !702
  br i1 %cmp744, label %cleanup, label %if.end747, !dbg !702

if.end747:                                        ; preds = %cond.end727
  %160 = load i32** @xdr3dfcoord.buf, align 8, !dbg !703, !tbaa !304
  %arrayidx748 = getelementptr inbounds i32* %160, i64 3, !dbg !703
  %161 = bitcast i32* %arrayidx748 to i8*, !dbg !703
  %162 = load i32* %160, align 4, !dbg !703, !tbaa !372
  %call750 = call i32 @xdr_opaque(%struct.XDR* %xdrs, i8* %161, i32 %162) #7, !dbg !703
  %cmp751 = icmp eq i32 %call750, 0, !dbg !703
  br i1 %cmp751, label %cleanup, label %if.end754, !dbg !703

if.end754:                                        ; preds = %if.end747
  %163 = load i32** @xdr3dfcoord.buf, align 8, !dbg !704, !tbaa !304
  %arrayidx755 = getelementptr inbounds i32* %163, i64 2, !dbg !704
  store i32 0, i32* %arrayidx755, align 4, !dbg !704, !tbaa !372
  %arrayidx756 = getelementptr inbounds i32* %163, i64 1, !dbg !704
  store i32 0, i32* %arrayidx756, align 4, !dbg !704, !tbaa !372
  store i32 0, i32* %163, align 4, !dbg !704, !tbaa !372
  call void @llvm.dbg.value(metadata !{float* %fp}, i64 0, metadata !133), !dbg !705
  %164 = load float* %precision, align 4, !dbg !706, !tbaa !420
  %conv760 = fdiv float 1.000000e+00, %164, !dbg !706
  call void @llvm.dbg.value(metadata !{float %conv760}, i64 0, metadata !146), !dbg !706
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !131), !dbg !707
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !128), !dbg !708
  %165 = load i32** @xdr3dfcoord.ip, align 8, !dbg !709, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %165}, i64 0, metadata !105), !dbg !709
  call void @llvm.dbg.value(metadata !{i32* %lsize}, i64 0, metadata !144), !dbg !710
  %166 = load i32* %lsize, align 4, !dbg !710, !tbaa !372
  %cmp7621316 = icmp sgt i32 %166, 0, !dbg !710
  br i1 %cmp7621316, label %while.body764.lr.ph, label %cleanup, !dbg !710

while.body764.lr.ph:                              ; preds = %if.end754
  %cmp768 = icmp eq i32 %bitsize.1, 0, !dbg !711
  br label %while.body764, !dbg !710

while.body764:                                    ; preds = %if.end913.while.body764_crit_edge, %while.body764.lr.ph
  %167 = phi i32* [ %163, %while.body764.lr.ph ], [ %.pre1369, %if.end913.while.body764_crit_edge ]
  %div734.pn = phi i32 [ %div734, %while.body764.lr.ph ], [ %smallnum.3, %if.end913.while.body764_crit_edge ]
  %lfp.11321 = phi float* [ %fp, %while.body764.lr.ph ], [ %lfp.4, %if.end913.while.body764_crit_edge ]
  %run.11320 = phi i32 [ 0, %while.body764.lr.ph ], [ %run.2, %if.end913.while.body764_crit_edge ]
  %i.21319 = phi i32 [ 0, %while.body764.lr.ph ], [ %i.4, %if.end913.while.body764_crit_edge ]
  %smaller.21318 = phi i32 [ %div731, %while.body764.lr.ph ], [ %smaller.3, %if.end913.while.body764_crit_edge ]
  %mul765 = mul nsw i32 %i.21319, 3, !dbg !713
  %idx.ext766 = sext i32 %mul765 to i64, !dbg !713
  %add.ptr767 = getelementptr inbounds i32* %165, i64 %idx.ext766, !dbg !713
  call void @llvm.dbg.value(metadata !{i32* %add.ptr767}, i64 0, metadata !136), !dbg !713
  br i1 %cmp768, label %if.then770, label %if.else780, !dbg !711

if.then770:                                       ; preds = %while.body764
  %call772 = call fastcc i32 @receivebits(i32* %167, i32 %bitsizeint.sroa.0.1) #10, !dbg !714
  store i32 %call772, i32* %add.ptr767, align 4, !dbg !714, !tbaa !372
  %168 = load i32** @xdr3dfcoord.buf, align 8, !dbg !716, !tbaa !304
  %call775 = call fastcc i32 @receivebits(i32* %168, i32 %bitsizeint.sroa.1.1) #10, !dbg !716
  %add.ptr767.sum1207 = add i64 %idx.ext766, 1, !dbg !716
  %arrayidx776 = getelementptr inbounds i32* %165, i64 %add.ptr767.sum1207, !dbg !716
  store i32 %call775, i32* %arrayidx776, align 4, !dbg !716, !tbaa !372
  %169 = load i32** @xdr3dfcoord.buf, align 8, !dbg !717, !tbaa !304
  %call778 = call fastcc i32 @receivebits(i32* %169, i32 %bitsizeint.sroa.2.1) #10, !dbg !717
  %add.ptr767.sum1208 = add i64 %idx.ext766, 2, !dbg !717
  %arrayidx779 = getelementptr inbounds i32* %165, i64 %add.ptr767.sum1208, !dbg !717
  store i32 %call778, i32* %arrayidx779, align 4, !dbg !717, !tbaa !372
  br label %if.end782, !dbg !718

if.else780:                                       ; preds = %while.body764
  call fastcc void @receiveints(i32* %167, i32 %bitsize.1, i32* %arrayidx672, i32* %add.ptr767) #10, !dbg !719
  %add.ptr767.sum.pre = add i64 %idx.ext766, 1, !dbg !721
  %arrayidx788.pre = getelementptr inbounds i32* %165, i64 %add.ptr767.sum.pre, !dbg !721
  %add.ptr767.sum1204.pre = add i64 %idx.ext766, 2, !dbg !722
  %arrayidx791.pre = getelementptr inbounds i32* %165, i64 %add.ptr767.sum1204.pre, !dbg !722
  br label %if.end782

if.end782:                                        ; preds = %if.else780, %if.then770
  %arrayidx791.pre-phi = phi i32* [ %arrayidx791.pre, %if.else780 ], [ %arrayidx779, %if.then770 ], !dbg !722
  %arrayidx788.pre-phi = phi i32* [ %arrayidx788.pre, %if.else780 ], [ %arrayidx776, %if.then770 ], !dbg !721
  %inc783 = add nsw i32 %i.21319, 1, !dbg !723
  call void @llvm.dbg.value(metadata !{i32 %inc783}, i64 0, metadata !128), !dbg !723
  %170 = load i32* %arrayidx656, align 4, !dbg !724, !tbaa !372
  %171 = load i32* %add.ptr767, align 4, !dbg !724, !tbaa !372
  %add786 = add nsw i32 %171, %170, !dbg !724
  store i32 %add786, i32* %add.ptr767, align 4, !dbg !724, !tbaa !372
  %172 = load i32* %arrayidx658, align 4, !dbg !721, !tbaa !372
  %173 = load i32* %arrayidx788.pre-phi, align 4, !dbg !721, !tbaa !372
  %add789 = add nsw i32 %173, %172, !dbg !721
  store i32 %add789, i32* %arrayidx788.pre-phi, align 4, !dbg !721, !tbaa !372
  %174 = load i32* %arrayidx660, align 4, !dbg !722, !tbaa !372
  %175 = load i32* %arrayidx791.pre-phi, align 4, !dbg !722, !tbaa !372
  %add792 = add nsw i32 %175, %174, !dbg !722
  store i32 %add792, i32* %arrayidx791.pre-phi, align 4, !dbg !722, !tbaa !372
  %176 = load i32** @xdr3dfcoord.buf, align 8, !dbg !725, !tbaa !304
  %call799 = call fastcc i32 @receivebits(i32* %176, i32 1) #10, !dbg !725
  call void @llvm.dbg.value(metadata !{i32 %call799}, i64 0, metadata !123), !dbg !725
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !130), !dbg !726
  %cmp800 = icmp eq i32 %call799, 1, !dbg !727
  br i1 %cmp800, label %if.then802, label %if.end805, !dbg !727

if.then802:                                       ; preds = %if.end782
  %177 = load i32** @xdr3dfcoord.buf, align 8, !dbg !728, !tbaa !304
  %call803 = call fastcc i32 @receivebits(i32* %177, i32 5) #10, !dbg !728
  call void @llvm.dbg.value(metadata !{i32 %call803}, i64 0, metadata !131), !dbg !728
  %rem = srem i32 %call803, 3, !dbg !730
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !130), !dbg !730
  %sub804 = sub nsw i32 %call803, %rem, !dbg !731
  call void @llvm.dbg.value(metadata !{i32 %sub804}, i64 0, metadata !131), !dbg !731
  %dec = add nsw i32 %rem, -1, !dbg !732
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !130), !dbg !732
  br label %if.end805, !dbg !733

if.end805:                                        ; preds = %if.then802, %if.end782
  %is_smaller.3 = phi i32 [ %dec, %if.then802 ], [ 0, %if.end782 ]
  %run.2 = phi i32 [ %sub804, %if.then802 ], [ %run.11320, %if.end782 ]
  %cmp806 = icmp sgt i32 %run.2, 0, !dbg !734
  br i1 %cmp806, label %for.body813.lr.ph, label %if.else878, !dbg !734

for.body813.lr.ph:                                ; preds = %if.end805
  %add.ptr767.sum1205 = add i64 %idx.ext766, 3, !dbg !735
  %add.ptr809 = getelementptr inbounds i32* %165, i64 %add.ptr767.sum1205, !dbg !735
  call void @llvm.dbg.value(metadata !{i32* %add.ptr809}, i64 0, metadata !136), !dbg !735
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !124), !dbg !737
  %add.ptr809.sum = add i64 %idx.ext766, 4, !dbg !739
  %arrayidx822 = getelementptr inbounds i32* %165, i64 %add.ptr809.sum, !dbg !739
  %add.ptr809.sum1206 = add i64 %idx.ext766, 5, !dbg !741
  %arrayidx826 = getelementptr inbounds i32* %165, i64 %add.ptr809.sum1206, !dbg !741
  br label %for.body813, !dbg !737

for.body813:                                      ; preds = %for.body813.lr.ph, %if.end862
  %prevcoord.sroa.0.21313 = phi i32 [ %add786, %for.body813.lr.ph ], [ %add819, %if.end862 ]
  %prevcoord.sroa.1.21312 = phi i32 [ %add789, %for.body813.lr.ph ], [ %add823, %if.end862 ]
  %prevcoord.sroa.2.21311 = phi i32 [ %add792, %for.body813.lr.ph ], [ %add827, %if.end862 ]
  %lfp.21310 = phi float* [ %lfp.11321, %for.body813.lr.ph ], [ %incdec.ptr874, %if.end862 ]
  %i.31309 = phi i32 [ %inc783, %for.body813.lr.ph ], [ %inc815, %if.end862 ]
  %k.11308 = phi i32 [ 0, %for.body813.lr.ph ], [ %add876, %if.end862 ]
  %178 = load i32** @xdr3dfcoord.buf, align 8, !dbg !742, !tbaa !304
  call void @llvm.dbg.value(metadata !{i32* %smallidx}, i64 0, metadata !113), !dbg !742
  %179 = load i32* %smallidx, align 4, !dbg !742, !tbaa !372
  call fastcc void @receiveints(i32* %178, i32 %179, i32* %arrayidx739, i32* %add.ptr809) #10, !dbg !742
  %inc815 = add nsw i32 %i.31309, 1, !dbg !743
  call void @llvm.dbg.value(metadata !{i32 %inc815}, i64 0, metadata !128), !dbg !743
  %sub817 = sub i32 %prevcoord.sroa.0.21313, %div734.pn, !dbg !744
  %180 = load i32* %add.ptr809, align 4, !dbg !744, !tbaa !372
  %add819 = add nsw i32 %sub817, %180, !dbg !744
  store i32 %add819, i32* %add.ptr809, align 4, !dbg !744, !tbaa !372
  %sub821 = sub i32 %prevcoord.sroa.1.21312, %div734.pn, !dbg !739
  %181 = load i32* %arrayidx822, align 4, !dbg !739, !tbaa !372
  %add823 = add nsw i32 %sub821, %181, !dbg !739
  store i32 %add823, i32* %arrayidx822, align 4, !dbg !739, !tbaa !372
  %sub825 = sub nsw i32 %prevcoord.sroa.2.21311, %div734.pn, !dbg !741
  %182 = load i32* %arrayidx826, align 4, !dbg !741, !tbaa !372
  %add827 = add nsw i32 %182, %sub825, !dbg !741
  store i32 %add827, i32* %arrayidx826, align 4, !dbg !741, !tbaa !372
  %cmp828 = icmp eq i32 %k.11308, 0, !dbg !745
  br i1 %cmp828, label %if.then830, label %if.end862, !dbg !745

if.then830:                                       ; preds = %for.body813
  call void @llvm.dbg.value(metadata !{i32 %add819}, i64 0, metadata !135), !dbg !746
  store i32 %prevcoord.sroa.0.21313, i32* %add.ptr809, align 4, !dbg !746, !tbaa !372
  call void @llvm.dbg.value(metadata !{i32 %add823}, i64 0, metadata !135), !dbg !748
  store i32 %prevcoord.sroa.1.21312, i32* %arrayidx822, align 4, !dbg !748, !tbaa !372
  call void @llvm.dbg.value(metadata !{i32 %add827}, i64 0, metadata !135), !dbg !749
  store i32 %prevcoord.sroa.2.21311, i32* %arrayidx826, align 4, !dbg !749, !tbaa !372
  %conv844 = sitofp i32 %add819 to float, !dbg !750
  %mul845 = fmul float %conv760, %conv844, !dbg !750
  %incdec.ptr846 = getelementptr inbounds float* %lfp.21310, i64 1, !dbg !750
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr846}, i64 0, metadata !133), !dbg !750
  store float %mul845, float* %lfp.21310, align 4, !dbg !750, !tbaa !420
  %conv848 = sitofp i32 %add823 to float, !dbg !751
  %mul849 = fmul float %conv760, %conv848, !dbg !751
  %incdec.ptr850 = getelementptr inbounds float* %lfp.21310, i64 2, !dbg !751
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr850}, i64 0, metadata !133), !dbg !751
  store float %mul849, float* %incdec.ptr846, align 4, !dbg !751, !tbaa !420
  %conv852 = sitofp i32 %add827 to float, !dbg !752
  %mul853 = fmul float %conv760, %conv852, !dbg !752
  %incdec.ptr854 = getelementptr inbounds float* %lfp.21310, i64 3, !dbg !752
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr854}, i64 0, metadata !133), !dbg !752
  store float %mul853, float* %incdec.ptr850, align 4, !dbg !752, !tbaa !420
  br label %if.end862, !dbg !753

if.end862:                                        ; preds = %for.body813, %if.then830
  %183 = phi i32 [ %prevcoord.sroa.2.21311, %if.then830 ], [ %add827, %for.body813 ]
  %184 = phi i32 [ %prevcoord.sroa.1.21312, %if.then830 ], [ %add823, %for.body813 ]
  %185 = phi i32 [ %prevcoord.sroa.0.21313, %if.then830 ], [ %add819, %for.body813 ]
  %lfp.3 = phi float* [ %incdec.ptr854, %if.then830 ], [ %lfp.21310, %for.body813 ]
  %conv864 = sitofp i32 %185 to float, !dbg !754
  %mul865 = fmul float %conv760, %conv864, !dbg !754
  %incdec.ptr866 = getelementptr inbounds float* %lfp.3, i64 1, !dbg !754
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr866}, i64 0, metadata !133), !dbg !754
  store float %mul865, float* %lfp.3, align 4, !dbg !754, !tbaa !420
  %conv868 = sitofp i32 %184 to float, !dbg !755
  %mul869 = fmul float %conv760, %conv868, !dbg !755
  %incdec.ptr870 = getelementptr inbounds float* %lfp.3, i64 2, !dbg !755
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr870}, i64 0, metadata !133), !dbg !755
  store float %mul869, float* %incdec.ptr866, align 4, !dbg !755, !tbaa !420
  %conv872 = sitofp i32 %183 to float, !dbg !756
  %mul873 = fmul float %conv760, %conv872, !dbg !756
  %incdec.ptr874 = getelementptr inbounds float* %lfp.3, i64 3, !dbg !756
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr874}, i64 0, metadata !133), !dbg !756
  store float %mul873, float* %incdec.ptr870, align 4, !dbg !756, !tbaa !420
  %add876 = add nsw i32 %k.11308, 3, !dbg !737
  call void @llvm.dbg.value(metadata !{i32 %add876}, i64 0, metadata !124), !dbg !737
  %cmp811 = icmp slt i32 %add876, %run.2, !dbg !737
  br i1 %cmp811, label %for.body813, label %if.end891, !dbg !737

if.else878:                                       ; preds = %if.end805
  %186 = load i32* %add.ptr767, align 4, !dbg !757, !tbaa !372
  %conv880 = sitofp i32 %186 to float, !dbg !757
  %mul881 = fmul float %conv760, %conv880, !dbg !757
  %incdec.ptr882 = getelementptr inbounds float* %lfp.11321, i64 1, !dbg !757
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr882}, i64 0, metadata !133), !dbg !757
  store float %mul881, float* %lfp.11321, align 4, !dbg !757, !tbaa !420
  %187 = load i32* %arrayidx788.pre-phi, align 4, !dbg !759, !tbaa !372
  %conv884 = sitofp i32 %187 to float, !dbg !759
  %mul885 = fmul float %conv760, %conv884, !dbg !759
  %incdec.ptr886 = getelementptr inbounds float* %lfp.11321, i64 2, !dbg !759
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr886}, i64 0, metadata !133), !dbg !759
  store float %mul885, float* %incdec.ptr882, align 4, !dbg !759, !tbaa !420
  %188 = load i32* %arrayidx791.pre-phi, align 4, !dbg !760, !tbaa !372
  %conv888 = sitofp i32 %188 to float, !dbg !760
  %mul889 = fmul float %conv760, %conv888, !dbg !760
  %incdec.ptr890 = getelementptr inbounds float* %lfp.11321, i64 3, !dbg !760
  call void @llvm.dbg.value(metadata !{float* %incdec.ptr890}, i64 0, metadata !133), !dbg !760
  store float %mul889, float* %incdec.ptr886, align 4, !dbg !760, !tbaa !420
  br label %if.end891

if.end891:                                        ; preds = %if.end862, %if.else878
  %i.4 = phi i32 [ %inc783, %if.else878 ], [ %inc815, %if.end862 ]
  %lfp.4 = phi float* [ %incdec.ptr890, %if.else878 ], [ %incdec.ptr874, %if.end862 ]
  call void @llvm.dbg.value(metadata !{i32* %smallidx}, i64 0, metadata !113), !dbg !761
  %189 = load i32* %smallidx, align 4, !dbg !761, !tbaa !372
  %add892 = add nsw i32 %189, %is_smaller.3, !dbg !761
  call void @llvm.dbg.value(metadata !{i32 %add892}, i64 0, metadata !113), !dbg !761
  store i32 %add892, i32* %smallidx, align 4, !dbg !761, !tbaa !372
  %cmp893 = icmp slt i32 %is_smaller.3, 0, !dbg !762
  br i1 %cmp893, label %if.then895, label %if.else905, !dbg !762

if.then895:                                       ; preds = %if.end891
  call void @llvm.dbg.value(metadata !{i32 %smaller.21318}, i64 0, metadata !125), !dbg !763
  %cmp896 = icmp sgt i32 %add892, 9, !dbg !765
  br i1 %cmp896, label %if.then898, label %if.end913, !dbg !765

if.then898:                                       ; preds = %if.then895
  %sub899 = add nsw i32 %add892, -1, !dbg !766
  %idxprom900 = sext i32 %sub899 to i64, !dbg !766
  %arrayidx901 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom900, !dbg !766
  %190 = load i32* %arrayidx901, align 4, !dbg !766, !tbaa !372
  %div902 = sdiv i32 %190, 2, !dbg !766
  call void @llvm.dbg.value(metadata !{i32 %div902}, i64 0, metadata !126), !dbg !766
  br label %if.end913, !dbg !768

if.else905:                                       ; preds = %if.end891
  %cmp906 = icmp sgt i32 %is_smaller.3, 0, !dbg !769
  br i1 %cmp906, label %if.then908, label %if.end913, !dbg !769

if.then908:                                       ; preds = %if.else905
  call void @llvm.dbg.value(metadata !{i32 %div734.pn}, i64 0, metadata !126), !dbg !770
  %idxprom909 = sext i32 %add892 to i64, !dbg !772
  %arrayidx910 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom909, !dbg !772
  %191 = load i32* %arrayidx910, align 4, !dbg !772, !tbaa !372
  %div911 = sdiv i32 %191, 2, !dbg !772
  call void @llvm.dbg.value(metadata !{i32 %div911}, i64 0, metadata !125), !dbg !772
  br label %if.end913, !dbg !773

if.end913:                                        ; preds = %if.else905, %if.then895, %if.then908, %if.then898
  %smallnum.3 = phi i32 [ %smaller.21318, %if.then898 ], [ %div911, %if.then908 ], [ %smaller.21318, %if.then895 ], [ %div734.pn, %if.else905 ]
  %smaller.3 = phi i32 [ %div902, %if.then898 ], [ %div734.pn, %if.then908 ], [ 0, %if.then895 ], [ %smaller.21318, %if.else905 ]
  call void @llvm.dbg.value(metadata !{i32* %smallidx}, i64 0, metadata !113), !dbg !774
  %idxprom914 = sext i32 %add892 to i64, !dbg !774
  %arrayidx915 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom914, !dbg !774
  %192 = load i32* %arrayidx915, align 4, !dbg !774, !tbaa !372
  store i32 %192, i32* %arrayidx737, align 4, !dbg !774, !tbaa !372
  store i32 %192, i32* %arrayidx738, align 4, !dbg !774, !tbaa !372
  store i32 %192, i32* %arrayidx739, align 4, !dbg !774, !tbaa !372
  call void @llvm.dbg.value(metadata !{i32* %lsize}, i64 0, metadata !144), !dbg !710
  %193 = load i32* %lsize, align 4, !dbg !710, !tbaa !372
  %cmp762 = icmp slt i32 %i.4, %193, !dbg !710
  br i1 %cmp762, label %if.end913.while.body764_crit_edge, label %cleanup, !dbg !710

if.end913.while.body764_crit_edge:                ; preds = %if.end913
  %.pre1369 = load i32** @xdr3dfcoord.buf, align 8, !dbg !714, !tbaa !304
  br label %while.body764, !dbg !710

cleanup:                                          ; preds = %if.end754, %if.end913, %if.end747, %cond.end727, %if.end703, %if.else585, %if.then20, %if.then602, %if.end578, %if.then28
  %retval.0 = phi i32 [ %call29, %if.then28 ], [ %mul584, %if.end578 ], [ %call603, %if.then602 ], [ 0, %if.then20 ], [ 0, %if.else585 ], [ 0, %if.end703 ], [ 0, %cond.end727 ], [ 0, %if.end747 ], [ 1, %if.end913 ], [ 1, %if.end754 ]
  call void @llvm.lifetime.end(i64 120, i8* %0) #5, !dbg !775
  ret i32 %retval.0, !dbg !775
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @xdr_int(%struct.XDR*, i32*) #3

; Function Attrs: optsize
declare i32 @xdr_vector(%struct.XDR*, i8*, i32, i32, i32 (%struct.XDR*, i8*, ...)*) #3

; Function Attrs: optsize
declare i32 @xdr_float(%struct.XDR*, float*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @sizeofints(i32* nocapture %sizes) #6 {
entry:
  %bytes = alloca [32 x i32], align 16
  call void @llvm.dbg.value(metadata !776, i64 0, metadata !211), !dbg !777
  %0 = bitcast [32 x i32]* %bytes to i8*, !dbg !778
  call void @llvm.lifetime.start(i64 128, i8* %0) #5, !dbg !778
  call void @llvm.dbg.declare(metadata !{[32 x i32]* %bytes}, metadata !217), !dbg !778
  call void @llvm.dbg.value(metadata !321, i64 0, metadata !215), !dbg !779
  %arrayidx = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 0, !dbg !780
  store i32 1, i32* %arrayidx, align 16, !dbg !780, !tbaa !372
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !216), !dbg !781
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !213), !dbg !782
  br label %for.cond1.preheader, !dbg !782

for.cond1.preheader:                              ; preds = %while.end, %entry
  %indvars.iv15 = phi i64 [ 0, %entry ], [ %indvars.iv.next16, %while.end ]
  %num_of_bytes.013 = phi i32 [ 1, %entry ], [ %bytecnt.1.lcssa, %while.end ]
  %cmp24 = icmp eq i32 %num_of_bytes.013, 0, !dbg !784
  br i1 %cmp24, label %while.end, label %for.body3.lr.ph, !dbg !784

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %arrayidx6 = getelementptr inbounds i32* %sizes, i64 %indvars.iv15, !dbg !787
  %1 = load i32* %arrayidx6, align 4, !dbg !787, !tbaa !372
  br label %for.body3, !dbg !784

for.body3:                                        ; preds = %for.body3, %for.body3.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next, %for.body3 ]
  %tmp.06 = phi i32 [ 0, %for.body3.lr.ph ], [ %shr, %for.body3 ]
  %arrayidx4 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv, !dbg !787
  %2 = load i32* %arrayidx4, align 4, !dbg !787, !tbaa !372
  %mul = mul i32 %1, %2, !dbg !787
  %add = add i32 %mul, %tmp.06, !dbg !787
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !219), !dbg !787
  %and = and i32 %add, 255, !dbg !789
  store i32 %and, i32* %arrayidx4, align 4, !dbg !789, !tbaa !372
  %shr = lshr i32 %add, 8, !dbg !790
  call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !219), !dbg !790
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !784
  call void @llvm.dbg.value(metadata !{i32 %num_of_bytes.013}, i64 0, metadata !218), !dbg !784
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !784
  %exitcond = icmp eq i32 %lftr.wideiv, %num_of_bytes.013, !dbg !784
  br i1 %exitcond, label %while.cond.loopexit, label %for.body3, !dbg !784

while.cond.loopexit:                              ; preds = %for.body3
  %cmp99 = icmp eq i32 %shr, 0, !dbg !791
  br i1 %cmp99, label %while.end, label %while.body, !dbg !791

while.body:                                       ; preds = %while.cond.loopexit, %while.body
  %tmp.111 = phi i32 [ %shr14, %while.body ], [ %shr, %while.cond.loopexit ]
  %bytecnt.110 = phi i32 [ %inc11, %while.body ], [ %num_of_bytes.013, %while.cond.loopexit ]
  %and10 = and i32 %tmp.111, 255, !dbg !792
  %inc11 = add i32 %bytecnt.110, 1, !dbg !792
  call void @llvm.dbg.value(metadata !{i32 %inc11}, i64 0, metadata !218), !dbg !792
  %idxprom12 = zext i32 %bytecnt.110 to i64, !dbg !792
  %arrayidx13 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %idxprom12, !dbg !792
  store i32 %and10, i32* %arrayidx13, align 4, !dbg !792, !tbaa !372
  %shr14 = lshr i32 %tmp.111, 8, !dbg !794
  call void @llvm.dbg.value(metadata !{i32 %shr14}, i64 0, metadata !219), !dbg !794
  %cmp9 = icmp eq i32 %shr14, 0, !dbg !791
  br i1 %cmp9, label %while.end, label %while.body, !dbg !791

while.end:                                        ; preds = %for.cond1.preheader, %while.body, %while.cond.loopexit
  %bytecnt.1.lcssa = phi i32 [ %num_of_bytes.013, %while.cond.loopexit ], [ %inc11, %while.body ], [ 0, %for.cond1.preheader ]
  call void @llvm.dbg.value(metadata !{i32 %bytecnt.1.lcssa}, i64 0, metadata !215), !dbg !795
  %indvars.iv.next16 = add i64 %indvars.iv15, 1, !dbg !782
  %lftr.wideiv17 = trunc i64 %indvars.iv.next16 to i32, !dbg !782
  %exitcond18 = icmp eq i32 %lftr.wideiv17, 3, !dbg !782
  br i1 %exitcond18, label %for.end17, label %for.cond1.preheader, !dbg !782

for.end17:                                        ; preds = %while.end
  call void @llvm.dbg.value(metadata !321, i64 0, metadata !214), !dbg !796
  %dec = add i32 %bytecnt.1.lcssa, -1, !dbg !797
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !215), !dbg !797
  %idxprom19 = zext i32 %dec to i64, !dbg !798
  %arrayidx20 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %idxprom19, !dbg !798
  %3 = load i32* %arrayidx20, align 4, !dbg !798, !tbaa !372
  %cmp211 = icmp eq i32 %3, 0, !dbg !798
  br i1 %cmp211, label %while.end25, label %while.body22, !dbg !798

while.body22:                                     ; preds = %for.end17, %while.body22
  %num_of_bits.03 = phi i32 [ %inc23, %while.body22 ], [ 0, %for.end17 ]
  %num.02 = phi i32 [ %mul24, %while.body22 ], [ 1, %for.end17 ]
  %inc23 = add i32 %num_of_bits.03, 1, !dbg !799
  call void @llvm.dbg.value(metadata !{i32 %inc23}, i64 0, metadata !216), !dbg !799
  %mul24 = shl nsw i32 %num.02, 1, !dbg !801
  call void @llvm.dbg.value(metadata !{i32 %mul24}, i64 0, metadata !214), !dbg !801
  %cmp21 = icmp ult i32 %3, %mul24, !dbg !798
  br i1 %cmp21, label %while.end25, label %while.body22, !dbg !798

while.end25:                                      ; preds = %while.body22, %for.end17
  %num_of_bits.0.lcssa = phi i32 [ 0, %for.end17 ], [ %inc23, %while.body22 ]
  %mul26 = shl i32 %dec, 3, !dbg !802
  %add27 = add i32 %num_of_bits.0.lcssa, %mul26, !dbg !802
  call void @llvm.lifetime.end(i64 128, i8* %0) #5, !dbg !803
  ret i32 %add27, !dbg !803
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @sendbits(i32* nocapture %buf, i32 %num_of_bits, i32 %num) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %buf}, i64 0, metadata !200), !dbg !804
  tail call void @llvm.dbg.value(metadata !{i32 %num_of_bits}, i64 0, metadata !201), !dbg !804
  tail call void @llvm.dbg.value(metadata !{i32 %num}, i64 0, metadata !202), !dbg !804
  %add.ptr61 = getelementptr inbounds i32* %buf, i64 3, !dbg !805
  %add.ptr = bitcast i32* %add.ptr61 to i8*, !dbg !805
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !206), !dbg !805
  %0 = load i32* %buf, align 4, !dbg !806, !tbaa !372
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !203), !dbg !806
  %arrayidx1 = getelementptr inbounds i32* %buf, i64 1, !dbg !807
  %1 = load i32* %arrayidx1, align 4, !dbg !807, !tbaa !372
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !205), !dbg !807
  %arrayidx2 = getelementptr inbounds i32* %buf, i64 2, !dbg !808
  %2 = load i32* %arrayidx2, align 4, !dbg !808, !tbaa !372
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !204), !dbg !808
  %cmp62 = icmp sgt i32 %num_of_bits, 7, !dbg !809
  br i1 %cmp62, label %while.body.lr.ph, label %while.end, !dbg !809

while.body.lr.ph:                                 ; preds = %entry
  %3 = add i32 %num_of_bits, -8, !dbg !809
  %4 = lshr i32 %3, 3, !dbg !809
  %5 = add i32 %0, %4, !dbg !809
  %6 = shl nuw i32 %4, 3, !dbg !809
  br label %while.body, !dbg !809

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %num_of_bits.addr.065 = phi i32 [ %num_of_bits, %while.body.lr.ph ], [ %sub, %while.body ]
  %lastbyte.064 = phi i32 [ %2, %while.body.lr.ph ], [ %or, %while.body ]
  %cnt.063 = phi i32 [ %0, %while.body.lr.ph ], [ %inc, %while.body ]
  %shl = shl i32 %lastbyte.064, 8, !dbg !810
  %sub = add nsw i32 %num_of_bits.addr.065, -8, !dbg !810
  %shr = ashr i32 %num, %sub, !dbg !810
  %or = or i32 %shr, %shl, !dbg !810
  tail call void @llvm.dbg.value(metadata !{i32 %or}, i64 0, metadata !204), !dbg !810
  %shr3 = lshr i32 %or, %1, !dbg !812
  %conv = trunc i32 %shr3 to i8, !dbg !812
  %inc = add i32 %cnt.063, 1, !dbg !812
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !203), !dbg !812
  %idxprom = zext i32 %cnt.063 to i64, !dbg !812
  %arrayidx4 = getelementptr inbounds i8* %add.ptr, i64 %idxprom, !dbg !812
  store i8 %conv, i8* %arrayidx4, align 1, !dbg !812, !tbaa !305
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !201), !dbg !813
  %cmp = icmp sgt i32 %sub, 7, !dbg !809
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge, !dbg !809

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %7 = add i32 %5, 1, !dbg !809
  %8 = sub i32 %3, %6, !dbg !809
  br label %while.end, !dbg !809

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %num_of_bits.addr.0.lcssa = phi i32 [ %8, %while.cond.while.end_crit_edge ], [ %num_of_bits, %entry ]
  %lastbyte.0.lcssa = phi i32 [ %or, %while.cond.while.end_crit_edge ], [ %2, %entry ]
  %cnt.0.lcssa = phi i32 [ %7, %while.cond.while.end_crit_edge ], [ %0, %entry ]
  %cmp6 = icmp sgt i32 %num_of_bits.addr.0.lcssa, 0, !dbg !814
  br i1 %cmp6, label %if.then, label %if.end19, !dbg !814

if.then:                                          ; preds = %while.end
  %shl8 = shl i32 %lastbyte.0.lcssa, %num_of_bits.addr.0.lcssa, !dbg !815
  %or9 = or i32 %shl8, %num, !dbg !815
  tail call void @llvm.dbg.value(metadata !{i32 %or9}, i64 0, metadata !204), !dbg !815
  %add = add nsw i32 %num_of_bits.addr.0.lcssa, %1, !dbg !817
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !205), !dbg !817
  %cmp10 = icmp sgt i32 %add, 7, !dbg !818
  br i1 %cmp10, label %if.then12, label %if.end19, !dbg !818

if.then12:                                        ; preds = %if.then
  %sub13 = add nsw i32 %add, -8, !dbg !819
  tail call void @llvm.dbg.value(metadata !{i32 %sub13}, i64 0, metadata !205), !dbg !819
  %shr14 = lshr i32 %or9, %sub13, !dbg !821
  %conv15 = trunc i32 %shr14 to i8, !dbg !821
  %inc16 = add i32 %cnt.0.lcssa, 1, !dbg !821
  tail call void @llvm.dbg.value(metadata !{i32 %inc16}, i64 0, metadata !203), !dbg !821
  %idxprom17 = zext i32 %cnt.0.lcssa to i64, !dbg !821
  %arrayidx18 = getelementptr inbounds i8* %add.ptr, i64 %idxprom17, !dbg !821
  store i8 %conv15, i8* %arrayidx18, align 1, !dbg !821, !tbaa !305
  br label %if.end19, !dbg !822

if.end19:                                         ; preds = %if.then, %if.then12, %while.end
  %cnt.1 = phi i32 [ %inc16, %if.then12 ], [ %cnt.0.lcssa, %if.then ], [ %cnt.0.lcssa, %while.end ]
  %lastbyte.1 = phi i32 [ %or9, %if.then12 ], [ %or9, %if.then ], [ %lastbyte.0.lcssa, %while.end ]
  %lastbits.0 = phi i32 [ %sub13, %if.then12 ], [ %add, %if.then ], [ %1, %while.end ]
  store i32 %cnt.1, i32* %buf, align 4, !dbg !823, !tbaa !372
  store i32 %lastbits.0, i32* %arrayidx1, align 4, !dbg !824, !tbaa !372
  store i32 %lastbyte.1, i32* %arrayidx2, align 4, !dbg !825, !tbaa !372
  %cmp23 = icmp sgt i32 %lastbits.0, 0, !dbg !826
  br i1 %cmp23, label %if.then25, label %if.end31, !dbg !826

if.then25:                                        ; preds = %if.end19
  %sub26 = sub nsw i32 8, %lastbits.0, !dbg !827
  %shl27 = shl i32 %lastbyte.1, %sub26, !dbg !827
  %conv28 = trunc i32 %shl27 to i8, !dbg !827
  %idxprom29 = zext i32 %cnt.1 to i64, !dbg !827
  %arrayidx30 = getelementptr inbounds i8* %add.ptr, i64 %idxprom29, !dbg !827
  store i8 %conv28, i8* %arrayidx30, align 1, !dbg !827, !tbaa !305
  br label %if.end31, !dbg !829

if.end31:                                         ; preds = %if.then25, %if.end19
  ret void, !dbg !830
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @sendints(i32* nocapture %buf, i32 %num_of_bits, i32* nocapture %sizes, i32* nocapture %nums) #0 {
entry:
  %bytes = alloca [32 x i32], align 16
  call void @llvm.dbg.value(metadata !776, i64 0, metadata !186), !dbg !831
  %0 = bitcast [32 x i32]* %bytes to i8*, !dbg !832
  call void @llvm.lifetime.start(i64 128, i8* %0) #5, !dbg !832
  call void @llvm.dbg.declare(metadata !{[32 x i32]* %bytes}, metadata !191), !dbg !832
  %1 = load i32* %nums, align 4, !dbg !833, !tbaa !372
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !195), !dbg !833
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !193), !dbg !834
  br label %do.body, !dbg !835

do.body:                                          ; preds = %do.body, %entry
  %num_of_bytes.0 = phi i32 [ 0, %entry ], [ %inc, %do.body ]
  %tmp.0 = phi i32 [ %1, %entry ], [ %shr, %do.body ]
  %and = and i32 %tmp.0, 255, !dbg !836
  %inc = add i32 %num_of_bytes.0, 1, !dbg !836
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !193), !dbg !836
  %idxprom = zext i32 %num_of_bytes.0 to i64, !dbg !836
  %arrayidx1 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %idxprom, !dbg !836
  store i32 %and, i32* %arrayidx1, align 4, !dbg !836, !tbaa !372
  %shr = lshr i32 %tmp.0, 8, !dbg !838
  call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !195), !dbg !838
  %cmp = icmp eq i32 %shr, 0, !dbg !839
  br i1 %cmp, label %for.body, label %do.body, !dbg !839

for.body:                                         ; preds = %do.body, %while.end
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %while.end ], [ 1, %do.body ]
  %num_of_bytes.118 = phi i32 [ %bytecnt.1.lcssa, %while.end ], [ %inc, %do.body ]
  %arrayidx4 = getelementptr inbounds i32* %nums, i64 %indvars.iv30, !dbg !840
  %2 = load i32* %arrayidx4, align 4, !dbg !840, !tbaa !372
  %arrayidx6 = getelementptr inbounds i32* %sizes, i64 %indvars.iv30, !dbg !840
  %3 = load i32* %arrayidx6, align 4, !dbg !840, !tbaa !372
  %cmp7 = icmp ult i32 %2, %3, !dbg !840
  br i1 %cmp7, label %for.cond14.preheader, label %if.then, !dbg !840

for.cond14.preheader:                             ; preds = %for.body
  %cmp156 = icmp eq i32 %num_of_bytes.118, 0, !dbg !843
  br i1 %cmp156, label %while.cond.loopexit, label %for.body16, !dbg !843

if.then:                                          ; preds = %for.body
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !845, !tbaa !304
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), i32 %2, i32 %3) #7, !dbg !845
  call void @exit(i32 1) #8, !dbg !847
  unreachable, !dbg !847

for.body16:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.body16 ], [ 0, %for.cond14.preheader ]
  %tmp.18 = phi i32 [ %shr24, %for.body16 ], [ %2, %for.cond14.preheader ]
  %arrayidx18 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv23, !dbg !848
  %5 = load i32* %arrayidx18, align 4, !dbg !848, !tbaa !372
  %mul = mul i32 %3, %5, !dbg !848
  %add = add i32 %mul, %tmp.18, !dbg !848
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !195), !dbg !848
  %and21 = and i32 %add, 255, !dbg !850
  store i32 %and21, i32* %arrayidx18, align 4, !dbg !850, !tbaa !372
  %shr24 = lshr i32 %add, 8, !dbg !851
  call void @llvm.dbg.value(metadata !{i32 %shr24}, i64 0, metadata !195), !dbg !851
  %indvars.iv.next24 = add i64 %indvars.iv23, 1, !dbg !843
  call void @llvm.dbg.value(metadata !{i32 %num_of_bytes.118}, i64 0, metadata !194), !dbg !843
  %lftr.wideiv25 = trunc i64 %indvars.iv.next24 to i32, !dbg !843
  %exitcond26 = icmp eq i32 %lftr.wideiv25, %num_of_bytes.118, !dbg !843
  br i1 %exitcond26, label %while.cond.loopexit, label %for.body16, !dbg !843

while.cond.loopexit:                              ; preds = %for.body16, %for.cond14.preheader
  %tmp.1.lcssa = phi i32 [ %2, %for.cond14.preheader ], [ %shr24, %for.body16 ]
  %bytecnt.0.lcssa = phi i32 [ 0, %for.cond14.preheader ], [ %num_of_bytes.118, %for.body16 ]
  %cmp2611 = icmp eq i32 %tmp.1.lcssa, 0, !dbg !852
  br i1 %cmp2611, label %while.end, label %while.body, !dbg !852

while.body:                                       ; preds = %while.cond.loopexit, %while.body
  %tmp.213 = phi i32 [ %shr31, %while.body ], [ %tmp.1.lcssa, %while.cond.loopexit ]
  %bytecnt.112 = phi i32 [ %inc28, %while.body ], [ %bytecnt.0.lcssa, %while.cond.loopexit ]
  %and27 = and i32 %tmp.213, 255, !dbg !853
  %inc28 = add i32 %bytecnt.112, 1, !dbg !853
  call void @llvm.dbg.value(metadata !{i32 %inc28}, i64 0, metadata !194), !dbg !853
  %idxprom29 = zext i32 %bytecnt.112 to i64, !dbg !853
  %arrayidx30 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %idxprom29, !dbg !853
  store i32 %and27, i32* %arrayidx30, align 4, !dbg !853, !tbaa !372
  %shr31 = lshr i32 %tmp.213, 8, !dbg !855
  call void @llvm.dbg.value(metadata !{i32 %shr31}, i64 0, metadata !195), !dbg !855
  %cmp26 = icmp eq i32 %shr31, 0, !dbg !852
  br i1 %cmp26, label %while.end, label %while.body, !dbg !852

while.end:                                        ; preds = %while.body, %while.cond.loopexit
  %bytecnt.1.lcssa = phi i32 [ %bytecnt.0.lcssa, %while.cond.loopexit ], [ %inc28, %while.body ]
  call void @llvm.dbg.value(metadata !{i32 %bytecnt.1.lcssa}, i64 0, metadata !193), !dbg !856
  %indvars.iv.next31 = add i64 %indvars.iv30, 1, !dbg !857
  %6 = trunc i64 %indvars.iv.next31 to i32, !dbg !857
  %cmp2 = icmp slt i32 %6, 3, !dbg !857
  br i1 %cmp2, label %for.body, label %for.end34, !dbg !857

for.end34:                                        ; preds = %while.end
  %mul35 = shl i32 %bytecnt.1.lcssa, 3, !dbg !858
  %cmp36 = icmp ugt i32 %mul35, %num_of_bits, !dbg !858
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !190), !dbg !859
  br i1 %cmp36, label %for.cond47.preheader, label %for.cond38.preheader, !dbg !858

for.cond38.preheader:                             ; preds = %for.end34
  %cmp394 = icmp eq i32 %bytecnt.1.lcssa, 0, !dbg !859
  br i1 %cmp394, label %for.end45, label %for.body40, !dbg !859

for.cond47.preheader:                             ; preds = %for.end34
  %sub48 = add i32 %bytecnt.1.lcssa, -1, !dbg !862
  %cmp491 = icmp eq i32 %sub48, 0, !dbg !862
  br i1 %cmp491, label %for.end55, label %for.body50, !dbg !862

for.body40:                                       ; preds = %for.cond38.preheader, %for.body40
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.body40 ], [ 0, %for.cond38.preheader ]
  %arrayidx42 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv19, !dbg !865
  %7 = load i32* %arrayidx42, align 4, !dbg !865, !tbaa !372
  call fastcc void @sendbits(i32* %buf, i32 8, i32 %7) #10, !dbg !865
  %indvars.iv.next20 = add i64 %indvars.iv19, 1, !dbg !859
  %lftr.wideiv21 = trunc i64 %indvars.iv.next20 to i32, !dbg !859
  %exitcond22 = icmp eq i32 %lftr.wideiv21, %bytecnt.1.lcssa, !dbg !859
  br i1 %exitcond22, label %for.end45, label %for.body40, !dbg !859

for.end45:                                        ; preds = %for.body40, %for.cond38.preheader
  %sub = sub i32 %num_of_bits, %mul35, !dbg !867
  call fastcc void @sendbits(i32* %buf, i32 %sub, i32 0) #10, !dbg !867
  br label %if.end61, !dbg !868

for.body50:                                       ; preds = %for.cond47.preheader, %for.body50
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body50 ], [ 0, %for.cond47.preheader ]
  %arrayidx52 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv, !dbg !869
  %8 = load i32* %arrayidx52, align 4, !dbg !869, !tbaa !372
  call fastcc void @sendbits(i32* %buf, i32 8, i32 %8) #10, !dbg !869
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !862
  call void @llvm.dbg.value(metadata !{i32 %sub48}, i64 0, metadata !190), !dbg !862
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !862
  %exitcond = icmp eq i32 %lftr.wideiv, %sub48, !dbg !862
  br i1 %exitcond, label %for.cond47.for.end55_crit_edge, label %for.body50, !dbg !862

for.cond47.for.end55_crit_edge:                   ; preds = %for.body50
  %phitmp = sext i32 %sub48 to i64, !dbg !862
  br label %for.end55, !dbg !862

for.end55:                                        ; preds = %for.cond47.preheader, %for.cond47.for.end55_crit_edge
  %i.2.lcssa = phi i64 [ %phitmp, %for.cond47.for.end55_crit_edge ], [ 0, %for.cond47.preheader ]
  %mul57 = shl i32 %sub48, 3, !dbg !871
  %sub58 = sub i32 %num_of_bits, %mul57, !dbg !871
  %arrayidx60 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %i.2.lcssa, !dbg !871
  %9 = load i32* %arrayidx60, align 4, !dbg !871, !tbaa !372
  call fastcc void @sendbits(i32* %buf, i32 %sub58, i32 %9) #10, !dbg !871
  br label %if.end61

if.end61:                                         ; preds = %for.end55, %for.end45
  call void @llvm.lifetime.end(i64 128, i8* %0) #5, !dbg !872
  ret void, !dbg !872
}

; Function Attrs: optsize
declare i32 @xdr_opaque(%struct.XDR*, i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @receivebits(i32* nocapture %buf, i32 %num_of_bits) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %buf}, i64 0, metadata !171), !dbg !873
  tail call void @llvm.dbg.value(metadata !{i32 %num_of_bits}, i64 0, metadata !172), !dbg !873
  %shl = shl i32 1, %num_of_bits, !dbg !874
  %sub = add nsw i32 %shl, -1, !dbg !874
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !180), !dbg !874
  %add.ptr58 = getelementptr inbounds i32* %buf, i64 3, !dbg !875
  %add.ptr = bitcast i32* %add.ptr58 to i8*, !dbg !875
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !177), !dbg !875
  %0 = load i32* %buf, align 4, !dbg !876, !tbaa !372
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !173), !dbg !876
  %arrayidx1 = getelementptr inbounds i32* %buf, i64 1, !dbg !877
  %1 = load i32* %arrayidx1, align 4, !dbg !877, !tbaa !372
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !175), !dbg !877
  %arrayidx2 = getelementptr inbounds i32* %buf, i64 2, !dbg !878
  %2 = load i32* %arrayidx2, align 4, !dbg !878, !tbaa !372
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !176), !dbg !878
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !174), !dbg !879
  %cmp59 = icmp sgt i32 %num_of_bits, 7, !dbg !880
  br i1 %cmp59, label %while.body.lr.ph, label %while.end, !dbg !880

while.body.lr.ph:                                 ; preds = %entry
  %3 = sext i32 %0 to i64
  %4 = add i32 %num_of_bits, -8, !dbg !880
  %5 = lshr i32 %4, 3, !dbg !880
  %6 = shl nuw i32 %5, 3, !dbg !880
  %7 = add i32 %0, %5, !dbg !880
  br label %while.body, !dbg !880

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv = phi i64 [ %3, %while.body.lr.ph ], [ %indvars.iv.next, %while.body ]
  %num_of_bits.addr.063 = phi i32 [ %num_of_bits, %while.body.lr.ph ], [ %sub5, %while.body ]
  %lastbyte.061 = phi i32 [ %2, %while.body.lr.ph ], [ %or, %while.body ]
  %num.060 = phi i32 [ 0, %while.body.lr.ph ], [ %or7, %while.body ]
  %shl3 = shl i32 %lastbyte.061, 8, !dbg !881
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !880
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !173), !dbg !881
  %arrayidx4 = getelementptr inbounds i8* %add.ptr, i64 %indvars.iv, !dbg !881
  %8 = load i8* %arrayidx4, align 1, !dbg !881, !tbaa !305
  %conv = zext i8 %8 to i32, !dbg !881
  %or = or i32 %conv, %shl3, !dbg !881
  tail call void @llvm.dbg.value(metadata !{i32 %or}, i64 0, metadata !176), !dbg !881
  %shr = lshr i32 %or, %1, !dbg !883
  %sub5 = add nsw i32 %num_of_bits.addr.063, -8, !dbg !883
  %shl6 = shl i32 %shr, %sub5, !dbg !883
  %or7 = or i32 %shl6, %num.060, !dbg !883
  tail call void @llvm.dbg.value(metadata !{i32 %or7}, i64 0, metadata !174), !dbg !883
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !172), !dbg !884
  %cmp = icmp sgt i32 %sub5, 7, !dbg !880
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge, !dbg !880

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %9 = sub i32 %4, %6, !dbg !880
  %10 = add i32 %7, 1, !dbg !880
  br label %while.end, !dbg !880

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %num_of_bits.addr.0.lcssa = phi i32 [ %9, %while.cond.while.end_crit_edge ], [ %num_of_bits, %entry ]
  %cnt.0.lcssa = phi i32 [ %10, %while.cond.while.end_crit_edge ], [ %0, %entry ]
  %lastbyte.0.lcssa = phi i32 [ %or, %while.cond.while.end_crit_edge ], [ %2, %entry ]
  %num.0.lcssa = phi i32 [ %or7, %while.cond.while.end_crit_edge ], [ 0, %entry ]
  %cmp9 = icmp sgt i32 %num_of_bits.addr.0.lcssa, 0, !dbg !885
  br i1 %cmp9, label %if.then, label %if.end25, !dbg !885

if.then:                                          ; preds = %while.end
  %cmp11 = icmp ult i32 %1, %num_of_bits.addr.0.lcssa, !dbg !886
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !886

if.then13:                                        ; preds = %if.then
  %add = add i32 %1, 8, !dbg !888
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !175), !dbg !888
  %shl14 = shl i32 %lastbyte.0.lcssa, 8, !dbg !890
  %inc15 = add nsw i32 %cnt.0.lcssa, 1, !dbg !890
  tail call void @llvm.dbg.value(metadata !{i32 %inc15}, i64 0, metadata !173), !dbg !890
  %idxprom16 = sext i32 %cnt.0.lcssa to i64, !dbg !890
  %arrayidx17 = getelementptr inbounds i8* %add.ptr, i64 %idxprom16, !dbg !890
  %11 = load i8* %arrayidx17, align 1, !dbg !890, !tbaa !305
  %conv18 = zext i8 %11 to i32, !dbg !890
  %or19 = or i32 %conv18, %shl14, !dbg !890
  tail call void @llvm.dbg.value(metadata !{i32 %or19}, i64 0, metadata !176), !dbg !890
  br label %if.end, !dbg !891

if.end:                                           ; preds = %if.then13, %if.then
  %lastbits.0 = phi i32 [ %add, %if.then13 ], [ %1, %if.then ]
  %lastbyte.1 = phi i32 [ %or19, %if.then13 ], [ %lastbyte.0.lcssa, %if.then ]
  %cnt.1 = phi i32 [ %inc15, %if.then13 ], [ %cnt.0.lcssa, %if.then ]
  %sub20 = sub i32 %lastbits.0, %num_of_bits.addr.0.lcssa, !dbg !892
  tail call void @llvm.dbg.value(metadata !{i32 %sub20}, i64 0, metadata !175), !dbg !892
  %shr21 = lshr i32 %lastbyte.1, %sub20, !dbg !893
  %shl22 = shl i32 1, %num_of_bits.addr.0.lcssa, !dbg !893
  %sub23 = add nsw i32 %shl22, -1, !dbg !893
  %and = and i32 %shr21, %sub23, !dbg !893
  %or24 = or i32 %and, %num.0.lcssa, !dbg !893
  tail call void @llvm.dbg.value(metadata !{i32 %or24}, i64 0, metadata !174), !dbg !893
  br label %if.end25, !dbg !894

if.end25:                                         ; preds = %if.end, %while.end
  %num.1 = phi i32 [ %or24, %if.end ], [ %num.0.lcssa, %while.end ]
  %lastbits.1 = phi i32 [ %sub20, %if.end ], [ %1, %while.end ]
  %lastbyte.2 = phi i32 [ %lastbyte.1, %if.end ], [ %lastbyte.0.lcssa, %while.end ]
  %cnt.2 = phi i32 [ %cnt.1, %if.end ], [ %cnt.0.lcssa, %while.end ]
  %and26 = and i32 %num.1, %sub, !dbg !895
  tail call void @llvm.dbg.value(metadata !{i32 %and26}, i64 0, metadata !174), !dbg !895
  store i32 %cnt.2, i32* %buf, align 4, !dbg !896, !tbaa !372
  store i32 %lastbits.1, i32* %arrayidx1, align 4, !dbg !897, !tbaa !372
  store i32 %lastbyte.2, i32* %arrayidx2, align 4, !dbg !898, !tbaa !372
  ret i32 %and26, !dbg !899
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @receiveints(i32* nocapture %buf, i32 %num_of_bits, i32* nocapture %sizes, i32* nocapture %nums) #0 {
entry:
  %bytes = alloca [32 x i32], align 16
  call void @llvm.dbg.value(metadata !776, i64 0, metadata !154), !dbg !900
  %0 = bitcast [32 x i32]* %bytes to i8*, !dbg !901
  call void @llvm.lifetime.start(i64 128, i8* %0) #5, !dbg !901
  call void @llvm.dbg.declare(metadata !{[32 x i32]* %bytes}, metadata !158), !dbg !901
  %arrayidx = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 3, !dbg !902
  store i32 0, i32* %arrayidx, align 4, !dbg !902, !tbaa !372
  %arrayidx1 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 2, !dbg !902
  store i32 0, i32* %arrayidx1, align 8, !dbg !902, !tbaa !372
  %arrayidx2 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 1, !dbg !902
  store i32 0, i32* %arrayidx2, align 4, !dbg !902, !tbaa !372
  call void @llvm.dbg.value(metadata !9, i64 0, metadata !164), !dbg !903
  %cmp6 = icmp sgt i32 %num_of_bits, 8, !dbg !904
  br i1 %cmp6, label %while.body.lr.ph, label %while.end, !dbg !904

while.body.lr.ph:                                 ; preds = %entry
  %1 = add i32 %num_of_bits, -8, !dbg !904
  %2 = add i32 %num_of_bits, -9, !dbg !904
  %3 = lshr i32 %2, 3, !dbg !904
  %4 = shl nuw i32 %3, 3, !dbg !904
  %5 = sub i32 %1, %4, !dbg !904
  br label %while.body, !dbg !904

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv13 = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next14, %while.body ]
  %num_of_bits.addr.08 = phi i32 [ %num_of_bits, %while.body.lr.ph ], [ %sub, %while.body ]
  %call = call fastcc i32 @receivebits(i32* %buf, i32 8) #10, !dbg !905
  %indvars.iv.next14 = add i64 %indvars.iv13, 1, !dbg !904
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !164), !dbg !905
  %arrayidx3 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv13, !dbg !905
  store i32 %call, i32* %arrayidx3, align 4, !dbg !905, !tbaa !372
  %sub = add nsw i32 %num_of_bits.addr.08, -8, !dbg !907
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !155), !dbg !907
  %cmp = icmp sgt i32 %sub, 8, !dbg !904
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge, !dbg !904

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %6 = add i32 %3, 1, !dbg !904
  br label %while.end, !dbg !904

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %num_of_bits.addr.0.lcssa = phi i32 [ %5, %while.cond.while.end_crit_edge ], [ %num_of_bits, %entry ]
  %num_of_bytes.0.lcssa = phi i32 [ %6, %while.cond.while.end_crit_edge ], [ 0, %entry ]
  %cmp4 = icmp sgt i32 %num_of_bits.addr.0.lcssa, 0, !dbg !908
  br i1 %cmp4, label %if.then, label %if.end, !dbg !908

if.then:                                          ; preds = %while.end
  %call5 = call fastcc i32 @receivebits(i32* %buf, i32 %num_of_bits.addr.0.lcssa) #10, !dbg !909
  %inc6 = add nsw i32 %num_of_bytes.0.lcssa, 1, !dbg !909
  call void @llvm.dbg.value(metadata !{i32 %inc6}, i64 0, metadata !164), !dbg !909
  %idxprom7 = sext i32 %num_of_bytes.0.lcssa to i64, !dbg !909
  %arrayidx8 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %idxprom7, !dbg !909
  store i32 %call5, i32* %arrayidx8, align 4, !dbg !909, !tbaa !372
  br label %if.end, !dbg !911

if.end:                                           ; preds = %if.then, %while.end
  %num_of_bytes.1 = phi i32 [ %inc6, %if.then ], [ %num_of_bytes.0.lcssa, %while.end ]
  call void @llvm.dbg.value(metadata !912, i64 0, metadata !162), !dbg !913
  %cmp132 = icmp sgt i32 %num_of_bytes.1, 0, !dbg !915
  %7 = sext i32 %num_of_bytes.1 to i64
  br label %for.cond12.preheader, !dbg !913

for.cond12.preheader:                             ; preds = %if.end, %for.end
  %indvars.iv11 = phi i64 [ 2, %if.end ], [ %indvars.iv.next12, %for.end ]
  br i1 %cmp132, label %for.body14.lr.ph, label %for.end, !dbg !915

for.body14.lr.ph:                                 ; preds = %for.cond12.preheader
  %arrayidx18 = getelementptr inbounds i32* %sizes, i64 %indvars.iv11, !dbg !918
  %8 = load i32* %arrayidx18, align 4, !dbg !918, !tbaa !372
  br label %for.body14, !dbg !915

for.body14:                                       ; preds = %for.body14.lr.ph, %for.body14
  %indvars.iv = phi i64 [ %7, %for.body14.lr.ph ], [ %indvars.iv.next, %for.body14 ]
  %num.03 = phi i32 [ 0, %for.body14.lr.ph ], [ %sub23, %for.body14 ]
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !915
  %shl = shl i32 %num.03, 8, !dbg !920
  %arrayidx16 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv.next, !dbg !920
  %9 = load i32* %arrayidx16, align 4, !dbg !920, !tbaa !372
  %or = or i32 %9, %shl, !dbg !920
  call void @llvm.dbg.value(metadata !{i32 %or}, i64 0, metadata !166), !dbg !920
  %div = udiv i32 %or, %8, !dbg !918
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !165), !dbg !918
  store i32 %div, i32* %arrayidx16, align 4, !dbg !921, !tbaa !372
  %mul = mul i32 %8, %div, !dbg !922
  %sub23 = sub i32 %or, %mul, !dbg !922
  call void @llvm.dbg.value(metadata !{i32 %sub23}, i64 0, metadata !166), !dbg !922
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !915
  %cmp13 = icmp sgt i32 %10, 0, !dbg !915
  br i1 %cmp13, label %for.body14, label %for.end, !dbg !915

for.end:                                          ; preds = %for.body14, %for.cond12.preheader
  %num.0.lcssa = phi i32 [ 0, %for.cond12.preheader ], [ %sub23, %for.body14 ]
  %arrayidx25 = getelementptr inbounds i32* %nums, i64 %indvars.iv11, !dbg !923
  store i32 %num.0.lcssa, i32* %arrayidx25, align 4, !dbg !923, !tbaa !372
  %indvars.iv.next12 = add i64 %indvars.iv11, -1, !dbg !913
  %11 = trunc i64 %indvars.iv.next12 to i32, !dbg !913
  %cmp10 = icmp sgt i32 %11, 0, !dbg !913
  br i1 %cmp10, label %for.cond12.preheader, label %for.end28, !dbg !913

for.end28:                                        ; preds = %for.end
  %12 = bitcast [32 x i32]* %bytes to i64*, !dbg !924
  %13 = load i64* %12, align 16, !dbg !924
  %14 = trunc i64 %13 to i32, !dbg !924
  %15 = lshr i64 %13, 24, !dbg !924
  %.tr = trunc i64 %15 to i32, !dbg !924
  %shl31 = and i32 %.tr, -256, !dbg !924
  %or32 = or i32 %shl31, %14, !dbg !924
  %16 = bitcast i32* %arrayidx1 to i64*, !dbg !924
  %17 = load i64* %16, align 8, !dbg !924
  %18 = trunc i64 %17 to i32, !dbg !924
  %shl34 = shl i32 %18, 16, !dbg !924
  %or35 = or i32 %or32, %shl34, !dbg !924
  %19 = lshr i64 %17, 8, !dbg !924
  %.tr17 = trunc i64 %19 to i32, !dbg !924
  %shl37 = and i32 %.tr17, -16777216, !dbg !924
  %or38 = or i32 %or35, %shl37, !dbg !924
  store i32 %or38, i32* %nums, align 4, !dbg !924, !tbaa !372
  call void @llvm.lifetime.end(i64 128, i8* %0) #5, !dbg !925
  ret void, !dbg !925
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !9, metadata !10, metadata !227, metadata !9, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"xdr_op", i32 119, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [xdr_op] [line 119, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8}
!6 = metadata !{i32 786472, metadata !"XDR_ENCODE", i64 0} ; [ DW_TAG_enumerator ] [XDR_ENCODE :: 0]
!7 = metadata !{i32 786472, metadata !"XDR_DECODE", i64 1} ; [ DW_TAG_enumerator ] [XDR_DECODE :: 1]
!8 = metadata !{i32 786472, metadata !"XDR_FREE", i64 2} ; [ DW_TAG_enumerator ] [XDR_FREE :: 2]
!9 = metadata !{i32 0}
!10 = metadata !{metadata !11, metadata !82, metadata !88, metadata !148, metadata !167, metadata !181, metadata !196, metadata !207, metadata !220}
!11 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdropen", metadata !"xdropen", metadata !"", i32 318, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i8*, i8*)* @xdropen, null, null, metadata !72, i32 318} ; [ DW_TAG_subprogram ] [line 318] [def] [xdropen]
!12 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!13 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !15, metadata !16, metadata !70, metadata !70}
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from XDR]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"XDR", i32 144, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [XDR] [line 144, size 0, align 0, offset 0] [from XDR]
!18 = metadata !{i32 786451, metadata !4, null, metadata !"XDR", i32 145, i64 384, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [XDR] [line 145, size 384, align 64, offset 0] [from ]
!19 = metadata !{metadata !20, metadata !21, metadata !66, metadata !67, metadata !68, metadata !69}
!20 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"x_op", i32 147, i64 32, i64 32, i64 0, i32 0, metadata !3} ; [ DW_TAG_member ] [x_op] [line 147, size 32, align 32, offset 0] [from xdr_op]
!21 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"x_ops", i32 171, i64 64, i64 64, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [x_ops] [line 171, size 64, align 64, offset 64] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from xdr_ops]
!23 = metadata !{i32 786451, metadata !4, null, metadata !"xdr_ops", i32 148, i64 640, i64 64, i32 0, i32 0, null, metadata !24, i32 0, null, null} ; [ DW_TAG_structure_type ] [xdr_ops] [line 148, size 640, align 64, offset 0] [from ]
!24 = metadata !{metadata !25, metadata !34, metadata !35, metadata !42, metadata !43, metadata !47, metadata !51, metadata !57, metadata !61, metadata !65}
!25 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_getlong", i32 150, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [x_getlong] [line 150, size 64, align 64, offset 0] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !29, metadata !30, metadata !32}
!29 = metadata !{i32 786454, metadata !4, null, metadata !"bool_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [bool_t] [line 99, size 0, align 0, offset 0] [from int]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from XDR]
!31 = metadata !{i32 786454, metadata !4, null, metadata !"XDR", i32 144, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [XDR] [line 144, size 0, align 0, offset 0] [from XDR]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long int]
!33 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!34 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_putlong", i32 152, i64 64, i64 64, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [x_putlong] [line 152, size 64, align 64, offset 64] [from ]
!35 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_getbytes", i32 154, i64 64, i64 64, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [x_getbytes] [line 154, size 64, align 64, offset 128] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!37 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!38 = metadata !{metadata !29, metadata !30, metadata !39, metadata !41}
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!40 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!41 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!42 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_putbytes", i32 156, i64 64, i64 64, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [x_putbytes] [line 156, size 64, align 64, offset 192] [from ]
!43 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_getpostn", i32 158, i64 64, i64 64, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [x_getpostn] [line 158, size 64, align 64, offset 256] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!46 = metadata !{metadata !41, metadata !30}
!47 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_setpostn", i32 160, i64 64, i64 64, i64 320, i32 0, metadata !48} ; [ DW_TAG_member ] [x_setpostn] [line 160, size 64, align 64, offset 320] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{metadata !29, metadata !30, metadata !41}
!51 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_inline", i32 162, i64 64, i64 64, i64 384, i32 0, metadata !52} ; [ DW_TAG_member ] [x_inline] [line 162, size 64, align 64, offset 384] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{metadata !55, metadata !30, metadata !15}
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from xdr_int32_t]
!56 = metadata !{i32 786454, metadata !4, null, metadata !"xdr_int32_t", i32 106, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [xdr_int32_t] [line 106, size 0, align 0, offset 0] [from int]
!57 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_destroy", i32 164, i64 64, i64 64, i64 448, i32 0, metadata !58} ; [ DW_TAG_member ] [x_destroy] [line 164, size 64, align 64, offset 448] [from ]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!59 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{null, metadata !30}
!61 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_getint32", i32 166, i64 64, i64 64, i64 512, i32 0, metadata !62} ; [ DW_TAG_member ] [x_getint32] [line 166, size 64, align 64, offset 512] [from ]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!63 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!64 = metadata !{metadata !29, metadata !30, metadata !55}
!65 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_putint32", i32 168, i64 64, i64 64, i64 576, i32 0, metadata !62} ; [ DW_TAG_member ] [x_putint32] [line 168, size 64, align 64, offset 576] [from ]
!66 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"x_public", i32 172, i64 64, i64 64, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [x_public] [line 172, size 64, align 64, offset 128] [from ]
!67 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"x_private", i32 173, i64 64, i64 64, i64 192, i32 0, metadata !39} ; [ DW_TAG_member ] [x_private] [line 173, size 64, align 64, offset 192] [from ]
!68 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"x_base", i32 174, i64 64, i64 64, i64 256, i32 0, metadata !39} ; [ DW_TAG_member ] [x_base] [line 174, size 64, align 64, offset 256] [from ]
!69 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"x_handy", i32 175, i64 32, i64 32, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [x_handy] [line 175, size 32, align 32, offset 320] [from int]
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!71 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!72 = metadata !{metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78}
!73 = metadata !{i32 786689, metadata !11, metadata !"xdrs", metadata !12, i32 16777534, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 318]
!74 = metadata !{i32 786689, metadata !11, metadata !"filename", metadata !12, i32 33554750, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 318]
!75 = metadata !{i32 786689, metadata !11, metadata !"type", metadata !12, i32 50331966, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 318]
!76 = metadata !{i32 786688, metadata !11, metadata !"lmode", metadata !12, i32 320, metadata !3, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lmode] [line 320]
!77 = metadata !{i32 786688, metadata !11, metadata !"xdrid", metadata !12, i32 321, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xdrid] [line 321]
!78 = metadata !{i32 786688, metadata !11, metadata !"newtype", metadata !12, i32 322, metadata !79, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newtype] [line 322]
!79 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 40, i64 8, i32 0, i32 0, metadata !40, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 40, align 8, offset 0] [from char]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ] [0, 4]
!82 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdrclose", metadata !"xdrclose", metadata !"", i32 378, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*)* @xdrclose, null, null, metadata !85, i32 378} ; [ DW_TAG_subprogram ] [line 378] [def] [xdrclose]
!83 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{metadata !15, metadata !16}
!85 = metadata !{metadata !86, metadata !87}
!86 = metadata !{i32 786689, metadata !82, metadata !"xdrs", metadata !12, i32 16777594, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 378]
!87 = metadata !{i32 786688, metadata !82, metadata !"xdrid", metadata !12, i32 379, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xdrid] [line 379]
!88 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr3dfcoord", metadata !"xdr3dfcoord", metadata !"", i32 671, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, float*, i32*, float*)* @xdr3dfcoord, null, null, metadata !94, i32 671} ; [ DW_TAG_subprogram ] [line 671] [def] [xdr3dfcoord]
!89 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!90 = metadata !{metadata !15, metadata !16, metadata !91, metadata !93, metadata !91}
!91 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!92 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!94 = metadata !{metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !118, metadata !119, metadata !120, metadata !121, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147}
!95 = metadata !{i32 786689, metadata !88, metadata !"xdrs", metadata !12, i32 16777887, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 671]
!96 = metadata !{i32 786689, metadata !88, metadata !"fp", metadata !12, i32 33555103, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 671]
!97 = metadata !{i32 786689, metadata !88, metadata !"size", metadata !12, i32 50332319, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 671]
!98 = metadata !{i32 786689, metadata !88, metadata !"precision", metadata !12, i32 67109535, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [precision] [line 671]
!99 = metadata !{i32 786688, metadata !88, metadata !"minint", metadata !12, i32 678, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minint] [line 678]
!100 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !15, metadata !101, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!101 = metadata !{metadata !102}
!102 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!103 = metadata !{i32 786688, metadata !88, metadata !"maxint", metadata !12, i32 678, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxint] [line 678]
!104 = metadata !{i32 786688, metadata !88, metadata !"mindiff", metadata !12, i32 678, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mindiff] [line 678]
!105 = metadata !{i32 786688, metadata !88, metadata !"lip", metadata !12, i32 678, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lip] [line 678]
!106 = metadata !{i32 786688, metadata !88, metadata !"diff", metadata !12, i32 678, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff] [line 678]
!107 = metadata !{i32 786688, metadata !88, metadata !"lint1", metadata !12, i32 679, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lint1] [line 679]
!108 = metadata !{i32 786688, metadata !88, metadata !"lint2", metadata !12, i32 679, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lint2] [line 679]
!109 = metadata !{i32 786688, metadata !88, metadata !"lint3", metadata !12, i32 679, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lint3] [line 679]
!110 = metadata !{i32 786688, metadata !88, metadata !"oldlint1", metadata !12, i32 679, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldlint1] [line 679]
!111 = metadata !{i32 786688, metadata !88, metadata !"oldlint2", metadata !12, i32 679, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldlint2] [line 679]
!112 = metadata !{i32 786688, metadata !88, metadata !"oldlint3", metadata !12, i32 679, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldlint3] [line 679]
!113 = metadata !{i32 786688, metadata !88, metadata !"smallidx", metadata !12, i32 679, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [smallidx] [line 679]
!114 = metadata !{i32 786688, metadata !88, metadata !"minidx", metadata !12, i32 680, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minidx] [line 680]
!115 = metadata !{i32 786688, metadata !88, metadata !"maxidx", metadata !12, i32 680, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxidx] [line 680]
!116 = metadata !{i32 786688, metadata !88, metadata !"sizeint", metadata !12, i32 681, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizeint] [line 681]
!117 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !41, metadata !101, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from unsigned int]
!118 = metadata !{i32 786688, metadata !88, metadata !"sizesmall", metadata !12, i32 681, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizesmall] [line 681]
!119 = metadata !{i32 786688, metadata !88, metadata !"bitsizeint", metadata !12, i32 681, metadata !117, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitsizeint] [line 681]
!120 = metadata !{i32 786688, metadata !88, metadata !"size3", metadata !12, i32 681, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size3] [line 681]
!121 = metadata !{i32 786688, metadata !88, metadata !"luip", metadata !12, i32 681, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [luip] [line 681]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned int]
!123 = metadata !{i32 786688, metadata !88, metadata !"flag", metadata !12, i32 682, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flag] [line 682]
!124 = metadata !{i32 786688, metadata !88, metadata !"k", metadata !12, i32 682, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 682]
!125 = metadata !{i32 786688, metadata !88, metadata !"smallnum", metadata !12, i32 683, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [smallnum] [line 683]
!126 = metadata !{i32 786688, metadata !88, metadata !"smaller", metadata !12, i32 683, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [smaller] [line 683]
!127 = metadata !{i32 786688, metadata !88, metadata !"larger", metadata !12, i32 683, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [larger] [line 683]
!128 = metadata !{i32 786688, metadata !88, metadata !"i", metadata !12, i32 683, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 683]
!129 = metadata !{i32 786688, metadata !88, metadata !"is_small", metadata !12, i32 683, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_small] [line 683]
!130 = metadata !{i32 786688, metadata !88, metadata !"is_smaller", metadata !12, i32 683, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_smaller] [line 683]
!131 = metadata !{i32 786688, metadata !88, metadata !"run", metadata !12, i32 683, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [run] [line 683]
!132 = metadata !{i32 786688, metadata !88, metadata !"prevrun", metadata !12, i32 683, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prevrun] [line 683]
!133 = metadata !{i32 786688, metadata !88, metadata !"lfp", metadata !12, i32 684, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lfp] [line 684]
!134 = metadata !{i32 786688, metadata !88, metadata !"lf", metadata !12, i32 684, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lf] [line 684]
!135 = metadata !{i32 786688, metadata !88, metadata !"tmp", metadata !12, i32 685, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 685]
!136 = metadata !{i32 786688, metadata !88, metadata !"thiscoord", metadata !12, i32 685, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thiscoord] [line 685]
!137 = metadata !{i32 786688, metadata !88, metadata !"prevcoord", metadata !12, i32 685, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prevcoord] [line 685]
!138 = metadata !{i32 786688, metadata !88, metadata !"tmpcoord", metadata !12, i32 686, metadata !139, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmpcoord] [line 686]
!139 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 960, i64 32, i32 0, i32 0, metadata !41, metadata !140, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 960, align 32, offset 0] [from unsigned int]
!140 = metadata !{metadata !141}
!141 = metadata !{i32 786465, i64 0, i64 30}      ; [ DW_TAG_subrange_type ] [0, 29]
!142 = metadata !{i32 786688, metadata !88, metadata !"bufsize", metadata !12, i32 688, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bufsize] [line 688]
!143 = metadata !{i32 786688, metadata !88, metadata !"xdrid", metadata !12, i32 688, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xdrid] [line 688]
!144 = metadata !{i32 786688, metadata !88, metadata !"lsize", metadata !12, i32 688, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lsize] [line 688]
!145 = metadata !{i32 786688, metadata !88, metadata !"bitsize", metadata !12, i32 689, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitsize] [line 689]
!146 = metadata !{i32 786688, metadata !88, metadata !"inv_precision", metadata !12, i32 690, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inv_precision] [line 690]
!147 = metadata !{i32 786688, metadata !88, metadata !"errval", metadata !12, i32 691, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errval] [line 691]
!148 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"receiveints", metadata !"receiveints", metadata !"", i32 617, metadata !149, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32, i32*, i32*)* @receiveints, null, null, metadata !152, i32 618} ; [ DW_TAG_subprogram ] [line 617] [local] [def] [scope 618] [receiveints]
!149 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!150 = metadata !{null, metadata !93, metadata !151, metadata !15, metadata !122, metadata !93}
!151 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!152 = metadata !{metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166}
!153 = metadata !{i32 786689, metadata !148, metadata !"buf", metadata !12, i32 16777833, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 617]
!154 = metadata !{i32 786689, metadata !148, metadata !"num_of_ints", metadata !12, i32 33555049, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_of_ints] [line 617]
!155 = metadata !{i32 786689, metadata !148, metadata !"num_of_bits", metadata !12, i32 50332265, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_of_bits] [line 617]
!156 = metadata !{i32 786689, metadata !148, metadata !"sizes", metadata !12, i32 67109482, metadata !122, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sizes] [line 618]
!157 = metadata !{i32 786689, metadata !148, metadata !"nums", metadata !12, i32 83886698, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nums] [line 618]
!158 = metadata !{i32 786688, metadata !148, metadata !"bytes", metadata !12, i32 619, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytes] [line 619]
!159 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !15, metadata !160, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!160 = metadata !{metadata !161}
!161 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!162 = metadata !{i32 786688, metadata !148, metadata !"i", metadata !12, i32 620, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 620]
!163 = metadata !{i32 786688, metadata !148, metadata !"j", metadata !12, i32 620, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 620]
!164 = metadata !{i32 786688, metadata !148, metadata !"num_of_bytes", metadata !12, i32 620, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_of_bytes] [line 620]
!165 = metadata !{i32 786688, metadata !148, metadata !"p", metadata !12, i32 620, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 620]
!166 = metadata !{i32 786688, metadata !148, metadata !"num", metadata !12, i32 620, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 620]
!167 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"receivebits", metadata !"receivebits", metadata !"", i32 573, metadata !168, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i32)* @receivebits, null, null, metadata !170, i32 573} ; [ DW_TAG_subprogram ] [line 573] [local] [def] [receivebits]
!168 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !169, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!169 = metadata !{metadata !15, metadata !93, metadata !15}
!170 = metadata !{metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !180}
!171 = metadata !{i32 786689, metadata !167, metadata !"buf", metadata !12, i32 16777789, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 573]
!172 = metadata !{i32 786689, metadata !167, metadata !"num_of_bits", metadata !12, i32 33555005, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_of_bits] [line 573]
!173 = metadata !{i32 786688, metadata !167, metadata !"cnt", metadata !12, i32 575, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cnt] [line 575]
!174 = metadata !{i32 786688, metadata !167, metadata !"num", metadata !12, i32 575, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 575]
!175 = metadata !{i32 786688, metadata !167, metadata !"lastbits", metadata !12, i32 576, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastbits] [line 576]
!176 = metadata !{i32 786688, metadata !167, metadata !"lastbyte", metadata !12, i32 576, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastbyte] [line 576]
!177 = metadata !{i32 786688, metadata !167, metadata !"cbuf", metadata !12, i32 577, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cbuf] [line 577]
!178 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !179} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!179 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!180 = metadata !{i32 786688, metadata !167, metadata !"mask", metadata !12, i32 578, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mask] [line 578]
!181 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"sendints", metadata !"sendints", metadata !"", i32 518, metadata !182, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32, i32*, i32*)* @sendints, null, null, metadata !184, i32 519} ; [ DW_TAG_subprogram ] [line 518] [local] [def] [scope 519] [sendints]
!182 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !183, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!183 = metadata !{null, metadata !93, metadata !151, metadata !151, metadata !122, metadata !122}
!184 = metadata !{metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !193, metadata !194, metadata !195}
!185 = metadata !{i32 786689, metadata !181, metadata !"buf", metadata !12, i32 16777734, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 518]
!186 = metadata !{i32 786689, metadata !181, metadata !"num_of_ints", metadata !12, i32 33554950, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_of_ints] [line 518]
!187 = metadata !{i32 786689, metadata !181, metadata !"num_of_bits", metadata !12, i32 50332166, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_of_bits] [line 518]
!188 = metadata !{i32 786689, metadata !181, metadata !"sizes", metadata !12, i32 67109383, metadata !122, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sizes] [line 519]
!189 = metadata !{i32 786689, metadata !181, metadata !"nums", metadata !12, i32 83886599, metadata !122, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nums] [line 519]
!190 = metadata !{i32 786688, metadata !181, metadata !"i", metadata !12, i32 521, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 521]
!191 = metadata !{i32 786688, metadata !181, metadata !"bytes", metadata !12, i32 522, metadata !192, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytes] [line 522]
!192 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !41, metadata !160, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!193 = metadata !{i32 786688, metadata !181, metadata !"num_of_bytes", metadata !12, i32 522, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_of_bytes] [line 522]
!194 = metadata !{i32 786688, metadata !181, metadata !"bytecnt", metadata !12, i32 522, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytecnt] [line 522]
!195 = metadata !{i32 786688, metadata !181, metadata !"tmp", metadata !12, i32 522, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 522]
!196 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"sendbits", metadata !"sendbits", metadata !"", i32 412, metadata !197, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32, i32)* @sendbits, null, null, metadata !199, i32 412} ; [ DW_TAG_subprogram ] [line 412] [local] [def] [sendbits]
!197 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!198 = metadata !{null, metadata !93, metadata !15, metadata !15}
!199 = metadata !{metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206}
!200 = metadata !{i32 786689, metadata !196, metadata !"buf", metadata !12, i32 16777628, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 412]
!201 = metadata !{i32 786689, metadata !196, metadata !"num_of_bits", metadata !12, i32 33554844, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_of_bits] [line 412]
!202 = metadata !{i32 786689, metadata !196, metadata !"num", metadata !12, i32 50332060, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num] [line 412]
!203 = metadata !{i32 786688, metadata !196, metadata !"cnt", metadata !12, i32 414, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cnt] [line 414]
!204 = metadata !{i32 786688, metadata !196, metadata !"lastbyte", metadata !12, i32 414, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastbyte] [line 414]
!205 = metadata !{i32 786688, metadata !196, metadata !"lastbits", metadata !12, i32 415, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastbits] [line 415]
!206 = metadata !{i32 786688, metadata !196, metadata !"cbuf", metadata !12, i32 416, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cbuf] [line 416]
!207 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"sizeofints", metadata !"sizeofints", metadata !"", i32 474, metadata !208, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*)* @sizeofints, null, null, metadata !210, i32 474} ; [ DW_TAG_subprogram ] [line 474] [local] [def] [sizeofints]
!208 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!209 = metadata !{metadata !15, metadata !151, metadata !122}
!210 = metadata !{metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219}
!211 = metadata !{i32 786689, metadata !207, metadata !"num_of_ints", metadata !12, i32 16777690, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num_of_ints] [line 474]
!212 = metadata !{i32 786689, metadata !207, metadata !"sizes", metadata !12, i32 33554906, metadata !122, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sizes] [line 474]
!213 = metadata !{i32 786688, metadata !207, metadata !"i", metadata !12, i32 475, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 475]
!214 = metadata !{i32 786688, metadata !207, metadata !"num", metadata !12, i32 475, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 475]
!215 = metadata !{i32 786688, metadata !207, metadata !"num_of_bytes", metadata !12, i32 476, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_of_bytes] [line 476]
!216 = metadata !{i32 786688, metadata !207, metadata !"num_of_bits", metadata !12, i32 476, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_of_bits] [line 476]
!217 = metadata !{i32 786688, metadata !207, metadata !"bytes", metadata !12, i32 476, metadata !192, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytes] [line 476]
!218 = metadata !{i32 786688, metadata !207, metadata !"bytecnt", metadata !12, i32 476, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytecnt] [line 476]
!219 = metadata !{i32 786688, metadata !207, metadata !"tmp", metadata !12, i32 476, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 476]
!220 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"sizeofint", metadata !"sizeofint", metadata !"", i32 451, metadata !221, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !223, i32 451} ; [ DW_TAG_subprogram ] [line 451] [local] [def] [sizeofint]
!221 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !222, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!222 = metadata !{metadata !15, metadata !151}
!223 = metadata !{metadata !224, metadata !225, metadata !226}
!224 = metadata !{i32 786689, metadata !220, metadata !"size", metadata !12, i32 16777667, metadata !151, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 451]
!225 = metadata !{i32 786688, metadata !220, metadata !"num", metadata !12, i32 452, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 452]
!226 = metadata !{i32 786688, metadata !220, metadata !"num_of_bits", metadata !12, i32 453, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num_of_bits] [line 453]
!227 = metadata !{metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !288, metadata !290, metadata !291}
!228 = metadata !{i32 786484, i32 0, metadata !11, metadata !"init_done", metadata !"init_done", metadata !"", metadata !12, i32 319, metadata !15, i32 1, i32 1, null, null}
!229 = metadata !{i32 786484, i32 0, metadata !88, metadata !"ip", metadata !"ip", metadata !"", metadata !12, i32 674, metadata !93, i32 1, i32 1, i32** @xdr3dfcoord.ip, null} ; [ DW_TAG_variable ] [ip] [line 674] [local] [def]
!230 = metadata !{i32 786484, i32 0, metadata !88, metadata !"oldsize", metadata !"oldsize", metadata !"", metadata !12, i32 675, metadata !15, i32 1, i32 1, i32* @xdr3dfcoord.oldsize, null} ; [ DW_TAG_variable ] [oldsize] [line 675] [local] [def]
!231 = metadata !{i32 786484, i32 0, metadata !88, metadata !"buf", metadata !"buf", metadata !"", metadata !12, i32 676, metadata !93, i32 1, i32 1, i32** @xdr3dfcoord.buf, null} ; [ DW_TAG_variable ] [buf] [line 676] [local] [def]
!232 = metadata !{i32 786484, i32 0, null, metadata !"xdrfiles", metadata !"xdrfiles", metadata !"", metadata !12, i32 46, metadata !233, i32 1, i32 1, [20 x %struct._IO_FILE*]* @xdrfiles, null} ; [ DW_TAG_variable ] [xdrfiles] [line 46] [local] [def]
!233 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1280, i64 64, i32 0, i32 0, metadata !234, metadata !286, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1280, align 64, offset 0] [from ]
!234 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !235} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!235 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !236} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!236 = metadata !{i32 786451, metadata !237, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !238, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!237 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!238 = metadata !{metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !259, metadata !260, metadata !261, metadata !262, metadata !264, metadata !266, metadata !268, metadata !272, metadata !274, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !283, metadata !284}
!239 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!240 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!241 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!242 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!243 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!244 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!245 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!246 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!247 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!248 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!249 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!250 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!251 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !252} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!252 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !253} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!253 = metadata !{i32 786451, metadata !237, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !254, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!254 = metadata !{metadata !255, metadata !256, metadata !258}
!255 = metadata !{i32 786445, metadata !237, metadata !253, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !252} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!256 = metadata !{i32 786445, metadata !237, metadata !253, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !257} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!257 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!258 = metadata !{i32 786445, metadata !237, metadata !253, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!259 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !257} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!260 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !15} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!261 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !15} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!262 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !263} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!263 = metadata !{i32 786454, metadata !237, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!264 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !265} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!265 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!266 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !267} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!267 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!268 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !269} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!269 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !40, metadata !270, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!270 = metadata !{metadata !271}
!271 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!272 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !273} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!273 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!274 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !275} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!275 = metadata !{i32 786454, metadata !237, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!276 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !273} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!277 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !273} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!278 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !273} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!279 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !273} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!280 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !281} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!281 = metadata !{i32 786454, metadata !237, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !282} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!282 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!283 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !15} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!284 = metadata !{i32 786445, metadata !237, metadata !236, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !285} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!285 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !40, metadata !286, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!286 = metadata !{metadata !287}
!287 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!288 = metadata !{i32 786484, i32 0, null, metadata !"xdridptr", metadata !"xdridptr", metadata !"", metadata !12, i32 47, metadata !289, i32 1, i32 1, [20 x %struct.XDR*]* @xdridptr, null} ; [ DW_TAG_variable ] [xdridptr] [line 47] [local] [def]
!289 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1280, i64 64, i32 0, i32 0, metadata !16, metadata !286, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1280, align 64, offset 0] [from ]
!290 = metadata !{i32 786484, i32 0, null, metadata !"xdrmodes", metadata !"xdrmodes", metadata !"", metadata !12, i32 48, metadata !285, i32 1, i32 1, [20 x i8]* @xdrmodes, null} ; [ DW_TAG_variable ] [xdrmodes] [line 48] [local] [def]
!291 = metadata !{i32 786484, i32 0, null, metadata !"magicints", metadata !"magicints", metadata !"", metadata !12, i32 292, metadata !292, i32 1, i32 1, [73 x i32]* @magicints, null} ; [ DW_TAG_variable ] [magicints] [line 292] [local] [def]
!292 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2336, i64 32, i32 0, i32 0, metadata !15, metadata !293, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2336, align 32, offset 0] [from int]
!293 = metadata !{metadata !294}
!294 = metadata !{i32 786465, i64 0, i64 73}      ; [ DW_TAG_subrange_type ] [0, 72]
!295 = metadata !{i32 318, i32 0, metadata !11, null}
!296 = metadata !{i32 322, i32 0, metadata !11, null}
!297 = metadata !{i32 324, i32 0, metadata !11, null}
!298 = metadata !{i32 326, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !300, i32 325, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!300 = metadata !{i32 786443, metadata !1, metadata !301, i32 325, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!301 = metadata !{i32 786443, metadata !1, metadata !11, i32 324, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!302 = metadata !{i32 329, i32 0, metadata !301, null}
!303 = metadata !{i32 331, i32 0, metadata !11, null}
!304 = metadata !{metadata !"any pointer", metadata !305}
!305 = metadata !{metadata !"omnipotent char", metadata !306}
!306 = metadata !{metadata !"Simple C/C++ TBAA"}
!307 = metadata !{i32 332, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !11, i32 331, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!309 = metadata !{i32 334, i32 0, metadata !11, null}
!310 = metadata !{i32 337, i32 0, metadata !11, null}
!311 = metadata !{i32 338, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !11, i32 337, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!313 = metadata !{i32 339, i32 0, metadata !312, null}
!314 = metadata !{i32 340, i32 0, metadata !312, null}
!315 = metadata !{i32 341, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !11, i32 340, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!317 = metadata !{i32 342, i32 0, metadata !316, null}
!318 = metadata !{i32 343, i32 0, metadata !316, null}
!319 = metadata !{i32 344, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !11, i32 343, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!321 = metadata !{i32 1}
!322 = metadata !{i32 345, i32 0, metadata !320, null}
!323 = metadata !{i32 347, i32 0, metadata !11, null}
!324 = metadata !{i32 348, i32 0, metadata !11, null}
!325 = metadata !{i32 352, i32 0, metadata !11, null}
!326 = metadata !{i32 358, i32 0, metadata !11, null}
!327 = metadata !{i32 359, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !11, i32 358, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!329 = metadata !{i32 360, i32 0, metadata !328, null}
!330 = metadata !{i32 361, i32 0, metadata !328, null}
!331 = metadata !{i32 362, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !11, i32 361, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!333 = metadata !{i32 363, i32 0, metadata !332, null}
!334 = metadata !{i32 366, i32 0, metadata !11, null}
!335 = metadata !{i32 378, i32 0, metadata !82, null}
!336 = metadata !{i32 381, i32 0, metadata !82, null}
!337 = metadata !{i32 382, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !82, i32 381, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!339 = metadata !{i32 383, i32 0, metadata !338, null}
!340 = metadata !{i32 385, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !82, i32 385, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!342 = metadata !{i32 386, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !341, i32 385, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!344 = metadata !{i32 388, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !346, i32 388, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!346 = metadata !{i32 786443, metadata !1, metadata !343, i32 386, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!347 = metadata !{i32 389, i32 0, metadata !346, null}
!348 = metadata !{i32 390, i32 0, metadata !346, null}
!349 = metadata !{i32 391, i32 0, metadata !346, null}
!350 = metadata !{i32 394, i32 0, metadata !82, null}
!351 = metadata !{i32 395, i32 0, metadata !82, null}
!352 = metadata !{i32 671, i32 0, metadata !88, null}
!353 = metadata !{i32 678, i32 0, metadata !88, null}
!354 = metadata !{i32 679, i32 0, metadata !88, null}
!355 = metadata !{i32 681, i32 0, metadata !88, null}
!356 = metadata !{[3 x i32]* undef}
!357 = metadata !{i32 685, i32 0, metadata !88, null}
!358 = metadata !{i32 686, i32 0, metadata !88, null}
!359 = metadata !{i32 688, i32 0, metadata !88, null}
!360 = metadata !{i32 691, i32 0, metadata !88, null}
!361 = metadata !{i32 694, i32 0, metadata !88, null}
!362 = metadata !{i32 695, i32 0, metadata !88, null}
!363 = metadata !{i32 697, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !88, i32 695, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!365 = metadata !{i32 698, i32 0, metadata !366, null}
!366 = metadata !{i32 786443, metadata !1, metadata !364, i32 697, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!367 = metadata !{i32 699, i32 0, metadata !366, null}
!368 = metadata !{i32 702, i32 0, metadata !88, null}
!369 = metadata !{i32 706, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !88, i32 702, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!371 = metadata !{i32 708, i32 0, metadata !370, null}
!372 = metadata !{metadata !"int", metadata !305}
!373 = metadata !{i32 712, i32 0, metadata !370, null}
!374 = metadata !{i32 713, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !370, i32 712, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!376 = metadata !{i32 717, i32 0, metadata !370, null}
!377 = metadata !{i32 718, i32 0, metadata !370, null}
!378 = metadata !{i32 719, i32 0, metadata !379, null}
!379 = metadata !{i32 786443, metadata !1, metadata !370, i32 718, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!380 = metadata !{i32 720, i32 0, metadata !379, null}
!381 = metadata !{i32 721, i32 0, metadata !382, null}
!382 = metadata !{i32 786443, metadata !1, metadata !379, i32 720, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!383 = metadata !{i32 722, i32 0, metadata !382, null}
!384 = metadata !{i32 724, i32 0, metadata !379, null}
!385 = metadata !{i32 725, i32 0, metadata !379, null}
!386 = metadata !{i32 726, i32 0, metadata !379, null}
!387 = metadata !{i32 727, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !379, i32 726, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!389 = metadata !{i32 728, i32 0, metadata !388, null}
!390 = metadata !{i32 730, i32 0, metadata !379, null}
!391 = metadata !{i32 731, i32 0, metadata !379, null}
!392 = metadata !{i32 731, i32 0, metadata !370, null}
!393 = metadata !{i32 746, i32 0, metadata !370, null}
!394 = metadata !{i32 754, i32 0, metadata !370, null}
!395 = metadata !{i32 732, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !370, i32 731, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!397 = metadata !{i32 733, i32 0, metadata !396, null}
!398 = metadata !{i32 734, i32 0, metadata !399, null}
!399 = metadata !{i32 786443, metadata !1, metadata !396, i32 733, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!400 = metadata !{i32 735, i32 0, metadata !399, null}
!401 = metadata !{i32 737, i32 0, metadata !396, null}
!402 = metadata !{i32 738, i32 0, metadata !396, null}
!403 = metadata !{i32 739, i32 0, metadata !396, null}
!404 = metadata !{i32 740, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !396, i32 739, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!406 = metadata !{i32 741, i32 0, metadata !405, null}
!407 = metadata !{i32 743, i32 0, metadata !396, null}
!408 = metadata !{i32 744, i32 0, metadata !396, null}
!409 = metadata !{i32 747, i32 0, metadata !370, null}
!410 = metadata !{i32 748, i32 0, metadata !370, null}
!411 = metadata !{i32 -1}
!412 = metadata !{i32 749, i32 0, metadata !370, null}
!413 = metadata !{i32 750, i32 0, metadata !370, null}
!414 = metadata !{i32 751, i32 0, metadata !370, null}
!415 = metadata !{i32 2147483647}
!416 = metadata !{i32 752, i32 0, metadata !370, null}
!417 = metadata !{i32 753, i32 0, metadata !370, null}
!418 = metadata !{i32 757, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !370, i32 754, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!420 = metadata !{metadata !"float", metadata !305}
!421 = metadata !{i32 756, i32 0, metadata !419, null}
!422 = metadata !{i32 759, i32 0, metadata !419, null}
!423 = metadata !{i32 760, i32 0, metadata !419, null}
!424 = metadata !{i32 762, i32 0, metadata !425, null}
!425 = metadata !{i32 786443, metadata !1, metadata !419, i32 760, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!426 = metadata !{i32 764, i32 0, metadata !419, null}
!427 = metadata !{i32 765, i32 0, metadata !419, null}
!428 = metadata !{i32 766, i32 0, metadata !419, null}
!429 = metadata !{i32 767, i32 0, metadata !419, null}
!430 = metadata !{i32 768, i32 0, metadata !419, null}
!431 = metadata !{i32 769, i32 0, metadata !419, null}
!432 = metadata !{i32 770, i32 0, metadata !419, null}
!433 = metadata !{i32 772, i32 0, metadata !419, null}
!434 = metadata !{i32 773, i32 0, metadata !419, null}
!435 = metadata !{i32 775, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !419, i32 773, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!437 = metadata !{i32 777, i32 0, metadata !419, null}
!438 = metadata !{i32 778, i32 0, metadata !419, null}
!439 = metadata !{i32 779, i32 0, metadata !419, null}
!440 = metadata !{i32 780, i32 0, metadata !419, null}
!441 = metadata !{i32 781, i32 0, metadata !419, null}
!442 = metadata !{i32 782, i32 0, metadata !419, null}
!443 = metadata !{i32 783, i32 0, metadata !419, null}
!444 = metadata !{i32 785, i32 0, metadata !419, null}
!445 = metadata !{i32 786, i32 0, metadata !419, null}
!446 = metadata !{i32 788, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !419, i32 786, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!448 = metadata !{i32 790, i32 0, metadata !419, null}
!449 = metadata !{i32 791, i32 0, metadata !419, null}
!450 = metadata !{i32 792, i32 0, metadata !419, null}
!451 = metadata !{i32 793, i32 0, metadata !419, null}
!452 = metadata !{i32 794, i32 0, metadata !419, null}
!453 = metadata !{i32 795, i32 0, metadata !419, null}
!454 = metadata !{i32 796, i32 0, metadata !419, null}
!455 = metadata !{i32 797, i32 0, metadata !419, null}
!456 = metadata !{i32 802, i32 0, metadata !370, null}
!457 = metadata !{i32 803, i32 0, metadata !370, null}
!458 = metadata !{i32 804, i32 0, metadata !370, null}
!459 = metadata !{i32 806, i32 0, metadata !370, null}
!460 = metadata !{i32 807, i32 0, metadata !370, null}
!461 = metadata !{i32 808, i32 0, metadata !370, null}
!462 = metadata !{i32 810, i32 0, metadata !370, null}
!463 = metadata !{i32 819, i32 0, metadata !370, null}
!464 = metadata !{i32 816, i32 0, metadata !465, null}
!465 = metadata !{i32 786443, metadata !1, metadata !370, i32 812, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!466 = metadata !{i32 820, i32 0, metadata !370, null}
!467 = metadata !{i32 817, i32 0, metadata !465, null}
!468 = metadata !{i32 818, i32 0, metadata !370, null}
!469 = metadata !{i32 823, i32 0, metadata !370, null}
!470 = metadata !{i32 786689, metadata !220, metadata !"size", metadata !12, i32 16777667, metadata !151, i32 0, metadata !471} ; [ DW_TAG_arg_variable ] [size] [line 451]
!471 = metadata !{i32 824, i32 0, metadata !472, null}
!472 = metadata !{i32 786443, metadata !1, metadata !370, i32 823, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!473 = metadata !{i32 451, i32 0, metadata !220, metadata !471}
!474 = metadata !{i32 786688, metadata !220, metadata !"num", metadata !12, i32 452, metadata !41, i32 0, metadata !471} ; [ DW_TAG_auto_variable ] [num] [line 452]
!475 = metadata !{i32 452, i32 0, metadata !220, metadata !471}
!476 = metadata !{i32 786688, metadata !220, metadata !"num_of_bits", metadata !12, i32 453, metadata !15, i32 0, metadata !471} ; [ DW_TAG_auto_variable ] [num_of_bits] [line 453]
!477 = metadata !{i32 453, i32 0, metadata !220, metadata !471}
!478 = metadata !{i32 455, i32 0, metadata !220, metadata !471}
!479 = metadata !{i32 456, i32 0, metadata !480, metadata !471}
!480 = metadata !{i32 786443, metadata !1, metadata !220, i32 455, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!481 = metadata !{i32 457, i32 0, metadata !480, metadata !471}
!482 = metadata !{i32 786689, metadata !220, metadata !"size", metadata !12, i32 16777667, metadata !151, i32 0, metadata !483} ; [ DW_TAG_arg_variable ] [size] [line 451]
!483 = metadata !{i32 825, i32 0, metadata !472, null}
!484 = metadata !{i32 451, i32 0, metadata !220, metadata !483}
!485 = metadata !{i32 786688, metadata !220, metadata !"num", metadata !12, i32 452, metadata !41, i32 0, metadata !483} ; [ DW_TAG_auto_variable ] [num] [line 452]
!486 = metadata !{i32 452, i32 0, metadata !220, metadata !483}
!487 = metadata !{i32 786688, metadata !220, metadata !"num_of_bits", metadata !12, i32 453, metadata !15, i32 0, metadata !483} ; [ DW_TAG_auto_variable ] [num_of_bits] [line 453]
!488 = metadata !{i32 453, i32 0, metadata !220, metadata !483}
!489 = metadata !{i32 455, i32 0, metadata !220, metadata !483}
!490 = metadata !{i32 456, i32 0, metadata !480, metadata !483}
!491 = metadata !{i32 457, i32 0, metadata !480, metadata !483}
!492 = metadata !{i32 786689, metadata !220, metadata !"size", metadata !12, i32 16777667, metadata !151, i32 0, metadata !493} ; [ DW_TAG_arg_variable ] [size] [line 451]
!493 = metadata !{i32 826, i32 0, metadata !472, null}
!494 = metadata !{i32 451, i32 0, metadata !220, metadata !493}
!495 = metadata !{i32 786688, metadata !220, metadata !"num", metadata !12, i32 452, metadata !41, i32 0, metadata !493} ; [ DW_TAG_auto_variable ] [num] [line 452]
!496 = metadata !{i32 452, i32 0, metadata !220, metadata !493}
!497 = metadata !{i32 786688, metadata !220, metadata !"num_of_bits", metadata !12, i32 453, metadata !15, i32 0, metadata !493} ; [ DW_TAG_auto_variable ] [num_of_bits] [line 453]
!498 = metadata !{i32 453, i32 0, metadata !220, metadata !493}
!499 = metadata !{i32 455, i32 0, metadata !220, metadata !493}
!500 = metadata !{i32 456, i32 0, metadata !480, metadata !493}
!501 = metadata !{i32 457, i32 0, metadata !480, metadata !493}
!502 = metadata !{i32 829, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !370, i32 828, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!504 = metadata !{i32 832, i32 0, metadata !370, null}
!505 = metadata !{i32 9}
!506 = metadata !{i32 833, i32 0, metadata !370, null}
!507 = metadata !{i32 835, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !370, i32 834, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!509 = metadata !{i32 834, i32 0, metadata !370, null}
!510 = metadata !{i32 undef}
!511 = metadata !{i32 837, i32 0, metadata !370, null}
!512 = metadata !{i32 838, i32 0, metadata !370, null}
!513 = metadata !{i32 839, i32 0, metadata !370, null}
!514 = metadata !{i32 840, i32 0, metadata !370, null}
!515 = metadata !{i32 841, i32 0, metadata !370, null}
!516 = metadata !{i32 842, i32 0, metadata !370, null}
!517 = metadata !{i32 843, i32 0, metadata !370, null}
!518 = metadata !{i32 844, i32 0, metadata !370, null}
!519 = metadata !{i32 875, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !370, i32 845, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!521 = metadata !{i32 876, i32 0, metadata !520, null}
!522 = metadata !{i32 877, i32 0, metadata !520, null}
!523 = metadata !{i32 878, i32 0, metadata !520, null}
!524 = metadata !{i32 845, i32 0, metadata !370, null}
!525 = metadata !{i32 895, i32 0, metadata !526, null}
!526 = metadata !{i32 786443, metadata !1, metadata !520, i32 894, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!527 = metadata !{i32 846, i32 0, metadata !520, null}
!528 = metadata !{i32 847, i32 0, metadata !520, null}
!529 = metadata !{i32 848, i32 0, metadata !520, null}
!530 = metadata !{i32 849, i32 0, metadata !520, null}
!531 = metadata !{i32 850, i32 0, metadata !520, null}
!532 = metadata !{i32 851, i32 0, metadata !520, null}
!533 = metadata !{i32 853, i32 0, metadata !520, null}
!534 = metadata !{i32 855, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !520, i32 853, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!536 = metadata !{i32 858, i32 0, metadata !520, null}
!537 = metadata !{i32 859, i32 0, metadata !538, null}
!538 = metadata !{i32 786443, metadata !1, metadata !520, i32 858, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!539 = metadata !{i32 860, i32 0, metadata !538, null}
!540 = metadata !{i32 861, i32 0, metadata !538, null}
!541 = metadata !{i32 865, i32 0, metadata !542, null}
!542 = metadata !{i32 786443, metadata !1, metadata !538, i32 861, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!543 = metadata !{i32 866, i32 0, metadata !542, null}
!544 = metadata !{i32 867, i32 0, metadata !542, null}
!545 = metadata !{i32 868, i32 0, metadata !542, null}
!546 = metadata !{i32 869, i32 0, metadata !542, null}
!547 = metadata !{i32 870, i32 0, metadata !542, null}
!548 = metadata !{i32 871, i32 0, metadata !542, null}
!549 = metadata !{i32 872, i32 0, metadata !542, null}
!550 = metadata !{i32 879, i32 0, metadata !551, null}
!551 = metadata !{i32 786443, metadata !1, metadata !520, i32 878, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!552 = metadata !{i32 880, i32 0, metadata !551, null}
!553 = metadata !{i32 881, i32 0, metadata !551, null}
!554 = metadata !{i32 882, i32 0, metadata !551, null}
!555 = metadata !{i32 883, i32 0, metadata !556, null}
!556 = metadata !{i32 786443, metadata !1, metadata !520, i32 882, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!557 = metadata !{i32 885, i32 0, metadata !520, null}
!558 = metadata !{i32 886, i32 0, metadata !520, null}
!559 = metadata !{i32 887, i32 0, metadata !520, null}
!560 = metadata !{i32 888, i32 0, metadata !520, null}
!561 = metadata !{i32 889, i32 0, metadata !520, null}
!562 = metadata !{i32 891, i32 0, metadata !520, null}
!563 = metadata !{i32 892, i32 0, metadata !520, null}
!564 = metadata !{i32 893, i32 0, metadata !520, null}
!565 = metadata !{i32 894, i32 0, metadata !520, null}
!566 = metadata !{i32 903, i32 0, metadata !526, null}
!567 = metadata !{i32 904, i32 0, metadata !526, null}
!568 = metadata !{i32 899, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !1, metadata !526, i32 898, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!570 = metadata !{i32 902, i32 0, metadata !526, null}
!571 = metadata !{i32 906, i32 0, metadata !526, null}
!572 = metadata !{i32 907, i32 0, metadata !526, null}
!573 = metadata !{i32 908, i32 0, metadata !526, null}
!574 = metadata !{i32 910, i32 0, metadata !526, null}
!575 = metadata !{i32 911, i32 0, metadata !526, null}
!576 = metadata !{i32 912, i32 0, metadata !526, null}
!577 = metadata !{i32 913, i32 0, metadata !526, null}
!578 = metadata !{i32 914, i32 0, metadata !526, null}
!579 = metadata !{i32 915, i32 0, metadata !526, null}
!580 = metadata !{i32 916, i32 0, metadata !526, null}
!581 = metadata !{i32 917, i32 0, metadata !582, null}
!582 = metadata !{i32 786443, metadata !1, metadata !526, i32 916, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!583 = metadata !{i32 920, i32 0, metadata !520, null}
!584 = metadata !{i32 925, i32 0, metadata !585, null}
!585 = metadata !{i32 786443, metadata !1, metadata !520, i32 924, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!586 = metadata !{i32 921, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !520, i32 920, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!588 = metadata !{i32 922, i32 0, metadata !587, null}
!589 = metadata !{i32 923, i32 0, metadata !587, null}
!590 = metadata !{i32 924, i32 0, metadata !587, null}
!591 = metadata !{i32 927, i32 0, metadata !592, null}
!592 = metadata !{i32 786443, metadata !1, metadata !520, i32 927, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!593 = metadata !{i32 928, i32 0, metadata !594, null}
!594 = metadata !{i32 786443, metadata !1, metadata !592, i32 927, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!595 = metadata !{i32 930, i32 0, metadata !520, null}
!596 = metadata !{i32 931, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !1, metadata !520, i32 930, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!598 = metadata !{i32 932, i32 0, metadata !597, null}
!599 = metadata !{i32 933, i32 0, metadata !600, null}
!600 = metadata !{i32 786443, metadata !1, metadata !597, i32 932, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!601 = metadata !{i32 934, i32 0, metadata !600, null}
!602 = metadata !{i32 939, i32 0, metadata !597, null}
!603 = metadata !{i32 935, i32 0, metadata !600, null}
!604 = metadata !{i32 936, i32 0, metadata !605, null}
!605 = metadata !{i32 786443, metadata !1, metadata !597, i32 935, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!606 = metadata !{i32 937, i32 0, metadata !605, null}
!607 = metadata !{i32 940, i32 0, metadata !597, null}
!608 = metadata !{i32 942, i32 0, metadata !370, null}
!609 = metadata !{i32 943, i32 0, metadata !370, null}
!610 = metadata !{i32 944, i32 0, metadata !370, null}
!611 = metadata !{i32 949, i32 0, metadata !612, null}
!612 = metadata !{i32 786443, metadata !1, metadata !88, i32 945, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!613 = metadata !{i32 951, i32 0, metadata !612, null}
!614 = metadata !{i32 952, i32 0, metadata !615, null}
!615 = metadata !{i32 786443, metadata !1, metadata !612, i32 951, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!616 = metadata !{i32 954, i32 0, metadata !615, null}
!617 = metadata !{i32 955, i32 0, metadata !612, null}
!618 = metadata !{i32 956, i32 0, metadata !612, null}
!619 = metadata !{i32 957, i32 0, metadata !612, null}
!620 = metadata !{i32 958, i32 0, metadata !621, null}
!621 = metadata !{i32 786443, metadata !1, metadata !612, i32 957, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!622 = metadata !{i32 961, i32 0, metadata !612, null}
!623 = metadata !{i32 962, i32 0, metadata !612, null}
!624 = metadata !{i32 963, i32 0, metadata !625, null}
!625 = metadata !{i32 786443, metadata !1, metadata !612, i32 962, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!626 = metadata !{i32 964, i32 0, metadata !625, null}
!627 = metadata !{i32 965, i32 0, metadata !628, null}
!628 = metadata !{i32 786443, metadata !1, metadata !625, i32 964, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!629 = metadata !{i32 966, i32 0, metadata !628, null}
!630 = metadata !{i32 968, i32 0, metadata !625, null}
!631 = metadata !{i32 969, i32 0, metadata !625, null}
!632 = metadata !{i32 970, i32 0, metadata !625, null}
!633 = metadata !{i32 971, i32 0, metadata !634, null}
!634 = metadata !{i32 786443, metadata !1, metadata !625, i32 970, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!635 = metadata !{i32 972, i32 0, metadata !634, null}
!636 = metadata !{i32 974, i32 0, metadata !625, null}
!637 = metadata !{i32 975, i32 0, metadata !625, null}
!638 = metadata !{i32 975, i32 0, metadata !612, null}
!639 = metadata !{i32 989, i32 0, metadata !612, null}
!640 = metadata !{i32 976, i32 0, metadata !641, null}
!641 = metadata !{i32 786443, metadata !1, metadata !612, i32 975, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!642 = metadata !{i32 977, i32 0, metadata !641, null}
!643 = metadata !{i32 978, i32 0, metadata !644, null}
!644 = metadata !{i32 786443, metadata !1, metadata !641, i32 977, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!645 = metadata !{i32 979, i32 0, metadata !644, null}
!646 = metadata !{i32 981, i32 0, metadata !641, null}
!647 = metadata !{i32 982, i32 0, metadata !641, null}
!648 = metadata !{i32 983, i32 0, metadata !641, null}
!649 = metadata !{i32 984, i32 0, metadata !650, null}
!650 = metadata !{i32 786443, metadata !1, metadata !641, i32 983, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!651 = metadata !{i32 985, i32 0, metadata !650, null}
!652 = metadata !{i32 987, i32 0, metadata !641, null}
!653 = metadata !{i32 988, i32 0, metadata !641, null}
!654 = metadata !{i32 991, i32 0, metadata !612, null}
!655 = metadata !{i32 992, i32 0, metadata !612, null}
!656 = metadata !{i32 993, i32 0, metadata !612, null}
!657 = metadata !{i32 995, i32 0, metadata !612, null}
!658 = metadata !{i32 996, i32 0, metadata !612, null}
!659 = metadata !{i32 997, i32 0, metadata !612, null}
!660 = metadata !{i32 999, i32 0, metadata !612, null}
!661 = metadata !{i32 1000, i32 0, metadata !612, null}
!662 = metadata !{i32 1001, i32 0, metadata !612, null}
!663 = metadata !{i32 1004, i32 0, metadata !612, null}
!664 = metadata !{i32 786689, metadata !220, metadata !"size", metadata !12, i32 16777667, metadata !151, i32 0, metadata !665} ; [ DW_TAG_arg_variable ] [size] [line 451]
!665 = metadata !{i32 1005, i32 0, metadata !666, null}
!666 = metadata !{i32 786443, metadata !1, metadata !612, i32 1004, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!667 = metadata !{i32 451, i32 0, metadata !220, metadata !665}
!668 = metadata !{i32 786688, metadata !220, metadata !"num", metadata !12, i32 452, metadata !41, i32 0, metadata !665} ; [ DW_TAG_auto_variable ] [num] [line 452]
!669 = metadata !{i32 452, i32 0, metadata !220, metadata !665}
!670 = metadata !{i32 786688, metadata !220, metadata !"num_of_bits", metadata !12, i32 453, metadata !15, i32 0, metadata !665} ; [ DW_TAG_auto_variable ] [num_of_bits] [line 453]
!671 = metadata !{i32 453, i32 0, metadata !220, metadata !665}
!672 = metadata !{i32 455, i32 0, metadata !220, metadata !665}
!673 = metadata !{i32 456, i32 0, metadata !480, metadata !665}
!674 = metadata !{i32 457, i32 0, metadata !480, metadata !665}
!675 = metadata !{i32 786689, metadata !220, metadata !"size", metadata !12, i32 16777667, metadata !151, i32 0, metadata !676} ; [ DW_TAG_arg_variable ] [size] [line 451]
!676 = metadata !{i32 1006, i32 0, metadata !666, null}
!677 = metadata !{i32 451, i32 0, metadata !220, metadata !676}
!678 = metadata !{i32 786688, metadata !220, metadata !"num", metadata !12, i32 452, metadata !41, i32 0, metadata !676} ; [ DW_TAG_auto_variable ] [num] [line 452]
!679 = metadata !{i32 452, i32 0, metadata !220, metadata !676}
!680 = metadata !{i32 786688, metadata !220, metadata !"num_of_bits", metadata !12, i32 453, metadata !15, i32 0, metadata !676} ; [ DW_TAG_auto_variable ] [num_of_bits] [line 453]
!681 = metadata !{i32 453, i32 0, metadata !220, metadata !676}
!682 = metadata !{i32 455, i32 0, metadata !220, metadata !676}
!683 = metadata !{i32 456, i32 0, metadata !480, metadata !676}
!684 = metadata !{i32 457, i32 0, metadata !480, metadata !676}
!685 = metadata !{i32 786689, metadata !220, metadata !"size", metadata !12, i32 16777667, metadata !151, i32 0, metadata !686} ; [ DW_TAG_arg_variable ] [size] [line 451]
!686 = metadata !{i32 1007, i32 0, metadata !666, null}
!687 = metadata !{i32 451, i32 0, metadata !220, metadata !686}
!688 = metadata !{i32 786688, metadata !220, metadata !"num", metadata !12, i32 452, metadata !41, i32 0, metadata !686} ; [ DW_TAG_auto_variable ] [num] [line 452]
!689 = metadata !{i32 452, i32 0, metadata !220, metadata !686}
!690 = metadata !{i32 786688, metadata !220, metadata !"num_of_bits", metadata !12, i32 453, metadata !15, i32 0, metadata !686} ; [ DW_TAG_auto_variable ] [num_of_bits] [line 453]
!691 = metadata !{i32 453, i32 0, metadata !220, metadata !686}
!692 = metadata !{i32 455, i32 0, metadata !220, metadata !686}
!693 = metadata !{i32 456, i32 0, metadata !480, metadata !686}
!694 = metadata !{i32 457, i32 0, metadata !480, metadata !686}
!695 = metadata !{i32 1010, i32 0, metadata !696, null}
!696 = metadata !{i32 786443, metadata !1, metadata !612, i32 1009, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!697 = metadata !{i32 1013, i32 0, metadata !612, null}
!698 = metadata !{i32 1015, i32 0, metadata !612, null}
!699 = metadata !{i32 1017, i32 0, metadata !612, null}
!700 = metadata !{i32 1018, i32 0, metadata !612, null}
!701 = metadata !{i32 1019, i32 0, metadata !612, null}
!702 = metadata !{i32 1024, i32 0, metadata !612, null}
!703 = metadata !{i32 1026, i32 0, metadata !612, null}
!704 = metadata !{i32 1028, i32 0, metadata !612, null}
!705 = metadata !{i32 1030, i32 0, metadata !612, null}
!706 = metadata !{i32 1031, i32 0, metadata !612, null}
!707 = metadata !{i32 1032, i32 0, metadata !612, null}
!708 = metadata !{i32 1033, i32 0, metadata !612, null}
!709 = metadata !{i32 1034, i32 0, metadata !612, null}
!710 = metadata !{i32 1035, i32 0, metadata !612, null}
!711 = metadata !{i32 1038, i32 0, metadata !712, null}
!712 = metadata !{i32 786443, metadata !1, metadata !612, i32 1035, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!713 = metadata !{i32 1036, i32 0, metadata !712, null}
!714 = metadata !{i32 1039, i32 0, metadata !715, null}
!715 = metadata !{i32 786443, metadata !1, metadata !712, i32 1038, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!716 = metadata !{i32 1040, i32 0, metadata !715, null}
!717 = metadata !{i32 1041, i32 0, metadata !715, null}
!718 = metadata !{i32 1042, i32 0, metadata !715, null}
!719 = metadata !{i32 1043, i32 0, metadata !720, null}
!720 = metadata !{i32 786443, metadata !1, metadata !712, i32 1042, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!721 = metadata !{i32 1048, i32 0, metadata !712, null}
!722 = metadata !{i32 1049, i32 0, metadata !712, null}
!723 = metadata !{i32 1046, i32 0, metadata !712, null}
!724 = metadata !{i32 1047, i32 0, metadata !712, null}
!725 = metadata !{i32 1056, i32 0, metadata !712, null}
!726 = metadata !{i32 1057, i32 0, metadata !712, null}
!727 = metadata !{i32 1058, i32 0, metadata !712, null}
!728 = metadata !{i32 1059, i32 0, metadata !729, null}
!729 = metadata !{i32 786443, metadata !1, metadata !712, i32 1058, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!730 = metadata !{i32 1060, i32 0, metadata !729, null}
!731 = metadata !{i32 1061, i32 0, metadata !729, null}
!732 = metadata !{i32 1062, i32 0, metadata !729, null}
!733 = metadata !{i32 1063, i32 0, metadata !729, null}
!734 = metadata !{i32 1064, i32 0, metadata !712, null}
!735 = metadata !{i32 1065, i32 0, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !712, i32 1064, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!737 = metadata !{i32 1066, i32 0, metadata !738, null}
!738 = metadata !{i32 786443, metadata !1, metadata !736, i32 1066, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!739 = metadata !{i32 1070, i32 0, metadata !740, null}
!740 = metadata !{i32 786443, metadata !1, metadata !738, i32 1066, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!741 = metadata !{i32 1071, i32 0, metadata !740, null}
!742 = metadata !{i32 1067, i32 0, metadata !740, null}
!743 = metadata !{i32 1068, i32 0, metadata !740, null}
!744 = metadata !{i32 1069, i32 0, metadata !740, null}
!745 = metadata !{i32 1072, i32 0, metadata !740, null}
!746 = metadata !{i32 1076, i32 0, metadata !747, null}
!747 = metadata !{i32 786443, metadata !1, metadata !740, i32 1072, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!748 = metadata !{i32 1078, i32 0, metadata !747, null}
!749 = metadata !{i32 1080, i32 0, metadata !747, null}
!750 = metadata !{i32 1082, i32 0, metadata !747, null}
!751 = metadata !{i32 1083, i32 0, metadata !747, null}
!752 = metadata !{i32 1084, i32 0, metadata !747, null}
!753 = metadata !{i32 1085, i32 0, metadata !747, null}
!754 = metadata !{i32 1090, i32 0, metadata !740, null}
!755 = metadata !{i32 1091, i32 0, metadata !740, null}
!756 = metadata !{i32 1092, i32 0, metadata !740, null}
!757 = metadata !{i32 1095, i32 0, metadata !758, null}
!758 = metadata !{i32 786443, metadata !1, metadata !712, i32 1094, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!759 = metadata !{i32 1096, i32 0, metadata !758, null}
!760 = metadata !{i32 1097, i32 0, metadata !758, null}
!761 = metadata !{i32 1099, i32 0, metadata !712, null}
!762 = metadata !{i32 1100, i32 0, metadata !712, null}
!763 = metadata !{i32 1101, i32 0, metadata !764, null}
!764 = metadata !{i32 786443, metadata !1, metadata !712, i32 1100, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!765 = metadata !{i32 1102, i32 0, metadata !764, null}
!766 = metadata !{i32 1103, i32 0, metadata !767, null}
!767 = metadata !{i32 786443, metadata !1, metadata !764, i32 1102, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!768 = metadata !{i32 1104, i32 0, metadata !767, null}
!769 = metadata !{i32 1107, i32 0, metadata !712, null}
!770 = metadata !{i32 1108, i32 0, metadata !771, null}
!771 = metadata !{i32 786443, metadata !1, metadata !712, i32 1107, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!772 = metadata !{i32 1109, i32 0, metadata !771, null}
!773 = metadata !{i32 1110, i32 0, metadata !771, null}
!774 = metadata !{i32 1111, i32 0, metadata !712, null}
!775 = metadata !{i32 1115, i32 0, metadata !88, null}
!776 = metadata !{i32 3}
!777 = metadata !{i32 474, i32 0, metadata !207, null}
!778 = metadata !{i32 476, i32 0, metadata !207, null}
!779 = metadata !{i32 477, i32 0, metadata !207, null}
!780 = metadata !{i32 478, i32 0, metadata !207, null}
!781 = metadata !{i32 479, i32 0, metadata !207, null}
!782 = metadata !{i32 480, i32 0, metadata !783, null}
!783 = metadata !{i32 786443, metadata !1, metadata !207, i32 480, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!784 = metadata !{i32 482, i32 0, metadata !785, null}
!785 = metadata !{i32 786443, metadata !1, metadata !786, i32 482, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!786 = metadata !{i32 786443, metadata !1, metadata !783, i32 480, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!787 = metadata !{i32 483, i32 0, metadata !788, null}
!788 = metadata !{i32 786443, metadata !1, metadata !785, i32 482, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!789 = metadata !{i32 484, i32 0, metadata !788, null}
!790 = metadata !{i32 485, i32 0, metadata !788, null}
!791 = metadata !{i32 487, i32 0, metadata !786, null}
!792 = metadata !{i32 488, i32 0, metadata !793, null}
!793 = metadata !{i32 786443, metadata !1, metadata !786, i32 487, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!794 = metadata !{i32 489, i32 0, metadata !793, null}
!795 = metadata !{i32 491, i32 0, metadata !786, null}
!796 = metadata !{i32 493, i32 0, metadata !207, null}
!797 = metadata !{i32 494, i32 0, metadata !207, null}
!798 = metadata !{i32 495, i32 0, metadata !207, null}
!799 = metadata !{i32 496, i32 0, metadata !800, null}
!800 = metadata !{i32 786443, metadata !1, metadata !207, i32 495, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!801 = metadata !{i32 497, i32 0, metadata !800, null}
!802 = metadata !{i32 499, i32 0, metadata !207, null}
!803 = metadata !{i32 501, i32 0, metadata !207, null}
!804 = metadata !{i32 412, i32 0, metadata !196, null}
!805 = metadata !{i32 418, i32 0, metadata !196, null}
!806 = metadata !{i32 419, i32 0, metadata !196, null}
!807 = metadata !{i32 420, i32 0, metadata !196, null}
!808 = metadata !{i32 421, i32 0, metadata !196, null}
!809 = metadata !{i32 422, i32 0, metadata !196, null}
!810 = metadata !{i32 423, i32 0, metadata !811, null}
!811 = metadata !{i32 786443, metadata !1, metadata !196, i32 422, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!812 = metadata !{i32 424, i32 0, metadata !811, null}
!813 = metadata !{i32 425, i32 0, metadata !811, null}
!814 = metadata !{i32 427, i32 0, metadata !196, null}
!815 = metadata !{i32 428, i32 0, metadata !816, null}
!816 = metadata !{i32 786443, metadata !1, metadata !196, i32 427, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!817 = metadata !{i32 429, i32 0, metadata !816, null}
!818 = metadata !{i32 430, i32 0, metadata !816, null}
!819 = metadata !{i32 431, i32 0, metadata !820, null}
!820 = metadata !{i32 786443, metadata !1, metadata !816, i32 430, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!821 = metadata !{i32 432, i32 0, metadata !820, null}
!822 = metadata !{i32 433, i32 0, metadata !820, null}
!823 = metadata !{i32 435, i32 0, metadata !196, null}
!824 = metadata !{i32 436, i32 0, metadata !196, null}
!825 = metadata !{i32 437, i32 0, metadata !196, null}
!826 = metadata !{i32 438, i32 0, metadata !196, null}
!827 = metadata !{i32 439, i32 0, metadata !828, null}
!828 = metadata !{i32 786443, metadata !1, metadata !196, i32 438, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!829 = metadata !{i32 440, i32 0, metadata !828, null}
!830 = metadata !{i32 441, i32 0, metadata !196, null}
!831 = metadata !{i32 518, i32 0, metadata !181, null}
!832 = metadata !{i32 522, i32 0, metadata !181, null}
!833 = metadata !{i32 524, i32 0, metadata !181, null}
!834 = metadata !{i32 525, i32 0, metadata !181, null}
!835 = metadata !{i32 526, i32 0, metadata !181, null}
!836 = metadata !{i32 527, i32 0, metadata !837, null}
!837 = metadata !{i32 786443, metadata !1, metadata !181, i32 526, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!838 = metadata !{i32 528, i32 0, metadata !837, null}
!839 = metadata !{i32 529, i32 0, metadata !837, null}
!840 = metadata !{i32 532, i32 0, metadata !841, null}
!841 = metadata !{i32 786443, metadata !1, metadata !842, i32 531, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!842 = metadata !{i32 786443, metadata !1, metadata !181, i32 531, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!843 = metadata !{i32 539, i32 0, metadata !844, null}
!844 = metadata !{i32 786443, metadata !1, metadata !841, i32 539, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!845 = metadata !{i32 533, i32 0, metadata !846, null}
!846 = metadata !{i32 786443, metadata !1, metadata !841, i32 532, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!847 = metadata !{i32 535, i32 0, metadata !846, null}
!848 = metadata !{i32 540, i32 0, metadata !849, null}
!849 = metadata !{i32 786443, metadata !1, metadata !844, i32 539, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!850 = metadata !{i32 541, i32 0, metadata !849, null}
!851 = metadata !{i32 542, i32 0, metadata !849, null}
!852 = metadata !{i32 544, i32 0, metadata !841, null}
!853 = metadata !{i32 545, i32 0, metadata !854, null}
!854 = metadata !{i32 786443, metadata !1, metadata !841, i32 544, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!855 = metadata !{i32 546, i32 0, metadata !854, null}
!856 = metadata !{i32 548, i32 0, metadata !841, null}
!857 = metadata !{i32 531, i32 0, metadata !842, null}
!858 = metadata !{i32 550, i32 0, metadata !181, null}
!859 = metadata !{i32 551, i32 0, metadata !860, null}
!860 = metadata !{i32 786443, metadata !1, metadata !861, i32 551, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!861 = metadata !{i32 786443, metadata !1, metadata !181, i32 550, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!862 = metadata !{i32 556, i32 0, metadata !863, null}
!863 = metadata !{i32 786443, metadata !1, metadata !864, i32 556, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!864 = metadata !{i32 786443, metadata !1, metadata !181, i32 555, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!865 = metadata !{i32 552, i32 0, metadata !866, null}
!866 = metadata !{i32 786443, metadata !1, metadata !860, i32 551, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!867 = metadata !{i32 554, i32 0, metadata !861, null}
!868 = metadata !{i32 555, i32 0, metadata !861, null}
!869 = metadata !{i32 557, i32 0, metadata !870, null}
!870 = metadata !{i32 786443, metadata !1, metadata !863, i32 556, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!871 = metadata !{i32 559, i32 0, metadata !864, null}
!872 = metadata !{i32 561, i32 0, metadata !181, null}
!873 = metadata !{i32 573, i32 0, metadata !167, null}
!874 = metadata !{i32 578, i32 0, metadata !167, null}
!875 = metadata !{i32 580, i32 0, metadata !167, null}
!876 = metadata !{i32 581, i32 0, metadata !167, null}
!877 = metadata !{i32 582, i32 0, metadata !167, null}
!878 = metadata !{i32 583, i32 0, metadata !167, null}
!879 = metadata !{i32 585, i32 0, metadata !167, null}
!880 = metadata !{i32 586, i32 0, metadata !167, null}
!881 = metadata !{i32 587, i32 0, metadata !882, null}
!882 = metadata !{i32 786443, metadata !1, metadata !167, i32 586, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!883 = metadata !{i32 588, i32 0, metadata !882, null}
!884 = metadata !{i32 589, i32 0, metadata !882, null}
!885 = metadata !{i32 591, i32 0, metadata !167, null}
!886 = metadata !{i32 592, i32 0, metadata !887, null}
!887 = metadata !{i32 786443, metadata !1, metadata !167, i32 591, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!888 = metadata !{i32 593, i32 0, metadata !889, null}
!889 = metadata !{i32 786443, metadata !1, metadata !887, i32 592, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!890 = metadata !{i32 594, i32 0, metadata !889, null}
!891 = metadata !{i32 595, i32 0, metadata !889, null}
!892 = metadata !{i32 596, i32 0, metadata !887, null}
!893 = metadata !{i32 597, i32 0, metadata !887, null}
!894 = metadata !{i32 598, i32 0, metadata !887, null}
!895 = metadata !{i32 599, i32 0, metadata !167, null}
!896 = metadata !{i32 600, i32 0, metadata !167, null}
!897 = metadata !{i32 601, i32 0, metadata !167, null}
!898 = metadata !{i32 602, i32 0, metadata !167, null}
!899 = metadata !{i32 603, i32 0, metadata !167, null}
!900 = metadata !{i32 617, i32 0, metadata !148, null}
!901 = metadata !{i32 619, i32 0, metadata !148, null}
!902 = metadata !{i32 622, i32 0, metadata !148, null}
!903 = metadata !{i32 623, i32 0, metadata !148, null}
!904 = metadata !{i32 624, i32 0, metadata !148, null}
!905 = metadata !{i32 625, i32 0, metadata !906, null}
!906 = metadata !{i32 786443, metadata !1, metadata !148, i32 624, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!907 = metadata !{i32 626, i32 0, metadata !906, null}
!908 = metadata !{i32 628, i32 0, metadata !148, null}
!909 = metadata !{i32 629, i32 0, metadata !910, null}
!910 = metadata !{i32 786443, metadata !1, metadata !148, i32 628, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!911 = metadata !{i32 630, i32 0, metadata !910, null}
!912 = metadata !{i32 2}
!913 = metadata !{i32 631, i32 0, metadata !914, null}
!914 = metadata !{i32 786443, metadata !1, metadata !148, i32 631, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!915 = metadata !{i32 633, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !1, metadata !917, i32 633, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!917 = metadata !{i32 786443, metadata !1, metadata !914, i32 631, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!918 = metadata !{i32 635, i32 0, metadata !919, null}
!919 = metadata !{i32 786443, metadata !1, metadata !916, i32 633, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/libxdrf.c]
!920 = metadata !{i32 634, i32 0, metadata !919, null}
!921 = metadata !{i32 636, i32 0, metadata !919, null}
!922 = metadata !{i32 637, i32 0, metadata !919, null}
!923 = metadata !{i32 639, i32 0, metadata !917, null}
!924 = metadata !{i32 641, i32 0, metadata !148, null}
!925 = metadata !{i32 642, i32 0, metadata !148, null}
