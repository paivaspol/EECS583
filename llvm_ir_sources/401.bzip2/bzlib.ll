; ModuleID = '../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }
%struct.EState = type { %struct.bz_stream*, i32, i32, i32, i32*, i32*, i32*, i32, i32*, i8*, i16*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.DState = type { %struct.bz_stream*, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], i32*, i16*, i8*, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [269 x i8] c"\0A\0Abzip2/libbzip2: internal error number %d.\0AThis may be a bug in bzip2/libbzip2, %s.\0AIt may also be a bug in your compiler.  Please do not bother the\0Aoriginal author of bzip2 with a bug report for this.  He\0Adoesn't know anything about bzip2 as it appears in CPU2006.\0A\0A\00", align 1
@.str1 = private unnamed_addr constant [1057 x i8] c"\0A*** A special note about internal error number 1007 ***\0A\0AExperience suggests that a common cause of i.e. 1007\0Ais unreliable memory or other hardware.  The 1007 assertion\0Ajust happens to cross-check the results of huge numbers of\0Amemory reads/writes, and so acts (unintendedly) as a stress\0Atest of your memory system.\0A\0AI suggest the following: try compressing the file again,\0Apossibly monitoring progress in detail with the -vv flag.\0A\0A* If the error cannot be reproduced, and/or happens at different\0A  points in compression, you may have a flaky memory system.\0A  Try a memory-test program.  I have used Memtest86\0A  (www.memtest86.com).  At the time of writing it is free (GPLd).\0A  Memtest86 tests memory much more thorougly than your BIOSs\0A  power-on test, and may find failures that the BIOS doesn't.\0A\0A* If the error can be repeatably reproduced, this is a bug in\0A  bzip2, and I would very much like to hear about it.  Please\0A  let me know, and, ideally, save a copy of the file causing the\0A  problem -- without which I will be unable to investigate it.\0A\0A\00", align 1
@.str2 = private unnamed_addr constant [18 x i8] c" {0x%08x, 0x%08x}\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"\0A    combined CRCs: stored = 0x%08x, computed = 0x%08x\00", align 1
@.str5 = private unnamed_addr constant [19 x i8] c"1.0.3, 15-Feb-2005\00", align 1
@bzerrorstrings = internal unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str16, i32 0, i32 0)], align 16
@.str6 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str7 = private unnamed_addr constant [15 x i8] c"SEQUENCE_ERROR\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"PARAM_ERROR\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"MEM_ERROR\00", align 1
@.str10 = private unnamed_addr constant [11 x i8] c"DATA_ERROR\00", align 1
@.str11 = private unnamed_addr constant [17 x i8] c"DATA_ERROR_MAGIC\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"IO_ERROR\00", align 1
@.str13 = private unnamed_addr constant [15 x i8] c"UNEXPECTED_EOF\00", align 1
@.str14 = private unnamed_addr constant [13 x i8] c"OUTBUFF_FULL\00", align 1
@.str15 = private unnamed_addr constant [13 x i8] c"CONFIG_ERROR\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@BZ2_crc32Table = external global [256 x i32]
@BZ2_rNums = external global [512 x i32]

