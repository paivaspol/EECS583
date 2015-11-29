; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/401.bzip2/src/bzip2.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
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
@outputHandleJustInCase = common global %struct.__sFILE* null, align 8
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
@__stderrp = external global %struct.__sFILE*
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
@.str36 = private unnamed_addr constant [869 x i8] c"\0A%s: Caught a SIGSEGV or SIGBUS whilst compressing.\0A\0A   Possible causes are (most likely first):\0A   (1) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (2) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (3) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (1) and (2).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (1)\0A   or (2), feel free to report it to me at: jseward@bzip.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1
@.str37 = private unnamed_addr constant [996 x i8] c"\0A%s: Caught a SIGSEGV or SIGBUS whilst decompressing.\0A\0A   Possible causes are (most likely first):\0A   (1) The compressed data is corrupted, and bzip2's usual checks\0A       failed to detect this.  Try bzip2 -tvv my_file.bz2.\0A   (2) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (3) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (4) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (2) and (3).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (2)\0A   or (3), feel free to report it to me at: jseward@bzip.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1
@.str38 = private unnamed_addr constant [36 x i8] c"\09Input file = %s, output file = %s\0A\00", align 1
@.str39 = private unnamed_addr constant [44 x i8] c"%s: Deleting output file %s, if it exists.\0A\00", align 1
@.str40 = private unnamed_addr constant [59 x i8] c"%s: WARNING: deletion of output file (apparently) failed.\0A\00", align 1
@.str41 = private unnamed_addr constant [49 x i8] c"%s: WARNING: deletion of output file suppressed\0A\00", align 1
@.str42 = private unnamed_addr constant [56 x i8] c"%s:    since input file no longer exists.  Output file\0A\00", align 1
@.str43 = private unnamed_addr constant [32 x i8] c"%s:    `%s' may be incomplete.\0A\00", align 1
@.str44 = private unnamed_addr constant [61 x i8] c"%s:    I suggest doing an integrity test (bzip2 -tv) of it.\0A\00", align 1
@.str45 = private unnamed_addr constant [110 x i8] c"%s: WARNING: some files have not been processed:\0A%s:    %d specified on command line, %d not processed yet.\0A\0A\00", align 1
@.str46 = private unnamed_addr constant [241 x i8] c"\0AIt is possible that the compressed file(s) have become corrupted.\0AYou can use the -tvv option to test integrity of such files.\0A\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1
@.str47 = private unnamed_addr constant [120 x i8] c"bzip2: file name\0A`%s'\0Ais suspiciously (more than %d chars) long.\0ATry using a reasonable file name instead.  Sorry! :-)\0A\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale
@.str48 = private unnamed_addr constant [38 x i8] c"\0A%s: couldn't allocate enough memory\0A\00", align 1
@.str49 = private unnamed_addr constant [529 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A   \0A   Copyright (C) 1996-2005 by Julian Seward.\0A   \0A   This program is free software; you can redistribute it and/or modify\0A   it under the terms set out in the LICENSE file, which is included\0A   in the bzip2-1.0 source distribution.\0A   \0A   This program is distributed in the hope that it will be useful,\0A   but WITHOUT ANY WARRANTY; without even the implied warranty of\0A   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A   LICENSE file for more details.\0A   \0A\00", align 1
@.str50 = private unnamed_addr constant [1230 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A\0A   usage: %s [flags and input files in any order]\0A\0A   -h --help           print this message\0A   -d --decompress     force decompression\0A   -z --compress       force compression\0A   -k --keep           keep (don't delete) input files\0A   -f --force          overwrite existing output files\0A   -t --test           test compressed file integrity\0A   -c --stdout         output to standard out\0A   -q --quiet          suppress noncritical error messages\0A   -v --verbose        be verbose (a 2nd -v gives more)\0A   -L --license        display software version & license\0A   -V --version        display software version & license\0A   -s --small          use less memory (at most 2500k)\0A   -1 .. -9            set block size to 100k .. 900k\0A   --fast              alias for -1\0A   --best              alias for -9\0A\0A   If invoked as `bzip2', default action is to compress.\0A              as `bunzip2',  default action is to decompress.\0A              as `bzcat', default action is to decompress to stdout.\0A\0A   If no file names are given, bzip2 compresses or decompresses\0A   from standard input to standard output.  You can combine\0A   short flags, so `-v -4' means the same as -v4 or -4v, &c.\0A\0A\00", align 1
@.str51 = private unnamed_addr constant [49 x i8] c"%s: %s is redundant in versions 0.9.5 and above\0A\00", align 1
@.str52 = private unnamed_addr constant [45 x i8] c"\0A%s: Control-C or similar caught, quitting.\0A\00", align 1
@.str53 = private unnamed_addr constant [21 x i8] c"compress: bad modes\0A\00", align 1
@.str54 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@.str55 = private unnamed_addr constant [9 x i8] c"(stdout)\00", align 1
@.str57 = private unnamed_addr constant [35 x i8] c"%s: Can't open input file %s: %s.\0A\00", align 1
@.str58 = private unnamed_addr constant [42 x i8] c"%s: Input file %s already has %s suffix.\0A\00", align 1
@.str59 = private unnamed_addr constant [35 x i8] c"%s: Input file %s is a directory.\0A\00", align 1
@.str60 = private unnamed_addr constant [41 x i8] c"%s: Input file %s is not a normal file.\0A\00", align 1
@.str61 = private unnamed_addr constant [36 x i8] c"%s: Output file %s already exists.\0A\00", align 1
@.str62 = private unnamed_addr constant [40 x i8] c"%s: Input file %s has %d other link%s.\0A\00", align 1
@.str63 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@__stdinp = external global %struct.__sFILE*
@__stdoutp = external global %struct.__sFILE*
@.str64 = private unnamed_addr constant [50 x i8] c"%s: I won't write compressed data to a terminal.\0A\00", align 1
@.str65 = private unnamed_addr constant [34 x i8] c"%s: For help, type: `%s --help'.\0A\00", align 1
@.str66 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str67 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str68 = private unnamed_addr constant [38 x i8] c"%s: Can't create output file %s: %s.\0A\00", align 1
@.str69 = private unnamed_addr constant [22 x i8] c"compress: bad srcMode\00", align 1
@.str70 = private unnamed_addr constant [7 x i8] c"  %s: \00", align 1
@.str71 = private unnamed_addr constant [109 x i8] c"\0A%s: PANIC -- internal consistency error:\0A\09%s\0A\09This is a BUG.  Please report it to me at:\0A\09jseward@bzip.org\0A\00", align 1
@fileMetaInfo = internal global %struct.stat zeroinitializer, align 8
@.str74 = private unnamed_addr constant [22 x i8] c" no data compressed.\0A\00", align 1
@.str75 = private unnamed_addr constant [57 x i8] c"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\0A\00", align 1
@.str76 = private unnamed_addr constant [26 x i8] c"compress:unexpected error\00", align 1
@.str77 = private unnamed_addr constant [236 x i8] c"bzip2: I'm not configured correctly for this platform!\0A\09I require Int32, Int16 and Char to have sizes\0A\09of 4, 2 and 1 bytes to run properly, and they don't.\0A\09Probably you can fix this by defining them correctly,\0A\09and recompiling.  Bye!\0A\00", align 1
@.str78 = private unnamed_addr constant [65 x i8] c"\0A%s: I/O or other error, bailing out.  Possible reason follows.\0A\00", align 1
@.str79 = private unnamed_addr constant [23 x i8] c"uncompress: bad modes\0A\00", align 1
@.str80 = private unnamed_addr constant [5 x i8] c".out\00", align 1
@.str81 = private unnamed_addr constant [50 x i8] c"%s: Can't guess original name for %s -- using %s\0A\00", align 1
@.str82 = private unnamed_addr constant [51 x i8] c"%s: I won't read compressed data from a terminal.\0A\00", align 1
@.str83 = private unnamed_addr constant [34 x i8] c"%s: Can't open input file %s:%s.\0A\00", align 1
@.str84 = private unnamed_addr constant [24 x i8] c"uncompress: bad srcMode\00", align 1
@.str85 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str86 = private unnamed_addr constant [19 x i8] c"not a bzip2 file.\0A\00", align 1
@.str87 = private unnamed_addr constant [29 x i8] c"%s: %s is not a bzip2 file.\0A\00", align 1
@.str88 = private unnamed_addr constant [27 x i8] c"decompress:bzReadGetUnused\00", align 1
@.str89 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str90 = private unnamed_addr constant [45 x i8] c"\0A%s: %s: trailing garbage after EOF ignored\0A\00", align 1
@.str91 = private unnamed_addr constant [28 x i8] c"decompress:unexpected error\00", align 1
@.str92 = private unnamed_addr constant [47 x i8] c"\0A%s: Data integrity error when decompressing.\0A\00", align 1
@.str93 = private unnamed_addr constant [95 x i8] c"\0A%s: Compressed file ends unexpectedly;\0A\09perhaps it is corrupted?  *Possible* reason follows.\0A\00", align 1
@.str94 = private unnamed_addr constant [18 x i8] c"testf: bad modes\0A\00", align 1
@.str95 = private unnamed_addr constant [30 x i8] c"%s: Can't open input %s: %s.\0A\00", align 1
@.str96 = private unnamed_addr constant [19 x i8] c"testf: bad srcMode\00", align 1
@.str97 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str98 = private unnamed_addr constant [21 x i8] c"test:bzReadGetUnused\00", align 1
@.str99 = private unnamed_addr constant [9 x i8] c"%s: %s: \00", align 1
@.str100 = private unnamed_addr constant [36 x i8] c"data integrity (CRC) error in data\0A\00", align 1
@.str101 = private unnamed_addr constant [24 x i8] c"file ends unexpectedly\0A\00", align 1
@.str102 = private unnamed_addr constant [46 x i8] c"bad magic number (file not created by bzip2)\0A\00", align 1
@.str103 = private unnamed_addr constant [36 x i8] c"trailing garbage after EOF ignored\0A\00", align 1
@.str104 = private unnamed_addr constant [22 x i8] c"test:unexpected error\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct.__sFILE* @fopen_output_safely(i8* %name, i8* %mode) #0 {
  %1 = tail call i32 (i8*, i32, ...)* @"\01_open"(i8* %name, i32 2561, i32 384) #9
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %8, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call %struct.__sFILE* @"\01_fdopen"(i32 %1, i8* %mode) #9
  %5 = icmp eq %struct.__sFILE* %4, null
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %3
  %7 = tail call i32 @"\01_close"(i32 %1) #9
  br label %8

; <label>:8                                       ; preds = %3, %6, %0
  %.0 = phi %struct.__sFILE* [ null, %0 ], [ null, %6 ], [ %4, %3 ]
  ret %struct.__sFILE* %.0
}

; Function Attrs: optsize
declare i32 @"\01_open"(i8*, i32, ...) #1

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fdopen"(i32, i8*) #1

; Function Attrs: optsize
declare i32 @"\01_close"(i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
  %argList = alloca %struct.zzzz*, align 8
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 8, !tbaa !2
  store i8 0, i8* @smallMode, align 1, !tbaa !6
  store i8 0, i8* @keepInputFiles, align 1, !tbaa !6
  store i8 0, i8* @forceOverwrite, align 1, !tbaa !6
  store i8 1, i8* @noisy, align 1, !tbaa !6
  store i32 0, i32* @verbosity, align 4, !tbaa !7
  store i32 9, i32* @blockSize100k, align 4, !tbaa !7
  store i8 0, i8* @testFailsExist, align 1, !tbaa !6
  store i8 0, i8* @unzFailsExist, align 1, !tbaa !6
  store i32 0, i32* @numFileNames, align 4, !tbaa !7
  store i32 0, i32* @numFilesProcessed, align 4, !tbaa !7
  store i32 30, i32* @workFactor, align 4, !tbaa !7
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !tbaa !6
  store i32 0, i32* @exitValue, align 4, !tbaa !7
  %1 = tail call void (i32)* (i32, void (i32)*)* @signal(i32 11, void (i32)* @mySIGSEGVorSIGBUScatcher) #9
  %2 = tail call void (i32)* (i32, void (i32)*)* @signal(i32 10, void (i32)* @mySIGSEGVorSIGBUScatcher) #9
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0)) #10
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0)) #10
  %3 = load i8** %argv, align 8, !tbaa !2
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @progNameReally, i64 0, i64 0), i8* %3) #10
  store i8* getelementptr inbounds ([1034 x i8]* @progNameReally, i64 0, i64 0), i8** @progName, align 8, !tbaa !2
  br label %.backedge

.backedge:                                        ; preds = %5, %._crit_edge68, %0
  %tmp.0 = phi i8* [ getelementptr inbounds ([1034 x i8]* @progNameReally, i64 0, i64 0), %0 ], [ %.pre69, %._crit_edge68 ], [ %6, %5 ]
  %4 = load i8* %tmp.0, align 1, !tbaa !6
  switch i8 %4, label %._crit_edge68 [
    i8 0, label %7
    i8 47, label %5
  ]

._crit_edge68:                                    ; preds = %.backedge
  %.pre69 = getelementptr inbounds i8* %tmp.0, i64 1
  br label %.backedge

; <label>:5                                       ; preds = %.backedge
  %6 = getelementptr inbounds i8* %tmp.0, i64 1
  store i8* %6, i8** @progName, align 8, !tbaa !2
  br label %.backedge

; <label>:7                                       ; preds = %.backedge
  store %struct.zzzz* null, %struct.zzzz** %argList, align 8, !tbaa !2
  call fastcc void @addFlagsFromEnvVar(%struct.zzzz** %argList, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0)) #10
  call fastcc void @addFlagsFromEnvVar(%struct.zzzz** %argList, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0)) #10
  %8 = icmp slt i32 %argc, 2
  br i1 %8, label %._crit_edge66, label %.lr.ph56

._crit_edge66:                                    ; preds = %7
  %aa.048.pre = load %struct.zzzz** %argList, align 8
  br label %17

.lr.ph56:                                         ; preds = %7
  %9 = add nsw i32 %argc, -1
  %argList.promoted = load %struct.zzzz** %argList, align 8, !tbaa !2
  %10 = sext i32 %9 to i64
  br label %11

; <label>:11                                      ; preds = %11, %.lr.ph56
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %11 ], [ 1, %.lr.ph56 ]
  %12 = phi %struct.zzzz* [ %15, %11 ], [ %argList.promoted, %.lr.ph56 ]
  %13 = getelementptr inbounds i8** %argv, i64 %indvars.iv64
  %14 = load i8** %13, align 8, !tbaa !2
  %15 = tail call fastcc %struct.zzzz* @snocString(%struct.zzzz* %12, i8* %14) #10
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %16 = icmp slt i64 %indvars.iv64, %10
  br i1 %16, label %11, label %._crit_edge57

._crit_edge57:                                    ; preds = %11
  store %struct.zzzz* %15, %struct.zzzz** %argList, align 8, !tbaa !2
  br label %17

; <label>:17                                      ; preds = %._crit_edge66, %._crit_edge57
  %18 = phi %struct.zzzz* [ %aa.048.pre, %._crit_edge66 ], [ %15, %._crit_edge57 ]
  store i32 7, i32* @longestFileName, align 4, !tbaa !7
  store i32 0, i32* @numFileNames, align 4, !tbaa !7
  %19 = icmp eq %struct.zzzz* %18, null
  br i1 %19, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %17, %36
  %20 = phi i32 [ %37, %36 ], [ 7, %17 ]
  %21 = phi i32 [ %38, %36 ], [ 0, %17 ]
  %aa.050 = phi %struct.zzzz* [ %aa.0, %36 ], [ %18, %17 ]
  %decode.049 = phi i8 [ %decode.1, %36 ], [ 1, %17 ]
  %22 = getelementptr inbounds %struct.zzzz* %aa.050, i64 0, i32 0
  %23 = load i8** %22, align 8, !tbaa !9
  %24 = tail call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

; <label>:26                                      ; preds = %.lr.ph52
  %27 = load i8* %23, align 1, !tbaa !6
  %28 = icmp ne i8 %27, 45
  %29 = icmp eq i8 %decode.049, 0
  %or.cond6 = or i1 %29, %28
  br i1 %or.cond6, label %30, label %36

; <label>:30                                      ; preds = %26
  %31 = add nsw i32 %21, 1
  store i32 %31, i32* @numFileNames, align 4, !tbaa !7
  %32 = tail call i64 @strlen(i8* %23) #9
  %33 = trunc i64 %32 to i32
  %34 = icmp slt i32 %20, %33
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %30
  store i32 %33, i32* @longestFileName, align 4, !tbaa !7
  br label %36

; <label>:36                                      ; preds = %26, %.lr.ph52, %30, %35
  %37 = phi i32 [ %33, %35 ], [ %20, %30 ], [ %20, %.lr.ph52 ], [ %20, %26 ]
  %38 = phi i32 [ %31, %35 ], [ %31, %30 ], [ %21, %.lr.ph52 ], [ %21, %26 ]
  %decode.1 = phi i8 [ %decode.049, %35 ], [ %decode.049, %30 ], [ 0, %.lr.ph52 ], [ %decode.049, %26 ]
  %39 = getelementptr inbounds %struct.zzzz* %aa.050, i64 0, i32 1
  %aa.0 = load %struct.zzzz** %39, align 8
  %40 = icmp eq %struct.zzzz* %aa.0, null
  br i1 %40, label %._crit_edge53, label %.lr.ph52

._crit_edge53:                                    ; preds = %36, %17
  %41 = phi i32 [ 0, %17 ], [ %38, %36 ]
  %42 = icmp eq i32 %41, 0
  %. = select i1 %42, i32 1, i32 3
  store i32 %., i32* @srcMode, align 4, !tbaa !7
  store i32 1, i32* @opMode, align 4, !tbaa !7
  %43 = load i8** @progName, align 8, !tbaa !2
  %44 = tail call i8* @strstr(i8* %43, i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0)) #9
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %49

; <label>:46                                      ; preds = %._crit_edge53
  %47 = tail call i8* @strstr(i8* %43, i8* getelementptr inbounds ([6 x i8]* @.str11, i64 0, i64 0)) #9
  %48 = icmp eq i8* %47, null
  br i1 %48, label %50, label %49

; <label>:49                                      ; preds = %46, %._crit_edge53
  store i32 2, i32* @opMode, align 4, !tbaa !7
  br label %50

; <label>:50                                      ; preds = %46, %49
  %51 = tail call i8* @strstr(i8* %43, i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0)) #9
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %62

; <label>:53                                      ; preds = %50
  %54 = tail call i8* @strstr(i8* %43, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0)) #9
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %62

; <label>:56                                      ; preds = %53
  %57 = tail call i8* @strstr(i8* %43, i8* getelementptr inbounds ([5 x i8]* @.str14, i64 0, i64 0)) #9
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %62

; <label>:59                                      ; preds = %56
  %60 = tail call i8* @strstr(i8* %43, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0)) #9
  %61 = icmp eq i8* %60, null
  br i1 %61, label %.preheader20, label %62

; <label>:62                                      ; preds = %59, %56, %53, %50
  store i32 2, i32* @opMode, align 4, !tbaa !7
  %63 = select i1 %42, i32 1, i32 2
  store i32 %63, i32* @srcMode, align 4, !tbaa !7
  br label %.preheader20

.preheader20:                                     ; preds = %59, %62
  br i1 %19, label %._crit_edge40, label %.lr.ph46

.lr.ph46:                                         ; preds = %.preheader20, %.loopexit19
  %aa.145 = phi %struct.zzzz* [ %aa.1, %.loopexit19 ], [ %18, %.preheader20 ]
  %64 = getelementptr inbounds %struct.zzzz* %aa.145, i64 0, i32 0
  %65 = load i8** %64, align 8, !tbaa !9
  %66 = tail call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %.preheader17, label %68

