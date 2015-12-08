; ModuleID = '../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spec_fd_t = type { i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@dbglvl = global i32 4, align 4
@seedi = common global i64 0, align 8
@spec_fd = common global [3 x %struct.spec_fd_t] zeroinitializer, align 16
@.str3 = private unnamed_addr constant [19 x i8] c"Creating Chunk %d\0A\00", align 1
@stderr = external global %struct._IO_FILE*
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
@.str23 = private unnamed_addr constant [15 x i8] c"input.combined\00", align 1
@.str25 = private unnamed_addr constant [31 x i8] c"Input data %d bytes in length\0A\00", align 1
@.str27 = private unnamed_addr constant [34 x i8] c"Compressing Input Data, level %d\0A\00", align 1
@.str28 = private unnamed_addr constant [36 x i8] c"Compressed data %d bytes in length\0A\00", align 1
@.str30 = private unnamed_addr constant [38 x i8] c"Uncompressed data %d bytes in length\0A\00", align 1
@.str31 = private unnamed_addr constant [35 x i8] c"Tested %dMB buffer: Miscompared!!\0A\00", align 1
@.str33 = private unnamed_addr constant [25 x i8] c"Tested %dMB buffer: OK!\0A\00", align 1
@smallMode = external global i8
@verbosity = external global i32
@blockSize100k = external global i32
@workFactor = external global i32
@str = private unnamed_addr constant [35 x i8] c"spec_init: Error mallocing memory!\00"
@str34 = private unnamed_addr constant [10 x i8] c"spec_init\00"
@str35 = private unnamed_addr constant [19 x i8] c"Filling input file\00"
@str36 = private unnamed_addr constant [16 x i8] c"Creating Chunks\00"
@str39 = private unnamed_addr constant [4 x i8] c"EOF\00"
@str40 = private unnamed_addr constant [37 x i8] c"Uncompressed data compared correctly\00"
@str41 = private unnamed_addr constant [19 x i8] c"Uncompressing Data\00"
@str42 = private unnamed_addr constant [30 x i8] c"main: Error mallocing memory!\00"
@str43 = private unnamed_addr constant [19 x i8] c"Loading Input Data\00"

; Function Attrs: nounwind optsize uwtable
define double @ran() #0 {
entry:
  %0 = load i64* @seedi, align 8, !tbaa !0
  %div = sdiv i64 %0, 127773
  %rem = srem i64 %0, 127773
  %mul = mul nsw i64 %rem, 16807
  %1 = mul i64 %div, -2836
  %sub = add i64 %mul, %1
  %cmp = icmp sgt i64 %sub, 0
  %add = add nsw i64 %sub, 2147483647
  %storemerge = select i1 %cmp, i64 %sub, i64 %add
  store i64 %storemerge, i64* @seedi, align 8, !tbaa !0
  %conv = sitofp i64 %storemerge to float
  %div2 = fmul float %conv, 0x3E00000000000000
  %conv3 = fpext float %div2 to double
  ret double %conv3
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_init() #0 {
entry:
  %0 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %if.then, label %for.body

if.then:                                          ; preds = %entry
  %puts42 = tail call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str34, i64 0, i64 0))
  br label %for.body

for.body:                                         ; preds = %entry, %if.then, %for.inc29
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.inc29 ], [ 0, %if.then ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %indvars.iv46
  %limit2 = getelementptr inbounds %struct.spec_fd_t* %arrayidx, i64 0, i32 0
  %1 = load i32* %limit2, align 8, !tbaa !3
  %2 = bitcast %struct.spec_fd_t* %arrayidx to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false)
  store i32 %1, i32* %limit2, align 8, !tbaa !3
  %add = add nsw i32 %1, 1048576
  %conv = sext i32 %add to i64
  %call8 = tail call noalias i8* @malloc(i64 %conv) #8
  %buf = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %indvars.iv46, i32 3
  store i8* %call8, i8** %buf, align 8, !tbaa !4
  %cmp14 = icmp eq i8* %call8, null
  br i1 %cmp14, label %if.then16, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.body
  %cmp2043 = icmp sgt i32 %1, 0
  br i1 %cmp2043, label %for.body22, label %for.inc29

if.then16:                                        ; preds = %for.body
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([35 x i8]* @str, i64 0, i64 0))
  tail call void @exit(i32 0) #9
  unreachable

for.body22:                                       ; preds = %for.cond19.preheader, %for.body22.for.body22_crit_edge
  %3 = phi i8* [ %.pre, %for.body22.for.body22_crit_edge ], [ %call8, %for.cond19.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body22.for.body22_crit_edge ], [ 0, %for.cond19.preheader ]
  %arrayidx27 = getelementptr inbounds i8* %3, i64 %indvars.iv
  store i8 0, i8* %arrayidx27, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1024
  %4 = trunc i64 %indvars.iv.next to i32
  %cmp20 = icmp slt i32 %4, %1
  br i1 %cmp20, label %for.body22.for.body22_crit_edge, label %for.inc29

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  %.pre = load i8** %buf, align 8, !tbaa !4
  br label %for.body22

