; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/401.bzip2/src/bzlib.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }
%struct.EState = type { %struct.bz_stream*, i32, i32, i32, i32*, i32*, i32*, i32, i32*, i8*, i16*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.DState = type { %struct.bz_stream*, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], i32*, i16*, i8*, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [443 x i8] c"\0A\0Abzip2/libbzip2: internal error number %d.\0AThis is a bug in bzip2/libbzip2, %s.\0APlease report it to me at: jseward@bzip.org.  If this happened\0Awhen you were using some program which uses libbzip2 as a\0Acomponent, you should also report this bug to the author(s)\0Aof that program.  Please make an effort to report this bug;\0Atimely and accurate bug reports eventually lead to higher\0Aquality software.  Thanks.  Julian Seward, 15 February 2005.\0A\0A\00", align 1
@.str1 = private unnamed_addr constant [1057 x i8] c"\0A*** A special note about internal error number 1007 ***\0A\0AExperience suggests that a common cause of i.e. 1007\0Ais unreliable memory or other hardware.  The 1007 assertion\0Ajust happens to cross-check the results of huge numbers of\0Amemory reads/writes, and so acts (unintendedly) as a stress\0Atest of your memory system.\0A\0AI suggest the following: try compressing the file again,\0Apossibly monitoring progress in detail with the -vv flag.\0A\0A* If the error cannot be reproduced, and/or happens at different\0A  points in compression, you may have a flaky memory system.\0A  Try a memory-test program.  I have used Memtest86\0A  (www.memtest86.com).  At the time of writing it is free (GPLd).\0A  Memtest86 tests memory much more thorougly than your BIOSs\0A  power-on test, and may find failures that the BIOS doesn't.\0A\0A* If the error can be repeatably reproduced, this is a bug in\0A  bzip2, and I would very much like to hear about it.  Please\0A  let me know, and, ideally, save a copy of the file causing the\0A  problem -- without which I will be unable to investigate it.\0A\0A\00", align 1
@.str2 = private unnamed_addr constant [18 x i8] c" {0x%08x, 0x%08x}\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"\0A    combined CRCs: stored = 0x%08x, computed = 0x%08x\00", align 1
@.str5 = private unnamed_addr constant [19 x i8] c"1.0.3, 15-Feb-2005\00", align 1
@__stdinp = external global %struct.__sFILE*
@__stdoutp = external global %struct.__sFILE*
@bzerrorstrings = internal unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str20, i32 0, i32 0)], align 16
@BZ2_crc32Table = external global [256 x i32]
@BZ2_rNums = external global [512 x i32]
@.str6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str11 = private unnamed_addr constant [15 x i8] c"SEQUENCE_ERROR\00", align 1
@.str12 = private unnamed_addr constant [12 x i8] c"PARAM_ERROR\00", align 1
@.str13 = private unnamed_addr constant [10 x i8] c"MEM_ERROR\00", align 1
@.str14 = private unnamed_addr constant [11 x i8] c"DATA_ERROR\00", align 1
@.str15 = private unnamed_addr constant [17 x i8] c"DATA_ERROR_MAGIC\00", align 1
@.str16 = private unnamed_addr constant [9 x i8] c"IO_ERROR\00", align 1
@.str17 = private unnamed_addr constant [15 x i8] c"UNEXPECTED_EOF\00", align 1
@.str18 = private unnamed_addr constant [13 x i8] c"OUTBUFF_FULL\00", align 1
@.str19 = private unnamed_addr constant [13 x i8] c"CONFIG_ERROR\00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c"???\00", align 1

; Function Attrs: noreturn nounwind optsize ssp uwtable
define void @BZ2_bz__AssertH__fail(i32 %errcode) #0 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([443 x i8]* @.str, i64 0, i64 0), i32 %errcode, i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)) #10
  %3 = icmp eq i32 %errcode, 1007
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([1057 x i8]* @.str1, i64 0, i64 0), i64 1056, i64 1, %struct.__sFILE* %5)
  br label %7

; <label>:7                                       ; preds = %4, %0
  tail call void @exit(i32 3) #11
  unreachable
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @BZ2_bzlibVersion() #2 {
  ret i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BZ2_bzCompressInit(%struct.bz_stream* %strm, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #4 {
  %1 = icmp eq %struct.bz_stream* %strm, null
  %blockSize100k.off = add i32 %blockSize100k, -1
  %2 = icmp ugt i32 %blockSize100k.off, 8
  %3 = or i1 %1, %2
  %4 = icmp ugt i32 %workFactor, 250
  %5 = or i1 %4, %3
  br i1 %5, label %118, label %6

; <label>:6                                       ; preds = %0
  %7 = icmp eq i32 %workFactor, 0
  %.workFactor = select i1 %7, i32 30, i32 %workFactor
  %8 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 9
  %9 = load i8* (i8*, i32, i32)** %8, align 8, !tbaa !6
  %10 = icmp eq i8* (i8*, i32, i32)* %9, null
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %6
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %8, align 8, !tbaa !6
  br label %12

; <label>:12                                      ; preds = %11, %6
  %13 = phi i8* (i8*, i32, i32)* [ @default_bzalloc, %11 ], [ %9, %6 ]
  %14 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10
  %15 = load void (i8*, i8*)** %14, align 8, !tbaa !9
  %16 = icmp eq void (i8*, i8*)* %15, null
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %12
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %14, align 8, !tbaa !9
  br label %18

; <label>:18                                      ; preds = %17, %12
  %19 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  %20 = load i8** %19, align 8, !tbaa !10
  %21 = tail call i8* %13(i8* %20, i32 55768, i32 1) #10
  %22 = icmp eq i8* %21, null
  br i1 %22, label %118, label %23

; <label>:23                                      ; preds = %18
  %24 = bitcast i8* %21 to %struct.bz_stream**
  store %struct.bz_stream* %strm, %struct.bz_stream** %24, align 8, !tbaa !11
  %25 = getelementptr inbounds i8* %21, i64 24
  %26 = bitcast i8* %25 to i32**
  %27 = getelementptr inbounds i8* %21, i64 32
  %28 = bitcast i8* %27 to i32**
  %29 = getelementptr inbounds i8* %21, i64 40
  %30 = bitcast i8* %29 to i32**
  %31 = mul nsw i32 %blockSize100k, 100000
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 24, i32 8, i1 false)
  %32 = load i8* (i8*, i32, i32)** %8, align 8, !tbaa !6
  %33 = load i8** %19, align 8, !tbaa !10
  %34 = mul i32 %blockSize100k, 400000
  %35 = tail call i8* %32(i8* %33, i32 %34, i32 1) #10
  %36 = bitcast i8* %25 to i8**
  store i8* %35, i8** %36, align 8, !tbaa !13
  %37 = load i8* (i8*, i32, i32)** %8, align 8, !tbaa !6
  %38 = load i8** %19, align 8, !tbaa !10
  %39 = add i32 %34, 136
  %40 = tail call i8* %37(i8* %38, i32 %39, i32 1) #10
  %41 = bitcast i8* %27 to i8**
  store i8* %40, i8** %41, align 8, !tbaa !14
  %42 = load i8* (i8*, i32, i32)** %8, align 8, !tbaa !6
  %43 = load i8** %19, align 8, !tbaa !10
  %44 = tail call i8* %42(i8* %43, i32 262148, i32 1) #10
  %45 = bitcast i8* %29 to i8**
  store i8* %44, i8** %45, align 8, !tbaa !15
  %46 = load i32** %26, align 8, !tbaa !13
  %47 = icmp eq i32* %46, null
  %48 = ptrtoint i32* %46 to i64
  br i1 %47, label %.thread, label %49

; <label>:49                                      ; preds = %23
  %50 = load i32** %28, align 8, !tbaa !14
  %51 = icmp eq i32* %50, null
  %52 = icmp eq i8* %44, null
  %or.cond = or i1 %52, %51
  br i1 %or.cond, label %53, label %73

; <label>:53                                      ; preds = %49
  %54 = load void (i8*, i8*)** %14, align 8, !tbaa !9
  %55 = load i8** %19, align 8, !tbaa !10
  %56 = bitcast i32* %46 to i8*
  tail call void %54(i8* %55, i8* %56) #10
  br label %.thread

.thread:                                          ; preds = %23, %53
  %57 = load i32** %28, align 8, !tbaa !14
  %58 = icmp eq i32* %57, null
  br i1 %58, label %63, label %59

; <label>:59                                      ; preds = %.thread
  %60 = load void (i8*, i8*)** %14, align 8, !tbaa !9
  %61 = load i8** %19, align 8, !tbaa !10
  %62 = bitcast i32* %57 to i8*
  tail call void %60(i8* %61, i8* %62) #10
  br label %63

; <label>:63                                      ; preds = %.thread, %59
  %64 = load i32** %30, align 8, !tbaa !15
  %65 = icmp eq i32* %64, null
  br i1 %65, label %70, label %66

; <label>:66                                      ; preds = %63
  %67 = load void (i8*, i8*)** %14, align 8, !tbaa !9
  %68 = load i8** %19, align 8, !tbaa !10
  %69 = bitcast i32* %64 to i8*
  tail call void %67(i8* %68, i8* %69) #10
  br label %70

; <label>:70                                      ; preds = %66, %63
  %71 = load void (i8*, i8*)** %14, align 8, !tbaa !9
  %72 = load i8** %19, align 8, !tbaa !10
  tail call void %71(i8* %72, i8* %21) #10
  br label %118

; <label>:73                                      ; preds = %49
  %74 = ptrtoint i32* %50 to i64
  %75 = getelementptr inbounds i8* %21, i64 660
  %76 = bitcast i8* %75 to i32*
  %77 = getelementptr inbounds i8* %21, i64 12
  %78 = bitcast i8* %77 to i32*
  store i32 2, i32* %78, align 4, !tbaa !16
  %79 = getelementptr inbounds i8* %21, i64 8
  %80 = bitcast i8* %79 to i32*
  store i32 2, i32* %80, align 4, !tbaa !17
  %81 = getelementptr inbounds i8* %21, i64 652
  %82 = bitcast i8* %81 to i32*
  store i32 0, i32* %82, align 4, !tbaa !18
  %83 = getelementptr inbounds i8* %21, i64 664
  %84 = bitcast i8* %83 to i32*
  store i32 %blockSize100k, i32* %84, align 4, !tbaa !19
  %85 = add nsw i32 %31, -19
  %86 = getelementptr inbounds i8* %21, i64 112
  %87 = bitcast i8* %86 to i32*
  store i32 %85, i32* %87, align 4, !tbaa !20
  %88 = getelementptr inbounds i8* %21, i64 656
  %89 = bitcast i8* %88 to i32*
  store i32 %verbosity, i32* %89, align 4, !tbaa !21
  %90 = getelementptr inbounds i8* %21, i64 88
  %91 = bitcast i8* %90 to i32*
  store i32 %.workFactor, i32* %91, align 4, !tbaa !22
  %92 = getelementptr inbounds i8* %21, i64 64
  %93 = bitcast i8* %92 to i64*
  store i64 %74, i64* %93, align 8, !tbaa !23
  %94 = getelementptr inbounds i8* %21, i64 72
  %95 = bitcast i8* %94 to i64*
  store i64 %48, i64* %95, align 8, !tbaa !24
  %96 = getelementptr inbounds i8* %21, i64 80
  %97 = bitcast i8* %96 to i8**
  store i8* null, i8** %97, align 8, !tbaa !25
  %98 = getelementptr inbounds i8* %21, i64 56
  %99 = bitcast i8* %98 to i64*
  store i64 %48, i64* %99, align 8, !tbaa !26
  %100 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8
  store i8* %21, i8** %100, align 8, !tbaa !27
  %101 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 2
  store i32 0, i32* %101, align 4, !tbaa !28
  %102 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 3
  store i32 0, i32* %102, align 4, !tbaa !29
  %103 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 6
  store i32 0, i32* %103, align 4, !tbaa !30
  %104 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 7
  store i32 0, i32* %104, align 4, !tbaa !31
  %105 = getelementptr inbounds i8* %21, i64 92
  %106 = bitcast i8* %105 to i32*
  store i32 256, i32* %106, align 4, !tbaa !32
  %107 = getelementptr inbounds i8* %21, i64 96
  %108 = bitcast i8* %107 to i32*
  store i32 0, i32* %108, align 4, !tbaa !33
  %109 = getelementptr inbounds i8* %21, i64 108
  %110 = bitcast i8* %109 to i32*
  store i32 0, i32* %110, align 4, !tbaa !34
  %111 = getelementptr inbounds i8* %21, i64 116
  %112 = bitcast i8* %111 to i32*
  store i32 0, i32* %112, align 4, !tbaa !35
  %113 = getelementptr inbounds i8* %21, i64 120
  %114 = bitcast i8* %113 to i32*
  store i32 0, i32* %114, align 4, !tbaa !36
  %115 = getelementptr inbounds i8* %21, i64 648
  %116 = bitcast i8* %115 to i32*
  store i32 -1, i32* %116, align 4, !tbaa !37
  %117 = getelementptr i8* %21, i64 128
  tail call void @llvm.memset.p0i8.i64(i8* %117, i8 0, i64 256, i32 1, i1 false) #8
  store i32 1, i32* %76, align 4, !tbaa !38
  br label %118

