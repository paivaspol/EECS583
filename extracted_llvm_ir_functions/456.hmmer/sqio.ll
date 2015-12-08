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
@.str141 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str142 = private unnamed_addr constant [64 x i8] c"Can't autodetect sequence file format from a stdin or gzip pipe\00", align 1
@.str143 = private unnamed_addr constant [43 x i8] c"Can't determine format of sequence file %s\00", align 1
@.str144 = private unnamed_addr constant [47 x i8] c"Failed to read any alignment data from file %s\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.ReadSeqVars* @SeqfileOpen(i8* %filename, i32 %format, i8* %env) #0 {
entry:
  %call = tail call fastcc %struct.ReadSeqVars* @seqfile_open(i8* %filename, i32 %format, i8* %env, i32 -1) #7
  ret %struct.ReadSeqVars* %call
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.ReadSeqVars* @seqfile_open(i8* %filename, i32 %format, i8* %env, i32 %ssimode) #0 {
entry:
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str78, i64 0, i64 0), i32 101, i64 176) #8
  %0 = bitcast i8* %call to %struct.ReadSeqVars*
  %ssimode1 = getelementptr inbounds i8* %call, i64 36
  %1 = bitcast i8* %ssimode1 to i32*
  store i32 %ssimode, i32* %1, align 4, !tbaa !0
  %rpl = getelementptr inbounds i8* %call, i64 88
  %2 = bitcast i8* %rpl to i32*
  store i32 -1, i32* %2, align 4, !tbaa !0
  %lastrpl = getelementptr inbounds i8* %call, i64 92
  %3 = bitcast i8* %lastrpl to i32*
  store i32 0, i32* %3, align 4, !tbaa !0
  %maxrpl = getelementptr inbounds i8* %call, i64 96
  %4 = bitcast i8* %maxrpl to i32*
  store i32 0, i32* %4, align 4, !tbaa !0
  %bpl = getelementptr inbounds i8* %call, i64 100
  %5 = bitcast i8* %bpl to i32*
  store i32 -1, i32* %5, align 4, !tbaa !0
  %lastbpl = getelementptr inbounds i8* %call, i64 104
  %6 = bitcast i8* %lastbpl to i32*
  store i32 0, i32* %6, align 4, !tbaa !0
  %maxbpl = getelementptr inbounds i8* %call, i64 108
  %7 = bitcast i8* %maxbpl to i32*
  store i32 0, i32* %7, align 4, !tbaa !0
  %call2 = tail call i32 @strcmp(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0)) #9
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  %f = bitcast i8* %call to %struct._IO_FILE**
  store %struct._IO_FILE* %8, %struct._IO_FILE** %f, align 8, !tbaa !3
  %do_stdin = getelementptr inbounds i8* %call, i64 152
  %9 = bitcast i8* %do_stdin to i32*
  store i32 1, i32* %9, align 4, !tbaa !0
  %do_gzip = getelementptr inbounds i8* %call, i64 148
  %10 = bitcast i8* %do_gzip to i32*
  store i32 0, i32* %10, align 4, !tbaa !0
  %call3 = tail call i8* @sre_strdup(i8* getelementptr inbounds ([8 x i8]* @.str140, i64 0, i64 0), i32 -1) #8
  %fname = getelementptr inbounds i8* %call, i64 8
  %11 = bitcast i8* %fname to i8**
  store i8* %call3, i8** %11, align 8, !tbaa !3
  br label %if.end15

if.else:                                          ; preds = %entry
  %call4 = tail call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str141, i64 0, i64 0)) #8
  %f5 = bitcast i8* %call to %struct._IO_FILE**
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %f5, align 8, !tbaa !3
  %cmp6 = icmp eq %struct._IO_FILE* %call4, null
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %call7 = tail call %struct._IO_FILE* @EnvFileOpen(i8* %filename, i8* %env, i8** null) #8
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %f5, align 8, !tbaa !3
  %cmp9 = icmp eq %struct._IO_FILE* %call7, null
  br i1 %cmp9, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.else
  %do_stdin11 = getelementptr inbounds i8* %call, i64 152
  %12 = bitcast i8* %do_stdin11 to i32*
  store i32 0, i32* %12, align 4, !tbaa !0
  %do_gzip12 = getelementptr inbounds i8* %call, i64 148
  %13 = bitcast i8* %do_gzip12 to i32*
  store i32 0, i32* %13, align 4, !tbaa !0
  %call13 = tail call i8* @sre_strdup(i8* %filename, i32 -1) #8
  %fname14 = getelementptr inbounds i8* %call, i64 8
  %14 = bitcast i8* %fname14 to i8**
  store i8* %call13, i8** %14, align 8, !tbaa !3
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then
  %cmp16 = icmp eq i32 %format, 0
  br i1 %cmp16, label %if.then17, label %if.end29

if.then17:                                        ; preds = %if.end15
  %do_stdin18 = getelementptr inbounds i8* %call, i64 152
  %15 = bitcast i8* %do_stdin18 to i32*
  %16 = load i32* %15, align 4, !tbaa !0
  %cmp19 = icmp eq i32 %16, 1
  br i1 %cmp19, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then17
  %do_gzip20 = getelementptr inbounds i8* %call, i64 148
  %17 = bitcast i8* %do_gzip20 to i32*
  %18 = load i32* %17, align 4, !tbaa !0
  %tobool = icmp eq i32 %18, 0
  br i1 %tobool, label %if.end22, label %if.then21

if.then21:                                        ; preds = %lor.lhs.false, %if.then17
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([64 x i8]* @.str142, i64 0, i64 0)) #8
  br label %if.end22

if.end22:                                         ; preds = %lor.lhs.false, %if.then21
  %f23 = bitcast i8* %call to %struct._IO_FILE**
  %19 = load %struct._IO_FILE** %f23, align 8, !tbaa !3
  %call24 = tail call i32 @SeqfileFormat(%struct._IO_FILE* %19) #7
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end22
  %fname27 = getelementptr inbounds i8* %call, i64 8
  %20 = bitcast i8* %fname27 to i8**
  %21 = load i8** %20, align 8, !tbaa !3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([43 x i8]* @.str143, i64 0, i64 0), i8* %21) #8
  br label %if.end29

if.end29:                                         ; preds = %if.end22, %if.then26, %if.end15
  %format.addr.0 = phi i32 [ 0, %if.then26 ], [ %call24, %if.end22 ], [ %format, %if.end15 ]
  %msa = getelementptr inbounds i8* %call, i64 160
  %22 = bitcast i8* %msa to %struct.msa_struct**
  %afp = getelementptr inbounds i8* %call, i64 168
  %23 = bitcast i8* %afp to %struct.msafile_struct**
  %format30 = getelementptr inbounds i8* %call, i64 144
  %24 = bitcast i8* %format30 to i32*
  call void @llvm.memset.p0i8.i64(i8* %msa, i8 0, i64 16, i32 8, i1 false)
  store i32 %format.addr.0, i32* %24, align 4, !tbaa !0
  %linenumber = getelementptr inbounds i8* %call, i64 16
  %25 = bitcast i8* %linenumber to i32*
  store i32 0, i32* %25, align 4, !tbaa !0
  %buf = getelementptr inbounds i8* %call, i64 24
  %26 = bitcast i8* %buf to i8**
  store i8* null, i8** %26, align 8, !tbaa !3
  %buflen = getelementptr inbounds i8* %call, i64 32
  %27 = bitcast i8* %buflen to i32*
  store i32 0, i32* %27, align 4, !tbaa !0
  %cmp31 = icmp sgt i32 %format.addr.0, 100
  br i1 %cmp31, label %if.then32, label %if.end65

if.then32:                                        ; preds = %if.end29
  %call33 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str78, i64 0, i64 0), i32 190, i64 64) #8
  %28 = bitcast i8* %call33 to %struct.msafile_struct*
  store %struct.msafile_struct* %28, %struct.msafile_struct** %23, align 8, !tbaa !3
  %f35 = bitcast i8* %call to %struct._IO_FILE**
  %29 = load %struct._IO_FILE** %f35, align 8, !tbaa !3
  %f37 = bitcast i8* %call33 to %struct._IO_FILE**
  store %struct._IO_FILE* %29, %struct._IO_FILE** %f37, align 8, !tbaa !3
  %do_stdin38 = getelementptr inbounds i8* %call, i64 152
  %30 = bitcast i8* %do_stdin38 to i32*
  %31 = load i32* %30, align 4, !tbaa !0
  %32 = load %struct.msafile_struct** %23, align 8, !tbaa !3
  %do_stdin40 = getelementptr inbounds %struct.msafile_struct* %32, i64 0, i32 7
  store i32 %31, i32* %do_stdin40, align 4, !tbaa !0
  %do_gzip41 = getelementptr inbounds i8* %call, i64 148
  %33 = bitcast i8* %do_gzip41 to i32*
  %34 = load i32* %33, align 4, !tbaa !0
  %do_gzip43 = getelementptr inbounds %struct.msafile_struct* %32, i64 0, i32 6
  store i32 %34, i32* %do_gzip43, align 4, !tbaa !0
  %fname44 = getelementptr inbounds i8* %call, i64 8
  %35 = bitcast i8* %fname44 to i8**
  %36 = load i8** %35, align 8, !tbaa !3
  %fname46 = getelementptr inbounds %struct.msafile_struct* %32, i64 0, i32 1
  store i8* %36, i8** %fname46, align 8, !tbaa !3
  %37 = load i32* %24, align 4, !tbaa !0
  %38 = load %struct.msafile_struct** %23, align 8, !tbaa !3
  %format49 = getelementptr inbounds %struct.msafile_struct* %38, i64 0, i32 8
  store i32 %37, i32* %format49, align 4, !tbaa !0
  %39 = load i32* %25, align 4, !tbaa !0
  %linenumber52 = getelementptr inbounds %struct.msafile_struct* %38, i64 0, i32 2
  store i32 %39, i32* %linenumber52, align 4, !tbaa !0
  %buf54 = getelementptr inbounds %struct.msafile_struct* %38, i64 0, i32 3
  store i8* null, i8** %buf54, align 8, !tbaa !3
  %40 = load %struct.msafile_struct** %23, align 8, !tbaa !3
  %buflen56 = getelementptr inbounds %struct.msafile_struct* %40, i64 0, i32 4
  store i32 0, i32* %buflen56, align 4, !tbaa !0
  %call58 = tail call %struct.msa_struct* @MSAFileRead(%struct.msafile_struct* %40) #8
  store %struct.msa_struct* %call58, %struct.msa_struct** %22, align 8, !tbaa !3
  %cmp60 = icmp eq %struct.msa_struct* %call58, null
  br i1 %cmp60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.then32
  %41 = load i8** %35, align 8, !tbaa !3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([47 x i8]* @.str144, i64 0, i64 0), i8* %41) #8
  %.pre = load %struct.msa_struct** %22, align 8, !tbaa !3
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.then32
  %42 = phi %struct.msa_struct* [ %.pre, %if.then61 ], [ %call58, %if.then32 ]
  %lastidx = getelementptr inbounds %struct.msa_struct* %42, i64 0, i32 45
  store i32 0, i32* %lastidx, align 4, !tbaa !0
  br label %return

if.end65:                                         ; preds = %if.end29
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %0) #7
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end65, %if.end63
  %retval.0 = phi %struct.ReadSeqVars* [ %0, %if.end63 ], [ %0, %if.end65 ], [ null, %land.lhs.true ]
  ret %struct.ReadSeqVars* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.ReadSeqVars* @SeqfileOpenForIndexing(i8* %filename, i32 %format, i8* %env, i32 %ssimode) #0 {
entry:
  %call = tail call fastcc %struct.ReadSeqVars* @seqfile_open(i8* %filename, i32 %format, i8* %env, i32 %ssimode) #7
  ret %struct.ReadSeqVars* %call
}

; Function Attrs: nounwind optsize uwtable
define void @SeqfilePosition(%struct.ReadSeqVars* %sqfp, %struct.ssioffset_s* %offset) #0 {
entry:
  %do_stdin = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 22
  %0 = load i32* %do_stdin, align 4, !tbaa !0
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %do_gzip = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 21
  %1 = load i32* %do_gzip, align 4, !tbaa !0
  %tobool1 = icmp eq i32 %1, 0
  br i1 %tobool1, label %lor.lhs.false2, label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %format = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 20
  %2 = load i32* %format, align 4, !tbaa !0
  %cmp = icmp sgt i32 %2, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0)) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false2
  %f = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 0
  %3 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call = tail call i32 @SSISetFilePosition(%struct._IO_FILE* %3, %struct.ssioffset_s* %offset) #8
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0)) #8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then4
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %sqfp) #7
  ret void
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: optsize
declare i32 @SSISetFilePosition(%struct._IO_FILE*, %struct.ssioffset_s*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #0 {
entry:
  %ssimode = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 5
  %0 = load i32* %ssimode, align 4, !tbaa !0
  %cmp = icmp sgt i32 %0, -1
  %f = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %ssioffset = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 6
  %call = tail call i32 @SSIGetFilePosition(%struct._IO_FILE* %1, i32 %0, %struct.ssioffset_s* %ssioffset) #8
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.then
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str120, i64 0, i64 0)) #8
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.then, %if.then3
  %buf = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3
  %buflen = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 4
  %2 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call6 = tail call i8* @sre_fgets(i8** %buf, i32* %buflen, %struct._IO_FILE* %2) #8
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  %3 = load i8** %buf, align 8, !tbaa !3
  store i8 0, i8* %3, align 1, !tbaa !1
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end4
  %linenumber = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 2
  %4 = load i32* %linenumber, align 4, !tbaa !0
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %linenumber, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SeqfileRewind(%struct.ReadSeqVars* %sqfp) #0 {
entry:
  %do_stdin = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 22
  %0 = load i32* %do_stdin, align 4, !tbaa !0
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %do_gzip = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 21
  %1 = load i32* %do_gzip, align 4, !tbaa !0
  %tobool1 = icmp eq i32 %1, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([63 x i8]* @.str2, i64 0, i64 0)) #8
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %if.then
  %f = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 0
  %2 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  tail call void @rewind(%struct._IO_FILE* %2) #8
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %sqfp) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @rewind(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @SeqfileLineParameters(%struct.ReadSeqVars* nocapture %V, i32* nocapture %ret_bpl, i32* nocapture %ret_rpl) #0 {
entry:
  %rpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 9
  %0 = load i32* %rpl, align 4, !tbaa !0
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %maxrpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 11
  %1 = load i32* %maxrpl, align 4, !tbaa !0
  %cmp2 = icmp eq i32 %1, %0
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %bpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 12
  %2 = load i32* %bpl, align 4, !tbaa !0
  %cmp4 = icmp sgt i32 %2, 0
  br i1 %cmp4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %maxbpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 14
  %3 = load i32* %maxbpl, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %3, %2
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true5
  store i32 %2, i32* %ret_bpl, align 4, !tbaa !0
  %4 = load i32* %rpl, align 4, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %entry
  store i32 0, i32* %ret_bpl, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %4, %if.then ]
  store i32 %storemerge, i32* %ret_rpl, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @SeqfileClose(%struct.ReadSeqVars* nocapture %sqfp) #0 {
entry:
  %afp = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 24
  %0 = load %struct.msafile_struct** %afp, align 8, !tbaa !3
  %cmp = icmp eq %struct.msafile_struct* %0, null
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %msa = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 23
  %1 = load %struct.msa_struct** %msa, align 8, !tbaa !3
  %cmp1 = icmp eq %struct.msa_struct* %1, null
  br i1 %cmp1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  tail call void @MSAFree(%struct.msa_struct* %1) #8
  %.pre = load %struct.msafile_struct** %afp, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %2 = phi %struct.msafile_struct* [ %0, %if.then ], [ %.pre, %if.then2 ]
  %buf = getelementptr inbounds %struct.msafile_struct* %2, i64 0, i32 3
  %3 = load i8** %buf, align 8, !tbaa !3
  %cmp5 = icmp eq i8* %3, null
  br i1 %cmp5, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  tail call void @free(i8* %3) #8
  %.pre34 = load %struct.msafile_struct** %afp, align 8, !tbaa !3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then6
  %4 = phi %struct.msafile_struct* [ %2, %if.end ], [ %.pre34, %if.then6 ]
  %5 = bitcast %struct.msafile_struct* %4 to i8*
  tail call void @free(i8* %5) #8
  br label %if.end13

if.else:                                          ; preds = %entry
  %do_stdin = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 22
  %6 = load i32* %do_stdin, align 4, !tbaa !0
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.else
  %f = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 0
  %7 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call = tail call i32 @fclose(%struct._IO_FILE* %7) #8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11, %if.end9
  %buf14 = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 3
  %8 = load i8** %buf14, align 8, !tbaa !3
  %cmp15 = icmp eq i8* %8, null
  br i1 %cmp15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end13
  tail call void @free(i8* %8) #8
  br label %if.end18

if.end18:                                         ; preds = %if.end13, %if.then16
  %fname = getelementptr inbounds %struct.ReadSeqVars* %sqfp, i64 0, i32 1
  %9 = load i8** %fname, align 8, !tbaa !3
  %cmp19 = icmp eq i8* %9, null
  br i1 %cmp19, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end18
  tail call void @free(i8* %9) #8
  br label %if.end22

if.end22:                                         ; preds = %if.end18, %if.then20
  %10 = bitcast %struct.ReadSeqVars* %sqfp to i8*
  tail call void @free(i8* %10) #8
  ret void
}

; Function Attrs: optsize
declare void @MSAFree(%struct.msa_struct*) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @FreeSequence(i8* %seq, %struct.seqinfo_s* nocapture %sqinfo) #0 {
entry:
  %cmp = icmp eq i8* %seq, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(i8* %seq) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %flags = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0
  %0 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %0, 512
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %ss = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 10
  %1 = load i8** %ss, align 8, !tbaa !3
  tail call void @free(i8* %1) #8
  %.pre = load i32* %flags, align 4, !tbaa !0
  br label %if.end2

if.end2:                                          ; preds = %if.end, %if.then1
  %2 = phi i32 [ %0, %if.end ], [ %.pre, %if.then1 ]
  %and4 = and i32 %2, 1024
  %tobool5 = icmp eq i32 %and4, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end2
  %sa = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 11
  %3 = load i8** %sa, align 8, !tbaa !3
  tail call void @free(i8* %3) #8
  br label %if.end7

if.end7:                                          ; preds = %if.end2, %if.then6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @SetSeqinfoString(%struct.seqinfo_s* %sqinfo, i8* %sptr, i32 %flag) #0 {
entry:
  %cmp = icmp eq i8* %sptr, null
  br i1 %cmp, label %return, label %while.cond

while.cond:                                       ; preds = %entry, %while.cond
  %sptr.addr.0 = phi i8* [ %incdec.ptr, %while.cond ], [ %sptr, %entry ]
  %0 = load i8* %sptr.addr.0, align 1, !tbaa !1
  %cmp1 = icmp eq i8 %0, 32
  %incdec.ptr = getelementptr inbounds i8* %sptr.addr.0, i64 1
  br i1 %cmp1, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %call = tail call i64 @strlen(i8* %sptr.addr.0) #9
  %sub = add i64 %call, 4294967295
  %conv3 = trunc i64 %sub to i32
  %cmp4171 = icmp sgt i32 %conv3, -1
  br i1 %cmp4171, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %call8 = tail call i16** @__ctype_b_loc() #10
  %1 = load i16** %call8, align 8, !tbaa !3
  %sext175 = shl i64 %sub, 32
  %2 = ashr exact i64 %sext175, 32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add i64 %indvars.iv, -1
  %3 = trunc i64 %indvars.iv to i32
  %cmp4 = icmp sgt i32 %3, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %pos.0172 = phi i32 [ %conv3, %for.body.lr.ph ], [ %dec, %for.cond ]
  %arrayidx = getelementptr inbounds i8* %sptr.addr.0, i64 %indvars.iv
  %4 = load i8* %arrayidx, align 1, !tbaa !1
  %idxprom7 = sext i8 %4 to i64
  %arrayidx9 = getelementptr inbounds i16* %1, i64 %idxprom7
  %5 = load i16* %arrayidx9, align 2, !tbaa !4
  %and = and i16 %5, 8192
  %tobool = icmp eq i16 %and, 0
  %dec = add nsw i32 %pos.0172, -1
  br i1 %tobool, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond, %for.body, %while.end
  %pos.0.lcssa = phi i32 [ %conv3, %while.end ], [ %pos.0172, %for.body ], [ %dec, %for.cond ]
  %add = add nsw i32 %pos.0.lcssa, 1
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds i8* %sptr.addr.0, i64 %idxprom13
  store i8 0, i8* %arrayidx14, align 1, !tbaa !1
  switch i32 %flag, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb23
    i32 4, label %sw.bb35
    i32 8, label %sw.bb47
    i32 16, label %sw.bb82
    i32 32, label %sw.bb95
    i32 256, label %sw.bb108
  ]

sw.bb:                                            ; preds = %for.end
  %6 = load i8* %sptr.addr.0, align 1, !tbaa !1
  %cmp16 = icmp eq i8 %6, 45
  br i1 %cmp16, label %return, label %if.then18

if.then18:                                        ; preds = %sw.bb
  %arraydecay = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0
  %call19 = tail call i8* @strncpy(i8* %arraydecay, i8* %sptr.addr.0, i64 63) #8
  %arrayidx21 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 63
  store i8 0, i8* %arrayidx21, align 1, !tbaa !1
  %flags = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0
  %7 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %7, 1
  store i32 %or, i32* %flags, align 4, !tbaa !0
  br label %return

sw.bb23:                                          ; preds = %for.end
  %8 = load i8* %sptr.addr.0, align 1, !tbaa !1
  %cmp25 = icmp eq i8 %8, 45
  br i1 %cmp25, label %return, label %if.then27

if.then27:                                        ; preds = %sw.bb23
  %arraydecay28 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 2, i64 0
  %call29 = tail call i8* @strncpy(i8* %arraydecay28, i8* %sptr.addr.0, i64 63) #8
  %arrayidx31 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 2, i64 63
  store i8 0, i8* %arrayidx31, align 1, !tbaa !1
  %flags32 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0
  %9 = load i32* %flags32, align 4, !tbaa !0
  %or33 = or i32 %9, 2
  store i32 %or33, i32* %flags32, align 4, !tbaa !0
  br label %return

sw.bb35:                                          ; preds = %for.end
  %10 = load i8* %sptr.addr.0, align 1, !tbaa !1
  %cmp37 = icmp eq i8 %10, 45
  br i1 %cmp37, label %return, label %if.then39

if.then39:                                        ; preds = %sw.bb35
  %arraydecay40 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 3, i64 0
  %call41 = tail call i8* @strncpy(i8* %arraydecay40, i8* %sptr.addr.0, i64 63) #8
  %arrayidx43 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 3, i64 63
  store i8 0, i8* %arrayidx43, align 1, !tbaa !1
  %flags44 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0
  %11 = load i32* %flags44, align 4, !tbaa !0
  %or45 = or i32 %11, 4
  store i32 %or45, i32* %flags44, align 4, !tbaa !0
  br label %return

sw.bb47:                                          ; preds = %for.end
  %12 = load i8* %sptr.addr.0, align 1, !tbaa !1
  %cmp49 = icmp eq i8 %12, 45
  br i1 %cmp49, label %return, label %if.then51

if.then51:                                        ; preds = %sw.bb47
  %flags52 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0
  %13 = load i32* %flags52, align 4, !tbaa !0
  %and53 = and i32 %13, 8
  %tobool54 = icmp eq i32 %and53, 0
  %arraydecay56 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0
  br i1 %tobool54, label %if.else, label %if.then55