for.inc29:                                        ; preds = %for.body22, %for.cond19.preheader
  %indvars.iv.next47 = add i64 %indvars.iv46, 1
  %5 = trunc i64 %indvars.iv.next47 to i32
  %cmp1 = icmp slt i32 %5, 3
  br i1 %cmp1, label %for.body, label %for.end30

for.end30:                                        ; preds = %for.inc29
  ret i32 0
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @spec_random_load(i32 %fd) #0 {
entry:
  %random_text = alloca [32 x [131072 x i8]], align 16
  %0 = getelementptr inbounds [32 x [131072 x i8]]* %random_text, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4194304, i8* %0) #2
  %1 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp = icmp sgt i32 %1, 4
  br i1 %cmp, label %if.then, label %for.cond6.preheader

if.then:                                          ; preds = %entry
  %puts47 = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str36, i64 0, i64 0))
  br label %for.cond

for.cond:                                         ; preds = %if.then, %for.inc13
  %i.0.ph = phi i32 [ 0, %if.then ], [ %inc14, %for.inc13 ]
  %.pr = load i32* @dbglvl, align 4, !tbaa !3
  %cmp1 = icmp slt i32 %i.0.ph, 32
  br i1 %cmp1, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %cmp2 = icmp sgt i32 %.pr, 5
  br i1 %cmp2, label %if.then3, label %for.cond6.preheader

if.then3:                                         ; preds = %for.body
  %call4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str3, i64 0, i64 0), i32 %i.0.ph) #8
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %entry, %for.body, %if.then3
  %i.06567 = phi i32 [ %i.0.ph, %if.then3 ], [ %i.0.ph, %for.body ], [ 0, %entry ]
  %idxprom11 = sext i32 %i.06567 to i64
  %seedi.promoted = load i64* @seedi, align 8, !tbaa !0
  br label %for.body8

for.body8:                                        ; preds = %for.body8, %for.cond6.preheader
  %indvars.iv = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next, %for.body8 ]
  %storemerge.i59 = phi i64 [ %seedi.promoted, %for.cond6.preheader ], [ %storemerge.i, %for.body8 ]
  %div.i = sdiv i64 %storemerge.i59, 127773
  %rem.i = srem i64 %storemerge.i59, 127773
  %mul.i = mul nsw i64 %rem.i, 16807
  %2 = mul i64 %div.i, -2836
  %sub.i = add i64 %mul.i, %2
  %cmp.i = icmp sgt i64 %sub.i, 0
  %add.i = add nsw i64 %sub.i, 2147483647
  %storemerge.i = select i1 %cmp.i, i64 %sub.i, i64 %add.i
  %conv.i = sitofp i64 %storemerge.i to float
  %div2.i = fmul float %conv.i, 0x3E00000000000000
  %conv3.i = fpext float %div2.i to double
  %mul = fmul double %conv3.i, 2.560000e+02
  %conv = fptosi double %mul to i32
  %conv10 = trunc i32 %conv to i8
  %arrayidx12 = getelementptr inbounds [32 x [131072 x i8]]* %random_text, i64 0, i64 %idxprom11, i64 %indvars.iv
  store i8 %conv10, i8* %arrayidx12, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 131072
  br i1 %exitcond, label %for.inc13, label %for.body8

for.inc13:                                        ; preds = %for.body8
  store i64 %storemerge.i, i64* @seedi, align 8, !tbaa !0
  %inc14 = add nsw i32 %i.06567, 1
  br label %for.cond

for.end15:                                        ; preds = %for.cond
  %cmp16 = icmp sgt i32 %.pr, 4
  br i1 %cmp16, label %if.then18, label %for.cond21.preheader

if.then18:                                        ; preds = %for.end15
  %puts = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str35, i64 0, i64 0))
  br label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %if.then18, %for.end15
  %idxprom22 = sext i32 %fd to i64
  %limit = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom22, i32 0
  %3 = load i32* %limit, align 8, !tbaa !3
  %cmp2460 = icmp sgt i32 %3, 0
  br i1 %cmp2460, label %for.body26.lr.ph, label %for.end35

for.body26.lr.ph:                                 ; preds = %for.cond21.preheader
  %buf = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom22, i32 3
  br label %for.body26

