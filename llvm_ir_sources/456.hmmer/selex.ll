; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct._IO_FILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ssifile_s = type { %struct._IO_FILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.aliinfo_s = type { i32, i32, i32, float*, i8*, i8*, %struct.seqinfo_s*, i8*, i8*, i8*, i8*, float, float, float, float, float, float }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct.block_struc = type { i32, i32 }

@.str = private unnamed_addr constant [72 x i8] c"Can't read a SELEX format alignment from a pipe, stdin, or gzip'ed file\00", align 1
@squid_errno = external global i32
@.str1 = private unnamed_addr constant [5 x i8] c"#=CS\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"#=RF\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@commentsyms = internal global [3 x i8] c"%#\00", align 1
@.str4 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"#=SS\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"#=SA\00", align 1
@.str7 = private unnamed_addr constant [27 x i8] c"Parse error in ReadSELEX()\00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c"#=AU\00", align 1
@.str9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"#=ID\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"#=AC\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"#=DE\00", align 1
@.str13 = private unnamed_addr constant [5 x i8] c"#=GA\00", align 1
@.str14 = private unnamed_addr constant [40 x i8] c"Parse error in #=GA line in ReadSELEX()\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"#=TC\00", align 1
@.str16 = private unnamed_addr constant [40 x i8] c"Parse error in #=TC line in ReadSELEX()\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"#=NC\00", align 1
@.str18 = private unnamed_addr constant [40 x i8] c"Parse error in #=NC line in ReadSELEX()\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"#=SQ\00", align 1
@.str20 = private unnamed_addr constant [40 x i8] c"Parse error in #=SQ line in ReadSELEX()\00", align 1
@.str21 = private unnamed_addr constant [64 x i8] c"Parse error in #=SQ line in ReadSELEX(): weight is not a number\00", align 1
@.str22 = private unnamed_addr constant [57 x i8] c"Parse error in #=SQ line in ReadSELEX(): incomplete line\00", align 1
@.str23 = private unnamed_addr constant [3 x i8] c".:\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c":\09 \00", align 1
@.str25 = private unnamed_addr constant [40 x i8] c"Parse error in #=CS line in ReadSELEX()\00", align 1
@.str26 = private unnamed_addr constant [40 x i8] c"Parse error in #=RF line in ReadSELEX()\00", align 1
@.str27 = private unnamed_addr constant [40 x i8] c"Parse error in #=SS line in ReadSELEX()\00", align 1
@.str28 = private unnamed_addr constant [40 x i8] c"Parse error in #=SA line in ReadSELEX()\00", align 1
@.str29 = private unnamed_addr constant [3 x i8] c"#=\00", align 1
@.str30 = private unnamed_addr constant [45 x i8] c"Parse error in alignment line in ReadSELEX()\00", align 1
@.str31 = private unnamed_addr constant [54 x i8] c"sequences may be in different orders in blocks of %s?\00", align 1
@.str32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str33 = private unnamed_addr constant [73 x i8] c"TAB characters will corrupt a SELEX alignment! Please remove them first.\00", align 1
@.str34 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str35 = private unnamed_addr constant [9 x i8] c"#=ID %s\0A\00", align 1
@.str36 = private unnamed_addr constant [9 x i8] c"#=AC %s\0A\00", align 1
@.str37 = private unnamed_addr constant [9 x i8] c"#=DE %s\0A\00", align 1
@.str38 = private unnamed_addr constant [9 x i8] c"#=AU %s\0A\00", align 1
@.str39 = private unnamed_addr constant [16 x i8] c"#=GA %.1f %.1f\0A\00", align 1
@.str40 = private unnamed_addr constant [11 x i8] c"#=GA %.1f\0A\00", align 1
@.str41 = private unnamed_addr constant [16 x i8] c"#=NC %.1f %.1f\0A\00", align 1
@.str42 = private unnamed_addr constant [11 x i8] c"#=NC %.1f\0A\00", align 1
@.str43 = private unnamed_addr constant [16 x i8] c"#=TC %.1f %.1f\0A\00", align 1
@.str44 = private unnamed_addr constant [11 x i8] c"#=TC %.1f\0A\00", align 1
@.str45 = private unnamed_addr constant [39 x i8] c"#=SQ %-*.*s %6.4f %s %s %d..%d::%d %s\0A\00", align 1
@.str46 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str47 = private unnamed_addr constant [11 x i8] c"%-*.*s %s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.msa_struct* @ReadSELEX(%struct.msafile_struct* nocapture %afp) #0 {
entry:
  %buffer = alloca [4096 x i8], align 16
  %bufcpy = alloca [4096 x i8], align 16
  %base_ainfo = alloca %struct.aliinfo_s, align 8
  %0 = getelementptr inbounds [4096 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #1
  %1 = getelementptr inbounds [4096 x i8]* %bufcpy, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #1
  %2 = bitcast %struct.aliinfo_s* %base_ainfo to i8*
  call void @llvm.lifetime.start(i64 104, i8* %2) #1
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0
  %3 = load %struct._IO_FILE** %f, align 8, !tbaa !0
  %call = call i32 @feof(%struct._IO_FILE* %3) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %do_gzip = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 6
  %4 = load i32* %do_gzip, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %4, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %do_stdin = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 7
  %5 = load i32* %do_stdin, align 4, !tbaa !3
  %tobool2 = icmp eq i32 %5, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0)) #6
  br label %if.end4

if.end4:                                          ; preds = %lor.lhs.false, %if.then3
  %6 = load %struct._IO_FILE** %f, align 8, !tbaa !0
  call void @InitAinfo(%struct.aliinfo_s* %base_ainfo) #6
  %call61321 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #6
  %cmp1322 = icmp eq i8* %call61321, null
  br i1 %cmp1322, label %if.then7, label %if.end8

if.then7:                                         ; preds = %do.body.backedge, %if.end4
  store i32 2, i32* @squid_errno, align 4, !tbaa !3
  br label %cleanup

if.end8:                                          ; preds = %if.end4, %do.body.backedge
  %have_rf.01324 = phi i32 [ %have_rf.1, %do.body.backedge ], [ 0, %if.end4 ]
  %have_cs.01323 = phi i32 [ %have_cs.1, %do.body.backedge ], [ 0, %if.end4 ]
  %call11 = call i8* @strcpy(i8* %1, i8* %0) #6
  %7 = load i8* %0, align 16, !tbaa !1
  %cmp13 = icmp eq i8 %7, 35
  br i1 %cmp13, label %if.then15, label %do.cond

if.then15:                                        ; preds = %if.end8
  %call17 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i64 4) #7
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %do.cond, label %if.else

if.else:                                          ; preds = %if.then15
  %call22 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i64 4) #7
  %cmp23 = icmp eq i32 %call22, 0
  %.have_rf.0 = select i1 %cmp23, i32 1, i32 %have_rf.01324
  br label %do.cond

do.cond:                                          ; preds = %if.else, %if.then15, %if.end8
  %have_cs.1 = phi i32 [ %have_cs.01323, %if.end8 ], [ 1, %if.then15 ], [ %have_cs.01323, %if.else ]
  %have_rf.1 = phi i32 [ %have_rf.01324, %if.end8 ], [ %have_rf.01324, %if.then15 ], [ %.have_rf.0, %if.else ]
  %call30 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp31 = icmp eq i8* %call30, null
  br i1 %cmp31, label %do.body.backedge, label %lor.rhs

do.body.backedge:                                 ; preds = %do.cond, %lor.rhs
  %call6 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #6
  %cmp = icmp eq i8* %call6, null
  br i1 %cmp, label %if.then7, label %if.end8

lor.rhs:                                          ; preds = %do.cond
  %8 = load i8* %call30, align 1, !tbaa !1
  %conv33 = sext i8 %8 to i32
  %call34 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %conv33) #7
  %cmp35 = icmp eq i8* %call34, null
  br i1 %cmp35, label %while.cond.preheader, label %do.body.backedge

while.cond.preheader:                             ; preds = %lor.rhs
  %call371306 = call i32 @feof(%struct._IO_FILE* %6) #6
  %lnot1307 = icmp eq i32 %call371306, 0
  br i1 %lnot1307, label %while.body.lr.ph, label %for.end243

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sqinfo = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 6
  %sub.ptr.rhs.cast = ptrtoint [4096 x i8]* %bufcpy to i64
  %sub.ptr.rhs.cast117 = ptrtoint [4096 x i8]* %buffer to i64
  br label %while.body

while.cond.loopexit:                              ; preds = %do.body205.backedge, %lor.rhs220, %if.end203
  %nptr.0.ph = phi i8* [ null, %if.end203 ], [ %call217, %lor.rhs220 ], [ null, %do.body205.backedge ]
  %call37 = call i32 @feof(%struct._IO_FILE* %6) #6
  %lnot = icmp eq i32 %call37, 0
  br i1 %lnot, label %while.body, label %for.cond228.preheader

for.cond228.preheader:                            ; preds = %while.cond.loopexit
  %cmp2291288 = icmp sgt i32 %blocknum.01310, -1
  br i1 %cmp2291288, label %for.body231, label %for.end243

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.loopexit
  %indvars.iv1358 = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next1359, %while.cond.loopexit ]
  %have_rf.21314 = phi i32 [ %have_rf.1, %while.body.lr.ph ], [ %have_rf.3.lcssa, %while.cond.loopexit ]
  %have_cs.21313 = phi i32 [ %have_cs.1, %while.body.lr.ph ], [ %have_cs.3.lcssa, %while.cond.loopexit ]
  %warn_names.01312 = phi i32 [ 0, %while.body.lr.ph ], [ %warn_names.1.lcssa, %while.cond.loopexit ]
  %nptr.01311 = phi i8* [ %call30, %while.body.lr.ph ], [ %nptr.0.ph, %while.cond.loopexit ]
  %blocknum.01310 = phi i32 [ 0, %while.body.lr.ph ], [ %inc204, %while.cond.loopexit ]
  %blocks.01309 = phi %struct.block_struc* [ null, %while.body.lr.ph ], [ %blocks.1, %while.cond.loopexit ]
  %num.01308 = phi i32 [ 0, %while.body.lr.ph ], [ %num.1, %while.cond.loopexit ]
  %9 = trunc i64 %indvars.iv1358 to i32
  %cmp39 = icmp eq i32 %9, 0
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %while.body
  %call42 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 151, i64 8) #6
  br label %if.end46

if.else43:                                        ; preds = %while.body
  %10 = bitcast %struct.block_struc* %blocks.01309 to i8*
  %11 = shl i64 %indvars.iv1358, 3
  %mul = add i64 %11, 8
  %call45 = call i8* @sre_realloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 153, i8* %10, i64 %mul) #6
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.then41
  %blocks.1.in = phi i8* [ %call42, %if.then41 ], [ %call45, %if.else43 ]
  %blocks.1 = bitcast i8* %blocks.1.in to %struct.block_struc*
  %lcol = getelementptr inbounds %struct.block_struc* %blocks.1, i64 %indvars.iv1358, i32 0
  store i32 4097, i32* %lcol, align 4, !tbaa !3
  %rcol = getelementptr inbounds %struct.block_struc* %blocks.1, i64 %indvars.iv1358, i32 1
  store i32 -1, i32* %rcol, align 4, !tbaa !3
  %cmp501292 = icmp eq i8* %nptr.01311, null
  br i1 %cmp501292, label %while.end, label %while.body52

while.body52:                                     ; preds = %do.cond189, %if.end46
  %indvars.iv1354 = phi i64 [ 0, %if.end46 ], [ %indvars.iv.next1355, %do.cond189 ]
  %have_rf.31297 = phi i32 [ %have_rf.21314, %if.end46 ], [ %have_rf.5, %do.cond189 ]
  %have_cs.31296 = phi i32 [ %have_cs.21313, %if.end46 ], [ %have_cs.5, %do.cond189 ]
  %warn_names.11295 = phi i32 [ %warn_names.01312, %if.end46 ], [ %warn_names.2, %do.cond189 ]
  %currnum.01294 = phi i32 [ 0, %if.end46 ], [ %inc, %do.cond189 ]
  %nptr.11293 = phi i8* [ %nptr.01311, %if.end46 ], [ %call184, %do.cond189 ]
  br i1 %cmp39, label %if.then55, label %if.else75

if.then55:                                        ; preds = %while.body52
  %12 = trunc i64 %indvars.iv1354 to i32
  %cmp56 = icmp eq i32 %12, 0
  br i1 %cmp56, label %if.then58, label %if.else60

if.then58:                                        ; preds = %if.then55
  %call59 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 164, i64 360) #6
  br label %if.end67

if.else60:                                        ; preds = %if.then55
  %13 = load %struct.seqinfo_s** %sqinfo, align 8, !tbaa !0
  %14 = bitcast %struct.seqinfo_s* %13 to i8*
  %15 = mul i64 %indvars.iv1354, 360
  %mul64 = add i64 %15, 360
  %call65 = call i8* @sre_realloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 166, i8* %14, i64 %mul64) #6
  br label %if.end67

