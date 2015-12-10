; ModuleID = '../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.zzzz = type { i8*, %struct.zzzz* }
%struct.UInt64 = type { [8 x i8] }
%struct.utimbuf = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c".bz2\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c".bz\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c".tbz2\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c".tbz\00", align 1
@zSuffix = global [4 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0)], align 16
@.str4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str5 = private unnamed_addr constant [5 x i8] c".tar\00", align 1
@unzSuffix = global [4 x i8*] [i8* getelementptr inbounds ([1 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0)], align 16
@outputHandleJustInCase = common global %struct._IO_FILE* null, align 8
@smallMode = common global i8 0, align 1
@keepInputFiles = common global i8 0, align 1
@forceOverwrite = common global i8 0, align 1
@noisy = common global i8 0, align 1
@verbosity = common global i32 0, align 4
@blockSize100k = common global i32 0, align 4
@testFailsExist = common global i8 0, align 1
@unzFailsExist = common global i8 0, align 1
@numFileNames = common global i32 0, align 4
@numFilesProcessed = common global i32 0, align 4
@workFactor = common global i32 0, align 4
@deleteOutputOnInterrupt = common global i8 0, align 1
@exitValue = common global i32 0, align 4
@inName = common global [1034 x i8] zeroinitializer, align 16
@.str6 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@outName = common global [1034 x i8] zeroinitializer, align 16
@progNameReally = common global [1034 x i8] zeroinitializer, align 16
@progName = common global i8* null, align 8
@.str7 = private unnamed_addr constant [6 x i8] c"BZIP2\00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c"BZIP\00", align 1
@longestFileName = common global i32 0, align 4
@.str9 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@srcMode = common global i32 0, align 4
@opMode = common global i32 0, align 4
@.str10 = private unnamed_addr constant [6 x i8] c"unzip\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"UNZIP\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"z2cat\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"Z2CAT\00", align 1
@.str14 = private unnamed_addr constant [5 x i8] c"zcat\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"ZCAT\00", align 1
@stderr = external global %struct._IO_FILE*
@.str16 = private unnamed_addr constant [19 x i8] c"%s: Bad flag `%s'\0A\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"--stdout\00", align 1
@.str18 = private unnamed_addr constant [13 x i8] c"--decompress\00", align 1
@.str19 = private unnamed_addr constant [11 x i8] c"--compress\00", align 1
@.str20 = private unnamed_addr constant [8 x i8] c"--force\00", align 1
@.str21 = private unnamed_addr constant [7 x i8] c"--test\00", align 1
@.str22 = private unnamed_addr constant [7 x i8] c"--keep\00", align 1
@.str23 = private unnamed_addr constant [8 x i8] c"--small\00", align 1
@.str24 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str25 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str26 = private unnamed_addr constant [10 x i8] c"--license\00", align 1
@.str27 = private unnamed_addr constant [14 x i8] c"--exponential\00", align 1
@.str28 = private unnamed_addr constant [18 x i8] c"--repetitive-best\00", align 1
@.str29 = private unnamed_addr constant [18 x i8] c"--repetitive-fast\00", align 1
@.str30 = private unnamed_addr constant [7 x i8] c"--fast\00", align 1
@.str31 = private unnamed_addr constant [7 x i8] c"--best\00", align 1
@.str32 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str34 = private unnamed_addr constant [40 x i8] c"%s: -c and -t cannot be used together.\0A\00", align 1
@.str35 = private unnamed_addr constant [113 x i8] c"\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1
@tmpName = common global [1034 x i8] zeroinitializer, align 16
@.str36 = private unnamed_addr constant [18 x i8] c"testf: bad modes\0A\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@.str39 = private unnamed_addr constant [30 x i8] c"%s: Can't open input %s: %s.\0A\00", align 1
@.str40 = private unnamed_addr constant [35 x i8] c"%s: Input file %s is a directory.\0A\00", align 1
@stdin = external global %struct._IO_FILE*
@.str41 = private unnamed_addr constant [51 x i8] c"%s: I won't read compressed data from a terminal.\0A\00", align 1
@.str42 = private unnamed_addr constant [34 x i8] c"%s: For help, type: `%s --help'.\0A\00", align 1
@.str43 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str44 = private unnamed_addr constant [34 x i8] c"%s: Can't open input file %s:%s.\0A\00", align 1
@.str45 = private unnamed_addr constant [19 x i8] c"testf: bad srcMode\00", align 1
@.str46 = private unnamed_addr constant [7 x i8] c"  %s: \00", align 1
@.str47 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str48 = private unnamed_addr constant [21 x i8] c"test:bzReadGetUnused\00", align 1
@.str49 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str50 = private unnamed_addr constant [9 x i8] c"%s: %s: \00", align 1
@.str51 = private unnamed_addr constant [36 x i8] c"data integrity (CRC) error in data\0A\00", align 1
@.str52 = private unnamed_addr constant [24 x i8] c"file ends unexpectedly\0A\00", align 1
@.str53 = private unnamed_addr constant [46 x i8] c"bad magic number (file not created by bzip2)\0A\00", align 1
@.str54 = private unnamed_addr constant [36 x i8] c"trailing garbage after EOF ignored\0A\00", align 1
@.str55 = private unnamed_addr constant [22 x i8] c"test:unexpected error\00", align 1
@.str56 = private unnamed_addr constant [38 x i8] c"\0A%s: couldn't allocate enough memory\0A\00", align 1
@.str57 = private unnamed_addr constant [44 x i8] c"%s: Deleting output file %s, if it exists.\0A\00", align 1
@.str58 = private unnamed_addr constant [59 x i8] c"%s: WARNING: deletion of output file (apparently) failed.\0A\00", align 1
@.str59 = private unnamed_addr constant [49 x i8] c"%s: WARNING: deletion of output file suppressed\0A\00", align 1
@.str60 = private unnamed_addr constant [56 x i8] c"%s:    since input file no longer exists.  Output file\0A\00", align 1
@.str61 = private unnamed_addr constant [32 x i8] c"%s:    `%s' may be incomplete.\0A\00", align 1
@.str62 = private unnamed_addr constant [61 x i8] c"%s:    I suggest doing an integrity test (bzip2 -tv) of it.\0A\00", align 1
@.str63 = private unnamed_addr constant [110 x i8] c"%s: WARNING: some files have not been processed:\0A%s:    %d specified on command line, %d not processed yet.\0A\0A\00", align 1
@.str64 = private unnamed_addr constant [36 x i8] c"\09Input file = %s, output file = %s\0A\00", align 1
@.str65 = private unnamed_addr constant [65 x i8] c"\0A%s: I/O or other error, bailing out.  Possible reason follows.\0A\00", align 1
@.str66 = private unnamed_addr constant [236 x i8] c"bzip2: I'm not configured correctly for this platform!\0A\09I require Int32, Int16 and Char to have sizes\0A\09of 4, 2 and 1 bytes to run properly, and they don't.\0A\09Probably you can fix this by defining them correctly,\0A\09and recompiling.  Bye!\0A\00", align 1
@.str68 = private unnamed_addr constant [109 x i8] c"\0A%s: PANIC -- internal consistency error:\0A\09%s\0A\09This is a BUG.  Please report it to me at:\0A\09jseward@bzip.org\0A\00", align 1
@.str69 = private unnamed_addr constant [23 x i8] c"uncompress: bad modes\0A\00", align 1
@.str70 = private unnamed_addr constant [9 x i8] c"(stdout)\00", align 1
@.str71 = private unnamed_addr constant [5 x i8] c".out\00", align 1
@.str72 = private unnamed_addr constant [35 x i8] c"%s: Can't open input file %s: %s.\0A\00", align 1
@.str73 = private unnamed_addr constant [41 x i8] c"%s: Input file %s is not a normal file.\0A\00", align 1
@.str74 = private unnamed_addr constant [50 x i8] c"%s: Can't guess original name for %s -- using %s\0A\00", align 1
@.str75 = private unnamed_addr constant [36 x i8] c"%s: Output file %s already exists.\0A\00", align 1
@.str76 = private unnamed_addr constant [40 x i8] c"%s: Input file %s has %d other link%s.\0A\00", align 1
@.str77 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@stdout = external global %struct._IO_FILE*
@.str78 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str79 = private unnamed_addr constant [38 x i8] c"%s: Can't create output file %s: %s.\0A\00", align 1
@.str80 = private unnamed_addr constant [24 x i8] c"uncompress: bad srcMode\00", align 1
@.str81 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str82 = private unnamed_addr constant [19 x i8] c"not a bzip2 file.\0A\00", align 1
@.str83 = private unnamed_addr constant [29 x i8] c"%s: %s is not a bzip2 file.\0A\00", align 1
@fileMetaInfo = internal global %struct.stat zeroinitializer, align 8
@.str84 = private unnamed_addr constant [27 x i8] c"decompress:bzReadGetUnused\00", align 1
@.str85 = private unnamed_addr constant [45 x i8] c"\0A%s: %s: trailing garbage after EOF ignored\0A\00", align 1
@.str86 = private unnamed_addr constant [28 x i8] c"decompress:unexpected error\00", align 1
@.str87 = private unnamed_addr constant [95 x i8] c"\0A%s: Compressed file ends unexpectedly;\0A\09perhaps it is corrupted?  *Possible* reason follows.\0A\00", align 1
@.str88 = private unnamed_addr constant [241 x i8] c"\0AIt is possible that the compressed file(s) have become corrupted.\0AYou can use the -tvv option to test integrity of such files.\0A\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1
@.str89 = private unnamed_addr constant [47 x i8] c"\0A%s: Data integrity error when decompressing.\0A\00", align 1
@.str90 = private unnamed_addr constant [21 x i8] c"compress: bad modes\0A\00", align 1
@.str91 = private unnamed_addr constant [42 x i8] c"%s: Input file %s already has %s suffix.\0A\00", align 1
@.str92 = private unnamed_addr constant [50 x i8] c"%s: I won't write compressed data to a terminal.\0A\00", align 1
@.str93 = private unnamed_addr constant [22 x i8] c"compress: bad srcMode\00", align 1
@.str95 = private unnamed_addr constant [22 x i8] c" no data compressed.\0A\00", align 1
@.str96 = private unnamed_addr constant [57 x i8] c"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\0A\00", align 1
@.str97 = private unnamed_addr constant [26 x i8] c"compress:unexpected error\00", align 1
@.str98 = private unnamed_addr constant [45 x i8] c"\0A%s: Control-C or similar caught, quitting.\0A\00", align 1
@.str99 = private unnamed_addr constant [49 x i8] c"%s: %s is redundant in versions 0.9.5 and above\0A\00", align 1
@.str100 = private unnamed_addr constant [1230 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A\0A   usage: %s [flags and input files in any order]\0A\0A   -h --help           print this message\0A   -d --decompress     force decompression\0A   -z --compress       force compression\0A   -k --keep           keep (don't delete) input files\0A   -f --force          overwrite existing output files\0A   -t --test           test compressed file integrity\0A   -c --stdout         output to standard out\0A   -q --quiet          suppress noncritical error messages\0A   -v --verbose        be verbose (a 2nd -v gives more)\0A   -L --license        display software version & license\0A   -V --version        display software version & license\0A   -s --small          use less memory (at most 2500k)\0A   -1 .. -9            set block size to 100k .. 900k\0A   --fast              alias for -1\0A   --best              alias for -9\0A\0A   If invoked as `bzip2', default action is to compress.\0A              as `bunzip2',  default action is to decompress.\0A              as `bzcat', default action is to decompress to stdout.\0A\0A   If no file names are given, bzip2 compresses or decompresses\0A   from standard input to standard output.  You can combine\0A   short flags, so `-v -4' means the same as -v4 or -4v, &c.\0A\0A\00", align 1
@.str101 = private unnamed_addr constant [529 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A   \0A   Copyright (C) 1996-2005 by Julian Seward.\0A   \0A   This program is free software; you can redistribute it and/or modify\0A   it under the terms set out in the LICENSE file, which is included\0A   in the bzip2-1.0 source distribution.\0A   \0A   This program is distributed in the hope that it will be useful,\0A   but WITHOUT ANY WARRANTY; without even the implied warranty of\0A   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A   LICENSE file for more details.\0A   \0A\00", align 1
@.str102 = private unnamed_addr constant [120 x i8] c"bzip2: file name\0A`%s'\0Ais suspiciously (more than %d chars) long.\0ATry using a reasonable file name instead.  Sorry! :-)\0A\00", align 1
@.str103 = private unnamed_addr constant [869 x i8] c"\0A%s: Caught a SIGSEGV or SIGBUS whilst compressing.\0A\0A   Possible causes are (most likely first):\0A   (1) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (2) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (3) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (1) and (2).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (1)\0A   or (2), feel free to report it to me at: jseward@bzip.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1
@.str104 = private unnamed_addr constant [996 x i8] c"\0A%s: Caught a SIGSEGV or SIGBUS whilst decompressing.\0A\0A   Possible causes are (most likely first):\0A   (1) The compressed data is corrupted, and bzip2's usual checks\0A       failed to detect this.  Try bzip2 -tvv my_file.bz2.\0A   (2) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (3) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (4) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (2) and (3).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (2)\0A   or (3), feel free to report it to me at: jseward@bzip.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define noalias %struct._IO_FILE* @fopen_output_safely(i8* nocapture %name, i8* nocapture %mode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !87), !dbg !475
  tail call void @llvm.dbg.value(metadata !{i8* %mode}, i64 0, metadata !88), !dbg !475
  %call = tail call i32 (i8*, i32, ...)* @open(i8* %name, i32 193, i32 384) #10, !dbg !476
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !90), !dbg !476
  %cmp = icmp eq i32 %call, -1, !dbg !477
  br i1 %cmp, label %return, label %if.end, !dbg !477

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._IO_FILE* @fdopen(i32 %call, i8* %mode) #10, !dbg !478
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call1}, i64 0, metadata !89), !dbg !478
  %cmp2 = icmp eq %struct._IO_FILE* %call1, null, !dbg !479
  br i1 %cmp2, label %if.then3, label %return, !dbg !479

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @close(i32 %call) #10, !dbg !479
  br label %return, !dbg !479

return:                                           ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi %struct._IO_FILE* [ null, %entry ], [ null, %if.then3 ], [ %call1, %if.end ]
  ret %struct._IO_FILE* %retval.0, !dbg !480
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i32 @open(i8* nocapture, i32, ...) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @close(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32 %argc, i8** nocapture %argv) #0 {
entry:
  %argList = alloca %struct.zzzz*, align 8
  call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !97), !dbg !481
  call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !98), !dbg !481
  call void @llvm.dbg.declare(metadata !{%struct.zzzz** %argList}, metadata !103), !dbg !482
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8, !dbg !483, !tbaa !484
  store i8 0, i8* @smallMode, align 1, !dbg !487, !tbaa !485
  store i8 0, i8* @keepInputFiles, align 1, !dbg !488, !tbaa !485
  store i8 0, i8* @forceOverwrite, align 1, !dbg !489, !tbaa !485
  store i8 1, i8* @noisy, align 1, !dbg !490, !tbaa !485
  store i32 0, i32* @verbosity, align 4, !dbg !491, !tbaa !492
  store i32 9, i32* @blockSize100k, align 4, !dbg !493, !tbaa !492
  store i8 0, i8* @testFailsExist, align 1, !dbg !494, !tbaa !485
  store i8 0, i8* @unzFailsExist, align 1, !dbg !495, !tbaa !485
  store i32 0, i32* @numFileNames, align 4, !dbg !496, !tbaa !492
  store i32 0, i32* @numFilesProcessed, align 4, !dbg !497, !tbaa !492
  store i32 30, i32* @workFactor, align 4, !dbg !498, !tbaa !492
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !499, !tbaa !485
  store i32 0, i32* @exitValue, align 4, !dbg !500, !tbaa !492
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !101), !dbg !501
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !99), !dbg !501
  %call = call void (i32)* (i32, void (i32)*)* @signal(i32 11, void (i32)* @mySIGSEGVorSIGBUScatcher) #10, !dbg !502
  %call4 = call void (i32)* (i32, void (i32)*)* @signal(i32 7, void (i32)* @mySIGSEGVorSIGBUScatcher) #10, !dbg !503
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0)) #11, !dbg !504
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0)) #11, !dbg !505
  %0 = load i8** %argv, align 8, !dbg !506, !tbaa !484
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @progNameReally, i64 0, i64 0), i8* %0) #11, !dbg !506
  store i8* getelementptr inbounds ([1034 x i8]* @progNameReally, i64 0, i64 0), i8** @progName, align 8, !dbg !507, !tbaa !484
  call void @llvm.dbg.value(metadata !508, i64 0, metadata !102), !dbg !509
  br label %for.cond, !dbg !509

for.cond:                                         ; preds = %if.then, %for.cond.for.inc_crit_edge, %entry
  %tmp.0 = phi i8* [ getelementptr inbounds ([1034 x i8]* @progNameReally, i64 0, i64 0), %entry ], [ %incdec.ptr.pre, %for.cond.for.inc_crit_edge ], [ %add.ptr, %if.then ]
  %1 = load i8* %tmp.0, align 1, !dbg !509, !tbaa !485
  switch i8 %1, label %for.cond.for.inc_crit_edge [
    i8 0, label %for.end
    i8 47, label %if.then
  ], !dbg !509

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  %incdec.ptr.pre = getelementptr inbounds i8* %tmp.0, i64 1, !dbg !509
  br label %for.cond, !dbg !509

if.then:                                          ; preds = %for.cond
  %add.ptr = getelementptr inbounds i8* %tmp.0, i64 1, !dbg !511
  store i8* %add.ptr, i8** @progName, align 8, !dbg !511, !tbaa !484
  br label %for.cond, !dbg !511

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata !512, i64 0, metadata !103), !dbg !513
  store %struct.zzzz* null, %struct.zzzz** %argList, align 8, !dbg !513, !tbaa !484
  call fastcc void @addFlagsFromEnvVar(%struct.zzzz** %argList, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0)) #11, !dbg !514
  call fastcc void @addFlagsFromEnvVar(%struct.zzzz** %argList, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0)) #11, !dbg !515
  call void @llvm.dbg.value(metadata !516, i64 0, metadata !99), !dbg !517
  %sub = add nsw i32 %argc, -1, !dbg !517
  %cmp10565 = icmp slt i32 %argc, 2, !dbg !517
  call void @llvm.dbg.value(metadata !{%struct.zzzz** %argList}, i64 0, metadata !103), !dbg !519
  %aa.0561.pre = load %struct.zzzz** %argList, align 8, !dbg !519
  br i1 %cmp10565, label %for.end16, label %for.body12, !dbg !517

for.body12:                                       ; preds = %for.end, %for.body12
  %indvars.iv573 = phi i64 [ %indvars.iv.next574, %for.body12 ], [ 1, %for.end ]
  %call14567 = phi %struct.zzzz* [ %call14, %for.body12 ], [ %aa.0561.pre, %for.end ], !dbg !521
  call void @llvm.dbg.value(metadata !{%struct.zzzz** %argList}, i64 0, metadata !103), !dbg !521
  %arrayidx13 = getelementptr inbounds i8** %argv, i64 %indvars.iv573, !dbg !521
  %2 = load i8** %arrayidx13, align 8, !dbg !521, !tbaa !484
  %call14 = call fastcc %struct.zzzz* @snocString(%struct.zzzz* %call14567, i8* %2) #11, !dbg !521
  call void @llvm.dbg.value(metadata !{%struct.zzzz* %call14}, i64 0, metadata !103), !dbg !521
  %indvars.iv.next574 = add i64 %indvars.iv573, 1, !dbg !517
  %3 = trunc i64 %indvars.iv573 to i32, !dbg !517
  %cmp10 = icmp slt i32 %3, %sub, !dbg !517
  br i1 %cmp10, label %for.body12, label %for.cond9.for.end16_crit_edge, !dbg !517

for.cond9.for.end16_crit_edge:                    ; preds = %for.body12
  call void @llvm.dbg.value(metadata !{%struct.zzzz* %call14}, i64 0, metadata !103), !dbg !521
  store %struct.zzzz* %call14, %struct.zzzz** %argList, align 8, !dbg !521, !tbaa !484
  br label %for.end16, !dbg !517

for.end16:                                        ; preds = %for.end, %for.cond9.for.end16_crit_edge
  %aa.0561 = phi %struct.zzzz* [ %call14, %for.cond9.for.end16_crit_edge ], [ %aa.0561.pre, %for.end ]
  store i32 7, i32* @longestFileName, align 4, !dbg !522, !tbaa !492
  store i32 0, i32* @numFileNames, align 4, !dbg !523, !tbaa !492
  call void @llvm.dbg.value(metadata !524, i64 0, metadata !112), !dbg !525
  call void @llvm.dbg.value(metadata !{%struct.zzzz** %argList}, i64 0, metadata !103), !dbg !519
  %cmp18562 = icmp eq %struct.zzzz* %aa.0561, null, !dbg !519
  br i1 %cmp18562, label %for.end46, label %for.body20, !dbg !519

for.body20:                                       ; preds = %for.end16, %for.inc45
  %4 = phi i32 [ %8, %for.inc45 ], [ 7, %for.end16 ]
  %5 = phi i32 [ %9, %for.inc45 ], [ 0, %for.end16 ]
  %aa.0564 = phi %struct.zzzz* [ %aa.0, %for.inc45 ], [ %aa.0561, %for.end16 ]
  %decode.0563 = phi i8 [ %decode.1, %for.inc45 ], [ 1, %for.end16 ]
  %name = getelementptr inbounds %struct.zzzz* %aa.0564, i64 0, i32 0, !dbg !526
  %6 = load i8** %name, align 8, !dbg !526, !tbaa !484
  %call21 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #12, !dbg !526
  %cmp22 = icmp eq i32 %call21, 0, !dbg !526
  br i1 %cmp22, label %for.inc45, label %if.end25, !dbg !526

if.end25:                                         ; preds = %for.body20
  %7 = load i8* %6, align 1, !dbg !528, !tbaa !485
  %cmp29 = icmp ne i8 %7, 45, !dbg !528
  %tobool = icmp eq i8 %decode.0563, 0, !dbg !528
  %or.cond513 = or i1 %cmp29, %tobool, !dbg !528
  br i1 %or.cond513, label %if.end33, label %for.inc45, !dbg !528

if.end33:                                         ; preds = %if.end25
  %inc34 = add nsw i32 %5, 1, !dbg !529
  store i32 %inc34, i32* @numFileNames, align 4, !dbg !529, !tbaa !492
  %call36 = call i64 @strlen(i8* %6) #12, !dbg !530
  %conv37 = trunc i64 %call36 to i32, !dbg !530
  %cmp38 = icmp slt i32 %4, %conv37, !dbg !530
  br i1 %cmp38, label %if.then40, label %for.inc45, !dbg !530

if.then40:                                        ; preds = %if.end33
  store i32 %conv37, i32* @longestFileName, align 4, !dbg !531, !tbaa !492
  br label %for.inc45, !dbg !531

for.inc45:                                        ; preds = %if.end25, %for.body20, %if.end33, %if.then40
  %8 = phi i32 [ %conv37, %if.then40 ], [ %4, %if.end33 ], [ %4, %for.body20 ], [ %4, %if.end25 ]
  %9 = phi i32 [ %inc34, %if.then40 ], [ %inc34, %if.end33 ], [ %5, %for.body20 ], [ %5, %if.end25 ]
  %decode.1 = phi i8 [ %decode.0563, %if.then40 ], [ %decode.0563, %if.end33 ], [ 0, %for.body20 ], [ %decode.0563, %if.end25 ]
  %link = getelementptr inbounds %struct.zzzz* %aa.0564, i64 0, i32 1, !dbg !519
  %aa.0 = load %struct.zzzz** %link, align 8, !dbg !519
  %cmp18 = icmp eq %struct.zzzz* %aa.0, null, !dbg !519
  br i1 %cmp18, label %for.end46, label %for.body20, !dbg !519

for.end46:                                        ; preds = %for.inc45, %for.end16
  %10 = phi i32 [ 0, %for.end16 ], [ %9, %for.inc45 ]
  %cmp47 = icmp eq i32 %10, 0, !dbg !532
  %. = select i1 %cmp47, i32 1, i32 3, !dbg !533
  store i32 %., i32* @srcMode, align 4, !dbg !533, !tbaa !492
  store i32 1, i32* @opMode, align 4, !dbg !534, !tbaa !492
  %11 = load i8** @progName, align 8, !dbg !535, !tbaa !484
  %call51 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0)) #12, !dbg !535
  %cmp52 = icmp eq i8* %call51, null, !dbg !535
  br i1 %cmp52, label %lor.lhs.false, label %if.then57, !dbg !535

lor.lhs.false:                                    ; preds = %for.end46
  %call54 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0)) #12, !dbg !536
  %cmp55 = icmp eq i8* %call54, null, !dbg !536
  br i1 %cmp55, label %if.end58, label %if.then57, !dbg !536

if.then57:                                        ; preds = %lor.lhs.false, %for.end46
  store i32 2, i32* @opMode, align 4, !dbg !537, !tbaa !492
  br label %if.end58, !dbg !537

if.end58:                                         ; preds = %lor.lhs.false, %if.then57
  %call59 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0)) #12, !dbg !538
  %cmp60 = icmp eq i8* %call59, null, !dbg !538
  br i1 %cmp60, label %lor.lhs.false62, label %if.then74, !dbg !538

lor.lhs.false62:                                  ; preds = %if.end58
  %call63 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0)) #12, !dbg !539
  %cmp64 = icmp eq i8* %call63, null, !dbg !539
  br i1 %cmp64, label %lor.lhs.false66, label %if.then74, !dbg !539

lor.lhs.false66:                                  ; preds = %lor.lhs.false62
  %call67 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([5 x i8]* @.str14, i64 0, i64 0)) #12, !dbg !540
  %cmp68 = icmp eq i8* %call67, null, !dbg !540
  br i1 %cmp68, label %lor.lhs.false70, label %if.then74, !dbg !540

lor.lhs.false70:                                  ; preds = %lor.lhs.false66
  %call71 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0)) #12, !dbg !541
  %cmp72 = icmp eq i8* %call71, null, !dbg !541
  br i1 %cmp72, label %for.cond78.preheader, label %if.then74, !dbg !541

if.then74:                                        ; preds = %lor.lhs.false70, %lor.lhs.false66, %lor.lhs.false62, %if.end58
  store i32 2, i32* @opMode, align 4, !dbg !542, !tbaa !492
  %cond = select i1 %cmp47, i32 1, i32 2, !dbg !544
  store i32 %cond, i32* @srcMode, align 4, !dbg !544, !tbaa !492
  br label %for.cond78.preheader, !dbg !545

for.cond78.preheader:                             ; preds = %lor.lhs.false70, %if.then74
  call void @llvm.dbg.value(metadata !{%struct.zzzz** %argList}, i64 0, metadata !103), !dbg !546
  br i1 %cmp18562, label %for.end283, label %for.body81, !dbg !546

for.body81:                                       ; preds = %for.cond78.preheader, %for.inc138
  %aa.1560 = phi %struct.zzzz* [ %aa.1, %for.inc138 ], [ %aa.0561, %for.cond78.preheader ]
  %name82 = getelementptr inbounds %struct.zzzz* %aa.1560, i64 0, i32 0, !dbg !548
  %12 = load i8** %name82, align 8, !dbg !548, !tbaa !484
  %call83 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #12, !dbg !548
  %cmp84 = icmp eq i32 %call83, 0, !dbg !548
  br i1 %cmp84, label %for.cond141.preheader, label %if.end87, !dbg !548

for.cond141.preheader:                            ; preds = %for.inc138, %for.body81
  call void @llvm.dbg.value(metadata !{%struct.zzzz** %argList}, i64 0, metadata !103), !dbg !550
  br i1 %cmp18562, label %for.end283, label %for.body144, !dbg !550

if.end87:                                         ; preds = %for.body81
  %13 = load i8* %12, align 1, !dbg !552, !tbaa !485
  %cmp91 = icmp eq i8 %13, 45, !dbg !552
  br i1 %cmp91, label %land.lhs.true93, label %for.inc138, !dbg !552

land.lhs.true93:                                  ; preds = %if.end87
  %arrayidx95 = getelementptr inbounds i8* %12, i64 1, !dbg !552
  %14 = load i8* %arrayidx95, align 1, !dbg !552, !tbaa !485
  switch i8 %14, label %for.body107 [
    i8 45, label %for.inc138
    i8 0, label %for.inc138
  ], !dbg !552

for.body107:                                      ; preds = %land.lhs.true93, %for.inc134
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc134 ], [ 1, %land.lhs.true93 ]
  %15 = phi i8 [ %26, %for.inc134 ], [ %14, %land.lhs.true93 ]
  %16 = phi i8* [ %25, %for.inc134 ], [ %12, %land.lhs.true93 ]
  %conv104 = sext i8 %15 to i32, !dbg !553
  switch i32 %conv104, label %sw.default [
    i32 99, label %sw.bb
    i32 100, label %sw.bb112
    i32 122, label %sw.bb113
    i32 102, label %sw.bb114
    i32 116, label %sw.bb115
    i32 107, label %sw.bb116
    i32 115, label %sw.bb117
    i32 113, label %sw.bb118
    i32 49, label %sw.bb119
    i32 50, label %sw.bb120
    i32 51, label %sw.bb121
    i32 52, label %sw.bb122
    i32 53, label %sw.bb123
    i32 54, label %sw.bb124
    i32 55, label %sw.bb125
    i32 56, label %sw.bb126
    i32 57, label %sw.bb127
    i32 86, label %sw.bb128
    i32 76, label %sw.bb128
    i32 118, label %sw.bb129
    i32 104, label %sw.bb131
  ], !dbg !556

sw.bb:                                            ; preds = %for.body107
  store i32 2, i32* @srcMode, align 4, !dbg !558, !tbaa !492
  br label %for.inc134, !dbg !558

sw.bb112:                                         ; preds = %for.body107
  store i32 2, i32* @opMode, align 4, !dbg !560, !tbaa !492
  br label %for.inc134, !dbg !560

sw.bb113:                                         ; preds = %for.body107
  store i32 1, i32* @opMode, align 4, !dbg !561, !tbaa !492
  br label %for.inc134, !dbg !561

sw.bb114:                                         ; preds = %for.body107
  store i8 1, i8* @forceOverwrite, align 1, !dbg !562, !tbaa !485
  br label %for.inc134, !dbg !562

sw.bb115:                                         ; preds = %for.body107
  store i32 3, i32* @opMode, align 4, !dbg !563, !tbaa !492
  br label %for.inc134, !dbg !563

sw.bb116:                                         ; preds = %for.body107
  store i8 1, i8* @keepInputFiles, align 1, !dbg !564, !tbaa !485
  br label %for.inc134, !dbg !564

sw.bb117:                                         ; preds = %for.body107
  store i8 1, i8* @smallMode, align 1, !dbg !565, !tbaa !485
  br label %for.inc134, !dbg !565

sw.bb118:                                         ; preds = %for.body107
  store i8 0, i8* @noisy, align 1, !dbg !566, !tbaa !485
  br label %for.inc134, !dbg !566

sw.bb119:                                         ; preds = %for.body107
  store i32 1, i32* @blockSize100k, align 4, !dbg !567, !tbaa !492
  br label %for.inc134, !dbg !567

sw.bb120:                                         ; preds = %for.body107
  store i32 2, i32* @blockSize100k, align 4, !dbg !568, !tbaa !492
  br label %for.inc134, !dbg !568

sw.bb121:                                         ; preds = %for.body107
  store i32 3, i32* @blockSize100k, align 4, !dbg !569, !tbaa !492
  br label %for.inc134, !dbg !569

sw.bb122:                                         ; preds = %for.body107
  store i32 4, i32* @blockSize100k, align 4, !dbg !570, !tbaa !492
  br label %for.inc134, !dbg !570

sw.bb123:                                         ; preds = %for.body107
  store i32 5, i32* @blockSize100k, align 4, !dbg !571, !tbaa !492
  br label %for.inc134, !dbg !571

sw.bb124:                                         ; preds = %for.body107
  store i32 6, i32* @blockSize100k, align 4, !dbg !572, !tbaa !492
  br label %for.inc134, !dbg !572

sw.bb125:                                         ; preds = %for.body107
  store i32 7, i32* @blockSize100k, align 4, !dbg !573, !tbaa !492
  br label %for.inc134, !dbg !573

sw.bb126:                                         ; preds = %for.body107
  store i32 8, i32* @blockSize100k, align 4, !dbg !574, !tbaa !492
  br label %for.inc134, !dbg !574

sw.bb127:                                         ; preds = %for.body107
  store i32 9, i32* @blockSize100k, align 4, !dbg !575, !tbaa !492
  br label %for.inc134, !dbg !575

sw.bb128:                                         ; preds = %for.body107, %for.body107
  %17 = load %struct._IO_FILE** @stderr, align 8, !dbg !576, !tbaa !484
  %call.i = call i8* @BZ2_bzlibVersion() #10, !dbg !578
  %call1.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([529 x i8]* @.str101, i64 0, i64 0), i8* %call.i) #10, !dbg !578
  br label %for.inc134, !dbg !577

sw.bb129:                                         ; preds = %for.body107
  %18 = load i32* @verbosity, align 4, !dbg !579, !tbaa !492
  %inc130 = add nsw i32 %18, 1, !dbg !579
  store i32 %inc130, i32* @verbosity, align 4, !dbg !579, !tbaa !492
  br label %for.inc134, !dbg !579

sw.bb131:                                         ; preds = %for.body107
  %19 = load i8** @progName, align 8, !dbg !580, !tbaa !484
  call void @llvm.dbg.value(metadata !{i8* %19}, i64 0, metadata !581) #7, !dbg !582
  %20 = load %struct._IO_FILE** @stderr, align 8, !dbg !583, !tbaa !484
  %call.i518 = call i8* @BZ2_bzlibVersion() #10, !dbg !584
  %call1.i519 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([1230 x i8]* @.str100, i64 0, i64 0), i8* %call.i518, i8* %19) #10, !dbg !584
  call void @exit(i32 0) #13, !dbg !585
  unreachable, !dbg !585

sw.default:                                       ; preds = %for.body107
  %21 = load %struct._IO_FILE** @stderr, align 8, !dbg !586, !tbaa !484
  %22 = load i8** @progName, align 8, !dbg !586, !tbaa !484
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([19 x i8]* @.str16, i64 0, i64 0), i8* %22, i8* %16) #10, !dbg !586
  %23 = load i8** @progName, align 8, !dbg !587, !tbaa !484
  call void @llvm.dbg.value(metadata !{i8* %23}, i64 0, metadata !588) #7, !dbg !589
  %24 = load %struct._IO_FILE** @stderr, align 8, !dbg !590, !tbaa !484
  %call.i520 = call i8* @BZ2_bzlibVersion() #10, !dbg !591
  %call1.i521 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([1230 x i8]* @.str100, i64 0, i64 0), i8* %call.i520, i8* %23) #10, !dbg !591
  call void @exit(i32 1) #13, !dbg !592
  unreachable, !dbg !592

for.inc134:                                       ; preds = %sw.bb, %sw.bb112, %sw.bb113, %sw.bb114, %sw.bb115, %sw.bb116, %sw.bb117, %sw.bb118, %sw.bb119, %sw.bb120, %sw.bb121, %sw.bb122, %sw.bb123, %sw.bb124, %sw.bb125, %sw.bb126, %sw.bb127, %sw.bb128, %sw.bb129
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !553
  %25 = load i8** %name82, align 8, !dbg !553, !tbaa !484
  %arrayidx103 = getelementptr inbounds i8* %25, i64 %indvars.iv.next, !dbg !553
  %26 = load i8* %arrayidx103, align 1, !dbg !553, !tbaa !485
  %cmp105 = icmp eq i8 %26, 0, !dbg !553
  br i1 %cmp105, label %for.inc138, label %for.body107, !dbg !553

for.inc138:                                       ; preds = %land.lhs.true93, %land.lhs.true93, %for.inc134, %if.end87
  %link139 = getelementptr inbounds %struct.zzzz* %aa.1560, i64 0, i32 1, !dbg !546
  %aa.1 = load %struct.zzzz** %link139, align 8, !dbg !546
  %cmp79 = icmp eq %struct.zzzz* %aa.1, null, !dbg !546
  br i1 %cmp79, label %for.cond141.preheader, label %for.body81, !dbg !546

for.body144:                                      ; preds = %for.cond141.preheader, %for.inc281
  %aa.2552 = phi %struct.zzzz* [ %aa.2, %for.inc281 ], [ %aa.0561, %for.cond141.preheader ]
  %name145 = getelementptr inbounds %struct.zzzz* %aa.2552, i64 0, i32 0, !dbg !593
  %27 = load i8** %name145, align 8, !dbg !593, !tbaa !484
  %call146 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #12, !dbg !593
  %cmp147 = icmp eq i32 %call146, 0, !dbg !593
  br i1 %cmp147, label %for.end283, label %if.end150, !dbg !593

if.end150:                                        ; preds = %for.body144
  %call152 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0)) #12, !dbg !595
  %cmp153 = icmp eq i32 %call152, 0, !dbg !595
  br i1 %cmp153, label %if.then155, label %if.else156, !dbg !595

if.then155:                                       ; preds = %if.end150
  store i32 2, i32* @srcMode, align 4, !dbg !595, !tbaa !492
  br label %for.inc281, !dbg !595

if.else156:                                       ; preds = %if.end150
  %call158 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([13 x i8]* @.str18, i64 0, i64 0)) #12, !dbg !596
  %cmp159 = icmp eq i32 %call158, 0, !dbg !596
  br i1 %cmp159, label %if.then161, label %if.else162, !dbg !596

if.then161:                                       ; preds = %if.else156
  store i32 2, i32* @opMode, align 4, !dbg !596, !tbaa !492
  br label %for.inc281, !dbg !596

if.else162:                                       ; preds = %if.else156
  %call164 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([11 x i8]* @.str19, i64 0, i64 0)) #12, !dbg !597
  %cmp165 = icmp eq i32 %call164, 0, !dbg !597
  br i1 %cmp165, label %if.then167, label %if.else168, !dbg !597

if.then167:                                       ; preds = %if.else162
  store i32 1, i32* @opMode, align 4, !dbg !597, !tbaa !492
  br label %for.inc281, !dbg !597

if.else168:                                       ; preds = %if.else162
  %call170 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0)) #12, !dbg !598
  %cmp171 = icmp eq i32 %call170, 0, !dbg !598
  br i1 %cmp171, label %if.then173, label %if.else174, !dbg !598

if.then173:                                       ; preds = %if.else168
  store i8 1, i8* @forceOverwrite, align 1, !dbg !598, !tbaa !485
  br label %for.inc281, !dbg !598

if.else174:                                       ; preds = %if.else168
  %call176 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8]* @.str21, i64 0, i64 0)) #12, !dbg !599
  %cmp177 = icmp eq i32 %call176, 0, !dbg !599
  br i1 %cmp177, label %if.then179, label %if.else180, !dbg !599

if.then179:                                       ; preds = %if.else174
  store i32 3, i32* @opMode, align 4, !dbg !599, !tbaa !492
  br label %for.inc281, !dbg !599

if.else180:                                       ; preds = %if.else174
  %call182 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8]* @.str22, i64 0, i64 0)) #12, !dbg !600
  %cmp183 = icmp eq i32 %call182, 0, !dbg !600
  br i1 %cmp183, label %if.then185, label %if.else186, !dbg !600

if.then185:                                       ; preds = %if.else180
  store i8 1, i8* @keepInputFiles, align 1, !dbg !600, !tbaa !485
  br label %for.inc281, !dbg !600

if.else186:                                       ; preds = %if.else180
  %call188 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([8 x i8]* @.str23, i64 0, i64 0)) #12, !dbg !601
  %cmp189 = icmp eq i32 %call188, 0, !dbg !601
  br i1 %cmp189, label %if.then191, label %if.else192, !dbg !601

if.then191:                                       ; preds = %if.else186
  store i8 1, i8* @smallMode, align 1, !dbg !601, !tbaa !485
  br label %for.inc281, !dbg !601

if.else192:                                       ; preds = %if.else186
  %call194 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([8 x i8]* @.str24, i64 0, i64 0)) #12, !dbg !602
  %cmp195 = icmp eq i32 %call194, 0, !dbg !602
  br i1 %cmp195, label %if.then197, label %if.else198, !dbg !602

if.then197:                                       ; preds = %if.else192
  store i8 0, i8* @noisy, align 1, !dbg !602, !tbaa !485
  br label %for.inc281, !dbg !602

if.else198:                                       ; preds = %if.else192
  %call200 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([10 x i8]* @.str25, i64 0, i64 0)) #12, !dbg !603
  %cmp201 = icmp eq i32 %call200, 0, !dbg !603
  br i1 %cmp201, label %if.then203, label %if.else204, !dbg !603

if.then203:                                       ; preds = %if.else198
  %28 = load %struct._IO_FILE** @stderr, align 8, !dbg !604, !tbaa !484
  %call.i522 = call i8* @BZ2_bzlibVersion() #10, !dbg !605
  %call1.i523 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([529 x i8]* @.str101, i64 0, i64 0), i8* %call.i522) #10, !dbg !605
  br label %for.inc281, !dbg !603

if.else204:                                       ; preds = %if.else198
  %call206 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([10 x i8]* @.str26, i64 0, i64 0)) #12, !dbg !606
  %cmp207 = icmp eq i32 %call206, 0, !dbg !606
  br i1 %cmp207, label %if.then209, label %if.else210, !dbg !606

if.then209:                                       ; preds = %if.else204
  %29 = load %struct._IO_FILE** @stderr, align 8, !dbg !607, !tbaa !484
  %call.i524 = call i8* @BZ2_bzlibVersion() #10, !dbg !608
  %call1.i525 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([529 x i8]* @.str101, i64 0, i64 0), i8* %call.i524) #10, !dbg !608
  br label %for.inc281, !dbg !606

if.else210:                                       ; preds = %if.else204
  %call212 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #12, !dbg !609
  %cmp213 = icmp eq i32 %call212, 0, !dbg !609
  br i1 %cmp213, label %if.then215, label %if.else216, !dbg !609

if.then215:                                       ; preds = %if.else210
  store i32 1, i32* @workFactor, align 4, !dbg !609, !tbaa !492
  br label %for.inc281, !dbg !609

if.else216:                                       ; preds = %if.else210
  %call218 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([18 x i8]* @.str28, i64 0, i64 0)) #12, !dbg !610
  %cmp219 = icmp eq i32 %call218, 0, !dbg !610
  br i1 %cmp219, label %if.then221, label %if.else223, !dbg !610

if.then221:                                       ; preds = %if.else216
  call void @llvm.dbg.value(metadata !{i8* %27}, i64 0, metadata !611) #7, !dbg !612
  %30 = load %struct._IO_FILE** @stderr, align 8, !dbg !613, !tbaa !484
  %31 = load i8** @progName, align 8, !dbg !613, !tbaa !484
  %call.i526 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([49 x i8]* @.str99, i64 0, i64 0), i8* %31, i8* %27) #10, !dbg !613
  br label %for.inc281, !dbg !610

if.else223:                                       ; preds = %if.else216
  %call225 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([18 x i8]* @.str29, i64 0, i64 0)) #12, !dbg !614
  %cmp226 = icmp eq i32 %call225, 0, !dbg !614
  br i1 %cmp226, label %if.then228, label %if.else230, !dbg !614

if.then228:                                       ; preds = %if.else223
  call void @llvm.dbg.value(metadata !{i8* %27}, i64 0, metadata !615) #7, !dbg !616
  %32 = load %struct._IO_FILE** @stderr, align 8, !dbg !617, !tbaa !484
  %33 = load i8** @progName, align 8, !dbg !617, !tbaa !484
  %call.i527 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([49 x i8]* @.str99, i64 0, i64 0), i8* %33, i8* %27) #10, !dbg !617
  br label %for.inc281, !dbg !614

if.else230:                                       ; preds = %if.else223
  %call232 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8]* @.str30, i64 0, i64 0)) #12, !dbg !618
  %cmp233 = icmp eq i32 %call232, 0, !dbg !618
  br i1 %cmp233, label %if.then235, label %if.else236, !dbg !618

if.then235:                                       ; preds = %if.else230
  store i32 1, i32* @blockSize100k, align 4, !dbg !618, !tbaa !492
  br label %for.inc281, !dbg !618

if.else236:                                       ; preds = %if.else230
  %call238 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8]* @.str31, i64 0, i64 0)) #12, !dbg !619
  %cmp239 = icmp eq i32 %call238, 0, !dbg !619
  br i1 %cmp239, label %if.then241, label %if.else242, !dbg !619

if.then241:                                       ; preds = %if.else236
  store i32 9, i32* @blockSize100k, align 4, !dbg !619, !tbaa !492
  br label %for.inc281, !dbg !619

if.else242:                                       ; preds = %if.else236
  %call244 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([10 x i8]* @.str32, i64 0, i64 0)) #12, !dbg !620
  %cmp245 = icmp eq i32 %call244, 0, !dbg !620
  br i1 %cmp245, label %if.then247, label %if.else249, !dbg !620

if.then247:                                       ; preds = %if.else242
  %34 = load i32* @verbosity, align 4, !dbg !620, !tbaa !492
  %inc248 = add nsw i32 %34, 1, !dbg !620
  store i32 %inc248, i32* @verbosity, align 4, !dbg !620, !tbaa !492
  br label %for.inc281, !dbg !620

if.else249:                                       ; preds = %if.else242
  %call251 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8]* @.str33, i64 0, i64 0)) #12, !dbg !621
  %cmp252 = icmp eq i32 %call251, 0, !dbg !621
  br i1 %cmp252, label %if.then254, label %if.else255, !dbg !621

if.then254:                                       ; preds = %if.else249
  %35 = load i8** @progName, align 8, !dbg !622, !tbaa !484
  call void @llvm.dbg.value(metadata !{i8* %35}, i64 0, metadata !624) #7, !dbg !625
  %36 = load %struct._IO_FILE** @stderr, align 8, !dbg !626, !tbaa !484
  %call.i528 = call i8* @BZ2_bzlibVersion() #10, !dbg !627
  %call1.i529 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([1230 x i8]* @.str100, i64 0, i64 0), i8* %call.i528, i8* %35) #10, !dbg !627
  call void @exit(i32 0) #13, !dbg !622
  unreachable, !dbg !622

if.else255:                                       ; preds = %if.else249
  %call257 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i64 2) #12, !dbg !628
  %cmp258 = icmp eq i32 %call257, 0, !dbg !628
  br i1 %cmp258, label %if.then260, label %for.inc281, !dbg !628

if.then260:                                       ; preds = %if.else255
  %37 = load %struct._IO_FILE** @stderr, align 8, !dbg !629, !tbaa !484
  %38 = load i8** @progName, align 8, !dbg !629, !tbaa !484
  %call262 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([19 x i8]* @.str16, i64 0, i64 0), i8* %38, i8* %27) #10, !dbg !629
  %39 = load i8** @progName, align 8, !dbg !631, !tbaa !484
  call void @llvm.dbg.value(metadata !{i8* %39}, i64 0, metadata !632) #7, !dbg !633
  %40 = load %struct._IO_FILE** @stderr, align 8, !dbg !634, !tbaa !484
  %call.i530 = call i8* @BZ2_bzlibVersion() #10, !dbg !635
  %call1.i531 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([1230 x i8]* @.str100, i64 0, i64 0), i8* %call.i530, i8* %39) #10, !dbg !635
  call void @exit(i32 1) #13, !dbg !636
  unreachable, !dbg !636

for.inc281:                                       ; preds = %if.then155, %if.then167, %if.then179, %if.then191, %if.then203, %if.then215, %if.then228, %if.then241, %if.else255, %if.then247, %if.then235, %if.then221, %if.then209, %if.then197, %if.then185, %if.then173, %if.then161
  %link282 = getelementptr inbounds %struct.zzzz* %aa.2552, i64 0, i32 1, !dbg !550
  %aa.2 = load %struct.zzzz** %link282, align 8, !dbg !550
  %cmp142 = icmp eq %struct.zzzz* %aa.2, null, !dbg !550
  br i1 %cmp142, label %for.end283, label %for.body144, !dbg !550

for.end283:                                       ; preds = %for.cond78.preheader, %for.inc281, %for.body144, %for.cond141.preheader
  %41 = load i32* @verbosity, align 4, !dbg !637, !tbaa !492
  %cmp284 = icmp sgt i32 %41, 4, !dbg !637
  br i1 %cmp284, label %if.then286, label %if.end287, !dbg !637

if.then286:                                       ; preds = %for.end283
  store i32 4, i32* @verbosity, align 4, !dbg !637, !tbaa !492
  br label %if.end287, !dbg !637

if.end287:                                        ; preds = %for.end283, %if.then286
  %42 = load i32* @opMode, align 4, !dbg !638, !tbaa !492
  %cmp288 = icmp eq i32 %42, 1, !dbg !638
  br i1 %cmp288, label %land.lhs.true290, label %if.end297, !dbg !638

land.lhs.true290:                                 ; preds = %if.end287
  %43 = load i8* @smallMode, align 1, !dbg !638, !tbaa !485
  %tobool292 = icmp ne i8 %43, 0, !dbg !638
  %44 = load i32* @blockSize100k, align 4, !dbg !638, !tbaa !492
  %cmp294 = icmp sgt i32 %44, 2, !dbg !638
  %or.cond = and i1 %tobool292, %cmp294, !dbg !638
  br i1 %or.cond, label %if.then296, label %if.end297.thread, !dbg !638

if.then296:                                       ; preds = %land.lhs.true290
  store i32 2, i32* @blockSize100k, align 4, !dbg !639, !tbaa !492
  br label %if.end297.thread, !dbg !639

if.end297.thread:                                 ; preds = %land.lhs.true290, %if.then296
  %45 = load i32* @srcMode, align 4, !dbg !640, !tbaa !492
  %cmp301577 = icmp eq i32 %45, 2, !dbg !640
  br label %if.end305, !dbg !640

if.end297:                                        ; preds = %if.end287
  %cmp298 = icmp eq i32 %42, 3, !dbg !640
  %46 = load i32* @srcMode, align 4, !dbg !640, !tbaa !492
  %cmp301 = icmp eq i32 %46, 2, !dbg !640
  %or.cond445 = and i1 %cmp298, %cmp301, !dbg !640
  br i1 %or.cond445, label %if.then303, label %if.end305, !dbg !640

if.then303:                                       ; preds = %if.end297
  %47 = load %struct._IO_FILE** @stderr, align 8, !dbg !641, !tbaa !484
  %48 = load i8** @progName, align 8, !dbg !641, !tbaa !484
  %call304 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([40 x i8]* @.str34, i64 0, i64 0), i8* %48) #10, !dbg !641
  call void @exit(i32 1) #13, !dbg !643
  unreachable, !dbg !643

if.end305:                                        ; preds = %if.end297.thread, %if.end297
  %cmp301579 = phi i1 [ %cmp301577, %if.end297.thread ], [ %cmp301, %if.end297 ]
  %49 = phi i32 [ %45, %if.end297.thread ], [ %46, %if.end297 ]
  %50 = load i32* @numFileNames, align 4, !dbg !644, !tbaa !492
  %cmp309 = icmp eq i32 %50, 0, !dbg !644
  %or.cond446 = and i1 %cmp301579, %cmp309, !dbg !644
  br i1 %or.cond446, label %if.then311, label %if.end312, !dbg !644

if.then311:                                       ; preds = %if.end305
  store i32 1, i32* @srcMode, align 4, !dbg !645, !tbaa !492
  br label %if.end312, !dbg !645

if.end312:                                        ; preds = %if.then311, %if.end305
  %51 = phi i32 [ 1, %if.then311 ], [ %49, %if.end305 ]
  br i1 %cmp288, label %if.end316, label %if.then315, !dbg !646

if.then315:                                       ; preds = %if.end312
  store i32 0, i32* @blockSize100k, align 4, !dbg !646, !tbaa !492
  br label %if.end316, !dbg !646

if.end316:                                        ; preds = %if.end312, %if.then315
  %cmp317 = icmp eq i32 %51, 3, !dbg !647
  br i1 %cmp317, label %if.then319, label %if.end323, !dbg !647

if.then319:                                       ; preds = %if.end316
  %call320 = call void (i32)* (i32, void (i32)*)* @signal(i32 2, void (i32)* @mySignalCatcher) #10, !dbg !648
  %call321 = call void (i32)* (i32, void (i32)*)* @signal(i32 15, void (i32)* @mySignalCatcher) #10, !dbg !650
  %call322 = call void (i32)* (i32, void (i32)*)* @signal(i32 1, void (i32)* @mySignalCatcher) #10, !dbg !651
  %.pre = load i32* @opMode, align 4, !dbg !652, !tbaa !492
  br label %if.end323, !dbg !653

if.end323:                                        ; preds = %if.then319, %if.end316
  %52 = phi i32 [ %.pre, %if.then319 ], [ %42, %if.end316 ]
  switch i32 %52, label %if.else394 [
    i32 1, label %if.then326
    i32 2, label %if.then360
  ], !dbg !652

if.then326:                                       ; preds = %if.end323
  %53 = load i32* @srcMode, align 4, !dbg !654, !tbaa !492
  %cmp327 = icmp eq i32 %53, 1, !dbg !654
  br i1 %cmp327, label %if.then329, label %for.cond331.preheader, !dbg !654

for.cond331.preheader:                            ; preds = %if.then326
  call void @llvm.dbg.value(metadata !{%struct.zzzz** %argList}, i64 0, metadata !103), !dbg !656
  br i1 %cmp18562, label %while.end, label %for.body334, !dbg !656

if.then329:                                       ; preds = %if.then326
  call fastcc void @compress(i8* null) #11, !dbg !659
  br label %if.end434, !dbg !661

for.body334:                                      ; preds = %for.cond331.preheader, %for.inc353
  %aa.3544 = phi %struct.zzzz* [ %aa.3, %for.inc353 ], [ %aa.0561, %for.cond331.preheader ]
  %decode.2543 = phi i8 [ %decode.3, %for.inc353 ], [ 1, %for.cond331.preheader ]
  %name335 = getelementptr inbounds %struct.zzzz* %aa.3544, i64 0, i32 0, !dbg !662
  %54 = load i8** %name335, align 8, !dbg !662, !tbaa !484
  %call336 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #12, !dbg !662
  %cmp337 = icmp eq i32 %call336, 0, !dbg !662
  br i1 %cmp337, label %for.inc353, label %if.end340, !dbg !662

if.end340:                                        ; preds = %for.body334
  %55 = load i8* %54, align 1, !dbg !664, !tbaa !485
  %cmp344 = icmp ne i8 %55, 45, !dbg !664
  %tobool348 = icmp eq i8 %decode.2543, 0, !dbg !664
  %or.cond514 = or i1 %cmp344, %tobool348, !dbg !664
  br i1 %or.cond514, label %if.end350, label %for.inc353, !dbg !664

if.end350:                                        ; preds = %if.end340
  %56 = load i32* @numFilesProcessed, align 4, !dbg !665, !tbaa !492
  %inc351 = add nsw i32 %56, 1, !dbg !665
  store i32 %inc351, i32* @numFilesProcessed, align 4, !dbg !665, !tbaa !492
  call fastcc void @compress(i8* %54) #11, !dbg !666
  br label %for.inc353, !dbg !667

for.inc353:                                       ; preds = %if.end340, %for.body334, %if.end350
  %decode.3 = phi i8 [ %decode.2543, %if.end350 ], [ 0, %for.body334 ], [ %decode.2543, %if.end340 ]
  %link354 = getelementptr inbounds %struct.zzzz* %aa.3544, i64 0, i32 1, !dbg !656
  %aa.3 = load %struct.zzzz** %link354, align 8, !dbg !656
  %cmp332 = icmp eq %struct.zzzz* %aa.3, null, !dbg !656
  br i1 %cmp332, label %if.end434, label %for.body334, !dbg !656

if.then360:                                       ; preds = %if.end323
  store i8 0, i8* @unzFailsExist, align 1, !dbg !668, !tbaa !485
  %57 = load i32* @srcMode, align 4, !dbg !670, !tbaa !492
  %cmp361 = icmp eq i32 %57, 1, !dbg !670
  br i1 %cmp361, label %if.then363, label %for.cond365.preheader, !dbg !670

for.cond365.preheader:                            ; preds = %if.then360
  call void @llvm.dbg.value(metadata !{%struct.zzzz** %argList}, i64 0, metadata !103), !dbg !671
  br i1 %cmp18562, label %if.end390, label %for.body368, !dbg !671

if.then363:                                       ; preds = %if.then360
  call fastcc void @uncompress(i8* null) #11, !dbg !674
  br label %if.end390, !dbg !676

for.body368:                                      ; preds = %for.cond365.preheader, %for.inc387
  %aa.4548 = phi %struct.zzzz* [ %aa.4, %for.inc387 ], [ %aa.0561, %for.cond365.preheader ]
  %decode.4547 = phi i8 [ %decode.5, %for.inc387 ], [ 1, %for.cond365.preheader ]
  %name369 = getelementptr inbounds %struct.zzzz* %aa.4548, i64 0, i32 0, !dbg !677
  %58 = load i8** %name369, align 8, !dbg !677, !tbaa !484
  %call370 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #12, !dbg !677
  %cmp371 = icmp eq i32 %call370, 0, !dbg !677
  br i1 %cmp371, label %for.inc387, label %if.end374, !dbg !677

if.end374:                                        ; preds = %for.body368
  %59 = load i8* %58, align 1, !dbg !679, !tbaa !485
  %cmp378 = icmp ne i8 %59, 45, !dbg !679
  %tobool382 = icmp eq i8 %decode.4547, 0, !dbg !679
  %or.cond515 = or i1 %cmp378, %tobool382, !dbg !679
  br i1 %or.cond515, label %if.end384, label %for.inc387, !dbg !679

if.end384:                                        ; preds = %if.end374
  %60 = load i32* @numFilesProcessed, align 4, !dbg !680, !tbaa !492
  %inc385 = add nsw i32 %60, 1, !dbg !680
  store i32 %inc385, i32* @numFilesProcessed, align 4, !dbg !680, !tbaa !492
  call fastcc void @uncompress(i8* %58) #11, !dbg !681
  br label %for.inc387, !dbg !682

for.inc387:                                       ; preds = %if.end374, %for.body368, %if.end384
  %decode.5 = phi i8 [ %decode.4547, %if.end384 ], [ 0, %for.body368 ], [ %decode.4547, %if.end374 ]
  %link388 = getelementptr inbounds %struct.zzzz* %aa.4548, i64 0, i32 1, !dbg !671
  %aa.4 = load %struct.zzzz** %link388, align 8, !dbg !671
  %cmp366 = icmp eq %struct.zzzz* %aa.4, null, !dbg !671
  br i1 %cmp366, label %if.end390, label %for.body368, !dbg !671

if.end390:                                        ; preds = %for.cond365.preheader, %for.inc387, %if.then363
  %61 = load i8* @unzFailsExist, align 1, !dbg !683, !tbaa !485
  %tobool391 = icmp eq i8 %61, 0, !dbg !683
  br i1 %tobool391, label %if.end434, label %if.then392, !dbg !683

if.then392:                                       ; preds = %if.end390
  tail call void @llvm.dbg.value(metadata !684, i64 0, metadata !685), !dbg !688
  %62 = load i32* @exitValue, align 4, !dbg !689, !tbaa !492
  %cmp.i = icmp slt i32 %62, 2, !dbg !689
  br i1 %cmp.i, label %if.then.i, label %setExit.exit, !dbg !689

if.then.i:                                        ; preds = %if.then392
  store i32 2, i32* @exitValue, align 4, !dbg !689, !tbaa !492
  br label %setExit.exit, !dbg !689

setExit.exit:                                     ; preds = %if.then392, %if.then.i
  %63 = phi i32 [ %62, %if.then392 ], [ 2, %if.then.i ]
  call void @exit(i32 %63) #13, !dbg !690
  unreachable, !dbg !690

if.else394:                                       ; preds = %if.end323
  store i8 0, i8* @testFailsExist, align 1, !dbg !691, !tbaa !485
  %64 = load i32* @srcMode, align 4, !dbg !693, !tbaa !492
  %cmp395 = icmp eq i32 %64, 1, !dbg !693
  br i1 %cmp395, label %if.then397, label %for.cond399.preheader, !dbg !693

for.cond399.preheader:                            ; preds = %if.else394
  call void @llvm.dbg.value(metadata !{%struct.zzzz** %argList}, i64 0, metadata !103), !dbg !694
  br i1 %cmp18562, label %if.end424, label %for.body402, !dbg !694

if.then397:                                       ; preds = %if.else394
  call fastcc void @testf(i8* null) #11, !dbg !697
  br label %if.end424, !dbg !699

for.body402:                                      ; preds = %for.cond399.preheader, %for.inc421
  %aa.5540 = phi %struct.zzzz* [ %aa.5, %for.inc421 ], [ %aa.0561, %for.cond399.preheader ]
  %decode.6539 = phi i8 [ %decode.7, %for.inc421 ], [ 1, %for.cond399.preheader ]
  %name403 = getelementptr inbounds %struct.zzzz* %aa.5540, i64 0, i32 0, !dbg !700
  %65 = load i8** %name403, align 8, !dbg !700, !tbaa !484
  %call404 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #12, !dbg !700
  %cmp405 = icmp eq i32 %call404, 0, !dbg !700
  br i1 %cmp405, label %for.inc421, label %if.end408, !dbg !700

if.end408:                                        ; preds = %for.body402
  %66 = load i8* %65, align 1, !dbg !702, !tbaa !485
  %cmp412 = icmp ne i8 %66, 45, !dbg !702
  %tobool416 = icmp eq i8 %decode.6539, 0, !dbg !702
  %or.cond516 = or i1 %cmp412, %tobool416, !dbg !702
  br i1 %or.cond516, label %if.end418, label %for.inc421, !dbg !702

if.end418:                                        ; preds = %if.end408
  %67 = load i32* @numFilesProcessed, align 4, !dbg !703, !tbaa !492
  %inc419 = add nsw i32 %67, 1, !dbg !703
  store i32 %inc419, i32* @numFilesProcessed, align 4, !dbg !703, !tbaa !492
  call fastcc void @testf(i8* %65) #11, !dbg !704
  br label %for.inc421, !dbg !705

for.inc421:                                       ; preds = %if.end408, %for.body402, %if.end418
  %decode.7 = phi i8 [ %decode.6539, %if.end418 ], [ 0, %for.body402 ], [ %decode.6539, %if.end408 ]
  %link422 = getelementptr inbounds %struct.zzzz* %aa.5540, i64 0, i32 1, !dbg !694
  %aa.5 = load %struct.zzzz** %link422, align 8, !dbg !694
  %cmp400 = icmp eq %struct.zzzz* %aa.5, null, !dbg !694
  br i1 %cmp400, label %if.end424, label %for.body402, !dbg !694

if.end424:                                        ; preds = %for.cond399.preheader, %for.inc421, %if.then397
  %68 = load i8* @testFailsExist, align 1, !dbg !706, !tbaa !485
  %tobool426 = icmp eq i8 %68, 0, !dbg !706
  %69 = load i8* @noisy, align 1, !dbg !706, !tbaa !485
  %tobool429 = icmp eq i8 %69, 0, !dbg !706
  %or.cond517 = or i1 %tobool426, %tobool429, !dbg !706
  br i1 %or.cond517, label %if.end434, label %if.then430, !dbg !706

if.then430:                                       ; preds = %if.end424
  %70 = load %struct._IO_FILE** @stderr, align 8, !dbg !707, !tbaa !484
  %71 = call i64 @fwrite(i8* getelementptr inbounds ([113 x i8]* @.str35, i64 0, i64 0), i64 112, i64 1, %struct._IO_FILE* %70) #7, !dbg !707
  tail call void @llvm.dbg.value(metadata !684, i64 0, metadata !709), !dbg !711
  %72 = load i32* @exitValue, align 4, !dbg !712, !tbaa !492
  %cmp.i532 = icmp slt i32 %72, 2, !dbg !712
  br i1 %cmp.i532, label %if.then.i533, label %setExit.exit534, !dbg !712

if.then.i533:                                     ; preds = %if.then430
  store i32 2, i32* @exitValue, align 4, !dbg !712, !tbaa !492
  br label %setExit.exit534, !dbg !712

setExit.exit534:                                  ; preds = %if.then430, %if.then.i533
  %73 = phi i32 [ %72, %if.then430 ], [ 2, %if.then.i533 ]
  call void @exit(i32 %73) #13, !dbg !713
  unreachable, !dbg !713

if.end434:                                        ; preds = %for.inc353, %if.end390, %if.end424, %if.then329
  call void @llvm.dbg.value(metadata !{%struct.zzzz** %argList}, i64 0, metadata !103), !dbg !714
  call void @llvm.dbg.value(metadata !{%struct.zzzz* %aa.0561}, i64 0, metadata !111), !dbg !714
  br i1 %cmp18562, label %while.end, label %while.body, !dbg !715

while.body:                                       ; preds = %if.end434, %if.end444
  %aa.6536 = phi %struct.zzzz* [ %74, %if.end444 ], [ %aa.0561, %if.end434 ]
  %link438 = getelementptr inbounds %struct.zzzz* %aa.6536, i64 0, i32 1, !dbg !716
  %74 = load %struct.zzzz** %link438, align 8, !dbg !716, !tbaa !484
  call void @llvm.dbg.value(metadata !{%struct.zzzz* %74}, i64 0, metadata !115), !dbg !716
  %name439 = getelementptr inbounds %struct.zzzz* %aa.6536, i64 0, i32 0, !dbg !717
  %75 = load i8** %name439, align 8, !dbg !717, !tbaa !484
  %cmp440 = icmp eq i8* %75, null, !dbg !717
  br i1 %cmp440, label %if.end444, label %if.then442, !dbg !717

if.then442:                                       ; preds = %while.body
  call void @free(i8* %75) #10, !dbg !717
  br label %if.end444, !dbg !717

if.end444:                                        ; preds = %while.body, %if.then442
  %76 = bitcast %struct.zzzz* %aa.6536 to i8*, !dbg !718
  call void @free(i8* %76) #10, !dbg !718
  call void @llvm.dbg.value(metadata !{%struct.zzzz* %74}, i64 0, metadata !111), !dbg !719
  %cmp435 = icmp eq %struct.zzzz* %74, null, !dbg !715
  br i1 %cmp435, label %while.end, label %while.body, !dbg !715

while.end:                                        ; preds = %for.cond331.preheader, %if.end444, %if.end434
  %77 = load i32* @exitValue, align 4, !dbg !720, !tbaa !492
  ret i32 %77, !dbg !720
}

; Function Attrs: nounwind optsize
declare void (i32)* @signal(i32, void (i32)*) #3

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @mySIGSEGVorSIGBUScatcher(i32 %n) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !442), !dbg !721
  %0 = load i32* @opMode, align 4, !dbg !722, !tbaa !492
  %cmp = icmp eq i32 %0, 1, !dbg !722
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !723, !tbaa !484
  %2 = load i8** @progName, align 8, !dbg !723, !tbaa !484
  br i1 %cmp, label %if.then, label %if.else, !dbg !722

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([869 x i8]* @.str103, i64 0, i64 0), i8* %2) #10, !dbg !723
  br label %if.end, !dbg !723

if.else:                                          ; preds = %entry
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([996 x i8]* @.str104, i64 0, i64 0), i8* %2) #10, !dbg !724
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call fastcc void @showFileNames() #11, !dbg !725
  %3 = load i32* @opMode, align 4, !dbg !726, !tbaa !492
  %cmp2 = icmp eq i32 %3, 1, !dbg !726
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !726

if.then3:                                         ; preds = %if.end
  tail call fastcc void @cleanUpAndFail(i32 3) #14, !dbg !727
  unreachable, !dbg !727

if.else4:                                         ; preds = %if.end
  tail call fastcc void @cadvise() #11, !dbg !728
  tail call fastcc void @cleanUpAndFail(i32 2) #14, !dbg !728
  unreachable, !dbg !728
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @copyFileName(i8* %to, i8* %from) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %to}, i64 0, metadata !438), !dbg !730
  tail call void @llvm.dbg.value(metadata !{i8* %from}, i64 0, metadata !439), !dbg !730
  %call = tail call i64 @strlen(i8* %from) #12, !dbg !731
  %cmp = icmp ugt i64 %call, 1024, !dbg !731
  br i1 %cmp, label %if.then, label %if.end, !dbg !731

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !732, !tbaa !484
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([120 x i8]* @.str102, i64 0, i64 0), i8* %from, i32 1024) #10, !dbg !732
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !734), !dbg !736
  %1 = load i32* @exitValue, align 4, !dbg !737, !tbaa !492
  %cmp.i = icmp slt i32 %1, 1, !dbg !737
  br i1 %cmp.i, label %if.then.i, label %setExit.exit, !dbg !737

if.then.i:                                        ; preds = %if.then
  store i32 1, i32* @exitValue, align 4, !dbg !737, !tbaa !492
  br label %setExit.exit, !dbg !737

setExit.exit:                                     ; preds = %if.then, %if.then.i
  %2 = phi i32 [ %1, %if.then ], [ 1, %if.then.i ]
  tail call void @exit(i32 %2) #13, !dbg !738
  unreachable, !dbg !738

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @strncpy(i8* %to, i8* %from, i64 1024) #10, !dbg !739
  %arrayidx = getelementptr inbounds i8* %to, i64 1024, !dbg !740
  store i8 0, i8* %arrayidx, align 1, !dbg !740, !tbaa !485
  ret void, !dbg !741
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @addFlagsFromEnvVar(%struct.zzzz** nocapture %argList, i8* nocapture %varName) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.zzzz** %argList}, i64 0, metadata !427), !dbg !742
  tail call void @llvm.dbg.value(metadata !{i8* %varName}, i64 0, metadata !428), !dbg !742
  %call = tail call i8* @getenv(i8* %varName) #10, !dbg !743
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !432), !dbg !743
  %cmp = icmp eq i8* %call, null, !dbg !744
  br i1 %cmp, label %if.end48, label %while.body.preheader, !dbg !744

while.body.preheader:                             ; preds = %entry
  %0 = load i8* %call, align 1, !dbg !745, !tbaa !485
  %cmp172 = icmp eq i8 %0, 0, !dbg !745
  br i1 %cmp172, label %if.end48, label %while.cond4.preheader.lr.ph, !dbg !745

while.cond4.preheader.lr.ph:                      ; preds = %while.body.preheader
  %call8 = tail call i16** @__ctype_b_loc() #15, !dbg !748
  br label %while.cond4.preheader, !dbg !745

while.cond4.preheader:                            ; preds = %while.body.backedge, %while.cond4.preheader.lr.ph
  %1 = phi i8 [ %0, %while.cond4.preheader.lr.ph ], [ %11, %while.body.backedge ]
  %arrayidx73 = phi i8* [ %call, %while.cond4.preheader.lr.ph ], [ %arrayidx, %while.body.backedge ]
  %2 = load i16** %call8, align 8, !dbg !748, !tbaa !484
  br label %while.cond4, !dbg !748

while.cond4:                                      ; preds = %while.cond4.while.cond4_crit_edge, %while.cond4.preheader
  %3 = phi i8 [ %.pre, %while.cond4.while.cond4_crit_edge ], [ %1, %while.cond4.preheader ]
  %p.1 = phi i8* [ %incdec.ptr, %while.cond4.while.cond4_crit_edge ], [ %arrayidx73, %while.cond4.preheader ]
  %idxprom7 = sext i8 %3 to i64, !dbg !748
  %arrayidx9 = getelementptr inbounds i16* %2, i64 %idxprom7, !dbg !748
  %4 = load i16* %arrayidx9, align 2, !dbg !748, !tbaa !749
  %and = and i16 %4, 8192, !dbg !748
  %tobool = icmp eq i16 %and, 0, !dbg !748
  %incdec.ptr = getelementptr inbounds i8* %p.1, i64 1, !dbg !748
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !433), !dbg !748
  br i1 %tobool, label %while.cond12.loopexit, label %while.cond4.while.cond4_crit_edge, !dbg !748

while.cond4.while.cond4_crit_edge:                ; preds = %while.cond4
  %.pre = load i8* %incdec.ptr, align 1, !dbg !748, !tbaa !485
  br label %while.cond4, !dbg !748

while.cond12.loopexit:                            ; preds = %while.cond4
  %cmp1668 = icmp eq i8 %3, 0, !dbg !750
  br i1 %cmp1668, label %while.body.backedge, label %land.rhs, !dbg !750

while.cond12:                                     ; preds = %land.rhs
  %arrayidx14 = getelementptr inbounds i8* %p.1, i64 %indvars.iv, !dbg !750
  %5 = load i8* %arrayidx14, align 1, !dbg !750, !tbaa !485
  %cmp16 = icmp eq i8 %5, 0, !dbg !750
  br i1 %cmp16, label %while.end28, label %while.cond12.land.rhs_crit_edge, !dbg !750

while.cond12.land.rhs_crit_edge:                  ; preds = %while.cond12
  %idxprom21.phi.trans.insert = sext i8 %5 to i64
  %arrayidx23.phi.trans.insert = getelementptr inbounds i16* %2, i64 %idxprom21.phi.trans.insert
  %.pre81 = load i16* %arrayidx23.phi.trans.insert, align 2, !dbg !750, !tbaa !749
  %phitmp = add i64 %indvars.iv, 1, !dbg !750
  br label %land.rhs, !dbg !750

land.rhs:                                         ; preds = %while.cond12.loopexit, %while.cond12.land.rhs_crit_edge
  %6 = phi i16 [ %.pre81, %while.cond12.land.rhs_crit_edge ], [ %4, %while.cond12.loopexit ]
  %indvars.iv = phi i64 [ %phitmp, %while.cond12.land.rhs_crit_edge ], [ 1, %while.cond12.loopexit ]
  %i.169 = phi i32 [ %inc, %while.cond12.land.rhs_crit_edge ], [ 0, %while.cond12.loopexit ]
  %and25 = and i16 %6, 8192, !dbg !750
  %lnot = icmp eq i16 %and25, 0, !dbg !750
  %inc = add nsw i32 %i.169, 1, !dbg !750
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !429), !dbg !750
  br i1 %lnot, label %while.cond12, label %while.end28

while.end28:                                      ; preds = %while.cond12, %land.rhs
  %i.1.lcssa = phi i32 [ %i.169, %land.rhs ], [ %inc, %while.cond12 ]
  %cmp29 = icmp sgt i32 %i.1.lcssa, 0, !dbg !751
  br i1 %cmp29, label %if.then31, label %while.body.backedge, !dbg !751

if.then31:                                        ; preds = %while.end28
  tail call void @llvm.dbg.value(metadata !{i32 %i.1.lcssa83}, i64 0, metadata !431), !dbg !752
  %cmp32 = icmp sgt i32 %i.1.lcssa, 1024, !dbg !752
  %. = select i1 %cmp32, i32 1024, i32 %i.1.lcssa, !dbg !752
  tail call void @llvm.dbg.value(metadata !{i32 %.}, i64 0, metadata !431), !dbg !752
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !430), !dbg !754
  %cmp3670 = icmp sgt i32 %., 0, !dbg !754
  br i1 %cmp3670, label %for.body.lr.ph, label %for.end, !dbg !754

for.body.lr.ph:                                   ; preds = %if.then31
  %7 = icmp slt i32 %i.1.lcssa, 1024, !dbg !754
  %8 = select i1 %7, i32 %i.1.lcssa, i32 1024, !dbg !754
  br label %for.body, !dbg !754

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %9 = phi i8 [ %3, %for.body.lr.ph ], [ %.pre80, %for.body.for.body_crit_edge ]
  %indvars.iv78 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next79, %for.body.for.body_crit_edge ]
  %arrayidx41 = getelementptr inbounds [1034 x i8]* @tmpName, i64 0, i64 %indvars.iv78, !dbg !754
  store i8 %9, i8* %arrayidx41, align 1, !dbg !754, !tbaa !485
  %indvars.iv.next79 = add i64 %indvars.iv78, 1, !dbg !754
  %lftr.wideiv = trunc i64 %indvars.iv.next79 to i32, !dbg !754
  %exitcond = icmp eq i32 %lftr.wideiv, %8, !dbg !754
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge, !dbg !754

for.body.for.body_crit_edge:                      ; preds = %for.body
  %arrayidx39.phi.trans.insert = getelementptr inbounds i8* %p.1, i64 %indvars.iv.next79
  %.pre80 = load i8* %arrayidx39.phi.trans.insert, align 1, !dbg !754, !tbaa !485
  br label %for.body, !dbg !754

for.end:                                          ; preds = %for.body, %if.then31
  %idxprom43 = sext i32 %. to i64, !dbg !756
  %arrayidx44 = getelementptr inbounds [1034 x i8]* @tmpName, i64 0, i64 %idxprom43, !dbg !756
  store i8 0, i8* %arrayidx44, align 1, !dbg !756, !tbaa !485
  %10 = load %struct.zzzz** %argList, align 8, !dbg !757, !tbaa !484
  %call45 = tail call fastcc %struct.zzzz* @snocString(%struct.zzzz* %10, i8* getelementptr inbounds ([1034 x i8]* @tmpName, i64 0, i64 0)) #11, !dbg !757
  store %struct.zzzz* %call45, %struct.zzzz** %argList, align 8, !dbg !757, !tbaa !484
  br label %while.body.backedge, !dbg !758

while.body.backedge:                              ; preds = %while.cond12.loopexit, %while.end28, %for.end
  %i.1.lcssa83 = phi i32 [ %i.1.lcssa, %for.end ], [ %i.1.lcssa, %while.end28 ], [ 0, %while.cond12.loopexit ]
  %idxprom = sext i32 %i.1.lcssa83 to i64, !dbg !745
  %arrayidx = getelementptr inbounds i8* %p.1, i64 %idxprom, !dbg !745
  %11 = load i8* %arrayidx, align 1, !dbg !745, !tbaa !485
  %cmp1 = icmp eq i8 %11, 0, !dbg !745
  br i1 %cmp1, label %if.end48, label %while.cond4.preheader, !dbg !745

if.end48:                                         ; preds = %while.body.preheader, %while.body.backedge, %entry
  ret void, !dbg !759
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.zzzz* @snocString(%struct.zzzz* %root, i8* nocapture %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.zzzz* %root}, i64 0, metadata !405), !dbg !760
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !406), !dbg !760
  %cmp = icmp eq %struct.zzzz* %root, null, !dbg !761
  br i1 %cmp, label %if.then, label %while.cond, !dbg !761

if.then:                                          ; preds = %entry
  %call.i = tail call fastcc i8* @myMalloc(i32 16) #10, !dbg !762
  %0 = bitcast i8* %call.i to %struct.zzzz*, !dbg !762
  tail call void @llvm.dbg.value(metadata !{%struct.zzzz* %0}, i64 0, metadata !764) #7, !dbg !762
  tail call void @llvm.memset.p0i8.i64(i8* %call.i, i8 0, i64 16, i32 8, i1 false) #7, !dbg !765
  tail call void @llvm.dbg.value(metadata !{%struct.zzzz* %0}, i64 0, metadata !407), !dbg !763
  %call1 = tail call i64 @strlen(i8* %name) #12, !dbg !766
  %add = add i64 %call1, 5, !dbg !766
  %conv = trunc i64 %add to i32, !dbg !766
  %call2 = tail call fastcc i8* @myMalloc(i32 %conv) #11, !dbg !766
  %name3 = bitcast i8* %call.i to i8**, !dbg !766
  store i8* %call2, i8** %name3, align 8, !dbg !766, !tbaa !484
  %call5 = tail call i8* @strcpy(i8* %call2, i8* %name) #10, !dbg !767
  ret %struct.zzzz* %0, !dbg !768

while.cond:                                       ; preds = %entry, %while.cond
  %tmp7.0 = phi %struct.zzzz* [ %1, %while.cond ], [ %root, %entry ]
  %link = getelementptr inbounds %struct.zzzz* %tmp7.0, i64 0, i32 1, !dbg !769
  %1 = load %struct.zzzz** %link, align 8, !dbg !769, !tbaa !484
  %cmp8 = icmp eq %struct.zzzz* %1, null, !dbg !769
  br i1 %cmp8, label %while.end, label %while.cond, !dbg !769

while.end:                                        ; preds = %while.cond
  %call12 = tail call fastcc %struct.zzzz* @snocString(%struct.zzzz* null, i8* %name) #11, !dbg !770
  store %struct.zzzz* %call12, %struct.zzzz** %link, align 8, !dbg !770, !tbaa !484
  ret %struct.zzzz* %root, !dbg !768
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #5

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #6

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @mySignalCatcher(i32 %n) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !393), !dbg !771
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !772, !tbaa !484
  %1 = load i8** @progName, align 8, !dbg !772, !tbaa !484
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str98, i64 0, i64 0), i8* %1) #10, !dbg !772
  tail call fastcc void @cleanUpAndFail(i32 1) #14, !dbg !773
  unreachable, !dbg !773
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @compress(i8* %name) #0 {
entry:
  %statBuf.i = alloca %struct.stat, align 8
  %ibuf.i = alloca [5000 x i8], align 16
  %nbytes_in_lo32.i = alloca i32, align 4
  %nbytes_in_hi32.i = alloca i32, align 4
  %nbytes_out_lo32.i = alloca i32, align 4
  %nbytes_out_hi32.i = alloca i32, align 4
  %bzerr.i = alloca i32, align 4
  %bzerr_dummy.i = alloca i32, align 4
  %buf_nin.i = alloca [32 x i8], align 16
  %buf_nout.i = alloca [32 x i8], align 16
  %nbytes_in.i = alloca %struct.UInt64, align 1
  %nbytes_out.i = alloca %struct.UInt64, align 1
  %statBuf = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !302), !dbg !774
  %0 = bitcast %struct.stat* %statBuf to i8*, !dbg !775
  call void @llvm.lifetime.start(i64 144, i8* %0) #7, !dbg !775
  call void @llvm.dbg.declare(metadata !{%struct.stat* %statBuf}, metadata !307), !dbg !775
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !776, !tbaa !485
  %cmp = icmp eq i8* %name, null, !dbg !777
  %1 = load i32* @srcMode, align 4, !dbg !777, !tbaa !492
  %cmp1 = icmp ne i32 %1, 1, !dbg !777
  %or.cond = and i1 %cmp, %cmp1, !dbg !777
  br i1 %or.cond, label %if.then, label %if.end, !dbg !777

if.then:                                          ; preds = %entry
  call fastcc void @panic(i8* getelementptr inbounds ([21 x i8]* @.str90, i64 0, i64 0)) #14, !dbg !778
  unreachable, !dbg !778

if.end:                                           ; preds = %entry
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb3
  ], !dbg !779

sw.bb:                                            ; preds = %if.end
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0)) #11, !dbg !780
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str70, i64 0, i64 0)) #11, !dbg !782
  br label %sw.epilog, !dbg !783

sw.bb2:                                           ; preds = %if.end
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %name) #11, !dbg !784
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* %name) #11, !dbg !785
  %strlen = call i64 @strlen(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)), !dbg !786
  %endptr = getelementptr [1034 x i8]* @outName, i64 0, i64 %strlen, !dbg !786
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i64 5, i32 1, i1 false), !dbg !786
  br label %sw.epilog, !dbg !787

sw.bb3:                                           ; preds = %if.end
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %name) #11, !dbg !788
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str70, i64 0, i64 0)) #11, !dbg !789
  br label %sw.epilog, !dbg !790

sw.epilog:                                        ; preds = %if.end, %sw.bb3, %sw.bb2, %sw.bb
  %2 = load i32* @srcMode, align 4, !dbg !791, !tbaa !492
  %cmp13 = icmp eq i32 %2, 1, !dbg !792
  br i1 %cmp13, label %for.body, label %land.lhs.true15, !dbg !792

land.lhs.true15:                                  ; preds = %sw.epilog
  %call16 = call fastcc zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #11, !dbg !792
  %tobool17 = icmp eq i8 %call16, 0, !dbg !792
  br i1 %tobool17, label %if.then18, label %for.body, !dbg !792

if.then18:                                        ; preds = %land.lhs.true15
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !793, !tbaa !484
  %4 = load i8** @progName, align 8, !dbg !793, !tbaa !484
  %call19 = call i32* @__errno_location() #15, !dbg !795
  %5 = load i32* %call19, align 4, !dbg !795, !tbaa !492
  %call20 = call i8* @strerror(i32 %5) #10, !dbg !795
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([35 x i8]* @.str72, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %call20) #10, !dbg !795
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !796), !dbg !798
  %6 = load i32* @exitValue, align 4, !dbg !799, !tbaa !492
  %cmp.i = icmp slt i32 %6, 1, !dbg !799
  br i1 %cmp.i, label %if.then.i, label %cleanup, !dbg !799

if.then.i:                                        ; preds = %if.then18
  store i32 1, i32* @exitValue, align 4, !dbg !799, !tbaa !492
  br label %cleanup, !dbg !799

for.cond:                                         ; preds = %for.body
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !800
  %cmp23 = icmp slt i32 %7, 4, !dbg !800
  br i1 %cmp23, label %for.body, label %for.end, !dbg !800

for.body:                                         ; preds = %sw.epilog, %land.lhs.true15, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %land.lhs.true15 ], [ 0, %sw.epilog ]
  %arrayidx = getelementptr inbounds [4 x i8*]* @zSuffix, i64 0, i64 %indvars.iv, !dbg !802
  %8 = load i8** %arrayidx, align 8, !dbg !802, !tbaa !484
  %call25 = call fastcc zeroext i8 @hasSuffix(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %8) #11, !dbg !802
  %tobool26 = icmp eq i8 %call25, 0, !dbg !802
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !800
  br i1 %tobool26, label %for.cond, label %if.then27, !dbg !802

if.then27:                                        ; preds = %for.body
  %9 = load i8* @noisy, align 1, !dbg !804, !tbaa !485
  %tobool28 = icmp eq i8 %9, 0, !dbg !804
  br i1 %tobool28, label %if.end33, label %if.then29, !dbg !804

if.then29:                                        ; preds = %if.then27
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !806, !tbaa !484
  %11 = load i8** @progName, align 8, !dbg !806, !tbaa !484
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([42 x i8]* @.str91, i64 0, i64 0), i8* %11, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %8) #10, !dbg !806
  br label %if.end33, !dbg !806

if.end33:                                         ; preds = %if.then27, %if.then29
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !807), !dbg !809
  %12 = load i32* @exitValue, align 4, !dbg !810, !tbaa !492
  %cmp.i186 = icmp slt i32 %12, 1, !dbg !810
  br i1 %cmp.i186, label %if.then.i187, label %cleanup, !dbg !810

if.then.i187:                                     ; preds = %if.end33
  store i32 1, i32* @exitValue, align 4, !dbg !810, !tbaa !492
  br label %cleanup, !dbg !810

for.end:                                          ; preds = %for.cond
  %13 = load i32* @srcMode, align 4, !dbg !811, !tbaa !492
  %14 = and i32 %13, -2, !dbg !811
  %15 = icmp eq i32 %14, 2, !dbg !811
  br i1 %15, label %if.then39, label %if.end46, !dbg !811

if.then39:                                        ; preds = %for.end
  %call40 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf) #10, !dbg !812
  %st_mode = getelementptr inbounds %struct.stat* %statBuf, i64 0, i32 3, !dbg !814
  %16 = load i32* %st_mode, align 8, !dbg !814, !tbaa !492
  %and = and i32 %16, 61440, !dbg !814
  %cmp41 = icmp eq i32 %and, 16384, !dbg !814
  br i1 %cmp41, label %if.then43, label %if.then39.if.end46_crit_edge, !dbg !814

if.then39.if.end46_crit_edge:                     ; preds = %if.then39
  %.pre245 = load i32* @srcMode, align 4, !dbg !815, !tbaa !492
  br label %if.end46, !dbg !814

if.then43:                                        ; preds = %if.then39
  %17 = load %struct._IO_FILE** @stderr, align 8, !dbg !816, !tbaa !484
  %18 = load i8** @progName, align 8, !dbg !816, !tbaa !484
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([35 x i8]* @.str40, i64 0, i64 0), i8* %18, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #10, !dbg !816
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !818), !dbg !820
  %19 = load i32* @exitValue, align 4, !dbg !821, !tbaa !492
  %cmp.i190 = icmp slt i32 %19, 1, !dbg !821
  br i1 %cmp.i190, label %if.then.i191, label %cleanup, !dbg !821

if.then.i191:                                     ; preds = %if.then43
  store i32 1, i32* @exitValue, align 4, !dbg !821, !tbaa !492
  br label %cleanup, !dbg !821

if.end46:                                         ; preds = %if.then39.if.end46_crit_edge, %for.end
  %20 = phi i32 [ %.pre245, %if.then39.if.end46_crit_edge ], [ %13, %for.end ]
  %cmp47 = icmp ne i32 %20, 3, !dbg !815
  %21 = load i8* @forceOverwrite, align 1, !dbg !815, !tbaa !485
  %tobool50 = icmp ne i8 %21, 0, !dbg !815
  %or.cond167 = or i1 %cmp47, %tobool50, !dbg !815
  br i1 %or.cond167, label %if.end60, label %land.lhs.true51, !dbg !815

land.lhs.true51:                                  ; preds = %if.end46
  %call52 = call fastcc zeroext i8 @notAStandardFile() #11, !dbg !815
  %tobool54 = icmp eq i8 %call52, 0, !dbg !815
  br i1 %tobool54, label %if.end60thread-pre-split, label %if.then55, !dbg !815

if.then55:                                        ; preds = %land.lhs.true51
  %22 = load i8* @noisy, align 1, !dbg !822, !tbaa !485
  %tobool56 = icmp eq i8 %22, 0, !dbg !822
  br i1 %tobool56, label %if.end59, label %if.then57, !dbg !822

if.then57:                                        ; preds = %if.then55
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !824, !tbaa !484
  %24 = load i8** @progName, align 8, !dbg !824, !tbaa !484
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([41 x i8]* @.str73, i64 0, i64 0), i8* %24, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #10, !dbg !824
  br label %if.end59, !dbg !824

if.end59:                                         ; preds = %if.then55, %if.then57
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !825), !dbg !827
  %25 = load i32* @exitValue, align 4, !dbg !828, !tbaa !492
  %cmp.i194 = icmp slt i32 %25, 1, !dbg !828
  br i1 %cmp.i194, label %if.then.i195, label %cleanup, !dbg !828

if.then.i195:                                     ; preds = %if.end59
  store i32 1, i32* @exitValue, align 4, !dbg !828, !tbaa !492
  br label %cleanup, !dbg !828

if.end60thread-pre-split:                         ; preds = %land.lhs.true51
  %.pr = load i32* @srcMode, align 4, !dbg !829, !tbaa !492
  br label %if.end60

if.end60:                                         ; preds = %if.end60thread-pre-split, %if.end46
  %26 = phi i32 [ %.pr, %if.end60thread-pre-split ], [ %20, %if.end46 ], !dbg !829
  %cmp61 = icmp eq i32 %26, 3, !dbg !829
  br i1 %cmp61, label %land.lhs.true63, label %if.end73, !dbg !829

land.lhs.true63:                                  ; preds = %if.end60
  %call64 = call fastcc zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #11, !dbg !829
  %tobool66 = icmp eq i8 %call64, 0, !dbg !829
  br i1 %tobool66, label %if.end73, label %if.then67, !dbg !829

if.then67:                                        ; preds = %land.lhs.true63
  %27 = load i8* @forceOverwrite, align 1, !dbg !830, !tbaa !485
  %tobool68 = icmp eq i8 %27, 0, !dbg !830
  br i1 %tobool68, label %if.else, label %if.then69, !dbg !830

if.then69:                                        ; preds = %if.then67
  %call70 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #10, !dbg !832
  br label %if.end73, !dbg !834

if.else:                                          ; preds = %if.then67
  %28 = load %struct._IO_FILE** @stderr, align 8, !dbg !835, !tbaa !484
  %29 = load i8** @progName, align 8, !dbg !835, !tbaa !484
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([36 x i8]* @.str75, i64 0, i64 0), i8* %29, i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #10, !dbg !835
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !837), !dbg !839
  %30 = load i32* @exitValue, align 4, !dbg !840, !tbaa !492
  %cmp.i198 = icmp slt i32 %30, 1, !dbg !840
  br i1 %cmp.i198, label %if.then.i199, label %cleanup, !dbg !840

if.then.i199:                                     ; preds = %if.else
  store i32 1, i32* @exitValue, align 4, !dbg !840, !tbaa !492
  br label %cleanup, !dbg !840

if.end73:                                         ; preds = %land.lhs.true63, %if.end60, %if.then69
  %31 = load i32* @srcMode, align 4, !dbg !841, !tbaa !492
  %cmp74 = icmp ne i32 %31, 3, !dbg !841
  %32 = load i8* @forceOverwrite, align 1, !dbg !841, !tbaa !485
  %tobool77 = icmp ne i8 %32, 0, !dbg !841
  %or.cond168 = or i1 %cmp74, %tobool77, !dbg !841
  br i1 %or.cond168, label %if.end86, label %land.lhs.true78, !dbg !841

land.lhs.true78:                                  ; preds = %if.end73
  call void @llvm.dbg.value(metadata !842, i64 0, metadata !843) #7, !dbg !845
  %33 = bitcast %struct.stat* %statBuf.i to i8*, !dbg !846
  call void @llvm.lifetime.start(i64 144, i8* %33) #7, !dbg !846
  call void @llvm.dbg.declare(metadata !{%struct.stat* %statBuf.i}, metadata !279) #7, !dbg !846
  %call.i202 = call i32 @lstat(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf.i) #10, !dbg !847
  call void @llvm.dbg.value(metadata !{i32 %call.i202}, i64 0, metadata !848) #7, !dbg !847
  %cmp.i203 = icmp eq i32 %call.i202, 0, !dbg !849
  br i1 %cmp.i203, label %countHardLinks.exit, label %if.end86thread-pre-split, !dbg !849

countHardLinks.exit:                              ; preds = %land.lhs.true78
  %st_nlink.i = getelementptr inbounds %struct.stat* %statBuf.i, i64 0, i32 2, !dbg !850
  %34 = load i64* %st_nlink.i, align 8, !dbg !850, !tbaa !851
  %sub.i204 = add i64 %34, 4294967295, !dbg !850
  %conv.i205 = trunc i64 %sub.i204 to i32, !dbg !850
  call void @llvm.lifetime.end(i64 144, i8* %33) #7, !dbg !852
  call void @llvm.dbg.value(metadata !{i32 %conv.i205}, i64 0, metadata !305), !dbg !844
  %cmp80 = icmp sgt i32 %conv.i205, 0, !dbg !844
  br i1 %cmp80, label %if.then82, label %if.end86thread-pre-split, !dbg !844

if.then82:                                        ; preds = %countHardLinks.exit
  %35 = load %struct._IO_FILE** @stderr, align 8, !dbg !853, !tbaa !484
  %36 = load i8** @progName, align 8, !dbg !853, !tbaa !484
  %cmp83 = icmp sgt i32 %conv.i205, 1, !dbg !853
  %cond = select i1 %cmp83, i8* getelementptr inbounds ([2 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), !dbg !853
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([40 x i8]* @.str76, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i32 %conv.i205, i8* %cond) #10, !dbg !853
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !855), !dbg !857
  %37 = load i32* @exitValue, align 4, !dbg !858, !tbaa !492
  %cmp.i207 = icmp slt i32 %37, 1, !dbg !858
  br i1 %cmp.i207, label %if.then.i208, label %cleanup, !dbg !858

if.then.i208:                                     ; preds = %if.then82
  store i32 1, i32* @exitValue, align 4, !dbg !858, !tbaa !492
  br label %cleanup, !dbg !858

if.end86thread-pre-split:                         ; preds = %land.lhs.true78, %countHardLinks.exit
  %.pr232 = load i32* @srcMode, align 4, !dbg !859, !tbaa !492
  br label %if.end86

if.end86:                                         ; preds = %if.end86thread-pre-split, %if.end73
  %38 = phi i32 [ %.pr232, %if.end86thread-pre-split ], [ %31, %if.end73 ], !dbg !859
  %cmp87 = icmp eq i32 %38, 3, !dbg !859
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !859

if.then89:                                        ; preds = %if.end86
  call fastcc void @saveInputFileMetaInfo() #11, !dbg !860
  %.pre = load i32* @srcMode, align 4, !dbg !862, !tbaa !492
  br label %if.end90, !dbg !863

if.end90:                                         ; preds = %if.then89, %if.end86
  %39 = phi i32 [ %.pre, %if.then89 ], [ %38, %if.end86 ]
  switch i32 %39, label %sw.default [
    i32 1, label %sw.bb91
    i32 2, label %sw.bb99
    i32 3, label %sw.bb120
  ], !dbg !862

sw.bb91:                                          ; preds = %if.end90
  %40 = load %struct._IO_FILE** @stdin, align 8, !dbg !864, !tbaa !484
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %40}, i64 0, metadata !303), !dbg !864
  %41 = load %struct._IO_FILE** @stdout, align 8, !dbg !866, !tbaa !484
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %41}, i64 0, metadata !304), !dbg !866
  %call92 = call i32 @fileno(%struct._IO_FILE* %41) #10, !dbg !867
  %call93 = call i32 @isatty(i32 %call92) #10, !dbg !867
  %tobool94 = icmp eq i32 %call93, 0, !dbg !867
  br i1 %tobool94, label %sw.epilog147, label %if.then95, !dbg !867

if.then95:                                        ; preds = %sw.bb91
  %42 = load %struct._IO_FILE** @stderr, align 8, !dbg !868, !tbaa !484
  %43 = load i8** @progName, align 8, !dbg !868, !tbaa !484
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([50 x i8]* @.str92, i64 0, i64 0), i8* %43) #10, !dbg !868
  %44 = load %struct._IO_FILE** @stderr, align 8, !dbg !870, !tbaa !484
  %45 = load i8** @progName, align 8, !dbg !870, !tbaa !484
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([34 x i8]* @.str42, i64 0, i64 0), i8* %45, i8* %45) #10, !dbg !870
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !871), !dbg !873
  %46 = load i32* @exitValue, align 4, !dbg !874, !tbaa !492
  %cmp.i211 = icmp slt i32 %46, 1, !dbg !874
  br i1 %cmp.i211, label %if.then.i212, label %cleanup, !dbg !874

if.then.i212:                                     ; preds = %if.then95
  store i32 1, i32* @exitValue, align 4, !dbg !874, !tbaa !492
  br label %cleanup, !dbg !874

sw.bb99:                                          ; preds = %if.end90
  %call100 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0)) #10, !dbg !875
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call100}, i64 0, metadata !303), !dbg !875
  %47 = load %struct._IO_FILE** @stdout, align 8, !dbg !876, !tbaa !484
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %47}, i64 0, metadata !304), !dbg !876
  %call101 = call i32 @fileno(%struct._IO_FILE* %47) #10, !dbg !877
  %call102 = call i32 @isatty(i32 %call101) #10, !dbg !877
  %tobool103 = icmp eq i32 %call102, 0, !dbg !877
  br i1 %tobool103, label %if.end112, label %if.then104, !dbg !877

if.then104:                                       ; preds = %sw.bb99
  %48 = load %struct._IO_FILE** @stderr, align 8, !dbg !878, !tbaa !484
  %49 = load i8** @progName, align 8, !dbg !878, !tbaa !484
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([50 x i8]* @.str92, i64 0, i64 0), i8* %49) #10, !dbg !878
  %50 = load %struct._IO_FILE** @stderr, align 8, !dbg !880, !tbaa !484
  %51 = load i8** @progName, align 8, !dbg !880, !tbaa !484
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([34 x i8]* @.str42, i64 0, i64 0), i8* %51, i8* %51) #10, !dbg !880
  %cmp107 = icmp eq %struct._IO_FILE* %call100, null, !dbg !881
  br i1 %cmp107, label %if.end111, label %if.then109, !dbg !881

if.then109:                                       ; preds = %if.then104
  %call110 = call i32 @fclose(%struct._IO_FILE* %call100) #10, !dbg !881
  br label %if.end111, !dbg !881

if.end111:                                        ; preds = %if.then104, %if.then109
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !882), !dbg !884
  %52 = load i32* @exitValue, align 4, !dbg !885, !tbaa !492
  %cmp.i215 = icmp slt i32 %52, 1, !dbg !885
  br i1 %cmp.i215, label %if.then.i216, label %cleanup, !dbg !885

if.then.i216:                                     ; preds = %if.end111
  store i32 1, i32* @exitValue, align 4, !dbg !885, !tbaa !492
  br label %cleanup, !dbg !885

if.end112:                                        ; preds = %sw.bb99
  %cmp113 = icmp eq %struct._IO_FILE* %call100, null, !dbg !886
  br i1 %cmp113, label %if.then115, label %sw.epilog147, !dbg !886

if.then115:                                       ; preds = %if.end112
  %53 = load %struct._IO_FILE** @stderr, align 8, !dbg !887, !tbaa !484
  %54 = load i8** @progName, align 8, !dbg !887, !tbaa !484
  %call116 = call i32* @__errno_location() #15, !dbg !889
  %55 = load i32* %call116, align 4, !dbg !889, !tbaa !492
  %call117 = call i8* @strerror(i32 %55) #10, !dbg !889
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([35 x i8]* @.str72, i64 0, i64 0), i8* %54, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %call117) #10, !dbg !889
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !890), !dbg !892
  %56 = load i32* @exitValue, align 4, !dbg !893, !tbaa !492
  %cmp.i219 = icmp slt i32 %56, 1, !dbg !893
  br i1 %cmp.i219, label %if.then.i220, label %cleanup, !dbg !893

if.then.i220:                                     ; preds = %if.then115
  store i32 1, i32* @exitValue, align 4, !dbg !893, !tbaa !492
  br label %cleanup, !dbg !893

sw.bb120:                                         ; preds = %if.end90
  %call121 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0)) #10, !dbg !894
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call121}, i64 0, metadata !303), !dbg !894
  %call122 = call %struct._IO_FILE* @fopen_output_safely(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str78, i64 0, i64 0)) #11, !dbg !895
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call122}, i64 0, metadata !304), !dbg !895
  %cmp123 = icmp eq %struct._IO_FILE* %call122, null, !dbg !896
  br i1 %cmp123, label %if.then125, label %if.end134, !dbg !896

if.then125:                                       ; preds = %sw.bb120
  %57 = load %struct._IO_FILE** @stderr, align 8, !dbg !897, !tbaa !484
  %58 = load i8** @progName, align 8, !dbg !897, !tbaa !484
  %call126 = call i32* @__errno_location() #15, !dbg !899
  %59 = load i32* %call126, align 4, !dbg !899, !tbaa !492
  %call127 = call i8* @strerror(i32 %59) #10, !dbg !899
  %call128 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([38 x i8]* @.str79, i64 0, i64 0), i8* %58, i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* %call127) #10, !dbg !899
  %cmp129 = icmp eq %struct._IO_FILE* %call121, null, !dbg !900
  br i1 %cmp129, label %if.end133, label %if.then131, !dbg !900

if.then131:                                       ; preds = %if.then125
  %call132 = call i32 @fclose(%struct._IO_FILE* %call121) #10, !dbg !900
  br label %if.end133, !dbg !900

if.end133:                                        ; preds = %if.then125, %if.then131
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !901), !dbg !903
  %60 = load i32* @exitValue, align 4, !dbg !904, !tbaa !492
  %cmp.i223 = icmp slt i32 %60, 1, !dbg !904
  br i1 %cmp.i223, label %if.then.i224, label %cleanup, !dbg !904

if.then.i224:                                     ; preds = %if.end133
  store i32 1, i32* @exitValue, align 4, !dbg !904, !tbaa !492
  br label %cleanup, !dbg !904

if.end134:                                        ; preds = %sw.bb120
  %cmp135 = icmp eq %struct._IO_FILE* %call121, null, !dbg !905
  br i1 %cmp135, label %if.end145, label %sw.epilog147, !dbg !905

if.end145:                                        ; preds = %if.end134
  %61 = load %struct._IO_FILE** @stderr, align 8, !dbg !906, !tbaa !484
  %62 = load i8** @progName, align 8, !dbg !906, !tbaa !484
  %call138 = call i32* @__errno_location() #15, !dbg !908
  %63 = load i32* %call138, align 4, !dbg !908, !tbaa !492
  %call139 = call i8* @strerror(i32 %63) #10, !dbg !908
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([35 x i8]* @.str72, i64 0, i64 0), i8* %62, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %call139) #10, !dbg !908
  %call144 = call i32 @fclose(%struct._IO_FILE* %call122) #10, !dbg !909
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !910), !dbg !912
  %64 = load i32* @exitValue, align 4, !dbg !913, !tbaa !492
  %cmp.i227 = icmp slt i32 %64, 1, !dbg !913
  br i1 %cmp.i227, label %if.then.i228, label %cleanup, !dbg !913

if.then.i228:                                     ; preds = %if.end145
  store i32 1, i32* @exitValue, align 4, !dbg !913, !tbaa !492
  br label %cleanup, !dbg !913

sw.default:                                       ; preds = %if.end90
  call fastcc void @panic(i8* getelementptr inbounds ([22 x i8]* @.str93, i64 0, i64 0)) #14, !dbg !914
  unreachable, !dbg !914

sw.epilog147:                                     ; preds = %sw.bb91, %if.end134, %if.end112
  %outStr.0 = phi %struct._IO_FILE* [ %call122, %if.end134 ], [ %47, %if.end112 ], [ %41, %sw.bb91 ]
  %inStr.0 = phi %struct._IO_FILE* [ %call121, %if.end134 ], [ %call100, %if.end112 ], [ %40, %sw.bb91 ]
  %65 = load i32* @verbosity, align 4, !dbg !915, !tbaa !492
  %cmp148 = icmp sgt i32 %65, 0, !dbg !915
  br i1 %cmp148, label %if.then150, label %if.end153, !dbg !915

if.then150:                                       ; preds = %sw.epilog147
  %66 = load %struct._IO_FILE** @stderr, align 8, !dbg !916, !tbaa !484
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([7 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #10, !dbg !916
  call fastcc void @pad() #11, !dbg !918
  %67 = load %struct._IO_FILE** @stderr, align 8, !dbg !919, !tbaa !484
  %call152 = call i32 @fflush(%struct._IO_FILE* %67) #10, !dbg !919
  br label %if.end153, !dbg !920

if.end153:                                        ; preds = %if.then150, %sw.epilog147
  store %struct._IO_FILE* %outStr.0, %struct._IO_FILE** @outputHandleJustInCase, align 8, !dbg !921, !tbaa !484
  store i8 1, i8* @deleteOutputOnInterrupt, align 1, !dbg !922, !tbaa !485
  %68 = bitcast i32* %nbytes_in_lo32.i to i8*, !dbg !923
  call void @llvm.lifetime.start(i64 4, i8* %68) #7, !dbg !923
  %69 = bitcast i32* %nbytes_in_hi32.i to i8*, !dbg !923
  call void @llvm.lifetime.start(i64 4, i8* %69) #7, !dbg !923
  %70 = bitcast i32* %nbytes_out_lo32.i to i8*, !dbg !923
  call void @llvm.lifetime.start(i64 4, i8* %70) #7, !dbg !923
  %71 = bitcast i32* %nbytes_out_hi32.i to i8*, !dbg !923
  call void @llvm.lifetime.start(i64 4, i8* %71) #7, !dbg !923
  %72 = bitcast i32* %bzerr.i to i8*, !dbg !923
  call void @llvm.lifetime.start(i64 4, i8* %72) #7, !dbg !923
  %73 = bitcast i32* %bzerr_dummy.i to i8*, !dbg !923
  call void @llvm.lifetime.start(i64 4, i8* %73) #7, !dbg !923
  %74 = getelementptr inbounds [32 x i8]* %buf_nin.i, i64 0, i64 0, !dbg !923
  call void @llvm.lifetime.start(i64 32, i8* %74) #7, !dbg !923
  %75 = getelementptr inbounds [32 x i8]* %buf_nout.i, i64 0, i64 0, !dbg !923
  call void @llvm.lifetime.start(i64 32, i8* %75) #7, !dbg !923
  %76 = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 0, !dbg !923
  call void @llvm.lifetime.start(i64 8, i8* %76) #7, !dbg !923
  %77 = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 0, !dbg !923
  call void @llvm.lifetime.start(i64 8, i8* %77) #7, !dbg !923
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %inStr.0}, i64 0, metadata !925) #7, !dbg !923
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %outStr.0}, i64 0, metadata !926) #7, !dbg !923
  call void @llvm.dbg.value(metadata !927, i64 0, metadata !928) #7, !dbg !929
  %78 = getelementptr inbounds [5000 x i8]* %ibuf.i, i64 0, i64 0, !dbg !930
  call void @llvm.lifetime.start(i64 5000, i8* %78) #7, !dbg !930
  call void @llvm.dbg.declare(metadata !{[5000 x i8]* %ibuf.i}, metadata !318) #7, !dbg !930
  call void @llvm.dbg.declare(metadata !{i32* %nbytes_in_lo32.i}, metadata !320) #7, !dbg !931
  call void @llvm.dbg.declare(metadata !{i32* %nbytes_in_hi32.i}, metadata !322) #7, !dbg !931
  call void @llvm.dbg.declare(metadata !{i32* %nbytes_out_lo32.i}, metadata !323) #7, !dbg !932
  call void @llvm.dbg.declare(metadata !{i32* %nbytes_out_hi32.i}, metadata !324) #7, !dbg !932
  call void @llvm.dbg.declare(metadata !{i32* %bzerr.i}, metadata !325) #7, !dbg !933
  call void @llvm.dbg.declare(metadata !{i32* %bzerr_dummy.i}, metadata !326) #7, !dbg !933
  %call.i = call i32 @ferror(%struct._IO_FILE* %inStr.0) #10, !dbg !934
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !934
  br i1 %tobool.i, label %if.end.i, label %errhandler_io.i, !dbg !934

if.end.i:                                         ; preds = %if.end153
  %call1.i = call i32 @ferror(%struct._IO_FILE* %outStr.0) #10, !dbg !935
  %tobool2.i = icmp eq i32 %call1.i, 0, !dbg !935
  br i1 %tobool2.i, label %if.end4.i, label %errhandler_io.i, !dbg !935

if.end4.i:                                        ; preds = %if.end.i
  %79 = load i32* @blockSize100k, align 4, !dbg !936, !tbaa !492
  %80 = load i32* @verbosity, align 4, !dbg !936, !tbaa !492
  %81 = load i32* @workFactor, align 4, !dbg !936, !tbaa !492
  %call5.i = call i8* @BZ2_bzWriteOpen(i32* %bzerr.i, %struct._IO_FILE* %outStr.0, i32 %79, i32 %80, i32 %81) #10, !dbg !936
  call void @llvm.dbg.value(metadata !{i8* %call5.i}, i64 0, metadata !928) #7, !dbg !936
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !937) #7, !dbg !938
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !325), !dbg !938
  %82 = load i32* %bzerr.i, align 4, !dbg !938, !tbaa !492
  %cmp.i189 = icmp eq i32 %82, 0, !dbg !938
  br i1 %cmp.i189, label %if.end7.i, label %errhandler.i, !dbg !938

if.end7.i:                                        ; preds = %if.end4.i
  %83 = load i32* @verbosity, align 4, !dbg !939, !tbaa !492
  %cmp8.i = icmp sgt i32 %83, 1, !dbg !939
  br i1 %cmp8.i, label %if.then9.i, label %while.body.i, !dbg !939

if.then9.i:                                       ; preds = %if.end7.i
  %84 = load %struct._IO_FILE** @stderr, align 8, !dbg !939, !tbaa !484
  %fputc.i = call i32 @fputc(i32 10, %struct._IO_FILE* %84) #7, !dbg !939
  br label %while.body.i, !dbg !939

while.body.i:                                     ; preds = %if.then9.i, %if.end7.i, %if.end25.i
  %call12.i = call fastcc zeroext i8 @myfeof(%struct._IO_FILE* %inStr.0) #10, !dbg !940
  %tobool13.i = icmp eq i8 %call12.i, 0, !dbg !940
  br i1 %tobool13.i, label %if.end15.i, label %while.end.i, !dbg !940

if.end15.i:                                       ; preds = %while.body.i
  %call16.i = call i64 @fread(i8* %78, i64 1, i64 5000, %struct._IO_FILE* %inStr.0) #10, !dbg !942
  %conv.i = trunc i64 %call16.i to i32, !dbg !942
  call void @llvm.dbg.value(metadata !{i32 %conv.i}, i64 0, metadata !943) #7, !dbg !942
  %call17.i = call i32 @ferror(%struct._IO_FILE* %inStr.0) #10, !dbg !944
  %tobool18.i = icmp eq i32 %call17.i, 0, !dbg !944
  br i1 %tobool18.i, label %if.end20.i, label %errhandler_io.i, !dbg !944

if.end20.i:                                       ; preds = %if.end15.i
  %cmp21.i = icmp sgt i32 %conv.i, 0, !dbg !945
  br i1 %cmp21.i, label %if.then23.i, label %if.end25.i, !dbg !945

if.then23.i:                                      ; preds = %if.end20.i
  call void @BZ2_bzWrite(i32* %bzerr.i, i8* %call5.i, i8* %78, i32 %conv.i) #10, !dbg !945
  br label %if.end25.i, !dbg !945

if.end25.i:                                       ; preds = %if.then23.i, %if.end20.i
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !937) #7, !dbg !946
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !325), !dbg !946
  %85 = load i32* %bzerr.i, align 4, !dbg !946, !tbaa !492
  %cmp26.i = icmp eq i32 %85, 0, !dbg !946
  br i1 %cmp26.i, label %while.body.i, label %errhandler.i, !dbg !946

while.end.i:                                      ; preds = %while.body.i
  call void @BZ2_bzWriteClose64(i32* %bzerr.i, i8* %call5.i, i32 0, i32* %nbytes_in_lo32.i, i32* %nbytes_in_hi32.i, i32* %nbytes_out_lo32.i, i32* %nbytes_out_hi32.i) #10, !dbg !947
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !937) #7, !dbg !948
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !325), !dbg !948
  %86 = load i32* %bzerr.i, align 4, !dbg !948, !tbaa !492
  %cmp30.i = icmp eq i32 %86, 0, !dbg !948
  br i1 %cmp30.i, label %if.end33.i, label %errhandler.i, !dbg !948

if.end33.i:                                       ; preds = %while.end.i
  %call34.i = call i32 @ferror(%struct._IO_FILE* %outStr.0) #10, !dbg !949
  %tobool35.i = icmp eq i32 %call34.i, 0, !dbg !949
  br i1 %tobool35.i, label %if.end37.i, label %errhandler_io.i, !dbg !949

if.end37.i:                                       ; preds = %if.end33.i
  %call38.i = call i32 @fflush(%struct._IO_FILE* %outStr.0) #10, !dbg !950
  call void @llvm.dbg.value(metadata !{i32 %call38.i}, i64 0, metadata !951) #7, !dbg !950
  %cmp39.i = icmp eq i32 %call38.i, -1, !dbg !952
  br i1 %cmp39.i, label %errhandler_io.i, label %if.end42.i, !dbg !952

if.end42.i:                                       ; preds = %if.end37.i
  %87 = load %struct._IO_FILE** @stdout, align 8, !dbg !953, !tbaa !484
  %cmp43.i = icmp eq %struct._IO_FILE* %87, %outStr.0, !dbg !953
  br i1 %cmp43.i, label %if.end51.i, label %if.then45.i, !dbg !953

if.then45.i:                                      ; preds = %if.end42.i
  %call46.i = call i32 @fclose(%struct._IO_FILE* %outStr.0) #10, !dbg !954
  call void @llvm.dbg.value(metadata !{i32 %call46.i}, i64 0, metadata !951) #7, !dbg !954
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8, !dbg !956, !tbaa !484
  %cmp47.i = icmp eq i32 %call46.i, -1, !dbg !957
  br i1 %cmp47.i, label %errhandler_io.i, label %if.end51.i, !dbg !957

if.end51.i:                                       ; preds = %if.then45.i, %if.end42.i
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8, !dbg !958, !tbaa !484
  %call52.i = call i32 @ferror(%struct._IO_FILE* %inStr.0) #10, !dbg !959
  %tobool53.i = icmp eq i32 %call52.i, 0, !dbg !959
  br i1 %tobool53.i, label %if.end55.i, label %errhandler_io.i, !dbg !959

if.end55.i:                                       ; preds = %if.end51.i
  %call56.i = call i32 @fclose(%struct._IO_FILE* %inStr.0) #10, !dbg !960
  call void @llvm.dbg.value(metadata !{i32 %call56.i}, i64 0, metadata !951) #7, !dbg !960
  %cmp57.i = icmp eq i32 %call56.i, -1, !dbg !961
  br i1 %cmp57.i, label %errhandler_io.i, label %if.end60.i, !dbg !961

if.end60.i:                                       ; preds = %if.end55.i
  %88 = load i32* @verbosity, align 4, !dbg !962, !tbaa !492
  %cmp61.i = icmp sgt i32 %88, 0, !dbg !962
  br i1 %cmp61.i, label %if.then63.i, label %compressStream.exit, !dbg !962

if.then63.i:                                      ; preds = %if.end60.i
  call void @llvm.dbg.value(metadata !{i32* %nbytes_in_lo32.i}, i64 0, metadata !963) #7, !dbg !964
  call void @llvm.dbg.value(metadata !{i32* %nbytes_in_lo32.i}, i64 0, metadata !320), !dbg !964
  %89 = load i32* %nbytes_in_lo32.i, align 4, !dbg !964, !tbaa !492
  call void @llvm.dbg.value(metadata !{i32* %nbytes_in_hi32.i}, i64 0, metadata !965) #7, !dbg !964
  call void @llvm.dbg.value(metadata !{i32* %nbytes_in_hi32.i}, i64 0, metadata !322), !dbg !964
  %90 = load i32* %nbytes_in_hi32.i, align 4, !dbg !964, !tbaa !492
  %91 = or i32 %90, %89, !dbg !964
  %92 = icmp eq i32 %91, 0, !dbg !964
  br i1 %92, label %if.then68.i, label %if.else.i, !dbg !964

if.then68.i:                                      ; preds = %if.then63.i
  %93 = load %struct._IO_FILE** @stderr, align 8, !dbg !966, !tbaa !484
  %94 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str95, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %93) #7, !dbg !966
  br label %compressStream.exit, !dbg !968

if.else.i:                                        ; preds = %if.then63.i
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %buf_nin.i}, metadata !328) #7, !dbg !969
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %buf_nout.i}, metadata !334) #7, !dbg !969
  call void @llvm.dbg.declare(metadata !{%struct.UInt64* %nbytes_in.i}, metadata !335) #7, !dbg !970
  call void @llvm.dbg.declare(metadata !{%struct.UInt64* %nbytes_out.i}, metadata !343) #7, !dbg !970
  call void @llvm.dbg.value(metadata !{i32* %nbytes_in_lo32.i}, i64 0, metadata !963) #7, !dbg !971
  call void @llvm.dbg.value(metadata !{i32* %nbytes_in_hi32.i}, i64 0, metadata !965) #7, !dbg !971
  call void @llvm.dbg.value(metadata !{%struct.UInt64* %nbytes_in.i}, i64 0, metadata !972) #7, !dbg !973
  call void @llvm.dbg.value(metadata !{i32 %89}, i64 0, metadata !974) #7, !dbg !973
  call void @llvm.dbg.value(metadata !{i32 %90}, i64 0, metadata !975) #7, !dbg !973
  %shr.i.i = lshr i32 %90, 24, !dbg !976
  %conv.i.i = trunc i32 %shr.i.i to i8, !dbg !976
  %arrayidx.i.i = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 7, !dbg !976
  store i8 %conv.i.i, i8* %arrayidx.i.i, align 1, !dbg !976, !tbaa !485
  %shr1.i.i = lshr i32 %90, 16, !dbg !977
  %conv3.i.i = trunc i32 %shr1.i.i to i8, !dbg !977
  %arrayidx5.i.i = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 6, !dbg !977
  store i8 %conv3.i.i, i8* %arrayidx5.i.i, align 1, !dbg !977, !tbaa !485
  %shr6.i.i = lshr i32 %90, 8, !dbg !978
  %conv8.i.i = trunc i32 %shr6.i.i to i8, !dbg !978
  %arrayidx10.i.i = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 5, !dbg !978
  store i8 %conv8.i.i, i8* %arrayidx10.i.i, align 1, !dbg !978, !tbaa !485
  %conv12.i.i = trunc i32 %90 to i8, !dbg !979
  %arrayidx14.i.i = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 4, !dbg !979
  store i8 %conv12.i.i, i8* %arrayidx14.i.i, align 1, !dbg !979, !tbaa !485
  %shr15.i.i = lshr i32 %89, 24, !dbg !980
  %conv17.i.i = trunc i32 %shr15.i.i to i8, !dbg !980
  %arrayidx19.i.i = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 3, !dbg !980
  store i8 %conv17.i.i, i8* %arrayidx19.i.i, align 1, !dbg !980, !tbaa !485
  %shr20.i.i = lshr i32 %89, 16, !dbg !981
  %conv22.i.i = trunc i32 %shr20.i.i to i8, !dbg !981
  %arrayidx24.i.i = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 2, !dbg !981
  store i8 %conv22.i.i, i8* %arrayidx24.i.i, align 1, !dbg !981, !tbaa !485
  %shr25.i.i = lshr i32 %89, 8, !dbg !982
  %conv27.i.i = trunc i32 %shr25.i.i to i8, !dbg !982
  %arrayidx29.i.i = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 1, !dbg !982
  store i8 %conv27.i.i, i8* %arrayidx29.i.i, align 1, !dbg !982, !tbaa !485
  %conv31.i.i = trunc i32 %89 to i8, !dbg !983
  store i8 %conv31.i.i, i8* %76, align 1, !dbg !983, !tbaa !485
  call void @llvm.dbg.value(metadata !{i32* %nbytes_out_lo32.i}, i64 0, metadata !984) #7, !dbg !985
  call void @llvm.dbg.value(metadata !{i32* %nbytes_out_lo32.i}, i64 0, metadata !323), !dbg !985
  %95 = load i32* %nbytes_out_lo32.i, align 4, !dbg !985, !tbaa !492
  call void @llvm.dbg.value(metadata !{i32* %nbytes_out_hi32.i}, i64 0, metadata !986) #7, !dbg !985
  call void @llvm.dbg.value(metadata !{i32* %nbytes_out_hi32.i}, i64 0, metadata !324), !dbg !985
  %96 = load i32* %nbytes_out_hi32.i, align 4, !dbg !985, !tbaa !492
  call void @llvm.dbg.value(metadata !{%struct.UInt64* %nbytes_out.i}, i64 0, metadata !987) #7, !dbg !988
  call void @llvm.dbg.value(metadata !{i32 %95}, i64 0, metadata !989) #7, !dbg !988
  call void @llvm.dbg.value(metadata !{i32 %96}, i64 0, metadata !990) #7, !dbg !988
  %shr.i103.i = lshr i32 %96, 24, !dbg !991
  %conv.i104.i = trunc i32 %shr.i103.i to i8, !dbg !991
  %arrayidx.i105.i = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 7, !dbg !991
  store i8 %conv.i104.i, i8* %arrayidx.i105.i, align 1, !dbg !991, !tbaa !485
  %shr1.i106.i = lshr i32 %96, 16, !dbg !992
  %conv3.i107.i = trunc i32 %shr1.i106.i to i8, !dbg !992
  %arrayidx5.i108.i = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 6, !dbg !992
  store i8 %conv3.i107.i, i8* %arrayidx5.i108.i, align 1, !dbg !992, !tbaa !485
  %shr6.i109.i = lshr i32 %96, 8, !dbg !993
  %conv8.i110.i = trunc i32 %shr6.i109.i to i8, !dbg !993
  %arrayidx10.i111.i = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 5, !dbg !993
  store i8 %conv8.i110.i, i8* %arrayidx10.i111.i, align 1, !dbg !993, !tbaa !485
  %conv12.i112.i = trunc i32 %96 to i8, !dbg !994
  %arrayidx14.i113.i = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 4, !dbg !994
  store i8 %conv12.i112.i, i8* %arrayidx14.i113.i, align 1, !dbg !994, !tbaa !485
  %shr15.i114.i = lshr i32 %95, 24, !dbg !995
  %conv17.i115.i = trunc i32 %shr15.i114.i to i8, !dbg !995
  %arrayidx19.i116.i = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 3, !dbg !995
  store i8 %conv17.i115.i, i8* %arrayidx19.i116.i, align 1, !dbg !995, !tbaa !485
  %shr20.i117.i = lshr i32 %95, 16, !dbg !996
  %conv22.i118.i = trunc i32 %shr20.i117.i to i8, !dbg !996
  %arrayidx24.i119.i = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 2, !dbg !996
  store i8 %conv22.i118.i, i8* %arrayidx24.i119.i, align 1, !dbg !996, !tbaa !485
  %shr25.i120.i = lshr i32 %95, 8, !dbg !997
  %conv27.i121.i = trunc i32 %shr25.i120.i to i8, !dbg !997
  %arrayidx29.i122.i = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 1, !dbg !997
  store i8 %conv27.i121.i, i8* %arrayidx29.i122.i, align 1, !dbg !997, !tbaa !485
  %conv31.i123.i = trunc i32 %95 to i8, !dbg !998
  store i8 %conv31.i123.i, i8* %77, align 1, !dbg !998, !tbaa !485
  call void @llvm.dbg.value(metadata !{%struct.UInt64* %nbytes_in.i}, i64 0, metadata !999) #7, !dbg !1001
  call void @llvm.dbg.value(metadata !1002, i64 0, metadata !1003) #7, !dbg !1004
  call void @llvm.dbg.value(metadata !1005, i64 0, metadata !1006) #7, !dbg !1007
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !1008) #7, !dbg !1009
  %conv.i126.i237 = uitofp i8 %conv31.i.i to double, !dbg !1011
  call void @llvm.dbg.value(metadata !{double %add.i.i}, i64 0, metadata !1006) #7, !dbg !1011
  br label %for.body.i.for.body.i_crit_edge.i, !dbg !1009

for.body.i138.i.preheader:                        ; preds = %for.body.i.for.body.i_crit_edge.i
  %conv.i131.i233 = uitofp i8 %conv31.i123.i to double, !dbg !1013
  call void @llvm.dbg.value(metadata !{double %add.i133.i}, i64 0, metadata !1015) #7, !dbg !1013
  br label %for.body.i138.for.body.i138_crit_edge.i, !dbg !1016

for.body.i.for.body.i_crit_edge.i:                ; preds = %for.body.i.for.body.i_crit_edge.i.for.body.i.for.body.i_crit_edge.i_crit_edge, %if.else.i
  %.pre142.i = phi i8 [ %conv27.i.i, %if.else.i ], [ %.pre142.i.pre, %for.body.i.for.body.i_crit_edge.i.for.body.i.for.body.i_crit_edge.i_crit_edge ]
  %add.i.i240 = phi double [ %conv.i126.i237, %if.else.i ], [ %add.i.i, %for.body.i.for.body.i_crit_edge.i.for.body.i.for.body.i_crit_edge.i_crit_edge ]
  %base.07.i.i239 = phi double [ 2.560000e+02, %if.else.i ], [ %phitmp, %for.body.i.for.body.i_crit_edge.i.for.body.i.for.body.i_crit_edge.i_crit_edge ]
  %indvars.iv.i.i238 = phi i64 [ 2, %if.else.i ], [ %phitmp248, %for.body.i.for.body.i_crit_edge.i.for.body.i.for.body.i_crit_edge.i_crit_edge ]
  %conv.i126.i = uitofp i8 %.pre142.i to double, !dbg !1011
  %mul.i.i = fmul double %conv.i126.i, %base.07.i.i239, !dbg !1011
  %add.i.i = fadd double %add.i.i240, %mul.i.i, !dbg !1011
  call void @llvm.dbg.value(metadata !{double %add.i.i}, i64 0, metadata !1006) #7, !dbg !1011
  %lftr.wideiv242 = trunc i64 %indvars.iv.i.i238 to i32, !dbg !1009
  %exitcond243 = icmp eq i32 %lftr.wideiv242, 8, !dbg !1009
  br i1 %exitcond243, label %for.body.i138.i.preheader, label %for.body.i.for.body.i_crit_edge.i.for.body.i.for.body.i_crit_edge.i_crit_edge, !dbg !1009

for.body.i.for.body.i_crit_edge.i.for.body.i.for.body.i_crit_edge.i_crit_edge: ; preds = %for.body.i.for.body.i_crit_edge.i
  %arrayidx.i125.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 %indvars.iv.i.i238
  %.pre142.i.pre = load i8* %arrayidx.i125.phi.trans.insert.i.phi.trans.insert, align 1, !dbg !1011, !tbaa !485
  %phitmp = fmul double %base.07.i.i239, 2.560000e+02, !dbg !1009
  %phitmp248 = add i64 %indvars.iv.i.i238, 1, !dbg !1009
  br label %for.body.i.for.body.i_crit_edge.i, !dbg !1009

for.body.i138.for.body.i138_crit_edge.i:          ; preds = %for.body.i138.for.body.i138_crit_edge.i.for.body.i138.for.body.i138_crit_edge.i_crit_edge, %for.body.i138.i.preheader
  %.pre143.i = phi i8 [ %conv27.i121.i, %for.body.i138.i.preheader ], [ %.pre143.i.pre, %for.body.i138.for.body.i138_crit_edge.i.for.body.i138.for.body.i138_crit_edge.i_crit_edge ]
  %add.i133.i236 = phi double [ %conv.i131.i233, %for.body.i138.i.preheader ], [ %add.i133.i, %for.body.i138.for.body.i138_crit_edge.i.for.body.i138.for.body.i138_crit_edge.i_crit_edge ]
  %base.07.i129.i235 = phi double [ 2.560000e+02, %for.body.i138.i.preheader ], [ %phitmp249, %for.body.i138.for.body.i138_crit_edge.i.for.body.i138.for.body.i138_crit_edge.i_crit_edge ]
  %indvars.iv.i127.i234 = phi i64 [ 2, %for.body.i138.i.preheader ], [ %phitmp250, %for.body.i138.for.body.i138_crit_edge.i.for.body.i138.for.body.i138_crit_edge.i_crit_edge ]
  %conv.i131.i = uitofp i8 %.pre143.i to double, !dbg !1013
  %mul.i132.i = fmul double %conv.i131.i, %base.07.i129.i235, !dbg !1013
  %add.i133.i = fadd double %add.i133.i236, %mul.i132.i, !dbg !1013
  call void @llvm.dbg.value(metadata !{double %add.i133.i}, i64 0, metadata !1015) #7, !dbg !1013
  %lftr.wideiv = trunc i64 %indvars.iv.i127.i234 to i32, !dbg !1016
  %exitcond = icmp eq i32 %lftr.wideiv, 8, !dbg !1016
  br i1 %exitcond, label %uInt64_to_double.exit139.i, label %for.body.i138.for.body.i138_crit_edge.i.for.body.i138.for.body.i138_crit_edge.i_crit_edge, !dbg !1016

for.body.i138.for.body.i138_crit_edge.i.for.body.i138.for.body.i138_crit_edge.i_crit_edge: ; preds = %for.body.i138.for.body.i138_crit_edge.i
  %arrayidx.i130.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 %indvars.iv.i127.i234
  %.pre143.i.pre = load i8* %arrayidx.i130.phi.trans.insert.i.phi.trans.insert, align 1, !dbg !1013, !tbaa !485
  %phitmp249 = fmul double %base.07.i129.i235, 2.560000e+02, !dbg !1016
  %phitmp250 = add i64 %indvars.iv.i127.i234, 1, !dbg !1016
  br label %for.body.i138.for.body.i138_crit_edge.i, !dbg !1016

uInt64_to_double.exit139.i:                       ; preds = %for.body.i138.for.body.i138_crit_edge.i
  call void @llvm.dbg.value(metadata !{double %add.i133.i}, i64 0, metadata !1017) #7, !dbg !1014
  call fastcc void @uInt64_toAscii(i8* %74, %struct.UInt64* %nbytes_in.i) #10, !dbg !1018
  call fastcc void @uInt64_toAscii(i8* %75, %struct.UInt64* %nbytes_out.i) #10, !dbg !1019
  %97 = load %struct._IO_FILE** @stderr, align 8, !dbg !1020, !tbaa !484
  %div.i = fdiv double %add.i.i, %add.i133.i, !dbg !1020
  %mul.i = fmul double %add.i133.i, 8.000000e+00, !dbg !1020
  %div74.i = fdiv double %mul.i, %add.i.i, !dbg !1020
  %div75.i = fdiv double %add.i133.i, %add.i.i, !dbg !1020
  %sub.i = fsub double 1.000000e+00, %div75.i, !dbg !1020
  %mul76.i = fmul double %sub.i, 1.000000e+02, !dbg !1020
  %call79.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([57 x i8]* @.str96, i64 0, i64 0), double %div.i, double %div74.i, double %mul76.i, i8* %74, i8* %75) #10, !dbg !1020
  br label %compressStream.exit

errhandler.i:                                     ; preds = %if.end25.i, %while.end.i, %if.end4.i
  call void @BZ2_bzWriteClose64(i32* %bzerr_dummy.i, i8* %call5.i, i32 1, i32* %nbytes_in_lo32.i, i32* %nbytes_in_hi32.i, i32* %nbytes_out_lo32.i, i32* %nbytes_out_hi32.i) #10, !dbg !1021
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !937) #7, !dbg !1022
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !325), !dbg !1022
  %98 = load i32* %bzerr.i, align 4, !dbg !1022, !tbaa !492
  switch i32 %98, label %sw.default.i [
    i32 -9, label %sw.bb.i
    i32 -3, label %sw.bb82.i
    i32 -6, label %errhandler_io.i
  ], !dbg !1022

sw.bb.i:                                          ; preds = %errhandler.i
  call fastcc void @configError() #13, !dbg !1023
  unreachable, !dbg !1023

sw.bb82.i:                                        ; preds = %errhandler.i
  call fastcc void @outOfMemory() #13, !dbg !1025
  unreachable, !dbg !1025

errhandler_io.i:                                  ; preds = %if.end15.i, %errhandler.i, %if.end55.i, %if.end51.i, %if.then45.i, %if.end37.i, %if.end33.i, %if.end.i, %if.end153
  call fastcc void @ioError() #13, !dbg !1026
  unreachable, !dbg !1026

sw.default.i:                                     ; preds = %errhandler.i
  call fastcc void @panic(i8* getelementptr inbounds ([26 x i8]* @.str97, i64 0, i64 0)) #13, !dbg !1027
  unreachable, !dbg !1027

compressStream.exit:                              ; preds = %if.end60.i, %if.then68.i, %uInt64_to_double.exit139.i
  call void @llvm.lifetime.end(i64 5000, i8* %78) #7, !dbg !1028
  call void @llvm.lifetime.end(i64 4, i8* %68) #7, !dbg !1029
  call void @llvm.lifetime.end(i64 4, i8* %69) #7, !dbg !1029
  call void @llvm.lifetime.end(i64 4, i8* %70) #7, !dbg !1029
  call void @llvm.lifetime.end(i64 4, i8* %71) #7, !dbg !1029
  call void @llvm.lifetime.end(i64 4, i8* %72) #7, !dbg !1029
  call void @llvm.lifetime.end(i64 4, i8* %73) #7, !dbg !1029
  call void @llvm.lifetime.end(i64 32, i8* %74) #7, !dbg !1029
  call void @llvm.lifetime.end(i64 32, i8* %75) #7, !dbg !1029
  call void @llvm.lifetime.end(i64 8, i8* %76) #7, !dbg !1029
  call void @llvm.lifetime.end(i64 8, i8* %77) #7, !dbg !1029
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8, !dbg !1030, !tbaa !484
  %99 = load i32* @srcMode, align 4, !dbg !1031, !tbaa !492
  %cmp154 = icmp eq i32 %99, 3, !dbg !1031
  br i1 %cmp154, label %if.then156, label %if.end165, !dbg !1031

if.then156:                                       ; preds = %compressStream.exit
  call fastcc void @applySavedMetaInfoToOutputFile() #11, !dbg !1032
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1033, !tbaa !485
  %100 = load i8* @keepInputFiles, align 1, !dbg !1034, !tbaa !485
  %tobool157 = icmp eq i8 %100, 0, !dbg !1034
  br i1 %tobool157, label %if.then158, label %if.end165, !dbg !1034

if.then158:                                       ; preds = %if.then156
  %call159 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #10, !dbg !1035
  call void @llvm.dbg.value(metadata !{i32 %call159}, i64 0, metadata !308), !dbg !1035
  %cmp160 = icmp eq i32 %call159, 0, !dbg !1036
  br i1 %cmp160, label %if.end165, label %if.then162, !dbg !1036

if.then162:                                       ; preds = %if.then158
  call fastcc void @ioError() #14, !dbg !1036
  unreachable, !dbg !1036

if.end165:                                        ; preds = %if.then158, %if.then156, %compressStream.exit
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1038, !tbaa !485
  br label %cleanup, !dbg !1038

cleanup:                                          ; preds = %if.then.i228, %if.end145, %if.then.i224, %if.end133, %if.then.i220, %if.then115, %if.then.i216, %if.end111, %if.then.i212, %if.then95, %if.then.i208, %if.then82, %if.then.i199, %if.else, %if.then.i195, %if.end59, %if.then.i191, %if.then43, %if.then.i187, %if.end33, %if.then.i, %if.then18, %if.end165
  call void @llvm.lifetime.end(i64 144, i8* %0) #7, !dbg !1038
  ret void, !dbg !1039
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @uncompress(i8* %name) #0 {
entry:
  %bzerr.i = alloca i32, align 4
  %bzerr_dummy.i = alloca i32, align 4
  %obuf.i = alloca [5000 x i8], align 16
  %unused.i = alloca [5000 x i8], align 16
  %nUnused.i = alloca i32, align 4
  %unusedTmpV.i = alloca i8*, align 8
  %statBuf.i = alloca %struct.stat, align 8
  %statBuf = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !223), !dbg !1040
  %0 = bitcast %struct.stat* %statBuf to i8*, !dbg !1041
  call void @llvm.lifetime.start(i64 144, i8* %0) #7, !dbg !1041
  call void @llvm.dbg.declare(metadata !{%struct.stat* %statBuf}, metadata !230), !dbg !1041
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1042, !tbaa !485
  %cmp = icmp eq i8* %name, null, !dbg !1043
  %1 = load i32* @srcMode, align 4, !dbg !1043, !tbaa !492
  %cmp1 = icmp ne i32 %1, 1, !dbg !1043
  %or.cond = and i1 %cmp, %cmp1, !dbg !1043
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1043

if.then:                                          ; preds = %entry
  call fastcc void @panic(i8* getelementptr inbounds ([23 x i8]* @.str69, i64 0, i64 0)) #14, !dbg !1044
  unreachable, !dbg !1044

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !1045, i64 0, metadata !229), !dbg !1046
  switch i32 %1, label %zzz [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb9
  ], !dbg !1047

sw.bb:                                            ; preds = %if.end
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0)) #11, !dbg !1048
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str70, i64 0, i64 0)) #11, !dbg !1050
  br label %zzz, !dbg !1051

sw.bb2:                                           ; preds = %if.end
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %name) #11, !dbg !1052
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* %name) #11, !dbg !1053
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !227), !dbg !1054
  br label %for.body, !dbg !1054

for.cond:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !1054
  %cmp3 = icmp slt i32 %2, 4, !dbg !1054
  br i1 %cmp3, label %for.body, label %for.end, !dbg !1054

for.body:                                         ; preds = %sw.bb2, %for.cond
  %indvars.iv = phi i64 [ 0, %sw.bb2 ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds [4 x i8*]* @zSuffix, i64 0, i64 %indvars.iv, !dbg !1056
  %3 = load i8** %arrayidx, align 8, !dbg !1056, !tbaa !484
  call void @llvm.dbg.value(metadata !1057, i64 0, metadata !1058) #7, !dbg !1059
  %call.i = call fastcc zeroext i8 @hasSuffix(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* %3) #10, !dbg !1060
  %tobool.i = icmp eq i8 %call.i, 0, !dbg !1060
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1054
  br i1 %tobool.i, label %for.cond, label %mapSuffix.exit, !dbg !1060

mapSuffix.exit:                                   ; preds = %for.body
  %arrayidx5 = getelementptr inbounds [4 x i8*]* @unzSuffix, i64 0, i64 %indvars.iv, !dbg !1056
  %4 = load i8** %arrayidx5, align 8, !dbg !1056, !tbaa !484
  %call1.i = call i64 @strlen(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #12, !dbg !1061
  %call2.i = call i64 @strlen(i8* %3) #12, !dbg !1061
  %sub.i = sub i64 %call1.i, %call2.i, !dbg !1061
  %arrayidx.i = getelementptr inbounds [1034 x i8]* @outName, i64 0, i64 %sub.i, !dbg !1061
  store i8 0, i8* %arrayidx.i, align 1, !dbg !1061, !tbaa !485
  %call3.i = call i8* @strcat(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* %4) #10, !dbg !1062
  br label %zzz, !dbg !1056

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata !524, i64 0, metadata !229), !dbg !1063
  %strlen = call i64 @strlen(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)), !dbg !1064
  %endptr = getelementptr [1034 x i8]* @outName, i64 0, i64 %strlen, !dbg !1064
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %endptr, i8* getelementptr inbounds ([5 x i8]* @.str71, i64 0, i64 0), i64 5, i32 1, i1 false), !dbg !1064
  br label %zzz, !dbg !1065

sw.bb9:                                           ; preds = %if.end
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %name) #11, !dbg !1066
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str70, i64 0, i64 0)) #11, !dbg !1067
  br label %zzz, !dbg !1068

zzz:                                              ; preds = %mapSuffix.exit, %sw.bb, %for.end, %sw.bb9, %if.end
  %cantGuess.0 = phi i8 [ 0, %if.end ], [ 0, %sw.bb9 ], [ 0, %mapSuffix.exit ], [ 1, %for.end ], [ 0, %sw.bb ]
  %5 = load i32* @srcMode, align 4, !dbg !1069, !tbaa !492
  %cmp20 = icmp eq i32 %5, 1, !dbg !1070
  br i1 %cmp20, label %if.end55, label %land.lhs.true22, !dbg !1070

land.lhs.true22:                                  ; preds = %zzz
  %call23 = call fastcc zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #11, !dbg !1070
  %tobool24 = icmp eq i8 %call23, 0, !dbg !1070
  br i1 %tobool24, label %if.then25, label %if.end29, !dbg !1070

if.then25:                                        ; preds = %land.lhs.true22
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !1071, !tbaa !484
  %7 = load i8** @progName, align 8, !dbg !1071, !tbaa !484
  %call26 = call i32* @__errno_location() #15, !dbg !1073
  %8 = load i32* %call26, align 4, !dbg !1073, !tbaa !492
  %call27 = call i8* @strerror(i32 %8) #10, !dbg !1073
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([35 x i8]* @.str72, i64 0, i64 0), i8* %7, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %call27) #10, !dbg !1073
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !1074), !dbg !1076
  %9 = load i32* @exitValue, align 4, !dbg !1077, !tbaa !492
  %cmp.i = icmp slt i32 %9, 1, !dbg !1077
  br i1 %cmp.i, label %if.then.i, label %cleanup, !dbg !1077

if.then.i:                                        ; preds = %if.then25
  store i32 1, i32* @exitValue, align 4, !dbg !1077, !tbaa !492
  br label %cleanup, !dbg !1077

if.end29:                                         ; preds = %land.lhs.true22
  %.pre298 = load i32* @srcMode, align 4, !dbg !1078, !tbaa !492
  %10 = and i32 %.pre298, -2, !dbg !1078
  %11 = icmp eq i32 %10, 2, !dbg !1078
  br i1 %11, label %if.then34, label %if.end41, !dbg !1078

if.then34:                                        ; preds = %if.end29
  %call35 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf) #10, !dbg !1079
  %st_mode = getelementptr inbounds %struct.stat* %statBuf, i64 0, i32 3, !dbg !1081
  %12 = load i32* %st_mode, align 8, !dbg !1081, !tbaa !492
  %and = and i32 %12, 61440, !dbg !1081
  %cmp36 = icmp eq i32 %and, 16384, !dbg !1081
  br i1 %cmp36, label %if.then38, label %if.then34.if.end41_crit_edge, !dbg !1081

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  %.pre299 = load i32* @srcMode, align 4, !dbg !1082, !tbaa !492
  br label %if.end41, !dbg !1081

if.then38:                                        ; preds = %if.then34
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !1083, !tbaa !484
  %14 = load i8** @progName, align 8, !dbg !1083, !tbaa !484
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([35 x i8]* @.str40, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #10, !dbg !1083
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !1085), !dbg !1087
  %15 = load i32* @exitValue, align 4, !dbg !1088, !tbaa !492
  %cmp.i215 = icmp slt i32 %15, 1, !dbg !1088
  br i1 %cmp.i215, label %if.then.i216, label %cleanup, !dbg !1088

if.then.i216:                                     ; preds = %if.then38
  store i32 1, i32* @exitValue, align 4, !dbg !1088, !tbaa !492
  br label %cleanup, !dbg !1088

if.end41:                                         ; preds = %if.then34.if.end41_crit_edge, %if.end29
  %16 = phi i32 [ %.pre299, %if.then34.if.end41_crit_edge ], [ %.pre298, %if.end29 ]
  %cmp42 = icmp ne i32 %16, 3, !dbg !1082
  %17 = load i8* @forceOverwrite, align 1, !dbg !1082, !tbaa !485
  %tobool45 = icmp ne i8 %17, 0, !dbg !1082
  %or.cond193 = or i1 %cmp42, %tobool45, !dbg !1082
  br i1 %or.cond193, label %if.end55, label %land.lhs.true46, !dbg !1082

land.lhs.true46:                                  ; preds = %if.end41
  %call47 = call fastcc zeroext i8 @notAStandardFile() #11, !dbg !1082
  %tobool49 = icmp eq i8 %call47, 0, !dbg !1082
  br i1 %tobool49, label %if.end55, label %if.then50, !dbg !1082

if.then50:                                        ; preds = %land.lhs.true46
  %18 = load i8* @noisy, align 1, !dbg !1089, !tbaa !485
  %tobool51 = icmp eq i8 %18, 0, !dbg !1089
  br i1 %tobool51, label %if.end54, label %if.then52, !dbg !1089

if.then52:                                        ; preds = %if.then50
  %19 = load %struct._IO_FILE** @stderr, align 8, !dbg !1091, !tbaa !484
  %20 = load i8** @progName, align 8, !dbg !1091, !tbaa !484
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([41 x i8]* @.str73, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #10, !dbg !1091
  br label %if.end54, !dbg !1091

if.end54:                                         ; preds = %if.then50, %if.then52
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !1092), !dbg !1094
  %21 = load i32* @exitValue, align 4, !dbg !1095, !tbaa !492
  %cmp.i219 = icmp slt i32 %21, 1, !dbg !1095
  br i1 %cmp.i219, label %if.then.i220, label %cleanup, !dbg !1095

if.then.i220:                                     ; preds = %if.end54
  store i32 1, i32* @exitValue, align 4, !dbg !1095, !tbaa !492
  br label %cleanup, !dbg !1095

if.end55:                                         ; preds = %zzz, %land.lhs.true46, %if.end41
  %tobool56 = icmp ne i8 %cantGuess.0, 0, !dbg !1096
  %22 = load i8* @noisy, align 1, !dbg !1097, !tbaa !485
  %tobool58 = icmp ne i8 %22, 0, !dbg !1097
  %or.cond195 = and i1 %tobool56, %tobool58, !dbg !1096
  br i1 %or.cond195, label %if.then59, label %if.end62, !dbg !1096

if.then59:                                        ; preds = %if.end55
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !1099, !tbaa !484
  %24 = load i8** @progName, align 8, !dbg !1099, !tbaa !484
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([50 x i8]* @.str74, i64 0, i64 0), i8* %24, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #10, !dbg !1099
  br label %if.end62, !dbg !1099

if.end62:                                         ; preds = %if.end55, %if.then59
  %25 = load i32* @srcMode, align 4, !dbg !1100, !tbaa !492
  %cmp63 = icmp eq i32 %25, 3, !dbg !1100
  br i1 %cmp63, label %land.lhs.true65, label %if.end75, !dbg !1100

land.lhs.true65:                                  ; preds = %if.end62
  %call66 = call fastcc zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #11, !dbg !1100
  %tobool68 = icmp eq i8 %call66, 0, !dbg !1100
  br i1 %tobool68, label %if.end75, label %if.then69, !dbg !1100

if.then69:                                        ; preds = %land.lhs.true65
  %26 = load i8* @forceOverwrite, align 1, !dbg !1101, !tbaa !485
  %tobool70 = icmp eq i8 %26, 0, !dbg !1101
  br i1 %tobool70, label %if.else, label %if.then71, !dbg !1101

if.then71:                                        ; preds = %if.then69
  %call72 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #10, !dbg !1103
  br label %if.end75, !dbg !1105

if.else:                                          ; preds = %if.then69
  %27 = load %struct._IO_FILE** @stderr, align 8, !dbg !1106, !tbaa !484
  %28 = load i8** @progName, align 8, !dbg !1106, !tbaa !484
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([36 x i8]* @.str75, i64 0, i64 0), i8* %28, i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #10, !dbg !1106
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !1108), !dbg !1110
  %29 = load i32* @exitValue, align 4, !dbg !1111, !tbaa !492
  %cmp.i227 = icmp slt i32 %29, 1, !dbg !1111
  br i1 %cmp.i227, label %if.then.i228, label %cleanup, !dbg !1111

if.then.i228:                                     ; preds = %if.else
  store i32 1, i32* @exitValue, align 4, !dbg !1111, !tbaa !492
  br label %cleanup, !dbg !1111

if.end75:                                         ; preds = %land.lhs.true65, %if.end62, %if.then71
  %30 = load i32* @srcMode, align 4, !dbg !1112, !tbaa !492
  %cmp76 = icmp ne i32 %30, 3, !dbg !1112
  %31 = load i8* @forceOverwrite, align 1, !dbg !1112, !tbaa !485
  %tobool79 = icmp ne i8 %31, 0, !dbg !1112
  %or.cond194 = or i1 %cmp76, %tobool79, !dbg !1112
  br i1 %or.cond194, label %if.end88, label %land.lhs.true80, !dbg !1112

land.lhs.true80:                                  ; preds = %if.end75
  call void @llvm.dbg.value(metadata !842, i64 0, metadata !1113) #7, !dbg !1115
  %32 = bitcast %struct.stat* %statBuf.i to i8*, !dbg !1116
  call void @llvm.lifetime.start(i64 144, i8* %32) #7, !dbg !1116
  call void @llvm.dbg.declare(metadata !{%struct.stat* %statBuf.i}, metadata !279) #7, !dbg !1116
  %call.i231 = call i32 @lstat(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf.i) #10, !dbg !1117
  call void @llvm.dbg.value(metadata !{i32 %call.i231}, i64 0, metadata !1118) #7, !dbg !1117
  %cmp.i232 = icmp eq i32 %call.i231, 0, !dbg !1119
  br i1 %cmp.i232, label %countHardLinks.exit, label %if.end88thread-pre-split, !dbg !1119

countHardLinks.exit:                              ; preds = %land.lhs.true80
  %st_nlink.i = getelementptr inbounds %struct.stat* %statBuf.i, i64 0, i32 2, !dbg !1120
  %33 = load i64* %st_nlink.i, align 8, !dbg !1120, !tbaa !851
  %sub.i233 = add i64 %33, 4294967295, !dbg !1120
  %conv.i = trunc i64 %sub.i233 to i32, !dbg !1120
  call void @llvm.lifetime.end(i64 144, i8* %32) #7, !dbg !1121
  call void @llvm.dbg.value(metadata !{i32 %conv.i}, i64 0, metadata !226), !dbg !1114
  %cmp82 = icmp sgt i32 %conv.i, 0, !dbg !1114
  br i1 %cmp82, label %if.then84, label %if.end88thread-pre-split, !dbg !1114

if.then84:                                        ; preds = %countHardLinks.exit
  %34 = load %struct._IO_FILE** @stderr, align 8, !dbg !1122, !tbaa !484
  %35 = load i8** @progName, align 8, !dbg !1122, !tbaa !484
  %cmp85 = icmp sgt i32 %conv.i, 1, !dbg !1122
  %cond = select i1 %cmp85, i8* getelementptr inbounds ([2 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0), !dbg !1122
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([40 x i8]* @.str76, i64 0, i64 0), i8* %35, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i32 %conv.i, i8* %cond) #10, !dbg !1122
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !1124), !dbg !1126
  %36 = load i32* @exitValue, align 4, !dbg !1127, !tbaa !492
  %cmp.i236 = icmp slt i32 %36, 1, !dbg !1127
  br i1 %cmp.i236, label %if.then.i237, label %cleanup, !dbg !1127

if.then.i237:                                     ; preds = %if.then84
  store i32 1, i32* @exitValue, align 4, !dbg !1127, !tbaa !492
  br label %cleanup, !dbg !1127

if.end88thread-pre-split:                         ; preds = %land.lhs.true80, %countHardLinks.exit
  %.pr = load i32* @srcMode, align 4, !dbg !1128, !tbaa !492
  br label %if.end88

if.end88:                                         ; preds = %if.end88thread-pre-split, %if.end75
  %37 = phi i32 [ %.pr, %if.end88thread-pre-split ], [ %30, %if.end75 ], !dbg !1128
  %cmp89 = icmp eq i32 %37, 3, !dbg !1128
  br i1 %cmp89, label %if.then91, label %if.end92, !dbg !1128

if.then91:                                        ; preds = %if.end88
  call fastcc void @saveInputFileMetaInfo() #11, !dbg !1129
  %.pre = load i32* @srcMode, align 4, !dbg !1131, !tbaa !492
  br label %if.end92, !dbg !1132

if.end92:                                         ; preds = %if.then91, %if.end88
  %38 = phi i32 [ %.pre, %if.then91 ], [ %37, %if.end88 ]
  switch i32 %38, label %sw.default [
    i32 1, label %sw.bb93
    i32 2, label %sw.bb101
    i32 3, label %sw.bb115
  ], !dbg !1131

sw.bb93:                                          ; preds = %if.end92
  %39 = load %struct._IO_FILE** @stdin, align 8, !dbg !1133, !tbaa !484
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %39}, i64 0, metadata !224), !dbg !1133
  %40 = load %struct._IO_FILE** @stdout, align 8, !dbg !1135, !tbaa !484
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %40}, i64 0, metadata !225), !dbg !1135
  %call94 = call i32 @fileno(%struct._IO_FILE* %39) #10, !dbg !1136
  %call95 = call i32 @isatty(i32 %call94) #10, !dbg !1136
  %tobool96 = icmp eq i32 %call95, 0, !dbg !1136
  br i1 %tobool96, label %sw.epilog142, label %if.then97, !dbg !1136

if.then97:                                        ; preds = %sw.bb93
  %41 = load %struct._IO_FILE** @stderr, align 8, !dbg !1137, !tbaa !484
  %42 = load i8** @progName, align 8, !dbg !1137, !tbaa !484
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([51 x i8]* @.str41, i64 0, i64 0), i8* %42) #10, !dbg !1137
  %43 = load %struct._IO_FILE** @stderr, align 8, !dbg !1139, !tbaa !484
  %44 = load i8** @progName, align 8, !dbg !1139, !tbaa !484
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([34 x i8]* @.str42, i64 0, i64 0), i8* %44, i8* %44) #10, !dbg !1139
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !1140), !dbg !1142
  %45 = load i32* @exitValue, align 4, !dbg !1143, !tbaa !492
  %cmp.i240 = icmp slt i32 %45, 1, !dbg !1143
  br i1 %cmp.i240, label %if.then.i241, label %cleanup, !dbg !1143

if.then.i241:                                     ; preds = %if.then97
  store i32 1, i32* @exitValue, align 4, !dbg !1143, !tbaa !492
  br label %cleanup, !dbg !1143

sw.bb101:                                         ; preds = %if.end92
  %call102 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0)) #10, !dbg !1144
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call102}, i64 0, metadata !224), !dbg !1144
  %46 = load %struct._IO_FILE** @stdout, align 8, !dbg !1145, !tbaa !484
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %46}, i64 0, metadata !225), !dbg !1145
  %cmp103 = icmp eq %struct._IO_FILE* %call102, null, !dbg !1146
  br i1 %cmp103, label %if.then105, label %sw.epilog142, !dbg !1146

if.then105:                                       ; preds = %sw.bb101
  %47 = load %struct._IO_FILE** @stderr, align 8, !dbg !1147, !tbaa !484
  %48 = load i8** @progName, align 8, !dbg !1147, !tbaa !484
  %call106 = call i32* @__errno_location() #15, !dbg !1149
  %49 = load i32* %call106, align 4, !dbg !1149, !tbaa !492
  %call107 = call i8* @strerror(i32 %49) #10, !dbg !1149
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([34 x i8]* @.str44, i64 0, i64 0), i8* %48, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %call107) #10, !dbg !1149
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !1150), !dbg !1152
  %50 = load i32* @exitValue, align 4, !dbg !1153, !tbaa !492
  %cmp.i252 = icmp slt i32 %50, 1, !dbg !1153
  br i1 %cmp.i252, label %if.then.i253, label %cleanup, !dbg !1153

if.then.i253:                                     ; preds = %if.then105
  store i32 1, i32* @exitValue, align 4, !dbg !1153, !tbaa !492
  br label %cleanup, !dbg !1153

sw.bb115:                                         ; preds = %if.end92
  %call116 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0)) #10, !dbg !1154
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call116}, i64 0, metadata !224), !dbg !1154
  %call117 = call %struct._IO_FILE* @fopen_output_safely(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str78, i64 0, i64 0)) #11, !dbg !1155
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call117}, i64 0, metadata !225), !dbg !1155
  %cmp118 = icmp eq %struct._IO_FILE* %call117, null, !dbg !1156
  br i1 %cmp118, label %if.then120, label %if.end129, !dbg !1156

if.then120:                                       ; preds = %sw.bb115
  %51 = load %struct._IO_FILE** @stderr, align 8, !dbg !1157, !tbaa !484
  %52 = load i8** @progName, align 8, !dbg !1157, !tbaa !484
  %call121 = call i32* @__errno_location() #15, !dbg !1159
  %53 = load i32* %call121, align 4, !dbg !1159, !tbaa !492
  %call122 = call i8* @strerror(i32 %53) #10, !dbg !1159
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([38 x i8]* @.str79, i64 0, i64 0), i8* %52, i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* %call122) #10, !dbg !1159
  %cmp124 = icmp eq %struct._IO_FILE* %call116, null, !dbg !1160
  br i1 %cmp124, label %if.end128, label %if.then126, !dbg !1160

if.then126:                                       ; preds = %if.then120
  %call127 = call i32 @fclose(%struct._IO_FILE* %call116) #10, !dbg !1160
  br label %if.end128, !dbg !1160

if.end128:                                        ; preds = %if.then120, %if.then126
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !1161), !dbg !1163
  %54 = load i32* @exitValue, align 4, !dbg !1164, !tbaa !492
  %cmp.i256 = icmp slt i32 %54, 1, !dbg !1164
  br i1 %cmp.i256, label %if.then.i257, label %cleanup, !dbg !1164

if.then.i257:                                     ; preds = %if.end128
  store i32 1, i32* @exitValue, align 4, !dbg !1164, !tbaa !492
  br label %cleanup, !dbg !1164

if.end129:                                        ; preds = %sw.bb115
  %cmp130 = icmp eq %struct._IO_FILE* %call116, null, !dbg !1165
  br i1 %cmp130, label %if.end140, label %sw.epilog142, !dbg !1165

if.end140:                                        ; preds = %if.end129
  %55 = load %struct._IO_FILE** @stderr, align 8, !dbg !1166, !tbaa !484
  %56 = load i8** @progName, align 8, !dbg !1166, !tbaa !484
  %call133 = call i32* @__errno_location() #15, !dbg !1168
  %57 = load i32* %call133, align 4, !dbg !1168, !tbaa !492
  %call134 = call i8* @strerror(i32 %57) #10, !dbg !1168
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([35 x i8]* @.str72, i64 0, i64 0), i8* %56, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %call134) #10, !dbg !1168
  %call139 = call i32 @fclose(%struct._IO_FILE* %call117) #10, !dbg !1169
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !1170), !dbg !1172
  %58 = load i32* @exitValue, align 4, !dbg !1173, !tbaa !492
  %cmp.i260 = icmp slt i32 %58, 1, !dbg !1173
  br i1 %cmp.i260, label %if.then.i261, label %cleanup, !dbg !1173

if.then.i261:                                     ; preds = %if.end140
  store i32 1, i32* @exitValue, align 4, !dbg !1173, !tbaa !492
  br label %cleanup, !dbg !1173

sw.default:                                       ; preds = %if.end92
  call fastcc void @panic(i8* getelementptr inbounds ([24 x i8]* @.str80, i64 0, i64 0)) #14, !dbg !1174
  unreachable, !dbg !1174

sw.epilog142:                                     ; preds = %sw.bb93, %if.end129, %sw.bb101
  %outStr.0 = phi %struct._IO_FILE* [ %call117, %if.end129 ], [ %46, %sw.bb101 ], [ %40, %sw.bb93 ]
  %inStr.0 = phi %struct._IO_FILE* [ %call116, %if.end129 ], [ %call102, %sw.bb101 ], [ %39, %sw.bb93 ]
  %59 = load i32* @verbosity, align 4, !dbg !1175, !tbaa !492
  %cmp143 = icmp sgt i32 %59, 0, !dbg !1175
  br i1 %cmp143, label %if.then145, label %if.end148, !dbg !1175

if.then145:                                       ; preds = %sw.epilog142
  %60 = load %struct._IO_FILE** @stderr, align 8, !dbg !1176, !tbaa !484
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([7 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #10, !dbg !1176
  call fastcc void @pad() #11, !dbg !1178
  %61 = load %struct._IO_FILE** @stderr, align 8, !dbg !1179, !tbaa !484
  %call147 = call i32 @fflush(%struct._IO_FILE* %61) #10, !dbg !1179
  br label %if.end148, !dbg !1180

if.end148:                                        ; preds = %if.then145, %sw.epilog142
  store %struct._IO_FILE* %outStr.0, %struct._IO_FILE** @outputHandleJustInCase, align 8, !dbg !1181, !tbaa !484
  store i8 1, i8* @deleteOutputOnInterrupt, align 1, !dbg !1182, !tbaa !485
  %62 = bitcast i32* %bzerr.i to i8*, !dbg !1183
  call void @llvm.lifetime.start(i64 4, i8* %62) #7, !dbg !1183
  %63 = bitcast i32* %bzerr_dummy.i to i8*, !dbg !1183
  call void @llvm.lifetime.start(i64 4, i8* %63) #7, !dbg !1183
  %64 = bitcast i32* %nUnused.i to i8*, !dbg !1183
  call void @llvm.lifetime.start(i64 4, i8* %64) #7, !dbg !1183
  %65 = bitcast i8** %unusedTmpV.i to i8*, !dbg !1183
  call void @llvm.lifetime.start(i64 8, i8* %65) #7, !dbg !1183
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %inStr.0}, i64 0, metadata !1185) #7, !dbg !1183
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %outStr.0}, i64 0, metadata !1186) #7, !dbg !1183
  call void @llvm.dbg.value(metadata !927, i64 0, metadata !1187) #7, !dbg !1188
  call void @llvm.dbg.declare(metadata !{i32* %bzerr.i}, metadata !255) #7, !dbg !1189
  call void @llvm.dbg.declare(metadata !{i32* %bzerr_dummy.i}, metadata !256) #7, !dbg !1189
  %66 = getelementptr inbounds [5000 x i8]* %obuf.i, i64 0, i64 0, !dbg !1190
  call void @llvm.lifetime.start(i64 5000, i8* %66) #7, !dbg !1190
  call void @llvm.dbg.declare(metadata !{[5000 x i8]* %obuf.i}, metadata !261) #7, !dbg !1190
  %67 = getelementptr inbounds [5000 x i8]* %unused.i, i64 0, i64 0, !dbg !1191
  call void @llvm.lifetime.start(i64 5000, i8* %67) #7, !dbg !1191
  call void @llvm.dbg.declare(metadata !{[5000 x i8]* %unused.i}, metadata !262) #7, !dbg !1191
  call void @llvm.dbg.declare(metadata !{i32* %nUnused.i}, metadata !263) #7, !dbg !1192
  call void @llvm.dbg.declare(metadata !{i8** %unusedTmpV.i}, metadata !264) #7, !dbg !1193
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !1194) #7, !dbg !1195
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !263), !dbg !1195
  store i32 0, i32* %nUnused.i, align 4, !dbg !1195, !tbaa !492
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !1196) #7, !dbg !1197
  %call.i244 = call i32 @ferror(%struct._IO_FILE* %outStr.0) #10, !dbg !1198
  %tobool.i245 = icmp eq i32 %call.i244, 0, !dbg !1198
  br i1 %tobool.i245, label %if.end.i247, label %errhandler_io.i, !dbg !1198

if.end.i247:                                      ; preds = %if.end148
  %call1.i246 = call i32 @ferror(%struct._IO_FILE* %inStr.0) #10, !dbg !1199
  %tobool2.i = icmp eq i32 %call1.i246, 0, !dbg !1199
  br i1 %tobool2.i, label %while.body.preheader.i, label %errhandler_io.i, !dbg !1199

while.body.preheader.i:                           ; preds = %if.end.i247
  %68 = load i32* @verbosity, align 4, !dbg !1200, !tbaa !492
  %69 = load i8* @smallMode, align 1, !dbg !1200, !tbaa !485
  %conv204.i = zext i8 %69 to i32, !dbg !1200
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !1194) #7, !dbg !1200
  %call5205.i = call i8* @BZ2_bzReadOpen(i32* %bzerr.i, %struct._IO_FILE* %inStr.0, i32 %68, i32 %conv204.i, i8* %67, i32 0) #10, !dbg !1200
  %cmp206.i = icmp ne i8* %call5205.i, null, !dbg !1202
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1203) #7, !dbg !1202
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !255), !dbg !1202
  %70 = load i32* %bzerr.i, align 4, !dbg !1202, !tbaa !492
  %cmp7207.i = icmp eq i32 %70, 0, !dbg !1202
  %or.cond208.i = and i1 %cmp206.i, %cmp7207.i, !dbg !1202
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1203) #7, !dbg !1202
  br i1 %or.cond208.i, label %if.end10.i, label %errhandler.i, !dbg !1202

if.end10.i:                                       ; preds = %while.body.preheader.i, %while.body.backedge.i
  %call5210.i = phi i8* [ %call5.i, %while.body.backedge.i ], [ %call5205.i, %while.body.preheader.i ]
  %streamNo.0209.i = phi i32 [ %inc.i, %while.body.backedge.i ], [ 0, %while.body.preheader.i ]
  %inc.i = add nsw i32 %streamNo.0209.i, 1, !dbg !1204
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !1196) #7, !dbg !1204
  br label %while.cond11.i, !dbg !1205

while.cond11.i:                                   ; preds = %if.end32.while.cond11_crit_edge.i, %if.end10.i
  %71 = phi i32 [ %.pre.i, %if.end32.while.cond11_crit_edge.i ], [ 0, %if.end10.i ]
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1203) #7, !dbg !1205
  switch i32 %71, label %errhandler.i [
    i32 0, label %while.body14.i
    i32 4, label %if.end40.i
  ], !dbg !1205

while.body14.i:                                   ; preds = %while.cond11.i
  %call16.i = call i32 @BZ2_bzRead(i32* %bzerr.i, i8* %call5210.i, i8* %66, i32 5000) #10, !dbg !1206
  call void @llvm.dbg.value(metadata !{i32 %call16.i}, i64 0, metadata !1208) #7, !dbg !1206
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1203) #7, !dbg !1209
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !255), !dbg !1209
  %72 = load i32* %bzerr.i, align 4, !dbg !1209, !tbaa !492
  %cmp17.i = icmp eq i32 %72, -5, !dbg !1209
  br i1 %cmp17.i, label %trycat.i, label %if.end20.i, !dbg !1209

if.end20.i:                                       ; preds = %while.body14.i
  %73 = and i32 %72, -5, !dbg !1210
  %74 = icmp eq i32 %73, 0, !dbg !1210
  %cmp26.i = icmp sgt i32 %call16.i, 0, !dbg !1210
  %or.cond179.i = and i1 %74, %cmp26.i, !dbg !1210
  br i1 %or.cond179.i, label %if.then28.i, label %if.end32.i, !dbg !1210

if.then28.i:                                      ; preds = %if.end20.i
  %conv30.i = sext i32 %call16.i to i64, !dbg !1211
  %call31.i = call i64 @fwrite(i8* %66, i64 1, i64 %conv30.i, %struct._IO_FILE* %outStr.0) #10, !dbg !1211
  br label %if.end32.i, !dbg !1211

if.end32.i:                                       ; preds = %if.then28.i, %if.end20.i
  %call33.i = call i32 @ferror(%struct._IO_FILE* %outStr.0) #10, !dbg !1212
  %tobool34.i = icmp eq i32 %call33.i, 0, !dbg !1212
  br i1 %tobool34.i, label %if.end32.while.cond11_crit_edge.i, label %errhandler_io.i, !dbg !1212

if.end32.while.cond11_crit_edge.i:                ; preds = %if.end32.i
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1203) #7, !dbg !1205
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !255), !dbg !1205
  %.pre.i = load i32* %bzerr.i, align 4, !dbg !1205, !tbaa !492
  br label %while.cond11.i, !dbg !1212

if.end40.i:                                       ; preds = %while.cond11.i
  call void @BZ2_bzReadGetUnused(i32* %bzerr.i, i8* %call5210.i, i8** %unusedTmpV.i, i32* %nUnused.i) #10, !dbg !1213
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1203) #7, !dbg !1214
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !255), !dbg !1214
  %75 = load i32* %bzerr.i, align 4, !dbg !1214, !tbaa !492
  %cmp41.i = icmp eq i32 %75, 0, !dbg !1214
  br i1 %cmp41.i, label %if.end44.i, label %if.then43.i, !dbg !1214

if.then43.i:                                      ; preds = %if.end40.i
  call fastcc void @panic(i8* getelementptr inbounds ([27 x i8]* @.str84, i64 0, i64 0)) #13, !dbg !1214
  unreachable, !dbg !1214

if.end44.i:                                       ; preds = %if.end40.i
  call void @llvm.dbg.value(metadata !{i8** %unusedTmpV.i}, i64 0, metadata !1215) #7, !dbg !1216
  call void @llvm.dbg.value(metadata !{i8** %unusedTmpV.i}, i64 0, metadata !264), !dbg !1216
  %76 = load i8** %unusedTmpV.i, align 8, !dbg !1216, !tbaa !484
  call void @llvm.dbg.value(metadata !{i8* %76}, i64 0, metadata !1217) #7, !dbg !1216
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !1218) #7, !dbg !1219
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !1194) #7, !dbg !1219
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !263), !dbg !1219
  %77 = load i32* %nUnused.i, align 4, !dbg !1219, !tbaa !492
  %cmp45182.i = icmp sgt i32 %77, 0, !dbg !1219
  br i1 %cmp45182.i, label %for.body.i, label %for.end.i, !dbg !1219

for.body.i:                                       ; preds = %if.end44.i, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %if.end44.i ]
  %arrayidx.i248 = getelementptr inbounds i8* %76, i64 %indvars.iv.i, !dbg !1219
  %78 = load i8* %arrayidx.i248, align 1, !dbg !1219, !tbaa !485
  %arrayidx48.i = getelementptr inbounds [5000 x i8]* %unused.i, i64 0, i64 %indvars.iv.i, !dbg !1219
  store i8 %78, i8* %arrayidx48.i, align 1, !dbg !1219, !tbaa !485
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1219
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !1194) #7, !dbg !1219
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !1219
  %exitcond = icmp eq i32 %lftr.wideiv, %77, !dbg !1219
  br i1 %exitcond, label %for.end.i, label %for.body.i, !dbg !1219

for.end.i:                                        ; preds = %for.body.i, %if.end44.i
  call void @BZ2_bzReadClose(i32* %bzerr.i, i8* %call5210.i) #10, !dbg !1221
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1203) #7, !dbg !1222
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !255), !dbg !1222
  %79 = load i32* %bzerr.i, align 4, !dbg !1222, !tbaa !492
  %cmp50.i = icmp eq i32 %79, 0, !dbg !1222
  br i1 %cmp50.i, label %if.end53.i, label %if.then52.i, !dbg !1222

if.then52.i:                                      ; preds = %for.end.i
  call fastcc void @panic(i8* getelementptr inbounds ([27 x i8]* @.str84, i64 0, i64 0)) #13, !dbg !1222
  unreachable, !dbg !1222

if.end53.i:                                       ; preds = %for.end.i
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !1194) #7, !dbg !1223
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !263), !dbg !1223
  %80 = load i32* %nUnused.i, align 4, !dbg !1223, !tbaa !492
  %cmp54.i = icmp eq i32 %80, 0, !dbg !1223
  br i1 %cmp54.i, label %land.lhs.true56.i, label %while.body.backedge.i, !dbg !1223

while.body.backedge.i:                            ; preds = %land.lhs.true56.while.body.backedge_crit_edge.i, %if.end53.i
  %81 = phi i32 [ %.pre225.i, %land.lhs.true56.while.body.backedge_crit_edge.i ], [ %80, %if.end53.i ]
  %82 = load i32* @verbosity, align 4, !dbg !1200, !tbaa !492
  %83 = load i8* @smallMode, align 1, !dbg !1200, !tbaa !485
  %conv.i249 = zext i8 %83 to i32, !dbg !1200
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !1194) #7, !dbg !1200
  %call5.i = call i8* @BZ2_bzReadOpen(i32* %bzerr.i, %struct._IO_FILE* %inStr.0, i32 %82, i32 %conv.i249, i8* %67, i32 %81) #10, !dbg !1200
  %cmp.i250 = icmp ne i8* %call5.i, null, !dbg !1202
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1203) #7, !dbg !1202
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !255), !dbg !1202
  %84 = load i32* %bzerr.i, align 4, !dbg !1202, !tbaa !492
  %cmp7.i = icmp eq i32 %84, 0, !dbg !1202
  %or.cond.i = and i1 %cmp.i250, %cmp7.i, !dbg !1202
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1203) #7, !dbg !1202
  br i1 %or.cond.i, label %if.end10.i, label %errhandler.i, !dbg !1202

land.lhs.true56.i:                                ; preds = %if.end53.i
  %call57.i = call fastcc zeroext i8 @myfeof(%struct._IO_FILE* %inStr.0) #10, !dbg !1223
  %tobool59.i = icmp eq i8 %call57.i, 0, !dbg !1223
  br i1 %tobool59.i, label %land.lhs.true56.while.body.backedge_crit_edge.i, label %closeok.i, !dbg !1223

land.lhs.true56.while.body.backedge_crit_edge.i:  ; preds = %land.lhs.true56.i
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !1194) #7, !dbg !1200
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !263), !dbg !1200
  %.pre225.i = load i32* %nUnused.i, align 4, !dbg !1200, !tbaa !492
  br label %while.body.backedge.i, !dbg !1223

closeok.i:                                        ; preds = %land.lhs.true56.i, %while.body98.i
  %call63.i = call i32 @ferror(%struct._IO_FILE* %inStr.0) #10, !dbg !1224
  %tobool64.i = icmp eq i32 %call63.i, 0, !dbg !1224
  br i1 %tobool64.i, label %if.end66.i, label %errhandler_io.i, !dbg !1224

if.end66.i:                                       ; preds = %closeok.i
  %call67.i = call i32 @fclose(%struct._IO_FILE* %inStr.0) #10, !dbg !1225
  call void @llvm.dbg.value(metadata !{i32 %call67.i}, i64 0, metadata !1226) #7, !dbg !1225
  %cmp68.i = icmp eq i32 %call67.i, -1, !dbg !1227
  br i1 %cmp68.i, label %errhandler_io.i, label %if.end71.i, !dbg !1227

if.end71.i:                                       ; preds = %if.end66.i
  %call72.i = call i32 @ferror(%struct._IO_FILE* %outStr.0) #10, !dbg !1228
  %tobool73.i = icmp eq i32 %call72.i, 0, !dbg !1228
  br i1 %tobool73.i, label %if.end75.i, label %errhandler_io.i, !dbg !1228

if.end75.i:                                       ; preds = %if.end71.i
  %call76.i = call i32 @fflush(%struct._IO_FILE* %outStr.0) #10, !dbg !1229
  call void @llvm.dbg.value(metadata !{i32 %call76.i}, i64 0, metadata !1226) #7, !dbg !1229
  %cmp77.i = icmp eq i32 %call76.i, 0, !dbg !1230
  br i1 %cmp77.i, label %if.end80.i, label %errhandler_io.i, !dbg !1230

if.end80.i:                                       ; preds = %if.end75.i
  %85 = load %struct._IO_FILE** @stdout, align 8, !dbg !1231, !tbaa !484
  %cmp81.i = icmp eq %struct._IO_FILE* %85, %outStr.0, !dbg !1231
  br i1 %cmp81.i, label %if.end89.i, label %if.then83.i, !dbg !1231

if.then83.i:                                      ; preds = %if.end80.i
  %call84.i = call i32 @fclose(%struct._IO_FILE* %outStr.0) #10, !dbg !1232
  call void @llvm.dbg.value(metadata !{i32 %call84.i}, i64 0, metadata !1226) #7, !dbg !1232
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8, !dbg !1234, !tbaa !484
  %cmp85.i = icmp eq i32 %call84.i, -1, !dbg !1235
  br i1 %cmp85.i, label %errhandler_io.i, label %if.end89.i, !dbg !1235

if.end89.i:                                       ; preds = %if.then83.i, %if.end80.i
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8, !dbg !1236, !tbaa !484
  %86 = load i32* @verbosity, align 4, !dbg !1237, !tbaa !492
  %cmp90.i = icmp sgt i32 %86, 1, !dbg !1237
  br i1 %cmp90.i, label %if.then92.i, label %uncompressStream.exit, !dbg !1237

if.then92.i:                                      ; preds = %if.end89.i
  %87 = load %struct._IO_FILE** @stderr, align 8, !dbg !1237, !tbaa !484
  %88 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str49, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %87) #7, !dbg !1237
  br label %uncompressStream.exit, !dbg !1237

trycat.i:                                         ; preds = %while.body14.i
  %89 = load i8* @forceOverwrite, align 1, !dbg !1238, !tbaa !485
  %tobool95.i = icmp eq i8 %89, 0, !dbg !1238
  br i1 %tobool95.i, label %errhandler.i, label %if.then96.i, !dbg !1238

if.then96.i:                                      ; preds = %trycat.i
  call void @rewind(%struct._IO_FILE* %inStr.0) #10, !dbg !1239
  br label %while.body98.i, !dbg !1241

while.body98.i:                                   ; preds = %if.end116.i, %if.then96.i
  %call99.i = call fastcc zeroext i8 @myfeof(%struct._IO_FILE* %inStr.0) #10, !dbg !1242
  %tobool100.i = icmp eq i8 %call99.i, 0, !dbg !1242
  br i1 %tobool100.i, label %if.end102.i, label %closeok.i, !dbg !1242

if.end102.i:                                      ; preds = %while.body98.i
  %call104.i = call i64 @fread(i8* %66, i64 1, i64 5000, %struct._IO_FILE* %inStr.0) #10, !dbg !1244
  %call106.i = call i32 @ferror(%struct._IO_FILE* %inStr.0) #10, !dbg !1245
  %tobool107.i = icmp eq i32 %call106.i, 0, !dbg !1245
  br i1 %tobool107.i, label %if.end109.i, label %errhandler_io.i, !dbg !1245

if.end109.i:                                      ; preds = %if.end102.i
  %conv105.i = trunc i64 %call104.i to i32, !dbg !1244
  %cmp110.i = icmp sgt i32 %conv105.i, 0, !dbg !1246
  br i1 %cmp110.i, label %if.then112.i, label %if.end116.i, !dbg !1246

if.then112.i:                                     ; preds = %if.end109.i
  %sext.i = shl i64 %call104.i, 32, !dbg !1246
  %conv114.i = ashr exact i64 %sext.i, 32, !dbg !1246
  %call115.i = call i64 @fwrite(i8* %66, i64 1, i64 %conv114.i, %struct._IO_FILE* %outStr.0) #10, !dbg !1246
  br label %if.end116.i, !dbg !1246

if.end116.i:                                      ; preds = %if.then112.i, %if.end109.i
  %call117.i = call i32 @ferror(%struct._IO_FILE* %outStr.0) #10, !dbg !1247
  %tobool118.i = icmp eq i32 %call117.i, 0, !dbg !1247
  br i1 %tobool118.i, label %while.body98.i, label %errhandler_io.i, !dbg !1247

errhandler.i:                                     ; preds = %while.body.backedge.i, %while.cond11.i, %trycat.i, %while.body.preheader.i
  %call5198.i = phi i8* [ %call5210.i, %trycat.i ], [ %call5205.i, %while.body.preheader.i ], [ %call5210.i, %while.cond11.i ], [ %call5.i, %while.body.backedge.i ]
  %streamNo.1.i = phi i32 [ %inc.i, %trycat.i ], [ 0, %while.body.preheader.i ], [ %inc.i, %while.cond11.i ], [ %inc.i, %while.body.backedge.i ]
  call void @BZ2_bzReadClose(i32* %bzerr_dummy.i, i8* %call5198.i) #10, !dbg !1248
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1203) #7, !dbg !1249
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !255), !dbg !1249
  %90 = load i32* %bzerr.i, align 4, !dbg !1249, !tbaa !492
  switch i32 %90, label %sw.default.i [
    i32 -9, label %sw.bb.i
    i32 -6, label %errhandler_io.i
    i32 -4, label %sw.bb124.i
    i32 -3, label %sw.bb125.i
    i32 -7, label %sw.bb126.i
    i32 -5, label %sw.bb127.i
  ], !dbg !1249

sw.bb.i:                                          ; preds = %errhandler.i
  call fastcc void @configError() #13, !dbg !1250
  unreachable, !dbg !1250

errhandler_io.i:                                  ; preds = %if.end32.i, %if.end116.i, %if.end102.i, %errhandler.i, %if.then83.i, %if.end75.i, %if.end71.i, %if.end66.i, %closeok.i, %if.end.i247, %if.end148
  call fastcc void @ioError() #13, !dbg !1252
  unreachable, !dbg !1252

sw.bb124.i:                                       ; preds = %errhandler.i
  %91 = load %struct._IO_FILE** @stderr, align 8, !dbg !1253, !tbaa !484
  %92 = load i8** @progName, align 8, !dbg !1253, !tbaa !484
  %call.i.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([47 x i8]* @.str89, i64 0, i64 0), i8* %92) #10, !dbg !1253
  call fastcc void @showFileNames() #10, !dbg !1255
  call fastcc void @cadvise() #10, !dbg !1256
  call fastcc void @cleanUpAndFail(i32 2) #13, !dbg !1257
  unreachable, !dbg !1257

sw.bb125.i:                                       ; preds = %errhandler.i
  call fastcc void @outOfMemory() #13, !dbg !1258
  unreachable, !dbg !1258

sw.bb126.i:                                       ; preds = %errhandler.i
  %93 = load i8* @noisy, align 1, !dbg !1259, !tbaa !485
  %tobool.i.i = icmp eq i8 %93, 0, !dbg !1259
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !1259

if.then.i.i:                                      ; preds = %sw.bb126.i
  %94 = load %struct._IO_FILE** @stderr, align 8, !dbg !1261, !tbaa !484
  %95 = load i8** @progName, align 8, !dbg !1261, !tbaa !484
  %call.i180.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([95 x i8]* @.str87, i64 0, i64 0), i8* %95) #10, !dbg !1261
  %96 = load i8** @progName, align 8, !dbg !1263, !tbaa !484
  call void @perror(i8* %96) #10, !dbg !1263
  call fastcc void @showFileNames() #10, !dbg !1264
  call fastcc void @cadvise() #10, !dbg !1265
  br label %if.end.i.i, !dbg !1266

if.end.i.i:                                       ; preds = %if.then.i.i, %sw.bb126.i
  call fastcc void @cleanUpAndFail(i32 2) #13, !dbg !1267
  unreachable, !dbg !1267

sw.bb127.i:                                       ; preds = %errhandler.i
  %97 = load %struct._IO_FILE** @stdin, align 8, !dbg !1268, !tbaa !484
  %cmp128.i = icmp eq %struct._IO_FILE* %97, %inStr.0, !dbg !1268
  br i1 %cmp128.i, label %if.end132.i, label %if.then130.i, !dbg !1268

if.then130.i:                                     ; preds = %sw.bb127.i
  %call131.i = call i32 @fclose(%struct._IO_FILE* %inStr.0) #10, !dbg !1268
  br label %if.end132.i, !dbg !1268

if.end132.i:                                      ; preds = %if.then130.i, %sw.bb127.i
  %98 = load %struct._IO_FILE** @stdout, align 8, !dbg !1269, !tbaa !484
  %cmp133.i = icmp eq %struct._IO_FILE* %98, %outStr.0, !dbg !1269
  br i1 %cmp133.i, label %if.end137.i, label %if.then135.i, !dbg !1269

if.then135.i:                                     ; preds = %if.end132.i
  %call136.i = call i32 @fclose(%struct._IO_FILE* %outStr.0) #10, !dbg !1269
  br label %if.end137.i, !dbg !1269

if.end137.i:                                      ; preds = %if.then135.i, %if.end132.i
  %cmp138.i = icmp eq i32 %streamNo.1.i, 1, !dbg !1270
  br i1 %cmp138.i, label %uncompressStream.exit, label %if.else.i, !dbg !1270

if.else.i:                                        ; preds = %if.end137.i
  %99 = load i8* @noisy, align 1, !dbg !1271, !tbaa !485
  %tobool141.i = icmp eq i8 %99, 0, !dbg !1271
  br i1 %tobool141.i, label %uncompressStream.exit, label %if.then142.i, !dbg !1271

if.then142.i:                                     ; preds = %if.else.i
  %100 = load %struct._IO_FILE** @stderr, align 8, !dbg !1273, !tbaa !484
  %101 = load i8** @progName, align 8, !dbg !1273, !tbaa !484
  %call143.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([45 x i8]* @.str85, i64 0, i64 0), i8* %101, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #10, !dbg !1273
  br label %uncompressStream.exit, !dbg !1273

sw.default.i:                                     ; preds = %errhandler.i
  call fastcc void @panic(i8* getelementptr inbounds ([28 x i8]* @.str86, i64 0, i64 0)) #13, !dbg !1274
  unreachable, !dbg !1274

uncompressStream.exit:                            ; preds = %if.end89.i, %if.then92.i, %if.end137.i, %if.else.i, %if.then142.i
  %retval.0.i251 = phi i1 [ true, %if.then92.i ], [ true, %if.end89.i ], [ false, %if.end137.i ], [ true, %if.else.i ], [ true, %if.then142.i ]
  call void @llvm.lifetime.end(i64 5000, i8* %67) #7, !dbg !1275
  call void @llvm.lifetime.end(i64 5000, i8* %66) #7, !dbg !1275
  call void @llvm.lifetime.end(i64 4, i8* %62) #7, !dbg !1276
  call void @llvm.lifetime.end(i64 4, i8* %63) #7, !dbg !1276
  call void @llvm.lifetime.end(i64 4, i8* %64) #7, !dbg !1276
  call void @llvm.lifetime.end(i64 8, i8* %65) #7, !dbg !1276
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8, !dbg !1277, !tbaa !484
  br i1 %retval.0.i251, label %if.then151, label %if.else164, !dbg !1278

if.then151:                                       ; preds = %uncompressStream.exit
  %102 = load i32* @srcMode, align 4, !dbg !1279, !tbaa !492
  %cmp152 = icmp eq i32 %102, 3, !dbg !1279
  br i1 %cmp152, label %if.then154, label %if.end175.thread, !dbg !1279

if.end175.thread:                                 ; preds = %if.then151
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1280, !tbaa !485
  br label %if.then177, !dbg !1281

if.then154:                                       ; preds = %if.then151
  call fastcc void @applySavedMetaInfoToOutputFile() #11, !dbg !1282
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1283, !tbaa !485
  %103 = load i8* @keepInputFiles, align 1, !dbg !1284, !tbaa !485
  %tobool155 = icmp eq i8 %103, 0, !dbg !1284
  br i1 %tobool155, label %if.then156, label %if.end175, !dbg !1284

if.then156:                                       ; preds = %if.then154
  %call157 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #10, !dbg !1285
  call void @llvm.dbg.value(metadata !{i32 %call157}, i64 0, metadata !231), !dbg !1285
  %cmp158 = icmp eq i32 %call157, 0, !dbg !1286
  br i1 %cmp158, label %if.end175, label %if.then160, !dbg !1286

if.then160:                                       ; preds = %if.then156
  call fastcc void @ioError() #14, !dbg !1286
  unreachable, !dbg !1286

if.else164:                                       ; preds = %uncompressStream.exit
  store i8 1, i8* @unzFailsExist, align 1, !dbg !1288, !tbaa !485
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1289, !tbaa !485
  %104 = load i32* @srcMode, align 4, !dbg !1290, !tbaa !492
  %cmp165 = icmp eq i32 %104, 3, !dbg !1290
  br i1 %cmp165, label %if.then167, label %if.end175.thread266, !dbg !1290

if.end175.thread266:                              ; preds = %if.else164
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1280, !tbaa !485
  br label %if.else183, !dbg !1281

if.then167:                                       ; preds = %if.else164
  %call169 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #10, !dbg !1291
  call void @llvm.dbg.value(metadata !{i32 %call169}, i64 0, metadata !235), !dbg !1291
  %cmp170 = icmp eq i32 %call169, 0, !dbg !1292
  br i1 %cmp170, label %if.end175, label %if.then172, !dbg !1292

if.then172:                                       ; preds = %if.then167
  call fastcc void @ioError() #14, !dbg !1292
  unreachable, !dbg !1292

if.end175:                                        ; preds = %if.then156, %if.then154, %if.then167
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1280, !tbaa !485
  br i1 %retval.0.i251, label %if.then177, label %if.else183, !dbg !1281

if.then177:                                       ; preds = %if.end175, %if.end175.thread
  %105 = load i32* @verbosity, align 4, !dbg !1294, !tbaa !492
  %cmp178 = icmp sgt i32 %105, 0, !dbg !1294
  br i1 %cmp178, label %if.then180, label %cleanup, !dbg !1294

if.then180:                                       ; preds = %if.then177
  %106 = load %struct._IO_FILE** @stderr, align 8, !dbg !1296, !tbaa !484
  %107 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %106) #7, !dbg !1296
  br label %cleanup, !dbg !1296

if.else183:                                       ; preds = %if.end175.thread266, %if.end175
  tail call void @llvm.dbg.value(metadata !684, i64 0, metadata !1297), !dbg !1300
  %108 = load i32* @exitValue, align 4, !dbg !1301, !tbaa !492
  %cmp.i223 = icmp slt i32 %108, 2, !dbg !1301
  br i1 %cmp.i223, label %if.then.i224, label %setExit.exit226, !dbg !1301

if.then.i224:                                     ; preds = %if.else183
  store i32 2, i32* @exitValue, align 4, !dbg !1301, !tbaa !492
  br label %setExit.exit226, !dbg !1301

setExit.exit226:                                  ; preds = %if.else183, %if.then.i224
  %109 = load i32* @verbosity, align 4, !dbg !1302, !tbaa !492
  %cmp184 = icmp sgt i32 %109, 0, !dbg !1302
  %110 = load %struct._IO_FILE** @stderr, align 8, !dbg !1303, !tbaa !484
  br i1 %cmp184, label %if.then186, label %if.else188, !dbg !1302

if.then186:                                       ; preds = %setExit.exit226
  %111 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str82, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %110) #7, !dbg !1303
  br label %cleanup, !dbg !1303

if.else188:                                       ; preds = %setExit.exit226
  %112 = load i8** @progName, align 8, !dbg !1304, !tbaa !484
  %call189 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([29 x i8]* @.str83, i64 0, i64 0), i8* %112, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #10, !dbg !1304
  br label %cleanup

cleanup:                                          ; preds = %if.then.i261, %if.end140, %if.then.i257, %if.end128, %if.then.i253, %if.then105, %if.then.i241, %if.then97, %if.then.i237, %if.then84, %if.then.i228, %if.else, %if.then.i220, %if.end54, %if.then.i216, %if.then38, %if.then.i, %if.then25, %if.then180, %if.then177, %if.else188, %if.then186
  call void @llvm.lifetime.end(i64 144, i8* %0) #7, !dbg !1305
  ret void, !dbg !1306
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @testf(i8* %name) #0 {
entry:
  %bzerr.i = alloca i32, align 4
  %bzerr_dummy.i = alloca i32, align 4
  %obuf.i = alloca [5000 x i8], align 16
  %unused.i = alloca [5000 x i8], align 16
  %nUnused.i = alloca i32, align 4
  %unusedTmpV.i = alloca i8*, align 8
  %statBuf = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !121), !dbg !1307
  %0 = bitcast %struct.stat* %statBuf to i8*, !dbg !1308
  call void @llvm.lifetime.start(i64 144, i8* %0) #7, !dbg !1308
  call void @llvm.dbg.declare(metadata !{%struct.stat* %statBuf}, metadata !124), !dbg !1308
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1309, !tbaa !485
  %cmp = icmp eq i8* %name, null, !dbg !1310
  %1 = load i32* @srcMode, align 4, !dbg !1310, !tbaa !492
  %cmp1 = icmp ne i32 %1, 1, !dbg !1310
  %or.cond = and i1 %cmp, %cmp1, !dbg !1310
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1310

if.then:                                          ; preds = %entry
  call fastcc void @panic(i8* getelementptr inbounds ([18 x i8]* @.str36, i64 0, i64 0)) #14, !dbg !1311
  unreachable, !dbg !1311

if.end:                                           ; preds = %entry
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0)) #11, !dbg !1312
  %2 = load i32* @srcMode, align 4, !dbg !1313, !tbaa !492
  switch i32 %2, label %if.end11 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb3
  ], !dbg !1313

sw.bb:                                            ; preds = %if.end
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0)) #11, !dbg !1314
  br label %if.end11thread-pre-split, !dbg !1314

sw.bb2:                                           ; preds = %if.end
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %name) #11, !dbg !1316
  br label %if.end11thread-pre-split, !dbg !1316

sw.bb3:                                           ; preds = %if.end
  call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %name) #11, !dbg !1317
  br label %if.end11thread-pre-split, !dbg !1317

if.end11thread-pre-split:                         ; preds = %sw.bb3, %sw.bb2, %sw.bb
  %.pr = load i32* @srcMode, align 4, !dbg !1318, !tbaa !492
  br label %if.end11

if.end11:                                         ; preds = %if.end11thread-pre-split, %if.end
  %3 = phi i32 [ %.pr, %if.end11thread-pre-split ], [ %2, %if.end ], !dbg !1318
  %cmp12 = icmp eq i32 %3, 1, !dbg !1318
  br i1 %cmp12, label %sw.bb32, label %land.lhs.true14, !dbg !1318

land.lhs.true14:                                  ; preds = %if.end11
  %call15 = call fastcc zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #11, !dbg !1318
  %tobool16 = icmp eq i8 %call15, 0, !dbg !1318
  br i1 %tobool16, label %if.then17, label %if.end21, !dbg !1318

if.then17:                                        ; preds = %land.lhs.true14
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !1319, !tbaa !484
  %5 = load i8** @progName, align 8, !dbg !1319, !tbaa !484
  %call18 = call i32* @__errno_location() #15, !dbg !1321
  %6 = load i32* %call18, align 4, !dbg !1321, !tbaa !492
  %call19 = call i8* @strerror(i32 %6) #10, !dbg !1321
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([30 x i8]* @.str39, i64 0, i64 0), i8* %5, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %call19) #10, !dbg !1321
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !1322), !dbg !1324
  %7 = load i32* @exitValue, align 4, !dbg !1325, !tbaa !492
  %cmp.i73 = icmp slt i32 %7, 1, !dbg !1325
  br i1 %cmp.i73, label %if.then.i, label %cleanup, !dbg !1325

if.then.i:                                        ; preds = %if.then17
  store i32 1, i32* @exitValue, align 4, !dbg !1325, !tbaa !492
  br label %cleanup, !dbg !1325

if.end21:                                         ; preds = %land.lhs.true14
  %.pr83 = load i32* @srcMode, align 4, !dbg !1326, !tbaa !492
  %cmp22 = icmp eq i32 %.pr83, 1, !dbg !1326
  br i1 %cmp22, label %sw.bb32, label %if.then24, !dbg !1326

if.then24:                                        ; preds = %if.end21
  %call25 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf) #10, !dbg !1327
  %st_mode = getelementptr inbounds %struct.stat* %statBuf, i64 0, i32 3, !dbg !1329
  %8 = load i32* %st_mode, align 8, !dbg !1329, !tbaa !492
  %and = and i32 %8, 61440, !dbg !1329
  %cmp26 = icmp eq i32 %and, 16384, !dbg !1329
  br i1 %cmp26, label %if.then28, label %if.end31, !dbg !1329

if.then28:                                        ; preds = %if.then24
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !1330, !tbaa !484
  %10 = load i8** @progName, align 8, !dbg !1330, !tbaa !484
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([35 x i8]* @.str40, i64 0, i64 0), i8* %10, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #10, !dbg !1330
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !1332), !dbg !1334
  %11 = load i32* @exitValue, align 4, !dbg !1335, !tbaa !492
  %cmp.i74 = icmp slt i32 %11, 1, !dbg !1335
  br i1 %cmp.i74, label %if.then.i75, label %cleanup, !dbg !1335

if.then.i75:                                      ; preds = %if.then28
  store i32 1, i32* @exitValue, align 4, !dbg !1335, !tbaa !492
  br label %cleanup, !dbg !1335

if.end31:                                         ; preds = %if.then24
  %.pr85.pr = load i32* @srcMode, align 4, !dbg !1336, !tbaa !492
  switch i32 %.pr85.pr, label %sw.default [
    i32 1, label %sw.bb32
    i32 2, label %sw.bb40
    i32 3, label %sw.bb40
  ], !dbg !1336

sw.bb32:                                          ; preds = %if.end11, %if.end21, %if.end31
  %12 = load %struct._IO_FILE** @stdin, align 8, !dbg !1337, !tbaa !484
  %call33 = call i32 @fileno(%struct._IO_FILE* %12) #10, !dbg !1337
  %call34 = call i32 @isatty(i32 %call33) #10, !dbg !1337
  %tobool35 = icmp eq i32 %call34, 0, !dbg !1337
  br i1 %tobool35, label %if.end39, label %if.then36, !dbg !1337

if.then36:                                        ; preds = %sw.bb32
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !1339, !tbaa !484
  %14 = load i8** @progName, align 8, !dbg !1339, !tbaa !484
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([51 x i8]* @.str41, i64 0, i64 0), i8* %14) #10, !dbg !1339
  %15 = load %struct._IO_FILE** @stderr, align 8, !dbg !1341, !tbaa !484
  %16 = load i8** @progName, align 8, !dbg !1341, !tbaa !484
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([34 x i8]* @.str42, i64 0, i64 0), i8* %16, i8* %16) #10, !dbg !1341
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !1342), !dbg !1344
  %17 = load i32* @exitValue, align 4, !dbg !1345, !tbaa !492
  %cmp.i77 = icmp slt i32 %17, 1, !dbg !1345
  br i1 %cmp.i77, label %if.then.i78, label %cleanup, !dbg !1345

if.then.i78:                                      ; preds = %if.then36
  store i32 1, i32* @exitValue, align 4, !dbg !1345, !tbaa !492
  br label %cleanup, !dbg !1345

if.end39:                                         ; preds = %sw.bb32
  %18 = load %struct._IO_FILE** @stdin, align 8, !dbg !1346, !tbaa !484
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %18}, i64 0, metadata !122), !dbg !1346
  br label %sw.epilog49, !dbg !1347

sw.bb40:                                          ; preds = %if.end31, %if.end31
  %call41 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0)) #10, !dbg !1348
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call41}, i64 0, metadata !122), !dbg !1348
  %cmp42 = icmp eq %struct._IO_FILE* %call41, null, !dbg !1349
  br i1 %cmp42, label %if.then44, label %sw.epilog49, !dbg !1349

if.then44:                                        ; preds = %sw.bb40
  %19 = load %struct._IO_FILE** @stderr, align 8, !dbg !1350, !tbaa !484
  %20 = load i8** @progName, align 8, !dbg !1350, !tbaa !484
  %call45 = call i32* @__errno_location() #15, !dbg !1352
  %21 = load i32* %call45, align 4, !dbg !1352, !tbaa !492
  %call46 = call i8* @strerror(i32 %21) #10, !dbg !1352
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([34 x i8]* @.str44, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %call46) #10, !dbg !1352
  tail call void @llvm.dbg.value(metadata !516, i64 0, metadata !1353), !dbg !1355
  %22 = load i32* @exitValue, align 4, !dbg !1356, !tbaa !492
  %cmp.i80 = icmp slt i32 %22, 1, !dbg !1356
  br i1 %cmp.i80, label %if.then.i81, label %cleanup, !dbg !1356

if.then.i81:                                      ; preds = %if.then44
  store i32 1, i32* @exitValue, align 4, !dbg !1356, !tbaa !492
  br label %cleanup, !dbg !1356

sw.default:                                       ; preds = %if.end31
  call fastcc void @panic(i8* getelementptr inbounds ([19 x i8]* @.str45, i64 0, i64 0)) #14, !dbg !1357
  unreachable, !dbg !1357

sw.epilog49:                                      ; preds = %sw.bb40, %if.end39
  %inStr.0 = phi %struct._IO_FILE* [ %call41, %sw.bb40 ], [ %18, %if.end39 ]
  %23 = load i32* @verbosity, align 4, !dbg !1358, !tbaa !492
  %cmp50 = icmp sgt i32 %23, 0, !dbg !1358
  br i1 %cmp50, label %if.then52, label %if.end55, !dbg !1358

if.then52:                                        ; preds = %sw.epilog49
  %24 = load %struct._IO_FILE** @stderr, align 8, !dbg !1359, !tbaa !484
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([7 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #10, !dbg !1359
  call fastcc void @pad() #11, !dbg !1361
  %25 = load %struct._IO_FILE** @stderr, align 8, !dbg !1362, !tbaa !484
  %call54 = call i32 @fflush(%struct._IO_FILE* %25) #10, !dbg !1362
  br label %if.end55, !dbg !1363

if.end55:                                         ; preds = %if.then52, %sw.epilog49
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8, !dbg !1364, !tbaa !484
  %26 = bitcast i32* %bzerr.i to i8*, !dbg !1365
  call void @llvm.lifetime.start(i64 4, i8* %26) #7, !dbg !1365
  %27 = bitcast i32* %bzerr_dummy.i to i8*, !dbg !1365
  call void @llvm.lifetime.start(i64 4, i8* %27) #7, !dbg !1365
  %28 = bitcast i32* %nUnused.i to i8*, !dbg !1365
  call void @llvm.lifetime.start(i64 4, i8* %28) #7, !dbg !1365
  %29 = bitcast i8** %unusedTmpV.i to i8*, !dbg !1365
  call void @llvm.lifetime.start(i64 8, i8* %29) #7, !dbg !1365
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %inStr.0}, i64 0, metadata !1367) #7, !dbg !1365
  call void @llvm.dbg.value(metadata !927, i64 0, metadata !1368) #7, !dbg !1369
  call void @llvm.dbg.declare(metadata !{i32* %bzerr.i}, metadata !168) #7, !dbg !1370
  call void @llvm.dbg.declare(metadata !{i32* %bzerr_dummy.i}, metadata !169) #7, !dbg !1370
  %30 = getelementptr inbounds [5000 x i8]* %obuf.i, i64 0, i64 0, !dbg !1371
  call void @llvm.lifetime.start(i64 5000, i8* %30) #7, !dbg !1371
  call void @llvm.dbg.declare(metadata !{[5000 x i8]* %obuf.i}, metadata !174) #7, !dbg !1371
  %31 = getelementptr inbounds [5000 x i8]* %unused.i, i64 0, i64 0, !dbg !1372
  call void @llvm.lifetime.start(i64 5000, i8* %31) #7, !dbg !1372
  call void @llvm.dbg.declare(metadata !{[5000 x i8]* %unused.i}, metadata !179) #7, !dbg !1372
  call void @llvm.dbg.declare(metadata !{i32* %nUnused.i}, metadata !180) #7, !dbg !1373
  call void @llvm.dbg.declare(metadata !{i8** %unusedTmpV.i}, metadata !181) #7, !dbg !1374
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !1375) #7, !dbg !1376
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !180), !dbg !1376
  store i32 0, i32* %nUnused.i, align 4, !dbg !1376, !tbaa !492
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !1377) #7, !dbg !1378
  %call.i = call i32 @ferror(%struct._IO_FILE* %inStr.0) #10, !dbg !1379
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !1379
  br i1 %tobool.i, label %while.body.preheader.i, label %errhandler_io.i, !dbg !1379

while.body.preheader.i:                           ; preds = %if.end55
  %32 = load i32* @verbosity, align 4, !dbg !1380, !tbaa !492
  %33 = load i8* @smallMode, align 1, !dbg !1380, !tbaa !485
  %conv111.i = zext i8 %33 to i32, !dbg !1380
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !1375) #7, !dbg !1380
  %call1112.i = call i8* @BZ2_bzReadOpen(i32* %bzerr.i, %struct._IO_FILE* %inStr.0, i32 %32, i32 %conv111.i, i8* %31, i32 0) #10, !dbg !1380
  %cmp113.i = icmp ne i8* %call1112.i, null, !dbg !1382
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1383) #7, !dbg !1382
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !168), !dbg !1382
  %34 = load i32* %bzerr.i, align 4, !dbg !1382, !tbaa !492
  %cmp3114.i = icmp eq i32 %34, 0, !dbg !1382
  %or.cond115.i = and i1 %cmp113.i, %cmp3114.i, !dbg !1382
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1383) #7, !dbg !1382
  br i1 %or.cond115.i, label %if.end6.i, label %errhandler.i, !dbg !1382

if.end6.i:                                        ; preds = %while.body.preheader.i, %while.body.backedge.i
  %call1117.i = phi i8* [ %call1.i, %while.body.backedge.i ], [ %call1112.i, %while.body.preheader.i ]
  %streamNo.0116.i = phi i32 [ %inc.i, %while.body.backedge.i ], [ 0, %while.body.preheader.i ]
  %inc.i = add nsw i32 %streamNo.0116.i, 1, !dbg !1384
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !1377) #7, !dbg !1384
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1383) #7, !dbg !1385
  br label %while.cond7.i, !dbg !1385

while.cond7.i:                                    ; preds = %while.body10.i, %if.end6.i
  %35 = phi i32 [ %36, %while.body10.i ], [ 0, %if.end6.i ], !dbg !1385
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1383) #7, !dbg !1385
  switch i32 %35, label %errhandler.i [
    i32 0, label %while.body10.i
    i32 4, label %if.end20.i
  ], !dbg !1385

while.body10.i:                                   ; preds = %while.cond7.i
  %call12.i = call i32 @BZ2_bzRead(i32* %bzerr.i, i8* %call1117.i, i8* %30, i32 5000) #10, !dbg !1386
  call void @llvm.dbg.value(metadata !{i32 %call12.i}, i64 0, metadata !1388) #7, !dbg !1386
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1383) #7, !dbg !1389
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !168), !dbg !1389
  %36 = load i32* %bzerr.i, align 4, !dbg !1389, !tbaa !492
  %cmp13.i = icmp eq i32 %36, -5, !dbg !1389
  br i1 %cmp13.i, label %errhandler.i, label %while.cond7.i, !dbg !1389

if.end20.i:                                       ; preds = %while.cond7.i
  call void @BZ2_bzReadGetUnused(i32* %bzerr.i, i8* %call1117.i, i8** %unusedTmpV.i, i32* %nUnused.i) #10, !dbg !1390
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1383) #7, !dbg !1391
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !168), !dbg !1391
  %37 = load i32* %bzerr.i, align 4, !dbg !1391, !tbaa !492
  %cmp21.i = icmp eq i32 %37, 0, !dbg !1391
  br i1 %cmp21.i, label %if.end24.i, label %if.then23.i, !dbg !1391

if.then23.i:                                      ; preds = %if.end20.i
  call fastcc void @panic(i8* getelementptr inbounds ([21 x i8]* @.str48, i64 0, i64 0)) #13, !dbg !1391
  unreachable, !dbg !1391

if.end24.i:                                       ; preds = %if.end20.i
  call void @llvm.dbg.value(metadata !{i8** %unusedTmpV.i}, i64 0, metadata !1392) #7, !dbg !1393
  call void @llvm.dbg.value(metadata !{i8** %unusedTmpV.i}, i64 0, metadata !181), !dbg !1393
  %38 = load i8** %unusedTmpV.i, align 8, !dbg !1393, !tbaa !484
  call void @llvm.dbg.value(metadata !{i8* %38}, i64 0, metadata !1394) #7, !dbg !1393
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !1395) #7, !dbg !1396
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !1375) #7, !dbg !1396
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !180), !dbg !1396
  %39 = load i32* %nUnused.i, align 4, !dbg !1396, !tbaa !492
  %cmp2596.i = icmp sgt i32 %39, 0, !dbg !1396
  br i1 %cmp2596.i, label %for.body.i, label %for.end.i, !dbg !1396

for.body.i:                                       ; preds = %if.end24.i, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %if.end24.i ]
  %arrayidx.i = getelementptr inbounds i8* %38, i64 %indvars.iv.i, !dbg !1396
  %40 = load i8* %arrayidx.i, align 1, !dbg !1396, !tbaa !485
  %arrayidx28.i = getelementptr inbounds [5000 x i8]* %unused.i, i64 0, i64 %indvars.iv.i, !dbg !1396
  store i8 %40, i8* %arrayidx28.i, align 1, !dbg !1396, !tbaa !485
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1396
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !1375) #7, !dbg !1396
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !1396
  %exitcond = icmp eq i32 %lftr.wideiv, %39, !dbg !1396
  br i1 %exitcond, label %for.end.i, label %for.body.i, !dbg !1396

for.end.i:                                        ; preds = %for.body.i, %if.end24.i
  call void @BZ2_bzReadClose(i32* %bzerr.i, i8* %call1117.i) #10, !dbg !1398
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1383) #7, !dbg !1399
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !168), !dbg !1399
  %41 = load i32* %bzerr.i, align 4, !dbg !1399, !tbaa !492
  %cmp30.i = icmp eq i32 %41, 0, !dbg !1399
  br i1 %cmp30.i, label %if.end33.i, label %if.then32.i, !dbg !1399

if.then32.i:                                      ; preds = %for.end.i
  call fastcc void @panic(i8* getelementptr inbounds ([21 x i8]* @.str48, i64 0, i64 0)) #13, !dbg !1399
  unreachable, !dbg !1399

if.end33.i:                                       ; preds = %for.end.i
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !1375) #7, !dbg !1400
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !180), !dbg !1400
  %42 = load i32* %nUnused.i, align 4, !dbg !1400, !tbaa !492
  %cmp34.i = icmp eq i32 %42, 0, !dbg !1400
  br i1 %cmp34.i, label %land.lhs.true.i, label %while.body.backedge.i, !dbg !1400

while.body.backedge.i:                            ; preds = %land.lhs.true.while.body.backedge_crit_edge.i, %if.end33.i
  %43 = phi i32 [ %.pre.i, %land.lhs.true.while.body.backedge_crit_edge.i ], [ %42, %if.end33.i ]
  %44 = load i32* @verbosity, align 4, !dbg !1380, !tbaa !492
  %45 = load i8* @smallMode, align 1, !dbg !1380, !tbaa !485
  %conv.i = zext i8 %45 to i32, !dbg !1380
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !1375) #7, !dbg !1380
  %call1.i = call i8* @BZ2_bzReadOpen(i32* %bzerr.i, %struct._IO_FILE* %inStr.0, i32 %44, i32 %conv.i, i8* %31, i32 %43) #10, !dbg !1380
  %cmp.i = icmp ne i8* %call1.i, null, !dbg !1382
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1383) #7, !dbg !1382
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !168), !dbg !1382
  %46 = load i32* %bzerr.i, align 4, !dbg !1382, !tbaa !492
  %cmp3.i = icmp eq i32 %46, 0, !dbg !1382
  %or.cond.i = and i1 %cmp.i, %cmp3.i, !dbg !1382
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1383) #7, !dbg !1382
  br i1 %or.cond.i, label %if.end6.i, label %errhandler.i, !dbg !1382

land.lhs.true.i:                                  ; preds = %if.end33.i
  %call36.i = call fastcc zeroext i8 @myfeof(%struct._IO_FILE* %inStr.0) #10, !dbg !1400
  %tobool38.i = icmp eq i8 %call36.i, 0, !dbg !1400
  br i1 %tobool38.i, label %land.lhs.true.while.body.backedge_crit_edge.i, label %while.end41.i, !dbg !1400

land.lhs.true.while.body.backedge_crit_edge.i:    ; preds = %land.lhs.true.i
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !1375) #7, !dbg !1380
  call void @llvm.dbg.value(metadata !{i32* %nUnused.i}, i64 0, metadata !180), !dbg !1380
  %.pre.i = load i32* %nUnused.i, align 4, !dbg !1380, !tbaa !492
  br label %while.body.backedge.i, !dbg !1400

while.end41.i:                                    ; preds = %land.lhs.true.i
  %call42.i = call i32 @ferror(%struct._IO_FILE* %inStr.0) #10, !dbg !1401
  %tobool43.i = icmp eq i32 %call42.i, 0, !dbg !1401
  br i1 %tobool43.i, label %if.end45.i, label %errhandler_io.i, !dbg !1401

if.end45.i:                                       ; preds = %while.end41.i
  %call46.i = call i32 @fclose(%struct._IO_FILE* %inStr.0) #10, !dbg !1402
  call void @llvm.dbg.value(metadata !{i32 %call46.i}, i64 0, metadata !1403) #7, !dbg !1402
  %cmp47.i = icmp eq i32 %call46.i, -1, !dbg !1404
  br i1 %cmp47.i, label %errhandler_io.i, label %if.end50.i, !dbg !1404

if.end50.i:                                       ; preds = %if.end45.i
  %47 = load i32* @verbosity, align 4, !dbg !1405, !tbaa !492
  %cmp51.i = icmp sgt i32 %47, 1, !dbg !1405
  br i1 %cmp51.i, label %if.then53.i, label %testStream.exit, !dbg !1405

if.then53.i:                                      ; preds = %if.end50.i
  %48 = load %struct._IO_FILE** @stderr, align 8, !dbg !1405, !tbaa !484
  %49 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str49, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %48) #7, !dbg !1405
  br label %testStream.exit, !dbg !1405

errhandler.i:                                     ; preds = %while.body.backedge.i, %while.body10.i, %while.cond7.i, %while.body.preheader.i
  %call1107.i = phi i8* [ %call1112.i, %while.body.preheader.i ], [ %call1117.i, %while.cond7.i ], [ %call1117.i, %while.body10.i ], [ %call1.i, %while.body.backedge.i ]
  %streamNo.1.i = phi i32 [ 0, %while.body.preheader.i ], [ %inc.i, %while.cond7.i ], [ %inc.i, %while.body10.i ], [ %inc.i, %while.body.backedge.i ]
  call void @BZ2_bzReadClose(i32* %bzerr_dummy.i, i8* %call1107.i) #10, !dbg !1406
  %50 = load i32* @verbosity, align 4, !dbg !1407, !tbaa !492
  %cmp56.i = icmp eq i32 %50, 0, !dbg !1407
  br i1 %cmp56.i, label %if.then58.i, label %if.end60.i, !dbg !1407

if.then58.i:                                      ; preds = %errhandler.i
  %51 = load %struct._IO_FILE** @stderr, align 8, !dbg !1408, !tbaa !484
  %52 = load i8** @progName, align 8, !dbg !1408, !tbaa !484
  %call59.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([9 x i8]* @.str50, i64 0, i64 0), i8* %52, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #10, !dbg !1408
  br label %if.end60.i, !dbg !1408

if.end60.i:                                       ; preds = %if.then58.i, %errhandler.i
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !1383) #7, !dbg !1409
  call void @llvm.dbg.value(metadata !{i32* %bzerr.i}, i64 0, metadata !168), !dbg !1409
  %53 = load i32* %bzerr.i, align 4, !dbg !1409, !tbaa !492
  switch i32 %53, label %sw.default.i [
    i32 -9, label %sw.bb.i
    i32 -6, label %errhandler_io.i
    i32 -4, label %sw.bb62.i
    i32 -3, label %sw.bb64.i
    i32 -7, label %sw.bb65.i
    i32 -5, label %sw.bb67.i
  ], !dbg !1409

sw.bb.i:                                          ; preds = %if.end60.i
  call fastcc void @configError() #13, !dbg !1410
  unreachable, !dbg !1410

errhandler_io.i:                                  ; preds = %if.end60.i, %if.end45.i, %while.end41.i, %if.end55
  call fastcc void @ioError() #13, !dbg !1412
  unreachable, !dbg !1412

sw.bb62.i:                                        ; preds = %if.end60.i
  %54 = load %struct._IO_FILE** @stderr, align 8, !dbg !1413, !tbaa !484
  %55 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str51, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %54) #7, !dbg !1413
  br label %testStream.exit, !dbg !1414

sw.bb64.i:                                        ; preds = %if.end60.i
  call fastcc void @outOfMemory() #13, !dbg !1415
  unreachable, !dbg !1415

sw.bb65.i:                                        ; preds = %if.end60.i
  %56 = load %struct._IO_FILE** @stderr, align 8, !dbg !1416, !tbaa !484
  %57 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str52, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %56) #7, !dbg !1416
  br label %testStream.exit, !dbg !1417

sw.bb67.i:                                        ; preds = %if.end60.i
  %58 = load %struct._IO_FILE** @stdin, align 8, !dbg !1418, !tbaa !484
  %cmp68.i = icmp eq %struct._IO_FILE* %58, %inStr.0, !dbg !1418
  br i1 %cmp68.i, label %if.end72.i, label %if.then70.i, !dbg !1418

if.then70.i:                                      ; preds = %sw.bb67.i
  %call71.i = call i32 @fclose(%struct._IO_FILE* %inStr.0) #10, !dbg !1418
  br label %if.end72.i, !dbg !1418

if.end72.i:                                       ; preds = %if.then70.i, %sw.bb67.i
  %cmp73.i = icmp eq i32 %streamNo.1.i, 1, !dbg !1419
  br i1 %cmp73.i, label %if.then75.i, label %if.else.i, !dbg !1419

if.then75.i:                                      ; preds = %if.end72.i
  %59 = load %struct._IO_FILE** @stderr, align 8, !dbg !1420, !tbaa !484
  %60 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str53, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %59) #7, !dbg !1420
  br label %testStream.exit, !dbg !1422

if.else.i:                                        ; preds = %if.end72.i
  %61 = load i8* @noisy, align 1, !dbg !1423, !tbaa !485
  %tobool77.i = icmp eq i8 %61, 0, !dbg !1423
  br i1 %tobool77.i, label %testStream.exit, label %if.then78.i, !dbg !1423

if.then78.i:                                      ; preds = %if.else.i
  %62 = load %struct._IO_FILE** @stderr, align 8, !dbg !1425, !tbaa !484
  %63 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str54, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %62) #7, !dbg !1425
  br label %testStream.exit, !dbg !1425

sw.default.i:                                     ; preds = %if.end60.i
  call fastcc void @panic(i8* getelementptr inbounds ([22 x i8]* @.str55, i64 0, i64 0)) #13, !dbg !1426
  unreachable, !dbg !1426

testStream.exit:                                  ; preds = %if.else.i, %if.end50.i, %if.then53.i, %sw.bb62.i, %sw.bb65.i, %if.then75.i, %if.then78.i
  %retval.0.i = phi i8 [ 0, %if.then75.i ], [ 0, %sw.bb65.i ], [ 0, %sw.bb62.i ], [ 1, %if.then53.i ], [ 1, %if.end50.i ], [ 1, %if.then78.i ], [ 1, %if.else.i ]
  call void @llvm.lifetime.end(i64 5000, i8* %31) #7, !dbg !1427
  call void @llvm.lifetime.end(i64 5000, i8* %30) #7, !dbg !1427
  call void @llvm.lifetime.end(i64 4, i8* %26) #7, !dbg !1428
  call void @llvm.lifetime.end(i64 4, i8* %27) #7, !dbg !1428
  call void @llvm.lifetime.end(i64 4, i8* %28) #7, !dbg !1428
  call void @llvm.lifetime.end(i64 8, i8* %29) #7, !dbg !1428
  call void @llvm.dbg.value(metadata !{i8 %retval.0.i}, i64 0, metadata !123), !dbg !1366
  %tobool58 = icmp ne i8 %retval.0.i, 0, !dbg !1429
  %64 = load i32* @verbosity, align 4, !dbg !1429, !tbaa !492
  %cmp60 = icmp sgt i32 %64, 0, !dbg !1429
  %or.cond68 = and i1 %tobool58, %cmp60, !dbg !1429
  br i1 %or.cond68, label %if.then62, label %if.end64, !dbg !1429

if.then62:                                        ; preds = %testStream.exit
  %65 = load %struct._IO_FILE** @stderr, align 8, !dbg !1429, !tbaa !484
  %66 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %65) #7, !dbg !1429
  br label %if.end64, !dbg !1429

if.end64:                                         ; preds = %if.then62, %testStream.exit
  %tobool65 = icmp eq i8 %retval.0.i, 0, !dbg !1430
  br i1 %tobool65, label %if.then66, label %cleanup, !dbg !1430

if.then66:                                        ; preds = %if.end64
  store i8 1, i8* @testFailsExist, align 1, !dbg !1430, !tbaa !485
  br label %cleanup, !dbg !1430

cleanup:                                          ; preds = %if.then.i81, %if.then44, %if.then.i78, %if.then36, %if.then.i75, %if.then28, %if.then.i, %if.then17, %if.then66, %if.end64
  call void @llvm.lifetime.end(i64 144, i8* %0) #7, !dbg !1430
  ret void, !dbg !1431
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @panic(i8* %s) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !217), !dbg !1432
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1433, !tbaa !484
  %1 = load i8** @progName, align 8, !dbg !1433, !tbaa !484
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([109 x i8]* @.str68, i64 0, i64 0), i8* %1, i8* %s) #10, !dbg !1433
  tail call fastcc void @showFileNames() #11, !dbg !1434
  tail call fastcc void @cleanUpAndFail(i32 3) #14, !dbg !1435
  unreachable, !dbg !1435
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc zeroext i8 @fileExists(i8* nocapture %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !209), !dbg !1436
  %call = tail call %struct._IO_FILE* @fopen(i8* %name, i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0)) #10, !dbg !1437
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !210), !dbg !1437
  %cmp = icmp ne %struct._IO_FILE* %call, null, !dbg !1438
  %conv2 = zext i1 %cmp to i8, !dbg !1438
  tail call void @llvm.dbg.value(metadata !{i8 %conv2}, i64 0, metadata !211), !dbg !1438
  br i1 %cmp, label %if.then, label %if.end, !dbg !1439

if.then:                                          ; preds = %entry
  %call5 = tail call i32 @fclose(%struct._IO_FILE* %call) #10, !dbg !1439
  br label %if.end, !dbg !1439

if.end:                                           ; preds = %if.then, %entry
  ret i8 %conv2, !dbg !1440
}

; Function Attrs: nounwind optsize
declare i8* @strerror(i32) #3

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #8

; Function Attrs: nounwind optsize
declare i32 @stat(i8* nocapture, %struct.stat* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @isatty(i32) #3

; Function Attrs: nounwind optsize
declare i32 @fileno(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pad() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !842, i64 0, metadata !203), !dbg !1441
  %call = tail call i64 @strlen(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #12, !dbg !1442
  %conv = trunc i64 %call to i32, !dbg !1442
  %0 = load i32* @longestFileName, align 4, !dbg !1442, !tbaa !492
  %cmp = icmp slt i32 %conv, %0, !dbg !1442
  br i1 %cmp, label %for.cond.preheader, label %for.end, !dbg !1442

for.cond.preheader:                               ; preds = %entry
  %call21 = tail call i64 @strlen(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #12, !dbg !1443
  %conv32 = trunc i64 %call21 to i32, !dbg !1443
  %sub3 = sub nsw i32 %0, %conv32, !dbg !1443
  %cmp44 = icmp slt i32 %sub3, 1, !dbg !1443
  br i1 %cmp44, label %for.end, label %for.body, !dbg !1443

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.05 = phi i32 [ %inc, %for.body ], [ 1, %for.cond.preheader ]
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !1445, !tbaa !484
  %fputc = tail call i32 @fputc(i32 32, %struct._IO_FILE* %1), !dbg !1445
  %inc = add nsw i32 %i.05, 1, !dbg !1443
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !204), !dbg !1443
  %2 = load i32* @longestFileName, align 4, !dbg !1443, !tbaa !492
  %call2 = tail call i64 @strlen(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #12, !dbg !1443
  %conv3 = trunc i64 %call2 to i32, !dbg !1443
  %sub = sub nsw i32 %2, %conv3, !dbg !1443
  %cmp4 = icmp slt i32 %i.05, %sub, !dbg !1443
  br i1 %cmp4, label %for.body, label %for.end, !dbg !1443

for.end:                                          ; preds = %for.cond.preheader, %for.body, %entry
  ret void, !dbg !1446
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) #5

; Function Attrs: optsize
declare i8* @BZ2_bzReadOpen(i32*, %struct._IO_FILE*, i32, i32, i8*, i32) #2

; Function Attrs: optsize
declare i32 @BZ2_bzRead(i32*, i8*, i8*, i32) #2

; Function Attrs: optsize
declare void @BZ2_bzReadGetUnused(i32*, i8*, i8**, i32*) #2

; Function Attrs: optsize
declare void @BZ2_bzReadClose(i32*, i8*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc zeroext i8 @myfeof(%struct._IO_FILE* nocapture %f) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %f}, i64 0, metadata !199), !dbg !1447
  %call = tail call i32 @fgetc(%struct._IO_FILE* %f) #10, !dbg !1448
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !200), !dbg !1448
  %cmp = icmp eq i32 %call, -1, !dbg !1449
  br i1 %cmp, label %return, label %if.end, !dbg !1449

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ungetc(i32 %call, %struct._IO_FILE* %f) #10, !dbg !1450
  br label %return, !dbg !1451

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ 0, %if.end ], [ 1, %entry ]
  ret i8 %retval.0, !dbg !1451
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @configError() #4 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1452, !tbaa !484
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([236 x i8]* @.str66, i64 0, i64 0), i64 235, i64 1, %struct._IO_FILE* %0) #7, !dbg !1452
  tail call void @llvm.dbg.value(metadata !1453, i64 0, metadata !1454), !dbg !1456
  %2 = load i32* @exitValue, align 4, !dbg !1457, !tbaa !492
  %cmp.i = icmp slt i32 %2, 3, !dbg !1457
  br i1 %cmp.i, label %if.then.i, label %setExit.exit, !dbg !1457

if.then.i:                                        ; preds = %entry
  store i32 3, i32* @exitValue, align 4, !dbg !1457, !tbaa !492
  br label %setExit.exit, !dbg !1457

setExit.exit:                                     ; preds = %entry, %if.then.i
  %3 = phi i32 [ %2, %entry ], [ 3, %if.then.i ]
  tail call void @exit(i32 %3) #13, !dbg !1458
  unreachable, !dbg !1458
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @ioError() #4 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1459, !tbaa !484
  %1 = load i8** @progName, align 8, !dbg !1459, !tbaa !484
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str65, i64 0, i64 0), i8* %1) #10, !dbg !1459
  %2 = load i8** @progName, align 8, !dbg !1460, !tbaa !484
  tail call void @perror(i8* %2) #10, !dbg !1460
  tail call fastcc void @showFileNames() #11, !dbg !1461
  tail call fastcc void @cleanUpAndFail(i32 1) #14, !dbg !1462
  unreachable, !dbg !1462
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @outOfMemory() #4 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1463, !tbaa !484
  %1 = load i8** @progName, align 8, !dbg !1463, !tbaa !484
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([38 x i8]* @.str56, i64 0, i64 0), i8* %1) #10, !dbg !1463
  tail call fastcc void @showFileNames() #11, !dbg !1464
  tail call fastcc void @cleanUpAndFail(i32 1) #14, !dbg !1465
  unreachable, !dbg !1465
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @showFileNames() #0 {
entry:
  %0 = load i8* @noisy, align 1, !dbg !1466, !tbaa !485
  %tobool = icmp eq i8 %0, 0, !dbg !1466
  br i1 %tobool, label %if.end, label %if.then, !dbg !1466

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !1467, !tbaa !484
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([36 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #10, !dbg !1467
  br label %if.end, !dbg !1467

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !1468
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @cleanUpAndFail(i32 %ec) #4 {
entry:
  %statBuf = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{i32 %ec}, i64 0, metadata !191), !dbg !1469
  %0 = bitcast %struct.stat* %statBuf to i8*, !dbg !1470
  call void @llvm.lifetime.start(i64 144, i8* %0) #7, !dbg !1470
  call void @llvm.dbg.declare(metadata !{%struct.stat* %statBuf}, metadata !193), !dbg !1470
  %1 = load i32* @srcMode, align 4, !dbg !1471, !tbaa !492
  %2 = load i32* @opMode, align 4, !dbg !1471, !tbaa !492
  %notlhs = icmp ne i32 %1, 3, !dbg !1471
  %notrhs = icmp eq i32 %2, 3, !dbg !1471
  %or.cond.not = or i1 %notrhs, %notlhs, !dbg !1471
  %3 = load i8* @deleteOutputOnInterrupt, align 1, !dbg !1471, !tbaa !485
  %tobool = icmp eq i8 %3, 0, !dbg !1471
  %or.cond39 = or i1 %or.cond.not, %tobool, !dbg !1471
  br i1 %or.cond39, label %if.end25, label %if.then, !dbg !1471

if.then:                                          ; preds = %entry
  %call = call i32 @stat(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf) #10, !dbg !1472
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !192), !dbg !1472
  %cmp3 = icmp eq i32 %call, 0, !dbg !1474
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !1474

if.then5:                                         ; preds = %if.then
  %4 = load i8* @noisy, align 1, !dbg !1475, !tbaa !485
  %tobool6 = icmp eq i8 %4, 0, !dbg !1475
  br i1 %tobool6, label %if.end, label %if.then7, !dbg !1475

if.then7:                                         ; preds = %if.then5
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !1477, !tbaa !484
  %6 = load i8** @progName, align 8, !dbg !1477, !tbaa !484
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([44 x i8]* @.str57, i64 0, i64 0), i8* %6, i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #10, !dbg !1477
  br label %if.end, !dbg !1477

if.end:                                           ; preds = %if.then5, %if.then7
  %7 = load %struct._IO_FILE** @outputHandleJustInCase, align 8, !dbg !1478, !tbaa !484
  %cmp9 = icmp eq %struct._IO_FILE* %7, null, !dbg !1478
  br i1 %cmp9, label %if.end13, label %if.then11, !dbg !1478

if.then11:                                        ; preds = %if.end
  %call12 = call i32 @fclose(%struct._IO_FILE* %7) #10, !dbg !1479
  br label %if.end13, !dbg !1479

if.end13:                                         ; preds = %if.end, %if.then11
  %call14 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #10, !dbg !1480
  call void @llvm.dbg.value(metadata !{i32 %call14}, i64 0, metadata !192), !dbg !1480
  %cmp15 = icmp eq i32 %call14, 0, !dbg !1481
  br i1 %cmp15, label %if.end25, label %if.then17, !dbg !1481

if.then17:                                        ; preds = %if.end13
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !1482, !tbaa !484
  %9 = load i8** @progName, align 8, !dbg !1482, !tbaa !484
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([59 x i8]* @.str58, i64 0, i64 0), i8* %9) #10, !dbg !1482
  br label %if.end25, !dbg !1482

if.else:                                          ; preds = %if.then
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !1483, !tbaa !484
  %11 = load i8** @progName, align 8, !dbg !1483, !tbaa !484
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([49 x i8]* @.str59, i64 0, i64 0), i8* %11) #10, !dbg !1483
  %12 = load %struct._IO_FILE** @stderr, align 8, !dbg !1485, !tbaa !484
  %13 = load i8** @progName, align 8, !dbg !1485, !tbaa !484
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([56 x i8]* @.str60, i64 0, i64 0), i8* %13) #10, !dbg !1485
  %14 = load %struct._IO_FILE** @stderr, align 8, !dbg !1486, !tbaa !484
  %15 = load i8** @progName, align 8, !dbg !1486, !tbaa !484
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([32 x i8]* @.str61, i64 0, i64 0), i8* %15, i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #10, !dbg !1486
  %16 = load %struct._IO_FILE** @stderr, align 8, !dbg !1487, !tbaa !484
  %17 = load i8** @progName, align 8, !dbg !1487, !tbaa !484
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([61 x i8]* @.str62, i64 0, i64 0), i8* %17) #10, !dbg !1487
  br label %if.end25

if.end25:                                         ; preds = %entry, %if.end13, %if.else, %if.then17
  %18 = load i8* @noisy, align 1, !dbg !1488, !tbaa !485
  %tobool27 = icmp ne i8 %18, 0, !dbg !1488
  %19 = load i32* @numFileNames, align 4, !dbg !1488, !tbaa !492
  %cmp29 = icmp sgt i32 %19, 0, !dbg !1488
  %or.cond37 = and i1 %tobool27, %cmp29, !dbg !1488
  br i1 %or.cond37, label %land.lhs.true31, label %if.end36, !dbg !1488

land.lhs.true31:                                  ; preds = %if.end25
  %20 = load i32* @numFilesProcessed, align 4, !dbg !1488, !tbaa !492
  %cmp32 = icmp slt i32 %20, %19, !dbg !1488
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !1488

if.then34:                                        ; preds = %land.lhs.true31
  %21 = load %struct._IO_FILE** @stderr, align 8, !dbg !1489, !tbaa !484
  %22 = load i8** @progName, align 8, !dbg !1489, !tbaa !484
  %sub = sub nsw i32 %19, %20, !dbg !1489
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([110 x i8]* @.str63, i64 0, i64 0), i8* %22, i8* %22, i32 %19, i32 %sub) #10, !dbg !1489
  br label %if.end36, !dbg !1491

if.end36:                                         ; preds = %if.then34, %land.lhs.true31, %if.end25
  tail call void @llvm.dbg.value(metadata !{i32 %ec}, i64 0, metadata !1492), !dbg !1494
  %23 = load i32* @exitValue, align 4, !dbg !1495, !tbaa !492
  %cmp.i = icmp slt i32 %23, %ec, !dbg !1495
  br i1 %cmp.i, label %if.then.i, label %setExit.exit, !dbg !1495

if.then.i:                                        ; preds = %if.end36
  store i32 %ec, i32* @exitValue, align 4, !dbg !1495, !tbaa !492
  br label %setExit.exit, !dbg !1495

setExit.exit:                                     ; preds = %if.end36, %if.then.i
  %24 = phi i32 [ %23, %if.end36 ], [ %ec, %if.then.i ]
  call void @exit(i32 %24) #13, !dbg !1496
  unreachable, !dbg !1496
}

; Function Attrs: nounwind optsize
declare i32 @remove(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare void @perror(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc zeroext i8 @notAStandardFile() #0 {
entry:
  %statBuf = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !842, i64 0, metadata !282), !dbg !1497
  %0 = bitcast %struct.stat* %statBuf to i8*, !dbg !1498
  call void @llvm.lifetime.start(i64 144, i8* %0) #7, !dbg !1498
  call void @llvm.dbg.declare(metadata !{%struct.stat* %statBuf}, metadata !284), !dbg !1498
  %call = call i32 @lstat(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf) #10, !dbg !1499
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !283), !dbg !1499
  %cmp = icmp eq i32 %call, 0, !dbg !1500
  br i1 %cmp, label %if.end, label %cleanup, !dbg !1500

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat* %statBuf, i64 0, i32 3, !dbg !1501
  %1 = load i32* %st_mode, align 8, !dbg !1501, !tbaa !492
  %and = and i32 %1, 61440, !dbg !1501
  %not.cmp1 = icmp ne i32 %and, 32768, !dbg !1501
  %. = zext i1 %not.cmp1 to i8, !dbg !1501
  br label %cleanup, !dbg !1501

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i8 [ 1, %entry ], [ %., %if.end ]
  call void @llvm.lifetime.end(i64 144, i8* %0) #7, !dbg !1502
  ret i8 %retval.0, !dbg !1503
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @saveInputFileMetaInfo() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !842, i64 0, metadata !271), !dbg !1504
  %call = tail call i32 @stat(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* @fileMetaInfo) #10, !dbg !1505
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !272), !dbg !1505
  %cmp = icmp eq i32 %call, 0, !dbg !1506
  br i1 %cmp, label %if.end, label %if.then, !dbg !1506

if.then:                                          ; preds = %entry
  tail call fastcc void @ioError() #14, !dbg !1506
  unreachable, !dbg !1506

if.end:                                           ; preds = %entry
  ret void, !dbg !1508
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @applySavedMetaInfoToOutputFile() #0 {
entry:
  %uTimBuf = alloca %struct.utimbuf, align 8
  call void @llvm.dbg.value(metadata !1057, i64 0, metadata !240), !dbg !1509
  call void @llvm.dbg.declare(metadata !{%struct.utimbuf* %uTimBuf}, metadata !242), !dbg !1510
  %0 = load i64* getelementptr inbounds (%struct.stat* @fileMetaInfo, i64 0, i32 11, i32 0), align 8, !dbg !1511, !tbaa !851
  %actime = getelementptr inbounds %struct.utimbuf* %uTimBuf, i64 0, i32 0, !dbg !1511
  store i64 %0, i64* %actime, align 8, !dbg !1511, !tbaa !851
  %1 = load i64* getelementptr inbounds (%struct.stat* @fileMetaInfo, i64 0, i32 12, i32 0), align 8, !dbg !1512, !tbaa !851
  %modtime = getelementptr inbounds %struct.utimbuf* %uTimBuf, i64 0, i32 1, !dbg !1512
  store i64 %1, i64* %modtime, align 8, !dbg !1512, !tbaa !851
  %2 = load i32* getelementptr inbounds (%struct.stat* @fileMetaInfo, i64 0, i32 3), align 8, !dbg !1513, !tbaa !492
  %call = call i32 @chmod(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i32 %2) #10, !dbg !1513
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !241), !dbg !1513
  %cmp = icmp eq i32 %call, 0, !dbg !1514
  br i1 %cmp, label %if.end, label %if.then, !dbg !1514

if.then:                                          ; preds = %entry
  call fastcc void @ioError() #14, !dbg !1514
  unreachable, !dbg !1514

if.end:                                           ; preds = %entry
  %call1 = call i32 @utime(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), %struct.utimbuf* %uTimBuf) #10, !dbg !1516
  call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !241), !dbg !1516
  %cmp2 = icmp eq i32 %call1, 0, !dbg !1517
  br i1 %cmp2, label %if.end4, label %if.then3, !dbg !1517

if.then3:                                         ; preds = %if.end
  call fastcc void @ioError() #14, !dbg !1517
  unreachable, !dbg !1517

if.end4:                                          ; preds = %if.end
  %3 = load i32* getelementptr inbounds (%struct.stat* @fileMetaInfo, i64 0, i32 4), align 4, !dbg !1519, !tbaa !492
  %4 = load i32* getelementptr inbounds (%struct.stat* @fileMetaInfo, i64 0, i32 5), align 8, !dbg !1519, !tbaa !492
  %call5 = call i32 @chown(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i32 %3, i32 %4) #10, !dbg !1519
  call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !241), !dbg !1519
  ret void, !dbg !1520
}

; Function Attrs: nounwind optsize
declare i32 @chmod(i8* nocapture, i32) #3

; Function Attrs: nounwind optsize
declare i32 @utime(i8* nocapture, %struct.utimbuf* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @chown(i8* nocapture, i32, i32) #3

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare void @rewind(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @cadvise() #0 {
entry:
  %0 = load i8* @noisy, align 1, !dbg !1521, !tbaa !485
  %tobool = icmp eq i8 %0, 0, !dbg !1521
  br i1 %tobool, label %if.end, label %if.then, !dbg !1521

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !1522, !tbaa !484
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([241 x i8]* @.str88, i64 0, i64 0), i64 240, i64 1, %struct._IO_FILE* %1) #7, !dbg !1522
  br label %if.end, !dbg !1522

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !1523
}

; Function Attrs: nounwind optsize
declare i32 @lstat(i8* nocapture, %struct.stat* nocapture) #3

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc zeroext i8 @hasSuffix(i8* nocapture %s, i8* nocapture %suffix) #9 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !296), !dbg !1524
  tail call void @llvm.dbg.value(metadata !{i8* %suffix}, i64 0, metadata !297), !dbg !1524
  %call = tail call i64 @strlen(i8* %s) #12, !dbg !1525
  %conv = trunc i64 %call to i32, !dbg !1525
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !298), !dbg !1525
  %call1 = tail call i64 @strlen(i8* %suffix) #12, !dbg !1526
  %conv2 = trunc i64 %call1 to i32, !dbg !1526
  tail call void @llvm.dbg.value(metadata !{i32 %conv2}, i64 0, metadata !299), !dbg !1526
  %cmp = icmp slt i32 %conv, %conv2, !dbg !1527
  br i1 %cmp, label %return, label %if.end, !dbg !1527

if.end:                                           ; preds = %entry
  %sext = shl i64 %call, 32, !dbg !1528
  %idx.ext = ashr exact i64 %sext, 32, !dbg !1528
  %sext15 = shl i64 %call1, 32, !dbg !1528
  %idx.ext4 = ashr exact i64 %sext15, 32, !dbg !1528
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext4, !dbg !1528
  %add.ptr5 = getelementptr inbounds i8* %s, i64 %add.ptr.sum, !dbg !1528
  %call6 = tail call i32 @strcmp(i8* %add.ptr5, i8* %suffix) #12, !dbg !1528
  %cmp7 = icmp eq i32 %call6, 0, !dbg !1528
  %. = zext i1 %cmp7 to i8, !dbg !1528
  br label %return, !dbg !1528

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ %., %if.end ]
  ret i8 %retval.0, !dbg !1529
}

; Function Attrs: optsize
declare i8* @BZ2_bzWriteOpen(i32*, %struct._IO_FILE*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @BZ2_bzWrite(i32*, i8*, i8*, i32) #2

; Function Attrs: optsize
declare void @BZ2_bzWriteClose64(i32*, i8*, i32, i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @uInt64_toAscii(i8* nocapture %outbuf, %struct.UInt64* nocapture %n) #0 {
entry:
  %buf = alloca [32 x i8], align 16
  %n_copy = alloca i64, align 8, !dbg !1530
  %tmpcast = bitcast i64* %n_copy to %struct.UInt64*, !dbg !1530
  call void @llvm.dbg.value(metadata !{i8* %outbuf}, i64 0, metadata !352), !dbg !1531
  call void @llvm.dbg.value(metadata !{%struct.UInt64* %n}, i64 0, metadata !353), !dbg !1531
  call void @llvm.dbg.declare(metadata !{[32 x i8]* %buf}, metadata !356), !dbg !1532
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !358), !dbg !1533
  call void @llvm.dbg.declare(metadata !{%struct.UInt64* %tmpcast}, metadata !359), !dbg !1530
  %0 = bitcast %struct.UInt64* %n to i64*, !dbg !1530
  %1 = load i64* %0, align 1, !dbg !1530
  store i64 %1, i64* %n_copy, align 8, !dbg !1530
  br label %do.body, !dbg !1534

do.body:                                          ; preds = %for.body.i23, %entry
  %indvars.iv30 = phi i64 [ 0, %entry ], [ %indvars.iv.next31, %for.body.i23 ]
  %nBuf.0 = phi i32 [ 0, %entry ], [ %inc, %for.body.i23 ]
  tail call void @llvm.dbg.value(metadata !{%struct.UInt64* %tmpcast}, i64 0, metadata !1535), !dbg !1538
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1539), !dbg !1540
  tail call void @llvm.dbg.value(metadata !1541, i64 0, metadata !1542), !dbg !1543
  br label %for.body.i, !dbg !1543

for.body.i:                                       ; preds = %for.body.i, %do.body
  %indvars.iv.i = phi i64 [ 7, %do.body ], [ %indvars.iv.next.i, %for.body.i ]
  %rem.012.i = phi i32 [ 0, %do.body ], [ %rem6.i, %for.body.i ]
  %mul.i = shl nuw nsw i32 %rem.012.i, 8, !dbg !1545
  %arrayidx.i = getelementptr inbounds %struct.UInt64* %tmpcast, i64 0, i32 0, i64 %indvars.iv.i, !dbg !1545
  %2 = load i8* %arrayidx.i, align 1, !dbg !1545, !tbaa !485
  %conv.i = zext i8 %2 to i32, !dbg !1545
  %add.i = or i32 %conv.i, %mul.i, !dbg !1545
  tail call void @llvm.dbg.value(metadata !{i32 %add.i}, i64 0, metadata !1547), !dbg !1545
  %div.i = udiv i32 %add.i, 10, !dbg !1548
  %conv2.i = trunc i32 %div.i to i8, !dbg !1548
  store i8 %conv2.i, i8* %arrayidx.i, align 1, !dbg !1548, !tbaa !485
  %rem6.i = urem i32 %add.i, 10, !dbg !1549
  tail call void @llvm.dbg.value(metadata !{i32 %rem6.i}, i64 0, metadata !1539), !dbg !1549
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1, !dbg !1543
  %3 = trunc i64 %indvars.iv.i to i32, !dbg !1543
  %cmp.i = icmp sgt i32 %3, 0, !dbg !1543
  br i1 %cmp.i, label %for.body.i, label %uInt64_qrm10.exit, !dbg !1543

uInt64_qrm10.exit:                                ; preds = %for.body.i
  call void @llvm.dbg.value(metadata !{i32 %rem6.i}, i64 0, metadata !355), !dbg !1536
  %add27 = or i32 %rem6.i, 48, !dbg !1550
  %conv = trunc i32 %add27 to i8, !dbg !1550
  %arrayidx = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 %indvars.iv30, !dbg !1550
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1550, !tbaa !485
  %indvars.iv.next31 = add i64 %indvars.iv30, 1
  %inc = add nsw i32 %nBuf.0, 1, !dbg !1551
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !358), !dbg !1551
  tail call void @llvm.dbg.value(metadata !{%struct.UInt64* %tmpcast}, i64 0, metadata !1552), !dbg !1554
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1555), !dbg !1556
  br label %for.body.i23, !dbg !1556

for.cond.i:                                       ; preds = %for.body.i23
  %4 = trunc i64 %indvars.iv.next.i22 to i32, !dbg !1556
  %cmp.i19 = icmp slt i32 %4, 8, !dbg !1556
  br i1 %cmp.i19, label %for.body.i23, label %do.end, !dbg !1556

for.body.i23:                                     ; preds = %for.cond.i, %uInt64_qrm10.exit
  %indvars.iv.i20 = phi i64 [ 0, %uInt64_qrm10.exit ], [ %indvars.iv.next.i22, %for.cond.i ]
  %arrayidx.i21 = getelementptr inbounds %struct.UInt64* %tmpcast, i64 0, i32 0, i64 %indvars.iv.i20, !dbg !1558
  %5 = load i8* %arrayidx.i21, align 1, !dbg !1558, !tbaa !485
  %cmp1.i = icmp eq i8 %5, 0, !dbg !1558
  %indvars.iv.next.i22 = add i64 %indvars.iv.i20, 1, !dbg !1556
  br i1 %cmp1.i, label %for.cond.i, label %do.body, !dbg !1558

do.end:                                           ; preds = %for.cond.i
  %idxprom2 = sext i32 %inc to i64, !dbg !1559
  %arrayidx3 = getelementptr inbounds i8* %outbuf, i64 %idxprom2, !dbg !1559
  store i8 0, i8* %arrayidx3, align 1, !dbg !1559, !tbaa !485
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !354), !dbg !1560
  %cmp28 = icmp sgt i32 %nBuf.0, -1, !dbg !1560
  br i1 %cmp28, label %for.body, label %for.end, !dbg !1560

for.body:                                         ; preds = %do.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %do.end ]
  %6 = trunc i64 %indvars.iv to i32, !dbg !1562
  %sub5 = sub i32 %nBuf.0, %6, !dbg !1562
  %idxprom6 = sext i32 %sub5 to i64, !dbg !1562
  %arrayidx7 = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 %idxprom6, !dbg !1562
  %7 = load i8* %arrayidx7, align 1, !dbg !1562, !tbaa !485
  %arrayidx9 = getelementptr inbounds i8* %outbuf, i64 %indvars.iv, !dbg !1562
  store i8 %7, i8* %arrayidx9, align 1, !dbg !1562, !tbaa !485
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1560
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !1560
  %cmp = icmp slt i32 %8, %inc, !dbg !1560
  br i1 %cmp, label %for.body, label %for.end, !dbg !1560

for.end:                                          ; preds = %for.body, %do.end
  ret void, !dbg !1563
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #7

; Function Attrs: optsize
declare i8* @BZ2_bzlibVersion() #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc noalias i8* @myMalloc(i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !415), !dbg !1564
  %conv = sext i32 %n to i64, !dbg !1565
  %call = tail call noalias i8* @malloc(i64 %conv) #10, !dbg !1565
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !416), !dbg !1565
  %cmp = icmp eq i8* %call, null, !dbg !1566
  br i1 %cmp, label %if.then, label %if.end, !dbg !1566

if.then:                                          ; preds = %entry
  tail call fastcc void @outOfMemory() #14, !dbg !1566
  unreachable, !dbg !1566

if.end:                                           ; preds = %entry
  ret i8* %call, !dbg !1567
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #5

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #8

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize readonly }
attributes #13 = { noreturn nounwind optsize }
attributes #14 = { noreturn optsize }
attributes #15 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !443, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!19 = metadata !{metadata !20, metadata !92, metadata !117, metadata !162, metadata !184, metadata !187, metadata !194, metadata !195, metadata !196, metadata !197, metadata !201, metadata !205, metadata !212, metadata !215, metadata !218, metadata !221, metadata !238, metadata !248, metadata !266, metadata !267, metadata !268, metadata !269, metadata !273, metadata !280, metadata !285, metadata !292, metadata !300, metadata !311, metadata !347, metadata !360, metadata !366, metadata !374, metadata !382, metadata !389, metadata !394, metadata !397, metadata !400, metadata !401, metadata !411, metadata !417, metadata !422, metadata !434, metadata !440}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"fopen_output_safely", metadata !"fopen_output_safely", metadata !"", i32 1102, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IO_FILE* (i8*, i8*)* @fopen_output_safely, null, null, metadata !86, i32 1103} ; [ DW_TAG_subprogram ] [line 1102] [def] [scope 1103] [fopen_output_safely]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !82, metadata !84}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!25 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!27 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !31, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !52, metadata !53, metadata !54, metadata !55, metadata !58, metadata !60, metadata !62, metadata !66, metadata !68, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !77, metadata !78}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!33 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!34 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!36 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!37 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!38 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!39 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!40 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!41 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!42 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!43 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!44 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !45} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!46 = metadata !{i32 786451, metadata !27, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !47, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!47 = metadata !{metadata !48, metadata !49, metadata !51}
!48 = metadata !{i32 786445, metadata !27, metadata !46, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786445, metadata !27, metadata !46, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !50} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!51 = metadata !{i32 786445, metadata !27, metadata !46, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!52 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !50} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!53 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!54 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !30} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!55 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !56} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!56 = metadata !{i32 786454, metadata !27, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!57 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!58 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !59} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!59 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!60 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !61} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!61 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!62 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !63} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!63 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !33, metadata !64, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!66 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !67} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!68 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !69} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!69 = metadata !{i32 786454, metadata !27, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!70 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !67} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!71 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !67} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!72 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !67} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!73 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !67} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!74 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !75} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!75 = metadata !{i32 786454, metadata !27, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!76 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!77 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!78 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !79} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!79 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !33, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Char]
!83 = metadata !{i32 786454, metadata !1, null, metadata !"Char", i32 260, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [Char] [line 260, size 0, align 0, offset 0] [from char]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!85 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90}
!87 = metadata !{i32 786689, metadata !20, metadata !"name", metadata !21, i32 16778318, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1102]
!88 = metadata !{i32 786689, metadata !20, metadata !"mode", metadata !21, i32 33555534, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 1102]
!89 = metadata !{i32 786688, metadata !20, metadata !"fp", metadata !21, i32 1105, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 1105]
!90 = metadata !{i32 786688, metadata !20, metadata !"fh", metadata !21, i32 1106, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fh] [line 1106]
!91 = metadata !{i32 786454, metadata !1, null, metadata !"IntNative", i32 275, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [IntNative] [line 275, size 0, align 0, offset 0] [from int]
!92 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"main", metadata !"main", metadata !"", i32 1909, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**)* @main, null, null, metadata !96, i32 1910} ; [ DW_TAG_subprogram ] [line 1909] [def] [scope 1910] [main]
!93 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!94 = metadata !{metadata !91, metadata !91, metadata !95}
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !101, metadata !102, metadata !103, metadata !111, metadata !112, metadata !115}
!97 = metadata !{i32 786689, metadata !92, metadata !"argc", metadata !21, i32 16779125, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 1909]
!98 = metadata !{i32 786689, metadata !92, metadata !"argv", metadata !21, i32 33556341, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 1909]
!99 = metadata !{i32 786688, metadata !92, metadata !"i", metadata !21, i32 1911, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1911]
!100 = metadata !{i32 786454, metadata !1, null, metadata !"Int32", i32 263, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [Int32] [line 263, size 0, align 0, offset 0] [from int]
!101 = metadata !{i32 786688, metadata !92, metadata !"j", metadata !21, i32 1911, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1911]
!102 = metadata !{i32 786688, metadata !92, metadata !"tmp", metadata !21, i32 1912, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 1912]
!103 = metadata !{i32 786688, metadata !92, metadata !"argList", metadata !21, i32 1913, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argList] [line 1913]
!104 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !105} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Cell]
!105 = metadata !{i32 786454, metadata !1, null, metadata !"Cell", i32 1832, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_typedef ] [Cell] [line 1832, size 0, align 0, offset 0] [from zzzz]
!106 = metadata !{i32 786451, metadata !1, null, metadata !"zzzz", i32 1828, i64 128, i64 64, i32 0, i32 0, null, metadata !107, i32 0, null, null} ; [ DW_TAG_structure_type ] [zzzz] [line 1828, size 128, align 64, offset 0] [from ]
!107 = metadata !{metadata !108, metadata !109}
!108 = metadata !{i32 786445, metadata !1, metadata !106, metadata !"name", i32 1829, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_member ] [name] [line 1829, size 64, align 64, offset 0] [from ]
!109 = metadata !{i32 786445, metadata !1, metadata !106, metadata !"link", i32 1830, i64 64, i64 64, i64 64, i32 0, metadata !110} ; [ DW_TAG_member ] [link] [line 1830, size 64, align 64, offset 64] [from ]
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from zzzz]
!111 = metadata !{i32 786688, metadata !92, metadata !"aa", metadata !21, i32 1914, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aa] [line 1914]
!112 = metadata !{i32 786688, metadata !92, metadata !"decode", metadata !21, i32 1915, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [decode] [line 1915]
!113 = metadata !{i32 786454, metadata !1, null, metadata !"Bool", i32 261, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_typedef ] [Bool] [line 261, size 0, align 0, offset 0] [from unsigned char]
!114 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!115 = metadata !{i32 786688, metadata !116, metadata !"aa2", metadata !21, i32 2155, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aa2] [line 2155]
!116 = metadata !{i32 786443, metadata !1, metadata !92, i32 2154, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!117 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"testf", metadata !"testf", metadata !"", i32 1645, metadata !118, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @testf, null, null, metadata !120, i32 1646} ; [ DW_TAG_subprogram ] [line 1645] [local] [def] [scope 1646] [testf]
!118 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!119 = metadata !{null, metadata !82}
!120 = metadata !{metadata !121, metadata !122, metadata !123, metadata !124}
!121 = metadata !{i32 786689, metadata !117, metadata !"name", metadata !21, i32 16778861, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1645]
!122 = metadata !{i32 786688, metadata !117, metadata !"inStr", metadata !21, i32 1647, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inStr] [line 1647]
!123 = metadata !{i32 786688, metadata !117, metadata !"allOK", metadata !21, i32 1648, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allOK] [line 1648]
!124 = metadata !{i32 786688, metadata !117, metadata !"statBuf", metadata !21, i32 1649, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [statBuf] [line 1649]
!125 = metadata !{i32 786451, metadata !126, null, metadata !"stat", i32 46, i64 1152, i64 64, i32 0, i32 0, null, metadata !127, i32 0, null, null} ; [ DW_TAG_structure_type ] [stat] [line 46, size 1152, align 64, offset 0] [from ]
!126 = metadata !{metadata !"/usr/include/x86_64-linux-gnu/bits/stat.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!127 = metadata !{metadata !128, metadata !130, metadata !132, metadata !134, metadata !137, metadata !139, metadata !141, metadata !142, metadata !143, metadata !144, metadata !146, metadata !148, metadata !156, metadata !157, metadata !158}
!128 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"st_dev", i32 48, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 64, offset 0] [from __dev_t]
!129 = metadata !{i32 786454, metadata !126, null, metadata !"__dev_t", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [__dev_t] [line 124, size 0, align 0, offset 0] [from long unsigned int]
!130 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"st_ino", i32 53, i64 64, i64 64, i64 64, i32 0, metadata !131} ; [ DW_TAG_member ] [st_ino] [line 53, size 64, align 64, offset 64] [from __ino_t]
!131 = metadata !{i32 786454, metadata !126, null, metadata !"__ino_t", i32 127, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [__ino_t] [line 127, size 0, align 0, offset 0] [from long unsigned int]
!132 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"st_nlink", i32 61, i64 64, i64 64, i64 128, i32 0, metadata !133} ; [ DW_TAG_member ] [st_nlink] [line 61, size 64, align 64, offset 128] [from __nlink_t]
!133 = metadata !{i32 786454, metadata !126, null, metadata !"__nlink_t", i32 130, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [__nlink_t] [line 130, size 0, align 0, offset 0] [from long unsigned int]
!134 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"st_mode", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !135} ; [ DW_TAG_member ] [st_mode] [line 62, size 32, align 32, offset 192] [from __mode_t]
!135 = metadata !{i32 786454, metadata !126, null, metadata !"__mode_t", i32 129, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [__mode_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!136 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!137 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"st_uid", i32 64, i64 32, i64 32, i64 224, i32 0, metadata !138} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 224] [from __uid_t]
!138 = metadata !{i32 786454, metadata !126, null, metadata !"__uid_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [__uid_t] [line 125, size 0, align 0, offset 0] [from unsigned int]
!139 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"st_gid", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !140} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 256] [from __gid_t]
!140 = metadata !{i32 786454, metadata !126, null, metadata !"__gid_t", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [__gid_t] [line 126, size 0, align 0, offset 0] [from unsigned int]
!141 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"__pad0", i32 67, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [__pad0] [line 67, size 32, align 32, offset 288] [from int]
!142 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"st_rdev", i32 69, i64 64, i64 64, i64 320, i32 0, metadata !129} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 64, offset 320] [from __dev_t]
!143 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"st_size", i32 74, i64 64, i64 64, i64 384, i32 0, metadata !56} ; [ DW_TAG_member ] [st_size] [line 74, size 64, align 64, offset 384] [from __off_t]
!144 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"st_blksize", i32 78, i64 64, i64 64, i64 448, i32 0, metadata !145} ; [ DW_TAG_member ] [st_blksize] [line 78, size 64, align 64, offset 448] [from __blksize_t]
!145 = metadata !{i32 786454, metadata !126, null, metadata !"__blksize_t", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [__blksize_t] [line 153, size 0, align 0, offset 0] [from long int]
!146 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"st_blocks", i32 80, i64 64, i64 64, i64 512, i32 0, metadata !147} ; [ DW_TAG_member ] [st_blocks] [line 80, size 64, align 64, offset 512] [from __blkcnt_t]
!147 = metadata !{i32 786454, metadata !126, null, metadata !"__blkcnt_t", i32 158, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [__blkcnt_t] [line 158, size 0, align 0, offset 0] [from long int]
!148 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"st_atim", i32 91, i64 128, i64 64, i64 576, i32 0, metadata !149} ; [ DW_TAG_member ] [st_atim] [line 91, size 128, align 64, offset 576] [from timespec]
!149 = metadata !{i32 786451, metadata !150, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !151, i32 0, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [from ]
!150 = metadata !{metadata !"/usr/include/time.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!151 = metadata !{metadata !152, metadata !154}
!152 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!153 = metadata !{i32 786454, metadata !150, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!154 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !155} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!155 = metadata !{i32 786454, metadata !150, null, metadata !"__syscall_slong_t", i32 175, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [__syscall_slong_t] [line 175, size 0, align 0, offset 0] [from long int]
!156 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"st_mtim", i32 92, i64 128, i64 64, i64 704, i32 0, metadata !149} ; [ DW_TAG_member ] [st_mtim] [line 92, size 128, align 64, offset 704] [from timespec]
!157 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"st_ctim", i32 93, i64 128, i64 64, i64 832, i32 0, metadata !149} ; [ DW_TAG_member ] [st_ctim] [line 93, size 128, align 64, offset 832] [from timespec]
!158 = metadata !{i32 786445, metadata !126, metadata !125, metadata !"__glibc_reserved", i32 106, i64 192, i64 64, i64 960, i32 0, metadata !159} ; [ DW_TAG_member ] [__glibc_reserved] [line 106, size 192, align 64, offset 960] [from ]
!159 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !155, metadata !160, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __syscall_slong_t]
!160 = metadata !{metadata !161}
!161 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!162 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"testStream", metadata !"testStream", metadata !"", i32 676, metadata !163, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !165, i32 678} ; [ DW_TAG_subprogram ] [line 676] [local] [def] [scope 678] [testStream]
!163 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!164 = metadata !{metadata !113, metadata !24}
!165 = metadata !{metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !179, metadata !180, metadata !181, metadata !182}
!166 = metadata !{i32 786689, metadata !162, metadata !"zStream", metadata !21, i32 16777892, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [zStream] [line 676]
!167 = metadata !{i32 786688, metadata !162, metadata !"bzf", metadata !21, i32 679, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzf] [line 679]
!168 = metadata !{i32 786688, metadata !162, metadata !"bzerr", metadata !21, i32 680, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzerr] [line 680]
!169 = metadata !{i32 786688, metadata !162, metadata !"bzerr_dummy", metadata !21, i32 680, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzerr_dummy] [line 680]
!170 = metadata !{i32 786688, metadata !162, metadata !"ret", metadata !21, i32 680, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 680]
!171 = metadata !{i32 786688, metadata !162, metadata !"nread", metadata !21, i32 680, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nread] [line 680]
!172 = metadata !{i32 786688, metadata !162, metadata !"streamNo", metadata !21, i32 680, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [streamNo] [line 680]
!173 = metadata !{i32 786688, metadata !162, metadata !"i", metadata !21, i32 680, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 680]
!174 = metadata !{i32 786688, metadata !162, metadata !"obuf", metadata !21, i32 681, metadata !175, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [obuf] [line 681]
!175 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 40000, i64 8, i32 0, i32 0, metadata !176, metadata !177, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 40000, align 8, offset 0] [from UChar]
!176 = metadata !{i32 786454, metadata !1, null, metadata !"UChar", i32 262, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_typedef ] [UChar] [line 262, size 0, align 0, offset 0] [from unsigned char]
!177 = metadata !{metadata !178}
!178 = metadata !{i32 786465, i64 0, i64 5000}    ; [ DW_TAG_subrange_type ] [0, 4999]
!179 = metadata !{i32 786688, metadata !162, metadata !"unused", metadata !21, i32 682, metadata !175, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [unused] [line 682]
!180 = metadata !{i32 786688, metadata !162, metadata !"nUnused", metadata !21, i32 683, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nUnused] [line 683]
!181 = metadata !{i32 786688, metadata !162, metadata !"unusedTmpV", metadata !21, i32 684, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [unusedTmpV] [line 684]
!182 = metadata !{i32 786688, metadata !162, metadata !"unusedTmp", metadata !21, i32 685, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [unusedTmp] [line 685]
!183 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from UChar]
!184 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"outOfMemory", metadata !"outOfMemory", metadata !"", i32 1014, metadata !185, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @outOfMemory, null, null, metadata !18, i32 1015} ; [ DW_TAG_subprogram ] [line 1014] [local] [def] [scope 1015] [outOfMemory]
!185 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!186 = metadata !{null}
!187 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"cleanUpAndFail", metadata !"cleanUpAndFail", metadata !"", i32 818, metadata !188, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @cleanUpAndFail, null, null, metadata !190, i32 819} ; [ DW_TAG_subprogram ] [line 818] [local] [def] [scope 819] [cleanUpAndFail]
!188 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !189, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!189 = metadata !{null, metadata !100}
!190 = metadata !{metadata !191, metadata !192, metadata !193}
!191 = metadata !{i32 786689, metadata !187, metadata !"ec", metadata !21, i32 16778034, metadata !100, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ec] [line 818]
!192 = metadata !{i32 786688, metadata !187, metadata !"retVal", metadata !21, i32 820, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retVal] [line 820]
!193 = metadata !{i32 786688, metadata !187, metadata !"statBuf", metadata !21, i32 822, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [statBuf] [line 822]
!194 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"showFileNames", metadata !"showFileNames", metadata !"", i32 805, metadata !185, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @showFileNames, null, null, metadata !18, i32 806} ; [ DW_TAG_subprogram ] [line 805] [local] [def] [scope 806] [showFileNames]
!195 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"ioError", metadata !"ioError", metadata !"", i32 929, metadata !185, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @ioError, null, null, metadata !18, i32 930} ; [ DW_TAG_subprogram ] [line 929] [local] [def] [scope 930] [ioError]
!196 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"configError", metadata !"configError", metadata !"", i32 1026, metadata !185, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @configError, null, null, metadata !18, i32 1027} ; [ DW_TAG_subprogram ] [line 1026] [local] [def] [scope 1027] [configError]
!197 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"myfeof", metadata !"myfeof", metadata !"", i32 423, metadata !163, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8 (%struct._IO_FILE*)* @myfeof, null, null, metadata !198, i32 425} ; [ DW_TAG_subprogram ] [line 423] [local] [def] [scope 425] [myfeof]
!198 = metadata !{metadata !199, metadata !200}
!199 = metadata !{i32 786689, metadata !197, metadata !"f", metadata !21, i32 16777639, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 423]
!200 = metadata !{i32 786688, metadata !197, metadata !"c", metadata !21, i32 426, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 426]
!201 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"pad", metadata !"pad", metadata !"", i32 1051, metadata !118, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @pad, null, null, metadata !202, i32 1052} ; [ DW_TAG_subprogram ] [line 1051] [local] [def] [scope 1052] [pad]
!202 = metadata !{metadata !203, metadata !204}
!203 = metadata !{i32 786689, metadata !201, metadata !"s", metadata !21, i32 16778267, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1051]
!204 = metadata !{i32 786688, metadata !201, metadata !"i", metadata !21, i32 1053, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1053]
!205 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"fileExists", metadata !"fileExists", metadata !"", i32 1083, metadata !206, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8 (i8*)* @fileExists, null, null, metadata !208, i32 1084} ; [ DW_TAG_subprogram ] [line 1083] [local] [def] [scope 1084] [fileExists]
!206 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!207 = metadata !{metadata !113, metadata !82}
!208 = metadata !{metadata !209, metadata !210, metadata !211}
!209 = metadata !{i32 786689, metadata !205, metadata !"name", metadata !21, i32 16778299, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1083]
!210 = metadata !{i32 786688, metadata !205, metadata !"tmp", metadata !21, i32 1085, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 1085]
!211 = metadata !{i32 786688, metadata !205, metadata !"exists", metadata !21, i32 1086, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [exists] [line 1086]
!212 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"containsDubiousChars", metadata !"containsDubiousChars", metadata !"", i32 1217, metadata !206, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !213, i32 1218} ; [ DW_TAG_subprogram ] [line 1217] [local] [def] [scope 1218] [containsDubiousChars]
!213 = metadata !{metadata !214}
!214 = metadata !{i32 786689, metadata !212, metadata !"name", metadata !21, i32 16778433, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1217]
!215 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"panic", metadata !"panic", metadata !"", i32 879, metadata !118, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @panic, null, null, metadata !216, i32 880} ; [ DW_TAG_subprogram ] [line 879] [local] [def] [scope 880] [panic]
!216 = metadata !{metadata !217}
!217 = metadata !{i32 786689, metadata !215, metadata !"s", metadata !21, i32 16778095, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 879]
!218 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"setExit", metadata !"setExit", metadata !"", i32 778, metadata !188, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !219, i32 779} ; [ DW_TAG_subprogram ] [line 778] [local] [def] [scope 779] [setExit]
!219 = metadata !{metadata !220}
!220 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 778]
!221 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"uncompress", metadata !"uncompress", metadata !"", i32 1447, metadata !118, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @uncompress, null, null, metadata !222, i32 1448} ; [ DW_TAG_subprogram ] [line 1447] [local] [def] [scope 1448] [uncompress]
!222 = metadata !{metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !235}
!223 = metadata !{i32 786689, metadata !221, metadata !"name", metadata !21, i32 16778663, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1447]
!224 = metadata !{i32 786688, metadata !221, metadata !"inStr", metadata !21, i32 1449, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inStr] [line 1449]
!225 = metadata !{i32 786688, metadata !221, metadata !"outStr", metadata !21, i32 1450, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outStr] [line 1450]
!226 = metadata !{i32 786688, metadata !221, metadata !"n", metadata !21, i32 1451, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1451]
!227 = metadata !{i32 786688, metadata !221, metadata !"i", metadata !21, i32 1451, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1451]
!228 = metadata !{i32 786688, metadata !221, metadata !"magicNumberOK", metadata !21, i32 1452, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [magicNumberOK] [line 1452]
!229 = metadata !{i32 786688, metadata !221, metadata !"cantGuess", metadata !21, i32 1453, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cantGuess] [line 1453]
!230 = metadata !{i32 786688, metadata !221, metadata !"statBuf", metadata !21, i32 1454, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [statBuf] [line 1454]
!231 = metadata !{i32 786688, metadata !232, metadata !"retVal", metadata !21, i32 1614, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retVal] [line 1614]
!232 = metadata !{i32 786443, metadata !1, metadata !233, i32 1613, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!233 = metadata !{i32 786443, metadata !1, metadata !234, i32 1610, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!234 = metadata !{i32 786443, metadata !1, metadata !221, i32 1609, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!235 = metadata !{i32 786688, metadata !236, metadata !"retVal", metadata !21, i32 1622, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retVal] [line 1622]
!236 = metadata !{i32 786443, metadata !1, metadata !237, i32 1621, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!237 = metadata !{i32 786443, metadata !1, metadata !221, i32 1618, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!238 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"applySavedMetaInfoToOutputFile", metadata !"applySavedMetaInfoToOutputFile", metadata !"", i32 1192, metadata !118, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @applySavedMetaInfoToOutputFile, null, null, metadata !239, i32 1193} ; [ DW_TAG_subprogram ] [line 1192] [local] [def] [scope 1193] [applySavedMetaInfoToOutputFile]
!239 = metadata !{metadata !240, metadata !241, metadata !242}
!240 = metadata !{i32 786689, metadata !238, metadata !"dstName", metadata !21, i32 16778408, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstName] [line 1192]
!241 = metadata !{i32 786688, metadata !238, metadata !"retVal", metadata !21, i32 1195, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retVal] [line 1195]
!242 = metadata !{i32 786688, metadata !238, metadata !"uTimBuf", metadata !21, i32 1196, metadata !243, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uTimBuf] [line 1196]
!243 = metadata !{i32 786451, metadata !244, null, metadata !"utimbuf", i32 37, i64 128, i64 64, i32 0, i32 0, null, metadata !245, i32 0, null, null} ; [ DW_TAG_structure_type ] [utimbuf] [line 37, size 128, align 64, offset 0] [from ]
!244 = metadata !{metadata !"/usr/include/utime.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!245 = metadata !{metadata !246, metadata !247}
!246 = metadata !{i32 786445, metadata !244, metadata !243, metadata !"actime", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_member ] [actime] [line 39, size 64, align 64, offset 0] [from __time_t]
!247 = metadata !{i32 786445, metadata !244, metadata !243, metadata !"modtime", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !153} ; [ DW_TAG_member ] [modtime] [line 40, size 64, align 64, offset 64] [from __time_t]
!248 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"uncompressStream", metadata !"uncompressStream", metadata !"", i32 547, metadata !249, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !251, i32 549} ; [ DW_TAG_subprogram ] [line 547] [local] [def] [scope 549] [uncompressStream]
!249 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !250, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!250 = metadata !{metadata !113, metadata !24, metadata !24}
!251 = metadata !{metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265}
!252 = metadata !{i32 786689, metadata !248, metadata !"zStream", metadata !21, i32 16777763, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [zStream] [line 547]
!253 = metadata !{i32 786689, metadata !248, metadata !"stream", metadata !21, i32 33554979, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 547]
!254 = metadata !{i32 786688, metadata !248, metadata !"bzf", metadata !21, i32 550, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzf] [line 550]
!255 = metadata !{i32 786688, metadata !248, metadata !"bzerr", metadata !21, i32 551, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzerr] [line 551]
!256 = metadata !{i32 786688, metadata !248, metadata !"bzerr_dummy", metadata !21, i32 551, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzerr_dummy] [line 551]
!257 = metadata !{i32 786688, metadata !248, metadata !"ret", metadata !21, i32 551, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 551]
!258 = metadata !{i32 786688, metadata !248, metadata !"nread", metadata !21, i32 551, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nread] [line 551]
!259 = metadata !{i32 786688, metadata !248, metadata !"streamNo", metadata !21, i32 551, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [streamNo] [line 551]
!260 = metadata !{i32 786688, metadata !248, metadata !"i", metadata !21, i32 551, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 551]
!261 = metadata !{i32 786688, metadata !248, metadata !"obuf", metadata !21, i32 552, metadata !175, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [obuf] [line 552]
!262 = metadata !{i32 786688, metadata !248, metadata !"unused", metadata !21, i32 553, metadata !175, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [unused] [line 553]
!263 = metadata !{i32 786688, metadata !248, metadata !"nUnused", metadata !21, i32 554, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nUnused] [line 554]
!264 = metadata !{i32 786688, metadata !248, metadata !"unusedTmpV", metadata !21, i32 555, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [unusedTmpV] [line 555]
!265 = metadata !{i32 786688, metadata !248, metadata !"unusedTmp", metadata !21, i32 556, metadata !183, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [unusedTmp] [line 556]
!266 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"compressedStreamEOF", metadata !"compressedStreamEOF", metadata !"", i32 912, metadata !185, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !18, i32 913} ; [ DW_TAG_subprogram ] [line 912] [local] [def] [scope 913] [compressedStreamEOF]
!267 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"cadvise", metadata !"cadvise", metadata !"", i32 790, metadata !185, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @cadvise, null, null, metadata !18, i32 791} ; [ DW_TAG_subprogram ] [line 790] [local] [def] [scope 791] [cadvise]
!268 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"crcError", metadata !"crcError", metadata !"", i32 899, metadata !185, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !18, i32 900} ; [ DW_TAG_subprogram ] [line 899] [local] [def] [scope 900] [crcError]
!269 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"saveInputFileMetaInfo", metadata !"saveInputFileMetaInfo", metadata !"", i32 1180, metadata !118, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @saveInputFileMetaInfo, null, null, metadata !270, i32 1181} ; [ DW_TAG_subprogram ] [line 1180] [local] [def] [scope 1181] [saveInputFileMetaInfo]
!270 = metadata !{metadata !271, metadata !272}
!271 = metadata !{i32 786689, metadata !269, metadata !"srcName", metadata !21, i32 16778396, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcName] [line 1180]
!272 = metadata !{i32 786688, metadata !269, metadata !"retVal", metadata !21, i32 1183, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retVal] [line 1183]
!273 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"countHardLinks", metadata !"countHardLinks", metadata !"", i32 1140, metadata !274, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !276, i32 1141} ; [ DW_TAG_subprogram ] [line 1140] [local] [def] [scope 1141] [countHardLinks]
!274 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !275, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!275 = metadata !{metadata !100, metadata !82}
!276 = metadata !{metadata !277, metadata !278, metadata !279}
!277 = metadata !{i32 786689, metadata !273, metadata !"name", metadata !21, i32 16778356, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1140]
!278 = metadata !{i32 786688, metadata !273, metadata !"i", metadata !21, i32 1142, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1142]
!279 = metadata !{i32 786688, metadata !273, metadata !"statBuf", metadata !21, i32 1143, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [statBuf] [line 1143]
!280 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"notAStandardFile", metadata !"notAStandardFile", metadata !"", i32 1123, metadata !206, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8 ()* @notAStandardFile, null, null, metadata !281, i32 1124} ; [ DW_TAG_subprogram ] [line 1123] [local] [def] [scope 1124] [notAStandardFile]
!281 = metadata !{metadata !282, metadata !283, metadata !284}
!282 = metadata !{i32 786689, metadata !280, metadata !"name", metadata !21, i32 16778339, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1123]
!283 = metadata !{i32 786688, metadata !280, metadata !"i", metadata !21, i32 1125, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1125]
!284 = metadata !{i32 786688, metadata !280, metadata !"statBuf", metadata !21, i32 1126, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [statBuf] [line 1126]
!285 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"mapSuffix", metadata !"mapSuffix", metadata !"", i32 1254, metadata !286, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !288, i32 1256} ; [ DW_TAG_subprogram ] [line 1254] [local] [def] [scope 1256] [mapSuffix]
!286 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!287 = metadata !{metadata !113, metadata !82, metadata !82, metadata !82}
!288 = metadata !{metadata !289, metadata !290, metadata !291}
!289 = metadata !{i32 786689, metadata !285, metadata !"name", metadata !21, i32 16778470, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1254]
!290 = metadata !{i32 786689, metadata !285, metadata !"oldSuffix", metadata !21, i32 33555687, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldSuffix] [line 1255]
!291 = metadata !{i32 786689, metadata !285, metadata !"newSuffix", metadata !21, i32 50332903, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newSuffix] [line 1255]
!292 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"hasSuffix", metadata !"hasSuffix", metadata !"", i32 1244, metadata !293, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8 (i8*, i8*)* @hasSuffix, null, null, metadata !295, i32 1245} ; [ DW_TAG_subprogram ] [line 1244] [local] [def] [scope 1245] [hasSuffix]
!293 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !294, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!294 = metadata !{metadata !113, metadata !82, metadata !82}
!295 = metadata !{metadata !296, metadata !297, metadata !298, metadata !299}
!296 = metadata !{i32 786689, metadata !292, metadata !"s", metadata !21, i32 16778460, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1244]
!297 = metadata !{i32 786689, metadata !292, metadata !"suffix", metadata !21, i32 33555676, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [suffix] [line 1244]
!298 = metadata !{i32 786688, metadata !292, metadata !"ns", metadata !21, i32 1246, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ns] [line 1246]
!299 = metadata !{i32 786688, metadata !292, metadata !"nx", metadata !21, i32 1247, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 1247]
!300 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"compress", metadata !"compress", metadata !"", i32 1266, metadata !118, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @compress, null, null, metadata !301, i32 1267} ; [ DW_TAG_subprogram ] [line 1266] [local] [def] [scope 1267] [compress]
!301 = metadata !{metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308}
!302 = metadata !{i32 786689, metadata !300, metadata !"name", metadata !21, i32 16778482, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1266]
!303 = metadata !{i32 786688, metadata !300, metadata !"inStr", metadata !21, i32 1268, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inStr] [line 1268]
!304 = metadata !{i32 786688, metadata !300, metadata !"outStr", metadata !21, i32 1269, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outStr] [line 1269]
!305 = metadata !{i32 786688, metadata !300, metadata !"n", metadata !21, i32 1270, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1270]
!306 = metadata !{i32 786688, metadata !300, metadata !"i", metadata !21, i32 1270, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1270]
!307 = metadata !{i32 786688, metadata !300, metadata !"statBuf", metadata !21, i32 1271, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [statBuf] [line 1271]
!308 = metadata !{i32 786688, metadata !309, metadata !"retVal", metadata !21, i32 1436, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retVal] [line 1436]
!309 = metadata !{i32 786443, metadata !1, metadata !310, i32 1435, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!310 = metadata !{i32 786443, metadata !1, metadata !300, i32 1432, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!311 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"compressStream", metadata !"compressStream", metadata !"", i32 438, metadata !312, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !314, i32 440} ; [ DW_TAG_subprogram ] [line 438] [local] [def] [scope 440] [compressStream]
!312 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!313 = metadata !{null, metadata !24, metadata !24}
!314 = metadata !{metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !334, metadata !335, metadata !343, metadata !344, metadata !346}
!315 = metadata !{i32 786689, metadata !311, metadata !"stream", metadata !21, i32 16777654, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 438]
!316 = metadata !{i32 786689, metadata !311, metadata !"zStream", metadata !21, i32 33554870, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [zStream] [line 438]
!317 = metadata !{i32 786688, metadata !311, metadata !"bzf", metadata !21, i32 441, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzf] [line 441]
!318 = metadata !{i32 786688, metadata !311, metadata !"ibuf", metadata !21, i32 442, metadata !175, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibuf] [line 442]
!319 = metadata !{i32 786688, metadata !311, metadata !"nIbuf", metadata !21, i32 443, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nIbuf] [line 443]
!320 = metadata !{i32 786688, metadata !311, metadata !"nbytes_in_lo32", metadata !21, i32 444, metadata !321, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes_in_lo32] [line 444]
!321 = metadata !{i32 786454, metadata !1, null, metadata !"UInt32", i32 264, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [UInt32] [line 264, size 0, align 0, offset 0] [from unsigned int]
!322 = metadata !{i32 786688, metadata !311, metadata !"nbytes_in_hi32", metadata !21, i32 444, metadata !321, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes_in_hi32] [line 444]
!323 = metadata !{i32 786688, metadata !311, metadata !"nbytes_out_lo32", metadata !21, i32 445, metadata !321, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes_out_lo32] [line 445]
!324 = metadata !{i32 786688, metadata !311, metadata !"nbytes_out_hi32", metadata !21, i32 445, metadata !321, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes_out_hi32] [line 445]
!325 = metadata !{i32 786688, metadata !311, metadata !"bzerr", metadata !21, i32 446, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzerr] [line 446]
!326 = metadata !{i32 786688, metadata !311, metadata !"bzerr_dummy", metadata !21, i32 446, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bzerr_dummy] [line 446]
!327 = metadata !{i32 786688, metadata !311, metadata !"ret", metadata !21, i32 446, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 446]
!328 = metadata !{i32 786688, metadata !329, metadata !"buf_nin", metadata !21, i32 496, metadata !331, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf_nin] [line 496]
!329 = metadata !{i32 786443, metadata !1, metadata !330, i32 495, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!330 = metadata !{i32 786443, metadata !1, metadata !311, i32 492, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!331 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !83, metadata !332, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from Char]
!332 = metadata !{metadata !333}
!333 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!334 = metadata !{i32 786688, metadata !329, metadata !"buf_nout", metadata !21, i32 496, metadata !331, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf_nout] [line 496]
!335 = metadata !{i32 786688, metadata !329, metadata !"nbytes_in", metadata !21, i32 497, metadata !336, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes_in] [line 497]
!336 = metadata !{i32 786454, metadata !1, null, metadata !"UInt64", i32 336, i64 0, i64 0, i64 0, i32 0, metadata !337} ; [ DW_TAG_typedef ] [UInt64] [line 336, size 0, align 0, offset 0] [from ]
!337 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 335, i64 64, i64 8, i32 0, i32 0, null, metadata !338, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 335, size 64, align 8, offset 0] [from ]
!338 = metadata !{metadata !339}
!339 = metadata !{i32 786445, metadata !1, metadata !337, metadata !"b", i32 335, i64 64, i64 8, i64 0, i32 0, metadata !340} ; [ DW_TAG_member ] [b] [line 335, size 64, align 8, offset 0] [from ]
!340 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !176, metadata !341, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from UChar]
!341 = metadata !{metadata !342}
!342 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!343 = metadata !{i32 786688, metadata !329, metadata !"nbytes_out", metadata !21, i32 497, metadata !336, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes_out] [line 497]
!344 = metadata !{i32 786688, metadata !329, metadata !"nbytes_in_d", metadata !21, i32 498, metadata !345, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes_in_d] [line 498]
!345 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!346 = metadata !{i32 786688, metadata !329, metadata !"nbytes_out_d", metadata !21, i32 498, metadata !345, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes_out_d] [line 498]
!347 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"uInt64_toAscii", metadata !"uInt64_toAscii", metadata !"", i32 397, metadata !348, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, %struct.UInt64*)* @uInt64_toAscii, null, null, metadata !351, i32 398} ; [ DW_TAG_subprogram ] [line 397] [local] [def] [scope 398] [uInt64_toAscii]
!348 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !349, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!349 = metadata !{null, metadata !32, metadata !350}
!350 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !336} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from UInt64]
!351 = metadata !{metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !358, metadata !359}
!352 = metadata !{i32 786689, metadata !347, metadata !"outbuf", metadata !21, i32 16777613, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outbuf] [line 397]
!353 = metadata !{i32 786689, metadata !347, metadata !"n", metadata !21, i32 33554829, metadata !350, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 397]
!354 = metadata !{i32 786688, metadata !347, metadata !"i", metadata !21, i32 399, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 399]
!355 = metadata !{i32 786688, metadata !347, metadata !"q", metadata !21, i32 399, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 399]
!356 = metadata !{i32 786688, metadata !347, metadata !"buf", metadata !21, i32 400, metadata !357, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 400]
!357 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 8, i32 0, i32 0, metadata !176, metadata !332, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from UChar]
!358 = metadata !{i32 786688, metadata !347, metadata !"nBuf", metadata !21, i32 401, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nBuf] [line 401]
!359 = metadata !{i32 786688, metadata !347, metadata !"n_copy", metadata !21, i32 402, metadata !336, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_copy] [line 402]
!360 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"uInt64_isZero", metadata !"uInt64_isZero", metadata !"", i32 368, metadata !361, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !363, i32 369} ; [ DW_TAG_subprogram ] [line 368] [local] [def] [scope 369] [uInt64_isZero]
!361 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !362, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!362 = metadata !{metadata !113, metadata !350}
!363 = metadata !{metadata !364, metadata !365}
!364 = metadata !{i32 786689, metadata !360, metadata !"n", metadata !21, i32 16777584, metadata !350, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 368]
!365 = metadata !{i32 786688, metadata !360, metadata !"i", metadata !21, i32 370, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 370]
!366 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"uInt64_qrm10", metadata !"uInt64_qrm10", metadata !"", i32 379, metadata !367, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !369, i32 380} ; [ DW_TAG_subprogram ] [line 379] [local] [def] [scope 380] [uInt64_qrm10]
!367 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !368, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!368 = metadata !{metadata !100, metadata !350}
!369 = metadata !{metadata !370, metadata !371, metadata !372, metadata !373}
!370 = metadata !{i32 786689, metadata !366, metadata !"n", metadata !21, i32 16777595, metadata !350, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 379]
!371 = metadata !{i32 786688, metadata !366, metadata !"rem", metadata !21, i32 381, metadata !321, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rem] [line 381]
!372 = metadata !{i32 786688, metadata !366, metadata !"tmp", metadata !21, i32 381, metadata !321, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 381]
!373 = metadata !{i32 786688, metadata !366, metadata !"i", metadata !21, i32 382, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 382]
!374 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"uInt64_to_double", metadata !"uInt64_to_double", metadata !"", i32 354, metadata !375, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !377, i32 355} ; [ DW_TAG_subprogram ] [line 354] [local] [def] [scope 355] [uInt64_to_double]
!375 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !376, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!376 = metadata !{metadata !345, metadata !350}
!377 = metadata !{metadata !378, metadata !379, metadata !380, metadata !381}
!378 = metadata !{i32 786689, metadata !374, metadata !"n", metadata !21, i32 16777570, metadata !350, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 354]
!379 = metadata !{i32 786688, metadata !374, metadata !"i", metadata !21, i32 356, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 356]
!380 = metadata !{i32 786688, metadata !374, metadata !"base", metadata !21, i32 357, metadata !345, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 357]
!381 = metadata !{i32 786688, metadata !374, metadata !"sum", metadata !21, i32 358, metadata !345, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 358]
!382 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"uInt64_from_UInt32s", metadata !"uInt64_from_UInt32s", metadata !"", i32 340, metadata !383, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !385, i32 341} ; [ DW_TAG_subprogram ] [line 340] [local] [def] [scope 341] [uInt64_from_UInt32s]
!383 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !384, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!384 = metadata !{null, metadata !350, metadata !321, metadata !321}
!385 = metadata !{metadata !386, metadata !387, metadata !388}
!386 = metadata !{i32 786689, metadata !382, metadata !"n", metadata !21, i32 16777556, metadata !350, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 340]
!387 = metadata !{i32 786689, metadata !382, metadata !"lo32", metadata !21, i32 33554772, metadata !321, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lo32] [line 340]
!388 = metadata !{i32 786689, metadata !382, metadata !"hi32", metadata !21, i32 50331988, metadata !321, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hi32] [line 340]
!389 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"mySignalCatcher", metadata !"mySignalCatcher", metadata !"", i32 943, metadata !390, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @mySignalCatcher, null, null, metadata !392, i32 944} ; [ DW_TAG_subprogram ] [line 943] [local] [def] [scope 944] [mySignalCatcher]
!390 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !391, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!391 = metadata !{null, metadata !91}
!392 = metadata !{metadata !393}
!393 = metadata !{i32 786689, metadata !389, metadata !"n", metadata !21, i32 16778159, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 943]
!394 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"redundant", metadata !"redundant", metadata !"", i32 1803, metadata !118, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !395, i32 1804} ; [ DW_TAG_subprogram ] [line 1803] [local] [def] [scope 1804] [redundant]
!395 = metadata !{metadata !396}
!396 = metadata !{i32 786689, metadata !394, metadata !"flag", metadata !21, i32 16779019, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flag] [line 1803]
!397 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"usage", metadata !"usage", metadata !"", i32 1759, metadata !118, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !398, i32 1760} ; [ DW_TAG_subprogram ] [line 1759] [local] [def] [scope 1760] [usage]
!398 = metadata !{metadata !399}
!399 = metadata !{i32 786689, metadata !397, metadata !"fullProgName", metadata !21, i32 16778975, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fullProgName] [line 1759]
!400 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"license", metadata !"license", metadata !"", i32 1734, metadata !185, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !18, i32 1735} ; [ DW_TAG_subprogram ] [line 1734] [local] [def] [scope 1735] [license]
!401 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"snocString", metadata !"snocString", metadata !"", i32 1862, metadata !402, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.zzzz* (%struct.zzzz*, i8*)* @snocString, null, null, metadata !404, i32 1863} ; [ DW_TAG_subprogram ] [line 1862] [local] [def] [scope 1863] [snocString]
!402 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !403, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!403 = metadata !{metadata !104, metadata !104, metadata !82}
!404 = metadata !{metadata !405, metadata !406, metadata !407, metadata !409}
!405 = metadata !{i32 786689, metadata !401, metadata !"root", metadata !21, i32 16779078, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [root] [line 1862]
!406 = metadata !{i32 786689, metadata !401, metadata !"name", metadata !21, i32 33556294, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1862]
!407 = metadata !{i32 786688, metadata !408, metadata !"tmp", metadata !21, i32 1865, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 1865]
!408 = metadata !{i32 786443, metadata !1, metadata !401, i32 1864, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!409 = metadata !{i32 786688, metadata !410, metadata !"tmp", metadata !21, i32 1870, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 1870]
!410 = metadata !{i32 786443, metadata !1, metadata !401, i32 1869, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!411 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"myMalloc", metadata !"myMalloc", metadata !"", i32 1837, metadata !412, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @myMalloc, null, null, metadata !414, i32 1838} ; [ DW_TAG_subprogram ] [line 1837] [local] [def] [scope 1838] [myMalloc]
!412 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !413, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!413 = metadata !{metadata !67, metadata !100}
!414 = metadata !{metadata !415, metadata !416}
!415 = metadata !{i32 786689, metadata !411, metadata !"n", metadata !21, i32 16779053, metadata !100, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1837]
!416 = metadata !{i32 786688, metadata !411, metadata !"p", metadata !21, i32 1839, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 1839]
!417 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"mkCell", metadata !"mkCell", metadata !"", i32 1849, metadata !418, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !420, i32 1850} ; [ DW_TAG_subprogram ] [line 1849] [local] [def] [scope 1850] [mkCell]
!418 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !419, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!419 = metadata !{metadata !104}
!420 = metadata !{metadata !421}
!421 = metadata !{i32 786688, metadata !417, metadata !"c", metadata !21, i32 1851, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1851]
!422 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"addFlagsFromEnvVar", metadata !"addFlagsFromEnvVar", metadata !"", i32 1880, metadata !423, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.zzzz**, i8*)* @addFlagsFromEnvVar, null, null, metadata !426, i32 1881} ; [ DW_TAG_subprogram ] [line 1880] [local] [def] [scope 1881] [addFlagsFromEnvVar]
!423 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !424, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!424 = metadata !{null, metadata !425, metadata !82}
!425 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!426 = metadata !{metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433}
!427 = metadata !{i32 786689, metadata !422, metadata !"argList", metadata !21, i32 16779096, metadata !425, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argList] [line 1880]
!428 = metadata !{i32 786689, metadata !422, metadata !"varName", metadata !21, i32 33556312, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [varName] [line 1880]
!429 = metadata !{i32 786688, metadata !422, metadata !"i", metadata !21, i32 1882, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1882]
!430 = metadata !{i32 786688, metadata !422, metadata !"j", metadata !21, i32 1882, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1882]
!431 = metadata !{i32 786688, metadata !422, metadata !"k", metadata !21, i32 1882, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1882]
!432 = metadata !{i32 786688, metadata !422, metadata !"envbase", metadata !21, i32 1883, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [envbase] [line 1883]
!433 = metadata !{i32 786688, metadata !422, metadata !"p", metadata !21, i32 1883, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 1883]
!434 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"copyFileName", metadata !"copyFileName", metadata !"", i32 1062, metadata !435, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*)* @copyFileName, null, null, metadata !437, i32 1063} ; [ DW_TAG_subprogram ] [line 1062] [local] [def] [scope 1063] [copyFileName]
!435 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !436, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!436 = metadata !{null, metadata !82, metadata !82}
!437 = metadata !{metadata !438, metadata !439}
!438 = metadata !{i32 786689, metadata !434, metadata !"to", metadata !21, i32 16778278, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [to] [line 1062]
!439 = metadata !{i32 786689, metadata !434, metadata !"from", metadata !21, i32 33555494, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [from] [line 1062]
!440 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"mySIGSEGVorSIGBUScatcher", metadata !"mySIGSEGVorSIGBUScatcher", metadata !"", i32 954, metadata !390, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @mySIGSEGVorSIGBUScatcher, null, null, metadata !441, i32 955} ; [ DW_TAG_subprogram ] [line 954] [local] [def] [scope 955] [mySIGSEGVorSIGBUScatcher]
!441 = metadata !{metadata !442}
!442 = metadata !{i32 786689, metadata !440, metadata !"n", metadata !21, i32 16778170, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 954]
!443 = metadata !{metadata !444, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474}
!444 = metadata !{i32 786484, i32 0, null, metadata !"zSuffix", metadata !"zSuffix", metadata !"", metadata !21, i32 1238, metadata !445, i32 0, i32 1, [4 x i8*]* @zSuffix, null} ; [ DW_TAG_variable ] [zSuffix] [line 1238] [def]
!445 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !82, metadata !446, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from ]
!446 = metadata !{metadata !447}
!447 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!448 = metadata !{i32 786484, i32 0, null, metadata !"unzSuffix", metadata !"unzSuffix", metadata !"", metadata !21, i32 1240, metadata !445, i32 0, i32 1, [4 x i8*]* @unzSuffix, null} ; [ DW_TAG_variable ] [unzSuffix] [line 1240] [def]
!449 = metadata !{i32 786484, i32 0, null, metadata !"verbosity", metadata !"verbosity", metadata !"", metadata !21, i32 282, metadata !100, i32 0, i32 1, i32* @verbosity, null} ; [ DW_TAG_variable ] [verbosity] [line 282] [def]
!450 = metadata !{i32 786484, i32 0, null, metadata !"keepInputFiles", metadata !"keepInputFiles", metadata !"", metadata !21, i32 283, metadata !113, i32 0, i32 1, i8* @keepInputFiles, null} ; [ DW_TAG_variable ] [keepInputFiles] [line 283] [def]
!451 = metadata !{i32 786484, i32 0, null, metadata !"smallMode", metadata !"smallMode", metadata !"", metadata !21, i32 283, metadata !113, i32 0, i32 1, i8* @smallMode, null} ; [ DW_TAG_variable ] [smallMode] [line 283] [def]
!452 = metadata !{i32 786484, i32 0, null, metadata !"deleteOutputOnInterrupt", metadata !"deleteOutputOnInterrupt", metadata !"", metadata !21, i32 283, metadata !113, i32 0, i32 1, i8* @deleteOutputOnInterrupt, null} ; [ DW_TAG_variable ] [deleteOutputOnInterrupt] [line 283] [def]
!453 = metadata !{i32 786484, i32 0, null, metadata !"forceOverwrite", metadata !"forceOverwrite", metadata !"", metadata !21, i32 284, metadata !113, i32 0, i32 1, i8* @forceOverwrite, null} ; [ DW_TAG_variable ] [forceOverwrite] [line 284] [def]
!454 = metadata !{i32 786484, i32 0, null, metadata !"testFailsExist", metadata !"testFailsExist", metadata !"", metadata !21, i32 284, metadata !113, i32 0, i32 1, i8* @testFailsExist, null} ; [ DW_TAG_variable ] [testFailsExist] [line 284] [def]
!455 = metadata !{i32 786484, i32 0, null, metadata !"unzFailsExist", metadata !"unzFailsExist", metadata !"", metadata !21, i32 284, metadata !113, i32 0, i32 1, i8* @unzFailsExist, null} ; [ DW_TAG_variable ] [unzFailsExist] [line 284] [def]
!456 = metadata !{i32 786484, i32 0, null, metadata !"noisy", metadata !"noisy", metadata !"", metadata !21, i32 284, metadata !113, i32 0, i32 1, i8* @noisy, null} ; [ DW_TAG_variable ] [noisy] [line 284] [def]
!457 = metadata !{i32 786484, i32 0, null, metadata !"numFileNames", metadata !"numFileNames", metadata !"", metadata !21, i32 285, metadata !100, i32 0, i32 1, i32* @numFileNames, null} ; [ DW_TAG_variable ] [numFileNames] [line 285] [def]
!458 = metadata !{i32 786484, i32 0, null, metadata !"numFilesProcessed", metadata !"numFilesProcessed", metadata !"", metadata !21, i32 285, metadata !100, i32 0, i32 1, i32* @numFilesProcessed, null} ; [ DW_TAG_variable ] [numFilesProcessed] [line 285] [def]
!459 = metadata !{i32 786484, i32 0, null, metadata !"blockSize100k", metadata !"blockSize100k", metadata !"", metadata !21, i32 285, metadata !100, i32 0, i32 1, i32* @blockSize100k, null} ; [ DW_TAG_variable ] [blockSize100k] [line 285] [def]
!460 = metadata !{i32 786484, i32 0, null, metadata !"exitValue", metadata !"exitValue", metadata !"", metadata !21, i32 286, metadata !100, i32 0, i32 1, i32* @exitValue, null} ; [ DW_TAG_variable ] [exitValue] [line 286] [def]
!461 = metadata !{i32 786484, i32 0, null, metadata !"opMode", metadata !"opMode", metadata !"", metadata !21, i32 298, metadata !100, i32 0, i32 1, i32* @opMode, null} ; [ DW_TAG_variable ] [opMode] [line 298] [def]
!462 = metadata !{i32 786484, i32 0, null, metadata !"srcMode", metadata !"srcMode", metadata !"", metadata !21, i32 299, metadata !100, i32 0, i32 1, i32* @srcMode, null} ; [ DW_TAG_variable ] [srcMode] [line 299] [def]
!463 = metadata !{i32 786484, i32 0, null, metadata !"longestFileName", metadata !"longestFileName", metadata !"", metadata !21, i32 303, metadata !100, i32 0, i32 1, i32* @longestFileName, null} ; [ DW_TAG_variable ] [longestFileName] [line 303] [def]
!464 = metadata !{i32 786484, i32 0, null, metadata !"inName", metadata !"inName", metadata !"", metadata !21, i32 304, metadata !465, i32 0, i32 1, [1034 x i8]* @inName, null} ; [ DW_TAG_variable ] [inName] [line 304] [def]
!465 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8272, i64 8, i32 0, i32 0, metadata !83, metadata !466, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8272, align 8, offset 0] [from Char]
!466 = metadata !{metadata !467}
!467 = metadata !{i32 786465, i64 0, i64 1034}    ; [ DW_TAG_subrange_type ] [0, 1033]
!468 = metadata !{i32 786484, i32 0, null, metadata !"outName", metadata !"outName", metadata !"", metadata !21, i32 305, metadata !465, i32 0, i32 1, [1034 x i8]* @outName, null} ; [ DW_TAG_variable ] [outName] [line 305] [def]
!469 = metadata !{i32 786484, i32 0, null, metadata !"tmpName", metadata !"tmpName", metadata !"", metadata !21, i32 306, metadata !465, i32 0, i32 1, [1034 x i8]* @tmpName, null} ; [ DW_TAG_variable ] [tmpName] [line 306] [def]
!470 = metadata !{i32 786484, i32 0, null, metadata !"progName", metadata !"progName", metadata !"", metadata !21, i32 307, metadata !82, i32 0, i32 1, i8** @progName, null} ; [ DW_TAG_variable ] [progName] [line 307] [def]
!471 = metadata !{i32 786484, i32 0, null, metadata !"progNameReally", metadata !"progNameReally", metadata !"", metadata !21, i32 308, metadata !465, i32 0, i32 1, [1034 x i8]* @progNameReally, null} ; [ DW_TAG_variable ] [progNameReally] [line 308] [def]
!472 = metadata !{i32 786484, i32 0, null, metadata !"outputHandleJustInCase", metadata !"outputHandleJustInCase", metadata !"", metadata !21, i32 312, metadata !24, i32 0, i32 1, %struct._IO_FILE** @outputHandleJustInCase, null} ; [ DW_TAG_variable ] [outputHandleJustInCase] [line 312] [def]
!473 = metadata !{i32 786484, i32 0, null, metadata !"workFactor", metadata !"workFactor", metadata !"", metadata !21, i32 314, metadata !100, i32 0, i32 1, i32* @workFactor, null} ; [ DW_TAG_variable ] [workFactor] [line 314] [def]
!474 = metadata !{i32 786484, i32 0, null, metadata !"fileMetaInfo", metadata !"fileMetaInfo", metadata !"", metadata !21, i32 1176, metadata !125, i32 1, i32 1, %struct.stat* @fileMetaInfo, null} ; [ DW_TAG_variable ] [fileMetaInfo] [line 1176] [local] [def]
!475 = metadata !{i32 1102, i32 0, metadata !20, null}
!476 = metadata !{i32 1107, i32 0, metadata !20, null}
!477 = metadata !{i32 1108, i32 0, metadata !20, null}
!478 = metadata !{i32 1109, i32 0, metadata !20, null}
!479 = metadata !{i32 1110, i32 0, metadata !20, null}
!480 = metadata !{i32 1115, i32 0, metadata !20, null}
!481 = metadata !{i32 1909, i32 0, metadata !92, null}
!482 = metadata !{i32 1913, i32 0, metadata !92, null}
!483 = metadata !{i32 1924, i32 0, metadata !92, null}
!484 = metadata !{metadata !"any pointer", metadata !485}
!485 = metadata !{metadata !"omnipotent char", metadata !486}
!486 = metadata !{metadata !"Simple C/C++ TBAA"}
!487 = metadata !{i32 1925, i32 0, metadata !92, null}
!488 = metadata !{i32 1926, i32 0, metadata !92, null}
!489 = metadata !{i32 1927, i32 0, metadata !92, null}
!490 = metadata !{i32 1928, i32 0, metadata !92, null}
!491 = metadata !{i32 1929, i32 0, metadata !92, null}
!492 = metadata !{metadata !"int", metadata !485}
!493 = metadata !{i32 1930, i32 0, metadata !92, null}
!494 = metadata !{i32 1931, i32 0, metadata !92, null}
!495 = metadata !{i32 1932, i32 0, metadata !92, null}
!496 = metadata !{i32 1933, i32 0, metadata !92, null}
!497 = metadata !{i32 1934, i32 0, metadata !92, null}
!498 = metadata !{i32 1935, i32 0, metadata !92, null}
!499 = metadata !{i32 1936, i32 0, metadata !92, null}
!500 = metadata !{i32 1937, i32 0, metadata !92, null}
!501 = metadata !{i32 1938, i32 0, metadata !92, null}
!502 = metadata !{i32 1941, i32 0, metadata !92, null}
!503 = metadata !{i32 1944, i32 0, metadata !92, null}
!504 = metadata !{i32 1948, i32 0, metadata !92, null}
!505 = metadata !{i32 1949, i32 0, metadata !92, null}
!506 = metadata !{i32 1951, i32 0, metadata !92, null}
!507 = metadata !{i32 1952, i32 0, metadata !92, null}
!508 = metadata !{null}
!509 = metadata !{i32 1953, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !92, i32 1953, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!511 = metadata !{i32 1954, i32 0, metadata !510, null}
!512 = metadata !{%struct.zzzz* null}
!513 = metadata !{i32 1960, i32 0, metadata !92, null}
!514 = metadata !{i32 1961, i32 0, metadata !92, null}
!515 = metadata !{i32 1962, i32 0, metadata !92, null}
!516 = metadata !{i32 1}
!517 = metadata !{i32 1963, i32 0, metadata !518, null}
!518 = metadata !{i32 786443, metadata !1, metadata !92, i32 1963, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!519 = metadata !{i32 1971, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !92, i32 1971, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!521 = metadata !{i32 1964, i32 0, metadata !518, null}
!522 = metadata !{i32 1968, i32 0, metadata !92, null}
!523 = metadata !{i32 1969, i32 0, metadata !92, null}
!524 = metadata !{i8 1}
!525 = metadata !{i32 1970, i32 0, metadata !92, null}
!526 = metadata !{i32 1972, i32 0, metadata !527, null}
!527 = metadata !{i32 786443, metadata !1, metadata !520, i32 1971, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!528 = metadata !{i32 1973, i32 0, metadata !527, null}
!529 = metadata !{i32 1974, i32 0, metadata !527, null}
!530 = metadata !{i32 1975, i32 0, metadata !527, null}
!531 = metadata !{i32 1976, i32 0, metadata !527, null}
!532 = metadata !{i32 1981, i32 0, metadata !92, null}
!533 = metadata !{i32 1982, i32 0, metadata !92, null}
!534 = metadata !{i32 1987, i32 0, metadata !92, null}
!535 = metadata !{i32 1989, i32 0, metadata !92, null}
!536 = metadata !{i32 1990, i32 0, metadata !92, null}
!537 = metadata !{i32 1991, i32 0, metadata !92, null}
!538 = metadata !{i32 1993, i32 0, metadata !92, null}
!539 = metadata !{i32 1994, i32 0, metadata !92, null}
!540 = metadata !{i32 1995, i32 0, metadata !92, null}
!541 = metadata !{i32 1996, i32 0, metadata !92, null}
!542 = metadata !{i32 1997, i32 0, metadata !543, null}
!543 = metadata !{i32 786443, metadata !1, metadata !92, i32 1996, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!544 = metadata !{i32 1998, i32 0, metadata !543, null}
!545 = metadata !{i32 1999, i32 0, metadata !543, null}
!546 = metadata !{i32 2003, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !1, metadata !92, i32 2003, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!548 = metadata !{i32 2004, i32 0, metadata !549, null}
!549 = metadata !{i32 786443, metadata !1, metadata !547, i32 2003, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!550 = metadata !{i32 2042, i32 0, metadata !551, null}
!551 = metadata !{i32 786443, metadata !1, metadata !92, i32 2042, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!552 = metadata !{i32 2005, i32 0, metadata !549, null}
!553 = metadata !{i32 2006, i32 0, metadata !554, null}
!554 = metadata !{i32 786443, metadata !1, metadata !555, i32 2006, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!555 = metadata !{i32 786443, metadata !1, metadata !549, i32 2005, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!556 = metadata !{i32 2007, i32 0, metadata !557, null}
!557 = metadata !{i32 786443, metadata !1, metadata !554, i32 2006, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!558 = metadata !{i32 2008, i32 0, metadata !559, null}
!559 = metadata !{i32 786443, metadata !1, metadata !557, i32 2007, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!560 = metadata !{i32 2009, i32 0, metadata !559, null}
!561 = metadata !{i32 2010, i32 0, metadata !559, null}
!562 = metadata !{i32 2011, i32 0, metadata !559, null}
!563 = metadata !{i32 2012, i32 0, metadata !559, null}
!564 = metadata !{i32 2013, i32 0, metadata !559, null}
!565 = metadata !{i32 2014, i32 0, metadata !559, null}
!566 = metadata !{i32 2015, i32 0, metadata !559, null}
!567 = metadata !{i32 2016, i32 0, metadata !559, null}
!568 = metadata !{i32 2017, i32 0, metadata !559, null}
!569 = metadata !{i32 2018, i32 0, metadata !559, null}
!570 = metadata !{i32 2019, i32 0, metadata !559, null}
!571 = metadata !{i32 2020, i32 0, metadata !559, null}
!572 = metadata !{i32 2021, i32 0, metadata !559, null}
!573 = metadata !{i32 2022, i32 0, metadata !559, null}
!574 = metadata !{i32 2023, i32 0, metadata !559, null}
!575 = metadata !{i32 2024, i32 0, metadata !559, null}
!576 = metadata !{i32 1736, i32 0, metadata !400, metadata !577}
!577 = metadata !{i32 2026, i32 0, metadata !559, null}
!578 = metadata !{i32 1752, i32 0, metadata !400, metadata !577}
!579 = metadata !{i32 2027, i32 0, metadata !559, null}
!580 = metadata !{i32 2028, i32 0, metadata !559, null}
!581 = metadata !{i32 786689, metadata !397, metadata !"fullProgName", metadata !21, i32 16778975, metadata !82, i32 0, metadata !580} ; [ DW_TAG_arg_variable ] [fullProgName] [line 1759]
!582 = metadata !{i32 1759, i32 0, metadata !397, metadata !580}
!583 = metadata !{i32 1761, i32 0, metadata !397, metadata !580}
!584 = metadata !{i32 1795, i32 0, metadata !397, metadata !580}
!585 = metadata !{i32 2029, i32 0, metadata !559, null}
!586 = metadata !{i32 2031, i32 0, metadata !559, null}
!587 = metadata !{i32 2033, i32 0, metadata !559, null}
!588 = metadata !{i32 786689, metadata !397, metadata !"fullProgName", metadata !21, i32 16778975, metadata !82, i32 0, metadata !587} ; [ DW_TAG_arg_variable ] [fullProgName] [line 1759]
!589 = metadata !{i32 1759, i32 0, metadata !397, metadata !587}
!590 = metadata !{i32 1761, i32 0, metadata !397, metadata !587}
!591 = metadata !{i32 1795, i32 0, metadata !397, metadata !587}
!592 = metadata !{i32 2034, i32 0, metadata !559, null}
!593 = metadata !{i32 2043, i32 0, metadata !594, null}
!594 = metadata !{i32 786443, metadata !1, metadata !551, i32 2042, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!595 = metadata !{i32 2044, i32 0, metadata !594, null}
!596 = metadata !{i32 2045, i32 0, metadata !594, null}
!597 = metadata !{i32 2046, i32 0, metadata !594, null}
!598 = metadata !{i32 2047, i32 0, metadata !594, null}
!599 = metadata !{i32 2048, i32 0, metadata !594, null}
!600 = metadata !{i32 2049, i32 0, metadata !594, null}
!601 = metadata !{i32 2050, i32 0, metadata !594, null}
!602 = metadata !{i32 2051, i32 0, metadata !594, null}
!603 = metadata !{i32 2052, i32 0, metadata !594, null}
!604 = metadata !{i32 1736, i32 0, metadata !400, metadata !603}
!605 = metadata !{i32 1752, i32 0, metadata !400, metadata !603}
!606 = metadata !{i32 2053, i32 0, metadata !594, null}
!607 = metadata !{i32 1736, i32 0, metadata !400, metadata !606}
!608 = metadata !{i32 1752, i32 0, metadata !400, metadata !606}
!609 = metadata !{i32 2054, i32 0, metadata !594, null}
!610 = metadata !{i32 2055, i32 0, metadata !594, null}
!611 = metadata !{i32 786689, metadata !394, metadata !"flag", metadata !21, i32 16779019, metadata !82, i32 0, metadata !610} ; [ DW_TAG_arg_variable ] [flag] [line 1803]
!612 = metadata !{i32 1803, i32 0, metadata !394, metadata !610}
!613 = metadata !{i32 1805, i32 0, metadata !394, metadata !610}
!614 = metadata !{i32 2056, i32 0, metadata !594, null}
!615 = metadata !{i32 786689, metadata !394, metadata !"flag", metadata !21, i32 16779019, metadata !82, i32 0, metadata !614} ; [ DW_TAG_arg_variable ] [flag] [line 1803]
!616 = metadata !{i32 1803, i32 0, metadata !394, metadata !614}
!617 = metadata !{i32 1805, i32 0, metadata !394, metadata !614}
!618 = metadata !{i32 2057, i32 0, metadata !594, null}
!619 = metadata !{i32 2058, i32 0, metadata !594, null}
!620 = metadata !{i32 2059, i32 0, metadata !594, null}
!621 = metadata !{i32 2060, i32 0, metadata !594, null}
!622 = metadata !{i32 2060, i32 0, metadata !623, null}
!623 = metadata !{i32 786443, metadata !1, metadata !594, i32 2060, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!624 = metadata !{i32 786689, metadata !397, metadata !"fullProgName", metadata !21, i32 16778975, metadata !82, i32 0, metadata !622} ; [ DW_TAG_arg_variable ] [fullProgName] [line 1759]
!625 = metadata !{i32 1759, i32 0, metadata !397, metadata !622}
!626 = metadata !{i32 1761, i32 0, metadata !397, metadata !622}
!627 = metadata !{i32 1795, i32 0, metadata !397, metadata !622}
!628 = metadata !{i32 2062, i32 0, metadata !594, null}
!629 = metadata !{i32 2063, i32 0, metadata !630, null}
!630 = metadata !{i32 786443, metadata !1, metadata !594, i32 2062, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!631 = metadata !{i32 2064, i32 0, metadata !630, null}
!632 = metadata !{i32 786689, metadata !397, metadata !"fullProgName", metadata !21, i32 16778975, metadata !82, i32 0, metadata !631} ; [ DW_TAG_arg_variable ] [fullProgName] [line 1759]
!633 = metadata !{i32 1759, i32 0, metadata !397, metadata !631}
!634 = metadata !{i32 1761, i32 0, metadata !397, metadata !631}
!635 = metadata !{i32 1795, i32 0, metadata !397, metadata !631}
!636 = metadata !{i32 2065, i32 0, metadata !630, null}
!637 = metadata !{i32 2069, i32 0, metadata !92, null}
!638 = metadata !{i32 2070, i32 0, metadata !92, null}
!639 = metadata !{i32 2071, i32 0, metadata !92, null}
!640 = metadata !{i32 2073, i32 0, metadata !92, null}
!641 = metadata !{i32 2074, i32 0, metadata !642, null}
!642 = metadata !{i32 786443, metadata !1, metadata !92, i32 2073, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!643 = metadata !{i32 2076, i32 0, metadata !642, null}
!644 = metadata !{i32 2079, i32 0, metadata !92, null}
!645 = metadata !{i32 2080, i32 0, metadata !92, null}
!646 = metadata !{i32 2082, i32 0, metadata !92, null}
!647 = metadata !{i32 2084, i32 0, metadata !92, null}
!648 = metadata !{i32 2085, i32 0, metadata !649, null}
!649 = metadata !{i32 786443, metadata !1, metadata !92, i32 2084, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!650 = metadata !{i32 2086, i32 0, metadata !649, null}
!651 = metadata !{i32 2088, i32 0, metadata !649, null}
!652 = metadata !{i32 2092, i32 0, metadata !92, null}
!653 = metadata !{i32 2090, i32 0, metadata !649, null}
!654 = metadata !{i32 2093, i32 0, metadata !655, null}
!655 = metadata !{i32 786443, metadata !1, metadata !92, i32 2092, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!656 = metadata !{i32 2097, i32 0, metadata !657, null}
!657 = metadata !{i32 786443, metadata !1, metadata !658, i32 2097, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!658 = metadata !{i32 786443, metadata !1, metadata !655, i32 2095, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!659 = metadata !{i32 2094, i32 0, metadata !660, null}
!660 = metadata !{i32 786443, metadata !1, metadata !655, i32 2093, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!661 = metadata !{i32 2095, i32 0, metadata !660, null}
!662 = metadata !{i32 2098, i32 0, metadata !663, null}
!663 = metadata !{i32 786443, metadata !1, metadata !657, i32 2097, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!664 = metadata !{i32 2099, i32 0, metadata !663, null}
!665 = metadata !{i32 2100, i32 0, metadata !663, null}
!666 = metadata !{i32 2101, i32 0, metadata !663, null}
!667 = metadata !{i32 2102, i32 0, metadata !663, null}
!668 = metadata !{i32 2108, i32 0, metadata !669, null}
!669 = metadata !{i32 786443, metadata !1, metadata !92, i32 2107, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!670 = metadata !{i32 2109, i32 0, metadata !669, null}
!671 = metadata !{i32 2113, i32 0, metadata !672, null}
!672 = metadata !{i32 786443, metadata !1, metadata !673, i32 2113, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!673 = metadata !{i32 786443, metadata !1, metadata !669, i32 2111, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!674 = metadata !{i32 2110, i32 0, metadata !675, null}
!675 = metadata !{i32 786443, metadata !1, metadata !669, i32 2109, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!676 = metadata !{i32 2111, i32 0, metadata !675, null}
!677 = metadata !{i32 2114, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !672, i32 2113, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!679 = metadata !{i32 2115, i32 0, metadata !678, null}
!680 = metadata !{i32 2116, i32 0, metadata !678, null}
!681 = metadata !{i32 2117, i32 0, metadata !678, null}
!682 = metadata !{i32 2118, i32 0, metadata !678, null}
!683 = metadata !{i32 2120, i32 0, metadata !669, null}
!684 = metadata !{i32 2}
!685 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !686} ; [ DW_TAG_arg_variable ] [v] [line 778]
!686 = metadata !{i32 2121, i32 0, metadata !687, null}
!687 = metadata !{i32 786443, metadata !1, metadata !669, i32 2120, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!688 = metadata !{i32 778, i32 0, metadata !218, metadata !686}
!689 = metadata !{i32 783, i32 0, metadata !218, metadata !686}
!690 = metadata !{i32 2122, i32 0, metadata !687, null}
!691 = metadata !{i32 2127, i32 0, metadata !692, null}
!692 = metadata !{i32 786443, metadata !1, metadata !92, i32 2126, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!693 = metadata !{i32 2128, i32 0, metadata !692, null}
!694 = metadata !{i32 2132, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !696, i32 2132, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!696 = metadata !{i32 786443, metadata !1, metadata !692, i32 2130, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!697 = metadata !{i32 2129, i32 0, metadata !698, null}
!698 = metadata !{i32 786443, metadata !1, metadata !692, i32 2128, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!699 = metadata !{i32 2130, i32 0, metadata !698, null}
!700 = metadata !{i32 2133, i32 0, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !695, i32 2132, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!702 = metadata !{i32 2134, i32 0, metadata !701, null}
!703 = metadata !{i32 2135, i32 0, metadata !701, null}
!704 = metadata !{i32 2136, i32 0, metadata !701, null}
!705 = metadata !{i32 2137, i32 0, metadata !701, null}
!706 = metadata !{i32 2139, i32 0, metadata !692, null}
!707 = metadata !{i32 2140, i32 0, metadata !708, null}
!708 = metadata !{i32 786443, metadata !1, metadata !692, i32 2139, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!709 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !710} ; [ DW_TAG_arg_variable ] [v] [line 778]
!710 = metadata !{i32 2145, i32 0, metadata !708, null}
!711 = metadata !{i32 778, i32 0, metadata !218, metadata !710}
!712 = metadata !{i32 783, i32 0, metadata !218, metadata !710}
!713 = metadata !{i32 2146, i32 0, metadata !708, null}
!714 = metadata !{i32 2153, i32 0, metadata !92, null}
!715 = metadata !{i32 2154, i32 0, metadata !92, null}
!716 = metadata !{i32 2155, i32 0, metadata !116, null}
!717 = metadata !{i32 2156, i32 0, metadata !116, null}
!718 = metadata !{i32 2157, i32 0, metadata !116, null}
!719 = metadata !{i32 2158, i32 0, metadata !116, null}
!720 = metadata !{i32 2161, i32 0, metadata !92, null}
!721 = metadata !{i32 954, i32 0, metadata !440, null}
!722 = metadata !{i32 956, i32 0, metadata !440, null}
!723 = metadata !{i32 957, i32 0, metadata !440, null}
!724 = metadata !{i32 980, i32 0, metadata !440, null}
!725 = metadata !{i32 1005, i32 0, metadata !440, null}
!726 = metadata !{i32 1006, i32 0, metadata !440, null}
!727 = metadata !{i32 1007, i32 0, metadata !440, null}
!728 = metadata !{i32 1008, i32 0, metadata !729, null}
!729 = metadata !{i32 786443, metadata !1, metadata !440, i32 1008, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!730 = metadata !{i32 1062, i32 0, metadata !434, null}
!731 = metadata !{i32 1064, i32 0, metadata !434, null}
!732 = metadata !{i32 1065, i32 0, metadata !733, null}
!733 = metadata !{i32 786443, metadata !1, metadata !434, i32 1064, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!734 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !735} ; [ DW_TAG_arg_variable ] [v] [line 778]
!735 = metadata !{i32 1072, i32 0, metadata !733, null}
!736 = metadata !{i32 778, i32 0, metadata !218, metadata !735}
!737 = metadata !{i32 783, i32 0, metadata !218, metadata !735}
!738 = metadata !{i32 1073, i32 0, metadata !733, null}
!739 = metadata !{i32 1076, i32 0, metadata !434, null}
!740 = metadata !{i32 1077, i32 0, metadata !434, null}
!741 = metadata !{i32 1078, i32 0, metadata !434, null}
!742 = metadata !{i32 1880, i32 0, metadata !422, null}
!743 = metadata !{i32 1885, i32 0, metadata !422, null}
!744 = metadata !{i32 1886, i32 0, metadata !422, null}
!745 = metadata !{i32 1890, i32 0, metadata !746, null}
!746 = metadata !{i32 786443, metadata !1, metadata !747, i32 1889, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!747 = metadata !{i32 786443, metadata !1, metadata !422, i32 1886, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!748 = metadata !{i32 1893, i32 0, metadata !746, null}
!749 = metadata !{metadata !"short", metadata !485}
!750 = metadata !{i32 1894, i32 0, metadata !746, null}
!751 = metadata !{i32 1895, i32 0, metadata !746, null}
!752 = metadata !{i32 1896, i32 0, metadata !753, null}
!753 = metadata !{i32 786443, metadata !1, metadata !746, i32 1895, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!754 = metadata !{i32 1897, i32 0, metadata !755, null}
!755 = metadata !{i32 786443, metadata !1, metadata !753, i32 1897, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!756 = metadata !{i32 1898, i32 0, metadata !753, null}
!757 = metadata !{i32 1899, i32 0, metadata !753, null}
!758 = metadata !{i32 1900, i32 0, metadata !753, null}
!759 = metadata !{i32 1903, i32 0, metadata !422, null}
!760 = metadata !{i32 1862, i32 0, metadata !401, null}
!761 = metadata !{i32 1864, i32 0, metadata !401, null}
!762 = metadata !{i32 1853, i32 0, metadata !417, metadata !763}
!763 = metadata !{i32 1865, i32 0, metadata !408, null}
!764 = metadata !{i32 786688, metadata !417, metadata !"c", metadata !21, i32 1851, metadata !104, i32 0, metadata !763} ; [ DW_TAG_auto_variable ] [c] [line 1851]
!765 = metadata !{i32 1855, i32 0, metadata !417, metadata !763}
!766 = metadata !{i32 1866, i32 0, metadata !408, null}
!767 = metadata !{i32 1867, i32 0, metadata !408, null}
!768 = metadata !{i32 1875, i32 0, metadata !401, null}
!769 = metadata !{i32 1871, i32 0, metadata !410, null}
!770 = metadata !{i32 1872, i32 0, metadata !410, null}
!771 = metadata !{i32 943, i32 0, metadata !389, null}
!772 = metadata !{i32 945, i32 0, metadata !389, null}
!773 = metadata !{i32 948, i32 0, metadata !389, null}
!774 = metadata !{i32 1266, i32 0, metadata !300, null}
!775 = metadata !{i32 1271, i32 0, metadata !300, null}
!776 = metadata !{i32 1273, i32 0, metadata !300, null}
!777 = metadata !{i32 1275, i32 0, metadata !300, null}
!778 = metadata !{i32 1276, i32 0, metadata !300, null}
!779 = metadata !{i32 1278, i32 0, metadata !300, null}
!780 = metadata !{i32 1280, i32 0, metadata !781, null}
!781 = metadata !{i32 786443, metadata !1, metadata !300, i32 1278, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!782 = metadata !{i32 1281, i32 0, metadata !781, null}
!783 = metadata !{i32 1282, i32 0, metadata !781, null}
!784 = metadata !{i32 1284, i32 0, metadata !781, null}
!785 = metadata !{i32 1285, i32 0, metadata !781, null}
!786 = metadata !{i32 1286, i32 0, metadata !781, null}
!787 = metadata !{i32 1287, i32 0, metadata !781, null}
!788 = metadata !{i32 1289, i32 0, metadata !781, null}
!789 = metadata !{i32 1290, i32 0, metadata !781, null}
!790 = metadata !{i32 1291, i32 0, metadata !781, null}
!791 = metadata !{i32 1294, i32 0, metadata !300, null}
!792 = metadata !{i32 1301, i32 0, metadata !300, null}
!793 = metadata !{i32 1302, i32 0, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !300, i32 1301, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!795 = metadata !{i32 1303, i32 0, metadata !794, null}
!796 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !797} ; [ DW_TAG_arg_variable ] [v] [line 778]
!797 = metadata !{i32 1304, i32 0, metadata !794, null}
!798 = metadata !{i32 778, i32 0, metadata !218, metadata !797}
!799 = metadata !{i32 783, i32 0, metadata !218, metadata !797}
!800 = metadata !{i32 1307, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !300, i32 1307, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!802 = metadata !{i32 1308, i32 0, metadata !803, null}
!803 = metadata !{i32 786443, metadata !1, metadata !801, i32 1307, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!804 = metadata !{i32 1309, i32 0, metadata !805, null}
!805 = metadata !{i32 786443, metadata !1, metadata !803, i32 1308, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!806 = metadata !{i32 1310, i32 0, metadata !805, null}
!807 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !808} ; [ DW_TAG_arg_variable ] [v] [line 778]
!808 = metadata !{i32 1313, i32 0, metadata !805, null}
!809 = metadata !{i32 778, i32 0, metadata !218, metadata !808}
!810 = metadata !{i32 783, i32 0, metadata !218, metadata !808}
!811 = metadata !{i32 1317, i32 0, metadata !300, null}
!812 = metadata !{i32 1318, i32 0, metadata !813, null}
!813 = metadata !{i32 786443, metadata !1, metadata !300, i32 1317, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!814 = metadata !{i32 1319, i32 0, metadata !813, null}
!815 = metadata !{i32 1327, i32 0, metadata !300, null}
!816 = metadata !{i32 1320, i32 0, metadata !817, null}
!817 = metadata !{i32 786443, metadata !1, metadata !813, i32 1319, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!818 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !819} ; [ DW_TAG_arg_variable ] [v] [line 778]
!819 = metadata !{i32 1323, i32 0, metadata !817, null}
!820 = metadata !{i32 778, i32 0, metadata !218, metadata !819}
!821 = metadata !{i32 783, i32 0, metadata !218, metadata !819}
!822 = metadata !{i32 1328, i32 0, metadata !823, null}
!823 = metadata !{i32 786443, metadata !1, metadata !300, i32 1327, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!824 = metadata !{i32 1329, i32 0, metadata !823, null}
!825 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !826} ; [ DW_TAG_arg_variable ] [v] [line 778]
!826 = metadata !{i32 1331, i32 0, metadata !823, null}
!827 = metadata !{i32 778, i32 0, metadata !218, metadata !826}
!828 = metadata !{i32 783, i32 0, metadata !218, metadata !826}
!829 = metadata !{i32 1334, i32 0, metadata !300, null}
!830 = metadata !{i32 1335, i32 0, metadata !831, null}
!831 = metadata !{i32 786443, metadata !1, metadata !300, i32 1334, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!832 = metadata !{i32 1336, i32 0, metadata !833, null}
!833 = metadata !{i32 786443, metadata !1, metadata !831, i32 1335, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!834 = metadata !{i32 1343, i32 0, metadata !831, null}
!835 = metadata !{i32 1338, i32 0, metadata !836, null}
!836 = metadata !{i32 786443, metadata !1, metadata !831, i32 1337, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!837 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !838} ; [ DW_TAG_arg_variable ] [v] [line 778]
!838 = metadata !{i32 1340, i32 0, metadata !836, null}
!839 = metadata !{i32 778, i32 0, metadata !218, metadata !838}
!840 = metadata !{i32 783, i32 0, metadata !218, metadata !838}
!841 = metadata !{i32 1344, i32 0, metadata !300, null}
!842 = metadata !{null}
!843 = metadata !{i32 786689, metadata !273, metadata !"name", metadata !21, i32 16778356, metadata !82, i32 0, metadata !844} ; [ DW_TAG_arg_variable ] [name] [line 1140]
!844 = metadata !{i32 1345, i32 0, metadata !300, null}
!845 = metadata !{i32 1140, i32 0, metadata !273, metadata !844}
!846 = metadata !{i32 1143, i32 0, metadata !273, metadata !844}
!847 = metadata !{i32 1145, i32 0, metadata !273, metadata !844}
!848 = metadata !{i32 786688, metadata !273, metadata !"i", metadata !21, i32 1142, metadata !91, i32 0, metadata !844} ; [ DW_TAG_auto_variable ] [i] [line 1142]
!849 = metadata !{i32 1146, i32 0, metadata !273, metadata !844}
!850 = metadata !{i32 1147, i32 0, metadata !273, metadata !844}
!851 = metadata !{metadata !"long", metadata !485}
!852 = metadata !{i32 1148, i32 0, metadata !273, metadata !844}
!853 = metadata !{i32 1346, i32 0, metadata !854, null}
!854 = metadata !{i32 786443, metadata !1, metadata !300, i32 1345, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!855 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !856} ; [ DW_TAG_arg_variable ] [v] [line 778]
!856 = metadata !{i32 1348, i32 0, metadata !854, null}
!857 = metadata !{i32 778, i32 0, metadata !218, metadata !856}
!858 = metadata !{i32 783, i32 0, metadata !218, metadata !856}
!859 = metadata !{i32 1352, i32 0, metadata !300, null}
!860 = metadata !{i32 1355, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !300, i32 1352, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!862 = metadata !{i32 1358, i32 0, metadata !300, null}
!863 = metadata !{i32 1356, i32 0, metadata !861, null}
!864 = metadata !{i32 1361, i32 0, metadata !865, null}
!865 = metadata !{i32 786443, metadata !1, metadata !300, i32 1358, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!866 = metadata !{i32 1362, i32 0, metadata !865, null}
!867 = metadata !{i32 1363, i32 0, metadata !865, null}
!868 = metadata !{i32 1364, i32 0, metadata !869, null}
!869 = metadata !{i32 786443, metadata !1, metadata !865, i32 1363, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!870 = metadata !{i32 1367, i32 0, metadata !869, null}
!871 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !872} ; [ DW_TAG_arg_variable ] [v] [line 778]
!872 = metadata !{i32 1369, i32 0, metadata !869, null}
!873 = metadata !{i32 778, i32 0, metadata !218, metadata !872}
!874 = metadata !{i32 783, i32 0, metadata !218, metadata !872}
!875 = metadata !{i32 1375, i32 0, metadata !865, null}
!876 = metadata !{i32 1376, i32 0, metadata !865, null}
!877 = metadata !{i32 1377, i32 0, metadata !865, null}
!878 = metadata !{i32 1378, i32 0, metadata !879, null}
!879 = metadata !{i32 786443, metadata !1, metadata !865, i32 1377, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!880 = metadata !{i32 1381, i32 0, metadata !879, null}
!881 = metadata !{i32 1383, i32 0, metadata !879, null}
!882 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !883} ; [ DW_TAG_arg_variable ] [v] [line 778]
!883 = metadata !{i32 1384, i32 0, metadata !879, null}
!884 = metadata !{i32 778, i32 0, metadata !218, metadata !883}
!885 = metadata !{i32 783, i32 0, metadata !218, metadata !883}
!886 = metadata !{i32 1387, i32 0, metadata !865, null}
!887 = metadata !{i32 1388, i32 0, metadata !888, null}
!888 = metadata !{i32 786443, metadata !1, metadata !865, i32 1387, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!889 = metadata !{i32 1389, i32 0, metadata !888, null}
!890 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !891} ; [ DW_TAG_arg_variable ] [v] [line 778]
!891 = metadata !{i32 1390, i32 0, metadata !888, null}
!892 = metadata !{i32 778, i32 0, metadata !218, metadata !891}
!893 = metadata !{i32 783, i32 0, metadata !218, metadata !891}
!894 = metadata !{i32 1396, i32 0, metadata !865, null}
!895 = metadata !{i32 1397, i32 0, metadata !865, null}
!896 = metadata !{i32 1398, i32 0, metadata !865, null}
!897 = metadata !{i32 1399, i32 0, metadata !898, null}
!898 = metadata !{i32 786443, metadata !1, metadata !865, i32 1398, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!899 = metadata !{i32 1400, i32 0, metadata !898, null}
!900 = metadata !{i32 1401, i32 0, metadata !898, null}
!901 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !902} ; [ DW_TAG_arg_variable ] [v] [line 778]
!902 = metadata !{i32 1402, i32 0, metadata !898, null}
!903 = metadata !{i32 778, i32 0, metadata !218, metadata !902}
!904 = metadata !{i32 783, i32 0, metadata !218, metadata !902}
!905 = metadata !{i32 1405, i32 0, metadata !865, null}
!906 = metadata !{i32 1406, i32 0, metadata !907, null}
!907 = metadata !{i32 786443, metadata !1, metadata !865, i32 1405, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!908 = metadata !{i32 1407, i32 0, metadata !907, null}
!909 = metadata !{i32 1408, i32 0, metadata !907, null}
!910 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !911} ; [ DW_TAG_arg_variable ] [v] [line 778]
!911 = metadata !{i32 1409, i32 0, metadata !907, null}
!912 = metadata !{i32 778, i32 0, metadata !218, metadata !911}
!913 = metadata !{i32 783, i32 0, metadata !218, metadata !911}
!914 = metadata !{i32 1415, i32 0, metadata !865, null}
!915 = metadata !{i32 1419, i32 0, metadata !300, null}
!916 = metadata !{i32 1420, i32 0, metadata !917, null}
!917 = metadata !{i32 786443, metadata !1, metadata !300, i32 1419, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!918 = metadata !{i32 1421, i32 0, metadata !917, null}
!919 = metadata !{i32 1422, i32 0, metadata !917, null}
!920 = metadata !{i32 1423, i32 0, metadata !917, null}
!921 = metadata !{i32 1426, i32 0, metadata !300, null}
!922 = metadata !{i32 1427, i32 0, metadata !300, null}
!923 = metadata !{i32 438, i32 0, metadata !311, metadata !924}
!924 = metadata !{i32 1428, i32 0, metadata !300, null}
!925 = metadata !{i32 786689, metadata !311, metadata !"stream", metadata !21, i32 16777654, metadata !24, i32 0, metadata !924} ; [ DW_TAG_arg_variable ] [stream] [line 438]
!926 = metadata !{i32 786689, metadata !311, metadata !"zStream", metadata !21, i32 33554870, metadata !24, i32 0, metadata !924} ; [ DW_TAG_arg_variable ] [zStream] [line 438]
!927 = metadata !{i8* null}
!928 = metadata !{i32 786688, metadata !311, metadata !"bzf", metadata !21, i32 441, metadata !67, i32 0, metadata !924} ; [ DW_TAG_auto_variable ] [bzf] [line 441]
!929 = metadata !{i32 441, i32 0, metadata !311, metadata !924}
!930 = metadata !{i32 442, i32 0, metadata !311, metadata !924}
!931 = metadata !{i32 444, i32 0, metadata !311, metadata !924}
!932 = metadata !{i32 445, i32 0, metadata !311, metadata !924}
!933 = metadata !{i32 446, i32 0, metadata !311, metadata !924}
!934 = metadata !{i32 451, i32 0, metadata !311, metadata !924}
!935 = metadata !{i32 452, i32 0, metadata !311, metadata !924}
!936 = metadata !{i32 454, i32 0, metadata !311, metadata !924}
!937 = metadata !{i32 786688, metadata !311, metadata !"bzerr", metadata !21, i32 446, metadata !100, i32 0, metadata !924} ; [ DW_TAG_auto_variable ] [bzerr] [line 446]
!938 = metadata !{i32 456, i32 0, metadata !311, metadata !924}
!939 = metadata !{i32 458, i32 0, metadata !311, metadata !924}
!940 = metadata !{i32 462, i32 0, metadata !941, metadata !924}
!941 = metadata !{i32 786443, metadata !1, metadata !311, i32 460, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!942 = metadata !{i32 463, i32 0, metadata !941, metadata !924}
!943 = metadata !{i32 786688, metadata !311, metadata !"nIbuf", metadata !21, i32 443, metadata !100, i32 0, metadata !924} ; [ DW_TAG_auto_variable ] [nIbuf] [line 443]
!944 = metadata !{i32 464, i32 0, metadata !941, metadata !924}
!945 = metadata !{i32 465, i32 0, metadata !941, metadata !924}
!946 = metadata !{i32 466, i32 0, metadata !941, metadata !924}
!947 = metadata !{i32 470, i32 0, metadata !311, metadata !924}
!948 = metadata !{i32 473, i32 0, metadata !311, metadata !924}
!949 = metadata !{i32 475, i32 0, metadata !311, metadata !924}
!950 = metadata !{i32 476, i32 0, metadata !311, metadata !924}
!951 = metadata !{i32 786688, metadata !311, metadata !"ret", metadata !21, i32 446, metadata !100, i32 0, metadata !924} ; [ DW_TAG_auto_variable ] [ret] [line 446]
!952 = metadata !{i32 477, i32 0, metadata !311, metadata !924}
!953 = metadata !{i32 481, i32 0, metadata !311, metadata !924}
!954 = metadata !{i32 483, i32 0, metadata !955, metadata !924}
!955 = metadata !{i32 786443, metadata !1, metadata !311, i32 481, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!956 = metadata !{i32 484, i32 0, metadata !955, metadata !924}
!957 = metadata !{i32 485, i32 0, metadata !955, metadata !924}
!958 = metadata !{i32 487, i32 0, metadata !311, metadata !924}
!959 = metadata !{i32 488, i32 0, metadata !311, metadata !924}
!960 = metadata !{i32 489, i32 0, metadata !311, metadata !924}
!961 = metadata !{i32 490, i32 0, metadata !311, metadata !924}
!962 = metadata !{i32 492, i32 0, metadata !311, metadata !924}
!963 = metadata !{i32 786688, metadata !311, metadata !"nbytes_in_lo32", metadata !21, i32 444, metadata !321, i32 0, metadata !924} ; [ DW_TAG_auto_variable ] [nbytes_in_lo32] [line 444]
!964 = metadata !{i32 493, i32 0, metadata !330, metadata !924}
!965 = metadata !{i32 786688, metadata !311, metadata !"nbytes_in_hi32", metadata !21, i32 444, metadata !321, i32 0, metadata !924} ; [ DW_TAG_auto_variable ] [nbytes_in_hi32] [line 444]
!966 = metadata !{i32 494, i32 0, metadata !967, metadata !924}
!967 = metadata !{i32 786443, metadata !1, metadata !330, i32 493, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!968 = metadata !{i32 495, i32 0, metadata !967, metadata !924}
!969 = metadata !{i32 496, i32 0, metadata !329, metadata !924}
!970 = metadata !{i32 497, i32 0, metadata !329, metadata !924}
!971 = metadata !{i32 499, i32 0, metadata !329, metadata !924}
!972 = metadata !{i32 786689, metadata !382, metadata !"n", metadata !21, i32 16777556, metadata !350, i32 0, metadata !971} ; [ DW_TAG_arg_variable ] [n] [line 340]
!973 = metadata !{i32 340, i32 0, metadata !382, metadata !971}
!974 = metadata !{i32 786689, metadata !382, metadata !"lo32", metadata !21, i32 33554772, metadata !321, i32 0, metadata !971} ; [ DW_TAG_arg_variable ] [lo32] [line 340]
!975 = metadata !{i32 786689, metadata !382, metadata !"hi32", metadata !21, i32 50331988, metadata !321, i32 0, metadata !971} ; [ DW_TAG_arg_variable ] [hi32] [line 340]
!976 = metadata !{i32 342, i32 0, metadata !382, metadata !971}
!977 = metadata !{i32 343, i32 0, metadata !382, metadata !971}
!978 = metadata !{i32 344, i32 0, metadata !382, metadata !971}
!979 = metadata !{i32 345, i32 0, metadata !382, metadata !971}
!980 = metadata !{i32 346, i32 0, metadata !382, metadata !971}
!981 = metadata !{i32 347, i32 0, metadata !382, metadata !971}
!982 = metadata !{i32 348, i32 0, metadata !382, metadata !971}
!983 = metadata !{i32 349, i32 0, metadata !382, metadata !971}
!984 = metadata !{i32 786688, metadata !311, metadata !"nbytes_out_lo32", metadata !21, i32 445, metadata !321, i32 0, metadata !924} ; [ DW_TAG_auto_variable ] [nbytes_out_lo32] [line 445]
!985 = metadata !{i32 501, i32 0, metadata !329, metadata !924}
!986 = metadata !{i32 786688, metadata !311, metadata !"nbytes_out_hi32", metadata !21, i32 445, metadata !321, i32 0, metadata !924} ; [ DW_TAG_auto_variable ] [nbytes_out_hi32] [line 445]
!987 = metadata !{i32 786689, metadata !382, metadata !"n", metadata !21, i32 16777556, metadata !350, i32 0, metadata !985} ; [ DW_TAG_arg_variable ] [n] [line 340]
!988 = metadata !{i32 340, i32 0, metadata !382, metadata !985}
!989 = metadata !{i32 786689, metadata !382, metadata !"lo32", metadata !21, i32 33554772, metadata !321, i32 0, metadata !985} ; [ DW_TAG_arg_variable ] [lo32] [line 340]
!990 = metadata !{i32 786689, metadata !382, metadata !"hi32", metadata !21, i32 50331988, metadata !321, i32 0, metadata !985} ; [ DW_TAG_arg_variable ] [hi32] [line 340]
!991 = metadata !{i32 342, i32 0, metadata !382, metadata !985}
!992 = metadata !{i32 343, i32 0, metadata !382, metadata !985}
!993 = metadata !{i32 344, i32 0, metadata !382, metadata !985}
!994 = metadata !{i32 345, i32 0, metadata !382, metadata !985}
!995 = metadata !{i32 346, i32 0, metadata !382, metadata !985}
!996 = metadata !{i32 347, i32 0, metadata !382, metadata !985}
!997 = metadata !{i32 348, i32 0, metadata !382, metadata !985}
!998 = metadata !{i32 349, i32 0, metadata !382, metadata !985}
!999 = metadata !{i32 786689, metadata !374, metadata !"n", metadata !21, i32 16777570, metadata !350, i32 0, metadata !1000} ; [ DW_TAG_arg_variable ] [n] [line 354]
!1000 = metadata !{i32 503, i32 0, metadata !329, metadata !924}
!1001 = metadata !{i32 354, i32 0, metadata !374, metadata !1000}
!1002 = metadata !{double 1.000000e+00}
!1003 = metadata !{i32 786688, metadata !374, metadata !"base", metadata !21, i32 357, metadata !345, i32 0, metadata !1000} ; [ DW_TAG_auto_variable ] [base] [line 357]
!1004 = metadata !{i32 357, i32 0, metadata !374, metadata !1000}
!1005 = metadata !{double 0.000000e+00}
!1006 = metadata !{i32 786688, metadata !374, metadata !"sum", metadata !21, i32 358, metadata !345, i32 0, metadata !1000} ; [ DW_TAG_auto_variable ] [sum] [line 358]
!1007 = metadata !{i32 358, i32 0, metadata !374, metadata !1000}
!1008 = metadata !{i32 786688, metadata !374, metadata !"i", metadata !21, i32 356, metadata !100, i32 0, metadata !1000} ; [ DW_TAG_auto_variable ] [i] [line 356]
!1009 = metadata !{i32 359, i32 0, metadata !1010, metadata !1000}
!1010 = metadata !{i32 786443, metadata !1, metadata !374, i32 359, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1011 = metadata !{i32 360, i32 0, metadata !1012, metadata !1000}
!1012 = metadata !{i32 786443, metadata !1, metadata !1010, i32 359, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1013 = metadata !{i32 360, i32 0, metadata !1012, metadata !1014}
!1014 = metadata !{i32 504, i32 0, metadata !329, metadata !924}
!1015 = metadata !{i32 786688, metadata !374, metadata !"sum", metadata !21, i32 358, metadata !345, i32 0, metadata !1014} ; [ DW_TAG_auto_variable ] [sum] [line 358]
!1016 = metadata !{i32 359, i32 0, metadata !1010, metadata !1014}
!1017 = metadata !{i32 786688, metadata !329, metadata !"nbytes_out_d", metadata !21, i32 498, metadata !345, i32 0, metadata !924} ; [ DW_TAG_auto_variable ] [nbytes_out_d] [line 498]
!1018 = metadata !{i32 505, i32 0, metadata !329, metadata !924}
!1019 = metadata !{i32 506, i32 0, metadata !329, metadata !924}
!1020 = metadata !{i32 507, i32 0, metadata !329, metadata !924}
!1021 = metadata !{i32 521, i32 0, metadata !311, metadata !924}
!1022 = metadata !{i32 524, i32 0, metadata !311, metadata !924}
!1023 = metadata !{i32 526, i32 0, metadata !1024, metadata !924}
!1024 = metadata !{i32 786443, metadata !1, metadata !311, i32 524, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1025 = metadata !{i32 528, i32 0, metadata !1024, metadata !924}
!1026 = metadata !{i32 531, i32 0, metadata !1024, metadata !924}
!1027 = metadata !{i32 533, i32 0, metadata !1024, metadata !924}
!1028 = metadata !{i32 533, i32 0, metadata !311, metadata !924}
!1029 = metadata !{i32 538, i32 0, metadata !311, metadata !924}
!1030 = metadata !{i32 1429, i32 0, metadata !300, null}
!1031 = metadata !{i32 1432, i32 0, metadata !300, null}
!1032 = metadata !{i32 1433, i32 0, metadata !310, null}
!1033 = metadata !{i32 1434, i32 0, metadata !310, null}
!1034 = metadata !{i32 1435, i32 0, metadata !310, null}
!1035 = metadata !{i32 1436, i32 0, metadata !309, null}
!1036 = metadata !{i32 1437, i32 0, metadata !1037, null}
!1037 = metadata !{i32 786443, metadata !1, metadata !309, i32 1437, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1038 = metadata !{i32 1441, i32 0, metadata !300, null}
!1039 = metadata !{i32 1442, i32 0, metadata !300, null}
!1040 = metadata !{i32 1447, i32 0, metadata !221, null}
!1041 = metadata !{i32 1454, i32 0, metadata !221, null}
!1042 = metadata !{i32 1456, i32 0, metadata !221, null}
!1043 = metadata !{i32 1458, i32 0, metadata !221, null}
!1044 = metadata !{i32 1459, i32 0, metadata !221, null}
!1045 = metadata !{i8 0}
!1046 = metadata !{i32 1461, i32 0, metadata !221, null}
!1047 = metadata !{i32 1462, i32 0, metadata !221, null}
!1048 = metadata !{i32 1464, i32 0, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !1, metadata !221, i32 1462, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1050 = metadata !{i32 1465, i32 0, metadata !1049, null}
!1051 = metadata !{i32 1466, i32 0, metadata !1049, null}
!1052 = metadata !{i32 1468, i32 0, metadata !1049, null}
!1053 = metadata !{i32 1469, i32 0, metadata !1049, null}
!1054 = metadata !{i32 1470, i32 0, metadata !1055, null}
!1055 = metadata !{i32 786443, metadata !1, metadata !1049, i32 1470, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1056 = metadata !{i32 1471, i32 0, metadata !1055, null}
!1057 = metadata !{null}
!1058 = metadata !{i32 786689, metadata !285, metadata !"name", metadata !21, i32 16778470, metadata !82, i32 0, metadata !1056} ; [ DW_TAG_arg_variable ] [name] [line 1254]
!1059 = metadata !{i32 1254, i32 0, metadata !285, metadata !1056}
!1060 = metadata !{i32 1257, i32 0, metadata !285, metadata !1056}
!1061 = metadata !{i32 1258, i32 0, metadata !285, metadata !1056}
!1062 = metadata !{i32 1259, i32 0, metadata !285, metadata !1056}
!1063 = metadata !{i32 1473, i32 0, metadata !1049, null}
!1064 = metadata !{i32 1474, i32 0, metadata !1049, null}
!1065 = metadata !{i32 1475, i32 0, metadata !1049, null}
!1066 = metadata !{i32 1477, i32 0, metadata !1049, null}
!1067 = metadata !{i32 1478, i32 0, metadata !1049, null}
!1068 = metadata !{i32 1479, i32 0, metadata !1049, null}
!1069 = metadata !{i32 1483, i32 0, metadata !221, null}
!1070 = metadata !{i32 1490, i32 0, metadata !221, null}
!1071 = metadata !{i32 1491, i32 0, metadata !1072, null}
!1072 = metadata !{i32 786443, metadata !1, metadata !221, i32 1490, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1073 = metadata !{i32 1492, i32 0, metadata !1072, null}
!1074 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !1075} ; [ DW_TAG_arg_variable ] [v] [line 778]
!1075 = metadata !{i32 1493, i32 0, metadata !1072, null}
!1076 = metadata !{i32 778, i32 0, metadata !218, metadata !1075}
!1077 = metadata !{i32 783, i32 0, metadata !218, metadata !1075}
!1078 = metadata !{i32 1496, i32 0, metadata !221, null}
!1079 = metadata !{i32 1497, i32 0, metadata !1080, null}
!1080 = metadata !{i32 786443, metadata !1, metadata !221, i32 1496, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1081 = metadata !{i32 1498, i32 0, metadata !1080, null}
!1082 = metadata !{i32 1506, i32 0, metadata !221, null}
!1083 = metadata !{i32 1499, i32 0, metadata !1084, null}
!1084 = metadata !{i32 786443, metadata !1, metadata !1080, i32 1498, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1085 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !1086} ; [ DW_TAG_arg_variable ] [v] [line 778]
!1086 = metadata !{i32 1502, i32 0, metadata !1084, null}
!1087 = metadata !{i32 778, i32 0, metadata !218, metadata !1086}
!1088 = metadata !{i32 783, i32 0, metadata !218, metadata !1086}
!1089 = metadata !{i32 1507, i32 0, metadata !1090, null}
!1090 = metadata !{i32 786443, metadata !1, metadata !221, i32 1506, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1091 = metadata !{i32 1508, i32 0, metadata !1090, null}
!1092 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !1093} ; [ DW_TAG_arg_variable ] [v] [line 778]
!1093 = metadata !{i32 1510, i32 0, metadata !1090, null}
!1094 = metadata !{i32 778, i32 0, metadata !218, metadata !1093}
!1095 = metadata !{i32 783, i32 0, metadata !218, metadata !1093}
!1096 = metadata !{i32 1513, i32 0, metadata !221, null}
!1097 = metadata !{i32 1514, i32 0, metadata !1098, null}
!1098 = metadata !{i32 786443, metadata !1, metadata !221, i32 1513, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1099 = metadata !{i32 1515, i32 0, metadata !1098, null}
!1100 = metadata !{i32 1520, i32 0, metadata !221, null}
!1101 = metadata !{i32 1521, i32 0, metadata !1102, null}
!1102 = metadata !{i32 786443, metadata !1, metadata !221, i32 1520, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1103 = metadata !{i32 1522, i32 0, metadata !1104, null}
!1104 = metadata !{i32 786443, metadata !1, metadata !1102, i32 1521, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1105 = metadata !{i32 1529, i32 0, metadata !1102, null}
!1106 = metadata !{i32 1524, i32 0, metadata !1107, null}
!1107 = metadata !{i32 786443, metadata !1, metadata !1102, i32 1523, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1108 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !1109} ; [ DW_TAG_arg_variable ] [v] [line 778]
!1109 = metadata !{i32 1526, i32 0, metadata !1107, null}
!1110 = metadata !{i32 778, i32 0, metadata !218, metadata !1109}
!1111 = metadata !{i32 783, i32 0, metadata !218, metadata !1109}
!1112 = metadata !{i32 1530, i32 0, metadata !221, null}
!1113 = metadata !{i32 786689, metadata !273, metadata !"name", metadata !21, i32 16778356, metadata !82, i32 0, metadata !1114} ; [ DW_TAG_arg_variable ] [name] [line 1140]
!1114 = metadata !{i32 1531, i32 0, metadata !221, null}
!1115 = metadata !{i32 1140, i32 0, metadata !273, metadata !1114}
!1116 = metadata !{i32 1143, i32 0, metadata !273, metadata !1114}
!1117 = metadata !{i32 1145, i32 0, metadata !273, metadata !1114}
!1118 = metadata !{i32 786688, metadata !273, metadata !"i", metadata !21, i32 1142, metadata !91, i32 0, metadata !1114} ; [ DW_TAG_auto_variable ] [i] [line 1142]
!1119 = metadata !{i32 1146, i32 0, metadata !273, metadata !1114}
!1120 = metadata !{i32 1147, i32 0, metadata !273, metadata !1114}
!1121 = metadata !{i32 1148, i32 0, metadata !273, metadata !1114}
!1122 = metadata !{i32 1532, i32 0, metadata !1123, null}
!1123 = metadata !{i32 786443, metadata !1, metadata !221, i32 1531, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1124 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !1125} ; [ DW_TAG_arg_variable ] [v] [line 778]
!1125 = metadata !{i32 1534, i32 0, metadata !1123, null}
!1126 = metadata !{i32 778, i32 0, metadata !218, metadata !1125}
!1127 = metadata !{i32 783, i32 0, metadata !218, metadata !1125}
!1128 = metadata !{i32 1538, i32 0, metadata !221, null}
!1129 = metadata !{i32 1541, i32 0, metadata !1130, null}
!1130 = metadata !{i32 786443, metadata !1, metadata !221, i32 1538, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1131 = metadata !{i32 1544, i32 0, metadata !221, null}
!1132 = metadata !{i32 1542, i32 0, metadata !1130, null}
!1133 = metadata !{i32 1547, i32 0, metadata !1134, null}
!1134 = metadata !{i32 786443, metadata !1, metadata !221, i32 1544, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1135 = metadata !{i32 1548, i32 0, metadata !1134, null}
!1136 = metadata !{i32 1549, i32 0, metadata !1134, null}
!1137 = metadata !{i32 1550, i32 0, metadata !1138, null}
!1138 = metadata !{i32 786443, metadata !1, metadata !1134, i32 1549, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1139 = metadata !{i32 1553, i32 0, metadata !1138, null}
!1140 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !1141} ; [ DW_TAG_arg_variable ] [v] [line 778]
!1141 = metadata !{i32 1555, i32 0, metadata !1138, null}
!1142 = metadata !{i32 778, i32 0, metadata !218, metadata !1141}
!1143 = metadata !{i32 783, i32 0, metadata !218, metadata !1141}
!1144 = metadata !{i32 1561, i32 0, metadata !1134, null}
!1145 = metadata !{i32 1562, i32 0, metadata !1134, null}
!1146 = metadata !{i32 1563, i32 0, metadata !1134, null}
!1147 = metadata !{i32 1564, i32 0, metadata !1148, null}
!1148 = metadata !{i32 786443, metadata !1, metadata !1134, i32 1563, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1149 = metadata !{i32 1565, i32 0, metadata !1148, null}
!1150 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !1151} ; [ DW_TAG_arg_variable ] [v] [line 778]
!1151 = metadata !{i32 1567, i32 0, metadata !1148, null}
!1152 = metadata !{i32 778, i32 0, metadata !218, metadata !1151}
!1153 = metadata !{i32 783, i32 0, metadata !218, metadata !1151}
!1154 = metadata !{i32 1573, i32 0, metadata !1134, null}
!1155 = metadata !{i32 1574, i32 0, metadata !1134, null}
!1156 = metadata !{i32 1575, i32 0, metadata !1134, null}
!1157 = metadata !{i32 1576, i32 0, metadata !1158, null}
!1158 = metadata !{i32 786443, metadata !1, metadata !1134, i32 1575, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1159 = metadata !{i32 1577, i32 0, metadata !1158, null}
!1160 = metadata !{i32 1578, i32 0, metadata !1158, null}
!1161 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !1162} ; [ DW_TAG_arg_variable ] [v] [line 778]
!1162 = metadata !{i32 1579, i32 0, metadata !1158, null}
!1163 = metadata !{i32 778, i32 0, metadata !218, metadata !1162}
!1164 = metadata !{i32 783, i32 0, metadata !218, metadata !1162}
!1165 = metadata !{i32 1582, i32 0, metadata !1134, null}
!1166 = metadata !{i32 1583, i32 0, metadata !1167, null}
!1167 = metadata !{i32 786443, metadata !1, metadata !1134, i32 1582, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1168 = metadata !{i32 1584, i32 0, metadata !1167, null}
!1169 = metadata !{i32 1585, i32 0, metadata !1167, null}
!1170 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !1171} ; [ DW_TAG_arg_variable ] [v] [line 778]
!1171 = metadata !{i32 1586, i32 0, metadata !1167, null}
!1172 = metadata !{i32 778, i32 0, metadata !218, metadata !1171}
!1173 = metadata !{i32 783, i32 0, metadata !218, metadata !1171}
!1174 = metadata !{i32 1592, i32 0, metadata !1134, null}
!1175 = metadata !{i32 1596, i32 0, metadata !221, null}
!1176 = metadata !{i32 1597, i32 0, metadata !1177, null}
!1177 = metadata !{i32 786443, metadata !1, metadata !221, i32 1596, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1178 = metadata !{i32 1598, i32 0, metadata !1177, null}
!1179 = metadata !{i32 1599, i32 0, metadata !1177, null}
!1180 = metadata !{i32 1600, i32 0, metadata !1177, null}
!1181 = metadata !{i32 1603, i32 0, metadata !221, null}
!1182 = metadata !{i32 1604, i32 0, metadata !221, null}
!1183 = metadata !{i32 547, i32 0, metadata !248, metadata !1184}
!1184 = metadata !{i32 1605, i32 0, metadata !221, null}
!1185 = metadata !{i32 786689, metadata !248, metadata !"zStream", metadata !21, i32 16777763, metadata !24, i32 0, metadata !1184} ; [ DW_TAG_arg_variable ] [zStream] [line 547]
!1186 = metadata !{i32 786689, metadata !248, metadata !"stream", metadata !21, i32 33554979, metadata !24, i32 0, metadata !1184} ; [ DW_TAG_arg_variable ] [stream] [line 547]
!1187 = metadata !{i32 786688, metadata !248, metadata !"bzf", metadata !21, i32 550, metadata !67, i32 0, metadata !1184} ; [ DW_TAG_auto_variable ] [bzf] [line 550]
!1188 = metadata !{i32 550, i32 0, metadata !248, metadata !1184}
!1189 = metadata !{i32 551, i32 0, metadata !248, metadata !1184}
!1190 = metadata !{i32 552, i32 0, metadata !248, metadata !1184}
!1191 = metadata !{i32 553, i32 0, metadata !248, metadata !1184}
!1192 = metadata !{i32 554, i32 0, metadata !248, metadata !1184}
!1193 = metadata !{i32 555, i32 0, metadata !248, metadata !1184}
!1194 = metadata !{i32 786688, metadata !248, metadata !"nUnused", metadata !21, i32 554, metadata !100, i32 0, metadata !1184} ; [ DW_TAG_auto_variable ] [nUnused] [line 554]
!1195 = metadata !{i32 558, i32 0, metadata !248, metadata !1184}
!1196 = metadata !{i32 786688, metadata !248, metadata !"streamNo", metadata !21, i32 551, metadata !100, i32 0, metadata !1184} ; [ DW_TAG_auto_variable ] [streamNo] [line 551]
!1197 = metadata !{i32 559, i32 0, metadata !248, metadata !1184}
!1198 = metadata !{i32 564, i32 0, metadata !248, metadata !1184}
!1199 = metadata !{i32 565, i32 0, metadata !248, metadata !1184}
!1200 = metadata !{i32 569, i32 0, metadata !1201, metadata !1184}
!1201 = metadata !{i32 786443, metadata !1, metadata !248, i32 567, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1202 = metadata !{i32 573, i32 0, metadata !1201, metadata !1184}
!1203 = metadata !{i32 786688, metadata !248, metadata !"bzerr", metadata !21, i32 551, metadata !100, i32 0, metadata !1184} ; [ DW_TAG_auto_variable ] [bzerr] [line 551]
!1204 = metadata !{i32 574, i32 0, metadata !1201, metadata !1184}
!1205 = metadata !{i32 576, i32 0, metadata !1201, metadata !1184}
!1206 = metadata !{i32 577, i32 0, metadata !1207, metadata !1184}
!1207 = metadata !{i32 786443, metadata !1, metadata !1201, i32 576, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1208 = metadata !{i32 786688, metadata !248, metadata !"nread", metadata !21, i32 551, metadata !100, i32 0, metadata !1184} ; [ DW_TAG_auto_variable ] [nread] [line 551]
!1209 = metadata !{i32 578, i32 0, metadata !1207, metadata !1184}
!1210 = metadata !{i32 579, i32 0, metadata !1207, metadata !1184}
!1211 = metadata !{i32 580, i32 0, metadata !1207, metadata !1184}
!1212 = metadata !{i32 581, i32 0, metadata !1207, metadata !1184}
!1213 = metadata !{i32 585, i32 0, metadata !1201, metadata !1184}
!1214 = metadata !{i32 586, i32 0, metadata !1201, metadata !1184}
!1215 = metadata !{i32 786688, metadata !248, metadata !"unusedTmpV", metadata !21, i32 555, metadata !67, i32 0, metadata !1184} ; [ DW_TAG_auto_variable ] [unusedTmpV] [line 555]
!1216 = metadata !{i32 588, i32 0, metadata !1201, metadata !1184}
!1217 = metadata !{i32 786688, metadata !248, metadata !"unusedTmp", metadata !21, i32 556, metadata !183, i32 0, metadata !1184} ; [ DW_TAG_auto_variable ] [unusedTmp] [line 556]
!1218 = metadata !{i32 786688, metadata !248, metadata !"i", metadata !21, i32 551, metadata !100, i32 0, metadata !1184} ; [ DW_TAG_auto_variable ] [i] [line 551]
!1219 = metadata !{i32 589, i32 0, metadata !1220, metadata !1184}
!1220 = metadata !{i32 786443, metadata !1, metadata !1201, i32 589, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1221 = metadata !{i32 591, i32 0, metadata !1201, metadata !1184}
!1222 = metadata !{i32 592, i32 0, metadata !1201, metadata !1184}
!1223 = metadata !{i32 594, i32 0, metadata !1201, metadata !1184}
!1224 = metadata !{i32 598, i32 0, metadata !248, metadata !1184}
!1225 = metadata !{i32 599, i32 0, metadata !248, metadata !1184}
!1226 = metadata !{i32 786688, metadata !248, metadata !"ret", metadata !21, i32 551, metadata !100, i32 0, metadata !1184} ; [ DW_TAG_auto_variable ] [ret] [line 551]
!1227 = metadata !{i32 600, i32 0, metadata !248, metadata !1184}
!1228 = metadata !{i32 602, i32 0, metadata !248, metadata !1184}
!1229 = metadata !{i32 603, i32 0, metadata !248, metadata !1184}
!1230 = metadata !{i32 604, i32 0, metadata !248, metadata !1184}
!1231 = metadata !{i32 608, i32 0, metadata !248, metadata !1184}
!1232 = metadata !{i32 610, i32 0, metadata !1233, metadata !1184}
!1233 = metadata !{i32 786443, metadata !1, metadata !248, i32 608, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1234 = metadata !{i32 611, i32 0, metadata !1233, metadata !1184}
!1235 = metadata !{i32 612, i32 0, metadata !1233, metadata !1184}
!1236 = metadata !{i32 614, i32 0, metadata !248, metadata !1184}
!1237 = metadata !{i32 615, i32 0, metadata !248, metadata !1184}
!1238 = metadata !{i32 619, i32 0, metadata !248, metadata !1184}
!1239 = metadata !{i32 620, i32 0, metadata !1240, metadata !1184}
!1240 = metadata !{i32 786443, metadata !1, metadata !248, i32 619, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1241 = metadata !{i32 621, i32 0, metadata !1240, metadata !1184}
!1242 = metadata !{i32 622, i32 0, metadata !1243, metadata !1184}
!1243 = metadata !{i32 786443, metadata !1, metadata !1240, i32 621, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1244 = metadata !{i32 623, i32 0, metadata !1243, metadata !1184}
!1245 = metadata !{i32 624, i32 0, metadata !1243, metadata !1184}
!1246 = metadata !{i32 625, i32 0, metadata !1243, metadata !1184}
!1247 = metadata !{i32 626, i32 0, metadata !1243, metadata !1184}
!1248 = metadata !{i32 632, i32 0, metadata !248, metadata !1184}
!1249 = metadata !{i32 633, i32 0, metadata !248, metadata !1184}
!1250 = metadata !{i32 635, i32 0, metadata !1251, metadata !1184}
!1251 = metadata !{i32 786443, metadata !1, metadata !248, i32 633, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1252 = metadata !{i32 638, i32 0, metadata !1251, metadata !1184}
!1253 = metadata !{i32 901, i32 0, metadata !268, metadata !1254}
!1254 = metadata !{i32 640, i32 0, metadata !1251, metadata !1184}
!1255 = metadata !{i32 904, i32 0, metadata !268, metadata !1254}
!1256 = metadata !{i32 905, i32 0, metadata !268, metadata !1254}
!1257 = metadata !{i32 906, i32 0, metadata !268, metadata !1254}
!1258 = metadata !{i32 642, i32 0, metadata !1251, metadata !1184}
!1259 = metadata !{i32 914, i32 0, metadata !266, metadata !1260}
!1260 = metadata !{i32 644, i32 0, metadata !1251, metadata !1184}
!1261 = metadata !{i32 915, i32 0, metadata !1262, metadata !1260}
!1262 = metadata !{i32 786443, metadata !1, metadata !266, i32 914, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1263 = metadata !{i32 919, i32 0, metadata !1262, metadata !1260}
!1264 = metadata !{i32 920, i32 0, metadata !1262, metadata !1260}
!1265 = metadata !{i32 921, i32 0, metadata !1262, metadata !1260}
!1266 = metadata !{i32 922, i32 0, metadata !1262, metadata !1260}
!1267 = metadata !{i32 923, i32 0, metadata !266, metadata !1260}
!1268 = metadata !{i32 650, i32 0, metadata !1251, metadata !1184}
!1269 = metadata !{i32 651, i32 0, metadata !1251, metadata !1184}
!1270 = metadata !{i32 653, i32 0, metadata !1251, metadata !1184}
!1271 = metadata !{i32 656, i32 0, metadata !1272, metadata !1184}
!1272 = metadata !{i32 786443, metadata !1, metadata !1251, i32 655, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1273 = metadata !{i32 657, i32 0, metadata !1272, metadata !1184}
!1274 = metadata !{i32 663, i32 0, metadata !1251, metadata !1184}
!1275 = metadata !{i32 663, i32 0, metadata !248, metadata !1184}
!1276 = metadata !{i32 668, i32 0, metadata !248, metadata !1184}
!1277 = metadata !{i32 1606, i32 0, metadata !221, null}
!1278 = metadata !{i32 1609, i32 0, metadata !221, null}
!1279 = metadata !{i32 1610, i32 0, metadata !234, null}
!1280 = metadata !{i32 1626, i32 0, metadata !221, null}
!1281 = metadata !{i32 1628, i32 0, metadata !221, null}
!1282 = metadata !{i32 1611, i32 0, metadata !233, null}
!1283 = metadata !{i32 1612, i32 0, metadata !233, null}
!1284 = metadata !{i32 1613, i32 0, metadata !233, null}
!1285 = metadata !{i32 1614, i32 0, metadata !232, null}
!1286 = metadata !{i32 1615, i32 0, metadata !1287, null}
!1287 = metadata !{i32 786443, metadata !1, metadata !232, i32 1615, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1288 = metadata !{i32 1619, i32 0, metadata !237, null}
!1289 = metadata !{i32 1620, i32 0, metadata !237, null}
!1290 = metadata !{i32 1621, i32 0, metadata !237, null}
!1291 = metadata !{i32 1622, i32 0, metadata !236, null}
!1292 = metadata !{i32 1623, i32 0, metadata !1293, null}
!1293 = metadata !{i32 786443, metadata !1, metadata !236, i32 1623, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1294 = metadata !{i32 1629, i32 0, metadata !1295, null}
!1295 = metadata !{i32 786443, metadata !1, metadata !221, i32 1628, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1296 = metadata !{i32 1630, i32 0, metadata !1295, null}
!1297 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !1298} ; [ DW_TAG_arg_variable ] [v] [line 778]
!1298 = metadata !{i32 1632, i32 0, metadata !1299, null}
!1299 = metadata !{i32 786443, metadata !1, metadata !221, i32 1631, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1300 = metadata !{i32 778, i32 0, metadata !218, metadata !1298}
!1301 = metadata !{i32 783, i32 0, metadata !218, metadata !1298}
!1302 = metadata !{i32 1633, i32 0, metadata !1299, null}
!1303 = metadata !{i32 1634, i32 0, metadata !1299, null}
!1304 = metadata !{i32 1635, i32 0, metadata !1299, null}
!1305 = metadata !{i32 1635, i32 0, metadata !221, null}
!1306 = metadata !{i32 1640, i32 0, metadata !221, null}
!1307 = metadata !{i32 1645, i32 0, metadata !117, null}
!1308 = metadata !{i32 1649, i32 0, metadata !117, null}
!1309 = metadata !{i32 1651, i32 0, metadata !117, null}
!1310 = metadata !{i32 1653, i32 0, metadata !117, null}
!1311 = metadata !{i32 1654, i32 0, metadata !117, null}
!1312 = metadata !{i32 1656, i32 0, metadata !117, null}
!1313 = metadata !{i32 1657, i32 0, metadata !117, null}
!1314 = metadata !{i32 1658, i32 0, metadata !1315, null}
!1315 = metadata !{i32 786443, metadata !1, metadata !117, i32 1657, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1316 = metadata !{i32 1659, i32 0, metadata !1315, null}
!1317 = metadata !{i32 1660, i32 0, metadata !1315, null}
!1318 = metadata !{i32 1670, i32 0, metadata !117, null}
!1319 = metadata !{i32 1671, i32 0, metadata !1320, null}
!1320 = metadata !{i32 786443, metadata !1, metadata !117, i32 1670, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1321 = metadata !{i32 1672, i32 0, metadata !1320, null}
!1322 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !1323} ; [ DW_TAG_arg_variable ] [v] [line 778]
!1323 = metadata !{i32 1673, i32 0, metadata !1320, null}
!1324 = metadata !{i32 778, i32 0, metadata !218, metadata !1323}
!1325 = metadata !{i32 783, i32 0, metadata !218, metadata !1323}
!1326 = metadata !{i32 1676, i32 0, metadata !117, null}
!1327 = metadata !{i32 1677, i32 0, metadata !1328, null}
!1328 = metadata !{i32 786443, metadata !1, metadata !117, i32 1676, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1329 = metadata !{i32 1678, i32 0, metadata !1328, null}
!1330 = metadata !{i32 1679, i32 0, metadata !1331, null}
!1331 = metadata !{i32 786443, metadata !1, metadata !1328, i32 1678, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1332 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !1333} ; [ DW_TAG_arg_variable ] [v] [line 778]
!1333 = metadata !{i32 1682, i32 0, metadata !1331, null}
!1334 = metadata !{i32 778, i32 0, metadata !218, metadata !1333}
!1335 = metadata !{i32 783, i32 0, metadata !218, metadata !1333}
!1336 = metadata !{i32 1687, i32 0, metadata !117, null}
!1337 = metadata !{i32 1690, i32 0, metadata !1338, null}
!1338 = metadata !{i32 786443, metadata !1, metadata !117, i32 1687, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1339 = metadata !{i32 1691, i32 0, metadata !1340, null}
!1340 = metadata !{i32 786443, metadata !1, metadata !1338, i32 1690, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1341 = metadata !{i32 1694, i32 0, metadata !1340, null}
!1342 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !1343} ; [ DW_TAG_arg_variable ] [v] [line 778]
!1343 = metadata !{i32 1696, i32 0, metadata !1340, null}
!1344 = metadata !{i32 778, i32 0, metadata !218, metadata !1343}
!1345 = metadata !{i32 783, i32 0, metadata !218, metadata !1343}
!1346 = metadata !{i32 1699, i32 0, metadata !1338, null}
!1347 = metadata !{i32 1700, i32 0, metadata !1338, null}
!1348 = metadata !{i32 1703, i32 0, metadata !1338, null}
!1349 = metadata !{i32 1704, i32 0, metadata !1338, null}
!1350 = metadata !{i32 1705, i32 0, metadata !1351, null}
!1351 = metadata !{i32 786443, metadata !1, metadata !1338, i32 1704, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1352 = metadata !{i32 1706, i32 0, metadata !1351, null}
!1353 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !1354} ; [ DW_TAG_arg_variable ] [v] [line 778]
!1354 = metadata !{i32 1707, i32 0, metadata !1351, null}
!1355 = metadata !{i32 778, i32 0, metadata !218, metadata !1354}
!1356 = metadata !{i32 783, i32 0, metadata !218, metadata !1354}
!1357 = metadata !{i32 1713, i32 0, metadata !1338, null}
!1358 = metadata !{i32 1717, i32 0, metadata !117, null}
!1359 = metadata !{i32 1718, i32 0, metadata !1360, null}
!1360 = metadata !{i32 786443, metadata !1, metadata !117, i32 1717, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1361 = metadata !{i32 1719, i32 0, metadata !1360, null}
!1362 = metadata !{i32 1720, i32 0, metadata !1360, null}
!1363 = metadata !{i32 1721, i32 0, metadata !1360, null}
!1364 = metadata !{i32 1724, i32 0, metadata !117, null}
!1365 = metadata !{i32 676, i32 0, metadata !162, metadata !1366}
!1366 = metadata !{i32 1725, i32 0, metadata !117, null}
!1367 = metadata !{i32 786689, metadata !162, metadata !"zStream", metadata !21, i32 16777892, metadata !24, i32 0, metadata !1366} ; [ DW_TAG_arg_variable ] [zStream] [line 676]
!1368 = metadata !{i32 786688, metadata !162, metadata !"bzf", metadata !21, i32 679, metadata !67, i32 0, metadata !1366} ; [ DW_TAG_auto_variable ] [bzf] [line 679]
!1369 = metadata !{i32 679, i32 0, metadata !162, metadata !1366}
!1370 = metadata !{i32 680, i32 0, metadata !162, metadata !1366}
!1371 = metadata !{i32 681, i32 0, metadata !162, metadata !1366}
!1372 = metadata !{i32 682, i32 0, metadata !162, metadata !1366}
!1373 = metadata !{i32 683, i32 0, metadata !162, metadata !1366}
!1374 = metadata !{i32 684, i32 0, metadata !162, metadata !1366}
!1375 = metadata !{i32 786688, metadata !162, metadata !"nUnused", metadata !21, i32 683, metadata !100, i32 0, metadata !1366} ; [ DW_TAG_auto_variable ] [nUnused] [line 683]
!1376 = metadata !{i32 687, i32 0, metadata !162, metadata !1366}
!1377 = metadata !{i32 786688, metadata !162, metadata !"streamNo", metadata !21, i32 680, metadata !100, i32 0, metadata !1366} ; [ DW_TAG_auto_variable ] [streamNo] [line 680]
!1378 = metadata !{i32 688, i32 0, metadata !162, metadata !1366}
!1379 = metadata !{i32 691, i32 0, metadata !162, metadata !1366}
!1380 = metadata !{i32 695, i32 0, metadata !1381, metadata !1366}
!1381 = metadata !{i32 786443, metadata !1, metadata !162, i32 693, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1382 = metadata !{i32 699, i32 0, metadata !1381, metadata !1366}
!1383 = metadata !{i32 786688, metadata !162, metadata !"bzerr", metadata !21, i32 680, metadata !100, i32 0, metadata !1366} ; [ DW_TAG_auto_variable ] [bzerr] [line 680]
!1384 = metadata !{i32 700, i32 0, metadata !1381, metadata !1366}
!1385 = metadata !{i32 702, i32 0, metadata !1381, metadata !1366}
!1386 = metadata !{i32 703, i32 0, metadata !1387, metadata !1366}
!1387 = metadata !{i32 786443, metadata !1, metadata !1381, i32 702, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1388 = metadata !{i32 786688, metadata !162, metadata !"nread", metadata !21, i32 680, metadata !100, i32 0, metadata !1366} ; [ DW_TAG_auto_variable ] [nread] [line 680]
!1389 = metadata !{i32 704, i32 0, metadata !1387, metadata !1366}
!1390 = metadata !{i32 708, i32 0, metadata !1381, metadata !1366}
!1391 = metadata !{i32 709, i32 0, metadata !1381, metadata !1366}
!1392 = metadata !{i32 786688, metadata !162, metadata !"unusedTmpV", metadata !21, i32 684, metadata !67, i32 0, metadata !1366} ; [ DW_TAG_auto_variable ] [unusedTmpV] [line 684]
!1393 = metadata !{i32 711, i32 0, metadata !1381, metadata !1366}
!1394 = metadata !{i32 786688, metadata !162, metadata !"unusedTmp", metadata !21, i32 685, metadata !183, i32 0, metadata !1366} ; [ DW_TAG_auto_variable ] [unusedTmp] [line 685]
!1395 = metadata !{i32 786688, metadata !162, metadata !"i", metadata !21, i32 680, metadata !100, i32 0, metadata !1366} ; [ DW_TAG_auto_variable ] [i] [line 680]
!1396 = metadata !{i32 712, i32 0, metadata !1397, metadata !1366}
!1397 = metadata !{i32 786443, metadata !1, metadata !1381, i32 712, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1398 = metadata !{i32 714, i32 0, metadata !1381, metadata !1366}
!1399 = metadata !{i32 715, i32 0, metadata !1381, metadata !1366}
!1400 = metadata !{i32 716, i32 0, metadata !1381, metadata !1366}
!1401 = metadata !{i32 720, i32 0, metadata !162, metadata !1366}
!1402 = metadata !{i32 721, i32 0, metadata !162, metadata !1366}
!1403 = metadata !{i32 786688, metadata !162, metadata !"ret", metadata !21, i32 680, metadata !100, i32 0, metadata !1366} ; [ DW_TAG_auto_variable ] [ret] [line 680]
!1404 = metadata !{i32 722, i32 0, metadata !162, metadata !1366}
!1405 = metadata !{i32 724, i32 0, metadata !162, metadata !1366}
!1406 = metadata !{i32 728, i32 0, metadata !162, metadata !1366}
!1407 = metadata !{i32 729, i32 0, metadata !162, metadata !1366}
!1408 = metadata !{i32 730, i32 0, metadata !162, metadata !1366}
!1409 = metadata !{i32 731, i32 0, metadata !162, metadata !1366}
!1410 = metadata !{i32 733, i32 0, metadata !1411, metadata !1366}
!1411 = metadata !{i32 786443, metadata !1, metadata !162, i32 731, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1412 = metadata !{i32 736, i32 0, metadata !1411, metadata !1366}
!1413 = metadata !{i32 738, i32 0, metadata !1411, metadata !1366}
!1414 = metadata !{i32 740, i32 0, metadata !1411, metadata !1366}
!1415 = metadata !{i32 742, i32 0, metadata !1411, metadata !1366}
!1416 = metadata !{i32 744, i32 0, metadata !1411, metadata !1366}
!1417 = metadata !{i32 746, i32 0, metadata !1411, metadata !1366}
!1418 = metadata !{i32 751, i32 0, metadata !1411, metadata !1366}
!1419 = metadata !{i32 753, i32 0, metadata !1411, metadata !1366}
!1420 = metadata !{i32 754, i32 0, metadata !1421, metadata !1366}
!1421 = metadata !{i32 786443, metadata !1, metadata !1411, i32 753, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1422 = metadata !{i32 756, i32 0, metadata !1421, metadata !1366}
!1423 = metadata !{i32 758, i32 0, metadata !1424, metadata !1366}
!1424 = metadata !{i32 786443, metadata !1, metadata !1411, i32 757, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1425 = metadata !{i32 759, i32 0, metadata !1424, metadata !1366}
!1426 = metadata !{i32 764, i32 0, metadata !1411, metadata !1366}
!1427 = metadata !{i32 764, i32 0, metadata !162, metadata !1366}
!1428 = metadata !{i32 769, i32 0, metadata !162, metadata !1366}
!1429 = metadata !{i32 1727, i32 0, metadata !117, null}
!1430 = metadata !{i32 1728, i32 0, metadata !117, null}
!1431 = metadata !{i32 1729, i32 0, metadata !117, null}
!1432 = metadata !{i32 879, i32 0, metadata !215, null}
!1433 = metadata !{i32 881, i32 0, metadata !215, null}
!1434 = metadata !{i32 892, i32 0, metadata !215, null}
!1435 = metadata !{i32 893, i32 0, metadata !215, null}
!1436 = metadata !{i32 1083, i32 0, metadata !205, null}
!1437 = metadata !{i32 1085, i32 0, metadata !205, null}
!1438 = metadata !{i32 1086, i32 0, metadata !205, null}
!1439 = metadata !{i32 1087, i32 0, metadata !205, null}
!1440 = metadata !{i32 1088, i32 0, metadata !205, null}
!1441 = metadata !{i32 1051, i32 0, metadata !201, null}
!1442 = metadata !{i32 1054, i32 0, metadata !201, null}
!1443 = metadata !{i32 1055, i32 0, metadata !1444, null}
!1444 = metadata !{i32 786443, metadata !1, metadata !201, i32 1055, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1445 = metadata !{i32 1056, i32 0, metadata !1444, null}
!1446 = metadata !{i32 1055, i32 0, metadata !201, null}
!1447 = metadata !{i32 423, i32 0, metadata !197, null}
!1448 = metadata !{i32 426, i32 0, metadata !197, null}
!1449 = metadata !{i32 427, i32 0, metadata !197, null}
!1450 = metadata !{i32 428, i32 0, metadata !197, null}
!1451 = metadata !{i32 429, i32 0, metadata !197, null}
!1452 = metadata !{i32 1028, i32 0, metadata !196, null}
!1453 = metadata !{i32 3}
!1454 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !1455} ; [ DW_TAG_arg_variable ] [v] [line 778]
!1455 = metadata !{i32 1034, i32 0, metadata !196, null}
!1456 = metadata !{i32 778, i32 0, metadata !218, metadata !1455}
!1457 = metadata !{i32 783, i32 0, metadata !218, metadata !1455}
!1458 = metadata !{i32 1035, i32 0, metadata !196, null}
!1459 = metadata !{i32 931, i32 0, metadata !195, null}
!1460 = metadata !{i32 935, i32 0, metadata !195, null}
!1461 = metadata !{i32 936, i32 0, metadata !195, null}
!1462 = metadata !{i32 937, i32 0, metadata !195, null}
!1463 = metadata !{i32 1016, i32 0, metadata !184, null}
!1464 = metadata !{i32 1019, i32 0, metadata !184, null}
!1465 = metadata !{i32 1020, i32 0, metadata !184, null}
!1466 = metadata !{i32 807, i32 0, metadata !194, null}
!1467 = metadata !{i32 808, i32 0, metadata !194, null}
!1468 = metadata !{i32 813, i32 0, metadata !194, null}
!1469 = metadata !{i32 818, i32 0, metadata !187, null}
!1470 = metadata !{i32 822, i32 0, metadata !187, null}
!1471 = metadata !{i32 824, i32 0, metadata !187, null}
!1472 = metadata !{i32 833, i32 0, metadata !1473, null}
!1473 = metadata !{i32 786443, metadata !1, metadata !187, i32 826, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1474 = metadata !{i32 834, i32 0, metadata !1473, null}
!1475 = metadata !{i32 835, i32 0, metadata !1476, null}
!1476 = metadata !{i32 786443, metadata !1, metadata !1473, i32 834, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1477 = metadata !{i32 836, i32 0, metadata !1476, null}
!1478 = metadata !{i32 839, i32 0, metadata !1476, null}
!1479 = metadata !{i32 840, i32 0, metadata !1476, null}
!1480 = metadata !{i32 841, i32 0, metadata !1476, null}
!1481 = metadata !{i32 842, i32 0, metadata !1476, null}
!1482 = metadata !{i32 843, i32 0, metadata !1476, null}
!1483 = metadata !{i32 848, i32 0, metadata !1484, null}
!1484 = metadata !{i32 786443, metadata !1, metadata !1473, i32 847, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1485 = metadata !{i32 851, i32 0, metadata !1484, null}
!1486 = metadata !{i32 854, i32 0, metadata !1484, null}
!1487 = metadata !{i32 857, i32 0, metadata !1484, null}
!1488 = metadata !{i32 864, i32 0, metadata !187, null}
!1489 = metadata !{i32 865, i32 0, metadata !1490, null}
!1490 = metadata !{i32 786443, metadata !1, metadata !187, i32 864, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1491 = metadata !{i32 870, i32 0, metadata !1490, null}
!1492 = metadata !{i32 786689, metadata !218, metadata !"v", metadata !21, i32 16777994, metadata !100, i32 0, metadata !1493} ; [ DW_TAG_arg_variable ] [v] [line 778]
!1493 = metadata !{i32 872, i32 0, metadata !187, null}
!1494 = metadata !{i32 778, i32 0, metadata !218, metadata !1493}
!1495 = metadata !{i32 783, i32 0, metadata !218, metadata !1493}
!1496 = metadata !{i32 873, i32 0, metadata !187, null}
!1497 = metadata !{i32 1123, i32 0, metadata !280, null}
!1498 = metadata !{i32 1126, i32 0, metadata !280, null}
!1499 = metadata !{i32 1128, i32 0, metadata !280, null}
!1500 = metadata !{i32 1129, i32 0, metadata !280, null}
!1501 = metadata !{i32 1130, i32 0, metadata !280, null}
!1502 = metadata !{i32 1131, i32 0, metadata !280, null}
!1503 = metadata !{i32 1132, i32 0, metadata !280, null}
!1504 = metadata !{i32 1180, i32 0, metadata !269, null}
!1505 = metadata !{i32 1185, i32 0, metadata !269, null}
!1506 = metadata !{i32 1186, i32 0, metadata !1507, null}
!1507 = metadata !{i32 786443, metadata !1, metadata !269, i32 1186, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1508 = metadata !{i32 1188, i32 0, metadata !269, null}
!1509 = metadata !{i32 1192, i32 0, metadata !238, null}
!1510 = metadata !{i32 1196, i32 0, metadata !238, null}
!1511 = metadata !{i32 1198, i32 0, metadata !238, null}
!1512 = metadata !{i32 1199, i32 0, metadata !238, null}
!1513 = metadata !{i32 1201, i32 0, metadata !238, null}
!1514 = metadata !{i32 1202, i32 0, metadata !1515, null}
!1515 = metadata !{i32 786443, metadata !1, metadata !238, i32 1202, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1516 = metadata !{i32 1204, i32 0, metadata !238, null}
!1517 = metadata !{i32 1205, i32 0, metadata !1518, null}
!1518 = metadata !{i32 786443, metadata !1, metadata !238, i32 1205, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1519 = metadata !{i32 1207, i32 0, metadata !238, null}
!1520 = metadata !{i32 1212, i32 0, metadata !238, null}
!1521 = metadata !{i32 792, i32 0, metadata !267, null}
!1522 = metadata !{i32 793, i32 0, metadata !267, null}
!1523 = metadata !{i32 800, i32 0, metadata !267, null}
!1524 = metadata !{i32 1244, i32 0, metadata !292, null}
!1525 = metadata !{i32 1246, i32 0, metadata !292, null}
!1526 = metadata !{i32 1247, i32 0, metadata !292, null}
!1527 = metadata !{i32 1248, i32 0, metadata !292, null}
!1528 = metadata !{i32 1249, i32 0, metadata !292, null}
!1529 = metadata !{i32 1250, i32 0, metadata !292, null}
!1530 = metadata !{i32 402, i32 0, metadata !347, null}
!1531 = metadata !{i32 397, i32 0, metadata !347, null}
!1532 = metadata !{i32 400, i32 0, metadata !347, null}
!1533 = metadata !{i32 401, i32 0, metadata !347, null}
!1534 = metadata !{i32 403, i32 0, metadata !347, null}
!1535 = metadata !{i32 786689, metadata !366, metadata !"n", metadata !21, i32 16777595, metadata !350, i32 0, metadata !1536} ; [ DW_TAG_arg_variable ] [n] [line 379]
!1536 = metadata !{i32 404, i32 0, metadata !1537, null}
!1537 = metadata !{i32 786443, metadata !1, metadata !347, i32 403, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1538 = metadata !{i32 379, i32 0, metadata !366, metadata !1536}
!1539 = metadata !{i32 786688, metadata !366, metadata !"rem", metadata !21, i32 381, metadata !321, i32 0, metadata !1536} ; [ DW_TAG_auto_variable ] [rem] [line 381]
!1540 = metadata !{i32 383, i32 0, metadata !366, metadata !1536}
!1541 = metadata !{i32 7}
!1542 = metadata !{i32 786688, metadata !366, metadata !"i", metadata !21, i32 382, metadata !100, i32 0, metadata !1536} ; [ DW_TAG_auto_variable ] [i] [line 382]
!1543 = metadata !{i32 384, i32 0, metadata !1544, metadata !1536}
!1544 = metadata !{i32 786443, metadata !1, metadata !366, i32 384, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1545 = metadata !{i32 385, i32 0, metadata !1546, metadata !1536}
!1546 = metadata !{i32 786443, metadata !1, metadata !1544, i32 384, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1547 = metadata !{i32 786688, metadata !366, metadata !"tmp", metadata !21, i32 381, metadata !321, i32 0, metadata !1536} ; [ DW_TAG_auto_variable ] [tmp] [line 381]
!1548 = metadata !{i32 386, i32 0, metadata !1546, metadata !1536}
!1549 = metadata !{i32 387, i32 0, metadata !1546, metadata !1536}
!1550 = metadata !{i32 405, i32 0, metadata !1537, null}
!1551 = metadata !{i32 406, i32 0, metadata !1537, null}
!1552 = metadata !{i32 786689, metadata !360, metadata !"n", metadata !21, i32 16777584, metadata !350, i32 0, metadata !1553} ; [ DW_TAG_arg_variable ] [n] [line 368]
!1553 = metadata !{i32 407, i32 0, metadata !347, null}
!1554 = metadata !{i32 368, i32 0, metadata !360, metadata !1553}
!1555 = metadata !{i32 786688, metadata !360, metadata !"i", metadata !21, i32 370, metadata !100, i32 0, metadata !1553} ; [ DW_TAG_auto_variable ] [i] [line 370]
!1556 = metadata !{i32 371, i32 0, metadata !1557, metadata !1553}
!1557 = metadata !{i32 786443, metadata !1, metadata !360, i32 371, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1558 = metadata !{i32 372, i32 0, metadata !1557, metadata !1553}
!1559 = metadata !{i32 408, i32 0, metadata !347, null}
!1560 = metadata !{i32 409, i32 0, metadata !1561, null}
!1561 = metadata !{i32 786443, metadata !1, metadata !347, i32 409, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c]
!1562 = metadata !{i32 410, i32 0, metadata !1561, null}
!1563 = metadata !{i32 411, i32 0, metadata !347, null}
!1564 = metadata !{i32 1837, i32 0, metadata !411, null}
!1565 = metadata !{i32 1841, i32 0, metadata !411, null}
!1566 = metadata !{i32 1842, i32 0, metadata !411, null}
!1567 = metadata !{i32 1843, i32 0, metadata !411, null}