for.body26:                                       ; preds = %for.body26, %for.body26.lr.ph
  %indvars.iv62 = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next63, %for.body26 ]
  %4 = load i8** %buf, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8* %4, i64 %indvars.iv62
  %5 = load i64* @seedi, align 8, !tbaa !0
  %div.i48 = sdiv i64 %5, 127773
  %rem.i49 = srem i64 %5, 127773
  %mul.i50 = mul nsw i64 %rem.i49, 16807
  %6 = mul i64 %div.i48, -2836
  %sub.i51 = add i64 %mul.i50, %6
  %cmp.i52 = icmp sgt i64 %sub.i51, 0
  %add.i53 = add nsw i64 %sub.i51, 2147483647
  %storemerge.i54 = select i1 %cmp.i52, i64 %sub.i51, i64 %add.i53
  store i64 %storemerge.i54, i64* @seedi, align 8, !tbaa !0
  %conv.i55 = sitofp i64 %storemerge.i54 to float
  %div2.i56 = fmul float %conv.i55, 0x3E00000000000000
  %conv3.i57 = fpext float %div2.i56 to double
  %mul30 = fmul double %conv3.i57, 3.200000e+01
  %conv31 = fptosi double %mul30 to i32
  %idxprom32 = sext i32 %conv31 to i64
  %7 = getelementptr inbounds [32 x [131072 x i8]]* %random_text, i64 0, i64 %idxprom32, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %7, i64 131072, i32 1, i1 false)
  %indvars.iv.next63 = add i64 %indvars.iv62, 131072
  %8 = load i32* %limit, align 8, !tbaa !3
  %9 = trunc i64 %indvars.iv.next63 to i32
  %cmp24 = icmp slt i32 %9, %8
  br i1 %cmp24, label %for.body26, label %for.end35

for.end35:                                        ; preds = %for.body26, %for.cond21.preheader
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom22, i32 1
  store i32 1048576, i32* %len, align 4, !tbaa !3
  call void @llvm.lifetime.end(i64 4194304, i8* %0) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @spec_load(i32 %num, i8* %filename, i32 %size) #0 {
entry:
  %call = tail call i32 (i8*, i32, ...)* @open(i8* %filename, i32 0) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call1 = tail call i32* @__errno_location() #10
  %1 = load i32* %call1, align 4, !tbaa !3
  %call2 = tail call i8* @strerror(i32 %1) #8
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([24 x i8]* @.str5, i64 0, i64 0), i8* %filename, i8* %call2) #8
  tail call void @exit(i32 0) #9
  unreachable

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %num to i64
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 1
  store i32 0, i32* %len, align 4, !tbaa !3
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2
  store i32 0, i32* %pos, align 8, !tbaa !3
  %cmp691 = icmp sgt i32 %size, 0
  br i1 %cmp691, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %buf = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end20
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %add24, %if.end20 ]
  %2 = load i8** %buf, align 8, !tbaa !4
  %idx.ext = sext i32 %i.092 to i64
  %add.ptr = getelementptr inbounds i8* %2, i64 %idx.ext
  %call9 = tail call i64 @read(i32 %call, i8* %add.ptr, i64 131072) #8
  %conv = trunc i64 %call9 to i32
  %cmp10 = icmp eq i32 %conv, 0
  br i1 %cmp10, label %for.end, label %if.end13

if.end13:                                         ; preds = %for.body
  %cmp14 = icmp slt i32 %conv, 0
  br i1 %cmp14, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end13
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call17 = tail call i32* @__errno_location() #10
  %4 = load i32* %call17, align 4, !tbaa !3
  %call18 = tail call i8* @strerror(i32 %4) #8
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([27 x i8]* @.str6, i64 0, i64 0), i8* %filename, i8* %call18) #8
  tail call void @exit(i32 0) #9
  unreachable

if.end20:                                         ; preds = %if.end13
  %5 = load i32* %len, align 4, !tbaa !3
  %add = add nsw i32 %5, %conv
  store i32 %add, i32* %len, align 4, !tbaa !3
  %add24 = add nsw i32 %conv, %i.092
  %cmp6 = icmp slt i32 %add24, %size
  br i1 %cmp6, label %for.body, label %for.end

for.end:                                          ; preds = %if.end20, %for.body, %if.end
  %call25 = tail call i32 @close(i32 %call) #8
  %6 = load i32* %len, align 4, !tbaa !3
  %cmp2990 = icmp slt i32 %6, %size
  br i1 %cmp2990, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %buf51 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end48
  %7 = phi i32 [ %6, %while.body.lr.ph ], [ %add64, %if.end48 ]
  %sub = sub nsw i32 %size, %7
  %cmp37 = icmp sgt i32 %sub, %7
  %.sub = select i1 %cmp37, i32 %7, i32 %sub
  %8 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp44 = icmp sgt i32 %8, 3
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %while.body
  %call47 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i32 %.sub) #8
  %.pre = load i32* %len, align 4, !tbaa !3
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %while.body
  %9 = phi i32 [ %.pre, %if.then46 ], [ %7, %while.body ]
  %10 = load i8** %buf51, align 8, !tbaa !4
  %idx.ext55 = sext i32 %9 to i64
  %add.ptr56 = getelementptr inbounds i8* %10, i64 %idx.ext55
  %conv60 = sext i32 %.sub to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr56, i8* %10, i64 %conv60, i32 1, i1 false)
  %11 = load i32* %len, align 4, !tbaa !3
  %add64 = add nsw i32 %11, %.sub
  store i32 %add64, i32* %len, align 4, !tbaa !3
  %cmp29 = icmp slt i32 %add64, %size
  br i1 %cmp29, label %while.body, label %while.end

