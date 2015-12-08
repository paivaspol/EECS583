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
  %0 = getelementptr inbounds [512 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 512, i8* %0) #1
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 164, i64 56) #6
  %1 = bitcast i8* %call to %struct.hmmfile_s*
  %f = bitcast i8* %call to %struct._IO_FILE**
  %parser = getelementptr inbounds i8* %call, i64 16
  %2 = bitcast i8* %parser to i32 (%struct.hmmfile_s*, %struct.plan7_s**)**
  %is_binary = getelementptr inbounds i8* %call, i64 24
  %3 = bitcast i8* %is_binary to i32*
  %byteswap = getelementptr inbounds i8* %call, i64 28
  %4 = bitcast i8* %byteswap to i32*
  %is_seekable = getelementptr inbounds i8* %call, i64 32
  %5 = bitcast i8* %is_seekable to i32*
  call void @llvm.memset.p0i8.i64(i8* %parser, i8 0, i64 16, i32 8, i1 false)
  store i32 1, i32* %5, align 4, !tbaa !0
  %ssi = getelementptr inbounds i8* %call, i64 8
  %6 = bitcast i8* %ssi to %struct.ssifile_s**
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 16, i32 8, i1 false)
  %call2 = call %struct._IO_FILE* @fopen(i8* %hmmfile, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #6
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %f, align 8, !tbaa !3
  %cmp = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call4 = call i64 @strlen(i8* %hmmfile) #7
  %add = add i64 %call4, 5
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 181, i64 %add) #6
  %call6 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call5, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* %hmmfile) #6
  %call7 = call i32 @SSIRecommendMode(i8* %hmmfile) #6
  %mode = getelementptr inbounds i8* %call, i64 36
  %7 = bitcast i8* %mode to i32*
  store i32 %call7, i32* %7, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then9, label %if.end29

if.then9:                                         ; preds = %if.then
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0)) #6
  br label %if.end29

if.else:                                          ; preds = %entry
  %call10 = call %struct._IO_FILE* @EnvFileOpen(i8* %hmmfile, i8* %env, i8** %dir) #6
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %f, align 8, !tbaa !3
  %cmp12 = icmp eq %struct._IO_FILE* %call10, null
  br i1 %cmp12, label %cleanup, label %if.then13

if.then13:                                        ; preds = %if.else
  %8 = load i8** %dir, align 8, !tbaa !3
  %call14 = call i8* @FileConcat(i8* %8, i8* %hmmfile) #6
  %call15 = call i64 @strlen(i8* %call14) #7
  %call16 = call i64 @strlen(i8* %hmmfile) #7
  %add17 = add i64 %call15, 5
  %add18 = add i64 %add17, %call16
  %call20 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 192, i64 %add18) #6
  %call21 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call20, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* %call14) #6
  %call22 = call i32 @SSIRecommendMode(i8* %call14) #6
  %mode23 = getelementptr inbounds i8* %call, i64 36
  %9 = bitcast i8* %mode23 to i32*
  store i32 %call22, i32* %9, align 4, !tbaa !0
  %cmp24 = icmp eq i32 %call22, -1
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then13
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0)) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then13
  call void @free(i8* %call14) #6
  %10 = load i8** %dir, align 8, !tbaa !3
  call void @free(i8* %10) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then, %if.then9, %if.end26
  %ssifile.0 = phi i8* [ %call5, %if.then9 ], [ %call5, %if.then ], [ %call20, %if.end26 ]
  %call31 = call i32 @SSIOpen(i8* %ssifile.0, %struct.ssifile_s** %6) #6
  call void @free(i8* %ssifile.0) #6
  %11 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %mode33 = getelementptr inbounds i8* %call, i64 36
  %12 = bitcast i8* %mode33 to i32*
  %13 = load i32* %12, align 4, !tbaa !0
  %offset = getelementptr inbounds i8* %call, i64 40
  %14 = bitcast i8* %offset to %struct.ssioffset_s*
  %call34 = call i32 @SSIGetFilePosition(%struct._IO_FILE* %11, i32 %13, %struct.ssioffset_s* %14) #6
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end29
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str4, i64 0, i64 0)) #6
  br label %if.end37

if.end37:                                         ; preds = %if.end29, %if.then36
  %15 = bitcast i32* %magic to i8*
  %16 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call39 = call i64 @fread(i8* %15, i64 4, i64 1, %struct._IO_FILE* %16) #6
  %tobool = icmp eq i64 %call39, 0
  br i1 %tobool, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end37
  call void @HMMFileClose(%struct.hmmfile_s* %1) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %17 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  call void @rewind(%struct._IO_FILE* %17) #6
  %18 = load i32* %magic, align 4, !tbaa !0
  %19 = load i32* @v20magic, align 4, !tbaa !0
  %cmp43 = icmp eq i32 %18, %19
  br i1 %cmp43, label %if.then44, label %if.else47

if.then44:                                        ; preds = %if.end41
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin20hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !tbaa !3
  store i32 1, i32* %3, align 4, !tbaa !0
  br label %cleanup

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
  ]

if.then49:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin20hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !tbaa !3
  store i32 1, i32* %3, align 4, !tbaa !0
  store i32 1, i32* %4, align 4, !tbaa !0
  br label %cleanup

if.then55:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin19hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !tbaa !3
  store i32 1, i32* %3, align 4, !tbaa !0
  br label %cleanup

if.then60:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin19hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !tbaa !3
  store i32 1, i32* %3, align 4, !tbaa !0
  store i32 1, i32* %4, align 4, !tbaa !0
  br label %cleanup

if.then66:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin17hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !tbaa !3
  store i32 1, i32* %3, align 4, !tbaa !0
  br label %cleanup

if.then71:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin17hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !tbaa !3
  store i32 1, i32* %3, align 4, !tbaa !0
  store i32 1, i32* %4, align 4, !tbaa !0
  br label %cleanup

if.then77:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin11hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !tbaa !3
  store i32 1, i32* %3, align 4, !tbaa !0
  br label %cleanup

if.then82:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin11hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !tbaa !3
  store i32 1, i32* %3, align 4, !tbaa !0
  store i32 1, i32* %4, align 4, !tbaa !0
  br label %cleanup

if.then88:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin10hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !tbaa !3
  store i32 1, i32* %3, align 4, !tbaa !0
  br label %cleanup

if.then93:                                        ; preds = %if.else47
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_bin10hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !tbaa !3
  store i32 1, i32* %3, align 4, !tbaa !0
  store i32 1, i32* %4, align 4, !tbaa !0
  br label %cleanup

if.end106:                                        ; preds = %if.else47
  %tobool107 = icmp slt i32 %18, 0
  br i1 %tobool107, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end106
  call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([160 x i8]* @.str5, i64 0, i64 0), i8* %hmmfile) #6
  call void @HMMFileClose(%struct.hmmfile_s* %1) #8
  br label %cleanup

if.end109:                                        ; preds = %if.end106
  %20 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call111 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %20) #6
  %cmp112 = icmp eq i8* %call111, null
  br i1 %cmp112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.end109
  call void @HMMFileClose(%struct.hmmfile_s* %1) #8
  br label %cleanup

if.end114:                                        ; preds = %if.end109
  %21 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  call void @rewind(%struct._IO_FILE* %21) #6
  %call117 = call i32 @strncmp(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* %0, i64 8) #7
  %cmp118 = icmp eq i32 %call117, 0
  br i1 %cmp118, label %if.then119, label %if.else121

if.then119:                                       ; preds = %if.end114
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc20hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !tbaa !3
  br label %cleanup

if.else121:                                       ; preds = %if.end114
  %call123 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), i8* %0, i64 10) #7
  %cmp124 = icmp eq i32 %call123, 0
  br i1 %cmp124, label %if.then125, label %if.else127

if.then125:                                       ; preds = %if.else121
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc19hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !tbaa !3
  br label %cleanup

if.else127:                                       ; preds = %if.else121
  %call129 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* %0, i64 10) #7
  %cmp130 = icmp eq i32 %call129, 0
  br i1 %cmp130, label %if.then131, label %if.else133

if.then131:                                       ; preds = %if.else127
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc17hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !tbaa !3
  br label %cleanup

if.else133:                                       ; preds = %if.else127
  %call135 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* %0, i64 10) #7
  %cmp136 = icmp eq i32 %call135, 0
  br i1 %cmp136, label %if.then137, label %if.else139

if.then137:                                       ; preds = %if.else133
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc11hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !tbaa !3
  br label %cleanup

if.else139:                                       ; preds = %if.else133
  %call141 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0), i8* %0, i64 10) #7
  %cmp142 = icmp eq i32 %call141, 0
  br i1 %cmp142, label %if.then143, label %if.end149

if.then143:                                       ; preds = %if.else139
  store i32 (%struct.hmmfile_s*, %struct.plan7_s**)* @read_asc10hmm, i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %2, align 8, !tbaa !3
  br label %cleanup

if.end149:                                        ; preds = %if.else139
  call void @HMMFileClose(%struct.hmmfile_s* %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end149, %if.then143, %if.then137, %if.then131, %if.then125, %if.then119, %if.then113, %if.then108, %if.then93, %if.then88, %if.then82, %if.then77, %if.then71, %if.then66, %if.then60, %if.then55, %if.then49, %if.then44, %if.then40
  %retval.0 = phi %struct.hmmfile_s* [ %1, %if.then44 ], [ %1, %if.then49 ], [ %1, %if.then55 ], [ %1, %if.then60 ], [ %1, %if.then66 ], [ %1, %if.then71 ], [ %1, %if.then77 ], [ %1, %if.then82 ], [ %1, %if.then88 ], [ %1, %if.then93 ], [ null, %if.then108 ], [ null, %if.then113 ], [ %1, %if.then119 ], [ %1, %if.then125 ], [ %1, %if.then131 ], [ %1, %if.then137 ], [ %1, %if.then143 ], [ null, %if.end149 ], [ null, %if.then40 ], [ null, %if.else ]
  call void @llvm.lifetime.end(i64 512, i8* %0) #1
  ret %struct.hmmfile_s* %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare i32 @SSIRecommendMode(i8*) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare %struct._IO_FILE* @EnvFileOpen(i8*, i8*, i8**) #2

; Function Attrs: optsize
declare i8* @FileConcat(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare i32 @SSIOpen(i8*, %struct.ssifile_s**) #2

; Function Attrs: optsize
declare i32 @SSIGetFilePosition(%struct._IO_FILE*, i32, %struct.ssioffset_s*) #2

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @HMMFileClose(%struct.hmmfile_s* nocapture %hmmfp) #0 {
entry:
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0
  %0 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @fclose(%struct._IO_FILE* %0) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %ssi = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 1
  %1 = load %struct.ssifile_s** %ssi, align 8, !tbaa !3
  %cmp2 = icmp eq %struct.ssifile_s* %1, null
  br i1 %cmp2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @SSIClose(%struct.ssifile_s* %1) #6
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then3
  %2 = bitcast %struct.hmmfile_s* %hmmfp to i8*
  tail call void @free(i8* %2) #6
  ret void
}

; Function Attrs: nounwind optsize
declare void @rewind(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_bin20hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  %type = alloca i32, align 4
  %magic = alloca i32, align 4
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0
  %0 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %magic to i8*
  %2 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call2 = call i64 @fread(i8* %1, i64 4, i64 1, %struct._IO_FILE* %2) #6
  %tobool3 = icmp eq i64 %call2, 0
  br i1 %tobool3, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %byteswap = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 4
  %3 = load i32* %byteswap, align 4, !tbaa !0
  %tobool6 = icmp eq i32 %3, 0
  br i1 %tobool6, label %if.end8, label %for.body.i

for.body.i:                                       ; preds = %if.end5, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %if.end5 ]
  %4 = sub i64 3, %indvars.iv.i
  %arrayidx.i = getelementptr inbounds i8* %1, i64 %4
  %5 = load i8* %arrayidx.i, align 1, !tbaa !1
  %arrayidx3.i = getelementptr inbounds i8* %1, i64 %indvars.iv.i
  %6 = load i8* %arrayidx3.i, align 1, !tbaa !1
  store i8 %6, i8* %arrayidx.i, align 1, !tbaa !1
  store i8 %5, i8* %arrayidx3.i, align 1, !tbaa !1
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv883 = trunc i64 %indvars.iv.next.i to i32
  %exitcond884 = icmp eq i32 %lftr.wideiv883, 2
  br i1 %exitcond884, label %if.end8, label %for.body.i

if.end8:                                          ; preds = %for.body.i, %if.end5
  %7 = load i32* %magic, align 4, !tbaa !0
  %8 = load i32* @v20magic, align 4, !tbaa !0
  %cmp = icmp eq i32 %7, %8
  br i1 %cmp, label %if.end10, label %if.end434

if.end10:                                         ; preds = %if.end8
  %call11 = call %struct.plan7_s* @AllocPlan7Shell() #6
  %flags = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 47
  %9 = bitcast i32* %flags to i8*
  %10 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call13 = call i64 @fread(i8* %9, i64 4, i64 1, %struct._IO_FILE* %10) #6
  %tobool14 = icmp eq i64 %call13, 0
  br i1 %tobool14, label %FAILURE, label %if.end16

if.end16:                                         ; preds = %if.end10
  %11 = load i32* %byteswap, align 4, !tbaa !0
  %tobool18 = icmp eq i32 %11, 0
  br i1 %tobool18, label %if.end21, label %for.body.i755

for.body.i755:                                    ; preds = %if.end16, %for.body.i755
  %indvars.iv.i749 = phi i64 [ %indvars.iv.next.i752, %for.body.i755 ], [ 0, %if.end16 ]
  %12 = sub i64 3, %indvars.iv.i749
  %arrayidx.i750 = getelementptr inbounds i8* %9, i64 %12
  %13 = load i8* %arrayidx.i750, align 1, !tbaa !1
  %arrayidx3.i751 = getelementptr inbounds i8* %9, i64 %indvars.iv.i749
  %14 = load i8* %arrayidx3.i751, align 1, !tbaa !1
  store i8 %14, i8* %arrayidx.i750, align 1, !tbaa !1
  store i8 %13, i8* %arrayidx3.i751, align 1, !tbaa !1
  %indvars.iv.next.i752 = add i64 %indvars.iv.i749, 1
  %lftr.wideiv881 = trunc i64 %indvars.iv.next.i752 to i32
  %exitcond882 = icmp eq i32 %lftr.wideiv881, 2
  br i1 %exitcond882, label %if.end21.loopexit, label %for.body.i755

if.end21.loopexit:                                ; preds = %for.body.i755
  %.pre = load i32* %byteswap, align 4, !tbaa !0
  br label %if.end21

if.end21:                                         ; preds = %if.end21.loopexit, %if.end16
  %15 = phi i32 [ %.pre, %if.end21.loopexit ], [ 0, %if.end16 ]
  %16 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %name = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 0
  %call24 = call fastcc i32 @read_bin_string(%struct._IO_FILE* %16, i32 %15, i8** %name) #8
  %tobool25 = icmp eq i32 %call24, 0
  br i1 %tobool25, label %FAILURE, label %if.end27

if.end27:                                         ; preds = %if.end21
  %17 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %17, 512
  %tobool29 = icmp eq i32 %and, 0
  br i1 %tobool29, label %if.end35, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end27
  %18 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %19 = load i32* %byteswap, align 4, !tbaa !0
  %acc = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 1
  %call32 = call fastcc i32 @read_bin_string(%struct._IO_FILE* %18, i32 %19, i8** %acc) #8
  %tobool33 = icmp eq i32 %call32, 0
  br i1 %tobool33, label %FAILURE, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  %.pre890 = load i32* %flags, align 4, !tbaa !0
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.end27
  %20 = phi i32 [ %.pre890, %land.lhs.true.if.end35_crit_edge ], [ %17, %if.end27 ]
  %and37 = and i32 %20, 2
  %tobool38 = icmp eq i32 %and37, 0
  br i1 %tobool38, label %if.end45, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.end35
  %21 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %22 = load i32* %byteswap, align 4, !tbaa !0
  %desc = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 2
  %call42 = call fastcc i32 @read_bin_string(%struct._IO_FILE* %21, i32 %22, i8** %desc) #8
  %tobool43 = icmp eq i32 %call42, 0
  br i1 %tobool43, label %FAILURE, label %if.end45

if.end45:                                         ; preds = %land.lhs.true39, %if.end35
  %M = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 20
  %23 = bitcast i32* %M to i8*
  %24 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call47 = call i64 @fread(i8* %23, i64 4, i64 1, %struct._IO_FILE* %24) #6
  %tobool48 = icmp eq i64 %call47, 0
  br i1 %tobool48, label %FAILURE, label %if.end50

if.end50:                                         ; preds = %if.end45
  %25 = load i32* %byteswap, align 4, !tbaa !0
  %tobool52 = icmp eq i32 %25, 0
  br i1 %tobool52, label %if.end55, label %for.body.i771

for.body.i771:                                    ; preds = %if.end50, %for.body.i771
  %indvars.iv.i765 = phi i64 [ %indvars.iv.next.i768, %for.body.i771 ], [ 0, %if.end50 ]
  %26 = sub i64 3, %indvars.iv.i765
  %arrayidx.i766 = getelementptr inbounds i8* %23, i64 %26
  %27 = load i8* %arrayidx.i766, align 1, !tbaa !1
  %arrayidx3.i767 = getelementptr inbounds i8* %23, i64 %indvars.iv.i765
  %28 = load i8* %arrayidx3.i767, align 1, !tbaa !1
  store i8 %28, i8* %arrayidx.i766, align 1, !tbaa !1
  store i8 %27, i8* %arrayidx3.i767, align 1, !tbaa !1
  %indvars.iv.next.i768 = add i64 %indvars.iv.i765, 1
  %lftr.wideiv879 = trunc i64 %indvars.iv.next.i768 to i32
  %exitcond880 = icmp eq i32 %lftr.wideiv879, 2
  br i1 %exitcond880, label %if.end55, label %for.body.i771

if.end55:                                         ; preds = %for.body.i771, %if.end50
  %29 = bitcast i32* %type to i8*
  %30 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call57 = call i64 @fread(i8* %29, i64 4, i64 1, %struct._IO_FILE* %30) #6
  %tobool58 = icmp eq i64 %call57, 0
  br i1 %tobool58, label %FAILURE, label %if.end60

if.end60:                                         ; preds = %if.end55
  %31 = load i32* %byteswap, align 4, !tbaa !0
  %tobool62 = icmp eq i32 %31, 0
  br i1 %tobool62, label %if.end64, label %for.body.i787

for.body.i787:                                    ; preds = %if.end60, %for.body.i787
  %indvars.iv.i781 = phi i64 [ %indvars.iv.next.i784, %for.body.i787 ], [ 0, %if.end60 ]
  %32 = sub i64 3, %indvars.iv.i781
  %arrayidx.i782 = getelementptr inbounds i8* %29, i64 %32
  %33 = load i8* %arrayidx.i782, align 1, !tbaa !1
  %arrayidx3.i783 = getelementptr inbounds i8* %29, i64 %indvars.iv.i781
  %34 = load i8* %arrayidx3.i783, align 1, !tbaa !1
  store i8 %34, i8* %arrayidx.i782, align 1, !tbaa !1
  store i8 %33, i8* %arrayidx3.i783, align 1, !tbaa !1
  %indvars.iv.next.i784 = add i64 %indvars.iv.i781, 1
  %lftr.wideiv877 = trunc i64 %indvars.iv.next.i784 to i32
  %exitcond878 = icmp eq i32 %lftr.wideiv877, 2
  br i1 %exitcond878, label %if.end64, label %for.body.i787

if.end64:                                         ; preds = %for.body.i787, %if.end60
  %35 = load i32* @Alphabet_type, align 4, !tbaa !0
  %cmp65 = icmp eq i32 %35, 0
  %36 = load i32* %type, align 4, !tbaa !0
  br i1 %cmp65, label %if.then66, label %if.else

if.then66:                                        ; preds = %if.end64
  call void @SetAlphabet(i32 %36) #6
  br label %if.end72

if.else:                                          ; preds = %if.end64
  %cmp67 = icmp eq i32 %36, %35
  br i1 %cmp67, label %if.end72, label %if.then68

if.then68:                                        ; preds = %if.else
  %call69 = call i8* @AlphabetType2String(i32 %35) #6
  %call70 = call i8* @AlphabetType2String(i32 %36) #6
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([89 x i8]* @.str61, i64 0, i64 0), i8* %call69, i8* %call70) #6
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.then68, %if.then66
  %37 = load i32* %M, align 4, !tbaa !0
  call void @AllocPlan7Body(%struct.plan7_s* %call11, i32 %37) #6
  %38 = load i32* %flags, align 4, !tbaa !0
  %and75 = and i32 %38, 4
  %tobool76 = icmp eq i32 %and75, 0
  %rf86.pre = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 3
  br i1 %tobool76, label %if.end83, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %if.end72
  %39 = load i8** %rf86.pre, align 8, !tbaa !3
  %40 = load i32* %M, align 4, !tbaa !0
  %add = add nsw i32 %40, 1
  %conv = sext i32 %add to i64
  %41 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call80 = call i64 @fread(i8* %39, i64 1, i64 %conv, %struct._IO_FILE* %41) #6
  %tobool81 = icmp eq i64 %call80, 0
  br i1 %tobool81, label %if.then433, label %if.end83

if.end83:                                         ; preds = %if.end72, %land.lhs.true77
  %42 = load i32* %M, align 4, !tbaa !0
  %add85 = add nsw i32 %42, 1
  %idxprom = sext i32 %add85 to i64
  %43 = load i8** %rf86.pre, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %43, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %44 = load i32* %flags, align 4, !tbaa !0
  %and88 = and i32 %44, 8
  %tobool89 = icmp eq i32 %and88, 0
  %cs102.pre = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 4
  br i1 %tobool89, label %if.end98, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %if.end83
  %45 = load i8** %cs102.pre, align 8, !tbaa !3
  %46 = load i32* %M, align 4, !tbaa !0
  %add92 = add nsw i32 %46, 1
  %conv93 = sext i32 %add92 to i64
  %47 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call95 = call i64 @fread(i8* %45, i64 1, i64 %conv93, %struct._IO_FILE* %47) #6
  %tobool96 = icmp eq i64 %call95, 0
  br i1 %tobool96, label %if.then433, label %if.end98

if.end98:                                         ; preds = %if.end83, %land.lhs.true90
  %48 = load i32* %M, align 4, !tbaa !0
  %add100 = add nsw i32 %48, 1
  %idxprom101 = sext i32 %add100 to i64
  %49 = load i8** %cs102.pre, align 8, !tbaa !3
  %arrayidx103 = getelementptr inbounds i8* %49, i64 %idxprom101
  store i8 0, i8* %arrayidx103, align 1, !tbaa !1
  %50 = load i32* %flags, align 4, !tbaa !0
  %and105 = and i32 %50, 256
  %tobool106 = icmp eq i32 %and105, 0
  br i1 %tobool106, label %if.end115, label %land.lhs.true107

land.lhs.true107:                                 ; preds = %if.end98
  %map = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 9
  %51 = load i32** %map, align 8, !tbaa !3
  %52 = bitcast i32* %51 to i8*
  %53 = load i32* %M, align 4, !tbaa !0
  %add109 = add nsw i32 %53, 1
  %conv110 = sext i32 %add109 to i64
  %54 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call112 = call i64 @fread(i8* %52, i64 4, i64 %conv110, %struct._IO_FILE* %54) #6
  %tobool113 = icmp eq i64 %call112, 0
  br i1 %tobool113, label %if.then433, label %if.end115

if.end115:                                        ; preds = %land.lhs.true107, %if.end98
  %55 = load i32* %byteswap, align 4, !tbaa !0
  %tobool117 = icmp eq i32 %55, 0
  br i1 %tobool117, label %if.end125, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end115
  %56 = load i32* %M, align 4, !tbaa !0
  %cmp120813 = icmp slt i32 %56, 1
  br i1 %cmp120813, label %if.end125, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %map123 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 9
  br label %for.body

for.body:                                         ; preds = %byteswap.exit780, %for.body.lr.ph
  %indvars.iv875 = phi i64 [ %indvars.iv.next876, %byteswap.exit780 ], [ 1, %for.body.lr.ph ]
  %57 = load i32** %map123, align 8, !tbaa !3
  %arrayidx124 = getelementptr inbounds i32* %57, i64 %indvars.iv875
  %58 = bitcast i32* %arrayidx124 to i8*
  br label %for.body.i779

for.body.i779:                                    ; preds = %for.body.i779, %for.body
  %indvars.iv.i773 = phi i64 [ 0, %for.body ], [ %indvars.iv.next.i776, %for.body.i779 ]
  %59 = sub i64 3, %indvars.iv.i773
  %arrayidx.i774 = getelementptr inbounds i8* %58, i64 %59
  %60 = load i8* %arrayidx.i774, align 1, !tbaa !1
  %arrayidx3.i775 = getelementptr inbounds i8* %58, i64 %indvars.iv.i773
  %61 = load i8* %arrayidx3.i775, align 1, !tbaa !1
  store i8 %61, i8* %arrayidx.i774, align 1, !tbaa !1
  store i8 %60, i8* %arrayidx3.i775, align 1, !tbaa !1
  %indvars.iv.next.i776 = add i64 %indvars.iv.i773, 1
  %lftr.wideiv873 = trunc i64 %indvars.iv.next.i776 to i32
  %exitcond874 = icmp eq i32 %lftr.wideiv873, 2
  br i1 %exitcond874, label %byteswap.exit780, label %for.body.i779

byteswap.exit780:                                 ; preds = %for.body.i779
  %indvars.iv.next876 = add i64 %indvars.iv875, 1
  %62 = load i32* %M, align 4, !tbaa !0
  %63 = trunc i64 %indvars.iv875 to i32
  %cmp120 = icmp slt i32 %63, %62
  br i1 %cmp120, label %for.body, label %for.cond.if.end125.loopexit_crit_edge

for.cond.if.end125.loopexit_crit_edge:            ; preds = %byteswap.exit780
  %.pre885.pre = load i32* %byteswap, align 4, !tbaa !0
  br label %if.end125

if.end125:                                        ; preds = %for.cond.preheader, %for.cond.if.end125.loopexit_crit_edge, %if.end115
  %64 = phi i32 [ 0, %if.end115 ], [ %.pre885.pre, %for.cond.if.end125.loopexit_crit_edge ], [ %55, %for.cond.preheader ]
  %65 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %comlog = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 6
  %call128 = call fastcc i32 @read_bin_string(%struct._IO_FILE* %65, i32 %64, i8** %comlog) #8
  %tobool129 = icmp eq i32 %call128, 0
  br i1 %tobool129, label %FAILURE, label %if.end131

if.end131:                                        ; preds = %if.end125
  %nseq = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 7
  %66 = bitcast i32* %nseq to i8*
  %67 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call133 = call i64 @fread(i8* %66, i64 4, i64 1, %struct._IO_FILE* %67) #6
  %tobool134 = icmp eq i64 %call133, 0
  br i1 %tobool134, label %FAILURE, label %if.end136

if.end136:                                        ; preds = %if.end131
  %68 = load i32* %byteswap, align 4, !tbaa !0
  %tobool138 = icmp eq i32 %68, 0
  br i1 %tobool138, label %if.end141, label %for.body.i763

for.body.i763:                                    ; preds = %if.end136, %for.body.i763
  %indvars.iv.i757 = phi i64 [ %indvars.iv.next.i760, %for.body.i763 ], [ 0, %if.end136 ]
  %69 = sub i64 3, %indvars.iv.i757
  %arrayidx.i758 = getelementptr inbounds i8* %66, i64 %69
  %70 = load i8* %arrayidx.i758, align 1, !tbaa !1
  %arrayidx3.i759 = getelementptr inbounds i8* %66, i64 %indvars.iv.i757
  %71 = load i8* %arrayidx3.i759, align 1, !tbaa !1
  store i8 %71, i8* %arrayidx.i758, align 1, !tbaa !1
  store i8 %70, i8* %arrayidx3.i759, align 1, !tbaa !1
  %indvars.iv.next.i760 = add i64 %indvars.iv.i757, 1
  %lftr.wideiv871 = trunc i64 %indvars.iv.next.i760 to i32
  %exitcond872 = icmp eq i32 %lftr.wideiv871, 2
  br i1 %exitcond872, label %if.end141.loopexit, label %for.body.i763

if.end141.loopexit:                               ; preds = %for.body.i763
  %.pre886 = load i32* %byteswap, align 4, !tbaa !0
  br label %if.end141

if.end141:                                        ; preds = %if.end141.loopexit, %if.end136
  %72 = phi i32 [ %.pre886, %if.end141.loopexit ], [ 0, %if.end136 ]
  %73 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %ctime = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 8
  %call144 = call fastcc i32 @read_bin_string(%struct._IO_FILE* %73, i32 %72, i8** %ctime) #8
  %tobool145 = icmp eq i32 %call144, 0
  br i1 %tobool145, label %FAILURE, label %if.end147

if.end147:                                        ; preds = %if.end141
  %checksum = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 10
  %74 = bitcast i32* %checksum to i8*
  %75 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call149 = call i64 @fread(i8* %74, i64 4, i64 1, %struct._IO_FILE* %75) #6
  %tobool150 = icmp eq i64 %call149, 0
  br i1 %tobool150, label %FAILURE, label %if.end152

if.end152:                                        ; preds = %if.end147
  %76 = load i32* %byteswap, align 4, !tbaa !0
  %tobool154 = icmp eq i32 %76, 0
  br i1 %tobool154, label %if.end157, label %for.body.i747

for.body.i747:                                    ; preds = %if.end152, %for.body.i747
  %indvars.iv.i741 = phi i64 [ %indvars.iv.next.i744, %for.body.i747 ], [ 0, %if.end152 ]
  %77 = sub i64 3, %indvars.iv.i741
  %arrayidx.i742 = getelementptr inbounds i8* %74, i64 %77
  %78 = load i8* %arrayidx.i742, align 1, !tbaa !1
  %arrayidx3.i743 = getelementptr inbounds i8* %74, i64 %indvars.iv.i741
  %79 = load i8* %arrayidx3.i743, align 1, !tbaa !1
  store i8 %79, i8* %arrayidx.i742, align 1, !tbaa !1
  store i8 %78, i8* %arrayidx3.i743, align 1, !tbaa !1
  %indvars.iv.next.i744 = add i64 %indvars.iv.i741, 1
  %lftr.wideiv869 = trunc i64 %indvars.iv.next.i744 to i32
  %exitcond870 = icmp eq i32 %lftr.wideiv869, 2
  br i1 %exitcond870, label %if.end157, label %for.body.i747

if.end157:                                        ; preds = %for.body.i747, %if.end152
  %80 = load i32* %flags, align 4, !tbaa !0
  %and159 = and i32 %80, 1024
  %tobool160 = icmp eq i32 %and159, 0
  br i1 %tobool160, label %if.end178, label %if.then161

if.then161:                                       ; preds = %if.end157
  %ga1 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 14
  %81 = bitcast float* %ga1 to i8*
  %82 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call163 = call i64 @fread(i8* %81, i64 4, i64 1, %struct._IO_FILE* %82) #6
  %tobool164 = icmp eq i64 %call163, 0
  br i1 %tobool164, label %FAILURE, label %if.end166