; Function Attrs: noreturn nounwind optsize uwtable
define void @BZ2_bz__AssertH__fail(i32 %errcode) #0 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([269 x i8]* @.str, i64 0, i64 0), i32 %errcode, i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)) #11
  %cmp = icmp eq i32 %errcode, 1007
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([1057 x i8]* @.str1, i64 0, i64 0), i64 1056, i64 1, %struct._IO_FILE* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @exit(i32 0) #12
  unreachable
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @BZ2_bzlibVersion() #2 {
entry:
  ret i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzCompressInit(%struct.bz_stream* %strm, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #4 {
entry:
  %cmp = icmp eq %struct.bz_stream* %strm, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %blockSize100k.off = add i32 %blockSize100k, -1
  %0 = icmp ugt i32 %blockSize100k.off, 8
  %1 = icmp ugt i32 %workFactor, 250
  %or.cond = or i1 %0, %1
  br i1 %or.cond, label %return, label %if.end9

if.end9:                                          ; preds = %lor.lhs.false
  %cmp10 = icmp eq i32 %workFactor, 0
  %.workFactor = select i1 %cmp10, i32 30, i32 %workFactor
  %bzalloc = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 9
  %2 = load i8* (i8*, i32, i32)** %bzalloc, align 8, !tbaa !0
  %cmp13 = icmp eq i8* (i8*, i32, i32)* %2, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end9
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %bzalloc, align 8, !tbaa !0
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9
  %3 = phi i8* (i8*, i32, i32)* [ @default_bzalloc, %if.then14 ], [ %2, %if.end9 ]
  %bzfree = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10
  %4 = load void (i8*, i8*)** %bzfree, align 8, !tbaa !0
  %cmp17 = icmp eq void (i8*, i8*)* %4, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %bzfree, align 8, !tbaa !0
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %opaque = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  %5 = load i8** %opaque, align 8, !tbaa !0
  %call22 = tail call i8* %3(i8* %5, i32 55768, i32 1) #11
  %cmp23 = icmp eq i8* %call22, null
  br i1 %cmp23, label %return, label %if.end25

if.end25:                                         ; preds = %if.end20
  %strm26 = bitcast i8* %call22 to %struct.bz_stream**
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm26, align 8, !tbaa !0
  %arr1 = getelementptr inbounds i8* %call22, i64 24
  %6 = bitcast i8* %arr1 to i32**
  %arr2 = getelementptr inbounds i8* %call22, i64 32
  %7 = bitcast i8* %arr2 to i32**
  %ftab = getelementptr inbounds i8* %call22, i64 40
  %8 = bitcast i8* %ftab to i32**
  %mul = mul nsw i32 %blockSize100k, 100000
  call void @llvm.memset.p0i8.i64(i8* %arr1, i8 0, i64 24, i32 8, i1 false)
  %9 = load i8* (i8*, i32, i32)** %bzalloc, align 8, !tbaa !0
  %10 = load i8** %opaque, align 8, !tbaa !0
  %mul29 = mul i32 %blockSize100k, 400000
  %call31 = tail call i8* %9(i8* %10, i32 %mul29, i32 1) #11
  %11 = bitcast i8* %call31 to i32*
  store i32* %11, i32** %6, align 8, !tbaa !0
  %12 = load i8* (i8*, i32, i32)** %bzalloc, align 8, !tbaa !0
  %13 = load i8** %opaque, align 8, !tbaa !0
  %mul36 = add i32 %mul29, 136
  %call38 = tail call i8* %12(i8* %13, i32 %mul36, i32 1) #11
  %14 = bitcast i8* %call38 to i32*
  store i32* %14, i32** %7, align 8, !tbaa !0
  %15 = load i8* (i8*, i32, i32)** %bzalloc, align 8, !tbaa !0
  %16 = load i8** %opaque, align 8, !tbaa !0
  %call42 = tail call i8* %15(i8* %16, i32 262148, i32 1) #11
  %17 = bitcast i8* %call42 to i32*
  store i32* %17, i32** %8, align 8, !tbaa !0
  %18 = load i32** %6, align 8, !tbaa !0
  %cmp45 = icmp eq i32* %18, null
  br i1 %cmp45, label %if.end63, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.end25
  %19 = load i32** %7, align 8, !tbaa !0
  %cmp49 = icmp eq i32* %19, null
  %cmp53 = icmp eq i8* %call42, null
  %or.cond166 = or i1 %cmp49, %cmp53
  br i1 %or.cond166, label %if.then59, label %if.end86

if.then59:                                        ; preds = %lor.lhs.false47
  %20 = load void (i8*, i8*)** %bzfree, align 8, !tbaa !0
  %21 = load i8** %opaque, align 8, !tbaa !0
  %22 = bitcast i32* %18 to i8*
  tail call void %20(i8* %21, i8* %22) #11
  br label %if.end63

if.end63:                                         ; preds = %if.end25, %if.then59
  %23 = load i32** %7, align 8, !tbaa !0
  %cmp65 = icmp eq i32* %23, null
  br i1 %cmp65, label %if.end71, label %if.then67

if.then67:                                        ; preds = %if.end63
  %24 = load void (i8*, i8*)** %bzfree, align 8, !tbaa !0
  %25 = load i8** %opaque, align 8, !tbaa !0
  %26 = bitcast i32* %23 to i8*
  tail call void %24(i8* %25, i8* %26) #11
  br label %if.end71

if.end71:                                         ; preds = %if.end63, %if.then67
  %27 = load i32** %8, align 8, !tbaa !0
  %cmp73 = icmp eq i32* %27, null
  br i1 %cmp73, label %if.then82, label %if.then75

if.then75:                                        ; preds = %if.end71
  %28 = load void (i8*, i8*)** %bzfree, align 8, !tbaa !0
  %29 = load i8** %opaque, align 8, !tbaa !0
  %30 = bitcast i32* %27 to i8*
  tail call void %28(i8* %29, i8* %30) #11
  br label %if.then82

if.then82:                                        ; preds = %if.then75, %if.end71
  %31 = load void (i8*, i8*)** %bzfree, align 8, !tbaa !0
  %32 = load i8** %opaque, align 8, !tbaa !0
  tail call void %31(i8* %32, i8* %call22) #11
  br label %return

if.end86:                                         ; preds = %lor.lhs.false47
  %blockNo = getelementptr inbounds i8* %call22, i64 660
  %33 = bitcast i8* %blockNo to i32*
  store i32 0, i32* %33, align 4, !tbaa !3
  %state = getelementptr inbounds i8* %call22, i64 12
  %34 = bitcast i8* %state to i32*
  store i32 2, i32* %34, align 4, !tbaa !3
  %mode = getelementptr inbounds i8* %call22, i64 8
  %35 = bitcast i8* %mode to i32*
  store i32 2, i32* %35, align 4, !tbaa !3
  %combinedCRC = getelementptr inbounds i8* %call22, i64 652
  %36 = bitcast i8* %combinedCRC to i32*
  store i32 0, i32* %36, align 4, !tbaa !3
  %blockSize100k87 = getelementptr inbounds i8* %call22, i64 664
  %37 = bitcast i8* %blockSize100k87 to i32*
  store i32 %blockSize100k, i32* %37, align 4, !tbaa !3
  %sub = add nsw i32 %mul, -19
  %nblockMAX = getelementptr inbounds i8* %call22, i64 112
  %38 = bitcast i8* %nblockMAX to i32*
  store i32 %sub, i32* %38, align 4, !tbaa !3
  %verbosity89 = getelementptr inbounds i8* %call22, i64 656
  %39 = bitcast i8* %verbosity89 to i32*
  store i32 %verbosity, i32* %39, align 4, !tbaa !3
  %workFactor90 = getelementptr inbounds i8* %call22, i64 88
  %40 = bitcast i8* %workFactor90 to i32*
  store i32 %.workFactor, i32* %40, align 4, !tbaa !3
  %41 = bitcast i32* %19 to i8*
  %block = getelementptr inbounds i8* %call22, i64 64
  %42 = bitcast i8* %block to i8**
  store i8* %41, i8** %42, align 8, !tbaa !0
  %43 = bitcast i32* %18 to i16*
  %mtfv = getelementptr inbounds i8* %call22, i64 72
  %44 = bitcast i8* %mtfv to i16**
  store i16* %43, i16** %44, align 8, !tbaa !0
  %zbits = getelementptr inbounds i8* %call22, i64 80
  %45 = bitcast i8* %zbits to i8**
  store i8* null, i8** %45, align 8, !tbaa !0
  %ptr = getelementptr inbounds i8* %call22, i64 56
  %46 = bitcast i8* %ptr to i32**
  store i32* %18, i32** %46, align 8, !tbaa !0
  %state94 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8
  store i8* %call22, i8** %state94, align 8, !tbaa !0
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 2
  store i32 0, i32* %total_in_lo32, align 4, !tbaa !3
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 3
  store i32 0, i32* %total_in_hi32, align 4, !tbaa !3
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 6
  store i32 0, i32* %total_out_lo32, align 4, !tbaa !3
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 7
  store i32 0, i32* %total_out_hi32, align 4, !tbaa !3
  %state_in_ch.i = getelementptr inbounds i8* %call22, i64 92
  %47 = bitcast i8* %state_in_ch.i to i32*
  store i32 256, i32* %47, align 4, !tbaa !3
  %state_in_len.i = getelementptr inbounds i8* %call22, i64 96
  %48 = bitcast i8* %state_in_len.i to i32*
  store i32 0, i32* %48, align 4, !tbaa !3
  %nblock.i = getelementptr inbounds i8* %call22, i64 108
  %49 = bitcast i8* %nblock.i to i32*
  store i32 0, i32* %49, align 4, !tbaa !3
  %numZ.i = getelementptr inbounds i8* %call22, i64 116
  %50 = bitcast i8* %numZ.i to i32*
  store i32 0, i32* %50, align 4, !tbaa !3
  %state_out_pos.i = getelementptr inbounds i8* %call22, i64 120
  %51 = bitcast i8* %state_out_pos.i to i32*
  store i32 0, i32* %51, align 4, !tbaa !3
  %blockCRC.i = getelementptr inbounds i8* %call22, i64 648
  %52 = bitcast i8* %blockCRC.i to i32*
  store i32 -1, i32* %52, align 4, !tbaa !3
  %53 = getelementptr i8* %call22, i64 128
  tail call void @llvm.memset.p0i8.i64(i8* %53, i8 0, i64 256, i32 1, i1 false) #7
  %54 = load i32* %33, align 4, !tbaa !3
  %inc1.i = add nsw i32 %54, 1
  store i32 %inc1.i, i32* %33, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.then82, %if.end20, %entry, %lor.lhs.false, %if.end86
  %retval.0 = phi i32 [ 0, %if.end86 ], [ -2, %lor.lhs.false ], [ -2, %entry ], [ -3, %if.end20 ], [ -3, %if.then82 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal noalias i8* @default_bzalloc(i8* nocapture %opaque, i32 %items, i32 %size) #4 {
entry:
  %mul = mul nsw i32 %size, %items
  %conv = sext i32 %mul to i64
  %call = tail call noalias i8* @malloc(i64 %conv) #11
  ret i8* %call
}

; Function Attrs: nounwind optsize uwtable
define internal void @default_bzfree(i8* nocapture %opaque, i8* %addr) #4 {
entry:
  %cmp = icmp eq i8* %addr, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(i8* %addr) #11
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzCompress(%struct.bz_stream* %strm, i32 %action) #4 {
entry:
  %cmp = icmp eq %struct.bz_stream* %strm, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8
  %0 = load i8** %state, align 8, !tbaa !0
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %strm4 = bitcast i8* %0 to %struct.bz_stream**
  %1 = load %struct.bz_stream** %strm4, align 8, !tbaa !0
  %cmp5 = icmp eq %struct.bz_stream* %1, %strm
  br i1 %cmp5, label %preswitch.preheader, label %return

preswitch.preheader:                              ; preds = %if.end3
  %mode = getelementptr inbounds i8* %0, i64 8
  %2 = bitcast i8* %mode to i32*
  %avail_in = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 1
  %avail_in_expect = getelementptr inbounds i8* %0, i64 16
  %3 = bitcast i8* %avail_in_expect to i32*
  %.pre = load i32* %2, align 4, !tbaa !3
  br label %preswitch

preswitch:                                        ; preds = %preswitch.backedge, %preswitch.preheader
  %4 = phi i32 [ %storemerge, %preswitch.backedge ], [ %.pre, %preswitch.preheader ]
  switch i32 %4, label %return [
    i32 1, label %return.loopexit
    i32 2, label %sw.bb8
    i32 3, label %sw.bb23
    i32 4, label %sw.bb47
  ]

sw.bb8:                                           ; preds = %preswitch
  switch i32 %action, label %return.loopexit [
    i32 0, label %if.then10
    i32 1, label %preswitch.backedge
    i32 2, label %if.then18
  ]

if.then10:                                        ; preds = %sw.bb8
  %call = tail call fastcc zeroext i8 @handle_compress(%struct.bz_stream* %strm) #13
  %tobool = icmp ne i8 %call, 0
  %cond = select i1 %tobool, i32 1, i32 -2
  br label %return

preswitch.backedge:                               ; preds = %sw.bb8, %if.then18
  %storemerge = phi i32 [ 4, %if.then18 ], [ 3, %sw.bb8 ]
  %storemerge123 = load i32* %avail_in, align 4
  store i32 %storemerge123, i32* %3, align 4, !tbaa !3
  store i32 %storemerge, i32* %2, align 4, !tbaa !3
  br label %preswitch

if.then18:                                        ; preds = %sw.bb8
  br label %preswitch.backedge

sw.bb23:                                          ; preds = %preswitch
  %cmp24 = icmp eq i32 %action, 1
  br i1 %cmp24, label %if.end27, label %return

if.end27:                                         ; preds = %sw.bb23
  %5 = load i32* %3, align 4, !tbaa !3
  %6 = load i32* %avail_in, align 4, !tbaa !3
  %cmp31 = icmp eq i32 %5, %6
  br i1 %cmp31, label %if.end34, label %return

if.end34:                                         ; preds = %if.end27
  %call35 = tail call fastcc zeroext i8 @handle_compress(%struct.bz_stream* %strm) #13
  %7 = load i32* %3, align 4, !tbaa !3
  %cmp37 = icmp eq i32 %7, 0
  br i1 %cmp37, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %if.end34
  %state_in_ch.i = getelementptr inbounds i8* %0, i64 92
  %8 = bitcast i8* %state_in_ch.i to i32*
  %9 = load i32* %8, align 4, !tbaa !3
  %cmp.i = icmp ult i32 %9, 256
  br i1 %cmp.i, label %land.lhs.true.i, label %lor.lhs.false41

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %state_in_len.i = getelementptr inbounds i8* %0, i64 96
  %10 = bitcast i8* %state_in_len.i to i32*
  %11 = load i32* %10, align 4, !tbaa !3
  %cmp1.i = icmp sgt i32 %11, 0
  br i1 %cmp1.i, label %return, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %land.lhs.true.i, %lor.lhs.false
  %state_out_pos = getelementptr inbounds i8* %0, i64 120
  %12 = bitcast i8* %state_out_pos to i32*
  %13 = load i32* %12, align 4, !tbaa !3
  %numZ = getelementptr inbounds i8* %0, i64 116
  %14 = bitcast i8* %numZ to i32*
  %15 = load i32* %14, align 4, !tbaa !3
  %cmp42 = icmp slt i32 %13, %15
  br i1 %cmp42, label %return, label %if.end45

if.end45:                                         ; preds = %lor.lhs.false41
  store i32 2, i32* %2, align 4, !tbaa !3
  br label %return

sw.bb47:                                          ; preds = %preswitch
  %cmp48 = icmp eq i32 %action, 2
  br i1 %cmp48, label %if.end51, label %return

if.end51:                                         ; preds = %sw.bb47
  %16 = load i32* %3, align 4, !tbaa !3
  %17 = load i32* %avail_in, align 4, !tbaa !3
  %cmp55 = icmp eq i32 %16, %17
  br i1 %cmp55, label %if.end58, label %return

if.end58:                                         ; preds = %if.end51
  %call59 = tail call fastcc zeroext i8 @handle_compress(%struct.bz_stream* %strm) #13
  %tobool60 = icmp eq i8 %call59, 0
  br i1 %tobool60, label %return, label %if.end62

if.end62:                                         ; preds = %if.end58
  %18 = load i32* %3, align 4, !tbaa !3
  %cmp64 = icmp eq i32 %18, 0
  br i1 %cmp64, label %lor.lhs.false66, label %return

lor.lhs.false66:                                  ; preds = %if.end62
  %state_in_ch.i109 = getelementptr inbounds i8* %0, i64 92
  %19 = bitcast i8* %state_in_ch.i109 to i32*
  %20 = load i32* %19, align 4, !tbaa !3
  %cmp.i110 = icmp ult i32 %20, 256
  br i1 %cmp.i110, label %land.lhs.true.i113, label %lor.lhs.false69

land.lhs.true.i113:                               ; preds = %lor.lhs.false66
  %state_in_len.i111 = getelementptr inbounds i8* %0, i64 96
  %21 = bitcast i8* %state_in_len.i111 to i32*
  %22 = load i32* %21, align 4, !tbaa !3
  %cmp1.i112 = icmp sgt i32 %22, 0
  br i1 %cmp1.i112, label %return, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %land.lhs.true.i113, %lor.lhs.false66
  %state_out_pos70 = getelementptr inbounds i8* %0, i64 120
  %23 = bitcast i8* %state_out_pos70 to i32*
  %24 = load i32* %23, align 4, !tbaa !3
  %numZ71 = getelementptr inbounds i8* %0, i64 116
  %25 = bitcast i8* %numZ71 to i32*
  %26 = load i32* %25, align 4, !tbaa !3
  %cmp72 = icmp slt i32 %24, %26
  br i1 %cmp72, label %return, label %if.end75

if.end75:                                         ; preds = %lor.lhs.false69
  store i32 1, i32* %2, align 4, !tbaa !3
  br label %return

return.loopexit:                                  ; preds = %preswitch, %sw.bb8
  %retval.0.ph = phi i32 [ -2, %sw.bb8 ], [ -1, %preswitch ]
  br label %return

return:                                           ; preds = %preswitch, %return.loopexit, %land.lhs.true.i113, %land.lhs.true.i, %lor.lhs.false69, %if.end62, %if.end58, %if.end51, %sw.bb47, %lor.lhs.false41, %if.end34, %if.end27, %sw.bb23, %if.end3, %if.end, %entry, %if.end75, %if.end45, %if.then10
  %retval.0 = phi i32 [ 4, %if.end75 ], [ 1, %if.end45 ], [ %cond, %if.then10 ], [ -2, %entry ], [ -2, %if.end ], [ -2, %if.end3 ], [ -1, %sw.bb23 ], [ -1, %if.end27 ], [ 2, %if.end34 ], [ 2, %lor.lhs.false41 ], [ -1, %sw.bb47 ], [ -1, %if.end51 ], [ -1, %if.end58 ], [ 3, %if.end62 ], [ 3, %lor.lhs.false69 ], [ 2, %land.lhs.true.i ], [ 3, %land.lhs.true.i113 ], [ %retval.0.ph, %return.loopexit ], [ 0, %preswitch ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc zeroext i8 @handle_compress(%struct.bz_stream* nocapture %strm) #4 {
entry:
  %state = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8
  %0 = load i8** %state, align 8, !tbaa !0
  %1 = bitcast i8* %0 to %struct.EState*
  %state1 = getelementptr inbounds i8* %0, i64 12
  %2 = bitcast i8* %state1 to i32*
  %state_out_pos.i = getelementptr inbounds i8* %0, i64 120
  %3 = bitcast i8* %state_out_pos.i to i32*
  %strm.i = bitcast i8* %0 to %struct.bz_stream**
  %numZ = getelementptr inbounds i8* %0, i64 116
  %4 = bitcast i8* %numZ to i32*
  %mode = getelementptr inbounds i8* %0, i64 8
  %5 = bitcast i8* %mode to i32*
  %avail_in_expect = getelementptr inbounds i8* %0, i64 16
  %6 = bitcast i8* %avail_in_expect to i32*
  %state_in_ch.i100 = getelementptr inbounds i8* %0, i64 92
  %7 = bitcast i8* %state_in_ch.i100 to i32*
  %state_in_len.i = getelementptr inbounds i8* %0, i64 96
  %8 = bitcast i8* %state_in_len.i to i32*
  %nblock.i116 = getelementptr inbounds i8* %0, i64 108
  %9 = bitcast i8* %nblock.i116 to i32*
  %blockCRC.i119 = getelementptr inbounds i8* %0, i64 648
  %10 = bitcast i8* %blockCRC.i119 to i32*
  %11 = getelementptr i8* %0, i64 128
  %blockNo.i = getelementptr inbounds i8* %0, i64 660
  %12 = bitcast i8* %blockNo.i to i32*
  %zbits.i = getelementptr inbounds i8* %0, i64 80
  %13 = bitcast i8* %zbits.i to i8**
  %nblockMAX.i = getelementptr inbounds i8* %0, i64 112
  %14 = bitcast i8* %nblockMAX.i to i32*
  %block.i = getelementptr inbounds i8* %0, i64 64
  %15 = bitcast i8* %block.i to i8**
  br label %while.body.outer

while.body.outer:                                 ; preds = %if.else57, %if.then55, %flush_RL.exit, %entry
  %progress_out.0.ph = phi i8 [ 0, %entry ], [ %progress_out.1131, %flush_RL.exit ], [ %progress_out.1131, %if.then55 ], [ %progress_out.1131, %if.else57 ]
  %progress_in.0.ph = phi i8 [ 0, %entry ], [ %or3896, %flush_RL.exit ], [ %or3896, %if.then55 ], [ %or3896, %if.else57 ]
  %.pre = load i32* %2, align 4, !tbaa !3
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.outer
  switch i32 %.pre, label %while.body [
    i32 1, label %if.then
    i32 2, label %if.end30.if.then34_crit_edge
  ]

if.then:                                          ; preds = %while.body
  %16 = load %struct.bz_stream** %strm.i, align 8, !tbaa !0
  %avail_out31.i = getelementptr inbounds %struct.bz_stream* %16, i64 0, i32 5
  %17 = load i32* %avail_out31.i, align 4, !tbaa !3
  %cmp32.i = icmp eq i32 %17, 0
  br i1 %cmp32.i, label %copy_output_until_stop.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.backedge.i, %if.then
  %18 = phi %struct.bz_stream* [ %16, %if.then ], [ %28, %while.body.backedge.i ]
  %progress_out.033.i = phi i8 [ 0, %if.then ], [ 1, %while.body.backedge.i ]
  %19 = load i32* %3, align 4, !tbaa !3
  %20 = load i32* %4, align 4, !tbaa !3
  %cmp1.i = icmp slt i32 %19, %20
  br i1 %cmp1.i, label %if.end3.i, label %copy_output_until_stop.exit

if.end3.i:                                        ; preds = %if.end.i
  %idxprom.i = sext i32 %19 to i64
  %21 = load i8** %13, align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds i8* %21, i64 %idxprom.i
  %22 = load i8* %arrayidx.i, align 1, !tbaa !1
  %next_out.i = getelementptr inbounds %struct.bz_stream* %18, i64 0, i32 4
  %23 = load i8** %next_out.i, align 8, !tbaa !0
  store i8 %22, i8* %23, align 1, !tbaa !1
  %24 = load i32* %3, align 4, !tbaa !3
  %inc.i = add nsw i32 %24, 1
  store i32 %inc.i, i32* %3, align 4, !tbaa !3
  %25 = load %struct.bz_stream** %strm.i, align 8, !tbaa !0
  %avail_out8.i = getelementptr inbounds %struct.bz_stream* %25, i64 0, i32 5
  %26 = load i32* %avail_out8.i, align 4, !tbaa !3
  %dec.i = add i32 %26, -1
  store i32 %dec.i, i32* %avail_out8.i, align 4, !tbaa !3
  %next_out10.i = getelementptr inbounds %struct.bz_stream* %25, i64 0, i32 4
  %27 = load i8** %next_out10.i, align 8, !tbaa !0
  %incdec.ptr.i = getelementptr inbounds i8* %27, i64 1
  store i8* %incdec.ptr.i, i8** %next_out10.i, align 8, !tbaa !0
  %28 = load %struct.bz_stream** %strm.i, align 8, !tbaa !0
  %total_out_lo32.i = getelementptr inbounds %struct.bz_stream* %28, i64 0, i32 6
  %29 = load i32* %total_out_lo32.i, align 4, !tbaa !3
  %inc12.i = add i32 %29, 1
  store i32 %inc12.i, i32* %total_out_lo32.i, align 4, !tbaa !3
  %cmp15.i = icmp eq i32 %inc12.i, 0
  br i1 %cmp15.i, label %if.then16.i, label %while.body.backedge.i

if.then16.i:                                      ; preds = %if.end3.i
  %total_out_hi32.i = getelementptr inbounds %struct.bz_stream* %28, i64 0, i32 7
  %30 = load i32* %total_out_hi32.i, align 4, !tbaa !3
  %inc18.i = add i32 %30, 1
  store i32 %inc18.i, i32* %total_out_hi32.i, align 4, !tbaa !3
  br label %while.body.backedge.i

while.body.backedge.i:                            ; preds = %if.then16.i, %if.end3.i
  %avail_out.i = getelementptr inbounds %struct.bz_stream* %28, i64 0, i32 5
  %31 = load i32* %avail_out.i, align 4, !tbaa !3
  %cmp.i = icmp eq i32 %31, 0
  br i1 %cmp.i, label %copy_output_until_stop.exit, label %if.end.i

copy_output_until_stop.exit:                      ; preds = %if.end.i, %while.body.backedge.i, %if.then
  %progress_out.0.lcssa.i = phi i8 [ 0, %if.then ], [ %progress_out.033.i, %if.end.i ], [ 1, %while.body.backedge.i ]
  %or97 = or i8 %progress_out.0.lcssa.i, %progress_out.0.ph
  %32 = load i32* %3, align 4, !tbaa !3
  %33 = load i32* %4, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %32, %33
  br i1 %cmp4, label %while.end, label %if.end

if.end:                                           ; preds = %copy_output_until_stop.exit
  %34 = load i32* %5, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %34, 4
  br i1 %cmp7, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %35 = load i32* %6, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %35, 0
  br i1 %cmp9, label %land.lhs.true11, label %if.end15

land.lhs.true11:                                  ; preds = %land.lhs.true
  %36 = load i32* %7, align 4, !tbaa !3
  %cmp.i101 = icmp ult i32 %36, 256
  br i1 %cmp.i101, label %land.lhs.true.i, label %while.end

land.lhs.true.i:                                  ; preds = %land.lhs.true11
  %37 = load i32* %8, align 4, !tbaa !3
  %cmp1.i102 = icmp sgt i32 %37, 0
  br i1 %cmp1.i102, label %if.end15, label %while.end

if.end15:                                         ; preds = %land.lhs.true.i, %land.lhs.true, %if.end
  store i32 0, i32* %9, align 4, !tbaa !3
  store i32 0, i32* %4, align 4, !tbaa !3
  store i32 0, i32* %3, align 4, !tbaa !3
  store i32 -1, i32* %10, align 4, !tbaa !3
  tail call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 256, i32 1, i1 false) #7
  %38 = load i32* %12, align 4, !tbaa !3
  %inc1.i = add nsw i32 %38, 1
  store i32 %inc1.i, i32* %12, align 4, !tbaa !3
  store i32 2, i32* %2, align 4, !tbaa !3
  %cmp18 = icmp eq i32 %34, 3
  br i1 %cmp18, label %land.lhs.true20, label %if.then34

land.lhs.true20:                                  ; preds = %if.end15
  %39 = load i32* %6, align 4, !tbaa !3
  %cmp22 = icmp eq i32 %39, 0
  br i1 %cmp22, label %land.lhs.true24, label %if.end30.if.then34_crit_edge

land.lhs.true24:                                  ; preds = %land.lhs.true20
  %40 = load i32* %7, align 4, !tbaa !3
  %cmp.i121 = icmp ult i32 %40, 256
  br i1 %cmp.i121, label %land.lhs.true.i124, label %while.end

land.lhs.true.i124:                               ; preds = %land.lhs.true24
  %41 = load i32* %8, align 4, !tbaa !3
  %cmp1.i123 = icmp sgt i32 %41, 0
  br i1 %cmp1.i123, label %if.end30.if.then34_crit_edge, label %while.end

if.end30.if.then34_crit_edge:                     ; preds = %while.body, %land.lhs.true20, %land.lhs.true.i124
  %progress_out.1141 = phi i8 [ %or97, %land.lhs.true.i124 ], [ %or97, %land.lhs.true20 ], [ %progress_out.0.ph, %while.body ]
  %.pre139 = load i32* %5, align 4, !tbaa !3
  br label %if.then34

if.then34:                                        ; preds = %if.end30.if.then34_crit_edge, %if.end15
  %42 = phi i32 [ %.pre139, %if.end30.if.then34_crit_edge ], [ %34, %if.end15 ]
  %progress_out.1131 = phi i8 [ %progress_out.1141, %if.end30.if.then34_crit_edge ], [ %or97, %if.end15 ]
  %cmp.i103 = icmp eq i32 %42, 2
  %43 = load i32* %9, align 4, !tbaa !3
  %44 = load i32* %14, align 4, !tbaa !3
  %cmp1223.i = icmp slt i32 %43, %44
  br i1 %cmp.i103, label %while.body.preheader.i, label %while.body60.preheader.i

while.body60.preheader.i:                         ; preds = %if.then34
  br i1 %cmp1223.i, label %if.end66.lr.ph.i, label %copy_input_until_stop.exit

if.end66.lr.ph.i:                                 ; preds = %while.body60.preheader.i
  %.pre231.i = load %struct.bz_stream** %strm.i, align 8, !tbaa !0
  br label %if.end66.i

while.body.preheader.i:                           ; preds = %if.then34
  br i1 %cmp1223.i, label %if.end.lr.ph.i106, label %copy_input_until_stop.exit

if.end.lr.ph.i106:                                ; preds = %while.body.preheader.i
  %.pre.i = load %struct.bz_stream** %strm.i, align 8, !tbaa !0
  %avail_in.phi.trans.insert.i = getelementptr inbounds %struct.bz_stream* %.pre.i, i64 0, i32 1
  %.pre232.i = load i32* %avail_in.phi.trans.insert.i, align 4, !tbaa !3
  br label %if.end.i107

if.end.i107:                                      ; preds = %while.body.backedge.i115, %if.end.lr.ph.i106
  %45 = phi i32 [ %44, %if.end.lr.ph.i106 ], [ %65, %while.body.backedge.i115 ]
  %46 = phi i32 [ %43, %if.end.lr.ph.i106 ], [ %64, %while.body.backedge.i115 ]
  %47 = phi i32 [ %.pre232.i, %if.end.lr.ph.i106 ], [ %dec.i113, %while.body.backedge.i115 ]
  %48 = phi %struct.bz_stream* [ %.pre.i, %if.end.lr.ph.i106 ], [ %60, %while.body.backedge.i115 ]
  %progress_in.0224.i = phi i8 [ 0, %if.end.lr.ph.i106 ], [ 1, %while.body.backedge.i115 ]
  %cmp3.i = icmp eq i32 %47, 0
  br i1 %cmp3.i, label %copy_input_until_stop.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i107
  %next_in.i = getelementptr inbounds %struct.bz_stream* %48, i64 0, i32 0
  %49 = load i8** %next_in.i, align 8, !tbaa !0
  %50 = load i8* %49, align 1, !tbaa !1
  %conv.i = zext i8 %50 to i32
  %51 = load i32* %7, align 4, !tbaa !3
  %cmp7.i = icmp eq i32 %conv.i, %51
  %52 = load i32* %8, align 4, !tbaa !3
  br i1 %cmp7.i, label %lor.lhs.false.i, label %land.lhs.true.i108

land.lhs.true.i108:                               ; preds = %if.end5.i
  %cmp9.i = icmp eq i32 %52, 1
  br i1 %cmp9.i, label %if.then11.i, label %if.then32.i

if.then11.i:                                      ; preds = %land.lhs.true.i108
  %conv13.i = trunc i32 %51 to i8
  %53 = load i32* %10, align 4, !tbaa !3
  %shl.i = shl i32 %53, 8
  %shr.i = lshr i32 %53, 24
  %conv15.i = and i32 %51, 255
  %xor.i = xor i32 %shr.i, %conv15.i
  %idxprom.i109 = zext i32 %xor.i to i64
  %arrayidx.i110 = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom.i109
  %54 = load i32* %arrayidx.i110, align 4, !tbaa !3
  %xor16.i = xor i32 %shl.i, %54
  store i32 %xor16.i, i32* %10, align 4, !tbaa !3
  %idxprom19.i = zext i32 %51 to i64
  %arrayidx20.i = getelementptr inbounds %struct.EState* %1, i64 0, i32 22, i64 %idxprom19.i
  store i8 1, i8* %arrayidx20.i, align 1, !tbaa !1
  %55 = load i32* %9, align 4, !tbaa !3
  %idxprom22.i = sext i32 %55 to i64
  %56 = load i8** %15, align 8, !tbaa !0
  %arrayidx23.i = getelementptr inbounds i8* %56, i64 %idxprom22.i
  store i8 %conv13.i, i8* %arrayidx23.i, align 1, !tbaa !1
  %57 = load i32* %9, align 4, !tbaa !3
  %inc.i111 = add nsw i32 %57, 1
  store i32 %inc.i111, i32* %9, align 4, !tbaa !3
  store i32 %conv.i, i32* %7, align 4, !tbaa !3
  br label %if.end44.i

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %cmp30.i = icmp eq i32 %52, 255
  br i1 %cmp30.i, label %if.then32.i, label %if.else40.i

if.then32.i:                                      ; preds = %lor.lhs.false.i, %land.lhs.true.i108
  %cmp34.i = icmp ult i32 %51, 256
  br i1 %cmp34.i, label %if.then36.i, label %if.end37.i

if.then36.i:                                      ; preds = %if.then32.i
  tail call fastcc void @add_pair_to_block(%struct.EState* %1) #11
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then36.i, %if.then32.i
  store i32 %conv.i, i32* %7, align 4, !tbaa !3
  store i32 1, i32* %8, align 4, !tbaa !3
  br label %if.end44.i

if.else40.i:                                      ; preds = %lor.lhs.false.i
  %inc42.i = add nsw i32 %52, 1
  store i32 %inc42.i, i32* %8, align 4, !tbaa !3
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else40.i, %if.end37.i, %if.then11.i
  %58 = load %struct.bz_stream** %strm.i, align 8, !tbaa !0
  %next_in46.i = getelementptr inbounds %struct.bz_stream* %58, i64 0, i32 0
  %59 = load i8** %next_in46.i, align 8, !tbaa !0
  %incdec.ptr.i112 = getelementptr inbounds i8* %59, i64 1
  store i8* %incdec.ptr.i112, i8** %next_in46.i, align 8, !tbaa !0
  %60 = load %struct.bz_stream** %strm.i, align 8, !tbaa !0
  %avail_in48.i = getelementptr inbounds %struct.bz_stream* %60, i64 0, i32 1
  %61 = load i32* %avail_in48.i, align 4, !tbaa !3
  %dec.i113 = add i32 %61, -1
  store i32 %dec.i113, i32* %avail_in48.i, align 4, !tbaa !3
  %total_in_lo32.i = getelementptr inbounds %struct.bz_stream* %60, i64 0, i32 2
  %62 = load i32* %total_in_lo32.i, align 4, !tbaa !3
  %inc50.i = add i32 %62, 1
  store i32 %inc50.i, i32* %total_in_lo32.i, align 4, !tbaa !3
  %cmp53.i = icmp eq i32 %inc50.i, 0
  br i1 %cmp53.i, label %if.then55.i, label %while.body.backedge.i115

if.then55.i:                                      ; preds = %if.end44.i
  %total_in_hi32.i = getelementptr inbounds %struct.bz_stream* %60, i64 0, i32 3
  %63 = load i32* %total_in_hi32.i, align 4, !tbaa !3
  %inc57.i = add i32 %63, 1
  store i32 %inc57.i, i32* %total_in_hi32.i, align 4, !tbaa !3
  br label %while.body.backedge.i115

while.body.backedge.i115:                         ; preds = %if.then55.i, %if.end44.i
  %64 = load i32* %9, align 4, !tbaa !3
  %65 = load i32* %14, align 4, !tbaa !3
  %cmp1.i114 = icmp slt i32 %64, %65
  br i1 %cmp1.i114, label %if.end.i107, label %copy_input_until_stop.exit

if.end66.i:                                       ; preds = %if.end151.i, %if.end66.lr.ph.i
  %66 = phi i32 [ %44, %if.end66.lr.ph.i ], [ %88, %if.end151.i ]
  %67 = phi i32 [ %43, %if.end66.lr.ph.i ], [ %87, %if.end151.i ]
  %68 = phi %struct.bz_stream* [ %.pre231.i, %if.end66.lr.ph.i ], [ %82, %if.end151.i ]
  %progress_in.1227.i = phi i8 [ 0, %if.end66.lr.ph.i ], [ 1, %if.end151.i ]
  %avail_in68.i = getelementptr inbounds %struct.bz_stream* %68, i64 0, i32 1
  %69 = load i32* %avail_in68.i, align 4, !tbaa !3
  %cmp69.i = icmp eq i32 %69, 0
  br i1 %cmp69.i, label %copy_input_until_stop.exit, label %if.end72.i

if.end72.i:                                       ; preds = %if.end66.i
  %70 = load i32* %6, align 4, !tbaa !3
  %cmp73.i = icmp eq i32 %70, 0
  br i1 %cmp73.i, label %copy_input_until_stop.exit, label %if.end76.i

if.end76.i:                                       ; preds = %if.end72.i
  %next_in79.i = getelementptr inbounds %struct.bz_stream* %68, i64 0, i32 0
  %71 = load i8** %next_in79.i, align 8, !tbaa !0
  %72 = load i8* %71, align 1, !tbaa !1
  %conv80.i = zext i8 %72 to i32
  %73 = load i32* %7, align 4, !tbaa !3
  %cmp82.i = icmp eq i32 %conv80.i, %73
  %74 = load i32* %8, align 4, !tbaa !3
  br i1 %cmp82.i, label %lor.lhs.false117.i, label %land.lhs.true84.i

land.lhs.true84.i:                                ; preds = %if.end76.i
  %cmp86.i = icmp eq i32 %74, 1
  br i1 %cmp86.i, label %if.then88.i, label %if.then121.i

if.then88.i:                                      ; preds = %land.lhs.true84.i
  %conv91.i = trunc i32 %73 to i8
  %75 = load i32* %10, align 4, !tbaa !3
  %shl93.i = shl i32 %75, 8
  %shr95.i = lshr i32 %75, 24
  %conv96.i = and i32 %73, 255
  %xor97.i = xor i32 %shr95.i, %conv96.i
  %idxprom98.i = zext i32 %xor97.i to i64
  %arrayidx99.i = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom98.i
  %76 = load i32* %arrayidx99.i, align 4, !tbaa !3
  %xor100.i = xor i32 %shl93.i, %76
  store i32 %xor100.i, i32* %10, align 4, !tbaa !3
  %idxprom103.i = zext i32 %73 to i64
  %arrayidx105.i = getelementptr inbounds %struct.EState* %1, i64 0, i32 22, i64 %idxprom103.i
  store i8 1, i8* %arrayidx105.i, align 1, !tbaa !1
  %77 = load i32* %9, align 4, !tbaa !3
  %idxprom107.i = sext i32 %77 to i64
  %78 = load i8** %15, align 8, !tbaa !0
  %arrayidx109.i = getelementptr inbounds i8* %78, i64 %idxprom107.i
  store i8 %conv91.i, i8* %arrayidx109.i, align 1, !tbaa !1
  %79 = load i32* %9, align 4, !tbaa !3
  %inc111.i = add nsw i32 %79, 1
  store i32 %inc111.i, i32* %9, align 4, !tbaa !3
  store i32 %conv80.i, i32* %7, align 4, !tbaa !3
  br label %if.end133.i

lor.lhs.false117.i:                               ; preds = %if.end76.i
  %cmp119.i = icmp eq i32 %74, 255
  br i1 %cmp119.i, label %if.then121.i, label %if.else129.i

if.then121.i:                                     ; preds = %lor.lhs.false117.i, %land.lhs.true84.i
  %cmp123.i = icmp ult i32 %73, 256
  br i1 %cmp123.i, label %if.then125.i, label %if.end126.i

if.then125.i:                                     ; preds = %if.then121.i
  tail call fastcc void @add_pair_to_block(%struct.EState* %1) #11
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then125.i, %if.then121.i
  store i32 %conv80.i, i32* %7, align 4, !tbaa !3
  store i32 1, i32* %8, align 4, !tbaa !3
  br label %if.end133.i

if.else129.i:                                     ; preds = %lor.lhs.false117.i
  %inc131.i = add nsw i32 %74, 1
  store i32 %inc131.i, i32* %8, align 4, !tbaa !3
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.else129.i, %if.end126.i, %if.then88.i
  %80 = load %struct.bz_stream** %strm.i, align 8, !tbaa !0
  %next_in135.i = getelementptr inbounds %struct.bz_stream* %80, i64 0, i32 0
  %81 = load i8** %next_in135.i, align 8, !tbaa !0
  %incdec.ptr136.i = getelementptr inbounds i8* %81, i64 1
  store i8* %incdec.ptr136.i, i8** %next_in135.i, align 8, !tbaa !0
  %82 = load %struct.bz_stream** %strm.i, align 8, !tbaa !0
  %avail_in138.i = getelementptr inbounds %struct.bz_stream* %82, i64 0, i32 1
  %83 = load i32* %avail_in138.i, align 4, !tbaa !3
  %dec139.i = add i32 %83, -1
  store i32 %dec139.i, i32* %avail_in138.i, align 4, !tbaa !3
  %total_in_lo32141.i = getelementptr inbounds %struct.bz_stream* %82, i64 0, i32 2
  %84 = load i32* %total_in_lo32141.i, align 4, !tbaa !3
  %inc142.i = add i32 %84, 1
  store i32 %inc142.i, i32* %total_in_lo32141.i, align 4, !tbaa !3
  %cmp145.i = icmp eq i32 %inc142.i, 0
  br i1 %cmp145.i, label %if.then147.i, label %if.end151.i

if.then147.i:                                     ; preds = %if.end133.i
  %total_in_hi32149.i = getelementptr inbounds %struct.bz_stream* %82, i64 0, i32 3
  %85 = load i32* %total_in_hi32149.i, align 4, !tbaa !3
  %inc150.i = add i32 %85, 1
  store i32 %inc150.i, i32* %total_in_hi32149.i, align 4, !tbaa !3
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.then147.i, %if.end133.i
  %86 = load i32* %6, align 4, !tbaa !3
  %dec153.i = add i32 %86, -1
  store i32 %dec153.i, i32* %6, align 4, !tbaa !3
  %87 = load i32* %9, align 4, !tbaa !3
  %88 = load i32* %14, align 4, !tbaa !3
  %cmp63.i = icmp slt i32 %87, %88
  br i1 %cmp63.i, label %if.end66.i, label %copy_input_until_stop.exit

copy_input_until_stop.exit:                       ; preds = %if.end.i107, %while.body.backedge.i115, %if.end66.i, %if.end72.i, %if.end151.i, %while.body60.preheader.i, %while.body.preheader.i
  %89 = phi i32 [ %44, %while.body.preheader.i ], [ %44, %while.body60.preheader.i ], [ %66, %if.end66.i ], [ %66, %if.end72.i ], [ %88, %if.end151.i ], [ %45, %if.end.i107 ], [ %65, %while.body.backedge.i115 ]
  %90 = phi i32 [ %43, %while.body.preheader.i ], [ %43, %while.body60.preheader.i ], [ %67, %if.end66.i ], [ %67, %if.end72.i ], [ %87, %if.end151.i ], [ %46, %if.end.i107 ], [ %64, %while.body.backedge.i115 ]
  %progress_in.2.i = phi i8 [ 0, %while.body.preheader.i ], [ 0, %while.body60.preheader.i ], [ %progress_in.1227.i, %if.end66.i ], [ %progress_in.1227.i, %if.end72.i ], [ 1, %if.end151.i ], [ %progress_in.0224.i, %if.end.i107 ], [ 1, %while.body.backedge.i115 ]
  %or3896 = or i8 %progress_in.2.i, %progress_in.0.ph
  %91 = load i32* %5, align 4, !tbaa !3
  %cmp41 = icmp eq i32 %91, 2
  br i1 %cmp41, label %if.else, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %copy_input_until_stop.exit
  %92 = load i32* %6, align 4, !tbaa !3
  %cmp45 = icmp eq i32 %92, 0
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %land.lhs.true43
  %93 = load i32* %7, align 4, !tbaa !3
  %cmp.i98 = icmp ult i32 %93, 256
  br i1 %cmp.i98, label %if.then.i, label %flush_RL.exit

if.then.i:                                        ; preds = %if.then47
  tail call fastcc void @add_pair_to_block(%struct.EState* %1) #11
  %.pre138 = load i32* %5, align 4, !tbaa !3
  br label %flush_RL.exit

flush_RL.exit:                                    ; preds = %if.then47, %if.then.i
  %94 = phi i32 [ %91, %if.then47 ], [ %.pre138, %if.then.i ]
  store i32 256, i32* %7, align 4, !tbaa !3
  store i32 0, i32* %8, align 4, !tbaa !3
  %cmp49 = icmp eq i32 %94, 4
  %conv51 = zext i1 %cmp49 to i8
  tail call void @BZ2_compressBlock(%struct.EState* %1, i8 zeroext %conv51) #11
  store i32 1, i32* %2, align 4, !tbaa !3
  br label %while.body.outer

if.else:                                          ; preds = %copy_input_until_stop.exit, %land.lhs.true43
  %cmp53 = icmp slt i32 %90, %89
  br i1 %cmp53, label %if.else57, label %if.then55

if.then55:                                        ; preds = %if.else
  tail call void @BZ2_compressBlock(%struct.EState* %1, i8 zeroext 0) #11
  store i32 1, i32* %2, align 4, !tbaa !3
  br label %while.body.outer

if.else57:                                        ; preds = %if.else
  %95 = load %struct.bz_stream** %strm.i, align 8, !tbaa !0
  %avail_in = getelementptr inbounds %struct.bz_stream* %95, i64 0, i32 1
  %96 = load i32* %avail_in, align 4, !tbaa !3
  %cmp59 = icmp eq i32 %96, 0
  br i1 %cmp59, label %while.end, label %while.body.outer

while.end:                                        ; preds = %if.else57, %land.lhs.true.i124, %land.lhs.true24, %land.lhs.true.i, %land.lhs.true11, %copy_output_until_stop.exit
  %progress_out.2 = phi i8 [ %or97, %copy_output_until_stop.exit ], [ %or97, %land.lhs.true11 ], [ %or97, %land.lhs.true.i ], [ %or97, %land.lhs.true24 ], [ %or97, %land.lhs.true.i124 ], [ %progress_out.1131, %if.else57 ]
  %progress_in.1 = phi i8 [ %progress_in.0.ph, %copy_output_until_stop.exit ], [ %progress_in.0.ph, %land.lhs.true11 ], [ %progress_in.0.ph, %land.lhs.true.i ], [ %progress_in.0.ph, %land.lhs.true24 ], [ %progress_in.0.ph, %land.lhs.true.i124 ], [ %or3896, %if.else57 ]
  %97 = or i8 %progress_in.1, %progress_out.2
  %98 = icmp ne i8 %97, 0
  %conv70 = zext i1 %98 to i8
  ret i8 %conv70
}

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm) #4 {
entry:
  %cmp = icmp eq %struct.bz_stream* %strm, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8
  %0 = load i8** %state, align 8, !tbaa !0
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %strm4 = bitcast i8* %0 to %struct.bz_stream**
  %1 = load %struct.bz_stream** %strm4, align 8, !tbaa !0
  %cmp5 = icmp eq %struct.bz_stream* %1, %strm
  br i1 %cmp5, label %if.end7, label %return

if.end7:                                          ; preds = %if.end3
  %arr1 = getelementptr inbounds i8* %0, i64 24
  %2 = bitcast i8* %arr1 to i32**
  %3 = load i32** %2, align 8, !tbaa !0
  %cmp8 = icmp eq i32* %3, null
  br i1 %cmp8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  %bzfree = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10
  %4 = load void (i8*, i8*)** %bzfree, align 8, !tbaa !0
  %opaque = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  %5 = load i8** %opaque, align 8, !tbaa !0
  %6 = bitcast i32* %3 to i8*
  tail call void %4(i8* %5, i8* %6) #11
  br label %if.end11

if.end11:                                         ; preds = %if.end7, %if.then9
  %arr2 = getelementptr inbounds i8* %0, i64 32
  %7 = bitcast i8* %arr2 to i32**
  %8 = load i32** %7, align 8, !tbaa !0
  %cmp12 = icmp eq i32* %8, null
  br i1 %cmp12, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end11
  %bzfree14 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10
  %9 = load void (i8*, i8*)** %bzfree14, align 8, !tbaa !0
  %opaque15 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  %10 = load i8** %opaque15, align 8, !tbaa !0
  %11 = bitcast i32* %8 to i8*
  tail call void %9(i8* %10, i8* %11) #11
  br label %if.end17

if.end17:                                         ; preds = %if.end11, %if.then13
  %ftab = getelementptr inbounds i8* %0, i64 40
  %12 = bitcast i8* %ftab to i32**
  %13 = load i32** %12, align 8, !tbaa !0
  %cmp18 = icmp eq i32* %13, null
  %bzfree24.pre = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10
  br i1 %cmp18, label %if.end17.if.end23_crit_edge, label %if.then19

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  %opaque25.pre = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  br label %if.end23

