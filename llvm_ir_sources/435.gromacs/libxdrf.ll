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
  %.b = load i1* @xdropen.init_done, align 1
  br i1 %.b, label %land.rhs, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.XDR** getelementptr inbounds ([20 x %struct.XDR*]* @xdridptr, i64 0, i64 1) to i8*), i8 0, i64 152, i32 8, i1 false)
  store i1 true, i1* @xdropen.init_done, align 1
  br label %land.rhs

while.cond:                                       ; preds = %land.rhs
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp2 = icmp slt i32 %0, 20
  br i1 %cmp2, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond, %for.cond.preheader, %entry
  %indvars.iv = phi i64 [ 1, %entry ], [ 1, %for.cond.preheader ], [ %indvars.iv.next, %while.cond ]
  %xdrid.183 = phi i32 [ 1, %entry ], [ 1, %for.cond.preheader ], [ %inc6, %while.cond ]
  %arrayidx4 = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %indvars.iv
  %1 = load %struct.XDR** %arrayidx4, align 8, !tbaa !0
  %cmp5 = icmp eq %struct.XDR* %1, null
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc6 = add nsw i32 %xdrid.183, 1
  br i1 %cmp5, label %if.end9, label %while.cond

while.end:                                        ; preds = %while.cond
  %cmp7 = icmp eq i32 %inc6, 20
  br i1 %cmp7, label %return, label %if.end9

if.end9:                                          ; preds = %land.rhs, %while.end
  %xdrid.182 = phi i32 [ %inc6, %while.end ], [ %xdrid.183, %land.rhs ]
  %2 = load i8* %type, align 1, !tbaa !1
  switch i8 %2, label %if.else26 [
    i8 119, label %if.then15
    i8 87, label %if.then15
    i8 97, label %if.then23
    i8 65, label %if.then23
  ]

if.then15:                                        ; preds = %if.end9, %if.end9
  %3 = bitcast [5 x i8]* %newtype to i32*
  store i32 2843255, i32* %3, align 4
  br label %if.end30

if.then23:                                        ; preds = %if.end9, %if.end9
  %4 = bitcast [5 x i8]* %newtype to i32*
  store i32 2843233, i32* %4, align 4
  br label %if.end30

if.else26:                                        ; preds = %if.end9
  %5 = bitcast [5 x i8]* %newtype to i32*
  store i32 2843250, i32* %5, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %if.else26, %if.then15
  %lmode.0 = phi i32 [ 0, %if.then15 ], [ 0, %if.then23 ], [ 1, %if.else26 ]
  %arraydecay31 = getelementptr inbounds [5 x i8]* %newtype, i64 0, i64 0
  %call32 = call %struct._IO_FILE* @fopen(i8* %filename, i8* %arraydecay31) #5
  %idxprom33 = sext i32 %xdrid.182 to i64
  %arrayidx34 = getelementptr inbounds [20 x %struct._IO_FILE*]* @xdrfiles, i64 0, i64 %idxprom33
  store %struct._IO_FILE* %call32, %struct._IO_FILE** %arrayidx34, align 8, !tbaa !0
  %cmp37 = icmp eq %struct._IO_FILE* %call32, null
  br i1 %cmp37, label %return, label %if.end40

if.end40:                                         ; preds = %if.end30
  %6 = load i8* %type, align 1, !tbaa !1
  %arrayidx42 = getelementptr inbounds [20 x i8]* @xdrmodes, i64 0, i64 %idxprom33
  store i8 %6, i8* %arrayidx42, align 1, !tbaa !1
  %cmp43 = icmp eq %struct.XDR* %xdrs, null
  br i1 %cmp43, label %if.then45, label %if.else53

if.then45:                                        ; preds = %if.end40
  %call46 = call noalias i8* @malloc(i64 48) #5
  %7 = bitcast i8* %call46 to %struct.XDR*
  %arrayidx48 = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %idxprom33
  store %struct.XDR* %7, %struct.XDR** %arrayidx48, align 8, !tbaa !0
  call void @xdrstdio_create(%struct.XDR* %7, %struct._IO_FILE* %call32, i32 %lmode.0) #5
  br label %return

if.else53:                                        ; preds = %if.end40
  %arrayidx55 = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %idxprom33
  store %struct.XDR* %xdrs, %struct.XDR** %arrayidx55, align 8, !tbaa !0
  call void @xdrstdio_create(%struct.XDR* %xdrs, %struct._IO_FILE* %call32, i32 %lmode.0) #5
  br label %return

return:                                           ; preds = %if.then45, %if.else53, %if.end30, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ 0, %if.end30 ], [ %xdrid.182, %if.else53 ], [ %xdrid.182, %if.then45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare void @xdrstdio_create(%struct.XDR*, %struct._IO_FILE*, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @xdrclose(%struct.XDR* %xdrs) #0 {
entry:
  %cmp = icmp eq %struct.XDR* %xdrs, null
  br i1 %cmp, label %if.then, label %for.body

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str3, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %0)
  tail call void @exit(i32 1) #6
  unreachable

for.cond:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv.next to i32
  %cmp1 = icmp slt i32 %2, 20
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %indvars.iv
  %3 = load %struct.XDR** %arrayidx, align 8, !tbaa !0
  %cmp2 = icmp eq %struct.XDR* %3, %xdrs
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp2, label %do.body, label %for.cond

do.body:                                          ; preds = %for.body
  %x_ops = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %4 = load %struct.xdr_ops** %x_ops, align 8, !tbaa !0
  %x_destroy = getelementptr inbounds %struct.xdr_ops* %4, i64 0, i32 7
  %5 = load void (%struct.XDR*)** %x_destroy, align 8, !tbaa !0
  %tobool = icmp eq void (%struct.XDR*)* %5, null
  br i1 %tobool, label %do.end, label %if.then4

if.then4:                                         ; preds = %do.body
  tail call void %5(%struct.XDR* %xdrs) #5
  br label %do.end

do.end:                                           ; preds = %do.body, %if.then4
  %arrayidx9 = getelementptr inbounds [20 x %struct._IO_FILE*]* @xdrfiles, i64 0, i64 %indvars.iv
  %6 = load %struct._IO_FILE** %arrayidx9, align 8, !tbaa !0
  %call10 = tail call i32 @fclose(%struct._IO_FILE* %6) #5
  store %struct.XDR* null, %struct.XDR** %arrayidx, align 8, !tbaa !0
  ret i32 1

for.end:                                          ; preds = %for.cond
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str4, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %7)
  tail call void @exit(i32 1) #6
  unreachable
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

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
  %0 = bitcast [30 x i32]* %tmpcoord to i8*
  call void @llvm.lifetime.start(i64 120, i8* %0) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %indvars.iv1362 = phi i64 [ %indvars.iv.next1363, %while.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %indvars.iv1362
  %1 = load %struct.XDR** %arrayidx, align 8, !tbaa !0
  %cmp = icmp eq %struct.XDR* %1, %xdrs
  br i1 %cmp, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %indvars.iv.next1363 = add i64 %indvars.iv1362, 1
  %2 = trunc i64 %indvars.iv1362 to i32
  %cmp10 = icmp sgt i32 %2, 18
  br i1 %cmp10, label %if.then, label %while.cond

if.then:                                          ; preds = %while.body
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str5, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %3)
  call void @exit(i32 1) #6
  unreachable

while.end:                                        ; preds = %while.cond
  %arrayidx12 = getelementptr inbounds [20 x i8]* @xdrmodes, i64 0, i64 %indvars.iv1362
  %5 = load i8* %arrayidx12, align 1, !tbaa !1
  switch i8 %5, label %if.else585 [
    i8 119, label %if.then20
    i8 97, label %if.then20
  ]

if.then20:                                        ; preds = %while.end, %while.end
  %call21 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %size) #5
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %cleanup, label %if.end25

if.end25:                                         ; preds = %if.then20
  %6 = load i32* %size, align 4, !tbaa !3
  %mul = mul nsw i32 %6, 3
  %cmp26 = icmp slt i32 %6, 10
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  %7 = bitcast float* %fp to i8*
  %call29 = call i32 @xdr_vector(%struct.XDR* %xdrs, i8* %7, i32 %mul, i32 4, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, float*)* @xdr_float to i32 (%struct.XDR*, i8*, ...)*)) #5
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %call31 = call i32 @xdr_float(%struct.XDR* %xdrs, float* %precision) #5
  %8 = load i32** @xdr3dfcoord.ip, align 8, !tbaa !0
  %cmp32 = icmp eq i32* %8, null
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end30
  %conv35 = zext i32 %mul to i64
  %mul36 = shl nuw nsw i64 %conv35, 2
  %call37 = call noalias i8* @malloc(i64 %mul36) #5
  %9 = bitcast i8* %call37 to i32*
  store i32* %9, i32** @xdr3dfcoord.ip, align 8, !tbaa !0
  %cmp38 = icmp eq i8* %call37, null
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.then34
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %10)
  call void @exit(i32 1) #6
  unreachable

if.end42:                                         ; preds = %if.then34
  %conv43 = uitofp i32 %mul to double
  %mul44 = fmul double %conv43, 1.200000e+00
  %conv45 = fptosi double %mul44 to i32
  %conv46 = sext i32 %conv45 to i64
  %mul47 = shl nsw i64 %conv46, 2
  %call48 = call noalias i8* @malloc(i64 %mul47) #5
  %12 = bitcast i8* %call48 to i32*
  store i32* %12, i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %cmp49 = icmp eq i8* %call48, null
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end42
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %13)
  call void @exit(i32 1) #6
  unreachable

if.end53:                                         ; preds = %if.end42
  %15 = load i32* %size, align 4, !tbaa !3
  store i32 %15, i32* @xdr3dfcoord.oldsize, align 4, !tbaa !3
  br label %if.end77

if.else:                                          ; preds = %if.end30
  %16 = load i32* %size, align 4, !tbaa !3
  %17 = load i32* @xdr3dfcoord.oldsize, align 4, !tbaa !3
  %cmp54 = icmp sgt i32 %16, %17
  br i1 %cmp54, label %if.then56, label %if.else.if.end77_crit_edge

if.else.if.end77_crit_edge:                       ; preds = %if.else
  %.pre1370 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %idx.ext.pre = zext i32 %mul to i64
  br label %if.end77

if.then56:                                        ; preds = %if.else
  %18 = bitcast i32* %8 to i8*
  %conv57 = zext i32 %mul to i64
  %mul58 = shl nuw nsw i64 %conv57, 2
  %call59 = call i8* @realloc(i8* %18, i64 %mul58) #5
  %19 = bitcast i8* %call59 to i32*
  store i32* %19, i32** @xdr3dfcoord.ip, align 8, !tbaa !0
  %cmp60 = icmp eq i8* %call59, null
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.then56
  %20 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %20)
  call void @exit(i32 1) #6
  unreachable

if.end64:                                         ; preds = %if.then56
  %conv65 = uitofp i32 %mul to double
  %mul66 = fmul double %conv65, 1.200000e+00
  %conv67 = fptosi double %mul66 to i32
  %22 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %23 = bitcast i32* %22 to i8*
  %conv68 = sext i32 %conv67 to i64
  %mul69 = shl nsw i64 %conv68, 2
  %call70 = call i8* @realloc(i8* %23, i64 %mul69) #5
  %24 = bitcast i8* %call70 to i32*
  store i32* %24, i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %cmp71 = icmp eq i8* %call70, null
  br i1 %cmp71, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.end64
  %25 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %25)
  call void @exit(i32 1) #6
  unreachable

if.end75:                                         ; preds = %if.end64
  %27 = load i32* %size, align 4, !tbaa !3
  store i32 %27, i32* @xdr3dfcoord.oldsize, align 4, !tbaa !3
  br label %if.end77

if.end77:                                         ; preds = %if.else.if.end77_crit_edge, %if.end75, %if.end53
  %idx.ext.pre-phi = phi i64 [ %idx.ext.pre, %if.else.if.end77_crit_edge ], [ %conv57, %if.end75 ], [ %conv35, %if.end53 ]
  %28 = phi i32* [ %.pre1370, %if.else.if.end77_crit_edge ], [ %24, %if.end75 ], [ %12, %if.end53 ]
  %arrayidx78 = getelementptr inbounds i32* %28, i64 2
  store i32 0, i32* %arrayidx78, align 4, !tbaa !3
  %arrayidx79 = getelementptr inbounds i32* %28, i64 1
  store i32 0, i32* %arrayidx79, align 4, !tbaa !3
  store i32 0, i32* %28, align 4, !tbaa !3
  %arrayidx81 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 2
  store i32 2147483647, i32* %arrayidx81, align 4, !tbaa !3
  %arrayidx82 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 1
  store i32 2147483647, i32* %arrayidx82, align 4, !tbaa !3
  %arrayidx83 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 0
  store i32 2147483647, i32* %arrayidx83, align 4, !tbaa !3
  %arrayidx84 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 2
  store i32 -2147483648, i32* %arrayidx84, align 4, !tbaa !3
  %arrayidx85 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 1
  store i32 -2147483648, i32* %arrayidx85, align 4, !tbaa !3
  %arrayidx86 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 0
  store i32 -2147483648, i32* %arrayidx86, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds float* %fp, i64 %idx.ext.pre-phi
  %cmp881341 = icmp eq i32 %6, 0
  br i1 %cmp881341, label %while.end208, label %while.body90.lr.ph

while.body90.lr.ph:                               ; preds = %if.end77
  %29 = load i32** @xdr3dfcoord.ip, align 8, !tbaa !0
  %30 = load float* %precision, align 4, !tbaa !4
  br label %while.body90

while.body90:                                     ; preds = %while.body90.lr.ph, %if.end190
  %errval.01348 = phi i32 [ 1, %while.body90.lr.ph ], [ %errval.3, %if.end190 ]
  %lfp.01347 = phi float* [ %fp, %while.body90.lr.ph ], [ %incdec.ptr192, %if.end190 ]
  %mindiff.01346 = phi i32 [ 2147483647, %while.body90.lr.ph ], [ %mindiff.1, %if.end190 ]
  %lip.01345 = phi i32* [ %29, %while.body90.lr.ph ], [ %incdec.ptr191, %if.end190 ]
  %oldlint3.01344 = phi i32 [ 0, %while.body90.lr.ph ], [ %conv178, %if.end190 ]
  %oldlint2.01343 = phi i32 [ 0, %while.body90.lr.ph ], [ %conv143, %if.end190 ]
  %oldlint1.01342 = phi i32 [ 0, %while.body90.lr.ph ], [ %conv109, %if.end190 ]
  %31 = load float* %lfp.01347, align 4, !tbaa !4
  %cmp92 = fcmp ult float %31, 0.000000e+00
  %mul95 = fmul float %31, %30
  br i1 %cmp92, label %if.else98, label %if.then94