while.end:                                        ; preds = %if.end48, %for.end
  ret i32 0
}

; Function Attrs: optsize
declare i32 @open(i8* nocapture, i32, ...) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i8* @strerror(i32) #1

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #5

; Function Attrs: optsize
declare i64 @read(i32, i8* nocapture, i64) #4

; Function Attrs: optsize
declare i32 @close(i32) #4

; Function Attrs: nounwind optsize uwtable
define i32 @spec_read(i32 %fd, i8* %buf, i32 %size) #0 {
entry:
  %0 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0), i32 %fd, i8* %buf, i32 %size) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i32 %fd, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([34 x i8]* @.str9, i64 0, i64 0), i32 %fd) #8
  tail call void @exit(i32 0) #9
  unreachable

if.end4:                                          ; preds = %if.end
  %idxprom = sext i32 %fd to i64
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2
  %2 = load i32* %pos, align 8, !tbaa !3
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 1
  %3 = load i32* %len, align 4, !tbaa !3
  %cmp7 = icmp slt i32 %2, %3
  br i1 %cmp7, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end4
  %4 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %4, 4
  br i1 %cmp9, label %if.then10, label %return

if.then10:                                        ; preds = %if.then8
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([4 x i8]* @str39, i64 0, i64 0))
  br label %return

if.end13:                                         ; preds = %if.end4
  %add = add nsw i32 %2, %size
  %cmp20 = icmp slt i32 %add, %3
  %sub = sub nsw i32 %3, %2
  %rc.0 = select i1 %cmp20, i32 %size, i32 %sub
  %idxprom32 = sext i32 %2 to i64
  %buf35 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3
  %5 = load i8** %buf35, align 8, !tbaa !4
  %arrayidx36 = getelementptr inbounds i8* %5, i64 %idxprom32
  %conv = sext i32 %rc.0 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %buf, i8* %arrayidx36, i64 %conv, i32 1, i1 false)
  %6 = load i32* %pos, align 8, !tbaa !3
  %add40 = add nsw i32 %6, %rc.0
  store i32 %add40, i32* %pos, align 8, !tbaa !3
  %7 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp41 = icmp sgt i32 %7, 4
  br i1 %cmp41, label %if.then43, label %return

if.then43:                                        ; preds = %if.end13
  %call44 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %rc.0) #8
  br label %return

return:                                           ; preds = %if.end13, %if.then43, %if.then8, %if.then10
  %retval.0 = phi i32 [ -1, %if.then10 ], [ -1, %if.then8 ], [ %rc.0, %if.then43 ], [ %rc.0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_fread(i8* %buf, i32 %size, i32 %num, i32 %fd) #0 {
entry:
  %0 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str12, i64 0, i64 0), i8* %buf, i32 %size, i32 %num, i32 %fd) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i32 %fd, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([35 x i8]* @.str13, i64 0, i64 0), i32 %fd) #8
  tail call void @exit(i32 0) #9
  unreachable

if.end4:                                          ; preds = %if.end
  %idxprom = sext i32 %fd to i64
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2
  %2 = load i32* %pos, align 8, !tbaa !3
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 1
  %3 = load i32* %len, align 4, !tbaa !3
  %cmp7 = icmp slt i32 %2, %3
  br i1 %cmp7, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end4
  %4 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %4, 4
  br i1 %cmp9, label %if.then10, label %return

if.then10:                                        ; preds = %if.then8
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([4 x i8]* @str39, i64 0, i64 0))
  br label %return

if.end13:                                         ; preds = %if.end4
  %mul = mul nsw i32 %num, %size
  %add = add nsw i32 %2, %mul
  %cmp20 = icmp slt i32 %add, %3
  br i1 %cmp20, label %if.end28, label %if.then21

if.then21:                                        ; preds = %if.end13
  %sub = sub nsw i32 %3, %2
  %div = sdiv i32 %sub, %size
  br label %if.end28