if.end166:                                        ; preds = %if.then161
  %ga2 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 15
  %83 = bitcast float* %ga2 to i8*
  %84 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call168 = call i64 @fread(i8* %83, i64 4, i64 1, %struct._IO_FILE* %84) #6
  %tobool169 = icmp eq i64 %call168, 0
  br i1 %tobool169, label %FAILURE, label %if.end171

if.end171:                                        ; preds = %if.end166
  %85 = load i32* %byteswap, align 4, !tbaa !0
  %tobool173 = icmp eq i32 %85, 0
  br i1 %tobool173, label %if.end178, label %for.body.i739

for.body.i739:                                    ; preds = %if.end171, %for.body.i739
  %indvars.iv.i733 = phi i64 [ %indvars.iv.next.i736, %for.body.i739 ], [ 0, %if.end171 ]
  %86 = sub i64 3, %indvars.iv.i733
  %arrayidx.i734 = getelementptr inbounds i8* %81, i64 %86
  %87 = load i8* %arrayidx.i734, align 1, !tbaa !1
  %arrayidx3.i735 = getelementptr inbounds i8* %81, i64 %indvars.iv.i733
  %88 = load i8* %arrayidx3.i735, align 1, !tbaa !1
  store i8 %88, i8* %arrayidx.i734, align 1, !tbaa !1
  store i8 %87, i8* %arrayidx3.i735, align 1, !tbaa !1
  %indvars.iv.next.i736 = add i64 %indvars.iv.i733, 1
  %lftr.wideiv867 = trunc i64 %indvars.iv.next.i736 to i32
  %exitcond868 = icmp eq i32 %lftr.wideiv867, 2
  br i1 %exitcond868, label %for.body.i731, label %for.body.i739

for.body.i731:                                    ; preds = %for.body.i739, %for.body.i731
  %indvars.iv.i725 = phi i64 [ %indvars.iv.next.i728, %for.body.i731 ], [ 0, %for.body.i739 ]
  %89 = sub i64 3, %indvars.iv.i725
  %arrayidx.i726 = getelementptr inbounds i8* %83, i64 %89
  %90 = load i8* %arrayidx.i726, align 1, !tbaa !1
  %arrayidx3.i727 = getelementptr inbounds i8* %83, i64 %indvars.iv.i725
  %91 = load i8* %arrayidx3.i727, align 1, !tbaa !1
  store i8 %91, i8* %arrayidx.i726, align 1, !tbaa !1
  store i8 %90, i8* %arrayidx3.i727, align 1, !tbaa !1
  %indvars.iv.next.i728 = add i64 %indvars.iv.i725, 1
  %lftr.wideiv865 = trunc i64 %indvars.iv.next.i728 to i32
  %exitcond866 = icmp eq i32 %lftr.wideiv865, 2
  br i1 %exitcond866, label %if.end178, label %for.body.i731

if.end178:                                        ; preds = %for.body.i731, %if.end171, %if.end157
  %92 = load i32* %flags, align 4, !tbaa !0
  %and180 = and i32 %92, 2048
  %tobool181 = icmp eq i32 %and180, 0
  br i1 %tobool181, label %if.end199, label %if.then182

if.then182:                                       ; preds = %if.end178
  %tc1 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 16
  %93 = bitcast float* %tc1 to i8*
  %94 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call184 = call i64 @fread(i8* %93, i64 4, i64 1, %struct._IO_FILE* %94) #6
  %tobool185 = icmp eq i64 %call184, 0
  br i1 %tobool185, label %FAILURE, label %if.end187

if.end187:                                        ; preds = %if.then182
  %tc2 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 17
  %95 = bitcast float* %tc2 to i8*
  %96 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call189 = call i64 @fread(i8* %95, i64 4, i64 1, %struct._IO_FILE* %96) #6
  %tobool190 = icmp eq i64 %call189, 0
  br i1 %tobool190, label %FAILURE, label %if.end192

if.end192:                                        ; preds = %if.end187
  %97 = load i32* %byteswap, align 4, !tbaa !0
  %tobool194 = icmp eq i32 %97, 0
  br i1 %tobool194, label %if.end199, label %for.body.i723

for.body.i723:                                    ; preds = %if.end192, %for.body.i723
  %indvars.iv.i717 = phi i64 [ %indvars.iv.next.i720, %for.body.i723 ], [ 0, %if.end192 ]
  %98 = sub i64 3, %indvars.iv.i717
  %arrayidx.i718 = getelementptr inbounds i8* %93, i64 %98
  %99 = load i8* %arrayidx.i718, align 1, !tbaa !1
  %arrayidx3.i719 = getelementptr inbounds i8* %93, i64 %indvars.iv.i717
  %100 = load i8* %arrayidx3.i719, align 1, !tbaa !1
  store i8 %100, i8* %arrayidx.i718, align 1, !tbaa !1
  store i8 %99, i8* %arrayidx3.i719, align 1, !tbaa !1
  %indvars.iv.next.i720 = add i64 %indvars.iv.i717, 1
  %lftr.wideiv863 = trunc i64 %indvars.iv.next.i720 to i32
  %exitcond864 = icmp eq i32 %lftr.wideiv863, 2
  br i1 %exitcond864, label %for.body.i715, label %for.body.i723

for.body.i715:                                    ; preds = %for.body.i723, %for.body.i715
  %indvars.iv.i709 = phi i64 [ %indvars.iv.next.i712, %for.body.i715 ], [ 0, %for.body.i723 ]
  %101 = sub i64 3, %indvars.iv.i709
  %arrayidx.i710 = getelementptr inbounds i8* %95, i64 %101
  %102 = load i8* %arrayidx.i710, align 1, !tbaa !1
  %arrayidx3.i711 = getelementptr inbounds i8* %95, i64 %indvars.iv.i709
  %103 = load i8* %arrayidx3.i711, align 1, !tbaa !1
  store i8 %103, i8* %arrayidx.i710, align 1, !tbaa !1
  store i8 %102, i8* %arrayidx3.i711, align 1, !tbaa !1
  %indvars.iv.next.i712 = add i64 %indvars.iv.i709, 1
  %lftr.wideiv861 = trunc i64 %indvars.iv.next.i712 to i32
  %exitcond862 = icmp eq i32 %lftr.wideiv861, 2
  br i1 %exitcond862, label %if.end199, label %for.body.i715

if.end199:                                        ; preds = %for.body.i715, %if.end192, %if.end178
  %104 = load i32* %flags, align 4, !tbaa !0
  %and201 = and i32 %104, 4096
  %tobool202 = icmp eq i32 %and201, 0
  br i1 %tobool202, label %for.body224, label %if.then203

if.then203:                                       ; preds = %if.end199
  %nc1 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 18
  %105 = bitcast float* %nc1 to i8*
  %106 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call205 = call i64 @fread(i8* %105, i64 4, i64 1, %struct._IO_FILE* %106) #6
  %tobool206 = icmp eq i64 %call205, 0
  br i1 %tobool206, label %FAILURE, label %if.end208

if.end208:                                        ; preds = %if.then203
  %nc2 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 19
  %107 = bitcast float* %nc2 to i8*
  %108 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call210 = call i64 @fread(i8* %107, i64 4, i64 1, %struct._IO_FILE* %108) #6
  %tobool211 = icmp eq i64 %call210, 0
  br i1 %tobool211, label %FAILURE, label %if.end213

if.end213:                                        ; preds = %if.end208
  %109 = load i32* %byteswap, align 4, !tbaa !0
  %tobool215 = icmp eq i32 %109, 0
  br i1 %tobool215, label %for.body224, label %for.body.i707

for.body.i707:                                    ; preds = %if.end213, %for.body.i707
  %indvars.iv.i701 = phi i64 [ %indvars.iv.next.i704, %for.body.i707 ], [ 0, %if.end213 ]
  %110 = sub i64 3, %indvars.iv.i701
  %arrayidx.i702 = getelementptr inbounds i8* %105, i64 %110
  %111 = load i8* %arrayidx.i702, align 1, !tbaa !1
  %arrayidx3.i703 = getelementptr inbounds i8* %105, i64 %indvars.iv.i701
  %112 = load i8* %arrayidx3.i703, align 1, !tbaa !1
  store i8 %112, i8* %arrayidx.i702, align 1, !tbaa !1
  store i8 %111, i8* %arrayidx3.i703, align 1, !tbaa !1
  %indvars.iv.next.i704 = add i64 %indvars.iv.i701, 1
  %lftr.wideiv859 = trunc i64 %indvars.iv.next.i704 to i32
  %exitcond860 = icmp eq i32 %lftr.wideiv859, 2
  br i1 %exitcond860, label %for.body.i699, label %for.body.i707

for.body.i699:                                    ; preds = %for.body.i707, %for.body.i699
  %indvars.iv.i693 = phi i64 [ %indvars.iv.next.i696, %for.body.i699 ], [ 0, %for.body.i707 ]
  %113 = sub i64 3, %indvars.iv.i693
  %arrayidx.i694 = getelementptr inbounds i8* %107, i64 %113
  %114 = load i8* %arrayidx.i694, align 1, !tbaa !1
  %arrayidx3.i695 = getelementptr inbounds i8* %107, i64 %indvars.iv.i693
  %115 = load i8* %arrayidx3.i695, align 1, !tbaa !1
  store i8 %115, i8* %arrayidx.i694, align 1, !tbaa !1
  store i8 %114, i8* %arrayidx3.i695, align 1, !tbaa !1
  %indvars.iv.next.i696 = add i64 %indvars.iv.i693, 1
  %lftr.wideiv857 = trunc i64 %indvars.iv.next.i696 to i32
  %exitcond858 = icmp eq i32 %lftr.wideiv857, 2
  br i1 %exitcond858, label %for.body224, label %for.body.i699

for.body224:                                      ; preds = %if.end199, %if.end213, %for.body.i699, %for.inc248
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %for.inc248 ], [ 0, %for.body.i699 ], [ 0, %if.end213 ], [ 0, %if.end199 ]
  %arrayidx226 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 25, i64 %indvars.iv855
  %116 = bitcast [2 x float]* %arrayidx226 to i8*
  %117 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call228 = call i64 @fread(i8* %116, i64 4, i64 2, %struct._IO_FILE* %117) #6
  %tobool229 = icmp eq i64 %call228, 0
  br i1 %tobool229, label %FAILURE, label %if.end231

if.end231:                                        ; preds = %for.body224
  %118 = load i32* %byteswap, align 4, !tbaa !0
  %tobool233 = icmp eq i32 %118, 0
  br i1 %tobool233, label %for.inc248, label %for.body238

for.body238:                                      ; preds = %if.end231, %byteswap.exit692
  %indvars.iv851 = phi i64 [ %indvars.iv.next852, %byteswap.exit692 ], [ 0, %if.end231 ]
  %arrayidx243 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 25, i64 %indvars.iv855, i64 %indvars.iv851
  %119 = bitcast float* %arrayidx243 to i8*
  br label %for.body.i691

for.body.i691:                                    ; preds = %for.body.i691, %for.body238
  %indvars.iv.i685 = phi i64 [ 0, %for.body238 ], [ %indvars.iv.next.i688, %for.body.i691 ]
  %120 = sub i64 3, %indvars.iv.i685
  %arrayidx.i686 = getelementptr inbounds i8* %119, i64 %120
  %121 = load i8* %arrayidx.i686, align 1, !tbaa !1
  %arrayidx3.i687 = getelementptr inbounds i8* %119, i64 %indvars.iv.i685
  %122 = load i8* %arrayidx3.i687, align 1, !tbaa !1
  store i8 %122, i8* %arrayidx.i686, align 1, !tbaa !1
  store i8 %121, i8* %arrayidx3.i687, align 1, !tbaa !1
  %indvars.iv.next.i688 = add i64 %indvars.iv.i685, 1
  %lftr.wideiv849 = trunc i64 %indvars.iv.next.i688 to i32
  %exitcond850 = icmp eq i32 %lftr.wideiv849, 2
  br i1 %exitcond850, label %byteswap.exit692, label %for.body.i691

byteswap.exit692:                                 ; preds = %for.body.i691
  %indvars.iv.next852 = add i64 %indvars.iv851, 1
  %lftr.wideiv853 = trunc i64 %indvars.iv.next852 to i32
  %exitcond854 = icmp eq i32 %lftr.wideiv853, 2
  br i1 %exitcond854, label %for.inc248, label %for.body238

for.inc248:                                       ; preds = %byteswap.exit692, %if.end231
  %indvars.iv.next856 = add i64 %indvars.iv855, 1
  %123 = trunc i64 %indvars.iv.next856 to i32
  %cmp222 = icmp slt i32 %123, 4
  br i1 %cmp222, label %for.body224, label %for.end250

for.end250:                                       ; preds = %for.inc248
  %p1 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 29
  %124 = bitcast float* %p1 to i8*
  %125 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call252 = call i64 @fread(i8* %124, i64 4, i64 1, %struct._IO_FILE* %125) #6
  %tobool253 = icmp eq i64 %call252, 0
  br i1 %tobool253, label %FAILURE, label %if.end255

if.end255:                                        ; preds = %for.end250
  %null = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 28
  %126 = bitcast [20 x float]* %null to i8*
  %127 = load i32* @Alphabet_size, align 4, !tbaa !0
  %conv257 = sext i32 %127 to i64
  %128 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call259 = call i64 @fread(i8* %126, i64 4, i64 %conv257, %struct._IO_FILE* %128) #6
  %tobool260 = icmp eq i64 %call259, 0
  br i1 %tobool260, label %FAILURE, label %if.end262

if.end262:                                        ; preds = %if.end255
  %129 = load i32* %flags, align 4, !tbaa !0
  %and264 = and i32 %129, 128
  %tobool265 = icmp eq i32 %and264, 0
  br i1 %tobool265, label %if.end283, label %if.then266

if.then266:                                       ; preds = %if.end262
  %mu = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 45
  %130 = bitcast float* %mu to i8*
  %131 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call268 = call i64 @fread(i8* %130, i64 4, i64 1, %struct._IO_FILE* %131) #6
  %tobool269 = icmp eq i64 %call268, 0
  br i1 %tobool269, label %FAILURE, label %if.end271

if.end271:                                        ; preds = %if.then266
  %lambda = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 46
  %132 = bitcast float* %lambda to i8*
  %133 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call273 = call i64 @fread(i8* %132, i64 4, i64 1, %struct._IO_FILE* %133) #6
  %tobool274 = icmp eq i64 %call273, 0
  br i1 %tobool274, label %FAILURE, label %if.end276

if.end276:                                        ; preds = %if.end271
  %134 = load i32* %byteswap, align 4, !tbaa !0
  %tobool278 = icmp eq i32 %134, 0
  br i1 %tobool278, label %if.end283, label %for.body.i683

for.body.i683:                                    ; preds = %if.end276, %for.body.i683
  %indvars.iv.i677 = phi i64 [ %indvars.iv.next.i680, %for.body.i683 ], [ 0, %if.end276 ]
  %135 = sub i64 3, %indvars.iv.i677
  %arrayidx.i678 = getelementptr inbounds i8* %130, i64 %135
  %136 = load i8* %arrayidx.i678, align 1, !tbaa !1
  %arrayidx3.i679 = getelementptr inbounds i8* %130, i64 %indvars.iv.i677
  %137 = load i8* %arrayidx3.i679, align 1, !tbaa !1
  store i8 %137, i8* %arrayidx.i678, align 1, !tbaa !1
  store i8 %136, i8* %arrayidx3.i679, align 1, !tbaa !1
  %indvars.iv.next.i680 = add i64 %indvars.iv.i677, 1
  %lftr.wideiv847 = trunc i64 %indvars.iv.next.i680 to i32
  %exitcond848 = icmp eq i32 %lftr.wideiv847, 2
  br i1 %exitcond848, label %for.body.i675, label %for.body.i683

for.body.i675:                                    ; preds = %for.body.i683, %for.body.i675
  %indvars.iv.i669 = phi i64 [ %indvars.iv.next.i672, %for.body.i675 ], [ 0, %for.body.i683 ]
  %138 = sub i64 3, %indvars.iv.i669
  %arrayidx.i670 = getelementptr inbounds i8* %132, i64 %138
  %139 = load i8* %arrayidx.i670, align 1, !tbaa !1
  %arrayidx3.i671 = getelementptr inbounds i8* %132, i64 %indvars.iv.i669
  %140 = load i8* %arrayidx3.i671, align 1, !tbaa !1
  store i8 %140, i8* %arrayidx.i670, align 1, !tbaa !1
  store i8 %139, i8* %arrayidx3.i671, align 1, !tbaa !1
  %indvars.iv.next.i672 = add i64 %indvars.iv.i669, 1
  %lftr.wideiv845 = trunc i64 %indvars.iv.next.i672 to i32
  %exitcond846 = icmp eq i32 %lftr.wideiv845, 2
  br i1 %exitcond846, label %if.end283, label %for.body.i675

if.end283:                                        ; preds = %for.body.i675, %if.end276, %if.end262
  %tbd1 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 24
  %141 = bitcast float* %tbd1 to i8*
  %142 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call285 = call i64 @fread(i8* %141, i64 4, i64 1, %struct._IO_FILE* %142) #6
  %tobool286 = icmp eq i64 %call285, 0
  br i1 %tobool286, label %FAILURE, label %if.end288

if.end288:                                        ; preds = %if.end283
  %begin = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 26
  %143 = load float** %begin, align 8, !tbaa !3
  %144 = bitcast float* %143 to i8*
  %145 = load i32* %M, align 4, !tbaa !0
  %add290 = add nsw i32 %145, 1
  %conv291 = sext i32 %add290 to i64
  %146 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call293 = call i64 @fread(i8* %144, i64 4, i64 %conv291, %struct._IO_FILE* %146) #6
  %tobool294 = icmp eq i64 %call293, 0
  br i1 %tobool294, label %FAILURE, label %if.end296

if.end296:                                        ; preds = %if.end288
  %end = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 27
  %147 = load float** %end, align 8, !tbaa !3
  %148 = bitcast float* %147 to i8*
  %149 = load i32* %M, align 4, !tbaa !0
  %add298 = add nsw i32 %149, 1
  %conv299 = sext i32 %add298 to i64
  %150 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call301 = call i64 @fread(i8* %148, i64 4, i64 %conv299, %struct._IO_FILE* %150) #6
  %tobool302 = icmp eq i64 %call301, 0
  br i1 %tobool302, label %FAILURE, label %for.cond305.preheader

for.cond305.preheader:                            ; preds = %if.end296
  %151 = load i32* %M, align 4, !tbaa !0
  %cmp307808 = icmp slt i32 %151, 1
  br i1 %cmp307808, label %for.end351, label %for.body309.lr.ph

for.body309.lr.ph:                                ; preds = %for.cond305.preheader
  %mat = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 22
  br label %for.body309

for.cond305:                                      ; preds = %for.body309
  %indvars.iv.next844 = add i64 %indvars.iv843, 1
  %152 = load i32* %M, align 4, !tbaa !0
  %153 = trunc i64 %indvars.iv843 to i32
  %cmp307 = icmp slt i32 %153, %152
  br i1 %cmp307, label %for.body309, label %for.cond321.preheader

for.cond321.preheader:                            ; preds = %for.cond305
  %cmp323805 = icmp sgt i32 %152, 1
  br i1 %cmp323805, label %for.body325.lr.ph, label %for.end351

for.body325.lr.ph:                                ; preds = %for.cond321.preheader
  %ins = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 23
  br label %for.body325

for.body309:                                      ; preds = %for.cond305, %for.body309.lr.ph
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %for.cond305 ], [ 1, %for.body309.lr.ph ]
  %154 = load float*** %mat, align 8, !tbaa !3
  %arrayidx311 = getelementptr inbounds float** %154, i64 %indvars.iv843
  %155 = load float** %arrayidx311, align 8, !tbaa !3
  %156 = bitcast float* %155 to i8*
  %157 = load i32* @Alphabet_size, align 4, !tbaa !0
  %conv312 = sext i32 %157 to i64
  %158 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call314 = call i64 @fread(i8* %156, i64 4, i64 %conv312, %struct._IO_FILE* %158) #6
  %tobool315 = icmp eq i64 %call314, 0
  br i1 %tobool315, label %FAILURE, label %for.cond305

for.cond321:                                      ; preds = %for.body325
  %159 = load i32* %M, align 4, !tbaa !0
  %160 = trunc i64 %indvars.iv.next842 to i32
  %cmp323 = icmp slt i32 %160, %159
  br i1 %cmp323, label %for.body325, label %for.cond337.preheader

for.cond337.preheader:                            ; preds = %for.cond321
  %cmp339802 = icmp sgt i32 %159, 1
  br i1 %cmp339802, label %for.body341.lr.ph, label %for.end351

for.body341.lr.ph:                                ; preds = %for.cond337.preheader
  %t = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 21
  br label %for.body341

for.body325:                                      ; preds = %for.body325.lr.ph, %for.cond321
  %indvars.iv841 = phi i64 [ 1, %for.body325.lr.ph ], [ %indvars.iv.next842, %for.cond321 ]
  %161 = load float*** %ins, align 8, !tbaa !3
  %arrayidx327 = getelementptr inbounds float** %161, i64 %indvars.iv841
  %162 = load float** %arrayidx327, align 8, !tbaa !3
  %163 = bitcast float* %162 to i8*
  %164 = load i32* @Alphabet_size, align 4, !tbaa !0
  %conv328 = sext i32 %164 to i64
  %165 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call330 = call i64 @fread(i8* %163, i64 4, i64 %conv328, %struct._IO_FILE* %165) #6
  %tobool331 = icmp eq i64 %call330, 0
  %indvars.iv.next842 = add i64 %indvars.iv841, 1
  br i1 %tobool331, label %FAILURE, label %for.cond321

for.cond337:                                      ; preds = %for.body341
  %166 = load i32* %M, align 4, !tbaa !0
  %167 = trunc i64 %indvars.iv.next840 to i32
  %cmp339 = icmp slt i32 %167, %166
  br i1 %cmp339, label %for.body341, label %for.end351

for.body341:                                      ; preds = %for.body341.lr.ph, %for.cond337
  %indvars.iv839 = phi i64 [ 1, %for.body341.lr.ph ], [ %indvars.iv.next840, %for.cond337 ]
  %168 = load float*** %t, align 8, !tbaa !3
  %arrayidx343 = getelementptr inbounds float** %168, i64 %indvars.iv839
  %169 = load float** %arrayidx343, align 8, !tbaa !3
  %170 = bitcast float* %169 to i8*
  %171 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call345 = call i64 @fread(i8* %170, i64 4, i64 7, %struct._IO_FILE* %171) #6
  %tobool346 = icmp eq i64 %call345, 0
  %indvars.iv.next840 = add i64 %indvars.iv839, 1
  br i1 %tobool346, label %FAILURE, label %for.cond337

for.end351:                                       ; preds = %for.cond305.preheader, %for.cond321.preheader, %for.cond337, %for.cond337.preheader
  %172 = load i32* %byteswap, align 4, !tbaa !0
  %tobool353 = icmp eq i32 %172, 0
  br i1 %tobool353, label %if.end427, label %for.cond355.preheader

for.cond355.preheader:                            ; preds = %for.end351
  %173 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp356800 = icmp sgt i32 %173, 0
  br i1 %cmp356800, label %for.body358, label %for.body.i659

for.body358:                                      ; preds = %for.cond355.preheader, %byteswap.exit668
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %byteswap.exit668 ], [ 0, %for.cond355.preheader ]
  %arrayidx361 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 28, i64 %indvars.iv837
  %174 = bitcast float* %arrayidx361 to i8*
  br label %for.body.i667

for.body.i667:                                    ; preds = %for.body.i667, %for.body358
  %indvars.iv.i661 = phi i64 [ 0, %for.body358 ], [ %indvars.iv.next.i664, %for.body.i667 ]
  %175 = sub i64 3, %indvars.iv.i661
  %arrayidx.i662 = getelementptr inbounds i8* %174, i64 %175
  %176 = load i8* %arrayidx.i662, align 1, !tbaa !1
  %arrayidx3.i663 = getelementptr inbounds i8* %174, i64 %indvars.iv.i661
  %177 = load i8* %arrayidx3.i663, align 1, !tbaa !1
  store i8 %177, i8* %arrayidx.i662, align 1, !tbaa !1
  store i8 %176, i8* %arrayidx3.i663, align 1, !tbaa !1
  %indvars.iv.next.i664 = add i64 %indvars.iv.i661, 1
  %lftr.wideiv835 = trunc i64 %indvars.iv.next.i664 to i32
  %exitcond836 = icmp eq i32 %lftr.wideiv835, 2
  br i1 %exitcond836, label %byteswap.exit668, label %for.body.i667

byteswap.exit668:                                 ; preds = %for.body.i667
  %indvars.iv.next838 = add i64 %indvars.iv837, 1
  %178 = load i32* @Alphabet_size, align 4, !tbaa !0
  %179 = trunc i64 %indvars.iv.next838 to i32
  %cmp356 = icmp slt i32 %179, %178
  br i1 %cmp356, label %for.body358, label %for.body.i659

for.body.i659:                                    ; preds = %for.cond355.preheader, %byteswap.exit668, %for.body.i659
  %indvars.iv.i653 = phi i64 [ %indvars.iv.next.i656, %for.body.i659 ], [ 0, %byteswap.exit668 ], [ 0, %for.cond355.preheader ]
  %180 = sub i64 3, %indvars.iv.i653
  %arrayidx.i654 = getelementptr inbounds i8* %124, i64 %180
  %181 = load i8* %arrayidx.i654, align 1, !tbaa !1
  %arrayidx3.i655 = getelementptr inbounds i8* %124, i64 %indvars.iv.i653
  %182 = load i8* %arrayidx3.i655, align 1, !tbaa !1
  store i8 %182, i8* %arrayidx.i654, align 1, !tbaa !1
  store i8 %181, i8* %arrayidx3.i655, align 1, !tbaa !1
  %indvars.iv.next.i656 = add i64 %indvars.iv.i653, 1
  %lftr.wideiv833 = trunc i64 %indvars.iv.next.i656 to i32
  %exitcond834 = icmp eq i32 %lftr.wideiv833, 2
  br i1 %exitcond834, label %for.body.i651, label %for.body.i659

for.body.i651:                                    ; preds = %for.body.i659, %for.body.i651
  %indvars.iv.i645 = phi i64 [ %indvars.iv.next.i648, %for.body.i651 ], [ 0, %for.body.i659 ]
  %183 = sub i64 3, %indvars.iv.i645
  %arrayidx.i646 = getelementptr inbounds i8* %141, i64 %183
  %184 = load i8* %arrayidx.i646, align 1, !tbaa !1
  %arrayidx3.i647 = getelementptr inbounds i8* %141, i64 %indvars.iv.i645
  %185 = load i8* %arrayidx3.i647, align 1, !tbaa !1
  store i8 %185, i8* %arrayidx.i646, align 1, !tbaa !1
  store i8 %184, i8* %arrayidx3.i647, align 1, !tbaa !1
  %indvars.iv.next.i648 = add i64 %indvars.iv.i645, 1
  %lftr.wideiv831 = trunc i64 %indvars.iv.next.i648 to i32
  %exitcond832 = icmp eq i32 %lftr.wideiv831, 2
  br i1 %exitcond832, label %for.cond367.preheader, label %for.body.i651

for.cond367.preheader:                            ; preds = %for.body.i651
  %186 = load i32* %M, align 4, !tbaa !0
  %cmp369798 = icmp slt i32 %186, 1
  br i1 %cmp369798, label %if.end427, label %for.cond372.preheader.lr.ph

for.cond372.preheader.lr.ph:                      ; preds = %for.cond367.preheader
  %t417 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 21
  %ins394 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 23
  %mat378 = getelementptr inbounds %struct.plan7_s* %call11, i64 0, i32 22
  br label %for.cond372.preheader

for.cond372.preheader:                            ; preds = %for.inc424, %for.cond372.preheader.lr.ph
  %187 = phi i32 [ %225, %for.inc424 ], [ %186, %for.cond372.preheader.lr.ph ]
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %for.inc424 ], [ 1, %for.cond372.preheader.lr.ph ]
  %188 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp373793 = icmp sgt i32 %188, 0
  br i1 %cmp373793, label %for.body375, label %for.end383

for.body375:                                      ; preds = %for.cond372.preheader, %byteswap.exit644
  %indvars.iv = phi i64 [ %indvars.iv.next, %byteswap.exit644 ], [ 0, %for.cond372.preheader ]
  %189 = load float*** %mat378, align 8, !tbaa !3
  %arrayidx379 = getelementptr inbounds float** %189, i64 %indvars.iv829
  %190 = load float** %arrayidx379, align 8, !tbaa !3
  %arrayidx380 = getelementptr inbounds float* %190, i64 %indvars.iv
  %191 = bitcast float* %arrayidx380 to i8*
  br label %for.body.i643

for.body.i643:                                    ; preds = %for.body.i643, %for.body375
  %indvars.iv.i637 = phi i64 [ 0, %for.body375 ], [ %indvars.iv.next.i640, %for.body.i643 ]
  %192 = sub i64 3, %indvars.iv.i637
  %arrayidx.i638 = getelementptr inbounds i8* %191, i64 %192
  %193 = load i8* %arrayidx.i638, align 1, !tbaa !1
  %arrayidx3.i639 = getelementptr inbounds i8* %191, i64 %indvars.iv.i637
  %194 = load i8* %arrayidx3.i639, align 1, !tbaa !1
  store i8 %194, i8* %arrayidx.i638, align 1, !tbaa !1
  store i8 %193, i8* %arrayidx3.i639, align 1, !tbaa !1
  %indvars.iv.next.i640 = add i64 %indvars.iv.i637, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i640 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %byteswap.exit644, label %for.body.i643

byteswap.exit644:                                 ; preds = %for.body.i643
  %indvars.iv.next = add i64 %indvars.iv, 1
  %195 = load i32* @Alphabet_size, align 4, !tbaa !0
  %196 = trunc i64 %indvars.iv.next to i32
  %cmp373 = icmp slt i32 %196, %195
  br i1 %cmp373, label %for.body375, label %for.cond372.for.end383_crit_edge

for.cond372.for.end383_crit_edge:                 ; preds = %byteswap.exit644
  %.pre887 = load i32* %M, align 4, !tbaa !0
  br label %for.end383

for.end383:                                       ; preds = %for.cond372.for.end383_crit_edge, %for.cond372.preheader
  %197 = phi i32 [ %195, %for.cond372.for.end383_crit_edge ], [ %188, %for.cond372.preheader ]
  %198 = phi i32 [ %.pre887, %for.cond372.for.end383_crit_edge ], [ %187, %for.cond372.preheader ]
  %199 = trunc i64 %indvars.iv829 to i32
  %cmp385 = icmp slt i32 %199, %198
  %cmp389795 = icmp sgt i32 %197, 0
  %or.cond = and i1 %cmp385, %cmp389795
  br i1 %or.cond, label %for.body391, label %if.end400