if.then94:                                        ; preds = %while.body90
  %conv97 = fadd float %mul95, 5.000000e-01
  br label %if.end102

if.else98:                                        ; preds = %while.body90
  %conv101 = fadd float %mul95, -5.000000e-01
  br label %if.end102

if.end102:                                        ; preds = %if.else98, %if.then94
  %lf.0 = phi float [ %conv97, %if.then94 ], [ %conv101, %if.else98 ]
  %fabsf = call float @fabsf(float %lf.0) #7
  %32 = fpext float %fabsf to double
  %cmp105 = fcmp ogt double %32, 0x41DFFFFFFF400000
  %errval.1 = select i1 %cmp105, i32 0, i32 %errval.01348
  %conv109 = fptosi float %lf.0 to i32
  %33 = load i32* %arrayidx83, align 4, !tbaa !3
  %cmp111 = icmp slt i32 %conv109, %33
  br i1 %cmp111, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.end102
  store i32 %conv109, i32* %arrayidx83, align 4, !tbaa !3
  br label %if.end115

if.end115:                                        ; preds = %if.end102, %if.then113
  %34 = load i32* %arrayidx86, align 4, !tbaa !3
  %cmp117 = icmp sgt i32 %conv109, %34
  br i1 %cmp117, label %if.then119, label %if.end121

if.then119:                                       ; preds = %if.end115
  store i32 %conv109, i32* %arrayidx86, align 4, !tbaa !3
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end115
  %incdec.ptr = getelementptr inbounds i32* %lip.01345, i64 1
  store i32 %conv109, i32* %lip.01345, align 4, !tbaa !3
  %incdec.ptr122 = getelementptr inbounds float* %lfp.01347, i64 1
  %35 = load float* %incdec.ptr122, align 4, !tbaa !4
  %cmp124 = fcmp ult float %35, 0.000000e+00
  %mul127 = fmul float %35, %30
  br i1 %cmp124, label %if.else131, label %if.then126

if.then126:                                       ; preds = %if.end121
  %conv130 = fadd float %mul127, 5.000000e-01
  br label %if.end136

if.else131:                                       ; preds = %if.end121
  %conv135 = fadd float %mul127, -5.000000e-01
  br label %if.end136

if.end136:                                        ; preds = %if.else131, %if.then126
  %lf.1 = phi float [ %conv130, %if.then126 ], [ %conv135, %if.else131 ]
  %fabsf1236 = call float @fabsf(float %lf.1) #7
  %36 = fpext float %fabsf1236 to double
  %cmp139 = fcmp ogt double %36, 0x41DFFFFFFF400000
  %errval.2 = select i1 %cmp139, i32 0, i32 %errval.1
  %conv143 = fptosi float %lf.1 to i32
  %37 = load i32* %arrayidx82, align 4, !tbaa !3
  %cmp145 = icmp slt i32 %conv143, %37
  br i1 %cmp145, label %if.then147, label %if.end149

if.then147:                                       ; preds = %if.end136
  store i32 %conv143, i32* %arrayidx82, align 4, !tbaa !3
  br label %if.end149

if.end149:                                        ; preds = %if.then147, %if.end136
  %38 = load i32* %arrayidx85, align 4, !tbaa !3
  %cmp151 = icmp sgt i32 %conv143, %38
  br i1 %cmp151, label %if.then153, label %if.end155

if.then153:                                       ; preds = %if.end149
  store i32 %conv143, i32* %arrayidx85, align 4, !tbaa !3
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %if.end149
  %incdec.ptr156 = getelementptr inbounds i32* %lip.01345, i64 2
  store i32 %conv143, i32* %incdec.ptr, align 4, !tbaa !3
  %incdec.ptr157 = getelementptr inbounds float* %lfp.01347, i64 2
  %39 = load float* %incdec.ptr157, align 4, !tbaa !4
  %cmp159 = fcmp ult float %39, 0.000000e+00
  %mul162 = fmul float %39, %30
  br i1 %cmp159, label %if.else166, label %if.then161

if.then161:                                       ; preds = %if.end155
  %conv165 = fadd float %mul162, 5.000000e-01
  br label %if.end171

if.else166:                                       ; preds = %if.end155
  %conv170 = fadd float %mul162, -5.000000e-01
  br label %if.end171

if.end171:                                        ; preds = %if.else166, %if.then161
  %lf.2 = phi float [ %conv165, %if.then161 ], [ %conv170, %if.else166 ]
  %fabsf1237 = call float @fabsf(float %lf.2) #7
  %40 = fpext float %fabsf1237 to double
  %cmp174 = fcmp ogt double %40, 0x41DFFFFFFF400000
  %errval.3 = select i1 %cmp174, i32 0, i32 %errval.2
  %conv178 = fptosi float %lf.2 to i32
  %41 = load i32* %arrayidx81, align 4, !tbaa !3
  %cmp180 = icmp slt i32 %conv178, %41
  br i1 %cmp180, label %if.then182, label %if.end184

if.then182:                                       ; preds = %if.end171
  store i32 %conv178, i32* %arrayidx81, align 4, !tbaa !3
  br label %if.end184

if.end184:                                        ; preds = %if.then182, %if.end171
  %42 = load i32* %arrayidx84, align 4, !tbaa !3
  %cmp186 = icmp sgt i32 %conv178, %42
  br i1 %cmp186, label %if.then188, label %if.end190

if.then188:                                       ; preds = %if.end184
  store i32 %conv178, i32* %arrayidx84, align 4, !tbaa !3
  br label %if.end190

if.end190:                                        ; preds = %if.then188, %if.end184
  %incdec.ptr191 = getelementptr inbounds i32* %lip.01345, i64 3
  store i32 %conv178, i32* %incdec.ptr156, align 4, !tbaa !3
  %incdec.ptr192 = getelementptr inbounds float* %lfp.01347, i64 3
  %sub193 = sub nsw i32 %oldlint1.01342, %conv109
  %ispos1238 = icmp sgt i32 %sub193, -1
  %neg1239 = sub i32 0, %sub193
  %43 = select i1 %ispos1238, i32 %sub193, i32 %neg1239
  %sub195 = sub nsw i32 %oldlint2.01343, %conv143
  %ispos1240 = icmp sgt i32 %sub195, -1
  %neg1241 = sub i32 0, %sub195
  %44 = select i1 %ispos1240, i32 %sub195, i32 %neg1241
  %add197 = add nsw i32 %44, %43
  %sub198 = sub nsw i32 %oldlint3.01344, %conv178
  %ispos1242 = icmp sgt i32 %sub198, -1
  %neg1243 = sub i32 0, %sub198
  %45 = select i1 %ispos1242, i32 %sub198, i32 %neg1243
  %add200 = add nsw i32 %add197, %45
  %cmp201 = icmp slt i32 %add200, %mindiff.01346
  %cmp204 = icmp sgt float* %lfp.01347, %fp
  %or.cond = and i1 %cmp201, %cmp204
  %mindiff.1 = select i1 %or.cond, i32 %add200, i32 %mindiff.01346
  %cmp88 = icmp ult float* %incdec.ptr192, %add.ptr
  br i1 %cmp88, label %while.body90, label %while.end208

while.end208:                                     ; preds = %if.end190, %if.end77
  %errval.0.lcssa = phi i32 [ 1, %if.end77 ], [ %errval.3, %if.end190 ]
  %mindiff.0.lcssa = phi i32 [ 2147483647, %if.end77 ], [ %mindiff.1, %if.end190 ]
  %call210 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx83) #5
  %call212 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx82) #5
  %call214 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx81) #5
  %call216 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx86) #5
  %call218 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx85) #5
  %call220 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx84) #5
  %46 = load i32* %arrayidx86, align 4, !tbaa !3
  %conv222 = sitofp i32 %46 to float
  %47 = load i32* %arrayidx83, align 4, !tbaa !3
  %conv224 = sitofp i32 %47 to float
  %sub225 = fsub float %conv222, %conv224
  %cmp226 = fcmp ult float %sub225, 0x41E0000000000000
  %48 = load i32* %arrayidx85, align 4, !tbaa !3
  br i1 %cmp226, label %lor.lhs.false228, label %while.end208.if.then244_crit_edge

while.end208.if.then244_crit_edge:                ; preds = %while.end208
  %.pre1364.pre = load i32* %arrayidx82, align 4, !tbaa !3
  br label %if.then244

lor.lhs.false228:                                 ; preds = %while.end208
  %conv230 = sitofp i32 %48 to float
  %49 = load i32* %arrayidx82, align 4, !tbaa !3
  %conv232 = sitofp i32 %49 to float
  %sub233 = fsub float %conv230, %conv232
  %cmp234 = fcmp ult float %sub233, 0x41E0000000000000
  br i1 %cmp234, label %lor.lhs.false236, label %if.then244

lor.lhs.false236:                                 ; preds = %lor.lhs.false228
  %50 = load i32* %arrayidx84, align 4, !tbaa !3
  %conv238 = sitofp i32 %50 to float
  %51 = load i32* %arrayidx81, align 4, !tbaa !3
  %conv240 = sitofp i32 %51 to float
  %sub241 = fsub float %conv238, %conv240
  %cmp242 = fcmp ult float %sub241, 0x41E0000000000000
  br i1 %cmp242, label %if.end245, label %if.then244

if.then244:                                       ; preds = %lor.lhs.false228, %while.end208.if.then244_crit_edge, %lor.lhs.false236
  %.pre1364 = phi i32 [ %.pre1364.pre, %while.end208.if.then244_crit_edge ], [ %49, %lor.lhs.false236 ], [ %49, %lor.lhs.false228 ]
  %.pre1365 = load i32* %arrayidx84, align 4, !tbaa !3
  %.pre1366 = load i32* %arrayidx81, align 4, !tbaa !3
  br label %if.end245

if.end245:                                        ; preds = %lor.lhs.false236, %if.then244
  %52 = phi i32 [ %.pre1366, %if.then244 ], [ %51, %lor.lhs.false236 ]
  %53 = phi i32 [ %.pre1365, %if.then244 ], [ %50, %lor.lhs.false236 ]
  %54 = phi i32 [ %.pre1364, %if.then244 ], [ %49, %lor.lhs.false236 ]
  %errval.4 = phi i32 [ 0, %if.then244 ], [ %errval.0.lcssa, %lor.lhs.false236 ]
  %sub248 = add i32 %46, 1
  %add249 = sub i32 %sub248, %47
  %arrayidx250 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 0
  store i32 %add249, i32* %arrayidx250, align 4, !tbaa !3
  %sub253 = add i32 %48, 1
  %add254 = sub i32 %sub253, %54
  %arrayidx255 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 1
  store i32 %add254, i32* %arrayidx255, align 4, !tbaa !3
  %sub258 = sub nsw i32 %53, %52
  %add259 = add nsw i32 %sub258, 1
  %arrayidx260 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 2
  store i32 %add259, i32* %arrayidx260, align 4, !tbaa !3
  %or = or i32 %add254, %add249
  %or264 = or i32 %or, %add259
  %cmp265 = icmp ugt i32 %or264, 16777215
  br i1 %cmp265, label %if.then267, label %if.else277

if.then267:                                       ; preds = %if.end245
  %not.cmp4.i = icmp eq i32 %sub248, %47
  br i1 %not.cmp4.i, label %sizeofint.exit, label %while.body.i

while.body.i:                                     ; preds = %if.then267, %while.body.i
  %num_of_bits.06.i = phi i32 [ %inc.i, %while.body.i ], [ 0, %if.then267 ]
  %num.05.i = phi i32 [ %shl.i, %while.body.i ], [ 1, %if.then267 ]
  %inc.i = add nsw i32 %num_of_bits.06.i, 1
  %shl.i = shl i32 %num.05.i, 1
  %cmp1.i = icmp slt i32 %inc.i, 32
  %not.cmp.i = icmp ule i32 %shl.i, %add249
  %.cmp1.i = and i1 %cmp1.i, %not.cmp.i
  br i1 %.cmp1.i, label %while.body.i, label %sizeofint.exit

sizeofint.exit:                                   ; preds = %while.body.i, %if.then267
  %num_of_bits.0.lcssa.i = phi i32 [ 0, %if.then267 ], [ %inc.i, %while.body.i ]
  %not.cmp4.i1249 = icmp eq i32 %sub253, %54
  br i1 %not.cmp4.i1249, label %sizeofint.exit1259, label %while.body.i1257

while.body.i1257:                                 ; preds = %sizeofint.exit, %while.body.i1257
  %num_of_bits.06.i1250 = phi i32 [ %inc.i1252, %while.body.i1257 ], [ 0, %sizeofint.exit ]
  %num.05.i1251 = phi i32 [ %shl.i1253, %while.body.i1257 ], [ 1, %sizeofint.exit ]
  %inc.i1252 = add nsw i32 %num_of_bits.06.i1250, 1
  %shl.i1253 = shl i32 %num.05.i1251, 1
  %cmp1.i1254 = icmp slt i32 %inc.i1252, 32
  %not.cmp.i1255 = icmp ule i32 %shl.i1253, %add254
  %.cmp1.i1256 = and i1 %cmp1.i1254, %not.cmp.i1255
  br i1 %.cmp1.i1256, label %while.body.i1257, label %sizeofint.exit1259

sizeofint.exit1259:                               ; preds = %while.body.i1257, %sizeofint.exit
  %num_of_bits.0.lcssa.i1258 = phi i32 [ 0, %sizeofint.exit ], [ %inc.i1252, %while.body.i1257 ]
  %not.cmp4.i1260 = icmp eq i32 %add259, 0
  br i1 %not.cmp4.i1260, label %if.end279, label %while.body.i1268

while.body.i1268:                                 ; preds = %sizeofint.exit1259, %while.body.i1268
  %num_of_bits.06.i1261 = phi i32 [ %inc.i1263, %while.body.i1268 ], [ 0, %sizeofint.exit1259 ]
  %num.05.i1262 = phi i32 [ %shl.i1264, %while.body.i1268 ], [ 1, %sizeofint.exit1259 ]
  %inc.i1263 = add nsw i32 %num_of_bits.06.i1261, 1
  %shl.i1264 = shl i32 %num.05.i1262, 1
  %cmp1.i1265 = icmp slt i32 %inc.i1263, 32
  %not.cmp.i1266 = icmp ule i32 %shl.i1264, %add259
  %.cmp1.i1267 = and i1 %cmp1.i1265, %not.cmp.i1266
  br i1 %.cmp1.i1267, label %while.body.i1268, label %if.end279