.preheader17:                                     ; preds = %.lr.ph46, %.loopexit19
  br i1 %19, label %._crit_edge40, label %.lr.ph39

; <label>:68                                      ; preds = %.lr.ph46
  %69 = load i8* %65, align 1, !tbaa !6
  %70 = icmp eq i8 %69, 45
  br i1 %70, label %71, label %.loopexit19

; <label>:71                                      ; preds = %68
  %72 = getelementptr inbounds i8* %65, i64 1
  %73 = load i8* %72, align 1, !tbaa !6
  switch i8 %73, label %.lr.ph43 [
    i8 45, label %.loopexit19
    i8 0, label %.loopexit19
  ]

.lr.ph43:                                         ; preds = %71, %114
  %indvars.iv = phi i64 [ %indvars.iv.next, %114 ], [ 1, %71 ]
  %74 = phi i8 [ %117, %114 ], [ %73, %71 ]
  %75 = phi i8* [ %115, %114 ], [ %65, %71 ]
  %76 = sext i8 %74 to i32
  switch i32 %76, label %106 [
    i32 99, label %77
    i32 100, label %78
    i32 122, label %79
    i32 102, label %80
    i32 116, label %81
    i32 107, label %82
    i32 115, label %83
    i32 113, label %84
    i32 49, label %85
    i32 50, label %86
    i32 51, label %87
    i32 52, label %88
    i32 53, label %89
    i32 54, label %90
    i32 55, label %91
    i32 56, label %92
    i32 57, label %93
    i32 86, label %94
    i32 76, label %94
    i32 118, label %98
    i32 104, label %101
  ]

; <label>:77                                      ; preds = %.lr.ph43
  store i32 2, i32* @srcMode, align 4, !tbaa !7
  br label %114

; <label>:78                                      ; preds = %.lr.ph43
  store i32 2, i32* @opMode, align 4, !tbaa !7
  br label %114

; <label>:79                                      ; preds = %.lr.ph43
  store i32 1, i32* @opMode, align 4, !tbaa !7
  br label %114

; <label>:80                                      ; preds = %.lr.ph43
  store i8 1, i8* @forceOverwrite, align 1, !tbaa !6
  br label %114

; <label>:81                                      ; preds = %.lr.ph43
  store i32 3, i32* @opMode, align 4, !tbaa !7
  br label %114

; <label>:82                                      ; preds = %.lr.ph43
  store i8 1, i8* @keepInputFiles, align 1, !tbaa !6
  br label %114

; <label>:83                                      ; preds = %.lr.ph43
  store i8 1, i8* @smallMode, align 1, !tbaa !6
  br label %114

; <label>:84                                      ; preds = %.lr.ph43
  store i8 0, i8* @noisy, align 1, !tbaa !6
  br label %114

; <label>:85                                      ; preds = %.lr.ph43
  store i32 1, i32* @blockSize100k, align 4, !tbaa !7
  br label %114

; <label>:86                                      ; preds = %.lr.ph43
  store i32 2, i32* @blockSize100k, align 4, !tbaa !7
  br label %114

; <label>:87                                      ; preds = %.lr.ph43
  store i32 3, i32* @blockSize100k, align 4, !tbaa !7
  br label %114

; <label>:88                                      ; preds = %.lr.ph43
  store i32 4, i32* @blockSize100k, align 4, !tbaa !7
  br label %114

; <label>:89                                      ; preds = %.lr.ph43
  store i32 5, i32* @blockSize100k, align 4, !tbaa !7
  br label %114

; <label>:90                                      ; preds = %.lr.ph43
  store i32 6, i32* @blockSize100k, align 4, !tbaa !7
  br label %114

; <label>:91                                      ; preds = %.lr.ph43
  store i32 7, i32* @blockSize100k, align 4, !tbaa !7
  br label %114

; <label>:92                                      ; preds = %.lr.ph43
  store i32 8, i32* @blockSize100k, align 4, !tbaa !7
  br label %114

; <label>:93                                      ; preds = %.lr.ph43
  store i32 9, i32* @blockSize100k, align 4, !tbaa !7
  br label %114

; <label>:94                                      ; preds = %.lr.ph43, %.lr.ph43
  %95 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %96 = tail call i8* @BZ2_bzlibVersion() #9
  %97 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %95, i8* getelementptr inbounds ([529 x i8]* @.str49, i64 0, i64 0), i8* %96) #9
  br label %114

; <label>:98                                      ; preds = %.lr.ph43
  %99 = load i32* @verbosity, align 4, !tbaa !7
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* @verbosity, align 4, !tbaa !7
  br label %114

; <label>:101                                     ; preds = %.lr.ph43
  %102 = load i8** @progName, align 8, !tbaa !2
  %103 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %104 = tail call i8* @BZ2_bzlibVersion() #9
  %105 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %103, i8* getelementptr inbounds ([1230 x i8]* @.str50, i64 0, i64 0), i8* %104, i8* %102) #9
  tail call void @exit(i32 0) #11
  unreachable

; <label>:106                                     ; preds = %.lr.ph43
  %107 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %108 = load i8** @progName, align 8, !tbaa !2
  %109 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %107, i8* getelementptr inbounds ([19 x i8]* @.str16, i64 0, i64 0), i8* %108, i8* %75) #9
  %110 = load i8** @progName, align 8, !tbaa !2
  %111 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %112 = tail call i8* @BZ2_bzlibVersion() #9
  %113 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %111, i8* getelementptr inbounds ([1230 x i8]* @.str50, i64 0, i64 0), i8* %112, i8* %110) #9
  tail call void @exit(i32 1) #11
  unreachable

; <label>:114                                     ; preds = %77, %78, %79, %80, %81, %82, %83, %84, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %98
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %115 = load i8** %64, align 8, !tbaa !9
  %116 = getelementptr inbounds i8* %115, i64 %indvars.iv.next
  %117 = load i8* %116, align 1, !tbaa !6
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %.loopexit19, label %.lr.ph43

.loopexit19:                                      ; preds = %114, %71, %71, %68
  %119 = getelementptr inbounds %struct.zzzz* %aa.145, i64 0, i32 1
  %aa.1 = load %struct.zzzz** %119, align 8
  %120 = icmp eq %struct.zzzz* %aa.1, null
  br i1 %120, label %.preheader17, label %.lr.ph46

.lr.ph39:                                         ; preds = %.preheader17, %222
  %aa.238 = phi %struct.zzzz* [ %aa.2, %222 ], [ %18, %.preheader17 ]
  %121 = getelementptr inbounds %struct.zzzz* %aa.238, i64 0, i32 0
  %122 = load i8** %121, align 8, !tbaa !9
  %123 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #9
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %._crit_edge40, label %125

; <label>:125                                     ; preds = %.lr.ph39
  %126 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0)) #9
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

; <label>:128                                     ; preds = %125
  store i32 2, i32* @srcMode, align 4, !tbaa !7
  br label %222

; <label>:129                                     ; preds = %125
  %130 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([13 x i8]* @.str18, i64 0, i64 0)) #9
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

; <label>:132                                     ; preds = %129
  store i32 2, i32* @opMode, align 4, !tbaa !7
  br label %222

; <label>:133                                     ; preds = %129
  %134 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([11 x i8]* @.str19, i64 0, i64 0)) #9
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

; <label>:136                                     ; preds = %133
  store i32 1, i32* @opMode, align 4, !tbaa !7
  br label %222

; <label>:137                                     ; preds = %133
  %138 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0)) #9
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

; <label>:140                                     ; preds = %137
  store i8 1, i8* @forceOverwrite, align 1, !tbaa !6
  br label %222

; <label>:141                                     ; preds = %137
  %142 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([7 x i8]* @.str21, i64 0, i64 0)) #9
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

; <label>:144                                     ; preds = %141
  store i32 3, i32* @opMode, align 4, !tbaa !7
  br label %222

; <label>:145                                     ; preds = %141
  %146 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([7 x i8]* @.str22, i64 0, i64 0)) #9
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

; <label>:148                                     ; preds = %145
  store i8 1, i8* @keepInputFiles, align 1, !tbaa !6
  br label %222

; <label>:149                                     ; preds = %145
  %150 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([8 x i8]* @.str23, i64 0, i64 0)) #9
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

; <label>:152                                     ; preds = %149
  store i8 1, i8* @smallMode, align 1, !tbaa !6
  br label %222

; <label>:153                                     ; preds = %149
  %154 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([8 x i8]* @.str24, i64 0, i64 0)) #9
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

; <label>:156                                     ; preds = %153
  store i8 0, i8* @noisy, align 1, !tbaa !6
  br label %222

; <label>:157                                     ; preds = %153
  %158 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([10 x i8]* @.str25, i64 0, i64 0)) #9
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

; <label>:160                                     ; preds = %157
  %161 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %162 = tail call i8* @BZ2_bzlibVersion() #9
  %163 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %161, i8* getelementptr inbounds ([529 x i8]* @.str49, i64 0, i64 0), i8* %162) #9
  br label %222

; <label>:164                                     ; preds = %157
  %165 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([10 x i8]* @.str26, i64 0, i64 0)) #9
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %171

; <label>:167                                     ; preds = %164
  %168 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %169 = tail call i8* @BZ2_bzlibVersion() #9
  %170 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %168, i8* getelementptr inbounds ([529 x i8]* @.str49, i64 0, i64 0), i8* %169) #9
  br label %222

; <label>:171                                     ; preds = %164
  %172 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #9
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

; <label>:174                                     ; preds = %171
  store i32 1, i32* @workFactor, align 4, !tbaa !7
  br label %222

; <label>:175                                     ; preds = %171
  %176 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([18 x i8]* @.str28, i64 0, i64 0)) #9
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %182

; <label>:178                                     ; preds = %175
  %179 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %180 = load i8** @progName, align 8, !tbaa !2
  %181 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %179, i8* getelementptr inbounds ([49 x i8]* @.str51, i64 0, i64 0), i8* %180, i8* %122) #9
  br label %222

; <label>:182                                     ; preds = %175
  %183 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([18 x i8]* @.str29, i64 0, i64 0)) #9
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %189

; <label>:185                                     ; preds = %182
  %186 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %187 = load i8** @progName, align 8, !tbaa !2
  %188 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %186, i8* getelementptr inbounds ([49 x i8]* @.str51, i64 0, i64 0), i8* %187, i8* %122) #9
  br label %222

; <label>:189                                     ; preds = %182
  %190 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([7 x i8]* @.str30, i64 0, i64 0)) #9
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %193

; <label>:192                                     ; preds = %189
  store i32 1, i32* @blockSize100k, align 4, !tbaa !7
  br label %222

; <label>:193                                     ; preds = %189
  %194 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([7 x i8]* @.str31, i64 0, i64 0)) #9
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

; <label>:196                                     ; preds = %193
  store i32 9, i32* @blockSize100k, align 4, !tbaa !7
  br label %222

; <label>:197                                     ; preds = %193
  %198 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([10 x i8]* @.str32, i64 0, i64 0)) #9
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %203

; <label>:200                                     ; preds = %197
  %201 = load i32* @verbosity, align 4, !tbaa !7
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* @verbosity, align 4, !tbaa !7
  br label %222

; <label>:203                                     ; preds = %197
  %204 = tail call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([7 x i8]* @.str33, i64 0, i64 0)) #9
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %211

; <label>:206                                     ; preds = %203
  %207 = load i8** @progName, align 8, !tbaa !2
  %208 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %209 = tail call i8* @BZ2_bzlibVersion() #9
  %210 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %208, i8* getelementptr inbounds ([1230 x i8]* @.str50, i64 0, i64 0), i8* %209, i8* %207) #9
  tail call void @exit(i32 0) #11
  unreachable

; <label>:211                                     ; preds = %203
  %212 = tail call i32 @strncmp(i8* %122, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i64 2) #9
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %222

; <label>:214                                     ; preds = %211
  %215 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %216 = load i8** @progName, align 8, !tbaa !2
  %217 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %215, i8* getelementptr inbounds ([19 x i8]* @.str16, i64 0, i64 0), i8* %216, i8* %122) #9
  %218 = load i8** @progName, align 8, !tbaa !2
  %219 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %220 = tail call i8* @BZ2_bzlibVersion() #9
  %221 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %219, i8* getelementptr inbounds ([1230 x i8]* @.str50, i64 0, i64 0), i8* %220, i8* %218) #9
  tail call void @exit(i32 1) #11
  unreachable

; <label>:222                                     ; preds = %128, %136, %144, %152, %160, %174, %185, %196, %211, %200, %192, %178, %167, %156, %148, %140, %132
  %223 = getelementptr inbounds %struct.zzzz* %aa.238, i64 0, i32 1
  %aa.2 = load %struct.zzzz** %223, align 8
  %224 = icmp eq %struct.zzzz* %aa.2, null
  br i1 %224, label %._crit_edge40, label %.lr.ph39

._crit_edge40:                                    ; preds = %.lr.ph39, %222, %.preheader20, %.preheader17
  %225 = load i32* @verbosity, align 4, !tbaa !7
  %226 = icmp sgt i32 %225, 4
  br i1 %226, label %227, label %228

; <label>:227                                     ; preds = %._crit_edge40
  store i32 4, i32* @verbosity, align 4, !tbaa !7
  br label %228

; <label>:228                                     ; preds = %227, %._crit_edge40
  %229 = load i32* @opMode, align 4, !tbaa !7
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %231, label %239

; <label>:231                                     ; preds = %228
  %232 = load i8* @smallMode, align 1, !tbaa !6
  %233 = icmp ne i8 %232, 0
  %234 = load i32* @blockSize100k, align 4
  %235 = icmp sgt i32 %234, 2
  %or.cond = and i1 %233, %235
  br i1 %or.cond, label %236, label %.thread

; <label>:236                                     ; preds = %231
  store i32 2, i32* @blockSize100k, align 4, !tbaa !7
  br label %.thread

.thread:                                          ; preds = %236, %231
  %237 = load i32* @srcMode, align 4
  %238 = icmp eq i32 %237, 2
  br label %247

; <label>:239                                     ; preds = %228
  %240 = icmp eq i32 %229, 3
  %241 = load i32* @srcMode, align 4
  %242 = icmp eq i32 %241, 2
  %or.cond3 = and i1 %240, %242
  br i1 %or.cond3, label %243, label %247

; <label>:243                                     ; preds = %239
  %244 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %245 = load i8** @progName, align 8, !tbaa !2
  %246 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %244, i8* getelementptr inbounds ([40 x i8]* @.str34, i64 0, i64 0), i8* %245) #9
  tail call void @exit(i32 1) #11
  unreachable

; <label>:247                                     ; preds = %.thread, %239
  %248 = phi i1 [ %238, %.thread ], [ %242, %239 ]
  %249 = phi i32 [ %237, %.thread ], [ %241, %239 ]
  %250 = load i32* @numFileNames, align 4
  %251 = icmp eq i32 %250, 0
  %or.cond5 = and i1 %248, %251
  br i1 %or.cond5, label %252, label %253

; <label>:252                                     ; preds = %247
  store i32 1, i32* @srcMode, align 4, !tbaa !7
  br label %253

; <label>:253                                     ; preds = %252, %247
  %254 = phi i32 [ 1, %252 ], [ %249, %247 ]
  br i1 %230, label %256, label %255

; <label>:255                                     ; preds = %253
  store i32 0, i32* @blockSize100k, align 4, !tbaa !7
  br label %256

; <label>:256                                     ; preds = %253, %255
  %257 = icmp eq i32 %254, 3
  br i1 %257, label %258, label %262

; <label>:258                                     ; preds = %256
  %259 = tail call void (i32)* (i32, void (i32)*)* @signal(i32 2, void (i32)* @mySignalCatcher) #9
  %260 = tail call void (i32)* (i32, void (i32)*)* @signal(i32 15, void (i32)* @mySignalCatcher) #9
  %261 = tail call void (i32)* (i32, void (i32)*)* @signal(i32 1, void (i32)* @mySignalCatcher) #9
  %.pre = load i32* @opMode, align 4, !tbaa !7
  br label %262

; <label>:262                                     ; preds = %258, %256
  %263 = phi i32 [ %.pre, %258 ], [ %229, %256 ]
  switch i32 %263, label %307 [
    i32 1, label %264
    i32 2, label %282
  ]

; <label>:264                                     ; preds = %262
  %265 = load i32* @srcMode, align 4, !tbaa !7
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %267, label %.preheader13

.preheader13:                                     ; preds = %264
  br i1 %19, label %._crit_edge, label %.lr.ph32

; <label>:267                                     ; preds = %264
  tail call fastcc void @compress(i8* null) #10
  br label %.loopexit14