for.body391:                                      ; preds = %for.end383, %byteswap.exit636
  %indvars.iv817 = phi i64 [ %indvars.iv.next818, %byteswap.exit636 ], [ 0, %for.end383 ]
  %200 = load float*** %ins394, align 8, !tbaa !3
  %arrayidx395 = getelementptr inbounds float** %200, i64 %indvars.iv829
  %201 = load float** %arrayidx395, align 8, !tbaa !3
  %arrayidx396 = getelementptr inbounds float* %201, i64 %indvars.iv817
  %202 = bitcast float* %arrayidx396 to i8*
  br label %for.body.i635

for.body.i635:                                    ; preds = %for.body.i635, %for.body391
  %indvars.iv.i629 = phi i64 [ 0, %for.body391 ], [ %indvars.iv.next.i632, %for.body.i635 ]
  %203 = sub i64 3, %indvars.iv.i629
  %arrayidx.i630 = getelementptr inbounds i8* %202, i64 %203
  %204 = load i8* %arrayidx.i630, align 1, !tbaa !1
  %arrayidx3.i631 = getelementptr inbounds i8* %202, i64 %indvars.iv.i629
  %205 = load i8* %arrayidx3.i631, align 1, !tbaa !1
  store i8 %205, i8* %arrayidx.i630, align 1, !tbaa !1
  store i8 %204, i8* %arrayidx3.i631, align 1, !tbaa !1
  %indvars.iv.next.i632 = add i64 %indvars.iv.i629, 1
  %lftr.wideiv815 = trunc i64 %indvars.iv.next.i632 to i32
  %exitcond816 = icmp eq i32 %lftr.wideiv815, 2
  br i1 %exitcond816, label %byteswap.exit636, label %for.body.i635

byteswap.exit636:                                 ; preds = %for.body.i635
  %indvars.iv.next818 = add i64 %indvars.iv817, 1
  %206 = load i32* @Alphabet_size, align 4, !tbaa !0
  %207 = trunc i64 %indvars.iv.next818 to i32
  %cmp389 = icmp slt i32 %207, %206
  br i1 %cmp389, label %for.body391, label %if.end400

if.end400:                                        ; preds = %byteswap.exit636, %for.end383
  %208 = load float** %begin, align 8, !tbaa !3
  %arrayidx403 = getelementptr inbounds float* %208, i64 %indvars.iv829
  %209 = bitcast float* %arrayidx403 to i8*
  br label %for.body.i627

for.body.i627:                                    ; preds = %for.body.i627, %if.end400
  %indvars.iv.i621 = phi i64 [ 0, %if.end400 ], [ %indvars.iv.next.i624, %for.body.i627 ]
  %210 = sub i64 3, %indvars.iv.i621
  %arrayidx.i622 = getelementptr inbounds i8* %209, i64 %210
  %211 = load i8* %arrayidx.i622, align 1, !tbaa !1
  %arrayidx3.i623 = getelementptr inbounds i8* %209, i64 %indvars.iv.i621
  %212 = load i8* %arrayidx3.i623, align 1, !tbaa !1
  store i8 %212, i8* %arrayidx.i622, align 1, !tbaa !1
  store i8 %211, i8* %arrayidx3.i623, align 1, !tbaa !1
  %indvars.iv.next.i624 = add i64 %indvars.iv.i621, 1
  %lftr.wideiv819 = trunc i64 %indvars.iv.next.i624 to i32
  %exitcond820 = icmp eq i32 %lftr.wideiv819, 2
  br i1 %exitcond820, label %byteswap.exit628, label %for.body.i627

byteswap.exit628:                                 ; preds = %for.body.i627
  %213 = load float** %end, align 8, !tbaa !3
  %arrayidx406 = getelementptr inbounds float* %213, i64 %indvars.iv829
  %214 = bitcast float* %arrayidx406 to i8*
  br label %for.body.i619

for.body.i619:                                    ; preds = %for.body.i619, %byteswap.exit628
  %indvars.iv.i613 = phi i64 [ 0, %byteswap.exit628 ], [ %indvars.iv.next.i616, %for.body.i619 ]
  %215 = sub i64 3, %indvars.iv.i613
  %arrayidx.i614 = getelementptr inbounds i8* %214, i64 %215
  %216 = load i8* %arrayidx.i614, align 1, !tbaa !1
  %arrayidx3.i615 = getelementptr inbounds i8* %214, i64 %indvars.iv.i613
  %217 = load i8* %arrayidx3.i615, align 1, !tbaa !1
  store i8 %217, i8* %arrayidx.i614, align 1, !tbaa !1
  store i8 %216, i8* %arrayidx3.i615, align 1, !tbaa !1
  %indvars.iv.next.i616 = add i64 %indvars.iv.i613, 1
  %lftr.wideiv821 = trunc i64 %indvars.iv.next.i616 to i32
  %exitcond822 = icmp eq i32 %lftr.wideiv821, 2
  br i1 %exitcond822, label %byteswap.exit620, label %for.body.i619

byteswap.exit620:                                 ; preds = %for.body.i619
  %218 = load i32* %M, align 4, !tbaa !0
  %cmp408 = icmp slt i32 %199, %218
  br i1 %cmp408, label %for.body414, label %for.inc424

for.body414:                                      ; preds = %byteswap.exit620, %byteswap.exit612
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %byteswap.exit612 ], [ 0, %byteswap.exit620 ]
  %219 = load float*** %t417, align 8, !tbaa !3
  %arrayidx418 = getelementptr inbounds float** %219, i64 %indvars.iv829
  %220 = load float** %arrayidx418, align 8, !tbaa !3
  %arrayidx419 = getelementptr inbounds float* %220, i64 %indvars.iv825
  %221 = bitcast float* %arrayidx419 to i8*
  br label %for.body.i611

for.body.i611:                                    ; preds = %for.body.i611, %for.body414
  %indvars.iv.i605 = phi i64 [ 0, %for.body414 ], [ %indvars.iv.next.i608, %for.body.i611 ]
  %222 = sub i64 3, %indvars.iv.i605
  %arrayidx.i606 = getelementptr inbounds i8* %221, i64 %222
  %223 = load i8* %arrayidx.i606, align 1, !tbaa !1
  %arrayidx3.i607 = getelementptr inbounds i8* %221, i64 %indvars.iv.i605
  %224 = load i8* %arrayidx3.i607, align 1, !tbaa !1
  store i8 %224, i8* %arrayidx.i606, align 1, !tbaa !1
  store i8 %223, i8* %arrayidx3.i607, align 1, !tbaa !1
  %indvars.iv.next.i608 = add i64 %indvars.iv.i605, 1
  %lftr.wideiv823 = trunc i64 %indvars.iv.next.i608 to i32
  %exitcond824 = icmp eq i32 %lftr.wideiv823, 2
  br i1 %exitcond824, label %byteswap.exit612, label %for.body.i611

byteswap.exit612:                                 ; preds = %for.body.i611
  %indvars.iv.next826 = add i64 %indvars.iv825, 1
  %lftr.wideiv827 = trunc i64 %indvars.iv.next826 to i32
  %exitcond828 = icmp eq i32 %lftr.wideiv827, 7
  br i1 %exitcond828, label %for.inc424.loopexit, label %for.body414

for.inc424.loopexit:                              ; preds = %byteswap.exit612
  %.pre888 = load i32* %M, align 4, !tbaa !0
  br label %for.inc424

for.inc424:                                       ; preds = %for.inc424.loopexit, %byteswap.exit620
  %225 = phi i32 [ %.pre888, %for.inc424.loopexit ], [ %218, %byteswap.exit620 ]
  %indvars.iv.next830 = add i64 %indvars.iv829, 1
  %cmp369 = icmp slt i32 %199, %225
  br i1 %cmp369, label %for.cond372.preheader, label %if.end427

if.end427:                                        ; preds = %for.cond367.preheader, %for.inc424, %for.end351
  %226 = load i32* %flags, align 4, !tbaa !0
  %or = and i32 %226, -34
  %and430 = or i32 %or, 32
  store i32 %and430, i32* %flags, align 4, !tbaa !0
  store %struct.plan7_s* %call11, %struct.plan7_s** %ret_hmm, align 8, !tbaa !3
  br label %return

FAILURE:                                          ; preds = %for.body224, %for.body309, %for.body325, %for.body341, %land.lhs.true, %land.lhs.true39, %if.end166, %if.then161, %if.end187, %if.then182, %if.end208, %if.then203, %if.end271, %if.then266, %if.end296, %if.end288, %if.end283, %if.end255, %for.end250, %if.end147, %if.end141, %if.end131, %if.end125, %if.end55, %if.end45, %if.end21, %if.end10
  %cmp431 = icmp eq %struct.plan7_s* %call11, null
  br i1 %cmp431, label %if.end434, label %if.then433

if.then433:                                       ; preds = %land.lhs.true77, %land.lhs.true90, %land.lhs.true107, %FAILURE
  call void @FreePlan7(%struct.plan7_s* %call11) #6
  br label %if.end434

if.end434:                                        ; preds = %if.end8, %FAILURE, %if.then433
  store %struct.plan7_s* null, %struct.plan7_s** %ret_hmm, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end434, %if.end427
  %retval.0 = phi i32 [ 1, %if.end434 ], [ 1, %if.end427 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_bin19hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  %magic = alloca i32, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0
  %0 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %magic to i8*
  %2 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call2 = call i64 @fread(i8* %1, i64 4, i64 1, %struct._IO_FILE* %2) #6
  %tobool3 = icmp eq i64 %call2, 0
  br i1 %tobool3, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %3 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %byteswap = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 4
  %4 = load i32* %byteswap, align 4, !tbaa !0
  %call7 = call fastcc %struct.plan9_s* @read_plan9_binhmm(%struct._IO_FILE* %3, i32 7, i32 %4) #8
  %cmp = icmp eq %struct.plan9_s* %call7, null
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store %struct.plan7_s* null, %struct.plan7_s** %ret_hmm, align 8, !tbaa !3
  br label %return

if.end9:                                          ; preds = %if.end5
  call void @Plan9toPlan7(%struct.plan9_s* %call7, %struct.plan7_s** %hmm) #6
  %call10 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8]* @.str59, i64 0, i64 0)) #6
  %5 = load %struct.plan7_s** %hmm, align 8, !tbaa !3
  %comlog = getelementptr inbounds %struct.plan7_s* %5, i64 0, i32 6
  store i8* %call10, i8** %comlog, align 8, !tbaa !3
  %6 = load %struct.plan7_s** %hmm, align 8, !tbaa !3
  call void @Plan7SetCtime(%struct.plan7_s* %6) #6
  %call11 = call i32 @P9FreeHMM(%struct.plan9_s* %call7) #6
  %7 = load %struct.plan7_s** %hmm, align 8, !tbaa !3
  store %struct.plan7_s* %7, %struct.plan7_s** %ret_hmm, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end9, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.end9 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_bin17hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  %magic = alloca i32, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0
  %0 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %magic to i8*
  %2 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call2 = call i64 @fread(i8* %1, i64 4, i64 1, %struct._IO_FILE* %2) #6
  %tobool3 = icmp eq i64 %call2, 0
  br i1 %tobool3, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %3 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %byteswap = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 4
  %4 = load i32* %byteswap, align 4, !tbaa !0
  %call7 = call fastcc %struct.plan9_s* @read_plan9_binhmm(%struct._IO_FILE* %3, i32 5, i32 %4) #8
  %cmp = icmp eq %struct.plan9_s* %call7, null
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store %struct.plan7_s* null, %struct.plan7_s** %ret_hmm, align 8, !tbaa !3
  br label %return

if.end9:                                          ; preds = %if.end5
  call void @Plan9toPlan7(%struct.plan9_s* %call7, %struct.plan7_s** %hmm) #6
  %call10 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8]* @.str59, i64 0, i64 0)) #6
  %5 = load %struct.plan7_s** %hmm, align 8, !tbaa !3
  %comlog = getelementptr inbounds %struct.plan7_s* %5, i64 0, i32 6
  store i8* %call10, i8** %comlog, align 8, !tbaa !3
  %6 = load %struct.plan7_s** %hmm, align 8, !tbaa !3
  call void @Plan7SetCtime(%struct.plan7_s* %6) #6
  %call11 = call i32 @P9FreeHMM(%struct.plan9_s* %call7) #6
  %7 = load %struct.plan7_s** %hmm, align 8, !tbaa !3
  store %struct.plan7_s* %7, %struct.plan7_s** %ret_hmm, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end9, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.end9 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_bin11hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  %magic = alloca i32, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0
  %0 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %magic to i8*
  %2 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call2 = call i64 @fread(i8* %1, i64 4, i64 1, %struct._IO_FILE* %2) #6
  %tobool3 = icmp eq i64 %call2, 0
  br i1 %tobool3, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %3 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %byteswap = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 4
  %4 = load i32* %byteswap, align 4, !tbaa !0
  %call7 = call fastcc %struct.plan9_s* @read_plan9_binhmm(%struct._IO_FILE* %3, i32 3, i32 %4) #8
  %cmp = icmp eq %struct.plan9_s* %call7, null
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store %struct.plan7_s* null, %struct.plan7_s** %ret_hmm, align 8, !tbaa !3
  br label %return

if.end9:                                          ; preds = %if.end5
  call void @Plan9toPlan7(%struct.plan9_s* %call7, %struct.plan7_s** %hmm) #6
  %call10 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8]* @.str59, i64 0, i64 0)) #6
  %5 = load %struct.plan7_s** %hmm, align 8, !tbaa !3
  %comlog = getelementptr inbounds %struct.plan7_s* %5, i64 0, i32 6
  store i8* %call10, i8** %comlog, align 8, !tbaa !3
  %6 = load %struct.plan7_s** %hmm, align 8, !tbaa !3
  call void @Plan7SetCtime(%struct.plan7_s* %6) #6
  %call11 = call i32 @P9FreeHMM(%struct.plan9_s* %call7) #6
  %7 = load %struct.plan7_s** %hmm, align 8, !tbaa !3
  store %struct.plan7_s* %7, %struct.plan7_s** %ret_hmm, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end9, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.end9 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_bin10hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  %magic = alloca i32, align 4
  %hmm = alloca %struct.plan7_s*, align 8
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0
  %0 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %magic to i8*
  %2 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call2 = call i64 @fread(i8* %1, i64 4, i64 1, %struct._IO_FILE* %2) #6
  %tobool3 = icmp eq i64 %call2, 0
  br i1 %tobool3, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %3 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %byteswap = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 4
  %4 = load i32* %byteswap, align 4, !tbaa !0
  %call7 = call fastcc %struct.plan9_s* @read_plan9_binhmm(%struct._IO_FILE* %3, i32 1, i32 %4) #8
  %cmp = icmp eq %struct.plan9_s* %call7, null
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store %struct.plan7_s* null, %struct.plan7_s** %ret_hmm, align 8, !tbaa !3
  br label %return

if.end9:                                          ; preds = %if.end5
  call void @Plan9toPlan7(%struct.plan9_s* %call7, %struct.plan7_s** %hmm) #6
  %call10 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8]* @.str59, i64 0, i64 0)) #6
  %5 = load %struct.plan7_s** %hmm, align 8, !tbaa !3
  %comlog = getelementptr inbounds %struct.plan7_s* %5, i64 0, i32 6
  store i8* %call10, i8** %comlog, align 8, !tbaa !3
  %6 = load %struct.plan7_s** %hmm, align 8, !tbaa !3
  call void @Plan7SetCtime(%struct.plan7_s* %6) #6
  %call11 = call i32 @P9FreeHMM(%struct.plan9_s* %call7) #6
  %7 = load %struct.plan7_s** %hmm, align 8, !tbaa !3
  store %struct.plan7_s* %7, %struct.plan7_s** %ret_hmm, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end9, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 1, %if.end9 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @Warn(i8*, ...) #2

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_asc20hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  %buffer = alloca [512 x i8], align 16
  %0 = getelementptr inbounds [512 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 512, i8* %0) #1
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0
  %1 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call = call i32 @feof(%struct._IO_FILE* %1) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call2 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %2) #6
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call4 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i64 8) #7
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.end7, label %if.end617

if.end7:                                          ; preds = %if.end
  %call8 = call %struct.plan7_s* @AllocPlan7Shell() #6
  %3 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call11782 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %3) #6
  %cmp12783 = icmp eq i8* %call11782, null
  br i1 %cmp12783, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end7
  %add.ptr = getelementptr inbounds [512 x i8]* %buffer, i64 0, i64 6
  %nseq = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 7
  %flags = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 47
  %comlog = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 6
  %ctime = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 8
  %ga1 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 14
  %ga2 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 15
  %tc1 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 16
  %tc2 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 17
  %nc1 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 18
  %nc2 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 19
  %p1 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 29
  %mu = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 45
  %lambda = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 46
  %checksum = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 10
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %M.0784 = phi i32 [ -1, %while.body.lr.ph ], [ %M.0.be, %while.cond.backedge ]
  %call14 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str72, i64 0, i64 0), i64 5) #7
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %while.body
  call void @Plan7SetName(%struct.plan7_s* %call8, i8* %add.ptr) #6
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  %call19 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str73, i64 0, i64 0), i64 5) #7
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.else
  call void @Plan7SetAccession(%struct.plan7_s* %call8, i8* %add.ptr) #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.inc263, %if.end299, %if.end310, %if.then21, %if.then35, %if.then72, %if.then69, %if.then101, %if.then94, %if.else136, %if.then131, %if.end183, %if.end231, %if.end284, %if.end343, %if.else355, %if.then351, %if.end207, %if.then158, %if.then110, %if.then117, %if.then81, %if.then87, %if.then43, %if.then28, %if.then16, %if.else70
  %M.0.be = phi i32 [ %M.0784, %if.then16 ], [ %M.0784, %if.then21 ], [ %M.0784, %if.then28 ], [ %call38, %if.then35 ], [ %M.0784, %if.then43 ], [ %M.0784, %if.then69 ], [ %M.0784, %if.then72 ], [ %M.0784, %if.else70 ], [ %M.0784, %if.then87 ], [ %M.0784, %if.then81 ], [ %M.0784, %if.then101 ], [ %M.0784, %if.then94 ], [ %M.0784, %if.then117 ], [ %M.0784, %if.then110 ], [ %M.0784, %if.then131 ], [ %M.0784, %if.else136 ], [ %M.0784, %if.then158 ], [ %M.0784, %if.end183 ], [ %M.0784, %if.end207 ], [ %M.0784, %if.end231 ], [ %M.0784, %if.end284 ], [ %M.0784, %if.end343 ], [ %M.0784, %if.then351 ], [ %M.0784, %if.else355 ], [ %M.0784, %if.end310 ], [ %M.0784, %if.end299 ], [ %M.0784, %for.inc263 ]
  %4 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call11 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %4) #6
  %cmp12 = icmp eq i8* %call11, null
  br i1 %cmp12, label %while.end, label %while.body

if.else24:                                        ; preds = %if.else
  %call26 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str74, i64 0, i64 0), i64 5) #7
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.else31

if.then28:                                        ; preds = %if.else24
  call void @Plan7SetDescription(%struct.plan7_s* %call8, i8* %add.ptr) #6
  br label %while.cond.backedge

if.else31:                                        ; preds = %if.else24
  %call33 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str75, i64 0, i64 0), i64 5) #7
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.else39

if.then35:                                        ; preds = %if.else31
  %call38 = call i32 @atoi(i8* %add.ptr) #7
  br label %while.cond.backedge

if.else39:                                        ; preds = %if.else31
  %call41 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str76, i64 0, i64 0), i64 5) #7
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.else47

if.then43:                                        ; preds = %if.else39
  %call46 = call i32 @atoi(i8* %add.ptr) #7
  store i32 %call46, i32* %nseq, align 4, !tbaa !0
  br label %while.cond.backedge

if.else47:                                        ; preds = %if.else39
  %call49 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str77, i64 0, i64 0), i64 5) #7
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.else77

if.then51:                                        ; preds = %if.else47
  call void @s2upper(i8* %add.ptr) #6
  %call56 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([6 x i8]* @.str69, i64 0, i64 0), i64 5) #7
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.end67, label %if.else59

if.else59:                                        ; preds = %if.then51
  %call62 = call i32 @strncmp(i8* %add.ptr, i8* getelementptr inbounds ([8 x i8]* @.str70, i64 0, i64 0), i64 7) #7
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.end67, label %FAILURE

if.end67:                                         ; preds = %if.else59, %if.then51
  %atype.0 = phi i32 [ 3, %if.then51 ], [ 2, %if.else59 ]
  %5 = load i32* @Alphabet_type, align 4, !tbaa !0
  %cmp68 = icmp eq i32 %5, 0
  br i1 %cmp68, label %if.then69, label %if.else70

if.then69:                                        ; preds = %if.end67
  call void @SetAlphabet(i32 %atype.0) #6
  br label %while.cond.backedge

if.else70:                                        ; preds = %if.end67
  %cmp71 = icmp eq i32 %atype.0, %5
  br i1 %cmp71, label %while.cond.backedge, label %if.then72

if.then72:                                        ; preds = %if.else70
  %call73 = call i8* @AlphabetType2String(i32 %5) #6
  %call74 = call i8* @AlphabetType2String(i32 %atype.0) #6
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([89 x i8]* @.str61, i64 0, i64 0), i8* %call73, i8* %call74) #6
  br label %while.cond.backedge

if.else77:                                        ; preds = %if.else47
  %call79 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str78, i64 0, i64 0), i64 5) #7
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %if.then81, label %if.else89

if.then81:                                        ; preds = %if.else77
  %6 = load i8* %add.ptr, align 2, !tbaa !1
  %conv = sext i8 %6 to i32
  %call84 = call i32 @sre_toupper(i32 %conv) #6
  %cmp85 = icmp eq i32 %call84, 89
  br i1 %cmp85, label %if.then87, label %while.cond.backedge

if.then87:                                        ; preds = %if.then81
  %7 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %7, 4
  store i32 %or, i32* %flags, align 4, !tbaa !0
  br label %while.cond.backedge

if.else89:                                        ; preds = %if.else77
  %call91 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str79, i64 0, i64 0), i64 5) #7
  %cmp92 = icmp eq i32 %call91, 0
  br i1 %cmp92, label %if.then94, label %if.else105

if.then94:                                        ; preds = %if.else89
  %8 = load i8* %add.ptr, align 2, !tbaa !1
  %conv97 = sext i8 %8 to i32
  %call98 = call i32 @sre_toupper(i32 %conv97) #6
  %cmp99 = icmp eq i32 %call98, 89
  br i1 %cmp99, label %if.then101, label %while.cond.backedge

if.then101:                                       ; preds = %if.then94
  %9 = load i32* %flags, align 4, !tbaa !0
  %or103 = or i32 %9, 8
  store i32 %or103, i32* %flags, align 4, !tbaa !0
  br label %while.cond.backedge

if.else105:                                       ; preds = %if.else89
  %call107 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str80, i64 0, i64 0), i64 5) #7
  %cmp108 = icmp eq i32 %call107, 0
  br i1 %cmp108, label %if.then110, label %if.else121

if.then110:                                       ; preds = %if.else105
  %10 = load i8* %add.ptr, align 2, !tbaa !1
  %conv113 = sext i8 %10 to i32
  %call114 = call i32 @sre_toupper(i32 %conv113) #6
  %cmp115 = icmp eq i32 %call114, 89
  br i1 %cmp115, label %if.then117, label %while.cond.backedge

if.then117:                                       ; preds = %if.then110
  %11 = load i32* %flags, align 4, !tbaa !0
  %or119 = or i32 %11, 256
  store i32 %or119, i32* %flags, align 4, !tbaa !0
  br label %while.cond.backedge

if.else121:                                       ; preds = %if.else105
  %call123 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0), i64 5) #7
  %cmp124 = icmp eq i32 %call123, 0
  br i1 %cmp124, label %if.then126, label %if.else153

if.then126:                                       ; preds = %if.else121
  call void @StringChop(i8* %add.ptr) #6
  %12 = load i8** %comlog, align 8, !tbaa !3
  %cmp129 = icmp eq i8* %12, null
  br i1 %cmp129, label %if.then131, label %if.else136

if.then131:                                       ; preds = %if.then126
  %call134 = call i8* @Strdup(i8* %add.ptr) #6
  store i8* %call134, i8** %comlog, align 8, !tbaa !3
  br label %while.cond.backedge

if.else136:                                       ; preds = %if.then126
  %call139 = call i64 @strlen(i8* %12) #7
  %add = add i64 %call139, 1
  %call142 = call i64 @strlen(i8* %add.ptr) #7
  %add143 = add i64 %add, %call142
  %mul = shl i64 %add143, 3
  %call144 = call i8* @sre_realloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 624, i8* %12, i64 %mul) #6
  store i8* %call144, i8** %comlog, align 8, !tbaa !3
  %strlen = call i64 @strlen(i8* %call144)
  %endptr = getelementptr i8* %call144, i64 %strlen
  %13 = bitcast i8* %endptr to i16*
  store i16 10, i16* %13, align 1
  %14 = load i8** %comlog, align 8, !tbaa !3
  %call151 = call i8* @strcat(i8* %14, i8* %add.ptr) #6
  br label %while.cond.backedge

if.else153:                                       ; preds = %if.else121
  %call155 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str82, i64 0, i64 0), i64 5) #7
  %cmp156 = icmp eq i32 %call155, 0
  br i1 %cmp156, label %if.then158, label %if.else164

if.then158:                                       ; preds = %if.else153
  call void @StringChop(i8* %add.ptr) #6
  %call163 = call i8* @Strdup(i8* %add.ptr) #6
  store i8* %call163, i8** %ctime, align 8, !tbaa !3
  br label %while.cond.backedge

if.else164:                                       ; preds = %if.else153
  %call166 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str83, i64 0, i64 0), i64 5) #7
  %cmp167 = icmp eq i32 %call166, 0
  br i1 %cmp167, label %if.then169, label %if.else188

if.then169:                                       ; preds = %if.else164
  %call172 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp173 = icmp eq i8* %call172, null
  br i1 %cmp173, label %FAILURE, label %if.end176

if.end176:                                        ; preds = %if.then169
  %call177 = call double @atof(i8* %call172) #7
  %conv178 = fptrunc double %call177 to float
  store float %conv178, float* %ga1, align 4, !tbaa !4
  %call179 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp180 = icmp eq i8* %call179, null
  br i1 %cmp180, label %FAILURE, label %if.end183

if.end183:                                        ; preds = %if.end176
  %call184 = call double @atof(i8* %call179) #7
  %conv185 = fptrunc double %call184 to float
  store float %conv185, float* %ga2, align 4, !tbaa !4
  %15 = load i32* %flags, align 4, !tbaa !0
  %or187 = or i32 %15, 1024
  store i32 %or187, i32* %flags, align 4, !tbaa !0
  br label %while.cond.backedge

if.else188:                                       ; preds = %if.else164
  %call190 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str84, i64 0, i64 0), i64 5) #7
  %cmp191 = icmp eq i32 %call190, 0
  br i1 %cmp191, label %if.then193, label %if.else212

if.then193:                                       ; preds = %if.else188
  %call196 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp197 = icmp eq i8* %call196, null
  br i1 %cmp197, label %FAILURE, label %if.end200

if.end200:                                        ; preds = %if.then193
  %call201 = call double @atof(i8* %call196) #7
  %conv202 = fptrunc double %call201 to float
  store float %conv202, float* %tc1, align 4, !tbaa !4
  %call203 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp204 = icmp eq i8* %call203, null
  br i1 %cmp204, label %FAILURE, label %if.end207

if.end207:                                        ; preds = %if.end200
  %call208 = call double @atof(i8* %call203) #7
  %conv209 = fptrunc double %call208 to float
  store float %conv209, float* %tc2, align 4, !tbaa !4
  %16 = load i32* %flags, align 4, !tbaa !0
  %or211 = or i32 %16, 2048
  store i32 %or211, i32* %flags, align 4, !tbaa !0
  br label %while.cond.backedge

if.else212:                                       ; preds = %if.else188
  %call214 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str85, i64 0, i64 0), i64 5) #7
  %cmp215 = icmp eq i32 %call214, 0
  br i1 %cmp215, label %if.then217, label %if.else236

if.then217:                                       ; preds = %if.else212
  %call220 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp221 = icmp eq i8* %call220, null
  br i1 %cmp221, label %FAILURE, label %if.end224

if.end224:                                        ; preds = %if.then217
  %call225 = call double @atof(i8* %call220) #7
  %conv226 = fptrunc double %call225 to float
  store float %conv226, float* %nc1, align 4, !tbaa !4
  %call227 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp228 = icmp eq i8* %call227, null
  br i1 %cmp228, label %FAILURE, label %if.end231

if.end231:                                        ; preds = %if.end224
  %call232 = call double @atof(i8* %call227) #7
  %conv233 = fptrunc double %call232 to float
  store float %conv233, float* %nc2, align 4, !tbaa !4
  %17 = load i32* %flags, align 4, !tbaa !0
  %or235 = or i32 %17, 4096
  store i32 %or235, i32* %flags, align 4, !tbaa !0
  br label %while.cond.backedge

if.else236:                                       ; preds = %if.else212
  %call238 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str86, i64 0, i64 0), i64 5) #7
  %cmp239 = icmp eq i32 %call238, 0
  br i1 %cmp239, label %if.then241, label %if.else266

if.then241:                                       ; preds = %if.else236
  %call244 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp245 = icmp eq i8* %call244, null
  br i1 %cmp245, label %FAILURE, label %for.cond251.preheader

for.cond251.preheader:                            ; preds = %if.then241, %for.inc263
  %indvars.iv795 = phi i64 [ %indvars.iv.next796, %for.inc263 ], [ 0, %if.then241 ]
  %s.0776 = phi i8* [ %call262, %for.inc263 ], [ %call244, %if.then241 ]
  br label %for.body254

for.body254:                                      ; preds = %for.cond251.preheader, %if.end258
  %indvars.iv793 = phi i64 [ 0, %for.cond251.preheader ], [ %indvars.iv.next794, %if.end258 ]
  %s.1773 = phi i8* [ %s.0776, %for.cond251.preheader ], [ %call262, %if.end258 ]
  %cmp255 = icmp eq i8* %s.1773, null
  br i1 %cmp255, label %FAILURE, label %if.end258

if.end258:                                        ; preds = %for.body254
  %call259 = call fastcc float @ascii2prob(i8* %s.1773, float 1.000000e+00) #8
  %arrayidx261 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 25, i64 %indvars.iv795, i64 %indvars.iv793
  store float %call259, float* %arrayidx261, align 4, !tbaa !4
  %call262 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %indvars.iv.next794 = add i64 %indvars.iv793, 1
  %18 = trunc i64 %indvars.iv.next794 to i32
  %cmp252 = icmp slt i32 %18, 2
  br i1 %cmp252, label %for.body254, label %for.inc263

for.inc263:                                       ; preds = %if.end258
  %indvars.iv.next796 = add i64 %indvars.iv795, 1
  %19 = trunc i64 %indvars.iv.next796 to i32
  %cmp249 = icmp slt i32 %19, 4
  br i1 %cmp249, label %for.cond251.preheader, label %while.cond.backedge

if.else266:                                       ; preds = %if.else236
  %call268 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str87, i64 0, i64 0), i64 5) #7
  %cmp269 = icmp eq i32 %call268, 0
  br i1 %cmp269, label %if.then271, label %if.else290