if.then55:                                        ; preds = %if.then51
  %call57 = tail call i64 @strlen(i8* %arraydecay56) #9
  %conv58 = trunc i64 %call57 to i32
  %cmp59 = icmp slt i32 %conv58, 126
  br i1 %cmp59, label %if.then61, label %if.end76

if.then61:                                        ; preds = %if.then55
  %sub64 = sub i64 127, %call57
  %sext = shl i64 %sub64, 32
  %conv65 = ashr exact i64 %sext, 32
  %call66 = tail call i8* @strncat(i8* %arraydecay56, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0), i64 %conv65) #8
  %sub69 = sub i64 126, %call57
  %sext170 = shl i64 %sub69, 32
  %conv70 = ashr exact i64 %sext170, 32
  %call71 = tail call i8* @strncat(i8* %arraydecay56, i8* %sptr.addr.0, i64 %conv70) #8
  br label %if.end76

if.else:                                          ; preds = %if.then51
  %call75 = tail call i8* @strncpy(i8* %arraydecay56, i8* %sptr.addr.0, i64 127) #8
  br label %if.end76

if.end76:                                         ; preds = %if.then55, %if.then61, %if.else
  %arrayidx78 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 127
  store i8 0, i8* %arrayidx78, align 1, !tbaa !1
  %14 = load i32* %flags52, align 4, !tbaa !0
  %or80 = or i32 %14, 8
  store i32 %or80, i32* %flags52, align 4, !tbaa !0
  br label %return

sw.bb82:                                          ; preds = %for.end
  %call83 = tail call i32 @IsInt(i8* %sptr.addr.0) #8
  %tobool84 = icmp eq i32 %call83, 0
  br i1 %tobool84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %sw.bb82
  store i32 5, i32* @squid_errno, align 4, !tbaa !0
  br label %return

if.end86:                                         ; preds = %sw.bb82
  %call87 = tail call i32 @atoi(i8* %sptr.addr.0) #9
  %start = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 6
  store i32 %call87, i32* %start, align 4, !tbaa !0
  %cmp89 = icmp eq i32 %call87, 0
  br i1 %cmp89, label %return, label %if.then91

if.then91:                                        ; preds = %if.end86
  %flags92 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0
  %15 = load i32* %flags92, align 4, !tbaa !0
  %or93 = or i32 %15, 16
  store i32 %or93, i32* %flags92, align 4, !tbaa !0
  br label %return

sw.bb95:                                          ; preds = %for.end
  %call96 = tail call i32 @IsInt(i8* %sptr.addr.0) #8
  %tobool97 = icmp eq i32 %call96, 0
  br i1 %tobool97, label %if.then98, label %if.end99

if.then98:                                        ; preds = %sw.bb95
  store i32 5, i32* @squid_errno, align 4, !tbaa !0
  br label %return

if.end99:                                         ; preds = %sw.bb95
  %call100 = tail call i32 @atoi(i8* %sptr.addr.0) #9
  %stop = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 7
  store i32 %call100, i32* %stop, align 4, !tbaa !0
  %cmp102 = icmp eq i32 %call100, 0
  br i1 %cmp102, label %return, label %if.then104

if.then104:                                       ; preds = %if.end99
  %flags105 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0
  %16 = load i32* %flags105, align 4, !tbaa !0
  %or106 = or i32 %16, 32
  store i32 %or106, i32* %flags105, align 4, !tbaa !0
  br label %return

sw.bb108:                                         ; preds = %for.end
  %call109 = tail call i32 @IsInt(i8* %sptr.addr.0) #8
  %tobool110 = icmp eq i32 %call109, 0
  br i1 %tobool110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %sw.bb108
  store i32 5, i32* @squid_errno, align 4, !tbaa !0
  br label %return

if.end112:                                        ; preds = %sw.bb108
  %call113 = tail call i32 @atoi(i8* %sptr.addr.0) #9
  %olen = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 8
  store i32 %call113, i32* %olen, align 4, !tbaa !0
  %cmp115 = icmp eq i32 %call113, 0
  br i1 %cmp115, label %return, label %if.then117

if.then117:                                       ; preds = %if.end112
  %flags118 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0
  %17 = load i32* %flags118, align 4, !tbaa !0
  %or119 = or i32 %17, 256
  store i32 %or119, i32* %flags118, align 4, !tbaa !0
  br label %return

sw.default:                                       ; preds = %for.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0), i32 %flag) #8
  br label %return

return:                                           ; preds = %sw.default, %if.then18, %if.then27, %if.then39, %if.end76, %if.then91, %if.then104, %if.then117, %if.end112, %if.end99, %if.end86, %sw.bb47, %sw.bb35, %sw.bb23, %sw.bb, %entry, %if.then111, %if.then98, %if.then85
  %retval.0 = phi i32 [ 0, %if.then111 ], [ 0, %if.then98 ], [ 0, %if.then85 ], [ 1, %entry ], [ 1, %sw.bb ], [ 1, %sw.bb23 ], [ 1, %sw.bb35 ], [ 1, %sw.bb47 ], [ 1, %if.end86 ], [ 1, %if.end99 ], [ 1, %if.end112 ], [ 1, %if.then117 ], [ 1, %if.then104 ], [ 1, %if.then91 ], [ 1, %if.end76 ], [ 1, %if.then39 ], [ 1, %if.then27 ], [ 1, %if.then18 ], [ 1, %sw.default ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #2

; Function Attrs: nounwind optsize
declare i8* @strncat(i8*, i8* nocapture, i64) #2

; Function Attrs: optsize
declare i32 @IsInt(i8*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @SeqinfoCopy(%struct.seqinfo_s* %sq1, %struct.seqinfo_s* nocapture %sq2) #0 {
entry:
  %flags = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 0
  %0 = load i32* %flags, align 4, !tbaa !0
  %flags1 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 0
  store i32 %0, i32* %flags1, align 4, !tbaa !0
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %1, 1
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 1, i64 0
  %arraydecay4 = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 1, i64 0
  %call = tail call i8* @strcpy(i8* %arraydecay, i8* %arraydecay4) #8
  %.pre = load i32* %flags, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = phi i32 [ %1, %entry ], [ %.pre, %if.then ]
  %and6 = and i32 %2, 2
  %tobool7 = icmp eq i32 %and6, 0
  br i1 %tobool7, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end
  %arraydecay9 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 2, i64 0
  %arraydecay11 = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 2, i64 0
  %call12 = tail call i8* @strcpy(i8* %arraydecay9, i8* %arraydecay11) #8
  %.pre109 = load i32* %flags, align 4, !tbaa !0
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then8
  %3 = phi i32 [ %2, %if.end ], [ %.pre109, %if.then8 ]
  %and15 = and i32 %3, 4
  %tobool16 = icmp eq i32 %and15, 0
  br i1 %tobool16, label %if.end22, label %if.then17

if.then17:                                        ; preds = %if.end13
  %arraydecay18 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 3, i64 0
  %arraydecay20 = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 3, i64 0
  %call21 = tail call i8* @strcpy(i8* %arraydecay18, i8* %arraydecay20) #8
  %.pre110 = load i32* %flags, align 4, !tbaa !0
  br label %if.end22

if.end22:                                         ; preds = %if.end13, %if.then17
  %4 = phi i32 [ %3, %if.end13 ], [ %.pre110, %if.then17 ]
  %and24 = and i32 %4, 8
  %tobool25 = icmp eq i32 %and24, 0
  br i1 %tobool25, label %if.end31, label %if.then26

if.then26:                                        ; preds = %if.end22
  %arraydecay27 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 4, i64 0
  %arraydecay29 = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 4, i64 0
  %call30 = tail call i8* @strcpy(i8* %arraydecay27, i8* %arraydecay29) #8
  %.pre111 = load i32* %flags, align 4, !tbaa !0
  br label %if.end31

if.end31:                                         ; preds = %if.end22, %if.then26
  %5 = phi i32 [ %4, %if.end22 ], [ %.pre111, %if.then26 ]
  %and33 = and i32 %5, 64
  %tobool34 = icmp eq i32 %and33, 0
  br i1 %tobool34, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end31
  %len = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 5
  %6 = load i32* %len, align 4, !tbaa !0
  %len36 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 5
  store i32 %6, i32* %len36, align 4, !tbaa !0
  %.pre112 = load i32* %flags, align 4, !tbaa !0
  br label %if.end37

if.end37:                                         ; preds = %if.end31, %if.then35
  %7 = phi i32 [ %5, %if.end31 ], [ %.pre112, %if.then35 ]
  %and39 = and i32 %7, 16
  %tobool40 = icmp eq i32 %and39, 0
  br i1 %tobool40, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end37
  %start = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 6
  %8 = load i32* %start, align 4, !tbaa !0
  %start42 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 6
  store i32 %8, i32* %start42, align 4, !tbaa !0
  %.pre113 = load i32* %flags, align 4, !tbaa !0
  br label %if.end43

if.end43:                                         ; preds = %if.end37, %if.then41
  %9 = phi i32 [ %7, %if.end37 ], [ %.pre113, %if.then41 ]
  %and45 = and i32 %9, 32
  %tobool46 = icmp eq i32 %and45, 0
  br i1 %tobool46, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.end43
  %stop = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 7
  %10 = load i32* %stop, align 4, !tbaa !0
  %stop48 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 7
  store i32 %10, i32* %stop48, align 4, !tbaa !0
  %.pre114 = load i32* %flags, align 4, !tbaa !0
  br label %if.end49

if.end49:                                         ; preds = %if.end43, %if.then47
  %11 = phi i32 [ %9, %if.end43 ], [ %.pre114, %if.then47 ]
  %and51 = and i32 %11, 256
  %tobool52 = icmp eq i32 %and51, 0
  br i1 %tobool52, label %if.end55, label %if.then53

if.then53:                                        ; preds = %if.end49
  %olen = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 8
  %12 = load i32* %olen, align 4, !tbaa !0
  %olen54 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 8
  store i32 %12, i32* %olen54, align 4, !tbaa !0
  %.pre115 = load i32* %flags, align 4, !tbaa !0
  br label %if.end55

if.end55:                                         ; preds = %if.end49, %if.then53
  %13 = phi i32 [ %11, %if.end49 ], [ %.pre115, %if.then53 ]
  %and57 = and i32 %13, 128
  %tobool58 = icmp eq i32 %and57, 0
  br i1 %tobool58, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.end55
  %type = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 9
  %14 = load i32* %type, align 4, !tbaa !0
  %type60 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 9
  store i32 %14, i32* %type60, align 4, !tbaa !0
  %.pre116 = load i32* %flags, align 4, !tbaa !0
  br label %if.end61

if.end61:                                         ; preds = %if.end55, %if.then59
  %15 = phi i32 [ %13, %if.end55 ], [ %.pre116, %if.then59 ]
  %and63 = and i32 %15, 512
  %tobool64 = icmp eq i32 %and63, 0
  br i1 %tobool64, label %if.end68, label %if.then65

if.then65:                                        ; preds = %if.end61
  %ss = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 10
  %16 = load i8** %ss, align 8, !tbaa !3
  %call66 = tail call i8* @Strdup(i8* %16) #8
  %ss67 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 10
  store i8* %call66, i8** %ss67, align 8, !tbaa !3
  %.pre117 = load i32* %flags, align 4, !tbaa !0
  br label %if.end68

if.end68:                                         ; preds = %if.end61, %if.then65
  %17 = phi i32 [ %15, %if.end61 ], [ %.pre117, %if.then65 ]
  %and70 = and i32 %17, 1024
  %tobool71 = icmp eq i32 %and70, 0
  br i1 %tobool71, label %if.end75, label %if.then72

if.then72:                                        ; preds = %if.end68
  %sa = getelementptr inbounds %struct.seqinfo_s* %sq2, i64 0, i32 11
  %18 = load i8** %sa, align 8, !tbaa !3
  %call73 = tail call i8* @Strdup(i8* %18) #8
  %sa74 = getelementptr inbounds %struct.seqinfo_s* %sq1, i64 0, i32 11
  store i8* %call73, i8** %sa74, align 8, !tbaa !3
  br label %if.end75

if.end75:                                         ; preds = %if.end68, %if.then72
  ret void
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: optsize
declare i8* @Strdup(i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @ToDNA(i8* nocapture %seq) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %seq.addr.0 = phi i8* [ %seq, %entry ], [ %incdec.ptr, %for.inc ]
  %0 = load i8* %seq.addr.0, align 1, !tbaa !1
  switch i8 %0, label %for.inc [
    i8 0, label %for.end
    i8 85, label %if.then
    i8 117, label %if.then8
  ]

if.then:                                          ; preds = %for.cond
  store i8 84, i8* %seq.addr.0, align 1, !tbaa !1
  br label %for.inc

if.then8:                                         ; preds = %for.cond
  store i8 116, i8* %seq.addr.0, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.then, %if.then8
  %incdec.ptr = getelementptr inbounds i8* %seq.addr.0, i64 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ToRNA(i8* nocapture %seq) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %seq.addr.0 = phi i8* [ %seq, %entry ], [ %incdec.ptr, %for.inc ]
  %0 = load i8* %seq.addr.0, align 1, !tbaa !1
  switch i8 %0, label %for.inc [
    i8 0, label %for.end
    i8 84, label %if.then
    i8 116, label %if.then8
  ]

if.then:                                          ; preds = %for.cond
  store i8 85, i8* %seq.addr.0, align 1, !tbaa !1
  br label %for.inc

if.then8:                                         ; preds = %for.cond
  store i8 117, i8* %seq.addr.0, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %if.then, %if.then8
  %incdec.ptr = getelementptr inbounds i8* %seq.addr.0, i64 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ToIUPAC(i8* nocapture %seq, i32 %is_aseq) #0 {
entry:
  %tobool = icmp eq i32 %is_aseq, 0
  %0 = load i8* %seq, align 1, !tbaa !1
  %cmp2656 = icmp eq i8 %0, 0
  br i1 %tobool, label %for.cond24.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp2656, label %if.end38, label %for.body

for.cond24.preheader:                             ; preds = %entry
  br i1 %cmp2656, label %if.end38, label %for.body28

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %1 = phi i8 [ %2, %for.inc ], [ %0, %for.cond.preheader ]
  %seq.addr.060 = phi i8* [ %incdec.ptr, %for.inc ], [ %seq, %for.cond.preheader ]
  %conv = sext i8 %1 to i32
  %memchr51 = tail call i8* @memchr(i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0), i32 %conv, i64 33)
  %cmp3 = icmp eq i8* %memchr51, null
  br i1 %cmp3, label %switch.early.test, label %for.inc

switch.early.test:                                ; preds = %for.body
  switch i8 %1, label %if.then23 [
    i8 126, label %for.inc
    i8 95, label %for.inc
    i8 46, label %for.inc
    i8 45, label %for.inc
    i8 32, label %for.inc
  ]

if.then23:                                        ; preds = %switch.early.test
  store i8 78, i8* %seq.addr.060, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %if.then23
  %incdec.ptr = getelementptr inbounds i8* %seq.addr.060, i64 1
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.end38, label %for.body

for.body28:                                       ; preds = %for.cond24.preheader, %for.inc35
  %3 = phi i8 [ %4, %for.inc35 ], [ %0, %for.cond24.preheader ]
  %seq.addr.157 = phi i8* [ %incdec.ptr36, %for.inc35 ], [ %seq, %for.cond24.preheader ]
  %conv25 = sext i8 %3 to i32
  %memchr = tail call i8* @memchr(i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0), i32 %conv25, i64 33)
  %cmp31 = icmp eq i8* %memchr, null
  br i1 %cmp31, label %if.then33, label %for.inc35

if.then33:                                        ; preds = %for.body28
  store i8 78, i8* %seq.addr.157, align 1, !tbaa !1
  br label %for.inc35

for.inc35:                                        ; preds = %for.body28, %if.then33
  %incdec.ptr36 = getelementptr inbounds i8* %seq.addr.157, i64 1
  %4 = load i8* %incdec.ptr36, align 1, !tbaa !1
  %cmp26 = icmp eq i8 %4, 0
  br i1 %cmp26, label %if.end38, label %for.body28

if.end38:                                         ; preds = %for.cond.preheader, %for.inc, %for.cond24.preheader, %for.inc35
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @ReadSeq(%struct.ReadSeqVars* %V, i32 %format, i8** nocapture %ret_seq, %struct.seqinfo_s* %sqinfo) #0 {
entry:
  store i32 0, i32* @squid_errno, align 4, !tbaa !0
  %format1 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 20
  %0 = load i32* %format1, align 4, !tbaa !0
  %cmp = icmp sgt i32 %0, 100
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %msa = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 23
  %1 = load %struct.msa_struct** %msa, align 8, !tbaa !3
  %lastidx = getelementptr inbounds %struct.msa_struct* %1, i64 0, i32 45
  %2 = load i32* %lastidx, align 4, !tbaa !0
  %nseq = getelementptr inbounds %struct.msa_struct* %1, i64 0, i32 4
  %3 = load i32* %nseq, align 4, !tbaa !0
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %if.end11, label %if.then4

if.then4:                                         ; preds = %if.then
  tail call void @MSAFree(%struct.msa_struct* %1) #8
  %afp = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 24
  %4 = load %struct.msafile_struct** %afp, align 8, !tbaa !3
  %call = tail call %struct.msa_struct* @MSAFileRead(%struct.msafile_struct* %4) #8
  store %struct.msa_struct* %call, %struct.msa_struct** %msa, align 8, !tbaa !3
  %cmp7 = icmp eq %struct.msa_struct* %call, null
  br i1 %cmp7, label %return, label %if.end

if.end:                                           ; preds = %if.then4
  %lastidx10 = getelementptr inbounds %struct.msa_struct* %call, i64 0, i32 45
  store i32 0, i32* %lastidx10, align 4, !tbaa !0
  br label %if.end11

if.end11:                                         ; preds = %if.then, %if.end
  %5 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  %6 = phi %struct.msa_struct* [ %1, %if.then ], [ %call, %if.end ]
  %idxprom = sext i32 %5 to i64
  %aseq = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 0
  %7 = load i8*** %aseq, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8** %7, i64 %idxprom
  %8 = load i8** %arrayidx, align 8, !tbaa !3
  %alen = getelementptr inbounds %struct.msa_struct* %6, i64 0, i32 3
  %9 = load i32* %alen, align 4, !tbaa !0
  %seq = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15
  %call22 = tail call i32 @MakeDealignedString(i8* %8, i32 %9, i8* %8, i8** %seq) #8
  %10 = load i8** %seq, align 8, !tbaa !3
  %call24 = tail call i64 @strlen(i8* %10) #9
  %conv = trunc i64 %call24 to i32
  %seqlen = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 18
  store i32 %conv, i32* %seqlen, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0
  store i32 0, i32* %flags, align 4, !tbaa !0
  %11 = load %struct.msa_struct** %msa, align 8, !tbaa !3
  %lastidx26 = getelementptr inbounds %struct.msa_struct* %11, i64 0, i32 45
  %12 = load i32* %lastidx26, align 4, !tbaa !0
  %idxprom27 = sext i32 %12 to i64
  %sqname = getelementptr inbounds %struct.msa_struct* %11, i64 0, i32 1
  %13 = load i8*** %sqname, align 8, !tbaa !3
  %arrayidx29 = getelementptr inbounds i8** %13, i64 %idxprom27
  %14 = load i8** %arrayidx29, align 8, !tbaa !3
  %cmp30 = icmp eq i8* %14, null
  br i1 %cmp30, label %if.end40, label %if.then32

if.then32:                                        ; preds = %if.end11
  %call39 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %sqinfo, i8* %14, i32 1) #7
  %.pre = load %struct.msa_struct** %msa, align 8, !tbaa !3
  br label %if.end40

if.end40:                                         ; preds = %if.end11, %if.then32
  %15 = phi %struct.msa_struct* [ %11, %if.end11 ], [ %.pre, %if.then32 ]
  %sqacc = getelementptr inbounds %struct.msa_struct* %15, i64 0, i32 14
  %16 = load i8*** %sqacc, align 8, !tbaa !3
  %cmp42 = icmp eq i8** %16, null
  br i1 %cmp42, label %if.end60, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end40
  %lastidx45 = getelementptr inbounds %struct.msa_struct* %15, i64 0, i32 45
  %17 = load i32* %lastidx45, align 4, !tbaa !0
  %idxprom46 = sext i32 %17 to i64
  %arrayidx49 = getelementptr inbounds i8** %16, i64 %idxprom46
  %18 = load i8** %arrayidx49, align 8, !tbaa !3
  %cmp50 = icmp eq i8* %18, null
  br i1 %cmp50, label %if.end60, label %if.then52

if.then52:                                        ; preds = %land.lhs.true
  %call59 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %sqinfo, i8* %18, i32 4) #7
  %.pre472 = load %struct.msa_struct** %msa, align 8, !tbaa !3
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true, %if.end40, %if.then52
  %19 = phi %struct.msa_struct* [ %15, %land.lhs.true ], [ %15, %if.end40 ], [ %.pre472, %if.then52 ]
  %sqdesc = getelementptr inbounds %struct.msa_struct* %19, i64 0, i32 15
  %20 = load i8*** %sqdesc, align 8, !tbaa !3
  %cmp62 = icmp eq i8** %20, null
  br i1 %cmp62, label %if.end81, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %if.end60
  %lastidx66 = getelementptr inbounds %struct.msa_struct* %19, i64 0, i32 45
  %21 = load i32* %lastidx66, align 4, !tbaa !0
  %idxprom67 = sext i32 %21 to i64
  %arrayidx70 = getelementptr inbounds i8** %20, i64 %idxprom67
  %22 = load i8** %arrayidx70, align 8, !tbaa !3
  %cmp71 = icmp eq i8* %22, null
  br i1 %cmp71, label %if.end81, label %if.then73

if.then73:                                        ; preds = %land.lhs.true64
  %call80 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %sqinfo, i8* %22, i32 8) #7
  %.pre473 = load %struct.msa_struct** %msa, align 8, !tbaa !3
  br label %if.end81

if.end81:                                         ; preds = %land.lhs.true64, %if.end60, %if.then73
  %23 = phi %struct.msa_struct* [ %19, %land.lhs.true64 ], [ %19, %if.end60 ], [ %.pre473, %if.then73 ]
  %ss = getelementptr inbounds %struct.msa_struct* %23, i64 0, i32 16
  %24 = load i8*** %ss, align 8, !tbaa !3
  %cmp83 = icmp eq i8** %24, null
  br i1 %cmp83, label %if.end112, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %if.end81
  %lastidx87 = getelementptr inbounds %struct.msa_struct* %23, i64 0, i32 45
  %25 = load i32* %lastidx87, align 4, !tbaa !0
  %idxprom88 = sext i32 %25 to i64
  %arrayidx91 = getelementptr inbounds i8** %24, i64 %idxprom88
  %26 = load i8** %arrayidx91, align 8, !tbaa !3
  %cmp92 = icmp eq i8* %26, null
  br i1 %cmp92, label %if.end112, label %if.then94

if.then94:                                        ; preds = %land.lhs.true85
  %aseq99 = getelementptr inbounds %struct.msa_struct* %23, i64 0, i32 0
  %27 = load i8*** %aseq99, align 8, !tbaa !3
  %arrayidx100 = getelementptr inbounds i8** %27, i64 %idxprom88
  %28 = load i8** %arrayidx100, align 8, !tbaa !3
  %alen102 = getelementptr inbounds %struct.msa_struct* %23, i64 0, i32 3
  %29 = load i32* %alen102, align 4, !tbaa !0
  %ss109 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 10
  %call110 = tail call i32 @MakeDealignedString(i8* %28, i32 %29, i8* %26, i8** %ss109) #8
  %30 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %30, 512
  store i32 %or, i32* %flags, align 4, !tbaa !0
  %.pre474 = load %struct.msa_struct** %msa, align 8, !tbaa !3
  br label %if.end112

