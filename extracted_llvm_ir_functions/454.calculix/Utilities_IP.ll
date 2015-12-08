; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_IP.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IP = type { i32, %struct._IP* }

@.str = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c" %4d\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@stderr = external global %struct._IO_FILE*
@.str4 = private unnamed_addr constant [118 x i8] c"\0A fatal error in IPinit, invalid data\0A n = %d, flag = %d\0A flag must be 0 (IP_NULL), 1 (IP_FORWARD) or 2(IP_BACKWARD)\0A\00", align 1
@.str5 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str6 = private unnamed_addr constant [83 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_IP.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @IP_fprintf(%struct._IO_FILE* %fp, %struct._IP* %ip) #0 {
entry:
  %cmp = icmp eq %struct._IO_FILE* %fp, null
  %cmp1 = icmp eq %struct._IP* %ip, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.end6, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %i.016 = phi i32 [ %inc, %if.end ], [ 0, %entry ]
  %ip.addr.015 = phi %struct._IP* [ %2, %if.end ], [ %ip, %entry ]
  %rem13 = and i32 %i.016, 15
  %cmp3 = icmp eq i32 %rem13, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %while.body
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  br label %if.end

if.end:                                           ; preds = %if.then4, %while.body
  %val = getelementptr inbounds %struct._IP* %ip.addr.015, i64 0, i32 0
  %1 = load i32* %val, align 4, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i32 %1) #4
  %next = getelementptr inbounds %struct._IP* %ip.addr.015, i64 0, i32 1
  %2 = load %struct._IP** %next, align 8, !tbaa !3
  %inc = add nsw i32 %i.016, 1
  %cmp2 = icmp eq %struct._IP* %2, null
  br i1 %cmp2, label %if.end6, label %while.body

if.end6:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @IP_fp80(%struct._IO_FILE* %fp, %struct._IP* %ip, i32 %column) #0 {
entry:
  %cmp = icmp eq %struct._IO_FILE* %fp, null
  %cmp1 = icmp eq %struct._IP* %ip, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.end11, label %while.body

while.body:                                       ; preds = %entry, %if.end8
  %ip.addr.0 = phi %struct._IP* [ %4, %if.end8 ], [ %ip, %entry ]
  %column.addr.0 = phi i32 [ %column.addr.1, %if.end8 ], [ %column, %entry ]
  %val = getelementptr inbounds %struct._IP* %ip.addr.0, i64 0, i32 0
  %0 = load i32* %val, align 4, !tbaa !0
  %cmp3 = icmp slt i32 %0, 0
  %sub = sub nsw i32 0, %0
  %inum.0 = select i1 %cmp3, i32 %sub, i32 %0
  %1 = lshr i32 %0, 31
  %2 = or i32 %1, 2
  %cmp524 = icmp slt i32 %inum.0, 10
  br i1 %cmp524, label %for.end, label %for.body

for.body:                                         ; preds = %while.body, %for.body
  %pow.026 = phi i32 [ %mul, %for.body ], [ 10, %while.body ]
  %nchar.125 = phi i32 [ %inc, %for.body ], [ %2, %while.body ]
  %inc = add nsw i32 %nchar.125, 1
  %mul = mul nsw i32 %pow.026, 10
  %cmp5 = icmp slt i32 %inum.0, %mul
  br i1 %cmp5, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %while.body
  %nchar.1.lcssa = phi i32 [ %2, %while.body ], [ %inc, %for.body ]
  %add = add nsw i32 %nchar.1.lcssa, %column.addr.0
  %cmp6 = icmp sgt i32 %add, 79
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.end
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %.pre = load i32* %val, align 4, !tbaa !0
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.end
  %3 = phi i32 [ %.pre, %if.then7 ], [ %0, %for.end ]
  %column.addr.1 = phi i32 [ %nchar.1.lcssa, %if.then7 ], [ %add, %for.end ]
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %3) #4
  %next = getelementptr inbounds %struct._IP* %ip.addr.0, i64 0, i32 1
  %4 = load %struct._IP** %next, align 8, !tbaa !3
  %cmp2.old = icmp eq %struct._IP* %4, null
  br i1 %cmp2.old, label %if.end11, label %while.body

if.end11:                                         ; preds = %if.end8, %entry
  %column.addr.2 = phi i32 [ %column, %entry ], [ %column.addr.1, %if.end8 ]
  ret i32 %column.addr.2
}

; Function Attrs: nounwind optsize uwtable
define %struct._IP* @IP_init(i32 %n, i32 %flag) #0 {
entry:
  %cmp = icmp sgt i32 %n, 0
  br i1 %cmp, label %if.then, label %if.end58

if.then:                                          ; preds = %entry
  %0 = icmp ugt i32 %flag, 2
  br i1 %0, label %if.then5, label %if.then7

if.then5:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([118 x i8]* @.str4, i64 0, i64 0), i32 %n, i32 %flag) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.then7:                                         ; preds = %if.then
  %conv = sext i32 %n to i64
  %mul = shl nsw i64 %conv, 4
  %call8 = tail call noalias i8* @malloc(i64 %mul) #4
  %2 = bitcast i8* %call8 to %struct._IP*
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then11, label %if.end25

if.then11:                                        ; preds = %if.then7
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str5, i64 0, i64 0), i64 %mul, i32 107, i8* getelementptr inbounds ([83 x i8]* @.str6, i64 0, i64 0)) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end25:                                         ; preds = %if.then7
  switch i32 %flag, label %if.end58 [
    i32 1, label %for.body.lr.ph
    i32 2, label %sw.bb28
    i32 0, label %for.body51
  ]

