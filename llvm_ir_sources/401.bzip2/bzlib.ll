; ModuleID = '../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }
%struct.EState = type { %struct.bz_stream*, i32, i32, i32, i32*, i32*, i32*, i32, i32*, i8*, i16*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.DState = type { %struct.bz_stream*, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], i32*, i16*, i8*, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.bzFile = type { %struct._IO_FILE*, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [443 x i8] c"\0A\0Abzip2/libbzip2: internal error number %d.\0AThis is a bug in bzip2/libbzip2, %s.\0APlease report it to me at: jseward@bzip.org.  If this happened\0Awhen you were using some program which uses libbzip2 as a\0Acomponent, you should also report this bug to the author(s)\0Aof that program.  Please make an effort to report this bug;\0Atimely and accurate bug reports eventually lead to higher\0Aquality software.  Thanks.  Julian Seward, 15 February 2005.\0A\0A\00", align 1
@.str1 = private unnamed_addr constant [1057 x i8] c"\0A*** A special note about internal error number 1007 ***\0A\0AExperience suggests that a common cause of i.e. 1007\0Ais unreliable memory or other hardware.  The 1007 assertion\0Ajust happens to cross-check the results of huge numbers of\0Amemory reads/writes, and so acts (unintendedly) as a stress\0Atest of your memory system.\0A\0AI suggest the following: try compressing the file again,\0Apossibly monitoring progress in detail with the -vv flag.\0A\0A* If the error cannot be reproduced, and/or happens at different\0A  points in compression, you may have a flaky memory system.\0A  Try a memory-test program.  I have used Memtest86\0A  (www.memtest86.com).  At the time of writing it is free (GPLd).\0A  Memtest86 tests memory much more thorougly than your BIOSs\0A  power-on test, and may find failures that the BIOS doesn't.\0A\0A* If the error can be repeatably reproduced, this is a bug in\0A  bzip2, and I would very much like to hear about it.  Please\0A  let me know, and, ideally, save a copy of the file causing the\0A  problem -- without which I will be unable to investigate it.\0A\0A\00", align 1
@.str2 = private unnamed_addr constant [18 x i8] c" {0x%08x, 0x%08x}\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"\0A    combined CRCs: stored = 0x%08x, computed = 0x%08x\00", align 1
@.str5 = private unnamed_addr constant [19 x i8] c"1.0.3, 15-Feb-2005\00", align 1
@stdin = external global %struct._IO_FILE*
@stdout = external global %struct._IO_FILE*
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
  tail call void @llvm.dbg.value(metadata !{i32 %errcode}, i64 0, metadata !26), !dbg !613
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !614, !tbaa !615
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([443 x i8]* @.str, i64 0, i64 0), i32 %errcode, i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0)) #12, !dbg !618
  %cmp = icmp eq i32 %errcode, 1007, !dbg !619
  br i1 %cmp, label %if.then, label %if.end, !dbg !619

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !620, !tbaa !615
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([1057 x i8]* @.str1, i64 0, i64 0), i64 1056, i64 1, %struct._IO_FILE* %1) #9, !dbg !620
  br label %if.end, !dbg !622

if.end:                                           ; preds = %if.then, %entry
  tail call void @exit(i32 3) #13, !dbg !623
  unreachable, !dbg !623
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize readnone uwtable
define i8* @BZ2_bzlibVersion() #3 {
entry:
  ret i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0), !dbg !624
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzCompressInit(%struct.bz_stream* %strm, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.bz_stream* %strm}, i64 0, metadata !58), !dbg !625
  tail call void @llvm.dbg.value(metadata !{i32 %blockSize100k}, i64 0, metadata !59), !dbg !626
  tail call void @llvm.dbg.value(metadata !{i32 %verbosity}, i64 0, metadata !60), !dbg !627
  tail call void @llvm.dbg.value(metadata !{i32 %workFactor}, i64 0, metadata !61), !dbg !628
  %cmp = icmp eq %struct.bz_stream* %strm, null, !dbg !629
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !629

lor.lhs.false:                                    ; preds = %entry
  %blockSize100k.off = add i32 %blockSize100k, -1, !dbg !629
  %0 = icmp ugt i32 %blockSize100k.off, 8, !dbg !629
  %1 = icmp ugt i32 %workFactor, 250, !dbg !629
  %or.cond = or i1 %0, %1, !dbg !629
  br i1 %or.cond, label %return, label %if.end9, !dbg !629

if.end9:                                          ; preds = %lor.lhs.false
  %cmp10 = icmp eq i32 %workFactor, 0, !dbg !630
  tail call void @llvm.dbg.value(metadata !631, i64 0, metadata !61), !dbg !630
  %.workFactor = select i1 %cmp10, i32 30, i32 %workFactor, !dbg !630
  %bzalloc = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 9, !dbg !632
  %2 = load i8* (i8*, i32, i32)** %bzalloc, align 8, !dbg !632, !tbaa !615
  %cmp13 = icmp eq i8* (i8*, i32, i32)* %2, null, !dbg !632
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !632

if.then14:                                        ; preds = %if.end9
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %bzalloc, align 8, !dbg !632, !tbaa !615
  br label %if.end16, !dbg !632

if.end16:                                         ; preds = %if.then14, %if.end9
  %3 = phi i8* (i8*, i32, i32)* [ @default_bzalloc, %if.then14 ], [ %2, %if.end9 ]
  %bzfree = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10, !dbg !633
  %4 = load void (i8*, i8*)** %bzfree, align 8, !dbg !633, !tbaa !615
  %cmp17 = icmp eq void (i8*, i8*)* %4, null, !dbg !633
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !633

if.then18:                                        ; preds = %if.end16
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %bzfree, align 8, !dbg !633, !tbaa !615
  br label %if.end20, !dbg !633

if.end20:                                         ; preds = %if.then18, %if.end16
  %opaque = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11, !dbg !634
  %5 = load i8** %opaque, align 8, !dbg !634, !tbaa !615
  %call22 = tail call i8* %3(i8* %5, i32 55768, i32 1) #12, !dbg !634
  %cmp23 = icmp eq i8* %call22, null, !dbg !635
  br i1 %cmp23, label %return, label %if.end25, !dbg !635

if.end25:                                         ; preds = %if.end20
  %strm26 = bitcast i8* %call22 to %struct.bz_stream**, !dbg !636
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm26, align 8, !dbg !636, !tbaa !615
  %arr1 = getelementptr inbounds i8* %call22, i64 24, !dbg !637
  %6 = bitcast i8* %arr1 to i32**, !dbg !637
  %arr2 = getelementptr inbounds i8* %call22, i64 32, !dbg !638
  %7 = bitcast i8* %arr2 to i32**, !dbg !638
  %ftab = getelementptr inbounds i8* %call22, i64 40, !dbg !639
  %8 = bitcast i8* %ftab to i32**, !dbg !639
  %mul = mul nsw i32 %blockSize100k, 100000, !dbg !640
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !62), !dbg !640
  call void @llvm.memset.p0i8.i64(i8* %arr1, i8 0, i64 24, i32 8, i1 false), !dbg !638
  %9 = load i8* (i8*, i32, i32)** %bzalloc, align 8, !dbg !641, !tbaa !615
  %10 = load i8** %opaque, align 8, !dbg !641, !tbaa !615
  %mul29 = mul i32 %blockSize100k, 400000, !dbg !641
  %call31 = tail call i8* %9(i8* %10, i32 %mul29, i32 1) #12, !dbg !641
  %11 = bitcast i8* %call31 to i32*, !dbg !641
  store i32* %11, i32** %6, align 8, !dbg !641, !tbaa !615
  %12 = load i8* (i8*, i32, i32)** %bzalloc, align 8, !dbg !642, !tbaa !615
  %13 = load i8** %opaque, align 8, !dbg !642, !tbaa !615
  %mul36 = add i32 %mul29, 136, !dbg !642
  %call38 = tail call i8* %12(i8* %13, i32 %mul36, i32 1) #12, !dbg !642
  %14 = bitcast i8* %call38 to i32*, !dbg !642
  store i32* %14, i32** %7, align 8, !dbg !642, !tbaa !615
  %15 = load i8* (i8*, i32, i32)** %bzalloc, align 8, !dbg !643, !tbaa !615
  %16 = load i8** %opaque, align 8, !dbg !643, !tbaa !615
  %call42 = tail call i8* %15(i8* %16, i32 262148, i32 1) #12, !dbg !643
  %17 = bitcast i8* %call42 to i32*, !dbg !643
  store i32* %17, i32** %8, align 8, !dbg !643, !tbaa !615
  %18 = load i32** %6, align 8, !dbg !644, !tbaa !615
  %cmp45 = icmp eq i32* %18, null, !dbg !644
  br i1 %cmp45, label %if.end63, label %lor.lhs.false47, !dbg !644

lor.lhs.false47:                                  ; preds = %if.end25
  %19 = load i32** %7, align 8, !dbg !644, !tbaa !615
  %cmp49 = icmp eq i32* %19, null, !dbg !644
  %cmp53 = icmp eq i8* %call42, null, !dbg !644
  %or.cond166 = or i1 %cmp49, %cmp53, !dbg !644
  br i1 %or.cond166, label %if.then59, label %if.end86, !dbg !644

if.then59:                                        ; preds = %lor.lhs.false47
  %20 = load void (i8*, i8*)** %bzfree, align 8, !dbg !645, !tbaa !615
  %21 = load i8** %opaque, align 8, !dbg !645, !tbaa !615
  %22 = bitcast i32* %18 to i8*, !dbg !645
  tail call void %20(i8* %21, i8* %22) #12, !dbg !645
  br label %if.end63, !dbg !645

if.end63:                                         ; preds = %if.end25, %if.then59
  %23 = load i32** %7, align 8, !dbg !647, !tbaa !615
  %cmp65 = icmp eq i32* %23, null, !dbg !647
  br i1 %cmp65, label %if.end71, label %if.then67, !dbg !647

if.then67:                                        ; preds = %if.end63
  %24 = load void (i8*, i8*)** %bzfree, align 8, !dbg !647, !tbaa !615
  %25 = load i8** %opaque, align 8, !dbg !647, !tbaa !615
  %26 = bitcast i32* %23 to i8*, !dbg !647
  tail call void %24(i8* %25, i8* %26) #12, !dbg !647
  br label %if.end71, !dbg !647

if.end71:                                         ; preds = %if.end63, %if.then67
  %27 = load i32** %8, align 8, !dbg !648, !tbaa !615
  %cmp73 = icmp eq i32* %27, null, !dbg !648
  br i1 %cmp73, label %if.then82, label %if.then75, !dbg !648

if.then75:                                        ; preds = %if.end71
  %28 = load void (i8*, i8*)** %bzfree, align 8, !dbg !648, !tbaa !615
  %29 = load i8** %opaque, align 8, !dbg !648, !tbaa !615
  %30 = bitcast i32* %27 to i8*, !dbg !648
  tail call void %28(i8* %29, i8* %30) #12, !dbg !648
  br label %if.then82, !dbg !648

if.then82:                                        ; preds = %if.then75, %if.end71
  %31 = load void (i8*, i8*)** %bzfree, align 8, !dbg !649, !tbaa !615
  %32 = load i8** %opaque, align 8, !dbg !649, !tbaa !615
  tail call void %31(i8* %32, i8* %call22) #12, !dbg !649
  br label %return, !dbg !649

if.end86:                                         ; preds = %lor.lhs.false47
  %blockNo = getelementptr inbounds i8* %call22, i64 660, !dbg !650
  %33 = bitcast i8* %blockNo to i32*, !dbg !650
  store i32 0, i32* %33, align 4, !dbg !650, !tbaa !651
  %state = getelementptr inbounds i8* %call22, i64 12, !dbg !652
  %34 = bitcast i8* %state to i32*, !dbg !652
  store i32 2, i32* %34, align 4, !dbg !652, !tbaa !651
  %mode = getelementptr inbounds i8* %call22, i64 8, !dbg !653
  %35 = bitcast i8* %mode to i32*, !dbg !653
  store i32 2, i32* %35, align 4, !dbg !653, !tbaa !651
  %combinedCRC = getelementptr inbounds i8* %call22, i64 652, !dbg !654
  %36 = bitcast i8* %combinedCRC to i32*, !dbg !654
  store i32 0, i32* %36, align 4, !dbg !654, !tbaa !651
  %blockSize100k87 = getelementptr inbounds i8* %call22, i64 664, !dbg !655
  %37 = bitcast i8* %blockSize100k87 to i32*, !dbg !655
  store i32 %blockSize100k, i32* %37, align 4, !dbg !655, !tbaa !651
  %sub = add nsw i32 %mul, -19, !dbg !656
  %nblockMAX = getelementptr inbounds i8* %call22, i64 112, !dbg !656
  %38 = bitcast i8* %nblockMAX to i32*, !dbg !656
  store i32 %sub, i32* %38, align 4, !dbg !656, !tbaa !651
  %verbosity89 = getelementptr inbounds i8* %call22, i64 656, !dbg !657
  %39 = bitcast i8* %verbosity89 to i32*, !dbg !657
  store i32 %verbosity, i32* %39, align 4, !dbg !657, !tbaa !651
  %workFactor90 = getelementptr inbounds i8* %call22, i64 88, !dbg !658
  %40 = bitcast i8* %workFactor90 to i32*, !dbg !658
  store i32 %.workFactor, i32* %40, align 4, !dbg !658, !tbaa !651
  %41 = bitcast i32* %19 to i8*, !dbg !659
  %block = getelementptr inbounds i8* %call22, i64 64, !dbg !659
  %42 = bitcast i8* %block to i8**, !dbg !659
  store i8* %41, i8** %42, align 8, !dbg !659, !tbaa !615
  %43 = bitcast i32* %18 to i16*, !dbg !660
  %mtfv = getelementptr inbounds i8* %call22, i64 72, !dbg !660
  %44 = bitcast i8* %mtfv to i16**, !dbg !660
  store i16* %43, i16** %44, align 8, !dbg !660, !tbaa !615
  %zbits = getelementptr inbounds i8* %call22, i64 80, !dbg !661
  %45 = bitcast i8* %zbits to i8**, !dbg !661
  store i8* null, i8** %45, align 8, !dbg !661, !tbaa !615
  %ptr = getelementptr inbounds i8* %call22, i64 56, !dbg !662
  %46 = bitcast i8* %ptr to i32**, !dbg !662
  store i32* %18, i32** %46, align 8, !dbg !662, !tbaa !615
  %state94 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8, !dbg !663
  store i8* %call22, i8** %state94, align 8, !dbg !663, !tbaa !615
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 2, !dbg !664
  store i32 0, i32* %total_in_lo32, align 4, !dbg !664, !tbaa !651
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 3, !dbg !665
  store i32 0, i32* %total_in_hi32, align 4, !dbg !665, !tbaa !651
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 6, !dbg !666
  store i32 0, i32* %total_out_lo32, align 4, !dbg !666, !tbaa !651
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 7, !dbg !667
  store i32 0, i32* %total_out_hi32, align 4, !dbg !667, !tbaa !651
  %state_in_ch.i = getelementptr inbounds i8* %call22, i64 92, !dbg !668
  %47 = bitcast i8* %state_in_ch.i to i32*, !dbg !668
  store i32 256, i32* %47, align 4, !dbg !668, !tbaa !651
  %state_in_len.i = getelementptr inbounds i8* %call22, i64 96, !dbg !670
  %48 = bitcast i8* %state_in_len.i to i32*, !dbg !670
  store i32 0, i32* %48, align 4, !dbg !670, !tbaa !651
  %nblock.i = getelementptr inbounds i8* %call22, i64 108, !dbg !671
  %49 = bitcast i8* %nblock.i to i32*, !dbg !671
  store i32 0, i32* %49, align 4, !dbg !671, !tbaa !651
  %numZ.i = getelementptr inbounds i8* %call22, i64 116, !dbg !673
  %50 = bitcast i8* %numZ.i to i32*, !dbg !673
  store i32 0, i32* %50, align 4, !dbg !673, !tbaa !651
  %state_out_pos.i = getelementptr inbounds i8* %call22, i64 120, !dbg !674
  %51 = bitcast i8* %state_out_pos.i to i32*, !dbg !674
  store i32 0, i32* %51, align 4, !dbg !674, !tbaa !651
  %blockCRC.i = getelementptr inbounds i8* %call22, i64 648, !dbg !675
  %52 = bitcast i8* %blockCRC.i to i32*, !dbg !675
  store i32 -1, i32* %52, align 4, !dbg !675, !tbaa !651
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !677) #9, !dbg !678
  %53 = getelementptr i8* %call22, i64 128
  tail call void @llvm.memset.p0i8.i64(i8* %53, i8 0, i64 256, i32 1, i1 false) #9, !dbg !678
  %54 = load i32* %33, align 4, !dbg !680, !tbaa !651
  %inc1.i = add nsw i32 %54, 1, !dbg !680
  store i32 %inc1.i, i32* %33, align 4, !dbg !680, !tbaa !651
  br label %return, !dbg !681

return:                                           ; preds = %if.then82, %if.end20, %entry, %lor.lhs.false, %if.end86
  %retval.0 = phi i32 [ 0, %if.end86 ], [ -2, %lor.lhs.false ], [ -2, %entry ], [ -3, %if.end20 ], [ -3, %if.then82 ]
  ret i32 %retval.0, !dbg !681
}

; Function Attrs: nounwind optsize uwtable
define internal noalias i8* @default_bzalloc(i8* nocapture %opaque, i32 %items, i32 %size) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %opaque}, i64 0, metadata !603), !dbg !682
  tail call void @llvm.dbg.value(metadata !{i32 %items}, i64 0, metadata !604), !dbg !682
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !605), !dbg !682
  %mul = mul nsw i32 %size, %items, !dbg !683
  %conv = sext i32 %mul to i64, !dbg !683
  %call = tail call noalias i8* @malloc(i64 %conv) #12, !dbg !683
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !606), !dbg !683
  ret i8* %call, !dbg !684
}

; Function Attrs: nounwind optsize uwtable
define internal void @default_bzfree(i8* nocapture %opaque, i8* %addr) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %opaque}, i64 0, metadata !597), !dbg !685
  tail call void @llvm.dbg.value(metadata !{i8* %addr}, i64 0, metadata !598), !dbg !685
  %cmp = icmp eq i8* %addr, null, !dbg !686
  br i1 %cmp, label %if.end, label %if.then, !dbg !686

if.then:                                          ; preds = %entry
  tail call void @free(i8* %addr) #12, !dbg !686
  br label %if.end, !dbg !686

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !687
}

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzCompress(%struct.bz_stream* %strm, i32 %action) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.bz_stream* %strm}, i64 0, metadata !139), !dbg !688
  tail call void @llvm.dbg.value(metadata !{i32 %action}, i64 0, metadata !140), !dbg !688
  %cmp = icmp eq %struct.bz_stream* %strm, null, !dbg !689
  br i1 %cmp, label %return, label %if.end, !dbg !689

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8, !dbg !690
  %0 = load i8** %state, align 8, !dbg !690, !tbaa !615
  %cmp1 = icmp eq i8* %0, null, !dbg !691
  br i1 %cmp1, label %return, label %if.end3, !dbg !691

if.end3:                                          ; preds = %if.end
  %strm4 = bitcast i8* %0 to %struct.bz_stream**, !dbg !692
  %1 = load %struct.bz_stream** %strm4, align 8, !dbg !692, !tbaa !615
  %cmp5 = icmp eq %struct.bz_stream* %1, %strm, !dbg !692
  br i1 %cmp5, label %preswitch.preheader, label %return, !dbg !692

preswitch.preheader:                              ; preds = %if.end3
  %mode = getelementptr inbounds i8* %0, i64 8, !dbg !693
  %2 = bitcast i8* %mode to i32*, !dbg !693
  %avail_in = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 1, !dbg !694
  %avail_in_expect = getelementptr inbounds i8* %0, i64 16, !dbg !694
  %3 = bitcast i8* %avail_in_expect to i32*, !dbg !694
  %.pre = load i32* %2, align 4, !dbg !693, !tbaa !651
  br label %preswitch, !dbg !693

preswitch:                                        ; preds = %preswitch.backedge, %preswitch.preheader
  %4 = phi i32 [ %storemerge, %preswitch.backedge ], [ %.pre, %preswitch.preheader ]
  switch i32 %4, label %return [
    i32 1, label %return.loopexit
    i32 2, label %sw.bb8
    i32 3, label %sw.bb23
    i32 4, label %sw.bb47
  ], !dbg !693

sw.bb8:                                           ; preds = %preswitch
  switch i32 %action, label %return.loopexit [
    i32 0, label %if.then10
    i32 1, label %preswitch.backedge
    i32 2, label %if.then18
  ], !dbg !697

if.then10:                                        ; preds = %sw.bb8
  %call = tail call fastcc zeroext i8 @handle_compress(%struct.bz_stream* %strm) #14, !dbg !698
  tail call void @llvm.dbg.value(metadata !{i8 %call}, i64 0, metadata !141), !dbg !698
  %tobool = icmp ne i8 %call, 0, !dbg !700
  %cond = select i1 %tobool, i32 1, i32 -2, !dbg !700
  br label %return, !dbg !700

preswitch.backedge:                               ; preds = %sw.bb8, %if.then18
  %storemerge = phi i32 [ 4, %if.then18 ], [ 3, %sw.bb8 ]
  %storemerge123 = load i32* %avail_in, align 4, !dbg !701
  store i32 %storemerge123, i32* %3, align 4, !dbg !694, !tbaa !651
  store i32 %storemerge, i32* %2, align 4, !dbg !703, !tbaa !651
  br label %preswitch

if.then18:                                        ; preds = %sw.bb8
  br label %preswitch.backedge, !dbg !704

sw.bb23:                                          ; preds = %preswitch
  %cmp24 = icmp eq i32 %action, 1, !dbg !705
  br i1 %cmp24, label %if.end27, label %return, !dbg !705

if.end27:                                         ; preds = %sw.bb23
  %5 = load i32* %3, align 4, !dbg !706, !tbaa !651
  %6 = load i32* %avail_in, align 4, !dbg !706, !tbaa !651
  %cmp31 = icmp eq i32 %5, %6, !dbg !706
  br i1 %cmp31, label %if.end34, label %return, !dbg !706

if.end34:                                         ; preds = %if.end27
  %call35 = tail call fastcc zeroext i8 @handle_compress(%struct.bz_stream* %strm) #14, !dbg !707
  tail call void @llvm.dbg.value(metadata !{i8 %call35}, i64 0, metadata !141), !dbg !707
  %7 = load i32* %3, align 4, !dbg !708, !tbaa !651
  %cmp37 = icmp eq i32 %7, 0, !dbg !708
  br i1 %cmp37, label %lor.lhs.false, label %return, !dbg !708

lor.lhs.false:                                    ; preds = %if.end34
  %state_in_ch.i = getelementptr inbounds i8* %0, i64 92, !dbg !709
  %8 = bitcast i8* %state_in_ch.i to i32*, !dbg !709
  %9 = load i32* %8, align 4, !dbg !709, !tbaa !651
  %cmp.i = icmp ult i32 %9, 256, !dbg !709
  br i1 %cmp.i, label %land.lhs.true.i, label %lor.lhs.false41, !dbg !709

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %state_in_len.i = getelementptr inbounds i8* %0, i64 96, !dbg !709
  %10 = bitcast i8* %state_in_len.i to i32*, !dbg !709
  %11 = load i32* %10, align 4, !dbg !709, !tbaa !651
  %cmp1.i = icmp sgt i32 %11, 0, !dbg !709
  br i1 %cmp1.i, label %return, label %lor.lhs.false41, !dbg !709

lor.lhs.false41:                                  ; preds = %land.lhs.true.i, %lor.lhs.false
  %state_out_pos = getelementptr inbounds i8* %0, i64 120, !dbg !708
  %12 = bitcast i8* %state_out_pos to i32*, !dbg !708
  %13 = load i32* %12, align 4, !dbg !708, !tbaa !651
  %numZ = getelementptr inbounds i8* %0, i64 116, !dbg !708
  %14 = bitcast i8* %numZ to i32*, !dbg !708
  %15 = load i32* %14, align 4, !dbg !708, !tbaa !651
  %cmp42 = icmp slt i32 %13, %15, !dbg !708
  br i1 %cmp42, label %return, label %if.end45, !dbg !708

if.end45:                                         ; preds = %lor.lhs.false41
  store i32 2, i32* %2, align 4, !dbg !710, !tbaa !651
  br label %return, !dbg !711

sw.bb47:                                          ; preds = %preswitch
  %cmp48 = icmp eq i32 %action, 2, !dbg !712
  br i1 %cmp48, label %if.end51, label %return, !dbg !712

if.end51:                                         ; preds = %sw.bb47
  %16 = load i32* %3, align 4, !dbg !713, !tbaa !651
  %17 = load i32* %avail_in, align 4, !dbg !713, !tbaa !651
  %cmp55 = icmp eq i32 %16, %17, !dbg !713
  br i1 %cmp55, label %if.end58, label %return, !dbg !713

if.end58:                                         ; preds = %if.end51
  %call59 = tail call fastcc zeroext i8 @handle_compress(%struct.bz_stream* %strm) #14, !dbg !714
  tail call void @llvm.dbg.value(metadata !{i8 %call59}, i64 0, metadata !141), !dbg !714
  %tobool60 = icmp eq i8 %call59, 0, !dbg !715
  br i1 %tobool60, label %return, label %if.end62, !dbg !715

if.end62:                                         ; preds = %if.end58
  %18 = load i32* %3, align 4, !dbg !716, !tbaa !651
  %cmp64 = icmp eq i32 %18, 0, !dbg !716
  br i1 %cmp64, label %lor.lhs.false66, label %return, !dbg !716

lor.lhs.false66:                                  ; preds = %if.end62
  %state_in_ch.i109 = getelementptr inbounds i8* %0, i64 92, !dbg !717
  %19 = bitcast i8* %state_in_ch.i109 to i32*, !dbg !717
  %20 = load i32* %19, align 4, !dbg !717, !tbaa !651
  %cmp.i110 = icmp ult i32 %20, 256, !dbg !717
  br i1 %cmp.i110, label %land.lhs.true.i113, label %lor.lhs.false69, !dbg !717

land.lhs.true.i113:                               ; preds = %lor.lhs.false66
  %state_in_len.i111 = getelementptr inbounds i8* %0, i64 96, !dbg !717
  %21 = bitcast i8* %state_in_len.i111 to i32*, !dbg !717
  %22 = load i32* %21, align 4, !dbg !717, !tbaa !651
  %cmp1.i112 = icmp sgt i32 %22, 0, !dbg !717
  br i1 %cmp1.i112, label %return, label %lor.lhs.false69, !dbg !717

lor.lhs.false69:                                  ; preds = %land.lhs.true.i113, %lor.lhs.false66
  %state_out_pos70 = getelementptr inbounds i8* %0, i64 120, !dbg !716
  %23 = bitcast i8* %state_out_pos70 to i32*, !dbg !716
  %24 = load i32* %23, align 4, !dbg !716, !tbaa !651
  %numZ71 = getelementptr inbounds i8* %0, i64 116, !dbg !716
  %25 = bitcast i8* %numZ71 to i32*, !dbg !716
  %26 = load i32* %25, align 4, !dbg !716, !tbaa !651
  %cmp72 = icmp slt i32 %24, %26, !dbg !716
  br i1 %cmp72, label %return, label %if.end75, !dbg !716

if.end75:                                         ; preds = %lor.lhs.false69
  store i32 1, i32* %2, align 4, !dbg !718, !tbaa !651
  br label %return, !dbg !719

return.loopexit:                                  ; preds = %preswitch, %sw.bb8
  %retval.0.ph = phi i32 [ -2, %sw.bb8 ], [ -1, %preswitch ]
  br label %return

return:                                           ; preds = %preswitch, %return.loopexit, %land.lhs.true.i113, %land.lhs.true.i, %lor.lhs.false69, %if.end62, %if.end58, %if.end51, %sw.bb47, %lor.lhs.false41, %if.end34, %if.end27, %sw.bb23, %if.end3, %if.end, %entry, %if.end75, %if.end45, %if.then10
  %retval.0 = phi i32 [ 4, %if.end75 ], [ 1, %if.end45 ], [ %cond, %if.then10 ], [ -2, %entry ], [ -2, %if.end ], [ -2, %if.end3 ], [ -1, %sw.bb23 ], [ -1, %if.end27 ], [ 2, %if.end34 ], [ 2, %lor.lhs.false41 ], [ -1, %sw.bb47 ], [ -1, %if.end51 ], [ -1, %if.end58 ], [ 3, %if.end62 ], [ 3, %lor.lhs.false69 ], [ 2, %land.lhs.true.i ], [ 3, %land.lhs.true.i113 ], [ %retval.0.ph, %return.loopexit ], [ 0, %preswitch ]
  ret i32 %retval.0, !dbg !720
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc zeroext i8 @handle_compress(%struct.bz_stream* nocapture %strm) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.bz_stream* %strm}, i64 0, metadata !554), !dbg !721
  tail call void @llvm.dbg.value(metadata !722, i64 0, metadata !555), !dbg !723
  tail call void @llvm.dbg.value(metadata !722, i64 0, metadata !556), !dbg !724
  %state = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8, !dbg !725
  %0 = load i8** %state, align 8, !dbg !725, !tbaa !615
  %1 = bitcast i8* %0 to %struct.EState*, !dbg !725
  tail call void @llvm.dbg.value(metadata !{%struct.EState* %1}, i64 0, metadata !557), !dbg !725
  %state1 = getelementptr inbounds i8* %0, i64 12, !dbg !726
  %2 = bitcast i8* %state1 to i32*, !dbg !726
  %state_out_pos.i = getelementptr inbounds i8* %0, i64 120, !dbg !728
  %3 = bitcast i8* %state_out_pos.i to i32*, !dbg !728
  %strm.i = bitcast i8* %0 to %struct.bz_stream**, !dbg !732
  %numZ = getelementptr inbounds i8* %0, i64 116, !dbg !733
  %4 = bitcast i8* %numZ to i32*, !dbg !733
  %mode = getelementptr inbounds i8* %0, i64 8, !dbg !734
  %5 = bitcast i8* %mode to i32*, !dbg !734
  %avail_in_expect = getelementptr inbounds i8* %0, i64 16, !dbg !734
  %6 = bitcast i8* %avail_in_expect to i32*, !dbg !734
  %state_in_ch.i100 = getelementptr inbounds i8* %0, i64 92, !dbg !735
  %7 = bitcast i8* %state_in_ch.i100 to i32*, !dbg !735
  %state_in_len.i = getelementptr inbounds i8* %0, i64 96, !dbg !735
  %8 = bitcast i8* %state_in_len.i to i32*, !dbg !735
  %nblock.i116 = getelementptr inbounds i8* %0, i64 108, !dbg !737
  %9 = bitcast i8* %nblock.i116 to i32*, !dbg !737
  %blockCRC.i119 = getelementptr inbounds i8* %0, i64 648, !dbg !739
  %10 = bitcast i8* %blockCRC.i119 to i32*, !dbg !739
  %11 = getelementptr i8* %0, i64 128
  %blockNo.i = getelementptr inbounds i8* %0, i64 660, !dbg !740
  %12 = bitcast i8* %blockNo.i to i32*, !dbg !740
  %zbits.i = getelementptr inbounds i8* %0, i64 80, !dbg !741
  %13 = bitcast i8* %zbits.i to i8**, !dbg !741
  %nblockMAX.i = getelementptr inbounds i8* %0, i64 112, !dbg !742
  %14 = bitcast i8* %nblockMAX.i to i32*, !dbg !742
  %block.i = getelementptr inbounds i8* %0, i64 64, !dbg !745
  %15 = bitcast i8* %block.i to i8**, !dbg !745
  br label %while.body.outer, !dbg !746

while.body.outer:                                 ; preds = %if.else57, %if.then55, %flush_RL.exit, %entry
  %progress_out.0.ph = phi i8 [ 0, %entry ], [ %progress_out.1131, %flush_RL.exit ], [ %progress_out.1131, %if.then55 ], [ %progress_out.1131, %if.else57 ]
  %progress_in.0.ph = phi i8 [ 0, %entry ], [ %or3896, %flush_RL.exit ], [ %or3896, %if.then55 ], [ %or3896, %if.else57 ]
  %.pre = load i32* %2, align 4, !dbg !726, !tbaa !651
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.outer
  switch i32 %.pre, label %while.body [
    i32 1, label %if.then
    i32 2, label %if.end30.if.then34_crit_edge
  ], !dbg !726

if.then:                                          ; preds = %while.body
  tail call void @llvm.dbg.value(metadata !{%struct.EState* %1}, i64 0, metadata !747), !dbg !748
  tail call void @llvm.dbg.value(metadata !722, i64 0, metadata !749), !dbg !750
  %16 = load %struct.bz_stream** %strm.i, align 8, !dbg !732, !tbaa !615
  %avail_out31.i = getelementptr inbounds %struct.bz_stream* %16, i64 0, i32 5, !dbg !732
  %17 = load i32* %avail_out31.i, align 4, !dbg !732, !tbaa !651
  %cmp32.i = icmp eq i32 %17, 0, !dbg !732
  br i1 %cmp32.i, label %copy_output_until_stop.exit, label %if.end.i, !dbg !732

if.end.i:                                         ; preds = %while.body.backedge.i, %if.then
  %18 = phi %struct.bz_stream* [ %16, %if.then ], [ %28, %while.body.backedge.i ]
  %progress_out.033.i = phi i8 [ 0, %if.then ], [ 1, %while.body.backedge.i ]
  %19 = load i32* %3, align 4, !dbg !728, !tbaa !651
  %20 = load i32* %4, align 4, !dbg !728, !tbaa !651
  %cmp1.i = icmp slt i32 %19, %20, !dbg !728
  br i1 %cmp1.i, label %if.end3.i, label %copy_output_until_stop.exit, !dbg !728

if.end3.i:                                        ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata !751, i64 0, metadata !749), !dbg !752
  %idxprom.i = sext i32 %19 to i64, !dbg !741
  %21 = load i8** %13, align 8, !dbg !741, !tbaa !615
  %arrayidx.i = getelementptr inbounds i8* %21, i64 %idxprom.i, !dbg !741
  %22 = load i8* %arrayidx.i, align 1, !dbg !741, !tbaa !616
  %next_out.i = getelementptr inbounds %struct.bz_stream* %18, i64 0, i32 4, !dbg !741
  %23 = load i8** %next_out.i, align 8, !dbg !741, !tbaa !615
  store i8 %22, i8* %23, align 1, !dbg !741, !tbaa !616
  %24 = load i32* %3, align 4, !dbg !753, !tbaa !651
  %inc.i = add nsw i32 %24, 1, !dbg !753
  store i32 %inc.i, i32* %3, align 4, !dbg !753, !tbaa !651
  %25 = load %struct.bz_stream** %strm.i, align 8, !dbg !754, !tbaa !615
  %avail_out8.i = getelementptr inbounds %struct.bz_stream* %25, i64 0, i32 5, !dbg !754
  %26 = load i32* %avail_out8.i, align 4, !dbg !754, !tbaa !651
  %dec.i = add i32 %26, -1, !dbg !754
  store i32 %dec.i, i32* %avail_out8.i, align 4, !dbg !754, !tbaa !651
  %next_out10.i = getelementptr inbounds %struct.bz_stream* %25, i64 0, i32 4, !dbg !755
  %27 = load i8** %next_out10.i, align 8, !dbg !755, !tbaa !615
  %incdec.ptr.i = getelementptr inbounds i8* %27, i64 1, !dbg !755
  store i8* %incdec.ptr.i, i8** %next_out10.i, align 8, !dbg !755, !tbaa !615
  %28 = load %struct.bz_stream** %strm.i, align 8, !dbg !756, !tbaa !615
  %total_out_lo32.i = getelementptr inbounds %struct.bz_stream* %28, i64 0, i32 6, !dbg !756
  %29 = load i32* %total_out_lo32.i, align 4, !dbg !756, !tbaa !651
  %inc12.i = add i32 %29, 1, !dbg !756
  store i32 %inc12.i, i32* %total_out_lo32.i, align 4, !dbg !756, !tbaa !651
  %cmp15.i = icmp eq i32 %inc12.i, 0, !dbg !757
  br i1 %cmp15.i, label %if.then16.i, label %while.body.backedge.i, !dbg !757

if.then16.i:                                      ; preds = %if.end3.i
  %total_out_hi32.i = getelementptr inbounds %struct.bz_stream* %28, i64 0, i32 7, !dbg !757
  %30 = load i32* %total_out_hi32.i, align 4, !dbg !757, !tbaa !651
  %inc18.i = add i32 %30, 1, !dbg !757
  store i32 %inc18.i, i32* %total_out_hi32.i, align 4, !dbg !757, !tbaa !651
  br label %while.body.backedge.i, !dbg !757

while.body.backedge.i:                            ; preds = %if.then16.i, %if.end3.i
  %avail_out.i = getelementptr inbounds %struct.bz_stream* %28, i64 0, i32 5, !dbg !732
  %31 = load i32* %avail_out.i, align 4, !dbg !732, !tbaa !651
  %cmp.i = icmp eq i32 %31, 0, !dbg !732
  br i1 %cmp.i, label %copy_output_until_stop.exit, label %if.end.i, !dbg !732

copy_output_until_stop.exit:                      ; preds = %if.end.i, %while.body.backedge.i, %if.then
  %progress_out.0.lcssa.i = phi i8 [ 0, %if.then ], [ %progress_out.033.i, %if.end.i ], [ 1, %while.body.backedge.i ]
  %or97 = or i8 %progress_out.0.lcssa.i, %progress_out.0.ph, !dbg !730
  tail call void @llvm.dbg.value(metadata !{i8 %or97}, i64 0, metadata !556), !dbg !730
  %32 = load i32* %3, align 4, !dbg !733, !tbaa !651
  %33 = load i32* %4, align 4, !dbg !733, !tbaa !651
  %cmp4 = icmp slt i32 %32, %33, !dbg !733
  br i1 %cmp4, label %while.end, label %if.end, !dbg !733

if.end:                                           ; preds = %copy_output_until_stop.exit
  %34 = load i32* %5, align 4, !dbg !734, !tbaa !651
  %cmp7 = icmp eq i32 %34, 4, !dbg !734
  br i1 %cmp7, label %land.lhs.true, label %if.end15, !dbg !734

land.lhs.true:                                    ; preds = %if.end
  %35 = load i32* %6, align 4, !dbg !734, !tbaa !651
  %cmp9 = icmp eq i32 %35, 0, !dbg !734
  br i1 %cmp9, label %land.lhs.true11, label %if.end15, !dbg !734

land.lhs.true11:                                  ; preds = %land.lhs.true
  tail call void @llvm.dbg.value(metadata !{%struct.EState* %1}, i64 0, metadata !758), !dbg !759
  %36 = load i32* %7, align 4, !dbg !735, !tbaa !651
  %cmp.i101 = icmp ult i32 %36, 256, !dbg !735
  br i1 %cmp.i101, label %land.lhs.true.i, label %while.end, !dbg !735

land.lhs.true.i:                                  ; preds = %land.lhs.true11
  %37 = load i32* %8, align 4, !dbg !735, !tbaa !651
  %cmp1.i102 = icmp sgt i32 %37, 0, !dbg !735
  br i1 %cmp1.i102, label %if.end15, label %while.end, !dbg !735

if.end15:                                         ; preds = %land.lhs.true.i, %land.lhs.true, %if.end
  tail call void @llvm.dbg.value(metadata !{%struct.EState* %1}, i64 0, metadata !760) #9, !dbg !761
  store i32 0, i32* %9, align 4, !dbg !737, !tbaa !651
  store i32 0, i32* %4, align 4, !dbg !762, !tbaa !651
  store i32 0, i32* %3, align 4, !dbg !763, !tbaa !651
  store i32 -1, i32* %10, align 4, !dbg !739, !tbaa !651
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !764) #9, !dbg !765
  tail call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 256, i32 1, i1 false) #9, !dbg !765
  %38 = load i32* %12, align 4, !dbg !740, !tbaa !651
  %inc1.i = add nsw i32 %38, 1, !dbg !740
  store i32 %inc1.i, i32* %12, align 4, !dbg !740, !tbaa !651
  store i32 2, i32* %2, align 4, !dbg !766, !tbaa !651
  %cmp18 = icmp eq i32 %34, 3, !dbg !767
  br i1 %cmp18, label %land.lhs.true20, label %if.then34, !dbg !767

land.lhs.true20:                                  ; preds = %if.end15
  %39 = load i32* %6, align 4, !dbg !767, !tbaa !651
  %cmp22 = icmp eq i32 %39, 0, !dbg !767
  br i1 %cmp22, label %land.lhs.true24, label %if.end30.if.then34_crit_edge, !dbg !767

land.lhs.true24:                                  ; preds = %land.lhs.true20
  tail call void @llvm.dbg.value(metadata !{%struct.EState* %1}, i64 0, metadata !768), !dbg !770
  %40 = load i32* %7, align 4, !dbg !771, !tbaa !651
  %cmp.i121 = icmp ult i32 %40, 256, !dbg !771
  br i1 %cmp.i121, label %land.lhs.true.i124, label %while.end, !dbg !771

land.lhs.true.i124:                               ; preds = %land.lhs.true24
  %41 = load i32* %8, align 4, !dbg !771, !tbaa !651
  %cmp1.i123 = icmp sgt i32 %41, 0, !dbg !771
  br i1 %cmp1.i123, label %if.end30.if.then34_crit_edge, label %while.end, !dbg !771

if.end30.if.then34_crit_edge:                     ; preds = %while.body, %land.lhs.true20, %land.lhs.true.i124
  %progress_out.1141 = phi i8 [ %or97, %land.lhs.true.i124 ], [ %or97, %land.lhs.true20 ], [ %progress_out.0.ph, %while.body ]
  %.pre139 = load i32* %5, align 4, !dbg !772, !tbaa !651
  br label %if.then34, !dbg !773

if.then34:                                        ; preds = %if.end30.if.then34_crit_edge, %if.end15
  %42 = phi i32 [ %.pre139, %if.end30.if.then34_crit_edge ], [ %34, %if.end15 ]
  %progress_out.1131 = phi i8 [ %progress_out.1141, %if.end30.if.then34_crit_edge ], [ %or97, %if.end15 ]
  tail call void @llvm.dbg.value(metadata !{%struct.EState* %1}, i64 0, metadata !774) #9, !dbg !775
  tail call void @llvm.dbg.value(metadata !722, i64 0, metadata !776) #9, !dbg !777
  %cmp.i103 = icmp eq i32 %42, 2, !dbg !772
  %43 = load i32* %9, align 4, !dbg !742, !tbaa !651
  %44 = load i32* %14, align 4, !dbg !742, !tbaa !651
  %cmp1223.i = icmp slt i32 %43, %44, !dbg !742
  br i1 %cmp.i103, label %while.body.preheader.i, label %while.body60.preheader.i, !dbg !772

while.body60.preheader.i:                         ; preds = %if.then34
  br i1 %cmp1223.i, label %if.end66.lr.ph.i, label %copy_input_until_stop.exit, !dbg !778

if.end66.lr.ph.i:                                 ; preds = %while.body60.preheader.i
  %.pre231.i = load %struct.bz_stream** %strm.i, align 8, !dbg !779, !tbaa !615
  br label %if.end66.i, !dbg !778

while.body.preheader.i:                           ; preds = %if.then34
  br i1 %cmp1223.i, label %if.end.lr.ph.i106, label %copy_input_until_stop.exit, !dbg !742

if.end.lr.ph.i106:                                ; preds = %while.body.preheader.i
  %.pre.i = load %struct.bz_stream** %strm.i, align 8, !dbg !780, !tbaa !615
  %avail_in.phi.trans.insert.i = getelementptr inbounds %struct.bz_stream* %.pre.i, i64 0, i32 1
  %.pre232.i = load i32* %avail_in.phi.trans.insert.i, align 4, !dbg !780, !tbaa !651
  br label %if.end.i107, !dbg !742

if.end.i107:                                      ; preds = %while.body.backedge.i115, %if.end.lr.ph.i106
  %45 = phi i32 [ %44, %if.end.lr.ph.i106 ], [ %65, %while.body.backedge.i115 ]
  %46 = phi i32 [ %43, %if.end.lr.ph.i106 ], [ %64, %while.body.backedge.i115 ]
  %47 = phi i32 [ %.pre232.i, %if.end.lr.ph.i106 ], [ %dec.i113, %while.body.backedge.i115 ]
  %48 = phi %struct.bz_stream* [ %.pre.i, %if.end.lr.ph.i106 ], [ %60, %while.body.backedge.i115 ]
  %progress_in.0224.i = phi i8 [ 0, %if.end.lr.ph.i106 ], [ 1, %while.body.backedge.i115 ]
  %cmp3.i = icmp eq i32 %47, 0, !dbg !780
  br i1 %cmp3.i, label %copy_input_until_stop.exit, label %if.end5.i, !dbg !780

if.end5.i:                                        ; preds = %if.end.i107
  tail call void @llvm.dbg.value(metadata !751, i64 0, metadata !776) #9, !dbg !781
  %next_in.i = getelementptr inbounds %struct.bz_stream* %48, i64 0, i32 0, !dbg !782
  %49 = load i8** %next_in.i, align 8, !dbg !782, !tbaa !615
  %50 = load i8* %49, align 1, !dbg !782, !tbaa !616
  %conv.i = zext i8 %50 to i32, !dbg !782
  tail call void @llvm.dbg.value(metadata !{i32 %conv.i}, i64 0, metadata !783) #9, !dbg !782
  %51 = load i32* %7, align 4, !dbg !782, !tbaa !651
  %cmp7.i = icmp eq i32 %conv.i, %51, !dbg !782
  %52 = load i32* %8, align 4, !dbg !782, !tbaa !651
  br i1 %cmp7.i, label %lor.lhs.false.i, label %land.lhs.true.i108, !dbg !782

land.lhs.true.i108:                               ; preds = %if.end5.i
  %cmp9.i = icmp eq i32 %52, 1, !dbg !782
  br i1 %cmp9.i, label %if.then11.i, label %if.then32.i, !dbg !782

if.then11.i:                                      ; preds = %land.lhs.true.i108
  %conv13.i = trunc i32 %51 to i8, !dbg !745
  tail call void @llvm.dbg.value(metadata !{i8 %conv13.i}, i64 0, metadata !784) #9, !dbg !745
  %53 = load i32* %10, align 4, !dbg !785, !tbaa !651
  %shl.i = shl i32 %53, 8, !dbg !785
  %shr.i = lshr i32 %53, 24, !dbg !785
  %conv15.i = and i32 %51, 255, !dbg !785
  %xor.i = xor i32 %shr.i, %conv15.i, !dbg !785
  %idxprom.i109 = zext i32 %xor.i to i64, !dbg !785
  %arrayidx.i110 = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom.i109, !dbg !785
  %54 = load i32* %arrayidx.i110, align 4, !dbg !785, !tbaa !651
  %xor16.i = xor i32 %shl.i, %54, !dbg !785
  store i32 %xor16.i, i32* %10, align 4, !dbg !785, !tbaa !651
  %idxprom19.i = zext i32 %51 to i64, !dbg !745
  %arrayidx20.i = getelementptr inbounds %struct.EState* %1, i64 0, i32 22, i64 %idxprom19.i, !dbg !745
  store i8 1, i8* %arrayidx20.i, align 1, !dbg !745, !tbaa !616
  %55 = load i32* %9, align 4, !dbg !745, !tbaa !651
  %idxprom22.i = sext i32 %55 to i64, !dbg !745
  %56 = load i8** %15, align 8, !dbg !745, !tbaa !615
  %arrayidx23.i = getelementptr inbounds i8* %56, i64 %idxprom22.i, !dbg !745
  store i8 %conv13.i, i8* %arrayidx23.i, align 1, !dbg !745, !tbaa !616
  %57 = load i32* %9, align 4, !dbg !745, !tbaa !651
  %inc.i111 = add nsw i32 %57, 1, !dbg !745
  store i32 %inc.i111, i32* %9, align 4, !dbg !745, !tbaa !651
  store i32 %conv.i, i32* %7, align 4, !dbg !745, !tbaa !651
  br label %if.end44.i, !dbg !745

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %cmp30.i = icmp eq i32 %52, 255, !dbg !782
  br i1 %cmp30.i, label %if.then32.i, label %if.else40.i, !dbg !782

if.then32.i:                                      ; preds = %lor.lhs.false.i, %land.lhs.true.i108
  %cmp34.i = icmp ult i32 %51, 256, !dbg !787
  br i1 %cmp34.i, label %if.then36.i, label %if.end37.i, !dbg !787

if.then36.i:                                      ; preds = %if.then32.i
  tail call fastcc void @add_pair_to_block(%struct.EState* %1) #12, !dbg !787
  br label %if.end37.i, !dbg !787

if.end37.i:                                       ; preds = %if.then36.i, %if.then32.i
  store i32 %conv.i, i32* %7, align 4, !dbg !787, !tbaa !651
  store i32 1, i32* %8, align 4, !dbg !787, !tbaa !651
  br label %if.end44.i, !dbg !787

if.else40.i:                                      ; preds = %lor.lhs.false.i
  %inc42.i = add nsw i32 %52, 1, !dbg !789
  store i32 %inc42.i, i32* %8, align 4, !dbg !789, !tbaa !651
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else40.i, %if.end37.i, %if.then11.i
  %58 = load %struct.bz_stream** %strm.i, align 8, !dbg !791, !tbaa !615
  %next_in46.i = getelementptr inbounds %struct.bz_stream* %58, i64 0, i32 0, !dbg !791
  %59 = load i8** %next_in46.i, align 8, !dbg !791, !tbaa !615
  %incdec.ptr.i112 = getelementptr inbounds i8* %59, i64 1, !dbg !791
  store i8* %incdec.ptr.i112, i8** %next_in46.i, align 8, !dbg !791, !tbaa !615
  %60 = load %struct.bz_stream** %strm.i, align 8, !dbg !792, !tbaa !615
  %avail_in48.i = getelementptr inbounds %struct.bz_stream* %60, i64 0, i32 1, !dbg !792
  %61 = load i32* %avail_in48.i, align 4, !dbg !792, !tbaa !651
  %dec.i113 = add i32 %61, -1, !dbg !792
  store i32 %dec.i113, i32* %avail_in48.i, align 4, !dbg !792, !tbaa !651
  %total_in_lo32.i = getelementptr inbounds %struct.bz_stream* %60, i64 0, i32 2, !dbg !793
  %62 = load i32* %total_in_lo32.i, align 4, !dbg !793, !tbaa !651
  %inc50.i = add i32 %62, 1, !dbg !793
  store i32 %inc50.i, i32* %total_in_lo32.i, align 4, !dbg !793, !tbaa !651
  %cmp53.i = icmp eq i32 %inc50.i, 0, !dbg !794
  br i1 %cmp53.i, label %if.then55.i, label %while.body.backedge.i115, !dbg !794

if.then55.i:                                      ; preds = %if.end44.i
  %total_in_hi32.i = getelementptr inbounds %struct.bz_stream* %60, i64 0, i32 3, !dbg !794
  %63 = load i32* %total_in_hi32.i, align 4, !dbg !794, !tbaa !651
  %inc57.i = add i32 %63, 1, !dbg !794
  store i32 %inc57.i, i32* %total_in_hi32.i, align 4, !dbg !794, !tbaa !651
  br label %while.body.backedge.i115, !dbg !794

while.body.backedge.i115:                         ; preds = %if.then55.i, %if.end44.i
  %64 = load i32* %9, align 4, !dbg !742, !tbaa !651
  %65 = load i32* %14, align 4, !dbg !742, !tbaa !651
  %cmp1.i114 = icmp slt i32 %64, %65, !dbg !742
  br i1 %cmp1.i114, label %if.end.i107, label %copy_input_until_stop.exit, !dbg !742

if.end66.i:                                       ; preds = %if.end151.i, %if.end66.lr.ph.i
  %66 = phi i32 [ %44, %if.end66.lr.ph.i ], [ %88, %if.end151.i ]
  %67 = phi i32 [ %43, %if.end66.lr.ph.i ], [ %87, %if.end151.i ]
  %68 = phi %struct.bz_stream* [ %.pre231.i, %if.end66.lr.ph.i ], [ %82, %if.end151.i ]
  %progress_in.1227.i = phi i8 [ 0, %if.end66.lr.ph.i ], [ 1, %if.end151.i ]
  %avail_in68.i = getelementptr inbounds %struct.bz_stream* %68, i64 0, i32 1, !dbg !779
  %69 = load i32* %avail_in68.i, align 4, !dbg !779, !tbaa !651
  %cmp69.i = icmp eq i32 %69, 0, !dbg !779
  br i1 %cmp69.i, label %copy_input_until_stop.exit, label %if.end72.i, !dbg !779

if.end72.i:                                       ; preds = %if.end66.i
  %70 = load i32* %6, align 4, !dbg !795, !tbaa !651
  %cmp73.i = icmp eq i32 %70, 0, !dbg !795
  br i1 %cmp73.i, label %copy_input_until_stop.exit, label %if.end76.i, !dbg !795

if.end76.i:                                       ; preds = %if.end72.i
  tail call void @llvm.dbg.value(metadata !751, i64 0, metadata !776) #9, !dbg !796
  %next_in79.i = getelementptr inbounds %struct.bz_stream* %68, i64 0, i32 0, !dbg !797
  %71 = load i8** %next_in79.i, align 8, !dbg !797, !tbaa !615
  %72 = load i8* %71, align 1, !dbg !797, !tbaa !616
  %conv80.i = zext i8 %72 to i32, !dbg !797
  tail call void @llvm.dbg.value(metadata !{i32 %conv80.i}, i64 0, metadata !798) #9, !dbg !797
  %73 = load i32* %7, align 4, !dbg !797, !tbaa !651
  %cmp82.i = icmp eq i32 %conv80.i, %73, !dbg !797
  %74 = load i32* %8, align 4, !dbg !797, !tbaa !651
  br i1 %cmp82.i, label %lor.lhs.false117.i, label %land.lhs.true84.i, !dbg !797

land.lhs.true84.i:                                ; preds = %if.end76.i
  %cmp86.i = icmp eq i32 %74, 1, !dbg !797
  br i1 %cmp86.i, label %if.then88.i, label %if.then121.i, !dbg !797

if.then88.i:                                      ; preds = %land.lhs.true84.i
  %conv91.i = trunc i32 %73 to i8, !dbg !799
  tail call void @llvm.dbg.value(metadata !{i8 %conv91.i}, i64 0, metadata !800) #9, !dbg !799
  %75 = load i32* %10, align 4, !dbg !801, !tbaa !651
  %shl93.i = shl i32 %75, 8, !dbg !801
  %shr95.i = lshr i32 %75, 24, !dbg !801
  %conv96.i = and i32 %73, 255, !dbg !801
  %xor97.i = xor i32 %shr95.i, %conv96.i, !dbg !801
  %idxprom98.i = zext i32 %xor97.i to i64, !dbg !801
  %arrayidx99.i = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom98.i, !dbg !801
  %76 = load i32* %arrayidx99.i, align 4, !dbg !801, !tbaa !651
  %xor100.i = xor i32 %shl93.i, %76, !dbg !801
  store i32 %xor100.i, i32* %10, align 4, !dbg !801, !tbaa !651
  %idxprom103.i = zext i32 %73 to i64, !dbg !799
  %arrayidx105.i = getelementptr inbounds %struct.EState* %1, i64 0, i32 22, i64 %idxprom103.i, !dbg !799
  store i8 1, i8* %arrayidx105.i, align 1, !dbg !799, !tbaa !616
  %77 = load i32* %9, align 4, !dbg !799, !tbaa !651
  %idxprom107.i = sext i32 %77 to i64, !dbg !799
  %78 = load i8** %15, align 8, !dbg !799, !tbaa !615
  %arrayidx109.i = getelementptr inbounds i8* %78, i64 %idxprom107.i, !dbg !799
  store i8 %conv91.i, i8* %arrayidx109.i, align 1, !dbg !799, !tbaa !616
  %79 = load i32* %9, align 4, !dbg !799, !tbaa !651
  %inc111.i = add nsw i32 %79, 1, !dbg !799
  store i32 %inc111.i, i32* %9, align 4, !dbg !799, !tbaa !651
  store i32 %conv80.i, i32* %7, align 4, !dbg !799, !tbaa !651
  br label %if.end133.i, !dbg !799

lor.lhs.false117.i:                               ; preds = %if.end76.i
  %cmp119.i = icmp eq i32 %74, 255, !dbg !797
  br i1 %cmp119.i, label %if.then121.i, label %if.else129.i, !dbg !797

if.then121.i:                                     ; preds = %lor.lhs.false117.i, %land.lhs.true84.i
  %cmp123.i = icmp ult i32 %73, 256, !dbg !803
  br i1 %cmp123.i, label %if.then125.i, label %if.end126.i, !dbg !803

if.then125.i:                                     ; preds = %if.then121.i
  tail call fastcc void @add_pair_to_block(%struct.EState* %1) #12, !dbg !803
  br label %if.end126.i, !dbg !803

if.end126.i:                                      ; preds = %if.then125.i, %if.then121.i
  store i32 %conv80.i, i32* %7, align 4, !dbg !803, !tbaa !651
  store i32 1, i32* %8, align 4, !dbg !803, !tbaa !651
  br label %if.end133.i, !dbg !803

if.else129.i:                                     ; preds = %lor.lhs.false117.i
  %inc131.i = add nsw i32 %74, 1, !dbg !805
  store i32 %inc131.i, i32* %8, align 4, !dbg !805, !tbaa !651
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.else129.i, %if.end126.i, %if.then88.i
  %80 = load %struct.bz_stream** %strm.i, align 8, !dbg !807, !tbaa !615
  %next_in135.i = getelementptr inbounds %struct.bz_stream* %80, i64 0, i32 0, !dbg !807
  %81 = load i8** %next_in135.i, align 8, !dbg !807, !tbaa !615
  %incdec.ptr136.i = getelementptr inbounds i8* %81, i64 1, !dbg !807
  store i8* %incdec.ptr136.i, i8** %next_in135.i, align 8, !dbg !807, !tbaa !615
  %82 = load %struct.bz_stream** %strm.i, align 8, !dbg !808, !tbaa !615
  %avail_in138.i = getelementptr inbounds %struct.bz_stream* %82, i64 0, i32 1, !dbg !808
  %83 = load i32* %avail_in138.i, align 4, !dbg !808, !tbaa !651
  %dec139.i = add i32 %83, -1, !dbg !808
  store i32 %dec139.i, i32* %avail_in138.i, align 4, !dbg !808, !tbaa !651
  %total_in_lo32141.i = getelementptr inbounds %struct.bz_stream* %82, i64 0, i32 2, !dbg !809
  %84 = load i32* %total_in_lo32141.i, align 4, !dbg !809, !tbaa !651
  %inc142.i = add i32 %84, 1, !dbg !809
  store i32 %inc142.i, i32* %total_in_lo32141.i, align 4, !dbg !809, !tbaa !651
  %cmp145.i = icmp eq i32 %inc142.i, 0, !dbg !810
  br i1 %cmp145.i, label %if.then147.i, label %if.end151.i, !dbg !810

if.then147.i:                                     ; preds = %if.end133.i
  %total_in_hi32149.i = getelementptr inbounds %struct.bz_stream* %82, i64 0, i32 3, !dbg !810
  %85 = load i32* %total_in_hi32149.i, align 4, !dbg !810, !tbaa !651
  %inc150.i = add i32 %85, 1, !dbg !810
  store i32 %inc150.i, i32* %total_in_hi32149.i, align 4, !dbg !810, !tbaa !651
  br label %if.end151.i, !dbg !810

if.end151.i:                                      ; preds = %if.then147.i, %if.end133.i
  %86 = load i32* %6, align 4, !dbg !811, !tbaa !651
  %dec153.i = add i32 %86, -1, !dbg !811
  store i32 %dec153.i, i32* %6, align 4, !dbg !811, !tbaa !651
  %87 = load i32* %9, align 4, !dbg !778, !tbaa !651
  %88 = load i32* %14, align 4, !dbg !778, !tbaa !651
  %cmp63.i = icmp slt i32 %87, %88, !dbg !778
  br i1 %cmp63.i, label %if.end66.i, label %copy_input_until_stop.exit, !dbg !778

copy_input_until_stop.exit:                       ; preds = %if.end.i107, %while.body.backedge.i115, %if.end66.i, %if.end72.i, %if.end151.i, %while.body60.preheader.i, %while.body.preheader.i
  %89 = phi i32 [ %44, %while.body.preheader.i ], [ %44, %while.body60.preheader.i ], [ %66, %if.end66.i ], [ %66, %if.end72.i ], [ %88, %if.end151.i ], [ %45, %if.end.i107 ], [ %65, %while.body.backedge.i115 ]
  %90 = phi i32 [ %43, %while.body.preheader.i ], [ %43, %while.body60.preheader.i ], [ %67, %if.end66.i ], [ %67, %if.end72.i ], [ %87, %if.end151.i ], [ %46, %if.end.i107 ], [ %64, %while.body.backedge.i115 ]
  %progress_in.2.i = phi i8 [ 0, %while.body.preheader.i ], [ 0, %while.body60.preheader.i ], [ %progress_in.1227.i, %if.end66.i ], [ %progress_in.1227.i, %if.end72.i ], [ 1, %if.end151.i ], [ %progress_in.0224.i, %if.end.i107 ], [ 1, %while.body.backedge.i115 ]
  %or3896 = or i8 %progress_in.2.i, %progress_in.0.ph, !dbg !743
  tail call void @llvm.dbg.value(metadata !{i8 %or3896}, i64 0, metadata !555), !dbg !743
  %91 = load i32* %5, align 4, !dbg !812, !tbaa !651
  %cmp41 = icmp eq i32 %91, 2, !dbg !812
  br i1 %cmp41, label %if.else, label %land.lhs.true43, !dbg !812

land.lhs.true43:                                  ; preds = %copy_input_until_stop.exit
  %92 = load i32* %6, align 4, !dbg !812, !tbaa !651
  %cmp45 = icmp eq i32 %92, 0, !dbg !812
  br i1 %cmp45, label %if.then47, label %if.else, !dbg !812

if.then47:                                        ; preds = %land.lhs.true43
  tail call void @llvm.dbg.value(metadata !{%struct.EState* %1}, i64 0, metadata !813) #9, !dbg !816
  %93 = load i32* %7, align 4, !dbg !817, !tbaa !651
  %cmp.i98 = icmp ult i32 %93, 256, !dbg !817
  br i1 %cmp.i98, label %if.then.i, label %flush_RL.exit, !dbg !817

if.then.i:                                        ; preds = %if.then47
  tail call fastcc void @add_pair_to_block(%struct.EState* %1) #12, !dbg !817
  %.pre138 = load i32* %5, align 4, !dbg !818, !tbaa !651
  br label %flush_RL.exit, !dbg !817

flush_RL.exit:                                    ; preds = %if.then47, %if.then.i
  %94 = phi i32 [ %91, %if.then47 ], [ %.pre138, %if.then.i ]
  tail call void @llvm.dbg.value(metadata !{%struct.EState* %1}, i64 0, metadata !819) #9, !dbg !821
  store i32 256, i32* %7, align 4, !dbg !822, !tbaa !651
  store i32 0, i32* %8, align 4, !dbg !823, !tbaa !651
  %cmp49 = icmp eq i32 %94, 4, !dbg !818
  %conv51 = zext i1 %cmp49 to i8, !dbg !818
  tail call void @BZ2_compressBlock(%struct.EState* %1, i8 zeroext %conv51) #12, !dbg !818
  store i32 1, i32* %2, align 4, !dbg !824, !tbaa !651
  br label %while.body.outer, !dbg !825

if.else:                                          ; preds = %copy_input_until_stop.exit, %land.lhs.true43
  %cmp53 = icmp slt i32 %90, %89, !dbg !826
  br i1 %cmp53, label %if.else57, label %if.then55, !dbg !826

if.then55:                                        ; preds = %if.else
  tail call void @BZ2_compressBlock(%struct.EState* %1, i8 zeroext 0) #12, !dbg !827
  store i32 1, i32* %2, align 4, !dbg !829, !tbaa !651
  br label %while.body.outer, !dbg !830

if.else57:                                        ; preds = %if.else
  %95 = load %struct.bz_stream** %strm.i, align 8, !dbg !831, !tbaa !615
  %avail_in = getelementptr inbounds %struct.bz_stream* %95, i64 0, i32 1, !dbg !831
  %96 = load i32* %avail_in, align 4, !dbg !831, !tbaa !651
  %cmp59 = icmp eq i32 %96, 0, !dbg !831
  br i1 %cmp59, label %while.end, label %while.body.outer, !dbg !831

while.end:                                        ; preds = %if.else57, %land.lhs.true.i124, %land.lhs.true24, %land.lhs.true.i, %land.lhs.true11, %copy_output_until_stop.exit
  %progress_out.2 = phi i8 [ %or97, %copy_output_until_stop.exit ], [ %or97, %land.lhs.true11 ], [ %or97, %land.lhs.true.i ], [ %or97, %land.lhs.true24 ], [ %or97, %land.lhs.true.i124 ], [ %progress_out.1131, %if.else57 ]
  %progress_in.1 = phi i8 [ %progress_in.0.ph, %copy_output_until_stop.exit ], [ %progress_in.0.ph, %land.lhs.true11 ], [ %progress_in.0.ph, %land.lhs.true.i ], [ %progress_in.0.ph, %land.lhs.true24 ], [ %progress_in.0.ph, %land.lhs.true.i124 ], [ %or3896, %if.else57 ]
  %97 = or i8 %progress_in.1, %progress_out.2, !dbg !832
  %98 = icmp ne i8 %97, 0, !dbg !832
  %conv70 = zext i1 %98 to i8, !dbg !832
  ret i8 %conv70, !dbg !832
}

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.bz_stream* %strm}, i64 0, metadata !147), !dbg !833
  %cmp = icmp eq %struct.bz_stream* %strm, null, !dbg !834
  br i1 %cmp, label %return, label %if.end, !dbg !834

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8, !dbg !835
  %0 = load i8** %state, align 8, !dbg !835, !tbaa !615
  %cmp1 = icmp eq i8* %0, null, !dbg !836
  br i1 %cmp1, label %return, label %if.end3, !dbg !836

if.end3:                                          ; preds = %if.end
  %strm4 = bitcast i8* %0 to %struct.bz_stream**, !dbg !837
  %1 = load %struct.bz_stream** %strm4, align 8, !dbg !837, !tbaa !615
  %cmp5 = icmp eq %struct.bz_stream* %1, %strm, !dbg !837
  br i1 %cmp5, label %if.end7, label %return, !dbg !837

if.end7:                                          ; preds = %if.end3
  %arr1 = getelementptr inbounds i8* %0, i64 24, !dbg !838
  %2 = bitcast i8* %arr1 to i32**, !dbg !838
  %3 = load i32** %2, align 8, !dbg !838, !tbaa !615
  %cmp8 = icmp eq i32* %3, null, !dbg !838
  br i1 %cmp8, label %if.end11, label %if.then9, !dbg !838

if.then9:                                         ; preds = %if.end7
  %bzfree = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10, !dbg !838
  %4 = load void (i8*, i8*)** %bzfree, align 8, !dbg !838, !tbaa !615
  %opaque = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11, !dbg !838
  %5 = load i8** %opaque, align 8, !dbg !838, !tbaa !615
  %6 = bitcast i32* %3 to i8*, !dbg !838
  tail call void %4(i8* %5, i8* %6) #12, !dbg !838
  br label %if.end11, !dbg !838

if.end11:                                         ; preds = %if.end7, %if.then9
  %arr2 = getelementptr inbounds i8* %0, i64 32, !dbg !839
  %7 = bitcast i8* %arr2 to i32**, !dbg !839
  %8 = load i32** %7, align 8, !dbg !839, !tbaa !615
  %cmp12 = icmp eq i32* %8, null, !dbg !839
  br i1 %cmp12, label %if.end17, label %if.then13, !dbg !839

if.then13:                                        ; preds = %if.end11
  %bzfree14 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10, !dbg !839
  %9 = load void (i8*, i8*)** %bzfree14, align 8, !dbg !839, !tbaa !615
  %opaque15 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11, !dbg !839
  %10 = load i8** %opaque15, align 8, !dbg !839, !tbaa !615
  %11 = bitcast i32* %8 to i8*, !dbg !839
  tail call void %9(i8* %10, i8* %11) #12, !dbg !839
  br label %if.end17, !dbg !839

if.end17:                                         ; preds = %if.end11, %if.then13
  %ftab = getelementptr inbounds i8* %0, i64 40, !dbg !840
  %12 = bitcast i8* %ftab to i32**, !dbg !840
  %13 = load i32** %12, align 8, !dbg !840, !tbaa !615
  %cmp18 = icmp eq i32* %13, null, !dbg !840
  %bzfree24.pre = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10, !dbg !841
  br i1 %cmp18, label %if.end17.if.end23_crit_edge, label %if.then19, !dbg !840

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  %opaque25.pre = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11, !dbg !841
  br label %if.end23, !dbg !840

if.then19:                                        ; preds = %if.end17
  %14 = load void (i8*, i8*)** %bzfree24.pre, align 8, !dbg !840, !tbaa !615
  %opaque21 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11, !dbg !840
  %15 = load i8** %opaque21, align 8, !dbg !840, !tbaa !615
  %16 = bitcast i32* %13 to i8*, !dbg !840
  tail call void %14(i8* %15, i8* %16) #12, !dbg !840
  br label %if.end23, !dbg !840

if.end23:                                         ; preds = %if.end17.if.end23_crit_edge, %if.then19
  %opaque25.pre-phi = phi i8** [ %opaque25.pre, %if.end17.if.end23_crit_edge ], [ %opaque21, %if.then19 ], !dbg !841
  %17 = load void (i8*, i8*)** %bzfree24.pre, align 8, !dbg !841, !tbaa !615
  %18 = load i8** %opaque25.pre-phi, align 8, !dbg !841, !tbaa !615
  %19 = load i8** %state, align 8, !dbg !841, !tbaa !615
  tail call void %17(i8* %18, i8* %19) #12, !dbg !841
  store i8* null, i8** %state, align 8, !dbg !842, !tbaa !615
  br label %return, !dbg !843

return:                                           ; preds = %if.end3, %if.end, %entry, %if.end23
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -2, %entry ], [ -2, %if.end ], [ -2, %if.end3 ]
  ret i32 %retval.0, !dbg !843
}

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzDecompressInit(%struct.bz_stream* %strm, i32 %verbosity, i32 %small) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.bz_stream* %strm}, i64 0, metadata !153), !dbg !844
  tail call void @llvm.dbg.value(metadata !{i32 %verbosity}, i64 0, metadata !154), !dbg !845
  tail call void @llvm.dbg.value(metadata !{i32 %small}, i64 0, metadata !155), !dbg !846
  %cmp = icmp eq %struct.bz_stream* %strm, null, !dbg !847
  %0 = icmp ugt i32 %small, 1, !dbg !848
  %or.cond = or i1 %cmp, %0, !dbg !847
  %1 = icmp ugt i32 %verbosity, 4, !dbg !849
  %or.cond56 = or i1 %or.cond, %1, !dbg !847
  br i1 %or.cond56, label %return, label %if.end10, !dbg !847

if.end10:                                         ; preds = %entry
  %bzalloc = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 9, !dbg !850
  %2 = load i8* (i8*, i32, i32)** %bzalloc, align 8, !dbg !850, !tbaa !615
  %cmp11 = icmp eq i8* (i8*, i32, i32)* %2, null, !dbg !850
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !850

if.then12:                                        ; preds = %if.end10
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %bzalloc, align 8, !dbg !850, !tbaa !615
  br label %if.end14, !dbg !850

if.end14:                                         ; preds = %if.then12, %if.end10
  %3 = phi i8* (i8*, i32, i32)* [ @default_bzalloc, %if.then12 ], [ %2, %if.end10 ]
  %bzfree = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10, !dbg !851
  %4 = load void (i8*, i8*)** %bzfree, align 8, !dbg !851, !tbaa !615
  %cmp15 = icmp eq void (i8*, i8*)* %4, null, !dbg !851
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !851

if.then16:                                        ; preds = %if.end14
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %bzfree, align 8, !dbg !851, !tbaa !615
  br label %if.end18, !dbg !851

if.end18:                                         ; preds = %if.then16, %if.end14
  %opaque = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11, !dbg !852
  %5 = load i8** %opaque, align 8, !dbg !852, !tbaa !615
  %call20 = tail call i8* %3(i8* %5, i32 64144, i32 1) #12, !dbg !852
  %cmp21 = icmp eq i8* %call20, null, !dbg !853
  br i1 %cmp21, label %return, label %if.end23, !dbg !853

if.end23:                                         ; preds = %if.end18
  %strm24 = bitcast i8* %call20 to %struct.bz_stream**, !dbg !854
  store %struct.bz_stream* %strm, %struct.bz_stream** %strm24, align 8, !dbg !854, !tbaa !615
  %state = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8, !dbg !855
  store i8* %call20, i8** %state, align 8, !dbg !855, !tbaa !615
  %state25 = getelementptr inbounds i8* %call20, i64 8, !dbg !856
  %6 = bitcast i8* %state25 to i32*, !dbg !856
  store i32 10, i32* %6, align 4, !dbg !856, !tbaa !651
  %bsLive = getelementptr inbounds i8* %call20, i64 36, !dbg !857
  %7 = bitcast i8* %bsLive to i32*, !dbg !857
  store i32 0, i32* %7, align 4, !dbg !857, !tbaa !651
  %bsBuff = getelementptr inbounds i8* %call20, i64 32, !dbg !858
  %8 = bitcast i8* %bsBuff to i32*, !dbg !858
  store i32 0, i32* %8, align 4, !dbg !858, !tbaa !651
  %calculatedCombinedCRC = getelementptr inbounds i8* %call20, i64 3188, !dbg !859
  %9 = bitcast i8* %calculatedCombinedCRC to i32*, !dbg !859
  store i32 0, i32* %9, align 4, !dbg !859, !tbaa !651
  %total_in_lo32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 2, !dbg !860
  store i32 0, i32* %total_in_lo32, align 4, !dbg !860, !tbaa !651
  %total_in_hi32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 3, !dbg !861
  store i32 0, i32* %total_in_hi32, align 4, !dbg !861, !tbaa !651
  %total_out_lo32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 6, !dbg !862
  store i32 0, i32* %total_out_lo32, align 4, !dbg !862, !tbaa !651
  %total_out_hi32 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 7, !dbg !863
  store i32 0, i32* %total_out_hi32, align 4, !dbg !863, !tbaa !651
  %conv = trunc i32 %small to i8, !dbg !864
  %10 = getelementptr inbounds i8* %call20, i64 44, !dbg !864
  store i8 %conv, i8* %10, align 1, !dbg !864, !tbaa !616
  %tt = getelementptr inbounds i8* %call20, i64 3152, !dbg !865
  %currBlockNo = getelementptr inbounds i8* %call20, i64 48, !dbg !866
  %11 = bitcast i8* %currBlockNo to i32*, !dbg !866
  store i32 0, i32* %11, align 4, !dbg !866, !tbaa !651
  %verbosity26 = getelementptr inbounds i8* %call20, i64 52, !dbg !867
  %12 = bitcast i8* %verbosity26 to i32*, !dbg !867
  call void @llvm.memset.p0i8.i64(i8* %tt, i8 0, i64 24, i32 8, i1 false), !dbg !868
  store i32 %verbosity, i32* %12, align 4, !dbg !867, !tbaa !651
  br label %return, !dbg !869

return:                                           ; preds = %if.end18, %entry, %if.end23
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -2, %entry ], [ -3, %if.end18 ]
  ret i32 %retval.0, !dbg !869
}

; Function Attrs: inlinehint nounwind optsize readonly uwtable
define i32 @BZ2_indexIntoF(i32 %indx, i32* nocapture %cftab) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %indx}, i64 0, metadata !243), !dbg !870
  tail call void @llvm.dbg.value(metadata !{i32* %cftab}, i64 0, metadata !244), !dbg !870
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !245), !dbg !871
  tail call void @llvm.dbg.value(metadata !872, i64 0, metadata !246), !dbg !873
  br label %do.body, !dbg !874

do.body:                                          ; preds = %do.body, %entry
  %na.0 = phi i32 [ 256, %entry ], [ %shr.na.0, %do.body ]
  %nb.0 = phi i32 [ 0, %entry ], [ %nb.0.shr, %do.body ]
  %add = add nsw i32 %nb.0, %na.0, !dbg !875
  %shr = ashr i32 %add, 1, !dbg !875
  tail call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !247), !dbg !875
  %idxprom = sext i32 %shr to i64, !dbg !877
  %arrayidx = getelementptr inbounds i32* %cftab, i64 %idxprom, !dbg !877
  %0 = load i32* %arrayidx, align 4, !dbg !877, !tbaa !651
  %cmp = icmp sgt i32 %0, %indx, !dbg !877
  %shr.na.0 = select i1 %cmp, i32 %shr, i32 %na.0
  %nb.0.shr = select i1 %cmp, i32 %nb.0, i32 %shr
  %sub = sub nsw i32 %shr.na.0, %nb.0.shr, !dbg !878
  %cmp1 = icmp eq i32 %sub, 1, !dbg !878
  br i1 %cmp1, label %do.end, label %do.body, !dbg !878

do.end:                                           ; preds = %do.body
  ret i32 %nb.0.shr, !dbg !879
}

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzDecompress(%struct.bz_stream* %strm) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.bz_stream* %strm}, i64 0, metadata !250), !dbg !880
  %cmp = icmp eq %struct.bz_stream* %strm, null, !dbg !881
  br i1 %cmp, label %return, label %if.end, !dbg !881

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8, !dbg !882
  %0 = load i8** %state, align 8, !dbg !882, !tbaa !615
  %1 = bitcast i8* %0 to %struct.DState*, !dbg !882
  tail call void @llvm.dbg.value(metadata !{%struct.DState* %1}, i64 0, metadata !252), !dbg !882
  %cmp1 = icmp eq i8* %0, null, !dbg !883
  br i1 %cmp1, label %return, label %if.end3, !dbg !883

if.end3:                                          ; preds = %if.end
  %strm4 = bitcast i8* %0 to %struct.bz_stream**, !dbg !884
  %2 = load %struct.bz_stream** %strm4, align 8, !dbg !884, !tbaa !615
  %cmp5 = icmp eq %struct.bz_stream* %2, %strm, !dbg !884
  br i1 %cmp5, label %while.body.preheader, label %return, !dbg !884

while.body.preheader:                             ; preds = %if.end3
  %state8 = getelementptr inbounds i8* %0, i64 8, !dbg !885
  %3 = bitcast i8* %state8 to i32*, !dbg !885
  %4 = getelementptr inbounds i8* %0, i64 44, !dbg !886
  %5 = getelementptr inbounds i8* %0, i64 20, !dbg !888
  %calculatedBlockCRC276.i = getelementptr inbounds i8* %0, i64 3184, !dbg !890
  %6 = bitcast i8* %calculatedBlockCRC276.i to i32*, !dbg !890
  %7 = getelementptr inbounds i8* %0, i64 12, !dbg !891
  %state_out_len278.i = getelementptr inbounds i8* %0, i64 16, !dbg !892
  %8 = bitcast i8* %state_out_len278.i to i32*, !dbg !892
  %nblock_used279.i = getelementptr inbounds i8* %0, i64 1092, !dbg !893
  %9 = bitcast i8* %nblock_used279.i to i32*, !dbg !893
  %k0280.i = getelementptr inbounds i8* %0, i64 64, !dbg !894
  %10 = bitcast i8* %k0280.i to i32*, !dbg !894
  %tt281.i = getelementptr inbounds i8* %0, i64 3152, !dbg !895
  %11 = bitcast i8* %tt281.i to i32**, !dbg !895
  %tPos282.i = getelementptr inbounds i8* %0, i64 60, !dbg !896
  %12 = bitcast i8* %tPos282.i to i32*, !dbg !896
  %save_nblock287.i = getelementptr inbounds i8* %0, i64 64080, !dbg !897
  %13 = bitcast i8* %save_nblock287.i to i32*, !dbg !897
  %rNToGo.i112 = getelementptr inbounds i8* %0, i64 24, !dbg !898
  %14 = bitcast i8* %rNToGo.i112 to i32*, !dbg !898
  %rTPos.i113 = getelementptr inbounds i8* %0, i64 28, !dbg !901
  %15 = bitcast i8* %rTPos.i113 to i32*, !dbg !901
  %verbosity = getelementptr inbounds i8* %0, i64 52, !dbg !903
  %16 = bitcast i8* %verbosity to i32*, !dbg !903
  %storedBlockCRC = getelementptr inbounds i8* %0, i64 3176, !dbg !905
  %17 = bitcast i8* %storedBlockCRC to i32*, !dbg !905
  %calculatedCombinedCRC = getelementptr inbounds i8* %0, i64 3188, !dbg !906
  %18 = bitcast i8* %calculatedCombinedCRC to i32*, !dbg !906
  %ll16413.i = getelementptr inbounds i8* %0, i64 3160, !dbg !907
  %19 = bitcast i8* %ll16413.i to i16**, !dbg !907
  %ll4419.i = getelementptr inbounds i8* %0, i64 3168, !dbg !907
  %20 = bitcast i8* %ll4419.i to i8**, !dbg !907
  %.pre = load i32* %3, align 4, !dbg !885, !tbaa !651
  br label %while.body, !dbg !885

while.body:                                       ; preds = %if.end65, %if.end47, %while.body.preheader
  %21 = phi i32 [ %.pre, %while.body.preheader ], [ %21, %if.end47 ], [ 2, %if.end65 ], !dbg !885
  switch i32 %21, label %if.end47 [
    i32 1, label %return
    i32 2, label %if.then14
  ], !dbg !885

if.then14:                                        ; preds = %while.body
  %22 = load i8* %4, align 1, !dbg !886, !tbaa !616
  %tobool = icmp eq i8 %22, 0, !dbg !886
  %23 = load i8* %5, align 1, !dbg !888, !tbaa !616
  %tobool.i105 = icmp eq i8 %23, 0, !dbg !888
  br i1 %tobool, label %if.else, label %if.then15, !dbg !886

if.then15:                                        ; preds = %if.then14
  tail call void @llvm.dbg.value(metadata !{%struct.DState* %1}, i64 0, metadata !911), !dbg !912
  %24 = load %struct.bz_stream** %strm4, align 8, !dbg !913, !tbaa !615
  %avail_out343923.i = getelementptr inbounds %struct.bz_stream* %24, i64 0, i32 5, !dbg !913
  %25 = load i32* %avail_out343923.i, align 4, !dbg !913, !tbaa !651
  %cmp344924.i = icmp eq i32 %25, 0, !dbg !913
  br i1 %tobool.i105, label %while.body341.preheader.i, label %while.body2.preheader.i, !dbg !915

while.body2.preheader.i:                          ; preds = %if.then15
  br i1 %cmp344924.i, label %if.end20, label %if.end.i, !dbg !916

while.body341.preheader.i:                        ; preds = %if.then15
  br i1 %cmp344924.i, label %if.end20, label %if.end347.i, !dbg !913

if.end.i:                                         ; preds = %while.body2.backedge.i, %while.body2.preheader.i
  %26 = phi %struct.bz_stream* [ %24, %while.body2.preheader.i ], [ %53, %while.body2.backedge.i ]
  %27 = load i32* %8, align 4, !dbg !920, !tbaa !651
  %cmp4.i = icmp eq i32 %27, 0, !dbg !920
  br i1 %cmp4.i, label %while.end.i, label %if.end6.i, !dbg !920

if.end6.i:                                        ; preds = %if.end.i
  %28 = load i8* %7, align 1, !dbg !921, !tbaa !616
  %next_out.i = getelementptr inbounds %struct.bz_stream* %26, i64 0, i32 4, !dbg !921
  %29 = load i8** %next_out.i, align 8, !dbg !921, !tbaa !615
  store i8 %28, i8* %29, align 1, !dbg !921, !tbaa !616
  %30 = load i32* %6, align 4, !dbg !922, !tbaa !651
  %shl.i = shl i32 %30, 8, !dbg !922
  %shr.i = lshr i32 %30, 24, !dbg !922
  %31 = load i8* %7, align 1, !dbg !922, !tbaa !616
  %conv.i = zext i8 %31 to i32, !dbg !922
  %xor.i = xor i32 %conv.i, %shr.i, !dbg !922
  %idxprom.i = zext i32 %xor.i to i64, !dbg !922
  %arrayidx.i = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom.i, !dbg !922
  %32 = load i32* %arrayidx.i, align 4, !dbg !922, !tbaa !651
  %xor10.i = xor i32 %32, %shl.i, !dbg !922
  store i32 %xor10.i, i32* %6, align 4, !dbg !922, !tbaa !651
  %33 = load i32* %8, align 4, !dbg !924, !tbaa !651
  %dec.i = add nsw i32 %33, -1, !dbg !924
  store i32 %dec.i, i32* %8, align 4, !dbg !924, !tbaa !651
  %34 = load %struct.bz_stream** %strm4, align 8, !dbg !925, !tbaa !615
  %next_out14.i = getelementptr inbounds %struct.bz_stream* %34, i64 0, i32 4, !dbg !925
  %35 = load i8** %next_out14.i, align 8, !dbg !925, !tbaa !615
  %incdec.ptr.i = getelementptr inbounds i8* %35, i64 1, !dbg !925
  store i8* %incdec.ptr.i, i8** %next_out14.i, align 8, !dbg !925, !tbaa !615
  %36 = load %struct.bz_stream** %strm4, align 8, !dbg !926, !tbaa !615
  %avail_out16.i = getelementptr inbounds %struct.bz_stream* %36, i64 0, i32 5, !dbg !926
  %37 = load i32* %avail_out16.i, align 4, !dbg !926, !tbaa !651
  %dec17.i = add i32 %37, -1, !dbg !926
  store i32 %dec17.i, i32* %avail_out16.i, align 4, !dbg !926, !tbaa !651
  %total_out_lo32.i = getelementptr inbounds %struct.bz_stream* %36, i64 0, i32 6, !dbg !927
  %38 = load i32* %total_out_lo32.i, align 4, !dbg !927, !tbaa !651
  %inc.i = add i32 %38, 1, !dbg !927
  store i32 %inc.i, i32* %total_out_lo32.i, align 4, !dbg !927, !tbaa !651
  %cmp21.i = icmp eq i32 %inc.i, 0, !dbg !928
  br i1 %cmp21.i, label %if.then23.i, label %while.body2.backedge.i, !dbg !928

if.then23.i:                                      ; preds = %if.end6.i
  %total_out_hi32.i = getelementptr inbounds %struct.bz_stream* %36, i64 0, i32 7, !dbg !928
  %39 = load i32* %total_out_hi32.i, align 4, !dbg !928, !tbaa !651
  %inc25.i = add i32 %39, 1, !dbg !928
  store i32 %inc25.i, i32* %total_out_hi32.i, align 4, !dbg !928, !tbaa !651
  br label %while.body2.backedge.i, !dbg !928

while.end.i:                                      ; preds = %if.end.i
  %40 = load i32* %9, align 4, !dbg !929, !tbaa !651
  %41 = load i32* %13, align 4, !dbg !929, !tbaa !651
  %add.i = add nsw i32 %41, 1, !dbg !929
  %cmp27.i = icmp eq i32 %40, %add.i, !dbg !929
  br i1 %cmp27.i, label %if.end20, label %if.end30.i, !dbg !929

if.end30.i:                                       ; preds = %while.end.i
  %cmp34.i = icmp sgt i32 %40, %add.i, !dbg !930
  br i1 %cmp34.i, label %return, label %if.end37.i, !dbg !930

if.end37.i:                                       ; preds = %if.end30.i
  store i32 1, i32* %8, align 4, !dbg !931, !tbaa !651
  %42 = load i32* %10, align 4, !dbg !932, !tbaa !651
  %conv39.i = trunc i32 %42 to i8, !dbg !932
  store i8 %conv39.i, i8* %7, align 1, !dbg !932, !tbaa !616
  %43 = load i32* %12, align 4, !dbg !933, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %43}, i64 0, metadata !934), !dbg !935
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !936), !dbg !937
  tail call void @llvm.dbg.value(metadata !872, i64 0, metadata !938), !dbg !939
  br label %do.body.i.i, !dbg !940

do.body.i.i:                                      ; preds = %do.body.i.i, %if.end37.i
  %na.0.i.i = phi i32 [ 256, %if.end37.i ], [ %shr.na.0.i.i, %do.body.i.i ]
  %nb.0.i.i = phi i32 [ 0, %if.end37.i ], [ %nb.0.shr.i.i, %do.body.i.i ]
  %add.i.i = add nsw i32 %nb.0.i.i, %na.0.i.i, !dbg !941
  %shr.i.i = ashr i32 %add.i.i, 1, !dbg !941
  tail call void @llvm.dbg.value(metadata !{i32 %shr.i.i}, i64 0, metadata !942), !dbg !941
  %idxprom.i.i = sext i32 %shr.i.i to i64, !dbg !943
  %arrayidx.i.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i.i, !dbg !943
  %44 = load i32* %arrayidx.i.i, align 4, !dbg !943, !tbaa !651
  %cmp.i.i = icmp sgt i32 %44, %43, !dbg !943
  %shr.na.0.i.i = select i1 %cmp.i.i, i32 %shr.i.i, i32 %na.0.i.i
  %nb.0.shr.i.i = select i1 %cmp.i.i, i32 %nb.0.i.i, i32 %shr.i.i
  %sub.i.i = sub nsw i32 %shr.na.0.i.i, %nb.0.shr.i.i, !dbg !944
  %cmp1.i.i = icmp eq i32 %sub.i.i, 1, !dbg !944
  br i1 %cmp1.i.i, label %BZ2_indexIntoF.exit.i, label %do.body.i.i, !dbg !944

BZ2_indexIntoF.exit.i:                            ; preds = %do.body.i.i
  %idxprom43.i = zext i32 %43 to i64, !dbg !933
  %45 = load i16** %19, align 8, !dbg !933, !tbaa !615
  %arrayidx44.i = getelementptr inbounds i16* %45, i64 %idxprom43.i, !dbg !933
  %46 = load i16* %arrayidx44.i, align 2, !dbg !933, !tbaa !945
  %conv45.i = zext i16 %46 to i32, !dbg !933
  %shr47.i = lshr i32 %43, 1, !dbg !933
  %idxprom48.i = zext i32 %shr47.i to i64, !dbg !933
  %47 = load i8** %20, align 8, !dbg !933, !tbaa !615
  %arrayidx49.i = getelementptr inbounds i8* %47, i64 %idxprom48.i, !dbg !933
  %48 = load i8* %arrayidx49.i, align 1, !dbg !933, !tbaa !616
  %conv50.i = zext i8 %48 to i32, !dbg !933
  %shl52.i = shl i32 %43, 2, !dbg !933
  %and.i = and i32 %shl52.i, 4, !dbg !933
  %shr53.i = lshr i32 %conv50.i, %and.i, !dbg !933
  %and54.i = shl i32 %shr53.i, 16, !dbg !933
  %shl55.i = and i32 %and54.i, 983040, !dbg !933
  %or.i = or i32 %shl55.i, %conv45.i, !dbg !933
  store i32 %or.i, i32* %12, align 4, !dbg !933, !tbaa !651
  %49 = load i32* %14, align 4, !dbg !933, !tbaa !651
  %cmp57.i = icmp eq i32 %49, 0, !dbg !933
  br i1 %cmp57.i, label %if.then59.i, label %if.end71.i, !dbg !933

if.then59.i:                                      ; preds = %BZ2_indexIntoF.exit.i
  %50 = load i32* %15, align 4, !dbg !946, !tbaa !651
  %idxprom60.i = sext i32 %50 to i64, !dbg !946
  %arrayidx61.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom60.i, !dbg !946
  %51 = load i32* %arrayidx61.i, align 4, !dbg !946, !tbaa !651
  store i32 %51, i32* %14, align 4, !dbg !946, !tbaa !651
  %inc64.i = add nsw i32 %50, 1, !dbg !946
  %cmp66.i = icmp eq i32 %inc64.i, 512, !dbg !946
  %.inc64.i = select i1 %cmp66.i, i32 0, i32 %inc64.i, !dbg !946
  store i32 %.inc64.i, i32* %15, align 4, !dbg !946, !tbaa !651
  br label %if.end71.i, !dbg !946

if.end71.i:                                       ; preds = %if.then59.i, %BZ2_indexIntoF.exit.i
  %52 = phi i32 [ %51, %if.then59.i ], [ %49, %BZ2_indexIntoF.exit.i ]
  %dec73.i = add nsw i32 %52, -1, !dbg !933
  store i32 %dec73.i, i32* %14, align 4, !dbg !933, !tbaa !651
  %inc81.i = add nsw i32 %40, 1, !dbg !948
  store i32 %inc81.i, i32* %9, align 4, !dbg !948, !tbaa !651
  %cmp85.i = icmp eq i32 %40, %41, !dbg !949
  br i1 %cmp85.i, label %while.body2.backedge.i, label %if.end88.i, !dbg !949

if.end88.i:                                       ; preds = %if.end71.i
  %cmp75.i = icmp eq i32 %dec73.i, 1, !dbg !948
  %cond.i = zext i1 %cmp75.i to i32, !dbg !948
  %call.masked.i = and i32 %nb.0.shr.i.i, 255, !dbg !950
  %conv89.i = xor i32 %cond.i, %call.masked.i, !dbg !950
  %cmp91.i = icmp eq i32 %conv89.i, %42, !dbg !950
  br i1 %cmp91.i, label %if.end96.i, label %if.then93.i, !dbg !950

if.then93.i:                                      ; preds = %if.end88.i
  store i32 %conv89.i, i32* %10, align 4, !dbg !951, !tbaa !651
  br label %while.body2.backedge.i, !dbg !951

while.body2.backedge.i:                           ; preds = %if.end206.i, %if.end138.i, %if.end71.i, %if.end328.i, %if.then229.i, %if.then161.i, %if.then93.i, %if.then23.i, %if.end6.i
  %53 = phi %struct.bz_stream* [ %26, %if.then93.i ], [ %26, %if.then161.i ], [ %26, %if.then229.i ], [ %26, %if.end328.i ], [ %36, %if.then23.i ], [ %36, %if.end6.i ], [ %26, %if.end71.i ], [ %26, %if.end138.i ], [ %26, %if.end206.i ], !dbg !916
  %avail_out.i = getelementptr inbounds %struct.bz_stream* %53, i64 0, i32 5, !dbg !916
  %54 = load i32* %avail_out.i, align 4, !dbg !916, !tbaa !651
  %cmp.i = icmp eq i32 %54, 0, !dbg !916
  br i1 %cmp.i, label %if.end20, label %if.end.i, !dbg !916

if.end96.i:                                       ; preds = %if.end88.i
  store i32 2, i32* %8, align 4, !dbg !953, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %or.i}, i64 0, metadata !954), !dbg !956
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !957), !dbg !958
  tail call void @llvm.dbg.value(metadata !872, i64 0, metadata !959), !dbg !960
  br label %do.body.i921.i, !dbg !961

do.body.i921.i:                                   ; preds = %do.body.i921.i, %if.end96.i
  %na.0.i910.i = phi i32 [ 256, %if.end96.i ], [ %shr.na.0.i917.i, %do.body.i921.i ]
  %nb.0.i911.i = phi i32 [ 0, %if.end96.i ], [ %nb.0.shr.i918.i, %do.body.i921.i ]
  %add.i912.i = add nsw i32 %nb.0.i911.i, %na.0.i910.i, !dbg !962
  %shr.i913.i = ashr i32 %add.i912.i, 1, !dbg !962
  tail call void @llvm.dbg.value(metadata !{i32 %shr.i913.i}, i64 0, metadata !963), !dbg !962
  %idxprom.i914.i = sext i32 %shr.i913.i to i64, !dbg !964
  %arrayidx.i915.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i914.i, !dbg !964
  %55 = load i32* %arrayidx.i915.i, align 4, !dbg !964, !tbaa !651
  %cmp.i916.i = icmp sgt i32 %55, %or.i, !dbg !964
  %shr.na.0.i917.i = select i1 %cmp.i916.i, i32 %shr.i913.i, i32 %na.0.i910.i
  %nb.0.shr.i918.i = select i1 %cmp.i916.i, i32 %nb.0.i911.i, i32 %shr.i913.i
  %sub.i919.i = sub nsw i32 %shr.na.0.i917.i, %nb.0.shr.i918.i, !dbg !965
  %cmp1.i920.i = icmp eq i32 %sub.i919.i, 1, !dbg !965
  br i1 %cmp1.i920.i, label %BZ2_indexIntoF.exit922.i, label %do.body.i921.i, !dbg !965

BZ2_indexIntoF.exit922.i:                         ; preds = %do.body.i921.i
  %idxprom104.i = zext i32 %or.i to i64, !dbg !955
  %arrayidx106.i = getelementptr inbounds i16* %45, i64 %idxprom104.i, !dbg !955
  %56 = load i16* %arrayidx106.i, align 2, !dbg !955, !tbaa !945
  %conv107.i = zext i16 %56 to i32, !dbg !955
  %shr109.i = lshr i32 %or.i, 1, !dbg !955
  %idxprom110.i = zext i32 %shr109.i to i64, !dbg !955
  %arrayidx112.i = getelementptr inbounds i8* %47, i64 %idxprom110.i, !dbg !955
  %57 = load i8* %arrayidx112.i, align 1, !dbg !955, !tbaa !616
  %conv113.i = zext i8 %57 to i32, !dbg !955
  %shl115.i = shl nuw nsw i32 %conv45.i, 2, !dbg !955
  %and116.i = and i32 %shl115.i, 4, !dbg !955
  %shr117.i = lshr i32 %conv113.i, %and116.i, !dbg !955
  %and118.i = shl i32 %shr117.i, 16, !dbg !955
  %shl119.i = and i32 %and118.i, 983040, !dbg !955
  %or120.i = or i32 %shl119.i, %conv107.i, !dbg !955
  store i32 %or120.i, i32* %12, align 4, !dbg !955, !tbaa !651
  %cmp123.i = icmp eq i32 %dec73.i, 0, !dbg !955
  br i1 %cmp123.i, label %if.then125.i, label %if.end138.i, !dbg !955

if.then125.i:                                     ; preds = %BZ2_indexIntoF.exit922.i
  %58 = load i32* %15, align 4, !dbg !966, !tbaa !651
  %idxprom127.i = sext i32 %58 to i64, !dbg !966
  %arrayidx128.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom127.i, !dbg !966
  %59 = load i32* %arrayidx128.i, align 4, !dbg !966, !tbaa !651
  store i32 %59, i32* %14, align 4, !dbg !966, !tbaa !651
  %inc131.i = add nsw i32 %58, 1, !dbg !966
  %cmp133.i = icmp eq i32 %inc131.i, 512, !dbg !966
  %.inc131.i = select i1 %cmp133.i, i32 0, i32 %inc131.i, !dbg !966
  store i32 %.inc131.i, i32* %15, align 4, !dbg !966, !tbaa !651
  br label %if.end138.i, !dbg !966

if.end138.i:                                      ; preds = %if.then125.i, %BZ2_indexIntoF.exit922.i
  %60 = phi i32 [ %59, %if.then125.i ], [ %dec73.i, %BZ2_indexIntoF.exit922.i ]
  %dec140.i = add nsw i32 %60, -1, !dbg !955
  store i32 %dec140.i, i32* %14, align 4, !dbg !955, !tbaa !651
  %inc149.i = add nsw i32 %40, 2, !dbg !968
  store i32 %inc149.i, i32* %9, align 4, !dbg !968, !tbaa !651
  %cmp153.i = icmp eq i32 %inc81.i, %41, !dbg !969
  br i1 %cmp153.i, label %while.body2.backedge.i, label %if.end156.i, !dbg !969

if.end156.i:                                      ; preds = %if.end138.i
  %cmp142.i = icmp eq i32 %dec140.i, 1, !dbg !968
  %cond144.i = zext i1 %cmp142.i to i32, !dbg !968
  %call101.masked.i = and i32 %nb.0.shr.i918.i, 255, !dbg !970
  %conv157.i = xor i32 %cond144.i, %call101.masked.i, !dbg !970
  %cmp159.i = icmp eq i32 %conv157.i, %42, !dbg !970
  br i1 %cmp159.i, label %if.end164.i, label %if.then161.i, !dbg !970

if.then161.i:                                     ; preds = %if.end156.i
  store i32 %conv157.i, i32* %10, align 4, !dbg !971, !tbaa !651
  br label %while.body2.backedge.i, !dbg !971

if.end164.i:                                      ; preds = %if.end156.i
  store i32 3, i32* %8, align 4, !dbg !973, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %or120.i}, i64 0, metadata !974), !dbg !976
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !977), !dbg !978
  tail call void @llvm.dbg.value(metadata !872, i64 0, metadata !979), !dbg !980
  br label %do.body.i908.i, !dbg !981

do.body.i908.i:                                   ; preds = %do.body.i908.i, %if.end164.i
  %na.0.i897.i = phi i32 [ 256, %if.end164.i ], [ %shr.na.0.i904.i, %do.body.i908.i ]
  %nb.0.i898.i = phi i32 [ 0, %if.end164.i ], [ %nb.0.shr.i905.i, %do.body.i908.i ]
  %add.i899.i = add nsw i32 %nb.0.i898.i, %na.0.i897.i, !dbg !982
  %shr.i900.i = ashr i32 %add.i899.i, 1, !dbg !982
  tail call void @llvm.dbg.value(metadata !{i32 %shr.i900.i}, i64 0, metadata !983), !dbg !982
  %idxprom.i901.i = sext i32 %shr.i900.i to i64, !dbg !984
  %arrayidx.i902.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i901.i, !dbg !984
  %61 = load i32* %arrayidx.i902.i, align 4, !dbg !984, !tbaa !651
  %cmp.i903.i = icmp sgt i32 %61, %or120.i, !dbg !984
  %shr.na.0.i904.i = select i1 %cmp.i903.i, i32 %shr.i900.i, i32 %na.0.i897.i
  %nb.0.shr.i905.i = select i1 %cmp.i903.i, i32 %nb.0.i898.i, i32 %shr.i900.i
  %sub.i906.i = sub nsw i32 %shr.na.0.i904.i, %nb.0.shr.i905.i, !dbg !985
  %cmp1.i907.i = icmp eq i32 %sub.i906.i, 1, !dbg !985
  br i1 %cmp1.i907.i, label %BZ2_indexIntoF.exit909.i, label %do.body.i908.i, !dbg !985

BZ2_indexIntoF.exit909.i:                         ; preds = %do.body.i908.i
  %idxprom172.i = zext i32 %or120.i to i64, !dbg !975
  %arrayidx174.i = getelementptr inbounds i16* %45, i64 %idxprom172.i, !dbg !975
  %62 = load i16* %arrayidx174.i, align 2, !dbg !975, !tbaa !945
  %conv175.i = zext i16 %62 to i32, !dbg !975
  %shr177.i = lshr i32 %or120.i, 1, !dbg !975
  %idxprom178.i = zext i32 %shr177.i to i64, !dbg !975
  %arrayidx180.i = getelementptr inbounds i8* %47, i64 %idxprom178.i, !dbg !975
  %63 = load i8* %arrayidx180.i, align 1, !dbg !975, !tbaa !616
  %conv181.i = zext i8 %63 to i32, !dbg !975
  %shl183.i = shl nuw nsw i32 %conv107.i, 2, !dbg !975
  %and184.i = and i32 %shl183.i, 4, !dbg !975
  %shr185.i = lshr i32 %conv181.i, %and184.i, !dbg !975
  %and186.i = shl i32 %shr185.i, 16, !dbg !975
  %shl187.i = and i32 %and186.i, 983040, !dbg !975
  %or188.i = or i32 %shl187.i, %conv175.i, !dbg !975
  store i32 %or188.i, i32* %12, align 4, !dbg !975, !tbaa !651
  %cmp191.i = icmp eq i32 %dec140.i, 0, !dbg !975
  br i1 %cmp191.i, label %if.then193.i, label %if.end206.i, !dbg !975

if.then193.i:                                     ; preds = %BZ2_indexIntoF.exit909.i
  %64 = load i32* %15, align 4, !dbg !986, !tbaa !651
  %idxprom195.i = sext i32 %64 to i64, !dbg !986
  %arrayidx196.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom195.i, !dbg !986
  %65 = load i32* %arrayidx196.i, align 4, !dbg !986, !tbaa !651
  store i32 %65, i32* %14, align 4, !dbg !986, !tbaa !651
  %inc199.i = add nsw i32 %64, 1, !dbg !986
  %cmp201.i = icmp eq i32 %inc199.i, 512, !dbg !986
  %.inc199.i = select i1 %cmp201.i, i32 0, i32 %inc199.i, !dbg !986
  store i32 %.inc199.i, i32* %15, align 4, !dbg !986, !tbaa !651
  br label %if.end206.i, !dbg !986

if.end206.i:                                      ; preds = %if.then193.i, %BZ2_indexIntoF.exit909.i
  %66 = phi i32 [ %65, %if.then193.i ], [ %dec140.i, %BZ2_indexIntoF.exit909.i ]
  %dec208.i = add nsw i32 %66, -1, !dbg !975
  store i32 %dec208.i, i32* %14, align 4, !dbg !975, !tbaa !651
  %inc217.i = add nsw i32 %40, 3, !dbg !988
  store i32 %inc217.i, i32* %9, align 4, !dbg !988, !tbaa !651
  %cmp221.i = icmp eq i32 %inc149.i, %41, !dbg !989
  br i1 %cmp221.i, label %while.body2.backedge.i, label %if.end224.i, !dbg !989

if.end224.i:                                      ; preds = %if.end206.i
  %cmp210.i = icmp eq i32 %dec208.i, 1, !dbg !988
  %cond212.i = zext i1 %cmp210.i to i32, !dbg !988
  %call169.masked.i = and i32 %nb.0.shr.i905.i, 255, !dbg !990
  %conv225.i = xor i32 %cond212.i, %call169.masked.i, !dbg !990
  %cmp227.i = icmp eq i32 %conv225.i, %42, !dbg !990
  br i1 %cmp227.i, label %do.body.i895.i, label %if.then229.i, !dbg !990

if.then229.i:                                     ; preds = %if.end224.i
  store i32 %conv225.i, i32* %10, align 4, !dbg !991, !tbaa !651
  br label %while.body2.backedge.i, !dbg !991

do.body.i895.i:                                   ; preds = %if.end224.i, %do.body.i895.i
  %na.0.i884.i = phi i32 [ %shr.na.0.i891.i, %do.body.i895.i ], [ 256, %if.end224.i ]
  %nb.0.i885.i = phi i32 [ %nb.0.shr.i892.i, %do.body.i895.i ], [ 0, %if.end224.i ]
  %add.i886.i = add nsw i32 %nb.0.i885.i, %na.0.i884.i, !dbg !993
  %shr.i887.i = ashr i32 %add.i886.i, 1, !dbg !993
  tail call void @llvm.dbg.value(metadata !{i32 %shr.i887.i}, i64 0, metadata !995), !dbg !993
  %idxprom.i888.i = sext i32 %shr.i887.i to i64, !dbg !996
  %arrayidx.i889.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i888.i, !dbg !996
  %67 = load i32* %arrayidx.i889.i, align 4, !dbg !996, !tbaa !651
  %cmp.i890.i = icmp sgt i32 %67, %or188.i, !dbg !996
  %shr.na.0.i891.i = select i1 %cmp.i890.i, i32 %shr.i887.i, i32 %na.0.i884.i
  %nb.0.shr.i892.i = select i1 %cmp.i890.i, i32 %nb.0.i885.i, i32 %shr.i887.i
  %sub.i893.i = sub nsw i32 %shr.na.0.i891.i, %nb.0.shr.i892.i, !dbg !997
  %cmp1.i894.i = icmp eq i32 %sub.i893.i, 1, !dbg !997
  br i1 %cmp1.i894.i, label %BZ2_indexIntoF.exit896.i, label %do.body.i895.i, !dbg !997

BZ2_indexIntoF.exit896.i:                         ; preds = %do.body.i895.i
  %idxprom239.i = zext i32 %or188.i to i64, !dbg !994
  %arrayidx241.i = getelementptr inbounds i16* %45, i64 %idxprom239.i, !dbg !994
  %68 = load i16* %arrayidx241.i, align 2, !dbg !994, !tbaa !945
  %conv242.i = zext i16 %68 to i32, !dbg !994
  %shr244.i = lshr i32 %or188.i, 1, !dbg !994
  %idxprom245.i = zext i32 %shr244.i to i64, !dbg !994
  %arrayidx247.i = getelementptr inbounds i8* %47, i64 %idxprom245.i, !dbg !994
  %69 = load i8* %arrayidx247.i, align 1, !dbg !994, !tbaa !616
  %conv248.i = zext i8 %69 to i32, !dbg !994
  %shl250.i = shl nuw nsw i32 %conv175.i, 2, !dbg !994
  %and251.i = and i32 %shl250.i, 4, !dbg !994
  %shr252.i = lshr i32 %conv248.i, %and251.i, !dbg !994
  %and253.i = shl i32 %shr252.i, 16, !dbg !994
  %shl254.i = and i32 %and253.i, 983040, !dbg !994
  %or255.i = or i32 %shl254.i, %conv242.i, !dbg !994
  store i32 %or255.i, i32* %12, align 4, !dbg !994, !tbaa !651
  %cmp258.i = icmp eq i32 %dec208.i, 0, !dbg !994
  br i1 %cmp258.i, label %if.then260.i, label %if.end273.i, !dbg !994

if.then260.i:                                     ; preds = %BZ2_indexIntoF.exit896.i
  %70 = load i32* %15, align 4, !dbg !998, !tbaa !651
  %idxprom262.i = sext i32 %70 to i64, !dbg !998
  %arrayidx263.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom262.i, !dbg !998
  %71 = load i32* %arrayidx263.i, align 4, !dbg !998, !tbaa !651
  store i32 %71, i32* %14, align 4, !dbg !998, !tbaa !651
  %inc266.i = add nsw i32 %70, 1, !dbg !998
  %cmp268.i = icmp eq i32 %inc266.i, 512, !dbg !998
  %.inc266.i = select i1 %cmp268.i, i32 0, i32 %inc266.i, !dbg !998
  store i32 %.inc266.i, i32* %15, align 4, !dbg !998, !tbaa !651
  br label %if.end273.i, !dbg !998

if.end273.i:                                      ; preds = %if.then260.i, %BZ2_indexIntoF.exit896.i
  %72 = phi i32 [ %71, %if.then260.i ], [ %dec208.i, %BZ2_indexIntoF.exit896.i ]
  %dec275.i = add nsw i32 %72, -1, !dbg !994
  store i32 %dec275.i, i32* %14, align 4, !dbg !994, !tbaa !651
  %cmp277.i = icmp eq i32 %dec275.i, 1, !dbg !1000
  %cond279.i = zext i1 %cmp277.i to i32, !dbg !1000
  %inc284.i = add nsw i32 %40, 4, !dbg !1000
  store i32 %inc284.i, i32* %9, align 4, !dbg !1000, !tbaa !651
  %call236.masked.i = and i32 %nb.0.shr.i892.i, 255, !dbg !1001
  %conv285.i = xor i32 %cond279.i, %call236.masked.i, !dbg !1001
  %add286.i = add nsw i32 %conv285.i, 4, !dbg !1001
  store i32 %add286.i, i32* %8, align 4, !dbg !1001, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %or255.i}, i64 0, metadata !1002), !dbg !1004
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1005), !dbg !1006
  tail call void @llvm.dbg.value(metadata !872, i64 0, metadata !1007), !dbg !1008
  br label %do.body.i882.i, !dbg !1009

do.body.i882.i:                                   ; preds = %do.body.i882.i, %if.end273.i
  %na.0.i871.i = phi i32 [ 256, %if.end273.i ], [ %shr.na.0.i878.i, %do.body.i882.i ]
  %nb.0.i872.i = phi i32 [ 0, %if.end273.i ], [ %nb.0.shr.i879.i, %do.body.i882.i ]
  %add.i873.i = add nsw i32 %nb.0.i872.i, %na.0.i871.i, !dbg !1010
  %shr.i874.i = ashr i32 %add.i873.i, 1, !dbg !1010
  tail call void @llvm.dbg.value(metadata !{i32 %shr.i874.i}, i64 0, metadata !1011), !dbg !1010
  %idxprom.i875.i = sext i32 %shr.i874.i to i64, !dbg !1012
  %arrayidx.i876.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i875.i, !dbg !1012
  %73 = load i32* %arrayidx.i876.i, align 4, !dbg !1012, !tbaa !651
  %cmp.i877.i = icmp sgt i32 %73, %or255.i, !dbg !1012
  %shr.na.0.i878.i = select i1 %cmp.i877.i, i32 %shr.i874.i, i32 %na.0.i871.i
  %nb.0.shr.i879.i = select i1 %cmp.i877.i, i32 %nb.0.i872.i, i32 %shr.i874.i
  %sub.i880.i = sub nsw i32 %shr.na.0.i878.i, %nb.0.shr.i879.i, !dbg !1013
  %cmp1.i881.i = icmp eq i32 %sub.i880.i, 1, !dbg !1013
  br i1 %cmp1.i881.i, label %BZ2_indexIntoF.exit883.i, label %do.body.i882.i, !dbg !1013

BZ2_indexIntoF.exit883.i:                         ; preds = %do.body.i882.i
  store i32 %nb.0.shr.i879.i, i32* %10, align 4, !dbg !1003, !tbaa !651
  %idxprom294.i = zext i32 %or255.i to i64, !dbg !1003
  %arrayidx296.i = getelementptr inbounds i16* %45, i64 %idxprom294.i, !dbg !1003
  %74 = load i16* %arrayidx296.i, align 2, !dbg !1003, !tbaa !945
  %conv297.i = zext i16 %74 to i32, !dbg !1003
  %shr299.i = lshr i32 %or255.i, 1, !dbg !1003
  %idxprom300.i = zext i32 %shr299.i to i64, !dbg !1003
  %arrayidx302.i = getelementptr inbounds i8* %47, i64 %idxprom300.i, !dbg !1003
  %75 = load i8* %arrayidx302.i, align 1, !dbg !1003, !tbaa !616
  %conv303.i = zext i8 %75 to i32, !dbg !1003
  %shl305.i = shl nuw nsw i32 %conv242.i, 2, !dbg !1003
  %and306.i = and i32 %shl305.i, 4, !dbg !1003
  %shr307.i = lshr i32 %conv303.i, %and306.i, !dbg !1003
  %and308.i = shl i32 %shr307.i, 16, !dbg !1003
  %shl309.i = and i32 %and308.i, 983040, !dbg !1003
  %or310.i = or i32 %shl309.i, %conv297.i, !dbg !1003
  store i32 %or310.i, i32* %12, align 4, !dbg !1003, !tbaa !651
  %cmp313.i = icmp eq i32 %dec275.i, 0, !dbg !1003
  br i1 %cmp313.i, label %if.then315.i, label %if.end328.i, !dbg !1003

if.then315.i:                                     ; preds = %BZ2_indexIntoF.exit883.i
  %76 = load i32* %15, align 4, !dbg !1014, !tbaa !651
  %idxprom317.i = sext i32 %76 to i64, !dbg !1014
  %arrayidx318.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom317.i, !dbg !1014
  %77 = load i32* %arrayidx318.i, align 4, !dbg !1014, !tbaa !651
  store i32 %77, i32* %14, align 4, !dbg !1014, !tbaa !651
  %inc321.i = add nsw i32 %76, 1, !dbg !1014
  %cmp323.i = icmp eq i32 %inc321.i, 512, !dbg !1014
  %.inc321.i = select i1 %cmp323.i, i32 0, i32 %inc321.i, !dbg !1014
  store i32 %.inc321.i, i32* %15, align 4, !dbg !1014, !tbaa !651
  br label %if.end328.i, !dbg !1014

if.end328.i:                                      ; preds = %if.then315.i, %BZ2_indexIntoF.exit883.i
  %78 = phi i32 [ %77, %if.then315.i ], [ %dec275.i, %BZ2_indexIntoF.exit883.i ]
  %dec330.i = add nsw i32 %78, -1, !dbg !1003
  store i32 %dec330.i, i32* %14, align 4, !dbg !1003, !tbaa !651
  %cmp332.i = icmp eq i32 %dec330.i, 1, !dbg !1016
  %cond334.i = zext i1 %cmp332.i to i32, !dbg !1016
  %xor336.i = xor i32 %cond334.i, %nb.0.shr.i879.i, !dbg !1016
  store i32 %xor336.i, i32* %10, align 4, !dbg !1016, !tbaa !651
  %inc338.i = add nsw i32 %40, 5, !dbg !1016
  store i32 %inc338.i, i32* %9, align 4, !dbg !1016, !tbaa !651
  br label %while.body2.backedge.i, !dbg !1017

if.end347.i:                                      ; preds = %while.body341.backedge.i, %while.body341.preheader.i
  %79 = phi %struct.bz_stream* [ %24, %while.body341.preheader.i ], [ %102, %while.body341.backedge.i ]
  %80 = load i32* %8, align 4, !dbg !1018, !tbaa !651
  %cmp349.i = icmp eq i32 %80, 0, !dbg !1018
  br i1 %cmp349.i, label %while.end387.i, label %if.end352.i, !dbg !1018

if.end352.i:                                      ; preds = %if.end347.i
  %81 = load i8* %7, align 1, !dbg !1019, !tbaa !616
  %next_out355.i = getelementptr inbounds %struct.bz_stream* %79, i64 0, i32 4, !dbg !1019
  %82 = load i8** %next_out355.i, align 8, !dbg !1019, !tbaa !615
  store i8 %81, i8* %82, align 1, !dbg !1019, !tbaa !616
  %83 = load i32* %6, align 4, !dbg !1020, !tbaa !651
  %shl357.i = shl i32 %83, 8, !dbg !1020
  %shr359.i = lshr i32 %83, 24, !dbg !1020
  %84 = load i8* %7, align 1, !dbg !1020, !tbaa !616
  %conv361.i = zext i8 %84 to i32, !dbg !1020
  %xor362.i = xor i32 %conv361.i, %shr359.i, !dbg !1020
  %idxprom363.i = zext i32 %xor362.i to i64, !dbg !1020
  %arrayidx364.i = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom363.i, !dbg !1020
  %85 = load i32* %arrayidx364.i, align 4, !dbg !1020, !tbaa !651
  %xor365.i = xor i32 %85, %shl357.i, !dbg !1020
  store i32 %xor365.i, i32* %6, align 4, !dbg !1020, !tbaa !651
  %86 = load i32* %8, align 4, !dbg !1022, !tbaa !651
  %dec368.i = add nsw i32 %86, -1, !dbg !1022
  store i32 %dec368.i, i32* %8, align 4, !dbg !1022, !tbaa !651
  %87 = load %struct.bz_stream** %strm4, align 8, !dbg !1023, !tbaa !615
  %next_out370.i = getelementptr inbounds %struct.bz_stream* %87, i64 0, i32 4, !dbg !1023
  %88 = load i8** %next_out370.i, align 8, !dbg !1023, !tbaa !615
  %incdec.ptr371.i = getelementptr inbounds i8* %88, i64 1, !dbg !1023
  store i8* %incdec.ptr371.i, i8** %next_out370.i, align 8, !dbg !1023, !tbaa !615
  %89 = load %struct.bz_stream** %strm4, align 8, !dbg !1024, !tbaa !615
  %avail_out373.i = getelementptr inbounds %struct.bz_stream* %89, i64 0, i32 5, !dbg !1024
  %90 = load i32* %avail_out373.i, align 4, !dbg !1024, !tbaa !651
  %dec374.i = add i32 %90, -1, !dbg !1024
  store i32 %dec374.i, i32* %avail_out373.i, align 4, !dbg !1024, !tbaa !651
  %total_out_lo32376.i = getelementptr inbounds %struct.bz_stream* %89, i64 0, i32 6, !dbg !1025
  %91 = load i32* %total_out_lo32376.i, align 4, !dbg !1025, !tbaa !651
  %inc377.i = add i32 %91, 1, !dbg !1025
  store i32 %inc377.i, i32* %total_out_lo32376.i, align 4, !dbg !1025, !tbaa !651
  %cmp380.i = icmp eq i32 %inc377.i, 0, !dbg !1026
  br i1 %cmp380.i, label %if.then382.i, label %while.body341.backedge.i, !dbg !1026

if.then382.i:                                     ; preds = %if.end352.i
  %total_out_hi32384.i = getelementptr inbounds %struct.bz_stream* %89, i64 0, i32 7, !dbg !1026
  %92 = load i32* %total_out_hi32384.i, align 4, !dbg !1026, !tbaa !651
  %inc385.i = add i32 %92, 1, !dbg !1026
  store i32 %inc385.i, i32* %total_out_hi32384.i, align 4, !dbg !1026, !tbaa !651
  br label %while.body341.backedge.i, !dbg !1026

while.end387.i:                                   ; preds = %if.end347.i
  %93 = load i32* %9, align 4, !dbg !1027, !tbaa !651
  %94 = load i32* %13, align 4, !dbg !1027, !tbaa !651
  %add390.i = add nsw i32 %94, 1, !dbg !1027
  %cmp391.i = icmp eq i32 %93, %add390.i, !dbg !1027
  br i1 %cmp391.i, label %if.end20, label %if.end394.i, !dbg !1027

if.end394.i:                                      ; preds = %while.end387.i
  %cmp398.i = icmp sgt i32 %93, %add390.i, !dbg !1028
  br i1 %cmp398.i, label %return, label %if.end401.i, !dbg !1028

if.end401.i:                                      ; preds = %if.end394.i
  store i32 1, i32* %8, align 4, !dbg !1029, !tbaa !651
  %95 = load i32* %10, align 4, !dbg !1030, !tbaa !651
  %conv404.i = trunc i32 %95 to i8, !dbg !1030
  store i8 %conv404.i, i8* %7, align 1, !dbg !1030, !tbaa !616
  %96 = load i32* %12, align 4, !dbg !907, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %96}, i64 0, metadata !1031), !dbg !1032
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1033), !dbg !1034
  tail call void @llvm.dbg.value(metadata !872, i64 0, metadata !1035), !dbg !1036
  br label %do.body.i869.i, !dbg !1037

do.body.i869.i:                                   ; preds = %do.body.i869.i, %if.end401.i
  %na.0.i858.i = phi i32 [ 256, %if.end401.i ], [ %shr.na.0.i865.i, %do.body.i869.i ]
  %nb.0.i859.i = phi i32 [ 0, %if.end401.i ], [ %nb.0.shr.i866.i, %do.body.i869.i ]
  %add.i860.i = add nsw i32 %nb.0.i859.i, %na.0.i858.i, !dbg !1038
  %shr.i861.i = ashr i32 %add.i860.i, 1, !dbg !1038
  tail call void @llvm.dbg.value(metadata !{i32 %shr.i861.i}, i64 0, metadata !1039), !dbg !1038
  %idxprom.i862.i = sext i32 %shr.i861.i to i64, !dbg !1040
  %arrayidx.i863.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i862.i, !dbg !1040
  %97 = load i32* %arrayidx.i863.i, align 4, !dbg !1040, !tbaa !651
  %cmp.i864.i = icmp sgt i32 %97, %96, !dbg !1040
  %shr.na.0.i865.i = select i1 %cmp.i864.i, i32 %shr.i861.i, i32 %na.0.i858.i
  %nb.0.shr.i866.i = select i1 %cmp.i864.i, i32 %nb.0.i859.i, i32 %shr.i861.i
  %sub.i867.i = sub nsw i32 %shr.na.0.i865.i, %nb.0.shr.i866.i, !dbg !1041
  %cmp1.i868.i = icmp eq i32 %sub.i867.i, 1, !dbg !1041
  br i1 %cmp1.i868.i, label %BZ2_indexIntoF.exit870.i, label %do.body.i869.i, !dbg !1041

BZ2_indexIntoF.exit870.i:                         ; preds = %do.body.i869.i
  %idxprom412.i = zext i32 %96 to i64, !dbg !907
  %98 = load i16** %19, align 8, !dbg !907, !tbaa !615
  %arrayidx414.i = getelementptr inbounds i16* %98, i64 %idxprom412.i, !dbg !907
  %99 = load i16* %arrayidx414.i, align 2, !dbg !907, !tbaa !945
  %conv415.i = zext i16 %99 to i32, !dbg !907
  %shr417.i = lshr i32 %96, 1, !dbg !907
  %idxprom418.i = zext i32 %shr417.i to i64, !dbg !907
  %100 = load i8** %20, align 8, !dbg !907, !tbaa !615
  %arrayidx420.i = getelementptr inbounds i8* %100, i64 %idxprom418.i, !dbg !907
  %101 = load i8* %arrayidx420.i, align 1, !dbg !907, !tbaa !616
  %conv421.i = zext i8 %101 to i32, !dbg !907
  %shl423.i = shl i32 %96, 2, !dbg !907
  %and424.i = and i32 %shl423.i, 4, !dbg !907
  %shr425.i = lshr i32 %conv421.i, %and424.i, !dbg !907
  %and426.i = shl i32 %shr425.i, 16, !dbg !907
  %shl427.i = and i32 %and426.i, 983040, !dbg !907
  %or428.i = or i32 %shl427.i, %conv415.i, !dbg !907
  store i32 %or428.i, i32* %12, align 4, !dbg !907, !tbaa !651
  %inc431.i = add nsw i32 %93, 1, !dbg !907
  store i32 %inc431.i, i32* %9, align 4, !dbg !907, !tbaa !651
  %cmp435.i = icmp eq i32 %93, %94, !dbg !1042
  br i1 %cmp435.i, label %while.body341.backedge.i, label %if.end438.i, !dbg !1042

if.end438.i:                                      ; preds = %BZ2_indexIntoF.exit870.i
  %conv439.i = and i32 %nb.0.shr.i866.i, 255, !dbg !1043
  %cmp441.i = icmp eq i32 %conv439.i, %95, !dbg !1043
  br i1 %cmp441.i, label %if.end446.i, label %if.then443.i, !dbg !1043

if.then443.i:                                     ; preds = %if.end438.i
  store i32 %conv439.i, i32* %10, align 4, !dbg !1044, !tbaa !651
  br label %while.body341.backedge.i, !dbg !1044

while.body341.backedge.i:                         ; preds = %BZ2_indexIntoF.exit844.i, %BZ2_indexIntoF.exit857.i, %BZ2_indexIntoF.exit870.i, %BZ2_indexIntoF.exit818.i, %if.then527.i, %if.then485.i, %if.then443.i, %if.then382.i, %if.end352.i
  %102 = phi %struct.bz_stream* [ %79, %if.then443.i ], [ %79, %if.then485.i ], [ %79, %if.then527.i ], [ %79, %BZ2_indexIntoF.exit818.i ], [ %89, %if.then382.i ], [ %89, %if.end352.i ], [ %79, %BZ2_indexIntoF.exit870.i ], [ %79, %BZ2_indexIntoF.exit857.i ], [ %79, %BZ2_indexIntoF.exit844.i ], !dbg !913
  %avail_out343.i = getelementptr inbounds %struct.bz_stream* %102, i64 0, i32 5, !dbg !913
  %103 = load i32* %avail_out343.i, align 4, !dbg !913, !tbaa !651
  %cmp344.i = icmp eq i32 %103, 0, !dbg !913
  br i1 %cmp344.i, label %if.end20, label %if.end347.i, !dbg !913

if.end446.i:                                      ; preds = %if.end438.i
  store i32 2, i32* %8, align 4, !dbg !1046, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %or428.i}, i64 0, metadata !1047), !dbg !1049
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1050), !dbg !1051
  tail call void @llvm.dbg.value(metadata !872, i64 0, metadata !1052), !dbg !1053
  br label %do.body.i856.i, !dbg !1054

do.body.i856.i:                                   ; preds = %do.body.i856.i, %if.end446.i
  %na.0.i845.i = phi i32 [ 256, %if.end446.i ], [ %shr.na.0.i852.i, %do.body.i856.i ]
  %nb.0.i846.i = phi i32 [ 0, %if.end446.i ], [ %nb.0.shr.i853.i, %do.body.i856.i ]
  %add.i847.i = add nsw i32 %nb.0.i846.i, %na.0.i845.i, !dbg !1055
  %shr.i848.i = ashr i32 %add.i847.i, 1, !dbg !1055
  tail call void @llvm.dbg.value(metadata !{i32 %shr.i848.i}, i64 0, metadata !1056), !dbg !1055
  %idxprom.i849.i = sext i32 %shr.i848.i to i64, !dbg !1057
  %arrayidx.i850.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i849.i, !dbg !1057
  %104 = load i32* %arrayidx.i850.i, align 4, !dbg !1057, !tbaa !651
  %cmp.i851.i = icmp sgt i32 %104, %or428.i, !dbg !1057
  %shr.na.0.i852.i = select i1 %cmp.i851.i, i32 %shr.i848.i, i32 %na.0.i845.i
  %nb.0.shr.i853.i = select i1 %cmp.i851.i, i32 %nb.0.i846.i, i32 %shr.i848.i
  %sub.i854.i = sub nsw i32 %shr.na.0.i852.i, %nb.0.shr.i853.i, !dbg !1058
  %cmp1.i855.i = icmp eq i32 %sub.i854.i, 1, !dbg !1058
  br i1 %cmp1.i855.i, label %BZ2_indexIntoF.exit857.i, label %do.body.i856.i, !dbg !1058

BZ2_indexIntoF.exit857.i:                         ; preds = %do.body.i856.i
  %idxprom454.i = zext i32 %or428.i to i64, !dbg !1048
  %arrayidx456.i = getelementptr inbounds i16* %98, i64 %idxprom454.i, !dbg !1048
  %105 = load i16* %arrayidx456.i, align 2, !dbg !1048, !tbaa !945
  %conv457.i = zext i16 %105 to i32, !dbg !1048
  %shr459.i = lshr i32 %or428.i, 1, !dbg !1048
  %idxprom460.i = zext i32 %shr459.i to i64, !dbg !1048
  %arrayidx462.i = getelementptr inbounds i8* %100, i64 %idxprom460.i, !dbg !1048
  %106 = load i8* %arrayidx462.i, align 1, !dbg !1048, !tbaa !616
  %conv463.i = zext i8 %106 to i32, !dbg !1048
  %shl465.i = shl nuw nsw i32 %conv415.i, 2, !dbg !1048
  %and466.i = and i32 %shl465.i, 4, !dbg !1048
  %shr467.i = lshr i32 %conv463.i, %and466.i, !dbg !1048
  %and468.i = shl i32 %shr467.i, 16, !dbg !1048
  %shl469.i = and i32 %and468.i, 983040, !dbg !1048
  %or470.i = or i32 %shl469.i, %conv457.i, !dbg !1048
  store i32 %or470.i, i32* %12, align 4, !dbg !1048, !tbaa !651
  %inc473.i = add nsw i32 %93, 2, !dbg !1048
  store i32 %inc473.i, i32* %9, align 4, !dbg !1048, !tbaa !651
  %cmp477.i = icmp eq i32 %inc431.i, %94, !dbg !1059
  br i1 %cmp477.i, label %while.body341.backedge.i, label %if.end480.i, !dbg !1059

if.end480.i:                                      ; preds = %BZ2_indexIntoF.exit857.i
  %conv481.i = and i32 %nb.0.shr.i853.i, 255, !dbg !1060
  %cmp483.i = icmp eq i32 %conv481.i, %95, !dbg !1060
  br i1 %cmp483.i, label %if.end488.i, label %if.then485.i, !dbg !1060

if.then485.i:                                     ; preds = %if.end480.i
  store i32 %conv481.i, i32* %10, align 4, !dbg !1061, !tbaa !651
  br label %while.body341.backedge.i, !dbg !1061

if.end488.i:                                      ; preds = %if.end480.i
  store i32 3, i32* %8, align 4, !dbg !1063, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %or470.i}, i64 0, metadata !1064), !dbg !1066
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1067), !dbg !1068
  tail call void @llvm.dbg.value(metadata !872, i64 0, metadata !1069), !dbg !1070
  br label %do.body.i843.i, !dbg !1071

do.body.i843.i:                                   ; preds = %do.body.i843.i, %if.end488.i
  %na.0.i832.i = phi i32 [ 256, %if.end488.i ], [ %shr.na.0.i839.i, %do.body.i843.i ]
  %nb.0.i833.i = phi i32 [ 0, %if.end488.i ], [ %nb.0.shr.i840.i, %do.body.i843.i ]
  %add.i834.i = add nsw i32 %nb.0.i833.i, %na.0.i832.i, !dbg !1072
  %shr.i835.i = ashr i32 %add.i834.i, 1, !dbg !1072
  tail call void @llvm.dbg.value(metadata !{i32 %shr.i835.i}, i64 0, metadata !1073), !dbg !1072
  %idxprom.i836.i = sext i32 %shr.i835.i to i64, !dbg !1074
  %arrayidx.i837.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i836.i, !dbg !1074
  %107 = load i32* %arrayidx.i837.i, align 4, !dbg !1074, !tbaa !651
  %cmp.i838.i = icmp sgt i32 %107, %or470.i, !dbg !1074
  %shr.na.0.i839.i = select i1 %cmp.i838.i, i32 %shr.i835.i, i32 %na.0.i832.i
  %nb.0.shr.i840.i = select i1 %cmp.i838.i, i32 %nb.0.i833.i, i32 %shr.i835.i
  %sub.i841.i = sub nsw i32 %shr.na.0.i839.i, %nb.0.shr.i840.i, !dbg !1075
  %cmp1.i842.i = icmp eq i32 %sub.i841.i, 1, !dbg !1075
  br i1 %cmp1.i842.i, label %BZ2_indexIntoF.exit844.i, label %do.body.i843.i, !dbg !1075

BZ2_indexIntoF.exit844.i:                         ; preds = %do.body.i843.i
  %idxprom496.i = zext i32 %or470.i to i64, !dbg !1065
  %arrayidx498.i = getelementptr inbounds i16* %98, i64 %idxprom496.i, !dbg !1065
  %108 = load i16* %arrayidx498.i, align 2, !dbg !1065, !tbaa !945
  %conv499.i = zext i16 %108 to i32, !dbg !1065
  %shr501.i = lshr i32 %or470.i, 1, !dbg !1065
  %idxprom502.i = zext i32 %shr501.i to i64, !dbg !1065
  %arrayidx504.i = getelementptr inbounds i8* %100, i64 %idxprom502.i, !dbg !1065
  %109 = load i8* %arrayidx504.i, align 1, !dbg !1065, !tbaa !616
  %conv505.i = zext i8 %109 to i32, !dbg !1065
  %shl507.i = shl nuw nsw i32 %conv457.i, 2, !dbg !1065
  %and508.i = and i32 %shl507.i, 4, !dbg !1065
  %shr509.i = lshr i32 %conv505.i, %and508.i, !dbg !1065
  %and510.i = shl i32 %shr509.i, 16, !dbg !1065
  %shl511.i = and i32 %and510.i, 983040, !dbg !1065
  %or512.i = or i32 %shl511.i, %conv499.i, !dbg !1065
  store i32 %or512.i, i32* %12, align 4, !dbg !1065, !tbaa !651
  %inc515.i = add nsw i32 %93, 3, !dbg !1065
  store i32 %inc515.i, i32* %9, align 4, !dbg !1065, !tbaa !651
  %cmp519.i = icmp eq i32 %inc473.i, %94, !dbg !1076
  br i1 %cmp519.i, label %while.body341.backedge.i, label %if.end522.i, !dbg !1076

if.end522.i:                                      ; preds = %BZ2_indexIntoF.exit844.i
  %conv523.i = and i32 %nb.0.shr.i840.i, 255, !dbg !1077
  %cmp525.i = icmp eq i32 %conv523.i, %95, !dbg !1077
  br i1 %cmp525.i, label %do.body.i830.i, label %if.then527.i, !dbg !1077

if.then527.i:                                     ; preds = %if.end522.i
  store i32 %conv523.i, i32* %10, align 4, !dbg !1078, !tbaa !651
  br label %while.body341.backedge.i, !dbg !1078

do.body.i830.i:                                   ; preds = %if.end522.i, %do.body.i830.i
  %na.0.i819.i = phi i32 [ %shr.na.0.i826.i, %do.body.i830.i ], [ 256, %if.end522.i ]
  %nb.0.i820.i = phi i32 [ %nb.0.shr.i827.i, %do.body.i830.i ], [ 0, %if.end522.i ]
  %add.i821.i = add nsw i32 %nb.0.i820.i, %na.0.i819.i, !dbg !1080
  %shr.i822.i = ashr i32 %add.i821.i, 1, !dbg !1080
  tail call void @llvm.dbg.value(metadata !{i32 %shr.i822.i}, i64 0, metadata !1082), !dbg !1080
  %idxprom.i823.i = sext i32 %shr.i822.i to i64, !dbg !1083
  %arrayidx.i824.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i823.i, !dbg !1083
  %110 = load i32* %arrayidx.i824.i, align 4, !dbg !1083, !tbaa !651
  %cmp.i825.i = icmp sgt i32 %110, %or512.i, !dbg !1083
  %shr.na.0.i826.i = select i1 %cmp.i825.i, i32 %shr.i822.i, i32 %na.0.i819.i
  %nb.0.shr.i827.i = select i1 %cmp.i825.i, i32 %nb.0.i820.i, i32 %shr.i822.i
  %sub.i828.i = sub nsw i32 %shr.na.0.i826.i, %nb.0.shr.i827.i, !dbg !1084
  %cmp1.i829.i = icmp eq i32 %sub.i828.i, 1, !dbg !1084
  br i1 %cmp1.i829.i, label %BZ2_indexIntoF.exit831.i, label %do.body.i830.i, !dbg !1084

BZ2_indexIntoF.exit831.i:                         ; preds = %do.body.i830.i
  %idxprom537.i = zext i32 %or512.i to i64, !dbg !1081
  %arrayidx539.i = getelementptr inbounds i16* %98, i64 %idxprom537.i, !dbg !1081
  %111 = load i16* %arrayidx539.i, align 2, !dbg !1081, !tbaa !945
  %conv540.i = zext i16 %111 to i32, !dbg !1081
  %shr542.i = lshr i32 %or512.i, 1, !dbg !1081
  %idxprom543.i = zext i32 %shr542.i to i64, !dbg !1081
  %arrayidx545.i = getelementptr inbounds i8* %100, i64 %idxprom543.i, !dbg !1081
  %112 = load i8* %arrayidx545.i, align 1, !dbg !1081, !tbaa !616
  %conv546.i = zext i8 %112 to i32, !dbg !1081
  %shl548.i = shl nuw nsw i32 %conv499.i, 2, !dbg !1081
  %and549.i = and i32 %shl548.i, 4, !dbg !1081
  %shr550.i = lshr i32 %conv546.i, %and549.i, !dbg !1081
  %and551.i = shl i32 %shr550.i, 16, !dbg !1081
  %shl552.i = and i32 %and551.i, 983040, !dbg !1081
  %or553.i = or i32 %shl552.i, %conv540.i, !dbg !1081
  store i32 %or553.i, i32* %12, align 4, !dbg !1081, !tbaa !651
  %inc556.i = add nsw i32 %93, 4, !dbg !1081
  store i32 %inc556.i, i32* %9, align 4, !dbg !1081, !tbaa !651
  %conv557.i = and i32 %nb.0.shr.i827.i, 255, !dbg !1085
  %add558.i = add nsw i32 %conv557.i, 4, !dbg !1085
  store i32 %add558.i, i32* %8, align 4, !dbg !1085, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %or553.i}, i64 0, metadata !1086), !dbg !1088
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1089), !dbg !1090
  tail call void @llvm.dbg.value(metadata !872, i64 0, metadata !1091), !dbg !1092
  br label %do.body.i817.i, !dbg !1093

do.body.i817.i:                                   ; preds = %do.body.i817.i, %BZ2_indexIntoF.exit831.i
  %na.0.i806.i = phi i32 [ 256, %BZ2_indexIntoF.exit831.i ], [ %shr.na.0.i813.i, %do.body.i817.i ]
  %nb.0.i807.i = phi i32 [ 0, %BZ2_indexIntoF.exit831.i ], [ %nb.0.shr.i814.i, %do.body.i817.i ]
  %add.i808.i = add nsw i32 %nb.0.i807.i, %na.0.i806.i, !dbg !1094
  %shr.i809.i = ashr i32 %add.i808.i, 1, !dbg !1094
  tail call void @llvm.dbg.value(metadata !{i32 %shr.i809.i}, i64 0, metadata !1095), !dbg !1094
  %idxprom.i810.i = sext i32 %shr.i809.i to i64, !dbg !1096
  %arrayidx.i811.i = getelementptr inbounds %struct.DState* %1, i64 0, i32 18, i64 %idxprom.i810.i, !dbg !1096
  %113 = load i32* %arrayidx.i811.i, align 4, !dbg !1096, !tbaa !651
  %cmp.i812.i = icmp sgt i32 %113, %or553.i, !dbg !1096
  %shr.na.0.i813.i = select i1 %cmp.i812.i, i32 %shr.i809.i, i32 %na.0.i806.i
  %nb.0.shr.i814.i = select i1 %cmp.i812.i, i32 %nb.0.i807.i, i32 %shr.i809.i
  %sub.i815.i = sub nsw i32 %shr.na.0.i813.i, %nb.0.shr.i814.i, !dbg !1097
  %cmp1.i816.i = icmp eq i32 %sub.i815.i, 1, !dbg !1097
  br i1 %cmp1.i816.i, label %BZ2_indexIntoF.exit818.i, label %do.body.i817.i, !dbg !1097

BZ2_indexIntoF.exit818.i:                         ; preds = %do.body.i817.i
  store i32 %nb.0.shr.i814.i, i32* %10, align 4, !dbg !1087, !tbaa !651
  %idxprom566.i = zext i32 %or553.i to i64, !dbg !1087
  %arrayidx568.i = getelementptr inbounds i16* %98, i64 %idxprom566.i, !dbg !1087
  %114 = load i16* %arrayidx568.i, align 2, !dbg !1087, !tbaa !945
  %conv569.i = zext i16 %114 to i32, !dbg !1087
  %shr571.i = lshr i32 %or553.i, 1, !dbg !1087
  %idxprom572.i = zext i32 %shr571.i to i64, !dbg !1087
  %arrayidx574.i = getelementptr inbounds i8* %100, i64 %idxprom572.i, !dbg !1087
  %115 = load i8* %arrayidx574.i, align 1, !dbg !1087, !tbaa !616
  %conv575.i = zext i8 %115 to i32, !dbg !1087
  %shl577.i = shl nuw nsw i32 %conv540.i, 2, !dbg !1087
  %and578.i = and i32 %shl577.i, 4, !dbg !1087
  %shr579.i = lshr i32 %conv575.i, %and578.i, !dbg !1087
  %and580.i = shl i32 %shr579.i, 16, !dbg !1087
  %shl581.i = and i32 %and580.i, 983040, !dbg !1087
  %or582.i = or i32 %shl581.i, %conv569.i, !dbg !1087
  store i32 %or582.i, i32* %12, align 4, !dbg !1087, !tbaa !651
  %inc585.i = add nsw i32 %93, 5, !dbg !1087
  store i32 %inc585.i, i32* %9, align 4, !dbg !1087, !tbaa !651
  br label %while.body341.backedge.i, !dbg !1098

if.else:                                          ; preds = %if.then14
  tail call void @llvm.dbg.value(metadata !{%struct.DState* %1}, i64 0, metadata !1099) #9, !dbg !1100
  br i1 %tobool.i105, label %if.else.i, label %while.body2.preheader.i106, !dbg !888

while.body2.preheader.i106:                       ; preds = %if.else
  %116 = load %struct.bz_stream** %strm4, align 8, !dbg !1101, !tbaa !615
  %avail_out673.i = getelementptr inbounds %struct.bz_stream* %116, i64 0, i32 5, !dbg !1101
  %117 = load i32* %avail_out673.i, align 4, !dbg !1101, !tbaa !651
  %cmp674.i = icmp eq i32 %117, 0, !dbg !1101
  br i1 %cmp674.i, label %if.end20, label %if.end.i117, !dbg !1101

if.end.i117:                                      ; preds = %while.body2.backedge.i151, %while.body2.preheader.i106
  %118 = phi %struct.bz_stream* [ %116, %while.body2.preheader.i106 ], [ %142, %while.body2.backedge.i151 ]
  %119 = load i32* %8, align 4, !dbg !1103, !tbaa !651
  %cmp4.i116 = icmp eq i32 %119, 0, !dbg !1103
  br i1 %cmp4.i116, label %while.end.i140, label %if.end6.i134, !dbg !1103

if.end6.i134:                                     ; preds = %if.end.i117
  %120 = load i8* %7, align 1, !dbg !1104, !tbaa !616
  %next_out.i118 = getelementptr inbounds %struct.bz_stream* %118, i64 0, i32 4, !dbg !1104
  %121 = load i8** %next_out.i118, align 8, !dbg !1104, !tbaa !615
  store i8 %120, i8* %121, align 1, !dbg !1104, !tbaa !616
  %122 = load i32* %6, align 4, !dbg !1105, !tbaa !651
  %shl.i119 = shl i32 %122, 8, !dbg !1105
  %shr.i120 = lshr i32 %122, 24, !dbg !1105
  %123 = load i8* %7, align 1, !dbg !1105, !tbaa !616
  %conv.i121 = zext i8 %123 to i32, !dbg !1105
  %xor.i122 = xor i32 %conv.i121, %shr.i120, !dbg !1105
  %idxprom.i123 = zext i32 %xor.i122 to i64, !dbg !1105
  %arrayidx.i124 = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom.i123, !dbg !1105
  %124 = load i32* %arrayidx.i124, align 4, !dbg !1105, !tbaa !651
  %xor10.i125 = xor i32 %124, %shl.i119, !dbg !1105
  store i32 %xor10.i125, i32* %6, align 4, !dbg !1105, !tbaa !651
  %125 = load i32* %8, align 4, !dbg !1107, !tbaa !651
  %dec.i126 = add nsw i32 %125, -1, !dbg !1107
  store i32 %dec.i126, i32* %8, align 4, !dbg !1107, !tbaa !651
  %126 = load %struct.bz_stream** %strm4, align 8, !dbg !1108, !tbaa !615
  %next_out14.i127 = getelementptr inbounds %struct.bz_stream* %126, i64 0, i32 4, !dbg !1108
  %127 = load i8** %next_out14.i127, align 8, !dbg !1108, !tbaa !615
  %incdec.ptr.i128 = getelementptr inbounds i8* %127, i64 1, !dbg !1108
  store i8* %incdec.ptr.i128, i8** %next_out14.i127, align 8, !dbg !1108, !tbaa !615
  %128 = load %struct.bz_stream** %strm4, align 8, !dbg !1109, !tbaa !615
  %avail_out16.i129 = getelementptr inbounds %struct.bz_stream* %128, i64 0, i32 5, !dbg !1109
  %129 = load i32* %avail_out16.i129, align 4, !dbg !1109, !tbaa !651
  %dec17.i130 = add i32 %129, -1, !dbg !1109
  store i32 %dec17.i130, i32* %avail_out16.i129, align 4, !dbg !1109, !tbaa !651
  %total_out_lo32.i131 = getelementptr inbounds %struct.bz_stream* %128, i64 0, i32 6, !dbg !1110
  %130 = load i32* %total_out_lo32.i131, align 4, !dbg !1110, !tbaa !651
  %inc.i132 = add i32 %130, 1, !dbg !1110
  store i32 %inc.i132, i32* %total_out_lo32.i131, align 4, !dbg !1110, !tbaa !651
  %cmp21.i133 = icmp eq i32 %inc.i132, 0, !dbg !1111
  br i1 %cmp21.i133, label %if.then23.i137, label %while.body2.backedge.i151, !dbg !1111

if.then23.i137:                                   ; preds = %if.end6.i134
  %total_out_hi32.i135 = getelementptr inbounds %struct.bz_stream* %128, i64 0, i32 7, !dbg !1111
  %131 = load i32* %total_out_hi32.i135, align 4, !dbg !1111, !tbaa !651
  %inc25.i136 = add i32 %131, 1, !dbg !1111
  store i32 %inc25.i136, i32* %total_out_hi32.i135, align 4, !dbg !1111, !tbaa !651
  br label %while.body2.backedge.i151, !dbg !1111

while.end.i140:                                   ; preds = %if.end.i117
  %132 = load i32* %9, align 4, !dbg !1112, !tbaa !651
  %133 = load i32* %13, align 4, !dbg !1112, !tbaa !651
  %add.i138 = add nsw i32 %133, 1, !dbg !1112
  %cmp27.i139 = icmp eq i32 %132, %add.i138, !dbg !1112
  br i1 %cmp27.i139, label %if.end20, label %if.end30.i142, !dbg !1112

if.end30.i142:                                    ; preds = %while.end.i140
  %cmp34.i141 = icmp sgt i32 %132, %add.i138, !dbg !1113
  br i1 %cmp34.i141, label %return, label %if.end37.i145, !dbg !1113

if.end37.i145:                                    ; preds = %if.end30.i142
  store i32 1, i32* %8, align 4, !dbg !1114, !tbaa !651
  %134 = load i32* %10, align 4, !dbg !1115, !tbaa !651
  %conv39.i143 = trunc i32 %134 to i8, !dbg !1115
  store i8 %conv39.i143, i8* %7, align 1, !dbg !1115, !tbaa !616
  %135 = load i32* %12, align 4, !dbg !898, !tbaa !651
  %idxprom41.i = zext i32 %135 to i64, !dbg !898
  %136 = load i32** %11, align 8, !dbg !898, !tbaa !615
  %arrayidx42.i = getelementptr inbounds i32* %136, i64 %idxprom41.i, !dbg !898
  %137 = load i32* %arrayidx42.i, align 4, !dbg !898, !tbaa !651
  %shr47.i144 = lshr i32 %137, 8, !dbg !898
  store i32 %shr47.i144, i32* %12, align 4, !dbg !898, !tbaa !651
  %138 = load i32* %14, align 4, !dbg !898, !tbaa !651
  %cmp48.i = icmp eq i32 %138, 0, !dbg !898
  br i1 %cmp48.i, label %if.then50.i, label %if.end62.i, !dbg !898

if.then50.i:                                      ; preds = %if.end37.i145
  %139 = load i32* %15, align 4, !dbg !901, !tbaa !651
  %idxprom51.i = sext i32 %139 to i64, !dbg !901
  %arrayidx52.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom51.i, !dbg !901
  %140 = load i32* %arrayidx52.i, align 4, !dbg !901, !tbaa !651
  store i32 %140, i32* %14, align 4, !dbg !901, !tbaa !651
  %inc55.i = add nsw i32 %139, 1, !dbg !901
  %cmp57.i146 = icmp eq i32 %inc55.i, 512, !dbg !901
  %.inc55.i = select i1 %cmp57.i146, i32 0, i32 %inc55.i, !dbg !901
  store i32 %.inc55.i, i32* %15, align 4, !dbg !901, !tbaa !651
  br label %if.end62.i, !dbg !901

if.end62.i:                                       ; preds = %if.then50.i, %if.end37.i145
  %141 = phi i32 [ %140, %if.then50.i ], [ %138, %if.end37.i145 ]
  %dec64.i = add nsw i32 %141, -1, !dbg !898
  store i32 %dec64.i, i32* %14, align 4, !dbg !898, !tbaa !651
  %inc72.i = add nsw i32 %132, 1, !dbg !1116
  store i32 %inc72.i, i32* %9, align 4, !dbg !1116, !tbaa !651
  %cmp76.i = icmp eq i32 %132, %133, !dbg !1117
  br i1 %cmp76.i, label %while.body2.backedge.i151, label %if.end79.i, !dbg !1117

if.end79.i:                                       ; preds = %if.end62.i
  %cmp66.i147 = icmp eq i32 %dec64.i, 1, !dbg !1116
  %cond.i148 = zext i1 %cmp66.i147 to i32, !dbg !1116
  %.masked.i = and i32 %137, 255, !dbg !1118
  %conv80.i = xor i32 %cond.i148, %.masked.i, !dbg !1118
  %cmp82.i = icmp eq i32 %conv80.i, %134, !dbg !1118
  br i1 %cmp82.i, label %if.end87.i, label %if.then84.i, !dbg !1118

if.then84.i:                                      ; preds = %if.end79.i
  store i32 %conv80.i, i32* %10, align 4, !dbg !1119, !tbaa !651
  br label %while.body2.backedge.i151, !dbg !1119

while.body2.backedge.i151:                        ; preds = %if.end169.i, %if.end115.i, %if.end62.i, %if.end265.i, %if.then192.i, %if.then138.i, %if.then84.i, %if.then23.i137, %if.end6.i134
  %142 = phi %struct.bz_stream* [ %118, %if.then84.i ], [ %118, %if.then138.i ], [ %118, %if.then192.i ], [ %118, %if.end265.i ], [ %128, %if.then23.i137 ], [ %128, %if.end6.i134 ], [ %118, %if.end62.i ], [ %118, %if.end115.i ], [ %118, %if.end169.i ], !dbg !1101
  %avail_out.i149 = getelementptr inbounds %struct.bz_stream* %142, i64 0, i32 5, !dbg !1101
  %143 = load i32* %avail_out.i149, align 4, !dbg !1101, !tbaa !651
  %cmp.i150 = icmp eq i32 %143, 0, !dbg !1101
  br i1 %cmp.i150, label %if.end20, label %if.end.i117, !dbg !1101

if.end87.i:                                       ; preds = %if.end79.i
  store i32 2, i32* %8, align 4, !dbg !1121, !tbaa !651
  %idxprom90.i = zext i32 %shr47.i144 to i64, !dbg !1122
  %arrayidx92.i = getelementptr inbounds i32* %136, i64 %idxprom90.i, !dbg !1122
  %144 = load i32* %arrayidx92.i, align 4, !dbg !1122, !tbaa !651
  %shr98.i = lshr i32 %144, 8, !dbg !1122
  store i32 %shr98.i, i32* %12, align 4, !dbg !1122, !tbaa !651
  %cmp100.i = icmp eq i32 %dec64.i, 0, !dbg !1122
  br i1 %cmp100.i, label %if.then102.i, label %if.end115.i, !dbg !1122

if.then102.i:                                     ; preds = %if.end87.i
  %145 = load i32* %15, align 4, !dbg !1123, !tbaa !651
  %idxprom104.i152 = sext i32 %145 to i64, !dbg !1123
  %arrayidx105.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom104.i152, !dbg !1123
  %146 = load i32* %arrayidx105.i, align 4, !dbg !1123, !tbaa !651
  store i32 %146, i32* %14, align 4, !dbg !1123, !tbaa !651
  %inc108.i = add nsw i32 %145, 1, !dbg !1123
  %cmp110.i = icmp eq i32 %inc108.i, 512, !dbg !1123
  %.inc108.i = select i1 %cmp110.i, i32 0, i32 %inc108.i, !dbg !1123
  store i32 %.inc108.i, i32* %15, align 4, !dbg !1123, !tbaa !651
  br label %if.end115.i, !dbg !1123

if.end115.i:                                      ; preds = %if.then102.i, %if.end87.i
  %147 = phi i32 [ %146, %if.then102.i ], [ %dec64.i, %if.end87.i ]
  %dec117.i = add nsw i32 %147, -1, !dbg !1122
  store i32 %dec117.i, i32* %14, align 4, !dbg !1122, !tbaa !651
  %inc126.i = add nsw i32 %132, 2, !dbg !1125
  store i32 %inc126.i, i32* %9, align 4, !dbg !1125, !tbaa !651
  %cmp130.i = icmp eq i32 %inc72.i, %133, !dbg !1126
  br i1 %cmp130.i, label %while.body2.backedge.i151, label %if.end133.i, !dbg !1126

if.end133.i:                                      ; preds = %if.end115.i
  %cmp119.i = icmp eq i32 %dec117.i, 1, !dbg !1125
  %cond121.i = zext i1 %cmp119.i to i32, !dbg !1125
  %.masked632.i = and i32 %144, 255, !dbg !1127
  %conv134.i = xor i32 %cond121.i, %.masked632.i, !dbg !1127
  %cmp136.i = icmp eq i32 %conv134.i, %134, !dbg !1127
  br i1 %cmp136.i, label %if.end141.i, label %if.then138.i, !dbg !1127

if.then138.i:                                     ; preds = %if.end133.i
  store i32 %conv134.i, i32* %10, align 4, !dbg !1128, !tbaa !651
  br label %while.body2.backedge.i151, !dbg !1128

if.end141.i:                                      ; preds = %if.end133.i
  store i32 3, i32* %8, align 4, !dbg !1130, !tbaa !651
  %idxprom144.i = zext i32 %shr98.i to i64, !dbg !1131
  %arrayidx146.i = getelementptr inbounds i32* %136, i64 %idxprom144.i, !dbg !1131
  %148 = load i32* %arrayidx146.i, align 4, !dbg !1131, !tbaa !651
  %shr152.i = lshr i32 %148, 8, !dbg !1131
  store i32 %shr152.i, i32* %12, align 4, !dbg !1131, !tbaa !651
  %cmp154.i = icmp eq i32 %dec117.i, 0, !dbg !1131
  br i1 %cmp154.i, label %if.then156.i, label %if.end169.i, !dbg !1131

if.then156.i:                                     ; preds = %if.end141.i
  %149 = load i32* %15, align 4, !dbg !1132, !tbaa !651
  %idxprom158.i = sext i32 %149 to i64, !dbg !1132
  %arrayidx159.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom158.i, !dbg !1132
  %150 = load i32* %arrayidx159.i, align 4, !dbg !1132, !tbaa !651
  store i32 %150, i32* %14, align 4, !dbg !1132, !tbaa !651
  %inc162.i = add nsw i32 %149, 1, !dbg !1132
  %cmp164.i = icmp eq i32 %inc162.i, 512, !dbg !1132
  %.inc162.i = select i1 %cmp164.i, i32 0, i32 %inc162.i, !dbg !1132
  store i32 %.inc162.i, i32* %15, align 4, !dbg !1132, !tbaa !651
  br label %if.end169.i, !dbg !1132

if.end169.i:                                      ; preds = %if.then156.i, %if.end141.i
  %151 = phi i32 [ %150, %if.then156.i ], [ %dec117.i, %if.end141.i ]
  %dec171.i = add nsw i32 %151, -1, !dbg !1131
  store i32 %dec171.i, i32* %14, align 4, !dbg !1131, !tbaa !651
  %inc180.i = add nsw i32 %132, 3, !dbg !1134
  store i32 %inc180.i, i32* %9, align 4, !dbg !1134, !tbaa !651
  %cmp184.i = icmp eq i32 %inc126.i, %133, !dbg !1135
  br i1 %cmp184.i, label %while.body2.backedge.i151, label %if.end187.i, !dbg !1135

if.end187.i:                                      ; preds = %if.end169.i
  %cmp173.i = icmp eq i32 %dec171.i, 1, !dbg !1134
  %cond175.i = zext i1 %cmp173.i to i32, !dbg !1134
  %.masked633.i = and i32 %148, 255, !dbg !1136
  %conv188.i = xor i32 %cond175.i, %.masked633.i, !dbg !1136
  %cmp190.i = icmp eq i32 %conv188.i, %134, !dbg !1136
  br i1 %cmp190.i, label %if.end195.i, label %if.then192.i, !dbg !1136

if.then192.i:                                     ; preds = %if.end187.i
  store i32 %conv188.i, i32* %10, align 4, !dbg !1137, !tbaa !651
  br label %while.body2.backedge.i151, !dbg !1137

if.end195.i:                                      ; preds = %if.end187.i
  %idxprom197.i = zext i32 %shr152.i to i64, !dbg !1139
  %arrayidx199.i = getelementptr inbounds i32* %136, i64 %idxprom197.i, !dbg !1139
  %152 = load i32* %arrayidx199.i, align 4, !dbg !1139, !tbaa !651
  %shr205.i = lshr i32 %152, 8, !dbg !1139
  store i32 %shr205.i, i32* %12, align 4, !dbg !1139, !tbaa !651
  %cmp207.i = icmp eq i32 %dec171.i, 0, !dbg !1139
  br i1 %cmp207.i, label %if.then209.i, label %if.end222.i, !dbg !1139

if.then209.i:                                     ; preds = %if.end195.i
  %153 = load i32* %15, align 4, !dbg !1140, !tbaa !651
  %idxprom211.i = sext i32 %153 to i64, !dbg !1140
  %arrayidx212.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom211.i, !dbg !1140
  %154 = load i32* %arrayidx212.i, align 4, !dbg !1140, !tbaa !651
  store i32 %154, i32* %14, align 4, !dbg !1140, !tbaa !651
  %inc215.i = add nsw i32 %153, 1, !dbg !1140
  %cmp217.i = icmp eq i32 %inc215.i, 512, !dbg !1140
  %.inc215.i = select i1 %cmp217.i, i32 0, i32 %inc215.i, !dbg !1140
  store i32 %.inc215.i, i32* %15, align 4, !dbg !1140, !tbaa !651
  br label %if.end222.i, !dbg !1140

if.end222.i:                                      ; preds = %if.then209.i, %if.end195.i
  %155 = phi i32 [ %154, %if.then209.i ], [ %dec171.i, %if.end195.i ]
  %dec224.i = add nsw i32 %155, -1, !dbg !1139
  store i32 %dec224.i, i32* %14, align 4, !dbg !1139, !tbaa !651
  %cmp226.i = icmp eq i32 %dec224.i, 1, !dbg !1142
  %cond228.i = zext i1 %cmp226.i to i32, !dbg !1142
  %inc233.i = add nsw i32 %132, 4, !dbg !1142
  store i32 %inc233.i, i32* %9, align 4, !dbg !1142, !tbaa !651
  %.masked634.i = and i32 %152, 255, !dbg !1143
  %conv234.i = xor i32 %cond228.i, %.masked634.i, !dbg !1143
  %add235.i = add nsw i32 %conv234.i, 4, !dbg !1143
  store i32 %add235.i, i32* %8, align 4, !dbg !1143, !tbaa !651
  %idxprom238.i = zext i32 %shr205.i to i64, !dbg !1144
  %arrayidx240.i = getelementptr inbounds i32* %136, i64 %idxprom238.i, !dbg !1144
  %156 = load i32* %arrayidx240.i, align 4, !dbg !1144, !tbaa !651
  %conv245.i = and i32 %156, 255, !dbg !1144
  store i32 %conv245.i, i32* %10, align 4, !dbg !1144, !tbaa !651
  %shr248.i = lshr i32 %156, 8, !dbg !1144
  store i32 %shr248.i, i32* %12, align 4, !dbg !1144, !tbaa !651
  %cmp250.i = icmp eq i32 %dec224.i, 0, !dbg !1144
  br i1 %cmp250.i, label %if.then252.i, label %if.end265.i, !dbg !1144

if.then252.i:                                     ; preds = %if.end222.i
  %157 = load i32* %15, align 4, !dbg !1145, !tbaa !651
  %idxprom254.i = sext i32 %157 to i64, !dbg !1145
  %arrayidx255.i = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %idxprom254.i, !dbg !1145
  %158 = load i32* %arrayidx255.i, align 4, !dbg !1145, !tbaa !651
  store i32 %158, i32* %14, align 4, !dbg !1145, !tbaa !651
  %inc258.i = add nsw i32 %157, 1, !dbg !1145
  %cmp260.i = icmp eq i32 %inc258.i, 512, !dbg !1145
  %.inc258.i = select i1 %cmp260.i, i32 0, i32 %inc258.i, !dbg !1145
  store i32 %.inc258.i, i32* %15, align 4, !dbg !1145, !tbaa !651
  br label %if.end265.i, !dbg !1145

if.end265.i:                                      ; preds = %if.then252.i, %if.end222.i
  %159 = phi i32 [ %158, %if.then252.i ], [ %dec224.i, %if.end222.i ]
  %dec267.i = add nsw i32 %159, -1, !dbg !1144
  store i32 %dec267.i, i32* %14, align 4, !dbg !1144, !tbaa !651
  %cmp269.i = icmp eq i32 %dec267.i, 1, !dbg !1147
  %cond271.i = zext i1 %cmp269.i to i32, !dbg !1147
  %xor273.i = xor i32 %cond271.i, %conv245.i, !dbg !1147
  store i32 %xor273.i, i32* %10, align 4, !dbg !1147, !tbaa !651
  %inc275.i = add nsw i32 %132, 5, !dbg !1147
  store i32 %inc275.i, i32* %9, align 4, !dbg !1147, !tbaa !651
  br label %while.body2.backedge.i151, !dbg !1148

if.else.i:                                        ; preds = %if.else
  %160 = load i32* %6, align 4, !dbg !890, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %160}, i64 0, metadata !1149) #9, !dbg !890
  %161 = load i8* %7, align 1, !dbg !891, !tbaa !616
  tail call void @llvm.dbg.value(metadata !{i8 %161}, i64 0, metadata !1150) #9, !dbg !891
  %162 = load i32* %8, align 4, !dbg !892, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %162}, i64 0, metadata !1151) #9, !dbg !892
  %163 = load i32* %9, align 4, !dbg !893, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %163}, i64 0, metadata !1152) #9, !dbg !893
  %164 = load i32* %10, align 4, !dbg !894, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %164}, i64 0, metadata !1153) #9, !dbg !894
  %165 = load i32** %11, align 8, !dbg !895, !tbaa !615
  tail call void @llvm.dbg.value(metadata !{i32* %165}, i64 0, metadata !1154) #9, !dbg !895
  %166 = load i32* %12, align 4, !dbg !896, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %166}, i64 0, metadata !1155) #9, !dbg !896
  %167 = load %struct.bz_stream** %strm4, align 8, !dbg !1156, !tbaa !615
  %next_out284.i = getelementptr inbounds %struct.bz_stream* %167, i64 0, i32 4, !dbg !1156
  %168 = load i8** %next_out284.i, align 8, !dbg !1156, !tbaa !615
  tail call void @llvm.dbg.value(metadata !{i8* %168}, i64 0, metadata !1157) #9, !dbg !1156
  %avail_out286.i = getelementptr inbounds %struct.bz_stream* %167, i64 0, i32 5, !dbg !1158
  %169 = load i32* %avail_out286.i, align 4, !dbg !1158, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %169}, i64 0, metadata !1159) #9, !dbg !1158
  tail call void @llvm.dbg.value(metadata !{i32 %169}, i64 0, metadata !1160) #9, !dbg !1161
  %170 = load i32* %13, align 4, !dbg !897, !tbaa !651
  %add288.i = add nsw i32 %170, 1, !dbg !897
  tail call void @llvm.dbg.value(metadata !{i32 %add288.i}, i64 0, metadata !1162) #9, !dbg !897
  br label %while.body289.i, !dbg !1163

while.body289.i:                                  ; preds = %if.end384.i, %if.end378.i, %if.end368.i, %if.end362.i, %if.end352.i156, %if.else.i
  %c_state_out_len.0.i = phi i32 [ %162, %if.else.i ], [ 2, %if.end352.i156 ], [ 3, %if.end368.i ], [ %add392.i, %if.end384.i ], [ 2, %if.end362.i ], [ 3, %if.end378.i ]
  %c_nblock_used.0.i = phi i32 [ %163, %if.else.i ], [ %add288.i, %if.end352.i156 ], [ %add288.i, %if.end368.i ], [ %inc399.i, %if.end384.i ], [ %inc358.i, %if.end362.i ], [ %inc374.i, %if.end378.i ]
  %c_k0.0.i = phi i32 [ %164, %if.else.i ], [ %c_k0.2.i, %if.end352.i156 ], [ %c_k0.2.i, %if.end368.i ], [ %conv397.i, %if.end384.i ], [ %conv363.i, %if.end362.i ], [ %conv379.i, %if.end378.i ]
  %c_state_out_ch.0.i = phi i8 [ %161, %if.else.i ], [ %conv336.i, %if.end352.i156 ], [ %conv336.i, %if.end368.i ], [ %conv336.i, %if.end384.i ], [ %conv336.i, %if.end362.i ], [ %conv336.i, %if.end378.i ]
  %c_tPos.0.i = phi i32 [ %166, %if.else.i ], [ %shr357.i, %if.end352.i156 ], [ %shr373.i, %if.end368.i ], [ %shr398.i, %if.end384.i ], [ %shr357.i, %if.end362.i ], [ %shr373.i, %if.end378.i ]
  %cs_next_out.0.i = phi i8* [ %168, %if.else.i ], [ %cs_next_out.3.i, %if.end352.i156 ], [ %cs_next_out.3.i, %if.end368.i ], [ %cs_next_out.3.i, %if.end384.i ], [ %cs_next_out.3.i, %if.end362.i ], [ %cs_next_out.3.i, %if.end378.i ]
  %cs_avail_out.0.i = phi i32 [ %169, %if.else.i ], [ %cs_avail_out.3.i, %if.end352.i156 ], [ %cs_avail_out.3.i, %if.end368.i ], [ %cs_avail_out.3.i, %if.end384.i ], [ %cs_avail_out.3.i, %if.end362.i ], [ %cs_avail_out.3.i, %if.end378.i ]
  %c_calculatedBlockCRC.0.i = phi i32 [ %160, %if.else.i ], [ %c_calculatedBlockCRC.3.i, %if.end352.i156 ], [ %c_calculatedBlockCRC.3.i, %if.end368.i ], [ %c_calculatedBlockCRC.3.i, %if.end384.i ], [ %c_calculatedBlockCRC.3.i, %if.end362.i ], [ %c_calculatedBlockCRC.3.i, %if.end378.i ]
  %cmp290.i = icmp sgt i32 %c_state_out_len.0.i, 0, !dbg !1164
  br i1 %cmp290.i, label %while.body294.preheader.i, label %if.end327.i, !dbg !1164

while.body294.preheader.i:                        ; preds = %while.body289.i
  %cmp295639.i = icmp eq i32 %cs_avail_out.0.i, 0, !dbg !1166
  br i1 %cmp295639.i, label %return_notr.i, label %if.end298.lr.ph.i, !dbg !1166

if.end298.lr.ph.i:                                ; preds = %while.body294.preheader.i
  %conv305.i = zext i8 %c_state_out_ch.0.i to i32, !dbg !1169
  br label %if.end298.i, !dbg !1166

if.end298.i:                                      ; preds = %if.end302.i, %if.end298.lr.ph.i
  %c_calculatedBlockCRC.1643.i = phi i32 [ %c_calculatedBlockCRC.0.i, %if.end298.lr.ph.i ], [ %xor309.i, %if.end302.i ]
  %cs_avail_out.1642.i = phi i32 [ %cs_avail_out.0.i, %if.end298.lr.ph.i ], [ %dec312.i, %if.end302.i ]
  %cs_next_out.1641.i = phi i8* [ %cs_next_out.0.i, %if.end298.lr.ph.i ], [ %incdec.ptr311.i, %if.end302.i ]
  %c_state_out_len.1640.i = phi i32 [ %c_state_out_len.0.i, %if.end298.lr.ph.i ], [ %dec310.i, %if.end302.i ]
  %cmp299.i = icmp eq i32 %c_state_out_len.1640.i, 1, !dbg !1171
  br i1 %cmp299.i, label %s_state_out_len_eq_one.i, label %if.end302.i, !dbg !1171

if.end302.i:                                      ; preds = %if.end298.i
  store i8 %c_state_out_ch.0.i, i8* %cs_next_out.1641.i, align 1, !dbg !1172, !tbaa !616
  %shl303.i = shl i32 %c_calculatedBlockCRC.1643.i, 8, !dbg !1169
  %shr304.i = lshr i32 %c_calculatedBlockCRC.1643.i, 24, !dbg !1169
  %xor306.i = xor i32 %shr304.i, %conv305.i, !dbg !1169
  %idxprom307.i = zext i32 %xor306.i to i64, !dbg !1169
  %arrayidx308.i = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom307.i, !dbg !1169
  %171 = load i32* %arrayidx308.i, align 4, !dbg !1169, !tbaa !651
  %xor309.i = xor i32 %171, %shl303.i, !dbg !1169
  tail call void @llvm.dbg.value(metadata !{i32 %xor309.i}, i64 0, metadata !1149) #9, !dbg !1169
  %dec310.i = add nsw i32 %c_state_out_len.1640.i, -1, !dbg !1173
  tail call void @llvm.dbg.value(metadata !{i32 %dec310.i}, i64 0, metadata !1151) #9, !dbg !1173
  %incdec.ptr311.i = getelementptr inbounds i8* %cs_next_out.1641.i, i64 1, !dbg !1174
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr311.i}, i64 0, metadata !1157) #9, !dbg !1174
  %dec312.i = add i32 %cs_avail_out.1642.i, -1, !dbg !1175
  tail call void @llvm.dbg.value(metadata !{i32 %dec312.i}, i64 0, metadata !1159) #9, !dbg !1175
  %cmp295.i = icmp eq i32 %dec312.i, 0, !dbg !1166
  br i1 %cmp295.i, label %return_notr.i, label %if.end298.i, !dbg !1166

s_state_out_len_eq_one.i:                         ; preds = %if.end298.i, %if.end348.i, %if.end335.i
  %c_nblock_used.1.i = phi i32 [ %add288.i, %if.end348.i ], [ %inc342.i, %if.end335.i ], [ %c_nblock_used.0.i, %if.end298.i ]
  %c_k0.1.i = phi i32 [ %c_k0.2.i, %if.end348.i ], [ %conv343.i, %if.end335.i ], [ %c_k0.0.i, %if.end298.i ]
  %c_state_out_ch.1.i = phi i8 [ %conv336.i, %if.end348.i ], [ %conv336.i, %if.end335.i ], [ %c_state_out_ch.0.i, %if.end298.i ]
  %c_tPos.1.i = phi i32 [ %shr341.i, %if.end348.i ], [ %shr341.i, %if.end335.i ], [ %c_tPos.0.i, %if.end298.i ]
  %cs_next_out.2.i = phi i8* [ %cs_next_out.3.i, %if.end348.i ], [ %cs_next_out.3.i, %if.end335.i ], [ %cs_next_out.1641.i, %if.end298.i ]
  %cs_avail_out.2.i = phi i32 [ %cs_avail_out.3.i, %if.end348.i ], [ %cs_avail_out.3.i, %if.end335.i ], [ %cs_avail_out.1642.i, %if.end298.i ]
  %c_calculatedBlockCRC.2.i = phi i32 [ %c_calculatedBlockCRC.3.i, %if.end348.i ], [ %c_calculatedBlockCRC.3.i, %if.end335.i ], [ %c_calculatedBlockCRC.1643.i, %if.end298.i ]
  %cmp314.i = icmp eq i32 %cs_avail_out.2.i, 0, !dbg !1176
  br i1 %cmp314.i, label %return_notr.i, label %if.end317.i, !dbg !1176

if.end317.i:                                      ; preds = %s_state_out_len_eq_one.i
  store i8 %c_state_out_ch.1.i, i8* %cs_next_out.2.i, align 1, !dbg !1178, !tbaa !616
  %shl318.i = shl i32 %c_calculatedBlockCRC.2.i, 8, !dbg !1179
  %shr319.i = lshr i32 %c_calculatedBlockCRC.2.i, 24, !dbg !1179
  %conv320.i = zext i8 %c_state_out_ch.1.i to i32, !dbg !1179
  %xor321.i = xor i32 %shr319.i, %conv320.i, !dbg !1179
  %idxprom322.i = zext i32 %xor321.i to i64, !dbg !1179
  %arrayidx323.i = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom322.i, !dbg !1179
  %172 = load i32* %arrayidx323.i, align 4, !dbg !1179, !tbaa !651
  %xor324.i = xor i32 %172, %shl318.i, !dbg !1179
  tail call void @llvm.dbg.value(metadata !{i32 %xor324.i}, i64 0, metadata !1149) #9, !dbg !1179
  %incdec.ptr325.i = getelementptr inbounds i8* %cs_next_out.2.i, i64 1, !dbg !1181
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr325.i}, i64 0, metadata !1157) #9, !dbg !1181
  %dec326.i = add i32 %cs_avail_out.2.i, -1, !dbg !1182
  tail call void @llvm.dbg.value(metadata !{i32 %dec326.i}, i64 0, metadata !1159) #9, !dbg !1182
  br label %if.end327.i, !dbg !1183

if.end327.i:                                      ; preds = %if.end317.i, %while.body289.i
  %c_nblock_used.2.i = phi i32 [ %c_nblock_used.1.i, %if.end317.i ], [ %c_nblock_used.0.i, %while.body289.i ]
  %c_k0.2.i = phi i32 [ %c_k0.1.i, %if.end317.i ], [ %c_k0.0.i, %while.body289.i ]
  %c_state_out_ch.2.i = phi i8 [ %c_state_out_ch.1.i, %if.end317.i ], [ %c_state_out_ch.0.i, %while.body289.i ]
  %c_tPos.2.i = phi i32 [ %c_tPos.1.i, %if.end317.i ], [ %c_tPos.0.i, %while.body289.i ]
  %cs_next_out.3.i = phi i8* [ %incdec.ptr325.i, %if.end317.i ], [ %cs_next_out.0.i, %while.body289.i ]
  %cs_avail_out.3.i = phi i32 [ %dec326.i, %if.end317.i ], [ %cs_avail_out.0.i, %while.body289.i ]
  %c_calculatedBlockCRC.3.i = phi i32 [ %xor324.i, %if.end317.i ], [ %c_calculatedBlockCRC.0.i, %while.body289.i ]
  %cmp328.i = icmp sgt i32 %c_nblock_used.2.i, %add288.i, !dbg !1184
  br i1 %cmp328.i, label %return, label %if.end331.i, !dbg !1184

if.end331.i:                                      ; preds = %if.end327.i
  %cmp332.i153 = icmp eq i32 %c_nblock_used.2.i, %add288.i, !dbg !1185
  br i1 %cmp332.i153, label %return_notr.i, label %if.end335.i, !dbg !1185

if.end335.i:                                      ; preds = %if.end331.i
  %conv336.i = trunc i32 %c_k0.2.i to i8, !dbg !1186
  tail call void @llvm.dbg.value(metadata !{i8 %conv336.i}, i64 0, metadata !1150) #9, !dbg !1186
  %idxprom337.i = zext i32 %c_tPos.2.i to i64, !dbg !1187
  %arrayidx338.i = getelementptr inbounds i32* %165, i64 %idxprom337.i, !dbg !1187
  %173 = load i32* %arrayidx338.i, align 4, !dbg !1187, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %173}, i64 0, metadata !1155) #9, !dbg !1187
  %shr341.i = lshr i32 %173, 8, !dbg !1187
  tail call void @llvm.dbg.value(metadata !{i32 %shr341.i}, i64 0, metadata !1155) #9, !dbg !1187
  %inc342.i = add nsw i32 %c_nblock_used.2.i, 1, !dbg !1187
  tail call void @llvm.dbg.value(metadata !{i32 %inc342.i}, i64 0, metadata !1152) #9, !dbg !1187
  %conv343.i = and i32 %173, 255, !dbg !1188
  %cmp344.i154 = icmp eq i32 %conv343.i, %c_k0.2.i, !dbg !1188
  br i1 %cmp344.i154, label %if.end348.i, label %s_state_out_len_eq_one.i, !dbg !1188

if.end348.i:                                      ; preds = %if.end335.i
  %cmp349.i155 = icmp eq i32 %inc342.i, %add288.i, !dbg !1189
  br i1 %cmp349.i155, label %s_state_out_len_eq_one.i, label %if.end352.i156, !dbg !1189

if.end352.i156:                                   ; preds = %if.end348.i
  tail call void @llvm.dbg.value(metadata !1190, i64 0, metadata !1151) #9, !dbg !1191
  %idxprom353.i = zext i32 %shr341.i to i64, !dbg !1192
  %arrayidx354.i = getelementptr inbounds i32* %165, i64 %idxprom353.i, !dbg !1192
  %174 = load i32* %arrayidx354.i, align 4, !dbg !1192, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %174}, i64 0, metadata !1155) #9, !dbg !1192
  %shr357.i = lshr i32 %174, 8, !dbg !1192
  tail call void @llvm.dbg.value(metadata !{i32 %shr357.i}, i64 0, metadata !1155) #9, !dbg !1192
  %inc358.i = add nsw i32 %c_nblock_used.2.i, 2, !dbg !1192
  tail call void @llvm.dbg.value(metadata !{i32 %inc358.i}, i64 0, metadata !1152) #9, !dbg !1192
  %cmp359.i = icmp eq i32 %inc358.i, %add288.i, !dbg !1193
  br i1 %cmp359.i, label %while.body289.i, label %if.end362.i, !dbg !1193

if.end362.i:                                      ; preds = %if.end352.i156
  %conv363.i = and i32 %174, 255, !dbg !1194
  %cmp364.i = icmp eq i32 %conv363.i, %c_k0.2.i, !dbg !1194
  br i1 %cmp364.i, label %if.end368.i, label %while.body289.i, !dbg !1194

if.end368.i:                                      ; preds = %if.end362.i
  tail call void @llvm.dbg.value(metadata !1195, i64 0, metadata !1151) #9, !dbg !1196
  %idxprom369.i = zext i32 %shr357.i to i64, !dbg !1197
  %arrayidx370.i = getelementptr inbounds i32* %165, i64 %idxprom369.i, !dbg !1197
  %175 = load i32* %arrayidx370.i, align 4, !dbg !1197, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %175}, i64 0, metadata !1155) #9, !dbg !1197
  %shr373.i = lshr i32 %175, 8, !dbg !1197
  tail call void @llvm.dbg.value(metadata !{i32 %shr373.i}, i64 0, metadata !1155) #9, !dbg !1197
  %inc374.i = add nsw i32 %c_nblock_used.2.i, 3, !dbg !1197
  tail call void @llvm.dbg.value(metadata !{i32 %inc374.i}, i64 0, metadata !1152) #9, !dbg !1197
  %cmp375.i = icmp eq i32 %inc374.i, %add288.i, !dbg !1198
  br i1 %cmp375.i, label %while.body289.i, label %if.end378.i, !dbg !1198

if.end378.i:                                      ; preds = %if.end368.i
  %conv379.i = and i32 %175, 255, !dbg !1199
  %cmp380.i157 = icmp eq i32 %conv379.i, %c_k0.2.i, !dbg !1199
  br i1 %cmp380.i157, label %if.end384.i, label %while.body289.i, !dbg !1199

if.end384.i:                                      ; preds = %if.end378.i
  %idxprom385.i = zext i32 %shr373.i to i64, !dbg !1200
  %arrayidx386.i = getelementptr inbounds i32* %165, i64 %idxprom385.i, !dbg !1200
  %176 = load i32* %arrayidx386.i, align 4, !dbg !1200, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %176}, i64 0, metadata !1155) #9, !dbg !1200
  %shr389.i = lshr i32 %176, 8, !dbg !1200
  tail call void @llvm.dbg.value(metadata !{i32 %shr389.i}, i64 0, metadata !1155) #9, !dbg !1200
  %conv391.i = and i32 %176, 255, !dbg !1201
  %add392.i = add nsw i32 %conv391.i, 4, !dbg !1201
  tail call void @llvm.dbg.value(metadata !{i32 %add392.i}, i64 0, metadata !1151) #9, !dbg !1201
  %idxprom393.i = zext i32 %shr389.i to i64, !dbg !1202
  %arrayidx394.i = getelementptr inbounds i32* %165, i64 %idxprom393.i, !dbg !1202
  %177 = load i32* %arrayidx394.i, align 4, !dbg !1202, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %177}, i64 0, metadata !1155) #9, !dbg !1202
  %conv397.i = and i32 %177, 255, !dbg !1202
  tail call void @llvm.dbg.value(metadata !{i32 %conv397.i}, i64 0, metadata !1153) #9, !dbg !1202
  %shr398.i = lshr i32 %177, 8, !dbg !1202
  tail call void @llvm.dbg.value(metadata !{i32 %shr398.i}, i64 0, metadata !1155) #9, !dbg !1202
  %inc399.i = add nsw i32 %c_nblock_used.2.i, 5, !dbg !1202
  tail call void @llvm.dbg.value(metadata !{i32 %inc399.i}, i64 0, metadata !1152) #9, !dbg !1202
  br label %while.body289.i, !dbg !1203

return_notr.i:                                    ; preds = %if.end331.i, %s_state_out_len_eq_one.i, %while.body294.preheader.i, %if.end302.i
  %c_state_out_len.2.i = phi i32 [ %dec310.i, %if.end302.i ], [ 0, %if.end331.i ], [ 1, %s_state_out_len_eq_one.i ], [ %c_state_out_len.0.i, %while.body294.preheader.i ]
  %c_nblock_used.3.i = phi i32 [ %c_nblock_used.0.i, %if.end302.i ], [ %add288.i, %if.end331.i ], [ %c_nblock_used.1.i, %s_state_out_len_eq_one.i ], [ %c_nblock_used.0.i, %while.body294.preheader.i ]
  %c_k0.3.i = phi i32 [ %c_k0.0.i, %if.end302.i ], [ %c_k0.2.i, %if.end331.i ], [ %c_k0.1.i, %s_state_out_len_eq_one.i ], [ %c_k0.0.i, %while.body294.preheader.i ]
  %c_state_out_ch.3.i = phi i8 [ %c_state_out_ch.0.i, %if.end302.i ], [ %c_state_out_ch.2.i, %if.end331.i ], [ %c_state_out_ch.1.i, %s_state_out_len_eq_one.i ], [ %c_state_out_ch.0.i, %while.body294.preheader.i ]
  %c_tPos.3.i = phi i32 [ %c_tPos.0.i, %if.end302.i ], [ %c_tPos.2.i, %if.end331.i ], [ %c_tPos.1.i, %s_state_out_len_eq_one.i ], [ %c_tPos.0.i, %while.body294.preheader.i ]
  %cs_next_out.4.i = phi i8* [ %incdec.ptr311.i, %if.end302.i ], [ %cs_next_out.3.i, %if.end331.i ], [ %cs_next_out.2.i, %s_state_out_len_eq_one.i ], [ %cs_next_out.0.i, %while.body294.preheader.i ]
  %cs_avail_out.4.i = phi i32 [ 0, %if.end302.i ], [ %cs_avail_out.3.i, %if.end331.i ], [ 0, %s_state_out_len_eq_one.i ], [ 0, %while.body294.preheader.i ]
  %c_calculatedBlockCRC.4.i = phi i32 [ %xor309.i, %if.end302.i ], [ %c_calculatedBlockCRC.3.i, %if.end331.i ], [ %c_calculatedBlockCRC.2.i, %s_state_out_len_eq_one.i ], [ %c_calculatedBlockCRC.0.i, %while.body294.preheader.i ]
  %178 = load %struct.bz_stream** %strm4, align 8, !dbg !1204, !tbaa !615
  %total_out_lo32401.i = getelementptr inbounds %struct.bz_stream* %178, i64 0, i32 6, !dbg !1204
  %179 = load i32* %total_out_lo32401.i, align 4, !dbg !1204, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %179}, i64 0, metadata !1205) #9, !dbg !1204
  %sub.i = sub i32 %169, %cs_avail_out.4.i, !dbg !1206
  %uadd.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %sub.i, i32 %179) #9, !dbg !1206
  %180 = extractvalue { i32, i1 } %uadd.i, 0, !dbg !1206
  store i32 %180, i32* %total_out_lo32401.i, align 4, !dbg !1206, !tbaa !651
  %cmp407.i = extractvalue { i32, i1 } %uadd.i, 1, !dbg !1207
  br i1 %cmp407.i, label %if.then409.i, label %if.end413.i, !dbg !1207

if.then409.i:                                     ; preds = %return_notr.i
  %total_out_hi32411.i = getelementptr inbounds %struct.bz_stream* %178, i64 0, i32 7, !dbg !1208
  %181 = load i32* %total_out_hi32411.i, align 4, !dbg !1208, !tbaa !651
  %inc412.i = add i32 %181, 1, !dbg !1208
  store i32 %inc412.i, i32* %total_out_hi32411.i, align 4, !dbg !1208, !tbaa !651
  br label %if.end413.i, !dbg !1208

if.end413.i:                                      ; preds = %if.then409.i, %return_notr.i
  store i32 %c_calculatedBlockCRC.4.i, i32* %6, align 4, !dbg !1209, !tbaa !651
  store i8 %c_state_out_ch.3.i, i8* %7, align 1, !dbg !1210, !tbaa !616
  store i32 %c_state_out_len.2.i, i32* %8, align 4, !dbg !1211, !tbaa !651
  store i32 %c_nblock_used.3.i, i32* %9, align 4, !dbg !1212, !tbaa !651
  store i32 %c_k0.3.i, i32* %10, align 4, !dbg !1213, !tbaa !651
  store i32* %165, i32** %11, align 8, !dbg !1214, !tbaa !615
  store i32 %c_tPos.3.i, i32* %12, align 4, !dbg !1215, !tbaa !651
  %next_out422.i = getelementptr inbounds %struct.bz_stream* %178, i64 0, i32 4, !dbg !1216
  store i8* %cs_next_out.4.i, i8** %next_out422.i, align 8, !dbg !1216, !tbaa !615
  %182 = load %struct.bz_stream** %strm4, align 8, !dbg !1217, !tbaa !615
  %avail_out424.i = getelementptr inbounds %struct.bz_stream* %182, i64 0, i32 5, !dbg !1217
  store i32 %cs_avail_out.4.i, i32* %avail_out424.i, align 4, !dbg !1217, !tbaa !651
  br label %if.end20, !dbg !1218

if.end20:                                         ; preds = %while.end.i140, %while.body2.backedge.i151, %while.end387.i, %while.body341.backedge.i, %while.end.i, %while.body2.backedge.i, %while.body2.preheader.i106, %while.body341.preheader.i, %while.body2.preheader.i, %if.end413.i
  %183 = load i32* %9, align 4, !dbg !1219, !tbaa !651
  %184 = load i32* %13, align 4, !dbg !1219, !tbaa !651
  %add = add nsw i32 %184, 1, !dbg !1219
  %cmp21 = icmp eq i32 %183, %add, !dbg !1219
  br i1 %cmp21, label %land.lhs.true, label %return, !dbg !1219

land.lhs.true:                                    ; preds = %if.end20
  %185 = load i32* %8, align 4, !dbg !1219, !tbaa !651
  %cmp22 = icmp eq i32 %185, 0, !dbg !1219
  br i1 %cmp22, label %if.then23, label %return, !dbg !1219

if.then23:                                        ; preds = %land.lhs.true
  %186 = load i32* %6, align 4, !dbg !1220, !tbaa !651
  %neg = xor i32 %186, -1, !dbg !1220
  store i32 %neg, i32* %6, align 4, !dbg !1220, !tbaa !651
  %187 = load i32* %16, align 4, !dbg !903, !tbaa !651
  %cmp25 = icmp sgt i32 %187, 2, !dbg !903
  br i1 %cmp25, label %if.then26, label %if.end29, !dbg !903

if.then26:                                        ; preds = %if.then23
  %188 = load %struct._IO_FILE** @stderr, align 8, !dbg !905, !tbaa !615
  %189 = load i32* %17, align 4, !dbg !905, !tbaa !651
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([18 x i8]* @.str2, i64 0, i64 0), i32 %189, i32 %neg) #12, !dbg !905
  %.pr = load i32* %16, align 4, !dbg !1222, !tbaa !651
  br label %if.end29, !dbg !905

if.end29:                                         ; preds = %if.then26, %if.then23
  %190 = phi i32 [ %.pr, %if.then26 ], [ %187, %if.then23 ], !dbg !1222
  %cmp31 = icmp sgt i32 %190, 1, !dbg !1222
  br i1 %cmp31, label %if.then32, label %if.end34, !dbg !1222

if.then32:                                        ; preds = %if.end29
  %191 = load %struct._IO_FILE** @stderr, align 8, !dbg !1222, !tbaa !615
  %fputc = tail call i32 @fputc(i32 93, %struct._IO_FILE* %191), !dbg !1222
  br label %if.end34, !dbg !1222

if.end34:                                         ; preds = %if.end29, %if.then32
  %192 = load i32* %6, align 4, !dbg !1223, !tbaa !651
  %193 = load i32* %17, align 4, !dbg !1223, !tbaa !651
  %cmp37 = icmp eq i32 %192, %193, !dbg !1223
  br i1 %cmp37, label %if.end47.thread, label %return, !dbg !1223

if.end47.thread:                                  ; preds = %if.end34
  %194 = load i32* %18, align 4, !dbg !906, !tbaa !651
  %shl = shl i32 %194, 1, !dbg !906
  %shr = lshr i32 %194, 31, !dbg !906
  %or = or i32 %shl, %shr, !dbg !906
  %xor = xor i32 %or, %192, !dbg !1224
  store i32 %xor, i32* %18, align 4, !dbg !1224, !tbaa !651
  store i32 14, i32* %3, align 4, !dbg !1225, !tbaa !651
  br label %if.then50, !dbg !1226

if.end47:                                         ; preds = %while.body
  %cmp49 = icmp sgt i32 %21, 9, !dbg !1226
  br i1 %cmp49, label %if.then50, label %while.body, !dbg !1226

if.then50:                                        ; preds = %if.end47.thread, %if.end47
  %call51 = tail call i32 @BZ2_decompress(%struct.DState* %1) #12, !dbg !1227
  tail call void @llvm.dbg.value(metadata !1228, i64 0, metadata !253), !dbg !1227
  %cmp52 = icmp eq i32 %call51, 4, !dbg !1229
  br i1 %cmp52, label %if.then53, label %if.end65, !dbg !1229

if.then53:                                        ; preds = %if.then50
  %195 = load i32* %16, align 4, !dbg !1230, !tbaa !651
  %cmp55 = icmp sgt i32 %195, 2, !dbg !1230
  br i1 %cmp55, label %if.then56, label %if.then53.if.end59_crit_edge, !dbg !1230

if.then53.if.end59_crit_edge:                     ; preds = %if.then53
  %storedCombinedCRC61.pre = getelementptr inbounds i8* %0, i64 3180, !dbg !1232
  %.pre193 = bitcast i8* %storedCombinedCRC61.pre to i32*, !dbg !1232
  br label %if.end59, !dbg !1230

if.then56:                                        ; preds = %if.then53
  %196 = load %struct._IO_FILE** @stderr, align 8, !dbg !1233, !tbaa !615
  %storedCombinedCRC = getelementptr inbounds i8* %0, i64 3180, !dbg !1233
  %197 = bitcast i8* %storedCombinedCRC to i32*, !dbg !1233
  %198 = load i32* %197, align 4, !dbg !1233, !tbaa !651
  %199 = load i32* %18, align 4, !dbg !1233, !tbaa !651
  %call58 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0), i32 %198, i32 %199) #12, !dbg !1233
  br label %if.end59, !dbg !1233

if.end59:                                         ; preds = %if.then53.if.end59_crit_edge, %if.then56
  %.pre-phi = phi i32* [ %.pre193, %if.then53.if.end59_crit_edge ], [ %197, %if.then56 ], !dbg !1232
  %200 = load i32* %18, align 4, !dbg !1232, !tbaa !651
  %201 = load i32* %.pre-phi, align 4, !dbg !1232, !tbaa !651
  %cmp62 = icmp eq i32 %200, %201, !dbg !1232
  %call51. = select i1 %cmp62, i32 4, i32 -4, !dbg !1234
  br label %return, !dbg !1234

if.end65:                                         ; preds = %if.then50
  %202 = load i32* %3, align 4, !dbg !1235, !tbaa !651
  %cmp67 = icmp eq i32 %202, 2, !dbg !1235
  br i1 %cmp67, label %while.body, label %return, !dbg !1235

return:                                           ; preds = %if.end65, %if.end20, %land.lhs.true, %if.end34, %while.body, %if.end327.i, %if.end30.i142, %if.end394.i, %if.end30.i, %if.end59, %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ -2, %entry ], [ -2, %if.end ], [ -2, %if.end3 ], [ %call51., %if.end59 ], [ -4, %if.end30.i ], [ -4, %if.end394.i ], [ -4, %if.end30.i142 ], [ -4, %if.end327.i ], [ %call51, %if.end65 ], [ 0, %if.end20 ], [ 0, %land.lhs.true ], [ -4, %if.end34 ], [ -1, %while.body ]
  ret i32 %retval.0, !dbg !1236
}

; Function Attrs: optsize
declare i32 @BZ2_decompress(%struct.DState*) #7

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.bz_stream* %strm}, i64 0, metadata !258), !dbg !1237
  %cmp = icmp eq %struct.bz_stream* %strm, null, !dbg !1238
  br i1 %cmp, label %return, label %if.end, !dbg !1238

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 8, !dbg !1239
  %0 = load i8** %state, align 8, !dbg !1239, !tbaa !615
  %cmp1 = icmp eq i8* %0, null, !dbg !1240
  br i1 %cmp1, label %return, label %if.end3, !dbg !1240

if.end3:                                          ; preds = %if.end
  %strm4 = bitcast i8* %0 to %struct.bz_stream**, !dbg !1241
  %1 = load %struct.bz_stream** %strm4, align 8, !dbg !1241, !tbaa !615
  %cmp5 = icmp eq %struct.bz_stream* %1, %strm, !dbg !1241
  br i1 %cmp5, label %if.end7, label %return, !dbg !1241

if.end7:                                          ; preds = %if.end3
  %tt = getelementptr inbounds i8* %0, i64 3152, !dbg !1242
  %2 = bitcast i8* %tt to i32**, !dbg !1242
  %3 = load i32** %2, align 8, !dbg !1242, !tbaa !615
  %cmp8 = icmp eq i32* %3, null, !dbg !1242
  br i1 %cmp8, label %if.end11, label %if.then9, !dbg !1242

if.then9:                                         ; preds = %if.end7
  %bzfree = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10, !dbg !1242
  %4 = load void (i8*, i8*)** %bzfree, align 8, !dbg !1242, !tbaa !615
  %opaque = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11, !dbg !1242
  %5 = load i8** %opaque, align 8, !dbg !1242, !tbaa !615
  %6 = bitcast i32* %3 to i8*, !dbg !1242
  tail call void %4(i8* %5, i8* %6) #12, !dbg !1242
  br label %if.end11, !dbg !1242

if.end11:                                         ; preds = %if.end7, %if.then9
  %ll16 = getelementptr inbounds i8* %0, i64 3160, !dbg !1243
  %7 = bitcast i8* %ll16 to i16**, !dbg !1243
  %8 = load i16** %7, align 8, !dbg !1243, !tbaa !615
  %cmp12 = icmp eq i16* %8, null, !dbg !1243
  br i1 %cmp12, label %if.end17, label %if.then13, !dbg !1243

if.then13:                                        ; preds = %if.end11
  %bzfree14 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10, !dbg !1243
  %9 = load void (i8*, i8*)** %bzfree14, align 8, !dbg !1243, !tbaa !615
  %opaque15 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11, !dbg !1243
  %10 = load i8** %opaque15, align 8, !dbg !1243, !tbaa !615
  %11 = bitcast i16* %8 to i8*, !dbg !1243
  tail call void %9(i8* %10, i8* %11) #12, !dbg !1243
  br label %if.end17, !dbg !1243

if.end17:                                         ; preds = %if.end11, %if.then13
  %ll4 = getelementptr inbounds i8* %0, i64 3168, !dbg !1244
  %12 = bitcast i8* %ll4 to i8**, !dbg !1244
  %13 = load i8** %12, align 8, !dbg !1244, !tbaa !615
  %cmp18 = icmp eq i8* %13, null, !dbg !1244
  %bzfree24.pre = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 10, !dbg !1245
  br i1 %cmp18, label %if.end17.if.end23_crit_edge, label %if.then19, !dbg !1244

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  %opaque25.pre = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11, !dbg !1245
  br label %if.end23, !dbg !1244

if.then19:                                        ; preds = %if.end17
  %14 = load void (i8*, i8*)** %bzfree24.pre, align 8, !dbg !1244, !tbaa !615
  %opaque21 = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 11, !dbg !1244
  %15 = load i8** %opaque21, align 8, !dbg !1244, !tbaa !615
  tail call void %14(i8* %15, i8* %13) #12, !dbg !1244
  br label %if.end23, !dbg !1244

if.end23:                                         ; preds = %if.end17.if.end23_crit_edge, %if.then19
  %opaque25.pre-phi = phi i8** [ %opaque25.pre, %if.end17.if.end23_crit_edge ], [ %opaque21, %if.then19 ], !dbg !1245
  %16 = load void (i8*, i8*)** %bzfree24.pre, align 8, !dbg !1245, !tbaa !615
  %17 = load i8** %opaque25.pre-phi, align 8, !dbg !1245, !tbaa !615
  %18 = load i8** %state, align 8, !dbg !1245, !tbaa !615
  tail call void %16(i8* %17, i8* %18) #12, !dbg !1245
  store i8* null, i8** %state, align 8, !dbg !1246, !tbaa !615
  br label %return, !dbg !1247

return:                                           ; preds = %if.end3, %if.end, %entry, %if.end23
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -2, %entry ], [ -2, %if.end ], [ -2, %if.end3 ]
  ret i32 %retval.0, !dbg !1247
}

; Function Attrs: nounwind optsize uwtable
define i8* @BZ2_bzWriteOpen(i32* %bzerror, %struct._IO_FILE* %f, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %bzerror}, i64 0, metadata !318), !dbg !1248
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %f}, i64 0, metadata !319), !dbg !1249
  tail call void @llvm.dbg.value(metadata !{i32 %blockSize100k}, i64 0, metadata !320), !dbg !1250
  tail call void @llvm.dbg.value(metadata !{i32 %verbosity}, i64 0, metadata !321), !dbg !1251
  tail call void @llvm.dbg.value(metadata !{i32 %workFactor}, i64 0, metadata !322), !dbg !1252
  tail call void @llvm.dbg.value(metadata !1253, i64 0, metadata !324), !dbg !1254
  %cmp = icmp ne i32* %bzerror, null, !dbg !1255
  br i1 %cmp, label %if.then, label %if.end3, !dbg !1255

if.then:                                          ; preds = %entry
  store i32 0, i32* %bzerror, align 4, !dbg !1255, !tbaa !651
  br label %if.end3, !dbg !1255

if.end3:                                          ; preds = %entry, %if.then
  %cmp4 = icmp eq %struct._IO_FILE* %f, null, !dbg !1257
  br i1 %cmp4, label %if.then16, label %lor.lhs.false, !dbg !1257

lor.lhs.false:                                    ; preds = %if.end3
  %blockSize100k.off = add i32 %blockSize100k, -1, !dbg !1257
  %0 = icmp ugt i32 %blockSize100k.off, 8, !dbg !1257
  %1 = icmp ugt i32 %workFactor, 250, !dbg !1257
  %or.cond = or i1 %0, %1, !dbg !1257
  %2 = icmp ugt i32 %verbosity, 4, !dbg !1257
  %or.cond118 = or i1 %or.cond, %2, !dbg !1257
  br i1 %or.cond118, label %if.then16, label %if.end24, !dbg !1257

if.then16:                                        ; preds = %lor.lhs.false, %if.end3
  br i1 %cmp, label %if.then18, label %return, !dbg !1258

if.then18:                                        ; preds = %if.then16
  store i32 -2, i32* %bzerror, align 4, !dbg !1258, !tbaa !651
  br label %return, !dbg !1258

if.end24:                                         ; preds = %lor.lhs.false
  %call = tail call i32 @ferror(%struct._IO_FILE* %f) #12, !dbg !1261
  %tobool = icmp eq i32 %call, 0, !dbg !1261
  br i1 %tobool, label %if.end33, label %if.then25, !dbg !1261

if.then25:                                        ; preds = %if.end24
  br i1 %cmp, label %if.then27, label %return, !dbg !1262

if.then27:                                        ; preds = %if.then25
  store i32 -6, i32* %bzerror, align 4, !dbg !1262, !tbaa !651
  br label %return, !dbg !1262

if.end33:                                         ; preds = %if.end24
  %call34 = tail call noalias i8* @malloc(i64 5104) #12, !dbg !1265
  %cmp35 = icmp eq i8* %call34, null, !dbg !1266
  br i1 %cmp35, label %if.then36, label %if.end44, !dbg !1266

if.then36:                                        ; preds = %if.end33
  br i1 %cmp, label %if.end39, label %return, !dbg !1267

if.end39:                                         ; preds = %if.then36
  store i32 -3, i32* %bzerror, align 4, !dbg !1267, !tbaa !651
  br label %return

if.end44:                                         ; preds = %if.end33
  br i1 %cmp, label %if.end47, label %if.end51, !dbg !1270

if.end47:                                         ; preds = %if.end44
  store i32 0, i32* %bzerror, align 4, !dbg !1270, !tbaa !651
  br label %if.end51

if.end51:                                         ; preds = %if.end44, %if.end47
  %lastErr50 = getelementptr inbounds i8* %call34, i64 5096, !dbg !1270
  %3 = bitcast i8* %lastErr50 to i32*, !dbg !1270
  store i32 0, i32* %3, align 4, !dbg !1270, !tbaa !651
  %4 = getelementptr inbounds i8* %call34, i64 5100, !dbg !1272
  store i8 0, i8* %4, align 1, !dbg !1272, !tbaa !616
  %bufN = getelementptr inbounds i8* %call34, i64 5008, !dbg !1273
  %5 = bitcast i8* %bufN to i32*, !dbg !1273
  store i32 0, i32* %5, align 4, !dbg !1273, !tbaa !651
  %handle = bitcast i8* %call34 to %struct._IO_FILE**, !dbg !1274
  store %struct._IO_FILE* %f, %struct._IO_FILE** %handle, align 8, !dbg !1274, !tbaa !615
  %6 = getelementptr inbounds i8* %call34, i64 5012, !dbg !1275
  store i8 1, i8* %6, align 1, !dbg !1275, !tbaa !616
  %strm = getelementptr inbounds i8* %call34, i64 5016, !dbg !1276
  %7 = bitcast i8* %strm to %struct.bz_stream*, !dbg !1276
  %bzalloc = getelementptr inbounds i8* %call34, i64 5072, !dbg !1276
  %cmp54 = icmp eq i32 %workFactor, 0, !dbg !1277
  tail call void @llvm.dbg.value(metadata !631, i64 0, metadata !322), !dbg !1277
  %.workFactor = select i1 %cmp54, i32 30, i32 %workFactor, !dbg !1277
  call void @llvm.memset.p0i8.i64(i8* %bzalloc, i8 0, i64 24, i32 8, i1 false), !dbg !1278
  %call58 = tail call i32 @BZ2_bzCompressInit(%struct.bz_stream* %7, i32 %blockSize100k, i32 %verbosity, i32 %.workFactor) #14, !dbg !1279
  tail call void @llvm.dbg.value(metadata !{i32 %call58}, i64 0, metadata !323), !dbg !1279
  %cmp59 = icmp eq i32 %call58, 0, !dbg !1280
  br i1 %cmp59, label %if.end68, label %if.then60, !dbg !1280

if.then60:                                        ; preds = %if.end51
  br i1 %cmp, label %if.then62, label %if.then65, !dbg !1281

if.then62:                                        ; preds = %if.then60
  store i32 %call58, i32* %bzerror, align 4, !dbg !1281, !tbaa !651
  br label %if.then65, !dbg !1281

if.then65:                                        ; preds = %if.then60, %if.then62
  tail call void @free(i8* %call34) #12, !dbg !1284
  br label %return, !dbg !1284

if.end68:                                         ; preds = %if.end51
  %avail_in = getelementptr inbounds i8* %call34, i64 5024, !dbg !1285
  %8 = bitcast i8* %avail_in to i32*, !dbg !1285
  store i32 0, i32* %8, align 4, !dbg !1285, !tbaa !651
  store i8 1, i8* %4, align 1, !dbg !1286, !tbaa !616
  br label %return, !dbg !1287

return:                                           ; preds = %if.then36, %if.end39, %if.then27, %if.then25, %if.then18, %if.then16, %if.end68, %if.then65
  %retval.0 = phi i8* [ null, %if.then65 ], [ %call34, %if.end68 ], [ null, %if.then16 ], [ null, %if.then18 ], [ null, %if.then25 ], [ null, %if.then27 ], [ null, %if.end39 ], [ null, %if.then36 ]
  ret i8* %retval.0, !dbg !1288
}

; Function Attrs: nounwind optsize readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) #8

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @BZ2_bzWrite(i32* %bzerror, i8* %b, i8* %buf, i32 %len) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %bzerror}, i64 0, metadata !344), !dbg !1289
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !345), !dbg !1290
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !346), !dbg !1291
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !347), !dbg !1292
  %cmp = icmp ne i32* %bzerror, null, !dbg !1293
  br i1 %cmp, label %if.then, label %if.end, !dbg !1293

if.then:                                          ; preds = %entry
  store i32 0, i32* %bzerror, align 4, !dbg !1293, !tbaa !651
  br label %if.end, !dbg !1293

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp ne i8* %b, null, !dbg !1293
  br i1 %cmp1, label %if.end3, label %if.then8, !dbg !1293

if.end3:                                          ; preds = %if.end
  %lastErr = getelementptr inbounds i8* %b, i64 5096, !dbg !1293
  %0 = bitcast i8* %lastErr to i32*, !dbg !1293
  store i32 0, i32* %0, align 4, !dbg !1293, !tbaa !651
  %cmp5 = icmp eq i8* %buf, null, !dbg !1295
  %cmp7 = icmp slt i32 %len, 0, !dbg !1295
  %or.cond157 = or i1 %cmp5, %cmp7, !dbg !1295
  br i1 %or.cond157, label %if.then8, label %if.end16, !dbg !1295

if.then8:                                         ; preds = %if.end, %if.end3
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !1296

if.then10:                                        ; preds = %if.then8
  store i32 -2, i32* %bzerror, align 4, !dbg !1296, !tbaa !651
  br label %if.end11, !dbg !1296

if.end11:                                         ; preds = %if.then10, %if.then8
  br i1 %cmp1, label %if.then13, label %return, !dbg !1296

if.then13:                                        ; preds = %if.end11
  %lastErr14 = getelementptr inbounds i8* %b, i64 5096, !dbg !1296
  %1 = bitcast i8* %lastErr14 to i32*, !dbg !1296
  store i32 -2, i32* %1, align 4, !dbg !1296, !tbaa !651
  br label %return, !dbg !1296

if.end16:                                         ; preds = %if.end3
  %2 = getelementptr inbounds i8* %b, i64 5012, !dbg !1299
  %3 = load i8* %2, align 1, !dbg !1299, !tbaa !616
  %tobool = icmp eq i8 %3, 0, !dbg !1299
  br i1 %tobool, label %if.then17, label %if.end25, !dbg !1299

if.then17:                                        ; preds = %if.end16
  br i1 %cmp, label %if.then19, label %if.then22, !dbg !1300

if.then19:                                        ; preds = %if.then17
  store i32 -1, i32* %bzerror, align 4, !dbg !1300, !tbaa !651
  br label %if.then22, !dbg !1300

if.then22:                                        ; preds = %if.then17, %if.then19
  store i32 -1, i32* %0, align 4, !dbg !1300, !tbaa !651
  br label %return, !dbg !1300

if.end25:                                         ; preds = %if.end16
  %handle = bitcast i8* %b to %struct._IO_FILE**, !dbg !1303
  %4 = load %struct._IO_FILE** %handle, align 8, !dbg !1303, !tbaa !615
  %call = tail call i32 @ferror(%struct._IO_FILE* %4) #12, !dbg !1303
  %tobool26 = icmp eq i32 %call, 0, !dbg !1303
  br i1 %tobool26, label %if.end35, label %if.then27, !dbg !1303

if.then27:                                        ; preds = %if.end25
  br i1 %cmp, label %if.then29, label %if.then32, !dbg !1304

if.then29:                                        ; preds = %if.then27
  store i32 -6, i32* %bzerror, align 4, !dbg !1304, !tbaa !651
  br label %if.then32, !dbg !1304

if.then32:                                        ; preds = %if.then27, %if.then29
  store i32 -6, i32* %0, align 4, !dbg !1304, !tbaa !651
  br label %return, !dbg !1304

if.end35:                                         ; preds = %if.end25
  %cmp36 = icmp eq i32 %len, 0, !dbg !1307
  br i1 %cmp36, label %if.then37, label %if.end45, !dbg !1307

if.then37:                                        ; preds = %if.end35
  br i1 %cmp, label %if.then39, label %if.then42, !dbg !1308

if.then39:                                        ; preds = %if.then37
  store i32 0, i32* %bzerror, align 4, !dbg !1308, !tbaa !651
  br label %if.then42, !dbg !1308

if.then42:                                        ; preds = %if.then37, %if.then39
  store i32 0, i32* %0, align 4, !dbg !1308, !tbaa !651
  br label %return, !dbg !1308

if.end45:                                         ; preds = %if.end35
  %strm = getelementptr inbounds i8* %b, i64 5016, !dbg !1311
  %5 = bitcast i8* %strm to %struct.bz_stream*, !dbg !1311
  %avail_in = getelementptr inbounds i8* %b, i64 5024, !dbg !1311
  %6 = bitcast i8* %avail_in to i32*, !dbg !1311
  store i32 %len, i32* %6, align 4, !dbg !1311, !tbaa !651
  %next_in = bitcast i8* %strm to i8**, !dbg !1312
  store i8* %buf, i8** %next_in, align 8, !dbg !1312, !tbaa !615
  %avail_out = getelementptr inbounds i8* %b, i64 5048, !dbg !1313
  %7 = bitcast i8* %avail_out to i32*, !dbg !1313
  %buf48 = getelementptr inbounds i8* %b, i64 8, !dbg !1315
  %next_out = getelementptr inbounds i8* %b, i64 5040, !dbg !1315
  %8 = bitcast i8* %next_out to i8**, !dbg !1315
  br label %while.body, !dbg !1316

while.body:                                       ; preds = %if.end90, %if.end45
  store i32 5000, i32* %7, align 4, !dbg !1313, !tbaa !651
  store i8* %buf48, i8** %8, align 8, !dbg !1315, !tbaa !615
  %call51 = tail call i32 @BZ2_bzCompress(%struct.bz_stream* %5, i32 0) #14, !dbg !1317
  tail call void @llvm.dbg.value(metadata !{i32 %call51}, i64 0, metadata !350), !dbg !1317
  %cmp52 = icmp eq i32 %call51, 1, !dbg !1318
  br i1 %cmp52, label %if.end61, label %if.then53, !dbg !1318

if.then53:                                        ; preds = %while.body
  br i1 %cmp, label %if.then55, label %if.then58, !dbg !1319

if.then55:                                        ; preds = %if.then53
  store i32 %call51, i32* %bzerror, align 4, !dbg !1319, !tbaa !651
  br label %if.then58, !dbg !1319

if.then58:                                        ; preds = %if.then53, %if.then55
  store i32 %call51, i32* %0, align 4, !dbg !1319, !tbaa !651
  br label %return, !dbg !1319

if.end61:                                         ; preds = %while.body
  %9 = load i32* %7, align 4, !dbg !1322, !tbaa !651
  %cmp64 = icmp ult i32 %9, 5000, !dbg !1322
  br i1 %cmp64, label %if.then65, label %if.end90, !dbg !1322

if.then65:                                        ; preds = %if.end61
  %sub = sub i32 5000, %9, !dbg !1323
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !348), !dbg !1323
  %conv = sext i32 %sub to i64, !dbg !1325
  %10 = load %struct._IO_FILE** %handle, align 8, !dbg !1325, !tbaa !615
  %call71 = tail call i64 @fwrite(i8* %buf48, i64 1, i64 %conv, %struct._IO_FILE* %10) #12, !dbg !1325
  %conv72 = trunc i64 %call71 to i32, !dbg !1325
  tail call void @llvm.dbg.value(metadata !{i32 %conv72}, i64 0, metadata !349), !dbg !1325
  %cmp73 = icmp eq i32 %sub, %conv72, !dbg !1326
  br i1 %cmp73, label %lor.lhs.false75, label %if.then79, !dbg !1326

lor.lhs.false75:                                  ; preds = %if.then65
  %11 = load %struct._IO_FILE** %handle, align 8, !dbg !1326, !tbaa !615
  %call77 = tail call i32 @ferror(%struct._IO_FILE* %11) #12, !dbg !1326
  %tobool78 = icmp eq i32 %call77, 0, !dbg !1326
  br i1 %tobool78, label %if.end90, label %if.then79, !dbg !1326

if.then79:                                        ; preds = %lor.lhs.false75, %if.then65
  br i1 %cmp, label %if.then82, label %if.then86, !dbg !1327

if.then82:                                        ; preds = %if.then79
  store i32 -6, i32* %bzerror, align 4, !dbg !1327, !tbaa !651
  br label %if.then86, !dbg !1327

if.then86:                                        ; preds = %if.then79, %if.then82
  store i32 -6, i32* %0, align 4, !dbg !1327, !tbaa !651
  br label %return, !dbg !1327

if.end90:                                         ; preds = %lor.lhs.false75, %if.end61
  %12 = load i32* %6, align 4, !dbg !1330, !tbaa !651
  %cmp93 = icmp eq i32 %12, 0, !dbg !1330
  br i1 %cmp93, label %if.then95, label %while.body, !dbg !1330

if.then95:                                        ; preds = %if.end90
  br i1 %cmp, label %if.then98, label %if.then102, !dbg !1331

if.then98:                                        ; preds = %if.then95
  store i32 0, i32* %bzerror, align 4, !dbg !1331, !tbaa !651
  br label %if.then102, !dbg !1331

if.then102:                                       ; preds = %if.then95, %if.then98
  store i32 0, i32* %0, align 4, !dbg !1331, !tbaa !651
  br label %return, !dbg !1331

return:                                           ; preds = %if.then102, %if.then86, %if.then58, %if.then42, %if.then32, %if.then22, %if.end11, %if.then13
  ret void, !dbg !1334
}

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @BZ2_bzWriteClose(i32* %bzerror, i8* %b, i32 %abandon, i32* %nbytes_in, i32* %nbytes_out) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %bzerror}, i64 0, metadata !357), !dbg !1335
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !358), !dbg !1336
  tail call void @llvm.dbg.value(metadata !{i32 %abandon}, i64 0, metadata !359), !dbg !1337
  tail call void @llvm.dbg.value(metadata !{i32* %nbytes_in}, i64 0, metadata !360), !dbg !1338
  tail call void @llvm.dbg.value(metadata !{i32* %nbytes_out}, i64 0, metadata !361), !dbg !1339
  tail call void @BZ2_bzWriteClose64(i32* %bzerror, i8* %b, i32 %abandon, i32* %nbytes_in, i32* null, i32* %nbytes_out, i32* null) #14, !dbg !1340
  ret void, !dbg !1341
}

; Function Attrs: nounwind optsize uwtable
define void @BZ2_bzWriteClose64(i32* %bzerror, i8* %b, i32 %abandon, i32* %nbytes_in_lo32, i32* %nbytes_in_hi32, i32* %nbytes_out_lo32, i32* %nbytes_out_hi32) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %bzerror}, i64 0, metadata !366), !dbg !1342
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !367), !dbg !1343
  tail call void @llvm.dbg.value(metadata !{i32 %abandon}, i64 0, metadata !368), !dbg !1344
  tail call void @llvm.dbg.value(metadata !{i32* %nbytes_in_lo32}, i64 0, metadata !369), !dbg !1345
  tail call void @llvm.dbg.value(metadata !{i32* %nbytes_in_hi32}, i64 0, metadata !370), !dbg !1346
  tail call void @llvm.dbg.value(metadata !{i32* %nbytes_out_lo32}, i64 0, metadata !371), !dbg !1347
  tail call void @llvm.dbg.value(metadata !{i32* %nbytes_out_hi32}, i64 0, metadata !372), !dbg !1348
  %cmp = icmp eq i8* %b, null, !dbg !1349
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1349

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %bzerror, null, !dbg !1350
  br i1 %cmp1, label %return, label %if.then2, !dbg !1350

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %bzerror, align 4, !dbg !1350, !tbaa !651
  br label %return, !dbg !1350

if.end6:                                          ; preds = %entry
  %0 = getelementptr inbounds i8* %b, i64 5012, !dbg !1353
  %1 = load i8* %0, align 1, !dbg !1353, !tbaa !616
  %tobool = icmp eq i8 %1, 0, !dbg !1353
  br i1 %tobool, label %if.then7, label %if.end15, !dbg !1353

if.then7:                                         ; preds = %if.end6
  %cmp8 = icmp eq i32* %bzerror, null, !dbg !1354
  br i1 %cmp8, label %if.then12, label %if.then9, !dbg !1354

if.then9:                                         ; preds = %if.then7
  store i32 -1, i32* %bzerror, align 4, !dbg !1354, !tbaa !651
  br label %if.then12, !dbg !1354

if.then12:                                        ; preds = %if.then9, %if.then7
  %lastErr13 = getelementptr inbounds i8* %b, i64 5096, !dbg !1354
  %2 = bitcast i8* %lastErr13 to i32*, !dbg !1354
  store i32 -1, i32* %2, align 4, !dbg !1354, !tbaa !651
  br label %return, !dbg !1354

if.end15:                                         ; preds = %if.end6
  %handle = bitcast i8* %b to %struct._IO_FILE**, !dbg !1357
  %3 = load %struct._IO_FILE** %handle, align 8, !dbg !1357, !tbaa !615
  %call = tail call i32 @ferror(%struct._IO_FILE* %3) #12, !dbg !1357
  %tobool16 = icmp eq i32 %call, 0, !dbg !1357
  br i1 %tobool16, label %if.end25, label %if.then17, !dbg !1357

if.then17:                                        ; preds = %if.end15
  %cmp18 = icmp eq i32* %bzerror, null, !dbg !1358
  br i1 %cmp18, label %if.then22, label %if.then19, !dbg !1358

if.then19:                                        ; preds = %if.then17
  store i32 -6, i32* %bzerror, align 4, !dbg !1358, !tbaa !651
  br label %if.then22, !dbg !1358

if.then22:                                        ; preds = %if.then19, %if.then17
  %lastErr23 = getelementptr inbounds i8* %b, i64 5096, !dbg !1358
  %4 = bitcast i8* %lastErr23 to i32*, !dbg !1358
  store i32 -6, i32* %4, align 4, !dbg !1358, !tbaa !651
  br label %return, !dbg !1358

if.end25:                                         ; preds = %if.end15
  %cmp26 = icmp ne i32* %nbytes_in_lo32, null, !dbg !1361
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !1361

if.then27:                                        ; preds = %if.end25
  store i32 0, i32* %nbytes_in_lo32, align 4, !dbg !1361, !tbaa !651
  br label %if.end28, !dbg !1361

if.end28:                                         ; preds = %if.then27, %if.end25
  %cmp29 = icmp ne i32* %nbytes_in_hi32, null, !dbg !1362
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !1362

if.then30:                                        ; preds = %if.end28
  store i32 0, i32* %nbytes_in_hi32, align 4, !dbg !1362, !tbaa !651
  br label %if.end31, !dbg !1362

if.end31:                                         ; preds = %if.then30, %if.end28
  %cmp32 = icmp ne i32* %nbytes_out_lo32, null, !dbg !1363
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !1363

if.then33:                                        ; preds = %if.end31
  store i32 0, i32* %nbytes_out_lo32, align 4, !dbg !1363, !tbaa !651
  br label %if.end34, !dbg !1363

if.end34:                                         ; preds = %if.then33, %if.end31
  %cmp35 = icmp ne i32* %nbytes_out_hi32, null, !dbg !1364
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !1364

if.then36:                                        ; preds = %if.end34
  store i32 0, i32* %nbytes_out_hi32, align 4, !dbg !1364, !tbaa !651
  br label %if.end37, !dbg !1364

if.end37:                                         ; preds = %if.then36, %if.end34
  %tobool38 = icmp eq i32 %abandon, 0, !dbg !1365
  br i1 %tobool38, label %land.lhs.true, label %if.end112, !dbg !1365

land.lhs.true:                                    ; preds = %if.end37
  %lastErr39 = getelementptr inbounds i8* %b, i64 5096, !dbg !1365
  %5 = bitcast i8* %lastErr39 to i32*, !dbg !1365
  %6 = load i32* %5, align 4, !dbg !1365, !tbaa !651
  %cmp40 = icmp eq i32 %6, 0, !dbg !1365
  br i1 %cmp40, label %while.body.preheader, label %land.lhs.true91, !dbg !1365

while.body.preheader:                             ; preds = %land.lhs.true
  %strm = getelementptr inbounds i8* %b, i64 5016, !dbg !1366
  %7 = bitcast i8* %strm to %struct.bz_stream*, !dbg !1366
  %avail_out = getelementptr inbounds i8* %b, i64 5048, !dbg !1366
  %8 = bitcast i8* %avail_out to i32*, !dbg !1366
  %buf = getelementptr inbounds i8* %b, i64 8, !dbg !1369
  %next_out = getelementptr inbounds i8* %b, i64 5040, !dbg !1369
  %9 = bitcast i8* %next_out to i8**, !dbg !1369
  br label %while.body, !dbg !1366

while.body:                                       ; preds = %while.body.preheader, %if.end84
  store i32 5000, i32* %8, align 4, !dbg !1366, !tbaa !651
  store i8* %buf, i8** %9, align 8, !dbg !1369, !tbaa !615
  %call44 = tail call i32 @BZ2_bzCompress(%struct.bz_stream* %7, i32 2) #14, !dbg !1370
  tail call void @llvm.dbg.value(metadata !{i32 %call44}, i64 0, metadata !375), !dbg !1370
  %call44.off = add i32 %call44, -3, !dbg !1371
  %10 = icmp ugt i32 %call44.off, 1, !dbg !1371
  br i1 %10, label %if.then48, label %if.end56, !dbg !1371

if.then48:                                        ; preds = %while.body
  %cmp49 = icmp eq i32* %bzerror, null, !dbg !1372
  br i1 %cmp49, label %if.then53, label %if.then50, !dbg !1372

if.then50:                                        ; preds = %if.then48
  store i32 %call44, i32* %bzerror, align 4, !dbg !1372, !tbaa !651
  br label %if.then53, !dbg !1372

if.then53:                                        ; preds = %if.then50, %if.then48
  store i32 %call44, i32* %5, align 4, !dbg !1372, !tbaa !651
  br label %return, !dbg !1372

if.end56:                                         ; preds = %while.body
  %11 = load i32* %8, align 4, !dbg !1375, !tbaa !651
  %cmp59 = icmp ult i32 %11, 5000, !dbg !1375
  br i1 %cmp59, label %if.then60, label %if.end84, !dbg !1375

if.then60:                                        ; preds = %if.end56
  %sub = sub i32 5000, %11, !dbg !1376
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !373), !dbg !1376
  %conv = sext i32 %sub to i64, !dbg !1378
  %12 = load %struct._IO_FILE** %handle, align 8, !dbg !1378, !tbaa !615
  %call66 = tail call i64 @fwrite(i8* %buf, i64 1, i64 %conv, %struct._IO_FILE* %12) #12, !dbg !1378
  %conv67 = trunc i64 %call66 to i32, !dbg !1378
  tail call void @llvm.dbg.value(metadata !{i32 %conv67}, i64 0, metadata !374), !dbg !1378
  %cmp68 = icmp eq i32 %sub, %conv67, !dbg !1379
  br i1 %cmp68, label %lor.lhs.false, label %if.then73, !dbg !1379

lor.lhs.false:                                    ; preds = %if.then60
  %13 = load %struct._IO_FILE** %handle, align 8, !dbg !1379, !tbaa !615
  %call71 = tail call i32 @ferror(%struct._IO_FILE* %13) #12, !dbg !1379
  %tobool72 = icmp eq i32 %call71, 0, !dbg !1379
  br i1 %tobool72, label %if.end84, label %if.then73, !dbg !1379

if.then73:                                        ; preds = %lor.lhs.false, %if.then60
  %cmp74 = icmp eq i32* %bzerror, null, !dbg !1380
  br i1 %cmp74, label %if.then80, label %if.then76, !dbg !1380

if.then76:                                        ; preds = %if.then73
  store i32 -6, i32* %bzerror, align 4, !dbg !1380, !tbaa !651
  br label %if.then80, !dbg !1380

if.then80:                                        ; preds = %if.then76, %if.then73
  store i32 -6, i32* %5, align 4, !dbg !1380, !tbaa !651
  br label %return, !dbg !1380

if.end84:                                         ; preds = %lor.lhs.false, %if.end56
  %cmp85 = icmp eq i32 %call44, 4, !dbg !1383
  br i1 %cmp85, label %if.end89.land.lhs.true91_crit_edge, label %while.body, !dbg !1383

if.end89.land.lhs.true91_crit_edge:               ; preds = %if.end84
  %.pre = load %struct._IO_FILE** %handle, align 8, !dbg !1384, !tbaa !615
  br label %land.lhs.true91, !dbg !1384

land.lhs.true91:                                  ; preds = %if.end89.land.lhs.true91_crit_edge, %land.lhs.true
  %14 = phi %struct._IO_FILE* [ %.pre, %if.end89.land.lhs.true91_crit_edge ], [ %3, %land.lhs.true ]
  %call93 = tail call i32 @ferror(%struct._IO_FILE* %14) #12, !dbg !1384
  %tobool94 = icmp eq i32 %call93, 0, !dbg !1384
  br i1 %tobool94, label %if.then95, label %if.end112, !dbg !1384

if.then95:                                        ; preds = %land.lhs.true91
  %call97 = tail call i32 @fflush(%struct._IO_FILE* %14) #12, !dbg !1385
  %15 = load %struct._IO_FILE** %handle, align 8, !dbg !1387, !tbaa !615
  %call99 = tail call i32 @ferror(%struct._IO_FILE* %15) #12, !dbg !1387
  %tobool100 = icmp eq i32 %call99, 0, !dbg !1387
  br i1 %tobool100, label %if.end112, label %if.then101, !dbg !1387

if.then101:                                       ; preds = %if.then95
  %cmp102 = icmp eq i32* %bzerror, null, !dbg !1388
  br i1 %cmp102, label %if.then108, label %if.then104, !dbg !1388

if.then104:                                       ; preds = %if.then101
  store i32 -6, i32* %bzerror, align 4, !dbg !1388, !tbaa !651
  br label %if.then108, !dbg !1388

if.then108:                                       ; preds = %if.then104, %if.then101
  store i32 -6, i32* %5, align 4, !dbg !1388, !tbaa !651
  br label %return, !dbg !1388

if.end112:                                        ; preds = %if.end37, %if.then95, %land.lhs.true91
  br i1 %cmp26, label %if.then115, label %if.end117, !dbg !1391

if.then115:                                       ; preds = %if.end112
  %total_in_lo32 = getelementptr inbounds i8* %b, i64 5028, !dbg !1392
  %16 = bitcast i8* %total_in_lo32 to i32*, !dbg !1392
  %17 = load i32* %16, align 4, !dbg !1392, !tbaa !651
  store i32 %17, i32* %nbytes_in_lo32, align 4, !dbg !1392, !tbaa !651
  br label %if.end117, !dbg !1392

if.end117:                                        ; preds = %if.then115, %if.end112
  br i1 %cmp29, label %if.then120, label %if.end122, !dbg !1393

if.then120:                                       ; preds = %if.end117
  %total_in_hi32 = getelementptr inbounds i8* %b, i64 5032, !dbg !1394
  %18 = bitcast i8* %total_in_hi32 to i32*, !dbg !1394
  %19 = load i32* %18, align 4, !dbg !1394, !tbaa !651
  store i32 %19, i32* %nbytes_in_hi32, align 4, !dbg !1394, !tbaa !651
  br label %if.end122, !dbg !1394

if.end122:                                        ; preds = %if.then120, %if.end117
  br i1 %cmp32, label %if.then125, label %if.end127, !dbg !1395

if.then125:                                       ; preds = %if.end122
  %total_out_lo32 = getelementptr inbounds i8* %b, i64 5052, !dbg !1396
  %20 = bitcast i8* %total_out_lo32 to i32*, !dbg !1396
  %21 = load i32* %20, align 4, !dbg !1396, !tbaa !651
  store i32 %21, i32* %nbytes_out_lo32, align 4, !dbg !1396, !tbaa !651
  br label %if.end127, !dbg !1396

if.end127:                                        ; preds = %if.then125, %if.end122
  br i1 %cmp35, label %if.then130, label %if.end132, !dbg !1397

if.then130:                                       ; preds = %if.end127
  %total_out_hi32 = getelementptr inbounds i8* %b, i64 5056, !dbg !1398
  %22 = bitcast i8* %total_out_hi32 to i32*, !dbg !1398
  %23 = load i32* %22, align 4, !dbg !1398, !tbaa !651
  store i32 %23, i32* %nbytes_out_hi32, align 4, !dbg !1398, !tbaa !651
  br label %if.end132, !dbg !1398

if.end132:                                        ; preds = %if.then130, %if.end127
  %cmp133 = icmp eq i32* %bzerror, null, !dbg !1399
  br i1 %cmp133, label %if.end141, label %if.then135, !dbg !1399

if.then135:                                       ; preds = %if.end132
  store i32 0, i32* %bzerror, align 4, !dbg !1399, !tbaa !651
  br label %if.end141, !dbg !1399

if.end141:                                        ; preds = %if.end132, %if.then135
  %lastErr140 = getelementptr inbounds i8* %b, i64 5096, !dbg !1399
  %24 = bitcast i8* %lastErr140 to i32*, !dbg !1399
  store i32 0, i32* %24, align 4, !dbg !1399, !tbaa !651
  %strm142 = getelementptr inbounds i8* %b, i64 5016, !dbg !1401
  %25 = bitcast i8* %strm142 to %struct.bz_stream*, !dbg !1401
  %call143 = tail call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %25) #14, !dbg !1401
  tail call void @free(i8* %b) #12, !dbg !1402
  br label %return, !dbg !1402

return:                                           ; preds = %if.then2, %if.then, %if.then108, %if.then80, %if.then53, %if.then22, %if.then12, %if.end141
  ret void, !dbg !1402
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i8* @BZ2_bzReadOpen(i32* %bzerror, %struct._IO_FILE* %f, i32 %verbosity, i32 %small, i8* %unused, i32 %nUnused) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %bzerror}, i64 0, metadata !381), !dbg !1403
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %f}, i64 0, metadata !382), !dbg !1404
  tail call void @llvm.dbg.value(metadata !{i32 %verbosity}, i64 0, metadata !383), !dbg !1405
  tail call void @llvm.dbg.value(metadata !{i32 %small}, i64 0, metadata !384), !dbg !1406
  tail call void @llvm.dbg.value(metadata !{i8* %unused}, i64 0, metadata !385), !dbg !1407
  tail call void @llvm.dbg.value(metadata !{i32 %nUnused}, i64 0, metadata !386), !dbg !1408
  tail call void @llvm.dbg.value(metadata !1253, i64 0, metadata !387), !dbg !1409
  %cmp = icmp ne i32* %bzerror, null, !dbg !1410
  br i1 %cmp, label %if.then, label %if.end3, !dbg !1410

if.then:                                          ; preds = %entry
  store i32 0, i32* %bzerror, align 4, !dbg !1410, !tbaa !651
  br label %if.end3, !dbg !1410

if.end3:                                          ; preds = %entry, %if.then
  %cmp4 = icmp eq %struct._IO_FILE* %f, null, !dbg !1412
  %0 = icmp ugt i32 %small, 1, !dbg !1412
  %or.cond = or i1 %cmp4, %0, !dbg !1412
  %1 = icmp ugt i32 %verbosity, 4, !dbg !1412
  %or.cond136 = or i1 %or.cond, %1, !dbg !1412
  br i1 %or.cond136, label %if.then21, label %lor.lhs.false11, !dbg !1412

lor.lhs.false11:                                  ; preds = %if.end3
  %cmp12 = icmp ne i8* %unused, null, !dbg !1412
  %cmp14 = icmp eq i32 %nUnused, 0, !dbg !1412
  %or.cond137 = or i1 %cmp12, %cmp14, !dbg !1412
  %or.cond137.not = xor i1 %or.cond137, true, !dbg !1412
  %2 = icmp ugt i32 %nUnused, 5000, !dbg !1412
  %or.cond138 = and i1 %cmp12, %2, !dbg !1412
  %or.cond142 = or i1 %or.cond138, %or.cond137.not, !dbg !1412
  br i1 %or.cond142, label %if.then21, label %if.end29, !dbg !1412

if.then21:                                        ; preds = %lor.lhs.false11, %if.end3
  br i1 %cmp, label %if.then23, label %return, !dbg !1413

if.then23:                                        ; preds = %if.then21
  store i32 -2, i32* %bzerror, align 4, !dbg !1413, !tbaa !651
  br label %return, !dbg !1413

if.end29:                                         ; preds = %lor.lhs.false11
  %call = tail call i32 @ferror(%struct._IO_FILE* %f) #12, !dbg !1416
  %tobool = icmp eq i32 %call, 0, !dbg !1416
  br i1 %tobool, label %if.end38, label %if.then30, !dbg !1416

if.then30:                                        ; preds = %if.end29
  br i1 %cmp, label %if.then32, label %return, !dbg !1417

if.then32:                                        ; preds = %if.then30
  store i32 -6, i32* %bzerror, align 4, !dbg !1417, !tbaa !651
  br label %return, !dbg !1417

if.end38:                                         ; preds = %if.end29
  %call39 = tail call noalias i8* @malloc(i64 5104) #12, !dbg !1420
  %cmp40 = icmp eq i8* %call39, null, !dbg !1421
  br i1 %cmp40, label %if.then41, label %if.end49, !dbg !1421

if.then41:                                        ; preds = %if.end38
  br i1 %cmp, label %if.end44, label %return, !dbg !1422

if.end44:                                         ; preds = %if.then41
  store i32 -3, i32* %bzerror, align 4, !dbg !1422, !tbaa !651
  br label %return

if.end49:                                         ; preds = %if.end38
  br i1 %cmp, label %if.end52, label %if.end56, !dbg !1425

if.end52:                                         ; preds = %if.end49
  store i32 0, i32* %bzerror, align 4, !dbg !1425, !tbaa !651
  br label %if.end56

if.end56:                                         ; preds = %if.end49, %if.end52
  %lastErr55 = getelementptr inbounds i8* %call39, i64 5096, !dbg !1425
  %3 = bitcast i8* %lastErr55 to i32*, !dbg !1425
  store i32 0, i32* %3, align 4, !dbg !1425, !tbaa !651
  %4 = getelementptr inbounds i8* %call39, i64 5100, !dbg !1427
  store i8 0, i8* %4, align 1, !dbg !1427, !tbaa !616
  %handle = bitcast i8* %call39 to %struct._IO_FILE**, !dbg !1428
  store %struct._IO_FILE* %f, %struct._IO_FILE** %handle, align 8, !dbg !1428, !tbaa !615
  %bufN = getelementptr inbounds i8* %call39, i64 5008, !dbg !1429
  %5 = bitcast i8* %bufN to i32*, !dbg !1429
  store i32 0, i32* %5, align 4, !dbg !1429, !tbaa !651
  %6 = getelementptr inbounds i8* %call39, i64 5012, !dbg !1430
  store i8 0, i8* %6, align 1, !dbg !1430, !tbaa !616
  %strm = getelementptr inbounds i8* %call39, i64 5016, !dbg !1431
  %7 = bitcast i8* %strm to %struct.bz_stream*, !dbg !1431
  %bzalloc = getelementptr inbounds i8* %call39, i64 5072, !dbg !1431
  %cmp59143 = icmp sgt i32 %nUnused, 0, !dbg !1432
  call void @llvm.memset.p0i8.i64(i8* %bzalloc, i8 0, i64 24, i32 8, i1 false), !dbg !1431
  br i1 %cmp59143, label %while.body, label %while.end, !dbg !1432

while.body:                                       ; preds = %if.end56, %while.body
  %8 = phi i32 [ %inc, %while.body ], [ 0, %if.end56 ], !dbg !1433
  %nUnused.addr.0145 = phi i32 [ %dec, %while.body ], [ %nUnused, %if.end56 ]
  %unused.addr.0144 = phi i8* [ %add.ptr, %while.body ], [ %unused, %if.end56 ]
  %9 = load i8* %unused.addr.0144, align 1, !dbg !1433, !tbaa !616
  %idxprom = sext i32 %8 to i64, !dbg !1433
  %buf.sum = add i64 %idxprom, 8, !dbg !1433
  %arrayidx = getelementptr inbounds i8* %call39, i64 %buf.sum, !dbg !1433
  store i8 %9, i8* %arrayidx, align 1, !dbg !1433, !tbaa !616
  %10 = load i32* %5, align 4, !dbg !1433, !tbaa !651
  %inc = add nsw i32 %10, 1, !dbg !1433
  store i32 %inc, i32* %5, align 4, !dbg !1433, !tbaa !651
  %add.ptr = getelementptr inbounds i8* %unused.addr.0144, i64 1, !dbg !1435
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !385), !dbg !1435
  %dec = add nsw i32 %nUnused.addr.0145, -1, !dbg !1436
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !386), !dbg !1436
  %cmp59 = icmp sgt i32 %dec, 0, !dbg !1432
  br i1 %cmp59, label %while.body, label %while.end, !dbg !1432

while.end:                                        ; preds = %while.body, %if.end56
  %call63 = tail call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %7, i32 %verbosity, i32 %small) #14, !dbg !1437
  tail call void @llvm.dbg.value(metadata !{i32 %call63}, i64 0, metadata !388), !dbg !1437
  %cmp64 = icmp eq i32 %call63, 0, !dbg !1438
  br i1 %cmp64, label %if.end73, label %if.then65, !dbg !1438

if.then65:                                        ; preds = %while.end
  br i1 %cmp, label %if.then67, label %if.then70, !dbg !1439

if.then67:                                        ; preds = %if.then65
  store i32 %call63, i32* %bzerror, align 4, !dbg !1439, !tbaa !651
  br label %if.then70, !dbg !1439

if.then70:                                        ; preds = %if.then65, %if.then67
  tail call void @free(i8* %call39) #12, !dbg !1442
  br label %return, !dbg !1442

if.end73:                                         ; preds = %while.end
  %11 = load i32* %5, align 4, !dbg !1443, !tbaa !651
  %avail_in = getelementptr inbounds i8* %call39, i64 5024, !dbg !1443
  %12 = bitcast i8* %avail_in to i32*, !dbg !1443
  store i32 %11, i32* %12, align 4, !dbg !1443, !tbaa !651
  %buf76 = getelementptr inbounds i8* %call39, i64 8, !dbg !1444
  %next_in = bitcast i8* %strm to i8**, !dbg !1444
  store i8* %buf76, i8** %next_in, align 8, !dbg !1444, !tbaa !615
  store i8 1, i8* %4, align 1, !dbg !1445, !tbaa !616
  br label %return, !dbg !1446

return:                                           ; preds = %if.then41, %if.end44, %if.then32, %if.then30, %if.then23, %if.then21, %if.end73, %if.then70
  %retval.0 = phi i8* [ null, %if.then70 ], [ %call39, %if.end73 ], [ null, %if.then21 ], [ null, %if.then23 ], [ null, %if.then30 ], [ null, %if.then32 ], [ null, %if.end44 ], [ null, %if.then41 ]
  ret i8* %retval.0, !dbg !1447
}

; Function Attrs: nounwind optsize uwtable
define void @BZ2_bzReadClose(i32* %bzerror, i8* %b) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %bzerror}, i64 0, metadata !393), !dbg !1448
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !394), !dbg !1448
  %cmp = icmp ne i32* %bzerror, null, !dbg !1449
  br i1 %cmp, label %if.then, label %if.end, !dbg !1449

if.then:                                          ; preds = %entry
  store i32 0, i32* %bzerror, align 4, !dbg !1449, !tbaa !651
  br label %if.end, !dbg !1449

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq i8* %b, null, !dbg !1449
  br i1 %cmp1, label %if.then5, label %if.end13, !dbg !1449

if.then5:                                         ; preds = %if.end
  br i1 %cmp, label %if.end8, label %return, !dbg !1451

if.end8:                                          ; preds = %if.then5
  store i32 0, i32* %bzerror, align 4, !dbg !1451, !tbaa !651
  br label %return

if.end13:                                         ; preds = %if.end
  %lastErr = getelementptr inbounds i8* %b, i64 5096, !dbg !1449
  %0 = bitcast i8* %lastErr to i32*, !dbg !1449
  store i32 0, i32* %0, align 4, !dbg !1449, !tbaa !651
  %1 = getelementptr inbounds i8* %b, i64 5012, !dbg !1454
  %2 = load i8* %1, align 1, !dbg !1454, !tbaa !616
  %tobool = icmp eq i8 %2, 0, !dbg !1454
  br i1 %tobool, label %if.end22, label %if.then14, !dbg !1454

if.then14:                                        ; preds = %if.end13
  br i1 %cmp, label %if.then16, label %if.then19, !dbg !1455

if.then16:                                        ; preds = %if.then14
  store i32 -1, i32* %bzerror, align 4, !dbg !1455, !tbaa !651
  br label %if.then19, !dbg !1455

if.then19:                                        ; preds = %if.then14, %if.then16
  store i32 -1, i32* %0, align 4, !dbg !1455, !tbaa !651
  br label %return, !dbg !1455

if.end22:                                         ; preds = %if.end13
  %3 = getelementptr inbounds i8* %b, i64 5100, !dbg !1458
  %4 = load i8* %3, align 1, !dbg !1458, !tbaa !616
  %tobool23 = icmp eq i8 %4, 0, !dbg !1458
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !1458

if.then24:                                        ; preds = %if.end22
  %strm = getelementptr inbounds i8* %b, i64 5016, !dbg !1459
  %5 = bitcast i8* %strm to %struct.bz_stream*, !dbg !1459
  %call = tail call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %5) #14, !dbg !1459
  br label %if.end25, !dbg !1459

if.end25:                                         ; preds = %if.end22, %if.then24
  tail call void @free(i8* %b) #12, !dbg !1460
  br label %return, !dbg !1460

return:                                           ; preds = %if.then5, %if.end8, %if.then19, %if.end25
  ret void, !dbg !1460
}

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzRead(i32* %bzerror, i8* %b, i8* %buf, i32 %len) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %bzerror}, i64 0, metadata !400), !dbg !1461
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !401), !dbg !1462
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !402), !dbg !1463
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !403), !dbg !1464
  %cmp = icmp ne i32* %bzerror, null, !dbg !1465
  br i1 %cmp, label %if.then, label %if.end, !dbg !1465

if.then:                                          ; preds = %entry
  store i32 0, i32* %bzerror, align 4, !dbg !1465, !tbaa !651
  br label %if.end, !dbg !1465

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp ne i8* %b, null, !dbg !1465
  br i1 %cmp1, label %if.end3, label %if.then8, !dbg !1465

if.end3:                                          ; preds = %if.end
  %lastErr = getelementptr inbounds i8* %b, i64 5096, !dbg !1465
  %0 = bitcast i8* %lastErr to i32*, !dbg !1465
  store i32 0, i32* %0, align 4, !dbg !1465, !tbaa !651
  %cmp5 = icmp eq i8* %buf, null, !dbg !1467
  %cmp7 = icmp slt i32 %len, 0, !dbg !1467
  %or.cond223 = or i1 %cmp5, %cmp7, !dbg !1467
  br i1 %or.cond223, label %if.then8, label %if.end16, !dbg !1467

if.then8:                                         ; preds = %if.end, %if.end3
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !1468

if.then10:                                        ; preds = %if.then8
  store i32 -2, i32* %bzerror, align 4, !dbg !1468, !tbaa !651
  br label %if.end11, !dbg !1468

if.end11:                                         ; preds = %if.then10, %if.then8
  br i1 %cmp1, label %if.then13, label %return, !dbg !1468

if.then13:                                        ; preds = %if.end11
  %lastErr14 = getelementptr inbounds i8* %b, i64 5096, !dbg !1468
  %1 = bitcast i8* %lastErr14 to i32*, !dbg !1468
  store i32 -2, i32* %1, align 4, !dbg !1468, !tbaa !651
  br label %return, !dbg !1468

if.end16:                                         ; preds = %if.end3
  %2 = getelementptr inbounds i8* %b, i64 5012, !dbg !1471
  %3 = load i8* %2, align 1, !dbg !1471, !tbaa !616
  %tobool = icmp eq i8 %3, 0, !dbg !1471
  br i1 %tobool, label %if.end25, label %if.then17, !dbg !1471

if.then17:                                        ; preds = %if.end16
  br i1 %cmp, label %if.then19, label %if.then22, !dbg !1472

if.then19:                                        ; preds = %if.then17
  store i32 -1, i32* %bzerror, align 4, !dbg !1472, !tbaa !651
  br label %if.then22, !dbg !1472

if.then22:                                        ; preds = %if.then17, %if.then19
  store i32 -1, i32* %0, align 4, !dbg !1472, !tbaa !651
  br label %return, !dbg !1472

if.end25:                                         ; preds = %if.end16
  %cmp26 = icmp eq i32 %len, 0, !dbg !1475
  br i1 %cmp26, label %if.then27, label %if.end35, !dbg !1475

if.then27:                                        ; preds = %if.end25
  br i1 %cmp, label %if.then29, label %if.then32, !dbg !1476

if.then29:                                        ; preds = %if.then27
  store i32 0, i32* %bzerror, align 4, !dbg !1476, !tbaa !651
  br label %if.then32, !dbg !1476

if.then32:                                        ; preds = %if.then27, %if.then29
  store i32 0, i32* %0, align 4, !dbg !1476, !tbaa !651
  br label %return, !dbg !1476

if.end35:                                         ; preds = %if.end25
  %strm = getelementptr inbounds i8* %b, i64 5016, !dbg !1479
  %4 = bitcast i8* %strm to %struct.bz_stream*, !dbg !1479
  %avail_out = getelementptr inbounds i8* %b, i64 5048, !dbg !1479
  %5 = bitcast i8* %avail_out to i32*, !dbg !1479
  store i32 %len, i32* %5, align 4, !dbg !1479, !tbaa !651
  %next_out = getelementptr inbounds i8* %b, i64 5040, !dbg !1480
  %6 = bitcast i8* %next_out to i8**, !dbg !1480
  store i8* %buf, i8** %6, align 8, !dbg !1480, !tbaa !615
  %handle = bitcast i8* %b to %struct._IO_FILE**, !dbg !1481
  %avail_in = getelementptr inbounds i8* %b, i64 5024, !dbg !1483
  %7 = bitcast i8* %avail_in to i32*, !dbg !1483
  %buf53 = getelementptr inbounds i8* %b, i64 8, !dbg !1484
  %bufN = getelementptr inbounds i8* %b, i64 5008, !dbg !1486
  %8 = bitcast i8* %bufN to i32*, !dbg !1486
  %next_in = bitcast i8* %strm to i8**, !dbg !1487
  br label %while.body, !dbg !1488

while.body:                                       ; preds = %if.end137, %if.end35
  %9 = load %struct._IO_FILE** %handle, align 8, !dbg !1481, !tbaa !615
  %call = tail call i32 @ferror(%struct._IO_FILE* %9) #12, !dbg !1481
  %tobool37 = icmp eq i32 %call, 0, !dbg !1481
  br i1 %tobool37, label %if.end46, label %if.then38, !dbg !1481

if.then38:                                        ; preds = %while.body
  br i1 %cmp, label %if.then40, label %if.then43, !dbg !1489

if.then40:                                        ; preds = %if.then38
  store i32 -6, i32* %bzerror, align 4, !dbg !1489, !tbaa !651
  br label %if.then43, !dbg !1489

if.then43:                                        ; preds = %if.then38, %if.then40
  store i32 -6, i32* %0, align 4, !dbg !1489, !tbaa !651
  br label %return, !dbg !1489

if.end46:                                         ; preds = %while.body
  %10 = load i32* %7, align 4, !dbg !1483, !tbaa !651
  %cmp48 = icmp eq i32 %10, 0, !dbg !1483
  br i1 %cmp48, label %land.lhs.true, label %if.end76, !dbg !1483

land.lhs.true:                                    ; preds = %if.end46
  %call50 = tail call fastcc zeroext i8 @myfeof(%struct._IO_FILE* %9) #14, !dbg !1483
  %tobool51 = icmp eq i8 %call50, 0, !dbg !1483
  br i1 %tobool51, label %if.then52, label %if.end76, !dbg !1483

if.then52:                                        ; preds = %land.lhs.true
  %11 = load %struct._IO_FILE** %handle, align 8, !dbg !1484, !tbaa !615
  %call55 = tail call i64 @fread(i8* %buf53, i64 1, i64 5000, %struct._IO_FILE* %11) #12, !dbg !1484
  %conv = trunc i64 %call55 to i32, !dbg !1484
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !404), !dbg !1484
  %12 = load %struct._IO_FILE** %handle, align 8, !dbg !1492, !tbaa !615
  %call57 = tail call i32 @ferror(%struct._IO_FILE* %12) #12, !dbg !1492
  %tobool58 = icmp eq i32 %call57, 0, !dbg !1492
  br i1 %tobool58, label %if.end69, label %if.then59, !dbg !1492

if.then59:                                        ; preds = %if.then52
  br i1 %cmp, label %if.then62, label %if.then66, !dbg !1493

if.then62:                                        ; preds = %if.then59
  store i32 -6, i32* %bzerror, align 4, !dbg !1493, !tbaa !651
  br label %if.then66, !dbg !1493

if.then66:                                        ; preds = %if.then59, %if.then62
  store i32 -6, i32* %0, align 4, !dbg !1493, !tbaa !651
  br label %return, !dbg !1493

if.end69:                                         ; preds = %if.then52
  store i32 %conv, i32* %8, align 4, !dbg !1486, !tbaa !651
  store i32 %conv, i32* %7, align 4, !dbg !1496, !tbaa !651
  store i8* %buf53, i8** %next_in, align 8, !dbg !1487, !tbaa !615
  br label %if.end76, !dbg !1497

if.end76:                                         ; preds = %land.lhs.true, %if.end69, %if.end46
  %call78 = tail call i32 @BZ2_bzDecompress(%struct.bz_stream* %4) #14, !dbg !1498
  tail call void @llvm.dbg.value(metadata !{i32 %call78}, i64 0, metadata !405), !dbg !1498
  switch i32 %call78, label %if.then84 [
    i32 0, label %land.lhs.true97
    i32 4, label %if.then125
  ], !dbg !1499

if.then84:                                        ; preds = %if.end76
  br i1 %cmp, label %if.then87, label %if.then91, !dbg !1500

if.then87:                                        ; preds = %if.then84
  store i32 %call78, i32* %bzerror, align 4, !dbg !1500, !tbaa !651
  br label %if.then91, !dbg !1500

if.then91:                                        ; preds = %if.then84, %if.then87
  store i32 %call78, i32* %0, align 4, !dbg !1500, !tbaa !651
  br label %return, !dbg !1500

land.lhs.true97:                                  ; preds = %if.end76
  %13 = load %struct._IO_FILE** %handle, align 8, !dbg !1503, !tbaa !615
  %call99 = tail call fastcc zeroext i8 @myfeof(%struct._IO_FILE* %13) #14, !dbg !1503
  %tobool101 = icmp eq i8 %call99, 0, !dbg !1503
  br i1 %tobool101, label %if.end137, label %land.lhs.true102, !dbg !1503

land.lhs.true102:                                 ; preds = %land.lhs.true97
  %14 = load i32* %7, align 4, !dbg !1503, !tbaa !651
  %cmp105 = icmp eq i32 %14, 0, !dbg !1503
  br i1 %cmp105, label %land.lhs.true107, label %if.end137, !dbg !1503

land.lhs.true107:                                 ; preds = %land.lhs.true102
  %15 = load i32* %5, align 4, !dbg !1503, !tbaa !651
  %cmp110 = icmp eq i32 %15, 0, !dbg !1503
  br i1 %cmp110, label %if.then142, label %if.then112, !dbg !1503

if.then112:                                       ; preds = %land.lhs.true107
  br i1 %cmp, label %if.then115, label %if.then119, !dbg !1504

if.then115:                                       ; preds = %if.then112
  store i32 -7, i32* %bzerror, align 4, !dbg !1504, !tbaa !651
  br label %if.then119, !dbg !1504

if.then119:                                       ; preds = %if.then112, %if.then115
  store i32 -7, i32* %0, align 4, !dbg !1504, !tbaa !651
  br label %return, !dbg !1504

if.then125:                                       ; preds = %if.end76
  br i1 %cmp, label %if.then128, label %if.end134, !dbg !1507

if.then128:                                       ; preds = %if.then125
  store i32 4, i32* %bzerror, align 4, !dbg !1507, !tbaa !651
  br label %if.end134, !dbg !1507

if.end134:                                        ; preds = %if.then128, %if.then125
  store i32 4, i32* %0, align 4, !dbg !1507, !tbaa !651
  %16 = load i32* %5, align 4, !dbg !1510, !tbaa !651
  %sub = sub i32 %len, %16, !dbg !1510
  br label %return, !dbg !1510

if.end137:                                        ; preds = %land.lhs.true102, %land.lhs.true97
  %.pr = load i32* %5, align 4, !dbg !1511, !tbaa !651
  %cmp140 = icmp eq i32 %.pr, 0, !dbg !1511
  br i1 %cmp140, label %if.then142, label %while.body, !dbg !1511

if.then142:                                       ; preds = %land.lhs.true107, %if.end137
  br i1 %cmp, label %if.then145, label %if.then149, !dbg !1512

if.then145:                                       ; preds = %if.then142
  store i32 0, i32* %bzerror, align 4, !dbg !1512, !tbaa !651
  br label %if.then149, !dbg !1512

if.then149:                                       ; preds = %if.then142, %if.then145
  store i32 0, i32* %0, align 4, !dbg !1512, !tbaa !651
  br label %return, !dbg !1512

return:                                           ; preds = %if.then149, %if.then119, %if.then91, %if.then66, %if.then43, %if.then32, %if.then22, %if.end11, %if.then13, %if.end134
  %retval.0 = phi i32 [ %sub, %if.end134 ], [ 0, %if.then13 ], [ 0, %if.end11 ], [ 0, %if.then22 ], [ 0, %if.then32 ], [ 0, %if.then43 ], [ 0, %if.then66 ], [ 0, %if.then91 ], [ 0, %if.then119 ], [ %len, %if.then149 ]
  ret i32 %retval.0, !dbg !1515
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc zeroext i8 @myfeof(%struct._IO_FILE* nocapture %f) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %f}, i64 0, metadata !520), !dbg !1516
  %call = tail call i32 @fgetc(%struct._IO_FILE* %f) #12, !dbg !1517
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !521), !dbg !1517
  %cmp = icmp eq i32 %call, -1, !dbg !1518
  br i1 %cmp, label %return, label %if.end, !dbg !1518

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ungetc(i32 %call, %struct._IO_FILE* %f) #12, !dbg !1519
  br label %return, !dbg !1520

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ 0, %if.end ], [ 1, %entry ]
  ret i8 %retval.0, !dbg !1520
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @BZ2_bzReadGetUnused(i32* %bzerror, i8* %b, i8** %unused, i32* %nUnused) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %bzerror}, i64 0, metadata !412), !dbg !1521
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !413), !dbg !1522
  tail call void @llvm.dbg.value(metadata !{i8** %unused}, i64 0, metadata !414), !dbg !1523
  tail call void @llvm.dbg.value(metadata !{i32* %nUnused}, i64 0, metadata !415), !dbg !1524
  %cmp = icmp eq i8* %b, null, !dbg !1525
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1525

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %bzerror, null, !dbg !1526
  br i1 %cmp1, label %return, label %if.then2, !dbg !1526

if.then2:                                         ; preds = %if.then
  store i32 -2, i32* %bzerror, align 4, !dbg !1526, !tbaa !651
  br label %return, !dbg !1526

if.end6:                                          ; preds = %entry
  %lastErr7 = getelementptr inbounds i8* %b, i64 5096, !dbg !1529
  %0 = bitcast i8* %lastErr7 to i32*, !dbg !1529
  %1 = load i32* %0, align 4, !dbg !1529, !tbaa !651
  %cmp8 = icmp eq i32 %1, 4, !dbg !1529
  br i1 %cmp8, label %if.end17, label %if.then9, !dbg !1529

if.then9:                                         ; preds = %if.end6
  %cmp10 = icmp eq i32* %bzerror, null, !dbg !1530
  br i1 %cmp10, label %if.then14, label %if.then11, !dbg !1530

if.then11:                                        ; preds = %if.then9
  store i32 -1, i32* %bzerror, align 4, !dbg !1530, !tbaa !651
  br label %if.then14, !dbg !1530

if.then14:                                        ; preds = %if.then11, %if.then9
  store i32 -1, i32* %0, align 4, !dbg !1530, !tbaa !651
  br label %return, !dbg !1530

if.end17:                                         ; preds = %if.end6
  %cmp18 = icmp eq i8** %unused, null, !dbg !1533
  %cmp19 = icmp eq i32* %nUnused, null, !dbg !1533
  %or.cond = or i1 %cmp18, %cmp19, !dbg !1533
  %cmp21 = icmp eq i32* %bzerror, null, !dbg !1534
  br i1 %or.cond, label %if.then20, label %if.end28, !dbg !1533

if.then20:                                        ; preds = %if.end17
  br i1 %cmp21, label %if.then25, label %if.then22, !dbg !1534

if.then22:                                        ; preds = %if.then20
  store i32 -2, i32* %bzerror, align 4, !dbg !1534, !tbaa !651
  br label %if.then25, !dbg !1534

if.then25:                                        ; preds = %if.then22, %if.then20
  store i32 -2, i32* %0, align 4, !dbg !1534, !tbaa !651
  br label %return, !dbg !1534

if.end28:                                         ; preds = %if.end17
  br i1 %cmp21, label %if.end35, label %if.then30, !dbg !1537

if.then30:                                        ; preds = %if.end28
  store i32 0, i32* %bzerror, align 4, !dbg !1537, !tbaa !651
  br label %if.end35, !dbg !1537

if.end35:                                         ; preds = %if.end28, %if.then30
  store i32 0, i32* %0, align 4, !dbg !1537, !tbaa !651
  %strm = getelementptr inbounds i8* %b, i64 5016, !dbg !1539
  %avail_in = getelementptr inbounds i8* %b, i64 5024, !dbg !1539
  %2 = bitcast i8* %avail_in to i32*, !dbg !1539
  %3 = load i32* %2, align 4, !dbg !1539, !tbaa !651
  store i32 %3, i32* %nUnused, align 4, !dbg !1539, !tbaa !651
  %next_in = bitcast i8* %strm to i8**, !dbg !1540
  %4 = load i8** %next_in, align 8, !dbg !1540, !tbaa !615
  store i8* %4, i8** %unused, align 8, !dbg !1540, !tbaa !615
  br label %return, !dbg !1540

return:                                           ; preds = %if.then2, %if.then, %if.then25, %if.then14, %if.end35
  ret void, !dbg !1540
}

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzBuffToBuffCompress(i8* %dest, i32* %destLen, i8* %source, i32 %sourceLen, i32 %blockSize100k, i32 %verbosity, i32 %workFactor) #5 {
entry:
  %strm = alloca %struct.bz_stream, align 8
  call void @llvm.dbg.value(metadata !{i8* %dest}, i64 0, metadata !421), !dbg !1541
  call void @llvm.dbg.value(metadata !{i32* %destLen}, i64 0, metadata !422), !dbg !1542
  call void @llvm.dbg.value(metadata !{i8* %source}, i64 0, metadata !423), !dbg !1543
  call void @llvm.dbg.value(metadata !{i32 %sourceLen}, i64 0, metadata !424), !dbg !1544
  call void @llvm.dbg.value(metadata !{i32 %blockSize100k}, i64 0, metadata !425), !dbg !1545
  call void @llvm.dbg.value(metadata !{i32 %verbosity}, i64 0, metadata !426), !dbg !1546
  call void @llvm.dbg.value(metadata !{i32 %workFactor}, i64 0, metadata !427), !dbg !1547
  %0 = bitcast %struct.bz_stream* %strm to i8*, !dbg !1548
  call void @llvm.lifetime.start(i64 80, i8* %0) #9, !dbg !1548
  call void @llvm.dbg.declare(metadata !{%struct.bz_stream* %strm}, metadata !428), !dbg !1548
  %cmp = icmp eq i8* %dest, null, !dbg !1549
  %cmp1 = icmp eq i32* %destLen, null, !dbg !1549
  %or.cond = or i1 %cmp, %cmp1, !dbg !1549
  %cmp3 = icmp eq i8* %source, null, !dbg !1549
  %or.cond50 = or i1 %or.cond, %cmp3, !dbg !1549
  br i1 %or.cond50, label %cleanup, label %lor.lhs.false4, !dbg !1549

lor.lhs.false4:                                   ; preds = %entry
  %blockSize100k.off = add i32 %blockSize100k, -1, !dbg !1549
  %1 = icmp ugt i32 %blockSize100k.off, 8, !dbg !1549
  %2 = icmp ugt i32 %verbosity, 4, !dbg !1549
  %or.cond51 = or i1 %1, %2, !dbg !1549
  %3 = icmp ugt i32 %workFactor, 250, !dbg !1549
  %or.cond52 = or i1 %or.cond51, %3, !dbg !1549
  br i1 %or.cond52, label %cleanup, label %if.end, !dbg !1549

if.end:                                           ; preds = %lor.lhs.false4
  %cmp16 = icmp eq i32 %workFactor, 0, !dbg !1550
  call void @llvm.dbg.value(metadata !631, i64 0, metadata !427), !dbg !1550
  %.workFactor = select i1 %cmp16, i32 30, i32 %workFactor, !dbg !1550
  %bzalloc = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 9, !dbg !1551
  %4 = bitcast i8* (i8*, i32, i32)** %bzalloc to i8*, !dbg !1552
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 24, i32 8, i1 false), !dbg !1553
  %call = call i32 @BZ2_bzCompressInit(%struct.bz_stream* %strm, i32 %blockSize100k, i32 %verbosity, i32 %.workFactor) #14, !dbg !1552
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !429), !dbg !1552
  %cmp19 = icmp eq i32 %call, 0, !dbg !1554
  br i1 %cmp19, label %if.end21, label %cleanup, !dbg !1554

if.end21:                                         ; preds = %if.end
  %next_in = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 0, !dbg !1555
  store i8* %source, i8** %next_in, align 8, !dbg !1555, !tbaa !615
  %next_out = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 4, !dbg !1556
  store i8* %dest, i8** %next_out, align 8, !dbg !1556, !tbaa !615
  %avail_in = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 1, !dbg !1557
  store i32 %sourceLen, i32* %avail_in, align 8, !dbg !1557, !tbaa !651
  %5 = load i32* %destLen, align 4, !dbg !1558, !tbaa !651
  %avail_out = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 5, !dbg !1558
  store i32 %5, i32* %avail_out, align 8, !dbg !1558, !tbaa !651
  %call22 = call i32 @BZ2_bzCompress(%struct.bz_stream* %strm, i32 2) #14, !dbg !1559
  call void @llvm.dbg.value(metadata !{i32 %call22}, i64 0, metadata !429), !dbg !1559
  switch i32 %call22, label %errhandler [
    i32 3, label %output_overflow
    i32 4, label %if.end28
  ], !dbg !1560

if.end28:                                         ; preds = %if.end21
  %6 = load i32* %avail_out, align 8, !dbg !1561, !tbaa !651
  %7 = load i32* %destLen, align 4, !dbg !1561, !tbaa !651
  %sub = sub i32 %7, %6, !dbg !1561
  store i32 %sub, i32* %destLen, align 4, !dbg !1561, !tbaa !651
  %call30 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm) #14, !dbg !1562
  br label %cleanup, !dbg !1563

output_overflow:                                  ; preds = %if.end21
  %call31 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm) #14, !dbg !1564
  br label %cleanup, !dbg !1565

errhandler:                                       ; preds = %if.end21
  %call32 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %strm) #14, !dbg !1566
  br label %cleanup, !dbg !1567

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false4, %errhandler, %output_overflow, %if.end28
  %retval.0 = phi i32 [ -8, %output_overflow ], [ %call22, %errhandler ], [ 0, %if.end28 ], [ -2, %lor.lhs.false4 ], [ -2, %entry ], [ %call, %if.end ]
  call void @llvm.lifetime.end(i64 80, i8* %0) #9, !dbg !1568
  ret i32 %retval.0, !dbg !1568
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #9

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #9

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzBuffToBuffDecompress(i8* %dest, i32* %destLen, i8* %source, i32 %sourceLen, i32 %small, i32 %verbosity) #5 {
entry:
  %strm = alloca %struct.bz_stream, align 8
  call void @llvm.dbg.value(metadata !{i8* %dest}, i64 0, metadata !434), !dbg !1569
  call void @llvm.dbg.value(metadata !{i32* %destLen}, i64 0, metadata !435), !dbg !1570
  call void @llvm.dbg.value(metadata !{i8* %source}, i64 0, metadata !436), !dbg !1571
  call void @llvm.dbg.value(metadata !{i32 %sourceLen}, i64 0, metadata !437), !dbg !1572
  call void @llvm.dbg.value(metadata !{i32 %small}, i64 0, metadata !438), !dbg !1573
  call void @llvm.dbg.value(metadata !{i32 %verbosity}, i64 0, metadata !439), !dbg !1574
  %0 = bitcast %struct.bz_stream* %strm to i8*, !dbg !1575
  call void @llvm.lifetime.start(i64 80, i8* %0) #9, !dbg !1575
  call void @llvm.dbg.declare(metadata !{%struct.bz_stream* %strm}, metadata !440), !dbg !1575
  %cmp = icmp eq i8* %dest, null, !dbg !1576
  %cmp1 = icmp eq i32* %destLen, null, !dbg !1576
  %or.cond = or i1 %cmp, %cmp1, !dbg !1576
  %cmp3 = icmp eq i8* %source, null, !dbg !1576
  %or.cond42 = or i1 %or.cond, %cmp3, !dbg !1576
  %1 = icmp ugt i32 %small, 1, !dbg !1576
  %or.cond43 = or i1 %or.cond42, %1, !dbg !1576
  %2 = icmp ugt i32 %verbosity, 4, !dbg !1576
  %or.cond44 = or i1 %or.cond43, %2, !dbg !1576
  br i1 %or.cond44, label %cleanup, label %if.end, !dbg !1576

if.end:                                           ; preds = %entry
  %bzalloc = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 9, !dbg !1577
  %3 = bitcast i8* (i8*, i32, i32)** %bzalloc to i8*, !dbg !1578
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 24, i32 8, i1 false), !dbg !1579
  %call = call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %strm, i32 %verbosity, i32 %small) #14, !dbg !1578
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !441), !dbg !1578
  %cmp11 = icmp eq i32 %call, 0, !dbg !1580
  br i1 %cmp11, label %if.end13, label %cleanup, !dbg !1580

if.end13:                                         ; preds = %if.end
  %next_in = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 0, !dbg !1581
  store i8* %source, i8** %next_in, align 8, !dbg !1581, !tbaa !615
  %next_out = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 4, !dbg !1582
  store i8* %dest, i8** %next_out, align 8, !dbg !1582, !tbaa !615
  %avail_in = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 1, !dbg !1583
  store i32 %sourceLen, i32* %avail_in, align 8, !dbg !1583, !tbaa !651
  %4 = load i32* %destLen, align 4, !dbg !1584, !tbaa !651
  %avail_out = getelementptr inbounds %struct.bz_stream* %strm, i64 0, i32 5, !dbg !1584
  store i32 %4, i32* %avail_out, align 8, !dbg !1584, !tbaa !651
  %call14 = call i32 @BZ2_bzDecompress(%struct.bz_stream* %strm) #14, !dbg !1585
  call void @llvm.dbg.value(metadata !{i32 %call14}, i64 0, metadata !441), !dbg !1585
  switch i32 %call14, label %errhandler [
    i32 0, label %output_overflow_or_eof
    i32 4, label %if.end20
  ], !dbg !1586

if.end20:                                         ; preds = %if.end13
  %5 = load i32* %avail_out, align 8, !dbg !1587, !tbaa !651
  %6 = load i32* %destLen, align 4, !dbg !1587, !tbaa !651
  %sub = sub i32 %6, %5, !dbg !1587
  store i32 %sub, i32* %destLen, align 4, !dbg !1587, !tbaa !651
  %call22 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm) #14, !dbg !1588
  br label %cleanup, !dbg !1589

output_overflow_or_eof:                           ; preds = %if.end13
  %7 = load i32* %avail_out, align 8, !dbg !1590, !tbaa !651
  %cmp24 = icmp eq i32 %7, 0, !dbg !1590
  %call26 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm) #14, !dbg !1591
  %. = select i1 %cmp24, i32 -8, i32 -7, !dbg !1593
  br label %cleanup, !dbg !1593

errhandler:                                       ; preds = %if.end13
  %call28 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %strm) #14, !dbg !1595
  br label %cleanup, !dbg !1596

cleanup:                                          ; preds = %output_overflow_or_eof, %if.end, %entry, %errhandler, %if.end20
  %retval.0 = phi i32 [ %call14, %errhandler ], [ 0, %if.end20 ], [ -2, %entry ], [ %call, %if.end ], [ %., %output_overflow_or_eof ]
  call void @llvm.lifetime.end(i64 80, i8* %0) #9, !dbg !1597
  ret i32 %retval.0, !dbg !1597
}

; Function Attrs: nounwind optsize uwtable
define i8* @BZ2_bzopen(i8* %path, i8* %mode) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !451), !dbg !1598
  tail call void @llvm.dbg.value(metadata !{i8* %mode}, i64 0, metadata !452), !dbg !1599
  %call = tail call fastcc i8* @bzopen_or_bzdopen(i8* %path, i32 -1, i8* %mode, i32 0) #14, !dbg !1600
  ret i8* %call, !dbg !1600
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @bzopen_or_bzdopen(i8* %path, i32 %fd, i8* %mode, i32 %open_mode) #5 {
entry:
  %bzerr = alloca i32, align 4
  %unused = alloca [5000 x i8], align 16
  %mode2 = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata !{i8* %path}, i64 0, metadata !497), !dbg !1601
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !498), !dbg !1602
  call void @llvm.dbg.value(metadata !{i8* %mode}, i64 0, metadata !499), !dbg !1603
  call void @llvm.dbg.value(metadata !{i32 %open_mode}, i64 0, metadata !500), !dbg !1604
  call void @llvm.dbg.declare(metadata !{i32* %bzerr}, metadata !501), !dbg !1605
  %0 = getelementptr inbounds [5000 x i8]* %unused, i64 0, i64 0, !dbg !1606
  call void @llvm.lifetime.start(i64 5000, i8* %0) #9, !dbg !1606
  call void @llvm.dbg.declare(metadata !{[5000 x i8]* %unused}, metadata !502), !dbg !1606
  call void @llvm.dbg.value(metadata !1607, i64 0, metadata !504), !dbg !1608
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !505), !dbg !1609
  call void @llvm.dbg.declare(metadata !{[10 x i8]* %mode2}, metadata !506), !dbg !1610
  %1 = getelementptr inbounds [10 x i8]* %mode2, i64 0, i64 0, !dbg !1610
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 10, i32 1, i1 false), !dbg !1610
  call void @llvm.dbg.value(metadata !1611, i64 0, metadata !510), !dbg !1612
  call void @llvm.dbg.value(metadata !1613, i64 0, metadata !511), !dbg !1614
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !512), !dbg !1615
  call void @llvm.dbg.value(metadata !631, i64 0, metadata !513), !dbg !1616
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !514), !dbg !1617
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !515), !dbg !1618
  %cmp = icmp eq i8* %mode, null, !dbg !1619
  br i1 %cmp, label %cleanup, label %while.cond.preheader, !dbg !1619

while.cond.preheader:                             ; preds = %entry
  %2 = load i8* %mode, align 1, !dbg !1620, !tbaa !616
  %tobool82 = icmp eq i8 %2, 0, !dbg !1620
  br i1 %tobool82, label %while.end, label %while.body, !dbg !1620

while.body:                                       ; preds = %while.cond.preheader, %sw.epilog
  %3 = phi i8 [ %6, %sw.epilog ], [ %2, %while.cond.preheader ]
  %smallMode.086 = phi i32 [ %smallMode.1, %sw.epilog ], [ 0, %while.cond.preheader ]
  %mode.addr.085 = phi i8* [ %incdec.ptr, %sw.epilog ], [ %mode, %while.cond.preheader ]
  %blockSize100k.084 = phi i32 [ %blockSize100k.1, %sw.epilog ], [ 9, %while.cond.preheader ]
  %writing.083 = phi i32 [ %writing.1, %sw.epilog ], [ 0, %while.cond.preheader ]
  %conv = sext i8 %3 to i32, !dbg !1621
  switch i32 %conv, label %sw.default [
    i32 114, label %sw.epilog
    i32 119, label %sw.bb1
    i32 115, label %sw.bb2
  ], !dbg !1621

sw.bb1:                                           ; preds = %while.body
  call void @llvm.dbg.value(metadata !1623, i64 0, metadata !505), !dbg !1624
  br label %sw.epilog, !dbg !1624

sw.bb2:                                           ; preds = %while.body
  call void @llvm.dbg.value(metadata !1623, i64 0, metadata !514), !dbg !1626
  br label %sw.epilog, !dbg !1626

sw.default:                                       ; preds = %while.body
  %idxprom = sext i8 %3 to i64, !dbg !1627
  %call = call i16** @__ctype_b_loc() #15, !dbg !1627
  %4 = load i16** %call, align 8, !dbg !1627, !tbaa !615
  %arrayidx = getelementptr inbounds i16* %4, i64 %idxprom, !dbg !1627
  %5 = load i16* %arrayidx, align 2, !dbg !1627, !tbaa !945
  %and = and i16 %5, 2048, !dbg !1627
  %tobool5 = icmp eq i16 %and, 0, !dbg !1627
  %sub = add nsw i32 %conv, -48, !dbg !1628
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !504), !dbg !1628
  %blockSize100k.0.sub = select i1 %tobool5, i32 %blockSize100k.084, i32 %sub, !dbg !1627
  br label %sw.epilog, !dbg !1627

sw.epilog:                                        ; preds = %sw.default, %while.body, %sw.bb2, %sw.bb1
  %writing.1 = phi i32 [ %writing.083, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %while.body ], [ %writing.083, %sw.default ]
  %blockSize100k.1 = phi i32 [ %blockSize100k.084, %sw.bb2 ], [ %blockSize100k.084, %sw.bb1 ], [ %blockSize100k.084, %while.body ], [ %blockSize100k.0.sub, %sw.default ]
  %smallMode.1 = phi i32 [ 1, %sw.bb2 ], [ %smallMode.086, %sw.bb1 ], [ %smallMode.086, %while.body ], [ %smallMode.086, %sw.default ]
  %incdec.ptr = getelementptr inbounds i8* %mode.addr.085, i64 1, !dbg !1630
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !499), !dbg !1630
  %6 = load i8* %incdec.ptr, align 1, !dbg !1620, !tbaa !616
  %tobool = icmp eq i8 %6, 0, !dbg !1620
  br i1 %tobool, label %while.end, label %while.body, !dbg !1620

while.end:                                        ; preds = %sw.epilog, %while.cond.preheader
  %smallMode.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %smallMode.1, %sw.epilog ]
  %blockSize100k.0.lcssa = phi i32 [ 9, %while.cond.preheader ], [ %blockSize100k.1, %sw.epilog ]
  %writing.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %writing.1, %sw.epilog ]
  %tobool9 = icmp ne i32 %writing.0.lcssa, 0, !dbg !1631
  %strlen = call i64 @strlen(i8* %1), !dbg !1631
  %endptr = getelementptr [10 x i8]* %mode2, i64 0, i64 %strlen, !dbg !1631
  %7 = bitcast i8* %endptr to i16*, !dbg !1631
  %8 = select i1 %tobool9, i16 119, i16 114, !dbg !1631
  store i16 %8, i16* %7, align 1, !dbg !1631
  %strlen79 = call i64 @strlen(i8* %1), !dbg !1632
  %endptr80 = getelementptr [10 x i8]* %mode2, i64 0, i64 %strlen79, !dbg !1632
  %9 = bitcast i8* %endptr80 to i16*, !dbg !1632
  store i16 98, i16* %9, align 1, !dbg !1632
  %cmp13 = icmp eq i32 %open_mode, 0, !dbg !1633
  br i1 %cmp13, label %if.then15, label %if.else27, !dbg !1633

if.then15:                                        ; preds = %while.end
  %cmp16 = icmp eq i8* %path, null, !dbg !1634
  br i1 %cmp16, label %if.then21, label %lor.lhs.false, !dbg !1634

lor.lhs.false:                                    ; preds = %if.then15
  %strcmpload = load i8* %path, align 1, !dbg !1634
  %cmp19 = icmp eq i8 %strcmpload, 0, !dbg !1634
  br i1 %cmp19, label %if.then21, label %if.else, !dbg !1634

if.then21:                                        ; preds = %lor.lhs.false, %if.then15
  %10 = load %struct._IO_FILE** @stdout, align 8, !dbg !1636, !tbaa !615
  %11 = load %struct._IO_FILE** @stdin, align 8, !dbg !1636, !tbaa !615
  %cond23 = select i1 %tobool9, %struct._IO_FILE* %10, %struct._IO_FILE* %11, !dbg !1636
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %cond23}, i64 0, metadata !510), !dbg !1636
  br label %if.end30, !dbg !1638

if.else:                                          ; preds = %lor.lhs.false
  %call25 = call %struct._IO_FILE* @fopen(i8* %path, i8* %1) #12, !dbg !1639
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call25}, i64 0, metadata !510), !dbg !1639
  br label %if.end30

if.else27:                                        ; preds = %while.end
  %call29 = call %struct._IO_FILE* @fdopen(i32 %fd, i8* %1) #12, !dbg !1641
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call29}, i64 0, metadata !510), !dbg !1641
  br label %if.end30

if.end30:                                         ; preds = %if.then21, %if.else, %if.else27
  %fp.0 = phi %struct._IO_FILE* [ %cond23, %if.then21 ], [ %call25, %if.else ], [ %call29, %if.else27 ]
  %cmp31 = icmp eq %struct._IO_FILE* %fp.0, null, !dbg !1643
  br i1 %cmp31, label %cleanup, label %if.end34, !dbg !1643

if.end34:                                         ; preds = %if.end30
  br i1 %tobool9, label %if.then36, label %if.else46, !dbg !1644

if.then36:                                        ; preds = %if.end34
  %cmp37 = icmp slt i32 %blockSize100k.0.lcssa, 1, !dbg !1645
  call void @llvm.dbg.value(metadata !1623, i64 0, metadata !504), !dbg !1645
  %.blockSize100k.0 = select i1 %cmp37, i32 1, i32 %blockSize100k.0.lcssa, !dbg !1645
  %cmp41 = icmp sgt i32 %.blockSize100k.0, 9, !dbg !1647
  call void @llvm.dbg.value(metadata !1607, i64 0, metadata !504), !dbg !1647
  %blockSize100k.3 = select i1 %cmp41, i32 9, i32 %.blockSize100k.0, !dbg !1647
  %call45 = call i8* @BZ2_bzWriteOpen(i32* %bzerr, %struct._IO_FILE* %fp.0, i32 %blockSize100k.3, i32 0, i32 30) #14, !dbg !1648
  call void @llvm.dbg.value(metadata !{i8* %call45}, i64 0, metadata !511), !dbg !1648
  br label %if.end49, !dbg !1649

if.else46:                                        ; preds = %if.end34
  %call48 = call i8* @BZ2_bzReadOpen(i32* %bzerr, %struct._IO_FILE* %fp.0, i32 0, i32 %smallMode.0.lcssa, i8* %0, i32 0) #14, !dbg !1650
  call void @llvm.dbg.value(metadata !{i8* %call48}, i64 0, metadata !511), !dbg !1650
  br label %if.end49

if.end49:                                         ; preds = %if.else46, %if.then36
  %bzfp.0 = phi i8* [ %call45, %if.then36 ], [ %call48, %if.else46 ]
  %cmp50 = icmp eq i8* %bzfp.0, null, !dbg !1652
  br i1 %cmp50, label %if.then52, label %cleanup, !dbg !1652

if.then52:                                        ; preds = %if.end49
  %12 = load %struct._IO_FILE** @stdin, align 8, !dbg !1653, !tbaa !615
  %cmp53 = icmp eq %struct._IO_FILE* %fp.0, %12, !dbg !1653
  %13 = load %struct._IO_FILE** @stdout, align 8, !dbg !1653, !tbaa !615
  %cmp55 = icmp eq %struct._IO_FILE* %fp.0, %13, !dbg !1653
  %or.cond = or i1 %cmp53, %cmp55, !dbg !1653
  br i1 %or.cond, label %cleanup, label %if.then57, !dbg !1653

if.then57:                                        ; preds = %if.then52
  %call58 = call i32 @fclose(%struct._IO_FILE* %fp.0) #12, !dbg !1653
  br label %cleanup, !dbg !1653

cleanup:                                          ; preds = %if.end49, %if.then57, %if.then52, %if.end30, %entry
  %retval.0 = phi i8* [ null, %entry ], [ null, %if.end30 ], [ null, %if.then52 ], [ null, %if.then57 ], [ %bzfp.0, %if.end49 ]
  call void @llvm.lifetime.end(i64 5000, i8* %0) #9, !dbg !1655
  ret i8* %retval.0, !dbg !1655
}

; Function Attrs: nounwind optsize uwtable
define i8* @BZ2_bzdopen(i32 %fd, i8* %mode) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !457), !dbg !1656
  tail call void @llvm.dbg.value(metadata !{i8* %mode}, i64 0, metadata !458), !dbg !1657
  %call = tail call fastcc i8* @bzopen_or_bzdopen(i8* null, i32 %fd, i8* %mode, i32 1) #14, !dbg !1658
  ret i8* %call, !dbg !1658
}

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzread(i8* %b, i8* %buf, i32 %len) #5 {
entry:
  %bzerr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !463), !dbg !1659
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !464), !dbg !1659
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !465), !dbg !1659
  call void @llvm.dbg.declare(metadata !{i32* %bzerr}, metadata !466), !dbg !1660
  %lastErr = getelementptr inbounds i8* %b, i64 5096, !dbg !1661
  %0 = bitcast i8* %lastErr to i32*, !dbg !1661
  %1 = load i32* %0, align 4, !dbg !1661, !tbaa !651
  %cmp = icmp eq i32 %1, 4, !dbg !1661
  br i1 %cmp, label %return, label %if.end, !dbg !1661

if.end:                                           ; preds = %entry
  %call = call i32 @BZ2_bzRead(i32* %bzerr, i8* %b, i8* %buf, i32 %len) #14, !dbg !1662
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !467), !dbg !1662
  call void @llvm.dbg.value(metadata !{i32* %bzerr}, i64 0, metadata !466), !dbg !1663
  %2 = load i32* %bzerr, align 4, !dbg !1663, !tbaa !651
  %3 = and i32 %2, -5, !dbg !1663
  %4 = icmp eq i32 %3, 0, !dbg !1663
  %call. = select i1 %4, i32 %call, i32 -1, !dbg !1664
  br label %return, !dbg !1664

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call., %if.end ]
  ret i32 %retval.0, !dbg !1666
}

; Function Attrs: nounwind optsize uwtable
define i32 @BZ2_bzwrite(i8* %b, i8* %buf, i32 %len) #5 {
entry:
  %bzerr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !470), !dbg !1667
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !471), !dbg !1667
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !472), !dbg !1667
  call void @llvm.dbg.declare(metadata !{i32* %bzerr}, metadata !473), !dbg !1668
  call void @BZ2_bzWrite(i32* %bzerr, i8* %b, i8* %buf, i32 %len) #14, !dbg !1669
  call void @llvm.dbg.value(metadata !{i32* %bzerr}, i64 0, metadata !473), !dbg !1670
  %0 = load i32* %bzerr, align 4, !dbg !1670, !tbaa !651
  %cmp = icmp eq i32 %0, 0, !dbg !1670
  %len. = select i1 %cmp, i32 %len, i32 -1, !dbg !1671
  ret i32 %len., !dbg !1673
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @BZ2_bzflush(i8* nocapture %b) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !478), !dbg !1674
  ret i32 0, !dbg !1675
}

; Function Attrs: nounwind optsize uwtable
define void @BZ2_bzclose(i8* %b) #5 {
entry:
  %bzerr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !483), !dbg !1676
  call void @llvm.dbg.declare(metadata !{i32* %bzerr}, metadata !484), !dbg !1677
  %handle = bitcast i8* %b to %struct._IO_FILE**, !dbg !1678
  %0 = load %struct._IO_FILE** %handle, align 8, !dbg !1678, !tbaa !615
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %0}, i64 0, metadata !485), !dbg !1678
  %cmp = icmp eq i8* %b, null, !dbg !1679
  br i1 %cmp, label %if.end9, label %if.end, !dbg !1679

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds i8* %b, i64 5012, !dbg !1680
  %2 = load i8* %1, align 1, !dbg !1680, !tbaa !616
  %tobool = icmp eq i8 %2, 0, !dbg !1680
  br i1 %tobool, label %if.else, label %if.then1, !dbg !1680

if.then1:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32* %bzerr}, i64 0, metadata !1681) #9, !dbg !1684
  call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !1685) #9, !dbg !1686
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !1687) #9, !dbg !1688
  call void @llvm.dbg.value(metadata !1689, i64 0, metadata !1690) #9, !dbg !1691
  call void @llvm.dbg.value(metadata !1689, i64 0, metadata !1692) #9, !dbg !1693
  call void @BZ2_bzWriteClose64(i32* %bzerr, i8* %b, i32 0, i32* null, i32* null, i32* null, i32* null) #12, !dbg !1694
  call void @llvm.dbg.value(metadata !{i32* %bzerr}, i64 0, metadata !484), !dbg !1695
  %3 = load i32* %bzerr, align 4, !dbg !1695, !tbaa !651
  %cmp2 = icmp eq i32 %3, 0, !dbg !1695
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !1695

if.then3:                                         ; preds = %if.then1
  call void @llvm.dbg.value(metadata !1689, i64 0, metadata !1696) #9, !dbg !1699
  call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !1700) #9, !dbg !1701
  call void @llvm.dbg.value(metadata !1623, i64 0, metadata !1702) #9, !dbg !1703
  call void @llvm.dbg.value(metadata !1689, i64 0, metadata !1704) #9, !dbg !1705
  call void @llvm.dbg.value(metadata !1689, i64 0, metadata !1706) #9, !dbg !1707
  call void @BZ2_bzWriteClose64(i32* null, i8* %b, i32 1, i32* null, i32* null, i32* null, i32* null) #12, !dbg !1708
  br label %if.end5, !dbg !1709

if.else:                                          ; preds = %if.end
  call void @BZ2_bzReadClose(i32* %bzerr, i8* %b) #14, !dbg !1710
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %if.then3, %if.else
  %4 = load %struct._IO_FILE** @stdin, align 8, !dbg !1712, !tbaa !615
  %cmp6 = icmp eq %struct._IO_FILE* %0, %4, !dbg !1712
  %5 = load %struct._IO_FILE** @stdout, align 8, !dbg !1712, !tbaa !615
  %cmp7 = icmp eq %struct._IO_FILE* %0, %5, !dbg !1712
  %or.cond = or i1 %cmp6, %cmp7, !dbg !1712
  br i1 %or.cond, label %if.end9, label %if.then8, !dbg !1712

if.then8:                                         ; preds = %if.end5
  %call = call i32 @fclose(%struct._IO_FILE* %0) #12, !dbg !1713
  br label %if.end9, !dbg !1715

if.end9:                                          ; preds = %if.end5, %entry, %if.then8
  ret void, !dbg !1716
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i8* @BZ2_bzerror(i8* nocapture %b, i32* nocapture %errnum) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %b}, i64 0, metadata !490), !dbg !1717
  tail call void @llvm.dbg.value(metadata !{i32* %errnum}, i64 0, metadata !491), !dbg !1717
  %lastErr = getelementptr inbounds i8* %b, i64 5096, !dbg !1718
  %0 = bitcast i8* %lastErr to i32*, !dbg !1718
  %1 = load i32* %0, align 4, !dbg !1718, !tbaa !651
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !492), !dbg !1718
  %cmp = icmp sgt i32 %1, 0, !dbg !1719
  %. = select i1 %cmp, i32 0, i32 %1, !dbg !1719
  tail call void @llvm.dbg.value(metadata !{i32 %.}, i64 0, metadata !492), !dbg !1719
  store i32 %., i32* %errnum, align 4, !dbg !1720, !tbaa !651
  %mul = sub i32 0, %., !dbg !1721
  %idxprom = sext i32 %mul to i64, !dbg !1721
  %arrayidx = getelementptr inbounds [16 x i8*]* @bzerrorstrings, i64 0, i64 %idxprom, !dbg !1721
  %2 = load i8** %arrayidx, align 8, !dbg !1721, !tbaa !615
  ret i8* %2, !dbg !1721
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #9

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #10

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @BZ2_compressBlock(%struct.EState*, i8 zeroext) #7

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @add_pair_to_block(%struct.EState* nocapture %s) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.EState* %s}, i64 0, metadata !565), !dbg !1722
  %state_in_ch = getelementptr inbounds %struct.EState* %s, i64 0, i32 13, !dbg !1723
  %0 = load i32* %state_in_ch, align 4, !dbg !1723, !tbaa !651
  %conv = trunc i32 %0 to i8, !dbg !1723
  tail call void @llvm.dbg.value(metadata !{i8 %conv}, i64 0, metadata !567), !dbg !1723
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !566), !dbg !1724
  %state_in_len = getelementptr inbounds %struct.EState* %s, i64 0, i32 14, !dbg !1724
  %1 = load i32* %state_in_len, align 4, !dbg !1724, !tbaa !651
  %cmp136 = icmp sgt i32 %1, 0, !dbg !1724
  br i1 %cmp136, label %for.body.lr.ph, label %for.end, !dbg !1724

for.body.lr.ph:                                   ; preds = %entry
  %blockCRC = getelementptr inbounds %struct.EState* %s, i64 0, i32 26, !dbg !1726
  %conv3 = and i32 %0, 255, !dbg !1726
  %.pre = load i32* %blockCRC, align 4, !dbg !1726, !tbaa !651
  br label %for.body, !dbg !1724

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %2 = phi i32 [ %.pre, %for.body.lr.ph ], [ %xor4, %for.body ], !dbg !1726
  %i.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %shl = shl i32 %2, 8, !dbg !1726
  %shr = lshr i32 %2, 24, !dbg !1726
  %xor = xor i32 %shr, %conv3, !dbg !1726
  %idxprom = zext i32 %xor to i64, !dbg !1726
  %arrayidx = getelementptr inbounds [256 x i32]* @BZ2_crc32Table, i64 0, i64 %idxprom, !dbg !1726
  %3 = load i32* %arrayidx, align 4, !dbg !1726, !tbaa !651
  %xor4 = xor i32 %shl, %3, !dbg !1726
  store i32 %xor4, i32* %blockCRC, align 4, !dbg !1726, !tbaa !651
  %inc = add nsw i32 %i.0137, 1, !dbg !1724
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !566), !dbg !1724
  %cmp = icmp slt i32 %inc, %1, !dbg !1724
  br i1 %cmp, label %for.body, label %for.end, !dbg !1724

for.end:                                          ; preds = %for.body, %entry
  %idxprom7 = zext i32 %0 to i64, !dbg !1729
  %arrayidx8 = getelementptr inbounds %struct.EState* %s, i64 0, i32 22, i64 %idxprom7, !dbg !1729
  store i8 1, i8* %arrayidx8, align 1, !dbg !1729, !tbaa !616
  %4 = load i32* %state_in_len, align 4, !dbg !1730, !tbaa !651
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 3, label %sw.bb27
  ], !dbg !1730

sw.bb:                                            ; preds = %for.end
  %nblock = getelementptr inbounds %struct.EState* %s, i64 0, i32 17, !dbg !1731
  %5 = load i32* %nblock, align 4, !dbg !1731, !tbaa !651
  %idxprom10 = sext i32 %5 to i64, !dbg !1731
  %block = getelementptr inbounds %struct.EState* %s, i64 0, i32 9, !dbg !1731
  %6 = load i8** %block, align 8, !dbg !1731, !tbaa !615
  %arrayidx11 = getelementptr inbounds i8* %6, i64 %idxprom10, !dbg !1731
  store i8 %conv, i8* %arrayidx11, align 1, !dbg !1731, !tbaa !616
  %7 = load i32* %nblock, align 4, !dbg !1731, !tbaa !651
  %inc13 = add nsw i32 %7, 1, !dbg !1731
  store i32 %inc13, i32* %nblock, align 4, !dbg !1731, !tbaa !651
  br label %sw.epilog, !dbg !1733

sw.bb14:                                          ; preds = %for.end
  %nblock15 = getelementptr inbounds %struct.EState* %s, i64 0, i32 17, !dbg !1734
  %8 = load i32* %nblock15, align 4, !dbg !1734, !tbaa !651
  %idxprom16 = sext i32 %8 to i64, !dbg !1734
  %block17 = getelementptr inbounds %struct.EState* %s, i64 0, i32 9, !dbg !1734
  %9 = load i8** %block17, align 8, !dbg !1734, !tbaa !615
  %arrayidx18 = getelementptr inbounds i8* %9, i64 %idxprom16, !dbg !1734
  store i8 %conv, i8* %arrayidx18, align 1, !dbg !1734, !tbaa !616
  %10 = load i32* %nblock15, align 4, !dbg !1734, !tbaa !651
  %inc20 = add nsw i32 %10, 1, !dbg !1734
  store i32 %inc20, i32* %nblock15, align 4, !dbg !1734, !tbaa !651
  %idxprom22 = sext i32 %inc20 to i64, !dbg !1735
  %11 = load i8** %block17, align 8, !dbg !1735, !tbaa !615
  %arrayidx24 = getelementptr inbounds i8* %11, i64 %idxprom22, !dbg !1735
  store i8 %conv, i8* %arrayidx24, align 1, !dbg !1735, !tbaa !616
  %12 = load i32* %nblock15, align 4, !dbg !1735, !tbaa !651
  %inc26 = add nsw i32 %12, 1, !dbg !1735
  store i32 %inc26, i32* %nblock15, align 4, !dbg !1735, !tbaa !651
  br label %sw.epilog, !dbg !1736

sw.bb27:                                          ; preds = %for.end
  %nblock28 = getelementptr inbounds %struct.EState* %s, i64 0, i32 17, !dbg !1737
  %13 = load i32* %nblock28, align 4, !dbg !1737, !tbaa !651
  %idxprom29 = sext i32 %13 to i64, !dbg !1737
  %block30 = getelementptr inbounds %struct.EState* %s, i64 0, i32 9, !dbg !1737
  %14 = load i8** %block30, align 8, !dbg !1737, !tbaa !615
  %arrayidx31 = getelementptr inbounds i8* %14, i64 %idxprom29, !dbg !1737
  store i8 %conv, i8* %arrayidx31, align 1, !dbg !1737, !tbaa !616
  %15 = load i32* %nblock28, align 4, !dbg !1737, !tbaa !651
  %inc33 = add nsw i32 %15, 1, !dbg !1737
  store i32 %inc33, i32* %nblock28, align 4, !dbg !1737, !tbaa !651
  %idxprom35 = sext i32 %inc33 to i64, !dbg !1738
  %16 = load i8** %block30, align 8, !dbg !1738, !tbaa !615
  %arrayidx37 = getelementptr inbounds i8* %16, i64 %idxprom35, !dbg !1738
  store i8 %conv, i8* %arrayidx37, align 1, !dbg !1738, !tbaa !616
  %17 = load i32* %nblock28, align 4, !dbg !1738, !tbaa !651
  %inc39 = add nsw i32 %17, 1, !dbg !1738
  store i32 %inc39, i32* %nblock28, align 4, !dbg !1738, !tbaa !651
  %idxprom41 = sext i32 %inc39 to i64, !dbg !1739
  %18 = load i8** %block30, align 8, !dbg !1739, !tbaa !615
  %arrayidx43 = getelementptr inbounds i8* %18, i64 %idxprom41, !dbg !1739
  store i8 %conv, i8* %arrayidx43, align 1, !dbg !1739, !tbaa !616
  %19 = load i32* %nblock28, align 4, !dbg !1739, !tbaa !651
  %inc45 = add nsw i32 %19, 1, !dbg !1739
  store i32 %inc45, i32* %nblock28, align 4, !dbg !1739, !tbaa !651
  br label %sw.epilog, !dbg !1740

sw.default:                                       ; preds = %for.end
  %sub = add nsw i32 %4, -4, !dbg !1741
  %idxprom47 = sext i32 %sub to i64, !dbg !1741
  %arrayidx49 = getelementptr inbounds %struct.EState* %s, i64 0, i32 22, i64 %idxprom47, !dbg !1741
  store i8 1, i8* %arrayidx49, align 1, !dbg !1741, !tbaa !616
  %nblock50 = getelementptr inbounds %struct.EState* %s, i64 0, i32 17, !dbg !1742
  %20 = load i32* %nblock50, align 4, !dbg !1742, !tbaa !651
  %idxprom51 = sext i32 %20 to i64, !dbg !1742
  %block52 = getelementptr inbounds %struct.EState* %s, i64 0, i32 9, !dbg !1742
  %21 = load i8** %block52, align 8, !dbg !1742, !tbaa !615
  %arrayidx53 = getelementptr inbounds i8* %21, i64 %idxprom51, !dbg !1742
  store i8 %conv, i8* %arrayidx53, align 1, !dbg !1742, !tbaa !616
  %22 = load i32* %nblock50, align 4, !dbg !1742, !tbaa !651
  %inc55 = add nsw i32 %22, 1, !dbg !1742
  store i32 %inc55, i32* %nblock50, align 4, !dbg !1742, !tbaa !651
  %idxprom57 = sext i32 %inc55 to i64, !dbg !1743
  %23 = load i8** %block52, align 8, !dbg !1743, !tbaa !615
  %arrayidx59 = getelementptr inbounds i8* %23, i64 %idxprom57, !dbg !1743
  store i8 %conv, i8* %arrayidx59, align 1, !dbg !1743, !tbaa !616
  %24 = load i32* %nblock50, align 4, !dbg !1743, !tbaa !651
  %inc61 = add nsw i32 %24, 1, !dbg !1743
  store i32 %inc61, i32* %nblock50, align 4, !dbg !1743, !tbaa !651
  %idxprom63 = sext i32 %inc61 to i64, !dbg !1744
  %25 = load i8** %block52, align 8, !dbg !1744, !tbaa !615
  %arrayidx65 = getelementptr inbounds i8* %25, i64 %idxprom63, !dbg !1744
  store i8 %conv, i8* %arrayidx65, align 1, !dbg !1744, !tbaa !616
  %26 = load i32* %nblock50, align 4, !dbg !1744, !tbaa !651
  %inc67 = add nsw i32 %26, 1, !dbg !1744
  store i32 %inc67, i32* %nblock50, align 4, !dbg !1744, !tbaa !651
  %idxprom69 = sext i32 %inc67 to i64, !dbg !1745
  %27 = load i8** %block52, align 8, !dbg !1745, !tbaa !615
  %arrayidx71 = getelementptr inbounds i8* %27, i64 %idxprom69, !dbg !1745
  store i8 %conv, i8* %arrayidx71, align 1, !dbg !1745, !tbaa !616
  %28 = load i32* %nblock50, align 4, !dbg !1745, !tbaa !651
  %inc73 = add nsw i32 %28, 1, !dbg !1745
  store i32 %inc73, i32* %nblock50, align 4, !dbg !1745, !tbaa !651
  %29 = load i32* %state_in_len, align 4, !dbg !1746, !tbaa !651
  %sub75 = add nsw i32 %29, 252, !dbg !1746
  %conv76 = trunc i32 %sub75 to i8, !dbg !1746
  %idxprom78 = sext i32 %inc73 to i64, !dbg !1746
  %30 = load i8** %block52, align 8, !dbg !1746, !tbaa !615
  %arrayidx80 = getelementptr inbounds i8* %30, i64 %idxprom78, !dbg !1746
  store i8 %conv76, i8* %arrayidx80, align 1, !dbg !1746, !tbaa !616
  %31 = load i32* %nblock50, align 4, !dbg !1747, !tbaa !651
  %inc82 = add nsw i32 %31, 1, !dbg !1747
  store i32 %inc82, i32* %nblock50, align 4, !dbg !1747, !tbaa !651
  br label %sw.epilog, !dbg !1748

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb14, %sw.bb
  ret void, !dbg !1749
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #9

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #11

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind optsize }
attributes #13 = { noreturn nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !610, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !27, metadata !135, metadata !143, metadata !149, metadata !239, metadata !248, metadata !256, metadata !260, metadata !340, metadata !352, metadata !362, metadata !377, metadata !389, metadata !396, metadata !407, metadata !417, metadata !430, metadata !442, metadata !447, metadata !453, metadata !459, metadata !468, metadata !474, metadata !479, metadata !486, metadata !493, metadata !516, metadata !522, metadata !541, metadata !545, metadata !550, metadata !558, metadata !563, metadata !568, metadata !584, metadata !588, metadata !592, metadata !595, metadata !599, metadata !607}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bz__AssertH__fail", metadata !"BZ2_bz__AssertH__fail", metadata !"", i32 87, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @BZ2_bz__AssertH__fail, null, null, metadata !25, i32 88} ; [ DW_TAG_subprogram ] [line 87] [def] [scope 88] [BZ2_bz__AssertH__fail]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !24}
!24 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786689, metadata !20, metadata !"errcode", metadata !21, i32 16777303, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [errcode] [line 87]
!27 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzCompressInit", metadata !"BZ2_bzCompressInit", metadata !"", i32 205, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.bz_stream*, i32, i32, i32)* @BZ2_bzCompressInit, null, null, metadata !57, i32 210} ; [ DW_TAG_subprogram ] [line 205] [def] [scope 210] [BZ2_bzCompressInit]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !24, metadata !30, metadata !24, metadata !24, metadata !24}
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from bz_stream]
!31 = metadata !{i32 786454, metadata !1, null, metadata !"bz_stream", i32 221, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [bz_stream] [line 221, size 0, align 0, offset 0] [from ]
!32 = metadata !{i32 786451, metadata !33, null, metadata !"", i32 204, i64 640, i64 64, i32 0, i32 0, null, metadata !34, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 204, size 640, align 64, offset 0] [from ]
!33 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!34 = metadata !{metadata !35, metadata !38, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !48, metadata !52, metadata !56}
!35 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"next_in", i32 205, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [next_in] [line 205, size 64, align 64, offset 0] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!37 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!38 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"avail_in", i32 206, i64 32, i64 32, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ] [avail_in] [line 206, size 32, align 32, offset 64] [from unsigned int]
!39 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!40 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"total_in_lo32", i32 207, i64 32, i64 32, i64 96, i32 0, metadata !39} ; [ DW_TAG_member ] [total_in_lo32] [line 207, size 32, align 32, offset 96] [from unsigned int]
!41 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"total_in_hi32", i32 208, i64 32, i64 32, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [total_in_hi32] [line 208, size 32, align 32, offset 128] [from unsigned int]
!42 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"next_out", i32 210, i64 64, i64 64, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [next_out] [line 210, size 64, align 64, offset 192] [from ]
!43 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"avail_out", i32 211, i64 32, i64 32, i64 256, i32 0, metadata !39} ; [ DW_TAG_member ] [avail_out] [line 211, size 32, align 32, offset 256] [from unsigned int]
!44 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"total_out_lo32", i32 212, i64 32, i64 32, i64 288, i32 0, metadata !39} ; [ DW_TAG_member ] [total_out_lo32] [line 212, size 32, align 32, offset 288] [from unsigned int]
!45 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"total_out_hi32", i32 213, i64 32, i64 32, i64 320, i32 0, metadata !39} ; [ DW_TAG_member ] [total_out_hi32] [line 213, size 32, align 32, offset 320] [from unsigned int]
!46 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"state", i32 215, i64 64, i64 64, i64 384, i32 0, metadata !47} ; [ DW_TAG_member ] [state] [line 215, size 64, align 64, offset 384] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!48 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"bzalloc", i32 217, i64 64, i64 64, i64 448, i32 0, metadata !49} ; [ DW_TAG_member ] [bzalloc] [line 217, size 64, align 64, offset 448] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!50 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{metadata !47, metadata !47, metadata !24, metadata !24}
!52 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"bzfree", i32 218, i64 64, i64 64, i64 512, i32 0, metadata !53} ; [ DW_TAG_member ] [bzfree] [line 218, size 64, align 64, offset 512] [from ]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!54 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{null, metadata !47, metadata !47}
!56 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"opaque", i32 219, i64 64, i64 64, i64 576, i32 0, metadata !47} ; [ DW_TAG_member ] [opaque] [line 219, size 64, align 64, offset 576] [from ]
!57 = metadata !{metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !64}
!58 = metadata !{i32 786689, metadata !27, metadata !"strm", metadata !21, i32 16777422, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [strm] [line 206]
!59 = metadata !{i32 786689, metadata !27, metadata !"blockSize100k", metadata !21, i32 33554639, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [blockSize100k] [line 207]
!60 = metadata !{i32 786689, metadata !27, metadata !"verbosity", metadata !21, i32 50331856, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [verbosity] [line 208]
!61 = metadata !{i32 786689, metadata !27, metadata !"workFactor", metadata !21, i32 67109073, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [workFactor] [line 209]
!62 = metadata !{i32 786688, metadata !27, metadata !"n", metadata !21, i32 211, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 211]
!63 = metadata !{i32 786454, metadata !1, null, metadata !"Int32", i32 84, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ] [Int32] [line 84, size 0, align 0, offset 0] [from int]
!64 = metadata !{i32 786688, metadata !27, metadata !"s", metadata !21, i32 212, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 212]
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EState]
!66 = metadata !{i32 786454, metadata !1, null, metadata !"EState", i32 300, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [EState] [line 300, size 0, align 0, offset 0] [from ]
!67 = metadata !{i32 786451, metadata !68, null, metadata !"", i32 231, i64 446144, i64 64, i32 0, i32 0, null, metadata !69, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 446144, align 64, offset 0] [from ]
!68 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib_private.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73, metadata !75, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !85, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !105, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !119, metadata !123, metadata !124, metadata !128, metadata !130, metadata !131}
!70 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"strm", i32 233, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [strm] [line 233, size 64, align 64, offset 0] [from ]
!71 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"mode", i32 237, i64 32, i64 32, i64 64, i32 0, metadata !63} ; [ DW_TAG_member ] [mode] [line 237, size 32, align 32, offset 64] [from Int32]
!72 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"state", i32 238, i64 32, i64 32, i64 96, i32 0, metadata !63} ; [ DW_TAG_member ] [state] [line 238, size 32, align 32, offset 96] [from Int32]
!73 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"avail_in_expect", i32 241, i64 32, i64 32, i64 128, i32 0, metadata !74} ; [ DW_TAG_member ] [avail_in_expect] [line 241, size 32, align 32, offset 128] [from UInt32]
!74 = metadata !{i32 786454, metadata !68, null, metadata !"UInt32", i32 85, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [UInt32] [line 85, size 0, align 0, offset 0] [from unsigned int]
!75 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"arr1", i32 244, i64 64, i64 64, i64 192, i32 0, metadata !76} ; [ DW_TAG_member ] [arr1] [line 244, size 64, align 64, offset 192] [from ]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from UInt32]
!77 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"arr2", i32 245, i64 64, i64 64, i64 256, i32 0, metadata !76} ; [ DW_TAG_member ] [arr2] [line 245, size 64, align 64, offset 256] [from ]
!78 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"ftab", i32 246, i64 64, i64 64, i64 320, i32 0, metadata !76} ; [ DW_TAG_member ] [ftab] [line 246, size 64, align 64, offset 320] [from ]
!79 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"origPtr", i32 247, i64 32, i64 32, i64 384, i32 0, metadata !63} ; [ DW_TAG_member ] [origPtr] [line 247, size 32, align 32, offset 384] [from Int32]
!80 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"ptr", i32 250, i64 64, i64 64, i64 448, i32 0, metadata !76} ; [ DW_TAG_member ] [ptr] [line 250, size 64, align 64, offset 448] [from ]
!81 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"block", i32 251, i64 64, i64 64, i64 512, i32 0, metadata !82} ; [ DW_TAG_member ] [block] [line 251, size 64, align 64, offset 512] [from ]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from UChar]
!83 = metadata !{i32 786454, metadata !68, null, metadata !"UChar", i32 83, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [UChar] [line 83, size 0, align 0, offset 0] [from unsigned char]
!84 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!85 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"mtfv", i32 252, i64 64, i64 64, i64 576, i32 0, metadata !86} ; [ DW_TAG_member ] [mtfv] [line 252, size 64, align 64, offset 576] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from UInt16]
!87 = metadata !{i32 786454, metadata !68, null, metadata !"UInt16", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [UInt16] [line 87, size 0, align 0, offset 0] [from unsigned short]
!88 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!89 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"zbits", i32 253, i64 64, i64 64, i64 640, i32 0, metadata !82} ; [ DW_TAG_member ] [zbits] [line 253, size 64, align 64, offset 640] [from ]
!90 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"workFactor", i32 256, i64 32, i64 32, i64 704, i32 0, metadata !63} ; [ DW_TAG_member ] [workFactor] [line 256, size 32, align 32, offset 704] [from Int32]
!91 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"state_in_ch", i32 259, i64 32, i64 32, i64 736, i32 0, metadata !74} ; [ DW_TAG_member ] [state_in_ch] [line 259, size 32, align 32, offset 736] [from UInt32]
!92 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"state_in_len", i32 260, i64 32, i64 32, i64 768, i32 0, metadata !63} ; [ DW_TAG_member ] [state_in_len] [line 260, size 32, align 32, offset 768] [from Int32]
!93 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"rNToGo", i32 261, i64 32, i64 32, i64 800, i32 0, metadata !63} ; [ DW_TAG_member ] [rNToGo] [line 261, size 32, align 32, offset 800] [from Int32]
!94 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"rTPos", i32 261, i64 32, i64 32, i64 832, i32 0, metadata !63} ; [ DW_TAG_member ] [rTPos] [line 261, size 32, align 32, offset 832] [from Int32]
!95 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"nblock", i32 264, i64 32, i64 32, i64 864, i32 0, metadata !63} ; [ DW_TAG_member ] [nblock] [line 264, size 32, align 32, offset 864] [from Int32]
!96 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"nblockMAX", i32 265, i64 32, i64 32, i64 896, i32 0, metadata !63} ; [ DW_TAG_member ] [nblockMAX] [line 265, size 32, align 32, offset 896] [from Int32]
!97 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"numZ", i32 266, i64 32, i64 32, i64 928, i32 0, metadata !63} ; [ DW_TAG_member ] [numZ] [line 266, size 32, align 32, offset 928] [from Int32]
!98 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"state_out_pos", i32 267, i64 32, i64 32, i64 960, i32 0, metadata !63} ; [ DW_TAG_member ] [state_out_pos] [line 267, size 32, align 32, offset 960] [from Int32]
!99 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"nInUse", i32 270, i64 32, i64 32, i64 992, i32 0, metadata !63} ; [ DW_TAG_member ] [nInUse] [line 270, size 32, align 32, offset 992] [from Int32]
!100 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"inUse", i32 271, i64 2048, i64 8, i64 1024, i32 0, metadata !101} ; [ DW_TAG_member ] [inUse] [line 271, size 2048, align 8, offset 1024] [from ]
!101 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !102, metadata !103, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from Bool]
!102 = metadata !{i32 786454, metadata !68, null, metadata !"Bool", i32 82, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [Bool] [line 82, size 0, align 0, offset 0] [from unsigned char]
!103 = metadata !{metadata !104}
!104 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!105 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"unseqToSeq", i32 272, i64 2048, i64 8, i64 3072, i32 0, metadata !106} ; [ DW_TAG_member ] [unseqToSeq] [line 272, size 2048, align 8, offset 3072] [from ]
!106 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !83, metadata !103, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from UChar]
!107 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"bsBuff", i32 275, i64 32, i64 32, i64 5120, i32 0, metadata !74} ; [ DW_TAG_member ] [bsBuff] [line 275, size 32, align 32, offset 5120] [from UInt32]
!108 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"bsLive", i32 276, i64 32, i64 32, i64 5152, i32 0, metadata !63} ; [ DW_TAG_member ] [bsLive] [line 276, size 32, align 32, offset 5152] [from Int32]
!109 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"blockCRC", i32 279, i64 32, i64 32, i64 5184, i32 0, metadata !74} ; [ DW_TAG_member ] [blockCRC] [line 279, size 32, align 32, offset 5184] [from UInt32]
!110 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"combinedCRC", i32 280, i64 32, i64 32, i64 5216, i32 0, metadata !74} ; [ DW_TAG_member ] [combinedCRC] [line 280, size 32, align 32, offset 5216] [from UInt32]
!111 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"verbosity", i32 283, i64 32, i64 32, i64 5248, i32 0, metadata !63} ; [ DW_TAG_member ] [verbosity] [line 283, size 32, align 32, offset 5248] [from Int32]
!112 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"blockNo", i32 284, i64 32, i64 32, i64 5280, i32 0, metadata !63} ; [ DW_TAG_member ] [blockNo] [line 284, size 32, align 32, offset 5280] [from Int32]
!113 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"blockSize100k", i32 285, i64 32, i64 32, i64 5312, i32 0, metadata !63} ; [ DW_TAG_member ] [blockSize100k] [line 285, size 32, align 32, offset 5312] [from Int32]
!114 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"nMTF", i32 288, i64 32, i64 32, i64 5344, i32 0, metadata !63} ; [ DW_TAG_member ] [nMTF] [line 288, size 32, align 32, offset 5344] [from Int32]
!115 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"mtfFreq", i32 289, i64 8256, i64 32, i64 5376, i32 0, metadata !116} ; [ DW_TAG_member ] [mtfFreq] [line 289, size 8256, align 32, offset 5376] [from ]
!116 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8256, i64 32, i32 0, i32 0, metadata !63, metadata !117, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8256, align 32, offset 0] [from Int32]
!117 = metadata !{metadata !118}
!118 = metadata !{i32 786465, i64 0, i64 258}     ; [ DW_TAG_subrange_type ] [0, 257]
!119 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"selector", i32 290, i64 144016, i64 8, i64 13632, i32 0, metadata !120} ; [ DW_TAG_member ] [selector] [line 290, size 144016, align 8, offset 13632] [from ]
!120 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 144016, i64 8, i32 0, i32 0, metadata !83, metadata !121, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 144016, align 8, offset 0] [from UChar]
!121 = metadata !{metadata !122}
!122 = metadata !{i32 786465, i64 0, i64 18002}   ; [ DW_TAG_subrange_type ] [0, 18001]
!123 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"selectorMtf", i32 291, i64 144016, i64 8, i64 157648, i32 0, metadata !120} ; [ DW_TAG_member ] [selectorMtf] [line 291, size 144016, align 8, offset 157648] [from ]
!124 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"len", i32 293, i64 12384, i64 8, i64 301664, i32 0, metadata !125} ; [ DW_TAG_member ] [len] [line 293, size 12384, align 8, offset 301664] [from ]
!125 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 12384, i64 8, i32 0, i32 0, metadata !83, metadata !126, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 12384, align 8, offset 0] [from UChar]
!126 = metadata !{metadata !127, metadata !118}
!127 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!128 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"code", i32 294, i64 49536, i64 32, i64 314048, i32 0, metadata !129} ; [ DW_TAG_member ] [code] [line 294, size 49536, align 32, offset 314048] [from ]
!129 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 49536, i64 32, i32 0, i32 0, metadata !63, metadata !126, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 49536, align 32, offset 0] [from Int32]
!130 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"rfreq", i32 295, i64 49536, i64 32, i64 363584, i32 0, metadata !129} ; [ DW_TAG_member ] [rfreq] [line 295, size 49536, align 32, offset 363584] [from ]
!131 = metadata !{i32 786445, metadata !68, metadata !67, metadata !"len_pack", i32 297, i64 33024, i64 32, i64 413120, i32 0, metadata !132} ; [ DW_TAG_member ] [len_pack] [line 297, size 33024, align 32, offset 413120] [from ]
!132 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 33024, i64 32, i32 0, i32 0, metadata !74, metadata !133, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 33024, align 32, offset 0] [from UInt32]
!133 = metadata !{metadata !118, metadata !134}
!134 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!135 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzCompress", metadata !"BZ2_bzCompress", metadata !"", i32 464, metadata !136, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.bz_stream*, i32)* @BZ2_bzCompress, null, null, metadata !138, i32 465} ; [ DW_TAG_subprogram ] [line 464] [def] [scope 465] [BZ2_bzCompress]
!136 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!137 = metadata !{metadata !24, metadata !30, metadata !24}
!138 = metadata !{metadata !139, metadata !140, metadata !141, metadata !142}
!139 = metadata !{i32 786689, metadata !135, metadata !"strm", metadata !21, i32 16777680, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [strm] [line 464]
!140 = metadata !{i32 786689, metadata !135, metadata !"action", metadata !21, i32 33554896, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [action] [line 464]
!141 = metadata !{i32 786688, metadata !135, metadata !"progress", metadata !21, i32 466, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [progress] [line 466]
!142 = metadata !{i32 786688, metadata !135, metadata !"s", metadata !21, i32 467, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 467]
!143 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzCompressEnd", metadata !"BZ2_bzCompressEnd", metadata !"", i32 525, metadata !144, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.bz_stream*)* @BZ2_bzCompressEnd, null, null, metadata !146, i32 526} ; [ DW_TAG_subprogram ] [line 525] [def] [scope 526] [BZ2_bzCompressEnd]
!144 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!145 = metadata !{metadata !24, metadata !30}
!146 = metadata !{metadata !147, metadata !148}
!147 = metadata !{i32 786689, metadata !143, metadata !"strm", metadata !21, i32 16777741, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [strm] [line 525]
!148 = metadata !{i32 786688, metadata !143, metadata !"s", metadata !21, i32 527, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 527]
!149 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzDecompressInit", metadata !"BZ2_bzDecompressInit", metadata !"", i32 549, metadata !150, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.bz_stream*, i32, i32)* @BZ2_bzDecompressInit, null, null, metadata !152, i32 553} ; [ DW_TAG_subprogram ] [line 549] [def] [scope 553] [BZ2_bzDecompressInit]
!150 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!151 = metadata !{metadata !24, metadata !30, metadata !24, metadata !24}
!152 = metadata !{metadata !153, metadata !154, metadata !155, metadata !156}
!153 = metadata !{i32 786689, metadata !149, metadata !"strm", metadata !21, i32 16777766, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [strm] [line 550]
!154 = metadata !{i32 786689, metadata !149, metadata !"verbosity", metadata !21, i32 33554983, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [verbosity] [line 551]
!155 = metadata !{i32 786689, metadata !149, metadata !"small", metadata !21, i32 50332200, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [small] [line 552]
!156 = metadata !{i32 786688, metadata !149, metadata !"s", metadata !21, i32 554, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 554]
!157 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !158} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DState]
!158 = metadata !{i32 786454, metadata !1, null, metadata !"DState", i32 472, i64 0, i64 0, i64 0, i32 0, metadata !159} ; [ DW_TAG_typedef ] [DState] [line 472, size 0, align 0, offset 0] [from ]
!159 = metadata !{i32 786451, metadata !68, null, metadata !"", i32 382, i64 513152, i64 64, i32 0, i32 0, null, metadata !160, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 382, size 513152, align 64, offset 0] [from ]
!160 = metadata !{metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !179, metadata !180, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !198, metadata !199, metadata !203, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !237, metadata !238}
!161 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"strm", i32 384, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [strm] [line 384, size 64, align 64, offset 0] [from ]
!162 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"state", i32 387, i64 32, i64 32, i64 64, i32 0, metadata !63} ; [ DW_TAG_member ] [state] [line 387, size 32, align 32, offset 64] [from Int32]
!163 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"state_out_ch", i32 390, i64 8, i64 8, i64 96, i32 0, metadata !83} ; [ DW_TAG_member ] [state_out_ch] [line 390, size 8, align 8, offset 96] [from UChar]
!164 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"state_out_len", i32 391, i64 32, i64 32, i64 128, i32 0, metadata !63} ; [ DW_TAG_member ] [state_out_len] [line 391, size 32, align 32, offset 128] [from Int32]
!165 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"blockRandomised", i32 392, i64 8, i64 8, i64 160, i32 0, metadata !102} ; [ DW_TAG_member ] [blockRandomised] [line 392, size 8, align 8, offset 160] [from Bool]
!166 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"rNToGo", i32 393, i64 32, i64 32, i64 192, i32 0, metadata !63} ; [ DW_TAG_member ] [rNToGo] [line 393, size 32, align 32, offset 192] [from Int32]
!167 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"rTPos", i32 393, i64 32, i64 32, i64 224, i32 0, metadata !63} ; [ DW_TAG_member ] [rTPos] [line 393, size 32, align 32, offset 224] [from Int32]
!168 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"bsBuff", i32 396, i64 32, i64 32, i64 256, i32 0, metadata !74} ; [ DW_TAG_member ] [bsBuff] [line 396, size 32, align 32, offset 256] [from UInt32]
!169 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"bsLive", i32 397, i64 32, i64 32, i64 288, i32 0, metadata !63} ; [ DW_TAG_member ] [bsLive] [line 397, size 32, align 32, offset 288] [from Int32]
!170 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"blockSize100k", i32 400, i64 32, i64 32, i64 320, i32 0, metadata !63} ; [ DW_TAG_member ] [blockSize100k] [line 400, size 32, align 32, offset 320] [from Int32]
!171 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"smallDecompress", i32 401, i64 8, i64 8, i64 352, i32 0, metadata !102} ; [ DW_TAG_member ] [smallDecompress] [line 401, size 8, align 8, offset 352] [from Bool]
!172 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"currBlockNo", i32 402, i64 32, i64 32, i64 384, i32 0, metadata !63} ; [ DW_TAG_member ] [currBlockNo] [line 402, size 32, align 32, offset 384] [from Int32]
!173 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"verbosity", i32 403, i64 32, i64 32, i64 416, i32 0, metadata !63} ; [ DW_TAG_member ] [verbosity] [line 403, size 32, align 32, offset 416] [from Int32]
!174 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"origPtr", i32 406, i64 32, i64 32, i64 448, i32 0, metadata !63} ; [ DW_TAG_member ] [origPtr] [line 406, size 32, align 32, offset 448] [from Int32]
!175 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"tPos", i32 407, i64 32, i64 32, i64 480, i32 0, metadata !74} ; [ DW_TAG_member ] [tPos] [line 407, size 32, align 32, offset 480] [from UInt32]
!176 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"k0", i32 408, i64 32, i64 32, i64 512, i32 0, metadata !63} ; [ DW_TAG_member ] [k0] [line 408, size 32, align 32, offset 512] [from Int32]
!177 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"unzftab", i32 409, i64 8192, i64 32, i64 544, i32 0, metadata !178} ; [ DW_TAG_member ] [unzftab] [line 409, size 8192, align 32, offset 544] [from ]
!178 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !63, metadata !103, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from Int32]
!179 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"nblock_used", i32 410, i64 32, i64 32, i64 8736, i32 0, metadata !63} ; [ DW_TAG_member ] [nblock_used] [line 410, size 32, align 32, offset 8736] [from Int32]
!180 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"cftab", i32 411, i64 8224, i64 32, i64 8768, i32 0, metadata !181} ; [ DW_TAG_member ] [cftab] [line 411, size 8224, align 32, offset 8768] [from ]
!181 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8224, i64 32, i32 0, i32 0, metadata !63, metadata !182, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8224, align 32, offset 0] [from Int32]
!182 = metadata !{metadata !183}
!183 = metadata !{i32 786465, i64 0, i64 257}     ; [ DW_TAG_subrange_type ] [0, 256]
!184 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"cftabCopy", i32 412, i64 8224, i64 32, i64 16992, i32 0, metadata !181} ; [ DW_TAG_member ] [cftabCopy] [line 412, size 8224, align 32, offset 16992] [from ]
!185 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"tt", i32 415, i64 64, i64 64, i64 25216, i32 0, metadata !76} ; [ DW_TAG_member ] [tt] [line 415, size 64, align 64, offset 25216] [from ]
!186 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"ll16", i32 418, i64 64, i64 64, i64 25280, i32 0, metadata !86} ; [ DW_TAG_member ] [ll16] [line 418, size 64, align 64, offset 25280] [from ]
!187 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"ll4", i32 419, i64 64, i64 64, i64 25344, i32 0, metadata !82} ; [ DW_TAG_member ] [ll4] [line 419, size 64, align 64, offset 25344] [from ]
!188 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"storedBlockCRC", i32 422, i64 32, i64 32, i64 25408, i32 0, metadata !74} ; [ DW_TAG_member ] [storedBlockCRC] [line 422, size 32, align 32, offset 25408] [from UInt32]
!189 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"storedCombinedCRC", i32 423, i64 32, i64 32, i64 25440, i32 0, metadata !74} ; [ DW_TAG_member ] [storedCombinedCRC] [line 423, size 32, align 32, offset 25440] [from UInt32]
!190 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"calculatedBlockCRC", i32 424, i64 32, i64 32, i64 25472, i32 0, metadata !74} ; [ DW_TAG_member ] [calculatedBlockCRC] [line 424, size 32, align 32, offset 25472] [from UInt32]
!191 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"calculatedCombinedCRC", i32 425, i64 32, i64 32, i64 25504, i32 0, metadata !74} ; [ DW_TAG_member ] [calculatedCombinedCRC] [line 425, size 32, align 32, offset 25504] [from UInt32]
!192 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"nInUse", i32 428, i64 32, i64 32, i64 25536, i32 0, metadata !63} ; [ DW_TAG_member ] [nInUse] [line 428, size 32, align 32, offset 25536] [from Int32]
!193 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"inUse", i32 429, i64 2048, i64 8, i64 25568, i32 0, metadata !101} ; [ DW_TAG_member ] [inUse] [line 429, size 2048, align 8, offset 25568] [from ]
!194 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"inUse16", i32 430, i64 128, i64 8, i64 27616, i32 0, metadata !195} ; [ DW_TAG_member ] [inUse16] [line 430, size 128, align 8, offset 27616] [from ]
!195 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 8, i32 0, i32 0, metadata !102, metadata !196, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from Bool]
!196 = metadata !{metadata !197}
!197 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!198 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"seqToUnseq", i32 431, i64 2048, i64 8, i64 27744, i32 0, metadata !106} ; [ DW_TAG_member ] [seqToUnseq] [line 431, size 2048, align 8, offset 27744] [from ]
!199 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"mtfa", i32 434, i64 32768, i64 8, i64 29792, i32 0, metadata !200} ; [ DW_TAG_member ] [mtfa] [line 434, size 32768, align 8, offset 29792] [from ]
!200 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !83, metadata !201, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from UChar]
!201 = metadata !{metadata !202}
!202 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!203 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"mtfbase", i32 435, i64 512, i64 32, i64 62560, i32 0, metadata !204} ; [ DW_TAG_member ] [mtfbase] [line 435, size 512, align 32, offset 62560] [from ]
!204 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !63, metadata !196, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from Int32]
!205 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"selector", i32 436, i64 144016, i64 8, i64 63072, i32 0, metadata !120} ; [ DW_TAG_member ] [selector] [line 436, size 144016, align 8, offset 63072] [from ]
!206 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"selectorMtf", i32 437, i64 144016, i64 8, i64 207088, i32 0, metadata !120} ; [ DW_TAG_member ] [selectorMtf] [line 437, size 144016, align 8, offset 207088] [from ]
!207 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"len", i32 438, i64 12384, i64 8, i64 351104, i32 0, metadata !125} ; [ DW_TAG_member ] [len] [line 438, size 12384, align 8, offset 351104] [from ]
!208 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"limit", i32 440, i64 49536, i64 32, i64 363488, i32 0, metadata !129} ; [ DW_TAG_member ] [limit] [line 440, size 49536, align 32, offset 363488] [from ]
!209 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"base", i32 441, i64 49536, i64 32, i64 413024, i32 0, metadata !129} ; [ DW_TAG_member ] [base] [line 441, size 49536, align 32, offset 413024] [from ]
!210 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"perm", i32 442, i64 49536, i64 32, i64 462560, i32 0, metadata !129} ; [ DW_TAG_member ] [perm] [line 442, size 49536, align 32, offset 462560] [from ]
!211 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"minLens", i32 443, i64 192, i64 32, i64 512096, i32 0, metadata !212} ; [ DW_TAG_member ] [minLens] [line 443, size 192, align 32, offset 512096] [from ]
!212 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !63, metadata !213, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from Int32]
!213 = metadata !{metadata !127}
!214 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_i", i32 446, i64 32, i64 32, i64 512288, i32 0, metadata !63} ; [ DW_TAG_member ] [save_i] [line 446, size 32, align 32, offset 512288] [from Int32]
!215 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_j", i32 447, i64 32, i64 32, i64 512320, i32 0, metadata !63} ; [ DW_TAG_member ] [save_j] [line 447, size 32, align 32, offset 512320] [from Int32]
!216 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_t", i32 448, i64 32, i64 32, i64 512352, i32 0, metadata !63} ; [ DW_TAG_member ] [save_t] [line 448, size 32, align 32, offset 512352] [from Int32]
!217 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_alphaSize", i32 449, i64 32, i64 32, i64 512384, i32 0, metadata !63} ; [ DW_TAG_member ] [save_alphaSize] [line 449, size 32, align 32, offset 512384] [from Int32]
!218 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_nGroups", i32 450, i64 32, i64 32, i64 512416, i32 0, metadata !63} ; [ DW_TAG_member ] [save_nGroups] [line 450, size 32, align 32, offset 512416] [from Int32]
!219 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_nSelectors", i32 451, i64 32, i64 32, i64 512448, i32 0, metadata !63} ; [ DW_TAG_member ] [save_nSelectors] [line 451, size 32, align 32, offset 512448] [from Int32]
!220 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_EOB", i32 452, i64 32, i64 32, i64 512480, i32 0, metadata !63} ; [ DW_TAG_member ] [save_EOB] [line 452, size 32, align 32, offset 512480] [from Int32]
!221 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_groupNo", i32 453, i64 32, i64 32, i64 512512, i32 0, metadata !63} ; [ DW_TAG_member ] [save_groupNo] [line 453, size 32, align 32, offset 512512] [from Int32]
!222 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_groupPos", i32 454, i64 32, i64 32, i64 512544, i32 0, metadata !63} ; [ DW_TAG_member ] [save_groupPos] [line 454, size 32, align 32, offset 512544] [from Int32]
!223 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_nextSym", i32 455, i64 32, i64 32, i64 512576, i32 0, metadata !63} ; [ DW_TAG_member ] [save_nextSym] [line 455, size 32, align 32, offset 512576] [from Int32]
!224 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_nblockMAX", i32 456, i64 32, i64 32, i64 512608, i32 0, metadata !63} ; [ DW_TAG_member ] [save_nblockMAX] [line 456, size 32, align 32, offset 512608] [from Int32]
!225 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_nblock", i32 457, i64 32, i64 32, i64 512640, i32 0, metadata !63} ; [ DW_TAG_member ] [save_nblock] [line 457, size 32, align 32, offset 512640] [from Int32]
!226 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_es", i32 458, i64 32, i64 32, i64 512672, i32 0, metadata !63} ; [ DW_TAG_member ] [save_es] [line 458, size 32, align 32, offset 512672] [from Int32]
!227 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_N", i32 459, i64 32, i64 32, i64 512704, i32 0, metadata !63} ; [ DW_TAG_member ] [save_N] [line 459, size 32, align 32, offset 512704] [from Int32]
!228 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_curr", i32 460, i64 32, i64 32, i64 512736, i32 0, metadata !63} ; [ DW_TAG_member ] [save_curr] [line 460, size 32, align 32, offset 512736] [from Int32]
!229 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_zt", i32 461, i64 32, i64 32, i64 512768, i32 0, metadata !63} ; [ DW_TAG_member ] [save_zt] [line 461, size 32, align 32, offset 512768] [from Int32]
!230 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_zn", i32 462, i64 32, i64 32, i64 512800, i32 0, metadata !63} ; [ DW_TAG_member ] [save_zn] [line 462, size 32, align 32, offset 512800] [from Int32]
!231 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_zvec", i32 463, i64 32, i64 32, i64 512832, i32 0, metadata !63} ; [ DW_TAG_member ] [save_zvec] [line 463, size 32, align 32, offset 512832] [from Int32]
!232 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_zj", i32 464, i64 32, i64 32, i64 512864, i32 0, metadata !63} ; [ DW_TAG_member ] [save_zj] [line 464, size 32, align 32, offset 512864] [from Int32]
!233 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_gSel", i32 465, i64 32, i64 32, i64 512896, i32 0, metadata !63} ; [ DW_TAG_member ] [save_gSel] [line 465, size 32, align 32, offset 512896] [from Int32]
!234 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_gMinlen", i32 466, i64 32, i64 32, i64 512928, i32 0, metadata !63} ; [ DW_TAG_member ] [save_gMinlen] [line 466, size 32, align 32, offset 512928] [from Int32]
!235 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_gLimit", i32 467, i64 64, i64 64, i64 512960, i32 0, metadata !236} ; [ DW_TAG_member ] [save_gLimit] [line 467, size 64, align 64, offset 512960] [from ]
!236 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Int32]
!237 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_gBase", i32 468, i64 64, i64 64, i64 513024, i32 0, metadata !236} ; [ DW_TAG_member ] [save_gBase] [line 468, size 64, align 64, offset 513024] [from ]
!238 = metadata !{i32 786445, metadata !68, metadata !159, metadata !"save_gPerm", i32 469, i64 64, i64 64, i64 513088, i32 0, metadata !236} ; [ DW_TAG_member ] [save_gPerm] [line 469, size 64, align 64, offset 513088] [from ]
!239 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_indexIntoF", metadata !"BZ2_indexIntoF", metadata !"", i32 743, metadata !240, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32*)* @BZ2_indexIntoF, null, null, metadata !242, i32 744} ; [ DW_TAG_subprogram ] [line 743] [def] [scope 744] [BZ2_indexIntoF]
!240 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!241 = metadata !{metadata !63, metadata !63, metadata !236}
!242 = metadata !{metadata !243, metadata !244, metadata !245, metadata !246, metadata !247}
!243 = metadata !{i32 786689, metadata !239, metadata !"indx", metadata !21, i32 16777959, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [indx] [line 743]
!244 = metadata !{i32 786689, metadata !239, metadata !"cftab", metadata !21, i32 33555175, metadata !236, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cftab] [line 743]
!245 = metadata !{i32 786688, metadata !239, metadata !"nb", metadata !21, i32 745, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nb] [line 745]
!246 = metadata !{i32 786688, metadata !239, metadata !"na", metadata !21, i32 745, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [na] [line 745]
!247 = metadata !{i32 786688, metadata !239, metadata !"mid", metadata !21, i32 745, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mid] [line 745]
!248 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzDecompress", metadata !"BZ2_bzDecompress", metadata !"", i32 864, metadata !144, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.bz_stream*)* @BZ2_bzDecompress, null, null, metadata !249, i32 865} ; [ DW_TAG_subprogram ] [line 864] [def] [scope 865] [BZ2_bzDecompress]
!249 = metadata !{metadata !250, metadata !251, metadata !252, metadata !253}
!250 = metadata !{i32 786689, metadata !248, metadata !"strm", metadata !21, i32 16778080, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [strm] [line 864]
!251 = metadata !{i32 786688, metadata !248, metadata !"corrupt", metadata !21, i32 866, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [corrupt] [line 866]
!252 = metadata !{i32 786688, metadata !248, metadata !"s", metadata !21, i32 867, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 867]
!253 = metadata !{i32 786688, metadata !254, metadata !"r", metadata !21, i32 898, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 898]
!254 = metadata !{i32 786443, metadata !1, metadata !255, i32 897, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!255 = metadata !{i32 786443, metadata !1, metadata !248, i32 873, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!256 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzDecompressEnd", metadata !"BZ2_bzDecompressEnd", metadata !"", i32 918, metadata !144, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.bz_stream*)* @BZ2_bzDecompressEnd, null, null, metadata !257, i32 919} ; [ DW_TAG_subprogram ] [line 918] [def] [scope 919] [BZ2_bzDecompressEnd]
!257 = metadata !{metadata !258, metadata !259}
!258 = metadata !{i32 786689, metadata !256, metadata !"strm", metadata !21, i32 16778134, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [strm] [line 918]
!259 = metadata !{i32 786688, metadata !256, metadata !"s", metadata !21, i32 920, metadata !157, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 920]
!260 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzWriteOpen", metadata !"BZ2_bzWriteOpen", metadata !"", i32 980, metadata !261, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32*, %struct._IO_FILE*, i32, i32, i32)* @BZ2_bzWriteOpen, null, null, metadata !317, i32 990} ; [ DW_TAG_subprogram ] [line 980] [def] [scope 990] [BZ2_bzWriteOpen]
!261 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !262, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!262 = metadata !{metadata !47, metadata !263, metadata !264, metadata !24, metadata !24, metadata !24}
!263 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!264 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !265} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!265 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !266} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!266 = metadata !{i32 786451, metadata !267, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !268, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!267 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!268 = metadata !{metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !289, metadata !290, metadata !291, metadata !292, metadata !295, metadata !296, metadata !298, metadata !302, metadata !303, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !312, metadata !313}
!269 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!270 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!271 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!272 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!273 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!274 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!275 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!276 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!277 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!278 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!279 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!280 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!281 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !282} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!282 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !283} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!283 = metadata !{i32 786451, metadata !267, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !284, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!284 = metadata !{metadata !285, metadata !286, metadata !288}
!285 = metadata !{i32 786445, metadata !267, metadata !283, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !282} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!286 = metadata !{i32 786445, metadata !267, metadata !283, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !287} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!287 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !266} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!288 = metadata !{i32 786445, metadata !267, metadata !283, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!289 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !287} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!290 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !24} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!291 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !24} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!292 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !293} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!293 = metadata !{i32 786454, metadata !267, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !294} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!294 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!295 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !88} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!296 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !297} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!297 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!298 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !299} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!299 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !37, metadata !300, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!300 = metadata !{metadata !301}
!301 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!302 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !47} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!303 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !304} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!304 = metadata !{i32 786454, metadata !267, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !294} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!305 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !47} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!306 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !47} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!307 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !47} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!308 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !47} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!309 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !310} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!310 = metadata !{i32 786454, metadata !267, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !311} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!311 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!312 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !24} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!313 = metadata !{i32 786445, metadata !267, metadata !266, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !314} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!314 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !37, metadata !315, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!315 = metadata !{metadata !316}
!316 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!317 = metadata !{metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324}
!318 = metadata !{i32 786689, metadata !260, metadata !"bzerror", metadata !21, i32 16778197, metadata !263, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bzerror] [line 981]
!319 = metadata !{i32 786689, metadata !260, metadata !"f", metadata !21, i32 33555417, metadata !264, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 985]
!320 = metadata !{i32 786689, metadata !260, metadata !"blockSize100k", metadata !21, i32 50332635, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [blockSize100k] [line 987]
!321 = metadata !{i32 786689, metadata !260, metadata !"verbosity", metadata !21, i32 67109852, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [verbosity] [line 988]
!322 = metadata !{i32 786689, metadata !260, metadata !"workFactor", metadata !21, i32 83887069, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [workFactor] [line 989]
!323 = metadata !{i32 786688, metadata !260, metadata !"ret", metadata !21, i32 991, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 991]
!324 = metadata !{i32 786688, metadata !260, metadata !"bzf", metadata !21, i32 992, metadata !325, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzf] [line 992]
!325 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !326} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from bzFile]
!326 = metadata !{i32 786454, metadata !1, null, metadata !"bzFile", i32 962, i64 0, i64 0, i64 0, i32 0, metadata !327} ; [ DW_TAG_typedef ] [bzFile] [line 962, size 0, align 0, offset 0] [from ]
!327 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 949, i64 40832, i64 64, i32 0, i32 0, null, metadata !328, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 949, size 40832, align 64, offset 0] [from ]
!328 = metadata !{metadata !329, metadata !330, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339}
!329 = metadata !{i32 786445, metadata !1, metadata !327, metadata !"handle", i32 953, i64 64, i64 64, i64 0, i32 0, metadata !264} ; [ DW_TAG_member ] [handle] [line 953, size 64, align 64, offset 0] [from ]
!330 = metadata !{i32 786445, metadata !1, metadata !327, metadata !"buf", i32 955, i64 40000, i64 8, i64 64, i32 0, metadata !331} ; [ DW_TAG_member ] [buf] [line 955, size 40000, align 8, offset 64] [from ]
!331 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 40000, i64 8, i32 0, i32 0, metadata !332, metadata !333, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 40000, align 8, offset 0] [from Char]
!332 = metadata !{i32 786454, metadata !1, null, metadata !"Char", i32 81, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [Char] [line 81, size 0, align 0, offset 0] [from char]
!333 = metadata !{metadata !334}
!334 = metadata !{i32 786465, i64 0, i64 5000}    ; [ DW_TAG_subrange_type ] [0, 4999]
!335 = metadata !{i32 786445, metadata !1, metadata !327, metadata !"bufN", i32 956, i64 32, i64 32, i64 40064, i32 0, metadata !63} ; [ DW_TAG_member ] [bufN] [line 956, size 32, align 32, offset 40064] [from Int32]
!336 = metadata !{i32 786445, metadata !1, metadata !327, metadata !"writing", i32 957, i64 8, i64 8, i64 40096, i32 0, metadata !102} ; [ DW_TAG_member ] [writing] [line 957, size 8, align 8, offset 40096] [from Bool]
!337 = metadata !{i32 786445, metadata !1, metadata !327, metadata !"strm", i32 958, i64 640, i64 64, i64 40128, i32 0, metadata !31} ; [ DW_TAG_member ] [strm] [line 958, size 640, align 64, offset 40128] [from bz_stream]
!338 = metadata !{i32 786445, metadata !1, metadata !327, metadata !"lastErr", i32 959, i64 32, i64 32, i64 40768, i32 0, metadata !63} ; [ DW_TAG_member ] [lastErr] [line 959, size 32, align 32, offset 40768] [from Int32]
!339 = metadata !{i32 786445, metadata !1, metadata !327, metadata !"initialisedOk", i32 960, i64 8, i64 8, i64 40800, i32 0, metadata !102} ; [ DW_TAG_member ] [initialisedOk] [line 960, size 8, align 8, offset 40800] [from Bool]
!340 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzWrite", metadata !"BZ2_bzWrite", metadata !"", i32 1032, metadata !341, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i8*, i32)* @BZ2_bzWrite, null, null, metadata !343, i32 1037} ; [ DW_TAG_subprogram ] [line 1032] [def] [scope 1037] [BZ2_bzWrite]
!341 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !342, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!342 = metadata !{null, metadata !263, metadata !47, metadata !47, metadata !24}
!343 = metadata !{metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351}
!344 = metadata !{i32 786689, metadata !340, metadata !"bzerror", metadata !21, i32 16778249, metadata !263, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bzerror] [line 1033]
!345 = metadata !{i32 786689, metadata !340, metadata !"b", metadata !21, i32 33555466, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1034]
!346 = metadata !{i32 786689, metadata !340, metadata !"buf", metadata !21, i32 50332683, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1035]
!347 = metadata !{i32 786689, metadata !340, metadata !"len", metadata !21, i32 67109900, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 1036]
!348 = metadata !{i32 786688, metadata !340, metadata !"n", metadata !21, i32 1038, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1038]
!349 = metadata !{i32 786688, metadata !340, metadata !"n2", metadata !21, i32 1038, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 1038]
!350 = metadata !{i32 786688, metadata !340, metadata !"ret", metadata !21, i32 1038, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 1038]
!351 = metadata !{i32 786688, metadata !340, metadata !"bzf", metadata !21, i32 1039, metadata !325, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzf] [line 1039]
!352 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzWriteClose", metadata !"BZ2_bzWriteClose", metadata !"", i32 1077, metadata !353, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32, i32*, i32*)* @BZ2_bzWriteClose, null, null, metadata !356, i32 1083} ; [ DW_TAG_subprogram ] [line 1077] [def] [scope 1083] [BZ2_bzWriteClose]
!353 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !354, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!354 = metadata !{null, metadata !263, metadata !47, metadata !24, metadata !355, metadata !355}
!355 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned int]
!356 = metadata !{metadata !357, metadata !358, metadata !359, metadata !360, metadata !361}
!357 = metadata !{i32 786689, metadata !352, metadata !"bzerror", metadata !21, i32 16778294, metadata !263, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bzerror] [line 1078]
!358 = metadata !{i32 786689, metadata !352, metadata !"b", metadata !21, i32 33555511, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1079]
!359 = metadata !{i32 786689, metadata !352, metadata !"abandon", metadata !21, i32 50332728, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [abandon] [line 1080]
!360 = metadata !{i32 786689, metadata !352, metadata !"nbytes_in", metadata !21, i32 67109945, metadata !355, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbytes_in] [line 1081]
!361 = metadata !{i32 786689, metadata !352, metadata !"nbytes_out", metadata !21, i32 83887162, metadata !355, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbytes_out] [line 1082]
!362 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzWriteClose64", metadata !"BZ2_bzWriteClose64", metadata !"", i32 1089, metadata !363, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i32, i32*, i32*, i32*, i32*)* @BZ2_bzWriteClose64, null, null, metadata !365, i32 1097} ; [ DW_TAG_subprogram ] [line 1089] [def] [scope 1097] [BZ2_bzWriteClose64]
!363 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !364, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!364 = metadata !{null, metadata !263, metadata !47, metadata !24, metadata !355, metadata !355, metadata !355, metadata !355}
!365 = metadata !{metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376}
!366 = metadata !{i32 786689, metadata !362, metadata !"bzerror", metadata !21, i32 16778306, metadata !263, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bzerror] [line 1090]
!367 = metadata !{i32 786689, metadata !362, metadata !"b", metadata !21, i32 33555523, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1091]
!368 = metadata !{i32 786689, metadata !362, metadata !"abandon", metadata !21, i32 50332740, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [abandon] [line 1092]
!369 = metadata !{i32 786689, metadata !362, metadata !"nbytes_in_lo32", metadata !21, i32 67109957, metadata !355, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbytes_in_lo32] [line 1093]
!370 = metadata !{i32 786689, metadata !362, metadata !"nbytes_in_hi32", metadata !21, i32 83887174, metadata !355, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbytes_in_hi32] [line 1094]
!371 = metadata !{i32 786689, metadata !362, metadata !"nbytes_out_lo32", metadata !21, i32 100664391, metadata !355, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbytes_out_lo32] [line 1095]
!372 = metadata !{i32 786689, metadata !362, metadata !"nbytes_out_hi32", metadata !21, i32 117441608, metadata !355, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbytes_out_hi32] [line 1096]
!373 = metadata !{i32 786688, metadata !362, metadata !"n", metadata !21, i32 1098, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1098]
!374 = metadata !{i32 786688, metadata !362, metadata !"n2", metadata !21, i32 1098, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 1098]
!375 = metadata !{i32 786688, metadata !362, metadata !"ret", metadata !21, i32 1098, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 1098]
!376 = metadata !{i32 786688, metadata !362, metadata !"bzf", metadata !21, i32 1099, metadata !325, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzf] [line 1099]
!377 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzReadOpen", metadata !"BZ2_bzReadOpen", metadata !"", i32 1155, metadata !378, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32*, %struct._IO_FILE*, i32, i32, i8*, i32)* @BZ2_bzReadOpen, null, null, metadata !380, i32 1166} ; [ DW_TAG_subprogram ] [line 1155] [def] [scope 1166] [BZ2_bzReadOpen]
!378 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !379, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!379 = metadata !{metadata !47, metadata !263, metadata !264, metadata !24, metadata !24, metadata !47, metadata !24}
!380 = metadata !{metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388}
!381 = metadata !{i32 786689, metadata !377, metadata !"bzerror", metadata !21, i32 16778372, metadata !263, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bzerror] [line 1156]
!382 = metadata !{i32 786689, metadata !377, metadata !"f", metadata !21, i32 33555592, metadata !264, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 1160]
!383 = metadata !{i32 786689, metadata !377, metadata !"verbosity", metadata !21, i32 50332810, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [verbosity] [line 1162]
!384 = metadata !{i32 786689, metadata !377, metadata !"small", metadata !21, i32 67110027, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [small] [line 1163]
!385 = metadata !{i32 786689, metadata !377, metadata !"unused", metadata !21, i32 83887244, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [unused] [line 1164]
!386 = metadata !{i32 786689, metadata !377, metadata !"nUnused", metadata !21, i32 100664461, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nUnused] [line 1165]
!387 = metadata !{i32 786688, metadata !377, metadata !"bzf", metadata !21, i32 1167, metadata !325, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzf] [line 1167]
!388 = metadata !{i32 786688, metadata !377, metadata !"ret", metadata !21, i32 1168, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 1168]
!389 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzReadClose", metadata !"BZ2_bzReadClose", metadata !"", i32 1215, metadata !390, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*)* @BZ2_bzReadClose, null, null, metadata !392, i32 1216} ; [ DW_TAG_subprogram ] [line 1215] [def] [scope 1216] [BZ2_bzReadClose]
!390 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !391, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!391 = metadata !{null, metadata !263, metadata !47}
!392 = metadata !{metadata !393, metadata !394, metadata !395}
!393 = metadata !{i32 786689, metadata !389, metadata !"bzerror", metadata !21, i32 16778431, metadata !263, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bzerror] [line 1215]
!394 = metadata !{i32 786689, metadata !389, metadata !"b", metadata !21, i32 33555647, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1215]
!395 = metadata !{i32 786688, metadata !389, metadata !"bzf", metadata !21, i32 1217, metadata !325, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzf] [line 1217]
!396 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzRead", metadata !"BZ2_bzRead", metadata !"", i32 1233, metadata !397, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i8*, i8*, i32)* @BZ2_bzRead, null, null, metadata !399, i32 1238} ; [ DW_TAG_subprogram ] [line 1233] [def] [scope 1238] [BZ2_bzRead]
!397 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !398, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!398 = metadata !{metadata !24, metadata !263, metadata !47, metadata !47, metadata !24}
!399 = metadata !{metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406}
!400 = metadata !{i32 786689, metadata !396, metadata !"bzerror", metadata !21, i32 16778450, metadata !263, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bzerror] [line 1234]
!401 = metadata !{i32 786689, metadata !396, metadata !"b", metadata !21, i32 33555667, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1235]
!402 = metadata !{i32 786689, metadata !396, metadata !"buf", metadata !21, i32 50332884, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1236]
!403 = metadata !{i32 786689, metadata !396, metadata !"len", metadata !21, i32 67110101, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 1237]
!404 = metadata !{i32 786688, metadata !396, metadata !"n", metadata !21, i32 1239, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1239]
!405 = metadata !{i32 786688, metadata !396, metadata !"ret", metadata !21, i32 1239, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 1239]
!406 = metadata !{i32 786688, metadata !396, metadata !"bzf", metadata !21, i32 1240, metadata !325, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzf] [line 1240]
!407 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzReadGetUnused", metadata !"BZ2_bzReadGetUnused", metadata !"", i32 1293, metadata !408, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i8**, i32*)* @BZ2_bzReadGetUnused, null, null, metadata !411, i32 1298} ; [ DW_TAG_subprogram ] [line 1293] [def] [scope 1298] [BZ2_bzReadGetUnused]
!408 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !409, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!409 = metadata !{null, metadata !263, metadata !47, metadata !410, metadata !263}
!410 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!411 = metadata !{metadata !412, metadata !413, metadata !414, metadata !415, metadata !416}
!412 = metadata !{i32 786689, metadata !407, metadata !"bzerror", metadata !21, i32 16778510, metadata !263, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bzerror] [line 1294]
!413 = metadata !{i32 786689, metadata !407, metadata !"b", metadata !21, i32 33555727, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1295]
!414 = metadata !{i32 786689, metadata !407, metadata !"unused", metadata !21, i32 50332944, metadata !410, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [unused] [line 1296]
!415 = metadata !{i32 786689, metadata !407, metadata !"nUnused", metadata !21, i32 67110161, metadata !263, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nUnused] [line 1297]
!416 = metadata !{i32 786688, metadata !407, metadata !"bzf", metadata !21, i32 1299, metadata !325, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzf] [line 1299]
!417 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzBuffToBuffCompress", metadata !"BZ2_bzBuffToBuffCompress", metadata !"", i32 1319, metadata !418, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*, i8*, i32, i32, i32, i32)* @BZ2_bzBuffToBuffCompress, null, null, metadata !420, i32 1327} ; [ DW_TAG_subprogram ] [line 1319] [def] [scope 1327] [BZ2_bzBuffToBuffCompress]
!418 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !419, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!419 = metadata !{metadata !24, metadata !36, metadata !355, metadata !36, metadata !39, metadata !24, metadata !24, metadata !24}
!420 = metadata !{metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429}
!421 = metadata !{i32 786689, metadata !417, metadata !"dest", metadata !21, i32 16778536, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 1320]
!422 = metadata !{i32 786689, metadata !417, metadata !"destLen", metadata !21, i32 33555753, metadata !355, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destLen] [line 1321]
!423 = metadata !{i32 786689, metadata !417, metadata !"source", metadata !21, i32 50332970, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [source] [line 1322]
!424 = metadata !{i32 786689, metadata !417, metadata !"sourceLen", metadata !21, i32 67110187, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sourceLen] [line 1323]
!425 = metadata !{i32 786689, metadata !417, metadata !"blockSize100k", metadata !21, i32 83887404, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [blockSize100k] [line 1324]
!426 = metadata !{i32 786689, metadata !417, metadata !"verbosity", metadata !21, i32 100664621, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [verbosity] [line 1325]
!427 = metadata !{i32 786689, metadata !417, metadata !"workFactor", metadata !21, i32 117441838, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [workFactor] [line 1326]
!428 = metadata !{i32 786688, metadata !417, metadata !"strm", metadata !21, i32 1328, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [strm] [line 1328]
!429 = metadata !{i32 786688, metadata !417, metadata !"ret", metadata !21, i32 1329, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 1329]
!430 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzBuffToBuffDecompress", metadata !"BZ2_bzBuffToBuffDecompress", metadata !"", i32 1371, metadata !431, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*, i8*, i32, i32, i32)* @BZ2_bzBuffToBuffDecompress, null, null, metadata !433, i32 1378} ; [ DW_TAG_subprogram ] [line 1371] [def] [scope 1378] [BZ2_bzBuffToBuffDecompress]
!431 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !432, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!432 = metadata !{metadata !24, metadata !36, metadata !355, metadata !36, metadata !39, metadata !24, metadata !24}
!433 = metadata !{metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441}
!434 = metadata !{i32 786689, metadata !430, metadata !"dest", metadata !21, i32 16778588, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 1372]
!435 = metadata !{i32 786689, metadata !430, metadata !"destLen", metadata !21, i32 33555805, metadata !355, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destLen] [line 1373]
!436 = metadata !{i32 786689, metadata !430, metadata !"source", metadata !21, i32 50333022, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [source] [line 1374]
!437 = metadata !{i32 786689, metadata !430, metadata !"sourceLen", metadata !21, i32 67110239, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sourceLen] [line 1375]
!438 = metadata !{i32 786689, metadata !430, metadata !"small", metadata !21, i32 83887456, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [small] [line 1376]
!439 = metadata !{i32 786689, metadata !430, metadata !"verbosity", metadata !21, i32 100664673, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [verbosity] [line 1377]
!440 = metadata !{i32 786688, metadata !430, metadata !"strm", metadata !21, i32 1379, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [strm] [line 1379]
!441 = metadata !{i32 786688, metadata !430, metadata !"ret", metadata !21, i32 1380, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 1380]
!442 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzlibVersion", metadata !"BZ2_bzlibVersion", metadata !"", i32 1439, metadata !443, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @BZ2_bzlibVersion, null, null, metadata !18, i32 1440} ; [ DW_TAG_subprogram ] [line 1439] [def] [scope 1440] [BZ2_bzlibVersion]
!443 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !444, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!444 = metadata !{metadata !445}
!445 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !446} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!446 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!447 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzopen", metadata !"BZ2_bzopen", metadata !"", i32 1551, metadata !448, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*)* @BZ2_bzopen, null, null, metadata !450, i32 1554} ; [ DW_TAG_subprogram ] [line 1551] [def] [scope 1554] [BZ2_bzopen]
!448 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !449, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!449 = metadata !{metadata !47, metadata !445, metadata !445}
!450 = metadata !{metadata !451, metadata !452}
!451 = metadata !{i32 786689, metadata !447, metadata !"path", metadata !21, i32 16778768, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 1552]
!452 = metadata !{i32 786689, metadata !447, metadata !"mode", metadata !21, i32 33555985, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 1553]
!453 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzdopen", metadata !"BZ2_bzdopen", metadata !"", i32 1560, metadata !454, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32, i8*)* @BZ2_bzdopen, null, null, metadata !456, i32 1563} ; [ DW_TAG_subprogram ] [line 1560] [def] [scope 1563] [BZ2_bzdopen]
!454 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !455, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!455 = metadata !{metadata !47, metadata !24, metadata !445}
!456 = metadata !{metadata !457, metadata !458}
!457 = metadata !{i32 786689, metadata !453, metadata !"fd", metadata !21, i32 16778777, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 1561]
!458 = metadata !{i32 786689, metadata !453, metadata !"mode", metadata !21, i32 33555994, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 1562]
!459 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzread", metadata !"BZ2_bzread", metadata !"", i32 1569, metadata !460, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32)* @BZ2_bzread, null, null, metadata !462, i32 1570} ; [ DW_TAG_subprogram ] [line 1569] [def] [scope 1570] [BZ2_bzread]
!460 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !461, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!461 = metadata !{metadata !24, metadata !47, metadata !47, metadata !24}
!462 = metadata !{metadata !463, metadata !464, metadata !465, metadata !466, metadata !467}
!463 = metadata !{i32 786689, metadata !459, metadata !"b", metadata !21, i32 16778785, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1569]
!464 = metadata !{i32 786689, metadata !459, metadata !"buf", metadata !21, i32 33556001, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1569]
!465 = metadata !{i32 786689, metadata !459, metadata !"len", metadata !21, i32 50333217, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 1569]
!466 = metadata !{i32 786688, metadata !459, metadata !"bzerr", metadata !21, i32 1571, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzerr] [line 1571]
!467 = metadata !{i32 786688, metadata !459, metadata !"nread", metadata !21, i32 1571, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nread] [line 1571]
!468 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzwrite", metadata !"BZ2_bzwrite", metadata !"", i32 1583, metadata !460, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32)* @BZ2_bzwrite, null, null, metadata !469, i32 1584} ; [ DW_TAG_subprogram ] [line 1583] [def] [scope 1584] [BZ2_bzwrite]
!469 = metadata !{metadata !470, metadata !471, metadata !472, metadata !473}
!470 = metadata !{i32 786689, metadata !468, metadata !"b", metadata !21, i32 16778799, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1583]
!471 = metadata !{i32 786689, metadata !468, metadata !"buf", metadata !21, i32 33556015, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 1583]
!472 = metadata !{i32 786689, metadata !468, metadata !"len", metadata !21, i32 50333231, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 1583]
!473 = metadata !{i32 786688, metadata !468, metadata !"bzerr", metadata !21, i32 1585, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzerr] [line 1585]
!474 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzflush", metadata !"BZ2_bzflush", metadata !"", i32 1597, metadata !475, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @BZ2_bzflush, null, null, metadata !477, i32 1598} ; [ DW_TAG_subprogram ] [line 1597] [def] [scope 1598] [BZ2_bzflush]
!475 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !476, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!476 = metadata !{metadata !24, metadata !47}
!477 = metadata !{metadata !478}
!478 = metadata !{i32 786689, metadata !474, metadata !"b", metadata !21, i32 16778813, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1597]
!479 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzclose", metadata !"BZ2_bzclose", metadata !"", i32 1605, metadata !480, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @BZ2_bzclose, null, null, metadata !482, i32 1606} ; [ DW_TAG_subprogram ] [line 1605] [def] [scope 1606] [BZ2_bzclose]
!480 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !481, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!481 = metadata !{null, metadata !47}
!482 = metadata !{metadata !483, metadata !484, metadata !485}
!483 = metadata !{i32 786689, metadata !479, metadata !"b", metadata !21, i32 16778821, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1605]
!484 = metadata !{i32 786688, metadata !479, metadata !"bzerr", metadata !21, i32 1607, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzerr] [line 1607]
!485 = metadata !{i32 786688, metadata !479, metadata !"fp", metadata !21, i32 1611, metadata !264, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 1611]
!486 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"BZ2_bzerror", metadata !"BZ2_bzerror", metadata !"", i32 1657, metadata !487, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32*)* @BZ2_bzerror, null, null, metadata !489, i32 1658} ; [ DW_TAG_subprogram ] [line 1657] [def] [scope 1658] [BZ2_bzerror]
!487 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !488, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!488 = metadata !{metadata !445, metadata !47, metadata !263}
!489 = metadata !{metadata !490, metadata !491, metadata !492}
!490 = metadata !{i32 786689, metadata !486, metadata !"b", metadata !21, i32 16778873, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1657]
!491 = metadata !{i32 786689, metadata !486, metadata !"errnum", metadata !21, i32 33556089, metadata !263, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [errnum] [line 1657]
!492 = metadata !{i32 786688, metadata !486, metadata !"err", metadata !21, i32 1659, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err] [line 1659]
!493 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"bzopen_or_bzdopen", metadata !"bzopen_or_bzdopen", metadata !"", i32 1458, metadata !494, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i8*, i32)* @bzopen_or_bzdopen, null, null, metadata !496, i32 1463} ; [ DW_TAG_subprogram ] [line 1458] [local] [def] [scope 1463] [bzopen_or_bzdopen]
!494 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !495, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!495 = metadata !{metadata !47, metadata !445, metadata !24, metadata !445, metadata !24}
!496 = metadata !{metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !504, metadata !505, metadata !506, metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515}
!497 = metadata !{i32 786689, metadata !493, metadata !"path", metadata !21, i32 16778675, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 1459]
!498 = metadata !{i32 786689, metadata !493, metadata !"fd", metadata !21, i32 33555892, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 1460]
!499 = metadata !{i32 786689, metadata !493, metadata !"mode", metadata !21, i32 50333109, metadata !445, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 1461]
!500 = metadata !{i32 786689, metadata !493, metadata !"open_mode", metadata !21, i32 67110326, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [open_mode] [line 1462]
!501 = metadata !{i32 786688, metadata !493, metadata !"bzerr", metadata !21, i32 1464, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzerr] [line 1464]
!502 = metadata !{i32 786688, metadata !493, metadata !"unused", metadata !21, i32 1465, metadata !503, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [unused] [line 1465]
!503 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 40000, i64 8, i32 0, i32 0, metadata !37, metadata !333, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 40000, align 8, offset 0] [from char]
!504 = metadata !{i32 786688, metadata !493, metadata !"blockSize100k", metadata !21, i32 1466, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blockSize100k] [line 1466]
!505 = metadata !{i32 786688, metadata !493, metadata !"writing", metadata !21, i32 1467, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [writing] [line 1467]
!506 = metadata !{i32 786688, metadata !493, metadata !"mode2", metadata !21, i32 1468, metadata !507, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode2] [line 1468]
!507 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 80, i64 8, i32 0, i32 0, metadata !37, metadata !508, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 80, align 8, offset 0] [from char]
!508 = metadata !{metadata !509}
!509 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!510 = metadata !{i32 786688, metadata !493, metadata !"fp", metadata !21, i32 1472, metadata !264, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 1472]
!511 = metadata !{i32 786688, metadata !493, metadata !"bzfp", metadata !21, i32 1474, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzfp] [line 1474]
!512 = metadata !{i32 786688, metadata !493, metadata !"verbosity", metadata !21, i32 1475, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [verbosity] [line 1475]
!513 = metadata !{i32 786688, metadata !493, metadata !"workFactor", metadata !21, i32 1476, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [workFactor] [line 1476]
!514 = metadata !{i32 786688, metadata !493, metadata !"smallMode", metadata !21, i32 1477, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [smallMode] [line 1477]
!515 = metadata !{i32 786688, metadata !493, metadata !"nUnused", metadata !21, i32 1478, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nUnused] [line 1478]
!516 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"myfeof", metadata !"myfeof", metadata !"", i32 969, metadata !517, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8 (%struct._IO_FILE*)* @myfeof, null, null, metadata !519, i32 971} ; [ DW_TAG_subprogram ] [line 969] [local] [def] [scope 971] [myfeof]
!517 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !518, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!518 = metadata !{metadata !102, metadata !264}
!519 = metadata !{metadata !520, metadata !521}
!520 = metadata !{i32 786689, metadata !516, metadata !"f", metadata !21, i32 16778185, metadata !264, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 969]
!521 = metadata !{i32 786688, metadata !516, metadata !"c", metadata !21, i32 972, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 972]
!522 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"unRLE_obuf_to_output_FAST", metadata !"unRLE_obuf_to_output_FAST", metadata !"", i32 593, metadata !523, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !525, i32 594} ; [ DW_TAG_subprogram ] [line 593] [local] [def] [scope 594] [unRLE_obuf_to_output_FAST]
!523 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !524, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!524 = metadata !{metadata !102, metadata !157}
!525 = metadata !{metadata !526, metadata !527, metadata !528, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540}
!526 = metadata !{i32 786689, metadata !522, metadata !"s", metadata !21, i32 16777809, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 593]
!527 = metadata !{i32 786688, metadata !522, metadata !"k1", metadata !21, i32 595, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k1] [line 595]
!528 = metadata !{i32 786688, metadata !529, metadata !"c_calculatedBlockCRC", metadata !21, i32 649, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_calculatedBlockCRC] [line 649]
!529 = metadata !{i32 786443, metadata !1, metadata !522, i32 646, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!530 = metadata !{i32 786688, metadata !529, metadata !"c_state_out_ch", metadata !21, i32 650, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_state_out_ch] [line 650]
!531 = metadata !{i32 786688, metadata !529, metadata !"c_state_out_len", metadata !21, i32 651, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_state_out_len] [line 651]
!532 = metadata !{i32 786688, metadata !529, metadata !"c_nblock_used", metadata !21, i32 652, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_nblock_used] [line 652]
!533 = metadata !{i32 786688, metadata !529, metadata !"c_k0", metadata !21, i32 653, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_k0] [line 653]
!534 = metadata !{i32 786688, metadata !529, metadata !"c_tt", metadata !21, i32 654, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_tt] [line 654]
!535 = metadata !{i32 786688, metadata !529, metadata !"c_tPos", metadata !21, i32 655, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_tPos] [line 655]
!536 = metadata !{i32 786688, metadata !529, metadata !"cs_next_out", metadata !21, i32 656, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cs_next_out] [line 656]
!537 = metadata !{i32 786688, metadata !529, metadata !"cs_avail_out", metadata !21, i32 657, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cs_avail_out] [line 657]
!538 = metadata !{i32 786688, metadata !529, metadata !"avail_out_INIT", metadata !21, i32 660, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [avail_out_INIT] [line 660]
!539 = metadata !{i32 786688, metadata !529, metadata !"s_save_nblockPP", metadata !21, i32 661, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s_save_nblockPP] [line 661]
!540 = metadata !{i32 786688, metadata !529, metadata !"total_out_lo32_old", metadata !21, i32 662, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total_out_lo32_old] [line 662]
!541 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"unRLE_obuf_to_output_SMALL", metadata !"unRLE_obuf_to_output_SMALL", metadata !"", i32 762, metadata !523, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !542, i32 763} ; [ DW_TAG_subprogram ] [line 762] [local] [def] [scope 763] [unRLE_obuf_to_output_SMALL]
!542 = metadata !{metadata !543, metadata !544}
!543 = metadata !{i32 786689, metadata !541, metadata !"s", metadata !21, i32 16777978, metadata !157, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 762]
!544 = metadata !{i32 786688, metadata !541, metadata !"k1", metadata !21, i32 764, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k1] [line 764]
!545 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"isempty_RL", metadata !"isempty_RL", metadata !"", i32 196, metadata !546, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !548, i32 197} ; [ DW_TAG_subprogram ] [line 196] [local] [def] [scope 197] [isempty_RL]
!546 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !547, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!547 = metadata !{metadata !102, metadata !65}
!548 = metadata !{metadata !549}
!549 = metadata !{i32 786689, metadata !545, metadata !"s", metadata !21, i32 16777412, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 196]
!550 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"handle_compress", metadata !"handle_compress", metadata !"", i32 418, metadata !551, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8 (%struct.bz_stream*)* @handle_compress, null, null, metadata !553, i32 419} ; [ DW_TAG_subprogram ] [line 418] [local] [def] [scope 419] [handle_compress]
!551 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !552, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!552 = metadata !{metadata !102, metadata !30}
!553 = metadata !{metadata !554, metadata !555, metadata !556, metadata !557}
!554 = metadata !{i32 786689, metadata !550, metadata !"strm", metadata !21, i32 16777634, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [strm] [line 418]
!555 = metadata !{i32 786688, metadata !550, metadata !"progress_in", metadata !21, i32 420, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [progress_in] [line 420]
!556 = metadata !{i32 786688, metadata !550, metadata !"progress_out", metadata !21, i32 421, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [progress_out] [line 421]
!557 = metadata !{i32 786688, metadata !550, metadata !"s", metadata !21, i32 422, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 422]
!558 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"flush_RL", metadata !"flush_RL", metadata !"", i32 309, metadata !559, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !561, i32 310} ; [ DW_TAG_subprogram ] [line 309] [local] [def] [scope 310] [flush_RL]
!559 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !560, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!560 = metadata !{null, metadata !65}
!561 = metadata !{metadata !562}
!562 = metadata !{i32 786689, metadata !558, metadata !"s", metadata !21, i32 16777525, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 309]
!563 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"add_pair_to_block", metadata !"add_pair_to_block", metadata !"", i32 273, metadata !559, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.EState*)* @add_pair_to_block, null, null, metadata !564, i32 274} ; [ DW_TAG_subprogram ] [line 273] [local] [def] [scope 274] [add_pair_to_block]
!564 = metadata !{metadata !565, metadata !566, metadata !567}
!565 = metadata !{i32 786689, metadata !563, metadata !"s", metadata !21, i32 16777489, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 273]
!566 = metadata !{i32 786688, metadata !563, metadata !"i", metadata !21, i32 275, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 275]
!567 = metadata !{i32 786688, metadata !563, metadata !"ch", metadata !21, i32 276, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 276]
!568 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"copy_input_until_stop", metadata !"copy_input_until_stop", metadata !"", i32 346, metadata !546, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !569, i32 347} ; [ DW_TAG_subprogram ] [line 346] [local] [def] [scope 347] [copy_input_until_stop]
!569 = metadata !{metadata !570, metadata !571, metadata !572, metadata !576, metadata !578, metadata !582}
!570 = metadata !{i32 786689, metadata !568, metadata !"s", metadata !21, i32 16777562, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 346]
!571 = metadata !{i32 786688, metadata !568, metadata !"progress_in", metadata !21, i32 348, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [progress_in] [line 348]
!572 = metadata !{i32 786688, metadata !573, metadata !"zchh", metadata !21, i32 359, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zchh] [line 359]
!573 = metadata !{i32 786443, metadata !1, metadata !574, i32 359, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!574 = metadata !{i32 786443, metadata !1, metadata !575, i32 353, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!575 = metadata !{i32 786443, metadata !1, metadata !568, i32 350, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!576 = metadata !{i32 786688, metadata !577, metadata !"ch", metadata !21, i32 359, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 359]
!577 = metadata !{i32 786443, metadata !1, metadata !573, i32 359, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!578 = metadata !{i32 786688, metadata !579, metadata !"zchh", metadata !21, i32 377, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zchh] [line 377]
!579 = metadata !{i32 786443, metadata !1, metadata !580, i32 377, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!580 = metadata !{i32 786443, metadata !1, metadata !581, i32 369, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!581 = metadata !{i32 786443, metadata !1, metadata !568, i32 366, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!582 = metadata !{i32 786688, metadata !583, metadata !"ch", metadata !21, i32 377, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 377]
!583 = metadata !{i32 786443, metadata !1, metadata !579, i32 377, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!584 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"copy_output_until_stop", metadata !"copy_output_until_stop", metadata !"", i32 391, metadata !546, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !585, i32 392} ; [ DW_TAG_subprogram ] [line 391] [local] [def] [scope 392] [copy_output_until_stop]
!585 = metadata !{metadata !586, metadata !587}
!586 = metadata !{i32 786689, metadata !584, metadata !"s", metadata !21, i32 16777607, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 391]
!587 = metadata !{i32 786688, metadata !584, metadata !"progress_out", metadata !21, i32 393, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [progress_out] [line 393]
!588 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"prepare_new_block", metadata !"prepare_new_block", metadata !"", i32 174, metadata !559, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !589, i32 175} ; [ DW_TAG_subprogram ] [line 174] [local] [def] [scope 175] [prepare_new_block]
!589 = metadata !{metadata !590, metadata !591}
!590 = metadata !{i32 786689, metadata !588, metadata !"s", metadata !21, i32 16777390, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 174]
!591 = metadata !{i32 786688, metadata !588, metadata !"i", metadata !21, i32 176, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 176]
!592 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"init_RL", metadata !"init_RL", metadata !"", i32 188, metadata !559, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !593, i32 189} ; [ DW_TAG_subprogram ] [line 188] [local] [def] [scope 189] [init_RL]
!593 = metadata !{metadata !594}
!594 = metadata !{i32 786689, metadata !592, metadata !"s", metadata !21, i32 16777404, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 188]
!595 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"default_bzfree", metadata !"default_bzfree", metadata !"", i32 166, metadata !54, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*)* @default_bzfree, null, null, metadata !596, i32 167} ; [ DW_TAG_subprogram ] [line 166] [local] [def] [scope 167] [default_bzfree]
!596 = metadata !{metadata !597, metadata !598}
!597 = metadata !{i32 786689, metadata !595, metadata !"opaque", metadata !21, i32 16777382, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opaque] [line 166]
!598 = metadata !{i32 786689, metadata !595, metadata !"addr", metadata !21, i32 33554598, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addr] [line 166]
!599 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"default_bzalloc", metadata !"default_bzalloc", metadata !"", i32 159, metadata !600, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i32)* @default_bzalloc, null, null, metadata !602, i32 160} ; [ DW_TAG_subprogram ] [line 159] [local] [def] [scope 160] [default_bzalloc]
!600 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !601, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!601 = metadata !{metadata !47, metadata !47, metadata !63, metadata !63}
!602 = metadata !{metadata !603, metadata !604, metadata !605, metadata !606}
!603 = metadata !{i32 786689, metadata !599, metadata !"opaque", metadata !21, i32 16777375, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opaque] [line 159]
!604 = metadata !{i32 786689, metadata !599, metadata !"items", metadata !21, i32 33554591, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [items] [line 159]
!605 = metadata !{i32 786689, metadata !599, metadata !"size", metadata !21, i32 50331807, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 159]
!606 = metadata !{i32 786688, metadata !599, metadata !"v", metadata !21, i32 161, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 161]
!607 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"bz_config_ok", metadata !"bz_config_ok", metadata !"", i32 148, metadata !608, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !18, i32 149} ; [ DW_TAG_subprogram ] [line 148] [local] [def] [scope 149] [bz_config_ok]
!608 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !609, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!609 = metadata !{metadata !24}
!610 = metadata !{metadata !611}
!611 = metadata !{i32 786484, i32 0, null, metadata !"bzerrorstrings", metadata !"bzerrorstrings", metadata !"", metadata !21, i32 1637, metadata !612, i32 1, i32 1, [16 x i8*]* @bzerrorstrings, null} ; [ DW_TAG_variable ] [bzerrorstrings] [line 1637] [local] [def]
!612 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 64, i32 0, i32 0, metadata !36, metadata !196, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 64, offset 0] [from ]
!613 = metadata !{i32 87, i32 0, metadata !20, null}
!614 = metadata !{i32 89, i32 0, metadata !20, null}
!615 = metadata !{metadata !"any pointer", metadata !616}
!616 = metadata !{metadata !"omnipotent char", metadata !617}
!617 = metadata !{metadata !"Simple C/C++ TBAA"}
!618 = metadata !{i32 106, i32 0, metadata !20, null}
!619 = metadata !{i32 109, i32 0, metadata !20, null}
!620 = metadata !{i32 110, i32 0, metadata !621, null}
!621 = metadata !{i32 786443, metadata !1, metadata !20, i32 109, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!622 = metadata !{i32 135, i32 0, metadata !621, null}
!623 = metadata !{i32 138, i32 0, metadata !20, null}
!624 = metadata !{i32 1441, i32 0, metadata !442, null}
!625 = metadata !{i32 206, i32 0, metadata !27, null}
!626 = metadata !{i32 207, i32 0, metadata !27, null}
!627 = metadata !{i32 208, i32 0, metadata !27, null}
!628 = metadata !{i32 209, i32 0, metadata !27, null}
!629 = metadata !{i32 216, i32 0, metadata !27, null}
!630 = metadata !{i32 221, i32 0, metadata !27, null}
!631 = metadata !{i32 30}
!632 = metadata !{i32 222, i32 0, metadata !27, null}
!633 = metadata !{i32 223, i32 0, metadata !27, null}
!634 = metadata !{i32 225, i32 0, metadata !27, null}
!635 = metadata !{i32 226, i32 0, metadata !27, null}
!636 = metadata !{i32 227, i32 0, metadata !27, null}
!637 = metadata !{i32 229, i32 0, metadata !27, null}
!638 = metadata !{i32 230, i32 0, metadata !27, null}
!639 = metadata !{i32 231, i32 0, metadata !27, null}
!640 = metadata !{i32 233, i32 0, metadata !27, null}
!641 = metadata !{i32 234, i32 0, metadata !27, null}
!642 = metadata !{i32 235, i32 0, metadata !27, null}
!643 = metadata !{i32 236, i32 0, metadata !27, null}
!644 = metadata !{i32 238, i32 0, metadata !27, null}
!645 = metadata !{i32 239, i32 0, metadata !646, null}
!646 = metadata !{i32 786443, metadata !1, metadata !27, i32 238, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!647 = metadata !{i32 240, i32 0, metadata !646, null}
!648 = metadata !{i32 241, i32 0, metadata !646, null}
!649 = metadata !{i32 242, i32 0, metadata !646, null}
!650 = metadata !{i32 246, i32 0, metadata !27, null}
!651 = metadata !{metadata !"int", metadata !616}
!652 = metadata !{i32 247, i32 0, metadata !27, null}
!653 = metadata !{i32 248, i32 0, metadata !27, null}
!654 = metadata !{i32 249, i32 0, metadata !27, null}
!655 = metadata !{i32 250, i32 0, metadata !27, null}
!656 = metadata !{i32 251, i32 0, metadata !27, null}
!657 = metadata !{i32 252, i32 0, metadata !27, null}
!658 = metadata !{i32 253, i32 0, metadata !27, null}
!659 = metadata !{i32 255, i32 0, metadata !27, null}
!660 = metadata !{i32 256, i32 0, metadata !27, null}
!661 = metadata !{i32 257, i32 0, metadata !27, null}
!662 = metadata !{i32 258, i32 0, metadata !27, null}
!663 = metadata !{i32 260, i32 0, metadata !27, null}
!664 = metadata !{i32 261, i32 0, metadata !27, null}
!665 = metadata !{i32 262, i32 0, metadata !27, null}
!666 = metadata !{i32 263, i32 0, metadata !27, null}
!667 = metadata !{i32 264, i32 0, metadata !27, null}
!668 = metadata !{i32 190, i32 0, metadata !592, metadata !669}
!669 = metadata !{i32 265, i32 0, metadata !27, null}
!670 = metadata !{i32 191, i32 0, metadata !592, metadata !669}
!671 = metadata !{i32 177, i32 0, metadata !588, metadata !672}
!672 = metadata !{i32 266, i32 0, metadata !27, null}
!673 = metadata !{i32 178, i32 0, metadata !588, metadata !672}
!674 = metadata !{i32 179, i32 0, metadata !588, metadata !672}
!675 = metadata !{i32 180, i32 0, metadata !676, metadata !672}
!676 = metadata !{i32 786443, metadata !1, metadata !588, i32 180, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!677 = metadata !{i32 786688, metadata !588, metadata !"i", metadata !21, i32 176, metadata !63, i32 0, metadata !672} ; [ DW_TAG_auto_variable ] [i] [line 176]
!678 = metadata !{i32 181, i32 0, metadata !679, metadata !672}
!679 = metadata !{i32 786443, metadata !1, metadata !588, i32 181, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!680 = metadata !{i32 182, i32 0, metadata !588, metadata !672}
!681 = metadata !{i32 267, i32 0, metadata !27, null}
!682 = metadata !{i32 159, i32 0, metadata !599, null}
!683 = metadata !{i32 161, i32 0, metadata !599, null}
!684 = metadata !{i32 162, i32 0, metadata !599, null}
!685 = metadata !{i32 166, i32 0, metadata !595, null}
!686 = metadata !{i32 168, i32 0, metadata !595, null}
!687 = metadata !{i32 169, i32 0, metadata !595, null}
!688 = metadata !{i32 464, i32 0, metadata !135, null}
!689 = metadata !{i32 468, i32 0, metadata !135, null}
!690 = metadata !{i32 469, i32 0, metadata !135, null}
!691 = metadata !{i32 470, i32 0, metadata !135, null}
!692 = metadata !{i32 471, i32 0, metadata !135, null}
!693 = metadata !{i32 474, i32 0, metadata !135, null}
!694 = metadata !{i32 486, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !696, i32 485, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!696 = metadata !{i32 786443, metadata !1, metadata !135, i32 474, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!697 = metadata !{i32 480, i32 0, metadata !696, null}
!698 = metadata !{i32 481, i32 0, metadata !699, null}
!699 = metadata !{i32 786443, metadata !1, metadata !696, i32 480, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!700 = metadata !{i32 482, i32 0, metadata !699, null}
!701 = metadata !{i32 492, i32 0, metadata !702, null}
!702 = metadata !{i32 786443, metadata !1, metadata !696, i32 491, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!703 = metadata !{i32 487, i32 0, metadata !695, null}
!704 = metadata !{i32 494, i32 0, metadata !702, null}
!705 = metadata !{i32 500, i32 0, metadata !696, null}
!706 = metadata !{i32 501, i32 0, metadata !696, null}
!707 = metadata !{i32 503, i32 0, metadata !696, null}
!708 = metadata !{i32 504, i32 0, metadata !696, null}
!709 = metadata !{i32 198, i32 0, metadata !545, metadata !708}
!710 = metadata !{i32 506, i32 0, metadata !696, null}
!711 = metadata !{i32 507, i32 0, metadata !696, null}
!712 = metadata !{i32 510, i32 0, metadata !696, null}
!713 = metadata !{i32 511, i32 0, metadata !696, null}
!714 = metadata !{i32 513, i32 0, metadata !696, null}
!715 = metadata !{i32 514, i32 0, metadata !696, null}
!716 = metadata !{i32 515, i32 0, metadata !696, null}
!717 = metadata !{i32 198, i32 0, metadata !545, metadata !716}
!718 = metadata !{i32 517, i32 0, metadata !696, null}
!719 = metadata !{i32 518, i32 0, metadata !696, null}
!720 = metadata !{i32 521, i32 0, metadata !135, null}
!721 = metadata !{i32 418, i32 0, metadata !550, null}
!722 = metadata !{i8 0}
!723 = metadata !{i32 420, i32 0, metadata !550, null}
!724 = metadata !{i32 421, i32 0, metadata !550, null}
!725 = metadata !{i32 422, i32 0, metadata !550, null}
!726 = metadata !{i32 426, i32 0, metadata !727, null}
!727 = metadata !{i32 786443, metadata !1, metadata !550, i32 424, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!728 = metadata !{i32 401, i32 0, metadata !729, metadata !730}
!729 = metadata !{i32 786443, metadata !1, metadata !584, i32 395, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!730 = metadata !{i32 427, i32 0, metadata !731, null}
!731 = metadata !{i32 786443, metadata !1, metadata !727, i32 426, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!732 = metadata !{i32 398, i32 0, metadata !729, metadata !730}
!733 = metadata !{i32 428, i32 0, metadata !731, null}
!734 = metadata !{i32 429, i32 0, metadata !731, null}
!735 = metadata !{i32 198, i32 0, metadata !545, metadata !736}
!736 = metadata !{i32 431, i32 0, metadata !731, null}
!737 = metadata !{i32 177, i32 0, metadata !588, metadata !738}
!738 = metadata !{i32 432, i32 0, metadata !731, null}
!739 = metadata !{i32 180, i32 0, metadata !676, metadata !738}
!740 = metadata !{i32 182, i32 0, metadata !588, metadata !738}
!741 = metadata !{i32 404, i32 0, metadata !729, metadata !730}
!742 = metadata !{i32 355, i32 0, metadata !574, metadata !743}
!743 = metadata !{i32 440, i32 0, metadata !744, null}
!744 = metadata !{i32 786443, metadata !1, metadata !727, i32 439, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!745 = metadata !{i32 359, i32 0, metadata !577, metadata !743}
!746 = metadata !{i32 424, i32 0, metadata !550, null}
!747 = metadata !{i32 786689, metadata !584, metadata !"s", metadata !21, i32 16777607, metadata !65, i32 0, metadata !730} ; [ DW_TAG_arg_variable ] [s] [line 391]
!748 = metadata !{i32 391, i32 0, metadata !584, metadata !730}
!749 = metadata !{i32 786688, metadata !584, metadata !"progress_out", metadata !21, i32 393, metadata !102, i32 0, metadata !730} ; [ DW_TAG_auto_variable ] [progress_out] [line 393]
!750 = metadata !{i32 393, i32 0, metadata !584, metadata !730}
!751 = metadata !{i8 1}
!752 = metadata !{i32 403, i32 0, metadata !729, metadata !730}
!753 = metadata !{i32 405, i32 0, metadata !729, metadata !730}
!754 = metadata !{i32 406, i32 0, metadata !729, metadata !730}
!755 = metadata !{i32 407, i32 0, metadata !729, metadata !730}
!756 = metadata !{i32 408, i32 0, metadata !729, metadata !730}
!757 = metadata !{i32 409, i32 0, metadata !729, metadata !730}
!758 = metadata !{i32 786689, metadata !545, metadata !"s", metadata !21, i32 16777412, metadata !65, i32 0, metadata !736} ; [ DW_TAG_arg_variable ] [s] [line 196]
!759 = metadata !{i32 196, i32 0, metadata !545, metadata !736}
!760 = metadata !{i32 786689, metadata !588, metadata !"s", metadata !21, i32 16777390, metadata !65, i32 0, metadata !738} ; [ DW_TAG_arg_variable ] [s] [line 174]
!761 = metadata !{i32 174, i32 0, metadata !588, metadata !738}
!762 = metadata !{i32 178, i32 0, metadata !588, metadata !738}
!763 = metadata !{i32 179, i32 0, metadata !588, metadata !738}
!764 = metadata !{i32 786688, metadata !588, metadata !"i", metadata !21, i32 176, metadata !63, i32 0, metadata !738} ; [ DW_TAG_auto_variable ] [i] [line 176]
!765 = metadata !{i32 181, i32 0, metadata !679, metadata !738}
!766 = metadata !{i32 433, i32 0, metadata !731, null}
!767 = metadata !{i32 434, i32 0, metadata !731, null}
!768 = metadata !{i32 786689, metadata !545, metadata !"s", metadata !21, i32 16777412, metadata !65, i32 0, metadata !769} ; [ DW_TAG_arg_variable ] [s] [line 196]
!769 = metadata !{i32 436, i32 0, metadata !731, null}
!770 = metadata !{i32 196, i32 0, metadata !545, metadata !769}
!771 = metadata !{i32 198, i32 0, metadata !545, metadata !769}
!772 = metadata !{i32 350, i32 0, metadata !568, metadata !743}
!773 = metadata !{i32 439, i32 0, metadata !727, null}
!774 = metadata !{i32 786689, metadata !568, metadata !"s", metadata !21, i32 16777562, metadata !65, i32 0, metadata !743} ; [ DW_TAG_arg_variable ] [s] [line 346]
!775 = metadata !{i32 346, i32 0, metadata !568, metadata !743}
!776 = metadata !{i32 786688, metadata !568, metadata !"progress_in", metadata !21, i32 348, metadata !102, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [progress_in] [line 348]
!777 = metadata !{i32 348, i32 0, metadata !568, metadata !743}
!778 = metadata !{i32 371, i32 0, metadata !580, metadata !743}
!779 = metadata !{i32 373, i32 0, metadata !580, metadata !743}
!780 = metadata !{i32 357, i32 0, metadata !574, metadata !743}
!781 = metadata !{i32 358, i32 0, metadata !574, metadata !743}
!782 = metadata !{i32 359, i32 0, metadata !573, metadata !743}
!783 = metadata !{i32 786688, metadata !573, metadata !"zchh", metadata !21, i32 359, metadata !74, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [zchh] [line 359]
!784 = metadata !{i32 786688, metadata !577, metadata !"ch", metadata !21, i32 359, metadata !83, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [ch] [line 359]
!785 = metadata !{i32 359, i32 0, metadata !786, metadata !743}
!786 = metadata !{i32 786443, metadata !1, metadata !577, i32 359, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!787 = metadata !{i32 359, i32 0, metadata !788, metadata !743}
!788 = metadata !{i32 786443, metadata !1, metadata !573, i32 359, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!789 = metadata !{i32 359, i32 0, metadata !790, metadata !743}
!790 = metadata !{i32 786443, metadata !1, metadata !573, i32 359, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!791 = metadata !{i32 360, i32 0, metadata !574, metadata !743}
!792 = metadata !{i32 361, i32 0, metadata !574, metadata !743}
!793 = metadata !{i32 362, i32 0, metadata !574, metadata !743}
!794 = metadata !{i32 363, i32 0, metadata !574, metadata !743}
!795 = metadata !{i32 375, i32 0, metadata !580, metadata !743}
!796 = metadata !{i32 376, i32 0, metadata !580, metadata !743}
!797 = metadata !{i32 377, i32 0, metadata !579, metadata !743}
!798 = metadata !{i32 786688, metadata !579, metadata !"zchh", metadata !21, i32 377, metadata !74, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [zchh] [line 377]
!799 = metadata !{i32 377, i32 0, metadata !583, metadata !743}
!800 = metadata !{i32 786688, metadata !583, metadata !"ch", metadata !21, i32 377, metadata !83, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [ch] [line 377]
!801 = metadata !{i32 377, i32 0, metadata !802, metadata !743}
!802 = metadata !{i32 786443, metadata !1, metadata !583, i32 377, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!803 = metadata !{i32 377, i32 0, metadata !804, metadata !743}
!804 = metadata !{i32 786443, metadata !1, metadata !579, i32 377, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!805 = metadata !{i32 377, i32 0, metadata !806, metadata !743}
!806 = metadata !{i32 786443, metadata !1, metadata !579, i32 377, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!807 = metadata !{i32 378, i32 0, metadata !580, metadata !743}
!808 = metadata !{i32 379, i32 0, metadata !580, metadata !743}
!809 = metadata !{i32 380, i32 0, metadata !580, metadata !743}
!810 = metadata !{i32 381, i32 0, metadata !580, metadata !743}
!811 = metadata !{i32 382, i32 0, metadata !580, metadata !743}
!812 = metadata !{i32 441, i32 0, metadata !744, null}
!813 = metadata !{i32 786689, metadata !558, metadata !"s", metadata !21, i32 16777525, metadata !65, i32 0, metadata !814} ; [ DW_TAG_arg_variable ] [s] [line 309]
!814 = metadata !{i32 442, i32 0, metadata !815, null}
!815 = metadata !{i32 786443, metadata !1, metadata !744, i32 441, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!816 = metadata !{i32 309, i32 0, metadata !558, metadata !814}
!817 = metadata !{i32 311, i32 0, metadata !558, metadata !814}
!818 = metadata !{i32 443, i32 0, metadata !815, null}
!819 = metadata !{i32 786689, metadata !592, metadata !"s", metadata !21, i32 16777404, metadata !65, i32 0, metadata !820} ; [ DW_TAG_arg_variable ] [s] [line 188]
!820 = metadata !{i32 312, i32 0, metadata !558, metadata !814}
!821 = metadata !{i32 188, i32 0, metadata !592, metadata !820}
!822 = metadata !{i32 190, i32 0, metadata !592, metadata !820}
!823 = metadata !{i32 191, i32 0, metadata !592, metadata !820}
!824 = metadata !{i32 444, i32 0, metadata !815, null}
!825 = metadata !{i32 445, i32 0, metadata !815, null}
!826 = metadata !{i32 447, i32 0, metadata !744, null}
!827 = metadata !{i32 448, i32 0, metadata !828, null}
!828 = metadata !{i32 786443, metadata !1, metadata !744, i32 447, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!829 = metadata !{i32 449, i32 0, metadata !828, null}
!830 = metadata !{i32 450, i32 0, metadata !828, null}
!831 = metadata !{i32 452, i32 0, metadata !744, null}
!832 = metadata !{i32 459, i32 0, metadata !550, null}
!833 = metadata !{i32 525, i32 0, metadata !143, null}
!834 = metadata !{i32 528, i32 0, metadata !143, null}
!835 = metadata !{i32 529, i32 0, metadata !143, null}
!836 = metadata !{i32 530, i32 0, metadata !143, null}
!837 = metadata !{i32 531, i32 0, metadata !143, null}
!838 = metadata !{i32 533, i32 0, metadata !143, null}
!839 = metadata !{i32 534, i32 0, metadata !143, null}
!840 = metadata !{i32 535, i32 0, metadata !143, null}
!841 = metadata !{i32 536, i32 0, metadata !143, null}
!842 = metadata !{i32 538, i32 0, metadata !143, null}
!843 = metadata !{i32 540, i32 0, metadata !143, null}
!844 = metadata !{i32 550, i32 0, metadata !149, null}
!845 = metadata !{i32 551, i32 0, metadata !149, null}
!846 = metadata !{i32 552, i32 0, metadata !149, null}
!847 = metadata !{i32 558, i32 0, metadata !149, null}
!848 = metadata !{i32 559, i32 0, metadata !149, null}
!849 = metadata !{i32 560, i32 0, metadata !149, null}
!850 = metadata !{i32 562, i32 0, metadata !149, null}
!851 = metadata !{i32 563, i32 0, metadata !149, null}
!852 = metadata !{i32 565, i32 0, metadata !149, null}
!853 = metadata !{i32 566, i32 0, metadata !149, null}
!854 = metadata !{i32 567, i32 0, metadata !149, null}
!855 = metadata !{i32 568, i32 0, metadata !149, null}
!856 = metadata !{i32 569, i32 0, metadata !149, null}
!857 = metadata !{i32 570, i32 0, metadata !149, null}
!858 = metadata !{i32 571, i32 0, metadata !149, null}
!859 = metadata !{i32 572, i32 0, metadata !149, null}
!860 = metadata !{i32 573, i32 0, metadata !149, null}
!861 = metadata !{i32 574, i32 0, metadata !149, null}
!862 = metadata !{i32 575, i32 0, metadata !149, null}
!863 = metadata !{i32 576, i32 0, metadata !149, null}
!864 = metadata !{i32 577, i32 0, metadata !149, null}
!865 = metadata !{i32 580, i32 0, metadata !149, null}
!866 = metadata !{i32 581, i32 0, metadata !149, null}
!867 = metadata !{i32 582, i32 0, metadata !149, null}
!868 = metadata !{i32 579, i32 0, metadata !149, null}
!869 = metadata !{i32 584, i32 0, metadata !149, null}
!870 = metadata !{i32 743, i32 0, metadata !239, null}
!871 = metadata !{i32 746, i32 0, metadata !239, null}
!872 = metadata !{i32 256}
!873 = metadata !{i32 747, i32 0, metadata !239, null}
!874 = metadata !{i32 748, i32 0, metadata !239, null}
!875 = metadata !{i32 749, i32 0, metadata !876, null}
!876 = metadata !{i32 786443, metadata !1, metadata !239, i32 748, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!877 = metadata !{i32 750, i32 0, metadata !876, null}
!878 = metadata !{i32 751, i32 0, metadata !876, null}
!879 = metadata !{i32 753, i32 0, metadata !239, null}
!880 = metadata !{i32 864, i32 0, metadata !248, null}
!881 = metadata !{i32 868, i32 0, metadata !248, null}
!882 = metadata !{i32 869, i32 0, metadata !248, null}
!883 = metadata !{i32 870, i32 0, metadata !248, null}
!884 = metadata !{i32 871, i32 0, metadata !248, null}
!885 = metadata !{i32 874, i32 0, metadata !255, null}
!886 = metadata !{i32 876, i32 0, metadata !887, null}
!887 = metadata !{i32 786443, metadata !1, metadata !255, i32 875, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!888 = metadata !{i32 597, i32 0, metadata !522, metadata !889}
!889 = metadata !{i32 878, i32 0, metadata !887, null}
!890 = metadata !{i32 649, i32 0, metadata !529, metadata !889}
!891 = metadata !{i32 650, i32 0, metadata !529, metadata !889}
!892 = metadata !{i32 651, i32 0, metadata !529, metadata !889}
!893 = metadata !{i32 652, i32 0, metadata !529, metadata !889}
!894 = metadata !{i32 653, i32 0, metadata !529, metadata !889}
!895 = metadata !{i32 654, i32 0, metadata !529, metadata !889}
!896 = metadata !{i32 655, i32 0, metadata !529, metadata !889}
!897 = metadata !{i32 661, i32 0, metadata !529, metadata !889}
!898 = metadata !{i32 622, i32 0, metadata !899, metadata !889}
!899 = metadata !{i32 786443, metadata !1, metadata !900, i32 599, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!900 = metadata !{i32 786443, metadata !1, metadata !522, i32 597, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!901 = metadata !{i32 622, i32 0, metadata !902, metadata !889}
!902 = metadata !{i32 786443, metadata !1, metadata !899, i32 622, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!903 = metadata !{i32 882, i32 0, metadata !904, null}
!904 = metadata !{i32 786443, metadata !1, metadata !887, i32 880, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!905 = metadata !{i32 883, i32 0, metadata !904, null}
!906 = metadata !{i32 888, i32 0, metadata !904, null}
!907 = metadata !{i32 840, i32 0, metadata !908, metadata !910}
!908 = metadata !{i32 786443, metadata !1, metadata !909, i32 817, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!909 = metadata !{i32 786443, metadata !1, metadata !541, i32 815, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!910 = metadata !{i32 877, i32 0, metadata !887, null}
!911 = metadata !{i32 786689, metadata !541, metadata !"s", metadata !21, i32 16777978, metadata !157, i32 0, metadata !910} ; [ DW_TAG_arg_variable ] [s] [line 762]
!912 = metadata !{i32 762, i32 0, metadata !541, metadata !910}
!913 = metadata !{i32 820, i32 0, metadata !914, metadata !910}
!914 = metadata !{i32 786443, metadata !1, metadata !908, i32 819, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!915 = metadata !{i32 766, i32 0, metadata !541, metadata !910}
!916 = metadata !{i32 771, i32 0, metadata !917, metadata !910}
!917 = metadata !{i32 786443, metadata !1, metadata !918, i32 770, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!918 = metadata !{i32 786443, metadata !1, metadata !919, i32 768, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!919 = metadata !{i32 786443, metadata !1, metadata !541, i32 766, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!920 = metadata !{i32 772, i32 0, metadata !917, metadata !910}
!921 = metadata !{i32 773, i32 0, metadata !917, metadata !910}
!922 = metadata !{i32 774, i32 0, metadata !923, metadata !910}
!923 = metadata !{i32 786443, metadata !1, metadata !917, i32 774, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!924 = metadata !{i32 775, i32 0, metadata !917, metadata !910}
!925 = metadata !{i32 776, i32 0, metadata !917, metadata !910}
!926 = metadata !{i32 777, i32 0, metadata !917, metadata !910}
!927 = metadata !{i32 778, i32 0, metadata !917, metadata !910}
!928 = metadata !{i32 779, i32 0, metadata !917, metadata !910}
!929 = metadata !{i32 783, i32 0, metadata !918, metadata !910}
!930 = metadata !{i32 786, i32 0, metadata !918, metadata !910}
!931 = metadata !{i32 789, i32 0, metadata !918, metadata !910}
!932 = metadata !{i32 790, i32 0, metadata !918, metadata !910}
!933 = metadata !{i32 791, i32 0, metadata !918, metadata !910}
!934 = metadata !{i32 786689, metadata !239, metadata !"indx", metadata !21, i32 16777959, metadata !63, i32 0, metadata !933} ; [ DW_TAG_arg_variable ] [indx] [line 743]
!935 = metadata !{i32 743, i32 0, metadata !239, metadata !933}
!936 = metadata !{i32 786688, metadata !239, metadata !"nb", metadata !21, i32 745, metadata !63, i32 0, metadata !933} ; [ DW_TAG_auto_variable ] [nb] [line 745]
!937 = metadata !{i32 746, i32 0, metadata !239, metadata !933}
!938 = metadata !{i32 786688, metadata !239, metadata !"na", metadata !21, i32 745, metadata !63, i32 0, metadata !933} ; [ DW_TAG_auto_variable ] [na] [line 745]
!939 = metadata !{i32 747, i32 0, metadata !239, metadata !933}
!940 = metadata !{i32 748, i32 0, metadata !239, metadata !933}
!941 = metadata !{i32 749, i32 0, metadata !876, metadata !933}
!942 = metadata !{i32 786688, metadata !239, metadata !"mid", metadata !21, i32 745, metadata !63, i32 0, metadata !933} ; [ DW_TAG_auto_variable ] [mid] [line 745]
!943 = metadata !{i32 750, i32 0, metadata !876, metadata !933}
!944 = metadata !{i32 751, i32 0, metadata !876, metadata !933}
!945 = metadata !{metadata !"short", metadata !616}
!946 = metadata !{i32 791, i32 0, metadata !947, metadata !910}
!947 = metadata !{i32 786443, metadata !1, metadata !918, i32 791, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!948 = metadata !{i32 792, i32 0, metadata !918, metadata !910}
!949 = metadata !{i32 793, i32 0, metadata !918, metadata !910}
!950 = metadata !{i32 794, i32 0, metadata !918, metadata !910}
!951 = metadata !{i32 794, i32 0, metadata !952, metadata !910}
!952 = metadata !{i32 786443, metadata !1, metadata !918, i32 794, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!953 = metadata !{i32 796, i32 0, metadata !918, metadata !910}
!954 = metadata !{i32 786689, metadata !239, metadata !"indx", metadata !21, i32 16777959, metadata !63, i32 0, metadata !955} ; [ DW_TAG_arg_variable ] [indx] [line 743]
!955 = metadata !{i32 797, i32 0, metadata !918, metadata !910}
!956 = metadata !{i32 743, i32 0, metadata !239, metadata !955}
!957 = metadata !{i32 786688, metadata !239, metadata !"nb", metadata !21, i32 745, metadata !63, i32 0, metadata !955} ; [ DW_TAG_auto_variable ] [nb] [line 745]
!958 = metadata !{i32 746, i32 0, metadata !239, metadata !955}
!959 = metadata !{i32 786688, metadata !239, metadata !"na", metadata !21, i32 745, metadata !63, i32 0, metadata !955} ; [ DW_TAG_auto_variable ] [na] [line 745]
!960 = metadata !{i32 747, i32 0, metadata !239, metadata !955}
!961 = metadata !{i32 748, i32 0, metadata !239, metadata !955}
!962 = metadata !{i32 749, i32 0, metadata !876, metadata !955}
!963 = metadata !{i32 786688, metadata !239, metadata !"mid", metadata !21, i32 745, metadata !63, i32 0, metadata !955} ; [ DW_TAG_auto_variable ] [mid] [line 745]
!964 = metadata !{i32 750, i32 0, metadata !876, metadata !955}
!965 = metadata !{i32 751, i32 0, metadata !876, metadata !955}
!966 = metadata !{i32 797, i32 0, metadata !967, metadata !910}
!967 = metadata !{i32 786443, metadata !1, metadata !918, i32 797, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!968 = metadata !{i32 798, i32 0, metadata !918, metadata !910}
!969 = metadata !{i32 799, i32 0, metadata !918, metadata !910}
!970 = metadata !{i32 800, i32 0, metadata !918, metadata !910}
!971 = metadata !{i32 800, i32 0, metadata !972, metadata !910}
!972 = metadata !{i32 786443, metadata !1, metadata !918, i32 800, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!973 = metadata !{i32 802, i32 0, metadata !918, metadata !910}
!974 = metadata !{i32 786689, metadata !239, metadata !"indx", metadata !21, i32 16777959, metadata !63, i32 0, metadata !975} ; [ DW_TAG_arg_variable ] [indx] [line 743]
!975 = metadata !{i32 803, i32 0, metadata !918, metadata !910}
!976 = metadata !{i32 743, i32 0, metadata !239, metadata !975}
!977 = metadata !{i32 786688, metadata !239, metadata !"nb", metadata !21, i32 745, metadata !63, i32 0, metadata !975} ; [ DW_TAG_auto_variable ] [nb] [line 745]
!978 = metadata !{i32 746, i32 0, metadata !239, metadata !975}
!979 = metadata !{i32 786688, metadata !239, metadata !"na", metadata !21, i32 745, metadata !63, i32 0, metadata !975} ; [ DW_TAG_auto_variable ] [na] [line 745]
!980 = metadata !{i32 747, i32 0, metadata !239, metadata !975}
!981 = metadata !{i32 748, i32 0, metadata !239, metadata !975}
!982 = metadata !{i32 749, i32 0, metadata !876, metadata !975}
!983 = metadata !{i32 786688, metadata !239, metadata !"mid", metadata !21, i32 745, metadata !63, i32 0, metadata !975} ; [ DW_TAG_auto_variable ] [mid] [line 745]
!984 = metadata !{i32 750, i32 0, metadata !876, metadata !975}
!985 = metadata !{i32 751, i32 0, metadata !876, metadata !975}
!986 = metadata !{i32 803, i32 0, metadata !987, metadata !910}
!987 = metadata !{i32 786443, metadata !1, metadata !918, i32 803, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!988 = metadata !{i32 804, i32 0, metadata !918, metadata !910}
!989 = metadata !{i32 805, i32 0, metadata !918, metadata !910}
!990 = metadata !{i32 806, i32 0, metadata !918, metadata !910}
!991 = metadata !{i32 806, i32 0, metadata !992, metadata !910}
!992 = metadata !{i32 786443, metadata !1, metadata !918, i32 806, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!993 = metadata !{i32 749, i32 0, metadata !876, metadata !994}
!994 = metadata !{i32 808, i32 0, metadata !918, metadata !910}
!995 = metadata !{i32 786688, metadata !239, metadata !"mid", metadata !21, i32 745, metadata !63, i32 0, metadata !994} ; [ DW_TAG_auto_variable ] [mid] [line 745]
!996 = metadata !{i32 750, i32 0, metadata !876, metadata !994}
!997 = metadata !{i32 751, i32 0, metadata !876, metadata !994}
!998 = metadata !{i32 808, i32 0, metadata !999, metadata !910}
!999 = metadata !{i32 786443, metadata !1, metadata !918, i32 808, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1000 = metadata !{i32 809, i32 0, metadata !918, metadata !910}
!1001 = metadata !{i32 810, i32 0, metadata !918, metadata !910}
!1002 = metadata !{i32 786689, metadata !239, metadata !"indx", metadata !21, i32 16777959, metadata !63, i32 0, metadata !1003} ; [ DW_TAG_arg_variable ] [indx] [line 743]
!1003 = metadata !{i32 811, i32 0, metadata !918, metadata !910}
!1004 = metadata !{i32 743, i32 0, metadata !239, metadata !1003}
!1005 = metadata !{i32 786688, metadata !239, metadata !"nb", metadata !21, i32 745, metadata !63, i32 0, metadata !1003} ; [ DW_TAG_auto_variable ] [nb] [line 745]
!1006 = metadata !{i32 746, i32 0, metadata !239, metadata !1003}
!1007 = metadata !{i32 786688, metadata !239, metadata !"na", metadata !21, i32 745, metadata !63, i32 0, metadata !1003} ; [ DW_TAG_auto_variable ] [na] [line 745]
!1008 = metadata !{i32 747, i32 0, metadata !239, metadata !1003}
!1009 = metadata !{i32 748, i32 0, metadata !239, metadata !1003}
!1010 = metadata !{i32 749, i32 0, metadata !876, metadata !1003}
!1011 = metadata !{i32 786688, metadata !239, metadata !"mid", metadata !21, i32 745, metadata !63, i32 0, metadata !1003} ; [ DW_TAG_auto_variable ] [mid] [line 745]
!1012 = metadata !{i32 750, i32 0, metadata !876, metadata !1003}
!1013 = metadata !{i32 751, i32 0, metadata !876, metadata !1003}
!1014 = metadata !{i32 811, i32 0, metadata !1015, metadata !910}
!1015 = metadata !{i32 786443, metadata !1, metadata !918, i32 811, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1016 = metadata !{i32 812, i32 0, metadata !918, metadata !910}
!1017 = metadata !{i32 813, i32 0, metadata !918, metadata !910}
!1018 = metadata !{i32 821, i32 0, metadata !914, metadata !910}
!1019 = metadata !{i32 822, i32 0, metadata !914, metadata !910}
!1020 = metadata !{i32 823, i32 0, metadata !1021, metadata !910}
!1021 = metadata !{i32 786443, metadata !1, metadata !914, i32 823, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1022 = metadata !{i32 824, i32 0, metadata !914, metadata !910}
!1023 = metadata !{i32 825, i32 0, metadata !914, metadata !910}
!1024 = metadata !{i32 826, i32 0, metadata !914, metadata !910}
!1025 = metadata !{i32 827, i32 0, metadata !914, metadata !910}
!1026 = metadata !{i32 828, i32 0, metadata !914, metadata !910}
!1027 = metadata !{i32 832, i32 0, metadata !908, metadata !910}
!1028 = metadata !{i32 835, i32 0, metadata !908, metadata !910}
!1029 = metadata !{i32 838, i32 0, metadata !908, metadata !910}
!1030 = metadata !{i32 839, i32 0, metadata !908, metadata !910}
!1031 = metadata !{i32 786689, metadata !239, metadata !"indx", metadata !21, i32 16777959, metadata !63, i32 0, metadata !907} ; [ DW_TAG_arg_variable ] [indx] [line 743]
!1032 = metadata !{i32 743, i32 0, metadata !239, metadata !907}
!1033 = metadata !{i32 786688, metadata !239, metadata !"nb", metadata !21, i32 745, metadata !63, i32 0, metadata !907} ; [ DW_TAG_auto_variable ] [nb] [line 745]
!1034 = metadata !{i32 746, i32 0, metadata !239, metadata !907}
!1035 = metadata !{i32 786688, metadata !239, metadata !"na", metadata !21, i32 745, metadata !63, i32 0, metadata !907} ; [ DW_TAG_auto_variable ] [na] [line 745]
!1036 = metadata !{i32 747, i32 0, metadata !239, metadata !907}
!1037 = metadata !{i32 748, i32 0, metadata !239, metadata !907}
!1038 = metadata !{i32 749, i32 0, metadata !876, metadata !907}
!1039 = metadata !{i32 786688, metadata !239, metadata !"mid", metadata !21, i32 745, metadata !63, i32 0, metadata !907} ; [ DW_TAG_auto_variable ] [mid] [line 745]
!1040 = metadata !{i32 750, i32 0, metadata !876, metadata !907}
!1041 = metadata !{i32 751, i32 0, metadata !876, metadata !907}
!1042 = metadata !{i32 841, i32 0, metadata !908, metadata !910}
!1043 = metadata !{i32 842, i32 0, metadata !908, metadata !910}
!1044 = metadata !{i32 842, i32 0, metadata !1045, metadata !910}
!1045 = metadata !{i32 786443, metadata !1, metadata !908, i32 842, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1046 = metadata !{i32 844, i32 0, metadata !908, metadata !910}
!1047 = metadata !{i32 786689, metadata !239, metadata !"indx", metadata !21, i32 16777959, metadata !63, i32 0, metadata !1048} ; [ DW_TAG_arg_variable ] [indx] [line 743]
!1048 = metadata !{i32 845, i32 0, metadata !908, metadata !910}
!1049 = metadata !{i32 743, i32 0, metadata !239, metadata !1048}
!1050 = metadata !{i32 786688, metadata !239, metadata !"nb", metadata !21, i32 745, metadata !63, i32 0, metadata !1048} ; [ DW_TAG_auto_variable ] [nb] [line 745]
!1051 = metadata !{i32 746, i32 0, metadata !239, metadata !1048}
!1052 = metadata !{i32 786688, metadata !239, metadata !"na", metadata !21, i32 745, metadata !63, i32 0, metadata !1048} ; [ DW_TAG_auto_variable ] [na] [line 745]
!1053 = metadata !{i32 747, i32 0, metadata !239, metadata !1048}
!1054 = metadata !{i32 748, i32 0, metadata !239, metadata !1048}
!1055 = metadata !{i32 749, i32 0, metadata !876, metadata !1048}
!1056 = metadata !{i32 786688, metadata !239, metadata !"mid", metadata !21, i32 745, metadata !63, i32 0, metadata !1048} ; [ DW_TAG_auto_variable ] [mid] [line 745]
!1057 = metadata !{i32 750, i32 0, metadata !876, metadata !1048}
!1058 = metadata !{i32 751, i32 0, metadata !876, metadata !1048}
!1059 = metadata !{i32 846, i32 0, metadata !908, metadata !910}
!1060 = metadata !{i32 847, i32 0, metadata !908, metadata !910}
!1061 = metadata !{i32 847, i32 0, metadata !1062, metadata !910}
!1062 = metadata !{i32 786443, metadata !1, metadata !908, i32 847, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1063 = metadata !{i32 849, i32 0, metadata !908, metadata !910}
!1064 = metadata !{i32 786689, metadata !239, metadata !"indx", metadata !21, i32 16777959, metadata !63, i32 0, metadata !1065} ; [ DW_TAG_arg_variable ] [indx] [line 743]
!1065 = metadata !{i32 850, i32 0, metadata !908, metadata !910}
!1066 = metadata !{i32 743, i32 0, metadata !239, metadata !1065}
!1067 = metadata !{i32 786688, metadata !239, metadata !"nb", metadata !21, i32 745, metadata !63, i32 0, metadata !1065} ; [ DW_TAG_auto_variable ] [nb] [line 745]
!1068 = metadata !{i32 746, i32 0, metadata !239, metadata !1065}
!1069 = metadata !{i32 786688, metadata !239, metadata !"na", metadata !21, i32 745, metadata !63, i32 0, metadata !1065} ; [ DW_TAG_auto_variable ] [na] [line 745]
!1070 = metadata !{i32 747, i32 0, metadata !239, metadata !1065}
!1071 = metadata !{i32 748, i32 0, metadata !239, metadata !1065}
!1072 = metadata !{i32 749, i32 0, metadata !876, metadata !1065}
!1073 = metadata !{i32 786688, metadata !239, metadata !"mid", metadata !21, i32 745, metadata !63, i32 0, metadata !1065} ; [ DW_TAG_auto_variable ] [mid] [line 745]
!1074 = metadata !{i32 750, i32 0, metadata !876, metadata !1065}
!1075 = metadata !{i32 751, i32 0, metadata !876, metadata !1065}
!1076 = metadata !{i32 851, i32 0, metadata !908, metadata !910}
!1077 = metadata !{i32 852, i32 0, metadata !908, metadata !910}
!1078 = metadata !{i32 852, i32 0, metadata !1079, metadata !910}
!1079 = metadata !{i32 786443, metadata !1, metadata !908, i32 852, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1080 = metadata !{i32 749, i32 0, metadata !876, metadata !1081}
!1081 = metadata !{i32 854, i32 0, metadata !908, metadata !910}
!1082 = metadata !{i32 786688, metadata !239, metadata !"mid", metadata !21, i32 745, metadata !63, i32 0, metadata !1081} ; [ DW_TAG_auto_variable ] [mid] [line 745]
!1083 = metadata !{i32 750, i32 0, metadata !876, metadata !1081}
!1084 = metadata !{i32 751, i32 0, metadata !876, metadata !1081}
!1085 = metadata !{i32 855, i32 0, metadata !908, metadata !910}
!1086 = metadata !{i32 786689, metadata !239, metadata !"indx", metadata !21, i32 16777959, metadata !63, i32 0, metadata !1087} ; [ DW_TAG_arg_variable ] [indx] [line 743]
!1087 = metadata !{i32 856, i32 0, metadata !908, metadata !910}
!1088 = metadata !{i32 743, i32 0, metadata !239, metadata !1087}
!1089 = metadata !{i32 786688, metadata !239, metadata !"nb", metadata !21, i32 745, metadata !63, i32 0, metadata !1087} ; [ DW_TAG_auto_variable ] [nb] [line 745]
!1090 = metadata !{i32 746, i32 0, metadata !239, metadata !1087}
!1091 = metadata !{i32 786688, metadata !239, metadata !"na", metadata !21, i32 745, metadata !63, i32 0, metadata !1087} ; [ DW_TAG_auto_variable ] [na] [line 745]
!1092 = metadata !{i32 747, i32 0, metadata !239, metadata !1087}
!1093 = metadata !{i32 748, i32 0, metadata !239, metadata !1087}
!1094 = metadata !{i32 749, i32 0, metadata !876, metadata !1087}
!1095 = metadata !{i32 786688, metadata !239, metadata !"mid", metadata !21, i32 745, metadata !63, i32 0, metadata !1087} ; [ DW_TAG_auto_variable ] [mid] [line 745]
!1096 = metadata !{i32 750, i32 0, metadata !876, metadata !1087}
!1097 = metadata !{i32 751, i32 0, metadata !876, metadata !1087}
!1098 = metadata !{i32 857, i32 0, metadata !908, metadata !910}
!1099 = metadata !{i32 786689, metadata !522, metadata !"s", metadata !21, i32 16777809, metadata !157, i32 0, metadata !889} ; [ DW_TAG_arg_variable ] [s] [line 593]
!1100 = metadata !{i32 593, i32 0, metadata !522, metadata !889}
!1101 = metadata !{i32 602, i32 0, metadata !1102, metadata !889}
!1102 = metadata !{i32 786443, metadata !1, metadata !899, i32 601, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1103 = metadata !{i32 603, i32 0, metadata !1102, metadata !889}
!1104 = metadata !{i32 604, i32 0, metadata !1102, metadata !889}
!1105 = metadata !{i32 605, i32 0, metadata !1106, metadata !889}
!1106 = metadata !{i32 786443, metadata !1, metadata !1102, i32 605, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1107 = metadata !{i32 606, i32 0, metadata !1102, metadata !889}
!1108 = metadata !{i32 607, i32 0, metadata !1102, metadata !889}
!1109 = metadata !{i32 608, i32 0, metadata !1102, metadata !889}
!1110 = metadata !{i32 609, i32 0, metadata !1102, metadata !889}
!1111 = metadata !{i32 610, i32 0, metadata !1102, metadata !889}
!1112 = metadata !{i32 614, i32 0, metadata !899, metadata !889}
!1113 = metadata !{i32 617, i32 0, metadata !899, metadata !889}
!1114 = metadata !{i32 620, i32 0, metadata !899, metadata !889}
!1115 = metadata !{i32 621, i32 0, metadata !899, metadata !889}
!1116 = metadata !{i32 623, i32 0, metadata !899, metadata !889}
!1117 = metadata !{i32 624, i32 0, metadata !899, metadata !889}
!1118 = metadata !{i32 625, i32 0, metadata !899, metadata !889}
!1119 = metadata !{i32 625, i32 0, metadata !1120, metadata !889}
!1120 = metadata !{i32 786443, metadata !1, metadata !899, i32 625, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1121 = metadata !{i32 627, i32 0, metadata !899, metadata !889}
!1122 = metadata !{i32 628, i32 0, metadata !899, metadata !889}
!1123 = metadata !{i32 628, i32 0, metadata !1124, metadata !889}
!1124 = metadata !{i32 786443, metadata !1, metadata !899, i32 628, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1125 = metadata !{i32 629, i32 0, metadata !899, metadata !889}
!1126 = metadata !{i32 630, i32 0, metadata !899, metadata !889}
!1127 = metadata !{i32 631, i32 0, metadata !899, metadata !889}
!1128 = metadata !{i32 631, i32 0, metadata !1129, metadata !889}
!1129 = metadata !{i32 786443, metadata !1, metadata !899, i32 631, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1130 = metadata !{i32 633, i32 0, metadata !899, metadata !889}
!1131 = metadata !{i32 634, i32 0, metadata !899, metadata !889}
!1132 = metadata !{i32 634, i32 0, metadata !1133, metadata !889}
!1133 = metadata !{i32 786443, metadata !1, metadata !899, i32 634, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1134 = metadata !{i32 635, i32 0, metadata !899, metadata !889}
!1135 = metadata !{i32 636, i32 0, metadata !899, metadata !889}
!1136 = metadata !{i32 637, i32 0, metadata !899, metadata !889}
!1137 = metadata !{i32 637, i32 0, metadata !1138, metadata !889}
!1138 = metadata !{i32 786443, metadata !1, metadata !899, i32 637, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1139 = metadata !{i32 639, i32 0, metadata !899, metadata !889}
!1140 = metadata !{i32 639, i32 0, metadata !1141, metadata !889}
!1141 = metadata !{i32 786443, metadata !1, metadata !899, i32 639, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1142 = metadata !{i32 640, i32 0, metadata !899, metadata !889}
!1143 = metadata !{i32 641, i32 0, metadata !899, metadata !889}
!1144 = metadata !{i32 642, i32 0, metadata !899, metadata !889}
!1145 = metadata !{i32 642, i32 0, metadata !1146, metadata !889}
!1146 = metadata !{i32 786443, metadata !1, metadata !899, i32 642, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1147 = metadata !{i32 643, i32 0, metadata !899, metadata !889}
!1148 = metadata !{i32 644, i32 0, metadata !899, metadata !889}
!1149 = metadata !{i32 786688, metadata !529, metadata !"c_calculatedBlockCRC", metadata !21, i32 649, metadata !74, i32 0, metadata !889} ; [ DW_TAG_auto_variable ] [c_calculatedBlockCRC] [line 649]
!1150 = metadata !{i32 786688, metadata !529, metadata !"c_state_out_ch", metadata !21, i32 650, metadata !83, i32 0, metadata !889} ; [ DW_TAG_auto_variable ] [c_state_out_ch] [line 650]
!1151 = metadata !{i32 786688, metadata !529, metadata !"c_state_out_len", metadata !21, i32 651, metadata !63, i32 0, metadata !889} ; [ DW_TAG_auto_variable ] [c_state_out_len] [line 651]
!1152 = metadata !{i32 786688, metadata !529, metadata !"c_nblock_used", metadata !21, i32 652, metadata !63, i32 0, metadata !889} ; [ DW_TAG_auto_variable ] [c_nblock_used] [line 652]
!1153 = metadata !{i32 786688, metadata !529, metadata !"c_k0", metadata !21, i32 653, metadata !63, i32 0, metadata !889} ; [ DW_TAG_auto_variable ] [c_k0] [line 653]
!1154 = metadata !{i32 786688, metadata !529, metadata !"c_tt", metadata !21, i32 654, metadata !76, i32 0, metadata !889} ; [ DW_TAG_auto_variable ] [c_tt] [line 654]
!1155 = metadata !{i32 786688, metadata !529, metadata !"c_tPos", metadata !21, i32 655, metadata !74, i32 0, metadata !889} ; [ DW_TAG_auto_variable ] [c_tPos] [line 655]
!1156 = metadata !{i32 656, i32 0, metadata !529, metadata !889}
!1157 = metadata !{i32 786688, metadata !529, metadata !"cs_next_out", metadata !21, i32 656, metadata !36, i32 0, metadata !889} ; [ DW_TAG_auto_variable ] [cs_next_out] [line 656]
!1158 = metadata !{i32 657, i32 0, metadata !529, metadata !889}
!1159 = metadata !{i32 786688, metadata !529, metadata !"cs_avail_out", metadata !21, i32 657, metadata !39, i32 0, metadata !889} ; [ DW_TAG_auto_variable ] [cs_avail_out] [line 657]
!1160 = metadata !{i32 786688, metadata !529, metadata !"avail_out_INIT", metadata !21, i32 660, metadata !74, i32 0, metadata !889} ; [ DW_TAG_auto_variable ] [avail_out_INIT] [line 660]
!1161 = metadata !{i32 660, i32 0, metadata !529, metadata !889}
!1162 = metadata !{i32 786688, metadata !529, metadata !"s_save_nblockPP", metadata !21, i32 661, metadata !63, i32 0, metadata !889} ; [ DW_TAG_auto_variable ] [s_save_nblockPP] [line 661]
!1163 = metadata !{i32 664, i32 0, metadata !529, metadata !889}
!1164 = metadata !{i32 667, i32 0, metadata !1165, metadata !889}
!1165 = metadata !{i32 786443, metadata !1, metadata !529, i32 664, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1166 = metadata !{i32 669, i32 0, metadata !1167, metadata !889}
!1167 = metadata !{i32 786443, metadata !1, metadata !1168, i32 668, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1168 = metadata !{i32 786443, metadata !1, metadata !1165, i32 667, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1169 = metadata !{i32 672, i32 0, metadata !1170, metadata !889}
!1170 = metadata !{i32 786443, metadata !1, metadata !1167, i32 672, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1171 = metadata !{i32 670, i32 0, metadata !1167, metadata !889}
!1172 = metadata !{i32 671, i32 0, metadata !1167, metadata !889}
!1173 = metadata !{i32 673, i32 0, metadata !1167, metadata !889}
!1174 = metadata !{i32 674, i32 0, metadata !1167, metadata !889}
!1175 = metadata !{i32 675, i32 0, metadata !1167, metadata !889}
!1176 = metadata !{i32 679, i32 0, metadata !1177, metadata !889}
!1177 = metadata !{i32 786443, metadata !1, metadata !1168, i32 678, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1178 = metadata !{i32 682, i32 0, metadata !1177, metadata !889}
!1179 = metadata !{i32 683, i32 0, metadata !1180, metadata !889}
!1180 = metadata !{i32 786443, metadata !1, metadata !1177, i32 683, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1181 = metadata !{i32 684, i32 0, metadata !1177, metadata !889}
!1182 = metadata !{i32 685, i32 0, metadata !1177, metadata !889}
!1183 = metadata !{i32 687, i32 0, metadata !1168, metadata !889}
!1184 = metadata !{i32 689, i32 0, metadata !1165, metadata !889}
!1185 = metadata !{i32 693, i32 0, metadata !1165, metadata !889}
!1186 = metadata !{i32 696, i32 0, metadata !1165, metadata !889}
!1187 = metadata !{i32 697, i32 0, metadata !1165, metadata !889}
!1188 = metadata !{i32 698, i32 0, metadata !1165, metadata !889}
!1189 = metadata !{i32 701, i32 0, metadata !1165, metadata !889}
!1190 = metadata !{i32 2}
!1191 = metadata !{i32 704, i32 0, metadata !1165, metadata !889}
!1192 = metadata !{i32 705, i32 0, metadata !1165, metadata !889}
!1193 = metadata !{i32 706, i32 0, metadata !1165, metadata !889}
!1194 = metadata !{i32 707, i32 0, metadata !1165, metadata !889}
!1195 = metadata !{i32 3}
!1196 = metadata !{i32 709, i32 0, metadata !1165, metadata !889}
!1197 = metadata !{i32 710, i32 0, metadata !1165, metadata !889}
!1198 = metadata !{i32 711, i32 0, metadata !1165, metadata !889}
!1199 = metadata !{i32 712, i32 0, metadata !1165, metadata !889}
!1200 = metadata !{i32 714, i32 0, metadata !1165, metadata !889}
!1201 = metadata !{i32 715, i32 0, metadata !1165, metadata !889}
!1202 = metadata !{i32 716, i32 0, metadata !1165, metadata !889}
!1203 = metadata !{i32 717, i32 0, metadata !1165, metadata !889}
!1204 = metadata !{i32 720, i32 0, metadata !529, metadata !889}
!1205 = metadata !{i32 786688, metadata !529, metadata !"total_out_lo32_old", metadata !21, i32 662, metadata !39, i32 0, metadata !889} ; [ DW_TAG_auto_variable ] [total_out_lo32_old] [line 662]
!1206 = metadata !{i32 721, i32 0, metadata !529, metadata !889}
!1207 = metadata !{i32 722, i32 0, metadata !529, metadata !889}
!1208 = metadata !{i32 723, i32 0, metadata !529, metadata !889}
!1209 = metadata !{i32 726, i32 0, metadata !529, metadata !889}
!1210 = metadata !{i32 727, i32 0, metadata !529, metadata !889}
!1211 = metadata !{i32 728, i32 0, metadata !529, metadata !889}
!1212 = metadata !{i32 729, i32 0, metadata !529, metadata !889}
!1213 = metadata !{i32 730, i32 0, metadata !529, metadata !889}
!1214 = metadata !{i32 731, i32 0, metadata !529, metadata !889}
!1215 = metadata !{i32 732, i32 0, metadata !529, metadata !889}
!1216 = metadata !{i32 733, i32 0, metadata !529, metadata !889}
!1217 = metadata !{i32 734, i32 0, metadata !529, metadata !889}
!1218 = metadata !{i32 737, i32 0, metadata !522, metadata !889}
!1219 = metadata !{i32 880, i32 0, metadata !887, null}
!1220 = metadata !{i32 881, i32 0, metadata !1221, null}
!1221 = metadata !{i32 786443, metadata !1, metadata !904, i32 881, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1222 = metadata !{i32 885, i32 0, metadata !904, null}
!1223 = metadata !{i32 886, i32 0, metadata !904, null}
!1224 = metadata !{i32 891, i32 0, metadata !904, null}
!1225 = metadata !{i32 892, i32 0, metadata !904, null}
!1226 = metadata !{i32 897, i32 0, metadata !255, null}
!1227 = metadata !{i32 898, i32 0, metadata !254, null}
!1228 = metadata !{i32 4}
!1229 = metadata !{i32 899, i32 0, metadata !254, null}
!1230 = metadata !{i32 900, i32 0, metadata !1231, null}
!1231 = metadata !{i32 786443, metadata !1, metadata !254, i32 899, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1232 = metadata !{i32 903, i32 0, metadata !1231, null}
!1233 = metadata !{i32 901, i32 0, metadata !1231, null}
!1234 = metadata !{i32 905, i32 0, metadata !1231, null}
!1235 = metadata !{i32 907, i32 0, metadata !254, null}
!1236 = metadata !{i32 914, i32 0, metadata !248, null}
!1237 = metadata !{i32 918, i32 0, metadata !256, null}
!1238 = metadata !{i32 921, i32 0, metadata !256, null}
!1239 = metadata !{i32 922, i32 0, metadata !256, null}
!1240 = metadata !{i32 923, i32 0, metadata !256, null}
!1241 = metadata !{i32 924, i32 0, metadata !256, null}
!1242 = metadata !{i32 926, i32 0, metadata !256, null}
!1243 = metadata !{i32 927, i32 0, metadata !256, null}
!1244 = metadata !{i32 928, i32 0, metadata !256, null}
!1245 = metadata !{i32 930, i32 0, metadata !256, null}
!1246 = metadata !{i32 931, i32 0, metadata !256, null}
!1247 = metadata !{i32 933, i32 0, metadata !256, null}
!1248 = metadata !{i32 981, i32 0, metadata !260, null}
!1249 = metadata !{i32 985, i32 0, metadata !260, null}
!1250 = metadata !{i32 987, i32 0, metadata !260, null}
!1251 = metadata !{i32 988, i32 0, metadata !260, null}
!1252 = metadata !{i32 989, i32 0, metadata !260, null}
!1253 = metadata !{%struct.bzFile* null}
!1254 = metadata !{i32 992, i32 0, metadata !260, null}
!1255 = metadata !{i32 994, i32 0, metadata !1256, null}
!1256 = metadata !{i32 786443, metadata !1, metadata !260, i32 994, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1257 = metadata !{i32 996, i32 0, metadata !260, null}
!1258 = metadata !{i32 1000, i32 0, metadata !1259, null}
!1259 = metadata !{i32 786443, metadata !1, metadata !1260, i32 1000, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1260 = metadata !{i32 786443, metadata !1, metadata !260, i32 1000, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1261 = metadata !{i32 1002, i32 0, metadata !260, null}
!1262 = metadata !{i32 1003, i32 0, metadata !1263, null}
!1263 = metadata !{i32 786443, metadata !1, metadata !1264, i32 1003, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1264 = metadata !{i32 786443, metadata !1, metadata !260, i32 1003, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1265 = metadata !{i32 1005, i32 0, metadata !260, null}
!1266 = metadata !{i32 1006, i32 0, metadata !260, null}
!1267 = metadata !{i32 1007, i32 0, metadata !1268, null}
!1268 = metadata !{i32 786443, metadata !1, metadata !1269, i32 1007, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1269 = metadata !{i32 786443, metadata !1, metadata !260, i32 1007, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1270 = metadata !{i32 1009, i32 0, metadata !1271, null}
!1271 = metadata !{i32 786443, metadata !1, metadata !260, i32 1009, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1272 = metadata !{i32 1010, i32 0, metadata !260, null}
!1273 = metadata !{i32 1011, i32 0, metadata !260, null}
!1274 = metadata !{i32 1012, i32 0, metadata !260, null}
!1275 = metadata !{i32 1013, i32 0, metadata !260, null}
!1276 = metadata !{i32 1014, i32 0, metadata !260, null}
!1277 = metadata !{i32 1018, i32 0, metadata !260, null}
!1278 = metadata !{i32 1015, i32 0, metadata !260, null}
!1279 = metadata !{i32 1019, i32 0, metadata !260, null}
!1280 = metadata !{i32 1021, i32 0, metadata !260, null}
!1281 = metadata !{i32 1022, i32 0, metadata !1282, null}
!1282 = metadata !{i32 786443, metadata !1, metadata !1283, i32 1022, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1283 = metadata !{i32 786443, metadata !1, metadata !260, i32 1022, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1284 = metadata !{i32 1022, i32 0, metadata !1283, null}
!1285 = metadata !{i32 1024, i32 0, metadata !260, null}
!1286 = metadata !{i32 1025, i32 0, metadata !260, null}
!1287 = metadata !{i32 1026, i32 0, metadata !260, null}
!1288 = metadata !{i32 1027, i32 0, metadata !260, null}
!1289 = metadata !{i32 1033, i32 0, metadata !340, null}
!1290 = metadata !{i32 1034, i32 0, metadata !340, null}
!1291 = metadata !{i32 1035, i32 0, metadata !340, null}
!1292 = metadata !{i32 1036, i32 0, metadata !340, null}
!1293 = metadata !{i32 1041, i32 0, metadata !1294, null}
!1294 = metadata !{i32 786443, metadata !1, metadata !340, i32 1041, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1295 = metadata !{i32 1042, i32 0, metadata !340, null}
!1296 = metadata !{i32 1043, i32 0, metadata !1297, null}
!1297 = metadata !{i32 786443, metadata !1, metadata !1298, i32 1043, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1298 = metadata !{i32 786443, metadata !1, metadata !340, i32 1043, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1299 = metadata !{i32 1044, i32 0, metadata !340, null}
!1300 = metadata !{i32 1045, i32 0, metadata !1301, null}
!1301 = metadata !{i32 786443, metadata !1, metadata !1302, i32 1045, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1302 = metadata !{i32 786443, metadata !1, metadata !340, i32 1045, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1303 = metadata !{i32 1046, i32 0, metadata !340, null}
!1304 = metadata !{i32 1047, i32 0, metadata !1305, null}
!1305 = metadata !{i32 786443, metadata !1, metadata !1306, i32 1047, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1306 = metadata !{i32 786443, metadata !1, metadata !340, i32 1047, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1307 = metadata !{i32 1049, i32 0, metadata !340, null}
!1308 = metadata !{i32 1050, i32 0, metadata !1309, null}
!1309 = metadata !{i32 786443, metadata !1, metadata !1310, i32 1050, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1310 = metadata !{i32 786443, metadata !1, metadata !340, i32 1050, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1311 = metadata !{i32 1052, i32 0, metadata !340, null}
!1312 = metadata !{i32 1053, i32 0, metadata !340, null}
!1313 = metadata !{i32 1056, i32 0, metadata !1314, null}
!1314 = metadata !{i32 786443, metadata !1, metadata !340, i32 1055, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1315 = metadata !{i32 1057, i32 0, metadata !1314, null}
!1316 = metadata !{i32 1055, i32 0, metadata !340, null}
!1317 = metadata !{i32 1058, i32 0, metadata !1314, null}
!1318 = metadata !{i32 1059, i32 0, metadata !1314, null}
!1319 = metadata !{i32 1060, i32 0, metadata !1320, null}
!1320 = metadata !{i32 786443, metadata !1, metadata !1321, i32 1060, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1321 = metadata !{i32 786443, metadata !1, metadata !1314, i32 1060, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1322 = metadata !{i32 1062, i32 0, metadata !1314, null}
!1323 = metadata !{i32 1063, i32 0, metadata !1324, null}
!1324 = metadata !{i32 786443, metadata !1, metadata !1314, i32 1062, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1325 = metadata !{i32 1064, i32 0, metadata !1324, null}
!1326 = metadata !{i32 1066, i32 0, metadata !1324, null}
!1327 = metadata !{i32 1067, i32 0, metadata !1328, null}
!1328 = metadata !{i32 786443, metadata !1, metadata !1329, i32 1067, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1329 = metadata !{i32 786443, metadata !1, metadata !1324, i32 1067, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1330 = metadata !{i32 1070, i32 0, metadata !1314, null}
!1331 = metadata !{i32 1071, i32 0, metadata !1332, null}
!1332 = metadata !{i32 786443, metadata !1, metadata !1333, i32 1071, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1333 = metadata !{i32 786443, metadata !1, metadata !1314, i32 1071, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1334 = metadata !{i32 1071, i32 0, metadata !340, null}
!1335 = metadata !{i32 1078, i32 0, metadata !352, null}
!1336 = metadata !{i32 1079, i32 0, metadata !352, null}
!1337 = metadata !{i32 1080, i32 0, metadata !352, null}
!1338 = metadata !{i32 1081, i32 0, metadata !352, null}
!1339 = metadata !{i32 1082, i32 0, metadata !352, null}
!1340 = metadata !{i32 1084, i32 0, metadata !352, null}
!1341 = metadata !{i32 1086, i32 0, metadata !352, null}
!1342 = metadata !{i32 1090, i32 0, metadata !362, null}
!1343 = metadata !{i32 1091, i32 0, metadata !362, null}
!1344 = metadata !{i32 1092, i32 0, metadata !362, null}
!1345 = metadata !{i32 1093, i32 0, metadata !362, null}
!1346 = metadata !{i32 1094, i32 0, metadata !362, null}
!1347 = metadata !{i32 1095, i32 0, metadata !362, null}
!1348 = metadata !{i32 1096, i32 0, metadata !362, null}
!1349 = metadata !{i32 1101, i32 0, metadata !362, null}
!1350 = metadata !{i32 1102, i32 0, metadata !1351, null}
!1351 = metadata !{i32 786443, metadata !1, metadata !1352, i32 1102, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1352 = metadata !{i32 786443, metadata !1, metadata !362, i32 1102, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1353 = metadata !{i32 1103, i32 0, metadata !362, null}
!1354 = metadata !{i32 1104, i32 0, metadata !1355, null}
!1355 = metadata !{i32 786443, metadata !1, metadata !1356, i32 1104, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1356 = metadata !{i32 786443, metadata !1, metadata !362, i32 1104, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1357 = metadata !{i32 1105, i32 0, metadata !362, null}
!1358 = metadata !{i32 1106, i32 0, metadata !1359, null}
!1359 = metadata !{i32 786443, metadata !1, metadata !1360, i32 1106, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1360 = metadata !{i32 786443, metadata !1, metadata !362, i32 1106, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1361 = metadata !{i32 1108, i32 0, metadata !362, null}
!1362 = metadata !{i32 1109, i32 0, metadata !362, null}
!1363 = metadata !{i32 1110, i32 0, metadata !362, null}
!1364 = metadata !{i32 1111, i32 0, metadata !362, null}
!1365 = metadata !{i32 1113, i32 0, metadata !362, null}
!1366 = metadata !{i32 1115, i32 0, metadata !1367, null}
!1367 = metadata !{i32 786443, metadata !1, metadata !1368, i32 1114, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1368 = metadata !{i32 786443, metadata !1, metadata !362, i32 1113, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1369 = metadata !{i32 1116, i32 0, metadata !1367, null}
!1370 = metadata !{i32 1117, i32 0, metadata !1367, null}
!1371 = metadata !{i32 1118, i32 0, metadata !1367, null}
!1372 = metadata !{i32 1119, i32 0, metadata !1373, null}
!1373 = metadata !{i32 786443, metadata !1, metadata !1374, i32 1119, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1374 = metadata !{i32 786443, metadata !1, metadata !1367, i32 1119, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1375 = metadata !{i32 1121, i32 0, metadata !1367, null}
!1376 = metadata !{i32 1122, i32 0, metadata !1377, null}
!1377 = metadata !{i32 786443, metadata !1, metadata !1367, i32 1121, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1378 = metadata !{i32 1123, i32 0, metadata !1377, null}
!1379 = metadata !{i32 1125, i32 0, metadata !1377, null}
!1380 = metadata !{i32 1126, i32 0, metadata !1381, null}
!1381 = metadata !{i32 786443, metadata !1, metadata !1382, i32 1126, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1382 = metadata !{i32 786443, metadata !1, metadata !1377, i32 1126, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1383 = metadata !{i32 1129, i32 0, metadata !1367, null}
!1384 = metadata !{i32 1133, i32 0, metadata !362, null}
!1385 = metadata !{i32 1134, i32 0, metadata !1386, null}
!1386 = metadata !{i32 786443, metadata !1, metadata !362, i32 1133, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1387 = metadata !{i32 1135, i32 0, metadata !1386, null}
!1388 = metadata !{i32 1136, i32 0, metadata !1389, null}
!1389 = metadata !{i32 786443, metadata !1, metadata !1390, i32 1136, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1390 = metadata !{i32 786443, metadata !1, metadata !1386, i32 1136, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1391 = metadata !{i32 1139, i32 0, metadata !362, null}
!1392 = metadata !{i32 1140, i32 0, metadata !362, null}
!1393 = metadata !{i32 1141, i32 0, metadata !362, null}
!1394 = metadata !{i32 1142, i32 0, metadata !362, null}
!1395 = metadata !{i32 1143, i32 0, metadata !362, null}
!1396 = metadata !{i32 1144, i32 0, metadata !362, null}
!1397 = metadata !{i32 1145, i32 0, metadata !362, null}
!1398 = metadata !{i32 1146, i32 0, metadata !362, null}
!1399 = metadata !{i32 1148, i32 0, metadata !1400, null}
!1400 = metadata !{i32 786443, metadata !1, metadata !362, i32 1148, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1401 = metadata !{i32 1149, i32 0, metadata !362, null}
!1402 = metadata !{i32 1150, i32 0, metadata !362, null}
!1403 = metadata !{i32 1156, i32 0, metadata !377, null}
!1404 = metadata !{i32 1160, i32 0, metadata !377, null}
!1405 = metadata !{i32 1162, i32 0, metadata !377, null}
!1406 = metadata !{i32 1163, i32 0, metadata !377, null}
!1407 = metadata !{i32 1164, i32 0, metadata !377, null}
!1408 = metadata !{i32 1165, i32 0, metadata !377, null}
!1409 = metadata !{i32 1167, i32 0, metadata !377, null}
!1410 = metadata !{i32 1170, i32 0, metadata !1411, null}
!1411 = metadata !{i32 786443, metadata !1, metadata !377, i32 1170, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1412 = metadata !{i32 1172, i32 0, metadata !377, null}
!1413 = metadata !{i32 1177, i32 0, metadata !1414, null}
!1414 = metadata !{i32 786443, metadata !1, metadata !1415, i32 1177, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1415 = metadata !{i32 786443, metadata !1, metadata !377, i32 1177, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1416 = metadata !{i32 1179, i32 0, metadata !377, null}
!1417 = metadata !{i32 1180, i32 0, metadata !1418, null}
!1418 = metadata !{i32 786443, metadata !1, metadata !1419, i32 1180, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1419 = metadata !{i32 786443, metadata !1, metadata !377, i32 1180, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1420 = metadata !{i32 1182, i32 0, metadata !377, null}
!1421 = metadata !{i32 1183, i32 0, metadata !377, null}
!1422 = metadata !{i32 1184, i32 0, metadata !1423, null}
!1423 = metadata !{i32 786443, metadata !1, metadata !1424, i32 1184, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1424 = metadata !{i32 786443, metadata !1, metadata !377, i32 1184, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1425 = metadata !{i32 1186, i32 0, metadata !1426, null}
!1426 = metadata !{i32 786443, metadata !1, metadata !377, i32 1186, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1427 = metadata !{i32 1188, i32 0, metadata !377, null}
!1428 = metadata !{i32 1189, i32 0, metadata !377, null}
!1429 = metadata !{i32 1190, i32 0, metadata !377, null}
!1430 = metadata !{i32 1191, i32 0, metadata !377, null}
!1431 = metadata !{i32 1192, i32 0, metadata !377, null}
!1432 = metadata !{i32 1196, i32 0, metadata !377, null}
!1433 = metadata !{i32 1197, i32 0, metadata !1434, null}
!1434 = metadata !{i32 786443, metadata !1, metadata !377, i32 1196, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1435 = metadata !{i32 1198, i32 0, metadata !1434, null}
!1436 = metadata !{i32 1199, i32 0, metadata !1434, null}
!1437 = metadata !{i32 1202, i32 0, metadata !377, null}
!1438 = metadata !{i32 1203, i32 0, metadata !377, null}
!1439 = metadata !{i32 1204, i32 0, metadata !1440, null}
!1440 = metadata !{i32 786443, metadata !1, metadata !1441, i32 1204, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1441 = metadata !{i32 786443, metadata !1, metadata !377, i32 1204, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1442 = metadata !{i32 1204, i32 0, metadata !1441, null}
!1443 = metadata !{i32 1206, i32 0, metadata !377, null}
!1444 = metadata !{i32 1207, i32 0, metadata !377, null}
!1445 = metadata !{i32 1209, i32 0, metadata !377, null}
!1446 = metadata !{i32 1210, i32 0, metadata !377, null}
!1447 = metadata !{i32 1211, i32 0, metadata !377, null}
!1448 = metadata !{i32 1215, i32 0, metadata !389, null}
!1449 = metadata !{i32 1219, i32 0, metadata !1450, null}
!1450 = metadata !{i32 786443, metadata !1, metadata !389, i32 1219, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1451 = metadata !{i32 1221, i32 0, metadata !1452, null}
!1452 = metadata !{i32 786443, metadata !1, metadata !1453, i32 1221, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1453 = metadata !{i32 786443, metadata !1, metadata !389, i32 1221, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1454 = metadata !{i32 1223, i32 0, metadata !389, null}
!1455 = metadata !{i32 1224, i32 0, metadata !1456, null}
!1456 = metadata !{i32 786443, metadata !1, metadata !1457, i32 1224, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1457 = metadata !{i32 786443, metadata !1, metadata !389, i32 1224, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1458 = metadata !{i32 1226, i32 0, metadata !389, null}
!1459 = metadata !{i32 1227, i32 0, metadata !389, null}
!1460 = metadata !{i32 1228, i32 0, metadata !389, null}
!1461 = metadata !{i32 1234, i32 0, metadata !396, null}
!1462 = metadata !{i32 1235, i32 0, metadata !396, null}
!1463 = metadata !{i32 1236, i32 0, metadata !396, null}
!1464 = metadata !{i32 1237, i32 0, metadata !396, null}
!1465 = metadata !{i32 1242, i32 0, metadata !1466, null}
!1466 = metadata !{i32 786443, metadata !1, metadata !396, i32 1242, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1467 = metadata !{i32 1244, i32 0, metadata !396, null}
!1468 = metadata !{i32 1245, i32 0, metadata !1469, null}
!1469 = metadata !{i32 786443, metadata !1, metadata !1470, i32 1245, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1470 = metadata !{i32 786443, metadata !1, metadata !396, i32 1245, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1471 = metadata !{i32 1247, i32 0, metadata !396, null}
!1472 = metadata !{i32 1248, i32 0, metadata !1473, null}
!1473 = metadata !{i32 786443, metadata !1, metadata !1474, i32 1248, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1474 = metadata !{i32 786443, metadata !1, metadata !396, i32 1248, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1475 = metadata !{i32 1250, i32 0, metadata !396, null}
!1476 = metadata !{i32 1251, i32 0, metadata !1477, null}
!1477 = metadata !{i32 786443, metadata !1, metadata !1478, i32 1251, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1478 = metadata !{i32 786443, metadata !1, metadata !396, i32 1251, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1479 = metadata !{i32 1253, i32 0, metadata !396, null}
!1480 = metadata !{i32 1254, i32 0, metadata !396, null}
!1481 = metadata !{i32 1258, i32 0, metadata !1482, null}
!1482 = metadata !{i32 786443, metadata !1, metadata !396, i32 1256, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1483 = metadata !{i32 1261, i32 0, metadata !1482, null}
!1484 = metadata !{i32 1262, i32 0, metadata !1485, null}
!1485 = metadata !{i32 786443, metadata !1, metadata !1482, i32 1261, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1486 = metadata !{i32 1266, i32 0, metadata !1485, null}
!1487 = metadata !{i32 1268, i32 0, metadata !1485, null}
!1488 = metadata !{i32 1256, i32 0, metadata !396, null}
!1489 = metadata !{i32 1259, i32 0, metadata !1490, null}
!1490 = metadata !{i32 786443, metadata !1, metadata !1491, i32 1259, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1491 = metadata !{i32 786443, metadata !1, metadata !1482, i32 1259, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1492 = metadata !{i32 1264, i32 0, metadata !1485, null}
!1493 = metadata !{i32 1265, i32 0, metadata !1494, null}
!1494 = metadata !{i32 786443, metadata !1, metadata !1495, i32 1265, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1495 = metadata !{i32 786443, metadata !1, metadata !1485, i32 1265, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1496 = metadata !{i32 1267, i32 0, metadata !1485, null}
!1497 = metadata !{i32 1269, i32 0, metadata !1485, null}
!1498 = metadata !{i32 1271, i32 0, metadata !1482, null}
!1499 = metadata !{i32 1273, i32 0, metadata !1482, null}
!1500 = metadata !{i32 1274, i32 0, metadata !1501, null}
!1501 = metadata !{i32 786443, metadata !1, metadata !1502, i32 1274, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1502 = metadata !{i32 786443, metadata !1, metadata !1482, i32 1274, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1503 = metadata !{i32 1276, i32 0, metadata !1482, null}
!1504 = metadata !{i32 1278, i32 0, metadata !1505, null}
!1505 = metadata !{i32 786443, metadata !1, metadata !1506, i32 1278, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1506 = metadata !{i32 786443, metadata !1, metadata !1482, i32 1278, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1507 = metadata !{i32 1281, i32 0, metadata !1508, null}
!1508 = metadata !{i32 786443, metadata !1, metadata !1509, i32 1281, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1509 = metadata !{i32 786443, metadata !1, metadata !1482, i32 1281, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1510 = metadata !{i32 1282, i32 0, metadata !1509, null}
!1511 = metadata !{i32 1283, i32 0, metadata !1482, null}
!1512 = metadata !{i32 1284, i32 0, metadata !1513, null}
!1513 = metadata !{i32 786443, metadata !1, metadata !1514, i32 1284, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1514 = metadata !{i32 786443, metadata !1, metadata !1482, i32 1284, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1515 = metadata !{i32 1289, i32 0, metadata !396, null}
!1516 = metadata !{i32 969, i32 0, metadata !516, null}
!1517 = metadata !{i32 972, i32 0, metadata !516, null}
!1518 = metadata !{i32 973, i32 0, metadata !516, null}
!1519 = metadata !{i32 974, i32 0, metadata !516, null}
!1520 = metadata !{i32 975, i32 0, metadata !516, null}
!1521 = metadata !{i32 1294, i32 0, metadata !407, null}
!1522 = metadata !{i32 1295, i32 0, metadata !407, null}
!1523 = metadata !{i32 1296, i32 0, metadata !407, null}
!1524 = metadata !{i32 1297, i32 0, metadata !407, null}
!1525 = metadata !{i32 1300, i32 0, metadata !407, null}
!1526 = metadata !{i32 1301, i32 0, metadata !1527, null}
!1527 = metadata !{i32 786443, metadata !1, metadata !1528, i32 1301, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1528 = metadata !{i32 786443, metadata !1, metadata !407, i32 1301, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1529 = metadata !{i32 1302, i32 0, metadata !407, null}
!1530 = metadata !{i32 1303, i32 0, metadata !1531, null}
!1531 = metadata !{i32 786443, metadata !1, metadata !1532, i32 1303, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1532 = metadata !{i32 786443, metadata !1, metadata !407, i32 1303, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1533 = metadata !{i32 1304, i32 0, metadata !407, null}
!1534 = metadata !{i32 1305, i32 0, metadata !1535, null}
!1535 = metadata !{i32 786443, metadata !1, metadata !1536, i32 1305, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1536 = metadata !{i32 786443, metadata !1, metadata !407, i32 1305, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1537 = metadata !{i32 1307, i32 0, metadata !1538, null}
!1538 = metadata !{i32 786443, metadata !1, metadata !407, i32 1307, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1539 = metadata !{i32 1308, i32 0, metadata !407, null}
!1540 = metadata !{i32 1309, i32 0, metadata !407, null}
!1541 = metadata !{i32 1320, i32 0, metadata !417, null}
!1542 = metadata !{i32 1321, i32 0, metadata !417, null}
!1543 = metadata !{i32 1322, i32 0, metadata !417, null}
!1544 = metadata !{i32 1323, i32 0, metadata !417, null}
!1545 = metadata !{i32 1324, i32 0, metadata !417, null}
!1546 = metadata !{i32 1325, i32 0, metadata !417, null}
!1547 = metadata !{i32 1326, i32 0, metadata !417, null}
!1548 = metadata !{i32 1328, i32 0, metadata !417, null}
!1549 = metadata !{i32 1331, i32 0, metadata !417, null}
!1550 = metadata !{i32 1338, i32 0, metadata !417, null}
!1551 = metadata !{i32 1339, i32 0, metadata !417, null}
!1552 = metadata !{i32 1342, i32 0, metadata !417, null}
!1553 = metadata !{i32 1340, i32 0, metadata !417, null}
!1554 = metadata !{i32 1344, i32 0, metadata !417, null}
!1555 = metadata !{i32 1346, i32 0, metadata !417, null}
!1556 = metadata !{i32 1347, i32 0, metadata !417, null}
!1557 = metadata !{i32 1348, i32 0, metadata !417, null}
!1558 = metadata !{i32 1349, i32 0, metadata !417, null}
!1559 = metadata !{i32 1351, i32 0, metadata !417, null}
!1560 = metadata !{i32 1352, i32 0, metadata !417, null}
!1561 = metadata !{i32 1356, i32 0, metadata !417, null}
!1562 = metadata !{i32 1357, i32 0, metadata !417, null}
!1563 = metadata !{i32 1358, i32 0, metadata !417, null}
!1564 = metadata !{i32 1361, i32 0, metadata !417, null}
!1565 = metadata !{i32 1362, i32 0, metadata !417, null}
!1566 = metadata !{i32 1365, i32 0, metadata !417, null}
!1567 = metadata !{i32 1366, i32 0, metadata !417, null}
!1568 = metadata !{i32 1367, i32 0, metadata !417, null}
!1569 = metadata !{i32 1372, i32 0, metadata !430, null}
!1570 = metadata !{i32 1373, i32 0, metadata !430, null}
!1571 = metadata !{i32 1374, i32 0, metadata !430, null}
!1572 = metadata !{i32 1375, i32 0, metadata !430, null}
!1573 = metadata !{i32 1376, i32 0, metadata !430, null}
!1574 = metadata !{i32 1377, i32 0, metadata !430, null}
!1575 = metadata !{i32 1379, i32 0, metadata !430, null}
!1576 = metadata !{i32 1382, i32 0, metadata !430, null}
!1577 = metadata !{i32 1388, i32 0, metadata !430, null}
!1578 = metadata !{i32 1391, i32 0, metadata !430, null}
!1579 = metadata !{i32 1389, i32 0, metadata !430, null}
!1580 = metadata !{i32 1392, i32 0, metadata !430, null}
!1581 = metadata !{i32 1394, i32 0, metadata !430, null}
!1582 = metadata !{i32 1395, i32 0, metadata !430, null}
!1583 = metadata !{i32 1396, i32 0, metadata !430, null}
!1584 = metadata !{i32 1397, i32 0, metadata !430, null}
!1585 = metadata !{i32 1399, i32 0, metadata !430, null}
!1586 = metadata !{i32 1400, i32 0, metadata !430, null}
!1587 = metadata !{i32 1404, i32 0, metadata !430, null}
!1588 = metadata !{i32 1405, i32 0, metadata !430, null}
!1589 = metadata !{i32 1406, i32 0, metadata !430, null}
!1590 = metadata !{i32 1409, i32 0, metadata !430, null}
!1591 = metadata !{i32 1410, i32 0, metadata !1592, null}
!1592 = metadata !{i32 786443, metadata !1, metadata !430, i32 1409, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1593 = metadata !{i32 1414, i32 0, metadata !1594, null}
!1594 = metadata !{i32 786443, metadata !1, metadata !430, i32 1412, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1595 = metadata !{i32 1418, i32 0, metadata !430, null}
!1596 = metadata !{i32 1419, i32 0, metadata !430, null}
!1597 = metadata !{i32 1420, i32 0, metadata !430, null}
!1598 = metadata !{i32 1552, i32 0, metadata !447, null}
!1599 = metadata !{i32 1553, i32 0, metadata !447, null}
!1600 = metadata !{i32 1555, i32 0, metadata !447, null}
!1601 = metadata !{i32 1459, i32 0, metadata !493, null}
!1602 = metadata !{i32 1460, i32 0, metadata !493, null}
!1603 = metadata !{i32 1461, i32 0, metadata !493, null}
!1604 = metadata !{i32 1462, i32 0, metadata !493, null}
!1605 = metadata !{i32 1464, i32 0, metadata !493, null}
!1606 = metadata !{i32 1465, i32 0, metadata !493, null}
!1607 = metadata !{i32 9}
!1608 = metadata !{i32 1466, i32 0, metadata !493, null}
!1609 = metadata !{i32 1467, i32 0, metadata !493, null}
!1610 = metadata !{i32 1468, i32 0, metadata !493, null}
!1611 = metadata !{%struct._IO_FILE* null}
!1612 = metadata !{i32 1472, i32 0, metadata !493, null}
!1613 = metadata !{i8* null}
!1614 = metadata !{i32 1474, i32 0, metadata !493, null}
!1615 = metadata !{i32 1475, i32 0, metadata !493, null}
!1616 = metadata !{i32 1476, i32 0, metadata !493, null}
!1617 = metadata !{i32 1477, i32 0, metadata !493, null}
!1618 = metadata !{i32 1478, i32 0, metadata !493, null}
!1619 = metadata !{i32 1480, i32 0, metadata !493, null}
!1620 = metadata !{i32 1481, i32 0, metadata !493, null}
!1621 = metadata !{i32 1482, i32 0, metadata !1622, null}
!1622 = metadata !{i32 786443, metadata !1, metadata !493, i32 1481, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1623 = metadata !{i32 1}
!1624 = metadata !{i32 1486, i32 0, metadata !1625, null}
!1625 = metadata !{i32 786443, metadata !1, metadata !1622, i32 1482, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1626 = metadata !{i32 1488, i32 0, metadata !1625, null}
!1627 = metadata !{i32 1490, i32 0, metadata !1625, null}
!1628 = metadata !{i32 1491, i32 0, metadata !1629, null}
!1629 = metadata !{i32 786443, metadata !1, metadata !1625, i32 1490, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1630 = metadata !{i32 1494, i32 0, metadata !1622, null}
!1631 = metadata !{i32 1496, i32 0, metadata !493, null}
!1632 = metadata !{i32 1497, i32 0, metadata !493, null}
!1633 = metadata !{i32 1499, i32 0, metadata !493, null}
!1634 = metadata !{i32 1500, i32 0, metadata !1635, null}
!1635 = metadata !{i32 786443, metadata !1, metadata !493, i32 1499, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1636 = metadata !{i32 1504, i32 0, metadata !1637, null}
!1637 = metadata !{i32 786443, metadata !1, metadata !1635, i32 1500, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1638 = metadata !{i32 1507, i32 0, metadata !1637, null}
!1639 = metadata !{i32 1508, i32 0, metadata !1640, null}
!1640 = metadata !{i32 786443, metadata !1, metadata !1635, i32 1507, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1641 = metadata !{i32 1517, i32 0, metadata !1642, null}
!1642 = metadata !{i32 786443, metadata !1, metadata !493, i32 1510, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1643 = metadata !{i32 1521, i32 0, metadata !493, null}
!1644 = metadata !{i32 1523, i32 0, metadata !493, null}
!1645 = metadata !{i32 1525, i32 0, metadata !1646, null}
!1646 = metadata !{i32 786443, metadata !1, metadata !493, i32 1523, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1647 = metadata !{i32 1526, i32 0, metadata !1646, null}
!1648 = metadata !{i32 1527, i32 0, metadata !1646, null}
!1649 = metadata !{i32 1529, i32 0, metadata !1646, null}
!1650 = metadata !{i32 1530, i32 0, metadata !1651, null}
!1651 = metadata !{i32 786443, metadata !1, metadata !493, i32 1529, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1652 = metadata !{i32 1533, i32 0, metadata !493, null}
!1653 = metadata !{i32 1537, i32 0, metadata !1654, null}
!1654 = metadata !{i32 786443, metadata !1, metadata !493, i32 1533, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1655 = metadata !{i32 1542, i32 0, metadata !493, null}
!1656 = metadata !{i32 1561, i32 0, metadata !453, null}
!1657 = metadata !{i32 1562, i32 0, metadata !453, null}
!1658 = metadata !{i32 1564, i32 0, metadata !453, null}
!1659 = metadata !{i32 1569, i32 0, metadata !459, null}
!1660 = metadata !{i32 1571, i32 0, metadata !459, null}
!1661 = metadata !{i32 1572, i32 0, metadata !459, null}
!1662 = metadata !{i32 1573, i32 0, metadata !459, null}
!1663 = metadata !{i32 1574, i32 0, metadata !459, null}
!1664 = metadata !{i32 1575, i32 0, metadata !1665, null}
!1665 = metadata !{i32 786443, metadata !1, metadata !459, i32 1574, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1666 = metadata !{i32 1579, i32 0, metadata !459, null}
!1667 = metadata !{i32 1583, i32 0, metadata !468, null}
!1668 = metadata !{i32 1585, i32 0, metadata !468, null}
!1669 = metadata !{i32 1587, i32 0, metadata !468, null}
!1670 = metadata !{i32 1588, i32 0, metadata !468, null}
!1671 = metadata !{i32 1589, i32 0, metadata !1672, null}
!1672 = metadata !{i32 786443, metadata !1, metadata !468, i32 1588, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1673 = metadata !{i32 1593, i32 0, metadata !468, null}
!1674 = metadata !{i32 1597, i32 0, metadata !474, null}
!1675 = metadata !{i32 1600, i32 0, metadata !474, null}
!1676 = metadata !{i32 1605, i32 0, metadata !479, null}
!1677 = metadata !{i32 1607, i32 0, metadata !479, null}
!1678 = metadata !{i32 1611, i32 0, metadata !479, null}
!1679 = metadata !{i32 1614, i32 0, metadata !479, null}
!1680 = metadata !{i32 1615, i32 0, metadata !479, null}
!1681 = metadata !{i32 786689, metadata !352, metadata !"bzerror", metadata !21, i32 16778294, metadata !263, i32 0, metadata !1682} ; [ DW_TAG_arg_variable ] [bzerror] [line 1078]
!1682 = metadata !{i32 1616, i32 0, metadata !1683, null}
!1683 = metadata !{i32 786443, metadata !1, metadata !479, i32 1615, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1684 = metadata !{i32 1078, i32 0, metadata !352, metadata !1682}
!1685 = metadata !{i32 786689, metadata !352, metadata !"b", metadata !21, i32 33555511, metadata !47, i32 0, metadata !1682} ; [ DW_TAG_arg_variable ] [b] [line 1079]
!1686 = metadata !{i32 1079, i32 0, metadata !352, metadata !1682}
!1687 = metadata !{i32 786689, metadata !352, metadata !"abandon", metadata !21, i32 50332728, metadata !24, i32 0, metadata !1682} ; [ DW_TAG_arg_variable ] [abandon] [line 1080]
!1688 = metadata !{i32 1080, i32 0, metadata !352, metadata !1682}
!1689 = metadata !{i32* null}
!1690 = metadata !{i32 786689, metadata !352, metadata !"nbytes_in", metadata !21, i32 67109945, metadata !355, i32 0, metadata !1682} ; [ DW_TAG_arg_variable ] [nbytes_in] [line 1081]
!1691 = metadata !{i32 1081, i32 0, metadata !352, metadata !1682}
!1692 = metadata !{i32 786689, metadata !352, metadata !"nbytes_out", metadata !21, i32 83887162, metadata !355, i32 0, metadata !1682} ; [ DW_TAG_arg_variable ] [nbytes_out] [line 1082]
!1693 = metadata !{i32 1082, i32 0, metadata !352, metadata !1682}
!1694 = metadata !{i32 1084, i32 0, metadata !352, metadata !1682}
!1695 = metadata !{i32 1617, i32 0, metadata !1683, null}
!1696 = metadata !{i32 786689, metadata !352, metadata !"bzerror", metadata !21, i32 16778294, metadata !263, i32 0, metadata !1697} ; [ DW_TAG_arg_variable ] [bzerror] [line 1078]
!1697 = metadata !{i32 1618, i32 0, metadata !1698, null}
!1698 = metadata !{i32 786443, metadata !1, metadata !1683, i32 1617, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1699 = metadata !{i32 1078, i32 0, metadata !352, metadata !1697}
!1700 = metadata !{i32 786689, metadata !352, metadata !"b", metadata !21, i32 33555511, metadata !47, i32 0, metadata !1697} ; [ DW_TAG_arg_variable ] [b] [line 1079]
!1701 = metadata !{i32 1079, i32 0, metadata !352, metadata !1697}
!1702 = metadata !{i32 786689, metadata !352, metadata !"abandon", metadata !21, i32 50332728, metadata !24, i32 0, metadata !1697} ; [ DW_TAG_arg_variable ] [abandon] [line 1080]
!1703 = metadata !{i32 1080, i32 0, metadata !352, metadata !1697}
!1704 = metadata !{i32 786689, metadata !352, metadata !"nbytes_in", metadata !21, i32 67109945, metadata !355, i32 0, metadata !1697} ; [ DW_TAG_arg_variable ] [nbytes_in] [line 1081]
!1705 = metadata !{i32 1081, i32 0, metadata !352, metadata !1697}
!1706 = metadata !{i32 786689, metadata !352, metadata !"nbytes_out", metadata !21, i32 83887162, metadata !355, i32 0, metadata !1697} ; [ DW_TAG_arg_variable ] [nbytes_out] [line 1082]
!1707 = metadata !{i32 1082, i32 0, metadata !352, metadata !1697}
!1708 = metadata !{i32 1084, i32 0, metadata !352, metadata !1697}
!1709 = metadata !{i32 1619, i32 0, metadata !1698, null}
!1710 = metadata !{i32 1621, i32 0, metadata !1711, null}
!1711 = metadata !{i32 786443, metadata !1, metadata !479, i32 1620, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1712 = metadata !{i32 1626, i32 0, metadata !479, null}
!1713 = metadata !{i32 1628, i32 0, metadata !1714, null}
!1714 = metadata !{i32 786443, metadata !1, metadata !479, i32 1626, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1715 = metadata !{i32 1629, i32 0, metadata !1714, null}
!1716 = metadata !{i32 1628, i32 0, metadata !479, null}
!1717 = metadata !{i32 1657, i32 0, metadata !486, null}
!1718 = metadata !{i32 1659, i32 0, metadata !486, null}
!1719 = metadata !{i32 1661, i32 0, metadata !486, null}
!1720 = metadata !{i32 1662, i32 0, metadata !486, null}
!1721 = metadata !{i32 1663, i32 0, metadata !486, null}
!1722 = metadata !{i32 273, i32 0, metadata !563, null}
!1723 = metadata !{i32 276, i32 0, metadata !563, null}
!1724 = metadata !{i32 277, i32 0, metadata !1725, null}
!1725 = metadata !{i32 786443, metadata !1, metadata !563, i32 277, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1726 = metadata !{i32 278, i32 0, metadata !1727, null}
!1727 = metadata !{i32 786443, metadata !1, metadata !1728, i32 278, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1728 = metadata !{i32 786443, metadata !1, metadata !1725, i32 277, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1729 = metadata !{i32 280, i32 0, metadata !563, null}
!1730 = metadata !{i32 281, i32 0, metadata !563, null}
!1731 = metadata !{i32 283, i32 0, metadata !1732, null}
!1732 = metadata !{i32 786443, metadata !1, metadata !563, i32 281, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzlib.c]
!1733 = metadata !{i32 284, i32 0, metadata !1732, null}
!1734 = metadata !{i32 286, i32 0, metadata !1732, null}
!1735 = metadata !{i32 287, i32 0, metadata !1732, null}
!1736 = metadata !{i32 288, i32 0, metadata !1732, null}
!1737 = metadata !{i32 290, i32 0, metadata !1732, null}
!1738 = metadata !{i32 291, i32 0, metadata !1732, null}
!1739 = metadata !{i32 292, i32 0, metadata !1732, null}
!1740 = metadata !{i32 293, i32 0, metadata !1732, null}
!1741 = metadata !{i32 295, i32 0, metadata !1732, null}
!1742 = metadata !{i32 296, i32 0, metadata !1732, null}
!1743 = metadata !{i32 297, i32 0, metadata !1732, null}
!1744 = metadata !{i32 298, i32 0, metadata !1732, null}
!1745 = metadata !{i32 299, i32 0, metadata !1732, null}
!1746 = metadata !{i32 300, i32 0, metadata !1732, null}
!1747 = metadata !{i32 301, i32 0, metadata !1732, null}
!1748 = metadata !{i32 302, i32 0, metadata !1732, null}
!1749 = metadata !{i32 304, i32 0, metadata !563, null}