if.end67:                                         ; preds = %if.else60, %if.then58
  %call59.sink = phi i8* [ %call59, %if.then58 ], [ %call65, %if.else60 ]
  %16 = bitcast i8* %call59.sink to %struct.seqinfo_s*
  store %struct.seqinfo_s* %16, %struct.seqinfo_s** %sqinfo, align 8, !tbaa !0
  %flags = getelementptr inbounds %struct.seqinfo_s* %16, i64 %indvars.iv1354, i32 0
  store i32 0, i32* %flags, align 4, !tbaa !3
  %arrayidx73 = getelementptr inbounds %struct.seqinfo_s* %16, i64 %indvars.iv1354
  %call74 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx73, i8* %nptr.11293, i32 1) #6
  br label %if.end85

if.else75:                                        ; preds = %while.body52
  %17 = load %struct.seqinfo_s** %sqinfo, align 8, !tbaa !0
  %arraydecay79 = getelementptr inbounds %struct.seqinfo_s* %17, i64 %indvars.iv1354, i32 1, i64 0
  %call80 = call i32 @strcmp(i8* %arraydecay79, i8* %nptr.11293) #7
  %cmp81 = icmp eq i32 %call80, 0
  %warn_names.1. = select i1 %cmp81, i32 %warn_names.11295, i32 1
  br label %if.end85

if.end85:                                         ; preds = %if.else75, %if.end67
  %warn_names.2 = phi i32 [ %warn_names.11295, %if.end67 ], [ %warn_names.1., %if.else75 ]
  %indvars.iv.next1355 = add i64 %indvars.iv1354, 1
  %inc = add nsw i32 %currnum.01294, 1
  %call86 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp87 = icmp eq i8* %call86, null
  br i1 %cmp87, label %do.body136, label %if.then89

if.then89:                                        ; preds = %if.end85
  %sub.ptr.lhs.cast = ptrtoint i8* %call86 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %18 = load i32* %lcol, align 4, !tbaa !3
  %conv94 = sext i32 %18 to i64
  %cmp95 = icmp slt i64 %sub.ptr.sub, %conv94
  br i1 %cmp95, label %if.then97, label %if.end106

if.then97:                                        ; preds = %if.then89
  %conv102 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv102, i32* %lcol, align 4, !tbaa !3
  br label %if.end106

if.end106:                                        ; preds = %if.then97, %if.then89
  %call109 = call i64 @strlen(i8* %0) #7
  %add.ptr.sum = add i64 %call109, -1
  %add.ptr110 = getelementptr inbounds [4096 x i8]* %buffer, i64 0, i64 %add.ptr.sum
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.end106
  %sptr.0 = phi i8* [ %add.ptr110, %if.end106 ], [ %incdec.ptr, %for.cond ]
  %19 = load i8* %sptr.0, align 1, !tbaa !1
  %conv111 = sext i8 %19 to i32
  %memchr = call i8* @memchr(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %conv111, i64 4)
  %cmp113 = icmp eq i8* %memchr, null
  %incdec.ptr = getelementptr inbounds i8* %sptr.0, i64 -1
  br i1 %cmp113, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  %sub.ptr.lhs.cast116 = ptrtoint i8* %sptr.0 to i64
  %sub.ptr.sub118 = sub i64 %sub.ptr.lhs.cast116, %sub.ptr.rhs.cast117
  %20 = load i32* %rcol, align 4, !tbaa !3
  %conv122 = sext i32 %20 to i64
  %cmp123 = icmp sgt i64 %sub.ptr.sub118, %conv122
  br i1 %cmp123, label %if.then125, label %do.body136

if.then125:                                       ; preds = %for.end
  %conv130 = trunc i64 %sub.ptr.sub118 to i32
  store i32 %conv130, i32* %rcol, align 4, !tbaa !3
  br label %do.body136

do.body136:                                       ; preds = %if.end85, %if.then125, %for.end, %do.cond189
  %have_cs.4 = phi i32 [ %have_cs.5, %do.cond189 ], [ %have_cs.31296, %for.end ], [ %have_cs.31296, %if.then125 ], [ %have_cs.31296, %if.end85 ]
  %have_rf.4 = phi i32 [ %have_rf.5, %do.cond189 ], [ %have_rf.31297, %for.end ], [ %have_rf.31297, %if.then125 ], [ %have_rf.31297, %if.end85 ]
  %call138 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #6
  %cmp139 = icmp eq i8* %call138, null
  br i1 %cmp139, label %while.end, label %if.end142

if.end142:                                        ; preds = %do.body136
  %call145 = call i8* @strcpy(i8* %1, i8* %0) #6
  %call147 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i64 4) #7
  %cmp148 = icmp eq i32 %call147, 0
  br i1 %cmp148, label %if.then150, label %if.else155

if.then150:                                       ; preds = %if.end142
  %21 = load %struct.seqinfo_s** %sqinfo, align 8, !tbaa !0
  %flags154 = getelementptr inbounds %struct.seqinfo_s* %21, i64 %indvars.iv1354, i32 0
  %22 = load i32* %flags154, align 4, !tbaa !3
  %or = or i32 %22, 512
  store i32 %or, i32* %flags154, align 4, !tbaa !3
  br label %if.end182

if.else155:                                       ; preds = %if.end142
  %call157 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i64 4) #7
  %cmp158 = icmp eq i32 %call157, 0
  br i1 %cmp158, label %if.then160, label %if.else167

if.then160:                                       ; preds = %if.else155
  %23 = load %struct.seqinfo_s** %sqinfo, align 8, !tbaa !0
  %flags165 = getelementptr inbounds %struct.seqinfo_s* %23, i64 %indvars.iv1354, i32 0
  %24 = load i32* %flags165, align 4, !tbaa !3
  %or166 = or i32 %24, 1024
  store i32 %or166, i32* %flags165, align 4, !tbaa !3
  br label %if.end182

if.else167:                                       ; preds = %if.else155
  %call169 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i64 4) #7
  %cmp170 = icmp eq i32 %call169, 0
  br i1 %cmp170, label %if.end182, label %if.else173

if.else173:                                       ; preds = %if.else167
  %call175 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i64 4) #7
  %cmp176 = icmp eq i32 %call175, 0
  %.have_rf.4 = select i1 %cmp176, i32 1, i32 %have_rf.4
  br label %if.end182

if.end182:                                        ; preds = %if.else173, %if.else167, %if.then160, %if.then150
  %have_cs.5 = phi i32 [ %have_cs.4, %if.then150 ], [ %have_cs.4, %if.then160 ], [ 1, %if.else167 ], [ %have_cs.4, %if.else173 ]
  %have_rf.5 = phi i32 [ %have_rf.4, %if.then150 ], [ %have_rf.4, %if.then160 ], [ %have_rf.4, %if.else167 ], [ %.have_rf.4, %if.else173 ]
  %call184 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp185 = icmp eq i8* %call184, null
  br i1 %cmp185, label %while.end, label %do.cond189

do.cond189:                                       ; preds = %if.end182
  %25 = load i8* %call184, align 1, !tbaa !1
  %conv190 = sext i8 %25 to i32
  %call191 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %conv190) #7
  %cmp192 = icmp eq i8* %call191, null
  br i1 %cmp192, label %while.body52, label %do.body136

while.end:                                        ; preds = %if.end182, %do.body136, %if.end46
  %have_rf.3.lcssa = phi i32 [ %have_rf.21314, %if.end46 ], [ %have_rf.4, %do.body136 ], [ %have_rf.5, %if.end182 ]
  %have_cs.3.lcssa = phi i32 [ %have_cs.21313, %if.end46 ], [ %have_cs.4, %do.body136 ], [ %have_cs.5, %if.end182 ]
  %warn_names.1.lcssa = phi i32 [ %warn_names.01312, %if.end46 ], [ %warn_names.2, %do.body136 ], [ %warn_names.2, %if.end182 ]
  %currnum.0.lcssa = phi i32 [ 0, %if.end46 ], [ %inc, %do.body136 ], [ %inc, %if.end182 ]
  br i1 %cmp39, label %if.end203, label %if.else198

if.else198:                                       ; preds = %while.end
  %cmp199 = icmp eq i32 %currnum.0.lcssa, %num.01308
  br i1 %cmp199, label %if.end203, label %if.then201

if.then201:                                       ; preds = %if.else198
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([27 x i8]* @.str7, i64 0, i64 0)) #6
  br label %if.end203

if.end203:                                        ; preds = %while.end, %if.else198, %if.then201
  %num.1 = phi i32 [ %num.01308, %if.then201 ], [ %num.01308, %if.else198 ], [ %currnum.0.lcssa, %while.end ]
  %indvars.iv.next1359 = add i64 %indvars.iv1358, 1
  %inc204 = add nsw i32 %blocknum.01310, 1
  %call2071302 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #6
  %cmp2081303 = icmp eq i8* %call2071302, null
  br i1 %cmp2081303, label %while.cond.loopexit, label %if.end211

if.end211:                                        ; preds = %if.end203, %do.body205.backedge
  %call214 = call i8* @strcpy(i8* %1, i8* %0) #6
  %call217 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp218 = icmp eq i8* %call217, null
  br i1 %cmp218, label %do.body205.backedge, label %lor.rhs220

do.body205.backedge:                              ; preds = %if.end211, %lor.rhs220
  %call207 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #6
  %cmp208 = icmp eq i8* %call207, null
  br i1 %cmp208, label %while.cond.loopexit, label %if.end211

lor.rhs220:                                       ; preds = %if.end211
  %26 = load i8* %call217, align 1, !tbaa !1
  %conv221 = sext i8 %26 to i32
  %call222 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %conv221) #7
  %cmp223 = icmp eq i8* %call222, null
  br i1 %cmp223, label %while.cond.loopexit, label %do.body205.backedge

for.body231:                                      ; preds = %for.cond228.preheader, %for.body231
  %indvars.iv1350 = phi i64 [ %indvars.iv.next1351, %for.body231 ], [ 0, %for.cond228.preheader ]
  %alen.01290 = phi i32 [ %add240, %for.body231 ], [ 0, %for.cond228.preheader ]
  %rcol234 = getelementptr inbounds %struct.block_struc* %blocks.1, i64 %indvars.iv1350, i32 1
  %27 = load i32* %rcol234, align 4, !tbaa !3
  %lcol237 = getelementptr inbounds %struct.block_struc* %blocks.1, i64 %indvars.iv1350, i32 0
  %28 = load i32* %lcol237, align 4, !tbaa !3
  %sub238 = add i32 %alen.01290, 1
  %add239 = add i32 %sub238, %27
  %add240 = sub i32 %add239, %28
  %indvars.iv.next1351 = add i64 %indvars.iv1350, 1
  %lftr.wideiv1352 = trunc i64 %indvars.iv.next1351 to i32
  %exitcond1353 = icmp eq i32 %lftr.wideiv1352, %inc204
  br i1 %exitcond1353, label %for.end243, label %for.body231

for.end243:                                       ; preds = %while.cond.preheader, %for.body231, %for.cond228.preheader
  %cmp22912881377 = phi i1 [ false, %for.cond228.preheader ], [ %cmp2291288, %for.body231 ], [ false, %while.cond.preheader ]
  %num.0.lcssa1376 = phi i32 [ %num.1, %for.cond228.preheader ], [ %num.1, %for.body231 ], [ 0, %while.cond.preheader ]
  %blocks.0.lcssa1374 = phi %struct.block_struc* [ %blocks.1, %for.cond228.preheader ], [ %blocks.1, %for.body231 ], [ null, %while.cond.preheader ]
  %blocknum.0.lcssa1373 = phi i32 [ %inc204, %for.cond228.preheader ], [ %inc204, %for.body231 ], [ 0, %while.cond.preheader ]
  %warn_names.0.lcssa1372 = phi i32 [ %warn_names.1.lcssa, %for.cond228.preheader ], [ %warn_names.1.lcssa, %for.body231 ], [ 0, %while.cond.preheader ]
  %have_cs.2.lcssa1371 = phi i32 [ %have_cs.3.lcssa, %for.cond228.preheader ], [ %have_cs.3.lcssa, %for.body231 ], [ %have_cs.1, %while.cond.preheader ]
  %have_rf.2.lcssa1370 = phi i32 [ %have_rf.3.lcssa, %for.cond228.preheader ], [ %have_rf.3.lcssa, %for.body231 ], [ %have_rf.1, %while.cond.preheader ]
  %alen.0.lcssa = phi i32 [ 0, %for.cond228.preheader ], [ %add240, %for.body231 ], [ 0, %while.cond.preheader ]
  call void @rewind(%struct._IO_FILE* %6) #6
  %conv244 = sext i32 %num.0.lcssa1376 to i64
  %mul245 = shl nsw i64 %conv244, 3
  %call246 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 247, i64 %mul245) #6
  %29 = bitcast i8* %call246 to i8**
  %tobool247 = icmp eq i32 %have_cs.2.lcssa1371, 0
  br i1 %tobool247, label %if.end253, label %if.then248