if.then19:                                        ; preds = %if.end17
  %14 = load void (i8*, i8*)** %bzfree24.pre, align 8, !tbaa !0
  %opaque21 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  %15 = load i8** %opaque21, align 8, !tbaa !0
  %16 = bitcast i32* %13 to i8*
  tail call void %14(i8* %15, i8* %16) #11
  br label %if.end23

if.end23:                                         ; preds = %if.end17.if.end23_crit_edge, %if.then19
  %opaque25.pre-phi = phi i8** [ %opaque25.pre, %if.end17.if.end23_crit_edge ], [ %opaque21, %if.then19 ]
  %17 = load void (i8*, i8*)** %bzfree24.pre, align 8, !tbaa !0
  %18 = load i8** %opaque25.pre-phi, align 8, !tbaa !0
  %19 = load i8** %state, align 8, !tbaa !0
  tail call void %17(i8* %18, i8* %19) #11
  store i8* null, i8** %state, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end3, %if.end, %entry, %if.end23
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -2, %entry ], [ -2, %if.end ], [ -2, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzDecompressInit(%struct.bz_stream* %strm, i32 %verbosity, i32 %small) #4 {
entry:
  %cmp = icmp eq %struct.bz_stream* %strm, null
  %0 = icmp ugt i32 %small, 1
  %or.cond = or i1 %cmp, %0
  %1 = icmp ugt i32 %verbosity, 4
  %or.cond56 = or i1 %or.cond, %1
  br i1 %or.cond56, label %return, label %if.end10

if.end10:                                         ; preds = %entry
  %bzalloc = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 9
  %2 = load i8* (i8*, i32, i32)** %bzalloc, align 8, !tbaa !0
  %cmp11 = icmp eq i8* (i8*, i32, i32)* %2, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %bzalloc, align 8, !tbaa !0
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %3 = phi i8* (i8*, i32, i32)* [ @default_bzalloc, %if.then12 ], [ %2, %if.end10 ]
  %bzfree = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10
  %4 = load void (i8*, i8*)** %bzfree, align 8, !tbaa !0
  %cmp15 = icmp eq void (i8*, i8*)* %4, null
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %bzfree, align 8, !tbaa !0
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14
  %opaque = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  %5 = load i8** %opaque, align 8, !tbaa !0
  %call20 = tail call i8* %3(i8* %5, i32 64144, i32 1) #11
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %return, label %if.end23

if.end23:                                         ; preds = %if.end18
  %strm24 = bitcast i8* %call20 to %struct.bz_stream**
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm24, align 8, !tbaa !0
  %state = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8
  store i8* %call20, i8** %state, align 8, !tbaa !0
  %state25 = getelementptr inbounds i8* %call20, i64 8
  %6 = bitcast i8* %state25 to i32*
  store i32 10, i32* %6, align 4, !tbaa !3
  %bsLive = getelementptr inbounds i8* %call20, i64 36
  %7 = bitcast i8* %bsLive to i32*
  store i32 0, i32* %7, align 4, !tbaa !3
  %bsBuff = getelementptr inbounds i8* %call20, i64 32
  %8 = bitcast i8* %bsBuff to i32*
  store i32 0, i32* %8, align 4, !tbaa !3
  %calculatedCombinedCRC = getelementptr inbounds i8* %call20, i64 3188
  %9 = bitcast i8* %calculatedCombinedCRC to i32*
  store i32 0, i32* %9, align 4, !tbaa !3
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 2
  store i32 0, i32* %total_in_lo32, align 4, !tbaa !3
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 3
  store i32 0, i32* %total_in_hi32, align 4, !tbaa !3
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 6
  store i32 0, i32* %total_out_lo32, align 4, !tbaa !3
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 7
  store i32 0, i32* %total_out_hi32, align 4, !tbaa !3
  %conv = trunc i32 %small to i8
  %10 = getelementptr inbounds i8* %call20, i64 44
  store i8 %conv, i8* %10, align 1, !tbaa !1
  %tt = getelementptr inbounds i8* %call20, i64 3152
  %currBlockNo = getelementptr inbounds i8* %call20, i64 48
  %11 = bitcast i8* %currBlockNo to i32*
  store i32 0, i32* %11, align 4, !tbaa !3
  %verbosity26 = getelementptr inbounds i8* %call20, i64 52
  %12 = bitcast i8* %verbosity26 to i32*
  call void @llvm.memset.p0i8.i64(i8* %tt, i8 0, i64 24, i32 8, i1 false)
  store i32 %verbosity, i32* %12, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end18, %entry, %if.end23
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -2, %entry ], [ -3, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @BZ2_indexIntoF(i32 %indx, i32* nocapture %cftab) #5 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %na.0 = phi i32 [ 256, %entry ], [ %shr.na.0, %do.body ]
  %nb.0 = phi i32 [ 0, %entry ], [ %nb.0.shr, %do.body ]
  %add = add nsw i32 %nb.0, %na.0
  %shr = ashr i32 %add, 1
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i32* %cftab, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, %indx
  %shr.na.0 = select i1 %cmp, i32 %shr, i32 %na.0
  %nb.0.shr = select i1 %cmp, i32 %nb.0, i32 %shr
  %sub = sub nsw i32 %shr.na.0, %nb.0.shr
  %cmp1 = icmp eq i32 %sub, 1
  br i1 %cmp1, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  ret i32 %nb.0.shr
}

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzDecompress(%struct.bz_stream* %strm) #4 {
entry:
  %cmp = icmp eq %struct.bz_stream* %strm, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8
  %0 = load i8** %state, align 8, !tbaa !0
  %1 = bitcast i8* %0 to %struct.DState*
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %strm4 = bitcast i8* %0 to %struct.bz_stream**
  %2 = load %struct.bz_stream** %strm4, align 8, !tbaa !0
  %cmp5 = icmp eq %struct.bz_stream* %2, %strm
  br i1 %cmp5, label %while.body.preheader, label %return

while.body.preheader:                             ; preds = %if.end3
  %state8 = getelementptr inbounds i8* %0, i64 8
  %3 = bitcast i8* %state8 to i32*
  %4 = getelementptr inbounds i8* %0, i64 44
  %5 = getelementptr inbounds i8* %0, i64 20
  %calculatedBlockCRC276.i = getelementptr inbounds i8* %0, i64 3184
  %6 = bitcast i8* %calculatedBlockCRC276.i to i32*
  %7 = getelementptr inbounds i8* %0, i64 12
  %state_out_len278.i = getelementptr inbounds i8* %0, i64 16
  %8 = bitcast i8* %state_out_len278.i to i32*
  %nblock_used279.i = getelementptr inbounds i8* %0, i64 1092
  %9 = bitcast i8* %nblock_used279.i to i32*
  %k0280.i = getelementptr inbounds i8* %0, i64 64
  %10 = bitcast i8* %k0280.i to i32*
  %tt281.i = getelementptr inbounds i8* %0, i64 3152
  %11 = bitcast i8* %tt281.i to i32**
  %tPos282.i = getelementptr inbounds i8* %0, i64 60
  %12 = bitcast i8* %tPos282.i to i32*
  %save_nblock287.i = getelementptr inbounds i8* %0, i64 64080
  %13 = bitcast i8* %save_nblock287.i to i32*
  %rNToGo.i112 = getelementptr inbounds i8* %0, i64 24
  %14 = bitcast i8* %rNToGo.i112 to i32*
  %rTPos.i113 = getelementptr inbounds i8* %0, i64 28
  %15 = bitcast i8* %rTPos.i113 to i32*
  %verbosity = getelementptr inbounds i8* %0, i64 52
  %16 = bitcast i8* %verbosity to i32*
  %storedBlockCRC = getelementptr inbounds i8* %0, i64 3176
  %17 = bitcast i8* %storedBlockCRC to i32*
  %calculatedCombinedCRC = getelementptr inbounds i8* %0, i64 3188
  %18 = bitcast i8* %calculatedCombinedCRC to i32*
  %ll16413.i = getelementptr inbounds i8* %0, i64 3160
  %19 = bitcast i8* %ll16413.i to i16**
  %ll4419.i = getelementptr inbounds i8* %0, i64 3168
  %20 = bitcast i8* %ll4419.i to i8**
  %.pre = load i32* %3, align 4, !tbaa !3
  br label %while.body

while.body:                                       ; preds = %if.end65, %if.end47, %while.body.preheader
  %21 = phi i32 [ %.pre, %while.body.preheader ], [ %21, %if.end47 ], [ 2, %if.end65 ]
  switch i32 %21, label %if.end47 [
    i32 1, label %return
    i32 2, label %if.then14
  ]

if.then14:                                        ; preds = %while.body
  %22 = load i8* %4, align 1, !tbaa !1
  %tobool = icmp eq i8 %22, 0
  %23 = load i8* %5, align 1, !tbaa !1
  %tobool.i105 = icmp eq i8 %23, 0
  br i1 %tobool, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then14
  %24 = load %struct.bz_stream** %strm4, align 8, !tbaa !0
  %avail_out343923.i = getelementptr inbounds %struct.bz_stream* %24, i64 0, i32 5
  %25 = load i32* %avail_out343923.i, align 4, !tbaa !3
  %cmp344924.i = icmp eq i32 %25, 0
  br i1 %tobool.i105, label %while.body341.preheader.i, label %while.body2.preheader.i

while.body2.preheader.i:                          ; preds = %if.then15
  br i1 %cmp344924.i, label %if.end20, label %if.end.i

while.body341.preheader.i:                        ; preds = %if.then15
  br i1 %cmp344924.i, label %if.end20, label %if.end347.i

if.end.i:                                         ; preds = %while.body2.backedge.i, %while.body2.preheader.i
  %26 = phi %struct.bz_stream* [ %24, %while.body2.preheader.i ], [ %53, %while.body2.backedge.i ]
  %27 = load i32* %8, align 4, !tbaa !3
  %cmp4.i = icmp eq i32 %27, 0
  br i1 %cmp4.i, label %while.end.i, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %28 = load i8* %7, align 1, !tbaa !1
  %next_out.i = getelementptr inbounds %struct.bz_stream* %26, i64 0, i32 4
  %29 = load i8** %next_out.i, align 8, !tbaa !0
  store i8 %28, i8* %29, align 1, !tbaa !1
  %30 = load i32* %6, align 4, !tbaa !3
  %shl.i = shl i32 %30, 8
  %shr.i = lshr i32 %30, 24
  %31 = load i8* %7, align 1, !tbaa !1
  %conv.i = zext i8 %31 to i32
  %xor.i = xor i32 %conv.i, %shr.i
  %idxprom.i = zext i32 %xor.i to i64
  %arrayidx.i = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom.i
  %32 = load i32* %arrayidx.i, align 4, !tbaa !3
  %xor10.i = xor i32 %32, %shl.i
  store i32 %xor10.i, i32* %6, align 4, !tbaa !3
  %33 = load i32* %8, align 4, !tbaa !3
  %dec.i = add nsw i32 %33, -1
  store i32 %dec.i, i32* %8, align 4, !tbaa !3
  %34 = load %struct.bz_stream** %strm4, align 8, !tbaa !0
  %next_out14.i = getelementptr inbounds %struct.bz_stream* %34, i64 0, i32 4
  %35 = load i8** %next_out14.i, align 8, !tbaa !0
  %incdec.ptr.i = getelementptr inbounds i8* %35, i64 1
  store i8* %incdec.ptr.i, i8** %next_out14.i, align 8, !tbaa !0
  %36 = load %struct.bz_stream** %strm4, align 8, !tbaa !0
  %avail_out16.i = getelementptr inbounds %struct.bz_stream* %36, i64 0, i32 5
  %37 = load i32* %avail_out16.i, align 4, !tbaa !3
  %dec17.i = add i32 %37, -1
  store i32 %dec17.i, i32* %avail_out16.i, align 4, !tbaa !3
  %total_out_lo32.i = getelementptr inbounds %struct.bz_stream* %36, i64 0, i32 6
  %38 = load i32* %total_out_lo32.i, align 4, !tbaa !3
  %inc.i = add i32 %38, 1
  store i32 %inc.i, i32* %total_out_lo32.i, align 4, !tbaa !3
  %cmp21.i = icmp eq i32 %inc.i, 0
  br i1 %cmp21.i, label %if.then23.i, label %while.body2.backedge.i

if.then23.i:                                      ; preds = %if.end6.i
  %total_out_hi32.i = getelementptr inbounds %struct.bz_stream* %36, i64 0, i32 7
  %39 = load i32* %total_out_hi32.i, align 4, !tbaa !3
  %inc25.i = add i32 %39, 1
  store i32 %inc25.i, i32* %total_out_hi32.i, align 4, !tbaa !3
  br label %while.body2.backedge.i

while.end.i:                                      ; preds = %if.end.i
  %40 = load i32* %9, align 4, !tbaa !3
  %41 = load i32* %13, align 4, !tbaa !3
  %add.i = add nsw i32 %41, 1
  %cmp27.i = icmp eq i32 %40, %add.i
  br i1 %cmp27.i, label %if.end20, label %if.end30.i

if.end30.i:                                       ; preds = %while.end.i
  %cmp34.i = icmp sgt i32 %40, %add.i
  br i1 %cmp34.i, label %return, label %if.end37.i

if.end37.i:                                       ; preds = %if.end30.i
  store i32 1, i32* %8, align 4, !tbaa !3
  %42 = load i32* %10, align 4, !tbaa !3
  %conv39.i = trunc i32 %42 to i8
  store i8 %conv39.i, i8* %7, align 1, !tbaa !1
  %43 = load i32* %12, align 4, !tbaa !3
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i, %if.end37.i
  %na.0.i.i = phi i32 [ 256, %if.end37.i ], [ %shr.na.0.i.i, %do.body.i.i ]
  %nb.0.i.i = phi i32 [ 0, %if.end37.i ], [ %nb.0.shr.i.i, %do.body.i.i ]
  %add.i.i = add nsw i32 %nb.0.i.i, %na.0.i.i
  %shr.i.i = ashr i32 %add.i.i, 1
  %idxprom.i.i = sext i32 %shr.i.i to i64
  %arrayidx.i.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i.i
  %44 = load i32* %arrayidx.i.i, align 4, !tbaa !3
  %cmp.i.i = icmp sgt i32 %44, %43
  %shr.na.0.i.i = select i1 %cmp.i.i, i32 %shr.i.i, i32 %na.0.i.i
  %nb.0.shr.i.i = select i1 %cmp.i.i, i32 %nb.0.i.i, i32 %shr.i.i
  %sub.i.i = sub nsw i32 %shr.na.0.i.i, %nb.0.shr.i.i
  %cmp1.i.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp1.i.i, label %BZ2_indexIntoF.exit.i, label %do.body.i.i

BZ2_indexIntoF.exit.i:                            ; preds = %do.body.i.i
  %idxprom43.i = zext i32 %43 to i64
  %45 = load i16** %19, align 8, !tbaa !0
  %arrayidx44.i = getelementptr inbounds i16* %45, i64 %idxprom43.i
  %46 = load i16* %arrayidx44.i, align 2, !tbaa !4
  %conv45.i = zext i16 %46 to i32
  %shr47.i = lshr i32 %43, 1
  %idxprom48.i = zext i32 %shr47.i to i64
  %47 = load i8** %20, align 8, !tbaa !0
  %arrayidx49.i = getelementptr inbounds i8* %47, i64 %idxprom48.i
  %48 = load i8* %arrayidx49.i, align 1, !tbaa !1
  %conv50.i = zext i8 %48 to i32
  %shl52.i = shl i32 %43, 2
  %and.i = and i32 %shl52.i, 4
  %shr53.i = lshr i32 %conv50.i, %and.i
  %and54.i = shl i32 %shr53.i, 16
  %shl55.i = and i32 %and54.i, 983040
  %or.i = or i32 %shl55.i, %conv45.i
  store i32 %or.i, i32* %12, align 4, !tbaa !3
  %49 = load i32* %14, align 4, !tbaa !3
  %cmp57.i = icmp eq i32 %49, 0
  br i1 %cmp57.i, label %if.then59.i, label %if.end71.i

if.then59.i:                                      ; preds = %BZ2_indexIntoF.exit.i
  %50 = load i32* %15, align 4, !tbaa !3
  %idxprom60.i = sext i32 %50 to i64
  %arrayidx61.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom60.i
  %51 = load i32* %arrayidx61.i, align 4, !tbaa !3
  store i32 %51, i32* %14, align 4, !tbaa !3
  %inc64.i = add nsw i32 %50, 1
  %cmp66.i = icmp eq i32 %inc64.i, 512
  %.inc64.i = select i1 %cmp66.i, i32 0, i32 %inc64.i
  store i32 %.inc64.i, i32* %15, align 4, !tbaa !3
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then59.i, %BZ2_indexIntoF.exit.i
  %52 = phi i32 [ %51, %if.then59.i ], [ %49, %BZ2_indexIntoF.exit.i ]
  %dec73.i = add nsw i32 %52, -1
  store i32 %dec73.i, i32* %14, align 4, !tbaa !3
  %inc81.i = add nsw i32 %40, 1
  store i32 %inc81.i, i32* %9, align 4, !tbaa !3
  %cmp85.i = icmp eq i32 %40, %41
  br i1 %cmp85.i, label %while.body2.backedge.i, label %if.end88.i

if.end88.i:                                       ; preds = %if.end71.i
  %cmp75.i = icmp eq i32 %dec73.i, 1
  %cond.i = zext i1 %cmp75.i to i32
  %call.masked.i = and i32 %nb.0.shr.i.i, 255
  %conv89.i = xor i32 %cond.i, %call.masked.i
  %cmp91.i = icmp eq i32 %conv89.i, %42
  br i1 %cmp91.i, label %if.end96.i, label %if.then93.i

if.then93.i:                                      ; preds = %if.end88.i
  store i32 %conv89.i, i32* %10, align 4, !tbaa !3
  br label %while.body2.backedge.i

while.body2.backedge.i:                           ; preds = %if.end206.i, %if.end138.i, %if.end71.i, %if.end328.i, %if.then229.i, %if.then161.i, %if.then93.i, %if.then23.i, %if.end6.i
  %53 = phi %struct.bz_stream* [ %26, %if.then93.i ], [ %26, %if.then161.i ], [ %26, %if.then229.i ], [ %26, %if.end328.i ], [ %36, %if.then23.i ], [ %36, %if.end6.i ], [ %26, %if.end71.i ], [ %26, %if.end138.i ], [ %26, %if.end206.i ]
  %avail_out.i = getelementptr inbounds %struct.bz_stream* %53, i64 0, i32 5
  %54 = load i32* %avail_out.i, align 4, !tbaa !3
  %cmp.i = icmp eq i32 %54, 0
  br i1 %cmp.i, label %if.end20, label %if.end.i

if.end96.i:                                       ; preds = %if.end88.i
  store i32 2, i32* %8, align 4, !tbaa !3
  br label %do.body.i921.i

do.body.i921.i:                                   ; preds = %do.body.i921.i, %if.end96.i
  %na.0.i910.i = phi i32 [ 256, %if.end96.i ], [ %shr.na.0.i917.i, %do.body.i921.i ]
  %nb.0.i911.i = phi i32 [ 0, %if.end96.i ], [ %nb.0.shr.i918.i, %do.body.i921.i ]
  %add.i912.i = add nsw i32 %nb.0.i911.i, %na.0.i910.i
  %shr.i913.i = ashr i32 %add.i912.i, 1
  %idxprom.i914.i = sext i32 %shr.i913.i to i64
  %arrayidx.i915.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i914.i
  %55 = load i32* %arrayidx.i915.i, align 4, !tbaa !3
  %cmp.i916.i = icmp sgt i32 %55, %or.i
  %shr.na.0.i917.i = select i1 %cmp.i916.i, i32 %shr.i913.i, i32 %na.0.i910.i
  %nb.0.shr.i918.i = select i1 %cmp.i916.i, i32 %nb.0.i911.i, i32 %shr.i913.i
  %sub.i919.i = sub nsw i32 %shr.na.0.i917.i, %nb.0.shr.i918.i
  %cmp1.i920.i = icmp eq i32 %sub.i919.i, 1
  br i1 %cmp1.i920.i, label %BZ2_indexIntoF.exit922.i, label %do.body.i921.i

BZ2_indexIntoF.exit922.i:                         ; preds = %do.body.i921.i
  %idxprom104.i = zext i32 %or.i to i64
  %arrayidx106.i = getelementptr inbounds i16* %45, i64 %idxprom104.i
  %56 = load i16* %arrayidx106.i, align 2, !tbaa !4
  %conv107.i = zext i16 %56 to i32
  %shr109.i = lshr i32 %or.i, 1
  %idxprom110.i = zext i32 %shr109.i to i64
  %arrayidx112.i = getelementptr inbounds i8* %47, i64 %idxprom110.i
  %57 = load i8* %arrayidx112.i, align 1, !tbaa !1
  %conv113.i = zext i8 %57 to i32
  %shl115.i = shl nuw nsw i32 %conv45.i, 2
  %and116.i = and i32 %shl115.i, 4
  %shr117.i = lshr i32 %conv113.i, %and116.i
  %and118.i = shl i32 %shr117.i, 16
  %shl119.i = and i32 %and118.i, 983040
  %or120.i = or i32 %shl119.i, %conv107.i
  store i32 %or120.i, i32* %12, align 4, !tbaa !3
  %cmp123.i = icmp eq i32 %dec73.i, 0
  br i1 %cmp123.i, label %if.then125.i, label %if.end138.i

if.then125.i:                                     ; preds = %BZ2_indexIntoF.exit922.i
  %58 = load i32* %15, align 4, !tbaa !3
  %idxprom127.i = sext i32 %58 to i64
  %arrayidx128.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom127.i
  %59 = load i32* %arrayidx128.i, align 4, !tbaa !3
  store i32 %59, i32* %14, align 4, !tbaa !3
  %inc131.i = add nsw i32 %58, 1
  %cmp133.i = icmp eq i32 %inc131.i, 512
  %.inc131.i = select i1 %cmp133.i, i32 0, i32 %inc131.i
  store i32 %.inc131.i, i32* %15, align 4, !tbaa !3
  br label %if.end138.i

if.end138.i:                                      ; preds = %if.then125.i, %BZ2_indexIntoF.exit922.i
  %60 = phi i32 [ %59, %if.then125.i ], [ %dec73.i, %BZ2_indexIntoF.exit922.i ]
  %dec140.i = add nsw i32 %60, -1
  store i32 %dec140.i, i32* %14, align 4, !tbaa !3
  %inc149.i = add nsw i32 %40, 2
  store i32 %inc149.i, i32* %9, align 4, !tbaa !3
  %cmp153.i = icmp eq i32 %inc81.i, %41
  br i1 %cmp153.i, label %while.body2.backedge.i, label %if.end156.i

if.end156.i:                                      ; preds = %if.end138.i
  %cmp142.i = icmp eq i32 %dec140.i, 1
  %cond144.i = zext i1 %cmp142.i to i32
  %call101.masked.i = and i32 %nb.0.shr.i918.i, 255
  %conv157.i = xor i32 %cond144.i, %call101.masked.i
  %cmp159.i = icmp eq i32 %conv157.i, %42
  br i1 %cmp159.i, label %if.end164.i, label %if.then161.i

if.then161.i:                                     ; preds = %if.end156.i
  store i32 %conv157.i, i32* %10, align 4, !tbaa !3
  br label %while.body2.backedge.i

if.end164.i:                                      ; preds = %if.end156.i
  store i32 3, i32* %8, align 4, !tbaa !3
  br label %do.body.i908.i

do.body.i908.i:                                   ; preds = %do.body.i908.i, %if.end164.i
  %na.0.i897.i = phi i32 [ 256, %if.end164.i ], [ %shr.na.0.i904.i, %do.body.i908.i ]
  %nb.0.i898.i = phi i32 [ 0, %if.end164.i ], [ %nb.0.shr.i905.i, %do.body.i908.i ]
  %add.i899.i = add nsw i32 %nb.0.i898.i, %na.0.i897.i
  %shr.i900.i = ashr i32 %add.i899.i, 1
  %idxprom.i901.i = sext i32 %shr.i900.i to i64
  %arrayidx.i902.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i901.i
  %61 = load i32* %arrayidx.i902.i, align 4, !tbaa !3
  %cmp.i903.i = icmp sgt i32 %61, %or120.i
  %shr.na.0.i904.i = select i1 %cmp.i903.i, i32 %shr.i900.i, i32 %na.0.i897.i
  %nb.0.shr.i905.i = select i1 %cmp.i903.i, i32 %nb.0.i898.i, i32 %shr.i900.i
  %sub.i906.i = sub nsw i32 %shr.na.0.i904.i, %nb.0.shr.i905.i
  %cmp1.i907.i = icmp eq i32 %sub.i906.i, 1
  br i1 %cmp1.i907.i, label %BZ2_indexIntoF.exit909.i, label %do.body.i908.i

BZ2_indexIntoF.exit909.i:                         ; preds = %do.body.i908.i
  %idxprom172.i = zext i32 %or120.i to i64
  %arrayidx174.i = getelementptr inbounds i16* %45, i64 %idxprom172.i
  %62 = load i16* %arrayidx174.i, align 2, !tbaa !4
  %conv175.i = zext i16 %62 to i32
  %shr177.i = lshr i32 %or120.i, 1
  %idxprom178.i = zext i32 %shr177.i to i64
  %arrayidx180.i = getelementptr inbounds i8* %47, i64 %idxprom178.i
  %63 = load i8* %arrayidx180.i, align 1, !tbaa !1
  %conv181.i = zext i8 %63 to i32
  %shl183.i = shl nuw nsw i32 %conv107.i, 2
  %and184.i = and i32 %shl183.i, 4
  %shr185.i = lshr i32 %conv181.i, %and184.i
  %and186.i = shl i32 %shr185.i, 16
  %shl187.i = and i32 %and186.i, 983040
  %or188.i = or i32 %shl187.i, %conv175.i
  store i32 %or188.i, i32* %12, align 4, !tbaa !3
  %cmp191.i = icmp eq i32 %dec140.i, 0
  br i1 %cmp191.i, label %if.then193.i, label %if.end206.i