for.body.lr.ph:                                   ; preds = %if.end25
  %sub = add nsw i32 %n, -1
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds %struct._IP* %2, i64 %idx.ext
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %ip.098 = phi %struct._IP* [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %head.097 = phi %struct._IP* [ null, %for.body.lr.ph ], [ %ip.098, %for.body ]
  %i.096 = phi i32 [ %sub, %for.body.lr.ph ], [ %dec, %for.body ]
  %next = getelementptr inbounds %struct._IP* %ip.098, i64 0, i32 1
  store %struct._IP* %head.097, %struct._IP** %next, align 8, !tbaa !3
  %val = getelementptr inbounds %struct._IP* %ip.098, i64 0, i32 0
  store i32 0, i32* %val, align 4, !tbaa !0
  %dec = add nsw i32 %i.096, -1
  %incdec.ptr = getelementptr inbounds %struct._IP* %ip.098, i64 -1
  %cmp26 = icmp sgt i32 %i.096, 0
  br i1 %cmp26, label %for.body, label %if.end58

sw.bb28:                                          ; preds = %if.end25
  %add.ptr30.sum = add i64 %conv, -1
  %val32 = getelementptr inbounds %struct._IP* %2, i64 %add.ptr30.sum, i32 0
  store i32 0, i32* %val32, align 4, !tbaa !0
  %sub33 = add i32 %n, -2
  %cmp3799 = icmp sgt i32 %sub33, -1
  %next40 = getelementptr inbounds %struct._IP* %2, i64 %add.ptr30.sum, i32 1
  br i1 %cmp3799, label %for.body39.lr.ph, label %for.end45

for.body39.lr.ph:                                 ; preds = %sw.bb28
  %idx.ext34 = sext i32 %sub33 to i64
  %add.ptr31.sum = add i64 %add.ptr30.sum, %idx.ext34
  %add.ptr35 = getelementptr inbounds %struct._IP* %2, i64 %add.ptr31.sum
  %4 = add i64 %conv, %idx.ext34
  %5 = shl nsw i64 %4, 4
  %6 = add i64 %5, -16
  %7 = sub i32 1, %n
  %8 = icmp sgt i32 %7, -1
  %smax = select i1 %8, i32 %7, i32 -1
  %9 = add i32 %smax, %n
  %10 = add i32 %9, -1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 4
  %13 = sub i64 %6, %12
  %scevgep = getelementptr i8* %call8, i64 %13
  br label %for.body39

for.body39:                                       ; preds = %for.body39.lr.ph, %for.body39
  %ip.1101 = phi %struct._IP* [ %add.ptr35, %for.body39.lr.ph ], [ %incdec.ptr44, %for.body39 ]
  %i.1100 = phi i32 [ %sub33, %for.body39.lr.ph ], [ %dec43, %for.body39 ]
  %val41 = getelementptr inbounds %struct._IP* %ip.1101, i64 0, i32 0
  store i32 0, i32* %val41, align 4, !tbaa !0
  %dec43 = add nsw i32 %i.1100, -1
  %incdec.ptr44 = getelementptr inbounds %struct._IP* %ip.1101, i64 -1
  %cmp37 = icmp sgt i32 %i.1100, 0
  br i1 %cmp37, label %for.body39, label %for.cond36.for.end45_crit_edge

for.cond36.for.end45_crit_edge:                   ; preds = %for.body39
  %scevgep106 = bitcast i8* %scevgep to %struct._IP*
  store %struct._IP* %scevgep106, %struct._IP** %next40, align 8, !tbaa !3
  br label %for.end45

for.end45:                                        ; preds = %for.cond36.for.end45_crit_edge, %sw.bb28
  store %struct._IP* null, %struct._IP** %next40, align 8, !tbaa !3
  br label %if.end58

for.body51:                                       ; preds = %if.end25, %for.body51
  %ip.2105 = phi %struct._IP* [ %incdec.ptr55, %for.body51 ], [ %2, %if.end25 ]
  %i.2104 = phi i32 [ %inc, %for.body51 ], [ 0, %if.end25 ]
  %val52 = getelementptr inbounds %struct._IP* %ip.2105, i64 0, i32 0
  store i32 0, i32* %val52, align 4, !tbaa !0
  %next53 = getelementptr inbounds %struct._IP* %ip.2105, i64 0, i32 1
  store %struct._IP* null, %struct._IP** %next53, align 8, !tbaa !3
  %inc = add nsw i32 %i.2104, 1
  %incdec.ptr55 = getelementptr inbounds %struct._IP* %ip.2105, i64 1
  %exitcond = icmp eq i32 %inc, %n
  br i1 %exitcond, label %if.end58, label %for.body51

if.end58:                                         ; preds = %for.body51, %for.body, %if.end25, %for.end45, %entry
  %base.1 = phi %struct._IP* [ %2, %if.end25 ], [ %2, %for.end45 ], [ null, %entry ], [ %2, %for.body ], [ %2, %for.body51 ]
  ret %struct._IP* %base.1
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize uwtable
define void @IP_free(%struct._IP* %ip) #0 {
entry:
  %cmp = icmp eq %struct._IP* %ip, null
  br i1 %cmp, label %if.end3, label %if.then2

if.then2:                                         ; preds = %entry
  %0 = bitcast %struct._IP* %ip to i8*
  tail call void @free(i8* %0) #4
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then2
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define %struct._IP* @IP_mergeUp(%struct._IP* %ip1, %struct._IP* %ip2) #0 {
entry:
  %cmp = icmp eq %struct._IP* %ip1, null
  br i1 %cmp, label %if.end28, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq %struct._IP* %ip2, null
  br i1 %cmp1, label %if.end28, label %if.else3

if.else3:                                         ; preds = %if.else
  %val = getelementptr inbounds %struct._IP* %ip2, i64 0, i32 0
  %0 = load i32* %val, align 4, !tbaa !0
  %val4 = getelementptr inbounds %struct._IP* %ip1, i64 0, i32 0
  %1 = load i32* %val4, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %0, %1
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else3
  %next = getelementptr inbounds %struct._IP* %ip2, i64 0, i32 1
  %2 = load %struct._IP** %next, align 8, !tbaa !3
  br label %while.cond.preheader

if.else7:                                         ; preds = %if.else3
  %next8 = getelementptr inbounds %struct._IP* %ip1, i64 0, i32 1
  %3 = load %struct._IP** %next8, align 8, !tbaa !3
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else7, %if.then6
  %ip1.addr.0.ph = phi %struct._IP* [ %ip1, %if.then6 ], [ %3, %if.else7 ]
  %ip2.addr.0.ph = phi %struct._IP* [ %2, %if.then6 ], [ %ip2, %if.else7 ]
  %head.0.ph = phi %struct._IP* [ %ip2, %if.then6 ], [ %ip1, %if.else7 ]
  %cmp971 = icmp eq %struct._IP* %ip1.addr.0.ph, null
  %cmp105972 = icmp eq %struct._IP* %ip2.addr.0.ph, null
  %or.cond6073 = or i1 %cmp971, %cmp105972
  br i1 %or.cond6073, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader, %if.else17
  %tail.0.ph5576 = phi %struct._IP* [ %ip1.addr.0.ph5274, %if.else17 ], [ %head.0.ph, %while.cond.preheader ]
  %ip2.addr.0.ph5375 = phi %struct._IP* [ %ip2.addr.061, %if.else17 ], [ %ip2.addr.0.ph, %while.cond.preheader ]
  %ip1.addr.0.ph5274 = phi %struct._IP* [ %7, %if.else17 ], [ %ip1.addr.0.ph, %while.cond.preheader ]
  %val12 = getelementptr inbounds %struct._IP* %ip1.addr.0.ph5274, i64 0, i32 0
  %4 = load i32* %val12, align 4, !tbaa !0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.then14
  %tail.062 = phi %struct._IP* [ %tail.0.ph5576, %while.body.lr.ph ], [ %ip2.addr.061, %if.then14 ]
  %ip2.addr.061 = phi %struct._IP* [ %ip2.addr.0.ph5375, %while.body.lr.ph ], [ %6, %if.then14 ]
  %val11 = getelementptr inbounds %struct._IP* %ip2.addr.061, i64 0, i32 0
  %5 = load i32* %val11, align 4, !tbaa !0
  %cmp13 = icmp slt i32 %5, %4
  %next15 = getelementptr inbounds %struct._IP* %tail.062, i64 0, i32 1
  br i1 %cmp13, label %if.then14, label %if.else17

if.then14:                                        ; preds = %while.body
  store %struct._IP* %ip2.addr.061, %struct._IP** %next15, align 8, !tbaa !3
  %next16 = getelementptr inbounds %struct._IP* %ip2.addr.061, i64 0, i32 1
  %6 = load %struct._IP** %next16, align 8, !tbaa !3
  %cmp10 = icmp eq %struct._IP* %6, null
  br i1 %cmp10, label %while.end.thread, label %while.body

while.end.thread:                                 ; preds = %if.then14
  %next2388 = getelementptr inbounds %struct._IP* %ip2.addr.061, i64 0, i32 1
  br label %if.else24

if.else17:                                        ; preds = %while.body
  store %struct._IP* %ip1.addr.0.ph5274, %struct._IP** %next15, align 8, !tbaa !3
  %next19 = getelementptr inbounds %struct._IP* %ip1.addr.0.ph5274, i64 0, i32 1
  %7 = load %struct._IP** %next19, align 8, !tbaa !3
  %cmp9 = icmp eq %struct._IP* %7, null
  %cmp1059 = icmp eq %struct._IP* %ip2.addr.061, null
  %or.cond60 = or i1 %cmp9, %cmp1059
  br i1 %or.cond60, label %while.end, label %while.body.lr.ph

while.end:                                        ; preds = %while.cond.preheader, %if.else17
  %ip1.addr.0.ph5266 = phi %struct._IP* [ %ip1.addr.0.ph, %while.cond.preheader ], [ %7, %if.else17 ]
  %cmp9.lcssa = phi i1 [ %cmp971, %while.cond.preheader ], [ %cmp9, %if.else17 ]
  %tail.0.lcssa = phi %struct._IP* [ %head.0.ph, %while.cond.preheader ], [ %ip1.addr.0.ph5274, %if.else17 ]
  %ip2.addr.0.lcssa = phi %struct._IP* [ %ip2.addr.0.ph, %while.cond.preheader ], [ %ip2.addr.061, %if.else17 ]
  %next23 = getelementptr inbounds %struct._IP* %tail.0.lcssa, i64 0, i32 1
  br i1 %cmp9.lcssa, label %if.then22, label %if.else24

if.then22:                                        ; preds = %while.end
  store %struct._IP* %ip2.addr.0.lcssa, %struct._IP** %next23, align 8, !tbaa !3
  br label %if.end28

if.else24:                                        ; preds = %while.end.thread, %while.end
  %next2390 = phi %struct._IP** [ %next2388, %while.end.thread ], [ %next23, %while.end ]
  %ip1.addr.0.ph526689 = phi %struct._IP* [ %ip1.addr.0.ph5274, %while.end.thread ], [ %ip1.addr.0.ph5266, %while.end ]
  store %struct._IP* %ip1.addr.0.ph526689, %struct._IP** %next2390, align 8, !tbaa !3
  br label %if.end28

if.end28:                                         ; preds = %if.else, %entry, %if.else24, %if.then22
  %head.1 = phi %struct._IP* [ %head.0.ph, %if.then22 ], [ %head.0.ph, %if.else24 ], [ %ip2, %entry ], [ %ip1, %if.else ]
  ret %struct._IP* %head.1
}