if.end28:                                         ; preds = %if.end13, %if.then21
  %rc.0 = phi i32 [ %div, %if.then21 ], [ %num, %if.end13 ]
  %idxprom32 = sext i32 %2 to i64
  %buf35 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3
  %5 = load i8** %buf35, align 8, !tbaa !4
  %arrayidx36 = getelementptr inbounds i8* %5, i64 %idxprom32
  %conv = sext i32 %rc.0 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %buf, i8* %arrayidx36, i64 %conv, i32 1, i1 false)
  %mul37 = mul nsw i32 %rc.0, %size
  %6 = load i32* %pos, align 8, !tbaa !3
  %add41 = add nsw i32 %6, %mul37
  store i32 %add41, i32* %pos, align 8, !tbaa !3
  %7 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp42 = icmp sgt i32 %7, 4
  br i1 %cmp42, label %if.then44, label %return

if.then44:                                        ; preds = %if.end28
  %call46 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %mul37) #8
  br label %return

return:                                           ; preds = %if.end28, %if.then44, %if.then8, %if.then10
  %retval.0 = phi i32 [ -1, %if.then10 ], [ -1, %if.then8 ], [ %rc.0, %if.then44 ], [ %rc.0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_getc(i32 %fd) #0 {
entry:
  %0 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str14, i64 0, i64 0), i32 %fd) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i32 %fd, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([34 x i8]* @.str9, i64 0, i64 0), i32 %fd) #8
  tail call void @exit(i32 0) #9
  unreachable

if.end4:                                          ; preds = %if.end
  %idxprom = sext i32 %fd to i64
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2
  %2 = load i32* %pos, align 8, !tbaa !3
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 1
  %3 = load i32* %len, align 4, !tbaa !3
  %cmp7 = icmp slt i32 %2, %3
  br i1 %cmp7, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end4
  %4 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %4, 4
  br i1 %cmp9, label %if.then10, label %return

if.then10:                                        ; preds = %if.then8
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([4 x i8]* @str39, i64 0, i64 0))
  br label %return

if.end13:                                         ; preds = %if.end4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %pos, align 8, !tbaa !3
  %idxprom17 = sext i32 %2 to i64
  %buf = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3
  %5 = load i8** %buf, align 8, !tbaa !4
  %arrayidx20 = getelementptr inbounds i8* %5, i64 %idxprom17
  %6 = load i8* %arrayidx20, align 1, !tbaa !1
  %conv = zext i8 %6 to i32
  %7 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp21 = icmp sgt i32 %7, 4
  br i1 %cmp21, label %if.then23, label %return

if.then23:                                        ; preds = %if.end13
  %call24 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %conv) #8
  br label %return

return:                                           ; preds = %if.end13, %if.then23, %if.then8, %if.then10
  %retval.0 = phi i32 [ -1, %if.then10 ], [ -1, %if.then8 ], [ %conv, %if.then23 ], [ %conv, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_ungetc(i8 zeroext %ch, i32 %fd) #0 {
entry:
  %0 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str15, i64 0, i64 0), i32 %fd) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i32 %fd, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([34 x i8]* @.str9, i64 0, i64 0), i32 %fd) #8
  tail call void @exit(i32 0) #9
  unreachable

if.end4:                                          ; preds = %if.end
  %idxprom = sext i32 %fd to i64
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2
  %2 = load i32* %pos, align 8, !tbaa !3
  %cmp5 = icmp slt i32 %2, 1
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([26 x i8]* @.str16, i64 0, i64 0), i32 %2) #8
  tail call void @exit(i32 0) #9
  unreachable

if.end11:                                         ; preds = %if.end4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %pos, align 8, !tbaa !3
  %idxprom15 = sext i32 %dec to i64
  %buf = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3
  %4 = load i8** %buf, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds i8* %4, i64 %idxprom15
  %5 = load i8* %arrayidx18, align 1, !tbaa !1
  %conv19 = zext i8 %ch to i32
  %cmp20 = icmp eq i8 %5, %ch
  br i1 %cmp20, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end11
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([72 x i8]* @.str17, i64 0, i64 0), i64 71, i64 1, %struct._IO_FILE* %6)
  tail call void @exit(i32 0) #9
  unreachable

if.end24:                                         ; preds = %if.end11
  %8 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp25 = icmp sgt i32 %8, 4
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  %call28 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 0) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24
  ret i32 %conv19
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_rewind(i32 %fd) #0 {
entry:
  %idxprom = sext i32 %fd to i64
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2
  store i32 0, i32* %pos, align 8, !tbaa !3
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_reset(i32 %fd) #0 {
entry:
  %idxprom = sext i32 %fd to i64
  %buf = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3
  %0 = load i8** %buf, align 8, !tbaa !4
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 1
  %1 = load i32* %len, align 4, !tbaa !3
  %conv = sext i32 %1 to i64
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %conv, i32 1, i1 false)
  store i32 0, i32* %len, align 4, !tbaa !3
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2
  store i32 0, i32* %pos, align 8, !tbaa !3
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_write(i32 %fd, i8* %buf, i32 %size) #0 {
entry:
  %0 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str18, i64 0, i64 0), i32 %fd, i8* %buf, i32 %size) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i32 %fd, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([35 x i8]* @.str19, i64 0, i64 0), i32 %fd) #8
  tail call void @exit(i32 0) #9
  unreachable