if.else277:                                       ; preds = %if.end245
  %call278 = call fastcc i32 @sizeofints(i32* %arrayidx250) #8
  br label %if.end279

if.end279:                                        ; preds = %while.body.i1268, %sizeofint.exit1259, %if.else277
  %bitsizeint.sroa.2.0 = phi i32 [ undef, %if.else277 ], [ 0, %sizeofint.exit1259 ], [ %inc.i1263, %while.body.i1268 ]
  %bitsizeint.sroa.1.0 = phi i32 [ undef, %if.else277 ], [ %num_of_bits.0.lcssa.i1258, %sizeofint.exit1259 ], [ %num_of_bits.0.lcssa.i1258, %while.body.i1268 ]
  %bitsizeint.sroa.0.0 = phi i32 [ undef, %if.else277 ], [ %num_of_bits.0.lcssa.i, %sizeofint.exit1259 ], [ %num_of_bits.0.lcssa.i, %while.body.i1268 ]
  %bitsize.0 = phi i32 [ %call278, %if.else277 ], [ 0, %sizeofint.exit1259 ], [ 0, %while.body.i1268 ]
  %55 = load i32** @xdr3dfcoord.ip, align 8, !tbaa !0
  store i32 9, i32* %smallidx, align 4, !tbaa !3
  br label %land.rhs

while.cond280:                                    ; preds = %land.rhs
  %56 = trunc i64 %indvars.iv.next1360 to i32
  store i32 %56, i32* %smallidx, align 4, !tbaa !3
  %cmp282 = icmp ult i32 %56, 73
  br i1 %cmp282, label %land.rhs, label %while.end290

land.rhs:                                         ; preds = %if.end279, %while.cond280
  %indvars.iv1359 = phi i64 [ 9, %if.end279 ], [ %indvars.iv.next1360, %while.cond280 ]
  %arrayidx285 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %indvars.iv1359
  %57 = load i32* %arrayidx285, align 4, !tbaa !3
  %cmp286 = icmp slt i32 %57, %mindiff.0.lcssa
  %indvars.iv.next1360 = add i64 %indvars.iv1359, 1
  br i1 %cmp286, label %while.cond280, label %while.end290

while.end290:                                     ; preds = %while.cond280, %land.rhs
  %call291 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %smallidx) #5
  %58 = load i32* %smallidx, align 4, !tbaa !3
  %add292 = add nsw i32 %58, 8
  %cmp294 = icmp ugt i32 %add292, 73
  %.add292 = select i1 %cmp294, i32 73, i32 %add292
  %sub299 = add nsw i32 %.add292, -8
  %cmp301 = icmp slt i32 %58, 10
  br i1 %cmp301, label %cond.end306, label %cond.false304

cond.false304:                                    ; preds = %while.end290
  %sub300 = add nsw i32 %58, -1
  %phitmp1210 = sext i32 %sub300 to i64
  br label %cond.end306

cond.end306:                                      ; preds = %while.end290, %cond.false304
  %cond307 = phi i64 [ %phitmp1210, %cond.false304 ], [ 9, %while.end290 ]
  %arrayidx309 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %cond307
  %59 = load i32* %arrayidx309, align 4, !tbaa !3
  %div = sdiv i32 %59, 2
  %idxprom310 = sext i32 %58 to i64
  %arrayidx311 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom310
  %60 = load i32* %arrayidx311, align 4, !tbaa !3
  %div312 = sdiv i32 %60, 2
  %arrayidx315 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 2
  store i32 %60, i32* %arrayidx315, align 4, !tbaa !3
  %arrayidx316 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 1
  store i32 %60, i32* %arrayidx316, align 4, !tbaa !3
  %arrayidx317 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 0
  store i32 %60, i32* %arrayidx317, align 4, !tbaa !3
  %idxprom318 = sext i32 %.add292 to i64
  %arrayidx319 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom318
  %61 = load i32* %arrayidx319, align 4, !tbaa !3
  %div320 = sdiv i32 %61, 2
  %arrayidx404 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 0
  %arrayidx408 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 1
  %arrayidx412 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 2
  %cmp413 = icmp eq i32 %bitsize.0, 0
  br label %while.cond321.outer

while.cond321.outer:                              ; preds = %if.end564, %cond.end306
  %smallnum.0.ph = phi i32 [ %div312, %cond.end306 ], [ %smallnum.1, %if.end564 ]
  %smaller.0.ph = phi i32 [ %div, %cond.end306 ], [ %smaller.1, %if.end564 ]
  %i.0.ph = phi i32 [ 0, %cond.end306 ], [ %i.1.lcssa, %if.end564 ]
  %prevrun.0.ph = phi i32 [ -1, %cond.end306 ], [ %prevrun.1, %if.end564 ]
  %prevcoord.sroa.2.0.ph = phi i32 [ undef, %cond.end306 ], [ %prevcoord.sroa.2.1.lcssa, %if.end564 ]
  %prevcoord.sroa.1.0.ph = phi i32 [ undef, %cond.end306 ], [ %prevcoord.sroa.1.1.lcssa, %if.end564 ]
  %prevcoord.sroa.0.0.ph = phi i32 [ undef, %cond.end306 ], [ %prevcoord.sroa.0.1.lcssa, %if.end564 ]
  %mul473 = mul nsw i32 %smaller.0.ph, %smaller.0.ph
  br label %while.cond321

while.cond321:                                    ; preds = %while.cond321.outer, %for.end
  %i.0 = phi i32 [ %i.1.lcssa, %for.end ], [ %i.0.ph, %while.cond321.outer ]
  %prevrun.0 = phi i32 [ %prevrun.1, %for.end ], [ %prevrun.0.ph, %while.cond321.outer ]
  %prevcoord.sroa.2.0 = phi i32 [ %prevcoord.sroa.2.1.lcssa, %for.end ], [ %prevcoord.sroa.2.0.ph, %while.cond321.outer ]
  %prevcoord.sroa.1.0 = phi i32 [ %prevcoord.sroa.1.1.lcssa, %for.end ], [ %prevcoord.sroa.1.0.ph, %while.cond321.outer ]
  %prevcoord.sroa.0.0 = phi i32 [ %prevcoord.sroa.0.1.lcssa, %for.end ], [ %prevcoord.sroa.0.0.ph, %while.cond321.outer ]
  %62 = load i32* %size, align 4, !tbaa !3
  %cmp322 = icmp slt i32 %i.0, %62
  br i1 %cmp322, label %while.body324, label %while.end571

while.body324:                                    ; preds = %while.cond321
  %mul325 = mul nsw i32 %i.0, 3
  %idx.ext326 = sext i32 %mul325 to i64
  %add.ptr327 = getelementptr inbounds i32* %55, i64 %idx.ext326
  %63 = load i32* %smallidx, align 4, !tbaa !3
  %cmp328 = icmp slt i32 %63, %.add292
  %cmp331 = icmp sgt i32 %i.0, 0
  %or.cond1244 = and i1 %cmp328, %cmp331
  br i1 %or.cond1244, label %land.lhs.true333, label %if.else355

land.lhs.true333:                                 ; preds = %while.body324
  %64 = load i32* %add.ptr327, align 4, !tbaa !3
  %sub336 = sub nsw i32 %64, %prevcoord.sroa.0.0
  %ispos1228 = icmp sgt i32 %sub336, -1
  %neg1229 = sub i32 0, %sub336
  %65 = select i1 %ispos1228, i32 %sub336, i32 %neg1229
  %cmp338 = icmp slt i32 %65, %div320
  br i1 %cmp338, label %land.lhs.true340, label %if.else355

land.lhs.true340:                                 ; preds = %land.lhs.true333
  %add.ptr327.sum1230 = add i64 %idx.ext326, 1
  %arrayidx341 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1230
  %66 = load i32* %arrayidx341, align 4, !tbaa !3
  %sub343 = sub nsw i32 %66, %prevcoord.sroa.1.0
  %ispos1231 = icmp sgt i32 %sub343, -1
  %neg1232 = sub i32 0, %sub343
  %67 = select i1 %ispos1231, i32 %sub343, i32 %neg1232
  %cmp345 = icmp slt i32 %67, %div320
  br i1 %cmp345, label %land.lhs.true347, label %if.else355

land.lhs.true347:                                 ; preds = %land.lhs.true340
  %add.ptr327.sum1233 = add i64 %idx.ext326, 2
  %arrayidx348 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1233
  %68 = load i32* %arrayidx348, align 4, !tbaa !3
  %sub350 = sub nsw i32 %68, %prevcoord.sroa.2.0
  %ispos1234 = icmp sgt i32 %sub350, -1
  %neg1235 = sub i32 0, %sub350
  %69 = select i1 %ispos1234, i32 %sub350, i32 %neg1235
  %cmp352 = icmp slt i32 %69, %div320
  br i1 %cmp352, label %if.end361, label %if.else355

if.else355:                                       ; preds = %land.lhs.true347, %land.lhs.true340, %land.lhs.true333, %while.body324
  %cmp356 = icmp sgt i32 %63, %sub299
  %. = sext i1 %cmp356 to i32
  br label %if.end361

if.end361:                                        ; preds = %if.else355, %land.lhs.true347
  %is_smaller.0 = phi i32 [ 1, %land.lhs.true347 ], [ %., %if.else355 ]
  %add362 = add nsw i32 %i.0, 1
  %cmp363 = icmp slt i32 %add362, %62
  %70 = load i32* %add.ptr327, align 4, !tbaa !3
  br i1 %cmp363, label %if.then365, label %if.end400

if.then365:                                       ; preds = %if.end361
  %add.ptr327.sum1217 = add i64 %idx.ext326, 3
  %arrayidx367 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1217
  %71 = load i32* %arrayidx367, align 4, !tbaa !3
  %sub368 = sub nsw i32 %70, %71
  %ispos1218 = icmp sgt i32 %sub368, -1
  %neg1219 = sub i32 0, %sub368
  %72 = select i1 %ispos1218, i32 %sub368, i32 %neg1219
  %cmp370 = icmp slt i32 %72, %smallnum.0.ph
  br i1 %cmp370, label %land.lhs.true372, label %if.end400

land.lhs.true372:                                 ; preds = %if.then365
  %add.ptr327.sum1220 = add i64 %idx.ext326, 1
  %arrayidx373 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1220
  %73 = load i32* %arrayidx373, align 4, !tbaa !3
  %add.ptr327.sum1221 = add i64 %idx.ext326, 4
  %arrayidx374 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1221
  %74 = load i32* %arrayidx374, align 4, !tbaa !3
  %sub375 = sub nsw i32 %73, %74
  %ispos1222 = icmp sgt i32 %sub375, -1
  %neg1223 = sub i32 0, %sub375
  %75 = select i1 %ispos1222, i32 %sub375, i32 %neg1223
  %cmp377 = icmp slt i32 %75, %smallnum.0.ph
  br i1 %cmp377, label %land.lhs.true379, label %if.end400

land.lhs.true379:                                 ; preds = %land.lhs.true372
  %add.ptr327.sum1224 = add i64 %idx.ext326, 2
  %arrayidx380 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1224
  %76 = load i32* %arrayidx380, align 4, !tbaa !3
  %add.ptr327.sum1225 = add i64 %idx.ext326, 5
  %arrayidx381 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1225
  %77 = load i32* %arrayidx381, align 4, !tbaa !3
  %sub382 = sub nsw i32 %76, %77
  %ispos1226 = icmp sgt i32 %sub382, -1
  %neg1227 = sub i32 0, %sub382
  %78 = select i1 %ispos1226, i32 %sub382, i32 %neg1227
  %cmp384 = icmp slt i32 %78, %smallnum.0.ph
  br i1 %cmp384, label %if.then386, label %if.end400

if.then386:                                       ; preds = %land.lhs.true379
  store i32 %71, i32* %add.ptr327, align 4, !tbaa !3
  store i32 %70, i32* %arrayidx367, align 4, !tbaa !3
  store i32 %74, i32* %arrayidx373, align 4, !tbaa !3
  store i32 %73, i32* %arrayidx374, align 4, !tbaa !3
  store i32 %77, i32* %arrayidx380, align 4, !tbaa !3
  store i32 %76, i32* %arrayidx381, align 4, !tbaa !3
  br label %if.end400

if.end400:                                        ; preds = %if.end361, %land.lhs.true372, %if.then365, %land.lhs.true379, %if.then386
  %79 = phi i32 [ %71, %if.then386 ], [ %70, %land.lhs.true379 ], [ %70, %if.then365 ], [ %70, %land.lhs.true372 ], [ %70, %if.end361 ]
  %is_small.0 = phi i32 [ 1, %if.then386 ], [ 0, %land.lhs.true379 ], [ 0, %if.then365 ], [ 0, %land.lhs.true372 ], [ 0, %if.end361 ]
  %80 = load i32* %arrayidx83, align 4, !tbaa !3
  %sub403 = sub nsw i32 %79, %80
  store i32 %sub403, i32* %arrayidx404, align 16, !tbaa !3
  %add.ptr327.sum = add i64 %idx.ext326, 1
  %arrayidx405 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum
  %81 = load i32* %arrayidx405, align 4, !tbaa !3
  %82 = load i32* %arrayidx82, align 4, !tbaa !3
  %sub407 = sub nsw i32 %81, %82
  store i32 %sub407, i32* %arrayidx408, align 4, !tbaa !3
  %add.ptr327.sum1211 = add i64 %idx.ext326, 2
  %arrayidx409 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1211
  %83 = load i32* %arrayidx409, align 4, !tbaa !3
  %84 = load i32* %arrayidx81, align 4, !tbaa !3
  %sub411 = sub nsw i32 %83, %84
  store i32 %sub411, i32* %arrayidx412, align 8, !tbaa !3
  %85 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  br i1 %cmp413, label %if.then415, label %if.else422

if.then415:                                       ; preds = %if.end400
  call fastcc void @sendbits(i32* %85, i32 %bitsizeint.sroa.0.0, i32 %sub403) #8
  %86 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  call fastcc void @sendbits(i32* %86, i32 %bitsizeint.sroa.1.0, i32 %sub407) #8
  %87 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  call fastcc void @sendbits(i32* %87, i32 %bitsizeint.sroa.2.0, i32 %sub411) #8
  br label %if.end425