; <label>:118                                     ; preds = %70, %18, %0, %73
  %.0 = phi i32 [ 0, %73 ], [ -2, %0 ], [ -3, %18 ], [ -3, %70 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal noalias i8* @default_bzalloc(i8* nocapture readnone %opaque, i32 %items, i32 %size) #4 {
  %1 = mul nsw i32 %size, %items
  %2 = sext i32 %1 to i64
  %3 = tail call i8* @malloc(i64 %2) #10
  ret i8* %3
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @default_bzfree(i8* nocapture readnone %opaque, i8* %addr) #4 {
  %1 = icmp eq i8* %addr, null
  br i1 %1, label %3, label %2

; <label>:2                                       ; preds = %0
  tail call void @free(i8* %addr) #12
  br label %3

; <label>:3                                       ; preds = %0, %2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BZ2_bzCompress(%struct.bz_stream* readonly %strm, i32 %action) #4 {
  %1 = icmp eq %struct.bz_stream* %strm, null
  br i1 %1, label %isempty_RL.exit.thread, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8
  %4 = bitcast i8** %3 to %struct.EState**
  %5 = load %struct.EState** %4, align 8, !tbaa !27
  %6 = icmp eq %struct.EState* %5, null
  br i1 %6, label %isempty_RL.exit.thread, label %7

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds %struct.EState* %5, i64 0, i32 0
  %9 = load %struct.bz_stream** %8, align 8, !tbaa !11
  %10 = icmp eq %struct.bz_stream* %9, %strm
  br i1 %10, label %.preheader, label %isempty_RL.exit.thread

.preheader:                                       ; preds = %7
  %11 = getelementptr inbounds %struct.EState* %5, i64 0, i32 1
  %12 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 1
  %13 = getelementptr inbounds %struct.EState* %5, i64 0, i32 3
  %.pre = load i32* %11, align 4, !tbaa !17
  br label %14

; <label>:14                                      ; preds = %.backedge, %.preheader
  %15 = phi i32 [ %storemerge, %.backedge ], [ %.pre, %.preheader ]
  switch i32 %15, label %isempty_RL.exit.thread.loopexit8 [
    i32 1, label %isempty_RL.exit.thread
    i32 2, label %16
    i32 3, label %22
    i32 4, label %46
  ]

; <label>:16                                      ; preds = %14
  switch i32 %action, label %isempty_RL.exit.thread [
    i32 0, label %17
    i32 1, label %.backedge
    i32 2, label %21
  ]

; <label>:17                                      ; preds = %16
  %18 = tail call fastcc zeroext i8 @handle_compress(%struct.bz_stream* %strm) #12
  %19 = icmp ne i8 %18, 0
  %20 = select i1 %19, i32 1, i32 -2
  br label %isempty_RL.exit.thread

.backedge:                                        ; preds = %16, %21
  %storemerge = phi i32 [ 4, %21 ], [ 3, %16 ]
  %storemerge7 = load i32* %12, align 4
  store i32 %storemerge7, i32* %13, align 4, !tbaa !39
  store i32 %storemerge, i32* %11, align 4, !tbaa !17
  br label %14

; <label>:21                                      ; preds = %16
  br label %.backedge

; <label>:22                                      ; preds = %14
  %23 = icmp eq i32 %action, 1
  br i1 %23, label %24, label %isempty_RL.exit.thread

; <label>:24                                      ; preds = %22
  %25 = load i32* %13, align 4, !tbaa !39
  %26 = load i32* %12, align 4, !tbaa !40
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %isempty_RL.exit.thread

; <label>:28                                      ; preds = %24
  %29 = tail call fastcc zeroext i8 @handle_compress(%struct.bz_stream* %strm) #12
  %30 = load i32* %13, align 4, !tbaa !39
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %isempty_RL.exit.thread

; <label>:32                                      ; preds = %28
  %33 = getelementptr inbounds %struct.EState* %5, i64 0, i32 13
  %34 = load i32* %33, align 4, !tbaa !32
  %35 = icmp ult i32 %34, 256
  br i1 %35, label %36, label %isempty_RL.exit

; <label>:36                                      ; preds = %32
  %37 = getelementptr inbounds %struct.EState* %5, i64 0, i32 14
  %38 = load i32* %37, align 4, !tbaa !33
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %isempty_RL.exit.thread, label %isempty_RL.exit

isempty_RL.exit:                                  ; preds = %36, %32
  %40 = getelementptr inbounds %struct.EState* %5, i64 0, i32 20
  %41 = load i32* %40, align 4, !tbaa !36
  %42 = getelementptr inbounds %struct.EState* %5, i64 0, i32 19
  %43 = load i32* %42, align 4, !tbaa !35
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %isempty_RL.exit.thread, label %45

; <label>:45                                      ; preds = %isempty_RL.exit
  store i32 2, i32* %11, align 4, !tbaa !17
  br label %isempty_RL.exit.thread

; <label>:46                                      ; preds = %14
  %47 = icmp eq i32 %action, 2
  br i1 %47, label %48, label %isempty_RL.exit.thread

; <label>:48                                      ; preds = %46
  %49 = load i32* %13, align 4, !tbaa !39
  %50 = load i32* %12, align 4, !tbaa !40
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %isempty_RL.exit.thread

; <label>:52                                      ; preds = %48
  %53 = tail call fastcc zeroext i8 @handle_compress(%struct.bz_stream* %strm) #12
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %isempty_RL.exit.thread, label %55

; <label>:55                                      ; preds = %52
  %56 = load i32* %13, align 4, !tbaa !39
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %isempty_RL.exit.thread

; <label>:58                                      ; preds = %55
  %59 = getelementptr inbounds %struct.EState* %5, i64 0, i32 13
  %60 = load i32* %59, align 4, !tbaa !32
  %61 = icmp ult i32 %60, 256
  br i1 %61, label %62, label %isempty_RL.exit2

; <label>:62                                      ; preds = %58
  %63 = getelementptr inbounds %struct.EState* %5, i64 0, i32 14
  %64 = load i32* %63, align 4, !tbaa !33
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %isempty_RL.exit.thread, label %isempty_RL.exit2

isempty_RL.exit2:                                 ; preds = %62, %58
  %66 = getelementptr inbounds %struct.EState* %5, i64 0, i32 20
  %67 = load i32* %66, align 4, !tbaa !36
  %68 = getelementptr inbounds %struct.EState* %5, i64 0, i32 19
  %69 = load i32* %68, align 4, !tbaa !35
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %isempty_RL.exit.thread, label %71

; <label>:71                                      ; preds = %isempty_RL.exit2
  store i32 1, i32* %11, align 4, !tbaa !17
  br label %isempty_RL.exit.thread

isempty_RL.exit.thread.loopexit8:                 ; preds = %14
  br label %isempty_RL.exit.thread

isempty_RL.exit.thread:                           ; preds = %16, %14, %isempty_RL.exit.thread.loopexit8, %62, %36, %isempty_RL.exit2, %55, %52, %48, %46, %isempty_RL.exit, %28, %24, %22, %7, %2, %0, %71, %45, %17
  %.0 = phi i32 [ 4, %71 ], [ 1, %45 ], [ %20, %17 ], [ -2, %0 ], [ -2, %2 ], [ -2, %7 ], [ -1, %22 ], [ -1, %24 ], [ 2, %28 ], [ 2, %isempty_RL.exit ], [ -1, %46 ], [ -1, %48 ], [ -1, %52 ], [ 3, %55 ], [ 3, %isempty_RL.exit2 ], [ 2, %36 ], [ 3, %62 ], [ 0, %isempty_RL.exit.thread.loopexit8 ], [ -2, %16 ], [ -1, %14 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc zeroext i8 @handle_compress(%struct.bz_stream* nocapture readonly %strm) #4 {
  %1 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8
  %2 = bitcast i8** %1 to %struct.EState**
  %3 = load %struct.EState** %2, align 8, !tbaa !27
  %4 = getelementptr inbounds %struct.EState* %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.EState* %3, i64 0, i32 20
  %6 = getelementptr inbounds %struct.EState* %3, i64 0, i32 0
  %7 = getelementptr inbounds %struct.EState* %3, i64 0, i32 19
  %8 = getelementptr inbounds %struct.EState* %3, i64 0, i32 1
  %9 = getelementptr inbounds %struct.EState* %3, i64 0, i32 3
  %10 = getelementptr inbounds %struct.EState* %3, i64 0, i32 13
  %11 = getelementptr inbounds %struct.EState* %3, i64 0, i32 14
  %12 = getelementptr inbounds %struct.EState* %3, i64 0, i32 17
  %13 = getelementptr inbounds %struct.EState* %3, i64 0, i32 26
  %scevgep.i = getelementptr %struct.EState* %3, i64 0, i32 22, i64 0
  %14 = getelementptr inbounds %struct.EState* %3, i64 0, i32 29
  %15 = getelementptr inbounds %struct.EState* %3, i64 0, i32 11
  %16 = getelementptr inbounds %struct.EState* %3, i64 0, i32 18
  %17 = getelementptr inbounds %struct.EState* %3, i64 0, i32 9
  br label %.outer

.outer:                                           ; preds = %231, %230, %flush_RL.exit, %0
  %progress_out.0.ph = phi i8 [ 0, %0 ], [ %progress_out.16, %flush_RL.exit ], [ %progress_out.16, %230 ], [ %progress_out.16, %231 ]
  %progress_in.0.ph = phi i8 [ 0, %0 ], [ %215, %flush_RL.exit ], [ %215, %230 ], [ %215, %231 ]
  br label %18

; <label>:18                                      ; preds = %18, %.outer
  %19 = load i32* %4, align 4, !tbaa !16
  switch i32 %19, label %18 [
    i32 1, label %20
    i32 2, label %..thread_crit_edge
  ]

; <label>:20                                      ; preds = %18
  %21 = load %struct.bz_stream** %6, align 8, !tbaa !11
  %22 = getelementptr inbounds %struct.bz_stream* %21, i64 0, i32 5
  %23 = load i32* %22, align 4, !tbaa !41
  %24 = icmp eq i32 %23, 0
  %.pre = load i32* %5, align 4, !tbaa !36
  br i1 %24, label %copy_output_until_stop.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %20, %.backedge.i
  %25 = phi i32 [ %37, %.backedge.i ], [ %.pre, %20 ]
  %26 = phi %struct.bz_stream* [ %38, %.backedge.i ], [ %21, %20 ]
  %progress_out.01.i = phi i8 [ 1, %.backedge.i ], [ 0, %20 ]
  %27 = load i32* %7, align 4, !tbaa !35
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %copy_output_until_stop.exit

; <label>:29                                      ; preds = %.lr.ph.i
  %30 = sext i32 %25 to i64
  %31 = load i8** %15, align 8, !tbaa !25
  %32 = getelementptr inbounds i8* %31, i64 %30
  %33 = load i8* %32, align 1, !tbaa !42
  %34 = getelementptr inbounds %struct.bz_stream* %26, i64 0, i32 4
  %35 = load i8** %34, align 8, !tbaa !43
  store i8 %33, i8* %35, align 1, !tbaa !42
  %36 = load i32* %5, align 4, !tbaa !36
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4, !tbaa !36
  %38 = load %struct.bz_stream** %6, align 8, !tbaa !11
  %39 = getelementptr inbounds %struct.bz_stream* %38, i64 0, i32 5
  %40 = load i32* %39, align 4, !tbaa !41
  %41 = add i32 %40, -1
  store i32 %41, i32* %39, align 4, !tbaa !41
  %42 = getelementptr inbounds %struct.bz_stream* %38, i64 0, i32 4
  %43 = load i8** %42, align 8, !tbaa !43
  %44 = getelementptr inbounds i8* %43, i64 1
  store i8* %44, i8** %42, align 8, !tbaa !43
  %45 = getelementptr inbounds %struct.bz_stream* %38, i64 0, i32 6
  %46 = load i32* %45, align 4, !tbaa !30
  %47 = add i32 %46, 1
  store i32 %47, i32* %45, align 4, !tbaa !30
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %.backedge.i

; <label>:49                                      ; preds = %29
  %50 = getelementptr inbounds %struct.bz_stream* %38, i64 0, i32 7
  %51 = load i32* %50, align 4, !tbaa !31
  %52 = add i32 %51, 1
  store i32 %52, i32* %50, align 4, !tbaa !31
  br label %.backedge.i

.backedge.i:                                      ; preds = %49, %29
  %53 = icmp eq i32 %41, 0
  br i1 %53, label %copy_output_until_stop.exit, label %.lr.ph.i

copy_output_until_stop.exit:                      ; preds = %.lr.ph.i, %.backedge.i, %20
  %54 = phi i32 [ %.pre, %20 ], [ %25, %.lr.ph.i ], [ %37, %.backedge.i ]
  %progress_out.0.lcssa.i = phi i8 [ 0, %20 ], [ %progress_out.01.i, %.lr.ph.i ], [ 1, %.backedge.i ]
  %55 = or i8 %progress_out.0.lcssa.i, %progress_out.0.ph
  %56 = load i32* %7, align 4, !tbaa !35
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %isempty_RL.exit, label %58

; <label>:58                                      ; preds = %copy_output_until_stop.exit
  %59 = load i32* %8, align 4, !tbaa !17
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %isempty_RL.exit.thread

; <label>:61                                      ; preds = %58
  %62 = load i32* %9, align 4, !tbaa !39
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %isempty_RL.exit.thread

; <label>:64                                      ; preds = %61
  %65 = load i32* %10, align 4, !tbaa !32
  %66 = icmp ult i32 %65, 256
  br i1 %66, label %67, label %isempty_RL.exit

; <label>:67                                      ; preds = %64
  %68 = load i32* %11, align 4, !tbaa !33
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %isempty_RL.exit.thread, label %isempty_RL.exit

isempty_RL.exit.thread:                           ; preds = %67, %61, %58
  store i32 0, i32* %12, align 4, !tbaa !34
  store i32 0, i32* %7, align 4, !tbaa !35
  store i32 0, i32* %5, align 4, !tbaa !36
  store i32 -1, i32* %13, align 4, !tbaa !37
  tail call void @llvm.memset.p0i8.i64(i8* %scevgep.i, i8 0, i64 256, i32 1, i1 false) #8
  %70 = load i32* %14, align 4, !tbaa !38
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4, !tbaa !38
  store i32 2, i32* %4, align 4, !tbaa !16
  %72 = icmp eq i32 %59, 3
  br i1 %72, label %73, label %.thread

; <label>:73                                      ; preds = %isempty_RL.exit.thread
  %74 = load i32* %9, align 4, !tbaa !39
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %..thread_crit_edge

; <label>:76                                      ; preds = %73
  %77 = load i32* %10, align 4, !tbaa !32
  %78 = icmp ult i32 %77, 256
  br i1 %78, label %79, label %isempty_RL.exit

; <label>:79                                      ; preds = %76
  %80 = load i32* %11, align 4, !tbaa !33
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %..thread_crit_edge, label %isempty_RL.exit

..thread_crit_edge:                               ; preds = %18, %73, %79
  %progress_out.117 = phi i8 [ %55, %79 ], [ %55, %73 ], [ %progress_out.0.ph, %18 ]
  %.pre15 = load i32* %8, align 4, !tbaa !17
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %isempty_RL.exit.thread
  %82 = phi i32 [ %.pre15, %..thread_crit_edge ], [ %59, %isempty_RL.exit.thread ]
  %progress_out.16 = phi i8 [ %progress_out.117, %..thread_crit_edge ], [ %55, %isempty_RL.exit.thread ]
  %83 = icmp eq i32 %82, 2
  %84 = load i32* %12, align 4, !tbaa !34
  %85 = load i32* %16, align 4, !tbaa !20
  %86 = icmp slt i32 %84, %85
  br i1 %83, label %.preheader.i, label %.preheader5.i

.preheader5.i:                                    ; preds = %.thread
  br i1 %86, label %.lr.ph11.i, label %copy_input_until_stop.exit

.lr.ph11.i:                                       ; preds = %.preheader5.i
  %.pre.i1 = load %struct.bz_stream** %6, align 8, !tbaa !11
  %.phi.trans.insert.i = getelementptr inbounds %struct.bz_stream* %.pre.i1, i64 0, i32 1
  %.pre21.i = load i32* %.phi.trans.insert.i, align 4, !tbaa !40
  br label %147

.preheader.i:                                     ; preds = %.thread
  br i1 %86, label %.lr.ph.i2, label %copy_input_until_stop.exit

.lr.ph.i2:                                        ; preds = %.preheader.i
  %.pre20.i = load %struct.bz_stream** %6, align 8, !tbaa !11
  %.phi.trans.insert22.i = getelementptr inbounds %struct.bz_stream* %.pre20.i, i64 0, i32 1
  %.pre23.i = load i32* %.phi.trans.insert22.i, align 4, !tbaa !40
  br label %87

; <label>:87                                      ; preds = %.backedge.i3, %.lr.ph.i2
  %88 = phi i32 [ %85, %.lr.ph.i2 ], [ %145, %.backedge.i3 ]
  %89 = phi i32 [ %.pre23.i, %.lr.ph.i2 ], [ %135, %.backedge.i3 ]
  %90 = phi i32 [ %84, %.lr.ph.i2 ], [ %144, %.backedge.i3 ]
  %91 = phi %struct.bz_stream* [ %.pre20.i, %.lr.ph.i2 ], [ %129, %.backedge.i3 ]
  %progress_in.07.i = phi i8 [ 0, %.lr.ph.i2 ], [ 1, %.backedge.i3 ]
  %92 = icmp eq i32 %89, 0
  br i1 %92, label %copy_input_until_stop.exit, label %93

; <label>:93                                      ; preds = %87
  %94 = getelementptr inbounds %struct.bz_stream* %91, i64 0, i32 0
  %95 = load i8** %94, align 8, !tbaa !44
  %96 = load i8* %95, align 1, !tbaa !42
  %97 = zext i8 %96 to i32
  %98 = load i32* %10, align 4, !tbaa !32
  %99 = icmp eq i32 %97, %98
  %100 = load i32* %11, align 4, !tbaa !33
  br i1 %99, label %121, label %101

; <label>:101                                     ; preds = %93
  %102 = icmp eq i32 %100, 1
  br i1 %102, label %103, label %thread-pre-split.i

; <label>:103                                     ; preds = %101
  %104 = trunc i32 %98 to i8
  %105 = load i32* %13, align 4, !tbaa !37
  %106 = shl i32 %105, 8
  %107 = lshr i32 %105, 24
  %108 = and i32 %98, 255
  %109 = xor i32 %107, %108
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %110
  %112 = load i32* %111, align 4, !tbaa !45
  %113 = xor i32 %106, %112
  store i32 %113, i32* %13, align 4, !tbaa !37
  %114 = zext i32 %98 to i64
  %115 = getelementptr inbounds %struct.EState* %3, i64 0, i32 22, i64 %114
  store i8 1, i8* %115, align 1, !tbaa !42
  %116 = sext i32 %90 to i64
  %117 = load i8** %17, align 8, !tbaa !23
  %118 = getelementptr inbounds i8* %117, i64 %116
  store i8 %104, i8* %118, align 1, !tbaa !42
  %119 = load i32* %12, align 4, !tbaa !34
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4, !tbaa !34
  store i32 %97, i32* %10, align 4, !tbaa !32
  br label %128

; <label>:121                                     ; preds = %93
  %122 = icmp eq i32 %100, 255
  br i1 %122, label %thread-pre-split.i, label %126

thread-pre-split.i:                               ; preds = %121, %101
  %123 = icmp ult i32 %98, 256
  br i1 %123, label %124, label %125

; <label>:124                                     ; preds = %thread-pre-split.i
  tail call fastcc void @add_pair_to_block(%struct.EState* %3) #10
  br label %125

; <label>:125                                     ; preds = %124, %thread-pre-split.i
  store i32 %97, i32* %10, align 4, !tbaa !32
  store i32 1, i32* %11, align 4, !tbaa !33
  br label %128

; <label>:126                                     ; preds = %121
  %127 = add nsw i32 %100, 1
  store i32 %127, i32* %11, align 4, !tbaa !33
  br label %128

; <label>:128                                     ; preds = %126, %125, %103
  %129 = load %struct.bz_stream** %6, align 8, !tbaa !11
  %130 = getelementptr inbounds %struct.bz_stream* %129, i64 0, i32 0
  %131 = load i8** %130, align 8, !tbaa !44
  %132 = getelementptr inbounds i8* %131, i64 1
  store i8* %132, i8** %130, align 8, !tbaa !44
  %133 = getelementptr inbounds %struct.bz_stream* %129, i64 0, i32 1
  %134 = load i32* %133, align 4, !tbaa !40
  %135 = add i32 %134, -1
  store i32 %135, i32* %133, align 4, !tbaa !40
  %136 = getelementptr inbounds %struct.bz_stream* %129, i64 0, i32 2
  %137 = load i32* %136, align 4, !tbaa !28
  %138 = add i32 %137, 1
  store i32 %138, i32* %136, align 4, !tbaa !28
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %.backedge.i3

; <label>:140                                     ; preds = %128
  %141 = getelementptr inbounds %struct.bz_stream* %129, i64 0, i32 3
  %142 = load i32* %141, align 4, !tbaa !29
  %143 = add i32 %142, 1
  store i32 %143, i32* %141, align 4, !tbaa !29
  br label %.backedge.i3

.backedge.i3:                                     ; preds = %140, %128
  %144 = load i32* %12, align 4, !tbaa !34
  %145 = load i32* %16, align 4, !tbaa !20
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %87, label %copy_input_until_stop.exit

; <label>:147                                     ; preds = %207, %.lr.ph11.i
  %148 = phi i32 [ %85, %.lr.ph11.i ], [ %211, %207 ]
  %149 = phi i32 [ %.pre21.i, %.lr.ph11.i ], [ %198, %207 ]
  %150 = phi i32 [ %84, %.lr.ph11.i ], [ %210, %207 ]
  %151 = phi %struct.bz_stream* [ %.pre.i1, %.lr.ph11.i ], [ %192, %207 ]
  %progress_in.110.i = phi i8 [ 0, %.lr.ph11.i ], [ 1, %207 ]
  %152 = icmp eq i32 %149, 0
  br i1 %152, label %copy_input_until_stop.exit, label %153

; <label>:153                                     ; preds = %147
  %154 = load i32* %9, align 4, !tbaa !39
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %copy_input_until_stop.exit, label %156

; <label>:156                                     ; preds = %153
  %157 = getelementptr inbounds %struct.bz_stream* %151, i64 0, i32 0
  %158 = load i8** %157, align 8, !tbaa !44
  %159 = load i8* %158, align 1, !tbaa !42
  %160 = zext i8 %159 to i32
  %161 = load i32* %10, align 4, !tbaa !32
  %162 = icmp eq i32 %160, %161
  %163 = load i32* %11, align 4, !tbaa !33
  br i1 %162, label %184, label %164

; <label>:164                                     ; preds = %156
  %165 = icmp eq i32 %163, 1
  br i1 %165, label %166, label %thread-pre-split3.i

; <label>:166                                     ; preds = %164
  %167 = trunc i32 %161 to i8
  %168 = load i32* %13, align 4, !tbaa !37
  %169 = shl i32 %168, 8
  %170 = lshr i32 %168, 24
  %171 = and i32 %161, 255
  %172 = xor i32 %170, %171
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %173
  %175 = load i32* %174, align 4, !tbaa !45
  %176 = xor i32 %169, %175
  store i32 %176, i32* %13, align 4, !tbaa !37
  %177 = zext i32 %161 to i64
  %178 = getelementptr inbounds %struct.EState* %3, i64 0, i32 22, i64 %177
  store i8 1, i8* %178, align 1, !tbaa !42
  %179 = sext i32 %150 to i64
  %180 = load i8** %17, align 8, !tbaa !23
  %181 = getelementptr inbounds i8* %180, i64 %179
  store i8 %167, i8* %181, align 1, !tbaa !42
  %182 = load i32* %12, align 4, !tbaa !34
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %12, align 4, !tbaa !34
  store i32 %160, i32* %10, align 4, !tbaa !32
  br label %191

; <label>:184                                     ; preds = %156
  %185 = icmp eq i32 %163, 255
  br i1 %185, label %thread-pre-split3.i, label %189

thread-pre-split3.i:                              ; preds = %184, %164
  %186 = icmp ult i32 %161, 256
  br i1 %186, label %187, label %188

; <label>:187                                     ; preds = %thread-pre-split3.i
  tail call fastcc void @add_pair_to_block(%struct.EState* %3) #10
  br label %188

; <label>:188                                     ; preds = %187, %thread-pre-split3.i
  store i32 %160, i32* %10, align 4, !tbaa !32
  store i32 1, i32* %11, align 4, !tbaa !33
  br label %191

; <label>:189                                     ; preds = %184
  %190 = add nsw i32 %163, 1
  store i32 %190, i32* %11, align 4, !tbaa !33
  br label %191

; <label>:191                                     ; preds = %189, %188, %166
  %192 = load %struct.bz_stream** %6, align 8, !tbaa !11
  %193 = getelementptr inbounds %struct.bz_stream* %192, i64 0, i32 0
  %194 = load i8** %193, align 8, !tbaa !44
  %195 = getelementptr inbounds i8* %194, i64 1
  store i8* %195, i8** %193, align 8, !tbaa !44
  %196 = getelementptr inbounds %struct.bz_stream* %192, i64 0, i32 1
  %197 = load i32* %196, align 4, !tbaa !40
  %198 = add i32 %197, -1
  store i32 %198, i32* %196, align 4, !tbaa !40
  %199 = getelementptr inbounds %struct.bz_stream* %192, i64 0, i32 2
  %200 = load i32* %199, align 4, !tbaa !28
  %201 = add i32 %200, 1
  store i32 %201, i32* %199, align 4, !tbaa !28
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %207

; <label>:203                                     ; preds = %191
  %204 = getelementptr inbounds %struct.bz_stream* %192, i64 0, i32 3
  %205 = load i32* %204, align 4, !tbaa !29
  %206 = add i32 %205, 1
  store i32 %206, i32* %204, align 4, !tbaa !29
  br label %207

; <label>:207                                     ; preds = %203, %191
  %208 = load i32* %9, align 4, !tbaa !39
  %209 = add i32 %208, -1
  store i32 %209, i32* %9, align 4, !tbaa !39
  %210 = load i32* %12, align 4, !tbaa !34
  %211 = load i32* %16, align 4, !tbaa !20
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %147, label %copy_input_until_stop.exit

copy_input_until_stop.exit:                       ; preds = %147, %153, %207, %87, %.backedge.i3, %.preheader5.i, %.preheader.i
  %213 = phi i32 [ %85, %.preheader.i ], [ %85, %.preheader5.i ], [ %88, %87 ], [ %145, %.backedge.i3 ], [ %148, %153 ], [ %148, %147 ], [ %211, %207 ]
  %214 = phi i32 [ %84, %.preheader.i ], [ %84, %.preheader5.i ], [ %90, %87 ], [ %144, %.backedge.i3 ], [ %150, %153 ], [ %150, %147 ], [ %210, %207 ]
  %progress_in.2.i = phi i8 [ 0, %.preheader.i ], [ 0, %.preheader5.i ], [ %progress_in.07.i, %87 ], [ 1, %.backedge.i3 ], [ %progress_in.110.i, %153 ], [ %progress_in.110.i, %147 ], [ 1, %207 ]
  %215 = or i8 %progress_in.2.i, %progress_in.0.ph
  %216 = load i32* %8, align 4, !tbaa !17
  %217 = icmp eq i32 %216, 2
  br i1 %217, label %228, label %218

; <label>:218                                     ; preds = %copy_input_until_stop.exit
  %219 = load i32* %9, align 4, !tbaa !39
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %228

; <label>:221                                     ; preds = %218
  %222 = load i32* %10, align 4, !tbaa !32
  %223 = icmp ult i32 %222, 256
  br i1 %223, label %224, label %flush_RL.exit

; <label>:224                                     ; preds = %221
  tail call fastcc void @add_pair_to_block(%struct.EState* %3) #10
  %.pre16 = load i32* %8, align 4, !tbaa !17
  br label %flush_RL.exit

flush_RL.exit:                                    ; preds = %221, %224
  %225 = phi i32 [ %216, %221 ], [ %.pre16, %224 ]
  store i32 256, i32* %10, align 4, !tbaa !32
  store i32 0, i32* %11, align 4, !tbaa !33
  %226 = icmp eq i32 %225, 4
  %227 = zext i1 %226 to i8
  tail call void @BZ2_compressBlock(%struct.EState* %3, i8 zeroext %227) #10
  store i32 1, i32* %4, align 4, !tbaa !16
  br label %.outer

; <label>:228                                     ; preds = %copy_input_until_stop.exit, %218
  %229 = icmp slt i32 %214, %213
  br i1 %229, label %231, label %230

; <label>:230                                     ; preds = %228
  tail call void @BZ2_compressBlock(%struct.EState* %3, i8 zeroext 0) #10
  store i32 1, i32* %4, align 4, !tbaa !16
  br label %.outer

; <label>:231                                     ; preds = %228
  %232 = load %struct.bz_stream** %6, align 8, !tbaa !11
  %233 = getelementptr inbounds %struct.bz_stream* %232, i64 0, i32 1
  %234 = load i32* %233, align 4, !tbaa !40
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %isempty_RL.exit, label %.outer

isempty_RL.exit:                                  ; preds = %231, %79, %76, %67, %64, %copy_output_until_stop.exit
  %progress_out.2 = phi i8 [ %55, %copy_output_until_stop.exit ], [ %55, %64 ], [ %55, %67 ], [ %55, %76 ], [ %55, %79 ], [ %progress_out.16, %231 ]
  %progress_in.1 = phi i8 [ %progress_in.0.ph, %copy_output_until_stop.exit ], [ %progress_in.0.ph, %64 ], [ %progress_in.0.ph, %67 ], [ %progress_in.0.ph, %76 ], [ %progress_in.0.ph, %79 ], [ %215, %231 ]
  %236 = or i8 %progress_in.1, %progress_out.2
  %237 = icmp ne i8 %236, 0
  %238 = zext i1 %237 to i8
  ret i8 %238
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm) #4 {
  %1 = icmp eq %struct.bz_stream* %strm, null
  br i1 %1, label %44, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8
  %4 = bitcast i8** %3 to %struct.EState**
  %5 = load %struct.EState** %4, align 8, !tbaa !27
  %6 = icmp eq %struct.EState* %5, null
  br i1 %6, label %44, label %7

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds %struct.EState* %5, i64 0, i32 0
  %9 = load %struct.bz_stream** %8, align 8, !tbaa !11
  %10 = icmp eq %struct.bz_stream* %9, %strm
  br i1 %10, label %11, label %44

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %struct.EState* %5, i64 0, i32 4
  %13 = load i32** %12, align 8, !tbaa !13
  %14 = icmp eq i32* %13, null
  br i1 %14, label %21, label %15

; <label>:15                                      ; preds = %11
  %16 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10
  %17 = load void (i8*, i8*)** %16, align 8, !tbaa !9
  %18 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  %19 = load i8** %18, align 8, !tbaa !10
  %20 = bitcast i32* %13 to i8*
  tail call void %17(i8* %19, i8* %20) #10
  br label %21

; <label>:21                                      ; preds = %11, %15
  %22 = getelementptr inbounds %struct.EState* %5, i64 0, i32 5
  %23 = load i32** %22, align 8, !tbaa !14
  %24 = icmp eq i32* %23, null
  br i1 %24, label %31, label %25

; <label>:25                                      ; preds = %21
  %26 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10
  %27 = load void (i8*, i8*)** %26, align 8, !tbaa !9
  %28 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  %29 = load i8** %28, align 8, !tbaa !10
  %30 = bitcast i32* %23 to i8*
  tail call void %27(i8* %29, i8* %30) #10
  br label %31

; <label>:31                                      ; preds = %21, %25
  %32 = getelementptr inbounds %struct.EState* %5, i64 0, i32 6
  %33 = load i32** %32, align 8, !tbaa !15
  %34 = icmp eq i32* %33, null
  %.pre = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10
  br i1 %34, label %._crit_edge, label %35

._crit_edge:                                      ; preds = %31
  %.pre1 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  br label %40

; <label>:35                                      ; preds = %31
  %36 = load void (i8*, i8*)** %.pre, align 8, !tbaa !9
  %37 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  %38 = load i8** %37, align 8, !tbaa !10
  %39 = bitcast i32* %33 to i8*
  tail call void %36(i8* %38, i8* %39) #10
  br label %40

; <label>:40                                      ; preds = %._crit_edge, %35
  %.pre-phi2 = phi i8** [ %.pre1, %._crit_edge ], [ %37, %35 ]
  %41 = load void (i8*, i8*)** %.pre, align 8, !tbaa !9
  %42 = load i8** %.pre-phi2, align 8, !tbaa !10
  %43 = load i8** %3, align 8, !tbaa !27
  tail call void %41(i8* %42, i8* %43) #10
  store i8* null, i8** %3, align 8, !tbaa !27
  br label %44

; <label>:44                                      ; preds = %7, %2, %0, %40
  %.0 = phi i32 [ 0, %40 ], [ -2, %0 ], [ -2, %2 ], [ -2, %7 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BZ2_bzDecompressInit(%struct.bz_stream* %strm, i32 %verbosity, i32 %small) #4 {
  %1 = icmp eq %struct.bz_stream* %strm, null
  %small.cmp = icmp ugt i32 %small, 1
  %or.cond = or i1 %1, %small.cmp
  %2 = icmp ugt i32 %verbosity, 4
  %or.cond4 = or i1 %2, %or.cond
  br i1 %or.cond4, label %41, label %3

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 9
  %5 = load i8* (i8*, i32, i32)** %4, align 8, !tbaa !6
  %6 = icmp eq i8* (i8*, i32, i32)* %5, null
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %3
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %4, align 8, !tbaa !6
  br label %8

; <label>:8                                       ; preds = %7, %3
  %9 = phi i8* (i8*, i32, i32)* [ @default_bzalloc, %7 ], [ %5, %3 ]
  %10 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10
  %11 = load void (i8*, i8*)** %10, align 8, !tbaa !9
  %12 = icmp eq void (i8*, i8*)* %11, null
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %8
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %10, align 8, !tbaa !9
  br label %14

; <label>:14                                      ; preds = %13, %8
  %15 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  %16 = load i8** %15, align 8, !tbaa !10
  %17 = tail call i8* %9(i8* %16, i32 64144, i32 1) #10
  %18 = icmp eq i8* %17, null
  br i1 %18, label %41, label %19

; <label>:19                                      ; preds = %14
  %20 = bitcast i8* %17 to %struct.bz_stream**
  store %struct.bz_stream* %strm, %struct.bz_stream** %20, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8
  store i8* %17, i8** %21, align 8, !tbaa !27
  %22 = getelementptr inbounds i8* %17, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 10, i32* %23, align 4, !tbaa !48
  %24 = getelementptr inbounds i8* %17, i64 36
  %25 = bitcast i8* %24 to i32*
  store i32 0, i32* %25, align 4, !tbaa !49
  %26 = getelementptr inbounds i8* %17, i64 32
  %27 = bitcast i8* %26 to i32*
  store i32 0, i32* %27, align 4, !tbaa !50
  %28 = getelementptr inbounds i8* %17, i64 3188
  %29 = bitcast i8* %28 to i32*
  store i32 0, i32* %29, align 4, !tbaa !51
  %30 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 2
  store i32 0, i32* %30, align 4, !tbaa !28
  %31 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 3
  store i32 0, i32* %31, align 4, !tbaa !29
  %32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 6
  store i32 0, i32* %32, align 4, !tbaa !30
  %33 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 7
  store i32 0, i32* %33, align 4, !tbaa !31
  %34 = trunc i32 %small to i8
  %35 = getelementptr inbounds i8* %17, i64 44
  store i8 %34, i8* %35, align 1, !tbaa !52
  %36 = getelementptr inbounds i8* %17, i64 3152
  %37 = getelementptr inbounds i8* %17, i64 48
  %38 = bitcast i8* %37 to i32*
  store i32 0, i32* %38, align 4, !tbaa !53
  %39 = getelementptr inbounds i8* %17, i64 52
  %40 = bitcast i8* %39 to i32*
  call void @llvm.memset.p0i8.i64(i8* %36, i8 0, i64 24, i32 8, i1 false)
  store i32 %verbosity, i32* %40, align 4, !tbaa !54
  br label %41

; <label>:41                                      ; preds = %14, %0, %19
  %.0 = phi i32 [ 0, %19 ], [ -2, %0 ], [ -3, %14 ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind optsize readonly ssp uwtable
define i32 @BZ2_indexIntoF(i32 %indx, i32* nocapture readonly %cftab) #5 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %na.0 = phi i32 [ 256, %0 ], [ %.na.0, %1 ]
  %nb.0 = phi i32 [ 0, %0 ], [ %nb.0., %1 ]
  %2 = add nsw i32 %nb.0, %na.0
  %3 = ashr i32 %2, 1
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32* %cftab, i64 %4
  %6 = load i32* %5, align 4, !tbaa !45
  %7 = icmp sgt i32 %6, %indx
  %.na.0 = select i1 %7, i32 %3, i32 %na.0
  %nb.0. = select i1 %7, i32 %nb.0, i32 %3
  %8 = sub nsw i32 %.na.0, %nb.0.
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %1

; <label>:10                                      ; preds = %1
  ret i32 %nb.0.
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BZ2_bzDecompress(%struct.bz_stream* readonly %strm) #4 {
  %1 = icmp eq %struct.bz_stream* %strm, null
  br i1 %1, label %unRLE_obuf_to_output_SMALL.exit.thread16, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8
  %4 = bitcast i8** %3 to %struct.DState**
  %5 = load %struct.DState** %4, align 8, !tbaa !27
  %6 = icmp eq %struct.DState* %5, null
  br i1 %6, label %unRLE_obuf_to_output_SMALL.exit.thread16, label %7

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds %struct.DState* %5, i64 0, i32 0
  %9 = load %struct.bz_stream** %8, align 8, !tbaa !46
  %10 = icmp eq %struct.bz_stream* %9, %strm
  br i1 %10, label %.preheader24, label %unRLE_obuf_to_output_SMALL.exit.thread16

.preheader24:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.DState* %5, i64 0, i32 1
  %12 = getelementptr inbounds %struct.DState* %5, i64 0, i32 10
  %13 = getelementptr inbounds %struct.DState* %5, i64 0, i32 4
  %14 = getelementptr inbounds %struct.DState* %5, i64 0, i32 25
  %15 = getelementptr inbounds %struct.DState* %5, i64 0, i32 2
  %16 = getelementptr inbounds %struct.DState* %5, i64 0, i32 3
  %17 = getelementptr inbounds %struct.DState* %5, i64 0, i32 17
  %18 = getelementptr inbounds %struct.DState* %5, i64 0, i32 15
  %19 = getelementptr inbounds %struct.DState* %5, i64 0, i32 20
  %20 = getelementptr inbounds %struct.DState* %5, i64 0, i32 14
  %21 = getelementptr inbounds %struct.DState* %5, i64 0, i32 51
  %22 = getelementptr inbounds %struct.DState* %5, i64 0, i32 5
  %23 = getelementptr inbounds %struct.DState* %5, i64 0, i32 6
  %24 = getelementptr inbounds %struct.DState* %5, i64 0, i32 12
  %25 = getelementptr inbounds %struct.DState* %5, i64 0, i32 23
  %26 = getelementptr inbounds %struct.DState* %5, i64 0, i32 26
  %27 = getelementptr inbounds %struct.DState* %5, i64 0, i32 21
  %28 = getelementptr inbounds %struct.DState* %5, i64 0, i32 22
  %.pre = load i32* %11, align 4, !tbaa !48
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %820, %.preheader24
  %.ph = phi i32 [ 2, %820 ], [ %.pre, %.preheader24 ]
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %803
  switch i32 %.ph, label %803 [
    i32 1, label %unRLE_obuf_to_output_SMALL.exit.thread16
    i32 2, label %29
  ]

; <label>:29                                      ; preds = %.backedge
  %30 = load i8* %12, align 1, !tbaa !52
  %31 = icmp eq i8 %30, 0
  %32 = load i8* %13, align 1, !tbaa !55
  %33 = icmp eq i8 %32, 0
  br i1 %31, label %498, label %34

; <label>:34                                      ; preds = %29
  %35 = load %struct.bz_stream** %8, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.bz_stream* %35, i64 0, i32 5
  %37 = load i32* %36, align 4, !tbaa !41
  %38 = icmp eq i32 %37, 0
  br i1 %33, label %.preheader.i, label %.preheader53.i

.preheader53.i:                                   ; preds = %34
  br i1 %38, label %.loopexit, label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.preheader53.i
  %.pre.i = load i32* %16, align 4, !tbaa !56
  br label %39

.preheader.i:                                     ; preds = %34
  br i1 %38, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre67.i = load i32* %16, align 4, !tbaa !56
  br label %302

; <label>:39                                      ; preds = %.backedge56.i, %.lr.ph61.i
  %40 = phi i32 [ %.pre.i, %.lr.ph61.i ], [ %132, %.backedge56.i ]
  %41 = phi %struct.bz_stream* [ %35, %.lr.ph61.i ], [ %131, %.backedge56.i ]
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %74, label %43

; <label>:43                                      ; preds = %39
  %44 = load i8* %15, align 1, !tbaa !57
  %45 = getelementptr inbounds %struct.bz_stream* %41, i64 0, i32 4
  %46 = load i8** %45, align 8, !tbaa !43
  store i8 %44, i8* %46, align 1, !tbaa !42
  %47 = load i32* %14, align 4, !tbaa !58
  %48 = shl i32 %47, 8
  %49 = lshr i32 %47, 24
  %50 = load i8* %15, align 1, !tbaa !57
  %51 = zext i8 %50 to i32
  %52 = xor i32 %51, %49
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %53
  %55 = load i32* %54, align 4, !tbaa !45
  %56 = xor i32 %55, %48
  store i32 %56, i32* %14, align 4, !tbaa !58
  %57 = load i32* %16, align 4, !tbaa !56
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %16, align 4, !tbaa !56
  %59 = load %struct.bz_stream** %8, align 8, !tbaa !46
  %60 = getelementptr inbounds %struct.bz_stream* %59, i64 0, i32 4
  %61 = load i8** %60, align 8, !tbaa !43
  %62 = getelementptr inbounds i8* %61, i64 1
  store i8* %62, i8** %60, align 8, !tbaa !43
  %63 = getelementptr inbounds %struct.bz_stream* %59, i64 0, i32 5
  %64 = load i32* %63, align 4, !tbaa !41
  %65 = add i32 %64, -1
  store i32 %65, i32* %63, align 4, !tbaa !41
  %66 = getelementptr inbounds %struct.bz_stream* %59, i64 0, i32 6
  %67 = load i32* %66, align 4, !tbaa !30
  %68 = add i32 %67, 1
  store i32 %68, i32* %66, align 4, !tbaa !30
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %.backedge56.i

; <label>:70                                      ; preds = %43
  %71 = getelementptr inbounds %struct.bz_stream* %59, i64 0, i32 7
  %72 = load i32* %71, align 4, !tbaa !31
  %73 = add i32 %72, 1
  store i32 %73, i32* %71, align 4, !tbaa !31
  br label %.backedge56.i

; <label>:74                                      ; preds = %39
  %75 = load i32* %17, align 4, !tbaa !59
  %76 = load i32* %21, align 4, !tbaa !60
  %77 = add nsw i32 %76, 1
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %.loopexit, label %79

; <label>:79                                      ; preds = %74
  %80 = icmp sgt i32 %75, %77
  br i1 %80, label %unRLE_obuf_to_output_SMALL.exit.thread16, label %81

; <label>:81                                      ; preds = %79
  store i32 1, i32* %16, align 4, !tbaa !56
  %82 = load i32* %18, align 4, !tbaa !61
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %15, align 1, !tbaa !57
  %84 = load i32* %20, align 4, !tbaa !62
  br label %85

; <label>:85                                      ; preds = %85, %81
  %na.0.i.i = phi i32 [ 256, %81 ], [ %.na.0.i.i, %85 ]
  %nb.0.i.i = phi i32 [ 0, %81 ], [ %nb.0..i.i, %85 ]
  %86 = add nsw i32 %nb.0.i.i, %na.0.i.i
  %87 = ashr i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.DState* %5, i64 0, i32 18, i64 %88
  %90 = load i32* %89, align 4, !tbaa !45
  %91 = icmp sgt i32 %90, %84
  %.na.0.i.i = select i1 %91, i32 %87, i32 %na.0.i.i
  %nb.0..i.i = select i1 %91, i32 %nb.0.i.i, i32 %87
  %92 = sub nsw i32 %.na.0.i.i, %nb.0..i.i
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %BZ2_indexIntoF.exit.i, label %85

BZ2_indexIntoF.exit.i:                            ; preds = %85
  %94 = zext i32 %84 to i64
  %95 = load i16** %27, align 8, !tbaa !63
  %96 = getelementptr inbounds i16* %95, i64 %94
  %97 = load i16* %96, align 2, !tbaa !64
  %98 = zext i16 %97 to i32
  %99 = lshr i32 %84, 1
  %100 = zext i32 %99 to i64
  %101 = load i8** %28, align 8, !tbaa !66
  %102 = getelementptr inbounds i8* %101, i64 %100
  %103 = load i8* %102, align 1, !tbaa !42
  %104 = zext i8 %103 to i32
  %105 = shl i32 %84, 2
  %106 = and i32 %105, 4
  %107 = lshr i32 %104, %106
  %108 = shl i32 %107, 16
  %109 = and i32 %108, 983040
  %110 = or i32 %109, %98
  store i32 %110, i32* %20, align 4, !tbaa !62
  %111 = load i32* %22, align 4, !tbaa !67
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %120

; <label>:113                                     ; preds = %BZ2_indexIntoF.exit.i
  %114 = load i32* %23, align 4, !tbaa !68
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %115
  %117 = load i32* %116, align 4, !tbaa !45
  store i32 %117, i32* %22, align 4, !tbaa !67
  %118 = add nsw i32 %114, 1
  %119 = icmp eq i32 %118, 512
  %..i = select i1 %119, i32 0, i32 %118
  store i32 %..i, i32* %23, align 4, !tbaa !68
  br label %120

; <label>:120                                     ; preds = %113, %BZ2_indexIntoF.exit.i
  %121 = phi i32 [ %117, %113 ], [ %111, %BZ2_indexIntoF.exit.i ]
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %22, align 4, !tbaa !67
  %123 = add nsw i32 %75, 1
  store i32 %123, i32* %17, align 4, !tbaa !59
  %124 = icmp eq i32 %75, %76
  br i1 %124, label %.backedge56.i, label %125

; <label>:125                                     ; preds = %120
  %126 = icmp eq i32 %122, 1
  %127 = zext i1 %126 to i32
  %.masked.i = and i32 %nb.0..i.i, 255
  %128 = xor i32 %127, %.masked.i
  %129 = icmp eq i32 %128, %82
  br i1 %129, label %136, label %130

; <label>:130                                     ; preds = %125
  store i32 %128, i32* %18, align 4, !tbaa !61
  br label %.backedge56.i

.backedge56.i:                                    ; preds = %295, %223, %213, %179, %169, %130, %120, %70, %43
  %131 = phi %struct.bz_stream* [ %41, %130 ], [ %41, %179 ], [ %41, %223 ], [ %41, %295 ], [ %59, %70 ], [ %59, %43 ], [ %41, %120 ], [ %41, %169 ], [ %41, %213 ]
  %132 = phi i32 [ 1, %130 ], [ 2, %179 ], [ 3, %223 ], [ %262, %295 ], [ %58, %70 ], [ %58, %43 ], [ 1, %120 ], [ 2, %169 ], [ 3, %213 ]
  %133 = getelementptr inbounds %struct.bz_stream* %131, i64 0, i32 5
  %134 = load i32* %133, align 4, !tbaa !41
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %.loopexit, label %39

; <label>:136                                     ; preds = %125
  store i32 2, i32* %16, align 4, !tbaa !56
  br label %137

; <label>:137                                     ; preds = %137, %136
  %na.0.i48.i = phi i32 [ 256, %136 ], [ %.na.0.i50.i, %137 ]
  %nb.0.i49.i = phi i32 [ 0, %136 ], [ %nb.0..i51.i, %137 ]
  %138 = add nsw i32 %nb.0.i49.i, %na.0.i48.i
  %139 = ashr i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.DState* %5, i64 0, i32 18, i64 %140
  %142 = load i32* %141, align 4, !tbaa !45
  %143 = icmp sgt i32 %142, %110
  %.na.0.i50.i = select i1 %143, i32 %139, i32 %na.0.i48.i
  %nb.0..i51.i = select i1 %143, i32 %nb.0.i49.i, i32 %139
  %144 = sub nsw i32 %.na.0.i50.i, %nb.0..i51.i
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %BZ2_indexIntoF.exit52.i, label %137

BZ2_indexIntoF.exit52.i:                          ; preds = %137
  %146 = zext i32 %110 to i64
  %147 = getelementptr inbounds i16* %95, i64 %146
  %148 = load i16* %147, align 2, !tbaa !64
  %149 = zext i16 %148 to i32
  %150 = lshr i32 %110, 1
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i8* %101, i64 %151
  %153 = load i8* %152, align 1, !tbaa !42
  %154 = zext i8 %153 to i32
  %155 = shl nuw nsw i32 %98, 2
  %156 = and i32 %155, 4
  %157 = lshr i32 %154, %156
  %158 = shl i32 %157, 16
  %159 = and i32 %158, 983040
  %160 = or i32 %159, %149
  store i32 %160, i32* %20, align 4, !tbaa !62
  %161 = icmp eq i32 %122, 0
  br i1 %161, label %162, label %169

; <label>:162                                     ; preds = %BZ2_indexIntoF.exit52.i
  %163 = load i32* %23, align 4, !tbaa !68
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %164
  %166 = load i32* %165, align 4, !tbaa !45
  store i32 %166, i32* %22, align 4, !tbaa !67
  %167 = add nsw i32 %163, 1
  %168 = icmp eq i32 %167, 512
  %.4.i = select i1 %168, i32 0, i32 %167
  store i32 %.4.i, i32* %23, align 4, !tbaa !68
  br label %169

; <label>:169                                     ; preds = %162, %BZ2_indexIntoF.exit52.i
  %170 = phi i32 [ %166, %162 ], [ %122, %BZ2_indexIntoF.exit52.i ]
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %22, align 4, !tbaa !67
  %172 = add nsw i32 %75, 2
  store i32 %172, i32* %17, align 4, !tbaa !59
  %173 = icmp eq i32 %123, %76
  br i1 %173, label %.backedge56.i, label %174

; <label>:174                                     ; preds = %169
  %175 = icmp eq i32 %171, 1
  %176 = zext i1 %175 to i32
  %.masked1.i = and i32 %nb.0..i51.i, 255
  %177 = xor i32 %176, %.masked1.i
  %178 = icmp eq i32 %177, %82
  br i1 %178, label %180, label %179

; <label>:179                                     ; preds = %174
  store i32 %177, i32* %18, align 4, !tbaa !61
  br label %.backedge56.i

; <label>:180                                     ; preds = %174
  store i32 3, i32* %16, align 4, !tbaa !56
  br label %181

; <label>:181                                     ; preds = %181, %180
  %na.0.i43.i = phi i32 [ 256, %180 ], [ %.na.0.i45.i, %181 ]
  %nb.0.i44.i = phi i32 [ 0, %180 ], [ %nb.0..i46.i, %181 ]
  %182 = add nsw i32 %nb.0.i44.i, %na.0.i43.i
  %183 = ashr i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.DState* %5, i64 0, i32 18, i64 %184
  %186 = load i32* %185, align 4, !tbaa !45
  %187 = icmp sgt i32 %186, %160
  %.na.0.i45.i = select i1 %187, i32 %183, i32 %na.0.i43.i
  %nb.0..i46.i = select i1 %187, i32 %nb.0.i44.i, i32 %183
  %188 = sub nsw i32 %.na.0.i45.i, %nb.0..i46.i
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %BZ2_indexIntoF.exit47.i, label %181

BZ2_indexIntoF.exit47.i:                          ; preds = %181
  %190 = zext i32 %160 to i64
  %191 = getelementptr inbounds i16* %95, i64 %190
  %192 = load i16* %191, align 2, !tbaa !64
  %193 = zext i16 %192 to i32
  %194 = lshr i32 %160, 1
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i8* %101, i64 %195
  %197 = load i8* %196, align 1, !tbaa !42
  %198 = zext i8 %197 to i32
  %199 = shl nuw nsw i32 %149, 2
  %200 = and i32 %199, 4
  %201 = lshr i32 %198, %200
  %202 = shl i32 %201, 16
  %203 = and i32 %202, 983040
  %204 = or i32 %203, %193
  store i32 %204, i32* %20, align 4, !tbaa !62
  %205 = icmp eq i32 %171, 0
  br i1 %205, label %206, label %213

; <label>:206                                     ; preds = %BZ2_indexIntoF.exit47.i
  %207 = load i32* %23, align 4, !tbaa !68
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %208
  %210 = load i32* %209, align 4, !tbaa !45
  store i32 %210, i32* %22, align 4, !tbaa !67
  %211 = add nsw i32 %207, 1
  %212 = icmp eq i32 %211, 512
  %.5.i = select i1 %212, i32 0, i32 %211
  store i32 %.5.i, i32* %23, align 4, !tbaa !68
  br label %213

; <label>:213                                     ; preds = %206, %BZ2_indexIntoF.exit47.i
  %214 = phi i32 [ %210, %206 ], [ %171, %BZ2_indexIntoF.exit47.i ]
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %22, align 4, !tbaa !67
  %216 = add nsw i32 %75, 3
  store i32 %216, i32* %17, align 4, !tbaa !59
  %217 = icmp eq i32 %172, %76
  br i1 %217, label %.backedge56.i, label %218

; <label>:218                                     ; preds = %213
  %219 = icmp eq i32 %215, 1
  %220 = zext i1 %219 to i32
  %.masked2.i = and i32 %nb.0..i46.i, 255
  %221 = xor i32 %220, %.masked2.i
  %222 = icmp eq i32 %221, %82
  br i1 %222, label %.preheader17, label %223

; <label>:223                                     ; preds = %218
  store i32 %221, i32* %18, align 4, !tbaa !61
  br label %.backedge56.i

.preheader17:                                     ; preds = %218, %.preheader17
  %na.0.i38.i = phi i32 [ %.na.0.i40.i, %.preheader17 ], [ 256, %218 ]
  %nb.0.i39.i = phi i32 [ %nb.0..i41.i, %.preheader17 ], [ 0, %218 ]
  %224 = add nsw i32 %nb.0.i39.i, %na.0.i38.i
  %225 = ashr i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.DState* %5, i64 0, i32 18, i64 %226
  %228 = load i32* %227, align 4, !tbaa !45
  %229 = icmp sgt i32 %228, %204
  %.na.0.i40.i = select i1 %229, i32 %225, i32 %na.0.i38.i
  %nb.0..i41.i = select i1 %229, i32 %nb.0.i39.i, i32 %225
  %230 = sub nsw i32 %.na.0.i40.i, %nb.0..i41.i
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %BZ2_indexIntoF.exit42.i, label %.preheader17

BZ2_indexIntoF.exit42.i:                          ; preds = %.preheader17
  %232 = zext i32 %204 to i64
  %233 = getelementptr inbounds i16* %95, i64 %232
  %234 = load i16* %233, align 2, !tbaa !64
  %235 = zext i16 %234 to i32
  %236 = lshr i32 %204, 1
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i8* %101, i64 %237
  %239 = load i8* %238, align 1, !tbaa !42
  %240 = zext i8 %239 to i32
  %241 = shl nuw nsw i32 %193, 2
  %242 = and i32 %241, 4
  %243 = lshr i32 %240, %242
  %244 = shl i32 %243, 16
  %245 = and i32 %244, 983040
  %246 = or i32 %245, %235
  store i32 %246, i32* %20, align 4, !tbaa !62
  %247 = icmp eq i32 %215, 0
  br i1 %247, label %248, label %255

; <label>:248                                     ; preds = %BZ2_indexIntoF.exit42.i
  %249 = load i32* %23, align 4, !tbaa !68
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %250
  %252 = load i32* %251, align 4, !tbaa !45
  store i32 %252, i32* %22, align 4, !tbaa !67
  %253 = add nsw i32 %249, 1
  %254 = icmp eq i32 %253, 512
  %.6.i = select i1 %254, i32 0, i32 %253
  store i32 %.6.i, i32* %23, align 4, !tbaa !68
  br label %255

; <label>:255                                     ; preds = %248, %BZ2_indexIntoF.exit42.i
  %256 = phi i32 [ %252, %248 ], [ %215, %BZ2_indexIntoF.exit42.i ]
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %22, align 4, !tbaa !67
  %258 = icmp eq i32 %257, 1
  %259 = zext i1 %258 to i32
  %260 = add nsw i32 %75, 4
  store i32 %260, i32* %17, align 4, !tbaa !59
  %.masked3.i = and i32 %nb.0..i41.i, 255
  %261 = xor i32 %259, %.masked3.i
  %262 = add nuw nsw i32 %261, 4
  store i32 %262, i32* %16, align 4, !tbaa !56
  br label %263

; <label>:263                                     ; preds = %263, %255
  %na.0.i33.i = phi i32 [ 256, %255 ], [ %.na.0.i35.i, %263 ]
  %nb.0.i34.i = phi i32 [ 0, %255 ], [ %nb.0..i36.i, %263 ]
  %264 = add nsw i32 %nb.0.i34.i, %na.0.i33.i
  %265 = ashr i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.DState* %5, i64 0, i32 18, i64 %266
  %268 = load i32* %267, align 4, !tbaa !45
  %269 = icmp sgt i32 %268, %246
  %.na.0.i35.i = select i1 %269, i32 %265, i32 %na.0.i33.i
  %nb.0..i36.i = select i1 %269, i32 %nb.0.i34.i, i32 %265
  %270 = sub nsw i32 %.na.0.i35.i, %nb.0..i36.i
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %BZ2_indexIntoF.exit37.i, label %263

BZ2_indexIntoF.exit37.i:                          ; preds = %263
  store i32 %nb.0..i36.i, i32* %18, align 4, !tbaa !61
  %272 = zext i32 %246 to i64
  %273 = getelementptr inbounds i16* %95, i64 %272
  %274 = load i16* %273, align 2, !tbaa !64
  %275 = zext i16 %274 to i32
  %276 = lshr i32 %246, 1
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds i8* %101, i64 %277
  %279 = load i8* %278, align 1, !tbaa !42
  %280 = zext i8 %279 to i32
  %281 = shl nuw nsw i32 %235, 2
  %282 = and i32 %281, 4
  %283 = lshr i32 %280, %282
  %284 = shl i32 %283, 16
  %285 = and i32 %284, 983040
  %286 = or i32 %285, %275
  store i32 %286, i32* %20, align 4, !tbaa !62
  %287 = icmp eq i32 %257, 0
  br i1 %287, label %288, label %295

; <label>:288                                     ; preds = %BZ2_indexIntoF.exit37.i
  %289 = load i32* %23, align 4, !tbaa !68
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %290
  %292 = load i32* %291, align 4, !tbaa !45
  store i32 %292, i32* %22, align 4, !tbaa !67
  %293 = add nsw i32 %289, 1
  %294 = icmp eq i32 %293, 512
  %.7.i = select i1 %294, i32 0, i32 %293
  store i32 %.7.i, i32* %23, align 4, !tbaa !68
  br label %295

; <label>:295                                     ; preds = %288, %BZ2_indexIntoF.exit37.i
  %296 = phi i32 [ %292, %288 ], [ %257, %BZ2_indexIntoF.exit37.i ]
  %297 = add nsw i32 %296, -1
  store i32 %297, i32* %22, align 4, !tbaa !67
  %298 = icmp eq i32 %297, 1
  %299 = zext i1 %298 to i32
  %300 = xor i32 %299, %nb.0..i36.i
  store i32 %300, i32* %18, align 4, !tbaa !61
  %301 = add nsw i32 %75, 5
  store i32 %301, i32* %17, align 4, !tbaa !59
  br label %.backedge56.i

; <label>:302                                     ; preds = %.backedge.i, %.lr.ph.i
  %303 = phi i32 [ %.pre67.i, %.lr.ph.i ], [ %381, %.backedge.i ]
  %304 = phi %struct.bz_stream* [ %35, %.lr.ph.i ], [ %380, %.backedge.i ]
  %305 = icmp eq i32 %303, 0
  br i1 %305, label %337, label %306

; <label>:306                                     ; preds = %302
  %307 = load i8* %15, align 1, !tbaa !57
  %308 = getelementptr inbounds %struct.bz_stream* %304, i64 0, i32 4
  %309 = load i8** %308, align 8, !tbaa !43
  store i8 %307, i8* %309, align 1, !tbaa !42
  %310 = load i32* %14, align 4, !tbaa !58
  %311 = shl i32 %310, 8
  %312 = lshr i32 %310, 24
  %313 = load i8* %15, align 1, !tbaa !57
  %314 = zext i8 %313 to i32
  %315 = xor i32 %314, %312
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %316
  %318 = load i32* %317, align 4, !tbaa !45
  %319 = xor i32 %318, %311
  store i32 %319, i32* %14, align 4, !tbaa !58
  %320 = load i32* %16, align 4, !tbaa !56
  %321 = add nsw i32 %320, -1
  store i32 %321, i32* %16, align 4, !tbaa !56
  %322 = load %struct.bz_stream** %8, align 8, !tbaa !46
  %323 = getelementptr inbounds %struct.bz_stream* %322, i64 0, i32 4
  %324 = load i8** %323, align 8, !tbaa !43
  %325 = getelementptr inbounds i8* %324, i64 1
  store i8* %325, i8** %323, align 8, !tbaa !43
  %326 = getelementptr inbounds %struct.bz_stream* %322, i64 0, i32 5
  %327 = load i32* %326, align 4, !tbaa !41
  %328 = add i32 %327, -1
  store i32 %328, i32* %326, align 4, !tbaa !41
  %329 = getelementptr inbounds %struct.bz_stream* %322, i64 0, i32 6
  %330 = load i32* %329, align 4, !tbaa !30
  %331 = add i32 %330, 1
  store i32 %331, i32* %329, align 4, !tbaa !30
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %.backedge.i

; <label>:333                                     ; preds = %306
  %334 = getelementptr inbounds %struct.bz_stream* %322, i64 0, i32 7
  %335 = load i32* %334, align 4, !tbaa !31
  %336 = add i32 %335, 1
  store i32 %336, i32* %334, align 4, !tbaa !31
  br label %.backedge.i

; <label>:337                                     ; preds = %302
  %338 = load i32* %17, align 4, !tbaa !59
  %339 = load i32* %21, align 4, !tbaa !60
  %340 = add nsw i32 %339, 1
  %341 = icmp eq i32 %338, %340
  br i1 %341, label %.loopexit, label %342

; <label>:342                                     ; preds = %337
  %343 = icmp sgt i32 %338, %340
  br i1 %343, label %unRLE_obuf_to_output_SMALL.exit.thread16, label %344

; <label>:344                                     ; preds = %342
  store i32 1, i32* %16, align 4, !tbaa !56
  %345 = load i32* %18, align 4, !tbaa !61
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %15, align 1, !tbaa !57
  %347 = load i32* %20, align 4, !tbaa !62
  br label %348

; <label>:348                                     ; preds = %348, %344
  %na.0.i28.i = phi i32 [ 256, %344 ], [ %.na.0.i30.i, %348 ]
  %nb.0.i29.i = phi i32 [ 0, %344 ], [ %nb.0..i31.i, %348 ]
  %349 = add nsw i32 %nb.0.i29.i, %na.0.i28.i
  %350 = ashr i32 %349, 1
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.DState* %5, i64 0, i32 18, i64 %351
  %353 = load i32* %352, align 4, !tbaa !45
  %354 = icmp sgt i32 %353, %347
  %.na.0.i30.i = select i1 %354, i32 %350, i32 %na.0.i28.i
  %nb.0..i31.i = select i1 %354, i32 %nb.0.i29.i, i32 %350
  %355 = sub nsw i32 %.na.0.i30.i, %nb.0..i31.i
  %356 = icmp eq i32 %355, 1
  br i1 %356, label %BZ2_indexIntoF.exit32.i, label %348

BZ2_indexIntoF.exit32.i:                          ; preds = %348
  %357 = zext i32 %347 to i64
  %358 = load i16** %27, align 8, !tbaa !63
  %359 = getelementptr inbounds i16* %358, i64 %357
  %360 = load i16* %359, align 2, !tbaa !64
  %361 = zext i16 %360 to i32
  %362 = lshr i32 %347, 1
  %363 = zext i32 %362 to i64
  %364 = load i8** %28, align 8, !tbaa !66
  %365 = getelementptr inbounds i8* %364, i64 %363
  %366 = load i8* %365, align 1, !tbaa !42
  %367 = zext i8 %366 to i32
  %368 = shl i32 %347, 2
  %369 = and i32 %368, 4
  %370 = lshr i32 %367, %369
  %371 = shl i32 %370, 16
  %372 = and i32 %371, 983040
  %373 = or i32 %372, %361
  store i32 %373, i32* %20, align 4, !tbaa !62
  %374 = add nsw i32 %338, 1
  store i32 %374, i32* %17, align 4, !tbaa !59
  %375 = icmp eq i32 %338, %339
  br i1 %375, label %.backedge.i, label %376

; <label>:376                                     ; preds = %BZ2_indexIntoF.exit32.i
  %377 = and i32 %nb.0..i31.i, 255
  %378 = icmp eq i32 %377, %345
  br i1 %378, label %385, label %379

; <label>:379                                     ; preds = %376
  store i32 %377, i32* %18, align 4, !tbaa !61
  br label %.backedge.i

.backedge.i:                                      ; preds = %BZ2_indexIntoF.exit12.i, %446, %BZ2_indexIntoF.exit22.i, %415, %BZ2_indexIntoF.exit27.i, %379, %BZ2_indexIntoF.exit32.i, %333, %306
  %380 = phi %struct.bz_stream* [ %304, %379 ], [ %304, %415 ], [ %304, %446 ], [ %304, %BZ2_indexIntoF.exit12.i ], [ %322, %333 ], [ %322, %306 ], [ %304, %BZ2_indexIntoF.exit32.i ], [ %304, %BZ2_indexIntoF.exit27.i ], [ %304, %BZ2_indexIntoF.exit22.i ]
  %381 = phi i32 [ 1, %379 ], [ 2, %415 ], [ 3, %446 ], [ %472, %BZ2_indexIntoF.exit12.i ], [ %321, %333 ], [ %321, %306 ], [ 1, %BZ2_indexIntoF.exit32.i ], [ 2, %BZ2_indexIntoF.exit27.i ], [ 3, %BZ2_indexIntoF.exit22.i ]
  %382 = getelementptr inbounds %struct.bz_stream* %380, i64 0, i32 5
  %383 = load i32* %382, align 4, !tbaa !41
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %.loopexit, label %302

; <label>:385                                     ; preds = %376
  store i32 2, i32* %16, align 4, !tbaa !56
  br label %386

; <label>:386                                     ; preds = %386, %385
  %na.0.i23.i = phi i32 [ 256, %385 ], [ %.na.0.i25.i, %386 ]
  %nb.0.i24.i = phi i32 [ 0, %385 ], [ %nb.0..i26.i, %386 ]
  %387 = add nsw i32 %nb.0.i24.i, %na.0.i23.i
  %388 = ashr i32 %387, 1
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.DState* %5, i64 0, i32 18, i64 %389
  %391 = load i32* %390, align 4, !tbaa !45
  %392 = icmp sgt i32 %391, %373
  %.na.0.i25.i = select i1 %392, i32 %388, i32 %na.0.i23.i
  %nb.0..i26.i = select i1 %392, i32 %nb.0.i24.i, i32 %388
  %393 = sub nsw i32 %.na.0.i25.i, %nb.0..i26.i
  %394 = icmp eq i32 %393, 1
  br i1 %394, label %BZ2_indexIntoF.exit27.i, label %386

BZ2_indexIntoF.exit27.i:                          ; preds = %386
  %395 = zext i32 %373 to i64
  %396 = getelementptr inbounds i16* %358, i64 %395
  %397 = load i16* %396, align 2, !tbaa !64
  %398 = zext i16 %397 to i32
  %399 = lshr i32 %373, 1
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds i8* %364, i64 %400
  %402 = load i8* %401, align 1, !tbaa !42
  %403 = zext i8 %402 to i32
  %404 = shl nuw nsw i32 %361, 2
  %405 = and i32 %404, 4
  %406 = lshr i32 %403, %405
  %407 = shl i32 %406, 16
  %408 = and i32 %407, 983040
  %409 = or i32 %408, %398
  store i32 %409, i32* %20, align 4, !tbaa !62
  %410 = add nsw i32 %338, 2
  store i32 %410, i32* %17, align 4, !tbaa !59
  %411 = icmp eq i32 %374, %339
  br i1 %411, label %.backedge.i, label %412

; <label>:412                                     ; preds = %BZ2_indexIntoF.exit27.i
  %413 = and i32 %nb.0..i26.i, 255
  %414 = icmp eq i32 %413, %345
  br i1 %414, label %416, label %415

; <label>:415                                     ; preds = %412
  store i32 %413, i32* %18, align 4, !tbaa !61
  br label %.backedge.i

; <label>:416                                     ; preds = %412
  store i32 3, i32* %16, align 4, !tbaa !56
  br label %417

; <label>:417                                     ; preds = %417, %416
  %na.0.i18.i = phi i32 [ 256, %416 ], [ %.na.0.i20.i, %417 ]
  %nb.0.i19.i = phi i32 [ 0, %416 ], [ %nb.0..i21.i, %417 ]
  %418 = add nsw i32 %nb.0.i19.i, %na.0.i18.i
  %419 = ashr i32 %418, 1
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.DState* %5, i64 0, i32 18, i64 %420
  %422 = load i32* %421, align 4, !tbaa !45
  %423 = icmp sgt i32 %422, %409
  %.na.0.i20.i = select i1 %423, i32 %419, i32 %na.0.i18.i
  %nb.0..i21.i = select i1 %423, i32 %nb.0.i19.i, i32 %419
  %424 = sub nsw i32 %.na.0.i20.i, %nb.0..i21.i
  %425 = icmp eq i32 %424, 1
  br i1 %425, label %BZ2_indexIntoF.exit22.i, label %417

BZ2_indexIntoF.exit22.i:                          ; preds = %417
  %426 = zext i32 %409 to i64
  %427 = getelementptr inbounds i16* %358, i64 %426
  %428 = load i16* %427, align 2, !tbaa !64
  %429 = zext i16 %428 to i32
  %430 = lshr i32 %409, 1
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds i8* %364, i64 %431
  %433 = load i8* %432, align 1, !tbaa !42
  %434 = zext i8 %433 to i32
  %435 = shl nuw nsw i32 %398, 2
  %436 = and i32 %435, 4
  %437 = lshr i32 %434, %436
  %438 = shl i32 %437, 16
  %439 = and i32 %438, 983040
  %440 = or i32 %439, %429
  store i32 %440, i32* %20, align 4, !tbaa !62
  %441 = add nsw i32 %338, 3
  store i32 %441, i32* %17, align 4, !tbaa !59
  %442 = icmp eq i32 %410, %339
  br i1 %442, label %.backedge.i, label %443

; <label>:443                                     ; preds = %BZ2_indexIntoF.exit22.i
  %444 = and i32 %nb.0..i21.i, 255
  %445 = icmp eq i32 %444, %345
  br i1 %445, label %.preheader, label %446

; <label>:446                                     ; preds = %443
  store i32 %444, i32* %18, align 4, !tbaa !61
  br label %.backedge.i

.preheader:                                       ; preds = %443, %.preheader
  %na.0.i13.i = phi i32 [ %.na.0.i15.i, %.preheader ], [ 256, %443 ]
  %nb.0.i14.i = phi i32 [ %nb.0..i16.i, %.preheader ], [ 0, %443 ]
  %447 = add nsw i32 %nb.0.i14.i, %na.0.i13.i
  %448 = ashr i32 %447, 1
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.DState* %5, i64 0, i32 18, i64 %449
  %451 = load i32* %450, align 4, !tbaa !45
  %452 = icmp sgt i32 %451, %440
  %.na.0.i15.i = select i1 %452, i32 %448, i32 %na.0.i13.i
  %nb.0..i16.i = select i1 %452, i32 %nb.0.i14.i, i32 %448
  %453 = sub nsw i32 %.na.0.i15.i, %nb.0..i16.i
  %454 = icmp eq i32 %453, 1
  br i1 %454, label %BZ2_indexIntoF.exit17.i, label %.preheader

BZ2_indexIntoF.exit17.i:                          ; preds = %.preheader
  %455 = zext i32 %440 to i64
  %456 = getelementptr inbounds i16* %358, i64 %455
  %457 = load i16* %456, align 2, !tbaa !64
  %458 = zext i16 %457 to i32
  %459 = lshr i32 %440, 1
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds i8* %364, i64 %460
  %462 = load i8* %461, align 1, !tbaa !42
  %463 = zext i8 %462 to i32
  %464 = shl nuw nsw i32 %429, 2
  %465 = and i32 %464, 4
  %466 = lshr i32 %463, %465
  %467 = shl i32 %466, 16
  %468 = and i32 %467, 983040
  %469 = or i32 %468, %458
  store i32 %469, i32* %20, align 4, !tbaa !62
  %470 = add nsw i32 %338, 4
  store i32 %470, i32* %17, align 4, !tbaa !59
  %471 = and i32 %nb.0..i16.i, 255
  %472 = add nuw nsw i32 %471, 4
  store i32 %472, i32* %16, align 4, !tbaa !56
  br label %473

; <label>:473                                     ; preds = %473, %BZ2_indexIntoF.exit17.i
  %na.0.i8.i = phi i32 [ 256, %BZ2_indexIntoF.exit17.i ], [ %.na.0.i10.i, %473 ]
  %nb.0.i9.i = phi i32 [ 0, %BZ2_indexIntoF.exit17.i ], [ %nb.0..i11.i, %473 ]
  %474 = add nsw i32 %nb.0.i9.i, %na.0.i8.i
  %475 = ashr i32 %474, 1
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.DState* %5, i64 0, i32 18, i64 %476
  %478 = load i32* %477, align 4, !tbaa !45
  %479 = icmp sgt i32 %478, %469
  %.na.0.i10.i = select i1 %479, i32 %475, i32 %na.0.i8.i
  %nb.0..i11.i = select i1 %479, i32 %nb.0.i9.i, i32 %475
  %480 = sub nsw i32 %.na.0.i10.i, %nb.0..i11.i
  %481 = icmp eq i32 %480, 1
  br i1 %481, label %BZ2_indexIntoF.exit12.i, label %473

BZ2_indexIntoF.exit12.i:                          ; preds = %473
  store i32 %nb.0..i11.i, i32* %18, align 4, !tbaa !61
  %482 = zext i32 %469 to i64
  %483 = getelementptr inbounds i16* %358, i64 %482
  %484 = load i16* %483, align 2, !tbaa !64
  %485 = zext i16 %484 to i32
  %486 = lshr i32 %469, 1
  %487 = zext i32 %486 to i64
  %488 = getelementptr inbounds i8* %364, i64 %487
  %489 = load i8* %488, align 1, !tbaa !42
  %490 = zext i8 %489 to i32
  %491 = shl nuw nsw i32 %458, 2
  %492 = and i32 %491, 4
  %493 = lshr i32 %490, %492
  %494 = shl i32 %493, 16
  %495 = and i32 %494, 983040
  %496 = or i32 %495, %485
  store i32 %496, i32* %20, align 4, !tbaa !62
  %497 = add nsw i32 %338, 5
  store i32 %497, i32* %17, align 4, !tbaa !59
  br label %.backedge.i

; <label>:498                                     ; preds = %29
  br i1 %33, label %668, label %.preheader11.i

.preheader11.i:                                   ; preds = %498
  %499 = load %struct.bz_stream** %8, align 8, !tbaa !46
  %500 = getelementptr inbounds %struct.bz_stream* %499, i64 0, i32 5
  %501 = load i32* %500, align 4, !tbaa !41
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %.loopexit, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %.preheader11.i
  %.pre.i1 = load i32* %16, align 4, !tbaa !56
  br label %503

; <label>:503                                     ; preds = %.backedge13.i, %.lr.ph43.i
  %504 = phi i32 [ %.pre.i1, %.lr.ph43.i ], [ %575, %.backedge13.i ]
  %505 = phi %struct.bz_stream* [ %499, %.lr.ph43.i ], [ %574, %.backedge13.i ]
  %506 = icmp eq i32 %504, 0
  br i1 %506, label %538, label %507

; <label>:507                                     ; preds = %503
  %508 = load i8* %15, align 1, !tbaa !57
  %509 = getelementptr inbounds %struct.bz_stream* %505, i64 0, i32 4
  %510 = load i8** %509, align 8, !tbaa !43
  store i8 %508, i8* %510, align 1, !tbaa !42
  %511 = load i32* %14, align 4, !tbaa !58
  %512 = shl i32 %511, 8
  %513 = lshr i32 %511, 24
  %514 = load i8* %15, align 1, !tbaa !57
  %515 = zext i8 %514 to i32
  %516 = xor i32 %515, %513
  %517 = zext i32 %516 to i64
  %518 = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %517
  %519 = load i32* %518, align 4, !tbaa !45
  %520 = xor i32 %519, %512
  store i32 %520, i32* %14, align 4, !tbaa !58
  %521 = load i32* %16, align 4, !tbaa !56
  %522 = add nsw i32 %521, -1
  store i32 %522, i32* %16, align 4, !tbaa !56
  %523 = load %struct.bz_stream** %8, align 8, !tbaa !46
  %524 = getelementptr inbounds %struct.bz_stream* %523, i64 0, i32 4
  %525 = load i8** %524, align 8, !tbaa !43
  %526 = getelementptr inbounds i8* %525, i64 1
  store i8* %526, i8** %524, align 8, !tbaa !43
  %527 = getelementptr inbounds %struct.bz_stream* %523, i64 0, i32 5
  %528 = load i32* %527, align 4, !tbaa !41
  %529 = add i32 %528, -1
  store i32 %529, i32* %527, align 4, !tbaa !41
  %530 = getelementptr inbounds %struct.bz_stream* %523, i64 0, i32 6
  %531 = load i32* %530, align 4, !tbaa !30
  %532 = add i32 %531, 1
  store i32 %532, i32* %530, align 4, !tbaa !30
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %.backedge13.i

; <label>:534                                     ; preds = %507
  %535 = getelementptr inbounds %struct.bz_stream* %523, i64 0, i32 7
  %536 = load i32* %535, align 4, !tbaa !31
  %537 = add i32 %536, 1
  store i32 %537, i32* %535, align 4, !tbaa !31
  br label %.backedge13.i

; <label>:538                                     ; preds = %503
  %539 = load i32* %17, align 4, !tbaa !59
  %540 = load i32* %21, align 4, !tbaa !60
  %541 = add nsw i32 %540, 1
  %542 = icmp eq i32 %539, %541
  br i1 %542, label %.loopexit, label %543

; <label>:543                                     ; preds = %538
  %544 = icmp sgt i32 %539, %541
  br i1 %544, label %unRLE_obuf_to_output_SMALL.exit.thread16, label %545

; <label>:545                                     ; preds = %543
  store i32 1, i32* %16, align 4, !tbaa !56
  %546 = load i32* %18, align 4, !tbaa !61
  %547 = trunc i32 %546 to i8
  store i8 %547, i8* %15, align 1, !tbaa !57
  %548 = load i32* %20, align 4, !tbaa !62
  %549 = zext i32 %548 to i64
  %550 = load i32** %19, align 8, !tbaa !69
  %551 = getelementptr inbounds i32* %550, i64 %549
  %552 = load i32* %551, align 4, !tbaa !45
  %553 = lshr i32 %552, 8
  store i32 %553, i32* %20, align 4, !tbaa !62
  %554 = load i32* %22, align 4, !tbaa !67
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %563

; <label>:556                                     ; preds = %545
  %557 = load i32* %23, align 4, !tbaa !68
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %558
  %560 = load i32* %559, align 4, !tbaa !45
  store i32 %560, i32* %22, align 4, !tbaa !67
  %561 = add nsw i32 %557, 1
  %562 = icmp eq i32 %561, 512
  %..i2 = select i1 %562, i32 0, i32 %561
  store i32 %..i2, i32* %23, align 4, !tbaa !68
  br label %563

; <label>:563                                     ; preds = %556, %545
  %564 = phi i32 [ %560, %556 ], [ %554, %545 ]
  %565 = add nsw i32 %564, -1
  store i32 %565, i32* %22, align 4, !tbaa !67
  %566 = add nsw i32 %539, 1
  store i32 %566, i32* %17, align 4, !tbaa !59
  %567 = icmp eq i32 %539, %540
  br i1 %567, label %.backedge13.i, label %568

; <label>:568                                     ; preds = %563
  %569 = icmp eq i32 %565, 1
  %570 = zext i1 %569 to i32
  %.masked.i3 = and i32 %552, 255
  %571 = xor i32 %570, %.masked.i3
  %572 = icmp eq i32 %571, %546
  br i1 %572, label %579, label %573

; <label>:573                                     ; preds = %568
  store i32 %571, i32* %18, align 4, !tbaa !61
  br label %.backedge13.i

.backedge13.i:                                    ; preds = %661, %626, %616, %602, %592, %573, %563, %534, %507
  %574 = phi %struct.bz_stream* [ %505, %573 ], [ %505, %602 ], [ %505, %626 ], [ %505, %661 ], [ %523, %534 ], [ %523, %507 ], [ %505, %563 ], [ %505, %592 ], [ %505, %616 ]
  %575 = phi i32 [ 1, %573 ], [ 2, %602 ], [ 3, %626 ], [ %647, %661 ], [ %522, %534 ], [ %522, %507 ], [ 1, %563 ], [ 2, %592 ], [ 3, %616 ]
  %576 = getelementptr inbounds %struct.bz_stream* %574, i64 0, i32 5
  %577 = load i32* %576, align 4, !tbaa !41
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %.loopexit, label %503

; <label>:579                                     ; preds = %568
  store i32 2, i32* %16, align 4, !tbaa !56
  %580 = zext i32 %553 to i64
  %581 = getelementptr inbounds i32* %550, i64 %580
  %582 = load i32* %581, align 4, !tbaa !45
  %583 = lshr i32 %582, 8
  store i32 %583, i32* %20, align 4, !tbaa !62
  %584 = icmp eq i32 %565, 0
  br i1 %584, label %585, label %592

; <label>:585                                     ; preds = %579
  %586 = load i32* %23, align 4, !tbaa !68
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %587
  %589 = load i32* %588, align 4, !tbaa !45
  store i32 %589, i32* %22, align 4, !tbaa !67
  %590 = add nsw i32 %586, 1
  %591 = icmp eq i32 %590, 512
  %.4.i4 = select i1 %591, i32 0, i32 %590
  store i32 %.4.i4, i32* %23, align 4, !tbaa !68
  br label %592

; <label>:592                                     ; preds = %585, %579
  %593 = phi i32 [ %589, %585 ], [ %565, %579 ]
  %594 = add nsw i32 %593, -1
  store i32 %594, i32* %22, align 4, !tbaa !67
  %595 = add nsw i32 %539, 2
  store i32 %595, i32* %17, align 4, !tbaa !59
  %596 = icmp eq i32 %566, %540
  br i1 %596, label %.backedge13.i, label %597

; <label>:597                                     ; preds = %592
  %598 = icmp eq i32 %594, 1
  %599 = zext i1 %598 to i32
  %.masked1.i5 = and i32 %582, 255
  %600 = xor i32 %599, %.masked1.i5
  %601 = icmp eq i32 %600, %546
  br i1 %601, label %603, label %602

; <label>:602                                     ; preds = %597
  store i32 %600, i32* %18, align 4, !tbaa !61
  br label %.backedge13.i

; <label>:603                                     ; preds = %597
  store i32 3, i32* %16, align 4, !tbaa !56
  %604 = zext i32 %583 to i64
  %605 = getelementptr inbounds i32* %550, i64 %604
  %606 = load i32* %605, align 4, !tbaa !45
  %607 = lshr i32 %606, 8
  store i32 %607, i32* %20, align 4, !tbaa !62
  %608 = icmp eq i32 %594, 0
  br i1 %608, label %609, label %616

; <label>:609                                     ; preds = %603
  %610 = load i32* %23, align 4, !tbaa !68
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %611
  %613 = load i32* %612, align 4, !tbaa !45
  store i32 %613, i32* %22, align 4, !tbaa !67
  %614 = add nsw i32 %610, 1
  %615 = icmp eq i32 %614, 512
  %.5.i6 = select i1 %615, i32 0, i32 %614
  store i32 %.5.i6, i32* %23, align 4, !tbaa !68
  br label %616

; <label>:616                                     ; preds = %609, %603
  %617 = phi i32 [ %613, %609 ], [ %594, %603 ]
  %618 = add nsw i32 %617, -1
  store i32 %618, i32* %22, align 4, !tbaa !67
  %619 = add nsw i32 %539, 3
  store i32 %619, i32* %17, align 4, !tbaa !59
  %620 = icmp eq i32 %595, %540
  br i1 %620, label %.backedge13.i, label %621

; <label>:621                                     ; preds = %616
  %622 = icmp eq i32 %618, 1
  %623 = zext i1 %622 to i32
  %.masked2.i7 = and i32 %606, 255
  %624 = xor i32 %623, %.masked2.i7
  %625 = icmp eq i32 %624, %546
  br i1 %625, label %627, label %626

; <label>:626                                     ; preds = %621
  store i32 %624, i32* %18, align 4, !tbaa !61
  br label %.backedge13.i

; <label>:627                                     ; preds = %621
  %628 = zext i32 %607 to i64
  %629 = getelementptr inbounds i32* %550, i64 %628
  %630 = load i32* %629, align 4, !tbaa !45
  %631 = lshr i32 %630, 8
  store i32 %631, i32* %20, align 4, !tbaa !62
  %632 = icmp eq i32 %618, 0
  br i1 %632, label %633, label %640

; <label>:633                                     ; preds = %627
  %634 = load i32* %23, align 4, !tbaa !68
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %635
  %637 = load i32* %636, align 4, !tbaa !45
  store i32 %637, i32* %22, align 4, !tbaa !67
  %638 = add nsw i32 %634, 1
  %639 = icmp eq i32 %638, 512
  %.6.i8 = select i1 %639, i32 0, i32 %638
  store i32 %.6.i8, i32* %23, align 4, !tbaa !68
  br label %640

; <label>:640                                     ; preds = %633, %627
  %641 = phi i32 [ %637, %633 ], [ %618, %627 ]
  %642 = add nsw i32 %641, -1
  store i32 %642, i32* %22, align 4, !tbaa !67
  %643 = icmp eq i32 %642, 1
  %644 = zext i1 %643 to i32
  %645 = add nsw i32 %539, 4
  store i32 %645, i32* %17, align 4, !tbaa !59
  %.masked3.i9 = and i32 %630, 255
  %646 = xor i32 %644, %.masked3.i9
  %647 = add nuw nsw i32 %646, 4
  store i32 %647, i32* %16, align 4, !tbaa !56
  %648 = zext i32 %631 to i64
  %649 = getelementptr inbounds i32* %550, i64 %648
  %650 = load i32* %649, align 4, !tbaa !45
  %651 = and i32 %650, 255
  store i32 %651, i32* %18, align 4, !tbaa !61
  %652 = lshr i32 %650, 8
  store i32 %652, i32* %20, align 4, !tbaa !62
  %653 = icmp eq i32 %642, 0
  br i1 %653, label %654, label %661

; <label>:654                                     ; preds = %640
  %655 = load i32* %23, align 4, !tbaa !68
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %656
  %658 = load i32* %657, align 4, !tbaa !45
  store i32 %658, i32* %22, align 4, !tbaa !67
  %659 = add nsw i32 %655, 1
  %660 = icmp eq i32 %659, 512
  %.7.i10 = select i1 %660, i32 0, i32 %659
  store i32 %.7.i10, i32* %23, align 4, !tbaa !68
  br label %661

; <label>:661                                     ; preds = %654, %640
  %662 = phi i32 [ %658, %654 ], [ %642, %640 ]
  %663 = add nsw i32 %662, -1
  store i32 %663, i32* %22, align 4, !tbaa !67
  %664 = icmp eq i32 %663, 1
  %665 = zext i1 %664 to i32
  %666 = xor i32 %665, %651
  store i32 %666, i32* %18, align 4, !tbaa !61
  %667 = add nsw i32 %539, 5
  store i32 %667, i32* %17, align 4, !tbaa !59
  br label %.backedge13.i

; <label>:668                                     ; preds = %498
  %669 = load i32* %14, align 4, !tbaa !58
  %670 = load i8* %15, align 1, !tbaa !57
  %671 = load i32* %16, align 4, !tbaa !56
  %672 = load i32* %17, align 4, !tbaa !59
  %673 = load i32* %18, align 4, !tbaa !61
  %674 = load i32** %19, align 8, !tbaa !69
  %675 = load i32* %20, align 4, !tbaa !62
  %676 = load %struct.bz_stream** %8, align 8, !tbaa !46
  %677 = getelementptr inbounds %struct.bz_stream* %676, i64 0, i32 4
  %678 = load i8** %677, align 8, !tbaa !43
  %679 = getelementptr inbounds %struct.bz_stream* %676, i64 0, i32 5
  %680 = load i32* %679, align 4, !tbaa !41
  %681 = load i32* %21, align 4, !tbaa !60
  %682 = add nsw i32 %681, 1
  br label %.backedge.i11

.backedge.i11:                                    ; preds = %747, %744, %737, %734, %727, %668
  %c_state_out_len.0.i = phi i32 [ %671, %668 ], [ 2, %727 ], [ 3, %737 ], [ %753, %747 ], [ 2, %734 ], [ 3, %744 ]
  %c_nblock_used.0.i = phi i32 [ %672, %668 ], [ %682, %727 ], [ %682, %737 ], [ %759, %747 ], [ %732, %734 ], [ %742, %744 ]
  %c_k0.0.i = phi i32 [ %673, %668 ], [ %c_k0.2.i, %727 ], [ %c_k0.2.i, %737 ], [ %757, %747 ], [ %735, %734 ], [ %745, %744 ]
  %c_state_out_ch.0.i = phi i8 [ %670, %668 ], [ %717, %727 ], [ %717, %737 ], [ %717, %747 ], [ %717, %734 ], [ %717, %744 ]
  %c_tPos.0.i = phi i32 [ %675, %668 ], [ %731, %727 ], [ %741, %737 ], [ %758, %747 ], [ %731, %734 ], [ %741, %744 ]
  %cs_next_out.0.i = phi i8* [ %678, %668 ], [ %cs_next_out.3.i, %727 ], [ %cs_next_out.3.i, %737 ], [ %cs_next_out.3.i, %747 ], [ %cs_next_out.3.i, %734 ], [ %cs_next_out.3.i, %744 ]
  %cs_avail_out.0.i = phi i32 [ %680, %668 ], [ %cs_avail_out.3.i, %727 ], [ %cs_avail_out.3.i, %737 ], [ %cs_avail_out.3.i, %747 ], [ %cs_avail_out.3.i, %734 ], [ %cs_avail_out.3.i, %744 ]
  %c_calculatedBlockCRC.0.i = phi i32 [ %669, %668 ], [ %c_calculatedBlockCRC.3.i, %727 ], [ %c_calculatedBlockCRC.3.i, %737 ], [ %c_calculatedBlockCRC.3.i, %747 ], [ %c_calculatedBlockCRC.3.i, %734 ], [ %c_calculatedBlockCRC.3.i, %744 ]
  %683 = icmp sgt i32 %c_state_out_len.0.i, 0
  br i1 %683, label %.preheader.i12, label %712

.preheader.i12:                                   ; preds = %.backedge.i11
  %684 = icmp eq i32 %cs_avail_out.0.i, 0
  br i1 %684, label %.loopexit.i, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.preheader.i12
  %685 = zext i8 %c_state_out_ch.0.i to i32
  br label %686

; <label>:686                                     ; preds = %688, %.lr.ph.i13
  %c_calculatedBlockCRC.129.i = phi i32 [ %c_calculatedBlockCRC.0.i, %.lr.ph.i13 ], [ %695, %688 ]
  %cs_avail_out.128.i = phi i32 [ %cs_avail_out.0.i, %.lr.ph.i13 ], [ %698, %688 ]
  %cs_next_out.127.i = phi i8* [ %cs_next_out.0.i, %.lr.ph.i13 ], [ %697, %688 ]
  %c_state_out_len.126.i = phi i32 [ %c_state_out_len.0.i, %.lr.ph.i13 ], [ %696, %688 ]
  %687 = icmp eq i32 %c_state_out_len.126.i, 1
  br i1 %687, label %.loopexit8.i, label %688

; <label>:688                                     ; preds = %686
  store i8 %c_state_out_ch.0.i, i8* %cs_next_out.127.i, align 1, !tbaa !42
  %689 = shl i32 %c_calculatedBlockCRC.129.i, 8
  %690 = lshr i32 %c_calculatedBlockCRC.129.i, 24
  %691 = xor i32 %690, %685
  %692 = zext i32 %691 to i64
  %693 = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %692
  %694 = load i32* %693, align 4, !tbaa !45
  %695 = xor i32 %694, %689
  %696 = add nsw i32 %c_state_out_len.126.i, -1
  %697 = getelementptr inbounds i8* %cs_next_out.127.i, i64 1
  %698 = add i32 %cs_avail_out.128.i, -1
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %.loopexit.i, label %686

.loopexit8.i:                                     ; preds = %686, %725, %716
  %c_nblock_used.1.i = phi i32 [ %682, %725 ], [ %722, %716 ], [ %c_nblock_used.0.i, %686 ]
  %c_k0.1.i = phi i32 [ %c_k0.2.i, %725 ], [ %723, %716 ], [ %c_k0.0.i, %686 ]
  %c_state_out_ch.1.i = phi i8 [ %717, %725 ], [ %717, %716 ], [ %c_state_out_ch.0.i, %686 ]
  %c_tPos.1.i = phi i32 [ %721, %725 ], [ %721, %716 ], [ %c_tPos.0.i, %686 ]
  %cs_next_out.2.i = phi i8* [ %cs_next_out.3.i, %725 ], [ %cs_next_out.3.i, %716 ], [ %cs_next_out.127.i, %686 ]
  %cs_avail_out.2.i = phi i32 [ %cs_avail_out.3.i, %725 ], [ %cs_avail_out.3.i, %716 ], [ %cs_avail_out.128.i, %686 ]
  %c_calculatedBlockCRC.2.i = phi i32 [ %c_calculatedBlockCRC.3.i, %725 ], [ %c_calculatedBlockCRC.3.i, %716 ], [ %c_calculatedBlockCRC.129.i, %686 ]
  %700 = icmp eq i32 %cs_avail_out.2.i, 0
  br i1 %700, label %.loopexit.i, label %701

; <label>:701                                     ; preds = %.loopexit8.i
  store i8 %c_state_out_ch.1.i, i8* %cs_next_out.2.i, align 1, !tbaa !42
  %702 = shl i32 %c_calculatedBlockCRC.2.i, 8
  %703 = lshr i32 %c_calculatedBlockCRC.2.i, 24
  %704 = zext i8 %c_state_out_ch.1.i to i32
  %705 = xor i32 %703, %704
  %706 = zext i32 %705 to i64
  %707 = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %706
  %708 = load i32* %707, align 4, !tbaa !45
  %709 = xor i32 %708, %702
  %710 = getelementptr inbounds i8* %cs_next_out.2.i, i64 1
  %711 = add i32 %cs_avail_out.2.i, -1
  br label %712

; <label>:712                                     ; preds = %701, %.backedge.i11
  %c_nblock_used.2.i = phi i32 [ %c_nblock_used.1.i, %701 ], [ %c_nblock_used.0.i, %.backedge.i11 ]
  %c_k0.2.i = phi i32 [ %c_k0.1.i, %701 ], [ %c_k0.0.i, %.backedge.i11 ]
  %c_state_out_ch.2.i = phi i8 [ %c_state_out_ch.1.i, %701 ], [ %c_state_out_ch.0.i, %.backedge.i11 ]
  %c_tPos.2.i = phi i32 [ %c_tPos.1.i, %701 ], [ %c_tPos.0.i, %.backedge.i11 ]
  %cs_next_out.3.i = phi i8* [ %710, %701 ], [ %cs_next_out.0.i, %.backedge.i11 ]
  %cs_avail_out.3.i = phi i32 [ %711, %701 ], [ %cs_avail_out.0.i, %.backedge.i11 ]
  %c_calculatedBlockCRC.3.i = phi i32 [ %709, %701 ], [ %c_calculatedBlockCRC.0.i, %.backedge.i11 ]
  %713 = icmp sgt i32 %c_nblock_used.2.i, %682
  br i1 %713, label %unRLE_obuf_to_output_SMALL.exit.thread16, label %714

; <label>:714                                     ; preds = %712
  %715 = icmp eq i32 %c_nblock_used.2.i, %682
  br i1 %715, label %.loopexit.i, label %716

; <label>:716                                     ; preds = %714
  %717 = trunc i32 %c_k0.2.i to i8
  %718 = zext i32 %c_tPos.2.i to i64
  %719 = getelementptr inbounds i32* %674, i64 %718
  %720 = load i32* %719, align 4, !tbaa !45
  %721 = lshr i32 %720, 8
  %722 = add nsw i32 %c_nblock_used.2.i, 1
  %723 = and i32 %720, 255
  %724 = icmp eq i32 %723, %c_k0.2.i
  br i1 %724, label %725, label %.loopexit8.i

; <label>:725                                     ; preds = %716
  %726 = icmp eq i32 %722, %682
  br i1 %726, label %.loopexit8.i, label %727

; <label>:727                                     ; preds = %725
  %728 = zext i32 %721 to i64
  %729 = getelementptr inbounds i32* %674, i64 %728
  %730 = load i32* %729, align 4, !tbaa !45
  %731 = lshr i32 %730, 8
  %732 = add nsw i32 %c_nblock_used.2.i, 2
  %733 = icmp eq i32 %732, %682
  br i1 %733, label %.backedge.i11, label %734

; <label>:734                                     ; preds = %727
  %735 = and i32 %730, 255
  %736 = icmp eq i32 %735, %c_k0.2.i
  br i1 %736, label %737, label %.backedge.i11

; <label>:737                                     ; preds = %734
  %738 = zext i32 %731 to i64
  %739 = getelementptr inbounds i32* %674, i64 %738
  %740 = load i32* %739, align 4, !tbaa !45
  %741 = lshr i32 %740, 8
  %742 = add nsw i32 %c_nblock_used.2.i, 3
  %743 = icmp eq i32 %742, %682
  br i1 %743, label %.backedge.i11, label %744

; <label>:744                                     ; preds = %737
  %745 = and i32 %740, 255
  %746 = icmp eq i32 %745, %c_k0.2.i
  br i1 %746, label %747, label %.backedge.i11

; <label>:747                                     ; preds = %744
  %748 = zext i32 %741 to i64
  %749 = getelementptr inbounds i32* %674, i64 %748
  %750 = load i32* %749, align 4, !tbaa !45
  %751 = lshr i32 %750, 8
  %752 = and i32 %750, 255
  %753 = add nuw nsw i32 %752, 4
  %754 = zext i32 %751 to i64
  %755 = getelementptr inbounds i32* %674, i64 %754
  %756 = load i32* %755, align 4, !tbaa !45
  %757 = and i32 %756, 255
  %758 = lshr i32 %756, 8
  %759 = add nsw i32 %c_nblock_used.2.i, 5
  br label %.backedge.i11

.loopexit.i:                                      ; preds = %714, %.loopexit8.i, %.preheader.i12, %688
  %c_state_out_len.2.i = phi i32 [ %696, %688 ], [ %c_state_out_len.0.i, %.preheader.i12 ], [ 0, %714 ], [ 1, %.loopexit8.i ]
  %c_nblock_used.3.i = phi i32 [ %c_nblock_used.0.i, %688 ], [ %c_nblock_used.0.i, %.preheader.i12 ], [ %682, %714 ], [ %c_nblock_used.1.i, %.loopexit8.i ]
  %c_k0.3.i = phi i32 [ %c_k0.0.i, %688 ], [ %c_k0.0.i, %.preheader.i12 ], [ %c_k0.2.i, %714 ], [ %c_k0.1.i, %.loopexit8.i ]
  %c_state_out_ch.3.i = phi i8 [ %c_state_out_ch.0.i, %688 ], [ %c_state_out_ch.0.i, %.preheader.i12 ], [ %c_state_out_ch.2.i, %714 ], [ %c_state_out_ch.1.i, %.loopexit8.i ]
  %c_tPos.3.i = phi i32 [ %c_tPos.0.i, %688 ], [ %c_tPos.0.i, %.preheader.i12 ], [ %c_tPos.2.i, %714 ], [ %c_tPos.1.i, %.loopexit8.i ]
  %cs_next_out.4.i = phi i8* [ %697, %688 ], [ %cs_next_out.0.i, %.preheader.i12 ], [ %cs_next_out.3.i, %714 ], [ %cs_next_out.2.i, %.loopexit8.i ]
  %cs_avail_out.4.i = phi i32 [ 0, %688 ], [ 0, %.preheader.i12 ], [ %cs_avail_out.3.i, %714 ], [ 0, %.loopexit8.i ]
  %c_calculatedBlockCRC.4.i = phi i32 [ %695, %688 ], [ %c_calculatedBlockCRC.0.i, %.preheader.i12 ], [ %c_calculatedBlockCRC.3.i, %714 ], [ %c_calculatedBlockCRC.2.i, %.loopexit8.i ]
  %760 = load %struct.bz_stream** %8, align 8, !tbaa !46
  %761 = getelementptr inbounds %struct.bz_stream* %760, i64 0, i32 6
  %762 = load i32* %761, align 4, !tbaa !30
  %763 = sub i32 %680, %cs_avail_out.4.i
  %uadd.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %763, i32 %762) #8
  %764 = extractvalue { i32, i1 } %uadd.i, 0
  store i32 %764, i32* %761, align 4, !tbaa !30
  %765 = extractvalue { i32, i1 } %uadd.i, 1
  br i1 %765, label %766, label %770

; <label>:766                                     ; preds = %.loopexit.i
  %767 = getelementptr inbounds %struct.bz_stream* %760, i64 0, i32 7
  %768 = load i32* %767, align 4, !tbaa !31
  %769 = add i32 %768, 1
  store i32 %769, i32* %767, align 4, !tbaa !31
  br label %770

; <label>:770                                     ; preds = %766, %.loopexit.i
  store i32 %c_calculatedBlockCRC.4.i, i32* %14, align 4, !tbaa !58
  store i8 %c_state_out_ch.3.i, i8* %15, align 1, !tbaa !57
  store i32 %c_state_out_len.2.i, i32* %16, align 4, !tbaa !56
  store i32 %c_nblock_used.3.i, i32* %17, align 4, !tbaa !59
  store i32 %c_k0.3.i, i32* %18, align 4, !tbaa !61
  store i32* %674, i32** %19, align 8, !tbaa !69
  store i32 %c_tPos.3.i, i32* %20, align 4, !tbaa !62
  %771 = getelementptr inbounds %struct.bz_stream* %760, i64 0, i32 4
  store i8* %cs_next_out.4.i, i8** %771, align 8, !tbaa !43
  %772 = getelementptr inbounds %struct.bz_stream* %760, i64 0, i32 5
  store i32 %cs_avail_out.4.i, i32* %772, align 4, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge56.i, %74, %.backedge.i, %337, %.backedge13.i, %538, %.preheader.i, %.preheader53.i, %770, %.preheader11.i
  %773 = load i32* %17, align 4, !tbaa !59
  %774 = load i32* %21, align 4, !tbaa !60
  %775 = add nsw i32 %774, 1
  %776 = icmp eq i32 %773, %775
  br i1 %776, label %777, label %unRLE_obuf_to_output_SMALL.exit.thread16

; <label>:777                                     ; preds = %.loopexit
  %778 = load i32* %16, align 4, !tbaa !56
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %780, label %unRLE_obuf_to_output_SMALL.exit.thread16

; <label>:780                                     ; preds = %777
  %781 = load i32* %14, align 4, !tbaa !58
  %782 = xor i32 %781, -1
  store i32 %782, i32* %14, align 4, !tbaa !58
  %783 = load i32* %24, align 4, !tbaa !54
  %784 = icmp sgt i32 %783, 2
  br i1 %784, label %785, label %789

; <label>:785                                     ; preds = %780
  %786 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %787 = load i32* %25, align 4, !tbaa !70
  %788 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %786, i8* getelementptr inbounds ([18 x i8]* @.str2, i64 0, i64 0), i32 %787, i32 %782) #10
  %.pr = load i32* %24, align 4, !tbaa !54
  br label %789

; <label>:789                                     ; preds = %785, %780
  %790 = phi i32 [ %.pr, %785 ], [ %783, %780 ]
  %791 = icmp sgt i32 %790, 1
  br i1 %791, label %792, label %794

; <label>:792                                     ; preds = %789
  %793 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %fputc = tail call i32 @fputc(i32 93, %struct.__sFILE* %793)
  br label %794

; <label>:794                                     ; preds = %792, %789
  %795 = load i32* %14, align 4, !tbaa !58
  %796 = load i32* %25, align 4, !tbaa !70
  %797 = icmp eq i32 %795, %796
  br i1 %797, label %.thread, label %unRLE_obuf_to_output_SMALL.exit.thread16

.thread:                                          ; preds = %794
  %798 = load i32* %26, align 4, !tbaa !51
  %799 = shl i32 %798, 1
  %800 = lshr i32 %798, 31
  %801 = or i32 %799, %800
  %802 = xor i32 %801, %795
  store i32 %802, i32* %26, align 4, !tbaa !51
  store i32 14, i32* %11, align 4, !tbaa !48
  br label %.loopexit62

; <label>:803                                     ; preds = %.backedge
  %804 = icmp sgt i32 %.ph, 9
  br i1 %804, label %.loopexit62, label %.backedge

.loopexit62:                                      ; preds = %803, %.thread
  %805 = tail call i32 @BZ2_decompress(%struct.DState* %5) #10
  %806 = icmp eq i32 %805, 4
  br i1 %806, label %807, label %820

; <label>:807                                     ; preds = %.loopexit62
  %808 = load i32* %24, align 4, !tbaa !54
  %809 = icmp sgt i32 %808, 2
  br i1 %809, label %810, label %._crit_edge

._crit_edge:                                      ; preds = %807
  %.pre54 = getelementptr inbounds %struct.DState* %5, i64 0, i32 24
  br label %816

; <label>:810                                     ; preds = %807
  %811 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %812 = getelementptr inbounds %struct.DState* %5, i64 0, i32 24
  %813 = load i32* %812, align 4, !tbaa !71
  %814 = load i32* %26, align 4, !tbaa !51
  %815 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %811, i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0), i32 %813, i32 %814) #10
  br label %816