if.end4:                                          ; preds = %if.end
  %idxprom = sext i32 %fd to i64
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2
  %2 = load i32* %pos, align 8, !tbaa !3
  %idxprom5 = sext i32 %2 to i64
  %buf8 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3
  %3 = load i8** %buf8, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds i8* %3, i64 %idxprom5
  %conv = sext i32 %size to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx9, i8* %buf, i64 %conv, i32 1, i1 false)
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 1
  %4 = load i32* %len, align 4, !tbaa !3
  %add = add nsw i32 %4, %size
  store i32 %add, i32* %len, align 4, !tbaa !3
  %5 = load i32* %pos, align 8, !tbaa !3
  %add15 = add nsw i32 %5, %size
  store i32 %add15, i32* %pos, align 8, !tbaa !3
  %6 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp16 = icmp sgt i32 %6, 4
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end4
  %call19 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %size) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end4
  ret i32 %size
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_fwrite(i8* %buf, i32 %size, i32 %num, i32 %fd) #0 {
entry:
  %0 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str20, i64 0, i64 0), i8* %buf, i32 %size, i32 %num, i32 %fd) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i32 %fd, 3
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i32 %fd) #8
  tail call void @exit(i32 0) #9
  unreachable

if.end4:                                          ; preds = %if.end
  %idxprom = sext i32 %fd to i64
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2
  %2 = load i32* %pos, align 8, !tbaa !3
  %idxprom5 = sext i32 %2 to i64
  %buf8 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3
  %3 = load i8** %buf8, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds i8* %3, i64 %idxprom5
  %mul = mul nsw i32 %num, %size
  %conv = sext i32 %mul to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx9, i8* %buf, i64 %conv, i32 1, i1 false)
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 1
  %4 = load i32* %len, align 4, !tbaa !3
  %add = add nsw i32 %4, %mul
  store i32 %add, i32* %len, align 4, !tbaa !3
  %5 = load i32* %pos, align 8, !tbaa !3
  %add17 = add nsw i32 %5, %mul
  store i32 %add17, i32* %pos, align 8, !tbaa !3
  %6 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp18 = icmp sgt i32 %6, 4
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end4
  %call21 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %num) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end4
  ret i32 %num
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_putc(i8 zeroext %ch, i32 %fd) #0 {
entry:
  %0 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = zext i8 %ch to i32
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str22, i64 0, i64 0), i32 %conv, i32 %fd) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i32 %fd, 3
  br i1 %cmp1, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([35 x i8]* @.str19, i64 0, i64 0), i32 %fd) #8
  tail call void @exit(i32 0) #9
  unreachable

if.end5:                                          ; preds = %if.end
  %idxprom = sext i32 %fd to i64
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2
  %2 = load i32* %pos, align 8, !tbaa !3
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %pos, align 8, !tbaa !3
  %idxprom6 = sext i32 %2 to i64
  %buf = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3
  %3 = load i8** %buf, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds i8* %3, i64 %idxprom6
  store i8 %ch, i8* %arrayidx9, align 1, !tbaa !1
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 1
  %4 = load i32* %len, align 4, !tbaa !3
  %inc12 = add nsw i32 %4, 1
  store i32 %inc12, i32* %len, align 4, !tbaa !3
  %conv13 = zext i8 %ch to i32
  ret i32 %conv13
}

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32 %argc, i8** nocapture %argv) #0 {
entry:
  store i64 10, i64* @seedi, align 8, !tbaa !0
  %cmp = icmp sgt i32 %argc, 1
  br i1 %cmp, label %if.end, label %if.end9

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8** %argv, i64 1
  %0 = load i8** %arrayidx, align 8, !tbaa !4
  %cmp1 = icmp sgt i32 %argc, 2
  br i1 %cmp1, label %if.end4, label %if.end9

if.end4:                                          ; preds = %if.end
  %arrayidx3 = getelementptr inbounds i8** %argv, i64 2
  %1 = load i8** %arrayidx3, align 8, !tbaa !4
  %call = tail call i32 @atoi(i8* %1) #11
  %cmp5 = icmp sgt i32 %argc, 3
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end4
  %arrayidx7 = getelementptr inbounds i8** %argv, i64 3
  %2 = load i8** %arrayidx7, align 8, !tbaa !4
  %call8 = tail call i32 @atoi(i8* %2) #11
  br label %if.end9