if.else422:                                       ; preds = %if.end400
  call fastcc void @sendints(i32* %85, i32 %bitsize.0, i32* %arrayidx250, i32* %arrayidx404) #8
  br label %if.end425

if.end425:                                        ; preds = %if.else422, %if.then415
  %88 = load i32* %add.ptr327, align 4, !tbaa !3
  %89 = load i32* %arrayidx405, align 4, !tbaa !3
  %90 = load i32* %arrayidx409, align 4, !tbaa !3
  %cmp434 = icmp eq i32 %is_small.0, 0
  %cmp437 = icmp eq i32 %is_smaller.0, -1
  %or.cond1245 = and i1 %cmp434, %cmp437
  %.is_smaller.0 = select i1 %or.cond1245, i32 0, i32 %is_smaller.0
  br i1 %cmp434, label %while.end532, label %while.body446.lr.ph

while.body446.lr.ph:                              ; preds = %if.end425
  %add.ptr327.sum1212 = add i64 %idx.ext326, 3
  %add.ptr432 = getelementptr inbounds i32* %55, i64 %add.ptr327.sum1212
  br label %while.body446

while.body446:                                    ; preds = %while.body446.lr.ph, %while.cond441.backedge
  %indvars.iv = phi i64 [ 0, %while.body446.lr.ph ], [ %indvars.iv.next, %while.cond441.backedge ]
  %prevcoord.sroa.0.11331 = phi i32 [ %88, %while.body446.lr.ph ], [ %98, %while.cond441.backedge ]
  %prevcoord.sroa.1.11330 = phi i32 [ %89, %while.body446.lr.ph ], [ %99, %while.cond441.backedge ]
  %prevcoord.sroa.2.11329 = phi i32 [ %90, %while.body446.lr.ph ], [ %100, %while.cond441.backedge ]
  %thiscoord.01328 = phi i32* [ %add.ptr432, %while.body446.lr.ph ], [ %add.ptr506, %while.cond441.backedge ]
  %run.01327 = phi i32 [ 0, %while.body446.lr.ph ], [ %inc496, %while.cond441.backedge ]
  %is_smaller.11326 = phi i32 [ %.is_smaller.0, %while.body446.lr.ph ], [ %is_smaller.2, %while.cond441.backedge ]
  %i.11325 = phi i32 [ %add362, %while.body446.lr.ph ], [ %inc505, %while.cond441.backedge ]
  %cmp447 = icmp eq i32 %is_smaller.11326, -1
  %91 = load i32* %thiscoord.01328, align 4, !tbaa !3
  br i1 %cmp447, label %land.lhs.true449, label %while.body446.if.end477_crit_edge

while.body446.if.end477_crit_edge:                ; preds = %while.body446
  %arrayidx485.pre = getelementptr inbounds i32* %thiscoord.01328, i64 1
  %arrayidx492.pre = getelementptr inbounds i32* %thiscoord.01328, i64 2
  br label %if.end477

land.lhs.true449:                                 ; preds = %while.body446
  %sub452 = sub nsw i32 %91, %prevcoord.sroa.0.11331
  %mul456 = mul nsw i32 %sub452, %sub452
  %arrayidx457 = getelementptr inbounds i32* %thiscoord.01328, i64 1
  %92 = load i32* %arrayidx457, align 4, !tbaa !3
  %sub459 = sub nsw i32 %92, %prevcoord.sroa.1.11330
  %mul463 = mul nsw i32 %sub459, %sub459
  %add464 = add nsw i32 %mul463, %mul456
  %arrayidx465 = getelementptr inbounds i32* %thiscoord.01328, i64 2
  %93 = load i32* %arrayidx465, align 4, !tbaa !3
  %sub467 = sub nsw i32 %93, %prevcoord.sroa.2.11329
  %mul471 = mul nsw i32 %sub467, %sub467
  %add472 = add nsw i32 %add464, %mul471
  %cmp474 = icmp slt i32 %add472, %mul473
  %is_smaller.1. = sext i1 %cmp474 to i32
  br label %if.end477

if.end477:                                        ; preds = %while.body446.if.end477_crit_edge, %land.lhs.true449
  %arrayidx492.pre-phi = phi i32* [ %arrayidx492.pre, %while.body446.if.end477_crit_edge ], [ %arrayidx465, %land.lhs.true449 ]
  %arrayidx485.pre-phi = phi i32* [ %arrayidx485.pre, %while.body446.if.end477_crit_edge ], [ %arrayidx457, %land.lhs.true449 ]
  %is_smaller.2 = phi i32 [ %is_smaller.11326, %while.body446.if.end477_crit_edge ], [ %is_smaller.1., %land.lhs.true449 ]
  %sub480 = sub i32 %smallnum.0.ph, %prevcoord.sroa.0.11331
  %add481 = add i32 %sub480, %91
  %94 = add nsw i64 %indvars.iv, 1
  %arrayidx484 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 %indvars.iv
  store i32 %add481, i32* %arrayidx484, align 4, !tbaa !3
  %95 = load i32* %arrayidx485.pre-phi, align 4, !tbaa !3
  %sub487 = sub i32 %smallnum.0.ph, %prevcoord.sroa.1.11330
  %add488 = add i32 %sub487, %95
  %96 = add nsw i64 %indvars.iv, 2
  %arrayidx491 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 %94
  store i32 %add488, i32* %arrayidx491, align 4, !tbaa !3
  %97 = load i32* %arrayidx492.pre-phi, align 4, !tbaa !3
  %sub494 = sub i32 %smallnum.0.ph, %prevcoord.sroa.2.11329
  %add495 = add i32 %sub494, %97
  %indvars.iv.next = add i64 %indvars.iv, 3
  %inc496 = add nsw i32 %run.01327, 3
  %arrayidx498 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 %96
  store i32 %add495, i32* %arrayidx498, align 4, !tbaa !3
  %98 = load i32* %thiscoord.01328, align 4, !tbaa !3
  %99 = load i32* %arrayidx485.pre-phi, align 4, !tbaa !3
  %100 = load i32* %arrayidx492.pre-phi, align 4, !tbaa !3
  %inc505 = add nsw i32 %i.11325, 1
  %add.ptr506 = getelementptr inbounds i32* %thiscoord.01328, i64 3
  %101 = load i32* %size, align 4, !tbaa !3
  %cmp507 = icmp slt i32 %inc505, %101
  br i1 %cmp507, label %land.lhs.true509, label %while.end532

land.lhs.true509:                                 ; preds = %if.end477
  %102 = load i32* %add.ptr506, align 4, !tbaa !3
  %sub512 = sub nsw i32 %102, %98
  %ispos = icmp sgt i32 %sub512, -1
  %neg = sub i32 0, %sub512
  %103 = select i1 %ispos, i32 %sub512, i32 %neg
  %cmp514 = icmp slt i32 %103, %smallnum.0.ph
  br i1 %cmp514, label %land.lhs.true516, label %while.end532

land.lhs.true516:                                 ; preds = %land.lhs.true509
  %arrayidx517 = getelementptr inbounds i32* %thiscoord.01328, i64 4
  %104 = load i32* %arrayidx517, align 4, !tbaa !3
  %sub519 = sub nsw i32 %104, %99
  %ispos1213 = icmp sgt i32 %sub519, -1
  %neg1214 = sub i32 0, %sub519
  %105 = select i1 %ispos1213, i32 %sub519, i32 %neg1214
  %cmp521 = icmp slt i32 %105, %smallnum.0.ph
  br i1 %cmp521, label %while.cond441.backedge, label %while.end532

while.cond441.backedge:                           ; preds = %land.lhs.true516
  %arrayidx524 = getelementptr inbounds i32* %thiscoord.01328, i64 5
  %106 = load i32* %arrayidx524, align 4, !tbaa !3
  %sub526 = sub nsw i32 %106, %100
  %ispos1215 = icmp sgt i32 %sub526, -1
  %neg1216 = sub i32 0, %sub526
  %107 = select i1 %ispos1215, i32 %sub526, i32 %neg1216
  %cmp528 = icmp slt i32 %107, %smallnum.0.ph
  %108 = trunc i64 %indvars.iv.next to i32
  %cmp443 = icmp slt i32 %108, 24
  %or.cond1246 = and i1 %cmp528, %cmp443
  br i1 %or.cond1246, label %while.body446, label %while.end532

while.end532:                                     ; preds = %if.end477, %land.lhs.true509, %land.lhs.true516, %while.cond441.backedge, %if.end425
  %prevcoord.sroa.0.1.lcssa = phi i32 [ %88, %if.end425 ], [ %98, %while.cond441.backedge ], [ %98, %land.lhs.true516 ], [ %98, %land.lhs.true509 ], [ %98, %if.end477 ]
  %prevcoord.sroa.1.1.lcssa = phi i32 [ %89, %if.end425 ], [ %99, %while.cond441.backedge ], [ %99, %land.lhs.true516 ], [ %99, %land.lhs.true509 ], [ %99, %if.end477 ]
  %prevcoord.sroa.2.1.lcssa = phi i32 [ %90, %if.end425 ], [ %100, %while.cond441.backedge ], [ %100, %land.lhs.true516 ], [ %100, %land.lhs.true509 ], [ %100, %if.end477 ]
  %run.0.lcssa = phi i32 [ 0, %if.end425 ], [ %inc496, %while.cond441.backedge ], [ %inc496, %land.lhs.true516 ], [ %inc496, %land.lhs.true509 ], [ %inc496, %if.end477 ]
  %is_smaller.1.lcssa = phi i32 [ %.is_smaller.0, %if.end425 ], [ %is_smaller.2, %while.cond441.backedge ], [ %is_smaller.2, %land.lhs.true516 ], [ %is_smaller.2, %land.lhs.true509 ], [ %is_smaller.2, %if.end477 ]
  %i.1.lcssa = phi i32 [ %add362, %if.end425 ], [ %inc505, %while.cond441.backedge ], [ %inc505, %land.lhs.true516 ], [ %inc505, %land.lhs.true509 ], [ %inc505, %if.end477 ]
  %cmp533 = icmp eq i32 %run.0.lcssa, %prevrun.0
  %cmp536 = icmp eq i32 %is_smaller.1.lcssa, 0
  %or.cond1248 = and i1 %cmp533, %cmp536
  %109 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  br i1 %or.cond1248, label %if.else541, label %if.then538

if.then538:                                       ; preds = %while.end532
  call fastcc void @sendbits(i32* %109, i32 1, i32 1) #8
  %110 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %add539 = add i32 %is_smaller.1.lcssa, 1
  %add540 = add i32 %add539, %run.0.lcssa
  call fastcc void @sendbits(i32* %110, i32 5, i32 %add540) #8
  br label %if.end542

if.else541:                                       ; preds = %while.end532
  call fastcc void @sendbits(i32* %109, i32 1, i32 0) #8
  br label %if.end542

if.end542:                                        ; preds = %if.else541, %if.then538
  %prevrun.1 = phi i32 [ %run.0.lcssa, %if.then538 ], [ %prevrun.0, %if.else541 ]
  %cmp5431338 = icmp sgt i32 %run.0.lcssa, 0
  br i1 %cmp5431338, label %for.body, label %for.end

for.body:                                         ; preds = %if.end542, %for.body
  %indvars.iv1357 = phi i64 [ %indvars.iv.next1358, %for.body ], [ 0, %if.end542 ]
  %111 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %112 = load i32* %smallidx, align 4, !tbaa !3
  %arrayidx547 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 %indvars.iv1357
  call fastcc void @sendints(i32* %111, i32 %112, i32* %arrayidx317, i32* %arrayidx547) #8
  %indvars.iv.next1358 = add i64 %indvars.iv1357, 3
  %113 = trunc i64 %indvars.iv.next1358 to i32
  %cmp543 = icmp slt i32 %113, %run.0.lcssa
  br i1 %cmp543, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end542
  br i1 %cmp536, label %while.cond321, label %if.then551

if.then551:                                       ; preds = %for.end
  %114 = load i32* %smallidx, align 4, !tbaa !3
  %add552 = add nsw i32 %114, %is_smaller.1.lcssa
  store i32 %add552, i32* %smallidx, align 4, !tbaa !3
  %cmp553 = icmp slt i32 %is_smaller.1.lcssa, 0
  br i1 %cmp553, label %if.then555, label %if.else560

if.then555:                                       ; preds = %if.then551
  %sub556 = add nsw i32 %add552, -1
  %idxprom557 = sext i32 %sub556 to i64
  %arrayidx558 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom557
  %115 = load i32* %arrayidx558, align 4, !tbaa !3
  %div559 = sdiv i32 %115, 2
  %idxprom565.phi.trans.insert = sext i32 %add552 to i64
  %arrayidx566.phi.trans.insert = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom565.phi.trans.insert
  %.pre1367 = load i32* %arrayidx566.phi.trans.insert, align 4, !tbaa !3
  br label %if.end564

if.else560:                                       ; preds = %if.then551
  %idxprom561 = sext i32 %add552 to i64
  %arrayidx562 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom561
  %116 = load i32* %arrayidx562, align 4, !tbaa !3
  %div563 = sdiv i32 %116, 2
  br label %if.end564

if.end564:                                        ; preds = %if.else560, %if.then555
  %117 = phi i32 [ %.pre1367, %if.then555 ], [ %116, %if.else560 ]
  %smallnum.1 = phi i32 [ %smaller.0.ph, %if.then555 ], [ %div563, %if.else560 ]
  %smaller.1 = phi i32 [ %div559, %if.then555 ], [ %smallnum.0.ph, %if.else560 ]
  store i32 %117, i32* %arrayidx315, align 4, !tbaa !3
  store i32 %117, i32* %arrayidx316, align 4, !tbaa !3
  store i32 %117, i32* %arrayidx317, align 4, !tbaa !3
  br label %while.cond321.outer

while.end571:                                     ; preds = %while.cond321
  %118 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %arrayidx572 = getelementptr inbounds i32* %118, i64 1
  %119 = load i32* %arrayidx572, align 4, !tbaa !3
  %cmp573 = icmp eq i32 %119, 0
  br i1 %cmp573, label %if.end578, label %if.then575

if.then575:                                       ; preds = %while.end571
  %120 = load i32* %118, align 4, !tbaa !3
  %inc577 = add nsw i32 %120, 1
  store i32 %inc577, i32* %118, align 4, !tbaa !3
  br label %if.end578