if.end112:                                        ; preds = %land.lhs.true85, %if.end81, %if.then94
  %31 = phi %struct.msa_struct* [ %23, %land.lhs.true85 ], [ %23, %if.end81 ], [ %.pre474, %if.then94 ]
  %sa = getelementptr inbounds %struct.msa_struct* %31, i64 0, i32 17
  %32 = load i8*** %sa, align 8, !tbaa !3
  %cmp114 = icmp eq i8** %32, null
  br i1 %cmp114, label %if.end144, label %land.lhs.true116

land.lhs.true116:                                 ; preds = %if.end112
  %lastidx118 = getelementptr inbounds %struct.msa_struct* %31, i64 0, i32 45
  %33 = load i32* %lastidx118, align 4, !tbaa !0
  %idxprom119 = sext i32 %33 to i64
  %arrayidx122 = getelementptr inbounds i8** %32, i64 %idxprom119
  %34 = load i8** %arrayidx122, align 8, !tbaa !3
  %cmp123 = icmp eq i8* %34, null
  br i1 %cmp123, label %if.end144, label %if.then125

if.then125:                                       ; preds = %land.lhs.true116
  %aseq130 = getelementptr inbounds %struct.msa_struct* %31, i64 0, i32 0
  %35 = load i8*** %aseq130, align 8, !tbaa !3
  %arrayidx131 = getelementptr inbounds i8** %35, i64 %idxprom119
  %36 = load i8** %arrayidx131, align 8, !tbaa !3
  %alen133 = getelementptr inbounds %struct.msa_struct* %31, i64 0, i32 3
  %37 = load i32* %alen133, align 4, !tbaa !0
  %sa140 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 11
  %call141 = tail call i32 @MakeDealignedString(i8* %36, i32 %37, i8* %34, i8** %sa140) #8
  %38 = load i32* %flags, align 4, !tbaa !0
  %or143 = or i32 %38, 1024
  store i32 %or143, i32* %flags, align 4, !tbaa !0
  %.pre475 = load %struct.msa_struct** %msa, align 8, !tbaa !3
  br label %if.end144

if.end144:                                        ; preds = %if.end112, %land.lhs.true116, %if.then125
  %39 = phi %struct.msa_struct* [ %31, %land.lhs.true116 ], [ %.pre475, %if.then125 ], [ %31, %if.end112 ]
  %lastidx146 = getelementptr inbounds %struct.msa_struct* %39, i64 0, i32 45
  %40 = load i32* %lastidx146, align 4, !tbaa !0
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %lastidx146, align 4, !tbaa !0
  br label %if.end192

if.else:                                          ; preds = %entry
  %f = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 0
  %41 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call147 = tail call i32 @feof(%struct._IO_FILE* %41) #8
  %tobool = icmp eq i32 %call147, 0
  br i1 %tobool, label %if.end149, label %return

if.end149:                                        ; preds = %if.else
  %ssimode = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 5
  %42 = load i32* %ssimode, align 4, !tbaa !0
  %cmp150 = icmp eq i32 %42, -1
  br i1 %cmp150, label %if.then152, label %if.else155

if.then152:                                       ; preds = %if.end149
  %call153 = tail call noalias i8* @calloc(i64 501, i64 1) #8
  %seq154 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15
  store i8* %call153, i8** %seq154, align 8, !tbaa !3
  %maxseq = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 19
  store i32 500, i32* %maxseq, align 4, !tbaa !0
  br label %if.end158

if.else155:                                       ; preds = %if.end149
  %seq156 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15
  store i8* null, i8** %seq156, align 8, !tbaa !3
  %maxseq157 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 19
  store i32 0, i32* %maxseq157, align 4, !tbaa !0
  br label %if.end158

if.end158:                                        ; preds = %if.else155, %if.then152
  %43 = phi i8* [ null, %if.else155 ], [ %call153, %if.then152 ]
  %seqlen159 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 18
  store i32 0, i32* %seqlen159, align 4, !tbaa !0
  %sqinfo160 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 16
  store %struct.seqinfo_s* %sqinfo, %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %flags162 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0
  store i32 0, i32* %flags162, align 4, !tbaa !0
  %44 = load i32* %format1, align 4, !tbaa !0
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
  ]

do.body.preheader:                                ; preds = %if.end158
  %buf = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3
  br label %do.body

sw.bb:                                            ; preds = %if.end158
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %45 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call46.i = tail call i32 @feof(%struct._IO_FILE* %45) #8
  %tobool47.i = icmp eq i32 %call46.i, 0
  %buf.i = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3
  br i1 %tobool47.i, label %lor.rhs.i, label %do.end.i

lor.rhs.i:                                        ; preds = %sw.bb, %do.body.backedge.i
  %46 = load i8** %buf.i, align 8, !tbaa !3
  %47 = load i8* %46, align 1, !tbaa !1
  switch i8 %47, label %do.end.i [
    i8 59, label %do.body.backedge.i
    i8 0, label %do.body.backedge.i
  ]

do.body.backedge.i:                               ; preds = %lor.rhs.i, %lor.rhs.i
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %48 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call.i = tail call i32 @feof(%struct._IO_FILE* %48) #8
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %lor.rhs.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb, %do.body.backedge.i, %lor.rhs.i
  %49 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call7.i = tail call i32 @feof(%struct._IO_FILE* %49) #8
  %tobool8.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.i, label %if.then.i, label %while.cond.preheader.i

if.then.i:                                        ; preds = %do.end.i
  %50 = load i8** %buf.i, align 8, !tbaa !3
  %call10.i = tail call i8* @strtok(i8* %50, i8* getelementptr inbounds ([4 x i8]* @.str114, i64 0, i64 0)) #8
  %cmp11.i = icmp eq i8* %call10.i, null
  br i1 %cmp11.i, label %if.end.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.then.i
  %51 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call14.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %51, i8* %call10.i, i32 1) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then13.i, %if.then.i
  tail call fastcc void @readLoop(i32 0, i32 (i8*, i32*)* @endIG, %struct.ReadSeqVars* %V) #8
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end.i, %do.end.i
  %52 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call1744.i = tail call i32 @feof(%struct._IO_FILE* %52) #8
  %tobool1845.i = icmp eq i32 %call1744.i, 0
  br i1 %tobool1845.i, label %lor.rhs19.i, label %sw.epilog

lor.rhs19.i:                                      ; preds = %while.cond.preheader.i, %while.body.i
  %53 = load i8** %buf.i, align 8, !tbaa !3
  %54 = load i8* %53, align 1, !tbaa !1
  %phitmp43.i = icmp eq i8 %54, 59
  br i1 %phitmp43.i, label %sw.epilog, label %while.body.i

while.body.i:                                     ; preds = %lor.rhs19.i
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %55 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call17.i = tail call i32 @feof(%struct._IO_FILE* %55) #8
  %tobool18.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.i, label %lor.rhs19.i, label %sw.epilog

sw.bb164:                                         ; preds = %if.end158
  %buf.i283 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3
  %56 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call41.i = tail call i32 @feof(%struct._IO_FILE* %56) #8
  %tobool42.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.i, label %land.rhs.i, label %while.end.i

land.rhs.i:                                       ; preds = %sw.bb164, %if.end12.i
  %57 = load i8** %buf.i283, align 8, !tbaa !3
  %58 = load i8* %57, align 1, !tbaa !1
  %cmp.i = icmp eq i8 %58, 59
  br i1 %cmp.i, label %while.body.i286, label %while.end.i

while.body.i286:                                  ; preds = %land.rhs.i
  %call3.i = tail call i32 @strncmp(i8* %57, i8* getelementptr inbounds ([15 x i8]* @.str138, i64 0, i64 0), i64 14) #9
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then.i288, label %if.end12.i

if.then.i288:                                     ; preds = %while.body.i286
  %add.ptr.i = getelementptr inbounds i8* %57, i64 16
  %call7.i287 = tail call i8* @strtok(i8* %add.ptr.i, i8* getelementptr inbounds ([5 x i8]* @.str139, i64 0, i64 0)) #8
  %cmp8.i = icmp eq i8* %call7.i287, null
  br i1 %cmp8.i, label %if.end12.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.then.i288
  %59 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call11.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %59, i8* %call7.i287, i32 1) #8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.then.i288, %while.body.i286
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %60 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call.i289 = tail call i32 @feof(%struct._IO_FILE* %60) #8
  %tobool.i290 = icmp eq i32 %call.i289, 0
  br i1 %tobool.i290, label %land.rhs.i, label %while.end.i

while.end.i:                                      ; preds = %if.end12.i, %land.rhs.i, %sw.bb164
  %61 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call14.i291 = tail call i32 @feof(%struct._IO_FILE* %61) #8
  %tobool15.i = icmp eq i32 %call14.i291, 0
  br i1 %tobool15.i, label %if.then16.i, label %while.cond18.preheader.i

if.then16.i:                                      ; preds = %while.end.i
  tail call fastcc void @readLoop(i32 1, i32 (i8*, i32*)* @endStrider, %struct.ReadSeqVars* %V) #8
  br label %while.cond18.preheader.i

while.cond18.preheader.i:                         ; preds = %if.then16.i, %while.end.i
  %62 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call2039.i = tail call i32 @feof(%struct._IO_FILE* %62) #8
  %tobool2140.i = icmp eq i32 %call2039.i, 0
  br i1 %tobool2140.i, label %land.rhs22.i, label %sw.epilog

land.rhs22.i:                                     ; preds = %while.cond18.preheader.i, %while.body28.i
  %63 = load i8** %buf.i283, align 8, !tbaa !3
  %64 = load i8* %63, align 1, !tbaa !1
  %cmp25.i = icmp eq i8 %64, 59
  br i1 %cmp25.i, label %sw.epilog, label %while.body28.i

while.body28.i:                                   ; preds = %land.rhs22.i
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %65 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call20.i = tail call i32 @feof(%struct._IO_FILE* %65) #8
  %tobool21.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.i, label %land.rhs22.i, label %sw.epilog

sw.bb165:                                         ; preds = %if.end158
  %buf.i292 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3
  %66 = load i8** %buf.i292, align 8, !tbaa !3
  %call178.i = tail call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([6 x i8]* @.str132, i64 0, i64 0), i64 5) #9
  %cmp179.i = icmp eq i32 %call178.i, 0
  br i1 %cmp179.i, label %while.end.i296, label %while.body.i295

while.body.i295:                                  ; preds = %sw.bb165, %while.body.i295
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %67 = load i8** %buf.i292, align 8, !tbaa !3
  %call.i293 = tail call i32 @strncmp(i8* %67, i8* getelementptr inbounds ([6 x i8]* @.str132, i64 0, i64 0), i64 5) #9
  %cmp.i294 = icmp eq i32 %call.i293, 0
  br i1 %cmp.i294, label %while.end.i296, label %while.body.i295

while.end.i296:                                   ; preds = %while.body.i295, %sw.bb165
  %68 = phi i8* [ %66, %sw.bb165 ], [ %67, %while.body.i295 ]
  %69 = load i32* %ssimode, align 4, !tbaa !0
  %cmp1.i = icmp sgt i32 %69, -1
  br i1 %cmp1.i, label %if.then.i297, label %if.end.i301

if.then.i297:                                     ; preds = %while.end.i296
  %70 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 7, i32 0
  %71 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 6, i32 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 16, i32 8, i1 false) #5, !tbaa.struct !5
  br label %if.end.i301

if.end.i301:                                      ; preds = %if.then.i297, %while.end.i296
  %add.ptr.i298 = getelementptr inbounds i8* %68, i64 12
  %call3.i299 = tail call i8* @strtok(i8* %add.ptr.i298, i8* getelementptr inbounds ([4 x i8]* @.str114, i64 0, i64 0)) #8
  %cmp4.i300 = icmp eq i8* %call3.i299, null
  br i1 %cmp4.i300, label %while.cond8.preheader.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i301
  %72 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call6.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %72, i8* %call3.i299, i32 1) #8
  br label %while.cond8.preheader.i

while.cond8.preheader.i:                          ; preds = %if.then5.i, %if.end.i301
  %73 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call9174.i = tail call i32 @feof(%struct._IO_FILE* %73) #8
  %lnot175.i = icmp eq i32 %call9174.i, 0
  br i1 %lnot175.i, label %while.body10.i, label %while.end78.i

while.body10.i:                                   ; preds = %while.cond8.preheader.i, %while.cond8.backedge.i
  %in_definition.0176.i = phi i32 [ %in_definition.0.be.i, %while.cond8.backedge.i ], [ 0, %while.cond8.preheader.i ]
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %74 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call12.i = tail call i32 @feof(%struct._IO_FILE* %74) #8
  %tobool13.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.i, label %land.lhs.true.i, label %if.else.i

land.lhs.true.i:                                  ; preds = %while.body10.i
  %75 = load i8** %buf.i292, align 8, !tbaa !3
  %strncmp162.i = tail call i32 @strncmp(i8* %75, i8* getelementptr inbounds ([11 x i8]* @.str133, i64 0, i64 0), i64 10) #5
  %cmp163.i = icmp eq i32 %strncmp162.i, 0
  br i1 %cmp163.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  %add.ptr20.i = getelementptr inbounds i8* %75, i64 12
  %call21.i = tail call i8* @strtok(i8* %add.ptr20.i, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0)) #8
  %cmp22.i = icmp eq i8* %call21.i, null
  br i1 %cmp22.i, label %while.cond8.backedge.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.then18.i
  %76 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call25.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %76, i8* %call21.i, i32 8) #8
  br label %while.cond8.backedge.i

if.else.i:                                        ; preds = %land.lhs.true.i, %while.body10.i
  %77 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call28.i = tail call i32 @feof(%struct._IO_FILE* %77) #8
  %tobool29.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.i, label %land.lhs.true30.i, label %if.else44.i

land.lhs.true30.i:                                ; preds = %if.else.i
  %78 = load i8** %buf.i292, align 8, !tbaa !3
  %strncmp165.i = tail call i32 @strncmp(i8* %78, i8* getelementptr inbounds ([10 x i8]* @.str123, i64 0, i64 0), i64 9) #5
  %cmp166.i = icmp eq i32 %strncmp165.i, 0
  br i1 %cmp166.i, label %if.then35.i, label %if.else44.i

if.then35.i:                                      ; preds = %land.lhs.true30.i
  %add.ptr37.i = getelementptr inbounds i8* %78, i64 12
  %call38.i = tail call i8* @strtok(i8* %add.ptr37.i, i8* getelementptr inbounds ([4 x i8]* @.str114, i64 0, i64 0)) #8
  %cmp39.i = icmp eq i8* %call38.i, null
  br i1 %cmp39.i, label %while.cond8.backedge.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.then35.i
  %79 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call42.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %79, i8* %call38.i, i32 4) #8
  br label %while.cond8.backedge.i

if.else44.i:                                      ; preds = %land.lhs.true30.i, %if.else.i
  %80 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call46.i304 = tail call i32 @feof(%struct._IO_FILE* %80) #8
  %tobool47.i305 = icmp eq i32 %call46.i304, 0
  %81 = load i8** %buf.i292, align 8, !tbaa !3
  br i1 %tobool47.i305, label %land.lhs.true48.i, label %if.else62.i

land.lhs.true48.i:                                ; preds = %if.else44.i
  %strncmp168.i = tail call i32 @strncmp(i8* %81, i8* getelementptr inbounds ([8 x i8]* @.str134, i64 0, i64 0), i64 7) #5
  %cmp169.i = icmp eq i32 %strncmp168.i, 0
  br i1 %cmp169.i, label %if.then53.i, label %if.else62.i

if.then53.i:                                      ; preds = %land.lhs.true48.i
  %add.ptr55.i = getelementptr inbounds i8* %81, i64 12
  %call56.i = tail call i8* @strtok(i8* %add.ptr55.i, i8* getelementptr inbounds ([4 x i8]* @.str114, i64 0, i64 0)) #8
  %cmp57.i = icmp eq i8* %call56.i, null
  br i1 %cmp57.i, label %while.cond8.backedge.i, label %if.then58.i

if.then58.i:                                      ; preds = %if.then53.i
  %82 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call60.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %82, i8* %call56.i, i32 2) #8
  br label %while.cond8.backedge.i

if.else62.i:                                      ; preds = %land.lhs.true48.i, %if.else44.i
  %call64.i = tail call i32 @strncmp(i8* %81, i8* getelementptr inbounds ([7 x i8]* @.str135, i64 0, i64 0), i64 6) #9
  %cmp65.i = icmp eq i32 %call64.i, 0
  br i1 %cmp65.i, label %while.end78.i, label %if.then66.i

if.then66.i:                                      ; preds = %if.else62.i
  %tobool67.i = icmp eq i32 %in_definition.0176.i, 0
  br i1 %tobool67.i, label %while.cond8.backedge.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.then66.i
  %83 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call71.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %83, i8* %81, i32 8) #8
  br label %while.cond8.backedge.i

while.cond8.backedge.i:                           ; preds = %if.then68.i, %if.then66.i, %if.then58.i, %if.then53.i, %if.then40.i, %if.then35.i, %if.then23.i, %if.then18.i
  %in_definition.0.be.i = phi i32 [ %in_definition.0176.i, %if.then68.i ], [ 0, %if.then66.i ], [ 1, %if.then18.i ], [ 1, %if.then23.i ], [ 0, %if.then35.i ], [ 0, %if.then40.i ], [ 0, %if.then53.i ], [ 0, %if.then58.i ]
  %84 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call9.i = tail call i32 @feof(%struct._IO_FILE* %84) #8
  %lnot.i = icmp eq i32 %call9.i, 0
  br i1 %lnot.i, label %while.body10.i, label %while.end78.i

while.end78.i:                                    ; preds = %while.cond8.backedge.i, %if.else62.i, %while.cond8.preheader.i
  tail call fastcc void @readLoop(i32 0, i32 (i8*, i32*)* @endGB, %struct.ReadSeqVars* %V) #8
  %85 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %start.i = getelementptr inbounds %struct.seqinfo_s* %85, i64 0, i32 6
  store i32 1, i32* %start.i, align 4, !tbaa !0
  %86 = load i32* %seqlen159, align 4, !tbaa !0
  %stop.i = getelementptr inbounds %struct.seqinfo_s* %85, i64 0, i32 7
  store i32 %86, i32* %stop.i, align 4, !tbaa !0
  %87 = load i32* %seqlen159, align 4, !tbaa !0
  %olen.i = getelementptr inbounds %struct.seqinfo_s* %85, i64 0, i32 8
  store i32 %87, i32* %olen.i, align 4, !tbaa !0
  %flags.i = getelementptr inbounds %struct.seqinfo_s* %85, i64 0, i32 0
  %88 = load i32* %flags.i, align 4, !tbaa !0
  %or.i = or i32 %88, 304
  store i32 %or.i, i32* %flags.i, align 4, !tbaa !0
  %89 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call86172.i = tail call i32 @feof(%struct._IO_FILE* %89) #8
  %tobool87173.i = icmp eq i32 %call86172.i, 0
  br i1 %tobool87173.i, label %lor.rhs.i306, label %while.cond99.preheader.i

lor.rhs.i306:                                     ; preds = %while.end78.i, %while.body97.i
  %90 = load i8** %buf.i292, align 8, !tbaa !3
  %91 = load i8* %90, align 1, !tbaa !1
  %cmp89.i = icmp eq i8 %91, 0
  br i1 %cmp89.i, label %while.body97.i, label %land.rhs.i307

land.rhs.i307:                                    ; preds = %lor.rhs.i306
  %strncmp158.i = tail call i32 @strncmp(i8* %90, i8* getelementptr inbounds ([6 x i8]* @.str132, i64 0, i64 0), i64 5) #5
  %cmp159.i = icmp eq i32 %strncmp158.i, 0
  br i1 %cmp159.i, label %while.cond99.preheader.i, label %while.body97.i

while.cond99.preheader.i:                         ; preds = %while.body97.i, %land.rhs.i307, %while.end78.i
  %92 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call101170.i = tail call i32 @feof(%struct._IO_FILE* %92) #8
  %tobool102171.i = icmp eq i32 %call101170.i, 0
  br i1 %tobool102171.i, label %land.rhs103.i, label %sw.epilog

while.body97.i:                                   ; preds = %land.rhs.i307, %lor.rhs.i306
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %93 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call86.i = tail call i32 @feof(%struct._IO_FILE* %93) #8
  %tobool87.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.i, label %lor.rhs.i306, label %while.cond99.preheader.i

land.rhs103.i:                                    ; preds = %while.cond99.preheader.i, %while.body110.i
  %94 = load i8** %buf.i292, align 8, !tbaa !3
  %strncmp.i = tail call i32 @strncmp(i8* %94, i8* getelementptr inbounds ([8 x i8]* @.str136, i64 0, i64 0), i64 7) #5
  %cmp156.i = icmp eq i32 %strncmp.i, 0
  br i1 %cmp156.i, label %sw.epilog, label %while.body110.i

while.body110.i:                                  ; preds = %land.rhs103.i
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %95 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call101.i = tail call i32 @feof(%struct._IO_FILE* %95) #8
  %tobool102.i = icmp eq i32 %call101.i, 0
  br i1 %tobool102.i, label %land.rhs103.i, label %sw.epilog

sw.bb166:                                         ; preds = %if.end158
  %96 = load i32* %ssimode, align 4, !tbaa !0
  %cmp.i309 = icmp sgt i32 %96, -1
  br i1 %cmp.i309, label %if.then.i310, label %if.end.i313

if.then.i310:                                     ; preds = %sw.bb166
  %97 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 7, i32 0
  %98 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 6, i32 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %97, i8* %98, i64 16, i32 8, i1 false) #5, !tbaa.struct !5
  br label %if.end.i313

if.end.i313:                                      ; preds = %if.then.i310, %sw.bb166
  %buf.i311 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3
  %99 = load i8** %buf.i311, align 8, !tbaa !3
  %100 = load i8* %99, align 1, !tbaa !1
  %cmp1.i312 = icmp eq i8 %100, 62
  br i1 %cmp1.i312, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i313
  %fname.i = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 1
  %101 = load i8** %fname.i, align 8, !tbaa !3
  %linenumber.i = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 2
  %102 = load i32* %linenumber.i, align 4, !tbaa !0
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([174 x i8]* @.str131, i64 0, i64 0), i8* %101, i32 %102) #8
  %.pre.i = load i8** %buf.i311, align 8, !tbaa !3
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i313
  %103 = phi i8* [ %99, %if.end.i313 ], [ %.pre.i, %if.then3.i ]
  %add.ptr.i314 = getelementptr inbounds i8* %103, i64 1
  %call.i315 = tail call i8* @strtok(i8* %add.ptr.i314, i8* getelementptr inbounds ([4 x i8]* @.str114, i64 0, i64 0)) #8
  %cmp6.i = icmp eq i8* %call.i315, null
  br i1 %cmp6.i, label %if.end10.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end4.i
  %104 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call9.i317 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %104, i8* %call.i315, i32 1) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end4.i
  %call11.i318 = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0)) #8
  %cmp12.i = icmp eq i8* %call11.i318, null
  br i1 %cmp12.i, label %if.end17.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end10.i
  %105 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call16.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %105, i8* %call11.i318, i32 8) #8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end10.i
  tail call fastcc void @readLoop(i32 0, i32 (i8*, i32*)* @endPearson, %struct.ReadSeqVars* %V) #8
  %106 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call1841.i = tail call i32 @feof(%struct._IO_FILE* %106) #8
  %tobool42.i320 = icmp eq i32 %call1841.i, 0
  br i1 %tobool42.i320, label %lor.rhs.i321, label %sw.epilog