if.then271:                                       ; preds = %if.else266
  %call274 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp275 = icmp eq i8* %call274, null
  br i1 %cmp275, label %FAILURE, label %if.end278

if.end278:                                        ; preds = %if.then271
  %call279 = call fastcc float @ascii2prob(i8* %call274, float 1.000000e+00) #8
  store float %call279, float* %p1, align 4, !tbaa !4
  %call280 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp281 = icmp eq i8* %call280, null
  br i1 %cmp281, label %FAILURE, label %if.end284

if.end284:                                        ; preds = %if.end278
  %20 = load float* %p1, align 4, !tbaa !4
  %call287 = call fastcc float @ascii2prob(i8* %call280, float 1.000000e+00) #8
  %add288 = fadd float %20, %call287
  %div = fdiv float %20, %add288
  store float %div, float* %p1, align 4, !tbaa !4
  br label %while.cond.backedge

if.else290:                                       ; preds = %if.else266
  %call292 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str88, i64 0, i64 0), i64 5) #7
  %cmp293 = icmp eq i32 %call292, 0
  br i1 %cmp293, label %if.then295, label %if.else322

if.then295:                                       ; preds = %if.else290
  %21 = load i32* @Alphabet_type, align 4, !tbaa !0
  %cmp296 = icmp eq i32 %21, 0
  br i1 %cmp296, label %if.then298, label %if.end299

if.then298:                                       ; preds = %if.then295
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([41 x i8]* @.str89, i64 0, i64 0)) #6
  br label %if.end299

if.end299:                                        ; preds = %if.then298, %if.then295
  %call302 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %22 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp304768 = icmp sgt i32 %22, 0
  br i1 %cmp304768, label %for.body306, label %while.cond.backedge

for.body306:                                      ; preds = %if.end299, %if.end310
  %indvars.iv791 = phi i64 [ %indvars.iv.next792, %if.end310 ], [ 0, %if.end299 ]
  %23 = phi i32 [ %24, %if.end310 ], [ %22, %if.end299 ]
  %s.2769 = phi i8* [ %call318, %if.end310 ], [ %call302, %if.end299 ]
  %cmp307 = icmp eq i8* %s.2769, null
  br i1 %cmp307, label %FAILURE, label %if.end310

if.end310:                                        ; preds = %for.body306
  %conv311 = sitofp i32 %23 to float
  %conv314 = fdiv float 1.000000e+00, %conv311
  %call315 = call fastcc float @ascii2prob(i8* %s.2769, float %conv314) #8
  %arrayidx317 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 28, i64 %indvars.iv791
  store float %call315, float* %arrayidx317, align 4, !tbaa !4
  %call318 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %indvars.iv.next792 = add i64 %indvars.iv791, 1
  %24 = load i32* @Alphabet_size, align 4, !tbaa !0
  %25 = trunc i64 %indvars.iv.next792 to i32
  %cmp304 = icmp slt i32 %25, %24
  br i1 %cmp304, label %for.body306, label %while.cond.backedge

if.else322:                                       ; preds = %if.else290
  %call324 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str90, i64 0, i64 0), i64 5) #7
  %cmp325 = icmp eq i32 %call324, 0
  br i1 %cmp325, label %if.then327, label %if.else346

if.then327:                                       ; preds = %if.else322
  %26 = load i32* %flags, align 4, !tbaa !0
  %or329 = or i32 %26, 128
  store i32 %or329, i32* %flags, align 4, !tbaa !0
  %call332 = call i8* @strtok(i8* %add.ptr, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp333 = icmp eq i8* %call332, null
  br i1 %cmp333, label %FAILURE, label %if.end336

if.end336:                                        ; preds = %if.then327
  %call337 = call double @atof(i8* %call332) #7
  %conv338 = fptrunc double %call337 to float
  store float %conv338, float* %mu, align 4, !tbaa !4
  %call339 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp340 = icmp eq i8* %call339, null
  br i1 %cmp340, label %FAILURE, label %if.end343

if.end343:                                        ; preds = %if.end336
  %call344 = call double @atof(i8* %call339) #7
  %conv345 = fptrunc double %call344 to float
  store float %conv345, float* %lambda, align 4, !tbaa !4
  br label %while.cond.backedge

if.else346:                                       ; preds = %if.else322
  %call348 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str91, i64 0, i64 0), i64 5) #7
  %cmp349 = icmp eq i32 %call348, 0
  br i1 %cmp349, label %if.then351, label %if.else355

if.then351:                                       ; preds = %if.else346
  %call354 = call i32 @atoi(i8* %add.ptr) #7
  store i32 %call354, i32* %checksum, align 4, !tbaa !0
  br label %while.cond.backedge

if.else355:                                       ; preds = %if.else346
  %call357 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str92, i64 0, i64 0), i64 5) #7
  %cmp358 = icmp eq i32 %call357, 0
  br i1 %cmp358, label %while.end, label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge, %if.else355, %if.end7
  %M.0.lcssa = phi i32 [ -1, %if.end7 ], [ %M.0784, %if.else355 ], [ %M.0.be, %while.cond.backedge ]
  %27 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call382 = call i32 @feof(%struct._IO_FILE* %27) #6
  %tobool383 = icmp ne i32 %call382, 0
  %cmp386 = icmp slt i32 %M.0.lcssa, 1
  %or.cond746 = or i1 %tobool383, %cmp386
  br i1 %or.cond746, label %FAILURE, label %if.end389

if.end389:                                        ; preds = %while.end
  %name = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 0
  %28 = load i8** %name, align 8, !tbaa !3
  %cmp390 = icmp eq i8* %28, null
  %29 = load i32* @Alphabet_type, align 4, !tbaa !0
  %cmp394 = icmp eq i32 %29, 0
  %or.cond = or i1 %cmp390, %cmp394
  br i1 %or.cond, label %if.then616, label %if.end397

if.end397:                                        ; preds = %if.end389
  call void @AllocPlan7Body(%struct.plan7_s* %call8, i32 %M.0.lcssa) #6
  %30 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call400 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %30) #6
  %cmp401 = icmp eq i8* %call400, null
  br i1 %cmp401, label %if.then616, label %if.end404

if.end404:                                        ; preds = %if.end397
  %31 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call407 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %31) #6
  %cmp408 = icmp eq i8* %call407, null
  br i1 %cmp408, label %if.then616, label %if.end411

if.end411:                                        ; preds = %if.end404
  %call413 = call i8* @strtok(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp414 = icmp eq i8* %call413, null
  br i1 %cmp414, label %if.then616, label %if.end417

if.end417:                                        ; preds = %if.end411
  %call418 = call fastcc float @ascii2prob(i8* %call413, float 1.000000e+00) #8
  %call419 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp420 = icmp eq i8* %call419, null
  br i1 %cmp420, label %if.then616, label %if.end423

if.end423:                                        ; preds = %if.end417
  %call424 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp425 = icmp eq i8* %call424, null
  br i1 %cmp425, label %if.then616, label %if.end428

if.end428:                                        ; preds = %if.end423
  %call429 = call fastcc float @ascii2prob(i8* %call424, float 1.000000e+00) #8
  %tbd1 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 24
  %add432 = fadd float %call418, %call429
  %div433 = fdiv float %call429, %add432
  store float %div433, float* %tbd1, align 4, !tbaa !4
  %M436 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 20
  %32 = load i32* %M436, align 4, !tbaa !0
  %cmp437765 = icmp slt i32 %32, 1
  br i1 %cmp437765, label %while.cond596, label %for.body439.lr.ph

for.body439.lr.ph:                                ; preds = %if.end428
  %flags478 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 47
  %cs = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 4
  %t = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 21
  %begin = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 26
  %end = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 27
  %ins = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 23
  %rf = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 3
  %map = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 9
  %mat = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 22
  br label %for.body439

for.body439:                                      ; preds = %if.end589, %for.body439.lr.ph
  %indvars.iv789 = phi i64 [ %indvars.iv.next790, %if.end589 ], [ 1, %for.body439.lr.ph ]
  %33 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call442 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %33) #6
  %cmp443 = icmp eq i8* %call442, null
  br i1 %cmp443, label %FAILURE, label %if.end446

if.end446:                                        ; preds = %for.body439
  %call448 = call i8* @strtok(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp449 = icmp eq i8* %call448, null
  br i1 %cmp449, label %FAILURE, label %if.end452

if.end452:                                        ; preds = %if.end446
  %call453 = call i32 @atoi(i8* %call448) #7
  %34 = trunc i64 %indvars.iv789 to i32
  %cmp454 = icmp eq i32 %call453, %34
  br i1 %cmp454, label %for.cond458.preheader, label %FAILURE

for.cond458.preheader:                            ; preds = %if.end452
  %35 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp459751 = icmp sgt i32 %35, 0
  br i1 %cmp459751, label %for.body461, label %for.end477

for.body461:                                      ; preds = %for.cond458.preheader, %if.end466
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end466 ], [ 0, %for.cond458.preheader ]
  %call462 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp463 = icmp eq i8* %call462, null
  br i1 %cmp463, label %FAILURE, label %if.end466

if.end466:                                        ; preds = %for.body461
  %arrayidx469 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 28, i64 %indvars.iv
  %36 = load float* %arrayidx469, align 4, !tbaa !4
  %call470 = call fastcc float @ascii2prob(i8* %call462, float %36) #8
  %37 = load float*** %mat, align 8, !tbaa !3
  %arrayidx473 = getelementptr inbounds float** %37, i64 %indvars.iv789
  %38 = load float** %arrayidx473, align 8, !tbaa !3
  %arrayidx474 = getelementptr inbounds float* %38, i64 %indvars.iv
  store float %call470, float* %arrayidx474, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %39 = load i32* @Alphabet_size, align 4, !tbaa !0
  %40 = trunc i64 %indvars.iv.next to i32
  %cmp459 = icmp slt i32 %40, %39
  br i1 %cmp459, label %for.body461, label %for.end477

for.end477:                                       ; preds = %if.end466, %for.cond458.preheader
  %41 = load i32* %flags478, align 4, !tbaa !0
  %and = and i32 %41, 256
  %tobool479 = icmp eq i32 %and, 0
  br i1 %tobool479, label %if.end489, label %if.then480

if.then480:                                       ; preds = %for.end477
  %call481 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp482 = icmp eq i8* %call481, null
  br i1 %cmp482, label %FAILURE, label %if.end485

if.end485:                                        ; preds = %if.then480
  %call486 = call i32 @atoi(i8* %call481) #7
  %42 = load i32** %map, align 8, !tbaa !3
  %arrayidx488 = getelementptr inbounds i32* %42, i64 %indvars.iv789
  store i32 %call486, i32* %arrayidx488, align 4, !tbaa !0
  br label %if.end489

if.end489:                                        ; preds = %for.end477, %if.end485
  %43 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call492 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %43) #6
  %cmp493 = icmp eq i8* %call492, null
  br i1 %cmp493, label %FAILURE, label %if.end496

if.end496:                                        ; preds = %if.end489
  %call498 = call i8* @strtok(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp499 = icmp eq i8* %call498, null
  br i1 %cmp499, label %FAILURE, label %if.end502

if.end502:                                        ; preds = %if.end496
  %44 = load i32* %flags478, align 4, !tbaa !0
  %and504 = and i32 %44, 4
  %tobool505 = icmp eq i32 %and504, 0
  br i1 %tobool505, label %if.end509, label %if.then506

if.then506:                                       ; preds = %if.end502
  %45 = load i8* %call498, align 1, !tbaa !1
  %46 = load i8** %rf, align 8, !tbaa !3
  %arrayidx508 = getelementptr inbounds i8* %46, i64 %indvars.iv789
  store i8 %45, i8* %arrayidx508, align 1, !tbaa !1
  br label %if.end509

if.end509:                                        ; preds = %if.end502, %if.then506
  %47 = load i32* %M436, align 4, !tbaa !0
  %cmp511 = icmp slt i32 %call453, %47
  %48 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp515754 = icmp sgt i32 %48, 0
  %or.cond801 = and i1 %cmp511, %cmp515754
  br i1 %or.cond801, label %for.body517, label %if.end534

for.body517:                                      ; preds = %if.end509, %if.end522
  %indvars.iv785 = phi i64 [ %indvars.iv.next786, %if.end522 ], [ 0, %if.end509 ]
  %call518 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp519 = icmp eq i8* %call518, null
  br i1 %cmp519, label %FAILURE, label %if.end522

if.end522:                                        ; preds = %for.body517
  %arrayidx525 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 28, i64 %indvars.iv785
  %49 = load float* %arrayidx525, align 4, !tbaa !4
  %call526 = call fastcc float @ascii2prob(i8* %call518, float %49) #8
  %50 = load float*** %ins, align 8, !tbaa !3
  %arrayidx529 = getelementptr inbounds float** %50, i64 %indvars.iv789
  %51 = load float** %arrayidx529, align 8, !tbaa !3
  %arrayidx530 = getelementptr inbounds float* %51, i64 %indvars.iv785
  store float %call526, float* %arrayidx530, align 4, !tbaa !4
  %indvars.iv.next786 = add i64 %indvars.iv785, 1
  %52 = load i32* @Alphabet_size, align 4, !tbaa !0
  %53 = trunc i64 %indvars.iv.next786 to i32
  %cmp515 = icmp slt i32 %53, %52
  br i1 %cmp515, label %for.body517, label %if.end534

if.end534:                                        ; preds = %if.end522, %if.end509
  %54 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call537 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %54) #6
  %cmp538 = icmp eq i8* %call537, null
  br i1 %cmp538, label %FAILURE, label %if.end541

if.end541:                                        ; preds = %if.end534
  %call543 = call i8* @strtok(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp544 = icmp eq i8* %call543, null
  br i1 %cmp544, label %FAILURE, label %if.end547

if.end547:                                        ; preds = %if.end541
  %55 = load i32* %flags478, align 4, !tbaa !0
  %and549 = and i32 %55, 8
  %tobool550 = icmp eq i32 %and549, 0
  br i1 %tobool550, label %for.cond555.preheader, label %if.then551

if.then551:                                       ; preds = %if.end547
  %56 = load i8* %call543, align 1, !tbaa !1
  %57 = load i8** %cs, align 8, !tbaa !3
  %arrayidx553 = getelementptr inbounds i8* %57, i64 %indvars.iv789
  store i8 %56, i8* %arrayidx553, align 1, !tbaa !1
  br label %for.cond555.preheader

for.cond555.preheader:                            ; preds = %if.end547, %if.then551
  %call559759 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp560760 = icmp eq i8* %call559759, null
  br label %for.body558

for.body558:                                      ; preds = %for.cond555.preheader, %for.inc574
  %indvars.iv787 = phi i64 [ 0, %for.cond555.preheader ], [ %indvars.iv.next788, %for.inc574 ]
  %cmp560763 = phi i1 [ %cmp560760, %for.cond555.preheader ], [ %cmp560, %for.inc574 ]
  %call559762 = phi i8* [ %call559759, %for.cond555.preheader ], [ %call559, %for.inc574 ]
  br i1 %cmp560763, label %FAILURE, label %if.end563

if.end563:                                        ; preds = %for.body558
  %58 = load i32* %M436, align 4, !tbaa !0
  %cmp565 = icmp slt i32 %call453, %58
  br i1 %cmp565, label %if.then567, label %for.inc574

if.then567:                                       ; preds = %if.end563
  %call568 = call fastcc float @ascii2prob(i8* %call559762, float 1.000000e+00) #8
  %59 = load float*** %t, align 8, !tbaa !3
  %arrayidx571 = getelementptr inbounds float** %59, i64 %indvars.iv789
  %60 = load float** %arrayidx571, align 8, !tbaa !3
  %arrayidx572 = getelementptr inbounds float* %60, i64 %indvars.iv787
  store float %call568, float* %arrayidx572, align 4, !tbaa !4
  br label %for.inc574

for.inc574:                                       ; preds = %if.end563, %if.then567
  %indvars.iv.next788 = add i64 %indvars.iv787, 1
  %61 = trunc i64 %indvars.iv.next788 to i32
  %cmp556 = icmp slt i32 %61, 7
  %call559 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp560 = icmp eq i8* %call559, null
  br i1 %cmp556, label %for.body558, label %for.end576

for.end576:                                       ; preds = %for.inc574
  br i1 %cmp560, label %FAILURE, label %if.end581

if.end581:                                        ; preds = %for.end576
  %call582 = call fastcc float @ascii2prob(i8* %call559, float 1.000000e+00) #8
  %62 = load float** %begin, align 8, !tbaa !3
  %arrayidx584 = getelementptr inbounds float* %62, i64 %indvars.iv789
  store float %call582, float* %arrayidx584, align 4, !tbaa !4
  %call585 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp586 = icmp eq i8* %call585, null
  br i1 %cmp586, label %FAILURE, label %if.end589

if.end589:                                        ; preds = %if.end581
  %call590 = call fastcc float @ascii2prob(i8* %call585, float 1.000000e+00) #8
  %63 = load float** %end, align 8, !tbaa !3
  %arrayidx592 = getelementptr inbounds float* %63, i64 %indvars.iv789
  store float %call590, float* %arrayidx592, align 4, !tbaa !4
  %indvars.iv.next790 = add i64 %indvars.iv789, 1
  %64 = load i32* %M436, align 4, !tbaa !0
  %cmp437 = icmp slt i32 %call453, %64
  br i1 %cmp437, label %for.body439, label %while.cond596

while.cond596:                                    ; preds = %if.end428, %if.end589, %while.body602
  %65 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call599 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %65) #6
  %cmp600 = icmp eq i8* %call599, null
  br i1 %cmp600, label %while.end609, label %while.body602

while.body602:                                    ; preds = %while.cond596
  %call604 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str93, i64 0, i64 0), i64 2) #7
  %cmp605 = icmp eq i32 %call604, 0
  br i1 %cmp605, label %while.end609, label %while.cond596

while.end609:                                     ; preds = %while.cond596, %while.body602
  call void @Plan7Renormalize(%struct.plan7_s* %call8) #6
  %flags610 = getelementptr inbounds %struct.plan7_s* %call8, i64 0, i32 47
  %66 = load i32* %flags610, align 4, !tbaa !0
  %or611 = and i32 %66, -34
  %and613 = or i32 %or611, 32
  store i32 %and613, i32* %flags610, align 4, !tbaa !0
  store %struct.plan7_s* %call8, %struct.plan7_s** %ret_hmm, align 8, !tbaa !3
  br label %cleanup

FAILURE:                                          ; preds = %if.end336, %if.then327, %if.end278, %if.then271, %if.then241, %if.end224, %if.then217, %if.end200, %if.then193, %if.end176, %if.then169, %if.else59, %for.body254, %for.body306, %if.end452, %if.end581, %for.end576, %if.end541, %if.end534, %if.end496, %if.end489, %if.then480, %if.end446, %for.body439, %for.body558, %for.body517, %for.body461, %while.end
  %cmp614 = icmp eq %struct.plan7_s* %call8, null
  br i1 %cmp614, label %if.end617, label %if.then616

if.then616:                                       ; preds = %if.end423, %if.end417, %if.end411, %if.end404, %if.end397, %if.end389, %FAILURE
  call void @FreePlan7(%struct.plan7_s* %call8) #6
  br label %if.end617

if.end617:                                        ; preds = %if.end, %FAILURE, %if.then616
  store %struct.plan7_s* null, %struct.plan7_s** %ret_hmm, align 8, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end617, %while.end609
  %retval.0 = phi i32 [ 1, %if.end617 ], [ 1, %while.end609 ], [ 0, %entry ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end(i64 512, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_asc19hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  %buffer = alloca [512 x i8], align 16
  %0 = getelementptr inbounds [512 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 512, i8* %0) #1
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0
  %1 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call = call i32 @feof(%struct._IO_FILE* %1) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %1) #6
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0), i64 10) #7
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.end6, label %if.end411

if.end6:                                          ; preds = %if.end
  %call7 = call %struct.plan7_s* @AllocPlan7Shell() #6
  %call8 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %FAILURE, label %if.end11

if.end11:                                         ; preds = %if.end6
  %call12 = call i32 @atoi(i8* %call8) #7
  %call13 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %FAILURE, label %if.end16

if.end16:                                         ; preds = %if.end11
  %call17 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #6
  %cmp18 = icmp eq i8* %call17, null
  br i1 %cmp18, label %FAILURE, label %if.end20

if.end20:                                         ; preds = %if.end16
  call void @Plan7SetName(%struct.plan7_s* %call7, i8* %call17) #6
  %call21 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #6
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %FAILURE, label %if.end24

if.end24:                                         ; preds = %if.end20
  call void @s2upper(i8* %call21) #6
  %call25 = call i32 @strcmp(i8* %call21, i8* getelementptr inbounds ([6 x i8]* @.str69, i64 0, i64 0)) #7
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.end33, label %if.else

if.else:                                          ; preds = %if.end24
  %call28 = call i32 @strcmp(i8* %call21, i8* getelementptr inbounds ([8 x i8]* @.str70, i64 0, i64 0)) #7
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.end33, label %FAILURE

if.end33:                                         ; preds = %if.else, %if.end24
  %atype.0 = phi i32 [ 3, %if.end24 ], [ 2, %if.else ]
  %2 = load i32* @Alphabet_type, align 4, !tbaa !0
  %cmp34 = icmp eq i32 %2, 0
  br i1 %cmp34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.end33
  call void @SetAlphabet(i32 %atype.0) #6
  br label %if.end42

if.else36:                                        ; preds = %if.end33
  %cmp37 = icmp eq i32 %atype.0, %2
  br i1 %cmp37, label %if.end42, label %if.then38

if.then38:                                        ; preds = %if.else36
  %call39 = call i8* @AlphabetType2String(i32 %2) #6
  %call40 = call i8* @AlphabetType2String(i32 %atype.0) #6
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([89 x i8]* @.str61, i64 0, i64 0), i8* %call39, i8* %call40) #6
  br label %if.end42

if.end42:                                         ; preds = %if.else36, %if.then38, %if.then35
  %call43 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #6
  %cmp44 = icmp eq i8* %call43, null
  br i1 %cmp44, label %FAILURE, label %if.end46

if.end46:                                         ; preds = %if.end42
  %3 = load i32* @Alphabet_size, align 4, !tbaa !0
  %conv = sext i32 %3 to i64
  %call47 = call i32 @strncmp(i8* %call43, i8* getelementptr inbounds ([25 x i8]* @Alphabet, i64 0, i64 0), i64 %conv) #7
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.end51, label %FAILURE

if.end51:                                         ; preds = %if.end46
  %call52 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #6
  %cmp53 = icmp eq i8* %call52, null
  br i1 %cmp53, label %FAILURE, label %if.end56

if.end56:                                         ; preds = %if.end51
  %call57 = call i32 @strcmp(i8* %call52, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #7
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end56
  %flags = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 47
  %4 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %4, 4
  store i32 %or, i32* %flags, align 4, !tbaa !0
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end56
  %call62 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #6
  %cmp63 = icmp eq i8* %call62, null
  br i1 %cmp63, label %FAILURE, label %if.end66

if.end66:                                         ; preds = %if.end61
  %call67 = call i32 @strcmp(i8* %call62, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0)) #7
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end66
  %flags71 = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 47
  %5 = load i32* %flags71, align 4, !tbaa !0
  %or72 = or i32 %5, 8
  store i32 %or72, i32* %flags71, align 4, !tbaa !0
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end66
  %call74 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #6
  %cmp75 = icmp eq i8* %call74, null
  br i1 %cmp75, label %FAILURE, label %if.end78

if.end78:                                         ; preds = %if.end73
  %call79 = call i32 @strcmp(i8* %call74, i8* getelementptr inbounds ([5 x i8]* @.str71, i64 0, i64 0)) #7
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %for.cond.preheader, label %FAILURE

for.cond.preheader:                               ; preds = %if.end78
  %6 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp84598 = icmp sgt i32 %6, 0
  br i1 %cmp84598, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %if.end90
  %indvars.iv610 = phi i64 [ %indvars.iv.next611, %if.end90 ], [ 0, %for.cond.preheader ]
  %call86 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp87 = icmp eq i8* %call86, null
  br i1 %cmp87, label %FAILURE, label %if.end90

if.end90:                                         ; preds = %for.body
  %call91 = call fastcc float @ascii2prob(i8* %call86, float 1.000000e+00) #8
  %arrayidx = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 28, i64 %indvars.iv610
  store float %call91, float* %arrayidx, align 4, !tbaa !4
  %indvars.iv.next611 = add i64 %indvars.iv610, 1
  %7 = load i32* @Alphabet_size, align 4, !tbaa !0
  %8 = trunc i64 %indvars.iv.next611 to i32
  %cmp84 = icmp slt i32 %8, %7
  br i1 %cmp84, label %for.body, label %for.end

for.end:                                          ; preds = %if.end90, %for.cond.preheader
  %9 = load i32* @Alphabet_type, align 4, !tbaa !0
  %cmp92 = icmp eq i32 %9, 3
  %conv94 = select i1 %cmp92, float 0x3FEFE8A940000000, float 0x3FEFF7D100000000
  %p1 = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 29
  store float %conv94, float* %p1, align 4, !tbaa !4
  %10 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call96 = call i32 @feof(%struct._IO_FILE* %10) #6
  %tobool97 = icmp ne i32 %call96, 0
  %cmp100 = icmp slt i32 %call12, 1
  %or.cond559 = or i1 %tobool97, %cmp100
  br i1 %or.cond559, label %if.then410, label %if.end103

if.end103:                                        ; preds = %for.end
  %name = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 0
  %11 = load i8** %name, align 8, !tbaa !3
  %cmp104 = icmp eq i8* %11, null
  %12 = load i32* @Alphabet_type, align 4, !tbaa !0
  %cmp108 = icmp eq i32 %12, 0
  %or.cond = or i1 %cmp104, %cmp108
  br i1 %or.cond, label %if.then410, label %if.end111

if.end111:                                        ; preds = %if.end103
  call void @AllocPlan7Body(%struct.plan7_s* %call7, i32 %call12) #6
  call void @ZeroPlan7(%struct.plan7_s* %call7) #6
  call void @Plan7LSConfig(%struct.plan7_s* %call7) #6
  %call112 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp113 = icmp eq i8* %call112, null
  br i1 %cmp113, label %if.then410, label %for.cond117.preheader

for.cond117.preheader:                            ; preds = %if.end111
  %13 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp118590 = icmp sgt i32 %13, 0
  %call121591 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp122592 = icmp eq i8* %call121591, null
  br i1 %cmp118590, label %for.body120, label %for.end128

for.cond117:                                      ; preds = %for.body120
  %14 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp118 = icmp slt i32 %inc127, %14
  %call121 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp122 = icmp eq i8* %call121, null
  br i1 %cmp118, label %for.body120, label %for.end128

for.body120:                                      ; preds = %for.cond117.preheader, %for.cond117
  %cmp122594 = phi i1 [ %cmp122, %for.cond117 ], [ %cmp122592, %for.cond117.preheader ]
  %x.1593 = phi i32 [ %inc127, %for.cond117 ], [ 0, %for.cond117.preheader ]
  %inc127 = add nsw i32 %x.1593, 1
  br i1 %cmp122594, label %FAILURE, label %for.cond117

for.end128:                                       ; preds = %for.cond117, %for.cond117.preheader
  %cmp122.lcssa = phi i1 [ %cmp122592, %for.cond117.preheader ], [ %cmp122, %for.cond117 ]
  %call121.lcssa = phi i8* [ %call121591, %for.cond117.preheader ], [ %call121, %for.cond117 ]
  br i1 %cmp122.lcssa, label %FAILURE, label %if.end133

if.end133:                                        ; preds = %for.end128
  %call134 = call fastcc float @ascii2prob(i8* %call121.lcssa, float 1.000000e+00) #8
  %begin = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 26
  %15 = load float** %begin, align 8, !tbaa !3
  %arrayidx135 = getelementptr inbounds float* %15, i64 1
  store float %call134, float* %arrayidx135, align 4, !tbaa !4
  %call136 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp137 = icmp eq i8* %call136, null
  br i1 %cmp137, label %if.then410, label %if.end140

if.end140:                                        ; preds = %if.end133
  %call141 = call fastcc float @ascii2prob(i8* %call136, float 1.000000e+00) #8
  %tbd1 = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 24
  store float %call141, float* %tbd1, align 4, !tbaa !4
  %16 = load float** %begin, align 8, !tbaa !3
  %arrayidx143 = getelementptr inbounds float* %16, i64 1
  %17 = load float* %arrayidx143, align 4, !tbaa !4
  %add = fadd float %call141, %17
  %div = fdiv float %17, %add
  store float %div, float* %arrayidx143, align 4, !tbaa !4
  %18 = load float* %tbd1, align 4, !tbaa !4
  %add153 = fadd float %18, %div
  %div154 = fdiv float %18, %add153
  store float %div154, float* %tbd1, align 4, !tbaa !4
  br label %for.body159

for.cond156:                                      ; preds = %for.body159
  %cmp157 = icmp slt i32 %inc166, 7
  br i1 %cmp157, label %for.body159, label %for.end167

for.body159:                                      ; preds = %if.end140, %for.cond156
  %x.2586 = phi i32 [ 0, %if.end140 ], [ %inc166, %for.cond156 ]
  %call160 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp161 = icmp eq i8* %call160, null
  %inc166 = add nsw i32 %x.2586, 1
  br i1 %cmp161, label %FAILURE, label %for.cond156

for.end167:                                       ; preds = %for.cond156
  %call168 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #6
  %cmp169 = icmp eq i8* %call168, null
  br i1 %cmp169, label %FAILURE, label %if.end172

if.end172:                                        ; preds = %for.end167
  %call173 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #6
  %cmp174 = icmp eq i8* %call173, null
  br i1 %cmp174, label %FAILURE, label %for.cond178.preheader

for.cond178.preheader:                            ; preds = %if.end172
  %M179 = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 20
  %19 = load i32* %M179, align 4, !tbaa !0
  %cmp180582 = icmp slt i32 %19, 1
  br i1 %cmp180582, label %for.cond363.preheader, label %for.body182.lr.ph

for.body182.lr.ph:                                ; preds = %for.cond178.preheader
  %t = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 21
  %flags342 = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 47
  %cs = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 4
  %rf = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 3
  %mat = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 22
  br label %for.body182

for.cond363.preheader:                            ; preds = %for.inc360, %for.cond178.preheader
  %20 = phi i32 [ %19, %for.cond178.preheader ], [ %55, %for.inc360 ]
  %cmp365567 = icmp slt i32 %20, 0
  br i1 %cmp365567, label %for.end402, label %for.body367.lr.ph

for.body367.lr.ph:                                ; preds = %for.cond363.preheader
  %ins = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 23
  br label %for.body367

for.body182:                                      ; preds = %for.inc360, %for.body182.lr.ph
  %indvars.iv606 = phi i64 [ %indvars.iv.next607, %for.inc360 ], [ 1, %for.body182.lr.ph ]
  %call183 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp184 = icmp eq i8* %call183, null
  br i1 %cmp184, label %FAILURE, label %for.cond188.preheader

for.cond188.preheader:                            ; preds = %for.body182
  %21 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp189572 = icmp sgt i32 %21, 0
  %call192573 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp193574 = icmp eq i8* %call192573, null
  br i1 %cmp189572, label %for.body191, label %for.end207