.lr.ph32:                                         ; preds = %.preheader13, %279
  %aa.331 = phi %struct.zzzz* [ %aa.3, %279 ], [ %18, %.preheader13 ]
  %decode.230 = phi i8 [ %decode.3, %279 ], [ 1, %.preheader13 ]
  %268 = getelementptr inbounds %struct.zzzz* %aa.331, i64 0, i32 0
  %269 = load i8** %268, align 8, !tbaa !9
  %270 = tail call i32 @strcmp(i8* %269, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #9
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %279, label %272

; <label>:272                                     ; preds = %.lr.ph32
  %273 = load i8* %269, align 1, !tbaa !6
  %274 = icmp ne i8 %273, 45
  %275 = icmp eq i8 %decode.230, 0
  %or.cond7 = or i1 %275, %274
  br i1 %or.cond7, label %276, label %279

; <label>:276                                     ; preds = %272
  %277 = load i32* @numFilesProcessed, align 4, !tbaa !7
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* @numFilesProcessed, align 4, !tbaa !7
  tail call fastcc void @compress(i8* %269) #10
  br label %279

; <label>:279                                     ; preds = %272, %.lr.ph32, %276
  %decode.3 = phi i8 [ %decode.230, %276 ], [ 0, %.lr.ph32 ], [ %decode.230, %272 ]
  %280 = getelementptr inbounds %struct.zzzz* %aa.331, i64 0, i32 1
  %aa.3 = load %struct.zzzz** %280, align 8
  %281 = icmp eq %struct.zzzz* %aa.3, null
  br i1 %281, label %.loopexit14, label %.lr.ph32

; <label>:282                                     ; preds = %262
  store i8 0, i8* @unzFailsExist, align 1, !tbaa !6
  %283 = load i32* @srcMode, align 4, !tbaa !7
  %284 = icmp eq i32 %283, 1
  br i1 %284, label %285, label %.preheader15

.preheader15:                                     ; preds = %282
  br i1 %19, label %.loopexit16, label %.lr.ph36

; <label>:285                                     ; preds = %282
  tail call fastcc void @uncompress(i8* null) #10
  br label %.loopexit16

.lr.ph36:                                         ; preds = %.preheader15, %297
  %aa.435 = phi %struct.zzzz* [ %aa.4, %297 ], [ %18, %.preheader15 ]
  %decode.434 = phi i8 [ %decode.5, %297 ], [ 1, %.preheader15 ]
  %286 = getelementptr inbounds %struct.zzzz* %aa.435, i64 0, i32 0
  %287 = load i8** %286, align 8, !tbaa !9
  %288 = tail call i32 @strcmp(i8* %287, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #9
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %297, label %290

; <label>:290                                     ; preds = %.lr.ph36
  %291 = load i8* %287, align 1, !tbaa !6
  %292 = icmp ne i8 %291, 45
  %293 = icmp eq i8 %decode.434, 0
  %or.cond8 = or i1 %293, %292
  br i1 %or.cond8, label %294, label %297

; <label>:294                                     ; preds = %290
  %295 = load i32* @numFilesProcessed, align 4, !tbaa !7
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* @numFilesProcessed, align 4, !tbaa !7
  tail call fastcc void @uncompress(i8* %287) #10
  br label %297

; <label>:297                                     ; preds = %290, %.lr.ph36, %294
  %decode.5 = phi i8 [ %decode.434, %294 ], [ 0, %.lr.ph36 ], [ %decode.434, %290 ]
  %298 = getelementptr inbounds %struct.zzzz* %aa.435, i64 0, i32 1
  %aa.4 = load %struct.zzzz** %298, align 8
  %299 = icmp eq %struct.zzzz* %aa.4, null
  br i1 %299, label %.loopexit16, label %.lr.ph36

.loopexit16:                                      ; preds = %297, %.preheader15, %285
  %300 = load i8* @unzFailsExist, align 1, !tbaa !6
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %.loopexit14, label %302

; <label>:302                                     ; preds = %.loopexit16
  %303 = load i32* @exitValue, align 4, !tbaa !7
  %304 = icmp slt i32 %303, 2
  br i1 %304, label %305, label %setExit.exit

; <label>:305                                     ; preds = %302
  store i32 2, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

setExit.exit:                                     ; preds = %302, %305
  %306 = phi i32 [ %303, %302 ], [ 2, %305 ]
  tail call void @exit(i32 %306) #11
  unreachable

; <label>:307                                     ; preds = %262
  store i8 0, i8* @testFailsExist, align 1, !tbaa !6
  %308 = load i32* @srcMode, align 4, !tbaa !7
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %310, label %.preheader

.preheader:                                       ; preds = %307
  br i1 %19, label %.loopexit, label %.lr.ph28

; <label>:310                                     ; preds = %307
  tail call fastcc void @testf(i8* null) #10
  br label %.loopexit

.lr.ph28:                                         ; preds = %.preheader, %322
  %aa.527 = phi %struct.zzzz* [ %aa.5, %322 ], [ %18, %.preheader ]
  %decode.626 = phi i8 [ %decode.7, %322 ], [ 1, %.preheader ]
  %311 = getelementptr inbounds %struct.zzzz* %aa.527, i64 0, i32 0
  %312 = load i8** %311, align 8, !tbaa !9
  %313 = tail call i32 @strcmp(i8* %312, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #9
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %322, label %315

; <label>:315                                     ; preds = %.lr.ph28
  %316 = load i8* %312, align 1, !tbaa !6
  %317 = icmp ne i8 %316, 45
  %318 = icmp eq i8 %decode.626, 0
  %or.cond9 = or i1 %318, %317
  br i1 %or.cond9, label %319, label %322

; <label>:319                                     ; preds = %315
  %320 = load i32* @numFilesProcessed, align 4, !tbaa !7
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* @numFilesProcessed, align 4, !tbaa !7
  tail call fastcc void @testf(i8* %312) #10
  br label %322

; <label>:322                                     ; preds = %315, %.lr.ph28, %319
  %decode.7 = phi i8 [ %decode.626, %319 ], [ 0, %.lr.ph28 ], [ %decode.626, %315 ]
  %323 = getelementptr inbounds %struct.zzzz* %aa.527, i64 0, i32 1
  %aa.5 = load %struct.zzzz** %323, align 8
  %324 = icmp eq %struct.zzzz* %aa.5, null
  br i1 %324, label %.loopexit, label %.lr.ph28

.loopexit:                                        ; preds = %322, %.preheader, %310
  %325 = load i8* @testFailsExist, align 1, !tbaa !6
  %326 = icmp eq i8 %325, 0
  %327 = load i8* @noisy, align 1
  %328 = icmp eq i8 %327, 0
  %or.cond11 = or i1 %326, %328
  br i1 %or.cond11, label %.loopexit14, label %329

; <label>:329                                     ; preds = %.loopexit
  %330 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %331 = tail call i64 @fwrite(i8* getelementptr inbounds ([113 x i8]* @.str35, i64 0, i64 0), i64 112, i64 1, %struct.__sFILE* %330)
  %332 = load i32* @exitValue, align 4, !tbaa !7
  %333 = icmp slt i32 %332, 2
  br i1 %333, label %334, label %setExit.exit12

; <label>:334                                     ; preds = %329
  store i32 2, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit12

setExit.exit12:                                   ; preds = %329, %334
  %335 = phi i32 [ %332, %329 ], [ 2, %334 ]
  tail call void @exit(i32 %335) #11
  unreachable

.loopexit14:                                      ; preds = %279, %.loopexit16, %.loopexit, %267
  br i1 %19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit14, %342
  %aa.624 = phi %struct.zzzz* [ %337, %342 ], [ %18, %.loopexit14 ]
  %336 = getelementptr inbounds %struct.zzzz* %aa.624, i64 0, i32 1
  %337 = load %struct.zzzz** %336, align 8, !tbaa !11
  %338 = getelementptr inbounds %struct.zzzz* %aa.624, i64 0, i32 0
  %339 = load i8** %338, align 8, !tbaa !9
  %340 = icmp eq i8* %339, null
  br i1 %340, label %342, label %341

; <label>:341                                     ; preds = %.lr.ph
  tail call void @free(i8* %339) #10
  br label %342

; <label>:342                                     ; preds = %.lr.ph, %341
  %343 = bitcast %struct.zzzz* %aa.624 to i8*
  tail call void @free(i8* %343) #10
  %344 = icmp eq %struct.zzzz* %337, null
  br i1 %344, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %342, %.preheader13, %.loopexit14
  %345 = load i32* @exitValue, align 4, !tbaa !7
  ret i32 %345
}

; Function Attrs: optsize
declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: noreturn nounwind optsize ssp uwtable
define internal void @mySIGSEGVorSIGBUScatcher(i32 %n) #2 {
  %1 = load i32* @opMode, align 4, !tbaa !7
  %2 = icmp eq i32 %1, 1
  %3 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %4 = load i8** @progName, align 8, !tbaa !2
  br i1 %2, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([869 x i8]* @.str36, i64 0, i64 0), i8* %4) #9
  br label %9

; <label>:7                                       ; preds = %0
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([996 x i8]* @.str37, i64 0, i64 0), i8* %4) #9
  br label %9

; <label>:9                                       ; preds = %7, %5
  %10 = load i8* @noisy, align 1, !tbaa !6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %showFileNames.exit, label %12

; <label>:12                                      ; preds = %9
  %13 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([36 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #9
  br label %showFileNames.exit

showFileNames.exit:                               ; preds = %9, %12
  %15 = load i32* @opMode, align 4, !tbaa !7
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %showFileNames.exit
  tail call fastcc void @cleanUpAndFail(i32 3) #12
  unreachable

; <label>:18                                      ; preds = %showFileNames.exit
  %19 = load i8* @noisy, align 1, !tbaa !6
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %cadvise.exit, label %21

; <label>:21                                      ; preds = %18
  %22 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([241 x i8]* @.str46, i64 0, i64 0), i64 240, i64 1, %struct.__sFILE* %22) #6
  br label %cadvise.exit

cadvise.exit:                                     ; preds = %18, %21
  tail call fastcc void @cleanUpAndFail(i32 2) #12
  unreachable
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @copyFileName(i8* %to, i8* %from) #0 {
  %1 = tail call i64 @strlen(i8* %from) #9
  %2 = icmp ugt i64 %1, 1024
  br i1 %2, label %3, label %10

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([120 x i8]* @.str47, i64 0, i64 0), i8* %from, i32 1024) #9
  %6 = load i32* @exitValue, align 4, !tbaa !7
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %setExit.exit

; <label>:8                                       ; preds = %3
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

setExit.exit:                                     ; preds = %3, %8
  %9 = phi i32 [ %6, %3 ], [ 1, %8 ]
  tail call void @exit(i32 %9) #11
  unreachable

; <label>:10                                      ; preds = %0
  %11 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %to, i1 false)
  %12 = tail call i8* @__strncpy_chk(i8* %to, i8* %from, i64 1024, i64 %11) #9
  %13 = getelementptr inbounds i8* %to, i64 1024
  store i8 0, i8* %13, align 1, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @addFlagsFromEnvVar(%struct.zzzz** nocapture %argList, i8* nocapture readonly %varName) #0 {
  %1 = tail call i8* @getenv(i8* %varName) #9
  %2 = icmp eq i8* %1, null
  br i1 %2, label %.loopexit, label %.preheader8

.preheader8:                                      ; preds = %0
  %3 = load i8* %1, align 1, !tbaa !6
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %.loopexit, label %.preheader7

.preheader7:                                      ; preds = %.backedge, %isspace.exit._crit_edge, %.preheader8
  %5 = phi i8 [ %3, %.preheader8 ], [ %.pre, %isspace.exit._crit_edge ], [ %47, %.backedge ]
  %p.1 = phi i8* [ %1, %.preheader8 ], [ %14, %isspace.exit._crit_edge ], [ %46, %.backedge ]
  %isascii.i.i5 = icmp sgt i8 %5, -1
  br i1 %isascii.i.i5, label %6, label %11

; <label>:6                                       ; preds = %.preheader7
  %7 = sext i8 %5 to i64
  %8 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %7
  %9 = load i32* %8, align 4, !tbaa !7
  %10 = and i32 %9, 16384
  br label %isspace.exit

; <label>:11                                      ; preds = %.preheader7
  %12 = sext i8 %5 to i32
  %13 = tail call i32 @__maskrune(i32 %12, i64 16384) #9
  br label %isspace.exit

isspace.exit:                                     ; preds = %6, %11
  %.sink.i.in.i = phi i32 [ %10, %6 ], [ %13, %11 ]
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0
  %14 = getelementptr inbounds i8* %p.1, i64 1
  br i1 %.sink.i.i, label %.preheader, label %isspace.exit._crit_edge

isspace.exit._crit_edge:                          ; preds = %isspace.exit
  %.pre = load i8* %14, align 1, !tbaa !6
  br label %.preheader7

.preheader:                                       ; preds = %isspace.exit
  %15 = load i8* %p.1, align 1, !tbaa !6
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %.backedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %26
  %indvars.iv = phi i64 [ %indvars.iv.next, %26 ], [ 0, %.preheader ]
  %17 = phi i8 [ %28, %26 ], [ %15, %.preheader ]
  %isascii.i.i16 = icmp sgt i8 %17, -1
  br i1 %isascii.i.i16, label %18, label %23

; <label>:18                                      ; preds = %.lr.ph
  %19 = sext i8 %17 to i64
  %20 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %19
  %21 = load i32* %20, align 4, !tbaa !7
  %22 = and i32 %21, 16384
  br label %isspace.exit4

; <label>:23                                      ; preds = %.lr.ph
  %24 = sext i8 %17 to i32
  %25 = tail call i32 @__maskrune(i32 %24, i64 16384) #9
  br label %isspace.exit4

isspace.exit4:                                    ; preds = %18, %23
  %.sink.i.in.i2 = phi i32 [ %22, %18 ], [ %25, %23 ]
  %.sink.i.i3 = icmp eq i32 %.sink.i.in.i2, 0
  br i1 %.sink.i.i3, label %26, label %.critedge

; <label>:26                                      ; preds = %isspace.exit4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %27 = getelementptr inbounds i8* %p.1, i64 %indvars.iv.next
  %28 = load i8* %27, align 1, !tbaa !6
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %isspace.exit4, %26
  %indvars.iv.sink = phi i64 [ %indvars.iv.next, %26 ], [ %indvars.iv, %isspace.exit4 ]
  %30 = trunc i64 %indvars.iv.sink to i32
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %.backedge

; <label>:32                                      ; preds = %.critedge
  %33 = icmp sgt i32 %30, 1024
  %. = select i1 %33, i32 1024, i32 %30
  %34 = icmp sgt i32 %., 0
  br i1 %34, label %.lr.ph12, label %._crit_edge

.lr.ph12:                                         ; preds = %32
  %35 = icmp slt i32 %30, 1024
  %.op = add i32 %30, -1
  %36 = select i1 %35, i32 %.op, i32 1023
  br label %37

; <label>:37                                      ; preds = %37, %.lr.ph12
  %indvars.iv16 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next17, %37 ]
  %38 = getelementptr inbounds i8* %p.1, i64 %indvars.iv16
  %39 = load i8* %38, align 1, !tbaa !6
  %40 = getelementptr inbounds [1034 x i8]* @tmpName, i64 0, i64 %indvars.iv16
  store i8 %39, i8* %40, align 1, !tbaa !6
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %lftr.wideiv = trunc i64 %indvars.iv16 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %36
  br i1 %exitcond, label %._crit_edge, label %37

._crit_edge:                                      ; preds = %37, %32
  %41 = sext i32 %. to i64
  %42 = getelementptr inbounds [1034 x i8]* @tmpName, i64 0, i64 %41
  store i8 0, i8* %42, align 1, !tbaa !6
  %43 = load %struct.zzzz** %argList, align 8, !tbaa !2
  %44 = tail call fastcc %struct.zzzz* @snocString(%struct.zzzz* %43, i8* getelementptr inbounds ([1034 x i8]* @tmpName, i64 0, i64 0)) #10
  store %struct.zzzz* %44, %struct.zzzz** %argList, align 8, !tbaa !2
  br label %.backedge

.backedge:                                        ; preds = %.preheader, %._crit_edge, %.critedge
  %i.1.lcssa18 = phi i64 [ %indvars.iv.sink, %._crit_edge ], [ %indvars.iv.sink, %.critedge ], [ 0, %.preheader ]
  %sext = shl i64 %i.1.lcssa18, 32
  %45 = ashr exact i64 %sext, 32
  %46 = getelementptr inbounds i8* %p.1, i64 %45
  %47 = load i8* %46, align 1, !tbaa !6
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %.loopexit, label %.preheader7

.loopexit:                                        ; preds = %.backedge, %.preheader8, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc %struct.zzzz* @snocString(%struct.zzzz* %root, i8* %name) #0 {
  %1 = icmp eq %struct.zzzz* %root, null
  br i1 %1, label %2, label %.preheader

; <label>:2                                       ; preds = %0
  %3 = tail call i8* @malloc(i64 16) #9
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %mkCell.exit

; <label>:5                                       ; preds = %2
  tail call fastcc void @outOfMemory() #11
  unreachable

mkCell.exit:                                      ; preds = %2
  tail call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 8, i1 false) #6
  %6 = tail call i64 @strlen(i8* %name) #9
  %7 = shl i64 %6, 32
  %sext = add i64 %7, 21474836480
  %8 = ashr exact i64 %sext, 32
  %9 = tail call i8* @malloc(i64 %8) #9
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %myMalloc.exit

; <label>:11                                      ; preds = %mkCell.exit
  tail call fastcc void @outOfMemory() #11
  unreachable

myMalloc.exit:                                    ; preds = %mkCell.exit
  %12 = bitcast i8* %3 to %struct.zzzz*
  %13 = bitcast i8* %3 to i8**
  store i8* %9, i8** %13, align 8, !tbaa !9
  %14 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %9, i1 false)
  %15 = tail call i8* @__strcpy_chk(i8* %9, i8* %name, i64 %14) #9
  ret %struct.zzzz* %12

.preheader:                                       ; preds = %0, %.preheader
  %tmp1.0 = phi %struct.zzzz* [ %17, %.preheader ], [ %root, %0 ]
  %16 = getelementptr inbounds %struct.zzzz* %tmp1.0, i64 0, i32 1
  %17 = load %struct.zzzz** %16, align 8, !tbaa !11
  %18 = icmp eq %struct.zzzz* %17, null
  br i1 %18, label %19, label %.preheader

; <label>:19                                      ; preds = %.preheader
  %20 = tail call fastcc %struct.zzzz* @snocString(%struct.zzzz* null, i8* %name) #10
  store %struct.zzzz* %20, %struct.zzzz** %16, align 8, !tbaa !11
  ret %struct.zzzz* %root
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #3

; Function Attrs: noreturn optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: noreturn nounwind optsize ssp uwtable
define internal void @mySignalCatcher(i32 %n) #2 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %2 = load i8** @progName, align 8, !tbaa !2
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([45 x i8]* @.str52, i64 0, i64 0), i8* %2) #9
  tail call fastcc void @cleanUpAndFail(i32 1) #12
  unreachable
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @compress(i8* %name) #0 {
  %statBuf.i12 = alloca %struct.stat, align 8
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
  %1 = bitcast %struct.stat* %statBuf to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1) #6
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !tbaa !6
  %2 = icmp eq i8* %name, null
  %3 = load i32* @srcMode, align 4
  %4 = icmp ne i32 %3, 1
  %or.cond = and i1 %2, %4
  br i1 %or.cond, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call fastcc void @panic(i8* getelementptr inbounds ([21 x i8]* @.str53, i64 0, i64 0)) #12
  unreachable

; <label>:6                                       ; preds = %0
  switch i32 %3, label %11 [
    i32 1, label %7
    i32 3, label %8
    i32 2, label %10
  ]

; <label>:7                                       ; preds = %6
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str54, i64 0, i64 0)) #10
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str55, i64 0, i64 0)) #10
  br label %11

; <label>:8                                       ; preds = %6
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %name) #10
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* %name) #10
  %9 = tail call i8* @__strcat_chk(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i64 1034) #9
  br label %11

; <label>:10                                      ; preds = %6
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %name) #10
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str55, i64 0, i64 0)) #10
  br label %11

; <label>:11                                      ; preds = %6, %10, %8, %7
  %12 = load i32* @srcMode, align 4, !tbaa !7
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %.preheader, label %14

; <label>:14                                      ; preds = %11
  %15 = tail call fastcc zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #10
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %.preheader

; <label>:17                                      ; preds = %14
  %18 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %19 = load i8** @progName, align 8, !tbaa !2
  %20 = tail call i32* @__error() #9
  %21 = load i32* %20, align 4, !tbaa !7
  %22 = tail call i8* @"\01_strerror"(i32 %21) #9
  %23 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([35 x i8]* @.str57, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %22) #9
  %24 = load i32* @exitValue, align 4, !tbaa !7
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %setExit.exit

; <label>:26                                      ; preds = %17
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:27                                      ; preds = %.preheader
  %28 = icmp slt i64 %indvars.iv.next, 4
  br i1 %28, label %.preheader, label %44

.preheader:                                       ; preds = %11, %14, %27
  %indvars.iv = phi i64 [ %indvars.iv.next, %27 ], [ 0, %14 ], [ 0, %11 ]
  %29 = getelementptr inbounds [4 x i8*]* @zSuffix, i64 0, i64 %indvars.iv
  %30 = load i8** %29, align 8, !tbaa !2
  %31 = tail call fastcc zeroext i8 @hasSuffix(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %30) #10
  %32 = icmp eq i8 %31, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %32, label %27, label %33

; <label>:33                                      ; preds = %.preheader
  %34 = load i8* @noisy, align 1, !tbaa !6
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

; <label>:36                                      ; preds = %33
  %37 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %38 = load i8** @progName, align 8, !tbaa !2
  %39 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %37, i8* getelementptr inbounds ([42 x i8]* @.str58, i64 0, i64 0), i8* %38, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %30) #9
  br label %40

; <label>:40                                      ; preds = %33, %36
  %41 = load i32* @exitValue, align 4, !tbaa !7
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %setExit.exit

; <label>:43                                      ; preds = %40
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:44                                      ; preds = %27
  %45 = load i32* @srcMode, align 4, !tbaa !7
  %46 = and i32 %45, -2
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %61

; <label>:48                                      ; preds = %44
  %49 = call i32 @"\01_stat$INODE64"(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf) #9
  %50 = getelementptr inbounds %struct.stat* %statBuf, i64 0, i32 1
  %51 = load i16* %50, align 4, !tbaa !12
  %52 = and i16 %51, -4096
  %53 = icmp eq i16 %52, 16384
  br i1 %53, label %54, label %._crit_edge