if.end578:                                        ; preds = %while.end571, %if.then575
  %call580 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %118) #5
  %121 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %arrayidx581 = getelementptr inbounds i32* %121, i64 3
  %122 = bitcast i32* %arrayidx581 to i8*
  %123 = load i32* %121, align 4, !tbaa !3
  %call583 = call i32 @xdr_opaque(%struct.XDR* %xdrs, i8* %122, i32 %123) #5
  %mul584 = mul nsw i32 %call583, %errval.4
  br label %cleanup

if.else585:                                       ; preds = %while.end
  %call586 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %lsize) #5
  %cmp587 = icmp eq i32 %call586, 0
  br i1 %cmp587, label %cleanup, label %if.end590

if.end590:                                        ; preds = %if.else585
  %124 = load i32* %size, align 4, !tbaa !3
  %cmp591 = icmp eq i32 %124, 0
  br i1 %cmp591, label %if.end598thread-pre-split, label %land.lhs.true593

land.lhs.true593:                                 ; preds = %if.end590
  %125 = load i32* %lsize, align 4, !tbaa !3
  %cmp594 = icmp eq i32 %125, %124
  br i1 %cmp594, label %if.end598, label %if.then596

if.then596:                                       ; preds = %land.lhs.true593
  %126 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call597 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([65 x i8]* @.str8, i64 0, i64 0), i32 %124, i32 %125) #5
  br label %if.end598thread-pre-split

if.end598thread-pre-split:                        ; preds = %if.then596, %if.end590
  %.pr = load i32* %lsize, align 4, !tbaa !3
  br label %if.end598

if.end598:                                        ; preds = %if.end598thread-pre-split, %land.lhs.true593
  %127 = phi i32 [ %.pr, %if.end598thread-pre-split ], [ %124, %land.lhs.true593 ]
  store i32 %127, i32* %size, align 4, !tbaa !3
  %mul599 = mul nsw i32 %127, 3
  %cmp600 = icmp slt i32 %127, 10
  br i1 %cmp600, label %if.then602, label %if.end604

if.then602:                                       ; preds = %if.end598
  %128 = bitcast float* %fp to i8*
  %call603 = call i32 @xdr_vector(%struct.XDR* %xdrs, i8* %128, i32 %mul599, i32 4, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, float*)* @xdr_float to i32 (%struct.XDR*, i8*, ...)*)) #5
  br label %cleanup

if.end604:                                        ; preds = %if.end598
  %call605 = call i32 @xdr_float(%struct.XDR* %xdrs, float* %precision) #5
  %129 = load i32** @xdr3dfcoord.ip, align 8, !tbaa !0
  %cmp606 = icmp eq i32* %129, null
  br i1 %cmp606, label %if.then608, label %if.else628

if.then608:                                       ; preds = %if.end604
  %conv609 = zext i32 %mul599 to i64
  %mul610 = shl nuw nsw i64 %conv609, 2
  %call611 = call noalias i8* @malloc(i64 %mul610) #5
  %130 = bitcast i8* %call611 to i32*
  store i32* %130, i32** @xdr3dfcoord.ip, align 8, !tbaa !0
  %cmp612 = icmp eq i8* %call611, null
  br i1 %cmp612, label %if.then614, label %if.end616

if.then614:                                       ; preds = %if.then608
  %131 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %132 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %131)
  call void @exit(i32 1) #6
  unreachable

if.end616:                                        ; preds = %if.then608
  %conv617 = uitofp i32 %mul599 to double
  %mul618 = fmul double %conv617, 1.200000e+00
  %conv619 = fptosi double %mul618 to i32
  %conv620 = sext i32 %conv619 to i64
  %mul621 = shl nsw i64 %conv620, 2
  %call622 = call noalias i8* @malloc(i64 %mul621) #5
  %133 = bitcast i8* %call622 to i32*
  store i32* %133, i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %cmp623 = icmp eq i8* %call622, null
  br i1 %cmp623, label %if.then625, label %if.end627

if.then625:                                       ; preds = %if.end616
  %134 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %135 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %134)
  call void @exit(i32 1) #6
  unreachable

if.end627:                                        ; preds = %if.end616
  %136 = load i32* %size, align 4, !tbaa !3
  store i32 %136, i32* @xdr3dfcoord.oldsize, align 4, !tbaa !3
  br label %if.end652

if.else628:                                       ; preds = %if.end604
  %137 = load i32* %size, align 4, !tbaa !3
  %138 = load i32* @xdr3dfcoord.oldsize, align 4, !tbaa !3
  %cmp629 = icmp sgt i32 %137, %138
  br i1 %cmp629, label %if.then631, label %if.else628.if.end652_crit_edge

if.else628.if.end652_crit_edge:                   ; preds = %if.else628
  %.pre1368 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  br label %if.end652

if.then631:                                       ; preds = %if.else628
  %139 = bitcast i32* %129 to i8*
  %conv632 = zext i32 %mul599 to i64
  %mul633 = shl nuw nsw i64 %conv632, 2
  %call634 = call i8* @realloc(i8* %139, i64 %mul633) #5
  %140 = bitcast i8* %call634 to i32*
  store i32* %140, i32** @xdr3dfcoord.ip, align 8, !tbaa !0
  %cmp635 = icmp eq i8* %call634, null
  br i1 %cmp635, label %if.then637, label %if.end639

if.then637:                                       ; preds = %if.then631
  %141 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %142 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %141)
  call void @exit(i32 1) #6
  unreachable

if.end639:                                        ; preds = %if.then631
  %conv640 = uitofp i32 %mul599 to double
  %mul641 = fmul double %conv640, 1.200000e+00
  %conv642 = fptosi double %mul641 to i32
  %143 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %144 = bitcast i32* %143 to i8*
  %conv643 = sext i32 %conv642 to i64
  %mul644 = shl nsw i64 %conv643, 2
  %call645 = call i8* @realloc(i8* %144, i64 %mul644) #5
  %145 = bitcast i8* %call645 to i32*
  store i32* %145, i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %cmp646 = icmp eq i8* %call645, null
  br i1 %cmp646, label %if.then648, label %if.end650

if.then648:                                       ; preds = %if.end639
  %146 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %147 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %146)
  call void @exit(i32 1) #6
  unreachable

if.end650:                                        ; preds = %if.end639
  %148 = load i32* %size, align 4, !tbaa !3
  store i32 %148, i32* @xdr3dfcoord.oldsize, align 4, !tbaa !3
  br label %if.end652

if.end652:                                        ; preds = %if.else628.if.end652_crit_edge, %if.end650, %if.end627
  %149 = phi i32* [ %.pre1368, %if.else628.if.end652_crit_edge ], [ %145, %if.end650 ], [ %133, %if.end627 ]
  %arrayidx653 = getelementptr inbounds i32* %149, i64 2
  store i32 0, i32* %arrayidx653, align 4, !tbaa !3
  %arrayidx654 = getelementptr inbounds i32* %149, i64 1
  store i32 0, i32* %arrayidx654, align 4, !tbaa !3
  store i32 0, i32* %149, align 4, !tbaa !3
  %arrayidx656 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 0
  %call657 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx656) #5
  %arrayidx658 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 1
  %call659 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx658) #5
  %arrayidx660 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 2
  %call661 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx660) #5
  %arrayidx662 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 0
  %call663 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx662) #5
  %arrayidx664 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 1
  %call665 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx664) #5
  %arrayidx666 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 2
  %call667 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %arrayidx666) #5
  %150 = load i32* %arrayidx662, align 4, !tbaa !3
  %151 = load i32* %arrayidx656, align 4, !tbaa !3
  %sub670 = add i32 %150, 1
  %add671 = sub i32 %sub670, %151
  %arrayidx672 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 0
  store i32 %add671, i32* %arrayidx672, align 4, !tbaa !3
  %152 = load i32* %arrayidx664, align 4, !tbaa !3
  %153 = load i32* %arrayidx658, align 4, !tbaa !3
  %sub675 = add i32 %152, 1
  %add676 = sub i32 %sub675, %153
  %arrayidx677 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 1
  store i32 %add676, i32* %arrayidx677, align 4, !tbaa !3
  %154 = load i32* %arrayidx666, align 4, !tbaa !3
  %155 = load i32* %arrayidx660, align 4, !tbaa !3
  %sub680 = sub nsw i32 %154, %155
  %add681 = add nsw i32 %sub680, 1
  %arrayidx682 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 2
  store i32 %add681, i32* %arrayidx682, align 4, !tbaa !3
  %or685 = or i32 %add676, %add671
  %or687 = or i32 %or685, %add681
  %cmp688 = icmp ugt i32 %or687, 16777215
  br i1 %cmp688, label %if.then690, label %if.else700

if.then690:                                       ; preds = %if.end652
  %not.cmp4.i1271 = icmp eq i32 %sub670, %151
  br i1 %not.cmp4.i1271, label %sizeofint.exit1281, label %while.body.i1279

while.body.i1279:                                 ; preds = %if.then690, %while.body.i1279
  %num_of_bits.06.i1272 = phi i32 [ %inc.i1274, %while.body.i1279 ], [ 0, %if.then690 ]
  %num.05.i1273 = phi i32 [ %shl.i1275, %while.body.i1279 ], [ 1, %if.then690 ]
  %inc.i1274 = add nsw i32 %num_of_bits.06.i1272, 1
  %shl.i1275 = shl i32 %num.05.i1273, 1
  %cmp1.i1276 = icmp slt i32 %inc.i1274, 32
  %not.cmp.i1277 = icmp ule i32 %shl.i1275, %add671
  %.cmp1.i1278 = and i1 %cmp1.i1276, %not.cmp.i1277
  br i1 %.cmp1.i1278, label %while.body.i1279, label %sizeofint.exit1281

sizeofint.exit1281:                               ; preds = %while.body.i1279, %if.then690
  %num_of_bits.0.lcssa.i1280 = phi i32 [ 0, %if.then690 ], [ %inc.i1274, %while.body.i1279 ]
  %not.cmp4.i1282 = icmp eq i32 %sub675, %153
  br i1 %not.cmp4.i1282, label %sizeofint.exit1292, label %while.body.i1290

while.body.i1290:                                 ; preds = %sizeofint.exit1281, %while.body.i1290
  %num_of_bits.06.i1283 = phi i32 [ %inc.i1285, %while.body.i1290 ], [ 0, %sizeofint.exit1281 ]
  %num.05.i1284 = phi i32 [ %shl.i1286, %while.body.i1290 ], [ 1, %sizeofint.exit1281 ]
  %inc.i1285 = add nsw i32 %num_of_bits.06.i1283, 1
  %shl.i1286 = shl i32 %num.05.i1284, 1
  %cmp1.i1287 = icmp slt i32 %inc.i1285, 32
  %not.cmp.i1288 = icmp ule i32 %shl.i1286, %add676
  %.cmp1.i1289 = and i1 %cmp1.i1287, %not.cmp.i1288
  br i1 %.cmp1.i1289, label %while.body.i1290, label %sizeofint.exit1292

sizeofint.exit1292:                               ; preds = %while.body.i1290, %sizeofint.exit1281
  %num_of_bits.0.lcssa.i1291 = phi i32 [ 0, %sizeofint.exit1281 ], [ %inc.i1285, %while.body.i1290 ]
  %not.cmp4.i1293 = icmp eq i32 %add681, 0
  br i1 %not.cmp4.i1293, label %if.end703, label %while.body.i1301

while.body.i1301:                                 ; preds = %sizeofint.exit1292, %while.body.i1301
  %num_of_bits.06.i1294 = phi i32 [ %inc.i1296, %while.body.i1301 ], [ 0, %sizeofint.exit1292 ]
  %num.05.i1295 = phi i32 [ %shl.i1297, %while.body.i1301 ], [ 1, %sizeofint.exit1292 ]
  %inc.i1296 = add nsw i32 %num_of_bits.06.i1294, 1
  %shl.i1297 = shl i32 %num.05.i1295, 1
  %cmp1.i1298 = icmp slt i32 %inc.i1296, 32
  %not.cmp.i1299 = icmp ule i32 %shl.i1297, %add681
  %.cmp1.i1300 = and i1 %cmp1.i1298, %not.cmp.i1299
  br i1 %.cmp1.i1300, label %while.body.i1301, label %if.end703

if.else700:                                       ; preds = %if.end652
  %call702 = call fastcc i32 @sizeofints(i32* %arrayidx672) #8
  br label %if.end703

if.end703:                                        ; preds = %while.body.i1301, %sizeofint.exit1292, %if.else700
  %bitsizeint.sroa.2.1 = phi i32 [ undef, %if.else700 ], [ 0, %sizeofint.exit1292 ], [ %inc.i1296, %while.body.i1301 ]
  %bitsizeint.sroa.1.1 = phi i32 [ undef, %if.else700 ], [ %num_of_bits.0.lcssa.i1291, %sizeofint.exit1292 ], [ %num_of_bits.0.lcssa.i1291, %while.body.i1301 ]
  %bitsizeint.sroa.0.1 = phi i32 [ undef, %if.else700 ], [ %num_of_bits.0.lcssa.i1280, %sizeofint.exit1292 ], [ %num_of_bits.0.lcssa.i1280, %while.body.i1301 ]
  %bitsize.1 = phi i32 [ %call702, %if.else700 ], [ 0, %sizeofint.exit1292 ], [ 0, %while.body.i1301 ]
  %call704 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %smallidx) #5
  %cmp705 = icmp eq i32 %call704, 0
  br i1 %cmp705, label %cleanup, label %if.end708

if.end708:                                        ; preds = %if.end703
  %156 = load i32* %smallidx, align 4, !tbaa !3
  %cmp722 = icmp slt i32 %156, 10
  br i1 %cmp722, label %cond.end727, label %cond.false725

cond.false725:                                    ; preds = %if.end708
  %sub721 = add nsw i32 %156, -1
  %phitmp = sext i32 %sub721 to i64
  br label %cond.end727

cond.end727:                                      ; preds = %if.end708, %cond.false725
  %cond728 = phi i64 [ %phitmp, %cond.false725 ], [ 9, %if.end708 ]
  %arrayidx730 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %cond728
  %157 = load i32* %arrayidx730, align 4, !tbaa !3
  %div731 = sdiv i32 %157, 2
  %idxprom732 = sext i32 %156 to i64
  %arrayidx733 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom732
  %158 = load i32* %arrayidx733, align 4, !tbaa !3
  %div734 = sdiv i32 %158, 2
  %arrayidx737 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 2
  store i32 %158, i32* %arrayidx737, align 4, !tbaa !3
  %arrayidx738 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 1
  store i32 %158, i32* %arrayidx738, align 4, !tbaa !3
  %arrayidx739 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 0
  store i32 %158, i32* %arrayidx739, align 4, !tbaa !3
  %159 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %call743 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %159) #5
  %cmp744 = icmp eq i32 %call743, 0
  br i1 %cmp744, label %cleanup, label %if.end747