if.then248:                                       ; preds = %for.end243
  %add249 = add nsw i32 %alen.0.lcssa, 1
  %conv250 = sext i32 %add249 to i64
  %call252 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 249, i64 %conv250) #6
  %cs = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 4
  store i8* %call252, i8** %cs, align 8, !tbaa !0
  br label %if.end253

if.end253:                                        ; preds = %for.end243, %if.then248
  %tobool254 = icmp eq i32 %have_rf.2.lcssa1370, 0
  br i1 %tobool254, label %for.cond261.preheader, label %if.then255

if.then255:                                       ; preds = %if.end253
  %add256 = add nsw i32 %alen.0.lcssa, 1
  %conv257 = sext i32 %add256 to i64
  %call259 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 251, i64 %conv257) #6
  %rf = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 5
  store i8* %call259, i8** %rf, align 8, !tbaa !0
  br label %for.cond261.preheader

for.cond261.preheader:                            ; preds = %if.end253, %if.then255
  %cmp2621286 = icmp sgt i32 %num.0.lcssa1376, 0
  br i1 %cmp2621286, label %for.body264.lr.ph, label %for.cond261.preheader.for.end302_crit_edge

for.cond261.preheader.for.end302_crit_edge:       ; preds = %for.cond261.preheader
  %sqinfo437.pre = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 6
  br label %for.end302

for.body264.lr.ph:                                ; preds = %for.cond261.preheader
  %add265 = add nsw i32 %alen.0.lcssa, 1
  %conv266 = sext i32 %add265 to i64
  %sqinfo272 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 6
  br label %for.body264

for.body264:                                      ; preds = %for.inc300, %for.body264.lr.ph
  %indvars.iv1346 = phi i64 [ 0, %for.body264.lr.ph ], [ %indvars.iv.next1347, %for.inc300 ]
  %call268 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 257, i64 %conv266) #6
  %arrayidx270 = getelementptr inbounds i8** %29, i64 %indvars.iv1346
  store i8* %call268, i8** %arrayidx270, align 8, !tbaa !0
  %30 = load %struct.seqinfo_s** %sqinfo272, align 8, !tbaa !0
  %flags274 = getelementptr inbounds %struct.seqinfo_s* %30, i64 %indvars.iv1346, i32 0
  %31 = load i32* %flags274, align 4, !tbaa !3
  %and = and i32 %31, 512
  %tobool275 = icmp eq i32 %and, 0
  br i1 %tobool275, label %if.end284, label %if.then276

if.then276:                                       ; preds = %for.body264
  %call280 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 259, i64 %conv266) #6
  %32 = load %struct.seqinfo_s** %sqinfo272, align 8, !tbaa !0
  %ss = getelementptr inbounds %struct.seqinfo_s* %32, i64 %indvars.iv1346, i32 10
  store i8* %call280, i8** %ss, align 8, !tbaa !0
  %.pre1367 = load %struct.seqinfo_s** %sqinfo272, align 8, !tbaa !0
  %flags288.phi.trans.insert = getelementptr inbounds %struct.seqinfo_s* %.pre1367, i64 %indvars.iv1346, i32 0
  %.pre1368 = load i32* %flags288.phi.trans.insert, align 4, !tbaa !3
  br label %if.end284

if.end284:                                        ; preds = %for.body264, %if.then276
  %33 = phi i32 [ %31, %for.body264 ], [ %.pre1368, %if.then276 ]
  %and289 = and i32 %33, 1024
  %tobool290 = icmp eq i32 %and289, 0
  br i1 %tobool290, label %for.inc300, label %if.then291

if.then291:                                       ; preds = %if.end284
  %call295 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 261, i64 %conv266) #6
  %34 = load %struct.seqinfo_s** %sqinfo272, align 8, !tbaa !0
  %sa = getelementptr inbounds %struct.seqinfo_s* %34, i64 %indvars.iv1346, i32 11
  store i8* %call295, i8** %sa, align 8, !tbaa !0
  br label %for.inc300

for.inc300:                                       ; preds = %if.end284, %if.then291
  %indvars.iv.next1347 = add i64 %indvars.iv1346, 1
  %lftr.wideiv1348 = trunc i64 %indvars.iv.next1347 to i32
  %exitcond1349 = icmp eq i32 %lftr.wideiv1348, %num.0.lcssa1376
  br i1 %exitcond1349, label %for.end302, label %for.body264

for.end302:                                       ; preds = %for.inc300, %for.cond261.preheader.for.end302_crit_edge
  %sqinfo437.pre-phi = phi %struct.seqinfo_s** [ %sqinfo437.pre, %for.cond261.preheader.for.end302_crit_edge ], [ %sqinfo272, %for.inc300 ]
  %alen303 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 1
  store i32 %alen.0.lcssa, i32* %alen303, align 4, !tbaa !3
  %nseq = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 2
  store i32 %num.0.lcssa1376, i32* %nseq, align 8, !tbaa !3
  %mul305 = shl nsw i64 %conv244, 2
  %call306 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 266, i64 %mul305) #6
  %35 = bitcast i8* %call306 to float*
  %wgt = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 3
  store float* %35, float** %wgt, align 8, !tbaa !0
  call void @FSet(float* %35, i32 %num.0.lcssa1376, float 1.000000e+00) #6
  %au = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 10
  %name342 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 7
  %acc = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 9
  %desc = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 8
  %ga1 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 15
  %ga2 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 16
  %flags382 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 0
  %tc1 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 11
  %tc2 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 12
  %nc1 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 13
  %nc2 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 14
  br label %for.cond308

for.cond308:                                      ; preds = %if.then330, %if.then351, %if.end379, %if.end421, %if.else525, %if.end513, %if.end400, %if.then361, %if.then340, %if.end314, %for.end302
  %warn_names.3 = phi i32 [ %warn_names.0.lcssa1372, %for.end302 ], [ %warn_names.3, %if.end314 ], [ %warn_names.3, %if.then330 ], [ %warn_names.3, %if.then340 ], [ %warn_names.3, %if.then351 ], [ %warn_names.3, %if.then361 ], [ %warn_names.3, %if.end379 ], [ %warn_names.3, %if.end400 ], [ %warn_names.3, %if.end421 ], [ %warn_names.3., %if.end513 ], [ %warn_names.3, %if.else525 ]
  %headnum.0 = phi i32 [ 0, %for.end302 ], [ %headnum.0, %if.end314 ], [ %headnum.0, %if.then330 ], [ %headnum.0, %if.then340 ], [ %headnum.0, %if.then351 ], [ %headnum.0, %if.then361 ], [ %headnum.0, %if.end379 ], [ %headnum.0, %if.end400 ], [ %headnum.0, %if.end421 ], [ %inc514, %if.end513 ], [ %headnum.0, %if.else525 ]
  %call310 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #6
  %cmp311 = icmp eq i8* %call310, null
  br i1 %cmp311, label %if.then313, label %if.end314

if.then313:                                       ; preds = %for.cond308
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([27 x i8]* @.str7, i64 0, i64 0)) #6
  br label %if.end314

if.end314:                                        ; preds = %if.then313, %for.cond308
  %call317 = call i8* @strcpy(i8* %1, i8* %0) #6
  %call319 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp320 = icmp eq i8* %call319, null
  br i1 %cmp320, label %for.cond308, label %if.end323

if.end323:                                        ; preds = %if.end314
  %call324 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0)) #7
  %cmp325 = icmp eq i32 %call324, 0
  br i1 %cmp325, label %land.lhs.true, label %if.else332

land.lhs.true:                                    ; preds = %if.end323
  %call327 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #6
  %cmp328 = icmp eq i8* %call327, null
  br i1 %cmp328, label %if.else332, label %if.then330

if.then330:                                       ; preds = %land.lhs.true
  %call331 = call i8* @Strdup(i8* %call327) #6
  store i8* %call331, i8** %au, align 8, !tbaa !0
  br label %for.cond308

if.else332:                                       ; preds = %land.lhs.true, %if.end323
  %call333 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)) #7
  %cmp334 = icmp eq i32 %call333, 0
  br i1 %cmp334, label %land.lhs.true336, label %if.else343

land.lhs.true336:                                 ; preds = %if.else332
  %call337 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #6
  %cmp338 = icmp eq i8* %call337, null
  br i1 %cmp338, label %if.else343, label %if.then340

if.then340:                                       ; preds = %land.lhs.true336
  %call341 = call i8* @Strdup(i8* %call337) #6
  store i8* %call341, i8** %name342, align 8, !tbaa !0
  br label %for.cond308

if.else343:                                       ; preds = %land.lhs.true336, %if.else332
  %call344 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #7
  %cmp345 = icmp eq i32 %call344, 0
  br i1 %cmp345, label %land.lhs.true347, label %if.else353

land.lhs.true347:                                 ; preds = %if.else343
  %call348 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #6
  %cmp349 = icmp eq i8* %call348, null
  br i1 %cmp349, label %if.else353, label %if.then351

if.then351:                                       ; preds = %land.lhs.true347
  %call352 = call i8* @Strdup(i8* %call348) #6
  store i8* %call352, i8** %acc, align 8, !tbaa !0
  br label %for.cond308

if.else353:                                       ; preds = %land.lhs.true347, %if.else343
  %call354 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0)) #7
  %cmp355 = icmp eq i32 %call354, 0
  br i1 %cmp355, label %land.lhs.true357, label %if.else363

land.lhs.true357:                                 ; preds = %if.else353
  %call358 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #6
  %cmp359 = icmp eq i8* %call358, null
  br i1 %cmp359, label %if.else363, label %if.then361

if.then361:                                       ; preds = %land.lhs.true357
  %call362 = call i8* @Strdup(i8* %call358) #6
  store i8* %call362, i8** %desc, align 8, !tbaa !0
  br label %for.cond308

if.else363:                                       ; preds = %land.lhs.true357, %if.else353
  %call364 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0)) #7
  %cmp365 = icmp eq i32 %call364, 0
  br i1 %cmp365, label %if.then367, label %if.else384

if.then367:                                       ; preds = %if.else363
  %call368 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp369 = icmp eq i8* %call368, null
  br i1 %cmp369, label %if.then371, label %if.end372

if.then371:                                       ; preds = %if.then367
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str14, i64 0, i64 0)) #6
  br label %if.end372

if.end372:                                        ; preds = %if.then371, %if.then367
  %call373 = call double @atof(i8* %call368) #7
  %conv374 = fptrunc double %call373 to float
  store float %conv374, float* %ga1, align 8, !tbaa !4
  %call375 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp376 = icmp eq i8* %call375, null
  br i1 %cmp376, label %if.then378, label %if.end379

if.then378:                                       ; preds = %if.end372
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str14, i64 0, i64 0)) #6
  br label %if.end379

if.end379:                                        ; preds = %if.then378, %if.end372
  %call380 = call double @atof(i8* %call375) #7
  %conv381 = fptrunc double %call380 to float
  store float %conv381, float* %ga2, align 4, !tbaa !4
  %36 = load i32* %flags382, align 8, !tbaa !3
  %or383 = or i32 %36, 4
  store i32 %or383, i32* %flags382, align 8, !tbaa !3
  br label %for.cond308

if.else384:                                       ; preds = %if.else363
  %call385 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0)) #7
  %cmp386 = icmp eq i32 %call385, 0
  br i1 %cmp386, label %if.then388, label %if.else405

if.then388:                                       ; preds = %if.else384
  %call389 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp390 = icmp eq i8* %call389, null
  br i1 %cmp390, label %if.then392, label %if.end393

if.then392:                                       ; preds = %if.then388
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str16, i64 0, i64 0)) #6
  br label %if.end393

if.end393:                                        ; preds = %if.then392, %if.then388
  %call394 = call double @atof(i8* %call389) #7
  %conv395 = fptrunc double %call394 to float
  store float %conv395, float* %tc1, align 8, !tbaa !4
  %call396 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp397 = icmp eq i8* %call396, null
  br i1 %cmp397, label %if.then399, label %if.end400

if.then399:                                       ; preds = %if.end393
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str16, i64 0, i64 0)) #6
  br label %if.end400

if.end400:                                        ; preds = %if.then399, %if.end393
  %call401 = call double @atof(i8* %call396) #7
  %conv402 = fptrunc double %call401 to float
  store float %conv402, float* %tc2, align 4, !tbaa !4
  %37 = load i32* %flags382, align 8, !tbaa !3
  %or404 = or i32 %37, 1
  store i32 %or404, i32* %flags382, align 8, !tbaa !3
  br label %for.cond308