if.end9:                                          ; preds = %entry, %if.end, %if.end4, %if.then6
  %input_size.0134 = phi i32 [ %call, %if.then6 ], [ %call, %if.end4 ], [ 64, %if.end ], [ 64, %entry ]
  %input_name.0131133 = phi i8* [ %0, %if.then6 ], [ %0, %if.end4 ], [ %0, %if.end ], [ getelementptr inbounds ([15 x i8]* @.str23, i64 0, i64 0), %entry ]
  %compressed_size.0 = phi i32 [ %call8, %if.then6 ], [ %call, %if.end4 ], [ 64, %if.end ], [ 64, %entry ]
  %mul = shl nsw i32 %input_size.0134, 20
  store i32 %mul, i32* getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 0, i32 0), align 16, !tbaa !3
  %mul10 = shl nsw i32 %compressed_size.0, 20
  store i32 %mul10, i32* getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 1, i32 0), align 8, !tbaa !3
  store i32 %mul, i32* getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 2, i32 0), align 16, !tbaa !3
  %call12 = tail call i32 @spec_init() #12
  %3 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp14 = icmp sgt i32 %3, 2
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end9
  %puts128 = tail call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str43, i64 0, i64 0))
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end9
  %call19 = tail call i32 @spec_load(i32 0, i8* %input_name.0131133, i32 %mul) #12
  %4 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp20 = icmp sgt i32 %4, 3
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end17
  %5 = load i32* getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 0, i32 1), align 4, !tbaa !3
  %call22 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str25, i64 0, i64 0), i32 %5) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end17
  %div = sdiv i32 %mul, 1024
  %conv = sext i32 %div to i64
  %call25 = tail call noalias i8* @malloc(i64 %conv) #8
  %cmp26 = icmp eq i8* %call25, null
  br i1 %cmp26, label %if.then28, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end23
  %cmp33139 = icmp sgt i32 %input_size.0134, 0
  br i1 %cmp33139, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = load i8** getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 0, i32 3), align 16, !tbaa !4
  br label %for.body

if.then28:                                        ; preds = %if.end23
  %puts127 = tail call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str42, i64 0, i64 0))
  tail call void @exit(i32 0) #9
  unreachable

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv145 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next146, %for.body ]
  %indvars.iv143 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next144, %for.body ]
  %arrayidx36 = getelementptr inbounds i8* %6, i64 %indvars.iv143
  %7 = load i8* %arrayidx36, align 1, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8* %call25, i64 %indvars.iv145
  store i8 %7, i8* %arrayidx38, align 1, !tbaa !1
  %indvars.iv.next146 = add i64 %indvars.iv145, 1
  %8 = mul nsw i64 %indvars.iv.next146, 1027
  %9 = trunc i64 %8 to i32
  %cmp33 = icmp slt i32 %9, %mul
  %indvars.iv.next144 = add i64 %indvars.iv143, 1027
  br i1 %cmp33, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  store i8 0, i8* @smallMode, align 1, !tbaa !1
  store i32 0, i32* @verbosity, align 4, !tbaa !3
  store i32 9, i32* @blockSize100k, align 4, !tbaa !3
  store i32 30, i32* @workFactor, align 4, !tbaa !3
  br label %for.body42

for.body42:                                       ; preds = %if.end95, %for.end
  %level.0138 = phi i32 [ 5, %for.end ], [ %add, %if.end95 ]
  %10 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp44 = icmp sgt i32 %10, 2
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %for.body42
  %call47 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str27, i64 0, i64 0), i32 %level.0138) #8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %for.body42
  store i32 %level.0138, i32* @blockSize100k, align 4, !tbaa !3
  tail call void @compressStream(i32 0, i32 1) #8
  %11 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp50 = icmp sgt i32 %11, 3
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end48
  %12 = load i32* getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 1, i32 1), align 4, !tbaa !3
  %call53 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str28, i64 0, i64 0), i32 %12) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end48
  %13 = load i8** getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 0, i32 3), align 16, !tbaa !4
  %14 = load i32* getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 0, i32 1), align 4, !tbaa !3
  %conv.i129 = sext i32 %14 to i64
  tail call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 %conv.i129, i32 1, i1 false) #2
  store i32 0, i32* getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 0, i32 1), align 4, !tbaa !3
  store i32 0, i32* getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 0, i32 2), align 8, !tbaa !3
  store i32 0, i32* getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 1, i32 2), align 8, !tbaa !3
  %15 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp58 = icmp sgt i32 %15, 2
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end54
  %puts126 = tail call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str41, i64 0, i64 0))
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end54
  store i32 0, i32* @blockSize100k, align 4, !tbaa !3
  %call.i = tail call zeroext i8 @uncompressStream(i32 1, i32 0) #8
  %16 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp64 = icmp sgt i32 %16, 3
  br i1 %cmp64, label %if.then66, label %for.cond69.preheader