for.body191:                                      ; preds = %for.cond188.preheader, %if.end196
  %indvars.iv604 = phi i64 [ %indvars.iv.next605, %if.end196 ], [ 0, %for.cond188.preheader ]
  %cmp193577 = phi i1 [ %cmp193, %if.end196 ], [ %cmp193574, %for.cond188.preheader ]
  %call192576 = phi i8* [ %call192, %if.end196 ], [ %call192573, %for.cond188.preheader ]
  br i1 %cmp193577, label %FAILURE, label %if.end196

if.end196:                                        ; preds = %for.body191
  %arrayidx199 = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 28, i64 %indvars.iv604
  %22 = load float* %arrayidx199, align 4, !tbaa !4
  %call200 = call fastcc float @ascii2prob(i8* %call192576, float %22) #8
  %23 = load float*** %mat, align 8, !tbaa !3
  %arrayidx203 = getelementptr inbounds float** %23, i64 %indvars.iv606
  %24 = load float** %arrayidx203, align 8, !tbaa !3
  %arrayidx204 = getelementptr inbounds float* %24, i64 %indvars.iv604
  store float %call200, float* %arrayidx204, align 4, !tbaa !4
  %indvars.iv.next605 = add i64 %indvars.iv604, 1
  %25 = load i32* @Alphabet_size, align 4, !tbaa !0
  %26 = trunc i64 %indvars.iv.next605 to i32
  %cmp189 = icmp slt i32 %26, %25
  %call192 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp193 = icmp eq i8* %call192, null
  br i1 %cmp189, label %for.body191, label %for.end207

for.end207:                                       ; preds = %if.end196, %for.cond188.preheader
  %cmp193.lcssa = phi i1 [ %cmp193574, %for.cond188.preheader ], [ %cmp193, %if.end196 ]
  %call192.lcssa = phi i8* [ %call192573, %for.cond188.preheader ], [ %call192, %if.end196 ]
  br i1 %cmp193.lcssa, label %FAILURE, label %if.end212

if.end212:                                        ; preds = %for.end207
  %27 = load i32* %M179, align 4, !tbaa !0
  %28 = trunc i64 %indvars.iv606 to i32
  %cmp214 = icmp slt i32 %28, %27
  br i1 %cmp214, label %if.then216, label %if.end221

if.then216:                                       ; preds = %if.end212
  %call217 = call fastcc float @ascii2prob(i8* %call192.lcssa, float 1.000000e+00) #8
  %29 = load float*** %t, align 8, !tbaa !3
  %arrayidx219 = getelementptr inbounds float** %29, i64 %indvars.iv606
  %30 = load float** %arrayidx219, align 8, !tbaa !3
  store float %call217, float* %30, align 4, !tbaa !4
  br label %if.end221

if.end221:                                        ; preds = %if.then216, %if.end212
  %call222 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp223 = icmp eq i8* %call222, null
  br i1 %cmp223, label %FAILURE, label %if.end226

if.end226:                                        ; preds = %if.end221
  %31 = load i32* %M179, align 4, !tbaa !0
  %cmp228 = icmp slt i32 %28, %31
  br i1 %cmp228, label %if.then230, label %if.end242

if.then230:                                       ; preds = %if.end226
  %cmp232 = icmp eq i32 %28, %31
  br i1 %cmp232, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then230
  %call234 = call fastcc float @ascii2prob(i8* %call222, float 1.000000e+00) #8
  br label %cond.end

cond.end:                                         ; preds = %if.then230, %cond.false
  %cond236 = phi float [ %call234, %cond.false ], [ 0.000000e+00, %if.then230 ]
  %32 = load float*** %t, align 8, !tbaa !3
  %arrayidx240 = getelementptr inbounds float** %32, i64 %indvars.iv606
  %33 = load float** %arrayidx240, align 8, !tbaa !3
  %arrayidx241 = getelementptr inbounds float* %33, i64 2
  store float %cond236, float* %arrayidx241, align 4, !tbaa !4
  br label %if.end242

if.end242:                                        ; preds = %cond.end, %if.end226
  %call243 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp244 = icmp eq i8* %call243, null
  br i1 %cmp244, label %FAILURE, label %if.end247

if.end247:                                        ; preds = %if.end242
  %34 = load i32* %M179, align 4, !tbaa !0
  %cmp249 = icmp slt i32 %28, %34
  br i1 %cmp249, label %if.then251, label %if.end257

if.then251:                                       ; preds = %if.end247
  %call252 = call fastcc float @ascii2prob(i8* %call243, float 1.000000e+00) #8
  %35 = load float*** %t, align 8, !tbaa !3
  %arrayidx255 = getelementptr inbounds float** %35, i64 %indvars.iv606
  %36 = load float** %arrayidx255, align 8, !tbaa !3
  %arrayidx256 = getelementptr inbounds float* %36, i64 1
  store float %call252, float* %arrayidx256, align 4, !tbaa !4
  br label %if.end257

if.end257:                                        ; preds = %if.then251, %if.end247
  %call258 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp259 = icmp eq i8* %call258, null
  br i1 %cmp259, label %FAILURE, label %if.end262

if.end262:                                        ; preds = %if.end257
  %37 = load i32* %M179, align 4, !tbaa !0
  %cmp264 = icmp slt i32 %28, %37
  br i1 %cmp264, label %if.then266, label %if.end272

if.then266:                                       ; preds = %if.end262
  %call267 = call fastcc float @ascii2prob(i8* %call258, float 1.000000e+00) #8
  %38 = load float*** %t, align 8, !tbaa !3
  %arrayidx270 = getelementptr inbounds float** %38, i64 %indvars.iv606
  %39 = load float** %arrayidx270, align 8, !tbaa !3
  %arrayidx271 = getelementptr inbounds float* %39, i64 5
  store float %call267, float* %arrayidx271, align 4, !tbaa !4
  br label %if.end272

if.end272:                                        ; preds = %if.then266, %if.end262
  %call273 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp274 = icmp eq i8* %call273, null
  br i1 %cmp274, label %FAILURE, label %if.end277

if.end277:                                        ; preds = %if.end272
  %40 = load i32* %M179, align 4, !tbaa !0
  %cmp279 = icmp slt i32 %28, %40
  br i1 %cmp279, label %if.then281, label %if.end296

if.then281:                                       ; preds = %if.end277
  %cmp283 = icmp eq i32 %28, %40
  br i1 %cmp283, label %cond.end289, label %cond.false286

cond.false286:                                    ; preds = %if.then281
  %call287 = call fastcc float @ascii2prob(i8* %call273, float 1.000000e+00) #8
  br label %cond.end289

cond.end289:                                      ; preds = %if.then281, %cond.false286
  %cond290 = phi float [ %call287, %cond.false286 ], [ 0.000000e+00, %if.then281 ]
  %41 = load float*** %t, align 8, !tbaa !3
  %arrayidx294 = getelementptr inbounds float** %41, i64 %indvars.iv606
  %42 = load float** %arrayidx294, align 8, !tbaa !3
  %arrayidx295 = getelementptr inbounds float* %42, i64 6
  store float %cond290, float* %arrayidx295, align 4, !tbaa !4
  br label %if.end296

if.end296:                                        ; preds = %cond.end289, %if.end277
  %call297 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp298 = icmp eq i8* %call297, null
  br i1 %cmp298, label %FAILURE, label %if.end301

if.end301:                                        ; preds = %if.end296
  %call302 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp303 = icmp eq i8* %call302, null
  br i1 %cmp303, label %FAILURE, label %if.end306

if.end306:                                        ; preds = %if.end301
  %43 = load i32* %M179, align 4, !tbaa !0
  %cmp308 = icmp slt i32 %28, %43
  br i1 %cmp308, label %if.then310, label %if.end316

if.then310:                                       ; preds = %if.end306
  %call311 = call fastcc float @ascii2prob(i8* %call302, float 1.000000e+00) #8
  %44 = load float*** %t, align 8, !tbaa !3
  %arrayidx314 = getelementptr inbounds float** %44, i64 %indvars.iv606
  %45 = load float** %arrayidx314, align 8, !tbaa !3
  %arrayidx315 = getelementptr inbounds float* %45, i64 3
  store float %call311, float* %arrayidx315, align 4, !tbaa !4
  br label %if.end316

if.end316:                                        ; preds = %if.then310, %if.end306
  %call317 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp318 = icmp eq i8* %call317, null
  br i1 %cmp318, label %FAILURE, label %if.end321

if.end321:                                        ; preds = %if.end316
  %call322 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp323 = icmp eq i8* %call322, null
  br i1 %cmp323, label %FAILURE, label %if.end326

if.end326:                                        ; preds = %if.end321
  %46 = load i32* %M179, align 4, !tbaa !0
  %cmp328 = icmp slt i32 %28, %46
  br i1 %cmp328, label %if.then330, label %if.end336

if.then330:                                       ; preds = %if.end326
  %call331 = call fastcc float @ascii2prob(i8* %call322, float 1.000000e+00) #8
  %47 = load float*** %t, align 8, !tbaa !3
  %arrayidx334 = getelementptr inbounds float** %47, i64 %indvars.iv606
  %48 = load float** %arrayidx334, align 8, !tbaa !3
  %arrayidx335 = getelementptr inbounds float* %48, i64 4
  store float %call331, float* %arrayidx335, align 4, !tbaa !4
  br label %if.end336

if.end336:                                        ; preds = %if.then330, %if.end326
  %call337 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #6
  %cmp338 = icmp eq i8* %call337, null
  br i1 %cmp338, label %FAILURE, label %if.end341

if.end341:                                        ; preds = %if.end336
  %49 = load i32* %flags342, align 4, !tbaa !0
  %and = and i32 %49, 4
  %tobool343 = icmp eq i32 %and, 0
  br i1 %tobool343, label %if.end347, label %if.then344

if.then344:                                       ; preds = %if.end341
  %50 = load i8* %call337, align 1, !tbaa !1
  %51 = load i8** %rf, align 8, !tbaa !3
  %arrayidx346 = getelementptr inbounds i8* %51, i64 %indvars.iv606
  store i8 %50, i8* %arrayidx346, align 1, !tbaa !1
  br label %if.end347

if.end347:                                        ; preds = %if.end341, %if.then344
  %call348 = call i8* @Getword(%struct._IO_FILE* %1, i32 4) #6
  %cmp349 = icmp eq i8* %call348, null
  br i1 %cmp349, label %FAILURE, label %if.end352

if.end352:                                        ; preds = %if.end347
  %52 = load i32* %flags342, align 4, !tbaa !0
  %and354 = and i32 %52, 8
  %tobool355 = icmp eq i32 %and354, 0
  br i1 %tobool355, label %for.inc360, label %if.then356

if.then356:                                       ; preds = %if.end352
  %53 = load i8* %call348, align 1, !tbaa !1
  %54 = load i8** %cs, align 8, !tbaa !3
  %arrayidx358 = getelementptr inbounds i8* %54, i64 %indvars.iv606
  store i8 %53, i8* %arrayidx358, align 1, !tbaa !1
  br label %for.inc360

for.inc360:                                       ; preds = %if.end352, %if.then356
  %indvars.iv.next607 = add i64 %indvars.iv606, 1
  %55 = load i32* %M179, align 4, !tbaa !0
  %cmp180 = icmp slt i32 %28, %55
  br i1 %cmp180, label %for.body182, label %for.cond363.preheader

for.body367:                                      ; preds = %for.inc400, %for.body367.lr.ph
  %indvars.iv600 = phi i64 [ %indvars.iv.next601, %for.inc400 ], [ 0, %for.body367.lr.ph ]
  %call368 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp369 = icmp eq i8* %call368, null
  br i1 %cmp369, label %FAILURE, label %for.cond373.preheader

for.cond373.preheader:                            ; preds = %for.body367
  %56 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp374564 = icmp sgt i32 %56, 0
  %57 = trunc i64 %indvars.iv600 to i32
  br i1 %cmp374564, label %for.body376.lr.ph, label %for.inc400

for.body376.lr.ph:                                ; preds = %for.cond373.preheader
  %cmp382 = icmp sgt i32 %57, 0
  br label %for.body376

for.body376:                                      ; preds = %for.body376.lr.ph, %for.inc397
  %indvars.iv = phi i64 [ 0, %for.body376.lr.ph ], [ %indvars.iv.next, %for.inc397 ]
  %call377 = call i8* @Getword(%struct._IO_FILE* %1, i32 1) #6
  %cmp378 = icmp eq i8* %call377, null
  br i1 %cmp378, label %FAILURE, label %if.end381

if.end381:                                        ; preds = %for.body376
  br i1 %cmp382, label %land.lhs.true, label %for.inc397

land.lhs.true:                                    ; preds = %if.end381
  %58 = load i32* %M179, align 4, !tbaa !0
  %cmp385 = icmp slt i32 %57, %58
  br i1 %cmp385, label %if.then387, label %for.inc397

if.then387:                                       ; preds = %land.lhs.true
  %arrayidx390 = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 28, i64 %indvars.iv
  %59 = load float* %arrayidx390, align 4, !tbaa !4
  %call391 = call fastcc float @ascii2prob(i8* %call377, float %59) #8
  %60 = load float*** %ins, align 8, !tbaa !3
  %arrayidx394 = getelementptr inbounds float** %60, i64 %indvars.iv600
  %61 = load float** %arrayidx394, align 8, !tbaa !3
  %arrayidx395 = getelementptr inbounds float* %61, i64 %indvars.iv
  store float %call391, float* %arrayidx395, align 4, !tbaa !4
  br label %for.inc397

for.inc397:                                       ; preds = %if.end381, %land.lhs.true, %if.then387
  %indvars.iv.next = add i64 %indvars.iv, 1
  %62 = load i32* @Alphabet_size, align 4, !tbaa !0
  %63 = trunc i64 %indvars.iv.next to i32
  %cmp374 = icmp slt i32 %63, %62
  br i1 %cmp374, label %for.body376, label %for.inc400

for.inc400:                                       ; preds = %for.cond373.preheader, %for.inc397
  %indvars.iv.next601 = add i64 %indvars.iv600, 1
  %64 = load i32* %M179, align 4, !tbaa !0
  %cmp365 = icmp slt i32 %57, %64
  br i1 %cmp365, label %for.body367, label %for.end402

for.end402:                                       ; preds = %for.inc400, %for.cond363.preheader
  %flags403 = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 47
  %65 = load i32* %flags403, align 4, !tbaa !0
  %or404 = and i32 %65, -34
  %and406 = or i32 %or404, 32
  store i32 %and406, i32* %flags403, align 4, !tbaa !0
  call void @Plan7Renormalize(%struct.plan7_s* %call7) #6
  %call407 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8]* @.str59, i64 0, i64 0)) #6
  %comlog = getelementptr inbounds %struct.plan7_s* %call7, i64 0, i32 6
  store i8* %call407, i8** %comlog, align 8, !tbaa !3
  call void @Plan7SetCtime(%struct.plan7_s* %call7) #6
  store %struct.plan7_s* %call7, %struct.plan7_s** %ret_hmm, align 8, !tbaa !3
  br label %cleanup

FAILURE:                                          ; preds = %for.body, %for.body120, %for.body159, %if.end347, %if.end336, %if.end321, %if.end316, %if.end301, %if.end296, %if.end272, %if.end257, %if.end242, %if.end221, %for.end207, %for.body182, %for.body191, %for.body367, %for.body376, %if.end78, %if.end46, %if.end172, %for.end167, %for.end128, %if.end73, %if.end61, %if.end51, %if.end42, %if.else, %if.end20, %if.end16, %if.end11, %if.end6
  %cmp408 = icmp eq %struct.plan7_s* %call7, null
  br i1 %cmp408, label %if.end411, label %if.then410

if.then410:                                       ; preds = %if.end133, %if.end111, %if.end103, %for.end, %FAILURE
  call void @FreePlan7(%struct.plan7_s* %call7) #6
  br label %if.end411

if.end411:                                        ; preds = %if.end, %FAILURE, %if.then410
  store %struct.plan7_s* null, %struct.plan7_s** %ret_hmm, align 8, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end411, %for.end402
  %retval.0 = phi i32 [ 1, %if.end411 ], [ 1, %for.end402 ], [ 0, %entry ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end(i64 512, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_asc17hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  %buffer.i = alloca [512 x i8], align 16
  %hmm = alloca %struct.plan7_s*, align 8
  %buffer = alloca [512 x i8], align 16
  %0 = getelementptr inbounds [512 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 512, i8* %0) #1
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0
  %1 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call = call i32 @feof(%struct._IO_FILE* %1) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call2 = call i8* @fgets(i8* %0, i32 512, %struct._IO_FILE* %2) #6
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %4 = getelementptr inbounds [512 x i8]* %buffer.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 512, i8* %4) #1
  %call.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp.i = icmp eq i8* %call.i, null
  br i1 %cmp.i, label %if.then6, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %call2.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp3.i = icmp eq i8* %call2.i, null
  br i1 %cmp3.i, label %if.then6, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %5 = load i8* %call2.i, align 1, !tbaa !1
  %idxprom.i = sext i8 %5 to i64
  %call6.i = call i16** @__ctype_b_loc() #9
  %6 = load i16** %call6.i, align 8, !tbaa !3
  %arrayidx.i = getelementptr inbounds i16* %6, i64 %idxprom.i
  %7 = load i16* %arrayidx.i, align 2, !tbaa !5
  %and.i = and i16 %7, 2048
  %tobool.i = icmp eq i16 %and.i, 0
  br i1 %tobool.i, label %if.then6, label %if.end9.i

if.end9.i:                                        ; preds = %if.end5.i
  %call10.i = call i32 @atoi(i8* %call2.i) #7
  %call12.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp13.i = icmp eq i8* %call12.i, null
  br i1 %cmp13.i, label %if.then6, label %if.end16.i

if.end16.i:                                       ; preds = %if.end9.i
  %call18.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp19.i = icmp eq i8* %call18.i, null
  br i1 %cmp19.i, label %if.then6, label %if.end22.i

if.end22.i:                                       ; preds = %if.end16.i
  %8 = load i8* %call18.i, align 1, !tbaa !1
  %idxprom24.i = sext i8 %8 to i64
  %9 = load i16** %call6.i, align 8, !tbaa !3
  %arrayidx26.i = getelementptr inbounds i16* %9, i64 %idxprom24.i
  %10 = load i16* %arrayidx26.i, align 2, !tbaa !5
  %and28.i = and i16 %10, 2048
  %tobool29.i = icmp eq i16 %and28.i, 0
  br i1 %tobool29.i, label %if.then6, label %if.end31.i

if.end31.i:                                       ; preds = %if.end22.i
  %call32.i = call i32 @atoi(i8* %call18.i) #7
  switch i32 %call32.i, label %if.else39.i [
    i32 4, label %if.end41.i
    i32 20, label %if.then38.i
  ]

if.then38.i:                                      ; preds = %if.end31.i
  br label %if.end41.i

if.else39.i:                                      ; preds = %if.end31.i
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([71 x i8]* @.str60, i64 0, i64 0), i32 %call32.i) #6
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else39.i, %if.then38.i, %if.end31.i
  %atype.0.i = phi i32 [ 3, %if.then38.i ], [ undef, %if.else39.i ], [ 2, %if.end31.i ]
  %11 = load i32* @Alphabet_type, align 4, !tbaa !0
  %cmp42.i = icmp eq i32 %11, 0
  br i1 %cmp42.i, label %if.then44.i, label %if.else45.i

if.then44.i:                                      ; preds = %if.end41.i
  call void @SetAlphabet(i32 %atype.0.i) #6
  br label %if.end52.i

if.else45.i:                                      ; preds = %if.end41.i
  %cmp46.i = icmp eq i32 %atype.0.i, %11
  br i1 %cmp46.i, label %if.end52.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.else45.i
  %call49.i = call i8* @AlphabetType2String(i32 %11) #6
  %call50.i = call i8* @AlphabetType2String(i32 %atype.0.i) #6
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([89 x i8]* @.str61, i64 0, i64 0), i8* %call49.i, i8* %call50.i) #6
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then48.i, %if.else45.i, %if.then44.i
  %call53.i = call %struct.plan9_s* @P9AllocHMM(i32 %call10.i) #6
  %cmp54.i = icmp eq %struct.plan9_s* %call53.i, null
  br i1 %cmp54.i, label %if.then56.i, label %if.end57.i

if.then56.i:                                      ; preds = %if.end52.i
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([34 x i8]* @.str62, i64 0, i64 0)) #6
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then56.i, %if.end52.i
  %call59.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp60.i = icmp eq i8* %call59.i, null
  br i1 %cmp60.i, label %if.then6, label %if.end63.i

if.end63.i:                                       ; preds = %if.end57.i
  %call65.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp66.i = icmp eq i8* %call65.i, null
  br i1 %cmp66.i, label %if.then6, label %if.end69.i

if.end69.i:                                       ; preds = %if.end63.i
  %12 = load i8* %call65.i, align 1, !tbaa !1
  %idxprom71.i = sext i8 %12 to i64
  %13 = load i16** %call6.i, align 8, !tbaa !3
  %arrayidx73.i = getelementptr inbounds i16* %13, i64 %idxprom71.i
  %14 = load i16* %arrayidx73.i, align 2, !tbaa !5
  %and75.i = and i16 %14, 2048
  %tobool76.i = icmp eq i16 %and75.i, 0
  br i1 %tobool76.i, label %if.then6, label %if.end78.i

if.end78.i:                                       ; preds = %if.end69.i
  %call80.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp81.i = icmp eq i8* %call80.i, null
  br i1 %cmp81.i, label %if.then6, label %if.end84.i

if.end84.i:                                       ; preds = %if.end78.i
  %call86.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp87.i = icmp eq i8* %call86.i, null
  br i1 %cmp87.i, label %if.then6, label %if.then105.i

if.then105.i:                                     ; preds = %if.end84.i
  %call107.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp108.i = icmp eq i8* %call107.i, null
  br i1 %cmp108.i, label %if.then6, label %if.end111.i

if.end111.i:                                      ; preds = %if.then105.i
  %call113.i = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i64 3) #7
  %cmp114.i = icmp eq i32 %call113.i, 0
  br i1 %cmp114.i, label %if.then116.i, label %if.end117.i

if.then116.i:                                     ; preds = %if.end111.i
  %flags.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 9
  %15 = load i32* %flags.i, align 4, !tbaa !0
  %or.i = or i32 %15, 1
  store i32 %or.i, i32* %flags.i, align 4, !tbaa !0
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then116.i, %if.end111.i
  %call119.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp120.i = icmp eq i8* %call119.i, null
  br i1 %cmp120.i, label %if.then6, label %if.end123.i

if.end123.i:                                      ; preds = %if.end117.i
  %call125.i = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i64 3) #7
  %cmp126.i = icmp eq i32 %call125.i, 0
  br i1 %cmp126.i, label %if.then128.i, label %while.cond.preheader.i

if.then128.i:                                     ; preds = %if.end123.i
  %flags129.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 9
  %16 = load i32* %flags129.i, align 4, !tbaa !0
  %or130.i = or i32 %16, 2
  store i32 %or130.i, i32* %flags129.i, align 4, !tbaa !0
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.then128.i, %if.end123.i
  %call1348.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp1359.i = icmp eq i8* %call1348.i, null
  br i1 %cmp1359.i, label %read_plan9_aschmm.exit, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %M160.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 0
  %ref.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 6
  %cs.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 7
  %mat.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 2
  %ins.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 1
  %del.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i, %while.body.lr.ph.i
  %call138.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp139.i = icmp eq i8* %call138.i, null
  br i1 %cmp139.i, label %if.then6, label %if.end142.i

if.end142.i:                                      ; preds = %while.body.i
  %call143.i = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp144.i = icmp eq i8* %call143.i, null
  br i1 %cmp144.i, label %if.then6, label %if.end147.i

if.end147.i:                                      ; preds = %if.end142.i
  %17 = load i8* %call143.i, align 1, !tbaa !1
  %idxprom149.i = sext i8 %17 to i64
  %18 = load i16** %call6.i, align 8, !tbaa !3
  %arrayidx151.i = getelementptr inbounds i16* %18, i64 %idxprom149.i
  %19 = load i16* %arrayidx151.i, align 2, !tbaa !5
  %and153.i = and i16 %19, 2048
  %tobool154.i = icmp eq i16 %and153.i, 0
  br i1 %tobool154.i, label %if.then6, label %if.end156.i

if.end156.i:                                      ; preds = %if.end147.i
  %call157.i = call i32 @atoi(i8* %call143.i) #7
  %cmp158.i = icmp slt i32 %call157.i, 0
  br i1 %cmp158.i, label %if.then6, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end156.i
  %20 = load i32* %M160.i, align 4, !tbaa !0
  %add.i = add nsw i32 %20, 1
  %cmp161.i = icmp sgt i32 %call157.i, %add.i
  br i1 %cmp161.i, label %if.then6, label %if.end164.i

if.end164.i:                                      ; preds = %lor.lhs.false.i
  %call165.i = call i32 @strcmp(i8* %call138.i, i8* getelementptr inbounds ([15 x i8]* @.str66, i64 0, i64 0)) #7
  %cmp166.i = icmp eq i32 %call165.i, 0
  br i1 %cmp166.i, label %if.then171.i, label %if.else308.i

if.then171.i:                                     ; preds = %if.end164.i
  %call172.i = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str34, i64 0, i64 0)) #6
  br label %while.cond173.i

while.cond173.i:                                  ; preds = %while.cond173.i, %if.then171.i
  %s.0.i = phi i8* [ %call172.i, %if.then171.i ], [ %incdec.ptr.i, %while.cond173.i ]
  %21 = load i8* %s.0.i, align 1, !tbaa !1
  %cmp175.i = icmp eq i8 %21, 40
  %cmp178.i = icmp ne i8 %21, 0
  %not.cmp175.i = xor i1 %cmp175.i, true
  %.cmp178.i = and i1 %cmp178.i, %not.cmp175.i
  %incdec.ptr.i = getelementptr inbounds i8* %s.0.i, i64 1
  br i1 %.cmp178.i, label %while.cond173.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond173.i
  br i1 %cmp175.i, label %if.end185.i, label %if.then6

if.end185.i:                                      ; preds = %while.end.i
  %22 = load i8* %incdec.ptr.i, align 1, !tbaa !1
  %idxprom186.i = sext i32 %call157.i to i64
  %23 = load i8** %ref.i, align 8, !tbaa !3
  %arrayidx187.i = getelementptr inbounds i8* %23, i64 %idxprom186.i
  store i8 %22, i8* %arrayidx187.i, align 1, !tbaa !1
  br label %while.cond188.i

while.cond188.i:                                  ; preds = %while.cond188.i, %if.end185.i
  %s.1.i = phi i8* [ %s.0.i, %if.end185.i ], [ %incdec.ptr198.i, %while.cond188.i ]
  %24 = load i8* %s.1.i, align 1, !tbaa !1
  %cmp190.i = icmp eq i8 %24, 40
  %cmp194.i = icmp ne i8 %24, 0
  %not.cmp190.i = xor i1 %cmp190.i, true
  %.cmp194.i = and i1 %cmp194.i, %not.cmp190.i
  %incdec.ptr198.i = getelementptr inbounds i8* %s.1.i, i64 1
  br i1 %.cmp194.i, label %while.cond188.i, label %while.end199.i

while.end199.i:                                   ; preds = %while.cond188.i
  br i1 %cmp190.i, label %if.end204.i, label %if.then6

if.end204.i:                                      ; preds = %while.end199.i
  %25 = load i8* %incdec.ptr198.i, align 1, !tbaa !1
  %26 = load i8** %cs.i, align 8, !tbaa !3
  %arrayidx207.i = getelementptr inbounds i8* %26, i64 %idxprom186.i
  store i8 %25, i8* %arrayidx207.i, align 1, !tbaa !1
  %call210.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp211.i = icmp eq i8* %call210.i, null
  br i1 %cmp211.i, label %if.then6, label %if.end214.i

if.end214.i:                                      ; preds = %if.end204.i
  %call216.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp217.i = icmp eq i8* %call216.i, null
  br i1 %cmp217.i, label %if.then6, label %if.end220.i

if.end220.i:                                      ; preds = %if.end214.i
  %call221.i = call double @atof(i8* %call216.i) #7
  %conv222.i = fptrunc double %call221.i to float
  %27 = load %struct.basic_state** %mat.i, align 8, !tbaa !3
  %arrayidx225.i = getelementptr inbounds %struct.basic_state* %27, i64 %idxprom186.i, i32 0, i64 0
  store float %conv222.i, float* %arrayidx225.i, align 4, !tbaa !4
  %call227.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp228.i = icmp eq i8* %call227.i, null
  br i1 %cmp228.i, label %if.then6, label %if.end231.i

if.end231.i:                                      ; preds = %if.end220.i
  %call233.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp234.i = icmp eq i8* %call233.i, null
  br i1 %cmp234.i, label %if.then6, label %if.end237.i

if.end237.i:                                      ; preds = %if.end231.i
  %call238.i = call double @atof(i8* %call233.i) #7
  %conv239.i = fptrunc double %call238.i to float
  %28 = load %struct.basic_state** %mat.i, align 8, !tbaa !3
  %arrayidx244.i = getelementptr inbounds %struct.basic_state* %28, i64 %idxprom186.i, i32 0, i64 2
  store float %conv239.i, float* %arrayidx244.i, align 4, !tbaa !4
  %call246.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp247.i = icmp eq i8* %call246.i, null
  br i1 %cmp247.i, label %if.then6, label %if.end250.i

if.end250.i:                                      ; preds = %if.end237.i
  %call252.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp253.i = icmp eq i8* %call252.i, null
  br i1 %cmp253.i, label %if.then6, label %if.end256.i

if.end256.i:                                      ; preds = %if.end250.i
  %call257.i = call double @atof(i8* %call252.i) #7
  %conv258.i = fptrunc double %call257.i to float
  %29 = load %struct.basic_state** %mat.i, align 8, !tbaa !3
  %arrayidx263.i = getelementptr inbounds %struct.basic_state* %29, i64 %idxprom186.i, i32 0, i64 1
  store float %conv258.i, float* %arrayidx263.i, align 4, !tbaa !4
  %30 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp2655.i = icmp sgt i32 %30, 0
  br i1 %cmp2655.i, label %for.body267.i, label %while.cond.backedge.i

for.body267.i:                                    ; preds = %if.end256.i, %if.end279.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %if.end279.i ], [ 0, %if.end256.i ]
  %call269.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp270.i = icmp eq i8* %call269.i, null
  br i1 %cmp270.i, label %if.then6, label %if.end273.i

if.end273.i:                                      ; preds = %for.body267.i
  %call275.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp276.i = icmp eq i8* %call275.i, null
  br i1 %cmp276.i, label %if.then6, label %if.end279.i