if.else405:                                       ; preds = %if.else384
  %call406 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0)) #7
  %cmp407 = icmp eq i32 %call406, 0
  br i1 %cmp407, label %if.then409, label %if.else426

if.then409:                                       ; preds = %if.else405
  %call410 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp411 = icmp eq i8* %call410, null
  br i1 %cmp411, label %if.then413, label %if.end414

if.then413:                                       ; preds = %if.then409
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str18, i64 0, i64 0)) #6
  br label %if.end414

if.end414:                                        ; preds = %if.then413, %if.then409
  %call415 = call double @atof(i8* %call410) #7
  %conv416 = fptrunc double %call415 to float
  store float %conv416, float* %nc1, align 8, !tbaa !4
  %call417 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp418 = icmp eq i8* %call417, null
  br i1 %cmp418, label %if.then420, label %if.end421

if.then420:                                       ; preds = %if.end414
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str18, i64 0, i64 0)) #6
  br label %if.end421

if.end421:                                        ; preds = %if.then420, %if.end414
  %call422 = call double @atof(i8* %call417) #7
  %conv423 = fptrunc double %call422 to float
  store float %conv423, float* %nc2, align 4, !tbaa !4
  %38 = load i32* %flags382, align 8, !tbaa !3
  %or425 = or i32 %38, 2
  store i32 %or425, i32* %flags382, align 8, !tbaa !3
  br label %for.cond308

if.else426:                                       ; preds = %if.else405
  %call427 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0)) #7
  %cmp428 = icmp eq i32 %call427, 0
  br i1 %cmp428, label %if.then430, label %if.else515

if.then430:                                       ; preds = %if.else426
  %call431 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp432 = icmp eq i8* %call431, null
  br i1 %cmp432, label %if.then434, label %if.end435

if.then434:                                       ; preds = %if.then430
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str20, i64 0, i64 0)) #6
  br label %if.end435

if.end435:                                        ; preds = %if.then434, %if.then430
  %idxprom436 = sext i32 %headnum.0 to i64
  %39 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !tbaa !0
  %arraydecay440 = getelementptr inbounds %struct.seqinfo_s* %39, i64 %idxprom436, i32 1, i64 0
  %call441 = call i32 @strcmp(i8* %call431, i8* %arraydecay440) #7
  %cmp442 = icmp eq i32 %call441, 0
  %warn_names.3. = select i1 %cmp442, i32 %warn_names.3, i32 1
  %call446 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp447 = icmp eq i8* %call446, null
  br i1 %cmp447, label %if.then449, label %if.end450

if.then449:                                       ; preds = %if.end435
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str20, i64 0, i64 0)) #6
  br label %if.end450

if.end450:                                        ; preds = %if.then449, %if.end435
  %call451 = call i32 @IsReal(i8* %call446) #6
  %tobool452 = icmp eq i32 %call451, 0
  br i1 %tobool452, label %if.then453, label %if.end454

if.then453:                                       ; preds = %if.end450
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([64 x i8]* @.str21, i64 0, i64 0)) #6
  br label %if.end454

if.end454:                                        ; preds = %if.end450, %if.then453
  %call455 = call double @atof(i8* %call446) #7
  %conv456 = fptrunc double %call455 to float
  %40 = load float** %wgt, align 8, !tbaa !0
  %arrayidx459 = getelementptr inbounds float* %40, i64 %idxprom436
  store float %conv456, float* %arrayidx459, align 4, !tbaa !4
  %call460 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp461 = icmp eq i8* %call460, null
  br i1 %cmp461, label %if.then463, label %if.end464

if.then463:                                       ; preds = %if.end454
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0)) #6
  br label %if.end464

if.end464:                                        ; preds = %if.then463, %if.end454
  %41 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !tbaa !0
  %arrayidx467 = getelementptr inbounds %struct.seqinfo_s* %41, i64 %idxprom436
  %call468 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx467, i8* %call460, i32 2) #6
  %call469 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp470 = icmp eq i8* %call469, null
  br i1 %cmp470, label %if.then472, label %if.end473

if.then472:                                       ; preds = %if.end464
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0)) #6
  br label %if.end473

if.end473:                                        ; preds = %if.then472, %if.end464
  %42 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !tbaa !0
  %arrayidx476 = getelementptr inbounds %struct.seqinfo_s* %42, i64 %idxprom436
  %call477 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx476, i8* %call469, i32 4) #6
  %call478 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8]* @.str23, i64 0, i64 0)) #6
  %cmp479 = icmp eq i8* %call478, null
  br i1 %cmp479, label %if.then481, label %if.end482

if.then481:                                       ; preds = %if.end473
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0)) #6
  br label %if.end482

if.end482:                                        ; preds = %if.then481, %if.end473
  %43 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !tbaa !0
  %arrayidx485 = getelementptr inbounds %struct.seqinfo_s* %43, i64 %idxprom436
  %call486 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx485, i8* %call478, i32 16) #6
  %call487 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8]* @.str23, i64 0, i64 0)) #6
  %cmp488 = icmp eq i8* %call487, null
  br i1 %cmp488, label %if.then490, label %if.end491

if.then490:                                       ; preds = %if.end482
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0)) #6
  br label %if.end491

if.end491:                                        ; preds = %if.then490, %if.end482
  %44 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !tbaa !0
  %arrayidx494 = getelementptr inbounds %struct.seqinfo_s* %44, i64 %idxprom436
  %call495 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx494, i8* %call487, i32 32) #6
  %call496 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0)) #6
  %cmp497 = icmp eq i8* %call496, null
  br i1 %cmp497, label %if.then499, label %if.end500

if.then499:                                       ; preds = %if.end491
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0)) #6
  br label %if.end500

if.end500:                                        ; preds = %if.then499, %if.end491
  %45 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !tbaa !0
  %arrayidx503 = getelementptr inbounds %struct.seqinfo_s* %45, i64 %idxprom436
  %call504 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx503, i8* %call496, i32 256) #6
  %call505 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #6
  %cmp506 = icmp eq i8* %call505, null
  br i1 %cmp506, label %if.end513, label %if.then508

if.then508:                                       ; preds = %if.end500
  %46 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !tbaa !0
  %arrayidx511 = getelementptr inbounds %struct.seqinfo_s* %46, i64 %idxprom436
  %call512 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx511, i8* %call505, i32 8) #6
  br label %if.end513

if.end513:                                        ; preds = %if.end500, %if.then508
  %inc514 = add nsw i32 %headnum.0, 1
  br label %for.cond308

if.else515:                                       ; preds = %if.else426
  %call516 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #7
  %cmp517 = icmp eq i32 %call516, 0
  br i1 %cmp517, label %for.cond543.preheader, label %if.else520

if.else520:                                       ; preds = %if.else515
  %call521 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #7
  %cmp522 = icmp eq i32 %call521, 0
  br i1 %cmp522, label %for.cond543.preheader, label %if.else525

if.else525:                                       ; preds = %if.else520
  %47 = load i8* %call319, align 1, !tbaa !1
  %conv526 = sext i8 %47 to i32
  %call527 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %conv526) #7
  %cmp528 = icmp eq i8* %call527, null
  br i1 %cmp528, label %for.cond543.preheader, label %for.cond308

for.cond543.preheader:                            ; preds = %if.else525, %if.else520, %if.else515
  br i1 %cmp22912881377, label %while.cond547.preheader.lr.ph, label %for.cond736.preheader

while.cond547.preheader.lr.ph:                    ; preds = %for.cond543.preheader
  %cs555 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 4
  %rf575 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 5
  br label %while.cond547.preheader

while.cond547.preheader:                          ; preds = %for.inc733, %while.cond547.preheader.lr.ph
  %indvars.iv1342 = phi i64 [ 0, %while.cond547.preheader.lr.ph ], [ %indvars.iv.next1343, %for.inc733 ]
  %currlen.01285 = phi i32 [ 0, %while.cond547.preheader.lr.ph ], [ %add703, %for.inc733 ]
  %nptr.21283 = phi i8* [ %call319, %while.cond547.preheader.lr.ph ], [ %nptr.5, %for.inc733 ]
  %cmp5481276 = icmp eq i8* %nptr.21283, null
  br i1 %cmp5481276, label %while.cond547.preheader.while.end694_crit_edge, label %while.body550.lr.ph

while.cond547.preheader.while.end694_crit_edge:   ; preds = %while.cond547.preheader
  %rcol697.pre = getelementptr inbounds %struct.block_struc* %blocks.0.lcssa1374, i64 %indvars.iv1342, i32 1
  %lcol700.pre = getelementptr inbounds %struct.block_struc* %blocks.0.lcssa1374, i64 %indvars.iv1342, i32 0
  br label %while.end694

while.body550.lr.ph:                              ; preds = %while.cond547.preheader
  %lcol562 = getelementptr inbounds %struct.block_struc* %blocks.0.lcssa1374, i64 %indvars.iv1342, i32 0
  %rcol565 = getelementptr inbounds %struct.block_struc* %blocks.0.lcssa1374, i64 %indvars.iv1342, i32 1
  br label %while.body550

for.cond736.preheader:                            ; preds = %for.inc733, %for.cond543.preheader
  br i1 %cmp2621286, label %for.body739.lr.ph, label %for.end892

for.body739.lr.ph:                                ; preds = %for.cond736.preheader
  %cmp8231270 = icmp sgt i32 %alen.0.lcssa, 0
  br label %for.body739

while.body550:                                    ; preds = %if.end686, %if.end680, %while.body550.lr.ph
  %seqidx.01278 = phi i32 [ 0, %while.body550.lr.ph ], [ %seqidx.1.ph, %if.end680 ], [ %seqidx.1.ph, %if.end686 ]
  %nptr.31277 = phi i8* [ %nptr.21283, %while.body550.lr.ph ], [ %call676, %if.end680 ], [ %call676, %if.end686 ]
  %call551 = call i32 @strcmp(i8* %nptr.31277, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #7
  %cmp552 = icmp eq i32 %call551, 0
  br i1 %cmp552, label %if.then554, label %if.else570

if.then554:                                       ; preds = %while.body550
  %48 = load i8** %cs555, align 8, !tbaa !0
  %call556 = call i64 @strlen(i8* %nptr.31277) #7
  %sub557 = add i64 %call556, 4294967295
  %conv558 = trunc i64 %sub557 to i32
  %49 = load i32* %lcol562, align 4, !tbaa !3
  %50 = load i32* %rcol565, align 4, !tbaa !3
  %call566 = call fastcc i32 @copy_alignment_line(i8* %48, i32 %currlen.01285, i32 %conv558, i8* %0, i32 %49, i32 %50) #8
  %tobool567 = icmp eq i32 %call566, 0
  br i1 %tobool567, label %if.then568, label %for.cond665.preheader

if.then568:                                       ; preds = %if.then554
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str25, i64 0, i64 0)) #6
  br label %for.cond665.preheader

if.else570:                                       ; preds = %while.body550
  %call571 = call i32 @strcmp(i8* %nptr.31277, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #7
  %cmp572 = icmp eq i32 %call571, 0
  br i1 %cmp572, label %if.then574, label %if.else590

if.then574:                                       ; preds = %if.else570
  %51 = load i8** %rf575, align 8, !tbaa !0
  %call576 = call i64 @strlen(i8* %nptr.31277) #7
  %sub577 = add i64 %call576, 4294967295
  %conv578 = trunc i64 %sub577 to i32
  %52 = load i32* %lcol562, align 4, !tbaa !3
  %53 = load i32* %rcol565, align 4, !tbaa !3
  %call586 = call fastcc i32 @copy_alignment_line(i8* %51, i32 %currlen.01285, i32 %conv578, i8* %0, i32 %52, i32 %53) #8
  %tobool587 = icmp eq i32 %call586, 0
  br i1 %tobool587, label %if.then588, label %for.cond665.preheader

if.then588:                                       ; preds = %if.then574
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str26, i64 0, i64 0)) #6
  br label %for.cond665.preheader

if.else590:                                       ; preds = %if.else570
  %call591 = call i32 @strcmp(i8* %nptr.31277, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #7
  %cmp592 = icmp eq i32 %call591, 0
  br i1 %cmp592, label %if.then594, label %if.else614

if.then594:                                       ; preds = %if.else590
  %sub595 = add nsw i32 %seqidx.01278, -1
  %idxprom596 = sext i32 %sub595 to i64
  %54 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !tbaa !0
  %ss599 = getelementptr inbounds %struct.seqinfo_s* %54, i64 %idxprom596, i32 10
  %55 = load i8** %ss599, align 8, !tbaa !0
  %call600 = call i64 @strlen(i8* %nptr.31277) #7
  %sub601 = add i64 %call600, 4294967295
  %conv602 = trunc i64 %sub601 to i32
  %56 = load i32* %lcol562, align 4, !tbaa !3
  %57 = load i32* %rcol565, align 4, !tbaa !3
  %call610 = call fastcc i32 @copy_alignment_line(i8* %55, i32 %currlen.01285, i32 %conv602, i8* %0, i32 %56, i32 %57) #8
  %tobool611 = icmp eq i32 %call610, 0
  br i1 %tobool611, label %if.then612, label %for.cond665.preheader

if.then612:                                       ; preds = %if.then594
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str27, i64 0, i64 0)) #6
  br label %for.cond665.preheader