if.then193.i:                                     ; preds = %BZ2_indexIntoF.exit909.i
  %64 = load i32* %15, align 4, !tbaa !3
  %idxprom195.i = sext i32 %64 to i64
  %arrayidx196.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom195.i
  %65 = load i32* %arrayidx196.i, align 4, !tbaa !3
  store i32 %65, i32* %14, align 4, !tbaa !3
  %inc199.i = add nsw i32 %64, 1
  %cmp201.i = icmp eq i32 %inc199.i, 512
  %.inc199.i = select i1 %cmp201.i, i32 0, i32 %inc199.i
  store i32 %.inc199.i, i32* %15, align 4, !tbaa !3
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.then193.i, %BZ2_indexIntoF.exit909.i
  %66 = phi i32 [ %65, %if.then193.i ], [ %dec140.i, %BZ2_indexIntoF.exit909.i ]
  %dec208.i = add nsw i32 %66, -1
  store i32 %dec208.i, i32* %14, align 4, !tbaa !3
  %inc217.i = add nsw i32 %40, 3
  store i32 %inc217.i, i32* %9, align 4, !tbaa !3
  %cmp221.i = icmp eq i32 %inc149.i, %41
  br i1 %cmp221.i, label %while.body2.backedge.i, label %if.end224.i

if.end224.i:                                      ; preds = %if.end206.i
  %cmp210.i = icmp eq i32 %dec208.i, 1
  %cond212.i = zext i1 %cmp210.i to i32
  %call169.masked.i = and i32 %nb.0.shr.i905.i, 255
  %conv225.i = xor i32 %cond212.i, %call169.masked.i
  %cmp227.i = icmp eq i32 %conv225.i, %42
  br i1 %cmp227.i, label %do.body.i895.i, label %if.then229.i

if.then229.i:                                     ; preds = %if.end224.i
  store i32 %conv225.i, i32* %10, align 4, !tbaa !3
  br label %while.body2.backedge.i

do.body.i895.i:                                   ; preds = %if.end224.i, %do.body.i895.i
  %na.0.i884.i = phi i32 [ %shr.na.0.i891.i, %do.body.i895.i ], [ 256, %if.end224.i ]
  %nb.0.i885.i = phi i32 [ %nb.0.shr.i892.i, %do.body.i895.i ], [ 0, %if.end224.i ]
  %add.i886.i = add nsw i32 %nb.0.i885.i, %na.0.i884.i
  %shr.i887.i = ashr i32 %add.i886.i, 1
  %idxprom.i888.i = sext i32 %shr.i887.i to i64
  %arrayidx.i889.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i888.i
  %67 = load i32* %arrayidx.i889.i, align 4, !tbaa !3
  %cmp.i890.i = icmp sgt i32 %67, %or188.i
  %shr.na.0.i891.i = select i1 %cmp.i890.i, i32 %shr.i887.i, i32 %na.0.i884.i
  %nb.0.shr.i892.i = select i1 %cmp.i890.i, i32 %nb.0.i885.i, i32 %shr.i887.i
  %sub.i893.i = sub nsw i32 %shr.na.0.i891.i, %nb.0.shr.i892.i
  %cmp1.i894.i = icmp eq i32 %sub.i893.i, 1
  br i1 %cmp1.i894.i, label %BZ2_indexIntoF.exit896.i, label %do.body.i895.i

BZ2_indexIntoF.exit896.i:                         ; preds = %do.body.i895.i
  %idxprom239.i = zext i32 %or188.i to i64
  %arrayidx241.i = getelementptr inbounds i16* %45, i64 %idxprom239.i
  %68 = load i16* %arrayidx241.i, align 2, !tbaa !4
  %conv242.i = zext i16 %68 to i32
  %shr244.i = lshr i32 %or188.i, 1
  %idxprom245.i = zext i32 %shr244.i to i64
  %arrayidx247.i = getelementptr inbounds i8* %47, i64 %idxprom245.i
  %69 = load i8* %arrayidx247.i, align 1, !tbaa !1
  %conv248.i = zext i8 %69 to i32
  %shl250.i = shl nuw nsw i32 %conv175.i, 2
  %and251.i = and i32 %shl250.i, 4
  %shr252.i = lshr i32 %conv248.i, %and251.i
  %and253.i = shl i32 %shr252.i, 16
  %shl254.i = and i32 %and253.i, 983040
  %or255.i = or i32 %shl254.i, %conv242.i
  store i32 %or255.i, i32* %12, align 4, !tbaa !3
  %cmp258.i = icmp eq i32 %dec208.i, 0
  br i1 %cmp258.i, label %if.then260.i, label %if.end273.i

if.then260.i:                                     ; preds = %BZ2_indexIntoF.exit896.i
  %70 = load i32* %15, align 4, !tbaa !3
  %idxprom262.i = sext i32 %70 to i64
  %arrayidx263.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom262.i
  %71 = load i32* %arrayidx263.i, align 4, !tbaa !3
  store i32 %71, i32* %14, align 4, !tbaa !3
  %inc266.i = add nsw i32 %70, 1
  %cmp268.i = icmp eq i32 %inc266.i, 512
  %.inc266.i = select i1 %cmp268.i, i32 0, i32 %inc266.i
  store i32 %.inc266.i, i32* %15, align 4, !tbaa !3
  br label %if.end273.i

if.end273.i:                                      ; preds = %if.then260.i, %BZ2_indexIntoF.exit896.i
  %72 = phi i32 [ %71, %if.then260.i ], [ %dec208.i, %BZ2_indexIntoF.exit896.i ]
  %dec275.i = add nsw i32 %72, -1
  store i32 %dec275.i, i32* %14, align 4, !tbaa !3
  %cmp277.i = icmp eq i32 %dec275.i, 1
  %cond279.i = zext i1 %cmp277.i to i32
  %inc284.i = add nsw i32 %40, 4
  store i32 %inc284.i, i32* %9, align 4, !tbaa !3
  %call236.masked.i = and i32 %nb.0.shr.i892.i, 255
  %conv285.i = xor i32 %cond279.i, %call236.masked.i
  %add286.i = add nsw i32 %conv285.i, 4
  store i32 %add286.i, i32* %8, align 4, !tbaa !3
  br label %do.body.i882.i

do.body.i882.i:                                   ; preds = %do.body.i882.i, %if.end273.i
  %na.0.i871.i = phi i32 [ 256, %if.end273.i ], [ %shr.na.0.i878.i, %do.body.i882.i ]
  %nb.0.i872.i = phi i32 [ 0, %if.end273.i ], [ %nb.0.shr.i879.i, %do.body.i882.i ]
  %add.i873.i = add nsw i32 %nb.0.i872.i, %na.0.i871.i
  %shr.i874.i = ashr i32 %add.i873.i, 1
  %idxprom.i875.i = sext i32 %shr.i874.i to i64
  %arrayidx.i876.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i875.i
  %73 = load i32* %arrayidx.i876.i, align 4, !tbaa !3
  %cmp.i877.i = icmp sgt i32 %73, %or255.i
  %shr.na.0.i878.i = select i1 %cmp.i877.i, i32 %shr.i874.i, i32 %na.0.i871.i
  %nb.0.shr.i879.i = select i1 %cmp.i877.i, i32 %nb.0.i872.i, i32 %shr.i874.i
  %sub.i880.i = sub nsw i32 %shr.na.0.i878.i, %nb.0.shr.i879.i
  %cmp1.i881.i = icmp eq i32 %sub.i880.i, 1
  br i1 %cmp1.i881.i, label %BZ2_indexIntoF.exit883.i, label %do.body.i882.i

BZ2_indexIntoF.exit883.i:                         ; preds = %do.body.i882.i
  store i32 %nb.0.shr.i879.i, i32* %10, align 4, !tbaa !3
  %idxprom294.i = zext i32 %or255.i to i64
  %arrayidx296.i = getelementptr inbounds i16* %45, i64 %idxprom294.i
  %74 = load i16* %arrayidx296.i, align 2, !tbaa !4
  %conv297.i = zext i16 %74 to i32
  %shr299.i = lshr i32 %or255.i, 1
  %idxprom300.i = zext i32 %shr299.i to i64
  %arrayidx302.i = getelementptr inbounds i8* %47, i64 %idxprom300.i
  %75 = load i8* %arrayidx302.i, align 1, !tbaa !1
  %conv303.i = zext i8 %75 to i32
  %shl305.i = shl nuw nsw i32 %conv242.i, 2
  %and306.i = and i32 %shl305.i, 4
  %shr307.i = lshr i32 %conv303.i, %and306.i
  %and308.i = shl i32 %shr307.i, 16
  %shl309.i = and i32 %and308.i, 983040
  %or310.i = or i32 %shl309.i, %conv297.i
  store i32 %or310.i, i32* %12, align 4, !tbaa !3
  %cmp313.i = icmp eq i32 %dec275.i, 0
  br i1 %cmp313.i, label %if.then315.i, label %if.end328.i

if.then315.i:                                     ; preds = %BZ2_indexIntoF.exit883.i
  %76 = load i32* %15, align 4, !tbaa !3
  %idxprom317.i = sext i32 %76 to i64
  %arrayidx318.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom317.i
  %77 = load i32* %arrayidx318.i, align 4, !tbaa !3
  store i32 %77, i32* %14, align 4, !tbaa !3
  %inc321.i = add nsw i32 %76, 1
  %cmp323.i = icmp eq i32 %inc321.i, 512
  %.inc321.i = select i1 %cmp323.i, i32 0, i32 %inc321.i
  store i32 %.inc321.i, i32* %15, align 4, !tbaa !3
  br label %if.end328.i

if.end328.i:                                      ; preds = %if.then315.i, %BZ2_indexIntoF.exit883.i
  %78 = phi i32 [ %77, %if.then315.i ], [ %dec275.i, %BZ2_indexIntoF.exit883.i ]
  %dec330.i = add nsw i32 %78, -1
  store i32 %dec330.i, i32* %14, align 4, !tbaa !3
  %cmp332.i = icmp eq i32 %dec330.i, 1
  %cond334.i = zext i1 %cmp332.i to i32
  %xor336.i = xor i32 %cond334.i, %nb.0.shr.i879.i
  store i32 %xor336.i, i32* %10, align 4, !tbaa !3
  %inc338.i = add nsw i32 %40, 5
  store i32 %inc338.i, i32* %9, align 4, !tbaa !3
  br label %while.body2.backedge.i

if.end347.i:                                      ; preds = %while.body341.backedge.i, %while.body341.preheader.i
  %79 = phi %struct.bz_stream* [ %24, %while.body341.preheader.i ], [ %102, %while.body341.backedge.i ]
  %80 = load i32* %8, align 4, !tbaa !3
  %cmp349.i = icmp eq i32 %80, 0
  br i1 %cmp349.i, label %while.end387.i, label %if.end352.i

if.end352.i:                                      ; preds = %if.end347.i
  %81 = load i8* %7, align 1, !tbaa !1
  %next_out355.i = getelementptr inbounds %struct.bz_stream* %79, i64 0, i32 4
  %82 = load i8** %next_out355.i, align 8, !tbaa !0
  store i8 %81, i8* %82, align 1, !tbaa !1
  %83 = load i32* %6, align 4, !tbaa !3
  %shl357.i = shl i32 %83, 8
  %shr359.i = lshr i32 %83, 24
  %84 = load i8* %7, align 1, !tbaa !1
  %conv361.i = zext i8 %84 to i32
  %xor362.i = xor i32 %conv361.i, %shr359.i
  %idxprom363.i = zext i32 %xor362.i to i64
  %arrayidx364.i = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom363.i
  %85 = load i32* %arrayidx364.i, align 4, !tbaa !3
  %xor365.i = xor i32 %85, %shl357.i
  store i32 %xor365.i, i32* %6, align 4, !tbaa !3
  %86 = load i32* %8, align 4, !tbaa !3
  %dec368.i = add nsw i32 %86, -1
  store i32 %dec368.i, i32* %8, align 4, !tbaa !3
  %87 = load %struct.bz_stream** %strm4, align 8, !tbaa !0
  %next_out370.i = getelementptr inbounds %struct.bz_stream* %87, i64 0, i32 4
  %88 = load i8** %next_out370.i, align 8, !tbaa !0
  %incdec.ptr371.i = getelementptr inbounds i8* %88, i64 1
  store i8* %incdec.ptr371.i, i8** %next_out370.i, align 8, !tbaa !0
  %89 = load %struct.bz_stream** %strm4, align 8, !tbaa !0
  %avail_out373.i = getelementptr inbounds %struct.bz_stream* %89, i64 0, i32 5
  %90 = load i32* %avail_out373.i, align 4, !tbaa !3
  %dec374.i = add i32 %90, -1
  store i32 %dec374.i, i32* %avail_out373.i, align 4, !tbaa !3
  %total_out_lo32376.i = getelementptr inbounds %struct.bz_stream* %89, i64 0, i32 6
  %91 = load i32* %total_out_lo32376.i, align 4, !tbaa !3
  %inc377.i = add i32 %91, 1
  store i32 %inc377.i, i32* %total_out_lo32376.i, align 4, !tbaa !3
  %cmp380.i = icmp eq i32 %inc377.i, 0
  br i1 %cmp380.i, label %if.then382.i, label %while.body341.backedge.i

if.then382.i:                                     ; preds = %if.end352.i
  %total_out_hi32384.i = getelementptr inbounds %struct.bz_stream* %89, i64 0, i32 7
  %92 = load i32* %total_out_hi32384.i, align 4, !tbaa !3
  %inc385.i = add i32 %92, 1
  store i32 %inc385.i, i32* %total_out_hi32384.i, align 4, !tbaa !3
  br label %while.body341.backedge.i

while.end387.i:                                   ; preds = %if.end347.i
  %93 = load i32* %9, align 4, !tbaa !3
  %94 = load i32* %13, align 4, !tbaa !3
  %add390.i = add nsw i32 %94, 1
  %cmp391.i = icmp eq i32 %93, %add390.i
  br i1 %cmp391.i, label %if.end20, label %if.end394.i

if.end394.i:                                      ; preds = %while.end387.i
  %cmp398.i = icmp sgt i32 %93, %add390.i
  br i1 %cmp398.i, label %return, label %if.end401.i

if.end401.i:                                      ; preds = %if.end394.i
  store i32 1, i32* %8, align 4, !tbaa !3
  %95 = load i32* %10, align 4, !tbaa !3
  %conv404.i = trunc i32 %95 to i8
  store i8 %conv404.i, i8* %7, align 1, !tbaa !1
  %96 = load i32* %12, align 4, !tbaa !3
  br label %do.body.i869.i

do.body.i869.i:                                   ; preds = %do.body.i869.i, %if.end401.i
  %na.0.i858.i = phi i32 [ 256, %if.end401.i ], [ %shr.na.0.i865.i, %do.body.i869.i ]
  %nb.0.i859.i = phi i32 [ 0, %if.end401.i ], [ %nb.0.shr.i866.i, %do.body.i869.i ]
  %add.i860.i = add nsw i32 %nb.0.i859.i, %na.0.i858.i
  %shr.i861.i = ashr i32 %add.i860.i, 1
  %idxprom.i862.i = sext i32 %shr.i861.i to i64
  %arrayidx.i863.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i862.i
  %97 = load i32* %arrayidx.i863.i, align 4, !tbaa !3
  %cmp.i864.i = icmp sgt i32 %97, %96
  %shr.na.0.i865.i = select i1 %cmp.i864.i, i32 %shr.i861.i, i32 %na.0.i858.i
  %nb.0.shr.i866.i = select i1 %cmp.i864.i, i32 %nb.0.i859.i, i32 %shr.i861.i
  %sub.i867.i = sub nsw i32 %shr.na.0.i865.i, %nb.0.shr.i866.i
  %cmp1.i868.i = icmp eq i32 %sub.i867.i, 1
  br i1 %cmp1.i868.i, label %BZ2_indexIntoF.exit870.i, label %do.body.i869.i

BZ2_indexIntoF.exit870.i:                         ; preds = %do.body.i869.i
  %idxprom412.i = zext i32 %96 to i64
  %98 = load i16** %19, align 8, !tbaa !0
  %arrayidx414.i = getelementptr inbounds i16* %98, i64 %idxprom412.i
  %99 = load i16* %arrayidx414.i, align 2, !tbaa !4
  %conv415.i = zext i16 %99 to i32
  %shr417.i = lshr i32 %96, 1
  %idxprom418.i = zext i32 %shr417.i to i64
  %100 = load i8** %20, align 8, !tbaa !0
  %arrayidx420.i = getelementptr inbounds i8* %100, i64 %idxprom418.i
  %101 = load i8* %arrayidx420.i, align 1, !tbaa !1
  %conv421.i = zext i8 %101 to i32
  %shl423.i = shl i32 %96, 2
  %and424.i = and i32 %shl423.i, 4
  %shr425.i = lshr i32 %conv421.i, %and424.i
  %and426.i = shl i32 %shr425.i, 16
  %shl427.i = and i32 %and426.i, 983040
  %or428.i = or i32 %shl427.i, %conv415.i
  store i32 %or428.i, i32* %12, align 4, !tbaa !3
  %inc431.i = add nsw i32 %93, 1
  store i32 %inc431.i, i32* %9, align 4, !tbaa !3
  %cmp435.i = icmp eq i32 %93, %94
  br i1 %cmp435.i, label %while.body341.backedge.i, label %if.end438.i

if.end438.i:                                      ; preds = %BZ2_indexIntoF.exit870.i
  %conv439.i = and i32 %nb.0.shr.i866.i, 255
  %cmp441.i = icmp eq i32 %conv439.i, %95
  br i1 %cmp441.i, label %if.end446.i, label %if.then443.i

if.then443.i:                                     ; preds = %if.end438.i
  store i32 %conv439.i, i32* %10, align 4, !tbaa !3
  br label %while.body341.backedge.i

while.body341.backedge.i:                         ; preds = %BZ2_indexIntoF.exit844.i, %BZ2_indexIntoF.exit857.i, %BZ2_indexIntoF.exit870.i, %BZ2_indexIntoF.exit818.i, %if.then527.i, %if.then485.i, %if.then443.i, %if.then382.i, %if.end352.i
  %102 = phi %struct.bz_stream* [ %79, %if.then443.i ], [ %79, %if.then485.i ], [ %79, %if.then527.i ], [ %79, %BZ2_indexIntoF.exit818.i ], [ %89, %if.then382.i ], [ %89, %if.end352.i ], [ %79, %BZ2_indexIntoF.exit870.i ], [ %79, %BZ2_indexIntoF.exit857.i ], [ %79, %BZ2_indexIntoF.exit844.i ]
  %avail_out343.i = getelementptr inbounds %struct.bz_stream* %102, i64 0, i32 5
  %103 = load i32* %avail_out343.i, align 4, !tbaa !3
  %cmp344.i = icmp eq i32 %103, 0
  br i1 %cmp344.i, label %if.end20, label %if.end347.i

if.end446.i:                                      ; preds = %if.end438.i
  store i32 2, i32* %8, align 4, !tbaa !3
  br label %do.body.i856.i

do.body.i856.i:                                   ; preds = %do.body.i856.i, %if.end446.i
  %na.0.i845.i = phi i32 [ 256, %if.end446.i ], [ %shr.na.0.i852.i, %do.body.i856.i ]
  %nb.0.i846.i = phi i32 [ 0, %if.end446.i ], [ %nb.0.shr.i853.i, %do.body.i856.i ]
  %add.i847.i = add nsw i32 %nb.0.i846.i, %na.0.i845.i
  %shr.i848.i = ashr i32 %add.i847.i, 1
  %idxprom.i849.i = sext i32 %shr.i848.i to i64
  %arrayidx.i850.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i849.i
  %104 = load i32* %arrayidx.i850.i, align 4, !tbaa !3
  %cmp.i851.i = icmp sgt i32 %104, %or428.i
  %shr.na.0.i852.i = select i1 %cmp.i851.i, i32 %shr.i848.i, i32 %na.0.i845.i
  %nb.0.shr.i853.i = select i1 %cmp.i851.i, i32 %nb.0.i846.i, i32 %shr.i848.i
  %sub.i854.i = sub nsw i32 %shr.na.0.i852.i, %nb.0.shr.i853.i
  %cmp1.i855.i = icmp eq i32 %sub.i854.i, 1
  br i1 %cmp1.i855.i, label %BZ2_indexIntoF.exit857.i, label %do.body.i856.i

BZ2_indexIntoF.exit857.i:                         ; preds = %do.body.i856.i
  %idxprom454.i = zext i32 %or428.i to i64
  %arrayidx456.i = getelementptr inbounds i16* %98, i64 %idxprom454.i
  %105 = load i16* %arrayidx456.i, align 2, !tbaa !4
  %conv457.i = zext i16 %105 to i32
  %shr459.i = lshr i32 %or428.i, 1
  %idxprom460.i = zext i32 %shr459.i to i64
  %arrayidx462.i = getelementptr inbounds i8* %100, i64 %idxprom460.i
  %106 = load i8* %arrayidx462.i, align 1, !tbaa !1
  %conv463.i = zext i8 %106 to i32
  %shl465.i = shl nuw nsw i32 %conv415.i, 2
  %and466.i = and i32 %shl465.i, 4
  %shr467.i = lshr i32 %conv463.i, %and466.i
  %and468.i = shl i32 %shr467.i, 16
  %shl469.i = and i32 %and468.i, 983040
  %or470.i = or i32 %shl469.i, %conv457.i
  store i32 %or470.i, i32* %12, align 4, !tbaa !3
  %inc473.i = add nsw i32 %93, 2
  store i32 %inc473.i, i32* %9, align 4, !tbaa !3
  %cmp477.i = icmp eq i32 %inc431.i, %94
  br i1 %cmp477.i, label %while.body341.backedge.i, label %if.end480.i

if.end480.i:                                      ; preds = %BZ2_indexIntoF.exit857.i
  %conv481.i = and i32 %nb.0.shr.i853.i, 255
  %cmp483.i = icmp eq i32 %conv481.i, %95
  br i1 %cmp483.i, label %if.end488.i, label %if.then485.i

if.then485.i:                                     ; preds = %if.end480.i
  store i32 %conv481.i, i32* %10, align 4, !tbaa !3
  br label %while.body341.backedge.i

if.end488.i:                                      ; preds = %if.end480.i
  store i32 3, i32* %8, align 4, !tbaa !3
  br label %do.body.i843.i

do.body.i843.i:                                   ; preds = %do.body.i843.i, %if.end488.i
  %na.0.i832.i = phi i32 [ 256, %if.end488.i ], [ %shr.na.0.i839.i, %do.body.i843.i ]
  %nb.0.i833.i = phi i32 [ 0, %if.end488.i ], [ %nb.0.shr.i840.i, %do.body.i843.i ]
  %add.i834.i = add nsw i32 %nb.0.i833.i, %na.0.i832.i
  %shr.i835.i = ashr i32 %add.i834.i, 1
  %idxprom.i836.i = sext i32 %shr.i835.i to i64
  %arrayidx.i837.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i836.i
  %107 = load i32* %arrayidx.i837.i, align 4, !tbaa !3
  %cmp.i838.i = icmp sgt i32 %107, %or470.i
  %shr.na.0.i839.i = select i1 %cmp.i838.i, i32 %shr.i835.i, i32 %na.0.i832.i
  %nb.0.shr.i840.i = select i1 %cmp.i838.i, i32 %nb.0.i833.i, i32 %shr.i835.i
  %sub.i841.i = sub nsw i32 %shr.na.0.i839.i, %nb.0.shr.i840.i
  %cmp1.i842.i = icmp eq i32 %sub.i841.i, 1
  br i1 %cmp1.i842.i, label %BZ2_indexIntoF.exit844.i, label %do.body.i843.i

BZ2_indexIntoF.exit844.i:                         ; preds = %do.body.i843.i
  %idxprom496.i = zext i32 %or470.i to i64
  %arrayidx498.i = getelementptr inbounds i16* %98, i64 %idxprom496.i
  %108 = load i16* %arrayidx498.i, align 2, !tbaa !4
  %conv499.i = zext i16 %108 to i32
  %shr501.i = lshr i32 %or470.i, 1
  %idxprom502.i = zext i32 %shr501.i to i64
  %arrayidx504.i = getelementptr inbounds i8* %100, i64 %idxprom502.i
  %109 = load i8* %arrayidx504.i, align 1, !tbaa !1
  %conv505.i = zext i8 %109 to i32
  %shl507.i = shl nuw nsw i32 %conv457.i, 2
  %and508.i = and i32 %shl507.i, 4
  %shr509.i = lshr i32 %conv505.i, %and508.i
  %and510.i = shl i32 %shr509.i, 16
  %shl511.i = and i32 %and510.i, 983040
  %or512.i = or i32 %shl511.i, %conv499.i
  store i32 %or512.i, i32* %12, align 4, !tbaa !3
  %inc515.i = add nsw i32 %93, 3
  store i32 %inc515.i, i32* %9, align 4, !tbaa !3
  %cmp519.i = icmp eq i32 %inc473.i, %94
  br i1 %cmp519.i, label %while.body341.backedge.i, label %if.end522.i

if.end522.i:                                      ; preds = %BZ2_indexIntoF.exit844.i
  %conv523.i = and i32 %nb.0.shr.i840.i, 255
  %cmp525.i = icmp eq i32 %conv523.i, %95
  br i1 %cmp525.i, label %do.body.i830.i, label %if.then527.i

if.then527.i:                                     ; preds = %if.end522.i
  store i32 %conv523.i, i32* %10, align 4, !tbaa !3
  br label %while.body341.backedge.i

do.body.i830.i:                                   ; preds = %if.end522.i, %do.body.i830.i
  %na.0.i819.i = phi i32 [ %shr.na.0.i826.i, %do.body.i830.i ], [ 256, %if.end522.i ]
  %nb.0.i820.i = phi i32 [ %nb.0.shr.i827.i, %do.body.i830.i ], [ 0, %if.end522.i ]
  %add.i821.i = add nsw i32 %nb.0.i820.i, %na.0.i819.i
  %shr.i822.i = ashr i32 %add.i821.i, 1
  %idxprom.i823.i = sext i32 %shr.i822.i to i64
  %arrayidx.i824.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i823.i
  %110 = load i32* %arrayidx.i824.i, align 4, !tbaa !3
  %cmp.i825.i = icmp sgt i32 %110, %or512.i
  %shr.na.0.i826.i = select i1 %cmp.i825.i, i32 %shr.i822.i, i32 %na.0.i819.i
  %nb.0.shr.i827.i = select i1 %cmp.i825.i, i32 %nb.0.i820.i, i32 %shr.i822.i
  %sub.i828.i = sub nsw i32 %shr.na.0.i826.i, %nb.0.shr.i827.i
  %cmp1.i829.i = icmp eq i32 %sub.i828.i, 1
  br i1 %cmp1.i829.i, label %BZ2_indexIntoF.exit831.i, label %do.body.i830.i