; <label>:816                                     ; preds = %._crit_edge, %810
  %.pre-phi = phi i32* [ %.pre54, %._crit_edge ], [ %812, %810 ]
  %817 = load i32* %26, align 4, !tbaa !51
  %818 = load i32* %.pre-phi, align 4, !tbaa !71
  %819 = icmp eq i32 %817, %818
  %. = select i1 %819, i32 4, i32 -4
  br label %unRLE_obuf_to_output_SMALL.exit.thread16

; <label>:820                                     ; preds = %.loopexit62
  %821 = load i32* %11, align 4, !tbaa !48
  %822 = icmp eq i32 %821, 2
  br i1 %822, label %.backedge.outer, label %unRLE_obuf_to_output_SMALL.exit.thread16

unRLE_obuf_to_output_SMALL.exit.thread16:         ; preds = %.backedge, %820, %.loopexit, %777, %794, %79, %342, %543, %712, %816, %7, %2, %0
  %.0 = phi i32 [ -2, %0 ], [ -2, %2 ], [ -2, %7 ], [ %., %816 ], [ -4, %712 ], [ -4, %543 ], [ -4, %342 ], [ -4, %79 ], [ -1, %.backedge ], [ %805, %820 ], [ 0, %.loopexit ], [ 0, %777 ], [ -4, %794 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @BZ2_decompress(%struct.DState*) #6

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm) #4 {
  %1 = icmp eq %struct.bz_stream* %strm, null
  br i1 %1, label %43, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8
  %4 = bitcast i8** %3 to %struct.DState**
  %5 = load %struct.DState** %4, align 8, !tbaa !27
  %6 = icmp eq %struct.DState* %5, null
  br i1 %6, label %43, label %7

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds %struct.DState* %5, i64 0, i32 0
  %9 = load %struct.bz_stream** %8, align 8, !tbaa !46
  %10 = icmp eq %struct.bz_stream* %9, %strm
  br i1 %10, label %11, label %43