._crit_edge:                                      ; preds = %48
  %.pre = load i32* @srcMode, align 4, !tbaa !7
  br label %61

; <label>:54                                      ; preds = %48
  %55 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %56 = load i8** @progName, align 8, !tbaa !2
  %57 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %55, i8* getelementptr inbounds ([35 x i8]* @.str59, i64 0, i64 0), i8* %56, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #9
  %58 = load i32* @exitValue, align 4, !tbaa !7
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %setExit.exit

; <label>:60                                      ; preds = %54
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:61                                      ; preds = %._crit_edge, %44
  %62 = phi i32 [ %.pre, %._crit_edge ], [ %45, %44 ]
  %63 = icmp ne i32 %62, 3
  %64 = load i8* @forceOverwrite, align 1
  %65 = icmp ne i8 %64, 0
  %or.cond5 = or i1 %63, %65
  br i1 %or.cond5, label %84, label %66

; <label>:66                                      ; preds = %61
  %67 = bitcast %struct.stat* %statBuf.i to i8*
  call void @llvm.lifetime.start(i64 144, i8* %67) #6
  %68 = call i32 @"\01_lstat$INODE64"(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf.i) #9
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %notAStandardFile.exit, label %notAStandardFile.exit.thread

notAStandardFile.exit.thread:                     ; preds = %66
  call void @llvm.lifetime.end(i64 144, i8* %67) #6
  br label %73

notAStandardFile.exit:                            ; preds = %66
  %70 = getelementptr inbounds %struct.stat* %statBuf.i, i64 0, i32 1
  %71 = load i16* %70, align 4, !tbaa !12
  %72 = and i16 %71, -4096
  %not..i = icmp eq i16 %72, -32768
  call void @llvm.lifetime.end(i64 144, i8* %67) #6
  br i1 %not..i, label %thread-pre-split, label %73

; <label>:73                                      ; preds = %notAStandardFile.exit, %notAStandardFile.exit.thread
  %74 = load i8* @noisy, align 1, !tbaa !6
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %80, label %76

; <label>:76                                      ; preds = %73
  %77 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %78 = load i8** @progName, align 8, !tbaa !2
  %79 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %77, i8* getelementptr inbounds ([41 x i8]* @.str60, i64 0, i64 0), i8* %78, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #9
  br label %80

; <label>:80                                      ; preds = %73, %76
  %81 = load i32* @exitValue, align 4, !tbaa !7
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %83, label %setExit.exit

; <label>:83                                      ; preds = %80
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

thread-pre-split:                                 ; preds = %notAStandardFile.exit
  %.pr = load i32* @srcMode, align 4, !tbaa !7
  br label %84

; <label>:84                                      ; preds = %thread-pre-split, %61
  %85 = phi i32 [ %.pr, %thread-pre-split ], [ %62, %61 ]
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %87, label %102

; <label>:87                                      ; preds = %84
  %88 = call fastcc zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #10
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %102, label %90

; <label>:90                                      ; preds = %87
  %91 = load i8* @forceOverwrite, align 1, !tbaa !6
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

; <label>:93                                      ; preds = %90
  %94 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #9
  br label %102

; <label>:95                                      ; preds = %90
  %96 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %97 = load i8** @progName, align 8, !tbaa !2
  %98 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %96, i8* getelementptr inbounds ([36 x i8]* @.str61, i64 0, i64 0), i8* %97, i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #9
  %99 = load i32* @exitValue, align 4, !tbaa !7
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %101, label %setExit.exit

; <label>:101                                     ; preds = %95
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:102                                     ; preds = %87, %93, %84
  %103 = load i32* @srcMode, align 4, !tbaa !7
  %104 = icmp ne i32 %103, 3
  %105 = load i8* @forceOverwrite, align 1
  %106 = icmp ne i8 %105, 0
  %or.cond7 = or i1 %104, %106
  br i1 %or.cond7, label %125, label %107

; <label>:107                                     ; preds = %102
  %108 = bitcast %struct.stat* %statBuf.i12 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %108) #6
  %109 = call i32 @"\01_lstat$INODE64"(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf.i12) #9
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %countHardLinks.exit, label %countHardLinks.exit.thread

countHardLinks.exit.thread:                       ; preds = %107
  call void @llvm.lifetime.end(i64 144, i8* %108) #6
  br label %thread-pre-split20

countHardLinks.exit:                              ; preds = %107
  %111 = getelementptr inbounds %struct.stat* %statBuf.i12, i64 0, i32 2
  %112 = load i16* %111, align 2, !tbaa !18
  %113 = zext i16 %112 to i32
  %114 = add nsw i32 %113, -1
  call void @llvm.lifetime.end(i64 144, i8* %108) #6
  %115 = icmp ugt i16 %112, 1
  br i1 %115, label %116, label %thread-pre-split20

; <label>:116                                     ; preds = %countHardLinks.exit
  %117 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %118 = load i8** @progName, align 8, !tbaa !2
  %119 = icmp sgt i32 %114, 1
  %120 = select i1 %119, i8* getelementptr inbounds ([2 x i8]* @.str63, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)
  %121 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %117, i8* getelementptr inbounds ([40 x i8]* @.str62, i64 0, i64 0), i8* %118, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i32 %114, i8* %120) #9
  %122 = load i32* @exitValue, align 4, !tbaa !7
  %123 = icmp slt i32 %122, 1
  br i1 %123, label %124, label %setExit.exit

; <label>:124                                     ; preds = %116
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

thread-pre-split20:                               ; preds = %countHardLinks.exit, %countHardLinks.exit.thread
  %.pr21 = load i32* @srcMode, align 4, !tbaa !7
  br label %125

; <label>:125                                     ; preds = %thread-pre-split20, %102
  %126 = phi i32 [ %.pr21, %thread-pre-split20 ], [ %103, %102 ]
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %129

; <label>:128                                     ; preds = %125
  call fastcc void @saveInputFileMetaInfo() #10
  %.pre32 = load i32* @srcMode, align 4, !tbaa !7
  br label %129

; <label>:129                                     ; preds = %128, %125
  %130 = phi i32 [ %.pre32, %128 ], [ %126, %125 ]
  switch i32 %130, label %210 [
    i32 1, label %131
    i32 2, label %147
    i32 3, label %179
  ]

; <label>:131                                     ; preds = %129
  %132 = load %struct.__sFILE** @__stdinp, align 8, !tbaa !2
  %133 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %134 = call i32 @fileno(%struct.__sFILE* %133) #9
  %135 = call i32 @isatty(i32 %134) #9
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %211, label %137

; <label>:137                                     ; preds = %131
  %138 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %139 = load i8** @progName, align 8, !tbaa !2
  %140 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %138, i8* getelementptr inbounds ([50 x i8]* @.str64, i64 0, i64 0), i8* %139) #9
  %141 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %142 = load i8** @progName, align 8, !tbaa !2
  %143 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %141, i8* getelementptr inbounds ([34 x i8]* @.str65, i64 0, i64 0), i8* %142, i8* %142) #9
  %144 = load i32* @exitValue, align 4, !tbaa !7
  %145 = icmp slt i32 %144, 1
  br i1 %145, label %146, label %setExit.exit

; <label>:146                                     ; preds = %137
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:147                                     ; preds = %129
  %148 = call %struct.__sFILE* @"\01_fopen"(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str66, i64 0, i64 0)) #9
  %149 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %150 = call i32 @fileno(%struct.__sFILE* %149) #9
  %151 = call i32 @isatty(i32 %150) #9
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %167, label %153

; <label>:153                                     ; preds = %147
  %154 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %155 = load i8** @progName, align 8, !tbaa !2
  %156 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %154, i8* getelementptr inbounds ([50 x i8]* @.str64, i64 0, i64 0), i8* %155) #9
  %157 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %158 = load i8** @progName, align 8, !tbaa !2
  %159 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %157, i8* getelementptr inbounds ([34 x i8]* @.str65, i64 0, i64 0), i8* %158, i8* %158) #9
  %160 = icmp eq %struct.__sFILE* %148, null
  br i1 %160, label %163, label %161

; <label>:161                                     ; preds = %153
  %162 = call i32 @fclose(%struct.__sFILE* %148) #9
  br label %163

; <label>:163                                     ; preds = %153, %161
  %164 = load i32* @exitValue, align 4, !tbaa !7
  %165 = icmp slt i32 %164, 1
  br i1 %165, label %166, label %setExit.exit

; <label>:166                                     ; preds = %163
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:167                                     ; preds = %147
  %168 = icmp eq %struct.__sFILE* %148, null
  br i1 %168, label %169, label %211

; <label>:169                                     ; preds = %167
  %170 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %171 = load i8** @progName, align 8, !tbaa !2
  %172 = call i32* @__error() #9
  %173 = load i32* %172, align 4, !tbaa !7
  %174 = call i8* @"\01_strerror"(i32 %173) #9
  %175 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %170, i8* getelementptr inbounds ([35 x i8]* @.str57, i64 0, i64 0), i8* %171, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %174) #9
  %176 = load i32* @exitValue, align 4, !tbaa !7
  %177 = icmp slt i32 %176, 1
  br i1 %177, label %178, label %setExit.exit

; <label>:178                                     ; preds = %169
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:179                                     ; preds = %129
  %180 = call %struct.__sFILE* @"\01_fopen"(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str66, i64 0, i64 0)) #9
  %181 = call %struct.__sFILE* @fopen_output_safely(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str67, i64 0, i64 0)) #10
  %182 = icmp eq %struct.__sFILE* %181, null
  br i1 %182, label %183, label %197

; <label>:183                                     ; preds = %179
  %184 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %185 = load i8** @progName, align 8, !tbaa !2
  %186 = call i32* @__error() #9
  %187 = load i32* %186, align 4, !tbaa !7
  %188 = call i8* @"\01_strerror"(i32 %187) #9
  %189 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %184, i8* getelementptr inbounds ([38 x i8]* @.str68, i64 0, i64 0), i8* %185, i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* %188) #9
  %190 = icmp eq %struct.__sFILE* %180, null
  br i1 %190, label %193, label %191

; <label>:191                                     ; preds = %183
  %192 = call i32 @fclose(%struct.__sFILE* %180) #9
  br label %193

; <label>:193                                     ; preds = %183, %191
  %194 = load i32* @exitValue, align 4, !tbaa !7
  %195 = icmp slt i32 %194, 1
  br i1 %195, label %196, label %setExit.exit

; <label>:196                                     ; preds = %193
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:197                                     ; preds = %179
  %198 = icmp eq %struct.__sFILE* %180, null
  br i1 %198, label %199, label %211

; <label>:199                                     ; preds = %197
  %200 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %201 = load i8** @progName, align 8, !tbaa !2
  %202 = call i32* @__error() #9
  %203 = load i32* %202, align 4, !tbaa !7
  %204 = call i8* @"\01_strerror"(i32 %203) #9
  %205 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %200, i8* getelementptr inbounds ([35 x i8]* @.str57, i64 0, i64 0), i8* %201, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %204) #9
  %206 = call i32 @fclose(%struct.__sFILE* %181) #9
  %207 = load i32* @exitValue, align 4, !tbaa !7
  %208 = icmp slt i32 %207, 1
  br i1 %208, label %209, label %setExit.exit

; <label>:209                                     ; preds = %199
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:210                                     ; preds = %129
  call fastcc void @panic(i8* getelementptr inbounds ([22 x i8]* @.str69, i64 0, i64 0)) #12
  unreachable

; <label>:211                                     ; preds = %131, %197, %167
  %outStr.0 = phi %struct.__sFILE* [ %181, %197 ], [ %149, %167 ], [ %133, %131 ]
  %inStr.0 = phi %struct.__sFILE* [ %180, %197 ], [ %148, %167 ], [ %132, %131 ]
  %212 = load i32* @verbosity, align 4, !tbaa !7
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %219

; <label>:214                                     ; preds = %211
  %215 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %216 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %215, i8* getelementptr inbounds ([7 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #9
  call fastcc void @pad() #10
  %217 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %218 = call i32 @fflush(%struct.__sFILE* %217) #9
  br label %219

; <label>:219                                     ; preds = %214, %211
  store %struct.__sFILE* %outStr.0, %struct.__sFILE** @outputHandleJustInCase, align 8, !tbaa !2
  store i8 1, i8* @deleteOutputOnInterrupt, align 1, !tbaa !6
  %220 = bitcast i32* %nbytes_in_lo32.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %220)
  %221 = bitcast i32* %nbytes_in_hi32.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %221)
  %222 = bitcast i32* %nbytes_out_lo32.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %222)
  %223 = bitcast i32* %nbytes_out_hi32.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %223)
  %224 = bitcast i32* %bzerr.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %224)
  %225 = bitcast i32* %bzerr_dummy.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %225)
  %226 = getelementptr inbounds [32 x i8]* %buf_nin.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %226)
  %227 = getelementptr inbounds [32 x i8]* %buf_nout.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %227)
  %228 = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start(i64 8, i8* %228)
  %229 = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start(i64 8, i8* %229)
  %230 = getelementptr inbounds [5000 x i8]* %ibuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 5000, i8* %230) #6
  %231 = call i32 @ferror(%struct.__sFILE* %inStr.0) #9
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %.loopexit.i

; <label>:233                                     ; preds = %219
  %234 = call i32 @ferror(%struct.__sFILE* %outStr.0) #9
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %.loopexit.i

; <label>:236                                     ; preds = %233
  %237 = load i32* @blockSize100k, align 4, !tbaa !7
  %238 = load i32* @verbosity, align 4, !tbaa !7
  %239 = load i32* @workFactor, align 4, !tbaa !7
  %240 = call i8* @BZ2_bzWriteOpen(i32* %bzerr.i, %struct.__sFILE* %outStr.0, i32 %237, i32 %238, i32 %239) #9
  %241 = load i32* %bzerr.i, align 4, !tbaa !7
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %.loopexit8.i

; <label>:243                                     ; preds = %236
  %244 = load i32* @verbosity, align 4, !tbaa !7
  %245 = icmp sgt i32 %244, 1
  br i1 %245, label %246, label %.preheader.i

; <label>:246                                     ; preds = %243
  %247 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %fputc.i = call i32 @fputc(i32 10, %struct.__sFILE* %247) #6
  br label %.preheader.i

.preheader.i:                                     ; preds = %246, %243, %258
  %248 = call fastcc zeroext i8 @myfeof(%struct.__sFILE* %inStr.0) #9
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %261

; <label>:250                                     ; preds = %.preheader.i
  %251 = call i64 @fread(i8* %230, i64 1, i64 5000, %struct.__sFILE* %inStr.0) #9
  %252 = trunc i64 %251 to i32
  %253 = call i32 @ferror(%struct.__sFILE* %inStr.0) #9
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %.loopexit.i

; <label>:255                                     ; preds = %250
  %256 = icmp sgt i32 %252, 0
  br i1 %256, label %257, label %258

; <label>:257                                     ; preds = %255
  call void @BZ2_bzWrite(i32* %bzerr.i, i8* %240, i8* %230, i32 %252) #9
  br label %258

; <label>:258                                     ; preds = %257, %255
  %259 = load i32* %bzerr.i, align 4, !tbaa !7
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %.preheader.i, label %.loopexit8.i

; <label>:261                                     ; preds = %.preheader.i
  call void @BZ2_bzWriteClose64(i32* %bzerr.i, i8* %240, i32 0, i32* %nbytes_in_lo32.i, i32* %nbytes_in_hi32.i, i32* %nbytes_out_lo32.i, i32* %nbytes_out_hi32.i) #9
  %262 = load i32* %bzerr.i, align 4, !tbaa !7
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %.loopexit8.i

; <label>:264                                     ; preds = %261
  %265 = call i32 @ferror(%struct.__sFILE* %outStr.0) #9
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %.loopexit.i

; <label>:267                                     ; preds = %264
  %268 = call i32 @fflush(%struct.__sFILE* %outStr.0) #9
  %269 = icmp eq i32 %268, -1
  br i1 %269, label %.loopexit.i, label %270

; <label>:270                                     ; preds = %267
  %271 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %272 = icmp eq %struct.__sFILE* %271, %outStr.0
  br i1 %272, label %276, label %273

; <label>:273                                     ; preds = %270
  %274 = call i32 @fclose(%struct.__sFILE* %outStr.0) #9
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 8, !tbaa !2
  %275 = icmp eq i32 %274, -1
  br i1 %275, label %.loopexit.i, label %276

; <label>:276                                     ; preds = %273, %270
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 8, !tbaa !2
  %277 = call i32 @ferror(%struct.__sFILE* %inStr.0) #9
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %.loopexit.i

; <label>:279                                     ; preds = %276
  %280 = call i32 @fclose(%struct.__sFILE* %inStr.0) #9
  %281 = icmp eq i32 %280, -1
  br i1 %281, label %.loopexit.i, label %282

; <label>:282                                     ; preds = %279
  %283 = load i32* @verbosity, align 4, !tbaa !7
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %compressStream.exit

; <label>:285                                     ; preds = %282
  %286 = load i32* %nbytes_in_lo32.i, align 4, !tbaa !7
  %287 = load i32* %nbytes_in_hi32.i, align 4
  %288 = or i32 %287, %286
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %293

; <label>:290                                     ; preds = %285
  %291 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %292 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str74, i64 0, i64 0), i64 21, i64 1, %struct.__sFILE* %291) #6
  br label %compressStream.exit

; <label>:293                                     ; preds = %285
  %294 = lshr i32 %287, 24
  %295 = trunc i32 %294 to i8
  %296 = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 7
  store i8 %295, i8* %296, align 1, !tbaa !6
  %297 = lshr i32 %287, 16
  %298 = trunc i32 %297 to i8
  %299 = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 6
  store i8 %298, i8* %299, align 1, !tbaa !6
  %300 = lshr i32 %287, 8
  %301 = trunc i32 %300 to i8
  %302 = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 5
  store i8 %301, i8* %302, align 1, !tbaa !6
  %303 = trunc i32 %287 to i8
  %304 = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 4
  store i8 %303, i8* %304, align 1, !tbaa !6
  %305 = lshr i32 %286, 24
  %306 = trunc i32 %305 to i8
  %307 = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 3
  store i8 %306, i8* %307, align 1, !tbaa !6
  %308 = lshr i32 %286, 16
  %309 = trunc i32 %308 to i8
  %310 = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 2
  store i8 %309, i8* %310, align 1, !tbaa !6
  %311 = lshr i32 %286, 8
  %312 = trunc i32 %311 to i8
  %313 = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 1
  store i8 %312, i8* %313, align 1, !tbaa !6
  %314 = trunc i32 %286 to i8
  store i8 %314, i8* %228, align 1, !tbaa !6
  %315 = load i32* %nbytes_out_lo32.i, align 4, !tbaa !7
  %316 = load i32* %nbytes_out_hi32.i, align 4, !tbaa !7
  %317 = lshr i32 %316, 24
  %318 = trunc i32 %317 to i8
  %319 = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 7
  store i8 %318, i8* %319, align 1, !tbaa !6
  %320 = lshr i32 %316, 16
  %321 = trunc i32 %320 to i8
  %322 = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 6
  store i8 %321, i8* %322, align 1, !tbaa !6
  %323 = lshr i32 %316, 8
  %324 = trunc i32 %323 to i8
  %325 = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 5
  store i8 %324, i8* %325, align 1, !tbaa !6
  %326 = trunc i32 %316 to i8
  %327 = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 4
  store i8 %326, i8* %327, align 1, !tbaa !6
  %328 = lshr i32 %315, 24
  %329 = trunc i32 %328 to i8
  %330 = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 3
  store i8 %329, i8* %330, align 1, !tbaa !6
  %331 = lshr i32 %315, 16
  %332 = trunc i32 %331 to i8
  %333 = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 2
  store i8 %332, i8* %333, align 1, !tbaa !6
  %334 = lshr i32 %315, 8
  %335 = trunc i32 %334 to i8
  %336 = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 1
  store i8 %335, i8* %336, align 1, !tbaa !6
  %337 = trunc i32 %315 to i8
  store i8 %337, i8* %229, align 1, !tbaa !6
  %338 = uitofp i8 %314 to double
  %339 = uitofp i8 %312 to double
  %340 = fmul double %339, 2.560000e+02
  %341 = fadd double %338, %340
  br label %._crit_edge.i.._crit_edge.i_crit_edge

