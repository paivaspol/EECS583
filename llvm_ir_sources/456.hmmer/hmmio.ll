; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmmfile_s = type { %struct._IO_FILE*, %struct.ssifile_s*, i32 (%struct.hmmfile_s*, %struct.plan7_s**)*, i32, i32, i32, i32, %struct.ssioffset_s }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.plan9_s = type { i32, %struct.basic_state*, %struct.basic_state*, %struct.basic_state*, [20 x float], i8*, i8*, i8*, float*, i32 }
%struct.basic_state = type { [3 x float], [20 x float] }

@.str = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"%s.ssi\00", align 1
@.str3 = private unnamed_addr constant [26 x i8] c"SSIRecommendMode() failed\00", align 1
@.str4 = private unnamed_addr constant [28 x i8] c"SSIGetFilePosition() failed\00", align 1
@v20magic = internal global i32 -387060299, align 4
@.str5 = private unnamed_addr constant [160 x i8] c"%s appears to be a binary but format is not recognized\0AIt may be from a HMMER version more recent than yours,\0Aor may be a different kind of binary altogether.\0A\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"HMMER2.0\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"HMMER v1.9\00", align 1
@.str8 = private unnamed_addr constant [11 x i8] c"# HMM v1.7\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"# HMM v1.1\00", align 1
@.str10 = private unnamed_addr constant [11 x i8] c"# HMM v1.0\00", align 1
@.str11 = private unnamed_addr constant [16 x i8] c"HMMER2.0  [%s]\0A\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str13 = private unnamed_addr constant [10 x i8] c"NAME  %s\0A\00", align 1
@.str14 = private unnamed_addr constant [10 x i8] c"ACC   %s\0A\00", align 1
@.str15 = private unnamed_addr constant [10 x i8] c"DESC  %s\0A\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"LENG  %d\0A\00", align 1
@.str17 = private unnamed_addr constant [10 x i8] c"ALPH  %s\0A\00", align 1
@Alphabet_type = external global i32
@.str18 = private unnamed_addr constant [6 x i8] c"Amino\00", align 1
@.str19 = private unnamed_addr constant [8 x i8] c"Nucleic\00", align 1
@.str20 = private unnamed_addr constant [10 x i8] c"RF    %s\0A\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str22 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str23 = private unnamed_addr constant [10 x i8] c"CS    %s\0A\00", align 1
@.str24 = private unnamed_addr constant [10 x i8] c"MAP   %s\0A\00", align 1
@.str25 = private unnamed_addr constant [7 x i8] c"COM   \00", align 1
@.str26 = private unnamed_addr constant [10 x i8] c"NSEQ  %d\0A\00", align 1
@.str27 = private unnamed_addr constant [10 x i8] c"DATE  %s\0A\00", align 1
@.str28 = private unnamed_addr constant [10 x i8] c"CKSUM %d\0A\00", align 1
@.str29 = private unnamed_addr constant [17 x i8] c"GA    %.1f %.1f\0A\00", align 1
@.str30 = private unnamed_addr constant [17 x i8] c"TC    %.1f %.1f\0A\00", align 1
@.str31 = private unnamed_addr constant [17 x i8] c"NC    %.1f %.1f\0A\00", align 1
@.str32 = private unnamed_addr constant [8 x i8] c"XT     \00", align 1
@.str33 = private unnamed_addr constant [5 x i8] c"%6s \00", align 1
@.str34 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str35 = private unnamed_addr constant [7 x i8] c"NULT  \00", align 1
@.str36 = private unnamed_addr constant [5 x i8] c"%6s\0A\00", align 1
@.str37 = private unnamed_addr constant [7 x i8] c"NULE  \00", align 1
@Alphabet_size = external global i32
@.str38 = private unnamed_addr constant [17 x i8] c"EVD   %10f %10f\0A\00", align 1
@.str39 = private unnamed_addr constant [10 x i8] c"HMM      \00", align 1
@.str40 = private unnamed_addr constant [9 x i8] c"  %c    \00", align 1
@Alphabet = external global [25 x i8]
@.str41 = private unnamed_addr constant [44 x i8] c"       %6s %6s %6s %6s %6s %6s %6s %6s %6s\0A\00", align 1
@.str42 = private unnamed_addr constant [5 x i8] c"m->m\00", align 1
@.str43 = private unnamed_addr constant [5 x i8] c"m->i\00", align 1
@.str44 = private unnamed_addr constant [5 x i8] c"m->d\00", align 1
@.str45 = private unnamed_addr constant [5 x i8] c"i->m\00", align 1
@.str46 = private unnamed_addr constant [5 x i8] c"i->i\00", align 1
@.str47 = private unnamed_addr constant [5 x i8] c"d->m\00", align 1
@.str48 = private unnamed_addr constant [5 x i8] c"d->d\00", align 1
@.str49 = private unnamed_addr constant [5 x i8] c"b->m\00", align 1
@.str50 = private unnamed_addr constant [5 x i8] c"m->e\00", align 1
@.str51 = private unnamed_addr constant [16 x i8] c"       %6s %6s \00", align 1
@.str52 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str53 = private unnamed_addr constant [6 x i8] c" %5d \00", align 1
@.str54 = private unnamed_addr constant [4 x i8] c"%5d\00", align 1
@.str55 = private unnamed_addr constant [6 x i8] c" %5c \00", align 1
@.str56 = private unnamed_addr constant [4 x i8] c"//\0A\00", align 1
@.str57 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@prob2ascii.buffer = internal global [8 x i8] zeroinitializer, align 1
@.str58 = private unnamed_addr constant [4 x i8] c"%6d\00", align 1
@.str59 = private unnamed_addr constant [34 x i8] c"[converted from an old Plan9 HMM]\00", align 1
@.str60 = private unnamed_addr constant [71 x i8] c"A nonbiological alphabet size of %d; so I can't convert plan9 to plan7\00", align 1
@.str61 = private unnamed_addr constant [89 x i8] c"Alphabet mismatch error.\0AI thought we were working with %s, but tried to read a %s HMM.\0A\00", align 1
@.str62 = private unnamed_addr constant [34 x i8] c"malloc failed for reading hmm in\0A\00", align 1
@.str63 = private unnamed_addr constant [27 x i8] c"1.0 ASCII HMMs unsupported\00", align 1
@.str64 = private unnamed_addr constant [27 x i8] c"1.1 ASCII HMMs unsupported\00", align 1
@.str65 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str66 = private unnamed_addr constant [15 x i8] c"###MATCH_STATE\00", align 1
@.str67 = private unnamed_addr constant [16 x i8] c"###INSERT_STATE\00", align 1
@.str68 = private unnamed_addr constant [16 x i8] c"###DELETE_STATE\00", align 1
@.str69 = private unnamed_addr constant [6 x i8] c"AMINO\00", align 1
@.str70 = private unnamed_addr constant [8 x i8] c"NUCLEIC\00", align 1
@.str71 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str72 = private unnamed_addr constant [6 x i8] c"NAME \00", align 1
@.str73 = private unnamed_addr constant [6 x i8] c"ACC  \00", align 1
@.str74 = private unnamed_addr constant [6 x i8] c"DESC \00", align 1
@.str75 = private unnamed_addr constant [6 x i8] c"LENG \00", align 1
@.str76 = private unnamed_addr constant [6 x i8] c"NSEQ \00", align 1
@.str77 = private unnamed_addr constant [6 x i8] c"ALPH \00", align 1
@.str78 = private unnamed_addr constant [6 x i8] c"RF   \00", align 1
@.str79 = private unnamed_addr constant [6 x i8] c"CS   \00", align 1
@.str80 = private unnamed_addr constant [6 x i8] c"MAP  \00", align 1
@.str81 = private unnamed_addr constant [6 x i8] c"COM  \00", align 1
@.str82 = private unnamed_addr constant [6 x i8] c"DATE \00", align 1
@.str83 = private unnamed_addr constant [6 x i8] c"GA   \00", align 1
@.str84 = private unnamed_addr constant [6 x i8] c"TC   \00", align 1
@.str85 = private unnamed_addr constant [6 x i8] c"NC   \00", align 1
@.str86 = private unnamed_addr constant [6 x i8] c"XT   \00", align 1
@.str87 = private unnamed_addr constant [6 x i8] c"NULT \00", align 1
@.str88 = private unnamed_addr constant [6 x i8] c"NULE \00", align 1
@.str89 = private unnamed_addr constant [41 x i8] c"ALPH must precede NULE in HMM save files\00", align 1
@.str90 = private unnamed_addr constant [6 x i8] c"EVD  \00", align 1
@.str91 = private unnamed_addr constant [6 x i8] c"CKSUM\00", align 1
@.str92 = private unnamed_addr constant [6 x i8] c"HMM  \00", align 1
@.str93 = private unnamed_addr constant [3 x i8] c"//\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.hmmfile_s* @HMMFileOpen(i8* %hmmfile, i8* %env) #0 {
entry:
  %magic = alloca i32, align 4
  %buf = alloca [512 x i8], align 16
  %dir = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %hmmfile}, i64 0, metadata !205), !dbg !450
  call void @llvm.dbg.value(metadata !{i8* %env}, i64 0, metadata !206), !dbg !450
  call void @llvm.dbg.declare(metadata !{i32* %magic}, metadata !208), !dbg !451
  %0 = getelementptr inbounds [512 x i8]* %buf, i64 0, i64 0, !dbg !452
  call void @llvm.lifetime.start(i64 512, i8* %0) #2, !dbg !452
  call void @llvm.dbg.declare(metadata !{[512 x i8]* %buf}, metadata !209), !dbg !452
  call void @llvm.dbg.declare(metadata !{i8** %dir}, metadata !214), !dbg !453
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 164, i64 56) #7, !dbg !454
  %1 = bitcast i8* %call to %struct.hmmfile_s*, !dbg !454
  call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %1}, i64 0, metadata !207), !dbg !454
  %f = bitcast i8* %call to %struct._IO_FILE**, !dbg !455
  %parser = getelementptr inbounds i8* %call, i64 16, !dbg !456
  %2 = bitcast i8* %parser to i32 (%struct.hmmfile_s*, %struct.plan7_s**)**, !dbg !456
  %is_binary = getelementptr inbounds i8* %call, i64 24, !dbg !457
  %3 = bitcast i8* %is_binary to i32*, !dbg !457
  %byteswap = getelementptr inbounds i8* %call, i64 28, !dbg !458
  %4 = bitcast i8* %byteswap to i32*, !dbg !458
  %is_seekable = getelementptr inbounds i8* %call, i64 32, !dbg !459
  %5 = bitcast i8* %is_seekable to i32*, !dbg !459
  call void @llvm.memset.p0i8.i64(i8* %parser, i8 0, i64 16, i32 8, i1 false), !dbg !456
  store i32 1, i32* %5, align 4, !dbg !459, !tbaa !460
  %ssi = getelementptr inbounds i8* %call, i64 8, !dbg !463
  %6 = bitcast i8* %ssi to %struct.ssifile_s**, !dbg !463
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 16, i32 8, i1 false), !dbg !463
  %call2 = call %struct._IO_FILE* @fopen(i8* %hmmfile, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !464
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %f, align 8, !dbg !464, !tbaa !465
  %cmp = icmp eq %struct._IO_FILE* %call2, null, !dbg !464
  br i1 %cmp, label %if.else, label %if.then, !dbg !464

if.then:                                          ; preds = %entry
  %call4 = call i64 @strlen(i8* %hmmfile) #8, !dbg !466
  %add = add i64 %call4, 5, !dbg !466
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 181, i64 %add) #7, !dbg !466
  call void @llvm.dbg.value(metadata !{i8* %call5}, i64 0, metadata !213), !dbg !466
  %call6 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call5, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* %hmmfile) #7, !dbg !468
  %call7 = call i32 @SSIRecommendMode(i8* %hmmfile) #7, !dbg !469
  %mode = getelementptr inbounds i8* %call, i64 36, !dbg !469
  %7 = bitcast i8* %mode to i32*, !dbg !469
  store i32 %call7, i32* %7, align 4, !dbg !469, !tbaa !460
  %cmp8 = icmp eq i32 %call7, -1, !dbg !469
  br i1 %cmp8, label %if.then9, label %if.end29, !dbg !469

if.then9:                                         ; preds = %if.then
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !470
  br label %if.end29, !dbg !470

if.else:                                          ; preds = %entry
  %call10 = call %struct._IO_FILE* @EnvFileOpen(i8* %hmmfile, i8* %env, i8** %dir) #7, !dbg !471
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %f, align 8, !dbg !471, !tbaa !465
  %cmp12 = icmp eq %struct._IO_FILE* %call10, null, !dbg !471
  br i1 %cmp12, label %cleanup, label %if.then13, !dbg !471

if.then13:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata !{i8** %dir}, i64 0, metadata !214), !dbg !472
  %8 = load i8** %dir, align 8, !dbg !472, !tbaa !465
  %call14 = call i8* @FileConcat(i8* %8, i8* %hmmfile) #7, !dbg !472
  call void @llvm.dbg.value(metadata !{i8* %call14}, i64 0, metadata !216), !dbg !472
  %call15 = call i64 @strlen(i8* %call14) #8, !dbg !473
  %call16 = call i64 @strlen(i8* %hmmfile) #8, !dbg !473
  %add17 = add i64 %call15, 5, !dbg !473
  %add18 = add i64 %add17, %call16, !dbg !473
  %call20 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 192, i64 %add18) #7, !dbg !473
  call void @llvm.dbg.value(metadata !{i8* %call20}, i64 0, metadata !213), !dbg !473
  %call21 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call20, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* %call14) #7, !dbg !474
  %call22 = call i32 @SSIRecommendMode(i8* %call14) #7, !dbg !475
  %mode23 = getelementptr inbounds i8* %call, i64 36, !dbg !475
  %9 = bitcast i8* %mode23 to i32*, !dbg !475
  store i32 %call22, i32* %9, align 4, !dbg !475, !tbaa !460
  %cmp24 = icmp eq i32 %call22, -1, !dbg !475
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !475

if.then25:                                        ; preds = %if.then13
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !476
  br label %if.end26, !dbg !476

if.end26:                                         ; preds = %if.then25, %if.then13
  call void @free(i8* %call14) #7, !dbg !477
  call void @llvm.dbg.value(metadata !{i8** %dir}, i64 0, metadata !214), !dbg !478
  %10 = load i8** %dir, align 8, !dbg !478, !tbaa !465
  call void @free(i8* %10) #7, !dbg !478
  br label %if.end29

if.end29:                                         ; preds = %if.then, %if.then9, %if.end26
  %ssifile.0 = phi i8* [ %call5, %if.then9 ], [ %call5, %if.then ], [ %call20, %if.end26 ]
  %call31 = call i32 @SSIOpen(i8* %ssifile.0, %struct.ssifile_s** %6) #7, !dbg !479
  call void @free(i8* %ssifile.0) #7, !dbg !480
  %11 = load %struct._IO_FILE** %f, align 8, !dbg !481, !tbaa !465
  %mode33 = getelementptr inbounds i8* %call, i64 36, !dbg !481
  %12 = bitcast i8* %mode33 to i32*, !dbg !481
  %13 = load i32* %12, align 4, !dbg !481, !tbaa !460
  %offset = getelementptr inbounds i8* %call, i64 40, !dbg !481
  %14 = bitcast i8* %offset to %struct.ssioffset_s*, !dbg !481
  %call34 = call i32 @SSIGetFilePosition(%struct._IO_FILE* %11, i32 %13, %struct.ssioffset_s* %14) #7, !dbg !481
  call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !215), !dbg !481
  %cmp35 = icmp eq i32 %call34, 0, !dbg !482
  br i1 %cmp35, label %if.end37, label %if.then36, !dbg !482

if.then36:                                        ; preds = %if.end29
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !482
  br label %if.end37, !dbg !482

if.end37:                                         ; preds = %if.end29, %if.then36
  %15 = bitcast i32* %magic to i8*, !dbg !483
  %16 = load %struct._IO_FILE** %f, align 8, !dbg !483, !tbaa !465
  %call39 = call i64 @fread(i8* %15, i64 4, i64 1, %struct._IO_FILE* %16) #7, !dbg !483
  %tobool = icmp eq i64 %call39, 0, !dbg !483
  br i1 %tobool, label %if.then40, label %if.end41, !dbg !483

if.then40:                                        ; preds = %if.end37
  call void @HMMFileClose(%struct.hmmfile_s* %1) #9, !dbg !484
  br label %cleanup, !dbg !486

if.end41:                                         ; preds = %if.end37
  %17 = load %struct._IO_FILE** %f, align 8, !dbg !487, !tbaa !465
  call void @rewind(%struct._IO_FILE* %17) #7, !dbg !487
  call void @llvm.dbg.value(metadata !{i32* %magic}, i64 0, metadata !208), !dbg !488
  %18 = load i32* %magic, align 4, !dbg !488, !tbaa !460
  %19 = load i32* @v20magic, align 4, !dbg !488, !tbaa !460
  %cmp43 = icmp eq i32 %18, %19, !dbg !488
  br i1 %cmp43, label %if.then44, label %if.else47, !dbg !488

if.then44:                                        ; preds = %if.end41
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin20hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !dbg !489, !tbaa !465
  store i32 1, i32* %3, align 4, !dbg !491, !tbaa !460
  br label %cleanup, !dbg !492

if.else47:                                        ; preds = %if.end41
  switch i32 %18, label %if.end106 [
    i32 -1242698264, label %if.then49
    i32 -387060300, label %if.then55
    i32 -1259475480, label %if.then60
    i32 -387060301, label %if.then66
    i32 -1276252696, label %if.then71
    i32 -387060302, label %if.then77
    i32 -1293029912, label %if.then82
    i32 -387060303, label %if.then88
    i32 -1309807128, label %if.then93
  ], !dbg !493

if.then49:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin20hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !dbg !494, !tbaa !465
  store i32 1, i32* %3, align 4, !dbg !496, !tbaa !460
  store i32 1, i32* %4, align 4, !dbg !497, !tbaa !460
  br label %cleanup, !dbg !498

if.then55:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin19hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !dbg !499, !tbaa !465
  store i32 1, i32* %3, align 4, !dbg !501, !tbaa !460
  br label %cleanup, !dbg !502

if.then60:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin19hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !dbg !503, !tbaa !465
  store i32 1, i32* %3, align 4, !dbg !505, !tbaa !460
  store i32 1, i32* %4, align 4, !dbg !506, !tbaa !460
  br label %cleanup, !dbg !507

if.then66:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin17hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !dbg !508, !tbaa !465
  store i32 1, i32* %3, align 4, !dbg !510, !tbaa !460
  br label %cleanup, !dbg !511

if.then71:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin17hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !dbg !512, !tbaa !465
  store i32 1, i32* %3, align 4, !dbg !514, !tbaa !460
  store i32 1, i32* %4, align 4, !dbg !515, !tbaa !460
  br label %cleanup, !dbg !516

if.then77:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin11hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !dbg !517, !tbaa !465
  store i32 1, i32* %3, align 4, !dbg !519, !tbaa !460
  br label %cleanup, !dbg !520

if.then82:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin11hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !dbg !521, !tbaa !465
  store i32 1, i32* %3, align 4, !dbg !523, !tbaa !460
  store i32 1, i32* %4, align 4, !dbg !524, !tbaa !460
  br label %cleanup, !dbg !525

if.then88:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin10hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !dbg !526, !tbaa !465
  store i32 1, i32* %3, align 4, !dbg !528, !tbaa !460
  br label %cleanup, !dbg !529

if.then93:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin10hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !dbg !530, !tbaa !465
  store i32 1, i32* %3, align 4, !dbg !532, !tbaa !460
  store i32 1, i32* %4, align 4, !dbg !533, !tbaa !460
  br label %cleanup, !dbg !534

if.end106:                                        ; preds = %if.else47
  %tobool107 = icmp slt i32 %18, 0, !dbg !535
  br i1 %tobool107, label %if.then108, label %if.end109, !dbg !535

if.then108:                                       ; preds = %if.end106
  call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([160 x i8]* @.str5, i64 0, i64 0), i8* %hmmfile) #7, !dbg !536
  call void @HMMFileClose(%struct.hmmfile_s* %1) #9, !dbg !538
  br label %cleanup, !dbg !539

if.end109:                                        ; preds = %if.end106
  %20 = load %struct._IO_FILE** %f, align 8, !dbg !540, !tbaa !465
  %call111 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %20) #7, !dbg !540
  %cmp112 = icmp eq i8* %call111, null, !dbg !540
  br i1 %cmp112, label %if.then113, label %if.end114, !dbg !540

if.then113:                                       ; preds = %if.end109
  call void @HMMFileClose(%struct.hmmfile_s* %1) #9, !dbg !541
  br label %cleanup, !dbg !543

if.end114:                                        ; preds = %if.end109
  %21 = load %struct._IO_FILE** %f, align 8, !dbg !544, !tbaa !465
  call void @rewind(%struct._IO_FILE* %21) #7, !dbg !544
  %call117 = call i32 @strncmp(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* %0, i64 8) #8, !dbg !545
  %cmp118 = icmp eq i32 %call117, 0, !dbg !545
  br i1 %cmp118, label %if.then119, label %if.else121, !dbg !545

if.then119:                                       ; preds = %if.end114
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc20hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !dbg !546, !tbaa !465
  br label %cleanup, !dbg !548

if.else121:                                       ; preds = %if.end114
  %call123 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), i8* %0, i64 10) #8, !dbg !549
  %cmp124 = icmp eq i32 %call123, 0, !dbg !549
  br i1 %cmp124, label %if.then125, label %if.else127, !dbg !549

if.then125:                                       ; preds = %if.else121
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc19hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !dbg !550, !tbaa !465
  br label %cleanup, !dbg !552

if.else127:                                       ; preds = %if.else121
  %call129 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* %0, i64 10) #8, !dbg !553
  %cmp130 = icmp eq i32 %call129, 0, !dbg !553
  br i1 %cmp130, label %if.then131, label %if.else133, !dbg !553

if.then131:                                       ; preds = %if.else127
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc17hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !dbg !554, !tbaa !465
  br label %cleanup, !dbg !556

if.else133:                                       ; preds = %if.else127
  %call135 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* %0, i64 10) #8, !dbg !557
  %cmp136 = icmp eq i32 %call135, 0, !dbg !557
  br i1 %cmp136, label %if.then137, label %if.else139, !dbg !557

if.then137:                                       ; preds = %if.else133
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc11hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !dbg !558, !tbaa !465
  br label %cleanup, !dbg !560

if.else139:                                       ; preds = %if.else133
  %call141 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0), i8* %0, i64 10) #8, !dbg !561
  %cmp142 = icmp eq i32 %call141, 0, !dbg !561
  br i1 %cmp142, label %if.then143, label %if.end149, !dbg !561

if.then143:                                       ; preds = %if.else139
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc10hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !dbg !562, !tbaa !465
  br label %cleanup, !dbg !564

if.end149:                                        ; preds = %if.else139
  call void @HMMFileClose(%struct.hmmfile_s* %1) #9, !dbg !565
  br label %cleanup, !dbg !566

cleanup:                                          ; preds = %if.else, %if.end149, %if.then143, %if.then137, %if.then131, %if.then125, %if.then119, %if.then113, %if.then108, %if.then93, %if.then88, %if.then82, %if.then77, %if.then71, %if.then66, %if.then60, %if.then55, %if.then49, %if.then44, %if.then40
  %retval.0 = phi %struct.hmmfile_s* [ %1, %if.then44 ], [ %1, %if.then49 ], [ %1, %if.then55 ], [ %1, %if.then60 ], [ %1, %if.then66 ], [ %1, %if.then71 ], [ %1, %if.then77 ], [ %1, %if.then82 ], [ %1, %if.then88 ], [ %1, %if.then93 ], [ null, %if.then108 ], [ null, %if.then113 ], [ %1, %if.then119 ], [ %1, %if.then125 ], [ %1, %if.then131 ], [ %1, %if.then137 ], [ %1, %if.then143 ], [ null, %if.end149 ], [ null, %if.then40 ], [ null, %if.else ]
  call void @llvm.lifetime.end(i64 512, i8* %0) #2, !dbg !567
  ret %struct.hmmfile_s* %retval.0, !dbg !567
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: optsize
declare i32 @SSIRecommendMode(i8*) #3

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: optsize
declare %struct._IO_FILE* @EnvFileOpen(i8*, i8*, i8**) #3

; Function Attrs: optsize
declare i8* @FileConcat(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @SSIOpen(i8*, %struct.ssifile_s**) #3

; Function Attrs: optsize
declare i32 @SSIGetFilePosition(%struct._IO_FILE*, i32, %struct.ssioffset_s*) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @HMMFileClose(%struct.hmmfile_s* nocapture %hmmfp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %hmmfp}, i64 0, metadata !229), !dbg !568
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0, !dbg !569
  %0 = load %struct._IO_FILE** %f, align 8, !dbg !569, !tbaa !465
  %cmp = icmp eq %struct._IO_FILE* %0, null, !dbg !569
  br i1 %cmp, label %if.end, label %if.then, !dbg !569

if.then:                                          ; preds = %entry
  %call = tail call i32 @fclose(%struct._IO_FILE* %0) #7, !dbg !569
  br label %if.end, !dbg !569

if.end:                                           ; preds = %entry, %if.then
  %ssi = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 1, !dbg !570
  %1 = load %struct.ssifile_s** %ssi, align 8, !dbg !570, !tbaa !465
  %cmp2 = icmp eq %struct.ssifile_s* %1, null, !dbg !570
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !570

if.then3:                                         ; preds = %if.end
  tail call void @SSIClose(%struct.ssifile_s* %1) #7, !dbg !570
  br label %if.end5, !dbg !570

if.end5:                                          ; preds = %if.end, %if.then3
  %2 = bitcast %struct.hmmfile_s* %hmmfp to i8*, !dbg !571
  tail call void @free(i8* %2) #7, !dbg !571
  ret void, !dbg !572
}

; Function Attrs: nounwind optsize
declare void @rewind(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_bin20hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  %type = alloca i32, align 4
  %magic = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %hmmfp}, i64 0, metadata !407), !dbg !573
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %ret_hmm}, i64 0, metadata !408), !dbg !573
  call void @llvm.dbg.declare(metadata !{i32* %type}, metadata !412), !dbg !574
  call void @llvm.dbg.declare(metadata !{i32* %magic}, metadata !413), !dbg !575
  call void @llvm.dbg.value(metadata !576, i64 0, metadata !409), !dbg !577
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0, !dbg !578
  %0 = load %struct._IO_FILE** %f, align 8, !dbg !578, !tbaa !465
  %call = call i32 @feof(%struct._IO_FILE* %0) #7, !dbg !578
  %tobool = icmp eq i32 %call, 0, !dbg !578
  br i1 %tobool, label %if.end, label %return, !dbg !578

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %magic to i8*, !dbg !579
  %2 = load %struct._IO_FILE** %f, align 8, !dbg !579, !tbaa !465
  %call2 = call i64 @fread(i8* %1, i64 4, i64 1, %struct._IO_FILE* %2) #7, !dbg !579
  %tobool3 = icmp eq i64 %call2, 0, !dbg !579
  br i1 %tobool3, label %return, label %if.end5, !dbg !579

if.end5:                                          ; preds = %if.end
  %byteswap = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 4, !dbg !580
  %3 = load i32* %byteswap, align 4, !dbg !580, !tbaa !460
  %tobool6 = icmp eq i32 %3, 0, !dbg !580
  br i1 %tobool6, label %if.end8, label %for.body.i, !dbg !580

for.body.i:                                       ; preds = %if.end5, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %if.end5 ]
  %4 = sub i64 3, %indvars.iv.i, !dbg !581
  %arrayidx.i = getelementptr inbounds i8* %1, i64 %4, !dbg !581
  %5 = load i8* %arrayidx.i, align 1, !dbg !581, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %5}, i64 0, metadata !584), !dbg !581
  %arrayidx3.i = getelementptr inbounds i8* %1, i64 %indvars.iv.i, !dbg !585
  %6 = load i8* %arrayidx3.i, align 1, !dbg !585, !tbaa !461
  store i8 %6, i8* %arrayidx.i, align 1, !dbg !585, !tbaa !461
  store i8 %5, i8* %arrayidx3.i, align 1, !dbg !586, !tbaa !461
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !587
  %lftr.wideiv883 = trunc i64 %indvars.iv.next.i to i32, !dbg !587
  %exitcond884 = icmp eq i32 %lftr.wideiv883, 2, !dbg !587
  br i1 %exitcond884, label %if.end8, label %for.body.i, !dbg !587

if.end8:                                          ; preds = %for.body.i, %if.end5
  call void @llvm.dbg.value(metadata !{i32* %magic}, i64 0, metadata !413), !dbg !588
  %7 = load i32* %magic, align 4, !dbg !588, !tbaa !460
  %8 = load i32* @v20magic, align 4, !dbg !588, !tbaa !460
  %cmp = icmp eq i32 %7, %8, !dbg !588
  br i1 %cmp, label %if.end10, label %if.end434, !dbg !588

if.end10:                                         ; preds = %if.end8
  %call11 = call %struct.plan7_s* @AllocPlan7Shell() #7, !dbg !589
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %call11}, i64 0, metadata !409), !dbg !589
  %flags = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 47, !dbg !590
  %9 = bitcast i32* %flags to i8*, !dbg !590
  %10 = load %struct._IO_FILE** %f, align 8, !dbg !590, !tbaa !465
  %call13 = call i64 @fread(i8* %9, i64 4, i64 1, %struct._IO_FILE* %10) #7, !dbg !590
  %tobool14 = icmp eq i64 %call13, 0, !dbg !590
  br i1 %tobool14, label %FAILURE, label %if.end16, !dbg !590

if.end16:                                         ; preds = %if.end10
  %11 = load i32* %byteswap, align 4, !dbg !591, !tbaa !460
  %tobool18 = icmp eq i32 %11, 0, !dbg !591
  br i1 %tobool18, label %if.end21, label %for.body.i755, !dbg !591

for.body.i755:                                    ; preds = %if.end16, %for.body.i755
  %indvars.iv.i749 = phi i64 [ %indvars.iv.next.i752, %for.body.i755 ], [ 0, %if.end16 ]
  %12 = sub i64 3, %indvars.iv.i749, !dbg !592
  %arrayidx.i750 = getelementptr inbounds i8* %9, i64 %12, !dbg !592
  %13 = load i8* %arrayidx.i750, align 1, !dbg !592, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %13}, i64 0, metadata !593), !dbg !592
  %arrayidx3.i751 = getelementptr inbounds i8* %9, i64 %indvars.iv.i749, !dbg !594
  %14 = load i8* %arrayidx3.i751, align 1, !dbg !594, !tbaa !461
  store i8 %14, i8* %arrayidx.i750, align 1, !dbg !594, !tbaa !461
  store i8 %13, i8* %arrayidx3.i751, align 1, !dbg !595, !tbaa !461
  %indvars.iv.next.i752 = add i64 %indvars.iv.i749, 1, !dbg !596
  %lftr.wideiv881 = trunc i64 %indvars.iv.next.i752 to i32, !dbg !596
  %exitcond882 = icmp eq i32 %lftr.wideiv881, 2, !dbg !596
  br i1 %exitcond882, label %if.end21.loopexit, label %for.body.i755, !dbg !596

if.end21.loopexit:                                ; preds = %for.body.i755
  %.pre = load i32* %byteswap, align 4, !dbg !597, !tbaa !460
  br label %if.end21

if.end21:                                         ; preds = %if.end21.loopexit, %if.end16
  %15 = phi i32 [ %.pre, %if.end21.loopexit ], [ 0, %if.end16 ]
  %16 = load %struct._IO_FILE** %f, align 8, !dbg !597, !tbaa !465
  %name = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 0, !dbg !597
  %call24 = call fastcc i32 @read_bin_string(%struct._IO_FILE* %16, i32 %15, i8** %name) #9, !dbg !597
  %tobool25 = icmp eq i32 %call24, 0, !dbg !597
  br i1 %tobool25, label %FAILURE, label %if.end27, !dbg !597

if.end27:                                         ; preds = %if.end21
  %17 = load i32* %flags, align 4, !dbg !598, !tbaa !460
  %and = and i32 %17, 512, !dbg !598
  %tobool29 = icmp eq i32 %and, 0, !dbg !598
  br i1 %tobool29, label %if.end35, label %land.lhs.true, !dbg !598

land.lhs.true:                                    ; preds = %if.end27
  %18 = load %struct._IO_FILE** %f, align 8, !dbg !599, !tbaa !465
  %19 = load i32* %byteswap, align 4, !dbg !599, !tbaa !460
  %acc = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 1, !dbg !599
  %call32 = call fastcc i32 @read_bin_string(%struct._IO_FILE* %18, i32 %19, i8** %acc) #9, !dbg !599
  %tobool33 = icmp eq i32 %call32, 0, !dbg !599
  br i1 %tobool33, label %FAILURE, label %land.lhs.true.if.end35_crit_edge, !dbg !599

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  %.pre890 = load i32* %flags, align 4, !dbg !600, !tbaa !460
  br label %if.end35, !dbg !599

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.end27
  %20 = phi i32 [ %.pre890, %land.lhs.true.if.end35_crit_edge ], [ %17, %if.end27 ]
  %and37 = and i32 %20, 2, !dbg !600
  %tobool38 = icmp eq i32 %and37, 0, !dbg !600
  br i1 %tobool38, label %if.end45, label %land.lhs.true39, !dbg !600

land.lhs.true39:                                  ; preds = %if.end35
  %21 = load %struct._IO_FILE** %f, align 8, !dbg !601, !tbaa !465
  %22 = load i32* %byteswap, align 4, !dbg !601, !tbaa !460
  %desc = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 2, !dbg !601
  %call42 = call fastcc i32 @read_bin_string(%struct._IO_FILE* %21, i32 %22, i8** %desc) #9, !dbg !601
  %tobool43 = icmp eq i32 %call42, 0, !dbg !601
  br i1 %tobool43, label %FAILURE, label %if.end45, !dbg !601

if.end45:                                         ; preds = %land.lhs.true39, %if.end35
  %M = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 20, !dbg !602
  %23 = bitcast i32* %M to i8*, !dbg !602
  %24 = load %struct._IO_FILE** %f, align 8, !dbg !602, !tbaa !465
  %call47 = call i64 @fread(i8* %23, i64 4, i64 1, %struct._IO_FILE* %24) #7, !dbg !602
  %tobool48 = icmp eq i64 %call47, 0, !dbg !602
  br i1 %tobool48, label %FAILURE, label %if.end50, !dbg !602

if.end50:                                         ; preds = %if.end45
  %25 = load i32* %byteswap, align 4, !dbg !603, !tbaa !460
  %tobool52 = icmp eq i32 %25, 0, !dbg !603
  br i1 %tobool52, label %if.end55, label %for.body.i771, !dbg !603

for.body.i771:                                    ; preds = %if.end50, %for.body.i771
  %indvars.iv.i765 = phi i64 [ %indvars.iv.next.i768, %for.body.i771 ], [ 0, %if.end50 ]
  %26 = sub i64 3, %indvars.iv.i765, !dbg !604
  %arrayidx.i766 = getelementptr inbounds i8* %23, i64 %26, !dbg !604
  %27 = load i8* %arrayidx.i766, align 1, !dbg !604, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %27}, i64 0, metadata !605), !dbg !604
  %arrayidx3.i767 = getelementptr inbounds i8* %23, i64 %indvars.iv.i765, !dbg !606
  %28 = load i8* %arrayidx3.i767, align 1, !dbg !606, !tbaa !461
  store i8 %28, i8* %arrayidx.i766, align 1, !dbg !606, !tbaa !461
  store i8 %27, i8* %arrayidx3.i767, align 1, !dbg !607, !tbaa !461
  %indvars.iv.next.i768 = add i64 %indvars.iv.i765, 1, !dbg !608
  %lftr.wideiv879 = trunc i64 %indvars.iv.next.i768 to i32, !dbg !608
  %exitcond880 = icmp eq i32 %lftr.wideiv879, 2, !dbg !608
  br i1 %exitcond880, label %if.end55, label %for.body.i771, !dbg !608

if.end55:                                         ; preds = %for.body.i771, %if.end50
  %29 = bitcast i32* %type to i8*, !dbg !609
  %30 = load %struct._IO_FILE** %f, align 8, !dbg !609, !tbaa !465
  %call57 = call i64 @fread(i8* %29, i64 4, i64 1, %struct._IO_FILE* %30) #7, !dbg !609
  %tobool58 = icmp eq i64 %call57, 0, !dbg !609
  br i1 %tobool58, label %FAILURE, label %if.end60, !dbg !609

if.end60:                                         ; preds = %if.end55
  %31 = load i32* %byteswap, align 4, !dbg !610, !tbaa !460
  %tobool62 = icmp eq i32 %31, 0, !dbg !610
  br i1 %tobool62, label %if.end64, label %for.body.i787, !dbg !610

for.body.i787:                                    ; preds = %if.end60, %for.body.i787
  %indvars.iv.i781 = phi i64 [ %indvars.iv.next.i784, %for.body.i787 ], [ 0, %if.end60 ]
  %32 = sub i64 3, %indvars.iv.i781, !dbg !611
  %arrayidx.i782 = getelementptr inbounds i8* %29, i64 %32, !dbg !611
  %33 = load i8* %arrayidx.i782, align 1, !dbg !611, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %33}, i64 0, metadata !612), !dbg !611
  %arrayidx3.i783 = getelementptr inbounds i8* %29, i64 %indvars.iv.i781, !dbg !613
  %34 = load i8* %arrayidx3.i783, align 1, !dbg !613, !tbaa !461
  store i8 %34, i8* %arrayidx.i782, align 1, !dbg !613, !tbaa !461
  store i8 %33, i8* %arrayidx3.i783, align 1, !dbg !614, !tbaa !461
  %indvars.iv.next.i784 = add i64 %indvars.iv.i781, 1, !dbg !615
  %lftr.wideiv877 = trunc i64 %indvars.iv.next.i784 to i32, !dbg !615
  %exitcond878 = icmp eq i32 %lftr.wideiv877, 2, !dbg !615
  br i1 %exitcond878, label %if.end64, label %for.body.i787, !dbg !615

if.end64:                                         ; preds = %for.body.i787, %if.end60
  %35 = load i32* @Alphabet_type, align 4, !dbg !616, !tbaa !460
  %cmp65 = icmp eq i32 %35, 0, !dbg !616
  call void @llvm.dbg.value(metadata !{i32* %type}, i64 0, metadata !412), !dbg !616
  %36 = load i32* %type, align 4, !dbg !616, !tbaa !460
  br i1 %cmp65, label %if.then66, label %if.else, !dbg !616

if.then66:                                        ; preds = %if.end64
  call void @SetAlphabet(i32 %36) #7, !dbg !616
  br label %if.end72, !dbg !616

if.else:                                          ; preds = %if.end64
  %cmp67 = icmp eq i32 %36, %35, !dbg !617
  br i1 %cmp67, label %if.end72, label %if.then68, !dbg !617

if.then68:                                        ; preds = %if.else
  %call69 = call i8* @AlphabetType2String(i32 %35) #7, !dbg !618
  call void @llvm.dbg.value(metadata !{i32* %type}, i64 0, metadata !412), !dbg !618
  %call70 = call i8* @AlphabetType2String(i32 %36) #7, !dbg !618
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([89 x i8]* @.str61, i64 0, i64 0), i8* %call69, i8* %call70) #7, !dbg !618
  br label %if.end72, !dbg !618

if.end72:                                         ; preds = %if.else, %if.then68, %if.then66
  %37 = load i32* %M, align 4, !dbg !619, !tbaa !460
  call void @AllocPlan7Body(%struct.plan7_s* %call11, i32 %37) #7, !dbg !619
  %38 = load i32* %flags, align 4, !dbg !620, !tbaa !460
  %and75 = and i32 %38, 4, !dbg !620
  %tobool76 = icmp eq i32 %and75, 0, !dbg !620
  %rf86.pre = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 3, !dbg !621
  br i1 %tobool76, label %if.end83, label %land.lhs.true77, !dbg !620

land.lhs.true77:                                  ; preds = %if.end72
  %39 = load i8** %rf86.pre, align 8, !dbg !622, !tbaa !465
  %40 = load i32* %M, align 4, !dbg !622, !tbaa !460
  %add = add nsw i32 %40, 1, !dbg !622
  %conv = sext i32 %add to i64, !dbg !622
  %41 = load %struct._IO_FILE** %f, align 8, !dbg !622, !tbaa !465
  %call80 = call i64 @fread(i8* %39, i64 1, i64 %conv, %struct._IO_FILE* %41) #7, !dbg !622
  %tobool81 = icmp eq i64 %call80, 0, !dbg !622
  br i1 %tobool81, label %if.then433, label %if.end83, !dbg !622

if.end83:                                         ; preds = %if.end72, %land.lhs.true77
  %42 = load i32* %M, align 4, !dbg !621, !tbaa !460
  %add85 = add nsw i32 %42, 1, !dbg !621
  %idxprom = sext i32 %add85 to i64, !dbg !621
  %43 = load i8** %rf86.pre, align 8, !dbg !621, !tbaa !465
  %arrayidx = getelementptr inbounds i8* %43, i64 %idxprom, !dbg !621
  store i8 0, i8* %arrayidx, align 1, !dbg !621, !tbaa !461
  %44 = load i32* %flags, align 4, !dbg !623, !tbaa !460
  %and88 = and i32 %44, 8, !dbg !623
  %tobool89 = icmp eq i32 %and88, 0, !dbg !623
  %cs102.pre = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 4, !dbg !624
  br i1 %tobool89, label %if.end98, label %land.lhs.true90, !dbg !623

land.lhs.true90:                                  ; preds = %if.end83
  %45 = load i8** %cs102.pre, align 8, !dbg !625, !tbaa !465
  %46 = load i32* %M, align 4, !dbg !625, !tbaa !460
  %add92 = add nsw i32 %46, 1, !dbg !625
  %conv93 = sext i32 %add92 to i64, !dbg !625
  %47 = load %struct._IO_FILE** %f, align 8, !dbg !625, !tbaa !465
  %call95 = call i64 @fread(i8* %45, i64 1, i64 %conv93, %struct._IO_FILE* %47) #7, !dbg !625
  %tobool96 = icmp eq i64 %call95, 0, !dbg !625
  br i1 %tobool96, label %if.then433, label %if.end98, !dbg !625

if.end98:                                         ; preds = %if.end83, %land.lhs.true90
  %48 = load i32* %M, align 4, !dbg !624, !tbaa !460
  %add100 = add nsw i32 %48, 1, !dbg !624
  %idxprom101 = sext i32 %add100 to i64, !dbg !624
  %49 = load i8** %cs102.pre, align 8, !dbg !624, !tbaa !465
  %arrayidx103 = getelementptr inbounds i8* %49, i64 %idxprom101, !dbg !624
  store i8 0, i8* %arrayidx103, align 1, !dbg !624, !tbaa !461
  %50 = load i32* %flags, align 4, !dbg !626, !tbaa !460
  %and105 = and i32 %50, 256, !dbg !626
  %tobool106 = icmp eq i32 %and105, 0, !dbg !626
  br i1 %tobool106, label %if.end115, label %land.lhs.true107, !dbg !626

land.lhs.true107:                                 ; preds = %if.end98
  %map = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 9, !dbg !627
  %51 = load i32** %map, align 8, !dbg !627, !tbaa !465
  %52 = bitcast i32* %51 to i8*, !dbg !627
  %53 = load i32* %M, align 4, !dbg !627, !tbaa !460
  %add109 = add nsw i32 %53, 1, !dbg !627
  %conv110 = sext i32 %add109 to i64, !dbg !627
  %54 = load %struct._IO_FILE** %f, align 8, !dbg !627, !tbaa !465
  %call112 = call i64 @fread(i8* %52, i64 4, i64 %conv110, %struct._IO_FILE* %54) #7, !dbg !627
  %tobool113 = icmp eq i64 %call112, 0, !dbg !627
  br i1 %tobool113, label %if.then433, label %if.end115, !dbg !627

if.end115:                                        ; preds = %land.lhs.true107, %if.end98
  %55 = load i32* %byteswap, align 4, !dbg !628, !tbaa !460
  %tobool117 = icmp eq i32 %55, 0, !dbg !628
  br i1 %tobool117, label %if.end125, label %for.cond.preheader, !dbg !628

for.cond.preheader:                               ; preds = %if.end115
  %56 = load i32* %M, align 4, !dbg !629, !tbaa !460
  %cmp120813 = icmp slt i32 %56, 1, !dbg !629
  br i1 %cmp120813, label %if.end125, label %for.body.lr.ph, !dbg !629

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %map123 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 9, !dbg !631
  br label %for.body, !dbg !629

for.body:                                         ; preds = %byteswap.exit780, %for.body.lr.ph
  %indvars.iv875 = phi i64 [ %indvars.iv.next876, %byteswap.exit780 ], [ 1, %for.body.lr.ph ]
  %57 = load i32** %map123, align 8, !dbg !631, !tbaa !465
  %arrayidx124 = getelementptr inbounds i32* %57, i64 %indvars.iv875, !dbg !631
  %58 = bitcast i32* %arrayidx124 to i8*, !dbg !631
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !633), !dbg !634
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !635), !dbg !636
  br label %for.body.i779, !dbg !636

for.body.i779:                                    ; preds = %for.body.i779, %for.body
  %indvars.iv.i773 = phi i64 [ 0, %for.body ], [ %indvars.iv.next.i776, %for.body.i779 ]
  %59 = sub i64 3, %indvars.iv.i773, !dbg !637
  %arrayidx.i774 = getelementptr inbounds i8* %58, i64 %59, !dbg !637
  %60 = load i8* %arrayidx.i774, align 1, !dbg !637, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %60}, i64 0, metadata !638), !dbg !637
  %arrayidx3.i775 = getelementptr inbounds i8* %58, i64 %indvars.iv.i773, !dbg !639
  %61 = load i8* %arrayidx3.i775, align 1, !dbg !639, !tbaa !461
  store i8 %61, i8* %arrayidx.i774, align 1, !dbg !639, !tbaa !461
  store i8 %60, i8* %arrayidx3.i775, align 1, !dbg !640, !tbaa !461
  %indvars.iv.next.i776 = add i64 %indvars.iv.i773, 1, !dbg !636
  %lftr.wideiv873 = trunc i64 %indvars.iv.next.i776 to i32, !dbg !636
  %exitcond874 = icmp eq i32 %lftr.wideiv873, 2, !dbg !636
  br i1 %exitcond874, label %byteswap.exit780, label %for.body.i779, !dbg !636

byteswap.exit780:                                 ; preds = %for.body.i779
  %indvars.iv.next876 = add i64 %indvars.iv875, 1, !dbg !629
  %62 = load i32* %M, align 4, !dbg !629, !tbaa !460
  %63 = trunc i64 %indvars.iv875 to i32, !dbg !629
  %cmp120 = icmp slt i32 %63, %62, !dbg !629
  br i1 %cmp120, label %for.body, label %for.cond.if.end125.loopexit_crit_edge, !dbg !629

for.cond.if.end125.loopexit_crit_edge:            ; preds = %byteswap.exit780
  %.pre885.pre = load i32* %byteswap, align 4, !dbg !641, !tbaa !460
  br label %if.end125, !dbg !629

if.end125:                                        ; preds = %for.cond.preheader, %for.cond.if.end125.loopexit_crit_edge, %if.end115
  %64 = phi i32 [ 0, %if.end115 ], [ %.pre885.pre, %for.cond.if.end125.loopexit_crit_edge ], [ %55, %for.cond.preheader ]
  %65 = load %struct._IO_FILE** %f, align 8, !dbg !641, !tbaa !465
  %comlog = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 6, !dbg !641
  %call128 = call fastcc i32 @read_bin_string(%struct._IO_FILE* %65, i32 %64, i8** %comlog) #9, !dbg !641
  %tobool129 = icmp eq i32 %call128, 0, !dbg !641
  br i1 %tobool129, label %FAILURE, label %if.end131, !dbg !641

if.end131:                                        ; preds = %if.end125
  %nseq = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 7, !dbg !642
  %66 = bitcast i32* %nseq to i8*, !dbg !642
  %67 = load %struct._IO_FILE** %f, align 8, !dbg !642, !tbaa !465
  %call133 = call i64 @fread(i8* %66, i64 4, i64 1, %struct._IO_FILE* %67) #7, !dbg !642
  %tobool134 = icmp eq i64 %call133, 0, !dbg !642
  br i1 %tobool134, label %FAILURE, label %if.end136, !dbg !642

if.end136:                                        ; preds = %if.end131
  %68 = load i32* %byteswap, align 4, !dbg !643, !tbaa !460
  %tobool138 = icmp eq i32 %68, 0, !dbg !643
  br i1 %tobool138, label %if.end141, label %for.body.i763, !dbg !643

for.body.i763:                                    ; preds = %if.end136, %for.body.i763
  %indvars.iv.i757 = phi i64 [ %indvars.iv.next.i760, %for.body.i763 ], [ 0, %if.end136 ]
  %69 = sub i64 3, %indvars.iv.i757, !dbg !644
  %arrayidx.i758 = getelementptr inbounds i8* %66, i64 %69, !dbg !644
  %70 = load i8* %arrayidx.i758, align 1, !dbg !644, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %70}, i64 0, metadata !645), !dbg !644
  %arrayidx3.i759 = getelementptr inbounds i8* %66, i64 %indvars.iv.i757, !dbg !646
  %71 = load i8* %arrayidx3.i759, align 1, !dbg !646, !tbaa !461
  store i8 %71, i8* %arrayidx.i758, align 1, !dbg !646, !tbaa !461
  store i8 %70, i8* %arrayidx3.i759, align 1, !dbg !647, !tbaa !461
  %indvars.iv.next.i760 = add i64 %indvars.iv.i757, 1, !dbg !648
  %lftr.wideiv871 = trunc i64 %indvars.iv.next.i760 to i32, !dbg !648
  %exitcond872 = icmp eq i32 %lftr.wideiv871, 2, !dbg !648
  br i1 %exitcond872, label %if.end141.loopexit, label %for.body.i763, !dbg !648

if.end141.loopexit:                               ; preds = %for.body.i763
  %.pre886 = load i32* %byteswap, align 4, !dbg !649, !tbaa !460
  br label %if.end141

if.end141:                                        ; preds = %if.end141.loopexit, %if.end136
  %72 = phi i32 [ %.pre886, %if.end141.loopexit ], [ 0, %if.end136 ]
  %73 = load %struct._IO_FILE** %f, align 8, !dbg !649, !tbaa !465
  %ctime = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 8, !dbg !649
  %call144 = call fastcc i32 @read_bin_string(%struct._IO_FILE* %73, i32 %72, i8** %ctime) #9, !dbg !649
  %tobool145 = icmp eq i32 %call144, 0, !dbg !649
  br i1 %tobool145, label %FAILURE, label %if.end147, !dbg !649

if.end147:                                        ; preds = %if.end141
  %checksum = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 10, !dbg !650
  %74 = bitcast i32* %checksum to i8*, !dbg !650
  %75 = load %struct._IO_FILE** %f, align 8, !dbg !650, !tbaa !465
  %call149 = call i64 @fread(i8* %74, i64 4, i64 1, %struct._IO_FILE* %75) #7, !dbg !650
  %tobool150 = icmp eq i64 %call149, 0, !dbg !650
  br i1 %tobool150, label %FAILURE, label %if.end152, !dbg !650

if.end152:                                        ; preds = %if.end147
  %76 = load i32* %byteswap, align 4, !dbg !651, !tbaa !460
  %tobool154 = icmp eq i32 %76, 0, !dbg !651
  br i1 %tobool154, label %if.end157, label %for.body.i747, !dbg !651

for.body.i747:                                    ; preds = %if.end152, %for.body.i747
  %indvars.iv.i741 = phi i64 [ %indvars.iv.next.i744, %for.body.i747 ], [ 0, %if.end152 ]
  %77 = sub i64 3, %indvars.iv.i741, !dbg !652
  %arrayidx.i742 = getelementptr inbounds i8* %74, i64 %77, !dbg !652
  %78 = load i8* %arrayidx.i742, align 1, !dbg !652, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %78}, i64 0, metadata !653), !dbg !652
  %arrayidx3.i743 = getelementptr inbounds i8* %74, i64 %indvars.iv.i741, !dbg !654
  %79 = load i8* %arrayidx3.i743, align 1, !dbg !654, !tbaa !461
  store i8 %79, i8* %arrayidx.i742, align 1, !dbg !654, !tbaa !461
  store i8 %78, i8* %arrayidx3.i743, align 1, !dbg !655, !tbaa !461
  %indvars.iv.next.i744 = add i64 %indvars.iv.i741, 1, !dbg !656
  %lftr.wideiv869 = trunc i64 %indvars.iv.next.i744 to i32, !dbg !656
  %exitcond870 = icmp eq i32 %lftr.wideiv869, 2, !dbg !656
  br i1 %exitcond870, label %if.end157, label %for.body.i747, !dbg !656

if.end157:                                        ; preds = %for.body.i747, %if.end152
  %80 = load i32* %flags, align 4, !dbg !657, !tbaa !460
  %and159 = and i32 %80, 1024, !dbg !657
  %tobool160 = icmp eq i32 %and159, 0, !dbg !657
  br i1 %tobool160, label %if.end178, label %if.then161, !dbg !657

if.then161:                                       ; preds = %if.end157
  %ga1 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 14, !dbg !658
  %81 = bitcast float* %ga1 to i8*, !dbg !658
  %82 = load %struct._IO_FILE** %f, align 8, !dbg !658, !tbaa !465
  %call163 = call i64 @fread(i8* %81, i64 4, i64 1, %struct._IO_FILE* %82) #7, !dbg !658
  %tobool164 = icmp eq i64 %call163, 0, !dbg !658
  br i1 %tobool164, label %FAILURE, label %if.end166, !dbg !658

if.end166:                                        ; preds = %if.then161
  %ga2 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 15, !dbg !660
  %83 = bitcast float* %ga2 to i8*, !dbg !660
  %84 = load %struct._IO_FILE** %f, align 8, !dbg !660, !tbaa !465
  %call168 = call i64 @fread(i8* %83, i64 4, i64 1, %struct._IO_FILE* %84) #7, !dbg !660
  %tobool169 = icmp eq i64 %call168, 0, !dbg !660
  br i1 %tobool169, label %FAILURE, label %if.end171, !dbg !660

if.end171:                                        ; preds = %if.end166
  %85 = load i32* %byteswap, align 4, !dbg !661, !tbaa !460
  %tobool173 = icmp eq i32 %85, 0, !dbg !661
  br i1 %tobool173, label %if.end178, label %for.body.i739, !dbg !661

for.body.i739:                                    ; preds = %if.end171, %for.body.i739
  %indvars.iv.i733 = phi i64 [ %indvars.iv.next.i736, %for.body.i739 ], [ 0, %if.end171 ]
  %86 = sub i64 3, %indvars.iv.i733, !dbg !662
  %arrayidx.i734 = getelementptr inbounds i8* %81, i64 %86, !dbg !662
  %87 = load i8* %arrayidx.i734, align 1, !dbg !662, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %87}, i64 0, metadata !665), !dbg !662
  %arrayidx3.i735 = getelementptr inbounds i8* %81, i64 %indvars.iv.i733, !dbg !666
  %88 = load i8* %arrayidx3.i735, align 1, !dbg !666, !tbaa !461
  store i8 %88, i8* %arrayidx.i734, align 1, !dbg !666, !tbaa !461
  store i8 %87, i8* %arrayidx3.i735, align 1, !dbg !667, !tbaa !461
  %indvars.iv.next.i736 = add i64 %indvars.iv.i733, 1, !dbg !668
  %lftr.wideiv867 = trunc i64 %indvars.iv.next.i736 to i32, !dbg !668
  %exitcond868 = icmp eq i32 %lftr.wideiv867, 2, !dbg !668
  br i1 %exitcond868, label %for.body.i731, label %for.body.i739, !dbg !668

for.body.i731:                                    ; preds = %for.body.i739, %for.body.i731
  %indvars.iv.i725 = phi i64 [ %indvars.iv.next.i728, %for.body.i731 ], [ 0, %for.body.i739 ]
  %89 = sub i64 3, %indvars.iv.i725, !dbg !669
  %arrayidx.i726 = getelementptr inbounds i8* %83, i64 %89, !dbg !669
  %90 = load i8* %arrayidx.i726, align 1, !dbg !669, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %90}, i64 0, metadata !671), !dbg !669
  %arrayidx3.i727 = getelementptr inbounds i8* %83, i64 %indvars.iv.i725, !dbg !672
  %91 = load i8* %arrayidx3.i727, align 1, !dbg !672, !tbaa !461
  store i8 %91, i8* %arrayidx.i726, align 1, !dbg !672, !tbaa !461
  store i8 %90, i8* %arrayidx3.i727, align 1, !dbg !673, !tbaa !461
  %indvars.iv.next.i728 = add i64 %indvars.iv.i725, 1, !dbg !674
  %lftr.wideiv865 = trunc i64 %indvars.iv.next.i728 to i32, !dbg !674
  %exitcond866 = icmp eq i32 %lftr.wideiv865, 2, !dbg !674
  br i1 %exitcond866, label %if.end178, label %for.body.i731, !dbg !674

if.end178:                                        ; preds = %for.body.i731, %if.end171, %if.end157
  %92 = load i32* %flags, align 4, !dbg !675, !tbaa !460
  %and180 = and i32 %92, 2048, !dbg !675
  %tobool181 = icmp eq i32 %and180, 0, !dbg !675
  br i1 %tobool181, label %if.end199, label %if.then182, !dbg !675

if.then182:                                       ; preds = %if.end178
  %tc1 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 16, !dbg !676
  %93 = bitcast float* %tc1 to i8*, !dbg !676
  %94 = load %struct._IO_FILE** %f, align 8, !dbg !676, !tbaa !465
  %call184 = call i64 @fread(i8* %93, i64 4, i64 1, %struct._IO_FILE* %94) #7, !dbg !676
  %tobool185 = icmp eq i64 %call184, 0, !dbg !676
  br i1 %tobool185, label %FAILURE, label %if.end187, !dbg !676

if.end187:                                        ; preds = %if.then182
  %tc2 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 17, !dbg !678
  %95 = bitcast float* %tc2 to i8*, !dbg !678
  %96 = load %struct._IO_FILE** %f, align 8, !dbg !678, !tbaa !465
  %call189 = call i64 @fread(i8* %95, i64 4, i64 1, %struct._IO_FILE* %96) #7, !dbg !678
  %tobool190 = icmp eq i64 %call189, 0, !dbg !678
  br i1 %tobool190, label %FAILURE, label %if.end192, !dbg !678

if.end192:                                        ; preds = %if.end187
  %97 = load i32* %byteswap, align 4, !dbg !679, !tbaa !460
  %tobool194 = icmp eq i32 %97, 0, !dbg !679
  br i1 %tobool194, label %if.end199, label %for.body.i723, !dbg !679

for.body.i723:                                    ; preds = %if.end192, %for.body.i723
  %indvars.iv.i717 = phi i64 [ %indvars.iv.next.i720, %for.body.i723 ], [ 0, %if.end192 ]
  %98 = sub i64 3, %indvars.iv.i717, !dbg !680
  %arrayidx.i718 = getelementptr inbounds i8* %93, i64 %98, !dbg !680
  %99 = load i8* %arrayidx.i718, align 1, !dbg !680, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %99}, i64 0, metadata !683), !dbg !680
  %arrayidx3.i719 = getelementptr inbounds i8* %93, i64 %indvars.iv.i717, !dbg !684
  %100 = load i8* %arrayidx3.i719, align 1, !dbg !684, !tbaa !461
  store i8 %100, i8* %arrayidx.i718, align 1, !dbg !684, !tbaa !461
  store i8 %99, i8* %arrayidx3.i719, align 1, !dbg !685, !tbaa !461
  %indvars.iv.next.i720 = add i64 %indvars.iv.i717, 1, !dbg !686
  %lftr.wideiv863 = trunc i64 %indvars.iv.next.i720 to i32, !dbg !686
  %exitcond864 = icmp eq i32 %lftr.wideiv863, 2, !dbg !686
  br i1 %exitcond864, label %for.body.i715, label %for.body.i723, !dbg !686

for.body.i715:                                    ; preds = %for.body.i723, %for.body.i715
  %indvars.iv.i709 = phi i64 [ %indvars.iv.next.i712, %for.body.i715 ], [ 0, %for.body.i723 ]
  %101 = sub i64 3, %indvars.iv.i709, !dbg !687
  %arrayidx.i710 = getelementptr inbounds i8* %95, i64 %101, !dbg !687
  %102 = load i8* %arrayidx.i710, align 1, !dbg !687, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %102}, i64 0, metadata !689), !dbg !687
  %arrayidx3.i711 = getelementptr inbounds i8* %95, i64 %indvars.iv.i709, !dbg !690
  %103 = load i8* %arrayidx3.i711, align 1, !dbg !690, !tbaa !461
  store i8 %103, i8* %arrayidx.i710, align 1, !dbg !690, !tbaa !461
  store i8 %102, i8* %arrayidx3.i711, align 1, !dbg !691, !tbaa !461
  %indvars.iv.next.i712 = add i64 %indvars.iv.i709, 1, !dbg !692
  %lftr.wideiv861 = trunc i64 %indvars.iv.next.i712 to i32, !dbg !692
  %exitcond862 = icmp eq i32 %lftr.wideiv861, 2, !dbg !692
  br i1 %exitcond862, label %if.end199, label %for.body.i715, !dbg !692

if.end199:                                        ; preds = %for.body.i715, %if.end192, %if.end178
  %104 = load i32* %flags, align 4, !dbg !693, !tbaa !460
  %and201 = and i32 %104, 4096, !dbg !693
  %tobool202 = icmp eq i32 %and201, 0, !dbg !693
  br i1 %tobool202, label %for.body224, label %if.then203, !dbg !693

if.then203:                                       ; preds = %if.end199
  %nc1 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 18, !dbg !694
  %105 = bitcast float* %nc1 to i8*, !dbg !694
  %106 = load %struct._IO_FILE** %f, align 8, !dbg !694, !tbaa !465
  %call205 = call i64 @fread(i8* %105, i64 4, i64 1, %struct._IO_FILE* %106) #7, !dbg !694
  %tobool206 = icmp eq i64 %call205, 0, !dbg !694
  br i1 %tobool206, label %FAILURE, label %if.end208, !dbg !694

if.end208:                                        ; preds = %if.then203
  %nc2 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 19, !dbg !696
  %107 = bitcast float* %nc2 to i8*, !dbg !696
  %108 = load %struct._IO_FILE** %f, align 8, !dbg !696, !tbaa !465
  %call210 = call i64 @fread(i8* %107, i64 4, i64 1, %struct._IO_FILE* %108) #7, !dbg !696
  %tobool211 = icmp eq i64 %call210, 0, !dbg !696
  br i1 %tobool211, label %FAILURE, label %if.end213, !dbg !696

if.end213:                                        ; preds = %if.end208
  %109 = load i32* %byteswap, align 4, !dbg !697, !tbaa !460
  %tobool215 = icmp eq i32 %109, 0, !dbg !697
  br i1 %tobool215, label %for.body224, label %for.body.i707, !dbg !697

for.body.i707:                                    ; preds = %if.end213, %for.body.i707
  %indvars.iv.i701 = phi i64 [ %indvars.iv.next.i704, %for.body.i707 ], [ 0, %if.end213 ]
  %110 = sub i64 3, %indvars.iv.i701, !dbg !698
  %arrayidx.i702 = getelementptr inbounds i8* %105, i64 %110, !dbg !698
  %111 = load i8* %arrayidx.i702, align 1, !dbg !698, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %111}, i64 0, metadata !701), !dbg !698
  %arrayidx3.i703 = getelementptr inbounds i8* %105, i64 %indvars.iv.i701, !dbg !702
  %112 = load i8* %arrayidx3.i703, align 1, !dbg !702, !tbaa !461
  store i8 %112, i8* %arrayidx.i702, align 1, !dbg !702, !tbaa !461
  store i8 %111, i8* %arrayidx3.i703, align 1, !dbg !703, !tbaa !461
  %indvars.iv.next.i704 = add i64 %indvars.iv.i701, 1, !dbg !704
  %lftr.wideiv859 = trunc i64 %indvars.iv.next.i704 to i32, !dbg !704
  %exitcond860 = icmp eq i32 %lftr.wideiv859, 2, !dbg !704
  br i1 %exitcond860, label %for.body.i699, label %for.body.i707, !dbg !704

for.body.i699:                                    ; preds = %for.body.i707, %for.body.i699
  %indvars.iv.i693 = phi i64 [ %indvars.iv.next.i696, %for.body.i699 ], [ 0, %for.body.i707 ]
  %113 = sub i64 3, %indvars.iv.i693, !dbg !705
  %arrayidx.i694 = getelementptr inbounds i8* %107, i64 %113, !dbg !705
  %114 = load i8* %arrayidx.i694, align 1, !dbg !705, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %114}, i64 0, metadata !707), !dbg !705
  %arrayidx3.i695 = getelementptr inbounds i8* %107, i64 %indvars.iv.i693, !dbg !708
  %115 = load i8* %arrayidx3.i695, align 1, !dbg !708, !tbaa !461
  store i8 %115, i8* %arrayidx.i694, align 1, !dbg !708, !tbaa !461
  store i8 %114, i8* %arrayidx3.i695, align 1, !dbg !709, !tbaa !461
  %indvars.iv.next.i696 = add i64 %indvars.iv.i693, 1, !dbg !710
  %lftr.wideiv857 = trunc i64 %indvars.iv.next.i696 to i32, !dbg !710
  %exitcond858 = icmp eq i32 %lftr.wideiv857, 2, !dbg !710
  br i1 %exitcond858, label %for.body224, label %for.body.i699, !dbg !710

for.body224:                                      ; preds = %if.end199, %if.end213, %for.body.i699, %for.inc248
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %for.inc248 ], [ 0, %for.body.i699 ], [ 0, %if.end213 ], [ 0, %if.end199 ]
  %arrayidx226 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 25, i64 %indvars.iv855, !dbg !711
  %116 = bitcast [2 x float]* %arrayidx226 to i8*, !dbg !711
  %117 = load %struct._IO_FILE** %f, align 8, !dbg !711, !tbaa !465
  %call228 = call i64 @fread(i8* %116, i64 4, i64 2, %struct._IO_FILE* %117) #7, !dbg !711
  %tobool229 = icmp eq i64 %call228, 0, !dbg !711
  br i1 %tobool229, label %FAILURE, label %if.end231, !dbg !711

if.end231:                                        ; preds = %for.body224
  %118 = load i32* %byteswap, align 4, !dbg !714, !tbaa !460
  %tobool233 = icmp eq i32 %118, 0, !dbg !714
  br i1 %tobool233, label %for.inc248, label %for.body238, !dbg !714

for.body238:                                      ; preds = %if.end231, %byteswap.exit692
  %indvars.iv851 = phi i64 [ %indvars.iv.next852, %byteswap.exit692 ], [ 0, %if.end231 ]
  %arrayidx243 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 25, i64 %indvars.iv855, i64 %indvars.iv851, !dbg !715
  %119 = bitcast float* %arrayidx243 to i8*, !dbg !715
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !718), !dbg !719
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !720), !dbg !721
  br label %for.body.i691, !dbg !721

for.body.i691:                                    ; preds = %for.body.i691, %for.body238
  %indvars.iv.i685 = phi i64 [ 0, %for.body238 ], [ %indvars.iv.next.i688, %for.body.i691 ]
  %120 = sub i64 3, %indvars.iv.i685, !dbg !722
  %arrayidx.i686 = getelementptr inbounds i8* %119, i64 %120, !dbg !722
  %121 = load i8* %arrayidx.i686, align 1, !dbg !722, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %121}, i64 0, metadata !723), !dbg !722
  %arrayidx3.i687 = getelementptr inbounds i8* %119, i64 %indvars.iv.i685, !dbg !724
  %122 = load i8* %arrayidx3.i687, align 1, !dbg !724, !tbaa !461
  store i8 %122, i8* %arrayidx.i686, align 1, !dbg !724, !tbaa !461
  store i8 %121, i8* %arrayidx3.i687, align 1, !dbg !725, !tbaa !461
  %indvars.iv.next.i688 = add i64 %indvars.iv.i685, 1, !dbg !721
  %lftr.wideiv849 = trunc i64 %indvars.iv.next.i688 to i32, !dbg !721
  %exitcond850 = icmp eq i32 %lftr.wideiv849, 2, !dbg !721
  br i1 %exitcond850, label %byteswap.exit692, label %for.body.i691, !dbg !721

byteswap.exit692:                                 ; preds = %for.body.i691
  %indvars.iv.next852 = add i64 %indvars.iv851, 1, !dbg !726
  %lftr.wideiv853 = trunc i64 %indvars.iv.next852 to i32, !dbg !726
  %exitcond854 = icmp eq i32 %lftr.wideiv853, 2, !dbg !726
  br i1 %exitcond854, label %for.inc248, label %for.body238, !dbg !726

for.inc248:                                       ; preds = %byteswap.exit692, %if.end231
  %indvars.iv.next856 = add i64 %indvars.iv855, 1, !dbg !727
  %123 = trunc i64 %indvars.iv.next856 to i32, !dbg !727
  %cmp222 = icmp slt i32 %123, 4, !dbg !727
  br i1 %cmp222, label %for.body224, label %for.end250, !dbg !727

for.end250:                                       ; preds = %for.inc248
  %p1 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 29, !dbg !728
  %124 = bitcast float* %p1 to i8*, !dbg !728
  %125 = load %struct._IO_FILE** %f, align 8, !dbg !728, !tbaa !465
  %call252 = call i64 @fread(i8* %124, i64 4, i64 1, %struct._IO_FILE* %125) #7, !dbg !728
  %tobool253 = icmp eq i64 %call252, 0, !dbg !728
  br i1 %tobool253, label %FAILURE, label %if.end255, !dbg !728

if.end255:                                        ; preds = %for.end250
  %null = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 28, !dbg !729
  %126 = bitcast [20 x float]* %null to i8*, !dbg !729
  %127 = load i32* @Alphabet_size, align 4, !dbg !729, !tbaa !460
  %conv257 = sext i32 %127 to i64, !dbg !729
  %128 = load %struct._IO_FILE** %f, align 8, !dbg !729, !tbaa !465
  %call259 = call i64 @fread(i8* %126, i64 4, i64 %conv257, %struct._IO_FILE* %128) #7, !dbg !729
  %tobool260 = icmp eq i64 %call259, 0, !dbg !729
  br i1 %tobool260, label %FAILURE, label %if.end262, !dbg !729

if.end262:                                        ; preds = %if.end255
  %129 = load i32* %flags, align 4, !dbg !730, !tbaa !460
  %and264 = and i32 %129, 128, !dbg !730
  %tobool265 = icmp eq i32 %and264, 0, !dbg !730
  br i1 %tobool265, label %if.end283, label %if.then266, !dbg !730

if.then266:                                       ; preds = %if.end262
  %mu = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 45, !dbg !731
  %130 = bitcast float* %mu to i8*, !dbg !731
  %131 = load %struct._IO_FILE** %f, align 8, !dbg !731, !tbaa !465
  %call268 = call i64 @fread(i8* %130, i64 4, i64 1, %struct._IO_FILE* %131) #7, !dbg !731
  %tobool269 = icmp eq i64 %call268, 0, !dbg !731
  br i1 %tobool269, label %FAILURE, label %if.end271, !dbg !731

if.end271:                                        ; preds = %if.then266
  %lambda = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 46, !dbg !733
  %132 = bitcast float* %lambda to i8*, !dbg !733
  %133 = load %struct._IO_FILE** %f, align 8, !dbg !733, !tbaa !465
  %call273 = call i64 @fread(i8* %132, i64 4, i64 1, %struct._IO_FILE* %133) #7, !dbg !733
  %tobool274 = icmp eq i64 %call273, 0, !dbg !733
  br i1 %tobool274, label %FAILURE, label %if.end276, !dbg !733

if.end276:                                        ; preds = %if.end271
  %134 = load i32* %byteswap, align 4, !dbg !734, !tbaa !460
  %tobool278 = icmp eq i32 %134, 0, !dbg !734
  br i1 %tobool278, label %if.end283, label %for.body.i683, !dbg !734

for.body.i683:                                    ; preds = %if.end276, %for.body.i683
  %indvars.iv.i677 = phi i64 [ %indvars.iv.next.i680, %for.body.i683 ], [ 0, %if.end276 ]
  %135 = sub i64 3, %indvars.iv.i677, !dbg !735
  %arrayidx.i678 = getelementptr inbounds i8* %130, i64 %135, !dbg !735
  %136 = load i8* %arrayidx.i678, align 1, !dbg !735, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %136}, i64 0, metadata !738), !dbg !735
  %arrayidx3.i679 = getelementptr inbounds i8* %130, i64 %indvars.iv.i677, !dbg !739
  %137 = load i8* %arrayidx3.i679, align 1, !dbg !739, !tbaa !461
  store i8 %137, i8* %arrayidx.i678, align 1, !dbg !739, !tbaa !461
  store i8 %136, i8* %arrayidx3.i679, align 1, !dbg !740, !tbaa !461
  %indvars.iv.next.i680 = add i64 %indvars.iv.i677, 1, !dbg !741
  %lftr.wideiv847 = trunc i64 %indvars.iv.next.i680 to i32, !dbg !741
  %exitcond848 = icmp eq i32 %lftr.wideiv847, 2, !dbg !741
  br i1 %exitcond848, label %for.body.i675, label %for.body.i683, !dbg !741

for.body.i675:                                    ; preds = %for.body.i683, %for.body.i675
  %indvars.iv.i669 = phi i64 [ %indvars.iv.next.i672, %for.body.i675 ], [ 0, %for.body.i683 ]
  %138 = sub i64 3, %indvars.iv.i669, !dbg !742
  %arrayidx.i670 = getelementptr inbounds i8* %132, i64 %138, !dbg !742
  %139 = load i8* %arrayidx.i670, align 1, !dbg !742, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %139}, i64 0, metadata !744), !dbg !742
  %arrayidx3.i671 = getelementptr inbounds i8* %132, i64 %indvars.iv.i669, !dbg !745
  %140 = load i8* %arrayidx3.i671, align 1, !dbg !745, !tbaa !461
  store i8 %140, i8* %arrayidx.i670, align 1, !dbg !745, !tbaa !461
  store i8 %139, i8* %arrayidx3.i671, align 1, !dbg !746, !tbaa !461
  %indvars.iv.next.i672 = add i64 %indvars.iv.i669, 1, !dbg !747
  %lftr.wideiv845 = trunc i64 %indvars.iv.next.i672 to i32, !dbg !747
  %exitcond846 = icmp eq i32 %lftr.wideiv845, 2, !dbg !747
  br i1 %exitcond846, label %if.end283, label %for.body.i675, !dbg !747

if.end283:                                        ; preds = %for.body.i675, %if.end276, %if.end262
  %tbd1 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 24, !dbg !748
  %141 = bitcast float* %tbd1 to i8*, !dbg !748
  %142 = load %struct._IO_FILE** %f, align 8, !dbg !748, !tbaa !465
  %call285 = call i64 @fread(i8* %141, i64 4, i64 1, %struct._IO_FILE* %142) #7, !dbg !748
  %tobool286 = icmp eq i64 %call285, 0, !dbg !748
  br i1 %tobool286, label %FAILURE, label %if.end288, !dbg !748

if.end288:                                        ; preds = %if.end283
  %begin = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 26, !dbg !749
  %143 = load float** %begin, align 8, !dbg !749, !tbaa !465
  %144 = bitcast float* %143 to i8*, !dbg !749
  %145 = load i32* %M, align 4, !dbg !749, !tbaa !460
  %add290 = add nsw i32 %145, 1, !dbg !749
  %conv291 = sext i32 %add290 to i64, !dbg !749
  %146 = load %struct._IO_FILE** %f, align 8, !dbg !749, !tbaa !465
  %call293 = call i64 @fread(i8* %144, i64 4, i64 %conv291, %struct._IO_FILE* %146) #7, !dbg !749
  %tobool294 = icmp eq i64 %call293, 0, !dbg !749
  br i1 %tobool294, label %FAILURE, label %if.end296, !dbg !749

if.end296:                                        ; preds = %if.end288
  %end = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 27, !dbg !750
  %147 = load float** %end, align 8, !dbg !750, !tbaa !465
  %148 = bitcast float* %147 to i8*, !dbg !750
  %149 = load i32* %M, align 4, !dbg !750, !tbaa !460
  %add298 = add nsw i32 %149, 1, !dbg !750
  %conv299 = sext i32 %add298 to i64, !dbg !750
  %150 = load %struct._IO_FILE** %f, align 8, !dbg !750, !tbaa !465
  %call301 = call i64 @fread(i8* %148, i64 4, i64 %conv299, %struct._IO_FILE* %150) #7, !dbg !750
  %tobool302 = icmp eq i64 %call301, 0, !dbg !750
  br i1 %tobool302, label %FAILURE, label %for.cond305.preheader, !dbg !750

for.cond305.preheader:                            ; preds = %if.end296
  %151 = load i32* %M, align 4, !dbg !751, !tbaa !460
  %cmp307808 = icmp slt i32 %151, 1, !dbg !751
  br i1 %cmp307808, label %for.end351, label %for.body309.lr.ph, !dbg !751

for.body309.lr.ph:                                ; preds = %for.cond305.preheader
  %mat = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 22, !dbg !753
  br label %for.body309, !dbg !751

for.cond305:                                      ; preds = %for.body309
  %indvars.iv.next844 = add i64 %indvars.iv843, 1, !dbg !751
  %152 = load i32* %M, align 4, !dbg !751, !tbaa !460
  %153 = trunc i64 %indvars.iv843 to i32, !dbg !751
  %cmp307 = icmp slt i32 %153, %152, !dbg !751
  br i1 %cmp307, label %for.body309, label %for.cond321.preheader, !dbg !751

for.cond321.preheader:                            ; preds = %for.cond305
  %cmp323805 = icmp sgt i32 %152, 1, !dbg !754
  br i1 %cmp323805, label %for.body325.lr.ph, label %for.end351, !dbg !754

for.body325.lr.ph:                                ; preds = %for.cond321.preheader
  %ins = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 23, !dbg !756
  br label %for.body325, !dbg !754

for.body309:                                      ; preds = %for.cond305, %for.body309.lr.ph
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %for.cond305 ], [ 1, %for.body309.lr.ph ]
  %154 = load float*** %mat, align 8, !dbg !753, !tbaa !465
  %arrayidx311 = getelementptr inbounds float** %154, i64 %indvars.iv843, !dbg !753
  %155 = load float** %arrayidx311, align 8, !dbg !753, !tbaa !465
  %156 = bitcast float* %155 to i8*, !dbg !753
  %157 = load i32* @Alphabet_size, align 4, !dbg !753, !tbaa !460
  %conv312 = sext i32 %157 to i64, !dbg !753
  %158 = load %struct._IO_FILE** %f, align 8, !dbg !753, !tbaa !465
  %call314 = call i64 @fread(i8* %156, i64 4, i64 %conv312, %struct._IO_FILE* %158) #7, !dbg !753
  %tobool315 = icmp eq i64 %call314, 0, !dbg !753
  br i1 %tobool315, label %FAILURE, label %for.cond305, !dbg !753

for.cond321:                                      ; preds = %for.body325
  %159 = load i32* %M, align 4, !dbg !754, !tbaa !460
  %160 = trunc i64 %indvars.iv.next842 to i32, !dbg !754
  %cmp323 = icmp slt i32 %160, %159, !dbg !754
  br i1 %cmp323, label %for.body325, label %for.cond337.preheader, !dbg !754

for.cond337.preheader:                            ; preds = %for.cond321
  %cmp339802 = icmp sgt i32 %159, 1, !dbg !757
  br i1 %cmp339802, label %for.body341.lr.ph, label %for.end351, !dbg !757

for.body341.lr.ph:                                ; preds = %for.cond337.preheader
  %t = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 21, !dbg !759
  br label %for.body341, !dbg !757

for.body325:                                      ; preds = %for.body325.lr.ph, %for.cond321
  %indvars.iv841 = phi i64 [ 1, %for.body325.lr.ph ], [ %indvars.iv.next842, %for.cond321 ]
  %161 = load float*** %ins, align 8, !dbg !756, !tbaa !465
  %arrayidx327 = getelementptr inbounds float** %161, i64 %indvars.iv841, !dbg !756
  %162 = load float** %arrayidx327, align 8, !dbg !756, !tbaa !465
  %163 = bitcast float* %162 to i8*, !dbg !756
  %164 = load i32* @Alphabet_size, align 4, !dbg !756, !tbaa !460
  %conv328 = sext i32 %164 to i64, !dbg !756
  %165 = load %struct._IO_FILE** %f, align 8, !dbg !756, !tbaa !465
  %call330 = call i64 @fread(i8* %163, i64 4, i64 %conv328, %struct._IO_FILE* %165) #7, !dbg !756
  %tobool331 = icmp eq i64 %call330, 0, !dbg !756
  %indvars.iv.next842 = add i64 %indvars.iv841, 1, !dbg !754
  br i1 %tobool331, label %FAILURE, label %for.cond321, !dbg !756

for.cond337:                                      ; preds = %for.body341
  %166 = load i32* %M, align 4, !dbg !757, !tbaa !460
  %167 = trunc i64 %indvars.iv.next840 to i32, !dbg !757
  %cmp339 = icmp slt i32 %167, %166, !dbg !757
  br i1 %cmp339, label %for.body341, label %for.end351, !dbg !757

for.body341:                                      ; preds = %for.body341.lr.ph, %for.cond337
  %indvars.iv839 = phi i64 [ 1, %for.body341.lr.ph ], [ %indvars.iv.next840, %for.cond337 ]
  %168 = load float*** %t, align 8, !dbg !759, !tbaa !465
  %arrayidx343 = getelementptr inbounds float** %168, i64 %indvars.iv839, !dbg !759
  %169 = load float** %arrayidx343, align 8, !dbg !759, !tbaa !465
  %170 = bitcast float* %169 to i8*, !dbg !759
  %171 = load %struct._IO_FILE** %f, align 8, !dbg !759, !tbaa !465
  %call345 = call i64 @fread(i8* %170, i64 4, i64 7, %struct._IO_FILE* %171) #7, !dbg !759
  %tobool346 = icmp eq i64 %call345, 0, !dbg !759
  %indvars.iv.next840 = add i64 %indvars.iv839, 1, !dbg !757
  br i1 %tobool346, label %FAILURE, label %for.cond337, !dbg !759

for.end351:                                       ; preds = %for.cond305.preheader, %for.cond321.preheader, %for.cond337, %for.cond337.preheader
  %172 = load i32* %byteswap, align 4, !dbg !760, !tbaa !460
  %tobool353 = icmp eq i32 %172, 0, !dbg !760
  br i1 %tobool353, label %if.end427, label %for.cond355.preheader, !dbg !760

for.cond355.preheader:                            ; preds = %for.end351
  %173 = load i32* @Alphabet_size, align 4, !dbg !761, !tbaa !460
  %cmp356800 = icmp sgt i32 %173, 0, !dbg !761
  br i1 %cmp356800, label %for.body358, label %for.body.i659, !dbg !761

for.body358:                                      ; preds = %for.cond355.preheader, %byteswap.exit668
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %byteswap.exit668 ], [ 0, %for.cond355.preheader ]
  %arrayidx361 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 28, i64 %indvars.iv837, !dbg !764
  %174 = bitcast float* %arrayidx361 to i8*, !dbg !764
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !765), !dbg !766
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !767), !dbg !768
  br label %for.body.i667, !dbg !768

for.body.i667:                                    ; preds = %for.body.i667, %for.body358
  %indvars.iv.i661 = phi i64 [ 0, %for.body358 ], [ %indvars.iv.next.i664, %for.body.i667 ]
  %175 = sub i64 3, %indvars.iv.i661, !dbg !769
  %arrayidx.i662 = getelementptr inbounds i8* %174, i64 %175, !dbg !769
  %176 = load i8* %arrayidx.i662, align 1, !dbg !769, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %176}, i64 0, metadata !770), !dbg !769
  %arrayidx3.i663 = getelementptr inbounds i8* %174, i64 %indvars.iv.i661, !dbg !771
  %177 = load i8* %arrayidx3.i663, align 1, !dbg !771, !tbaa !461
  store i8 %177, i8* %arrayidx.i662, align 1, !dbg !771, !tbaa !461
  store i8 %176, i8* %arrayidx3.i663, align 1, !dbg !772, !tbaa !461
  %indvars.iv.next.i664 = add i64 %indvars.iv.i661, 1, !dbg !768
  %lftr.wideiv835 = trunc i64 %indvars.iv.next.i664 to i32, !dbg !768
  %exitcond836 = icmp eq i32 %lftr.wideiv835, 2, !dbg !768
  br i1 %exitcond836, label %byteswap.exit668, label %for.body.i667, !dbg !768

byteswap.exit668:                                 ; preds = %for.body.i667
  %indvars.iv.next838 = add i64 %indvars.iv837, 1, !dbg !761
  %178 = load i32* @Alphabet_size, align 4, !dbg !761, !tbaa !460
  %179 = trunc i64 %indvars.iv.next838 to i32, !dbg !761
  %cmp356 = icmp slt i32 %179, %178, !dbg !761
  br i1 %cmp356, label %for.body358, label %for.body.i659, !dbg !761

for.body.i659:                                    ; preds = %for.cond355.preheader, %byteswap.exit668, %for.body.i659
  %indvars.iv.i653 = phi i64 [ %indvars.iv.next.i656, %for.body.i659 ], [ 0, %byteswap.exit668 ], [ 0, %for.cond355.preheader ]
  %180 = sub i64 3, %indvars.iv.i653, !dbg !773
  %arrayidx.i654 = getelementptr inbounds i8* %124, i64 %180, !dbg !773
  %181 = load i8* %arrayidx.i654, align 1, !dbg !773, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %181}, i64 0, metadata !775), !dbg !773
  %arrayidx3.i655 = getelementptr inbounds i8* %124, i64 %indvars.iv.i653, !dbg !776
  %182 = load i8* %arrayidx3.i655, align 1, !dbg !776, !tbaa !461
  store i8 %182, i8* %arrayidx.i654, align 1, !dbg !776, !tbaa !461
  store i8 %181, i8* %arrayidx3.i655, align 1, !dbg !777, !tbaa !461
  %indvars.iv.next.i656 = add i64 %indvars.iv.i653, 1, !dbg !778
  %lftr.wideiv833 = trunc i64 %indvars.iv.next.i656 to i32, !dbg !778
  %exitcond834 = icmp eq i32 %lftr.wideiv833, 2, !dbg !778
  br i1 %exitcond834, label %for.body.i651, label %for.body.i659, !dbg !778

for.body.i651:                                    ; preds = %for.body.i659, %for.body.i651
  %indvars.iv.i645 = phi i64 [ %indvars.iv.next.i648, %for.body.i651 ], [ 0, %for.body.i659 ]
  %183 = sub i64 3, %indvars.iv.i645, !dbg !779
  %arrayidx.i646 = getelementptr inbounds i8* %141, i64 %183, !dbg !779
  %184 = load i8* %arrayidx.i646, align 1, !dbg !779, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %184}, i64 0, metadata !781), !dbg !779
  %arrayidx3.i647 = getelementptr inbounds i8* %141, i64 %indvars.iv.i645, !dbg !782
  %185 = load i8* %arrayidx3.i647, align 1, !dbg !782, !tbaa !461
  store i8 %185, i8* %arrayidx.i646, align 1, !dbg !782, !tbaa !461
  store i8 %184, i8* %arrayidx3.i647, align 1, !dbg !783, !tbaa !461
  %indvars.iv.next.i648 = add i64 %indvars.iv.i645, 1, !dbg !784
  %lftr.wideiv831 = trunc i64 %indvars.iv.next.i648 to i32, !dbg !784
  %exitcond832 = icmp eq i32 %lftr.wideiv831, 2, !dbg !784
  br i1 %exitcond832, label %for.cond367.preheader, label %for.body.i651, !dbg !784

for.cond367.preheader:                            ; preds = %for.body.i651
  %186 = load i32* %M, align 4, !dbg !785, !tbaa !460
  %cmp369798 = icmp slt i32 %186, 1, !dbg !785
  br i1 %cmp369798, label %if.end427, label %for.cond372.preheader.lr.ph, !dbg !785

for.cond372.preheader.lr.ph:                      ; preds = %for.cond367.preheader
  %t417 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 21, !dbg !787
  %ins394 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 23, !dbg !790
  %mat378 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 22, !dbg !792
  br label %for.cond372.preheader, !dbg !785

for.cond372.preheader:                            ; preds = %for.inc424, %for.cond372.preheader.lr.ph
  %187 = phi i32 [ %225, %for.inc424 ], [ %186, %for.cond372.preheader.lr.ph ]
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %for.inc424 ], [ 1, %for.cond372.preheader.lr.ph ]
  %188 = load i32* @Alphabet_size, align 4, !dbg !794, !tbaa !460
  %cmp373793 = icmp sgt i32 %188, 0, !dbg !794
  br i1 %cmp373793, label %for.body375, label %for.end383, !dbg !794

for.body375:                                      ; preds = %for.cond372.preheader, %byteswap.exit644
  %indvars.iv = phi i64 [ %indvars.iv.next, %byteswap.exit644 ], [ 0, %for.cond372.preheader ]
  %189 = load float*** %mat378, align 8, !dbg !792, !tbaa !465
  %arrayidx379 = getelementptr inbounds float** %189, i64 %indvars.iv829, !dbg !792
  %190 = load float** %arrayidx379, align 8, !dbg !792, !tbaa !465
  %arrayidx380 = getelementptr inbounds float* %190, i64 %indvars.iv, !dbg !792
  %191 = bitcast float* %arrayidx380 to i8*, !dbg !792
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !795), !dbg !796
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !797), !dbg !798
  br label %for.body.i643, !dbg !798

for.body.i643:                                    ; preds = %for.body.i643, %for.body375
  %indvars.iv.i637 = phi i64 [ 0, %for.body375 ], [ %indvars.iv.next.i640, %for.body.i643 ]
  %192 = sub i64 3, %indvars.iv.i637, !dbg !799
  %arrayidx.i638 = getelementptr inbounds i8* %191, i64 %192, !dbg !799
  %193 = load i8* %arrayidx.i638, align 1, !dbg !799, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %193}, i64 0, metadata !800), !dbg !799
  %arrayidx3.i639 = getelementptr inbounds i8* %191, i64 %indvars.iv.i637, !dbg !801
  %194 = load i8* %arrayidx3.i639, align 1, !dbg !801, !tbaa !461
  store i8 %194, i8* %arrayidx.i638, align 1, !dbg !801, !tbaa !461
  store i8 %193, i8* %arrayidx3.i639, align 1, !dbg !802, !tbaa !461
  %indvars.iv.next.i640 = add i64 %indvars.iv.i637, 1, !dbg !798
  %lftr.wideiv = trunc i64 %indvars.iv.next.i640 to i32, !dbg !798
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !798
  br i1 %exitcond, label %byteswap.exit644, label %for.body.i643, !dbg !798

byteswap.exit644:                                 ; preds = %for.body.i643
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !794
  %195 = load i32* @Alphabet_size, align 4, !dbg !794, !tbaa !460
  %196 = trunc i64 %indvars.iv.next to i32, !dbg !794
  %cmp373 = icmp slt i32 %196, %195, !dbg !794
  br i1 %cmp373, label %for.body375, label %for.cond372.for.end383_crit_edge, !dbg !794

for.cond372.for.end383_crit_edge:                 ; preds = %byteswap.exit644
  %.pre887 = load i32* %M, align 4, !dbg !803, !tbaa !460
  br label %for.end383, !dbg !794

for.end383:                                       ; preds = %for.cond372.for.end383_crit_edge, %for.cond372.preheader
  %197 = phi i32 [ %195, %for.cond372.for.end383_crit_edge ], [ %188, %for.cond372.preheader ]
  %198 = phi i32 [ %.pre887, %for.cond372.for.end383_crit_edge ], [ %187, %for.cond372.preheader ]
  %199 = trunc i64 %indvars.iv829 to i32, !dbg !803
  %cmp385 = icmp slt i32 %199, %198, !dbg !803
  %cmp389795 = icmp sgt i32 %197, 0, !dbg !804
  %or.cond = and i1 %cmp385, %cmp389795, !dbg !803
  br i1 %or.cond, label %for.body391, label %if.end400, !dbg !803

for.body391:                                      ; preds = %for.end383, %byteswap.exit636
  %indvars.iv817 = phi i64 [ %indvars.iv.next818, %byteswap.exit636 ], [ 0, %for.end383 ]
  %200 = load float*** %ins394, align 8, !dbg !790, !tbaa !465
  %arrayidx395 = getelementptr inbounds float** %200, i64 %indvars.iv829, !dbg !790
  %201 = load float** %arrayidx395, align 8, !dbg !790, !tbaa !465
  %arrayidx396 = getelementptr inbounds float* %201, i64 %indvars.iv817, !dbg !790
  %202 = bitcast float* %arrayidx396 to i8*, !dbg !790
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !805), !dbg !806
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !807), !dbg !808
  br label %for.body.i635, !dbg !808

for.body.i635:                                    ; preds = %for.body.i635, %for.body391
  %indvars.iv.i629 = phi i64 [ 0, %for.body391 ], [ %indvars.iv.next.i632, %for.body.i635 ]
  %203 = sub i64 3, %indvars.iv.i629, !dbg !809
  %arrayidx.i630 = getelementptr inbounds i8* %202, i64 %203, !dbg !809
  %204 = load i8* %arrayidx.i630, align 1, !dbg !809, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %204}, i64 0, metadata !810), !dbg !809
  %arrayidx3.i631 = getelementptr inbounds i8* %202, i64 %indvars.iv.i629, !dbg !811
  %205 = load i8* %arrayidx3.i631, align 1, !dbg !811, !tbaa !461
  store i8 %205, i8* %arrayidx.i630, align 1, !dbg !811, !tbaa !461
  store i8 %204, i8* %arrayidx3.i631, align 1, !dbg !812, !tbaa !461
  %indvars.iv.next.i632 = add i64 %indvars.iv.i629, 1, !dbg !808
  %lftr.wideiv815 = trunc i64 %indvars.iv.next.i632 to i32, !dbg !808
  %exitcond816 = icmp eq i32 %lftr.wideiv815, 2, !dbg !808
  br i1 %exitcond816, label %byteswap.exit636, label %for.body.i635, !dbg !808

byteswap.exit636:                                 ; preds = %for.body.i635
  %indvars.iv.next818 = add i64 %indvars.iv817, 1, !dbg !804
  %206 = load i32* @Alphabet_size, align 4, !dbg !804, !tbaa !460
  %207 = trunc i64 %indvars.iv.next818 to i32, !dbg !804
  %cmp389 = icmp slt i32 %207, %206, !dbg !804
  br i1 %cmp389, label %for.body391, label %if.end400, !dbg !804

if.end400:                                        ; preds = %byteswap.exit636, %for.end383
  %208 = load float** %begin, align 8, !dbg !813, !tbaa !465
  %arrayidx403 = getelementptr inbounds float* %208, i64 %indvars.iv829, !dbg !813
  %209 = bitcast float* %arrayidx403 to i8*, !dbg !813
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !814), !dbg !815
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !816), !dbg !817
  br label %for.body.i627, !dbg !817

for.body.i627:                                    ; preds = %for.body.i627, %if.end400
  %indvars.iv.i621 = phi i64 [ 0, %if.end400 ], [ %indvars.iv.next.i624, %for.body.i627 ]
  %210 = sub i64 3, %indvars.iv.i621, !dbg !818
  %arrayidx.i622 = getelementptr inbounds i8* %209, i64 %210, !dbg !818
  %211 = load i8* %arrayidx.i622, align 1, !dbg !818, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %211}, i64 0, metadata !819), !dbg !818
  %arrayidx3.i623 = getelementptr inbounds i8* %209, i64 %indvars.iv.i621, !dbg !820
  %212 = load i8* %arrayidx3.i623, align 1, !dbg !820, !tbaa !461
  store i8 %212, i8* %arrayidx.i622, align 1, !dbg !820, !tbaa !461
  store i8 %211, i8* %arrayidx3.i623, align 1, !dbg !821, !tbaa !461
  %indvars.iv.next.i624 = add i64 %indvars.iv.i621, 1, !dbg !817
  %lftr.wideiv819 = trunc i64 %indvars.iv.next.i624 to i32, !dbg !817
  %exitcond820 = icmp eq i32 %lftr.wideiv819, 2, !dbg !817
  br i1 %exitcond820, label %byteswap.exit628, label %for.body.i627, !dbg !817

byteswap.exit628:                                 ; preds = %for.body.i627
  %213 = load float** %end, align 8, !dbg !822, !tbaa !465
  %arrayidx406 = getelementptr inbounds float* %213, i64 %indvars.iv829, !dbg !822
  %214 = bitcast float* %arrayidx406 to i8*, !dbg !822
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !823), !dbg !824
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !825), !dbg !826
  br label %for.body.i619, !dbg !826

for.body.i619:                                    ; preds = %for.body.i619, %byteswap.exit628
  %indvars.iv.i613 = phi i64 [ 0, %byteswap.exit628 ], [ %indvars.iv.next.i616, %for.body.i619 ]
  %215 = sub i64 3, %indvars.iv.i613, !dbg !827
  %arrayidx.i614 = getelementptr inbounds i8* %214, i64 %215, !dbg !827
  %216 = load i8* %arrayidx.i614, align 1, !dbg !827, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %216}, i64 0, metadata !828), !dbg !827
  %arrayidx3.i615 = getelementptr inbounds i8* %214, i64 %indvars.iv.i613, !dbg !829
  %217 = load i8* %arrayidx3.i615, align 1, !dbg !829, !tbaa !461
  store i8 %217, i8* %arrayidx.i614, align 1, !dbg !829, !tbaa !461
  store i8 %216, i8* %arrayidx3.i615, align 1, !dbg !830, !tbaa !461
  %indvars.iv.next.i616 = add i64 %indvars.iv.i613, 1, !dbg !826
  %lftr.wideiv821 = trunc i64 %indvars.iv.next.i616 to i32, !dbg !826
  %exitcond822 = icmp eq i32 %lftr.wideiv821, 2, !dbg !826
  br i1 %exitcond822, label %byteswap.exit620, label %for.body.i619, !dbg !826

byteswap.exit620:                                 ; preds = %for.body.i619
  %218 = load i32* %M, align 4, !dbg !831, !tbaa !460
  %cmp408 = icmp slt i32 %199, %218, !dbg !831
  br i1 %cmp408, label %for.body414, label %for.inc424, !dbg !831

for.body414:                                      ; preds = %byteswap.exit620, %byteswap.exit612
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %byteswap.exit612 ], [ 0, %byteswap.exit620 ]
  %219 = load float*** %t417, align 8, !dbg !787, !tbaa !465
  %arrayidx418 = getelementptr inbounds float** %219, i64 %indvars.iv829, !dbg !787
  %220 = load float** %arrayidx418, align 8, !dbg !787, !tbaa !465
  %arrayidx419 = getelementptr inbounds float* %220, i64 %indvars.iv825, !dbg !787
  %221 = bitcast float* %arrayidx419 to i8*, !dbg !787
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !832), !dbg !833
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !834), !dbg !835
  br label %for.body.i611, !dbg !835

for.body.i611:                                    ; preds = %for.body.i611, %for.body414
  %indvars.iv.i605 = phi i64 [ 0, %for.body414 ], [ %indvars.iv.next.i608, %for.body.i611 ]
  %222 = sub i64 3, %indvars.iv.i605, !dbg !836
  %arrayidx.i606 = getelementptr inbounds i8* %221, i64 %222, !dbg !836
  %223 = load i8* %arrayidx.i606, align 1, !dbg !836, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %223}, i64 0, metadata !837), !dbg !836
  %arrayidx3.i607 = getelementptr inbounds i8* %221, i64 %indvars.iv.i605, !dbg !838
  %224 = load i8* %arrayidx3.i607, align 1, !dbg !838, !tbaa !461
  store i8 %224, i8* %arrayidx.i606, align 1, !dbg !838, !tbaa !461
  store i8 %223, i8* %arrayidx3.i607, align 1, !dbg !839, !tbaa !461
  %indvars.iv.next.i608 = add i64 %indvars.iv.i605, 1, !dbg !835
  %lftr.wideiv823 = trunc i64 %indvars.iv.next.i608 to i32, !dbg !835
  %exitcond824 = icmp eq i32 %lftr.wideiv823, 2, !dbg !835
  br i1 %exitcond824, label %byteswap.exit612, label %for.body.i611, !dbg !835

byteswap.exit612:                                 ; preds = %for.body.i611
  %indvars.iv.next826 = add i64 %indvars.iv825, 1, !dbg !840
  %lftr.wideiv827 = trunc i64 %indvars.iv.next826 to i32, !dbg !840
  %exitcond828 = icmp eq i32 %lftr.wideiv827, 7, !dbg !840
  br i1 %exitcond828, label %for.inc424.loopexit, label %for.body414, !dbg !840

for.inc424.loopexit:                              ; preds = %byteswap.exit612
  %.pre888 = load i32* %M, align 4, !dbg !785, !tbaa !460
  br label %for.inc424

for.inc424:                                       ; preds = %for.inc424.loopexit, %byteswap.exit620
  %225 = phi i32 [ %.pre888, %for.inc424.loopexit ], [ %218, %byteswap.exit620 ]
  %indvars.iv.next830 = add i64 %indvars.iv829, 1, !dbg !785
  %cmp369 = icmp slt i32 %199, %225, !dbg !785
  br i1 %cmp369, label %for.cond372.preheader, label %if.end427, !dbg !785

if.end427:                                        ; preds = %for.cond367.preheader, %for.inc424, %for.end351
  %226 = load i32* %flags, align 4, !dbg !841, !tbaa !460
  %or = and i32 %226, -34, !dbg !842
  %and430 = or i32 %or, 32, !dbg !842
  store i32 %and430, i32* %flags, align 4, !dbg !842, !tbaa !460
  store %struct.plan7_s* %call11, %struct.plan7_s** %ret_hmm, align 8, !dbg !843, !tbaa !465
  br label %return, !dbg !844

FAILURE:                                          ; preds = %for.body224, %for.body309, %for.body325, %for.body341, %land.lhs.true, %land.lhs.true39, %if.end166, %if.then161, %if.end187, %if.then182, %if.end208, %if.then203, %if.end271, %if.then266, %if.end296, %if.end288, %if.end283, %if.end255, %for.end250, %if.end147, %if.end141, %if.end131, %if.end125, %if.end55, %if.end45, %if.end21, %if.end10
  %cmp431 = icmp eq %struct.plan7_s* %call11, null, !dbg !845
  br i1 %cmp431, label %if.end434, label %if.then433, !dbg !845

if.then433:                                       ; preds = %land.lhs.true77, %land.lhs.true90, %land.lhs.true107, %FAILURE
  call void @FreePlan7(%struct.plan7_s* %call11) #7, !dbg !845
  br label %if.end434, !dbg !845

if.end434:                                        ; preds = %if.end8, %FAILURE, %if.then433
  store %struct.plan7_s* null, %struct.plan7_s** %ret_hmm, align 8, !dbg !846, !tbaa !465
  br label %return, !dbg !847

return:                                           ; preds = %if.end, %entry, %if.end434, %if.end427
  %retval.0 = phi i32 [ 1, %if.end434 ], [ 1, %if.end427 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0, !dbg !847
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_bin19hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  %magic = alloca i32, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %hmmfp}, i64 0, metadata !382), !dbg !848
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %ret_hmm}, i64 0, metadata !383), !dbg !848
  call void @llvm.dbg.declare(metadata !{i32* %magic}, metadata !384), !dbg !849
  call void @llvm.dbg.declare(metadata !{%struct.plan7_s** %hmm}, metadata !385), !dbg !850
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0, !dbg !851
  %0 = load %struct._IO_FILE** %f, align 8, !dbg !851, !tbaa !465
  %call = call i32 @feof(%struct._IO_FILE* %0) #7, !dbg !851
  %tobool = icmp eq i32 %call, 0, !dbg !851
  br i1 %tobool, label %if.end, label %return, !dbg !851

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %magic to i8*, !dbg !852
  %2 = load %struct._IO_FILE** %f, align 8, !dbg !852, !tbaa !465
  %call2 = call i64 @fread(i8* %1, i64 4, i64 1, %struct._IO_FILE* %2) #7, !dbg !852
  %tobool3 = icmp eq i64 %call2, 0, !dbg !852
  br i1 %tobool3, label %return, label %if.end5, !dbg !852

if.end5:                                          ; preds = %if.end
  %3 = load %struct._IO_FILE** %f, align 8, !dbg !853, !tbaa !465
  %byteswap = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 4, !dbg !853
  %4 = load i32* %byteswap, align 4, !dbg !853, !tbaa !460
  %call7 = call fastcc %struct.plan9_s* @read_plan9_binhmm(%struct._IO_FILE* %3, i32 7, i32 %4) #9, !dbg !853
  call void @llvm.dbg.value(metadata !{%struct.plan9_s* %call7}, i64 0, metadata !386), !dbg !853
  %cmp = icmp eq %struct.plan9_s* %call7, null, !dbg !854
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !854

if.then8:                                         ; preds = %if.end5
  store %struct.plan7_s* null, %struct.plan7_s** %ret_hmm, align 8, !dbg !855, !tbaa !465
  br label %return, !dbg !855

if.end9:                                          ; preds = %if.end5
  call void @Plan9toPlan7(%struct.plan9_s* %call7, %struct.plan7_s** %hmm) #7, !dbg !857
  %call10 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8]* @.str59, i64 0, i64 0)) #7, !dbg !858
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !385), !dbg !858
  %5 = load %struct.plan7_s** %hmm, align 8, !dbg !858, !tbaa !465
  %comlog = getelementptr inbounds %struct.plan7_s* %5, i64 0, i32 6, !dbg !858
  store i8* %call10, i8** %comlog, align 8, !dbg !858, !tbaa !465
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !385), !dbg !859
  %6 = load %struct.plan7_s** %hmm, align 8, !dbg !859, !tbaa !465
  call void @Plan7SetCtime(%struct.plan7_s* %6) #7, !dbg !859
  %call11 = call i32 @P9FreeHMM(%struct.plan9_s* %call7) #7, !dbg !860
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !385), !dbg !861
  %7 = load %struct.plan7_s** %hmm, align 8, !dbg !861, !tbaa !465
  store %struct.plan7_s* %7, %struct.plan7_s** %ret_hmm, align 8, !dbg !861, !tbaa !465
  br label %return, !dbg !862

return:                                           ; preds = %if.end, %entry, %if.end9, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.end9 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0, !dbg !862
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_bin17hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  %magic = alloca i32, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %hmmfp}, i64 0, metadata !353), !dbg !863
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %ret_hmm}, i64 0, metadata !354), !dbg !863
  call void @llvm.dbg.declare(metadata !{i32* %magic}, metadata !355), !dbg !864
  call void @llvm.dbg.declare(metadata !{%struct.plan7_s** %hmm}, metadata !356), !dbg !865
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0, !dbg !866
  %0 = load %struct._IO_FILE** %f, align 8, !dbg !866, !tbaa !465
  %call = call i32 @feof(%struct._IO_FILE* %0) #7, !dbg !866
  %tobool = icmp eq i32 %call, 0, !dbg !866
  br i1 %tobool, label %if.end, label %return, !dbg !866

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %magic to i8*, !dbg !867
  %2 = load %struct._IO_FILE** %f, align 8, !dbg !867, !tbaa !465
  %call2 = call i64 @fread(i8* %1, i64 4, i64 1, %struct._IO_FILE* %2) #7, !dbg !867
  %tobool3 = icmp eq i64 %call2, 0, !dbg !867
  br i1 %tobool3, label %return, label %if.end5, !dbg !867

if.end5:                                          ; preds = %if.end
  %3 = load %struct._IO_FILE** %f, align 8, !dbg !868, !tbaa !465
  %byteswap = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 4, !dbg !868
  %4 = load i32* %byteswap, align 4, !dbg !868, !tbaa !460
  %call7 = call fastcc %struct.plan9_s* @read_plan9_binhmm(%struct._IO_FILE* %3, i32 5, i32 %4) #9, !dbg !868
  call void @llvm.dbg.value(metadata !{%struct.plan9_s* %call7}, i64 0, metadata !357), !dbg !868
  %cmp = icmp eq %struct.plan9_s* %call7, null, !dbg !869
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !869

if.then8:                                         ; preds = %if.end5
  store %struct.plan7_s* null, %struct.plan7_s** %ret_hmm, align 8, !dbg !870, !tbaa !465
  br label %return, !dbg !870

if.end9:                                          ; preds = %if.end5
  call void @Plan9toPlan7(%struct.plan9_s* %call7, %struct.plan7_s** %hmm) #7, !dbg !872
  %call10 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8]* @.str59, i64 0, i64 0)) #7, !dbg !873
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !356), !dbg !873
  %5 = load %struct.plan7_s** %hmm, align 8, !dbg !873, !tbaa !465
  %comlog = getelementptr inbounds %struct.plan7_s* %5, i64 0, i32 6, !dbg !873
  store i8* %call10, i8** %comlog, align 8, !dbg !873, !tbaa !465
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !356), !dbg !874
  %6 = load %struct.plan7_s** %hmm, align 8, !dbg !874, !tbaa !465
  call void @Plan7SetCtime(%struct.plan7_s* %6) #7, !dbg !874
  %call11 = call i32 @P9FreeHMM(%struct.plan9_s* %call7) #7, !dbg !875
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !356), !dbg !876
  %7 = load %struct.plan7_s** %hmm, align 8, !dbg !876, !tbaa !465
  store %struct.plan7_s* %7, %struct.plan7_s** %ret_hmm, align 8, !dbg !876, !tbaa !465
  br label %return, !dbg !877

return:                                           ; preds = %if.end, %entry, %if.end9, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.end9 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0, !dbg !877
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_bin11hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  %magic = alloca i32, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %hmmfp}, i64 0, metadata !342), !dbg !878
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %ret_hmm}, i64 0, metadata !343), !dbg !878
  call void @llvm.dbg.declare(metadata !{i32* %magic}, metadata !344), !dbg !879
  call void @llvm.dbg.declare(metadata !{%struct.plan7_s** %hmm}, metadata !345), !dbg !880
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0, !dbg !881
  %0 = load %struct._IO_FILE** %f, align 8, !dbg !881, !tbaa !465
  %call = call i32 @feof(%struct._IO_FILE* %0) #7, !dbg !881
  %tobool = icmp eq i32 %call, 0, !dbg !881
  br i1 %tobool, label %if.end, label %return, !dbg !881

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %magic to i8*, !dbg !882
  %2 = load %struct._IO_FILE** %f, align 8, !dbg !882, !tbaa !465
  %call2 = call i64 @fread(i8* %1, i64 4, i64 1, %struct._IO_FILE* %2) #7, !dbg !882
  %tobool3 = icmp eq i64 %call2, 0, !dbg !882
  br i1 %tobool3, label %return, label %if.end5, !dbg !882

if.end5:                                          ; preds = %if.end
  %3 = load %struct._IO_FILE** %f, align 8, !dbg !883, !tbaa !465
  %byteswap = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 4, !dbg !883
  %4 = load i32* %byteswap, align 4, !dbg !883, !tbaa !460
  %call7 = call fastcc %struct.plan9_s* @read_plan9_binhmm(%struct._IO_FILE* %3, i32 3, i32 %4) #9, !dbg !883
  call void @llvm.dbg.value(metadata !{%struct.plan9_s* %call7}, i64 0, metadata !346), !dbg !883
  %cmp = icmp eq %struct.plan9_s* %call7, null, !dbg !884
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !884

if.then8:                                         ; preds = %if.end5
  store %struct.plan7_s* null, %struct.plan7_s** %ret_hmm, align 8, !dbg !885, !tbaa !465
  br label %return, !dbg !885

if.end9:                                          ; preds = %if.end5
  call void @Plan9toPlan7(%struct.plan9_s* %call7, %struct.plan7_s** %hmm) #7, !dbg !887
  %call10 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8]* @.str59, i64 0, i64 0)) #7, !dbg !888
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !345), !dbg !888
  %5 = load %struct.plan7_s** %hmm, align 8, !dbg !888, !tbaa !465
  %comlog = getelementptr inbounds %struct.plan7_s* %5, i64 0, i32 6, !dbg !888
  store i8* %call10, i8** %comlog, align 8, !dbg !888, !tbaa !465
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !345), !dbg !889
  %6 = load %struct.plan7_s** %hmm, align 8, !dbg !889, !tbaa !465
  call void @Plan7SetCtime(%struct.plan7_s* %6) #7, !dbg !889
  %call11 = call i32 @P9FreeHMM(%struct.plan9_s* %call7) #7, !dbg !890
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !345), !dbg !891
  %7 = load %struct.plan7_s** %hmm, align 8, !dbg !891, !tbaa !465
  store %struct.plan7_s* %7, %struct.plan7_s** %ret_hmm, align 8, !dbg !891, !tbaa !465
  br label %return, !dbg !892

return:                                           ; preds = %if.end, %entry, %if.end9, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.end9 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0, !dbg !892
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_bin10hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  %magic = alloca i32, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %hmmfp}, i64 0, metadata !287), !dbg !893
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %ret_hmm}, i64 0, metadata !288), !dbg !893
  call void @llvm.dbg.declare(metadata !{i32* %magic}, metadata !289), !dbg !894
  call void @llvm.dbg.declare(metadata !{%struct.plan7_s** %hmm}, metadata !290), !dbg !895
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0, !dbg !896
  %0 = load %struct._IO_FILE** %f, align 8, !dbg !896, !tbaa !465
  %call = call i32 @feof(%struct._IO_FILE* %0) #7, !dbg !896
  %tobool = icmp eq i32 %call, 0, !dbg !896
  br i1 %tobool, label %if.end, label %return, !dbg !896

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %magic to i8*, !dbg !897
  %2 = load %struct._IO_FILE** %f, align 8, !dbg !897, !tbaa !465
  %call2 = call i64 @fread(i8* %1, i64 4, i64 1, %struct._IO_FILE* %2) #7, !dbg !897
  %tobool3 = icmp eq i64 %call2, 0, !dbg !897
  br i1 %tobool3, label %return, label %if.end5, !dbg !897

if.end5:                                          ; preds = %if.end
  %3 = load %struct._IO_FILE** %f, align 8, !dbg !898, !tbaa !465
  %byteswap = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 4, !dbg !898
  %4 = load i32* %byteswap, align 4, !dbg !898, !tbaa !460
  %call7 = call fastcc %struct.plan9_s* @read_plan9_binhmm(%struct._IO_FILE* %3, i32 1, i32 %4) #9, !dbg !898
  call void @llvm.dbg.value(metadata !{%struct.plan9_s* %call7}, i64 0, metadata !291), !dbg !898
  %cmp = icmp eq %struct.plan9_s* %call7, null, !dbg !899
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !899

if.then8:                                         ; preds = %if.end5
  store %struct.plan7_s* null, %struct.plan7_s** %ret_hmm, align 8, !dbg !900, !tbaa !465
  br label %return, !dbg !900

if.end9:                                          ; preds = %if.end5
  call void @Plan9toPlan7(%struct.plan9_s* %call7, %struct.plan7_s** %hmm) #7, !dbg !902
  %call10 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8]* @.str59, i64 0, i64 0)) #7, !dbg !903
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !290), !dbg !903
  %5 = load %struct.plan7_s** %hmm, align 8, !dbg !903, !tbaa !465
  %comlog = getelementptr inbounds %struct.plan7_s* %5, i64 0, i32 6, !dbg !903
  store i8* %call10, i8** %comlog, align 8, !dbg !903, !tbaa !465
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !290), !dbg !904
  %6 = load %struct.plan7_s** %hmm, align 8, !dbg !904, !tbaa !465
  call void @Plan7SetCtime(%struct.plan7_s* %6) #7, !dbg !904
  %call11 = call i32 @P9FreeHMM(%struct.plan9_s* %call7) #7, !dbg !905
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !290), !dbg !906
  %7 = load %struct.plan7_s** %hmm, align 8, !dbg !906, !tbaa !465
  store %struct.plan7_s* %7, %struct.plan7_s** %ret_hmm, align 8, !dbg !906, !tbaa !465
  br label %return, !dbg !907

return:                                           ; preds = %if.end, %entry, %if.end9, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.end9 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0, !dbg !907
}

; Function Attrs: optsize
declare void @Warn(i8*, ...) #3

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_asc20hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  %buffer = alloca [512 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %hmmfp}, i64 0, metadata !425), !dbg !908
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %ret_hmm}, i64 0, metadata !426), !dbg !908
  %0 = getelementptr inbounds [512 x i8]* %buffer, i64 0, i64 0, !dbg !909
  call void @llvm.lifetime.start(i64 512, i8* %0) #2, !dbg !909
  call void @llvm.dbg.declare(metadata !{[512 x i8]* %buffer}, metadata !428), !dbg !909
  call void @llvm.dbg.value(metadata !576, i64 0, metadata !427), !dbg !910
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0, !dbg !911
  %1 = load %struct._IO_FILE** %f, align 8, !dbg !911, !tbaa !465
  %call = call i32 @feof(%struct._IO_FILE* %1) #7, !dbg !911
  %tobool = icmp eq i32 %call, 0, !dbg !911
  br i1 %tobool, label %lor.lhs.false, label %cleanup, !dbg !911

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._IO_FILE** %f, align 8, !dbg !911, !tbaa !465
  %call2 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %2) #7, !dbg !911
  %cmp = icmp eq i8* %call2, null, !dbg !911
  br i1 %cmp, label %cleanup, label %if.end, !dbg !911

if.end:                                           ; preds = %lor.lhs.false
  %call4 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i64 8) #8, !dbg !912
  %cmp5 = icmp eq i32 %call4, 0, !dbg !912
  br i1 %cmp5, label %if.end7, label %if.end617, !dbg !912

if.end7:                                          ; preds = %if.end
  %call8 = call %struct.plan7_s* @AllocPlan7Shell() #7, !dbg !913
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %call8}, i64 0, metadata !427), !dbg !913
  call void @llvm.dbg.value(metadata !914, i64 0, metadata !430), !dbg !915
  %3 = load %struct._IO_FILE** %f, align 8, !dbg !916, !tbaa !465
  %call11782 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %3) #7, !dbg !916
  %cmp12783 = icmp eq i8* %call11782, null, !dbg !916
  br i1 %cmp12783, label %while.end, label %while.body.lr.ph, !dbg !916

while.body.lr.ph:                                 ; preds = %if.end7
  %add.ptr = getelementptr inbounds [512 x i8]* %buffer, i64 0, i64 6, !dbg !917
  %nseq = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 7, !dbg !919
  %flags = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 47, !dbg !920
  %comlog = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 6, !dbg !922
  %ctime = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 8, !dbg !924
  %ga1 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 14, !dbg !926
  %ga2 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 15, !dbg !928
  %tc1 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 16, !dbg !929
  %tc2 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 17, !dbg !931
  %nc1 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 18, !dbg !932
  %nc2 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 19, !dbg !934
  %p1 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 29, !dbg !935
  %mu = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 45, !dbg !937
  %lambda = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 46, !dbg !939
  %checksum = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 10, !dbg !940
  br label %while.body, !dbg !916

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %M.0784 = phi i32 [ -1, %while.body.lr.ph ], [ %M.0.be, %while.cond.backedge ]
  %call14 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str72, i64 0, i64 0), i64 5) #8, !dbg !917
  %cmp15 = icmp eq i32 %call14, 0, !dbg !917
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !917

if.then16:                                        ; preds = %while.body
  call void @Plan7SetName(%struct.plan7_s* %call8, i8* %add.ptr) #7, !dbg !917
  br label %while.cond.backedge, !dbg !917

if.else:                                          ; preds = %while.body
  %call19 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str73, i64 0, i64 0), i64 5) #8, !dbg !941
  %cmp20 = icmp eq i32 %call19, 0, !dbg !941
  br i1 %cmp20, label %if.then21, label %if.else24, !dbg !941

if.then21:                                        ; preds = %if.else
  call void @Plan7SetAccession(%struct.plan7_s* %call8, i8* %add.ptr) #7, !dbg !941
  br label %while.cond.backedge, !dbg !941

while.cond.backedge:                              ; preds = %for.inc263, %if.end299, %if.end310, %if.then21, %if.then35, %if.then72, %if.then69, %if.then101, %if.then94, %if.else136, %if.then131, %if.end183, %if.end231, %if.end284, %if.end343, %if.else355, %if.then351, %if.end207, %if.then158, %if.then110, %if.then117, %if.then81, %if.then87, %if.then43, %if.then28, %if.then16, %if.else70
  %M.0.be = phi i32 [ %M.0784, %if.then16 ], [ %M.0784, %if.then21 ], [ %M.0784, %if.then28 ], [ %call38, %if.then35 ], [ %M.0784, %if.then43 ], [ %M.0784, %if.then69 ], [ %M.0784, %if.then72 ], [ %M.0784, %if.else70 ], [ %M.0784, %if.then87 ], [ %M.0784, %if.then81 ], [ %M.0784, %if.then101 ], [ %M.0784, %if.then94 ], [ %M.0784, %if.then117 ], [ %M.0784, %if.then110 ], [ %M.0784, %if.then131 ], [ %M.0784, %if.else136 ], [ %M.0784, %if.then158 ], [ %M.0784, %if.end183 ], [ %M.0784, %if.end207 ], [ %M.0784, %if.end231 ], [ %M.0784, %if.end284 ], [ %M.0784, %if.end343 ], [ %M.0784, %if.then351 ], [ %M.0784, %if.else355 ], [ %M.0784, %if.end310 ], [ %M.0784, %if.end299 ], [ %M.0784, %for.inc263 ]
  %4 = load %struct._IO_FILE** %f, align 8, !dbg !916, !tbaa !465
  %call11 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %4) #7, !dbg !916
  %cmp12 = icmp eq i8* %call11, null, !dbg !916
  br i1 %cmp12, label %while.end, label %while.body, !dbg !916

if.else24:                                        ; preds = %if.else
  %call26 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str74, i64 0, i64 0), i64 5) #8, !dbg !942
  %cmp27 = icmp eq i32 %call26, 0, !dbg !942
  br i1 %cmp27, label %if.then28, label %if.else31, !dbg !942

if.then28:                                        ; preds = %if.else24
  call void @Plan7SetDescription(%struct.plan7_s* %call8, i8* %add.ptr) #7, !dbg !942
  br label %while.cond.backedge, !dbg !942

if.else31:                                        ; preds = %if.else24
  %call33 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str75, i64 0, i64 0), i64 5) #8, !dbg !943
  %cmp34 = icmp eq i32 %call33, 0, !dbg !943
  br i1 %cmp34, label %if.then35, label %if.else39, !dbg !943

if.then35:                                        ; preds = %if.else31
  %call38 = call i32 @atoi(i8* %add.ptr) #8, !dbg !943
  call void @llvm.dbg.value(metadata !{i32 %call38}, i64 0, metadata !430), !dbg !943
  br label %while.cond.backedge, !dbg !943

if.else39:                                        ; preds = %if.else31
  %call41 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str76, i64 0, i64 0), i64 5) #8, !dbg !919
  %cmp42 = icmp eq i32 %call41, 0, !dbg !919
  br i1 %cmp42, label %if.then43, label %if.else47, !dbg !919

if.then43:                                        ; preds = %if.else39
  %call46 = call i32 @atoi(i8* %add.ptr) #8, !dbg !919
  store i32 %call46, i32* %nseq, align 4, !dbg !919, !tbaa !460
  br label %while.cond.backedge, !dbg !919

if.else47:                                        ; preds = %if.else39
  %call49 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str77, i64 0, i64 0), i64 5) #8, !dbg !944
  %cmp50 = icmp eq i32 %call49, 0, !dbg !944
  br i1 %cmp50, label %if.then51, label %if.else77, !dbg !944

if.then51:                                        ; preds = %if.else47
  call void @s2upper(i8* %add.ptr) #7, !dbg !945
  %call56 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str69, i64 0, i64 0), i64 5) #8, !dbg !947
  %cmp57 = icmp eq i32 %call56, 0, !dbg !947
  br i1 %cmp57, label %if.end67, label %if.else59, !dbg !947

if.else59:                                        ; preds = %if.then51
  %call62 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([8 x i8]* @.str70, i64 0, i64 0), i64 7) #8, !dbg !948
  %cmp63 = icmp eq i32 %call62, 0, !dbg !948
  br i1 %cmp63, label %if.end67, label %FAILURE, !dbg !948

if.end67:                                         ; preds = %if.else59, %if.then51
  %atype.0 = phi i32 [ 3, %if.then51 ], [ 2, %if.else59 ]
  %5 = load i32* @Alphabet_type, align 4, !dbg !949, !tbaa !460
  %cmp68 = icmp eq i32 %5, 0, !dbg !949
  br i1 %cmp68, label %if.then69, label %if.else70, !dbg !949

if.then69:                                        ; preds = %if.end67
  call void @SetAlphabet(i32 %atype.0) #7, !dbg !949
  br label %while.cond.backedge, !dbg !949

if.else70:                                        ; preds = %if.end67
  %cmp71 = icmp eq i32 %atype.0, %5, !dbg !950
  br i1 %cmp71, label %while.cond.backedge, label %if.then72, !dbg !950

if.then72:                                        ; preds = %if.else70
  %call73 = call i8* @AlphabetType2String(i32 %5) #7, !dbg !951
  %call74 = call i8* @AlphabetType2String(i32 %atype.0) #7, !dbg !951
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([89 x i8]* @.str61, i64 0, i64 0), i8* %call73, i8* %call74) #7, !dbg !951
  br label %while.cond.backedge, !dbg !951

if.else77:                                        ; preds = %if.else47
  %call79 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str78, i64 0, i64 0), i64 5) #8, !dbg !952
  %cmp80 = icmp eq i32 %call79, 0, !dbg !952
  br i1 %cmp80, label %if.then81, label %if.else89, !dbg !952

if.then81:                                        ; preds = %if.else77
  %6 = load i8* %add.ptr, align 2, !dbg !920, !tbaa !461
  %conv = sext i8 %6 to i32, !dbg !920
  %call84 = call i32 @sre_toupper(i32 %conv) #7, !dbg !920
  %cmp85 = icmp eq i32 %call84, 89, !dbg !920
  br i1 %cmp85, label %if.then87, label %while.cond.backedge, !dbg !920

if.then87:                                        ; preds = %if.then81
  %7 = load i32* %flags, align 4, !dbg !920, !tbaa !460
  %or = or i32 %7, 4, !dbg !920
  store i32 %or, i32* %flags, align 4, !dbg !920, !tbaa !460
  br label %while.cond.backedge, !dbg !920

if.else89:                                        ; preds = %if.else77
  %call91 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str79, i64 0, i64 0), i64 5) #8, !dbg !953
  %cmp92 = icmp eq i32 %call91, 0, !dbg !953
  br i1 %cmp92, label %if.then94, label %if.else105, !dbg !953

if.then94:                                        ; preds = %if.else89
  %8 = load i8* %add.ptr, align 2, !dbg !954, !tbaa !461
  %conv97 = sext i8 %8 to i32, !dbg !954
  %call98 = call i32 @sre_toupper(i32 %conv97) #7, !dbg !954
  %cmp99 = icmp eq i32 %call98, 89, !dbg !954
  br i1 %cmp99, label %if.then101, label %while.cond.backedge, !dbg !954

if.then101:                                       ; preds = %if.then94
  %9 = load i32* %flags, align 4, !dbg !954, !tbaa !460
  %or103 = or i32 %9, 8, !dbg !954
  store i32 %or103, i32* %flags, align 4, !dbg !954, !tbaa !460
  br label %while.cond.backedge, !dbg !954

if.else105:                                       ; preds = %if.else89
  %call107 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str80, i64 0, i64 0), i64 5) #8, !dbg !956
  %cmp108 = icmp eq i32 %call107, 0, !dbg !956
  br i1 %cmp108, label %if.then110, label %if.else121, !dbg !956

if.then110:                                       ; preds = %if.else105
  %10 = load i8* %add.ptr, align 2, !dbg !957, !tbaa !461
  %conv113 = sext i8 %10 to i32, !dbg !957
  %call114 = call i32 @sre_toupper(i32 %conv113) #7, !dbg !957
  %cmp115 = icmp eq i32 %call114, 89, !dbg !957
  br i1 %cmp115, label %if.then117, label %while.cond.backedge, !dbg !957

if.then117:                                       ; preds = %if.then110
  %11 = load i32* %flags, align 4, !dbg !957, !tbaa !460
  %or119 = or i32 %11, 256, !dbg !957
  store i32 %or119, i32* %flags, align 4, !dbg !957, !tbaa !460
  br label %while.cond.backedge, !dbg !957

if.else121:                                       ; preds = %if.else105
  %call123 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0), i64 5) #8, !dbg !959
  %cmp124 = icmp eq i32 %call123, 0, !dbg !959
  br i1 %cmp124, label %if.then126, label %if.else153, !dbg !959

if.then126:                                       ; preds = %if.else121
  call void @StringChop(i8* %add.ptr) #7, !dbg !960
  %12 = load i8** %comlog, align 8, !dbg !922, !tbaa !465
  %cmp129 = icmp eq i8* %12, null, !dbg !922
  br i1 %cmp129, label %if.then131, label %if.else136, !dbg !922

if.then131:                                       ; preds = %if.then126
  %call134 = call i8* @Strdup(i8* %add.ptr) #7, !dbg !961
  store i8* %call134, i8** %comlog, align 8, !dbg !961, !tbaa !465
  br label %while.cond.backedge, !dbg !961

if.else136:                                       ; preds = %if.then126
  %call139 = call i64 @strlen(i8* %12) #8, !dbg !962
  %add = add i64 %call139, 1, !dbg !962
  %call142 = call i64 @strlen(i8* %add.ptr) #8, !dbg !962
  %add143 = add i64 %add, %call142, !dbg !962
  %mul = shl i64 %add143, 3, !dbg !962
  %call144 = call i8* @sre_realloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 624, i8* %12, i64 %mul) #7, !dbg !962
  store i8* %call144, i8** %comlog, align 8, !dbg !962, !tbaa !465
  %strlen = call i64 @strlen(i8* %call144), !dbg !964
  %endptr = getelementptr i8* %call144, i64 %strlen, !dbg !964
  %13 = bitcast i8* %endptr to i16*, !dbg !964
  store i16 10, i16* %13, align 1, !dbg !964
  %14 = load i8** %comlog, align 8, !dbg !965, !tbaa !465
  %call151 = call i8* @strcat(i8* %14, i8* %add.ptr) #7, !dbg !965
  br label %while.cond.backedge

if.else153:                                       ; preds = %if.else121
  %call155 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str82, i64 0, i64 0), i64 5) #8, !dbg !966
  %cmp156 = icmp eq i32 %call155, 0, !dbg !966
  br i1 %cmp156, label %if.then158, label %if.else164, !dbg !966

if.then158:                                       ; preds = %if.else153
  call void @StringChop(i8* %add.ptr) #7, !dbg !967
  %call163 = call i8* @Strdup(i8* %add.ptr) #7, !dbg !924
  store i8* %call163, i8** %ctime, align 8, !dbg !924, !tbaa !465
  br label %while.cond.backedge, !dbg !968

if.else164:                                       ; preds = %if.else153
  %call166 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str83, i64 0, i64 0), i64 5) #8, !dbg !969
  %cmp167 = icmp eq i32 %call166, 0, !dbg !969
  br i1 %cmp167, label %if.then169, label %if.else188, !dbg !969

if.then169:                                       ; preds = %if.else164
  %call172 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !970
  call void @llvm.dbg.value(metadata !{i8* %call172}, i64 0, metadata !429), !dbg !970
  %cmp173 = icmp eq i8* %call172, null, !dbg !970
  br i1 %cmp173, label %FAILURE, label %if.end176, !dbg !970

if.end176:                                        ; preds = %if.then169
  %call177 = call double @atof(i8* %call172) #8, !dbg !926
  %conv178 = fptrunc double %call177 to float, !dbg !926
  store float %conv178, float* %ga1, align 4, !dbg !926, !tbaa !971
  %call179 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !972
  call void @llvm.dbg.value(metadata !{i8* %call179}, i64 0, metadata !429), !dbg !972
  %cmp180 = icmp eq i8* %call179, null, !dbg !972
  br i1 %cmp180, label %FAILURE, label %if.end183, !dbg !972

if.end183:                                        ; preds = %if.end176
  %call184 = call double @atof(i8* %call179) #8, !dbg !928
  %conv185 = fptrunc double %call184 to float, !dbg !928
  store float %conv185, float* %ga2, align 4, !dbg !928, !tbaa !971
  %15 = load i32* %flags, align 4, !dbg !973, !tbaa !460
  %or187 = or i32 %15, 1024, !dbg !973
  store i32 %or187, i32* %flags, align 4, !dbg !973, !tbaa !460
  br label %while.cond.backedge, !dbg !974

if.else188:                                       ; preds = %if.else164
  %call190 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i64 5) #8, !dbg !975
  %cmp191 = icmp eq i32 %call190, 0, !dbg !975
  br i1 %cmp191, label %if.then193, label %if.else212, !dbg !975

if.then193:                                       ; preds = %if.else188
  %call196 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !976
  call void @llvm.dbg.value(metadata !{i8* %call196}, i64 0, metadata !429), !dbg !976
  %cmp197 = icmp eq i8* %call196, null, !dbg !976
  br i1 %cmp197, label %FAILURE, label %if.end200, !dbg !976

if.end200:                                        ; preds = %if.then193
  %call201 = call double @atof(i8* %call196) #8, !dbg !929
  %conv202 = fptrunc double %call201 to float, !dbg !929
  store float %conv202, float* %tc1, align 4, !dbg !929, !tbaa !971
  %call203 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !977
  call void @llvm.dbg.value(metadata !{i8* %call203}, i64 0, metadata !429), !dbg !977
  %cmp204 = icmp eq i8* %call203, null, !dbg !977
  br i1 %cmp204, label %FAILURE, label %if.end207, !dbg !977

if.end207:                                        ; preds = %if.end200
  %call208 = call double @atof(i8* %call203) #8, !dbg !931
  %conv209 = fptrunc double %call208 to float, !dbg !931
  store float %conv209, float* %tc2, align 4, !dbg !931, !tbaa !971
  %16 = load i32* %flags, align 4, !dbg !978, !tbaa !460
  %or211 = or i32 %16, 2048, !dbg !978
  store i32 %or211, i32* %flags, align 4, !dbg !978, !tbaa !460
  br label %while.cond.backedge, !dbg !979

if.else212:                                       ; preds = %if.else188
  %call214 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str85, i64 0, i64 0), i64 5) #8, !dbg !980
  %cmp215 = icmp eq i32 %call214, 0, !dbg !980
  br i1 %cmp215, label %if.then217, label %if.else236, !dbg !980

if.then217:                                       ; preds = %if.else212
  %call220 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !981
  call void @llvm.dbg.value(metadata !{i8* %call220}, i64 0, metadata !429), !dbg !981
  %cmp221 = icmp eq i8* %call220, null, !dbg !981
  br i1 %cmp221, label %FAILURE, label %if.end224, !dbg !981

if.end224:                                        ; preds = %if.then217
  %call225 = call double @atof(i8* %call220) #8, !dbg !932
  %conv226 = fptrunc double %call225 to float, !dbg !932
  store float %conv226, float* %nc1, align 4, !dbg !932, !tbaa !971
  %call227 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !982
  call void @llvm.dbg.value(metadata !{i8* %call227}, i64 0, metadata !429), !dbg !982
  %cmp228 = icmp eq i8* %call227, null, !dbg !982
  br i1 %cmp228, label %FAILURE, label %if.end231, !dbg !982

if.end231:                                        ; preds = %if.end224
  %call232 = call double @atof(i8* %call227) #8, !dbg !934
  %conv233 = fptrunc double %call232 to float, !dbg !934
  store float %conv233, float* %nc2, align 4, !dbg !934, !tbaa !971
  %17 = load i32* %flags, align 4, !dbg !983, !tbaa !460
  %or235 = or i32 %17, 4096, !dbg !983
  store i32 %or235, i32* %flags, align 4, !dbg !983, !tbaa !460
  br label %while.cond.backedge, !dbg !984

if.else236:                                       ; preds = %if.else212
  %call238 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str86, i64 0, i64 0), i64 5) #8, !dbg !985
  %cmp239 = icmp eq i32 %call238, 0, !dbg !985
  br i1 %cmp239, label %if.then241, label %if.else266, !dbg !985

if.then241:                                       ; preds = %if.else236
  %call244 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !986
  call void @llvm.dbg.value(metadata !{i8* %call244}, i64 0, metadata !429), !dbg !986
  %cmp245 = icmp eq i8* %call244, null, !dbg !986
  br i1 %cmp245, label %FAILURE, label %for.cond251.preheader, !dbg !986

for.cond251.preheader:                            ; preds = %if.then241, %for.inc263
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %for.inc263 ], [ 0, %if.then241 ]
  %s.0776 = phi i8* [ %call262, %for.inc263 ], [ %call244, %if.then241 ]
  br label %for.body254, !dbg !988

for.body254:                                      ; preds = %for.cond251.preheader, %if.end258
  %indvars.iv793 = phi i64 [ 0, %for.cond251.preheader ], [ %indvars.iv.next794, %if.end258 ]
  %s.1773 = phi i8* [ %s.0776, %for.cond251.preheader ], [ %call262, %if.end258 ]
  %cmp255 = icmp eq i8* %s.1773, null, !dbg !991
  br i1 %cmp255, label %FAILURE, label %if.end258, !dbg !991

if.end258:                                        ; preds = %for.body254
  %call259 = call fastcc float @ascii2prob(i8* %s.1773, float 1.000000e+00) #9, !dbg !993
  %arrayidx261 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 25, i64 %indvars.iv795, i64 %indvars.iv793, !dbg !993
  store float %call259, float* %arrayidx261, align 4, !dbg !993, !tbaa !971
  %call262 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !994
  call void @llvm.dbg.value(metadata !{i8* %call262}, i64 0, metadata !429), !dbg !994
  %indvars.iv.next794 = add i64 %indvars.iv793, 1, !dbg !988
  %18 = trunc i64 %indvars.iv.next794 to i32, !dbg !988
  %cmp252 = icmp slt i32 %18, 2, !dbg !988
  br i1 %cmp252, label %for.body254, label %for.inc263, !dbg !988

for.inc263:                                       ; preds = %if.end258
  %indvars.iv.next796 = add i64 %indvars.iv795, 1, !dbg !995
  %19 = trunc i64 %indvars.iv.next796 to i32, !dbg !995
  %cmp249 = icmp slt i32 %19, 4, !dbg !995
  br i1 %cmp249, label %for.cond251.preheader, label %while.cond.backedge, !dbg !995

if.else266:                                       ; preds = %if.else236
  %call268 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str87, i64 0, i64 0), i64 5) #8, !dbg !996
  %cmp269 = icmp eq i32 %call268, 0, !dbg !996
  br i1 %cmp269, label %if.then271, label %if.else290, !dbg !996

if.then271:                                       ; preds = %if.else266
  %call274 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !997
  call void @llvm.dbg.value(metadata !{i8* %call274}, i64 0, metadata !429), !dbg !997
  %cmp275 = icmp eq i8* %call274, null, !dbg !997
  br i1 %cmp275, label %FAILURE, label %if.end278, !dbg !997

if.end278:                                        ; preds = %if.then271
  %call279 = call fastcc float @ascii2prob(i8* %call274, float 1.000000e+00) #9, !dbg !935
  store float %call279, float* %p1, align 4, !dbg !935, !tbaa !971
  %call280 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !998
  call void @llvm.dbg.value(metadata !{i8* %call280}, i64 0, metadata !429), !dbg !998
  %cmp281 = icmp eq i8* %call280, null, !dbg !998
  br i1 %cmp281, label %FAILURE, label %if.end284, !dbg !998

if.end284:                                        ; preds = %if.end278
  %20 = load float* %p1, align 4, !dbg !999, !tbaa !971
  %call287 = call fastcc float @ascii2prob(i8* %call280, float 1.000000e+00) #9, !dbg !999
  %add288 = fadd float %20, %call287, !dbg !999
  %div = fdiv float %20, %add288, !dbg !999
  store float %div, float* %p1, align 4, !dbg !999, !tbaa !971
  br label %while.cond.backedge, !dbg !1000

if.else290:                                       ; preds = %if.else266
  %call292 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str88, i64 0, i64 0), i64 5) #8, !dbg !1001
  %cmp293 = icmp eq i32 %call292, 0, !dbg !1001
  br i1 %cmp293, label %if.then295, label %if.else322, !dbg !1001

if.then295:                                       ; preds = %if.else290
  %21 = load i32* @Alphabet_type, align 4, !dbg !1002, !tbaa !460
  %cmp296 = icmp eq i32 %21, 0, !dbg !1002
  br i1 %cmp296, label %if.then298, label %if.end299, !dbg !1002

if.then298:                                       ; preds = %if.then295
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([41 x i8]* @.str89, i64 0, i64 0)) #7, !dbg !1004
  br label %if.end299, !dbg !1004

if.end299:                                        ; preds = %if.then298, %if.then295
  %call302 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1005
  call void @llvm.dbg.value(metadata !{i8* %call302}, i64 0, metadata !429), !dbg !1005
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !433), !dbg !1006
  %22 = load i32* @Alphabet_size, align 4, !dbg !1006, !tbaa !460
  %cmp304768 = icmp sgt i32 %22, 0, !dbg !1006
  br i1 %cmp304768, label %for.body306, label %while.cond.backedge, !dbg !1006

for.body306:                                      ; preds = %if.end299, %if.end310
  %indvars.iv791 = phi i64 [ %indvars.iv.next792, %if.end310 ], [ 0, %if.end299 ]
  %23 = phi i32 [ %24, %if.end310 ], [ %22, %if.end299 ]
  %s.2769 = phi i8* [ %call318, %if.end310 ], [ %call302, %if.end299 ]
  %cmp307 = icmp eq i8* %s.2769, null, !dbg !1008
  br i1 %cmp307, label %FAILURE, label %if.end310, !dbg !1008

if.end310:                                        ; preds = %for.body306
  %conv311 = sitofp i32 %23 to float, !dbg !1010
  %conv314 = fdiv float 1.000000e+00, %conv311, !dbg !1010
  %call315 = call fastcc float @ascii2prob(i8* %s.2769, float %conv314) #9, !dbg !1010
  %arrayidx317 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 28, i64 %indvars.iv791, !dbg !1010
  store float %call315, float* %arrayidx317, align 4, !dbg !1010, !tbaa !971
  %call318 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1011
  call void @llvm.dbg.value(metadata !{i8* %call318}, i64 0, metadata !429), !dbg !1011
  %indvars.iv.next792 = add i64 %indvars.iv791, 1, !dbg !1006
  %24 = load i32* @Alphabet_size, align 4, !dbg !1006, !tbaa !460
  %25 = trunc i64 %indvars.iv.next792 to i32, !dbg !1006
  %cmp304 = icmp slt i32 %25, %24, !dbg !1006
  br i1 %cmp304, label %for.body306, label %while.cond.backedge, !dbg !1006

if.else322:                                       ; preds = %if.else290
  %call324 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str90, i64 0, i64 0), i64 5) #8, !dbg !1012
  %cmp325 = icmp eq i32 %call324, 0, !dbg !1012
  br i1 %cmp325, label %if.then327, label %if.else346, !dbg !1012

if.then327:                                       ; preds = %if.else322
  %26 = load i32* %flags, align 4, !dbg !1013, !tbaa !460
  %or329 = or i32 %26, 128, !dbg !1013
  store i32 %or329, i32* %flags, align 4, !dbg !1013, !tbaa !460
  %call332 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1014
  call void @llvm.dbg.value(metadata !{i8* %call332}, i64 0, metadata !429), !dbg !1014
  %cmp333 = icmp eq i8* %call332, null, !dbg !1014
  br i1 %cmp333, label %FAILURE, label %if.end336, !dbg !1014

if.end336:                                        ; preds = %if.then327
  %call337 = call double @atof(i8* %call332) #8, !dbg !937
  %conv338 = fptrunc double %call337 to float, !dbg !937
  store float %conv338, float* %mu, align 4, !dbg !937, !tbaa !971
  %call339 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1015
  call void @llvm.dbg.value(metadata !{i8* %call339}, i64 0, metadata !429), !dbg !1015
  %cmp340 = icmp eq i8* %call339, null, !dbg !1015
  br i1 %cmp340, label %FAILURE, label %if.end343, !dbg !1015

if.end343:                                        ; preds = %if.end336
  %call344 = call double @atof(i8* %call339) #8, !dbg !939
  %conv345 = fptrunc double %call344 to float, !dbg !939
  store float %conv345, float* %lambda, align 4, !dbg !939, !tbaa !971
  br label %while.cond.backedge, !dbg !1016

if.else346:                                       ; preds = %if.else322
  %call348 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str91, i64 0, i64 0), i64 5) #8, !dbg !940
  %cmp349 = icmp eq i32 %call348, 0, !dbg !940
  br i1 %cmp349, label %if.then351, label %if.else355, !dbg !940

if.then351:                                       ; preds = %if.else346
  %call354 = call i32 @atoi(i8* %add.ptr) #8, !dbg !940
  store i32 %call354, i32* %checksum, align 4, !dbg !940, !tbaa !460
  br label %while.cond.backedge, !dbg !940

if.else355:                                       ; preds = %if.else346
  %call357 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str92, i64 0, i64 0), i64 5) #8, !dbg !1017
  %cmp358 = icmp eq i32 %call357, 0, !dbg !1017
  br i1 %cmp358, label %while.end, label %while.cond.backedge, !dbg !1017

while.end:                                        ; preds = %while.cond.backedge, %if.else355, %if.end7
  %M.0.lcssa = phi i32 [ -1, %if.end7 ], [ %M.0784, %if.else355 ], [ %M.0.be, %while.cond.backedge ]
  %27 = load %struct._IO_FILE** %f, align 8, !dbg !1018, !tbaa !465
  %call382 = call i32 @feof(%struct._IO_FILE* %27) #7, !dbg !1018
  %tobool383 = icmp ne i32 %call382, 0, !dbg !1018
  %cmp386 = icmp slt i32 %M.0.lcssa, 1, !dbg !1019
  %or.cond746 = or i1 %tobool383, %cmp386, !dbg !1018
  br i1 %or.cond746, label %FAILURE, label %if.end389, !dbg !1018

if.end389:                                        ; preds = %while.end
  %name = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 0, !dbg !1020
  %28 = load i8** %name, align 8, !dbg !1020, !tbaa !465
  %cmp390 = icmp eq i8* %28, null, !dbg !1020
  %29 = load i32* @Alphabet_type, align 4, !dbg !1021, !tbaa !460
  %cmp394 = icmp eq i32 %29, 0, !dbg !1021
  %or.cond = or i1 %cmp390, %cmp394, !dbg !1020
  br i1 %or.cond, label %if.then616, label %if.end397, !dbg !1020

if.end397:                                        ; preds = %if.end389
  call void @AllocPlan7Body(%struct.plan7_s* %call8, i32 %M.0.lcssa) #7, !dbg !1022
  %30 = load %struct._IO_FILE** %f, align 8, !dbg !1023, !tbaa !465
  %call400 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %30) #7, !dbg !1023
  %cmp401 = icmp eq i8* %call400, null, !dbg !1023
  br i1 %cmp401, label %if.then616, label %if.end404, !dbg !1023

if.end404:                                        ; preds = %if.end397
  %31 = load %struct._IO_FILE** %f, align 8, !dbg !1024, !tbaa !465
  %call407 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %31) #7, !dbg !1024
  %cmp408 = icmp eq i8* %call407, null, !dbg !1024
  br i1 %cmp408, label %if.then616, label %if.end411, !dbg !1024

if.end411:                                        ; preds = %if.end404
  %call413 = call i8* @strtok(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1025
  call void @llvm.dbg.value(metadata !{i8* %call413}, i64 0, metadata !429), !dbg !1025
  %cmp414 = icmp eq i8* %call413, null, !dbg !1025
  br i1 %cmp414, label %if.then616, label %if.end417, !dbg !1025

if.end417:                                        ; preds = %if.end411
  %call418 = call fastcc float @ascii2prob(i8* %call413, float 1.000000e+00) #9, !dbg !1026
  call void @llvm.dbg.value(metadata !{float %call418}, i64 0, metadata !431), !dbg !1026
  %call419 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1027
  call void @llvm.dbg.value(metadata !{i8* %call419}, i64 0, metadata !429), !dbg !1027
  %cmp420 = icmp eq i8* %call419, null, !dbg !1027
  br i1 %cmp420, label %if.then616, label %if.end423, !dbg !1027

if.end423:                                        ; preds = %if.end417
  %call424 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1028
  call void @llvm.dbg.value(metadata !{i8* %call424}, i64 0, metadata !429), !dbg !1028
  %cmp425 = icmp eq i8* %call424, null, !dbg !1028
  br i1 %cmp425, label %if.then616, label %if.end428, !dbg !1028

if.end428:                                        ; preds = %if.end423
  %call429 = call fastcc float @ascii2prob(i8* %call424, float 1.000000e+00) #9, !dbg !1029
  %tbd1 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 24, !dbg !1029
  %add432 = fadd float %call418, %call429, !dbg !1030
  %div433 = fdiv float %call429, %add432, !dbg !1030
  store float %div433, float* %tbd1, align 4, !dbg !1030, !tbaa !971
  call void @llvm.dbg.value(metadata !1031, i64 0, metadata !432), !dbg !1032
  %M436 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 20, !dbg !1032
  %32 = load i32* %M436, align 4, !dbg !1032, !tbaa !460
  %cmp437765 = icmp slt i32 %32, 1, !dbg !1032
  br i1 %cmp437765, label %while.cond596, label %for.body439.lr.ph, !dbg !1032

for.body439.lr.ph:                                ; preds = %if.end428
  %flags478 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 47, !dbg !1034
  %cs = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 4, !dbg !1036
  %t = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 21, !dbg !1037
  %begin = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 26, !dbg !1040
  %end = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 27, !dbg !1041
  %ins = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 23, !dbg !1042
  %rf = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 3, !dbg !1046
  %map = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 9, !dbg !1047
  %mat = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 22, !dbg !1049
  br label %for.body439, !dbg !1032

for.body439:                                      ; preds = %if.end589, %for.body439.lr.ph
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %if.end589 ], [ 1, %for.body439.lr.ph ]
  %33 = load %struct._IO_FILE** %f, align 8, !dbg !1052, !tbaa !465
  %call442 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %33) #7, !dbg !1052
  %cmp443 = icmp eq i8* %call442, null, !dbg !1052
  br i1 %cmp443, label %FAILURE, label %if.end446, !dbg !1052

if.end446:                                        ; preds = %for.body439
  %call448 = call i8* @strtok(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1053
  call void @llvm.dbg.value(metadata !{i8* %call448}, i64 0, metadata !429), !dbg !1053
  %cmp449 = icmp eq i8* %call448, null, !dbg !1053
  br i1 %cmp449, label %FAILURE, label %if.end452, !dbg !1053

if.end452:                                        ; preds = %if.end446
  %call453 = call i32 @atoi(i8* %call448) #8, !dbg !1054
  %34 = trunc i64 %indvars.iv789 to i32, !dbg !1054
  %cmp454 = icmp eq i32 %call453, %34, !dbg !1054
  br i1 %cmp454, label %for.cond458.preheader, label %FAILURE, !dbg !1054

for.cond458.preheader:                            ; preds = %if.end452
  %35 = load i32* @Alphabet_size, align 4, !dbg !1055, !tbaa !460
  %cmp459751 = icmp sgt i32 %35, 0, !dbg !1055
  br i1 %cmp459751, label %for.body461, label %for.end477, !dbg !1055

for.body461:                                      ; preds = %for.cond458.preheader, %if.end466
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end466 ], [ 0, %for.cond458.preheader ]
  %call462 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1056
  call void @llvm.dbg.value(metadata !{i8* %call462}, i64 0, metadata !429), !dbg !1056
  %cmp463 = icmp eq i8* %call462, null, !dbg !1056
  br i1 %cmp463, label %FAILURE, label %if.end466, !dbg !1056

if.end466:                                        ; preds = %for.body461
  %arrayidx469 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 28, i64 %indvars.iv, !dbg !1049
  %36 = load float* %arrayidx469, align 4, !dbg !1049, !tbaa !971
  %call470 = call fastcc float @ascii2prob(i8* %call462, float %36) #9, !dbg !1049
  %37 = load float*** %mat, align 8, !dbg !1049, !tbaa !465
  %arrayidx473 = getelementptr inbounds float** %37, i64 %indvars.iv789, !dbg !1049
  %38 = load float** %arrayidx473, align 8, !dbg !1049, !tbaa !465
  %arrayidx474 = getelementptr inbounds float* %38, i64 %indvars.iv, !dbg !1049
  store float %call470, float* %arrayidx474, align 4, !dbg !1049, !tbaa !971
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1055
  %39 = load i32* @Alphabet_size, align 4, !dbg !1055, !tbaa !460
  %40 = trunc i64 %indvars.iv.next to i32, !dbg !1055
  %cmp459 = icmp slt i32 %40, %39, !dbg !1055
  br i1 %cmp459, label %for.body461, label %for.end477, !dbg !1055

for.end477:                                       ; preds = %if.end466, %for.cond458.preheader
  %41 = load i32* %flags478, align 4, !dbg !1034, !tbaa !460
  %and = and i32 %41, 256, !dbg !1034
  %tobool479 = icmp eq i32 %and, 0, !dbg !1034
  br i1 %tobool479, label %if.end489, label %if.then480, !dbg !1034

if.then480:                                       ; preds = %for.end477
  %call481 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1057
  call void @llvm.dbg.value(metadata !{i8* %call481}, i64 0, metadata !429), !dbg !1057
  %cmp482 = icmp eq i8* %call481, null, !dbg !1057
  br i1 %cmp482, label %FAILURE, label %if.end485, !dbg !1057

if.end485:                                        ; preds = %if.then480
  %call486 = call i32 @atoi(i8* %call481) #8, !dbg !1047
  %42 = load i32** %map, align 8, !dbg !1047, !tbaa !465
  %arrayidx488 = getelementptr inbounds i32* %42, i64 %indvars.iv789, !dbg !1047
  store i32 %call486, i32* %arrayidx488, align 4, !dbg !1047, !tbaa !460
  br label %if.end489, !dbg !1058

if.end489:                                        ; preds = %for.end477, %if.end485
  %43 = load %struct._IO_FILE** %f, align 8, !dbg !1059, !tbaa !465
  %call492 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %43) #7, !dbg !1059
  %cmp493 = icmp eq i8* %call492, null, !dbg !1059
  br i1 %cmp493, label %FAILURE, label %if.end496, !dbg !1059

if.end496:                                        ; preds = %if.end489
  %call498 = call i8* @strtok(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1060
  call void @llvm.dbg.value(metadata !{i8* %call498}, i64 0, metadata !429), !dbg !1060
  %cmp499 = icmp eq i8* %call498, null, !dbg !1060
  br i1 %cmp499, label %FAILURE, label %if.end502, !dbg !1060

if.end502:                                        ; preds = %if.end496
  %44 = load i32* %flags478, align 4, !dbg !1046, !tbaa !460
  %and504 = and i32 %44, 4, !dbg !1046
  %tobool505 = icmp eq i32 %and504, 0, !dbg !1046
  br i1 %tobool505, label %if.end509, label %if.then506, !dbg !1046

if.then506:                                       ; preds = %if.end502
  %45 = load i8* %call498, align 1, !dbg !1046, !tbaa !461
  %46 = load i8** %rf, align 8, !dbg !1046, !tbaa !465
  %arrayidx508 = getelementptr inbounds i8* %46, i64 %indvars.iv789, !dbg !1046
  store i8 %45, i8* %arrayidx508, align 1, !dbg !1046, !tbaa !461
  br label %if.end509, !dbg !1046

if.end509:                                        ; preds = %if.end502, %if.then506
  %47 = load i32* %M436, align 4, !dbg !1061, !tbaa !460
  %cmp511 = icmp slt i32 %call453, %47, !dbg !1061
  %48 = load i32* @Alphabet_size, align 4, !dbg !1062, !tbaa !460
  %cmp515754 = icmp sgt i32 %48, 0, !dbg !1062
  %or.cond801 = and i1 %cmp511, %cmp515754, !dbg !1061
  br i1 %or.cond801, label %for.body517, label %if.end534, !dbg !1061

for.body517:                                      ; preds = %if.end509, %if.end522
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %if.end522 ], [ 0, %if.end509 ]
  %call518 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1063
  call void @llvm.dbg.value(metadata !{i8* %call518}, i64 0, metadata !429), !dbg !1063
  %cmp519 = icmp eq i8* %call518, null, !dbg !1063
  br i1 %cmp519, label %FAILURE, label %if.end522, !dbg !1063

if.end522:                                        ; preds = %for.body517
  %arrayidx525 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 28, i64 %indvars.iv785, !dbg !1042
  %49 = load float* %arrayidx525, align 4, !dbg !1042, !tbaa !971
  %call526 = call fastcc float @ascii2prob(i8* %call518, float %49) #9, !dbg !1042
  %50 = load float*** %ins, align 8, !dbg !1042, !tbaa !465
  %arrayidx529 = getelementptr inbounds float** %50, i64 %indvars.iv789, !dbg !1042
  %51 = load float** %arrayidx529, align 8, !dbg !1042, !tbaa !465
  %arrayidx530 = getelementptr inbounds float* %51, i64 %indvars.iv785, !dbg !1042
  store float %call526, float* %arrayidx530, align 4, !dbg !1042, !tbaa !971
  %indvars.iv.next786 = add i64 %indvars.iv785, 1, !dbg !1062
  %52 = load i32* @Alphabet_size, align 4, !dbg !1062, !tbaa !460
  %53 = trunc i64 %indvars.iv.next786 to i32, !dbg !1062
  %cmp515 = icmp slt i32 %53, %52, !dbg !1062
  br i1 %cmp515, label %for.body517, label %if.end534, !dbg !1062

if.end534:                                        ; preds = %if.end522, %if.end509
  %54 = load %struct._IO_FILE** %f, align 8, !dbg !1064, !tbaa !465
  %call537 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %54) #7, !dbg !1064
  %cmp538 = icmp eq i8* %call537, null, !dbg !1064
  br i1 %cmp538, label %FAILURE, label %if.end541, !dbg !1064

if.end541:                                        ; preds = %if.end534
  %call543 = call i8* @strtok(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1065
  call void @llvm.dbg.value(metadata !{i8* %call543}, i64 0, metadata !429), !dbg !1065
  %cmp544 = icmp eq i8* %call543, null, !dbg !1065
  br i1 %cmp544, label %FAILURE, label %if.end547, !dbg !1065

if.end547:                                        ; preds = %if.end541
  %55 = load i32* %flags478, align 4, !dbg !1036, !tbaa !460
  %and549 = and i32 %55, 8, !dbg !1036
  %tobool550 = icmp eq i32 %and549, 0, !dbg !1036
  br i1 %tobool550, label %for.cond555.preheader, label %if.then551, !dbg !1036

if.then551:                                       ; preds = %if.end547
  %56 = load i8* %call543, align 1, !dbg !1036, !tbaa !461
  %57 = load i8** %cs, align 8, !dbg !1036, !tbaa !465
  %arrayidx553 = getelementptr inbounds i8* %57, i64 %indvars.iv789, !dbg !1036
  store i8 %56, i8* %arrayidx553, align 1, !dbg !1036, !tbaa !461
  br label %for.cond555.preheader, !dbg !1036

for.cond555.preheader:                            ; preds = %if.end547, %if.then551
  %call559759 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1066
  call void @llvm.dbg.value(metadata !{i8* %call559}, i64 0, metadata !429), !dbg !1066
  %cmp560760 = icmp eq i8* %call559759, null, !dbg !1066
  br label %for.body558, !dbg !1067

for.body558:                                      ; preds = %for.cond555.preheader, %for.inc574
  %indvars.iv787 = phi i64 [ 0, %for.cond555.preheader ], [ %indvars.iv.next788, %for.inc574 ]
  %cmp560763 = phi i1 [ %cmp560760, %for.cond555.preheader ], [ %cmp560, %for.inc574 ]
  %call559762 = phi i8* [ %call559759, %for.cond555.preheader ], [ %call559, %for.inc574 ]
  br i1 %cmp560763, label %FAILURE, label %if.end563, !dbg !1066

if.end563:                                        ; preds = %for.body558
  %58 = load i32* %M436, align 4, !dbg !1037, !tbaa !460
  %cmp565 = icmp slt i32 %call453, %58, !dbg !1037
  br i1 %cmp565, label %if.then567, label %for.inc574, !dbg !1037

if.then567:                                       ; preds = %if.end563
  %call568 = call fastcc float @ascii2prob(i8* %call559762, float 1.000000e+00) #9, !dbg !1037
  %59 = load float*** %t, align 8, !dbg !1037, !tbaa !465
  %arrayidx571 = getelementptr inbounds float** %59, i64 %indvars.iv789, !dbg !1037
  %60 = load float** %arrayidx571, align 8, !dbg !1037, !tbaa !465
  %arrayidx572 = getelementptr inbounds float* %60, i64 %indvars.iv787, !dbg !1037
  store float %call568, float* %arrayidx572, align 4, !dbg !1037, !tbaa !971
  br label %for.inc574, !dbg !1037

for.inc574:                                       ; preds = %if.end563, %if.then567
  %indvars.iv.next788 = add i64 %indvars.iv787, 1, !dbg !1067
  %61 = trunc i64 %indvars.iv.next788 to i32, !dbg !1067
  %cmp556 = icmp slt i32 %61, 7, !dbg !1067
  %call559 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1066
  call void @llvm.dbg.value(metadata !{i8* %call559}, i64 0, metadata !429), !dbg !1066
  %cmp560 = icmp eq i8* %call559, null, !dbg !1066
  br i1 %cmp556, label %for.body558, label %for.end576, !dbg !1067

for.end576:                                       ; preds = %for.inc574
  br i1 %cmp560, label %FAILURE, label %if.end581, !dbg !1068

if.end581:                                        ; preds = %for.end576
  %call582 = call fastcc float @ascii2prob(i8* %call559, float 1.000000e+00) #9, !dbg !1040
  %62 = load float** %begin, align 8, !dbg !1040, !tbaa !465
  %arrayidx584 = getelementptr inbounds float* %62, i64 %indvars.iv789, !dbg !1040
  store float %call582, float* %arrayidx584, align 4, !dbg !1040, !tbaa !971
  %call585 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1069
  call void @llvm.dbg.value(metadata !{i8* %call585}, i64 0, metadata !429), !dbg !1069
  %cmp586 = icmp eq i8* %call585, null, !dbg !1069
  br i1 %cmp586, label %FAILURE, label %if.end589, !dbg !1069

if.end589:                                        ; preds = %if.end581
  %call590 = call fastcc float @ascii2prob(i8* %call585, float 1.000000e+00) #9, !dbg !1041
  %63 = load float** %end, align 8, !dbg !1041, !tbaa !465
  %arrayidx592 = getelementptr inbounds float* %63, i64 %indvars.iv789, !dbg !1041
  store float %call590, float* %arrayidx592, align 4, !dbg !1041, !tbaa !971
  %indvars.iv.next790 = add i64 %indvars.iv789, 1, !dbg !1032
  %64 = load i32* %M436, align 4, !dbg !1032, !tbaa !460
  %cmp437 = icmp slt i32 %call453, %64, !dbg !1032
  br i1 %cmp437, label %for.body439, label %while.cond596, !dbg !1032

while.cond596:                                    ; preds = %if.end428, %if.end589, %while.body602
  %65 = load %struct._IO_FILE** %f, align 8, !dbg !1070, !tbaa !465
  %call599 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %65) #7, !dbg !1070
  %cmp600 = icmp eq i8* %call599, null, !dbg !1070
  br i1 %cmp600, label %while.end609, label %while.body602, !dbg !1070

while.body602:                                    ; preds = %while.cond596
  %call604 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str93, i64 0, i64 0), i64 2) #8, !dbg !1071
  %cmp605 = icmp eq i32 %call604, 0, !dbg !1071
  br i1 %cmp605, label %while.end609, label %while.cond596, !dbg !1071

while.end609:                                     ; preds = %while.cond596, %while.body602
  call void @Plan7Renormalize(%struct.plan7_s* %call8) #7, !dbg !1072
  %flags610 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 47, !dbg !1073
  %66 = load i32* %flags610, align 4, !dbg !1073, !tbaa !460
  %or611 = and i32 %66, -34, !dbg !1074
  %and613 = or i32 %or611, 32, !dbg !1074
  store i32 %and613, i32* %flags610, align 4, !dbg !1074, !tbaa !460
  store %struct.plan7_s* %call8, %struct.plan7_s** %ret_hmm, align 8, !dbg !1075, !tbaa !465
  br label %cleanup, !dbg !1076

FAILURE:                                          ; preds = %if.end336, %if.then327, %if.end278, %if.then271, %if.then241, %if.end224, %if.then217, %if.end200, %if.then193, %if.end176, %if.then169, %if.else59, %for.body254, %for.body306, %if.end452, %if.end581, %for.end576, %if.end541, %if.end534, %if.end496, %if.end489, %if.then480, %if.end446, %for.body439, %for.body558, %for.body517, %for.body461, %while.end
  %cmp614 = icmp eq %struct.plan7_s* %call8, null, !dbg !1077
  br i1 %cmp614, label %if.end617, label %if.then616, !dbg !1077

if.then616:                                       ; preds = %if.end423, %if.end417, %if.end411, %if.end404, %if.end397, %if.end389, %FAILURE
  call void @FreePlan7(%struct.plan7_s* %call8) #7, !dbg !1077
  br label %if.end617, !dbg !1077

if.end617:                                        ; preds = %if.end, %FAILURE, %if.then616
  store %struct.plan7_s* null, %struct.plan7_s** %ret_hmm, align 8, !dbg !1078, !tbaa !465
  br label %cleanup, !dbg !1079

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end617, %while.end609
  %retval.0 = phi i32 [ 1, %if.end617 ], [ 1, %while.end609 ], [ 0, %entry ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end(i64 512, i8* %0) #2, !dbg !1079
  ret i32 %retval.0, !dbg !1080
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_asc19hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  %buffer = alloca [512 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %hmmfp}, i64 0, metadata !389), !dbg !1081
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %ret_hmm}, i64 0, metadata !390), !dbg !1081
  %0 = getelementptr inbounds [512 x i8]* %buffer, i64 0, i64 0, !dbg !1082
  call void @llvm.lifetime.start(i64 512, i8* %0) #2, !dbg !1082
  call void @llvm.dbg.declare(metadata !{[512 x i8]* %buffer}, metadata !393), !dbg !1082
  call void @llvm.dbg.value(metadata !576, i64 0, metadata !391), !dbg !1083
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0, !dbg !1084
  %1 = load %struct._IO_FILE** %f, align 8, !dbg !1084, !tbaa !465
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %1}, i64 0, metadata !392), !dbg !1084
  %call = call i32 @feof(%struct._IO_FILE* %1) #7, !dbg !1085
  %tobool = icmp eq i32 %call, 0, !dbg !1085
  br i1 %tobool, label %lor.lhs.false, label %cleanup, !dbg !1085

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %1) #7, !dbg !1085
  %cmp = icmp eq i8* %call1, null, !dbg !1085
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1085

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), i64 10) #8, !dbg !1086
  %cmp4 = icmp eq i32 %call3, 0, !dbg !1086
  br i1 %cmp4, label %if.end6, label %if.end411, !dbg !1086

if.end6:                                          ; preds = %if.end
  %call7 = call %struct.plan7_s* @AllocPlan7Shell() #7, !dbg !1087
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %call7}, i64 0, metadata !391), !dbg !1087
  %call8 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1088
  call void @llvm.dbg.value(metadata !{i8* %call8}, i64 0, metadata !394), !dbg !1088
  %cmp9 = icmp eq i8* %call8, null, !dbg !1088
  br i1 %cmp9, label %FAILURE, label %if.end11, !dbg !1088

if.end11:                                         ; preds = %if.end6
  %call12 = call i32 @atoi(i8* %call8) #8, !dbg !1088
  call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !395), !dbg !1088
  %call13 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1089
  call void @llvm.dbg.value(metadata !{i8* %call13}, i64 0, metadata !394), !dbg !1089
  %cmp14 = icmp eq i8* %call13, null, !dbg !1089
  br i1 %cmp14, label %FAILURE, label %if.end16, !dbg !1089

if.end16:                                         ; preds = %if.end11
  %call17 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #7, !dbg !1090
  call void @llvm.dbg.value(metadata !{i8* %call17}, i64 0, metadata !394), !dbg !1090
  %cmp18 = icmp eq i8* %call17, null, !dbg !1090
  br i1 %cmp18, label %FAILURE, label %if.end20, !dbg !1090

if.end20:                                         ; preds = %if.end16
  call void @Plan7SetName(%struct.plan7_s* %call7, i8* %call17) #7, !dbg !1090
  %call21 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #7, !dbg !1091
  call void @llvm.dbg.value(metadata !{i8* %call21}, i64 0, metadata !394), !dbg !1091
  %cmp22 = icmp eq i8* %call21, null, !dbg !1091
  br i1 %cmp22, label %FAILURE, label %if.end24, !dbg !1091

if.end24:                                         ; preds = %if.end20
  call void @s2upper(i8* %call21) #7, !dbg !1092
  %call25 = call i32 @strcmp(i8* %call21, i8* getelementptr inbounds ([6 x i8]* @.str69, i64 0, i64 0)) #8, !dbg !1093
  %cmp26 = icmp eq i32 %call25, 0, !dbg !1093
  br i1 %cmp26, label %if.end33, label %if.else, !dbg !1093

if.else:                                          ; preds = %if.end24
  %call28 = call i32 @strcmp(i8* %call21, i8* getelementptr inbounds ([8 x i8]* @.str70, i64 0, i64 0)) #8, !dbg !1094
  %cmp29 = icmp eq i32 %call28, 0, !dbg !1094
  br i1 %cmp29, label %if.end33, label %FAILURE, !dbg !1094

if.end33:                                         ; preds = %if.else, %if.end24
  %atype.0 = phi i32 [ 3, %if.end24 ], [ 2, %if.else ]
  %2 = load i32* @Alphabet_type, align 4, !dbg !1095, !tbaa !460
  %cmp34 = icmp eq i32 %2, 0, !dbg !1095
  br i1 %cmp34, label %if.then35, label %if.else36, !dbg !1095

if.then35:                                        ; preds = %if.end33
  call void @SetAlphabet(i32 %atype.0) #7, !dbg !1095
  br label %if.end42, !dbg !1095

if.else36:                                        ; preds = %if.end33
  %cmp37 = icmp eq i32 %atype.0, %2, !dbg !1096
  br i1 %cmp37, label %if.end42, label %if.then38, !dbg !1096

if.then38:                                        ; preds = %if.else36
  %call39 = call i8* @AlphabetType2String(i32 %2) #7, !dbg !1097
  %call40 = call i8* @AlphabetType2String(i32 %atype.0) #7, !dbg !1097
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([89 x i8]* @.str61, i64 0, i64 0), i8* %call39, i8* %call40) #7, !dbg !1097
  br label %if.end42, !dbg !1097

if.end42:                                         ; preds = %if.else36, %if.then38, %if.then35
  %call43 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #7, !dbg !1098
  call void @llvm.dbg.value(metadata !{i8* %call43}, i64 0, metadata !394), !dbg !1098
  %cmp44 = icmp eq i8* %call43, null, !dbg !1098
  br i1 %cmp44, label %FAILURE, label %if.end46, !dbg !1098

if.end46:                                         ; preds = %if.end42
  %3 = load i32* @Alphabet_size, align 4, !dbg !1099, !tbaa !460
  %conv = sext i32 %3 to i64, !dbg !1099
  %call47 = call i32 @strncmp(i8* %call43, i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i64 %conv) #8, !dbg !1099
  %cmp48 = icmp eq i32 %call47, 0, !dbg !1099
  br i1 %cmp48, label %if.end51, label %FAILURE, !dbg !1099

if.end51:                                         ; preds = %if.end46
  %call52 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #7, !dbg !1100
  call void @llvm.dbg.value(metadata !{i8* %call52}, i64 0, metadata !394), !dbg !1100
  %cmp53 = icmp eq i8* %call52, null, !dbg !1100
  br i1 %cmp53, label %FAILURE, label %if.end56, !dbg !1100

if.end56:                                         ; preds = %if.end51
  %call57 = call i32 @strcmp(i8* %call52, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #8, !dbg !1101
  %cmp58 = icmp eq i32 %call57, 0, !dbg !1101
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !1101

if.then60:                                        ; preds = %if.end56
  %flags = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 47, !dbg !1101
  %4 = load i32* %flags, align 4, !dbg !1101, !tbaa !460
  %or = or i32 %4, 4, !dbg !1101
  store i32 %or, i32* %flags, align 4, !dbg !1101, !tbaa !460
  br label %if.end61, !dbg !1101

if.end61:                                         ; preds = %if.then60, %if.end56
  %call62 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #7, !dbg !1102
  call void @llvm.dbg.value(metadata !{i8* %call62}, i64 0, metadata !394), !dbg !1102
  %cmp63 = icmp eq i8* %call62, null, !dbg !1102
  br i1 %cmp63, label %FAILURE, label %if.end66, !dbg !1102

if.end66:                                         ; preds = %if.end61
  %call67 = call i32 @strcmp(i8* %call62, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #8, !dbg !1103
  %cmp68 = icmp eq i32 %call67, 0, !dbg !1103
  br i1 %cmp68, label %if.then70, label %if.end73, !dbg !1103

if.then70:                                        ; preds = %if.end66
  %flags71 = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 47, !dbg !1103
  %5 = load i32* %flags71, align 4, !dbg !1103, !tbaa !460
  %or72 = or i32 %5, 8, !dbg !1103
  store i32 %or72, i32* %flags71, align 4, !dbg !1103, !tbaa !460
  br label %if.end73, !dbg !1103

if.end73:                                         ; preds = %if.then70, %if.end66
  %call74 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #7, !dbg !1104
  call void @llvm.dbg.value(metadata !{i8* %call74}, i64 0, metadata !394), !dbg !1104
  %cmp75 = icmp eq i8* %call74, null, !dbg !1104
  br i1 %cmp75, label %FAILURE, label %if.end78, !dbg !1104

if.end78:                                         ; preds = %if.end73
  %call79 = call i32 @strcmp(i8* %call74, i8* getelementptr inbounds ([5 x i8]* @.str71, i64 0, i64 0)) #8, !dbg !1105
  %cmp80 = icmp eq i32 %call79, 0, !dbg !1105
  br i1 %cmp80, label %for.cond.preheader, label %FAILURE, !dbg !1105

for.cond.preheader:                               ; preds = %if.end78
  %6 = load i32* @Alphabet_size, align 4, !dbg !1106, !tbaa !460
  %cmp84598 = icmp sgt i32 %6, 0, !dbg !1106
  br i1 %cmp84598, label %for.body, label %for.end, !dbg !1106

for.body:                                         ; preds = %for.cond.preheader, %if.end90
  %indvars.iv610 = phi i64 [ %indvars.iv.next611, %if.end90 ], [ 0, %for.cond.preheader ]
  %call86 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1108
  call void @llvm.dbg.value(metadata !{i8* %call86}, i64 0, metadata !394), !dbg !1108
  %cmp87 = icmp eq i8* %call86, null, !dbg !1108
  br i1 %cmp87, label %FAILURE, label %if.end90, !dbg !1108

if.end90:                                         ; preds = %for.body
  %call91 = call fastcc float @ascii2prob(i8* %call86, float 1.000000e+00) #9, !dbg !1110
  %arrayidx = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 28, i64 %indvars.iv610, !dbg !1110
  store float %call91, float* %arrayidx, align 4, !dbg !1110, !tbaa !971
  %indvars.iv.next611 = add i64 %indvars.iv610, 1, !dbg !1106
  %7 = load i32* @Alphabet_size, align 4, !dbg !1106, !tbaa !460
  %8 = trunc i64 %indvars.iv.next611 to i32, !dbg !1106
  %cmp84 = icmp slt i32 %8, %7, !dbg !1106
  br i1 %cmp84, label %for.body, label %for.end, !dbg !1106

for.end:                                          ; preds = %if.end90, %for.cond.preheader
  %9 = load i32* @Alphabet_type, align 4, !dbg !1111, !tbaa !460
  %cmp92 = icmp eq i32 %9, 3, !dbg !1111
  %conv94 = select i1 %cmp92, float 0x3FEFE8A940000000, float 0x3FEFF7D100000000, !dbg !1111
  %p1 = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 29, !dbg !1111
  store float %conv94, float* %p1, align 4, !dbg !1111, !tbaa !971
  %10 = load %struct._IO_FILE** %f, align 8, !dbg !1112, !tbaa !465
  %call96 = call i32 @feof(%struct._IO_FILE* %10) #7, !dbg !1112
  %tobool97 = icmp ne i32 %call96, 0, !dbg !1112
  %cmp100 = icmp slt i32 %call12, 1, !dbg !1113
  %or.cond559 = or i1 %tobool97, %cmp100, !dbg !1112
  br i1 %or.cond559, label %if.then410, label %if.end103, !dbg !1112

if.end103:                                        ; preds = %for.end
  %name = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 0, !dbg !1114
  %11 = load i8** %name, align 8, !dbg !1114, !tbaa !465
  %cmp104 = icmp eq i8* %11, null, !dbg !1114
  %12 = load i32* @Alphabet_type, align 4, !dbg !1115, !tbaa !460
  %cmp108 = icmp eq i32 %12, 0, !dbg !1115
  %or.cond = or i1 %cmp104, %cmp108, !dbg !1114
  br i1 %or.cond, label %if.then410, label %if.end111, !dbg !1114

if.end111:                                        ; preds = %if.end103
  call void @AllocPlan7Body(%struct.plan7_s* %call7, i32 %call12) #7, !dbg !1116
  call void @ZeroPlan7(%struct.plan7_s* %call7) #7, !dbg !1117
  call void @Plan7LSConfig(%struct.plan7_s* %call7) #7, !dbg !1118
  %call112 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1119
  call void @llvm.dbg.value(metadata !{i8* %call112}, i64 0, metadata !394), !dbg !1119
  %cmp113 = icmp eq i8* %call112, null, !dbg !1119
  br i1 %cmp113, label %if.then410, label %for.cond117.preheader, !dbg !1119

for.cond117.preheader:                            ; preds = %if.end111
  %13 = load i32* @Alphabet_size, align 4, !dbg !1120, !tbaa !460
  %cmp118590 = icmp sgt i32 %13, 0, !dbg !1120
  %call121591 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1122
  call void @llvm.dbg.value(metadata !{i8* %call121.lcssa}, i64 0, metadata !394), !dbg !1122
  %cmp122592 = icmp eq i8* %call121591, null, !dbg !1122
  br i1 %cmp118590, label %for.body120, label %for.end128, !dbg !1120

for.cond117:                                      ; preds = %for.body120
  %14 = load i32* @Alphabet_size, align 4, !dbg !1120, !tbaa !460
  %cmp118 = icmp slt i32 %inc127, %14, !dbg !1120
  %call121 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1122
  call void @llvm.dbg.value(metadata !{i8* %call121.lcssa}, i64 0, metadata !394), !dbg !1122
  %cmp122 = icmp eq i8* %call121, null, !dbg !1122
  br i1 %cmp118, label %for.body120, label %for.end128, !dbg !1120

for.body120:                                      ; preds = %for.cond117.preheader, %for.cond117
  %cmp122594 = phi i1 [ %cmp122, %for.cond117 ], [ %cmp122592, %for.cond117.preheader ]
  %x.1593 = phi i32 [ %inc127, %for.cond117 ], [ 0, %for.cond117.preheader ]
  %inc127 = add nsw i32 %x.1593, 1, !dbg !1120
  call void @llvm.dbg.value(metadata !{i32 %inc127}, i64 0, metadata !397), !dbg !1120
  br i1 %cmp122594, label %FAILURE, label %for.cond117, !dbg !1122

for.end128:                                       ; preds = %for.cond117, %for.cond117.preheader
  %cmp122.lcssa = phi i1 [ %cmp122592, %for.cond117.preheader ], [ %cmp122, %for.cond117 ]
  %call121.lcssa = phi i8* [ %call121591, %for.cond117.preheader ], [ %call121, %for.cond117 ]
  br i1 %cmp122.lcssa, label %FAILURE, label %if.end133, !dbg !1123

if.end133:                                        ; preds = %for.end128
  %call134 = call fastcc float @ascii2prob(i8* %call121.lcssa, float 1.000000e+00) #9, !dbg !1124
  %begin = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 26, !dbg !1124
  %15 = load float** %begin, align 8, !dbg !1124, !tbaa !465
  %arrayidx135 = getelementptr inbounds float* %15, i64 1, !dbg !1124
  store float %call134, float* %arrayidx135, align 4, !dbg !1124, !tbaa !971
  %call136 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1125
  call void @llvm.dbg.value(metadata !{i8* %call136}, i64 0, metadata !394), !dbg !1125
  %cmp137 = icmp eq i8* %call136, null, !dbg !1125
  br i1 %cmp137, label %if.then410, label %if.end140, !dbg !1125

if.end140:                                        ; preds = %if.end133
  %call141 = call fastcc float @ascii2prob(i8* %call136, float 1.000000e+00) #9, !dbg !1126
  %tbd1 = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 24, !dbg !1126
  store float %call141, float* %tbd1, align 4, !dbg !1126, !tbaa !971
  %16 = load float** %begin, align 8, !dbg !1127, !tbaa !465
  %arrayidx143 = getelementptr inbounds float* %16, i64 1, !dbg !1127
  %17 = load float* %arrayidx143, align 4, !dbg !1127, !tbaa !971
  %add = fadd float %call141, %17, !dbg !1127
  %div = fdiv float %17, %add, !dbg !1127
  store float %div, float* %arrayidx143, align 4, !dbg !1127, !tbaa !971
  %18 = load float* %tbd1, align 4, !dbg !1128, !tbaa !971
  %add153 = fadd float %18, %div, !dbg !1128
  %div154 = fdiv float %18, %add153, !dbg !1128
  store float %div154, float* %tbd1, align 4, !dbg !1128, !tbaa !971
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !397), !dbg !1129
  br label %for.body159, !dbg !1129

for.cond156:                                      ; preds = %for.body159
  %cmp157 = icmp slt i32 %inc166, 7, !dbg !1129
  br i1 %cmp157, label %for.body159, label %for.end167, !dbg !1129

for.body159:                                      ; preds = %if.end140, %for.cond156
  %x.2586 = phi i32 [ 0, %if.end140 ], [ %inc166, %for.cond156 ]
  %call160 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1131
  call void @llvm.dbg.value(metadata !{i8* %call160}, i64 0, metadata !394), !dbg !1131
  %cmp161 = icmp eq i8* %call160, null, !dbg !1131
  %inc166 = add nsw i32 %x.2586, 1, !dbg !1129
  call void @llvm.dbg.value(metadata !{i32 %inc166}, i64 0, metadata !397), !dbg !1129
  br i1 %cmp161, label %FAILURE, label %for.cond156, !dbg !1131

for.end167:                                       ; preds = %for.cond156
  %call168 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #7, !dbg !1132
  call void @llvm.dbg.value(metadata !{i8* %call168}, i64 0, metadata !394), !dbg !1132
  %cmp169 = icmp eq i8* %call168, null, !dbg !1132
  br i1 %cmp169, label %FAILURE, label %if.end172, !dbg !1132

if.end172:                                        ; preds = %for.end167
  %call173 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #7, !dbg !1133
  call void @llvm.dbg.value(metadata !{i8* %call173}, i64 0, metadata !394), !dbg !1133
  %cmp174 = icmp eq i8* %call173, null, !dbg !1133
  br i1 %cmp174, label %FAILURE, label %for.cond178.preheader, !dbg !1133

for.cond178.preheader:                            ; preds = %if.end172
  %M179 = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 20, !dbg !1134
  %19 = load i32* %M179, align 4, !dbg !1134, !tbaa !460
  %cmp180582 = icmp slt i32 %19, 1, !dbg !1134
  br i1 %cmp180582, label %for.cond363.preheader, label %for.body182.lr.ph, !dbg !1134

for.body182.lr.ph:                                ; preds = %for.cond178.preheader
  %t = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 21, !dbg !1136
  %flags342 = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 47, !dbg !1138
  %cs = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 4, !dbg !1139
  %rf = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 3, !dbg !1138
  %mat = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 22, !dbg !1140
  br label %for.body182, !dbg !1134

for.cond363.preheader:                            ; preds = %for.inc360, %for.cond178.preheader
  %20 = phi i32 [ %19, %for.cond178.preheader ], [ %55, %for.inc360 ]
  %cmp365567 = icmp slt i32 %20, 0, !dbg !1143
  br i1 %cmp365567, label %for.end402, label %for.body367.lr.ph, !dbg !1143

for.body367.lr.ph:                                ; preds = %for.cond363.preheader
  %ins = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 23, !dbg !1145
  br label %for.body367, !dbg !1143

for.body182:                                      ; preds = %for.inc360, %for.body182.lr.ph
  %indvars.iv606 = phi i64 [ %indvars.iv.next607, %for.inc360 ], [ 1, %for.body182.lr.ph ]
  %call183 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1149
  call void @llvm.dbg.value(metadata !{i8* %call183}, i64 0, metadata !394), !dbg !1149
  %cmp184 = icmp eq i8* %call183, null, !dbg !1149
  br i1 %cmp184, label %FAILURE, label %for.cond188.preheader, !dbg !1149

for.cond188.preheader:                            ; preds = %for.body182
  %21 = load i32* @Alphabet_size, align 4, !dbg !1150, !tbaa !460
  %cmp189572 = icmp sgt i32 %21, 0, !dbg !1150
  %call192573 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1151
  call void @llvm.dbg.value(metadata !{i8* %call192.lcssa}, i64 0, metadata !394), !dbg !1151
  %cmp193574 = icmp eq i8* %call192573, null, !dbg !1151
  br i1 %cmp189572, label %for.body191, label %for.end207, !dbg !1150

for.body191:                                      ; preds = %for.cond188.preheader, %if.end196
  %indvars.iv604 = phi i64 [ %indvars.iv.next605, %if.end196 ], [ 0, %for.cond188.preheader ]
  %cmp193577 = phi i1 [ %cmp193, %if.end196 ], [ %cmp193574, %for.cond188.preheader ]
  %call192576 = phi i8* [ %call192, %if.end196 ], [ %call192573, %for.cond188.preheader ]
  br i1 %cmp193577, label %FAILURE, label %if.end196, !dbg !1151

if.end196:                                        ; preds = %for.body191
  %arrayidx199 = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 28, i64 %indvars.iv604, !dbg !1140
  %22 = load float* %arrayidx199, align 4, !dbg !1140, !tbaa !971
  %call200 = call fastcc float @ascii2prob(i8* %call192576, float %22) #9, !dbg !1140
  %23 = load float*** %mat, align 8, !dbg !1140, !tbaa !465
  %arrayidx203 = getelementptr inbounds float** %23, i64 %indvars.iv606, !dbg !1140
  %24 = load float** %arrayidx203, align 8, !dbg !1140, !tbaa !465
  %arrayidx204 = getelementptr inbounds float* %24, i64 %indvars.iv604, !dbg !1140
  store float %call200, float* %arrayidx204, align 4, !dbg !1140, !tbaa !971
  %indvars.iv.next605 = add i64 %indvars.iv604, 1, !dbg !1150
  %25 = load i32* @Alphabet_size, align 4, !dbg !1150, !tbaa !460
  %26 = trunc i64 %indvars.iv.next605 to i32, !dbg !1150
  %cmp189 = icmp slt i32 %26, %25, !dbg !1150
  %call192 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1151
  call void @llvm.dbg.value(metadata !{i8* %call192.lcssa}, i64 0, metadata !394), !dbg !1151
  %cmp193 = icmp eq i8* %call192, null, !dbg !1151
  br i1 %cmp189, label %for.body191, label %for.end207, !dbg !1150

for.end207:                                       ; preds = %if.end196, %for.cond188.preheader
  %cmp193.lcssa = phi i1 [ %cmp193574, %for.cond188.preheader ], [ %cmp193, %if.end196 ]
  %call192.lcssa = phi i8* [ %call192573, %for.cond188.preheader ], [ %call192, %if.end196 ]
  br i1 %cmp193.lcssa, label %FAILURE, label %if.end212, !dbg !1152

if.end212:                                        ; preds = %for.end207
  %27 = load i32* %M179, align 4, !dbg !1136, !tbaa !460
  %28 = trunc i64 %indvars.iv606 to i32, !dbg !1136
  %cmp214 = icmp slt i32 %28, %27, !dbg !1136
  br i1 %cmp214, label %if.then216, label %if.end221, !dbg !1136

if.then216:                                       ; preds = %if.end212
  %call217 = call fastcc float @ascii2prob(i8* %call192.lcssa, float 1.000000e+00) #9, !dbg !1136
  %29 = load float*** %t, align 8, !dbg !1136, !tbaa !465
  %arrayidx219 = getelementptr inbounds float** %29, i64 %indvars.iv606, !dbg !1136
  %30 = load float** %arrayidx219, align 8, !dbg !1136, !tbaa !465
  store float %call217, float* %30, align 4, !dbg !1136, !tbaa !971
  br label %if.end221, !dbg !1136

if.end221:                                        ; preds = %if.then216, %if.end212
  %call222 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1153
  call void @llvm.dbg.value(metadata !{i8* %call222}, i64 0, metadata !394), !dbg !1153
  %cmp223 = icmp eq i8* %call222, null, !dbg !1153
  br i1 %cmp223, label %FAILURE, label %if.end226, !dbg !1153

if.end226:                                        ; preds = %if.end221
  %31 = load i32* %M179, align 4, !dbg !1154, !tbaa !460
  %cmp228 = icmp slt i32 %28, %31, !dbg !1154
  br i1 %cmp228, label %if.then230, label %if.end242, !dbg !1154

if.then230:                                       ; preds = %if.end226
  %cmp232 = icmp eq i32 %28, %31, !dbg !1154
  br i1 %cmp232, label %cond.end, label %cond.false, !dbg !1154

cond.false:                                       ; preds = %if.then230
  %call234 = call fastcc float @ascii2prob(i8* %call222, float 1.000000e+00) #9, !dbg !1154
  br label %cond.end, !dbg !1154

cond.end:                                         ; preds = %if.then230, %cond.false
  %cond236 = phi float [ %call234, %cond.false ], [ 0.000000e+00, %if.then230 ]
  %32 = load float*** %t, align 8, !dbg !1154, !tbaa !465
  %arrayidx240 = getelementptr inbounds float** %32, i64 %indvars.iv606, !dbg !1154
  %33 = load float** %arrayidx240, align 8, !dbg !1154, !tbaa !465
  %arrayidx241 = getelementptr inbounds float* %33, i64 2, !dbg !1154
  store float %cond236, float* %arrayidx241, align 4, !dbg !1154, !tbaa !971
  br label %if.end242, !dbg !1154

if.end242:                                        ; preds = %cond.end, %if.end226
  %call243 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1155
  call void @llvm.dbg.value(metadata !{i8* %call243}, i64 0, metadata !394), !dbg !1155
  %cmp244 = icmp eq i8* %call243, null, !dbg !1155
  br i1 %cmp244, label %FAILURE, label %if.end247, !dbg !1155

if.end247:                                        ; preds = %if.end242
  %34 = load i32* %M179, align 4, !dbg !1156, !tbaa !460
  %cmp249 = icmp slt i32 %28, %34, !dbg !1156
  br i1 %cmp249, label %if.then251, label %if.end257, !dbg !1156

if.then251:                                       ; preds = %if.end247
  %call252 = call fastcc float @ascii2prob(i8* %call243, float 1.000000e+00) #9, !dbg !1156
  %35 = load float*** %t, align 8, !dbg !1156, !tbaa !465
  %arrayidx255 = getelementptr inbounds float** %35, i64 %indvars.iv606, !dbg !1156
  %36 = load float** %arrayidx255, align 8, !dbg !1156, !tbaa !465
  %arrayidx256 = getelementptr inbounds float* %36, i64 1, !dbg !1156
  store float %call252, float* %arrayidx256, align 4, !dbg !1156, !tbaa !971
  br label %if.end257, !dbg !1156

if.end257:                                        ; preds = %if.then251, %if.end247
  %call258 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1157
  call void @llvm.dbg.value(metadata !{i8* %call258}, i64 0, metadata !394), !dbg !1157
  %cmp259 = icmp eq i8* %call258, null, !dbg !1157
  br i1 %cmp259, label %FAILURE, label %if.end262, !dbg !1157

if.end262:                                        ; preds = %if.end257
  %37 = load i32* %M179, align 4, !dbg !1158, !tbaa !460
  %cmp264 = icmp slt i32 %28, %37, !dbg !1158
  br i1 %cmp264, label %if.then266, label %if.end272, !dbg !1158

if.then266:                                       ; preds = %if.end262
  %call267 = call fastcc float @ascii2prob(i8* %call258, float 1.000000e+00) #9, !dbg !1158
  %38 = load float*** %t, align 8, !dbg !1158, !tbaa !465
  %arrayidx270 = getelementptr inbounds float** %38, i64 %indvars.iv606, !dbg !1158
  %39 = load float** %arrayidx270, align 8, !dbg !1158, !tbaa !465
  %arrayidx271 = getelementptr inbounds float* %39, i64 5, !dbg !1158
  store float %call267, float* %arrayidx271, align 4, !dbg !1158, !tbaa !971
  br label %if.end272, !dbg !1158

if.end272:                                        ; preds = %if.then266, %if.end262
  %call273 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1159
  call void @llvm.dbg.value(metadata !{i8* %call273}, i64 0, metadata !394), !dbg !1159
  %cmp274 = icmp eq i8* %call273, null, !dbg !1159
  br i1 %cmp274, label %FAILURE, label %if.end277, !dbg !1159

if.end277:                                        ; preds = %if.end272
  %40 = load i32* %M179, align 4, !dbg !1160, !tbaa !460
  %cmp279 = icmp slt i32 %28, %40, !dbg !1160
  br i1 %cmp279, label %if.then281, label %if.end296, !dbg !1160

if.then281:                                       ; preds = %if.end277
  %cmp283 = icmp eq i32 %28, %40, !dbg !1160
  br i1 %cmp283, label %cond.end289, label %cond.false286, !dbg !1160

cond.false286:                                    ; preds = %if.then281
  %call287 = call fastcc float @ascii2prob(i8* %call273, float 1.000000e+00) #9, !dbg !1160
  br label %cond.end289, !dbg !1160

cond.end289:                                      ; preds = %if.then281, %cond.false286
  %cond290 = phi float [ %call287, %cond.false286 ], [ 0.000000e+00, %if.then281 ]
  %41 = load float*** %t, align 8, !dbg !1160, !tbaa !465
  %arrayidx294 = getelementptr inbounds float** %41, i64 %indvars.iv606, !dbg !1160
  %42 = load float** %arrayidx294, align 8, !dbg !1160, !tbaa !465
  %arrayidx295 = getelementptr inbounds float* %42, i64 6, !dbg !1160
  store float %cond290, float* %arrayidx295, align 4, !dbg !1160, !tbaa !971
  br label %if.end296, !dbg !1160

if.end296:                                        ; preds = %cond.end289, %if.end277
  %call297 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1161
  call void @llvm.dbg.value(metadata !{i8* %call297}, i64 0, metadata !394), !dbg !1161
  %cmp298 = icmp eq i8* %call297, null, !dbg !1161
  br i1 %cmp298, label %FAILURE, label %if.end301, !dbg !1161

if.end301:                                        ; preds = %if.end296
  %call302 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1162
  call void @llvm.dbg.value(metadata !{i8* %call302}, i64 0, metadata !394), !dbg !1162
  %cmp303 = icmp eq i8* %call302, null, !dbg !1162
  br i1 %cmp303, label %FAILURE, label %if.end306, !dbg !1162

if.end306:                                        ; preds = %if.end301
  %43 = load i32* %M179, align 4, !dbg !1163, !tbaa !460
  %cmp308 = icmp slt i32 %28, %43, !dbg !1163
  br i1 %cmp308, label %if.then310, label %if.end316, !dbg !1163

if.then310:                                       ; preds = %if.end306
  %call311 = call fastcc float @ascii2prob(i8* %call302, float 1.000000e+00) #9, !dbg !1163
  %44 = load float*** %t, align 8, !dbg !1163, !tbaa !465
  %arrayidx314 = getelementptr inbounds float** %44, i64 %indvars.iv606, !dbg !1163
  %45 = load float** %arrayidx314, align 8, !dbg !1163, !tbaa !465
  %arrayidx315 = getelementptr inbounds float* %45, i64 3, !dbg !1163
  store float %call311, float* %arrayidx315, align 4, !dbg !1163, !tbaa !971
  br label %if.end316, !dbg !1163

if.end316:                                        ; preds = %if.then310, %if.end306
  %call317 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1164
  call void @llvm.dbg.value(metadata !{i8* %call317}, i64 0, metadata !394), !dbg !1164
  %cmp318 = icmp eq i8* %call317, null, !dbg !1164
  br i1 %cmp318, label %FAILURE, label %if.end321, !dbg !1164

if.end321:                                        ; preds = %if.end316
  %call322 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1165
  call void @llvm.dbg.value(metadata !{i8* %call322}, i64 0, metadata !394), !dbg !1165
  %cmp323 = icmp eq i8* %call322, null, !dbg !1165
  br i1 %cmp323, label %FAILURE, label %if.end326, !dbg !1165

if.end326:                                        ; preds = %if.end321
  %46 = load i32* %M179, align 4, !dbg !1166, !tbaa !460
  %cmp328 = icmp slt i32 %28, %46, !dbg !1166
  br i1 %cmp328, label %if.then330, label %if.end336, !dbg !1166

if.then330:                                       ; preds = %if.end326
  %call331 = call fastcc float @ascii2prob(i8* %call322, float 1.000000e+00) #9, !dbg !1166
  %47 = load float*** %t, align 8, !dbg !1166, !tbaa !465
  %arrayidx334 = getelementptr inbounds float** %47, i64 %indvars.iv606, !dbg !1166
  %48 = load float** %arrayidx334, align 8, !dbg !1166, !tbaa !465
  %arrayidx335 = getelementptr inbounds float* %48, i64 4, !dbg !1166
  store float %call331, float* %arrayidx335, align 4, !dbg !1166, !tbaa !971
  br label %if.end336, !dbg !1166

if.end336:                                        ; preds = %if.then330, %if.end326
  %call337 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #7, !dbg !1167
  call void @llvm.dbg.value(metadata !{i8* %call337}, i64 0, metadata !394), !dbg !1167
  %cmp338 = icmp eq i8* %call337, null, !dbg !1167
  br i1 %cmp338, label %FAILURE, label %if.end341, !dbg !1167

if.end341:                                        ; preds = %if.end336
  %49 = load i32* %flags342, align 4, !dbg !1138, !tbaa !460
  %and = and i32 %49, 4, !dbg !1138
  %tobool343 = icmp eq i32 %and, 0, !dbg !1138
  br i1 %tobool343, label %if.end347, label %if.then344, !dbg !1138

if.then344:                                       ; preds = %if.end341
  %50 = load i8* %call337, align 1, !dbg !1138, !tbaa !461
  %51 = load i8** %rf, align 8, !dbg !1138, !tbaa !465
  %arrayidx346 = getelementptr inbounds i8* %51, i64 %indvars.iv606, !dbg !1138
  store i8 %50, i8* %arrayidx346, align 1, !dbg !1138, !tbaa !461
  br label %if.end347, !dbg !1138

if.end347:                                        ; preds = %if.end341, %if.then344
  %call348 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #7, !dbg !1168
  call void @llvm.dbg.value(metadata !{i8* %call348}, i64 0, metadata !394), !dbg !1168
  %cmp349 = icmp eq i8* %call348, null, !dbg !1168
  br i1 %cmp349, label %FAILURE, label %if.end352, !dbg !1168

if.end352:                                        ; preds = %if.end347
  %52 = load i32* %flags342, align 4, !dbg !1139, !tbaa !460
  %and354 = and i32 %52, 8, !dbg !1139
  %tobool355 = icmp eq i32 %and354, 0, !dbg !1139
  br i1 %tobool355, label %for.inc360, label %if.then356, !dbg !1139

if.then356:                                       ; preds = %if.end352
  %53 = load i8* %call348, align 1, !dbg !1139, !tbaa !461
  %54 = load i8** %cs, align 8, !dbg !1139, !tbaa !465
  %arrayidx358 = getelementptr inbounds i8* %54, i64 %indvars.iv606, !dbg !1139
  store i8 %53, i8* %arrayidx358, align 1, !dbg !1139, !tbaa !461
  br label %for.inc360, !dbg !1139

for.inc360:                                       ; preds = %if.end352, %if.then356
  %indvars.iv.next607 = add i64 %indvars.iv606, 1, !dbg !1134
  %55 = load i32* %M179, align 4, !dbg !1134, !tbaa !460
  %cmp180 = icmp slt i32 %28, %55, !dbg !1134
  br i1 %cmp180, label %for.body182, label %for.cond363.preheader, !dbg !1134

for.body367:                                      ; preds = %for.inc400, %for.body367.lr.ph
  %indvars.iv600 = phi i64 [ %indvars.iv.next601, %for.inc400 ], [ 0, %for.body367.lr.ph ]
  %call368 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1169
  call void @llvm.dbg.value(metadata !{i8* %call368}, i64 0, metadata !394), !dbg !1169
  %cmp369 = icmp eq i8* %call368, null, !dbg !1169
  br i1 %cmp369, label %FAILURE, label %for.cond373.preheader, !dbg !1169

for.cond373.preheader:                            ; preds = %for.body367
  %56 = load i32* @Alphabet_size, align 4, !dbg !1170, !tbaa !460
  %cmp374564 = icmp sgt i32 %56, 0, !dbg !1170
  %57 = trunc i64 %indvars.iv600 to i32, !dbg !1171
  br i1 %cmp374564, label %for.body376.lr.ph, label %for.inc400, !dbg !1170

for.body376.lr.ph:                                ; preds = %for.cond373.preheader
  %cmp382 = icmp sgt i32 %57, 0, !dbg !1171
  br label %for.body376, !dbg !1170

for.body376:                                      ; preds = %for.body376.lr.ph, %for.inc397
  %indvars.iv = phi i64 [ 0, %for.body376.lr.ph ], [ %indvars.iv.next, %for.inc397 ]
  %call377 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #7, !dbg !1172
  call void @llvm.dbg.value(metadata !{i8* %call377}, i64 0, metadata !394), !dbg !1172
  %cmp378 = icmp eq i8* %call377, null, !dbg !1172
  br i1 %cmp378, label %FAILURE, label %if.end381, !dbg !1172

if.end381:                                        ; preds = %for.body376
  br i1 %cmp382, label %land.lhs.true, label %for.inc397, !dbg !1171

land.lhs.true:                                    ; preds = %if.end381
  %58 = load i32* %M179, align 4, !dbg !1171, !tbaa !460
  %cmp385 = icmp slt i32 %57, %58, !dbg !1171
  br i1 %cmp385, label %if.then387, label %for.inc397, !dbg !1171

if.then387:                                       ; preds = %land.lhs.true
  %arrayidx390 = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 28, i64 %indvars.iv, !dbg !1145
  %59 = load float* %arrayidx390, align 4, !dbg !1145, !tbaa !971
  %call391 = call fastcc float @ascii2prob(i8* %call377, float %59) #9, !dbg !1145
  %60 = load float*** %ins, align 8, !dbg !1145, !tbaa !465
  %arrayidx394 = getelementptr inbounds float** %60, i64 %indvars.iv600, !dbg !1145
  %61 = load float** %arrayidx394, align 8, !dbg !1145, !tbaa !465
  %arrayidx395 = getelementptr inbounds float* %61, i64 %indvars.iv, !dbg !1145
  store float %call391, float* %arrayidx395, align 4, !dbg !1145, !tbaa !971
  br label %for.inc397, !dbg !1145

for.inc397:                                       ; preds = %if.end381, %land.lhs.true, %if.then387
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1170
  %62 = load i32* @Alphabet_size, align 4, !dbg !1170, !tbaa !460
  %63 = trunc i64 %indvars.iv.next to i32, !dbg !1170
  %cmp374 = icmp slt i32 %63, %62, !dbg !1170
  br i1 %cmp374, label %for.body376, label %for.inc400, !dbg !1170

for.inc400:                                       ; preds = %for.cond373.preheader, %for.inc397
  %indvars.iv.next601 = add i64 %indvars.iv600, 1, !dbg !1143
  %64 = load i32* %M179, align 4, !dbg !1143, !tbaa !460
  %cmp365 = icmp slt i32 %57, %64, !dbg !1143
  br i1 %cmp365, label %for.body367, label %for.end402, !dbg !1143

for.end402:                                       ; preds = %for.inc400, %for.cond363.preheader
  %flags403 = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 47, !dbg !1173
  %65 = load i32* %flags403, align 4, !dbg !1173, !tbaa !460
  %or404 = and i32 %65, -34, !dbg !1174
  %and406 = or i32 %or404, 32, !dbg !1174
  store i32 %and406, i32* %flags403, align 4, !dbg !1174, !tbaa !460
  call void @Plan7Renormalize(%struct.plan7_s* %call7) #7, !dbg !1175
  %call407 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8]* @.str59, i64 0, i64 0)) #7, !dbg !1176
  %comlog = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 6, !dbg !1176
  store i8* %call407, i8** %comlog, align 8, !dbg !1176, !tbaa !465
  call void @Plan7SetCtime(%struct.plan7_s* %call7) #7, !dbg !1177
  store %struct.plan7_s* %call7, %struct.plan7_s** %ret_hmm, align 8, !dbg !1178, !tbaa !465
  br label %cleanup, !dbg !1179

FAILURE:                                          ; preds = %for.body, %for.body120, %for.body159, %if.end347, %if.end336, %if.end321, %if.end316, %if.end301, %if.end296, %if.end272, %if.end257, %if.end242, %if.end221, %for.end207, %for.body182, %for.body191, %for.body367, %for.body376, %if.end78, %if.end46, %if.end172, %for.end167, %for.end128, %if.end73, %if.end61, %if.end51, %if.end42, %if.else, %if.end20, %if.end16, %if.end11, %if.end6
  %cmp408 = icmp eq %struct.plan7_s* %call7, null, !dbg !1180
  br i1 %cmp408, label %if.end411, label %if.then410, !dbg !1180

if.then410:                                       ; preds = %if.end133, %if.end111, %if.end103, %for.end, %FAILURE
  call void @FreePlan7(%struct.plan7_s* %call7) #7, !dbg !1180
  br label %if.end411, !dbg !1180

if.end411:                                        ; preds = %if.end, %FAILURE, %if.then410
  store %struct.plan7_s* null, %struct.plan7_s** %ret_hmm, align 8, !dbg !1181, !tbaa !465
  br label %cleanup, !dbg !1182

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end411, %for.end402
  %retval.0 = phi i32 [ 1, %if.end411 ], [ 1, %for.end402 ], [ 0, %entry ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end(i64 512, i8* %0) #2, !dbg !1182
  ret i32 %retval.0, !dbg !1183
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_asc17hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  %buffer.i = alloca [512 x i8], align 16
  %hmm = alloca %struct.plan7_s*, align 8
  %buffer = alloca [512 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %hmmfp}, i64 0, metadata !360), !dbg !1184
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %ret_hmm}, i64 0, metadata !361), !dbg !1184
  call void @llvm.dbg.declare(metadata !{%struct.plan7_s** %hmm}, metadata !362), !dbg !1185
  %0 = getelementptr inbounds [512 x i8]* %buffer, i64 0, i64 0, !dbg !1186
  call void @llvm.lifetime.start(i64 512, i8* %0) #2, !dbg !1186
  call void @llvm.dbg.declare(metadata !{[512 x i8]* %buffer}, metadata !364), !dbg !1186
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0, !dbg !1187
  %1 = load %struct._IO_FILE** %f, align 8, !dbg !1187, !tbaa !465
  %call = call i32 @feof(%struct._IO_FILE* %1) #7, !dbg !1187
  %tobool = icmp eq i32 %call, 0, !dbg !1187
  br i1 %tobool, label %lor.lhs.false, label %cleanup, !dbg !1187

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._IO_FILE** %f, align 8, !dbg !1187, !tbaa !465
  %call2 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %2) #7, !dbg !1187
  %cmp = icmp eq i8* %call2, null, !dbg !1187
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1187

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._IO_FILE** %f, align 8, !dbg !1188, !tbaa !465
  call void @llvm.dbg.value(metadata !1189, i64 0, metadata !1190) #2, !dbg !1191
  %4 = getelementptr inbounds [512 x i8]* %buffer.i, i64 0, i64 0, !dbg !1192
  call void @llvm.lifetime.start(i64 512, i8* %4) #2, !dbg !1192
  call void @llvm.dbg.declare(metadata !{[512 x i8]* %buffer.i}, metadata !373) #2, !dbg !1192
  %call.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1193
  %cmp.i = icmp eq i8* %call.i, null, !dbg !1193
  br i1 %cmp.i, label %if.then6, label %if.end.i, !dbg !1193

if.end.i:                                         ; preds = %if.end
  %call2.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1194
  call void @llvm.dbg.value(metadata !{i8* %call2.i}, i64 0, metadata !1195) #2, !dbg !1194
  %cmp3.i = icmp eq i8* %call2.i, null, !dbg !1194
  br i1 %cmp3.i, label %if.then6, label %if.end5.i, !dbg !1194

if.end5.i:                                        ; preds = %if.end.i
  %5 = load i8* %call2.i, align 1, !dbg !1196, !tbaa !461
  %idxprom.i = sext i8 %5 to i64, !dbg !1196
  %call6.i = call i16** @__ctype_b_loc() #10, !dbg !1196
  %6 = load i16** %call6.i, align 8, !dbg !1196, !tbaa !465
  %arrayidx.i = getelementptr inbounds i16* %6, i64 %idxprom.i, !dbg !1196
  %7 = load i16* %arrayidx.i, align 2, !dbg !1196, !tbaa !1197
  %and.i = and i16 %7, 2048, !dbg !1196
  %tobool.i = icmp eq i16 %and.i, 0, !dbg !1196
  br i1 %tobool.i, label %if.then6, label %if.end9.i, !dbg !1196

if.end9.i:                                        ; preds = %if.end5.i
  %call10.i = call i32 @atoi(i8* %call2.i) #8, !dbg !1198
  call void @llvm.dbg.value(metadata !{i32 %call10.i}, i64 0, metadata !1199) #2, !dbg !1198
  %call12.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1200
  %cmp13.i = icmp eq i8* %call12.i, null, !dbg !1200
  br i1 %cmp13.i, label %if.then6, label %if.end16.i, !dbg !1200

if.end16.i:                                       ; preds = %if.end9.i
  %call18.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1201
  call void @llvm.dbg.value(metadata !{i8* %call18.i}, i64 0, metadata !1195) #2, !dbg !1201
  %cmp19.i = icmp eq i8* %call18.i, null, !dbg !1201
  br i1 %cmp19.i, label %if.then6, label %if.end22.i, !dbg !1201

if.end22.i:                                       ; preds = %if.end16.i
  %8 = load i8* %call18.i, align 1, !dbg !1202, !tbaa !461
  %idxprom24.i = sext i8 %8 to i64, !dbg !1202
  %9 = load i16** %call6.i, align 8, !dbg !1202, !tbaa !465
  %arrayidx26.i = getelementptr inbounds i16* %9, i64 %idxprom24.i, !dbg !1202
  %10 = load i16* %arrayidx26.i, align 2, !dbg !1202, !tbaa !1197
  %and28.i = and i16 %10, 2048, !dbg !1202
  %tobool29.i = icmp eq i16 %and28.i, 0, !dbg !1202
  br i1 %tobool29.i, label %if.then6, label %if.end31.i, !dbg !1202

if.end31.i:                                       ; preds = %if.end22.i
  %call32.i = call i32 @atoi(i8* %call18.i) #8, !dbg !1203
  call void @llvm.dbg.value(metadata !{i32 %call32.i}, i64 0, metadata !1204) #2, !dbg !1203
  switch i32 %call32.i, label %if.else39.i [
    i32 4, label %if.end41.i
    i32 20, label %if.then38.i
  ], !dbg !1205

if.then38.i:                                      ; preds = %if.end31.i
  call void @llvm.dbg.value(metadata !1206, i64 0, metadata !1207) #2, !dbg !1208
  br label %if.end41.i, !dbg !1208

if.else39.i:                                      ; preds = %if.end31.i
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([71 x i8]* @.str60, i64 0, i64 0), i32 %call32.i) #7, !dbg !1209
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else39.i, %if.then38.i, %if.end31.i
  %atype.0.i = phi i32 [ 3, %if.then38.i ], [ undef, %if.else39.i ], [ 2, %if.end31.i ]
  %11 = load i32* @Alphabet_type, align 4, !dbg !1210, !tbaa !460
  %cmp42.i = icmp eq i32 %11, 0, !dbg !1210
  br i1 %cmp42.i, label %if.then44.i, label %if.else45.i, !dbg !1210

if.then44.i:                                      ; preds = %if.end41.i
  call void @SetAlphabet(i32 %atype.0.i) #7, !dbg !1210
  br label %if.end52.i, !dbg !1210

if.else45.i:                                      ; preds = %if.end41.i
  %cmp46.i = icmp eq i32 %atype.0.i, %11, !dbg !1211
  br i1 %cmp46.i, label %if.end52.i, label %if.then48.i, !dbg !1211

if.then48.i:                                      ; preds = %if.else45.i
  %call49.i = call i8* @AlphabetType2String(i32 %11) #7, !dbg !1212
  %call50.i = call i8* @AlphabetType2String(i32 %atype.0.i) #7, !dbg !1212
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([89 x i8]* @.str61, i64 0, i64 0), i8* %call49.i, i8* %call50.i) #7, !dbg !1212
  br label %if.end52.i, !dbg !1212

if.end52.i:                                       ; preds = %if.then48.i, %if.else45.i, %if.then44.i
  %call53.i = call %struct.plan9_s* @P9AllocHMM(i32 %call10.i) #7, !dbg !1213
  call void @llvm.dbg.value(metadata !{%struct.plan9_s* %call53.i}, i64 0, metadata !1214) #2, !dbg !1213
  %cmp54.i = icmp eq %struct.plan9_s* %call53.i, null, !dbg !1213
  br i1 %cmp54.i, label %if.then56.i, label %if.end57.i, !dbg !1213

if.then56.i:                                      ; preds = %if.end52.i
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([34 x i8]* @.str62, i64 0, i64 0)) #7, !dbg !1215
  br label %if.end57.i, !dbg !1215

if.end57.i:                                       ; preds = %if.then56.i, %if.end52.i
  %call59.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1216
  %cmp60.i = icmp eq i8* %call59.i, null, !dbg !1216
  br i1 %cmp60.i, label %if.then6, label %if.end63.i, !dbg !1216

if.end63.i:                                       ; preds = %if.end57.i
  %call65.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1217
  call void @llvm.dbg.value(metadata !{i8* %call65.i}, i64 0, metadata !1195) #2, !dbg !1217
  %cmp66.i = icmp eq i8* %call65.i, null, !dbg !1217
  br i1 %cmp66.i, label %if.then6, label %if.end69.i, !dbg !1217

if.end69.i:                                       ; preds = %if.end63.i
  %12 = load i8* %call65.i, align 1, !dbg !1218, !tbaa !461
  %idxprom71.i = sext i8 %12 to i64, !dbg !1218
  %13 = load i16** %call6.i, align 8, !dbg !1218, !tbaa !465
  %arrayidx73.i = getelementptr inbounds i16* %13, i64 %idxprom71.i, !dbg !1218
  %14 = load i16* %arrayidx73.i, align 2, !dbg !1218, !tbaa !1197
  %and75.i = and i16 %14, 2048, !dbg !1218
  %tobool76.i = icmp eq i16 %and75.i, 0, !dbg !1218
  br i1 %tobool76.i, label %if.then6, label %if.end78.i, !dbg !1218

if.end78.i:                                       ; preds = %if.end69.i
  %call80.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1219
  %cmp81.i = icmp eq i8* %call80.i, null, !dbg !1219
  br i1 %cmp81.i, label %if.then6, label %if.end84.i, !dbg !1219

if.end84.i:                                       ; preds = %if.end78.i
  %call86.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1220
  call void @llvm.dbg.value(metadata !{i8* %call86.i}, i64 0, metadata !1195) #2, !dbg !1220
  %cmp87.i = icmp eq i8* %call86.i, null, !dbg !1220
  br i1 %cmp87.i, label %if.then6, label %if.then105.i, !dbg !1220

if.then105.i:                                     ; preds = %if.end84.i
  %call107.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1221
  %cmp108.i = icmp eq i8* %call107.i, null, !dbg !1221
  br i1 %cmp108.i, label %if.then6, label %if.end111.i, !dbg !1221

if.end111.i:                                      ; preds = %if.then105.i
  %call113.i = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i64 3) #8, !dbg !1223
  %cmp114.i = icmp eq i32 %call113.i, 0, !dbg !1223
  br i1 %cmp114.i, label %if.then116.i, label %if.end117.i, !dbg !1223

if.then116.i:                                     ; preds = %if.end111.i
  %flags.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 9, !dbg !1223
  %15 = load i32* %flags.i, align 4, !dbg !1223, !tbaa !460
  %or.i = or i32 %15, 1, !dbg !1223
  store i32 %or.i, i32* %flags.i, align 4, !dbg !1223, !tbaa !460
  br label %if.end117.i, !dbg !1223

if.end117.i:                                      ; preds = %if.then116.i, %if.end111.i
  %call119.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1224
  %cmp120.i = icmp eq i8* %call119.i, null, !dbg !1224
  br i1 %cmp120.i, label %if.then6, label %if.end123.i, !dbg !1224

if.end123.i:                                      ; preds = %if.end117.i
  %call125.i = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i64 3) #8, !dbg !1225
  %cmp126.i = icmp eq i32 %call125.i, 0, !dbg !1225
  br i1 %cmp126.i, label %if.then128.i, label %while.cond.preheader.i, !dbg !1225

if.then128.i:                                     ; preds = %if.end123.i
  %flags129.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 9, !dbg !1225
  %16 = load i32* %flags129.i, align 4, !dbg !1225, !tbaa !460
  %or130.i = or i32 %16, 2, !dbg !1225
  store i32 %or130.i, i32* %flags129.i, align 4, !dbg !1225, !tbaa !460
  br label %while.cond.preheader.i, !dbg !1225

while.cond.preheader.i:                           ; preds = %if.then128.i, %if.end123.i
  %call1348.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1226
  %cmp1359.i = icmp eq i8* %call1348.i, null, !dbg !1226
  br i1 %cmp1359.i, label %read_plan9_aschmm.exit, label %while.body.lr.ph.i, !dbg !1226

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %M160.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 0, !dbg !1227
  %ref.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 6, !dbg !1229
  %cs.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 7, !dbg !1232
  %mat.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 2, !dbg !1233
  %ins.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 1, !dbg !1234
  %del.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 3, !dbg !1236
  br label %while.body.i, !dbg !1226

while.body.i:                                     ; preds = %while.cond.backedge.i, %while.body.lr.ph.i
  %call138.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1238
  call void @llvm.dbg.value(metadata !{i8* %call138.i}, i64 0, metadata !1239) #2, !dbg !1238
  %cmp139.i = icmp eq i8* %call138.i, null, !dbg !1238
  br i1 %cmp139.i, label %if.then6, label %if.end142.i, !dbg !1238

if.end142.i:                                      ; preds = %while.body.i
  %call143.i = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1240
  call void @llvm.dbg.value(metadata !{i8* %call143.i}, i64 0, metadata !1195) #2, !dbg !1240
  %cmp144.i = icmp eq i8* %call143.i, null, !dbg !1240
  br i1 %cmp144.i, label %if.then6, label %if.end147.i, !dbg !1240

if.end147.i:                                      ; preds = %if.end142.i
  %17 = load i8* %call143.i, align 1, !dbg !1241, !tbaa !461
  %idxprom149.i = sext i8 %17 to i64, !dbg !1241
  %18 = load i16** %call6.i, align 8, !dbg !1241, !tbaa !465
  %arrayidx151.i = getelementptr inbounds i16* %18, i64 %idxprom149.i, !dbg !1241
  %19 = load i16* %arrayidx151.i, align 2, !dbg !1241, !tbaa !1197
  %and153.i = and i16 %19, 2048, !dbg !1241
  %tobool154.i = icmp eq i16 %and153.i, 0, !dbg !1241
  br i1 %tobool154.i, label %if.then6, label %if.end156.i, !dbg !1241

if.end156.i:                                      ; preds = %if.end147.i
  %call157.i = call i32 @atoi(i8* %call143.i) #8, !dbg !1242
  call void @llvm.dbg.value(metadata !{i32 %call157.i}, i64 0, metadata !1243) #2, !dbg !1242
  %cmp158.i = icmp slt i32 %call157.i, 0, !dbg !1227
  br i1 %cmp158.i, label %if.then6, label %lor.lhs.false.i, !dbg !1227

lor.lhs.false.i:                                  ; preds = %if.end156.i
  %20 = load i32* %M160.i, align 4, !dbg !1227, !tbaa !460
  %add.i = add nsw i32 %20, 1, !dbg !1227
  %cmp161.i = icmp sgt i32 %call157.i, %add.i, !dbg !1227
  br i1 %cmp161.i, label %if.then6, label %if.end164.i, !dbg !1227

if.end164.i:                                      ; preds = %lor.lhs.false.i
  %call165.i = call i32 @strcmp(i8* %call138.i, i8* getelementptr inbounds ([15 x i8]* @.str66, i64 0, i64 0)) #8, !dbg !1244
  %cmp166.i = icmp eq i32 %call165.i, 0, !dbg !1244
  br i1 %cmp166.i, label %if.then171.i, label %if.else308.i, !dbg !1244

if.then171.i:                                     ; preds = %if.end164.i
  %call172.i = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str34, i64 0, i64 0)) #7, !dbg !1245
  call void @llvm.dbg.value(metadata !{i8* %call172.i}, i64 0, metadata !1195) #2, !dbg !1245
  br label %while.cond173.i, !dbg !1246

while.cond173.i:                                  ; preds = %while.cond173.i, %if.then171.i
  %s.0.i = phi i8* [ %call172.i, %if.then171.i ], [ %incdec.ptr.i, %while.cond173.i ]
  %21 = load i8* %s.0.i, align 1, !dbg !1246, !tbaa !461
  %cmp175.i = icmp eq i8 %21, 40, !dbg !1246
  %cmp178.i = icmp ne i8 %21, 0, !dbg !1246
  %not.cmp175.i = xor i1 %cmp175.i, true, !dbg !1246
  %.cmp178.i = and i1 %cmp178.i, %not.cmp175.i, !dbg !1246
  %incdec.ptr.i = getelementptr inbounds i8* %s.0.i, i64 1, !dbg !1246
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !1195) #2, !dbg !1246
  br i1 %.cmp178.i, label %while.cond173.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond173.i
  br i1 %cmp175.i, label %if.end185.i, label %if.then6, !dbg !1247

if.end185.i:                                      ; preds = %while.end.i
  %22 = load i8* %incdec.ptr.i, align 1, !dbg !1229, !tbaa !461
  %idxprom186.i = sext i32 %call157.i to i64, !dbg !1229
  %23 = load i8** %ref.i, align 8, !dbg !1229, !tbaa !465
  %arrayidx187.i = getelementptr inbounds i8* %23, i64 %idxprom186.i, !dbg !1229
  store i8 %22, i8* %arrayidx187.i, align 1, !dbg !1229, !tbaa !461
  br label %while.cond188.i, !dbg !1248

while.cond188.i:                                  ; preds = %while.cond188.i, %if.end185.i
  %s.1.i = phi i8* [ %s.0.i, %if.end185.i ], [ %incdec.ptr198.i, %while.cond188.i ]
  %24 = load i8* %s.1.i, align 1, !dbg !1248, !tbaa !461
  %cmp190.i = icmp eq i8 %24, 40, !dbg !1248
  %cmp194.i = icmp ne i8 %24, 0, !dbg !1248
  %not.cmp190.i = xor i1 %cmp190.i, true, !dbg !1248
  %.cmp194.i = and i1 %cmp194.i, %not.cmp190.i, !dbg !1248
  %incdec.ptr198.i = getelementptr inbounds i8* %s.1.i, i64 1, !dbg !1248
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr198.i}, i64 0, metadata !1195) #2, !dbg !1248
  br i1 %.cmp194.i, label %while.cond188.i, label %while.end199.i

while.end199.i:                                   ; preds = %while.cond188.i
  br i1 %cmp190.i, label %if.end204.i, label %if.then6, !dbg !1249

if.end204.i:                                      ; preds = %while.end199.i
  %25 = load i8* %incdec.ptr198.i, align 1, !dbg !1232, !tbaa !461
  %26 = load i8** %cs.i, align 8, !dbg !1232, !tbaa !465
  %arrayidx207.i = getelementptr inbounds i8* %26, i64 %idxprom186.i, !dbg !1232
  store i8 %25, i8* %arrayidx207.i, align 1, !dbg !1232, !tbaa !461
  %call210.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1250
  %cmp211.i = icmp eq i8* %call210.i, null, !dbg !1250
  br i1 %cmp211.i, label %if.then6, label %if.end214.i, !dbg !1250

if.end214.i:                                      ; preds = %if.end204.i
  %call216.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1251
  call void @llvm.dbg.value(metadata !{i8* %call216.i}, i64 0, metadata !1195) #2, !dbg !1251
  %cmp217.i = icmp eq i8* %call216.i, null, !dbg !1251
  br i1 %cmp217.i, label %if.then6, label %if.end220.i, !dbg !1251

if.end220.i:                                      ; preds = %if.end214.i
  %call221.i = call double @atof(i8* %call216.i) #8, !dbg !1233
  %conv222.i = fptrunc double %call221.i to float, !dbg !1233
  %27 = load %struct.basic_state** %mat.i, align 8, !dbg !1233, !tbaa !465
  %arrayidx225.i = getelementptr inbounds %struct.basic_state* %27, i64 %idxprom186.i, i32 0, i64 0, !dbg !1233
  store float %conv222.i, float* %arrayidx225.i, align 4, !dbg !1233, !tbaa !971
  %call227.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1252
  %cmp228.i = icmp eq i8* %call227.i, null, !dbg !1252
  br i1 %cmp228.i, label %if.then6, label %if.end231.i, !dbg !1252

if.end231.i:                                      ; preds = %if.end220.i
  %call233.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1253
  call void @llvm.dbg.value(metadata !{i8* %call233.i}, i64 0, metadata !1195) #2, !dbg !1253
  %cmp234.i = icmp eq i8* %call233.i, null, !dbg !1253
  br i1 %cmp234.i, label %if.then6, label %if.end237.i, !dbg !1253

if.end237.i:                                      ; preds = %if.end231.i
  %call238.i = call double @atof(i8* %call233.i) #8, !dbg !1254
  %conv239.i = fptrunc double %call238.i to float, !dbg !1254
  %28 = load %struct.basic_state** %mat.i, align 8, !dbg !1254, !tbaa !465
  %arrayidx244.i = getelementptr inbounds %struct.basic_state* %28, i64 %idxprom186.i, i32 0, i64 2, !dbg !1254
  store float %conv239.i, float* %arrayidx244.i, align 4, !dbg !1254, !tbaa !971
  %call246.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1255
  %cmp247.i = icmp eq i8* %call246.i, null, !dbg !1255
  br i1 %cmp247.i, label %if.then6, label %if.end250.i, !dbg !1255

if.end250.i:                                      ; preds = %if.end237.i
  %call252.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1256
  call void @llvm.dbg.value(metadata !{i8* %call252.i}, i64 0, metadata !1195) #2, !dbg !1256
  %cmp253.i = icmp eq i8* %call252.i, null, !dbg !1256
  br i1 %cmp253.i, label %if.then6, label %if.end256.i, !dbg !1256

if.end256.i:                                      ; preds = %if.end250.i
  %call257.i = call double @atof(i8* %call252.i) #8, !dbg !1257
  %conv258.i = fptrunc double %call257.i to float, !dbg !1257
  %29 = load %struct.basic_state** %mat.i, align 8, !dbg !1257, !tbaa !465
  %arrayidx263.i = getelementptr inbounds %struct.basic_state* %29, i64 %idxprom186.i, i32 0, i64 1, !dbg !1257
  store float %conv258.i, float* %arrayidx263.i, align 4, !dbg !1257, !tbaa !971
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !1258) #2, !dbg !1259
  %30 = load i32* @Alphabet_size, align 4, !dbg !1259, !tbaa !460
  %cmp2655.i = icmp sgt i32 %30, 0, !dbg !1259
  br i1 %cmp2655.i, label %for.body267.i, label %while.cond.backedge.i, !dbg !1259

for.body267.i:                                    ; preds = %if.end256.i, %if.end279.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %if.end279.i ], [ 0, %if.end256.i ]
  %call269.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1261
  %cmp270.i = icmp eq i8* %call269.i, null, !dbg !1261
  br i1 %cmp270.i, label %if.then6, label %if.end273.i, !dbg !1261

if.end273.i:                                      ; preds = %for.body267.i
  %call275.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1263
  call void @llvm.dbg.value(metadata !{i8* %call275.i}, i64 0, metadata !1195) #2, !dbg !1263
  %cmp276.i = icmp eq i8* %call275.i, null, !dbg !1263
  br i1 %cmp276.i, label %if.then6, label %if.end279.i, !dbg !1263

if.end279.i:                                      ; preds = %if.end273.i
  %call280.i = call double @atof(i8* %call275.i) #8, !dbg !1264
  %conv281.i = fptrunc double %call280.i to float, !dbg !1264
  %31 = load %struct.basic_state** %mat.i, align 8, !dbg !1264, !tbaa !465
  %arrayidx286.i = getelementptr inbounds %struct.basic_state* %31, i64 %idxprom186.i, i32 1, i64 %indvars.iv10.i, !dbg !1264
  store float %conv281.i, float* %arrayidx286.i, align 4, !dbg !1264, !tbaa !971
  %indvars.iv.next11.i = add i64 %indvars.iv10.i, 1, !dbg !1259
  %32 = load i32* @Alphabet_size, align 4, !dbg !1259, !tbaa !460
  %33 = trunc i64 %indvars.iv.next11.i to i32, !dbg !1259
  %cmp265.i = icmp slt i32 %33, %32, !dbg !1259
  br i1 %cmp265.i, label %for.body267.i, label %while.cond.backedge.i, !dbg !1259

if.else308.i:                                     ; preds = %if.end164.i
  %call309.i = call i32 @strcmp(i8* %call138.i, i8* getelementptr inbounds ([16 x i8]* @.str67, i64 0, i64 0)) #8, !dbg !1265
  %cmp310.i = icmp eq i32 %call309.i, 0, !dbg !1265
  br i1 %cmp310.i, label %if.then312.i, label %if.else414.i, !dbg !1265

if.then312.i:                                     ; preds = %if.else308.i
  %call314.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1266
  %cmp315.i = icmp eq i8* %call314.i, null, !dbg !1266
  br i1 %cmp315.i, label %if.then6, label %if.end318.i, !dbg !1266

if.end318.i:                                      ; preds = %if.then312.i
  %call320.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1267
  call void @llvm.dbg.value(metadata !{i8* %call320.i}, i64 0, metadata !1195) #2, !dbg !1267
  %cmp321.i = icmp eq i8* %call320.i, null, !dbg !1267
  br i1 %cmp321.i, label %if.then6, label %if.end324.i, !dbg !1267

if.end324.i:                                      ; preds = %if.end318.i
  %call325.i = call double @atof(i8* %call320.i) #8, !dbg !1234
  %conv326.i = fptrunc double %call325.i to float, !dbg !1234
  %idxprom327.i = sext i32 %call157.i to i64, !dbg !1234
  %34 = load %struct.basic_state** %ins.i, align 8, !dbg !1234, !tbaa !465
  %arrayidx330.i = getelementptr inbounds %struct.basic_state* %34, i64 %idxprom327.i, i32 0, i64 0, !dbg !1234
  store float %conv326.i, float* %arrayidx330.i, align 4, !dbg !1234, !tbaa !971
  %call332.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1268
  %cmp333.i = icmp eq i8* %call332.i, null, !dbg !1268
  br i1 %cmp333.i, label %if.then6, label %if.end336.i, !dbg !1268

if.end336.i:                                      ; preds = %if.end324.i
  %call338.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1269
  call void @llvm.dbg.value(metadata !{i8* %call338.i}, i64 0, metadata !1195) #2, !dbg !1269
  %cmp339.i = icmp eq i8* %call338.i, null, !dbg !1269
  br i1 %cmp339.i, label %if.then6, label %if.end342.i, !dbg !1269

if.end342.i:                                      ; preds = %if.end336.i
  %call343.i = call double @atof(i8* %call338.i) #8, !dbg !1270
  %conv344.i = fptrunc double %call343.i to float, !dbg !1270
  %35 = load %struct.basic_state** %ins.i, align 8, !dbg !1270, !tbaa !465
  %arrayidx349.i = getelementptr inbounds %struct.basic_state* %35, i64 %idxprom327.i, i32 0, i64 2, !dbg !1270
  store float %conv344.i, float* %arrayidx349.i, align 4, !dbg !1270, !tbaa !971
  %call351.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1271
  %cmp352.i = icmp eq i8* %call351.i, null, !dbg !1271
  br i1 %cmp352.i, label %if.then6, label %if.end355.i, !dbg !1271

if.end355.i:                                      ; preds = %if.end342.i
  %call357.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1272
  call void @llvm.dbg.value(metadata !{i8* %call357.i}, i64 0, metadata !1195) #2, !dbg !1272
  %cmp358.i = icmp eq i8* %call357.i, null, !dbg !1272
  br i1 %cmp358.i, label %if.then6, label %if.end361.i, !dbg !1272

if.end361.i:                                      ; preds = %if.end355.i
  %call362.i = call double @atof(i8* %call357.i) #8, !dbg !1273
  %conv363.i = fptrunc double %call362.i to float, !dbg !1273
  %36 = load %struct.basic_state** %ins.i, align 8, !dbg !1273, !tbaa !465
  %arrayidx368.i = getelementptr inbounds %struct.basic_state* %36, i64 %idxprom327.i, i32 0, i64 1, !dbg !1273
  store float %conv363.i, float* %arrayidx368.i, align 4, !dbg !1273, !tbaa !971
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !1258) #2, !dbg !1274
  %37 = load i32* @Alphabet_size, align 4, !dbg !1274, !tbaa !460
  %cmp3701.i = icmp sgt i32 %37, 0, !dbg !1274
  br i1 %cmp3701.i, label %for.body372.i, label %while.cond.backedge.i, !dbg !1274

for.body372.i:                                    ; preds = %if.end361.i, %if.end384.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %if.end384.i ], [ 0, %if.end361.i ]
  %call374.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1276
  %cmp375.i = icmp eq i8* %call374.i, null, !dbg !1276
  br i1 %cmp375.i, label %if.then6, label %if.end378.i, !dbg !1276

if.end378.i:                                      ; preds = %for.body372.i
  %call380.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1278
  call void @llvm.dbg.value(metadata !{i8* %call380.i}, i64 0, metadata !1195) #2, !dbg !1278
  %cmp381.i = icmp eq i8* %call380.i, null, !dbg !1278
  br i1 %cmp381.i, label %if.then6, label %if.end384.i, !dbg !1278

if.end384.i:                                      ; preds = %if.end378.i
  %call385.i = call double @atof(i8* %call380.i) #8, !dbg !1279
  %conv386.i = fptrunc double %call385.i to float, !dbg !1279
  %38 = load %struct.basic_state** %ins.i, align 8, !dbg !1279, !tbaa !465
  %arrayidx392.i = getelementptr inbounds %struct.basic_state* %38, i64 %idxprom327.i, i32 1, i64 %indvars.iv.i, !dbg !1279
  store float %conv386.i, float* %arrayidx392.i, align 4, !dbg !1279, !tbaa !971
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1274
  %39 = load i32* @Alphabet_size, align 4, !dbg !1274, !tbaa !460
  %40 = trunc i64 %indvars.iv.next.i to i32, !dbg !1274
  %cmp370.i = icmp slt i32 %40, %39, !dbg !1274
  br i1 %cmp370.i, label %for.body372.i, label %while.cond.backedge.i, !dbg !1274

if.else414.i:                                     ; preds = %if.else308.i
  %call415.i = call i32 @strcmp(i8* %call138.i, i8* getelementptr inbounds ([16 x i8]* @.str68, i64 0, i64 0)) #8, !dbg !1280
  %cmp416.i = icmp eq i32 %call415.i, 0, !dbg !1280
  br i1 %cmp416.i, label %if.then418.i, label %if.then6, !dbg !1280

if.then418.i:                                     ; preds = %if.else414.i
  %call420.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1281
  %cmp421.i = icmp eq i8* %call420.i, null, !dbg !1281
  br i1 %cmp421.i, label %if.then6, label %if.end424.i, !dbg !1281

if.end424.i:                                      ; preds = %if.then418.i
  %call426.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1282
  call void @llvm.dbg.value(metadata !{i8* %call426.i}, i64 0, metadata !1195) #2, !dbg !1282
  %cmp427.i = icmp eq i8* %call426.i, null, !dbg !1282
  br i1 %cmp427.i, label %if.then6, label %if.end430.i, !dbg !1282

if.end430.i:                                      ; preds = %if.end424.i
  %call431.i = call double @atof(i8* %call426.i) #8, !dbg !1236
  %conv432.i = fptrunc double %call431.i to float, !dbg !1236
  %idxprom433.i = sext i32 %call157.i to i64, !dbg !1236
  %41 = load %struct.basic_state** %del.i, align 8, !dbg !1236, !tbaa !465
  %arrayidx436.i = getelementptr inbounds %struct.basic_state* %41, i64 %idxprom433.i, i32 0, i64 0, !dbg !1236
  store float %conv432.i, float* %arrayidx436.i, align 4, !dbg !1236, !tbaa !971
  %call438.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1283
  %cmp439.i = icmp eq i8* %call438.i, null, !dbg !1283
  br i1 %cmp439.i, label %if.then6, label %if.end442.i, !dbg !1283

if.end442.i:                                      ; preds = %if.end430.i
  %call444.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1284
  call void @llvm.dbg.value(metadata !{i8* %call444.i}, i64 0, metadata !1195) #2, !dbg !1284
  %cmp445.i = icmp eq i8* %call444.i, null, !dbg !1284
  br i1 %cmp445.i, label %if.then6, label %if.end448.i, !dbg !1284

if.end448.i:                                      ; preds = %if.end442.i
  %call449.i = call double @atof(i8* %call444.i) #8, !dbg !1285
  %conv450.i = fptrunc double %call449.i to float, !dbg !1285
  %42 = load %struct.basic_state** %del.i, align 8, !dbg !1285, !tbaa !465
  %arrayidx455.i = getelementptr inbounds %struct.basic_state* %42, i64 %idxprom433.i, i32 0, i64 2, !dbg !1285
  store float %conv450.i, float* %arrayidx455.i, align 4, !dbg !1285, !tbaa !971
  %call457.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1286
  %cmp458.i = icmp eq i8* %call457.i, null, !dbg !1286
  br i1 %cmp458.i, label %if.then6, label %if.end461.i, !dbg !1286

if.end461.i:                                      ; preds = %if.end448.i
  %call463.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #7, !dbg !1287
  call void @llvm.dbg.value(metadata !{i8* %call463.i}, i64 0, metadata !1195) #2, !dbg !1287
  %cmp464.i = icmp eq i8* %call463.i, null, !dbg !1287
  br i1 %cmp464.i, label %if.then6, label %if.end467.i, !dbg !1287

if.end467.i:                                      ; preds = %if.end461.i
  %call468.i = call double @atof(i8* %call463.i) #8, !dbg !1288
  %conv469.i = fptrunc double %call468.i to float, !dbg !1288
  %43 = load %struct.basic_state** %del.i, align 8, !dbg !1288, !tbaa !465
  %arrayidx474.i = getelementptr inbounds %struct.basic_state* %43, i64 %idxprom433.i, i32 0, i64 1, !dbg !1288
  store float %conv469.i, float* %arrayidx474.i, align 4, !dbg !1288, !tbaa !971
  br label %while.cond.backedge.i, !dbg !1289

while.cond.backedge.i:                            ; preds = %if.end279.i, %if.end384.i, %if.end467.i, %if.end361.i, %if.end256.i
  %call134.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #7, !dbg !1226
  %cmp135.i = icmp eq i8* %call134.i, null, !dbg !1226
  br i1 %cmp135.i, label %read_plan9_aschmm.exit, label %while.body.i, !dbg !1226

read_plan9_aschmm.exit:                           ; preds = %while.cond.backedge.i, %while.cond.preheader.i
  %arraydecay497.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 4, i64 0, !dbg !1290
  call void @P9DefaultNullModel(float* %arraydecay497.i) #7, !dbg !1290
  call void @P9Renormalize(%struct.plan9_s* %call53.i) #7, !dbg !1291
  call void @llvm.lifetime.end(i64 512, i8* %4) #2, !dbg !1292
  call void @llvm.dbg.value(metadata !{%struct.plan9_s* %call53.i}, i64 0, metadata !363), !dbg !1188
  br i1 %cmp54.i, label %if.then6, label %if.end7, !dbg !1293

if.then6:                                         ; preds = %if.else414.i, %if.end461.i, %if.end448.i, %if.end442.i, %if.end430.i, %if.end424.i, %if.then418.i, %if.end355.i, %if.end342.i, %if.end336.i, %if.end324.i, %if.end318.i, %if.then312.i, %if.end250.i, %if.end237.i, %if.end231.i, %if.end220.i, %if.end214.i, %if.end204.i, %while.end199.i, %while.end.i, %if.end156.i, %lor.lhs.false.i, %if.end147.i, %if.end142.i, %while.body.i, %if.end273.i, %for.body267.i, %if.end378.i, %for.body372.i, %if.end117.i, %if.then105.i, %if.end84.i, %if.end78.i, %if.end69.i, %if.end63.i, %if.end57.i, %if.end22.i, %if.end16.i, %if.end9.i, %if.end5.i, %if.end.i, %if.end, %read_plan9_aschmm.exit
  store %struct.plan7_s* null, %struct.plan7_s** %ret_hmm, align 8, !dbg !1294, !tbaa !465
  br label %cleanup, !dbg !1294

if.end7:                                          ; preds = %read_plan9_aschmm.exit
  call void @Plan9toPlan7(%struct.plan9_s* %call53.i, %struct.plan7_s** %hmm) #7, !dbg !1296
  %call8 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8]* @.str59, i64 0, i64 0)) #7, !dbg !1297
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !362), !dbg !1297
  %44 = load %struct.plan7_s** %hmm, align 8, !dbg !1297, !tbaa !465
  %comlog = getelementptr inbounds %struct.plan7_s* %44, i64 0, i32 6, !dbg !1297
  store i8* %call8, i8** %comlog, align 8, !dbg !1297, !tbaa !465
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !362), !dbg !1298
  %45 = load %struct.plan7_s** %hmm, align 8, !dbg !1298, !tbaa !465
  call void @Plan7SetCtime(%struct.plan7_s* %45) #7, !dbg !1298
  %call9 = call i32 @P9FreeHMM(%struct.plan9_s* %call53.i) #7, !dbg !1299
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !362), !dbg !1300
  %46 = load %struct.plan7_s** %hmm, align 8, !dbg !1300, !tbaa !465
  call void @Plan7Renormalize(%struct.plan7_s* %46) #7, !dbg !1300
  call void @llvm.dbg.value(metadata !{%struct.plan7_s** %hmm}, i64 0, metadata !362), !dbg !1301
  %47 = load %struct.plan7_s** %hmm, align 8, !dbg !1301, !tbaa !465
  store %struct.plan7_s* %47, %struct.plan7_s** %ret_hmm, align 8, !dbg !1301, !tbaa !465
  br label %cleanup, !dbg !1302

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end7, %if.then6
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 1, %if.end7 ], [ 0, %entry ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end(i64 512, i8* %0) #2, !dbg !1302
  ret i32 %retval.0, !dbg !1303
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_asc11hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %hmmfp}, i64 0, metadata !349), !dbg !1304
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s** %ret_hmm}, i64 0, metadata !350), !dbg !1304
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([27 x i8]* @.str64, i64 0, i64 0)) #7, !dbg !1305
  ret i32 1, !dbg !1306
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_asc10hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %hmmfp}, i64 0, metadata !338), !dbg !1307
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s** %ret_hmm}, i64 0, metadata !339), !dbg !1307
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([27 x i8]* @.str63, i64 0, i64 0)) #7, !dbg !1308
  ret i32 1, !dbg !1309
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @HMMFileRead(%struct.hmmfile_s* %hmmfp, %struct.plan7_s** %ret_hmm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %hmmfp}, i64 0, metadata !222), !dbg !1310
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s** %ret_hmm}, i64 0, metadata !223), !dbg !1310
  %is_seekable = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 5, !dbg !1311
  %0 = load i32* %is_seekable, align 4, !dbg !1311, !tbaa !460
  %tobool = icmp eq i32 %0, 0, !dbg !1311
  br i1 %tobool, label %if.end2, label %if.then, !dbg !1311

if.then:                                          ; preds = %entry
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0, !dbg !1312
  %1 = load %struct._IO_FILE** %f, align 8, !dbg !1312, !tbaa !465
  %mode = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 6, !dbg !1312
  %2 = load i32* %mode, align 4, !dbg !1312, !tbaa !460
  %offset = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 7, !dbg !1312
  %call = tail call i32 @SSIGetFilePosition(%struct._IO_FILE* %1, i32 %2, %struct.ssioffset_s* %offset) #7, !dbg !1312
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !224), !dbg !1312
  %cmp = icmp eq i32 %call, 0, !dbg !1314
  br i1 %cmp, label %if.end2, label %if.then1, !dbg !1314

if.then1:                                         ; preds = %if.then
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !1314
  br label %if.end2, !dbg !1314

if.end2:                                          ; preds = %if.then, %entry, %if.then1
  %parser = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 2, !dbg !1315
  %3 = load i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser, align 8, !dbg !1315, !tbaa !465
  %call3 = tail call i32 %3(%struct.hmmfile_s* %hmmfp, %struct.plan7_s** %ret_hmm) #7, !dbg !1315
  ret i32 %call3, !dbg !1315
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #4

; Function Attrs: optsize
declare void @SSIClose(%struct.ssifile_s*) #3

; Function Attrs: nounwind optsize uwtable
define void @HMMFileRewind(%struct.hmmfile_s* nocapture %hmmfp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %hmmfp}, i64 0, metadata !232), !dbg !1316
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0, !dbg !1317
  %0 = load %struct._IO_FILE** %f, align 8, !dbg !1317, !tbaa !465
  tail call void @rewind(%struct._IO_FILE* %0) #7, !dbg !1317
  ret void, !dbg !1318
}

; Function Attrs: nounwind optsize uwtable
define i32 @HMMFilePositionByName(%struct.hmmfile_s* nocapture %hmmfp, i8* %name) #0 {
entry:
  %offset = alloca %struct.ssioffset_s, align 8
  %fh = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %hmmfp}, i64 0, metadata !237), !dbg !1319
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !238), !dbg !1319
  call void @llvm.dbg.declare(metadata !{%struct.ssioffset_s* %offset}, metadata !239), !dbg !1320
  call void @llvm.dbg.declare(metadata !{i32* %fh}, metadata !240), !dbg !1321
  %ssi = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 1, !dbg !1322
  %0 = load %struct.ssifile_s** %ssi, align 8, !dbg !1322, !tbaa !465
  %cmp = icmp eq %struct.ssifile_s* %0, null, !dbg !1322
  br i1 %cmp, label %return, label %if.end, !dbg !1322

if.end:                                           ; preds = %entry
  %call = call i32 @SSIGetOffsetByName(%struct.ssifile_s* %0, i8* %name, i32* %fh, %struct.ssioffset_s* %offset) #7, !dbg !1323
  %cmp2 = icmp eq i32 %call, 0, !dbg !1323
  br i1 %cmp2, label %if.end4, label %return, !dbg !1323

if.end4:                                          ; preds = %if.end
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0, !dbg !1324
  %1 = load %struct._IO_FILE** %f, align 8, !dbg !1324, !tbaa !465
  %call5 = call i32 @SSISetFilePosition(%struct._IO_FILE* %1, %struct.ssioffset_s* %offset) #7, !dbg !1324
  %cmp6 = icmp eq i32 %call5, 0, !dbg !1324
  %. = zext i1 %cmp6 to i32, !dbg !1325
  br label %return, !dbg !1325

return:                                           ; preds = %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end4 ]
  ret i32 %retval.0, !dbg !1325
}

; Function Attrs: optsize
declare i32 @SSIGetOffsetByName(%struct.ssifile_s*, i8*, i32*, %struct.ssioffset_s*) #3

; Function Attrs: optsize
declare i32 @SSISetFilePosition(%struct._IO_FILE*, %struct.ssioffset_s*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @HMMFilePositionByIndex(%struct.hmmfile_s* nocapture %hmmfp, i32 %idx) #0 {
entry:
  %fh = alloca i32, align 4
  %offset = alloca %struct.ssioffset_s, align 8
  call void @llvm.dbg.value(metadata !{%struct.hmmfile_s* %hmmfp}, i64 0, metadata !245), !dbg !1326
  call void @llvm.dbg.value(metadata !{i32 %idx}, i64 0, metadata !246), !dbg !1326
  call void @llvm.dbg.declare(metadata !{i32* %fh}, metadata !247), !dbg !1327
  call void @llvm.dbg.declare(metadata !{%struct.ssioffset_s* %offset}, metadata !248), !dbg !1328
  %ssi = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 1, !dbg !1329
  %0 = load %struct.ssifile_s** %ssi, align 8, !dbg !1329, !tbaa !465
  %cmp = icmp eq %struct.ssifile_s* %0, null, !dbg !1329
  br i1 %cmp, label %return, label %if.end, !dbg !1329

if.end:                                           ; preds = %entry
  %call = call i32 @SSIGetOffsetByNumber(%struct.ssifile_s* %0, i32 %idx, i32* %fh, %struct.ssioffset_s* %offset) #7, !dbg !1330
  %cmp2 = icmp eq i32 %call, 0, !dbg !1330
  br i1 %cmp2, label %if.end4, label %return, !dbg !1330

if.end4:                                          ; preds = %if.end
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0, !dbg !1331
  %1 = load %struct._IO_FILE** %f, align 8, !dbg !1331, !tbaa !465
  %call5 = call i32 @SSISetFilePosition(%struct._IO_FILE* %1, %struct.ssioffset_s* %offset) #7, !dbg !1331
  %cmp6 = icmp eq i32 %call5, 0, !dbg !1331
  %. = zext i1 %cmp6 to i32, !dbg !1332
  br label %return, !dbg !1332

return:                                           ; preds = %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end4 ]
  ret i32 %retval.0, !dbg !1332
}

; Function Attrs: optsize
declare i32 @SSIGetOffsetByNumber(%struct.ssifile_s*, i32, i32*, %struct.ssioffset_s*) #3

; Function Attrs: nounwind optsize uwtable
define void @WriteAscHMM(%struct._IO_FILE* %fp, %struct.plan7_s* %hmm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !253), !dbg !1333
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !254), !dbg !1333
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)) #7, !dbg !1334
  %name = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0, !dbg !1335
  %0 = load i8** %name, align 8, !dbg !1335, !tbaa !465
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str13, i64 0, i64 0), i8* %0) #7, !dbg !1335
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !1336
  %1 = load i32* %flags, align 4, !dbg !1336, !tbaa !460
  %and = and i32 %1, 512, !dbg !1336
  %tobool = icmp eq i32 %and, 0, !dbg !1336
  br i1 %tobool, label %if.end, label %if.then, !dbg !1336

if.then:                                          ; preds = %entry
  %acc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 1, !dbg !1337
  %2 = load i8** %acc, align 8, !dbg !1337, !tbaa !465
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0), i8* %2) #7, !dbg !1337
  %.pre = load i32* %flags, align 4, !dbg !1338, !tbaa !460
  br label %if.end, !dbg !1337

if.end:                                           ; preds = %entry, %if.then
  %3 = phi i32 [ %1, %entry ], [ %.pre, %if.then ]
  %and4 = and i32 %3, 2, !dbg !1338
  %tobool5 = icmp eq i32 %and4, 0, !dbg !1338
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !1338

if.then6:                                         ; preds = %if.end
  %desc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 2, !dbg !1339
  %4 = load i8** %desc, align 8, !dbg !1339, !tbaa !465
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str15, i64 0, i64 0), i8* %4) #7, !dbg !1339
  br label %if.end8, !dbg !1339

if.end8:                                          ; preds = %if.end, %if.then6
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !1340
  %5 = load i32* %M, align 4, !dbg !1340, !tbaa !460
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i32 %5) #7, !dbg !1340
  %6 = load i32* @Alphabet_type, align 4, !dbg !1341, !tbaa !460
  %cmp = icmp eq i32 %6, 3, !dbg !1341
  %cond = select i1 %cmp, i8* getelementptr inbounds ([6 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0), !dbg !1341
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0), i8* %cond) #7, !dbg !1341
  %7 = load i32* %flags, align 4, !dbg !1342, !tbaa !460
  %and12 = and i32 %7, 4, !dbg !1342
  %tobool13 = icmp ne i32 %and12, 0, !dbg !1342
  %cond14 = select i1 %tobool13, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str22, i64 0, i64 0), !dbg !1342
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str20, i64 0, i64 0), i8* %cond14) #7, !dbg !1342
  %8 = load i32* %flags, align 4, !dbg !1343, !tbaa !460
  %and17 = and i32 %8, 8, !dbg !1343
  %tobool18 = icmp ne i32 %and17, 0, !dbg !1343
  %cond19 = select i1 %tobool18, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str22, i64 0, i64 0), !dbg !1343
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str23, i64 0, i64 0), i8* %cond19) #7, !dbg !1343
  %9 = load i32* %flags, align 4, !dbg !1344, !tbaa !460
  %and22 = and i32 %9, 256, !dbg !1344
  %tobool23 = icmp ne i32 %and22, 0, !dbg !1344
  %cond24 = select i1 %tobool23, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str22, i64 0, i64 0), !dbg !1344
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str24, i64 0, i64 0), i8* %cond24) #7, !dbg !1344
  %comlog = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 6, !dbg !1345
  %10 = load i8** %comlog, align 8, !dbg !1345, !tbaa !465
  tail call void @llvm.dbg.value(metadata !1346, i64 0, metadata !1347) #2, !dbg !1348
  %cmp.i = icmp eq i8* %10, null, !dbg !1349
  br i1 %cmp.i, label %multiline.exit, label %if.end.i, !dbg !1349

if.end.i:                                         ; preds = %if.end8
  %call.i = tail call i8* @Strdup(i8* %10) #7, !dbg !1350
  tail call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !1351) #2, !dbg !1350
  %call1.i = tail call i8* @strtok(i8* %call.i, i8* getelementptr inbounds ([2 x i8]* @.str34, i64 0, i64 0)) #7, !dbg !1352
  tail call void @llvm.dbg.value(metadata !{i8* %call1.i}, i64 0, metadata !1353) #2, !dbg !1352
  %cmp21.i = icmp eq i8* %call1.i, null, !dbg !1354
  br i1 %cmp21.i, label %while.end.i, label %while.body.i, !dbg !1354

while.body.i:                                     ; preds = %if.end.i, %while.body.i
  %sptr.02.i = phi i8* [ %call4.i, %while.body.i ], [ %call1.i, %if.end.i ]
  %call3.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str25, i64 0, i64 0), i8* %sptr.02.i) #7, !dbg !1355
  %call4.i = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str34, i64 0, i64 0)) #7, !dbg !1357
  tail call void @llvm.dbg.value(metadata !{i8* %call4.i}, i64 0, metadata !1353) #2, !dbg !1357
  %cmp2.i = icmp eq i8* %call4.i, null, !dbg !1354
  br i1 %cmp2.i, label %while.end.i, label %while.body.i, !dbg !1354

while.end.i:                                      ; preds = %while.body.i, %if.end.i
  tail call void @free(i8* %call.i) #7, !dbg !1358
  br label %multiline.exit, !dbg !1358

multiline.exit:                                   ; preds = %if.end8, %while.end.i
  %nseq = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 7, !dbg !1359
  %11 = load i32* %nseq, align 4, !dbg !1359, !tbaa !460
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str26, i64 0, i64 0), i32 %11) #7, !dbg !1359
  %ctime = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 8, !dbg !1360
  %12 = load i8** %ctime, align 8, !dbg !1360, !tbaa !465
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str27, i64 0, i64 0), i8* %12) #7, !dbg !1360
  %checksum = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 10, !dbg !1361
  %13 = load i32* %checksum, align 4, !dbg !1361, !tbaa !460
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str28, i64 0, i64 0), i32 %13) #7, !dbg !1361
  %14 = load i32* %flags, align 4, !dbg !1362, !tbaa !460
  %and30 = and i32 %14, 1024, !dbg !1362
  %tobool31 = icmp eq i32 %and30, 0, !dbg !1362
  br i1 %tobool31, label %if.end35, label %if.then32, !dbg !1362

if.then32:                                        ; preds = %multiline.exit
  %ga1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 14, !dbg !1363
  %15 = load float* %ga1, align 4, !dbg !1363, !tbaa !971
  %conv = fpext float %15 to double, !dbg !1363
  %ga2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 15, !dbg !1363
  %16 = load float* %ga2, align 4, !dbg !1363, !tbaa !971
  %conv33 = fpext float %16 to double, !dbg !1363
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str29, i64 0, i64 0), double %conv, double %conv33) #7, !dbg !1363
  %.pre387 = load i32* %flags, align 4, !dbg !1364, !tbaa !460
  br label %if.end35, !dbg !1363

if.end35:                                         ; preds = %multiline.exit, %if.then32
  %17 = phi i32 [ %14, %multiline.exit ], [ %.pre387, %if.then32 ]
  %and37 = and i32 %17, 2048, !dbg !1364
  %tobool38 = icmp eq i32 %and37, 0, !dbg !1364
  br i1 %tobool38, label %if.end43, label %if.then39, !dbg !1364

if.then39:                                        ; preds = %if.end35
  %tc1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 16, !dbg !1365
  %18 = load float* %tc1, align 4, !dbg !1365, !tbaa !971
  %conv40 = fpext float %18 to double, !dbg !1365
  %tc2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 17, !dbg !1365
  %19 = load float* %tc2, align 4, !dbg !1365, !tbaa !971
  %conv41 = fpext float %19 to double, !dbg !1365
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str30, i64 0, i64 0), double %conv40, double %conv41) #7, !dbg !1365
  %.pre388 = load i32* %flags, align 4, !dbg !1366, !tbaa !460
  br label %if.end43, !dbg !1365

if.end43:                                         ; preds = %if.end35, %if.then39
  %20 = phi i32 [ %17, %if.end35 ], [ %.pre388, %if.then39 ]
  %and45 = and i32 %20, 4096, !dbg !1366
  %tobool46 = icmp eq i32 %and45, 0, !dbg !1366
  br i1 %tobool46, label %if.end51, label %if.then47, !dbg !1366

if.then47:                                        ; preds = %if.end43
  %nc1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 18, !dbg !1367
  %21 = load float* %nc1, align 4, !dbg !1367, !tbaa !971
  %conv48 = fpext float %21 to double, !dbg !1367
  %nc2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 19, !dbg !1367
  %22 = load float* %nc2, align 4, !dbg !1367, !tbaa !971
  %conv49 = fpext float %22 to double, !dbg !1367
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str31, i64 0, i64 0), double %conv48, double %conv49) #7, !dbg !1367
  br label %if.end51, !dbg !1367

if.end51:                                         ; preds = %if.end43, %if.then47
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str32, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %fp) #2, !dbg !1368
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !255), !dbg !1369
  br label %for.cond55.preheader, !dbg !1369

for.cond55.preheader:                             ; preds = %for.inc63, %if.end51
  %indvars.iv383 = phi i64 [ 0, %if.end51 ], [ %indvars.iv.next384, %for.inc63 ]
  br label %for.body58, !dbg !1371

for.body58:                                       ; preds = %for.body58, %for.cond55.preheader
  %indvars.iv379 = phi i64 [ 0, %for.cond55.preheader ], [ %indvars.iv.next380, %for.body58 ]
  %arrayidx60 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 %indvars.iv383, i64 %indvars.iv379, !dbg !1373
  %24 = load float* %arrayidx60, align 4, !dbg !1373, !tbaa !971
  %call61 = tail call fastcc i8* @prob2ascii(float %24, float 1.000000e+00) #9, !dbg !1373
  %call62 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %call61) #7, !dbg !1373
  %indvars.iv.next380 = add i64 %indvars.iv379, 1, !dbg !1371
  %lftr.wideiv381 = trunc i64 %indvars.iv.next380 to i32, !dbg !1371
  %exitcond382 = icmp eq i32 %lftr.wideiv381, 2, !dbg !1371
  br i1 %exitcond382, label %for.inc63, label %for.body58, !dbg !1371

for.inc63:                                        ; preds = %for.body58
  %indvars.iv.next384 = add i64 %indvars.iv383, 1, !dbg !1369
  %lftr.wideiv385 = trunc i64 %indvars.iv.next384 to i32, !dbg !1369
  %exitcond386 = icmp eq i32 %lftr.wideiv385, 4, !dbg !1369
  br i1 %exitcond386, label %for.end65, label %for.cond55.preheader, !dbg !1369

for.end65:                                        ; preds = %for.inc63
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !1374
  %25 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %fp) #2, !dbg !1375
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29, !dbg !1376
  %26 = load float* %p1, align 4, !dbg !1376, !tbaa !971
  %call68 = tail call fastcc i8* @prob2ascii(float %26, float 1.000000e+00) #9, !dbg !1376
  %call69 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %call68) #7, !dbg !1376
  %27 = load float* %p1, align 4, !dbg !1377, !tbaa !971
  %conv72 = fsub float 1.000000e+00, %27, !dbg !1377
  %call73 = tail call fastcc i8* @prob2ascii(float %conv72, float 1.000000e+00) #9, !dbg !1377
  %call74 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0), i8* %call73) #7, !dbg !1377
  %28 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str37, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %fp) #2, !dbg !1378
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !256), !dbg !1379
  %29 = load i32* @Alphabet_size, align 4, !dbg !1379, !tbaa !460
  %cmp77365 = icmp sgt i32 %29, 0, !dbg !1379
  br i1 %cmp77365, label %for.body79, label %for.end87, !dbg !1379

for.body79:                                       ; preds = %for.end65, %for.body79
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %for.body79 ], [ 0, %for.end65 ]
  %30 = phi i32 [ %32, %for.body79 ], [ %29, %for.end65 ]
  %arrayidx81 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 %indvars.iv377, !dbg !1381
  %31 = load float* %arrayidx81, align 4, !dbg !1381, !tbaa !971
  %conv82 = sitofp i32 %30 to float, !dbg !1381
  %div = fdiv float 1.000000e+00, %conv82, !dbg !1381
  %call83 = tail call fastcc i8* @prob2ascii(float %31, float %div) #9, !dbg !1381
  %call84 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %call83) #7, !dbg !1381
  %indvars.iv.next378 = add i64 %indvars.iv377, 1, !dbg !1379
  %32 = load i32* @Alphabet_size, align 4, !dbg !1379, !tbaa !460
  %33 = trunc i64 %indvars.iv.next378 to i32, !dbg !1379
  %cmp77 = icmp slt i32 %33, %32, !dbg !1379
  br i1 %cmp77, label %for.body79, label %for.end87, !dbg !1379

for.end87:                                        ; preds = %for.body79, %for.end65
  %fputc343 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !1382
  %34 = load i32* %flags, align 4, !dbg !1383, !tbaa !460
  %and90 = and i32 %34, 128, !dbg !1383
  %tobool91 = icmp eq i32 %and90, 0, !dbg !1383
  br i1 %tobool91, label %if.end96, label %if.then92, !dbg !1383

if.then92:                                        ; preds = %for.end87
  %mu = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 45, !dbg !1384
  %35 = load float* %mu, align 4, !dbg !1384, !tbaa !971
  %conv93 = fpext float %35 to double, !dbg !1384
  %lambda = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 46, !dbg !1384
  %36 = load float* %lambda, align 4, !dbg !1384, !tbaa !971
  %conv94 = fpext float %36 to double, !dbg !1384
  %call95 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0), double %conv93, double %conv94) #7, !dbg !1384
  br label %if.end96, !dbg !1384

if.end96:                                         ; preds = %for.end87, %if.then92
  %37 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str39, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %fp) #2, !dbg !1385
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !256), !dbg !1386
  %38 = load i32* @Alphabet_size, align 4, !dbg !1386, !tbaa !460
  %cmp99363 = icmp sgt i32 %38, 0, !dbg !1386
  br i1 %cmp99363, label %for.body101, label %for.end108, !dbg !1386

for.body101:                                      ; preds = %if.end96, %for.body101
  %indvars.iv375 = phi i64 [ %indvars.iv.next376, %for.body101 ], [ 0, %if.end96 ]
  %arrayidx103 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %indvars.iv375, !dbg !1386
  %39 = load i8* %arrayidx103, align 1, !dbg !1386, !tbaa !461
  %conv104 = sext i8 %39 to i32, !dbg !1386
  %call105 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str40, i64 0, i64 0), i32 %conv104) #7, !dbg !1386
  %indvars.iv.next376 = add i64 %indvars.iv375, 1, !dbg !1386
  %40 = load i32* @Alphabet_size, align 4, !dbg !1386, !tbaa !460
  %41 = trunc i64 %indvars.iv.next376 to i32, !dbg !1386
  %cmp99 = icmp slt i32 %41, %40, !dbg !1386
  br i1 %cmp99, label %for.body101, label %for.end108, !dbg !1386

for.end108:                                       ; preds = %for.body101, %if.end96
  %fputc346 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !1388
  %call110 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([44 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str50, i64 0, i64 0)) #7, !dbg !1389
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !1390
  %42 = load float* %tbd1, align 4, !dbg !1390, !tbaa !971
  %sub111 = fsub float 1.000000e+00, %42, !dbg !1390
  %call112 = tail call fastcc i8* @prob2ascii(float %sub111, float 1.000000e+00) #9, !dbg !1390
  %call113 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str51, i64 0, i64 0), i8* %call112, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0)) #7, !dbg !1390
  %43 = load float* %tbd1, align 4, !dbg !1391, !tbaa !971
  %call115 = tail call fastcc i8* @prob2ascii(float %43, float 1.000000e+00) #9, !dbg !1391
  %call116 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0), i8* %call115) #7, !dbg !1391
  tail call void @llvm.dbg.value(metadata !1031, i64 0, metadata !255), !dbg !1392
  %44 = load i32* %M, align 4, !dbg !1392, !tbaa !460
  %cmp119361 = icmp slt i32 %44, 1, !dbg !1392
  br i1 %cmp119361, label %for.end222, label %for.body121.lr.ph, !dbg !1392

for.body121.lr.ph:                                ; preds = %for.end108
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !1394
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !1397
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !1398
  %cs = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 4, !dbg !1399
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23, !dbg !1400
  %rf = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 3, !dbg !1402
  %map = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 9, !dbg !1403
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !1404
  br label %for.body121, !dbg !1392

for.body121:                                      ; preds = %for.end210, %for.body121.lr.ph
  %indvars.iv373 = phi i64 [ %indvars.iv.next374, %for.end210 ], [ 1, %for.body121.lr.ph ]
  %45 = trunc i64 %indvars.iv373 to i32, !dbg !1406
  %call122 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str53, i64 0, i64 0), i32 %45) #7, !dbg !1406
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !256), !dbg !1407
  %46 = load i32* @Alphabet_size, align 4, !dbg !1407, !tbaa !460
  %cmp124356 = icmp sgt i32 %46, 0, !dbg !1407
  br i1 %cmp124356, label %for.body126, label %for.end138, !dbg !1407

for.body126:                                      ; preds = %for.body121, %for.body126
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body126 ], [ 0, %for.body121 ]
  %47 = load float*** %mat, align 8, !dbg !1404, !tbaa !465
  %arrayidx129 = getelementptr inbounds float** %47, i64 %indvars.iv373, !dbg !1404
  %48 = load float** %arrayidx129, align 8, !dbg !1404, !tbaa !465
  %arrayidx130 = getelementptr inbounds float* %48, i64 %indvars.iv, !dbg !1404
  %49 = load float* %arrayidx130, align 4, !dbg !1404, !tbaa !971
  %arrayidx133 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 %indvars.iv, !dbg !1404
  %50 = load float* %arrayidx133, align 4, !dbg !1404, !tbaa !971
  %call134 = tail call fastcc i8* @prob2ascii(float %49, float %50) #9, !dbg !1404
  %call135 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %call134) #7, !dbg !1404
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1407
  %51 = load i32* @Alphabet_size, align 4, !dbg !1407, !tbaa !460
  %52 = trunc i64 %indvars.iv.next to i32, !dbg !1407
  %cmp124 = icmp slt i32 %52, %51, !dbg !1407
  br i1 %cmp124, label %for.body126, label %for.end138, !dbg !1407

for.end138:                                       ; preds = %for.body126, %for.body121
  %53 = load i32* %flags, align 4, !dbg !1403, !tbaa !460
  %and140 = and i32 %53, 256, !dbg !1403
  %tobool141 = icmp eq i32 %and140, 0, !dbg !1403
  br i1 %tobool141, label %if.end146, label %if.then142, !dbg !1403

if.then142:                                       ; preds = %for.end138
  %54 = load i32** %map, align 8, !dbg !1403, !tbaa !465
  %arrayidx144 = getelementptr inbounds i32* %54, i64 %indvars.iv373, !dbg !1403
  %55 = load i32* %arrayidx144, align 4, !dbg !1403, !tbaa !460
  %call145 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str54, i64 0, i64 0), i32 %55) #7, !dbg !1403
  br label %if.end146, !dbg !1403

if.end146:                                        ; preds = %for.end138, %if.then142
  %fputc349 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !1408
  %56 = load i32* %flags, align 4, !dbg !1402, !tbaa !460
  %and149 = and i32 %56, 4, !dbg !1402
  %tobool150 = icmp eq i32 %and149, 0, !dbg !1402
  br i1 %tobool150, label %cond.end, label %cond.true, !dbg !1402

cond.true:                                        ; preds = %if.end146
  %57 = load i8** %rf, align 8, !dbg !1402, !tbaa !465
  %arrayidx152 = getelementptr inbounds i8* %57, i64 %indvars.iv373, !dbg !1402
  %58 = load i8* %arrayidx152, align 1, !dbg !1402, !tbaa !461
  %conv153 = sext i8 %58 to i32, !dbg !1402
  br label %cond.end, !dbg !1402

cond.end:                                         ; preds = %if.end146, %cond.true
  %cond154 = phi i32 [ %conv153, %cond.true ], [ 45, %if.end146 ], !dbg !1402
  %call155 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str55, i64 0, i64 0), i32 %cond154) #7, !dbg !1402
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !256), !dbg !1409
  %59 = load i32* @Alphabet_size, align 4, !dbg !1409, !tbaa !460
  %cmp157358 = icmp sgt i32 %59, 0, !dbg !1409
  br i1 %cmp157358, label %for.body159, label %for.end178, !dbg !1409

for.body159:                                      ; preds = %cond.end, %cond.end173
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %cond.end173 ], [ 0, %cond.end ]
  %60 = load i32* %M, align 4, !dbg !1400, !tbaa !460
  %cmp161 = icmp slt i32 %45, %60, !dbg !1400
  br i1 %cmp161, label %cond.true163, label %cond.end173, !dbg !1400

cond.true163:                                     ; preds = %for.body159
  %61 = load float*** %ins, align 8, !dbg !1400, !tbaa !465
  %arrayidx166 = getelementptr inbounds float** %61, i64 %indvars.iv373, !dbg !1400
  %62 = load float** %arrayidx166, align 8, !dbg !1400, !tbaa !465
  %arrayidx167 = getelementptr inbounds float* %62, i64 %indvars.iv369, !dbg !1400
  %63 = load float* %arrayidx167, align 4, !dbg !1400, !tbaa !971
  %arrayidx170 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 %indvars.iv369, !dbg !1400
  %64 = load float* %arrayidx170, align 4, !dbg !1400, !tbaa !971
  %call171 = tail call fastcc i8* @prob2ascii(float %63, float %64) #9, !dbg !1400
  br label %cond.end173, !dbg !1400

cond.end173:                                      ; preds = %for.body159, %cond.true163
  %cond174 = phi i8* [ %call171, %cond.true163 ], [ getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), %for.body159 ], !dbg !1400
  %call175 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %cond174) #7, !dbg !1400
  %indvars.iv.next370 = add i64 %indvars.iv369, 1, !dbg !1409
  %65 = load i32* @Alphabet_size, align 4, !dbg !1409, !tbaa !460
  %66 = trunc i64 %indvars.iv.next370 to i32, !dbg !1409
  %cmp157 = icmp slt i32 %66, %65, !dbg !1409
  br i1 %cmp157, label %for.body159, label %for.end178, !dbg !1409

for.end178:                                       ; preds = %cond.end173, %cond.end
  %fputc352 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !1410
  %67 = load i32* %flags, align 4, !dbg !1399, !tbaa !460
  %and181 = and i32 %67, 8, !dbg !1399
  %tobool182 = icmp eq i32 %and181, 0, !dbg !1399
  br i1 %tobool182, label %cond.end188, label %cond.true183, !dbg !1399

cond.true183:                                     ; preds = %for.end178
  %68 = load i8** %cs, align 8, !dbg !1399, !tbaa !465
  %arrayidx185 = getelementptr inbounds i8* %68, i64 %indvars.iv373, !dbg !1399
  %69 = load i8* %arrayidx185, align 1, !dbg !1399, !tbaa !461
  %conv186 = sext i8 %69 to i32, !dbg !1399
  br label %cond.end188, !dbg !1399

cond.end188:                                      ; preds = %for.end178, %cond.true183
  %cond189 = phi i32 [ %conv186, %cond.true183 ], [ 45, %for.end178 ], !dbg !1399
  %call190 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str55, i64 0, i64 0), i32 %cond189) #7, !dbg !1399
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !257), !dbg !1411
  br label %for.body194, !dbg !1411

for.body194:                                      ; preds = %cond.end205, %cond.end188
  %indvars.iv371 = phi i64 [ 0, %cond.end188 ], [ %indvars.iv.next372, %cond.end205 ]
  %70 = load i32* %M, align 4, !dbg !1394, !tbaa !460
  %cmp196 = icmp slt i32 %45, %70, !dbg !1394
  br i1 %cmp196, label %cond.true198, label %cond.end205, !dbg !1394

cond.true198:                                     ; preds = %for.body194
  %71 = load float*** %t, align 8, !dbg !1394, !tbaa !465
  %arrayidx201 = getelementptr inbounds float** %71, i64 %indvars.iv373, !dbg !1394
  %72 = load float** %arrayidx201, align 8, !dbg !1394, !tbaa !465
  %arrayidx202 = getelementptr inbounds float* %72, i64 %indvars.iv371, !dbg !1394
  %73 = load float* %arrayidx202, align 4, !dbg !1394, !tbaa !971
  %call203 = tail call fastcc i8* @prob2ascii(float %73, float 1.000000e+00) #9, !dbg !1394
  br label %cond.end205, !dbg !1394

cond.end205:                                      ; preds = %for.body194, %cond.true198
  %cond206 = phi i8* [ %call203, %cond.true198 ], [ getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), %for.body194 ], !dbg !1394
  %call207 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %cond206) #7, !dbg !1394
  %indvars.iv.next372 = add i64 %indvars.iv371, 1, !dbg !1411
  %lftr.wideiv = trunc i64 %indvars.iv.next372 to i32, !dbg !1411
  %exitcond = icmp eq i32 %lftr.wideiv, 7, !dbg !1411
  br i1 %exitcond, label %for.end210, label %for.body194, !dbg !1411

for.end210:                                       ; preds = %cond.end205
  %74 = load float** %begin, align 8, !dbg !1397, !tbaa !465
  %arrayidx212 = getelementptr inbounds float* %74, i64 %indvars.iv373, !dbg !1397
  %75 = load float* %arrayidx212, align 4, !dbg !1397, !tbaa !971
  %call213 = tail call fastcc i8* @prob2ascii(float %75, float 1.000000e+00) #9, !dbg !1397
  %call214 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %call213) #7, !dbg !1397
  %76 = load float** %end, align 8, !dbg !1398, !tbaa !465
  %arrayidx216 = getelementptr inbounds float* %76, i64 %indvars.iv373, !dbg !1398
  %77 = load float* %arrayidx216, align 4, !dbg !1398, !tbaa !971
  %call217 = tail call fastcc i8* @prob2ascii(float %77, float 1.000000e+00) #9, !dbg !1398
  %call218 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %call217) #7, !dbg !1398
  %fputc355 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !1412
  %indvars.iv.next374 = add i64 %indvars.iv373, 1, !dbg !1392
  %78 = load i32* %M, align 4, !dbg !1392, !tbaa !460
  %cmp119 = icmp slt i32 %45, %78, !dbg !1392
  br i1 %cmp119, label %for.body121, label %for.end222, !dbg !1392

for.end222:                                       ; preds = %for.end210, %for.end108
  %79 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str56, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp) #2, !dbg !1413
  ret void, !dbg !1414
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @prob2ascii(float %p, float %null) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %p}, i64 0, metadata !283), !dbg !1415
  tail call void @llvm.dbg.value(metadata !{float %null}, i64 0, metadata !284), !dbg !1415
  %cmp = fcmp oeq float %p, 0.000000e+00, !dbg !1416
  br i1 %cmp, label %return, label %if.end, !dbg !1416

if.end:                                           ; preds = %entry
  %call = tail call i32 @Prob2Score(float %p, float %null) #7, !dbg !1417
  %call2 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([8 x i8]* @prob2ascii.buffer, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str58, i64 0, i64 0), i32 %call) #7, !dbg !1417
  br label %return, !dbg !1418

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ getelementptr inbounds ([8 x i8]* @prob2ascii.buffer, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), %entry ]
  ret i8* %retval.0, !dbg !1418
}

; Function Attrs: nounwind optsize uwtable
define void @WriteBinHMM(%struct._IO_FILE* %fp, %struct.plan7_s* %hmm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !260), !dbg !1419
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !261), !dbg !1419
  %call = tail call i64 @fwrite(i8* bitcast (i32* @v20magic to i8*), i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1420
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !1421
  %0 = bitcast i32* %flags to i8*, !dbg !1421
  %call1 = tail call i64 @fwrite(i8* %0, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1421
  %name = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0, !dbg !1422
  %1 = load i8** %name, align 8, !dbg !1422, !tbaa !465
  tail call fastcc void @write_bin_string(%struct._IO_FILE* %fp, i8* %1) #9, !dbg !1422
  %2 = load i32* %flags, align 4, !dbg !1423, !tbaa !460
  %and = and i32 %2, 512, !dbg !1423
  %tobool = icmp eq i32 %and, 0, !dbg !1423
  br i1 %tobool, label %if.end, label %if.then, !dbg !1423

if.then:                                          ; preds = %entry
  %acc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 1, !dbg !1423
  %3 = load i8** %acc, align 8, !dbg !1423, !tbaa !465
  tail call fastcc void @write_bin_string(%struct._IO_FILE* %fp, i8* %3) #9, !dbg !1423
  %.pre = load i32* %flags, align 4, !dbg !1424, !tbaa !460
  br label %if.end, !dbg !1423

if.end:                                           ; preds = %entry, %if.then
  %4 = phi i32 [ %2, %entry ], [ %.pre, %if.then ]
  %and4 = and i32 %4, 2, !dbg !1424
  %tobool5 = icmp eq i32 %and4, 0, !dbg !1424
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1424

if.then6:                                         ; preds = %if.end
  %desc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 2, !dbg !1424
  %5 = load i8** %desc, align 8, !dbg !1424, !tbaa !465
  tail call fastcc void @write_bin_string(%struct._IO_FILE* %fp, i8* %5) #9, !dbg !1424
  br label %if.end7, !dbg !1424

if.end7:                                          ; preds = %if.end, %if.then6
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !1425
  %6 = bitcast i32* %M to i8*, !dbg !1425
  %call8 = tail call i64 @fwrite(i8* %6, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1425
  %call9 = tail call i64 @fwrite(i8* bitcast (i32* @Alphabet_type to i8*), i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1426
  %7 = load i32* %flags, align 4, !dbg !1427, !tbaa !460
  %and11 = and i32 %7, 4, !dbg !1427
  %tobool12 = icmp eq i32 %and11, 0, !dbg !1427
  br i1 %tobool12, label %if.end16, label %if.then13, !dbg !1427

if.then13:                                        ; preds = %if.end7
  %rf = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 3, !dbg !1427
  %8 = load i8** %rf, align 8, !dbg !1427, !tbaa !465
  %9 = load i32* %M, align 4, !dbg !1427, !tbaa !460
  %add = add nsw i32 %9, 1, !dbg !1427
  %conv = sext i32 %add to i64, !dbg !1427
  %call15 = tail call i64 @fwrite(i8* %8, i64 1, i64 %conv, %struct._IO_FILE* %fp) #7, !dbg !1427
  %.pre214 = load i32* %flags, align 4, !dbg !1428, !tbaa !460
  br label %if.end16, !dbg !1427

if.end16:                                         ; preds = %if.end7, %if.then13
  %10 = phi i32 [ %7, %if.end7 ], [ %.pre214, %if.then13 ]
  %and18 = and i32 %10, 8, !dbg !1428
  %tobool19 = icmp eq i32 %and18, 0, !dbg !1428
  br i1 %tobool19, label %if.end25, label %if.then20, !dbg !1428

if.then20:                                        ; preds = %if.end16
  %cs = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 4, !dbg !1428
  %11 = load i8** %cs, align 8, !dbg !1428, !tbaa !465
  %12 = load i32* %M, align 4, !dbg !1428, !tbaa !460
  %add22 = add nsw i32 %12, 1, !dbg !1428
  %conv23 = sext i32 %add22 to i64, !dbg !1428
  %call24 = tail call i64 @fwrite(i8* %11, i64 1, i64 %conv23, %struct._IO_FILE* %fp) #7, !dbg !1428
  %.pre215 = load i32* %flags, align 4, !dbg !1429, !tbaa !460
  br label %if.end25, !dbg !1428

if.end25:                                         ; preds = %if.end16, %if.then20
  %13 = phi i32 [ %10, %if.end16 ], [ %.pre215, %if.then20 ]
  %and27 = and i32 %13, 256, !dbg !1429
  %tobool28 = icmp eq i32 %and27, 0, !dbg !1429
  br i1 %tobool28, label %if.end34, label %if.then29, !dbg !1429

if.then29:                                        ; preds = %if.end25
  %map = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 9, !dbg !1429
  %14 = load i32** %map, align 8, !dbg !1429, !tbaa !465
  %15 = bitcast i32* %14 to i8*, !dbg !1429
  %16 = load i32* %M, align 4, !dbg !1429, !tbaa !460
  %add31 = add nsw i32 %16, 1, !dbg !1429
  %conv32 = sext i32 %add31 to i64, !dbg !1429
  %call33 = tail call i64 @fwrite(i8* %15, i64 4, i64 %conv32, %struct._IO_FILE* %fp) #7, !dbg !1429
  br label %if.end34, !dbg !1429

if.end34:                                         ; preds = %if.end25, %if.then29
  %comlog = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 6, !dbg !1430
  %17 = load i8** %comlog, align 8, !dbg !1430, !tbaa !465
  tail call fastcc void @write_bin_string(%struct._IO_FILE* %fp, i8* %17) #9, !dbg !1430
  %nseq = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 7, !dbg !1431
  %18 = bitcast i32* %nseq to i8*, !dbg !1431
  %call35 = tail call i64 @fwrite(i8* %18, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1431
  %ctime = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 8, !dbg !1432
  %19 = load i8** %ctime, align 8, !dbg !1432, !tbaa !465
  tail call fastcc void @write_bin_string(%struct._IO_FILE* %fp, i8* %19) #9, !dbg !1432
  %checksum = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 10, !dbg !1433
  %20 = bitcast i32* %checksum to i8*, !dbg !1433
  %call36 = tail call i64 @fwrite(i8* %20, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1433
  %21 = load i32* %flags, align 4, !dbg !1434, !tbaa !460
  %and38 = and i32 %21, 1024, !dbg !1434
  %tobool39 = icmp eq i32 %and38, 0, !dbg !1434
  br i1 %tobool39, label %if.end43, label %if.then40, !dbg !1434

if.then40:                                        ; preds = %if.end34
  %ga1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 14, !dbg !1435
  %22 = bitcast float* %ga1 to i8*, !dbg !1435
  %call41 = tail call i64 @fwrite(i8* %22, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1435
  %ga2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 15, !dbg !1437
  %23 = bitcast float* %ga2 to i8*, !dbg !1437
  %call42 = tail call i64 @fwrite(i8* %23, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1437
  %.pre216 = load i32* %flags, align 4, !dbg !1438, !tbaa !460
  br label %if.end43, !dbg !1439

if.end43:                                         ; preds = %if.end34, %if.then40
  %24 = phi i32 [ %21, %if.end34 ], [ %.pre216, %if.then40 ]
  %and45 = and i32 %24, 2048, !dbg !1438
  %tobool46 = icmp eq i32 %and45, 0, !dbg !1438
  br i1 %tobool46, label %if.end50, label %if.then47, !dbg !1438

if.then47:                                        ; preds = %if.end43
  %tc1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 16, !dbg !1440
  %25 = bitcast float* %tc1 to i8*, !dbg !1440
  %call48 = tail call i64 @fwrite(i8* %25, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1440
  %tc2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 17, !dbg !1442
  %26 = bitcast float* %tc2 to i8*, !dbg !1442
  %call49 = tail call i64 @fwrite(i8* %26, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1442
  %.pre217 = load i32* %flags, align 4, !dbg !1443, !tbaa !460
  br label %if.end50, !dbg !1444

if.end50:                                         ; preds = %if.end43, %if.then47
  %27 = phi i32 [ %24, %if.end43 ], [ %.pre217, %if.then47 ]
  %and52 = and i32 %27, 4096, !dbg !1443
  %tobool53 = icmp eq i32 %and52, 0, !dbg !1443
  br i1 %tobool53, label %for.body, label %if.then54, !dbg !1443

if.then54:                                        ; preds = %if.end50
  %nc1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 18, !dbg !1445
  %28 = bitcast float* %nc1 to i8*, !dbg !1445
  %call55 = tail call i64 @fwrite(i8* %28, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1445
  %nc2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 19, !dbg !1447
  %29 = bitcast float* %nc2 to i8*, !dbg !1447
  %call56 = tail call i64 @fwrite(i8* %29, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1447
  br label %for.body, !dbg !1448

for.body:                                         ; preds = %if.then54, %if.end50, %for.body
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %for.body ], [ 0, %if.end50 ], [ 0, %if.then54 ]
  %arraydecay = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 %indvars.iv212, i64 0, !dbg !1449
  %30 = bitcast float* %arraydecay to i8*, !dbg !1449
  %call59 = tail call i64 @fwrite(i8* %30, i64 4, i64 2, %struct._IO_FILE* %fp) #7, !dbg !1449
  %indvars.iv.next213 = add i64 %indvars.iv212, 1, !dbg !1451
  %lftr.wideiv = trunc i64 %indvars.iv.next213 to i32, !dbg !1451
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !1451
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1451

for.end:                                          ; preds = %for.body
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29, !dbg !1452
  %31 = bitcast float* %p1 to i8*, !dbg !1452
  %call60 = tail call i64 @fwrite(i8* %31, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1452
  %arraydecay61 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 0, !dbg !1453
  %32 = bitcast float* %arraydecay61 to i8*, !dbg !1453
  %33 = load i32* @Alphabet_size, align 4, !dbg !1453, !tbaa !460
  %conv62 = sext i32 %33 to i64, !dbg !1453
  %call63 = tail call i64 @fwrite(i8* %32, i64 4, i64 %conv62, %struct._IO_FILE* %fp) #7, !dbg !1453
  %34 = load i32* %flags, align 4, !dbg !1454, !tbaa !460
  %and65 = and i32 %34, 128, !dbg !1454
  %tobool66 = icmp eq i32 %and65, 0, !dbg !1454
  br i1 %tobool66, label %if.end70, label %if.then67, !dbg !1454

if.then67:                                        ; preds = %for.end
  %mu = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 45, !dbg !1455
  %35 = bitcast float* %mu to i8*, !dbg !1455
  %call68 = tail call i64 @fwrite(i8* %35, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1455
  %lambda = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 46, !dbg !1457
  %36 = bitcast float* %lambda to i8*, !dbg !1457
  %call69 = tail call i64 @fwrite(i8* %36, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1457
  br label %if.end70, !dbg !1458

if.end70:                                         ; preds = %for.end, %if.then67
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !1459
  %37 = bitcast float* %tbd1 to i8*, !dbg !1459
  %call71 = tail call i64 @fwrite(i8* %37, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1459
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !1460
  %38 = load float** %begin, align 8, !dbg !1460, !tbaa !465
  %39 = bitcast float* %38 to i8*, !dbg !1460
  %40 = load i32* %M, align 4, !dbg !1460, !tbaa !460
  %add73 = add nsw i32 %40, 1, !dbg !1460
  %conv74 = sext i32 %add73 to i64, !dbg !1460
  %call75 = tail call i64 @fwrite(i8* %39, i64 4, i64 %conv74, %struct._IO_FILE* %fp) #7, !dbg !1460
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !1461
  %41 = load float** %end, align 8, !dbg !1461, !tbaa !465
  %42 = bitcast float* %41 to i8*, !dbg !1461
  %43 = load i32* %M, align 4, !dbg !1461, !tbaa !460
  %add77 = add nsw i32 %43, 1, !dbg !1461
  %conv78 = sext i32 %add77 to i64, !dbg !1461
  %call79 = tail call i64 @fwrite(i8* %42, i64 4, i64 %conv78, %struct._IO_FILE* %fp) #7, !dbg !1461
  tail call void @llvm.dbg.value(metadata !1031, i64 0, metadata !262), !dbg !1462
  %44 = load i32* %M, align 4, !dbg !1462, !tbaa !460
  %cmp82205 = icmp slt i32 %44, 1, !dbg !1462
  br i1 %cmp82205, label %for.end114, label %for.body84.lr.ph, !dbg !1462

for.body84.lr.ph:                                 ; preds = %if.end70
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !1464
  br label %for.body84, !dbg !1462

for.cond92.preheader:                             ; preds = %for.body84
  %cmp94203 = icmp sgt i32 %49, 1, !dbg !1465
  br i1 %cmp94203, label %for.body96.lr.ph, label %for.end114, !dbg !1465

for.body96.lr.ph:                                 ; preds = %for.cond92.preheader
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23, !dbg !1467
  br label %for.body96, !dbg !1465

for.body84:                                       ; preds = %for.body84, %for.body84.lr.ph
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %for.body84 ], [ 1, %for.body84.lr.ph ]
  %45 = load float*** %mat, align 8, !dbg !1464, !tbaa !465
  %arrayidx86 = getelementptr inbounds float** %45, i64 %indvars.iv210, !dbg !1464
  %46 = load float** %arrayidx86, align 8, !dbg !1464, !tbaa !465
  %47 = bitcast float* %46 to i8*, !dbg !1464
  %48 = load i32* @Alphabet_size, align 4, !dbg !1464, !tbaa !460
  %conv87 = sext i32 %48 to i64, !dbg !1464
  %call88 = tail call i64 @fwrite(i8* %47, i64 4, i64 %conv87, %struct._IO_FILE* %fp) #7, !dbg !1464
  %indvars.iv.next211 = add i64 %indvars.iv210, 1, !dbg !1462
  %49 = load i32* %M, align 4, !dbg !1462, !tbaa !460
  %50 = trunc i64 %indvars.iv210 to i32, !dbg !1462
  %cmp82 = icmp slt i32 %50, %49, !dbg !1462
  br i1 %cmp82, label %for.body84, label %for.cond92.preheader, !dbg !1462

for.cond104.preheader:                            ; preds = %for.body96
  %cmp106201 = icmp sgt i32 %55, 1, !dbg !1468
  br i1 %cmp106201, label %for.body108.lr.ph, label %for.end114, !dbg !1468

for.body108.lr.ph:                                ; preds = %for.cond104.preheader
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !1470
  br label %for.body108, !dbg !1468

for.body96:                                       ; preds = %for.body96.lr.ph, %for.body96
  %indvars.iv208 = phi i64 [ 1, %for.body96.lr.ph ], [ %indvars.iv.next209, %for.body96 ]
  %51 = load float*** %ins, align 8, !dbg !1467, !tbaa !465
  %arrayidx98 = getelementptr inbounds float** %51, i64 %indvars.iv208, !dbg !1467
  %52 = load float** %arrayidx98, align 8, !dbg !1467, !tbaa !465
  %53 = bitcast float* %52 to i8*, !dbg !1467
  %54 = load i32* @Alphabet_size, align 4, !dbg !1467, !tbaa !460
  %conv99 = sext i32 %54 to i64, !dbg !1467
  %call100 = tail call i64 @fwrite(i8* %53, i64 4, i64 %conv99, %struct._IO_FILE* %fp) #7, !dbg !1467
  %indvars.iv.next209 = add i64 %indvars.iv208, 1, !dbg !1465
  %55 = load i32* %M, align 4, !dbg !1465, !tbaa !460
  %56 = trunc i64 %indvars.iv.next209 to i32, !dbg !1465
  %cmp94 = icmp slt i32 %56, %55, !dbg !1465
  br i1 %cmp94, label %for.body96, label %for.cond104.preheader, !dbg !1465

for.body108:                                      ; preds = %for.body108.lr.ph, %for.body108
  %indvars.iv = phi i64 [ 1, %for.body108.lr.ph ], [ %indvars.iv.next, %for.body108 ]
  %57 = load float*** %t, align 8, !dbg !1470, !tbaa !465
  %arrayidx110 = getelementptr inbounds float** %57, i64 %indvars.iv, !dbg !1470
  %58 = load float** %arrayidx110, align 8, !dbg !1470, !tbaa !465
  %59 = bitcast float* %58 to i8*, !dbg !1470
  %call111 = tail call i64 @fwrite(i8* %59, i64 4, i64 7, %struct._IO_FILE* %fp) #7, !dbg !1470
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1468
  %60 = load i32* %M, align 4, !dbg !1468, !tbaa !460
  %61 = trunc i64 %indvars.iv.next to i32, !dbg !1468
  %cmp106 = icmp slt i32 %61, %60, !dbg !1468
  br i1 %cmp106, label %for.body108, label %for.end114, !dbg !1468

for.end114:                                       ; preds = %if.end70, %for.cond92.preheader, %for.body108, %for.cond104.preheader
  ret void, !dbg !1471
}

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @write_bin_string(%struct._IO_FILE* nocapture %fp, i8* %s) #0 {
entry:
  %len = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !276), !dbg !1472
  call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !277), !dbg !1472
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !278), !dbg !1473
  %cmp = icmp eq i8* %s, null, !dbg !1474
  br i1 %cmp, label %if.else, label %if.then, !dbg !1474

if.then:                                          ; preds = %entry
  %call = call i64 @strlen(i8* %s) #8, !dbg !1475
  %add = add i64 %call, 1, !dbg !1475
  %conv = trunc i64 %add to i32, !dbg !1475
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !278), !dbg !1475
  store i32 %conv, i32* %len, align 4, !dbg !1475, !tbaa !460
  %0 = bitcast i32* %len to i8*, !dbg !1477
  %call1 = call i64 @fwrite(i8* %0, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1477
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !278), !dbg !1478
  %1 = load i32* %len, align 4, !dbg !1478, !tbaa !460
  %conv2 = sext i32 %1 to i64, !dbg !1478
  %call3 = call i64 @fwrite(i8* %s, i64 1, i64 %conv2, %struct._IO_FILE* %fp) #7, !dbg !1478
  br label %if.end, !dbg !1479

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !278), !dbg !1480
  store i32 0, i32* %len, align 4, !dbg !1480, !tbaa !460
  %2 = bitcast i32* %len to i8*, !dbg !1482
  %call4 = call i64 @fwrite(i8* %2, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1482
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1483
}

; Function Attrs: optsize
declare i8* @Strdup(i8*) #3

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @Prob2Score(float, float) #3

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.plan9_s* @read_plan9_binhmm(%struct._IO_FILE* %fp, i32 %version, i32 %swapped) #0 {
entry:
  %M = alloca i32, align 4
  %len = alloca i32, align 4
  %asize = alloca i32, align 4
  %atype = alloca i32, align 4
  %abet = alloca [20 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !317), !dbg !1484
  call void @llvm.dbg.value(metadata !{i32 %version}, i64 0, metadata !318), !dbg !1484
  call void @llvm.dbg.value(metadata !{i32 %swapped}, i64 0, metadata !319), !dbg !1484
  call void @llvm.dbg.declare(metadata !{i32* %M}, metadata !321), !dbg !1485
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !324), !dbg !1486
  call void @llvm.dbg.declare(metadata !{i32* %asize}, metadata !325), !dbg !1487
  call void @llvm.dbg.declare(metadata !{i32* %atype}, metadata !326), !dbg !1488
  call void @llvm.dbg.declare(metadata !{[20 x i8]* %abet}, metadata !327), !dbg !1489
  %0 = bitcast i32* %M to i8*, !dbg !1490
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1490
  %tobool = icmp eq i64 %call, 0, !dbg !1490
  br i1 %tobool, label %return, label %if.end, !dbg !1490

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %asize to i8*, !dbg !1491
  %call1 = call i64 @fread(i8* %1, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1491
  %tobool2 = icmp eq i64 %call1, 0, !dbg !1491
  br i1 %tobool2, label %return, label %if.end4, !dbg !1491

if.end4:                                          ; preds = %if.end
  %tobool5 = icmp ne i32 %swapped, 0, !dbg !1492
  br i1 %tobool5, label %for.body.i, label %if.end7, !dbg !1492

for.body.i:                                       ; preds = %if.end4, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %if.end4 ]
  %2 = sub i64 3, %indvars.iv.i, !dbg !1493
  %arrayidx.i = getelementptr inbounds i8* %0, i64 %2, !dbg !1493
  %3 = load i8* %arrayidx.i, align 1, !dbg !1493, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %3}, i64 0, metadata !1496), !dbg !1493
  %arrayidx3.i = getelementptr inbounds i8* %0, i64 %indvars.iv.i, !dbg !1497
  %4 = load i8* %arrayidx3.i, align 1, !dbg !1497, !tbaa !461
  store i8 %4, i8* %arrayidx.i, align 1, !dbg !1497, !tbaa !461
  store i8 %3, i8* %arrayidx3.i, align 1, !dbg !1498, !tbaa !461
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1499
  %lftr.wideiv604 = trunc i64 %indvars.iv.next.i to i32, !dbg !1499
  %exitcond605 = icmp eq i32 %lftr.wideiv604, 2, !dbg !1499
  br i1 %exitcond605, label %for.body.i560, label %for.body.i, !dbg !1499

for.body.i560:                                    ; preds = %for.body.i, %for.body.i560
  %indvars.iv.i554 = phi i64 [ %indvars.iv.next.i557, %for.body.i560 ], [ 0, %for.body.i ]
  %5 = sub i64 3, %indvars.iv.i554, !dbg !1500
  %arrayidx.i555 = getelementptr inbounds i8* %1, i64 %5, !dbg !1500
  %6 = load i8* %arrayidx.i555, align 1, !dbg !1500, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %6}, i64 0, metadata !1502), !dbg !1500
  %arrayidx3.i556 = getelementptr inbounds i8* %1, i64 %indvars.iv.i554, !dbg !1503
  %7 = load i8* %arrayidx3.i556, align 1, !dbg !1503, !tbaa !461
  store i8 %7, i8* %arrayidx.i555, align 1, !dbg !1503, !tbaa !461
  store i8 %6, i8* %arrayidx3.i556, align 1, !dbg !1504, !tbaa !461
  %indvars.iv.next.i557 = add i64 %indvars.iv.i554, 1, !dbg !1505
  %lftr.wideiv602 = trunc i64 %indvars.iv.next.i557 to i32, !dbg !1505
  %exitcond603 = icmp eq i32 %lftr.wideiv602, 2, !dbg !1505
  br i1 %exitcond603, label %if.end7, label %for.body.i560, !dbg !1505

if.end7:                                          ; preds = %for.body.i560, %if.end4
  call void @llvm.dbg.value(metadata !{i32* %asize}, i64 0, metadata !325), !dbg !1506
  %8 = load i32* %asize, align 4, !dbg !1506, !tbaa !460
  switch i32 %8, label %if.else11 [
    i32 4, label %if.then8
    i32 20, label %if.then10
  ], !dbg !1506

if.then8:                                         ; preds = %if.end7
  call void @llvm.dbg.value(metadata !1507, i64 0, metadata !326), !dbg !1506
  store i32 2, i32* %atype, align 4, !dbg !1506, !tbaa !460
  br label %if.end13, !dbg !1506

if.then10:                                        ; preds = %if.end7
  call void @llvm.dbg.value(metadata !1206, i64 0, metadata !326), !dbg !1508
  store i32 3, i32* %atype, align 4, !dbg !1508, !tbaa !460
  br label %if.end13, !dbg !1508

if.else11:                                        ; preds = %if.end7
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([71 x i8]* @.str60, i64 0, i64 0), i32 %8) #7, !dbg !1509
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.else11, %if.then8
  %9 = phi i32 [ 3, %if.then10 ], [ undef, %if.else11 ], [ 2, %if.then8 ]
  %10 = load i32* @Alphabet_type, align 4, !dbg !1510, !tbaa !460
  %cmp14 = icmp eq i32 %10, 0, !dbg !1510
  call void @llvm.dbg.value(metadata !{i32* %atype}, i64 0, metadata !326), !dbg !1510
  br i1 %cmp14, label %if.then15, label %if.else16, !dbg !1510

if.then15:                                        ; preds = %if.end13
  call void @SetAlphabet(i32 %9) #7, !dbg !1510
  br label %if.end22, !dbg !1510

if.else16:                                        ; preds = %if.end13
  %cmp17 = icmp eq i32 %9, %10, !dbg !1511
  br i1 %cmp17, label %if.end22, label %if.then18, !dbg !1511

if.then18:                                        ; preds = %if.else16
  %call19 = call i8* @AlphabetType2String(i32 %10) #7, !dbg !1512
  call void @llvm.dbg.value(metadata !{i32* %atype}, i64 0, metadata !326), !dbg !1512
  %call20 = call i8* @AlphabetType2String(i32 %9) #7, !dbg !1512
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([89 x i8]* @.str61, i64 0, i64 0), i8* %call19, i8* %call20) #7, !dbg !1512
  br label %if.end22, !dbg !1512

if.end22:                                         ; preds = %if.else16, %if.then18, %if.then15
  call void @llvm.dbg.value(metadata !{i32* %M}, i64 0, metadata !321), !dbg !1513
  %11 = load i32* %M, align 4, !dbg !1513, !tbaa !460
  %call23 = call %struct.plan9_s* @P9AllocHMM(i32 %11) #7, !dbg !1513
  call void @llvm.dbg.value(metadata !{%struct.plan9_s* %call23}, i64 0, metadata !320), !dbg !1513
  %cmp24 = icmp eq %struct.plan9_s* %call23, null, !dbg !1513
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1513

if.then25:                                        ; preds = %if.end22
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([34 x i8]* @.str62, i64 0, i64 0)) #7, !dbg !1514
  br label %if.end26, !dbg !1514

if.end26:                                         ; preds = %if.then25, %if.end22
  %cmp27 = icmp eq i32 %version, 7, !dbg !1515
  br i1 %cmp27, label %if.then28, label %if.end45, !dbg !1515

if.then28:                                        ; preds = %if.end26
  %12 = bitcast i32* %len to i8*, !dbg !1516
  %call29 = call i64 @fread(i8* %12, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1516
  %tobool30 = icmp eq i64 %call29, 0, !dbg !1516
  br i1 %tobool30, label %return, label %if.end32, !dbg !1516

if.end32:                                         ; preds = %if.then28
  br i1 %tobool5, label %for.body.i552, label %if.end35, !dbg !1518

for.body.i552:                                    ; preds = %if.end32, %for.body.i552
  %indvars.iv.i546 = phi i64 [ %indvars.iv.next.i549, %for.body.i552 ], [ 0, %if.end32 ]
  %13 = sub i64 3, %indvars.iv.i546, !dbg !1519
  %arrayidx.i547 = getelementptr inbounds i8* %12, i64 %13, !dbg !1519
  %14 = load i8* %arrayidx.i547, align 1, !dbg !1519, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %14}, i64 0, metadata !1520), !dbg !1519
  %arrayidx3.i548 = getelementptr inbounds i8* %12, i64 %indvars.iv.i546, !dbg !1521
  %15 = load i8* %arrayidx3.i548, align 1, !dbg !1521, !tbaa !461
  store i8 %15, i8* %arrayidx.i547, align 1, !dbg !1521, !tbaa !461
  store i8 %14, i8* %arrayidx3.i548, align 1, !dbg !1522, !tbaa !461
  %indvars.iv.next.i549 = add i64 %indvars.iv.i546, 1, !dbg !1523
  %lftr.wideiv600 = trunc i64 %indvars.iv.next.i549 to i32, !dbg !1523
  %exitcond601 = icmp eq i32 %lftr.wideiv600, 2, !dbg !1523
  br i1 %exitcond601, label %if.end35, label %for.body.i552, !dbg !1523

if.end35:                                         ; preds = %for.body.i552, %if.end32
  %name = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 5, !dbg !1524
  %16 = load i8** %name, align 8, !dbg !1524, !tbaa !465
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !324), !dbg !1524
  %17 = load i32* %len, align 4, !dbg !1524, !tbaa !460
  %add = add nsw i32 %17, 1, !dbg !1524
  %conv = sext i32 %add to i64, !dbg !1524
  %call36 = call i8* @sre_realloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 1475, i8* %16, i64 %conv) #7, !dbg !1524
  store i8* %call36, i8** %name, align 8, !dbg !1524, !tbaa !465
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !324), !dbg !1525
  %conv39 = sext i32 %17 to i64, !dbg !1525
  %call40 = call i64 @fread(i8* %call36, i64 1, i64 %conv39, %struct._IO_FILE* %fp) #7, !dbg !1525
  %tobool41 = icmp eq i64 %call40, 0, !dbg !1525
  br i1 %tobool41, label %return, label %if.end43, !dbg !1525

if.end43:                                         ; preds = %if.end35
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !324), !dbg !1526
  %18 = load i8** %name, align 8, !dbg !1526, !tbaa !465
  %arrayidx = getelementptr inbounds i8* %18, i64 %conv39, !dbg !1526
  store i8 0, i8* %arrayidx, align 1, !dbg !1526, !tbaa !461
  br label %if.end45, !dbg !1527

if.end45:                                         ; preds = %if.end43, %if.end26
  %19 = bitcast i32* %atype to i8*, !dbg !1528
  %call46 = call i64 @fread(i8* %19, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1528
  %tobool47 = icmp eq i64 %call46, 0, !dbg !1528
  br i1 %tobool47, label %return, label %if.end49, !dbg !1528

if.end49:                                         ; preds = %if.end45
  %arraydecay = getelementptr inbounds [20 x i8]* %abet, i64 0, i64 0, !dbg !1529
  %20 = load i32* @Alphabet_size, align 4, !dbg !1529, !tbaa !460
  %conv50 = sext i32 %20 to i64, !dbg !1529
  %call51 = call i64 @fread(i8* %arraydecay, i64 1, i64 %conv50, %struct._IO_FILE* %fp) #7, !dbg !1529
  %tobool52 = icmp eq i64 %call51, 0, !dbg !1529
  br i1 %tobool52, label %return, label %if.end54, !dbg !1529

if.end54:                                         ; preds = %if.end49
  %cmp55 = icmp eq i32 %version, 1, !dbg !1530
  br i1 %cmp55, label %if.end61.thread, label %if.end61, !dbg !1530

if.end61.thread:                                  ; preds = %if.end54
  %21 = load i32* @Alphabet_size, align 4, !dbg !1531, !tbaa !460
  %conv58 = sext i32 %21 to i64, !dbg !1531
  %mul59 = shl nsw i64 %conv58, 2, !dbg !1531
  %call60 = call i32 @fseek(%struct._IO_FILE* %fp, i64 %mul59, i32 1) #7, !dbg !1531
  br label %if.end105, !dbg !1532

if.end61:                                         ; preds = %if.end54
  %22 = and i32 %version, -3, !dbg !1532
  %23 = icmp eq i32 %22, 5, !dbg !1532
  br i1 %23, label %if.then66, label %if.end105, !dbg !1532

if.then66:                                        ; preds = %if.end61
  %flags = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 9, !dbg !1533
  %24 = bitcast i32* %flags to i8*, !dbg !1533
  %call67 = call i64 @fread(i8* %24, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1533
  %tobool68 = icmp eq i64 %call67, 0, !dbg !1533
  br i1 %tobool68, label %return, label %if.end70, !dbg !1533

if.end70:                                         ; preds = %if.then66
  br i1 %tobool5, label %for.body.i544, label %if.end74, !dbg !1535

for.body.i544:                                    ; preds = %if.end70, %for.body.i544
  %indvars.iv.i538 = phi i64 [ %indvars.iv.next.i541, %for.body.i544 ], [ 0, %if.end70 ]
  %25 = sub i64 3, %indvars.iv.i538, !dbg !1536
  %arrayidx.i539 = getelementptr inbounds i8* %24, i64 %25, !dbg !1536
  %26 = load i8* %arrayidx.i539, align 1, !dbg !1536, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %26}, i64 0, metadata !1537), !dbg !1536
  %arrayidx3.i540 = getelementptr inbounds i8* %24, i64 %indvars.iv.i538, !dbg !1538
  %27 = load i8* %arrayidx3.i540, align 1, !dbg !1538, !tbaa !461
  store i8 %27, i8* %arrayidx.i539, align 1, !dbg !1538, !tbaa !461
  store i8 %26, i8* %arrayidx3.i540, align 1, !dbg !1539, !tbaa !461
  %indvars.iv.next.i541 = add i64 %indvars.iv.i538, 1, !dbg !1540
  %lftr.wideiv598 = trunc i64 %indvars.iv.next.i541 to i32, !dbg !1540
  %exitcond599 = icmp eq i32 %lftr.wideiv598, 2, !dbg !1540
  br i1 %exitcond599, label %if.end74, label %for.body.i544, !dbg !1540

if.end74:                                         ; preds = %for.body.i544, %if.end70
  %28 = load i32* %flags, align 4, !dbg !1541, !tbaa !460
  %and = and i32 %28, 1, !dbg !1541
  %tobool76 = icmp eq i32 %and, 0, !dbg !1541
  br i1 %tobool76, label %if.end74.if.end83_crit_edge, label %land.lhs.true, !dbg !1541

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  %M84.pre = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 0, !dbg !1542
  %ref87.pre = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 6, !dbg !1542
  br label %if.end83, !dbg !1541

land.lhs.true:                                    ; preds = %if.end74
  %ref = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 6, !dbg !1543
  %29 = load i8** %ref, align 8, !dbg !1543, !tbaa !465
  %M77 = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 0, !dbg !1543
  %30 = load i32* %M77, align 4, !dbg !1543, !tbaa !460
  %add78 = add nsw i32 %30, 1, !dbg !1543
  %conv79 = sext i32 %add78 to i64, !dbg !1543
  %call80 = call i64 @fread(i8* %29, i64 1, i64 %conv79, %struct._IO_FILE* %fp) #7, !dbg !1543
  %tobool81 = icmp eq i64 %call80, 0, !dbg !1543
  br i1 %tobool81, label %return, label %if.end83, !dbg !1543

if.end83:                                         ; preds = %if.end74.if.end83_crit_edge, %land.lhs.true
  %ref87.pre-phi = phi i8** [ %ref87.pre, %if.end74.if.end83_crit_edge ], [ %ref, %land.lhs.true ], !dbg !1542
  %M84.pre-phi = phi i32* [ %M84.pre, %if.end74.if.end83_crit_edge ], [ %M77, %land.lhs.true ], !dbg !1542
  %31 = load i32* %M84.pre-phi, align 4, !dbg !1542, !tbaa !460
  %add85 = add nsw i32 %31, 1, !dbg !1542
  %idxprom86 = sext i32 %add85 to i64, !dbg !1542
  %32 = load i8** %ref87.pre-phi, align 8, !dbg !1542, !tbaa !465
  %arrayidx88 = getelementptr inbounds i8* %32, i64 %idxprom86, !dbg !1542
  store i8 0, i8* %arrayidx88, align 1, !dbg !1542, !tbaa !461
  %33 = load i32* %flags, align 4, !dbg !1544, !tbaa !460
  %and90 = and i32 %33, 2, !dbg !1544
  %tobool91 = icmp eq i32 %and90, 0, !dbg !1544
  %cs103.pre = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 7, !dbg !1545
  br i1 %tobool91, label %if.end99, label %land.lhs.true92, !dbg !1544

land.lhs.true92:                                  ; preds = %if.end83
  %34 = load i8** %cs103.pre, align 8, !dbg !1546, !tbaa !465
  %35 = load i32* %M84.pre-phi, align 4, !dbg !1546, !tbaa !460
  %add94 = add nsw i32 %35, 1, !dbg !1546
  %conv95 = sext i32 %add94 to i64, !dbg !1546
  %call96 = call i64 @fread(i8* %34, i64 1, i64 %conv95, %struct._IO_FILE* %fp) #7, !dbg !1546
  %tobool97 = icmp eq i64 %call96, 0, !dbg !1546
  br i1 %tobool97, label %return, label %if.end99, !dbg !1546

if.end99:                                         ; preds = %if.end83, %land.lhs.true92
  %36 = load i32* %M84.pre-phi, align 4, !dbg !1545, !tbaa !460
  %add101 = add nsw i32 %36, 1, !dbg !1545
  %idxprom102 = sext i32 %add101 to i64, !dbg !1545
  %37 = load i8** %cs103.pre, align 8, !dbg !1545, !tbaa !465
  %arrayidx104 = getelementptr inbounds i8* %37, i64 %idxprom102, !dbg !1545
  store i8 0, i8* %arrayidx104, align 1, !dbg !1545, !tbaa !461
  br label %if.end105, !dbg !1547

if.end105:                                        ; preds = %if.end61.thread, %if.end61, %if.end99
  %null = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 4, !dbg !1548
  br i1 %cmp27, label %if.then108, label %if.else123, !dbg !1550

if.then108:                                       ; preds = %if.end105
  %38 = bitcast [20 x float]* %null to i8*, !dbg !1548
  %39 = load i32* @Alphabet_size, align 4, !dbg !1548, !tbaa !460
  %conv110 = sext i32 %39 to i64, !dbg !1548
  %call111 = call i64 @fread(i8* %38, i64 4, i64 %conv110, %struct._IO_FILE* %fp) #7, !dbg !1548
  %tobool112 = icmp eq i64 %call111, 0, !dbg !1548
  br i1 %tobool112, label %return, label %if.end114, !dbg !1548

if.end114:                                        ; preds = %if.then108
  %40 = load i32* @Alphabet_size, align 4, !dbg !1551, !tbaa !460
  %cmp117568 = icmp sgt i32 %40, 0, !dbg !1551
  %or.cond = and i1 %tobool5, %cmp117568, !dbg !1553
  br i1 %or.cond, label %for.body, label %for.cond127.preheader, !dbg !1553

for.body:                                         ; preds = %if.end114, %byteswap.exit537
  %indvars.iv596 = phi i64 [ %indvars.iv.next597, %byteswap.exit537 ], [ 0, %if.end114 ]
  %arrayidx121 = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 4, i64 %indvars.iv596, !dbg !1554
  %41 = bitcast float* %arrayidx121 to i8*, !dbg !1554
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !1555), !dbg !1556
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1557), !dbg !1558
  br label %for.body.i536, !dbg !1558

for.body.i536:                                    ; preds = %for.body.i536, %for.body
  %indvars.iv.i530 = phi i64 [ 0, %for.body ], [ %indvars.iv.next.i533, %for.body.i536 ]
  %42 = sub i64 3, %indvars.iv.i530, !dbg !1559
  %arrayidx.i531 = getelementptr inbounds i8* %41, i64 %42, !dbg !1559
  %43 = load i8* %arrayidx.i531, align 1, !dbg !1559, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %43}, i64 0, metadata !1560), !dbg !1559
  %arrayidx3.i532 = getelementptr inbounds i8* %41, i64 %indvars.iv.i530, !dbg !1561
  %44 = load i8* %arrayidx3.i532, align 1, !dbg !1561, !tbaa !461
  store i8 %44, i8* %arrayidx.i531, align 1, !dbg !1561, !tbaa !461
  store i8 %43, i8* %arrayidx3.i532, align 1, !dbg !1562, !tbaa !461
  %indvars.iv.next.i533 = add i64 %indvars.iv.i530, 1, !dbg !1558
  %lftr.wideiv594 = trunc i64 %indvars.iv.next.i533 to i32, !dbg !1558
  %exitcond595 = icmp eq i32 %lftr.wideiv594, 2, !dbg !1558
  br i1 %exitcond595, label %byteswap.exit537, label %for.body.i536, !dbg !1558

byteswap.exit537:                                 ; preds = %for.body.i536
  %indvars.iv.next597 = add i64 %indvars.iv596, 1, !dbg !1551
  %45 = load i32* @Alphabet_size, align 4, !dbg !1551, !tbaa !460
  %46 = trunc i64 %indvars.iv.next597 to i32, !dbg !1551
  %cmp117 = icmp slt i32 %46, %45, !dbg !1551
  br i1 %cmp117, label %for.body, label %for.cond127.preheader, !dbg !1551

if.else123:                                       ; preds = %if.end105
  %arraydecay109 = getelementptr inbounds [20 x float]* %null, i64 0, i64 0, !dbg !1548
  call void @P9DefaultNullModel(float* %arraydecay109) #7, !dbg !1563
  br label %for.cond127.preheader

for.cond127.preheader:                            ; preds = %byteswap.exit537, %if.end114, %if.else123
  %M128 = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 0, !dbg !1564
  %47 = load i32* %M128, align 4, !dbg !1564, !tbaa !460
  %cmp129566 = icmp slt i32 %47, 0, !dbg !1564
  br i1 %cmp129566, label %for.end331, label %for.body131.lr.ph, !dbg !1564

for.body131.lr.ph:                                ; preds = %for.cond127.preheader
  %mat = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 2, !dbg !1566
  %del = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 3, !dbg !1568
  %ins = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 1, !dbg !1569
  br label %for.body131, !dbg !1564

for.body131:                                      ; preds = %for.inc329, %for.body131.lr.ph
  %indvars.iv592 = phi i64 [ %indvars.iv.next593, %for.inc329 ], [ 0, %for.body131.lr.ph ]
  %48 = load %struct.basic_state** %mat, align 8, !dbg !1566, !tbaa !465
  %arrayidx134 = getelementptr inbounds %struct.basic_state* %48, i64 %indvars.iv592, i32 0, i64 0, !dbg !1566
  %49 = bitcast float* %arrayidx134 to i8*, !dbg !1566
  %call135 = call i64 @fread(i8* %49, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1566
  %tobool136 = icmp eq i64 %call135, 0, !dbg !1566
  br i1 %tobool136, label %return, label %if.end138, !dbg !1566

if.end138:                                        ; preds = %for.body131
  %50 = load %struct.basic_state** %mat, align 8, !dbg !1570, !tbaa !465
  %arrayidx143 = getelementptr inbounds %struct.basic_state* %50, i64 %indvars.iv592, i32 0, i64 2, !dbg !1570
  %51 = bitcast float* %arrayidx143 to i8*, !dbg !1570
  %call144 = call i64 @fread(i8* %51, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1570
  %tobool145 = icmp eq i64 %call144, 0, !dbg !1570
  br i1 %tobool145, label %return, label %if.end147, !dbg !1570

if.end147:                                        ; preds = %if.end138
  %52 = load %struct.basic_state** %mat, align 8, !dbg !1571, !tbaa !465
  %arrayidx152 = getelementptr inbounds %struct.basic_state* %52, i64 %indvars.iv592, i32 0, i64 1, !dbg !1571
  %53 = bitcast float* %arrayidx152 to i8*, !dbg !1571
  %call153 = call i64 @fread(i8* %53, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1571
  %tobool154 = icmp eq i64 %call153, 0, !dbg !1571
  br i1 %tobool154, label %return, label %if.end156, !dbg !1571

if.end156:                                        ; preds = %if.end147
  %54 = load %struct.basic_state** %mat, align 8, !dbg !1572, !tbaa !465
  %arraydecay160 = getelementptr inbounds %struct.basic_state* %54, i64 %indvars.iv592, i32 1, i64 0, !dbg !1572
  %55 = bitcast float* %arraydecay160 to i8*, !dbg !1572
  %56 = load i32* @Alphabet_size, align 4, !dbg !1572, !tbaa !460
  %conv161 = sext i32 %56 to i64, !dbg !1572
  %call162 = call i64 @fread(i8* %55, i64 4, i64 %conv161, %struct._IO_FILE* %fp) #7, !dbg !1572
  %tobool163 = icmp eq i64 %call162, 0, !dbg !1572
  br i1 %tobool163, label %return, label %if.end165, !dbg !1572

if.end165:                                        ; preds = %if.end156
  br i1 %tobool5, label %if.then167, label %if.end196, !dbg !1573

if.then167:                                       ; preds = %if.end165
  %57 = load %struct.basic_state** %mat, align 8, !dbg !1574, !tbaa !465
  %arrayidx172 = getelementptr inbounds %struct.basic_state* %57, i64 %indvars.iv592, i32 0, i64 0, !dbg !1574
  %58 = bitcast float* %arrayidx172 to i8*, !dbg !1574
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !1576), !dbg !1577
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1578), !dbg !1579
  br label %for.body.i528, !dbg !1579

for.body.i528:                                    ; preds = %for.body.i528, %if.then167
  %indvars.iv.i522 = phi i64 [ 0, %if.then167 ], [ %indvars.iv.next.i525, %for.body.i528 ]
  %59 = sub i64 3, %indvars.iv.i522, !dbg !1580
  %arrayidx.i523 = getelementptr inbounds i8* %58, i64 %59, !dbg !1580
  %60 = load i8* %arrayidx.i523, align 1, !dbg !1580, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %60}, i64 0, metadata !1581), !dbg !1580
  %arrayidx3.i524 = getelementptr inbounds i8* %58, i64 %indvars.iv.i522, !dbg !1582
  %61 = load i8* %arrayidx3.i524, align 1, !dbg !1582, !tbaa !461
  store i8 %61, i8* %arrayidx.i523, align 1, !dbg !1582, !tbaa !461
  store i8 %60, i8* %arrayidx3.i524, align 1, !dbg !1583, !tbaa !461
  %indvars.iv.next.i525 = add i64 %indvars.iv.i522, 1, !dbg !1579
  %lftr.wideiv = trunc i64 %indvars.iv.next.i525 to i32, !dbg !1579
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !1579
  br i1 %exitcond, label %byteswap.exit529, label %for.body.i528, !dbg !1579

byteswap.exit529:                                 ; preds = %for.body.i528
  %62 = load %struct.basic_state** %mat, align 8, !dbg !1584, !tbaa !465
  %arrayidx177 = getelementptr inbounds %struct.basic_state* %62, i64 %indvars.iv592, i32 0, i64 2, !dbg !1584
  %63 = bitcast float* %arrayidx177 to i8*, !dbg !1584
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !1585), !dbg !1586
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1587), !dbg !1588
  br label %for.body.i520, !dbg !1588

for.body.i520:                                    ; preds = %for.body.i520, %byteswap.exit529
  %indvars.iv.i514 = phi i64 [ 0, %byteswap.exit529 ], [ %indvars.iv.next.i517, %for.body.i520 ]
  %64 = sub i64 3, %indvars.iv.i514, !dbg !1589
  %arrayidx.i515 = getelementptr inbounds i8* %63, i64 %64, !dbg !1589
  %65 = load i8* %arrayidx.i515, align 1, !dbg !1589, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %65}, i64 0, metadata !1590), !dbg !1589
  %arrayidx3.i516 = getelementptr inbounds i8* %63, i64 %indvars.iv.i514, !dbg !1591
  %66 = load i8* %arrayidx3.i516, align 1, !dbg !1591, !tbaa !461
  store i8 %66, i8* %arrayidx.i515, align 1, !dbg !1591, !tbaa !461
  store i8 %65, i8* %arrayidx3.i516, align 1, !dbg !1592, !tbaa !461
  %indvars.iv.next.i517 = add i64 %indvars.iv.i514, 1, !dbg !1588
  %lftr.wideiv570 = trunc i64 %indvars.iv.next.i517 to i32, !dbg !1588
  %exitcond571 = icmp eq i32 %lftr.wideiv570, 2, !dbg !1588
  br i1 %exitcond571, label %byteswap.exit521, label %for.body.i520, !dbg !1588

byteswap.exit521:                                 ; preds = %for.body.i520
  %67 = load %struct.basic_state** %mat, align 8, !dbg !1593, !tbaa !465
  %arrayidx182 = getelementptr inbounds %struct.basic_state* %67, i64 %indvars.iv592, i32 0, i64 1, !dbg !1593
  %68 = bitcast float* %arrayidx182 to i8*, !dbg !1593
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !1594), !dbg !1595
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1596), !dbg !1597
  br label %for.body.i512, !dbg !1597

for.body.i512:                                    ; preds = %for.body.i512, %byteswap.exit521
  %indvars.iv.i506 = phi i64 [ 0, %byteswap.exit521 ], [ %indvars.iv.next.i509, %for.body.i512 ]
  %69 = sub i64 3, %indvars.iv.i506, !dbg !1598
  %arrayidx.i507 = getelementptr inbounds i8* %68, i64 %69, !dbg !1598
  %70 = load i8* %arrayidx.i507, align 1, !dbg !1598, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %70}, i64 0, metadata !1599), !dbg !1598
  %arrayidx3.i508 = getelementptr inbounds i8* %68, i64 %indvars.iv.i506, !dbg !1600
  %71 = load i8* %arrayidx3.i508, align 1, !dbg !1600, !tbaa !461
  store i8 %71, i8* %arrayidx.i507, align 1, !dbg !1600, !tbaa !461
  store i8 %70, i8* %arrayidx3.i508, align 1, !dbg !1601, !tbaa !461
  %indvars.iv.next.i509 = add i64 %indvars.iv.i506, 1, !dbg !1597
  %lftr.wideiv572 = trunc i64 %indvars.iv.next.i509 to i32, !dbg !1597
  %exitcond573 = icmp eq i32 %lftr.wideiv572, 2, !dbg !1597
  br i1 %exitcond573, label %for.cond183.loopexit, label %for.body.i512, !dbg !1597

for.cond183.loopexit:                             ; preds = %for.body.i512
  %72 = load i32* @Alphabet_size, align 4, !dbg !1602, !tbaa !460
  %cmp184562 = icmp sgt i32 %72, 0, !dbg !1602
  br i1 %cmp184562, label %for.body186, label %if.end196, !dbg !1602

for.body186:                                      ; preds = %for.cond183.loopexit, %byteswap.exit505
  %indvars.iv = phi i64 [ %indvars.iv.next, %byteswap.exit505 ], [ 0, %for.cond183.loopexit ]
  %73 = load %struct.basic_state** %mat, align 8, !dbg !1604, !tbaa !465
  %arrayidx192 = getelementptr inbounds %struct.basic_state* %73, i64 %indvars.iv592, i32 1, i64 %indvars.iv, !dbg !1604
  %74 = bitcast float* %arrayidx192 to i8*, !dbg !1604
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !1605), !dbg !1606
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1607), !dbg !1608
  br label %for.body.i504, !dbg !1608

for.body.i504:                                    ; preds = %for.body.i504, %for.body186
  %indvars.iv.i498 = phi i64 [ 0, %for.body186 ], [ %indvars.iv.next.i501, %for.body.i504 ]
  %75 = sub i64 3, %indvars.iv.i498, !dbg !1609
  %arrayidx.i499 = getelementptr inbounds i8* %74, i64 %75, !dbg !1609
  %76 = load i8* %arrayidx.i499, align 1, !dbg !1609, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %76}, i64 0, metadata !1610), !dbg !1609
  %arrayidx3.i500 = getelementptr inbounds i8* %74, i64 %indvars.iv.i498, !dbg !1611
  %77 = load i8* %arrayidx3.i500, align 1, !dbg !1611, !tbaa !461
  store i8 %77, i8* %arrayidx.i499, align 1, !dbg !1611, !tbaa !461
  store i8 %76, i8* %arrayidx3.i500, align 1, !dbg !1612, !tbaa !461
  %indvars.iv.next.i501 = add i64 %indvars.iv.i498, 1, !dbg !1608
  %lftr.wideiv574 = trunc i64 %indvars.iv.next.i501 to i32, !dbg !1608
  %exitcond575 = icmp eq i32 %lftr.wideiv574, 2, !dbg !1608
  br i1 %exitcond575, label %byteswap.exit505, label %for.body.i504, !dbg !1608

byteswap.exit505:                                 ; preds = %for.body.i504
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1602
  %78 = load i32* @Alphabet_size, align 4, !dbg !1602, !tbaa !460
  %79 = trunc i64 %indvars.iv.next to i32, !dbg !1602
  %cmp184 = icmp slt i32 %79, %78, !dbg !1602
  br i1 %cmp184, label %for.body186, label %if.end196, !dbg !1602

if.end196:                                        ; preds = %for.cond183.loopexit, %byteswap.exit505, %if.end165
  br i1 %cmp55, label %if.then199, label %if.end204, !dbg !1613

if.then199:                                       ; preds = %if.end196
  %80 = load i32* @Alphabet_size, align 4, !dbg !1614, !tbaa !460
  %add200 = add nsw i32 %80, 3, !dbg !1614
  %conv201 = sext i32 %add200 to i64, !dbg !1614
  %mul202 = shl nsw i64 %conv201, 2, !dbg !1614
  %call203 = call i32 @fseek(%struct._IO_FILE* %fp, i64 %mul202, i32 1) #7, !dbg !1614
  br label %if.end204, !dbg !1614

if.end204:                                        ; preds = %if.then199, %if.end196
  %81 = load %struct.basic_state** %del, align 8, !dbg !1568, !tbaa !465
  %arrayidx208 = getelementptr inbounds %struct.basic_state* %81, i64 %indvars.iv592, i32 0, i64 0, !dbg !1568
  %82 = bitcast float* %arrayidx208 to i8*, !dbg !1568
  %call209 = call i64 @fread(i8* %82, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1568
  %tobool210 = icmp eq i64 %call209, 0, !dbg !1568
  br i1 %tobool210, label %return, label %if.end212, !dbg !1568

if.end212:                                        ; preds = %if.end204
  %83 = load %struct.basic_state** %del, align 8, !dbg !1615, !tbaa !465
  %arrayidx217 = getelementptr inbounds %struct.basic_state* %83, i64 %indvars.iv592, i32 0, i64 2, !dbg !1615
  %84 = bitcast float* %arrayidx217 to i8*, !dbg !1615
  %call218 = call i64 @fread(i8* %84, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1615
  %tobool219 = icmp eq i64 %call218, 0, !dbg !1615
  br i1 %tobool219, label %return, label %if.end221, !dbg !1615

if.end221:                                        ; preds = %if.end212
  %85 = load %struct.basic_state** %del, align 8, !dbg !1616, !tbaa !465
  %arrayidx226 = getelementptr inbounds %struct.basic_state* %85, i64 %indvars.iv592, i32 0, i64 1, !dbg !1616
  %86 = bitcast float* %arrayidx226 to i8*, !dbg !1616
  %call227 = call i64 @fread(i8* %86, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1616
  %tobool228 = icmp eq i64 %call227, 0, !dbg !1616
  br i1 %tobool228, label %return, label %if.end230, !dbg !1616

if.end230:                                        ; preds = %if.end221
  br i1 %tobool5, label %if.then232, label %if.end248, !dbg !1617

if.then232:                                       ; preds = %if.end230
  %87 = load %struct.basic_state** %del, align 8, !dbg !1618, !tbaa !465
  %arrayidx237 = getelementptr inbounds %struct.basic_state* %87, i64 %indvars.iv592, i32 0, i64 0, !dbg !1618
  %88 = bitcast float* %arrayidx237 to i8*, !dbg !1618
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !1620), !dbg !1621
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1622), !dbg !1623
  br label %for.body.i496, !dbg !1623

for.body.i496:                                    ; preds = %for.body.i496, %if.then232
  %indvars.iv.i490 = phi i64 [ 0, %if.then232 ], [ %indvars.iv.next.i493, %for.body.i496 ]
  %89 = sub i64 3, %indvars.iv.i490, !dbg !1624
  %arrayidx.i491 = getelementptr inbounds i8* %88, i64 %89, !dbg !1624
  %90 = load i8* %arrayidx.i491, align 1, !dbg !1624, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %90}, i64 0, metadata !1625), !dbg !1624
  %arrayidx3.i492 = getelementptr inbounds i8* %88, i64 %indvars.iv.i490, !dbg !1626
  %91 = load i8* %arrayidx3.i492, align 1, !dbg !1626, !tbaa !461
  store i8 %91, i8* %arrayidx.i491, align 1, !dbg !1626, !tbaa !461
  store i8 %90, i8* %arrayidx3.i492, align 1, !dbg !1627, !tbaa !461
  %indvars.iv.next.i493 = add i64 %indvars.iv.i490, 1, !dbg !1623
  %lftr.wideiv576 = trunc i64 %indvars.iv.next.i493 to i32, !dbg !1623
  %exitcond577 = icmp eq i32 %lftr.wideiv576, 2, !dbg !1623
  br i1 %exitcond577, label %byteswap.exit497, label %for.body.i496, !dbg !1623

byteswap.exit497:                                 ; preds = %for.body.i496
  %92 = load %struct.basic_state** %del, align 8, !dbg !1628, !tbaa !465
  %arrayidx242 = getelementptr inbounds %struct.basic_state* %92, i64 %indvars.iv592, i32 0, i64 2, !dbg !1628
  %93 = bitcast float* %arrayidx242 to i8*, !dbg !1628
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !1629), !dbg !1630
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1631), !dbg !1632
  br label %for.body.i488, !dbg !1632

for.body.i488:                                    ; preds = %for.body.i488, %byteswap.exit497
  %indvars.iv.i482 = phi i64 [ 0, %byteswap.exit497 ], [ %indvars.iv.next.i485, %for.body.i488 ]
  %94 = sub i64 3, %indvars.iv.i482, !dbg !1633
  %arrayidx.i483 = getelementptr inbounds i8* %93, i64 %94, !dbg !1633
  %95 = load i8* %arrayidx.i483, align 1, !dbg !1633, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %95}, i64 0, metadata !1634), !dbg !1633
  %arrayidx3.i484 = getelementptr inbounds i8* %93, i64 %indvars.iv.i482, !dbg !1635
  %96 = load i8* %arrayidx3.i484, align 1, !dbg !1635, !tbaa !461
  store i8 %96, i8* %arrayidx.i483, align 1, !dbg !1635, !tbaa !461
  store i8 %95, i8* %arrayidx3.i484, align 1, !dbg !1636, !tbaa !461
  %indvars.iv.next.i485 = add i64 %indvars.iv.i482, 1, !dbg !1632
  %lftr.wideiv578 = trunc i64 %indvars.iv.next.i485 to i32, !dbg !1632
  %exitcond579 = icmp eq i32 %lftr.wideiv578, 2, !dbg !1632
  br i1 %exitcond579, label %byteswap.exit489, label %for.body.i488, !dbg !1632

byteswap.exit489:                                 ; preds = %for.body.i488
  %97 = load %struct.basic_state** %del, align 8, !dbg !1637, !tbaa !465
  %arrayidx247 = getelementptr inbounds %struct.basic_state* %97, i64 %indvars.iv592, i32 0, i64 1, !dbg !1637
  %98 = bitcast float* %arrayidx247 to i8*, !dbg !1637
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !1638), !dbg !1639
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1640), !dbg !1641
  br label %for.body.i480, !dbg !1641

for.body.i480:                                    ; preds = %for.body.i480, %byteswap.exit489
  %indvars.iv.i474 = phi i64 [ 0, %byteswap.exit489 ], [ %indvars.iv.next.i477, %for.body.i480 ]
  %99 = sub i64 3, %indvars.iv.i474, !dbg !1642
  %arrayidx.i475 = getelementptr inbounds i8* %98, i64 %99, !dbg !1642
  %100 = load i8* %arrayidx.i475, align 1, !dbg !1642, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %100}, i64 0, metadata !1643), !dbg !1642
  %arrayidx3.i476 = getelementptr inbounds i8* %98, i64 %indvars.iv.i474, !dbg !1644
  %101 = load i8* %arrayidx3.i476, align 1, !dbg !1644, !tbaa !461
  store i8 %101, i8* %arrayidx.i475, align 1, !dbg !1644, !tbaa !461
  store i8 %100, i8* %arrayidx3.i476, align 1, !dbg !1645, !tbaa !461
  %indvars.iv.next.i477 = add i64 %indvars.iv.i474, 1, !dbg !1641
  %lftr.wideiv580 = trunc i64 %indvars.iv.next.i477 to i32, !dbg !1641
  %exitcond581 = icmp eq i32 %lftr.wideiv580, 2, !dbg !1641
  br i1 %exitcond581, label %if.end248, label %for.body.i480, !dbg !1641

if.end248:                                        ; preds = %for.body.i480, %if.end230
  br i1 %cmp55, label %if.then251, label %if.end253, !dbg !1646

if.then251:                                       ; preds = %if.end248
  %call252 = call i32 @fseek(%struct._IO_FILE* %fp, i64 12, i32 1) #7, !dbg !1647
  br label %if.end253, !dbg !1647

if.end253:                                        ; preds = %if.then251, %if.end248
  %102 = load %struct.basic_state** %ins, align 8, !dbg !1569, !tbaa !465
  %arrayidx257 = getelementptr inbounds %struct.basic_state* %102, i64 %indvars.iv592, i32 0, i64 0, !dbg !1569
  %103 = bitcast float* %arrayidx257 to i8*, !dbg !1569
  %call258 = call i64 @fread(i8* %103, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1569
  %tobool259 = icmp eq i64 %call258, 0, !dbg !1569
  br i1 %tobool259, label %return, label %if.end261, !dbg !1569

if.end261:                                        ; preds = %if.end253
  %104 = load %struct.basic_state** %ins, align 8, !dbg !1648, !tbaa !465
  %arrayidx266 = getelementptr inbounds %struct.basic_state* %104, i64 %indvars.iv592, i32 0, i64 2, !dbg !1648
  %105 = bitcast float* %arrayidx266 to i8*, !dbg !1648
  %call267 = call i64 @fread(i8* %105, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1648
  %tobool268 = icmp eq i64 %call267, 0, !dbg !1648
  br i1 %tobool268, label %return, label %if.end270, !dbg !1648

if.end270:                                        ; preds = %if.end261
  %106 = load %struct.basic_state** %ins, align 8, !dbg !1649, !tbaa !465
  %arrayidx275 = getelementptr inbounds %struct.basic_state* %106, i64 %indvars.iv592, i32 0, i64 1, !dbg !1649
  %107 = bitcast float* %arrayidx275 to i8*, !dbg !1649
  %call276 = call i64 @fread(i8* %107, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1649
  %tobool277 = icmp eq i64 %call276, 0, !dbg !1649
  br i1 %tobool277, label %return, label %if.end279, !dbg !1649

if.end279:                                        ; preds = %if.end270
  %108 = load %struct.basic_state** %ins, align 8, !dbg !1650, !tbaa !465
  %arraydecay284 = getelementptr inbounds %struct.basic_state* %108, i64 %indvars.iv592, i32 1, i64 0, !dbg !1650
  %109 = bitcast float* %arraydecay284 to i8*, !dbg !1650
  %110 = load i32* @Alphabet_size, align 4, !dbg !1650, !tbaa !460
  %conv285 = sext i32 %110 to i64, !dbg !1650
  %call286 = call i64 @fread(i8* %109, i64 4, i64 %conv285, %struct._IO_FILE* %fp) #7, !dbg !1650
  %tobool287 = icmp eq i64 %call286, 0, !dbg !1650
  br i1 %tobool287, label %return, label %if.end289, !dbg !1650

if.end289:                                        ; preds = %if.end279
  br i1 %tobool5, label %if.then291, label %if.end320, !dbg !1651

if.then291:                                       ; preds = %if.end289
  %111 = load %struct.basic_state** %ins, align 8, !dbg !1652, !tbaa !465
  %arrayidx296 = getelementptr inbounds %struct.basic_state* %111, i64 %indvars.iv592, i32 0, i64 0, !dbg !1652
  %112 = bitcast float* %arrayidx296 to i8*, !dbg !1652
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !1654), !dbg !1655
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1656), !dbg !1657
  br label %for.body.i472, !dbg !1657

for.body.i472:                                    ; preds = %for.body.i472, %if.then291
  %indvars.iv.i466 = phi i64 [ 0, %if.then291 ], [ %indvars.iv.next.i469, %for.body.i472 ]
  %113 = sub i64 3, %indvars.iv.i466, !dbg !1658
  %arrayidx.i467 = getelementptr inbounds i8* %112, i64 %113, !dbg !1658
  %114 = load i8* %arrayidx.i467, align 1, !dbg !1658, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %114}, i64 0, metadata !1659), !dbg !1658
  %arrayidx3.i468 = getelementptr inbounds i8* %112, i64 %indvars.iv.i466, !dbg !1660
  %115 = load i8* %arrayidx3.i468, align 1, !dbg !1660, !tbaa !461
  store i8 %115, i8* %arrayidx.i467, align 1, !dbg !1660, !tbaa !461
  store i8 %114, i8* %arrayidx3.i468, align 1, !dbg !1661, !tbaa !461
  %indvars.iv.next.i469 = add i64 %indvars.iv.i466, 1, !dbg !1657
  %lftr.wideiv582 = trunc i64 %indvars.iv.next.i469 to i32, !dbg !1657
  %exitcond583 = icmp eq i32 %lftr.wideiv582, 2, !dbg !1657
  br i1 %exitcond583, label %byteswap.exit473, label %for.body.i472, !dbg !1657

byteswap.exit473:                                 ; preds = %for.body.i472
  %116 = load %struct.basic_state** %ins, align 8, !dbg !1662, !tbaa !465
  %arrayidx301 = getelementptr inbounds %struct.basic_state* %116, i64 %indvars.iv592, i32 0, i64 2, !dbg !1662
  %117 = bitcast float* %arrayidx301 to i8*, !dbg !1662
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !1663), !dbg !1664
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1665), !dbg !1666
  br label %for.body.i464, !dbg !1666

for.body.i464:                                    ; preds = %for.body.i464, %byteswap.exit473
  %indvars.iv.i458 = phi i64 [ 0, %byteswap.exit473 ], [ %indvars.iv.next.i461, %for.body.i464 ]
  %118 = sub i64 3, %indvars.iv.i458, !dbg !1667
  %arrayidx.i459 = getelementptr inbounds i8* %117, i64 %118, !dbg !1667
  %119 = load i8* %arrayidx.i459, align 1, !dbg !1667, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %119}, i64 0, metadata !1668), !dbg !1667
  %arrayidx3.i460 = getelementptr inbounds i8* %117, i64 %indvars.iv.i458, !dbg !1669
  %120 = load i8* %arrayidx3.i460, align 1, !dbg !1669, !tbaa !461
  store i8 %120, i8* %arrayidx.i459, align 1, !dbg !1669, !tbaa !461
  store i8 %119, i8* %arrayidx3.i460, align 1, !dbg !1670, !tbaa !461
  %indvars.iv.next.i461 = add i64 %indvars.iv.i458, 1, !dbg !1666
  %lftr.wideiv584 = trunc i64 %indvars.iv.next.i461 to i32, !dbg !1666
  %exitcond585 = icmp eq i32 %lftr.wideiv584, 2, !dbg !1666
  br i1 %exitcond585, label %byteswap.exit465, label %for.body.i464, !dbg !1666

byteswap.exit465:                                 ; preds = %for.body.i464
  %121 = load %struct.basic_state** %ins, align 8, !dbg !1671, !tbaa !465
  %arrayidx306 = getelementptr inbounds %struct.basic_state* %121, i64 %indvars.iv592, i32 0, i64 1, !dbg !1671
  %122 = bitcast float* %arrayidx306 to i8*, !dbg !1671
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !1672), !dbg !1673
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1674), !dbg !1675
  br label %for.body.i456, !dbg !1675

for.body.i456:                                    ; preds = %for.body.i456, %byteswap.exit465
  %indvars.iv.i450 = phi i64 [ 0, %byteswap.exit465 ], [ %indvars.iv.next.i453, %for.body.i456 ]
  %123 = sub i64 3, %indvars.iv.i450, !dbg !1676
  %arrayidx.i451 = getelementptr inbounds i8* %122, i64 %123, !dbg !1676
  %124 = load i8* %arrayidx.i451, align 1, !dbg !1676, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %124}, i64 0, metadata !1677), !dbg !1676
  %arrayidx3.i452 = getelementptr inbounds i8* %122, i64 %indvars.iv.i450, !dbg !1678
  %125 = load i8* %arrayidx3.i452, align 1, !dbg !1678, !tbaa !461
  store i8 %125, i8* %arrayidx.i451, align 1, !dbg !1678, !tbaa !461
  store i8 %124, i8* %arrayidx3.i452, align 1, !dbg !1679, !tbaa !461
  %indvars.iv.next.i453 = add i64 %indvars.iv.i450, 1, !dbg !1675
  %lftr.wideiv586 = trunc i64 %indvars.iv.next.i453 to i32, !dbg !1675
  %exitcond587 = icmp eq i32 %lftr.wideiv586, 2, !dbg !1675
  br i1 %exitcond587, label %for.cond307.loopexit, label %for.body.i456, !dbg !1675

for.cond307.loopexit:                             ; preds = %for.body.i456
  %126 = load i32* @Alphabet_size, align 4, !dbg !1680, !tbaa !460
  %cmp308564 = icmp sgt i32 %126, 0, !dbg !1680
  br i1 %cmp308564, label %for.body310, label %if.end320, !dbg !1680

for.body310:                                      ; preds = %for.cond307.loopexit, %byteswap.exit449
  %indvars.iv590 = phi i64 [ %indvars.iv.next591, %byteswap.exit449 ], [ 0, %for.cond307.loopexit ]
  %127 = load %struct.basic_state** %ins, align 8, !dbg !1682, !tbaa !465
  %arrayidx316 = getelementptr inbounds %struct.basic_state* %127, i64 %indvars.iv592, i32 1, i64 %indvars.iv590, !dbg !1682
  %128 = bitcast float* %arrayidx316 to i8*, !dbg !1682
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !1683), !dbg !1684
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1685), !dbg !1686
  br label %for.body.i448, !dbg !1686

for.body.i448:                                    ; preds = %for.body.i448, %for.body310
  %indvars.iv.i442 = phi i64 [ 0, %for.body310 ], [ %indvars.iv.next.i445, %for.body.i448 ]
  %129 = sub i64 3, %indvars.iv.i442, !dbg !1687
  %arrayidx.i443 = getelementptr inbounds i8* %128, i64 %129, !dbg !1687
  %130 = load i8* %arrayidx.i443, align 1, !dbg !1687, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %130}, i64 0, metadata !1688), !dbg !1687
  %arrayidx3.i444 = getelementptr inbounds i8* %128, i64 %indvars.iv.i442, !dbg !1689
  %131 = load i8* %arrayidx3.i444, align 1, !dbg !1689, !tbaa !461
  store i8 %131, i8* %arrayidx.i443, align 1, !dbg !1689, !tbaa !461
  store i8 %130, i8* %arrayidx3.i444, align 1, !dbg !1690, !tbaa !461
  %indvars.iv.next.i445 = add i64 %indvars.iv.i442, 1, !dbg !1686
  %lftr.wideiv588 = trunc i64 %indvars.iv.next.i445 to i32, !dbg !1686
  %exitcond589 = icmp eq i32 %lftr.wideiv588, 2, !dbg !1686
  br i1 %exitcond589, label %byteswap.exit449, label %for.body.i448, !dbg !1686

byteswap.exit449:                                 ; preds = %for.body.i448
  %indvars.iv.next591 = add i64 %indvars.iv590, 1, !dbg !1680
  %132 = load i32* @Alphabet_size, align 4, !dbg !1680, !tbaa !460
  %133 = trunc i64 %indvars.iv.next591 to i32, !dbg !1680
  %cmp308 = icmp slt i32 %133, %132, !dbg !1680
  br i1 %cmp308, label %for.body310, label %if.end320, !dbg !1680

if.end320:                                        ; preds = %for.cond307.loopexit, %byteswap.exit449, %if.end289
  br i1 %cmp55, label %if.then323, label %for.inc329, !dbg !1691

if.then323:                                       ; preds = %if.end320
  %134 = load i32* @Alphabet_size, align 4, !dbg !1692, !tbaa !460
  %add324 = add nsw i32 %134, 3, !dbg !1692
  %conv325 = sext i32 %add324 to i64, !dbg !1692
  %mul326 = shl nsw i64 %conv325, 2, !dbg !1692
  %call327 = call i32 @fseek(%struct._IO_FILE* %fp, i64 %mul326, i32 1) #7, !dbg !1692
  br label %for.inc329, !dbg !1692

for.inc329:                                       ; preds = %if.end320, %if.then323
  %indvars.iv.next593 = add i64 %indvars.iv592, 1, !dbg !1564
  %135 = load i32* %M128, align 4, !dbg !1564, !tbaa !460
  %136 = trunc i64 %indvars.iv592 to i32, !dbg !1564
  %cmp129 = icmp slt i32 %136, %135, !dbg !1564
  br i1 %cmp129, label %for.body131, label %for.end331, !dbg !1564

for.end331:                                       ; preds = %for.inc329, %for.cond127.preheader
  call void @P9Renormalize(%struct.plan9_s* %call23) #7, !dbg !1693
  br label %return, !dbg !1694

return:                                           ; preds = %if.end279, %if.end270, %if.end261, %if.end253, %if.end221, %if.end212, %if.end204, %if.end156, %if.end147, %if.end138, %for.body131, %if.then108, %land.lhs.true92, %land.lhs.true, %if.then66, %if.end49, %if.end45, %if.end35, %if.then28, %if.end, %entry, %for.end331
  %retval.0 = phi %struct.plan9_s* [ %call23, %for.end331 ], [ null, %entry ], [ null, %if.end ], [ null, %if.then28 ], [ null, %if.end35 ], [ null, %if.end45 ], [ null, %if.end49 ], [ null, %if.then66 ], [ null, %land.lhs.true ], [ null, %land.lhs.true92 ], [ null, %if.then108 ], [ null, %for.body131 ], [ null, %if.end138 ], [ null, %if.end147 ], [ null, %if.end156 ], [ null, %if.end204 ], [ null, %if.end212 ], [ null, %if.end221 ], [ null, %if.end253 ], [ null, %if.end261 ], [ null, %if.end270 ], [ null, %if.end279 ]
  ret %struct.plan9_s* %retval.0, !dbg !1695
}

; Function Attrs: optsize
declare void @Plan9toPlan7(%struct.plan9_s*, %struct.plan7_s**) #3

; Function Attrs: optsize
declare void @Plan7SetCtime(%struct.plan7_s*) #3

; Function Attrs: optsize
declare i32 @P9FreeHMM(%struct.plan9_s*) #3

; Function Attrs: optsize
declare void @SetAlphabet(i32) #3

; Function Attrs: optsize
declare i8* @AlphabetType2String(i32) #3

; Function Attrs: optsize
declare %struct.plan9_s* @P9AllocHMM(i32) #3

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #3

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) #4

; Function Attrs: optsize
declare void @P9DefaultNullModel(float*) #3

; Function Attrs: optsize
declare void @P9Renormalize(%struct.plan9_s*) #3

; Function Attrs: optsize
declare void @Plan7Renormalize(%struct.plan7_s*) #3

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #5

; Function Attrs: optsize
declare %struct.plan7_s* @AllocPlan7Shell() #3

; Function Attrs: optsize
declare i8* @Getword(%struct._IO_FILE*, i32) #3

; Function Attrs: optsize
declare void @Plan7SetName(%struct.plan7_s*, i8*) #3

; Function Attrs: optsize
declare void @s2upper(i8*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc float @ascii2prob(i8* nocapture %s, float %null) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !403), !dbg !1696
  tail call void @llvm.dbg.value(metadata !{float %null}, i64 0, metadata !404), !dbg !1696
  %0 = load i8* %s, align 1, !dbg !1697, !tbaa !461
  %cmp = icmp eq i8 %0, 42, !dbg !1697
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !1697

cond.false:                                       ; preds = %entry
  %call = tail call i32 @atoi(i8* %s) #8, !dbg !1697
  %call2 = tail call float @Score2Prob(i32 %call, float %null) #7, !dbg !1697
  br label %cond.end, !dbg !1697

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi float [ %call2, %cond.false ], [ 0.000000e+00, %entry ]
  ret float %cond, !dbg !1697
}

; Function Attrs: optsize
declare void @AllocPlan7Body(%struct.plan7_s*, i32) #3

; Function Attrs: optsize
declare void @ZeroPlan7(%struct.plan7_s*) #3

; Function Attrs: optsize
declare void @Plan7LSConfig(%struct.plan7_s*) #3

; Function Attrs: optsize
declare void @FreePlan7(%struct.plan7_s*) #3

; Function Attrs: optsize
declare float @Score2Prob(i32, float) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @read_bin_string(%struct._IO_FILE* nocapture %fp, i32 %doswap, i8** nocapture %ret_s) #0 {
entry:
  %len = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !418), !dbg !1698
  call void @llvm.dbg.value(metadata !{i32 %doswap}, i64 0, metadata !419), !dbg !1698
  call void @llvm.dbg.value(metadata !{i8** %ret_s}, i64 0, metadata !420), !dbg !1698
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !422), !dbg !1699
  %0 = bitcast i32* %len to i8*, !dbg !1700
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %fp) #7, !dbg !1700
  %tobool = icmp eq i64 %call, 0, !dbg !1700
  br i1 %tobool, label %return, label %if.end, !dbg !1700

if.end:                                           ; preds = %entry
  %tobool1 = icmp eq i32 %doswap, 0, !dbg !1701
  br i1 %tobool1, label %if.end3, label %for.body.i, !dbg !1701

for.body.i:                                       ; preds = %if.end, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %if.end ]
  %1 = sub i64 3, %indvars.iv.i, !dbg !1702
  %arrayidx.i = getelementptr inbounds i8* %0, i64 %1, !dbg !1702
  %2 = load i8* %arrayidx.i, align 1, !dbg !1702, !tbaa !461
  tail call void @llvm.dbg.value(metadata !{i8 %2}, i64 0, metadata !1703), !dbg !1702
  %arrayidx3.i = getelementptr inbounds i8* %0, i64 %indvars.iv.i, !dbg !1704
  %3 = load i8* %arrayidx3.i, align 1, !dbg !1704, !tbaa !461
  store i8 %3, i8* %arrayidx.i, align 1, !dbg !1704, !tbaa !461
  store i8 %2, i8* %arrayidx3.i, align 1, !dbg !1705, !tbaa !461
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1706
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !1706
  %exitcond = icmp eq i32 %lftr.wideiv, 2, !dbg !1706
  br i1 %exitcond, label %if.end3, label %for.body.i, !dbg !1706

if.end3:                                          ; preds = %for.body.i, %if.end
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !422), !dbg !1707
  %4 = load i32* %len, align 4, !dbg !1707, !tbaa !460
  %conv = sext i32 %4 to i64, !dbg !1707
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 1370, i64 %conv) #7, !dbg !1707
  call void @llvm.dbg.value(metadata !{i8* %call4}, i64 0, metadata !421), !dbg !1707
  call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !422), !dbg !1708
  %call6 = call i64 @fread(i8* %call4, i64 1, i64 %conv, %struct._IO_FILE* %fp) #7, !dbg !1708
  %tobool7 = icmp eq i64 %call6, 0, !dbg !1708
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1708

if.then8:                                         ; preds = %if.end3
  call void @free(i8* %call4) #7, !dbg !1709
  br label %return, !dbg !1711

if.end9:                                          ; preds = %if.end3
  store i8* %call4, i8** %ret_s, align 8, !dbg !1712, !tbaa !465
  br label %return, !dbg !1713

return:                                           ; preds = %entry, %if.end9, %if.then8
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %if.then8 ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !1713
}

; Function Attrs: optsize
declare void @Plan7SetAccession(%struct.plan7_s*, i8*) #3

; Function Attrs: optsize
declare void @Plan7SetDescription(%struct.plan7_s*, i8*) #3

; Function Attrs: optsize
declare i32 @sre_toupper(i32) #3

; Function Attrs: optsize
declare void @StringChop(i8*) #3

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !435, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!19 = metadata !{metadata !20, metadata !218, metadata !225, metadata !230, metadata !233, metadata !241, metadata !249, metadata !258, metadata !263, metadata !272, metadata !279, metadata !285, metadata !313, metadata !328, metadata !336, metadata !340, metadata !347, metadata !351, metadata !358, metadata !365, metadata !380, metadata !387, metadata !399, metadata !405, metadata !414, metadata !423}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"HMMFileOpen", metadata !"HMMFileOpen", metadata !"", i32 155, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.hmmfile_s* (i8*, i8*)* @HMMFileOpen, null, null, metadata !204, i32 156} ; [ DW_TAG_subprogram ] [line 155] [def] [scope 156] [HMMFileOpen]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !38, metadata !38}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from HMMFILE]
!25 = metadata !{i32 786454, metadata !1, null, metadata !"HMMFILE", i32 350, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [HMMFILE] [line 350, size 0, align 0, offset 0] [from hmmfile_s]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"hmmfile_s", i32 332, i64 448, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [hmmfile_s] [line 332, size 448, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !88, metadata !131, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"f", i32 333, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [f] [line 333, size 64, align 64, offset 0] [from ]
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
!88 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ssi", i32 334, i64 64, i64 64, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [ssi] [line 334, size 64, align 64, offset 64] [from ]
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SSIFILE]
!90 = metadata !{i32 786454, metadata !27, null, metadata !"SSIFILE", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [SSIFILE] [line 76, size 0, align 0, offset 0] [from ssifile_s]
!91 = metadata !{i32 786451, metadata !92, null, metadata !"ssifile_s", i32 49, i64 1152, i64 64, i32 0, i32 0, null, metadata !93, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssifile_s] [line 49, size 1152, align 64, offset 0] [from ]
!92 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!93 = metadata !{metadata !94, metadata !95, metadata !98, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !126, metadata !128, metadata !129, metadata !130}
!94 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"fp", i32 50, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [fp] [line 50, size 64, align 64, offset 0] [from ]
!95 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"flags", i32 51, i64 32, i64 32, i64 64, i32 0, metadata !96} ; [ DW_TAG_member ] [flags] [line 51, size 32, align 32, offset 64] [from sqd_uint32]
!96 = metadata !{i32 786454, metadata !92, null, metadata !"sqd_uint32", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [sqd_uint32] [line 41, size 0, align 0, offset 0] [from unsigned int]
!97 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!98 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"nfiles", i32 52, i64 16, i64 16, i64 96, i32 0, metadata !99} ; [ DW_TAG_member ] [nfiles] [line 52, size 16, align 16, offset 96] [from sqd_uint16]
!99 = metadata !{i32 786454, metadata !92, null, metadata !"sqd_uint16", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ] [sqd_uint16] [line 40, size 0, align 0, offset 0] [from unsigned short]
!100 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"nprimary", i32 53, i64 32, i64 32, i64 128, i32 0, metadata !96} ; [ DW_TAG_member ] [nprimary] [line 53, size 32, align 32, offset 128] [from sqd_uint32]
!101 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"nsecondary", i32 54, i64 32, i64 32, i64 160, i32 0, metadata !96} ; [ DW_TAG_member ] [nsecondary] [line 54, size 32, align 32, offset 160] [from sqd_uint32]
!102 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"flen", i32 55, i64 32, i64 32, i64 192, i32 0, metadata !96} ; [ DW_TAG_member ] [flen] [line 55, size 32, align 32, offset 192] [from sqd_uint32]
!103 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"plen", i32 56, i64 32, i64 32, i64 224, i32 0, metadata !96} ; [ DW_TAG_member ] [plen] [line 56, size 32, align 32, offset 224] [from sqd_uint32]
!104 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"slen", i32 57, i64 32, i64 32, i64 256, i32 0, metadata !96} ; [ DW_TAG_member ] [slen] [line 57, size 32, align 32, offset 256] [from sqd_uint32]
!105 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"frecsize", i32 58, i64 32, i64 32, i64 288, i32 0, metadata !96} ; [ DW_TAG_member ] [frecsize] [line 58, size 32, align 32, offset 288] [from sqd_uint32]
!106 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"precsize", i32 59, i64 32, i64 32, i64 320, i32 0, metadata !96} ; [ DW_TAG_member ] [precsize] [line 59, size 32, align 32, offset 320] [from sqd_uint32]
!107 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"srecsize", i32 60, i64 32, i64 32, i64 352, i32 0, metadata !96} ; [ DW_TAG_member ] [srecsize] [line 60, size 32, align 32, offset 352] [from sqd_uint32]
!108 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"foffset", i32 61, i64 128, i64 64, i64 384, i32 0, metadata !109} ; [ DW_TAG_member ] [foffset] [line 61, size 128, align 64, offset 384] [from SSIOFFSET]
!109 = metadata !{i32 786454, metadata !92, null, metadata !"SSIOFFSET", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ] [SSIOFFSET] [line 42, size 0, align 0, offset 0] [from ssioffset_s]
!110 = metadata !{i32 786451, metadata !92, null, metadata !"ssioffset_s", i32 35, i64 128, i64 64, i32 0, i32 0, null, metadata !111, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssioffset_s] [line 35, size 128, align 64, offset 0] [from ]
!111 = metadata !{metadata !112, metadata !113}
!112 = metadata !{i32 786445, metadata !92, metadata !110, metadata !"mode", i32 36, i64 8, i64 8, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [mode] [line 36, size 8, align 8, offset 0] [from char]
!113 = metadata !{i32 786445, metadata !92, metadata !110, metadata !"off", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !114} ; [ DW_TAG_member ] [off] [line 40, size 64, align 64, offset 64] [from ]
!114 = metadata !{i32 786455, metadata !92, metadata !110, metadata !"", i32 37, i64 64, i64 64, i64 0, i32 0, null, metadata !115, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 37, size 64, align 64, offset 0] [from ]
!115 = metadata !{metadata !116, metadata !117}
!116 = metadata !{i32 786445, metadata !92, metadata !114, metadata !"i32", i32 38, i64 32, i64 32, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [i32] [line 38, size 32, align 32, offset 0] [from sqd_uint32]
!117 = metadata !{i32 786445, metadata !92, metadata !114, metadata !"i64", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_member ] [i64] [line 39, size 64, align 64, offset 0] [from sqd_uint64]
!118 = metadata !{i32 786454, metadata !92, null, metadata !"sqd_uint64", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !119} ; [ DW_TAG_typedef ] [sqd_uint64] [line 42, size 0, align 0, offset 0] [from long long unsigned int]
!119 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!120 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"poffset", i32 62, i64 128, i64 64, i64 512, i32 0, metadata !109} ; [ DW_TAG_member ] [poffset] [line 62, size 128, align 64, offset 512] [from SSIOFFSET]
!121 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"soffset", i32 63, i64 128, i64 64, i64 640, i32 0, metadata !109} ; [ DW_TAG_member ] [soffset] [line 63, size 128, align 64, offset 640] [from SSIOFFSET]
!122 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"imode", i32 65, i64 8, i64 8, i64 768, i32 0, metadata !39} ; [ DW_TAG_member ] [imode] [line 65, size 8, align 8, offset 768] [from char]
!123 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"smode", i32 66, i64 8, i64 8, i64 776, i32 0, metadata !39} ; [ DW_TAG_member ] [smode] [line 66, size 8, align 8, offset 776] [from char]
!124 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"filename", i32 70, i64 64, i64 64, i64 832, i32 0, metadata !125} ; [ DW_TAG_member ] [filename] [line 70, size 64, align 64, offset 832] [from ]
!125 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!126 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"fileformat", i32 71, i64 64, i64 64, i64 896, i32 0, metadata !127} ; [ DW_TAG_member ] [fileformat] [line 71, size 64, align 64, offset 896] [from ]
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sqd_uint32]
!128 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"fileflags", i32 72, i64 64, i64 64, i64 960, i32 0, metadata !127} ; [ DW_TAG_member ] [fileflags] [line 72, size 64, align 64, offset 960] [from ]
!129 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"bpl", i32 73, i64 64, i64 64, i64 1024, i32 0, metadata !127} ; [ DW_TAG_member ] [bpl] [line 73, size 64, align 64, offset 1024] [from ]
!130 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"rpl", i32 74, i64 64, i64 64, i64 1088, i32 0, metadata !127} ; [ DW_TAG_member ] [rpl] [line 74, size 64, align 64, offset 1088] [from ]
!131 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"parser", i32 335, i64 64, i64 64, i64 128, i32 0, metadata !132} ; [ DW_TAG_member ] [parser] [line 335, size 64, align 64, offset 128] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !133} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!133 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!134 = metadata !{metadata !36, metadata !135, metadata !136}
!135 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from hmmfile_s]
!136 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !137} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!137 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !138} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan7_s]
!138 = metadata !{i32 786451, metadata !27, null, metadata !"plan7_s", i32 101, i64 3712, i64 64, i32 0, i32 0, null, metadata !139, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan7_s] [line 101, size 3712, align 64, offset 0] [from ]
!139 = metadata !{metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !166, metadata !167, metadata !168, metadata !169, metadata !174, metadata !175, metadata !176, metadata !178, metadata !179, metadata !181, metadata !182, metadata !183, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198}
!140 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"name", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_member ] [name] [line 113, size 64, align 64, offset 0] [from ]
!141 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"acc", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [acc] [line 114, size 64, align 64, offset 64] [from ]
!142 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"desc", i32 115, i64 64, i64 64, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [desc] [line 115, size 64, align 64, offset 128] [from ]
!143 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"rf", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !38} ; [ DW_TAG_member ] [rf] [line 116, size 64, align 64, offset 192] [from ]
!144 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"cs", i32 117, i64 64, i64 64, i64 256, i32 0, metadata !38} ; [ DW_TAG_member ] [cs] [line 117, size 64, align 64, offset 256] [from ]
!145 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"ca", i32 118, i64 64, i64 64, i64 320, i32 0, metadata !38} ; [ DW_TAG_member ] [ca] [line 118, size 64, align 64, offset 320] [from ]
!146 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"comlog", i32 119, i64 64, i64 64, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ] [comlog] [line 119, size 64, align 64, offset 384] [from ]
!147 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"nseq", i32 120, i64 32, i64 32, i64 448, i32 0, metadata !36} ; [ DW_TAG_member ] [nseq] [line 120, size 32, align 32, offset 448] [from int]
!148 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"ctime", i32 121, i64 64, i64 64, i64 512, i32 0, metadata !38} ; [ DW_TAG_member ] [ctime] [line 121, size 64, align 64, offset 512] [from ]
!149 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"map", i32 122, i64 64, i64 64, i64 576, i32 0, metadata !150} ; [ DW_TAG_member ] [map] [line 122, size 64, align 64, offset 576] [from ]
!150 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!151 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"checksum", i32 123, i64 32, i64 32, i64 640, i32 0, metadata !36} ; [ DW_TAG_member ] [checksum] [line 123, size 32, align 32, offset 640] [from int]
!152 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"tpri", i32 134, i64 64, i64 64, i64 704, i32 0, metadata !150} ; [ DW_TAG_member ] [tpri] [line 134, size 64, align 64, offset 704] [from ]
!153 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"mpri", i32 135, i64 64, i64 64, i64 768, i32 0, metadata !150} ; [ DW_TAG_member ] [mpri] [line 135, size 64, align 64, offset 768] [from ]
!154 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"ipri", i32 136, i64 64, i64 64, i64 832, i32 0, metadata !150} ; [ DW_TAG_member ] [ipri] [line 136, size 64, align 64, offset 832] [from ]
!155 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"ga1", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !156} ; [ DW_TAG_member ] [ga1] [line 144, size 32, align 32, offset 896] [from float]
!156 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!157 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"ga2", i32 144, i64 32, i64 32, i64 928, i32 0, metadata !156} ; [ DW_TAG_member ] [ga2] [line 144, size 32, align 32, offset 928] [from float]
!158 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"tc1", i32 145, i64 32, i64 32, i64 960, i32 0, metadata !156} ; [ DW_TAG_member ] [tc1] [line 145, size 32, align 32, offset 960] [from float]
!159 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"tc2", i32 145, i64 32, i64 32, i64 992, i32 0, metadata !156} ; [ DW_TAG_member ] [tc2] [line 145, size 32, align 32, offset 992] [from float]
!160 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"nc1", i32 146, i64 32, i64 32, i64 1024, i32 0, metadata !156} ; [ DW_TAG_member ] [nc1] [line 146, size 32, align 32, offset 1024] [from float]
!161 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"nc2", i32 146, i64 32, i64 32, i64 1056, i32 0, metadata !156} ; [ DW_TAG_member ] [nc2] [line 146, size 32, align 32, offset 1056] [from float]
!162 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"M", i32 155, i64 32, i64 32, i64 1088, i32 0, metadata !36} ; [ DW_TAG_member ] [M] [line 155, size 32, align 32, offset 1088] [from int]
!163 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"t", i32 156, i64 64, i64 64, i64 1152, i32 0, metadata !164} ; [ DW_TAG_member ] [t] [line 156, size 64, align 64, offset 1152] [from ]
!164 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !165} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!165 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !156} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!166 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"mat", i32 157, i64 64, i64 64, i64 1216, i32 0, metadata !164} ; [ DW_TAG_member ] [mat] [line 157, size 64, align 64, offset 1216] [from ]
!167 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"ins", i32 158, i64 64, i64 64, i64 1280, i32 0, metadata !164} ; [ DW_TAG_member ] [ins] [line 158, size 64, align 64, offset 1280] [from ]
!168 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"tbd1", i32 159, i64 32, i64 32, i64 1344, i32 0, metadata !156} ; [ DW_TAG_member ] [tbd1] [line 159, size 32, align 32, offset 1344] [from float]
!169 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"xt", i32 168, i64 256, i64 32, i64 1376, i32 0, metadata !170} ; [ DW_TAG_member ] [xt] [line 168, size 256, align 32, offset 1376] [from ]
!170 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !156, metadata !171, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!171 = metadata !{metadata !172, metadata !173}
!172 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!173 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!174 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"begin", i32 169, i64 64, i64 64, i64 1664, i32 0, metadata !165} ; [ DW_TAG_member ] [begin] [line 169, size 64, align 64, offset 1664] [from ]
!175 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"end", i32 170, i64 64, i64 64, i64 1728, i32 0, metadata !165} ; [ DW_TAG_member ] [end] [line 170, size 64, align 64, offset 1728] [from ]
!176 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"null", i32 174, i64 640, i64 32, i64 1792, i32 0, metadata !177} ; [ DW_TAG_member ] [null] [line 174, size 640, align 32, offset 1792] [from ]
!177 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !156, metadata !86, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!178 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"p1", i32 175, i64 32, i64 32, i64 2432, i32 0, metadata !156} ; [ DW_TAG_member ] [p1] [line 175, size 32, align 32, offset 2432] [from float]
!179 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"tsc", i32 197, i64 64, i64 64, i64 2496, i32 0, metadata !180} ; [ DW_TAG_member ] [tsc] [line 197, size 64, align 64, offset 2496] [from ]
!180 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!181 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"msc", i32 198, i64 64, i64 64, i64 2560, i32 0, metadata !180} ; [ DW_TAG_member ] [msc] [line 198, size 64, align 64, offset 2560] [from ]
!182 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"isc", i32 199, i64 64, i64 64, i64 2624, i32 0, metadata !180} ; [ DW_TAG_member ] [isc] [line 199, size 64, align 64, offset 2624] [from ]
!183 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"xsc", i32 200, i64 256, i64 32, i64 2688, i32 0, metadata !184} ; [ DW_TAG_member ] [xsc] [line 200, size 256, align 32, offset 2688] [from ]
!184 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !36, metadata !171, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!185 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"bsc", i32 201, i64 64, i64 64, i64 2944, i32 0, metadata !150} ; [ DW_TAG_member ] [bsc] [line 201, size 64, align 64, offset 2944] [from ]
!186 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"esc", i32 202, i64 64, i64 64, i64 3008, i32 0, metadata !150} ; [ DW_TAG_member ] [esc] [line 202, size 64, align 64, offset 3008] [from ]
!187 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"tsc_mem", i32 203, i64 64, i64 64, i64 3072, i32 0, metadata !150} ; [ DW_TAG_member ] [tsc_mem] [line 203, size 64, align 64, offset 3072] [from ]
!188 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"msc_mem", i32 203, i64 64, i64 64, i64 3136, i32 0, metadata !150} ; [ DW_TAG_member ] [msc_mem] [line 203, size 64, align 64, offset 3136] [from ]
!189 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"isc_mem", i32 203, i64 64, i64 64, i64 3200, i32 0, metadata !150} ; [ DW_TAG_member ] [isc_mem] [line 203, size 64, align 64, offset 3200] [from ]
!190 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"bsc_mem", i32 203, i64 64, i64 64, i64 3264, i32 0, metadata !150} ; [ DW_TAG_member ] [bsc_mem] [line 203, size 64, align 64, offset 3264] [from ]
!191 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"esc_mem", i32 203, i64 64, i64 64, i64 3328, i32 0, metadata !150} ; [ DW_TAG_member ] [esc_mem] [line 203, size 64, align 64, offset 3328] [from ]
!192 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"dnam", i32 214, i64 64, i64 64, i64 3392, i32 0, metadata !180} ; [ DW_TAG_member ] [dnam] [line 214, size 64, align 64, offset 3392] [from ]
!193 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"dnai", i32 215, i64 64, i64 64, i64 3456, i32 0, metadata !180} ; [ DW_TAG_member ] [dnai] [line 215, size 64, align 64, offset 3456] [from ]
!194 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"dna2", i32 216, i64 32, i64 32, i64 3520, i32 0, metadata !36} ; [ DW_TAG_member ] [dna2] [line 216, size 32, align 32, offset 3520] [from int]
!195 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"dna4", i32 217, i64 32, i64 32, i64 3552, i32 0, metadata !36} ; [ DW_TAG_member ] [dna4] [line 217, size 32, align 32, offset 3552] [from int]
!196 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"mu", i32 222, i64 32, i64 32, i64 3584, i32 0, metadata !156} ; [ DW_TAG_member ] [mu] [line 222, size 32, align 32, offset 3584] [from float]
!197 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"lambda", i32 223, i64 32, i64 32, i64 3616, i32 0, metadata !156} ; [ DW_TAG_member ] [lambda] [line 223, size 32, align 32, offset 3616] [from float]
!198 = metadata !{i32 786445, metadata !27, metadata !138, metadata !"flags", i32 225, i64 32, i64 32, i64 3648, i32 0, metadata !36} ; [ DW_TAG_member ] [flags] [line 225, size 32, align 32, offset 3648] [from int]
!199 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"is_binary", i32 336, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [is_binary] [line 336, size 32, align 32, offset 192] [from int]
!200 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"byteswap", i32 337, i64 32, i64 32, i64 224, i32 0, metadata !36} ; [ DW_TAG_member ] [byteswap] [line 337, size 32, align 32, offset 224] [from int]
!201 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"is_seekable", i32 346, i64 32, i64 32, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [is_seekable] [line 346, size 32, align 32, offset 256] [from int]
!202 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"mode", i32 347, i64 32, i64 32, i64 288, i32 0, metadata !36} ; [ DW_TAG_member ] [mode] [line 347, size 32, align 32, offset 288] [from int]
!203 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"offset", i32 348, i64 128, i64 64, i64 320, i32 0, metadata !109} ; [ DW_TAG_member ] [offset] [line 348, size 128, align 64, offset 320] [from SSIOFFSET]
!204 = metadata !{metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !213, metadata !214, metadata !215, metadata !216}
!205 = metadata !{i32 786689, metadata !20, metadata !"hmmfile", metadata !21, i32 16777371, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfile] [line 155]
!206 = metadata !{i32 786689, metadata !20, metadata !"env", metadata !21, i32 33554587, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [env] [line 155]
!207 = metadata !{i32 786688, metadata !20, metadata !"hmmfp", metadata !21, i32 157, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmmfp] [line 157]
!208 = metadata !{i32 786688, metadata !20, metadata !"magic", metadata !21, i32 158, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [magic] [line 158]
!209 = metadata !{i32 786688, metadata !20, metadata !"buf", metadata !21, i32 159, metadata !210, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 159]
!210 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4096, i64 8, i32 0, i32 0, metadata !39, metadata !211, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4096, align 8, offset 0] [from char]
!211 = metadata !{metadata !212}
!212 = metadata !{i32 786465, i64 0, i64 512}     ; [ DW_TAG_subrange_type ] [0, 511]
!213 = metadata !{i32 786688, metadata !20, metadata !"ssifile", metadata !21, i32 160, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ssifile] [line 160]
!214 = metadata !{i32 786688, metadata !20, metadata !"dir", metadata !21, i32 161, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dir] [line 161]
!215 = metadata !{i32 786688, metadata !20, metadata !"status", metadata !21, i32 162, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 162]
!216 = metadata !{i32 786688, metadata !217, metadata !"full", metadata !21, i32 189, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [full] [line 189]
!217 = metadata !{i32 786443, metadata !1, metadata !20, i32 188, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!218 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"HMMFileRead", metadata !"HMMFileRead", metadata !"", i32 324, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @HMMFileRead, null, null, metadata !221, i32 325} ; [ DW_TAG_subprogram ] [line 324] [def] [scope 325] [HMMFileRead]
!219 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!220 = metadata !{metadata !36, metadata !24, metadata !136}
!221 = metadata !{metadata !222, metadata !223, metadata !224}
!222 = metadata !{i32 786689, metadata !218, metadata !"hmmfp", metadata !21, i32 16777540, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfp] [line 324]
!223 = metadata !{i32 786689, metadata !218, metadata !"ret_hmm", metadata !21, i32 33554756, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_hmm] [line 324]
!224 = metadata !{i32 786688, metadata !218, metadata !"status", metadata !21, i32 326, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 326]
!225 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"HMMFileClose", metadata !"HMMFileClose", metadata !"", i32 336, metadata !226, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.hmmfile_s*)* @HMMFileClose, null, null, metadata !228, i32 337} ; [ DW_TAG_subprogram ] [line 336] [def] [scope 337] [HMMFileClose]
!226 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!227 = metadata !{null, metadata !24}
!228 = metadata !{metadata !229}
!229 = metadata !{i32 786689, metadata !225, metadata !"hmmfp", metadata !21, i32 16777552, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfp] [line 336]
!230 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"HMMFileRewind", metadata !"HMMFileRewind", metadata !"", i32 343, metadata !226, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.hmmfile_s*)* @HMMFileRewind, null, null, metadata !231, i32 344} ; [ DW_TAG_subprogram ] [line 343] [def] [scope 344] [HMMFileRewind]
!231 = metadata !{metadata !232}
!232 = metadata !{i32 786689, metadata !230, metadata !"hmmfp", metadata !21, i32 16777559, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfp] [line 343]
!233 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"HMMFilePositionByName", metadata !"HMMFilePositionByName", metadata !"", i32 348, metadata !234, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.hmmfile_s*, i8*)* @HMMFilePositionByName, null, null, metadata !236, i32 349} ; [ DW_TAG_subprogram ] [line 348] [def] [scope 349] [HMMFilePositionByName]
!234 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!235 = metadata !{metadata !36, metadata !24, metadata !38}
!236 = metadata !{metadata !237, metadata !238, metadata !239, metadata !240}
!237 = metadata !{i32 786689, metadata !233, metadata !"hmmfp", metadata !21, i32 16777564, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfp] [line 348]
!238 = metadata !{i32 786689, metadata !233, metadata !"name", metadata !21, i32 33554780, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 348]
!239 = metadata !{i32 786688, metadata !233, metadata !"offset", metadata !21, i32 350, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 350]
!240 = metadata !{i32 786688, metadata !233, metadata !"fh", metadata !21, i32 351, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fh] [line 351]
!241 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"HMMFilePositionByIndex", metadata !"HMMFilePositionByIndex", metadata !"", i32 359, metadata !242, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.hmmfile_s*, i32)* @HMMFilePositionByIndex, null, null, metadata !244, i32 360} ; [ DW_TAG_subprogram ] [line 359] [def] [scope 360] [HMMFilePositionByIndex]
!242 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!243 = metadata !{metadata !36, metadata !24, metadata !36}
!244 = metadata !{metadata !245, metadata !246, metadata !247, metadata !248}
!245 = metadata !{i32 786689, metadata !241, metadata !"hmmfp", metadata !21, i32 16777575, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfp] [line 359]
!246 = metadata !{i32 786689, metadata !241, metadata !"idx", metadata !21, i32 33554791, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 359]
!247 = metadata !{i32 786688, metadata !241, metadata !"fh", metadata !21, i32 361, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fh] [line 361]
!248 = metadata !{i32 786688, metadata !241, metadata !"offset", metadata !21, i32 362, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 362]
!249 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"WriteAscHMM", metadata !"WriteAscHMM", metadata !"", i32 385, metadata !250, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.plan7_s*)* @WriteAscHMM, null, null, metadata !252, i32 386} ; [ DW_TAG_subprogram ] [line 385] [def] [scope 386] [WriteAscHMM]
!250 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !251, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!251 = metadata !{null, metadata !30, metadata !137}
!252 = metadata !{metadata !253, metadata !254, metadata !255, metadata !256, metadata !257}
!253 = metadata !{i32 786689, metadata !249, metadata !"fp", metadata !21, i32 16777601, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 385]
!254 = metadata !{i32 786689, metadata !249, metadata !"hmm", metadata !21, i32 33554817, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 385]
!255 = metadata !{i32 786688, metadata !249, metadata !"k", metadata !21, i32 387, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 387]
!256 = metadata !{i32 786688, metadata !249, metadata !"x", metadata !21, i32 388, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 388]
!257 = metadata !{i32 786688, metadata !249, metadata !"ts", metadata !21, i32 389, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 389]
!258 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"WriteBinHMM", metadata !"WriteBinHMM", metadata !"", i32 484, metadata !250, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.plan7_s*)* @WriteBinHMM, null, null, metadata !259, i32 485} ; [ DW_TAG_subprogram ] [line 484] [def] [scope 485] [WriteBinHMM]
!259 = metadata !{metadata !260, metadata !261, metadata !262}
!260 = metadata !{i32 786689, metadata !258, metadata !"fp", metadata !21, i32 16777700, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 484]
!261 = metadata !{i32 786689, metadata !258, metadata !"hmm", metadata !21, i32 33554916, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 484]
!262 = metadata !{i32 786688, metadata !258, metadata !"k", metadata !21, i32 486, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 486]
!263 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"multiline", metadata !"multiline", metadata !"", i32 1403, metadata !264, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !266, i32 1404} ; [ DW_TAG_subprogram ] [line 1403] [local] [def] [scope 1404] [multiline]
!264 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !265, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!265 = metadata !{null, metadata !30, metadata !38, metadata !38}
!266 = metadata !{metadata !267, metadata !268, metadata !269, metadata !270, metadata !271}
!267 = metadata !{i32 786689, metadata !263, metadata !"fp", metadata !21, i32 16778619, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1403]
!268 = metadata !{i32 786689, metadata !263, metadata !"pfx", metadata !21, i32 33555835, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pfx] [line 1403]
!269 = metadata !{i32 786689, metadata !263, metadata !"s", metadata !21, i32 50333051, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1403]
!270 = metadata !{i32 786688, metadata !263, metadata !"buf", metadata !21, i32 1405, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 1405]
!271 = metadata !{i32 786688, metadata !263, metadata !"sptr", metadata !21, i32 1406, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sptr] [line 1406]
!272 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"write_bin_string", metadata !"write_bin_string", metadata !"", i32 1334, metadata !273, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*)* @write_bin_string, null, null, metadata !275, i32 1335} ; [ DW_TAG_subprogram ] [line 1334] [local] [def] [scope 1335] [write_bin_string]
!273 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !274, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!274 = metadata !{null, metadata !30, metadata !38}
!275 = metadata !{metadata !276, metadata !277, metadata !278}
!276 = metadata !{i32 786689, metadata !272, metadata !"fp", metadata !21, i32 16778550, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1334]
!277 = metadata !{i32 786689, metadata !272, metadata !"s", metadata !21, i32 33555766, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1334]
!278 = metadata !{i32 786688, metadata !272, metadata !"len", metadata !21, i32 1336, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1336]
!279 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"prob2ascii", metadata !"prob2ascii", metadata !"", i32 1271, metadata !280, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (float, float)* @prob2ascii, null, null, metadata !282, i32 1272} ; [ DW_TAG_subprogram ] [line 1271] [local] [def] [scope 1272] [prob2ascii]
!280 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!281 = metadata !{metadata !38, metadata !156, metadata !156}
!282 = metadata !{metadata !283, metadata !284}
!283 = metadata !{i32 786689, metadata !279, metadata !"p", metadata !21, i32 16778487, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 1271]
!284 = metadata !{i32 786689, metadata !279, metadata !"null", metadata !21, i32 33555703, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [null] [line 1271]
!285 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_bin10hmm", metadata !"read_bin10hmm", metadata !"", i32 1235, metadata !219, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin10hmm, null, null, metadata !286, i32 1236} ; [ DW_TAG_subprogram ] [line 1235] [local] [def] [scope 1236] [read_bin10hmm]
!286 = metadata !{metadata !287, metadata !288, metadata !289, metadata !290, metadata !291}
!287 = metadata !{i32 786689, metadata !285, metadata !"hmmfp", metadata !21, i32 16778451, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfp] [line 1235]
!288 = metadata !{i32 786689, metadata !285, metadata !"ret_hmm", metadata !21, i32 33555667, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_hmm] [line 1235]
!289 = metadata !{i32 786688, metadata !285, metadata !"magic", metadata !21, i32 1237, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [magic] [line 1237]
!290 = metadata !{i32 786688, metadata !285, metadata !"hmm", metadata !21, i32 1238, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmm] [line 1238]
!291 = metadata !{i32 786688, metadata !285, metadata !"p9hmm", metadata !21, i32 1239, metadata !292, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p9hmm] [line 1239]
!292 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !293} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan9_s]
!293 = metadata !{i32 786451, metadata !27, null, metadata !"plan9_s", i32 567, i64 1216, i64 64, i32 0, i32 0, null, metadata !294, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan9_s] [line 567, size 1216, align 64, offset 0] [from ]
!294 = metadata !{metadata !295, metadata !296, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312}
!295 = metadata !{i32 786445, metadata !27, metadata !293, metadata !"M", i32 568, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [M] [line 568, size 32, align 32, offset 0] [from int]
!296 = metadata !{i32 786445, metadata !27, metadata !293, metadata !"ins", i32 569, i64 64, i64 64, i64 64, i32 0, metadata !297} ; [ DW_TAG_member ] [ins] [line 569, size 64, align 64, offset 64] [from ]
!297 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !298} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from basic_state]
!298 = metadata !{i32 786451, metadata !27, null, metadata !"basic_state", i32 560, i64 736, i64 32, i32 0, i32 0, null, metadata !299, i32 0, null, null} ; [ DW_TAG_structure_type ] [basic_state] [line 560, size 736, align 32, offset 0] [from ]
!299 = metadata !{metadata !300, metadata !304}
!300 = metadata !{i32 786445, metadata !27, metadata !298, metadata !"t", i32 561, i64 96, i64 32, i64 0, i32 0, metadata !301} ; [ DW_TAG_member ] [t] [line 561, size 96, align 32, offset 0] [from ]
!301 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !156, metadata !302, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from float]
!302 = metadata !{metadata !303}
!303 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!304 = metadata !{i32 786445, metadata !27, metadata !298, metadata !"p", i32 562, i64 640, i64 32, i64 96, i32 0, metadata !177} ; [ DW_TAG_member ] [p] [line 562, size 640, align 32, offset 96] [from ]
!305 = metadata !{i32 786445, metadata !27, metadata !293, metadata !"mat", i32 570, i64 64, i64 64, i64 128, i32 0, metadata !297} ; [ DW_TAG_member ] [mat] [line 570, size 64, align 64, offset 128] [from ]
!306 = metadata !{i32 786445, metadata !27, metadata !293, metadata !"del", i32 571, i64 64, i64 64, i64 192, i32 0, metadata !297} ; [ DW_TAG_member ] [del] [line 571, size 64, align 64, offset 192] [from ]
!307 = metadata !{i32 786445, metadata !27, metadata !293, metadata !"null", i32 573, i64 640, i64 32, i64 256, i32 0, metadata !177} ; [ DW_TAG_member ] [null] [line 573, size 640, align 32, offset 256] [from ]
!308 = metadata !{i32 786445, metadata !27, metadata !293, metadata !"name", i32 577, i64 64, i64 64, i64 896, i32 0, metadata !38} ; [ DW_TAG_member ] [name] [line 577, size 64, align 64, offset 896] [from ]
!309 = metadata !{i32 786445, metadata !27, metadata !293, metadata !"ref", i32 578, i64 64, i64 64, i64 960, i32 0, metadata !38} ; [ DW_TAG_member ] [ref] [line 578, size 64, align 64, offset 960] [from ]
!310 = metadata !{i32 786445, metadata !27, metadata !293, metadata !"cs", i32 579, i64 64, i64 64, i64 1024, i32 0, metadata !38} ; [ DW_TAG_member ] [cs] [line 579, size 64, align 64, offset 1024] [from ]
!311 = metadata !{i32 786445, metadata !27, metadata !293, metadata !"xray", i32 580, i64 64, i64 64, i64 1088, i32 0, metadata !165} ; [ DW_TAG_member ] [xray] [line 580, size 64, align 64, offset 1088] [from ]
!312 = metadata !{i32 786445, metadata !27, metadata !293, metadata !"flags", i32 582, i64 32, i64 32, i64 1152, i32 0, metadata !36} ; [ DW_TAG_member ] [flags] [line 582, size 32, align 32, offset 1152] [from int]
!313 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_plan9_binhmm", metadata !"read_plan9_binhmm", metadata !"", i32 1439, metadata !314, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.plan9_s* (%struct._IO_FILE*, i32, i32)* @read_plan9_binhmm, null, null, metadata !316, i32 1440} ; [ DW_TAG_subprogram ] [line 1439] [local] [def] [scope 1440] [read_plan9_binhmm]
!314 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !315, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!315 = metadata !{metadata !292, metadata !30, metadata !36, metadata !36}
!316 = metadata !{metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327}
!317 = metadata !{i32 786689, metadata !313, metadata !"fp", metadata !21, i32 16778655, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1439]
!318 = metadata !{i32 786689, metadata !313, metadata !"version", metadata !21, i32 33555871, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [version] [line 1439]
!319 = metadata !{i32 786689, metadata !313, metadata !"swapped", metadata !21, i32 50333087, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [swapped] [line 1439]
!320 = metadata !{i32 786688, metadata !313, metadata !"hmm", metadata !21, i32 1441, metadata !292, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmm] [line 1441]
!321 = metadata !{i32 786688, metadata !313, metadata !"M", metadata !21, i32 1442, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [M] [line 1442]
!322 = metadata !{i32 786688, metadata !313, metadata !"k", metadata !21, i32 1443, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1443]
!323 = metadata !{i32 786688, metadata !313, metadata !"x", metadata !21, i32 1444, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 1444]
!324 = metadata !{i32 786688, metadata !313, metadata !"len", metadata !21, i32 1445, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1445]
!325 = metadata !{i32 786688, metadata !313, metadata !"asize", metadata !21, i32 1446, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [asize] [line 1446]
!326 = metadata !{i32 786688, metadata !313, metadata !"atype", metadata !21, i32 1447, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atype] [line 1447]
!327 = metadata !{i32 786688, metadata !313, metadata !"abet", metadata !21, i32 1448, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [abet] [line 1448]
!328 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"byteswap", metadata !"byteswap", metadata !"", i32 1313, metadata !329, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !331, i32 1314} ; [ DW_TAG_subprogram ] [line 1313] [local] [def] [scope 1314] [byteswap]
!329 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!330 = metadata !{null, metadata !38, metadata !36}
!331 = metadata !{metadata !332, metadata !333, metadata !334, metadata !335}
!332 = metadata !{i32 786689, metadata !328, metadata !"swap", metadata !21, i32 16778529, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [swap] [line 1313]
!333 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!334 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!335 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!336 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_asc10hmm", metadata !"read_asc10hmm", metadata !"", i32 1228, metadata !219, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc10hmm, null, null, metadata !337, i32 1229} ; [ DW_TAG_subprogram ] [line 1228] [local] [def] [scope 1229] [read_asc10hmm]
!337 = metadata !{metadata !338, metadata !339}
!338 = metadata !{i32 786689, metadata !336, metadata !"hmmfp", metadata !21, i32 16778444, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfp] [line 1228]
!339 = metadata !{i32 786689, metadata !336, metadata !"ret_hmm", metadata !21, i32 33555660, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_hmm] [line 1228]
!340 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_bin11hmm", metadata !"read_bin11hmm", metadata !"", i32 1202, metadata !219, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin11hmm, null, null, metadata !341, i32 1203} ; [ DW_TAG_subprogram ] [line 1202] [local] [def] [scope 1203] [read_bin11hmm]
!341 = metadata !{metadata !342, metadata !343, metadata !344, metadata !345, metadata !346}
!342 = metadata !{i32 786689, metadata !340, metadata !"hmmfp", metadata !21, i32 16778418, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfp] [line 1202]
!343 = metadata !{i32 786689, metadata !340, metadata !"ret_hmm", metadata !21, i32 33555634, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_hmm] [line 1202]
!344 = metadata !{i32 786688, metadata !340, metadata !"magic", metadata !21, i32 1204, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [magic] [line 1204]
!345 = metadata !{i32 786688, metadata !340, metadata !"hmm", metadata !21, i32 1205, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmm] [line 1205]
!346 = metadata !{i32 786688, metadata !340, metadata !"p9hmm", metadata !21, i32 1206, metadata !292, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p9hmm] [line 1206]
!347 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_asc11hmm", metadata !"read_asc11hmm", metadata !"", i32 1196, metadata !219, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc11hmm, null, null, metadata !348, i32 1197} ; [ DW_TAG_subprogram ] [line 1196] [local] [def] [scope 1197] [read_asc11hmm]
!348 = metadata !{metadata !349, metadata !350}
!349 = metadata !{i32 786689, metadata !347, metadata !"hmmfp", metadata !21, i32 16778412, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfp] [line 1196]
!350 = metadata !{i32 786689, metadata !347, metadata !"ret_hmm", metadata !21, i32 33555628, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_hmm] [line 1196]
!351 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_bin17hmm", metadata !"read_bin17hmm", metadata !"", i32 1170, metadata !219, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin17hmm, null, null, metadata !352, i32 1171} ; [ DW_TAG_subprogram ] [line 1170] [local] [def] [scope 1171] [read_bin17hmm]
!352 = metadata !{metadata !353, metadata !354, metadata !355, metadata !356, metadata !357}
!353 = metadata !{i32 786689, metadata !351, metadata !"hmmfp", metadata !21, i32 16778386, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfp] [line 1170]
!354 = metadata !{i32 786689, metadata !351, metadata !"ret_hmm", metadata !21, i32 33555602, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_hmm] [line 1170]
!355 = metadata !{i32 786688, metadata !351, metadata !"magic", metadata !21, i32 1172, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [magic] [line 1172]
!356 = metadata !{i32 786688, metadata !351, metadata !"hmm", metadata !21, i32 1173, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmm] [line 1173]
!357 = metadata !{i32 786688, metadata !351, metadata !"p9hmm", metadata !21, i32 1174, metadata !292, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p9hmm] [line 1174]
!358 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_asc17hmm", metadata !"read_asc17hmm", metadata !"", i32 1144, metadata !219, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc17hmm, null, null, metadata !359, i32 1145} ; [ DW_TAG_subprogram ] [line 1144] [local] [def] [scope 1145] [read_asc17hmm]
!359 = metadata !{metadata !360, metadata !361, metadata !362, metadata !363, metadata !364}
!360 = metadata !{i32 786689, metadata !358, metadata !"hmmfp", metadata !21, i32 16778360, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfp] [line 1144]
!361 = metadata !{i32 786689, metadata !358, metadata !"ret_hmm", metadata !21, i32 33555576, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_hmm] [line 1144]
!362 = metadata !{i32 786688, metadata !358, metadata !"hmm", metadata !21, i32 1146, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmm] [line 1146]
!363 = metadata !{i32 786688, metadata !358, metadata !"p9hmm", metadata !21, i32 1147, metadata !292, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p9hmm] [line 1147]
!364 = metadata !{i32 786688, metadata !358, metadata !"buffer", metadata !21, i32 1148, metadata !210, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 1148]
!365 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_plan9_aschmm", metadata !"read_plan9_aschmm", metadata !"", i32 1585, metadata !366, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !368, i32 1586} ; [ DW_TAG_subprogram ] [line 1585] [local] [def] [scope 1586] [read_plan9_aschmm]
!366 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!367 = metadata !{metadata !292, metadata !30, metadata !36}
!368 = metadata !{metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379}
!369 = metadata !{i32 786689, metadata !365, metadata !"fp", metadata !21, i32 16778801, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1585]
!370 = metadata !{i32 786689, metadata !365, metadata !"version", metadata !21, i32 33556017, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [version] [line 1585]
!371 = metadata !{i32 786688, metadata !365, metadata !"hmm", metadata !21, i32 1587, metadata !292, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmm] [line 1587]
!372 = metadata !{i32 786688, metadata !365, metadata !"M", metadata !21, i32 1588, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [M] [line 1588]
!373 = metadata !{i32 786688, metadata !365, metadata !"buffer", metadata !21, i32 1589, metadata !210, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 1589]
!374 = metadata !{i32 786688, metadata !365, metadata !"statetype", metadata !21, i32 1590, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [statetype] [line 1590]
!375 = metadata !{i32 786688, metadata !365, metadata !"s", metadata !21, i32 1591, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 1591]
!376 = metadata !{i32 786688, metadata !365, metadata !"k", metadata !21, i32 1592, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1592]
!377 = metadata !{i32 786688, metadata !365, metadata !"i", metadata !21, i32 1593, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1593]
!378 = metadata !{i32 786688, metadata !365, metadata !"asize", metadata !21, i32 1594, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [asize] [line 1594]
!379 = metadata !{i32 786688, metadata !365, metadata !"atype", metadata !21, i32 1595, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atype] [line 1595]
!380 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_bin19hmm", metadata !"read_bin19hmm", metadata !"", i32 1119, metadata !219, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin19hmm, null, null, metadata !381, i32 1120} ; [ DW_TAG_subprogram ] [line 1119] [local] [def] [scope 1120] [read_bin19hmm]
!381 = metadata !{metadata !382, metadata !383, metadata !384, metadata !385, metadata !386}
!382 = metadata !{i32 786689, metadata !380, metadata !"hmmfp", metadata !21, i32 16778335, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfp] [line 1119]
!383 = metadata !{i32 786689, metadata !380, metadata !"ret_hmm", metadata !21, i32 33555551, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_hmm] [line 1119]
!384 = metadata !{i32 786688, metadata !380, metadata !"magic", metadata !21, i32 1121, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [magic] [line 1121]
!385 = metadata !{i32 786688, metadata !380, metadata !"hmm", metadata !21, i32 1122, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmm] [line 1122]
!386 = metadata !{i32 786688, metadata !380, metadata !"p9hmm", metadata !21, i32 1123, metadata !292, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p9hmm] [line 1123]
!387 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_asc19hmm", metadata !"read_asc19hmm", metadata !"", i32 968, metadata !219, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc19hmm, null, null, metadata !388, i32 969} ; [ DW_TAG_subprogram ] [line 968] [local] [def] [scope 969] [read_asc19hmm]
!388 = metadata !{metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398}
!389 = metadata !{i32 786689, metadata !387, metadata !"hmmfp", metadata !21, i32 16778184, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfp] [line 968]
!390 = metadata !{i32 786689, metadata !387, metadata !"ret_hmm", metadata !21, i32 33555400, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_hmm] [line 968]
!391 = metadata !{i32 786688, metadata !387, metadata !"hmm", metadata !21, i32 970, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmm] [line 970]
!392 = metadata !{i32 786688, metadata !387, metadata !"fp", metadata !21, i32 971, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 971]
!393 = metadata !{i32 786688, metadata !387, metadata !"buffer", metadata !21, i32 972, metadata !210, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 972]
!394 = metadata !{i32 786688, metadata !387, metadata !"s", metadata !21, i32 973, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 973]
!395 = metadata !{i32 786688, metadata !387, metadata !"M", metadata !21, i32 974, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [M] [line 974]
!396 = metadata !{i32 786688, metadata !387, metadata !"k", metadata !21, i32 975, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 975]
!397 = metadata !{i32 786688, metadata !387, metadata !"x", metadata !21, i32 976, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 976]
!398 = metadata !{i32 786688, metadata !387, metadata !"atype", metadata !21, i32 977, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atype] [line 977]
!399 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"ascii2prob", metadata !"ascii2prob", metadata !"", i32 1286, metadata !400, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i8*, float)* @ascii2prob, null, null, metadata !402, i32 1287} ; [ DW_TAG_subprogram ] [line 1286] [local] [def] [scope 1287] [ascii2prob]
!400 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !401, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!401 = metadata !{metadata !156, metadata !38, metadata !156}
!402 = metadata !{metadata !403, metadata !404}
!403 = metadata !{i32 786689, metadata !399, metadata !"s", metadata !21, i32 16778502, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1286]
!404 = metadata !{i32 786689, metadata !399, metadata !"null", metadata !21, i32 33555718, metadata !156, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [null] [line 1286]
!405 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_bin20hmm", metadata !"read_bin20hmm", metadata !"", i32 782, metadata !219, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin20hmm, null, null, metadata !406, i32 783} ; [ DW_TAG_subprogram ] [line 782] [local] [def] [scope 783] [read_bin20hmm]
!406 = metadata !{metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413}
!407 = metadata !{i32 786689, metadata !405, metadata !"hmmfp", metadata !21, i32 16777998, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfp] [line 782]
!408 = metadata !{i32 786689, metadata !405, metadata !"ret_hmm", metadata !21, i32 33555214, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_hmm] [line 782]
!409 = metadata !{i32 786688, metadata !405, metadata !"hmm", metadata !21, i32 784, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmm] [line 784]
!410 = metadata !{i32 786688, metadata !405, metadata !"k", metadata !21, i32 785, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 785]
!411 = metadata !{i32 786688, metadata !405, metadata !"x", metadata !21, i32 785, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 785]
!412 = metadata !{i32 786688, metadata !405, metadata !"type", metadata !21, i32 786, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 786]
!413 = metadata !{i32 786688, metadata !405, metadata !"magic", metadata !21, i32 787, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [magic] [line 787]
!414 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_bin_string", metadata !"read_bin_string", metadata !"", i32 1363, metadata !415, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i32, i8**)* @read_bin_string, null, null, metadata !417, i32 1364} ; [ DW_TAG_subprogram ] [line 1363] [local] [def] [scope 1364] [read_bin_string]
!415 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!416 = metadata !{metadata !36, metadata !30, metadata !36, metadata !125}
!417 = metadata !{metadata !418, metadata !419, metadata !420, metadata !421, metadata !422}
!418 = metadata !{i32 786689, metadata !414, metadata !"fp", metadata !21, i32 16778579, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1363]
!419 = metadata !{i32 786689, metadata !414, metadata !"doswap", metadata !21, i32 33555795, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [doswap] [line 1363]
!420 = metadata !{i32 786689, metadata !414, metadata !"ret_s", metadata !21, i32 50333011, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_s] [line 1363]
!421 = metadata !{i32 786688, metadata !414, metadata !"s", metadata !21, i32 1365, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 1365]
!422 = metadata !{i32 786688, metadata !414, metadata !"len", metadata !21, i32 1366, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1366]
!423 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_asc20hmm", metadata !"read_asc20hmm", metadata !"", i32 567, metadata !219, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc20hmm, null, null, metadata !424, i32 568} ; [ DW_TAG_subprogram ] [line 567] [local] [def] [scope 568] [read_asc20hmm]
!424 = metadata !{metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434}
!425 = metadata !{i32 786689, metadata !423, metadata !"hmmfp", metadata !21, i32 16777783, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmmfp] [line 567]
!426 = metadata !{i32 786689, metadata !423, metadata !"ret_hmm", metadata !21, i32 33554999, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_hmm] [line 567]
!427 = metadata !{i32 786688, metadata !423, metadata !"hmm", metadata !21, i32 569, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmm] [line 569]
!428 = metadata !{i32 786688, metadata !423, metadata !"buffer", metadata !21, i32 570, metadata !210, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 570]
!429 = metadata !{i32 786688, metadata !423, metadata !"s", metadata !21, i32 571, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 571]
!430 = metadata !{i32 786688, metadata !423, metadata !"M", metadata !21, i32 572, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [M] [line 572]
!431 = metadata !{i32 786688, metadata !423, metadata !"p", metadata !21, i32 573, metadata !156, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 573]
!432 = metadata !{i32 786688, metadata !423, metadata !"k", metadata !21, i32 574, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 574]
!433 = metadata !{i32 786688, metadata !423, metadata !"x", metadata !21, i32 574, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 574]
!434 = metadata !{i32 786688, metadata !423, metadata !"atype", metadata !21, i32 575, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [atype] [line 575]
!435 = metadata !{metadata !436, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448, metadata !449}
!436 = metadata !{i32 786484, i32 0, metadata !279, metadata !"buffer", metadata !"buffer", metadata !"", metadata !21, i32 1273, metadata !437, i32 1, i32 1, [8 x i8]* @prob2ascii.buffer, null} ; [ DW_TAG_variable ] [buffer] [line 1273] [local] [def]
!437 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !39, metadata !438, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from char]
!438 = metadata !{metadata !439}
!439 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!440 = metadata !{i32 786484, i32 0, null, metadata !"v10swap", metadata !"v10swap", metadata !"", metadata !21, i32 94, metadata !97, i32 1, i32 1, null, null}
!441 = metadata !{i32 786484, i32 0, null, metadata !"v10magic", metadata !"v10magic", metadata !"", metadata !21, i32 93, metadata !97, i32 1, i32 1, null, null}
!442 = metadata !{i32 786484, i32 0, null, metadata !"v11swap", metadata !"v11swap", metadata !"", metadata !21, i32 96, metadata !97, i32 1, i32 1, null, null}
!443 = metadata !{i32 786484, i32 0, null, metadata !"v11magic", metadata !"v11magic", metadata !"", metadata !21, i32 95, metadata !97, i32 1, i32 1, null, null}
!444 = metadata !{i32 786484, i32 0, null, metadata !"v17swap", metadata !"v17swap", metadata !"", metadata !21, i32 98, metadata !97, i32 1, i32 1, null, null}
!445 = metadata !{i32 786484, i32 0, null, metadata !"v17magic", metadata !"v17magic", metadata !"", metadata !21, i32 97, metadata !97, i32 1, i32 1, null, null}
!446 = metadata !{i32 786484, i32 0, null, metadata !"v19swap", metadata !"v19swap", metadata !"", metadata !21, i32 100, metadata !97, i32 1, i32 1, null, null}
!447 = metadata !{i32 786484, i32 0, null, metadata !"v19magic", metadata !"v19magic", metadata !"", metadata !21, i32 99, metadata !97, i32 1, i32 1, null, null}
!448 = metadata !{i32 786484, i32 0, null, metadata !"v20swap", metadata !"v20swap", metadata !"", metadata !21, i32 102, metadata !97, i32 1, i32 1, null, null}
!449 = metadata !{i32 786484, i32 0, null, metadata !"v20magic", metadata !"v20magic", metadata !"", metadata !21, i32 101, metadata !97, i32 1, i32 1, i32* @v20magic, null} ; [ DW_TAG_variable ] [v20magic] [line 101] [local] [def]
!450 = metadata !{i32 155, i32 0, metadata !20, null}
!451 = metadata !{i32 158, i32 0, metadata !20, null}
!452 = metadata !{i32 159, i32 0, metadata !20, null}
!453 = metadata !{i32 161, i32 0, metadata !20, null}
!454 = metadata !{i32 164, i32 0, metadata !20, null}
!455 = metadata !{i32 165, i32 0, metadata !20, null}
!456 = metadata !{i32 166, i32 0, metadata !20, null}
!457 = metadata !{i32 167, i32 0, metadata !20, null}
!458 = metadata !{i32 168, i32 0, metadata !20, null}
!459 = metadata !{i32 169, i32 0, metadata !20, null}
!460 = metadata !{metadata !"int", metadata !461}
!461 = metadata !{metadata !"omnipotent char", metadata !462}
!462 = metadata !{metadata !"Simple C/C++ TBAA"}
!463 = metadata !{i32 178, i32 0, metadata !20, null}
!464 = metadata !{i32 179, i32 0, metadata !20, null}
!465 = metadata !{metadata !"any pointer", metadata !461}
!466 = metadata !{i32 181, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !20, i32 180, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!468 = metadata !{i32 182, i32 0, metadata !467, null}
!469 = metadata !{i32 184, i32 0, metadata !467, null}
!470 = metadata !{i32 185, i32 0, metadata !467, null}
!471 = metadata !{i32 187, i32 0, metadata !20, null}
!472 = metadata !{i32 190, i32 0, metadata !217, null}
!473 = metadata !{i32 192, i32 0, metadata !217, null}
!474 = metadata !{i32 193, i32 0, metadata !217, null}
!475 = metadata !{i32 195, i32 0, metadata !217, null}
!476 = metadata !{i32 196, i32 0, metadata !217, null}
!477 = metadata !{i32 198, i32 0, metadata !217, null}
!478 = metadata !{i32 199, i32 0, metadata !217, null}
!479 = metadata !{i32 207, i32 0, metadata !20, null}
!480 = metadata !{i32 208, i32 0, metadata !20, null}
!481 = metadata !{i32 212, i32 0, metadata !20, null}
!482 = metadata !{i32 213, i32 0, metadata !20, null}
!483 = metadata !{i32 218, i32 0, metadata !20, null}
!484 = metadata !{i32 219, i32 0, metadata !485, null}
!485 = metadata !{i32 786443, metadata !1, metadata !20, i32 218, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!486 = metadata !{i32 220, i32 0, metadata !485, null}
!487 = metadata !{i32 222, i32 0, metadata !20, null}
!488 = metadata !{i32 224, i32 0, metadata !20, null}
!489 = metadata !{i32 225, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !1, metadata !20, i32 224, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!491 = metadata !{i32 226, i32 0, metadata !490, null}
!492 = metadata !{i32 227, i32 0, metadata !490, null}
!493 = metadata !{i32 229, i32 0, metadata !20, null}
!494 = metadata !{i32 231, i32 0, metadata !495, null}
!495 = metadata !{i32 786443, metadata !1, metadata !20, i32 229, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!496 = metadata !{i32 232, i32 0, metadata !495, null}
!497 = metadata !{i32 233, i32 0, metadata !495, null}
!498 = metadata !{i32 234, i32 0, metadata !495, null}
!499 = metadata !{i32 237, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !20, i32 236, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!501 = metadata !{i32 238, i32 0, metadata !500, null}
!502 = metadata !{i32 239, i32 0, metadata !500, null}
!503 = metadata !{i32 242, i32 0, metadata !504, null}
!504 = metadata !{i32 786443, metadata !1, metadata !20, i32 241, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!505 = metadata !{i32 243, i32 0, metadata !504, null}
!506 = metadata !{i32 244, i32 0, metadata !504, null}
!507 = metadata !{i32 245, i32 0, metadata !504, null}
!508 = metadata !{i32 248, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !20, i32 247, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!510 = metadata !{i32 249, i32 0, metadata !509, null}
!511 = metadata !{i32 250, i32 0, metadata !509, null}
!512 = metadata !{i32 253, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !1, metadata !20, i32 252, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!514 = metadata !{i32 254, i32 0, metadata !513, null}
!515 = metadata !{i32 255, i32 0, metadata !513, null}
!516 = metadata !{i32 256, i32 0, metadata !513, null}
!517 = metadata !{i32 259, i32 0, metadata !518, null}
!518 = metadata !{i32 786443, metadata !1, metadata !20, i32 258, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!519 = metadata !{i32 260, i32 0, metadata !518, null}
!520 = metadata !{i32 261, i32 0, metadata !518, null}
!521 = metadata !{i32 264, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !20, i32 263, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!523 = metadata !{i32 265, i32 0, metadata !522, null}
!524 = metadata !{i32 266, i32 0, metadata !522, null}
!525 = metadata !{i32 267, i32 0, metadata !522, null}
!526 = metadata !{i32 270, i32 0, metadata !527, null}
!527 = metadata !{i32 786443, metadata !1, metadata !20, i32 269, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!528 = metadata !{i32 271, i32 0, metadata !527, null}
!529 = metadata !{i32 272, i32 0, metadata !527, null}
!530 = metadata !{i32 275, i32 0, metadata !531, null}
!531 = metadata !{i32 786443, metadata !1, metadata !20, i32 274, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!532 = metadata !{i32 276, i32 0, metadata !531, null}
!533 = metadata !{i32 277, i32 0, metadata !531, null}
!534 = metadata !{i32 278, i32 0, metadata !531, null}
!535 = metadata !{i32 284, i32 0, metadata !20, null}
!536 = metadata !{i32 285, i32 0, metadata !537, null}
!537 = metadata !{i32 786443, metadata !1, metadata !20, i32 284, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!538 = metadata !{i32 289, i32 0, metadata !537, null}
!539 = metadata !{i32 290, i32 0, metadata !537, null}
!540 = metadata !{i32 295, i32 0, metadata !20, null}
!541 = metadata !{i32 296, i32 0, metadata !542, null}
!542 = metadata !{i32 786443, metadata !1, metadata !20, i32 295, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!543 = metadata !{i32 297, i32 0, metadata !542, null}
!544 = metadata !{i32 299, i32 0, metadata !20, null}
!545 = metadata !{i32 301, i32 0, metadata !20, null}
!546 = metadata !{i32 302, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !1, metadata !20, i32 301, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!548 = metadata !{i32 303, i32 0, metadata !547, null}
!549 = metadata !{i32 304, i32 0, metadata !20, null}
!550 = metadata !{i32 305, i32 0, metadata !551, null}
!551 = metadata !{i32 786443, metadata !1, metadata !20, i32 304, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!552 = metadata !{i32 306, i32 0, metadata !551, null}
!553 = metadata !{i32 307, i32 0, metadata !20, null}
!554 = metadata !{i32 308, i32 0, metadata !555, null}
!555 = metadata !{i32 786443, metadata !1, metadata !20, i32 307, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!556 = metadata !{i32 309, i32 0, metadata !555, null}
!557 = metadata !{i32 310, i32 0, metadata !20, null}
!558 = metadata !{i32 311, i32 0, metadata !559, null}
!559 = metadata !{i32 786443, metadata !1, metadata !20, i32 310, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!560 = metadata !{i32 312, i32 0, metadata !559, null}
!561 = metadata !{i32 313, i32 0, metadata !20, null}
!562 = metadata !{i32 314, i32 0, metadata !563, null}
!563 = metadata !{i32 786443, metadata !1, metadata !20, i32 313, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!564 = metadata !{i32 315, i32 0, metadata !563, null}
!565 = metadata !{i32 320, i32 0, metadata !20, null}
!566 = metadata !{i32 321, i32 0, metadata !20, null}
!567 = metadata !{i32 322, i32 0, metadata !20, null}
!568 = metadata !{i32 336, i32 0, metadata !225, null}
!569 = metadata !{i32 338, i32 0, metadata !225, null}
!570 = metadata !{i32 339, i32 0, metadata !225, null}
!571 = metadata !{i32 340, i32 0, metadata !225, null}
!572 = metadata !{i32 341, i32 0, metadata !225, null}
!573 = metadata !{i32 782, i32 0, metadata !405, null}
!574 = metadata !{i32 786, i32 0, metadata !405, null}
!575 = metadata !{i32 787, i32 0, metadata !405, null}
!576 = metadata !{%struct.plan7_s* null}
!577 = metadata !{i32 789, i32 0, metadata !405, null}
!578 = metadata !{i32 793, i32 0, metadata !405, null}
!579 = metadata !{i32 794, i32 0, metadata !405, null}
!580 = metadata !{i32 796, i32 0, metadata !405, null}
!581 = metadata !{i32 1320, i32 0, metadata !582, metadata !580}
!582 = metadata !{i32 786443, metadata !1, metadata !583, i32 1319, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!583 = metadata !{i32 786443, metadata !1, metadata !328, i32 1318, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!584 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !580} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!585 = metadata !{i32 1321, i32 0, metadata !582, metadata !580}
!586 = metadata !{i32 1322, i32 0, metadata !582, metadata !580}
!587 = metadata !{i32 1318, i32 0, metadata !583, metadata !580}
!588 = metadata !{i32 797, i32 0, metadata !405, null}
!589 = metadata !{i32 799, i32 0, metadata !405, null}
!590 = metadata !{i32 801, i32 0, metadata !405, null}
!591 = metadata !{i32 802, i32 0, metadata !405, null}
!592 = metadata !{i32 1320, i32 0, metadata !582, metadata !591}
!593 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !591} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!594 = metadata !{i32 1321, i32 0, metadata !582, metadata !591}
!595 = metadata !{i32 1322, i32 0, metadata !582, metadata !591}
!596 = metadata !{i32 1318, i32 0, metadata !583, metadata !591}
!597 = metadata !{i32 804, i32 0, metadata !405, null}
!598 = metadata !{i32 807, i32 0, metadata !405, null}
!599 = metadata !{i32 808, i32 0, metadata !405, null}
!600 = metadata !{i32 810, i32 0, metadata !405, null}
!601 = metadata !{i32 811, i32 0, metadata !405, null}
!602 = metadata !{i32 813, i32 0, metadata !405, null}
!603 = metadata !{i32 814, i32 0, metadata !405, null}
!604 = metadata !{i32 1320, i32 0, metadata !582, metadata !603}
!605 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !603} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!606 = metadata !{i32 1321, i32 0, metadata !582, metadata !603}
!607 = metadata !{i32 1322, i32 0, metadata !582, metadata !603}
!608 = metadata !{i32 1318, i32 0, metadata !583, metadata !603}
!609 = metadata !{i32 816, i32 0, metadata !405, null}
!610 = metadata !{i32 817, i32 0, metadata !405, null}
!611 = metadata !{i32 1320, i32 0, metadata !582, metadata !610}
!612 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !610} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!613 = metadata !{i32 1321, i32 0, metadata !582, metadata !610}
!614 = metadata !{i32 1322, i32 0, metadata !582, metadata !610}
!615 = metadata !{i32 1318, i32 0, metadata !583, metadata !610}
!616 = metadata !{i32 818, i32 0, metadata !405, null}
!617 = metadata !{i32 819, i32 0, metadata !405, null}
!618 = metadata !{i32 820, i32 0, metadata !405, null}
!619 = metadata !{i32 823, i32 0, metadata !405, null}
!620 = metadata !{i32 826, i32 0, metadata !405, null}
!621 = metadata !{i32 828, i32 0, metadata !405, null}
!622 = metadata !{i32 827, i32 0, metadata !405, null}
!623 = metadata !{i32 830, i32 0, metadata !405, null}
!624 = metadata !{i32 832, i32 0, metadata !405, null}
!625 = metadata !{i32 831, i32 0, metadata !405, null}
!626 = metadata !{i32 834, i32 0, metadata !405, null}
!627 = metadata !{i32 835, i32 0, metadata !405, null}
!628 = metadata !{i32 836, i32 0, metadata !405, null}
!629 = metadata !{i32 837, i32 0, metadata !630, null}
!630 = metadata !{i32 786443, metadata !1, metadata !405, i32 837, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!631 = metadata !{i32 838, i32 0, metadata !630, null}
!632 = metadata !{i32 4}
!633 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !631} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!634 = metadata !{i32 1313, i32 0, metadata !328, metadata !631}
!635 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !631} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!636 = metadata !{i32 1318, i32 0, metadata !583, metadata !631}
!637 = metadata !{i32 1320, i32 0, metadata !582, metadata !631}
!638 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !631} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!639 = metadata !{i32 1321, i32 0, metadata !582, metadata !631}
!640 = metadata !{i32 1322, i32 0, metadata !582, metadata !631}
!641 = metadata !{i32 840, i32 0, metadata !405, null}
!642 = metadata !{i32 842, i32 0, metadata !405, null}
!643 = metadata !{i32 843, i32 0, metadata !405, null}
!644 = metadata !{i32 1320, i32 0, metadata !582, metadata !643}
!645 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !643} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!646 = metadata !{i32 1321, i32 0, metadata !582, metadata !643}
!647 = metadata !{i32 1322, i32 0, metadata !582, metadata !643}
!648 = metadata !{i32 1318, i32 0, metadata !583, metadata !643}
!649 = metadata !{i32 845, i32 0, metadata !405, null}
!650 = metadata !{i32 847, i32 0, metadata !405, null}
!651 = metadata !{i32 848, i32 0, metadata !405, null}
!652 = metadata !{i32 1320, i32 0, metadata !582, metadata !651}
!653 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !651} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!654 = metadata !{i32 1321, i32 0, metadata !582, metadata !651}
!655 = metadata !{i32 1322, i32 0, metadata !582, metadata !651}
!656 = metadata !{i32 1318, i32 0, metadata !583, metadata !651}
!657 = metadata !{i32 851, i32 0, metadata !405, null}
!658 = metadata !{i32 852, i32 0, metadata !659, null}
!659 = metadata !{i32 786443, metadata !1, metadata !405, i32 851, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!660 = metadata !{i32 853, i32 0, metadata !659, null}
!661 = metadata !{i32 854, i32 0, metadata !659, null}
!662 = metadata !{i32 1320, i32 0, metadata !582, metadata !663}
!663 = metadata !{i32 855, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !659, i32 854, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!665 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !663} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!666 = metadata !{i32 1321, i32 0, metadata !582, metadata !663}
!667 = metadata !{i32 1322, i32 0, metadata !582, metadata !663}
!668 = metadata !{i32 1318, i32 0, metadata !583, metadata !663}
!669 = metadata !{i32 1320, i32 0, metadata !582, metadata !670}
!670 = metadata !{i32 856, i32 0, metadata !664, null}
!671 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !670} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!672 = metadata !{i32 1321, i32 0, metadata !582, metadata !670}
!673 = metadata !{i32 1322, i32 0, metadata !582, metadata !670}
!674 = metadata !{i32 1318, i32 0, metadata !583, metadata !670}
!675 = metadata !{i32 860, i32 0, metadata !405, null}
!676 = metadata !{i32 861, i32 0, metadata !677, null}
!677 = metadata !{i32 786443, metadata !1, metadata !405, i32 860, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!678 = metadata !{i32 862, i32 0, metadata !677, null}
!679 = metadata !{i32 863, i32 0, metadata !677, null}
!680 = metadata !{i32 1320, i32 0, metadata !582, metadata !681}
!681 = metadata !{i32 864, i32 0, metadata !682, null}
!682 = metadata !{i32 786443, metadata !1, metadata !677, i32 863, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!683 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !681} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!684 = metadata !{i32 1321, i32 0, metadata !582, metadata !681}
!685 = metadata !{i32 1322, i32 0, metadata !582, metadata !681}
!686 = metadata !{i32 1318, i32 0, metadata !583, metadata !681}
!687 = metadata !{i32 1320, i32 0, metadata !582, metadata !688}
!688 = metadata !{i32 865, i32 0, metadata !682, null}
!689 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !688} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!690 = metadata !{i32 1321, i32 0, metadata !582, metadata !688}
!691 = metadata !{i32 1322, i32 0, metadata !582, metadata !688}
!692 = metadata !{i32 1318, i32 0, metadata !583, metadata !688}
!693 = metadata !{i32 869, i32 0, metadata !405, null}
!694 = metadata !{i32 870, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !405, i32 869, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!696 = metadata !{i32 871, i32 0, metadata !695, null}
!697 = metadata !{i32 872, i32 0, metadata !695, null}
!698 = metadata !{i32 1320, i32 0, metadata !582, metadata !699}
!699 = metadata !{i32 873, i32 0, metadata !700, null}
!700 = metadata !{i32 786443, metadata !1, metadata !695, i32 872, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!701 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !699} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!702 = metadata !{i32 1321, i32 0, metadata !582, metadata !699}
!703 = metadata !{i32 1322, i32 0, metadata !582, metadata !699}
!704 = metadata !{i32 1318, i32 0, metadata !583, metadata !699}
!705 = metadata !{i32 1320, i32 0, metadata !582, metadata !706}
!706 = metadata !{i32 874, i32 0, metadata !700, null}
!707 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !706} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!708 = metadata !{i32 1321, i32 0, metadata !582, metadata !706}
!709 = metadata !{i32 1322, i32 0, metadata !582, metadata !706}
!710 = metadata !{i32 1318, i32 0, metadata !583, metadata !706}
!711 = metadata !{i32 881, i32 0, metadata !712, null}
!712 = metadata !{i32 786443, metadata !1, metadata !713, i32 880, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!713 = metadata !{i32 786443, metadata !1, metadata !405, i32 879, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!714 = metadata !{i32 882, i32 0, metadata !712, null}
!715 = metadata !{i32 884, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !1, metadata !717, i32 883, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!717 = metadata !{i32 786443, metadata !1, metadata !712, i32 882, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!718 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !715} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!719 = metadata !{i32 1313, i32 0, metadata !328, metadata !715}
!720 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !715} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!721 = metadata !{i32 1318, i32 0, metadata !583, metadata !715}
!722 = metadata !{i32 1320, i32 0, metadata !582, metadata !715}
!723 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !715} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!724 = metadata !{i32 1321, i32 0, metadata !582, metadata !715}
!725 = metadata !{i32 1322, i32 0, metadata !582, metadata !715}
!726 = metadata !{i32 883, i32 0, metadata !716, null}
!727 = metadata !{i32 879, i32 0, metadata !713, null}
!728 = metadata !{i32 889, i32 0, metadata !405, null}
!729 = metadata !{i32 890, i32 0, metadata !405, null}
!730 = metadata !{i32 893, i32 0, metadata !405, null}
!731 = metadata !{i32 894, i32 0, metadata !732, null}
!732 = metadata !{i32 786443, metadata !1, metadata !405, i32 893, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!733 = metadata !{i32 895, i32 0, metadata !732, null}
!734 = metadata !{i32 897, i32 0, metadata !732, null}
!735 = metadata !{i32 1320, i32 0, metadata !582, metadata !736}
!736 = metadata !{i32 898, i32 0, metadata !737, null}
!737 = metadata !{i32 786443, metadata !1, metadata !732, i32 897, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!738 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !736} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!739 = metadata !{i32 1321, i32 0, metadata !582, metadata !736}
!740 = metadata !{i32 1322, i32 0, metadata !582, metadata !736}
!741 = metadata !{i32 1318, i32 0, metadata !583, metadata !736}
!742 = metadata !{i32 1320, i32 0, metadata !582, metadata !743}
!743 = metadata !{i32 899, i32 0, metadata !737, null}
!744 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !743} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!745 = metadata !{i32 1321, i32 0, metadata !582, metadata !743}
!746 = metadata !{i32 1322, i32 0, metadata !582, metadata !743}
!747 = metadata !{i32 1318, i32 0, metadata !583, metadata !743}
!748 = metadata !{i32 905, i32 0, metadata !405, null}
!749 = metadata !{i32 906, i32 0, metadata !405, null}
!750 = metadata !{i32 907, i32 0, metadata !405, null}
!751 = metadata !{i32 910, i32 0, metadata !752, null}
!752 = metadata !{i32 786443, metadata !1, metadata !405, i32 910, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!753 = metadata !{i32 911, i32 0, metadata !752, null}
!754 = metadata !{i32 912, i32 0, metadata !755, null}
!755 = metadata !{i32 786443, metadata !1, metadata !405, i32 912, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!756 = metadata !{i32 913, i32 0, metadata !755, null}
!757 = metadata !{i32 914, i32 0, metadata !758, null}
!758 = metadata !{i32 786443, metadata !1, metadata !405, i32 914, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!759 = metadata !{i32 915, i32 0, metadata !758, null}
!760 = metadata !{i32 919, i32 0, metadata !405, null}
!761 = metadata !{i32 920, i32 0, metadata !762, null}
!762 = metadata !{i32 786443, metadata !1, metadata !763, i32 920, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!763 = metadata !{i32 786443, metadata !1, metadata !405, i32 919, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!764 = metadata !{i32 921, i32 0, metadata !762, null}
!765 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !764} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!766 = metadata !{i32 1313, i32 0, metadata !328, metadata !764}
!767 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !764} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!768 = metadata !{i32 1318, i32 0, metadata !583, metadata !764}
!769 = metadata !{i32 1320, i32 0, metadata !582, metadata !764}
!770 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !764} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!771 = metadata !{i32 1321, i32 0, metadata !582, metadata !764}
!772 = metadata !{i32 1322, i32 0, metadata !582, metadata !764}
!773 = metadata !{i32 1320, i32 0, metadata !582, metadata !774}
!774 = metadata !{i32 922, i32 0, metadata !763, null}
!775 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !774} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!776 = metadata !{i32 1321, i32 0, metadata !582, metadata !774}
!777 = metadata !{i32 1322, i32 0, metadata !582, metadata !774}
!778 = metadata !{i32 1318, i32 0, metadata !583, metadata !774}
!779 = metadata !{i32 1320, i32 0, metadata !582, metadata !780}
!780 = metadata !{i32 923, i32 0, metadata !763, null}
!781 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !780} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!782 = metadata !{i32 1321, i32 0, metadata !582, metadata !780}
!783 = metadata !{i32 1322, i32 0, metadata !582, metadata !780}
!784 = metadata !{i32 1318, i32 0, metadata !583, metadata !780}
!785 = metadata !{i32 925, i32 0, metadata !786, null}
!786 = metadata !{i32 786443, metadata !1, metadata !763, i32 925, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!787 = metadata !{i32 936, i32 0, metadata !788, null}
!788 = metadata !{i32 786443, metadata !1, metadata !789, i32 935, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!789 = metadata !{i32 786443, metadata !1, metadata !786, i32 926, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!790 = metadata !{i32 931, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !789, i32 930, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!792 = metadata !{i32 928, i32 0, metadata !793, null}
!793 = metadata !{i32 786443, metadata !1, metadata !789, i32 927, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!794 = metadata !{i32 927, i32 0, metadata !793, null}
!795 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !792} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!796 = metadata !{i32 1313, i32 0, metadata !328, metadata !792}
!797 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !792} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!798 = metadata !{i32 1318, i32 0, metadata !583, metadata !792}
!799 = metadata !{i32 1320, i32 0, metadata !582, metadata !792}
!800 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !792} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!801 = metadata !{i32 1321, i32 0, metadata !582, metadata !792}
!802 = metadata !{i32 1322, i32 0, metadata !582, metadata !792}
!803 = metadata !{i32 929, i32 0, metadata !789, null}
!804 = metadata !{i32 930, i32 0, metadata !791, null}
!805 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !790} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!806 = metadata !{i32 1313, i32 0, metadata !328, metadata !790}
!807 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !790} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!808 = metadata !{i32 1318, i32 0, metadata !583, metadata !790}
!809 = metadata !{i32 1320, i32 0, metadata !582, metadata !790}
!810 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !790} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!811 = metadata !{i32 1321, i32 0, metadata !582, metadata !790}
!812 = metadata !{i32 1322, i32 0, metadata !582, metadata !790}
!813 = metadata !{i32 932, i32 0, metadata !789, null}
!814 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !813} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!815 = metadata !{i32 1313, i32 0, metadata !328, metadata !813}
!816 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !813} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!817 = metadata !{i32 1318, i32 0, metadata !583, metadata !813}
!818 = metadata !{i32 1320, i32 0, metadata !582, metadata !813}
!819 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !813} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!820 = metadata !{i32 1321, i32 0, metadata !582, metadata !813}
!821 = metadata !{i32 1322, i32 0, metadata !582, metadata !813}
!822 = metadata !{i32 933, i32 0, metadata !789, null}
!823 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !822} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!824 = metadata !{i32 1313, i32 0, metadata !328, metadata !822}
!825 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !822} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!826 = metadata !{i32 1318, i32 0, metadata !583, metadata !822}
!827 = metadata !{i32 1320, i32 0, metadata !582, metadata !822}
!828 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !822} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!829 = metadata !{i32 1321, i32 0, metadata !582, metadata !822}
!830 = metadata !{i32 1322, i32 0, metadata !582, metadata !822}
!831 = metadata !{i32 934, i32 0, metadata !789, null}
!832 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !787} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!833 = metadata !{i32 1313, i32 0, metadata !328, metadata !787}
!834 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !787} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!835 = metadata !{i32 1318, i32 0, metadata !583, metadata !787}
!836 = metadata !{i32 1320, i32 0, metadata !582, metadata !787}
!837 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !787} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!838 = metadata !{i32 1321, i32 0, metadata !582, metadata !787}
!839 = metadata !{i32 1322, i32 0, metadata !582, metadata !787}
!840 = metadata !{i32 935, i32 0, metadata !788, null}
!841 = metadata !{i32 943, i32 0, metadata !405, null}
!842 = metadata !{i32 944, i32 0, metadata !405, null}
!843 = metadata !{i32 945, i32 0, metadata !405, null}
!844 = metadata !{i32 946, i32 0, metadata !405, null}
!845 = metadata !{i32 949, i32 0, metadata !405, null}
!846 = metadata !{i32 950, i32 0, metadata !405, null}
!847 = metadata !{i32 951, i32 0, metadata !405, null}
!848 = metadata !{i32 1119, i32 0, metadata !380, null}
!849 = metadata !{i32 1121, i32 0, metadata !380, null}
!850 = metadata !{i32 1122, i32 0, metadata !380, null}
!851 = metadata !{i32 1128, i32 0, metadata !380, null}
!852 = metadata !{i32 1129, i32 0, metadata !380, null}
!853 = metadata !{i32 1131, i32 0, metadata !380, null}
!854 = metadata !{i32 1132, i32 0, metadata !380, null}
!855 = metadata !{i32 1132, i32 0, metadata !856, null}
!856 = metadata !{i32 786443, metadata !1, metadata !380, i32 1132, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!857 = metadata !{i32 1134, i32 0, metadata !380, null}
!858 = metadata !{i32 1136, i32 0, metadata !380, null}
!859 = metadata !{i32 1137, i32 0, metadata !380, null}
!860 = metadata !{i32 1139, i32 0, metadata !380, null}
!861 = metadata !{i32 1140, i32 0, metadata !380, null}
!862 = metadata !{i32 1141, i32 0, metadata !380, null}
!863 = metadata !{i32 1170, i32 0, metadata !351, null}
!864 = metadata !{i32 1172, i32 0, metadata !351, null}
!865 = metadata !{i32 1173, i32 0, metadata !351, null}
!866 = metadata !{i32 1179, i32 0, metadata !351, null}
!867 = metadata !{i32 1180, i32 0, metadata !351, null}
!868 = metadata !{i32 1182, i32 0, metadata !351, null}
!869 = metadata !{i32 1183, i32 0, metadata !351, null}
!870 = metadata !{i32 1183, i32 0, metadata !871, null}
!871 = metadata !{i32 786443, metadata !1, metadata !351, i32 1183, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!872 = metadata !{i32 1185, i32 0, metadata !351, null}
!873 = metadata !{i32 1187, i32 0, metadata !351, null}
!874 = metadata !{i32 1188, i32 0, metadata !351, null}
!875 = metadata !{i32 1190, i32 0, metadata !351, null}
!876 = metadata !{i32 1191, i32 0, metadata !351, null}
!877 = metadata !{i32 1192, i32 0, metadata !351, null}
!878 = metadata !{i32 1202, i32 0, metadata !340, null}
!879 = metadata !{i32 1204, i32 0, metadata !340, null}
!880 = metadata !{i32 1205, i32 0, metadata !340, null}
!881 = metadata !{i32 1211, i32 0, metadata !340, null}
!882 = metadata !{i32 1212, i32 0, metadata !340, null}
!883 = metadata !{i32 1214, i32 0, metadata !340, null}
!884 = metadata !{i32 1215, i32 0, metadata !340, null}
!885 = metadata !{i32 1215, i32 0, metadata !886, null}
!886 = metadata !{i32 786443, metadata !1, metadata !340, i32 1215, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!887 = metadata !{i32 1217, i32 0, metadata !340, null}
!888 = metadata !{i32 1219, i32 0, metadata !340, null}
!889 = metadata !{i32 1220, i32 0, metadata !340, null}
!890 = metadata !{i32 1222, i32 0, metadata !340, null}
!891 = metadata !{i32 1223, i32 0, metadata !340, null}
!892 = metadata !{i32 1224, i32 0, metadata !340, null}
!893 = metadata !{i32 1235, i32 0, metadata !285, null}
!894 = metadata !{i32 1237, i32 0, metadata !285, null}
!895 = metadata !{i32 1238, i32 0, metadata !285, null}
!896 = metadata !{i32 1244, i32 0, metadata !285, null}
!897 = metadata !{i32 1245, i32 0, metadata !285, null}
!898 = metadata !{i32 1247, i32 0, metadata !285, null}
!899 = metadata !{i32 1248, i32 0, metadata !285, null}
!900 = metadata !{i32 1248, i32 0, metadata !901, null}
!901 = metadata !{i32 786443, metadata !1, metadata !285, i32 1248, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!902 = metadata !{i32 1250, i32 0, metadata !285, null}
!903 = metadata !{i32 1252, i32 0, metadata !285, null}
!904 = metadata !{i32 1253, i32 0, metadata !285, null}
!905 = metadata !{i32 1255, i32 0, metadata !285, null}
!906 = metadata !{i32 1256, i32 0, metadata !285, null}
!907 = metadata !{i32 1257, i32 0, metadata !285, null}
!908 = metadata !{i32 567, i32 0, metadata !423, null}
!909 = metadata !{i32 570, i32 0, metadata !423, null}
!910 = metadata !{i32 577, i32 0, metadata !423, null}
!911 = metadata !{i32 578, i32 0, metadata !423, null}
!912 = metadata !{i32 579, i32 0, metadata !423, null}
!913 = metadata !{i32 585, i32 0, metadata !423, null}
!914 = metadata !{i32 -1}
!915 = metadata !{i32 586, i32 0, metadata !423, null}
!916 = metadata !{i32 587, i32 0, metadata !423, null}
!917 = metadata !{i32 588, i32 0, metadata !918, null}
!918 = metadata !{i32 786443, metadata !1, metadata !423, i32 587, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!919 = metadata !{i32 592, i32 0, metadata !918, null}
!920 = metadata !{i32 606, i32 0, metadata !921, null}
!921 = metadata !{i32 786443, metadata !1, metadata !918, i32 605, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!922 = metadata !{i32 619, i32 0, metadata !923, null}
!923 = metadata !{i32 786443, metadata !1, metadata !918, i32 617, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!924 = metadata !{i32 632, i32 0, metadata !925, null}
!925 = metadata !{i32 786443, metadata !1, metadata !918, i32 630, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!926 = metadata !{i32 637, i32 0, metadata !927, null}
!927 = metadata !{i32 786443, metadata !1, metadata !918, i32 635, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!928 = metadata !{i32 639, i32 0, metadata !927, null}
!929 = metadata !{i32 645, i32 0, metadata !930, null}
!930 = metadata !{i32 786443, metadata !1, metadata !918, i32 643, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!931 = metadata !{i32 647, i32 0, metadata !930, null}
!932 = metadata !{i32 653, i32 0, metadata !933, null}
!933 = metadata !{i32 786443, metadata !1, metadata !918, i32 651, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!934 = metadata !{i32 655, i32 0, metadata !933, null}
!935 = metadata !{i32 672, i32 0, metadata !936, null}
!936 = metadata !{i32 786443, metadata !1, metadata !918, i32 670, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!937 = metadata !{i32 691, i32 0, metadata !938, null}
!938 = metadata !{i32 786443, metadata !1, metadata !918, i32 688, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!939 = metadata !{i32 693, i32 0, metadata !938, null}
!940 = metadata !{i32 695, i32 0, metadata !918, null}
!941 = metadata !{i32 589, i32 0, metadata !918, null}
!942 = metadata !{i32 590, i32 0, metadata !918, null}
!943 = metadata !{i32 591, i32 0, metadata !918, null}
!944 = metadata !{i32 593, i32 0, metadata !918, null}
!945 = metadata !{i32 595, i32 0, metadata !946, null}
!946 = metadata !{i32 786443, metadata !1, metadata !918, i32 594, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!947 = metadata !{i32 596, i32 0, metadata !946, null}
!948 = metadata !{i32 597, i32 0, metadata !946, null}
!949 = metadata !{i32 600, i32 0, metadata !946, null}
!950 = metadata !{i32 601, i32 0, metadata !946, null}
!951 = metadata !{i32 602, i32 0, metadata !946, null}
!952 = metadata !{i32 604, i32 0, metadata !918, null}
!953 = metadata !{i32 608, i32 0, metadata !918, null}
!954 = metadata !{i32 610, i32 0, metadata !955, null}
!955 = metadata !{i32 786443, metadata !1, metadata !918, i32 609, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!956 = metadata !{i32 612, i32 0, metadata !918, null}
!957 = metadata !{i32 614, i32 0, metadata !958, null}
!958 = metadata !{i32 786443, metadata !1, metadata !918, i32 613, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!959 = metadata !{i32 616, i32 0, metadata !918, null}
!960 = metadata !{i32 618, i32 0, metadata !923, null}
!961 = metadata !{i32 620, i32 0, metadata !923, null}
!962 = metadata !{i32 623, i32 0, metadata !963, null}
!963 = metadata !{i32 786443, metadata !1, metadata !923, i32 622, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!964 = metadata !{i32 625, i32 0, metadata !963, null}
!965 = metadata !{i32 626, i32 0, metadata !963, null}
!966 = metadata !{i32 629, i32 0, metadata !918, null}
!967 = metadata !{i32 631, i32 0, metadata !925, null}
!968 = metadata !{i32 633, i32 0, metadata !925, null}
!969 = metadata !{i32 634, i32 0, metadata !918, null}
!970 = metadata !{i32 636, i32 0, metadata !927, null}
!971 = metadata !{metadata !"float", metadata !461}
!972 = metadata !{i32 638, i32 0, metadata !927, null}
!973 = metadata !{i32 640, i32 0, metadata !927, null}
!974 = metadata !{i32 641, i32 0, metadata !927, null}
!975 = metadata !{i32 642, i32 0, metadata !918, null}
!976 = metadata !{i32 644, i32 0, metadata !930, null}
!977 = metadata !{i32 646, i32 0, metadata !930, null}
!978 = metadata !{i32 648, i32 0, metadata !930, null}
!979 = metadata !{i32 649, i32 0, metadata !930, null}
!980 = metadata !{i32 650, i32 0, metadata !918, null}
!981 = metadata !{i32 652, i32 0, metadata !933, null}
!982 = metadata !{i32 654, i32 0, metadata !933, null}
!983 = metadata !{i32 656, i32 0, metadata !933, null}
!984 = metadata !{i32 657, i32 0, metadata !933, null}
!985 = metadata !{i32 658, i32 0, metadata !918, null}
!986 = metadata !{i32 660, i32 0, metadata !987, null}
!987 = metadata !{i32 786443, metadata !1, metadata !918, i32 659, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!988 = metadata !{i32 662, i32 0, metadata !989, null}
!989 = metadata !{i32 786443, metadata !1, metadata !990, i32 662, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!990 = metadata !{i32 786443, metadata !1, metadata !987, i32 661, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!991 = metadata !{i32 664, i32 0, metadata !992, null}
!992 = metadata !{i32 786443, metadata !1, metadata !989, i32 663, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!993 = metadata !{i32 665, i32 0, metadata !992, null}
!994 = metadata !{i32 666, i32 0, metadata !992, null}
!995 = metadata !{i32 661, i32 0, metadata !990, null}
!996 = metadata !{i32 669, i32 0, metadata !918, null}
!997 = metadata !{i32 671, i32 0, metadata !936, null}
!998 = metadata !{i32 673, i32 0, metadata !936, null}
!999 = metadata !{i32 674, i32 0, metadata !936, null}
!1000 = metadata !{i32 675, i32 0, metadata !936, null}
!1001 = metadata !{i32 676, i32 0, metadata !918, null}
!1002 = metadata !{i32 678, i32 0, metadata !1003, null}
!1003 = metadata !{i32 786443, metadata !1, metadata !918, i32 677, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1004 = metadata !{i32 679, i32 0, metadata !1003, null}
!1005 = metadata !{i32 680, i32 0, metadata !1003, null}
!1006 = metadata !{i32 681, i32 0, metadata !1007, null}
!1007 = metadata !{i32 786443, metadata !1, metadata !1003, i32 681, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1008 = metadata !{i32 682, i32 0, metadata !1009, null}
!1009 = metadata !{i32 786443, metadata !1, metadata !1007, i32 681, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1010 = metadata !{i32 683, i32 0, metadata !1009, null}
!1011 = metadata !{i32 684, i32 0, metadata !1009, null}
!1012 = metadata !{i32 687, i32 0, metadata !918, null}
!1013 = metadata !{i32 689, i32 0, metadata !938, null}
!1014 = metadata !{i32 690, i32 0, metadata !938, null}
!1015 = metadata !{i32 692, i32 0, metadata !938, null}
!1016 = metadata !{i32 694, i32 0, metadata !938, null}
!1017 = metadata !{i32 696, i32 0, metadata !918, null}
!1018 = metadata !{i32 700, i32 0, metadata !423, null}
!1019 = metadata !{i32 701, i32 0, metadata !423, null}
!1020 = metadata !{i32 702, i32 0, metadata !423, null}
!1021 = metadata !{i32 703, i32 0, metadata !423, null}
!1022 = metadata !{i32 708, i32 0, metadata !423, null}
!1023 = metadata !{i32 710, i32 0, metadata !423, null}
!1024 = metadata !{i32 712, i32 0, metadata !423, null}
!1025 = metadata !{i32 713, i32 0, metadata !423, null}
!1026 = metadata !{i32 714, i32 0, metadata !423, null}
!1027 = metadata !{i32 715, i32 0, metadata !423, null}
!1028 = metadata !{i32 716, i32 0, metadata !423, null}
!1029 = metadata !{i32 717, i32 0, metadata !423, null}
!1030 = metadata !{i32 718, i32 0, metadata !423, null}
!1031 = metadata !{i32 1}
!1032 = metadata !{i32 721, i32 0, metadata !1033, null}
!1033 = metadata !{i32 786443, metadata !1, metadata !423, i32 721, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1034 = metadata !{i32 730, i32 0, metadata !1035, null}
!1035 = metadata !{i32 786443, metadata !1, metadata !1033, i32 721, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1036 = metadata !{i32 747, i32 0, metadata !1035, null}
!1037 = metadata !{i32 750, i32 0, metadata !1038, null}
!1038 = metadata !{i32 786443, metadata !1, metadata !1039, i32 748, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1039 = metadata !{i32 786443, metadata !1, metadata !1035, i32 748, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1040 = metadata !{i32 753, i32 0, metadata !1035, null}
!1041 = metadata !{i32 755, i32 0, metadata !1035, null}
!1042 = metadata !{i32 741, i32 0, metadata !1043, null}
!1043 = metadata !{i32 786443, metadata !1, metadata !1044, i32 739, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1044 = metadata !{i32 786443, metadata !1, metadata !1045, i32 739, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1045 = metadata !{i32 786443, metadata !1, metadata !1035, i32 738, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1046 = metadata !{i32 737, i32 0, metadata !1035, null}
!1047 = metadata !{i32 732, i32 0, metadata !1048, null}
!1048 = metadata !{i32 786443, metadata !1, metadata !1035, i32 730, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1049 = metadata !{i32 728, i32 0, metadata !1050, null}
!1050 = metadata !{i32 786443, metadata !1, metadata !1051, i32 726, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1051 = metadata !{i32 786443, metadata !1, metadata !1035, i32 726, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1052 = metadata !{i32 723, i32 0, metadata !1035, null}
!1053 = metadata !{i32 724, i32 0, metadata !1035, null}
!1054 = metadata !{i32 725, i32 0, metadata !1035, null}
!1055 = metadata !{i32 726, i32 0, metadata !1051, null}
!1056 = metadata !{i32 727, i32 0, metadata !1050, null}
!1057 = metadata !{i32 731, i32 0, metadata !1048, null}
!1058 = metadata !{i32 733, i32 0, metadata !1048, null}
!1059 = metadata !{i32 735, i32 0, metadata !1035, null}
!1060 = metadata !{i32 736, i32 0, metadata !1035, null}
!1061 = metadata !{i32 738, i32 0, metadata !1035, null}
!1062 = metadata !{i32 739, i32 0, metadata !1044, null}
!1063 = metadata !{i32 740, i32 0, metadata !1043, null}
!1064 = metadata !{i32 745, i32 0, metadata !1035, null}
!1065 = metadata !{i32 746, i32 0, metadata !1035, null}
!1066 = metadata !{i32 749, i32 0, metadata !1038, null}
!1067 = metadata !{i32 748, i32 0, metadata !1039, null}
!1068 = metadata !{i32 752, i32 0, metadata !1035, null}
!1069 = metadata !{i32 754, i32 0, metadata !1035, null}
!1070 = metadata !{i32 761, i32 0, metadata !423, null}
!1071 = metadata !{i32 762, i32 0, metadata !423, null}
!1072 = metadata !{i32 764, i32 0, metadata !423, null}
!1073 = metadata !{i32 768, i32 0, metadata !423, null}
!1074 = metadata !{i32 769, i32 0, metadata !423, null}
!1075 = metadata !{i32 771, i32 0, metadata !423, null}
!1076 = metadata !{i32 772, i32 0, metadata !423, null}
!1077 = metadata !{i32 775, i32 0, metadata !423, null}
!1078 = metadata !{i32 776, i32 0, metadata !423, null}
!1079 = metadata !{i32 777, i32 0, metadata !423, null}
!1080 = metadata !{i32 778, i32 0, metadata !423, null}
!1081 = metadata !{i32 968, i32 0, metadata !387, null}
!1082 = metadata !{i32 972, i32 0, metadata !387, null}
!1083 = metadata !{i32 979, i32 0, metadata !387, null}
!1084 = metadata !{i32 980, i32 0, metadata !387, null}
!1085 = metadata !{i32 981, i32 0, metadata !387, null}
!1086 = metadata !{i32 982, i32 0, metadata !387, null}
!1087 = metadata !{i32 984, i32 0, metadata !387, null}
!1088 = metadata !{i32 986, i32 0, metadata !387, null}
!1089 = metadata !{i32 987, i32 0, metadata !387, null}
!1090 = metadata !{i32 988, i32 0, metadata !387, null}
!1091 = metadata !{i32 989, i32 0, metadata !387, null}
!1092 = metadata !{i32 990, i32 0, metadata !387, null}
!1093 = metadata !{i32 991, i32 0, metadata !387, null}
!1094 = metadata !{i32 992, i32 0, metadata !387, null}
!1095 = metadata !{i32 995, i32 0, metadata !387, null}
!1096 = metadata !{i32 996, i32 0, metadata !387, null}
!1097 = metadata !{i32 997, i32 0, metadata !387, null}
!1098 = metadata !{i32 1000, i32 0, metadata !387, null}
!1099 = metadata !{i32 1001, i32 0, metadata !387, null}
!1100 = metadata !{i32 1004, i32 0, metadata !387, null}
!1101 = metadata !{i32 1005, i32 0, metadata !387, null}
!1102 = metadata !{i32 1006, i32 0, metadata !387, null}
!1103 = metadata !{i32 1007, i32 0, metadata !387, null}
!1104 = metadata !{i32 1010, i32 0, metadata !387, null}
!1105 = metadata !{i32 1011, i32 0, metadata !387, null}
!1106 = metadata !{i32 1012, i32 0, metadata !1107, null}
!1107 = metadata !{i32 786443, metadata !1, metadata !387, i32 1012, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1108 = metadata !{i32 1013, i32 0, metadata !1109, null}
!1109 = metadata !{i32 786443, metadata !1, metadata !1107, i32 1012, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1110 = metadata !{i32 1014, i32 0, metadata !1109, null}
!1111 = metadata !{i32 1016, i32 0, metadata !387, null}
!1112 = metadata !{i32 1020, i32 0, metadata !387, null}
!1113 = metadata !{i32 1021, i32 0, metadata !387, null}
!1114 = metadata !{i32 1022, i32 0, metadata !387, null}
!1115 = metadata !{i32 1023, i32 0, metadata !387, null}
!1116 = metadata !{i32 1028, i32 0, metadata !387, null}
!1117 = metadata !{i32 1029, i32 0, metadata !387, null}
!1118 = metadata !{i32 1030, i32 0, metadata !387, null}
!1119 = metadata !{i32 1037, i32 0, metadata !387, null}
!1120 = metadata !{i32 1038, i32 0, metadata !1121, null}
!1121 = metadata !{i32 786443, metadata !1, metadata !387, i32 1038, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1122 = metadata !{i32 1039, i32 0, metadata !1121, null}
!1123 = metadata !{i32 1040, i32 0, metadata !387, null}
!1124 = metadata !{i32 1041, i32 0, metadata !387, null}
!1125 = metadata !{i32 1042, i32 0, metadata !387, null}
!1126 = metadata !{i32 1043, i32 0, metadata !387, null}
!1127 = metadata !{i32 1045, i32 0, metadata !387, null}
!1128 = metadata !{i32 1046, i32 0, metadata !387, null}
!1129 = metadata !{i32 1048, i32 0, metadata !1130, null}
!1130 = metadata !{i32 786443, metadata !1, metadata !387, i32 1048, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1131 = metadata !{i32 1049, i32 0, metadata !1130, null}
!1132 = metadata !{i32 1050, i32 0, metadata !387, null}
!1133 = metadata !{i32 1051, i32 0, metadata !387, null}
!1134 = metadata !{i32 1054, i32 0, metadata !1135, null}
!1135 = metadata !{i32 786443, metadata !1, metadata !387, i32 1054, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1136 = metadata !{i32 1065, i32 0, metadata !1137, null}
!1137 = metadata !{i32 786443, metadata !1, metadata !1135, i32 1055, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1138 = metadata !{i32 1086, i32 0, metadata !1137, null}
!1139 = metadata !{i32 1088, i32 0, metadata !1137, null}
!1140 = metadata !{i32 1061, i32 0, metadata !1141, null}
!1141 = metadata !{i32 786443, metadata !1, metadata !1142, i32 1059, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1142 = metadata !{i32 786443, metadata !1, metadata !1137, i32 1059, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1143 = metadata !{i32 1092, i32 0, metadata !1144, null}
!1144 = metadata !{i32 786443, metadata !1, metadata !387, i32 1092, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1145 = metadata !{i32 1098, i32 0, metadata !1146, null}
!1146 = metadata !{i32 786443, metadata !1, metadata !1147, i32 1095, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1147 = metadata !{i32 786443, metadata !1, metadata !1148, i32 1095, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1148 = metadata !{i32 786443, metadata !1, metadata !1144, i32 1093, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1149 = metadata !{i32 1057, i32 0, metadata !1137, null}
!1150 = metadata !{i32 1059, i32 0, metadata !1142, null}
!1151 = metadata !{i32 1060, i32 0, metadata !1141, null}
!1152 = metadata !{i32 1064, i32 0, metadata !1137, null}
!1153 = metadata !{i32 1066, i32 0, metadata !1137, null}
!1154 = metadata !{i32 1067, i32 0, metadata !1137, null}
!1155 = metadata !{i32 1068, i32 0, metadata !1137, null}
!1156 = metadata !{i32 1069, i32 0, metadata !1137, null}
!1157 = metadata !{i32 1071, i32 0, metadata !1137, null}
!1158 = metadata !{i32 1072, i32 0, metadata !1137, null}
!1159 = metadata !{i32 1073, i32 0, metadata !1137, null}
!1160 = metadata !{i32 1074, i32 0, metadata !1137, null}
!1161 = metadata !{i32 1075, i32 0, metadata !1137, null}
!1162 = metadata !{i32 1078, i32 0, metadata !1137, null}
!1163 = metadata !{i32 1079, i32 0, metadata !1137, null}
!1164 = metadata !{i32 1080, i32 0, metadata !1137, null}
!1165 = metadata !{i32 1081, i32 0, metadata !1137, null}
!1166 = metadata !{i32 1082, i32 0, metadata !1137, null}
!1167 = metadata !{i32 1085, i32 0, metadata !1137, null}
!1168 = metadata !{i32 1087, i32 0, metadata !1137, null}
!1169 = metadata !{i32 1094, i32 0, metadata !1148, null}
!1170 = metadata !{i32 1095, i32 0, metadata !1147, null}
!1171 = metadata !{i32 1097, i32 0, metadata !1146, null}
!1172 = metadata !{i32 1096, i32 0, metadata !1146, null}
!1173 = metadata !{i32 1104, i32 0, metadata !387, null}
!1174 = metadata !{i32 1105, i32 0, metadata !387, null}
!1175 = metadata !{i32 1106, i32 0, metadata !387, null}
!1176 = metadata !{i32 1107, i32 0, metadata !387, null}
!1177 = metadata !{i32 1108, i32 0, metadata !387, null}
!1178 = metadata !{i32 1109, i32 0, metadata !387, null}
!1179 = metadata !{i32 1110, i32 0, metadata !387, null}
!1180 = metadata !{i32 1113, i32 0, metadata !387, null}
!1181 = metadata !{i32 1114, i32 0, metadata !387, null}
!1182 = metadata !{i32 1115, i32 0, metadata !387, null}
!1183 = metadata !{i32 1116, i32 0, metadata !387, null}
!1184 = metadata !{i32 1144, i32 0, metadata !358, null}
!1185 = metadata !{i32 1146, i32 0, metadata !358, null}
!1186 = metadata !{i32 1148, i32 0, metadata !358, null}
!1187 = metadata !{i32 1153, i32 0, metadata !358, null}
!1188 = metadata !{i32 1155, i32 0, metadata !358, null}
!1189 = metadata !{i32 6}
!1190 = metadata !{i32 786689, metadata !365, metadata !"version", metadata !21, i32 33556017, metadata !36, i32 0, metadata !1188} ; [ DW_TAG_arg_variable ] [version] [line 1585]
!1191 = metadata !{i32 1585, i32 0, metadata !365, metadata !1188}
!1192 = metadata !{i32 1589, i32 0, metadata !365, metadata !1188}
!1193 = metadata !{i32 1598, i32 0, metadata !365, metadata !1188}
!1194 = metadata !{i32 1599, i32 0, metadata !365, metadata !1188}
!1195 = metadata !{i32 786688, metadata !365, metadata !"s", metadata !21, i32 1591, metadata !38, i32 0, metadata !1188} ; [ DW_TAG_auto_variable ] [s] [line 1591]
!1196 = metadata !{i32 1600, i32 0, metadata !365, metadata !1188}
!1197 = metadata !{metadata !"short", metadata !461}
!1198 = metadata !{i32 1601, i32 0, metadata !365, metadata !1188}
!1199 = metadata !{i32 786688, metadata !365, metadata !"M", metadata !21, i32 1588, metadata !36, i32 0, metadata !1188} ; [ DW_TAG_auto_variable ] [M] [line 1588]
!1200 = metadata !{i32 1603, i32 0, metadata !365, metadata !1188}
!1201 = metadata !{i32 1604, i32 0, metadata !365, metadata !1188}
!1202 = metadata !{i32 1605, i32 0, metadata !365, metadata !1188}
!1203 = metadata !{i32 1606, i32 0, metadata !365, metadata !1188}
!1204 = metadata !{i32 786688, metadata !365, metadata !"asize", metadata !21, i32 1594, metadata !36, i32 0, metadata !1188} ; [ DW_TAG_auto_variable ] [asize] [line 1594]
!1205 = metadata !{i32 1610, i32 0, metadata !365, metadata !1188}
!1206 = metadata !{i32 3}
!1207 = metadata !{i32 786688, metadata !365, metadata !"atype", metadata !21, i32 1595, metadata !36, i32 0, metadata !1188} ; [ DW_TAG_auto_variable ] [atype] [line 1595]
!1208 = metadata !{i32 1611, i32 0, metadata !365, metadata !1188}
!1209 = metadata !{i32 1612, i32 0, metadata !365, metadata !1188}
!1210 = metadata !{i32 1613, i32 0, metadata !365, metadata !1188}
!1211 = metadata !{i32 1614, i32 0, metadata !365, metadata !1188}
!1212 = metadata !{i32 1615, i32 0, metadata !365, metadata !1188}
!1213 = metadata !{i32 1618, i32 0, metadata !365, metadata !1188}
!1214 = metadata !{i32 786688, metadata !365, metadata !"hmm", metadata !21, i32 1587, metadata !292, i32 0, metadata !1188} ; [ DW_TAG_auto_variable ] [hmm] [line 1587]
!1215 = metadata !{i32 1619, i32 0, metadata !365, metadata !1188}
!1216 = metadata !{i32 1622, i32 0, metadata !365, metadata !1188}
!1217 = metadata !{i32 1623, i32 0, metadata !365, metadata !1188}
!1218 = metadata !{i32 1624, i32 0, metadata !365, metadata !1188}
!1219 = metadata !{i32 1626, i32 0, metadata !365, metadata !1188}
!1220 = metadata !{i32 1627, i32 0, metadata !365, metadata !1188}
!1221 = metadata !{i32 1638, i32 0, metadata !1222, metadata !1188}
!1222 = metadata !{i32 786443, metadata !1, metadata !365, i32 1637, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1223 = metadata !{i32 1639, i32 0, metadata !1222, metadata !1188}
!1224 = metadata !{i32 1640, i32 0, metadata !1222, metadata !1188}
!1225 = metadata !{i32 1641, i32 0, metadata !1222, metadata !1188}
!1226 = metadata !{i32 1645, i32 0, metadata !365, metadata !1188}
!1227 = metadata !{i32 1652, i32 0, metadata !1228, metadata !1188}
!1228 = metadata !{i32 786443, metadata !1, metadata !365, i32 1646, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1229 = metadata !{i32 1663, i32 0, metadata !1230, metadata !1188}
!1230 = metadata !{i32 786443, metadata !1, metadata !1231, i32 1659, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1231 = metadata !{i32 786443, metadata !1, metadata !1228, i32 1655, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1232 = metadata !{i32 1666, i32 0, metadata !1230, metadata !1188}
!1233 = metadata !{i32 1671, i32 0, metadata !1231, metadata !1188}
!1234 = metadata !{i32 1698, i32 0, metadata !1235, metadata !1188}
!1235 = metadata !{i32 786443, metadata !1, metadata !1228, i32 1695, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1236 = metadata !{i32 1725, i32 0, metadata !1237, metadata !1188}
!1237 = metadata !{i32 786443, metadata !1, metadata !1228, i32 1722, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1238 = metadata !{i32 1648, i32 0, metadata !1228, metadata !1188}
!1239 = metadata !{i32 786688, metadata !365, metadata !"statetype", metadata !21, i32 1590, metadata !38, i32 0, metadata !1188} ; [ DW_TAG_auto_variable ] [statetype] [line 1590]
!1240 = metadata !{i32 1649, i32 0, metadata !1228, metadata !1188}
!1241 = metadata !{i32 1650, i32 0, metadata !1228, metadata !1188}
!1242 = metadata !{i32 1651, i32 0, metadata !1228, metadata !1188}
!1243 = metadata !{i32 786688, metadata !365, metadata !"k", metadata !21, i32 1592, metadata !36, i32 0, metadata !1188} ; [ DW_TAG_auto_variable ] [k] [line 1592]
!1244 = metadata !{i32 1654, i32 0, metadata !1228, metadata !1188}
!1245 = metadata !{i32 1660, i32 0, metadata !1230, metadata !1188}
!1246 = metadata !{i32 1661, i32 0, metadata !1230, metadata !1188}
!1247 = metadata !{i32 1662, i32 0, metadata !1230, metadata !1188}
!1248 = metadata !{i32 1664, i32 0, metadata !1230, metadata !1188}
!1249 = metadata !{i32 1665, i32 0, metadata !1230, metadata !1188}
!1250 = metadata !{i32 1669, i32 0, metadata !1231, metadata !1188}
!1251 = metadata !{i32 1670, i32 0, metadata !1231, metadata !1188}
!1252 = metadata !{i32 1673, i32 0, metadata !1231, metadata !1188}
!1253 = metadata !{i32 1674, i32 0, metadata !1231, metadata !1188}
!1254 = metadata !{i32 1675, i32 0, metadata !1231, metadata !1188}
!1255 = metadata !{i32 1677, i32 0, metadata !1231, metadata !1188}
!1256 = metadata !{i32 1678, i32 0, metadata !1231, metadata !1188}
!1257 = metadata !{i32 1679, i32 0, metadata !1231, metadata !1188}
!1258 = metadata !{i32 786688, metadata !365, metadata !"i", metadata !21, i32 1593, metadata !36, i32 0, metadata !1188} ; [ DW_TAG_auto_variable ] [i] [line 1593]
!1259 = metadata !{i32 1681, i32 0, metadata !1260, metadata !1188}
!1260 = metadata !{i32 786443, metadata !1, metadata !1231, i32 1681, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1261 = metadata !{i32 1683, i32 0, metadata !1262, metadata !1188}
!1262 = metadata !{i32 786443, metadata !1, metadata !1260, i32 1682, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1263 = metadata !{i32 1684, i32 0, metadata !1262, metadata !1188}
!1264 = metadata !{i32 1685, i32 0, metadata !1262, metadata !1188}
!1265 = metadata !{i32 1694, i32 0, metadata !1228, metadata !1188}
!1266 = metadata !{i32 1696, i32 0, metadata !1235, metadata !1188}
!1267 = metadata !{i32 1697, i32 0, metadata !1235, metadata !1188}
!1268 = metadata !{i32 1700, i32 0, metadata !1235, metadata !1188}
!1269 = metadata !{i32 1701, i32 0, metadata !1235, metadata !1188}
!1270 = metadata !{i32 1702, i32 0, metadata !1235, metadata !1188}
!1271 = metadata !{i32 1704, i32 0, metadata !1235, metadata !1188}
!1272 = metadata !{i32 1705, i32 0, metadata !1235, metadata !1188}
!1273 = metadata !{i32 1706, i32 0, metadata !1235, metadata !1188}
!1274 = metadata !{i32 1708, i32 0, metadata !1275, metadata !1188}
!1275 = metadata !{i32 786443, metadata !1, metadata !1235, i32 1708, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1276 = metadata !{i32 1710, i32 0, metadata !1277, metadata !1188}
!1277 = metadata !{i32 786443, metadata !1, metadata !1275, i32 1709, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1278 = metadata !{i32 1711, i32 0, metadata !1277, metadata !1188}
!1279 = metadata !{i32 1712, i32 0, metadata !1277, metadata !1188}
!1280 = metadata !{i32 1721, i32 0, metadata !1228, metadata !1188}
!1281 = metadata !{i32 1723, i32 0, metadata !1237, metadata !1188}
!1282 = metadata !{i32 1724, i32 0, metadata !1237, metadata !1188}
!1283 = metadata !{i32 1727, i32 0, metadata !1237, metadata !1188}
!1284 = metadata !{i32 1728, i32 0, metadata !1237, metadata !1188}
!1285 = metadata !{i32 1729, i32 0, metadata !1237, metadata !1188}
!1286 = metadata !{i32 1731, i32 0, metadata !1237, metadata !1188}
!1287 = metadata !{i32 1732, i32 0, metadata !1237, metadata !1188}
!1288 = metadata !{i32 1733, i32 0, metadata !1237, metadata !1188}
!1289 = metadata !{i32 1736, i32 0, metadata !1237, metadata !1188}
!1290 = metadata !{i32 1744, i32 0, metadata !365, metadata !1188}
!1291 = metadata !{i32 1745, i32 0, metadata !365, metadata !1188}
!1292 = metadata !{i32 1747, i32 0, metadata !365, metadata !1188}
!1293 = metadata !{i32 1156, i32 0, metadata !358, null}
!1294 = metadata !{i32 1156, i32 0, metadata !1295, null}
!1295 = metadata !{i32 786443, metadata !1, metadata !358, i32 1156, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1296 = metadata !{i32 1158, i32 0, metadata !358, null}
!1297 = metadata !{i32 1160, i32 0, metadata !358, null}
!1298 = metadata !{i32 1161, i32 0, metadata !358, null}
!1299 = metadata !{i32 1163, i32 0, metadata !358, null}
!1300 = metadata !{i32 1164, i32 0, metadata !358, null}
!1301 = metadata !{i32 1165, i32 0, metadata !358, null}
!1302 = metadata !{i32 1166, i32 0, metadata !358, null}
!1303 = metadata !{i32 1167, i32 0, metadata !358, null}
!1304 = metadata !{i32 1196, i32 0, metadata !347, null}
!1305 = metadata !{i32 1198, i32 0, metadata !347, null}
!1306 = metadata !{i32 1199, i32 0, metadata !347, null}
!1307 = metadata !{i32 1228, i32 0, metadata !336, null}
!1308 = metadata !{i32 1230, i32 0, metadata !336, null}
!1309 = metadata !{i32 1231, i32 0, metadata !336, null}
!1310 = metadata !{i32 324, i32 0, metadata !218, null}
!1311 = metadata !{i32 328, i32 0, metadata !218, null}
!1312 = metadata !{i32 329, i32 0, metadata !1313, null}
!1313 = metadata !{i32 786443, metadata !1, metadata !218, i32 328, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1314 = metadata !{i32 330, i32 0, metadata !1313, null}
!1315 = metadata !{i32 333, i32 0, metadata !218, null}
!1316 = metadata !{i32 343, i32 0, metadata !230, null}
!1317 = metadata !{i32 345, i32 0, metadata !230, null}
!1318 = metadata !{i32 346, i32 0, metadata !230, null}
!1319 = metadata !{i32 348, i32 0, metadata !233, null}
!1320 = metadata !{i32 350, i32 0, metadata !233, null}
!1321 = metadata !{i32 351, i32 0, metadata !233, null}
!1322 = metadata !{i32 353, i32 0, metadata !233, null}
!1323 = metadata !{i32 354, i32 0, metadata !233, null}
!1324 = metadata !{i32 355, i32 0, metadata !233, null}
!1325 = metadata !{i32 356, i32 0, metadata !233, null}
!1326 = metadata !{i32 359, i32 0, metadata !241, null}
!1327 = metadata !{i32 361, i32 0, metadata !241, null}
!1328 = metadata !{i32 362, i32 0, metadata !241, null}
!1329 = metadata !{i32 364, i32 0, metadata !241, null}
!1330 = metadata !{i32 365, i32 0, metadata !241, null}
!1331 = metadata !{i32 366, i32 0, metadata !241, null}
!1332 = metadata !{i32 367, i32 0, metadata !241, null}
!1333 = metadata !{i32 385, i32 0, metadata !249, null}
!1334 = metadata !{i32 391, i32 0, metadata !249, null}
!1335 = metadata !{i32 395, i32 0, metadata !249, null}
!1336 = metadata !{i32 396, i32 0, metadata !249, null}
!1337 = metadata !{i32 397, i32 0, metadata !249, null}
!1338 = metadata !{i32 398, i32 0, metadata !249, null}
!1339 = metadata !{i32 399, i32 0, metadata !249, null}
!1340 = metadata !{i32 400, i32 0, metadata !249, null}
!1341 = metadata !{i32 401, i32 0, metadata !249, null}
!1342 = metadata !{i32 403, i32 0, metadata !249, null}
!1343 = metadata !{i32 404, i32 0, metadata !249, null}
!1344 = metadata !{i32 405, i32 0, metadata !249, null}
!1345 = metadata !{i32 406, i32 0, metadata !249, null}
!1346 = metadata !{null}
!1347 = metadata !{i32 786689, metadata !263, metadata !"pfx", metadata !21, i32 33555835, metadata !38, i32 0, metadata !1345} ; [ DW_TAG_arg_variable ] [pfx] [line 1403]
!1348 = metadata !{i32 1403, i32 0, metadata !263, metadata !1345}
!1349 = metadata !{i32 1408, i32 0, metadata !263, metadata !1345}
!1350 = metadata !{i32 1409, i32 0, metadata !263, metadata !1345}
!1351 = metadata !{i32 786688, metadata !263, metadata !"buf", metadata !21, i32 1405, metadata !38, i32 0, metadata !1345} ; [ DW_TAG_auto_variable ] [buf] [line 1405]
!1352 = metadata !{i32 1410, i32 0, metadata !263, metadata !1345}
!1353 = metadata !{i32 786688, metadata !263, metadata !"sptr", metadata !21, i32 1406, metadata !38, i32 0, metadata !1345} ; [ DW_TAG_auto_variable ] [sptr] [line 1406]
!1354 = metadata !{i32 1411, i32 0, metadata !263, metadata !1345}
!1355 = metadata !{i32 1413, i32 0, metadata !1356, metadata !1345}
!1356 = metadata !{i32 786443, metadata !1, metadata !263, i32 1412, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1357 = metadata !{i32 1414, i32 0, metadata !1356, metadata !1345}
!1358 = metadata !{i32 1416, i32 0, metadata !263, metadata !1345}
!1359 = metadata !{i32 407, i32 0, metadata !249, null}
!1360 = metadata !{i32 408, i32 0, metadata !249, null}
!1361 = metadata !{i32 409, i32 0, metadata !249, null}
!1362 = metadata !{i32 410, i32 0, metadata !249, null}
!1363 = metadata !{i32 411, i32 0, metadata !249, null}
!1364 = metadata !{i32 412, i32 0, metadata !249, null}
!1365 = metadata !{i32 413, i32 0, metadata !249, null}
!1366 = metadata !{i32 414, i32 0, metadata !249, null}
!1367 = metadata !{i32 415, i32 0, metadata !249, null}
!1368 = metadata !{i32 419, i32 0, metadata !249, null}
!1369 = metadata !{i32 420, i32 0, metadata !1370, null}
!1370 = metadata !{i32 786443, metadata !1, metadata !249, i32 420, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1371 = metadata !{i32 421, i32 0, metadata !1372, null}
!1372 = metadata !{i32 786443, metadata !1, metadata !1370, i32 421, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1373 = metadata !{i32 422, i32 0, metadata !1372, null}
!1374 = metadata !{i32 423, i32 0, metadata !249, null}
!1375 = metadata !{i32 429, i32 0, metadata !249, null}
!1376 = metadata !{i32 430, i32 0, metadata !249, null}
!1377 = metadata !{i32 431, i32 0, metadata !249, null}
!1378 = metadata !{i32 432, i32 0, metadata !249, null}
!1379 = metadata !{i32 433, i32 0, metadata !1380, null}
!1380 = metadata !{i32 786443, metadata !1, metadata !249, i32 433, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1381 = metadata !{i32 434, i32 0, metadata !1380, null}
!1382 = metadata !{i32 435, i32 0, metadata !249, null}
!1383 = metadata !{i32 439, i32 0, metadata !249, null}
!1384 = metadata !{i32 440, i32 0, metadata !249, null}
!1385 = metadata !{i32 444, i32 0, metadata !249, null}
!1386 = metadata !{i32 445, i32 0, metadata !1387, null}
!1387 = metadata !{i32 786443, metadata !1, metadata !249, i32 445, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1388 = metadata !{i32 446, i32 0, metadata !249, null}
!1389 = metadata !{i32 447, i32 0, metadata !249, null}
!1390 = metadata !{i32 452, i32 0, metadata !249, null}
!1391 = metadata !{i32 453, i32 0, metadata !249, null}
!1392 = metadata !{i32 454, i32 0, metadata !1393, null}
!1393 = metadata !{i32 786443, metadata !1, metadata !249, i32 454, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1394 = metadata !{i32 470, i32 0, metadata !1395, null}
!1395 = metadata !{i32 786443, metadata !1, metadata !1396, i32 469, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1396 = metadata !{i32 786443, metadata !1, metadata !1393, i32 455, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1397 = metadata !{i32 471, i32 0, metadata !1396, null}
!1398 = metadata !{i32 472, i32 0, metadata !1396, null}
!1399 = metadata !{i32 468, i32 0, metadata !1396, null}
!1400 = metadata !{i32 465, i32 0, metadata !1401, null}
!1401 = metadata !{i32 786443, metadata !1, metadata !1396, i32 464, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1402 = metadata !{i32 463, i32 0, metadata !1396, null}
!1403 = metadata !{i32 460, i32 0, metadata !1396, null}
!1404 = metadata !{i32 459, i32 0, metadata !1405, null}
!1405 = metadata !{i32 786443, metadata !1, metadata !1396, i32 458, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1406 = metadata !{i32 457, i32 0, metadata !1396, null}
!1407 = metadata !{i32 458, i32 0, metadata !1405, null}
!1408 = metadata !{i32 461, i32 0, metadata !1396, null}
!1409 = metadata !{i32 464, i32 0, metadata !1401, null}
!1410 = metadata !{i32 466, i32 0, metadata !1396, null}
!1411 = metadata !{i32 469, i32 0, metadata !1395, null}
!1412 = metadata !{i32 474, i32 0, metadata !1396, null}
!1413 = metadata !{i32 476, i32 0, metadata !249, null}
!1414 = metadata !{i32 477, i32 0, metadata !249, null}
!1415 = metadata !{i32 1271, i32 0, metadata !279, null}
!1416 = metadata !{i32 1275, i32 0, metadata !279, null}
!1417 = metadata !{i32 1276, i32 0, metadata !279, null}
!1418 = metadata !{i32 1277, i32 0, metadata !279, null}
!1419 = metadata !{i32 484, i32 0, metadata !258, null}
!1420 = metadata !{i32 489, i32 0, metadata !258, null}
!1421 = metadata !{i32 493, i32 0, metadata !258, null}
!1422 = metadata !{i32 494, i32 0, metadata !258, null}
!1423 = metadata !{i32 495, i32 0, metadata !258, null}
!1424 = metadata !{i32 496, i32 0, metadata !258, null}
!1425 = metadata !{i32 497, i32 0, metadata !258, null}
!1426 = metadata !{i32 498, i32 0, metadata !258, null}
!1427 = metadata !{i32 499, i32 0, metadata !258, null}
!1428 = metadata !{i32 500, i32 0, metadata !258, null}
!1429 = metadata !{i32 501, i32 0, metadata !258, null}
!1430 = metadata !{i32 502, i32 0, metadata !258, null}
!1431 = metadata !{i32 503, i32 0, metadata !258, null}
!1432 = metadata !{i32 504, i32 0, metadata !258, null}
!1433 = metadata !{i32 505, i32 0, metadata !258, null}
!1434 = metadata !{i32 506, i32 0, metadata !258, null}
!1435 = metadata !{i32 507, i32 0, metadata !1436, null}
!1436 = metadata !{i32 786443, metadata !1, metadata !258, i32 506, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1437 = metadata !{i32 508, i32 0, metadata !1436, null}
!1438 = metadata !{i32 510, i32 0, metadata !258, null}
!1439 = metadata !{i32 509, i32 0, metadata !1436, null}
!1440 = metadata !{i32 511, i32 0, metadata !1441, null}
!1441 = metadata !{i32 786443, metadata !1, metadata !258, i32 510, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1442 = metadata !{i32 512, i32 0, metadata !1441, null}
!1443 = metadata !{i32 514, i32 0, metadata !258, null}
!1444 = metadata !{i32 513, i32 0, metadata !1441, null}
!1445 = metadata !{i32 515, i32 0, metadata !1446, null}
!1446 = metadata !{i32 786443, metadata !1, metadata !258, i32 514, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1447 = metadata !{i32 516, i32 0, metadata !1446, null}
!1448 = metadata !{i32 517, i32 0, metadata !1446, null}
!1449 = metadata !{i32 521, i32 0, metadata !1450, null}
!1450 = metadata !{i32 786443, metadata !1, metadata !258, i32 520, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1451 = metadata !{i32 520, i32 0, metadata !1450, null}
!1452 = metadata !{i32 524, i32 0, metadata !258, null}
!1453 = metadata !{i32 525, i32 0, metadata !258, null}
!1454 = metadata !{i32 528, i32 0, metadata !258, null}
!1455 = metadata !{i32 529, i32 0, metadata !1456, null}
!1456 = metadata !{i32 786443, metadata !1, metadata !258, i32 528, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1457 = metadata !{i32 530, i32 0, metadata !1456, null}
!1458 = metadata !{i32 531, i32 0, metadata !1456, null}
!1459 = metadata !{i32 535, i32 0, metadata !258, null}
!1460 = metadata !{i32 536, i32 0, metadata !258, null}
!1461 = metadata !{i32 537, i32 0, metadata !258, null}
!1462 = metadata !{i32 541, i32 0, metadata !1463, null}
!1463 = metadata !{i32 786443, metadata !1, metadata !258, i32 541, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1464 = metadata !{i32 542, i32 0, metadata !1463, null}
!1465 = metadata !{i32 543, i32 0, metadata !1466, null}
!1466 = metadata !{i32 786443, metadata !1, metadata !258, i32 543, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1467 = metadata !{i32 544, i32 0, metadata !1466, null}
!1468 = metadata !{i32 545, i32 0, metadata !1469, null}
!1469 = metadata !{i32 786443, metadata !1, metadata !258, i32 545, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1470 = metadata !{i32 546, i32 0, metadata !1469, null}
!1471 = metadata !{i32 547, i32 0, metadata !258, null}
!1472 = metadata !{i32 1334, i32 0, metadata !272, null}
!1473 = metadata !{i32 1336, i32 0, metadata !272, null}
!1474 = metadata !{i32 1337, i32 0, metadata !272, null}
!1475 = metadata !{i32 1339, i32 0, metadata !1476, null}
!1476 = metadata !{i32 786443, metadata !1, metadata !272, i32 1338, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1477 = metadata !{i32 1340, i32 0, metadata !1476, null}
!1478 = metadata !{i32 1341, i32 0, metadata !1476, null}
!1479 = metadata !{i32 1342, i32 0, metadata !1476, null}
!1480 = metadata !{i32 1345, i32 0, metadata !1481, null}
!1481 = metadata !{i32 786443, metadata !1, metadata !272, i32 1344, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1482 = metadata !{i32 1346, i32 0, metadata !1481, null}
!1483 = metadata !{i32 1348, i32 0, metadata !272, null}
!1484 = metadata !{i32 1439, i32 0, metadata !313, null}
!1485 = metadata !{i32 1442, i32 0, metadata !313, null}
!1486 = metadata !{i32 1445, i32 0, metadata !313, null}
!1487 = metadata !{i32 1446, i32 0, metadata !313, null}
!1488 = metadata !{i32 1447, i32 0, metadata !313, null}
!1489 = metadata !{i32 1448, i32 0, metadata !313, null}
!1490 = metadata !{i32 1451, i32 0, metadata !313, null}
!1491 = metadata !{i32 1452, i32 0, metadata !313, null}
!1492 = metadata !{i32 1453, i32 0, metadata !313, null}
!1493 = metadata !{i32 1320, i32 0, metadata !582, metadata !1494}
!1494 = metadata !{i32 1454, i32 0, metadata !1495, null}
!1495 = metadata !{i32 786443, metadata !1, metadata !313, i32 1453, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1496 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1494} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1497 = metadata !{i32 1321, i32 0, metadata !582, metadata !1494}
!1498 = metadata !{i32 1322, i32 0, metadata !582, metadata !1494}
!1499 = metadata !{i32 1318, i32 0, metadata !583, metadata !1494}
!1500 = metadata !{i32 1320, i32 0, metadata !582, metadata !1501}
!1501 = metadata !{i32 1455, i32 0, metadata !1495, null}
!1502 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1501} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1503 = metadata !{i32 1321, i32 0, metadata !582, metadata !1501}
!1504 = metadata !{i32 1322, i32 0, metadata !582, metadata !1501}
!1505 = metadata !{i32 1318, i32 0, metadata !583, metadata !1501}
!1506 = metadata !{i32 1460, i32 0, metadata !313, null}
!1507 = metadata !{i32 2}
!1508 = metadata !{i32 1461, i32 0, metadata !313, null}
!1509 = metadata !{i32 1462, i32 0, metadata !313, null}
!1510 = metadata !{i32 1463, i32 0, metadata !313, null}
!1511 = metadata !{i32 1464, i32 0, metadata !313, null}
!1512 = metadata !{i32 1465, i32 0, metadata !313, null}
!1513 = metadata !{i32 1468, i32 0, metadata !313, null}
!1514 = metadata !{i32 1469, i32 0, metadata !313, null}
!1515 = metadata !{i32 1472, i32 0, metadata !313, null}
!1516 = metadata !{i32 1473, i32 0, metadata !1517, null}
!1517 = metadata !{i32 786443, metadata !1, metadata !313, i32 1472, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1518 = metadata !{i32 1474, i32 0, metadata !1517, null}
!1519 = metadata !{i32 1320, i32 0, metadata !582, metadata !1518}
!1520 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1518} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1521 = metadata !{i32 1321, i32 0, metadata !582, metadata !1518}
!1522 = metadata !{i32 1322, i32 0, metadata !582, metadata !1518}
!1523 = metadata !{i32 1318, i32 0, metadata !583, metadata !1518}
!1524 = metadata !{i32 1475, i32 0, metadata !1517, null}
!1525 = metadata !{i32 1476, i32 0, metadata !1517, null}
!1526 = metadata !{i32 1477, i32 0, metadata !1517, null}
!1527 = metadata !{i32 1478, i32 0, metadata !1517, null}
!1528 = metadata !{i32 1481, i32 0, metadata !313, null}
!1529 = metadata !{i32 1482, i32 0, metadata !313, null}
!1530 = metadata !{i32 1485, i32 0, metadata !313, null}
!1531 = metadata !{i32 1486, i32 0, metadata !313, null}
!1532 = metadata !{i32 1490, i32 0, metadata !313, null}
!1533 = metadata !{i32 1492, i32 0, metadata !1534, null}
!1534 = metadata !{i32 786443, metadata !1, metadata !313, i32 1491, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1535 = metadata !{i32 1493, i32 0, metadata !1534, null}
!1536 = metadata !{i32 1320, i32 0, metadata !582, metadata !1535}
!1537 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1535} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1538 = metadata !{i32 1321, i32 0, metadata !582, metadata !1535}
!1539 = metadata !{i32 1322, i32 0, metadata !582, metadata !1535}
!1540 = metadata !{i32 1318, i32 0, metadata !583, metadata !1535}
!1541 = metadata !{i32 1494, i32 0, metadata !1534, null}
!1542 = metadata !{i32 1496, i32 0, metadata !1534, null}
!1543 = metadata !{i32 1495, i32 0, metadata !1534, null}
!1544 = metadata !{i32 1497, i32 0, metadata !1534, null}
!1545 = metadata !{i32 1499, i32 0, metadata !1534, null}
!1546 = metadata !{i32 1498, i32 0, metadata !1534, null}
!1547 = metadata !{i32 1500, i32 0, metadata !1534, null}
!1548 = metadata !{i32 1506, i32 0, metadata !1549, null}
!1549 = metadata !{i32 786443, metadata !1, metadata !313, i32 1505, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1550 = metadata !{i32 1504, i32 0, metadata !313, null}
!1551 = metadata !{i32 1508, i32 0, metadata !1552, null}
!1552 = metadata !{i32 786443, metadata !1, metadata !1549, i32 1508, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1553 = metadata !{i32 1507, i32 0, metadata !1549, null}
!1554 = metadata !{i32 1509, i32 0, metadata !1552, null}
!1555 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !1554} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!1556 = metadata !{i32 1313, i32 0, metadata !328, metadata !1554}
!1557 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !1554} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!1558 = metadata !{i32 1318, i32 0, metadata !583, metadata !1554}
!1559 = metadata !{i32 1320, i32 0, metadata !582, metadata !1554}
!1560 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1554} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1561 = metadata !{i32 1321, i32 0, metadata !582, metadata !1554}
!1562 = metadata !{i32 1322, i32 0, metadata !582, metadata !1554}
!1563 = metadata !{i32 1511, i32 0, metadata !313, null}
!1564 = metadata !{i32 1514, i32 0, metadata !1565, null}
!1565 = metadata !{i32 786443, metadata !1, metadata !313, i32 1514, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1566 = metadata !{i32 1517, i32 0, metadata !1567, null}
!1567 = metadata !{i32 786443, metadata !1, metadata !1565, i32 1515, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1568 = metadata !{i32 1535, i32 0, metadata !1567, null}
!1569 = metadata !{i32 1549, i32 0, metadata !1567, null}
!1570 = metadata !{i32 1518, i32 0, metadata !1567, null}
!1571 = metadata !{i32 1519, i32 0, metadata !1567, null}
!1572 = metadata !{i32 1520, i32 0, metadata !1567, null}
!1573 = metadata !{i32 1522, i32 0, metadata !1567, null}
!1574 = metadata !{i32 1523, i32 0, metadata !1575, null}
!1575 = metadata !{i32 786443, metadata !1, metadata !1567, i32 1522, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1576 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !1574} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!1577 = metadata !{i32 1313, i32 0, metadata !328, metadata !1574}
!1578 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !1574} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!1579 = metadata !{i32 1318, i32 0, metadata !583, metadata !1574}
!1580 = metadata !{i32 1320, i32 0, metadata !582, metadata !1574}
!1581 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1574} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1582 = metadata !{i32 1321, i32 0, metadata !582, metadata !1574}
!1583 = metadata !{i32 1322, i32 0, metadata !582, metadata !1574}
!1584 = metadata !{i32 1524, i32 0, metadata !1575, null}
!1585 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !1584} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!1586 = metadata !{i32 1313, i32 0, metadata !328, metadata !1584}
!1587 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !1584} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!1588 = metadata !{i32 1318, i32 0, metadata !583, metadata !1584}
!1589 = metadata !{i32 1320, i32 0, metadata !582, metadata !1584}
!1590 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1584} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1591 = metadata !{i32 1321, i32 0, metadata !582, metadata !1584}
!1592 = metadata !{i32 1322, i32 0, metadata !582, metadata !1584}
!1593 = metadata !{i32 1525, i32 0, metadata !1575, null}
!1594 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !1593} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!1595 = metadata !{i32 1313, i32 0, metadata !328, metadata !1593}
!1596 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !1593} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!1597 = metadata !{i32 1318, i32 0, metadata !583, metadata !1593}
!1598 = metadata !{i32 1320, i32 0, metadata !582, metadata !1593}
!1599 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1593} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1600 = metadata !{i32 1321, i32 0, metadata !582, metadata !1593}
!1601 = metadata !{i32 1322, i32 0, metadata !582, metadata !1593}
!1602 = metadata !{i32 1526, i32 0, metadata !1603, null}
!1603 = metadata !{i32 786443, metadata !1, metadata !1575, i32 1526, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1604 = metadata !{i32 1527, i32 0, metadata !1603, null}
!1605 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !1604} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!1606 = metadata !{i32 1313, i32 0, metadata !328, metadata !1604}
!1607 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !1604} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!1608 = metadata !{i32 1318, i32 0, metadata !583, metadata !1604}
!1609 = metadata !{i32 1320, i32 0, metadata !582, metadata !1604}
!1610 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1604} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1611 = metadata !{i32 1321, i32 0, metadata !582, metadata !1604}
!1612 = metadata !{i32 1322, i32 0, metadata !582, metadata !1604}
!1613 = metadata !{i32 1531, i32 0, metadata !1567, null}
!1614 = metadata !{i32 1532, i32 0, metadata !1567, null}
!1615 = metadata !{i32 1536, i32 0, metadata !1567, null}
!1616 = metadata !{i32 1537, i32 0, metadata !1567, null}
!1617 = metadata !{i32 1538, i32 0, metadata !1567, null}
!1618 = metadata !{i32 1539, i32 0, metadata !1619, null}
!1619 = metadata !{i32 786443, metadata !1, metadata !1567, i32 1538, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1620 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !1618} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!1621 = metadata !{i32 1313, i32 0, metadata !328, metadata !1618}
!1622 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !1618} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!1623 = metadata !{i32 1318, i32 0, metadata !583, metadata !1618}
!1624 = metadata !{i32 1320, i32 0, metadata !582, metadata !1618}
!1625 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1618} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1626 = metadata !{i32 1321, i32 0, metadata !582, metadata !1618}
!1627 = metadata !{i32 1322, i32 0, metadata !582, metadata !1618}
!1628 = metadata !{i32 1540, i32 0, metadata !1619, null}
!1629 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !1628} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!1630 = metadata !{i32 1313, i32 0, metadata !328, metadata !1628}
!1631 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !1628} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!1632 = metadata !{i32 1318, i32 0, metadata !583, metadata !1628}
!1633 = metadata !{i32 1320, i32 0, metadata !582, metadata !1628}
!1634 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1628} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1635 = metadata !{i32 1321, i32 0, metadata !582, metadata !1628}
!1636 = metadata !{i32 1322, i32 0, metadata !582, metadata !1628}
!1637 = metadata !{i32 1541, i32 0, metadata !1619, null}
!1638 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !1637} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!1639 = metadata !{i32 1313, i32 0, metadata !328, metadata !1637}
!1640 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !1637} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!1641 = metadata !{i32 1318, i32 0, metadata !583, metadata !1637}
!1642 = metadata !{i32 1320, i32 0, metadata !582, metadata !1637}
!1643 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1637} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1644 = metadata !{i32 1321, i32 0, metadata !582, metadata !1637}
!1645 = metadata !{i32 1322, i32 0, metadata !582, metadata !1637}
!1646 = metadata !{i32 1545, i32 0, metadata !1567, null}
!1647 = metadata !{i32 1546, i32 0, metadata !1567, null}
!1648 = metadata !{i32 1550, i32 0, metadata !1567, null}
!1649 = metadata !{i32 1551, i32 0, metadata !1567, null}
!1650 = metadata !{i32 1552, i32 0, metadata !1567, null}
!1651 = metadata !{i32 1554, i32 0, metadata !1567, null}
!1652 = metadata !{i32 1555, i32 0, metadata !1653, null}
!1653 = metadata !{i32 786443, metadata !1, metadata !1567, i32 1554, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1654 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !1652} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!1655 = metadata !{i32 1313, i32 0, metadata !328, metadata !1652}
!1656 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !1652} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!1657 = metadata !{i32 1318, i32 0, metadata !583, metadata !1652}
!1658 = metadata !{i32 1320, i32 0, metadata !582, metadata !1652}
!1659 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1652} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1660 = metadata !{i32 1321, i32 0, metadata !582, metadata !1652}
!1661 = metadata !{i32 1322, i32 0, metadata !582, metadata !1652}
!1662 = metadata !{i32 1556, i32 0, metadata !1653, null}
!1663 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !1662} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!1664 = metadata !{i32 1313, i32 0, metadata !328, metadata !1662}
!1665 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !1662} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!1666 = metadata !{i32 1318, i32 0, metadata !583, metadata !1662}
!1667 = metadata !{i32 1320, i32 0, metadata !582, metadata !1662}
!1668 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1662} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1669 = metadata !{i32 1321, i32 0, metadata !582, metadata !1662}
!1670 = metadata !{i32 1322, i32 0, metadata !582, metadata !1662}
!1671 = metadata !{i32 1557, i32 0, metadata !1653, null}
!1672 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !1671} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!1673 = metadata !{i32 1313, i32 0, metadata !328, metadata !1671}
!1674 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !1671} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!1675 = metadata !{i32 1318, i32 0, metadata !583, metadata !1671}
!1676 = metadata !{i32 1320, i32 0, metadata !582, metadata !1671}
!1677 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1671} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1678 = metadata !{i32 1321, i32 0, metadata !582, metadata !1671}
!1679 = metadata !{i32 1322, i32 0, metadata !582, metadata !1671}
!1680 = metadata !{i32 1558, i32 0, metadata !1681, null}
!1681 = metadata !{i32 786443, metadata !1, metadata !1653, i32 1558, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1682 = metadata !{i32 1559, i32 0, metadata !1681, null}
!1683 = metadata !{i32 786689, metadata !328, metadata !"nbytes", metadata !21, i32 33555745, metadata !36, i32 0, metadata !1682} ; [ DW_TAG_arg_variable ] [nbytes] [line 1313]
!1684 = metadata !{i32 1313, i32 0, metadata !328, metadata !1682}
!1685 = metadata !{i32 786688, metadata !328, metadata !"x", metadata !21, i32 1315, metadata !36, i32 0, metadata !1682} ; [ DW_TAG_auto_variable ] [x] [line 1315]
!1686 = metadata !{i32 1318, i32 0, metadata !583, metadata !1682}
!1687 = metadata !{i32 1320, i32 0, metadata !582, metadata !1682}
!1688 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1682} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1689 = metadata !{i32 1321, i32 0, metadata !582, metadata !1682}
!1690 = metadata !{i32 1322, i32 0, metadata !582, metadata !1682}
!1691 = metadata !{i32 1563, i32 0, metadata !1567, null}
!1692 = metadata !{i32 1564, i32 0, metadata !1567, null}
!1693 = metadata !{i32 1566, i32 0, metadata !313, null}
!1694 = metadata !{i32 1567, i32 0, metadata !313, null}
!1695 = metadata !{i32 1568, i32 0, metadata !313, null}
!1696 = metadata !{i32 1286, i32 0, metadata !399, null}
!1697 = metadata !{i32 1288, i32 0, metadata !399, null}
!1698 = metadata !{i32 1363, i32 0, metadata !414, null}
!1699 = metadata !{i32 1366, i32 0, metadata !414, null}
!1700 = metadata !{i32 1368, i32 0, metadata !414, null}
!1701 = metadata !{i32 1369, i32 0, metadata !414, null}
!1702 = metadata !{i32 1320, i32 0, metadata !582, metadata !1701}
!1703 = metadata !{i32 786688, metadata !328, metadata !"byte", metadata !21, i32 1316, metadata !39, i32 0, metadata !1701} ; [ DW_TAG_auto_variable ] [byte] [line 1316]
!1704 = metadata !{i32 1321, i32 0, metadata !582, metadata !1701}
!1705 = metadata !{i32 1322, i32 0, metadata !582, metadata !1701}
!1706 = metadata !{i32 1318, i32 0, metadata !583, metadata !1701}
!1707 = metadata !{i32 1370, i32 0, metadata !414, null}
!1708 = metadata !{i32 1371, i32 0, metadata !414, null}
!1709 = metadata !{i32 1373, i32 0, metadata !1710, null}
!1710 = metadata !{i32 786443, metadata !1, metadata !414, i32 1372, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hmmio.c]
!1711 = metadata !{i32 1374, i32 0, metadata !1710, null}
!1712 = metadata !{i32 1377, i32 0, metadata !414, null}
!1713 = metadata !{i32 1378, i32 0, metadata !414, null}