if.else614:                                       ; preds = %if.else590
  %call615 = call i32 @strcmp(i8* %nptr.31277, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #7
  %cmp616 = icmp eq i32 %call615, 0
  br i1 %cmp616, label %if.then618, label %if.else638

if.then618:                                       ; preds = %if.else614
  %sub619 = add nsw i32 %seqidx.01278, -1
  %idxprom620 = sext i32 %sub619 to i64
  %58 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !tbaa !0
  %sa623 = getelementptr inbounds %struct.seqinfo_s* %58, i64 %idxprom620, i32 11
  %59 = load i8** %sa623, align 8, !tbaa !0
  %call624 = call i64 @strlen(i8* %nptr.31277) #7
  %sub625 = add i64 %call624, 4294967295
  %conv626 = trunc i64 %sub625 to i32
  %60 = load i32* %lcol562, align 4, !tbaa !3
  %61 = load i32* %rcol565, align 4, !tbaa !3
  %call634 = call fastcc i32 @copy_alignment_line(i8* %59, i32 %currlen.01285, i32 %conv626, i8* %0, i32 %60, i32 %61) #8
  %tobool635 = icmp eq i32 %call634, 0
  br i1 %tobool635, label %if.then636, label %for.cond665.preheader

if.then636:                                       ; preds = %if.then618
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str28, i64 0, i64 0)) #6
  br label %for.cond665.preheader

if.else638:                                       ; preds = %if.else614
  %call639 = call i32 @strncmp(i8* %nptr.31277, i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0), i64 2) #7
  %cmp640 = icmp eq i32 %call639, 0
  br i1 %cmp640, label %for.cond665.preheader, label %if.then642

if.then642:                                       ; preds = %if.else638
  %idxprom643 = sext i32 %seqidx.01278 to i64
  %arrayidx644 = getelementptr inbounds i8** %29, i64 %idxprom643
  %62 = load i8** %arrayidx644, align 8, !tbaa !0
  %call645 = call i64 @strlen(i8* %nptr.31277) #7
  %sub646 = add i64 %call645, 4294967295
  %conv647 = trunc i64 %sub646 to i32
  %63 = load i32* %lcol562, align 4, !tbaa !3
  %64 = load i32* %rcol565, align 4, !tbaa !3
  %call655 = call fastcc i32 @copy_alignment_line(i8* %62, i32 %currlen.01285, i32 %conv647, i8* %0, i32 %63, i32 %64) #8
  %tobool656 = icmp eq i32 %call655, 0
  br i1 %tobool656, label %if.then657, label %if.end658

if.then657:                                       ; preds = %if.then642
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str30, i64 0, i64 0)) #6
  br label %if.end658

if.end658:                                        ; preds = %if.then642, %if.then657
  %inc659 = add nsw i32 %seqidx.01278, 1
  br label %for.cond665.preheader

for.cond665.preheader:                            ; preds = %if.then588, %if.then636, %if.end658, %if.then612, %if.then568, %if.else638, %if.then618, %if.then594, %if.then574, %if.then554
  %seqidx.1.ph = phi i32 [ %seqidx.01278, %if.then554 ], [ %seqidx.01278, %if.then574 ], [ %seqidx.01278, %if.then594 ], [ %seqidx.01278, %if.then618 ], [ %seqidx.01278, %if.else638 ], [ %seqidx.01278, %if.then568 ], [ %seqidx.01278, %if.then612 ], [ %inc659, %if.end658 ], [ %seqidx.01278, %if.then636 ], [ %seqidx.01278, %if.then588 ]
  br label %for.cond665

for.cond665:                                      ; preds = %for.cond665.preheader, %if.end686
  %call667 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #6
  %cmp668 = icmp eq i8* %call667, null
  br i1 %cmp668, label %while.end694, label %if.end671

if.end671:                                        ; preds = %for.cond665
  %call674 = call i8* @strcpy(i8* %1, i8* %0) #6
  %call676 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp677 = icmp eq i8* %call676, null
  br i1 %cmp677, label %while.end694, label %if.end680

if.end680:                                        ; preds = %if.end671
  %call682 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0), i64 2) #7
  %cmp683 = icmp eq i32 %call682, 0
  br i1 %cmp683, label %while.body550, label %if.end686

if.end686:                                        ; preds = %if.end680
  %65 = load i8* %call676, align 1, !tbaa !1
  %conv687 = sext i8 %65 to i32
  %call688 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %conv687) #7
  %cmp689 = icmp eq i8* %call688, null
  br i1 %cmp689, label %while.body550, label %for.cond665

while.end694:                                     ; preds = %if.end671, %for.cond665, %while.cond547.preheader.while.end694_crit_edge
  %lcol700.pre-phi = phi i32* [ %lcol700.pre, %while.cond547.preheader.while.end694_crit_edge ], [ %lcol562, %for.cond665 ], [ %lcol562, %if.end671 ]
  %rcol697.pre-phi = phi i32* [ %rcol697.pre, %while.cond547.preheader.while.end694_crit_edge ], [ %rcol565, %for.cond665 ], [ %rcol565, %if.end671 ]
  %66 = load i32* %rcol697.pre-phi, align 4, !tbaa !3
  %67 = load i32* %lcol700.pre-phi, align 4, !tbaa !3
  %sub701 = add i32 %currlen.01285, 1
  %add702 = add i32 %sub701, %66
  %add703 = sub i32 %add702, %67
  %call7061279 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #6
  %cmp7071280 = icmp eq i8* %call7061279, null
  br i1 %cmp7071280, label %for.inc733, label %if.end710

if.end710:                                        ; preds = %while.end694, %for.cond704.backedge
  %call713 = call i8* @strcpy(i8* %1, i8* %0) #6
  %call715 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp716 = icmp eq i8* %call715, null
  br i1 %cmp716, label %for.cond704.backedge, label %if.end719

for.cond704.backedge:                             ; preds = %if.end710, %if.end725
  %nptr.4.be = phi i8* [ null, %if.end710 ], [ %call715, %if.end725 ]
  %call706 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #6
  %cmp707 = icmp eq i8* %call706, null
  br i1 %cmp707, label %for.inc733, label %if.end710

if.end719:                                        ; preds = %if.end710
  %call721 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0), i64 2) #7
  %cmp722 = icmp eq i32 %call721, 0
  br i1 %cmp722, label %for.inc733, label %if.end725

if.end725:                                        ; preds = %if.end719
  %68 = load i8* %call715, align 1, !tbaa !1
  %conv726 = sext i8 %68 to i32
  %call727 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %conv726) #7
  %cmp728 = icmp eq i8* %call727, null
  br i1 %cmp728, label %for.inc733, label %for.cond704.backedge

for.inc733:                                       ; preds = %for.cond704.backedge, %if.end719, %if.end725, %while.end694
  %nptr.5 = phi i8* [ null, %while.end694 ], [ %call715, %if.end725 ], [ %call715, %if.end719 ], [ %nptr.4.be, %for.cond704.backedge ]
  %indvars.iv.next1343 = add i64 %indvars.iv1342, 1
  %lftr.wideiv1344 = trunc i64 %indvars.iv.next1343 to i32
  %exitcond1345 = icmp eq i32 %lftr.wideiv1344, %blocknum.0.lcssa1373
  br i1 %exitcond1345, label %for.cond736.preheader, label %while.cond547.preheader

for.body739:                                      ; preds = %for.inc890, %for.body739.lr.ph
  %indvars.iv1337 = phi i64 [ 0, %for.body739.lr.ph ], [ %indvars.iv.next1338, %for.inc890 ]
  %69 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !tbaa !0
  %flags743 = getelementptr inbounds %struct.seqinfo_s* %69, i64 %indvars.iv1337, i32 0
  %70 = load i32* %flags743, align 4, !tbaa !3
  %and744 = and i32 %70, 512
  %tobool745 = icmp eq i32 %and744, 0
  br i1 %tobool745, label %if.end814, label %for.cond747.preheader

for.cond747.preheader:                            ; preds = %for.body739
  br i1 %cmp8231270, label %for.body750.lr.ph, label %for.end807

for.body750.lr.ph:                                ; preds = %for.cond747.preheader
  %arrayidx753 = getelementptr inbounds i8** %29, i64 %indvars.iv1337
  br label %for.body750

for.body750:                                      ; preds = %for.inc805, %for.body750.lr.ph
  %indvars.iv1329 = phi i64 [ 0, %for.body750.lr.ph ], [ %indvars.iv.next1330, %for.inc805 ]
  %rpos.01269 = phi i32 [ 0, %for.body750.lr.ph ], [ %rpos.1, %for.inc805 ]
  %71 = load i8** %arrayidx753, align 8, !tbaa !0
  %arrayidx754 = getelementptr inbounds i8* %71, i64 %indvars.iv1329
  %72 = load i8* %arrayidx754, align 1, !tbaa !1
  switch i8 %72, label %if.then790 [
    i8 32, label %for.inc805
    i8 46, label %for.inc805
    i8 95, label %for.inc805
    i8 45, label %for.inc805
    i8 126, label %for.inc805
  ]

if.then790:                                       ; preds = %for.body750
  %73 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !tbaa !0
  %ss795 = getelementptr inbounds %struct.seqinfo_s* %73, i64 %indvars.iv1337, i32 10
  %74 = load i8** %ss795, align 8, !tbaa !0
  %arrayidx796 = getelementptr inbounds i8* %74, i64 %indvars.iv1329
  %75 = load i8* %arrayidx796, align 1, !tbaa !1
  %idxprom797 = sext i32 %rpos.01269 to i64
  %arrayidx802 = getelementptr inbounds i8* %74, i64 %idxprom797
  store i8 %75, i8* %arrayidx802, align 1, !tbaa !1
  %inc803 = add nsw i32 %rpos.01269, 1
  br label %for.inc805

for.inc805:                                       ; preds = %for.body750, %for.body750, %for.body750, %for.body750, %for.body750, %if.then790
  %rpos.1 = phi i32 [ %rpos.01269, %for.body750 ], [ %inc803, %if.then790 ], [ %rpos.01269, %for.body750 ], [ %rpos.01269, %for.body750 ], [ %rpos.01269, %for.body750 ], [ %rpos.01269, %for.body750 ]
  %indvars.iv.next1330 = add i64 %indvars.iv1329, 1
  %lftr.wideiv1331 = trunc i64 %indvars.iv.next1330 to i32
  %exitcond1332 = icmp eq i32 %lftr.wideiv1331, %alen.0.lcssa
  br i1 %exitcond1332, label %for.cond747.for.end807_crit_edge, label %for.body750

for.cond747.for.end807_crit_edge:                 ; preds = %for.inc805
  %.pre1366 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !tbaa !0
  br label %for.end807

for.end807:                                       ; preds = %for.cond747.for.end807_crit_edge, %for.cond747.preheader
  %76 = phi %struct.seqinfo_s* [ %.pre1366, %for.cond747.for.end807_crit_edge ], [ %69, %for.cond747.preheader ]
  %rpos.0.lcssa = phi i32 [ %rpos.1, %for.cond747.for.end807_crit_edge ], [ 0, %for.cond747.preheader ]
  %idxprom808 = sext i32 %rpos.0.lcssa to i64
  %ss812 = getelementptr inbounds %struct.seqinfo_s* %76, i64 %indvars.iv1337, i32 10
  %77 = load i8** %ss812, align 8, !tbaa !0
  %arrayidx813 = getelementptr inbounds i8* %77, i64 %idxprom808
  store i8 0, i8* %arrayidx813, align 1, !tbaa !1
  %.pre = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !tbaa !0
  %flags818.phi.trans.insert = getelementptr inbounds %struct.seqinfo_s* %.pre, i64 %indvars.iv1337, i32 0
  %.pre1364 = load i32* %flags818.phi.trans.insert, align 4, !tbaa !3
  br label %if.end814

if.end814:                                        ; preds = %for.body739, %for.end807
  %78 = phi i32 [ %70, %for.body739 ], [ %.pre1364, %for.end807 ]
  %79 = phi %struct.seqinfo_s* [ %69, %for.body739 ], [ %.pre, %for.end807 ]
  %and819 = and i32 %78, 1024
  %tobool820 = icmp eq i32 %and819, 0
  br i1 %tobool820, label %for.inc890, label %for.cond822.preheader