uInt64_to_double.exit.i.preheader:                ; preds = %._crit_edge.i.._crit_edge.i_crit_edge
  %342 = uitofp i8 %337 to double
  %343 = uitofp i8 %335 to double
  %344 = fmul double %343, 2.560000e+02
  %345 = fadd double %342, %344
  br label %uInt64_to_double.exit.uInt64_to_double.exit_crit_edge.i.uInt64_to_double.exit.uInt64_to_double.exit_crit_edge.i_crit_edge

._crit_edge.i.._crit_edge.i_crit_edge:            ; preds = %293, %._crit_edge.i.._crit_edge.i_crit_edge
  %indvars.iv.next.i.i39 = phi i64 [ 2, %293 ], [ %indvars.iv.next.i.i, %._crit_edge.i.._crit_edge.i_crit_edge ]
  %346 = phi double [ %341, %293 ], [ %351, %._crit_edge.i.._crit_edge.i_crit_edge ]
  %347 = phi double [ 2.560000e+02, %293 ], [ %348, %._crit_edge.i.._crit_edge.i_crit_edge ]
  %.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds %struct.UInt64* %nbytes_in.i, i64 0, i32 0, i64 %indvars.iv.next.i.i39
  %.pre.i.pre = load i8* %.phi.trans.insert.i.phi.trans.insert, align 1, !tbaa !6
  %348 = fmul double %347, 2.560000e+02
  %349 = uitofp i8 %.pre.i.pre to double
  %350 = fmul double %349, %348
  %351 = fadd double %346, %350
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.next.i.i39, 1
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 8
  br i1 %exitcond.i.i, label %uInt64_to_double.exit.i.preheader, label %._crit_edge.i.._crit_edge.i_crit_edge

uInt64_to_double.exit.uInt64_to_double.exit_crit_edge.i.uInt64_to_double.exit.uInt64_to_double.exit_crit_edge.i_crit_edge: ; preds = %uInt64_to_double.exit.i.preheader, %uInt64_to_double.exit.uInt64_to_double.exit_crit_edge.i.uInt64_to_double.exit.uInt64_to_double.exit_crit_edge.i_crit_edge
  %indvars.iv.next.i5.i38 = phi i64 [ 2, %uInt64_to_double.exit.i.preheader ], [ %indvars.iv.next.i5.i, %uInt64_to_double.exit.uInt64_to_double.exit_crit_edge.i.uInt64_to_double.exit.uInt64_to_double.exit_crit_edge.i_crit_edge ]
  %352 = phi double [ %345, %uInt64_to_double.exit.i.preheader ], [ %357, %uInt64_to_double.exit.uInt64_to_double.exit_crit_edge.i.uInt64_to_double.exit.uInt64_to_double.exit_crit_edge.i_crit_edge ]
  %353 = phi double [ 2.560000e+02, %uInt64_to_double.exit.i.preheader ], [ %354, %uInt64_to_double.exit.uInt64_to_double.exit_crit_edge.i.uInt64_to_double.exit.uInt64_to_double.exit_crit_edge.i_crit_edge ]
  %.phi.trans.insert11.i.phi.trans.insert = getelementptr inbounds %struct.UInt64* %nbytes_out.i, i64 0, i32 0, i64 %indvars.iv.next.i5.i38
  %.pre12.i.pre = load i8* %.phi.trans.insert11.i.phi.trans.insert, align 1, !tbaa !6
  %354 = fmul double %353, 2.560000e+02
  %355 = uitofp i8 %.pre12.i.pre to double
  %356 = fmul double %355, %354
  %357 = fadd double %352, %356
  %indvars.iv.next.i5.i = add nuw nsw i64 %indvars.iv.next.i5.i38, 1
  %exitcond.i6.i = icmp eq i64 %indvars.iv.next.i5.i, 8
  br i1 %exitcond.i6.i, label %uInt64_to_double.exit7.i, label %uInt64_to_double.exit.uInt64_to_double.exit_crit_edge.i.uInt64_to_double.exit.uInt64_to_double.exit_crit_edge.i_crit_edge

uInt64_to_double.exit7.i:                         ; preds = %uInt64_to_double.exit.uInt64_to_double.exit_crit_edge.i.uInt64_to_double.exit.uInt64_to_double.exit_crit_edge.i_crit_edge
  call fastcc void @uInt64_toAscii(i8* %226, %struct.UInt64* %nbytes_in.i) #9
  call fastcc void @uInt64_toAscii(i8* %227, %struct.UInt64* %nbytes_out.i) #9
  %358 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %359 = fdiv double %351, %357
  %360 = fmul double %357, 8.000000e+00
  %361 = fdiv double %360, %351
  %362 = fdiv double %357, %351
  %363 = fsub double 1.000000e+00, %362
  %364 = fmul double %363, 1.000000e+02
  %365 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %358, i8* getelementptr inbounds ([57 x i8]* @.str75, i64 0, i64 0), double %359, double %361, double %364, i8* %226, i8* %227) #9
  br label %compressStream.exit

.loopexit8.i:                                     ; preds = %258, %261, %236
  call void @BZ2_bzWriteClose64(i32* %bzerr_dummy.i, i8* %240, i32 1, i32* %nbytes_in_lo32.i, i32* %nbytes_in_hi32.i, i32* %nbytes_out_lo32.i, i32* %nbytes_out_hi32.i) #9
  %366 = load i32* %bzerr.i, align 4, !tbaa !7
  switch i32 %366, label %369 [
    i32 -9, label %367
    i32 -3, label %368
    i32 -6, label %.loopexit.i
  ]

; <label>:367                                     ; preds = %.loopexit8.i
  call fastcc void @configError() #11
  unreachable

; <label>:368                                     ; preds = %.loopexit8.i
  call fastcc void @outOfMemory() #11
  unreachable

.loopexit.i:                                      ; preds = %250, %.loopexit8.i, %279, %276, %273, %267, %264, %233, %219
  call fastcc void @ioError() #11
  unreachable

; <label>:369                                     ; preds = %.loopexit8.i
  call fastcc void @panic(i8* getelementptr inbounds ([26 x i8]* @.str76, i64 0, i64 0)) #11
  unreachable

compressStream.exit:                              ; preds = %282, %290, %uInt64_to_double.exit7.i
  call void @llvm.lifetime.end(i64 5000, i8* %230) #6
  call void @llvm.lifetime.end(i64 4, i8* %220)
  call void @llvm.lifetime.end(i64 4, i8* %221)
  call void @llvm.lifetime.end(i64 4, i8* %222)
  call void @llvm.lifetime.end(i64 4, i8* %223)
  call void @llvm.lifetime.end(i64 4, i8* %224)
  call void @llvm.lifetime.end(i64 4, i8* %225)
  call void @llvm.lifetime.end(i64 32, i8* %226)
  call void @llvm.lifetime.end(i64 32, i8* %227)
  call void @llvm.lifetime.end(i64 8, i8* %228)
  call void @llvm.lifetime.end(i64 8, i8* %229)
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 8, !tbaa !2
  %370 = load i32* @srcMode, align 4, !tbaa !7
  %371 = icmp eq i32 %370, 3
  br i1 %371, label %372, label %379

; <label>:372                                     ; preds = %compressStream.exit
  call fastcc void @applySavedMetaInfoToOutputFile() #10
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !tbaa !6
  %373 = load i8* @keepInputFiles, align 1, !tbaa !6
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %375, label %379

; <label>:375                                     ; preds = %372
  %376 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #9
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %379, label %378

; <label>:378                                     ; preds = %375
  call fastcc void @ioError() #12
  unreachable

; <label>:379                                     ; preds = %375, %372, %compressStream.exit
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !tbaa !6
  br label %setExit.exit

setExit.exit:                                     ; preds = %209, %199, %196, %193, %178, %169, %166, %163, %146, %137, %124, %116, %101, %95, %83, %80, %60, %54, %43, %40, %26, %17, %379
  call void @llvm.lifetime.end(i64 144, i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @uncompress(i8* %name) #0 {
  %bzerr.i = alloca i32, align 4
  %bzerr_dummy.i = alloca i32, align 4
  %obuf.i = alloca [5000 x i8], align 16
  %unused.i = alloca [5000 x i8], align 16
  %nUnused.i = alloca i32, align 4
  %unusedTmpV.i = alloca i8*, align 8
  %statBuf.i16 = alloca %struct.stat, align 8
  %statBuf.i = alloca %struct.stat, align 8
  %statBuf = alloca %struct.stat, align 8
  %1 = bitcast %struct.stat* %statBuf to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1) #6
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !tbaa !6
  %2 = icmp eq i8* %name, null
  %3 = load i32* @srcMode, align 4
  %4 = icmp ne i32 %3, 1
  %or.cond = and i1 %2, %4
  br i1 %or.cond, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call fastcc void @panic(i8* getelementptr inbounds ([23 x i8]* @.str79, i64 0, i64 0)) #12
  unreachable

; <label>:6                                       ; preds = %0
  switch i32 %3, label %27 [
    i32 1, label %7
    i32 3, label %8
    i32 2, label %26
  ]

; <label>:7                                       ; preds = %6
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str54, i64 0, i64 0)) #10
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str55, i64 0, i64 0)) #10
  br label %27

; <label>:8                                       ; preds = %6
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %name) #10
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* %name) #10
  br label %11

; <label>:9                                       ; preds = %11
  %10 = icmp slt i64 %indvars.iv.next, 4
  br i1 %10, label %11, label %24

; <label>:11                                      ; preds = %8, %9
  %indvars.iv = phi i64 [ 0, %8 ], [ %indvars.iv.next, %9 ]
  %12 = getelementptr inbounds [4 x i8*]* @zSuffix, i64 0, i64 %indvars.iv
  %13 = load i8** %12, align 8, !tbaa !2
  %14 = tail call fastcc zeroext i8 @hasSuffix(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* %13) #9
  %15 = icmp eq i8 %14, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %15, label %9, label %mapSuffix.exit

mapSuffix.exit:                                   ; preds = %11
  %16 = getelementptr inbounds [4 x i8*]* @unzSuffix, i64 0, i64 %indvars.iv
  %17 = load i8** %16, align 8, !tbaa !2
  %18 = tail call i64 @strlen(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #9
  %19 = tail call i64 @strlen(i8* %13) #9
  %20 = sub i64 %18, %19
  %21 = getelementptr inbounds [1034 x i8]* @outName, i64 0, i64 %20
  store i8 0, i8* %21, align 1, !tbaa !6
  %22 = tail call i64 @llvm.objectsize.i64.p0i8(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i1 false) #6
  %23 = tail call i8* @__strcat_chk(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* %17, i64 %22) #9
  br label %27

; <label>:24                                      ; preds = %9
  %25 = tail call i8* @__strcat_chk(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str80, i64 0, i64 0), i64 1034) #9
  br label %27

; <label>:26                                      ; preds = %6
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %name) #10
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str55, i64 0, i64 0)) #10
  br label %27

; <label>:27                                      ; preds = %mapSuffix.exit, %7, %24, %26, %6
  %cantGuess.0 = phi i8 [ 0, %6 ], [ 0, %26 ], [ 0, %mapSuffix.exit ], [ 1, %24 ], [ 0, %7 ]
  %28 = load i32* @srcMode, align 4, !tbaa !7
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %.thread68, label %30

; <label>:30                                      ; preds = %27
  %31 = tail call fastcc zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #10
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %43

; <label>:33                                      ; preds = %30
  %34 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %35 = load i8** @progName, align 8, !tbaa !2
  %36 = tail call i32* @__error() #9
  %37 = load i32* %36, align 4, !tbaa !7
  %38 = tail call i8* @"\01_strerror"(i32 %37) #9
  %39 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %34, i8* getelementptr inbounds ([35 x i8]* @.str57, i64 0, i64 0), i8* %35, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %38) #9
  %40 = load i32* @exitValue, align 4, !tbaa !7
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %setExit.exit

; <label>:42                                      ; preds = %33
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:43                                      ; preds = %30
  %.pre = load i32* @srcMode, align 4, !tbaa !7
  %44 = and i32 %.pre, -2
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %59

; <label>:46                                      ; preds = %43
  %47 = call i32 @"\01_stat$INODE64"(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf) #9
  %48 = getelementptr inbounds %struct.stat* %statBuf, i64 0, i32 1
  %49 = load i16* %48, align 4, !tbaa !12
  %50 = and i16 %49, -4096
  %51 = icmp eq i16 %50, 16384
  br i1 %51, label %52, label %._crit_edge65

._crit_edge65:                                    ; preds = %46
  %.pre66 = load i32* @srcMode, align 4, !tbaa !7
  br label %59

; <label>:52                                      ; preds = %46
  %53 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %54 = load i8** @progName, align 8, !tbaa !2
  %55 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %53, i8* getelementptr inbounds ([35 x i8]* @.str59, i64 0, i64 0), i8* %54, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #9
  %56 = load i32* @exitValue, align 4, !tbaa !7
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %setExit.exit

; <label>:58                                      ; preds = %52
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:59                                      ; preds = %._crit_edge65, %43
  %60 = phi i32 [ %.pre66, %._crit_edge65 ], [ %.pre, %43 ]
  %61 = icmp ne i32 %60, 3
  %62 = load i8* @forceOverwrite, align 1
  %63 = icmp ne i8 %62, 0
  %or.cond6 = or i1 %61, %63
  br i1 %or.cond6, label %.thread68, label %64

; <label>:64                                      ; preds = %59
  %65 = bitcast %struct.stat* %statBuf.i to i8*
  call void @llvm.lifetime.start(i64 144, i8* %65) #6
  %66 = call i32 @"\01_lstat$INODE64"(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf.i) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %notAStandardFile.exit, label %notAStandardFile.exit.thread

notAStandardFile.exit.thread:                     ; preds = %64
  call void @llvm.lifetime.end(i64 144, i8* %65) #6
  br label %71

notAStandardFile.exit:                            ; preds = %64
  %68 = getelementptr inbounds %struct.stat* %statBuf.i, i64 0, i32 1
  %69 = load i16* %68, align 4, !tbaa !12
  %70 = and i16 %69, -4096
  %not..i = icmp eq i16 %70, -32768
  call void @llvm.lifetime.end(i64 144, i8* %65) #6
  br i1 %not..i, label %.thread68, label %71

; <label>:71                                      ; preds = %notAStandardFile.exit, %notAStandardFile.exit.thread
  %72 = load i8* @noisy, align 1, !tbaa !6
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %78, label %74

; <label>:74                                      ; preds = %71
  %75 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %76 = load i8** @progName, align 8, !tbaa !2
  %77 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %75, i8* getelementptr inbounds ([41 x i8]* @.str60, i64 0, i64 0), i8* %76, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #9
  br label %78

; <label>:78                                      ; preds = %71, %74
  %79 = load i32* @exitValue, align 4, !tbaa !7
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %81, label %setExit.exit

; <label>:81                                      ; preds = %78
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

.thread68:                                        ; preds = %27, %notAStandardFile.exit, %59
  %82 = icmp ne i8 %cantGuess.0, 0
  %83 = load i8* @noisy, align 1
  %84 = icmp ne i8 %83, 0
  %or.cond10 = and i1 %82, %84
  br i1 %or.cond10, label %85, label %89

; <label>:85                                      ; preds = %.thread68
  %86 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %87 = load i8** @progName, align 8, !tbaa !2
  %88 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %86, i8* getelementptr inbounds ([50 x i8]* @.str81, i64 0, i64 0), i8* %87, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #9
  br label %89

; <label>:89                                      ; preds = %85, %.thread68
  %90 = load i32* @srcMode, align 4, !tbaa !7
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %92, label %107

; <label>:92                                      ; preds = %89
  %93 = call fastcc zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #10
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %107, label %95

; <label>:95                                      ; preds = %92
  %96 = load i8* @forceOverwrite, align 1, !tbaa !6
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %100, label %98

; <label>:98                                      ; preds = %95
  %99 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #9
  br label %107

; <label>:100                                     ; preds = %95
  %101 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %102 = load i8** @progName, align 8, !tbaa !2
  %103 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %101, i8* getelementptr inbounds ([36 x i8]* @.str61, i64 0, i64 0), i8* %102, i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #9
  %104 = load i32* @exitValue, align 4, !tbaa !7
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %106, label %setExit.exit

; <label>:106                                     ; preds = %100
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:107                                     ; preds = %92, %98, %89
  %108 = load i32* @srcMode, align 4, !tbaa !7
  %109 = icmp ne i32 %108, 3
  %110 = load i8* @forceOverwrite, align 1
  %111 = icmp ne i8 %110, 0
  %or.cond8 = or i1 %109, %111
  br i1 %or.cond8, label %130, label %112

; <label>:112                                     ; preds = %107
  %113 = bitcast %struct.stat* %statBuf.i16 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %113) #6
  %114 = call i32 @"\01_lstat$INODE64"(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf.i16) #9
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %countHardLinks.exit, label %countHardLinks.exit.thread

countHardLinks.exit.thread:                       ; preds = %112
  call void @llvm.lifetime.end(i64 144, i8* %113) #6
  br label %thread-pre-split

countHardLinks.exit:                              ; preds = %112
  %116 = getelementptr inbounds %struct.stat* %statBuf.i16, i64 0, i32 2
  %117 = load i16* %116, align 2, !tbaa !18
  %118 = zext i16 %117 to i32
  %119 = add nsw i32 %118, -1
  call void @llvm.lifetime.end(i64 144, i8* %113) #6
  %120 = icmp ugt i16 %117, 1
  br i1 %120, label %121, label %thread-pre-split

; <label>:121                                     ; preds = %countHardLinks.exit
  %122 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %123 = load i8** @progName, align 8, !tbaa !2
  %124 = icmp sgt i32 %119, 1
  %125 = select i1 %124, i8* getelementptr inbounds ([2 x i8]* @.str63, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str4, i64 0, i64 0)
  %126 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %122, i8* getelementptr inbounds ([40 x i8]* @.str62, i64 0, i64 0), i8* %123, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i32 %119, i8* %125) #9
  %127 = load i32* @exitValue, align 4, !tbaa !7
  %128 = icmp slt i32 %127, 1
  br i1 %128, label %129, label %setExit.exit

; <label>:129                                     ; preds = %121
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

thread-pre-split:                                 ; preds = %countHardLinks.exit, %countHardLinks.exit.thread
  %.pr = load i32* @srcMode, align 4, !tbaa !7
  br label %130

; <label>:130                                     ; preds = %thread-pre-split, %107
  %131 = phi i32 [ %.pr, %thread-pre-split ], [ %108, %107 ]
  %132 = icmp eq i32 %131, 3
  br i1 %132, label %133, label %134

; <label>:133                                     ; preds = %130
  call fastcc void @saveInputFileMetaInfo() #10
  %.pre67 = load i32* @srcMode, align 4, !tbaa !7
  br label %134