BZ2_indexIntoF.exit831.i:                         ; preds = %do.body.i830.i
  %idxprom537.i = zext i32 %or512.i to i64
  %arrayidx539.i = getelementptr inbounds i16* %98, i64 %idxprom537.i
  %111 = load i16* %arrayidx539.i, align 2, !tbaa !4
  %conv540.i = zext i16 %111 to i32
  %shr542.i = lshr i32 %or512.i, 1
  %idxprom543.i = zext i32 %shr542.i to i64
  %arrayidx545.i = getelementptr inbounds i8* %100, i64 %idxprom543.i
  %112 = load i8* %arrayidx545.i, align 1, !tbaa !1
  %conv546.i = zext i8 %112 to i32
  %shl548.i = shl nuw nsw i32 %conv499.i, 2
  %and549.i = and i32 %shl548.i, 4
  %shr550.i = lshr i32 %conv546.i, %and549.i
  %and551.i = shl i32 %shr550.i, 16
  %shl552.i = and i32 %and551.i, 983040
  %or553.i = or i32 %shl552.i, %conv540.i
  store i32 %or553.i, i32* %12, align 4, !tbaa !3
  %inc556.i = add nsw i32 %93, 4
  store i32 %inc556.i, i32* %9, align 4, !tbaa !3
  %conv557.i = and i32 %nb.0.shr.i827.i, 255
  %add558.i = add nsw i32 %conv557.i, 4
  store i32 %add558.i, i32* %8, align 4, !tbaa !3
  br label %do.body.i817.i

do.body.i817.i:                                   ; preds = %do.body.i817.i, %BZ2_indexIntoF.exit831.i
  %na.0.i806.i = phi i32 [ 256, %BZ2_indexIntoF.exit831.i ], [ %shr.na.0.i813.i, %do.body.i817.i ]
  %nb.0.i807.i = phi i32 [ 0, %BZ2_indexIntoF.exit831.i ], [ %nb.0.shr.i814.i, %do.body.i817.i ]
  %add.i808.i = add nsw i32 %nb.0.i807.i, %na.0.i806.i
  %shr.i809.i = ashr i32 %add.i808.i, 1
  %idxprom.i810.i = sext i32 %shr.i809.i to i64
  %arrayidx.i811.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i810.i
  %113 = load i32* %arrayidx.i811.i, align 4, !tbaa !3
  %cmp.i812.i = icmp sgt i32 %113, %or553.i
  %shr.na.0.i813.i = select i1 %cmp.i812.i, i32 %shr.i809.i, i32 %na.0.i806.i
  %nb.0.shr.i814.i = select i1 %cmp.i812.i, i32 %nb.0.i807.i, i32 %shr.i809.i
  %sub.i815.i = sub nsw i32 %shr.na.0.i813.i, %nb.0.shr.i814.i
  %cmp1.i816.i = icmp eq i32 %sub.i815.i, 1
  br i1 %cmp1.i816.i, label %BZ2_indexIntoF.exit818.i, label %do.body.i817.i

BZ2_indexIntoF.exit818.i:                         ; preds = %do.body.i817.i
  store i32 %nb.0.shr.i814.i, i32* %10, align 4, !tbaa !3
  %idxprom566.i = zext i32 %or553.i to i64
  %arrayidx568.i = getelementptr inbounds i16* %98, i64 %idxprom566.i
  %114 = load i16* %arrayidx568.i, align 2, !tbaa !4
  %conv569.i = zext i16 %114 to i32
  %shr571.i = lshr i32 %or553.i, 1
  %idxprom572.i = zext i32 %shr571.i to i64
  %arrayidx574.i = getelementptr inbounds i8* %100, i64 %idxprom572.i
  %115 = load i8* %arrayidx574.i, align 1, !tbaa !1
  %conv575.i = zext i8 %115 to i32
  %shl577.i = shl nuw nsw i32 %conv540.i, 2
  %and578.i = and i32 %shl577.i, 4
  %shr579.i = lshr i32 %conv575.i, %and578.i
  %and580.i = shl i32 %shr579.i, 16
  %shl581.i = and i32 %and580.i, 983040
  %or582.i = or i32 %shl581.i, %conv569.i
  store i32 %or582.i, i32* %12, align 4, !tbaa !3
  %inc585.i = add nsw i32 %93, 5
  store i32 %inc585.i, i32* %9, align 4, !tbaa !3
  br label %while.body341.backedge.i

if.else:                                          ; preds = %if.then14
  br i1 %tobool.i105, label %if.else.i, label %while.body2.preheader.i106

while.body2.preheader.i106:                       ; preds = %if.else
  %116 = load %struct.bz_stream** %strm4, align 8, !tbaa !0
  %avail_out673.i = getelementptr inbounds %struct.bz_stream* %116, i64 0, i32 5
  %117 = load i32* %avail_out673.i, align 4, !tbaa !3
  %cmp674.i = icmp eq i32 %117, 0
  br i1 %cmp674.i, label %if.end20, label %if.end.i117

if.end.i117:                                      ; preds = %while.body2.backedge.i151, %while.body2.preheader.i106
  %118 = phi %struct.bz_stream* [ %116, %while.body2.preheader.i106 ], [ %142, %while.body2.backedge.i151 ]
  %119 = load i32* %8, align 4, !tbaa !3
  %cmp4.i116 = icmp eq i32 %119, 0
  br i1 %cmp4.i116, label %while.end.i140, label %if.end6.i134

if.end6.i134:                                     ; preds = %if.end.i117
  %120 = load i8* %7, align 1, !tbaa !1
  %next_out.i118 = getelementptr inbounds %struct.bz_stream* %118, i64 0, i32 4
  %121 = load i8** %next_out.i118, align 8, !tbaa !0
  store i8 %120, i8* %121, align 1, !tbaa !1
  %122 = load i32* %6, align 4, !tbaa !3
  %shl.i119 = shl i32 %122, 8
  %shr.i120 = lshr i32 %122, 24
  %123 = load i8* %7, align 1, !tbaa !1
  %conv.i121 = zext i8 %123 to i32
  %xor.i122 = xor i32 %conv.i121, %shr.i120
  %idxprom.i123 = zext i32 %xor.i122 to i64
  %arrayidx.i124 = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom.i123
  %124 = load i32* %arrayidx.i124, align 4, !tbaa !3
  %xor10.i125 = xor i32 %124, %shl.i119
  store i32 %xor10.i125, i32* %6, align 4, !tbaa !3
  %125 = load i32* %8, align 4, !tbaa !3
  %dec.i126 = add nsw i32 %125, -1
  store i32 %dec.i126, i32* %8, align 4, !tbaa !3
  %126 = load %struct.bz_stream** %strm4, align 8, !tbaa !0
  %next_out14.i127 = getelementptr inbounds %struct.bz_stream* %126, i64 0, i32 4
  %127 = load i8** %next_out14.i127, align 8, !tbaa !0
  %incdec.ptr.i128 = getelementptr inbounds i8* %127, i64 1
  store i8* %incdec.ptr.i128, i8** %next_out14.i127, align 8, !tbaa !0
  %128 = load %struct.bz_stream** %strm4, align 8, !tbaa !0
  %avail_out16.i129 = getelementptr inbounds %struct.bz_stream* %128, i64 0, i32 5
  %129 = load i32* %avail_out16.i129, align 4, !tbaa !3
  %dec17.i130 = add i32 %129, -1
  store i32 %dec17.i130, i32* %avail_out16.i129, align 4, !tbaa !3
  %total_out_lo32.i131 = getelementptr inbounds %struct.bz_stream* %128, i64 0, i32 6
  %130 = load i32* %total_out_lo32.i131, align 4, !tbaa !3
  %inc.i132 = add i32 %130, 1
  store i32 %inc.i132, i32* %total_out_lo32.i131, align 4, !tbaa !3
  %cmp21.i133 = icmp eq i32 %inc.i132, 0
  br i1 %cmp21.i133, label %if.then23.i137, label %while.body2.backedge.i151

if.then23.i137:                                   ; preds = %if.end6.i134
  %total_out_hi32.i135 = getelementptr inbounds %struct.bz_stream* %128, i64 0, i32 7
  %131 = load i32* %total_out_hi32.i135, align 4, !tbaa !3
  %inc25.i136 = add i32 %131, 1
  store i32 %inc25.i136, i32* %total_out_hi32.i135, align 4, !tbaa !3
  br label %while.body2.backedge.i151

while.end.i140:                                   ; preds = %if.end.i117
  %132 = load i32* %9, align 4, !tbaa !3
  %133 = load i32* %13, align 4, !tbaa !3
  %add.i138 = add nsw i32 %133, 1
  %cmp27.i139 = icmp eq i32 %132, %add.i138
  br i1 %cmp27.i139, label %if.end20, label %if.end30.i142

if.end30.i142:                                    ; preds = %while.end.i140
  %cmp34.i141 = icmp sgt i32 %132, %add.i138
  br i1 %cmp34.i141, label %return, label %if.end37.i145

if.end37.i145:                                    ; preds = %if.end30.i142
  store i32 1, i32* %8, align 4, !tbaa !3
  %134 = load i32* %10, align 4, !tbaa !3
  %conv39.i143 = trunc i32 %134 to i8
  store i8 %conv39.i143, i8* %7, align 1, !tbaa !1
  %135 = load i32* %12, align 4, !tbaa !3
  %idxprom41.i = zext i32 %135 to i64
  %136 = load i32** %11, align 8, !tbaa !0
  %arrayidx42.i = getelementptr inbounds i32* %136, i64 %idxprom41.i
  %137 = load i32* %arrayidx42.i, align 4, !tbaa !3
  %shr47.i144 = lshr i32 %137, 8
  store i32 %shr47.i144, i32* %12, align 4, !tbaa !3
  %138 = load i32* %14, align 4, !tbaa !3
  %cmp48.i = icmp eq i32 %138, 0
  br i1 %cmp48.i, label %if.then50.i, label %if.end62.i

if.then50.i:                                      ; preds = %if.end37.i145
  %139 = load i32* %15, align 4, !tbaa !3
  %idxprom51.i = sext i32 %139 to i64
  %arrayidx52.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom51.i
  %140 = load i32* %arrayidx52.i, align 4, !tbaa !3
  store i32 %140, i32* %14, align 4, !tbaa !3
  %inc55.i = add nsw i32 %139, 1
  %cmp57.i146 = icmp eq i32 %inc55.i, 512
  %.inc55.i = select i1 %cmp57.i146, i32 0, i32 %inc55.i
  store i32 %.inc55.i, i32* %15, align 4, !tbaa !3
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then50.i, %if.end37.i145
  %141 = phi i32 [ %140, %if.then50.i ], [ %138, %if.end37.i145 ]
  %dec64.i = add nsw i32 %141, -1
  store i32 %dec64.i, i32* %14, align 4, !tbaa !3
  %inc72.i = add nsw i32 %132, 1
  store i32 %inc72.i, i32* %9, align 4, !tbaa !3
  %cmp76.i = icmp eq i32 %132, %133
  br i1 %cmp76.i, label %while.body2.backedge.i151, label %if.end79.i

if.end79.i:                                       ; preds = %if.end62.i
  %cmp66.i147 = icmp eq i32 %dec64.i, 1
  %cond.i148 = zext i1 %cmp66.i147 to i32
  %.masked.i = and i32 %137, 255
  %conv80.i = xor i32 %cond.i148, %.masked.i
  %cmp82.i = icmp eq i32 %conv80.i, %134
  br i1 %cmp82.i, label %if.end87.i, label %if.then84.i

if.then84.i:                                      ; preds = %if.end79.i
  store i32 %conv80.i, i32* %10, align 4, !tbaa !3
  br label %while.body2.backedge.i151

while.body2.backedge.i151:                        ; preds = %if.end169.i, %if.end115.i, %if.end62.i, %if.end265.i, %if.then192.i, %if.then138.i, %if.then84.i, %if.then23.i137, %if.end6.i134
  %142 = phi %struct.bz_stream* [ %118, %if.then84.i ], [ %118, %if.then138.i ], [ %118, %if.then192.i ], [ %118, %if.end265.i ], [ %128, %if.then23.i137 ], [ %128, %if.end6.i134 ], [ %118, %if.end62.i ], [ %118, %if.end115.i ], [ %118, %if.end169.i ]
  %avail_out.i149 = getelementptr inbounds %struct.bz_stream* %142, i64 0, i32 5
  %143 = load i32* %avail_out.i149, align 4, !tbaa !3
  %cmp.i150 = icmp eq i32 %143, 0
  br i1 %cmp.i150, label %if.end20, label %if.end.i117

if.end87.i:                                       ; preds = %if.end79.i
  store i32 2, i32* %8, align 4, !tbaa !3
  %idxprom90.i = zext i32 %shr47.i144 to i64
  %arrayidx92.i = getelementptr inbounds i32* %136, i64 %idxprom90.i
  %144 = load i32* %arrayidx92.i, align 4, !tbaa !3
  %shr98.i = lshr i32 %144, 8
  store i32 %shr98.i, i32* %12, align 4, !tbaa !3
  %cmp100.i = icmp eq i32 %dec64.i, 0
  br i1 %cmp100.i, label %if.then102.i, label %if.end115.i

if.then102.i:                                     ; preds = %if.end87.i
  %145 = load i32* %15, align 4, !tbaa !3
  %idxprom104.i152 = sext i32 %145 to i64
  %arrayidx105.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom104.i152
  %146 = load i32* %arrayidx105.i, align 4, !tbaa !3
  store i32 %146, i32* %14, align 4, !tbaa !3
  %inc108.i = add nsw i32 %145, 1
  %cmp110.i = icmp eq i32 %inc108.i, 512
  %.inc108.i = select i1 %cmp110.i, i32 0, i32 %inc108.i
  store i32 %.inc108.i, i32* %15, align 4, !tbaa !3
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.then102.i, %if.end87.i
  %147 = phi i32 [ %146, %if.then102.i ], [ %dec64.i, %if.end87.i ]
  %dec117.i = add nsw i32 %147, -1
  store i32 %dec117.i, i32* %14, align 4, !tbaa !3
  %inc126.i = add nsw i32 %132, 2
  store i32 %inc126.i, i32* %9, align 4, !tbaa !3
  %cmp130.i = icmp eq i32 %inc72.i, %133
  br i1 %cmp130.i, label %while.body2.backedge.i151, label %if.end133.i

if.end133.i:                                      ; preds = %if.end115.i
  %cmp119.i = icmp eq i32 %dec117.i, 1
  %cond121.i = zext i1 %cmp119.i to i32
  %.masked632.i = and i32 %144, 255
  %conv134.i = xor i32 %cond121.i, %.masked632.i
  %cmp136.i = icmp eq i32 %conv134.i, %134
  br i1 %cmp136.i, label %if.end141.i, label %if.then138.i

if.then138.i:                                     ; preds = %if.end133.i
  store i32 %conv134.i, i32* %10, align 4, !tbaa !3
  br label %while.body2.backedge.i151

if.end141.i:                                      ; preds = %if.end133.i
  store i32 3, i32* %8, align 4, !tbaa !3
  %idxprom144.i = zext i32 %shr98.i to i64
  %arrayidx146.i = getelementptr inbounds i32* %136, i64 %idxprom144.i
  %148 = load i32* %arrayidx146.i, align 4, !tbaa !3
  %shr152.i = lshr i32 %148, 8
  store i32 %shr152.i, i32* %12, align 4, !tbaa !3
  %cmp154.i = icmp eq i32 %dec117.i, 0
  br i1 %cmp154.i, label %if.then156.i, label %if.end169.i

if.then156.i:                                     ; preds = %if.end141.i
  %149 = load i32* %15, align 4, !tbaa !3
  %idxprom158.i = sext i32 %149 to i64
  %arrayidx159.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom158.i
  %150 = load i32* %arrayidx159.i, align 4, !tbaa !3
  store i32 %150, i32* %14, align 4, !tbaa !3
  %inc162.i = add nsw i32 %149, 1
  %cmp164.i = icmp eq i32 %inc162.i, 512
  %.inc162.i = select i1 %cmp164.i, i32 0, i32 %inc162.i
  store i32 %.inc162.i, i32* %15, align 4, !tbaa !3
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.then156.i, %if.end141.i
  %151 = phi i32 [ %150, %if.then156.i ], [ %dec117.i, %if.end141.i ]
  %dec171.i = add nsw i32 %151, -1
  store i32 %dec171.i, i32* %14, align 4, !tbaa !3
  %inc180.i = add nsw i32 %132, 3
  store i32 %inc180.i, i32* %9, align 4, !tbaa !3
  %cmp184.i = icmp eq i32 %inc126.i, %133
  br i1 %cmp184.i, label %while.body2.backedge.i151, label %if.end187.i

if.end187.i:                                      ; preds = %if.end169.i
  %cmp173.i = icmp eq i32 %dec171.i, 1
  %cond175.i = zext i1 %cmp173.i to i32
  %.masked633.i = and i32 %148, 255
  %conv188.i = xor i32 %cond175.i, %.masked633.i
  %cmp190.i = icmp eq i32 %conv188.i, %134
  br i1 %cmp190.i, label %if.end195.i, label %if.then192.i

if.then192.i:                                     ; preds = %if.end187.i
  store i32 %conv188.i, i32* %10, align 4, !tbaa !3
  br label %while.body2.backedge.i151

if.end195.i:                                      ; preds = %if.end187.i
  %idxprom197.i = zext i32 %shr152.i to i64
  %arrayidx199.i = getelementptr inbounds i32* %136, i64 %idxprom197.i
  %152 = load i32* %arrayidx199.i, align 4, !tbaa !3
  %shr205.i = lshr i32 %152, 8
  store i32 %shr205.i, i32* %12, align 4, !tbaa !3
  %cmp207.i = icmp eq i32 %dec171.i, 0
  br i1 %cmp207.i, label %if.then209.i, label %if.end222.i

if.then209.i:                                     ; preds = %if.end195.i
  %153 = load i32* %15, align 4, !tbaa !3
  %idxprom211.i = sext i32 %153 to i64
  %arrayidx212.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom211.i
  %154 = load i32* %arrayidx212.i, align 4, !tbaa !3
  store i32 %154, i32* %14, align 4, !tbaa !3
  %inc215.i = add nsw i32 %153, 1
  %cmp217.i = icmp eq i32 %inc215.i, 512
  %.inc215.i = select i1 %cmp217.i, i32 0, i32 %inc215.i
  store i32 %.inc215.i, i32* %15, align 4, !tbaa !3
  br label %if.end222.i

if.end222.i:                                      ; preds = %if.then209.i, %if.end195.i
  %155 = phi i32 [ %154, %if.then209.i ], [ %dec171.i, %if.end195.i ]
  %dec224.i = add nsw i32 %155, -1
  store i32 %dec224.i, i32* %14, align 4, !tbaa !3
  %cmp226.i = icmp eq i32 %dec224.i, 1
  %cond228.i = zext i1 %cmp226.i to i32
  %inc233.i = add nsw i32 %132, 4
  store i32 %inc233.i, i32* %9, align 4, !tbaa !3
  %.masked634.i = and i32 %152, 255
  %conv234.i = xor i32 %cond228.i, %.masked634.i
  %add235.i = add nsw i32 %conv234.i, 4
  store i32 %add235.i, i32* %8, align 4, !tbaa !3
  %idxprom238.i = zext i32 %shr205.i to i64
  %arrayidx240.i = getelementptr inbounds i32* %136, i64 %idxprom238.i
  %156 = load i32* %arrayidx240.i, align 4, !tbaa !3
  %conv245.i = and i32 %156, 255
  store i32 %conv245.i, i32* %10, align 4, !tbaa !3
  %shr248.i = lshr i32 %156, 8
  store i32 %shr248.i, i32* %12, align 4, !tbaa !3
  %cmp250.i = icmp eq i32 %dec224.i, 0
  br i1 %cmp250.i, label %if.then252.i, label %if.end265.i

if.then252.i:                                     ; preds = %if.end222.i
  %157 = load i32* %15, align 4, !tbaa !3
  %idxprom254.i = sext i32 %157 to i64
  %arrayidx255.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom254.i
  %158 = load i32* %arrayidx255.i, align 4, !tbaa !3
  store i32 %158, i32* %14, align 4, !tbaa !3
  %inc258.i = add nsw i32 %157, 1
  %cmp260.i = icmp eq i32 %inc258.i, 512
  %.inc258.i = select i1 %cmp260.i, i32 0, i32 %inc258.i
  store i32 %.inc258.i, i32* %15, align 4, !tbaa !3
  br label %if.end265.i

if.end265.i:                                      ; preds = %if.then252.i, %if.end222.i
  %159 = phi i32 [ %158, %if.then252.i ], [ %dec224.i, %if.end222.i ]
  %dec267.i = add nsw i32 %159, -1
  store i32 %dec267.i, i32* %14, align 4, !tbaa !3
  %cmp269.i = icmp eq i32 %dec267.i, 1
  %cond271.i = zext i1 %cmp269.i to i32
  %xor273.i = xor i32 %cond271.i, %conv245.i
  store i32 %xor273.i, i32* %10, align 4, !tbaa !3
  %inc275.i = add nsw i32 %132, 5
  store i32 %inc275.i, i32* %9, align 4, !tbaa !3
  br label %while.body2.backedge.i151

if.else.i:                                        ; preds = %if.else
  %160 = load i32* %6, align 4, !tbaa !3
  %161 = load i8* %7, align 1, !tbaa !1
  %162 = load i32* %8, align 4, !tbaa !3
  %163 = load i32* %9, align 4, !tbaa !3
  %164 = load i32* %10, align 4, !tbaa !3
  %165 = load i32** %11, align 8, !tbaa !0
  %166 = load i32* %12, align 4, !tbaa !3
  %167 = load %struct.bz_stream** %strm4, align 8, !tbaa !0
  %next_out284.i = getelementptr inbounds %struct.bz_stream* %167, i64 0, i32 4
  %168 = load i8** %next_out284.i, align 8, !tbaa !0
  %avail_out286.i = getelementptr inbounds %struct.bz_stream* %167, i64 0, i32 5
  %169 = load i32* %avail_out286.i, align 4, !tbaa !3
  %170 = load i32* %13, align 4, !tbaa !3
  %add288.i = add nsw i32 %170, 1
  br label %while.body289.i

while.body289.i:                                  ; preds = %if.end384.i, %if.end378.i, %if.end368.i, %if.end362.i, %if.end352.i156, %if.else.i
  %c_state_out_len.0.i = phi i32 [ %162, %if.else.i ], [ 2, %if.end352.i156 ], [ 3, %if.end368.i ], [ %add392.i, %if.end384.i ], [ 2, %if.end362.i ], [ 3, %if.end378.i ]
  %c_nblock_used.0.i = phi i32 [ %163, %if.else.i ], [ %add288.i, %if.end352.i156 ], [ %add288.i, %if.end368.i ], [ %inc399.i, %if.end384.i ], [ %inc358.i, %if.end362.i ], [ %inc374.i, %if.end378.i ]
  %c_k0.0.i = phi i32 [ %164, %if.else.i ], [ %c_k0.2.i, %if.end352.i156 ], [ %c_k0.2.i, %if.end368.i ], [ %conv397.i, %if.end384.i ], [ %conv363.i, %if.end362.i ], [ %conv379.i, %if.end378.i ]
  %c_state_out_ch.0.i = phi i8 [ %161, %if.else.i ], [ %conv336.i, %if.end352.i156 ], [ %conv336.i, %if.end368.i ], [ %conv336.i, %if.end384.i ], [ %conv336.i, %if.end362.i ], [ %conv336.i, %if.end378.i ]
  %c_tPos.0.i = phi i32 [ %166, %if.else.i ], [ %shr357.i, %if.end352.i156 ], [ %shr373.i, %if.end368.i ], [ %shr398.i, %if.end384.i ], [ %shr357.i, %if.end362.i ], [ %shr373.i, %if.end378.i ]
  %cs_next_out.0.i = phi i8* [ %168, %if.else.i ], [ %cs_next_out.3.i, %if.end352.i156 ], [ %cs_next_out.3.i, %if.end368.i ], [ %cs_next_out.3.i, %if.end384.i ], [ %cs_next_out.3.i, %if.end362.i ], [ %cs_next_out.3.i, %if.end378.i ]
  %cs_avail_out.0.i = phi i32 [ %169, %if.else.i ], [ %cs_avail_out.3.i, %if.end352.i156 ], [ %cs_avail_out.3.i, %if.end368.i ], [ %cs_avail_out.3.i, %if.end384.i ], [ %cs_avail_out.3.i, %if.end362.i ], [ %cs_avail_out.3.i, %if.end378.i ]
  %c_calculatedBlockCRC.0.i = phi i32 [ %160, %if.else.i ], [ %c_calculatedBlockCRC.3.i, %if.end352.i156 ], [ %c_calculatedBlockCRC.3.i, %if.end368.i ], [ %c_calculatedBlockCRC.3.i, %if.end384.i ], [ %c_calculatedBlockCRC.3.i, %if.end362.i ], [ %c_calculatedBlockCRC.3.i, %if.end378.i ]
  %cmp290.i = icmp sgt i32 %c_state_out_len.0.i, 0
  br i1 %cmp290.i, label %while.body294.preheader.i, label %if.end327.i

while.body294.preheader.i:                        ; preds = %while.body289.i
  %cmp295639.i = icmp eq i32 %cs_avail_out.0.i, 0
  br i1 %cmp295639.i, label %return_notr.i, label %if.end298.lr.ph.i

if.end298.lr.ph.i:                                ; preds = %while.body294.preheader.i
  %conv305.i = zext i8 %c_state_out_ch.0.i to i32
  br label %if.end298.i

if.end298.i:                                      ; preds = %if.end302.i, %if.end298.lr.ph.i
  %c_calculatedBlockCRC.1643.i = phi i32 [ %c_calculatedBlockCRC.0.i, %if.end298.lr.ph.i ], [ %xor309.i, %if.end302.i ]
  %cs_avail_out.1642.i = phi i32 [ %cs_avail_out.0.i, %if.end298.lr.ph.i ], [ %dec312.i, %if.end302.i ]
  %cs_next_out.1641.i = phi i8* [ %cs_next_out.0.i, %if.end298.lr.ph.i ], [ %incdec.ptr311.i, %if.end302.i ]
  %c_state_out_len.1640.i = phi i32 [ %c_state_out_len.0.i, %if.end298.lr.ph.i ], [ %dec310.i, %if.end302.i ]
  %cmp299.i = icmp eq i32 %c_state_out_len.1640.i, 1
  br i1 %cmp299.i, label %s_state_out_len_eq_one.i, label %if.end302.i