lor.rhs.i321:                                     ; preds = %if.end17.i, %while.body.i323
  %107 = load i8** %buf.i311, align 8, !tbaa !3
  %108 = load i8* %107, align 1, !tbaa !1
  %phitmp.i = icmp eq i8 %108, 62
  br i1 %phitmp.i, label %sw.epilog, label %while.body.i323

while.body.i323:                                  ; preds = %lor.rhs.i321
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %109 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call18.i = tail call i32 @feof(%struct._IO_FILE* %109) #8
  %tobool.i322 = icmp eq i32 %call18.i, 0
  br i1 %tobool.i322, label %lor.rhs.i321, label %sw.epilog

sw.bb167:                                         ; preds = %if.end158
  %buf.i325 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3
  %110 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call127.i = tail call i32 @feof(%struct._IO_FILE* %110) #8
  %tobool128.i = icmp eq i32 %call127.i, 0
  br i1 %tobool128.i, label %land.rhs.i328, label %while.end.i333

land.rhs.i328:                                    ; preds = %sw.bb167, %while.body.i331
  %111 = load i8** %buf.i325, align 8, !tbaa !3
  %call1.i = tail call i32 @strncmp(i8* %111, i8* getelementptr inbounds ([5 x i8]* @.str125, i64 0, i64 0), i64 4) #9
  %cmp.i327 = icmp eq i32 %call1.i, 0
  br i1 %cmp.i327, label %while.end.i333, label %while.body.i331

while.body.i331:                                  ; preds = %land.rhs.i328
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %112 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call.i329 = tail call i32 @feof(%struct._IO_FILE* %112) #8
  %tobool.i330 = icmp eq i32 %call.i329, 0
  br i1 %tobool.i330, label %land.rhs.i328, label %while.end.i333

while.end.i333:                                   ; preds = %while.body.i331, %land.rhs.i328, %sw.bb167
  %113 = load i32* %ssimode, align 4, !tbaa !0
  %cmp2.i = icmp sgt i32 %113, -1
  br i1 %cmp2.i, label %if.then.i334, label %if.end.i336

if.then.i334:                                     ; preds = %while.end.i333
  %114 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 7, i32 0
  %115 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 6, i32 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* %115, i64 16, i32 8, i1 false) #5, !tbaa.struct !5
  br label %if.end.i336

if.end.i336:                                      ; preds = %while.end.i333, %if.then.i334
  %116 = load i8** %buf.i325, align 8, !tbaa !3
  %add.ptr.i335 = getelementptr inbounds i8* %116, i64 5
  %call4.i = tail call i8* @strtok(i8* %add.ptr.i335, i8* getelementptr inbounds ([4 x i8]* @.str114, i64 0, i64 0)) #8
  %cmp5.i = icmp eq i8* %call4.i, null
  br i1 %cmp5.i, label %do.body.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i336
  %117 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call7.i337 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %117, i8* %call4.i, i32 1) #8
  %118 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call9.i338 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %118, i8* %call4.i, i32 2) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then6.i, %if.end.i336, %land.rhs49.i
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %119 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call12.i339 = tail call i32 @feof(%struct._IO_FILE* %119) #8
  %tobool13.i340 = icmp eq i32 %call12.i339, 0
  br i1 %tobool13.i340, label %land.lhs.true.i342, label %if.else.i351

land.lhs.true.i342:                               ; preds = %do.body.i
  %120 = load i8** %buf.i325, align 8, !tbaa !3
  %strncmp.i341 = tail call i32 @strncmp(i8* %120, i8* getelementptr inbounds ([5 x i8]* @.str126, i64 0, i64 0), i64 4) #5
  %cmp121.i = icmp eq i32 %strncmp.i341, 0
  br i1 %cmp121.i, label %if.then18.i346, label %if.else.i351

if.then18.i346:                                   ; preds = %land.lhs.true.i342
  %add.ptr20.i343 = getelementptr inbounds i8* %120, i64 5
  %call21.i344 = tail call i8* @strtok(i8* %add.ptr20.i343, i8* getelementptr inbounds ([6 x i8]* @.str127, i64 0, i64 0)) #8
  %cmp22.i345 = icmp eq i8* %call21.i344, null
  br i1 %cmp22.i345, label %do.cond.i, label %if.then23.i348

if.then23.i348:                                   ; preds = %if.then18.i346
  %121 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call25.i347 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %121, i8* %call21.i344, i32 4) #8
  br label %do.cond.i

if.else.i351:                                     ; preds = %land.lhs.true.i342, %do.body.i
  %122 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call28.i349 = tail call i32 @feof(%struct._IO_FILE* %122) #8
  %tobool29.i350 = icmp eq i32 %call28.i349, 0
  br i1 %tobool29.i350, label %land.lhs.true30.i352, label %do.cond.i

land.lhs.true30.i352:                             ; preds = %if.else.i351
  %123 = load i8** %buf.i325, align 8, !tbaa !3
  %strncmp123.i = tail call i32 @strncmp(i8* %123, i8* getelementptr inbounds ([5 x i8]* @.str128, i64 0, i64 0), i64 4) #5
  %cmp124.i = icmp eq i32 %strncmp123.i, 0
  br i1 %cmp124.i, label %if.then35.i356, label %do.cond.i

if.then35.i356:                                   ; preds = %land.lhs.true30.i352
  %add.ptr37.i353 = getelementptr inbounds i8* %123, i64 5
  %call38.i354 = tail call i8* @strtok(i8* %add.ptr37.i353, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0)) #8
  %cmp39.i355 = icmp eq i8* %call38.i354, null
  br i1 %cmp39.i355, label %do.cond.i, label %if.then40.i358

if.then40.i358:                                   ; preds = %if.then35.i356
  %124 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call42.i357 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %124, i8* %call38.i354, i32 8) #8
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then40.i358, %if.then35.i356, %land.lhs.true30.i352, %if.else.i351, %if.then23.i348, %if.then18.i346
  %125 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call47.i = tail call i32 @feof(%struct._IO_FILE* %125) #8
  %tobool48.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.i, label %land.rhs49.i, label %do.end.i359

land.rhs49.i:                                     ; preds = %do.cond.i
  %126 = load i8** %buf.i325, align 8, !tbaa !3
  %call51.i = tail call i32 @strncmp(i8* %126, i8* getelementptr inbounds ([3 x i8]* @.str129, i64 0, i64 0), i64 2) #9
  %cmp52.i = icmp eq i32 %call51.i, 0
  br i1 %cmp52.i, label %do.end.i359, label %do.body.i

do.end.i359:                                      ; preds = %land.rhs49.i, %do.cond.i
  tail call fastcc void @readLoop(i32 0, i32 (i8*, i32*)* @endEMBL, %struct.ReadSeqVars* %V) #8
  %127 = load i32* %ssimode, align 4, !tbaa !0
  %cmp55.i = icmp eq i32 %127, -1
  br i1 %cmp55.i, label %if.then56.i, label %if.end64.i

if.then56.i:                                      ; preds = %do.end.i359
  %seq.i = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15
  %128 = load i8** %seq.i, align 8, !tbaa !3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %if.then56.i
  %sptr.0.i = phi i8* [ %128, %if.then56.i ], [ %incdec.ptr.i, %for.inc.i ]
  %129 = load i8* %sptr.0.i, align 1, !tbaa !1
  switch i8 %129, label %for.inc.i [
    i8 0, label %if.end64.i
    i8 45, label %if.then62.i
  ]

if.then62.i:                                      ; preds = %for.cond.i
  store i8 78, i8* %sptr.0.i, align 1, !tbaa !1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then62.i, %for.cond.i
  %incdec.ptr.i = getelementptr inbounds i8* %sptr.0.i, i64 1
  br label %for.cond.i

if.end64.i:                                       ; preds = %for.cond.i, %do.end.i359
  %130 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %start.i360 = getelementptr inbounds %struct.seqinfo_s* %130, i64 0, i32 6
  store i32 1, i32* %start.i360, align 4, !tbaa !0
  %131 = load i32* %seqlen159, align 4, !tbaa !0
  %stop.i362 = getelementptr inbounds %struct.seqinfo_s* %130, i64 0, i32 7
  store i32 %131, i32* %stop.i362, align 4, !tbaa !0
  %132 = load i32* %seqlen159, align 4, !tbaa !0
  %olen.i363 = getelementptr inbounds %struct.seqinfo_s* %130, i64 0, i32 8
  store i32 %132, i32* %olen.i363, align 4, !tbaa !0
  %flags.i364 = getelementptr inbounds %struct.seqinfo_s* %130, i64 0, i32 0
  %133 = load i32* %flags.i364, align 4, !tbaa !0
  %or.i365 = or i32 %133, 304
  store i32 %or.i365, i32* %flags.i364, align 4, !tbaa !0
  %134 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call72125.i = tail call i32 @feof(%struct._IO_FILE* %134) #8
  %tobool73126.i = icmp eq i32 %call72125.i, 0
  br i1 %tobool73126.i, label %land.rhs74.i, label %sw.epilog

land.rhs74.i:                                     ; preds = %if.end64.i, %while.body80.i
  %135 = load i8** %buf.i325, align 8, !tbaa !3
  %call76.i = tail call i32 @strncmp(i8* %135, i8* getelementptr inbounds ([5 x i8]* @.str125, i64 0, i64 0), i64 4) #9
  %cmp77.i = icmp eq i32 %call76.i, 0
  br i1 %cmp77.i, label %sw.epilog, label %while.body80.i

while.body80.i:                                   ; preds = %land.rhs74.i
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %136 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call72.i = tail call i32 @feof(%struct._IO_FILE* %136) #8
  %tobool73.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.i, label %land.rhs74.i, label %sw.epilog

sw.bb168:                                         ; preds = %if.end158
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %buf.i366 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3
  %137 = load i8** %buf.i366, align 8, !tbaa !3
  %add.ptr.i367 = getelementptr inbounds i8* %137, i64 6
  %call.i368 = tail call i8* @strtok(i8* %add.ptr.i367, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0)) #8
  %cmp.i369 = icmp eq i8* %call.i368, null
  br i1 %cmp.i369, label %if.end.i373, label %if.then.i372

if.then.i372:                                     ; preds = %sw.bb168
  %138 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call1.i371 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %138, i8* %call.i368, i32 1) #8
  br label %if.end.i373

if.end.i373:                                      ; preds = %if.then.i372, %sw.bb168
  %call2.i = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0)) #8
  %cmp3.i = icmp eq i8* %call2.i, null
  br i1 %cmp3.i, label %if.end7.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i373
  %139 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call6.i374 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %139, i8* %call2.i, i32 8) #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i373
  tail call fastcc void @readLoop(i32 0, i32 (i8*, i32*)* @endZuker, %struct.ReadSeqVars* %V) #8
  %140 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call826.i = tail call i32 @feof(%struct._IO_FILE* %140) #8
  %141 = load i8** %buf.i366, align 8, !tbaa !3
  %142 = load i8* %141, align 1, !tbaa !1
  %cmp1427.i = icmp eq i8 %142, 40
  %and28.i = zext i1 %cmp1427.i to i32
  %or29.i = or i32 %and28.i, %call826.i
  %lnot30.i = icmp eq i32 %or29.i, 0
  br i1 %lnot30.i, label %while.body.i378, label %sw.epilog

while.body.i378:                                  ; preds = %if.end7.i, %while.body.i378
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %143 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call8.i = tail call i32 @feof(%struct._IO_FILE* %143) #8
  %144 = load i8** %buf.i366, align 8, !tbaa !3
  %145 = load i8* %144, align 1, !tbaa !1
  %cmp14.i = icmp eq i8 %145, 40
  %and.i = zext i1 %cmp14.i to i32
  %or.i376 = or i32 %and.i, %call8.i
  %lnot.i377 = icmp eq i32 %or.i376, 0
  br i1 %lnot.i377, label %while.body.i378, label %sw.epilog

sw.bb169:                                         ; preds = %if.end158
  %buf.i380 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3
  %146 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call103.i = tail call i32 @feof(%struct._IO_FILE* %146) #8
  %tobool104.i = icmp eq i32 %call103.i, 0
  br i1 %tobool104.i, label %land.rhs.i384, label %while.end.i389

land.rhs.i384:                                    ; preds = %sw.bb169, %while.body.i387
  %147 = load i8** %buf.i380, align 8, !tbaa !3
  %call1.i382 = tail call i32 @strncmp(i8* %147, i8* getelementptr inbounds ([6 x i8]* @.str121, i64 0, i64 0), i64 5) #9
  %cmp.i383 = icmp eq i32 %call1.i382, 0
  br i1 %cmp.i383, label %while.end.i389, label %while.body.i387

while.body.i387:                                  ; preds = %land.rhs.i384
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %148 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call.i385 = tail call i32 @feof(%struct._IO_FILE* %148) #8
  %tobool.i386 = icmp eq i32 %call.i385, 0
  br i1 %tobool.i386, label %land.rhs.i384, label %while.end.i389

while.end.i389:                                   ; preds = %while.body.i387, %land.rhs.i384, %sw.bb169
  %149 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call3.i388 = tail call i32 @feof(%struct._IO_FILE* %149) #8
  %tobool4.i = icmp eq i32 %call3.i388, 0
  br i1 %tobool4.i, label %if.end.i392, label %sw.epilog

if.end.i392:                                      ; preds = %while.end.i389
  %150 = load i32* %ssimode, align 4, !tbaa !0
  %cmp5.i391 = icmp sgt i32 %150, -1
  br i1 %cmp5.i391, label %if.then6.i393, label %if.end7.i396

if.then6.i393:                                    ; preds = %if.end.i392
  %151 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 7, i32 0
  %152 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 6, i32 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %152, i64 16, i32 8, i1 false) #5, !tbaa.struct !5
  br label %if.end7.i396

if.end7.i396:                                     ; preds = %if.then6.i393, %if.end.i392
  %153 = load i8** %buf.i380, align 8, !tbaa !3
  %add.ptr.i394 = getelementptr inbounds i8* %153, i64 15
  %call9.i395 = tail call i8* @strtok(i8* %add.ptr.i394, i8* getelementptr inbounds ([4 x i8]* @.str114, i64 0, i64 0)) #8
  %cmp10.i = icmp eq i8* %call9.i395, null
  br i1 %cmp10.i, label %do.body.i401, label %if.then11.i

if.then11.i:                                      ; preds = %if.end7.i396
  %154 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call12.i397 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %154, i8* %call9.i395, i32 1) #8
  %155 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call14.i398 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %155, i8* %call9.i395, i32 2) #8
  br label %do.body.i401

do.body.i401:                                     ; preds = %if.then11.i, %if.end7.i396, %land.rhs48.i
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %156 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call17.i399 = tail call i32 @feof(%struct._IO_FILE* %156) #8
  %tobool18.i400 = icmp eq i32 %call17.i399, 0
  br i1 %tobool18.i400, label %land.lhs.true.i403, label %if.else.i406

land.lhs.true.i403:                               ; preds = %do.body.i401
  %157 = load i8** %buf.i380, align 8, !tbaa !3
  %call20.i402 = tail call i32 @strncmp(i8* %157, i8* getelementptr inbounds ([6 x i8]* @.str122, i64 0, i64 0), i64 5) #9
  %cmp21.i = icmp eq i32 %call20.i402, 0
  br i1 %cmp21.i, label %if.then22.i, label %if.else.i406

if.then22.i:                                      ; preds = %land.lhs.true.i403
  %158 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %add.ptr25.i = getelementptr inbounds i8* %157, i64 15
  %call26.i = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %158, i8* %add.ptr25.i, i32 8) #8
  br label %do.cond.i411

if.else.i406:                                     ; preds = %land.lhs.true.i403, %do.body.i401
  %159 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call28.i404 = tail call i32 @feof(%struct._IO_FILE* %159) #8
  %tobool29.i405 = icmp eq i32 %call28.i404, 0
  br i1 %tobool29.i405, label %land.lhs.true30.i407, label %do.cond.i411

land.lhs.true30.i407:                             ; preds = %if.else.i406
  %160 = load i8** %buf.i380, align 8, !tbaa !3
  %call32.i = tail call i32 @strncmp(i8* %160, i8* getelementptr inbounds ([10 x i8]* @.str123, i64 0, i64 0), i64 9) #9
  %cmp33.i = icmp eq i32 %call32.i, 0
  br i1 %cmp33.i, label %if.then34.i, label %do.cond.i411

if.then34.i:                                      ; preds = %land.lhs.true30.i407
  %add.ptr36.i = getelementptr inbounds i8* %160, i64 15
  %call37.i = tail call i8* @strtok(i8* %add.ptr36.i, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0)) #8
  %cmp38.i = icmp eq i8* %call37.i, null
  br i1 %cmp38.i, label %do.cond.i411, label %if.then39.i

if.then39.i:                                      ; preds = %if.then34.i
  %161 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call41.i408 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %161, i8* %call37.i, i32 4) #8
  br label %do.cond.i411

do.cond.i411:                                     ; preds = %if.then39.i, %if.then34.i, %land.lhs.true30.i407, %if.else.i406, %if.then22.i
  %162 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call46.i409 = tail call i32 @feof(%struct._IO_FILE* %162) #8
  %tobool47.i410 = icmp eq i32 %call46.i409, 0
  br i1 %tobool47.i410, label %land.rhs48.i, label %do.end.i418

land.rhs48.i:                                     ; preds = %do.cond.i411
  %163 = load i8** %buf.i380, align 8, !tbaa !3
  %call50.i = tail call i32 @strncmp(i8* %163, i8* getelementptr inbounds ([9 x i8]* @.str124, i64 0, i64 0), i64 8) #9
  %cmp51.i = icmp eq i32 %call50.i, 0
  br i1 %cmp51.i, label %do.end.i418, label %do.body.i401

do.end.i418:                                      ; preds = %land.rhs48.i, %do.cond.i411
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  tail call fastcc void @readLoop(i32 0, i32 (i8*, i32*)* @endPIR, %struct.ReadSeqVars* %V) #8
  %164 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %start.i412 = getelementptr inbounds %struct.seqinfo_s* %164, i64 0, i32 6
  store i32 1, i32* %start.i412, align 4, !tbaa !0
  %165 = load i32* %seqlen159, align 4, !tbaa !0
  %stop.i414 = getelementptr inbounds %struct.seqinfo_s* %164, i64 0, i32 7
  store i32 %165, i32* %stop.i414, align 4, !tbaa !0
  %166 = load i32* %seqlen159, align 4, !tbaa !0
  %olen.i415 = getelementptr inbounds %struct.seqinfo_s* %164, i64 0, i32 8
  store i32 %166, i32* %olen.i415, align 4, !tbaa !0
  %flags.i416 = getelementptr inbounds %struct.seqinfo_s* %164, i64 0, i32 0
  %167 = load i32* %flags.i416, align 4, !tbaa !0
  %or.i417 = or i32 %167, 304
  store i32 %or.i417, i32* %flags.i416, align 4, !tbaa !0
  %168 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call60101.i = tail call i32 @feof(%struct._IO_FILE* %168) #8
  %tobool61102.i = icmp eq i32 %call60101.i, 0
  br i1 %tobool61102.i, label %land.rhs62.i, label %sw.epilog

land.rhs62.i:                                     ; preds = %do.end.i418, %while.body67.i
  %169 = load i8** %buf.i380, align 8, !tbaa !3
  %call64.i419 = tail call i32 @strncmp(i8* %169, i8* getelementptr inbounds ([6 x i8]* @.str121, i64 0, i64 0), i64 5) #9
  %cmp65.i420 = icmp eq i32 %call64.i419, 0
  br i1 %cmp65.i420, label %sw.epilog, label %while.body67.i

while.body67.i:                                   ; preds = %land.rhs62.i
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %170 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call60.i421 = tail call i32 @feof(%struct._IO_FILE* %170) #8
  %tobool61.i = icmp eq i32 %call60.i421, 0
  br i1 %tobool61.i, label %land.rhs62.i, label %sw.epilog

sw.bb170:                                         ; preds = %if.end158
  %buf.i422 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3
  %171 = load i8** %buf.i422, align 8, !tbaa !3
  %call.i423 = tail call i32 @Strparse(i8* getelementptr inbounds ([34 x i8]* @.str115, i64 0, i64 0), i8* %171, i32 2) #8
  %tobool.i424 = icmp eq i32 %call.i423, 0
  br i1 %tobool.i424, label %if.else.i430, label %if.then.i428

if.then.i428:                                     ; preds = %sw.bb170
  %172 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %173 = load i8** getelementptr inbounds ([10 x i8*]* @sqd_parse, i64 0, i64 1), align 8, !tbaa !3
  %call1.i426 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %172, i8* %173, i32 1) #8
  %174 = load i8** getelementptr inbounds ([10 x i8*]* @sqd_parse, i64 0, i64 2), align 8, !tbaa !3
  %call2.i427 = tail call i32 @atoi(i8* %174) #9
  br label %if.end11.i

if.else.i430:                                     ; preds = %sw.bb170
  %175 = load i8** %buf.i422, align 8, !tbaa !3
  %call4.i429 = tail call i32 @Strparse(i8* getelementptr inbounds ([33 x i8]* @.str116, i64 0, i64 0), i8* %175, i32 1) #8
  %tobool5.i = icmp eq i32 %call4.i429, 0
  br i1 %tobool5.i, label %if.else9.i, label %if.then6.i432

if.then6.i432:                                    ; preds = %if.else.i430
  %176 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %177 = load i8** getelementptr inbounds ([10 x i8*]* @sqd_parse, i64 0, i64 1), align 8, !tbaa !3
  %call8.i431 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %176, i8* %177, i32 1) #8
  br label %if.end11.i

if.else9.i:                                       ; preds = %if.else.i430
  %178 = load i8** %buf.i422, align 8, !tbaa !3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([25 x i8]* @.str117, i64 0, i64 0), i8* %178) #8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else9.i, %if.then6.i432, %if.then.i428
  %binary.0.i = phi i1 [ false, %if.then6.i432 ], [ false, %if.else9.i ], [ true, %if.then.i428 ]
  %blen.0.i = phi i32 [ 0, %if.then6.i432 ], [ 0, %if.else9.i ], [ %call2.i427, %if.then.i428 ]
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %179 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %180 = load i8** %buf.i422, align 8, !tbaa !3
  %call14.i433 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %179, i8* %180, i32 8) #8
  br i1 %binary.0.i, label %if.then16.i435, label %if.else40.i

if.then16.i435:                                   ; preds = %if.end11.i
  %maxseq.i = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 19
  %181 = load i32* %maxseq.i, align 4, !tbaa !0
  %cmp.i434 = icmp slt i32 %blen.0.i, %181
  br i1 %cmp.i434, label %if.then16.if.end26_crit_edge.i, label %if.then17.i

if.then16.if.end26_crit_edge.i:                   ; preds = %if.then16.i435
  %seq27.pre.i = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15
  br label %if.end26.i

if.then17.i:                                      ; preds = %if.then16.i435
  store i32 %blen.0.i, i32* %maxseq.i, align 4, !tbaa !0
  %seq.i436 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15
  %182 = load i8** %seq.i436, align 8, !tbaa !3
  %add.i = add nsw i32 %blen.0.i, 4
  %conv.i = sext i32 %add.i to i64
  %call20.i437 = tail call i8* @realloc(i8* %182, i64 %conv.i) #8
  store i8* %call20.i437, i8** %seq.i436, align 8, !tbaa !3
  %cmp22.i438 = icmp eq i8* %call20.i437, null
  br i1 %cmp22.i438, label %if.then24.i, label %if.end26.i