; <label>:134                                     ; preds = %133, %130
  %135 = phi i32 [ %.pre67, %133 ], [ %131, %130 ]
  switch i32 %135, label %197 [
    i32 1, label %136
    i32 2, label %152
    i32 3, label %166
  ]

; <label>:136                                     ; preds = %134
  %137 = load %struct.__sFILE** @__stdinp, align 8, !tbaa !2
  %138 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %139 = call i32 @fileno(%struct.__sFILE* %137) #9
  %140 = call i32 @isatty(i32 %139) #9
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %198, label %142

; <label>:142                                     ; preds = %136
  %143 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %144 = load i8** @progName, align 8, !tbaa !2
  %145 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %143, i8* getelementptr inbounds ([51 x i8]* @.str82, i64 0, i64 0), i8* %144) #9
  %146 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %147 = load i8** @progName, align 8, !tbaa !2
  %148 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %146, i8* getelementptr inbounds ([34 x i8]* @.str65, i64 0, i64 0), i8* %147, i8* %147) #9
  %149 = load i32* @exitValue, align 4, !tbaa !7
  %150 = icmp slt i32 %149, 1
  br i1 %150, label %151, label %setExit.exit

; <label>:151                                     ; preds = %142
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:152                                     ; preds = %134
  %153 = call %struct.__sFILE* @"\01_fopen"(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str66, i64 0, i64 0)) #9
  %154 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %155 = icmp eq %struct.__sFILE* %153, null
  br i1 %155, label %156, label %198

; <label>:156                                     ; preds = %152
  %157 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %158 = load i8** @progName, align 8, !tbaa !2
  %159 = call i32* @__error() #9
  %160 = load i32* %159, align 4, !tbaa !7
  %161 = call i8* @"\01_strerror"(i32 %160) #9
  %162 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %157, i8* getelementptr inbounds ([34 x i8]* @.str83, i64 0, i64 0), i8* %158, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %161) #9
  %163 = load i32* @exitValue, align 4, !tbaa !7
  %164 = icmp slt i32 %163, 1
  br i1 %164, label %165, label %setExit.exit

; <label>:165                                     ; preds = %156
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:166                                     ; preds = %134
  %167 = call %struct.__sFILE* @"\01_fopen"(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str66, i64 0, i64 0)) #9
  %168 = call %struct.__sFILE* @fopen_output_safely(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str67, i64 0, i64 0)) #10
  %169 = icmp eq %struct.__sFILE* %168, null
  br i1 %169, label %170, label %184

; <label>:170                                     ; preds = %166
  %171 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %172 = load i8** @progName, align 8, !tbaa !2
  %173 = call i32* @__error() #9
  %174 = load i32* %173, align 4, !tbaa !7
  %175 = call i8* @"\01_strerror"(i32 %174) #9
  %176 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %171, i8* getelementptr inbounds ([38 x i8]* @.str68, i64 0, i64 0), i8* %172, i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* %175) #9
  %177 = icmp eq %struct.__sFILE* %167, null
  br i1 %177, label %180, label %178

; <label>:178                                     ; preds = %170
  %179 = call i32 @fclose(%struct.__sFILE* %167) #9
  br label %180

; <label>:180                                     ; preds = %170, %178
  %181 = load i32* @exitValue, align 4, !tbaa !7
  %182 = icmp slt i32 %181, 1
  br i1 %182, label %183, label %setExit.exit

; <label>:183                                     ; preds = %180
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:184                                     ; preds = %166
  %185 = icmp eq %struct.__sFILE* %167, null
  br i1 %185, label %186, label %198

; <label>:186                                     ; preds = %184
  %187 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %188 = load i8** @progName, align 8, !tbaa !2
  %189 = call i32* @__error() #9
  %190 = load i32* %189, align 4, !tbaa !7
  %191 = call i8* @"\01_strerror"(i32 %190) #9
  %192 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %187, i8* getelementptr inbounds ([35 x i8]* @.str57, i64 0, i64 0), i8* %188, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %191) #9
  %193 = call i32 @fclose(%struct.__sFILE* %168) #9
  %194 = load i32* @exitValue, align 4, !tbaa !7
  %195 = icmp slt i32 %194, 1
  br i1 %195, label %196, label %setExit.exit

; <label>:196                                     ; preds = %186
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:197                                     ; preds = %134
  call fastcc void @panic(i8* getelementptr inbounds ([24 x i8]* @.str84, i64 0, i64 0)) #12
  unreachable

; <label>:198                                     ; preds = %136, %184, %152
  %outStr.0 = phi %struct.__sFILE* [ %168, %184 ], [ %154, %152 ], [ %138, %136 ]
  %inStr.0 = phi %struct.__sFILE* [ %167, %184 ], [ %153, %152 ], [ %137, %136 ]
  %199 = load i32* @verbosity, align 4, !tbaa !7
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %206

; <label>:201                                     ; preds = %198
  %202 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %203 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %202, i8* getelementptr inbounds ([7 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #9
  call fastcc void @pad() #10
  %204 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %205 = call i32 @fflush(%struct.__sFILE* %204) #9
  br label %206

; <label>:206                                     ; preds = %201, %198
  store %struct.__sFILE* %outStr.0, %struct.__sFILE** @outputHandleJustInCase, align 8, !tbaa !2
  store i8 1, i8* @deleteOutputOnInterrupt, align 1, !tbaa !6
  %207 = bitcast i32* %bzerr.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %207)
  %208 = bitcast i32* %bzerr_dummy.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %208)
  %209 = bitcast i32* %nUnused.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %209)
  %210 = bitcast i8** %unusedTmpV.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %210)
  %211 = getelementptr inbounds [5000 x i8]* %obuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 5000, i8* %211) #6
  %212 = getelementptr inbounds [5000 x i8]* %unused.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 5000, i8* %212) #6
  store i32 0, i32* %nUnused.i, align 4, !tbaa !7
  %213 = call i32 @ferror(%struct.__sFILE* %outStr.0) #9
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %.loopexit9.i

; <label>:215                                     ; preds = %206
  %216 = call i32 @ferror(%struct.__sFILE* %inStr.0) #9
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %.preheader.i, label %.loopexit9.i

.preheader.i:                                     ; preds = %215
  %218 = load i32* @verbosity, align 4, !tbaa !7
  %219 = load i8* @smallMode, align 1, !tbaa !6
  %220 = zext i8 %219 to i32
  %221 = call i8* @BZ2_bzReadOpen(i32* %bzerr.i, %struct.__sFILE* %inStr.0, i32 %218, i32 %220, i8* %212, i32 0) #9
  %222 = icmp eq i8* %221, null
  %223 = load i32* %bzerr.i, align 4
  %224 = icmp ne i32 %223, 0
  %or.cond33.i = or i1 %222, %224
  br i1 %or.cond33.i, label %.loopexit10.i, label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %.preheader.i, %.backedge.i
  %225 = phi i8* [ %266, %.backedge.i ], [ %221, %.preheader.i ]
  %streamNo.034.i = phi i32 [ %226, %.backedge.i ], [ 0, %.preheader.i ]
  %226 = add nuw nsw i32 %streamNo.034.i, 1
  br label %227

; <label>:227                                     ; preds = %._crit_edge52.i, %.lr.ph35.i
  %228 = phi i32 [ %.pre.i, %._crit_edge52.i ], [ 0, %.lr.ph35.i ]
  switch i32 %228, label %.loopexit10.i [
    i32 0, label %229
    i32 4, label %243
  ]

; <label>:229                                     ; preds = %227
  %230 = call i32 @BZ2_bzRead(i32* %bzerr.i, i8* %225, i8* %211, i32 5000) #9
  %231 = load i32* %bzerr.i, align 4, !tbaa !7
  %232 = icmp eq i32 %231, -5
  br i1 %232, label %295, label %233

; <label>:233                                     ; preds = %229
  %234 = and i32 %231, -5
  %235 = icmp eq i32 %234, 0
  %236 = icmp sgt i32 %230, 0
  %or.cond5.i = and i1 %236, %235
  br i1 %or.cond5.i, label %237, label %240

; <label>:237                                     ; preds = %233
  %238 = sext i32 %230 to i64
  %239 = call i64 @"\01_fwrite"(i8* %211, i64 1, i64 %238, %struct.__sFILE* %outStr.0) #9
  br label %240

; <label>:240                                     ; preds = %237, %233
  %241 = call i32 @ferror(%struct.__sFILE* %outStr.0) #9
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %._crit_edge52.i, label %.loopexit9.i

._crit_edge52.i:                                  ; preds = %240
  %.pre.i = load i32* %bzerr.i, align 4, !tbaa !7
  br label %227

; <label>:243                                     ; preds = %227
  call void @BZ2_bzReadGetUnused(i32* %bzerr.i, i8* %225, i8** %unusedTmpV.i, i32* %nUnused.i) #9
  %244 = load i32* %bzerr.i, align 4, !tbaa !7
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %247, label %246

; <label>:246                                     ; preds = %243
  call fastcc void @panic(i8* getelementptr inbounds ([27 x i8]* @.str88, i64 0, i64 0)) #11
  unreachable

; <label>:247                                     ; preds = %243
  %248 = load i8** %unusedTmpV.i, align 8, !tbaa !2
  %249 = load i32* %nUnused.i, align 4, !tbaa !7
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %247
  %251 = sext i32 %249 to i64
  %252 = add nsw i64 %251, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %253 = getelementptr inbounds i8* %248, i64 %indvars.iv.i
  %254 = load i8* %253, align 1, !tbaa !6
  %255 = getelementptr inbounds [5000 x i8]* %unused.i, i64 0, i64 %indvars.iv.i
  store i8 %254, i8* %255, align 1, !tbaa !6
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond = icmp eq i64 %indvars.iv.i, %252
  br i1 %exitcond, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %247
  call void @BZ2_bzReadClose(i32* %bzerr.i, i8* %225) #9
  %256 = load i32* %bzerr.i, align 4, !tbaa !7
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %259, label %258

; <label>:258                                     ; preds = %._crit_edge.i
  call fastcc void @panic(i8* getelementptr inbounds ([27 x i8]* @.str88, i64 0, i64 0)) #11
  unreachable

; <label>:259                                     ; preds = %._crit_edge.i
  %260 = load i32* %nUnused.i, align 4, !tbaa !7
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %270, label %.backedge.i

.backedge.i:                                      ; preds = %..backedge_crit_edge.i, %259
  %262 = phi i32 [ %.pre53.i, %..backedge_crit_edge.i ], [ %260, %259 ]
  %263 = load i32* @verbosity, align 4, !tbaa !7
  %264 = load i8* @smallMode, align 1, !tbaa !6
  %265 = zext i8 %264 to i32
  %266 = call i8* @BZ2_bzReadOpen(i32* %bzerr.i, %struct.__sFILE* %inStr.0, i32 %263, i32 %265, i8* %212, i32 %262) #9
  %267 = icmp eq i8* %266, null
  %268 = load i32* %bzerr.i, align 4
  %269 = icmp ne i32 %268, 0
  %or.cond.i = or i1 %267, %269
  br i1 %or.cond.i, label %.loopexit10.i, label %.lr.ph35.i

; <label>:270                                     ; preds = %259
  %271 = call fastcc zeroext i8 @myfeof(%struct.__sFILE* %inStr.0) #9
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %..backedge_crit_edge.i, label %.loopexit.i

..backedge_crit_edge.i:                           ; preds = %270
  %.pre53.i = load i32* %nUnused.i, align 4, !tbaa !7
  br label %.backedge.i

.loopexit.i:                                      ; preds = %270, %299
  %273 = call i32 @ferror(%struct.__sFILE* %inStr.0) #9
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %.loopexit9.i

; <label>:275                                     ; preds = %.loopexit.i
  %276 = call i32 @fclose(%struct.__sFILE* %inStr.0) #9
  %277 = icmp eq i32 %276, -1
  br i1 %277, label %.loopexit9.i, label %278

; <label>:278                                     ; preds = %275
  %279 = call i32 @ferror(%struct.__sFILE* %outStr.0) #9
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %.loopexit9.i

; <label>:281                                     ; preds = %278
  %282 = call i32 @fflush(%struct.__sFILE* %outStr.0) #9
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %.loopexit9.i

; <label>:284                                     ; preds = %281
  %285 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %286 = icmp eq %struct.__sFILE* %285, %outStr.0
  br i1 %286, label %290, label %287

; <label>:287                                     ; preds = %284
  %288 = call i32 @fclose(%struct.__sFILE* %outStr.0) #9
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 8, !tbaa !2
  %289 = icmp eq i32 %288, -1
  br i1 %289, label %.loopexit9.i, label %290

; <label>:290                                     ; preds = %287, %284
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 8, !tbaa !2
  %291 = load i32* @verbosity, align 4, !tbaa !7
  %292 = icmp sgt i32 %291, 1
  br i1 %292, label %.critedge, label %.critedge24

.critedge:                                        ; preds = %290
  %293 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %294 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str89, i64 0, i64 0), i64 5, i64 1, %struct.__sFILE* %293) #6
  call void @llvm.lifetime.end(i64 5000, i8* %212) #6
  call void @llvm.lifetime.end(i64 5000, i8* %211) #6
  call void @llvm.lifetime.end(i64 4, i8* %207)
  call void @llvm.lifetime.end(i64 4, i8* %208)
  call void @llvm.lifetime.end(i64 4, i8* %209)
  call void @llvm.lifetime.end(i64 8, i8* %210)
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 8, !tbaa !2
  br label %367

; <label>:295                                     ; preds = %229
  %296 = load i8* @forceOverwrite, align 1, !tbaa !6
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %.loopexit10.i, label %298

; <label>:298                                     ; preds = %295
  call void @rewind(%struct.__sFILE* %inStr.0) #9
  br label %299

; <label>:299                                     ; preds = %312, %298
  %300 = call fastcc zeroext i8 @myfeof(%struct.__sFILE* %inStr.0) #9
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %302, label %.loopexit.i

; <label>:302                                     ; preds = %299
  %303 = call i64 @fread(i8* %211, i64 1, i64 5000, %struct.__sFILE* %inStr.0) #9
  %304 = call i32 @ferror(%struct.__sFILE* %inStr.0) #9
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %.loopexit9.i

; <label>:306                                     ; preds = %302
  %307 = trunc i64 %303 to i32
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %312

; <label>:309                                     ; preds = %306
  %sext.i = shl i64 %303, 32
  %310 = ashr exact i64 %sext.i, 32
  %311 = call i64 @"\01_fwrite"(i8* %211, i64 1, i64 %310, %struct.__sFILE* %outStr.0) #9
  br label %312

; <label>:312                                     ; preds = %309, %306
  %313 = call i32 @ferror(%struct.__sFILE* %outStr.0) #9
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %299, label %.loopexit9.i

.loopexit10.i:                                    ; preds = %.backedge.i, %227, %295, %.preheader.i
  %315 = phi i8* [ %225, %295 ], [ %221, %.preheader.i ], [ %225, %227 ], [ %266, %.backedge.i ]
  %streamNo.1.i = phi i32 [ %226, %295 ], [ 0, %.preheader.i ], [ %226, %227 ], [ %226, %.backedge.i ]
  call void @BZ2_bzReadClose(i32* %bzerr_dummy.i, i8* %315) #9
  %316 = load i32* %bzerr.i, align 4, !tbaa !7
  switch i32 %316, label %366 [
    i32 -9, label %317
    i32 -6, label %.loopexit9.i
    i32 -4, label %318
    i32 -3, label %330
    i32 -7, label %331
    i32 -5, label %347
  ]

; <label>:317                                     ; preds = %.loopexit10.i
  call fastcc void @configError() #11
  unreachable

.loopexit9.i:                                     ; preds = %240, %312, %302, %.loopexit10.i, %287, %281, %278, %275, %.loopexit.i, %215, %206
  call fastcc void @ioError() #11
  unreachable

; <label>:318                                     ; preds = %.loopexit10.i
  %319 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %320 = load i8** @progName, align 8, !tbaa !2
  %321 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %319, i8* getelementptr inbounds ([47 x i8]* @.str92, i64 0, i64 0), i8* %320) #9
  %322 = load i8* @noisy, align 1, !tbaa !6
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %cadvise.exit.i.i, label %showFileNames.exit.i.i