if.then66:                                        ; preds = %if.end62
  %17 = load i32* getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 0, i32 1), align 4, !tbaa !3
  %call67 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([38 x i8]* @.str30, i64 0, i64 0), i32 %17) #8
  br label %for.cond69.preheader

for.cond69.preheader:                             ; preds = %if.then66, %if.end62
  br i1 %cmp33139, label %for.body74.lr.ph, label %for.end89

for.body74.lr.ph:                                 ; preds = %for.cond69.preheader
  %18 = load i8** getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 0, i32 3), align 16, !tbaa !4
  br label %for.body74

for.cond69:                                       ; preds = %for.body74
  %19 = mul nsw i64 %indvars.iv.next, 1027
  %20 = trunc i64 %19 to i32
  %cmp72 = icmp slt i32 %20, %mul
  br i1 %cmp72, label %for.cond69.for.body74_crit_edge, label %for.end89

for.cond69.for.body74_crit_edge:                  ; preds = %for.cond69
  %sext = mul i64 %indvars.iv.next, 4410931412992
  %phitmp = ashr exact i64 %sext, 32
  br label %for.body74

for.body74:                                       ; preds = %for.cond69.for.body74_crit_edge, %for.body74.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body74.lr.ph ], [ %indvars.iv.next, %for.cond69.for.body74_crit_edge ]
  %mul70137 = phi i64 [ 0, %for.body74.lr.ph ], [ %phitmp, %for.cond69.for.body74_crit_edge ]
  %arrayidx76 = getelementptr inbounds i8* %call25, i64 %indvars.iv
  %21 = load i8* %arrayidx76, align 1, !tbaa !1
  %arrayidx80 = getelementptr inbounds i8* %18, i64 %mul70137
  %22 = load i8* %arrayidx80, align 1, !tbaa !1
  %cmp82 = icmp eq i8 %21, %22
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp82, label %for.cond69, label %if.then84

if.then84:                                        ; preds = %for.body74
  %call85 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str31, i64 0, i64 0), i32 %input_size.0134) #8
  tail call void @exit(i32 0) #9
  unreachable

for.end89:                                        ; preds = %for.cond69, %for.cond69.preheader
  %23 = load i32* @dbglvl, align 4, !tbaa !3
  %cmp91 = icmp sgt i32 %23, 3
  br i1 %cmp91, label %if.then93, label %if.end95

if.then93:                                        ; preds = %for.end89
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([37 x i8]* @str40, i64 0, i64 0))
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %for.end89
  %24 = load i8** getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 1, i32 3), align 8, !tbaa !4
  %25 = load i32* getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 1, i32 1), align 4, !tbaa !3
  %conv.i = sext i32 %25 to i64
  tail call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 %conv.i, i32 1, i1 false) #2
  store i32 0, i32* getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 1, i32 1), align 4, !tbaa !3
  store i32 0, i32* getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 1, i32 2), align 8, !tbaa !3
  store i32 0, i32* getelementptr inbounds ([3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 0, i32 2), align 8, !tbaa !3
  %add = add nsw i32 %level.0138, 2
  %cmp40 = icmp slt i32 %add, 10
  br i1 %cmp40, label %for.body42, label %for.end99

for.end99:                                        ; preds = %if.end95
  %call100 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str33, i64 0, i64 0), i32 %input_size.0134) #8
  ret i32 0
}

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define void @spec_compress(i32 %in, i32 %out, i32 %lev) #0 {
entry:
  store i32 %lev, i32* @blockSize100k, align 4, !tbaa !3
  tail call void @compressStream(i32 %in, i32 %out) #8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @spec_uncompress(i32 %in, i32 %out, i32 %lev) #0 {
entry:
  store i32 0, i32* @blockSize100k, align 4, !tbaa !3
  %call = tail call zeroext i8 @uncompressStream(i32 %in, i32 %out) #8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @spec_initbufs() #0 {
entry:
  store i8 0, i8* @smallMode, align 1, !tbaa !1
  store i32 0, i32* @verbosity, align 4, !tbaa !3
  store i32 9, i32* @blockSize100k, align 4, !tbaa !3
  store i32 30, i32* @workFactor, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @compressStream(i32, i32) #4

; Function Attrs: optsize
declare zeroext i8 @uncompressStream(i32, i32) #4

; Function Attrs: nounwind optsize readnone uwtable
define i32 @debug_time() #7 {
entry:
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind optsize }
attributes #10 = { nounwind optsize readnone }
attributes #11 = { nounwind optsize readonly }
attributes #12 = { optsize }

!0 = metadata !{metadata !"long", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