if.end302.i:                                      ; preds = %if.end298.i
  store i8 %c_state_out_ch.0.i, i8* %cs_next_out.1641.i, align 1, !tbaa !1
  %shl303.i = shl i32 %c_calculatedBlockCRC.1643.i, 8
  %shr304.i = lshr i32 %c_calculatedBlockCRC.1643.i, 24
  %xor306.i = xor i32 %shr304.i, %conv305.i
  %idxprom307.i = zext i32 %xor306.i to i64
  %arrayidx308.i = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom307.i
  %171 = load i32* %arrayidx308.i, align 4, !tbaa !3
  %xor309.i = xor i32 %171, %shl303.i
  %dec310.i = add nsw i32 %c_state_out_len.1640.i, -1
  %incdec.ptr311.i = getelementptr inbounds i8* %cs_next_out.1641.i, i64 1
  %dec312.i = add i32 %cs_avail_out.1642.i, -1
  %cmp295.i = icmp eq i32 %dec312.i, 0
  br i1 %cmp295.i, label %return_notr.i, label %if.end298.i

s_state_out_len_eq_one.i:                         ; preds = %if.end298.i, %if.end348.i, %if.end335.i
  %c_nblock_used.1.i = phi i32 [ %add288.i, %if.end348.i ], [ %inc342.i, %if.end335.i ], [ %c_nblock_used.0.i, %if.end298.i ]
  %c_k0.1.i = phi i32 [ %c_k0.2.i, %if.end348.i ], [ %conv343.i, %if.end335.i ], [ %c_k0.0.i, %if.end298.i ]
  %c_state_out_ch.1.i = phi i8 [ %conv336.i, %if.end348.i ], [ %conv336.i, %if.end335.i ], [ %c_state_out_ch.0.i, %if.end298.i ]
  %c_tPos.1.i = phi i32 [ %shr341.i, %if.end348.i ], [ %shr341.i, %if.end335.i ], [ %c_tPos.0.i, %if.end298.i ]
  %cs_next_out.2.i = phi i8* [ %cs_next_out.3.i, %if.end348.i ], [ %cs_next_out.3.i, %if.end335.i ], [ %cs_next_out.1641.i, %if.end298.i ]
  %cs_avail_out.2.i = phi i32 [ %cs_avail_out.3.i, %if.end348.i ], [ %cs_avail_out.3.i, %if.end335.i ], [ %cs_avail_out.1642.i, %if.end298.i ]
  %c_calculatedBlockCRC.2.i = phi i32 [ %c_calculatedBlockCRC.3.i, %if.end348.i ], [ %c_calculatedBlockCRC.3.i, %if.end335.i ], [ %c_calculatedBlockCRC.1643.i, %if.end298.i ]
  %cmp314.i = icmp eq i32 %cs_avail_out.2.i, 0
  br i1 %cmp314.i, label %return_notr.i, label %if.end317.i

if.end317.i:                                      ; preds = %s_state_out_len_eq_one.i
  store i8 %c_state_out_ch.1.i, i8* %cs_next_out.2.i, align 1, !tbaa !1
  %shl318.i = shl i32 %c_calculatedBlockCRC.2.i, 8
  %shr319.i = lshr i32 %c_calculatedBlockCRC.2.i, 24
  %conv320.i = zext i8 %c_state_out_ch.1.i to i32
  %xor321.i = xor i32 %shr319.i, %conv320.i
  %idxprom322.i = zext i32 %xor321.i to i64
  %arrayidx323.i = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom322.i
  %172 = load i32* %arrayidx323.i, align 4, !tbaa !3
  %xor324.i = xor i32 %172, %shl318.i
  %incdec.ptr325.i = getelementptr inbounds i8* %cs_next_out.2.i, i64 1
  %dec326.i = add i32 %cs_avail_out.2.i, -1
  br label %if.end327.i

if.end327.i:                                      ; preds = %if.end317.i, %while.body289.i
  %c_nblock_used.2.i = phi i32 [ %c_nblock_used.1.i, %if.end317.i ], [ %c_nblock_used.0.i, %while.body289.i ]
  %c_k0.2.i = phi i32 [ %c_k0.1.i, %if.end317.i ], [ %c_k0.0.i, %while.body289.i ]
  %c_state_out_ch.2.i = phi i8 [ %c_state_out_ch.1.i, %if.end317.i ], [ %c_state_out_ch.0.i, %while.body289.i ]
  %c_tPos.2.i = phi i32 [ %c_tPos.1.i, %if.end317.i ], [ %c_tPos.0.i, %while.body289.i ]
  %cs_next_out.3.i = phi i8* [ %incdec.ptr325.i, %if.end317.i ], [ %cs_next_out.0.i, %while.body289.i ]
  %cs_avail_out.3.i = phi i32 [ %dec326.i, %if.end317.i ], [ %cs_avail_out.0.i, %while.body289.i ]
  %c_calculatedBlockCRC.3.i = phi i32 [ %xor324.i, %if.end317.i ], [ %c_calculatedBlockCRC.0.i, %while.body289.i ]
  %cmp328.i = icmp sgt i32 %c_nblock_used.2.i, %add288.i
  br i1 %cmp328.i, label %return, label %if.end331.i

if.end331.i:                                      ; preds = %if.end327.i
  %cmp332.i153 = icmp eq i32 %c_nblock_used.2.i, %add288.i
  br i1 %cmp332.i153, label %return_notr.i, label %if.end335.i

if.end335.i:                                      ; preds = %if.end331.i
  %conv336.i = trunc i32 %c_k0.2.i to i8
  %idxprom337.i = zext i32 %c_tPos.2.i to i64
  %arrayidx338.i = getelementptr inbounds i32* %165, i64 %idxprom337.i
  %173 = load i32* %arrayidx338.i, align 4, !tbaa !3
  %shr341.i = lshr i32 %173, 8
  %inc342.i = add nsw i32 %c_nblock_used.2.i, 1
  %conv343.i = and i32 %173, 255
  %cmp344.i154 = icmp eq i32 %conv343.i, %c_k0.2.i
  br i1 %cmp344.i154, label %if.end348.i, label %s_state_out_len_eq_one.i

if.end348.i:                                      ; preds = %if.end335.i
  %cmp349.i155 = icmp eq i32 %inc342.i, %add288.i
  br i1 %cmp349.i155, label %s_state_out_len_eq_one.i, label %if.end352.i156

if.end352.i156:                                   ; preds = %if.end348.i
  %idxprom353.i = zext i32 %shr341.i to i64
  %arrayidx354.i = getelementptr inbounds i32* %165, i64 %idxprom353.i
  %174 = load i32* %arrayidx354.i, align 4, !tbaa !3
  %shr357.i = lshr i32 %174, 8
  %inc358.i = add nsw i32 %c_nblock_used.2.i, 2
  %cmp359.i = icmp eq i32 %inc358.i, %add288.i
  br i1 %cmp359.i, label %while.body289.i, label %if.end362.i

if.end362.i:                                      ; preds = %if.end352.i156
  %conv363.i = and i32 %174, 255
  %cmp364.i = icmp eq i32 %conv363.i, %c_k0.2.i
  br i1 %cmp364.i, label %if.end368.i, label %while.body289.i

if.end368.i:                                      ; preds = %if.end362.i
  %idxprom369.i = zext i32 %shr357.i to i64
  %arrayidx370.i = getelementptr inbounds i32* %165, i64 %idxprom369.i
  %175 = load i32* %arrayidx370.i, align 4, !tbaa !3
  %shr373.i = lshr i32 %175, 8
  %inc374.i = add nsw i32 %c_nblock_used.2.i, 3
  %cmp375.i = icmp eq i32 %inc374.i, %add288.i
  br i1 %cmp375.i, label %while.body289.i, label %if.end378.i

if.end378.i:                                      ; preds = %if.end368.i
  %conv379.i = and i32 %175, 255
  %cmp380.i157 = icmp eq i32 %conv379.i, %c_k0.2.i
  br i1 %cmp380.i157, label %if.end384.i, label %while.body289.i

if.end384.i:                                      ; preds = %if.end378.i
  %idxprom385.i = zext i32 %shr373.i to i64
  %arrayidx386.i = getelementptr inbounds i32* %165, i64 %idxprom385.i
  %176 = load i32* %arrayidx386.i, align 4, !tbaa !3
  %shr389.i = lshr i32 %176, 8
  %conv391.i = and i32 %176, 255
  %add392.i = add nsw i32 %conv391.i, 4
  %idxprom393.i = zext i32 %shr389.i to i64
  %arrayidx394.i = getelementptr inbounds i32* %165, i64 %idxprom393.i
  %177 = load i32* %arrayidx394.i, align 4, !tbaa !3
  %conv397.i = and i32 %177, 255
  %shr398.i = lshr i32 %177, 8
  %inc399.i = add nsw i32 %c_nblock_used.2.i, 5
  br label %while.body289.i

return_notr.i:                                    ; preds = %if.end331.i, %s_state_out_len_eq_one.i, %while.body294.preheader.i, %if.end302.i
  %c_state_out_len.2.i = phi i32 [ %dec310.i, %if.end302.i ], [ 0, %if.end331.i ], [ 1, %s_state_out_len_eq_one.i ], [ %c_state_out_len.0.i, %while.body294.preheader.i ]
  %c_nblock_used.3.i = phi i32 [ %c_nblock_used.0.i, %if.end302.i ], [ %add288.i, %if.end331.i ], [ %c_nblock_used.1.i, %s_state_out_len_eq_one.i ], [ %c_nblock_used.0.i, %while.body294.preheader.i ]
  %c_k0.3.i = phi i32 [ %c_k0.0.i, %if.end302.i ], [ %c_k0.2.i, %if.end331.i ], [ %c_k0.1.i, %s_state_out_len_eq_one.i ], [ %c_k0.0.i, %while.body294.preheader.i ]
  %c_state_out_ch.3.i = phi i8 [ %c_state_out_ch.0.i, %if.end302.i ], [ %c_state_out_ch.2.i, %if.end331.i ], [ %c_state_out_ch.1.i, %s_state_out_len_eq_one.i ], [ %c_state_out_ch.0.i, %while.body294.preheader.i ]
  %c_tPos.3.i = phi i32 [ %c_tPos.0.i, %if.end302.i ], [ %c_tPos.2.i, %if.end331.i ], [ %c_tPos.1.i, %s_state_out_len_eq_one.i ], [ %c_tPos.0.i, %while.body294.preheader.i ]
  %cs_next_out.4.i = phi i8* [ %incdec.ptr311.i, %if.end302.i ], [ %cs_next_out.3.i, %if.end331.i ], [ %cs_next_out.2.i, %s_state_out_len_eq_one.i ], [ %cs_next_out.0.i, %while.body294.preheader.i ]
  %cs_avail_out.4.i = phi i32 [ 0, %if.end302.i ], [ %cs_avail_out.3.i, %if.end331.i ], [ 0, %s_state_out_len_eq_one.i ], [ 0, %while.body294.preheader.i ]
  %c_calculatedBlockCRC.4.i = phi i32 [ %xor309.i, %if.end302.i ], [ %c_calculatedBlockCRC.3.i, %if.end331.i ], [ %c_calculatedBlockCRC.2.i, %s_state_out_len_eq_one.i ], [ %c_calculatedBlockCRC.0.i, %while.body294.preheader.i ]
  %178 = load %struct.bz_stream** %strm4, align 8, !tbaa !0
  %total_out_lo32401.i = getelementptr inbounds %struct.bz_stream* %178, i64 0, i32 6
  %179 = load i32* %total_out_lo32401.i, align 4, !tbaa !3
  %sub.i = sub i32 %169, %cs_avail_out.4.i
  %uadd.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %sub.i, i32 %179) #7
  %180 = extractvalue { i32, i1 } %uadd.i, 0
  store i32 %180, i32* %total_out_lo32401.i, align 4, !tbaa !3
  %cmp407.i = extractvalue { i32, i1 } %uadd.i, 1
  br i1 %cmp407.i, label %if.then409.i, label %if.end413.i

if.then409.i:                                     ; preds = %return_notr.i
  %total_out_hi32411.i = getelementptr inbounds %struct.bz_stream* %178, i64 0, i32 7
  %181 = load i32* %total_out_hi32411.i, align 4, !tbaa !3
  %inc412.i = add i32 %181, 1
  store i32 %inc412.i, i32* %total_out_hi32411.i, align 4, !tbaa !3
  br label %if.end413.i

if.end413.i:                                      ; preds = %if.then409.i, %return_notr.i
  store i32 %c_calculatedBlockCRC.4.i, i32* %6, align 4, !tbaa !3
  store i8 %c_state_out_ch.3.i, i8* %7, align 1, !tbaa !1
  store i32 %c_state_out_len.2.i, i32* %8, align 4, !tbaa !3
  store i32 %c_nblock_used.3.i, i32* %9, align 4, !tbaa !3
  store i32 %c_k0.3.i, i32* %10, align 4, !tbaa !3
  store i32* %165, i32** %11, align 8, !tbaa !0
  store i32 %c_tPos.3.i, i32* %12, align 4, !tbaa !3
  %next_out422.i = getelementptr inbounds %struct.bz_stream* %178, i64 0, i32 4
  store i8* %cs_next_out.4.i, i8** %next_out422.i, align 8, !tbaa !0
  %182 = load %struct.bz_stream** %strm4, align 8, !tbaa !0
  %avail_out424.i = getelementptr inbounds %struct.bz_stream* %182, i64 0, i32 5
  store i32 %cs_avail_out.4.i, i32* %avail_out424.i, align 4, !tbaa !3
  br label %if.end20

if.end20:                                         ; preds = %while.end.i140, %while.body2.backedge.i151, %while.end387.i, %while.body341.backedge.i, %while.end.i, %while.body2.backedge.i, %while.body2.preheader.i106, %while.body341.preheader.i, %while.body2.preheader.i, %if.end413.i
  %183 = load i32* %9, align 4, !tbaa !3
  %184 = load i32* %13, align 4, !tbaa !3
  %add = add nsw i32 %184, 1
  %cmp21 = icmp eq i32 %183, %add
  br i1 %cmp21, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %if.end20
  %185 = load i32* %8, align 4, !tbaa !3
  %cmp22 = icmp eq i32 %185, 0
  br i1 %cmp22, label %if.then23, label %return

if.then23:                                        ; preds = %land.lhs.true
  %186 = load i32* %6, align 4, !tbaa !3
  %neg = xor i32 %186, -1
  store i32 %neg, i32* %6, align 4, !tbaa !3
  %187 = load i32* %16, align 4, !tbaa !3
  %cmp25 = icmp sgt i32 %187, 2
  br i1 %cmp25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.then23
  %188 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %189 = load i32* %17, align 4, !tbaa !3
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([18 x i8]* @.str2, i64 0, i64 0), i32 %189, i32 %neg) #11
  %.pr = load i32* %16, align 4, !tbaa !3
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then23
  %190 = phi i32 [ %.pr, %if.then26 ], [ %187, %if.then23 ]
  %cmp31 = icmp sgt i32 %190, 1
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  %191 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %fputc = tail call i32 @fputc(i32 93, %struct._IO_FILE* %191)
  br label %if.end34

if.end34:                                         ; preds = %if.end29, %if.then32
  %192 = load i32* %6, align 4, !tbaa !3
  %193 = load i32* %17, align 4, !tbaa !3
  %cmp37 = icmp eq i32 %192, %193
  br i1 %cmp37, label %if.end47.thread, label %return

if.end47.thread:                                  ; preds = %if.end34
  %194 = load i32* %18, align 4, !tbaa !3
  %shl = shl i32 %194, 1
  %shr = lshr i32 %194, 31
  %or = or i32 %shl, %shr
  %xor = xor i32 %or, %192
  store i32 %xor, i32* %18, align 4, !tbaa !3
  store i32 14, i32* %3, align 4, !tbaa !3
  br label %if.then50

if.end47:                                         ; preds = %while.body
  %cmp49 = icmp sgt i32 %21, 9
  br i1 %cmp49, label %if.then50, label %while.body

if.then50:                                        ; preds = %if.end47.thread, %if.end47
  %call51 = tail call i32 @BZ2_decompress(%struct.DState* %1) #11
  %cmp52 = icmp eq i32 %call51, 4
  br i1 %cmp52, label %if.then53, label %if.end65

if.then53:                                        ; preds = %if.then50
  %195 = load i32* %16, align 4, !tbaa !3
  %cmp55 = icmp sgt i32 %195, 2
  br i1 %cmp55, label %if.then56, label %if.then53.if.end59_crit_edge

if.then53.if.end59_crit_edge:                     ; preds = %if.then53
  %storedCombinedCRC61.pre = getelementptr inbounds i8* %0, i64 3180
  %.pre193 = bitcast i8* %storedCombinedCRC61.pre to i32*
  br label %if.end59

if.then56:                                        ; preds = %if.then53
  %196 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %storedCombinedCRC = getelementptr inbounds i8* %0, i64 3180
  %197 = bitcast i8* %storedCombinedCRC to i32*
  %198 = load i32* %197, align 4, !tbaa !3
  %199 = load i32* %18, align 4, !tbaa !3
  %call58 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0), i32 %198, i32 %199) #11
  br label %if.end59

if.end59:                                         ; preds = %if.then53.if.end59_crit_edge, %if.then56
  %.pre-phi = phi i32* [ %.pre193, %if.then53.if.end59_crit_edge ], [ %197, %if.then56 ]
  %200 = load i32* %18, align 4, !tbaa !3
  %201 = load i32* %.pre-phi, align 4, !tbaa !3
  %cmp62 = icmp eq i32 %200, %201
  %call51. = select i1 %cmp62, i32 4, i32 -4
  br label %return

if.end65:                                         ; preds = %if.then50
  %202 = load i32* %3, align 4, !tbaa !3
  %cmp67 = icmp eq i32 %202, 2
  br i1 %cmp67, label %while.body, label %return

return:                                           ; preds = %if.end65, %if.end20, %land.lhs.true, %if.end34, %while.body, %if.end327.i, %if.end30.i142, %if.end394.i, %if.end30.i, %if.end59, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ -2, %entry ], [ -2, %if.end ], [ -2, %if.end3 ], [ %call51., %if.end59 ], [ -4, %if.end30.i ], [ -4, %if.end394.i ], [ -4, %if.end30.i142 ], [ -4, %if.end327.i ], [ %call51, %if.end65 ], [ 0, %if.end20 ], [ 0, %land.lhs.true ], [ -4, %if.end34 ], [ -1, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @BZ2_decompress(%struct.DState*) #6

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm) #4 {
entry:
  %cmp = icmp eq %struct.bz_stream* %strm, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8
  %0 = load i8** %state, align 8, !tbaa !0
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %strm4 = bitcast i8* %0 to %struct.bz_stream**
  %1 = load %struct.bz_stream** %strm4, align 8, !tbaa !0
  %cmp5 = icmp eq %struct.bz_stream* %1, %strm
  br i1 %cmp5, label %if.end7, label %return

if.end7:                                          ; preds = %if.end3
  %tt = getelementptr inbounds i8* %0, i64 3152
  %2 = bitcast i8* %tt to i32**
  %3 = load i32** %2, align 8, !tbaa !0
  %cmp8 = icmp eq i32* %3, null
  br i1 %cmp8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  %bzfree = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10
  %4 = load void (i8*, i8*)** %bzfree, align 8, !tbaa !0
  %opaque = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  %5 = load i8** %opaque, align 8, !tbaa !0
  %6 = bitcast i32* %3 to i8*
  tail call void %4(i8* %5, i8* %6) #11
  br label %if.end11

if.end11:                                         ; preds = %if.end7, %if.then9
  %ll16 = getelementptr inbounds i8* %0, i64 3160
  %7 = bitcast i8* %ll16 to i16**
  %8 = load i16** %7, align 8, !tbaa !0
  %cmp12 = icmp eq i16* %8, null
  br i1 %cmp12, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end11
  %bzfree14 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10
  %9 = load void (i8*, i8*)** %bzfree14, align 8, !tbaa !0
  %opaque15 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  %10 = load i8** %opaque15, align 8, !tbaa !0
  %11 = bitcast i16* %8 to i8*
  tail call void %9(i8* %10, i8* %11) #11
  br label %if.end17

if.end17:                                         ; preds = %if.end11, %if.then13
  %ll4 = getelementptr inbounds i8* %0, i64 3168
  %12 = bitcast i8* %ll4 to i8**
  %13 = load i8** %12, align 8, !tbaa !0
  %cmp18 = icmp eq i8* %13, null
  %bzfree24.pre = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10
  br i1 %cmp18, label %if.end17.if.end23_crit_edge, label %if.then19

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  %opaque25.pre = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  br label %if.end23

if.then19:                                        ; preds = %if.end17
  %14 = load void (i8*, i8*)** %bzfree24.pre, align 8, !tbaa !0
  %opaque21 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  %15 = load i8** %opaque21, align 8, !tbaa !0
  tail call void %14(i8* %15, i8* %13) #11
  br label %if.end23