if.then24.i:                                      ; preds = %if.then17.i
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str118, i64 0, i64 0)) #8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.then17.i, %if.then16.if.end26_crit_edge.i
  %seq27.pre-phi.i = phi i8** [ %seq27.pre.i, %if.then16.if.end26_crit_edge.i ], [ %seq.i436, %if.then17.i ], [ %seq.i436, %if.then24.i ]
  %183 = load i8** %seq27.pre-phi.i, align 8, !tbaa !3
  %add28.i = add nsw i32 %blen.0.i, 3
  %div.i = sdiv i32 %add28.i, 4
  %conv29.i = sext i32 %div.i to i64
  %184 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call30.i = tail call i64 @fread(i8* %183, i64 1, i64 %conv29.i, %struct._IO_FILE* %184) #8
  %cmp34.i = icmp ult i64 %call30.i, %conv29.i
  br i1 %cmp34.i, label %if.then36.i, label %if.end37.i

if.then36.i:                                      ; preds = %if.end26.i
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([13 x i8]* @.str119, i64 0, i64 0)) #8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then36.i, %if.end26.i
  store i32 %blen.0.i, i32* %seqlen159, align 4, !tbaa !0
  %185 = load i8** %seq27.pre-phi.i, align 8, !tbaa !3
  %call39.i = tail call i32 @GCGBinaryToSequence(i8* %185, i32 %blen.0.i) #8
  br label %while.cond.preheader.i441

if.else40.i:                                      ; preds = %if.end11.i
  tail call fastcc void @readLoop(i32 0, i32 (i8*, i32*)* @endGCGdata, %struct.ReadSeqVars* %V) #8
  br label %while.cond.preheader.i441

while.cond.preheader.i441:                        ; preds = %if.else40.i, %if.end37.i
  %186 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call4378.i = tail call i32 @feof(%struct._IO_FILE* %186) #8
  %tobool4479.i = icmp eq i32 %call4378.i, 0
  br i1 %tobool4479.i, label %lor.rhs.i443, label %sw.epilog

lor.rhs.i443:                                     ; preds = %while.cond.preheader.i441, %while.body.i444
  %187 = load i8** %buf.i422, align 8, !tbaa !3
  %188 = load i8* %187, align 1, !tbaa !1
  %phitmp.i442 = icmp eq i8 %188, 62
  br i1 %phitmp.i442, label %sw.epilog, label %while.body.i444

while.body.i444:                                  ; preds = %lor.rhs.i443
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %189 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call43.i = tail call i32 @feof(%struct._IO_FILE* %189) #8
  %tobool44.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.i, label %lor.rhs.i443, label %sw.epilog

do.body:                                          ; preds = %do.body.preheader, %if.end177
  %190 = load i8** %buf, align 8, !tbaa !3
  %call172 = tail call i8* @strstr(i8* %190, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #9
  %cmp173 = icmp eq i8* %call172, null
  br i1 %cmp173, label %if.end177, label %if.then176

if.then176:                                       ; preds = %do.body
  store i32 0, i32* %seqlen159, align 4, !tbaa !0
  %call.i448 = tail call i8* @strstr(i8* %190, i8* getelementptr inbounds ([11 x i8]* @.str113, i64 0, i64 0)) #9
  %cmp.i449 = icmp eq i8* %call.i448, null
  br i1 %cmp.i449, label %if.else.i453, label %if.then.i450

if.then.i450:                                     ; preds = %if.then176
  store i8 0, i8* %call.i448, align 1, !tbaa !1
  br label %if.end5.i

if.else.i453:                                     ; preds = %if.then176
  %call2.i451 = tail call i8* @strstr(i8* %190, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #9
  %cmp3.i452 = icmp eq i8* %call2.i451, null
  br i1 %cmp3.i452, label %if.end5.i, label %if.then4.i454

if.then4.i454:                                    ; preds = %if.else.i453
  store i8 0, i8* %call2.i451, align 1, !tbaa !1
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i454, %if.else.i453, %if.then.i450
  %191 = load i8** %buf, align 8, !tbaa !3
  %call7.i455 = tail call i8* @strtok(i8* %191, i8* getelementptr inbounds ([4 x i8]* @.str114, i64 0, i64 0)) #8
  %cmp8.i456 = icmp eq i8* %call7.i455, null
  br i1 %cmp8.i456, label %do.body.preheader.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end5.i
  %192 = load %struct.seqinfo_s** %sqinfo160, align 8, !tbaa !3
  %call10.i458 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %192, i8* %call7.i455, i32 1) #8
  br label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %if.then9.i, %if.end5.i
  %193 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call1227.i = tail call i32 @feof(%struct._IO_FILE* %193) #8
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %tobool28.i = icmp eq i32 %call1227.i, 0
  br i1 %tobool28.i, label %if.then13.i462, label %if.end177

if.then13.i462:                                   ; preds = %do.body.preheader.i, %if.then13.i462
  %194 = load i8** %buf, align 8, !tbaa !3
  tail call fastcc void @addseq(i8* %194, %struct.ReadSeqVars* %V) #8
  %195 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call12.i460 = tail call i32 @feof(%struct._IO_FILE* %195) #8
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #8
  %tobool.i461 = icmp eq i32 %call12.i460, 0
  br i1 %tobool.i461, label %if.then13.i462, label %if.end177

if.end177:                                        ; preds = %if.then13.i462, %do.body.preheader.i, %do.body
  tail call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #7
  %196 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call179 = tail call i32 @feof(%struct._IO_FILE* %196) #8
  %lnot = icmp eq i32 %call179, 0
  br i1 %lnot, label %do.body, label %sw.epilog

sw.default:                                       ; preds = %if.end158
  store i32 5, i32* @squid_errno, align 4, !tbaa !0
  tail call void @free(i8* %43) #8
  br label %return

sw.epilog:                                        ; preds = %if.end177, %while.body.i444, %lor.rhs.i443, %while.body67.i, %land.rhs62.i, %while.body.i378, %while.body80.i, %land.rhs74.i, %while.body.i323, %lor.rhs.i321, %while.body110.i, %land.rhs103.i, %while.body28.i, %land.rhs22.i, %while.body.i, %lor.rhs19.i, %while.cond.preheader.i441, %do.end.i418, %while.end.i389, %if.end7.i, %if.end64.i, %if.end17.i, %while.cond99.preheader.i, %while.cond18.preheader.i, %while.cond.preheader.i
  %seq183 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15
  %197 = load i8** %seq183, align 8, !tbaa !3
  %cmp184 = icmp eq i8* %197, null
  br i1 %cmp184, label %if.end192, label %if.then186

if.then186:                                       ; preds = %sw.epilog
  %198 = load i32* %seqlen159, align 4, !tbaa !0
  %idxprom188 = sext i32 %198 to i64
  %arrayidx190 = getelementptr inbounds i8* %197, i64 %idxprom188
  store i8 0, i8* %arrayidx190, align 1, !tbaa !1
  br label %if.end192

if.end192:                                        ; preds = %sw.epilog, %if.then186, %if.end144
  %seqlen193 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 18
  %199 = load i32* %seqlen193, align 4, !tbaa !0
  %len = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 5
  store i32 %199, i32* %len, align 4, !tbaa !0
  %flags194 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0
  %200 = load i32* %flags194, align 4, !tbaa !0
  %or195 = or i32 %200, 64
  store i32 %or195, i32* %flags194, align 4, !tbaa !0
  %seq196 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15
  %201 = load i8** %seq196, align 8, !tbaa !3
  store i8* %201, i8** %ret_seq, align 8, !tbaa !3
  %202 = load i32* @squid_errno, align 4, !tbaa !0
  %cmp197 = icmp eq i32 %202, 0
  %. = zext i1 %cmp197 to i32
  br label %return

return:                                           ; preds = %if.end192, %if.else, %if.then4, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %if.then4 ], [ 0, %if.else ], [ %., %if.end192 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare %struct.msa_struct* @MSAFileRead(%struct.msafile_struct*) #1

; Function Attrs: optsize
declare i32 @MakeDealignedString(i8*, i32, i8*, i8**) #1

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @SeqfileFormat(%struct._IO_FILE* %fp) #0 {
entry:
  %buf = alloca i8*, align 8
  %len = alloca i32, align 4
  %s = alloca i8*, align 8
  store i8* null, i8** %buf, align 8, !tbaa !3
  store i32 0, i32* %len, align 4, !tbaa !0
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end179, %entry
  %ndataline.0.ph = phi i32 [ 0, %entry ], [ %inc, %if.end179 ]
  %has_junk.0.ph = phi i32 [ 0, %entry ], [ %has_junk.2, %if.end179 ]
  %call208 = call i8* @sre_fgets(i8** %buf, i32* %len, %struct._IO_FILE* %fp) #8
  %cmp209 = icmp eq i8* %call208, null
  br i1 %cmp209, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.outer
  %cmp2 = icmp eq i32 %ndataline.0.ph, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %0 = load i8** %buf, align 8, !tbaa !3
  %call1 = call i32 @IsBlankline(i8* %0) #8
  %tobool = icmp eq i32 %call1, 0
  br i1 %tobool, label %if.end, label %while.cond.backedge

if.end:                                           ; preds = %while.body
  br i1 %cmp2, label %if.then3, label %if.end61

if.then3:                                         ; preds = %if.end
  %1 = load i8** %buf, align 8, !tbaa !3
  %call4 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i64 4) #9
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.then3
  %call6 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0)) #9
  %tobool7 = icmp eq i8* %call6, null
  br i1 %tobool7, label %if.end9, label %DONEthread-pre-split

if.end9:                                          ; preds = %land.lhs.true, %if.then3
  %2 = load i8* %1, align 1, !tbaa !1
  %cmp10 = icmp eq i8 %2, 62
  br i1 %cmp10, label %DONE, label %if.end13

if.end13:                                         ; preds = %if.end9
  %call14 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i64 13) #9
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %DONEthread-pre-split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %call17 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0), i64 13) #9
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %DONEthread-pre-split, label %if.end21

if.end21:                                         ; preds = %lor.lhs.false
  %call22 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i64 14) #9
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %DONEthread-pre-split, label %if.end26

if.end26:                                         ; preds = %if.end21
  %call27 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i64 7) #9
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %land.lhs.true30, label %if.end35

land.lhs.true30:                                  ; preds = %if.end26
  %call31 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([28 x i8]* @.str13, i64 0, i64 0)) #9
  %cmp32 = icmp eq i8* %call31, null
  br i1 %cmp32, label %if.end35, label %DONEthread-pre-split

if.end35:                                         ; preds = %land.lhs.true30, %if.end26
  %call36 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([24 x i8]* @.str14, i64 0, i64 0), i64 23) #9
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %DONE, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.end35
  %call40 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([24 x i8]* @.str15, i64 0, i64 0), i64 23) #9
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %DONEthread-pre-split, label %if.end44

if.end44:                                         ; preds = %lor.lhs.false39
  %call45 = call i8* @sre_strdup(i8* %1, i32 -1) #8
  store i8* %call45, i8** %s, align 8, !tbaa !3
  %call46 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* null) #8
  %cmp47 = icmp eq i8* %call46, null
  br i1 %cmp47, label %if.end60, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %if.end44
  %call50 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* null) #8
  %cmp51 = icmp eq i8* %call50, null
  br i1 %cmp51, label %if.end60, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %land.lhs.true49
  %call54 = call i32 @IsInt(i8* %call46) #8
  %tobool55 = icmp eq i32 %call54, 0
  br i1 %tobool55, label %if.end60, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %call57 = call i32 @IsInt(i8* %call50) #8
  %tobool58 = icmp eq i32 %call57, 0
  br i1 %tobool58, label %if.end60, label %if.then59

if.then59:                                        ; preds = %land.lhs.true56
  call void @free(i8* %call45) #8
  br label %DONEthread-pre-split

if.end60:                                         ; preds = %land.lhs.true56, %land.lhs.true53, %land.lhs.true49, %if.end44
  call void @free(i8* %call45) #8
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end
  %3 = load i8** %buf, align 8, !tbaa !3
  %call62 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i64 4) #9
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %DONE, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %if.end61
  %call66 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i64 4) #9
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %DONEthread-pre-split, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false65
  %call70 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i64 4) #9
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %DONEthread-pre-split, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false69
  %call74 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i64 4) #9
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %DONEthread-pre-split, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false73
  %call78 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i64 4) #9
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %DONEthread-pre-split, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %lor.lhs.false77
  %call82 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i64 4) #9
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %DONEthread-pre-split, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false81
  %call86 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i64 4) #9
  %cmp87 = icmp eq i32 %call86, 0
  br i1 %cmp87, label %DONEthread-pre-split, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %lor.lhs.false85
  %call90 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0), i64 4) #9
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %DONEthread-pre-split, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %lor.lhs.false89
  %call94 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str25, i64 0, i64 0), i64 4) #9
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %DONEthread-pre-split, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %lor.lhs.false93
  %call98 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0), i64 4) #9
  %cmp99 = icmp eq i32 %call98, 0
  br i1 %cmp99, label %DONEthread-pre-split, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false97
  %call102 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str27, i64 0, i64 0), i64 4) #9
  %cmp103 = icmp eq i32 %call102, 0
  br i1 %cmp103, label %DONEthread-pre-split, label %if.end106

if.end106:                                        ; preds = %lor.lhs.false101
  %call107 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0), i64 3) #9
  %cmp108 = icmp eq i32 %call107, 0
  br i1 %cmp108, label %DONEthread-pre-split, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %if.end106
  %call111 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([7 x i8]* @.str29, i64 0, i64 0), i64 6) #9
  %cmp112 = icmp eq i32 %call111, 0
  br i1 %cmp112, label %DONEthread-pre-split, label %if.end115

if.end115:                                        ; preds = %lor.lhs.false110
  %call116 = call i8* @strstr(i8* %3, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #9
  %cmp117 = icmp eq i8* %call116, null
  br i1 %cmp117, label %if.end128, label %land.lhs.true119

land.lhs.true119:                                 ; preds = %if.end115
  %call120 = call i8* @strstr(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str30, i64 0, i64 0)) #9
  %cmp121 = icmp eq i8* %call120, null
  br i1 %cmp121, label %if.end128, label %land.lhs.true123

land.lhs.true123:                                 ; preds = %land.lhs.true119
  %call124 = call i8* @strstr(i8* %3, i8* getelementptr inbounds ([7 x i8]* @.str31, i64 0, i64 0)) #9
  %cmp125 = icmp eq i8* %call124, null
  br i1 %cmp125, label %if.end128, label %DONEthread-pre-split

if.end128:                                        ; preds = %land.lhs.true123, %land.lhs.true119, %if.end115
  %call129 = call i8* @strstr(i8* %3, i8* getelementptr inbounds ([9 x i8]* @.str32, i64 0, i64 0)) #9
  %cmp130 = icmp eq i8* %call129, null
  %brmerge = or i1 %cmp130, %cmp117
  br i1 %brmerge, label %if.end137, label %DONEthread-pre-split

if.end137:                                        ; preds = %if.end128
  %call138 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([7 x i8]* @.str33, i64 0, i64 0), i64 6) #9
  %cmp139 = icmp eq i32 %call138, 0
  br i1 %cmp139, label %DONE, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %if.end137
  %call142 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i64 6) #9
  %cmp143 = icmp eq i32 %call142, 0
  br i1 %cmp143, label %DONEthread-pre-split, label %if.end146

if.end146:                                        ; preds = %lor.lhs.false141
  %call147 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([6 x i8]* @.str35, i64 0, i64 0), i64 5) #9
  %cmp148 = icmp eq i32 %call147, 0
  br i1 %cmp148, label %DONEthread-pre-split, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %if.end146
  %call151 = call i32 @strncmp(i8* %3, i8* getelementptr inbounds ([6 x i8]* @.str36, i64 0, i64 0), i64 5) #9
  %cmp152 = icmp eq i32 %call151, 0
  br i1 %cmp152, label %DONEthread-pre-split, label %if.end155

if.end155:                                        ; preds = %lor.lhs.false150
  store i8* %3, i8** %s, align 8, !tbaa !3
  %call156 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* null) #8
  %cmp157 = icmp eq i8* %call156, null
  br i1 %cmp157, label %while.cond.backedge, label %if.end160

while.cond.backedge:                              ; preds = %if.end155, %while.body, %if.end160
  %call = call i8* @sre_fgets(i8** %buf, i32* %len, %struct._IO_FILE* %fp) #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %while.end, label %while.body

if.end160:                                        ; preds = %if.end155
  %4 = load i8* %call156, align 1, !tbaa !1
  %conv161 = sext i8 %4 to i32
  %memchr = call i8* @memchr(i8* getelementptr inbounds ([3 x i8]* @.str37, i64 0, i64 0), i32 %conv161, i64 3)
  %cmp163 = icmp eq i8* %memchr, null
  br i1 %cmp163, label %if.end166, label %while.cond.backedge

if.end166:                                        ; preds = %if.end160
  %call167 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i32* null) #8
  %cmp168 = icmp eq i8* %call167, null
  %.has_junk.0 = select i1 %cmp168, i32 1, i32 %has_junk.0.ph
  br i1 %cmp168, label %if.end179, label %land.lhs.true174

land.lhs.true174:                                 ; preds = %if.end166
  %call175 = call i32 @Seqtype(i8* %call167) #7
  %cmp176 = icmp eq i32 %call175, 0
  %..has_junk.0 = select i1 %cmp176, i32 1, i32 %.has_junk.0
  br label %if.end179

if.end179:                                        ; preds = %land.lhs.true174, %if.end166
  %has_junk.2 = phi i32 [ %.has_junk.0, %if.end166 ], [ %..has_junk.0, %land.lhs.true174 ]
  %inc = add nsw i32 %ndataline.0.ph, 1
  %cmp180 = icmp eq i32 %inc, 300
  br i1 %cmp180, label %if.end187, label %while.cond.outer

while.end:                                        ; preds = %while.cond.outer, %while.cond.backedge
  %cmp184 = icmp eq i32 %ndataline.0.ph, 0
  br i1 %cmp184, label %if.then186, label %if.end187

if.then186:                                       ; preds = %while.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([31 x i8]* @.str38, i64 0, i64 0)) #8
  br label %if.end187

if.end187:                                        ; preds = %if.end179, %if.then186, %while.end
  %has_junk.3206 = phi i32 [ %has_junk.0.ph, %if.then186 ], [ %has_junk.0.ph, %while.end ], [ %has_junk.2, %if.end179 ]
  %cmp188 = icmp eq i32 %has_junk.3206, 1
  %. = select i1 %cmp188, i32 0, i32 102
  br label %DONEthread-pre-split

DONEthread-pre-split:                             ; preds = %if.end128, %land.lhs.true, %lor.lhs.false, %if.end13, %if.end21, %land.lhs.true30, %lor.lhs.false39, %lor.lhs.false101, %lor.lhs.false97, %lor.lhs.false93, %lor.lhs.false89, %lor.lhs.false85, %lor.lhs.false81, %lor.lhs.false77, %lor.lhs.false73, %lor.lhs.false69, %lor.lhs.false65, %lor.lhs.false110, %if.end106, %land.lhs.true123, %lor.lhs.false141, %lor.lhs.false150, %if.end146, %if.then59, %if.end187
  %fmt.0.ph = phi i32 [ %., %if.end187 ], [ 106, %if.then59 ], [ 16, %land.lhs.true ], [ 5, %lor.lhs.false ], [ 5, %if.end13 ], [ 101, %if.end21 ], [ 104, %land.lhs.true30 ], [ 103, %lor.lhs.false39 ], [ 102, %lor.lhs.false101 ], [ 102, %lor.lhs.false97 ], [ 102, %lor.lhs.false93 ], [ 102, %lor.lhs.false89 ], [ 102, %lor.lhs.false85 ], [ 102, %lor.lhs.false81 ], [ 102, %lor.lhs.false77 ], [ 102, %lor.lhs.false73 ], [ 102, %lor.lhs.false69 ], [ 102, %lor.lhs.false65 ], [ 12, %lor.lhs.false110 ], [ 12, %if.end106 ], [ 103, %land.lhs.true123 ], [ 2, %lor.lhs.false141 ], [ 4, %lor.lhs.false150 ], [ 4, %if.end146 ], [ 5, %if.end128 ]
  %.pr = load i8** %buf, align 8, !tbaa !3
  br label %DONE

DONE:                                             ; preds = %if.end137, %if.end61, %if.end35, %if.end9, %DONEthread-pre-split
  %5 = phi i8* [ %.pr, %DONEthread-pre-split ], [ %3, %if.end137 ], [ %3, %if.end61 ], [ %1, %if.end35 ], [ %1, %if.end9 ]
  %fmt.0 = phi i32 [ %fmt.0.ph, %DONEthread-pre-split ], [ 2, %if.end137 ], [ 102, %if.end61 ], [ 103, %if.end35 ], [ 7, %if.end9 ]
  %cmp192 = icmp eq i8* %5, null
  br i1 %cmp192, label %if.end195, label %if.then194

if.then194:                                       ; preds = %DONE
  call void @free(i8* %5) #8
  br label %if.end195

if.end195:                                        ; preds = %DONE, %if.then194
  call void @rewind(%struct._IO_FILE* %fp) #8
  ret i32 %fmt.0
}

; Function Attrs: optsize
declare i8* @sre_fgets(i8**, i32*, %struct._IO_FILE*) #1