for.cond822.preheader:                            ; preds = %if.end814
  br i1 %cmp8231270, label %for.body825.lr.ph, label %for.end882

for.body825.lr.ph:                                ; preds = %for.cond822.preheader
  %arrayidx828 = getelementptr inbounds i8** %29, i64 %indvars.iv1337
  br label %for.body825

for.body825:                                      ; preds = %for.inc880, %for.body825.lr.ph
  %indvars.iv1333 = phi i64 [ 0, %for.body825.lr.ph ], [ %indvars.iv.next1334, %for.inc880 ]
  %rpos.21272 = phi i32 [ 0, %for.body825.lr.ph ], [ %rpos.3, %for.inc880 ]
  %80 = load i8** %arrayidx828, align 8, !tbaa !0
  %arrayidx829 = getelementptr inbounds i8* %80, i64 %indvars.iv1333
  %81 = load i8* %arrayidx829, align 1, !tbaa !1
  switch i8 %81, label %if.then865 [
    i8 32, label %for.inc880
    i8 46, label %for.inc880
    i8 95, label %for.inc880
    i8 45, label %for.inc880
    i8 126, label %for.inc880
  ]

if.then865:                                       ; preds = %for.body825
  %82 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !tbaa !0
  %sa870 = getelementptr inbounds %struct.seqinfo_s* %82, i64 %indvars.iv1337, i32 11
  %83 = load i8** %sa870, align 8, !tbaa !0
  %arrayidx871 = getelementptr inbounds i8* %83, i64 %indvars.iv1333
  %84 = load i8* %arrayidx871, align 1, !tbaa !1
  %idxprom872 = sext i32 %rpos.21272 to i64
  %arrayidx877 = getelementptr inbounds i8* %83, i64 %idxprom872
  store i8 %84, i8* %arrayidx877, align 1, !tbaa !1
  %inc878 = add nsw i32 %rpos.21272, 1
  br label %for.inc880

for.inc880:                                       ; preds = %for.body825, %for.body825, %for.body825, %for.body825, %for.body825, %if.then865
  %rpos.3 = phi i32 [ %rpos.21272, %for.body825 ], [ %inc878, %if.then865 ], [ %rpos.21272, %for.body825 ], [ %rpos.21272, %for.body825 ], [ %rpos.21272, %for.body825 ], [ %rpos.21272, %for.body825 ]
  %indvars.iv.next1334 = add i64 %indvars.iv1333, 1
  %lftr.wideiv1335 = trunc i64 %indvars.iv.next1334 to i32
  %exitcond1336 = icmp eq i32 %lftr.wideiv1335, %alen.0.lcssa
  br i1 %exitcond1336, label %for.cond822.for.end882_crit_edge, label %for.body825

for.cond822.for.end882_crit_edge:                 ; preds = %for.inc880
  %.pre1365 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !tbaa !0
  br label %for.end882

for.end882:                                       ; preds = %for.cond822.for.end882_crit_edge, %for.cond822.preheader
  %85 = phi %struct.seqinfo_s* [ %.pre1365, %for.cond822.for.end882_crit_edge ], [ %79, %for.cond822.preheader ]
  %rpos.2.lcssa = phi i32 [ %rpos.3, %for.cond822.for.end882_crit_edge ], [ 0, %for.cond822.preheader ]
  %idxprom883 = sext i32 %rpos.2.lcssa to i64
  %sa887 = getelementptr inbounds %struct.seqinfo_s* %85, i64 %indvars.iv1337, i32 11
  %86 = load i8** %sa887, align 8, !tbaa !0
  %arrayidx888 = getelementptr inbounds i8* %86, i64 %idxprom883
  store i8 0, i8* %arrayidx888, align 1, !tbaa !1
  br label %for.inc890

for.inc890:                                       ; preds = %if.end814, %for.end882
  %indvars.iv.next1338 = add i64 %indvars.iv1337, 1
  %lftr.wideiv1339 = trunc i64 %indvars.iv.next1338 to i32
  %exitcond1340 = icmp eq i32 %lftr.wideiv1339, %num.0.lcssa1376
  br i1 %exitcond1340, label %for.end892, label %for.body739

for.end892:                                       ; preds = %for.inc890, %for.cond736.preheader
  %rf893 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 5
  %87 = load i8** %rf893, align 8, !tbaa !0
  %cmp894 = icmp eq i8* %87, null
  br i1 %cmp894, label %if.end900, label %if.then896

if.then896:                                       ; preds = %for.end892
  %idxprom897 = sext i32 %alen.0.lcssa to i64
  %arrayidx899 = getelementptr inbounds i8* %87, i64 %idxprom897
  store i8 0, i8* %arrayidx899, align 1, !tbaa !1
  br label %if.end900

if.end900:                                        ; preds = %for.end892, %if.then896
  %cs901 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 4
  %88 = load i8** %cs901, align 8, !tbaa !0
  %cmp902 = icmp eq i8* %88, null
  br i1 %cmp902, label %for.cond909.preheader, label %if.then904

if.then904:                                       ; preds = %if.end900
  %idxprom905 = sext i32 %alen.0.lcssa to i64
  %arrayidx907 = getelementptr inbounds i8* %88, i64 %idxprom905
  store i8 0, i8* %arrayidx907, align 1, !tbaa !1
  br label %for.cond909.preheader

for.cond909.preheader:                            ; preds = %if.end900, %if.then904
  br i1 %cmp2621286, label %for.body912.lr.ph, label %for.end966

for.body912.lr.ph:                                ; preds = %for.cond909.preheader
  %idxprom913 = sext i32 %alen.0.lcssa to i64
  br label %for.body912

for.cond920.preheader:                            ; preds = %for.body912
  br i1 %cmp2621286, label %for.body923, label %for.end966

for.body912:                                      ; preds = %for.body912, %for.body912.lr.ph
  %indvars.iv1325 = phi i64 [ 0, %for.body912.lr.ph ], [ %indvars.iv.next1326, %for.body912 ]
  %arrayidx915 = getelementptr inbounds i8** %29, i64 %indvars.iv1325
  %89 = load i8** %arrayidx915, align 8, !tbaa !0
  %arrayidx916 = getelementptr inbounds i8* %89, i64 %idxprom913
  store i8 0, i8* %arrayidx916, align 1, !tbaa !1
  %indvars.iv.next1326 = add i64 %indvars.iv1325, 1
  %lftr.wideiv1327 = trunc i64 %indvars.iv.next1326 to i32
  %exitcond1328 = icmp eq i32 %lftr.wideiv1327, %num.0.lcssa1376
  br i1 %exitcond1328, label %for.cond920.preheader, label %for.body912

for.body923:                                      ; preds = %for.cond920.preheader, %for.end955
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end955 ], [ 0, %for.cond920.preheader ]
  %arrayidx925 = getelementptr inbounds i8** %29, i64 %indvars.iv
  %90 = load i8** %arrayidx925, align 8, !tbaa !0
  br label %for.cond926

for.cond926:                                      ; preds = %for.inc953, %for.body923
  %sptr.1 = phi i8* [ %90, %for.body923 ], [ %incdec.ptr954, %for.inc953 ]
  %count.0 = phi i32 [ 0, %for.body923 ], [ %count.1, %for.inc953 ]
  %91 = load i8* %sptr.1, align 1, !tbaa !1
  switch i8 %91, label %if.then950 [
    i8 0, label %for.end955
    i8 32, label %for.inc953
    i8 46, label %for.inc953
    i8 95, label %for.inc953
    i8 45, label %for.inc953
    i8 126, label %for.inc953
  ]

if.then950:                                       ; preds = %for.cond926
  %inc951 = add nsw i32 %count.0, 1
  br label %for.inc953

for.inc953:                                       ; preds = %for.cond926, %for.cond926, %for.cond926, %for.cond926, %for.cond926, %if.then950
  %count.1 = phi i32 [ %inc951, %if.then950 ], [ %count.0, %for.cond926 ], [ %count.0, %for.cond926 ], [ %count.0, %for.cond926 ], [ %count.0, %for.cond926 ], [ %count.0, %for.cond926 ]
  %incdec.ptr954 = getelementptr inbounds i8* %sptr.1, i64 1
  br label %for.cond926

for.end955:                                       ; preds = %for.cond926
  %92 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !tbaa !0
  %len = getelementptr inbounds %struct.seqinfo_s* %92, i64 %indvars.iv, i32 5
  store i32 %count.0, i32* %len, align 4, !tbaa !3
  %flags962 = getelementptr inbounds %struct.seqinfo_s* %92, i64 %indvars.iv, i32 0
  %93 = load i32* %flags962, align 4, !tbaa !3
  %or963 = or i32 %93, 64
  store i32 %or963, i32* %flags962, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %num.0.lcssa1376
  br i1 %exitcond, label %for.end966, label %for.body923

for.end966:                                       ; preds = %for.cond909.preheader, %for.end955, %for.cond920.preheader
  %94 = bitcast %struct.block_struc* %blocks.0.lcssa1374 to i8*
  call void @free(i8* %94) #6
  %tobool967 = icmp eq i32 %warn_names.3, 0
  br i1 %tobool967, label %if.end969, label %if.then968

if.then968:                                       ; preds = %for.end966
  %fname = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1
  %95 = load i8** %fname, align 8, !tbaa !0
  call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([54 x i8]* @.str31, i64 0, i64 0), i8* %95) #6
  br label %if.end969

if.end969:                                        ; preds = %for.end966, %if.then968
  %call970 = call %struct.msa_struct* @MSAFromAINFO(i8** %29, %struct.aliinfo_s* %base_ainfo) #6
  call void @MSAVerifyParse(%struct.msa_struct* %call970) #6
  call void @FreeAlignment(i8** %29, %struct.aliinfo_s* %base_ainfo) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end969, %if.then7
  %retval.0 = phi %struct.msa_struct* [ null, %if.then7 ], [ %call970, %if.end969 ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 104, i8* %2) #1
  call void @llvm.lifetime.end(i64 4096, i8* %1) #1
  call void @llvm.lifetime.end(i64 4096, i8* %0) #1
  ret %struct.msa_struct* %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: optsize
declare void @InitAinfo(%struct.aliinfo_s*) #3

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #3