; Function Attrs: nounwind optsize uwtable
define %struct._IP* @IP_radixSortUp(%struct._IP* %ip) #0 {
entry:
  %heads = alloca [10 x %struct._IP*], align 16
  %0 = bitcast [10 x %struct._IP*]* %heads to i8*
  %tails = alloca [10 x %struct._IP*], align 16
  %1 = bitcast [10 x %struct._IP*]* %tails to i8*
  call void @llvm.lifetime.start(i64 80, i8* %0) #3
  call void @llvm.lifetime.start(i64 80, i8* %1) #3
  %cmp344360386 = icmp eq %struct._IP* %ip, null
  br i1 %cmp344360386, label %while.cond151.preheader.thread, label %while.body.lr.ph.lr.ph

while.cond151.preheader.thread:                   ; preds = %entry
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 80, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 16, i1 false)
  br label %if.end160.thread

while.body.lr.ph.lr.ph:                           ; preds = %entry, %if.then10
  %ip.addr.0.ph393 = phi %struct._IP* [ %2, %if.then10 ], [ %ip, %entry ]
  %zerotail.0.ph392 = phi %struct._IP* [ %zerotail.0346, %if.then10 ], [ null, %entry ]
  %zerohead.0.ph391 = phi %struct._IP* [ %zerohead.0345, %if.then10 ], [ null, %entry ]
  %neghead.0.ph390 = phi %struct._IP* [ %ip.addr.0347, %if.then10 ], [ null, %entry ]
  %poshead.0.ph389 = phi %struct._IP* [ %poshead.0.ph330362, %if.then10 ], [ null, %entry ]
  %posmax.0.ph388 = phi i32 [ %posmax.0.ph329361, %if.then10 ], [ 0, %entry ]
  %negmin.0.ph387 = phi i32 [ %.negmin.0, %if.then10 ], [ 0, %entry ]
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.then
  %ip.addr.0.ph334365 = phi %struct._IP* [ %ip.addr.0.ph393, %while.body.lr.ph.lr.ph ], [ %2, %if.then ]
  %zerotail.0.ph333364 = phi %struct._IP* [ %zerotail.0.ph392, %while.body.lr.ph.lr.ph ], [ %zerotail.0346, %if.then ]
  %zerohead.0.ph332363 = phi %struct._IP* [ %zerohead.0.ph391, %while.body.lr.ph.lr.ph ], [ %zerohead.0345, %if.then ]
  %poshead.0.ph330362 = phi %struct._IP* [ %poshead.0.ph389, %while.body.lr.ph.lr.ph ], [ %ip.addr.0347, %if.then ]
  %posmax.0.ph329361 = phi i32 [ %posmax.0.ph388, %while.body.lr.ph.lr.ph ], [ %.posmax.0, %if.then ]
  br label %while.body