if.end23:                                         ; preds = %if.end17.if.end23_crit_edge, %if.then19
  %opaque25.pre-phi = phi i8** [ %opaque25.pre, %if.end17.if.end23_crit_edge ], [ %opaque21, %if.then19 ]
  %16 = load void (i8*, i8*)** %bzfree24.pre, align 8, !tbaa !0
  %17 = load i8** %opaque25.pre-phi, align 8, !tbaa !0
  %18 = load i8** %state, align 8, !tbaa !0
  tail call void %16(i8* %17, i8* %18) #11
  store i8* null, i8** %state, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.end3, %if.end, %entry, %if.end23
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -2, %entry ], [ -2, %if.end ], [ -2, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @BZ2_bzWriteOpen(i32* %bzerror, i32 %f, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #4 {
entry:
  %cmp = icmp ne i32* %bzerror, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  store i32 0, i32* %bzerror, align 4, !tbaa !3
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then
  %cmp4 = icmp eq i32 %f, 0
  br i1 %cmp4, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %blockSize100k.off = add i32 %blockSize100k, -1
  %0 = icmp ugt i32 %blockSize100k.off, 8
  %1 = icmp ugt i32 %workFactor, 250
  %or.cond = or i1 %0, %1
  %2 = icmp ugt i32 %verbosity, 4
  %or.cond103 = or i1 %or.cond, %2
  br i1 %or.cond103, label %if.then16, label %if.end24

if.then16:                                        ; preds = %lor.lhs.false, %if.end3
  br i1 %cmp, label %if.then18, label %return

if.then18:                                        ; preds = %if.then16
  store i32 -2, i32* %bzerror, align 4, !tbaa !3
  br label %return

if.end24:                                         ; preds = %lor.lhs.false
  %call = tail call noalias i8* @malloc(i64 5104) #11
  %cmp25 = icmp eq i8* %call, null
  br i1 %cmp25, label %if.then26, label %if.end34

if.then26:                                        ; preds = %if.end24
  br i1 %cmp, label %if.end29, label %return

if.end29:                                         ; preds = %if.then26
  store i32 -3, i32* %bzerror, align 4, !tbaa !3
  br label %return

if.end34:                                         ; preds = %if.end24
  br i1 %cmp, label %if.end37, label %if.end41

if.end37:                                         ; preds = %if.end34
  store i32 0, i32* %bzerror, align 4, !tbaa !3
  br label %if.end41

if.end41:                                         ; preds = %if.end34, %if.end37
  %lastErr40 = getelementptr inbounds i8* %call, i64 5096
  %3 = bitcast i8* %lastErr40 to i32*
  store i32 0, i32* %3, align 4, !tbaa !3
  %4 = getelementptr inbounds i8* %call, i64 5100
  store i8 0, i8* %4, align 1, !tbaa !1
  %bufN = getelementptr inbounds i8* %call, i64 5004
  %5 = bitcast i8* %bufN to i32*
  store i32 0, i32* %5, align 4, !tbaa !3
  %handle = bitcast i8* %call to i32*
  store i32 %f, i32* %handle, align 4, !tbaa !3
  %6 = getelementptr inbounds i8* %call, i64 5008
  store i8 1, i8* %6, align 1, !tbaa !1
  %strm = getelementptr inbounds i8* %call, i64 5016
  %7 = bitcast i8* %strm to %struct.bz_stream*
  %bzalloc = getelementptr inbounds i8* %call, i64 5072
  %cmp44 = icmp eq i32 %workFactor, 0
  %.workFactor = select i1 %cmp44, i32 30, i32 %workFactor
  call void @llvm.memset.p0i8.i64(i8* %bzalloc, i8 0, i64 24, i32 8, i1 false)
  %call48 = tail call i32 @BZ2_bzCompressInit(%struct.bz_stream* %7, i32 %blockSize100k, i32 %verbosity, i32 %.workFactor) #13
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.end58, label %if.then50

if.then50:                                        ; preds = %if.end41
  br i1 %cmp, label %if.then52, label %if.then55

if.then52:                                        ; preds = %if.then50
  store i32 %call48, i32* %bzerror, align 4, !tbaa !3
  br label %if.then55

if.then55:                                        ; preds = %if.then50, %if.then52
  tail call void @free(i8* %call) #11
  br label %return

if.end58:                                         ; preds = %if.end41
  %avail_in = getelementptr inbounds i8* %call, i64 5024
  %8 = bitcast i8* %avail_in to i32*
  store i32 0, i32* %8, align 4, !tbaa !3
  store i8 1, i8* %4, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %if.then26, %if.end29, %if.then18, %if.then16, %if.end58, %if.then55
  %retval.0 = phi i8* [ null, %if.then55 ], [ %call, %if.end58 ], [ null, %if.then16 ], [ null, %if.then18 ], [ null, %if.end29 ], [ null, %if.then26 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @BZ2_bzWrite(i32* %bzerror, i8* %b, i8* %buf, i32 %len) #4 {
entry:
  %cmp = icmp ne i32* %bzerror, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %bzerror, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp ne i8* %b, null
  br i1 %cmp1, label %if.end3, label %if.then8

if.end3:                                          ; preds = %if.end
  %lastErr = getelementptr inbounds i8* %b, i64 5096
  %0 = bitcast i8* %lastErr to i32*
  store i32 0, i32* %0, align 4, !tbaa !3
  %cmp5 = icmp eq i8* %buf, null
  %cmp7 = icmp slt i32 %len, 0
  %or.cond128 = or i1 %cmp5, %cmp7
  br i1 %or.cond128, label %if.then8, label %if.end16

if.then8:                                         ; preds = %if.end, %if.end3
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then8
  store i32 -2, i32* %bzerror, align 4, !tbaa !3
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8
  br i1 %cmp1, label %if.then13, label %return

if.then13:                                        ; preds = %if.end11
  %lastErr14 = getelementptr inbounds i8* %b, i64 5096
  %1 = bitcast i8* %lastErr14 to i32*
  store i32 -2, i32* %1, align 4, !tbaa !3
  br label %return

if.end16:                                         ; preds = %if.end3
  %2 = getelementptr inbounds i8* %b, i64 5008
  %3 = load i8* %2, align 1, !tbaa !1
  %tobool = icmp eq i8 %3, 0
  br i1 %tobool, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end16
  br i1 %cmp, label %if.then19, label %if.then22

if.then19:                                        ; preds = %if.then17
  store i32 -1, i32* %bzerror, align 4, !tbaa !3
  br label %if.then22

if.then22:                                        ; preds = %if.then17, %if.then19
  store i32 -1, i32* %0, align 4, !tbaa !3
  br label %return

if.end25:                                         ; preds = %if.end16
  %cmp26 = icmp eq i32 %len, 0
  br i1 %cmp26, label %if.then27, label %if.end35

if.then27:                                        ; preds = %if.end25
  br i1 %cmp, label %if.then29, label %if.then32

if.then29:                                        ; preds = %if.then27
  store i32 0, i32* %bzerror, align 4, !tbaa !3
  br label %if.then32

if.then32:                                        ; preds = %if.then27, %if.then29
  store i32 0, i32* %0, align 4, !tbaa !3
  br label %return

if.end35:                                         ; preds = %if.end25
  %strm = getelementptr inbounds i8* %b, i64 5016
  %4 = bitcast i8* %strm to %struct.bz_stream*
  %avail_in = getelementptr inbounds i8* %b, i64 5024
  %5 = bitcast i8* %avail_in to i32*
  store i32 %len, i32* %5, align 4, !tbaa !3
  %next_in = bitcast i8* %strm to i8**
  store i8* %buf, i8** %next_in, align 8, !tbaa !0
  %avail_out = getelementptr inbounds i8* %b, i64 5048
  %6 = bitcast i8* %avail_out to i32*
  %buf38 = getelementptr inbounds i8* %b, i64 4
  %next_out = getelementptr inbounds i8* %b, i64 5040
  %7 = bitcast i8* %next_out to i8**
  %handle = bitcast i8* %b to i32*
  br label %while.body

while.body:                                       ; preds = %if.end70, %if.end35
  store i32 5000, i32* %6, align 4, !tbaa !3
  store i8* %buf38, i8** %7, align 8, !tbaa !0
  %call = tail call i32 @BZ2_bzCompress(%struct.bz_stream* %4, i32 0) #13
  %cmp41 = icmp eq i32 %call, 1
  br i1 %cmp41, label %if.end50, label %if.then42

if.then42:                                        ; preds = %while.body
  br i1 %cmp, label %if.then44, label %if.then47

if.then44:                                        ; preds = %if.then42
  store i32 %call, i32* %bzerror, align 4, !tbaa !3
  br label %if.then47

if.then47:                                        ; preds = %if.then42, %if.then44
  store i32 %call, i32* %0, align 4, !tbaa !3
  br label %return

if.end50:                                         ; preds = %while.body
  %8 = load i32* %6, align 4, !tbaa !3
  %cmp53 = icmp ult i32 %8, 5000
  br i1 %cmp53, label %if.then54, label %if.end70

if.then54:                                        ; preds = %if.end50
  %sub = sub i32 5000, %8
  %9 = load i32* %handle, align 4, !tbaa !3
  %call59 = tail call i32 @spec_fwrite(i8* %buf38, i32 1, i32 %sub, i32 %9) #11
  %cmp60 = icmp eq i32 %sub, %call59
  br i1 %cmp60, label %if.end70, label %if.then61

if.then61:                                        ; preds = %if.then54
  br i1 %cmp, label %if.then63, label %if.then66

if.then63:                                        ; preds = %if.then61
  store i32 -6, i32* %bzerror, align 4, !tbaa !3
  br label %if.then66

if.then66:                                        ; preds = %if.then61, %if.then63
  store i32 -6, i32* %0, align 4, !tbaa !3
  br label %return

if.end70:                                         ; preds = %if.then54, %if.end50
  %10 = load i32* %5, align 4, !tbaa !3
  %cmp73 = icmp eq i32 %10, 0
  br i1 %cmp73, label %if.then74, label %while.body

if.then74:                                        ; preds = %if.end70
  br i1 %cmp, label %if.then76, label %if.then79

if.then76:                                        ; preds = %if.then74
  store i32 0, i32* %bzerror, align 4, !tbaa !3
  br label %if.then79

if.then79:                                        ; preds = %if.then74, %if.then76
  store i32 0, i32* %0, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.then79, %if.then66, %if.then47, %if.then32, %if.then22, %if.end11, %if.then13
  ret void
}

; Function Attrs: optsize
declare i32 @spec_fwrite(i8*, i32, i32, i32) #6

; Function Attrs: nounwind optsize uwtable
define void @BZ2_bzWriteClose(i32* %bzerror, i8* %b, i32 %abandon, i32* %nbytes_in, i32* %nbytes_out) #4 {
entry:
  tail call void @BZ2_bzWriteClose64(i32* %bzerror, i8* %b, i32 %abandon, i32* %nbytes_in, i32* null, i32* %nbytes_out, i32* null) #13
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @BZ2_bzWriteClose64(i32* %bzerror, i8* %b, i32 %abandon, i32* %nbytes_in_lo32, i32* %nbytes_in_hi32, i32* %nbytes_out_lo32, i32* %nbytes_out_hi32) #4 {
entry:
  %cmp = icmp eq i8* %b, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %bzerror, null
  br i1 %cmp1, label %return, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %bzerror, align 4, !tbaa !3
  br label %return

if.end6:                                          ; preds = %entry
  %0 = getelementptr inbounds i8* %b, i64 5008
  %1 = load i8* %0, align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %if.then7, label %if.end15

if.then7:                                         ; preds = %if.end6
  %cmp8 = icmp eq i32* %bzerror, null
  br i1 %cmp8, label %if.then12, label %if.then9

if.then9:                                         ; preds = %if.then7
  store i32 -1, i32* %bzerror, align 4, !tbaa !3
  br label %if.then12

if.then12:                                        ; preds = %if.then9, %if.then7
  %lastErr13 = getelementptr inbounds i8* %b, i64 5096
  %2 = bitcast i8* %lastErr13 to i32*
  store i32 -1, i32* %2, align 4, !tbaa !3
  br label %return

if.end15:                                         ; preds = %if.end6
  %cmp16 = icmp ne i32* %nbytes_in_lo32, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  store i32 0, i32* %nbytes_in_lo32, align 4, !tbaa !3
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  %cmp19 = icmp ne i32* %nbytes_in_hi32, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  store i32 0, i32* %nbytes_in_hi32, align 4, !tbaa !3
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  %cmp22 = icmp ne i32* %nbytes_out_lo32, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end21
  store i32 0, i32* %nbytes_out_lo32, align 4, !tbaa !3
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21
  %cmp25 = icmp ne i32* %nbytes_out_hi32, null
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end24
  store i32 0, i32* %nbytes_out_hi32, align 4, !tbaa !3
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24
  %tobool28 = icmp eq i32 %abandon, 0
  br i1 %tobool28, label %land.lhs.true, label %if.end69

land.lhs.true:                                    ; preds = %if.end27
  %lastErr29 = getelementptr inbounds i8* %b, i64 5096
  %3 = bitcast i8* %lastErr29 to i32*
  %4 = load i32* %3, align 4, !tbaa !3
  %cmp30 = icmp eq i32 %4, 0
  br i1 %cmp30, label %while.body.preheader, label %if.end69

while.body.preheader:                             ; preds = %land.lhs.true
  %strm = getelementptr inbounds i8* %b, i64 5016
  %5 = bitcast i8* %strm to %struct.bz_stream*
  %avail_out = getelementptr inbounds i8* %b, i64 5048
  %6 = bitcast i8* %avail_out to i32*
  %buf = getelementptr inbounds i8* %b, i64 4
  %next_out = getelementptr inbounds i8* %b, i64 5040
  %7 = bitcast i8* %next_out to i8**
  %handle = bitcast i8* %b to i32*
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end65
  store i32 5000, i32* %6, align 4, !tbaa !3
  store i8* %buf, i8** %7, align 8, !tbaa !0
  %call = tail call i32 @BZ2_bzCompress(%struct.bz_stream* %5, i32 2) #13
  %call.off = add i32 %call, -3
  %8 = icmp ugt i32 %call.off, 1
  br i1 %8, label %if.then37, label %if.end45

if.then37:                                        ; preds = %while.body
  %cmp38 = icmp eq i32* %bzerror, null
  br i1 %cmp38, label %if.then42, label %if.then39

if.then39:                                        ; preds = %if.then37
  store i32 %call, i32* %bzerror, align 4, !tbaa !3
  br label %if.then42

if.then42:                                        ; preds = %if.then39, %if.then37
  store i32 %call, i32* %3, align 4, !tbaa !3
  br label %return

if.end45:                                         ; preds = %while.body
  %9 = load i32* %6, align 4, !tbaa !3
  %cmp48 = icmp ult i32 %9, 5000
  br i1 %cmp48, label %if.then49, label %if.end65

if.then49:                                        ; preds = %if.end45
  %sub = sub i32 5000, %9
  %10 = load i32* %handle, align 4, !tbaa !3
  %call54 = tail call i32 @spec_fwrite(i8* %buf, i32 1, i32 %sub, i32 %10) #11
  %cmp55 = icmp eq i32 %sub, %call54
  br i1 %cmp55, label %if.end65, label %if.then56

if.then56:                                        ; preds = %if.then49
  %cmp57 = icmp eq i32* %bzerror, null
  br i1 %cmp57, label %if.then61, label %if.then58

if.then58:                                        ; preds = %if.then56
  store i32 -6, i32* %bzerror, align 4, !tbaa !3
  br label %if.then61

if.then61:                                        ; preds = %if.then58, %if.then56
  store i32 -6, i32* %3, align 4, !tbaa !3
  br label %return

if.end65:                                         ; preds = %if.then49, %if.end45
  %cmp66 = icmp eq i32 %call, 4
  br i1 %cmp66, label %if.end69, label %while.body

if.end69:                                         ; preds = %if.end65, %if.end27, %land.lhs.true
  br i1 %cmp16, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end69
  %total_in_lo32 = getelementptr inbounds i8* %b, i64 5028
  %11 = bitcast i8* %total_in_lo32 to i32*
  %12 = load i32* %11, align 4, !tbaa !3
  store i32 %12, i32* %nbytes_in_lo32, align 4, !tbaa !3
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end69
  br i1 %cmp19, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.end76
  %total_in_hi32 = getelementptr inbounds i8* %b, i64 5032
  %13 = bitcast i8* %total_in_hi32 to i32*
  %14 = load i32* %13, align 4, !tbaa !3
  store i32 %14, i32* %nbytes_in_hi32, align 4, !tbaa !3
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end76
  br i1 %cmp22, label %if.then82, label %if.end84

if.then82:                                        ; preds = %if.end80
  %total_out_lo32 = getelementptr inbounds i8* %b, i64 5052
  %15 = bitcast i8* %total_out_lo32 to i32*
  %16 = load i32* %15, align 4, !tbaa !3
  store i32 %16, i32* %nbytes_out_lo32, align 4, !tbaa !3
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.end80
  br i1 %cmp25, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.end84
  %total_out_hi32 = getelementptr inbounds i8* %b, i64 5056
  %17 = bitcast i8* %total_out_hi32 to i32*
  %18 = load i32* %17, align 4, !tbaa !3
  store i32 %18, i32* %nbytes_out_hi32, align 4, !tbaa !3
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.end84
  %cmp89 = icmp eq i32* %bzerror, null
  br i1 %cmp89, label %if.end95, label %if.then90

if.then90:                                        ; preds = %if.end88
  store i32 0, i32* %bzerror, align 4, !tbaa !3
  br label %if.end95

if.end95:                                         ; preds = %if.end88, %if.then90
  %lastErr94 = getelementptr inbounds i8* %b, i64 5096
  %19 = bitcast i8* %lastErr94 to i32*
  store i32 0, i32* %19, align 4, !tbaa !3
  %strm96 = getelementptr inbounds i8* %b, i64 5016
  %20 = bitcast i8* %strm96 to %struct.bz_stream*
  %call97 = tail call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %20) #13
  tail call void @free(i8* %b) #11
  br label %return

return:                                           ; preds = %if.then2, %if.then, %if.then61, %if.then42, %if.then12, %if.end95
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i8* @BZ2_bzReadOpen(i32* %bzerror, i32 %f, i32 %verbosity, i32 %small, i8* %unused, i32 %nUnused) #4 {
entry:
  %cmp = icmp ne i32* %bzerror, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  store i32 0, i32* %bzerror, align 4, !tbaa !3
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then
  %cmp4 = icmp eq i32 %f, 0
  %0 = icmp ugt i32 %small, 1
  %or.cond = or i1 %cmp4, %0
  %1 = icmp ugt i32 %verbosity, 4
  %or.cond121 = or i1 %or.cond, %1
  br i1 %or.cond121, label %if.then21, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end3
  %cmp12 = icmp ne i8* %unused, null
  %cmp14 = icmp eq i32 %nUnused, 0
  %or.cond122 = or i1 %cmp12, %cmp14
  %or.cond122.not = xor i1 %or.cond122, true
  %2 = icmp ugt i32 %nUnused, 5000
  %or.cond123 = and i1 %cmp12, %2
  %or.cond127 = or i1 %or.cond123, %or.cond122.not
  br i1 %or.cond127, label %if.then21, label %if.end29

if.then21:                                        ; preds = %lor.lhs.false11, %if.end3
  br i1 %cmp, label %if.then23, label %return

if.then23:                                        ; preds = %if.then21
  store i32 -2, i32* %bzerror, align 4, !tbaa !3
  br label %return

if.end29:                                         ; preds = %lor.lhs.false11
  %call = tail call noalias i8* @malloc(i64 5104) #11
  %cmp30 = icmp eq i8* %call, null
  br i1 %cmp30, label %if.then31, label %if.end39

if.then31:                                        ; preds = %if.end29
  br i1 %cmp, label %if.end34, label %return

if.end34:                                         ; preds = %if.then31
  store i32 -3, i32* %bzerror, align 4, !tbaa !3
  br label %return

if.end39:                                         ; preds = %if.end29
  br i1 %cmp, label %if.end42, label %if.end46

if.end42:                                         ; preds = %if.end39
  store i32 0, i32* %bzerror, align 4, !tbaa !3
  br label %if.end46

if.end46:                                         ; preds = %if.end39, %if.end42
  %lastErr45 = getelementptr inbounds i8* %call, i64 5096
  %3 = bitcast i8* %lastErr45 to i32*
  store i32 0, i32* %3, align 4, !tbaa !3
  %4 = getelementptr inbounds i8* %call, i64 5100
  store i8 0, i8* %4, align 1, !tbaa !1
  %handle = bitcast i8* %call to i32*
  store i32 %f, i32* %handle, align 4, !tbaa !3
  %bufN = getelementptr inbounds i8* %call, i64 5004
  %5 = bitcast i8* %bufN to i32*
  store i32 0, i32* %5, align 4, !tbaa !3
  %6 = getelementptr inbounds i8* %call, i64 5008
  store i8 0, i8* %6, align 1, !tbaa !1
  %strm = getelementptr inbounds i8* %call, i64 5016
  %7 = bitcast i8* %strm to %struct.bz_stream*
  %bzalloc = getelementptr inbounds i8* %call, i64 5072
  %cmp49128 = icmp sgt i32 %nUnused, 0
  call void @llvm.memset.p0i8.i64(i8* %bzalloc, i8 0, i64 24, i32 8, i1 false)
  br i1 %cmp49128, label %while.body, label %while.end

while.body:                                       ; preds = %if.end46, %while.body
  %8 = phi i32 [ %inc, %while.body ], [ 0, %if.end46 ]
  %nUnused.addr.0130 = phi i32 [ %dec, %while.body ], [ %nUnused, %if.end46 ]
  %unused.addr.0129 = phi i8* [ %add.ptr, %while.body ], [ %unused, %if.end46 ]
  %9 = load i8* %unused.addr.0129, align 1, !tbaa !1
  %idxprom = sext i32 %8 to i64
  %buf.sum = add i64 %idxprom, 4
  %arrayidx = getelementptr inbounds i8* %call, i64 %buf.sum
  store i8 %9, i8* %arrayidx, align 1, !tbaa !1
  %10 = load i32* %5, align 4, !tbaa !3
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %5, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %unused.addr.0129, i64 1
  %dec = add nsw i32 %nUnused.addr.0130, -1
  %cmp49 = icmp sgt i32 %dec, 0
  br i1 %cmp49, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.end46
  %call53 = tail call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %7, i32 %verbosity, i32 %small) #13
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.end63, label %if.then55

if.then55:                                        ; preds = %while.end
  br i1 %cmp, label %if.then57, label %if.then60

if.then57:                                        ; preds = %if.then55
  store i32 %call53, i32* %bzerror, align 4, !tbaa !3
  br label %if.then60

if.then60:                                        ; preds = %if.then55, %if.then57
  tail call void @free(i8* %call) #11
  br label %return

if.end63:                                         ; preds = %while.end
  %11 = load i32* %5, align 4, !tbaa !3
  %avail_in = getelementptr inbounds i8* %call, i64 5024
  %12 = bitcast i8* %avail_in to i32*
  store i32 %11, i32* %12, align 4, !tbaa !3
  %buf66 = getelementptr inbounds i8* %call, i64 4
  %next_in = bitcast i8* %strm to i8**
  store i8* %buf66, i8** %next_in, align 8, !tbaa !0
  store i8 1, i8* %4, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %if.then31, %if.end34, %if.then23, %if.then21, %if.end63, %if.then60
  %retval.0 = phi i8* [ null, %if.then60 ], [ %call, %if.end63 ], [ null, %if.then21 ], [ null, %if.then23 ], [ null, %if.end34 ], [ null, %if.then31 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @BZ2_bzReadClose(i32* %bzerror, i8* %b) #4 {
entry:
  %cmp = icmp ne i32* %bzerror, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %bzerror, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq i8* %b, null
  br i1 %cmp1, label %if.then5, label %if.end13

if.then5:                                         ; preds = %if.end
  br i1 %cmp, label %if.end8, label %return

if.end8:                                          ; preds = %if.then5
  store i32 0, i32* %bzerror, align 4, !tbaa !3
  br label %return

if.end13:                                         ; preds = %if.end
  %lastErr = getelementptr inbounds i8* %b, i64 5096
  %0 = bitcast i8* %lastErr to i32*
  store i32 0, i32* %0, align 4, !tbaa !3
  %1 = getelementptr inbounds i8* %b, i64 5008
  %2 = load i8* %1, align 1, !tbaa !1
  %tobool = icmp eq i8 %2, 0
  br i1 %tobool, label %if.end22, label %if.then14

if.then14:                                        ; preds = %if.end13
  br i1 %cmp, label %if.then16, label %if.then19

if.then16:                                        ; preds = %if.then14
  store i32 -1, i32* %bzerror, align 4, !tbaa !3
  br label %if.then19

if.then19:                                        ; preds = %if.then14, %if.then16
  store i32 -1, i32* %0, align 4, !tbaa !3
  br label %return

if.end22:                                         ; preds = %if.end13
  %3 = getelementptr inbounds i8* %b, i64 5100
  %4 = load i8* %3, align 1, !tbaa !1
  %tobool23 = icmp eq i8 %4, 0
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end22
  %strm = getelementptr inbounds i8* %b, i64 5016
  %5 = bitcast i8* %strm to %struct.bz_stream*
  %call = tail call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %5) #13
  br label %if.end25

if.end25:                                         ; preds = %if.end22, %if.then24
  tail call void @free(i8* %b) #11
  br label %return

return:                                           ; preds = %if.then5, %if.end8, %if.then19, %if.end25
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzRead(i32* %bzerror, i8* %b, i8* %buf, i32 %len) #4 {
entry:
  %cmp = icmp ne i32* %bzerror, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %bzerror, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp ne i8* %b, null
  br i1 %cmp1, label %if.end3, label %if.then8

if.end3:                                          ; preds = %if.end
  %lastErr = getelementptr inbounds i8* %b, i64 5096
  %0 = bitcast i8* %lastErr to i32*
  store i32 0, i32* %0, align 4, !tbaa !3
  %cmp5 = icmp eq i8* %buf, null
  %cmp7 = icmp slt i32 %len, 0
  %or.cond181 = or i1 %cmp5, %cmp7
  br i1 %or.cond181, label %if.then8, label %if.end16

if.then8:                                         ; preds = %if.end, %if.end3
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then8
  store i32 -2, i32* %bzerror, align 4, !tbaa !3
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8
  br i1 %cmp1, label %if.then13, label %return

if.then13:                                        ; preds = %if.end11
  %lastErr14 = getelementptr inbounds i8* %b, i64 5096
  %1 = bitcast i8* %lastErr14 to i32*
  store i32 -2, i32* %1, align 4, !tbaa !3
  br label %return

if.end16:                                         ; preds = %if.end3
  %2 = getelementptr inbounds i8* %b, i64 5008
  %3 = load i8* %2, align 1, !tbaa !1
  %tobool = icmp eq i8 %3, 0
  br i1 %tobool, label %if.end25, label %if.then17

if.then17:                                        ; preds = %if.end16
  br i1 %cmp, label %if.then19, label %if.then22

if.then19:                                        ; preds = %if.then17
  store i32 -1, i32* %bzerror, align 4, !tbaa !3
  br label %if.then22

if.then22:                                        ; preds = %if.then17, %if.then19
  store i32 -1, i32* %0, align 4, !tbaa !3
  br label %return

if.end25:                                         ; preds = %if.end16
  %cmp26 = icmp eq i32 %len, 0
  br i1 %cmp26, label %if.then27, label %if.end35

if.then27:                                        ; preds = %if.end25
  br i1 %cmp, label %if.then29, label %if.then32

if.then29:                                        ; preds = %if.then27
  store i32 0, i32* %bzerror, align 4, !tbaa !3
  br label %if.then32

if.then32:                                        ; preds = %if.then27, %if.then29
  store i32 0, i32* %0, align 4, !tbaa !3
  br label %return

if.end35:                                         ; preds = %if.end25
  %strm = getelementptr inbounds i8* %b, i64 5016
  %4 = bitcast i8* %strm to %struct.bz_stream*
  %avail_out = getelementptr inbounds i8* %b, i64 5048
  %5 = bitcast i8* %avail_out to i32*
  store i32 %len, i32* %5, align 4, !tbaa !3
  %next_out = getelementptr inbounds i8* %b, i64 5040
  %6 = bitcast i8* %next_out to i8**
  store i8* %buf, i8** %6, align 8, !tbaa !0
  %avail_in = getelementptr inbounds i8* %b, i64 5024
  %7 = bitcast i8* %avail_in to i32*
  %handle = bitcast i8* %b to i32*
  %buf41 = getelementptr inbounds i8* %b, i64 4
  %bufN = getelementptr inbounds i8* %b, i64 5004
  %8 = bitcast i8* %bufN to i32*
  %next_in = bitcast i8* %strm to i8**
  br label %while.body

while.body:                                       ; preds = %if.end105, %if.end35
  %9 = load i32* %7, align 4, !tbaa !3
  %cmp38 = icmp eq i32 %9, 0
  br i1 %cmp38, label %land.lhs.true, label %if.end50

land.lhs.true:                                    ; preds = %while.body
  %10 = load i32* %handle, align 4, !tbaa !3
  %call = tail call fastcc zeroext i8 @myfeof(i32 %10) #13
  %tobool39 = icmp eq i8 %call, 0
  br i1 %tobool39, label %if.then40, label %if.end50

if.then40:                                        ; preds = %land.lhs.true
  %11 = load i32* %handle, align 4, !tbaa !3
  %call43 = tail call i32 @spec_fread(i8* %buf41, i32 1, i32 5000, i32 %11) #11
  store i32 %call43, i32* %8, align 4, !tbaa !3
  store i32 %call43, i32* %7, align 4, !tbaa !3
  store i8* %buf41, i8** %next_in, align 8, !tbaa !0
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true, %if.then40, %while.body
  %call52 = tail call i32 @BZ2_bzDecompress(%struct.bz_stream* %4) #13
  switch i32 %call52, label %if.then56 [
    i32 0, label %land.lhs.true66
    i32 4, label %if.then93
  ]

if.then56:                                        ; preds = %if.end50
  br i1 %cmp, label %if.then58, label %if.then61

if.then58:                                        ; preds = %if.then56
  store i32 %call52, i32* %bzerror, align 4, !tbaa !3
  br label %if.then61

if.then61:                                        ; preds = %if.then56, %if.then58
  store i32 %call52, i32* %0, align 4, !tbaa !3
  br label %return

land.lhs.true66:                                  ; preds = %if.end50
  %12 = load i32* %handle, align 4, !tbaa !3
  %call68 = tail call fastcc zeroext i8 @myfeof(i32 %12) #13
  %tobool69 = icmp eq i8 %call68, 0
  br i1 %tobool69, label %if.end105, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %land.lhs.true66
  %13 = load i32* %7, align 4, !tbaa !3
  %cmp73 = icmp eq i32 %13, 0
  br i1 %cmp73, label %land.lhs.true75, label %if.end105

land.lhs.true75:                                  ; preds = %land.lhs.true70
  %14 = load i32* %5, align 4, !tbaa !3
  %cmp78 = icmp eq i32 %14, 0
  br i1 %cmp78, label %if.then110, label %if.then80

if.then80:                                        ; preds = %land.lhs.true75
  br i1 %cmp, label %if.then83, label %if.then87

if.then83:                                        ; preds = %if.then80
  store i32 -7, i32* %bzerror, align 4, !tbaa !3
  br label %if.then87

if.then87:                                        ; preds = %if.then80, %if.then83
  store i32 -7, i32* %0, align 4, !tbaa !3
  br label %return

if.then93:                                        ; preds = %if.end50
  br i1 %cmp, label %if.then96, label %if.end102