; <label>:11                                      ; preds = %7
  %12 = getelementptr inbounds %struct.DState* %5, i64 0, i32 20
  %13 = load i32** %12, align 8, !tbaa !69
  %14 = icmp eq i32* %13, null
  br i1 %14, label %21, label %15

; <label>:15                                      ; preds = %11
  %16 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10
  %17 = load void (i8*, i8*)** %16, align 8, !tbaa !9
  %18 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  %19 = load i8** %18, align 8, !tbaa !10
  %20 = bitcast i32* %13 to i8*
  tail call void %17(i8* %19, i8* %20) #10
  br label %21

; <label>:21                                      ; preds = %11, %15
  %22 = getelementptr inbounds %struct.DState* %5, i64 0, i32 21
  %23 = load i16** %22, align 8, !tbaa !63
  %24 = icmp eq i16* %23, null
  br i1 %24, label %31, label %25

; <label>:25                                      ; preds = %21
  %26 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10
  %27 = load void (i8*, i8*)** %26, align 8, !tbaa !9
  %28 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  %29 = load i8** %28, align 8, !tbaa !10
  %30 = bitcast i16* %23 to i8*
  tail call void %27(i8* %29, i8* %30) #10
  br label %31

; <label>:31                                      ; preds = %21, %25
  %32 = getelementptr inbounds %struct.DState* %5, i64 0, i32 22
  %33 = load i8** %32, align 8, !tbaa !66
  %34 = icmp eq i8* %33, null
  %.pre = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10
  br i1 %34, label %._crit_edge, label %35