if.end747:                                        ; preds = %cond.end727
  %160 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %arrayidx748 = getelementptr inbounds i32* %160, i64 3
  %161 = bitcast i32* %arrayidx748 to i8*
  %162 = load i32* %160, align 4, !tbaa !3
  %call750 = call i32 @xdr_opaque(%struct.XDR* %xdrs, i8* %161, i32 %162) #5
  %cmp751 = icmp eq i32 %call750, 0
  br i1 %cmp751, label %cleanup, label %if.end754

if.end754:                                        ; preds = %if.end747
  %163 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %arrayidx755 = getelementptr inbounds i32* %163, i64 2
  store i32 0, i32* %arrayidx755, align 4, !tbaa !3
  %arrayidx756 = getelementptr inbounds i32* %163, i64 1
  store i32 0, i32* %arrayidx756, align 4, !tbaa !3
  store i32 0, i32* %163, align 4, !tbaa !3
  %164 = load float* %precision, align 4, !tbaa !4
  %conv760 = fdiv float 1.000000e+00, %164
  %165 = load i32** @xdr3dfcoord.ip, align 8, !tbaa !0
  %166 = load i32* %lsize, align 4, !tbaa !3
  %cmp7621316 = icmp sgt i32 %166, 0
  br i1 %cmp7621316, label %while.body764.lr.ph, label %cleanup

while.body764.lr.ph:                              ; preds = %if.end754
  %cmp768 = icmp eq i32 %bitsize.1, 0
  br label %while.body764

while.body764:                                    ; preds = %if.end913.while.body764_crit_edge, %while.body764.lr.ph
  %167 = phi i32* [ %163, %while.body764.lr.ph ], [ %.pre1369, %if.end913.while.body764_crit_edge ]
  %div734.pn = phi i32 [ %div734, %while.body764.lr.ph ], [ %smallnum.3, %if.end913.while.body764_crit_edge ]
  %lfp.11321 = phi float* [ %fp, %while.body764.lr.ph ], [ %lfp.4, %if.end913.while.body764_crit_edge ]
  %run.11320 = phi i32 [ 0, %while.body764.lr.ph ], [ %run.2, %if.end913.while.body764_crit_edge ]
  %i.21319 = phi i32 [ 0, %while.body764.lr.ph ], [ %i.4, %if.end913.while.body764_crit_edge ]
  %smaller.21318 = phi i32 [ %div731, %while.body764.lr.ph ], [ %smaller.3, %if.end913.while.body764_crit_edge ]
  %mul765 = mul nsw i32 %i.21319, 3
  %idx.ext766 = sext i32 %mul765 to i64
  %add.ptr767 = getelementptr inbounds i32* %165, i64 %idx.ext766
  br i1 %cmp768, label %if.then770, label %if.else780

if.then770:                                       ; preds = %while.body764
  %call772 = call fastcc i32 @receivebits(i32* %167, i32 %bitsizeint.sroa.0.1) #8
  store i32 %call772, i32* %add.ptr767, align 4, !tbaa !3
  %168 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %call775 = call fastcc i32 @receivebits(i32* %168, i32 %bitsizeint.sroa.1.1) #8
  %add.ptr767.sum1207 = add i64 %idx.ext766, 1
  %arrayidx776 = getelementptr inbounds i32* %165, i64 %add.ptr767.sum1207
  store i32 %call775, i32* %arrayidx776, align 4, !tbaa !3
  %169 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %call778 = call fastcc i32 @receivebits(i32* %169, i32 %bitsizeint.sroa.2.1) #8
  %add.ptr767.sum1208 = add i64 %idx.ext766, 2
  %arrayidx779 = getelementptr inbounds i32* %165, i64 %add.ptr767.sum1208
  store i32 %call778, i32* %arrayidx779, align 4, !tbaa !3
  br label %if.end782

if.else780:                                       ; preds = %while.body764
  call fastcc void @receiveints(i32* %167, i32 %bitsize.1, i32* %arrayidx672, i32* %add.ptr767) #8
  %add.ptr767.sum.pre = add i64 %idx.ext766, 1
  %arrayidx788.pre = getelementptr inbounds i32* %165, i64 %add.ptr767.sum.pre
  %add.ptr767.sum1204.pre = add i64 %idx.ext766, 2
  %arrayidx791.pre = getelementptr inbounds i32* %165, i64 %add.ptr767.sum1204.pre
  br label %if.end782

if.end782:                                        ; preds = %if.else780, %if.then770
  %arrayidx791.pre-phi = phi i32* [ %arrayidx791.pre, %if.else780 ], [ %arrayidx779, %if.then770 ]
  %arrayidx788.pre-phi = phi i32* [ %arrayidx788.pre, %if.else780 ], [ %arrayidx776, %if.then770 ]
  %inc783 = add nsw i32 %i.21319, 1
  %170 = load i32* %arrayidx656, align 4, !tbaa !3
  %171 = load i32* %add.ptr767, align 4, !tbaa !3
  %add786 = add nsw i32 %171, %170
  store i32 %add786, i32* %add.ptr767, align 4, !tbaa !3
  %172 = load i32* %arrayidx658, align 4, !tbaa !3
  %173 = load i32* %arrayidx788.pre-phi, align 4, !tbaa !3
  %add789 = add nsw i32 %173, %172
  store i32 %add789, i32* %arrayidx788.pre-phi, align 4, !tbaa !3
  %174 = load i32* %arrayidx660, align 4, !tbaa !3
  %175 = load i32* %arrayidx791.pre-phi, align 4, !tbaa !3
  %add792 = add nsw i32 %175, %174
  store i32 %add792, i32* %arrayidx791.pre-phi, align 4, !tbaa !3
  %176 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %call799 = call fastcc i32 @receivebits(i32* %176, i32 1) #8
  %cmp800 = icmp eq i32 %call799, 1
  br i1 %cmp800, label %if.then802, label %if.end805

if.then802:                                       ; preds = %if.end782
  %177 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %call803 = call fastcc i32 @receivebits(i32* %177, i32 5) #8
  %rem = srem i32 %call803, 3
  %sub804 = sub nsw i32 %call803, %rem
  %dec = add nsw i32 %rem, -1
  br label %if.end805

if.end805:                                        ; preds = %if.then802, %if.end782
  %is_smaller.3 = phi i32 [ %dec, %if.then802 ], [ 0, %if.end782 ]
  %run.2 = phi i32 [ %sub804, %if.then802 ], [ %run.11320, %if.end782 ]
  %cmp806 = icmp sgt i32 %run.2, 0
  br i1 %cmp806, label %for.body813.lr.ph, label %if.else878

for.body813.lr.ph:                                ; preds = %if.end805
  %add.ptr767.sum1205 = add i64 %idx.ext766, 3
  %add.ptr809 = getelementptr inbounds i32* %165, i64 %add.ptr767.sum1205
  %add.ptr809.sum = add i64 %idx.ext766, 4
  %arrayidx822 = getelementptr inbounds i32* %165, i64 %add.ptr809.sum
  %add.ptr809.sum1206 = add i64 %idx.ext766, 5
  %arrayidx826 = getelementptr inbounds i32* %165, i64 %add.ptr809.sum1206
  br label %for.body813

for.body813:                                      ; preds = %for.body813.lr.ph, %if.end862
  %prevcoord.sroa.0.21313 = phi i32 [ %add786, %for.body813.lr.ph ], [ %add819, %if.end862 ]
  %prevcoord.sroa.1.21312 = phi i32 [ %add789, %for.body813.lr.ph ], [ %add823, %if.end862 ]
  %prevcoord.sroa.2.21311 = phi i32 [ %add792, %for.body813.lr.ph ], [ %add827, %if.end862 ]
  %lfp.21310 = phi float* [ %lfp.11321, %for.body813.lr.ph ], [ %incdec.ptr874, %if.end862 ]
  %i.31309 = phi i32 [ %inc783, %for.body813.lr.ph ], [ %inc815, %if.end862 ]
  %k.11308 = phi i32 [ 0, %for.body813.lr.ph ], [ %add876, %if.end862 ]
  %178 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  %179 = load i32* %smallidx, align 4, !tbaa !3
  call fastcc void @receiveints(i32* %178, i32 %179, i32* %arrayidx739, i32* %add.ptr809) #8
  %inc815 = add nsw i32 %i.31309, 1
  %sub817 = sub i32 %prevcoord.sroa.0.21313, %div734.pn
  %180 = load i32* %add.ptr809, align 4, !tbaa !3
  %add819 = add nsw i32 %sub817, %180
  store i32 %add819, i32* %add.ptr809, align 4, !tbaa !3
  %sub821 = sub i32 %prevcoord.sroa.1.21312, %div734.pn
  %181 = load i32* %arrayidx822, align 4, !tbaa !3
  %add823 = add nsw i32 %sub821, %181
  store i32 %add823, i32* %arrayidx822, align 4, !tbaa !3
  %sub825 = sub nsw i32 %prevcoord.sroa.2.21311, %div734.pn
  %182 = load i32* %arrayidx826, align 4, !tbaa !3
  %add827 = add nsw i32 %182, %sub825
  store i32 %add827, i32* %arrayidx826, align 4, !tbaa !3
  %cmp828 = icmp eq i32 %k.11308, 0
  br i1 %cmp828, label %if.then830, label %if.end862

if.then830:                                       ; preds = %for.body813
  store i32 %prevcoord.sroa.0.21313, i32* %add.ptr809, align 4, !tbaa !3
  store i32 %prevcoord.sroa.1.21312, i32* %arrayidx822, align 4, !tbaa !3
  store i32 %prevcoord.sroa.2.21311, i32* %arrayidx826, align 4, !tbaa !3
  %conv844 = sitofp i32 %add819 to float
  %mul845 = fmul float %conv760, %conv844
  %incdec.ptr846 = getelementptr inbounds float* %lfp.21310, i64 1
  store float %mul845, float* %lfp.21310, align 4, !tbaa !4
  %conv848 = sitofp i32 %add823 to float
  %mul849 = fmul float %conv760, %conv848
  %incdec.ptr850 = getelementptr inbounds float* %lfp.21310, i64 2
  store float %mul849, float* %incdec.ptr846, align 4, !tbaa !4
  %conv852 = sitofp i32 %add827 to float
  %mul853 = fmul float %conv760, %conv852
  %incdec.ptr854 = getelementptr inbounds float* %lfp.21310, i64 3
  store float %mul853, float* %incdec.ptr850, align 4, !tbaa !4
  br label %if.end862

if.end862:                                        ; preds = %for.body813, %if.then830
  %183 = phi i32 [ %prevcoord.sroa.2.21311, %if.then830 ], [ %add827, %for.body813 ]
  %184 = phi i32 [ %prevcoord.sroa.1.21312, %if.then830 ], [ %add823, %for.body813 ]
  %185 = phi i32 [ %prevcoord.sroa.0.21313, %if.then830 ], [ %add819, %for.body813 ]
  %lfp.3 = phi float* [ %incdec.ptr854, %if.then830 ], [ %lfp.21310, %for.body813 ]
  %conv864 = sitofp i32 %185 to float
  %mul865 = fmul float %conv760, %conv864
  %incdec.ptr866 = getelementptr inbounds float* %lfp.3, i64 1
  store float %mul865, float* %lfp.3, align 4, !tbaa !4
  %conv868 = sitofp i32 %184 to float
  %mul869 = fmul float %conv760, %conv868
  %incdec.ptr870 = getelementptr inbounds float* %lfp.3, i64 2
  store float %mul869, float* %incdec.ptr866, align 4, !tbaa !4
  %conv872 = sitofp i32 %183 to float
  %mul873 = fmul float %conv760, %conv872
  %incdec.ptr874 = getelementptr inbounds float* %lfp.3, i64 3
  store float %mul873, float* %incdec.ptr870, align 4, !tbaa !4
  %add876 = add nsw i32 %k.11308, 3
  %cmp811 = icmp slt i32 %add876, %run.2
  br i1 %cmp811, label %for.body813, label %if.end891

if.else878:                                       ; preds = %if.end805
  %186 = load i32* %add.ptr767, align 4, !tbaa !3
  %conv880 = sitofp i32 %186 to float
  %mul881 = fmul float %conv760, %conv880
  %incdec.ptr882 = getelementptr inbounds float* %lfp.11321, i64 1
  store float %mul881, float* %lfp.11321, align 4, !tbaa !4
  %187 = load i32* %arrayidx788.pre-phi, align 4, !tbaa !3
  %conv884 = sitofp i32 %187 to float
  %mul885 = fmul float %conv760, %conv884
  %incdec.ptr886 = getelementptr inbounds float* %lfp.11321, i64 2
  store float %mul885, float* %incdec.ptr882, align 4, !tbaa !4
  %188 = load i32* %arrayidx791.pre-phi, align 4, !tbaa !3
  %conv888 = sitofp i32 %188 to float
  %mul889 = fmul float %conv760, %conv888
  %incdec.ptr890 = getelementptr inbounds float* %lfp.11321, i64 3
  store float %mul889, float* %incdec.ptr886, align 4, !tbaa !4
  br label %if.end891

if.end891:                                        ; preds = %if.end862, %if.else878
  %i.4 = phi i32 [ %inc783, %if.else878 ], [ %inc815, %if.end862 ]
  %lfp.4 = phi float* [ %incdec.ptr890, %if.else878 ], [ %incdec.ptr874, %if.end862 ]
  %189 = load i32* %smallidx, align 4, !tbaa !3
  %add892 = add nsw i32 %189, %is_smaller.3
  store i32 %add892, i32* %smallidx, align 4, !tbaa !3
  %cmp893 = icmp slt i32 %is_smaller.3, 0
  br i1 %cmp893, label %if.then895, label %if.else905

if.then895:                                       ; preds = %if.end891
  %cmp896 = icmp sgt i32 %add892, 9
  br i1 %cmp896, label %if.then898, label %if.end913

if.then898:                                       ; preds = %if.then895
  %sub899 = add nsw i32 %add892, -1
  %idxprom900 = sext i32 %sub899 to i64
  %arrayidx901 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom900
  %190 = load i32* %arrayidx901, align 4, !tbaa !3
  %div902 = sdiv i32 %190, 2
  br label %if.end913

if.else905:                                       ; preds = %if.end891
  %cmp906 = icmp sgt i32 %is_smaller.3, 0
  br i1 %cmp906, label %if.then908, label %if.end913