; Function Attrs: optsize
declare i32 @SetSeqinfoString(%struct.seqinfo_s*, i8*, i32) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare void @rewind(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #3

; Function Attrs: optsize
declare i8* @Strdup(i8*) #3

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @IsReal(i8*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @copy_alignment_line(i8* nocapture %aseq, i32 %apos, i32 %name_rcol, i8* nocapture %buffer, i32 %lcol, i32 %rcol) #0 {
entry:
  %idx.ext = sext i32 %apos to i64
  %add.ptr = getelementptr inbounds i8* %aseq, i64 %idx.ext
  %cmp6 = icmp sgt i32 %lcol, 0
  br i1 %cmp6, label %for.body, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.body, %entry
  %s2.0.lcssa = phi i8* [ %buffer, %entry ], [ %s2.0.incdec.ptr, %for.body ]
  %cmp21 = icmp sgt i32 %lcol, %rcol
  br i1 %cmp21, label %return, label %for.body3

for.body:                                         ; preds = %entry, %for.body
  %i.08 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %s2.07 = phi i8* [ %s2.0.incdec.ptr, %for.body ], [ %buffer, %entry ]
  %0 = load i8* %s2.07, align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  %incdec.ptr = getelementptr inbounds i8* %s2.07, i64 1
  %s2.0.incdec.ptr = select i1 %tobool, i8* %s2.07, i8* %incdec.ptr
  %inc = add nsw i32 %i.08, 1
  %exitcond = icmp eq i32 %inc, %lcol
  br i1 %exitcond, label %for.cond1.preheader, label %for.body

for.body3:                                        ; preds = %for.cond1.preheader, %if.end26
  %i.15 = phi i32 [ %inc33, %if.end26 ], [ %lcol, %for.cond1.preheader ]
  %s2.24 = phi i8* [ %s2.2.incdec.ptr30, %if.end26 ], [ %s2.0.lcssa, %for.cond1.preheader ]
  %s1.02 = phi i8* [ %incdec.ptr27, %if.end26 ], [ %add.ptr, %for.cond1.preheader ]
  %1 = load i8* %s2.24, align 1, !tbaa !1
  %cmp4 = icmp eq i8 %1, 9
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body3
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([73 x i8]* @.str33, i64 0, i64 0)) #6
  br label %return

if.end7:                                          ; preds = %for.body3
  %cmp8 = icmp sgt i32 %i.15, %name_rcol
  br i1 %cmp8, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end7
  store i8 46, i8* %s1.02, align 1, !tbaa !1
  br label %if.end26

if.else:                                          ; preds = %if.end7
  switch i8 %1, label %if.else23 [
    i8 0, label %if.then17
    i8 10, label %if.then17
    i8 32, label %if.then22
  ]

if.then17:                                        ; preds = %if.else, %if.else
  store i8 46, i8* %s1.02, align 1, !tbaa !1
  br label %if.end26

if.then22:                                        ; preds = %if.else
  store i8 46, i8* %s1.02, align 1, !tbaa !1
  br label %if.end26

if.else23:                                        ; preds = %if.else
  store i8 %1, i8* %s1.02, align 1, !tbaa !1
  br label %if.end26

if.end26:                                         ; preds = %if.then17, %if.else23, %if.then22, %if.then10
  %incdec.ptr27 = getelementptr inbounds i8* %s1.02, i64 1
  %2 = load i8* %s2.24, align 1, !tbaa !1
  %tobool28 = icmp eq i8 %2, 0
  %incdec.ptr30 = getelementptr inbounds i8* %s2.24, i64 1
  %s2.2.incdec.ptr30 = select i1 %tobool28, i8* %s2.24, i8* %incdec.ptr30
  %inc33 = add nsw i32 %i.15, 1
  %cmp2 = icmp slt i32 %i.15, %rcol
  br i1 %cmp2, label %for.body3, label %return

return:                                           ; preds = %for.cond1.preheader, %if.end26, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 1, %if.end26 ], [ 1, %for.cond1.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare void @Warn(i8*, ...) #3

; Function Attrs: optsize
declare %struct.msa_struct* @MSAFromAINFO(i8**, %struct.aliinfo_s*) #3

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #3

; Function Attrs: optsize
declare void @FreeAlignment(i8**, %struct.aliinfo_s*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @WriteSELEX(%struct._IO_FILE* nocapture %fp, %struct.msa_struct* %msa) #0 {
entry:
  tail call fastcc void @actually_write_selex(%struct._IO_FILE* %fp, %struct.msa_struct* %msa, i32 50) #8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @actually_write_selex(%struct._IO_FILE* nocapture %fp, %struct.msa_struct* %msa, i32 %cpl) #0 {
entry:
  %add = add nsw i32 %cpl, 101
  %conv = sext i32 %add to i64
  %call = tail call noalias i8* @malloc(i64 %conv) #6
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %0 = load i32* %nseq, align 4, !tbaa !3
  %cmp417 = icmp sgt i32 %0, 0
  br i1 %cmp417, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %1 = load i8*** %sqname, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv429 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next430, %for.body ]
  %namewidth.0418 = phi i32 [ 0, %for.body.lr.ph ], [ %conv3.namewidth.0, %for.body ]
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv429
  %2 = load i8** %arrayidx, align 8, !tbaa !0
  %call2 = tail call i64 @strlen(i8* %2) #7
  %conv3 = trunc i64 %call2 to i32
  %cmp4 = icmp sgt i32 %conv3, %namewidth.0418
  %conv3.namewidth.0 = select i1 %cmp4, i32 %conv3, i32 %namewidth.0418
  %indvars.iv.next430 = add i64 %indvars.iv429, 1
  %3 = trunc i64 %indvars.iv.next430 to i32
  %cmp = icmp slt i32 %3, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %namewidth.0.lcssa = phi i32 [ 0, %entry ], [ %conv3.namewidth.0, %for.body ]
  %cmp6 = icmp slt i32 %namewidth.0.lcssa, 6
  %.namewidth.0 = select i1 %cmp6, i32 6, i32 %namewidth.0.lcssa
  %ncomment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 21
  %4 = load i32* %ncomment, align 4, !tbaa !3
  %cmp11415 = icmp sgt i32 %4, 0
  br i1 %cmp11415, label %for.body13.lr.ph, label %if.end25

for.body13.lr.ph:                                 ; preds = %for.end
  %comment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 20
  br label %for.body13

for.body13:                                       ; preds = %for.body13.lr.ph, %for.body13
  %indvars.iv427 = phi i64 [ 0, %for.body13.lr.ph ], [ %indvars.iv.next428, %for.body13 ]
  %5 = load i8*** %comment, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i8** %5, i64 %indvars.iv427
  %6 = load i8** %arrayidx15, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), i8* %6) #6
  %indvars.iv.next428 = add i64 %indvars.iv427, 1
  %7 = load i32* %ncomment, align 4, !tbaa !3
  %8 = trunc i64 %indvars.iv.next428 to i32
  %cmp11 = icmp slt i32 %8, %7
  br i1 %cmp11, label %for.body13, label %for.end19

for.end19:                                        ; preds = %for.body13
  %cmp21 = icmp sgt i32 %7, 0
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %for.end19
  %fputc402 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end25

if.end25:                                         ; preds = %for.end, %if.then23, %for.end19
  %name = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7
  %9 = load i8** %name, align 8, !tbaa !0
  %cmp26 = icmp eq i8* %9, null
  br i1 %cmp26, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end25
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str35, i64 0, i64 0), i8* %9) #6
  br label %if.end31

if.end31:                                         ; preds = %if.end25, %if.then28
  %acc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 9
  %10 = load i8** %acc, align 8, !tbaa !0
  %cmp32 = icmp eq i8* %10, null
  br i1 %cmp32, label %if.end37, label %if.then34

if.then34:                                        ; preds = %if.end31
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str36, i64 0, i64 0), i8* %10) #6
  br label %if.end37

if.end37:                                         ; preds = %if.end31, %if.then34
  %desc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 8
  %11 = load i8** %desc, align 8, !tbaa !0
  %cmp38 = icmp eq i8* %11, null
  br i1 %cmp38, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end37
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str37, i64 0, i64 0), i8* %11) #6
  br label %if.end43

if.end43:                                         ; preds = %if.end37, %if.then40
  %au = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 10
  %12 = load i8** %au, align 8, !tbaa !0
  %cmp44 = icmp eq i8* %12, null
  br i1 %cmp44, label %if.end49, label %if.then46

if.then46:                                        ; preds = %if.end43
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str38, i64 0, i64 0), i8* %12) #6
  br label %if.end49

if.end49:                                         ; preds = %if.end43, %if.then46
  %arrayidx50 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 2
  %13 = load i32* %arrayidx50, align 4, !tbaa !3
  %tobool = icmp eq i32 %13, 0
  br i1 %tobool, label %if.end70, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end49
  %arrayidx52 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 3
  %14 = load i32* %arrayidx52, align 4, !tbaa !3
  %tobool53 = icmp eq i32 %14, 0
  %arrayidx66 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 2
  %15 = load float* %arrayidx66, align 4, !tbaa !4
  %conv67 = fpext float %15 to double
  br i1 %tobool53, label %if.then64, label %if.then54

if.then54:                                        ; preds = %land.lhs.true
  %arrayidx58 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 3
  %16 = load float* %arrayidx58, align 4, !tbaa !4
  %conv59 = fpext float %16 to double
  %call60 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str39, i64 0, i64 0), double %conv67, double %conv59) #6
  br label %if.end70

if.then64:                                        ; preds = %land.lhs.true
  %call68 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str40, i64 0, i64 0), double %conv67) #6
  br label %if.end70

if.end70:                                         ; preds = %if.end49, %if.then64, %if.then54
  %arrayidx72 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 4
  %17 = load i32* %arrayidx72, align 4, !tbaa !3
  %tobool73 = icmp eq i32 %17, 0
  br i1 %tobool73, label %if.end96, label %land.lhs.true74

land.lhs.true74:                                  ; preds = %if.end70
  %arrayidx76 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 5
  %18 = load i32* %arrayidx76, align 4, !tbaa !3
  %tobool77 = icmp eq i32 %18, 0
  %arrayidx92 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 4
  %19 = load float* %arrayidx92, align 4, !tbaa !4
  %conv93 = fpext float %19 to double
  br i1 %tobool77, label %if.then90, label %if.then78

if.then78:                                        ; preds = %land.lhs.true74
  %arrayidx83 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 5
  %20 = load float* %arrayidx83, align 4, !tbaa !4
  %conv84 = fpext float %20 to double
  %call85 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0), double %conv93, double %conv84) #6
  br label %if.end96

if.then90:                                        ; preds = %land.lhs.true74
  %call94 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str42, i64 0, i64 0), double %conv93) #6
  br label %if.end96

if.end96:                                         ; preds = %if.end70, %if.then90, %if.then78
  %arrayidx98 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 0
  %21 = load i32* %arrayidx98, align 4, !tbaa !3
  %tobool99 = icmp eq i32 %21, 0
  br i1 %tobool99, label %for.cond123.preheader, label %land.lhs.true100

land.lhs.true100:                                 ; preds = %if.end96
  %arrayidx102 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 1
  %22 = load i32* %arrayidx102, align 4, !tbaa !3
  %tobool103 = icmp eq i32 %22, 0
  %arrayidx118 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 0
  %23 = load float* %arrayidx118, align 4, !tbaa !4
  %conv119 = fpext float %23 to double
  br i1 %tobool103, label %if.then116, label %if.then104

if.then104:                                       ; preds = %land.lhs.true100
  %arrayidx109 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 1
  %24 = load float* %arrayidx109, align 4, !tbaa !4
  %conv110 = fpext float %24 to double
  %call111 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str43, i64 0, i64 0), double %conv119, double %conv110) #6
  br label %for.cond123.preheader

if.then116:                                       ; preds = %land.lhs.true100
  %call120 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0), double %conv119) #6
  br label %for.cond123.preheader

for.cond123.preheader:                            ; preds = %if.end96, %if.then116, %if.then104
  %25 = load i32* %nseq, align 4, !tbaa !3
  %cmp125413 = icmp sgt i32 %25, 0
  br i1 %cmp125413, label %for.body127.lr.ph, label %for.end163

for.body127.lr.ph:                                ; preds = %for.cond123.preheader
  %sqname129 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2
  %sqacc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 14
  %sqdesc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15
  br label %for.body127

for.body127:                                      ; preds = %cond.end158, %for.body127.lr.ph
  %indvars.iv424 = phi i64 [ 0, %for.body127.lr.ph ], [ %indvars.iv.next425, %cond.end158 ]
  %26 = load i8*** %sqname129, align 8, !tbaa !0
  %arrayidx130 = getelementptr inbounds i8** %26, i64 %indvars.iv424
  %27 = load i8** %arrayidx130, align 8, !tbaa !0
  %28 = load float** %wgt, align 8, !tbaa !0
  %arrayidx132 = getelementptr inbounds float* %28, i64 %indvars.iv424
  %29 = load float* %arrayidx132, align 4, !tbaa !4
  %conv133 = fpext float %29 to double
  %30 = load i8*** %sqacc, align 8, !tbaa !0
  %cmp134 = icmp eq i8** %30, null
  br i1 %cmp134, label %cond.end, label %land.lhs.true136

land.lhs.true136:                                 ; preds = %for.body127
  %arrayidx139 = getelementptr inbounds i8** %30, i64 %indvars.iv424
  %31 = load i8** %arrayidx139, align 8, !tbaa !0
  %cmp140 = icmp eq i8* %31, null
  %. = select i1 %cmp140, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* %31
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true136, %for.body127
  %cond = phi i8* [ getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), %for.body127 ], [ %., %land.lhs.true136 ]
  %32 = load i8*** %sqdesc, align 8, !tbaa !0
  %cmp145 = icmp eq i8** %32, null
  br i1 %cmp145, label %cond.end158, label %land.lhs.true147

land.lhs.true147:                                 ; preds = %cond.end
  %arrayidx150 = getelementptr inbounds i8** %32, i64 %indvars.iv424
  %33 = load i8** %arrayidx150, align 8, !tbaa !0
  %cmp151 = icmp eq i8* %33, null
  %.403 = select i1 %cmp151, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* %33
  br label %cond.end158

cond.end158:                                      ; preds = %land.lhs.true147, %cond.end
  %cond159 = phi i8* [ getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), %cond.end ], [ %.403, %land.lhs.true147 ]
  %call160 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str45, i64 0, i64 0), i32 %.namewidth.0, i32 %.namewidth.0, i8* %27, double %conv133, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* %cond, i32 0, i32 0, i32 0, i8* %cond159) #6
  %indvars.iv.next425 = add i64 %indvars.iv424, 1
  %34 = load i32* %nseq, align 4, !tbaa !3
  %35 = trunc i64 %indvars.iv.next425 to i32
  %cmp125 = icmp slt i32 %35, %34
  br i1 %cmp125, label %for.body127, label %for.end163

for.end163:                                       ; preds = %cond.end158, %for.cond123.preheader
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %36 = load i32* %alen, align 4, !tbaa !3
  %cmp166411 = icmp sgt i32 %36, 0
  br i1 %cmp166411, label %for.body168.lr.ph, label %for.end258

for.body168.lr.ph:                                ; preds = %for.end163
  %ss_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11
  %rf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13
  %conv190 = sext i32 %cpl to i64
  %arrayidx193 = getelementptr inbounds i8* %call, i64 %conv190
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %sqname210 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17
  br label %for.body168