showFileNames.exit.i.i:                           ; preds = %318
  %324 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %325 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %324, i8* getelementptr inbounds ([36 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #9
  %.pr.i.i = load i8* @noisy, align 1, !tbaa !6
  %326 = icmp eq i8 %.pr.i.i, 0
  br i1 %326, label %cadvise.exit.i.i, label %327

; <label>:327                                     ; preds = %showFileNames.exit.i.i
  %328 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %329 = call i64 @fwrite(i8* getelementptr inbounds ([241 x i8]* @.str46, i64 0, i64 0), i64 240, i64 1, %struct.__sFILE* %328) #6
  br label %cadvise.exit.i.i

cadvise.exit.i.i:                                 ; preds = %327, %showFileNames.exit.i.i, %318
  call fastcc void @cleanUpAndFail(i32 2) #11
  unreachable

; <label>:330                                     ; preds = %.loopexit10.i
  call fastcc void @outOfMemory() #11
  unreachable

; <label>:331                                     ; preds = %.loopexit10.i
  %332 = load i8* @noisy, align 1, !tbaa !6
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %cadvise.exit.i8.i, label %334

; <label>:334                                     ; preds = %331
  %335 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %336 = load i8** @progName, align 8, !tbaa !2
  %337 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %335, i8* getelementptr inbounds ([95 x i8]* @.str93, i64 0, i64 0), i8* %336) #9
  %338 = load i8** @progName, align 8, !tbaa !2
  call void @perror(i8* %338) #13
  %339 = load i8* @noisy, align 1, !tbaa !6
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %cadvise.exit.i8.i, label %showFileNames.exit.i7.i

showFileNames.exit.i7.i:                          ; preds = %334
  %341 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %342 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %341, i8* getelementptr inbounds ([36 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #9
  %.pr.i6.i = load i8* @noisy, align 1, !tbaa !6
  %343 = icmp eq i8 %.pr.i6.i, 0
  br i1 %343, label %cadvise.exit.i8.i, label %344

; <label>:344                                     ; preds = %showFileNames.exit.i7.i
  %345 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %346 = call i64 @fwrite(i8* getelementptr inbounds ([241 x i8]* @.str46, i64 0, i64 0), i64 240, i64 1, %struct.__sFILE* %345) #6
  br label %cadvise.exit.i8.i

cadvise.exit.i8.i:                                ; preds = %344, %showFileNames.exit.i7.i, %334, %331
  call fastcc void @cleanUpAndFail(i32 2) #11
  unreachable

; <label>:347                                     ; preds = %.loopexit10.i
  %348 = load %struct.__sFILE** @__stdinp, align 8, !tbaa !2
  %349 = icmp eq %struct.__sFILE* %348, %inStr.0
  br i1 %349, label %352, label %350

; <label>:350                                     ; preds = %347
  %351 = call i32 @fclose(%struct.__sFILE* %inStr.0) #9
  br label %352

; <label>:352                                     ; preds = %350, %347
  %353 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !2
  %354 = icmp eq %struct.__sFILE* %353, %outStr.0
  br i1 %354, label %357, label %355

; <label>:355                                     ; preds = %352
  %356 = call i32 @fclose(%struct.__sFILE* %outStr.0) #9
  br label %357

; <label>:357                                     ; preds = %355, %352
  %358 = icmp eq i32 %streamNo.1.i, 1
  br i1 %358, label %.critedge25, label %359

; <label>:359                                     ; preds = %357
  %360 = load i8* @noisy, align 1, !tbaa !6
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %uncompressStream.exit, label %362

; <label>:362                                     ; preds = %359
  %363 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %364 = load i8** @progName, align 8, !tbaa !2
  %365 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %363, i8* getelementptr inbounds ([45 x i8]* @.str90, i64 0, i64 0), i8* %364, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #9
  br label %uncompressStream.exit

; <label>:366                                     ; preds = %.loopexit10.i
  call fastcc void @panic(i8* getelementptr inbounds ([28 x i8]* @.str91, i64 0, i64 0)) #11
  unreachable

uncompressStream.exit:                            ; preds = %359, %362
  call void @llvm.lifetime.end(i64 5000, i8* %212) #6
  call void @llvm.lifetime.end(i64 5000, i8* %211) #6
  call void @llvm.lifetime.end(i64 4, i8* %207)
  call void @llvm.lifetime.end(i64 4, i8* %208)
  call void @llvm.lifetime.end(i64 4, i8* %209)
  call void @llvm.lifetime.end(i64 8, i8* %210)
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 8, !tbaa !2
  br label %367

.critedge24:                                      ; preds = %290
  call void @llvm.lifetime.end(i64 5000, i8* %212) #6
  call void @llvm.lifetime.end(i64 5000, i8* %211) #6
  call void @llvm.lifetime.end(i64 4, i8* %207)
  call void @llvm.lifetime.end(i64 4, i8* %208)
  call void @llvm.lifetime.end(i64 4, i8* %209)
  call void @llvm.lifetime.end(i64 8, i8* %210)
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 8, !tbaa !2
  br label %367

; <label>:367                                     ; preds = %uncompressStream.exit, %.critedge24, %.critedge
  %368 = load i32* @srcMode, align 4, !tbaa !7
  %369 = icmp eq i32 %368, 3
  br i1 %369, label %370, label %383

; <label>:370                                     ; preds = %367
  call fastcc void @applySavedMetaInfoToOutputFile() #10
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !tbaa !6
  %371 = load i8* @keepInputFiles, align 1, !tbaa !6
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %373, label %383

; <label>:373                                     ; preds = %370
  %374 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #9
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %383, label %376

; <label>:376                                     ; preds = %373
  call fastcc void @ioError() #12
  unreachable

.critedge25:                                      ; preds = %357
  call void @llvm.lifetime.end(i64 5000, i8* %212) #6
  call void @llvm.lifetime.end(i64 5000, i8* %211) #6
  call void @llvm.lifetime.end(i64 4, i8* %207)
  call void @llvm.lifetime.end(i64 4, i8* %208)
  call void @llvm.lifetime.end(i64 4, i8* %209)
  call void @llvm.lifetime.end(i64 8, i8* %210)
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 8, !tbaa !2
  store i8 1, i8* @unzFailsExist, align 1, !tbaa !6
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !tbaa !6
  %377 = load i32* @srcMode, align 4, !tbaa !7
  %378 = icmp eq i32 %377, 3
  br i1 %378, label %379, label %389

; <label>:379                                     ; preds = %.critedge25
  %380 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #9
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %389, label %382

; <label>:382                                     ; preds = %379
  call fastcc void @ioError() #12
  unreachable

; <label>:383                                     ; preds = %373, %370, %367
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !tbaa !6
  %384 = load i32* @verbosity, align 4, !tbaa !7
  %385 = icmp sgt i32 %384, 0
  br i1 %385, label %386, label %setExit.exit

; <label>:386                                     ; preds = %383
  %387 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %388 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str85, i64 0, i64 0), i64 5, i64 1, %struct.__sFILE* %387)
  br label %setExit.exit

; <label>:389                                     ; preds = %.critedge25, %379
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !tbaa !6
  %390 = load i32* @exitValue, align 4, !tbaa !7
  %391 = icmp slt i32 %390, 2
  br i1 %391, label %392, label %setExit.exit14

; <label>:392                                     ; preds = %389
  store i32 2, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit14

setExit.exit14:                                   ; preds = %389, %392
  %393 = load i32* @verbosity, align 4, !tbaa !7
  %394 = icmp sgt i32 %393, 0
  %395 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  br i1 %394, label %396, label %398

; <label>:396                                     ; preds = %setExit.exit14
  %397 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str86, i64 0, i64 0), i64 18, i64 1, %struct.__sFILE* %395)
  br label %setExit.exit

; <label>:398                                     ; preds = %setExit.exit14
  %399 = load i8** @progName, align 8, !tbaa !2
  %400 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %395, i8* getelementptr inbounds ([29 x i8]* @.str87, i64 0, i64 0), i8* %399, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #9
  br label %setExit.exit

setExit.exit:                                     ; preds = %196, %186, %183, %180, %165, %156, %151, %142, %129, %121, %106, %100, %81, %78, %58, %52, %42, %33, %386, %383, %398, %396
  call void @llvm.lifetime.end(i64 144, i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @testf(i8* %name) #0 {
  %bzerr.i = alloca i32, align 4
  %bzerr_dummy.i = alloca i32, align 4
  %obuf.i = alloca [5000 x i8], align 16
  %unused.i = alloca [5000 x i8], align 16
  %nUnused.i = alloca i32, align 4
  %unusedTmpV.i = alloca i8*, align 8
  %statBuf = alloca %struct.stat, align 8
  %1 = bitcast %struct.stat* %statBuf to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1) #6
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !tbaa !6
  %2 = icmp eq i8* %name, null
  %3 = load i32* @srcMode, align 4
  %4 = icmp ne i32 %3, 1
  %or.cond = and i1 %2, %4
  br i1 %or.cond, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call fastcc void @panic(i8* getelementptr inbounds ([18 x i8]* @.str94, i64 0, i64 0)) #12
  unreachable

; <label>:6                                       ; preds = %0
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0)) #10
  %7 = load i32* @srcMode, align 4, !tbaa !7
  switch i32 %7, label %thread-pre-split [
    i32 1, label %8
    i32 3, label %9
    i32 2, label %10
  ]

; <label>:8                                       ; preds = %6
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str54, i64 0, i64 0)) #10
  br label %thread-pre-splitthread-pre-split

; <label>:9                                       ; preds = %6
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %name) #10
  br label %thread-pre-splitthread-pre-split

; <label>:10                                      ; preds = %6
  tail call fastcc void @copyFileName(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %name) #10
  br label %thread-pre-splitthread-pre-split

thread-pre-splitthread-pre-split:                 ; preds = %10, %9, %8
  %.pr = load i32* @srcMode, align 4, !tbaa !7
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-splitthread-pre-split, %6
  %11 = phi i32 [ %.pr, %thread-pre-splitthread-pre-split ], [ %7, %6 ]
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %.thread11, label %13

; <label>:13                                      ; preds = %thread-pre-split
  %14 = tail call fastcc zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #10
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %26

; <label>:16                                      ; preds = %13
  %17 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %18 = load i8** @progName, align 8, !tbaa !2
  %19 = tail call i32* @__error() #9
  %20 = load i32* %19, align 4, !tbaa !7
  %21 = tail call i8* @"\01_strerror"(i32 %20) #9
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([30 x i8]* @.str95, i64 0, i64 0), i8* %18, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %21) #9
  %23 = load i32* @exitValue, align 4, !tbaa !7
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %setExit.exit

; <label>:25                                      ; preds = %16
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:26                                      ; preds = %13
  %.pr8 = load i32* @srcMode, align 4, !tbaa !7
  %27 = icmp eq i32 %.pr8, 1
  br i1 %27, label %.thread11, label %28

; <label>:28                                      ; preds = %26
  %29 = call i32 @"\01_stat$INODE64"(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf) #9
  %30 = getelementptr inbounds %struct.stat* %statBuf, i64 0, i32 1
  %31 = load i16* %30, align 4, !tbaa !12
  %32 = and i16 %31, -4096
  %33 = icmp eq i16 %32, 16384
  br i1 %33, label %34, label %.thread

; <label>:34                                      ; preds = %28
  %35 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %36 = load i8** @progName, align 8, !tbaa !2
  %37 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %35, i8* getelementptr inbounds ([35 x i8]* @.str59, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #9
  %38 = load i32* @exitValue, align 4, !tbaa !7
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %setExit.exit

; <label>:40                                      ; preds = %34
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

.thread:                                          ; preds = %28
  %.pr10.pr = load i32* @srcMode, align 4, !tbaa !7
  switch i32 %.pr10.pr, label %70 [
    i32 1, label %.thread11
    i32 2, label %57
    i32 3, label %57
  ]

.thread11:                                        ; preds = %thread-pre-split, %26, %.thread
  %41 = load %struct.__sFILE** @__stdinp, align 8, !tbaa !2
  %42 = call i32 @fileno(%struct.__sFILE* %41) #9
  %43 = call i32 @isatty(i32 %42) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %55, label %45

; <label>:45                                      ; preds = %.thread11
  %46 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %47 = load i8** @progName, align 8, !tbaa !2
  %48 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %46, i8* getelementptr inbounds ([51 x i8]* @.str82, i64 0, i64 0), i8* %47) #9
  %49 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %50 = load i8** @progName, align 8, !tbaa !2
  %51 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %49, i8* getelementptr inbounds ([34 x i8]* @.str65, i64 0, i64 0), i8* %50, i8* %50) #9
  %52 = load i32* @exitValue, align 4, !tbaa !7
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %54, label %setExit.exit

; <label>:54                                      ; preds = %45
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:55                                      ; preds = %.thread11
  %56 = load %struct.__sFILE** @__stdinp, align 8, !tbaa !2
  br label %71

; <label>:57                                      ; preds = %.thread, %.thread
  %58 = call %struct.__sFILE* @"\01_fopen"(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str66, i64 0, i64 0)) #9
  %59 = icmp eq %struct.__sFILE* %58, null
  br i1 %59, label %60, label %71

; <label>:60                                      ; preds = %57
  %61 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %62 = load i8** @progName, align 8, !tbaa !2
  %63 = call i32* @__error() #9
  %64 = load i32* %63, align 4, !tbaa !7
  %65 = call i8* @"\01_strerror"(i32 %64) #9
  %66 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %61, i8* getelementptr inbounds ([34 x i8]* @.str83, i64 0, i64 0), i8* %62, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* %65) #9
  %67 = load i32* @exitValue, align 4, !tbaa !7
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %69, label %setExit.exit

; <label>:69                                      ; preds = %60
  store i32 1, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

; <label>:70                                      ; preds = %.thread
  call fastcc void @panic(i8* getelementptr inbounds ([19 x i8]* @.str96, i64 0, i64 0)) #12
  unreachable

; <label>:71                                      ; preds = %57, %55
  %inStr.0 = phi %struct.__sFILE* [ %58, %57 ], [ %56, %55 ]
  %72 = load i32* @verbosity, align 4, !tbaa !7
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %79

; <label>:74                                      ; preds = %71
  %75 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %76 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %75, i8* getelementptr inbounds ([7 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #9
  call fastcc void @pad() #10
  %77 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %78 = call i32 @fflush(%struct.__sFILE* %77) #9
  br label %79

; <label>:79                                      ; preds = %74, %71
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 8, !tbaa !2
  %80 = bitcast i32* %bzerr.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80)
  %81 = bitcast i32* %bzerr_dummy.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81)
  %82 = bitcast i32* %nUnused.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82)
  %83 = bitcast i8** %unusedTmpV.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83)
  %84 = getelementptr inbounds [5000 x i8]* %obuf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 5000, i8* %84) #6
  %85 = getelementptr inbounds [5000 x i8]* %unused.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 5000, i8* %85) #6
  store i32 0, i32* %nUnused.i, align 4, !tbaa !7
  %86 = call i32 @ferror(%struct.__sFILE* %inStr.0) #9
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %.preheader.i, label %155

.preheader.i:                                     ; preds = %79
  %88 = load i32* @verbosity, align 4, !tbaa !7
  %89 = load i8* @smallMode, align 1, !tbaa !6
  %90 = zext i8 %89 to i32
  %91 = call i8* @BZ2_bzReadOpen(i32* %bzerr.i, %struct.__sFILE* %inStr.0, i32 %88, i32 %90, i8* %85, i32 0) #9
  %92 = icmp eq i8* %91, null
  %93 = load i32* %bzerr.i, align 4
  %94 = icmp ne i32 %93, 0
  %or.cond16.i = or i1 %92, %94
  br i1 %or.cond16.i, label %.loopexit.i, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %.preheader.i, %.backedge.i
  %95 = phi i8* [ %126, %.backedge.i ], [ %91, %.preheader.i ]
  %streamNo.017.i = phi i32 [ %96, %.backedge.i ], [ 0, %.preheader.i ]
  %96 = add nuw nsw i32 %streamNo.017.i, 1
  br label %97

; <label>:97                                      ; preds = %99, %.lr.ph18.i
  %98 = phi i32 [ %101, %99 ], [ 0, %.lr.ph18.i ]
  switch i32 %98, label %.loopexit.i [
    i32 0, label %99
    i32 4, label %103
  ]

; <label>:99                                      ; preds = %97
  %100 = call i32 @BZ2_bzRead(i32* %bzerr.i, i8* %95, i8* %84, i32 5000) #9
  %101 = load i32* %bzerr.i, align 4, !tbaa !7
  %102 = icmp eq i32 %101, -5
  br i1 %102, label %.loopexit.i, label %97

; <label>:103                                     ; preds = %97
  call void @BZ2_bzReadGetUnused(i32* %bzerr.i, i8* %95, i8** %unusedTmpV.i, i32* %nUnused.i) #9
  %104 = load i32* %bzerr.i, align 4, !tbaa !7
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

; <label>:106                                     ; preds = %103
  call fastcc void @panic(i8* getelementptr inbounds ([21 x i8]* @.str98, i64 0, i64 0)) #11
  unreachable

; <label>:107                                     ; preds = %103
  %108 = load i8** %unusedTmpV.i, align 8, !tbaa !2
  %109 = load i32* %nUnused.i, align 4, !tbaa !7
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %107
  %111 = sext i32 %109 to i64
  %112 = add nsw i64 %111, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %113 = getelementptr inbounds i8* %108, i64 %indvars.iv.i
  %114 = load i8* %113, align 1, !tbaa !6
  %115 = getelementptr inbounds [5000 x i8]* %unused.i, i64 0, i64 %indvars.iv.i
  store i8 %114, i8* %115, align 1, !tbaa !6
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond = icmp eq i64 %indvars.iv.i, %112
  br i1 %exitcond, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %107
  call void @BZ2_bzReadClose(i32* %bzerr.i, i8* %95) #9
  %116 = load i32* %bzerr.i, align 4, !tbaa !7
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

; <label>:118                                     ; preds = %._crit_edge.i
  call fastcc void @panic(i8* getelementptr inbounds ([21 x i8]* @.str98, i64 0, i64 0)) #11
  unreachable

; <label>:119                                     ; preds = %._crit_edge.i
  %120 = load i32* %nUnused.i, align 4, !tbaa !7
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %130, label %.backedge.i

.backedge.i:                                      ; preds = %..backedge_crit_edge.i, %119
  %122 = phi i32 [ %.pre.i, %..backedge_crit_edge.i ], [ %120, %119 ]
  %123 = load i32* @verbosity, align 4, !tbaa !7
  %124 = load i8* @smallMode, align 1, !tbaa !6
  %125 = zext i8 %124 to i32
  %126 = call i8* @BZ2_bzReadOpen(i32* %bzerr.i, %struct.__sFILE* %inStr.0, i32 %123, i32 %125, i8* %85, i32 %122) #9
  %127 = icmp eq i8* %126, null
  %128 = load i32* %bzerr.i, align 4
  %129 = icmp ne i32 %128, 0
  %or.cond.i = or i1 %127, %129
  br i1 %or.cond.i, label %.loopexit.i, label %.lr.ph18.i

; <label>:130                                     ; preds = %119
  %131 = call fastcc zeroext i8 @myfeof(%struct.__sFILE* %inStr.0) #9
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %..backedge_crit_edge.i, label %133

..backedge_crit_edge.i:                           ; preds = %130
  %.pre.i = load i32* %nUnused.i, align 4, !tbaa !7
  br label %.backedge.i

; <label>:133                                     ; preds = %130
  %134 = call i32 @ferror(%struct.__sFILE* %inStr.0) #9
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %155

; <label>:136                                     ; preds = %133
  %137 = call i32 @fclose(%struct.__sFILE* %inStr.0) #9
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %155, label %139

; <label>:139                                     ; preds = %136
  %140 = load i32* @verbosity, align 4, !tbaa !7
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %testStream.exit

; <label>:142                                     ; preds = %139
  %143 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %144 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str89, i64 0, i64 0), i64 5, i64 1, %struct.__sFILE* %143) #6
  br label %testStream.exit

.loopexit.i:                                      ; preds = %.backedge.i, %99, %97, %.preheader.i
  %145 = phi i8* [ %91, %.preheader.i ], [ %95, %97 ], [ %95, %99 ], [ %126, %.backedge.i ]
  %streamNo.1.i = phi i32 [ 0, %.preheader.i ], [ %96, %97 ], [ %96, %99 ], [ %96, %.backedge.i ]
  call void @BZ2_bzReadClose(i32* %bzerr_dummy.i, i8* %145) #9
  %146 = load i32* @verbosity, align 4, !tbaa !7
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

; <label>:148                                     ; preds = %.loopexit.i
  %149 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %150 = load i8** @progName, align 8, !tbaa !2
  %151 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %149, i8* getelementptr inbounds ([9 x i8]* @.str99, i64 0, i64 0), i8* %150, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #9
  br label %152

; <label>:152                                     ; preds = %148, %.loopexit.i
  %153 = load i32* %bzerr.i, align 4, !tbaa !7
  switch i32 %153, label %179 [
    i32 -9, label %154
    i32 -6, label %155
    i32 -4, label %156
    i32 -3, label %159
    i32 -7, label %160
    i32 -5, label %163
  ]

; <label>:154                                     ; preds = %152
  call fastcc void @configError() #11
  unreachable

; <label>:155                                     ; preds = %152, %136, %133, %79
  call fastcc void @ioError() #11
  unreachable

; <label>:156                                     ; preds = %152
  %157 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %158 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str100, i64 0, i64 0), i64 35, i64 1, %struct.__sFILE* %157) #6
  br label %testStream.exit

; <label>:159                                     ; preds = %152
  call fastcc void @outOfMemory() #11
  unreachable

; <label>:160                                     ; preds = %152
  %161 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %162 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str101, i64 0, i64 0), i64 23, i64 1, %struct.__sFILE* %161) #6
  br label %testStream.exit

; <label>:163                                     ; preds = %152
  %164 = load %struct.__sFILE** @__stdinp, align 8, !tbaa !2
  %165 = icmp eq %struct.__sFILE* %164, %inStr.0
  br i1 %165, label %168, label %166

; <label>:166                                     ; preds = %163
  %167 = call i32 @fclose(%struct.__sFILE* %inStr.0) #9
  br label %168

; <label>:168                                     ; preds = %166, %163
  %169 = icmp eq i32 %streamNo.1.i, 1
  br i1 %169, label %170, label %173

; <label>:170                                     ; preds = %168
  %171 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %172 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str102, i64 0, i64 0), i64 45, i64 1, %struct.__sFILE* %171) #6
  br label %testStream.exit

; <label>:173                                     ; preds = %168
  %174 = load i8* @noisy, align 1, !tbaa !6
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %testStream.exit, label %176

; <label>:176                                     ; preds = %173
  %177 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %178 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str103, i64 0, i64 0), i64 35, i64 1, %struct.__sFILE* %177) #6
  br label %testStream.exit

; <label>:179                                     ; preds = %152
  call fastcc void @panic(i8* getelementptr inbounds ([22 x i8]* @.str104, i64 0, i64 0)) #11
  unreachable