if.end279.i:                                      ; preds = %if.end273.i
  %call280.i = call double @atof(i8* %call275.i) #7
  %conv281.i = fptrunc double %call280.i to float
  %31 = load %struct.basic_state** %mat.i, align 8, !tbaa !3
  %arrayidx286.i = getelementptr inbounds %struct.basic_state* %31, i64 %idxprom186.i, i32 1, i64 %indvars.iv10.i
  store float %conv281.i, float* %arrayidx286.i, align 4, !tbaa !4
  %indvars.iv.next11.i = add i64 %indvars.iv10.i, 1
  %32 = load i32* @Alphabet_size, align 4, !tbaa !0
  %33 = trunc i64 %indvars.iv.next11.i to i32
  %cmp265.i = icmp slt i32 %33, %32
  br i1 %cmp265.i, label %for.body267.i, label %while.cond.backedge.i

if.else308.i:                                     ; preds = %if.end164.i
  %call309.i = call i32 @strcmp(i8* %call138.i, i8* getelementptr inbounds ([16 x i8]* @.str67, i64 0, i64 0)) #7
  %cmp310.i = icmp eq i32 %call309.i, 0
  br i1 %cmp310.i, label %if.then312.i, label %if.else414.i

if.then312.i:                                     ; preds = %if.else308.i
  %call314.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp315.i = icmp eq i8* %call314.i, null
  br i1 %cmp315.i, label %if.then6, label %if.end318.i

if.end318.i:                                      ; preds = %if.then312.i
  %call320.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp321.i = icmp eq i8* %call320.i, null
  br i1 %cmp321.i, label %if.then6, label %if.end324.i

if.end324.i:                                      ; preds = %if.end318.i
  %call325.i = call double @atof(i8* %call320.i) #7
  %conv326.i = fptrunc double %call325.i to float
  %idxprom327.i = sext i32 %call157.i to i64
  %34 = load %struct.basic_state** %ins.i, align 8, !tbaa !3
  %arrayidx330.i = getelementptr inbounds %struct.basic_state* %34, i64 %idxprom327.i, i32 0, i64 0
  store float %conv326.i, float* %arrayidx330.i, align 4, !tbaa !4
  %call332.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp333.i = icmp eq i8* %call332.i, null
  br i1 %cmp333.i, label %if.then6, label %if.end336.i

if.end336.i:                                      ; preds = %if.end324.i
  %call338.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp339.i = icmp eq i8* %call338.i, null
  br i1 %cmp339.i, label %if.then6, label %if.end342.i

if.end342.i:                                      ; preds = %if.end336.i
  %call343.i = call double @atof(i8* %call338.i) #7
  %conv344.i = fptrunc double %call343.i to float
  %35 = load %struct.basic_state** %ins.i, align 8, !tbaa !3
  %arrayidx349.i = getelementptr inbounds %struct.basic_state* %35, i64 %idxprom327.i, i32 0, i64 2
  store float %conv344.i, float* %arrayidx349.i, align 4, !tbaa !4
  %call351.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp352.i = icmp eq i8* %call351.i, null
  br i1 %cmp352.i, label %if.then6, label %if.end355.i

if.end355.i:                                      ; preds = %if.end342.i
  %call357.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp358.i = icmp eq i8* %call357.i, null
  br i1 %cmp358.i, label %if.then6, label %if.end361.i

if.end361.i:                                      ; preds = %if.end355.i
  %call362.i = call double @atof(i8* %call357.i) #7
  %conv363.i = fptrunc double %call362.i to float
  %36 = load %struct.basic_state** %ins.i, align 8, !tbaa !3
  %arrayidx368.i = getelementptr inbounds %struct.basic_state* %36, i64 %idxprom327.i, i32 0, i64 1
  store float %conv363.i, float* %arrayidx368.i, align 4, !tbaa !4
  %37 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp3701.i = icmp sgt i32 %37, 0
  br i1 %cmp3701.i, label %for.body372.i, label %while.cond.backedge.i

for.body372.i:                                    ; preds = %if.end361.i, %if.end384.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %if.end384.i ], [ 0, %if.end361.i ]
  %call374.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp375.i = icmp eq i8* %call374.i, null
  br i1 %cmp375.i, label %if.then6, label %if.end378.i

if.end378.i:                                      ; preds = %for.body372.i
  %call380.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp381.i = icmp eq i8* %call380.i, null
  br i1 %cmp381.i, label %if.then6, label %if.end384.i

if.end384.i:                                      ; preds = %if.end378.i
  %call385.i = call double @atof(i8* %call380.i) #7
  %conv386.i = fptrunc double %call385.i to float
  %38 = load %struct.basic_state** %ins.i, align 8, !tbaa !3
  %arrayidx392.i = getelementptr inbounds %struct.basic_state* %38, i64 %idxprom327.i, i32 1, i64 %indvars.iv.i
  store float %conv386.i, float* %arrayidx392.i, align 4, !tbaa !4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %39 = load i32* @Alphabet_size, align 4, !tbaa !0
  %40 = trunc i64 %indvars.iv.next.i to i32
  %cmp370.i = icmp slt i32 %40, %39
  br i1 %cmp370.i, label %for.body372.i, label %while.cond.backedge.i

if.else414.i:                                     ; preds = %if.else308.i
  %call415.i = call i32 @strcmp(i8* %call138.i, i8* getelementptr inbounds ([16 x i8]* @.str68, i64 0, i64 0)) #7
  %cmp416.i = icmp eq i32 %call415.i, 0
  br i1 %cmp416.i, label %if.then418.i, label %if.then6

if.then418.i:                                     ; preds = %if.else414.i
  %call420.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp421.i = icmp eq i8* %call420.i, null
  br i1 %cmp421.i, label %if.then6, label %if.end424.i

if.end424.i:                                      ; preds = %if.then418.i
  %call426.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp427.i = icmp eq i8* %call426.i, null
  br i1 %cmp427.i, label %if.then6, label %if.end430.i

if.end430.i:                                      ; preds = %if.end424.i
  %call431.i = call double @atof(i8* %call426.i) #7
  %conv432.i = fptrunc double %call431.i to float
  %idxprom433.i = sext i32 %call157.i to i64
  %41 = load %struct.basic_state** %del.i, align 8, !tbaa !3
  %arrayidx436.i = getelementptr inbounds %struct.basic_state* %41, i64 %idxprom433.i, i32 0, i64 0
  store float %conv432.i, float* %arrayidx436.i, align 4, !tbaa !4
  %call438.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp439.i = icmp eq i8* %call438.i, null
  br i1 %cmp439.i, label %if.then6, label %if.end442.i

if.end442.i:                                      ; preds = %if.end430.i
  %call444.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp445.i = icmp eq i8* %call444.i, null
  br i1 %cmp445.i, label %if.then6, label %if.end448.i

if.end448.i:                                      ; preds = %if.end442.i
  %call449.i = call double @atof(i8* %call444.i) #7
  %conv450.i = fptrunc double %call449.i to float
  %42 = load %struct.basic_state** %del.i, align 8, !tbaa !3
  %arrayidx455.i = getelementptr inbounds %struct.basic_state* %42, i64 %idxprom433.i, i32 0, i64 2
  store float %conv450.i, float* %arrayidx455.i, align 4, !tbaa !4
  %call457.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp458.i = icmp eq i8* %call457.i, null
  br i1 %cmp458.i, label %if.then6, label %if.end461.i

if.end461.i:                                      ; preds = %if.end448.i
  %call463.i = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str65, i64 0, i64 0)) #6
  %cmp464.i = icmp eq i8* %call463.i, null
  br i1 %cmp464.i, label %if.then6, label %if.end467.i

if.end467.i:                                      ; preds = %if.end461.i
  %call468.i = call double @atof(i8* %call463.i) #7
  %conv469.i = fptrunc double %call468.i to float
  %43 = load %struct.basic_state** %del.i, align 8, !tbaa !3
  %arrayidx474.i = getelementptr inbounds %struct.basic_state* %43, i64 %idxprom433.i, i32 0, i64 1
  store float %conv469.i, float* %arrayidx474.i, align 4, !tbaa !4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end279.i, %if.end384.i, %if.end467.i, %if.end361.i, %if.end256.i
  %call134.i = call i8* @fgets(i8* %4, i32 512, %struct._IO_FILE* %3) #6
  %cmp135.i = icmp eq i8* %call134.i, null
  br i1 %cmp135.i, label %read_plan9_aschmm.exit, label %while.body.i

read_plan9_aschmm.exit:                           ; preds = %while.cond.backedge.i, %while.cond.preheader.i
  %arraydecay497.i = getelementptr inbounds %struct.plan9_s* %call53.i, i64 0, i32 4, i64 0
  call void @P9DefaultNullModel(float* %arraydecay497.i) #6
  call void @P9Renormalize(%struct.plan9_s* %call53.i) #6
  call void @llvm.lifetime.end(i64 512, i8* %4) #1
  br i1 %cmp54.i, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.else414.i, %if.end461.i, %if.end448.i, %if.end442.i, %if.end430.i, %if.end424.i, %if.then418.i, %if.end355.i, %if.end342.i, %if.end336.i, %if.end324.i, %if.end318.i, %if.then312.i, %if.end250.i, %if.end237.i, %if.end231.i, %if.end220.i, %if.end214.i, %if.end204.i, %while.end199.i, %while.end.i, %if.end156.i, %lor.lhs.false.i, %if.end147.i, %if.end142.i, %while.body.i, %if.end273.i, %for.body267.i, %if.end378.i, %for.body372.i, %if.end117.i, %if.then105.i, %if.end84.i, %if.end78.i, %if.end69.i, %if.end63.i, %if.end57.i, %if.end22.i, %if.end16.i, %if.end9.i, %if.end5.i, %if.end.i, %if.end, %read_plan9_aschmm.exit
  store %struct.plan7_s* null, %struct.plan7_s** %ret_hmm, align 8, !tbaa !3
  br label %cleanup

if.end7:                                          ; preds = %read_plan9_aschmm.exit
  call void @Plan9toPlan7(%struct.plan9_s* %call53.i, %struct.plan7_s** %hmm) #6
  %call8 = call i8* @Strdup(i8* getelementptr inbounds ([34 x i8]* @.str59, i64 0, i64 0)) #6
  %44 = load %struct.plan7_s** %hmm, align 8, !tbaa !3
  %comlog = getelementptr inbounds %struct.plan7_s* %44, i64 0, i32 6
  store i8* %call8, i8** %comlog, align 8, !tbaa !3
  %45 = load %struct.plan7_s** %hmm, align 8, !tbaa !3
  call void @Plan7SetCtime(%struct.plan7_s* %45) #6
  %call9 = call i32 @P9FreeHMM(%struct.plan9_s* %call53.i) #6
  %46 = load %struct.plan7_s** %hmm, align 8, !tbaa !3
  call void @Plan7Renormalize(%struct.plan7_s* %46) #6
  %47 = load %struct.plan7_s** %hmm, align 8, !tbaa !3
  store %struct.plan7_s* %47, %struct.plan7_s** %ret_hmm, align 8, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end7, %if.then6
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 1, %if.end7 ], [ 0, %entry ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end(i64 512, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_asc11hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([27 x i8]* @.str64, i64 0, i64 0)) #6
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @read_asc10hmm(%struct.hmmfile_s* nocapture %hmmfp, %struct.plan7_s** nocapture %ret_hmm) #0 {
entry:
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([27 x i8]* @.str63, i64 0, i64 0)) #6
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @HMMFileRead(%struct.hmmfile_s* %hmmfp, %struct.plan7_s** %ret_hmm) #0 {
entry:
  %is_seekable = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 5
  %0 = load i32* %is_seekable, align 4, !tbaa !0
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0
  %1 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %mode = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 6
  %2 = load i32* %mode, align 4, !tbaa !0
  %offset = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 7
  %call = tail call i32 @SSIGetFilePosition(%struct._IO_FILE* %1, i32 %2, %struct.ssioffset_s* %offset) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.then
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str4, i64 0, i64 0)) #6
  br label %if.end2

if.end2:                                          ; preds = %if.then, %entry, %if.then1
  %parser = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 2
  %3 = load i32 (%struct.hmmfile_s*, %struct.plan7_s**)** %parser, align 8, !tbaa !3
  %call3 = tail call i32 %3(%struct.hmmfile_s* %hmmfp, %struct.plan7_s** %ret_hmm) #6
  ret i32 %call3
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare void @SSIClose(%struct.ssifile_s*) #2

; Function Attrs: nounwind optsize uwtable
define void @HMMFileRewind(%struct.hmmfile_s* nocapture %hmmfp) #0 {
entry:
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0
  %0 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  tail call void @rewind(%struct._IO_FILE* %0) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @HMMFilePositionByName(%struct.hmmfile_s* nocapture %hmmfp, i8* %name) #0 {
entry:
  %offset = alloca %struct.ssioffset_s, align 8
  %fh = alloca i32, align 4
  %ssi = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 1
  %0 = load %struct.ssifile_s** %ssi, align 8, !tbaa !3
  %cmp = icmp eq %struct.ssifile_s* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @SSIGetOffsetByName(%struct.ssifile_s* %0, i8* %name, i32* %fh, %struct.ssioffset_s* %offset) #6
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0
  %1 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call5 = call i32 @SSISetFilePosition(%struct._IO_FILE* %1, %struct.ssioffset_s* %offset) #6
  %cmp6 = icmp eq i32 %call5, 0
  %. = zext i1 %cmp6 to i32
  br label %return

return:                                           ; preds = %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @SSIGetOffsetByName(%struct.ssifile_s*, i8*, i32*, %struct.ssioffset_s*) #2

; Function Attrs: optsize
declare i32 @SSISetFilePosition(%struct._IO_FILE*, %struct.ssioffset_s*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @HMMFilePositionByIndex(%struct.hmmfile_s* nocapture %hmmfp, i32 %idx) #0 {
entry:
  %fh = alloca i32, align 4
  %offset = alloca %struct.ssioffset_s, align 8
  %ssi = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 1
  %0 = load %struct.ssifile_s** %ssi, align 8, !tbaa !3
  %cmp = icmp eq %struct.ssifile_s* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @SSIGetOffsetByNumber(%struct.ssifile_s* %0, i32 %idx, i32* %fh, %struct.ssioffset_s* %offset) #6
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %f = getelementptr inbounds %struct.hmmfile_s* %hmmfp, i64 0, i32 0
  %1 = load %struct._IO_FILE** %f, align 8, !tbaa !3
  %call5 = call i32 @SSISetFilePosition(%struct._IO_FILE* %1, %struct.ssioffset_s* %offset) #6
  %cmp6 = icmp eq i32 %call5, 0
  %. = zext i1 %cmp6 to i32
  br label %return

return:                                           ; preds = %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @SSIGetOffsetByNumber(%struct.ssifile_s*, i32, i32*, %struct.ssioffset_s*) #2

; Function Attrs: nounwind optsize uwtable
define void @WriteAscHMM(%struct._IO_FILE* %fp, %struct.plan7_s* %hmm) #0 {
entry:
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)) #6
  %name = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0
  %0 = load i8** %name, align 8, !tbaa !3
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str13, i64 0, i64 0), i8* %0) #6
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %1, 512
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %acc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 1
  %2 = load i8** %acc, align 8, !tbaa !3
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0), i8* %2) #6
  %.pre = load i32* %flags, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %3 = phi i32 [ %1, %entry ], [ %.pre, %if.then ]
  %and4 = and i32 %3, 2
  %tobool5 = icmp eq i32 %and4, 0
  br i1 %tobool5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %desc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 2
  %4 = load i8** %desc, align 8, !tbaa !3
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str15, i64 0, i64 0), i8* %4) #6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then6
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %5 = load i32* %M, align 4, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i32 %5) #6
  %6 = load i32* @Alphabet_type, align 4, !tbaa !0
  %cmp = icmp eq i32 %6, 3
  %cond = select i1 %cmp, i8* getelementptr inbounds ([6 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0)
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0), i8* %cond) #6
  %7 = load i32* %flags, align 4, !tbaa !0
  %and12 = and i32 %7, 4
  %tobool13 = icmp ne i32 %and12, 0
  %cond14 = select i1 %tobool13, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str22, i64 0, i64 0)
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str20, i64 0, i64 0), i8* %cond14) #6
  %8 = load i32* %flags, align 4, !tbaa !0
  %and17 = and i32 %8, 8
  %tobool18 = icmp ne i32 %and17, 0
  %cond19 = select i1 %tobool18, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str22, i64 0, i64 0)
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str23, i64 0, i64 0), i8* %cond19) #6
  %9 = load i32* %flags, align 4, !tbaa !0
  %and22 = and i32 %9, 256
  %tobool23 = icmp ne i32 %and22, 0
  %cond24 = select i1 %tobool23, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str22, i64 0, i64 0)
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str24, i64 0, i64 0), i8* %cond24) #6
  %comlog = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 6
  %10 = load i8** %comlog, align 8, !tbaa !3
  %cmp.i = icmp eq i8* %10, null
  br i1 %cmp.i, label %multiline.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end8
  %call.i = tail call i8* @Strdup(i8* %10) #6
  %call1.i = tail call i8* @strtok(i8* %call.i, i8* getelementptr inbounds ([2 x i8]* @.str34, i64 0, i64 0)) #6
  %cmp21.i = icmp eq i8* %call1.i, null
  br i1 %cmp21.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %if.end.i, %while.body.i
  %sptr.02.i = phi i8* [ %call4.i, %while.body.i ], [ %call1.i, %if.end.i ]
  %call3.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str25, i64 0, i64 0), i8* %sptr.02.i) #6
  %call4.i = tail call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str34, i64 0, i64 0)) #6
  %cmp2.i = icmp eq i8* %call4.i, null
  br i1 %cmp2.i, label %while.end.i, label %while.body.i

while.end.i:                                      ; preds = %while.body.i, %if.end.i
  tail call void @free(i8* %call.i) #6
  br label %multiline.exit

multiline.exit:                                   ; preds = %if.end8, %while.end.i
  %nseq = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 7
  %11 = load i32* %nseq, align 4, !tbaa !0
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str26, i64 0, i64 0), i32 %11) #6
  %ctime = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 8
  %12 = load i8** %ctime, align 8, !tbaa !3
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str27, i64 0, i64 0), i8* %12) #6
  %checksum = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 10
  %13 = load i32* %checksum, align 4, !tbaa !0
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str28, i64 0, i64 0), i32 %13) #6
  %14 = load i32* %flags, align 4, !tbaa !0
  %and30 = and i32 %14, 1024
  %tobool31 = icmp eq i32 %and30, 0
  br i1 %tobool31, label %if.end35, label %if.then32

if.then32:                                        ; preds = %multiline.exit
  %ga1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 14
  %15 = load float* %ga1, align 4, !tbaa !4
  %conv = fpext float %15 to double
  %ga2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 15
  %16 = load float* %ga2, align 4, !tbaa !4
  %conv33 = fpext float %16 to double
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str29, i64 0, i64 0), double %conv, double %conv33) #6
  %.pre387 = load i32* %flags, align 4, !tbaa !0
  br label %if.end35

if.end35:                                         ; preds = %multiline.exit, %if.then32
  %17 = phi i32 [ %14, %multiline.exit ], [ %.pre387, %if.then32 ]
  %and37 = and i32 %17, 2048
  %tobool38 = icmp eq i32 %and37, 0
  br i1 %tobool38, label %if.end43, label %if.then39

if.then39:                                        ; preds = %if.end35
  %tc1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 16
  %18 = load float* %tc1, align 4, !tbaa !4
  %conv40 = fpext float %18 to double
  %tc2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 17
  %19 = load float* %tc2, align 4, !tbaa !4
  %conv41 = fpext float %19 to double
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str30, i64 0, i64 0), double %conv40, double %conv41) #6
  %.pre388 = load i32* %flags, align 4, !tbaa !0
  br label %if.end43

if.end43:                                         ; preds = %if.end35, %if.then39
  %20 = phi i32 [ %17, %if.end35 ], [ %.pre388, %if.then39 ]
  %and45 = and i32 %20, 4096
  %tobool46 = icmp eq i32 %and45, 0
  br i1 %tobool46, label %if.end51, label %if.then47

if.then47:                                        ; preds = %if.end43
  %nc1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 18
  %21 = load float* %nc1, align 4, !tbaa !4
  %conv48 = fpext float %21 to double
  %nc2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 19
  %22 = load float* %nc2, align 4, !tbaa !4
  %conv49 = fpext float %22 to double
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str31, i64 0, i64 0), double %conv48, double %conv49) #6
  br label %if.end51

if.end51:                                         ; preds = %if.end43, %if.then47
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str32, i64 0, i64 0), i64 7, i64 1, %struct._IO_FILE* %fp) #1
  br label %for.cond55.preheader

for.cond55.preheader:                             ; preds = %for.inc63, %if.end51
  %indvars.iv383 = phi i64 [ 0, %if.end51 ], [ %indvars.iv.next384, %for.inc63 ]
  br label %for.body58

for.body58:                                       ; preds = %for.body58, %for.cond55.preheader
  %indvars.iv379 = phi i64 [ 0, %for.cond55.preheader ], [ %indvars.iv.next380, %for.body58 ]
  %arrayidx60 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 %indvars.iv383, i64 %indvars.iv379
  %24 = load float* %arrayidx60, align 4, !tbaa !4
  %call61 = tail call fastcc i8* @prob2ascii(float %24, float 1.000000e+00) #8
  %call62 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %call61) #6
  %indvars.iv.next380 = add i64 %indvars.iv379, 1
  %lftr.wideiv381 = trunc i64 %indvars.iv.next380 to i32
  %exitcond382 = icmp eq i32 %lftr.wideiv381, 2
  br i1 %exitcond382, label %for.inc63, label %for.body58

for.inc63:                                        ; preds = %for.body58
  %indvars.iv.next384 = add i64 %indvars.iv383, 1
  %lftr.wideiv385 = trunc i64 %indvars.iv.next384 to i32
  %exitcond386 = icmp eq i32 %lftr.wideiv385, 4
  br i1 %exitcond386, label %for.end65, label %for.cond55.preheader

for.end65:                                        ; preds = %for.inc63
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %25 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %fp) #1
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29
  %26 = load float* %p1, align 4, !tbaa !4
  %call68 = tail call fastcc i8* @prob2ascii(float %26, float 1.000000e+00) #8
  %call69 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %call68) #6
  %27 = load float* %p1, align 4, !tbaa !4
  %conv72 = fsub float 1.000000e+00, %27
  %call73 = tail call fastcc i8* @prob2ascii(float %conv72, float 1.000000e+00) #8
  %call74 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0), i8* %call73) #6
  %28 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str37, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %fp) #1
  %29 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp77365 = icmp sgt i32 %29, 0
  br i1 %cmp77365, label %for.body79, label %for.end87

for.body79:                                       ; preds = %for.end65, %for.body79
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %for.body79 ], [ 0, %for.end65 ]
  %30 = phi i32 [ %32, %for.body79 ], [ %29, %for.end65 ]
  %arrayidx81 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 %indvars.iv377
  %31 = load float* %arrayidx81, align 4, !tbaa !4
  %conv82 = sitofp i32 %30 to float
  %div = fdiv float 1.000000e+00, %conv82
  %call83 = tail call fastcc i8* @prob2ascii(float %31, float %div) #8
  %call84 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %call83) #6
  %indvars.iv.next378 = add i64 %indvars.iv377, 1
  %32 = load i32* @Alphabet_size, align 4, !tbaa !0
  %33 = trunc i64 %indvars.iv.next378 to i32
  %cmp77 = icmp slt i32 %33, %32
  br i1 %cmp77, label %for.body79, label %for.end87

for.end87:                                        ; preds = %for.body79, %for.end65
  %fputc343 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %34 = load i32* %flags, align 4, !tbaa !0
  %and90 = and i32 %34, 128
  %tobool91 = icmp eq i32 %and90, 0
  br i1 %tobool91, label %if.end96, label %if.then92

if.then92:                                        ; preds = %for.end87
  %mu = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 45
  %35 = load float* %mu, align 4, !tbaa !4
  %conv93 = fpext float %35 to double
  %lambda = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 46
  %36 = load float* %lambda, align 4, !tbaa !4
  %conv94 = fpext float %36 to double
  %call95 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0), double %conv93, double %conv94) #6
  br label %if.end96

if.end96:                                         ; preds = %for.end87, %if.then92
  %37 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str39, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %fp) #1
  %38 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp99363 = icmp sgt i32 %38, 0
  br i1 %cmp99363, label %for.body101, label %for.end108

for.body101:                                      ; preds = %if.end96, %for.body101
  %indvars.iv375 = phi i64 [ %indvars.iv.next376, %for.body101 ], [ 0, %if.end96 ]
  %arrayidx103 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %indvars.iv375
  %39 = load i8* %arrayidx103, align 1, !tbaa !1
  %conv104 = sext i8 %39 to i32
  %call105 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str40, i64 0, i64 0), i32 %conv104) #6
  %indvars.iv.next376 = add i64 %indvars.iv375, 1
  %40 = load i32* @Alphabet_size, align 4, !tbaa !0
  %41 = trunc i64 %indvars.iv.next376 to i32
  %cmp99 = icmp slt i32 %41, %40
  br i1 %cmp99, label %for.body101, label %for.end108

for.end108:                                       ; preds = %for.body101, %if.end96
  %fputc346 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %call110 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([44 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str50, i64 0, i64 0)) #6
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24
  %42 = load float* %tbd1, align 4, !tbaa !4
  %sub111 = fsub float 1.000000e+00, %42
  %call112 = tail call fastcc i8* @prob2ascii(float %sub111, float 1.000000e+00) #8
  %call113 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str51, i64 0, i64 0), i8* %call112, i8* getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0)) #6
  %43 = load float* %tbd1, align 4, !tbaa !4
  %call115 = tail call fastcc i8* @prob2ascii(float %43, float 1.000000e+00) #8
  %call116 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0), i8* %call115) #6
  %44 = load i32* %M, align 4, !tbaa !0
  %cmp119361 = icmp slt i32 %44, 1
  br i1 %cmp119361, label %for.end222, label %for.body121.lr.ph

for.body121.lr.ph:                                ; preds = %for.end108
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  %cs = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 4
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23
  %rf = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 3
  %map = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 9
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  br label %for.body121

for.body121:                                      ; preds = %for.end210, %for.body121.lr.ph
  %indvars.iv373 = phi i64 [ %indvars.iv.next374, %for.end210 ], [ 1, %for.body121.lr.ph ]
  %45 = trunc i64 %indvars.iv373 to i32
  %call122 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str53, i64 0, i64 0), i32 %45) #6
  %46 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp124356 = icmp sgt i32 %46, 0
  br i1 %cmp124356, label %for.body126, label %for.end138

for.body126:                                      ; preds = %for.body121, %for.body126
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body126 ], [ 0, %for.body121 ]
  %47 = load float*** %mat, align 8, !tbaa !3
  %arrayidx129 = getelementptr inbounds float** %47, i64 %indvars.iv373
  %48 = load float** %arrayidx129, align 8, !tbaa !3
  %arrayidx130 = getelementptr inbounds float* %48, i64 %indvars.iv
  %49 = load float* %arrayidx130, align 4, !tbaa !4
  %arrayidx133 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 %indvars.iv
  %50 = load float* %arrayidx133, align 4, !tbaa !4
  %call134 = tail call fastcc i8* @prob2ascii(float %49, float %50) #8
  %call135 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %call134) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %51 = load i32* @Alphabet_size, align 4, !tbaa !0
  %52 = trunc i64 %indvars.iv.next to i32
  %cmp124 = icmp slt i32 %52, %51
  br i1 %cmp124, label %for.body126, label %for.end138

for.end138:                                       ; preds = %for.body126, %for.body121
  %53 = load i32* %flags, align 4, !tbaa !0
  %and140 = and i32 %53, 256
  %tobool141 = icmp eq i32 %and140, 0
  br i1 %tobool141, label %if.end146, label %if.then142

if.then142:                                       ; preds = %for.end138
  %54 = load i32** %map, align 8, !tbaa !3
  %arrayidx144 = getelementptr inbounds i32* %54, i64 %indvars.iv373
  %55 = load i32* %arrayidx144, align 4, !tbaa !0
  %call145 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str54, i64 0, i64 0), i32 %55) #6
  br label %if.end146

if.end146:                                        ; preds = %for.end138, %if.then142
  %fputc349 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %56 = load i32* %flags, align 4, !tbaa !0
  %and149 = and i32 %56, 4
  %tobool150 = icmp eq i32 %and149, 0
  br i1 %tobool150, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end146
  %57 = load i8** %rf, align 8, !tbaa !3
  %arrayidx152 = getelementptr inbounds i8* %57, i64 %indvars.iv373
  %58 = load i8* %arrayidx152, align 1, !tbaa !1
  %conv153 = sext i8 %58 to i32
  br label %cond.end

cond.end:                                         ; preds = %if.end146, %cond.true
  %cond154 = phi i32 [ %conv153, %cond.true ], [ 45, %if.end146 ]
  %call155 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str55, i64 0, i64 0), i32 %cond154) #6
  %59 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp157358 = icmp sgt i32 %59, 0
  br i1 %cmp157358, label %for.body159, label %for.end178

for.body159:                                      ; preds = %cond.end, %cond.end173
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %cond.end173 ], [ 0, %cond.end ]
  %60 = load i32* %M, align 4, !tbaa !0
  %cmp161 = icmp slt i32 %45, %60
  br i1 %cmp161, label %cond.true163, label %cond.end173

cond.true163:                                     ; preds = %for.body159
  %61 = load float*** %ins, align 8, !tbaa !3
  %arrayidx166 = getelementptr inbounds float** %61, i64 %indvars.iv373
  %62 = load float** %arrayidx166, align 8, !tbaa !3
  %arrayidx167 = getelementptr inbounds float* %62, i64 %indvars.iv369
  %63 = load float* %arrayidx167, align 4, !tbaa !4
  %arrayidx170 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 %indvars.iv369
  %64 = load float* %arrayidx170, align 4, !tbaa !4
  %call171 = tail call fastcc i8* @prob2ascii(float %63, float %64) #8
  br label %cond.end173

cond.end173:                                      ; preds = %for.body159, %cond.true163
  %cond174 = phi i8* [ %call171, %cond.true163 ], [ getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), %for.body159 ]
  %call175 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %cond174) #6
  %indvars.iv.next370 = add i64 %indvars.iv369, 1
  %65 = load i32* @Alphabet_size, align 4, !tbaa !0
  %66 = trunc i64 %indvars.iv.next370 to i32
  %cmp157 = icmp slt i32 %66, %65
  br i1 %cmp157, label %for.body159, label %for.end178

for.end178:                                       ; preds = %cond.end173, %cond.end
  %fputc352 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %67 = load i32* %flags, align 4, !tbaa !0
  %and181 = and i32 %67, 8
  %tobool182 = icmp eq i32 %and181, 0
  br i1 %tobool182, label %cond.end188, label %cond.true183

cond.true183:                                     ; preds = %for.end178
  %68 = load i8** %cs, align 8, !tbaa !3
  %arrayidx185 = getelementptr inbounds i8* %68, i64 %indvars.iv373
  %69 = load i8* %arrayidx185, align 1, !tbaa !1
  %conv186 = sext i8 %69 to i32
  br label %cond.end188

cond.end188:                                      ; preds = %for.end178, %cond.true183
  %cond189 = phi i32 [ %conv186, %cond.true183 ], [ 45, %for.end178 ]
  %call190 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str55, i64 0, i64 0), i32 %cond189) #6
  br label %for.body194