._crit_edge:                                      ; preds = %31
  %.pre1 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  br label %39

; <label>:35                                      ; preds = %31
  %36 = load void (i8*, i8*)** %.pre, align 8, !tbaa !9
  %37 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11
  %38 = load i8** %37, align 8, !tbaa !10
  tail call void %36(i8* %38, i8* %33) #10
  br label %39

; <label>:39                                      ; preds = %._crit_edge, %35
  %.pre-phi2 = phi i8** [ %.pre1, %._crit_edge ], [ %37, %35 ]
  %40 = load void (i8*, i8*)** %.pre, align 8, !tbaa !9
  %41 = load i8** %.pre-phi2, align 8, !tbaa !10
  %42 = load i8** %3, align 8, !tbaa !27
  tail call void %40(i8* %41, i8* %42) #10
  store i8* null, i8** %3, align 8, !tbaa !27
  br label %43

; <label>:43                                      ; preds = %7, %2, %0, %39
  %.0 = phi i32 [ 0, %39 ], [ -2, %0 ], [ -2, %2 ], [ -2, %7 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @BZ2_bzWriteOpen(i32* %bzerror, %struct.__sFILE* %f, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #4 {
  %1 = icmp ne i32* %bzerror, null
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  store i32 0, i32* %bzerror, align 4, !tbaa !45
  br label %3

; <label>:3                                       ; preds = %0, %2
  %4 = icmp eq %struct.__sFILE* %f, null
  %blockSize100k.off = add i32 %blockSize100k, -1
  %5 = icmp ugt i32 %blockSize100k.off, 8
  %6 = or i1 %4, %5
  %7 = icmp ugt i32 %workFactor, 250
  %8 = or i1 %7, %6
  %9 = icmp ugt i32 %verbosity, 4
  %10 = or i1 %9, %8
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %3
  br i1 %1, label %12, label %45

; <label>:12                                      ; preds = %11
  store i32 -2, i32* %bzerror, align 4, !tbaa !45
  br label %45

; <label>:13                                      ; preds = %3
  %14 = tail call i32 @ferror(%struct.__sFILE* %f) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

; <label>:16                                      ; preds = %13
  br i1 %1, label %17, label %45

; <label>:17                                      ; preds = %16
  store i32 -6, i32* %bzerror, align 4, !tbaa !45
  br label %45

; <label>:18                                      ; preds = %13
  %19 = tail call i8* @malloc(i64 5104) #10
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

; <label>:21                                      ; preds = %18
  br i1 %1, label %22, label %45

; <label>:22                                      ; preds = %21
  store i32 -3, i32* %bzerror, align 4, !tbaa !45
  br label %45

; <label>:23                                      ; preds = %18
  br i1 %1, label %24, label %25

; <label>:24                                      ; preds = %23
  store i32 0, i32* %bzerror, align 4, !tbaa !45
  br label %25

; <label>:25                                      ; preds = %24, %23
  %26 = getelementptr inbounds i8* %19, i64 5096
  %27 = bitcast i8* %26 to i32*
  store i32 0, i32* %27, align 4, !tbaa !72
  %28 = getelementptr inbounds i8* %19, i64 5100
  store i8 0, i8* %28, align 1, !tbaa !74
  %29 = getelementptr inbounds i8* %19, i64 5008
  %30 = bitcast i8* %29 to i32*
  store i32 0, i32* %30, align 4, !tbaa !75
  %31 = bitcast i8* %19 to %struct.__sFILE**
  store %struct.__sFILE* %f, %struct.__sFILE** %31, align 8, !tbaa !76
  %32 = getelementptr inbounds i8* %19, i64 5012
  store i8 1, i8* %32, align 1, !tbaa !77
  %33 = getelementptr inbounds i8* %19, i64 5016
  %34 = bitcast i8* %33 to %struct.bz_stream*
  %35 = getelementptr inbounds i8* %19, i64 5072
  %36 = icmp eq i32 %workFactor, 0
  %.workFactor = select i1 %36, i32 30, i32 %workFactor
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 24, i32 8, i1 false)
  %37 = tail call i32 @BZ2_bzCompressInit(%struct.bz_stream* %34, i32 %blockSize100k, i32 %verbosity, i32 %.workFactor) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

; <label>:39                                      ; preds = %25
  br i1 %1, label %40, label %41

; <label>:40                                      ; preds = %39
  store i32 %37, i32* %bzerror, align 4, !tbaa !45
  br label %41

; <label>:41                                      ; preds = %40, %39
  tail call void @free(i8* %19) #12
  br label %45

; <label>:42                                      ; preds = %25
  %43 = getelementptr inbounds i8* %19, i64 5024
  %44 = bitcast i8* %43 to i32*
  store i32 0, i32* %44, align 4, !tbaa !78
  store i8 1, i8* %28, align 1, !tbaa !74
  br label %45

; <label>:45                                      ; preds = %21, %22, %17, %16, %12, %11, %42, %41
  %.0 = phi i8* [ null, %41 ], [ %19, %42 ], [ null, %11 ], [ null, %12 ], [ null, %16 ], [ null, %17 ], [ null, %22 ], [ null, %21 ]
  ret i8* %.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @ferror(%struct.__sFILE* nocapture) #7

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @BZ2_bzWrite(i32* %bzerror, i8* %b, i8* %buf, i32 %len) #4 {
  %1 = icmp ne i32* %bzerror, null
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  store i32 0, i32* %bzerror, align 4, !tbaa !45
  br label %3

; <label>:3                                       ; preds = %2, %0
  %4 = icmp ne i8* %b, null
  br i1 %4, label %5, label %.thread

; <label>:5                                       ; preds = %3
  %6 = getelementptr inbounds i8* %b, i64 5096
  %7 = bitcast i8* %6 to i32*
  store i32 0, i32* %7, align 4, !tbaa !72
  %8 = icmp eq i8* %buf, null
  %9 = icmp slt i32 %len, 0
  %or.cond3 = or i1 %8, %9
  br i1 %or.cond3, label %.thread, label %15

.thread:                                          ; preds = %3, %5
  br i1 %1, label %10, label %11

; <label>:10                                      ; preds = %.thread
  store i32 -2, i32* %bzerror, align 4, !tbaa !45
  br label %11

; <label>:11                                      ; preds = %10, %.thread
  br i1 %4, label %12, label %75

; <label>:12                                      ; preds = %11
  %13 = getelementptr inbounds i8* %b, i64 5096
  %14 = bitcast i8* %13 to i32*
  store i32 -2, i32* %14, align 4, !tbaa !72
  br label %75

; <label>:15                                      ; preds = %5
  %16 = getelementptr inbounds i8* %b, i64 5012
  %17 = load i8* %16, align 1, !tbaa !77
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

; <label>:19                                      ; preds = %15
  br i1 %1, label %20, label %21

; <label>:20                                      ; preds = %19
  store i32 -1, i32* %bzerror, align 4, !tbaa !45
  br label %21

; <label>:21                                      ; preds = %19, %20
  store i32 -1, i32* %7, align 4, !tbaa !72
  br label %75

; <label>:22                                      ; preds = %15
  %23 = bitcast i8* %b to %struct.__sFILE**
  %24 = load %struct.__sFILE** %23, align 8, !tbaa !76
  %25 = tail call i32 @ferror(%struct.__sFILE* %24) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

; <label>:27                                      ; preds = %22
  br i1 %1, label %28, label %29

; <label>:28                                      ; preds = %27
  store i32 -6, i32* %bzerror, align 4, !tbaa !45
  br label %29

; <label>:29                                      ; preds = %27, %28
  store i32 -6, i32* %7, align 4, !tbaa !72
  br label %75

; <label>:30                                      ; preds = %22
  %31 = icmp eq i32 %len, 0
  br i1 %31, label %32, label %35

; <label>:32                                      ; preds = %30
  br i1 %1, label %33, label %34

; <label>:33                                      ; preds = %32
  store i32 0, i32* %bzerror, align 4, !tbaa !45
  br label %34

; <label>:34                                      ; preds = %32, %33
  store i32 0, i32* %7, align 4, !tbaa !72
  br label %75

; <label>:35                                      ; preds = %30
  %36 = getelementptr inbounds i8* %b, i64 5016
  %37 = bitcast i8* %36 to %struct.bz_stream*
  %38 = getelementptr inbounds i8* %b, i64 5024
  %39 = bitcast i8* %38 to i32*
  store i32 %len, i32* %39, align 4, !tbaa !78
  %40 = bitcast i8* %36 to i8**
  store i8* %buf, i8** %40, align 8, !tbaa !79
  %41 = getelementptr inbounds i8* %b, i64 5048
  %42 = bitcast i8* %41 to i32*
  %43 = getelementptr inbounds i8* %b, i64 8
  %44 = getelementptr inbounds i8* %b, i64 5040
  %45 = bitcast i8* %44 to i8**
  br label %46

; <label>:46                                      ; preds = %69, %35
  store i32 5000, i32* %42, align 4, !tbaa !80
  store i8* %43, i8** %45, align 8, !tbaa !81
  %47 = tail call i32 @BZ2_bzCompress(%struct.bz_stream* %37, i32 0) #12
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %52, label %49

; <label>:49                                      ; preds = %46
  br i1 %1, label %50, label %51

; <label>:50                                      ; preds = %49
  store i32 %47, i32* %bzerror, align 4, !tbaa !45
  br label %51

; <label>:51                                      ; preds = %49, %50
  store i32 %47, i32* %7, align 4, !tbaa !72
  br label %75

; <label>:52                                      ; preds = %46
  %53 = load i32* %42, align 4, !tbaa !80
  %54 = icmp ult i32 %53, 5000
  br i1 %54, label %55, label %69

; <label>:55                                      ; preds = %52
  %56 = sub i32 5000, %53
  %57 = sext i32 %56 to i64
  %58 = load %struct.__sFILE** %23, align 8, !tbaa !76
  %59 = tail call i64 @"\01_fwrite"(i8* %43, i64 1, i64 %57, %struct.__sFILE* %58) #10
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %56, %60
  br i1 %61, label %62, label %66

; <label>:62                                      ; preds = %55
  %63 = load %struct.__sFILE** %23, align 8, !tbaa !76
  %64 = tail call i32 @ferror(%struct.__sFILE* %63) #10
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

; <label>:66                                      ; preds = %62, %55
  br i1 %1, label %67, label %68

; <label>:67                                      ; preds = %66
  store i32 -6, i32* %bzerror, align 4, !tbaa !45
  br label %68

; <label>:68                                      ; preds = %66, %67
  store i32 -6, i32* %7, align 4, !tbaa !72
  br label %75

; <label>:69                                      ; preds = %62, %52
  %70 = load i32* %39, align 4, !tbaa !78
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %46

; <label>:72                                      ; preds = %69
  br i1 %1, label %73, label %74

; <label>:73                                      ; preds = %72
  store i32 0, i32* %bzerror, align 4, !tbaa !45
  br label %74

; <label>:74                                      ; preds = %72, %73
  store i32 0, i32* %7, align 4, !tbaa !72
  br label %75

; <label>:75                                      ; preds = %74, %68, %51, %34, %29, %21, %11, %12
  ret void
}