while.cond24.preheader:                           ; preds = %if.then, %if.then10, %if.else17
  %neghead.0.ph380 = phi %struct._IP* [ %neghead.0.ph390, %if.else17 ], [ %neghead.0.ph390, %if.then ], [ %ip.addr.0347, %if.then10 ]
  %negmin.0.ph372 = phi i32 [ %negmin.0.ph387, %if.else17 ], [ %negmin.0.ph387, %if.then ], [ %.negmin.0, %if.then10 ]
  %poshead.0.ph330355 = phi %struct._IP* [ %poshead.0.ph330362, %if.else17 ], [ %ip.addr.0347, %if.then ], [ %poshead.0.ph330362, %if.then10 ]
  %posmax.0.ph329352 = phi i32 [ %posmax.0.ph329361, %if.else17 ], [ %.posmax.0, %if.then ], [ %posmax.0.ph329361, %if.then10 ]
  %zerotail.0.lcssa = phi %struct._IP* [ %ip.addr.0.zerotail.0, %if.else17 ], [ %zerotail.0346, %if.then ], [ %zerotail.0346, %if.then10 ]
  %zerohead.0.lcssa = phi %struct._IP* [ %ip.addr.0347, %if.else17 ], [ %zerohead.0345, %if.then ], [ %zerohead.0345, %if.then10 ]
  %cmp25324 = icmp sgt i32 %posmax.0.ph329352, 0
  br i1 %cmp25324, label %while.body26, label %while.end27

while.body:                                       ; preds = %while.body.lr.ph, %if.else17
  %ip.addr.0347 = phi %struct._IP* [ %ip.addr.0.ph334365, %while.body.lr.ph ], [ %2, %if.else17 ]
  %zerotail.0346 = phi %struct._IP* [ %zerotail.0.ph333364, %while.body.lr.ph ], [ %ip.addr.0.zerotail.0, %if.else17 ]
  %zerohead.0345 = phi %struct._IP* [ %zerohead.0.ph332363, %while.body.lr.ph ], [ %ip.addr.0347, %if.else17 ]
  %next1 = getelementptr inbounds %struct._IP* %ip.addr.0347, i64 0, i32 1
  %2 = load %struct._IP** %next1, align 8, !tbaa !3
  %val = getelementptr inbounds %struct._IP* %ip.addr.0347, i64 0, i32 0
  %3 = load i32* %val, align 4, !tbaa !0
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store %struct._IP* %poshead.0.ph330362, %struct._IP** %next1, align 8, !tbaa !3
  %cmp5 = icmp slt i32 %posmax.0.ph329361, %3
  %.posmax.0 = select i1 %cmp5, i32 %3, i32 %posmax.0.ph329361
  %cmp344 = icmp eq %struct._IP* %2, null
  br i1 %cmp344, label %while.cond24.preheader, label %while.body.lr.ph

if.else:                                          ; preds = %while.body
  %cmp9 = icmp slt i32 %3, 0
  br i1 %cmp9, label %if.then10, label %if.else17

if.then10:                                        ; preds = %if.else
  store %struct._IP* %neghead.0.ph390, %struct._IP** %next1, align 8, !tbaa !3
  %cmp13 = icmp sgt i32 %negmin.0.ph387, %3
  %.negmin.0 = select i1 %cmp13, i32 %3, i32 %negmin.0.ph387
  %cmp344360 = icmp eq %struct._IP* %2, null
  br i1 %cmp344360, label %while.cond24.preheader, label %while.body.lr.ph.lr.ph

if.else17:                                        ; preds = %if.else
  %cmp18 = icmp eq %struct._IP* %zerohead.0345, null
  %ip.addr.0.zerotail.0 = select i1 %cmp18, %struct._IP* %ip.addr.0347, %struct._IP* %zerotail.0346
  store %struct._IP* %zerohead.0345, %struct._IP** %next1, align 8, !tbaa !3
  %cmp = icmp eq %struct._IP* %2, null
  br i1 %cmp, label %while.cond24.preheader, label %while.body

while.body26:                                     ; preds = %while.cond24.preheader, %while.body26
  %posmax.2326 = phi i32 [ %div, %while.body26 ], [ %posmax.0.ph329352, %while.cond24.preheader ]
  %dpos.0325 = phi i32 [ %inc, %while.body26 ], [ 0, %while.cond24.preheader ]
  %inc = add nsw i32 %dpos.0325, 1
  %div = sdiv i32 %posmax.2326, 10
  %cmp25 = icmp sgt i32 %posmax.2326, 9
  br i1 %cmp25, label %while.body26, label %while.end27