for.body168:                                      ; preds = %for.body168.lr.ph, %for.inc256
  %indvars.iv422 = phi i64 [ 0, %for.body168.lr.ph ], [ %indvars.iv.next423, %for.inc256 ]
  %37 = trunc i64 %indvars.iv422 to i32
  %cmp169 = icmp sgt i32 %37, 0
  br i1 %cmp169, label %if.then171, label %if.end173

if.then171:                                       ; preds = %for.body168
  %fputc399 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end173

if.end173:                                        ; preds = %for.body168, %if.then171
  %38 = load i8** %ss_cons, align 8, !tbaa !0
  %cmp174 = icmp eq i8* %38, null
  br i1 %cmp174, label %if.end183, label %if.then176

if.then176:                                       ; preds = %if.end173
  %add.ptr = getelementptr inbounds i8* %38, i64 %indvars.iv422
  %call179 = tail call i8* @strncpy(i8* %call, i8* %add.ptr, i64 %conv190) #6
  store i8 0, i8* %arrayidx193, align 1, !tbaa !1
  %call182 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str47, i64 0, i64 0), i32 %.namewidth.0, i32 %.namewidth.0, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* %call) #6
  br label %if.end183

if.end183:                                        ; preds = %if.end173, %if.then176
  %39 = load i8** %rf, align 8, !tbaa !0
  %cmp184 = icmp eq i8* %39, null
  br i1 %cmp184, label %for.cond196.preheader, label %if.then186

if.then186:                                       ; preds = %if.end183
  %add.ptr189 = getelementptr inbounds i8* %39, i64 %indvars.iv422
  %call191 = tail call i8* @strncpy(i8* %call, i8* %add.ptr189, i64 %conv190) #6
  store i8 0, i8* %arrayidx193, align 1, !tbaa !1
  %call194 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str47, i64 0, i64 0), i32 %.namewidth.0, i32 %.namewidth.0, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* %call) #6
  br label %for.cond196.preheader

for.cond196.preheader:                            ; preds = %if.end183, %if.then186
  %40 = load i32* %nseq, align 4, !tbaa !3
  %cmp198409 = icmp sgt i32 %40, 0
  br i1 %cmp198409, label %for.body200, label %for.inc256

for.body200:                                      ; preds = %for.cond196.preheader, %for.inc253
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc253 ], [ 0, %for.cond196.preheader ]
  %41 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx202 = getelementptr inbounds i8** %41, i64 %indvars.iv
  %42 = load i8** %arrayidx202, align 8, !tbaa !0
  %add.ptr204 = getelementptr inbounds i8* %42, i64 %indvars.iv422
  %call206 = tail call i8* @strncpy(i8* %call, i8* %add.ptr204, i64 %conv190) #6
  store i8 0, i8* %arrayidx193, align 1, !tbaa !1
  %43 = load i8*** %sqname210, align 8, !tbaa !0
  %arrayidx211 = getelementptr inbounds i8** %43, i64 %indvars.iv
  %44 = load i8** %arrayidx211, align 8, !tbaa !0
  %call212 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str47, i64 0, i64 0), i32 %.namewidth.0, i32 %.namewidth.0, i8* %44, i8* %call) #6
  %45 = load i8*** %ss, align 8, !tbaa !0
  %cmp213 = icmp eq i8** %45, null
  br i1 %cmp213, label %if.end232, label %land.lhs.true215

land.lhs.true215:                                 ; preds = %for.body200
  %arrayidx218 = getelementptr inbounds i8** %45, i64 %indvars.iv
  %46 = load i8** %arrayidx218, align 8, !tbaa !0
  %cmp219 = icmp eq i8* %46, null
  br i1 %cmp219, label %if.end232, label %if.then221

if.then221:                                       ; preds = %land.lhs.true215
  %add.ptr226 = getelementptr inbounds i8* %46, i64 %indvars.iv422
  %call228 = tail call i8* @strncpy(i8* %call, i8* %add.ptr226, i64 %conv190) #6
  store i8 0, i8* %arrayidx193, align 1, !tbaa !1
  %call231 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str47, i64 0, i64 0), i32 %.namewidth.0, i32 %.namewidth.0, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* %call) #6
  br label %if.end232

if.end232:                                        ; preds = %land.lhs.true215, %for.body200, %if.then221
  %47 = load i8*** %sa, align 8, !tbaa !0
  %cmp233 = icmp eq i8** %47, null
  br i1 %cmp233, label %for.inc253, label %land.lhs.true235

land.lhs.true235:                                 ; preds = %if.end232
  %arrayidx238 = getelementptr inbounds i8** %47, i64 %indvars.iv
  %48 = load i8** %arrayidx238, align 8, !tbaa !0
  %cmp239 = icmp eq i8* %48, null
  br i1 %cmp239, label %for.inc253, label %if.then241

if.then241:                                       ; preds = %land.lhs.true235
  %add.ptr246 = getelementptr inbounds i8* %48, i64 %indvars.iv422
  %call248 = tail call i8* @strncpy(i8* %call, i8* %add.ptr246, i64 %conv190) #6
  store i8 0, i8* %arrayidx193, align 1, !tbaa !1
  %call251 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str47, i64 0, i64 0), i32 %.namewidth.0, i32 %.namewidth.0, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* %call) #6
  br label %for.inc253

for.inc253:                                       ; preds = %land.lhs.true235, %if.end232, %if.then241
  %indvars.iv.next = add i64 %indvars.iv, 1
  %49 = load i32* %nseq, align 4, !tbaa !3
  %50 = trunc i64 %indvars.iv.next to i32
  %cmp198 = icmp slt i32 %50, %49
  br i1 %cmp198, label %for.body200, label %for.inc256

for.inc256:                                       ; preds = %for.inc253, %for.cond196.preheader
  %indvars.iv.next423 = add i64 %indvars.iv422, %conv190
  %51 = load i32* %alen, align 4, !tbaa !3
  %52 = trunc i64 %indvars.iv.next423 to i32
  %cmp166 = icmp slt i32 %52, %51
  br i1 %cmp166, label %for.body168, label %for.end258

for.end258:                                       ; preds = %for.inc256, %for.end163
  tail call void @free(i8* %call) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @WriteSELEXOneBlock(%struct._IO_FILE* nocapture %fp, %struct.msa_struct* %msa) #0 {
entry:
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %0 = load i32* %alen, align 4, !tbaa !3
  tail call fastcc void @actually_write_selex(%struct._IO_FILE* %fp, %struct.msa_struct* %msa, i32 %0) #8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @DealignAseqs(i8** nocapture %aseqs, i32 %num, i8*** nocapture %ret_rseqs) #0 {
entry:
  %conv = sext i32 %num to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 738, i64 %mul) #6
  %0 = bitcast i8* %call to i8**
  %cmp104 = icmp sgt i32 %num, 0
  br i1 %cmp104, label %for.body, label %for.end71

for.body:                                         ; preds = %entry, %for.end
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %for.end ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %aseqs, i64 %indvars.iv106
  %1 = load i8** %arrayidx, align 8, !tbaa !0
  %call2 = tail call i64 @strlen(i8* %1) #7
  %add = shl i64 %call2, 32
  %sext = add i64 %add, 4294967296
  %conv4 = ashr exact i64 %sext, 32
  %call6 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 744, i64 %conv4) #6
  %arrayidx8 = getelementptr inbounds i8** %0, i64 %indvars.iv106
  store i8* %call6, i8** %arrayidx8, align 8, !tbaa !0
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body ]
  %depos.0 = phi i32 [ %depos.1, %for.inc ], [ 0, %for.body ]
  %2 = load i8** %arrayidx, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i8* %2, i64 %indvars.iv
  %3 = load i8* %arrayidx13, align 1, !tbaa !1
  switch i8 %3, label %if.then [
    i8 0, label %for.end
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ]

if.then:                                          ; preds = %for.cond9
  %idxprom60 = sext i32 %depos.0 to i64
  %4 = load i8** %arrayidx8, align 8, !tbaa !0
  %arrayidx63 = getelementptr inbounds i8* %4, i64 %idxprom60
  store i8 %3, i8* %arrayidx63, align 1, !tbaa !1
  %inc = add nsw i32 %depos.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.cond9, %for.cond9, %for.cond9, %for.cond9, %for.cond9, %if.then
  %depos.1 = phi i32 [ %inc, %if.then ], [ %depos.0, %for.cond9 ], [ %depos.0, %for.cond9 ], [ %depos.0, %for.cond9 ], [ %depos.0, %for.cond9 ], [ %depos.0, %for.cond9 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  br label %for.cond9

for.end:                                          ; preds = %for.cond9
  %idxprom65 = sext i32 %depos.0 to i64
  %5 = load i8** %arrayidx8, align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds i8* %5, i64 %idxprom65
  store i8 0, i8* %arrayidx68, align 1, !tbaa !1
  %indvars.iv.next107 = add i64 %indvars.iv106, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next107 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %num
  br i1 %exitcond, label %for.end71, label %for.body

for.end71:                                        ; preds = %for.end, %entry
  store i8** %0, i8*** %ret_rseqs, align 8, !tbaa !0
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define i32 @IsSELEXFormat(i8* nocapture %filename) #0 {
entry:
  %buffer = alloca [4096 x i8], align 16
  %0 = getelementptr inbounds [4096 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #1
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str32, i64 0, i64 0)) #6
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %land.rhs

if.then:                                          ; preds = %entry
  store i32 4, i32* @squid_errno, align 4, !tbaa !3
  br label %cleanup

land.rhs:                                         ; preds = %entry, %while.cond.backedge
  %linenum.095 = phi i32 [ %inc, %while.cond.backedge ], [ 0, %entry ]
  %call2 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %call) #6
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %DONE, label %while.body

while.body:                                       ; preds = %land.rhs
  %inc = add nsw i32 %linenum.095, 1
  %call5 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0), i64 4) #7
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %DONE, label %if.else

if.else:                                          ; preds = %while.body
  %call9 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i64 4) #7
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %DONE, label %if.else12

if.else12:                                        ; preds = %if.else
  %call14 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i64 4) #7
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %DONE, label %if.else17

if.else17:                                        ; preds = %if.else12
  %call19 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0), i64 4) #7
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %DONE, label %if.else22

if.else22:                                        ; preds = %if.else17
  %call24 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i64 4) #7
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %DONE, label %if.else27

if.else27:                                        ; preds = %if.else22
  %call29 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i64 4) #7
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %DONE, label %if.else32

if.else32:                                        ; preds = %if.else27
  %call34 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i64 4) #7
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %DONE, label %if.else37

if.else37:                                        ; preds = %if.else32
  %call39 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i64 4) #7
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %DONE, label %if.else42

if.else42:                                        ; preds = %if.else37
  %call44 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i64 4) #7
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %DONE, label %if.else47

if.else47:                                        ; preds = %if.else42
  %call49 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i64 4) #7
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %DONE, label %if.else52

if.else52:                                        ; preds = %if.else47
  %call54 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i64 4) #7
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %DONE, label %if.end67

if.end67:                                         ; preds = %if.else52
  %1 = load i8* %0, align 16, !tbaa !1
  %conv = sext i8 %1 to i32
  %call69 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %conv) #7
  %cmp70 = icmp eq i8* %call69, null
  br i1 %cmp70, label %if.end73, label %while.cond.backedge

if.end73:                                         ; preds = %if.end67
  %call75 = call i8* @strtok(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp76 = icmp eq i8* %call75, null
  br i1 %cmp76, label %while.cond.backedge, label %if.end79

while.cond.backedge:                              ; preds = %if.end73, %if.end79, %if.end84, %if.end67
  %cmp1 = icmp slt i32 %inc, 500
  br i1 %cmp1, label %land.rhs, label %DONE

if.end79:                                         ; preds = %if.end73
  %call80 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #6
  %cmp81 = icmp eq i8* %call80, null
  br i1 %cmp81, label %while.cond.backedge, label %if.end84

if.end84:                                         ; preds = %if.end79
  %call85 = call i32 @Seqtype(i8* %call80) #6
  %cmp86 = icmp eq i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %while.cond.backedge

if.then88:                                        ; preds = %if.end84
  %call89 = call i32 @fclose(%struct._IO_FILE* %call) #6
  br label %cleanup

DONE:                                             ; preds = %land.rhs, %while.cond.backedge, %if.else52, %if.else47, %if.else42, %if.else37, %if.else32, %if.else27, %if.else22, %if.else17, %if.else12, %if.else, %while.body
  %call91 = call i32 @fclose(%struct._IO_FILE* %call) #6
  br label %cleanup

cleanup:                                          ; preds = %DONE, %if.then88, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %DONE ], [ 0, %if.then88 ]
  call void @llvm.lifetime.end(i64 4096, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare i32 @Seqtype(i8*) #3

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