; Function Attrs: optsize
declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @BZ2_bzWriteClose(i32* %bzerror, i8* %b, i32 %abandon, i32* %nbytes_in, i32* %nbytes_out) #4 {
  tail call void @BZ2_bzWriteClose64(i32* %bzerror, i8* %b, i32 %abandon, i32* %nbytes_in, i32* null, i32* %nbytes_out, i32* null) #12
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @BZ2_bzWriteClose64(i32* %bzerror, i8* %b, i32 %abandon, i32* %nbytes_in_lo32, i32* %nbytes_in_hi32, i32* %nbytes_out_lo32, i32* %nbytes_out_hi32) #4 {
  %1 = icmp eq i8* %b, null
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = icmp eq i32* %bzerror, null
  br i1 %3, label %118, label %4

; <label>:4                                       ; preds = %2
  store i32 0, i32* %bzerror, align 4, !tbaa !45
  br label %118

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds i8* %b, i64 5012
  %7 = load i8* %6, align 1, !tbaa !77
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %5
  %10 = icmp eq i32* %bzerror, null
  br i1 %10, label %12, label %11

; <label>:11                                      ; preds = %9
  store i32 -1, i32* %bzerror, align 4, !tbaa !45
  br label %12

; <label>:12                                      ; preds = %11, %9
  %13 = getelementptr inbounds i8* %b, i64 5096
  %14 = bitcast i8* %13 to i32*
  store i32 -1, i32* %14, align 4, !tbaa !72
  br label %118

; <label>:15                                      ; preds = %5
  %16 = bitcast i8* %b to %struct.__sFILE**
  %17 = load %struct.__sFILE** %16, align 8, !tbaa !76
  %18 = tail call i32 @ferror(%struct.__sFILE* %17) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

; <label>:20                                      ; preds = %15
  %21 = icmp eq i32* %bzerror, null
  br i1 %21, label %23, label %22

; <label>:22                                      ; preds = %20
  store i32 -6, i32* %bzerror, align 4, !tbaa !45
  br label %23

; <label>:23                                      ; preds = %22, %20
  %24 = getelementptr inbounds i8* %b, i64 5096
  %25 = bitcast i8* %24 to i32*
  store i32 -6, i32* %25, align 4, !tbaa !72
  br label %118

; <label>:26                                      ; preds = %15
  %27 = icmp ne i32* %nbytes_in_lo32, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %26
  store i32 0, i32* %nbytes_in_lo32, align 4, !tbaa !45
  br label %29

; <label>:29                                      ; preds = %28, %26
  %30 = icmp ne i32* %nbytes_in_hi32, null
  br i1 %30, label %31, label %32

; <label>:31                                      ; preds = %29
  store i32 0, i32* %nbytes_in_hi32, align 4, !tbaa !45
  br label %32

; <label>:32                                      ; preds = %31, %29
  %33 = icmp ne i32* %nbytes_out_lo32, null
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %32
  store i32 0, i32* %nbytes_out_lo32, align 4, !tbaa !45
  br label %35

; <label>:35                                      ; preds = %34, %32
  %36 = icmp ne i32* %nbytes_out_hi32, null
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %35
  store i32 0, i32* %nbytes_out_hi32, align 4, !tbaa !45
  br label %38

; <label>:38                                      ; preds = %37, %35
  %39 = icmp eq i32 %abandon, 0
  br i1 %39, label %40, label %.critedge

; <label>:40                                      ; preds = %38
  %41 = getelementptr inbounds i8* %b, i64 5096
  %42 = bitcast i8* %41 to i32*
  %43 = load i32* %42, align 4, !tbaa !72
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %.preheader, label %.thread

.preheader:                                       ; preds = %40
  %45 = getelementptr inbounds i8* %b, i64 5016
  %46 = bitcast i8* %45 to %struct.bz_stream*
  %47 = getelementptr inbounds i8* %b, i64 5048
  %48 = bitcast i8* %47 to i32*
  %49 = getelementptr inbounds i8* %b, i64 8
  %50 = getelementptr inbounds i8* %b, i64 5040
  %51 = bitcast i8* %50 to i8**
  br label %52

; <label>:52                                      ; preds = %.preheader, %76
  store i32 5000, i32* %48, align 4, !tbaa !80
  store i8* %49, i8** %51, align 8, !tbaa !81
  %53 = tail call i32 @BZ2_bzCompress(%struct.bz_stream* %46, i32 2) #12
  %.off = add i32 %53, -3
  %.cmp = icmp ugt i32 %.off, 1
  br i1 %.cmp, label %54, label %58

; <label>:54                                      ; preds = %52
  %55 = icmp eq i32* %bzerror, null
  br i1 %55, label %57, label %56

; <label>:56                                      ; preds = %54
  store i32 %53, i32* %bzerror, align 4, !tbaa !45
  br label %57

; <label>:57                                      ; preds = %56, %54
  store i32 %53, i32* %42, align 4, !tbaa !72
  br label %118

; <label>:58                                      ; preds = %52
  %59 = load i32* %48, align 4, !tbaa !80
  %60 = icmp ult i32 %59, 5000
  br i1 %60, label %61, label %76

; <label>:61                                      ; preds = %58
  %62 = sub i32 5000, %59
  %63 = sext i32 %62 to i64
  %64 = load %struct.__sFILE** %16, align 8, !tbaa !76
  %65 = tail call i64 @"\01_fwrite"(i8* %49, i64 1, i64 %63, %struct.__sFILE* %64) #10
  %66 = trunc i64 %65 to i32
  %67 = icmp eq i32 %62, %66
  br i1 %67, label %68, label %72

; <label>:68                                      ; preds = %61
  %69 = load %struct.__sFILE** %16, align 8, !tbaa !76
  %70 = tail call i32 @ferror(%struct.__sFILE* %69) #10
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

; <label>:72                                      ; preds = %68, %61
  %73 = icmp eq i32* %bzerror, null
  br i1 %73, label %75, label %74

; <label>:74                                      ; preds = %72
  store i32 -6, i32* %bzerror, align 4, !tbaa !45
  br label %75

; <label>:75                                      ; preds = %74, %72
  store i32 -6, i32* %42, align 4, !tbaa !72
  br label %118

; <label>:76                                      ; preds = %68, %58
  %77 = icmp eq i32 %53, 4
  br i1 %77, label %..thread_crit_edge, label %52

..thread_crit_edge:                               ; preds = %76
  %.pre = load %struct.__sFILE** %16, align 8, !tbaa !76
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %40
  %78 = phi %struct.__sFILE* [ %.pre, %..thread_crit_edge ], [ %17, %40 ]
  %79 = tail call i32 @ferror(%struct.__sFILE* %78) #10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %.critedge

; <label>:81                                      ; preds = %.thread
  %82 = tail call i32 @fflush(%struct.__sFILE* %78) #10
  %83 = load %struct.__sFILE** %16, align 8, !tbaa !76
  %84 = tail call i32 @ferror(%struct.__sFILE* %83) #10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %.critedge, label %86

; <label>:86                                      ; preds = %81
  %87 = icmp eq i32* %bzerror, null
  br i1 %87, label %89, label %88

; <label>:88                                      ; preds = %86
  store i32 -6, i32* %bzerror, align 4, !tbaa !45
  br label %89

; <label>:89                                      ; preds = %88, %86
  store i32 -6, i32* %42, align 4, !tbaa !72
  br label %118

.critedge:                                        ; preds = %38, %81, %.thread
  br i1 %27, label %90, label %94