while.end27:                                      ; preds = %while.body26, %while.cond24.preheader
  %dpos.0.lcssa = phi i32 [ 0, %while.cond24.preheader ], [ %inc, %while.body26 ]
  %cmp29320 = icmp slt i32 %negmin.0.ph372, 0
  br i1 %cmp29320, label %while.body30.lr.ph, label %for.cond.preheader

while.body30.lr.ph:                               ; preds = %while.end27
  %sub = sub nsw i32 0, %negmin.0.ph372
  br label %while.body30

for.cond.preheader:                               ; preds = %while.body30, %while.end27
  %dneg.0.lcssa = phi i32 [ 0, %while.end27 ], [ %inc31, %while.body30 ]
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 80, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 16, i1 false)
  %cmp43312 = icmp sgt i32 %dpos.0.lcssa, 0
  br i1 %cmp43312, label %for.body44, label %for.cond95.preheader

while.body30:                                     ; preds = %while.body30.lr.ph, %while.body30
  %negmin.2322 = phi i32 [ %sub, %while.body30.lr.ph ], [ %div32, %while.body30 ]
  %dneg.0321 = phi i32 [ 0, %while.body30.lr.ph ], [ %inc31, %while.body30 ]
  %inc31 = add nsw i32 %dneg.0321, 1
  %div32 = sdiv i32 %negmin.2322, 10
  %cmp29 = icmp sgt i32 %negmin.2322, 9
  br i1 %cmp29, label %while.body30, label %for.cond.preheader

for.cond95.preheader:                             ; preds = %for.end90, %for.cond.preheader
  %postail.0.lcssa = phi %struct._IP* [ null, %for.cond.preheader ], [ %postail.2, %for.end90 ]
  %poshead.2.lcssa = phi %struct._IP* [ %poshead.0.ph330355, %for.cond.preheader ], [ %poshead.5, %for.end90 ]
  %cmp96301 = icmp sgt i32 %dneg.0.lcssa, 0
  br i1 %cmp96301, label %for.body97, label %while.cond151.preheader

for.body44:                                       ; preds = %for.cond.preheader, %for.end90
  %postail.0316 = phi %struct._IP* [ %postail.2, %for.end90 ], [ null, %for.cond.preheader ]
  %poshead.2315 = phi %struct._IP* [ %poshead.5, %for.end90 ], [ %poshead.0.ph330355, %for.cond.preheader ]
  %i.1314 = phi i32 [ %inc93, %for.end90 ], [ 0, %for.cond.preheader ]
  %b1.0313 = phi i32 [ %mul, %for.end90 ], [ 1, %for.cond.preheader ]
  %mul = mul nsw i32 %b1.0313, 10
  %cmp46307 = icmp eq %struct._IP* %poshead.2315, null
  br i1 %cmp46307, label %for.body67, label %while.body47

while.body47:                                     ; preds = %for.body44, %if.end61
  %ip.addr.1308 = phi %struct._IP* [ %4, %if.end61 ], [ %poshead.2315, %for.body44 ]
  %next48 = getelementptr inbounds %struct._IP* %ip.addr.1308, i64 0, i32 1
  %4 = load %struct._IP** %next48, align 8, !tbaa !3
  %val49 = getelementptr inbounds %struct._IP* %ip.addr.1308, i64 0, i32 0
  %5 = load i32* %val49, align 4, !tbaa !0
  %rem = srem i32 %5, %mul
  %div50 = sdiv i32 %rem, %b1.0313
  %idxprom51 = sext i32 %div50 to i64
  %arrayidx52 = getelementptr inbounds [10 x %struct._IP*]* %heads, i64 0, i64 %idxprom51
  %6 = load %struct._IP** %arrayidx52, align 8, !tbaa !3
  %cmp53 = icmp eq %struct._IP* %6, null
  br i1 %cmp53, label %if.then54, label %if.else57

if.then54:                                        ; preds = %while.body47
  store %struct._IP* %ip.addr.1308, %struct._IP** %arrayidx52, align 8, !tbaa !3
  %arrayidx63.pre = getelementptr inbounds [10 x %struct._IP*]* %tails, i64 0, i64 %idxprom51
  br label %if.end61

if.else57:                                        ; preds = %while.body47
  %arrayidx59 = getelementptr inbounds [10 x %struct._IP*]* %tails, i64 0, i64 %idxprom51
  %7 = load %struct._IP** %arrayidx59, align 8, !tbaa !3
  %next60 = getelementptr inbounds %struct._IP* %7, i64 0, i32 1
  store %struct._IP* %ip.addr.1308, %struct._IP** %next60, align 8, !tbaa !3
  br label %if.end61

if.end61:                                         ; preds = %if.else57, %if.then54
  %arrayidx63.pre-phi = phi %struct._IP** [ %arrayidx59, %if.else57 ], [ %arrayidx63.pre, %if.then54 ]
  store %struct._IP* %ip.addr.1308, %struct._IP** %arrayidx63.pre-phi, align 8, !tbaa !3
  %cmp46 = icmp eq %struct._IP* %4, null
  br i1 %cmp46, label %for.body67, label %while.body47

for.body67:                                       ; preds = %for.body44, %if.end61, %for.inc88
  %indvars.iv401 = phi i64 [ %indvars.iv.next402, %for.inc88 ], [ 0, %if.end61 ], [ 0, %for.body44 ]
  %postail.1311 = phi %struct._IP* [ %postail.2, %for.inc88 ], [ %postail.0316, %if.end61 ], [ %postail.0316, %for.body44 ]
  %poshead.3310 = phi %struct._IP* [ %poshead.5, %for.inc88 ], [ null, %if.end61 ], [ null, %for.body44 ]
  %arrayidx69 = getelementptr inbounds [10 x %struct._IP*]* %heads, i64 0, i64 %indvars.iv401
  %8 = load %struct._IP** %arrayidx69, align 8, !tbaa !3
  %cmp70 = icmp eq %struct._IP* %8, null
  br i1 %cmp70, label %for.inc88, label %if.then71

if.then71:                                        ; preds = %for.body67
  %cmp72 = icmp eq %struct._IP* %poshead.3310, null
  br i1 %cmp72, label %if.end80, label %if.else76