for.body194:                                      ; preds = %cond.end205, %cond.end188
  %indvars.iv371 = phi i64 [ 0, %cond.end188 ], [ %indvars.iv.next372, %cond.end205 ]
  %70 = load i32* %M, align 4, !tbaa !0
  %cmp196 = icmp slt i32 %45, %70
  br i1 %cmp196, label %cond.true198, label %cond.end205

cond.true198:                                     ; preds = %for.body194
  %71 = load float*** %t, align 8, !tbaa !3
  %arrayidx201 = getelementptr inbounds float** %71, i64 %indvars.iv373
  %72 = load float** %arrayidx201, align 8, !tbaa !3
  %arrayidx202 = getelementptr inbounds float* %72, i64 %indvars.iv371
  %73 = load float* %arrayidx202, align 4, !tbaa !4
  %call203 = tail call fastcc i8* @prob2ascii(float %73, float 1.000000e+00) #8
  br label %cond.end205

cond.end205:                                      ; preds = %for.body194, %cond.true198
  %cond206 = phi i8* [ %call203, %cond.true198 ], [ getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), %for.body194 ]
  %call207 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %cond206) #6
  %indvars.iv.next372 = add i64 %indvars.iv371, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next372 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 7
  br i1 %exitcond, label %for.end210, label %for.body194

for.end210:                                       ; preds = %cond.end205
  %74 = load float** %begin, align 8, !tbaa !3
  %arrayidx212 = getelementptr inbounds float* %74, i64 %indvars.iv373
  %75 = load float* %arrayidx212, align 4, !tbaa !4
  %call213 = tail call fastcc i8* @prob2ascii(float %75, float 1.000000e+00) #8
  %call214 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %call213) #6
  %76 = load float** %end, align 8, !tbaa !3
  %arrayidx216 = getelementptr inbounds float* %76, i64 %indvars.iv373
  %77 = load float* %arrayidx216, align 4, !tbaa !4
  %call217 = tail call fastcc i8* @prob2ascii(float %77, float 1.000000e+00) #8
  %call218 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* %call217) #6
  %fputc355 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %indvars.iv.next374 = add i64 %indvars.iv373, 1
  %78 = load i32* %M, align 4, !tbaa !0
  %cmp119 = icmp slt i32 %45, %78
  br i1 %cmp119, label %for.body121, label %for.end222