; <label>:90                                      ; preds = %.critedge
  %91 = getelementptr inbounds i8* %b, i64 5028
  %92 = bitcast i8* %91 to i32*
  %93 = load i32* %92, align 4, !tbaa !82
  store i32 %93, i32* %nbytes_in_lo32, align 4, !tbaa !45
  br label %94

; <label>:94                                      ; preds = %90, %.critedge
  br i1 %30, label %95, label %99

; <label>:95                                      ; preds = %94
  %96 = getelementptr inbounds i8* %b, i64 5032
  %97 = bitcast i8* %96 to i32*
  %98 = load i32* %97, align 4, !tbaa !83
  store i32 %98, i32* %nbytes_in_hi32, align 4, !tbaa !45
  br label %99

; <label>:99                                      ; preds = %95, %94
  br i1 %33, label %100, label %104

; <label>:100                                     ; preds = %99
  %101 = getelementptr inbounds i8* %b, i64 5052
  %102 = bitcast i8* %101 to i32*
  %103 = load i32* %102, align 4, !tbaa !84
  store i32 %103, i32* %nbytes_out_lo32, align 4, !tbaa !45
  br label %104

; <label>:104                                     ; preds = %100, %99
  br i1 %36, label %105, label %109

; <label>:105                                     ; preds = %104
  %106 = getelementptr inbounds i8* %b, i64 5056
  %107 = bitcast i8* %106 to i32*
  %108 = load i32* %107, align 4, !tbaa !85
  store i32 %108, i32* %nbytes_out_hi32, align 4, !tbaa !45
  br label %109

; <label>:109                                     ; preds = %105, %104
  %110 = icmp eq i32* %bzerror, null
  br i1 %110, label %112, label %111

; <label>:111                                     ; preds = %109
  store i32 0, i32* %bzerror, align 4, !tbaa !45
  br label %112

; <label>:112                                     ; preds = %109, %111
  %113 = getelementptr inbounds i8* %b, i64 5096
  %114 = bitcast i8* %113 to i32*
  store i32 0, i32* %114, align 4, !tbaa !72
  %115 = getelementptr inbounds i8* %b, i64 5016
  %116 = bitcast i8* %115 to %struct.bz_stream*
  %117 = tail call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %116) #12
  tail call void @free(i8* %b) #12
  br label %118

; <label>:118                                     ; preds = %4, %2, %89, %75, %57, %23, %12, %112
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define i8* @BZ2_bzReadOpen(i32* %bzerror, %struct.__sFILE* %f, i32 %verbosity, i32 %small, i8* readonly %unused, i32 %nUnused) #4 {
  %1 = icmp ne i32* %bzerror, null
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  store i32 0, i32* %bzerror, align 4, !tbaa !45
  br label %3

; <label>:3                                       ; preds = %0, %2
  %4 = icmp eq %struct.__sFILE* %f, null
  br i1 %4, label %14, label %5

; <label>:5                                       ; preds = %3
  %small.cmp = icmp ugt i32 %small, 1
  %6 = icmp ugt i32 %verbosity, 4
  %7 = or i1 %6, %small.cmp
  br i1 %7, label %14, label %8

; <label>:8                                       ; preds = %5
  %9 = icmp eq i8* %unused, null
  %10 = icmp ne i32 %nUnused, 0
  %or.cond7 = and i1 %9, %10
  br i1 %or.cond7, label %14, label %11

; <label>:11                                      ; preds = %8
  %12 = icmp ne i8* %unused, null
  %13 = icmp ugt i32 %nUnused, 5000
  %or.cond = and i1 %12, %13
  br i1 %or.cond, label %14, label %16

; <label>:14                                      ; preds = %11, %8, %5, %3
  br i1 %1, label %15, label %60

; <label>:15                                      ; preds = %14
  store i32 -2, i32* %bzerror, align 4, !tbaa !45
  br label %60

; <label>:16                                      ; preds = %11
  %17 = tail call i32 @ferror(%struct.__sFILE* %f) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

; <label>:19                                      ; preds = %16
  br i1 %1, label %20, label %60

; <label>:20                                      ; preds = %19
  store i32 -6, i32* %bzerror, align 4, !tbaa !45
  br label %60

; <label>:21                                      ; preds = %16
  %22 = tail call i8* @malloc(i64 5104) #10
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

; <label>:24                                      ; preds = %21
  br i1 %1, label %25, label %60

; <label>:25                                      ; preds = %24
  store i32 -3, i32* %bzerror, align 4, !tbaa !45
  br label %60

; <label>:26                                      ; preds = %21
  br i1 %1, label %27, label %28

; <label>:27                                      ; preds = %26
  store i32 0, i32* %bzerror, align 4, !tbaa !45
  br label %28

; <label>:28                                      ; preds = %27, %26
  %29 = getelementptr inbounds i8* %22, i64 5096
  %30 = bitcast i8* %29 to i32*
  store i32 0, i32* %30, align 4, !tbaa !72
  %31 = getelementptr inbounds i8* %22, i64 5100
  store i8 0, i8* %31, align 1, !tbaa !74
  %32 = bitcast i8* %22 to %struct.__sFILE**
  store %struct.__sFILE* %f, %struct.__sFILE** %32, align 8, !tbaa !76
  %33 = getelementptr inbounds i8* %22, i64 5008
  %34 = bitcast i8* %33 to i32*
  store i32 0, i32* %34, align 4, !tbaa !75
  %35 = getelementptr inbounds i8* %22, i64 5012
  store i8 0, i8* %35, align 1, !tbaa !77
  %36 = getelementptr inbounds i8* %22, i64 5016
  %37 = bitcast i8* %36 to %struct.bz_stream*
  %38 = getelementptr inbounds i8* %22, i64 5072
  %39 = icmp sgt i32 %nUnused, 0
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 24, i32 8, i1 false)
  br i1 %39, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %28, %.lr.ph
  %40 = phi i32 [ %45, %.lr.ph ], [ 0, %28 ]
  %.01013 = phi i32 [ %47, %.lr.ph ], [ %nUnused, %28 ]
  %.01112 = phi i8* [ %46, %.lr.ph ], [ %unused, %28 ]
  %41 = load i8* %.01112, align 1, !tbaa !42
  %42 = sext i32 %40 to i64
  %.sum = add nsw i64 %42, 8
  %43 = getelementptr inbounds i8* %22, i64 %.sum
  store i8 %41, i8* %43, align 1, !tbaa !42
  %44 = load i32* %34, align 4, !tbaa !75
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %34, align 4, !tbaa !75
  %46 = getelementptr inbounds i8* %.01112, i64 1
  %47 = add nsw i32 %.01013, -1
  %48 = icmp sgt i32 %.01013, 1
  br i1 %48, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %28
  %49 = tail call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %37, i32 %verbosity, i32 %small) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

; <label>:51                                      ; preds = %._crit_edge
  br i1 %1, label %52, label %53

; <label>:52                                      ; preds = %51
  store i32 %49, i32* %bzerror, align 4, !tbaa !45
  br label %53

; <label>:53                                      ; preds = %52, %51
  tail call void @free(i8* %22) #12
  br label %60

; <label>:54                                      ; preds = %._crit_edge
  %55 = load i32* %34, align 4, !tbaa !75
  %56 = getelementptr inbounds i8* %22, i64 5024
  %57 = bitcast i8* %56 to i32*
  store i32 %55, i32* %57, align 4, !tbaa !78
  %58 = getelementptr inbounds i8* %22, i64 8
  %59 = bitcast i8* %36 to i8**
  store i8* %58, i8** %59, align 8, !tbaa !79
  store i8 1, i8* %31, align 1, !tbaa !74
  br label %60

; <label>:60                                      ; preds = %24, %25, %20, %19, %15, %14, %54, %53
  %.0 = phi i8* [ null, %53 ], [ %22, %54 ], [ null, %14 ], [ null, %15 ], [ null, %19 ], [ null, %20 ], [ null, %25 ], [ null, %24 ]
  ret i8* %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @BZ2_bzReadClose(i32* %bzerror, i8* %b) #4 {
  %1 = icmp ne i32* %bzerror, null
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  store i32 0, i32* %bzerror, align 4, !tbaa !45
  br label %3

; <label>:3                                       ; preds = %2, %0
  %4 = icmp eq i8* %b, null
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %3
  br i1 %1, label %6, label %25

; <label>:6                                       ; preds = %5
  store i32 0, i32* %bzerror, align 4, !tbaa !45
  br label %25

; <label>:7                                       ; preds = %3
  %8 = getelementptr inbounds i8* %b, i64 5096
  %9 = bitcast i8* %8 to i32*
  store i32 0, i32* %9, align 4, !tbaa !72
  %10 = getelementptr inbounds i8* %b, i64 5012
  %11 = load i8* %10, align 1, !tbaa !77
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

; <label>:13                                      ; preds = %7
  br i1 %1, label %14, label %15

; <label>:14                                      ; preds = %13
  store i32 -1, i32* %bzerror, align 4, !tbaa !45
  br label %15

; <label>:15                                      ; preds = %13, %14
  store i32 -1, i32* %9, align 4, !tbaa !72
  br label %25

; <label>:16                                      ; preds = %7
  %17 = getelementptr inbounds i8* %b, i64 5100
  %18 = load i8* %17, align 1, !tbaa !74
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

; <label>:20                                      ; preds = %16
  %21 = getelementptr inbounds i8* %b, i64 5016
  %22 = bitcast i8* %21 to %struct.bz_stream*
  %23 = tail call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %22) #12
  br label %24

; <label>:24                                      ; preds = %16, %20
  tail call void @free(i8* %b) #12
  br label %25

; <label>:25                                      ; preds = %5, %6, %15, %24
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BZ2_bzRead(i32* %bzerror, i8* %b, i8* %buf, i32 %len) #4 {
  %1 = icmp ne i32* %bzerror, null
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  store i32 0, i32* %bzerror, align 4, !tbaa !45
  br label %3

; <label>:3                                       ; preds = %2, %0
  %4 = icmp ne i8* %b, null
  br i1 %4, label %5, label %.thread

; <label>:5                                       ; preds = %3
  %6 = getelementptr inbounds i8* %b, i64 5096
  %7 = bitcast i8* %6 to i32*
  store i32 0, i32* %7, align 4, !tbaa !72
  %8 = icmp eq i8* %buf, null
  %9 = icmp slt i32 %len, 0
  %or.cond3 = or i1 %8, %9
  br i1 %or.cond3, label %.thread, label %15

.thread:                                          ; preds = %3, %5
  br i1 %1, label %10, label %11

; <label>:10                                      ; preds = %.thread
  store i32 -2, i32* %bzerror, align 4, !tbaa !45
  br label %11

; <label>:11                                      ; preds = %10, %.thread
  br i1 %4, label %12, label %92

; <label>:12                                      ; preds = %11
  %13 = getelementptr inbounds i8* %b, i64 5096
  %14 = bitcast i8* %13 to i32*
  store i32 -2, i32* %14, align 4, !tbaa !72
  br label %92

; <label>:15                                      ; preds = %5
  %16 = getelementptr inbounds i8* %b, i64 5012
  %17 = load i8* %16, align 1, !tbaa !77
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

; <label>:19                                      ; preds = %15
  br i1 %1, label %20, label %21

; <label>:20                                      ; preds = %19
  store i32 -1, i32* %bzerror, align 4, !tbaa !45
  br label %21

; <label>:21                                      ; preds = %19, %20
  store i32 -1, i32* %7, align 4, !tbaa !72
  br label %92

; <label>:22                                      ; preds = %15
  %23 = icmp eq i32 %len, 0
  br i1 %23, label %24, label %27

; <label>:24                                      ; preds = %22
  br i1 %1, label %25, label %26

; <label>:25                                      ; preds = %24
  store i32 0, i32* %bzerror, align 4, !tbaa !45
  br label %26

; <label>:26                                      ; preds = %24, %25
  store i32 0, i32* %7, align 4, !tbaa !72
  br label %92

; <label>:27                                      ; preds = %22
  %28 = getelementptr inbounds i8* %b, i64 5016
  %29 = bitcast i8* %28 to %struct.bz_stream*
  %30 = getelementptr inbounds i8* %b, i64 5048
  %31 = bitcast i8* %30 to i32*
  store i32 %len, i32* %31, align 4, !tbaa !80
  %32 = getelementptr inbounds i8* %b, i64 5040
  %33 = bitcast i8* %32 to i8**
  store i8* %buf, i8** %33, align 8, !tbaa !81
  %34 = bitcast i8* %b to %struct.__sFILE**
  %35 = getelementptr inbounds i8* %b, i64 5024
  %36 = bitcast i8* %35 to i32*
  %37 = getelementptr inbounds i8* %b, i64 8
  %38 = getelementptr inbounds i8* %b, i64 5008
  %39 = bitcast i8* %38 to i32*
  %40 = bitcast i8* %28 to i8**
  br label %41

; <label>:41                                      ; preds = %88, %27
  %42 = load %struct.__sFILE** %34, align 8, !tbaa !76
  %43 = tail call i32 @ferror(%struct.__sFILE* %42) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

; <label>:45                                      ; preds = %41
  br i1 %1, label %46, label %47

; <label>:46                                      ; preds = %45
  store i32 -6, i32* %bzerror, align 4, !tbaa !45
  br label %47

; <label>:47                                      ; preds = %45, %46
  store i32 -6, i32* %7, align 4, !tbaa !72
  br label %92

; <label>:48                                      ; preds = %41
  %49 = load i32* %36, align 4, !tbaa !78
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %65

; <label>:51                                      ; preds = %48
  %52 = tail call fastcc zeroext i8 @myfeof(%struct.__sFILE* %42) #12
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %65

; <label>:54                                      ; preds = %51
  %55 = load %struct.__sFILE** %34, align 8, !tbaa !76
  %56 = tail call i64 @fread(i8* %37, i64 1, i64 5000, %struct.__sFILE* %55) #10
  %57 = trunc i64 %56 to i32
  %58 = load %struct.__sFILE** %34, align 8, !tbaa !76
  %59 = tail call i32 @ferror(%struct.__sFILE* %58) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

; <label>:61                                      ; preds = %54
  br i1 %1, label %62, label %63

; <label>:62                                      ; preds = %61
  store i32 -6, i32* %bzerror, align 4, !tbaa !45
  br label %63

; <label>:63                                      ; preds = %61, %62
  store i32 -6, i32* %7, align 4, !tbaa !72
  br label %92

; <label>:64                                      ; preds = %54
  store i32 %57, i32* %39, align 4, !tbaa !75
  store i32 %57, i32* %36, align 4, !tbaa !78
  store i8* %37, i8** %40, align 8, !tbaa !79
  br label %65

; <label>:65                                      ; preds = %51, %64, %48
  %66 = tail call i32 @BZ2_bzDecompress(%struct.bz_stream* %29) #12
  switch i32 %66, label %67 [
    i32 0, label %70
    i32 4, label %83
  ]

; <label>:67                                      ; preds = %65
  br i1 %1, label %68, label %69

; <label>:68                                      ; preds = %67
  store i32 %66, i32* %bzerror, align 4, !tbaa !45
  br label %69

; <label>:69                                      ; preds = %67, %68
  store i32 %66, i32* %7, align 4, !tbaa !72
  br label %92

; <label>:70                                      ; preds = %65
  %71 = load %struct.__sFILE** %34, align 8, !tbaa !76
  %72 = tail call fastcc zeroext i8 @myfeof(%struct.__sFILE* %71) #12
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %88, label %74

; <label>:74                                      ; preds = %70
  %75 = load i32* %36, align 4, !tbaa !78
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %88

; <label>:77                                      ; preds = %74
  %78 = load i32* %31, align 4, !tbaa !80
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %.thread8, label %80

; <label>:80                                      ; preds = %77
  br i1 %1, label %81, label %82

; <label>:81                                      ; preds = %80
  store i32 -7, i32* %bzerror, align 4, !tbaa !45
  br label %82

; <label>:82                                      ; preds = %80, %81
  store i32 -7, i32* %7, align 4, !tbaa !72
  br label %92

; <label>:83                                      ; preds = %65
  br i1 %1, label %84, label %85

; <label>:84                                      ; preds = %83
  store i32 4, i32* %bzerror, align 4, !tbaa !45
  br label %85

; <label>:85                                      ; preds = %84, %83
  store i32 4, i32* %7, align 4, !tbaa !72
  %86 = load i32* %31, align 4, !tbaa !80
  %87 = sub i32 %len, %86
  br label %92

; <label>:88                                      ; preds = %74, %70
  %.pr = load i32* %31, align 4, !tbaa !80
  %89 = icmp eq i32 %.pr, 0
  br i1 %89, label %.thread8, label %41

.thread8:                                         ; preds = %88, %77
  br i1 %1, label %90, label %91

; <label>:90                                      ; preds = %.thread8
  store i32 0, i32* %bzerror, align 4, !tbaa !45
  br label %91

; <label>:91                                      ; preds = %.thread8, %90
  store i32 0, i32* %7, align 4, !tbaa !72
  br label %92

; <label>:92                                      ; preds = %91, %82, %69, %63, %47, %26, %21, %11, %12, %85
  %.0 = phi i32 [ %87, %85 ], [ 0, %12 ], [ 0, %11 ], [ 0, %21 ], [ 0, %26 ], [ 0, %47 ], [ 0, %63 ], [ 0, %69 ], [ 0, %82 ], [ %len, %91 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc zeroext i8 @myfeof(%struct.__sFILE* nocapture %f) #4 {
  %1 = tail call i32 @fgetc(%struct.__sFILE* %f) #10
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %5, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @ungetc(i32 %1, %struct.__sFILE* %f) #10
  br label %5

; <label>:5                                       ; preds = %0, %3
  %.0 = phi i8 [ 0, %3 ], [ 1, %0 ]
  ret i8 %.0
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @BZ2_bzReadGetUnused(i32* %bzerror, i8* %b, i8** %unused, i32* %nUnused) #4 {
  %1 = icmp eq i8* %b, null
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = icmp eq i32* %bzerror, null
  br i1 %3, label %31, label %4

; <label>:4                                       ; preds = %2
  store i32 -2, i32* %bzerror, align 4, !tbaa !45
  br label %31

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds i8* %b, i64 5096
  %7 = bitcast i8* %6 to i32*
  %8 = load i32* %7, align 4, !tbaa !72
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %14, label %10

; <label>:10                                      ; preds = %5
  %11 = icmp eq i32* %bzerror, null
  br i1 %11, label %13, label %12

; <label>:12                                      ; preds = %10
  store i32 -1, i32* %bzerror, align 4, !tbaa !45
  br label %13

; <label>:13                                      ; preds = %12, %10
  store i32 -1, i32* %7, align 4, !tbaa !72
  br label %31

; <label>:14                                      ; preds = %5
  %15 = icmp eq i8** %unused, null
  %16 = icmp eq i32* %nUnused, null
  %or.cond = or i1 %15, %16
  %17 = icmp ne i32* %bzerror, null
  br i1 %or.cond, label %18, label %21

; <label>:18                                      ; preds = %14
  br i1 %17, label %19, label %20

; <label>:19                                      ; preds = %18
  store i32 -2, i32* %bzerror, align 4, !tbaa !45
  br label %20

; <label>:20                                      ; preds = %18, %19
  store i32 -2, i32* %7, align 4, !tbaa !72
  br label %31

; <label>:21                                      ; preds = %14
  br i1 %17, label %22, label %23

; <label>:22                                      ; preds = %21
  store i32 0, i32* %bzerror, align 4, !tbaa !45
  br label %23

; <label>:23                                      ; preds = %22, %21
  store i32 0, i32* %7, align 4, !tbaa !72
  %24 = getelementptr inbounds i8* %b, i64 5016
  %25 = getelementptr inbounds i8* %b, i64 5024
  %26 = bitcast i8* %25 to i32*
  %27 = load i32* %26, align 4, !tbaa !78
  store i32 %27, i32* %nUnused, align 4, !tbaa !45
  %28 = bitcast i8* %24 to i64*
  %29 = load i64* %28, align 8, !tbaa !79
  %30 = bitcast i8** %unused to i64*
  store i64 %29, i64* %30, align 8, !tbaa !2
  br label %31

; <label>:31                                      ; preds = %4, %2, %20, %13, %23
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BZ2_bzBuffToBuffCompress(i8* %dest, i32* %destLen, i8* %source, i32 %sourceLen, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #4 {
  %strm = alloca %struct.bz_stream, align 8
  %1 = bitcast %struct.bz_stream* %strm to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1) #8
  %2 = icmp eq i8* %dest, null
  %3 = icmp eq i32* %destLen, null
  %or.cond = or i1 %2, %3
  %4 = icmp eq i8* %source, null
  %or.cond3 = or i1 %or.cond, %4
  %blockSize100k.off = add i32 %blockSize100k, -1
  %5 = icmp ugt i32 %blockSize100k.off, 8
  %6 = or i1 %or.cond3, %5
  %7 = icmp ugt i32 %verbosity, 4
  %8 = or i1 %7, %6
  %9 = icmp ugt i32 %workFactor, 250
  %10 = or i1 %9, %8
  br i1 %10, label %33, label %11

; <label>:11                                      ; preds = %0
  %12 = icmp eq i32 %workFactor, 0
  %.workFactor = select i1 %12, i32 30, i32 %workFactor
  %13 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 9
  %14 = bitcast i8* (i8*, i32, i32)** %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 24, i32 8, i1 false)
  %15 = call i32 @BZ2_bzCompressInit(%struct.bz_stream* %strm, i32 %blockSize100k, i32 %verbosity, i32 %.workFactor) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %33

; <label>:17                                      ; preds = %11
  %18 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 0
  store i8* %source, i8** %18, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 4
  store i8* %dest, i8** %19, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 1
  store i32 %sourceLen, i32* %20, align 8, !tbaa !40
  %21 = load i32* %destLen, align 4, !tbaa !45
  %22 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 5
  store i32 %21, i32* %22, align 8, !tbaa !41
  %23 = call i32 @BZ2_bzCompress(%struct.bz_stream* %strm, i32 2) #12
  switch i32 %23, label %31 [
    i32 3, label %29
    i32 4, label %24
  ]

; <label>:24                                      ; preds = %17
  %25 = load i32* %22, align 8, !tbaa !41
  %26 = load i32* %destLen, align 4, !tbaa !45
  %27 = sub i32 %26, %25
  store i32 %27, i32* %destLen, align 4, !tbaa !45
  %28 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm) #12
  br label %33

; <label>:29                                      ; preds = %17
  %30 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm) #12
  br label %33

; <label>:31                                      ; preds = %17
  %32 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm) #12
  br label %33

; <label>:33                                      ; preds = %11, %0, %31, %29, %24
  %.016 = phi i32 [ -8, %29 ], [ %23, %31 ], [ 0, %24 ], [ -2, %0 ], [ %15, %11 ]
  call void @llvm.lifetime.end(i64 80, i8* %1) #8
  ret i32 %.016
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BZ2_bzBuffToBuffDecompress(i8* %dest, i32* %destLen, i8* %source, i32 %sourceLen, i32 %small, i32 %verbosity) #4 {
  %strm = alloca %struct.bz_stream, align 8
  %1 = bitcast %struct.bz_stream* %strm to i8*
  call void @llvm.lifetime.start(i64 80, i8* %1) #8
  %2 = icmp eq i8* %dest, null
  %3 = icmp eq i32* %destLen, null
  %or.cond = or i1 %2, %3
  %4 = icmp eq i8* %source, null
  %or.cond3 = or i1 %or.cond, %4
  br i1 %or.cond3, label %31, label %5

; <label>:5                                       ; preds = %0
  %small.cmp = icmp ugt i32 %small, 1
  %6 = icmp ugt i32 %verbosity, 4
  %7 = or i1 %small.cmp, %6
  br i1 %7, label %31, label %8

; <label>:8                                       ; preds = %5
  %9 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 9
  %10 = bitcast i8* (i8*, i32, i32)** %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 24, i32 8, i1 false)
  %11 = call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %strm, i32 %verbosity, i32 %small) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