if.else76:                                        ; preds = %if.then71
  %next79 = getelementptr inbounds %struct._IP* %postail.1311, i64 0, i32 1
  store %struct._IP* %8, %struct._IP** %next79, align 8, !tbaa !3
  br label %if.end80

if.end80:                                         ; preds = %if.then71, %if.else76
  %poshead.4 = phi %struct._IP* [ %poshead.3310, %if.else76 ], [ %8, %if.then71 ]
  %arrayidx82 = getelementptr inbounds [10 x %struct._IP*]* %tails, i64 0, i64 %indvars.iv401
  %9 = load %struct._IP** %arrayidx82, align 8, !tbaa !3
  store %struct._IP* null, %struct._IP** %arrayidx82, align 8, !tbaa !3
  store %struct._IP* null, %struct._IP** %arrayidx69, align 8, !tbaa !3
  br label %for.inc88

for.inc88:                                        ; preds = %for.body67, %if.end80
  %poshead.5 = phi %struct._IP* [ %poshead.4, %if.end80 ], [ %poshead.3310, %for.body67 ]
  %postail.2 = phi %struct._IP* [ %9, %if.end80 ], [ %postail.1311, %for.body67 ]
  %indvars.iv.next402 = add i64 %indvars.iv401, 1
  %lftr.wideiv403 = trunc i64 %indvars.iv.next402 to i32
  %exitcond404 = icmp eq i32 %lftr.wideiv403, 10
  br i1 %exitcond404, label %for.end90, label %for.body67

for.end90:                                        ; preds = %for.inc88
  %next91 = getelementptr inbounds %struct._IP* %postail.2, i64 0, i32 1
  store %struct._IP* null, %struct._IP** %next91, align 8, !tbaa !3
  %inc93 = add nsw i32 %i.1314, 1
  %exitcond405 = icmp eq i32 %inc93, %dpos.0.lcssa
  br i1 %exitcond405, label %for.cond95.preheader, label %for.body44

while.cond151.preheader:                          ; preds = %for.end146, %for.cond95.preheader
  %neghead.2.lcssa = phi %struct._IP* [ %neghead.0.ph380, %for.cond95.preheader ], [ %neghead.5, %for.end146 ]
  %cmp152293 = icmp eq %struct._IP* %neghead.2.lcssa, null
  br i1 %cmp152293, label %if.end160.thread, label %while.body153

for.body97:                                       ; preds = %for.cond95.preheader, %for.end146
  %negtail.0305 = phi %struct._IP* [ %negtail.2, %for.end146 ], [ null, %for.cond95.preheader ]
  %neghead.2304 = phi %struct._IP* [ %neghead.5, %for.end146 ], [ %neghead.0.ph380, %for.cond95.preheader ]
  %i.2303 = phi i32 [ %inc149, %for.end146 ], [ 0, %for.cond95.preheader ]
  %b1.1302 = phi i32 [ %mul98, %for.end146 ], [ 1, %for.cond95.preheader ]
  %mul98 = mul nsw i32 %b1.1302, 10
  %cmp100296 = icmp eq %struct._IP* %neghead.2304, null
  br i1 %cmp100296, label %for.body123, label %while.body101

while.body101:                                    ; preds = %for.body97, %if.end117
  %ip.addr.2297 = phi %struct._IP* [ %10, %if.end117 ], [ %neghead.2304, %for.body97 ]
  %next102 = getelementptr inbounds %struct._IP* %ip.addr.2297, i64 0, i32 1
  %10 = load %struct._IP** %next102, align 8, !tbaa !3
  %val103 = getelementptr inbounds %struct._IP* %ip.addr.2297, i64 0, i32 0
  %11 = load i32* %val103, align 4, !tbaa !0
  %sub104 = sub nsw i32 0, %11
  %rem105 = srem i32 %sub104, %mul98
  %div106 = sdiv i32 %rem105, %b1.1302
  %idxprom107 = sext i32 %div106 to i64
  %arrayidx108 = getelementptr inbounds [10 x %struct._IP*]* %heads, i64 0, i64 %idxprom107
  %12 = load %struct._IP** %arrayidx108, align 8, !tbaa !3
  %cmp109 = icmp eq %struct._IP* %12, null
  br i1 %cmp109, label %if.then110, label %if.else113

if.then110:                                       ; preds = %while.body101
  store %struct._IP* %ip.addr.2297, %struct._IP** %arrayidx108, align 8, !tbaa !3
  %arrayidx119.pre = getelementptr inbounds [10 x %struct._IP*]* %tails, i64 0, i64 %idxprom107
  br label %if.end117

if.else113:                                       ; preds = %while.body101
  %arrayidx115 = getelementptr inbounds [10 x %struct._IP*]* %tails, i64 0, i64 %idxprom107
  %13 = load %struct._IP** %arrayidx115, align 8, !tbaa !3
  %next116 = getelementptr inbounds %struct._IP* %13, i64 0, i32 1
  store %struct._IP* %ip.addr.2297, %struct._IP** %next116, align 8, !tbaa !3
  br label %if.end117

if.end117:                                        ; preds = %if.else113, %if.then110
  %arrayidx119.pre-phi = phi %struct._IP** [ %arrayidx115, %if.else113 ], [ %arrayidx119.pre, %if.then110 ]
  store %struct._IP* %ip.addr.2297, %struct._IP** %arrayidx119.pre-phi, align 8, !tbaa !3
  %cmp100 = icmp eq %struct._IP* %10, null
  br i1 %cmp100, label %for.body123, label %while.body101

for.body123:                                      ; preds = %for.body97, %if.end117, %for.inc144
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc144 ], [ 0, %if.end117 ], [ 0, %for.body97 ]
  %negtail.1300 = phi %struct._IP* [ %negtail.2, %for.inc144 ], [ %negtail.0305, %if.end117 ], [ %negtail.0305, %for.body97 ]
  %neghead.3299 = phi %struct._IP* [ %neghead.5, %for.inc144 ], [ null, %if.end117 ], [ null, %for.body97 ]
  %arrayidx125 = getelementptr inbounds [10 x %struct._IP*]* %heads, i64 0, i64 %indvars.iv
  %14 = load %struct._IP** %arrayidx125, align 8, !tbaa !3
  %cmp126 = icmp eq %struct._IP* %14, null
  br i1 %cmp126, label %for.inc144, label %if.then127