if.then908:                                       ; preds = %if.else905
  %idxprom909 = sext i32 %add892 to i64
  %arrayidx910 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom909
  %191 = load i32* %arrayidx910, align 4, !tbaa !3
  %div911 = sdiv i32 %191, 2
  br label %if.end913

if.end913:                                        ; preds = %if.else905, %if.then895, %if.then908, %if.then898
  %smallnum.3 = phi i32 [ %smaller.21318, %if.then898 ], [ %div911, %if.then908 ], [ %smaller.21318, %if.then895 ], [ %div734.pn, %if.else905 ]
  %smaller.3 = phi i32 [ %div902, %if.then898 ], [ %div734.pn, %if.then908 ], [ 0, %if.then895 ], [ %smaller.21318, %if.else905 ]
  %idxprom914 = sext i32 %add892 to i64
  %arrayidx915 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %idxprom914
  %192 = load i32* %arrayidx915, align 4, !tbaa !3
  store i32 %192, i32* %arrayidx737, align 4, !tbaa !3
  store i32 %192, i32* %arrayidx738, align 4, !tbaa !3
  store i32 %192, i32* %arrayidx739, align 4, !tbaa !3
  %193 = load i32* %lsize, align 4, !tbaa !3
  %cmp762 = icmp slt i32 %i.4, %193
  br i1 %cmp762, label %if.end913.while.body764_crit_edge, label %cleanup

if.end913.while.body764_crit_edge:                ; preds = %if.end913
  %.pre1369 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !0
  br label %while.body764

cleanup:                                          ; preds = %if.end754, %if.end913, %if.end747, %cond.end727, %if.end703, %if.else585, %if.then20, %if.then602, %if.end578, %if.then28
  %retval.0 = phi i32 [ %call29, %if.then28 ], [ %mul584, %if.end578 ], [ %call603, %if.then602 ], [ 0, %if.then20 ], [ 0, %if.else585 ], [ 0, %if.end703 ], [ 0, %cond.end727 ], [ 0, %if.end747 ], [ 1, %if.end913 ], [ 1, %if.end754 ]
  call void @llvm.lifetime.end(i64 120, i8* %0) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @xdr_int(%struct.XDR*, i32*) #1

; Function Attrs: nounwind optsize
declare i32 @xdr_vector(%struct.XDR*, i8*, i32, i32, i32 (%struct.XDR*, i8*, ...)*) #1

; Function Attrs: nounwind optsize
declare i32 @xdr_float(%struct.XDR*, float*) #1

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #1

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @sizeofints(i32* nocapture %sizes) #4 {
entry:
  %bytes = alloca [32 x i32], align 16
  %0 = bitcast [32 x i32]* %bytes to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #3
  %arrayidx = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 0
  store i32 1, i32* %arrayidx, align 16, !tbaa !3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %while.end, %entry
  %indvars.iv15 = phi i64 [ 0, %entry ], [ %indvars.iv.next16, %while.end ]
  %num_of_bytes.013 = phi i32 [ 1, %entry ], [ %bytecnt.1.lcssa, %while.end ]
  %cmp24 = icmp eq i32 %num_of_bytes.013, 0
  br i1 %cmp24, label %while.end, label %for.body3.lr.ph

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %arrayidx6 = getelementptr inbounds i32* %sizes, i64 %indvars.iv15
  %1 = load i32* %arrayidx6, align 4, !tbaa !3
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body3.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next, %for.body3 ]
  %tmp.06 = phi i32 [ 0, %for.body3.lr.ph ], [ %shr, %for.body3 ]
  %arrayidx4 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv
  %2 = load i32* %arrayidx4, align 4, !tbaa !3
  %mul = mul i32 %1, %2
  %add = add i32 %mul, %tmp.06
  %and = and i32 %add, 255
  store i32 %and, i32* %arrayidx4, align 4, !tbaa !3
  %shr = lshr i32 %add, 8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %num_of_bytes.013
  br i1 %exitcond, label %while.cond.loopexit, label %for.body3

while.cond.loopexit:                              ; preds = %for.body3
  %cmp99 = icmp eq i32 %shr, 0
  br i1 %cmp99, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.loopexit, %while.body
  %tmp.111 = phi i32 [ %shr14, %while.body ], [ %shr, %while.cond.loopexit ]
  %bytecnt.110 = phi i32 [ %inc11, %while.body ], [ %num_of_bytes.013, %while.cond.loopexit ]
  %and10 = and i32 %tmp.111, 255
  %inc11 = add i32 %bytecnt.110, 1
  %idxprom12 = zext i32 %bytecnt.110 to i64
  %arrayidx13 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %idxprom12
  store i32 %and10, i32* %arrayidx13, align 4, !tbaa !3
  %shr14 = lshr i32 %tmp.111, 8
  %cmp9 = icmp eq i32 %shr14, 0
  br i1 %cmp9, label %while.end, label %while.body

while.end:                                        ; preds = %for.cond1.preheader, %while.body, %while.cond.loopexit
  %bytecnt.1.lcssa = phi i32 [ %num_of_bytes.013, %while.cond.loopexit ], [ %inc11, %while.body ], [ 0, %for.cond1.preheader ]
  %indvars.iv.next16 = add i64 %indvars.iv15, 1
  %lftr.wideiv17 = trunc i64 %indvars.iv.next16 to i32
  %exitcond18 = icmp eq i32 %lftr.wideiv17, 3
  br i1 %exitcond18, label %for.end17, label %for.cond1.preheader

for.end17:                                        ; preds = %while.end
  %dec = add i32 %bytecnt.1.lcssa, -1
  %idxprom19 = zext i32 %dec to i64
  %arrayidx20 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %idxprom19
  %3 = load i32* %arrayidx20, align 4, !tbaa !3
  %cmp211 = icmp eq i32 %3, 0
  br i1 %cmp211, label %while.end25, label %while.body22

while.body22:                                     ; preds = %for.end17, %while.body22
  %num_of_bits.03 = phi i32 [ %inc23, %while.body22 ], [ 0, %for.end17 ]
  %num.02 = phi i32 [ %mul24, %while.body22 ], [ 1, %for.end17 ]
  %inc23 = add i32 %num_of_bits.03, 1
  %mul24 = shl nsw i32 %num.02, 1
  %cmp21 = icmp ult i32 %3, %mul24
  br i1 %cmp21, label %while.end25, label %while.body22

while.end25:                                      ; preds = %while.body22, %for.end17
  %num_of_bits.0.lcssa = phi i32 [ 0, %for.end17 ], [ %inc23, %while.body22 ]
  %mul26 = shl i32 %dec, 3
  %add27 = add i32 %num_of_bits.0.lcssa, %mul26
  call void @llvm.lifetime.end(i64 128, i8* %0) #3
  ret i32 %add27
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @sendbits(i32* nocapture %buf, i32 %num_of_bits, i32 %num) #0 {
entry:
  %add.ptr61 = getelementptr inbounds i32* %buf, i64 3
  %add.ptr = bitcast i32* %add.ptr61 to i8*
  %0 = load i32* %buf, align 4, !tbaa !3
  %arrayidx1 = getelementptr inbounds i32* %buf, i64 1
  %1 = load i32* %arrayidx1, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds i32* %buf, i64 2
  %2 = load i32* %arrayidx2, align 4, !tbaa !3
  %cmp62 = icmp sgt i32 %num_of_bits, 7
  br i1 %cmp62, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %3 = add i32 %num_of_bits, -8
  %4 = lshr i32 %3, 3
  %5 = add i32 %0, %4
  %6 = shl nuw i32 %4, 3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %num_of_bits.addr.065 = phi i32 [ %num_of_bits, %while.body.lr.ph ], [ %sub, %while.body ]
  %lastbyte.064 = phi i32 [ %2, %while.body.lr.ph ], [ %or, %while.body ]
  %cnt.063 = phi i32 [ %0, %while.body.lr.ph ], [ %inc, %while.body ]
  %shl = shl i32 %lastbyte.064, 8
  %sub = add nsw i32 %num_of_bits.addr.065, -8
  %shr = ashr i32 %num, %sub
  %or = or i32 %shr, %shl
  %shr3 = lshr i32 %or, %1
  %conv = trunc i32 %shr3 to i8
  %inc = add i32 %cnt.063, 1
  %idxprom = zext i32 %cnt.063 to i64
  %arrayidx4 = getelementptr inbounds i8* %add.ptr, i64 %idxprom
  store i8 %conv, i8* %arrayidx4, align 1, !tbaa !1
  %cmp = icmp sgt i32 %sub, 7
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %7 = add i32 %5, 1
  %8 = sub i32 %3, %6
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %num_of_bits.addr.0.lcssa = phi i32 [ %8, %while.cond.while.end_crit_edge ], [ %num_of_bits, %entry ]
  %lastbyte.0.lcssa = phi i32 [ %or, %while.cond.while.end_crit_edge ], [ %2, %entry ]
  %cnt.0.lcssa = phi i32 [ %7, %while.cond.while.end_crit_edge ], [ %0, %entry ]
  %cmp6 = icmp sgt i32 %num_of_bits.addr.0.lcssa, 0
  br i1 %cmp6, label %if.then, label %if.end19

if.then:                                          ; preds = %while.end
  %shl8 = shl i32 %lastbyte.0.lcssa, %num_of_bits.addr.0.lcssa
  %or9 = or i32 %shl8, %num
  %add = add nsw i32 %num_of_bits.addr.0.lcssa, %1
  %cmp10 = icmp sgt i32 %add, 7
  br i1 %cmp10, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.then
  %sub13 = add nsw i32 %add, -8
  %shr14 = lshr i32 %or9, %sub13
  %conv15 = trunc i32 %shr14 to i8
  %inc16 = add i32 %cnt.0.lcssa, 1
  %idxprom17 = zext i32 %cnt.0.lcssa to i64
  %arrayidx18 = getelementptr inbounds i8* %add.ptr, i64 %idxprom17
  store i8 %conv15, i8* %arrayidx18, align 1, !tbaa !1
  br label %if.end19

if.end19:                                         ; preds = %if.then, %if.then12, %while.end
  %cnt.1 = phi i32 [ %inc16, %if.then12 ], [ %cnt.0.lcssa, %if.then ], [ %cnt.0.lcssa, %while.end ]
  %lastbyte.1 = phi i32 [ %or9, %if.then12 ], [ %or9, %if.then ], [ %lastbyte.0.lcssa, %while.end ]
  %lastbits.0 = phi i32 [ %sub13, %if.then12 ], [ %add, %if.then ], [ %1, %while.end ]
  store i32 %cnt.1, i32* %buf, align 4, !tbaa !3
  store i32 %lastbits.0, i32* %arrayidx1, align 4, !tbaa !3
  store i32 %lastbyte.1, i32* %arrayidx2, align 4, !tbaa !3
  %cmp23 = icmp sgt i32 %lastbits.0, 0
  br i1 %cmp23, label %if.then25, label %if.end31

if.then25:                                        ; preds = %if.end19
  %sub26 = sub nsw i32 8, %lastbits.0
  %shl27 = shl i32 %lastbyte.1, %sub26
  %conv28 = trunc i32 %shl27 to i8
  %idxprom29 = zext i32 %cnt.1 to i64
  %arrayidx30 = getelementptr inbounds i8* %add.ptr, i64 %idxprom29
  store i8 %conv28, i8* %arrayidx30, align 1, !tbaa !1
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %if.end19
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @sendints(i32* nocapture %buf, i32 %num_of_bits, i32* nocapture %sizes, i32* nocapture %nums) #0 {
entry:
  %bytes = alloca [32 x i32], align 16
  %0 = bitcast [32 x i32]* %bytes to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #3
  %1 = load i32* %nums, align 4, !tbaa !3
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %num_of_bytes.0 = phi i32 [ 0, %entry ], [ %inc, %do.body ]
  %tmp.0 = phi i32 [ %1, %entry ], [ %shr, %do.body ]
  %and = and i32 %tmp.0, 255
  %inc = add i32 %num_of_bytes.0, 1
  %idxprom = zext i32 %num_of_bytes.0 to i64
  %arrayidx1 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %idxprom
  store i32 %and, i32* %arrayidx1, align 4, !tbaa !3
  %shr = lshr i32 %tmp.0, 8
  %cmp = icmp eq i32 %shr, 0
  br i1 %cmp, label %for.body, label %do.body

for.body:                                         ; preds = %do.body, %while.end
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %while.end ], [ 1, %do.body ]
  %num_of_bytes.118 = phi i32 [ %bytecnt.1.lcssa, %while.end ], [ %inc, %do.body ]
  %arrayidx4 = getelementptr inbounds i32* %nums, i64 %indvars.iv30
  %2 = load i32* %arrayidx4, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds i32* %sizes, i64 %indvars.iv30
  %3 = load i32* %arrayidx6, align 4, !tbaa !3
  %cmp7 = icmp ult i32 %2, %3
  br i1 %cmp7, label %for.cond14.preheader, label %if.then

for.cond14.preheader:                             ; preds = %for.body
  %cmp156 = icmp eq i32 %num_of_bytes.118, 0
  br i1 %cmp156, label %while.cond.loopexit, label %for.body16

if.then:                                          ; preds = %for.body
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), i32 %2, i32 %3) #5
  call void @exit(i32 1) #6
  unreachable

for.body16:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.body16 ], [ 0, %for.cond14.preheader ]
  %tmp.18 = phi i32 [ %shr24, %for.body16 ], [ %2, %for.cond14.preheader ]
  %arrayidx18 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv23
  %5 = load i32* %arrayidx18, align 4, !tbaa !3
  %mul = mul i32 %3, %5
  %add = add i32 %mul, %tmp.18
  %and21 = and i32 %add, 255
  store i32 %and21, i32* %arrayidx18, align 4, !tbaa !3
  %shr24 = lshr i32 %add, 8
  %indvars.iv.next24 = add i64 %indvars.iv23, 1
  %lftr.wideiv25 = trunc i64 %indvars.iv.next24 to i32
  %exitcond26 = icmp eq i32 %lftr.wideiv25, %num_of_bytes.118
  br i1 %exitcond26, label %while.cond.loopexit, label %for.body16