testStream.exit:                                  ; preds = %139, %142, %156, %160, %170, %173, %176
  %.0.i = phi i8 [ 0, %170 ], [ 0, %160 ], [ 0, %156 ], [ 1, %142 ], [ 1, %139 ], [ 1, %173 ], [ 1, %176 ]
  call void @llvm.lifetime.end(i64 5000, i8* %85) #6
  call void @llvm.lifetime.end(i64 5000, i8* %84) #6
  call void @llvm.lifetime.end(i64 4, i8* %80)
  call void @llvm.lifetime.end(i64 4, i8* %81)
  call void @llvm.lifetime.end(i64 4, i8* %82)
  call void @llvm.lifetime.end(i64 8, i8* %83)
  %180 = icmp ne i8 %.0.i, 0
  %181 = load i32* @verbosity, align 4
  %182 = icmp sgt i32 %181, 0
  %or.cond3 = and i1 %180, %182
  br i1 %or.cond3, label %183, label %186

; <label>:183                                     ; preds = %testStream.exit
  %184 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %185 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str97, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %184)
  br label %186

; <label>:186                                     ; preds = %183, %testStream.exit
  %187 = icmp eq i8 %.0.i, 0
  br i1 %187, label %188, label %setExit.exit

; <label>:188                                     ; preds = %186
  store i8 1, i8* @testFailsExist, align 1, !tbaa !6
  br label %setExit.exit

setExit.exit:                                     ; preds = %69, %60, %54, %45, %40, %34, %25, %16, %188, %186
  call void @llvm.lifetime.end(i64 144, i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #5

; Function Attrs: noreturn nounwind optsize ssp uwtable
define internal fastcc void @cleanUpAndFail(i32 %ec) #2 {
  %statBuf = alloca %struct.stat, align 8
  %1 = bitcast %struct.stat* %statBuf to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1) #6
  %2 = load i32* @srcMode, align 4, !tbaa !7
  %3 = load i32* @opMode, align 4
  %notlhs = icmp ne i32 %2, 3
  %notrhs = icmp eq i32 %3, 3
  %or.cond.not = or i1 %notlhs, %notrhs
  %4 = load i8* @deleteOutputOnInterrupt, align 1
  %5 = icmp eq i8 %4, 0
  %or.cond5 = or i1 %or.cond.not, %5
  br i1 %or.cond5, label %41, label %6

; <label>:6                                       ; preds = %0
  %7 = call i32 @"\01_stat$INODE64"(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* %statBuf) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

; <label>:9                                       ; preds = %6
  %10 = load i8* @noisy, align 1, !tbaa !6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

; <label>:12                                      ; preds = %9
  %13 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %14 = load i8** @progName, align 8, !tbaa !2
  %15 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([44 x i8]* @.str39, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #9
  br label %16

; <label>:16                                      ; preds = %9, %12
  %17 = load %struct.__sFILE** @outputHandleJustInCase, align 8, !tbaa !2
  %18 = icmp eq %struct.__sFILE* %17, null
  br i1 %18, label %21, label %19

; <label>:19                                      ; preds = %16
  %20 = call i32 @fclose(%struct.__sFILE* %17) #9
  br label %21

; <label>:21                                      ; preds = %16, %19
  %22 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %41, label %24

; <label>:24                                      ; preds = %21
  %25 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %26 = load i8** @progName, align 8, !tbaa !2
  %27 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %25, i8* getelementptr inbounds ([59 x i8]* @.str40, i64 0, i64 0), i8* %26) #9
  br label %41

; <label>:28                                      ; preds = %6
  %29 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %30 = load i8** @progName, align 8, !tbaa !2
  %31 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([49 x i8]* @.str41, i64 0, i64 0), i8* %30) #9
  %32 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %33 = load i8** @progName, align 8, !tbaa !2
  %34 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([56 x i8]* @.str42, i64 0, i64 0), i8* %33) #9
  %35 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %36 = load i8** @progName, align 8, !tbaa !2
  %37 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %35, i8* getelementptr inbounds ([32 x i8]* @.str43, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #9
  %38 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %39 = load i8** @progName, align 8, !tbaa !2
  %40 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %38, i8* getelementptr inbounds ([61 x i8]* @.str44, i64 0, i64 0), i8* %39) #9
  br label %41

; <label>:41                                      ; preds = %0, %21, %28, %24
  %42 = load i8* @noisy, align 1, !tbaa !6
  %43 = icmp ne i8 %42, 0
  %44 = load i32* @numFileNames, align 4
  %45 = icmp sgt i32 %44, 0
  %or.cond3 = and i1 %43, %45
  br i1 %or.cond3, label %46, label %54

; <label>:46                                      ; preds = %41
  %47 = load i32* @numFilesProcessed, align 4, !tbaa !7
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %54

; <label>:49                                      ; preds = %46
  %50 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %51 = load i8** @progName, align 8, !tbaa !2
  %52 = sub nsw i32 %44, %47
  %53 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %50, i8* getelementptr inbounds ([110 x i8]* @.str45, i64 0, i64 0), i8* %51, i8* %51, i32 %44, i32 %52) #9
  br label %54

; <label>:54                                      ; preds = %49, %46, %41
  %55 = load i32* @exitValue, align 4, !tbaa !7
  %56 = icmp slt i32 %55, %ec
  br i1 %56, label %57, label %setExit.exit

; <label>:57                                      ; preds = %54
  store i32 %ec, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

setExit.exit:                                     ; preds = %54, %57
  %58 = phi i32 [ %55, %54 ], [ %ec, %57 ]
  call void @exit(i32 %58) #11
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare i32 @"\01_stat$INODE64"(i8*, %struct.stat*) #1

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @remove(i8* nocapture readonly) #5

; Function Attrs: nounwind optsize
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #5

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #7

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #3

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #1

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #5

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #5

; Function Attrs: noreturn nounwind optsize ssp uwtable
define internal fastcc void @outOfMemory() #2 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %2 = load i8** @progName, align 8, !tbaa !2
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([38 x i8]* @.str48, i64 0, i64 0), i8* %2) #9
  %4 = load i8* @noisy, align 1, !tbaa !6
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %showFileNames.exit, label %6

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([36 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #9
  br label %showFileNames.exit

showFileNames.exit:                               ; preds = %0, %6
  tail call fastcc void @cleanUpAndFail(i32 1) #12
  unreachable
}

; Function Attrs: optsize
declare i8* @BZ2_bzlibVersion() #1

; Function Attrs: noreturn nounwind optsize ssp uwtable
define internal fastcc void @panic(i8* %s) #2 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %2 = load i8** @progName, align 8, !tbaa !2
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([109 x i8]* @.str71, i64 0, i64 0), i8* %2, i8* %s) #9
  %4 = load i8* @noisy, align 1, !tbaa !6
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %showFileNames.exit, label %6

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([36 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #9
  br label %showFileNames.exit

showFileNames.exit:                               ; preds = %0, %6
  tail call fastcc void @cleanUpAndFail(i32 3) #12
  unreachable
}

; Function Attrs: nounwind optsize
declare i8* @__strcat_chk(i8*, i8*, i64) #5

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc zeroext i8 @fileExists(i8* %name) #0 {
  %1 = tail call %struct.__sFILE* @"\01_fopen"(i8* %name, i8* getelementptr inbounds ([3 x i8]* @.str66, i64 0, i64 0)) #9
  %2 = icmp ne %struct.__sFILE* %1, null
  %3 = zext i1 %2 to i8
  br i1 %2, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @fclose(%struct.__sFILE* %1) #9
  br label %6

; <label>:6                                       ; preds = %4, %0
  ret i8 %3
}

; Function Attrs: optsize
declare i8* @"\01_strerror"(i32) #1

; Function Attrs: optsize
declare i32* @__error() #1

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc zeroext i8 @hasSuffix(i8* nocapture readonly %s, i8* nocapture readonly %suffix) #8 {
  %1 = tail call i64 @strlen(i8* %s) #9
  %2 = trunc i64 %1 to i32
  %3 = tail call i64 @strlen(i8* %suffix) #9
  %4 = trunc i64 %3 to i32
  %5 = icmp slt i32 %2, %4
  br i1 %5, label %12, label %6

; <label>:6                                       ; preds = %0
  %sext = shl i64 %1, 32
  %7 = ashr exact i64 %sext, 32
  %sext1 = shl i64 %3, 32
  %8 = ashr exact i64 %sext1, 32
  %.sum = sub nsw i64 %7, %8
  %9 = getelementptr inbounds i8* %s, i64 %.sum
  %10 = tail call i32 @strcmp(i8* %9, i8* %suffix) #9
  %11 = icmp eq i32 %10, 0
  %. = zext i1 %11 to i8
  br label %12

; <label>:12                                      ; preds = %6, %0
  %.0 = phi i8 [ 0, %0 ], [ %., %6 ]
  ret i8 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @saveInputFileMetaInfo() #0 {
  %1 = tail call i32 @"\01_stat$INODE64"(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), %struct.stat* @fileMetaInfo) #9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

; <label>:3                                       ; preds = %0
  tail call fastcc void @ioError() #12
  unreachable

; <label>:4                                       ; preds = %0
  ret void
}

; Function Attrs: optsize
declare i32 @isatty(i32) #1

; Function Attrs: nounwind optsize
declare i32 @fileno(%struct.__sFILE* nocapture) #5

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @pad() #0 {
  %1 = tail call i64 @strlen(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #9
  %2 = trunc i64 %1 to i32
  %3 = load i32* @longestFileName, align 4, !tbaa !7
  %4 = icmp slt i32 %2, %3
  br i1 %4, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %0
  %5 = tail call i64 @strlen(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #9
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %3, %6
  br i1 %7, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.01 = phi i32 [ %9, %.lr.ph ], [ 1, %.preheader ]
  %8 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %fputc = tail call i32 @fputc(i32 32, %struct.__sFILE* %8)
  %9 = add nuw nsw i32 %i.01, 1
  %10 = load i32* @longestFileName, align 4, !tbaa !7
  %11 = tail call i64 @strlen(i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #9
  %12 = trunc i64 %11 to i32
  %13 = sub nsw i32 %10, %12
  %14 = icmp slt i32 %i.01, %13
  br i1 %14, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %0
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @applySavedMetaInfoToOutputFile() #0 {
  %uTimBuf = alloca %struct.utimbuf, align 8
  %1 = load i64* getelementptr inbounds (%struct.stat* @fileMetaInfo, i64 0, i32 7, i32 0), align 8, !tbaa !19
  %2 = getelementptr inbounds %struct.utimbuf* %uTimBuf, i64 0, i32 0
  store i64 %1, i64* %2, align 8, !tbaa !20
  %3 = load i64* getelementptr inbounds (%struct.stat* @fileMetaInfo, i64 0, i32 8, i32 0), align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.utimbuf* %uTimBuf, i64 0, i32 1
  store i64 %3, i64* %4, align 8, !tbaa !23
  %5 = load i16* getelementptr inbounds (%struct.stat* @fileMetaInfo, i64 0, i32 1), align 4, !tbaa !12
  %6 = tail call i32 @"\01_chmod"(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i16 zeroext %5) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

; <label>:8                                       ; preds = %0
  tail call fastcc void @ioError() #12
  unreachable

; <label>:9                                       ; preds = %0
  %10 = call i32 @utime(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), %struct.utimbuf* %uTimBuf) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

; <label>:12                                      ; preds = %9
  tail call fastcc void @ioError() #12
  unreachable

; <label>:13                                      ; preds = %9
  %14 = load i64* bitcast (i32* getelementptr inbounds (%struct.stat* @fileMetaInfo, i64 0, i32 4) to i64*), align 8
  %15 = trunc i64 %14 to i32
  %16 = lshr i64 %14, 32
  %17 = trunc i64 %16 to i32
  %18 = tail call i32 @chown(i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0), i32 %15, i32 %17) #9
  ret void
}

; Function Attrs: noreturn nounwind optsize ssp uwtable
define internal fastcc void @ioError() #2 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %2 = load i8** @progName, align 8, !tbaa !2
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([65 x i8]* @.str78, i64 0, i64 0), i8* %2) #9
  %4 = load i8** @progName, align 8, !tbaa !2
  tail call void @perror(i8* %4) #13
  %5 = load i8* @noisy, align 1, !tbaa !6
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %showFileNames.exit, label %7

; <label>:7                                       ; preds = %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([36 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #9
  br label %showFileNames.exit

showFileNames.exit:                               ; preds = %0, %7
  tail call fastcc void @cleanUpAndFail(i32 1) #12
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: optsize
declare i32 @"\01_lstat$INODE64"(i8*, %struct.stat*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @ferror(%struct.__sFILE* nocapture) #3

; Function Attrs: optsize
declare i8* @BZ2_bzWriteOpen(i32*, %struct.__sFILE*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc zeroext i8 @myfeof(%struct.__sFILE* nocapture %f) #0 {
  %1 = tail call i32 @fgetc(%struct.__sFILE* %f) #9
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %5, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @ungetc(i32 %1, %struct.__sFILE* %f) #9
  br label %5

; <label>:5                                       ; preds = %0, %3
  %.0 = phi i8 [ 0, %3 ], [ 1, %0 ]
  ret i8 %.0
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

; Function Attrs: optsize
declare void @BZ2_bzWrite(i32*, i8*, i8*, i32) #1

; Function Attrs: optsize
declare void @BZ2_bzWriteClose64(i32*, i8*, i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @uInt64_toAscii(i8* nocapture %outbuf, %struct.UInt64* nocapture readonly %n) #0 {
  %buf = alloca [32 x i8], align 16
  %n_copy = alloca i64, align 8
  %tmpcast = bitcast i64* %n_copy to %struct.UInt64*
  %1 = bitcast %struct.UInt64* %n to i64*
  %2 = load i64* %1, align 1
  store i64 %2, i64* %n_copy, align 8
  br label %uInt64_isZero.exit.thread

uInt64_isZero.exit.thread:                        ; preds = %18, %0
  %indvars.iv7 = phi i64 [ 0, %0 ], [ %indvars.iv.next8, %18 ]
  br label %3

; <label>:3                                       ; preds = %3, %uInt64_isZero.exit.thread
  %indvars.iv.i = phi i64 [ 7, %uInt64_isZero.exit.thread ], [ %indvars.iv.next.i, %3 ]
  %rem.01.i = phi i32 [ 0, %uInt64_isZero.exit.thread ], [ %11, %3 ]
  %4 = shl nuw nsw i32 %rem.01.i, 8
  %5 = getelementptr inbounds %struct.UInt64* %tmpcast, i64 0, i32 0, i64 %indvars.iv.i
  %6 = load i8* %5, align 1, !tbaa !6
  %7 = zext i8 %6 to i32
  %8 = or i32 %7, %4
  %9 = udiv i32 %8, 10
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %5, align 1, !tbaa !6
  %11 = urem i32 %8, 10
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %12 = icmp sgt i64 %indvars.iv.i, 0
  br i1 %12, label %3, label %uInt64_qrm10.exit

uInt64_qrm10.exit:                                ; preds = %3
  %13 = or i32 %11, 48
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 %indvars.iv7
  store i8 %14, i8* %15, align 1, !tbaa !6
  %indvars.iv.next8 = add nuw i64 %indvars.iv7, 1
  br label %18

; <label>:16                                      ; preds = %18
  %17 = icmp slt i64 %indvars.iv.next.i2, 8
  br i1 %17, label %18, label %22

; <label>:18                                      ; preds = %16, %uInt64_qrm10.exit
  %indvars.iv.i1 = phi i64 [ 0, %uInt64_qrm10.exit ], [ %indvars.iv.next.i2, %16 ]
  %19 = getelementptr inbounds %struct.UInt64* %tmpcast, i64 0, i32 0, i64 %indvars.iv.i1
  %20 = load i8* %19, align 1, !tbaa !6
  %21 = icmp eq i8 %20, 0
  %indvars.iv.next.i2 = add nuw nsw i64 %indvars.iv.i1, 1
  br i1 %21, label %16, label %uInt64_isZero.exit.thread

; <label>:22                                      ; preds = %16
  %23 = trunc i64 %indvars.iv7 to i32
  %sext = shl i64 %indvars.iv.next8, 32
  %24 = ashr exact i64 %sext, 32
  %25 = getelementptr inbounds i8* %outbuf, i64 %24
  store i8 0, i8* %25, align 1, !tbaa !6
  %26 = icmp slt i32 %23, 0
  br i1 %26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %22, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %22 ]
  %27 = trunc i64 %indvars.iv to i32
  %28 = sub i64 %indvars.iv7, %indvars.iv
  %sext9 = shl i64 %28, 32
  %29 = ashr exact i64 %sext9, 32
  %30 = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 %29
  %31 = load i8* %30, align 1, !tbaa !6
  %32 = getelementptr inbounds i8* %outbuf, i64 %indvars.iv
  store i8 %31, i8* %32, align 1, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %27, %23
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %22
  ret void
}

; Function Attrs: noreturn nounwind optsize ssp uwtable
define internal fastcc void @configError() #2 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([236 x i8]* @.str77, i64 0, i64 0), i64 235, i64 1, %struct.__sFILE* %1)
  %3 = load i32* @exitValue, align 4, !tbaa !7
  %4 = icmp slt i32 %3, 3
  br i1 %4, label %5, label %setExit.exit

; <label>:5                                       ; preds = %0
  store i32 3, i32* @exitValue, align 4, !tbaa !7
  br label %setExit.exit

setExit.exit:                                     ; preds = %0, %5
  %6 = phi i32 [ %3, %0 ], [ 3, %5 ]
  tail call void @exit(i32 %6) #11
  unreachable
}

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @ungetc(i32, %struct.__sFILE* nocapture) #5

; Function Attrs: optsize
declare i32 @"\01_chmod"(i8*, i16 zeroext) #1

; Function Attrs: nounwind optsize
declare i32 @utime(i8* nocapture readonly, %struct.utimbuf* nocapture readonly) #5

; Function Attrs: nounwind optsize
declare i32 @chown(i8* nocapture readonly, i32, i32) #5

; Function Attrs: nounwind optsize
declare void @perror(i8* nocapture readonly) #5

; Function Attrs: optsize
declare i8* @BZ2_bzReadOpen(i32*, %struct.__sFILE*, i32, i32, i8*, i32) #1

; Function Attrs: optsize
declare i32 @BZ2_bzRead(i32*, i8*, i8*, i32) #1

; Function Attrs: optsize
declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #1

; Function Attrs: optsize
declare void @BZ2_bzReadGetUnused(i32*, i8*, i8**, i32*) #1

; Function Attrs: optsize
declare void @BZ2_bzReadClose(i32*, i8*) #1

; Function Attrs: nounwind optsize
declare void @rewind(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { noreturn optsize }
attributes #13 = { cold nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !4, i64 0}
!9 = !{!10, !3, i64 0}
!10 = !{!"zzzz", !3, i64 0, !3, i64 8}
!11 = !{!10, !3, i64 8}
!12 = !{!13, !14, i64 4}
!13 = !{!"stat", !8, i64 0, !14, i64 4, !14, i64 6, !15, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !16, i64 32, !16, i64 48, !16, i64 64, !16, i64 80, !15, i64 96, !15, i64 104, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !4, i64 128}
!14 = !{!"short", !4, i64 0}
!15 = !{!"long long", !4, i64 0}
!16 = !{!"timespec", !17, i64 0, !17, i64 8}
!17 = !{!"long", !4, i64 0}
!18 = !{!13, !14, i64 6}
!19 = !{!13, !17, i64 32}
!20 = !{!21, !17, i64 0}
!21 = !{!"utimbuf", !17, i64 0, !17, i64 8}
!22 = !{!13, !17, i64 48}
!23 = !{!21, !17, i64 8}