if.then127:                                       ; preds = %for.body123
  %cmp128 = icmp eq %struct._IP* %neghead.3299, null
  br i1 %cmp128, label %if.end136, label %if.else132

if.else132:                                       ; preds = %if.then127
  %next135 = getelementptr inbounds %struct._IP* %negtail.1300, i64 0, i32 1
  store %struct._IP* %14, %struct._IP** %next135, align 8, !tbaa !3
  br label %if.end136

if.end136:                                        ; preds = %if.then127, %if.else132
  %neghead.4 = phi %struct._IP* [ %neghead.3299, %if.else132 ], [ %14, %if.then127 ]
  %arrayidx138 = getelementptr inbounds [10 x %struct._IP*]* %tails, i64 0, i64 %indvars.iv
  %15 = load %struct._IP** %arrayidx138, align 8, !tbaa !3
  store %struct._IP* null, %struct._IP** %arrayidx138, align 8, !tbaa !3
  store %struct._IP* null, %struct._IP** %arrayidx125, align 8, !tbaa !3
  br label %for.inc144

for.inc144:                                       ; preds = %for.body123, %if.end136
  %neghead.5 = phi %struct._IP* [ %neghead.4, %if.end136 ], [ %neghead.3299, %for.body123 ]
  %negtail.2 = phi %struct._IP* [ %15, %if.end136 ], [ %negtail.1300, %for.body123 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 10
  br i1 %exitcond, label %for.end146, label %for.body123

for.end146:                                       ; preds = %for.inc144
  %next147 = getelementptr inbounds %struct._IP* %negtail.2, i64 0, i32 1
  store %struct._IP* null, %struct._IP** %next147, align 8, !tbaa !3
  %inc149 = add nsw i32 %i.2303, 1
  %exitcond400 = icmp eq i32 %inc149, %dneg.0.lcssa
  br i1 %exitcond400, label %while.cond151.preheader, label %for.body97

while.body153:                                    ; preds = %while.cond151.preheader, %while.body153
  %ip.addr.3295 = phi %struct._IP* [ %16, %while.body153 ], [ %neghead.2.lcssa, %while.cond151.preheader ]
  %head.0294 = phi %struct._IP* [ %ip.addr.3295, %while.body153 ], [ %neghead.2.lcssa, %while.cond151.preheader ]
  %next154 = getelementptr inbounds %struct._IP* %ip.addr.3295, i64 0, i32 1
  %16 = load %struct._IP** %next154, align 8, !tbaa !3
  store %struct._IP* %head.0294, %struct._IP** %next154, align 8, !tbaa !3
  %cmp152 = icmp eq %struct._IP* %16, null
  br i1 %cmp152, label %while.end156, label %while.body153

while.end156:                                     ; preds = %while.body153
  %cmp157 = icmp eq %struct._IP* %neghead.2.lcssa, null
  br i1 %cmp157, label %if.end160.thread, label %if.end160

if.end160.thread:                                 ; preds = %while.cond151.preheader.thread, %while.cond151.preheader, %while.end156
  %head.0.lcssa465 = phi %struct._IP* [ %ip.addr.3295, %while.end156 ], [ null, %while.cond151.preheader ], [ null, %while.cond151.preheader.thread ]
  %poshead.2.lcssa451453464 = phi %struct._IP* [ %poshead.2.lcssa, %while.end156 ], [ %poshead.2.lcssa, %while.cond151.preheader ], [ null, %while.cond151.preheader.thread ]
  %postail.0.lcssa450454462 = phi %struct._IP* [ %postail.0.lcssa, %while.end156 ], [ %postail.0.lcssa, %while.cond151.preheader ], [ null, %while.cond151.preheader.thread ]
  %zerotail.0.lcssa434438444449455460 = phi %struct._IP* [ %zerotail.0.lcssa, %while.end156 ], [ %zerotail.0.lcssa, %while.cond151.preheader ], [ null, %while.cond151.preheader.thread ]
  %zerohead.0.lcssa435437445448456459 = phi %struct._IP* [ %zerohead.0.lcssa, %while.end156 ], [ %zerohead.0.lcssa, %while.cond151.preheader ], [ null, %while.cond151.preheader.thread ]
  %cmp161283 = icmp eq %struct._IP* %zerohead.0.lcssa435437445448456459, null
  %head.0.mux286 = select i1 %cmp161283, %struct._IP* %head.0.lcssa465, %struct._IP* %zerohead.0.lcssa435437445448456459
  %neghead.2.mux287 = select i1 %cmp161283, %struct._IP* null, %struct._IP* %zerotail.0.lcssa434438444449455460
  br label %if.end168

if.end160:                                        ; preds = %while.end156
  %next159 = getelementptr inbounds %struct._IP* %neghead.2.lcssa, i64 0, i32 1
  %cmp161 = icmp eq %struct._IP* %zerohead.0.lcssa, null
  store %struct._IP* %zerohead.0.lcssa, %struct._IP** %next159, align 8, !tbaa !3
  %neghead.2.mux.zerotail.0.lcssa = select i1 %cmp161, %struct._IP* %neghead.2.lcssa, %struct._IP* %zerotail.0.lcssa
  br label %if.end168

if.end168:                                        ; preds = %if.end160, %if.end160.thread
  %poshead.2.lcssa451453463 = phi %struct._IP* [ %poshead.2.lcssa451453464, %if.end160.thread ], [ %poshead.2.lcssa, %if.end160 ]
  %postail.0.lcssa450454461 = phi %struct._IP* [ %postail.0.lcssa450454462, %if.end160.thread ], [ %postail.0.lcssa, %if.end160 ]
  %head.2 = phi %struct._IP* [ %head.0.mux286, %if.end160.thread ], [ %ip.addr.3295, %if.end160 ]
  %tail.0 = phi %struct._IP* [ %neghead.2.mux287, %if.end160.thread ], [ %neghead.2.mux.zerotail.0.lcssa, %if.end160 ]
  %cmp169 = icmp eq %struct._IP* %tail.0, null
  br i1 %cmp169, label %if.end172.thread, label %if.end172

if.end172.thread:                                 ; preds = %if.end168
  %cmp173288 = icmp eq %struct._IP* %poshead.2.lcssa451453463, null
  %head.2.mux291 = select i1 %cmp173288, %struct._IP* %head.2, %struct._IP* %poshead.2.lcssa451453463
  %tail.0.mux292 = select i1 %cmp173288, %struct._IP* null, %struct._IP* %postail.0.lcssa450454461
  br label %if.end180

if.end172:                                        ; preds = %if.end168
  %next171 = getelementptr inbounds %struct._IP* %tail.0, i64 0, i32 1
  %cmp173 = icmp eq %struct._IP* %poshead.2.lcssa451453463, null
  store %struct._IP* %poshead.2.lcssa451453463, %struct._IP** %next171, align 8, !tbaa !3
  %tail.0.mux.postail.0.lcssa450454461 = select i1 %cmp173, %struct._IP* %tail.0, %struct._IP* %postail.0.lcssa450454461
  br label %if.end180

if.end180:                                        ; preds = %if.end172, %if.end172.thread
  %head.4 = phi %struct._IP* [ %head.2.mux291, %if.end172.thread ], [ %head.2, %if.end172 ]
  %tail.1 = phi %struct._IP* [ %tail.0.mux292, %if.end172.thread ], [ %tail.0.mux.postail.0.lcssa450454461, %if.end172 ]
  %cmp181 = icmp eq %struct._IP* %tail.1, null
  br i1 %cmp181, label %if.end184, label %if.then182

if.then182:                                       ; preds = %if.end180
  %next183 = getelementptr inbounds %struct._IP* %tail.1, i64 0, i32 1
  store %struct._IP* null, %struct._IP** %next183, align 8, !tbaa !3
  br label %if.end184

if.end184:                                        ; preds = %if.end180, %if.then182
  call void @llvm.lifetime.end(i64 80, i8* %1) #3
  call void @llvm.lifetime.end(i64 80, i8* %0) #3
  ret %struct._IP* %head.4
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IP* @IP_radixSortDown(%struct._IP* %ip) #0 {
entry:
  %cmp = icmp eq %struct._IP* %ip, null
  br i1 %cmp, label %if.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %ip0.025 = phi %struct._IP* [ %1, %for.body ], [ %ip, %entry ]
  %val = getelementptr inbounds %struct._IP* %ip0.025, i64 0, i32 0
  %0 = load i32* %val, align 4, !tbaa !0
  %sub = sub nsw i32 0, %0
  store i32 %sub, i32* %val, align 4, !tbaa !0
  %next = getelementptr inbounds %struct._IP* %ip0.025, i64 0, i32 1
  %1 = load %struct._IP** %next, align 8, !tbaa !3
  %cmp1 = icmp eq %struct._IP* %1, null
  br i1 %cmp1, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %call = tail call %struct._IP* @IP_radixSortUp(%struct._IP* %ip) #6
  %cmp422 = icmp eq %struct._IP* %call, null
  br i1 %cmp422, label %if.end, label %for.body5

for.body5:                                        ; preds = %for.end, %for.body5
  %ip0.123 = phi %struct._IP* [ %3, %for.body5 ], [ %call, %for.end ]
  %val6 = getelementptr inbounds %struct._IP* %ip0.123, i64 0, i32 0
  %2 = load i32* %val6, align 4, !tbaa !0
  %sub7 = sub nsw i32 0, %2
  store i32 %sub7, i32* %val6, align 4, !tbaa !0
  %next10 = getelementptr inbounds %struct._IP* %ip0.123, i64 0, i32 1
  %3 = load %struct._IP** %next10, align 8, !tbaa !3
  %cmp4 = icmp eq %struct._IP* %3, null
  br i1 %cmp4, label %if.end, label %for.body5

if.end:                                           ; preds = %for.end, %for.body5, %entry
  %ip1.0 = phi %struct._IP* [ null, %entry ], [ %call, %for.body5 ], [ null, %for.end ]
  ret %struct._IP* %ip1.0
}