; Function Attrs: optsize
declare i32 @IsBlankline(i8*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #1

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Seqtype(i8* nocapture %seq) #0 {
entry:
  %0 = load i8* %seq, align 1, !tbaa !1
  %cmp101 = icmp eq i8 %0, 0
  br i1 %cmp101, label %return, label %for.body

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
  %conv = sext i8 %1 to i32
  %call = tail call i32 @sre_toupper(i32 %conv) #8
  %sext = shl i32 %call, 24
  %conv6 = ashr exact i32 %sext, 24
  switch i32 %conv6, label %if.then [
    i32 32, label %for.inc
    i32 46, label %for.inc
    i32 95, label %for.inc
    i32 45, label %for.inc
    i32 126, label %for.inc
  ]

if.then:                                          ; preds = %for.body
  %memchr = tail call i8* @memchr(i8* getelementptr inbounds ([7 x i8]* @.str112, i64 0, i64 0), i32 %conv6, i64 7)
  %tobool = icmp eq i8* %memchr, null
  br i1 %tobool, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.then
  %inc = add nsw i32 %po.0104, 1
  br label %if.end60

if.else:                                          ; preds = %if.then
  %memchr98 = tail call i8* @memchr(i8* getelementptr inbounds ([7 x i8]* @.str111, i64 0, i64 0), i32 %conv6, i64 7)
  %tobool29 = icmp eq i8* %memchr98, null
  br i1 %tobool29, label %if.else44, label %if.then30

if.then30:                                        ; preds = %if.else
  %inc31 = add nsw i32 %na.0107, 1
  switch i32 %conv6, label %if.end60 [
    i32 84, label %if.then35
    i32 85, label %if.then41
  ]

if.then35:                                        ; preds = %if.then30
  %inc36 = add nsw i32 %nt.0105, 1
  br label %if.end60

if.then41:                                        ; preds = %if.then30
  %inc42 = add nsw i32 %nu.0106, 1
  br label %if.end60

if.else44:                                        ; preds = %if.else
  %memchr99 = tail call i8* @memchr(i8* getelementptr inbounds ([25 x i8]* @.str110, i64 0, i64 0), i32 %conv6, i64 25)
  %tobool47 = icmp eq i8* %memchr99, null
  br i1 %tobool47, label %if.else50, label %if.then48

if.then48:                                        ; preds = %if.else44
  %inc49 = add nsw i32 %aa.0108, 1
  br label %if.end60

if.else50:                                        ; preds = %if.else44
  %idxprom = sext i32 %conv6 to i64
  %call52 = tail call i16** @__ctype_b_loc() #10
  %2 = load i16** %call52, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i16* %2, i64 %idxprom
  %3 = load i16* %arrayidx, align 2, !tbaa !4
  %and = lshr i16 %3, 10
  %and.lobit = and i16 %and, 1
  %inc56 = zext i16 %and.lobit to i32
  %no.0.inc56 = add nsw i32 %inc56, %no.0109
  br label %if.end60

if.end60:                                         ; preds = %if.else50, %if.then30, %if.then41, %if.then35, %if.then48, %if.then26
  %po.1 = phi i32 [ %inc, %if.then26 ], [ %po.0104, %if.then35 ], [ %po.0104, %if.then41 ], [ %po.0104, %if.then48 ], [ %po.0104, %if.then30 ], [ %po.0104, %if.else50 ]
  %nt.1 = phi i32 [ %nt.0105, %if.then26 ], [ %inc36, %if.then35 ], [ %nt.0105, %if.then41 ], [ %nt.0105, %if.then48 ], [ %nt.0105, %if.then30 ], [ %nt.0105, %if.else50 ]
  %nu.1 = phi i32 [ %nu.0106, %if.then26 ], [ %nu.0106, %if.then35 ], [ %inc42, %if.then41 ], [ %nu.0106, %if.then48 ], [ %nu.0106, %if.then30 ], [ %nu.0106, %if.else50 ]
  %na.1 = phi i32 [ %na.0107, %if.then26 ], [ %inc31, %if.then35 ], [ %inc31, %if.then41 ], [ %na.0107, %if.then48 ], [ %inc31, %if.then30 ], [ %na.0107, %if.else50 ]
  %aa.1 = phi i32 [ %aa.0108, %if.then26 ], [ %aa.0108, %if.then35 ], [ %aa.0108, %if.then41 ], [ %inc49, %if.then48 ], [ %aa.0108, %if.then30 ], [ %aa.0108, %if.else50 ]
  %no.1 = phi i32 [ %no.0109, %if.then26 ], [ %no.0109, %if.then35 ], [ %no.0109, %if.then41 ], [ %no.0109, %if.then48 ], [ %no.0109, %if.then30 ], [ %no.0.inc56, %if.else50 ]
  %inc61 = add nsw i32 %saw.0103, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %if.end60
  %saw.1 = phi i32 [ %saw.0103, %for.body ], [ %inc61, %if.end60 ], [ %saw.0103, %for.body ], [ %saw.0103, %for.body ], [ %saw.0103, %for.body ], [ %saw.0103, %for.body ]
  %po.2 = phi i32 [ %po.0104, %for.body ], [ %po.1, %if.end60 ], [ %po.0104, %for.body ], [ %po.0104, %for.body ], [ %po.0104, %for.body ], [ %po.0104, %for.body ]
  %nt.2 = phi i32 [ %nt.0105, %for.body ], [ %nt.1, %if.end60 ], [ %nt.0105, %for.body ], [ %nt.0105, %for.body ], [ %nt.0105, %for.body ], [ %nt.0105, %for.body ]
  %nu.2 = phi i32 [ %nu.0106, %for.body ], [ %nu.1, %if.end60 ], [ %nu.0106, %for.body ], [ %nu.0106, %for.body ], [ %nu.0106, %for.body ], [ %nu.0106, %for.body ]
  %na.2 = phi i32 [ %na.0107, %for.body ], [ %na.1, %if.end60 ], [ %na.0107, %for.body ], [ %na.0107, %for.body ], [ %na.0107, %for.body ], [ %na.0107, %for.body ]
  %aa.2 = phi i32 [ %aa.0108, %for.body ], [ %aa.1, %if.end60 ], [ %aa.0108, %for.body ], [ %aa.0108, %for.body ], [ %aa.0108, %for.body ], [ %aa.0108, %for.body ]
  %no.2 = phi i32 [ %no.0109, %for.body ], [ %no.1, %if.end60 ], [ %no.0109, %for.body ], [ %no.0109, %for.body ], [ %no.0109, %for.body ], [ %no.0109, %for.body ]
  %incdec.ptr = getelementptr inbounds i8* %seq.addr.0102, i64 1
  %4 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp = icmp ne i8 %4, 0
  %cmp2 = icmp slt i32 %saw.1, 300
  %or.cond = and i1 %cmp, %cmp2
  br i1 %or.cond, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %cmp63 = icmp sgt i32 %no.2, 0
  br i1 %cmp63, label %return, label %if.else66

if.else66:                                        ; preds = %for.end
  %cmp67 = icmp slt i32 %po.2, 1
  %cmp71 = icmp sgt i32 %na.2, %aa.2
  %or.cond100 = and i1 %cmp67, %cmp71
  br i1 %or.cond100, label %if.then73, label %return

if.then73:                                        ; preds = %if.else66
  %cmp74 = icmp sgt i32 %nu.2, %nt.2
  %. = select i1 %cmp74, i32 2, i32 1
  br label %return

return:                                           ; preds = %entry, %if.else66, %if.then73, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ 3, %if.else66 ], [ %., %if.then73 ], [ 3, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @GCGBinaryToSequence(i8* nocapture %seq, i32 %len) #0 {
entry:
  %sub = add nsw i32 %len, -1
  %cmp46 = icmp sgt i32 %sub, -4
  br i1 %cmp46, label %for.body.lr.ph, label %for.end22

for.body.lr.ph:                                   ; preds = %entry
  %div = sdiv i32 %sub, 4
  %0 = sext i32 %div to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc20
  %indvars.iv52 = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next53, %for.inc20 ]
  %arrayidx = getelementptr inbounds i8* %seq, i64 %indvars.iv52
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %2 = trunc i64 %indvars.iv52 to i32
  %mul = shl nsw i32 %2, 2
  %3 = sext i32 %mul to i64
  br label %for.body3

for.body3:                                        ; preds = %for.body, %sw.epilog
  %indvars.iv = phi i64 [ 3, %for.body ], [ %indvars.iv.next, %sw.epilog ]
  %twobit.044 = phi i8 [ %1, %for.body ], [ %conv19, %sw.epilog ]
  %conv = sext i8 %twobit.044 to i32
  %and = and i32 %conv, 3
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb10
    i32 3, label %sw.bb14
  ]

sw.bb:                                            ; preds = %for.body3
  %4 = add nsw i64 %indvars.iv, %3
  %arrayidx5 = getelementptr inbounds i8* %seq, i64 %4
  store i8 67, i8* %arrayidx5, align 1, !tbaa !1
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body3
  %5 = add nsw i64 %indvars.iv, %3
  %arrayidx9 = getelementptr inbounds i8* %seq, i64 %5
  store i8 84, i8* %arrayidx9, align 1, !tbaa !1
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.body3
  %6 = add nsw i64 %indvars.iv, %3
  %arrayidx13 = getelementptr inbounds i8* %seq, i64 %6
  store i8 65, i8* %arrayidx13, align 1, !tbaa !1
  br label %sw.epilog

sw.bb14:                                          ; preds = %for.body3
  %7 = add nsw i64 %indvars.iv, %3
  %arrayidx17 = getelementptr inbounds i8* %seq, i64 %7
  store i8 71, i8* %arrayidx17, align 1, !tbaa !1
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body3, %sw.bb14, %sw.bb10, %sw.bb6, %sw.bb
  %shr43 = lshr i32 %conv, 2
  %conv19 = trunc i32 %shr43 to i8
  %indvars.iv.next = add i64 %indvars.iv, -1
  %8 = trunc i64 %indvars.iv to i32
  %cmp2 = icmp sgt i32 %8, 0
  br i1 %cmp2, label %for.body3, label %for.inc20

for.inc20:                                        ; preds = %sw.epilog
  %indvars.iv.next53 = add i64 %indvars.iv52, -1
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end22

for.end22:                                        ; preds = %for.inc20, %entry
  %idxprom23 = sext i32 %len to i64
  %arrayidx24 = getelementptr inbounds i8* %seq, i64 %idxprom23
  store i8 0, i8* %arrayidx24, align 1, !tbaa !1
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define i32 @GCGchecksum(i8* nocapture %seq, i32 %len) #0 {
entry:
  %cmp6 = icmp sgt i32 %len, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %chk.08 = phi i32 [ %rem2, %for.body ], [ 0, %entry ]
  %0 = trunc i64 %indvars.iv to i32
  %rem = srem i32 %0, 57
  %add = add nsw i32 %rem, 1
  %arrayidx = getelementptr inbounds i8* %seq, i64 %indvars.iv
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %conv = sext i8 %1 to i32
  %call = tail call i32 @sre_toupper(i32 %conv) #8
  %mul = mul nsw i32 %call, %add
  %add1 = add nsw i32 %mul, %chk.08
  %rem2 = srem i32 %add1, 10000
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %chk.0.lcssa = phi i32 [ 0, %entry ], [ %rem2, %for.body ]
  ret i32 %chk.0.lcssa
}

; Function Attrs: optsize
declare i32 @sre_toupper(i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @GCGMultchecksum(i8** nocapture %seqs, i32 %nseq) #0 {
entry:
  %cmp8 = icmp sgt i32 %nseq, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %chk.09 = phi i32 [ %rem, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %seqs, i64 %indvars.iv
  %0 = load i8** %arrayidx, align 8, !tbaa !3
  %call = tail call i64 @strlen(i8* %0) #9
  %conv = trunc i64 %call to i32
  %call3 = tail call i32 @GCGchecksum(i8* %0, i32 %conv) #7
  %add = add nsw i32 %call3, %chk.09
  %rem = srem i32 %add, 10000
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %chk.0.lcssa = phi i32 [ 0, %entry ], [ %rem, %for.body ]
  ret i32 %chk.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define i32 @GuessAlignmentSeqtype(i8** nocapture %aseq, i32 %nseq) #0 {
entry:
  %cmp29 = icmp sgt i32 %nseq, 0
  br i1 %cmp29, label %for.body, label %if.end

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %nother.034 = phi i32 [ %nother.1, %for.inc ], [ 0, %entry ]
  %namino.033 = phi i32 [ %namino.1, %for.inc ], [ 0, %entry ]
  %ndna.032 = phi i32 [ %ndna.1, %for.inc ], [ 0, %entry ]
  %nrna.031 = phi i32 [ %nrna.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %aseq, i64 %indvars.iv
  %0 = load i8** %arrayidx, align 8, !tbaa !3
  %call = tail call i32 @Seqtype(i8* %0) #7
  switch i32 %call, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %for.body
  %inc = add nsw i32 %nrna.031, 1
  br label %for.inc

sw.bb1:                                           ; preds = %for.body
  %inc2 = add nsw i32 %ndna.032, 1
  br label %for.inc

sw.bb3:                                           ; preds = %for.body
  %inc4 = add nsw i32 %namino.033, 1
  br label %for.inc

sw.default:                                       ; preds = %for.body
  %inc5 = add nsw i32 %nother.034, 1
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %sw.bb1, %sw.bb3, %sw.default
  %nrna.1 = phi i32 [ %nrna.031, %sw.default ], [ %nrna.031, %sw.bb3 ], [ %nrna.031, %sw.bb1 ], [ %inc, %sw.bb ]
  %ndna.1 = phi i32 [ %ndna.032, %sw.default ], [ %ndna.032, %sw.bb3 ], [ %inc2, %sw.bb1 ], [ %ndna.032, %sw.bb ]
  %namino.1 = phi i32 [ %namino.033, %sw.default ], [ %inc4, %sw.bb3 ], [ %namino.033, %sw.bb1 ], [ %namino.033, %sw.bb ]
  %nother.1 = phi i32 [ %inc5, %sw.default ], [ %nother.034, %sw.bb3 ], [ %nother.034, %sw.bb1 ], [ %nother.034, %sw.bb ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %tobool = icmp eq i32 %nother.1, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry, %for.end
  %nrna.0.lcssa41 = phi i32 [ %nrna.1, %for.end ], [ 0, %entry ]
  %ndna.0.lcssa40 = phi i32 [ %ndna.1, %for.end ], [ 0, %entry ]
  %namino.0.lcssa39 = phi i32 [ %namino.1, %for.end ], [ 0, %entry ]
  %cmp7 = icmp eq i32 %namino.0.lcssa39, %nseq
  br i1 %cmp7, label %return, label %if.end9

if.end9:                                          ; preds = %if.end
  %cmp10 = icmp eq i32 %ndna.0.lcssa40, %nseq
  br i1 %cmp10, label %return, label %if.end12

if.end12:                                         ; preds = %if.end9
  %cmp13 = icmp eq i32 %nrna.0.lcssa41, %nseq
  br i1 %cmp13, label %return, label %if.end15

if.end15:                                         ; preds = %if.end12
  %cmp16 = icmp eq i32 %namino.0.lcssa39, 0
  %. = select i1 %cmp16, i32 2, i32 3
  br label %return

return:                                           ; preds = %if.end15, %if.end12, %if.end9, %if.end, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ 3, %if.end ], [ 1, %if.end9 ], [ 2, %if.end12 ], [ %., %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @WriteSimpleFASTA(%struct._IO_FILE* nocapture %fp, i8* nocapture %seq, i8* %name, i8* %desc) #0 {
entry:
  %buf = alloca [61 x i8], align 16
  %0 = getelementptr inbounds [61 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 61, i8* %0) #5
  %call = call i64 @strlen(i8* %seq) #9
  %conv = trunc i64 %call to i32
  %arrayidx = getelementptr inbounds [61 x i8]* %buf, i64 0, i64 60
  store i8 0, i8* %arrayidx, align 4, !tbaa !1
  %cmp = icmp ne i8* %desc, null
  %cond = select i1 %cmp, i8* %desc, i8* getelementptr inbounds ([1 x i8]* @.str40, i64 0, i64 0)
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str39, i64 0, i64 0), i8* %name, i8* %cond) #8
  %cmp313 = icmp sgt i32 %conv, 0
  br i1 %cmp313, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %add.ptr = getelementptr inbounds i8* %seq, i64 %indvars.iv
  %call5 = call i8* @strncpy(i8* %0, i8* %add.ptr, i64 60) #8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* %0) #8
  %indvars.iv.next = add i64 %indvars.iv, 60
  %1 = trunc i64 %indvars.iv.next to i32
  %cmp3 = icmp slt i32 %1, %conv
  br i1 %cmp3, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  call void @llvm.lifetime.end(i64 61, i8* %0) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define i32 @WriteSeq(%struct._IO_FILE* %outf, i32 %outform, i8* %seq, %struct.seqinfo_s* %sqinfo) #0 {
entry:
  %endstr = alloca [10 x i8], align 4
  %s = alloca [100 x i8], align 16
  %ss = alloca [100 x i8], align 16
  %0 = getelementptr inbounds [100 x i8]* %s, i64 0, i64 0
  call void @llvm.lifetime.start(i64 100, i8* %0) #5
  %1 = getelementptr inbounds [100 x i8]* %ss, i64 0, i64 0
  call void @llvm.lifetime.start(i64 100, i8* %1) #5
  %flags = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 0
  %2 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %2, 64
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %len = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 5
  %3 = load i32* %len, align 4, !tbaa !0
  %conv = sext i32 %3 to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @strlen(i8* %seq) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ]
  %conv1 = trunc i64 %cond to i32
  %cmp = icmp sgt i32 %outform, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([62 x i8]* @.str42, i64 0, i64 0)) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %arraydecay = getelementptr inbounds [10 x i8]* %endstr, i64 0, i64 0
  store i8 0, i8* %arraydecay, align 4
  %call4 = call i32 @GCGchecksum(i8* %seq, i32 %conv1) #7
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
  ]

sw.bb:                                            ; preds = %if.end
  %4 = bitcast [10 x i8]* %endstr to i16*
  store i16 10, i16* %4, align 4
  br label %for.cond.preheader

sw.bb7:                                           ; preds = %if.end
  %arraydecay8 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([28 x i8]* @.str44, i64 0, i64 0), i8* %arraydecay8, i32 %conv1) #8
  %5 = load i32* %flags, align 4, !tbaa !0
  %and11 = and i32 %5, 4
  %tobool12 = icmp eq i32 %and11, 0
  %arraydecay14 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 3, i64 0
  %.arraydecay14 = select i1 %tobool12, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* %arraydecay14
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0), i8* %.arraydecay14) #8
  %6 = load i32* %flags, align 4, !tbaa !0
  %and20 = and i32 %6, 8
  %tobool21 = icmp eq i32 %and20, 0
  %arraydecay23 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0
  %cond26 = select i1 %tobool21, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* %arraydecay23
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0), i8* %cond26) #8
  %7 = load i32* %flags, align 4, !tbaa !0
  %and29 = and i32 %7, 2
  %tobool30 = icmp eq i32 %and29, 0
  %arraydecay32 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 2, i64 0
  %.arraydecay32 = select i1 %tobool30, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* %arraydecay32
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([16 x i8]* @.str48, i64 0, i64 0), i8* %.arraydecay32) #8
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str49, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %outf)
  %9 = bitcast [10 x i8]* %endstr to i32*
  store i32 3092234, i32* %9, align 4
  br label %for.cond.preheader

sw.bb40:                                          ; preds = %if.end
  %arraydecay42 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([30 x i8]* @.str51, i64 0, i64 0), i8* %arraydecay42, i32 %conv1) #8
  %10 = load i32* %flags, align 4, !tbaa !0
  %and45 = and i32 %10, 8
  %tobool46 = icmp eq i32 %and45, 0
  %arraydecay49 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0
  %.arraydecay49 = select i1 %tobool46, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), i8* %arraydecay49
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* %.arraydecay49) #8
  br label %for.cond.preheader

sw.bb54:                                          ; preds = %if.end
  %11 = load i32* %flags, align 4, !tbaa !0
  %and56 = and i32 %11, 2
  %tobool57 = icmp ne i32 %and56, 0
  %id59 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 2
  %name62 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1
  %id59.sink = select i1 %tobool57, [64 x i8]* %id59, [64 x i8]* %name62
  %arraydecay60 = getelementptr inbounds [64 x i8]* %id59.sink, i64 0, i64 0
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([19 x i8]* @.str53, i64 0, i64 0), i8* %arraydecay60) #8
  %12 = load i32* %flags, align 4, !tbaa !0
  %and68 = and i32 %12, 8
  %tobool69 = icmp eq i32 %and68, 0
  %arraydecay72 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0
  %.arraydecay72 = select i1 %tobool69, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), i8* %arraydecay72
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([19 x i8]* @.str54, i64 0, i64 0), i8* %.arraydecay72) #8
  %13 = load i32* %flags, align 4, !tbaa !0
  %and78 = and i32 %13, 4
  %tobool79 = icmp eq i32 %and78, 0
  %arraydecay82 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 3, i64 0
  %cond85 = select i1 %tobool79, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), i8* %arraydecay82
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([19 x i8]* @.str55, i64 0, i64 0), i8* %cond85) #8
  %len87 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 5
  %14 = load i32* %len87, align 4, !tbaa !0
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([66 x i8]* @.str56, i64 0, i64 0), i32 %14, i32 %call4) #8
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str57, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %outf)
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([71 x i8]* @.str58, i64 0, i64 0), i64 70, i64 1, %struct._IO_FILE* %outf)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8]* @.str59, i64 0, i64 0), i64 5, i32 1, i1 false)
  br label %for.cond.preheader

sw.bb93:                                          ; preds = %if.end
  %arraydecay95 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([9 x i8]* @.str60, i64 0, i64 0), i8* %arraydecay95) #8
  %17 = load i32* %flags, align 4, !tbaa !0
  %and98 = and i32 %17, 310
  %tobool99 = icmp eq i32 %and98, 0
  br i1 %tobool99, label %if.end141, label %if.then100

if.then100:                                       ; preds = %sw.bb93
  %and102 = and i32 %17, 2
  %tobool103 = icmp eq i32 %and102, 0
  %arraydecay106 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 2, i64 0
  %.arraydecay106 = select i1 %tobool103, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), i8* %arraydecay106
  %and111 = and i32 %17, 4
  %tobool112 = icmp eq i32 %and111, 0
  %arraydecay115 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 3, i64 0
  %cond118 = select i1 %tobool112, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), i8* %arraydecay115
  %and120 = and i32 %17, 16
  %tobool121 = icmp eq i32 %and120, 0
  br i1 %tobool121, label %cond.end124, label %cond.true122

cond.true122:                                     ; preds = %if.then100
  %start = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 6
  %18 = load i32* %start, align 4, !tbaa !0
  br label %cond.end124

cond.end124:                                      ; preds = %if.then100, %cond.true122
  %cond125 = phi i32 [ %18, %cond.true122 ], [ 0, %if.then100 ]
  %and127 = and i32 %17, 32
  %tobool128 = icmp eq i32 %and127, 0
  br i1 %tobool128, label %cond.end131, label %cond.true129

cond.true129:                                     ; preds = %cond.end124
  %stop = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 7
  %19 = load i32* %stop, align 4, !tbaa !0
  br label %cond.end131

cond.end131:                                      ; preds = %cond.end124, %cond.true129
  %cond132 = phi i32 [ %19, %cond.true129 ], [ 0, %cond.end124 ]
  %and134 = and i32 %17, 256
  %tobool135 = icmp eq i32 %and134, 0
  br i1 %tobool135, label %cond.end138, label %cond.true136

cond.true136:                                     ; preds = %cond.end131
  %olen = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 8
  %20 = load i32* %olen, align 4, !tbaa !0
  br label %cond.end138

cond.end138:                                      ; preds = %cond.end131, %cond.true136
  %cond139 = phi i32 [ %20, %cond.true136 ], [ 0, %cond.end131 ]
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([23 x i8]* @.str61, i64 0, i64 0), i8* %.arraydecay106, i8* %cond118, i32 %cond125, i32 %cond132, i32 %cond139) #8
  %.pre = load i32* %flags, align 4, !tbaa !0
  br label %if.end141

if.end141:                                        ; preds = %sw.bb93, %cond.end138
  %21 = phi i32 [ %17, %sw.bb93 ], [ %.pre, %cond.end138 ]
  %and143 = and i32 %21, 8
  %tobool144 = icmp eq i32 %and143, 0
  br i1 %tobool144, label %if.end149, label %if.then145

if.then145:                                       ; preds = %if.end141
  %arraydecay147 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0
  %call148 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([9 x i8]* @.str62, i64 0, i64 0), i8* %arraydecay147) #8
  %.pre521 = load i32* %flags, align 4, !tbaa !0
  br label %if.end149

if.end149:                                        ; preds = %if.end141, %if.then145
  %22 = phi i32 [ %21, %if.end141 ], [ %.pre521, %if.then145 ]
  %and151 = and i32 %22, 512
  %tobool152 = icmp eq i32 %and151, 0
  br i1 %tobool152, label %if.else, label %if.then153

if.then153:                                       ; preds = %if.end149
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str63, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %outf)
  br label %if.end156

if.else:                                          ; preds = %if.end149
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str64, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %outf)
  br label %if.end156

if.end156:                                        ; preds = %if.else, %if.then153
  %dostruc.0 = phi i32 [ 1, %if.then153 ], [ 0, %if.else ]
  %25 = bitcast [10 x i8]* %endstr to i32*
  store i32 2829066, i32* %25, align 4
  br label %for.cond.preheader