if.then96:                                        ; preds = %if.then93
  store i32 4, i32* %bzerror, align 4, !tbaa !3
  br label %if.end102

if.end102:                                        ; preds = %if.then96, %if.then93
  store i32 4, i32* %0, align 4, !tbaa !3
  %15 = load i32* %5, align 4, !tbaa !3
  %sub = sub i32 %len, %15
  br label %return

if.end105:                                        ; preds = %land.lhs.true70, %land.lhs.true66
  %.pr = load i32* %5, align 4, !tbaa !3
  %cmp108 = icmp eq i32 %.pr, 0
  br i1 %cmp108, label %if.then110, label %while.body

if.then110:                                       ; preds = %land.lhs.true75, %if.end105
  br i1 %cmp, label %if.then113, label %if.then117

if.then113:                                       ; preds = %if.then110
  store i32 0, i32* %bzerror, align 4, !tbaa !3
  br label %if.then117

if.then117:                                       ; preds = %if.then110, %if.then113
  store i32 0, i32* %0, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.then117, %if.then87, %if.then61, %if.then32, %if.then22, %if.end11, %if.then13, %if.end102
  %retval.0 = phi i32 [ %sub, %if.end102 ], [ 0, %if.then13 ], [ 0, %if.end11 ], [ 0, %if.then22 ], [ 0, %if.then32 ], [ 0, %if.then61 ], [ 0, %if.then87 ], [ %len, %if.then117 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc zeroext i8 @myfeof(i32 %f) #4 {
entry:
  %call = tail call i32 @spec_getc(i32 %f) #11
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %conv = trunc i32 %call to i8
  %call1 = tail call i32 @spec_ungetc(i8 zeroext %conv, i32 %f) #11
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ 0, %if.end ], [ 1, %entry ]
  ret i8 %retval.0
}

; Function Attrs: optsize
declare i32 @spec_fread(i8*, i32, i32, i32) #6

; Function Attrs: nounwind optsize uwtable
define void @BZ2_bzReadGetUnused(i32* %bzerror, i8* %b, i8** %unused, i32* %nUnused) #4 {
entry:
  %cmp = icmp eq i8* %b, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %bzerror, null
  br i1 %cmp1, label %return, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 -2, i32* %bzerror, align 4, !tbaa !3
  br label %return

if.end6:                                          ; preds = %entry
  %lastErr7 = getelementptr inbounds i8* %b, i64 5096
  %0 = bitcast i8* %lastErr7 to i32*
  %1 = load i32* %0, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %1, 4
  br i1 %cmp8, label %if.end17, label %if.then9

if.then9:                                         ; preds = %if.end6
  %cmp10 = icmp eq i32* %bzerror, null
  br i1 %cmp10, label %if.then14, label %if.then11

if.then11:                                        ; preds = %if.then9
  store i32 -1, i32* %bzerror, align 4, !tbaa !3
  br label %if.then14

if.then14:                                        ; preds = %if.then11, %if.then9
  store i32 -1, i32* %0, align 4, !tbaa !3
  br label %return

if.end17:                                         ; preds = %if.end6
  %cmp18 = icmp eq i8** %unused, null
  %cmp19 = icmp eq i32* %nUnused, null
  %or.cond = or i1 %cmp18, %cmp19
  %cmp21 = icmp eq i32* %bzerror, null
  br i1 %or.cond, label %if.then20, label %if.end28

if.then20:                                        ; preds = %if.end17
  br i1 %cmp21, label %if.then25, label %if.then22

if.then22:                                        ; preds = %if.then20
  store i32 -2, i32* %bzerror, align 4, !tbaa !3
  br label %if.then25

if.then25:                                        ; preds = %if.then22, %if.then20
  store i32 -2, i32* %0, align 4, !tbaa !3
  br label %return

if.end28:                                         ; preds = %if.end17
  br i1 %cmp21, label %if.end35, label %if.then30

if.then30:                                        ; preds = %if.end28
  store i32 0, i32* %bzerror, align 4, !tbaa !3
  br label %if.end35

if.end35:                                         ; preds = %if.end28, %if.then30
  store i32 0, i32* %0, align 4, !tbaa !3
  %strm = getelementptr inbounds i8* %b, i64 5016
  %avail_in = getelementptr inbounds i8* %b, i64 5024
  %2 = bitcast i8* %avail_in to i32*
  %3 = load i32* %2, align 4, !tbaa !3
  store i32 %3, i32* %nUnused, align 4, !tbaa !3
  %next_in = bitcast i8* %strm to i8**
  %4 = load i8** %next_in, align 8, !tbaa !0
  store i8* %4, i8** %unused, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.then2, %if.then, %if.then25, %if.then14, %if.end35
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzBuffToBuffCompress(i8* %dest, i32* %destLen, i8* %source, i32 %sourceLen, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #4 {
entry:
  %strm = alloca %struct.bz_stream, align 8
  %0 = bitcast %struct.bz_stream* %strm to i8*
  call void @llvm.lifetime.start(i64 80, i8* %0) #7
  %cmp = icmp eq i8* %dest, null
  %cmp1 = icmp eq i32* %destLen, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i8* %source, null
  %or.cond50 = or i1 %or.cond, %cmp3
  br i1 %or.cond50, label %cleanup, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %entry
  %blockSize100k.off = add i32 %blockSize100k, -1
  %1 = icmp ugt i32 %blockSize100k.off, 8
  %2 = icmp ugt i32 %verbosity, 4
  %or.cond51 = or i1 %1, %2
  %3 = icmp ugt i32 %workFactor, 250
  %or.cond52 = or i1 %or.cond51, %3
  br i1 %or.cond52, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false4
  %cmp16 = icmp eq i32 %workFactor, 0
  %.workFactor = select i1 %cmp16, i32 30, i32 %workFactor
  %bzalloc = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 9
  %4 = bitcast i8* (i8*, i32, i32)** %bzalloc to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 24, i32 8, i1 false)
  %call = call i32 @BZ2_bzCompressInit(%struct.bz_stream* %strm, i32 %blockSize100k, i32 %verbosity, i32 %.workFactor) #13
  %cmp19 = icmp eq i32 %call, 0
  br i1 %cmp19, label %if.end21, label %cleanup

if.end21:                                         ; preds = %if.end
  %next_in = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 0
  store i8* %source, i8** %next_in, align 8, !tbaa !0
  %next_out = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 4
  store i8* %dest, i8** %next_out, align 8, !tbaa !0
  %avail_in = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 1
  store i32 %sourceLen, i32* %avail_in, align 8, !tbaa !3
  %5 = load i32* %destLen, align 4, !tbaa !3
  %avail_out = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 5
  store i32 %5, i32* %avail_out, align 8, !tbaa !3
  %call22 = call i32 @BZ2_bzCompress(%struct.bz_stream* %strm, i32 2) #13
  switch i32 %call22, label %errhandler [
    i32 3, label %output_overflow
    i32 4, label %if.end28
  ]

if.end28:                                         ; preds = %if.end21
  %6 = load i32* %avail_out, align 8, !tbaa !3
  %7 = load i32* %destLen, align 4, !tbaa !3
  %sub = sub i32 %7, %6
  store i32 %sub, i32* %destLen, align 4, !tbaa !3
  %call30 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm) #13
  br label %cleanup

output_overflow:                                  ; preds = %if.end21
  %call31 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm) #13
  br label %cleanup

errhandler:                                       ; preds = %if.end21
  %call32 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false4, %errhandler, %output_overflow, %if.end28
  %retval.0 = phi i32 [ -8, %output_overflow ], [ %call22, %errhandler ], [ 0, %if.end28 ], [ -2, %lor.lhs.false4 ], [ -2, %entry ], [ %call, %if.end ]
  call void @llvm.lifetime.end(i64 80, i8* %0) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzBuffToBuffDecompress(i8* %dest, i32* %destLen, i8* %source, i32 %sourceLen, i32 %small, i32 %verbosity) #4 {
entry:
  %strm = alloca %struct.bz_stream, align 8
  %0 = bitcast %struct.bz_stream* %strm to i8*
  call void @llvm.lifetime.start(i64 80, i8* %0) #7
  %cmp = icmp eq i8* %dest, null
  %cmp1 = icmp eq i32* %destLen, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i8* %source, null
  %or.cond42 = or i1 %or.cond, %cmp3
  %1 = icmp ugt i32 %small, 1
  %or.cond43 = or i1 %or.cond42, %1
  %2 = icmp ugt i32 %verbosity, 4
  %or.cond44 = or i1 %or.cond43, %2
  br i1 %or.cond44, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %bzalloc = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 9
  %3 = bitcast i8* (i8*, i32, i32)** %bzalloc to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 24, i32 8, i1 false)
  %call = call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %strm, i32 %verbosity, i32 %small) #13
  %cmp11 = icmp eq i32 %call, 0
  br i1 %cmp11, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end
  %next_in = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 0
  store i8* %source, i8** %next_in, align 8, !tbaa !0
  %next_out = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 4
  store i8* %dest, i8** %next_out, align 8, !tbaa !0
  %avail_in = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 1
  store i32 %sourceLen, i32* %avail_in, align 8, !tbaa !3
  %4 = load i32* %destLen, align 4, !tbaa !3
  %avail_out = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 5
  store i32 %4, i32* %avail_out, align 8, !tbaa !3
  %call14 = call i32 @BZ2_bzDecompress(%struct.bz_stream* %strm) #13
  switch i32 %call14, label %errhandler [
    i32 0, label %output_overflow_or_eof
    i32 4, label %if.end20
  ]

if.end20:                                         ; preds = %if.end13
  %5 = load i32* %avail_out, align 8, !tbaa !3
  %6 = load i32* %destLen, align 4, !tbaa !3
  %sub = sub i32 %6, %5
  store i32 %sub, i32* %destLen, align 4, !tbaa !3
  %call22 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm) #13
  br label %cleanup

output_overflow_or_eof:                           ; preds = %if.end13
  %7 = load i32* %avail_out, align 8, !tbaa !3
  %cmp24 = icmp eq i32 %7, 0
  %call26 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm) #13
  %. = select i1 %cmp24, i32 -8, i32 -7
  br label %cleanup

errhandler:                                       ; preds = %if.end13
  %call28 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm) #13
  br label %cleanup

cleanup:                                          ; preds = %output_overflow_or_eof, %if.end, %entry, %errhandler, %if.end20
  %retval.0 = phi i32 [ %call14, %errhandler ], [ 0, %if.end20 ], [ -2, %entry ], [ %call, %if.end ], [ %., %output_overflow_or_eof ]
  call void @llvm.lifetime.end(i64 80, i8* %0) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @BZ2_bzopen(i8* %path, i8* %mode) #4 {
entry:
  %call = tail call fastcc i8* @bzopen_or_bzdopen(i8* %path, i8* %mode, i32 0) #13
  ret i8* %call
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @bzopen_or_bzdopen(i8* %path, i8* %mode, i32 %open_mode) #4 {
entry:
  %bzerr = alloca i32, align 4
  %mode2 = alloca [10 x i8], align 1
  %0 = getelementptr inbounds [10 x i8]* %mode2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 10, i32 1, i1 false)
  %cmp = icmp eq i8* %mode, null
  br i1 %cmp, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %1 = load i8* %mode, align 1, !tbaa !1
  %tobool6 = icmp eq i8 %1, 0
  br i1 %tobool6, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %sw.epilog
  %2 = phi i8 [ %5, %sw.epilog ], [ %1, %while.cond.preheader ]
  %mode.addr.09 = phi i8* [ %incdec.ptr, %sw.epilog ], [ %mode, %while.cond.preheader ]
  %blockSize100k.08 = phi i32 [ %blockSize100k.1, %sw.epilog ], [ 9, %while.cond.preheader ]
  %writing.07 = phi i32 [ %writing.1, %sw.epilog ], [ 0, %while.cond.preheader ]
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 114, label %sw.epilog
    i32 119, label %sw.bb1
    i32 115, label %sw.bb2
  ]

sw.bb1:                                           ; preds = %while.body
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %idxprom = sext i8 %2 to i64
  %call = call i16** @__ctype_b_loc() #14
  %3 = load i16** %call, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i16* %3, i64 %idxprom
  %4 = load i16* %arrayidx, align 2, !tbaa !4
  %and = and i16 %4, 2048
  %tobool5 = icmp eq i16 %and, 0
  %sub = add nsw i32 %conv, -48
  %blockSize100k.0.sub = select i1 %tobool5, i32 %blockSize100k.08, i32 %sub
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %while.body, %sw.bb2, %sw.bb1
  %writing.1 = phi i32 [ %writing.07, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %while.body ], [ %writing.07, %sw.default ]
  %blockSize100k.1 = phi i32 [ %blockSize100k.08, %sw.bb2 ], [ %blockSize100k.08, %sw.bb1 ], [ %blockSize100k.08, %while.body ], [ %blockSize100k.0.sub, %sw.default ]
  %incdec.ptr = getelementptr inbounds i8* %mode.addr.09, i64 1
  %5 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool = icmp eq i8 %5, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %sw.epilog, %while.cond.preheader
  %blockSize100k.0.lcssa = phi i32 [ 9, %while.cond.preheader ], [ %blockSize100k.1, %sw.epilog ]
  %writing.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %writing.1, %sw.epilog ]
  %tobool9 = icmp ne i32 %writing.0.lcssa, 0
  %strlen = call i64 @strlen(i8* %0)
  %endptr = getelementptr [10 x i8]* %mode2, i64 0, i64 %strlen
  %6 = bitcast i8* %endptr to i16*
  %7 = select i1 %tobool9, i16 119, i16 114
  store i16 %7, i16* %6, align 1
  %strlen1 = call i64 @strlen(i8* %0)
  %endptr2 = getelementptr [10 x i8]* %mode2, i64 0, i64 %strlen1
  %8 = bitcast i8* %endptr2 to i16*
  store i16 98, i16* %8, align 1
  %cmp13 = icmp eq i32 %open_mode, 0
  br i1 %cmp13, label %if.then15, label %cleanup

if.then15:                                        ; preds = %while.end
  %cmp16 = icmp eq i8* %path, null
  br i1 %cmp16, label %if.end26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then15
  %strcmpload = load i8* %path, align 1
  %cmp19.not = icmp ne i8 %strcmpload, 0
  %tobool9.not = xor i1 %tobool9, true
  %brmerge = or i1 %cmp19.not, %tobool9.not
  br i1 %brmerge, label %cleanup, label %if.then32

if.end26:                                         ; preds = %if.then15
  br i1 %tobool9, label %if.then32, label %cleanup

if.then32:                                        ; preds = %lor.lhs.false, %if.end26
  %cmp33 = icmp slt i32 %blockSize100k.0.lcssa, 1
  %.blockSize100k.0 = select i1 %cmp33, i32 1, i32 %blockSize100k.0.lcssa
  %cmp37 = icmp sgt i32 %.blockSize100k.0, 9
  %blockSize100k.3 = select i1 %cmp37, i32 9, i32 %.blockSize100k.0
  %call41 = call i8* @BZ2_bzWriteOpen(i32* %bzerr, i32 1, i32 %blockSize100k.3, i32 0, i32 30) #13
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end26, %while.end, %if.then32, %entry
  %retval.0 = phi i8* [ null, %entry ], [ null, %if.end26 ], [ %call41, %if.then32 ], [ null, %lor.lhs.false ], [ null, %while.end ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @BZ2_bzdopen(i32 %fd, i8* %mode) #4 {
entry:
  %call = tail call fastcc i8* @bzopen_or_bzdopen(i8* null, i8* %mode, i32 1) #13
  ret i8* %call
}

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzread(i8* %b, i8* %buf, i32 %len) #4 {
entry:
  %bzerr = alloca i32, align 4
  %lastErr = getelementptr inbounds i8* %b, i64 5096
  %0 = bitcast i8* %lastErr to i32*
  %1 = load i32* %0, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @BZ2_bzRead(i32* %bzerr, i8* %b, i8* %buf, i32 %len) #13
  %2 = load i32* %bzerr, align 4, !tbaa !3
  %3 = and i32 %2, -5
  %4 = icmp eq i32 %3, 0
  %call. = select i1 %4, i32 %call, i32 -1
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzwrite(i8* %b, i8* %buf, i32 %len) #4 {
entry:
  %bzerr = alloca i32, align 4
  call void @BZ2_bzWrite(i32* %bzerr, i8* %b, i8* %buf, i32 %len) #13
  %0 = load i32* %bzerr, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  %len. = select i1 %cmp, i32 %len, i32 -1
  ret i32 %len.
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @BZ2_bzflush(i8* nocapture %b) #2 {
entry:
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @BZ2_bzclose(i8* %b) #4 {
entry:
  %bzerr = alloca i32, align 4
  %cmp = icmp eq i8* %b, null
  br i1 %cmp, label %if.end5, label %if.end

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds i8* %b, i64 5008
  %1 = load i8* %0, align 1, !tbaa !1
  %tobool = icmp eq i8 %1, 0
  br i1 %tobool, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @BZ2_bzWriteClose64(i32* %bzerr, i8* %b, i32 0, i32* null, i32* null, i32* null, i32* null) #11
  %2 = load i32* %bzerr, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.then1
  call void @BZ2_bzWriteClose64(i32* null, i8* %b, i32 1, i32* null, i32* null, i32* null, i32* null) #11
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @BZ2_bzReadClose(i32* %bzerr, i8* %b) #13
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then1, %if.then3, %if.else
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i8* @BZ2_bzerror(i8* nocapture %b, i32* nocapture %errnum) #4 {
entry:
  %lastErr = getelementptr inbounds i8* %b, i64 5096
  %0 = bitcast i8* %lastErr to i32*
  %1 = load i32* %0, align 4, !tbaa !3
  %cmp = icmp sgt i32 %1, 0
  %. = select i1 %cmp, i32 0, i32 %1
  store i32 %., i32* %errnum, align 4, !tbaa !3
  %mul = sub i32 0, %.
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [16 x i8*]* @bzerrorstrings, i64 0, i64 %idxprom
  %2 = load i8** %arrayidx, align 8, !tbaa !0
  ret i8* %2
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #8

; Function Attrs: optsize
declare i32 @spec_getc(i32) #6

; Function Attrs: optsize
declare i32 @spec_ungetc(i8 zeroext, i32) #6

; Function Attrs: optsize
declare void @BZ2_compressBlock(%struct.EState*, i8 zeroext) #6

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @add_pair_to_block(%struct.EState* nocapture %s) #4 {
entry:
  %state_in_ch = getelementptr inbounds %struct.EState* %s, i64 0, i32 13
  %0 = load i32* %state_in_ch, align 4, !tbaa !3
  %conv = trunc i32 %0 to i8
  %state_in_len = getelementptr inbounds %struct.EState* %s, i64 0, i32 14
  %1 = load i32* %state_in_len, align 4, !tbaa !3
  %cmp136 = icmp sgt i32 %1, 0
  br i1 %cmp136, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %blockCRC = getelementptr inbounds %struct.EState* %s, i64 0, i32 26
  %conv3 = and i32 %0, 255
  %.pre = load i32* %blockCRC, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %2 = phi i32 [ %.pre, %for.body.lr.ph ], [ %xor4, %for.body ]
  %i.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %shl = shl i32 %2, 8
  %shr = lshr i32 %2, 24
  %xor = xor i32 %shr, %conv3
  %idxprom = zext i32 %xor to i64
  %arrayidx = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %xor4 = xor i32 %shl, %3
  store i32 %xor4, i32* %blockCRC, align 4, !tbaa !3
  %inc = add nsw i32 %i.0137, 1
  %cmp = icmp slt i32 %inc, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %idxprom7 = zext i32 %0 to i64
  %arrayidx8 = getelementptr inbounds %struct.EState* %s, i64 0, i32 22, i64 %idxprom7
  store i8 1, i8* %arrayidx8, align 1, !tbaa !1
  %4 = load i32* %state_in_len, align 4, !tbaa !3
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 3, label %sw.bb27
  ]

sw.bb:                                            ; preds = %for.end
  %nblock = getelementptr inbounds %struct.EState* %s, i64 0, i32 17
  %5 = load i32* %nblock, align 4, !tbaa !3
  %idxprom10 = sext i32 %5 to i64
  %block = getelementptr inbounds %struct.EState* %s, i64 0, i32 9
  %6 = load i8** %block, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds i8* %6, i64 %idxprom10
  store i8 %conv, i8* %arrayidx11, align 1, !tbaa !1
  %7 = load i32* %nblock, align 4, !tbaa !3
  %inc13 = add nsw i32 %7, 1
  store i32 %inc13, i32* %nblock, align 4, !tbaa !3
  br label %sw.epilog

sw.bb14:                                          ; preds = %for.end
  %nblock15 = getelementptr inbounds %struct.EState* %s, i64 0, i32 17
  %8 = load i32* %nblock15, align 4, !tbaa !3
  %idxprom16 = sext i32 %8 to i64
  %block17 = getelementptr inbounds %struct.EState* %s, i64 0, i32 9
  %9 = load i8** %block17, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds i8* %9, i64 %idxprom16
  store i8 %conv, i8* %arrayidx18, align 1, !tbaa !1
  %10 = load i32* %nblock15, align 4, !tbaa !3
  %inc20 = add nsw i32 %10, 1
  store i32 %inc20, i32* %nblock15, align 4, !tbaa !3
  %idxprom22 = sext i32 %inc20 to i64
  %11 = load i8** %block17, align 8, !tbaa !0
  %arrayidx24 = getelementptr inbounds i8* %11, i64 %idxprom22
  store i8 %conv, i8* %arrayidx24, align 1, !tbaa !1
  %12 = load i32* %nblock15, align 4, !tbaa !3
  %inc26 = add nsw i32 %12, 1
  store i32 %inc26, i32* %nblock15, align 4, !tbaa !3
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.end
  %nblock28 = getelementptr inbounds %struct.EState* %s, i64 0, i32 17
  %13 = load i32* %nblock28, align 4, !tbaa !3
  %idxprom29 = sext i32 %13 to i64
  %block30 = getelementptr inbounds %struct.EState* %s, i64 0, i32 9
  %14 = load i8** %block30, align 8, !tbaa !0
  %arrayidx31 = getelementptr inbounds i8* %14, i64 %idxprom29
  store i8 %conv, i8* %arrayidx31, align 1, !tbaa !1
  %15 = load i32* %nblock28, align 4, !tbaa !3
  %inc33 = add nsw i32 %15, 1
  store i32 %inc33, i32* %nblock28, align 4, !tbaa !3
  %idxprom35 = sext i32 %inc33 to i64
  %16 = load i8** %block30, align 8, !tbaa !0
  %arrayidx37 = getelementptr inbounds i8* %16, i64 %idxprom35
  store i8 %conv, i8* %arrayidx37, align 1, !tbaa !1
  %17 = load i32* %nblock28, align 4, !tbaa !3
  %inc39 = add nsw i32 %17, 1
  store i32 %inc39, i32* %nblock28, align 4, !tbaa !3
  %idxprom41 = sext i32 %inc39 to i64
  %18 = load i8** %block30, align 8, !tbaa !0
  %arrayidx43 = getelementptr inbounds i8* %18, i64 %idxprom41
  store i8 %conv, i8* %arrayidx43, align 1, !tbaa !1
  %19 = load i32* %nblock28, align 4, !tbaa !3
  %inc45 = add nsw i32 %19, 1
  store i32 %inc45, i32* %nblock28, align 4, !tbaa !3
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %sub = add nsw i32 %4, -4
  %idxprom47 = sext i32 %sub to i64
  %arrayidx49 = getelementptr inbounds %struct.EState* %s, i64 0, i32 22, i64 %idxprom47
  store i8 1, i8* %arrayidx49, align 1, !tbaa !1
  %nblock50 = getelementptr inbounds %struct.EState* %s, i64 0, i32 17
  %20 = load i32* %nblock50, align 4, !tbaa !3
  %idxprom51 = sext i32 %20 to i64
  %block52 = getelementptr inbounds %struct.EState* %s, i64 0, i32 9
  %21 = load i8** %block52, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds i8* %21, i64 %idxprom51
  store i8 %conv, i8* %arrayidx53, align 1, !tbaa !1
  %22 = load i32* %nblock50, align 4, !tbaa !3
  %inc55 = add nsw i32 %22, 1
  store i32 %inc55, i32* %nblock50, align 4, !tbaa !3
  %idxprom57 = sext i32 %inc55 to i64
  %23 = load i8** %block52, align 8, !tbaa !0
  %arrayidx59 = getelementptr inbounds i8* %23, i64 %idxprom57
  store i8 %conv, i8* %arrayidx59, align 1, !tbaa !1
  %24 = load i32* %nblock50, align 4, !tbaa !3
  %inc61 = add nsw i32 %24, 1
  store i32 %inc61, i32* %nblock50, align 4, !tbaa !3
  %idxprom63 = sext i32 %inc61 to i64
  %25 = load i8** %block52, align 8, !tbaa !0
  %arrayidx65 = getelementptr inbounds i8* %25, i64 %idxprom63
  store i8 %conv, i8* %arrayidx65, align 1, !tbaa !1
  %26 = load i32* %nblock50, align 4, !tbaa !3
  %inc67 = add nsw i32 %26, 1
  store i32 %inc67, i32* %nblock50, align 4, !tbaa !3
  %idxprom69 = sext i32 %inc67 to i64
  %27 = load i8** %block52, align 8, !tbaa !0
  %arrayidx71 = getelementptr inbounds i8* %27, i64 %idxprom69
  store i8 %conv, i8* %arrayidx71, align 1, !tbaa !1
  %28 = load i32* %nblock50, align 4, !tbaa !3
  %inc73 = add nsw i32 %28, 1
  store i32 %inc73, i32* %nblock50, align 4, !tbaa !3
  %29 = load i32* %state_in_len, align 4, !tbaa !3
  %sub75 = add nsw i32 %29, 252
  %conv76 = trunc i32 %sub75 to i8
  %idxprom78 = sext i32 %inc73 to i64
  %30 = load i8** %block52, align 8, !tbaa !0
  %arrayidx80 = getelementptr inbounds i8* %30, i64 %idxprom78
  store i8 %conv76, i8* %arrayidx80, align 1, !tbaa !1
  %31 = load i32* %nblock50, align 4, !tbaa !3
  %inc82 = add nsw i32 %31, 1
  store i32 %inc82, i32* %nblock50, align 4, !tbaa !3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb14, %sw.bb
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #7

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #7

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #9

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #10

attributes #0 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind optsize }
attributes #12 = { noreturn nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