for.end222:                                       ; preds = %for.end210, %for.end108
  %79 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str56, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp) #1
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @prob2ascii(float %p, float %null) #0 {
entry:
  %cmp = fcmp oeq float %p, 0.000000e+00
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @Prob2Score(float %p, float %null) #6
  %call2 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([8 x i8]* @prob2ascii.buffer, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str58, i64 0, i64 0), i32 %call) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ getelementptr inbounds ([8 x i8]* @prob2ascii.buffer, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([2 x i8]* @.str52, i64 0, i64 0), %entry ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @WriteBinHMM(%struct._IO_FILE* %fp, %struct.plan7_s* %hmm) #0 {
entry:
  %call = tail call i64 @fwrite(i8* bitcast (i32* @v20magic to i8*), i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %0 = bitcast i32* %flags to i8*
  %call1 = tail call i64 @fwrite(i8* %0, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %name = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0
  %1 = load i8** %name, align 8, !tbaa !3
  tail call fastcc void @write_bin_string(%struct._IO_FILE* %fp, i8* %1) #8
  %2 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %2, 512
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %acc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 1
  %3 = load i8** %acc, align 8, !tbaa !3
  tail call fastcc void @write_bin_string(%struct._IO_FILE* %fp, i8* %3) #8
  %.pre = load i32* %flags, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %4 = phi i32 [ %2, %entry ], [ %.pre, %if.then ]
  %and4 = and i32 %4, 2
  %tobool5 = icmp eq i32 %and4, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  %desc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 2
  %5 = load i8** %desc, align 8, !tbaa !3
  tail call fastcc void @write_bin_string(%struct._IO_FILE* %fp, i8* %5) #8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then6
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %6 = bitcast i32* %M to i8*
  %call8 = tail call i64 @fwrite(i8* %6, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %call9 = tail call i64 @fwrite(i8* bitcast (i32* @Alphabet_type to i8*), i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %7 = load i32* %flags, align 4, !tbaa !0
  %and11 = and i32 %7, 4
  %tobool12 = icmp eq i32 %and11, 0
  br i1 %tobool12, label %if.end16, label %if.then13

if.then13:                                        ; preds = %if.end7
  %rf = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 3
  %8 = load i8** %rf, align 8, !tbaa !3
  %9 = load i32* %M, align 4, !tbaa !0
  %add = add nsw i32 %9, 1
  %conv = sext i32 %add to i64
  %call15 = tail call i64 @fwrite(i8* %8, i64 1, i64 %conv, %struct._IO_FILE* %fp) #6
  %.pre214 = load i32* %flags, align 4, !tbaa !0
  br label %if.end16

if.end16:                                         ; preds = %if.end7, %if.then13
  %10 = phi i32 [ %7, %if.end7 ], [ %.pre214, %if.then13 ]
  %and18 = and i32 %10, 8
  %tobool19 = icmp eq i32 %and18, 0
  br i1 %tobool19, label %if.end25, label %if.then20

if.then20:                                        ; preds = %if.end16
  %cs = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 4
  %11 = load i8** %cs, align 8, !tbaa !3
  %12 = load i32* %M, align 4, !tbaa !0
  %add22 = add nsw i32 %12, 1
  %conv23 = sext i32 %add22 to i64
  %call24 = tail call i64 @fwrite(i8* %11, i64 1, i64 %conv23, %struct._IO_FILE* %fp) #6
  %.pre215 = load i32* %flags, align 4, !tbaa !0
  br label %if.end25

if.end25:                                         ; preds = %if.end16, %if.then20
  %13 = phi i32 [ %10, %if.end16 ], [ %.pre215, %if.then20 ]
  %and27 = and i32 %13, 256
  %tobool28 = icmp eq i32 %and27, 0
  br i1 %tobool28, label %if.end34, label %if.then29

if.then29:                                        ; preds = %if.end25
  %map = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 9
  %14 = load i32** %map, align 8, !tbaa !3
  %15 = bitcast i32* %14 to i8*
  %16 = load i32* %M, align 4, !tbaa !0
  %add31 = add nsw i32 %16, 1
  %conv32 = sext i32 %add31 to i64
  %call33 = tail call i64 @fwrite(i8* %15, i64 4, i64 %conv32, %struct._IO_FILE* %fp) #6
  br label %if.end34

if.end34:                                         ; preds = %if.end25, %if.then29
  %comlog = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 6
  %17 = load i8** %comlog, align 8, !tbaa !3
  tail call fastcc void @write_bin_string(%struct._IO_FILE* %fp, i8* %17) #8
  %nseq = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 7
  %18 = bitcast i32* %nseq to i8*
  %call35 = tail call i64 @fwrite(i8* %18, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %ctime = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 8
  %19 = load i8** %ctime, align 8, !tbaa !3
  tail call fastcc void @write_bin_string(%struct._IO_FILE* %fp, i8* %19) #8
  %checksum = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 10
  %20 = bitcast i32* %checksum to i8*
  %call36 = tail call i64 @fwrite(i8* %20, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %21 = load i32* %flags, align 4, !tbaa !0
  %and38 = and i32 %21, 1024
  %tobool39 = icmp eq i32 %and38, 0
  br i1 %tobool39, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end34
  %ga1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 14
  %22 = bitcast float* %ga1 to i8*
  %call41 = tail call i64 @fwrite(i8* %22, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %ga2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 15
  %23 = bitcast float* %ga2 to i8*
  %call42 = tail call i64 @fwrite(i8* %23, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %.pre216 = load i32* %flags, align 4, !tbaa !0
  br label %if.end43

if.end43:                                         ; preds = %if.end34, %if.then40
  %24 = phi i32 [ %21, %if.end34 ], [ %.pre216, %if.then40 ]
  %and45 = and i32 %24, 2048
  %tobool46 = icmp eq i32 %and45, 0
  br i1 %tobool46, label %if.end50, label %if.then47

if.then47:                                        ; preds = %if.end43
  %tc1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 16
  %25 = bitcast float* %tc1 to i8*
  %call48 = tail call i64 @fwrite(i8* %25, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %tc2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 17
  %26 = bitcast float* %tc2 to i8*
  %call49 = tail call i64 @fwrite(i8* %26, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %.pre217 = load i32* %flags, align 4, !tbaa !0
  br label %if.end50

if.end50:                                         ; preds = %if.end43, %if.then47
  %27 = phi i32 [ %24, %if.end43 ], [ %.pre217, %if.then47 ]
  %and52 = and i32 %27, 4096
  %tobool53 = icmp eq i32 %and52, 0
  br i1 %tobool53, label %for.body, label %if.then54

if.then54:                                        ; preds = %if.end50
  %nc1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 18
  %28 = bitcast float* %nc1 to i8*
  %call55 = tail call i64 @fwrite(i8* %28, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %nc2 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 19
  %29 = bitcast float* %nc2 to i8*
  %call56 = tail call i64 @fwrite(i8* %29, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  br label %for.body

for.body:                                         ; preds = %if.then54, %if.end50, %for.body
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %for.body ], [ 0, %if.end50 ], [ 0, %if.then54 ]
  %arraydecay = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 %indvars.iv212, i64 0
  %30 = bitcast float* %arraydecay to i8*
  %call59 = tail call i64 @fwrite(i8* %30, i64 4, i64 2, %struct._IO_FILE* %fp) #6
  %indvars.iv.next213 = add i64 %indvars.iv212, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next213 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %p1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 29
  %31 = bitcast float* %p1 to i8*
  %call60 = tail call i64 @fwrite(i8* %31, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %arraydecay61 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 0
  %32 = bitcast float* %arraydecay61 to i8*
  %33 = load i32* @Alphabet_size, align 4, !tbaa !0
  %conv62 = sext i32 %33 to i64
  %call63 = tail call i64 @fwrite(i8* %32, i64 4, i64 %conv62, %struct._IO_FILE* %fp) #6
  %34 = load i32* %flags, align 4, !tbaa !0
  %and65 = and i32 %34, 128
  %tobool66 = icmp eq i32 %and65, 0
  br i1 %tobool66, label %if.end70, label %if.then67

if.then67:                                        ; preds = %for.end
  %mu = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 45
  %35 = bitcast float* %mu to i8*
  %call68 = tail call i64 @fwrite(i8* %35, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %lambda = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 46
  %36 = bitcast float* %lambda to i8*
  %call69 = tail call i64 @fwrite(i8* %36, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  br label %if.end70

if.end70:                                         ; preds = %for.end, %if.then67
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24
  %37 = bitcast float* %tbd1 to i8*
  %call71 = tail call i64 @fwrite(i8* %37, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %38 = load float** %begin, align 8, !tbaa !3
  %39 = bitcast float* %38 to i8*
  %40 = load i32* %M, align 4, !tbaa !0
  %add73 = add nsw i32 %40, 1
  %conv74 = sext i32 %add73 to i64
  %call75 = tail call i64 @fwrite(i8* %39, i64 4, i64 %conv74, %struct._IO_FILE* %fp) #6
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  %41 = load float** %end, align 8, !tbaa !3
  %42 = bitcast float* %41 to i8*
  %43 = load i32* %M, align 4, !tbaa !0
  %add77 = add nsw i32 %43, 1
  %conv78 = sext i32 %add77 to i64
  %call79 = tail call i64 @fwrite(i8* %42, i64 4, i64 %conv78, %struct._IO_FILE* %fp) #6
  %44 = load i32* %M, align 4, !tbaa !0
  %cmp82205 = icmp slt i32 %44, 1
  br i1 %cmp82205, label %for.end114, label %for.body84.lr.ph

for.body84.lr.ph:                                 ; preds = %if.end70
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  br label %for.body84

for.cond92.preheader:                             ; preds = %for.body84
  %cmp94203 = icmp sgt i32 %49, 1
  br i1 %cmp94203, label %for.body96.lr.ph, label %for.end114

for.body96.lr.ph:                                 ; preds = %for.cond92.preheader
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23
  br label %for.body96

for.body84:                                       ; preds = %for.body84, %for.body84.lr.ph
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %for.body84 ], [ 1, %for.body84.lr.ph ]
  %45 = load float*** %mat, align 8, !tbaa !3
  %arrayidx86 = getelementptr inbounds float** %45, i64 %indvars.iv210
  %46 = load float** %arrayidx86, align 8, !tbaa !3
  %47 = bitcast float* %46 to i8*
  %48 = load i32* @Alphabet_size, align 4, !tbaa !0
  %conv87 = sext i32 %48 to i64
  %call88 = tail call i64 @fwrite(i8* %47, i64 4, i64 %conv87, %struct._IO_FILE* %fp) #6
  %indvars.iv.next211 = add i64 %indvars.iv210, 1
  %49 = load i32* %M, align 4, !tbaa !0
  %50 = trunc i64 %indvars.iv210 to i32
  %cmp82 = icmp slt i32 %50, %49
  br i1 %cmp82, label %for.body84, label %for.cond92.preheader

for.cond104.preheader:                            ; preds = %for.body96
  %cmp106201 = icmp sgt i32 %55, 1
  br i1 %cmp106201, label %for.body108.lr.ph, label %for.end114

for.body108.lr.ph:                                ; preds = %for.cond104.preheader
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  br label %for.body108

for.body96:                                       ; preds = %for.body96.lr.ph, %for.body96
  %indvars.iv208 = phi i64 [ 1, %for.body96.lr.ph ], [ %indvars.iv.next209, %for.body96 ]
  %51 = load float*** %ins, align 8, !tbaa !3
  %arrayidx98 = getelementptr inbounds float** %51, i64 %indvars.iv208
  %52 = load float** %arrayidx98, align 8, !tbaa !3
  %53 = bitcast float* %52 to i8*
  %54 = load i32* @Alphabet_size, align 4, !tbaa !0
  %conv99 = sext i32 %54 to i64
  %call100 = tail call i64 @fwrite(i8* %53, i64 4, i64 %conv99, %struct._IO_FILE* %fp) #6
  %indvars.iv.next209 = add i64 %indvars.iv208, 1
  %55 = load i32* %M, align 4, !tbaa !0
  %56 = trunc i64 %indvars.iv.next209 to i32
  %cmp94 = icmp slt i32 %56, %55
  br i1 %cmp94, label %for.body96, label %for.cond104.preheader

for.body108:                                      ; preds = %for.body108.lr.ph, %for.body108
  %indvars.iv = phi i64 [ 1, %for.body108.lr.ph ], [ %indvars.iv.next, %for.body108 ]
  %57 = load float*** %t, align 8, !tbaa !3
  %arrayidx110 = getelementptr inbounds float** %57, i64 %indvars.iv
  %58 = load float** %arrayidx110, align 8, !tbaa !3
  %59 = bitcast float* %58 to i8*
  %call111 = tail call i64 @fwrite(i8* %59, i64 4, i64 7, %struct._IO_FILE* %fp) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %60 = load i32* %M, align 4, !tbaa !0
  %61 = trunc i64 %indvars.iv.next to i32
  %cmp106 = icmp slt i32 %61, %60
  br i1 %cmp106, label %for.body108, label %for.end114

for.end114:                                       ; preds = %if.end70, %for.cond92.preheader, %for.body108, %for.cond104.preheader
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @write_bin_string(%struct._IO_FILE* nocapture %fp, i8* %s) #0 {
entry:
  %len = alloca i32, align 4
  %cmp = icmp eq i8* %s, null
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @strlen(i8* %s) #7
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %len, align 4, !tbaa !0
  %0 = bitcast i32* %len to i8*
  %call1 = call i64 @fwrite(i8* %0, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %1 = load i32* %len, align 4, !tbaa !0
  %conv2 = sext i32 %1 to i64
  %call3 = call i64 @fwrite(i8* %s, i64 1, i64 %conv2, %struct._IO_FILE* %fp) #6
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %len, align 4, !tbaa !0
  %2 = bitcast i32* %len to i8*
  %call4 = call i64 @fwrite(i8* %2, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: optsize
declare i8* @Strdup(i8*) #2

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @Prob2Score(float, float) #2

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.plan9_s* @read_plan9_binhmm(%struct._IO_FILE* %fp, i32 %version, i32 %swapped) #0 {
entry:
  %M = alloca i32, align 4
  %len = alloca i32, align 4
  %asize = alloca i32, align 4
  %atype = alloca i32, align 4
  %abet = alloca [20 x i8], align 16
  %0 = bitcast i32* %M to i8*
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = bitcast i32* %asize to i8*
  %call1 = call i64 @fread(i8* %1, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %tobool2 = icmp eq i64 %call1, 0
  br i1 %tobool2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %tobool5 = icmp ne i32 %swapped, 0
  br i1 %tobool5, label %for.body.i, label %if.end7

for.body.i:                                       ; preds = %if.end4, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %if.end4 ]
  %2 = sub i64 3, %indvars.iv.i
  %arrayidx.i = getelementptr inbounds i8* %0, i64 %2
  %3 = load i8* %arrayidx.i, align 1, !tbaa !1
  %arrayidx3.i = getelementptr inbounds i8* %0, i64 %indvars.iv.i
  %4 = load i8* %arrayidx3.i, align 1, !tbaa !1
  store i8 %4, i8* %arrayidx.i, align 1, !tbaa !1
  store i8 %3, i8* %arrayidx3.i, align 1, !tbaa !1
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv604 = trunc i64 %indvars.iv.next.i to i32
  %exitcond605 = icmp eq i32 %lftr.wideiv604, 2
  br i1 %exitcond605, label %for.body.i560, label %for.body.i

for.body.i560:                                    ; preds = %for.body.i, %for.body.i560
  %indvars.iv.i554 = phi i64 [ %indvars.iv.next.i557, %for.body.i560 ], [ 0, %for.body.i ]
  %5 = sub i64 3, %indvars.iv.i554
  %arrayidx.i555 = getelementptr inbounds i8* %1, i64 %5
  %6 = load i8* %arrayidx.i555, align 1, !tbaa !1
  %arrayidx3.i556 = getelementptr inbounds i8* %1, i64 %indvars.iv.i554
  %7 = load i8* %arrayidx3.i556, align 1, !tbaa !1
  store i8 %7, i8* %arrayidx.i555, align 1, !tbaa !1
  store i8 %6, i8* %arrayidx3.i556, align 1, !tbaa !1
  %indvars.iv.next.i557 = add i64 %indvars.iv.i554, 1
  %lftr.wideiv602 = trunc i64 %indvars.iv.next.i557 to i32
  %exitcond603 = icmp eq i32 %lftr.wideiv602, 2
  br i1 %exitcond603, label %if.end7, label %for.body.i560

if.end7:                                          ; preds = %for.body.i560, %if.end4
  %8 = load i32* %asize, align 4, !tbaa !0
  switch i32 %8, label %if.else11 [
    i32 4, label %if.then8
    i32 20, label %if.then10
  ]

if.then8:                                         ; preds = %if.end7
  store i32 2, i32* %atype, align 4, !tbaa !0
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  store i32 3, i32* %atype, align 4, !tbaa !0
  br label %if.end13

if.else11:                                        ; preds = %if.end7
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([71 x i8]* @.str60, i64 0, i64 0), i32 %8) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.else11, %if.then8
  %9 = phi i32 [ 3, %if.then10 ], [ undef, %if.else11 ], [ 2, %if.then8 ]
  %10 = load i32* @Alphabet_type, align 4, !tbaa !0
  %cmp14 = icmp eq i32 %10, 0
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.end13
  call void @SetAlphabet(i32 %9) #6
  br label %if.end22

if.else16:                                        ; preds = %if.end13
  %cmp17 = icmp eq i32 %9, %10
  br i1 %cmp17, label %if.end22, label %if.then18

if.then18:                                        ; preds = %if.else16
  %call19 = call i8* @AlphabetType2String(i32 %10) #6
  %call20 = call i8* @AlphabetType2String(i32 %9) #6
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([89 x i8]* @.str61, i64 0, i64 0), i8* %call19, i8* %call20) #6
  br label %if.end22

if.end22:                                         ; preds = %if.else16, %if.then18, %if.then15
  %11 = load i32* %M, align 4, !tbaa !0
  %call23 = call %struct.plan9_s* @P9AllocHMM(i32 %11) #6
  %cmp24 = icmp eq %struct.plan9_s* %call23, null
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([34 x i8]* @.str62, i64 0, i64 0)) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22
  %cmp27 = icmp eq i32 %version, 7
  br i1 %cmp27, label %if.then28, label %if.end45

if.then28:                                        ; preds = %if.end26
  %12 = bitcast i32* %len to i8*
  %call29 = call i64 @fread(i8* %12, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %tobool30 = icmp eq i64 %call29, 0
  br i1 %tobool30, label %return, label %if.end32

if.end32:                                         ; preds = %if.then28
  br i1 %tobool5, label %for.body.i552, label %if.end35

for.body.i552:                                    ; preds = %if.end32, %for.body.i552
  %indvars.iv.i546 = phi i64 [ %indvars.iv.next.i549, %for.body.i552 ], [ 0, %if.end32 ]
  %13 = sub i64 3, %indvars.iv.i546
  %arrayidx.i547 = getelementptr inbounds i8* %12, i64 %13
  %14 = load i8* %arrayidx.i547, align 1, !tbaa !1
  %arrayidx3.i548 = getelementptr inbounds i8* %12, i64 %indvars.iv.i546
  %15 = load i8* %arrayidx3.i548, align 1, !tbaa !1
  store i8 %15, i8* %arrayidx.i547, align 1, !tbaa !1
  store i8 %14, i8* %arrayidx3.i548, align 1, !tbaa !1
  %indvars.iv.next.i549 = add i64 %indvars.iv.i546, 1
  %lftr.wideiv600 = trunc i64 %indvars.iv.next.i549 to i32
  %exitcond601 = icmp eq i32 %lftr.wideiv600, 2
  br i1 %exitcond601, label %if.end35, label %for.body.i552

if.end35:                                         ; preds = %for.body.i552, %if.end32
  %name = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 5
  %16 = load i8** %name, align 8, !tbaa !3
  %17 = load i32* %len, align 4, !tbaa !0
  %add = add nsw i32 %17, 1
  %conv = sext i32 %add to i64
  %call36 = call i8* @sre_realloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 1475, i8* %16, i64 %conv) #6
  store i8* %call36, i8** %name, align 8, !tbaa !3
  %conv39 = sext i32 %17 to i64
  %call40 = call i64 @fread(i8* %call36, i64 1, i64 %conv39, %struct._IO_FILE* %fp) #6
  %tobool41 = icmp eq i64 %call40, 0
  br i1 %tobool41, label %return, label %if.end43

if.end43:                                         ; preds = %if.end35
  %18 = load i8** %name, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %18, i64 %conv39
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %if.end26
  %19 = bitcast i32* %atype to i8*
  %call46 = call i64 @fread(i8* %19, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %tobool47 = icmp eq i64 %call46, 0
  br i1 %tobool47, label %return, label %if.end49

if.end49:                                         ; preds = %if.end45
  %arraydecay = getelementptr inbounds [20 x i8]* %abet, i64 0, i64 0
  %20 = load i32* @Alphabet_size, align 4, !tbaa !0
  %conv50 = sext i32 %20 to i64
  %call51 = call i64 @fread(i8* %arraydecay, i64 1, i64 %conv50, %struct._IO_FILE* %fp) #6
  %tobool52 = icmp eq i64 %call51, 0
  br i1 %tobool52, label %return, label %if.end54

if.end54:                                         ; preds = %if.end49
  %cmp55 = icmp eq i32 %version, 1
  br i1 %cmp55, label %if.end61.thread, label %if.end61

if.end61.thread:                                  ; preds = %if.end54
  %21 = load i32* @Alphabet_size, align 4, !tbaa !0
  %conv58 = sext i32 %21 to i64
  %mul59 = shl nsw i64 %conv58, 2
  %call60 = call i32 @fseek(%struct._IO_FILE* %fp, i64 %mul59, i32 1) #6
  br label %if.end105

if.end61:                                         ; preds = %if.end54
  %22 = and i32 %version, -3
  %23 = icmp eq i32 %22, 5
  br i1 %23, label %if.then66, label %if.end105

if.then66:                                        ; preds = %if.end61
  %flags = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 9
  %24 = bitcast i32* %flags to i8*
  %call67 = call i64 @fread(i8* %24, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %tobool68 = icmp eq i64 %call67, 0
  br i1 %tobool68, label %return, label %if.end70

if.end70:                                         ; preds = %if.then66
  br i1 %tobool5, label %for.body.i544, label %if.end74

for.body.i544:                                    ; preds = %if.end70, %for.body.i544
  %indvars.iv.i538 = phi i64 [ %indvars.iv.next.i541, %for.body.i544 ], [ 0, %if.end70 ]
  %25 = sub i64 3, %indvars.iv.i538
  %arrayidx.i539 = getelementptr inbounds i8* %24, i64 %25
  %26 = load i8* %arrayidx.i539, align 1, !tbaa !1
  %arrayidx3.i540 = getelementptr inbounds i8* %24, i64 %indvars.iv.i538
  %27 = load i8* %arrayidx3.i540, align 1, !tbaa !1
  store i8 %27, i8* %arrayidx.i539, align 1, !tbaa !1
  store i8 %26, i8* %arrayidx3.i540, align 1, !tbaa !1
  %indvars.iv.next.i541 = add i64 %indvars.iv.i538, 1
  %lftr.wideiv598 = trunc i64 %indvars.iv.next.i541 to i32
  %exitcond599 = icmp eq i32 %lftr.wideiv598, 2
  br i1 %exitcond599, label %if.end74, label %for.body.i544

if.end74:                                         ; preds = %for.body.i544, %if.end70
  %28 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %28, 1
  %tobool76 = icmp eq i32 %and, 0
  br i1 %tobool76, label %if.end74.if.end83_crit_edge, label %land.lhs.true

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  %M84.pre = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 0
  %ref87.pre = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 6
  br label %if.end83

land.lhs.true:                                    ; preds = %if.end74
  %ref = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 6
  %29 = load i8** %ref, align 8, !tbaa !3
  %M77 = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 0
  %30 = load i32* %M77, align 4, !tbaa !0
  %add78 = add nsw i32 %30, 1
  %conv79 = sext i32 %add78 to i64
  %call80 = call i64 @fread(i8* %29, i64 1, i64 %conv79, %struct._IO_FILE* %fp) #6
  %tobool81 = icmp eq i64 %call80, 0
  br i1 %tobool81, label %return, label %if.end83

if.end83:                                         ; preds = %if.end74.if.end83_crit_edge, %land.lhs.true
  %ref87.pre-phi = phi i8** [ %ref87.pre, %if.end74.if.end83_crit_edge ], [ %ref, %land.lhs.true ]
  %M84.pre-phi = phi i32* [ %M84.pre, %if.end74.if.end83_crit_edge ], [ %M77, %land.lhs.true ]
  %31 = load i32* %M84.pre-phi, align 4, !tbaa !0
  %add85 = add nsw i32 %31, 1
  %idxprom86 = sext i32 %add85 to i64
  %32 = load i8** %ref87.pre-phi, align 8, !tbaa !3
  %arrayidx88 = getelementptr inbounds i8* %32, i64 %idxprom86
  store i8 0, i8* %arrayidx88, align 1, !tbaa !1
  %33 = load i32* %flags, align 4, !tbaa !0
  %and90 = and i32 %33, 2
  %tobool91 = icmp eq i32 %and90, 0
  %cs103.pre = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 7
  br i1 %tobool91, label %if.end99, label %land.lhs.true92

land.lhs.true92:                                  ; preds = %if.end83
  %34 = load i8** %cs103.pre, align 8, !tbaa !3
  %35 = load i32* %M84.pre-phi, align 4, !tbaa !0
  %add94 = add nsw i32 %35, 1
  %conv95 = sext i32 %add94 to i64
  %call96 = call i64 @fread(i8* %34, i64 1, i64 %conv95, %struct._IO_FILE* %fp) #6
  %tobool97 = icmp eq i64 %call96, 0
  br i1 %tobool97, label %return, label %if.end99

if.end99:                                         ; preds = %if.end83, %land.lhs.true92
  %36 = load i32* %M84.pre-phi, align 4, !tbaa !0
  %add101 = add nsw i32 %36, 1
  %idxprom102 = sext i32 %add101 to i64
  %37 = load i8** %cs103.pre, align 8, !tbaa !3
  %arrayidx104 = getelementptr inbounds i8* %37, i64 %idxprom102
  store i8 0, i8* %arrayidx104, align 1, !tbaa !1
  br label %if.end105

if.end105:                                        ; preds = %if.end61.thread, %if.end61, %if.end99
  %null = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 4
  br i1 %cmp27, label %if.then108, label %if.else123

if.then108:                                       ; preds = %if.end105
  %38 = bitcast [20 x float]* %null to i8*
  %39 = load i32* @Alphabet_size, align 4, !tbaa !0
  %conv110 = sext i32 %39 to i64
  %call111 = call i64 @fread(i8* %38, i64 4, i64 %conv110, %struct._IO_FILE* %fp) #6
  %tobool112 = icmp eq i64 %call111, 0
  br i1 %tobool112, label %return, label %if.end114

if.end114:                                        ; preds = %if.then108
  %40 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp117568 = icmp sgt i32 %40, 0
  %or.cond = and i1 %tobool5, %cmp117568
  br i1 %or.cond, label %for.body, label %for.cond127.preheader

for.body:                                         ; preds = %if.end114, %byteswap.exit537
  %indvars.iv596 = phi i64 [ %indvars.iv.next597, %byteswap.exit537 ], [ 0, %if.end114 ]
  %arrayidx121 = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 4, i64 %indvars.iv596
  %41 = bitcast float* %arrayidx121 to i8*
  br label %for.body.i536

for.body.i536:                                    ; preds = %for.body.i536, %for.body
  %indvars.iv.i530 = phi i64 [ 0, %for.body ], [ %indvars.iv.next.i533, %for.body.i536 ]
  %42 = sub i64 3, %indvars.iv.i530
  %arrayidx.i531 = getelementptr inbounds i8* %41, i64 %42
  %43 = load i8* %arrayidx.i531, align 1, !tbaa !1
  %arrayidx3.i532 = getelementptr inbounds i8* %41, i64 %indvars.iv.i530
  %44 = load i8* %arrayidx3.i532, align 1, !tbaa !1
  store i8 %44, i8* %arrayidx.i531, align 1, !tbaa !1
  store i8 %43, i8* %arrayidx3.i532, align 1, !tbaa !1
  %indvars.iv.next.i533 = add i64 %indvars.iv.i530, 1
  %lftr.wideiv594 = trunc i64 %indvars.iv.next.i533 to i32
  %exitcond595 = icmp eq i32 %lftr.wideiv594, 2
  br i1 %exitcond595, label %byteswap.exit537, label %for.body.i536

byteswap.exit537:                                 ; preds = %for.body.i536
  %indvars.iv.next597 = add i64 %indvars.iv596, 1
  %45 = load i32* @Alphabet_size, align 4, !tbaa !0
  %46 = trunc i64 %indvars.iv.next597 to i32
  %cmp117 = icmp slt i32 %46, %45
  br i1 %cmp117, label %for.body, label %for.cond127.preheader

if.else123:                                       ; preds = %if.end105
  %arraydecay109 = getelementptr inbounds [20 x float]* %null, i64 0, i64 0
  call void @P9DefaultNullModel(float* %arraydecay109) #6
  br label %for.cond127.preheader

for.cond127.preheader:                            ; preds = %byteswap.exit537, %if.end114, %if.else123
  %M128 = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 0
  %47 = load i32* %M128, align 4, !tbaa !0
  %cmp129566 = icmp slt i32 %47, 0
  br i1 %cmp129566, label %for.end331, label %for.body131.lr.ph

for.body131.lr.ph:                                ; preds = %for.cond127.preheader
  %mat = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 2
  %del = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 3
  %ins = getelementptr inbounds %struct.plan9_s* %call23, i64 0, i32 1
  br label %for.body131

for.body131:                                      ; preds = %for.inc329, %for.body131.lr.ph
  %indvars.iv592 = phi i64 [ %indvars.iv.next593, %for.inc329 ], [ 0, %for.body131.lr.ph ]
  %48 = load %struct.basic_state** %mat, align 8, !tbaa !3
  %arrayidx134 = getelementptr inbounds %struct.basic_state* %48, i64 %indvars.iv592, i32 0, i64 0
  %49 = bitcast float* %arrayidx134 to i8*
  %call135 = call i64 @fread(i8* %49, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %tobool136 = icmp eq i64 %call135, 0
  br i1 %tobool136, label %return, label %if.end138

if.end138:                                        ; preds = %for.body131
  %50 = load %struct.basic_state** %mat, align 8, !tbaa !3
  %arrayidx143 = getelementptr inbounds %struct.basic_state* %50, i64 %indvars.iv592, i32 0, i64 2
  %51 = bitcast float* %arrayidx143 to i8*
  %call144 = call i64 @fread(i8* %51, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %tobool145 = icmp eq i64 %call144, 0
  br i1 %tobool145, label %return, label %if.end147

if.end147:                                        ; preds = %if.end138
  %52 = load %struct.basic_state** %mat, align 8, !tbaa !3
  %arrayidx152 = getelementptr inbounds %struct.basic_state* %52, i64 %indvars.iv592, i32 0, i64 1
  %53 = bitcast float* %arrayidx152 to i8*
  %call153 = call i64 @fread(i8* %53, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %tobool154 = icmp eq i64 %call153, 0
  br i1 %tobool154, label %return, label %if.end156

if.end156:                                        ; preds = %if.end147
  %54 = load %struct.basic_state** %mat, align 8, !tbaa !3
  %arraydecay160 = getelementptr inbounds %struct.basic_state* %54, i64 %indvars.iv592, i32 1, i64 0
  %55 = bitcast float* %arraydecay160 to i8*
  %56 = load i32* @Alphabet_size, align 4, !tbaa !0
  %conv161 = sext i32 %56 to i64
  %call162 = call i64 @fread(i8* %55, i64 4, i64 %conv161, %struct._IO_FILE* %fp) #6
  %tobool163 = icmp eq i64 %call162, 0
  br i1 %tobool163, label %return, label %if.end165

if.end165:                                        ; preds = %if.end156
  br i1 %tobool5, label %if.then167, label %if.end196

if.then167:                                       ; preds = %if.end165
  %57 = load %struct.basic_state** %mat, align 8, !tbaa !3
  %arrayidx172 = getelementptr inbounds %struct.basic_state* %57, i64 %indvars.iv592, i32 0, i64 0
  %58 = bitcast float* %arrayidx172 to i8*
  br label %for.body.i528

for.body.i528:                                    ; preds = %for.body.i528, %if.then167
  %indvars.iv.i522 = phi i64 [ 0, %if.then167 ], [ %indvars.iv.next.i525, %for.body.i528 ]
  %59 = sub i64 3, %indvars.iv.i522
  %arrayidx.i523 = getelementptr inbounds i8* %58, i64 %59
  %60 = load i8* %arrayidx.i523, align 1, !tbaa !1
  %arrayidx3.i524 = getelementptr inbounds i8* %58, i64 %indvars.iv.i522
  %61 = load i8* %arrayidx3.i524, align 1, !tbaa !1
  store i8 %61, i8* %arrayidx.i523, align 1, !tbaa !1
  store i8 %60, i8* %arrayidx3.i524, align 1, !tbaa !1
  %indvars.iv.next.i525 = add i64 %indvars.iv.i522, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i525 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %byteswap.exit529, label %for.body.i528

byteswap.exit529:                                 ; preds = %for.body.i528
  %62 = load %struct.basic_state** %mat, align 8, !tbaa !3
  %arrayidx177 = getelementptr inbounds %struct.basic_state* %62, i64 %indvars.iv592, i32 0, i64 2
  %63 = bitcast float* %arrayidx177 to i8*
  br label %for.body.i520

for.body.i520:                                    ; preds = %for.body.i520, %byteswap.exit529
  %indvars.iv.i514 = phi i64 [ 0, %byteswap.exit529 ], [ %indvars.iv.next.i517, %for.body.i520 ]
  %64 = sub i64 3, %indvars.iv.i514
  %arrayidx.i515 = getelementptr inbounds i8* %63, i64 %64
  %65 = load i8* %arrayidx.i515, align 1, !tbaa !1
  %arrayidx3.i516 = getelementptr inbounds i8* %63, i64 %indvars.iv.i514
  %66 = load i8* %arrayidx3.i516, align 1, !tbaa !1
  store i8 %66, i8* %arrayidx.i515, align 1, !tbaa !1
  store i8 %65, i8* %arrayidx3.i516, align 1, !tbaa !1
  %indvars.iv.next.i517 = add i64 %indvars.iv.i514, 1
  %lftr.wideiv570 = trunc i64 %indvars.iv.next.i517 to i32
  %exitcond571 = icmp eq i32 %lftr.wideiv570, 2
  br i1 %exitcond571, label %byteswap.exit521, label %for.body.i520

byteswap.exit521:                                 ; preds = %for.body.i520
  %67 = load %struct.basic_state** %mat, align 8, !tbaa !3
  %arrayidx182 = getelementptr inbounds %struct.basic_state* %67, i64 %indvars.iv592, i32 0, i64 1
  %68 = bitcast float* %arrayidx182 to i8*
  br label %for.body.i512

for.body.i512:                                    ; preds = %for.body.i512, %byteswap.exit521
  %indvars.iv.i506 = phi i64 [ 0, %byteswap.exit521 ], [ %indvars.iv.next.i509, %for.body.i512 ]
  %69 = sub i64 3, %indvars.iv.i506
  %arrayidx.i507 = getelementptr inbounds i8* %68, i64 %69
  %70 = load i8* %arrayidx.i507, align 1, !tbaa !1
  %arrayidx3.i508 = getelementptr inbounds i8* %68, i64 %indvars.iv.i506
  %71 = load i8* %arrayidx3.i508, align 1, !tbaa !1
  store i8 %71, i8* %arrayidx.i507, align 1, !tbaa !1
  store i8 %70, i8* %arrayidx3.i508, align 1, !tbaa !1
  %indvars.iv.next.i509 = add i64 %indvars.iv.i506, 1
  %lftr.wideiv572 = trunc i64 %indvars.iv.next.i509 to i32
  %exitcond573 = icmp eq i32 %lftr.wideiv572, 2
  br i1 %exitcond573, label %for.cond183.loopexit, label %for.body.i512

for.cond183.loopexit:                             ; preds = %for.body.i512
  %72 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp184562 = icmp sgt i32 %72, 0
  br i1 %cmp184562, label %for.body186, label %if.end196

for.body186:                                      ; preds = %for.cond183.loopexit, %byteswap.exit505
  %indvars.iv = phi i64 [ %indvars.iv.next, %byteswap.exit505 ], [ 0, %for.cond183.loopexit ]
  %73 = load %struct.basic_state** %mat, align 8, !tbaa !3
  %arrayidx192 = getelementptr inbounds %struct.basic_state* %73, i64 %indvars.iv592, i32 1, i64 %indvars.iv
  %74 = bitcast float* %arrayidx192 to i8*
  br label %for.body.i504

for.body.i504:                                    ; preds = %for.body.i504, %for.body186
  %indvars.iv.i498 = phi i64 [ 0, %for.body186 ], [ %indvars.iv.next.i501, %for.body.i504 ]
  %75 = sub i64 3, %indvars.iv.i498
  %arrayidx.i499 = getelementptr inbounds i8* %74, i64 %75
  %76 = load i8* %arrayidx.i499, align 1, !tbaa !1
  %arrayidx3.i500 = getelementptr inbounds i8* %74, i64 %indvars.iv.i498
  %77 = load i8* %arrayidx3.i500, align 1, !tbaa !1
  store i8 %77, i8* %arrayidx.i499, align 1, !tbaa !1
  store i8 %76, i8* %arrayidx3.i500, align 1, !tbaa !1
  %indvars.iv.next.i501 = add i64 %indvars.iv.i498, 1
  %lftr.wideiv574 = trunc i64 %indvars.iv.next.i501 to i32
  %exitcond575 = icmp eq i32 %lftr.wideiv574, 2
  br i1 %exitcond575, label %byteswap.exit505, label %for.body.i504

byteswap.exit505:                                 ; preds = %for.body.i504
  %indvars.iv.next = add i64 %indvars.iv, 1
  %78 = load i32* @Alphabet_size, align 4, !tbaa !0
  %79 = trunc i64 %indvars.iv.next to i32
  %cmp184 = icmp slt i32 %79, %78
  br i1 %cmp184, label %for.body186, label %if.end196

if.end196:                                        ; preds = %for.cond183.loopexit, %byteswap.exit505, %if.end165
  br i1 %cmp55, label %if.then199, label %if.end204

if.then199:                                       ; preds = %if.end196
  %80 = load i32* @Alphabet_size, align 4, !tbaa !0
  %add200 = add nsw i32 %80, 3
  %conv201 = sext i32 %add200 to i64
  %mul202 = shl nsw i64 %conv201, 2
  %call203 = call i32 @fseek(%struct._IO_FILE* %fp, i64 %mul202, i32 1) #6
  br label %if.end204

if.end204:                                        ; preds = %if.then199, %if.end196
  %81 = load %struct.basic_state** %del, align 8, !tbaa !3
  %arrayidx208 = getelementptr inbounds %struct.basic_state* %81, i64 %indvars.iv592, i32 0, i64 0
  %82 = bitcast float* %arrayidx208 to i8*
  %call209 = call i64 @fread(i8* %82, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %tobool210 = icmp eq i64 %call209, 0
  br i1 %tobool210, label %return, label %if.end212

if.end212:                                        ; preds = %if.end204
  %83 = load %struct.basic_state** %del, align 8, !tbaa !3
  %arrayidx217 = getelementptr inbounds %struct.basic_state* %83, i64 %indvars.iv592, i32 0, i64 2
  %84 = bitcast float* %arrayidx217 to i8*
  %call218 = call i64 @fread(i8* %84, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %tobool219 = icmp eq i64 %call218, 0
  br i1 %tobool219, label %return, label %if.end221

if.end221:                                        ; preds = %if.end212
  %85 = load %struct.basic_state** %del, align 8, !tbaa !3
  %arrayidx226 = getelementptr inbounds %struct.basic_state* %85, i64 %indvars.iv592, i32 0, i64 1
  %86 = bitcast float* %arrayidx226 to i8*
  %call227 = call i64 @fread(i8* %86, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %tobool228 = icmp eq i64 %call227, 0
  br i1 %tobool228, label %return, label %if.end230

if.end230:                                        ; preds = %if.end221
  br i1 %tobool5, label %if.then232, label %if.end248

if.then232:                                       ; preds = %if.end230
  %87 = load %struct.basic_state** %del, align 8, !tbaa !3
  %arrayidx237 = getelementptr inbounds %struct.basic_state* %87, i64 %indvars.iv592, i32 0, i64 0
  %88 = bitcast float* %arrayidx237 to i8*
  br label %for.body.i496

for.body.i496:                                    ; preds = %for.body.i496, %if.then232
  %indvars.iv.i490 = phi i64 [ 0, %if.then232 ], [ %indvars.iv.next.i493, %for.body.i496 ]
  %89 = sub i64 3, %indvars.iv.i490
  %arrayidx.i491 = getelementptr inbounds i8* %88, i64 %89
  %90 = load i8* %arrayidx.i491, align 1, !tbaa !1
  %arrayidx3.i492 = getelementptr inbounds i8* %88, i64 %indvars.iv.i490
  %91 = load i8* %arrayidx3.i492, align 1, !tbaa !1
  store i8 %91, i8* %arrayidx.i491, align 1, !tbaa !1
  store i8 %90, i8* %arrayidx3.i492, align 1, !tbaa !1
  %indvars.iv.next.i493 = add i64 %indvars.iv.i490, 1
  %lftr.wideiv576 = trunc i64 %indvars.iv.next.i493 to i32
  %exitcond577 = icmp eq i32 %lftr.wideiv576, 2
  br i1 %exitcond577, label %byteswap.exit497, label %for.body.i496

byteswap.exit497:                                 ; preds = %for.body.i496
  %92 = load %struct.basic_state** %del, align 8, !tbaa !3
  %arrayidx242 = getelementptr inbounds %struct.basic_state* %92, i64 %indvars.iv592, i32 0, i64 2
  %93 = bitcast float* %arrayidx242 to i8*
  br label %for.body.i488

for.body.i488:                                    ; preds = %for.body.i488, %byteswap.exit497
  %indvars.iv.i482 = phi i64 [ 0, %byteswap.exit497 ], [ %indvars.iv.next.i485, %for.body.i488 ]
  %94 = sub i64 3, %indvars.iv.i482
  %arrayidx.i483 = getelementptr inbounds i8* %93, i64 %94
  %95 = load i8* %arrayidx.i483, align 1, !tbaa !1
  %arrayidx3.i484 = getelementptr inbounds i8* %93, i64 %indvars.iv.i482
  %96 = load i8* %arrayidx3.i484, align 1, !tbaa !1
  store i8 %96, i8* %arrayidx.i483, align 1, !tbaa !1
  store i8 %95, i8* %arrayidx3.i484, align 1, !tbaa !1
  %indvars.iv.next.i485 = add i64 %indvars.iv.i482, 1
  %lftr.wideiv578 = trunc i64 %indvars.iv.next.i485 to i32
  %exitcond579 = icmp eq i32 %lftr.wideiv578, 2
  br i1 %exitcond579, label %byteswap.exit489, label %for.body.i488

byteswap.exit489:                                 ; preds = %for.body.i488
  %97 = load %struct.basic_state** %del, align 8, !tbaa !3
  %arrayidx247 = getelementptr inbounds %struct.basic_state* %97, i64 %indvars.iv592, i32 0, i64 1
  %98 = bitcast float* %arrayidx247 to i8*
  br label %for.body.i480

for.body.i480:                                    ; preds = %for.body.i480, %byteswap.exit489
  %indvars.iv.i474 = phi i64 [ 0, %byteswap.exit489 ], [ %indvars.iv.next.i477, %for.body.i480 ]
  %99 = sub i64 3, %indvars.iv.i474
  %arrayidx.i475 = getelementptr inbounds i8* %98, i64 %99
  %100 = load i8* %arrayidx.i475, align 1, !tbaa !1
  %arrayidx3.i476 = getelementptr inbounds i8* %98, i64 %indvars.iv.i474
  %101 = load i8* %arrayidx3.i476, align 1, !tbaa !1
  store i8 %101, i8* %arrayidx.i475, align 1, !tbaa !1
  store i8 %100, i8* %arrayidx3.i476, align 1, !tbaa !1
  %indvars.iv.next.i477 = add i64 %indvars.iv.i474, 1
  %lftr.wideiv580 = trunc i64 %indvars.iv.next.i477 to i32
  %exitcond581 = icmp eq i32 %lftr.wideiv580, 2
  br i1 %exitcond581, label %if.end248, label %for.body.i480

if.end248:                                        ; preds = %for.body.i480, %if.end230
  br i1 %cmp55, label %if.then251, label %if.end253

if.then251:                                       ; preds = %if.end248
  %call252 = call i32 @fseek(%struct._IO_FILE* %fp, i64 12, i32 1) #6
  br label %if.end253

if.end253:                                        ; preds = %if.then251, %if.end248
  %102 = load %struct.basic_state** %ins, align 8, !tbaa !3
  %arrayidx257 = getelementptr inbounds %struct.basic_state* %102, i64 %indvars.iv592, i32 0, i64 0
  %103 = bitcast float* %arrayidx257 to i8*
  %call258 = call i64 @fread(i8* %103, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %tobool259 = icmp eq i64 %call258, 0
  br i1 %tobool259, label %return, label %if.end261

if.end261:                                        ; preds = %if.end253
  %104 = load %struct.basic_state** %ins, align 8, !tbaa !3
  %arrayidx266 = getelementptr inbounds %struct.basic_state* %104, i64 %indvars.iv592, i32 0, i64 2
  %105 = bitcast float* %arrayidx266 to i8*
  %call267 = call i64 @fread(i8* %105, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %tobool268 = icmp eq i64 %call267, 0
  br i1 %tobool268, label %return, label %if.end270

if.end270:                                        ; preds = %if.end261
  %106 = load %struct.basic_state** %ins, align 8, !tbaa !3
  %arrayidx275 = getelementptr inbounds %struct.basic_state* %106, i64 %indvars.iv592, i32 0, i64 1
  %107 = bitcast float* %arrayidx275 to i8*
  %call276 = call i64 @fread(i8* %107, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %tobool277 = icmp eq i64 %call276, 0
  br i1 %tobool277, label %return, label %if.end279

if.end279:                                        ; preds = %if.end270
  %108 = load %struct.basic_state** %ins, align 8, !tbaa !3
  %arraydecay284 = getelementptr inbounds %struct.basic_state* %108, i64 %indvars.iv592, i32 1, i64 0
  %109 = bitcast float* %arraydecay284 to i8*
  %110 = load i32* @Alphabet_size, align 4, !tbaa !0
  %conv285 = sext i32 %110 to i64
  %call286 = call i64 @fread(i8* %109, i64 4, i64 %conv285, %struct._IO_FILE* %fp) #6
  %tobool287 = icmp eq i64 %call286, 0
  br i1 %tobool287, label %return, label %if.end289

if.end289:                                        ; preds = %if.end279
  br i1 %tobool5, label %if.then291, label %if.end320

if.then291:                                       ; preds = %if.end289
  %111 = load %struct.basic_state** %ins, align 8, !tbaa !3
  %arrayidx296 = getelementptr inbounds %struct.basic_state* %111, i64 %indvars.iv592, i32 0, i64 0
  %112 = bitcast float* %arrayidx296 to i8*
  br label %for.body.i472

for.body.i472:                                    ; preds = %for.body.i472, %if.then291
  %indvars.iv.i466 = phi i64 [ 0, %if.then291 ], [ %indvars.iv.next.i469, %for.body.i472 ]
  %113 = sub i64 3, %indvars.iv.i466
  %arrayidx.i467 = getelementptr inbounds i8* %112, i64 %113
  %114 = load i8* %arrayidx.i467, align 1, !tbaa !1
  %arrayidx3.i468 = getelementptr inbounds i8* %112, i64 %indvars.iv.i466
  %115 = load i8* %arrayidx3.i468, align 1, !tbaa !1
  store i8 %115, i8* %arrayidx.i467, align 1, !tbaa !1
  store i8 %114, i8* %arrayidx3.i468, align 1, !tbaa !1
  %indvars.iv.next.i469 = add i64 %indvars.iv.i466, 1
  %lftr.wideiv582 = trunc i64 %indvars.iv.next.i469 to i32
  %exitcond583 = icmp eq i32 %lftr.wideiv582, 2
  br i1 %exitcond583, label %byteswap.exit473, label %for.body.i472

byteswap.exit473:                                 ; preds = %for.body.i472
  %116 = load %struct.basic_state** %ins, align 8, !tbaa !3
  %arrayidx301 = getelementptr inbounds %struct.basic_state* %116, i64 %indvars.iv592, i32 0, i64 2
  %117 = bitcast float* %arrayidx301 to i8*
  br label %for.body.i464

for.body.i464:                                    ; preds = %for.body.i464, %byteswap.exit473
  %indvars.iv.i458 = phi i64 [ 0, %byteswap.exit473 ], [ %indvars.iv.next.i461, %for.body.i464 ]
  %118 = sub i64 3, %indvars.iv.i458
  %arrayidx.i459 = getelementptr inbounds i8* %117, i64 %118
  %119 = load i8* %arrayidx.i459, align 1, !tbaa !1
  %arrayidx3.i460 = getelementptr inbounds i8* %117, i64 %indvars.iv.i458
  %120 = load i8* %arrayidx3.i460, align 1, !tbaa !1
  store i8 %120, i8* %arrayidx.i459, align 1, !tbaa !1
  store i8 %119, i8* %arrayidx3.i460, align 1, !tbaa !1
  %indvars.iv.next.i461 = add i64 %indvars.iv.i458, 1
  %lftr.wideiv584 = trunc i64 %indvars.iv.next.i461 to i32
  %exitcond585 = icmp eq i32 %lftr.wideiv584, 2
  br i1 %exitcond585, label %byteswap.exit465, label %for.body.i464

byteswap.exit465:                                 ; preds = %for.body.i464
  %121 = load %struct.basic_state** %ins, align 8, !tbaa !3
  %arrayidx306 = getelementptr inbounds %struct.basic_state* %121, i64 %indvars.iv592, i32 0, i64 1
  %122 = bitcast float* %arrayidx306 to i8*
  br label %for.body.i456

for.body.i456:                                    ; preds = %for.body.i456, %byteswap.exit465
  %indvars.iv.i450 = phi i64 [ 0, %byteswap.exit465 ], [ %indvars.iv.next.i453, %for.body.i456 ]
  %123 = sub i64 3, %indvars.iv.i450
  %arrayidx.i451 = getelementptr inbounds i8* %122, i64 %123
  %124 = load i8* %arrayidx.i451, align 1, !tbaa !1
  %arrayidx3.i452 = getelementptr inbounds i8* %122, i64 %indvars.iv.i450
  %125 = load i8* %arrayidx3.i452, align 1, !tbaa !1
  store i8 %125, i8* %arrayidx.i451, align 1, !tbaa !1
  store i8 %124, i8* %arrayidx3.i452, align 1, !tbaa !1
  %indvars.iv.next.i453 = add i64 %indvars.iv.i450, 1
  %lftr.wideiv586 = trunc i64 %indvars.iv.next.i453 to i32
  %exitcond587 = icmp eq i32 %lftr.wideiv586, 2
  br i1 %exitcond587, label %for.cond307.loopexit, label %for.body.i456

for.cond307.loopexit:                             ; preds = %for.body.i456
  %126 = load i32* @Alphabet_size, align 4, !tbaa !0
  %cmp308564 = icmp sgt i32 %126, 0
  br i1 %cmp308564, label %for.body310, label %if.end320

for.body310:                                      ; preds = %for.cond307.loopexit, %byteswap.exit449
  %indvars.iv590 = phi i64 [ %indvars.iv.next591, %byteswap.exit449 ], [ 0, %for.cond307.loopexit ]
  %127 = load %struct.basic_state** %ins, align 8, !tbaa !3
  %arrayidx316 = getelementptr inbounds %struct.basic_state* %127, i64 %indvars.iv592, i32 1, i64 %indvars.iv590
  %128 = bitcast float* %arrayidx316 to i8*
  br label %for.body.i448

for.body.i448:                                    ; preds = %for.body.i448, %for.body310
  %indvars.iv.i442 = phi i64 [ 0, %for.body310 ], [ %indvars.iv.next.i445, %for.body.i448 ]
  %129 = sub i64 3, %indvars.iv.i442
  %arrayidx.i443 = getelementptr inbounds i8* %128, i64 %129
  %130 = load i8* %arrayidx.i443, align 1, !tbaa !1
  %arrayidx3.i444 = getelementptr inbounds i8* %128, i64 %indvars.iv.i442
  %131 = load i8* %arrayidx3.i444, align 1, !tbaa !1
  store i8 %131, i8* %arrayidx.i443, align 1, !tbaa !1
  store i8 %130, i8* %arrayidx3.i444, align 1, !tbaa !1
  %indvars.iv.next.i445 = add i64 %indvars.iv.i442, 1
  %lftr.wideiv588 = trunc i64 %indvars.iv.next.i445 to i32
  %exitcond589 = icmp eq i32 %lftr.wideiv588, 2
  br i1 %exitcond589, label %byteswap.exit449, label %for.body.i448

byteswap.exit449:                                 ; preds = %for.body.i448
  %indvars.iv.next591 = add i64 %indvars.iv590, 1
  %132 = load i32* @Alphabet_size, align 4, !tbaa !0
  %133 = trunc i64 %indvars.iv.next591 to i32
  %cmp308 = icmp slt i32 %133, %132
  br i1 %cmp308, label %for.body310, label %if.end320

if.end320:                                        ; preds = %for.cond307.loopexit, %byteswap.exit449, %if.end289
  br i1 %cmp55, label %if.then323, label %for.inc329

if.then323:                                       ; preds = %if.end320
  %134 = load i32* @Alphabet_size, align 4, !tbaa !0
  %add324 = add nsw i32 %134, 3
  %conv325 = sext i32 %add324 to i64
  %mul326 = shl nsw i64 %conv325, 2
  %call327 = call i32 @fseek(%struct._IO_FILE* %fp, i64 %mul326, i32 1) #6
  br label %for.inc329

for.inc329:                                       ; preds = %if.end320, %if.then323
  %indvars.iv.next593 = add i64 %indvars.iv592, 1
  %135 = load i32* %M128, align 4, !tbaa !0
  %136 = trunc i64 %indvars.iv592 to i32
  %cmp129 = icmp slt i32 %136, %135
  br i1 %cmp129, label %for.body131, label %for.end331

for.end331:                                       ; preds = %for.inc329, %for.cond127.preheader
  call void @P9Renormalize(%struct.plan9_s* %call23) #6
  br label %return

return:                                           ; preds = %if.end279, %if.end270, %if.end261, %if.end253, %if.end221, %if.end212, %if.end204, %if.end156, %if.end147, %if.end138, %for.body131, %if.then108, %land.lhs.true92, %land.lhs.true, %if.then66, %if.end49, %if.end45, %if.end35, %if.then28, %if.end, %entry, %for.end331
  %retval.0 = phi %struct.plan9_s* [ %call23, %for.end331 ], [ null, %entry ], [ null, %if.end ], [ null, %if.then28 ], [ null, %if.end35 ], [ null, %if.end45 ], [ null, %if.end49 ], [ null, %if.then66 ], [ null, %land.lhs.true ], [ null, %land.lhs.true92 ], [ null, %if.then108 ], [ null, %for.body131 ], [ null, %if.end138 ], [ null, %if.end147 ], [ null, %if.end156 ], [ null, %if.end204 ], [ null, %if.end212 ], [ null, %if.end221 ], [ null, %if.end253 ], [ null, %if.end261 ], [ null, %if.end270 ], [ null, %if.end279 ]
  ret %struct.plan9_s* %retval.0
}

; Function Attrs: optsize
declare void @Plan9toPlan7(%struct.plan9_s*, %struct.plan7_s**) #2

; Function Attrs: optsize
declare void @Plan7SetCtime(%struct.plan7_s*) #2

; Function Attrs: optsize
declare i32 @P9FreeHMM(%struct.plan9_s*) #2

; Function Attrs: optsize
declare void @SetAlphabet(i32) #2

; Function Attrs: optsize
declare i8* @AlphabetType2String(i32) #2

; Function Attrs: optsize
declare %struct.plan9_s* @P9AllocHMM(i32) #2

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #2

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) #3

; Function Attrs: optsize
declare void @P9DefaultNullModel(float*) #2

; Function Attrs: optsize
declare void @P9Renormalize(%struct.plan9_s*) #2

; Function Attrs: optsize
declare void @Plan7Renormalize(%struct.plan7_s*) #2

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #4

; Function Attrs: optsize
declare %struct.plan7_s* @AllocPlan7Shell() #2

; Function Attrs: optsize
declare i8* @Getword(%struct._IO_FILE*, i32) #2

; Function Attrs: optsize
declare void @Plan7SetName(%struct.plan7_s*, i8*) #2

; Function Attrs: optsize
declare void @s2upper(i8*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc float @ascii2prob(i8* nocapture %s, float %null) #0 {
entry:
  %0 = load i8* %s, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 42
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %call = tail call i32 @atoi(i8* %s) #7
  %call2 = tail call float @Score2Prob(i32 %call, float %null) #6
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi float [ %call2, %cond.false ], [ 0.000000e+00, %entry ]
  ret float %cond
}

; Function Attrs: optsize
declare void @AllocPlan7Body(%struct.plan7_s*, i32) #2

; Function Attrs: optsize
declare void @ZeroPlan7(%struct.plan7_s*) #2

; Function Attrs: optsize
declare void @Plan7LSConfig(%struct.plan7_s*) #2

; Function Attrs: optsize
declare void @FreePlan7(%struct.plan7_s*) #2

; Function Attrs: optsize
declare float @Score2Prob(i32, float) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @read_bin_string(%struct._IO_FILE* nocapture %fp, i32 %doswap, i8** nocapture %ret_s) #0 {
entry:
  %len = alloca i32, align 4
  %0 = bitcast i32* %len to i8*
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %fp) #6
  %tobool = icmp eq i64 %call, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %tobool1 = icmp eq i32 %doswap, 0
  br i1 %tobool1, label %if.end3, label %for.body.i

for.body.i:                                       ; preds = %if.end, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %if.end ]
  %1 = sub i64 3, %indvars.iv.i
  %arrayidx.i = getelementptr inbounds i8* %0, i64 %1
  %2 = load i8* %arrayidx.i, align 1, !tbaa !1
  %arrayidx3.i = getelementptr inbounds i8* %0, i64 %indvars.iv.i
  %3 = load i8* %arrayidx3.i, align 1, !tbaa !1
  store i8 %3, i8* %arrayidx.i, align 1, !tbaa !1
  store i8 %2, i8* %arrayidx3.i, align 1, !tbaa !1
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %if.end3, label %for.body.i

if.end3:                                          ; preds = %for.body.i, %if.end
  %4 = load i32* %len, align 4, !tbaa !0
  %conv = sext i32 %4 to i64
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 1370, i64 %conv) #6
  %call6 = call i64 @fread(i8* %call4, i64 1, i64 %conv, %struct._IO_FILE* %fp) #6
  %tobool7 = icmp eq i64 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end3
  call void @free(i8* %call4) #6
  br label %return

if.end9:                                          ; preds = %if.end3
  store i8* %call4, i8** %ret_s, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end9, %if.then8
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %if.then8 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @Plan7SetAccession(%struct.plan7_s*, i8*) #2

; Function Attrs: optsize
declare void @Plan7SetDescription(%struct.plan7_s*, i8*) #2

; Function Attrs: optsize
declare i32 @sre_toupper(i32) #2

; Function Attrs: optsize
declare void @StringChop(i8*) #2

; Function Attrs: nounwind optsize
declare i8* @strcat(i8*, i8* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