sw.bb159:                                         ; preds = %if.end
  %26 = load i32* %flags, align 4, !tbaa !0
  %and161 = and i32 %26, 2
  %tobool162 = icmp ne i32 %and161, 0
  %id164 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 2
  %name167 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1
  %id164.sink = select i1 %tobool162, [64 x i8]* %id164, [64 x i8]* %name167
  %arraydecay165 = getelementptr inbounds [64 x i8]* %id164.sink, i64 0, i64 0
  %call171 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([9 x i8]* @.str66, i64 0, i64 0), i8* %arraydecay165) #8
  %27 = load i32* %flags, align 4, !tbaa !0
  %and173 = and i32 %27, 4
  %tobool174 = icmp eq i32 %and173, 0
  %arraydecay177 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 3, i64 0
  %.arraydecay177 = select i1 %tobool174, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), i8* %arraydecay177
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0), i8* %.arraydecay177) #8
  %28 = load i32* %flags, align 4, !tbaa !0
  %and183 = and i32 %28, 8
  %tobool184 = icmp eq i32 %and183, 0
  %arraydecay187 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0
  %cond190 = select i1 %tobool184, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), i8* %arraydecay187
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([9 x i8]* @.str68, i64 0, i64 0), i8* %cond190) #8
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([22 x i8]* @.str69, i64 0, i64 0), i32 %conv1) #8
  %29 = bitcast [10 x i8]* %endstr to i32*
  store i32 3092234, i32* %29, align 4
  br label %for.cond.preheader

sw.bb195:                                         ; preds = %if.end
  %arraydecay197 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0
  %call198 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* %arraydecay197) #8
  %30 = load i32* %flags, align 4, !tbaa !0
  %and200 = and i32 %30, 4
  %tobool201 = icmp eq i32 %and200, 0
  br i1 %tobool201, label %if.end206, label %if.then202

if.then202:                                       ; preds = %sw.bb195
  %arraydecay204 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 3, i64 0
  %call205 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0), i8* %arraydecay204) #8
  %.pre522 = load i32* %flags, align 4, !tbaa !0
  br label %if.end206

if.end206:                                        ; preds = %sw.bb195, %if.then202
  %31 = phi i32 [ %30, %sw.bb195 ], [ %.pre522, %if.then202 ]
  %and208 = and i32 %31, 8
  %tobool209 = icmp eq i32 %and208, 0
  br i1 %tobool209, label %if.end214, label %if.then210

if.then210:                                       ; preds = %if.end206
  %arraydecay212 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0
  %call213 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0), i8* %arraydecay212) #8
  br label %if.end214

if.end214:                                        ; preds = %if.end206, %if.then210
  %call217 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([44 x i8]* @.str70, i64 0, i64 0), i8* %arraydecay197, i32 %conv1, i32 %call4) #8
  %32 = bitcast [10 x i8]* %endstr to i16*
  store i16 10, i16* %32, align 4
  br label %for.cond.preheader

sw.bb220:                                         ; preds = %if.end
  %33 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str71, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %outf)
  %arraydecay223 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0
  %call224 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([46 x i8]* @.str72, i64 0, i64 0), i8* %arraydecay223, i32 %conv1, i32 %call4) #8
  %34 = bitcast [10 x i8]* %endstr to i32*
  store i32 3092234, i32* %34, align 4
  br label %for.cond.preheader

sw.bb227:                                         ; preds = %if.end
  %arraydecay230 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0
  %35 = load i32* %flags, align 4, !tbaa !0
  %and232 = and i32 %35, 8
  %tobool233 = icmp eq i32 %and232, 0
  %arraydecay236 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0
  %.arraydecay236 = select i1 %tobool233, i8* getelementptr inbounds ([1 x i8]* @.str40, i64 0, i64 0), i8* %arraydecay236
  %call240 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([8 x i8]* @.str73, i64 0, i64 0), i8* %arraydecay230, i8* %.arraydecay236) #8
  %call243 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* %arraydecay230) #8
  %36 = bitcast [10 x i8]* %endstr to i16*
  store i16 49, i16* %36, align 4
  call void @s2upper(i8* %seq) #8
  br label %for.cond.preheader

sw.bb246:                                         ; preds = %if.end
  %arraydecay248 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0
  %37 = load i32* %flags, align 4, !tbaa !0
  %and250 = and i32 %37, 8
  %tobool251 = icmp eq i32 %and250, 0
  %arraydecay254 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0
  %.arraydecay254 = select i1 %tobool251, i8* getelementptr inbounds ([1 x i8]* @.str40, i64 0, i64 0), i8* %arraydecay254
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([8 x i8]* @.str39, i64 0, i64 0), i8* %arraydecay248, i8* %.arraydecay254) #8
  br label %for.cond.preheader

for.cond.critedge:                                ; preds = %if.end
  %arraydecay230.c = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 1, i64 0
  %38 = load i32* %flags, align 4, !tbaa !0
  %and232.c = and i32 %38, 8
  %tobool233.c = icmp eq i32 %and232.c, 0
  %arraydecay236.c = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 4, i64 0
  %.arraydecay236.c = select i1 %tobool233.c, i8* getelementptr inbounds ([1 x i8]* @.str40, i64 0, i64 0), i8* %arraydecay236.c
  %call240.c = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([8 x i8]* @.str73, i64 0, i64 0), i8* %arraydecay230.c, i8* %.arraydecay236.c) #8
  %call243.c = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* %arraydecay230.c) #8
  %39 = bitcast [10 x i8]* %endstr to i16*
  store i16 49, i16* %39, align 4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.bb227, %sw.bb246, %if.end, %sw.bb220, %if.end214, %sw.bb159, %if.end156, %sw.bb54, %sw.bb40, %sw.bb7, %sw.bb, %for.cond.critedge
  %numline.0514.ph = phi i1 [ true, %for.cond.critedge ], [ true, %sw.bb ], [ false, %sw.bb7 ], [ true, %sw.bb40 ], [ false, %sw.bb54 ], [ false, %if.end156 ], [ true, %sw.bb159 ], [ false, %if.end214 ], [ true, %sw.bb220 ], [ true, %if.end ], [ true, %sw.bb246 ], [ true, %sw.bb227 ]
  %dostruc.1513.ph = phi i32 [ 0, %for.cond.critedge ], [ 0, %sw.bb ], [ 0, %sw.bb7 ], [ 0, %sw.bb40 ], [ 0, %sw.bb54 ], [ %dostruc.0, %if.end156 ], [ 0, %sw.bb159 ], [ 0, %if.end214 ], [ 0, %sw.bb220 ], [ 0, %if.end ], [ 0, %sw.bb246 ], [ 0, %sw.bb227 ]
  %tab.0512.ph = phi i32 [ 0, %for.cond.critedge ], [ 0, %sw.bb ], [ 0, %sw.bb7 ], [ 0, %sw.bb40 ], [ 0, %sw.bb54 ], [ 0, %if.end156 ], [ 5, %sw.bb159 ], [ 0, %if.end214 ], [ 0, %sw.bb220 ], [ 0, %if.end ], [ 0, %sw.bb246 ], [ 0, %sw.bb227 ]
  %width.0511.ph = phi i32 [ 50, %for.cond.critedge ], [ 50, %sw.bb ], [ 50, %sw.bb7 ], [ 50, %sw.bb40 ], [ 30, %sw.bb54 ], [ 50, %if.end156 ], [ 50, %sw.bb159 ], [ 50, %if.end214 ], [ 50, %sw.bb220 ], [ 50, %if.end ], [ 50, %sw.bb246 ], [ 50, %sw.bb227 ]
  %spacer.0510.ph = phi i32 [ 0, %for.cond.critedge ], [ 0, %sw.bb ], [ 11, %sw.bb7 ], [ 0, %sw.bb40 ], [ 2, %sw.bb54 ], [ 0, %if.end156 ], [ 11, %sw.bb159 ], [ 11, %if.end214 ], [ 0, %sw.bb220 ], [ 0, %if.end ], [ 0, %sw.bb246 ], [ 0, %sw.bb227 ]
  %cmp293 = icmp eq i32 %spacer.0510.ph, 0
  %ss311 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 0, i32 10
  %cmp287515 = icmp eq i32 %tab.0512.ph, 0
  %tobool332 = icmp eq i32 %dostruc.1513.ph, 0
  br label %for.cond.outer

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
  %41 = trunc i64 %indvars.iv to i32
  %cmp273 = icmp slt i32 %41, %conv1
  br i1 %cmp273, label %for.body, label %for.end373

for.body:                                         ; preds = %for.cond
  %cmp275 = icmp slt i32 %l1.0, 0
  br i1 %cmp275, label %if.end292, label %if.else278

if.else278:                                       ; preds = %for.body
  %cmp279 = icmp eq i32 %l1.0, 0
  br i1 %cmp279, label %if.then281, label %if.end292

if.then281:                                       ; preds = %if.else278
  br i1 %numline.0514.ph, label %for.cond286.preheader, label %if.then283

if.then283:                                       ; preds = %if.then281
  %call284 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([5 x i8]* @.str75, i64 0, i64 0), i32 %ibase.0.ph) #8
  br label %for.cond286.preheader

for.cond286.preheader:                            ; preds = %if.then281, %if.then283
  br i1 %cmp287515, label %if.end292, label %for.body289

for.body289:                                      ; preds = %for.cond286.preheader, %for.body289
  %j.0516 = phi i32 [ %inc, %for.body289 ], [ 0, %for.cond286.preheader ]
  %call290 = call i32 @fputc(i32 32, %struct._IO_FILE* %outf) #8
  %inc = add nsw i32 %j.0516, 1
  %cmp287 = icmp slt i32 %inc, %tab.0512.ph
  br i1 %cmp287, label %for.body289, label %if.end292

if.end292:                                        ; preds = %for.cond286.preheader, %for.body289, %for.body, %if.else278
  %l1.1 = phi i32 [ %l1.0, %if.else278 ], [ 0, %for.body ], [ 0, %for.body289 ], [ 0, %for.cond286.preheader ]
  br i1 %cmp293, label %if.end301, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end292
  %add = add nsw i32 %l.0, 1
  %rem = srem i32 %add, %spacer.0510.ph
  %cmp295 = icmp eq i32 %rem, 1
  br i1 %cmp295, label %if.then297, label %if.end301

if.then297:                                       ; preds = %land.lhs.true
  %idxprom = sext i32 %l.0 to i64
  %arrayidx = getelementptr inbounds [100 x i8]* %s, i64 0, i64 %idxprom
  store i8 32, i8* %arrayidx, align 1, !tbaa !1
  %arrayidx299 = getelementptr inbounds [100 x i8]* %ss, i64 0, i64 %idxprom
  store i8 32, i8* %arrayidx299, align 1, !tbaa !1
  br label %if.end301

if.end301:                                        ; preds = %land.lhs.true, %if.end292, %if.then297
  %l.1 = phi i32 [ %add, %if.then297 ], [ %l.0, %if.end292 ], [ %l.0, %land.lhs.true ]
  %arrayidx303 = getelementptr inbounds i8* %seq, i64 %indvars.iv
  %42 = load i8* %arrayidx303, align 1, !tbaa !1
  %idxprom304 = sext i32 %l.1 to i64
  %arrayidx305 = getelementptr inbounds [100 x i8]* %s, i64 0, i64 %idxprom304
  store i8 %42, i8* %arrayidx305, align 1, !tbaa !1
  %43 = load i32* %flags, align 4, !tbaa !0
  %and307 = and i32 %43, 512
  %tobool308 = icmp eq i32 %and307, 0
  br i1 %tobool308, label %cond.end315, label %cond.true309

cond.true309:                                     ; preds = %if.end301
  %44 = load i8** %ss311, align 8, !tbaa !3
  %arrayidx312 = getelementptr inbounds i8* %44, i64 %indvars.iv
  %45 = load i8* %arrayidx312, align 1, !tbaa !1
  br label %cond.end315

cond.end315:                                      ; preds = %if.end301, %cond.true309
  %cond316 = phi i8 [ %45, %cond.true309 ], [ 46, %if.end301 ]
  %arrayidx319 = getelementptr inbounds [100 x i8]* %ss, i64 0, i64 %idxprom304
  store i8 %cond316, i8* %arrayidx319, align 1, !tbaa !1
  %inc320 = add nsw i32 %l.1, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc321 = add nsw i32 %i.0, 1
  %inc322 = add nsw i32 %l1.1, 1
  %cmp323 = icmp eq i32 %inc322, %width.0511.ph
  %46 = trunc i64 %indvars.iv.next to i32
  %cmp325 = icmp eq i32 %46, %conv1
  %or.cond = or i1 %cmp323, %cmp325
  br i1 %or.cond, label %if.then327, label %for.cond

if.then327:                                       ; preds = %cond.end315
  %idxprom328 = sext i32 %inc320 to i64
  %arrayidx329 = getelementptr inbounds [100 x i8]* %ss, i64 0, i64 %idxprom328
  store i8 0, i8* %arrayidx329, align 1, !tbaa !1
  %arrayidx331 = getelementptr inbounds [100 x i8]* %s, i64 0, i64 %idxprom328
  store i8 0, i8* %arrayidx331, align 1, !tbaa !1
  br i1 %tobool332, label %if.else358, label %if.then333

if.then333:                                       ; preds = %if.then327
  %call335 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* %0) #8
  br i1 %numline.0514.ph, label %for.cond340.preheader, label %if.then337

if.then337:                                       ; preds = %if.then333
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str76, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %outf)
  br label %for.cond340.preheader

for.cond340.preheader:                            ; preds = %if.then333, %if.then337
  br i1 %cmp287515, label %for.end347, label %for.body343

for.body343:                                      ; preds = %for.cond340.preheader, %for.body343
  %j.1518 = phi i32 [ %inc346, %for.body343 ], [ 0, %for.cond340.preheader ]
  %call344 = call i32 @fputc(i32 32, %struct._IO_FILE* %outf) #8
  %inc346 = add nsw i32 %j.1518, 1
  %cmp341 = icmp slt i32 %inc346, %tab.0512.ph
  br i1 %cmp341, label %for.body343, label %for.end347

for.end347:                                       ; preds = %for.body343, %for.cond340.preheader
  br i1 %cmp325, label %if.then350, label %if.else354

if.then350:                                       ; preds = %for.end347
  %call353 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([6 x i8]* @.str77, i64 0, i64 0), i8* %1, i8* %arraydecay) #8
  br label %if.end369

if.else354:                                       ; preds = %for.end347
  %call356 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* %1) #8
  br label %if.end369

if.else358:                                       ; preds = %if.then327
  br i1 %cmp325, label %if.then361, label %if.else365

if.then361:                                       ; preds = %if.else358
  %call364 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([6 x i8]* @.str77, i64 0, i64 0), i8* %0, i8* %arraydecay) #8
  br label %if.end369

if.else365:                                       ; preds = %if.else358
  %call367 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i8* %0) #8
  br label %if.end369

if.end369:                                        ; preds = %if.then361, %if.else365, %if.then350, %if.else354
  %inc370 = add nsw i32 %lines.0.ph, 1
  %add371 = add nsw i32 %i.0, 2
  br label %for.cond.outer

for.end373:                                       ; preds = %for.cond
  call void @llvm.lifetime.end(i64 100, i8* %1) #5
  call void @llvm.lifetime.end(i64 100, i8* %0) #5
  ret i32 %lines.0.ph
}

; Function Attrs: optsize
declare void @s2upper(i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @ReadMultipleRseqs(i8* %seqfile, i32 %fformat, i8*** nocapture %ret_rseqs, %struct.seqinfo_s** nocapture %ret_sqinfo, i32* nocapture %ret_num) #0 {
entry:
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str78, i64 0, i64 0), i32 1732, i64 128) #8
  %call3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str78, i64 0, i64 0), i32 1733, i64 5760) #8
  %call.i = tail call fastcc %struct.ReadSeqVars* @seqfile_open(i8* %seqfile, i32 %fformat, i8* null, i32 -1) #8
  %cmp = icmp eq %struct.ReadSeqVars* %call.i, null
  br i1 %cmp, label %return, label %while.cond.outer

while.cond.outer:                                 ; preds = %entry, %if.then11
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %if.then11 ], [ 16, %entry ]
  %sqinfo.0.ph.in = phi i8* [ %call17, %if.then11 ], [ %call3, %entry ]
  %rseqs.0.ph.in = phi i8* [ %call14, %if.then11 ], [ %call, %entry ]
  %num.0.ph = phi i32 [ %inc, %if.then11 ], [ 0, %entry ]
  %rseqs.0.ph = bitcast i8* %rseqs.0.ph.in to i8**
  %sqinfo.0.ph = bitcast i8* %sqinfo.0.ph.in to %struct.seqinfo_s*
  %0 = sext i32 %num.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %indvars.iv = phi i64 [ %0, %while.cond.outer ], [ %indvars.iv.next, %while.body ]
  %num.0 = phi i32 [ %num.0.ph, %while.cond.outer ], [ %inc, %while.body ]
  %arrayidx = getelementptr inbounds i8** %rseqs.0.ph, i64 %indvars.iv
  %arrayidx7 = getelementptr inbounds %struct.seqinfo_s* %sqinfo.0.ph, i64 %indvars.iv
  %call8 = tail call i32 @ReadSeq(%struct.ReadSeqVars* %call.i, i32 undef, i8** %arrayidx, %struct.seqinfo_s* %arrayidx7) #7
  %tobool = icmp eq i32 %call8, 0
  br i1 %tobool, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %num.0, 1
  %1 = trunc i64 %indvars.iv.next to i32
  %2 = trunc i64 %indvars.iv36 to i32
  %cmp9 = icmp eq i32 %1, %2
  br i1 %cmp9, label %if.then11, label %while.cond

if.then11:                                        ; preds = %while.body
  %indvars.iv.next37 = add i64 %indvars.iv36, 16
  %mul13 = shl nsw i64 %indvars.iv.next37, 3
  %call14 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([50 x i8]* @.str78, i64 0, i64 0), i32 1742, i8* %rseqs.0.ph.in, i64 %mul13) #8
  %mul16 = mul i64 %indvars.iv.next37, 360
  %call17 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([50 x i8]* @.str78, i64 0, i64 0), i32 1743, i8* %sqinfo.0.ph.in, i64 %mul16) #8
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  tail call void @SeqfileClose(%struct.ReadSeqVars* %call.i) #7
  store i8** %rseqs.0.ph, i8*** %ret_rseqs, align 8, !tbaa !3
  store %struct.seqinfo_s* %sqinfo.0.ph, %struct.seqinfo_s** %ret_sqinfo, align 8, !tbaa !3
  store i32 %num.0, i32* %ret_num, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %while.end
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define i32 @String2SeqfileFormat(i8* %s) #0 {
entry:
  %cmp = icmp eq i8* %s, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @sre_strdup(i8* %s, i32 -1) #8
  tail call void @s2upper(i8* %call) #8
  %call1 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([6 x i8]* @.str79, i64 0, i64 0)) #9
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.end93, label %if.else

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([8 x i8]* @.str80, i64 0, i64 0)) #9
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.end93, label %if.else7

if.else7:                                         ; preds = %if.else
  %call8 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([5 x i8]* @.str81, i64 0, i64 0)) #9
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.end93, label %if.else11

if.else11:                                        ; preds = %if.else7
  %call12 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([4 x i8]* @.str82, i64 0, i64 0)) #9
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.end93, label %if.else15

if.else15:                                        ; preds = %if.else11
  %call16 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([8 x i8]* @.str83, i64 0, i64 0)) #9
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.end93, label %if.else19

if.else19:                                        ; preds = %if.else15
  %call20 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([4 x i8]* @.str84, i64 0, i64 0)) #9
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.end93, label %if.else23

if.else23:                                        ; preds = %if.else19
  %call24 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([3 x i8]* @.str85, i64 0, i64 0)) #9
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.end93, label %if.else27

if.else27:                                        ; preds = %if.else23
  %call28 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([8 x i8]* @.str86, i64 0, i64 0)) #9
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.end93, label %if.else31

if.else31:                                        ; preds = %if.else27
  %call32 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([6 x i8]* @.str87, i64 0, i64 0)) #9
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.end93, label %if.else35

if.else35:                                        ; preds = %if.else31
  %call36 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([6 x i8]* @.str88, i64 0, i64 0)) #9
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.end93, label %if.else39

if.else39:                                        ; preds = %if.else35
  %call40 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([4 x i8]* @.str89, i64 0, i64 0)) #9
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.end93, label %if.else43

if.else43:                                        ; preds = %if.else39
  %call44 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([6 x i8]* @.str90, i64 0, i64 0)) #9
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.end93, label %if.else47

if.else47:                                        ; preds = %if.else43
  %call48 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([10 x i8]* @.str91, i64 0, i64 0)) #9
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.end93, label %if.else51

if.else51:                                        ; preds = %if.else47
  %call52 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([6 x i8]* @.str92, i64 0, i64 0)) #9
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.end93, label %if.else55

if.else55:                                        ; preds = %if.else51
  %call56 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([4 x i8]* @.str93, i64 0, i64 0)) #9
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.end93, label %if.else59

if.else59:                                        ; preds = %if.else55
  %call60 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0)) #9
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.end93, label %if.else63

if.else63:                                        ; preds = %if.else59
  %call64 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([4 x i8]* @.str94, i64 0, i64 0)) #9
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.end93, label %if.else67

if.else67:                                        ; preds = %if.else63
  %call68 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([7 x i8]* @.str95, i64 0, i64 0)) #9
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %if.end93, label %if.else71

if.else71:                                        ; preds = %if.else67
  %call72 = tail call i32 @strcmp(i8* %call, i8* getelementptr inbounds ([4 x i8]* @.str96, i64 0, i64 0)) #9
  %cmp73 = icmp eq i32 %call72, 0
  %. = select i1 %cmp73, i32 107, i32 0
  br label %if.end93

if.end93:                                         ; preds = %if.else71, %if.else67, %if.else63, %if.else59, %if.else55, %if.else51, %if.else47, %if.else43, %if.else39, %if.else35, %if.else31, %if.else27, %if.else23, %if.else19, %if.else15, %if.else11, %if.else7, %if.else, %if.end
  %code.0 = phi i32 [ 7, %if.end ], [ 2, %if.else ], [ 4, %if.else7 ], [ 5, %if.else11 ], [ 16, %if.else15 ], [ 13, %if.else19 ], [ 1, %if.else23 ], [ 6, %if.else27 ], [ 9, %if.else31 ], [ 8, %if.else35 ], [ 12, %if.else39 ], [ 14, %if.else43 ], [ 101, %if.else47 ], [ 102, %if.else51 ], [ 103, %if.else55 ], [ 104, %if.else59 ], [ 105, %if.else63 ], [ 106, %if.else67 ], [ %., %if.else71 ]
  tail call void @free(i8* %call) #8
  br label %return

return:                                           ; preds = %entry, %if.end93
  %retval.0 = phi i32 [ %code.0, %if.end93 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i8* @SeqfileFormat2String(i32 %code) #0 {
entry:
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
  ]

sw.bb1:                                           ; preds = %entry
  br label %return

sw.bb2:                                           ; preds = %entry
  br label %return

sw.bb3:                                           ; preds = %entry
  br label %return

sw.bb4:                                           ; preds = %entry
  br label %return

sw.bb5:                                           ; preds = %entry
  br label %return

sw.bb6:                                           ; preds = %entry
  br label %return

sw.bb7:                                           ; preds = %entry
  br label %return

sw.bb8:                                           ; preds = %entry
  br label %return

sw.bb9:                                           ; preds = %entry
  br label %return

sw.bb10:                                          ; preds = %entry
  br label %return

sw.bb11:                                          ; preds = %entry
  br label %return

sw.bb12:                                          ; preds = %entry
  br label %return

sw.bb13:                                          ; preds = %entry
  br label %return

sw.bb14:                                          ; preds = %entry
  br label %return

sw.bb15:                                          ; preds = %entry
  br label %return

sw.bb16:                                          ; preds = %entry
  br label %return

sw.bb17:                                          ; preds = %entry
  br label %return

sw.bb18:                                          ; preds = %entry
  br label %return

sw.bb19:                                          ; preds = %entry
  br label %return

sw.default:                                       ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([38 x i8]* @.str109, i64 0, i64 0)) #8
  br label %return

