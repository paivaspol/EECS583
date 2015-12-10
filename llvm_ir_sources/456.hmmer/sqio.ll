; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ReadSeqVars = type { %struct._IO_FILE*, i8*, i32, i8*, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i32, i32, i32, i32, i32, i32, i8*, %struct.seqinfo_s*, i8*, i32, i32, i32, i32, i32, %struct.msa_struct*, %struct.msafile_struct* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct._IO_FILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [65 x i8] c"SeqfilePosition() failed: in a nonrewindable data file or stream\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"SSISetFilePosition failed, but that shouldn't happen.\00", align 1
@.str2 = private unnamed_addr constant [63 x i8] c"SeqfileRewind() failed: in a nonrewindable data file or stream\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@squid_errno = external global i32
@.str4 = private unnamed_addr constant [38 x i8] c"Invalid flag %d to SetSeqinfoString()\00", align 1
@.str5 = private unnamed_addr constant [33 x i8] c"ACGTUNRYMKSWHBVDacgtunrymkswhbvd\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c">>>>\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"Len: \00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"!!AA_SEQUENCE\00", align 1
@.str10 = private unnamed_addr constant [14 x i8] c"!!NA_SEQUENCE\00", align 1
@.str11 = private unnamed_addr constant [15 x i8] c"# STOCKHOLM 1.\00", align 1
@.str12 = private unnamed_addr constant [8 x i8] c"CLUSTAL\00", align 1
@.str13 = private unnamed_addr constant [28 x i8] c"multiple sequence alignment\00", align 1
@.str14 = private unnamed_addr constant [24 x i8] c"!!AA_MULTIPLE_ALIGNMENT\00", align 1
@.str15 = private unnamed_addr constant [24 x i8] c"!!NA_MULTIPLE_ALIGNMENT\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"#=AU\00", align 1
@.str18 = private unnamed_addr constant [5 x i8] c"#=ID\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"#=AC\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"#=DE\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"#=GA\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"#=TC\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"#=NC\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"#=SQ\00", align 1
@.str25 = private unnamed_addr constant [5 x i8] c"#=SS\00", align 1
@.str26 = private unnamed_addr constant [5 x i8] c"#=CS\00", align 1
@.str27 = private unnamed_addr constant [5 x i8] c"#=RF\00", align 1
@.str28 = private unnamed_addr constant [4 x i8] c"///\00", align 1
@.str29 = private unnamed_addr constant [7 x i8] c"ENTRY \00", align 1
@.str30 = private unnamed_addr constant [5 x i8] c"MSF:\00", align 1
@.str31 = private unnamed_addr constant [7 x i8] c"Check:\00", align 1
@.str32 = private unnamed_addr constant [9 x i8] c" Check: \00", align 1
@.str33 = private unnamed_addr constant [7 x i8] c"LOCUS \00", align 1
@.str34 = private unnamed_addr constant [8 x i8] c"ORIGIN \00", align 1
@.str35 = private unnamed_addr constant [6 x i8] c"ID   \00", align 1
@.str36 = private unnamed_addr constant [6 x i8] c"SQ   \00", align 1
@.str37 = private unnamed_addr constant [3 x i8] c"#%\00", align 1
@.str38 = private unnamed_addr constant [31 x i8] c"Sequence file contains no data\00", align 1
@.str39 = private unnamed_addr constant [8 x i8] c">%s %s\0A\00", align 1
@.str40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str41 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str42 = private unnamed_addr constant [62 x i8] c"Tried to write an aligned format with WriteSeq() -- bad, bad.\00", align 1
@.str43 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str44 = private unnamed_addr constant [28 x i8] c"LOCUS       %s       %d bp\0A\00", align 1
@.str45 = private unnamed_addr constant [16 x i8] c"ACCESSION   %s\0A\00", align 1
@.str46 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str47 = private unnamed_addr constant [16 x i8] c"DEFINITION  %s\0A\00", align 1
@.str48 = private unnamed_addr constant [16 x i8] c"VERSION     %s\0A\00", align 1
@.str49 = private unnamed_addr constant [14 x i8] c"ORIGIN      \0A\00", align 1
@.str51 = private unnamed_addr constant [30 x i8] c">>>>%s  9/95  ASCII  Len: %d\0A\00", align 1
@.str52 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str53 = private unnamed_addr constant [19 x i8] c"ENTRY          %s\0A\00", align 1
@.str54 = private unnamed_addr constant [19 x i8] c"TITLE          %s\0A\00", align 1
@.str55 = private unnamed_addr constant [19 x i8] c"ACCESSION      %s\0A\00", align 1
@.str56 = private unnamed_addr constant [66 x i8] c"SUMMARY                                #Length %d  #Checksum  %d\0A\00", align 1
@.str57 = private unnamed_addr constant [10 x i8] c"SEQUENCE\0A\00", align 1
@.str58 = private unnamed_addr constant [71 x i8] c"                  5        10        15        20        25        30\0A\00", align 1
@.str59 = private unnamed_addr constant [5 x i8] c"\0A///\00", align 1
@.str60 = private unnamed_addr constant [9 x i8] c"NAM  %s\0A\00", align 1
@.str61 = private unnamed_addr constant [23 x i8] c"SRC  %s %s %d..%d::%d\0A\00", align 1
@.str62 = private unnamed_addr constant [9 x i8] c"DES  %s\0A\00", align 1
@.str63 = private unnamed_addr constant [10 x i8] c"SEQ  +SS\0A\00", align 1
@.str64 = private unnamed_addr constant [5 x i8] c"SEQ\0A\00", align 1
@.str66 = private unnamed_addr constant [9 x i8] c"ID   %s\0A\00", align 1
@.str67 = private unnamed_addr constant [9 x i8] c"AC   %s\0A\00", align 1
@.str68 = private unnamed_addr constant [9 x i8] c"DE   %s\0A\00", align 1
@.str69 = private unnamed_addr constant [22 x i8] c"SQ             %d BP\0A\00", align 1
@.str70 = private unnamed_addr constant [44 x i8] c"    %s  Length: %d  (today)  Check: %d  ..\0A\00", align 1
@.str71 = private unnamed_addr constant [28 x i8] c"; ### from DNA Strider ;-)\0A\00", align 1
@.str72 = private unnamed_addr constant [46 x i8] c"; DNA sequence  %s, %d bases, %d checksum.\0A;\0A\00", align 1
@.str73 = private unnamed_addr constant [8 x i8] c";%s %s\0A\00", align 1
@.str75 = private unnamed_addr constant [5 x i8] c"%8d \00", align 1
@.str76 = private unnamed_addr constant [10 x i8] c"         \00", align 1
@.str77 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str78 = private unnamed_addr constant [50 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c\00", align 1
@.str79 = private unnamed_addr constant [6 x i8] c"FASTA\00", align 1
@.str80 = private unnamed_addr constant [8 x i8] c"GENBANK\00", align 1
@.str81 = private unnamed_addr constant [5 x i8] c"EMBL\00", align 1
@.str82 = private unnamed_addr constant [4 x i8] c"GCG\00", align 1
@.str83 = private unnamed_addr constant [8 x i8] c"GCGDATA\00", align 1
@.str84 = private unnamed_addr constant [4 x i8] c"RAW\00", align 1
@.str85 = private unnamed_addr constant [3 x i8] c"IG\00", align 1
@.str86 = private unnamed_addr constant [8 x i8] c"STRIDER\00", align 1
@.str87 = private unnamed_addr constant [6 x i8] c"IDRAW\00", align 1
@.str88 = private unnamed_addr constant [6 x i8] c"ZUKER\00", align 1
@.str89 = private unnamed_addr constant [4 x i8] c"PIR\00", align 1
@.str90 = private unnamed_addr constant [6 x i8] c"SQUID\00", align 1
@.str91 = private unnamed_addr constant [10 x i8] c"STOCKHOLM\00", align 1
@.str92 = private unnamed_addr constant [6 x i8] c"SELEX\00", align 1
@.str93 = private unnamed_addr constant [4 x i8] c"MSF\00", align 1
@.str94 = private unnamed_addr constant [4 x i8] c"A2M\00", align 1
@.str95 = private unnamed_addr constant [7 x i8] c"PHYLIP\00", align 1
@.str96 = private unnamed_addr constant [4 x i8] c"EPS\00", align 1
@.str97 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str98 = private unnamed_addr constant [8 x i8] c"Genbank\00", align 1
@.str99 = private unnamed_addr constant [17 x i8] c"GCG data library\00", align 1
@.str100 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str101 = private unnamed_addr constant [16 x i8] c"Intelligenetics\00", align 1
@.str102 = private unnamed_addr constant [11 x i8] c"MacStrider\00", align 1
@.str103 = private unnamed_addr constant [17 x i8] c"Idraw Postscript\00", align 1
@.str104 = private unnamed_addr constant [6 x i8] c"Zuker\00", align 1
@.str105 = private unnamed_addr constant [10 x i8] c"Stockholm\00", align 1
@.str106 = private unnamed_addr constant [8 x i8] c"Clustal\00", align 1
@.str107 = private unnamed_addr constant [4 x i8] c"a2m\00", align 1
@.str108 = private unnamed_addr constant [7 x i8] c"Phylip\00", align 1
@.str109 = private unnamed_addr constant [38 x i8] c"Bad code passed to MSAFormat2String()\00", align 1
@.str110 = private unnamed_addr constant [25 x i8] c"ABCDEFGHIKLMNPQRSTVWXYZ*\00", align 1
@.str111 = private unnamed_addr constant [7 x i8] c"ACGTUN\00", align 1
@.str112 = private unnamed_addr constant [7 x i8] c"EFIPQZ\00", align 1
@.str113 = private unnamed_addr constant [11 x i8] c"  Length: \00", align 1
@.str114 = private unnamed_addr constant [4 x i8] c"\0A\09 \00", align 1
@.str115 = private unnamed_addr constant [34 x i8] c">>>>([^ ]+) .+2BIT +Len: ([0-9]+)\00", align 1
@sqd_parse = external global [10 x i8*]
@.str116 = private unnamed_addr constant [33 x i8] c">>>>([^ ]+) .+ASCII +Len: [0-9]+\00", align 1
@.str117 = private unnamed_addr constant [25 x i8] c"bogus GCGdata format? %s\00", align 1
@.str118 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str119 = private unnamed_addr constant [13 x i8] c"fread failed\00", align 1
@.str120 = private unnamed_addr constant [28 x i8] c"SSIGetFilePosition() failed\00", align 1
@.str121 = private unnamed_addr constant [6 x i8] c"ENTRY\00", align 1
@.str122 = private unnamed_addr constant [6 x i8] c"TITLE\00", align 1
@.str123 = private unnamed_addr constant [10 x i8] c"ACCESSION\00", align 1
@.str124 = private unnamed_addr constant [9 x i8] c"SEQUENCE\00", align 1
@.str125 = private unnamed_addr constant [5 x i8] c"ID  \00", align 1
@.str126 = private unnamed_addr constant [5 x i8] c"AC  \00", align 1
@.str127 = private unnamed_addr constant [6 x i8] c";  \09\0A\00", align 1
@.str128 = private unnamed_addr constant [5 x i8] c"DE  \00", align 1
@.str129 = private unnamed_addr constant [3 x i8] c"SQ\00", align 1
@.str130 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str131 = private unnamed_addr constant [174 x i8] c"File %s does not appear to be in FASTA format at line %d.\0AYou may want to specify the file format on the command line.\0AUsually this is done with an option --informat <fmt>.\0A\00", align 1
@.str132 = private unnamed_addr constant [6 x i8] c"LOCUS\00", align 1
@.str133 = private unnamed_addr constant [11 x i8] c"DEFINITION\00", align 1
@.str134 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str135 = private unnamed_addr constant [7 x i8] c"ORIGIN\00", align 1
@.str136 = private unnamed_addr constant [8 x i8] c"LOCUS  \00", align 1
@.str137 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str138 = private unnamed_addr constant [15 x i8] c"; DNA sequence\00", align 1
@.str139 = private unnamed_addr constant [5 x i8] c",\0A\09 \00", align 1
@stdin = external global %struct._IO_FILE*
@.str140 = private unnamed_addr constant [8 x i8] c"[STDIN]\00", align 1
@.str141 = private unnamed_addr constant [9 x i8] c"^.*\5C.gz$\00", align 1
@.str142 = private unnamed_addr constant [24 x i8] c"%s: file does not exist\00", align 1
@.str143 = private unnamed_addr constant [37 x i8] c"filename > 255 char in SeqfileOpen()\00", align 1
@.str144 = private unnamed_addr constant [12 x i8] c"gzip -dc %s\00", align 1
@.str145 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str146 = private unnamed_addr constant [64 x i8] c"Can't autodetect sequence file format from a stdin or gzip pipe\00", align 1
@.str147 = private unnamed_addr constant [43 x i8] c"Can't determine format of sequence file %s\00", align 1
@.str148 = private unnamed_addr constant [47 x i8] c"Failed to read any alignment data from file %s\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.ReadSeqVars* @SeqfileOpen(i8* %filename, i32 %format, i8* %env) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !265), !dbg !595
  tail call void @llvm.dbg.value(metadata !{i32 %format}, i64 0, metadata !266), !dbg !595
  tail call void @llvm.dbg.value(metadata !{i8* %env}, i64 0, metadata !267), !dbg !595
  %call = tail call fastcc %struct.ReadSeqVars* @seqfile_open(i8* %filename, i32 %format, i8* %env, i32 -1) #8, !dbg !596
  ret %struct.ReadSeqVars* %call, !dbg !596
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.ReadSeqVars* @seqfile_open(i8* %filename, i32 %format, i8* %env, i32 %ssimode) #0 {
entry:
  %cmd = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !581), !dbg !597
  call void @llvm.dbg.value(metadata !{i32 %format}, i64 0, metadata !582), !dbg !597
  call void @llvm.dbg.value(metadata !{i8* %env}, i64 0, metadata !583), !dbg !597
  call void @llvm.dbg.value(metadata !{i32 %ssimode}, i64 0, metadata !584), !dbg !597
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str78, i64 0, i64 0), i32 101, i64 176) #9, !dbg !598
  %0 = bitcast i8* %call to %struct.ReadSeqVars*, !dbg !598
  call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %0}, i64 0, metadata !585), !dbg !598
  %ssimode1 = getelementptr inbounds i8* %call, i64 36, !dbg !599
  %1 = bitcast i8* %ssimode1 to i32*, !dbg !599
  store i32 %ssimode, i32* %1, align 4, !dbg !599, !tbaa !600
  %rpl = getelementptr inbounds i8* %call, i64 88, !dbg !603
  %2 = bitcast i8* %rpl to i32*, !dbg !603
  store i32 -1, i32* %2, align 4, !dbg !603, !tbaa !600
  %lastrpl = getelementptr inbounds i8* %call, i64 92, !dbg !604
  %3 = bitcast i8* %lastrpl to i32*, !dbg !604
  store i32 0, i32* %3, align 4, !dbg !604, !tbaa !600
  %maxrpl = getelementptr inbounds i8* %call, i64 96, !dbg !605
  %4 = bitcast i8* %maxrpl to i32*, !dbg !605
  store i32 0, i32* %4, align 4, !dbg !605, !tbaa !600
  %bpl = getelementptr inbounds i8* %call, i64 100, !dbg !606
  %5 = bitcast i8* %bpl to i32*, !dbg !606
  store i32 -1, i32* %5, align 4, !dbg !606, !tbaa !600
  %lastbpl = getelementptr inbounds i8* %call, i64 104, !dbg !607
  %6 = bitcast i8* %lastbpl to i32*, !dbg !607
  store i32 0, i32* %6, align 4, !dbg !607, !tbaa !600
  %maxbpl = getelementptr inbounds i8* %call, i64 108, !dbg !608
  %7 = bitcast i8* %maxbpl to i32*, !dbg !608
  store i32 0, i32* %7, align 4, !dbg !608, !tbaa !600
  %call2 = call i32 @strcmp(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0)) #10, !dbg !609
  %cmp = icmp eq i32 %call2, 0, !dbg !609
  br i1 %cmp, label %if.then, label %if.else, !dbg !609

if.then:                                          ; preds = %entry
  %8 = load %struct._IO_FILE** @stdin, align 8, !dbg !610, !tbaa !612
  %f = bitcast i8* %call to %struct._IO_FILE**, !dbg !610
  store %struct._IO_FILE* %8, %struct._IO_FILE** %f, align 8, !dbg !610, !tbaa !612
  %do_stdin = getelementptr inbounds i8* %call, i64 152, !dbg !613
  %9 = bitcast i8* %do_stdin to i32*, !dbg !613
  store i32 1, i32* %9, align 4, !dbg !613, !tbaa !600
  %do_gzip = getelementptr inbounds i8* %call, i64 148, !dbg !614
  %10 = bitcast i8* %do_gzip to i32*, !dbg !614
  store i32 0, i32* %10, align 4, !dbg !614, !tbaa !600
  %call3 = call i8* @sre_strdup(i8* getelementptr inbounds ([8 x i8]* @.str140, i64 0, i64 0), i32 -1) #9, !dbg !615
  %fname = getelementptr inbounds i8* %call, i64 8, !dbg !615
  %11 = bitcast i8* %fname to i8**, !dbg !615
  store i8* %call3, i8** %11, align 8, !dbg !615, !tbaa !612
  br label %if.end38, !dbg !616

if.else:                                          ; preds = %entry
  %call4 = call i32 @Strparse(i8* getelementptr inbounds ([9 x i8]* @.str141, i64 0, i64 0), i8* %filename, i32 0) #9, !dbg !617
  %tobool = icmp eq i32 %call4, 0, !dbg !617
  br i1 %tobool, label %if.else24, label %if.then5, !dbg !617

if.then5:                                         ; preds = %if.else
  %12 = getelementptr inbounds [256 x i8]* %cmd, i64 0, i64 0, !dbg !618
  call void @llvm.lifetime.start(i64 256, i8* %12) #6, !dbg !618
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %cmd}, metadata !586), !dbg !618
  %call6 = call i32 @FileExists(i8* %filename) #9, !dbg !619
  %tobool7 = icmp eq i32 %call6, 0, !dbg !619
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !619

if.then8:                                         ; preds = %if.then5
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([24 x i8]* @.str142, i64 0, i64 0), i8* %filename) #9, !dbg !620
  br label %if.end, !dbg !620

if.end:                                           ; preds = %if.then5, %if.then8
  %call9 = call i64 @strlen(i8* %filename) #10, !dbg !621
  %add = add i64 %call9, 9, !dbg !621
  %cmp10 = icmp ugt i64 %add, 255, !dbg !621
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !621

if.then11:                                        ; preds = %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([37 x i8]* @.str143, i64 0, i64 0)) #9, !dbg !622
  br label %if.end12, !dbg !622

if.end12:                                         ; preds = %if.then11, %if.end
  %call13 = call i32 (i8*, i8*, ...)* @sprintf(i8* %12, i8* getelementptr inbounds ([12 x i8]* @.str144, i64 0, i64 0), i8* %filename) #9, !dbg !623
  %call15 = call %struct._IO_FILE* @popen(i8* %12, i8* getelementptr inbounds ([2 x i8]* @.str145, i64 0, i64 0)) #9, !dbg !624
  %f16 = bitcast i8* %call to %struct._IO_FILE**, !dbg !624
  store %struct._IO_FILE* %call15, %struct._IO_FILE** %f16, align 8, !dbg !624, !tbaa !612
  %cmp17 = icmp eq %struct._IO_FILE* %call15, null, !dbg !624
  br i1 %cmp17, label %return, label %if.end19, !dbg !624

if.end19:                                         ; preds = %if.end12
  %do_stdin20 = getelementptr inbounds i8* %call, i64 152, !dbg !625
  %13 = bitcast i8* %do_stdin20 to i32*, !dbg !625
  store i32 0, i32* %13, align 4, !dbg !625, !tbaa !600
  %do_gzip21 = getelementptr inbounds i8* %call, i64 148, !dbg !626
  %14 = bitcast i8* %do_gzip21 to i32*, !dbg !626
  store i32 1, i32* %14, align 4, !dbg !626, !tbaa !600
  %call22 = call i8* @sre_strdup(i8* %filename, i32 -1) #9, !dbg !627
  %fname23 = getelementptr inbounds i8* %call, i64 8, !dbg !627
  %15 = bitcast i8* %fname23 to i8**, !dbg !627
  store i8* %call22, i8** %15, align 8, !dbg !627, !tbaa !612
  call void @llvm.lifetime.end(i64 256, i8* %12) #6, !dbg !628
  br label %if.end38

if.else24:                                        ; preds = %if.else
  %call25 = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str145, i64 0, i64 0)) #9, !dbg !629
  %f26 = bitcast i8* %call to %struct._IO_FILE**, !dbg !629
  store %struct._IO_FILE* %call25, %struct._IO_FILE** %f26, align 8, !dbg !629, !tbaa !612
  %cmp27 = icmp eq %struct._IO_FILE* %call25, null, !dbg !629
  br i1 %cmp27, label %land.lhs.true, label %if.end32, !dbg !629

land.lhs.true:                                    ; preds = %if.else24
  %call28 = call %struct._IO_FILE* @EnvFileOpen(i8* %filename, i8* %env, i8** null) #9, !dbg !631
  store %struct._IO_FILE* %call28, %struct._IO_FILE** %f26, align 8, !dbg !631, !tbaa !612
  %cmp30 = icmp eq %struct._IO_FILE* %call28, null, !dbg !631
  br i1 %cmp30, label %return, label %if.end32, !dbg !631

if.end32:                                         ; preds = %land.lhs.true, %if.else24
  %do_stdin33 = getelementptr inbounds i8* %call, i64 152, !dbg !632
  %16 = bitcast i8* %do_stdin33 to i32*, !dbg !632
  store i32 0, i32* %16, align 4, !dbg !632, !tbaa !600
  %do_gzip34 = getelementptr inbounds i8* %call, i64 148, !dbg !633
  %17 = bitcast i8* %do_gzip34 to i32*, !dbg !633
  store i32 0, i32* %17, align 4, !dbg !633, !tbaa !600
  %call35 = call i8* @sre_strdup(i8* %filename, i32 -1) #9, !dbg !634
  %fname36 = getelementptr inbounds i8* %call, i64 8, !dbg !634
  %18 = bitcast i8* %fname36 to i8**, !dbg !634
  store i8* %call35, i8** %18, align 8, !dbg !634, !tbaa !612
  br label %if.end38

if.end38:                                         ; preds = %if.end19, %if.end32, %if.then
  %cmp39 = icmp eq i32 %format, 0, !dbg !635
  br i1 %cmp39, label %if.then40, label %if.end53, !dbg !635

if.then40:                                        ; preds = %if.end38
  %do_stdin41 = getelementptr inbounds i8* %call, i64 152, !dbg !636
  %19 = bitcast i8* %do_stdin41 to i32*, !dbg !636
  %20 = load i32* %19, align 4, !dbg !636, !tbaa !600
  %cmp42 = icmp eq i32 %20, 1, !dbg !636
  br i1 %cmp42, label %if.then45, label %lor.lhs.false, !dbg !636

lor.lhs.false:                                    ; preds = %if.then40
  %do_gzip43 = getelementptr inbounds i8* %call, i64 148, !dbg !636
  %21 = bitcast i8* %do_gzip43 to i32*, !dbg !636
  %22 = load i32* %21, align 4, !dbg !636, !tbaa !600
  %tobool44 = icmp eq i32 %22, 0, !dbg !636
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !636

if.then45:                                        ; preds = %lor.lhs.false, %if.then40
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([64 x i8]* @.str146, i64 0, i64 0)) #9, !dbg !638
  br label %if.end46, !dbg !638

if.end46:                                         ; preds = %lor.lhs.false, %if.then45
  %f47 = bitcast i8* %call to %struct._IO_FILE**, !dbg !639
  %23 = load %struct._IO_FILE** %f47, align 8, !dbg !639, !tbaa !612
  %call48 = call i32 @SeqfileFormat(%struct._IO_FILE* %23) #8, !dbg !639
  call void @llvm.dbg.value(metadata !{i32 %call48}, i64 0, metadata !582), !dbg !639
  %cmp49 = icmp eq i32 %call48, 0, !dbg !640
  br i1 %cmp49, label %if.then50, label %if.end53, !dbg !640

if.then50:                                        ; preds = %if.end46
  %fname51 = getelementptr inbounds i8* %call, i64 8, !dbg !641
  %24 = bitcast i8* %fname51 to i8**, !dbg !641
  %25 = load i8** %24, align 8, !dbg !641, !tbaa !612
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([43 x i8]* @.str147, i64 0, i64 0), i8* %25) #9, !dbg !641
  br label %if.end53, !dbg !641

if.end53:                                         ; preds = %if.end46, %if.then50, %if.end38
  %format.addr.0 = phi i32 [ 0, %if.then50 ], [ %call48, %if.end46 ], [ %format, %if.end38 ]
  %msa = getelementptr inbounds i8* %call, i64 160, !dbg !642
  %26 = bitcast i8* %msa to %struct.msa_struct**, !dbg !642
  %afp = getelementptr inbounds i8* %call, i64 168, !dbg !643
  %27 = bitcast i8* %afp to %struct.msafile_struct**, !dbg !643
  %format54 = getelementptr inbounds i8* %call, i64 144, !dbg !644
  %28 = bitcast i8* %format54 to i32*, !dbg !644
  call void @llvm.memset.p0i8.i64(i8* %msa, i8 0, i64 16, i32 8, i1 false), !dbg !643
  store i32 %format.addr.0, i32* %28, align 4, !dbg !644, !tbaa !600
  %linenumber = getelementptr inbounds i8* %call, i64 16, !dbg !645
  %29 = bitcast i8* %linenumber to i32*, !dbg !645
  store i32 0, i32* %29, align 4, !dbg !645, !tbaa !600
  %buf = getelementptr inbounds i8* %call, i64 24, !dbg !646
  %30 = bitcast i8* %buf to i8**, !dbg !646
  store i8* null, i8** %30, align 8, !dbg !646, !tbaa !612
  %buflen = getelementptr inbounds i8* %call, i64 32, !dbg !647
  %31 = bitcast i8* %buflen to i32*, !dbg !647
  store i32 0, i32* %31, align 4, !dbg !647, !tbaa !600
  %cmp55 = icmp sgt i32 %format.addr.0, 100, !dbg !648
  br i1 %cmp55, label %if.then56, label %if.end89, !dbg !648

if.then56:                                        ; preds = %if.end53
  %call57 = call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str78, i64 0, i64 0), i32 190, i64 64) #9, !dbg !649
  %32 = bitcast i8* %call57 to %struct.msafile_struct*, !dbg !649
  store %struct.msafile_struct* %32, %struct.msafile_struct** %27, align 8, !dbg !649, !tbaa !612
  %f59 = bitcast i8* %call to %struct._IO_FILE**, !dbg !651
  %33 = load %struct._IO_FILE** %f59, align 8, !dbg !651, !tbaa !612
  %f61 = bitcast i8* %call57 to %struct._IO_FILE**, !dbg !651
  store %struct._IO_FILE* %33, %struct._IO_FILE** %f61, align 8, !dbg !651, !tbaa !612
  %do_stdin62 = getelementptr inbounds i8* %call, i64 152, !dbg !652
  %34 = bitcast i8* %do_stdin62 to i32*, !dbg !652
  %35 = load i32* %34, align 4, !dbg !652, !tbaa !600
  %36 = load %struct.msafile_struct** %27, align 8, !dbg !652, !tbaa !612
  %do_stdin64 = getelementptr inbounds %struct.msafile_struct* %36, i64 0, i32 7, !dbg !652
  store i32 %35, i32* %do_stdin64, align 4, !dbg !652, !tbaa !600
  %do_gzip65 = getelementptr inbounds i8* %call, i64 148, !dbg !653
  %37 = bitcast i8* %do_gzip65 to i32*, !dbg !653
  %38 = load i32* %37, align 4, !dbg !653, !tbaa !600
  %do_gzip67 = getelementptr inbounds %struct.msafile_struct* %36, i64 0, i32 6, !dbg !653
  store i32 %38, i32* %do_gzip67, align 4, !dbg !653, !tbaa !600
  %fname68 = getelementptr inbounds i8* %call, i64 8, !dbg !654
  %39 = bitcast i8* %fname68 to i8**, !dbg !654
  %40 = load i8** %39, align 8, !dbg !654, !tbaa !612
  %fname70 = getelementptr inbounds %struct.msafile_struct* %36, i64 0, i32 1, !dbg !654
  store i8* %40, i8** %fname70, align 8, !dbg !654, !tbaa !612
  %41 = load i32* %28, align 4, !dbg !655, !tbaa !600
  %42 = load %struct.msafile_struct** %27, align 8, !dbg !655, !tbaa !612
  %format73 = getelementptr inbounds %struct.msafile_struct* %42, i64 0, i32 8, !dbg !655
  store i32 %41, i32* %format73, align 4, !dbg !655, !tbaa !600
  %43 = load i32* %29, align 4, !dbg !656, !tbaa !600
  %linenumber76 = getelementptr inbounds %struct.msafile_struct* %42, i64 0, i32 2, !dbg !656
  store i32 %43, i32* %linenumber76, align 4, !dbg !656, !tbaa !600
  %buf78 = getelementptr inbounds %struct.msafile_struct* %42, i64 0, i32 3, !dbg !657
  store i8* null, i8** %buf78, align 8, !dbg !657, !tbaa !612
  %44 = load %struct.msafile_struct** %27, align 8, !dbg !658, !tbaa !612
  %buflen80 = getelementptr inbounds %struct.msafile_struct* %44, i64 0, i32 4, !dbg !658
  store i32 0, i32* %buflen80, align 4, !dbg !658, !tbaa !600
  %call82 = call %struct.msa_struct* @MSAFileRead(%struct.msafile_struct* %44) #9, !dbg !659
  store %struct.msa_struct* %call82, %struct.msa_struct** %26, align 8, !dbg !659, !tbaa !612
  %cmp84 = icmp eq %struct.msa_struct* %call82, null, !dbg !659
  br i1 %cmp84, label %if.then85, label %if.end87, !dbg !659

if.then85:                                        ; preds = %if.then56
  %45 = load i8** %39, align 8, !dbg !660, !tbaa !612
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([47 x i8]* @.str148, i64 0, i64 0), i8* %45) #9, !dbg !660
  %.pre = load %struct.msa_struct** %26, align 8, !dbg !661, !tbaa !612
  br label %if.end87, !dbg !660

if.end87:                                         ; preds = %if.then85, %if.then56
  %46 = phi %struct.msa_struct* [ %.pre, %if.then85 ], [ %call82, %if.then56 ]
  %lastidx = getelementptr inbounds %struct.msa_struct* %46, i64 0, i32 45, !dbg !661
  store i32 0, i32* %lastidx, align 4, !dbg !661, !tbaa !600
  br label %return, !dbg !662

if.end89:                                         ; preds = %if.end53
  call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %0) #8, !dbg !663
  br label %return, !dbg !664

return:                                           ; preds = %land.lhs.true, %if.end12, %if.end89, %if.end87
  %retval.1 = phi %struct.ReadSeqVars* [ %0, %if.end87 ], [ %0, %if.end89 ], [ null, %if.end12 ], [ null, %land.lhs.true ]
  ret %struct.ReadSeqVars* %retval.1, !dbg !665
}

; Function Attrs: nounwind optsize uwtable
define %struct.ReadSeqVars* @SeqfileOpenForIndexing(i8* %filename, i32 %format, i8* %env, i32 %ssimode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !272), !dbg !666
  tail call void @llvm.dbg.value(metadata !{i32 %format}, i64 0, metadata !273), !dbg !666
  tail call void @llvm.dbg.value(metadata !{i8* %env}, i64 0, metadata !274), !dbg !666
  tail call void @llvm.dbg.value(metadata !{i32 %ssimode}, i64 0, metadata !275), !dbg !666
  %call = tail call fastcc %struct.ReadSeqVars* @seqfile_open(i8* %filename, i32 %format, i8* %env, i32 %ssimode) #8, !dbg !667
  ret %struct.ReadSeqVars* %call, !dbg !667
}

; Function Attrs: nounwind optsize uwtable
define void @SeqfilePosition(%struct.ReadSeqVars* %sqfp, %struct.ssioffset_s* %offset) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %sqfp}, i64 0, metadata !281), !dbg !668
  tail call void @llvm.dbg.value(metadata !{%struct.ssioffset_s* %offset}, i64 0, metadata !282), !dbg !668
  %do_stdin = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 22, !dbg !669
  %0 = load i32* %do_stdin, align 4, !dbg !669, !tbaa !600
  %tobool = icmp eq i32 %0, 0, !dbg !669
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !669

lor.lhs.false:                                    ; preds = %entry
  %do_gzip = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 21, !dbg !669
  %1 = load i32* %do_gzip, align 4, !dbg !669, !tbaa !600
  %tobool1 = icmp eq i32 %1, 0, !dbg !669
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !669

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %format = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 20, !dbg !669
  %2 = load i32* %format, align 4, !dbg !669, !tbaa !600
  %cmp = icmp sgt i32 %2, 100, !dbg !669
  br i1 %cmp, label %if.then, label %if.end, !dbg !669

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0)) #9, !dbg !670
  br label %if.end, !dbg !670

if.end:                                           ; preds = %if.then, %lor.lhs.false2
  %f = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 0, !dbg !671
  %3 = load %struct._IO_FILE** %f, align 8, !dbg !671, !tbaa !612
  %call = tail call i32 @SSISetFilePosition(%struct._IO_FILE* %3, %struct.ssioffset_s* %offset) #9, !dbg !671
  %cmp3 = icmp eq i32 %call, 0, !dbg !671
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !671

if.then4:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0)) #9, !dbg !672
  br label %if.end5, !dbg !672

if.end5:                                          ; preds = %if.end, %if.then4
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %sqfp) #8, !dbg !673
  ret void, !dbg !674
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare i32 @SSISetFilePosition(%struct._IO_FILE*, %struct.ssioffset_s*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %V}, i64 0, metadata !578), !dbg !675
  %ssimode = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 5, !dbg !676
  %0 = load i32* %ssimode, align 4, !dbg !676, !tbaa !600
  %cmp = icmp sgt i32 %0, -1, !dbg !676
  %f = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 0, !dbg !677
  br i1 %cmp, label %if.then, label %if.end4, !dbg !676

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** %f, align 8, !dbg !677, !tbaa !612
  %ssioffset = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 6, !dbg !677
  %call = tail call i32 @SSIGetFilePosition(%struct._IO_FILE* %1, i32 %0, %struct.ssioffset_s* %ssioffset) #9, !dbg !677
  %cmp2 = icmp eq i32 %call, 0, !dbg !677
  br i1 %cmp2, label %if.end4, label %if.then3, !dbg !677

if.then3:                                         ; preds = %if.then
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str120, i64 0, i64 0)) #9, !dbg !678
  br label %if.end4, !dbg !678

if.end4:                                          ; preds = %entry, %if.then, %if.then3
  %buf = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3, !dbg !679
  %buflen = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 4, !dbg !679
  %2 = load %struct._IO_FILE** %f, align 8, !dbg !679, !tbaa !612
  %call6 = tail call i8* @sre_fgets(i8** %buf, i32* %buflen, %struct._IO_FILE* %2) #9, !dbg !679
  %cmp7 = icmp eq i8* %call6, null, !dbg !679
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !679

if.then8:                                         ; preds = %if.end4
  %3 = load i8** %buf, align 8, !dbg !680, !tbaa !612
  store i8 0, i8* %3, align 1, !dbg !680, !tbaa !601
  br label %if.end10, !dbg !680

if.end10:                                         ; preds = %if.then8, %if.end4
  %linenumber = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 2, !dbg !681
  %4 = load i32* %linenumber, align 4, !dbg !681, !tbaa !600
  %inc = add nsw i32 %4, 1, !dbg !681
  store i32 %inc, i32* %linenumber, align 4, !dbg !681, !tbaa !600
  ret void, !dbg !682
}

; Function Attrs: nounwind optsize uwtable
define void @SeqfileRewind(%struct.ReadSeqVars* %sqfp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %sqfp}, i64 0, metadata !287), !dbg !683
  %do_stdin = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 22, !dbg !684
  %0 = load i32* %do_stdin, align 4, !dbg !684, !tbaa !600
  %tobool = icmp eq i32 %0, 0, !dbg !684
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !684

lor.lhs.false:                                    ; preds = %entry
  %do_gzip = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 21, !dbg !684
  %1 = load i32* %do_gzip, align 4, !dbg !684, !tbaa !600
  %tobool1 = icmp eq i32 %1, 0, !dbg !684
  br i1 %tobool1, label %if.end, label %if.then, !dbg !684

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([63 x i8]* @.str2, i64 0, i64 0)) #9, !dbg !685
  br label %if.end, !dbg !685

if.end:                                           ; preds = %lor.lhs.false, %if.then
  %f = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 0, !dbg !686
  %2 = load %struct._IO_FILE** %f, align 8, !dbg !686, !tbaa !612
  tail call void @rewind(%struct._IO_FILE* %2) #9, !dbg !686
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %sqfp) #8, !dbg !687
  ret void, !dbg !688
}

; Function Attrs: nounwind optsize
declare void @rewind(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @SeqfileLineParameters(%struct.ReadSeqVars* nocapture %V, i32* nocapture %ret_bpl, i32* nocapture %ret_rpl) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %V}, i64 0, metadata !292), !dbg !689
  tail call void @llvm.dbg.value(metadata !{i32* %ret_bpl}, i64 0, metadata !293), !dbg !689
  tail call void @llvm.dbg.value(metadata !{i32* %ret_rpl}, i64 0, metadata !294), !dbg !689
  %rpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 9, !dbg !690
  %0 = load i32* %rpl, align 4, !dbg !690, !tbaa !600
  %cmp = icmp sgt i32 %0, 0, !dbg !690
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !690

land.lhs.true:                                    ; preds = %entry
  %maxrpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 11, !dbg !690
  %1 = load i32* %maxrpl, align 4, !dbg !690, !tbaa !600
  %cmp2 = icmp eq i32 %1, %0, !dbg !690
  br i1 %cmp2, label %land.lhs.true3, label %if.else, !dbg !690

land.lhs.true3:                                   ; preds = %land.lhs.true
  %bpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 12, !dbg !690
  %2 = load i32* %bpl, align 4, !dbg !690, !tbaa !600
  %cmp4 = icmp sgt i32 %2, 0, !dbg !690
  br i1 %cmp4, label %land.lhs.true5, label %if.else, !dbg !690

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %maxbpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 14, !dbg !690
  %3 = load i32* %maxbpl, align 4, !dbg !690, !tbaa !600
  %cmp7 = icmp eq i32 %3, %2, !dbg !690
  br i1 %cmp7, label %if.then, label %if.else, !dbg !690

if.then:                                          ; preds = %land.lhs.true5
  store i32 %2, i32* %ret_bpl, align 4, !dbg !691, !tbaa !600
  %4 = load i32* %rpl, align 4, !dbg !693, !tbaa !600
  br label %if.end, !dbg !694

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %entry
  store i32 0, i32* %ret_bpl, align 4, !dbg !695, !tbaa !600
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %4, %if.then ]
  store i32 %storemerge, i32* %ret_rpl, align 4, !dbg !693, !tbaa !600
  ret void, !dbg !697
}

; Function Attrs: nounwind optsize uwtable
define void @SeqfileClose(%struct.ReadSeqVars* nocapture %sqfp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %sqfp}, i64 0, metadata !297), !dbg !698
  %afp = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 24, !dbg !699
  %0 = load %struct.msafile_struct** %afp, align 8, !dbg !699, !tbaa !612
  %cmp = icmp eq %struct.msafile_struct* %0, null, !dbg !699
  br i1 %cmp, label %if.end11, label %if.then, !dbg !699

if.then:                                          ; preds = %entry
  %msa = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 23, !dbg !700
  %1 = load %struct.msa_struct** %msa, align 8, !dbg !700, !tbaa !612
  %cmp1 = icmp eq %struct.msa_struct* %1, null, !dbg !700
  br i1 %cmp1, label %if.end, label %if.then2, !dbg !700

if.then2:                                         ; preds = %if.then
  tail call void @MSAFree(%struct.msa_struct* %1) #9, !dbg !700
  %.pre = load %struct.msafile_struct** %afp, align 8, !dbg !702, !tbaa !612
  br label %if.end, !dbg !700

if.end:                                           ; preds = %if.then, %if.then2
  %2 = phi %struct.msafile_struct* [ %0, %if.then ], [ %.pre, %if.then2 ]
  %buf = getelementptr inbounds %struct.msafile_struct* %2, i64 0, i32 3, !dbg !702
  %3 = load i8** %buf, align 8, !dbg !702, !tbaa !612
  %cmp5 = icmp eq i8* %3, null, !dbg !702
  br i1 %cmp5, label %if.end9, label %if.then6, !dbg !702

if.then6:                                         ; preds = %if.end
  tail call void @free(i8* %3) #9, !dbg !702
  %.pre41 = load %struct.msafile_struct** %afp, align 8, !dbg !703, !tbaa !612
  br label %if.end9, !dbg !702

if.end9:                                          ; preds = %if.end, %if.then6
  %4 = phi %struct.msafile_struct* [ %2, %if.end ], [ %.pre41, %if.then6 ]
  %5 = bitcast %struct.msafile_struct* %4 to i8*, !dbg !703
  tail call void @free(i8* %5) #9, !dbg !703
  br label %if.end11, !dbg !704

if.end11:                                         ; preds = %entry, %if.end9
  %do_gzip = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 21, !dbg !705
  %6 = load i32* %do_gzip, align 4, !dbg !705, !tbaa !600
  %tobool = icmp eq i32 %6, 0, !dbg !705
  br i1 %tobool, label %if.else, label %if.then12, !dbg !705

if.then12:                                        ; preds = %if.end11
  %f = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 0, !dbg !705
  %7 = load %struct._IO_FILE** %f, align 8, !dbg !705, !tbaa !612
  %call = tail call i32 @pclose(%struct._IO_FILE* %7) #9, !dbg !705
  br label %if.end18, !dbg !705

if.else:                                          ; preds = %if.end11
  %do_stdin = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 22, !dbg !706
  %8 = load i32* %do_stdin, align 4, !dbg !706, !tbaa !600
  %tobool13 = icmp eq i32 %8, 0, !dbg !706
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !706

if.then14:                                        ; preds = %if.else
  %f15 = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 0, !dbg !706
  %9 = load %struct._IO_FILE** %f15, align 8, !dbg !706, !tbaa !612
  %call16 = tail call i32 @fclose(%struct._IO_FILE* %9) #9, !dbg !706
  br label %if.end18, !dbg !706

if.end18:                                         ; preds = %if.else, %if.then14, %if.then12
  %buf19 = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 3, !dbg !707
  %10 = load i8** %buf19, align 8, !dbg !707, !tbaa !612
  %cmp20 = icmp eq i8* %10, null, !dbg !707
  br i1 %cmp20, label %if.end23, label %if.then21, !dbg !707

if.then21:                                        ; preds = %if.end18
  tail call void @free(i8* %10) #9, !dbg !707
  br label %if.end23, !dbg !707

if.end23:                                         ; preds = %if.end18, %if.then21
  %fname = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 1, !dbg !708
  %11 = load i8** %fname, align 8, !dbg !708, !tbaa !612
  %cmp24 = icmp eq i8* %11, null, !dbg !708
  br i1 %cmp24, label %if.end27, label %if.then25, !dbg !708

if.then25:                                        ; preds = %if.end23
  tail call void @free(i8* %11) #9, !dbg !708
  br label %if.end27, !dbg !708

if.end27:                                         ; preds = %if.end23, %if.then25
  %12 = bitcast %struct.ReadSeqVars* %sqfp to i8*, !dbg !709
  tail call void @free(i8* %12) #9, !dbg !709
  ret void, !dbg !710
}

; Function Attrs: optsize
declare void @MSAFree(%struct.msa_struct*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @pclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @FreeSequence(i8* %seq, %struct.seqinfo_s* nocapture %sqinfo) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %seq}, i64 0, metadata !302), !dbg !711
  tail call void @llvm.dbg.value(metadata !{%struct.seqinfo_s* %sqinfo}, i64 0, metadata !303), !dbg !711
  %cmp = icmp eq i8* %seq, null, !dbg !712
  br i1 %cmp, label %if.end, label %if.then, !dbg !712

if.then:                                          ; preds = %entry
  tail call void @free(i8* %seq) #9, !dbg !712
  br label %if.end, !dbg !712

if.end:                                           ; preds = %entry, %if.then
  %flags = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0, !dbg !713
  %0 = load i32* %flags, align 4, !dbg !713, !tbaa !600
  %and = and i32 %0, 512, !dbg !713
  %tobool = icmp eq i32 %and, 0, !dbg !713
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !713

if.then1:                                         ; preds = %if.end
  %ss = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 10, !dbg !713
  %1 = load i8** %ss, align 8, !dbg !713, !tbaa !612
  tail call void @free(i8* %1) #9, !dbg !713
  %.pre = load i32* %flags, align 4, !dbg !714, !tbaa !600
  br label %if.end2, !dbg !713

if.end2:                                          ; preds = %if.end, %if.then1
  %2 = phi i32 [ %0, %if.end ], [ %.pre, %if.then1 ]
  %and4 = and i32 %2, 1024, !dbg !714
  %tobool5 = icmp eq i32 %and4, 0, !dbg !714
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !714

if.then6:                                         ; preds = %if.end2
  %sa = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 11, !dbg !714
  %3 = load i8** %sa, align 8, !dbg !714, !tbaa !612
  tail call void @free(i8* %3) #9, !dbg !714
  br label %if.end7, !dbg !714

if.end7:                                          ; preds = %if.end2, %if.then6
  ret void, !dbg !715
}

; Function Attrs: nounwind optsize uwtable
define i32 @SetSeqinfoString(%struct.seqinfo_s* %sqinfo, i8* %sptr, i32 %flag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.seqinfo_s* %sqinfo}, i64 0, metadata !308), !dbg !716
  tail call void @llvm.dbg.value(metadata !{i8* %sptr}, i64 0, metadata !309), !dbg !716
  tail call void @llvm.dbg.value(metadata !{i32 %flag}, i64 0, metadata !310), !dbg !716
  %cmp = icmp eq i8* %sptr, null, !dbg !717
  br i1 %cmp, label %return, label %while.cond, !dbg !717

while.cond:                                       ; preds = %entry, %while.cond
  %sptr.addr.0 = phi i8* [ %incdec.ptr, %while.cond ], [ %sptr, %entry ]
  %0 = load i8* %sptr.addr.0, align 1, !dbg !718, !tbaa !601
  %cmp1 = icmp eq i8 %0, 32, !dbg !718
  %incdec.ptr = getelementptr inbounds i8* %sptr.addr.0, i64 1, !dbg !718
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !309), !dbg !718
  br i1 %cmp1, label %while.cond, label %while.end, !dbg !718

while.end:                                        ; preds = %while.cond
  %call = tail call i64 @strlen(i8* %sptr.addr.0) #10, !dbg !719
  %sub = add i64 %call, 4294967295, !dbg !719
  %conv3 = trunc i64 %sub to i32, !dbg !719
  tail call void @llvm.dbg.value(metadata !{i32 %conv3}, i64 0, metadata !312), !dbg !719
  %cmp4171 = icmp sgt i32 %conv3, -1, !dbg !719
  br i1 %cmp4171, label %for.body.lr.ph, label %for.end, !dbg !719

for.body.lr.ph:                                   ; preds = %while.end
  %call8 = tail call i16** @__ctype_b_loc() #11, !dbg !721
  %1 = load i16** %call8, align 8, !dbg !721, !tbaa !612
  %sext175 = shl i64 %sub, 32
  %2 = ashr exact i64 %sext175, 32
  br label %for.body, !dbg !719

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !719
  %3 = trunc i64 %indvars.iv to i32, !dbg !719
  %cmp4 = icmp sgt i32 %3, 0, !dbg !719
  br i1 %cmp4, label %for.body, label %for.end, !dbg !719

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %pos.0172 = phi i32 [ %conv3, %for.body.lr.ph ], [ %dec, %for.cond ]
  %arrayidx = getelementptr inbounds i8* %sptr.addr.0, i64 %indvars.iv, !dbg !721
  %4 = load i8* %arrayidx, align 1, !dbg !721, !tbaa !601
  %idxprom7 = sext i8 %4 to i64, !dbg !721
  %arrayidx9 = getelementptr inbounds i16* %1, i64 %idxprom7, !dbg !721
  %5 = load i16* %arrayidx9, align 2, !dbg !721, !tbaa !722
  %and = and i16 %5, 8192, !dbg !721
  %tobool = icmp eq i16 %and, 0, !dbg !721
  %dec = add nsw i32 %pos.0172, -1, !dbg !719
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !312), !dbg !719
  br i1 %tobool, label %for.end, label %for.cond, !dbg !721

for.end:                                          ; preds = %for.cond, %for.body, %while.end
  %pos.0.lcssa = phi i32 [ %conv3, %while.end ], [ %pos.0172, %for.body ], [ %dec, %for.cond ]
  %add = add nsw i32 %pos.0.lcssa, 1, !dbg !723
  %idxprom13 = sext i32 %add to i64, !dbg !723
  %arrayidx14 = getelementptr inbounds i8* %sptr.addr.0, i64 %idxprom13, !dbg !723
  store i8 0, i8* %arrayidx14, align 1, !dbg !723, !tbaa !601
  switch i32 %flag, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb23
    i32 4, label %sw.bb35
    i32 8, label %sw.bb47
    i32 16, label %sw.bb82
    i32 32, label %sw.bb95
    i32 256, label %sw.bb108
  ], !dbg !724

sw.bb:                                            ; preds = %for.end
  %6 = load i8* %sptr.addr.0, align 1, !dbg !725, !tbaa !601
  %cmp16 = icmp eq i8 %6, 45, !dbg !725
  br i1 %cmp16, label %return, label %if.then18, !dbg !725

if.then18:                                        ; preds = %sw.bb
  %arraydecay = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0, !dbg !727
  %call19 = tail call i8* @strncpy(i8* %arraydecay, i8* %sptr.addr.0, i64 63) #9, !dbg !727
  %arrayidx21 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 63, !dbg !729
  store i8 0, i8* %arrayidx21, align 1, !dbg !729, !tbaa !601
  %flags = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0, !dbg !730
  %7 = load i32* %flags, align 4, !dbg !730, !tbaa !600
  %or = or i32 %7, 1, !dbg !730
  store i32 %or, i32* %flags, align 4, !dbg !730, !tbaa !600
  br label %return, !dbg !731

sw.bb23:                                          ; preds = %for.end
  %8 = load i8* %sptr.addr.0, align 1, !dbg !732, !tbaa !601
  %cmp25 = icmp eq i8 %8, 45, !dbg !732
  br i1 %cmp25, label %return, label %if.then27, !dbg !732

if.then27:                                        ; preds = %sw.bb23
  %arraydecay28 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 2, i64 0, !dbg !733
  %call29 = tail call i8* @strncpy(i8* %arraydecay28, i8* %sptr.addr.0, i64 63) #9, !dbg !733
  %arrayidx31 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 2, i64 63, !dbg !735
  store i8 0, i8* %arrayidx31, align 1, !dbg !735, !tbaa !601
  %flags32 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0, !dbg !736
  %9 = load i32* %flags32, align 4, !dbg !736, !tbaa !600
  %or33 = or i32 %9, 2, !dbg !736
  store i32 %or33, i32* %flags32, align 4, !dbg !736, !tbaa !600
  br label %return, !dbg !737

sw.bb35:                                          ; preds = %for.end
  %10 = load i8* %sptr.addr.0, align 1, !dbg !738, !tbaa !601
  %cmp37 = icmp eq i8 %10, 45, !dbg !738
  br i1 %cmp37, label %return, label %if.then39, !dbg !738

if.then39:                                        ; preds = %sw.bb35
  %arraydecay40 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 3, i64 0, !dbg !739
  %call41 = tail call i8* @strncpy(i8* %arraydecay40, i8* %sptr.addr.0, i64 63) #9, !dbg !739
  %arrayidx43 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 3, i64 63, !dbg !741
  store i8 0, i8* %arrayidx43, align 1, !dbg !741, !tbaa !601
  %flags44 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0, !dbg !742
  %11 = load i32* %flags44, align 4, !dbg !742, !tbaa !600
  %or45 = or i32 %11, 4, !dbg !742
  store i32 %or45, i32* %flags44, align 4, !dbg !742, !tbaa !600
  br label %return, !dbg !743

sw.bb47:                                          ; preds = %for.end
  %12 = load i8* %sptr.addr.0, align 1, !dbg !744, !tbaa !601
  %cmp49 = icmp eq i8 %12, 45, !dbg !744
  br i1 %cmp49, label %return, label %if.then51, !dbg !744

if.then51:                                        ; preds = %sw.bb47
  %flags52 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0, !dbg !745
  %13 = load i32* %flags52, align 4, !dbg !745, !tbaa !600
  %and53 = and i32 %13, 8, !dbg !745
  %tobool54 = icmp eq i32 %and53, 0, !dbg !745
  %arraydecay56 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0, !dbg !747
  br i1 %tobool54, label %if.else, label %if.then55, !dbg !745

if.then55:                                        ; preds = %if.then51
  %call57 = tail call i64 @strlen(i8* %arraydecay56) #10, !dbg !747
  %conv58 = trunc i64 %call57 to i32, !dbg !747
  tail call void @llvm.dbg.value(metadata !{i32 %conv58}, i64 0, metadata !311), !dbg !747
  %cmp59 = icmp slt i32 %conv58, 126, !dbg !749
  br i1 %cmp59, label %if.then61, label %if.end76, !dbg !749

if.then61:                                        ; preds = %if.then55
  %sub64 = sub i64 127, %call57, !dbg !750
  %sext = shl i64 %sub64, 32, !dbg !750
  %conv65 = ashr exact i64 %sext, 32, !dbg !750
  %call66 = tail call i8* @strncat(i8* %arraydecay56, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0), i64 %conv65) #9, !dbg !750
  %sub69 = sub i64 126, %call57, !dbg !752
  %sext170 = shl i64 %sub69, 32, !dbg !752
  %conv70 = ashr exact i64 %sext170, 32, !dbg !752
  %call71 = tail call i8* @strncat(i8* %arraydecay56, i8* %sptr.addr.0, i64 %conv70) #9, !dbg !752
  br label %if.end76, !dbg !753

if.else:                                          ; preds = %if.then51
  %call75 = tail call i8* @strncpy(i8* %arraydecay56, i8* %sptr.addr.0, i64 127) #9, !dbg !754
  br label %if.end76

if.end76:                                         ; preds = %if.then55, %if.then61, %if.else
  %arrayidx78 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 127, !dbg !755
  store i8 0, i8* %arrayidx78, align 1, !dbg !755, !tbaa !601
  %14 = load i32* %flags52, align 4, !dbg !756, !tbaa !600
  %or80 = or i32 %14, 8, !dbg !756
  store i32 %or80, i32* %flags52, align 4, !dbg !756, !tbaa !600
  br label %return, !dbg !757

sw.bb82:                                          ; preds = %for.end
  %call83 = tail call i32 @IsInt(i8* %sptr.addr.0) #9, !dbg !758
  %tobool84 = icmp eq i32 %call83, 0, !dbg !758
  br i1 %tobool84, label %if.then85, label %if.end86, !dbg !758

if.then85:                                        ; preds = %sw.bb82
  store i32 5, i32* @squid_errno, align 4, !dbg !759, !tbaa !600
  br label %return, !dbg !759

if.end86:                                         ; preds = %sw.bb82
  %call87 = tail call i32 @atoi(i8* %sptr.addr.0) #10, !dbg !761
  %start = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 6, !dbg !761
  store i32 %call87, i32* %start, align 4, !dbg !761, !tbaa !600
  %cmp89 = icmp eq i32 %call87, 0, !dbg !762
  br i1 %cmp89, label %return, label %if.then91, !dbg !762

if.then91:                                        ; preds = %if.end86
  %flags92 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0, !dbg !762
  %15 = load i32* %flags92, align 4, !dbg !762, !tbaa !600
  %or93 = or i32 %15, 16, !dbg !762
  store i32 %or93, i32* %flags92, align 4, !dbg !762, !tbaa !600
  br label %return, !dbg !762

sw.bb95:                                          ; preds = %for.end
  %call96 = tail call i32 @IsInt(i8* %sptr.addr.0) #9, !dbg !763
  %tobool97 = icmp eq i32 %call96, 0, !dbg !763
  br i1 %tobool97, label %if.then98, label %if.end99, !dbg !763

if.then98:                                        ; preds = %sw.bb95
  store i32 5, i32* @squid_errno, align 4, !dbg !764, !tbaa !600
  br label %return, !dbg !764

if.end99:                                         ; preds = %sw.bb95
  %call100 = tail call i32 @atoi(i8* %sptr.addr.0) #10, !dbg !766
  %stop = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 7, !dbg !766
  store i32 %call100, i32* %stop, align 4, !dbg !766, !tbaa !600
  %cmp102 = icmp eq i32 %call100, 0, !dbg !767
  br i1 %cmp102, label %return, label %if.then104, !dbg !767

if.then104:                                       ; preds = %if.end99
  %flags105 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0, !dbg !767
  %16 = load i32* %flags105, align 4, !dbg !767, !tbaa !600
  %or106 = or i32 %16, 32, !dbg !767
  store i32 %or106, i32* %flags105, align 4, !dbg !767, !tbaa !600
  br label %return, !dbg !767

sw.bb108:                                         ; preds = %for.end
  %call109 = tail call i32 @IsInt(i8* %sptr.addr.0) #9, !dbg !768
  %tobool110 = icmp eq i32 %call109, 0, !dbg !768
  br i1 %tobool110, label %if.then111, label %if.end112, !dbg !768

if.then111:                                       ; preds = %sw.bb108
  store i32 5, i32* @squid_errno, align 4, !dbg !769, !tbaa !600
  br label %return, !dbg !769

if.end112:                                        ; preds = %sw.bb108
  %call113 = tail call i32 @atoi(i8* %sptr.addr.0) #10, !dbg !771
  %olen = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 8, !dbg !771
  store i32 %call113, i32* %olen, align 4, !dbg !771, !tbaa !600
  %cmp115 = icmp eq i32 %call113, 0, !dbg !772
  br i1 %cmp115, label %return, label %if.then117, !dbg !772

if.then117:                                       ; preds = %if.end112
  %flags118 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0, !dbg !772
  %17 = load i32* %flags118, align 4, !dbg !772, !tbaa !600
  %or119 = or i32 %17, 256, !dbg !772
  store i32 %or119, i32* %flags118, align 4, !dbg !772, !tbaa !600
  br label %return, !dbg !772

sw.default:                                       ; preds = %for.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0), i32 %flag) #9, !dbg !773
  br label %return, !dbg !774

return:                                           ; preds = %sw.default, %if.then18, %if.then27, %if.then39, %if.end76, %if.then91, %if.then104, %if.then117, %if.end112, %if.end99, %if.end86, %sw.bb47, %sw.bb35, %sw.bb23, %sw.bb, %entry, %if.then111, %if.then98, %if.then85
  %retval.0 = phi i32 [ 0, %if.then111 ], [ 0, %if.then98 ], [ 0, %if.then85 ], [ 1, %entry ], [ 1, %sw.bb ], [ 1, %sw.bb23 ], [ 1, %sw.bb35 ], [ 1, %sw.bb47 ], [ 1, %if.end86 ], [ 1, %if.end99 ], [ 1, %if.end112 ], [ 1, %if.then117 ], [ 1, %if.then104 ], [ 1, %if.then91 ], [ 1, %if.end76 ], [ 1, %if.then39 ], [ 1, %if.then27 ], [ 1, %if.then18 ], [ 1, %sw.default ]
  ret i32 %retval.0, !dbg !775
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize
declare i8* @strncat(i8*, i8* nocapture, i64) #3

; Function Attrs: optsize
declare i32 @IsInt(i8*) #2

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @SeqinfoCopy(%struct.seqinfo_s* %sq1, %struct.seqinfo_s* nocapture %sq2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.seqinfo_s* %sq1}, i64 0, metadata !317), !dbg !776
  tail call void @llvm.dbg.value(metadata !{%struct.seqinfo_s* %sq2}, i64 0, metadata !318), !dbg !776
  %flags = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 0, !dbg !777
  %0 = load i32* %flags, align 4, !dbg !777, !tbaa !600
  %flags1 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 0, !dbg !777
  store i32 %0, i32* %flags1, align 4, !dbg !777, !tbaa !600
  %1 = load i32* %flags, align 4, !dbg !778, !tbaa !600
  %and = and i32 %1, 1, !dbg !778
  %tobool = icmp eq i32 %and, 0, !dbg !778
  br i1 %tobool, label %if.end, label %if.then, !dbg !778

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 1, i64 0, !dbg !778
  %arraydecay4 = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 1, i64 0, !dbg !778
  %call = tail call i8* @strcpy(i8* %arraydecay, i8* %arraydecay4) #9, !dbg !778
  %.pre = load i32* %flags, align 4, !dbg !779, !tbaa !600
  br label %if.end, !dbg !778

if.end:                                           ; preds = %entry, %if.then
  %2 = phi i32 [ %1, %entry ], [ %.pre, %if.then ]
  %and6 = and i32 %2, 2, !dbg !779
  %tobool7 = icmp eq i32 %and6, 0, !dbg !779
  br i1 %tobool7, label %if.end13, label %if.then8, !dbg !779

if.then8:                                         ; preds = %if.end
  %arraydecay9 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 2, i64 0, !dbg !779
  %arraydecay11 = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 2, i64 0, !dbg !779
  %call12 = tail call i8* @strcpy(i8* %arraydecay9, i8* %arraydecay11) #9, !dbg !779
  %.pre109 = load i32* %flags, align 4, !dbg !780, !tbaa !600
  br label %if.end13, !dbg !779

if.end13:                                         ; preds = %if.end, %if.then8
  %3 = phi i32 [ %2, %if.end ], [ %.pre109, %if.then8 ]
  %and15 = and i32 %3, 4, !dbg !780
  %tobool16 = icmp eq i32 %and15, 0, !dbg !780
  br i1 %tobool16, label %if.end22, label %if.then17, !dbg !780

if.then17:                                        ; preds = %if.end13
  %arraydecay18 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 3, i64 0, !dbg !780
  %arraydecay20 = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 3, i64 0, !dbg !780
  %call21 = tail call i8* @strcpy(i8* %arraydecay18, i8* %arraydecay20) #9, !dbg !780
  %.pre110 = load i32* %flags, align 4, !dbg !781, !tbaa !600
  br label %if.end22, !dbg !780

if.end22:                                         ; preds = %if.end13, %if.then17
  %4 = phi i32 [ %3, %if.end13 ], [ %.pre110, %if.then17 ]
  %and24 = and i32 %4, 8, !dbg !781
  %tobool25 = icmp eq i32 %and24, 0, !dbg !781
  br i1 %tobool25, label %if.end31, label %if.then26, !dbg !781

if.then26:                                        ; preds = %if.end22
  %arraydecay27 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 4, i64 0, !dbg !781
  %arraydecay29 = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 4, i64 0, !dbg !781
  %call30 = tail call i8* @strcpy(i8* %arraydecay27, i8* %arraydecay29) #9, !dbg !781
  %.pre111 = load i32* %flags, align 4, !dbg !782, !tbaa !600
  br label %if.end31, !dbg !781

if.end31:                                         ; preds = %if.end22, %if.then26
  %5 = phi i32 [ %4, %if.end22 ], [ %.pre111, %if.then26 ]
  %and33 = and i32 %5, 64, !dbg !782
  %tobool34 = icmp eq i32 %and33, 0, !dbg !782
  br i1 %tobool34, label %if.end37, label %if.then35, !dbg !782

if.then35:                                        ; preds = %if.end31
  %len = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 5, !dbg !782
  %6 = load i32* %len, align 4, !dbg !782, !tbaa !600
  %len36 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 5, !dbg !782
  store i32 %6, i32* %len36, align 4, !dbg !782, !tbaa !600
  %.pre112 = load i32* %flags, align 4, !dbg !783, !tbaa !600
  br label %if.end37, !dbg !782

if.end37:                                         ; preds = %if.end31, %if.then35
  %7 = phi i32 [ %5, %if.end31 ], [ %.pre112, %if.then35 ]
  %and39 = and i32 %7, 16, !dbg !783
  %tobool40 = icmp eq i32 %and39, 0, !dbg !783
  br i1 %tobool40, label %if.end43, label %if.then41, !dbg !783

if.then41:                                        ; preds = %if.end37
  %start = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 6, !dbg !783
  %8 = load i32* %start, align 4, !dbg !783, !tbaa !600
  %start42 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 6, !dbg !783
  store i32 %8, i32* %start42, align 4, !dbg !783, !tbaa !600
  %.pre113 = load i32* %flags, align 4, !dbg !784, !tbaa !600
  br label %if.end43, !dbg !783

if.end43:                                         ; preds = %if.end37, %if.then41
  %9 = phi i32 [ %7, %if.end37 ], [ %.pre113, %if.then41 ]
  %and45 = and i32 %9, 32, !dbg !784
  %tobool46 = icmp eq i32 %and45, 0, !dbg !784
  br i1 %tobool46, label %if.end49, label %if.then47, !dbg !784

if.then47:                                        ; preds = %if.end43
  %stop = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 7, !dbg !784
  %10 = load i32* %stop, align 4, !dbg !784, !tbaa !600
  %stop48 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 7, !dbg !784
  store i32 %10, i32* %stop48, align 4, !dbg !784, !tbaa !600
  %.pre114 = load i32* %flags, align 4, !dbg !785, !tbaa !600
  br label %if.end49, !dbg !784

if.end49:                                         ; preds = %if.end43, %if.then47
  %11 = phi i32 [ %9, %if.end43 ], [ %.pre114, %if.then47 ]
  %and51 = and i32 %11, 256, !dbg !785
  %tobool52 = icmp eq i32 %and51, 0, !dbg !785
  br i1 %tobool52, label %if.end55, label %if.then53, !dbg !785

if.then53:                                        ; preds = %if.end49
  %olen = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 8, !dbg !785
  %12 = load i32* %olen, align 4, !dbg !785, !tbaa !600
  %olen54 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 8, !dbg !785
  store i32 %12, i32* %olen54, align 4, !dbg !785, !tbaa !600
  %.pre115 = load i32* %flags, align 4, !dbg !786, !tbaa !600
  br label %if.end55, !dbg !785

if.end55:                                         ; preds = %if.end49, %if.then53
  %13 = phi i32 [ %11, %if.end49 ], [ %.pre115, %if.then53 ]
  %and57 = and i32 %13, 128, !dbg !786
  %tobool58 = icmp eq i32 %and57, 0, !dbg !786
  br i1 %tobool58, label %if.end61, label %if.then59, !dbg !786

if.then59:                                        ; preds = %if.end55
  %type = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 9, !dbg !786
  %14 = load i32* %type, align 4, !dbg !786, !tbaa !600
  %type60 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 9, !dbg !786
  store i32 %14, i32* %type60, align 4, !dbg !786, !tbaa !600
  %.pre116 = load i32* %flags, align 4, !dbg !787, !tbaa !600
  br label %if.end61, !dbg !786

if.end61:                                         ; preds = %if.end55, %if.then59
  %15 = phi i32 [ %13, %if.end55 ], [ %.pre116, %if.then59 ]
  %and63 = and i32 %15, 512, !dbg !787
  %tobool64 = icmp eq i32 %and63, 0, !dbg !787
  br i1 %tobool64, label %if.end68, label %if.then65, !dbg !787

if.then65:                                        ; preds = %if.end61
  %ss = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 10, !dbg !787
  %16 = load i8** %ss, align 8, !dbg !787, !tbaa !612
  %call66 = tail call i8* @Strdup(i8* %16) #9, !dbg !787
  %ss67 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 10, !dbg !787
  store i8* %call66, i8** %ss67, align 8, !dbg !787, !tbaa !612
  %.pre117 = load i32* %flags, align 4, !dbg !788, !tbaa !600
  br label %if.end68, !dbg !787

if.end68:                                         ; preds = %if.end61, %if.then65
  %17 = phi i32 [ %15, %if.end61 ], [ %.pre117, %if.then65 ]
  %and70 = and i32 %17, 1024, !dbg !788
  %tobool71 = icmp eq i32 %and70, 0, !dbg !788
  br i1 %tobool71, label %if.end75, label %if.then72, !dbg !788

if.then72:                                        ; preds = %if.end68
  %sa = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 11, !dbg !788
  %18 = load i8** %sa, align 8, !dbg !788, !tbaa !612
  %call73 = tail call i8* @Strdup(i8* %18) #9, !dbg !788
  %sa74 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 11, !dbg !788
  store i8* %call73, i8** %sa74, align 8, !dbg !788, !tbaa !612
  br label %if.end75, !dbg !788

if.end75:                                         ; preds = %if.end68, %if.then72
  ret void, !dbg !789
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: optsize
declare i8* @Strdup(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @ToDNA(i8* nocapture %seq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %seq}, i64 0, metadata !323), !dbg !790
  br label %for.cond, !dbg !791

for.cond:                                         ; preds = %for.inc, %entry
  %seq.addr.0 = phi i8* [ %seq, %entry ], [ %incdec.ptr, %for.inc ]
  %0 = load i8* %seq.addr.0, align 1, !dbg !791, !tbaa !601
  switch i8 %0, label %for.inc [
    i8 0, label %for.end
    i8 85, label %if.then
    i8 117, label %if.then8
  ], !dbg !791

if.then:                                          ; preds = %for.cond
  store i8 84, i8* %seq.addr.0, align 1, !dbg !793, !tbaa !601
  br label %for.inc, !dbg !793

if.then8:                                         ; preds = %for.cond
  store i8 116, i8* %seq.addr.0, align 1, !dbg !795, !tbaa !601
  br label %for.inc, !dbg !795

for.inc:                                          ; preds = %for.cond, %if.then, %if.then8
  %incdec.ptr = getelementptr inbounds i8* %seq.addr.0, i64 1, !dbg !791
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !323), !dbg !791
  br label %for.cond, !dbg !791

for.end:                                          ; preds = %for.cond
  ret void, !dbg !796
}

; Function Attrs: nounwind optsize uwtable
define void @ToRNA(i8* nocapture %seq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %seq}, i64 0, metadata !326), !dbg !797
  br label %for.cond, !dbg !798

for.cond:                                         ; preds = %for.inc, %entry
  %seq.addr.0 = phi i8* [ %seq, %entry ], [ %incdec.ptr, %for.inc ]
  %0 = load i8* %seq.addr.0, align 1, !dbg !798, !tbaa !601
  switch i8 %0, label %for.inc [
    i8 0, label %for.end
    i8 84, label %if.then
    i8 116, label %if.then8
  ], !dbg !798

if.then:                                          ; preds = %for.cond
  store i8 85, i8* %seq.addr.0, align 1, !dbg !800, !tbaa !601
  br label %for.inc, !dbg !800

if.then8:                                         ; preds = %for.cond
  store i8 117, i8* %seq.addr.0, align 1, !dbg !802, !tbaa !601
  br label %for.inc, !dbg !802

for.inc:                                          ; preds = %for.cond, %if.then, %if.then8
  %incdec.ptr = getelementptr inbounds i8* %seq.addr.0, i64 1, !dbg !798
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !326), !dbg !798
  br label %for.cond, !dbg !798

for.end:                                          ; preds = %for.cond
  ret void, !dbg !803
}

; Function Attrs: nounwind optsize uwtable
define void @ToIUPAC(i8* nocapture %seq, i32 %is_aseq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %seq}, i64 0, metadata !331), !dbg !804
  tail call void @llvm.dbg.value(metadata !{i32 %is_aseq}, i64 0, metadata !332), !dbg !804
  %tobool = icmp eq i32 %is_aseq, 0, !dbg !805
  %0 = load i8* %seq, align 1, !dbg !806, !tbaa !601
  %cmp2656 = icmp eq i8 %0, 0, !dbg !806
  br i1 %tobool, label %for.cond24.preheader, label %for.cond.preheader, !dbg !805

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp2656, label %if.end38, label %for.body, !dbg !809

for.cond24.preheader:                             ; preds = %entry
  br i1 %cmp2656, label %if.end38, label %for.body28, !dbg !806

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %1 = phi i8 [ %2, %for.inc ], [ %0, %for.cond.preheader ]
  %seq.addr.060 = phi i8* [ %incdec.ptr, %for.inc ], [ %seq, %for.cond.preheader ]
  %conv = sext i8 %1 to i32, !dbg !809
  %memchr51 = tail call i8* @memchr(i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0), i32 %conv, i64 33), !dbg !812
  %cmp3 = icmp eq i8* %memchr51, null, !dbg !812
  br i1 %cmp3, label %switch.early.test, label %for.inc

switch.early.test:                                ; preds = %for.body
  switch i8 %1, label %if.then23 [
    i8 126, label %for.inc
    i8 95, label %for.inc
    i8 46, label %for.inc
    i8 45, label %for.inc
    i8 32, label %for.inc
  ], !dbg !812

if.then23:                                        ; preds = %switch.early.test
  store i8 78, i8* %seq.addr.060, align 1, !dbg !812, !tbaa !601
  br label %for.inc, !dbg !812

for.inc:                                          ; preds = %for.body, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %if.then23
  %incdec.ptr = getelementptr inbounds i8* %seq.addr.060, i64 1, !dbg !809
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !331), !dbg !809
  %2 = load i8* %incdec.ptr, align 1, !dbg !809, !tbaa !601
  %cmp = icmp eq i8 %2, 0, !dbg !809
  br i1 %cmp, label %if.end38, label %for.body, !dbg !809

for.body28:                                       ; preds = %for.cond24.preheader, %for.inc35
  %3 = phi i8 [ %4, %for.inc35 ], [ %0, %for.cond24.preheader ]
  %seq.addr.157 = phi i8* [ %incdec.ptr36, %for.inc35 ], [ %seq, %for.cond24.preheader ]
  %conv25 = sext i8 %3 to i32, !dbg !806
  %memchr = tail call i8* @memchr(i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0), i32 %conv25, i64 33), !dbg !813
  %cmp31 = icmp eq i8* %memchr, null, !dbg !813
  br i1 %cmp31, label %if.then33, label %for.inc35, !dbg !813

if.then33:                                        ; preds = %for.body28
  store i8 78, i8* %seq.addr.157, align 1, !dbg !813, !tbaa !601
  br label %for.inc35, !dbg !813

for.inc35:                                        ; preds = %for.body28, %if.then33
  %incdec.ptr36 = getelementptr inbounds i8* %seq.addr.157, i64 1, !dbg !806
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr36}, i64 0, metadata !331), !dbg !806
  %4 = load i8* %incdec.ptr36, align 1, !dbg !806, !tbaa !601
  %cmp26 = icmp eq i8 %4, 0, !dbg !806
  br i1 %cmp26, label %if.end38, label %for.body28, !dbg !806

if.end38:                                         ; preds = %for.cond.preheader, %for.inc, %for.cond24.preheader, %for.inc35
  ret void, !dbg !814
}

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind optsize uwtable
define i32 @ReadSeq(%struct.ReadSeqVars* %V, i32 %format, i8** nocapture %ret_seq, %struct.seqinfo_s* %sqinfo) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %V}, i64 0, metadata !337), !dbg !815
  tail call void @llvm.dbg.value(metadata !{i32 %format}, i64 0, metadata !338), !dbg !815
  tail call void @llvm.dbg.value(metadata !{i8** %ret_seq}, i64 0, metadata !339), !dbg !815
  tail call void @llvm.dbg.value(metadata !{%struct.seqinfo_s* %sqinfo}, i64 0, metadata !340), !dbg !815
  store i32 0, i32* @squid_errno, align 4, !dbg !816, !tbaa !600
  %format1 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 20, !dbg !817
  %0 = load i32* %format1, align 4, !dbg !817, !tbaa !600
  %cmp = icmp sgt i32 %0, 100, !dbg !817
  br i1 %cmp, label %if.then, label %if.else, !dbg !817

if.then:                                          ; preds = %entry
  %msa = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 23, !dbg !818
  %1 = load %struct.msa_struct** %msa, align 8, !dbg !818, !tbaa !612
  %lastidx = getelementptr inbounds %struct.msa_struct* %1, i64 0, i32 45, !dbg !818
  %2 = load i32* %lastidx, align 4, !dbg !818, !tbaa !600
  %nseq = getelementptr inbounds %struct.msa_struct* %1, i64 0, i32 4, !dbg !818
  %3 = load i32* %nseq, align 4, !dbg !818, !tbaa !600
  %cmp3 = icmp slt i32 %2, %3, !dbg !818
  br i1 %cmp3, label %if.end11, label %if.then4, !dbg !818

if.then4:                                         ; preds = %if.then
  tail call void @MSAFree(%struct.msa_struct* %1) #9, !dbg !820
  %afp = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 24, !dbg !822
  %4 = load %struct.msafile_struct** %afp, align 8, !dbg !822, !tbaa !612
  %call = tail call %struct.msa_struct* @MSAFileRead(%struct.msafile_struct* %4) #9, !dbg !822
  store %struct.msa_struct* %call, %struct.msa_struct** %msa, align 8, !dbg !822, !tbaa !612
  %cmp7 = icmp eq %struct.msa_struct* %call, null, !dbg !822
  br i1 %cmp7, label %return, label %if.end, !dbg !822

if.end:                                           ; preds = %if.then4
  %lastidx10 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 45, !dbg !823
  store i32 0, i32* %lastidx10, align 4, !dbg !823, !tbaa !600
  br label %if.end11, !dbg !824

if.end11:                                         ; preds = %if.then, %if.end
  %5 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  %6 = phi %struct.msa_struct* [ %1, %if.then ], [ %call, %if.end ]
  %idxprom = sext i32 %5 to i64, !dbg !825
  %aseq = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 0, !dbg !825
  %7 = load i8*** %aseq, align 8, !dbg !825, !tbaa !612
  %arrayidx = getelementptr inbounds i8** %7, i64 %idxprom, !dbg !825
  %8 = load i8** %arrayidx, align 8, !dbg !825, !tbaa !612
  %alen = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 3, !dbg !825
  %9 = load i32* %alen, align 4, !dbg !825, !tbaa !600
  %seq = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15, !dbg !825
  %call22 = tail call i32 @MakeDealignedString(i8* %8, i32 %9, i8* %8, i8** %seq) #9, !dbg !825
  %10 = load i8** %seq, align 8, !dbg !826, !tbaa !612
  %call24 = tail call i64 @strlen(i8* %10) #10, !dbg !826
  %conv = trunc i64 %call24 to i32, !dbg !826
  %seqlen = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 18, !dbg !826
  store i32 %conv, i32* %seqlen, align 4, !dbg !826, !tbaa !600
  %flags = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0, !dbg !827
  store i32 0, i32* %flags, align 4, !dbg !827, !tbaa !600
  %11 = load %struct.msa_struct** %msa, align 8, !dbg !828, !tbaa !612
  %lastidx26 = getelementptr inbounds %struct.msa_struct* %11, i64 0, i32 45, !dbg !828
  %12 = load i32* %lastidx26, align 4, !dbg !828, !tbaa !600
  %idxprom27 = sext i32 %12 to i64, !dbg !828
  %sqname = getelementptr inbounds %struct.msa_struct* %11, i64 0, i32 1, !dbg !828
  %13 = load i8*** %sqname, align 8, !dbg !828, !tbaa !612
  %arrayidx29 = getelementptr inbounds i8** %13, i64 %idxprom27, !dbg !828
  %14 = load i8** %arrayidx29, align 8, !dbg !828, !tbaa !612
  %cmp30 = icmp eq i8* %14, null, !dbg !828
  br i1 %cmp30, label %if.end40, label %if.then32, !dbg !828

if.then32:                                        ; preds = %if.end11
  %call39 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %sqinfo, i8* %14, i32 1) #8, !dbg !829
  %.pre = load %struct.msa_struct** %msa, align 8, !dbg !830, !tbaa !612
  br label %if.end40, !dbg !829

if.end40:                                         ; preds = %if.end11, %if.then32
  %15 = phi %struct.msa_struct* [ %11, %if.end11 ], [ %.pre, %if.then32 ]
  %sqacc = getelementptr inbounds %struct.msa_struct* %15, i64 0, i32 14, !dbg !830
  %16 = load i8*** %sqacc, align 8, !dbg !830, !tbaa !612
  %cmp42 = icmp eq i8** %16, null, !dbg !830
  br i1 %cmp42, label %if.end60, label %land.lhs.true, !dbg !830

land.lhs.true:                                    ; preds = %if.end40
  %lastidx45 = getelementptr inbounds %struct.msa_struct* %15, i64 0, i32 45, !dbg !830
  %17 = load i32* %lastidx45, align 4, !dbg !830, !tbaa !600
  %idxprom46 = sext i32 %17 to i64, !dbg !830
  %arrayidx49 = getelementptr inbounds i8** %16, i64 %idxprom46, !dbg !830
  %18 = load i8** %arrayidx49, align 8, !dbg !830, !tbaa !612
  %cmp50 = icmp eq i8* %18, null, !dbg !830
  br i1 %cmp50, label %if.end60, label %if.then52, !dbg !830

if.then52:                                        ; preds = %land.lhs.true
  %call59 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %sqinfo, i8* %18, i32 4) #8, !dbg !831
  %.pre472 = load %struct.msa_struct** %msa, align 8, !dbg !832, !tbaa !612
  br label %if.end60, !dbg !831

if.end60:                                         ; preds = %land.lhs.true, %if.end40, %if.then52
  %19 = phi %struct.msa_struct* [ %15, %land.lhs.true ], [ %15, %if.end40 ], [ %.pre472, %if.then52 ]
  %sqdesc = getelementptr inbounds %struct.msa_struct* %19, i64 0, i32 15, !dbg !832
  %20 = load i8*** %sqdesc, align 8, !dbg !832, !tbaa !612
  %cmp62 = icmp eq i8** %20, null, !dbg !832
  br i1 %cmp62, label %if.end81, label %land.lhs.true64, !dbg !832

land.lhs.true64:                                  ; preds = %if.end60
  %lastidx66 = getelementptr inbounds %struct.msa_struct* %19, i64 0, i32 45, !dbg !832
  %21 = load i32* %lastidx66, align 4, !dbg !832, !tbaa !600
  %idxprom67 = sext i32 %21 to i64, !dbg !832
  %arrayidx70 = getelementptr inbounds i8** %20, i64 %idxprom67, !dbg !832
  %22 = load i8** %arrayidx70, align 8, !dbg !832, !tbaa !612
  %cmp71 = icmp eq i8* %22, null, !dbg !832
  br i1 %cmp71, label %if.end81, label %if.then73, !dbg !832

if.then73:                                        ; preds = %land.lhs.true64
  %call80 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %sqinfo, i8* %22, i32 8) #8, !dbg !833
  %.pre473 = load %struct.msa_struct** %msa, align 8, !dbg !834, !tbaa !612
  br label %if.end81, !dbg !833

if.end81:                                         ; preds = %land.lhs.true64, %if.end60, %if.then73
  %23 = phi %struct.msa_struct* [ %19, %land.lhs.true64 ], [ %19, %if.end60 ], [ %.pre473, %if.then73 ]
  %ss = getelementptr inbounds %struct.msa_struct* %23, i64 0, i32 16, !dbg !834
  %24 = load i8*** %ss, align 8, !dbg !834, !tbaa !612
  %cmp83 = icmp eq i8** %24, null, !dbg !834
  br i1 %cmp83, label %if.end112, label %land.lhs.true85, !dbg !834

land.lhs.true85:                                  ; preds = %if.end81
  %lastidx87 = getelementptr inbounds %struct.msa_struct* %23, i64 0, i32 45, !dbg !834
  %25 = load i32* %lastidx87, align 4, !dbg !834, !tbaa !600
  %idxprom88 = sext i32 %25 to i64, !dbg !834
  %arrayidx91 = getelementptr inbounds i8** %24, i64 %idxprom88, !dbg !834
  %26 = load i8** %arrayidx91, align 8, !dbg !834, !tbaa !612
  %cmp92 = icmp eq i8* %26, null, !dbg !834
  br i1 %cmp92, label %if.end112, label %if.then94, !dbg !834

if.then94:                                        ; preds = %land.lhs.true85
  %aseq99 = getelementptr inbounds %struct.msa_struct* %23, i64 0, i32 0, !dbg !835
  %27 = load i8*** %aseq99, align 8, !dbg !835, !tbaa !612
  %arrayidx100 = getelementptr inbounds i8** %27, i64 %idxprom88, !dbg !835
  %28 = load i8** %arrayidx100, align 8, !dbg !835, !tbaa !612
  %alen102 = getelementptr inbounds %struct.msa_struct* %23, i64 0, i32 3, !dbg !835
  %29 = load i32* %alen102, align 4, !dbg !835, !tbaa !600
  %ss109 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 10, !dbg !835
  %call110 = tail call i32 @MakeDealignedString(i8* %28, i32 %29, i8* %26, i8** %ss109) #9, !dbg !835
  %30 = load i32* %flags, align 4, !dbg !837, !tbaa !600
  %or = or i32 %30, 512, !dbg !837
  store i32 %or, i32* %flags, align 4, !dbg !837, !tbaa !600
  %.pre474 = load %struct.msa_struct** %msa, align 8, !dbg !838, !tbaa !612
  br label %if.end112, !dbg !839

if.end112:                                        ; preds = %land.lhs.true85, %if.end81, %if.then94
  %31 = phi %struct.msa_struct* [ %23, %land.lhs.true85 ], [ %23, %if.end81 ], [ %.pre474, %if.then94 ]
  %sa = getelementptr inbounds %struct.msa_struct* %31, i64 0, i32 17, !dbg !838
  %32 = load i8*** %sa, align 8, !dbg !838, !tbaa !612
  %cmp114 = icmp eq i8** %32, null, !dbg !838
  br i1 %cmp114, label %if.end144, label %land.lhs.true116, !dbg !838

land.lhs.true116:                                 ; preds = %if.end112
  %lastidx118 = getelementptr inbounds %struct.msa_struct* %31, i64 0, i32 45, !dbg !838
  %33 = load i32* %lastidx118, align 4, !dbg !838, !tbaa !600
  %idxprom119 = sext i32 %33 to i64, !dbg !838
  %arrayidx122 = getelementptr inbounds i8** %32, i64 %idxprom119, !dbg !838
  %34 = load i8** %arrayidx122, align 8, !dbg !838, !tbaa !612
  %cmp123 = icmp eq i8* %34, null, !dbg !838
  br i1 %cmp123, label %if.end144, label %if.then125, !dbg !838

if.then125:                                       ; preds = %land.lhs.true116
  %aseq130 = getelementptr inbounds %struct.msa_struct* %31, i64 0, i32 0, !dbg !840
  %35 = load i8*** %aseq130, align 8, !dbg !840, !tbaa !612
  %arrayidx131 = getelementptr inbounds i8** %35, i64 %idxprom119, !dbg !840
  %36 = load i8** %arrayidx131, align 8, !dbg !840, !tbaa !612
  %alen133 = getelementptr inbounds %struct.msa_struct* %31, i64 0, i32 3, !dbg !840
  %37 = load i32* %alen133, align 4, !dbg !840, !tbaa !600
  %sa140 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 11, !dbg !840
  %call141 = tail call i32 @MakeDealignedString(i8* %36, i32 %37, i8* %34, i8** %sa140) #9, !dbg !840
  %38 = load i32* %flags, align 4, !dbg !842, !tbaa !600
  %or143 = or i32 %38, 1024, !dbg !842
  store i32 %or143, i32* %flags, align 4, !dbg !842, !tbaa !600
  %.pre475 = load %struct.msa_struct** %msa, align 8, !dbg !843, !tbaa !612
  br label %if.end144, !dbg !844

if.end144:                                        ; preds = %if.end112, %land.lhs.true116, %if.then125
  %39 = phi %struct.msa_struct* [ %31, %land.lhs.true116 ], [ %.pre475, %if.then125 ], [ %31, %if.end112 ]
  %lastidx146 = getelementptr inbounds %struct.msa_struct* %39, i64 0, i32 45, !dbg !843
  %40 = load i32* %lastidx146, align 4, !dbg !843, !tbaa !600
  %inc = add nsw i32 %40, 1, !dbg !843
  store i32 %inc, i32* %lastidx146, align 4, !dbg !843, !tbaa !600
  br label %if.end192, !dbg !845

if.else:                                          ; preds = %entry
  %f = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 0, !dbg !846
  %41 = load %struct._IO_FILE** %f, align 8, !dbg !846, !tbaa !612
  %call147 = tail call i32 @feof(%struct._IO_FILE* %41) #9, !dbg !846
  %tobool = icmp eq i32 %call147, 0, !dbg !846
  br i1 %tobool, label %if.end149, label %return, !dbg !846

if.end149:                                        ; preds = %if.else
  %ssimode = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 5, !dbg !848
  %42 = load i32* %ssimode, align 4, !dbg !848, !tbaa !600
  %cmp150 = icmp eq i32 %42, -1, !dbg !848
  br i1 %cmp150, label %if.then152, label %if.else155, !dbg !848

if.then152:                                       ; preds = %if.end149
  %call153 = tail call noalias i8* @calloc(i64 501, i64 1) #9, !dbg !849
  %seq154 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15, !dbg !849
  store i8* %call153, i8** %seq154, align 8, !dbg !849, !tbaa !612
  %maxseq = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 19, !dbg !851
  store i32 500, i32* %maxseq, align 4, !dbg !851, !tbaa !600
  br label %if.end158, !dbg !852

if.else155:                                       ; preds = %if.end149
  %seq156 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15, !dbg !853
  store i8* null, i8** %seq156, align 8, !dbg !853, !tbaa !612
  %maxseq157 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 19, !dbg !855
  store i32 0, i32* %maxseq157, align 4, !dbg !855, !tbaa !600
  br label %if.end158

if.end158:                                        ; preds = %if.else155, %if.then152
  %43 = phi i8* [ null, %if.else155 ], [ %call153, %if.then152 ]
  %seqlen159 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 18, !dbg !856
  store i32 0, i32* %seqlen159, align 4, !dbg !856, !tbaa !600
  %sqinfo160 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 16, !dbg !857
  store %struct.seqinfo_s* %sqinfo, %struct.seqinfo_s** %sqinfo160, align 8, !dbg !857, !tbaa !612
  %flags162 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0, !dbg !858
  store i32 0, i32* %flags162, align 4, !dbg !858, !tbaa !600
  %44 = load i32* %format1, align 4, !dbg !859, !tbaa !600
  switch i32 %44, label %sw.default [
    i32 1, label %sw.bb
    i32 6, label %sw.bb164
    i32 2, label %sw.bb165
    i32 7, label %sw.bb166
    i32 4, label %sw.bb167
    i32 8, label %sw.bb168
    i32 12, label %sw.bb169
    i32 16, label %sw.bb170
    i32 5, label %do.body.preheader
  ], !dbg !859

do.body.preheader:                                ; preds = %if.end158
  %buf = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3, !dbg !860
  br label %do.body, !dbg !860

sw.bb:                                            ; preds = %if.end158
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %V}, i64 0, metadata !863) #6, !dbg !865
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !866
  %45 = load %struct._IO_FILE** %f, align 8, !dbg !868, !tbaa !612
  %call46.i = tail call i32 @feof(%struct._IO_FILE* %45) #9, !dbg !868
  %tobool47.i = icmp eq i32 %call46.i, 0, !dbg !868
  %buf.i = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3, !dbg !868
  br i1 %tobool47.i, label %lor.rhs.i, label %do.end.i, !dbg !868

lor.rhs.i:                                        ; preds = %sw.bb, %do.body.backedge.i
  %46 = load i8** %buf.i, align 8, !dbg !868, !tbaa !612
  %47 = load i8* %46, align 1, !dbg !868, !tbaa !601
  switch i8 %47, label %do.end.i [
    i8 59, label %do.body.backedge.i
    i8 0, label %do.body.backedge.i
  ]

do.body.backedge.i:                               ; preds = %lor.rhs.i, %lor.rhs.i
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !866
  %48 = load %struct._IO_FILE** %f, align 8, !dbg !868, !tbaa !612
  %call.i = tail call i32 @feof(%struct._IO_FILE* %48) #9, !dbg !868
  %tobool.i = icmp eq i32 %call.i, 0, !dbg !868
  br i1 %tobool.i, label %lor.rhs.i, label %do.end.i, !dbg !868

do.end.i:                                         ; preds = %sw.bb, %do.body.backedge.i, %lor.rhs.i
  %49 = load %struct._IO_FILE** %f, align 8, !dbg !869, !tbaa !612
  %call7.i = tail call i32 @feof(%struct._IO_FILE* %49) #9, !dbg !869
  %tobool8.i = icmp eq i32 %call7.i, 0, !dbg !869
  br i1 %tobool8.i, label %if.then.i, label %while.cond.preheader.i, !dbg !869

if.then.i:                                        ; preds = %do.end.i
  %50 = load i8** %buf.i, align 8, !dbg !870, !tbaa !612
  %call10.i = tail call i8* @strtok(i8* %50, i8* getelementptr inbounds ([4 x i8]* @.str114, i64 0, i64 0)) #9, !dbg !870
  tail call void @llvm.dbg.value(metadata !{i8* %call10.i}, i64 0, metadata !872) #6, !dbg !870
  %cmp11.i = icmp eq i8* %call10.i, null, !dbg !870
  br i1 %cmp11.i, label %if.end.i, label %if.then13.i, !dbg !870

if.then13.i:                                      ; preds = %if.then.i
  %51 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !873, !tbaa !612
  %call14.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %51, i8* %call10.i, i32 1) #9, !dbg !873
  br label %if.end.i, !dbg !873

if.end.i:                                         ; preds = %if.then13.i, %if.then.i
  tail call fastcc void @readLoop(i32 0, i32 (i8*, i32*)* @endIG, %struct.ReadSeqVars* %V) #9, !dbg !874
  br label %while.cond.preheader.i, !dbg !875

while.cond.preheader.i:                           ; preds = %if.end.i, %do.end.i
  %52 = load %struct._IO_FILE** %f, align 8, !dbg !876, !tbaa !612
  %call1744.i = tail call i32 @feof(%struct._IO_FILE* %52) #9, !dbg !876
  %tobool1845.i = icmp eq i32 %call1744.i, 0, !dbg !876
  br i1 %tobool1845.i, label %lor.rhs19.i, label %sw.epilog, !dbg !876

lor.rhs19.i:                                      ; preds = %while.cond.preheader.i, %while.body.i
  %53 = load i8** %buf.i, align 8, !dbg !876, !tbaa !612
  %54 = load i8* %53, align 1, !dbg !876, !tbaa !601
  %phitmp43.i = icmp eq i8 %54, 59
  br i1 %phitmp43.i, label %sw.epilog, label %while.body.i

while.body.i:                                     ; preds = %lor.rhs19.i
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !877
  %55 = load %struct._IO_FILE** %f, align 8, !dbg !876, !tbaa !612
  %call17.i = tail call i32 @feof(%struct._IO_FILE* %55) #9, !dbg !876
  %tobool18.i = icmp eq i32 %call17.i, 0, !dbg !876
  br i1 %tobool18.i, label %lor.rhs19.i, label %sw.epilog, !dbg !876

sw.bb164:                                         ; preds = %if.end158
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %V}, i64 0, metadata !878) #6, !dbg !880
  %buf.i283 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3, !dbg !881
  %56 = load %struct._IO_FILE** %f, align 8, !dbg !881, !tbaa !612
  %call41.i = tail call i32 @feof(%struct._IO_FILE* %56) #9, !dbg !881
  %tobool42.i = icmp eq i32 %call41.i, 0, !dbg !881
  br i1 %tobool42.i, label %land.rhs.i, label %while.end.i, !dbg !881

land.rhs.i:                                       ; preds = %sw.bb164, %if.end12.i
  %57 = load i8** %buf.i283, align 8, !dbg !881, !tbaa !612
  %58 = load i8* %57, align 1, !dbg !881, !tbaa !601
  %cmp.i = icmp eq i8 %58, 59, !dbg !881
  br i1 %cmp.i, label %while.body.i286, label %while.end.i

while.body.i286:                                  ; preds = %land.rhs.i
  %call3.i = tail call i32 @strncmp(i8* %57, i8* getelementptr inbounds ([15 x i8]* @.str138, i64 0, i64 0), i64 14) #10, !dbg !882
  %cmp4.i = icmp eq i32 %call3.i, 0, !dbg !882
  br i1 %cmp4.i, label %if.then.i288, label %if.end12.i, !dbg !882

if.then.i288:                                     ; preds = %while.body.i286
  %add.ptr.i = getelementptr inbounds i8* %57, i64 16, !dbg !884
  %call7.i287 = tail call i8* @strtok(i8* %add.ptr.i, i8* getelementptr inbounds ([5 x i8]* @.str139, i64 0, i64 0)) #9, !dbg !884
  tail call void @llvm.dbg.value(metadata !{i8* %call7.i287}, i64 0, metadata !886) #6, !dbg !884
  %cmp8.i = icmp eq i8* %call7.i287, null, !dbg !884
  br i1 %cmp8.i, label %if.end12.i, label %if.then10.i, !dbg !884

if.then10.i:                                      ; preds = %if.then.i288
  %59 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !887, !tbaa !612
  %call11.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %59, i8* %call7.i287, i32 1) #9, !dbg !887
  br label %if.end12.i, !dbg !887

if.end12.i:                                       ; preds = %if.then10.i, %if.then.i288, %while.body.i286
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !888
  %60 = load %struct._IO_FILE** %f, align 8, !dbg !881, !tbaa !612
  %call.i289 = tail call i32 @feof(%struct._IO_FILE* %60) #9, !dbg !881
  %tobool.i290 = icmp eq i32 %call.i289, 0, !dbg !881
  br i1 %tobool.i290, label %land.rhs.i, label %while.end.i, !dbg !881

while.end.i:                                      ; preds = %if.end12.i, %land.rhs.i, %sw.bb164
  %61 = load %struct._IO_FILE** %f, align 8, !dbg !889, !tbaa !612
  %call14.i291 = tail call i32 @feof(%struct._IO_FILE* %61) #9, !dbg !889
  %tobool15.i = icmp eq i32 %call14.i291, 0, !dbg !889
  br i1 %tobool15.i, label %if.then16.i, label %while.cond18.preheader.i, !dbg !889

if.then16.i:                                      ; preds = %while.end.i
  tail call fastcc void @readLoop(i32 1, i32 (i8*, i32*)* @endStrider, %struct.ReadSeqVars* %V) #9, !dbg !890
  br label %while.cond18.preheader.i, !dbg !890

while.cond18.preheader.i:                         ; preds = %if.then16.i, %while.end.i
  %62 = load %struct._IO_FILE** %f, align 8, !dbg !891, !tbaa !612
  %call2039.i = tail call i32 @feof(%struct._IO_FILE* %62) #9, !dbg !891
  %tobool2140.i = icmp eq i32 %call2039.i, 0, !dbg !891
  br i1 %tobool2140.i, label %land.rhs22.i, label %sw.epilog, !dbg !891

land.rhs22.i:                                     ; preds = %while.cond18.preheader.i, %while.body28.i
  %63 = load i8** %buf.i283, align 8, !dbg !891, !tbaa !612
  %64 = load i8* %63, align 1, !dbg !891, !tbaa !601
  %cmp25.i = icmp eq i8 %64, 59, !dbg !891
  br i1 %cmp25.i, label %sw.epilog, label %while.body28.i

while.body28.i:                                   ; preds = %land.rhs22.i
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !892
  %65 = load %struct._IO_FILE** %f, align 8, !dbg !891, !tbaa !612
  %call20.i = tail call i32 @feof(%struct._IO_FILE* %65) #9, !dbg !891
  %tobool21.i = icmp eq i32 %call20.i, 0, !dbg !891
  br i1 %tobool21.i, label %land.rhs22.i, label %sw.epilog, !dbg !891

sw.bb165:                                         ; preds = %if.end158
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %V}, i64 0, metadata !893) #6, !dbg !895
  %buf.i292 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3, !dbg !896
  %66 = load i8** %buf.i292, align 8, !dbg !896, !tbaa !612
  %call178.i = tail call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([6 x i8]* @.str132, i64 0, i64 0), i64 5) #10, !dbg !896
  %cmp179.i = icmp eq i32 %call178.i, 0, !dbg !896
  br i1 %cmp179.i, label %while.end.i296, label %while.body.i295, !dbg !896

while.body.i295:                                  ; preds = %sw.bb165, %while.body.i295
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !897
  %67 = load i8** %buf.i292, align 8, !dbg !896, !tbaa !612
  %call.i293 = tail call i32 @strncmp(i8* %67, i8* getelementptr inbounds ([6 x i8]* @.str132, i64 0, i64 0), i64 5) #10, !dbg !896
  %cmp.i294 = icmp eq i32 %call.i293, 0, !dbg !896
  br i1 %cmp.i294, label %while.end.i296, label %while.body.i295, !dbg !896

while.end.i296:                                   ; preds = %while.body.i295, %sw.bb165
  %68 = phi i8* [ %66, %sw.bb165 ], [ %67, %while.body.i295 ]
  %69 = load i32* %ssimode, align 4, !dbg !899, !tbaa !600
  %cmp1.i = icmp sgt i32 %69, -1, !dbg !899
  br i1 %cmp1.i, label %if.then.i297, label %if.end.i301, !dbg !899

if.then.i297:                                     ; preds = %while.end.i296
  %70 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 7, i32 0, !dbg !899
  %71 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 6, i32 0, !dbg !899
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 16, i32 8, i1 false) #6, !dbg !899, !tbaa.struct !900
  br label %if.end.i301, !dbg !899

if.end.i301:                                      ; preds = %if.then.i297, %while.end.i296
  %add.ptr.i298 = getelementptr inbounds i8* %68, i64 12, !dbg !902
  %call3.i299 = tail call i8* @strtok(i8* %add.ptr.i298, i8* getelementptr inbounds ([4 x i8]* @.str114, i64 0, i64 0)) #9, !dbg !902
  tail call void @llvm.dbg.value(metadata !{i8* %call3.i299}, i64 0, metadata !903) #6, !dbg !902
  %cmp4.i300 = icmp eq i8* %call3.i299, null, !dbg !902
  br i1 %cmp4.i300, label %while.cond8.preheader.i, label %if.then5.i, !dbg !902

if.then5.i:                                       ; preds = %if.end.i301
  %72 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !904, !tbaa !612
  %call6.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %72, i8* %call3.i299, i32 1) #9, !dbg !904
  br label %while.cond8.preheader.i, !dbg !904

while.cond8.preheader.i:                          ; preds = %if.then5.i, %if.end.i301
  %73 = load %struct._IO_FILE** %f, align 8, !dbg !905, !tbaa !612
  %call9174.i = tail call i32 @feof(%struct._IO_FILE* %73) #9, !dbg !905
  %lnot175.i = icmp eq i32 %call9174.i, 0, !dbg !905
  br i1 %lnot175.i, label %while.body10.i, label %while.end78.i, !dbg !905

while.body10.i:                                   ; preds = %while.cond8.preheader.i, %while.cond8.backedge.i
  %in_definition.0176.i = phi i32 [ %in_definition.0.be.i, %while.cond8.backedge.i ], [ 0, %while.cond8.preheader.i ]
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !906
  %74 = load %struct._IO_FILE** %f, align 8, !dbg !908, !tbaa !612
  %call12.i = tail call i32 @feof(%struct._IO_FILE* %74) #9, !dbg !908
  %tobool13.i = icmp eq i32 %call12.i, 0, !dbg !908
  br i1 %tobool13.i, label %land.lhs.true.i, label %if.else.i, !dbg !908

land.lhs.true.i:                                  ; preds = %while.body10.i
  %75 = load i8** %buf.i292, align 8, !dbg !908, !tbaa !612
  %strncmp162.i = tail call i32 @strncmp(i8* %75, i8* getelementptr inbounds ([11 x i8]* @.str133, i64 0, i64 0), i64 10) #6, !dbg !908
  %cmp163.i = icmp eq i32 %strncmp162.i, 0, !dbg !908
  br i1 %cmp163.i, label %if.then18.i, label %if.else.i, !dbg !908

if.then18.i:                                      ; preds = %land.lhs.true.i
  %add.ptr20.i = getelementptr inbounds i8* %75, i64 12, !dbg !909
  %call21.i = tail call i8* @strtok(i8* %add.ptr20.i, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0)) #9, !dbg !909
  tail call void @llvm.dbg.value(metadata !{i8* %call21.i}, i64 0, metadata !903) #6, !dbg !909
  %cmp22.i = icmp eq i8* %call21.i, null, !dbg !909
  br i1 %cmp22.i, label %while.cond8.backedge.i, label %if.then23.i, !dbg !909

if.then23.i:                                      ; preds = %if.then18.i
  %76 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !911, !tbaa !612
  %call25.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %76, i8* %call21.i, i32 8) #9, !dbg !911
  br label %while.cond8.backedge.i, !dbg !911

if.else.i:                                        ; preds = %land.lhs.true.i, %while.body10.i
  %77 = load %struct._IO_FILE** %f, align 8, !dbg !912, !tbaa !612
  %call28.i = tail call i32 @feof(%struct._IO_FILE* %77) #9, !dbg !912
  %tobool29.i = icmp eq i32 %call28.i, 0, !dbg !912
  br i1 %tobool29.i, label %land.lhs.true30.i, label %if.else44.i, !dbg !912

land.lhs.true30.i:                                ; preds = %if.else.i
  %78 = load i8** %buf.i292, align 8, !dbg !912, !tbaa !612
  %strncmp165.i = tail call i32 @strncmp(i8* %78, i8* getelementptr inbounds ([10 x i8]* @.str123, i64 0, i64 0), i64 9) #6, !dbg !912
  %cmp166.i = icmp eq i32 %strncmp165.i, 0, !dbg !912
  br i1 %cmp166.i, label %if.then35.i, label %if.else44.i, !dbg !912

if.then35.i:                                      ; preds = %land.lhs.true30.i
  %add.ptr37.i = getelementptr inbounds i8* %78, i64 12, !dbg !913
  %call38.i = tail call i8* @strtok(i8* %add.ptr37.i, i8* getelementptr inbounds ([4 x i8]* @.str114, i64 0, i64 0)) #9, !dbg !913
  tail call void @llvm.dbg.value(metadata !{i8* %call38.i}, i64 0, metadata !903) #6, !dbg !913
  %cmp39.i = icmp eq i8* %call38.i, null, !dbg !913
  br i1 %cmp39.i, label %while.cond8.backedge.i, label %if.then40.i, !dbg !913

if.then40.i:                                      ; preds = %if.then35.i
  %79 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !915, !tbaa !612
  %call42.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %79, i8* %call38.i, i32 4) #9, !dbg !915
  br label %while.cond8.backedge.i, !dbg !915

if.else44.i:                                      ; preds = %land.lhs.true30.i, %if.else.i
  %80 = load %struct._IO_FILE** %f, align 8, !dbg !916, !tbaa !612
  %call46.i304 = tail call i32 @feof(%struct._IO_FILE* %80) #9, !dbg !916
  %tobool47.i305 = icmp eq i32 %call46.i304, 0, !dbg !916
  %81 = load i8** %buf.i292, align 8, !dbg !916, !tbaa !612
  br i1 %tobool47.i305, label %land.lhs.true48.i, label %if.else62.i, !dbg !916

land.lhs.true48.i:                                ; preds = %if.else44.i
  %strncmp168.i = tail call i32 @strncmp(i8* %81, i8* getelementptr inbounds ([8 x i8]* @.str134, i64 0, i64 0), i64 7) #6, !dbg !916
  %cmp169.i = icmp eq i32 %strncmp168.i, 0, !dbg !916
  br i1 %cmp169.i, label %if.then53.i, label %if.else62.i, !dbg !916

if.then53.i:                                      ; preds = %land.lhs.true48.i
  %add.ptr55.i = getelementptr inbounds i8* %81, i64 12, !dbg !917
  %call56.i = tail call i8* @strtok(i8* %add.ptr55.i, i8* getelementptr inbounds ([4 x i8]* @.str114, i64 0, i64 0)) #9, !dbg !917
  tail call void @llvm.dbg.value(metadata !{i8* %call56.i}, i64 0, metadata !903) #6, !dbg !917
  %cmp57.i = icmp eq i8* %call56.i, null, !dbg !917
  br i1 %cmp57.i, label %while.cond8.backedge.i, label %if.then58.i, !dbg !917

if.then58.i:                                      ; preds = %if.then53.i
  %82 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !919, !tbaa !612
  %call60.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %82, i8* %call56.i, i32 2) #9, !dbg !919
  br label %while.cond8.backedge.i, !dbg !919

if.else62.i:                                      ; preds = %land.lhs.true48.i, %if.else44.i
  %call64.i = tail call i32 @strncmp(i8* %81, i8* getelementptr inbounds ([7 x i8]* @.str135, i64 0, i64 0), i64 6) #10, !dbg !920
  %cmp65.i = icmp eq i32 %call64.i, 0, !dbg !920
  br i1 %cmp65.i, label %while.end78.i, label %if.then66.i, !dbg !920

if.then66.i:                                      ; preds = %if.else62.i
  %tobool67.i = icmp eq i32 %in_definition.0176.i, 0, !dbg !921
  br i1 %tobool67.i, label %while.cond8.backedge.i, label %if.then68.i, !dbg !921

if.then68.i:                                      ; preds = %if.then66.i
  %83 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !923, !tbaa !612
  %call71.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %83, i8* %81, i32 8) #9, !dbg !923
  br label %while.cond8.backedge.i, !dbg !923

while.cond8.backedge.i:                           ; preds = %if.then68.i, %if.then66.i, %if.then58.i, %if.then53.i, %if.then40.i, %if.then35.i, %if.then23.i, %if.then18.i
  %in_definition.0.be.i = phi i32 [ %in_definition.0176.i, %if.then68.i ], [ 0, %if.then66.i ], [ 1, %if.then18.i ], [ 1, %if.then23.i ], [ 0, %if.then35.i ], [ 0, %if.then40.i ], [ 0, %if.then53.i ], [ 0, %if.then58.i ]
  %84 = load %struct._IO_FILE** %f, align 8, !dbg !905, !tbaa !612
  %call9.i = tail call i32 @feof(%struct._IO_FILE* %84) #9, !dbg !905
  %lnot.i = icmp eq i32 %call9.i, 0, !dbg !905
  br i1 %lnot.i, label %while.body10.i, label %while.end78.i, !dbg !905

while.end78.i:                                    ; preds = %while.cond8.backedge.i, %if.else62.i, %while.cond8.preheader.i
  tail call fastcc void @readLoop(i32 0, i32 (i8*, i32*)* @endGB, %struct.ReadSeqVars* %V) #9, !dbg !924
  %85 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !925, !tbaa !612
  %start.i = getelementptr inbounds %struct.seqinfo_s* %85, i64 0, i32 6, !dbg !925
  store i32 1, i32* %start.i, align 4, !dbg !925, !tbaa !600
  %86 = load i32* %seqlen159, align 4, !dbg !926, !tbaa !600
  %stop.i = getelementptr inbounds %struct.seqinfo_s* %85, i64 0, i32 7, !dbg !926
  store i32 %86, i32* %stop.i, align 4, !dbg !926, !tbaa !600
  %87 = load i32* %seqlen159, align 4, !dbg !927, !tbaa !600
  %olen.i = getelementptr inbounds %struct.seqinfo_s* %85, i64 0, i32 8, !dbg !927
  store i32 %87, i32* %olen.i, align 4, !dbg !927, !tbaa !600
  %flags.i = getelementptr inbounds %struct.seqinfo_s* %85, i64 0, i32 0, !dbg !928
  %88 = load i32* %flags.i, align 4, !dbg !928, !tbaa !600
  %or.i = or i32 %88, 304, !dbg !928
  store i32 %or.i, i32* %flags.i, align 4, !dbg !928, !tbaa !600
  %89 = load %struct._IO_FILE** %f, align 8, !dbg !929, !tbaa !612
  %call86172.i = tail call i32 @feof(%struct._IO_FILE* %89) #9, !dbg !929
  %tobool87173.i = icmp eq i32 %call86172.i, 0, !dbg !929
  br i1 %tobool87173.i, label %lor.rhs.i306, label %while.cond99.preheader.i, !dbg !929

lor.rhs.i306:                                     ; preds = %while.end78.i, %while.body97.i
  %90 = load i8** %buf.i292, align 8, !dbg !929, !tbaa !612
  %91 = load i8* %90, align 1, !dbg !929, !tbaa !601
  %cmp89.i = icmp eq i8 %91, 0, !dbg !929
  br i1 %cmp89.i, label %while.body97.i, label %land.rhs.i307, !dbg !929

land.rhs.i307:                                    ; preds = %lor.rhs.i306
  %strncmp158.i = tail call i32 @strncmp(i8* %90, i8* getelementptr inbounds ([6 x i8]* @.str132, i64 0, i64 0), i64 5) #6, !dbg !929
  %cmp159.i = icmp eq i32 %strncmp158.i, 0, !dbg !929
  br i1 %cmp159.i, label %while.cond99.preheader.i, label %while.body97.i

while.cond99.preheader.i:                         ; preds = %while.body97.i, %land.rhs.i307, %while.end78.i
  %92 = load %struct._IO_FILE** %f, align 8, !dbg !930, !tbaa !612
  %call101170.i = tail call i32 @feof(%struct._IO_FILE* %92) #9, !dbg !930
  %tobool102171.i = icmp eq i32 %call101170.i, 0, !dbg !930
  br i1 %tobool102171.i, label %land.rhs103.i, label %sw.epilog, !dbg !930

while.body97.i:                                   ; preds = %land.rhs.i307, %lor.rhs.i306
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !931
  %93 = load %struct._IO_FILE** %f, align 8, !dbg !929, !tbaa !612
  %call86.i = tail call i32 @feof(%struct._IO_FILE* %93) #9, !dbg !929
  %tobool87.i = icmp eq i32 %call86.i, 0, !dbg !929
  br i1 %tobool87.i, label %lor.rhs.i306, label %while.cond99.preheader.i, !dbg !929

land.rhs103.i:                                    ; preds = %while.cond99.preheader.i, %while.body110.i
  %94 = load i8** %buf.i292, align 8, !dbg !930, !tbaa !612
  %strncmp.i = tail call i32 @strncmp(i8* %94, i8* getelementptr inbounds ([8 x i8]* @.str136, i64 0, i64 0), i64 7) #6, !dbg !930
  %cmp156.i = icmp eq i32 %strncmp.i, 0, !dbg !930
  br i1 %cmp156.i, label %sw.epilog, label %while.body110.i

while.body110.i:                                  ; preds = %land.rhs103.i
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !932
  %95 = load %struct._IO_FILE** %f, align 8, !dbg !930, !tbaa !612
  %call101.i = tail call i32 @feof(%struct._IO_FILE* %95) #9, !dbg !930
  %tobool102.i = icmp eq i32 %call101.i, 0, !dbg !930
  br i1 %tobool102.i, label %land.rhs103.i, label %sw.epilog, !dbg !930

sw.bb166:                                         ; preds = %if.end158
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %V}, i64 0, metadata !933) #6, !dbg !935
  %96 = load i32* %ssimode, align 4, !dbg !936, !tbaa !600
  %cmp.i309 = icmp sgt i32 %96, -1, !dbg !936
  br i1 %cmp.i309, label %if.then.i310, label %if.end.i313, !dbg !936

if.then.i310:                                     ; preds = %sw.bb166
  %97 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 7, i32 0, !dbg !936
  %98 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 6, i32 0, !dbg !936
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 16, i32 8, i1 false) #6, !dbg !936, !tbaa.struct !900
  br label %if.end.i313, !dbg !936

if.end.i313:                                      ; preds = %if.then.i310, %sw.bb166
  %buf.i311 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3, !dbg !937
  %99 = load i8** %buf.i311, align 8, !dbg !937, !tbaa !612
  %100 = load i8* %99, align 1, !dbg !937, !tbaa !601
  %cmp1.i312 = icmp eq i8 %100, 62, !dbg !937
  br i1 %cmp1.i312, label %if.end4.i, label %if.then3.i, !dbg !937

if.then3.i:                                       ; preds = %if.end.i313
  %fname.i = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 1, !dbg !938
  %101 = load i8** %fname.i, align 8, !dbg !938, !tbaa !612
  %linenumber.i = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 2, !dbg !938
  %102 = load i32* %linenumber.i, align 4, !dbg !938, !tbaa !600
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([174 x i8]* @.str131, i64 0, i64 0), i8* %101, i32 %102) #9, !dbg !938
  %.pre.i = load i8** %buf.i311, align 8, !dbg !939, !tbaa !612
  br label %if.end4.i, !dbg !938

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i313
  %103 = phi i8* [ %99, %if.end.i313 ], [ %.pre.i, %if.then3.i ]
  %add.ptr.i314 = getelementptr inbounds i8* %103, i64 1, !dbg !939
  %call.i315 = tail call i8* @strtok(i8* %add.ptr.i314, i8* getelementptr inbounds ([4 x i8]* @.str114, i64 0, i64 0)) #9, !dbg !939
  tail call void @llvm.dbg.value(metadata !{i8* %call.i315}, i64 0, metadata !940) #6, !dbg !939
  %cmp6.i = icmp eq i8* %call.i315, null, !dbg !939
  br i1 %cmp6.i, label %if.end10.i, label %if.then8.i, !dbg !939

if.then8.i:                                       ; preds = %if.end4.i
  %104 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !941, !tbaa !612
  %call9.i317 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %104, i8* %call.i315, i32 1) #9, !dbg !941
  br label %if.end10.i, !dbg !941

if.end10.i:                                       ; preds = %if.then8.i, %if.end4.i
  %call11.i318 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0)) #9, !dbg !942
  tail call void @llvm.dbg.value(metadata !{i8* %call11.i318}, i64 0, metadata !940) #6, !dbg !942
  %cmp12.i = icmp eq i8* %call11.i318, null, !dbg !942
  br i1 %cmp12.i, label %if.end17.i, label %if.then14.i, !dbg !942

if.then14.i:                                      ; preds = %if.end10.i
  %105 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !943, !tbaa !612
  %call16.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %105, i8* %call11.i318, i32 8) #9, !dbg !943
  br label %if.end17.i, !dbg !943

if.end17.i:                                       ; preds = %if.then14.i, %if.end10.i
  tail call fastcc void @readLoop(i32 0, i32 (i8*, i32*)* @endPearson, %struct.ReadSeqVars* %V) #9, !dbg !944
  %106 = load %struct._IO_FILE** %f, align 8, !dbg !945, !tbaa !612
  %call1841.i = tail call i32 @feof(%struct._IO_FILE* %106) #9, !dbg !945
  %tobool42.i320 = icmp eq i32 %call1841.i, 0, !dbg !945
  br i1 %tobool42.i320, label %lor.rhs.i321, label %sw.epilog, !dbg !945

lor.rhs.i321:                                     ; preds = %if.end17.i, %while.body.i323
  %107 = load i8** %buf.i311, align 8, !dbg !945, !tbaa !612
  %108 = load i8* %107, align 1, !dbg !945, !tbaa !601
  %phitmp.i = icmp eq i8 %108, 62
  br i1 %phitmp.i, label %sw.epilog, label %while.body.i323

while.body.i323:                                  ; preds = %lor.rhs.i321
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !946
  %109 = load %struct._IO_FILE** %f, align 8, !dbg !945, !tbaa !612
  %call18.i = tail call i32 @feof(%struct._IO_FILE* %109) #9, !dbg !945
  %tobool.i322 = icmp eq i32 %call18.i, 0, !dbg !945
  br i1 %tobool.i322, label %lor.rhs.i321, label %sw.epilog, !dbg !945

sw.bb167:                                         ; preds = %if.end158
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %V}, i64 0, metadata !948) #6, !dbg !950
  %buf.i325 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3, !dbg !951
  %110 = load %struct._IO_FILE** %f, align 8, !dbg !951, !tbaa !612
  %call127.i = tail call i32 @feof(%struct._IO_FILE* %110) #9, !dbg !951
  %tobool128.i = icmp eq i32 %call127.i, 0, !dbg !951
  br i1 %tobool128.i, label %land.rhs.i328, label %while.end.i333, !dbg !951

land.rhs.i328:                                    ; preds = %sw.bb167, %while.body.i331
  %111 = load i8** %buf.i325, align 8, !dbg !951, !tbaa !612
  %call1.i = tail call i32 @strncmp(i8* %111, i8* getelementptr inbounds ([5 x i8]* @.str125, i64 0, i64 0), i64 4) #10, !dbg !951
  %cmp.i327 = icmp eq i32 %call1.i, 0, !dbg !951
  br i1 %cmp.i327, label %while.end.i333, label %while.body.i331

while.body.i331:                                  ; preds = %land.rhs.i328
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !952
  %112 = load %struct._IO_FILE** %f, align 8, !dbg !951, !tbaa !612
  %call.i329 = tail call i32 @feof(%struct._IO_FILE* %112) #9, !dbg !951
  %tobool.i330 = icmp eq i32 %call.i329, 0, !dbg !951
  br i1 %tobool.i330, label %land.rhs.i328, label %while.end.i333, !dbg !951

while.end.i333:                                   ; preds = %while.body.i331, %land.rhs.i328, %sw.bb167
  %113 = load i32* %ssimode, align 4, !dbg !954, !tbaa !600
  %cmp2.i = icmp sgt i32 %113, -1, !dbg !954
  br i1 %cmp2.i, label %if.then.i334, label %if.end.i336, !dbg !954

if.then.i334:                                     ; preds = %while.end.i333
  %114 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 7, i32 0, !dbg !954
  %115 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 6, i32 0, !dbg !954
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 16, i32 8, i1 false) #6, !dbg !954, !tbaa.struct !900
  br label %if.end.i336, !dbg !954

if.end.i336:                                      ; preds = %while.end.i333, %if.then.i334
  %116 = load i8** %buf.i325, align 8, !dbg !955, !tbaa !612
  %add.ptr.i335 = getelementptr inbounds i8* %116, i64 5, !dbg !955
  %call4.i = tail call i8* @strtok(i8* %add.ptr.i335, i8* getelementptr inbounds ([4 x i8]* @.str114, i64 0, i64 0)) #9, !dbg !955
  tail call void @llvm.dbg.value(metadata !{i8* %call4.i}, i64 0, metadata !956) #6, !dbg !955
  %cmp5.i = icmp eq i8* %call4.i, null, !dbg !955
  br i1 %cmp5.i, label %do.body.i, label %if.then6.i, !dbg !955

if.then6.i:                                       ; preds = %if.end.i336
  %117 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !957, !tbaa !612
  %call7.i337 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %117, i8* %call4.i, i32 1) #9, !dbg !957
  %118 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !959, !tbaa !612
  %call9.i338 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %118, i8* %call4.i, i32 2) #9, !dbg !959
  br label %do.body.i, !dbg !960

do.body.i:                                        ; preds = %if.then6.i, %if.end.i336, %land.rhs49.i
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !961
  %119 = load %struct._IO_FILE** %f, align 8, !dbg !963, !tbaa !612
  %call12.i339 = tail call i32 @feof(%struct._IO_FILE* %119) #9, !dbg !963
  %tobool13.i340 = icmp eq i32 %call12.i339, 0, !dbg !963
  br i1 %tobool13.i340, label %land.lhs.true.i342, label %if.else.i351, !dbg !963

land.lhs.true.i342:                               ; preds = %do.body.i
  %120 = load i8** %buf.i325, align 8, !dbg !963, !tbaa !612
  %strncmp.i341 = tail call i32 @strncmp(i8* %120, i8* getelementptr inbounds ([5 x i8]* @.str126, i64 0, i64 0), i64 4) #6, !dbg !963
  %cmp121.i = icmp eq i32 %strncmp.i341, 0, !dbg !963
  br i1 %cmp121.i, label %if.then18.i346, label %if.else.i351, !dbg !963

if.then18.i346:                                   ; preds = %land.lhs.true.i342
  %add.ptr20.i343 = getelementptr inbounds i8* %120, i64 5, !dbg !964
  %call21.i344 = tail call i8* @strtok(i8* %add.ptr20.i343, i8* getelementptr inbounds ([6 x i8]* @.str127, i64 0, i64 0)) #9, !dbg !964
  tail call void @llvm.dbg.value(metadata !{i8* %call21.i344}, i64 0, metadata !956) #6, !dbg !964
  %cmp22.i345 = icmp eq i8* %call21.i344, null, !dbg !964
  br i1 %cmp22.i345, label %do.cond.i, label %if.then23.i348, !dbg !964

if.then23.i348:                                   ; preds = %if.then18.i346
  %121 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !966, !tbaa !612
  %call25.i347 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %121, i8* %call21.i344, i32 4) #9, !dbg !966
  br label %do.cond.i, !dbg !966

if.else.i351:                                     ; preds = %land.lhs.true.i342, %do.body.i
  %122 = load %struct._IO_FILE** %f, align 8, !dbg !967, !tbaa !612
  %call28.i349 = tail call i32 @feof(%struct._IO_FILE* %122) #9, !dbg !967
  %tobool29.i350 = icmp eq i32 %call28.i349, 0, !dbg !967
  br i1 %tobool29.i350, label %land.lhs.true30.i352, label %do.cond.i, !dbg !967

land.lhs.true30.i352:                             ; preds = %if.else.i351
  %123 = load i8** %buf.i325, align 8, !dbg !967, !tbaa !612
  %strncmp123.i = tail call i32 @strncmp(i8* %123, i8* getelementptr inbounds ([5 x i8]* @.str128, i64 0, i64 0), i64 4) #6, !dbg !967
  %cmp124.i = icmp eq i32 %strncmp123.i, 0, !dbg !967
  br i1 %cmp124.i, label %if.then35.i356, label %do.cond.i, !dbg !967

if.then35.i356:                                   ; preds = %land.lhs.true30.i352
  %add.ptr37.i353 = getelementptr inbounds i8* %123, i64 5, !dbg !968
  %call38.i354 = tail call i8* @strtok(i8* %add.ptr37.i353, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0)) #9, !dbg !968
  tail call void @llvm.dbg.value(metadata !{i8* %call38.i354}, i64 0, metadata !956) #6, !dbg !968
  %cmp39.i355 = icmp eq i8* %call38.i354, null, !dbg !968
  br i1 %cmp39.i355, label %do.cond.i, label %if.then40.i358, !dbg !968

if.then40.i358:                                   ; preds = %if.then35.i356
  %124 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !970, !tbaa !612
  %call42.i357 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %124, i8* %call38.i354, i32 8) #9, !dbg !970
  br label %do.cond.i, !dbg !970

do.cond.i:                                        ; preds = %if.then40.i358, %if.then35.i356, %land.lhs.true30.i352, %if.else.i351, %if.then23.i348, %if.then18.i346
  %125 = load %struct._IO_FILE** %f, align 8, !dbg !971, !tbaa !612
  %call47.i = tail call i32 @feof(%struct._IO_FILE* %125) #9, !dbg !971
  %tobool48.i = icmp eq i32 %call47.i, 0, !dbg !971
  br i1 %tobool48.i, label %land.rhs49.i, label %do.end.i359, !dbg !971

land.rhs49.i:                                     ; preds = %do.cond.i
  %126 = load i8** %buf.i325, align 8, !dbg !971, !tbaa !612
  %call51.i = tail call i32 @strncmp(i8* %126, i8* getelementptr inbounds ([3 x i8]* @.str129, i64 0, i64 0), i64 2) #10, !dbg !971
  %cmp52.i = icmp eq i32 %call51.i, 0, !dbg !971
  br i1 %cmp52.i, label %do.end.i359, label %do.body.i

do.end.i359:                                      ; preds = %land.rhs49.i, %do.cond.i
  tail call fastcc void @readLoop(i32 0, i32 (i8*, i32*)* @endEMBL, %struct.ReadSeqVars* %V) #9, !dbg !972
  %127 = load i32* %ssimode, align 4, !dbg !973, !tbaa !600
  %cmp55.i = icmp eq i32 %127, -1, !dbg !973
  br i1 %cmp55.i, label %if.then56.i, label %if.end64.i, !dbg !973

if.then56.i:                                      ; preds = %do.end.i359
  %seq.i = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15, !dbg !974
  %128 = load i8** %seq.i, align 8, !dbg !974, !tbaa !612
  tail call void @llvm.dbg.value(metadata !{i8* %128}, i64 0, metadata !956) #6, !dbg !974
  br label %for.cond.i, !dbg !974

for.cond.i:                                       ; preds = %for.inc.i, %if.then56.i
  %sptr.0.i = phi i8* [ %128, %if.then56.i ], [ %incdec.ptr.i, %for.inc.i ]
  %129 = load i8* %sptr.0.i, align 1, !dbg !974, !tbaa !601
  switch i8 %129, label %for.inc.i [
    i8 0, label %if.end64.i
    i8 45, label %if.then62.i
  ], !dbg !974

if.then62.i:                                      ; preds = %for.cond.i
  store i8 78, i8* %sptr.0.i, align 1, !dbg !976, !tbaa !601
  br label %for.inc.i, !dbg !976

for.inc.i:                                        ; preds = %if.then62.i, %for.cond.i
  %incdec.ptr.i = getelementptr inbounds i8* %sptr.0.i, i64 1, !dbg !974
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !956) #6, !dbg !974
  br label %for.cond.i, !dbg !974

if.end64.i:                                       ; preds = %for.cond.i, %do.end.i359
  %130 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !977, !tbaa !612
  %start.i360 = getelementptr inbounds %struct.seqinfo_s* %130, i64 0, i32 6, !dbg !977
  store i32 1, i32* %start.i360, align 4, !dbg !977, !tbaa !600
  %131 = load i32* %seqlen159, align 4, !dbg !978, !tbaa !600
  %stop.i362 = getelementptr inbounds %struct.seqinfo_s* %130, i64 0, i32 7, !dbg !978
  store i32 %131, i32* %stop.i362, align 4, !dbg !978, !tbaa !600
  %132 = load i32* %seqlen159, align 4, !dbg !979, !tbaa !600
  %olen.i363 = getelementptr inbounds %struct.seqinfo_s* %130, i64 0, i32 8, !dbg !979
  store i32 %132, i32* %olen.i363, align 4, !dbg !979, !tbaa !600
  %flags.i364 = getelementptr inbounds %struct.seqinfo_s* %130, i64 0, i32 0, !dbg !980
  %133 = load i32* %flags.i364, align 4, !dbg !980, !tbaa !600
  %or.i365 = or i32 %133, 304, !dbg !980
  store i32 %or.i365, i32* %flags.i364, align 4, !dbg !980, !tbaa !600
  %134 = load %struct._IO_FILE** %f, align 8, !dbg !981, !tbaa !612
  %call72125.i = tail call i32 @feof(%struct._IO_FILE* %134) #9, !dbg !981
  %tobool73126.i = icmp eq i32 %call72125.i, 0, !dbg !981
  br i1 %tobool73126.i, label %land.rhs74.i, label %sw.epilog, !dbg !981

land.rhs74.i:                                     ; preds = %if.end64.i, %while.body80.i
  %135 = load i8** %buf.i325, align 8, !dbg !981, !tbaa !612
  %call76.i = tail call i32 @strncmp(i8* %135, i8* getelementptr inbounds ([5 x i8]* @.str125, i64 0, i64 0), i64 4) #10, !dbg !981
  %cmp77.i = icmp eq i32 %call76.i, 0, !dbg !981
  br i1 %cmp77.i, label %sw.epilog, label %while.body80.i

while.body80.i:                                   ; preds = %land.rhs74.i
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !982
  %136 = load %struct._IO_FILE** %f, align 8, !dbg !981, !tbaa !612
  %call72.i = tail call i32 @feof(%struct._IO_FILE* %136) #9, !dbg !981
  %tobool73.i = icmp eq i32 %call72.i, 0, !dbg !981
  br i1 %tobool73.i, label %land.rhs74.i, label %sw.epilog, !dbg !981

sw.bb168:                                         ; preds = %if.end158
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %V}, i64 0, metadata !984) #6, !dbg !986
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !987
  %buf.i366 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3, !dbg !988
  %137 = load i8** %buf.i366, align 8, !dbg !988, !tbaa !612
  %add.ptr.i367 = getelementptr inbounds i8* %137, i64 6, !dbg !988
  %call.i368 = tail call i8* @strtok(i8* %add.ptr.i367, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0)) #9, !dbg !988
  tail call void @llvm.dbg.value(metadata !{i8* %call.i368}, i64 0, metadata !989) #6, !dbg !988
  %cmp.i369 = icmp eq i8* %call.i368, null, !dbg !988
  br i1 %cmp.i369, label %if.end.i373, label %if.then.i372, !dbg !988

if.then.i372:                                     ; preds = %sw.bb168
  %138 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !990, !tbaa !612
  %call1.i371 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %138, i8* %call.i368, i32 1) #9, !dbg !990
  br label %if.end.i373, !dbg !990

if.end.i373:                                      ; preds = %if.then.i372, %sw.bb168
  %call2.i = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0)) #9, !dbg !991
  tail call void @llvm.dbg.value(metadata !{i8* %call2.i}, i64 0, metadata !989) #6, !dbg !991
  %cmp3.i = icmp eq i8* %call2.i, null, !dbg !991
  br i1 %cmp3.i, label %if.end7.i, label %if.then4.i, !dbg !991

if.then4.i:                                       ; preds = %if.end.i373
  %139 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !992, !tbaa !612
  %call6.i374 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %139, i8* %call2.i, i32 8) #9, !dbg !992
  br label %if.end7.i, !dbg !992

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i373
  tail call fastcc void @readLoop(i32 0, i32 (i8*, i32*)* @endZuker, %struct.ReadSeqVars* %V) #9, !dbg !993
  %140 = load %struct._IO_FILE** %f, align 8, !dbg !994, !tbaa !612
  %call826.i = tail call i32 @feof(%struct._IO_FILE* %140) #9, !dbg !994
  %141 = load i8** %buf.i366, align 8, !dbg !994, !tbaa !612
  %142 = load i8* %141, align 1, !dbg !994, !tbaa !601
  %cmp1427.i = icmp eq i8 %142, 40, !dbg !994
  %and28.i = zext i1 %cmp1427.i to i32, !dbg !994
  %or29.i = or i32 %and28.i, %call826.i, !dbg !994
  %lnot30.i = icmp eq i32 %or29.i, 0, !dbg !994
  br i1 %lnot30.i, label %while.body.i378, label %sw.epilog, !dbg !994

while.body.i378:                                  ; preds = %if.end7.i, %while.body.i378
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !995
  %143 = load %struct._IO_FILE** %f, align 8, !dbg !994, !tbaa !612
  %call8.i = tail call i32 @feof(%struct._IO_FILE* %143) #9, !dbg !994
  %144 = load i8** %buf.i366, align 8, !dbg !994, !tbaa !612
  %145 = load i8* %144, align 1, !dbg !994, !tbaa !601
  %cmp14.i = icmp eq i8 %145, 40, !dbg !994
  %and.i = zext i1 %cmp14.i to i32, !dbg !994
  %or.i376 = or i32 %and.i, %call8.i, !dbg !994
  %lnot.i377 = icmp eq i32 %or.i376, 0, !dbg !994
  br i1 %lnot.i377, label %while.body.i378, label %sw.epilog, !dbg !994

sw.bb169:                                         ; preds = %if.end158
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %V}, i64 0, metadata !996) #6, !dbg !998
  %buf.i380 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3, !dbg !999
  %146 = load %struct._IO_FILE** %f, align 8, !dbg !999, !tbaa !612
  %call103.i = tail call i32 @feof(%struct._IO_FILE* %146) #9, !dbg !999
  %tobool104.i = icmp eq i32 %call103.i, 0, !dbg !999
  br i1 %tobool104.i, label %land.rhs.i384, label %while.end.i389, !dbg !999

land.rhs.i384:                                    ; preds = %sw.bb169, %while.body.i387
  %147 = load i8** %buf.i380, align 8, !dbg !999, !tbaa !612
  %call1.i382 = tail call i32 @strncmp(i8* %147, i8* getelementptr inbounds ([6 x i8]* @.str121, i64 0, i64 0), i64 5) #10, !dbg !999
  %cmp.i383 = icmp eq i32 %call1.i382, 0, !dbg !999
  br i1 %cmp.i383, label %while.end.i389, label %while.body.i387

while.body.i387:                                  ; preds = %land.rhs.i384
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !1000
  %148 = load %struct._IO_FILE** %f, align 8, !dbg !999, !tbaa !612
  %call.i385 = tail call i32 @feof(%struct._IO_FILE* %148) #9, !dbg !999
  %tobool.i386 = icmp eq i32 %call.i385, 0, !dbg !999
  br i1 %tobool.i386, label %land.rhs.i384, label %while.end.i389, !dbg !999

while.end.i389:                                   ; preds = %while.body.i387, %land.rhs.i384, %sw.bb169
  %149 = load %struct._IO_FILE** %f, align 8, !dbg !1002, !tbaa !612
  %call3.i388 = tail call i32 @feof(%struct._IO_FILE* %149) #9, !dbg !1002
  %tobool4.i = icmp eq i32 %call3.i388, 0, !dbg !1002
  br i1 %tobool4.i, label %if.end.i392, label %sw.epilog, !dbg !1002

if.end.i392:                                      ; preds = %while.end.i389
  %150 = load i32* %ssimode, align 4, !dbg !1003, !tbaa !600
  %cmp5.i391 = icmp sgt i32 %150, -1, !dbg !1003
  br i1 %cmp5.i391, label %if.then6.i393, label %if.end7.i396, !dbg !1003

if.then6.i393:                                    ; preds = %if.end.i392
  %151 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 7, i32 0, !dbg !1003
  %152 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 6, i32 0, !dbg !1003
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %152, i64 16, i32 8, i1 false) #6, !dbg !1003, !tbaa.struct !900
  br label %if.end7.i396, !dbg !1003

if.end7.i396:                                     ; preds = %if.then6.i393, %if.end.i392
  %153 = load i8** %buf.i380, align 8, !dbg !1004, !tbaa !612
  %add.ptr.i394 = getelementptr inbounds i8* %153, i64 15, !dbg !1004
  %call9.i395 = tail call i8* @strtok(i8* %add.ptr.i394, i8* getelementptr inbounds ([4 x i8]* @.str114, i64 0, i64 0)) #9, !dbg !1004
  tail call void @llvm.dbg.value(metadata !{i8* %call9.i395}, i64 0, metadata !1005) #6, !dbg !1004
  %cmp10.i = icmp eq i8* %call9.i395, null, !dbg !1004
  br i1 %cmp10.i, label %do.body.i401, label %if.then11.i, !dbg !1004

if.then11.i:                                      ; preds = %if.end7.i396
  %154 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !1006, !tbaa !612
  %call12.i397 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %154, i8* %call9.i395, i32 1) #9, !dbg !1006
  %155 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !1008, !tbaa !612
  %call14.i398 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %155, i8* %call9.i395, i32 2) #9, !dbg !1008
  br label %do.body.i401, !dbg !1009

do.body.i401:                                     ; preds = %if.then11.i, %if.end7.i396, %land.rhs48.i
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !1010
  %156 = load %struct._IO_FILE** %f, align 8, !dbg !1012, !tbaa !612
  %call17.i399 = tail call i32 @feof(%struct._IO_FILE* %156) #9, !dbg !1012
  %tobool18.i400 = icmp eq i32 %call17.i399, 0, !dbg !1012
  br i1 %tobool18.i400, label %land.lhs.true.i403, label %if.else.i406, !dbg !1012

land.lhs.true.i403:                               ; preds = %do.body.i401
  %157 = load i8** %buf.i380, align 8, !dbg !1012, !tbaa !612
  %call20.i402 = tail call i32 @strncmp(i8* %157, i8* getelementptr inbounds ([6 x i8]* @.str122, i64 0, i64 0), i64 5) #10, !dbg !1012
  %cmp21.i = icmp eq i32 %call20.i402, 0, !dbg !1012
  br i1 %cmp21.i, label %if.then22.i, label %if.else.i406, !dbg !1012

if.then22.i:                                      ; preds = %land.lhs.true.i403
  %158 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !1013, !tbaa !612
  %add.ptr25.i = getelementptr inbounds i8* %157, i64 15, !dbg !1013
  %call26.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %158, i8* %add.ptr25.i, i32 8) #9, !dbg !1013
  br label %do.cond.i411, !dbg !1013

if.else.i406:                                     ; preds = %land.lhs.true.i403, %do.body.i401
  %159 = load %struct._IO_FILE** %f, align 8, !dbg !1014, !tbaa !612
  %call28.i404 = tail call i32 @feof(%struct._IO_FILE* %159) #9, !dbg !1014
  %tobool29.i405 = icmp eq i32 %call28.i404, 0, !dbg !1014
  br i1 %tobool29.i405, label %land.lhs.true30.i407, label %do.cond.i411, !dbg !1014

land.lhs.true30.i407:                             ; preds = %if.else.i406
  %160 = load i8** %buf.i380, align 8, !dbg !1014, !tbaa !612
  %call32.i = tail call i32 @strncmp(i8* %160, i8* getelementptr inbounds ([10 x i8]* @.str123, i64 0, i64 0), i64 9) #10, !dbg !1014
  %cmp33.i = icmp eq i32 %call32.i, 0, !dbg !1014
  br i1 %cmp33.i, label %if.then34.i, label %do.cond.i411, !dbg !1014

if.then34.i:                                      ; preds = %land.lhs.true30.i407
  %add.ptr36.i = getelementptr inbounds i8* %160, i64 15, !dbg !1015
  %call37.i = tail call i8* @strtok(i8* %add.ptr36.i, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0)) #9, !dbg !1015
  tail call void @llvm.dbg.value(metadata !{i8* %call37.i}, i64 0, metadata !1005) #6, !dbg !1015
  %cmp38.i = icmp eq i8* %call37.i, null, !dbg !1015
  br i1 %cmp38.i, label %do.cond.i411, label %if.then39.i, !dbg !1015

if.then39.i:                                      ; preds = %if.then34.i
  %161 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !1017, !tbaa !612
  %call41.i408 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %161, i8* %call37.i, i32 4) #9, !dbg !1017
  br label %do.cond.i411, !dbg !1017

do.cond.i411:                                     ; preds = %if.then39.i, %if.then34.i, %land.lhs.true30.i407, %if.else.i406, %if.then22.i
  %162 = load %struct._IO_FILE** %f, align 8, !dbg !1018, !tbaa !612
  %call46.i409 = tail call i32 @feof(%struct._IO_FILE* %162) #9, !dbg !1018
  %tobool47.i410 = icmp eq i32 %call46.i409, 0, !dbg !1018
  br i1 %tobool47.i410, label %land.rhs48.i, label %do.end.i418, !dbg !1018

land.rhs48.i:                                     ; preds = %do.cond.i411
  %163 = load i8** %buf.i380, align 8, !dbg !1018, !tbaa !612
  %call50.i = tail call i32 @strncmp(i8* %163, i8* getelementptr inbounds ([9 x i8]* @.str124, i64 0, i64 0), i64 8) #10, !dbg !1018
  %cmp51.i = icmp eq i32 %call50.i, 0, !dbg !1018
  br i1 %cmp51.i, label %do.end.i418, label %do.body.i401

do.end.i418:                                      ; preds = %land.rhs48.i, %do.cond.i411
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !1019
  tail call fastcc void @readLoop(i32 0, i32 (i8*, i32*)* @endPIR, %struct.ReadSeqVars* %V) #9, !dbg !1020
  %164 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !1021, !tbaa !612
  %start.i412 = getelementptr inbounds %struct.seqinfo_s* %164, i64 0, i32 6, !dbg !1021
  store i32 1, i32* %start.i412, align 4, !dbg !1021, !tbaa !600
  %165 = load i32* %seqlen159, align 4, !dbg !1022, !tbaa !600
  %stop.i414 = getelementptr inbounds %struct.seqinfo_s* %164, i64 0, i32 7, !dbg !1022
  store i32 %165, i32* %stop.i414, align 4, !dbg !1022, !tbaa !600
  %166 = load i32* %seqlen159, align 4, !dbg !1023, !tbaa !600
  %olen.i415 = getelementptr inbounds %struct.seqinfo_s* %164, i64 0, i32 8, !dbg !1023
  store i32 %166, i32* %olen.i415, align 4, !dbg !1023, !tbaa !600
  %flags.i416 = getelementptr inbounds %struct.seqinfo_s* %164, i64 0, i32 0, !dbg !1024
  %167 = load i32* %flags.i416, align 4, !dbg !1024, !tbaa !600
  %or.i417 = or i32 %167, 304, !dbg !1024
  store i32 %or.i417, i32* %flags.i416, align 4, !dbg !1024, !tbaa !600
  %168 = load %struct._IO_FILE** %f, align 8, !dbg !1025, !tbaa !612
  %call60101.i = tail call i32 @feof(%struct._IO_FILE* %168) #9, !dbg !1025
  %tobool61102.i = icmp eq i32 %call60101.i, 0, !dbg !1025
  br i1 %tobool61102.i, label %land.rhs62.i, label %sw.epilog, !dbg !1025

land.rhs62.i:                                     ; preds = %do.end.i418, %while.body67.i
  %169 = load i8** %buf.i380, align 8, !dbg !1025, !tbaa !612
  %call64.i419 = tail call i32 @strncmp(i8* %169, i8* getelementptr inbounds ([6 x i8]* @.str121, i64 0, i64 0), i64 5) #10, !dbg !1025
  %cmp65.i420 = icmp eq i32 %call64.i419, 0, !dbg !1025
  br i1 %cmp65.i420, label %sw.epilog, label %while.body67.i

while.body67.i:                                   ; preds = %land.rhs62.i
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !1026
  %170 = load %struct._IO_FILE** %f, align 8, !dbg !1025, !tbaa !612
  %call60.i421 = tail call i32 @feof(%struct._IO_FILE* %170) #9, !dbg !1025
  %tobool61.i = icmp eq i32 %call60.i421, 0, !dbg !1025
  br i1 %tobool61.i, label %land.rhs62.i, label %sw.epilog, !dbg !1025

sw.bb170:                                         ; preds = %if.end158
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %V}, i64 0, metadata !1028) #6, !dbg !1030
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1031) #6, !dbg !1032
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1033) #6, !dbg !1034
  %buf.i422 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3, !dbg !1035
  %171 = load i8** %buf.i422, align 8, !dbg !1035, !tbaa !612
  %call.i423 = tail call i32 @Strparse(i8* getelementptr inbounds ([34 x i8]* @.str115, i64 0, i64 0), i8* %171, i32 2) #9, !dbg !1035
  %tobool.i424 = icmp eq i32 %call.i423, 0, !dbg !1035
  br i1 %tobool.i424, label %if.else.i430, label %if.then.i428, !dbg !1035

if.then.i428:                                     ; preds = %sw.bb170
  tail call void @llvm.dbg.value(metadata !1036, i64 0, metadata !1031) #6, !dbg !1037
  %172 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !1039, !tbaa !612
  %173 = load i8** getelementptr inbounds ([10 x i8*]* @sqd_parse, i64 0, i64 1), align 8, !dbg !1039, !tbaa !612
  %call1.i426 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %172, i8* %173, i32 1) #9, !dbg !1039
  %174 = load i8** getelementptr inbounds ([10 x i8*]* @sqd_parse, i64 0, i64 2), align 8, !dbg !1040, !tbaa !612
  %call2.i427 = tail call i32 @atoi(i8* %174) #10, !dbg !1040
  tail call void @llvm.dbg.value(metadata !{i32 %call2.i427}, i64 0, metadata !1033) #6, !dbg !1040
  br label %if.end11.i, !dbg !1041

if.else.i430:                                     ; preds = %sw.bb170
  %175 = load i8** %buf.i422, align 8, !dbg !1042, !tbaa !612
  %call4.i429 = tail call i32 @Strparse(i8* getelementptr inbounds ([33 x i8]* @.str116, i64 0, i64 0), i8* %175, i32 1) #9, !dbg !1042
  %tobool5.i = icmp eq i32 %call4.i429, 0, !dbg !1042
  br i1 %tobool5.i, label %if.else9.i, label %if.then6.i432, !dbg !1042

if.then6.i432:                                    ; preds = %if.else.i430
  %176 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !1043, !tbaa !612
  %177 = load i8** getelementptr inbounds ([10 x i8*]* @sqd_parse, i64 0, i64 1), align 8, !dbg !1043, !tbaa !612
  %call8.i431 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %176, i8* %177, i32 1) #9, !dbg !1043
  br label %if.end11.i, !dbg !1043

if.else9.i:                                       ; preds = %if.else.i430
  %178 = load i8** %buf.i422, align 8, !dbg !1044, !tbaa !612
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([25 x i8]* @.str117, i64 0, i64 0), i8* %178) #9, !dbg !1044
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else9.i, %if.then6.i432, %if.then.i428
  %binary.0.i = phi i1 [ false, %if.then6.i432 ], [ false, %if.else9.i ], [ true, %if.then.i428 ]
  %blen.0.i = phi i32 [ 0, %if.then6.i432 ], [ 0, %if.else9.i ], [ %call2.i427, %if.then.i428 ]
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !1045
  %179 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !1046, !tbaa !612
  %180 = load i8** %buf.i422, align 8, !dbg !1046, !tbaa !612
  %call14.i433 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %179, i8* %180, i32 8) #9, !dbg !1046
  br i1 %binary.0.i, label %if.then16.i435, label %if.else40.i, !dbg !1047

if.then16.i435:                                   ; preds = %if.end11.i
  %maxseq.i = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 19, !dbg !1048
  %181 = load i32* %maxseq.i, align 4, !dbg !1048, !tbaa !600
  %cmp.i434 = icmp slt i32 %blen.0.i, %181, !dbg !1048
  br i1 %cmp.i434, label %if.then16.if.end26_crit_edge.i, label %if.then17.i, !dbg !1048

if.then16.if.end26_crit_edge.i:                   ; preds = %if.then16.i435
  %seq27.pre.i = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15, !dbg !1050
  br label %if.end26.i, !dbg !1048

if.then17.i:                                      ; preds = %if.then16.i435
  store i32 %blen.0.i, i32* %maxseq.i, align 4, !dbg !1051, !tbaa !600
  %seq.i436 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15, !dbg !1053
  %182 = load i8** %seq.i436, align 8, !dbg !1053, !tbaa !612
  %add.i = add nsw i32 %blen.0.i, 4, !dbg !1053
  %conv.i = sext i32 %add.i to i64, !dbg !1053
  %call20.i437 = tail call i8* @realloc(i8* %182, i64 %conv.i) #9, !dbg !1053
  store i8* %call20.i437, i8** %seq.i436, align 8, !dbg !1053, !tbaa !612
  %cmp22.i438 = icmp eq i8* %call20.i437, null, !dbg !1053
  br i1 %cmp22.i438, label %if.then24.i, label %if.end26.i, !dbg !1053

if.then24.i:                                      ; preds = %if.then17.i
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str118, i64 0, i64 0)) #9, !dbg !1054
  br label %if.end26.i, !dbg !1054

if.end26.i:                                       ; preds = %if.then24.i, %if.then17.i, %if.then16.if.end26_crit_edge.i
  %seq27.pre-phi.i = phi i8** [ %seq27.pre.i, %if.then16.if.end26_crit_edge.i ], [ %seq.i436, %if.then17.i ], [ %seq.i436, %if.then24.i ], !dbg !1050
  %183 = load i8** %seq27.pre-phi.i, align 8, !dbg !1050, !tbaa !612
  %add28.i = add nsw i32 %blen.0.i, 3, !dbg !1050
  %div.i = sdiv i32 %add28.i, 4, !dbg !1050
  %conv29.i = sext i32 %div.i to i64, !dbg !1050
  %184 = load %struct._IO_FILE** %f, align 8, !dbg !1050, !tbaa !612
  %call30.i = tail call i64 @fread(i8* %183, i64 1, i64 %conv29.i, %struct._IO_FILE* %184) #9, !dbg !1050
  %cmp34.i = icmp ult i64 %call30.i, %conv29.i, !dbg !1050
  br i1 %cmp34.i, label %if.then36.i, label %if.end37.i, !dbg !1050

if.then36.i:                                      ; preds = %if.end26.i
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([13 x i8]* @.str119, i64 0, i64 0)) #9, !dbg !1055
  br label %if.end37.i, !dbg !1055

if.end37.i:                                       ; preds = %if.then36.i, %if.end26.i
  store i32 %blen.0.i, i32* %seqlen159, align 4, !dbg !1056, !tbaa !600
  %185 = load i8** %seq27.pre-phi.i, align 8, !dbg !1057, !tbaa !612
  %call39.i = tail call i32 @GCGBinaryToSequence(i8* %185, i32 %blen.0.i) #9, !dbg !1057
  br label %while.cond.preheader.i441, !dbg !1058

if.else40.i:                                      ; preds = %if.end11.i
  tail call fastcc void @readLoop(i32 0, i32 (i8*, i32*)* @endGCGdata, %struct.ReadSeqVars* %V) #9, !dbg !1059
  br label %while.cond.preheader.i441

while.cond.preheader.i441:                        ; preds = %if.else40.i, %if.end37.i
  %186 = load %struct._IO_FILE** %f, align 8, !dbg !1060, !tbaa !612
  %call4378.i = tail call i32 @feof(%struct._IO_FILE* %186) #9, !dbg !1060
  %tobool4479.i = icmp eq i32 %call4378.i, 0, !dbg !1060
  br i1 %tobool4479.i, label %lor.rhs.i443, label %sw.epilog, !dbg !1060

lor.rhs.i443:                                     ; preds = %while.cond.preheader.i441, %while.body.i444
  %187 = load i8** %buf.i422, align 8, !dbg !1060, !tbaa !612
  %188 = load i8* %187, align 1, !dbg !1060, !tbaa !601
  %phitmp.i442 = icmp eq i8 %188, 62
  br i1 %phitmp.i442, label %sw.epilog, label %while.body.i444

while.body.i444:                                  ; preds = %lor.rhs.i443
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !1061
  %189 = load %struct._IO_FILE** %f, align 8, !dbg !1060, !tbaa !612
  %call43.i = tail call i32 @feof(%struct._IO_FILE* %189) #9, !dbg !1060
  %tobool44.i = icmp eq i32 %call43.i, 0, !dbg !1060
  br i1 %tobool44.i, label %lor.rhs.i443, label %sw.epilog, !dbg !1060

do.body:                                          ; preds = %do.body.preheader, %if.end177
  %190 = load i8** %buf, align 8, !dbg !860, !tbaa !612
  %call172 = tail call i8* @strstr(i8* %190, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #10, !dbg !860
  %cmp173 = icmp eq i8* %call172, null, !dbg !860
  br i1 %cmp173, label %if.end177, label %if.then176, !dbg !1062

if.then176:                                       ; preds = %do.body
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %V}, i64 0, metadata !1063) #6, !dbg !1064
  store i32 0, i32* %seqlen159, align 4, !dbg !1065, !tbaa !600
  %call.i448 = tail call i8* @strstr(i8* %190, i8* getelementptr inbounds ([11 x i8]* @.str113, i64 0, i64 0)) #10, !dbg !1066
  tail call void @llvm.dbg.value(metadata !{i8* %call.i448}, i64 0, metadata !1067) #6, !dbg !1066
  %cmp.i449 = icmp eq i8* %call.i448, null, !dbg !1066
  br i1 %cmp.i449, label %if.else.i453, label %if.then.i450, !dbg !1066

if.then.i450:                                     ; preds = %if.then176
  store i8 0, i8* %call.i448, align 1, !dbg !1066, !tbaa !601
  br label %if.end5.i, !dbg !1066

if.else.i453:                                     ; preds = %if.then176
  %call2.i451 = tail call i8* @strstr(i8* %190, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #10, !dbg !1068
  tail call void @llvm.dbg.value(metadata !{i8* %call2.i451}, i64 0, metadata !1067) #6, !dbg !1068
  %cmp3.i452 = icmp eq i8* %call2.i451, null, !dbg !1068
  br i1 %cmp3.i452, label %if.end5.i, label %if.then4.i454, !dbg !1068

if.then4.i454:                                    ; preds = %if.else.i453
  store i8 0, i8* %call2.i451, align 1, !dbg !1068, !tbaa !601
  br label %if.end5.i, !dbg !1068

if.end5.i:                                        ; preds = %if.then4.i454, %if.else.i453, %if.then.i450
  %191 = load i8** %buf, align 8, !dbg !1069, !tbaa !612
  %call7.i455 = tail call i8* @strtok(i8* %191, i8* getelementptr inbounds ([4 x i8]* @.str114, i64 0, i64 0)) #9, !dbg !1069
  tail call void @llvm.dbg.value(metadata !{i8* %call7.i455}, i64 0, metadata !1070) #6, !dbg !1069
  %cmp8.i456 = icmp eq i8* %call7.i455, null, !dbg !1069
  br i1 %cmp8.i456, label %do.body.preheader.i, label %if.then9.i, !dbg !1069

if.then9.i:                                       ; preds = %if.end5.i
  %192 = load %struct.seqinfo_s** %sqinfo160, align 8, !dbg !1071, !tbaa !612
  %call10.i458 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %192, i8* %call7.i455, i32 1) #9, !dbg !1071
  br label %do.body.preheader.i, !dbg !1071

do.body.preheader.i:                              ; preds = %if.then9.i, %if.end5.i
  %193 = load %struct._IO_FILE** %f, align 8, !dbg !1072, !tbaa !612
  %call1227.i = tail call i32 @feof(%struct._IO_FILE* %193) #9, !dbg !1072
  tail call void @llvm.dbg.value(metadata !{i32 %call1227.i}, i64 0, metadata !1074) #6, !dbg !1072
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !1075
  %tobool28.i = icmp eq i32 %call1227.i, 0, !dbg !1076
  br i1 %tobool28.i, label %if.then13.i462, label %if.end177, !dbg !1076

if.then13.i462:                                   ; preds = %do.body.preheader.i, %if.then13.i462
  %194 = load i8** %buf, align 8, !dbg !1076, !tbaa !612
  tail call fastcc void @addseq(i8* %194, %struct.ReadSeqVars* %V) #9, !dbg !1076
  %195 = load %struct._IO_FILE** %f, align 8, !dbg !1072, !tbaa !612
  %call12.i460 = tail call i32 @feof(%struct._IO_FILE* %195) #9, !dbg !1072
  tail call void @llvm.dbg.value(metadata !{i32 %call12.i460}, i64 0, metadata !1074) #6, !dbg !1072
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #9, !dbg !1075
  %tobool.i461 = icmp eq i32 %call12.i460, 0, !dbg !1076
  br i1 %tobool.i461, label %if.then13.i462, label %if.end177, !dbg !1076

if.end177:                                        ; preds = %if.then13.i462, %do.body.preheader.i, %do.body
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8, !dbg !1077
  %196 = load %struct._IO_FILE** %f, align 8, !dbg !1078, !tbaa !612
  %call179 = tail call i32 @feof(%struct._IO_FILE* %196) #9, !dbg !1078
  %lnot = icmp eq i32 %call179, 0, !dbg !1078
  br i1 %lnot, label %do.body, label %sw.epilog, !dbg !1078

sw.default:                                       ; preds = %if.end158
  store i32 5, i32* @squid_errno, align 4, !dbg !1079, !tbaa !600
  tail call void @free(i8* %43) #9, !dbg !1080
  br label %return, !dbg !1081

sw.epilog:                                        ; preds = %if.end177, %while.body.i444, %lor.rhs.i443, %while.body67.i, %land.rhs62.i, %while.body.i378, %while.body80.i, %land.rhs74.i, %while.body.i323, %lor.rhs.i321, %while.body110.i, %land.rhs103.i, %while.body28.i, %land.rhs22.i, %while.body.i, %lor.rhs19.i, %while.cond.preheader.i441, %do.end.i418, %while.end.i389, %if.end7.i, %if.end64.i, %if.end17.i, %while.cond99.preheader.i, %while.cond18.preheader.i, %while.cond.preheader.i
  %seq183 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15, !dbg !1082
  %197 = load i8** %seq183, align 8, !dbg !1082, !tbaa !612
  %cmp184 = icmp eq i8* %197, null, !dbg !1082
  br i1 %cmp184, label %if.end192, label %if.then186, !dbg !1082

if.then186:                                       ; preds = %sw.epilog
  %198 = load i32* %seqlen159, align 4, !dbg !1083, !tbaa !600
  %idxprom188 = sext i32 %198 to i64, !dbg !1083
  %arrayidx190 = getelementptr inbounds i8* %197, i64 %idxprom188, !dbg !1083
  store i8 0, i8* %arrayidx190, align 1, !dbg !1083, !tbaa !601
  br label %if.end192, !dbg !1083

if.end192:                                        ; preds = %sw.epilog, %if.then186, %if.end144
  %seqlen193 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 18, !dbg !1084
  %199 = load i32* %seqlen193, align 4, !dbg !1084, !tbaa !600
  %len = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 5, !dbg !1084
  store i32 %199, i32* %len, align 4, !dbg !1084, !tbaa !600
  %flags194 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0, !dbg !1085
  %200 = load i32* %flags194, align 4, !dbg !1085, !tbaa !600
  %or195 = or i32 %200, 64, !dbg !1085
  store i32 %or195, i32* %flags194, align 4, !dbg !1085, !tbaa !600
  %seq196 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15, !dbg !1086
  %201 = load i8** %seq196, align 8, !dbg !1086, !tbaa !612
  store i8* %201, i8** %ret_seq, align 8, !dbg !1086, !tbaa !612
  %202 = load i32* @squid_errno, align 4, !dbg !1087, !tbaa !600
  %cmp197 = icmp eq i32 %202, 0, !dbg !1087
  %. = zext i1 %cmp197 to i32, !dbg !1087
  br label %return, !dbg !1087

return:                                           ; preds = %if.end192, %if.else, %if.then4, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %if.then4 ], [ 0, %if.else ], [ %., %if.end192 ]
  ret i32 %retval.0, !dbg !1087
}

; Function Attrs: optsize
declare %struct.msa_struct* @MSAFileRead(%struct.msafile_struct*) #2

; Function Attrs: optsize
declare i32 @MakeDealignedString(i8*, i32, i8*, i8**) #2

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @SeqfileFormat(%struct._IO_FILE* %fp) #0 {
entry:
  %buf = alloca i8*, align 8
  %len = alloca i32, align 4
  %s = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !346), !dbg !1088
  call void @llvm.dbg.declare(metadata !{i8** %buf}, metadata !347), !dbg !1089
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !348), !dbg !1090
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !349), !dbg !1091
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !352), !dbg !1092
  call void @llvm.dbg.value(metadata !1093, i64 0, metadata !347), !dbg !1094
  store i8* null, i8** %buf, align 8, !dbg !1094, !tbaa !612
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !348), !dbg !1095
  store i32 0, i32* %len, align 4, !dbg !1095, !tbaa !600
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !350), !dbg !1096
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !355), !dbg !1097
  br label %while.cond.outer, !dbg !1098

while.cond.outer:                                 ; preds = %if.end179, %entry
  %ndataline.0.ph = phi i32 [ 0, %entry ], [ %inc, %if.end179 ]
  %has_junk.0.ph = phi i32 [ 0, %entry ], [ %has_junk.2, %if.end179 ]
  %call208 = call i8* @sre_fgets(i8** %buf, i32* %len, %struct._IO_FILE* %fp) #9, !dbg !1098
  %cmp209 = icmp eq i8* %call208, null, !dbg !1098
  br i1 %cmp209, label %while.end, label %while.body.lr.ph, !dbg !1098

while.body.lr.ph:                                 ; preds = %while.cond.outer
  %cmp2 = icmp eq i32 %ndataline.0.ph, 0, !dbg !1099
  br label %while.body, !dbg !1098

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  call void @llvm.dbg.value(metadata !{i8** %buf}, i64 0, metadata !347), !dbg !1101
  %0 = load i8** %buf, align 8, !dbg !1101, !tbaa !612
  %call1 = call i32 @IsBlankline(i8* %0) #9, !dbg !1101
  %tobool = icmp eq i32 %call1, 0, !dbg !1101
  br i1 %tobool, label %if.end, label %while.cond.backedge, !dbg !1101

if.end:                                           ; preds = %while.body
  br i1 %cmp2, label %if.then3, label %if.end61, !dbg !1099

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i8** %buf}, i64 0, metadata !347), !dbg !1102
  %1 = load i8** %buf, align 8, !dbg !1102, !tbaa !612
  %call4 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i64 4) #10, !dbg !1102
  %cmp5 = icmp eq i32 %call4, 0, !dbg !1102
  br i1 %cmp5, label %land.lhs.true, label %if.end9, !dbg !1102

land.lhs.true:                                    ; preds = %if.then3
  %call6 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0)) #10, !dbg !1102
  %tobool7 = icmp eq i8* %call6, null, !dbg !1102
  br i1 %tobool7, label %if.end9, label %DONEthread-pre-split, !dbg !1102

if.end9:                                          ; preds = %land.lhs.true, %if.then3
  call void @llvm.dbg.value(metadata !{i8** %buf}, i64 0, metadata !347), !dbg !1104
  %2 = load i8* %1, align 1, !dbg !1104, !tbaa !601
  %cmp10 = icmp eq i8 %2, 62, !dbg !1104
  br i1 %cmp10, label %DONE, label %if.end13, !dbg !1104

if.end13:                                         ; preds = %if.end9
  %call14 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i64 13) #10, !dbg !1105
  %cmp15 = icmp eq i32 %call14, 0, !dbg !1105
  br i1 %cmp15, label %DONEthread-pre-split, label %lor.lhs.false, !dbg !1105

lor.lhs.false:                                    ; preds = %if.end13
  %call17 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0), i64 13) #10, !dbg !1106
  %cmp18 = icmp eq i32 %call17, 0, !dbg !1106
  br i1 %cmp18, label %DONEthread-pre-split, label %if.end21, !dbg !1106

if.end21:                                         ; preds = %lor.lhs.false
  %call22 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i64 14) #10, !dbg !1107
  %cmp23 = icmp eq i32 %call22, 0, !dbg !1107
  br i1 %cmp23, label %DONEthread-pre-split, label %if.end26, !dbg !1107

if.end26:                                         ; preds = %if.end21
  %call27 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i64 7) #10, !dbg !1108
  %cmp28 = icmp eq i32 %call27, 0, !dbg !1108
  br i1 %cmp28, label %land.lhs.true30, label %if.end35, !dbg !1108

land.lhs.true30:                                  ; preds = %if.end26
  %call31 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([28 x i8]* @.str13, i64 0, i64 0)) #10, !dbg !1109
  %cmp32 = icmp eq i8* %call31, null, !dbg !1109
  br i1 %cmp32, label %if.end35, label %DONEthread-pre-split, !dbg !1109

if.end35:                                         ; preds = %land.lhs.true30, %if.end26
  call void @llvm.dbg.value(metadata !{i8** %buf}, i64 0, metadata !347), !dbg !1110
  %call36 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([24 x i8]* @.str14, i64 0, i64 0), i64 23) #10, !dbg !1110
  %cmp37 = icmp eq i32 %call36, 0, !dbg !1110
  br i1 %cmp37, label %DONE, label %lor.lhs.false39, !dbg !1110

lor.lhs.false39:                                  ; preds = %if.end35
  %call40 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([24 x i8]* @.str15, i64 0, i64 0), i64 23) #10, !dbg !1111
  %cmp41 = icmp eq i32 %call40, 0, !dbg !1111
  br i1 %cmp41, label %DONEthread-pre-split, label %if.end44, !dbg !1111

if.end44:                                         ; preds = %lor.lhs.false39
  %call45 = call i8* @sre_strdup(i8* %1, i32 -1) #9, !dbg !1112
  call void @llvm.dbg.value(metadata !{i8* %call45}, i64 0, metadata !351), !dbg !1112
  call void @llvm.dbg.value(metadata !{i8* %call45}, i64 0, metadata !352), !dbg !1113
  call void @llvm.dbg.value(metadata !{i8* %call45}, i64 0, metadata !352), !dbg !1113
  store i8* %call45, i8** %s, align 8, !dbg !1113, !tbaa !612
  %call46 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* null) #9, !dbg !1114
  call void @llvm.dbg.value(metadata !{i8* %call46}, i64 0, metadata !353), !dbg !1114
  %cmp47 = icmp eq i8* %call46, null, !dbg !1114
  br i1 %cmp47, label %if.end60, label %land.lhs.true49, !dbg !1114

land.lhs.true49:                                  ; preds = %if.end44
  %call50 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* null) #9, !dbg !1115
  call void @llvm.dbg.value(metadata !{i8* %call50}, i64 0, metadata !354), !dbg !1115
  %cmp51 = icmp eq i8* %call50, null, !dbg !1115
  br i1 %cmp51, label %if.end60, label %land.lhs.true53, !dbg !1115

land.lhs.true53:                                  ; preds = %land.lhs.true49
  %call54 = call i32 @IsInt(i8* %call46) #9, !dbg !1116
  %tobool55 = icmp eq i32 %call54, 0, !dbg !1116
  br i1 %tobool55, label %if.end60, label %land.lhs.true56, !dbg !1116

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %call57 = call i32 @IsInt(i8* %call50) #9, !dbg !1117
  %tobool58 = icmp eq i32 %call57, 0, !dbg !1117
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !1117

if.then59:                                        ; preds = %land.lhs.true56
  call void @free(i8* %call45) #9, !dbg !1118
  call void @llvm.dbg.value(metadata !1120, i64 0, metadata !349), !dbg !1118
  br label %DONEthread-pre-split, !dbg !1118

if.end60:                                         ; preds = %land.lhs.true56, %land.lhs.true53, %land.lhs.true49, %if.end44
  call void @free(i8* %call45) #9, !dbg !1121
  br label %if.end61, !dbg !1122

if.end61:                                         ; preds = %if.end60, %if.end
  call void @llvm.dbg.value(metadata !{i8** %buf}, i64 0, metadata !347), !dbg !1123
  %3 = load i8** %buf, align 8, !dbg !1123, !tbaa !612
  %call62 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i64 4) #10, !dbg !1123
  %cmp63 = icmp eq i32 %call62, 0, !dbg !1123
  br i1 %cmp63, label %DONE, label %lor.lhs.false65, !dbg !1123

lor.lhs.false65:                                  ; preds = %if.end61
  %call66 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4) #10, !dbg !1124
  %cmp67 = icmp eq i32 %call66, 0, !dbg !1124
  br i1 %cmp67, label %DONEthread-pre-split, label %lor.lhs.false69, !dbg !1124

lor.lhs.false69:                                  ; preds = %lor.lhs.false65
  %call70 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i64 4) #10, !dbg !1125
  %cmp71 = icmp eq i32 %call70, 0, !dbg !1125
  br i1 %cmp71, label %DONEthread-pre-split, label %lor.lhs.false73, !dbg !1125

lor.lhs.false73:                                  ; preds = %lor.lhs.false69
  %call74 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i64 4) #10, !dbg !1126
  %cmp75 = icmp eq i32 %call74, 0, !dbg !1126
  br i1 %cmp75, label %DONEthread-pre-split, label %lor.lhs.false77, !dbg !1126

lor.lhs.false77:                                  ; preds = %lor.lhs.false73
  %call78 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i64 4) #10, !dbg !1127
  %cmp79 = icmp eq i32 %call78, 0, !dbg !1127
  br i1 %cmp79, label %DONEthread-pre-split, label %lor.lhs.false81, !dbg !1127

lor.lhs.false81:                                  ; preds = %lor.lhs.false77
  %call82 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i64 4) #10, !dbg !1128
  %cmp83 = icmp eq i32 %call82, 0, !dbg !1128
  br i1 %cmp83, label %DONEthread-pre-split, label %lor.lhs.false85, !dbg !1128

lor.lhs.false85:                                  ; preds = %lor.lhs.false81
  %call86 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i64 4) #10, !dbg !1129
  %cmp87 = icmp eq i32 %call86, 0, !dbg !1129
  br i1 %cmp87, label %DONEthread-pre-split, label %lor.lhs.false89, !dbg !1129

lor.lhs.false89:                                  ; preds = %lor.lhs.false85
  %call90 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0), i64 4) #10, !dbg !1130
  %cmp91 = icmp eq i32 %call90, 0, !dbg !1130
  br i1 %cmp91, label %DONEthread-pre-split, label %lor.lhs.false93, !dbg !1130

lor.lhs.false93:                                  ; preds = %lor.lhs.false89
  %call94 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i64 4) #10, !dbg !1131
  %cmp95 = icmp eq i32 %call94, 0, !dbg !1131
  br i1 %cmp95, label %DONEthread-pre-split, label %lor.lhs.false97, !dbg !1131

lor.lhs.false97:                                  ; preds = %lor.lhs.false93
  %call98 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0), i64 4) #10, !dbg !1132
  %cmp99 = icmp eq i32 %call98, 0, !dbg !1132
  br i1 %cmp99, label %DONEthread-pre-split, label %lor.lhs.false101, !dbg !1132

lor.lhs.false101:                                 ; preds = %lor.lhs.false97
  %call102 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str27, i64 0, i64 0), i64 4) #10, !dbg !1133
  %cmp103 = icmp eq i32 %call102, 0, !dbg !1133
  br i1 %cmp103, label %DONEthread-pre-split, label %if.end106, !dbg !1133

if.end106:                                        ; preds = %lor.lhs.false101
  %call107 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0), i64 3) #10, !dbg !1134
  %cmp108 = icmp eq i32 %call107, 0, !dbg !1134
  br i1 %cmp108, label %DONEthread-pre-split, label %lor.lhs.false110, !dbg !1134

lor.lhs.false110:                                 ; preds = %if.end106
  %call111 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([7 x i8]* @.str29, i64 0, i64 0), i64 6) #10, !dbg !1134
  %cmp112 = icmp eq i32 %call111, 0, !dbg !1134
  br i1 %cmp112, label %DONEthread-pre-split, label %if.end115, !dbg !1134

if.end115:                                        ; preds = %lor.lhs.false110
  %call116 = call i8* @strstr(i8* %3, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #10, !dbg !1135
  %cmp117 = icmp eq i8* %call116, null, !dbg !1135
  br i1 %cmp117, label %if.end128, label %land.lhs.true119, !dbg !1135

land.lhs.true119:                                 ; preds = %if.end115
  %call120 = call i8* @strstr(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str30, i64 0, i64 0)) #10, !dbg !1136
  %cmp121 = icmp eq i8* %call120, null, !dbg !1136
  br i1 %cmp121, label %if.end128, label %land.lhs.true123, !dbg !1136

land.lhs.true123:                                 ; preds = %land.lhs.true119
  %call124 = call i8* @strstr(i8* %3, i8* getelementptr inbounds ([7 x i8]* @.str31, i64 0, i64 0)) #10, !dbg !1137
  %cmp125 = icmp eq i8* %call124, null, !dbg !1137
  br i1 %cmp125, label %if.end128, label %DONEthread-pre-split, !dbg !1137

if.end128:                                        ; preds = %land.lhs.true123, %land.lhs.true119, %if.end115
  call void @llvm.dbg.value(metadata !{i8** %buf}, i64 0, metadata !347), !dbg !1138
  %call129 = call i8* @strstr(i8* %3, i8* getelementptr inbounds ([9 x i8]* @.str32, i64 0, i64 0)) #10, !dbg !1138
  %cmp130 = icmp eq i8* %call129, null, !dbg !1138
  %brmerge = or i1 %cmp130, %cmp117, !dbg !1138
  br i1 %brmerge, label %if.end137, label %DONEthread-pre-split, !dbg !1138

if.end137:                                        ; preds = %if.end128
  call void @llvm.dbg.value(metadata !{i8** %buf}, i64 0, metadata !347), !dbg !1139
  %call138 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([7 x i8]* @.str33, i64 0, i64 0), i64 6) #10, !dbg !1139
  %cmp139 = icmp eq i32 %call138, 0, !dbg !1139
  br i1 %cmp139, label %DONE, label %lor.lhs.false141, !dbg !1139

lor.lhs.false141:                                 ; preds = %if.end137
  %call142 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i64 6) #10, !dbg !1139
  %cmp143 = icmp eq i32 %call142, 0, !dbg !1139
  br i1 %cmp143, label %DONEthread-pre-split, label %if.end146, !dbg !1139

if.end146:                                        ; preds = %lor.lhs.false141
  %call147 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), i64 5) #10, !dbg !1140
  %cmp148 = icmp eq i32 %call147, 0, !dbg !1140
  br i1 %cmp148, label %DONEthread-pre-split, label %lor.lhs.false150, !dbg !1140

lor.lhs.false150:                                 ; preds = %if.end146
  %call151 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([6 x i8]* @.str36, i64 0, i64 0), i64 5) #10, !dbg !1140
  %cmp152 = icmp eq i32 %call151, 0, !dbg !1140
  br i1 %cmp152, label %DONEthread-pre-split, label %if.end155, !dbg !1140

if.end155:                                        ; preds = %lor.lhs.false150
  call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !352), !dbg !1141
  store i8* %3, i8** %s, align 8, !dbg !1141, !tbaa !612
  %call156 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* null) #9, !dbg !1142
  call void @llvm.dbg.value(metadata !{i8* %call156}, i64 0, metadata !353), !dbg !1142
  %cmp157 = icmp eq i8* %call156, null, !dbg !1142
  br i1 %cmp157, label %while.cond.backedge, label %if.end160, !dbg !1142

while.cond.backedge:                              ; preds = %if.end155, %while.body, %if.end160
  %call = call i8* @sre_fgets(i8** %buf, i32* %len, %struct._IO_FILE* %fp) #9, !dbg !1098
  %cmp = icmp eq i8* %call, null, !dbg !1098
  br i1 %cmp, label %while.end, label %while.body, !dbg !1098

if.end160:                                        ; preds = %if.end155
  %4 = load i8* %call156, align 1, !dbg !1143, !tbaa !601
  %conv161 = sext i8 %4 to i32, !dbg !1143
  %memchr = call i8* @memchr(i8* getelementptr inbounds ([3 x i8]* @.str37, i64 0, i64 0), i32 %conv161, i64 3), !dbg !1143
  %cmp163 = icmp eq i8* %memchr, null, !dbg !1143
  br i1 %cmp163, label %if.end166, label %while.cond.backedge, !dbg !1143

if.end166:                                        ; preds = %if.end160
  %call167 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* null) #9, !dbg !1144
  call void @llvm.dbg.value(metadata !{i8* %call167}, i64 0, metadata !354), !dbg !1144
  %cmp168 = icmp eq i8* %call167, null, !dbg !1144
  call void @llvm.dbg.value(metadata !1036, i64 0, metadata !355), !dbg !1145
  %.has_junk.0 = select i1 %cmp168, i32 1, i32 %has_junk.0.ph, !dbg !1144
  br i1 %cmp168, label %if.end179, label %land.lhs.true174, !dbg !1146

land.lhs.true174:                                 ; preds = %if.end166
  %call175 = call i32 @Seqtype(i8* %call167) #8, !dbg !1146
  %cmp176 = icmp eq i32 %call175, 0, !dbg !1146
  call void @llvm.dbg.value(metadata !1036, i64 0, metadata !355), !dbg !1147
  %..has_junk.0 = select i1 %cmp176, i32 1, i32 %.has_junk.0, !dbg !1146
  br label %if.end179, !dbg !1146

if.end179:                                        ; preds = %land.lhs.true174, %if.end166
  %has_junk.2 = phi i32 [ %.has_junk.0, %if.end166 ], [ %..has_junk.0, %land.lhs.true174 ]
  %inc = add nsw i32 %ndataline.0.ph, 1, !dbg !1148
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !350), !dbg !1148
  %cmp180 = icmp eq i32 %inc, 300, !dbg !1149
  br i1 %cmp180, label %if.end187, label %while.cond.outer, !dbg !1149

while.end:                                        ; preds = %while.cond.outer, %while.cond.backedge
  %cmp184 = icmp eq i32 %ndataline.0.ph, 0, !dbg !1150
  br i1 %cmp184, label %if.then186, label %if.end187, !dbg !1150

if.then186:                                       ; preds = %while.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([31 x i8]* @.str38, i64 0, i64 0)) #9, !dbg !1151
  br label %if.end187, !dbg !1151

if.end187:                                        ; preds = %if.end179, %if.then186, %while.end
  %has_junk.3206 = phi i32 [ %has_junk.0.ph, %if.then186 ], [ %has_junk.0.ph, %while.end ], [ %has_junk.2, %if.end179 ]
  %cmp188 = icmp eq i32 %has_junk.3206, 1, !dbg !1152
  %. = select i1 %cmp188, i32 0, i32 102, !dbg !1152
  br label %DONEthread-pre-split, !dbg !1152

DONEthread-pre-split:                             ; preds = %if.end128, %land.lhs.true, %lor.lhs.false, %if.end13, %if.end21, %land.lhs.true30, %lor.lhs.false39, %lor.lhs.false101, %lor.lhs.false97, %lor.lhs.false93, %lor.lhs.false89, %lor.lhs.false85, %lor.lhs.false81, %lor.lhs.false77, %lor.lhs.false73, %lor.lhs.false69, %lor.lhs.false65, %lor.lhs.false110, %if.end106, %land.lhs.true123, %lor.lhs.false141, %lor.lhs.false150, %if.end146, %if.then59, %if.end187
  %fmt.0.ph = phi i32 [ %., %if.end187 ], [ 106, %if.then59 ], [ 16, %land.lhs.true ], [ 5, %lor.lhs.false ], [ 5, %if.end13 ], [ 101, %if.end21 ], [ 104, %land.lhs.true30 ], [ 103, %lor.lhs.false39 ], [ 102, %lor.lhs.false101 ], [ 102, %lor.lhs.false97 ], [ 102, %lor.lhs.false93 ], [ 102, %lor.lhs.false89 ], [ 102, %lor.lhs.false85 ], [ 102, %lor.lhs.false81 ], [ 102, %lor.lhs.false77 ], [ 102, %lor.lhs.false73 ], [ 102, %lor.lhs.false69 ], [ 102, %lor.lhs.false65 ], [ 12, %lor.lhs.false110 ], [ 12, %if.end106 ], [ 103, %land.lhs.true123 ], [ 2, %lor.lhs.false141 ], [ 4, %lor.lhs.false150 ], [ 4, %if.end146 ], [ 5, %if.end128 ]
  call void @llvm.dbg.value(metadata !{i8** %buf}, i64 0, metadata !347), !dbg !1153
  %.pr = load i8** %buf, align 8, !dbg !1153, !tbaa !612
  br label %DONE

DONE:                                             ; preds = %if.end137, %if.end61, %if.end35, %if.end9, %DONEthread-pre-split
  %5 = phi i8* [ %.pr, %DONEthread-pre-split ], [ %3, %if.end137 ], [ %3, %if.end61 ], [ %1, %if.end35 ], [ %1, %if.end9 ], !dbg !1153
  %fmt.0 = phi i32 [ %fmt.0.ph, %DONEthread-pre-split ], [ 2, %if.end137 ], [ 102, %if.end61 ], [ 103, %if.end35 ], [ 7, %if.end9 ]
  call void @llvm.dbg.value(metadata !{i8** %buf}, i64 0, metadata !347), !dbg !1153
  %cmp192 = icmp eq i8* %5, null, !dbg !1153
  br i1 %cmp192, label %if.end195, label %if.then194, !dbg !1153

if.then194:                                       ; preds = %DONE
  call void @free(i8* %5) #9, !dbg !1153
  br label %if.end195, !dbg !1153

if.end195:                                        ; preds = %DONE, %if.then194
  call void @rewind(%struct._IO_FILE* %fp) #9, !dbg !1154
  ret i32 %fmt.0, !dbg !1155
}

; Function Attrs: optsize
declare i8* @sre_fgets(i8**, i32*, %struct._IO_FILE*) #2

; Function Attrs: optsize
declare i32 @IsBlankline(i8*) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #2

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Seqtype(i8* nocapture %seq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %seq}, i64 0, metadata !384), !dbg !1156
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !387), !dbg !1157
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !388), !dbg !1158
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !389), !dbg !1159
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !390), !dbg !1160
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !391), !dbg !1161
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !392), !dbg !1162
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !385), !dbg !1163
  %0 = load i8* %seq, align 1, !dbg !1163, !tbaa !601
  %cmp101 = icmp eq i8 %0, 0, !dbg !1163
  br i1 %cmp101, label %return, label %for.body, !dbg !1163

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi i8 [ %4, %for.inc ], [ %0, %entry ]
  %no.0109 = phi i32 [ %no.2, %for.inc ], [ 0, %entry ]
  %aa.0108 = phi i32 [ %aa.2, %for.inc ], [ 0, %entry ]
  %na.0107 = phi i32 [ %na.2, %for.inc ], [ 0, %entry ]
  %nu.0106 = phi i32 [ %nu.2, %for.inc ], [ 0, %entry ]
  %nt.0105 = phi i32 [ %nt.2, %for.inc ], [ 0, %entry ]
  %po.0104 = phi i32 [ %po.2, %for.inc ], [ 0, %entry ]
  %saw.0103 = phi i32 [ %saw.1, %for.inc ], [ 0, %entry ]
  %seq.addr.0102 = phi i8* [ %incdec.ptr, %for.inc ], [ %seq, %entry ]
  %conv = sext i8 %1 to i32, !dbg !1163
  %call = tail call i32 @sre_toupper(i32 %conv) #9, !dbg !1165
  %sext = shl i32 %call, 24, !dbg !1167
  %conv6 = ashr exact i32 %sext, 24, !dbg !1167
  switch i32 %conv6, label %if.then [
    i32 32, label %for.inc
    i32 46, label %for.inc
    i32 95, label %for.inc
    i32 45, label %for.inc
    i32 126, label %for.inc
  ], !dbg !1167

if.then:                                          ; preds = %for.body
  %memchr = tail call i8* @memchr(i8* getelementptr inbounds ([7 x i8]* @.str112, i64 0, i64 0), i32 %conv6, i64 7), !dbg !1168
  %tobool = icmp eq i8* %memchr, null, !dbg !1168
  br i1 %tobool, label %if.else, label %if.then26, !dbg !1168

if.then26:                                        ; preds = %if.then
  %inc = add nsw i32 %po.0104, 1, !dbg !1168
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !387), !dbg !1168
  br label %if.end60, !dbg !1168

if.else:                                          ; preds = %if.then
  %memchr98 = tail call i8* @memchr(i8* getelementptr inbounds ([7 x i8]* @.str111, i64 0, i64 0), i32 %conv6, i64 7), !dbg !1170
  %tobool29 = icmp eq i8* %memchr98, null, !dbg !1170
  br i1 %tobool29, label %if.else44, label %if.then30, !dbg !1170

if.then30:                                        ; preds = %if.else
  %inc31 = add nsw i32 %na.0107, 1, !dbg !1171
  tail call void @llvm.dbg.value(metadata !{i32 %inc31}, i64 0, metadata !390), !dbg !1171
  switch i32 %conv6, label %if.end60 [
    i32 84, label %if.then35
    i32 85, label %if.then41
  ], !dbg !1173

if.then35:                                        ; preds = %if.then30
  %inc36 = add nsw i32 %nt.0105, 1, !dbg !1173
  tail call void @llvm.dbg.value(metadata !{i32 %inc36}, i64 0, metadata !388), !dbg !1173
  br label %if.end60, !dbg !1173

if.then41:                                        ; preds = %if.then30
  %inc42 = add nsw i32 %nu.0106, 1, !dbg !1174
  tail call void @llvm.dbg.value(metadata !{i32 %inc42}, i64 0, metadata !389), !dbg !1174
  br label %if.end60, !dbg !1174

if.else44:                                        ; preds = %if.else
  %memchr99 = tail call i8* @memchr(i8* getelementptr inbounds ([25 x i8]* @.str110, i64 0, i64 0), i32 %conv6, i64 25), !dbg !1175
  %tobool47 = icmp eq i8* %memchr99, null, !dbg !1175
  br i1 %tobool47, label %if.else50, label %if.then48, !dbg !1175

if.then48:                                        ; preds = %if.else44
  %inc49 = add nsw i32 %aa.0108, 1, !dbg !1175
  tail call void @llvm.dbg.value(metadata !{i32 %inc49}, i64 0, metadata !391), !dbg !1175
  br label %if.end60, !dbg !1175

if.else50:                                        ; preds = %if.else44
  %idxprom = sext i32 %conv6 to i64, !dbg !1176
  %call52 = tail call i16** @__ctype_b_loc() #11, !dbg !1176
  %2 = load i16** %call52, align 8, !dbg !1176, !tbaa !612
  %arrayidx = getelementptr inbounds i16* %2, i64 %idxprom, !dbg !1176
  %3 = load i16* %arrayidx, align 2, !dbg !1176, !tbaa !722
  %and = lshr i16 %3, 10, !dbg !1176
  %and.lobit = and i16 %and, 1, !dbg !1176
  %inc56 = zext i16 %and.lobit to i32, !dbg !1176
  %no.0.inc56 = add nsw i32 %inc56, %no.0109, !dbg !1176
  br label %if.end60, !dbg !1176

if.end60:                                         ; preds = %if.else50, %if.then30, %if.then41, %if.then35, %if.then48, %if.then26
  %po.1 = phi i32 [ %inc, %if.then26 ], [ %po.0104, %if.then35 ], [ %po.0104, %if.then41 ], [ %po.0104, %if.then48 ], [ %po.0104, %if.then30 ], [ %po.0104, %if.else50 ]
  %nt.1 = phi i32 [ %nt.0105, %if.then26 ], [ %inc36, %if.then35 ], [ %nt.0105, %if.then41 ], [ %nt.0105, %if.then48 ], [ %nt.0105, %if.then30 ], [ %nt.0105, %if.else50 ]
  %nu.1 = phi i32 [ %nu.0106, %if.then26 ], [ %nu.0106, %if.then35 ], [ %inc42, %if.then41 ], [ %nu.0106, %if.then48 ], [ %nu.0106, %if.then30 ], [ %nu.0106, %if.else50 ]
  %na.1 = phi i32 [ %na.0107, %if.then26 ], [ %inc31, %if.then35 ], [ %inc31, %if.then41 ], [ %na.0107, %if.then48 ], [ %inc31, %if.then30 ], [ %na.0107, %if.else50 ]
  %aa.1 = phi i32 [ %aa.0108, %if.then26 ], [ %aa.0108, %if.then35 ], [ %aa.0108, %if.then41 ], [ %inc49, %if.then48 ], [ %aa.0108, %if.then30 ], [ %aa.0108, %if.else50 ]
  %no.1 = phi i32 [ %no.0109, %if.then26 ], [ %no.0109, %if.then35 ], [ %no.0109, %if.then41 ], [ %no.0109, %if.then48 ], [ %no.0109, %if.then30 ], [ %no.0.inc56, %if.else50 ]
  %inc61 = add nsw i32 %saw.0103, 1, !dbg !1177
  tail call void @llvm.dbg.value(metadata !{i32 %inc61}, i64 0, metadata !385), !dbg !1177
  br label %for.inc, !dbg !1178

for.inc:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %if.end60
  %saw.1 = phi i32 [ %saw.0103, %for.body ], [ %inc61, %if.end60 ], [ %saw.0103, %for.body ], [ %saw.0103, %for.body ], [ %saw.0103, %for.body ], [ %saw.0103, %for.body ]
  %po.2 = phi i32 [ %po.0104, %for.body ], [ %po.1, %if.end60 ], [ %po.0104, %for.body ], [ %po.0104, %for.body ], [ %po.0104, %for.body ], [ %po.0104, %for.body ]
  %nt.2 = phi i32 [ %nt.0105, %for.body ], [ %nt.1, %if.end60 ], [ %nt.0105, %for.body ], [ %nt.0105, %for.body ], [ %nt.0105, %for.body ], [ %nt.0105, %for.body ]
  %nu.2 = phi i32 [ %nu.0106, %for.body ], [ %nu.1, %if.end60 ], [ %nu.0106, %for.body ], [ %nu.0106, %for.body ], [ %nu.0106, %for.body ], [ %nu.0106, %for.body ]
  %na.2 = phi i32 [ %na.0107, %for.body ], [ %na.1, %if.end60 ], [ %na.0107, %for.body ], [ %na.0107, %for.body ], [ %na.0107, %for.body ], [ %na.0107, %for.body ]
  %aa.2 = phi i32 [ %aa.0108, %for.body ], [ %aa.1, %if.end60 ], [ %aa.0108, %for.body ], [ %aa.0108, %for.body ], [ %aa.0108, %for.body ], [ %aa.0108, %for.body ]
  %no.2 = phi i32 [ %no.0109, %for.body ], [ %no.1, %if.end60 ], [ %no.0109, %for.body ], [ %no.0109, %for.body ], [ %no.0109, %for.body ], [ %no.0109, %for.body ]
  %incdec.ptr = getelementptr inbounds i8* %seq.addr.0102, i64 1, !dbg !1163
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !384), !dbg !1163
  %4 = load i8* %incdec.ptr, align 1, !dbg !1163, !tbaa !601
  %cmp = icmp ne i8 %4, 0, !dbg !1163
  %cmp2 = icmp slt i32 %saw.1, 300, !dbg !1163
  %or.cond = and i1 %cmp, %cmp2, !dbg !1163
  br i1 %or.cond, label %for.body, label %for.end, !dbg !1163

for.end:                                          ; preds = %for.inc
  %cmp63 = icmp sgt i32 %no.2, 0, !dbg !1179
  br i1 %cmp63, label %return, label %if.else66, !dbg !1179

if.else66:                                        ; preds = %for.end
  %cmp67 = icmp slt i32 %po.2, 1, !dbg !1180
  %cmp71 = icmp sgt i32 %na.2, %aa.2, !dbg !1181
  %or.cond100 = and i1 %cmp67, %cmp71, !dbg !1180
  br i1 %or.cond100, label %if.then73, label %return, !dbg !1180

if.then73:                                        ; preds = %if.else66
  %cmp74 = icmp sgt i32 %nu.2, %nt.2, !dbg !1182
  %. = select i1 %cmp74, i32 2, i32 1, !dbg !1182
  br label %return, !dbg !1182

return:                                           ; preds = %entry, %if.else66, %if.then73, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ 3, %if.else66 ], [ %., %if.then73 ], [ 3, %entry ]
  ret i32 %retval.0, !dbg !1184
}

; Function Attrs: nounwind optsize uwtable
define i32 @GCGBinaryToSequence(i8* nocapture %seq, i32 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %seq}, i64 0, metadata !360), !dbg !1185
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !361), !dbg !1185
  %sub = add nsw i32 %len, -1, !dbg !1186
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !362), !dbg !1186
  %cmp46 = icmp sgt i32 %sub, -4, !dbg !1186
  br i1 %cmp46, label %for.body.lr.ph, label %for.end22, !dbg !1186

for.body.lr.ph:                                   ; preds = %entry
  %div = sdiv i32 %sub, 4, !dbg !1186
  %0 = sext i32 %div to i64
  br label %for.body, !dbg !1186

for.body:                                         ; preds = %for.body.lr.ph, %for.inc20
  %indvars.iv52 = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next53, %for.inc20 ]
  %arrayidx = getelementptr inbounds i8* %seq, i64 %indvars.iv52, !dbg !1188
  %1 = load i8* %arrayidx, align 1, !dbg !1188, !tbaa !601
  tail call void @llvm.dbg.value(metadata !{i8 %1}, i64 0, metadata !364), !dbg !1188
  %2 = trunc i64 %indvars.iv52 to i32, !dbg !1190
  %mul = shl nsw i32 %2, 2, !dbg !1190
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !363), !dbg !1190
  tail call void @llvm.dbg.value(metadata !1191, i64 0, metadata !365), !dbg !1192
  %3 = sext i32 %mul to i64, !dbg !1192
  br label %for.body3, !dbg !1192

for.body3:                                        ; preds = %for.body, %sw.epilog
  %indvars.iv = phi i64 [ 3, %for.body ], [ %indvars.iv.next, %sw.epilog ]
  %twobit.044 = phi i8 [ %1, %for.body ], [ %conv19, %sw.epilog ]
  %conv = sext i8 %twobit.044 to i32, !dbg !1194
  %and = and i32 %conv, 3, !dbg !1194
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb10
    i32 3, label %sw.bb14
  ], !dbg !1194

sw.bb:                                            ; preds = %for.body3
  %4 = add nsw i64 %indvars.iv, %3, !dbg !1196
  %arrayidx5 = getelementptr inbounds i8* %seq, i64 %4, !dbg !1196
  store i8 67, i8* %arrayidx5, align 1, !dbg !1196, !tbaa !601
  br label %sw.epilog, !dbg !1196

sw.bb6:                                           ; preds = %for.body3
  %5 = add nsw i64 %indvars.iv, %3, !dbg !1198
  %arrayidx9 = getelementptr inbounds i8* %seq, i64 %5, !dbg !1198
  store i8 84, i8* %arrayidx9, align 1, !dbg !1198, !tbaa !601
  br label %sw.epilog, !dbg !1198

sw.bb10:                                          ; preds = %for.body3
  %6 = add nsw i64 %indvars.iv, %3, !dbg !1199
  %arrayidx13 = getelementptr inbounds i8* %seq, i64 %6, !dbg !1199
  store i8 65, i8* %arrayidx13, align 1, !dbg !1199, !tbaa !601
  br label %sw.epilog, !dbg !1199

sw.bb14:                                          ; preds = %for.body3
  %7 = add nsw i64 %indvars.iv, %3, !dbg !1200
  %arrayidx17 = getelementptr inbounds i8* %seq, i64 %7, !dbg !1200
  store i8 71, i8* %arrayidx17, align 1, !dbg !1200, !tbaa !601
  br label %sw.epilog, !dbg !1200

sw.epilog:                                        ; preds = %for.body3, %sw.bb14, %sw.bb10, %sw.bb6, %sw.bb
  %shr43 = lshr i32 %conv, 2, !dbg !1201
  %conv19 = trunc i32 %shr43 to i8, !dbg !1201
  tail call void @llvm.dbg.value(metadata !{i8 %conv19}, i64 0, metadata !364), !dbg !1201
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !1192
  %8 = trunc i64 %indvars.iv to i32, !dbg !1192
  %cmp2 = icmp sgt i32 %8, 0, !dbg !1192
  br i1 %cmp2, label %for.body3, label %for.inc20, !dbg !1192

for.inc20:                                        ; preds = %sw.epilog
  %indvars.iv.next53 = add i64 %indvars.iv52, -1, !dbg !1186
  %cmp = icmp sgt i32 %2, 0, !dbg !1186
  br i1 %cmp, label %for.body, label %for.end22, !dbg !1186

for.end22:                                        ; preds = %for.inc20, %entry
  %idxprom23 = sext i32 %len to i64, !dbg !1202
  %arrayidx24 = getelementptr inbounds i8* %seq, i64 %idxprom23, !dbg !1202
  store i8 0, i8* %arrayidx24, align 1, !dbg !1202, !tbaa !601
  ret i32 1, !dbg !1203
}

; Function Attrs: nounwind optsize uwtable
define i32 @GCGchecksum(i8* nocapture %seq, i32 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %seq}, i64 0, metadata !368), !dbg !1204
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !369), !dbg !1204
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !371), !dbg !1205
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !370), !dbg !1206
  %cmp6 = icmp sgt i32 %len, 0, !dbg !1206
  br i1 %cmp6, label %for.body, label %for.end, !dbg !1206

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %chk.08 = phi i32 [ %rem2, %for.body ], [ 0, %entry ]
  %0 = trunc i64 %indvars.iv to i32, !dbg !1208
  %rem = srem i32 %0, 57, !dbg !1208
  %add = add nsw i32 %rem, 1, !dbg !1208
  %arrayidx = getelementptr inbounds i8* %seq, i64 %indvars.iv, !dbg !1208
  %1 = load i8* %arrayidx, align 1, !dbg !1208, !tbaa !601
  %conv = sext i8 %1 to i32, !dbg !1208
  %call = tail call i32 @sre_toupper(i32 %conv) #9, !dbg !1208
  %mul = mul nsw i32 %call, %add, !dbg !1208
  %add1 = add nsw i32 %mul, %chk.08, !dbg !1208
  %rem2 = srem i32 %add1, 10000, !dbg !1208
  tail call void @llvm.dbg.value(metadata !{i32 %rem2}, i64 0, metadata !371), !dbg !1208
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1206
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1206
  %exitcond = icmp eq i32 %lftr.wideiv, %len, !dbg !1206
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1206

for.end:                                          ; preds = %for.body, %entry
  %chk.0.lcssa = phi i32 [ 0, %entry ], [ %rem2, %for.body ]
  ret i32 %chk.0.lcssa, !dbg !1209
}

; Function Attrs: optsize
declare i32 @sre_toupper(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @GCGMultchecksum(i8** nocapture %seqs, i32 %nseq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %seqs}, i64 0, metadata !376), !dbg !1210
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !377), !dbg !1210
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !378), !dbg !1211
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !379), !dbg !1212
  %cmp8 = icmp sgt i32 %nseq, 0, !dbg !1212
  br i1 %cmp8, label %for.body, label %for.end, !dbg !1212

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %chk.09 = phi i32 [ %rem, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %seqs, i64 %indvars.iv, !dbg !1214
  %0 = load i8** %arrayidx, align 8, !dbg !1214, !tbaa !612
  %call = tail call i64 @strlen(i8* %0) #10, !dbg !1214
  %conv = trunc i64 %call to i32, !dbg !1214
  %call3 = tail call i32 @GCGchecksum(i8* %0, i32 %conv) #8, !dbg !1214
  %add = add nsw i32 %call3, %chk.09, !dbg !1214
  %rem = srem i32 %add, 10000, !dbg !1214
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !378), !dbg !1214
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1212
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1212
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !1212
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1212

for.end:                                          ; preds = %for.body, %entry
  %chk.0.lcssa = phi i32 [ 0, %entry ], [ %rem, %for.body ]
  ret i32 %chk.0.lcssa, !dbg !1215
}

; Function Attrs: nounwind optsize uwtable
define i32 @GuessAlignmentSeqtype(i8** nocapture %aseq, i32 %nseq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %aseq}, i64 0, metadata !395), !dbg !1216
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !396), !dbg !1216
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !398), !dbg !1217
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !399), !dbg !1218
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !400), !dbg !1219
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !401), !dbg !1220
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !397), !dbg !1221
  %cmp29 = icmp sgt i32 %nseq, 0, !dbg !1221
  br i1 %cmp29, label %for.body, label %if.end, !dbg !1221

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %nother.034 = phi i32 [ %nother.1, %for.inc ], [ 0, %entry ]
  %namino.033 = phi i32 [ %namino.1, %for.inc ], [ 0, %entry ]
  %ndna.032 = phi i32 [ %ndna.1, %for.inc ], [ 0, %entry ]
  %nrna.031 = phi i32 [ %nrna.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %aseq, i64 %indvars.iv, !dbg !1223
  %0 = load i8** %arrayidx, align 8, !dbg !1223, !tbaa !612
  %call = tail call i32 @Seqtype(i8* %0) #8, !dbg !1223
  switch i32 %call, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb3
  ], !dbg !1223

sw.bb:                                            ; preds = %for.body
  %inc = add nsw i32 %nrna.031, 1, !dbg !1224
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !398), !dbg !1224
  br label %for.inc, !dbg !1224

sw.bb1:                                           ; preds = %for.body
  %inc2 = add nsw i32 %ndna.032, 1, !dbg !1226
  tail call void @llvm.dbg.value(metadata !{i32 %inc2}, i64 0, metadata !399), !dbg !1226
  br label %for.inc, !dbg !1226

sw.bb3:                                           ; preds = %for.body
  %inc4 = add nsw i32 %namino.033, 1, !dbg !1227
  tail call void @llvm.dbg.value(metadata !{i32 %inc4}, i64 0, metadata !400), !dbg !1227
  br label %for.inc, !dbg !1227

sw.default:                                       ; preds = %for.body
  %inc5 = add nsw i32 %nother.034, 1, !dbg !1228
  tail call void @llvm.dbg.value(metadata !{i32 %inc5}, i64 0, metadata !401), !dbg !1228
  br label %for.inc, !dbg !1229

for.inc:                                          ; preds = %sw.bb, %sw.bb1, %sw.bb3, %sw.default
  %nrna.1 = phi i32 [ %nrna.031, %sw.default ], [ %nrna.031, %sw.bb3 ], [ %nrna.031, %sw.bb1 ], [ %inc, %sw.bb ]
  %ndna.1 = phi i32 [ %ndna.032, %sw.default ], [ %ndna.032, %sw.bb3 ], [ %inc2, %sw.bb1 ], [ %ndna.032, %sw.bb ]
  %namino.1 = phi i32 [ %namino.033, %sw.default ], [ %inc4, %sw.bb3 ], [ %namino.033, %sw.bb1 ], [ %namino.033, %sw.bb ]
  %nother.1 = phi i32 [ %inc5, %sw.default ], [ %nother.034, %sw.bb3 ], [ %nother.034, %sw.bb1 ], [ %nother.034, %sw.bb ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1221
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !1221
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !1221
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1221

for.end:                                          ; preds = %for.inc
  %tobool = icmp eq i32 %nother.1, 0, !dbg !1230
  br i1 %tobool, label %if.end, label %return, !dbg !1230

if.end:                                           ; preds = %entry, %for.end
  %nrna.0.lcssa41 = phi i32 [ %nrna.1, %for.end ], [ 0, %entry ]
  %ndna.0.lcssa40 = phi i32 [ %ndna.1, %for.end ], [ 0, %entry ]
  %namino.0.lcssa39 = phi i32 [ %namino.1, %for.end ], [ 0, %entry ]
  %cmp7 = icmp eq i32 %namino.0.lcssa39, %nseq, !dbg !1231
  br i1 %cmp7, label %return, label %if.end9, !dbg !1231

if.end9:                                          ; preds = %if.end
  %cmp10 = icmp eq i32 %ndna.0.lcssa40, %nseq, !dbg !1232
  br i1 %cmp10, label %return, label %if.end12, !dbg !1232

if.end12:                                         ; preds = %if.end9
  %cmp13 = icmp eq i32 %nrna.0.lcssa41, %nseq, !dbg !1233
  br i1 %cmp13, label %return, label %if.end15, !dbg !1233

if.end15:                                         ; preds = %if.end12
  %cmp16 = icmp eq i32 %namino.0.lcssa39, 0, !dbg !1234
  %. = select i1 %cmp16, i32 2, i32 3, !dbg !1234
  br label %return, !dbg !1234

return:                                           ; preds = %if.end15, %if.end12, %if.end9, %if.end, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ 3, %if.end ], [ 1, %if.end9 ], [ 2, %if.end12 ], [ %., %if.end15 ]
  ret i32 %retval.0, !dbg !1235
}

; Function Attrs: nounwind optsize uwtable
define void @WriteSimpleFASTA(%struct._IO_FILE* nocapture %fp, i8* nocapture %seq, i8* %name, i8* %desc) #0 {
entry:
  %buf = alloca [61 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !406), !dbg !1236
  call void @llvm.dbg.value(metadata !{i8* %seq}, i64 0, metadata !407), !dbg !1236
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !408), !dbg !1236
  call void @llvm.dbg.value(metadata !{i8* %desc}, i64 0, metadata !409), !dbg !1236
  %0 = getelementptr inbounds [61 x i8]* %buf, i64 0, i64 0, !dbg !1237
  call void @llvm.lifetime.start(i64 61, i8* %0) #6, !dbg !1237
  call void @llvm.dbg.declare(metadata !{[61 x i8]* %buf}, metadata !410), !dbg !1237
  %call = call i64 @strlen(i8* %seq) #10, !dbg !1238
  %conv = trunc i64 %call to i32, !dbg !1238
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !414), !dbg !1238
  %arrayidx = getelementptr inbounds [61 x i8]* %buf, i64 0, i64 60, !dbg !1239
  store i8 0, i8* %arrayidx, align 4, !dbg !1239, !tbaa !601
  %cmp = icmp ne i8* %desc, null, !dbg !1240
  %cond = select i1 %cmp, i8* %desc, i8* getelementptr inbounds ([1 x i8]* @.str40, i64 0, i64 0), !dbg !1240
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str39, i64 0, i64 0), i8* %name, i8* %cond) #9, !dbg !1240
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !415), !dbg !1241
  %cmp313 = icmp sgt i32 %conv, 0, !dbg !1241
  br i1 %cmp313, label %for.body, label %for.end, !dbg !1241

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %add.ptr = getelementptr inbounds i8* %seq, i64 %indvars.iv, !dbg !1243
  %call5 = call i8* @strncpy(i8* %0, i8* %add.ptr, i64 60) #9, !dbg !1243
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* %0) #9, !dbg !1245
  %indvars.iv.next = add i64 %indvars.iv, 60, !dbg !1241
  %1 = trunc i64 %indvars.iv.next to i32, !dbg !1241
  %cmp3 = icmp slt i32 %1, %conv, !dbg !1241
  br i1 %cmp3, label %for.body, label %for.end, !dbg !1241

for.end:                                          ; preds = %for.body, %entry
  call void @llvm.lifetime.end(i64 61, i8* %0) #6, !dbg !1246
  ret void, !dbg !1246
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define i32 @WriteSeq(%struct._IO_FILE* %outf, i32 %outform, i8* %seq, %struct.seqinfo_s* %sqinfo) #0 {
entry:
  %endstr = alloca [10 x i8], align 4
  %s = alloca [100 x i8], align 16
  %ss = alloca [100 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %outf}, i64 0, metadata !420), !dbg !1247
  call void @llvm.dbg.value(metadata !{i32 %outform}, i64 0, metadata !421), !dbg !1247
  call void @llvm.dbg.value(metadata !{i8* %seq}, i64 0, metadata !422), !dbg !1247
  call void @llvm.dbg.value(metadata !{%struct.seqinfo_s* %sqinfo}, i64 0, metadata !423), !dbg !1247
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !424), !dbg !1248
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !425), !dbg !1249
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !426), !dbg !1249
  call void @llvm.dbg.value(metadata !1250, i64 0, metadata !427), !dbg !1249
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !428), !dbg !1249
  call void @llvm.dbg.declare(metadata !{[10 x i8]* %endstr}, metadata !434), !dbg !1251
  %0 = getelementptr inbounds [100 x i8]* %s, i64 0, i64 0, !dbg !1252
  call void @llvm.lifetime.start(i64 100, i8* %0) #6, !dbg !1252
  call void @llvm.dbg.declare(metadata !{[100 x i8]* %s}, metadata !438), !dbg !1252
  %1 = getelementptr inbounds [100 x i8]* %ss, i64 0, i64 0, !dbg !1253
  call void @llvm.lifetime.start(i64 100, i8* %1) #6, !dbg !1253
  call void @llvm.dbg.declare(metadata !{[100 x i8]* %ss}, metadata !442), !dbg !1253
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !443), !dbg !1254
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !445), !dbg !1255
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !446), !dbg !1256
  %flags = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0, !dbg !1257
  %2 = load i32* %flags, align 4, !dbg !1257, !tbaa !600
  %and = and i32 %2, 64, !dbg !1257
  %tobool = icmp eq i32 %and, 0, !dbg !1257
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1257

cond.true:                                        ; preds = %entry
  %len = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 5, !dbg !1257
  %3 = load i32* %len, align 4, !dbg !1257, !tbaa !600
  %conv = sext i32 %3 to i64, !dbg !1257
  br label %cond.end, !dbg !1257

cond.false:                                       ; preds = %entry
  %call = call i64 @strlen(i8* %seq) #10, !dbg !1257
  br label %cond.end, !dbg !1257

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !1257
  %conv1 = trunc i64 %cond to i32, !dbg !1257
  call void @llvm.dbg.value(metadata !{i32 %conv1}, i64 0, metadata !444), !dbg !1257
  %cmp = icmp sgt i32 %outform, 100, !dbg !1258
  br i1 %cmp, label %if.then, label %if.end, !dbg !1258

if.then:                                          ; preds = %cond.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([62 x i8]* @.str42, i64 0, i64 0)) #9, !dbg !1259
  br label %if.end, !dbg !1259

if.end:                                           ; preds = %if.then, %cond.end
  %arraydecay = getelementptr inbounds [10 x i8]* %endstr, i64 0, i64 0, !dbg !1260
  store i8 0, i8* %arraydecay, align 4, !dbg !1260
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !432), !dbg !1261
  %call4 = call i32 @GCGchecksum(i8* %seq, i32 %conv1) #8, !dbg !1262
  call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !443), !dbg !1262
  switch i32 %outform, label %sw.bb246 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb7
    i32 16, label %sw.bb40
    i32 12, label %sw.bb54
    i32 14, label %sw.bb93
    i32 4, label %sw.bb159
    i32 5, label %sw.bb195
    i32 6, label %sw.bb220
    i32 8, label %sw.bb227
    i32 1, label %for.cond.critedge
    i32 13, label %for.cond.preheader
  ], !dbg !1263

sw.bb:                                            ; preds = %if.end
  %4 = bitcast [10 x i8]* %endstr to i16*, !dbg !1264
  store i16 10, i16* %4, align 4, !dbg !1264
  br label %for.cond.preheader, !dbg !1266

sw.bb7:                                           ; preds = %if.end
  %arraydecay8 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0, !dbg !1267
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([28 x i8]* @.str44, i64 0, i64 0), i8* %arraydecay8, i32 %conv1) #9, !dbg !1267
  %5 = load i32* %flags, align 4, !dbg !1268, !tbaa !600
  %and11 = and i32 %5, 4, !dbg !1268
  %tobool12 = icmp eq i32 %and11, 0, !dbg !1268
  %arraydecay14 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 3, i64 0, !dbg !1268
  %.arraydecay14 = select i1 %tobool12, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* %arraydecay14, !dbg !1268
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0), i8* %.arraydecay14) #9, !dbg !1268
  %6 = load i32* %flags, align 4, !dbg !1269, !tbaa !600
  %and20 = and i32 %6, 8, !dbg !1269
  %tobool21 = icmp eq i32 %and20, 0, !dbg !1269
  %arraydecay23 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0, !dbg !1269
  %cond26 = select i1 %tobool21, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* %arraydecay23, !dbg !1269
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0), i8* %cond26) #9, !dbg !1269
  %7 = load i32* %flags, align 4, !dbg !1270, !tbaa !600
  %and29 = and i32 %7, 2, !dbg !1270
  %tobool30 = icmp eq i32 %and29, 0, !dbg !1270
  %arraydecay32 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 2, i64 0, !dbg !1270
  %.arraydecay32 = select i1 %tobool30, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* %arraydecay32, !dbg !1270
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([16 x i8]* @.str48, i64 0, i64 0), i8* %.arraydecay32) #9, !dbg !1270
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str49, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %outf), !dbg !1271
  call void @llvm.dbg.value(metadata !1272, i64 0, metadata !426), !dbg !1273
  call void @llvm.dbg.value(metadata !1036, i64 0, metadata !424), !dbg !1274
  %9 = bitcast [10 x i8]* %endstr to i32*, !dbg !1275
  store i32 3092234, i32* %9, align 4, !dbg !1275
  br label %for.cond.preheader, !dbg !1276

sw.bb40:                                          ; preds = %if.end
  %arraydecay42 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0, !dbg !1277
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([30 x i8]* @.str51, i64 0, i64 0), i8* %arraydecay42, i32 %conv1) #9, !dbg !1277
  %10 = load i32* %flags, align 4, !dbg !1278, !tbaa !600
  %and45 = and i32 %10, 8, !dbg !1278
  %tobool46 = icmp eq i32 %and45, 0, !dbg !1278
  %arraydecay49 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0, !dbg !1278
  %.arraydecay49 = select i1 %tobool46, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), i8* %arraydecay49, !dbg !1278
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* %.arraydecay49) #9, !dbg !1278
  br label %for.cond.preheader, !dbg !1279

sw.bb54:                                          ; preds = %if.end
  %11 = load i32* %flags, align 4, !dbg !1280, !tbaa !600
  %and56 = and i32 %11, 2, !dbg !1280
  %tobool57 = icmp ne i32 %and56, 0, !dbg !1280
  %id59 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 2, !dbg !1280
  %name62 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, !dbg !1280
  %id59.sink = select i1 %tobool57, [64 x i8]* %id59, [64 x i8]* %name62, !dbg !1280
  %arraydecay60 = getelementptr inbounds [64 x i8]* %id59.sink, i64 0, i64 0, !dbg !1280
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([19 x i8]* @.str53, i64 0, i64 0), i8* %arraydecay60) #9, !dbg !1280
  %12 = load i32* %flags, align 4, !dbg !1281, !tbaa !600
  %and68 = and i32 %12, 8, !dbg !1281
  %tobool69 = icmp eq i32 %and68, 0, !dbg !1281
  %arraydecay72 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0, !dbg !1281
  %.arraydecay72 = select i1 %tobool69, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), i8* %arraydecay72, !dbg !1281
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([19 x i8]* @.str54, i64 0, i64 0), i8* %.arraydecay72) #9, !dbg !1281
  %13 = load i32* %flags, align 4, !dbg !1282, !tbaa !600
  %and78 = and i32 %13, 4, !dbg !1282
  %tobool79 = icmp eq i32 %and78, 0, !dbg !1282
  %arraydecay82 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 3, i64 0, !dbg !1282
  %cond85 = select i1 %tobool79, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), i8* %arraydecay82, !dbg !1282
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([19 x i8]* @.str55, i64 0, i64 0), i8* %cond85) #9, !dbg !1282
  %len87 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 5, !dbg !1283
  %14 = load i32* %len87, align 4, !dbg !1283, !tbaa !600
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([66 x i8]* @.str56, i64 0, i64 0), i32 %14, i32 %call4) #9, !dbg !1283
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str57, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %outf), !dbg !1284
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([71 x i8]* @.str58, i64 0, i64 0), i64 70, i64 1, %struct._IO_FILE* %outf), !dbg !1285
  call void @llvm.dbg.value(metadata !1286, i64 0, metadata !426), !dbg !1287
  call void @llvm.dbg.value(metadata !1036, i64 0, metadata !424), !dbg !1288
  call void @llvm.dbg.value(metadata !1289, i64 0, metadata !427), !dbg !1290
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8]* @.str59, i64 0, i64 0), i64 5, i32 1, i1 false), !dbg !1291
  br label %for.cond.preheader, !dbg !1292

sw.bb93:                                          ; preds = %if.end
  %arraydecay95 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0, !dbg !1293
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([9 x i8]* @.str60, i64 0, i64 0), i8* %arraydecay95) #9, !dbg !1293
  %17 = load i32* %flags, align 4, !dbg !1294, !tbaa !600
  %and98 = and i32 %17, 310, !dbg !1294
  %tobool99 = icmp eq i32 %and98, 0, !dbg !1294
  br i1 %tobool99, label %if.end141, label %if.then100, !dbg !1294

if.then100:                                       ; preds = %sw.bb93
  %and102 = and i32 %17, 2, !dbg !1295
  %tobool103 = icmp eq i32 %and102, 0, !dbg !1295
  %arraydecay106 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 2, i64 0, !dbg !1295
  %.arraydecay106 = select i1 %tobool103, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), i8* %arraydecay106, !dbg !1295
  %and111 = and i32 %17, 4, !dbg !1295
  %tobool112 = icmp eq i32 %and111, 0, !dbg !1295
  %arraydecay115 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 3, i64 0, !dbg !1295
  %cond118 = select i1 %tobool112, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), i8* %arraydecay115, !dbg !1295
  %and120 = and i32 %17, 16, !dbg !1295
  %tobool121 = icmp eq i32 %and120, 0, !dbg !1295
  br i1 %tobool121, label %cond.end124, label %cond.true122, !dbg !1295

cond.true122:                                     ; preds = %if.then100
  %start = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 6, !dbg !1295
  %18 = load i32* %start, align 4, !dbg !1295, !tbaa !600
  br label %cond.end124, !dbg !1295

cond.end124:                                      ; preds = %if.then100, %cond.true122
  %cond125 = phi i32 [ %18, %cond.true122 ], [ 0, %if.then100 ], !dbg !1295
  %and127 = and i32 %17, 32, !dbg !1295
  %tobool128 = icmp eq i32 %and127, 0, !dbg !1295
  br i1 %tobool128, label %cond.end131, label %cond.true129, !dbg !1295

cond.true129:                                     ; preds = %cond.end124
  %stop = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 7, !dbg !1295
  %19 = load i32* %stop, align 4, !dbg !1295, !tbaa !600
  br label %cond.end131, !dbg !1295

cond.end131:                                      ; preds = %cond.end124, %cond.true129
  %cond132 = phi i32 [ %19, %cond.true129 ], [ 0, %cond.end124 ], !dbg !1295
  %and134 = and i32 %17, 256, !dbg !1295
  %tobool135 = icmp eq i32 %and134, 0, !dbg !1295
  br i1 %tobool135, label %cond.end138, label %cond.true136, !dbg !1295

cond.true136:                                     ; preds = %cond.end131
  %olen = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 8, !dbg !1295
  %20 = load i32* %olen, align 4, !dbg !1295, !tbaa !600
  br label %cond.end138, !dbg !1295

cond.end138:                                      ; preds = %cond.end131, %cond.true136
  %cond139 = phi i32 [ %20, %cond.true136 ], [ 0, %cond.end131 ], !dbg !1295
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([23 x i8]* @.str61, i64 0, i64 0), i8* %.arraydecay106, i8* %cond118, i32 %cond125, i32 %cond132, i32 %cond139) #9, !dbg !1295
  %.pre = load i32* %flags, align 4, !dbg !1296, !tbaa !600
  br label %if.end141, !dbg !1295

if.end141:                                        ; preds = %sw.bb93, %cond.end138
  %21 = phi i32 [ %17, %sw.bb93 ], [ %.pre, %cond.end138 ]
  %and143 = and i32 %21, 8, !dbg !1296
  %tobool144 = icmp eq i32 %and143, 0, !dbg !1296
  br i1 %tobool144, label %if.end149, label %if.then145, !dbg !1296

if.then145:                                       ; preds = %if.end141
  %arraydecay147 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0, !dbg !1297
  %call148 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i8* %arraydecay147) #9, !dbg !1297
  %.pre521 = load i32* %flags, align 4, !dbg !1298, !tbaa !600
  br label %if.end149, !dbg !1297

if.end149:                                        ; preds = %if.end141, %if.then145
  %22 = phi i32 [ %21, %if.end141 ], [ %.pre521, %if.then145 ]
  %and151 = and i32 %22, 512, !dbg !1298
  %tobool152 = icmp eq i32 %and151, 0, !dbg !1298
  br i1 %tobool152, label %if.else, label %if.then153, !dbg !1298

if.then153:                                       ; preds = %if.end149
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str63, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %outf), !dbg !1299
  call void @llvm.dbg.value(metadata !1036, i64 0, metadata !446), !dbg !1301
  br label %if.end156, !dbg !1302

if.else:                                          ; preds = %if.end149
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str64, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %outf), !dbg !1303
  br label %if.end156

if.end156:                                        ; preds = %if.else, %if.then153
  %dostruc.0 = phi i32 [ 1, %if.then153 ], [ 0, %if.else ]
  call void @llvm.dbg.value(metadata !1036, i64 0, metadata !424), !dbg !1304
  %25 = bitcast [10 x i8]* %endstr to i32*, !dbg !1305
  store i32 2829066, i32* %25, align 4, !dbg !1305
  br label %for.cond.preheader, !dbg !1306

sw.bb159:                                         ; preds = %if.end
  %26 = load i32* %flags, align 4, !dbg !1307, !tbaa !600
  %and161 = and i32 %26, 2, !dbg !1307
  %tobool162 = icmp ne i32 %and161, 0, !dbg !1307
  %id164 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 2, !dbg !1307
  %name167 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, !dbg !1307
  %id164.sink = select i1 %tobool162, [64 x i8]* %id164, [64 x i8]* %name167, !dbg !1307
  %arraydecay165 = getelementptr inbounds [64 x i8]* %id164.sink, i64 0, i64 0, !dbg !1307
  %call171 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([9 x i8]* @.str66, i64 0, i64 0), i8* %arraydecay165) #9, !dbg !1307
  %27 = load i32* %flags, align 4, !dbg !1308, !tbaa !600
  %and173 = and i32 %27, 4, !dbg !1308
  %tobool174 = icmp eq i32 %and173, 0, !dbg !1308
  %arraydecay177 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 3, i64 0, !dbg !1308
  %.arraydecay177 = select i1 %tobool174, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), i8* %arraydecay177, !dbg !1308
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0), i8* %.arraydecay177) #9, !dbg !1308
  %28 = load i32* %flags, align 4, !dbg !1309, !tbaa !600
  %and183 = and i32 %28, 8, !dbg !1309
  %tobool184 = icmp eq i32 %and183, 0, !dbg !1309
  %arraydecay187 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0, !dbg !1309
  %cond190 = select i1 %tobool184, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), i8* %arraydecay187, !dbg !1309
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([9 x i8]* @.str68, i64 0, i64 0), i8* %cond190) #9, !dbg !1309
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([22 x i8]* @.str69, i64 0, i64 0), i32 %conv1) #9, !dbg !1310
  %29 = bitcast [10 x i8]* %endstr to i32*, !dbg !1311
  store i32 3092234, i32* %29, align 4, !dbg !1311
  call void @llvm.dbg.value(metadata !1312, i64 0, metadata !428), !dbg !1313
  call void @llvm.dbg.value(metadata !1272, i64 0, metadata !426), !dbg !1314
  br label %for.cond.preheader, !dbg !1315

sw.bb195:                                         ; preds = %if.end
  %arraydecay197 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0, !dbg !1316
  %call198 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* %arraydecay197) #9, !dbg !1316
  %30 = load i32* %flags, align 4, !dbg !1317, !tbaa !600
  %and200 = and i32 %30, 4, !dbg !1317
  %tobool201 = icmp eq i32 %and200, 0, !dbg !1317
  br i1 %tobool201, label %if.end206, label %if.then202, !dbg !1317

if.then202:                                       ; preds = %sw.bb195
  %arraydecay204 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 3, i64 0, !dbg !1318
  %call205 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0), i8* %arraydecay204) #9, !dbg !1318
  %.pre522 = load i32* %flags, align 4, !dbg !1319, !tbaa !600
  br label %if.end206, !dbg !1318

if.end206:                                        ; preds = %sw.bb195, %if.then202
  %31 = phi i32 [ %30, %sw.bb195 ], [ %.pre522, %if.then202 ]
  %and208 = and i32 %31, 8, !dbg !1319
  %tobool209 = icmp eq i32 %and208, 0, !dbg !1319
  br i1 %tobool209, label %if.end214, label %if.then210, !dbg !1319

if.then210:                                       ; preds = %if.end206
  %arraydecay212 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0, !dbg !1320
  %call213 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0), i8* %arraydecay212) #9, !dbg !1320
  br label %if.end214, !dbg !1320

if.end214:                                        ; preds = %if.end206, %if.then210
  %call217 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([44 x i8]* @.str70, i64 0, i64 0), i8* %arraydecay197, i32 %conv1, i32 %call4) #9, !dbg !1321
  call void @llvm.dbg.value(metadata !1272, i64 0, metadata !426), !dbg !1322
  call void @llvm.dbg.value(metadata !1036, i64 0, metadata !424), !dbg !1323
  %32 = bitcast [10 x i8]* %endstr to i16*, !dbg !1324
  store i16 10, i16* %32, align 4, !dbg !1324
  br label %for.cond.preheader, !dbg !1325

sw.bb220:                                         ; preds = %if.end
  %33 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str71, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %outf), !dbg !1326
  %arraydecay223 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0, !dbg !1327
  %call224 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([46 x i8]* @.str72, i64 0, i64 0), i8* %arraydecay223, i32 %conv1, i32 %call4) #9, !dbg !1327
  %34 = bitcast [10 x i8]* %endstr to i32*, !dbg !1328
  store i32 3092234, i32* %34, align 4, !dbg !1328
  br label %for.cond.preheader, !dbg !1329

sw.bb227:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata !1036, i64 0, metadata !445), !dbg !1330
  %arraydecay230 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0, !dbg !1331
  %35 = load i32* %flags, align 4, !dbg !1331, !tbaa !600
  %and232 = and i32 %35, 8, !dbg !1331
  %tobool233 = icmp eq i32 %and232, 0, !dbg !1331
  %arraydecay236 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0, !dbg !1331
  %.arraydecay236 = select i1 %tobool233, i8* getelementptr inbounds ([1 x i8]* @.str40, i64 0, i64 0), i8* %arraydecay236, !dbg !1331
  %call240 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([8 x i8]* @.str73, i64 0, i64 0), i8* %arraydecay230, i8* %.arraydecay236) #9, !dbg !1331
  %call243 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* %arraydecay230) #9, !dbg !1332
  %36 = bitcast [10 x i8]* %endstr to i16*, !dbg !1333
  store i16 49, i16* %36, align 4, !dbg !1333
  call void @s2upper(i8* %seq) #9, !dbg !1334
  br label %for.cond.preheader, !dbg !1334

sw.bb246:                                         ; preds = %if.end
  %arraydecay248 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0, !dbg !1335
  %37 = load i32* %flags, align 4, !dbg !1335, !tbaa !600
  %and250 = and i32 %37, 8, !dbg !1335
  %tobool251 = icmp eq i32 %and250, 0, !dbg !1335
  %arraydecay254 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0, !dbg !1335
  %.arraydecay254 = select i1 %tobool251, i8* getelementptr inbounds ([1 x i8]* @.str40, i64 0, i64 0), i8* %arraydecay254, !dbg !1335
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([8 x i8]* @.str39, i64 0, i64 0), i8* %arraydecay248, i8* %.arraydecay254) #9, !dbg !1335
  br label %for.cond.preheader, !dbg !1336

for.cond.critedge:                                ; preds = %if.end
  %arraydecay230.c = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0, !dbg !1331
  %38 = load i32* %flags, align 4, !dbg !1331, !tbaa !600
  %and232.c = and i32 %38, 8, !dbg !1331
  %tobool233.c = icmp eq i32 %and232.c, 0, !dbg !1331
  %arraydecay236.c = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0, !dbg !1331
  %.arraydecay236.c = select i1 %tobool233.c, i8* getelementptr inbounds ([1 x i8]* @.str40, i64 0, i64 0), i8* %arraydecay236.c, !dbg !1331
  %call240.c = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([8 x i8]* @.str73, i64 0, i64 0), i8* %arraydecay230.c, i8* %.arraydecay236.c) #9, !dbg !1331
  %call243.c = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* %arraydecay230.c) #9, !dbg !1332
  %39 = bitcast [10 x i8]* %endstr to i16*, !dbg !1333
  store i16 49, i16* %39, align 4, !dbg !1333
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.bb227, %sw.bb246, %if.end, %sw.bb220, %if.end214, %sw.bb159, %if.end156, %sw.bb54, %sw.bb40, %sw.bb7, %sw.bb, %for.cond.critedge
  %numline.0514.ph = phi i1 [ true, %for.cond.critedge ], [ true, %sw.bb ], [ false, %sw.bb7 ], [ true, %sw.bb40 ], [ false, %sw.bb54 ], [ false, %if.end156 ], [ true, %sw.bb159 ], [ false, %if.end214 ], [ true, %sw.bb220 ], [ true, %if.end ], [ true, %sw.bb246 ], [ true, %sw.bb227 ]
  %dostruc.1513.ph = phi i32 [ 0, %for.cond.critedge ], [ 0, %sw.bb ], [ 0, %sw.bb7 ], [ 0, %sw.bb40 ], [ 0, %sw.bb54 ], [ %dostruc.0, %if.end156 ], [ 0, %sw.bb159 ], [ 0, %if.end214 ], [ 0, %sw.bb220 ], [ 0, %if.end ], [ 0, %sw.bb246 ], [ 0, %sw.bb227 ]
  %tab.0512.ph = phi i32 [ 0, %for.cond.critedge ], [ 0, %sw.bb ], [ 0, %sw.bb7 ], [ 0, %sw.bb40 ], [ 0, %sw.bb54 ], [ 0, %if.end156 ], [ 5, %sw.bb159 ], [ 0, %if.end214 ], [ 0, %sw.bb220 ], [ 0, %if.end ], [ 0, %sw.bb246 ], [ 0, %sw.bb227 ]
  %width.0511.ph = phi i32 [ 50, %for.cond.critedge ], [ 50, %sw.bb ], [ 50, %sw.bb7 ], [ 50, %sw.bb40 ], [ 30, %sw.bb54 ], [ 50, %if.end156 ], [ 50, %sw.bb159 ], [ 50, %if.end214 ], [ 50, %sw.bb220 ], [ 50, %if.end ], [ 50, %sw.bb246 ], [ 50, %sw.bb227 ]
  %spacer.0510.ph = phi i32 [ 0, %for.cond.critedge ], [ 0, %sw.bb ], [ 11, %sw.bb7 ], [ 0, %sw.bb40 ], [ 2, %sw.bb54 ], [ 0, %if.end156 ], [ 11, %sw.bb159 ], [ 11, %if.end214 ], [ 0, %sw.bb220 ], [ 0, %if.end ], [ 0, %sw.bb246 ], [ 0, %sw.bb227 ]
  %cmp293 = icmp eq i32 %spacer.0510.ph, 0, !dbg !1337
  %ss311 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 10, !dbg !1340
  %cmp287515 = icmp eq i32 %tab.0512.ph, 0, !dbg !1341
  %tobool332 = icmp eq i32 %dostruc.1513.ph, 0, !dbg !1344
  br label %for.cond.outer, !dbg !1346

for.cond.outer:                                   ; preds = %for.cond.preheader, %if.end369
  %i.0.ph = phi i32 [ %inc321, %if.end369 ], [ 0, %for.cond.preheader ]
  %ibase.0.ph = phi i32 [ %add371, %if.end369 ], [ 1, %for.cond.preheader ]
  %lines.0.ph = phi i32 [ %inc370, %if.end369 ], [ 0, %for.cond.preheader ]
  %40 = sext i32 %i.0.ph to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %cond.end315
  %indvars.iv = phi i64 [ %40, %for.cond.outer ], [ %indvars.iv.next, %cond.end315 ]
  %i.0 = phi i32 [ %i.0.ph, %for.cond.outer ], [ %inc321, %cond.end315 ]
  %l.0 = phi i32 [ 0, %for.cond.outer ], [ %inc320, %cond.end315 ]
  %l1.0 = phi i32 [ 0, %for.cond.outer ], [ %inc322, %cond.end315 ]
  %41 = trunc i64 %indvars.iv to i32, !dbg !1346
  %cmp273 = icmp slt i32 %41, %conv1, !dbg !1346
  br i1 %cmp273, label %for.body, label %for.end373, !dbg !1346

for.body:                                         ; preds = %for.cond
  %cmp275 = icmp slt i32 %l1.0, 0, !dbg !1347
  br i1 %cmp275, label %if.end292, label %if.else278, !dbg !1347

if.else278:                                       ; preds = %for.body
  %cmp279 = icmp eq i32 %l1.0, 0, !dbg !1348
  br i1 %cmp279, label %if.then281, label %if.end292, !dbg !1348

if.then281:                                       ; preds = %if.else278
  br i1 %numline.0514.ph, label %for.cond286.preheader, label %if.then283, !dbg !1349

if.then283:                                       ; preds = %if.then281
  %call284 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([5 x i8]* @.str75, i64 0, i64 0), i32 %ibase.0.ph) #9, !dbg !1349
  br label %for.cond286.preheader, !dbg !1349

for.cond286.preheader:                            ; preds = %if.then281, %if.then283
  br i1 %cmp287515, label %if.end292, label %for.body289, !dbg !1341

for.body289:                                      ; preds = %for.cond286.preheader, %for.body289
  %j.0516 = phi i32 [ %inc, %for.body289 ], [ 0, %for.cond286.preheader ]
  %call290 = call i32 @fputc(i32 32, %struct._IO_FILE* %outf) #9, !dbg !1341
  %inc = add nsw i32 %j.0516, 1, !dbg !1341
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !430), !dbg !1341
  %cmp287 = icmp slt i32 %inc, %tab.0512.ph, !dbg !1341
  br i1 %cmp287, label %for.body289, label %if.end292, !dbg !1341

if.end292:                                        ; preds = %for.cond286.preheader, %for.body289, %for.body, %if.else278
  %l1.1 = phi i32 [ %l1.0, %if.else278 ], [ 0, %for.body ], [ 0, %for.body289 ], [ 0, %for.cond286.preheader ]
  br i1 %cmp293, label %if.end301, label %land.lhs.true, !dbg !1337

land.lhs.true:                                    ; preds = %if.end292
  %add = add nsw i32 %l.0, 1, !dbg !1337
  %rem = srem i32 %add, %spacer.0510.ph, !dbg !1337
  %cmp295 = icmp eq i32 %rem, 1, !dbg !1337
  br i1 %cmp295, label %if.then297, label %if.end301, !dbg !1337

if.then297:                                       ; preds = %land.lhs.true
  %idxprom = sext i32 %l.0 to i64, !dbg !1350
  %arrayidx = getelementptr inbounds [100 x i8]* %s, i64 0, i64 %idxprom, !dbg !1350
  store i8 32, i8* %arrayidx, align 1, !dbg !1350, !tbaa !601
  %arrayidx299 = getelementptr inbounds [100 x i8]* %ss, i64 0, i64 %idxprom, !dbg !1350
  store i8 32, i8* %arrayidx299, align 1, !dbg !1350, !tbaa !601
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !431), !dbg !1350
  br label %if.end301, !dbg !1350

if.end301:                                        ; preds = %land.lhs.true, %if.end292, %if.then297
  %l.1 = phi i32 [ %add, %if.then297 ], [ %l.0, %if.end292 ], [ %l.0, %land.lhs.true ]
  %arrayidx303 = getelementptr inbounds i8* %seq, i64 %indvars.iv, !dbg !1352
  %42 = load i8* %arrayidx303, align 1, !dbg !1352, !tbaa !601
  %idxprom304 = sext i32 %l.1 to i64, !dbg !1352
  %arrayidx305 = getelementptr inbounds [100 x i8]* %s, i64 0, i64 %idxprom304, !dbg !1352
  store i8 %42, i8* %arrayidx305, align 1, !dbg !1352, !tbaa !601
  %43 = load i32* %flags, align 4, !dbg !1340, !tbaa !600
  %and307 = and i32 %43, 512, !dbg !1340
  %tobool308 = icmp eq i32 %and307, 0, !dbg !1340
  br i1 %tobool308, label %cond.end315, label %cond.true309, !dbg !1340

cond.true309:                                     ; preds = %if.end301
  %44 = load i8** %ss311, align 8, !dbg !1340, !tbaa !612
  %arrayidx312 = getelementptr inbounds i8* %44, i64 %indvars.iv, !dbg !1340
  %45 = load i8* %arrayidx312, align 1, !dbg !1340, !tbaa !601
  br label %cond.end315, !dbg !1340

cond.end315:                                      ; preds = %if.end301, %cond.true309
  %cond316 = phi i8 [ %45, %cond.true309 ], [ 46, %if.end301 ]
  %arrayidx319 = getelementptr inbounds [100 x i8]* %ss, i64 0, i64 %idxprom304, !dbg !1340
  store i8 %cond316, i8* %arrayidx319, align 1, !dbg !1340, !tbaa !601
  %inc320 = add nsw i32 %l.1, 1, !dbg !1353
  call void @llvm.dbg.value(metadata !{i32 %inc320}, i64 0, metadata !431), !dbg !1353
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1354
  %inc321 = add nsw i32 %i.0, 1, !dbg !1353
  call void @llvm.dbg.value(metadata !{i32 %inc321}, i64 0, metadata !429), !dbg !1353
  %inc322 = add nsw i32 %l1.1, 1, !dbg !1355
  call void @llvm.dbg.value(metadata !{i32 %inc322}, i64 0, metadata !432), !dbg !1355
  %cmp323 = icmp eq i32 %inc322, %width.0511.ph, !dbg !1354
  %46 = trunc i64 %indvars.iv.next to i32, !dbg !1354
  %cmp325 = icmp eq i32 %46, %conv1, !dbg !1354
  %or.cond = or i1 %cmp323, %cmp325, !dbg !1354
  br i1 %or.cond, label %if.then327, label %for.cond, !dbg !1354

if.then327:                                       ; preds = %cond.end315
  %idxprom328 = sext i32 %inc320 to i64, !dbg !1356
  %arrayidx329 = getelementptr inbounds [100 x i8]* %ss, i64 0, i64 %idxprom328, !dbg !1356
  store i8 0, i8* %arrayidx329, align 1, !dbg !1356, !tbaa !601
  %arrayidx331 = getelementptr inbounds [100 x i8]* %s, i64 0, i64 %idxprom328, !dbg !1356
  store i8 0, i8* %arrayidx331, align 1, !dbg !1356, !tbaa !601
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !431), !dbg !1357
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !432), !dbg !1357
  br i1 %tobool332, label %if.else358, label %if.then333, !dbg !1344

if.then333:                                       ; preds = %if.then327
  %call335 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* %0) #9, !dbg !1358
  br i1 %numline.0514.ph, label %for.cond340.preheader, label %if.then337, !dbg !1360

if.then337:                                       ; preds = %if.then333
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str76, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %outf), !dbg !1360
  br label %for.cond340.preheader, !dbg !1360

for.cond340.preheader:                            ; preds = %if.then333, %if.then337
  br i1 %cmp287515, label %for.end347, label %for.body343, !dbg !1361

for.body343:                                      ; preds = %for.cond340.preheader, %for.body343
  %j.1518 = phi i32 [ %inc346, %for.body343 ], [ 0, %for.cond340.preheader ]
  %call344 = call i32 @fputc(i32 32, %struct._IO_FILE* %outf) #9, !dbg !1361
  %inc346 = add nsw i32 %j.1518, 1, !dbg !1361
  call void @llvm.dbg.value(metadata !{i32 %inc346}, i64 0, metadata !430), !dbg !1361
  %cmp341 = icmp slt i32 %inc346, %tab.0512.ph, !dbg !1361
  br i1 %cmp341, label %for.body343, label %for.end347, !dbg !1361

for.end347:                                       ; preds = %for.body343, %for.cond340.preheader
  br i1 %cmp325, label %if.then350, label %if.else354, !dbg !1363

if.then350:                                       ; preds = %for.end347
  %call353 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([6 x i8]* @.str77, i64 0, i64 0), i8* %1, i8* %arraydecay) #9, !dbg !1363
  br label %if.end369, !dbg !1363

if.else354:                                       ; preds = %for.end347
  %call356 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* %1) #9, !dbg !1364
  br label %if.end369

if.else358:                                       ; preds = %if.then327
  br i1 %cmp325, label %if.then361, label %if.else365, !dbg !1365

if.then361:                                       ; preds = %if.else358
  %call364 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([6 x i8]* @.str77, i64 0, i64 0), i8* %0, i8* %arraydecay) #9, !dbg !1365
  br label %if.end369, !dbg !1365

if.else365:                                       ; preds = %if.else358
  %call367 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* %0) #9, !dbg !1367
  br label %if.end369

if.end369:                                        ; preds = %if.then361, %if.else365, %if.then350, %if.else354
  %inc370 = add nsw i32 %lines.0.ph, 1, !dbg !1368
  call void @llvm.dbg.value(metadata !{i32 %inc370}, i64 0, metadata !425), !dbg !1368
  %add371 = add nsw i32 %i.0, 2, !dbg !1369
  call void @llvm.dbg.value(metadata !{i32 %add371}, i64 0, metadata !433), !dbg !1369
  br label %for.cond.outer, !dbg !1370

for.end373:                                       ; preds = %for.cond
  call void @llvm.lifetime.end(i64 100, i8* %1) #6, !dbg !1371
  call void @llvm.lifetime.end(i64 100, i8* %0) #6, !dbg !1371
  ret i32 %lines.0.ph, !dbg !1371
}

; Function Attrs: optsize
declare void @s2upper(i8*) #2

; Function Attrs: nounwind optsize
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @ReadMultipleRseqs(i8* %seqfile, i32 %fformat, i8*** nocapture %ret_rseqs, %struct.seqinfo_s** nocapture %ret_sqinfo, i32* nocapture %ret_num) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %seqfile}, i64 0, metadata !452), !dbg !1372
  tail call void @llvm.dbg.value(metadata !{i32 %fformat}, i64 0, metadata !453), !dbg !1373
  tail call void @llvm.dbg.value(metadata !{i8*** %ret_rseqs}, i64 0, metadata !454), !dbg !1374
  tail call void @llvm.dbg.value(metadata !{%struct.seqinfo_s** %ret_sqinfo}, i64 0, metadata !455), !dbg !1375
  tail call void @llvm.dbg.value(metadata !{i32* %ret_num}, i64 0, metadata !456), !dbg !1376
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !461), !dbg !1377
  tail call void @llvm.dbg.value(metadata !1378, i64 0, metadata !460), !dbg !1379
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str78, i64 0, i64 0), i32 1732, i64 128) #9, !dbg !1380
  %call3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str78, i64 0, i64 0), i32 1733, i64 5760) #9, !dbg !1381
  tail call void @llvm.dbg.value(metadata !{i8* %seqfile}, i64 0, metadata !1382) #6, !dbg !1384
  tail call void @llvm.dbg.value(metadata !{i32 %fformat}, i64 0, metadata !1385) #6, !dbg !1384
  tail call void @llvm.dbg.value(metadata !1093, i64 0, metadata !1386) #6, !dbg !1384
  %call.i = tail call fastcc %struct.ReadSeqVars* @seqfile_open(i8* %seqfile, i32 %fformat, i8* null, i32 -1) #9, !dbg !1387
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %call.i}, i64 0, metadata !458), !dbg !1383
  %cmp = icmp eq %struct.ReadSeqVars* %call.i, null, !dbg !1383
  br i1 %cmp, label %return, label %while.cond.outer, !dbg !1383

while.cond.outer:                                 ; preds = %entry, %if.then11
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %if.then11 ], [ 16, %entry ]
  %sqinfo.0.ph.in = phi i8* [ %call17, %if.then11 ], [ %call3, %entry ]
  %rseqs.0.ph.in = phi i8* [ %call14, %if.then11 ], [ %call, %entry ]
  %num.0.ph = phi i32 [ %inc, %if.then11 ], [ 0, %entry ]
  %rseqs.0.ph = bitcast i8* %rseqs.0.ph.in to i8**, !dbg !1388
  %sqinfo.0.ph = bitcast i8* %sqinfo.0.ph.in to %struct.seqinfo_s*, !dbg !1391
  %0 = sext i32 %num.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %indvars.iv = phi i64 [ %0, %while.cond.outer ], [ %indvars.iv.next, %while.body ]
  %num.0 = phi i32 [ %num.0.ph, %while.cond.outer ], [ %inc, %while.body ]
  %arrayidx = getelementptr inbounds i8** %rseqs.0.ph, i64 %indvars.iv, !dbg !1392
  %arrayidx7 = getelementptr inbounds %struct.seqinfo_s* %sqinfo.0.ph, i64 %indvars.iv, !dbg !1392
  %call8 = tail call i32 @ReadSeq(%struct.ReadSeqVars* %call.i, i32 undef, i8** %arrayidx, %struct.seqinfo_s* %arrayidx7) #8, !dbg !1392
  %tobool = icmp eq i32 %call8, 0, !dbg !1392
  br i1 %tobool, label %while.end, label %while.body, !dbg !1392

while.body:                                       ; preds = %while.cond
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1393
  %inc = add nsw i32 %num.0, 1, !dbg !1394
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !461), !dbg !1394
  %1 = trunc i64 %indvars.iv.next to i32, !dbg !1393
  %2 = trunc i64 %indvars.iv36 to i32, !dbg !1393
  %cmp9 = icmp eq i32 %1, %2, !dbg !1393
  br i1 %cmp9, label %if.then11, label %while.cond, !dbg !1393

if.then11:                                        ; preds = %while.body
  %indvars.iv.next37 = add i64 %indvars.iv36, 16, !dbg !1395
  %mul13 = shl nsw i64 %indvars.iv.next37, 3, !dbg !1388
  %call14 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([50 x i8]* @.str78, i64 0, i64 0), i32 1742, i8* %rseqs.0.ph.in, i64 %mul13) #9, !dbg !1388
  %mul16 = mul i64 %indvars.iv.next37, 360, !dbg !1391
  %call17 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([50 x i8]* @.str78, i64 0, i64 0), i32 1743, i8* %sqinfo.0.ph.in, i64 %mul16) #9, !dbg !1391
  br label %while.cond.outer, !dbg !1395

while.end:                                        ; preds = %while.cond
  tail call void @SeqfileClose(%struct.ReadSeqVars* %call.i) #8, !dbg !1396
  store i8** %rseqs.0.ph, i8*** %ret_rseqs, align 8, !dbg !1397, !tbaa !612
  store %struct.seqinfo_s* %sqinfo.0.ph, %struct.seqinfo_s** %ret_sqinfo, align 8, !dbg !1398, !tbaa !612
  store i32 %num.0, i32* %ret_num, align 4, !dbg !1399, !tbaa !600
  br label %return, !dbg !1400

return:                                           ; preds = %entry, %while.end
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !1400
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #2

; Function Attrs: nounwind optsize uwtable
define i32 @String2SeqfileFormat(i8* %s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !464), !dbg !1401
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !466), !dbg !1402
  %cmp = icmp eq i8* %s, null, !dbg !1403
  br i1 %cmp, label %return, label %if.end, !dbg !1403

if.end:                                           ; preds = %entry
  %call = tail call i8* @sre_strdup(i8* %s, i32 -1) #9, !dbg !1404
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !465), !dbg !1404
  tail call void @s2upper(i8* %call) #9, !dbg !1405
  %call1 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([6 x i8]* @.str79, i64 0, i64 0)) #10, !dbg !1406
  %cmp2 = icmp eq i32 %call1, 0, !dbg !1406
  br i1 %cmp2, label %if.end93, label %if.else, !dbg !1406

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([8 x i8]* @.str80, i64 0, i64 0)) #10, !dbg !1407
  %cmp5 = icmp eq i32 %call4, 0, !dbg !1407
  br i1 %cmp5, label %if.end93, label %if.else7, !dbg !1407

if.else7:                                         ; preds = %if.else
  %call8 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([5 x i8]* @.str81, i64 0, i64 0)) #10, !dbg !1408
  %cmp9 = icmp eq i32 %call8, 0, !dbg !1408
  br i1 %cmp9, label %if.end93, label %if.else11, !dbg !1408

if.else11:                                        ; preds = %if.else7
  %call12 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([4 x i8]* @.str82, i64 0, i64 0)) #10, !dbg !1409
  %cmp13 = icmp eq i32 %call12, 0, !dbg !1409
  br i1 %cmp13, label %if.end93, label %if.else15, !dbg !1409

if.else15:                                        ; preds = %if.else11
  %call16 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([8 x i8]* @.str83, i64 0, i64 0)) #10, !dbg !1410
  %cmp17 = icmp eq i32 %call16, 0, !dbg !1410
  br i1 %cmp17, label %if.end93, label %if.else19, !dbg !1410

if.else19:                                        ; preds = %if.else15
  %call20 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([4 x i8]* @.str84, i64 0, i64 0)) #10, !dbg !1411
  %cmp21 = icmp eq i32 %call20, 0, !dbg !1411
  br i1 %cmp21, label %if.end93, label %if.else23, !dbg !1411

if.else23:                                        ; preds = %if.else19
  %call24 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([3 x i8]* @.str85, i64 0, i64 0)) #10, !dbg !1412
  %cmp25 = icmp eq i32 %call24, 0, !dbg !1412
  br i1 %cmp25, label %if.end93, label %if.else27, !dbg !1412

if.else27:                                        ; preds = %if.else23
  %call28 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([8 x i8]* @.str86, i64 0, i64 0)) #10, !dbg !1413
  %cmp29 = icmp eq i32 %call28, 0, !dbg !1413
  br i1 %cmp29, label %if.end93, label %if.else31, !dbg !1413

if.else31:                                        ; preds = %if.else27
  %call32 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([6 x i8]* @.str87, i64 0, i64 0)) #10, !dbg !1414
  %cmp33 = icmp eq i32 %call32, 0, !dbg !1414
  br i1 %cmp33, label %if.end93, label %if.else35, !dbg !1414

if.else35:                                        ; preds = %if.else31
  %call36 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([6 x i8]* @.str88, i64 0, i64 0)) #10, !dbg !1415
  %cmp37 = icmp eq i32 %call36, 0, !dbg !1415
  br i1 %cmp37, label %if.end93, label %if.else39, !dbg !1415

if.else39:                                        ; preds = %if.else35
  %call40 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([4 x i8]* @.str89, i64 0, i64 0)) #10, !dbg !1416
  %cmp41 = icmp eq i32 %call40, 0, !dbg !1416
  br i1 %cmp41, label %if.end93, label %if.else43, !dbg !1416

if.else43:                                        ; preds = %if.else39
  %call44 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([6 x i8]* @.str90, i64 0, i64 0)) #10, !dbg !1417
  %cmp45 = icmp eq i32 %call44, 0, !dbg !1417
  br i1 %cmp45, label %if.end93, label %if.else47, !dbg !1417

if.else47:                                        ; preds = %if.else43
  %call48 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([10 x i8]* @.str91, i64 0, i64 0)) #10, !dbg !1418
  %cmp49 = icmp eq i32 %call48, 0, !dbg !1418
  br i1 %cmp49, label %if.end93, label %if.else51, !dbg !1418

if.else51:                                        ; preds = %if.else47
  %call52 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([6 x i8]* @.str92, i64 0, i64 0)) #10, !dbg !1419
  %cmp53 = icmp eq i32 %call52, 0, !dbg !1419
  br i1 %cmp53, label %if.end93, label %if.else55, !dbg !1419

if.else55:                                        ; preds = %if.else51
  %call56 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([4 x i8]* @.str93, i64 0, i64 0)) #10, !dbg !1420
  %cmp57 = icmp eq i32 %call56, 0, !dbg !1420
  br i1 %cmp57, label %if.end93, label %if.else59, !dbg !1420

if.else59:                                        ; preds = %if.else55
  %call60 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0)) #10, !dbg !1421
  %cmp61 = icmp eq i32 %call60, 0, !dbg !1421
  br i1 %cmp61, label %if.end93, label %if.else63, !dbg !1421

if.else63:                                        ; preds = %if.else59
  %call64 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([4 x i8]* @.str94, i64 0, i64 0)) #10, !dbg !1422
  %cmp65 = icmp eq i32 %call64, 0, !dbg !1422
  br i1 %cmp65, label %if.end93, label %if.else67, !dbg !1422

if.else67:                                        ; preds = %if.else63
  %call68 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([7 x i8]* @.str95, i64 0, i64 0)) #10, !dbg !1423
  %cmp69 = icmp eq i32 %call68, 0, !dbg !1423
  br i1 %cmp69, label %if.end93, label %if.else71, !dbg !1423

if.else71:                                        ; preds = %if.else67
  %call72 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([4 x i8]* @.str96, i64 0, i64 0)) #10, !dbg !1424
  %cmp73 = icmp eq i32 %call72, 0, !dbg !1424
  tail call void @llvm.dbg.value(metadata !1425, i64 0, metadata !466), !dbg !1424
  %. = select i1 %cmp73, i32 107, i32 0, !dbg !1424
  br label %if.end93, !dbg !1424

if.end93:                                         ; preds = %if.else71, %if.else67, %if.else63, %if.else59, %if.else55, %if.else51, %if.else47, %if.else43, %if.else39, %if.else35, %if.else31, %if.else27, %if.else23, %if.else19, %if.else15, %if.else11, %if.else7, %if.else, %if.end
  %code.0 = phi i32 [ 7, %if.end ], [ 2, %if.else ], [ 4, %if.else7 ], [ 5, %if.else11 ], [ 16, %if.else15 ], [ 13, %if.else19 ], [ 1, %if.else23 ], [ 6, %if.else27 ], [ 9, %if.else31 ], [ 8, %if.else35 ], [ 12, %if.else39 ], [ 14, %if.else43 ], [ 101, %if.else47 ], [ 102, %if.else51 ], [ 103, %if.else55 ], [ 104, %if.else59 ], [ 105, %if.else63 ], [ 106, %if.else67 ], [ %., %if.else71 ]
  tail call void @free(i8* %call) #9, !dbg !1426
  br label %return, !dbg !1427

return:                                           ; preds = %entry, %if.end93
  %retval.0 = phi i32 [ %code.0, %if.end93 ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !1428
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i8* @SeqfileFormat2String(i32 %code) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %code}, i64 0, metadata !471), !dbg !1429
  switch i32 %code, label %sw.default [
    i32 0, label %return
    i32 7, label %sw.bb1
    i32 2, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 16, label %sw.bb5
    i32 13, label %sw.bb6
    i32 1, label %sw.bb7
    i32 6, label %sw.bb8
    i32 9, label %sw.bb9
    i32 8, label %sw.bb10
    i32 12, label %sw.bb11
    i32 14, label %sw.bb12
    i32 101, label %sw.bb13
    i32 102, label %sw.bb14
    i32 103, label %sw.bb15
    i32 104, label %sw.bb16
    i32 105, label %sw.bb17
    i32 106, label %sw.bb18
    i32 107, label %sw.bb19
  ], !dbg !1430

sw.bb1:                                           ; preds = %entry
  br label %return, !dbg !1431

sw.bb2:                                           ; preds = %entry
  br label %return, !dbg !1433

sw.bb3:                                           ; preds = %entry
  br label %return, !dbg !1434

sw.bb4:                                           ; preds = %entry
  br label %return, !dbg !1435

sw.bb5:                                           ; preds = %entry
  br label %return, !dbg !1436

sw.bb6:                                           ; preds = %entry
  br label %return, !dbg !1437

sw.bb7:                                           ; preds = %entry
  br label %return, !dbg !1438

sw.bb8:                                           ; preds = %entry
  br label %return, !dbg !1439

sw.bb9:                                           ; preds = %entry
  br label %return, !dbg !1440

sw.bb10:                                          ; preds = %entry
  br label %return, !dbg !1441

sw.bb11:                                          ; preds = %entry
  br label %return, !dbg !1442

sw.bb12:                                          ; preds = %entry
  br label %return, !dbg !1443

sw.bb13:                                          ; preds = %entry
  br label %return, !dbg !1444

sw.bb14:                                          ; preds = %entry
  br label %return, !dbg !1445

sw.bb15:                                          ; preds = %entry
  br label %return, !dbg !1446

sw.bb16:                                          ; preds = %entry
  br label %return, !dbg !1447

sw.bb17:                                          ; preds = %entry
  br label %return, !dbg !1448

sw.bb18:                                          ; preds = %entry
  br label %return, !dbg !1449

sw.bb19:                                          ; preds = %entry
  br label %return, !dbg !1450

sw.default:                                       ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([38 x i8]* @.str109, i64 0, i64 0)) #9, !dbg !1451
  br label %return, !dbg !1452

return:                                           ; preds = %entry, %sw.default, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi i8* [ null, %sw.default ], [ getelementptr inbounds ([4 x i8]* @.str96, i64 0, i64 0), %sw.bb19 ], [ getelementptr inbounds ([7 x i8]* @.str108, i64 0, i64 0), %sw.bb18 ], [ getelementptr inbounds ([4 x i8]* @.str107, i64 0, i64 0), %sw.bb17 ], [ getelementptr inbounds ([8 x i8]* @.str106, i64 0, i64 0), %sw.bb16 ], [ getelementptr inbounds ([4 x i8]* @.str93, i64 0, i64 0), %sw.bb15 ], [ getelementptr inbounds ([6 x i8]* @.str92, i64 0, i64 0), %sw.bb14 ], [ getelementptr inbounds ([10 x i8]* @.str105, i64 0, i64 0), %sw.bb13 ], [ getelementptr inbounds ([6 x i8]* @.str90, i64 0, i64 0), %sw.bb12 ], [ getelementptr inbounds ([4 x i8]* @.str89, i64 0, i64 0), %sw.bb11 ], [ getelementptr inbounds ([6 x i8]* @.str104, i64 0, i64 0), %sw.bb10 ], [ getelementptr inbounds ([17 x i8]* @.str103, i64 0, i64 0), %sw.bb9 ], [ getelementptr inbounds ([11 x i8]* @.str102, i64 0, i64 0), %sw.bb8 ], [ getelementptr inbounds ([16 x i8]* @.str101, i64 0, i64 0), %sw.bb7 ], [ getelementptr inbounds ([4 x i8]* @.str100, i64 0, i64 0), %sw.bb6 ], [ getelementptr inbounds ([17 x i8]* @.str99, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([4 x i8]* @.str82, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([5 x i8]* @.str81, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([8 x i8]* @.str98, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([6 x i8]* @.str79, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([8 x i8]* @.str97, i64 0, i64 0), %entry ]
  ret i8* %retval.0, !dbg !1452
}

; Function Attrs: nounwind optsize uwtable
define %struct.seqinfo_s* @MSAToSqinfo(%struct.msa_struct* %msa) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !476), !dbg !1453
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !1454
  %0 = load i32* %nseq, align 4, !dbg !1454, !tbaa !600
  %conv = sext i32 %0 to i64, !dbg !1454
  %mul = mul i64 %conv, 360, !dbg !1454
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str78, i64 0, i64 0), i32 1857, i64 %mul) #9, !dbg !1454
  %1 = bitcast i8* %call to %struct.seqinfo_s*, !dbg !1454
  tail call void @llvm.dbg.value(metadata !{%struct.seqinfo_s* %1}, i64 0, metadata !478), !dbg !1454
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !477), !dbg !1455
  %2 = load i32* %nseq, align 4, !dbg !1455, !tbaa !600
  %cmp116 = icmp sgt i32 %2, 0, !dbg !1455
  br i1 %cmp116, label %for.body.lr.ph, label %for.end, !dbg !1455

for.body.lr.ph:                                   ; preds = %entry
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !1457
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16, !dbg !1459
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17, !dbg !1460
  %aseq61 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !1461
  %alen47 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !1462
  br label %for.body, !dbg !1455

for.body:                                         ; preds = %for.body.lr.ph, %if.end59
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end59 ]
  %arrayidx = getelementptr inbounds %struct.seqinfo_s* %1, i64 %indvars.iv, !dbg !1464
  %flags = getelementptr inbounds %struct.seqinfo_s* %arrayidx, i64 0, i32 0, !dbg !1464
  store i32 0, i32* %flags, align 4, !dbg !1464, !tbaa !600
  %3 = load i8*** %sqname, align 8, !dbg !1457, !tbaa !612
  %arrayidx6 = getelementptr inbounds i8** %3, i64 %indvars.iv, !dbg !1457
  %4 = load i8** %arrayidx6, align 8, !dbg !1457, !tbaa !612
  %call7 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx, i8* %4, i32 1) #8, !dbg !1457
  %5 = trunc i64 %indvars.iv to i32, !dbg !1465
  %call10 = tail call i8* @MSAGetSeqAccession(%struct.msa_struct* %msa, i32 %5) #9, !dbg !1465
  %call11 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx, i8* %call10, i32 4) #8, !dbg !1465
  %call14 = tail call i8* @MSAGetSeqDescription(%struct.msa_struct* %msa, i32 %5) #9, !dbg !1466
  %call15 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx, i8* %call14, i32 8) #8, !dbg !1466
  %6 = load i8*** %ss, align 8, !dbg !1459, !tbaa !612
  %cmp16 = icmp eq i8** %6, null, !dbg !1459
  br i1 %cmp16, label %if.end, label %land.lhs.true, !dbg !1459

land.lhs.true:                                    ; preds = %for.body
  %arrayidx20 = getelementptr inbounds i8** %6, i64 %indvars.iv, !dbg !1459
  %7 = load i8** %arrayidx20, align 8, !dbg !1459, !tbaa !612
  %cmp21 = icmp eq i8* %7, null, !dbg !1459
  br i1 %cmp21, label %if.end, label %if.then, !dbg !1459

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*** %aseq61, align 8, !dbg !1467, !tbaa !612
  %arrayidx24 = getelementptr inbounds i8** %8, i64 %indvars.iv, !dbg !1467
  %9 = load i8** %arrayidx24, align 8, !dbg !1467, !tbaa !612
  %10 = load i32* %alen47, align 4, !dbg !1467, !tbaa !600
  %ss30 = getelementptr inbounds %struct.seqinfo_s* %1, i64 %indvars.iv, i32 10, !dbg !1467
  %call31 = tail call i32 @MakeDealignedString(i8* %9, i32 %10, i8* %7, i8** %ss30) #9, !dbg !1467
  %11 = load i32* %flags, align 4, !dbg !1469, !tbaa !600
  %or = or i32 %11, 512, !dbg !1469
  store i32 %or, i32* %flags, align 4, !dbg !1469, !tbaa !600
  br label %if.end, !dbg !1470

if.end:                                           ; preds = %land.lhs.true, %for.body, %if.then
  %12 = load i8*** %sa, align 8, !dbg !1460, !tbaa !612
  %cmp35 = icmp eq i8** %12, null, !dbg !1460
  br i1 %cmp35, label %if.end59, label %land.lhs.true37, !dbg !1460

land.lhs.true37:                                  ; preds = %if.end
  %arrayidx40 = getelementptr inbounds i8** %12, i64 %indvars.iv, !dbg !1460
  %13 = load i8** %arrayidx40, align 8, !dbg !1460, !tbaa !612
  %cmp41 = icmp eq i8* %13, null, !dbg !1460
  br i1 %cmp41, label %if.end59, label %if.then43, !dbg !1460

if.then43:                                        ; preds = %land.lhs.true37
  %14 = load i8*** %aseq61, align 8, !dbg !1462, !tbaa !612
  %arrayidx46 = getelementptr inbounds i8** %14, i64 %indvars.iv, !dbg !1462
  %15 = load i8** %arrayidx46, align 8, !dbg !1462, !tbaa !612
  %16 = load i32* %alen47, align 4, !dbg !1462, !tbaa !600
  %sa53 = getelementptr inbounds %struct.seqinfo_s* %1, i64 %indvars.iv, i32 11, !dbg !1462
  %call54 = tail call i32 @MakeDealignedString(i8* %15, i32 %16, i8* %13, i8** %sa53) #9, !dbg !1462
  %17 = load i32* %flags, align 4, !dbg !1471, !tbaa !600
  %or58 = or i32 %17, 1024, !dbg !1471
  store i32 %or58, i32* %flags, align 4, !dbg !1471, !tbaa !600
  br label %if.end59, !dbg !1472

if.end59:                                         ; preds = %land.lhs.true37, %if.end, %if.then43
  %18 = load i8*** %aseq61, align 8, !dbg !1461, !tbaa !612
  %arrayidx62 = getelementptr inbounds i8** %18, i64 %indvars.iv, !dbg !1461
  %19 = load i8** %arrayidx62, align 8, !dbg !1461, !tbaa !612
  %call63 = tail call i32 @DealignedLength(i8* %19) #9, !dbg !1461
  %len = getelementptr inbounds %struct.seqinfo_s* %1, i64 %indvars.iv, i32 5, !dbg !1461
  store i32 %call63, i32* %len, align 4, !dbg !1461, !tbaa !600
  %20 = load i32* %flags, align 4, !dbg !1473, !tbaa !600
  %or69 = or i32 %20, 64, !dbg !1473
  store i32 %or69, i32* %flags, align 4, !dbg !1473, !tbaa !600
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1455
  %21 = load i32* %nseq, align 4, !dbg !1455, !tbaa !600
  %22 = trunc i64 %indvars.iv.next to i32, !dbg !1455
  %cmp = icmp slt i32 %22, %21, !dbg !1455
  br i1 %cmp, label %for.body, label %for.end, !dbg !1455

for.end:                                          ; preds = %if.end59, %entry
  ret %struct.seqinfo_s* %1, !dbg !1474
}

; Function Attrs: optsize
declare i8* @MSAGetSeqAccession(%struct.msa_struct*, i32) #2

; Function Attrs: optsize
declare i8* @MSAGetSeqDescription(%struct.msa_struct*, i32) #2

; Function Attrs: optsize
declare i32 @DealignedLength(i8*) #2

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @addseq(i8* %s, %struct.ReadSeqVars* nocapture %V) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !492), !dbg !1475
  tail call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %V}, i64 0, metadata !493), !dbg !1475
  %ssimode = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 5, !dbg !1476
  %0 = load i32* %ssimode, align 4, !dbg !1476, !tbaa !600
  %cmp = icmp eq i32 %0, -1, !dbg !1476
  br i1 %cmp, label %if.then, label %while.cond36.preheader, !dbg !1476

while.cond36.preheader:                           ; preds = %entry
  %1 = load i8* %s, align 1, !dbg !1477, !tbaa !601
  %cmp38199 = icmp eq i8 %1, 0, !dbg !1477
  br i1 %cmp38199, label %while.end59, label %while.body40.lr.ph, !dbg !1477

while.body40.lr.ph:                               ; preds = %while.cond36.preheader
  %call43 = tail call i16** @__ctype_b_loc() #11, !dbg !1479
  %2 = load i16** %call43, align 8, !dbg !1479, !tbaa !612
  br label %while.body40, !dbg !1477

if.then:                                          ; preds = %entry
  %seqlen = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 18, !dbg !1481
  %3 = load i32* %seqlen, align 4, !dbg !1481, !tbaa !600
  %buflen = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 4, !dbg !1481
  %4 = load i32* %buflen, align 4, !dbg !1481, !tbaa !600
  %add = add nsw i32 %4, %3, !dbg !1481
  %maxseq = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 19, !dbg !1481
  %5 = load i32* %maxseq, align 4, !dbg !1481, !tbaa !600
  %cmp1 = icmp sgt i32 %add, %5, !dbg !1481
  br i1 %cmp1, label %if.then2, label %if.then.if.end_crit_edge, !dbg !1481

if.then.if.end_crit_edge:                         ; preds = %if.then
  %seq13.pre = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15, !dbg !1483
  br label %if.end, !dbg !1481

if.then2:                                         ; preds = %if.then
  %cmp4 = icmp sgt i32 %4, 500, !dbg !1484
  %. = select i1 %cmp4, i32 %4, i32 500, !dbg !1484
  %add7 = add nsw i32 %., %5, !dbg !1484
  store i32 %add7, i32* %maxseq, align 4, !dbg !1484, !tbaa !600
  %seq = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15, !dbg !1486
  %6 = load i8** %seq, align 8, !dbg !1486, !tbaa !612
  %add9 = add nsw i32 %add7, 1, !dbg !1486
  %conv = sext i32 %add9 to i64, !dbg !1486
  %call = tail call i8* @sre_realloc(i8* getelementptr inbounds ([50 x i8]* @.str78, i64 0, i64 0), i32 524, i8* %6, i64 %conv) #9, !dbg !1486
  store i8* %call, i8** %seq, align 8, !dbg !1486, !tbaa !612
  %7 = load i32* %maxseq, align 4, !dbg !1487, !tbaa !600
  %idxprom = sext i32 %7 to i64, !dbg !1487
  %arrayidx = getelementptr inbounds i8* %call, i64 %idxprom, !dbg !1487
  store i8 0, i8* %arrayidx, align 1, !dbg !1487, !tbaa !601
  %.pre = load i32* %seqlen, align 4, !dbg !1483, !tbaa !600
  br label %if.end, !dbg !1488

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then2
  %seq13.pre-phi = phi i8** [ %seq13.pre, %if.then.if.end_crit_edge ], [ %seq, %if.then2 ], !dbg !1483
  %8 = phi i32 [ %3, %if.then.if.end_crit_edge ], [ %.pre, %if.then2 ]
  %9 = load i8** %seq13.pre-phi, align 8, !dbg !1483, !tbaa !612
  %idx.ext = sext i32 %8 to i64, !dbg !1483
  %add.ptr = getelementptr inbounds i8* %9, i64 %idx.ext, !dbg !1483
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !495), !dbg !1483
  %10 = load i8* %s, align 1, !dbg !1489, !tbaa !601
  %cmp16196 = icmp eq i8 %10, 0, !dbg !1489
  br i1 %cmp16196, label %while.end, label %while.body.lr.ph, !dbg !1489

while.body.lr.ph:                                 ; preds = %if.end
  %call20 = tail call i16** @__ctype_b_loc() #11, !dbg !1490
  br label %while.body, !dbg !1489

while.body:                                       ; preds = %if.end31, %while.body.lr.ph
  %11 = phi i8 [ %10, %while.body.lr.ph ], [ %16, %if.end31 ]
  %s.addr.0198 = phi i8* [ %s, %while.body.lr.ph ], [ %incdec.ptr32, %if.end31 ]
  %sq.0197 = phi i8* [ %add.ptr, %while.body.lr.ph ], [ %sq.1, %if.end31 ]
  %idxprom19 = sext i8 %11 to i64, !dbg !1490
  %12 = load i16** %call20, align 8, !dbg !1490, !tbaa !612
  %arrayidx21 = getelementptr inbounds i16* %12, i64 %idxprom19, !dbg !1490
  %13 = load i16* %arrayidx21, align 2, !dbg !1490, !tbaa !722
  %14 = and i16 %13, 10240, !dbg !1490
  %15 = icmp eq i16 %14, 0, !dbg !1490
  br i1 %15, label %if.then30, label %if.end31, !dbg !1490

if.then30:                                        ; preds = %while.body
  store i8 %11, i8* %sq.0197, align 1, !dbg !1492, !tbaa !601
  %incdec.ptr = getelementptr inbounds i8* %sq.0197, i64 1, !dbg !1494
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !495), !dbg !1494
  br label %if.end31, !dbg !1495

if.end31:                                         ; preds = %while.body, %if.then30
  %sq.1 = phi i8* [ %sq.0197, %while.body ], [ %incdec.ptr, %if.then30 ]
  %incdec.ptr32 = getelementptr inbounds i8* %s.addr.0198, i64 1, !dbg !1496
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr32}, i64 0, metadata !492), !dbg !1496
  %16 = load i8* %incdec.ptr32, align 1, !dbg !1489, !tbaa !601
  %cmp16 = icmp eq i8 %16, 0, !dbg !1489
  br i1 %cmp16, label %while.cond.while.end_crit_edge, label %while.body, !dbg !1489

while.cond.while.end_crit_edge:                   ; preds = %if.end31
  %.pre204 = load i8** %seq13.pre-phi, align 8, !dbg !1497, !tbaa !612
  br label %while.end, !dbg !1489

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end
  %17 = phi i8* [ %.pre204, %while.cond.while.end_crit_edge ], [ %9, %if.end ]
  %sq.0.lcssa = phi i8* [ %sq.1, %while.cond.while.end_crit_edge ], [ %add.ptr, %if.end ]
  %sub.ptr.lhs.cast = ptrtoint i8* %sq.0.lcssa to i64, !dbg !1497
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64, !dbg !1497
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1497
  %conv34 = trunc i64 %sub.ptr.sub to i32, !dbg !1497
  store i32 %conv34, i32* %seqlen, align 4, !dbg !1497, !tbaa !600
  br label %if.end134, !dbg !1498

while.body40:                                     ; preds = %while.body40.lr.ph, %while.body40
  %18 = phi i8 [ %1, %while.body40.lr.ph ], [ %22, %while.body40 ]
  %s.addr.1201 = phi i8* [ %s, %while.body40.lr.ph ], [ %incdec.ptr58, %while.body40 ]
  %rpl.0200 = phi i32 [ 0, %while.body40.lr.ph ], [ %rpl.1, %while.body40 ]
  %idxprom42 = sext i8 %18 to i64, !dbg !1479
  %arrayidx44 = getelementptr inbounds i16* %2, i64 %idxprom42, !dbg !1479
  %19 = load i16* %arrayidx44, align 2, !dbg !1479, !tbaa !722
  %20 = and i16 %19, 10240, !dbg !1479
  %21 = icmp eq i16 %20, 0, !dbg !1479
  %inc = zext i1 %21 to i32, !dbg !1479
  %rpl.1 = add nsw i32 %inc, %rpl.0200, !dbg !1479
  %incdec.ptr58 = getelementptr inbounds i8* %s.addr.1201, i64 1, !dbg !1499
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr58}, i64 0, metadata !492), !dbg !1499
  %22 = load i8* %incdec.ptr58, align 1, !dbg !1477, !tbaa !601
  %cmp38 = icmp eq i8 %22, 0, !dbg !1477
  br i1 %cmp38, label %while.end59, label %while.body40, !dbg !1477

while.end59:                                      ; preds = %while.body40, %while.cond36.preheader
  %s.addr.1.lcssa = phi i8* [ %s, %while.cond36.preheader ], [ %incdec.ptr58, %while.body40 ]
  %rpl.0.lcssa = phi i32 [ 0, %while.cond36.preheader ], [ %rpl.1, %while.body40 ]
  %seqlen60 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 18, !dbg !1500
  %23 = load i32* %seqlen60, align 4, !dbg !1500, !tbaa !600
  %add61 = add nsw i32 %23, %rpl.0.lcssa, !dbg !1500
  store i32 %add61, i32* %seqlen60, align 4, !dbg !1500, !tbaa !600
  %sub.ptr.lhs.cast62 = ptrtoint i8* %s.addr.1.lcssa to i64, !dbg !1501
  %sub.ptr.rhs.cast63 = ptrtoint i8* %s to i64, !dbg !1501
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63, !dbg !1501
  %conv65 = trunc i64 %sub.ptr.sub64 to i32, !dbg !1501
  tail call void @llvm.dbg.value(metadata !{i32 %conv65}, i64 0, metadata !497), !dbg !1501
  %rpl66 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 9, !dbg !1502
  %24 = load i32* %rpl66, align 4, !dbg !1502, !tbaa !600
  %cmp67 = icmp eq i32 %24, 0, !dbg !1502
  br i1 %cmp67, label %if.end99, label %if.then69, !dbg !1502

if.then69:                                        ; preds = %while.end59
  %lastrpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 10, !dbg !1503
  %25 = load i32* %lastrpl, align 4, !dbg !1503, !tbaa !600
  %cmp70 = icmp sgt i32 %25, 0, !dbg !1503
  br i1 %cmp70, label %if.then72, label %if.end92, !dbg !1503

if.then72:                                        ; preds = %if.then69
  %cmp74 = icmp slt i32 %24, 1, !dbg !1505
  %cmp79 = icmp eq i32 %25, %24, !dbg !1505
  %or.cond194 = or i1 %cmp74, %cmp79, !dbg !1505
  br i1 %or.cond194, label %if.else83, label %if.then81, !dbg !1505

if.then81:                                        ; preds = %if.then72
  store i32 0, i32* %rpl66, align 4, !dbg !1505, !tbaa !600
  br label %if.end92, !dbg !1505

if.else83:                                        ; preds = %if.then72
  %cmp85 = icmp eq i32 %24, -1, !dbg !1507
  br i1 %cmp85, label %if.then87, label %if.end92, !dbg !1507

if.then87:                                        ; preds = %if.else83
  store i32 %25, i32* %rpl66, align 4, !dbg !1507, !tbaa !600
  br label %if.end92, !dbg !1507

if.end92:                                         ; preds = %if.then81, %if.then87, %if.else83, %if.then69
  store i32 %rpl.0.lcssa, i32* %lastrpl, align 4, !dbg !1508, !tbaa !600
  %maxrpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 11, !dbg !1509
  %26 = load i32* %maxrpl, align 4, !dbg !1509, !tbaa !600
  %cmp94 = icmp sgt i32 %rpl.0.lcssa, %26, !dbg !1509
  br i1 %cmp94, label %if.then96, label %if.end99, !dbg !1509

if.then96:                                        ; preds = %if.end92
  store i32 %rpl.0.lcssa, i32* %maxrpl, align 4, !dbg !1509, !tbaa !600
  br label %if.end99, !dbg !1509

if.end99:                                         ; preds = %while.end59, %if.end92, %if.then96
  %bpl100 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 12, !dbg !1510
  %27 = load i32* %bpl100, align 4, !dbg !1510, !tbaa !600
  %cmp101 = icmp eq i32 %27, 0, !dbg !1510
  br i1 %cmp101, label %if.end134, label %if.then103, !dbg !1510

if.then103:                                       ; preds = %if.end99
  %lastbpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 13, !dbg !1511
  %28 = load i32* %lastbpl, align 4, !dbg !1511, !tbaa !600
  %cmp104 = icmp sgt i32 %28, 0, !dbg !1511
  br i1 %cmp104, label %if.then106, label %if.end126, !dbg !1511

if.then106:                                       ; preds = %if.then103
  %cmp108 = icmp slt i32 %27, 1, !dbg !1513
  %cmp113 = icmp eq i32 %28, %27, !dbg !1513
  %or.cond195 = or i1 %cmp108, %cmp113, !dbg !1513
  br i1 %or.cond195, label %if.else117, label %if.then115, !dbg !1513

if.then115:                                       ; preds = %if.then106
  store i32 0, i32* %bpl100, align 4, !dbg !1513, !tbaa !600
  br label %if.end126, !dbg !1513

if.else117:                                       ; preds = %if.then106
  %cmp119 = icmp eq i32 %27, -1, !dbg !1515
  br i1 %cmp119, label %if.then121, label %if.end126, !dbg !1515

if.then121:                                       ; preds = %if.else117
  store i32 %28, i32* %bpl100, align 4, !dbg !1515, !tbaa !600
  br label %if.end126, !dbg !1515

if.end126:                                        ; preds = %if.then115, %if.then121, %if.else117, %if.then103
  store i32 %conv65, i32* %lastbpl, align 4, !dbg !1516, !tbaa !600
  %maxbpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 14, !dbg !1517
  %29 = load i32* %maxbpl, align 4, !dbg !1517, !tbaa !600
  %cmp128 = icmp sgt i32 %conv65, %29, !dbg !1517
  br i1 %cmp128, label %if.then130, label %if.end134, !dbg !1517

if.then130:                                       ; preds = %if.end126
  store i32 %conv65, i32* %maxbpl, align 4, !dbg !1517, !tbaa !600
  br label %if.end134, !dbg !1517

if.end134:                                        ; preds = %if.end99, %if.then130, %if.end126, %while.end
  ret void, !dbg !1518
}

; Function Attrs: optsize
declare i32 @Strparse(i8*, i8*, i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @readLoop(i32 %addfirst, i32 (i8*, i32*)* nocapture %endTest, %struct.ReadSeqVars* %V) #0 {
entry:
  %addend = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %addfirst}, i64 0, metadata !514), !dbg !1519
  call void @llvm.dbg.value(metadata !{i32 (i8*, i32*)* %endTest}, i64 0, metadata !515), !dbg !1519
  call void @llvm.dbg.value(metadata !{%struct.ReadSeqVars* %V}, i64 0, metadata !516), !dbg !1519
  call void @llvm.dbg.declare(metadata !{i32* %addend}, metadata !517), !dbg !1520
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !517), !dbg !1520
  store i32 0, i32* %addend, align 4, !dbg !1520, !tbaa !600
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !518), !dbg !1521
  %seqlen = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 18, !dbg !1522
  store i32 0, i32* %seqlen, align 4, !dbg !1522, !tbaa !600
  %lastbpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 13, !dbg !1523
  store i32 0, i32* %lastbpl, align 4, !dbg !1523, !tbaa !600
  %lastrpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 10, !dbg !1523
  store i32 0, i32* %lastrpl, align 4, !dbg !1523, !tbaa !600
  %tobool = icmp eq i32 %addfirst, 0, !dbg !1524
  %ssimode = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 5, !dbg !1525
  %0 = load i32* %ssimode, align 4, !dbg !1525, !tbaa !600
  %cmp = icmp sgt i32 %0, -1, !dbg !1525
  br i1 %tobool, label %if.else, label %if.then, !dbg !1524

if.then:                                          ; preds = %entry
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1525

if.then1:                                         ; preds = %if.then
  %1 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 8, i32 0, !dbg !1525
  %2 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 6, i32 0, !dbg !1525
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false), !dbg !1525, !tbaa.struct !900
  br label %if.end, !dbg !1525

if.end:                                           ; preds = %if.then1, %if.then
  %buf = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3, !dbg !1527
  %3 = load i8** %buf, align 8, !dbg !1527, !tbaa !612
  call fastcc void @addseq(i8* %3, %struct.ReadSeqVars* %V) #8, !dbg !1527
  br label %do.body.preheader, !dbg !1528

if.else:                                          ; preds = %entry
  br i1 %cmp, label %if.then4, label %do.body.preheader, !dbg !1529

if.then4:                                         ; preds = %if.else
  %f = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 0, !dbg !1530
  %4 = load %struct._IO_FILE** %f, align 8, !dbg !1530, !tbaa !612
  %d_off6 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 8, !dbg !1530
  %call = call i32 @SSIGetFilePosition(%struct._IO_FILE* %4, i32 %0, %struct.ssioffset_s* %d_off6) #9, !dbg !1530
  %cmp7 = icmp eq i32 %call, 0, !dbg !1530
  br i1 %cmp7, label %do.body.preheader, label %if.then8, !dbg !1530

if.then8:                                         ; preds = %if.then4
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str120, i64 0, i64 0)) #9, !dbg !1531
  br label %do.body.preheader, !dbg !1531

do.body.preheader:                                ; preds = %if.else, %if.then8, %if.end, %if.then4
  %buf12 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3, !dbg !1532
  %f15 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 0, !dbg !1532
  br label %do.body, !dbg !1534

do.body:                                          ; preds = %do.body.preheader, %do.cond
  call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8, !dbg !1534
  %5 = load i8** %buf12, align 8, !dbg !1532, !tbaa !612
  %6 = load i8* %5, align 1, !dbg !1532, !tbaa !601
  %cmp13 = icmp eq i8 %6, 0, !dbg !1532
  br i1 %cmp13, label %land.lhs.true, label %if.end19, !dbg !1532

land.lhs.true:                                    ; preds = %do.body
  %7 = load %struct._IO_FILE** %f15, align 8, !dbg !1532, !tbaa !612
  %call16 = call i32 @feof(%struct._IO_FILE* %7) #9, !dbg !1532
  call void @llvm.dbg.value(metadata !1036, i64 0, metadata !518), !dbg !1535
  %not.tobool17 = icmp ne i32 %call16, 0, !dbg !1532
  %done.0. = zext i1 %not.tobool17 to i32, !dbg !1532
  %.pre = load i8** %buf12, align 8, !dbg !1536, !tbaa !612
  br label %if.end19, !dbg !1532

if.end19:                                         ; preds = %land.lhs.true, %do.body
  %8 = phi i8* [ %5, %do.body ], [ %.pre, %land.lhs.true ]
  %done.1 = phi i32 [ 0, %do.body ], [ %done.0., %land.lhs.true ]
  %call21 = call i32 %endTest(i8* %8, i32* %addend) #9, !dbg !1536
  %or = or i32 %call21, %done.1, !dbg !1536
  call void @llvm.dbg.value(metadata !{i32 %or}, i64 0, metadata !518), !dbg !1536
  call void @llvm.dbg.value(metadata !{i32* %addend}, i64 0, metadata !517), !dbg !1537
  %9 = load i32* %addend, align 4, !dbg !1537, !tbaa !600
  %tobool22 = icmp ne i32 %9, 0, !dbg !1537
  %tobool23 = icmp eq i32 %or, 0, !dbg !1537
  %or.cond = or i1 %tobool22, %tobool23, !dbg !1537
  br i1 %or.cond, label %if.then24, label %do.cond, !dbg !1537

if.then24:                                        ; preds = %if.end19
  %10 = load i8** %buf12, align 8, !dbg !1538, !tbaa !612
  call fastcc void @addseq(i8* %10, %struct.ReadSeqVars* %V) #8, !dbg !1538
  br label %do.cond, !dbg !1538

do.cond:                                          ; preds = %if.end19, %if.then24
  br i1 %tobool23, label %do.body, label %do.end, !dbg !1539

do.end:                                           ; preds = %do.cond
  ret void, !dbg !1540
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @endGCGdata(i8* nocapture %s, i32* nocapture %addend) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !507), !dbg !1541
  tail call void @llvm.dbg.value(metadata !{i32* %addend}, i64 0, metadata !508), !dbg !1541
  store i32 0, i32* %addend, align 4, !dbg !1542, !tbaa !600
  %0 = load i8* %s, align 1, !dbg !1543, !tbaa !601
  %cmp = icmp eq i8 %0, 62, !dbg !1543
  %conv1 = zext i1 %cmp to i32, !dbg !1543
  ret i32 %conv1, !dbg !1543
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #6

; Function Attrs: optsize
declare i32 @SSIGetFilePosition(%struct._IO_FILE*, i32, %struct.ssioffset_s*) #2

; Function Attrs: nounwind optsize uwtable
define internal i32 @endPIR(i8* nocapture %s, i32* nocapture %addend) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !525), !dbg !1544
  tail call void @llvm.dbg.value(metadata !{i32* %addend}, i64 0, metadata !526), !dbg !1544
  store i32 0, i32* %addend, align 4, !dbg !1545, !tbaa !600
  %call = tail call i32 @strncmp(i8* %s, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0), i64 3) #10, !dbg !1546
  %cmp = icmp eq i32 %call, 0, !dbg !1546
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !1546

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strncmp(i8* %s, i8* getelementptr inbounds ([6 x i8]* @.str121, i64 0, i64 0), i64 5) #10, !dbg !1547
  %cmp2 = icmp eq i32 %call1, 0, !dbg !1547
  %. = zext i1 %cmp2 to i32, !dbg !1547
  ret i32 %., !dbg !1547

return:                                           ; preds = %entry
  ret i32 1, !dbg !1548
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @endZuker(i8* nocapture %s, i32* nocapture %addend) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !533), !dbg !1549
  tail call void @llvm.dbg.value(metadata !{i32* %addend}, i64 0, metadata !534), !dbg !1549
  store i32 0, i32* %addend, align 4, !dbg !1550, !tbaa !600
  %0 = load i8* %s, align 1, !dbg !1551, !tbaa !601
  %cmp = icmp eq i8 %0, 40, !dbg !1551
  %conv1 = zext i1 %cmp to i32, !dbg !1551
  ret i32 %conv1, !dbg !1551
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @endEMBL(i8* nocapture %s, i32* nocapture %addend) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !541), !dbg !1552
  tail call void @llvm.dbg.value(metadata !{i32* %addend}, i64 0, metadata !542), !dbg !1552
  store i32 0, i32* %addend, align 4, !dbg !1553, !tbaa !600
  %call = tail call i32 @strncmp(i8* %s, i8* getelementptr inbounds ([6 x i8]* @.str130, i64 0, i64 0), i64 5) #10, !dbg !1554
  %cmp = icmp ne i32 %call, 0, !dbg !1554
  %conv = zext i1 %cmp to i32, !dbg !1554
  ret i32 %conv, !dbg !1554
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @endPearson(i8* nocapture %s, i32* nocapture %addend) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !549), !dbg !1555
  tail call void @llvm.dbg.value(metadata !{i32* %addend}, i64 0, metadata !550), !dbg !1555
  store i32 0, i32* %addend, align 4, !dbg !1556, !tbaa !600
  %0 = load i8* %s, align 1, !dbg !1557, !tbaa !601
  %cmp = icmp eq i8 %0, 62, !dbg !1557
  %conv1 = zext i1 %cmp to i32, !dbg !1557
  ret i32 %conv1, !dbg !1557
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @endGB(i8* %s, i32* nocapture %addend) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !558), !dbg !1558
  tail call void @llvm.dbg.value(metadata !{i32* %addend}, i64 0, metadata !559), !dbg !1558
  store i32 0, i32* %addend, align 4, !dbg !1559, !tbaa !600
  %call = tail call i8* @strstr(i8* %s, i8* getelementptr inbounds ([3 x i8]* @.str137, i64 0, i64 0)) #10, !dbg !1560
  %cmp = icmp eq i8* %call, null, !dbg !1560
  br i1 %cmp, label %lor.rhs, label %lor.end, !dbg !1560

lor.rhs:                                          ; preds = %entry
  %strncmp = tail call i32 @strncmp(i8* %s, i8* getelementptr inbounds ([6 x i8]* @.str132, i64 0, i64 0), i64 5), !dbg !1560
  %cmp5 = icmp eq i32 %strncmp, 0, !dbg !1560
  br label %lor.end, !dbg !1560

lor.end:                                          ; preds = %entry, %lor.rhs
  %0 = phi i1 [ true, %entry ], [ %cmp5, %lor.rhs ]
  %lor.ext = zext i1 %0 to i32, !dbg !1560
  ret i32 %lor.ext, !dbg !1560
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @endStrider(i8* %s, i32* nocapture %addend) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !566), !dbg !1561
  tail call void @llvm.dbg.value(metadata !{i32* %addend}, i64 0, metadata !567), !dbg !1561
  store i32 0, i32* %addend, align 4, !dbg !1562, !tbaa !600
  %call = tail call i8* @strstr(i8* %s, i8* getelementptr inbounds ([3 x i8]* @.str137, i64 0, i64 0)) #10, !dbg !1563
  %cmp = icmp ne i8* %call, null, !dbg !1563
  %conv = zext i1 %cmp to i32, !dbg !1563
  ret i32 %conv, !dbg !1563
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @endIG(i8* %s, i32* nocapture %addend) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !574), !dbg !1564
  tail call void @llvm.dbg.value(metadata !{i32* %addend}, i64 0, metadata !575), !dbg !1564
  store i32 1, i32* %addend, align 4, !dbg !1565, !tbaa !600
  %call = tail call i8* @strchr(i8* %s, i32 49) #10, !dbg !1566
  %cmp = icmp eq i8* %call, null, !dbg !1566
  br i1 %cmp, label %lor.rhs, label %lor.end, !dbg !1566

lor.rhs:                                          ; preds = %entry
  %call1 = tail call i8* @strchr(i8* %s, i32 50) #10, !dbg !1566
  %cmp2 = icmp ne i8* %call1, null, !dbg !1566
  br label %lor.end, !dbg !1566

lor.end:                                          ; preds = %entry, %lor.rhs
  %0 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %0 to i32, !dbg !1566
  ret i32 %lor.ext, !dbg !1566
}

; Function Attrs: optsize
declare i32 @FileExists(i8*) #2

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @popen(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare %struct._IO_FILE* @EnvFileOpen(i8*, i8*, i8**) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #7

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize readonly }
attributes #11 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !591, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!19 = metadata !{metadata !20, metadata !268, metadata !276, metadata !283, metadata !288, metadata !295, metadata !298, metadata !304, metadata !313, metadata !319, metadata !324, metadata !327, metadata !333, metadata !342, metadata !356, metadata !366, metadata !372, metadata !380, metadata !393, metadata !402, metadata !416, metadata !447, metadata !462, metadata !467, metadata !472, metadata !479, metadata !488, metadata !498, metadata !503, metadata !509, metadata !519, metadata !523, metadata !527, metadata !531, metadata !535, metadata !539, metadata !543, metadata !547, metadata !551, metadata !556, metadata !560, metadata !564, metadata !568, metadata !572, metadata !576, metadata !579}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"SeqfileOpen", metadata !"SeqfileOpen", metadata !"", i32 87, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.ReadSeqVars* (i8*, i32, i8*)* @SeqfileOpen, null, null, metadata !264, i32 88} ; [ DW_TAG_subprogram ] [line 87] [def] [scope 88] [SeqfileOpen]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !38, metadata !36, metadata !38}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SQFILE]
!25 = metadata !{i32 786454, metadata !1, null, metadata !"SQFILE", i32 240, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [SQFILE] [line 240, size 0, align 0, offset 0] [from ReadSeqVars]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"ReadSeqVars", i32 197, i64 1408, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [ReadSeqVars] [line 197, size 1408, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/squid.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !223}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"f", i32 198, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [f] [line 198, size 64, align 64, offset 0] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!31 = metadata !{i32 786454, metadata !27, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!32 = metadata !{i32 786451, metadata !33, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !34, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!33 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!34 = metadata !{metadata !35, metadata !37, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !58, metadata !59, metadata !60, metadata !61, metadata !64, metadata !66, metadata !68, metadata !72, metadata !74, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !83, metadata !84}
!35 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!36 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!37 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!39 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!40 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!41 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!42 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!43 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!44 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!45 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!46 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!47 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!48 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!49 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !38} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!50 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !51} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!52 = metadata !{i32 786451, metadata !33, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !53, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!53 = metadata !{metadata !54, metadata !55, metadata !57}
!54 = metadata !{i32 786445, metadata !33, metadata !52, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!55 = metadata !{i32 786445, metadata !33, metadata !52, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!57 = metadata !{i32 786445, metadata !33, metadata !52, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!58 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !56} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!59 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !36} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!60 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!61 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !62} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!62 = metadata !{i32 786454, metadata !33, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!63 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!64 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !65} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!65 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!66 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !67} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!67 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!68 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !69} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!69 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !39, metadata !70, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!70 = metadata !{metadata !71}
!71 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!72 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !73} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!74 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !75} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!75 = metadata !{i32 786454, metadata !33, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!76 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !73} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!77 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !73} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!78 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !73} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!79 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !73} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!80 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !81} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!81 = metadata !{i32 786454, metadata !33, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!82 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!83 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !36} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!84 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !85} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!85 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !39, metadata !86, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!86 = metadata !{metadata !87}
!87 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!88 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"fname", i32 199, i64 64, i64 64, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [fname] [line 199, size 64, align 64, offset 64] [from ]
!89 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"linenumber", i32 200, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [linenumber] [line 200, size 32, align 32, offset 128] [from int]
!90 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"buf", i32 202, i64 64, i64 64, i64 192, i32 0, metadata !38} ; [ DW_TAG_member ] [buf] [line 202, size 64, align 64, offset 192] [from ]
!91 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"buflen", i32 203, i64 32, i64 32, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [buflen] [line 203, size 32, align 32, offset 256] [from int]
!92 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ssimode", i32 205, i64 32, i64 32, i64 288, i32 0, metadata !36} ; [ DW_TAG_member ] [ssimode] [line 205, size 32, align 32, offset 288] [from int]
!93 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ssioffset", i32 206, i64 128, i64 64, i64 320, i32 0, metadata !94} ; [ DW_TAG_member ] [ssioffset] [line 206, size 128, align 64, offset 320] [from SSIOFFSET]
!94 = metadata !{i32 786454, metadata !27, null, metadata !"SSIOFFSET", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [SSIOFFSET] [line 42, size 0, align 0, offset 0] [from ssioffset_s]
!95 = metadata !{i32 786451, metadata !96, null, metadata !"ssioffset_s", i32 35, i64 128, i64 64, i32 0, i32 0, null, metadata !97, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssioffset_s] [line 35, size 128, align 64, offset 0] [from ]
!96 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!97 = metadata !{metadata !98, metadata !99}
!98 = metadata !{i32 786445, metadata !96, metadata !95, metadata !"mode", i32 36, i64 8, i64 8, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [mode] [line 36, size 8, align 8, offset 0] [from char]
!99 = metadata !{i32 786445, metadata !96, metadata !95, metadata !"off", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !100} ; [ DW_TAG_member ] [off] [line 40, size 64, align 64, offset 64] [from ]
!100 = metadata !{i32 786455, metadata !96, metadata !95, metadata !"", i32 37, i64 64, i64 64, i64 0, i32 0, null, metadata !101, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 37, size 64, align 64, offset 0] [from ]
!101 = metadata !{metadata !102, metadata !105}
!102 = metadata !{i32 786445, metadata !96, metadata !100, metadata !"i32", i32 38, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_member ] [i32] [line 38, size 32, align 32, offset 0] [from sqd_uint32]
!103 = metadata !{i32 786454, metadata !96, null, metadata !"sqd_uint32", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [sqd_uint32] [line 41, size 0, align 0, offset 0] [from unsigned int]
!104 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!105 = metadata !{i32 786445, metadata !96, metadata !100, metadata !"i64", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [i64] [line 39, size 64, align 64, offset 0] [from sqd_uint64]
!106 = metadata !{i32 786454, metadata !96, null, metadata !"sqd_uint64", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !107} ; [ DW_TAG_typedef ] [sqd_uint64] [line 42, size 0, align 0, offset 0] [from long long unsigned int]
!107 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!108 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"r_off", i32 207, i64 128, i64 64, i64 448, i32 0, metadata !94} ; [ DW_TAG_member ] [r_off] [line 207, size 128, align 64, offset 448] [from SSIOFFSET]
!109 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"d_off", i32 208, i64 128, i64 64, i64 576, i32 0, metadata !94} ; [ DW_TAG_member ] [d_off] [line 208, size 128, align 64, offset 576] [from SSIOFFSET]
!110 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"rpl", i32 210, i64 32, i64 32, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ] [rpl] [line 210, size 32, align 32, offset 704] [from int]
!111 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"lastrpl", i32 211, i64 32, i64 32, i64 736, i32 0, metadata !36} ; [ DW_TAG_member ] [lastrpl] [line 211, size 32, align 32, offset 736] [from int]
!112 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"maxrpl", i32 212, i64 32, i64 32, i64 768, i32 0, metadata !36} ; [ DW_TAG_member ] [maxrpl] [line 212, size 32, align 32, offset 768] [from int]
!113 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"bpl", i32 213, i64 32, i64 32, i64 800, i32 0, metadata !36} ; [ DW_TAG_member ] [bpl] [line 213, size 32, align 32, offset 800] [from int]
!114 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"lastbpl", i32 214, i64 32, i64 32, i64 832, i32 0, metadata !36} ; [ DW_TAG_member ] [lastbpl] [line 214, size 32, align 32, offset 832] [from int]
!115 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"maxbpl", i32 215, i64 32, i64 32, i64 864, i32 0, metadata !36} ; [ DW_TAG_member ] [maxbpl] [line 215, size 32, align 32, offset 864] [from int]
!116 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"seq", i32 217, i64 64, i64 64, i64 896, i32 0, metadata !38} ; [ DW_TAG_member ] [seq] [line 217, size 64, align 64, offset 896] [from ]
!117 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sqinfo", i32 218, i64 64, i64 64, i64 960, i32 0, metadata !118} ; [ DW_TAG_member ] [sqinfo] [line 218, size 64, align 64, offset 960] [from ]
!118 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !119} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SQINFO]
!119 = metadata !{i32 786454, metadata !27, null, metadata !"SQINFO", i32 98, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ] [SQINFO] [line 98, size 0, align 0, offset 0] [from seqinfo_s]
!120 = metadata !{i32 786451, metadata !27, null, metadata !"seqinfo_s", i32 84, i64 2880, i64 64, i32 0, i32 0, null, metadata !121, i32 0, null, null} ; [ DW_TAG_structure_type ] [seqinfo_s] [line 84, size 2880, align 64, offset 0] [from ]
!121 = metadata !{metadata !122, metadata !123, metadata !127, metadata !128, metadata !129, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139}
!122 = metadata !{i32 786445, metadata !27, metadata !120, metadata !"flags", i32 85, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [flags] [line 85, size 32, align 32, offset 0] [from int]
!123 = metadata !{i32 786445, metadata !27, metadata !120, metadata !"name", i32 86, i64 512, i64 8, i64 32, i32 0, metadata !124} ; [ DW_TAG_member ] [name] [line 86, size 512, align 8, offset 32] [from ]
!124 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !39, metadata !125, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from char]
!125 = metadata !{metadata !126}
!126 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!127 = metadata !{i32 786445, metadata !27, metadata !120, metadata !"id", i32 87, i64 512, i64 8, i64 544, i32 0, metadata !124} ; [ DW_TAG_member ] [id] [line 87, size 512, align 8, offset 544] [from ]
!128 = metadata !{i32 786445, metadata !27, metadata !120, metadata !"acc", i32 88, i64 512, i64 8, i64 1056, i32 0, metadata !124} ; [ DW_TAG_member ] [acc] [line 88, size 512, align 8, offset 1056] [from ]
!129 = metadata !{i32 786445, metadata !27, metadata !120, metadata !"desc", i32 89, i64 1024, i64 8, i64 1568, i32 0, metadata !130} ; [ DW_TAG_member ] [desc] [line 89, size 1024, align 8, offset 1568] [from ]
!130 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !39, metadata !131, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!131 = metadata !{metadata !132}
!132 = metadata !{i32 786465, i64 0, i64 128}     ; [ DW_TAG_subrange_type ] [0, 127]
!133 = metadata !{i32 786445, metadata !27, metadata !120, metadata !"len", i32 90, i64 32, i64 32, i64 2592, i32 0, metadata !36} ; [ DW_TAG_member ] [len] [line 90, size 32, align 32, offset 2592] [from int]
!134 = metadata !{i32 786445, metadata !27, metadata !120, metadata !"start", i32 91, i64 32, i64 32, i64 2624, i32 0, metadata !36} ; [ DW_TAG_member ] [start] [line 91, size 32, align 32, offset 2624] [from int]
!135 = metadata !{i32 786445, metadata !27, metadata !120, metadata !"stop", i32 92, i64 32, i64 32, i64 2656, i32 0, metadata !36} ; [ DW_TAG_member ] [stop] [line 92, size 32, align 32, offset 2656] [from int]
!136 = metadata !{i32 786445, metadata !27, metadata !120, metadata !"olen", i32 93, i64 32, i64 32, i64 2688, i32 0, metadata !36} ; [ DW_TAG_member ] [olen] [line 93, size 32, align 32, offset 2688] [from int]
!137 = metadata !{i32 786445, metadata !27, metadata !120, metadata !"type", i32 94, i64 32, i64 32, i64 2720, i32 0, metadata !36} ; [ DW_TAG_member ] [type] [line 94, size 32, align 32, offset 2720] [from int]
!138 = metadata !{i32 786445, metadata !27, metadata !120, metadata !"ss", i32 95, i64 64, i64 64, i64 2752, i32 0, metadata !38} ; [ DW_TAG_member ] [ss] [line 95, size 64, align 64, offset 2752] [from ]
!139 = metadata !{i32 786445, metadata !27, metadata !120, metadata !"sa", i32 96, i64 64, i64 64, i64 2816, i32 0, metadata !38} ; [ DW_TAG_member ] [sa] [line 96, size 64, align 64, offset 2816] [from ]
!140 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sp", i32 219, i64 64, i64 64, i64 1024, i32 0, metadata !38} ; [ DW_TAG_member ] [sp] [line 219, size 64, align 64, offset 1024] [from ]
!141 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"seqlen", i32 220, i64 32, i64 32, i64 1088, i32 0, metadata !36} ; [ DW_TAG_member ] [seqlen] [line 220, size 32, align 32, offset 1088] [from int]
!142 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"maxseq", i32 221, i64 32, i64 32, i64 1120, i32 0, metadata !36} ; [ DW_TAG_member ] [maxseq] [line 221, size 32, align 32, offset 1120] [from int]
!143 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"format", i32 223, i64 32, i64 32, i64 1152, i32 0, metadata !36} ; [ DW_TAG_member ] [format] [line 223, size 32, align 32, offset 1152] [from int]
!144 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"do_gzip", i32 224, i64 32, i64 32, i64 1184, i32 0, metadata !36} ; [ DW_TAG_member ] [do_gzip] [line 224, size 32, align 32, offset 1184] [from int]
!145 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"do_stdin", i32 225, i64 32, i64 32, i64 1216, i32 0, metadata !36} ; [ DW_TAG_member ] [do_stdin] [line 225, size 32, align 32, offset 1216] [from int]
!146 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"msa", i32 237, i64 64, i64 64, i64 1280, i32 0, metadata !147} ; [ DW_TAG_member ] [msa] [line 237, size 64, align 64, offset 1280] [from ]
!147 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSA]
!148 = metadata !{i32 786454, metadata !27, null, metadata !"MSA", i32 177, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [MSA] [line 177, size 0, align 0, offset 0] [from msa_struct]
!149 = metadata !{i32 786451, metadata !150, null, metadata !"msa_struct", i32 112, i64 2880, i64 64, i32 0, i32 0, null, metadata !151, i32 0, null, null} ; [ DW_TAG_structure_type ] [msa_struct] [line 112, size 2880, align 64, offset 0] [from ]
!150 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!151 = metadata !{metadata !152, metadata !154, metadata !155, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !177, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !189, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !220, metadata !221, metadata !222}
!152 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"aseq", i32 115, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_member ] [aseq] [line 115, size 64, align 64, offset 0] [from ]
!153 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!154 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"sqname", i32 116, i64 64, i64 64, i64 64, i32 0, metadata !153} ; [ DW_TAG_member ] [sqname] [line 116, size 64, align 64, offset 64] [from ]
!155 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"wgt", i32 117, i64 64, i64 64, i64 128, i32 0, metadata !156} ; [ DW_TAG_member ] [wgt] [line 117, size 64, align 64, offset 128] [from ]
!156 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !157} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!157 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!158 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"alen", i32 118, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [alen] [line 118, size 32, align 32, offset 192] [from int]
!159 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"nseq", i32 119, i64 32, i64 32, i64 224, i32 0, metadata !36} ; [ DW_TAG_member ] [nseq] [line 119, size 32, align 32, offset 224] [from int]
!160 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"flags", i32 123, i64 32, i64 32, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [flags] [line 123, size 32, align 32, offset 256] [from int]
!161 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"type", i32 124, i64 32, i64 32, i64 288, i32 0, metadata !36} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from int]
!162 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"name", i32 125, i64 64, i64 64, i64 320, i32 0, metadata !38} ; [ DW_TAG_member ] [name] [line 125, size 64, align 64, offset 320] [from ]
!163 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"desc", i32 126, i64 64, i64 64, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ] [desc] [line 126, size 64, align 64, offset 384] [from ]
!164 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"acc", i32 127, i64 64, i64 64, i64 448, i32 0, metadata !38} ; [ DW_TAG_member ] [acc] [line 127, size 64, align 64, offset 448] [from ]
!165 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"au", i32 128, i64 64, i64 64, i64 512, i32 0, metadata !38} ; [ DW_TAG_member ] [au] [line 128, size 64, align 64, offset 512] [from ]
!166 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"ss_cons", i32 129, i64 64, i64 64, i64 576, i32 0, metadata !38} ; [ DW_TAG_member ] [ss_cons] [line 129, size 64, align 64, offset 576] [from ]
!167 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"sa_cons", i32 130, i64 64, i64 64, i64 640, i32 0, metadata !38} ; [ DW_TAG_member ] [sa_cons] [line 130, size 64, align 64, offset 640] [from ]
!168 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"rf", i32 131, i64 64, i64 64, i64 704, i32 0, metadata !38} ; [ DW_TAG_member ] [rf] [line 131, size 64, align 64, offset 704] [from ]
!169 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"sqacc", i32 132, i64 64, i64 64, i64 768, i32 0, metadata !153} ; [ DW_TAG_member ] [sqacc] [line 132, size 64, align 64, offset 768] [from ]
!170 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"sqdesc", i32 133, i64 64, i64 64, i64 832, i32 0, metadata !153} ; [ DW_TAG_member ] [sqdesc] [line 133, size 64, align 64, offset 832] [from ]
!171 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"ss", i32 134, i64 64, i64 64, i64 896, i32 0, metadata !153} ; [ DW_TAG_member ] [ss] [line 134, size 64, align 64, offset 896] [from ]
!172 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"sa", i32 135, i64 64, i64 64, i64 960, i32 0, metadata !153} ; [ DW_TAG_member ] [sa] [line 135, size 64, align 64, offset 960] [from ]
!173 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"cutoff", i32 136, i64 192, i64 32, i64 1024, i32 0, metadata !174} ; [ DW_TAG_member ] [cutoff] [line 136, size 192, align 32, offset 1024] [from ]
!174 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !157, metadata !175, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from float]
!175 = metadata !{metadata !176}
!176 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!177 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"cutoff_is_set", i32 137, i64 192, i64 32, i64 1216, i32 0, metadata !178} ; [ DW_TAG_member ] [cutoff_is_set] [line 137, size 192, align 32, offset 1216] [from ]
!178 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !36, metadata !175, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!179 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"comment", i32 144, i64 64, i64 64, i64 1408, i32 0, metadata !153} ; [ DW_TAG_member ] [comment] [line 144, size 64, align 64, offset 1408] [from ]
!180 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"ncomment", i32 145, i64 32, i64 32, i64 1472, i32 0, metadata !36} ; [ DW_TAG_member ] [ncomment] [line 145, size 32, align 32, offset 1472] [from int]
!181 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"alloc_ncomment", i32 146, i64 32, i64 32, i64 1504, i32 0, metadata !36} ; [ DW_TAG_member ] [alloc_ncomment] [line 146, size 32, align 32, offset 1504] [from int]
!182 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"gf_tag", i32 148, i64 64, i64 64, i64 1536, i32 0, metadata !153} ; [ DW_TAG_member ] [gf_tag] [line 148, size 64, align 64, offset 1536] [from ]
!183 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"gf", i32 149, i64 64, i64 64, i64 1600, i32 0, metadata !153} ; [ DW_TAG_member ] [gf] [line 149, size 64, align 64, offset 1600] [from ]
!184 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"ngf", i32 150, i64 32, i64 32, i64 1664, i32 0, metadata !36} ; [ DW_TAG_member ] [ngf] [line 150, size 32, align 32, offset 1664] [from int]
!185 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"alloc_ngf", i32 151, i64 32, i64 32, i64 1696, i32 0, metadata !36} ; [ DW_TAG_member ] [alloc_ngf] [line 151, size 32, align 32, offset 1696] [from int]
!186 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"gs_tag", i32 153, i64 64, i64 64, i64 1728, i32 0, metadata !153} ; [ DW_TAG_member ] [gs_tag] [line 153, size 64, align 64, offset 1728] [from ]
!187 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"gs", i32 154, i64 64, i64 64, i64 1792, i32 0, metadata !188} ; [ DW_TAG_member ] [gs] [line 154, size 64, align 64, offset 1792] [from ]
!188 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!189 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"gs_idx", i32 155, i64 64, i64 64, i64 1856, i32 0, metadata !190} ; [ DW_TAG_member ] [gs_idx] [line 155, size 64, align 64, offset 1856] [from ]
!190 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !191} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GKI]
!191 = metadata !{i32 786454, metadata !150, null, metadata !"GKI", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !192} ; [ DW_TAG_typedef ] [GKI] [line 42, size 0, align 0, offset 0] [from ]
!192 = metadata !{i32 786451, metadata !193, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !194, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!193 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!194 = metadata !{metadata !195, metadata !203, metadata !204, metadata !205}
!195 = metadata !{i32 786445, metadata !193, metadata !192, metadata !"table", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !196} ; [ DW_TAG_member ] [table] [line 37, size 64, align 64, offset 0] [from ]
!196 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !197} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!197 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !198} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gki_elem]
!198 = metadata !{i32 786451, metadata !193, null, metadata !"gki_elem", i32 26, i64 192, i64 64, i32 0, i32 0, null, metadata !199, i32 0, null, null} ; [ DW_TAG_structure_type ] [gki_elem] [line 26, size 192, align 64, offset 0] [from ]
!199 = metadata !{metadata !200, metadata !201, metadata !202}
!200 = metadata !{i32 786445, metadata !193, metadata !198, metadata !"key", i32 27, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_member ] [key] [line 27, size 64, align 64, offset 0] [from ]
!201 = metadata !{i32 786445, metadata !193, metadata !198, metadata !"idx", i32 28, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [idx] [line 28, size 32, align 32, offset 64] [from int]
!202 = metadata !{i32 786445, metadata !193, metadata !198, metadata !"nxt", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !197} ; [ DW_TAG_member ] [nxt] [line 29, size 64, align 64, offset 128] [from ]
!203 = metadata !{i32 786445, metadata !193, metadata !192, metadata !"primelevel", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [primelevel] [line 39, size 32, align 32, offset 64] [from int]
!204 = metadata !{i32 786445, metadata !193, metadata !192, metadata !"nhash", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [nhash] [line 40, size 32, align 32, offset 96] [from int]
!205 = metadata !{i32 786445, metadata !193, metadata !192, metadata !"nkeys", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [nkeys] [line 41, size 32, align 32, offset 128] [from int]
!206 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"ngs", i32 156, i64 32, i64 32, i64 1920, i32 0, metadata !36} ; [ DW_TAG_member ] [ngs] [line 156, size 32, align 32, offset 1920] [from int]
!207 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"gc_tag", i32 158, i64 64, i64 64, i64 1984, i32 0, metadata !153} ; [ DW_TAG_member ] [gc_tag] [line 158, size 64, align 64, offset 1984] [from ]
!208 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"gc", i32 159, i64 64, i64 64, i64 2048, i32 0, metadata !153} ; [ DW_TAG_member ] [gc] [line 159, size 64, align 64, offset 2048] [from ]
!209 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"gc_idx", i32 160, i64 64, i64 64, i64 2112, i32 0, metadata !190} ; [ DW_TAG_member ] [gc_idx] [line 160, size 64, align 64, offset 2112] [from ]
!210 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"ngc", i32 161, i64 32, i64 32, i64 2176, i32 0, metadata !36} ; [ DW_TAG_member ] [ngc] [line 161, size 32, align 32, offset 2176] [from int]
!211 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"gr_tag", i32 163, i64 64, i64 64, i64 2240, i32 0, metadata !153} ; [ DW_TAG_member ] [gr_tag] [line 163, size 64, align 64, offset 2240] [from ]
!212 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"gr", i32 164, i64 64, i64 64, i64 2304, i32 0, metadata !188} ; [ DW_TAG_member ] [gr] [line 164, size 64, align 64, offset 2304] [from ]
!213 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"gr_idx", i32 165, i64 64, i64 64, i64 2368, i32 0, metadata !190} ; [ DW_TAG_member ] [gr_idx] [line 165, size 64, align 64, offset 2368] [from ]
!214 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"ngr", i32 166, i64 32, i64 32, i64 2432, i32 0, metadata !36} ; [ DW_TAG_member ] [ngr] [line 166, size 32, align 32, offset 2432] [from int]
!215 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"index", i32 170, i64 64, i64 64, i64 2496, i32 0, metadata !190} ; [ DW_TAG_member ] [index] [line 170, size 64, align 64, offset 2496] [from ]
!216 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"nseqalloc", i32 171, i64 32, i64 32, i64 2560, i32 0, metadata !36} ; [ DW_TAG_member ] [nseqalloc] [line 171, size 32, align 32, offset 2560] [from int]
!217 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"nseqlump", i32 172, i64 32, i64 32, i64 2592, i32 0, metadata !36} ; [ DW_TAG_member ] [nseqlump] [line 172, size 32, align 32, offset 2592] [from int]
!218 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"sqlen", i32 173, i64 64, i64 64, i64 2624, i32 0, metadata !219} ; [ DW_TAG_member ] [sqlen] [line 173, size 64, align 64, offset 2624] [from ]
!219 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!220 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"sslen", i32 174, i64 64, i64 64, i64 2688, i32 0, metadata !219} ; [ DW_TAG_member ] [sslen] [line 174, size 64, align 64, offset 2688] [from ]
!221 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"salen", i32 175, i64 64, i64 64, i64 2752, i32 0, metadata !219} ; [ DW_TAG_member ] [salen] [line 175, size 64, align 64, offset 2752] [from ]
!222 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"lastidx", i32 176, i64 32, i64 32, i64 2816, i32 0, metadata !36} ; [ DW_TAG_member ] [lastidx] [line 176, size 32, align 32, offset 2816] [from int]
!223 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"afp", i32 238, i64 64, i64 64, i64 1344, i32 0, metadata !224} ; [ DW_TAG_member ] [afp] [line 238, size 64, align 64, offset 1344] [from ]
!224 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !225} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSAFILE]
!225 = metadata !{i32 786454, metadata !27, null, metadata !"MSAFILE", i32 199, i64 0, i64 0, i64 0, i32 0, metadata !226} ; [ DW_TAG_typedef ] [MSAFILE] [line 199, size 0, align 0, offset 0] [from msafile_struct]
!226 = metadata !{i32 786451, metadata !150, null, metadata !"msafile_struct", i32 186, i64 512, i64 64, i32 0, i32 0, null, metadata !227, i32 0, null, null} ; [ DW_TAG_structure_type ] [msafile_struct] [line 186, size 512, align 64, offset 0] [from ]
!227 = metadata !{metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !261, metadata !262, metadata !263}
!228 = metadata !{i32 786445, metadata !150, metadata !226, metadata !"f", i32 187, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [f] [line 187, size 64, align 64, offset 0] [from ]
!229 = metadata !{i32 786445, metadata !150, metadata !226, metadata !"fname", i32 188, i64 64, i64 64, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [fname] [line 188, size 64, align 64, offset 64] [from ]
!230 = metadata !{i32 786445, metadata !150, metadata !226, metadata !"linenumber", i32 189, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [linenumber] [line 189, size 32, align 32, offset 128] [from int]
!231 = metadata !{i32 786445, metadata !150, metadata !226, metadata !"buf", i32 191, i64 64, i64 64, i64 192, i32 0, metadata !38} ; [ DW_TAG_member ] [buf] [line 191, size 64, align 64, offset 192] [from ]
!232 = metadata !{i32 786445, metadata !150, metadata !226, metadata !"buflen", i32 192, i64 32, i64 32, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [buflen] [line 192, size 32, align 32, offset 256] [from int]
!233 = metadata !{i32 786445, metadata !150, metadata !226, metadata !"ssi", i32 194, i64 64, i64 64, i64 320, i32 0, metadata !234} ; [ DW_TAG_member ] [ssi] [line 194, size 64, align 64, offset 320] [from ]
!234 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !235} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SSIFILE]
!235 = metadata !{i32 786454, metadata !150, null, metadata !"SSIFILE", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !236} ; [ DW_TAG_typedef ] [SSIFILE] [line 76, size 0, align 0, offset 0] [from ssifile_s]
!236 = metadata !{i32 786451, metadata !96, null, metadata !"ssifile_s", i32 49, i64 1152, i64 64, i32 0, i32 0, null, metadata !237, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssifile_s] [line 49, size 1152, align 64, offset 0] [from ]
!237 = metadata !{metadata !238, metadata !239, metadata !240, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !258, metadata !259, metadata !260}
!238 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"fp", i32 50, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [fp] [line 50, size 64, align 64, offset 0] [from ]
!239 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"flags", i32 51, i64 32, i64 32, i64 64, i32 0, metadata !103} ; [ DW_TAG_member ] [flags] [line 51, size 32, align 32, offset 64] [from sqd_uint32]
!240 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"nfiles", i32 52, i64 16, i64 16, i64 96, i32 0, metadata !241} ; [ DW_TAG_member ] [nfiles] [line 52, size 16, align 16, offset 96] [from sqd_uint16]
!241 = metadata !{i32 786454, metadata !96, null, metadata !"sqd_uint16", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ] [sqd_uint16] [line 40, size 0, align 0, offset 0] [from unsigned short]
!242 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"nprimary", i32 53, i64 32, i64 32, i64 128, i32 0, metadata !103} ; [ DW_TAG_member ] [nprimary] [line 53, size 32, align 32, offset 128] [from sqd_uint32]
!243 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"nsecondary", i32 54, i64 32, i64 32, i64 160, i32 0, metadata !103} ; [ DW_TAG_member ] [nsecondary] [line 54, size 32, align 32, offset 160] [from sqd_uint32]
!244 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"flen", i32 55, i64 32, i64 32, i64 192, i32 0, metadata !103} ; [ DW_TAG_member ] [flen] [line 55, size 32, align 32, offset 192] [from sqd_uint32]
!245 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"plen", i32 56, i64 32, i64 32, i64 224, i32 0, metadata !103} ; [ DW_TAG_member ] [plen] [line 56, size 32, align 32, offset 224] [from sqd_uint32]
!246 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"slen", i32 57, i64 32, i64 32, i64 256, i32 0, metadata !103} ; [ DW_TAG_member ] [slen] [line 57, size 32, align 32, offset 256] [from sqd_uint32]
!247 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"frecsize", i32 58, i64 32, i64 32, i64 288, i32 0, metadata !103} ; [ DW_TAG_member ] [frecsize] [line 58, size 32, align 32, offset 288] [from sqd_uint32]
!248 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"precsize", i32 59, i64 32, i64 32, i64 320, i32 0, metadata !103} ; [ DW_TAG_member ] [precsize] [line 59, size 32, align 32, offset 320] [from sqd_uint32]
!249 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"srecsize", i32 60, i64 32, i64 32, i64 352, i32 0, metadata !103} ; [ DW_TAG_member ] [srecsize] [line 60, size 32, align 32, offset 352] [from sqd_uint32]
!250 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"foffset", i32 61, i64 128, i64 64, i64 384, i32 0, metadata !94} ; [ DW_TAG_member ] [foffset] [line 61, size 128, align 64, offset 384] [from SSIOFFSET]
!251 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"poffset", i32 62, i64 128, i64 64, i64 512, i32 0, metadata !94} ; [ DW_TAG_member ] [poffset] [line 62, size 128, align 64, offset 512] [from SSIOFFSET]
!252 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"soffset", i32 63, i64 128, i64 64, i64 640, i32 0, metadata !94} ; [ DW_TAG_member ] [soffset] [line 63, size 128, align 64, offset 640] [from SSIOFFSET]
!253 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"imode", i32 65, i64 8, i64 8, i64 768, i32 0, metadata !39} ; [ DW_TAG_member ] [imode] [line 65, size 8, align 8, offset 768] [from char]
!254 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"smode", i32 66, i64 8, i64 8, i64 776, i32 0, metadata !39} ; [ DW_TAG_member ] [smode] [line 66, size 8, align 8, offset 776] [from char]
!255 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"filename", i32 70, i64 64, i64 64, i64 832, i32 0, metadata !153} ; [ DW_TAG_member ] [filename] [line 70, size 64, align 64, offset 832] [from ]
!256 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"fileformat", i32 71, i64 64, i64 64, i64 896, i32 0, metadata !257} ; [ DW_TAG_member ] [fileformat] [line 71, size 64, align 64, offset 896] [from ]
!257 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sqd_uint32]
!258 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"fileflags", i32 72, i64 64, i64 64, i64 960, i32 0, metadata !257} ; [ DW_TAG_member ] [fileflags] [line 72, size 64, align 64, offset 960] [from ]
!259 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"bpl", i32 73, i64 64, i64 64, i64 1024, i32 0, metadata !257} ; [ DW_TAG_member ] [bpl] [line 73, size 64, align 64, offset 1024] [from ]
!260 = metadata !{i32 786445, metadata !96, metadata !236, metadata !"rpl", i32 74, i64 64, i64 64, i64 1088, i32 0, metadata !257} ; [ DW_TAG_member ] [rpl] [line 74, size 64, align 64, offset 1088] [from ]
!261 = metadata !{i32 786445, metadata !150, metadata !226, metadata !"do_gzip", i32 196, i64 32, i64 32, i64 384, i32 0, metadata !36} ; [ DW_TAG_member ] [do_gzip] [line 196, size 32, align 32, offset 384] [from int]
!262 = metadata !{i32 786445, metadata !150, metadata !226, metadata !"do_stdin", i32 197, i64 32, i64 32, i64 416, i32 0, metadata !36} ; [ DW_TAG_member ] [do_stdin] [line 197, size 32, align 32, offset 416] [from int]
!263 = metadata !{i32 786445, metadata !150, metadata !226, metadata !"format", i32 198, i64 32, i64 32, i64 448, i32 0, metadata !36} ; [ DW_TAG_member ] [format] [line 198, size 32, align 32, offset 448] [from int]
!264 = metadata !{metadata !265, metadata !266, metadata !267}
!265 = metadata !{i32 786689, metadata !20, metadata !"filename", metadata !21, i32 16777303, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 87]
!266 = metadata !{i32 786689, metadata !20, metadata !"format", metadata !21, i32 33554519, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 87]
!267 = metadata !{i32 786689, metadata !20, metadata !"env", metadata !21, i32 50331735, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [env] [line 87]
!268 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"SeqfileOpenForIndexing", metadata !"SeqfileOpenForIndexing", metadata !"", i32 92, metadata !269, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.ReadSeqVars* (i8*, i32, i8*, i32)* @SeqfileOpenForIndexing, null, null, metadata !271, i32 93} ; [ DW_TAG_subprogram ] [line 92] [def] [scope 93] [SeqfileOpenForIndexing]
!269 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !270, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!270 = metadata !{metadata !24, metadata !38, metadata !36, metadata !38, metadata !36}
!271 = metadata !{metadata !272, metadata !273, metadata !274, metadata !275}
!272 = metadata !{i32 786689, metadata !268, metadata !"filename", metadata !21, i32 16777308, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 92]
!273 = metadata !{i32 786689, metadata !268, metadata !"format", metadata !21, i32 33554524, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 92]
!274 = metadata !{i32 786689, metadata !268, metadata !"env", metadata !21, i32 50331740, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [env] [line 92]
!275 = metadata !{i32 786689, metadata !268, metadata !"ssimode", metadata !21, i32 67108956, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ssimode] [line 92]
!276 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"SeqfilePosition", metadata !"SeqfilePosition", metadata !"", i32 221, metadata !277, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ReadSeqVars*, %struct.ssioffset_s*)* @SeqfilePosition, null, null, metadata !280, i32 222} ; [ DW_TAG_subprogram ] [line 221] [def] [scope 222] [SeqfilePosition]
!277 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !278, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!278 = metadata !{null, metadata !24, metadata !279}
!279 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SSIOFFSET]
!280 = metadata !{metadata !281, metadata !282}
!281 = metadata !{i32 786689, metadata !276, metadata !"sqfp", metadata !21, i32 16777437, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqfp] [line 221]
!282 = metadata !{i32 786689, metadata !276, metadata !"offset", metadata !21, i32 33554653, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 221]
!283 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"SeqfileRewind", metadata !"SeqfileRewind", metadata !"", i32 242, metadata !284, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ReadSeqVars*)* @SeqfileRewind, null, null, metadata !286, i32 243} ; [ DW_TAG_subprogram ] [line 242] [def] [scope 243] [SeqfileRewind]
!284 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !285, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!285 = metadata !{null, metadata !24}
!286 = metadata !{metadata !287}
!287 = metadata !{i32 786689, metadata !283, metadata !"sqfp", metadata !21, i32 16777458, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqfp] [line 242]
!288 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"SeqfileLineParameters", metadata !"SeqfileLineParameters", metadata !"", i32 270, metadata !289, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ReadSeqVars*, i32*, i32*)* @SeqfileLineParameters, null, null, metadata !291, i32 271} ; [ DW_TAG_subprogram ] [line 270] [def] [scope 271] [SeqfileLineParameters]
!289 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !290, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!290 = metadata !{null, metadata !24, metadata !219, metadata !219}
!291 = metadata !{metadata !292, metadata !293, metadata !294}
!292 = metadata !{i32 786689, metadata !288, metadata !"V", metadata !21, i32 16777486, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [V] [line 270]
!293 = metadata !{i32 786689, metadata !288, metadata !"ret_bpl", metadata !21, i32 33554702, metadata !219, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_bpl] [line 270]
!294 = metadata !{i32 786689, metadata !288, metadata !"ret_rpl", metadata !21, i32 50331918, metadata !219, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_rpl] [line 270]
!295 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"SeqfileClose", metadata !"SeqfileClose", metadata !"", i32 284, metadata !284, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ReadSeqVars*)* @SeqfileClose, null, null, metadata !296, i32 285} ; [ DW_TAG_subprogram ] [line 284] [def] [scope 285] [SeqfileClose]
!296 = metadata !{metadata !297}
!297 = metadata !{i32 786689, metadata !295, metadata !"sqfp", metadata !21, i32 16777500, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqfp] [line 284]
!298 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"FreeSequence", metadata !"FreeSequence", metadata !"", i32 330, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, %struct.seqinfo_s*)* @FreeSequence, null, null, metadata !301, i32 331} ; [ DW_TAG_subprogram ] [line 330] [def] [scope 331] [FreeSequence]
!299 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !300, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!300 = metadata !{null, metadata !38, metadata !118}
!301 = metadata !{metadata !302, metadata !303}
!302 = metadata !{i32 786689, metadata !298, metadata !"seq", metadata !21, i32 16777546, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seq] [line 330]
!303 = metadata !{i32 786689, metadata !298, metadata !"sqinfo", metadata !21, i32 33554762, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqinfo] [line 330]
!304 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"SetSeqinfoString", metadata !"SetSeqinfoString", metadata !"", i32 338, metadata !305, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.seqinfo_s*, i8*, i32)* @SetSeqinfoString, null, null, metadata !307, i32 339} ; [ DW_TAG_subprogram ] [line 338] [def] [scope 339] [SetSeqinfoString]
!305 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!306 = metadata !{metadata !36, metadata !118, metadata !38, metadata !36}
!307 = metadata !{metadata !308, metadata !309, metadata !310, metadata !311, metadata !312}
!308 = metadata !{i32 786689, metadata !304, metadata !"sqinfo", metadata !21, i32 16777554, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqinfo] [line 338]
!309 = metadata !{i32 786689, metadata !304, metadata !"sptr", metadata !21, i32 33554770, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sptr] [line 338]
!310 = metadata !{i32 786689, metadata !304, metadata !"flag", metadata !21, i32 50331986, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flag] [line 338]
!311 = metadata !{i32 786688, metadata !304, metadata !"len", metadata !21, i32 340, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 340]
!312 = metadata !{i32 786688, metadata !304, metadata !"pos", metadata !21, i32 341, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 341]
!313 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"SeqinfoCopy", metadata !"SeqinfoCopy", metadata !"", i32 423, metadata !314, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.seqinfo_s*, %struct.seqinfo_s*)* @SeqinfoCopy, null, null, metadata !316, i32 424} ; [ DW_TAG_subprogram ] [line 423] [def] [scope 424] [SeqinfoCopy]
!314 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !315, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!315 = metadata !{null, metadata !118, metadata !118}
!316 = metadata !{metadata !317, metadata !318}
!317 = metadata !{i32 786689, metadata !313, metadata !"sq1", metadata !21, i32 16777639, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sq1] [line 423]
!318 = metadata !{i32 786689, metadata !313, metadata !"sq2", metadata !21, i32 33554855, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sq2] [line 423]
!319 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"ToDNA", metadata !"ToDNA", metadata !"", i32 445, metadata !320, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @ToDNA, null, null, metadata !322, i32 446} ; [ DW_TAG_subprogram ] [line 445] [def] [scope 446] [ToDNA]
!320 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !321, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!321 = metadata !{null, metadata !38}
!322 = metadata !{metadata !323}
!323 = metadata !{i32 786689, metadata !319, metadata !"seq", metadata !21, i32 16777661, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seq] [line 445]
!324 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"ToRNA", metadata !"ToRNA", metadata !"", i32 460, metadata !320, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @ToRNA, null, null, metadata !325, i32 461} ; [ DW_TAG_subprogram ] [line 460] [def] [scope 461] [ToRNA]
!325 = metadata !{metadata !326}
!326 = metadata !{i32 786689, metadata !324, metadata !"seq", metadata !21, i32 16777676, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seq] [line 460]
!327 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"ToIUPAC", metadata !"ToIUPAC", metadata !"", i32 486, metadata !328, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @ToIUPAC, null, null, metadata !330, i32 487} ; [ DW_TAG_subprogram ] [line 486] [def] [scope 487] [ToIUPAC]
!328 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !329, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!329 = metadata !{null, metadata !38, metadata !36}
!330 = metadata !{metadata !331, metadata !332}
!331 = metadata !{i32 786689, metadata !327, metadata !"seq", metadata !21, i32 16777702, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seq] [line 486]
!332 = metadata !{i32 786689, metadata !327, metadata !"is_aseq", metadata !21, i32 33554918, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [is_aseq] [line 486]
!333 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"ReadSeq", metadata !"ReadSeq", metadata !"", i32 1043, metadata !334, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ReadSeqVars*, i32, i8**, %struct.seqinfo_s*)* @ReadSeq, null, null, metadata !336, i32 1044} ; [ DW_TAG_subprogram ] [line 1043] [def] [scope 1044] [ReadSeq]
!334 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !335, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!335 = metadata !{metadata !36, metadata !24, metadata !36, metadata !153, metadata !118}
!336 = metadata !{metadata !337, metadata !338, metadata !339, metadata !340, metadata !341}
!337 = metadata !{i32 786689, metadata !333, metadata !"V", metadata !21, i32 16778259, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [V] [line 1043]
!338 = metadata !{i32 786689, metadata !333, metadata !"format", metadata !21, i32 33555475, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 1043]
!339 = metadata !{i32 786689, metadata !333, metadata !"ret_seq", metadata !21, i32 50332691, metadata !153, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_seq] [line 1043]
!340 = metadata !{i32 786689, metadata !333, metadata !"sqinfo", metadata !21, i32 67109907, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqinfo] [line 1043]
!341 = metadata !{i32 786688, metadata !333, metadata !"gotuw", metadata !21, i32 1045, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gotuw] [line 1045]
!342 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"SeqfileFormat", metadata !"SeqfileFormat", metadata !"", i32 1167, metadata !343, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*)* @SeqfileFormat, null, null, metadata !345, i32 1168} ; [ DW_TAG_subprogram ] [line 1167] [def] [scope 1168] [SeqfileFormat]
!343 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !344, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!344 = metadata !{metadata !36, metadata !30}
!345 = metadata !{metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355}
!346 = metadata !{i32 786689, metadata !342, metadata !"fp", metadata !21, i32 16778383, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1167]
!347 = metadata !{i32 786688, metadata !342, metadata !"buf", metadata !21, i32 1169, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 1169]
!348 = metadata !{i32 786688, metadata !342, metadata !"len", metadata !21, i32 1170, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1170]
!349 = metadata !{i32 786688, metadata !342, metadata !"fmt", metadata !21, i32 1171, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmt] [line 1171]
!350 = metadata !{i32 786688, metadata !342, metadata !"ndataline", metadata !21, i32 1172, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndataline] [line 1172]
!351 = metadata !{i32 786688, metadata !342, metadata !"bufcpy", metadata !21, i32 1173, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bufcpy] [line 1173]
!352 = metadata !{i32 786688, metadata !342, metadata !"s", metadata !21, i32 1173, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 1173]
!353 = metadata !{i32 786688, metadata !342, metadata !"s1", metadata !21, i32 1173, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1] [line 1173]
!354 = metadata !{i32 786688, metadata !342, metadata !"s2", metadata !21, i32 1173, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 1173]
!355 = metadata !{i32 786688, metadata !342, metadata !"has_junk", metadata !21, i32 1174, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [has_junk] [line 1174]
!356 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"GCGBinaryToSequence", metadata !"GCGBinaryToSequence", metadata !"", i32 1304, metadata !357, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @GCGBinaryToSequence, null, null, metadata !359, i32 1305} ; [ DW_TAG_subprogram ] [line 1304] [def] [scope 1305] [GCGBinaryToSequence]
!357 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !358, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!358 = metadata !{metadata !36, metadata !38, metadata !36}
!359 = metadata !{metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365}
!360 = metadata !{i32 786689, metadata !356, metadata !"seq", metadata !21, i32 16778520, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seq] [line 1304]
!361 = metadata !{i32 786689, metadata !356, metadata !"len", metadata !21, i32 33555736, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 1304]
!362 = metadata !{i32 786688, metadata !356, metadata !"bpos", metadata !21, i32 1306, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bpos] [line 1306]
!363 = metadata !{i32 786688, metadata !356, metadata !"spos", metadata !21, i32 1307, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [spos] [line 1307]
!364 = metadata !{i32 786688, metadata !356, metadata !"twobit", metadata !21, i32 1308, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [twobit] [line 1308]
!365 = metadata !{i32 786688, metadata !356, metadata !"i", metadata !21, i32 1309, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1309]
!366 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"GCGchecksum", metadata !"GCGchecksum", metadata !"", i32 1347, metadata !357, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @GCGchecksum, null, null, metadata !367, i32 1348} ; [ DW_TAG_subprogram ] [line 1347] [def] [scope 1348] [GCGchecksum]
!367 = metadata !{metadata !368, metadata !369, metadata !370, metadata !371}
!368 = metadata !{i32 786689, metadata !366, metadata !"seq", metadata !21, i32 16778563, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seq] [line 1347]
!369 = metadata !{i32 786689, metadata !366, metadata !"len", metadata !21, i32 33555779, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 1347]
!370 = metadata !{i32 786688, metadata !366, metadata !"i", metadata !21, i32 1349, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1349]
!371 = metadata !{i32 786688, metadata !366, metadata !"chk", metadata !21, i32 1350, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chk] [line 1350]
!372 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"GCGMultchecksum", metadata !"GCGMultchecksum", metadata !"", i32 1373, metadata !373, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, i32)* @GCGMultchecksum, null, null, metadata !375, i32 1374} ; [ DW_TAG_subprogram ] [line 1373] [def] [scope 1374] [GCGMultchecksum]
!373 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !374, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!374 = metadata !{metadata !36, metadata !153, metadata !36}
!375 = metadata !{metadata !376, metadata !377, metadata !378, metadata !379}
!376 = metadata !{i32 786689, metadata !372, metadata !"seqs", metadata !21, i32 16778589, metadata !153, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seqs] [line 1373]
!377 = metadata !{i32 786689, metadata !372, metadata !"nseq", metadata !21, i32 33555805, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 1373]
!378 = metadata !{i32 786688, metadata !372, metadata !"chk", metadata !21, i32 1375, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chk] [line 1375]
!379 = metadata !{i32 786688, metadata !372, metadata !"idx", metadata !21, i32 1376, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 1376]
!380 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"Seqtype", metadata !"Seqtype", metadata !"", i32 1394, metadata !381, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @Seqtype, null, null, metadata !383, i32 1395} ; [ DW_TAG_subprogram ] [line 1394] [def] [scope 1395] [Seqtype]
!381 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !382, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!382 = metadata !{metadata !36, metadata !38}
!383 = metadata !{metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392}
!384 = metadata !{i32 786689, metadata !380, metadata !"seq", metadata !21, i32 16778610, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seq] [line 1394]
!385 = metadata !{i32 786688, metadata !380, metadata !"saw", metadata !21, i32 1396, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [saw] [line 1396]
!386 = metadata !{i32 786688, metadata !380, metadata !"c", metadata !21, i32 1397, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1397]
!387 = metadata !{i32 786688, metadata !380, metadata !"po", metadata !21, i32 1398, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [po] [line 1398]
!388 = metadata !{i32 786688, metadata !380, metadata !"nt", metadata !21, i32 1399, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nt] [line 1399]
!389 = metadata !{i32 786688, metadata !380, metadata !"nu", metadata !21, i32 1400, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nu] [line 1400]
!390 = metadata !{i32 786688, metadata !380, metadata !"na", metadata !21, i32 1401, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [na] [line 1401]
!391 = metadata !{i32 786688, metadata !380, metadata !"aa", metadata !21, i32 1402, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aa] [line 1402]
!392 = metadata !{i32 786688, metadata !380, metadata !"no", metadata !21, i32 1403, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no] [line 1403]
!393 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"GuessAlignmentSeqtype", metadata !"GuessAlignmentSeqtype", metadata !"", i32 1449, metadata !373, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, i32)* @GuessAlignmentSeqtype, null, null, metadata !394, i32 1450} ; [ DW_TAG_subprogram ] [line 1449] [def] [scope 1450] [GuessAlignmentSeqtype]
!394 = metadata !{metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401}
!395 = metadata !{i32 786689, metadata !393, metadata !"aseq", metadata !21, i32 16778665, metadata !153, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 1449]
!396 = metadata !{i32 786689, metadata !393, metadata !"nseq", metadata !21, i32 33555881, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 1449]
!397 = metadata !{i32 786688, metadata !393, metadata !"idx", metadata !21, i32 1451, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 1451]
!398 = metadata !{i32 786688, metadata !393, metadata !"nrna", metadata !21, i32 1452, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrna] [line 1452]
!399 = metadata !{i32 786688, metadata !393, metadata !"ndna", metadata !21, i32 1453, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndna] [line 1453]
!400 = metadata !{i32 786688, metadata !393, metadata !"namino", metadata !21, i32 1454, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [namino] [line 1454]
!401 = metadata !{i32 786688, metadata !393, metadata !"nother", metadata !21, i32 1455, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nother] [line 1455]
!402 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"WriteSimpleFASTA", metadata !"WriteSimpleFASTA", metadata !"", i32 1495, metadata !403, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, i8*, i8*)* @WriteSimpleFASTA, null, null, metadata !405, i32 1496} ; [ DW_TAG_subprogram ] [line 1495] [def] [scope 1496] [WriteSimpleFASTA]
!403 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !404, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!404 = metadata !{null, metadata !30, metadata !38, metadata !38, metadata !38}
!405 = metadata !{metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !414, metadata !415}
!406 = metadata !{i32 786689, metadata !402, metadata !"fp", metadata !21, i32 16778711, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1495]
!407 = metadata !{i32 786689, metadata !402, metadata !"seq", metadata !21, i32 33555927, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seq] [line 1495]
!408 = metadata !{i32 786689, metadata !402, metadata !"name", metadata !21, i32 50333143, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1495]
!409 = metadata !{i32 786689, metadata !402, metadata !"desc", metadata !21, i32 67110359, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [desc] [line 1495]
!410 = metadata !{i32 786688, metadata !402, metadata !"buf", metadata !21, i32 1497, metadata !411, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 1497]
!411 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 488, i64 8, i32 0, i32 0, metadata !39, metadata !412, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 488, align 8, offset 0] [from char]
!412 = metadata !{metadata !413}
!413 = metadata !{i32 786465, i64 0, i64 61}      ; [ DW_TAG_subrange_type ] [0, 60]
!414 = metadata !{i32 786688, metadata !402, metadata !"len", metadata !21, i32 1498, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1498]
!415 = metadata !{i32 786688, metadata !402, metadata !"pos", metadata !21, i32 1499, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 1499]
!416 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"WriteSeq", metadata !"WriteSeq", metadata !"", i32 1512, metadata !417, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i32, i8*, %struct.seqinfo_s*)* @WriteSeq, null, null, metadata !419, i32 1513} ; [ DW_TAG_subprogram ] [line 1512] [def] [scope 1513] [WriteSeq]
!417 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !418, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!418 = metadata !{metadata !36, metadata !30, metadata !36, metadata !38, metadata !118}
!419 = metadata !{metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !438, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446}
!420 = metadata !{i32 786689, metadata !416, metadata !"outf", metadata !21, i32 16778728, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outf] [line 1512]
!421 = metadata !{i32 786689, metadata !416, metadata !"outform", metadata !21, i32 33555944, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outform] [line 1512]
!422 = metadata !{i32 786689, metadata !416, metadata !"seq", metadata !21, i32 50333160, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seq] [line 1512]
!423 = metadata !{i32 786689, metadata !416, metadata !"sqinfo", metadata !21, i32 67110376, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqinfo] [line 1512]
!424 = metadata !{i32 786688, metadata !416, metadata !"numline", metadata !21, i32 1514, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [numline] [line 1514]
!425 = metadata !{i32 786688, metadata !416, metadata !"lines", metadata !21, i32 1515, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lines] [line 1515]
!426 = metadata !{i32 786688, metadata !416, metadata !"spacer", metadata !21, i32 1515, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [spacer] [line 1515]
!427 = metadata !{i32 786688, metadata !416, metadata !"width", metadata !21, i32 1515, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [width] [line 1515]
!428 = metadata !{i32 786688, metadata !416, metadata !"tab", metadata !21, i32 1515, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tab] [line 1515]
!429 = metadata !{i32 786688, metadata !416, metadata !"i", metadata !21, i32 1516, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1516]
!430 = metadata !{i32 786688, metadata !416, metadata !"j", metadata !21, i32 1516, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1516]
!431 = metadata !{i32 786688, metadata !416, metadata !"l", metadata !21, i32 1516, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 1516]
!432 = metadata !{i32 786688, metadata !416, metadata !"l1", metadata !21, i32 1516, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l1] [line 1516]
!433 = metadata !{i32 786688, metadata !416, metadata !"ibase", metadata !21, i32 1516, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibase] [line 1516]
!434 = metadata !{i32 786688, metadata !416, metadata !"endstr", metadata !21, i32 1517, metadata !435, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [endstr] [line 1517]
!435 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 80, i64 8, i32 0, i32 0, metadata !39, metadata !436, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 80, align 8, offset 0] [from char]
!436 = metadata !{metadata !437}
!437 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!438 = metadata !{i32 786688, metadata !416, metadata !"s", metadata !21, i32 1518, metadata !439, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 1518]
!439 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800, i64 8, i32 0, i32 0, metadata !39, metadata !440, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 800, align 8, offset 0] [from char]
!440 = metadata !{metadata !441}
!441 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!442 = metadata !{i32 786688, metadata !416, metadata !"ss", metadata !21, i32 1519, metadata !439, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ss] [line 1519]
!443 = metadata !{i32 786688, metadata !416, metadata !"checksum", metadata !21, i32 1520, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [checksum] [line 1520]
!444 = metadata !{i32 786688, metadata !416, metadata !"seqlen", metadata !21, i32 1521, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seqlen] [line 1521]
!445 = metadata !{i32 786688, metadata !416, metadata !"which_case", metadata !21, i32 1522, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [which_case] [line 1522]
!446 = metadata !{i32 786688, metadata !416, metadata !"dostruc", metadata !21, i32 1523, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dostruc] [line 1523]
!447 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"ReadMultipleRseqs", metadata !"ReadMultipleRseqs", metadata !"", i32 1717, metadata !448, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i8***, %struct.seqinfo_s**, i32*)* @ReadMultipleRseqs, null, null, metadata !451, i32 1722} ; [ DW_TAG_subprogram ] [line 1717] [def] [scope 1722] [ReadMultipleRseqs]
!448 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !449, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!449 = metadata !{metadata !36, metadata !38, metadata !36, metadata !188, metadata !450, metadata !219}
!450 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!451 = metadata !{metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461}
!452 = metadata !{i32 786689, metadata !447, metadata !"seqfile", metadata !21, i32 16778933, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seqfile] [line 1717]
!453 = metadata !{i32 786689, metadata !447, metadata !"fformat", metadata !21, i32 33556150, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fformat] [line 1718]
!454 = metadata !{i32 786689, metadata !447, metadata !"ret_rseqs", metadata !21, i32 50333367, metadata !188, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_rseqs] [line 1719]
!455 = metadata !{i32 786689, metadata !447, metadata !"ret_sqinfo", metadata !21, i32 67110584, metadata !450, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_sqinfo] [line 1720]
!456 = metadata !{i32 786689, metadata !447, metadata !"ret_num", metadata !21, i32 83887801, metadata !219, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_num] [line 1721]
!457 = metadata !{i32 786688, metadata !447, metadata !"sqinfo", metadata !21, i32 1723, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sqinfo] [line 1723]
!458 = metadata !{i32 786688, metadata !447, metadata !"dbfp", metadata !21, i32 1724, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dbfp] [line 1724]
!459 = metadata !{i32 786688, metadata !447, metadata !"rseqs", metadata !21, i32 1725, metadata !153, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rseqs] [line 1725]
!460 = metadata !{i32 786688, metadata !447, metadata !"numalloced", metadata !21, i32 1726, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [numalloced] [line 1726]
!461 = metadata !{i32 786688, metadata !447, metadata !"num", metadata !21, i32 1727, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 1727]
!462 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"String2SeqfileFormat", metadata !"String2SeqfileFormat", metadata !"", i32 1769, metadata !381, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @String2SeqfileFormat, null, null, metadata !463, i32 1770} ; [ DW_TAG_subprogram ] [line 1769] [def] [scope 1770] [String2SeqfileFormat]
!463 = metadata !{metadata !464, metadata !465, metadata !466}
!464 = metadata !{i32 786689, metadata !462, metadata !"s", metadata !21, i32 16778985, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1769]
!465 = metadata !{i32 786688, metadata !462, metadata !"s2", metadata !21, i32 1771, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 1771]
!466 = metadata !{i32 786688, metadata !462, metadata !"code", metadata !21, i32 1772, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [code] [line 1772]
!467 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"SeqfileFormat2String", metadata !"SeqfileFormat2String", metadata !"", i32 1802, metadata !468, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i32)* @SeqfileFormat2String, null, null, metadata !470, i32 1803} ; [ DW_TAG_subprogram ] [line 1802] [def] [scope 1803] [SeqfileFormat2String]
!468 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !469, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!469 = metadata !{metadata !38, metadata !36}
!470 = metadata !{metadata !471}
!471 = metadata !{i32 786689, metadata !467, metadata !"code", metadata !21, i32 16779018, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [code] [line 1802]
!472 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"MSAToSqinfo", metadata !"MSAToSqinfo", metadata !"", i32 1852, metadata !473, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.seqinfo_s* (%struct.msa_struct*)* @MSAToSqinfo, null, null, metadata !475, i32 1853} ; [ DW_TAG_subprogram ] [line 1852] [def] [scope 1853] [MSAToSqinfo]
!473 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !474, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!474 = metadata !{metadata !118, metadata !147}
!475 = metadata !{metadata !476, metadata !477, metadata !478}
!476 = metadata !{i32 786689, metadata !472, metadata !"msa", metadata !21, i32 16779068, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 1852]
!477 = metadata !{i32 786688, metadata !472, metadata !"idx", metadata !21, i32 1854, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 1854]
!478 = metadata !{i32 786688, metadata !472, metadata !"sqinfo", metadata !21, i32 1855, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sqinfo] [line 1855]
!479 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"readUWGCG", metadata !"readUWGCG", metadata !"", i32 993, metadata !480, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !483, i32 994} ; [ DW_TAG_subprogram ] [line 993] [local] [def] [scope 994] [readUWGCG]
!480 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !481, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!481 = metadata !{null, metadata !482}
!482 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ReadSeqVars]
!483 = metadata !{metadata !484, metadata !485, metadata !486, metadata !487}
!484 = metadata !{i32 786689, metadata !479, metadata !"V", metadata !21, i32 16778209, metadata !482, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [V] [line 993]
!485 = metadata !{i32 786688, metadata !479, metadata !"si", metadata !21, i32 995, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [si] [line 995]
!486 = metadata !{i32 786688, metadata !479, metadata !"sptr", metadata !21, i32 996, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sptr] [line 996]
!487 = metadata !{i32 786688, metadata !479, metadata !"done", metadata !21, i32 997, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [done] [line 997]
!488 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"addseq", metadata !"addseq", metadata !"", i32 509, metadata !489, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, %struct.ReadSeqVars*)* @addseq, null, null, metadata !491, i32 510} ; [ DW_TAG_subprogram ] [line 509] [local] [def] [scope 510] [addseq]
!489 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !490, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!490 = metadata !{null, metadata !38, metadata !482}
!491 = metadata !{metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497}
!492 = metadata !{i32 786689, metadata !488, metadata !"s", metadata !21, i32 16777725, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 509]
!493 = metadata !{i32 786689, metadata !488, metadata !"V", metadata !21, i32 33554941, metadata !482, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [V] [line 509]
!494 = metadata !{i32 786688, metadata !488, metadata !"s0", metadata !21, i32 511, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s0] [line 511]
!495 = metadata !{i32 786688, metadata !488, metadata !"sq", metadata !21, i32 512, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sq] [line 512]
!496 = metadata !{i32 786688, metadata !488, metadata !"rpl", metadata !21, i32 513, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rpl] [line 513]
!497 = metadata !{i32 786688, metadata !488, metadata !"bpl", metadata !21, i32 514, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bpl] [line 514]
!498 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"readGCGdata", metadata !"readGCGdata", metadata !"", i32 821, metadata !480, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !499, i32 822} ; [ DW_TAG_subprogram ] [line 821] [local] [def] [scope 822] [readGCGdata]
!499 = metadata !{metadata !500, metadata !501, metadata !502}
!500 = metadata !{i32 786689, metadata !498, metadata !"V", metadata !21, i32 16778037, metadata !482, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [V] [line 821]
!501 = metadata !{i32 786688, metadata !498, metadata !"binary", metadata !21, i32 823, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [binary] [line 823]
!502 = metadata !{i32 786688, metadata !498, metadata !"blen", metadata !21, i32 824, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blen] [line 824]
!503 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"endGCGdata", metadata !"endGCGdata", metadata !"", i32 814, metadata !504, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*)* @endGCGdata, null, null, metadata !506, i32 815} ; [ DW_TAG_subprogram ] [line 814] [local] [def] [scope 815] [endGCGdata]
!504 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !505, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!505 = metadata !{metadata !36, metadata !38, metadata !219}
!506 = metadata !{metadata !507, metadata !508}
!507 = metadata !{i32 786689, metadata !503, metadata !"s", metadata !21, i32 16778030, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 814]
!508 = metadata !{i32 786689, metadata !503, metadata !"addend", metadata !21, i32 33555246, metadata !219, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addend] [line 814]
!509 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"readLoop", metadata !"readLoop", metadata !"", i32 594, metadata !510, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32 (i8*, i32*)*, %struct.ReadSeqVars*)* @readLoop, null, null, metadata !513, i32 595} ; [ DW_TAG_subprogram ] [line 594] [local] [def] [scope 595] [readLoop]
!510 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !511, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!511 = metadata !{null, metadata !36, metadata !512, metadata !482}
!512 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !504} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!513 = metadata !{metadata !514, metadata !515, metadata !516, metadata !517, metadata !518}
!514 = metadata !{i32 786689, metadata !509, metadata !"addfirst", metadata !21, i32 16777810, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addfirst] [line 594]
!515 = metadata !{i32 786689, metadata !509, metadata !"endTest", metadata !21, i32 33555026, metadata !512, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [endTest] [line 594]
!516 = metadata !{i32 786689, metadata !509, metadata !"V", metadata !21, i32 50332242, metadata !482, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [V] [line 594]
!517 = metadata !{i32 786688, metadata !509, metadata !"addend", metadata !21, i32 596, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [addend] [line 596]
!518 = metadata !{i32 786688, metadata !509, metadata !"done", metadata !21, i32 597, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [done] [line 597]
!519 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"readPIR", metadata !"readPIR", metadata !"", i32 632, metadata !480, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !520, i32 633} ; [ DW_TAG_subprogram ] [line 632] [local] [def] [scope 633] [readPIR]
!520 = metadata !{metadata !521, metadata !522}
!521 = metadata !{i32 786689, metadata !519, metadata !"V", metadata !21, i32 16777848, metadata !482, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [V] [line 632]
!522 = metadata !{i32 786688, metadata !519, metadata !"sptr", metadata !21, i32 634, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sptr] [line 634]
!523 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"endPIR", metadata !"endPIR", metadata !"", i32 621, metadata !504, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*)* @endPIR, null, null, metadata !524, i32 622} ; [ DW_TAG_subprogram ] [line 621] [local] [def] [scope 622] [endPIR]
!524 = metadata !{metadata !525, metadata !526}
!525 = metadata !{i32 786689, metadata !523, metadata !"s", metadata !21, i32 16777837, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 621]
!526 = metadata !{i32 786689, metadata !523, metadata !"addend", metadata !21, i32 33555053, metadata !219, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addend] [line 621]
!527 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"readZuker", metadata !"readZuker", metadata !"", i32 974, metadata !480, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !528, i32 975} ; [ DW_TAG_subprogram ] [line 974] [local] [def] [scope 975] [readZuker]
!528 = metadata !{metadata !529, metadata !530}
!529 = metadata !{i32 786689, metadata !527, metadata !"V", metadata !21, i32 16778190, metadata !482, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [V] [line 974]
!530 = metadata !{i32 786688, metadata !527, metadata !"sptr", metadata !21, i32 976, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sptr] [line 976]
!531 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"endZuker", metadata !"endZuker", metadata !"", i32 967, metadata !504, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*)* @endZuker, null, null, metadata !532, i32 968} ; [ DW_TAG_subprogram ] [line 967] [local] [def] [scope 968] [endZuker]
!532 = metadata !{metadata !533, metadata !534}
!533 = metadata !{i32 786689, metadata !531, metadata !"s", metadata !21, i32 16778183, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 967]
!534 = metadata !{i32 786689, metadata !531, metadata !"addend", metadata !21, i32 33555399, metadata !219, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addend] [line 967]
!535 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"readEMBL", metadata !"readEMBL", metadata !"", i32 913, metadata !480, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !536, i32 914} ; [ DW_TAG_subprogram ] [line 913] [local] [def] [scope 914] [readEMBL]
!536 = metadata !{metadata !537, metadata !538}
!537 = metadata !{i32 786689, metadata !535, metadata !"V", metadata !21, i32 16778129, metadata !482, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [V] [line 913]
!538 = metadata !{i32 786688, metadata !535, metadata !"sptr", metadata !21, i32 915, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sptr] [line 915]
!539 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"endEMBL", metadata !"endEMBL", metadata !"", i32 897, metadata !504, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*)* @endEMBL, null, null, metadata !540, i32 898} ; [ DW_TAG_subprogram ] [line 897] [local] [def] [scope 898] [endEMBL]
!540 = metadata !{metadata !541, metadata !542}
!541 = metadata !{i32 786689, metadata !539, metadata !"s", metadata !21, i32 16778113, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 897]
!542 = metadata !{i32 786689, metadata !539, metadata !"addend", metadata !21, i32 33555329, metadata !219, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addend] [line 897]
!543 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"readPearson", metadata !"readPearson", metadata !"", i32 870, metadata !480, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !544, i32 871} ; [ DW_TAG_subprogram ] [line 870] [local] [def] [scope 871] [readPearson]
!544 = metadata !{metadata !545, metadata !546}
!545 = metadata !{i32 786689, metadata !543, metadata !"V", metadata !21, i32 16778086, metadata !482, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [V] [line 870]
!546 = metadata !{i32 786688, metadata !543, metadata !"sptr", metadata !21, i32 872, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sptr] [line 872]
!547 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"endPearson", metadata !"endPearson", metadata !"", i32 863, metadata !504, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*)* @endPearson, null, null, metadata !548, i32 864} ; [ DW_TAG_subprogram ] [line 863] [local] [def] [scope 864] [endPearson]
!548 = metadata !{metadata !549, metadata !550}
!549 = metadata !{i32 786689, metadata !547, metadata !"s", metadata !21, i32 16778079, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 863]
!550 = metadata !{i32 786689, metadata !547, metadata !"addend", metadata !21, i32 33555295, metadata !219, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addend] [line 863]
!551 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"readGenBank", metadata !"readGenBank", metadata !"", i32 745, metadata !480, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !552, i32 746} ; [ DW_TAG_subprogram ] [line 745] [local] [def] [scope 746] [readGenBank]
!552 = metadata !{metadata !553, metadata !554, metadata !555}
!553 = metadata !{i32 786689, metadata !551, metadata !"V", metadata !21, i32 16777961, metadata !482, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [V] [line 745]
!554 = metadata !{i32 786688, metadata !551, metadata !"sptr", metadata !21, i32 747, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sptr] [line 747]
!555 = metadata !{i32 786688, metadata !551, metadata !"in_definition", metadata !21, i32 748, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_definition] [line 748]
!556 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"endGB", metadata !"endGB", metadata !"", i32 738, metadata !504, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*)* @endGB, null, null, metadata !557, i32 739} ; [ DW_TAG_subprogram ] [line 738] [local] [def] [scope 739] [endGB]
!557 = metadata !{metadata !558, metadata !559}
!558 = metadata !{i32 786689, metadata !556, metadata !"s", metadata !21, i32 16777954, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 738]
!559 = metadata !{i32 786689, metadata !556, metadata !"addend", metadata !21, i32 33555170, metadata !219, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addend] [line 738]
!560 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"readStrider", metadata !"readStrider", metadata !"", i32 713, metadata !480, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !561, i32 714} ; [ DW_TAG_subprogram ] [line 713] [local] [def] [scope 714] [readStrider]
!561 = metadata !{metadata !562, metadata !563}
!562 = metadata !{i32 786689, metadata !560, metadata !"V", metadata !21, i32 16777929, metadata !482, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [V] [line 713]
!563 = metadata !{i32 786688, metadata !560, metadata !"nm", metadata !21, i32 715, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nm] [line 715]
!564 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"endStrider", metadata !"endStrider", metadata !"", i32 706, metadata !504, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*)* @endStrider, null, null, metadata !565, i32 707} ; [ DW_TAG_subprogram ] [line 706] [local] [def] [scope 707] [endStrider]
!565 = metadata !{metadata !566, metadata !567}
!566 = metadata !{i32 786689, metadata !564, metadata !"s", metadata !21, i32 16777922, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 706]
!567 = metadata !{i32 786689, metadata !564, metadata !"addend", metadata !21, i32 33555138, metadata !219, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addend] [line 706]
!568 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"readIG", metadata !"readIG", metadata !"", i32 685, metadata !480, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !569, i32 686} ; [ DW_TAG_subprogram ] [line 685] [local] [def] [scope 686] [readIG]
!569 = metadata !{metadata !570, metadata !571}
!570 = metadata !{i32 786689, metadata !568, metadata !"V", metadata !21, i32 16777901, metadata !482, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [V] [line 685]
!571 = metadata !{i32 786688, metadata !568, metadata !"nm", metadata !21, i32 687, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nm] [line 687]
!572 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"endIG", metadata !"endIG", metadata !"", i32 678, metadata !504, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32*)* @endIG, null, null, metadata !573, i32 679} ; [ DW_TAG_subprogram ] [line 678] [local] [def] [scope 679] [endIG]
!573 = metadata !{metadata !574, metadata !575}
!574 = metadata !{i32 786689, metadata !572, metadata !"s", metadata !21, i32 16777894, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 678]
!575 = metadata !{i32 786689, metadata !572, metadata !"addend", metadata !21, i32 33555110, metadata !219, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addend] [line 678]
!576 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"SeqfileGetLine", metadata !"SeqfileGetLine", metadata !"", i32 318, metadata !284, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ReadSeqVars*)* @SeqfileGetLine, null, null, metadata !577, i32 319} ; [ DW_TAG_subprogram ] [line 318] [local] [def] [scope 319] [SeqfileGetLine]
!577 = metadata !{metadata !578}
!578 = metadata !{i32 786689, metadata !576, metadata !"V", metadata !21, i32 16777534, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [V] [line 318]
!579 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"seqfile_open", metadata !"seqfile_open", metadata !"", i32 97, metadata !269, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.ReadSeqVars* (i8*, i32, i8*, i32)* @seqfile_open, null, null, metadata !580, i32 98} ; [ DW_TAG_subprogram ] [line 97] [local] [def] [scope 98] [seqfile_open]
!580 = metadata !{metadata !581, metadata !582, metadata !583, metadata !584, metadata !585, metadata !586}
!581 = metadata !{i32 786689, metadata !579, metadata !"filename", metadata !21, i32 16777313, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 97]
!582 = metadata !{i32 786689, metadata !579, metadata !"format", metadata !21, i32 33554529, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 97]
!583 = metadata !{i32 786689, metadata !579, metadata !"env", metadata !21, i32 50331745, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [env] [line 97]
!584 = metadata !{i32 786689, metadata !579, metadata !"ssimode", metadata !21, i32 67108961, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ssimode] [line 97]
!585 = metadata !{i32 786688, metadata !579, metadata !"dbfp", metadata !21, i32 99, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dbfp] [line 99]
!586 = metadata !{i32 786688, metadata !587, metadata !"cmd", metadata !21, i32 131, metadata !588, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmd] [line 131]
!587 = metadata !{i32 786443, metadata !1, metadata !579, i32 130, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!588 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !39, metadata !589, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!589 = metadata !{metadata !590}
!590 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!591 = metadata !{metadata !592, metadata !593, metadata !594}
!592 = metadata !{i32 786484, i32 0, null, metadata !"aminos", metadata !"aminos", metadata !"", metadata !21, i32 68, metadata !38, i32 1, i32 1, null, null}
!593 = metadata !{i32 786484, i32 0, null, metadata !"primenuc", metadata !"primenuc", metadata !"", metadata !21, i32 69, metadata !38, i32 1, i32 1, null, null}
!594 = metadata !{i32 786484, i32 0, null, metadata !"protonly", metadata !"protonly", metadata !"", metadata !21, i32 70, metadata !38, i32 1, i32 1, null, null}
!595 = metadata !{i32 87, i32 0, metadata !20, null}
!596 = metadata !{i32 89, i32 0, metadata !20, null}
!597 = metadata !{i32 97, i32 0, metadata !579, null}
!598 = metadata !{i32 101, i32 0, metadata !579, null}
!599 = metadata !{i32 103, i32 0, metadata !579, null}
!600 = metadata !{metadata !"int", metadata !601}
!601 = metadata !{metadata !"omnipotent char", metadata !602}
!602 = metadata !{metadata !"Simple C/C++ TBAA"}
!603 = metadata !{i32 104, i32 0, metadata !579, null}
!604 = metadata !{i32 105, i32 0, metadata !579, null}
!605 = metadata !{i32 106, i32 0, metadata !579, null}
!606 = metadata !{i32 107, i32 0, metadata !579, null}
!607 = metadata !{i32 108, i32 0, metadata !579, null}
!608 = metadata !{i32 109, i32 0, metadata !579, null}
!609 = metadata !{i32 120, i32 0, metadata !579, null}
!610 = metadata !{i32 122, i32 0, metadata !611, null}
!611 = metadata !{i32 786443, metadata !1, metadata !579, i32 121, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!612 = metadata !{metadata !"any pointer", metadata !601}
!613 = metadata !{i32 123, i32 0, metadata !611, null}
!614 = metadata !{i32 124, i32 0, metadata !611, null}
!615 = metadata !{i32 125, i32 0, metadata !611, null}
!616 = metadata !{i32 126, i32 0, metadata !611, null}
!617 = metadata !{i32 129, i32 0, metadata !579, null}
!618 = metadata !{i32 131, i32 0, metadata !587, null}
!619 = metadata !{i32 138, i32 0, metadata !587, null}
!620 = metadata !{i32 139, i32 0, metadata !587, null}
!621 = metadata !{i32 141, i32 0, metadata !587, null}
!622 = metadata !{i32 142, i32 0, metadata !587, null}
!623 = metadata !{i32 143, i32 0, metadata !587, null}
!624 = metadata !{i32 144, i32 0, metadata !587, null}
!625 = metadata !{i32 147, i32 0, metadata !587, null}
!626 = metadata !{i32 148, i32 0, metadata !587, null}
!627 = metadata !{i32 149, i32 0, metadata !587, null}
!628 = metadata !{i32 150, i32 0, metadata !587, null}
!629 = metadata !{i32 154, i32 0, metadata !630, null}
!630 = metadata !{i32 786443, metadata !1, metadata !579, i32 153, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!631 = metadata !{i32 155, i32 0, metadata !630, null}
!632 = metadata !{i32 158, i32 0, metadata !630, null}
!633 = metadata !{i32 159, i32 0, metadata !630, null}
!634 = metadata !{i32 160, i32 0, metadata !630, null}
!635 = metadata !{i32 167, i32 0, metadata !579, null}
!636 = metadata !{i32 169, i32 0, metadata !637, null}
!637 = metadata !{i32 786443, metadata !1, metadata !579, i32 168, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!638 = metadata !{i32 170, i32 0, metadata !637, null}
!639 = metadata !{i32 171, i32 0, metadata !637, null}
!640 = metadata !{i32 172, i32 0, metadata !637, null}
!641 = metadata !{i32 173, i32 0, metadata !637, null}
!642 = metadata !{i32 179, i32 0, metadata !579, null}
!643 = metadata !{i32 180, i32 0, metadata !579, null}
!644 = metadata !{i32 181, i32 0, metadata !579, null}
!645 = metadata !{i32 182, i32 0, metadata !579, null}
!646 = metadata !{i32 183, i32 0, metadata !579, null}
!647 = metadata !{i32 184, i32 0, metadata !579, null}
!648 = metadata !{i32 185, i32 0, metadata !579, null}
!649 = metadata !{i32 190, i32 0, metadata !650, null}
!650 = metadata !{i32 786443, metadata !1, metadata !579, i32 186, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!651 = metadata !{i32 191, i32 0, metadata !650, null}
!652 = metadata !{i32 192, i32 0, metadata !650, null}
!653 = metadata !{i32 193, i32 0, metadata !650, null}
!654 = metadata !{i32 194, i32 0, metadata !650, null}
!655 = metadata !{i32 195, i32 0, metadata !650, null}
!656 = metadata !{i32 196, i32 0, metadata !650, null}
!657 = metadata !{i32 197, i32 0, metadata !650, null}
!658 = metadata !{i32 198, i32 0, metadata !650, null}
!659 = metadata !{i32 200, i32 0, metadata !650, null}
!660 = metadata !{i32 201, i32 0, metadata !650, null}
!661 = metadata !{i32 204, i32 0, metadata !650, null}
!662 = metadata !{i32 206, i32 0, metadata !650, null}
!663 = metadata !{i32 211, i32 0, metadata !579, null}
!664 = metadata !{i32 212, i32 0, metadata !579, null}
!665 = metadata !{i32 213, i32 0, metadata !579, null}
!666 = metadata !{i32 92, i32 0, metadata !268, null}
!667 = metadata !{i32 94, i32 0, metadata !268, null}
!668 = metadata !{i32 221, i32 0, metadata !276, null}
!669 = metadata !{i32 223, i32 0, metadata !276, null}
!670 = metadata !{i32 224, i32 0, metadata !276, null}
!671 = metadata !{i32 226, i32 0, metadata !276, null}
!672 = metadata !{i32 227, i32 0, metadata !276, null}
!673 = metadata !{i32 228, i32 0, metadata !276, null}
!674 = metadata !{i32 229, i32 0, metadata !276, null}
!675 = metadata !{i32 318, i32 0, metadata !576, null}
!676 = metadata !{i32 320, i32 0, metadata !576, null}
!677 = metadata !{i32 321, i32 0, metadata !576, null}
!678 = metadata !{i32 322, i32 0, metadata !576, null}
!679 = metadata !{i32 323, i32 0, metadata !576, null}
!680 = metadata !{i32 324, i32 0, metadata !576, null}
!681 = metadata !{i32 325, i32 0, metadata !576, null}
!682 = metadata !{i32 326, i32 0, metadata !576, null}
!683 = metadata !{i32 242, i32 0, metadata !283, null}
!684 = metadata !{i32 244, i32 0, metadata !283, null}
!685 = metadata !{i32 245, i32 0, metadata !283, null}
!686 = metadata !{i32 247, i32 0, metadata !283, null}
!687 = metadata !{i32 248, i32 0, metadata !283, null}
!688 = metadata !{i32 249, i32 0, metadata !283, null}
!689 = metadata !{i32 270, i32 0, metadata !288, null}
!690 = metadata !{i32 272, i32 0, metadata !288, null}
!691 = metadata !{i32 274, i32 0, metadata !692, null}
!692 = metadata !{i32 786443, metadata !1, metadata !288, i32 273, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!693 = metadata !{i32 275, i32 0, metadata !692, null}
!694 = metadata !{i32 276, i32 0, metadata !692, null}
!695 = metadata !{i32 277, i32 0, metadata !696, null}
!696 = metadata !{i32 786443, metadata !1, metadata !288, i32 276, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!697 = metadata !{i32 280, i32 0, metadata !288, null}
!698 = metadata !{i32 284, i32 0, metadata !295, null}
!699 = metadata !{i32 291, i32 0, metadata !295, null}
!700 = metadata !{i32 292, i32 0, metadata !701, null}
!701 = metadata !{i32 786443, metadata !1, metadata !295, i32 291, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!702 = metadata !{i32 293, i32 0, metadata !701, null}
!703 = metadata !{i32 294, i32 0, metadata !701, null}
!704 = metadata !{i32 295, i32 0, metadata !701, null}
!705 = metadata !{i32 298, i32 0, metadata !295, null}
!706 = metadata !{i32 300, i32 0, metadata !295, null}
!707 = metadata !{i32 301, i32 0, metadata !295, null}
!708 = metadata !{i32 302, i32 0, metadata !295, null}
!709 = metadata !{i32 303, i32 0, metadata !295, null}
!710 = metadata !{i32 304, i32 0, metadata !295, null}
!711 = metadata !{i32 330, i32 0, metadata !298, null}
!712 = metadata !{i32 332, i32 0, metadata !298, null}
!713 = metadata !{i32 333, i32 0, metadata !298, null}
!714 = metadata !{i32 334, i32 0, metadata !298, null}
!715 = metadata !{i32 335, i32 0, metadata !298, null}
!716 = metadata !{i32 338, i32 0, metadata !304, null}
!717 = metadata !{i32 344, i32 0, metadata !304, null}
!718 = metadata !{i32 346, i32 0, metadata !304, null}
!719 = metadata !{i32 347, i32 0, metadata !720, null}
!720 = metadata !{i32 786443, metadata !1, metadata !304, i32 347, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!721 = metadata !{i32 348, i32 0, metadata !720, null}
!722 = metadata !{metadata !"short", metadata !601}
!723 = metadata !{i32 349, i32 0, metadata !304, null}
!724 = metadata !{i32 351, i32 0, metadata !304, null}
!725 = metadata !{i32 353, i32 0, metadata !726, null}
!726 = metadata !{i32 786443, metadata !1, metadata !304, i32 351, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!727 = metadata !{i32 355, i32 0, metadata !728, null}
!728 = metadata !{i32 786443, metadata !1, metadata !726, i32 354, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!729 = metadata !{i32 356, i32 0, metadata !728, null}
!730 = metadata !{i32 357, i32 0, metadata !728, null}
!731 = metadata !{i32 358, i32 0, metadata !728, null}
!732 = metadata !{i32 362, i32 0, metadata !726, null}
!733 = metadata !{i32 364, i32 0, metadata !734, null}
!734 = metadata !{i32 786443, metadata !1, metadata !726, i32 363, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!735 = metadata !{i32 365, i32 0, metadata !734, null}
!736 = metadata !{i32 366, i32 0, metadata !734, null}
!737 = metadata !{i32 367, i32 0, metadata !734, null}
!738 = metadata !{i32 371, i32 0, metadata !726, null}
!739 = metadata !{i32 373, i32 0, metadata !740, null}
!740 = metadata !{i32 786443, metadata !1, metadata !726, i32 372, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!741 = metadata !{i32 374, i32 0, metadata !740, null}
!742 = metadata !{i32 375, i32 0, metadata !740, null}
!743 = metadata !{i32 376, i32 0, metadata !740, null}
!744 = metadata !{i32 380, i32 0, metadata !726, null}
!745 = metadata !{i32 382, i32 0, metadata !746, null}
!746 = metadata !{i32 786443, metadata !1, metadata !726, i32 381, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!747 = metadata !{i32 384, i32 0, metadata !748, null}
!748 = metadata !{i32 786443, metadata !1, metadata !746, i32 383, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!749 = metadata !{i32 385, i32 0, metadata !748, null}
!750 = metadata !{i32 387, i32 0, metadata !751, null}
!751 = metadata !{i32 786443, metadata !1, metadata !748, i32 386, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!752 = metadata !{i32 388, i32 0, metadata !751, null}
!753 = metadata !{i32 389, i32 0, metadata !751, null}
!754 = metadata !{i32 392, i32 0, metadata !746, null}
!755 = metadata !{i32 393, i32 0, metadata !746, null}
!756 = metadata !{i32 394, i32 0, metadata !746, null}
!757 = metadata !{i32 395, i32 0, metadata !746, null}
!758 = metadata !{i32 399, i32 0, metadata !726, null}
!759 = metadata !{i32 399, i32 0, metadata !760, null}
!760 = metadata !{i32 786443, metadata !1, metadata !726, i32 399, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!761 = metadata !{i32 400, i32 0, metadata !726, null}
!762 = metadata !{i32 401, i32 0, metadata !726, null}
!763 = metadata !{i32 405, i32 0, metadata !726, null}
!764 = metadata !{i32 405, i32 0, metadata !765, null}
!765 = metadata !{i32 786443, metadata !1, metadata !726, i32 405, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!766 = metadata !{i32 406, i32 0, metadata !726, null}
!767 = metadata !{i32 407, i32 0, metadata !726, null}
!768 = metadata !{i32 411, i32 0, metadata !726, null}
!769 = metadata !{i32 411, i32 0, metadata !770, null}
!770 = metadata !{i32 786443, metadata !1, metadata !726, i32 411, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!771 = metadata !{i32 412, i32 0, metadata !726, null}
!772 = metadata !{i32 413, i32 0, metadata !726, null}
!773 = metadata !{i32 417, i32 0, metadata !726, null}
!774 = metadata !{i32 418, i32 0, metadata !726, null}
!775 = metadata !{i32 419, i32 0, metadata !304, null}
!776 = metadata !{i32 423, i32 0, metadata !313, null}
!777 = metadata !{i32 425, i32 0, metadata !313, null}
!778 = metadata !{i32 426, i32 0, metadata !313, null}
!779 = metadata !{i32 427, i32 0, metadata !313, null}
!780 = metadata !{i32 428, i32 0, metadata !313, null}
!781 = metadata !{i32 429, i32 0, metadata !313, null}
!782 = metadata !{i32 430, i32 0, metadata !313, null}
!783 = metadata !{i32 431, i32 0, metadata !313, null}
!784 = metadata !{i32 432, i32 0, metadata !313, null}
!785 = metadata !{i32 433, i32 0, metadata !313, null}
!786 = metadata !{i32 434, i32 0, metadata !313, null}
!787 = metadata !{i32 435, i32 0, metadata !313, null}
!788 = metadata !{i32 436, i32 0, metadata !313, null}
!789 = metadata !{i32 437, i32 0, metadata !313, null}
!790 = metadata !{i32 445, i32 0, metadata !319, null}
!791 = metadata !{i32 447, i32 0, metadata !792, null}
!792 = metadata !{i32 786443, metadata !1, metadata !319, i32 447, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!793 = metadata !{i32 449, i32 0, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !792, i32 448, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!795 = metadata !{i32 450, i32 0, metadata !794, null}
!796 = metadata !{i32 452, i32 0, metadata !319, null}
!797 = metadata !{i32 460, i32 0, metadata !324, null}
!798 = metadata !{i32 462, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !1, metadata !324, i32 462, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!800 = metadata !{i32 464, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !799, i32 463, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!802 = metadata !{i32 465, i32 0, metadata !801, null}
!803 = metadata !{i32 467, i32 0, metadata !324, null}
!804 = metadata !{i32 486, i32 0, metadata !327, null}
!805 = metadata !{i32 488, i32 0, metadata !327, null}
!806 = metadata !{i32 492, i32 0, metadata !807, null}
!807 = metadata !{i32 786443, metadata !1, metadata !808, i32 492, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!808 = metadata !{i32 786443, metadata !1, metadata !327, i32 491, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!809 = metadata !{i32 489, i32 0, metadata !810, null}
!810 = metadata !{i32 786443, metadata !1, metadata !811, i32 489, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!811 = metadata !{i32 786443, metadata !1, metadata !327, i32 488, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!812 = metadata !{i32 490, i32 0, metadata !810, null}
!813 = metadata !{i32 493, i32 0, metadata !807, null}
!814 = metadata !{i32 495, i32 0, metadata !327, null}
!815 = metadata !{i32 1043, i32 0, metadata !333, null}
!816 = metadata !{i32 1047, i32 0, metadata !333, null}
!817 = metadata !{i32 1052, i32 0, metadata !333, null}
!818 = metadata !{i32 1054, i32 0, metadata !819, null}
!819 = metadata !{i32 786443, metadata !1, metadata !333, i32 1053, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!820 = metadata !{i32 1056, i32 0, metadata !821, null}
!821 = metadata !{i32 786443, metadata !1, metadata !819, i32 1055, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!822 = metadata !{i32 1057, i32 0, metadata !821, null}
!823 = metadata !{i32 1059, i32 0, metadata !821, null}
!824 = metadata !{i32 1060, i32 0, metadata !821, null}
!825 = metadata !{i32 1062, i32 0, metadata !819, null}
!826 = metadata !{i32 1064, i32 0, metadata !819, null}
!827 = metadata !{i32 1069, i32 0, metadata !819, null}
!828 = metadata !{i32 1070, i32 0, metadata !819, null}
!829 = metadata !{i32 1071, i32 0, metadata !819, null}
!830 = metadata !{i32 1072, i32 0, metadata !819, null}
!831 = metadata !{i32 1073, i32 0, metadata !819, null}
!832 = metadata !{i32 1074, i32 0, metadata !819, null}
!833 = metadata !{i32 1075, i32 0, metadata !819, null}
!834 = metadata !{i32 1076, i32 0, metadata !819, null}
!835 = metadata !{i32 1077, i32 0, metadata !836, null}
!836 = metadata !{i32 786443, metadata !1, metadata !819, i32 1076, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!837 = metadata !{i32 1079, i32 0, metadata !836, null}
!838 = metadata !{i32 1081, i32 0, metadata !819, null}
!839 = metadata !{i32 1080, i32 0, metadata !836, null}
!840 = metadata !{i32 1082, i32 0, metadata !841, null}
!841 = metadata !{i32 786443, metadata !1, metadata !819, i32 1081, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!842 = metadata !{i32 1084, i32 0, metadata !841, null}
!843 = metadata !{i32 1086, i32 0, metadata !819, null}
!844 = metadata !{i32 1085, i32 0, metadata !841, null}
!845 = metadata !{i32 1087, i32 0, metadata !819, null}
!846 = metadata !{i32 1089, i32 0, metadata !847, null}
!847 = metadata !{i32 786443, metadata !1, metadata !333, i32 1088, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!848 = metadata !{i32 1091, i32 0, metadata !847, null}
!849 = metadata !{i32 1092, i32 0, metadata !850, null}
!850 = metadata !{i32 786443, metadata !1, metadata !847, i32 1091, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!851 = metadata !{i32 1093, i32 0, metadata !850, null}
!852 = metadata !{i32 1094, i32 0, metadata !850, null}
!853 = metadata !{i32 1095, i32 0, metadata !854, null}
!854 = metadata !{i32 786443, metadata !1, metadata !847, i32 1094, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!855 = metadata !{i32 1096, i32 0, metadata !854, null}
!856 = metadata !{i32 1098, i32 0, metadata !847, null}
!857 = metadata !{i32 1099, i32 0, metadata !847, null}
!858 = metadata !{i32 1100, i32 0, metadata !847, null}
!859 = metadata !{i32 1102, i32 0, metadata !847, null}
!860 = metadata !{i32 1114, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !862, i32 1113, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!862 = metadata !{i32 786443, metadata !1, metadata !847, i32 1102, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!863 = metadata !{i32 786689, metadata !568, metadata !"V", metadata !21, i32 16777901, metadata !482, i32 0, metadata !864} ; [ DW_TAG_arg_variable ] [V] [line 685]
!864 = metadata !{i32 1103, i32 0, metadata !862, null}
!865 = metadata !{i32 685, i32 0, metadata !568, metadata !864}
!866 = metadata !{i32 690, i32 0, metadata !867, metadata !864}
!867 = metadata !{i32 786443, metadata !1, metadata !568, i32 689, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!868 = metadata !{i32 691, i32 0, metadata !568, metadata !864}
!869 = metadata !{i32 693, i32 0, metadata !568, metadata !864}
!870 = metadata !{i32 695, i32 0, metadata !871, metadata !864}
!871 = metadata !{i32 786443, metadata !1, metadata !568, i32 694, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!872 = metadata !{i32 786688, metadata !568, metadata !"nm", metadata !21, i32 687, metadata !38, i32 0, metadata !864} ; [ DW_TAG_auto_variable ] [nm] [line 687]
!873 = metadata !{i32 696, i32 0, metadata !871, metadata !864}
!874 = metadata !{i32 698, i32 0, metadata !871, metadata !864}
!875 = metadata !{i32 699, i32 0, metadata !871, metadata !864}
!876 = metadata !{i32 701, i32 0, metadata !568, metadata !864}
!877 = metadata !{i32 702, i32 0, metadata !568, metadata !864}
!878 = metadata !{i32 786689, metadata !560, metadata !"V", metadata !21, i32 16777929, metadata !482, i32 0, metadata !879} ; [ DW_TAG_arg_variable ] [V] [line 713]
!879 = metadata !{i32 1104, i32 0, metadata !862, null}
!880 = metadata !{i32 713, i32 0, metadata !560, metadata !879}
!881 = metadata !{i32 717, i32 0, metadata !560, metadata !879}
!882 = metadata !{i32 719, i32 0, metadata !883, metadata !879}
!883 = metadata !{i32 786443, metadata !1, metadata !560, i32 718, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!884 = metadata !{i32 721, i32 0, metadata !885, metadata !879}
!885 = metadata !{i32 786443, metadata !1, metadata !883, i32 720, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!886 = metadata !{i32 786688, metadata !560, metadata !"nm", metadata !21, i32 715, metadata !38, i32 0, metadata !879} ; [ DW_TAG_auto_variable ] [nm] [line 715]
!887 = metadata !{i32 722, i32 0, metadata !885, metadata !879}
!888 = metadata !{i32 724, i32 0, metadata !883, metadata !879}
!889 = metadata !{i32 727, i32 0, metadata !560, metadata !879}
!890 = metadata !{i32 728, i32 0, metadata !560, metadata !879}
!891 = metadata !{i32 732, i32 0, metadata !560, metadata !879}
!892 = metadata !{i32 733, i32 0, metadata !560, metadata !879}
!893 = metadata !{i32 786689, metadata !551, metadata !"V", metadata !21, i32 16777961, metadata !482, i32 0, metadata !894} ; [ DW_TAG_arg_variable ] [V] [line 745]
!894 = metadata !{i32 1105, i32 0, metadata !862, null}
!895 = metadata !{i32 745, i32 0, metadata !551, metadata !894}
!896 = metadata !{i32 756, i32 0, metadata !551, metadata !894}
!897 = metadata !{i32 757, i32 0, metadata !898, metadata !894}
!898 = metadata !{i32 786443, metadata !1, metadata !551, i32 756, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!899 = metadata !{i32 759, i32 0, metadata !551, metadata !894}
!900 = metadata !{i64 0, i64 1, metadata !601, i64 8, i64 4, metadata !600, i64 8, i64 8, metadata !901}
!901 = metadata !{metadata !"long long", metadata !601}
!902 = metadata !{i32 761, i32 0, metadata !551, metadata !894}
!903 = metadata !{i32 786688, metadata !551, metadata !"sptr", metadata !21, i32 747, metadata !38, i32 0, metadata !894} ; [ DW_TAG_auto_variable ] [sptr] [line 747]
!904 = metadata !{i32 762, i32 0, metadata !551, metadata !894}
!905 = metadata !{i32 765, i32 0, metadata !551, metadata !894}
!906 = metadata !{i32 767, i32 0, metadata !907, metadata !894}
!907 = metadata !{i32 786443, metadata !1, metadata !551, i32 766, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!908 = metadata !{i32 768, i32 0, metadata !907, metadata !894}
!909 = metadata !{i32 770, i32 0, metadata !910, metadata !894}
!910 = metadata !{i32 786443, metadata !1, metadata !907, i32 769, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!911 = metadata !{i32 771, i32 0, metadata !910, metadata !894}
!912 = metadata !{i32 774, i32 0, metadata !907, metadata !894}
!913 = metadata !{i32 776, i32 0, metadata !914, metadata !894}
!914 = metadata !{i32 786443, metadata !1, metadata !907, i32 775, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!915 = metadata !{i32 777, i32 0, metadata !914, metadata !894}
!916 = metadata !{i32 780, i32 0, metadata !907, metadata !894}
!917 = metadata !{i32 782, i32 0, metadata !918, metadata !894}
!918 = metadata !{i32 786443, metadata !1, metadata !907, i32 781, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!919 = metadata !{i32 783, i32 0, metadata !918, metadata !894}
!920 = metadata !{i32 786, i32 0, metadata !907, metadata !894}
!921 = metadata !{i32 788, i32 0, metadata !922, metadata !894}
!922 = metadata !{i32 786443, metadata !1, metadata !907, i32 787, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!923 = metadata !{i32 789, i32 0, metadata !922, metadata !894}
!924 = metadata !{i32 795, i32 0, metadata !551, metadata !894}
!925 = metadata !{i32 799, i32 0, metadata !551, metadata !894}
!926 = metadata !{i32 800, i32 0, metadata !551, metadata !894}
!927 = metadata !{i32 801, i32 0, metadata !551, metadata !894}
!928 = metadata !{i32 802, i32 0, metadata !551, metadata !894}
!929 = metadata !{i32 805, i32 0, metadata !551, metadata !894}
!930 = metadata !{i32 809, i32 0, metadata !551, metadata !894}
!931 = metadata !{i32 806, i32 0, metadata !551, metadata !894}
!932 = metadata !{i32 810, i32 0, metadata !551, metadata !894}
!933 = metadata !{i32 786689, metadata !543, metadata !"V", metadata !21, i32 16778086, metadata !482, i32 0, metadata !934} ; [ DW_TAG_arg_variable ] [V] [line 870]
!934 = metadata !{i32 1106, i32 0, metadata !862, null}
!935 = metadata !{i32 870, i32 0, metadata !543, metadata !934}
!936 = metadata !{i32 874, i32 0, metadata !543, metadata !934}
!937 = metadata !{i32 876, i32 0, metadata !543, metadata !934}
!938 = metadata !{i32 877, i32 0, metadata !543, metadata !934}
!939 = metadata !{i32 883, i32 0, metadata !543, metadata !934}
!940 = metadata !{i32 786688, metadata !543, metadata !"sptr", metadata !21, i32 872, metadata !38, i32 0, metadata !934} ; [ DW_TAG_auto_variable ] [sptr] [line 872]
!941 = metadata !{i32 884, i32 0, metadata !543, metadata !934}
!942 = metadata !{i32 885, i32 0, metadata !543, metadata !934}
!943 = metadata !{i32 886, i32 0, metadata !543, metadata !934}
!944 = metadata !{i32 888, i32 0, metadata !543, metadata !934}
!945 = metadata !{i32 890, i32 0, metadata !543, metadata !934}
!946 = metadata !{i32 891, i32 0, metadata !947, metadata !934}
!947 = metadata !{i32 786443, metadata !1, metadata !543, i32 890, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!948 = metadata !{i32 786689, metadata !535, metadata !"V", metadata !21, i32 16778129, metadata !482, i32 0, metadata !949} ; [ DW_TAG_arg_variable ] [V] [line 913]
!949 = metadata !{i32 1107, i32 0, metadata !862, null}
!950 = metadata !{i32 913, i32 0, metadata !535, metadata !949}
!951 = metadata !{i32 918, i32 0, metadata !535, metadata !949}
!952 = metadata !{i32 919, i32 0, metadata !953, metadata !949}
!953 = metadata !{i32 786443, metadata !1, metadata !535, i32 918, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!954 = metadata !{i32 921, i32 0, metadata !535, metadata !949}
!955 = metadata !{i32 923, i32 0, metadata !535, metadata !949}
!956 = metadata !{i32 786688, metadata !535, metadata !"sptr", metadata !21, i32 915, metadata !38, i32 0, metadata !949} ; [ DW_TAG_auto_variable ] [sptr] [line 915]
!957 = metadata !{i32 925, i32 0, metadata !958, metadata !949}
!958 = metadata !{i32 786443, metadata !1, metadata !535, i32 924, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!959 = metadata !{i32 926, i32 0, metadata !958, metadata !949}
!960 = metadata !{i32 927, i32 0, metadata !958, metadata !949}
!961 = metadata !{i32 930, i32 0, metadata !962, metadata !949}
!962 = metadata !{i32 786443, metadata !1, metadata !535, i32 929, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!963 = metadata !{i32 931, i32 0, metadata !962, metadata !949}
!964 = metadata !{i32 933, i32 0, metadata !965, metadata !949}
!965 = metadata !{i32 786443, metadata !1, metadata !962, i32 932, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!966 = metadata !{i32 934, i32 0, metadata !965, metadata !949}
!967 = metadata !{i32 936, i32 0, metadata !962, metadata !949}
!968 = metadata !{i32 938, i32 0, metadata !969, metadata !949}
!969 = metadata !{i32 786443, metadata !1, metadata !962, i32 937, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!970 = metadata !{i32 939, i32 0, metadata !969, metadata !949}
!971 = metadata !{i32 941, i32 0, metadata !535, metadata !949}
!972 = metadata !{i32 943, i32 0, metadata !535, metadata !949}
!973 = metadata !{i32 947, i32 0, metadata !535, metadata !949}
!974 = metadata !{i32 948, i32 0, metadata !975, metadata !949}
!975 = metadata !{i32 786443, metadata !1, metadata !535, i32 948, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!976 = metadata !{i32 949, i32 0, metadata !975, metadata !949}
!977 = metadata !{i32 953, i32 0, metadata !535, metadata !949}
!978 = metadata !{i32 954, i32 0, metadata !535, metadata !949}
!979 = metadata !{i32 955, i32 0, metadata !535, metadata !949}
!980 = metadata !{i32 956, i32 0, metadata !535, metadata !949}
!981 = metadata !{i32 959, i32 0, metadata !535, metadata !949}
!982 = metadata !{i32 960, i32 0, metadata !983, metadata !949}
!983 = metadata !{i32 786443, metadata !1, metadata !535, i32 959, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!984 = metadata !{i32 786689, metadata !527, metadata !"V", metadata !21, i32 16778190, metadata !482, i32 0, metadata !985} ; [ DW_TAG_arg_variable ] [V] [line 974]
!985 = metadata !{i32 1108, i32 0, metadata !862, null}
!986 = metadata !{i32 974, i32 0, metadata !527, metadata !985}
!987 = metadata !{i32 978, i32 0, metadata !527, metadata !985}
!988 = metadata !{i32 980, i32 0, metadata !527, metadata !985}
!989 = metadata !{i32 786688, metadata !527, metadata !"sptr", metadata !21, i32 976, metadata !38, i32 0, metadata !985} ; [ DW_TAG_auto_variable ] [sptr] [line 976]
!990 = metadata !{i32 981, i32 0, metadata !527, metadata !985}
!991 = metadata !{i32 983, i32 0, metadata !527, metadata !985}
!992 = metadata !{i32 984, i32 0, metadata !527, metadata !985}
!993 = metadata !{i32 986, i32 0, metadata !527, metadata !985}
!994 = metadata !{i32 988, i32 0, metadata !527, metadata !985}
!995 = metadata !{i32 989, i32 0, metadata !527, metadata !985}
!996 = metadata !{i32 786689, metadata !519, metadata !"V", metadata !21, i32 16777848, metadata !482, i32 0, metadata !997} ; [ DW_TAG_arg_variable ] [V] [line 632]
!997 = metadata !{i32 1109, i32 0, metadata !862, null}
!998 = metadata !{i32 632, i32 0, metadata !519, metadata !997}
!999 = metadata !{i32 636, i32 0, metadata !519, metadata !997}
!1000 = metadata !{i32 637, i32 0, metadata !1001, metadata !997}
!1001 = metadata !{i32 786443, metadata !1, metadata !519, i32 636, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1002 = metadata !{i32 639, i32 0, metadata !519, metadata !997}
!1003 = metadata !{i32 640, i32 0, metadata !519, metadata !997}
!1004 = metadata !{i32 642, i32 0, metadata !519, metadata !997}
!1005 = metadata !{i32 786688, metadata !519, metadata !"sptr", metadata !21, i32 634, metadata !38, i32 0, metadata !997} ; [ DW_TAG_auto_variable ] [sptr] [line 634]
!1006 = metadata !{i32 644, i32 0, metadata !1007, metadata !997}
!1007 = metadata !{i32 786443, metadata !1, metadata !519, i32 643, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1008 = metadata !{i32 645, i32 0, metadata !1007, metadata !997}
!1009 = metadata !{i32 646, i32 0, metadata !1007, metadata !997}
!1010 = metadata !{i32 648, i32 0, metadata !1011, metadata !997}
!1011 = metadata !{i32 786443, metadata !1, metadata !519, i32 647, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1012 = metadata !{i32 649, i32 0, metadata !1011, metadata !997}
!1013 = metadata !{i32 650, i32 0, metadata !1011, metadata !997}
!1014 = metadata !{i32 651, i32 0, metadata !1011, metadata !997}
!1015 = metadata !{i32 653, i32 0, metadata !1016, metadata !997}
!1016 = metadata !{i32 786443, metadata !1, metadata !1011, i32 652, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1017 = metadata !{i32 654, i32 0, metadata !1016, metadata !997}
!1018 = metadata !{i32 656, i32 0, metadata !519, metadata !997}
!1019 = metadata !{i32 657, i32 0, metadata !519, metadata !997}
!1020 = metadata !{i32 659, i32 0, metadata !519, metadata !997}
!1021 = metadata !{i32 663, i32 0, metadata !519, metadata !997}
!1022 = metadata !{i32 664, i32 0, metadata !519, metadata !997}
!1023 = metadata !{i32 665, i32 0, metadata !519, metadata !997}
!1024 = metadata !{i32 666, i32 0, metadata !519, metadata !997}
!1025 = metadata !{i32 670, i32 0, metadata !519, metadata !997}
!1026 = metadata !{i32 671, i32 0, metadata !1027, metadata !997}
!1027 = metadata !{i32 786443, metadata !1, metadata !519, i32 670, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1028 = metadata !{i32 786689, metadata !498, metadata !"V", metadata !21, i32 16778037, metadata !482, i32 0, metadata !1029} ; [ DW_TAG_arg_variable ] [V] [line 821]
!1029 = metadata !{i32 1110, i32 0, metadata !862, null}
!1030 = metadata !{i32 821, i32 0, metadata !498, metadata !1029}
!1031 = metadata !{i32 786688, metadata !498, metadata !"binary", metadata !21, i32 823, metadata !36, i32 0, metadata !1029} ; [ DW_TAG_auto_variable ] [binary] [line 823]
!1032 = metadata !{i32 823, i32 0, metadata !498, metadata !1029}
!1033 = metadata !{i32 786688, metadata !498, metadata !"blen", metadata !21, i32 824, metadata !36, i32 0, metadata !1029} ; [ DW_TAG_auto_variable ] [blen] [line 824]
!1034 = metadata !{i32 824, i32 0, metadata !498, metadata !1029}
!1035 = metadata !{i32 827, i32 0, metadata !498, metadata !1029}
!1036 = metadata !{i32 1}
!1037 = metadata !{i32 829, i32 0, metadata !1038, metadata !1029}
!1038 = metadata !{i32 786443, metadata !1, metadata !498, i32 828, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1039 = metadata !{i32 830, i32 0, metadata !1038, metadata !1029}
!1040 = metadata !{i32 831, i32 0, metadata !1038, metadata !1029}
!1041 = metadata !{i32 832, i32 0, metadata !1038, metadata !1029}
!1042 = metadata !{i32 833, i32 0, metadata !498, metadata !1029}
!1043 = metadata !{i32 834, i32 0, metadata !498, metadata !1029}
!1044 = metadata !{i32 836, i32 0, metadata !498, metadata !1029}
!1045 = metadata !{i32 839, i32 0, metadata !498, metadata !1029}
!1046 = metadata !{i32 840, i32 0, metadata !498, metadata !1029}
!1047 = metadata !{i32 842, i32 0, metadata !498, metadata !1029}
!1048 = metadata !{i32 844, i32 0, metadata !1049, metadata !1029}
!1049 = metadata !{i32 786443, metadata !1, metadata !498, i32 842, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1050 = metadata !{i32 850, i32 0, metadata !1049, metadata !1029}
!1051 = metadata !{i32 845, i32 0, metadata !1052, metadata !1029}
!1052 = metadata !{i32 786443, metadata !1, metadata !1049, i32 844, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1053 = metadata !{i32 846, i32 0, metadata !1052, metadata !1029}
!1054 = metadata !{i32 847, i32 0, metadata !1052, metadata !1029}
!1055 = metadata !{i32 851, i32 0, metadata !1049, metadata !1029}
!1056 = metadata !{i32 852, i32 0, metadata !1049, metadata !1029}
!1057 = metadata !{i32 854, i32 0, metadata !1049, metadata !1029}
!1058 = metadata !{i32 855, i32 0, metadata !1049, metadata !1029}
!1059 = metadata !{i32 856, i32 0, metadata !498, metadata !1029}
!1060 = metadata !{i32 858, i32 0, metadata !498, metadata !1029}
!1061 = metadata !{i32 859, i32 0, metadata !498, metadata !1029}
!1062 = metadata !{i32 1115, i32 0, metadata !861, null}
!1063 = metadata !{i32 786689, metadata !479, metadata !"V", metadata !21, i32 16778209, metadata !482, i32 0, metadata !1062} ; [ DW_TAG_arg_variable ] [V] [line 993]
!1064 = metadata !{i32 993, i32 0, metadata !479, metadata !1062}
!1065 = metadata !{i32 999, i32 0, metadata !479, metadata !1062}
!1066 = metadata !{i32 1003, i32 0, metadata !479, metadata !1062}
!1067 = metadata !{i32 786688, metadata !479, metadata !"si", metadata !21, i32 995, metadata !38, i32 0, metadata !1062} ; [ DW_TAG_auto_variable ] [si] [line 995]
!1068 = metadata !{i32 1004, i32 0, metadata !479, metadata !1062}
!1069 = metadata !{i32 1006, i32 0, metadata !479, metadata !1062}
!1070 = metadata !{i32 786688, metadata !479, metadata !"sptr", metadata !21, i32 996, metadata !38, i32 0, metadata !1062} ; [ DW_TAG_auto_variable ] [sptr] [line 996]
!1071 = metadata !{i32 1007, i32 0, metadata !479, metadata !1062}
!1072 = metadata !{i32 1010, i32 0, metadata !1073, metadata !1062}
!1073 = metadata !{i32 786443, metadata !1, metadata !479, i32 1009, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1074 = metadata !{i32 786688, metadata !479, metadata !"done", metadata !21, i32 997, metadata !36, i32 0, metadata !1062} ; [ DW_TAG_auto_variable ] [done] [line 997]
!1075 = metadata !{i32 1011, i32 0, metadata !1073, metadata !1062}
!1076 = metadata !{i32 1012, i32 0, metadata !1073, metadata !1062}
!1077 = metadata !{i32 1116, i32 0, metadata !861, null}
!1078 = metadata !{i32 1117, i32 0, metadata !862, null}
!1079 = metadata !{i32 1122, i32 0, metadata !862, null}
!1080 = metadata !{i32 1123, i32 0, metadata !862, null}
!1081 = metadata !{i32 1124, i32 0, metadata !862, null}
!1082 = metadata !{i32 1126, i32 0, metadata !847, null}
!1083 = metadata !{i32 1127, i32 0, metadata !847, null}
!1084 = metadata !{i32 1132, i32 0, metadata !333, null}
!1085 = metadata !{i32 1133, i32 0, metadata !333, null}
!1086 = metadata !{i32 1134, i32 0, metadata !333, null}
!1087 = metadata !{i32 1135, i32 0, metadata !333, null}
!1088 = metadata !{i32 1167, i32 0, metadata !342, null}
!1089 = metadata !{i32 1169, i32 0, metadata !342, null}
!1090 = metadata !{i32 1170, i32 0, metadata !342, null}
!1091 = metadata !{i32 1171, i32 0, metadata !342, null}
!1092 = metadata !{i32 1173, i32 0, metadata !342, null}
!1093 = metadata !{i8* null}
!1094 = metadata !{i32 1176, i32 0, metadata !342, null}
!1095 = metadata !{i32 1177, i32 0, metadata !342, null}
!1096 = metadata !{i32 1178, i32 0, metadata !342, null}
!1097 = metadata !{i32 1179, i32 0, metadata !342, null}
!1098 = metadata !{i32 1180, i32 0, metadata !342, null}
!1099 = metadata !{i32 1186, i32 0, metadata !1100, null}
!1100 = metadata !{i32 786443, metadata !1, metadata !342, i32 1181, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1101 = metadata !{i32 1182, i32 0, metadata !1100, null}
!1102 = metadata !{i32 1188, i32 0, metadata !1103, null}
!1103 = metadata !{i32 786443, metadata !1, metadata !1100, i32 1187, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1104 = metadata !{i32 1191, i32 0, metadata !1103, null}
!1105 = metadata !{i32 1194, i32 0, metadata !1103, null}
!1106 = metadata !{i32 1195, i32 0, metadata !1103, null}
!1107 = metadata !{i32 1198, i32 0, metadata !1103, null}
!1108 = metadata !{i32 1201, i32 0, metadata !1103, null}
!1109 = metadata !{i32 1202, i32 0, metadata !1103, null}
!1110 = metadata !{i32 1205, i32 0, metadata !1103, null}
!1111 = metadata !{i32 1206, i32 0, metadata !1103, null}
!1112 = metadata !{i32 1210, i32 0, metadata !1103, null}
!1113 = metadata !{i32 1211, i32 0, metadata !1103, null}
!1114 = metadata !{i32 1212, i32 0, metadata !1103, null}
!1115 = metadata !{i32 1213, i32 0, metadata !1103, null}
!1116 = metadata !{i32 1214, i32 0, metadata !1103, null}
!1117 = metadata !{i32 1215, i32 0, metadata !1103, null}
!1118 = metadata !{i32 1216, i32 0, metadata !1119, null}
!1119 = metadata !{i32 786443, metadata !1, metadata !1103, i32 1216, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1120 = metadata !{i32 106}
!1121 = metadata !{i32 1217, i32 0, metadata !1103, null}
!1122 = metadata !{i32 1218, i32 0, metadata !1103, null}
!1123 = metadata !{i32 1223, i32 0, metadata !1100, null}
!1124 = metadata !{i32 1224, i32 0, metadata !1100, null}
!1125 = metadata !{i32 1225, i32 0, metadata !1100, null}
!1126 = metadata !{i32 1226, i32 0, metadata !1100, null}
!1127 = metadata !{i32 1227, i32 0, metadata !1100, null}
!1128 = metadata !{i32 1228, i32 0, metadata !1100, null}
!1129 = metadata !{i32 1229, i32 0, metadata !1100, null}
!1130 = metadata !{i32 1230, i32 0, metadata !1100, null}
!1131 = metadata !{i32 1231, i32 0, metadata !1100, null}
!1132 = metadata !{i32 1232, i32 0, metadata !1100, null}
!1133 = metadata !{i32 1233, i32 0, metadata !1100, null}
!1134 = metadata !{i32 1236, i32 0, metadata !1100, null}
!1135 = metadata !{i32 1240, i32 0, metadata !1100, null}
!1136 = metadata !{i32 1241, i32 0, metadata !1100, null}
!1137 = metadata !{i32 1242, i32 0, metadata !1100, null}
!1138 = metadata !{i32 1246, i32 0, metadata !1100, null}
!1139 = metadata !{i32 1249, i32 0, metadata !1100, null}
!1140 = metadata !{i32 1252, i32 0, metadata !1100, null}
!1141 = metadata !{i32 1258, i32 0, metadata !1100, null}
!1142 = metadata !{i32 1259, i32 0, metadata !1100, null}
!1143 = metadata !{i32 1260, i32 0, metadata !1100, null}
!1144 = metadata !{i32 1265, i32 0, metadata !1100, null}
!1145 = metadata !{i32 1266, i32 0, metadata !1100, null}
!1146 = metadata !{i32 1271, i32 0, metadata !1100, null}
!1147 = metadata !{i32 1272, i32 0, metadata !1100, null}
!1148 = metadata !{i32 1274, i32 0, metadata !1100, null}
!1149 = metadata !{i32 1275, i32 0, metadata !1100, null}
!1150 = metadata !{i32 1278, i32 0, metadata !342, null}
!1151 = metadata !{i32 1279, i32 0, metadata !342, null}
!1152 = metadata !{i32 1285, i32 0, metadata !342, null}
!1153 = metadata !{i32 1289, i32 0, metadata !342, null}
!1154 = metadata !{i32 1290, i32 0, metadata !342, null}
!1155 = metadata !{i32 1291, i32 0, metadata !342, null}
!1156 = metadata !{i32 1394, i32 0, metadata !380, null}
!1157 = metadata !{i32 1398, i32 0, metadata !380, null}
!1158 = metadata !{i32 1399, i32 0, metadata !380, null}
!1159 = metadata !{i32 1400, i32 0, metadata !380, null}
!1160 = metadata !{i32 1401, i32 0, metadata !380, null}
!1161 = metadata !{i32 1402, i32 0, metadata !380, null}
!1162 = metadata !{i32 1403, i32 0, metadata !380, null}
!1163 = metadata !{i32 1407, i32 0, metadata !1164, null}
!1164 = metadata !{i32 786443, metadata !1, metadata !380, i32 1407, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1165 = metadata !{i32 1409, i32 0, metadata !1166, null}
!1166 = metadata !{i32 786443, metadata !1, metadata !1164, i32 1408, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1167 = metadata !{i32 1410, i32 0, metadata !1166, null}
!1168 = metadata !{i32 1412, i32 0, metadata !1169, null}
!1169 = metadata !{i32 786443, metadata !1, metadata !1166, i32 1411, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1170 = metadata !{i32 1413, i32 0, metadata !1169, null}
!1171 = metadata !{i32 1414, i32 0, metadata !1172, null}
!1172 = metadata !{i32 786443, metadata !1, metadata !1169, i32 1413, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1173 = metadata !{i32 1415, i32 0, metadata !1172, null}
!1174 = metadata !{i32 1416, i32 0, metadata !1172, null}
!1175 = metadata !{i32 1418, i32 0, metadata !1169, null}
!1176 = metadata !{i32 1419, i32 0, metadata !1169, null}
!1177 = metadata !{i32 1420, i32 0, metadata !1169, null}
!1178 = metadata !{i32 1421, i32 0, metadata !1169, null}
!1179 = metadata !{i32 1424, i32 0, metadata !380, null}
!1180 = metadata !{i32 1425, i32 0, metadata !380, null}
!1181 = metadata !{i32 1426, i32 0, metadata !380, null}
!1182 = metadata !{i32 1427, i32 0, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !1, metadata !380, i32 1426, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1184 = metadata !{i32 1430, i32 0, metadata !380, null}
!1185 = metadata !{i32 1304, i32 0, metadata !356, null}
!1186 = metadata !{i32 1311, i32 0, metadata !1187, null}
!1187 = metadata !{i32 786443, metadata !1, metadata !356, i32 1311, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1188 = metadata !{i32 1313, i32 0, metadata !1189, null}
!1189 = metadata !{i32 786443, metadata !1, metadata !1187, i32 1312, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1190 = metadata !{i32 1314, i32 0, metadata !1189, null}
!1191 = metadata !{i32 3}
!1192 = metadata !{i32 1316, i32 0, metadata !1193, null}
!1193 = metadata !{i32 786443, metadata !1, metadata !1189, i32 1316, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1194 = metadata !{i32 1318, i32 0, metadata !1195, null}
!1195 = metadata !{i32 786443, metadata !1, metadata !1193, i32 1317, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1196 = metadata !{i32 1319, i32 0, metadata !1197, null}
!1197 = metadata !{i32 786443, metadata !1, metadata !1195, i32 1318, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1198 = metadata !{i32 1320, i32 0, metadata !1197, null}
!1199 = metadata !{i32 1321, i32 0, metadata !1197, null}
!1200 = metadata !{i32 1322, i32 0, metadata !1197, null}
!1201 = metadata !{i32 1324, i32 0, metadata !1195, null}
!1202 = metadata !{i32 1327, i32 0, metadata !356, null}
!1203 = metadata !{i32 1328, i32 0, metadata !356, null}
!1204 = metadata !{i32 1347, i32 0, metadata !366, null}
!1205 = metadata !{i32 1350, i32 0, metadata !366, null}
!1206 = metadata !{i32 1352, i32 0, metadata !1207, null}
!1207 = metadata !{i32 786443, metadata !1, metadata !366, i32 1352, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1208 = metadata !{i32 1353, i32 0, metadata !1207, null}
!1209 = metadata !{i32 1354, i32 0, metadata !366, null}
!1210 = metadata !{i32 1373, i32 0, metadata !372, null}
!1211 = metadata !{i32 1375, i32 0, metadata !372, null}
!1212 = metadata !{i32 1378, i32 0, metadata !1213, null}
!1213 = metadata !{i32 786443, metadata !1, metadata !372, i32 1378, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1214 = metadata !{i32 1379, i32 0, metadata !1213, null}
!1215 = metadata !{i32 1380, i32 0, metadata !372, null}
!1216 = metadata !{i32 1449, i32 0, metadata !393, null}
!1217 = metadata !{i32 1452, i32 0, metadata !393, null}
!1218 = metadata !{i32 1453, i32 0, metadata !393, null}
!1219 = metadata !{i32 1454, i32 0, metadata !393, null}
!1220 = metadata !{i32 1455, i32 0, metadata !393, null}
!1221 = metadata !{i32 1457, i32 0, metadata !1222, null}
!1222 = metadata !{i32 786443, metadata !1, metadata !393, i32 1457, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1223 = metadata !{i32 1458, i32 0, metadata !1222, null}
!1224 = metadata !{i32 1459, i32 0, metadata !1225, null}
!1225 = metadata !{i32 786443, metadata !1, metadata !1222, i32 1458, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1226 = metadata !{i32 1460, i32 0, metadata !1225, null}
!1227 = metadata !{i32 1461, i32 0, metadata !1225, null}
!1228 = metadata !{i32 1462, i32 0, metadata !1225, null}
!1229 = metadata !{i32 1463, i32 0, metadata !1225, null}
!1230 = metadata !{i32 1467, i32 0, metadata !393, null}
!1231 = metadata !{i32 1468, i32 0, metadata !393, null}
!1232 = metadata !{i32 1469, i32 0, metadata !393, null}
!1233 = metadata !{i32 1470, i32 0, metadata !393, null}
!1234 = metadata !{i32 1474, i32 0, metadata !393, null}
!1235 = metadata !{i32 1475, i32 0, metadata !393, null}
!1236 = metadata !{i32 1495, i32 0, metadata !402, null}
!1237 = metadata !{i32 1497, i32 0, metadata !402, null}
!1238 = metadata !{i32 1501, i32 0, metadata !402, null}
!1239 = metadata !{i32 1502, i32 0, metadata !402, null}
!1240 = metadata !{i32 1503, i32 0, metadata !402, null}
!1241 = metadata !{i32 1504, i32 0, metadata !1242, null}
!1242 = metadata !{i32 786443, metadata !1, metadata !402, i32 1504, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1243 = metadata !{i32 1506, i32 0, metadata !1244, null}
!1244 = metadata !{i32 786443, metadata !1, metadata !1242, i32 1505, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1245 = metadata !{i32 1507, i32 0, metadata !1244, null}
!1246 = metadata !{i32 1509, i32 0, metadata !402, null}
!1247 = metadata !{i32 1512, i32 0, metadata !416, null}
!1248 = metadata !{i32 1514, i32 0, metadata !416, null}
!1249 = metadata !{i32 1515, i32 0, metadata !416, null}
!1250 = metadata !{i32 50}
!1251 = metadata !{i32 1517, i32 0, metadata !416, null}
!1252 = metadata !{i32 1518, i32 0, metadata !416, null}
!1253 = metadata !{i32 1519, i32 0, metadata !416, null}
!1254 = metadata !{i32 1520, i32 0, metadata !416, null}
!1255 = metadata !{i32 1525, i32 0, metadata !416, null}
!1256 = metadata !{i32 1526, i32 0, metadata !416, null}
!1257 = metadata !{i32 1527, i32 0, metadata !416, null}
!1258 = metadata !{i32 1529, i32 0, metadata !416, null}
!1259 = metadata !{i32 1530, i32 0, metadata !416, null}
!1260 = metadata !{i32 1533, i32 0, metadata !416, null}
!1261 = metadata !{i32 1534, i32 0, metadata !416, null}
!1262 = metadata !{i32 1535, i32 0, metadata !416, null}
!1263 = metadata !{i32 1537, i32 0, metadata !416, null}
!1264 = metadata !{i32 1539, i32 0, metadata !1265, null}
!1265 = metadata !{i32 786443, metadata !1, metadata !416, i32 1537, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1266 = metadata !{i32 1540, i32 0, metadata !1265, null}
!1267 = metadata !{i32 1543, i32 0, metadata !1265, null}
!1268 = metadata !{i32 1545, i32 0, metadata !1265, null}
!1269 = metadata !{i32 1547, i32 0, metadata !1265, null}
!1270 = metadata !{i32 1549, i32 0, metadata !1265, null}
!1271 = metadata !{i32 1551, i32 0, metadata !1265, null}
!1272 = metadata !{i32 11}
!1273 = metadata !{i32 1552, i32 0, metadata !1265, null}
!1274 = metadata !{i32 1553, i32 0, metadata !1265, null}
!1275 = metadata !{i32 1554, i32 0, metadata !1265, null}
!1276 = metadata !{i32 1555, i32 0, metadata !1265, null}
!1277 = metadata !{i32 1558, i32 0, metadata !1265, null}
!1278 = metadata !{i32 1559, i32 0, metadata !1265, null}
!1279 = metadata !{i32 1560, i32 0, metadata !1265, null}
!1280 = metadata !{i32 1563, i32 0, metadata !1265, null}
!1281 = metadata !{i32 1565, i32 0, metadata !1265, null}
!1282 = metadata !{i32 1567, i32 0, metadata !1265, null}
!1283 = metadata !{i32 1569, i32 0, metadata !1265, null}
!1284 = metadata !{i32 1571, i32 0, metadata !1265, null}
!1285 = metadata !{i32 1572, i32 0, metadata !1265, null}
!1286 = metadata !{i32 2}
!1287 = metadata !{i32 1573, i32 0, metadata !1265, null}
!1288 = metadata !{i32 1574, i32 0, metadata !1265, null}
!1289 = metadata !{i32 30}
!1290 = metadata !{i32 1575, i32 0, metadata !1265, null}
!1291 = metadata !{i32 1576, i32 0, metadata !1265, null}
!1292 = metadata !{i32 1577, i32 0, metadata !1265, null}
!1293 = metadata !{i32 1580, i32 0, metadata !1265, null}
!1294 = metadata !{i32 1581, i32 0, metadata !1265, null}
!1295 = metadata !{i32 1582, i32 0, metadata !1265, null}
!1296 = metadata !{i32 1588, i32 0, metadata !1265, null}
!1297 = metadata !{i32 1589, i32 0, metadata !1265, null}
!1298 = metadata !{i32 1590, i32 0, metadata !1265, null}
!1299 = metadata !{i32 1592, i32 0, metadata !1300, null}
!1300 = metadata !{i32 786443, metadata !1, metadata !1265, i32 1591, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1301 = metadata !{i32 1593, i32 0, metadata !1300, null}
!1302 = metadata !{i32 1594, i32 0, metadata !1300, null}
!1303 = metadata !{i32 1596, i32 0, metadata !1265, null}
!1304 = metadata !{i32 1597, i32 0, metadata !1265, null}
!1305 = metadata !{i32 1598, i32 0, metadata !1265, null}
!1306 = metadata !{i32 1599, i32 0, metadata !1265, null}
!1307 = metadata !{i32 1602, i32 0, metadata !1265, null}
!1308 = metadata !{i32 1604, i32 0, metadata !1265, null}
!1309 = metadata !{i32 1606, i32 0, metadata !1265, null}
!1310 = metadata !{i32 1608, i32 0, metadata !1265, null}
!1311 = metadata !{i32 1609, i32 0, metadata !1265, null}
!1312 = metadata !{i32 5}
!1313 = metadata !{i32 1610, i32 0, metadata !1265, null}
!1314 = metadata !{i32 1611, i32 0, metadata !1265, null}
!1315 = metadata !{i32 1612, i32 0, metadata !1265, null}
!1316 = metadata !{i32 1615, i32 0, metadata !1265, null}
!1317 = metadata !{i32 1616, i32 0, metadata !1265, null}
!1318 = metadata !{i32 1617, i32 0, metadata !1265, null}
!1319 = metadata !{i32 1618, i32 0, metadata !1265, null}
!1320 = metadata !{i32 1619, i32 0, metadata !1265, null}
!1321 = metadata !{i32 1620, i32 0, metadata !1265, null}
!1322 = metadata !{i32 1622, i32 0, metadata !1265, null}
!1323 = metadata !{i32 1623, i32 0, metadata !1265, null}
!1324 = metadata !{i32 1624, i32 0, metadata !1265, null}
!1325 = metadata !{i32 1625, i32 0, metadata !1265, null}
!1326 = metadata !{i32 1628, i32 0, metadata !1265, null}
!1327 = metadata !{i32 1629, i32 0, metadata !1265, null}
!1328 = metadata !{i32 1631, i32 0, metadata !1265, null}
!1329 = metadata !{i32 1632, i32 0, metadata !1265, null}
!1330 = metadata !{i32 1638, i32 0, metadata !1265, null}
!1331 = metadata !{i32 1641, i32 0, metadata !1265, null}
!1332 = metadata !{i32 1644, i32 0, metadata !1265, null}
!1333 = metadata !{i32 1645, i32 0, metadata !1265, null}
!1334 = metadata !{i32 1658, i32 0, metadata !416, null}
!1335 = metadata !{i32 1653, i32 0, metadata !1265, null}
!1336 = metadata !{i32 1655, i32 0, metadata !1265, null}
!1337 = metadata !{i32 1669, i32 0, metadata !1338, null}
!1338 = metadata !{i32 786443, metadata !1, metadata !1339, i32 1663, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1339 = metadata !{i32 786443, metadata !1, metadata !416, i32 1663, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1340 = metadata !{i32 1672, i32 0, metadata !1338, null}
!1341 = metadata !{i32 1667, i32 0, metadata !1342, null}
!1342 = metadata !{i32 786443, metadata !1, metadata !1343, i32 1667, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1343 = metadata !{i32 786443, metadata !1, metadata !1338, i32 1665, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1344 = metadata !{i32 1678, i32 0, metadata !1345, null}
!1345 = metadata !{i32 786443, metadata !1, metadata !1338, i32 1675, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1346 = metadata !{i32 1663, i32 0, metadata !1339, null}
!1347 = metadata !{i32 1664, i32 0, metadata !1338, null}
!1348 = metadata !{i32 1665, i32 0, metadata !1338, null}
!1349 = metadata !{i32 1666, i32 0, metadata !1343, null}
!1350 = metadata !{i32 1670, i32 0, metadata !1351, null}
!1351 = metadata !{i32 786443, metadata !1, metadata !1338, i32 1670, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1352 = metadata !{i32 1671, i32 0, metadata !1338, null}
!1353 = metadata !{i32 1673, i32 0, metadata !1338, null}
!1354 = metadata !{i32 1675, i32 0, metadata !1338, null}
!1355 = metadata !{i32 1674, i32 0, metadata !1338, null}
!1356 = metadata !{i32 1676, i32 0, metadata !1345, null}
!1357 = metadata !{i32 1677, i32 0, metadata !1345, null}
!1358 = metadata !{i32 1680, i32 0, metadata !1359, null}
!1359 = metadata !{i32 786443, metadata !1, metadata !1345, i32 1679, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1360 = metadata !{i32 1681, i32 0, metadata !1359, null}
!1361 = metadata !{i32 1682, i32 0, metadata !1362, null}
!1362 = metadata !{i32 786443, metadata !1, metadata !1359, i32 1682, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1363 = metadata !{i32 1683, i32 0, metadata !1359, null}
!1364 = metadata !{i32 1684, i32 0, metadata !1359, null}
!1365 = metadata !{i32 1688, i32 0, metadata !1366, null}
!1366 = metadata !{i32 786443, metadata !1, metadata !1345, i32 1687, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1367 = metadata !{i32 1689, i32 0, metadata !1366, null}
!1368 = metadata !{i32 1691, i32 0, metadata !1345, null}
!1369 = metadata !{i32 1692, i32 0, metadata !1345, null}
!1370 = metadata !{i32 1693, i32 0, metadata !1345, null}
!1371 = metadata !{i32 1696, i32 0, metadata !416, null}
!1372 = metadata !{i32 1717, i32 0, metadata !447, null}
!1373 = metadata !{i32 1718, i32 0, metadata !447, null}
!1374 = metadata !{i32 1719, i32 0, metadata !447, null}
!1375 = metadata !{i32 1720, i32 0, metadata !447, null}
!1376 = metadata !{i32 1721, i32 0, metadata !447, null}
!1377 = metadata !{i32 1730, i32 0, metadata !447, null}
!1378 = metadata !{i32 16}
!1379 = metadata !{i32 1731, i32 0, metadata !447, null}
!1380 = metadata !{i32 1732, i32 0, metadata !447, null}
!1381 = metadata !{i32 1733, i32 0, metadata !447, null}
!1382 = metadata !{i32 786689, metadata !20, metadata !"filename", metadata !21, i32 16777303, metadata !38, i32 0, metadata !1383} ; [ DW_TAG_arg_variable ] [filename] [line 87]
!1383 = metadata !{i32 1734, i32 0, metadata !447, null}
!1384 = metadata !{i32 87, i32 0, metadata !20, metadata !1383}
!1385 = metadata !{i32 786689, metadata !20, metadata !"format", metadata !21, i32 33554519, metadata !36, i32 0, metadata !1383} ; [ DW_TAG_arg_variable ] [format] [line 87]
!1386 = metadata !{i32 786689, metadata !20, metadata !"env", metadata !21, i32 50331735, metadata !38, i32 0, metadata !1383} ; [ DW_TAG_arg_variable ] [env] [line 87]
!1387 = metadata !{i32 89, i32 0, metadata !20, metadata !1383}
!1388 = metadata !{i32 1742, i32 0, metadata !1389, null}
!1389 = metadata !{i32 786443, metadata !1, metadata !1390, i32 1740, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1390 = metadata !{i32 786443, metadata !1, metadata !447, i32 1737, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1391 = metadata !{i32 1743, i32 0, metadata !1389, null}
!1392 = metadata !{i32 1736, i32 0, metadata !447, null}
!1393 = metadata !{i32 1739, i32 0, metadata !1390, null}
!1394 = metadata !{i32 1738, i32 0, metadata !1390, null}
!1395 = metadata !{i32 1744, i32 0, metadata !1389, null}
!1396 = metadata !{i32 1746, i32 0, metadata !447, null}
!1397 = metadata !{i32 1748, i32 0, metadata !447, null}
!1398 = metadata !{i32 1749, i32 0, metadata !447, null}
!1399 = metadata !{i32 1750, i32 0, metadata !447, null}
!1400 = metadata !{i32 1751, i32 0, metadata !447, null}
!1401 = metadata !{i32 1769, i32 0, metadata !462, null}
!1402 = metadata !{i32 1772, i32 0, metadata !462, null}
!1403 = metadata !{i32 1774, i32 0, metadata !462, null}
!1404 = metadata !{i32 1775, i32 0, metadata !462, null}
!1405 = metadata !{i32 1776, i32 0, metadata !462, null}
!1406 = metadata !{i32 1778, i32 0, metadata !462, null}
!1407 = metadata !{i32 1779, i32 0, metadata !462, null}
!1408 = metadata !{i32 1780, i32 0, metadata !462, null}
!1409 = metadata !{i32 1781, i32 0, metadata !462, null}
!1410 = metadata !{i32 1782, i32 0, metadata !462, null}
!1411 = metadata !{i32 1783, i32 0, metadata !462, null}
!1412 = metadata !{i32 1784, i32 0, metadata !462, null}
!1413 = metadata !{i32 1785, i32 0, metadata !462, null}
!1414 = metadata !{i32 1786, i32 0, metadata !462, null}
!1415 = metadata !{i32 1787, i32 0, metadata !462, null}
!1416 = metadata !{i32 1788, i32 0, metadata !462, null}
!1417 = metadata !{i32 1789, i32 0, metadata !462, null}
!1418 = metadata !{i32 1790, i32 0, metadata !462, null}
!1419 = metadata !{i32 1791, i32 0, metadata !462, null}
!1420 = metadata !{i32 1792, i32 0, metadata !462, null}
!1421 = metadata !{i32 1793, i32 0, metadata !462, null}
!1422 = metadata !{i32 1794, i32 0, metadata !462, null}
!1423 = metadata !{i32 1795, i32 0, metadata !462, null}
!1424 = metadata !{i32 1796, i32 0, metadata !462, null}
!1425 = metadata !{i32 107}
!1426 = metadata !{i32 1798, i32 0, metadata !462, null}
!1427 = metadata !{i32 1799, i32 0, metadata !462, null}
!1428 = metadata !{i32 1800, i32 0, metadata !462, null}
!1429 = metadata !{i32 1802, i32 0, metadata !467, null}
!1430 = metadata !{i32 1804, i32 0, metadata !467, null}
!1431 = metadata !{i32 1806, i32 0, metadata !1432, null}
!1432 = metadata !{i32 786443, metadata !1, metadata !467, i32 1804, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1433 = metadata !{i32 1807, i32 0, metadata !1432, null}
!1434 = metadata !{i32 1808, i32 0, metadata !1432, null}
!1435 = metadata !{i32 1809, i32 0, metadata !1432, null}
!1436 = metadata !{i32 1810, i32 0, metadata !1432, null}
!1437 = metadata !{i32 1811, i32 0, metadata !1432, null}
!1438 = metadata !{i32 1812, i32 0, metadata !1432, null}
!1439 = metadata !{i32 1813, i32 0, metadata !1432, null}
!1440 = metadata !{i32 1814, i32 0, metadata !1432, null}
!1441 = metadata !{i32 1815, i32 0, metadata !1432, null}
!1442 = metadata !{i32 1816, i32 0, metadata !1432, null}
!1443 = metadata !{i32 1817, i32 0, metadata !1432, null}
!1444 = metadata !{i32 1818, i32 0, metadata !1432, null}
!1445 = metadata !{i32 1819, i32 0, metadata !1432, null}
!1446 = metadata !{i32 1820, i32 0, metadata !1432, null}
!1447 = metadata !{i32 1821, i32 0, metadata !1432, null}
!1448 = metadata !{i32 1822, i32 0, metadata !1432, null}
!1449 = metadata !{i32 1823, i32 0, metadata !1432, null}
!1450 = metadata !{i32 1824, i32 0, metadata !1432, null}
!1451 = metadata !{i32 1826, i32 0, metadata !1432, null}
!1452 = metadata !{i32 1829, i32 0, metadata !467, null}
!1453 = metadata !{i32 1852, i32 0, metadata !472, null}
!1454 = metadata !{i32 1857, i32 0, metadata !472, null}
!1455 = metadata !{i32 1859, i32 0, metadata !1456, null}
!1456 = metadata !{i32 786443, metadata !1, metadata !472, i32 1859, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1457 = metadata !{i32 1862, i32 0, metadata !1458, null}
!1458 = metadata !{i32 786443, metadata !1, metadata !1456, i32 1860, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1459 = metadata !{i32 1869, i32 0, metadata !1458, null}
!1460 = metadata !{i32 1875, i32 0, metadata !1458, null}
!1461 = metadata !{i32 1881, i32 0, metadata !1458, null}
!1462 = metadata !{i32 1876, i32 0, metadata !1463, null}
!1463 = metadata !{i32 786443, metadata !1, metadata !1458, i32 1875, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1464 = metadata !{i32 1861, i32 0, metadata !1458, null}
!1465 = metadata !{i32 1865, i32 0, metadata !1458, null}
!1466 = metadata !{i32 1867, i32 0, metadata !1458, null}
!1467 = metadata !{i32 1870, i32 0, metadata !1468, null}
!1468 = metadata !{i32 786443, metadata !1, metadata !1458, i32 1869, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1469 = metadata !{i32 1872, i32 0, metadata !1468, null}
!1470 = metadata !{i32 1873, i32 0, metadata !1468, null}
!1471 = metadata !{i32 1878, i32 0, metadata !1463, null}
!1472 = metadata !{i32 1879, i32 0, metadata !1463, null}
!1473 = metadata !{i32 1882, i32 0, metadata !1458, null}
!1474 = metadata !{i32 1884, i32 0, metadata !472, null}
!1475 = metadata !{i32 509, i32 0, metadata !488, null}
!1476 = metadata !{i32 516, i32 0, metadata !488, null}
!1477 = metadata !{i32 550, i32 0, metadata !1478, null}
!1478 = metadata !{i32 786443, metadata !1, metadata !488, i32 547, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1479 = metadata !{i32 551, i32 0, metadata !1480, null}
!1480 = metadata !{i32 786443, metadata !1, metadata !1478, i32 550, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1481 = metadata !{i32 522, i32 0, metadata !1482, null}
!1482 = metadata !{i32 786443, metadata !1, metadata !488, i32 517, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1483 = metadata !{i32 536, i32 0, metadata !1482, null}
!1484 = metadata !{i32 523, i32 0, metadata !1485, null}
!1485 = metadata !{i32 786443, metadata !1, metadata !1482, i32 522, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1486 = metadata !{i32 524, i32 0, metadata !1485, null}
!1487 = metadata !{i32 532, i32 0, metadata !1485, null}
!1488 = metadata !{i32 534, i32 0, metadata !1485, null}
!1489 = metadata !{i32 537, i32 0, metadata !1482, null}
!1490 = metadata !{i32 538, i32 0, metadata !1491, null}
!1491 = metadata !{i32 786443, metadata !1, metadata !1482, i32 537, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1492 = metadata !{i32 539, i32 0, metadata !1493, null}
!1493 = metadata !{i32 786443, metadata !1, metadata !1491, i32 538, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1494 = metadata !{i32 540, i32 0, metadata !1493, null}
!1495 = metadata !{i32 541, i32 0, metadata !1493, null}
!1496 = metadata !{i32 542, i32 0, metadata !1491, null}
!1497 = metadata !{i32 544, i32 0, metadata !1482, null}
!1498 = metadata !{i32 545, i32 0, metadata !1482, null}
!1499 = metadata !{i32 554, i32 0, metadata !1480, null}
!1500 = metadata !{i32 556, i32 0, metadata !1478, null}
!1501 = metadata !{i32 557, i32 0, metadata !1478, null}
!1502 = metadata !{i32 573, i32 0, metadata !1478, null}
!1503 = metadata !{i32 574, i32 0, metadata !1504, null}
!1504 = metadata !{i32 786443, metadata !1, metadata !1478, i32 573, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1505 = metadata !{i32 575, i32 0, metadata !1506, null}
!1506 = metadata !{i32 786443, metadata !1, metadata !1504, i32 574, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1507 = metadata !{i32 576, i32 0, metadata !1506, null}
!1508 = metadata !{i32 578, i32 0, metadata !1504, null}
!1509 = metadata !{i32 579, i32 0, metadata !1504, null}
!1510 = metadata !{i32 581, i32 0, metadata !1478, null}
!1511 = metadata !{i32 582, i32 0, metadata !1512, null}
!1512 = metadata !{i32 786443, metadata !1, metadata !1478, i32 581, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1513 = metadata !{i32 583, i32 0, metadata !1514, null}
!1514 = metadata !{i32 786443, metadata !1, metadata !1512, i32 582, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1515 = metadata !{i32 584, i32 0, metadata !1514, null}
!1516 = metadata !{i32 586, i32 0, metadata !1512, null}
!1517 = metadata !{i32 587, i32 0, metadata !1512, null}
!1518 = metadata !{i32 591, i32 0, metadata !488, null}
!1519 = metadata !{i32 594, i32 0, metadata !509, null}
!1520 = metadata !{i32 596, i32 0, metadata !509, null}
!1521 = metadata !{i32 597, i32 0, metadata !509, null}
!1522 = metadata !{i32 599, i32 0, metadata !509, null}
!1523 = metadata !{i32 600, i32 0, metadata !509, null}
!1524 = metadata !{i32 601, i32 0, metadata !509, null}
!1525 = metadata !{i32 602, i32 0, metadata !1526, null}
!1526 = metadata !{i32 786443, metadata !1, metadata !509, i32 601, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1527 = metadata !{i32 603, i32 0, metadata !1526, null}
!1528 = metadata !{i32 604, i32 0, metadata !1526, null}
!1529 = metadata !{i32 604, i32 0, metadata !509, null}
!1530 = metadata !{i32 605, i32 0, metadata !509, null}
!1531 = metadata !{i32 606, i32 0, metadata !509, null}
!1532 = metadata !{i32 611, i32 0, metadata !1533, null}
!1533 = metadata !{i32 786443, metadata !1, metadata !509, i32 608, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sqio.c]
!1534 = metadata !{i32 609, i32 0, metadata !1533, null}
!1535 = metadata !{i32 612, i32 0, metadata !1533, null}
!1536 = metadata !{i32 613, i32 0, metadata !1533, null}
!1537 = metadata !{i32 614, i32 0, metadata !1533, null}
!1538 = metadata !{i32 615, i32 0, metadata !1533, null}
!1539 = metadata !{i32 616, i32 0, metadata !1533, null}
!1540 = metadata !{i32 617, i32 0, metadata !509, null}
!1541 = metadata !{i32 814, i32 0, metadata !503, null}
!1542 = metadata !{i32 816, i32 0, metadata !503, null}
!1543 = metadata !{i32 817, i32 0, metadata !503, null}
!1544 = metadata !{i32 621, i32 0, metadata !523, null}
!1545 = metadata !{i32 623, i32 0, metadata !523, null}
!1546 = metadata !{i32 624, i32 0, metadata !523, null}
!1547 = metadata !{i32 625, i32 0, metadata !523, null}
!1548 = metadata !{i32 628, i32 0, metadata !523, null}
!1549 = metadata !{i32 967, i32 0, metadata !531, null}
!1550 = metadata !{i32 969, i32 0, metadata !531, null}
!1551 = metadata !{i32 970, i32 0, metadata !531, null}
!1552 = metadata !{i32 897, i32 0, metadata !539, null}
!1553 = metadata !{i32 899, i32 0, metadata !539, null}
!1554 = metadata !{i32 908, i32 0, metadata !539, null}
!1555 = metadata !{i32 863, i32 0, metadata !547, null}
!1556 = metadata !{i32 865, i32 0, metadata !547, null}
!1557 = metadata !{i32 866, i32 0, metadata !547, null}
!1558 = metadata !{i32 738, i32 0, metadata !556, null}
!1559 = metadata !{i32 740, i32 0, metadata !556, null}
!1560 = metadata !{i32 741, i32 0, metadata !556, null}
!1561 = metadata !{i32 706, i32 0, metadata !564, null}
!1562 = metadata !{i32 708, i32 0, metadata !564, null}
!1563 = metadata !{i32 709, i32 0, metadata !564, null}
!1564 = metadata !{i32 678, i32 0, metadata !572, null}
!1565 = metadata !{i32 680, i32 0, metadata !572, null}
!1566 = metadata !{i32 681, i32 0, metadata !572, null}