; Function Attrs: nounwind optsize uwtable
define %struct._IP* @IP_mergeSortUp(%struct._IP* %ip0) #0 {
entry:
  %cmp25 = icmp eq %struct._IP* %ip0, null
  br i1 %cmp25, label %return, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %ip.027 = phi %struct._IP* [ %0, %for.body ], [ %ip0, %entry ]
  %m.026 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %inc = add nsw i32 %m.026, 1
  %next = getelementptr inbounds %struct._IP* %ip.027, i64 0, i32 1
  %0 = load %struct._IP** %next, align 8, !tbaa !3
  %cmp = icmp eq %struct._IP* %0, null
  br i1 %cmp, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %cmp1 = icmp slt i32 %inc, 2
  br i1 %cmp1, label %return, label %if.else

if.else:                                          ; preds = %for.end
  %div = sdiv i32 %inc, 2
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2, %if.else
  %ip.1 = phi %struct._IP* [ %ip0, %if.else ], [ %1, %for.cond2 ]
  %i.0 = phi i32 [ 1, %if.else ], [ %inc7, %for.cond2 ]
  %cmp3 = icmp slt i32 %i.0, %div
  %next5 = getelementptr inbounds %struct._IP* %ip.1, i64 0, i32 1
  %1 = load %struct._IP** %next5, align 8, !tbaa !3
  %inc7 = add nsw i32 %i.0, 1
  br i1 %cmp3, label %for.cond2, label %for.end8

for.end8:                                         ; preds = %for.cond2
  store %struct._IP* null, %struct._IP** %next5, align 8, !tbaa !3
  %call = tail call %struct._IP* @IP_mergeSortUp(%struct._IP* %ip0) #6
  %call11 = tail call %struct._IP* @IP_mergeSortUp(%struct._IP* %1) #6
  %call12 = tail call %struct._IP* @IP_mergeUp(%struct._IP* %call, %struct._IP* %call11) #6
  ret %struct._IP* %call12

return:                                           ; preds = %entry, %for.end
  ret %struct._IP* %ip0
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