; <label>:13                                      ; preds = %8
  %14 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 0
  store i8* %source, i8** %14, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 4
  store i8* %dest, i8** %15, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 1
  store i32 %sourceLen, i32* %16, align 8, !tbaa !40
  %17 = load i32* %destLen, align 4, !tbaa !45
  %18 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 5
  store i32 %17, i32* %18, align 8, !tbaa !41
  %19 = call i32 @BZ2_bzDecompress(%struct.bz_stream* %strm) #12
  switch i32 %19, label %29 [
    i32 0, label %25
    i32 4, label %20
  ]

; <label>:20                                      ; preds = %13
  %21 = load i32* %18, align 8, !tbaa !41
  %22 = load i32* %destLen, align 4, !tbaa !45
  %23 = sub i32 %22, %21
  store i32 %23, i32* %destLen, align 4, !tbaa !45
  %24 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm) #12
  br label %31

; <label>:25                                      ; preds = %13
  %26 = load i32* %18, align 8, !tbaa !41
  %27 = icmp eq i32 %26, 0
  %28 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm) #12
  %. = select i1 %27, i32 -8, i32 -7
  br label %31

; <label>:29                                      ; preds = %13
  %30 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm) #12
  br label %31

; <label>:31                                      ; preds = %25, %8, %0, %5, %29, %20
  %.0 = phi i32 [ %19, %29 ], [ 0, %20 ], [ -2, %5 ], [ -2, %0 ], [ %11, %8 ], [ %., %25 ]
  call void @llvm.lifetime.end(i64 80, i8* %1) #8
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @BZ2_bzopen(i8* %path, i8* readonly %mode) #4 {
  %1 = tail call fastcc i8* @bzopen_or_bzdopen(i8* %path, i32 -1, i8* %mode, i32 0) #12
  ret i8* %1
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i8* @bzopen_or_bzdopen(i8* %path, i32 %fd, i8* readonly %mode, i32 %open_mode) #4 {
  %bzerr = alloca i32, align 4
  %unused = alloca [5000 x i8], align 16
  %mode2 = alloca [10 x i8], align 1
  %1 = getelementptr inbounds [5000 x i8]* %unused, i64 0, i64 0
  call void @llvm.lifetime.start(i64 5000, i8* %1) #8
  %2 = getelementptr inbounds [10 x i8]* %mode2, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 10, i32 1, i1 false)
  %3 = icmp eq i8* %mode, null
  br i1 %3, label %50, label %.preheader

.preheader:                                       ; preds = %0
  %4 = load i8* %mode, align 1, !tbaa !42
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %11
  %6 = phi i8 [ %13, %11 ], [ %4, %.preheader ]
  %smallMode.06 = phi i32 [ %smallMode.1, %11 ], [ 0, %.preheader ]
  %.015 = phi i8* [ %12, %11 ], [ %mode, %.preheader ]
  %blockSize100k.04 = phi i32 [ %blockSize100k.1, %11 ], [ 9, %.preheader ]
  %writing.03 = phi i32 [ %writing.1, %11 ], [ 0, %.preheader ]
  %7 = sext i8 %6 to i32
  switch i32 %7, label %10 [
    i32 114, label %11
    i32 119, label %8
    i32 115, label %9
  ]

; <label>:8                                       ; preds = %.lr.ph
  br label %11

; <label>:9                                       ; preds = %.lr.ph
  br label %11

; <label>:10                                      ; preds = %.lr.ph
  %isdigittmp = add nsw i32 %7, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %isdigittmp.blockSize100k.0 = select i1 %isdigit, i32 %isdigittmp, i32 %blockSize100k.04
  br label %11

; <label>:11                                      ; preds = %10, %.lr.ph, %9, %8
  %writing.1 = phi i32 [ %writing.03, %9 ], [ 1, %8 ], [ 0, %.lr.ph ], [ %writing.03, %10 ]
  %blockSize100k.1 = phi i32 [ %blockSize100k.04, %9 ], [ %blockSize100k.04, %8 ], [ %blockSize100k.04, %.lr.ph ], [ %isdigittmp.blockSize100k.0, %10 ]
  %smallMode.1 = phi i32 [ 1, %9 ], [ %smallMode.06, %8 ], [ %smallMode.06, %.lr.ph ], [ %smallMode.06, %10 ]
  %12 = getelementptr inbounds i8* %.015, i64 1
  %13 = load i8* %12, align 1, !tbaa !42
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %11, %.preheader
  %smallMode.0.lcssa = phi i32 [ 0, %.preheader ], [ %smallMode.1, %11 ]
  %blockSize100k.0.lcssa = phi i32 [ 9, %.preheader ], [ %blockSize100k.1, %11 ]
  %writing.0.lcssa = phi i32 [ 0, %.preheader ], [ %writing.1, %11 ]
  %15 = icmp ne i32 %writing.0.lcssa, 0
  %16 = select i1 %15, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0)
  %17 = call i8* @__strcat_chk(i8* %2, i8* %16, i64 10) #10
  %18 = call i8* @__strcat_chk(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i64 10) #10
  %19 = icmp eq i32 %open_mode, 0
  br i1 %19, label %20, label %30

; <label>:20                                      ; preds = %._crit_edge
  %21 = icmp eq i8* %path, null
  br i1 %21, label %24, label %22

; <label>:22                                      ; preds = %20
  %strcmpload = load i8* %path, align 1
  %23 = icmp eq i8 %strcmpload, 0
  br i1 %23, label %24, label %28

; <label>:24                                      ; preds = %22, %20
  %25 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %26 = load %struct.__sFILE** @__stdinp, align 8, !tbaa !2
  %27 = select i1 %15, %struct.__sFILE* %25, %struct.__sFILE* %26
  br label %32

; <label>:28                                      ; preds = %22
  %29 = call %struct.__sFILE* @"\01_fopen"(i8* %path, i8* %2) #10
  br label %32

; <label>:30                                      ; preds = %._crit_edge
  %31 = call %struct.__sFILE* @"\01_fdopen"(i32 %fd, i8* %2) #10
  br label %32

; <label>:32                                      ; preds = %24, %28, %30
  %fp.0 = phi %struct.__sFILE* [ %27, %24 ], [ %29, %28 ], [ %31, %30 ]
  %33 = icmp eq %struct.__sFILE* %fp.0, null
  br i1 %33, label %50, label %34

; <label>:34                                      ; preds = %32
  br i1 %15, label %35, label %39

; <label>:35                                      ; preds = %34
  %36 = icmp slt i32 %blockSize100k.0.lcssa, 1
  %.blockSize100k.0 = select i1 %36, i32 1, i32 %blockSize100k.0.lcssa
  %37 = icmp sgt i32 %.blockSize100k.0, 9
  %blockSize100k.3 = select i1 %37, i32 9, i32 %.blockSize100k.0
  %38 = call i8* @BZ2_bzWriteOpen(i32* %bzerr, %struct.__sFILE* %fp.0, i32 %blockSize100k.3, i32 0, i32 30) #12
  br label %41

; <label>:39                                      ; preds = %34
  %40 = call i8* @BZ2_bzReadOpen(i32* %bzerr, %struct.__sFILE* %fp.0, i32 0, i32 %smallMode.0.lcssa, i8* %1, i32 0) #12
  br label %41

; <label>:41                                      ; preds = %39, %35
  %bzfp.0 = phi i8* [ %38, %35 ], [ %40, %39 ]
  %42 = icmp eq i8* %bzfp.0, null
  br i1 %42, label %43, label %50

; <label>:43                                      ; preds = %41
  %44 = load %struct.__sFILE** @__stdinp, align 8, !tbaa !2
  %45 = icmp eq %struct.__sFILE* %fp.0, %44
  %46 = load %struct.__sFILE** @__stdoutp, align 8
  %47 = icmp eq %struct.__sFILE* %fp.0, %46
  %or.cond = or i1 %45, %47
  br i1 %or.cond, label %50, label %48

; <label>:48                                      ; preds = %43
  %49 = call i32 @fclose(%struct.__sFILE* %fp.0) #10
  br label %50

; <label>:50                                      ; preds = %41, %48, %43, %32, %0
  %.0 = phi i8* [ null, %0 ], [ null, %32 ], [ null, %43 ], [ null, %48 ], [ %bzfp.0, %41 ]
  call void @llvm.lifetime.end(i64 5000, i8* %1) #8
  ret i8* %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @BZ2_bzdopen(i32 %fd, i8* readonly %mode) #4 {
  %1 = tail call fastcc i8* @bzopen_or_bzdopen(i8* null, i32 %fd, i8* %mode, i32 1) #12
  ret i8* %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BZ2_bzread(i8* %b, i8* %buf, i32 %len) #4 {
  %bzerr = alloca i32, align 4
  %1 = getelementptr inbounds i8* %b, i64 5096
  %2 = bitcast i8* %1 to i32*
  %3 = load i32* %2, align 4, !tbaa !72
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %10, label %5

; <label>:5                                       ; preds = %0
  %6 = call i32 @BZ2_bzRead(i32* %bzerr, i8* %b, i8* %buf, i32 %len) #12
  %7 = load i32* %bzerr, align 4, !tbaa !45
  %8 = and i32 %7, -5
  %9 = icmp eq i32 %8, 0
  %. = select i1 %9, i32 %6, i32 -1
  br label %10

; <label>:10                                      ; preds = %5, %0
  %.0 = phi i32 [ 0, %0 ], [ %., %5 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BZ2_bzwrite(i8* %b, i8* %buf, i32 %len) #4 {
  %bzerr = alloca i32, align 4
  call void @BZ2_bzWrite(i32* %bzerr, i8* %b, i8* %buf, i32 %len) #12
  %1 = load i32* %bzerr, align 4, !tbaa !45
  %2 = icmp eq i32 %1, 0
  %len. = select i1 %2, i32 %len, i32 -1
  ret i32 %len.
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @BZ2_bzflush(i8* nocapture readnone %b) #2 {
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @BZ2_bzclose(i8* %b) #4 {
  %bzerr = alloca i32, align 4
  %1 = bitcast i8* %b to %struct.__sFILE**
  %2 = load %struct.__sFILE** %1, align 8, !tbaa !76
  %3 = icmp eq i8* %b, null
  br i1 %3, label %20, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds i8* %b, i64 5012
  %6 = load i8* %5, align 1, !tbaa !77
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

; <label>:8                                       ; preds = %4
  call void @BZ2_bzWriteClose64(i32* %bzerr, i8* %b, i32 0, i32* null, i32* null, i32* null, i32* null) #10
  %9 = load i32* %bzerr, align 4, !tbaa !45
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

; <label>:11                                      ; preds = %8
  call void @BZ2_bzWriteClose64(i32* null, i8* %b, i32 1, i32* null, i32* null, i32* null, i32* null) #10
  br label %13

; <label>:12                                      ; preds = %4
  call void @BZ2_bzReadClose(i32* %bzerr, i8* %b) #12
  br label %13

; <label>:13                                      ; preds = %8, %11, %12
  %14 = load %struct.__sFILE** @__stdinp, align 8, !tbaa !2
  %15 = icmp eq %struct.__sFILE* %2, %14
  %16 = load %struct.__sFILE** @__stdoutp, align 8
  %17 = icmp eq %struct.__sFILE* %2, %16
  %or.cond = or i1 %15, %17
  br i1 %or.cond, label %20, label %18

; <label>:18                                      ; preds = %13
  %19 = call i32 @fclose(%struct.__sFILE* %2) #10
  br label %20

; <label>:20                                      ; preds = %13, %0, %18
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define i8* @BZ2_bzerror(i8* nocapture readonly %b, i32* nocapture %errnum) #4 {
  %1 = getelementptr inbounds i8* %b, i64 5096
  %2 = bitcast i8* %1 to i32*
  %3 = load i32* %2, align 4, !tbaa !72
  %4 = icmp sgt i32 %3, 0
  %. = select i1 %4, i32 0, i32 %3
  store i32 %., i32* %errnum, align 4, !tbaa !45
  %5 = sub nsw i32 0, %.
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [16 x i8*]* @bzerrorstrings, i64 0, i64 %6
  %8 = load i8** %7, align 8, !tbaa !2
  ret i8* %8
}

; Function Attrs: optsize
declare void @BZ2_compressBlock(%struct.EState*, i8 zeroext) #6

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @add_pair_to_block(%struct.EState* nocapture %s) #4 {
  %1 = getelementptr inbounds %struct.EState* %s, i64 0, i32 13
  %2 = load i32* %1, align 4, !tbaa !32
  %3 = trunc i32 %2 to i8
  %4 = getelementptr inbounds %struct.EState* %s, i64 0, i32 14
  %5 = load i32* %4, align 4, !tbaa !33
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %7 = getelementptr inbounds %struct.EState* %s, i64 0, i32 26
  %8 = and i32 %2, 255
  %.pre = load i32* %7, align 4, !tbaa !37
  br label %9

; <label>:9                                       ; preds = %.lr.ph, %9
  %10 = phi i32 [ %.pre, %.lr.ph ], [ %17, %9 ]
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %18, %9 ]
  %11 = shl i32 %10, 8
  %12 = lshr i32 %10, 24
  %13 = xor i32 %12, %8
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %14
  %16 = load i32* %15, align 4, !tbaa !45
  %17 = xor i32 %11, %16
  store i32 %17, i32* %7, align 4, !tbaa !37
  %18 = add nuw nsw i32 %i.01, 1
  %19 = icmp slt i32 %18, %5
  br i1 %19, label %9, label %._crit_edge

._crit_edge:                                      ; preds = %9, %0
  %20 = zext i32 %2 to i64
  %21 = getelementptr inbounds %struct.EState* %s, i64 0, i32 22, i64 %20
  store i8 1, i8* %21, align 1, !tbaa !42
  switch i32 %5, label %64 [
    i32 1, label %22
    i32 2, label %31
    i32 3, label %45
  ]

; <label>:22                                      ; preds = %._crit_edge
  %23 = getelementptr inbounds %struct.EState* %s, i64 0, i32 17
  %24 = load i32* %23, align 4, !tbaa !34
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.EState* %s, i64 0, i32 9
  %27 = load i8** %26, align 8, !tbaa !23
  %28 = getelementptr inbounds i8* %27, i64 %25
  store i8 %3, i8* %28, align 1, !tbaa !42
  %29 = load i32* %23, align 4, !tbaa !34
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %23, align 4, !tbaa !34
  br label %99

; <label>:31                                      ; preds = %._crit_edge
  %32 = getelementptr inbounds %struct.EState* %s, i64 0, i32 17
  %33 = load i32* %32, align 4, !tbaa !34
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.EState* %s, i64 0, i32 9
  %36 = load i8** %35, align 8, !tbaa !23
  %37 = getelementptr inbounds i8* %36, i64 %34
  store i8 %3, i8* %37, align 1, !tbaa !42
  %38 = load i32* %32, align 4, !tbaa !34
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %32, align 4, !tbaa !34
  %40 = sext i32 %39 to i64
  %41 = load i8** %35, align 8, !tbaa !23
  %42 = getelementptr inbounds i8* %41, i64 %40
  store i8 %3, i8* %42, align 1, !tbaa !42
  %43 = load i32* %32, align 4, !tbaa !34
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %32, align 4, !tbaa !34
  br label %99

; <label>:45                                      ; preds = %._crit_edge
  %46 = getelementptr inbounds %struct.EState* %s, i64 0, i32 17
  %47 = load i32* %46, align 4, !tbaa !34
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.EState* %s, i64 0, i32 9
  %50 = load i8** %49, align 8, !tbaa !23
  %51 = getelementptr inbounds i8* %50, i64 %48
  store i8 %3, i8* %51, align 1, !tbaa !42
  %52 = load i32* %46, align 4, !tbaa !34
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %46, align 4, !tbaa !34
  %54 = sext i32 %53 to i64
  %55 = load i8** %49, align 8, !tbaa !23
  %56 = getelementptr inbounds i8* %55, i64 %54
  store i8 %3, i8* %56, align 1, !tbaa !42
  %57 = load i32* %46, align 4, !tbaa !34
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %46, align 4, !tbaa !34
  %59 = sext i32 %58 to i64
  %60 = load i8** %49, align 8, !tbaa !23
  %61 = getelementptr inbounds i8* %60, i64 %59
  store i8 %3, i8* %61, align 1, !tbaa !42
  %62 = load i32* %46, align 4, !tbaa !34
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %46, align 4, !tbaa !34
  br label %99

; <label>:64                                      ; preds = %._crit_edge
  %65 = add nsw i32 %5, -4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.EState* %s, i64 0, i32 22, i64 %66
  store i8 1, i8* %67, align 1, !tbaa !42
  %68 = getelementptr inbounds %struct.EState* %s, i64 0, i32 17
  %69 = load i32* %68, align 4, !tbaa !34
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.EState* %s, i64 0, i32 9
  %72 = load i8** %71, align 8, !tbaa !23
  %73 = getelementptr inbounds i8* %72, i64 %70
  store i8 %3, i8* %73, align 1, !tbaa !42
  %74 = load i32* %68, align 4, !tbaa !34
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %68, align 4, !tbaa !34
  %76 = sext i32 %75 to i64
  %77 = load i8** %71, align 8, !tbaa !23
  %78 = getelementptr inbounds i8* %77, i64 %76
  store i8 %3, i8* %78, align 1, !tbaa !42
  %79 = load i32* %68, align 4, !tbaa !34
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %68, align 4, !tbaa !34
  %81 = sext i32 %80 to i64
  %82 = load i8** %71, align 8, !tbaa !23
  %83 = getelementptr inbounds i8* %82, i64 %81
  store i8 %3, i8* %83, align 1, !tbaa !42
  %84 = load i32* %68, align 4, !tbaa !34
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %68, align 4, !tbaa !34
  %86 = sext i32 %85 to i64
  %87 = load i8** %71, align 8, !tbaa !23
  %88 = getelementptr inbounds i8* %87, i64 %86
  store i8 %3, i8* %88, align 1, !tbaa !42
  %89 = load i32* %68, align 4, !tbaa !34
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %68, align 4, !tbaa !34
  %91 = load i32* %4, align 4, !tbaa !33
  %92 = add i32 %91, 252
  %93 = trunc i32 %92 to i8
  %94 = sext i32 %90 to i64
  %95 = load i8** %71, align 8, !tbaa !23
  %96 = getelementptr inbounds i8* %95, i64 %94
  store i8 %93, i8* %96, align 1, !tbaa !42
  %97 = load i32* %68, align 4, !tbaa !34
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %68, align 4, !tbaa !34
  br label %99

; <label>:99                                      ; preds = %64, %45, %31, %22
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct.__sFILE* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @ungetc(i32, %struct.__sFILE* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #8

; Function Attrs: nounwind optsize
declare i8* @__strcat_chk(i8*, i8*, i64) #1

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #6

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fdopen"(i32, i8*) #6

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #8

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #8

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #9

attributes #0 = { noreturn nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind optsize }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 56}
!7 = !{!"", !3, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !3, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72}
!8 = !{!"int", !4, i64 0}
!9 = !{!7, !3, i64 64}
!10 = !{!7, !3, i64 72}
!11 = !{!12, !3, i64 0}
!12 = !{!"", !3, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !8, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !4, i64 128, !4, i64 384, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !4, i64 672, !4, i64 1704, !4, i64 19706, !4, i64 37708, !4, i64 39256, !4, i64 45448, !4, i64 51640}
!13 = !{!12, !3, i64 24}
!14 = !{!12, !3, i64 32}
!15 = !{!12, !3, i64 40}
!16 = !{!12, !8, i64 12}
!17 = !{!12, !8, i64 8}
!18 = !{!12, !8, i64 652}
!19 = !{!12, !8, i64 664}
!20 = !{!12, !8, i64 112}
!21 = !{!12, !8, i64 656}
!22 = !{!12, !8, i64 88}
!23 = !{!12, !3, i64 64}
!24 = !{!12, !3, i64 72}
!25 = !{!12, !3, i64 80}
!26 = !{!12, !3, i64 56}
!27 = !{!7, !3, i64 48}
!28 = !{!7, !8, i64 12}
!29 = !{!7, !8, i64 16}
!30 = !{!7, !8, i64 36}
!31 = !{!7, !8, i64 40}
!32 = !{!12, !8, i64 92}
!33 = !{!12, !8, i64 96}
!34 = !{!12, !8, i64 108}
!35 = !{!12, !8, i64 116}
!36 = !{!12, !8, i64 120}
!37 = !{!12, !8, i64 648}
!38 = !{!12, !8, i64 660}
!39 = !{!12, !8, i64 16}
!40 = !{!7, !8, i64 8}
!41 = !{!7, !8, i64 32}
!42 = !{!4, !4, i64 0}
!43 = !{!7, !3, i64 24}
!44 = !{!7, !3, i64 0}
!45 = !{!8, !8, i64 0}
!46 = !{!47, !3, i64 0}
!47 = !{!"", !3, i64 0, !8, i64 8, !4, i64 12, !8, i64 16, !4, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !4, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !4, i64 68, !8, i64 1092, !4, i64 1096, !4, i64 2124, !3, i64 3152, !3, i64 3160, !3, i64 3168, !8, i64 3176, !8, i64 3180, !8, i64 3184, !8, i64 3188, !8, i64 3192, !4, i64 3196, !4, i64 3452, !4, i64 3468, !4, i64 3724, !4, i64 7820, !4, i64 7884, !4, i64 25886, !4, i64 43888, !4, i64 45436, !4, i64 51628, !4, i64 57820, !4, i64 64012, !8, i64 64036, !8, i64 64040, !8, i64 64044, !8, i64 64048, !8, i64 64052, !8, i64 64056, !8, i64 64060, !8, i64 64064, !8, i64 64068, !8, i64 64072, !8, i64 64076, !8, i64 64080, !8, i64 64084, !8, i64 64088, !8, i64 64092, !8, i64 64096, !8, i64 64100, !8, i64 64104, !8, i64 64108, !8, i64 64112, !8, i64 64116, !3, i64 64120, !3, i64 64128, !3, i64 64136}
!48 = !{!47, !8, i64 8}
!49 = !{!47, !8, i64 36}
!50 = !{!47, !8, i64 32}
!51 = !{!47, !8, i64 3188}
!52 = !{!47, !4, i64 44}
!53 = !{!47, !8, i64 48}
!54 = !{!47, !8, i64 52}
!55 = !{!47, !4, i64 20}
!56 = !{!47, !8, i64 16}
!57 = !{!47, !4, i64 12}
!58 = !{!47, !8, i64 3184}
!59 = !{!47, !8, i64 1092}
!60 = !{!47, !8, i64 64080}
!61 = !{!47, !8, i64 64}
!62 = !{!47, !8, i64 60}
!63 = !{!47, !3, i64 3160}
!64 = !{!65, !65, i64 0}
!65 = !{!"short", !4, i64 0}
!66 = !{!47, !3, i64 3168}
!67 = !{!47, !8, i64 24}
!68 = !{!47, !8, i64 28}
!69 = !{!47, !3, i64 3152}
!70 = !{!47, !8, i64 3176}
!71 = !{!47, !8, i64 3180}
!72 = !{!73, !8, i64 5096}
!73 = !{!"", !3, i64 0, !4, i64 8, !8, i64 5008, !4, i64 5012, !7, i64 5016, !8, i64 5096, !4, i64 5100}
!74 = !{!73, !4, i64 5100}
!75 = !{!73, !8, i64 5008}
!76 = !{!73, !3, i64 0}
!77 = !{!73, !4, i64 5012}
!78 = !{!73, !8, i64 5024}
!79 = !{!73, !3, i64 5016}
!80 = !{!73, !8, i64 5048}
!81 = !{!73, !3, i64 5040}
!82 = !{!73, !8, i64 5028}
!83 = !{!73, !8, i64 5032}
!84 = !{!73, !8, i64 5052}
!85 = !{!73, !8, i64 5056}