while.cond.loopexit:                              ; preds = %for.body16, %for.cond14.preheader
  %tmp.1.lcssa = phi i32 [ %2, %for.cond14.preheader ], [ %shr24, %for.body16 ]
  %bytecnt.0.lcssa = phi i32 [ 0, %for.cond14.preheader ], [ %num_of_bytes.118, %for.body16 ]
  %cmp2611 = icmp eq i32 %tmp.1.lcssa, 0
  br i1 %cmp2611, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.loopexit, %while.body
  %tmp.213 = phi i32 [ %shr31, %while.body ], [ %tmp.1.lcssa, %while.cond.loopexit ]
  %bytecnt.112 = phi i32 [ %inc28, %while.body ], [ %bytecnt.0.lcssa, %while.cond.loopexit ]
  %and27 = and i32 %tmp.213, 255
  %inc28 = add i32 %bytecnt.112, 1
  %idxprom29 = zext i32 %bytecnt.112 to i64
  %arrayidx30 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %idxprom29
  store i32 %and27, i32* %arrayidx30, align 4, !tbaa !3
  %shr31 = lshr i32 %tmp.213, 8
  %cmp26 = icmp eq i32 %shr31, 0
  br i1 %cmp26, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %while.cond.loopexit
  %bytecnt.1.lcssa = phi i32 [ %bytecnt.0.lcssa, %while.cond.loopexit ], [ %inc28, %while.body ]
  %indvars.iv.next31 = add i64 %indvars.iv30, 1
  %6 = trunc i64 %indvars.iv.next31 to i32
  %cmp2 = icmp slt i32 %6, 3
  br i1 %cmp2, label %for.body, label %for.end34

for.end34:                                        ; preds = %while.end
  %mul35 = shl i32 %bytecnt.1.lcssa, 3
  %cmp36 = icmp ugt i32 %mul35, %num_of_bits
  br i1 %cmp36, label %for.cond47.preheader, label %for.cond38.preheader

for.cond38.preheader:                             ; preds = %for.end34
  %cmp394 = icmp eq i32 %bytecnt.1.lcssa, 0
  br i1 %cmp394, label %for.end45, label %for.body40

for.cond47.preheader:                             ; preds = %for.end34
  %sub48 = add i32 %bytecnt.1.lcssa, -1
  %cmp491 = icmp eq i32 %sub48, 0
  br i1 %cmp491, label %for.end55, label %for.body50

for.body40:                                       ; preds = %for.cond38.preheader, %for.body40
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.body40 ], [ 0, %for.cond38.preheader ]
  %arrayidx42 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv19
  %7 = load i32* %arrayidx42, align 4, !tbaa !3
  call fastcc void @sendbits(i32* %buf, i32 8, i32 %7) #8
  %indvars.iv.next20 = add i64 %indvars.iv19, 1
  %lftr.wideiv21 = trunc i64 %indvars.iv.next20 to i32
  %exitcond22 = icmp eq i32 %lftr.wideiv21, %bytecnt.1.lcssa
  br i1 %exitcond22, label %for.end45, label %for.body40

for.end45:                                        ; preds = %for.body40, %for.cond38.preheader
  %sub = sub i32 %num_of_bits, %mul35
  call fastcc void @sendbits(i32* %buf, i32 %sub, i32 0) #8
  br label %if.end61

for.body50:                                       ; preds = %for.cond47.preheader, %for.body50
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body50 ], [ 0, %for.cond47.preheader ]
  %arrayidx52 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv
  %8 = load i32* %arrayidx52, align 4, !tbaa !3
  call fastcc void @sendbits(i32* %buf, i32 8, i32 %8) #8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %sub48
  br i1 %exitcond, label %for.cond47.for.end55_crit_edge, label %for.body50

for.cond47.for.end55_crit_edge:                   ; preds = %for.body50
  %phitmp = sext i32 %sub48 to i64
  br label %for.end55

for.end55:                                        ; preds = %for.cond47.preheader, %for.cond47.for.end55_crit_edge
  %i.2.lcssa = phi i64 [ %phitmp, %for.cond47.for.end55_crit_edge ], [ 0, %for.cond47.preheader ]
  %mul57 = shl i32 %sub48, 3
  %sub58 = sub i32 %num_of_bits, %mul57
  %arrayidx60 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %i.2.lcssa
  %9 = load i32* %arrayidx60, align 4, !tbaa !3
  call fastcc void @sendbits(i32* %buf, i32 %sub58, i32 %9) #8
  br label %if.end61

if.end61:                                         ; preds = %for.end55, %for.end45
  call void @llvm.lifetime.end(i64 128, i8* %0) #3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @xdr_opaque(%struct.XDR*, i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @receivebits(i32* nocapture %buf, i32 %num_of_bits) #0 {
entry:
  %shl = shl i32 1, %num_of_bits
  %sub = add nsw i32 %shl, -1
  %add.ptr58 = getelementptr inbounds i32* %buf, i64 3
  %add.ptr = bitcast i32* %add.ptr58 to i8*
  %0 = load i32* %buf, align 4, !tbaa !3
  %arrayidx1 = getelementptr inbounds i32* %buf, i64 1
  %1 = load i32* %arrayidx1, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds i32* %buf, i64 2
  %2 = load i32* %arrayidx2, align 4, !tbaa !3
  %cmp59 = icmp sgt i32 %num_of_bits, 7
  br i1 %cmp59, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %3 = sext i32 %0 to i64
  %4 = add i32 %num_of_bits, -8
  %5 = lshr i32 %4, 3
  %6 = shl nuw i32 %5, 3
  %7 = add i32 %0, %5
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv = phi i64 [ %3, %while.body.lr.ph ], [ %indvars.iv.next, %while.body ]
  %num_of_bits.addr.063 = phi i32 [ %num_of_bits, %while.body.lr.ph ], [ %sub5, %while.body ]
  %lastbyte.061 = phi i32 [ %2, %while.body.lr.ph ], [ %or, %while.body ]
  %num.060 = phi i32 [ 0, %while.body.lr.ph ], [ %or7, %while.body ]
  %shl3 = shl i32 %lastbyte.061, 8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx4 = getelementptr inbounds i8* %add.ptr, i64 %indvars.iv
  %8 = load i8* %arrayidx4, align 1, !tbaa !1
  %conv = zext i8 %8 to i32
  %or = or i32 %conv, %shl3
  %shr = lshr i32 %or, %1
  %sub5 = add nsw i32 %num_of_bits.addr.063, -8
  %shl6 = shl i32 %shr, %sub5
  %or7 = or i32 %shl6, %num.060
  %cmp = icmp sgt i32 %sub5, 7
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %9 = sub i32 %4, %6
  %10 = add i32 %7, 1
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %num_of_bits.addr.0.lcssa = phi i32 [ %9, %while.cond.while.end_crit_edge ], [ %num_of_bits, %entry ]
  %cnt.0.lcssa = phi i32 [ %10, %while.cond.while.end_crit_edge ], [ %0, %entry ]
  %lastbyte.0.lcssa = phi i32 [ %or, %while.cond.while.end_crit_edge ], [ %2, %entry ]
  %num.0.lcssa = phi i32 [ %or7, %while.cond.while.end_crit_edge ], [ 0, %entry ]
  %cmp9 = icmp sgt i32 %num_of_bits.addr.0.lcssa, 0
  br i1 %cmp9, label %if.then, label %if.end25

if.then:                                          ; preds = %while.end
  %cmp11 = icmp ult i32 %1, %num_of_bits.addr.0.lcssa
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then
  %add = add i32 %1, 8
  %shl14 = shl i32 %lastbyte.0.lcssa, 8
  %inc15 = add nsw i32 %cnt.0.lcssa, 1
  %idxprom16 = sext i32 %cnt.0.lcssa to i64
  %arrayidx17 = getelementptr inbounds i8* %add.ptr, i64 %idxprom16
  %11 = load i8* %arrayidx17, align 1, !tbaa !1
  %conv18 = zext i8 %11 to i32
  %or19 = or i32 %conv18, %shl14
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then
  %lastbits.0 = phi i32 [ %add, %if.then13 ], [ %1, %if.then ]
  %lastbyte.1 = phi i32 [ %or19, %if.then13 ], [ %lastbyte.0.lcssa, %if.then ]
  %cnt.1 = phi i32 [ %inc15, %if.then13 ], [ %cnt.0.lcssa, %if.then ]
  %sub20 = sub i32 %lastbits.0, %num_of_bits.addr.0.lcssa
  %shr21 = lshr i32 %lastbyte.1, %sub20
  %shl22 = shl i32 1, %num_of_bits.addr.0.lcssa
  %sub23 = add nsw i32 %shl22, -1
  %and = and i32 %shr21, %sub23
  %or24 = or i32 %and, %num.0.lcssa
  br label %if.end25

if.end25:                                         ; preds = %if.end, %while.end
  %num.1 = phi i32 [ %or24, %if.end ], [ %num.0.lcssa, %while.end ]
  %lastbits.1 = phi i32 [ %sub20, %if.end ], [ %1, %while.end ]
  %lastbyte.2 = phi i32 [ %lastbyte.1, %if.end ], [ %lastbyte.0.lcssa, %while.end ]
  %cnt.2 = phi i32 [ %cnt.1, %if.end ], [ %cnt.0.lcssa, %while.end ]
  %and26 = and i32 %num.1, %sub
  store i32 %cnt.2, i32* %buf, align 4, !tbaa !3
  store i32 %lastbits.1, i32* %arrayidx1, align 4, !tbaa !3
  store i32 %lastbyte.2, i32* %arrayidx2, align 4, !tbaa !3
  ret i32 %and26
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @receiveints(i32* nocapture %buf, i32 %num_of_bits, i32* nocapture %sizes, i32* nocapture %nums) #0 {
entry:
  %bytes = alloca [32 x i32], align 16
  %0 = bitcast [32 x i32]* %bytes to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #3
  %arrayidx = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 3
  store i32 0, i32* %arrayidx, align 4, !tbaa !3
  %arrayidx1 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 2
  store i32 0, i32* %arrayidx1, align 8, !tbaa !3
  %arrayidx2 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 1
  store i32 0, i32* %arrayidx2, align 4, !tbaa !3
  %cmp6 = icmp sgt i32 %num_of_bits, 8
  br i1 %cmp6, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %1 = add i32 %num_of_bits, -8
  %2 = add i32 %num_of_bits, -9
  %3 = lshr i32 %2, 3
  %4 = shl nuw i32 %3, 3
  %5 = sub i32 %1, %4
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv13 = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next14, %while.body ]
  %num_of_bits.addr.08 = phi i32 [ %num_of_bits, %while.body.lr.ph ], [ %sub, %while.body ]
  %call = call fastcc i32 @receivebits(i32* %buf, i32 8) #8
  %indvars.iv.next14 = add i64 %indvars.iv13, 1
  %arrayidx3 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv13
  store i32 %call, i32* %arrayidx3, align 4, !tbaa !3
  %sub = add nsw i32 %num_of_bits.addr.08, -8
  %cmp = icmp sgt i32 %sub, 8
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %6 = add i32 %3, 1
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %num_of_bits.addr.0.lcssa = phi i32 [ %5, %while.cond.while.end_crit_edge ], [ %num_of_bits, %entry ]
  %num_of_bytes.0.lcssa = phi i32 [ %6, %while.cond.while.end_crit_edge ], [ 0, %entry ]
  %cmp4 = icmp sgt i32 %num_of_bits.addr.0.lcssa, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call5 = call fastcc i32 @receivebits(i32* %buf, i32 %num_of_bits.addr.0.lcssa) #8
  %inc6 = add nsw i32 %num_of_bytes.0.lcssa, 1
  %idxprom7 = sext i32 %num_of_bytes.0.lcssa to i64
  %arrayidx8 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %idxprom7
  store i32 %call5, i32* %arrayidx8, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %num_of_bytes.1 = phi i32 [ %inc6, %if.then ], [ %num_of_bytes.0.lcssa, %while.end ]
  %cmp132 = icmp sgt i32 %num_of_bytes.1, 0
  %7 = sext i32 %num_of_bytes.1 to i64
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %if.end, %for.end
  %indvars.iv11 = phi i64 [ 2, %if.end ], [ %indvars.iv.next12, %for.end ]
  br i1 %cmp132, label %for.body14.lr.ph, label %for.end

for.body14.lr.ph:                                 ; preds = %for.cond12.preheader
  %arrayidx18 = getelementptr inbounds i32* %sizes, i64 %indvars.iv11
  %8 = load i32* %arrayidx18, align 4, !tbaa !3
  br label %for.body14

for.body14:                                       ; preds = %for.body14.lr.ph, %for.body14
  %indvars.iv = phi i64 [ %7, %for.body14.lr.ph ], [ %indvars.iv.next, %for.body14 ]
  %num.03 = phi i32 [ 0, %for.body14.lr.ph ], [ %sub23, %for.body14 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %shl = shl i32 %num.03, 8
  %arrayidx16 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv.next
  %9 = load i32* %arrayidx16, align 4, !tbaa !3
  %or = or i32 %9, %shl
  %div = udiv i32 %or, %8
  store i32 %div, i32* %arrayidx16, align 4, !tbaa !3
  %mul = mul i32 %8, %div
  %sub23 = sub i32 %or, %mul
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp13 = icmp sgt i32 %10, 0
  br i1 %cmp13, label %for.body14, label %for.end

for.end:                                          ; preds = %for.body14, %for.cond12.preheader
  %num.0.lcssa = phi i32 [ 0, %for.cond12.preheader ], [ %sub23, %for.body14 ]
  %arrayidx25 = getelementptr inbounds i32* %nums, i64 %indvars.iv11
  store i32 %num.0.lcssa, i32* %arrayidx25, align 4, !tbaa !3
  %indvars.iv.next12 = add i64 %indvars.iv11, -1
  %11 = trunc i64 %indvars.iv.next12 to i32
  %cmp10 = icmp sgt i32 %11, 0
  br i1 %cmp10, label %for.cond12.preheader, label %for.end28

for.end28:                                        ; preds = %for.end
  %12 = bitcast [32 x i32]* %bytes to i64*
  %13 = load i64* %12, align 16
  %14 = trunc i64 %13 to i32
  %15 = lshr i64 %13, 24
  %.tr = trunc i64 %15 to i32
  %shl31 = and i32 %.tr, -256
  %or32 = or i32 %shl31, %14
  %16 = bitcast i32* %arrayidx1 to i64*
  %17 = load i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %shl34 = shl i32 %18, 16
  %or35 = or i32 %or32, %shl34
  %19 = lshr i64 %17, 8
  %.tr17 = trunc i64 %19 to i32
  %shl37 = and i32 %.tr17, -16777216
  %or38 = or i32 %or35, %shl37
  store i32 %or38, i32* %nums, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 128, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