return:                                           ; preds = %entry, %sw.default, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %retval.0 = phi i8* [ null, %sw.default ], [ getelementptr inbounds ([4 x i8]* @.str96, i64 0, i64 0), %sw.bb19 ], [ getelementptr inbounds ([7 x i8]* @.str108, i64 0, i64 0), %sw.bb18 ], [ getelementptr inbounds ([4 x i8]* @.str107, i64 0, i64 0), %sw.bb17 ], [ getelementptr inbounds ([8 x i8]* @.str106, i64 0, i64 0), %sw.bb16 ], [ getelementptr inbounds ([4 x i8]* @.str93, i64 0, i64 0), %sw.bb15 ], [ getelementptr inbounds ([6 x i8]* @.str92, i64 0, i64 0), %sw.bb14 ], [ getelementptr inbounds ([10 x i8]* @.str105, i64 0, i64 0), %sw.bb13 ], [ getelementptr inbounds ([6 x i8]* @.str90, i64 0, i64 0), %sw.bb12 ], [ getelementptr inbounds ([4 x i8]* @.str89, i64 0, i64 0), %sw.bb11 ], [ getelementptr inbounds ([6 x i8]* @.str104, i64 0, i64 0), %sw.bb10 ], [ getelementptr inbounds ([17 x i8]* @.str103, i64 0, i64 0), %sw.bb9 ], [ getelementptr inbounds ([11 x i8]* @.str102, i64 0, i64 0), %sw.bb8 ], [ getelementptr inbounds ([16 x i8]* @.str101, i64 0, i64 0), %sw.bb7 ], [ getelementptr inbounds ([4 x i8]* @.str100, i64 0, i64 0), %sw.bb6 ], [ getelementptr inbounds ([17 x i8]* @.str99, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([4 x i8]* @.str82, i64 0, i64 0), %sw.bb4 ], [ getelementptr inbounds ([5 x i8]* @.str81, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([8 x i8]* @.str98, i64 0, i64 0), %sw.bb2 ], [ getelementptr inbounds ([6 x i8]* @.str79, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([8 x i8]* @.str97, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.seqinfo_s* @MSAToSqinfo(%struct.msa_struct* %msa) #0 {
entry:
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %0 = load i32* %nseq, align 4, !tbaa !0
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 360
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str78, i64 0, i64 0), i32 1857, i64 %mul) #8
  %1 = bitcast i8* %call to %struct.seqinfo_s*
  %2 = load i32* %nseq, align 4, !tbaa !0
  %cmp116 = icmp sgt i32 %2, 0
  br i1 %cmp116, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17
  %aseq61 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %alen47 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end59
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end59 ]
  %arrayidx = getelementptr inbounds %struct.seqinfo_s* %1, i64 %indvars.iv
  %flags = getelementptr inbounds %struct.seqinfo_s* %arrayidx, i64 0, i32 0
  store i32 0, i32* %flags, align 4, !tbaa !0
  %3 = load i8*** %sqname, align 8, !tbaa !3
  %arrayidx6 = getelementptr inbounds i8** %3, i64 %indvars.iv
  %4 = load i8** %arrayidx6, align 8, !tbaa !3
  %call7 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx, i8* %4, i32 1) #7
  %5 = trunc i64 %indvars.iv to i32
  %call10 = tail call i8* @MSAGetSeqAccession(%struct.msa_struct* %msa, i32 %5) #8
  %call11 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx, i8* %call10, i32 4) #7
  %call14 = tail call i8* @MSAGetSeqDescription(%struct.msa_struct* %msa, i32 %5) #8
  %call15 = tail call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx, i8* %call14, i32 8) #7
  %6 = load i8*** %ss, align 8, !tbaa !3
  %cmp16 = icmp eq i8** %6, null
  br i1 %cmp16, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %arrayidx20 = getelementptr inbounds i8** %6, i64 %indvars.iv
  %7 = load i8** %arrayidx20, align 8, !tbaa !3
  %cmp21 = icmp eq i8* %7, null
  br i1 %cmp21, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*** %aseq61, align 8, !tbaa !3
  %arrayidx24 = getelementptr inbounds i8** %8, i64 %indvars.iv
  %9 = load i8** %arrayidx24, align 8, !tbaa !3
  %10 = load i32* %alen47, align 4, !tbaa !0
  %ss30 = getelementptr inbounds %struct.seqinfo_s* %1, i64 %indvars.iv, i32 10
  %call31 = tail call i32 @MakeDealignedString(i8* %9, i32 %10, i8* %7, i8** %ss30) #8
  %11 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %11, 512
  store i32 %or, i32* %flags, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body, %if.then
  %12 = load i8*** %sa, align 8, !tbaa !3
  %cmp35 = icmp eq i8** %12, null
  br i1 %cmp35, label %if.end59, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %if.end
  %arrayidx40 = getelementptr inbounds i8** %12, i64 %indvars.iv
  %13 = load i8** %arrayidx40, align 8, !tbaa !3
  %cmp41 = icmp eq i8* %13, null
  br i1 %cmp41, label %if.end59, label %if.then43

if.then43:                                        ; preds = %land.lhs.true37
  %14 = load i8*** %aseq61, align 8, !tbaa !3
  %arrayidx46 = getelementptr inbounds i8** %14, i64 %indvars.iv
  %15 = load i8** %arrayidx46, align 8, !tbaa !3
  %16 = load i32* %alen47, align 4, !tbaa !0
  %sa53 = getelementptr inbounds %struct.seqinfo_s* %1, i64 %indvars.iv, i32 11
  %call54 = tail call i32 @MakeDealignedString(i8* %15, i32 %16, i8* %13, i8** %sa53) #8
  %17 = load i32* %flags, align 4, !tbaa !0
  %or58 = or i32 %17, 1024
  store i32 %or58, i32* %flags, align 4, !tbaa !0
  br label %if.end59

if.end59:                                         ; preds = %land.lhs.true37, %if.end, %if.then43
  %18 = load i8*** %aseq61, align 8, !tbaa !3
  %arrayidx62 = getelementptr inbounds i8** %18, i64 %indvars.iv
  %19 = load i8** %arrayidx62, align 8, !tbaa !3
  %call63 = tail call i32 @DealignedLength(i8* %19) #8
  %len = getelementptr inbounds %struct.seqinfo_s* %1, i64 %indvars.iv, i32 5
  store i32 %call63, i32* %len, align 4, !tbaa !0
  %20 = load i32* %flags, align 4, !tbaa !0
  %or69 = or i32 %20, 64
  store i32 %or69, i32* %flags, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %21 = load i32* %nseq, align 4, !tbaa !0
  %22 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %22, %21
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end59, %entry
  ret %struct.seqinfo_s* %1
}

; Function Attrs: optsize
declare i8* @MSAGetSeqAccession(%struct.msa_struct*, i32) #1

; Function Attrs: optsize
declare i8* @MSAGetSeqDescription(%struct.msa_struct*, i32) #1

; Function Attrs: optsize
declare i32 @DealignedLength(i8*) #1

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @addseq(i8* %s, %struct.ReadSeqVars* nocapture %V) #0 {
entry:
  %ssimode = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 5
  %0 = load i32* %ssimode, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %while.cond36.preheader

while.cond36.preheader:                           ; preds = %entry
  %1 = load i8* %s, align 1, !tbaa !1
  %cmp38199 = icmp eq i8 %1, 0
  br i1 %cmp38199, label %while.end59, label %while.body40.lr.ph

while.body40.lr.ph:                               ; preds = %while.cond36.preheader
  %call43 = tail call i16** @__ctype_b_loc() #10
  %2 = load i16** %call43, align 8, !tbaa !3
  br label %while.body40

if.then:                                          ; preds = %entry
  %seqlen = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 18
  %3 = load i32* %seqlen, align 4, !tbaa !0
  %buflen = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 4
  %4 = load i32* %buflen, align 4, !tbaa !0
  %add = add nsw i32 %4, %3
  %maxseq = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 19
  %5 = load i32* %maxseq, align 4, !tbaa !0
  %cmp1 = icmp sgt i32 %add, %5
  br i1 %cmp1, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  %seq13.pre = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15
  br label %if.end

if.then2:                                         ; preds = %if.then
  %cmp4 = icmp sgt i32 %4, 500
  %. = select i1 %cmp4, i32 %4, i32 500
  %add7 = add nsw i32 %., %5
  store i32 %add7, i32* %maxseq, align 4, !tbaa !0
  %seq = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 15
  %6 = load i8** %seq, align 8, !tbaa !3
  %add9 = add nsw i32 %add7, 1
  %conv = sext i32 %add9 to i64
  %call = tail call i8* @sre_realloc(i8* getelementptr inbounds ([50 x i8]* @.str78, i64 0, i64 0), i32 524, i8* %6, i64 %conv) #8
  store i8* %call, i8** %seq, align 8, !tbaa !3
  %7 = load i32* %maxseq, align 4, !tbaa !0
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8* %call, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %.pre = load i32* %seqlen, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then2
  %seq13.pre-phi = phi i8** [ %seq13.pre, %if.then.if.end_crit_edge ], [ %seq, %if.then2 ]
  %8 = phi i32 [ %3, %if.then.if.end_crit_edge ], [ %.pre, %if.then2 ]
  %9 = load i8** %seq13.pre-phi, align 8, !tbaa !3
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8* %9, i64 %idx.ext
  %10 = load i8* %s, align 1, !tbaa !1
  %cmp16196 = icmp eq i8 %10, 0
  br i1 %cmp16196, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end
  %call20 = tail call i16** @__ctype_b_loc() #10
  br label %while.body

while.body:                                       ; preds = %if.end31, %while.body.lr.ph
  %11 = phi i8 [ %10, %while.body.lr.ph ], [ %16, %if.end31 ]
  %s.addr.0198 = phi i8* [ %s, %while.body.lr.ph ], [ %incdec.ptr32, %if.end31 ]
  %sq.0197 = phi i8* [ %add.ptr, %while.body.lr.ph ], [ %sq.1, %if.end31 ]
  %idxprom19 = sext i8 %11 to i64
  %12 = load i16** %call20, align 8, !tbaa !3
  %arrayidx21 = getelementptr inbounds i16* %12, i64 %idxprom19
  %13 = load i16* %arrayidx21, align 2, !tbaa !4
  %14 = and i16 %13, 10240
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %if.then30, label %if.end31

if.then30:                                        ; preds = %while.body
  store i8 %11, i8* %sq.0197, align 1, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8* %sq.0197, i64 1
  br label %if.end31

if.end31:                                         ; preds = %while.body, %if.then30
  %sq.1 = phi i8* [ %sq.0197, %while.body ], [ %incdec.ptr, %if.then30 ]
  %incdec.ptr32 = getelementptr inbounds i8* %s.addr.0198, i64 1
  %16 = load i8* %incdec.ptr32, align 1, !tbaa !1
  %cmp16 = icmp eq i8 %16, 0
  br i1 %cmp16, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end31
  %.pre204 = load i8** %seq13.pre-phi, align 8, !tbaa !3
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end
  %17 = phi i8* [ %.pre204, %while.cond.while.end_crit_edge ], [ %9, %if.end ]
  %sq.0.lcssa = phi i8* [ %sq.1, %while.cond.while.end_crit_edge ], [ %add.ptr, %if.end ]
  %sub.ptr.lhs.cast = ptrtoint i8* %sq.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv34 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv34, i32* %seqlen, align 4, !tbaa !0
  br label %if.end134

while.body40:                                     ; preds = %while.body40.lr.ph, %while.body40
  %18 = phi i8 [ %1, %while.body40.lr.ph ], [ %22, %while.body40 ]
  %s.addr.1201 = phi i8* [ %s, %while.body40.lr.ph ], [ %incdec.ptr58, %while.body40 ]
  %rpl.0200 = phi i32 [ 0, %while.body40.lr.ph ], [ %rpl.1, %while.body40 ]
  %idxprom42 = sext i8 %18 to i64
  %arrayidx44 = getelementptr inbounds i16* %2, i64 %idxprom42
  %19 = load i16* %arrayidx44, align 2, !tbaa !4
  %20 = and i16 %19, 10240
  %21 = icmp eq i16 %20, 0
  %inc = zext i1 %21 to i32
  %rpl.1 = add nsw i32 %inc, %rpl.0200
  %incdec.ptr58 = getelementptr inbounds i8* %s.addr.1201, i64 1
  %22 = load i8* %incdec.ptr58, align 1, !tbaa !1
  %cmp38 = icmp eq i8 %22, 0
  br i1 %cmp38, label %while.end59, label %while.body40

while.end59:                                      ; preds = %while.body40, %while.cond36.preheader
  %s.addr.1.lcssa = phi i8* [ %s, %while.cond36.preheader ], [ %incdec.ptr58, %while.body40 ]
  %rpl.0.lcssa = phi i32 [ 0, %while.cond36.preheader ], [ %rpl.1, %while.body40 ]
  %seqlen60 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 18
  %23 = load i32* %seqlen60, align 4, !tbaa !0
  %add61 = add nsw i32 %23, %rpl.0.lcssa
  store i32 %add61, i32* %seqlen60, align 4, !tbaa !0
  %sub.ptr.lhs.cast62 = ptrtoint i8* %s.addr.1.lcssa to i64
  %sub.ptr.rhs.cast63 = ptrtoint i8* %s to i64
  %sub.ptr.sub64 = sub i64 %sub.ptr.lhs.cast62, %sub.ptr.rhs.cast63
  %conv65 = trunc i64 %sub.ptr.sub64 to i32
  %rpl66 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 9
  %24 = load i32* %rpl66, align 4, !tbaa !0
  %cmp67 = icmp eq i32 %24, 0
  br i1 %cmp67, label %if.end99, label %if.then69

if.then69:                                        ; preds = %while.end59
  %lastrpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 10
  %25 = load i32* %lastrpl, align 4, !tbaa !0
  %cmp70 = icmp sgt i32 %25, 0
  br i1 %cmp70, label %if.then72, label %if.end92

if.then72:                                        ; preds = %if.then69
  %cmp74 = icmp slt i32 %24, 1
  %cmp79 = icmp eq i32 %25, %24
  %or.cond194 = or i1 %cmp74, %cmp79
  br i1 %or.cond194, label %if.else83, label %if.then81

if.then81:                                        ; preds = %if.then72
  store i32 0, i32* %rpl66, align 4, !tbaa !0
  br label %if.end92

if.else83:                                        ; preds = %if.then72
  %cmp85 = icmp eq i32 %24, -1
  br i1 %cmp85, label %if.then87, label %if.end92

if.then87:                                        ; preds = %if.else83
  store i32 %25, i32* %rpl66, align 4, !tbaa !0
  br label %if.end92

if.end92:                                         ; preds = %if.then81, %if.then87, %if.else83, %if.then69
  store i32 %rpl.0.lcssa, i32* %lastrpl, align 4, !tbaa !0
  %maxrpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 11
  %26 = load i32* %maxrpl, align 4, !tbaa !0
  %cmp94 = icmp sgt i32 %rpl.0.lcssa, %26
  br i1 %cmp94, label %if.then96, label %if.end99

if.then96:                                        ; preds = %if.end92
  store i32 %rpl.0.lcssa, i32* %maxrpl, align 4, !tbaa !0
  br label %if.end99

if.end99:                                         ; preds = %while.end59, %if.end92, %if.then96
  %bpl100 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 12
  %27 = load i32* %bpl100, align 4, !tbaa !0
  %cmp101 = icmp eq i32 %27, 0
  br i1 %cmp101, label %if.end134, label %if.then103

if.then103:                                       ; preds = %if.end99
  %lastbpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 13
  %28 = load i32* %lastbpl, align 4, !tbaa !0
  %cmp104 = icmp sgt i32 %28, 0
  br i1 %cmp104, label %if.then106, label %if.end126

if.then106:                                       ; preds = %if.then103
  %cmp108 = icmp slt i32 %27, 1
  %cmp113 = icmp eq i32 %28, %27
  %or.cond195 = or i1 %cmp108, %cmp113
  br i1 %or.cond195, label %if.else117, label %if.then115

if.then115:                                       ; preds = %if.then106
  store i32 0, i32* %bpl100, align 4, !tbaa !0
  br label %if.end126

if.else117:                                       ; preds = %if.then106
  %cmp119 = icmp eq i32 %27, -1
  br i1 %cmp119, label %if.then121, label %if.end126

if.then121:                                       ; preds = %if.else117
  store i32 %28, i32* %bpl100, align 4, !tbaa !0
  br label %if.end126

if.end126:                                        ; preds = %if.then115, %if.then121, %if.else117, %if.then103
  store i32 %conv65, i32* %lastbpl, align 4, !tbaa !0
  %maxbpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 14
  %29 = load i32* %maxbpl, align 4, !tbaa !0
  %cmp128 = icmp sgt i32 %conv65, %29
  br i1 %cmp128, label %if.then130, label %if.end134

if.then130:                                       ; preds = %if.end126
  store i32 %conv65, i32* %maxbpl, align 4, !tbaa !0
  br label %if.end134

if.end134:                                        ; preds = %if.end99, %if.then130, %if.end126, %while.end
  ret void
}

; Function Attrs: optsize
declare i32 @Strparse(i8*, i8*, i32) #1

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @readLoop(i32 %addfirst, i32 (i8*, i32*)* nocapture %endTest, %struct.ReadSeqVars* %V) #0 {
entry:
  %addend = alloca i32, align 4
  store i32 0, i32* %addend, align 4, !tbaa !0
  %seqlen = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 18
  store i32 0, i32* %seqlen, align 4, !tbaa !0
  %lastbpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 13
  store i32 0, i32* %lastbpl, align 4, !tbaa !0
  %lastrpl = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 10
  store i32 0, i32* %lastrpl, align 4, !tbaa !0
  %tobool = icmp eq i32 %addfirst, 0
  %ssimode = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 5
  %0 = load i32* %ssimode, align 4, !tbaa !0
  %cmp = icmp sgt i32 %0, -1
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %1 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 8, i32 0
  %2 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 6, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 16, i32 8, i1 false), !tbaa.struct !5
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %buf = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3
  %3 = load i8** %buf, align 8, !tbaa !3
  call fastcc void @addseq(i8* %3, %struct.ReadSeqVars* %V) #7
  br label %do.body.preheader

if.else:                                          ; preds = %entry
  br i1 %cmp, label %if.then4, label %do.body.preheader

if.then4:                                         ; preds = %if.else
  %f = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 0
  %4 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %d_off6 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 8
  %call = call i32 @SSIGetFilePosition(%struct._IO_FILE* %4, i32 %0, %struct.ssioffset_s* %d_off6) #8
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %do.body.preheader, label %if.then8

if.then8:                                         ; preds = %if.then4
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str120, i64 0, i64 0)) #8
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.else, %if.then8, %if.end, %if.then4
  %buf12 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 3
  %f15 = getelementptr inbounds %struct.ReadSeqVars* %V, i64 0, i32 0
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.cond
  call fastcc void @SeqfileGetLine(%struct.ReadSeqVars* %V) #7
  %5 = load i8** %buf12, align 8, !tbaa !3
  %6 = load i8* %5, align 1, !tbaa !1
  %cmp13 = icmp eq i8 %6, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %do.body
  %7 = load %struct._IO_FILE** %f15, align 8, !tbaa !3
  %call16 = call i32 @feof(%struct._IO_FILE* %7) #8
  %not.tobool17 = icmp ne i32 %call16, 0
  %done.0. = zext i1 %not.tobool17 to i32
  %.pre = load i8** %buf12, align 8, !tbaa !3
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true, %do.body
  %8 = phi i8* [ %5, %do.body ], [ %.pre, %land.lhs.true ]
  %done.1 = phi i32 [ 0, %do.body ], [ %done.0., %land.lhs.true ]
  %call21 = call i32 %endTest(i8* %8, i32* %addend) #8
  %or = or i32 %call21, %done.1
  %9 = load i32* %addend, align 4, !tbaa !0
  %tobool22 = icmp ne i32 %9, 0
  %tobool23 = icmp eq i32 %or, 0
  %or.cond = or i1 %tobool22, %tobool23
  br i1 %or.cond, label %if.then24, label %do.cond

if.then24:                                        ; preds = %if.end19
  %10 = load i8** %buf12, align 8, !tbaa !3
  call fastcc void @addseq(i8* %10, %struct.ReadSeqVars* %V) #7
  br label %do.cond

do.cond:                                          ; preds = %if.end19, %if.then24
  br i1 %tobool23, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @endGCGdata(i8* nocapture %s, i32* nocapture %addend) #0 {
entry:
  store i32 0, i32* %addend, align 4, !tbaa !0
  %0 = load i8* %s, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 62
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

; Function Attrs: optsize
declare i32 @SSIGetFilePosition(%struct._IO_FILE*, i32, %struct.ssioffset_s*) #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @endPIR(i8* nocapture %s, i32* nocapture %addend) #0 {
entry:
  store i32 0, i32* %addend, align 4, !tbaa !0
  %call = tail call i32 @strncmp(i8* %s, i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0), i64 3) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strncmp(i8* %s, i8* getelementptr inbounds ([6 x i8]* @.str121, i64 0, i64 0), i64 5) #9
  %cmp2 = icmp eq i32 %call1, 0
  %. = zext i1 %cmp2 to i32
  ret i32 %.

return:                                           ; preds = %entry
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @endZuker(i8* nocapture %s, i32* nocapture %addend) #0 {
entry:
  store i32 0, i32* %addend, align 4, !tbaa !0
  %0 = load i8* %s, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 40
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @endEMBL(i8* nocapture %s, i32* nocapture %addend) #0 {
entry:
  store i32 0, i32* %addend, align 4, !tbaa !0
  %call = tail call i32 @strncmp(i8* %s, i8* getelementptr inbounds ([6 x i8]* @.str130, i64 0, i64 0), i64 5) #9
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @endPearson(i8* nocapture %s, i32* nocapture %addend) #0 {
entry:
  store i32 0, i32* %addend, align 4, !tbaa !0
  %0 = load i8* %s, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 62
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @endGB(i8* %s, i32* nocapture %addend) #0 {
entry:
  store i32 0, i32* %addend, align 4, !tbaa !0
  %call = tail call i8* @strstr(i8* %s, i8* getelementptr inbounds ([3 x i8]* @.str137, i64 0, i64 0)) #9
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %strncmp = tail call i32 @strncmp(i8* %s, i8* getelementptr inbounds ([6 x i8]* @.str132, i64 0, i64 0), i64 5)
  %cmp5 = icmp eq i32 %strncmp, 0
  br label %lor.end

lor.end:                                          ; preds = %entry, %lor.rhs
  %0 = phi i1 [ true, %entry ], [ %cmp5, %lor.rhs ]
  %lor.ext = zext i1 %0 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @endStrider(i8* %s, i32* nocapture %addend) #0 {
entry:
  store i32 0, i32* %addend, align 4, !tbaa !0
  %call = tail call i8* @strstr(i8* %s, i8* getelementptr inbounds ([3 x i8]* @.str137, i64 0, i64 0)) #9
  %cmp = icmp ne i8* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @endIG(i8* %s, i32* nocapture %addend) #0 {
entry:
  store i32 1, i32* %addend, align 4, !tbaa !0
  %call = tail call i8* @strchr(i8* %s, i32 49) #9
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %call1 = tail call i8* @strchr(i8* %s, i32 50) #9
  %cmp2 = icmp ne i8* %call1, null
  br label %lor.end

lor.end:                                          ; preds = %entry, %lor.rhs
  %0 = phi i1 [ true, %entry ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %0 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare %struct._IO_FILE* @EnvFileOpen(i8*, i8*, i8**) #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #6

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}
!5 = metadata !{i64 0, i64 1, metadata !1, i64 8, i64 4, metadata !0, i64 8, i64 8, metadata !6}
!6 = metadata !{metadata !"long long", metadata !1}
