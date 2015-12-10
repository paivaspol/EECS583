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
  call void @llvm.dbg.value(metadata !{%struct.msafile_struct* %afp}, i64 0, metadata !197), !dbg !338
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !201), !dbg !339
  %0 = getelementptr inbounds [4096 x i8]* %buffer, i64 0, i64 0, !dbg !340
  call void @llvm.lifetime.start(i64 4096, i8* %0) #2, !dbg !340
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %buffer}, metadata !202), !dbg !340
  %1 = getelementptr inbounds [4096 x i8]* %bufcpy, i64 0, i64 0, !dbg !341
  call void @llvm.lifetime.start(i64 4096, i8* %1) #2, !dbg !341
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %bufcpy}, metadata !206), !dbg !341
  call void @llvm.dbg.value(metadata !342, i64 0, metadata !207), !dbg !343
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !225), !dbg !344
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !226), !dbg !345
  %2 = bitcast %struct.aliinfo_s* %base_ainfo to i8*, !dbg !346
  call void @llvm.lifetime.start(i64 104, i8* %2) #2, !dbg !346
  call void @llvm.dbg.declare(metadata !{%struct.aliinfo_s* %base_ainfo}, metadata !227), !dbg !346
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !347
  %3 = load %struct._IO_FILE** %f, align 8, !dbg !347, !tbaa !348
  %call = call i32 @feof(%struct._IO_FILE* %3) #7, !dbg !347
  %tobool = icmp eq i32 %call, 0, !dbg !347
  br i1 %tobool, label %if.end, label %cleanup, !dbg !347

if.end:                                           ; preds = %entry
  %do_gzip = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 6, !dbg !351
  %4 = load i32* %do_gzip, align 4, !dbg !351, !tbaa !352
  %tobool1 = icmp eq i32 %4, 0, !dbg !351
  br i1 %tobool1, label %lor.lhs.false, label %if.then3, !dbg !351

lor.lhs.false:                                    ; preds = %if.end
  %do_stdin = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 7, !dbg !351
  %5 = load i32* %do_stdin, align 4, !dbg !351, !tbaa !352
  %tobool2 = icmp eq i32 %5, 0, !dbg !351
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !351

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0)) #7, !dbg !353
  br label %if.end4, !dbg !353

if.end4:                                          ; preds = %lor.lhs.false, %if.then3
  %6 = load %struct._IO_FILE** %f, align 8, !dbg !354, !tbaa !348
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %6}, i64 0, metadata !199), !dbg !354
  call void @llvm.dbg.value(metadata !{%struct.aliinfo_s* %base_ainfo}, i64 0, metadata !270), !dbg !355
  call void @InitAinfo(%struct.aliinfo_s* %base_ainfo) #7, !dbg !356
  %call61321 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #7, !dbg !357
  %cmp1322 = icmp eq i8* %call61321, null, !dbg !357
  br i1 %cmp1322, label %if.then7, label %if.end8, !dbg !357

if.then7:                                         ; preds = %do.body.backedge, %if.end4
  store i32 2, i32* @squid_errno, align 4, !dbg !359, !tbaa !352
  br label %cleanup, !dbg !359

if.end8:                                          ; preds = %if.end4, %do.body.backedge
  %have_rf.01324 = phi i32 [ %have_rf.1, %do.body.backedge ], [ 0, %if.end4 ]
  %have_cs.01323 = phi i32 [ %have_cs.1, %do.body.backedge ], [ 0, %if.end4 ]
  %call11 = call i8* @strcpy(i8* %1, i8* %0) #7, !dbg !361
  %7 = load i8* %0, align 16, !dbg !362, !tbaa !349
  %cmp13 = icmp eq i8 %7, 35, !dbg !362
  br i1 %cmp13, label %if.then15, label %do.cond, !dbg !362

if.then15:                                        ; preds = %if.end8
  %call17 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i64 4) #8, !dbg !363
  %cmp18 = icmp eq i32 %call17, 0, !dbg !363
  br i1 %cmp18, label %do.cond, label %if.else, !dbg !363

if.else:                                          ; preds = %if.then15
  %call22 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i64 4) #8, !dbg !365
  %cmp23 = icmp eq i32 %call22, 0, !dbg !365
  call void @llvm.dbg.value(metadata !366, i64 0, metadata !226), !dbg !365
  %.have_rf.0 = select i1 %cmp23, i32 1, i32 %have_rf.01324, !dbg !365
  br label %do.cond, !dbg !365

do.cond:                                          ; preds = %if.else, %if.then15, %if.end8
  %have_cs.1 = phi i32 [ %have_cs.01323, %if.end8 ], [ 1, %if.then15 ], [ %have_cs.01323, %if.else ]
  %have_rf.1 = phi i32 [ %have_rf.01324, %if.end8 ], [ %have_rf.01324, %if.then15 ], [ %.have_rf.0, %if.else ]
  %call30 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !367
  call void @llvm.dbg.value(metadata !{i8* %call30}, i64 0, metadata !214), !dbg !367
  %cmp31 = icmp eq i8* %call30, null, !dbg !367
  br i1 %cmp31, label %do.body.backedge, label %lor.rhs, !dbg !367

do.body.backedge:                                 ; preds = %do.cond, %lor.rhs
  %call6 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #7, !dbg !357
  %cmp = icmp eq i8* %call6, null, !dbg !357
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !357

lor.rhs:                                          ; preds = %do.cond
  %8 = load i8* %call30, align 1, !dbg !368, !tbaa !349
  %conv33 = sext i8 %8 to i32, !dbg !368
  %call34 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %conv33) #8, !dbg !368
  %cmp35 = icmp eq i8* %call34, null, !dbg !368
  br i1 %cmp35, label %while.cond.preheader, label %do.body.backedge, !dbg !368

while.cond.preheader:                             ; preds = %lor.rhs
  %call371306 = call i32 @feof(%struct._IO_FILE* %6) #7, !dbg !369
  %lnot1307 = icmp eq i32 %call371306, 0, !dbg !369
  br i1 %lnot1307, label %while.body.lr.ph, label %for.end243, !dbg !369

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sqinfo = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 6, !dbg !370
  %sub.ptr.rhs.cast = ptrtoint [4096 x i8]* %bufcpy to i64, !dbg !374
  %sub.ptr.rhs.cast117 = ptrtoint [4096 x i8]* %buffer to i64, !dbg !376
  br label %while.body, !dbg !369

while.cond.loopexit:                              ; preds = %do.body205.backedge, %lor.rhs220, %if.end203
  %nptr.0.ph = phi i8* [ null, %if.end203 ], [ %call217, %lor.rhs220 ], [ null, %do.body205.backedge ]
  %call37 = call i32 @feof(%struct._IO_FILE* %6) #7, !dbg !369
  %lnot = icmp eq i32 %call37, 0, !dbg !369
  br i1 %lnot, label %while.body, label %for.cond228.preheader, !dbg !369

for.cond228.preheader:                            ; preds = %while.cond.loopexit
  %cmp2291288 = icmp sgt i32 %blocknum.01310, -1, !dbg !377
  br i1 %cmp2291288, label %for.body231, label %for.end243, !dbg !377

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.loopexit
  %indvars.iv1358 = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next1359, %while.cond.loopexit ]
  %have_rf.21314 = phi i32 [ %have_rf.1, %while.body.lr.ph ], [ %have_rf.3.lcssa, %while.cond.loopexit ]
  %have_cs.21313 = phi i32 [ %have_cs.1, %while.body.lr.ph ], [ %have_cs.3.lcssa, %while.cond.loopexit ]
  %warn_names.01312 = phi i32 [ 0, %while.body.lr.ph ], [ %warn_names.1.lcssa, %while.cond.loopexit ]
  %nptr.01311 = phi i8* [ %call30, %while.body.lr.ph ], [ %nptr.0.ph, %while.cond.loopexit ]
  %blocknum.01310 = phi i32 [ 0, %while.body.lr.ph ], [ %inc204, %while.cond.loopexit ]
  %blocks.01309 = phi %struct.block_struc* [ null, %while.body.lr.ph ], [ %blocks.1, %while.cond.loopexit ]
  %num.01308 = phi i32 [ 0, %while.body.lr.ph ], [ %num.1, %while.cond.loopexit ]
  %9 = trunc i64 %indvars.iv1358 to i32, !dbg !379
  %cmp39 = icmp eq i32 %9, 0, !dbg !379
  br i1 %cmp39, label %if.then41, label %if.else43, !dbg !379

if.then41:                                        ; preds = %while.body
  %call42 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 151, i64 8) #7, !dbg !380
  br label %if.end46, !dbg !380

if.else43:                                        ; preds = %while.body
  %10 = bitcast %struct.block_struc* %blocks.01309 to i8*, !dbg !381
  %11 = shl i64 %indvars.iv1358, 3, !dbg !381
  %mul = add i64 %11, 8, !dbg !381
  %call45 = call i8* @sre_realloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 153, i8* %10, i64 %mul) #7, !dbg !381
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.then41
  %blocks.1.in = phi i8* [ %call42, %if.then41 ], [ %call45, %if.else43 ]
  %blocks.1 = bitcast i8* %blocks.1.in to %struct.block_struc*, !dbg !380
  %lcol = getelementptr inbounds %struct.block_struc* %blocks.1, i64 %indvars.iv1358, i32 0, !dbg !382
  store i32 4097, i32* %lcol, align 4, !dbg !382, !tbaa !352
  %rcol = getelementptr inbounds %struct.block_struc* %blocks.1, i64 %indvars.iv1358, i32 1, !dbg !383
  store i32 -1, i32* %rcol, align 4, !dbg !383, !tbaa !352
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !216), !dbg !384
  %cmp501292 = icmp eq i8* %nptr.01311, null, !dbg !385
  br i1 %cmp501292, label %while.end, label %while.body52, !dbg !385

while.body52:                                     ; preds = %do.cond189, %if.end46
  %indvars.iv1354 = phi i64 [ 0, %if.end46 ], [ %indvars.iv.next1355, %do.cond189 ]
  %have_rf.31297 = phi i32 [ %have_rf.21314, %if.end46 ], [ %have_rf.5, %do.cond189 ]
  %have_cs.31296 = phi i32 [ %have_cs.21313, %if.end46 ], [ %have_cs.5, %do.cond189 ]
  %warn_names.11295 = phi i32 [ %warn_names.01312, %if.end46 ], [ %warn_names.2, %do.cond189 ]
  %currnum.01294 = phi i32 [ 0, %if.end46 ], [ %inc, %do.cond189 ]
  %nptr.11293 = phi i8* [ %nptr.01311, %if.end46 ], [ %call184, %do.cond189 ]
  br i1 %cmp39, label %if.then55, label %if.else75, !dbg !386

if.then55:                                        ; preds = %while.body52
  %12 = trunc i64 %indvars.iv1354 to i32, !dbg !387
  %cmp56 = icmp eq i32 %12, 0, !dbg !387
  br i1 %cmp56, label %if.then58, label %if.else60, !dbg !387

if.then58:                                        ; preds = %if.then55
  %call59 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 164, i64 360) #7, !dbg !370
  br label %if.end67, !dbg !370

if.else60:                                        ; preds = %if.then55
  %13 = load %struct.seqinfo_s** %sqinfo, align 8, !dbg !388, !tbaa !348
  %14 = bitcast %struct.seqinfo_s* %13 to i8*, !dbg !388
  %15 = mul i64 %indvars.iv1354, 360, !dbg !388
  %mul64 = add i64 %15, 360, !dbg !388
  %call65 = call i8* @sre_realloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 166, i8* %14, i64 %mul64) #7, !dbg !388
  br label %if.end67

if.end67:                                         ; preds = %if.else60, %if.then58
  %call59.sink = phi i8* [ %call59, %if.then58 ], [ %call65, %if.else60 ]
  %16 = bitcast i8* %call59.sink to %struct.seqinfo_s*, !dbg !370
  store %struct.seqinfo_s* %16, %struct.seqinfo_s** %sqinfo, align 8, !dbg !370, !tbaa !348
  %flags = getelementptr inbounds %struct.seqinfo_s* %16, i64 %indvars.iv1354, i32 0, !dbg !389
  store i32 0, i32* %flags, align 4, !dbg !389, !tbaa !352
  %arrayidx73 = getelementptr inbounds %struct.seqinfo_s* %16, i64 %indvars.iv1354, !dbg !390
  %call74 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx73, i8* %nptr.11293, i32 1) #7, !dbg !390
  br label %if.end85, !dbg !391

if.else75:                                        ; preds = %while.body52
  %17 = load %struct.seqinfo_s** %sqinfo, align 8, !dbg !392, !tbaa !348
  %arraydecay79 = getelementptr inbounds %struct.seqinfo_s* %17, i64 %indvars.iv1354, i32 1, i64 0, !dbg !392
  %call80 = call i32 @strcmp(i8* %arraydecay79, i8* %nptr.11293) #8, !dbg !392
  %cmp81 = icmp eq i32 %call80, 0, !dbg !392
  call void @llvm.dbg.value(metadata !366, i64 0, metadata !221), !dbg !394
  %warn_names.1. = select i1 %cmp81, i32 %warn_names.11295, i32 1, !dbg !392
  br label %if.end85, !dbg !392

if.end85:                                         ; preds = %if.else75, %if.end67
  %warn_names.2 = phi i32 [ %warn_names.11295, %if.end67 ], [ %warn_names.1., %if.else75 ]
  %indvars.iv.next1355 = add i64 %indvars.iv1354, 1, !dbg !385
  %inc = add nsw i32 %currnum.01294, 1, !dbg !395
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !216), !dbg !395
  %call86 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !396
  call void @llvm.dbg.value(metadata !{i8* %call86}, i64 0, metadata !215), !dbg !396
  %cmp87 = icmp eq i8* %call86, null, !dbg !396
  br i1 %cmp87, label %do.body136, label %if.then89, !dbg !396

if.then89:                                        ; preds = %if.end85
  %sub.ptr.lhs.cast = ptrtoint i8* %call86 to i64, !dbg !374
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !374
  %18 = load i32* %lcol, align 4, !dbg !374, !tbaa !352
  %conv94 = sext i32 %18 to i64, !dbg !374
  %cmp95 = icmp slt i64 %sub.ptr.sub, %conv94, !dbg !374
  br i1 %cmp95, label %if.then97, label %if.end106, !dbg !374

if.then97:                                        ; preds = %if.then89
  %conv102 = trunc i64 %sub.ptr.sub to i32, !dbg !397
  store i32 %conv102, i32* %lcol, align 4, !dbg !397, !tbaa !352
  br label %if.end106, !dbg !397

if.end106:                                        ; preds = %if.then97, %if.then89
  %call109 = call i64 @strlen(i8* %0) #8, !dbg !398
  %add.ptr.sum = add i64 %call109, -1, !dbg !398
  %add.ptr110 = getelementptr inbounds [4096 x i8]* %buffer, i64 0, i64 %add.ptr.sum, !dbg !398
  call void @llvm.dbg.value(metadata !{i8* %add.ptr110}, i64 0, metadata !215), !dbg !398
  br label %for.cond, !dbg !398

for.cond:                                         ; preds = %for.cond, %if.end106
  %sptr.0 = phi i8* [ %add.ptr110, %if.end106 ], [ %incdec.ptr, %for.cond ]
  %19 = load i8* %sptr.0, align 1, !dbg !400, !tbaa !349
  %conv111 = sext i8 %19 to i32, !dbg !400
  %memchr = call i8* @memchr(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %conv111, i64 4), !dbg !400
  %cmp113 = icmp eq i8* %memchr, null, !dbg !400
  %incdec.ptr = getelementptr inbounds i8* %sptr.0, i64 -1, !dbg !401
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !215), !dbg !401
  br i1 %cmp113, label %for.end, label %for.cond, !dbg !400

for.end:                                          ; preds = %for.cond
  %sub.ptr.lhs.cast116 = ptrtoint i8* %sptr.0 to i64, !dbg !376
  %sub.ptr.sub118 = sub i64 %sub.ptr.lhs.cast116, %sub.ptr.rhs.cast117, !dbg !376
  %20 = load i32* %rcol, align 4, !dbg !376, !tbaa !352
  %conv122 = sext i32 %20 to i64, !dbg !376
  %cmp123 = icmp sgt i64 %sub.ptr.sub118, %conv122, !dbg !376
  br i1 %cmp123, label %if.then125, label %do.body136, !dbg !376

if.then125:                                       ; preds = %for.end
  %conv130 = trunc i64 %sub.ptr.sub118 to i32, !dbg !402
  store i32 %conv130, i32* %rcol, align 4, !dbg !402, !tbaa !352
  br label %do.body136, !dbg !402

do.body136:                                       ; preds = %if.end85, %if.then125, %for.end, %do.cond189
  %have_cs.4 = phi i32 [ %have_cs.5, %do.cond189 ], [ %have_cs.31296, %for.end ], [ %have_cs.31296, %if.then125 ], [ %have_cs.31296, %if.end85 ]
  %have_rf.4 = phi i32 [ %have_rf.5, %do.cond189 ], [ %have_rf.31297, %for.end ], [ %have_rf.31297, %if.then125 ], [ %have_rf.31297, %if.end85 ]
  %call138 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #7, !dbg !403
  %cmp139 = icmp eq i8* %call138, null, !dbg !403
  br i1 %cmp139, label %while.end, label %if.end142, !dbg !403

if.end142:                                        ; preds = %do.body136
  %call145 = call i8* @strcpy(i8* %1, i8* %0) #7, !dbg !405
  %call147 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i64 4) #8, !dbg !406
  %cmp148 = icmp eq i32 %call147, 0, !dbg !406
  br i1 %cmp148, label %if.then150, label %if.else155, !dbg !406

if.then150:                                       ; preds = %if.end142
  %21 = load %struct.seqinfo_s** %sqinfo, align 8, !dbg !406, !tbaa !348
  %flags154 = getelementptr inbounds %struct.seqinfo_s* %21, i64 %indvars.iv1354, i32 0, !dbg !406
  %22 = load i32* %flags154, align 4, !dbg !406, !tbaa !352
  %or = or i32 %22, 512, !dbg !406
  store i32 %or, i32* %flags154, align 4, !dbg !406, !tbaa !352
  br label %if.end182, !dbg !406

if.else155:                                       ; preds = %if.end142
  %call157 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i64 4) #8, !dbg !407
  %cmp158 = icmp eq i32 %call157, 0, !dbg !407
  br i1 %cmp158, label %if.then160, label %if.else167, !dbg !407

if.then160:                                       ; preds = %if.else155
  %23 = load %struct.seqinfo_s** %sqinfo, align 8, !dbg !407, !tbaa !348
  %flags165 = getelementptr inbounds %struct.seqinfo_s* %23, i64 %indvars.iv1354, i32 0, !dbg !407
  %24 = load i32* %flags165, align 4, !dbg !407, !tbaa !352
  %or166 = or i32 %24, 1024, !dbg !407
  store i32 %or166, i32* %flags165, align 4, !dbg !407, !tbaa !352
  br label %if.end182, !dbg !407

if.else167:                                       ; preds = %if.else155
  %call169 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i64 4) #8, !dbg !408
  %cmp170 = icmp eq i32 %call169, 0, !dbg !408
  br i1 %cmp170, label %if.end182, label %if.else173, !dbg !408

if.else173:                                       ; preds = %if.else167
  %call175 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i64 4) #8, !dbg !409
  %cmp176 = icmp eq i32 %call175, 0, !dbg !409
  call void @llvm.dbg.value(metadata !366, i64 0, metadata !226), !dbg !409
  %.have_rf.4 = select i1 %cmp176, i32 1, i32 %have_rf.4, !dbg !409
  br label %if.end182, !dbg !409

if.end182:                                        ; preds = %if.else173, %if.else167, %if.then160, %if.then150
  %have_cs.5 = phi i32 [ %have_cs.4, %if.then150 ], [ %have_cs.4, %if.then160 ], [ 1, %if.else167 ], [ %have_cs.4, %if.else173 ]
  %have_rf.5 = phi i32 [ %have_rf.4, %if.then150 ], [ %have_rf.4, %if.then160 ], [ %have_rf.4, %if.else167 ], [ %.have_rf.4, %if.else173 ]
  %call184 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !410
  call void @llvm.dbg.value(metadata !{i8* %call184}, i64 0, metadata !214), !dbg !410
  %cmp185 = icmp eq i8* %call184, null, !dbg !410
  br i1 %cmp185, label %while.end, label %do.cond189, !dbg !410

do.cond189:                                       ; preds = %if.end182
  %25 = load i8* %call184, align 1, !dbg !411, !tbaa !349
  %conv190 = sext i8 %25 to i32, !dbg !411
  %call191 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %conv190) #8, !dbg !411
  %cmp192 = icmp eq i8* %call191, null, !dbg !411
  br i1 %cmp192, label %while.body52, label %do.body136, !dbg !411

while.end:                                        ; preds = %if.end182, %do.body136, %if.end46
  %have_rf.3.lcssa = phi i32 [ %have_rf.21314, %if.end46 ], [ %have_rf.4, %do.body136 ], [ %have_rf.5, %if.end182 ]
  %have_cs.3.lcssa = phi i32 [ %have_cs.21313, %if.end46 ], [ %have_cs.4, %do.body136 ], [ %have_cs.5, %if.end182 ]
  %warn_names.1.lcssa = phi i32 [ %warn_names.01312, %if.end46 ], [ %warn_names.2, %do.body136 ], [ %warn_names.2, %if.end182 ]
  %currnum.0.lcssa = phi i32 [ 0, %if.end46 ], [ %inc, %do.body136 ], [ %inc, %if.end182 ]
  br i1 %cmp39, label %if.end203, label %if.else198, !dbg !412

if.else198:                                       ; preds = %while.end
  %cmp199 = icmp eq i32 %currnum.0.lcssa, %num.01308, !dbg !413
  br i1 %cmp199, label %if.end203, label %if.then201, !dbg !413

if.then201:                                       ; preds = %if.else198
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([27 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !414
  br label %if.end203, !dbg !414

if.end203:                                        ; preds = %while.end, %if.else198, %if.then201
  %num.1 = phi i32 [ %num.01308, %if.then201 ], [ %num.01308, %if.else198 ], [ %currnum.0.lcssa, %while.end ]
  %indvars.iv.next1359 = add i64 %indvars.iv1358, 1, !dbg !369
  %inc204 = add nsw i32 %blocknum.01310, 1, !dbg !415
  call void @llvm.dbg.value(metadata !{i32 %inc204}, i64 0, metadata !213), !dbg !415
  %call2071302 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #7, !dbg !416
  %cmp2081303 = icmp eq i8* %call2071302, null, !dbg !416
  br i1 %cmp2081303, label %while.cond.loopexit, label %if.end211, !dbg !416

if.end211:                                        ; preds = %if.end203, %do.body205.backedge
  %call214 = call i8* @strcpy(i8* %1, i8* %0) #7, !dbg !418
  %call217 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !419
  call void @llvm.dbg.value(metadata !{i8* %call217}, i64 0, metadata !214), !dbg !419
  %cmp218 = icmp eq i8* %call217, null, !dbg !419
  br i1 %cmp218, label %do.body205.backedge, label %lor.rhs220, !dbg !419

do.body205.backedge:                              ; preds = %if.end211, %lor.rhs220
  %call207 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #7, !dbg !416
  %cmp208 = icmp eq i8* %call207, null, !dbg !416
  br i1 %cmp208, label %while.cond.loopexit, label %if.end211, !dbg !416

lor.rhs220:                                       ; preds = %if.end211
  %26 = load i8* %call217, align 1, !dbg !420, !tbaa !349
  %conv221 = sext i8 %26 to i32, !dbg !420
  %call222 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %conv221) #8, !dbg !420
  %cmp223 = icmp eq i8* %call222, null, !dbg !420
  br i1 %cmp223, label %while.cond.loopexit, label %do.body205.backedge, !dbg !420

for.body231:                                      ; preds = %for.cond228.preheader, %for.body231
  %indvars.iv1350 = phi i64 [ %indvars.iv.next1351, %for.body231 ], [ 0, %for.cond228.preheader ]
  %alen.01290 = phi i32 [ %add240, %for.body231 ], [ 0, %for.cond228.preheader ]
  %rcol234 = getelementptr inbounds %struct.block_struc* %blocks.1, i64 %indvars.iv1350, i32 1, !dbg !421
  %27 = load i32* %rcol234, align 4, !dbg !421, !tbaa !352
  %lcol237 = getelementptr inbounds %struct.block_struc* %blocks.1, i64 %indvars.iv1350, i32 0, !dbg !421
  %28 = load i32* %lcol237, align 4, !dbg !421, !tbaa !352
  %sub238 = add i32 %alen.01290, 1, !dbg !421
  %add239 = add i32 %sub238, %27, !dbg !421
  %add240 = sub i32 %add239, %28, !dbg !421
  call void @llvm.dbg.value(metadata !{i32 %add240}, i64 0, metadata !220), !dbg !421
  %indvars.iv.next1351 = add i64 %indvars.iv1350, 1, !dbg !377
  %lftr.wideiv1352 = trunc i64 %indvars.iv.next1351 to i32, !dbg !377
  %exitcond1353 = icmp eq i32 %lftr.wideiv1352, %inc204, !dbg !377
  br i1 %exitcond1353, label %for.end243, label %for.body231, !dbg !377

for.end243:                                       ; preds = %while.cond.preheader, %for.body231, %for.cond228.preheader
  %cmp22912881377 = phi i1 [ false, %for.cond228.preheader ], [ %cmp2291288, %for.body231 ], [ false, %while.cond.preheader ]
  %num.0.lcssa1376 = phi i32 [ %num.1, %for.cond228.preheader ], [ %num.1, %for.body231 ], [ 0, %while.cond.preheader ]
  %blocks.0.lcssa1374 = phi %struct.block_struc* [ %blocks.1, %for.cond228.preheader ], [ %blocks.1, %for.body231 ], [ null, %while.cond.preheader ]
  %blocknum.0.lcssa1373 = phi i32 [ %inc204, %for.cond228.preheader ], [ %inc204, %for.body231 ], [ 0, %while.cond.preheader ]
  %warn_names.0.lcssa1372 = phi i32 [ %warn_names.1.lcssa, %for.cond228.preheader ], [ %warn_names.1.lcssa, %for.body231 ], [ 0, %while.cond.preheader ]
  %have_cs.2.lcssa1371 = phi i32 [ %have_cs.3.lcssa, %for.cond228.preheader ], [ %have_cs.3.lcssa, %for.body231 ], [ %have_cs.1, %while.cond.preheader ]
  %have_rf.2.lcssa1370 = phi i32 [ %have_rf.3.lcssa, %for.cond228.preheader ], [ %have_rf.3.lcssa, %for.body231 ], [ %have_rf.1, %while.cond.preheader ]
  %alen.0.lcssa = phi i32 [ 0, %for.cond228.preheader ], [ %add240, %for.body231 ], [ 0, %while.cond.preheader ]
  call void @rewind(%struct._IO_FILE* %6) #7, !dbg !422
  %conv244 = sext i32 %num.0.lcssa1376 to i64, !dbg !423
  %mul245 = shl nsw i64 %conv244, 3, !dbg !423
  %call246 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 247, i64 %mul245) #7, !dbg !423
  %29 = bitcast i8* %call246 to i8**, !dbg !423
  call void @llvm.dbg.value(metadata !{i8** %29}, i64 0, metadata !200), !dbg !423
  %tobool247 = icmp eq i32 %have_cs.2.lcssa1371, 0, !dbg !424
  br i1 %tobool247, label %if.end253, label %if.then248, !dbg !424

if.then248:                                       ; preds = %for.end243
  %add249 = add nsw i32 %alen.0.lcssa, 1, !dbg !425
  %conv250 = sext i32 %add249 to i64, !dbg !425
  %call252 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 249, i64 %conv250) #7, !dbg !425
  %cs = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 4, !dbg !425
  store i8* %call252, i8** %cs, align 8, !dbg !425, !tbaa !348
  br label %if.end253, !dbg !425

if.end253:                                        ; preds = %for.end243, %if.then248
  %tobool254 = icmp eq i32 %have_rf.2.lcssa1370, 0, !dbg !426
  br i1 %tobool254, label %for.cond261.preheader, label %if.then255, !dbg !426

if.then255:                                       ; preds = %if.end253
  %add256 = add nsw i32 %alen.0.lcssa, 1, !dbg !427
  %conv257 = sext i32 %add256 to i64, !dbg !427
  %call259 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 251, i64 %conv257) #7, !dbg !427
  %rf = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 5, !dbg !427
  store i8* %call259, i8** %rf, align 8, !dbg !427, !tbaa !348
  br label %for.cond261.preheader, !dbg !427

for.cond261.preheader:                            ; preds = %if.end253, %if.then255
  %cmp2621286 = icmp sgt i32 %num.0.lcssa1376, 0, !dbg !428
  br i1 %cmp2621286, label %for.body264.lr.ph, label %for.cond261.preheader.for.end302_crit_edge, !dbg !428

for.cond261.preheader.for.end302_crit_edge:       ; preds = %for.cond261.preheader
  %sqinfo437.pre = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 6, !dbg !430
  br label %for.end302, !dbg !428

for.body264.lr.ph:                                ; preds = %for.cond261.preheader
  %add265 = add nsw i32 %alen.0.lcssa, 1, !dbg !434
  %conv266 = sext i32 %add265 to i64, !dbg !434
  %sqinfo272 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 6, !dbg !436
  br label %for.body264, !dbg !428

for.body264:                                      ; preds = %for.inc300, %for.body264.lr.ph
  %indvars.iv1346 = phi i64 [ 0, %for.body264.lr.ph ], [ %indvars.iv.next1347, %for.inc300 ]
  %call268 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 257, i64 %conv266) #7, !dbg !434
  %arrayidx270 = getelementptr inbounds i8** %29, i64 %indvars.iv1346, !dbg !434
  store i8* %call268, i8** %arrayidx270, align 8, !dbg !434, !tbaa !348
  %30 = load %struct.seqinfo_s** %sqinfo272, align 8, !dbg !436, !tbaa !348
  %flags274 = getelementptr inbounds %struct.seqinfo_s* %30, i64 %indvars.iv1346, i32 0, !dbg !436
  %31 = load i32* %flags274, align 4, !dbg !436, !tbaa !352
  %and = and i32 %31, 512, !dbg !436
  %tobool275 = icmp eq i32 %and, 0, !dbg !436
  br i1 %tobool275, label %if.end284, label %if.then276, !dbg !436

if.then276:                                       ; preds = %for.body264
  %call280 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 259, i64 %conv266) #7, !dbg !437
  %32 = load %struct.seqinfo_s** %sqinfo272, align 8, !dbg !437, !tbaa !348
  %ss = getelementptr inbounds %struct.seqinfo_s* %32, i64 %indvars.iv1346, i32 10, !dbg !437
  store i8* %call280, i8** %ss, align 8, !dbg !437, !tbaa !348
  %.pre1367 = load %struct.seqinfo_s** %sqinfo272, align 8, !dbg !438, !tbaa !348
  %flags288.phi.trans.insert = getelementptr inbounds %struct.seqinfo_s* %.pre1367, i64 %indvars.iv1346, i32 0
  %.pre1368 = load i32* %flags288.phi.trans.insert, align 4, !dbg !438, !tbaa !352
  br label %if.end284, !dbg !437

if.end284:                                        ; preds = %for.body264, %if.then276
  %33 = phi i32 [ %31, %for.body264 ], [ %.pre1368, %if.then276 ]
  %and289 = and i32 %33, 1024, !dbg !438
  %tobool290 = icmp eq i32 %and289, 0, !dbg !438
  br i1 %tobool290, label %for.inc300, label %if.then291, !dbg !438

if.then291:                                       ; preds = %if.end284
  %call295 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 261, i64 %conv266) #7, !dbg !439
  %34 = load %struct.seqinfo_s** %sqinfo272, align 8, !dbg !439, !tbaa !348
  %sa = getelementptr inbounds %struct.seqinfo_s* %34, i64 %indvars.iv1346, i32 11, !dbg !439
  store i8* %call295, i8** %sa, align 8, !dbg !439, !tbaa !348
  br label %for.inc300, !dbg !439

for.inc300:                                       ; preds = %if.end284, %if.then291
  %indvars.iv.next1347 = add i64 %indvars.iv1346, 1, !dbg !428
  %lftr.wideiv1348 = trunc i64 %indvars.iv.next1347 to i32, !dbg !428
  %exitcond1349 = icmp eq i32 %lftr.wideiv1348, %num.0.lcssa1376, !dbg !428
  br i1 %exitcond1349, label %for.end302, label %for.body264, !dbg !428

for.end302:                                       ; preds = %for.inc300, %for.cond261.preheader.for.end302_crit_edge
  %sqinfo437.pre-phi = phi %struct.seqinfo_s** [ %sqinfo437.pre, %for.cond261.preheader.for.end302_crit_edge ], [ %sqinfo272, %for.inc300 ], !dbg !430
  %alen303 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 1, !dbg !440
  store i32 %alen.0.lcssa, i32* %alen303, align 4, !dbg !440, !tbaa !352
  %nseq = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 2, !dbg !441
  store i32 %num.0.lcssa1376, i32* %nseq, align 8, !dbg !441, !tbaa !352
  %mul305 = shl nsw i64 %conv244, 2, !dbg !442
  %call306 = call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 266, i64 %mul305) #7, !dbg !442
  %35 = bitcast i8* %call306 to float*, !dbg !442
  %wgt = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 3, !dbg !442
  store float* %35, float** %wgt, align 8, !dbg !442, !tbaa !348
  call void @FSet(float* %35, i32 %num.0.lcssa1376, float 1.000000e+00) #7, !dbg !443
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !222), !dbg !444
  %au = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 10, !dbg !445
  %name342 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 7, !dbg !446
  %acc = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 9, !dbg !447
  %desc = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 8, !dbg !448
  %ga1 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 15, !dbg !449
  %ga2 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 16, !dbg !451
  %flags382 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 0, !dbg !452
  %tc1 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 11, !dbg !453
  %tc2 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 12, !dbg !455
  %nc1 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 13, !dbg !456
  %nc2 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 14, !dbg !458
  br label %for.cond308, !dbg !459

for.cond308:                                      ; preds = %if.then330, %if.then351, %if.end379, %if.end421, %if.else525, %if.end513, %if.end400, %if.then361, %if.then340, %if.end314, %for.end302
  %warn_names.3 = phi i32 [ %warn_names.0.lcssa1372, %for.end302 ], [ %warn_names.3, %if.end314 ], [ %warn_names.3, %if.then330 ], [ %warn_names.3, %if.then340 ], [ %warn_names.3, %if.then351 ], [ %warn_names.3, %if.then361 ], [ %warn_names.3, %if.end379 ], [ %warn_names.3, %if.end400 ], [ %warn_names.3, %if.end421 ], [ %warn_names.3., %if.end513 ], [ %warn_names.3, %if.else525 ]
  %headnum.0 = phi i32 [ 0, %for.end302 ], [ %headnum.0, %if.end314 ], [ %headnum.0, %if.then330 ], [ %headnum.0, %if.then340 ], [ %headnum.0, %if.then351 ], [ %headnum.0, %if.then361 ], [ %headnum.0, %if.end379 ], [ %headnum.0, %if.end400 ], [ %headnum.0, %if.end421 ], [ %inc514, %if.end513 ], [ %headnum.0, %if.else525 ]
  %call310 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #7, !dbg !460
  %cmp311 = icmp eq i8* %call310, null, !dbg !460
  br i1 %cmp311, label %if.then313, label %if.end314, !dbg !460

if.then313:                                       ; preds = %for.cond308
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([27 x i8]* @.str7, i64 0, i64 0)) #7, !dbg !461
  br label %if.end314, !dbg !461

if.end314:                                        ; preds = %if.then313, %for.cond308
  %call317 = call i8* @strcpy(i8* %1, i8* %0) #7, !dbg !462
  %call319 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !463
  call void @llvm.dbg.value(metadata !{i8* %call319}, i64 0, metadata !214), !dbg !463
  %cmp320 = icmp eq i8* %call319, null, !dbg !463
  br i1 %cmp320, label %for.cond308, label %if.end323, !dbg !463

if.end323:                                        ; preds = %if.end314
  %call324 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0)) #8, !dbg !464
  %cmp325 = icmp eq i32 %call324, 0, !dbg !464
  br i1 %cmp325, label %land.lhs.true, label %if.else332, !dbg !464

land.lhs.true:                                    ; preds = %if.end323
  %call327 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !464
  call void @llvm.dbg.value(metadata !{i8* %call327}, i64 0, metadata !215), !dbg !464
  %cmp328 = icmp eq i8* %call327, null, !dbg !464
  br i1 %cmp328, label %if.else332, label %if.then330, !dbg !464

if.then330:                                       ; preds = %land.lhs.true
  %call331 = call i8* @Strdup(i8* %call327) #7, !dbg !445
  store i8* %call331, i8** %au, align 8, !dbg !445, !tbaa !348
  br label %for.cond308, !dbg !445

if.else332:                                       ; preds = %land.lhs.true, %if.end323
  %call333 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)) #8, !dbg !465
  %cmp334 = icmp eq i32 %call333, 0, !dbg !465
  br i1 %cmp334, label %land.lhs.true336, label %if.else343, !dbg !465

land.lhs.true336:                                 ; preds = %if.else332
  %call337 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !465
  call void @llvm.dbg.value(metadata !{i8* %call337}, i64 0, metadata !215), !dbg !465
  %cmp338 = icmp eq i8* %call337, null, !dbg !465
  br i1 %cmp338, label %if.else343, label %if.then340, !dbg !465

if.then340:                                       ; preds = %land.lhs.true336
  %call341 = call i8* @Strdup(i8* %call337) #7, !dbg !446
  store i8* %call341, i8** %name342, align 8, !dbg !446, !tbaa !348
  br label %for.cond308, !dbg !446

if.else343:                                       ; preds = %land.lhs.true336, %if.else332
  %call344 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #8, !dbg !466
  %cmp345 = icmp eq i32 %call344, 0, !dbg !466
  br i1 %cmp345, label %land.lhs.true347, label %if.else353, !dbg !466

land.lhs.true347:                                 ; preds = %if.else343
  %call348 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !466
  call void @llvm.dbg.value(metadata !{i8* %call348}, i64 0, metadata !215), !dbg !466
  %cmp349 = icmp eq i8* %call348, null, !dbg !466
  br i1 %cmp349, label %if.else353, label %if.then351, !dbg !466

if.then351:                                       ; preds = %land.lhs.true347
  %call352 = call i8* @Strdup(i8* %call348) #7, !dbg !447
  store i8* %call352, i8** %acc, align 8, !dbg !447, !tbaa !348
  br label %for.cond308, !dbg !447

if.else353:                                       ; preds = %land.lhs.true347, %if.else343
  %call354 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0)) #8, !dbg !467
  %cmp355 = icmp eq i32 %call354, 0, !dbg !467
  br i1 %cmp355, label %land.lhs.true357, label %if.else363, !dbg !467

land.lhs.true357:                                 ; preds = %if.else353
  %call358 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !467
  call void @llvm.dbg.value(metadata !{i8* %call358}, i64 0, metadata !215), !dbg !467
  %cmp359 = icmp eq i8* %call358, null, !dbg !467
  br i1 %cmp359, label %if.else363, label %if.then361, !dbg !467

if.then361:                                       ; preds = %land.lhs.true357
  %call362 = call i8* @Strdup(i8* %call358) #7, !dbg !448
  store i8* %call362, i8** %desc, align 8, !dbg !448, !tbaa !348
  br label %for.cond308, !dbg !448

if.else363:                                       ; preds = %land.lhs.true357, %if.else353
  %call364 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0)) #8, !dbg !468
  %cmp365 = icmp eq i32 %call364, 0, !dbg !468
  br i1 %cmp365, label %if.then367, label %if.else384, !dbg !468

if.then367:                                       ; preds = %if.else363
  %call368 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !469
  call void @llvm.dbg.value(metadata !{i8* %call368}, i64 0, metadata !215), !dbg !469
  %cmp369 = icmp eq i8* %call368, null, !dbg !469
  br i1 %cmp369, label %if.then371, label %if.end372, !dbg !469

if.then371:                                       ; preds = %if.then367
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !470
  br label %if.end372, !dbg !470

if.end372:                                        ; preds = %if.then371, %if.then367
  %call373 = call double @atof(i8* %call368) #8, !dbg !449
  %conv374 = fptrunc double %call373 to float, !dbg !449
  store float %conv374, float* %ga1, align 8, !dbg !449, !tbaa !471
  %call375 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !472
  call void @llvm.dbg.value(metadata !{i8* %call375}, i64 0, metadata !215), !dbg !472
  %cmp376 = icmp eq i8* %call375, null, !dbg !472
  br i1 %cmp376, label %if.then378, label %if.end379, !dbg !472

if.then378:                                       ; preds = %if.end372
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !473
  br label %if.end379, !dbg !473

if.end379:                                        ; preds = %if.then378, %if.end372
  %call380 = call double @atof(i8* %call375) #8, !dbg !451
  %conv381 = fptrunc double %call380 to float, !dbg !451
  store float %conv381, float* %ga2, align 4, !dbg !451, !tbaa !471
  %36 = load i32* %flags382, align 8, !dbg !452, !tbaa !352
  %or383 = or i32 %36, 4, !dbg !452
  store i32 %or383, i32* %flags382, align 8, !dbg !452, !tbaa !352
  br label %for.cond308, !dbg !474

if.else384:                                       ; preds = %if.else363
  %call385 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0)) #8, !dbg !475
  %cmp386 = icmp eq i32 %call385, 0, !dbg !475
  br i1 %cmp386, label %if.then388, label %if.else405, !dbg !475

if.then388:                                       ; preds = %if.else384
  %call389 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !476
  call void @llvm.dbg.value(metadata !{i8* %call389}, i64 0, metadata !215), !dbg !476
  %cmp390 = icmp eq i8* %call389, null, !dbg !476
  br i1 %cmp390, label %if.then392, label %if.end393, !dbg !476

if.then392:                                       ; preds = %if.then388
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str16, i64 0, i64 0)) #7, !dbg !477
  br label %if.end393, !dbg !477

if.end393:                                        ; preds = %if.then392, %if.then388
  %call394 = call double @atof(i8* %call389) #8, !dbg !453
  %conv395 = fptrunc double %call394 to float, !dbg !453
  store float %conv395, float* %tc1, align 8, !dbg !453, !tbaa !471
  %call396 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !478
  call void @llvm.dbg.value(metadata !{i8* %call396}, i64 0, metadata !215), !dbg !478
  %cmp397 = icmp eq i8* %call396, null, !dbg !478
  br i1 %cmp397, label %if.then399, label %if.end400, !dbg !478

if.then399:                                       ; preds = %if.end393
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str16, i64 0, i64 0)) #7, !dbg !479
  br label %if.end400, !dbg !479

if.end400:                                        ; preds = %if.then399, %if.end393
  %call401 = call double @atof(i8* %call396) #8, !dbg !455
  %conv402 = fptrunc double %call401 to float, !dbg !455
  store float %conv402, float* %tc2, align 4, !dbg !455, !tbaa !471
  %37 = load i32* %flags382, align 8, !dbg !480, !tbaa !352
  %or404 = or i32 %37, 1, !dbg !480
  store i32 %or404, i32* %flags382, align 8, !dbg !480, !tbaa !352
  br label %for.cond308, !dbg !481

if.else405:                                       ; preds = %if.else384
  %call406 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0)) #8, !dbg !482
  %cmp407 = icmp eq i32 %call406, 0, !dbg !482
  br i1 %cmp407, label %if.then409, label %if.else426, !dbg !482

if.then409:                                       ; preds = %if.else405
  %call410 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !483
  call void @llvm.dbg.value(metadata !{i8* %call410}, i64 0, metadata !215), !dbg !483
  %cmp411 = icmp eq i8* %call410, null, !dbg !483
  br i1 %cmp411, label %if.then413, label %if.end414, !dbg !483

if.then413:                                       ; preds = %if.then409
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !484
  br label %if.end414, !dbg !484

if.end414:                                        ; preds = %if.then413, %if.then409
  %call415 = call double @atof(i8* %call410) #8, !dbg !456
  %conv416 = fptrunc double %call415 to float, !dbg !456
  store float %conv416, float* %nc1, align 8, !dbg !456, !tbaa !471
  %call417 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !485
  call void @llvm.dbg.value(metadata !{i8* %call417}, i64 0, metadata !215), !dbg !485
  %cmp418 = icmp eq i8* %call417, null, !dbg !485
  br i1 %cmp418, label %if.then420, label %if.end421, !dbg !485

if.then420:                                       ; preds = %if.end414
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !486
  br label %if.end421, !dbg !486

if.end421:                                        ; preds = %if.then420, %if.end414
  %call422 = call double @atof(i8* %call417) #8, !dbg !458
  %conv423 = fptrunc double %call422 to float, !dbg !458
  store float %conv423, float* %nc2, align 4, !dbg !458, !tbaa !471
  %38 = load i32* %flags382, align 8, !dbg !487, !tbaa !352
  %or425 = or i32 %38, 2, !dbg !487
  store i32 %or425, i32* %flags382, align 8, !dbg !487, !tbaa !352
  br label %for.cond308, !dbg !488

if.else426:                                       ; preds = %if.else405
  %call427 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0)) #8, !dbg !489
  %cmp428 = icmp eq i32 %call427, 0, !dbg !489
  br i1 %cmp428, label %if.then430, label %if.else515, !dbg !489

if.then430:                                       ; preds = %if.else426
  %call431 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !490
  call void @llvm.dbg.value(metadata !{i8* %call431}, i64 0, metadata !215), !dbg !490
  %cmp432 = icmp eq i8* %call431, null, !dbg !490
  br i1 %cmp432, label %if.then434, label %if.end435, !dbg !490

if.then434:                                       ; preds = %if.then430
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !491
  br label %if.end435, !dbg !491

if.end435:                                        ; preds = %if.then434, %if.then430
  %idxprom436 = sext i32 %headnum.0 to i64, !dbg !430
  %39 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !dbg !430, !tbaa !348
  %arraydecay440 = getelementptr inbounds %struct.seqinfo_s* %39, i64 %idxprom436, i32 1, i64 0, !dbg !430
  %call441 = call i32 @strcmp(i8* %call431, i8* %arraydecay440) #8, !dbg !430
  %cmp442 = icmp eq i32 %call441, 0, !dbg !430
  call void @llvm.dbg.value(metadata !366, i64 0, metadata !221), !dbg !430
  %warn_names.3. = select i1 %cmp442, i32 %warn_names.3, i32 1, !dbg !430
  %call446 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !492
  call void @llvm.dbg.value(metadata !{i8* %call446}, i64 0, metadata !215), !dbg !492
  %cmp447 = icmp eq i8* %call446, null, !dbg !492
  br i1 %cmp447, label %if.then449, label %if.end450, !dbg !492

if.then449:                                       ; preds = %if.end435
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !493
  br label %if.end450, !dbg !493

if.end450:                                        ; preds = %if.then449, %if.end435
  %call451 = call i32 @IsReal(i8* %call446) #7, !dbg !494
  %tobool452 = icmp eq i32 %call451, 0, !dbg !494
  br i1 %tobool452, label %if.then453, label %if.end454, !dbg !494

if.then453:                                       ; preds = %if.end450
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([64 x i8]* @.str21, i64 0, i64 0)) #7, !dbg !495
  br label %if.end454, !dbg !495

if.end454:                                        ; preds = %if.end450, %if.then453
  %call455 = call double @atof(i8* %call446) #8, !dbg !496
  %conv456 = fptrunc double %call455 to float, !dbg !496
  %40 = load float** %wgt, align 8, !dbg !496, !tbaa !348
  %arrayidx459 = getelementptr inbounds float* %40, i64 %idxprom436, !dbg !496
  store float %conv456, float* %arrayidx459, align 4, !dbg !496, !tbaa !471
  %call460 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !497
  call void @llvm.dbg.value(metadata !{i8* %call460}, i64 0, metadata !215), !dbg !497
  %cmp461 = icmp eq i8* %call460, null, !dbg !497
  br i1 %cmp461, label %if.then463, label %if.end464, !dbg !497

if.then463:                                       ; preds = %if.end454
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0)) #7, !dbg !498
  br label %if.end464, !dbg !498

if.end464:                                        ; preds = %if.then463, %if.end454
  %41 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !dbg !499, !tbaa !348
  %arrayidx467 = getelementptr inbounds %struct.seqinfo_s* %41, i64 %idxprom436, !dbg !499
  %call468 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx467, i8* %call460, i32 2) #7, !dbg !499
  %call469 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !500
  call void @llvm.dbg.value(metadata !{i8* %call469}, i64 0, metadata !215), !dbg !500
  %cmp470 = icmp eq i8* %call469, null, !dbg !500
  br i1 %cmp470, label %if.then472, label %if.end473, !dbg !500

if.then472:                                       ; preds = %if.end464
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0)) #7, !dbg !501
  br label %if.end473, !dbg !501

if.end473:                                        ; preds = %if.then472, %if.end464
  %42 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !dbg !502, !tbaa !348
  %arrayidx476 = getelementptr inbounds %struct.seqinfo_s* %42, i64 %idxprom436, !dbg !502
  %call477 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx476, i8* %call469, i32 4) #7, !dbg !502
  %call478 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8]* @.str23, i64 0, i64 0)) #7, !dbg !503
  call void @llvm.dbg.value(metadata !{i8* %call478}, i64 0, metadata !215), !dbg !503
  %cmp479 = icmp eq i8* %call478, null, !dbg !503
  br i1 %cmp479, label %if.then481, label %if.end482, !dbg !503

if.then481:                                       ; preds = %if.end473
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0)) #7, !dbg !504
  br label %if.end482, !dbg !504

if.end482:                                        ; preds = %if.then481, %if.end473
  %43 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !dbg !505, !tbaa !348
  %arrayidx485 = getelementptr inbounds %struct.seqinfo_s* %43, i64 %idxprom436, !dbg !505
  %call486 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx485, i8* %call478, i32 16) #7, !dbg !505
  %call487 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8]* @.str23, i64 0, i64 0)) #7, !dbg !506
  call void @llvm.dbg.value(metadata !{i8* %call487}, i64 0, metadata !215), !dbg !506
  %cmp488 = icmp eq i8* %call487, null, !dbg !506
  br i1 %cmp488, label %if.then490, label %if.end491, !dbg !506

if.then490:                                       ; preds = %if.end482
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0)) #7, !dbg !507
  br label %if.end491, !dbg !507

if.end491:                                        ; preds = %if.then490, %if.end482
  %44 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !dbg !508, !tbaa !348
  %arrayidx494 = getelementptr inbounds %struct.seqinfo_s* %44, i64 %idxprom436, !dbg !508
  %call495 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx494, i8* %call487, i32 32) #7, !dbg !508
  %call496 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0)) #7, !dbg !509
  call void @llvm.dbg.value(metadata !{i8* %call496}, i64 0, metadata !215), !dbg !509
  %cmp497 = icmp eq i8* %call496, null, !dbg !509
  br i1 %cmp497, label %if.then499, label %if.end500, !dbg !509

if.then499:                                       ; preds = %if.end491
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0)) #7, !dbg !510
  br label %if.end500, !dbg !510

if.end500:                                        ; preds = %if.then499, %if.end491
  %45 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !dbg !511, !tbaa !348
  %arrayidx503 = getelementptr inbounds %struct.seqinfo_s* %45, i64 %idxprom436, !dbg !511
  %call504 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx503, i8* %call496, i32 256) #7, !dbg !511
  %call505 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !512
  call void @llvm.dbg.value(metadata !{i8* %call505}, i64 0, metadata !215), !dbg !512
  %cmp506 = icmp eq i8* %call505, null, !dbg !512
  br i1 %cmp506, label %if.end513, label %if.then508, !dbg !512

if.then508:                                       ; preds = %if.end500
  %46 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !dbg !513, !tbaa !348
  %arrayidx511 = getelementptr inbounds %struct.seqinfo_s* %46, i64 %idxprom436, !dbg !513
  %call512 = call i32 @SetSeqinfoString(%struct.seqinfo_s* %arrayidx511, i8* %call505, i32 8) #7, !dbg !513
  br label %if.end513, !dbg !513

if.end513:                                        ; preds = %if.end500, %if.then508
  %inc514 = add nsw i32 %headnum.0, 1, !dbg !514
  call void @llvm.dbg.value(metadata !{i32 %inc514}, i64 0, metadata !222), !dbg !514
  br label %for.cond308, !dbg !515

if.else515:                                       ; preds = %if.else426
  %call516 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !516
  %cmp517 = icmp eq i32 %call516, 0, !dbg !516
  br i1 %cmp517, label %for.cond543.preheader, label %if.else520, !dbg !516

if.else520:                                       ; preds = %if.else515
  %call521 = call i32 @strcmp(i8* %call319, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !517
  %cmp522 = icmp eq i32 %call521, 0, !dbg !517
  br i1 %cmp522, label %for.cond543.preheader, label %if.else525, !dbg !517

if.else525:                                       ; preds = %if.else520
  %47 = load i8* %call319, align 1, !dbg !518, !tbaa !349
  %conv526 = sext i8 %47 to i32, !dbg !518
  %call527 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %conv526) #8, !dbg !518
  %cmp528 = icmp eq i8* %call527, null, !dbg !518
  br i1 %cmp528, label %for.cond543.preheader, label %for.cond308, !dbg !518

for.cond543.preheader:                            ; preds = %if.else525, %if.else520, %if.else515
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !219), !dbg !519
  br i1 %cmp22912881377, label %while.cond547.preheader.lr.ph, label %for.cond736.preheader, !dbg !522

while.cond547.preheader.lr.ph:                    ; preds = %for.cond543.preheader
  %cs555 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 4, !dbg !523
  %rf575 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 5, !dbg !526
  br label %while.cond547.preheader, !dbg !522

while.cond547.preheader:                          ; preds = %for.inc733, %while.cond547.preheader.lr.ph
  %indvars.iv1342 = phi i64 [ 0, %while.cond547.preheader.lr.ph ], [ %indvars.iv.next1343, %for.inc733 ]
  %currlen.01285 = phi i32 [ 0, %while.cond547.preheader.lr.ph ], [ %add703, %for.inc733 ]
  %nptr.21283 = phi i8* [ %call319, %while.cond547.preheader.lr.ph ], [ %nptr.5, %for.inc733 ]
  %cmp5481276 = icmp eq i8* %nptr.21283, null, !dbg !528
  br i1 %cmp5481276, label %while.cond547.preheader.while.end694_crit_edge, label %while.body550.lr.ph, !dbg !528

while.cond547.preheader.while.end694_crit_edge:   ; preds = %while.cond547.preheader
  %rcol697.pre = getelementptr inbounds %struct.block_struc* %blocks.0.lcssa1374, i64 %indvars.iv1342, i32 1, !dbg !529
  %lcol700.pre = getelementptr inbounds %struct.block_struc* %blocks.0.lcssa1374, i64 %indvars.iv1342, i32 0, !dbg !529
  br label %while.end694, !dbg !528

while.body550.lr.ph:                              ; preds = %while.cond547.preheader
  %lcol562 = getelementptr inbounds %struct.block_struc* %blocks.0.lcssa1374, i64 %indvars.iv1342, i32 0, !dbg !523
  %rcol565 = getelementptr inbounds %struct.block_struc* %blocks.0.lcssa1374, i64 %indvars.iv1342, i32 1, !dbg !523
  br label %while.body550, !dbg !528

for.cond736.preheader:                            ; preds = %for.inc733, %for.cond543.preheader
  br i1 %cmp2621286, label %for.body739.lr.ph, label %for.end892, !dbg !530

for.body739.lr.ph:                                ; preds = %for.cond736.preheader
  %cmp8231270 = icmp sgt i32 %alen.0.lcssa, 0, !dbg !531
  br label %for.body739, !dbg !530

while.body550:                                    ; preds = %if.end686, %if.end680, %while.body550.lr.ph
  %seqidx.01278 = phi i32 [ 0, %while.body550.lr.ph ], [ %seqidx.1.ph, %if.end680 ], [ %seqidx.1.ph, %if.end686 ]
  %nptr.31277 = phi i8* [ %nptr.21283, %while.body550.lr.ph ], [ %call676, %if.end680 ], [ %call676, %if.end686 ]
  %call551 = call i32 @strcmp(i8* %nptr.31277, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !534
  %cmp552 = icmp eq i32 %call551, 0, !dbg !534
  br i1 %cmp552, label %if.then554, label %if.else570, !dbg !534

if.then554:                                       ; preds = %while.body550
  %48 = load i8** %cs555, align 8, !dbg !523, !tbaa !348
  %call556 = call i64 @strlen(i8* %nptr.31277) #8, !dbg !523
  %sub557 = add i64 %call556, 4294967295, !dbg !523
  %conv558 = trunc i64 %sub557 to i32, !dbg !523
  %49 = load i32* %lcol562, align 4, !dbg !523, !tbaa !352
  %50 = load i32* %rcol565, align 4, !dbg !523, !tbaa !352
  %call566 = call fastcc i32 @copy_alignment_line(i8* %48, i32 %currlen.01285, i32 %conv558, i8* %0, i32 %49, i32 %50) #9, !dbg !523
  %tobool567 = icmp eq i32 %call566, 0, !dbg !523
  br i1 %tobool567, label %if.then568, label %for.cond665.preheader, !dbg !523

if.then568:                                       ; preds = %if.then554
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str25, i64 0, i64 0)) #7, !dbg !535
  br label %for.cond665.preheader, !dbg !535

if.else570:                                       ; preds = %while.body550
  %call571 = call i32 @strcmp(i8* %nptr.31277, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !536
  %cmp572 = icmp eq i32 %call571, 0, !dbg !536
  br i1 %cmp572, label %if.then574, label %if.else590, !dbg !536

if.then574:                                       ; preds = %if.else570
  %51 = load i8** %rf575, align 8, !dbg !526, !tbaa !348
  %call576 = call i64 @strlen(i8* %nptr.31277) #8, !dbg !526
  %sub577 = add i64 %call576, 4294967295, !dbg !526
  %conv578 = trunc i64 %sub577 to i32, !dbg !526
  %52 = load i32* %lcol562, align 4, !dbg !526, !tbaa !352
  %53 = load i32* %rcol565, align 4, !dbg !526, !tbaa !352
  %call586 = call fastcc i32 @copy_alignment_line(i8* %51, i32 %currlen.01285, i32 %conv578, i8* %0, i32 %52, i32 %53) #9, !dbg !526
  %tobool587 = icmp eq i32 %call586, 0, !dbg !526
  br i1 %tobool587, label %if.then588, label %for.cond665.preheader, !dbg !526

if.then588:                                       ; preds = %if.then574
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str26, i64 0, i64 0)) #7, !dbg !537
  br label %for.cond665.preheader, !dbg !537

if.else590:                                       ; preds = %if.else570
  %call591 = call i32 @strcmp(i8* %nptr.31277, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #8, !dbg !538
  %cmp592 = icmp eq i32 %call591, 0, !dbg !538
  br i1 %cmp592, label %if.then594, label %if.else614, !dbg !538

if.then594:                                       ; preds = %if.else590
  %sub595 = add nsw i32 %seqidx.01278, -1, !dbg !539
  %idxprom596 = sext i32 %sub595 to i64, !dbg !539
  %54 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !dbg !539, !tbaa !348
  %ss599 = getelementptr inbounds %struct.seqinfo_s* %54, i64 %idxprom596, i32 10, !dbg !539
  %55 = load i8** %ss599, align 8, !dbg !539, !tbaa !348
  %call600 = call i64 @strlen(i8* %nptr.31277) #8, !dbg !539
  %sub601 = add i64 %call600, 4294967295, !dbg !539
  %conv602 = trunc i64 %sub601 to i32, !dbg !539
  %56 = load i32* %lcol562, align 4, !dbg !539, !tbaa !352
  %57 = load i32* %rcol565, align 4, !dbg !539, !tbaa !352
  %call610 = call fastcc i32 @copy_alignment_line(i8* %55, i32 %currlen.01285, i32 %conv602, i8* %0, i32 %56, i32 %57) #9, !dbg !539
  %tobool611 = icmp eq i32 %call610, 0, !dbg !539
  br i1 %tobool611, label %if.then612, label %for.cond665.preheader, !dbg !539

if.then612:                                       ; preds = %if.then594
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str27, i64 0, i64 0)) #7, !dbg !541
  br label %for.cond665.preheader, !dbg !541

if.else614:                                       ; preds = %if.else590
  %call615 = call i32 @strcmp(i8* %nptr.31277, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #8, !dbg !542
  %cmp616 = icmp eq i32 %call615, 0, !dbg !542
  br i1 %cmp616, label %if.then618, label %if.else638, !dbg !542

if.then618:                                       ; preds = %if.else614
  %sub619 = add nsw i32 %seqidx.01278, -1, !dbg !543
  %idxprom620 = sext i32 %sub619 to i64, !dbg !543
  %58 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !dbg !543, !tbaa !348
  %sa623 = getelementptr inbounds %struct.seqinfo_s* %58, i64 %idxprom620, i32 11, !dbg !543
  %59 = load i8** %sa623, align 8, !dbg !543, !tbaa !348
  %call624 = call i64 @strlen(i8* %nptr.31277) #8, !dbg !543
  %sub625 = add i64 %call624, 4294967295, !dbg !543
  %conv626 = trunc i64 %sub625 to i32, !dbg !543
  %60 = load i32* %lcol562, align 4, !dbg !543, !tbaa !352
  %61 = load i32* %rcol565, align 4, !dbg !543, !tbaa !352
  %call634 = call fastcc i32 @copy_alignment_line(i8* %59, i32 %currlen.01285, i32 %conv626, i8* %0, i32 %60, i32 %61) #9, !dbg !543
  %tobool635 = icmp eq i32 %call634, 0, !dbg !543
  br i1 %tobool635, label %if.then636, label %for.cond665.preheader, !dbg !543

if.then636:                                       ; preds = %if.then618
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str28, i64 0, i64 0)) #7, !dbg !545
  br label %for.cond665.preheader, !dbg !545

if.else638:                                       ; preds = %if.else614
  %call639 = call i32 @strncmp(i8* %nptr.31277, i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0), i64 2) #8, !dbg !546
  %cmp640 = icmp eq i32 %call639, 0, !dbg !546
  br i1 %cmp640, label %for.cond665.preheader, label %if.then642, !dbg !546

if.then642:                                       ; preds = %if.else638
  %idxprom643 = sext i32 %seqidx.01278 to i64, !dbg !547
  %arrayidx644 = getelementptr inbounds i8** %29, i64 %idxprom643, !dbg !547
  %62 = load i8** %arrayidx644, align 8, !dbg !547, !tbaa !348
  %call645 = call i64 @strlen(i8* %nptr.31277) #8, !dbg !547
  %sub646 = add i64 %call645, 4294967295, !dbg !547
  %conv647 = trunc i64 %sub646 to i32, !dbg !547
  %63 = load i32* %lcol562, align 4, !dbg !547, !tbaa !352
  %64 = load i32* %rcol565, align 4, !dbg !547, !tbaa !352
  %call655 = call fastcc i32 @copy_alignment_line(i8* %62, i32 %currlen.01285, i32 %conv647, i8* %0, i32 %63, i32 %64) #9, !dbg !547
  %tobool656 = icmp eq i32 %call655, 0, !dbg !547
  br i1 %tobool656, label %if.then657, label %if.end658, !dbg !547

if.then657:                                       ; preds = %if.then642
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str30, i64 0, i64 0)) #7, !dbg !549
  br label %if.end658, !dbg !549

if.end658:                                        ; preds = %if.then642, %if.then657
  %inc659 = add nsw i32 %seqidx.01278, 1, !dbg !550
  call void @llvm.dbg.value(metadata !{i32 %inc659}, i64 0, metadata !219), !dbg !550
  br label %for.cond665.preheader, !dbg !551

for.cond665.preheader:                            ; preds = %if.then588, %if.then636, %if.end658, %if.then612, %if.then568, %if.else638, %if.then618, %if.then594, %if.then574, %if.then554
  %seqidx.1.ph = phi i32 [ %seqidx.01278, %if.then554 ], [ %seqidx.01278, %if.then574 ], [ %seqidx.01278, %if.then594 ], [ %seqidx.01278, %if.then618 ], [ %seqidx.01278, %if.else638 ], [ %seqidx.01278, %if.then568 ], [ %seqidx.01278, %if.then612 ], [ %inc659, %if.end658 ], [ %seqidx.01278, %if.then636 ], [ %seqidx.01278, %if.then588 ]
  br label %for.cond665, !dbg !552

for.cond665:                                      ; preds = %for.cond665.preheader, %if.end686
  call void @llvm.dbg.value(metadata !555, i64 0, metadata !214), !dbg !552
  %call667 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #7, !dbg !556
  %cmp668 = icmp eq i8* %call667, null, !dbg !556
  br i1 %cmp668, label %while.end694, label %if.end671, !dbg !556

if.end671:                                        ; preds = %for.cond665
  %call674 = call i8* @strcpy(i8* %1, i8* %0) #7, !dbg !557
  %call676 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !558
  call void @llvm.dbg.value(metadata !{i8* %call676}, i64 0, metadata !214), !dbg !558
  %cmp677 = icmp eq i8* %call676, null, !dbg !558
  br i1 %cmp677, label %while.end694, label %if.end680, !dbg !558

if.end680:                                        ; preds = %if.end671
  %call682 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0), i64 2) #8, !dbg !559
  %cmp683 = icmp eq i32 %call682, 0, !dbg !559
  br i1 %cmp683, label %while.body550, label %if.end686, !dbg !559

if.end686:                                        ; preds = %if.end680
  %65 = load i8* %call676, align 1, !dbg !560, !tbaa !349
  %conv687 = sext i8 %65 to i32, !dbg !560
  %call688 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %conv687) #8, !dbg !560
  %cmp689 = icmp eq i8* %call688, null, !dbg !560
  br i1 %cmp689, label %while.body550, label %for.cond665, !dbg !560

while.end694:                                     ; preds = %if.end671, %for.cond665, %while.cond547.preheader.while.end694_crit_edge
  %lcol700.pre-phi = phi i32* [ %lcol700.pre, %while.cond547.preheader.while.end694_crit_edge ], [ %lcol562, %for.cond665 ], [ %lcol562, %if.end671 ], !dbg !529
  %rcol697.pre-phi = phi i32* [ %rcol697.pre, %while.cond547.preheader.while.end694_crit_edge ], [ %rcol565, %for.cond665 ], [ %rcol565, %if.end671 ], !dbg !529
  %66 = load i32* %rcol697.pre-phi, align 4, !dbg !529, !tbaa !352
  %67 = load i32* %lcol700.pre-phi, align 4, !dbg !529, !tbaa !352
  %sub701 = add i32 %currlen.01285, 1, !dbg !529
  %add702 = add i32 %sub701, %66, !dbg !529
  %add703 = sub i32 %add702, %67, !dbg !529
  call void @llvm.dbg.value(metadata !{i32 %add703}, i64 0, metadata !223), !dbg !529
  %call7061279 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #7, !dbg !561
  %cmp7071280 = icmp eq i8* %call7061279, null, !dbg !561
  br i1 %cmp7071280, label %for.inc733, label %if.end710, !dbg !561

if.end710:                                        ; preds = %while.end694, %for.cond704.backedge
  %call713 = call i8* @strcpy(i8* %1, i8* %0) #7, !dbg !564
  %call715 = call i8* @strtok(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !565
  call void @llvm.dbg.value(metadata !{i8* %call715}, i64 0, metadata !214), !dbg !565
  %cmp716 = icmp eq i8* %call715, null, !dbg !565
  br i1 %cmp716, label %for.cond704.backedge, label %if.end719, !dbg !565

for.cond704.backedge:                             ; preds = %if.end710, %if.end725
  %nptr.4.be = phi i8* [ null, %if.end710 ], [ %call715, %if.end725 ]
  %call706 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %6) #7, !dbg !561
  %cmp707 = icmp eq i8* %call706, null, !dbg !561
  br i1 %cmp707, label %for.inc733, label %if.end710, !dbg !561

if.end719:                                        ; preds = %if.end710
  %call721 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0), i64 2) #8, !dbg !566
  %cmp722 = icmp eq i32 %call721, 0, !dbg !566
  br i1 %cmp722, label %for.inc733, label %if.end725, !dbg !566

if.end725:                                        ; preds = %if.end719
  %68 = load i8* %call715, align 1, !dbg !567, !tbaa !349
  %conv726 = sext i8 %68 to i32, !dbg !567
  %call727 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %conv726) #8, !dbg !567
  %cmp728 = icmp eq i8* %call727, null, !dbg !567
  br i1 %cmp728, label %for.inc733, label %for.cond704.backedge, !dbg !567

for.inc733:                                       ; preds = %for.cond704.backedge, %if.end719, %if.end725, %while.end694
  %nptr.5 = phi i8* [ null, %while.end694 ], [ %call715, %if.end725 ], [ %call715, %if.end719 ], [ %nptr.4.be, %for.cond704.backedge ]
  %indvars.iv.next1343 = add i64 %indvars.iv1342, 1, !dbg !522
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !219), !dbg !519
  %lftr.wideiv1344 = trunc i64 %indvars.iv.next1343 to i32, !dbg !522
  %exitcond1345 = icmp eq i32 %lftr.wideiv1344, %blocknum.0.lcssa1373, !dbg !522
  br i1 %exitcond1345, label %for.cond736.preheader, label %while.cond547.preheader, !dbg !522

for.body739:                                      ; preds = %for.inc890, %for.body739.lr.ph
  %indvars.iv1337 = phi i64 [ 0, %for.body739.lr.ph ], [ %indvars.iv.next1338, %for.inc890 ]
  %69 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !dbg !568, !tbaa !348
  %flags743 = getelementptr inbounds %struct.seqinfo_s* %69, i64 %indvars.iv1337, i32 0, !dbg !568
  %70 = load i32* %flags743, align 4, !dbg !568, !tbaa !352
  %and744 = and i32 %70, 512, !dbg !568
  %tobool745 = icmp eq i32 %and744, 0, !dbg !568
  br i1 %tobool745, label %if.end814, label %for.cond747.preheader, !dbg !568

for.cond747.preheader:                            ; preds = %for.body739
  br i1 %cmp8231270, label %for.body750.lr.ph, label %for.end807, !dbg !569

for.body750.lr.ph:                                ; preds = %for.cond747.preheader
  %arrayidx753 = getelementptr inbounds i8** %29, i64 %indvars.iv1337, !dbg !572
  br label %for.body750, !dbg !569

for.body750:                                      ; preds = %for.inc805, %for.body750.lr.ph
  %indvars.iv1329 = phi i64 [ 0, %for.body750.lr.ph ], [ %indvars.iv.next1330, %for.inc805 ]
  %rpos.01269 = phi i32 [ 0, %for.body750.lr.ph ], [ %rpos.1, %for.inc805 ]
  %71 = load i8** %arrayidx753, align 8, !dbg !572, !tbaa !348
  %arrayidx754 = getelementptr inbounds i8* %71, i64 %indvars.iv1329, !dbg !572
  %72 = load i8* %arrayidx754, align 1, !dbg !572, !tbaa !349
  switch i8 %72, label %if.then790 [
    i8 32, label %for.inc805
    i8 46, label %for.inc805
    i8 95, label %for.inc805
    i8 45, label %for.inc805
    i8 126, label %for.inc805
  ], !dbg !572

if.then790:                                       ; preds = %for.body750
  %73 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !dbg !573, !tbaa !348
  %ss795 = getelementptr inbounds %struct.seqinfo_s* %73, i64 %indvars.iv1337, i32 10, !dbg !573
  %74 = load i8** %ss795, align 8, !dbg !573, !tbaa !348
  %arrayidx796 = getelementptr inbounds i8* %74, i64 %indvars.iv1329, !dbg !573
  %75 = load i8* %arrayidx796, align 1, !dbg !573, !tbaa !349
  %idxprom797 = sext i32 %rpos.01269 to i64, !dbg !573
  %arrayidx802 = getelementptr inbounds i8* %74, i64 %idxprom797, !dbg !573
  store i8 %75, i8* %arrayidx802, align 1, !dbg !573, !tbaa !349
  %inc803 = add nsw i32 %rpos.01269, 1, !dbg !575
  call void @llvm.dbg.value(metadata !{i32 %inc803}, i64 0, metadata !275), !dbg !575
  br label %for.inc805, !dbg !576

for.inc805:                                       ; preds = %for.body750, %for.body750, %for.body750, %for.body750, %for.body750, %if.then790
  %rpos.1 = phi i32 [ %rpos.01269, %for.body750 ], [ %inc803, %if.then790 ], [ %rpos.01269, %for.body750 ], [ %rpos.01269, %for.body750 ], [ %rpos.01269, %for.body750 ], [ %rpos.01269, %for.body750 ]
  %indvars.iv.next1330 = add i64 %indvars.iv1329, 1, !dbg !569
  %lftr.wideiv1331 = trunc i64 %indvars.iv.next1330 to i32, !dbg !569
  %exitcond1332 = icmp eq i32 %lftr.wideiv1331, %alen.0.lcssa, !dbg !569
  br i1 %exitcond1332, label %for.cond747.for.end807_crit_edge, label %for.body750, !dbg !569

for.cond747.for.end807_crit_edge:                 ; preds = %for.inc805
  %.pre1366 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !dbg !577, !tbaa !348
  br label %for.end807, !dbg !569

for.end807:                                       ; preds = %for.cond747.for.end807_crit_edge, %for.cond747.preheader
  %76 = phi %struct.seqinfo_s* [ %.pre1366, %for.cond747.for.end807_crit_edge ], [ %69, %for.cond747.preheader ]
  %rpos.0.lcssa = phi i32 [ %rpos.1, %for.cond747.for.end807_crit_edge ], [ 0, %for.cond747.preheader ]
  %idxprom808 = sext i32 %rpos.0.lcssa to i64, !dbg !577
  %ss812 = getelementptr inbounds %struct.seqinfo_s* %76, i64 %indvars.iv1337, i32 10, !dbg !577
  %77 = load i8** %ss812, align 8, !dbg !577, !tbaa !348
  %arrayidx813 = getelementptr inbounds i8* %77, i64 %idxprom808, !dbg !577
  store i8 0, i8* %arrayidx813, align 1, !dbg !577, !tbaa !349
  %.pre = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !dbg !578, !tbaa !348
  %flags818.phi.trans.insert = getelementptr inbounds %struct.seqinfo_s* %.pre, i64 %indvars.iv1337, i32 0
  %.pre1364 = load i32* %flags818.phi.trans.insert, align 4, !dbg !578, !tbaa !352
  br label %if.end814, !dbg !579

if.end814:                                        ; preds = %for.body739, %for.end807
  %78 = phi i32 [ %70, %for.body739 ], [ %.pre1364, %for.end807 ]
  %79 = phi %struct.seqinfo_s* [ %69, %for.body739 ], [ %.pre, %for.end807 ]
  %and819 = and i32 %78, 1024, !dbg !578
  %tobool820 = icmp eq i32 %and819, 0, !dbg !578
  br i1 %tobool820, label %for.inc890, label %for.cond822.preheader, !dbg !578

for.cond822.preheader:                            ; preds = %if.end814
  br i1 %cmp8231270, label %for.body825.lr.ph, label %for.end882, !dbg !531

for.body825.lr.ph:                                ; preds = %for.cond822.preheader
  %arrayidx828 = getelementptr inbounds i8** %29, i64 %indvars.iv1337, !dbg !580
  br label %for.body825, !dbg !531

for.body825:                                      ; preds = %for.inc880, %for.body825.lr.ph
  %indvars.iv1333 = phi i64 [ 0, %for.body825.lr.ph ], [ %indvars.iv.next1334, %for.inc880 ]
  %rpos.21272 = phi i32 [ 0, %for.body825.lr.ph ], [ %rpos.3, %for.inc880 ]
  %80 = load i8** %arrayidx828, align 8, !dbg !580, !tbaa !348
  %arrayidx829 = getelementptr inbounds i8* %80, i64 %indvars.iv1333, !dbg !580
  %81 = load i8* %arrayidx829, align 1, !dbg !580, !tbaa !349
  switch i8 %81, label %if.then865 [
    i8 32, label %for.inc880
    i8 46, label %for.inc880
    i8 95, label %for.inc880
    i8 45, label %for.inc880
    i8 126, label %for.inc880
  ], !dbg !580

if.then865:                                       ; preds = %for.body825
  %82 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !dbg !581, !tbaa !348
  %sa870 = getelementptr inbounds %struct.seqinfo_s* %82, i64 %indvars.iv1337, i32 11, !dbg !581
  %83 = load i8** %sa870, align 8, !dbg !581, !tbaa !348
  %arrayidx871 = getelementptr inbounds i8* %83, i64 %indvars.iv1333, !dbg !581
  %84 = load i8* %arrayidx871, align 1, !dbg !581, !tbaa !349
  %idxprom872 = sext i32 %rpos.21272 to i64, !dbg !581
  %arrayidx877 = getelementptr inbounds i8* %83, i64 %idxprom872, !dbg !581
  store i8 %84, i8* %arrayidx877, align 1, !dbg !581, !tbaa !349
  %inc878 = add nsw i32 %rpos.21272, 1, !dbg !583
  call void @llvm.dbg.value(metadata !{i32 %inc878}, i64 0, metadata !275), !dbg !583
  br label %for.inc880, !dbg !584

for.inc880:                                       ; preds = %for.body825, %for.body825, %for.body825, %for.body825, %for.body825, %if.then865
  %rpos.3 = phi i32 [ %rpos.21272, %for.body825 ], [ %inc878, %if.then865 ], [ %rpos.21272, %for.body825 ], [ %rpos.21272, %for.body825 ], [ %rpos.21272, %for.body825 ], [ %rpos.21272, %for.body825 ]
  %indvars.iv.next1334 = add i64 %indvars.iv1333, 1, !dbg !531
  %lftr.wideiv1335 = trunc i64 %indvars.iv.next1334 to i32, !dbg !531
  %exitcond1336 = icmp eq i32 %lftr.wideiv1335, %alen.0.lcssa, !dbg !531
  br i1 %exitcond1336, label %for.cond822.for.end882_crit_edge, label %for.body825, !dbg !531

for.cond822.for.end882_crit_edge:                 ; preds = %for.inc880
  %.pre1365 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !dbg !585, !tbaa !348
  br label %for.end882, !dbg !531

for.end882:                                       ; preds = %for.cond822.for.end882_crit_edge, %for.cond822.preheader
  %85 = phi %struct.seqinfo_s* [ %.pre1365, %for.cond822.for.end882_crit_edge ], [ %79, %for.cond822.preheader ]
  %rpos.2.lcssa = phi i32 [ %rpos.3, %for.cond822.for.end882_crit_edge ], [ 0, %for.cond822.preheader ]
  %idxprom883 = sext i32 %rpos.2.lcssa to i64, !dbg !585
  %sa887 = getelementptr inbounds %struct.seqinfo_s* %85, i64 %indvars.iv1337, i32 11, !dbg !585
  %86 = load i8** %sa887, align 8, !dbg !585, !tbaa !348
  %arrayidx888 = getelementptr inbounds i8* %86, i64 %idxprom883, !dbg !585
  store i8 0, i8* %arrayidx888, align 1, !dbg !585, !tbaa !349
  br label %for.inc890, !dbg !586

for.inc890:                                       ; preds = %if.end814, %for.end882
  %indvars.iv.next1338 = add i64 %indvars.iv1337, 1, !dbg !530
  %lftr.wideiv1339 = trunc i64 %indvars.iv.next1338 to i32, !dbg !530
  %exitcond1340 = icmp eq i32 %lftr.wideiv1339, %num.0.lcssa1376, !dbg !530
  br i1 %exitcond1340, label %for.end892, label %for.body739, !dbg !530

for.end892:                                       ; preds = %for.inc890, %for.cond736.preheader
  %rf893 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 5, !dbg !587
  %87 = load i8** %rf893, align 8, !dbg !587, !tbaa !348
  %cmp894 = icmp eq i8* %87, null, !dbg !587
  br i1 %cmp894, label %if.end900, label %if.then896, !dbg !587

if.then896:                                       ; preds = %for.end892
  %idxprom897 = sext i32 %alen.0.lcssa to i64, !dbg !587
  %arrayidx899 = getelementptr inbounds i8* %87, i64 %idxprom897, !dbg !587
  store i8 0, i8* %arrayidx899, align 1, !dbg !587, !tbaa !349
  br label %if.end900, !dbg !587

if.end900:                                        ; preds = %for.end892, %if.then896
  %cs901 = getelementptr inbounds %struct.aliinfo_s* %base_ainfo, i64 0, i32 4, !dbg !588
  %88 = load i8** %cs901, align 8, !dbg !588, !tbaa !348
  %cmp902 = icmp eq i8* %88, null, !dbg !588
  br i1 %cmp902, label %for.cond909.preheader, label %if.then904, !dbg !588

if.then904:                                       ; preds = %if.end900
  %idxprom905 = sext i32 %alen.0.lcssa to i64, !dbg !588
  %arrayidx907 = getelementptr inbounds i8* %88, i64 %idxprom905, !dbg !588
  store i8 0, i8* %arrayidx907, align 1, !dbg !588, !tbaa !349
  br label %for.cond909.preheader, !dbg !588

for.cond909.preheader:                            ; preds = %if.end900, %if.then904
  br i1 %cmp2621286, label %for.body912.lr.ph, label %for.end966, !dbg !589

for.body912.lr.ph:                                ; preds = %for.cond909.preheader
  %idxprom913 = sext i32 %alen.0.lcssa to i64, !dbg !591
  br label %for.body912, !dbg !589

for.cond920.preheader:                            ; preds = %for.body912
  br i1 %cmp2621286, label %for.body923, label %for.end966, !dbg !592

for.body912:                                      ; preds = %for.body912, %for.body912.lr.ph
  %indvars.iv1325 = phi i64 [ 0, %for.body912.lr.ph ], [ %indvars.iv.next1326, %for.body912 ]
  %arrayidx915 = getelementptr inbounds i8** %29, i64 %indvars.iv1325, !dbg !591
  %89 = load i8** %arrayidx915, align 8, !dbg !591, !tbaa !348
  %arrayidx916 = getelementptr inbounds i8* %89, i64 %idxprom913, !dbg !591
  store i8 0, i8* %arrayidx916, align 1, !dbg !591, !tbaa !349
  %indvars.iv.next1326 = add i64 %indvars.iv1325, 1, !dbg !589
  %lftr.wideiv1327 = trunc i64 %indvars.iv.next1326 to i32, !dbg !589
  %exitcond1328 = icmp eq i32 %lftr.wideiv1327, %num.0.lcssa1376, !dbg !589
  br i1 %exitcond1328, label %for.cond920.preheader, label %for.body912, !dbg !589

for.body923:                                      ; preds = %for.cond920.preheader, %for.end955
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end955 ], [ 0, %for.cond920.preheader ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !224), !dbg !594
  %arrayidx925 = getelementptr inbounds i8** %29, i64 %indvars.iv, !dbg !596
  %90 = load i8** %arrayidx925, align 8, !dbg !596, !tbaa !348
  call void @llvm.dbg.value(metadata !{i8* %90}, i64 0, metadata !215), !dbg !596
  br label %for.cond926, !dbg !596

for.cond926:                                      ; preds = %for.inc953, %for.body923
  %sptr.1 = phi i8* [ %90, %for.body923 ], [ %incdec.ptr954, %for.inc953 ]
  %count.0 = phi i32 [ 0, %for.body923 ], [ %count.1, %for.inc953 ]
  %91 = load i8* %sptr.1, align 1, !dbg !596, !tbaa !349
  switch i8 %91, label %if.then950 [
    i8 0, label %for.end955
    i8 32, label %for.inc953
    i8 46, label %for.inc953
    i8 95, label %for.inc953
    i8 45, label %for.inc953
    i8 126, label %for.inc953
  ], !dbg !596

if.then950:                                       ; preds = %for.cond926
  %inc951 = add nsw i32 %count.0, 1, !dbg !598
  call void @llvm.dbg.value(metadata !{i32 %inc951}, i64 0, metadata !224), !dbg !598
  br label %for.inc953, !dbg !598

for.inc953:                                       ; preds = %for.cond926, %for.cond926, %for.cond926, %for.cond926, %for.cond926, %if.then950
  %count.1 = phi i32 [ %inc951, %if.then950 ], [ %count.0, %for.cond926 ], [ %count.0, %for.cond926 ], [ %count.0, %for.cond926 ], [ %count.0, %for.cond926 ], [ %count.0, %for.cond926 ]
  %incdec.ptr954 = getelementptr inbounds i8* %sptr.1, i64 1, !dbg !596
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr954}, i64 0, metadata !215), !dbg !596
  br label %for.cond926, !dbg !596

for.end955:                                       ; preds = %for.cond926
  %92 = load %struct.seqinfo_s** %sqinfo437.pre-phi, align 8, !dbg !599, !tbaa !348
  %len = getelementptr inbounds %struct.seqinfo_s* %92, i64 %indvars.iv, i32 5, !dbg !599
  store i32 %count.0, i32* %len, align 4, !dbg !599, !tbaa !352
  %flags962 = getelementptr inbounds %struct.seqinfo_s* %92, i64 %indvars.iv, i32 0, !dbg !600
  %93 = load i32* %flags962, align 4, !dbg !600, !tbaa !352
  %or963 = or i32 %93, 64, !dbg !600
  store i32 %or963, i32* %flags962, align 4, !dbg !600, !tbaa !352
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !592
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !592
  %exitcond = icmp eq i32 %lftr.wideiv, %num.0.lcssa1376, !dbg !592
  br i1 %exitcond, label %for.end966, label %for.body923, !dbg !592

for.end966:                                       ; preds = %for.cond909.preheader, %for.end955, %for.cond920.preheader
  %94 = bitcast %struct.block_struc* %blocks.0.lcssa1374 to i8*, !dbg !601
  call void @free(i8* %94) #7, !dbg !601
  %tobool967 = icmp eq i32 %warn_names.3, 0, !dbg !602
  br i1 %tobool967, label %if.end969, label %if.then968, !dbg !602

if.then968:                                       ; preds = %for.end966
  %fname = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !603
  %95 = load i8** %fname, align 8, !dbg !603, !tbaa !348
  call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([54 x i8]* @.str31, i64 0, i64 0), i8* %95) #7, !dbg !603
  br label %if.end969, !dbg !603

if.end969:                                        ; preds = %for.end966, %if.then968
  %call970 = call %struct.msa_struct* @MSAFromAINFO(i8** %29, %struct.aliinfo_s* %base_ainfo) #7, !dbg !604
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call970}, i64 0, metadata !198), !dbg !604
  call void @MSAVerifyParse(%struct.msa_struct* %call970) #7, !dbg !605
  call void @FreeAlignment(i8** %29, %struct.aliinfo_s* %base_ainfo) #7, !dbg !606
  br label %cleanup, !dbg !607

cleanup:                                          ; preds = %entry, %if.end969, %if.then7
  %retval.0 = phi %struct.msa_struct* [ null, %if.then7 ], [ %call970, %if.end969 ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 104, i8* %2) #2, !dbg !608
  call void @llvm.lifetime.end(i64 4096, i8* %1) #2, !dbg !608
  call void @llvm.lifetime.end(i64 4096, i8* %0) #2, !dbg !608
  ret %struct.msa_struct* %retval.0, !dbg !608
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare void @Die(i8*, ...) #4

; Function Attrs: optsize
declare void @InitAinfo(%struct.aliinfo_s*) #4

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #4

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #4

; Function Attrs: optsize
declare i32 @SetSeqinfoString(%struct.seqinfo_s*, i8*, i32) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare void @rewind(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #4

; Function Attrs: optsize
declare i8* @Strdup(i8*) #4

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #5

; Function Attrs: optsize
declare i32 @IsReal(i8*) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @copy_alignment_line(i8* nocapture %aseq, i32 %apos, i32 %name_rcol, i8* nocapture %buffer, i32 %lcol, i32 %rcol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !609, i64 0, metadata !317), !dbg !610
  %idx.ext = sext i32 %apos to i64, !dbg !611
  %add.ptr = getelementptr inbounds i8* %aseq, i64 %idx.ext, !dbg !611
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !318), !dbg !611
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !320), !dbg !612
  %cmp6 = icmp sgt i32 %lcol, 0, !dbg !612
  br i1 %cmp6, label %for.body, label %for.cond1.preheader, !dbg !612

for.cond1.preheader:                              ; preds = %for.body, %entry
  %s2.0.lcssa = phi i8* [ %buffer, %entry ], [ %s2.0.incdec.ptr, %for.body ]
  %cmp21 = icmp sgt i32 %lcol, %rcol, !dbg !614
  br i1 %cmp21, label %return, label %for.body3, !dbg !614

for.body:                                         ; preds = %entry, %for.body
  %i.08 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %s2.07 = phi i8* [ %s2.0.incdec.ptr, %for.body ], [ %buffer, %entry ]
  %0 = load i8* %s2.07, align 1, !dbg !616, !tbaa !349
  %tobool = icmp eq i8 %0, 0, !dbg !616
  %incdec.ptr = getelementptr inbounds i8* %s2.07, i64 1, !dbg !616
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !319), !dbg !616
  %s2.0.incdec.ptr = select i1 %tobool, i8* %s2.07, i8* %incdec.ptr, !dbg !616
  %inc = add nsw i32 %i.08, 1, !dbg !612
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !320), !dbg !612
  %exitcond = icmp eq i32 %inc, %lcol, !dbg !612
  br i1 %exitcond, label %for.cond1.preheader, label %for.body, !dbg !612

for.body3:                                        ; preds = %for.cond1.preheader, %if.end26
  %i.15 = phi i32 [ %inc33, %if.end26 ], [ %lcol, %for.cond1.preheader ]
  %s2.24 = phi i8* [ %s2.2.incdec.ptr30, %if.end26 ], [ %s2.0.lcssa, %for.cond1.preheader ]
  %s1.02 = phi i8* [ %incdec.ptr27, %if.end26 ], [ %add.ptr, %for.cond1.preheader ]
  %1 = load i8* %s2.24, align 1, !dbg !617, !tbaa !349
  %cmp4 = icmp eq i8 %1, 9, !dbg !617
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !617

if.then6:                                         ; preds = %for.body3
  tail call void (i8*, ...)* @Warn(i8* getelementptr inbounds ([73 x i8]* @.str33, i64 0, i64 0)) #7, !dbg !619
  br label %return, !dbg !621

if.end7:                                          ; preds = %for.body3
  %cmp8 = icmp sgt i32 %i.15, %name_rcol, !dbg !622
  br i1 %cmp8, label %if.else, label %if.then10, !dbg !622

if.then10:                                        ; preds = %if.end7
  store i8 46, i8* %s1.02, align 1, !dbg !623, !tbaa !349
  br label %if.end26, !dbg !623

if.else:                                          ; preds = %if.end7
  switch i8 %1, label %if.else23 [
    i8 0, label %if.then17
    i8 10, label %if.then17
    i8 32, label %if.then22
  ], !dbg !624

if.then17:                                        ; preds = %if.else, %if.else
  store i8 46, i8* %s1.02, align 1, !dbg !625, !tbaa !349
  br label %if.end26, !dbg !625

if.then22:                                        ; preds = %if.else
  store i8 46, i8* %s1.02, align 1, !dbg !626, !tbaa !349
  br label %if.end26, !dbg !626

if.else23:                                        ; preds = %if.else
  store i8 %1, i8* %s1.02, align 1, !dbg !627, !tbaa !349
  br label %if.end26

if.end26:                                         ; preds = %if.then17, %if.else23, %if.then22, %if.then10
  %incdec.ptr27 = getelementptr inbounds i8* %s1.02, i64 1, !dbg !628
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr27}, i64 0, metadata !318), !dbg !628
  %2 = load i8* %s2.24, align 1, !dbg !629, !tbaa !349
  %tobool28 = icmp eq i8 %2, 0, !dbg !629
  %incdec.ptr30 = getelementptr inbounds i8* %s2.24, i64 1, !dbg !629
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr30}, i64 0, metadata !319), !dbg !629
  %s2.2.incdec.ptr30 = select i1 %tobool28, i8* %s2.24, i8* %incdec.ptr30, !dbg !629
  %inc33 = add nsw i32 %i.15, 1, !dbg !614
  tail call void @llvm.dbg.value(metadata !{i32 %inc33}, i64 0, metadata !320), !dbg !614
  %cmp2 = icmp slt i32 %i.15, %rcol, !dbg !614
  br i1 %cmp2, label %for.body3, label %return, !dbg !614

return:                                           ; preds = %for.cond1.preheader, %if.end26, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 1, %if.end26 ], [ 1, %for.cond1.preheader ]
  ret i32 %retval.0, !dbg !630
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare void @Warn(i8*, ...) #4

; Function Attrs: optsize
declare %struct.msa_struct* @MSAFromAINFO(i8**, %struct.aliinfo_s*) #4

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #4

; Function Attrs: optsize
declare void @FreeAlignment(i8**, %struct.aliinfo_s*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @WriteSELEX(%struct._IO_FILE* nocapture %fp, %struct.msa_struct* %msa) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !280), !dbg !631
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !281), !dbg !631
  tail call fastcc void @actually_write_selex(%struct._IO_FILE* %fp, %struct.msa_struct* %msa, i32 50) #9, !dbg !632
  ret void, !dbg !633
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @actually_write_selex(%struct._IO_FILE* nocapture %fp, %struct.msa_struct* %msa, i32 %cpl) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !325), !dbg !634
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !326), !dbg !634
  tail call void @llvm.dbg.value(metadata !{i32 %cpl}, i64 0, metadata !327), !dbg !634
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !329), !dbg !635
  %add = add nsw i32 %cpl, 101, !dbg !636
  %conv = sext i32 %add to i64, !dbg !636
  %call = tail call noalias i8* @malloc(i64 %conv) #7, !dbg !636
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !331), !dbg !636
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !330), !dbg !637
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !328), !dbg !638
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !638
  %0 = load i32* %nseq, align 4, !dbg !638, !tbaa !352
  %cmp417 = icmp sgt i32 %0, 0, !dbg !638
  br i1 %cmp417, label %for.body.lr.ph, label %for.end, !dbg !638

for.body.lr.ph:                                   ; preds = %entry
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !640
  %1 = load i8*** %sqname, align 8, !dbg !640, !tbaa !348
  br label %for.body, !dbg !638

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv429 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next430, %for.body ]
  %namewidth.0418 = phi i32 [ 0, %for.body.lr.ph ], [ %conv3.namewidth.0, %for.body ]
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv429, !dbg !640
  %2 = load i8** %arrayidx, align 8, !dbg !640, !tbaa !348
  %call2 = tail call i64 @strlen(i8* %2) #8, !dbg !640
  %conv3 = trunc i64 %call2 to i32, !dbg !640
  tail call void @llvm.dbg.value(metadata !{i32 %conv3}, i64 0, metadata !329), !dbg !640
  %cmp4 = icmp sgt i32 %conv3, %namewidth.0418, !dbg !640
  tail call void @llvm.dbg.value(metadata !{i32 %conv3}, i64 0, metadata !330), !dbg !641
  %conv3.namewidth.0 = select i1 %cmp4, i32 %conv3, i32 %namewidth.0418, !dbg !640
  %indvars.iv.next430 = add i64 %indvars.iv429, 1, !dbg !638
  %3 = trunc i64 %indvars.iv.next430 to i32, !dbg !638
  %cmp = icmp slt i32 %3, %0, !dbg !638
  br i1 %cmp, label %for.body, label %for.end, !dbg !638

for.end:                                          ; preds = %for.body, %entry
  %namewidth.0.lcssa = phi i32 [ 0, %entry ], [ %conv3.namewidth.0, %for.body ]
  %cmp6 = icmp slt i32 %namewidth.0.lcssa, 6, !dbg !642
  tail call void @llvm.dbg.value(metadata !643, i64 0, metadata !330), !dbg !642
  %.namewidth.0 = select i1 %cmp6, i32 6, i32 %namewidth.0.lcssa, !dbg !642
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !328), !dbg !644
  %ncomment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 21, !dbg !644
  %4 = load i32* %ncomment, align 4, !dbg !644, !tbaa !352
  %cmp11415 = icmp sgt i32 %4, 0, !dbg !644
  br i1 %cmp11415, label %for.body13.lr.ph, label %if.end25, !dbg !644

for.body13.lr.ph:                                 ; preds = %for.end
  %comment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 20, !dbg !646
  br label %for.body13, !dbg !644

for.body13:                                       ; preds = %for.body13.lr.ph, %for.body13
  %indvars.iv427 = phi i64 [ 0, %for.body13.lr.ph ], [ %indvars.iv.next428, %for.body13 ]
  %5 = load i8*** %comment, align 8, !dbg !646, !tbaa !348
  %arrayidx15 = getelementptr inbounds i8** %5, i64 %indvars.iv427, !dbg !646
  %6 = load i8** %arrayidx15, align 8, !dbg !646, !tbaa !348
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), i8* %6) #7, !dbg !646
  %indvars.iv.next428 = add i64 %indvars.iv427, 1, !dbg !644
  %7 = load i32* %ncomment, align 4, !dbg !644, !tbaa !352
  %8 = trunc i64 %indvars.iv.next428 to i32, !dbg !644
  %cmp11 = icmp slt i32 %8, %7, !dbg !644
  br i1 %cmp11, label %for.body13, label %for.end19, !dbg !644

for.end19:                                        ; preds = %for.body13
  %cmp21 = icmp sgt i32 %7, 0, !dbg !647
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !647

if.then23:                                        ; preds = %for.end19
  %fputc402 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !647
  br label %if.end25, !dbg !647

if.end25:                                         ; preds = %for.end, %if.then23, %for.end19
  %name = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7, !dbg !648
  %9 = load i8** %name, align 8, !dbg !648, !tbaa !348
  %cmp26 = icmp eq i8* %9, null, !dbg !648
  br i1 %cmp26, label %if.end31, label %if.then28, !dbg !648

if.then28:                                        ; preds = %if.end25
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str35, i64 0, i64 0), i8* %9) #7, !dbg !648
  br label %if.end31, !dbg !648

if.end31:                                         ; preds = %if.end25, %if.then28
  %acc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 9, !dbg !649
  %10 = load i8** %acc, align 8, !dbg !649, !tbaa !348
  %cmp32 = icmp eq i8* %10, null, !dbg !649
  br i1 %cmp32, label %if.end37, label %if.then34, !dbg !649

if.then34:                                        ; preds = %if.end31
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str36, i64 0, i64 0), i8* %10) #7, !dbg !649
  br label %if.end37, !dbg !649

if.end37:                                         ; preds = %if.end31, %if.then34
  %desc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 8, !dbg !650
  %11 = load i8** %desc, align 8, !dbg !650, !tbaa !348
  %cmp38 = icmp eq i8* %11, null, !dbg !650
  br i1 %cmp38, label %if.end43, label %if.then40, !dbg !650

if.then40:                                        ; preds = %if.end37
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str37, i64 0, i64 0), i8* %11) #7, !dbg !650
  br label %if.end43, !dbg !650

if.end43:                                         ; preds = %if.end37, %if.then40
  %au = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 10, !dbg !651
  %12 = load i8** %au, align 8, !dbg !651, !tbaa !348
  %cmp44 = icmp eq i8* %12, null, !dbg !651
  br i1 %cmp44, label %if.end49, label %if.then46, !dbg !651

if.then46:                                        ; preds = %if.end43
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str38, i64 0, i64 0), i8* %12) #7, !dbg !651
  br label %if.end49, !dbg !651

if.end49:                                         ; preds = %if.end43, %if.then46
  %arrayidx50 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 2, !dbg !652
  %13 = load i32* %arrayidx50, align 4, !dbg !652, !tbaa !352
  %tobool = icmp eq i32 %13, 0, !dbg !652
  br i1 %tobool, label %if.end70, label %land.lhs.true, !dbg !652

land.lhs.true:                                    ; preds = %if.end49
  %arrayidx52 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 3, !dbg !652
  %14 = load i32* %arrayidx52, align 4, !dbg !652, !tbaa !352
  %tobool53 = icmp eq i32 %14, 0, !dbg !652
  %arrayidx66 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 2, !dbg !653
  %15 = load float* %arrayidx66, align 4, !dbg !653, !tbaa !471
  %conv67 = fpext float %15 to double, !dbg !653
  br i1 %tobool53, label %if.then64, label %if.then54, !dbg !652

if.then54:                                        ; preds = %land.lhs.true
  %arrayidx58 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 3, !dbg !654
  %16 = load float* %arrayidx58, align 4, !dbg !654, !tbaa !471
  %conv59 = fpext float %16 to double, !dbg !654
  %call60 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str39, i64 0, i64 0), double %conv67, double %conv59) #7, !dbg !654
  br label %if.end70, !dbg !654

if.then64:                                        ; preds = %land.lhs.true
  %call68 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str40, i64 0, i64 0), double %conv67) #7, !dbg !653
  br label %if.end70, !dbg !653

if.end70:                                         ; preds = %if.end49, %if.then64, %if.then54
  %arrayidx72 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 4, !dbg !655
  %17 = load i32* %arrayidx72, align 4, !dbg !655, !tbaa !352
  %tobool73 = icmp eq i32 %17, 0, !dbg !655
  br i1 %tobool73, label %if.end96, label %land.lhs.true74, !dbg !655

land.lhs.true74:                                  ; preds = %if.end70
  %arrayidx76 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 5, !dbg !655
  %18 = load i32* %arrayidx76, align 4, !dbg !655, !tbaa !352
  %tobool77 = icmp eq i32 %18, 0, !dbg !655
  %arrayidx92 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 4, !dbg !656
  %19 = load float* %arrayidx92, align 4, !dbg !656, !tbaa !471
  %conv93 = fpext float %19 to double, !dbg !656
  br i1 %tobool77, label %if.then90, label %if.then78, !dbg !655

if.then78:                                        ; preds = %land.lhs.true74
  %arrayidx83 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 5, !dbg !657
  %20 = load float* %arrayidx83, align 4, !dbg !657, !tbaa !471
  %conv84 = fpext float %20 to double, !dbg !657
  %call85 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0), double %conv93, double %conv84) #7, !dbg !657
  br label %if.end96, !dbg !657

if.then90:                                        ; preds = %land.lhs.true74
  %call94 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str42, i64 0, i64 0), double %conv93) #7, !dbg !656
  br label %if.end96, !dbg !656

if.end96:                                         ; preds = %if.end70, %if.then90, %if.then78
  %arrayidx98 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 0, !dbg !658
  %21 = load i32* %arrayidx98, align 4, !dbg !658, !tbaa !352
  %tobool99 = icmp eq i32 %21, 0, !dbg !658
  br i1 %tobool99, label %for.cond123.preheader, label %land.lhs.true100, !dbg !658

land.lhs.true100:                                 ; preds = %if.end96
  %arrayidx102 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 1, !dbg !658
  %22 = load i32* %arrayidx102, align 4, !dbg !658, !tbaa !352
  %tobool103 = icmp eq i32 %22, 0, !dbg !658
  %arrayidx118 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 0, !dbg !659
  %23 = load float* %arrayidx118, align 4, !dbg !659, !tbaa !471
  %conv119 = fpext float %23 to double, !dbg !659
  br i1 %tobool103, label %if.then116, label %if.then104, !dbg !658

if.then104:                                       ; preds = %land.lhs.true100
  %arrayidx109 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 1, !dbg !660
  %24 = load float* %arrayidx109, align 4, !dbg !660, !tbaa !471
  %conv110 = fpext float %24 to double, !dbg !660
  %call111 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str43, i64 0, i64 0), double %conv119, double %conv110) #7, !dbg !660
  br label %for.cond123.preheader, !dbg !660

if.then116:                                       ; preds = %land.lhs.true100
  %call120 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0), double %conv119) #7, !dbg !659
  br label %for.cond123.preheader, !dbg !659

for.cond123.preheader:                            ; preds = %if.end96, %if.then116, %if.then104
  %25 = load i32* %nseq, align 4, !dbg !661, !tbaa !352
  %cmp125413 = icmp sgt i32 %25, 0, !dbg !661
  br i1 %cmp125413, label %for.body127.lr.ph, label %for.end163, !dbg !661

for.body127.lr.ph:                                ; preds = %for.cond123.preheader
  %sqname129 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !663
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2, !dbg !663
  %sqacc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 14, !dbg !663
  %sqdesc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15, !dbg !663
  br label %for.body127, !dbg !661

for.body127:                                      ; preds = %cond.end158, %for.body127.lr.ph
  %indvars.iv424 = phi i64 [ 0, %for.body127.lr.ph ], [ %indvars.iv.next425, %cond.end158 ]
  %26 = load i8*** %sqname129, align 8, !dbg !663, !tbaa !348
  %arrayidx130 = getelementptr inbounds i8** %26, i64 %indvars.iv424, !dbg !663
  %27 = load i8** %arrayidx130, align 8, !dbg !663, !tbaa !348
  %28 = load float** %wgt, align 8, !dbg !663, !tbaa !348
  %arrayidx132 = getelementptr inbounds float* %28, i64 %indvars.iv424, !dbg !663
  %29 = load float* %arrayidx132, align 4, !dbg !663, !tbaa !471
  %conv133 = fpext float %29 to double, !dbg !663
  %30 = load i8*** %sqacc, align 8, !dbg !663, !tbaa !348
  %cmp134 = icmp eq i8** %30, null, !dbg !663
  br i1 %cmp134, label %cond.end, label %land.lhs.true136, !dbg !663

land.lhs.true136:                                 ; preds = %for.body127
  %arrayidx139 = getelementptr inbounds i8** %30, i64 %indvars.iv424, !dbg !663
  %31 = load i8** %arrayidx139, align 8, !dbg !663, !tbaa !348
  %cmp140 = icmp eq i8* %31, null, !dbg !663
  %. = select i1 %cmp140, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* %31, !dbg !663
  br label %cond.end, !dbg !663

cond.end:                                         ; preds = %land.lhs.true136, %for.body127
  %cond = phi i8* [ getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), %for.body127 ], [ %., %land.lhs.true136 ], !dbg !663
  %32 = load i8*** %sqdesc, align 8, !dbg !663, !tbaa !348
  %cmp145 = icmp eq i8** %32, null, !dbg !663
  br i1 %cmp145, label %cond.end158, label %land.lhs.true147, !dbg !663

land.lhs.true147:                                 ; preds = %cond.end
  %arrayidx150 = getelementptr inbounds i8** %32, i64 %indvars.iv424, !dbg !663
  %33 = load i8** %arrayidx150, align 8, !dbg !663, !tbaa !348
  %cmp151 = icmp eq i8* %33, null, !dbg !663
  %.403 = select i1 %cmp151, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* %33, !dbg !663
  br label %cond.end158, !dbg !663

cond.end158:                                      ; preds = %land.lhs.true147, %cond.end
  %cond159 = phi i8* [ getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), %cond.end ], [ %.403, %land.lhs.true147 ], !dbg !663
  %call160 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str45, i64 0, i64 0), i32 %.namewidth.0, i32 %.namewidth.0, i8* %27, double %conv133, i8* getelementptr inbounds ([2 x i8]* @.str46, i64 0, i64 0), i8* %cond, i32 0, i32 0, i32 0, i8* %cond159) #7, !dbg !663
  %indvars.iv.next425 = add i64 %indvars.iv424, 1, !dbg !661
  %34 = load i32* %nseq, align 4, !dbg !661, !tbaa !352
  %35 = trunc i64 %indvars.iv.next425 to i32, !dbg !661
  %cmp125 = icmp slt i32 %35, %34, !dbg !661
  br i1 %cmp125, label %for.body127, label %for.end163, !dbg !661

for.end163:                                       ; preds = %cond.end158, %for.cond123.preheader
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !664
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !332), !dbg !665
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !665
  %36 = load i32* %alen, align 4, !dbg !665, !tbaa !352
  %cmp166411 = icmp sgt i32 %36, 0, !dbg !665
  br i1 %cmp166411, label %for.body168.lr.ph, label %for.end258, !dbg !665

for.body168.lr.ph:                                ; preds = %for.end163
  %ss_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11, !dbg !667
  %rf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13, !dbg !669
  %conv190 = sext i32 %cpl to i64, !dbg !670
  %arrayidx193 = getelementptr inbounds i8* %call, i64 %conv190, !dbg !672
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !673
  %sqname210 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !676
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16, !dbg !677
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17, !dbg !678
  br label %for.body168, !dbg !665

for.body168:                                      ; preds = %for.body168.lr.ph, %for.inc256
  %indvars.iv422 = phi i64 [ 0, %for.body168.lr.ph ], [ %indvars.iv.next423, %for.inc256 ]
  %37 = trunc i64 %indvars.iv422 to i32, !dbg !679
  %cmp169 = icmp sgt i32 %37, 0, !dbg !679
  br i1 %cmp169, label %if.then171, label %if.end173, !dbg !679

if.then171:                                       ; preds = %for.body168
  %fputc399 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !679
  br label %if.end173, !dbg !679

if.end173:                                        ; preds = %for.body168, %if.then171
  %38 = load i8** %ss_cons, align 8, !dbg !667, !tbaa !348
  %cmp174 = icmp eq i8* %38, null, !dbg !667
  br i1 %cmp174, label %if.end183, label %if.then176, !dbg !667

if.then176:                                       ; preds = %if.end173
  %add.ptr = getelementptr inbounds i8* %38, i64 %indvars.iv422, !dbg !680
  %call179 = tail call i8* @strncpy(i8* %call, i8* %add.ptr, i64 %conv190) #7, !dbg !680
  store i8 0, i8* %arrayidx193, align 1, !dbg !682, !tbaa !349
  %call182 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str47, i64 0, i64 0), i32 %.namewidth.0, i32 %.namewidth.0, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* %call) #7, !dbg !683
  br label %if.end183, !dbg !684

if.end183:                                        ; preds = %if.end173, %if.then176
  %39 = load i8** %rf, align 8, !dbg !669, !tbaa !348
  %cmp184 = icmp eq i8* %39, null, !dbg !669
  br i1 %cmp184, label %for.cond196.preheader, label %if.then186, !dbg !669

if.then186:                                       ; preds = %if.end183
  %add.ptr189 = getelementptr inbounds i8* %39, i64 %indvars.iv422, !dbg !670
  %call191 = tail call i8* @strncpy(i8* %call, i8* %add.ptr189, i64 %conv190) #7, !dbg !670
  store i8 0, i8* %arrayidx193, align 1, !dbg !672, !tbaa !349
  %call194 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str47, i64 0, i64 0), i32 %.namewidth.0, i32 %.namewidth.0, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* %call) #7, !dbg !685
  br label %for.cond196.preheader, !dbg !686

for.cond196.preheader:                            ; preds = %if.end183, %if.then186
  %40 = load i32* %nseq, align 4, !dbg !687, !tbaa !352
  %cmp198409 = icmp sgt i32 %40, 0, !dbg !687
  br i1 %cmp198409, label %for.body200, label %for.inc256, !dbg !687

for.body200:                                      ; preds = %for.cond196.preheader, %for.inc253
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc253 ], [ 0, %for.cond196.preheader ]
  %41 = load i8*** %aseq, align 8, !dbg !673, !tbaa !348
  %arrayidx202 = getelementptr inbounds i8** %41, i64 %indvars.iv, !dbg !673
  %42 = load i8** %arrayidx202, align 8, !dbg !673, !tbaa !348
  %add.ptr204 = getelementptr inbounds i8* %42, i64 %indvars.iv422, !dbg !673
  %call206 = tail call i8* @strncpy(i8* %call, i8* %add.ptr204, i64 %conv190) #7, !dbg !673
  store i8 0, i8* %arrayidx193, align 1, !dbg !688, !tbaa !349
  %43 = load i8*** %sqname210, align 8, !dbg !676, !tbaa !348
  %arrayidx211 = getelementptr inbounds i8** %43, i64 %indvars.iv, !dbg !676
  %44 = load i8** %arrayidx211, align 8, !dbg !676, !tbaa !348
  %call212 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str47, i64 0, i64 0), i32 %.namewidth.0, i32 %.namewidth.0, i8* %44, i8* %call) #7, !dbg !676
  %45 = load i8*** %ss, align 8, !dbg !677, !tbaa !348
  %cmp213 = icmp eq i8** %45, null, !dbg !677
  br i1 %cmp213, label %if.end232, label %land.lhs.true215, !dbg !677

land.lhs.true215:                                 ; preds = %for.body200
  %arrayidx218 = getelementptr inbounds i8** %45, i64 %indvars.iv, !dbg !677
  %46 = load i8** %arrayidx218, align 8, !dbg !677, !tbaa !348
  %cmp219 = icmp eq i8* %46, null, !dbg !677
  br i1 %cmp219, label %if.end232, label %if.then221, !dbg !677

if.then221:                                       ; preds = %land.lhs.true215
  %add.ptr226 = getelementptr inbounds i8* %46, i64 %indvars.iv422, !dbg !689
  %call228 = tail call i8* @strncpy(i8* %call, i8* %add.ptr226, i64 %conv190) #7, !dbg !689
  store i8 0, i8* %arrayidx193, align 1, !dbg !691, !tbaa !349
  %call231 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str47, i64 0, i64 0), i32 %.namewidth.0, i32 %.namewidth.0, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* %call) #7, !dbg !692
  br label %if.end232, !dbg !693

if.end232:                                        ; preds = %land.lhs.true215, %for.body200, %if.then221
  %47 = load i8*** %sa, align 8, !dbg !678, !tbaa !348
  %cmp233 = icmp eq i8** %47, null, !dbg !678
  br i1 %cmp233, label %for.inc253, label %land.lhs.true235, !dbg !678

land.lhs.true235:                                 ; preds = %if.end232
  %arrayidx238 = getelementptr inbounds i8** %47, i64 %indvars.iv, !dbg !678
  %48 = load i8** %arrayidx238, align 8, !dbg !678, !tbaa !348
  %cmp239 = icmp eq i8* %48, null, !dbg !678
  br i1 %cmp239, label %for.inc253, label %if.then241, !dbg !678

if.then241:                                       ; preds = %land.lhs.true235
  %add.ptr246 = getelementptr inbounds i8* %48, i64 %indvars.iv422, !dbg !694
  %call248 = tail call i8* @strncpy(i8* %call, i8* %add.ptr246, i64 %conv190) #7, !dbg !694
  store i8 0, i8* %arrayidx193, align 1, !dbg !696, !tbaa !349
  %call251 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str47, i64 0, i64 0), i32 %.namewidth.0, i32 %.namewidth.0, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* %call) #7, !dbg !697
  br label %for.inc253, !dbg !698

for.inc253:                                       ; preds = %land.lhs.true235, %if.end232, %if.then241
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !687
  %49 = load i32* %nseq, align 4, !dbg !687, !tbaa !352
  %50 = trunc i64 %indvars.iv.next to i32, !dbg !687
  %cmp198 = icmp slt i32 %50, %49, !dbg !687
  br i1 %cmp198, label %for.body200, label %for.inc256, !dbg !687

for.inc256:                                       ; preds = %for.inc253, %for.cond196.preheader
  %indvars.iv.next423 = add i64 %indvars.iv422, %conv190, !dbg !665
  %51 = load i32* %alen, align 4, !dbg !665, !tbaa !352
  %52 = trunc i64 %indvars.iv.next423 to i32, !dbg !665
  %cmp166 = icmp slt i32 %52, %51, !dbg !665
  br i1 %cmp166, label %for.body168, label %for.end258, !dbg !665

for.end258:                                       ; preds = %for.inc256, %for.end163
  tail call void @free(i8* %call) #7, !dbg !699
  ret void, !dbg !700
}

; Function Attrs: nounwind optsize uwtable
define void @WriteSELEXOneBlock(%struct._IO_FILE* nocapture %fp, %struct.msa_struct* %msa) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !284), !dbg !701
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !285), !dbg !701
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !702
  %0 = load i32* %alen, align 4, !dbg !702, !tbaa !352
  tail call fastcc void @actually_write_selex(%struct._IO_FILE* %fp, %struct.msa_struct* %msa, i32 %0) #9, !dbg !702
  ret void, !dbg !703
}

; Function Attrs: nounwind optsize uwtable
define i32 @DealignAseqs(i8** nocapture %aseqs, i32 %num, i8*** nocapture %ret_rseqs) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %aseqs}, i64 0, metadata !290), !dbg !704
  tail call void @llvm.dbg.value(metadata !{i32 %num}, i64 0, metadata !291), !dbg !704
  tail call void @llvm.dbg.value(metadata !{i8*** %ret_rseqs}, i64 0, metadata !292), !dbg !704
  %conv = sext i32 %num to i64, !dbg !705
  %mul = shl nsw i64 %conv, 3, !dbg !705
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 738, i64 %mul) #7, !dbg !705
  %0 = bitcast i8* %call to i8**, !dbg !705
  tail call void @llvm.dbg.value(metadata !{i8** %0}, i64 0, metadata !293), !dbg !705
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !294), !dbg !706
  %cmp104 = icmp sgt i32 %num, 0, !dbg !706
  br i1 %cmp104, label %for.body, label %for.end71, !dbg !706

for.body:                                         ; preds = %entry, %for.end
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %for.end ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i8** %aseqs, i64 %indvars.iv106, !dbg !708
  %1 = load i8** %arrayidx, align 8, !dbg !708, !tbaa !348
  %call2 = tail call i64 @strlen(i8* %1) #8, !dbg !708
  %add = shl i64 %call2, 32, !dbg !710
  %sext = add i64 %add, 4294967296, !dbg !710
  %conv4 = ashr exact i64 %sext, 32, !dbg !710
  %call6 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 744, i64 %conv4) #7, !dbg !710
  %arrayidx8 = getelementptr inbounds i8** %0, i64 %indvars.iv106, !dbg !710
  store i8* %call6, i8** %arrayidx8, align 8, !dbg !710, !tbaa !348
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !295), !dbg !711
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !296), !dbg !712
  br label %for.cond9, !dbg !712

for.cond9:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body ]
  %depos.0 = phi i32 [ %depos.1, %for.inc ], [ 0, %for.body ]
  %2 = load i8** %arrayidx, align 8, !dbg !712, !tbaa !348
  %arrayidx13 = getelementptr inbounds i8* %2, i64 %indvars.iv, !dbg !712
  %3 = load i8* %arrayidx13, align 1, !dbg !712, !tbaa !349
  switch i8 %3, label %if.then [
    i8 0, label %for.end
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ], !dbg !712

if.then:                                          ; preds = %for.cond9
  %idxprom60 = sext i32 %depos.0 to i64, !dbg !714
  %4 = load i8** %arrayidx8, align 8, !dbg !714, !tbaa !348
  %arrayidx63 = getelementptr inbounds i8* %4, i64 %idxprom60, !dbg !714
  store i8 %3, i8* %arrayidx63, align 1, !dbg !714, !tbaa !349
  %inc = add nsw i32 %depos.0, 1, !dbg !716
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !295), !dbg !716
  br label %for.inc, !dbg !717

for.inc:                                          ; preds = %for.cond9, %for.cond9, %for.cond9, %for.cond9, %for.cond9, %if.then
  %depos.1 = phi i32 [ %inc, %if.then ], [ %depos.0, %for.cond9 ], [ %depos.0, %for.cond9 ], [ %depos.0, %for.cond9 ], [ %depos.0, %for.cond9 ], [ %depos.0, %for.cond9 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !712
  br label %for.cond9, !dbg !712

for.end:                                          ; preds = %for.cond9
  %idxprom65 = sext i32 %depos.0 to i64, !dbg !718
  %5 = load i8** %arrayidx8, align 8, !dbg !718, !tbaa !348
  %arrayidx68 = getelementptr inbounds i8* %5, i64 %idxprom65, !dbg !718
  store i8 0, i8* %arrayidx68, align 1, !dbg !718, !tbaa !349
  %indvars.iv.next107 = add i64 %indvars.iv106, 1, !dbg !706
  %lftr.wideiv = trunc i64 %indvars.iv.next107 to i32, !dbg !706
  %exitcond = icmp eq i32 %lftr.wideiv, %num, !dbg !706
  br i1 %exitcond, label %for.end71, label %for.body, !dbg !706

for.end71:                                        ; preds = %for.end, %entry
  store i8** %0, i8*** %ret_rseqs, align 8, !dbg !719, !tbaa !348
  ret i32 1, !dbg !720
}

; Function Attrs: nounwind optsize uwtable
define i32 @IsSELEXFormat(i8* nocapture %filename) #0 {
entry:
  %buffer = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !302), !dbg !721
  %0 = getelementptr inbounds [4096 x i8]* %buffer, i64 0, i64 0, !dbg !722
  call void @llvm.lifetime.start(i64 4096, i8* %0) #2, !dbg !722
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %buffer}, metadata !304), !dbg !722
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8]* @.str32, i64 0, i64 0)) #7, !dbg !723
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !303), !dbg !723
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !723
  br i1 %cmp, label %if.then, label %land.rhs, !dbg !723

if.then:                                          ; preds = %entry
  store i32 4, i32* @squid_errno, align 4, !dbg !724, !tbaa !352
  br label %cleanup, !dbg !724

land.rhs:                                         ; preds = %entry, %while.cond.backedge
  %linenum.095 = phi i32 [ %inc, %while.cond.backedge ], [ 0, %entry ]
  %call2 = call i8* @fgets(i8* %0, i32 4096, %struct._IO_FILE* %call) #7, !dbg !726
  %cmp3 = icmp eq i8* %call2, null, !dbg !726
  br i1 %cmp3, label %DONE, label %while.body

while.body:                                       ; preds = %land.rhs
  %inc = add nsw i32 %linenum.095, 1, !dbg !727
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !306), !dbg !727
  %call5 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0), i64 4) #8, !dbg !729
  %cmp6 = icmp eq i32 %call5, 0, !dbg !729
  br i1 %cmp6, label %DONE, label %if.else, !dbg !729

if.else:                                          ; preds = %while.body
  %call9 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i64 4) #8, !dbg !730
  %cmp10 = icmp eq i32 %call9, 0, !dbg !730
  br i1 %cmp10, label %DONE, label %if.else12, !dbg !730

if.else12:                                        ; preds = %if.else
  %call14 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i64 4) #8, !dbg !731
  %cmp15 = icmp eq i32 %call14, 0, !dbg !731
  br i1 %cmp15, label %DONE, label %if.else17, !dbg !731

if.else17:                                        ; preds = %if.else12
  %call19 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0), i64 4) #8, !dbg !732
  %cmp20 = icmp eq i32 %call19, 0, !dbg !732
  br i1 %cmp20, label %DONE, label %if.else22, !dbg !732

if.else22:                                        ; preds = %if.else17
  %call24 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i64 4) #8, !dbg !733
  %cmp25 = icmp eq i32 %call24, 0, !dbg !733
  br i1 %cmp25, label %DONE, label %if.else27, !dbg !733

if.else27:                                        ; preds = %if.else22
  %call29 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i64 4) #8, !dbg !734
  %cmp30 = icmp eq i32 %call29, 0, !dbg !734
  br i1 %cmp30, label %DONE, label %if.else32, !dbg !734

if.else32:                                        ; preds = %if.else27
  %call34 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i64 4) #8, !dbg !735
  %cmp35 = icmp eq i32 %call34, 0, !dbg !735
  br i1 %cmp35, label %DONE, label %if.else37, !dbg !735

if.else37:                                        ; preds = %if.else32
  %call39 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i64 4) #8, !dbg !736
  %cmp40 = icmp eq i32 %call39, 0, !dbg !736
  br i1 %cmp40, label %DONE, label %if.else42, !dbg !736

if.else42:                                        ; preds = %if.else37
  %call44 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i64 4) #8, !dbg !737
  %cmp45 = icmp eq i32 %call44, 0, !dbg !737
  br i1 %cmp45, label %DONE, label %if.else47, !dbg !737

if.else47:                                        ; preds = %if.else42
  %call49 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i64 4) #8, !dbg !738
  %cmp50 = icmp eq i32 %call49, 0, !dbg !738
  br i1 %cmp50, label %DONE, label %if.else52, !dbg !738

if.else52:                                        ; preds = %if.else47
  %call54 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i64 4) #8, !dbg !739
  %cmp55 = icmp eq i32 %call54, 0, !dbg !739
  br i1 %cmp55, label %DONE, label %if.end67, !dbg !739

if.end67:                                         ; preds = %if.else52
  %1 = load i8* %0, align 16, !dbg !740, !tbaa !349
  %conv = sext i8 %1 to i32, !dbg !740
  %call69 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8]* @commentsyms, i64 0, i64 0), i32 %conv) #8, !dbg !740
  %cmp70 = icmp eq i8* %call69, null, !dbg !740
  br i1 %cmp70, label %if.end73, label %while.cond.backedge, !dbg !740

if.end73:                                         ; preds = %if.end67
  %call75 = call i8* @strtok(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !741
  call void @llvm.dbg.value(metadata !{i8* %call75}, i64 0, metadata !305), !dbg !741
  %cmp76 = icmp eq i8* %call75, null, !dbg !741
  br i1 %cmp76, label %while.cond.backedge, label %if.end79, !dbg !741

while.cond.backedge:                              ; preds = %if.end73, %if.end79, %if.end84, %if.end67
  %cmp1 = icmp slt i32 %inc, 500, !dbg !742
  br i1 %cmp1, label %land.rhs, label %DONE, !dbg !742

if.end79:                                         ; preds = %if.end73
  %call80 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !743
  call void @llvm.dbg.value(metadata !{i8* %call80}, i64 0, metadata !305), !dbg !743
  %cmp81 = icmp eq i8* %call80, null, !dbg !743
  br i1 %cmp81, label %while.cond.backedge, label %if.end84, !dbg !743

if.end84:                                         ; preds = %if.end79
  %call85 = call i32 @Seqtype(i8* %call80) #7, !dbg !744
  %cmp86 = icmp eq i32 %call85, 0, !dbg !744
  br i1 %cmp86, label %if.then88, label %while.cond.backedge, !dbg !744

if.then88:                                        ; preds = %if.end84
  %call89 = call i32 @fclose(%struct._IO_FILE* %call) #7, !dbg !745
  br label %cleanup, !dbg !745

DONE:                                             ; preds = %land.rhs, %while.cond.backedge, %if.else52, %if.else47, %if.else42, %if.else37, %if.else32, %if.else27, %if.else22, %if.else17, %if.else12, %if.else, %while.body
  %call91 = call i32 @fclose(%struct._IO_FILE* %call) #7, !dbg !747
  br label %cleanup, !dbg !748

cleanup:                                          ; preds = %DONE, %if.then88, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %DONE ], [ 0, %if.then88 ]
  call void @llvm.lifetime.end(i64 4096, i8* %0) #2, !dbg !748
  ret i32 %retval.0, !dbg !749
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @Seqtype(i8*) #4

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !333, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !276, metadata !282, metadata !286, metadata !298, metadata !307, metadata !321}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ReadSELEX", metadata !"ReadSELEX", metadata !"", i32 83, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.msa_struct* (%struct.msafile_struct*)* @ReadSELEX, null, null, metadata !196, i32 84} ; [ DW_TAG_subprogram ] [line 83] [def] [scope 84] [ReadSELEX]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !87}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSA]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"MSA", i32 177, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [MSA] [line 177, size 0, align 0, offset 0] [from msa_struct]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"msa_struct", i32 112, i64 2880, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [msa_struct] [line 112, size 2880, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !17, metadata !18, metadata !21, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !41, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !53, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !84, metadata !85, metadata !86}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"aseq", i32 115, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [aseq] [line 115, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!16 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sqname", i32 116, i64 64, i64 64, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [sqname] [line 116, size 64, align 64, offset 64] [from ]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wgt", i32 117, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [wgt] [line 117, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!20 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"alen", i32 118, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [alen] [line 118, size 32, align 32, offset 192] [from int]
!22 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nseq", i32 119, i64 32, i64 32, i64 224, i32 0, metadata !22} ; [ DW_TAG_member ] [nseq] [line 119, size 32, align 32, offset 224] [from int]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"flags", i32 123, i64 32, i64 32, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [flags] [line 123, size 32, align 32, offset 256] [from int]
!25 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 124, i64 32, i64 32, i64 288, i32 0, metadata !22} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from int]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"name", i32 125, i64 64, i64 64, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [name] [line 125, size 64, align 64, offset 320] [from ]
!27 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"desc", i32 126, i64 64, i64 64, i64 384, i32 0, metadata !15} ; [ DW_TAG_member ] [desc] [line 126, size 64, align 64, offset 384] [from ]
!28 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"acc", i32 127, i64 64, i64 64, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [acc] [line 127, size 64, align 64, offset 448] [from ]
!29 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"au", i32 128, i64 64, i64 64, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [au] [line 128, size 64, align 64, offset 512] [from ]
!30 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ss_cons", i32 129, i64 64, i64 64, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [ss_cons] [line 129, size 64, align 64, offset 576] [from ]
!31 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sa_cons", i32 130, i64 64, i64 64, i64 640, i32 0, metadata !15} ; [ DW_TAG_member ] [sa_cons] [line 130, size 64, align 64, offset 640] [from ]
!32 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rf", i32 131, i64 64, i64 64, i64 704, i32 0, metadata !15} ; [ DW_TAG_member ] [rf] [line 131, size 64, align 64, offset 704] [from ]
!33 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sqacc", i32 132, i64 64, i64 64, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [sqacc] [line 132, size 64, align 64, offset 768] [from ]
!34 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sqdesc", i32 133, i64 64, i64 64, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [sqdesc] [line 133, size 64, align 64, offset 832] [from ]
!35 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ss", i32 134, i64 64, i64 64, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [ss] [line 134, size 64, align 64, offset 896] [from ]
!36 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sa", i32 135, i64 64, i64 64, i64 960, i32 0, metadata !14} ; [ DW_TAG_member ] [sa] [line 135, size 64, align 64, offset 960] [from ]
!37 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"cutoff", i32 136, i64 192, i64 32, i64 1024, i32 0, metadata !38} ; [ DW_TAG_member ] [cutoff] [line 136, size 192, align 32, offset 1024] [from ]
!38 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !20, metadata !39, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from float]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!41 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"cutoff_is_set", i32 137, i64 192, i64 32, i64 1216, i32 0, metadata !42} ; [ DW_TAG_member ] [cutoff_is_set] [line 137, size 192, align 32, offset 1216] [from ]
!42 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !22, metadata !39, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!43 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"comment", i32 144, i64 64, i64 64, i64 1408, i32 0, metadata !14} ; [ DW_TAG_member ] [comment] [line 144, size 64, align 64, offset 1408] [from ]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ncomment", i32 145, i64 32, i64 32, i64 1472, i32 0, metadata !22} ; [ DW_TAG_member ] [ncomment] [line 145, size 32, align 32, offset 1472] [from int]
!45 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"alloc_ncomment", i32 146, i64 32, i64 32, i64 1504, i32 0, metadata !22} ; [ DW_TAG_member ] [alloc_ncomment] [line 146, size 32, align 32, offset 1504] [from int]
!46 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gf_tag", i32 148, i64 64, i64 64, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [gf_tag] [line 148, size 64, align 64, offset 1536] [from ]
!47 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gf", i32 149, i64 64, i64 64, i64 1600, i32 0, metadata !14} ; [ DW_TAG_member ] [gf] [line 149, size 64, align 64, offset 1600] [from ]
!48 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ngf", i32 150, i64 32, i64 32, i64 1664, i32 0, metadata !22} ; [ DW_TAG_member ] [ngf] [line 150, size 32, align 32, offset 1664] [from int]
!49 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"alloc_ngf", i32 151, i64 32, i64 32, i64 1696, i32 0, metadata !22} ; [ DW_TAG_member ] [alloc_ngf] [line 151, size 32, align 32, offset 1696] [from int]
!50 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gs_tag", i32 153, i64 64, i64 64, i64 1728, i32 0, metadata !14} ; [ DW_TAG_member ] [gs_tag] [line 153, size 64, align 64, offset 1728] [from ]
!51 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gs", i32 154, i64 64, i64 64, i64 1792, i32 0, metadata !52} ; [ DW_TAG_member ] [gs] [line 154, size 64, align 64, offset 1792] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gs_idx", i32 155, i64 64, i64 64, i64 1856, i32 0, metadata !54} ; [ DW_TAG_member ] [gs_idx] [line 155, size 64, align 64, offset 1856] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GKI]
!55 = metadata !{i32 786454, metadata !11, null, metadata !"GKI", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [GKI] [line 42, size 0, align 0, offset 0] [from ]
!56 = metadata !{i32 786451, metadata !57, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !58, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!57 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!58 = metadata !{metadata !59, metadata !67, metadata !68, metadata !69}
!59 = metadata !{i32 786445, metadata !57, metadata !56, metadata !"table", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ] [table] [line 37, size 64, align 64, offset 0] [from ]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!61 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gki_elem]
!62 = metadata !{i32 786451, metadata !57, null, metadata !"gki_elem", i32 26, i64 192, i64 64, i32 0, i32 0, null, metadata !63, i32 0, null, null} ; [ DW_TAG_structure_type ] [gki_elem] [line 26, size 192, align 64, offset 0] [from ]
!63 = metadata !{metadata !64, metadata !65, metadata !66}
!64 = metadata !{i32 786445, metadata !57, metadata !62, metadata !"key", i32 27, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [key] [line 27, size 64, align 64, offset 0] [from ]
!65 = metadata !{i32 786445, metadata !57, metadata !62, metadata !"idx", i32 28, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [idx] [line 28, size 32, align 32, offset 64] [from int]
!66 = metadata !{i32 786445, metadata !57, metadata !62, metadata !"nxt", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !61} ; [ DW_TAG_member ] [nxt] [line 29, size 64, align 64, offset 128] [from ]
!67 = metadata !{i32 786445, metadata !57, metadata !56, metadata !"primelevel", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [primelevel] [line 39, size 32, align 32, offset 64] [from int]
!68 = metadata !{i32 786445, metadata !57, metadata !56, metadata !"nhash", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [nhash] [line 40, size 32, align 32, offset 96] [from int]
!69 = metadata !{i32 786445, metadata !57, metadata !56, metadata !"nkeys", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [nkeys] [line 41, size 32, align 32, offset 128] [from int]
!70 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ngs", i32 156, i64 32, i64 32, i64 1920, i32 0, metadata !22} ; [ DW_TAG_member ] [ngs] [line 156, size 32, align 32, offset 1920] [from int]
!71 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gc_tag", i32 158, i64 64, i64 64, i64 1984, i32 0, metadata !14} ; [ DW_TAG_member ] [gc_tag] [line 158, size 64, align 64, offset 1984] [from ]
!72 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gc", i32 159, i64 64, i64 64, i64 2048, i32 0, metadata !14} ; [ DW_TAG_member ] [gc] [line 159, size 64, align 64, offset 2048] [from ]
!73 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gc_idx", i32 160, i64 64, i64 64, i64 2112, i32 0, metadata !54} ; [ DW_TAG_member ] [gc_idx] [line 160, size 64, align 64, offset 2112] [from ]
!74 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ngc", i32 161, i64 32, i64 32, i64 2176, i32 0, metadata !22} ; [ DW_TAG_member ] [ngc] [line 161, size 32, align 32, offset 2176] [from int]
!75 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gr_tag", i32 163, i64 64, i64 64, i64 2240, i32 0, metadata !14} ; [ DW_TAG_member ] [gr_tag] [line 163, size 64, align 64, offset 2240] [from ]
!76 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gr", i32 164, i64 64, i64 64, i64 2304, i32 0, metadata !52} ; [ DW_TAG_member ] [gr] [line 164, size 64, align 64, offset 2304] [from ]
!77 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"gr_idx", i32 165, i64 64, i64 64, i64 2368, i32 0, metadata !54} ; [ DW_TAG_member ] [gr_idx] [line 165, size 64, align 64, offset 2368] [from ]
!78 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ngr", i32 166, i64 32, i64 32, i64 2432, i32 0, metadata !22} ; [ DW_TAG_member ] [ngr] [line 166, size 32, align 32, offset 2432] [from int]
!79 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"index", i32 170, i64 64, i64 64, i64 2496, i32 0, metadata !54} ; [ DW_TAG_member ] [index] [line 170, size 64, align 64, offset 2496] [from ]
!80 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nseqalloc", i32 171, i64 32, i64 32, i64 2560, i32 0, metadata !22} ; [ DW_TAG_member ] [nseqalloc] [line 171, size 32, align 32, offset 2560] [from int]
!81 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nseqlump", i32 172, i64 32, i64 32, i64 2592, i32 0, metadata !22} ; [ DW_TAG_member ] [nseqlump] [line 172, size 32, align 32, offset 2592] [from int]
!82 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sqlen", i32 173, i64 64, i64 64, i64 2624, i32 0, metadata !83} ; [ DW_TAG_member ] [sqlen] [line 173, size 64, align 64, offset 2624] [from ]
!83 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!84 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sslen", i32 174, i64 64, i64 64, i64 2688, i32 0, metadata !83} ; [ DW_TAG_member ] [sslen] [line 174, size 64, align 64, offset 2688] [from ]
!85 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"salen", i32 175, i64 64, i64 64, i64 2752, i32 0, metadata !83} ; [ DW_TAG_member ] [salen] [line 175, size 64, align 64, offset 2752] [from ]
!86 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"lastidx", i32 176, i64 32, i64 32, i64 2816, i32 0, metadata !22} ; [ DW_TAG_member ] [lastidx] [line 176, size 32, align 32, offset 2816] [from int]
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSAFILE]
!88 = metadata !{i32 786454, metadata !1, null, metadata !"MSAFILE", i32 199, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [MSAFILE] [line 199, size 0, align 0, offset 0] [from msafile_struct]
!89 = metadata !{i32 786451, metadata !11, null, metadata !"msafile_struct", i32 186, i64 512, i64 64, i32 0, i32 0, null, metadata !90, i32 0, null, null} ; [ DW_TAG_structure_type ] [msafile_struct] [line 186, size 512, align 64, offset 0] [from ]
!90 = metadata !{metadata !91, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !193, metadata !194, metadata !195}
!91 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"f", i32 187, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ] [f] [line 187, size 64, align 64, offset 0] [from ]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!93 = metadata !{i32 786454, metadata !11, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!94 = metadata !{i32 786451, metadata !95, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !96, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!95 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !117, metadata !118, metadata !119, metadata !120, metadata !123, metadata !125, metadata !127, metadata !131, metadata !133, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !142, metadata !143}
!97 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!98 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!99 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!100 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!101 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!102 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!103 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!104 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!105 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!106 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!107 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!108 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !15} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!109 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !110} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!111 = metadata !{i32 786451, metadata !95, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !112, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!112 = metadata !{metadata !113, metadata !114, metadata !116}
!113 = metadata !{i32 786445, metadata !95, metadata !111, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !110} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!114 = metadata !{i32 786445, metadata !95, metadata !111, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !115} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!115 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!116 = metadata !{i32 786445, metadata !95, metadata !111, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!117 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !115} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!118 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!119 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !22} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!120 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !121} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!121 = metadata !{i32 786454, metadata !95, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!122 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!123 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !124} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!124 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!125 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !126} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!126 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!127 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !128} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!128 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !16, metadata !129, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!129 = metadata !{metadata !130}
!130 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!131 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !132} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!133 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !134} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!134 = metadata !{i32 786454, metadata !95, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!135 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !132} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!136 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !132} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!137 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !132} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!138 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !132} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!139 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !140} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!140 = metadata !{i32 786454, metadata !95, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!141 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!142 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !22} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!143 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !144} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!144 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !16, metadata !145, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!145 = metadata !{metadata !146}
!146 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!147 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"fname", i32 188, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [fname] [line 188, size 64, align 64, offset 64] [from ]
!148 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"linenumber", i32 189, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [linenumber] [line 189, size 32, align 32, offset 128] [from int]
!149 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"buf", i32 191, i64 64, i64 64, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [buf] [line 191, size 64, align 64, offset 192] [from ]
!150 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"buflen", i32 192, i64 32, i64 32, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [buflen] [line 192, size 32, align 32, offset 256] [from int]
!151 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"ssi", i32 194, i64 64, i64 64, i64 320, i32 0, metadata !152} ; [ DW_TAG_member ] [ssi] [line 194, size 64, align 64, offset 320] [from ]
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SSIFILE]
!153 = metadata !{i32 786454, metadata !11, null, metadata !"SSIFILE", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ] [SSIFILE] [line 76, size 0, align 0, offset 0] [from ssifile_s]
!154 = metadata !{i32 786451, metadata !155, null, metadata !"ssifile_s", i32 49, i64 1152, i64 64, i32 0, i32 0, null, metadata !156, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssifile_s] [line 49, size 1152, align 64, offset 0] [from ]
!155 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!156 = metadata !{metadata !157, metadata !158, metadata !161, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !190, metadata !191, metadata !192}
!157 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"fp", i32 50, i64 64, i64 64, i64 0, i32 0, metadata !92} ; [ DW_TAG_member ] [fp] [line 50, size 64, align 64, offset 0] [from ]
!158 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"flags", i32 51, i64 32, i64 32, i64 64, i32 0, metadata !159} ; [ DW_TAG_member ] [flags] [line 51, size 32, align 32, offset 64] [from sqd_uint32]
!159 = metadata !{i32 786454, metadata !155, null, metadata !"sqd_uint32", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ] [sqd_uint32] [line 41, size 0, align 0, offset 0] [from unsigned int]
!160 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!161 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"nfiles", i32 52, i64 16, i64 16, i64 96, i32 0, metadata !162} ; [ DW_TAG_member ] [nfiles] [line 52, size 16, align 16, offset 96] [from sqd_uint16]
!162 = metadata !{i32 786454, metadata !155, null, metadata !"sqd_uint16", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !124} ; [ DW_TAG_typedef ] [sqd_uint16] [line 40, size 0, align 0, offset 0] [from unsigned short]
!163 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"nprimary", i32 53, i64 32, i64 32, i64 128, i32 0, metadata !159} ; [ DW_TAG_member ] [nprimary] [line 53, size 32, align 32, offset 128] [from sqd_uint32]
!164 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"nsecondary", i32 54, i64 32, i64 32, i64 160, i32 0, metadata !159} ; [ DW_TAG_member ] [nsecondary] [line 54, size 32, align 32, offset 160] [from sqd_uint32]
!165 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"flen", i32 55, i64 32, i64 32, i64 192, i32 0, metadata !159} ; [ DW_TAG_member ] [flen] [line 55, size 32, align 32, offset 192] [from sqd_uint32]
!166 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"plen", i32 56, i64 32, i64 32, i64 224, i32 0, metadata !159} ; [ DW_TAG_member ] [plen] [line 56, size 32, align 32, offset 224] [from sqd_uint32]
!167 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"slen", i32 57, i64 32, i64 32, i64 256, i32 0, metadata !159} ; [ DW_TAG_member ] [slen] [line 57, size 32, align 32, offset 256] [from sqd_uint32]
!168 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"frecsize", i32 58, i64 32, i64 32, i64 288, i32 0, metadata !159} ; [ DW_TAG_member ] [frecsize] [line 58, size 32, align 32, offset 288] [from sqd_uint32]
!169 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"precsize", i32 59, i64 32, i64 32, i64 320, i32 0, metadata !159} ; [ DW_TAG_member ] [precsize] [line 59, size 32, align 32, offset 320] [from sqd_uint32]
!170 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"srecsize", i32 60, i64 32, i64 32, i64 352, i32 0, metadata !159} ; [ DW_TAG_member ] [srecsize] [line 60, size 32, align 32, offset 352] [from sqd_uint32]
!171 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"foffset", i32 61, i64 128, i64 64, i64 384, i32 0, metadata !172} ; [ DW_TAG_member ] [foffset] [line 61, size 128, align 64, offset 384] [from SSIOFFSET]
!172 = metadata !{i32 786454, metadata !155, null, metadata !"SSIOFFSET", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !173} ; [ DW_TAG_typedef ] [SSIOFFSET] [line 42, size 0, align 0, offset 0] [from ssioffset_s]
!173 = metadata !{i32 786451, metadata !155, null, metadata !"ssioffset_s", i32 35, i64 128, i64 64, i32 0, i32 0, null, metadata !174, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssioffset_s] [line 35, size 128, align 64, offset 0] [from ]
!174 = metadata !{metadata !175, metadata !176}
!175 = metadata !{i32 786445, metadata !155, metadata !173, metadata !"mode", i32 36, i64 8, i64 8, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [mode] [line 36, size 8, align 8, offset 0] [from char]
!176 = metadata !{i32 786445, metadata !155, metadata !173, metadata !"off", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !177} ; [ DW_TAG_member ] [off] [line 40, size 64, align 64, offset 64] [from ]
!177 = metadata !{i32 786455, metadata !155, metadata !173, metadata !"", i32 37, i64 64, i64 64, i64 0, i32 0, null, metadata !178, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 37, size 64, align 64, offset 0] [from ]
!178 = metadata !{metadata !179, metadata !180}
!179 = metadata !{i32 786445, metadata !155, metadata !177, metadata !"i32", i32 38, i64 32, i64 32, i64 0, i32 0, metadata !159} ; [ DW_TAG_member ] [i32] [line 38, size 32, align 32, offset 0] [from sqd_uint32]
!180 = metadata !{i32 786445, metadata !155, metadata !177, metadata !"i64", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !181} ; [ DW_TAG_member ] [i64] [line 39, size 64, align 64, offset 0] [from sqd_uint64]
!181 = metadata !{i32 786454, metadata !155, null, metadata !"sqd_uint64", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !182} ; [ DW_TAG_typedef ] [sqd_uint64] [line 42, size 0, align 0, offset 0] [from long long unsigned int]
!182 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!183 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"poffset", i32 62, i64 128, i64 64, i64 512, i32 0, metadata !172} ; [ DW_TAG_member ] [poffset] [line 62, size 128, align 64, offset 512] [from SSIOFFSET]
!184 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"soffset", i32 63, i64 128, i64 64, i64 640, i32 0, metadata !172} ; [ DW_TAG_member ] [soffset] [line 63, size 128, align 64, offset 640] [from SSIOFFSET]
!185 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"imode", i32 65, i64 8, i64 8, i64 768, i32 0, metadata !16} ; [ DW_TAG_member ] [imode] [line 65, size 8, align 8, offset 768] [from char]
!186 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"smode", i32 66, i64 8, i64 8, i64 776, i32 0, metadata !16} ; [ DW_TAG_member ] [smode] [line 66, size 8, align 8, offset 776] [from char]
!187 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"filename", i32 70, i64 64, i64 64, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [filename] [line 70, size 64, align 64, offset 832] [from ]
!188 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"fileformat", i32 71, i64 64, i64 64, i64 896, i32 0, metadata !189} ; [ DW_TAG_member ] [fileformat] [line 71, size 64, align 64, offset 896] [from ]
!189 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !159} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sqd_uint32]
!190 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"fileflags", i32 72, i64 64, i64 64, i64 960, i32 0, metadata !189} ; [ DW_TAG_member ] [fileflags] [line 72, size 64, align 64, offset 960] [from ]
!191 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"bpl", i32 73, i64 64, i64 64, i64 1024, i32 0, metadata !189} ; [ DW_TAG_member ] [bpl] [line 73, size 64, align 64, offset 1024] [from ]
!192 = metadata !{i32 786445, metadata !155, metadata !154, metadata !"rpl", i32 74, i64 64, i64 64, i64 1088, i32 0, metadata !189} ; [ DW_TAG_member ] [rpl] [line 74, size 64, align 64, offset 1088] [from ]
!193 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"do_gzip", i32 196, i64 32, i64 32, i64 384, i32 0, metadata !22} ; [ DW_TAG_member ] [do_gzip] [line 196, size 32, align 32, offset 384] [from int]
!194 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"do_stdin", i32 197, i64 32, i64 32, i64 416, i32 0, metadata !22} ; [ DW_TAG_member ] [do_stdin] [line 197, size 32, align 32, offset 416] [from int]
!195 = metadata !{i32 786445, metadata !11, metadata !89, metadata !"format", i32 198, i64 32, i64 32, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [format] [line 198, size 32, align 32, offset 448] [from int]
!196 = metadata !{metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !206, metadata !207, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !270, metadata !272, metadata !275}
!197 = metadata !{i32 786689, metadata !4, metadata !"afp", metadata !5, i32 16777299, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [afp] [line 83]
!198 = metadata !{i32 786688, metadata !4, metadata !"msa", metadata !5, i32 85, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msa] [line 85]
!199 = metadata !{i32 786688, metadata !4, metadata !"fp", metadata !5, i32 86, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 86]
!200 = metadata !{i32 786688, metadata !4, metadata !"aseqs", metadata !5, i32 87, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aseqs] [line 87]
!201 = metadata !{i32 786688, metadata !4, metadata !"num", metadata !5, i32 88, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 88]
!202 = metadata !{i32 786688, metadata !4, metadata !"buffer", metadata !5, i32 89, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 89]
!203 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !16, metadata !204, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!204 = metadata !{metadata !205}
!205 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!206 = metadata !{i32 786688, metadata !4, metadata !"bufcpy", metadata !5, i32 90, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bufcpy] [line 90]
!207 = metadata !{i32 786688, metadata !4, metadata !"blocks", metadata !5, i32 94, metadata !208, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blocks] [line 94]
!208 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !209} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from block_struc]
!209 = metadata !{i32 786451, metadata !1, metadata !4, metadata !"block_struc", i32 91, i64 64, i64 32, i32 0, i32 0, null, metadata !210, i32 0, null, null} ; [ DW_TAG_structure_type ] [block_struc] [line 91, size 64, align 32, offset 0] [from ]
!210 = metadata !{metadata !211, metadata !212}
!211 = metadata !{i32 786445, metadata !1, metadata !209, metadata !"lcol", i32 92, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [lcol] [line 92, size 32, align 32, offset 0] [from int]
!212 = metadata !{i32 786445, metadata !1, metadata !209, metadata !"rcol", i32 93, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [rcol] [line 93, size 32, align 32, offset 32] [from int]
!213 = metadata !{i32 786688, metadata !4, metadata !"blocknum", metadata !5, i32 95, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blocknum] [line 95]
!214 = metadata !{i32 786688, metadata !4, metadata !"nptr", metadata !5, i32 96, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nptr] [line 96]
!215 = metadata !{i32 786688, metadata !4, metadata !"sptr", metadata !5, i32 97, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sptr] [line 97]
!216 = metadata !{i32 786688, metadata !4, metadata !"currnum", metadata !5, i32 98, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currnum] [line 98]
!217 = metadata !{i32 786688, metadata !4, metadata !"currblock", metadata !5, i32 99, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currblock] [line 99]
!218 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 100, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 100]
!219 = metadata !{i32 786688, metadata !4, metadata !"seqidx", metadata !5, i32 101, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seqidx] [line 101]
!220 = metadata !{i32 786688, metadata !4, metadata !"alen", metadata !5, i32 102, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alen] [line 102]
!221 = metadata !{i32 786688, metadata !4, metadata !"warn_names", metadata !5, i32 103, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [warn_names] [line 103]
!222 = metadata !{i32 786688, metadata !4, metadata !"headnum", metadata !5, i32 104, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [headnum] [line 104]
!223 = metadata !{i32 786688, metadata !4, metadata !"currlen", metadata !5, i32 105, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currlen] [line 105]
!224 = metadata !{i32 786688, metadata !4, metadata !"count", metadata !5, i32 106, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 106]
!225 = metadata !{i32 786688, metadata !4, metadata !"have_cs", metadata !5, i32 107, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [have_cs] [line 107]
!226 = metadata !{i32 786688, metadata !4, metadata !"have_rf", metadata !5, i32 108, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [have_rf] [line 108]
!227 = metadata !{i32 786688, metadata !4, metadata !"base_ainfo", metadata !5, i32 109, metadata !228, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base_ainfo] [line 109]
!228 = metadata !{i32 786454, metadata !1, null, metadata !"AINFO", i32 83, i64 0, i64 0, i64 0, i32 0, metadata !229} ; [ DW_TAG_typedef ] [AINFO] [line 83, size 0, align 0, offset 0] [from aliinfo_s]
!229 = metadata !{i32 786451, metadata !11, null, metadata !"aliinfo_s", i32 65, i64 832, i64 64, i32 0, i32 0, null, metadata !230, i32 0, null, null} ; [ DW_TAG_structure_type ] [aliinfo_s] [line 65, size 832, align 64, offset 0] [from ]
!230 = metadata !{metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269}
!231 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"flags", i32 66, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [flags] [line 66, size 32, align 32, offset 0] [from int]
!232 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"alen", i32 67, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [alen] [line 67, size 32, align 32, offset 32] [from int]
!233 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"nseq", i32 68, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [nseq] [line 68, size 32, align 32, offset 64] [from int]
!234 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"wgt", i32 69, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [wgt] [line 69, size 64, align 64, offset 128] [from ]
!235 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"cs", i32 70, i64 64, i64 64, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [cs] [line 70, size 64, align 64, offset 192] [from ]
!236 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"rf", i32 71, i64 64, i64 64, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [rf] [line 71, size 64, align 64, offset 256] [from ]
!237 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"sqinfo", i32 72, i64 64, i64 64, i64 320, i32 0, metadata !238} ; [ DW_TAG_member ] [sqinfo] [line 72, size 64, align 64, offset 320] [from ]
!238 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !239} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seqinfo_s]
!239 = metadata !{i32 786451, metadata !240, null, metadata !"seqinfo_s", i32 84, i64 2880, i64 64, i32 0, i32 0, null, metadata !241, i32 0, null, null} ; [ DW_TAG_structure_type ] [seqinfo_s] [line 84, size 2880, align 64, offset 0] [from ]
!240 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/squid.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!241 = metadata !{metadata !242, metadata !243, metadata !247, metadata !248, metadata !249, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259}
!242 = metadata !{i32 786445, metadata !240, metadata !239, metadata !"flags", i32 85, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [flags] [line 85, size 32, align 32, offset 0] [from int]
!243 = metadata !{i32 786445, metadata !240, metadata !239, metadata !"name", i32 86, i64 512, i64 8, i64 32, i32 0, metadata !244} ; [ DW_TAG_member ] [name] [line 86, size 512, align 8, offset 32] [from ]
!244 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !16, metadata !245, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from char]
!245 = metadata !{metadata !246}
!246 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!247 = metadata !{i32 786445, metadata !240, metadata !239, metadata !"id", i32 87, i64 512, i64 8, i64 544, i32 0, metadata !244} ; [ DW_TAG_member ] [id] [line 87, size 512, align 8, offset 544] [from ]
!248 = metadata !{i32 786445, metadata !240, metadata !239, metadata !"acc", i32 88, i64 512, i64 8, i64 1056, i32 0, metadata !244} ; [ DW_TAG_member ] [acc] [line 88, size 512, align 8, offset 1056] [from ]
!249 = metadata !{i32 786445, metadata !240, metadata !239, metadata !"desc", i32 89, i64 1024, i64 8, i64 1568, i32 0, metadata !250} ; [ DW_TAG_member ] [desc] [line 89, size 1024, align 8, offset 1568] [from ]
!250 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !16, metadata !251, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!251 = metadata !{metadata !252}
!252 = metadata !{i32 786465, i64 0, i64 128}     ; [ DW_TAG_subrange_type ] [0, 127]
!253 = metadata !{i32 786445, metadata !240, metadata !239, metadata !"len", i32 90, i64 32, i64 32, i64 2592, i32 0, metadata !22} ; [ DW_TAG_member ] [len] [line 90, size 32, align 32, offset 2592] [from int]
!254 = metadata !{i32 786445, metadata !240, metadata !239, metadata !"start", i32 91, i64 32, i64 32, i64 2624, i32 0, metadata !22} ; [ DW_TAG_member ] [start] [line 91, size 32, align 32, offset 2624] [from int]
!255 = metadata !{i32 786445, metadata !240, metadata !239, metadata !"stop", i32 92, i64 32, i64 32, i64 2656, i32 0, metadata !22} ; [ DW_TAG_member ] [stop] [line 92, size 32, align 32, offset 2656] [from int]
!256 = metadata !{i32 786445, metadata !240, metadata !239, metadata !"olen", i32 93, i64 32, i64 32, i64 2688, i32 0, metadata !22} ; [ DW_TAG_member ] [olen] [line 93, size 32, align 32, offset 2688] [from int]
!257 = metadata !{i32 786445, metadata !240, metadata !239, metadata !"type", i32 94, i64 32, i64 32, i64 2720, i32 0, metadata !22} ; [ DW_TAG_member ] [type] [line 94, size 32, align 32, offset 2720] [from int]
!258 = metadata !{i32 786445, metadata !240, metadata !239, metadata !"ss", i32 95, i64 64, i64 64, i64 2752, i32 0, metadata !15} ; [ DW_TAG_member ] [ss] [line 95, size 64, align 64, offset 2752] [from ]
!259 = metadata !{i32 786445, metadata !240, metadata !239, metadata !"sa", i32 96, i64 64, i64 64, i64 2816, i32 0, metadata !15} ; [ DW_TAG_member ] [sa] [line 96, size 64, align 64, offset 2816] [from ]
!260 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"name", i32 75, i64 64, i64 64, i64 384, i32 0, metadata !15} ; [ DW_TAG_member ] [name] [line 75, size 64, align 64, offset 384] [from ]
!261 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"desc", i32 76, i64 64, i64 64, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [desc] [line 76, size 64, align 64, offset 448] [from ]
!262 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"acc", i32 77, i64 64, i64 64, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [acc] [line 77, size 64, align 64, offset 512] [from ]
!263 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"au", i32 78, i64 64, i64 64, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [au] [line 78, size 64, align 64, offset 576] [from ]
!264 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"tc1", i32 79, i64 32, i64 32, i64 640, i32 0, metadata !20} ; [ DW_TAG_member ] [tc1] [line 79, size 32, align 32, offset 640] [from float]
!265 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"tc2", i32 79, i64 32, i64 32, i64 672, i32 0, metadata !20} ; [ DW_TAG_member ] [tc2] [line 79, size 32, align 32, offset 672] [from float]
!266 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"nc1", i32 80, i64 32, i64 32, i64 704, i32 0, metadata !20} ; [ DW_TAG_member ] [nc1] [line 80, size 32, align 32, offset 704] [from float]
!267 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"nc2", i32 80, i64 32, i64 32, i64 736, i32 0, metadata !20} ; [ DW_TAG_member ] [nc2] [line 80, size 32, align 32, offset 736] [from float]
!268 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"ga1", i32 81, i64 32, i64 32, i64 768, i32 0, metadata !20} ; [ DW_TAG_member ] [ga1] [line 81, size 32, align 32, offset 768] [from float]
!269 = metadata !{i32 786445, metadata !11, metadata !229, metadata !"ga2", i32 81, i64 32, i64 32, i64 800, i32 0, metadata !20} ; [ DW_TAG_member ] [ga2] [line 81, size 32, align 32, offset 800] [from float]
!270 = metadata !{i32 786688, metadata !4, metadata !"ainfo", metadata !5, i32 109, metadata !271, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ainfo] [line 109]
!271 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !228} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from AINFO]
!272 = metadata !{i32 786688, metadata !273, metadata !"apos", metadata !5, i32 461, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 461]
!273 = metadata !{i32 786443, metadata !1, metadata !274, i32 460, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!274 = metadata !{i32 786443, metadata !1, metadata !4, i32 459, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!275 = metadata !{i32 786688, metadata !273, metadata !"rpos", metadata !5, i32 461, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rpos] [line 461]
!276 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"WriteSELEX", metadata !"WriteSELEX", metadata !"", i32 530, metadata !277, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.msa_struct*)* @WriteSELEX, null, null, metadata !279, i32 531} ; [ DW_TAG_subprogram ] [line 530] [def] [scope 531] [WriteSELEX]
!277 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !278, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!278 = metadata !{null, metadata !92, metadata !8}
!279 = metadata !{metadata !280, metadata !281}
!280 = metadata !{i32 786689, metadata !276, metadata !"fp", metadata !5, i32 16777746, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 530]
!281 = metadata !{i32 786689, metadata !276, metadata !"msa", metadata !5, i32 33554962, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 530]
!282 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"WriteSELEXOneBlock", metadata !"WriteSELEXOneBlock", metadata !"", i32 547, metadata !277, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.msa_struct*)* @WriteSELEXOneBlock, null, null, metadata !283, i32 548} ; [ DW_TAG_subprogram ] [line 547] [def] [scope 548] [WriteSELEXOneBlock]
!283 = metadata !{metadata !284, metadata !285}
!284 = metadata !{i32 786689, metadata !282, metadata !"fp", metadata !5, i32 16777763, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 547]
!285 = metadata !{i32 786689, metadata !282, metadata !"msa", metadata !5, i32 33554979, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 547]
!286 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DealignAseqs", metadata !"DealignAseqs", metadata !"", i32 729, metadata !287, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, i32, i8***)* @DealignAseqs, null, null, metadata !289, i32 730} ; [ DW_TAG_subprogram ] [line 729] [def] [scope 730] [DealignAseqs]
!287 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !288, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!288 = metadata !{metadata !22, metadata !14, metadata !22, metadata !52}
!289 = metadata !{metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297}
!290 = metadata !{i32 786689, metadata !286, metadata !"aseqs", metadata !5, i32 16777945, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseqs] [line 729]
!291 = metadata !{i32 786689, metadata !286, metadata !"num", metadata !5, i32 33555161, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num] [line 729]
!292 = metadata !{i32 786689, metadata !286, metadata !"ret_rseqs", metadata !5, i32 50332377, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_rseqs] [line 729]
!293 = metadata !{i32 786688, metadata !286, metadata !"rseqs", metadata !5, i32 731, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rseqs] [line 731]
!294 = metadata !{i32 786688, metadata !286, metadata !"idx", metadata !5, i32 732, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 732]
!295 = metadata !{i32 786688, metadata !286, metadata !"depos", metadata !5, i32 733, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [depos] [line 733]
!296 = metadata !{i32 786688, metadata !286, metadata !"apos", metadata !5, i32 734, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 734]
!297 = metadata !{i32 786688, metadata !286, metadata !"seqlen", metadata !5, i32 735, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seqlen] [line 735]
!298 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IsSELEXFormat", metadata !"IsSELEXFormat", metadata !"", i32 775, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @IsSELEXFormat, null, null, metadata !301, i32 776} ; [ DW_TAG_subprogram ] [line 775] [def] [scope 776] [IsSELEXFormat]
!299 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !300, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!300 = metadata !{metadata !22, metadata !15}
!301 = metadata !{metadata !302, metadata !303, metadata !304, metadata !305, metadata !306}
!302 = metadata !{i32 786689, metadata !298, metadata !"filename", metadata !5, i32 16777991, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 775]
!303 = metadata !{i32 786688, metadata !298, metadata !"fp", metadata !5, i32 777, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 777]
!304 = metadata !{i32 786688, metadata !298, metadata !"buffer", metadata !5, i32 778, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 778]
!305 = metadata !{i32 786688, metadata !298, metadata !"sptr", metadata !5, i32 779, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sptr] [line 779]
!306 = metadata !{i32 786688, metadata !298, metadata !"linenum", metadata !5, i32 780, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linenum] [line 780]
!307 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"copy_alignment_line", metadata !"copy_alignment_line", metadata !"", i32 678, metadata !308, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32, i8*, i32, i32)* @copy_alignment_line, null, null, metadata !310, i32 680} ; [ DW_TAG_subprogram ] [line 678] [local] [def] [scope 680] [copy_alignment_line]
!308 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !309, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!309 = metadata !{metadata !22, metadata !15, metadata !22, metadata !22, metadata !15, metadata !22, metadata !22, metadata !16}
!310 = metadata !{metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320}
!311 = metadata !{i32 786689, metadata !307, metadata !"aseq", metadata !5, i32 16777894, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 678]
!312 = metadata !{i32 786689, metadata !307, metadata !"apos", metadata !5, i32 33555110, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [apos] [line 678]
!313 = metadata !{i32 786689, metadata !307, metadata !"name_rcol", metadata !5, i32 50332326, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name_rcol] [line 678]
!314 = metadata !{i32 786689, metadata !307, metadata !"buffer", metadata !5, i32 67109543, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer] [line 679]
!315 = metadata !{i32 786689, metadata !307, metadata !"lcol", metadata !5, i32 83886759, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lcol] [line 679]
!316 = metadata !{i32 786689, metadata !307, metadata !"rcol", metadata !5, i32 100663975, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rcol] [line 679]
!317 = metadata !{i32 786689, metadata !307, metadata !"gapsym", metadata !5, i32 117441191, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gapsym] [line 679]
!318 = metadata !{i32 786688, metadata !307, metadata !"s1", metadata !5, i32 681, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1] [line 681]
!319 = metadata !{i32 786688, metadata !307, metadata !"s2", metadata !5, i32 681, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 681]
!320 = metadata !{i32 786688, metadata !307, metadata !"i", metadata !5, i32 682, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 682]
!321 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"actually_write_selex", metadata !"actually_write_selex", metadata !"", i32 568, metadata !322, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.msa_struct*, i32)* @actually_write_selex, null, null, metadata !324, i32 569} ; [ DW_TAG_subprogram ] [line 568] [local] [def] [scope 569] [actually_write_selex]
!322 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !323, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!323 = metadata !{null, metadata !92, metadata !8, metadata !22}
!324 = metadata !{metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332}
!325 = metadata !{i32 786689, metadata !321, metadata !"fp", metadata !5, i32 16777784, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 568]
!326 = metadata !{i32 786689, metadata !321, metadata !"msa", metadata !5, i32 33555000, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 568]
!327 = metadata !{i32 786689, metadata !321, metadata !"cpl", metadata !5, i32 50332216, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cpl] [line 568]
!328 = metadata !{i32 786688, metadata !321, metadata !"i", metadata !5, i32 570, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 570]
!329 = metadata !{i32 786688, metadata !321, metadata !"len", metadata !5, i32 571, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 571]
!330 = metadata !{i32 786688, metadata !321, metadata !"namewidth", metadata !5, i32 572, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [namewidth] [line 572]
!331 = metadata !{i32 786688, metadata !321, metadata !"buf", metadata !5, i32 573, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 573]
!332 = metadata !{i32 786688, metadata !321, metadata !"currpos", metadata !5, i32 574, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currpos] [line 574]
!333 = metadata !{metadata !334}
!334 = metadata !{i32 786484, i32 0, null, metadata !"commentsyms", metadata !"commentsyms", metadata !"", metadata !5, i32 53, metadata !335, i32 1, i32 1, [3 x i8]* @commentsyms, null} ; [ DW_TAG_variable ] [commentsyms] [line 53] [local] [def]
!335 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24, i64 8, i32 0, i32 0, metadata !16, metadata !336, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24, align 8, offset 0] [from char]
!336 = metadata !{metadata !337}
!337 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!338 = metadata !{i32 83, i32 0, metadata !4, null}
!339 = metadata !{i32 88, i32 0, metadata !4, null}
!340 = metadata !{i32 89, i32 0, metadata !4, null}
!341 = metadata !{i32 90, i32 0, metadata !4, null}
!342 = metadata !{%struct.block_struc* null}
!343 = metadata !{i32 94, i32 0, metadata !4, null}
!344 = metadata !{i32 107, i32 0, metadata !4, null}
!345 = metadata !{i32 108, i32 0, metadata !4, null}
!346 = metadata !{i32 109, i32 0, metadata !4, null}
!347 = metadata !{i32 116, i32 0, metadata !4, null}
!348 = metadata !{metadata !"any pointer", metadata !349}
!349 = metadata !{metadata !"omnipotent char", metadata !350}
!350 = metadata !{metadata !"Simple C/C++ TBAA"}
!351 = metadata !{i32 117, i32 0, metadata !4, null}
!352 = metadata !{metadata !"int", metadata !349}
!353 = metadata !{i32 118, i32 0, metadata !4, null}
!354 = metadata !{i32 119, i32 0, metadata !4, null}
!355 = metadata !{i32 120, i32 0, metadata !4, null}
!356 = metadata !{i32 128, i32 0, metadata !4, null}
!357 = metadata !{i32 133, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !4, i32 132, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!359 = metadata !{i32 134, i32 0, metadata !360, null}
!360 = metadata !{i32 786443, metadata !1, metadata !358, i32 134, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!361 = metadata !{i32 135, i32 0, metadata !358, null}
!362 = metadata !{i32 136, i32 0, metadata !358, null}
!363 = metadata !{i32 138, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !358, i32 137, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!365 = metadata !{i32 139, i32 0, metadata !364, null}
!366 = metadata !{i32 1}
!367 = metadata !{i32 142, i32 0, metadata !4, null}
!368 = metadata !{i32 143, i32 0, metadata !4, null}
!369 = metadata !{i32 147, i32 0, metadata !4, null}
!370 = metadata !{i32 164, i32 0, metadata !371, null}
!371 = metadata !{i32 786443, metadata !1, metadata !372, i32 162, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!372 = metadata !{i32 786443, metadata !1, metadata !373, i32 159, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!373 = metadata !{i32 786443, metadata !1, metadata !4, i32 148, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!374 = metadata !{i32 183, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !372, i32 180, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!376 = metadata !{i32 190, i32 0, metadata !375, null}
!377 = metadata !{i32 239, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !4, i32 239, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!379 = metadata !{i32 150, i32 0, metadata !373, null}
!380 = metadata !{i32 151, i32 0, metadata !373, null}
!381 = metadata !{i32 153, i32 0, metadata !373, null}
!382 = metadata !{i32 154, i32 0, metadata !373, null}
!383 = metadata !{i32 155, i32 0, metadata !373, null}
!384 = metadata !{i32 157, i32 0, metadata !373, null}
!385 = metadata !{i32 158, i32 0, metadata !373, null}
!386 = metadata !{i32 161, i32 0, metadata !372, null}
!387 = metadata !{i32 163, i32 0, metadata !371, null}
!388 = metadata !{i32 166, i32 0, metadata !371, null}
!389 = metadata !{i32 168, i32 0, metadata !371, null}
!390 = metadata !{i32 169, i32 0, metadata !371, null}
!391 = metadata !{i32 170, i32 0, metadata !371, null}
!392 = metadata !{i32 173, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !372, i32 172, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!394 = metadata !{i32 174, i32 0, metadata !393, null}
!395 = metadata !{i32 176, i32 0, metadata !372, null}
!396 = metadata !{i32 179, i32 0, metadata !372, null}
!397 = metadata !{i32 184, i32 0, metadata !375, null}
!398 = metadata !{i32 186, i32 0, metadata !399, null}
!399 = metadata !{i32 786443, metadata !1, metadata !375, i32 186, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!400 = metadata !{i32 187, i32 0, metadata !399, null}
!401 = metadata !{i32 188, i32 0, metadata !399, null}
!402 = metadata !{i32 191, i32 0, metadata !375, null}
!403 = metadata !{i32 197, i32 0, metadata !404, null}
!404 = metadata !{i32 786443, metadata !1, metadata !372, i32 196, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!405 = metadata !{i32 199, i32 0, metadata !404, null}
!406 = metadata !{i32 201, i32 0, metadata !404, null}
!407 = metadata !{i32 202, i32 0, metadata !404, null}
!408 = metadata !{i32 203, i32 0, metadata !404, null}
!409 = metadata !{i32 204, i32 0, metadata !404, null}
!410 = metadata !{i32 206, i32 0, metadata !404, null}
!411 = metadata !{i32 208, i32 0, metadata !372, null}
!412 = metadata !{i32 213, i32 0, metadata !373, null}
!413 = metadata !{i32 215, i32 0, metadata !373, null}
!414 = metadata !{i32 216, i32 0, metadata !373, null}
!415 = metadata !{i32 217, i32 0, metadata !373, null}
!416 = metadata !{i32 223, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !1, metadata !373, i32 222, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!418 = metadata !{i32 224, i32 0, metadata !417, null}
!419 = metadata !{i32 226, i32 0, metadata !373, null}
!420 = metadata !{i32 227, i32 0, metadata !373, null}
!421 = metadata !{i32 240, i32 0, metadata !378, null}
!422 = metadata !{i32 242, i32 0, metadata !4, null}
!423 = metadata !{i32 247, i32 0, metadata !4, null}
!424 = metadata !{i32 248, i32 0, metadata !4, null}
!425 = metadata !{i32 249, i32 0, metadata !4, null}
!426 = metadata !{i32 250, i32 0, metadata !4, null}
!427 = metadata !{i32 251, i32 0, metadata !4, null}
!428 = metadata !{i32 255, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !1, metadata !4, i32 255, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!430 = metadata !{i32 338, i32 0, metadata !431, null}
!431 = metadata !{i32 786443, metadata !1, metadata !432, i32 334, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!432 = metadata !{i32 786443, metadata !1, metadata !433, i32 283, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!433 = metadata !{i32 786443, metadata !1, metadata !4, i32 282, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!434 = metadata !{i32 257, i32 0, metadata !435, null}
!435 = metadata !{i32 786443, metadata !1, metadata !429, i32 256, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!436 = metadata !{i32 258, i32 0, metadata !435, null}
!437 = metadata !{i32 259, i32 0, metadata !435, null}
!438 = metadata !{i32 260, i32 0, metadata !435, null}
!439 = metadata !{i32 261, i32 0, metadata !435, null}
!440 = metadata !{i32 264, i32 0, metadata !4, null}
!441 = metadata !{i32 265, i32 0, metadata !4, null}
!442 = metadata !{i32 266, i32 0, metadata !4, null}
!443 = metadata !{i32 267, i32 0, metadata !4, null}
!444 = metadata !{i32 281, i32 0, metadata !4, null}
!445 = metadata !{i32 290, i32 0, metadata !432, null}
!446 = metadata !{i32 292, i32 0, metadata !432, null}
!447 = metadata !{i32 294, i32 0, metadata !432, null}
!448 = metadata !{i32 296, i32 0, metadata !432, null}
!449 = metadata !{i32 301, i32 0, metadata !450, null}
!450 = metadata !{i32 786443, metadata !1, metadata !432, i32 298, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!451 = metadata !{i32 305, i32 0, metadata !450, null}
!452 = metadata !{i32 307, i32 0, metadata !450, null}
!453 = metadata !{i32 313, i32 0, metadata !454, null}
!454 = metadata !{i32 786443, metadata !1, metadata !432, i32 310, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!455 = metadata !{i32 317, i32 0, metadata !454, null}
!456 = metadata !{i32 325, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !432, i32 322, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!458 = metadata !{i32 329, i32 0, metadata !457, null}
!459 = metadata !{i32 282, i32 0, metadata !433, null}
!460 = metadata !{i32 284, i32 0, metadata !432, null}
!461 = metadata !{i32 285, i32 0, metadata !432, null}
!462 = metadata !{i32 286, i32 0, metadata !432, null}
!463 = metadata !{i32 287, i32 0, metadata !432, null}
!464 = metadata !{i32 289, i32 0, metadata !432, null}
!465 = metadata !{i32 291, i32 0, metadata !432, null}
!466 = metadata !{i32 293, i32 0, metadata !432, null}
!467 = metadata !{i32 295, i32 0, metadata !432, null}
!468 = metadata !{i32 297, i32 0, metadata !432, null}
!469 = metadata !{i32 299, i32 0, metadata !450, null}
!470 = metadata !{i32 300, i32 0, metadata !450, null}
!471 = metadata !{metadata !"float", metadata !349}
!472 = metadata !{i32 303, i32 0, metadata !450, null}
!473 = metadata !{i32 304, i32 0, metadata !450, null}
!474 = metadata !{i32 308, i32 0, metadata !450, null}
!475 = metadata !{i32 309, i32 0, metadata !432, null}
!476 = metadata !{i32 311, i32 0, metadata !454, null}
!477 = metadata !{i32 312, i32 0, metadata !454, null}
!478 = metadata !{i32 315, i32 0, metadata !454, null}
!479 = metadata !{i32 316, i32 0, metadata !454, null}
!480 = metadata !{i32 319, i32 0, metadata !454, null}
!481 = metadata !{i32 320, i32 0, metadata !454, null}
!482 = metadata !{i32 321, i32 0, metadata !432, null}
!483 = metadata !{i32 323, i32 0, metadata !457, null}
!484 = metadata !{i32 324, i32 0, metadata !457, null}
!485 = metadata !{i32 327, i32 0, metadata !457, null}
!486 = metadata !{i32 328, i32 0, metadata !457, null}
!487 = metadata !{i32 331, i32 0, metadata !457, null}
!488 = metadata !{i32 332, i32 0, metadata !457, null}
!489 = metadata !{i32 333, i32 0, metadata !432, null}
!490 = metadata !{i32 336, i32 0, metadata !431, null}
!491 = metadata !{i32 337, i32 0, metadata !431, null}
!492 = metadata !{i32 341, i32 0, metadata !431, null}
!493 = metadata !{i32 342, i32 0, metadata !431, null}
!494 = metadata !{i32 343, i32 0, metadata !431, null}
!495 = metadata !{i32 344, i32 0, metadata !431, null}
!496 = metadata !{i32 345, i32 0, metadata !431, null}
!497 = metadata !{i32 348, i32 0, metadata !431, null}
!498 = metadata !{i32 349, i32 0, metadata !431, null}
!499 = metadata !{i32 350, i32 0, metadata !431, null}
!500 = metadata !{i32 353, i32 0, metadata !431, null}
!501 = metadata !{i32 354, i32 0, metadata !431, null}
!502 = metadata !{i32 355, i32 0, metadata !431, null}
!503 = metadata !{i32 358, i32 0, metadata !431, null}
!504 = metadata !{i32 359, i32 0, metadata !431, null}
!505 = metadata !{i32 360, i32 0, metadata !431, null}
!506 = metadata !{i32 362, i32 0, metadata !431, null}
!507 = metadata !{i32 363, i32 0, metadata !431, null}
!508 = metadata !{i32 364, i32 0, metadata !431, null}
!509 = metadata !{i32 366, i32 0, metadata !431, null}
!510 = metadata !{i32 367, i32 0, metadata !431, null}
!511 = metadata !{i32 368, i32 0, metadata !431, null}
!512 = metadata !{i32 371, i32 0, metadata !431, null}
!513 = metadata !{i32 372, i32 0, metadata !431, null}
!514 = metadata !{i32 374, i32 0, metadata !431, null}
!515 = metadata !{i32 375, i32 0, metadata !431, null}
!516 = metadata !{i32 376, i32 0, metadata !432, null}
!517 = metadata !{i32 377, i32 0, metadata !432, null}
!518 = metadata !{i32 378, i32 0, metadata !432, null}
!519 = metadata !{i32 386, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !1, metadata !521, i32 384, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!521 = metadata !{i32 786443, metadata !1, metadata !4, i32 383, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!522 = metadata !{i32 383, i32 0, metadata !521, null}
!523 = metadata !{i32 392, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !1, metadata !525, i32 391, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!525 = metadata !{i32 786443, metadata !1, metadata !520, i32 388, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!526 = metadata !{i32 400, i32 0, metadata !527, null}
!527 = metadata !{i32 786443, metadata !1, metadata !525, i32 399, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!528 = metadata !{i32 387, i32 0, metadata !520, null}
!529 = metadata !{i32 442, i32 0, metadata !520, null}
!530 = metadata !{i32 459, i32 0, metadata !274, null}
!531 = metadata !{i32 476, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !1, metadata !533, i32 476, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!533 = metadata !{i32 786443, metadata !1, metadata !273, i32 475, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!534 = metadata !{i32 390, i32 0, metadata !525, null}
!535 = metadata !{i32 394, i32 0, metadata !524, null}
!536 = metadata !{i32 398, i32 0, metadata !525, null}
!537 = metadata !{i32 402, i32 0, metadata !527, null}
!538 = metadata !{i32 405, i32 0, metadata !525, null}
!539 = metadata !{i32 407, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !525, i32 406, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!541 = metadata !{i32 410, i32 0, metadata !540, null}
!542 = metadata !{i32 414, i32 0, metadata !525, null}
!543 = metadata !{i32 416, i32 0, metadata !544, null}
!544 = metadata !{i32 786443, metadata !1, metadata !525, i32 415, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!545 = metadata !{i32 419, i32 0, metadata !544, null}
!546 = metadata !{i32 422, i32 0, metadata !525, null}
!547 = metadata !{i32 424, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !525, i32 423, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!549 = metadata !{i32 426, i32 0, metadata !548, null}
!550 = metadata !{i32 427, i32 0, metadata !548, null}
!551 = metadata !{i32 428, i32 0, metadata !548, null}
!552 = metadata !{i32 433, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !554, i32 432, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!554 = metadata !{i32 786443, metadata !1, metadata !525, i32 431, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!555 = metadata !{i8* null}
!556 = metadata !{i32 434, i32 0, metadata !553, null}
!557 = metadata !{i32 435, i32 0, metadata !553, null}
!558 = metadata !{i32 436, i32 0, metadata !553, null}
!559 = metadata !{i32 437, i32 0, metadata !553, null}
!560 = metadata !{i32 438, i32 0, metadata !553, null}
!561 = metadata !{i32 447, i32 0, metadata !562, null}
!562 = metadata !{i32 786443, metadata !1, metadata !563, i32 446, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!563 = metadata !{i32 786443, metadata !1, metadata !520, i32 445, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!564 = metadata !{i32 448, i32 0, metadata !562, null}
!565 = metadata !{i32 449, i32 0, metadata !562, null}
!566 = metadata !{i32 450, i32 0, metadata !562, null}
!567 = metadata !{i32 451, i32 0, metadata !562, null}
!568 = metadata !{i32 463, i32 0, metadata !273, null}
!569 = metadata !{i32 465, i32 0, metadata !570, null}
!570 = metadata !{i32 786443, metadata !1, metadata !571, i32 465, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!571 = metadata !{i32 786443, metadata !1, metadata !273, i32 464, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!572 = metadata !{i32 466, i32 0, metadata !570, null}
!573 = metadata !{i32 468, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !1, metadata !570, i32 467, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!575 = metadata !{i32 469, i32 0, metadata !574, null}
!576 = metadata !{i32 470, i32 0, metadata !574, null}
!577 = metadata !{i32 471, i32 0, metadata !571, null}
!578 = metadata !{i32 474, i32 0, metadata !273, null}
!579 = metadata !{i32 472, i32 0, metadata !571, null}
!580 = metadata !{i32 477, i32 0, metadata !532, null}
!581 = metadata !{i32 479, i32 0, metadata !582, null}
!582 = metadata !{i32 786443, metadata !1, metadata !532, i32 478, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!583 = metadata !{i32 480, i32 0, metadata !582, null}
!584 = metadata !{i32 481, i32 0, metadata !582, null}
!585 = metadata !{i32 482, i32 0, metadata !533, null}
!586 = metadata !{i32 483, i32 0, metadata !533, null}
!587 = metadata !{i32 487, i32 0, metadata !4, null}
!588 = metadata !{i32 488, i32 0, metadata !4, null}
!589 = metadata !{i32 489, i32 0, metadata !590, null}
!590 = metadata !{i32 786443, metadata !1, metadata !4, i32 489, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!591 = metadata !{i32 490, i32 0, metadata !590, null}
!592 = metadata !{i32 493, i32 0, metadata !593, null}
!593 = metadata !{i32 786443, metadata !1, metadata !4, i32 493, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!594 = metadata !{i32 495, i32 0, metadata !595, null}
!595 = metadata !{i32 786443, metadata !1, metadata !593, i32 494, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!596 = metadata !{i32 496, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !1, metadata !595, i32 496, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!598 = metadata !{i32 497, i32 0, metadata !597, null}
!599 = metadata !{i32 498, i32 0, metadata !595, null}
!600 = metadata !{i32 499, i32 0, metadata !595, null}
!601 = metadata !{i32 506, i32 0, metadata !4, null}
!602 = metadata !{i32 507, i32 0, metadata !4, null}
!603 = metadata !{i32 508, i32 0, metadata !4, null}
!604 = metadata !{i32 512, i32 0, metadata !4, null}
!605 = metadata !{i32 513, i32 0, metadata !4, null}
!606 = metadata !{i32 514, i32 0, metadata !4, null}
!607 = metadata !{i32 515, i32 0, metadata !4, null}
!608 = metadata !{i32 516, i32 0, metadata !4, null}
!609 = metadata !{i8 46}
!610 = metadata !{i32 679, i32 0, metadata !307, null}
!611 = metadata !{i32 684, i32 0, metadata !307, null}
!612 = metadata !{i32 686, i32 0, metadata !613, null}
!613 = metadata !{i32 786443, metadata !1, metadata !307, i32 686, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!614 = metadata !{i32 689, i32 0, metadata !615, null}
!615 = metadata !{i32 786443, metadata !1, metadata !307, i32 689, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!616 = metadata !{i32 687, i32 0, metadata !613, null}
!617 = metadata !{i32 691, i32 0, metadata !618, null}
!618 = metadata !{i32 786443, metadata !1, metadata !615, i32 690, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!619 = metadata !{i32 692, i32 0, metadata !620, null}
!620 = metadata !{i32 786443, metadata !1, metadata !618, i32 691, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!621 = metadata !{i32 693, i32 0, metadata !620, null}
!622 = metadata !{i32 695, i32 0, metadata !618, null}
!623 = metadata !{i32 696, i32 0, metadata !618, null}
!624 = metadata !{i32 698, i32 0, metadata !618, null}
!625 = metadata !{i32 699, i32 0, metadata !618, null}
!626 = metadata !{i32 702, i32 0, metadata !618, null}
!627 = metadata !{i32 705, i32 0, metadata !618, null}
!628 = metadata !{i32 707, i32 0, metadata !618, null}
!629 = metadata !{i32 708, i32 0, metadata !618, null}
!630 = metadata !{i32 710, i32 0, metadata !307, null}
!631 = metadata !{i32 530, i32 0, metadata !276, null}
!632 = metadata !{i32 532, i32 0, metadata !276, null}
!633 = metadata !{i32 533, i32 0, metadata !276, null}
!634 = metadata !{i32 568, i32 0, metadata !321, null}
!635 = metadata !{i32 571, i32 0, metadata !321, null}
!636 = metadata !{i32 576, i32 0, metadata !321, null}
!637 = metadata !{i32 583, i32 0, metadata !321, null}
!638 = metadata !{i32 584, i32 0, metadata !639, null}
!639 = metadata !{i32 786443, metadata !1, metadata !321, i32 584, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!640 = metadata !{i32 585, i32 0, metadata !639, null}
!641 = metadata !{i32 586, i32 0, metadata !639, null}
!642 = metadata !{i32 587, i32 0, metadata !321, null}
!643 = metadata !{i32 6}
!644 = metadata !{i32 591, i32 0, metadata !645, null}
!645 = metadata !{i32 786443, metadata !1, metadata !321, i32 591, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!646 = metadata !{i32 592, i32 0, metadata !645, null}
!647 = metadata !{i32 593, i32 0, metadata !321, null}
!648 = metadata !{i32 597, i32 0, metadata !321, null}
!649 = metadata !{i32 598, i32 0, metadata !321, null}
!650 = metadata !{i32 599, i32 0, metadata !321, null}
!651 = metadata !{i32 600, i32 0, metadata !321, null}
!652 = metadata !{i32 604, i32 0, metadata !321, null}
!653 = metadata !{i32 607, i32 0, metadata !321, null}
!654 = metadata !{i32 605, i32 0, metadata !321, null}
!655 = metadata !{i32 608, i32 0, metadata !321, null}
!656 = metadata !{i32 611, i32 0, metadata !321, null}
!657 = metadata !{i32 609, i32 0, metadata !321, null}
!658 = metadata !{i32 612, i32 0, metadata !321, null}
!659 = metadata !{i32 615, i32 0, metadata !321, null}
!660 = metadata !{i32 613, i32 0, metadata !321, null}
!661 = metadata !{i32 619, i32 0, metadata !662, null}
!662 = metadata !{i32 786443, metadata !1, metadata !321, i32 619, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!663 = metadata !{i32 620, i32 0, metadata !662, null}
!664 = metadata !{i32 627, i32 0, metadata !321, null}
!665 = metadata !{i32 631, i32 0, metadata !666, null}
!666 = metadata !{i32 786443, metadata !1, metadata !321, i32 631, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!667 = metadata !{i32 635, i32 0, metadata !668, null}
!668 = metadata !{i32 786443, metadata !1, metadata !666, i32 632, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!669 = metadata !{i32 640, i32 0, metadata !668, null}
!670 = metadata !{i32 641, i32 0, metadata !671, null}
!671 = metadata !{i32 786443, metadata !1, metadata !668, i32 640, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!672 = metadata !{i32 642, i32 0, metadata !671, null}
!673 = metadata !{i32 647, i32 0, metadata !674, null}
!674 = metadata !{i32 786443, metadata !1, metadata !675, i32 646, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!675 = metadata !{i32 786443, metadata !1, metadata !668, i32 645, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!676 = metadata !{i32 649, i32 0, metadata !674, null}
!677 = metadata !{i32 651, i32 0, metadata !674, null}
!678 = metadata !{i32 656, i32 0, metadata !674, null}
!679 = metadata !{i32 633, i32 0, metadata !668, null}
!680 = metadata !{i32 636, i32 0, metadata !681, null}
!681 = metadata !{i32 786443, metadata !1, metadata !668, i32 635, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!682 = metadata !{i32 637, i32 0, metadata !681, null}
!683 = metadata !{i32 638, i32 0, metadata !681, null}
!684 = metadata !{i32 639, i32 0, metadata !681, null}
!685 = metadata !{i32 643, i32 0, metadata !671, null}
!686 = metadata !{i32 644, i32 0, metadata !671, null}
!687 = metadata !{i32 645, i32 0, metadata !675, null}
!688 = metadata !{i32 648, i32 0, metadata !674, null}
!689 = metadata !{i32 652, i32 0, metadata !690, null}
!690 = metadata !{i32 786443, metadata !1, metadata !674, i32 651, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!691 = metadata !{i32 653, i32 0, metadata !690, null}
!692 = metadata !{i32 654, i32 0, metadata !690, null}
!693 = metadata !{i32 655, i32 0, metadata !690, null}
!694 = metadata !{i32 657, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !674, i32 656, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!696 = metadata !{i32 658, i32 0, metadata !695, null}
!697 = metadata !{i32 659, i32 0, metadata !695, null}
!698 = metadata !{i32 660, i32 0, metadata !695, null}
!699 = metadata !{i32 663, i32 0, metadata !321, null}
!700 = metadata !{i32 664, i32 0, metadata !321, null}
!701 = metadata !{i32 547, i32 0, metadata !282, null}
!702 = metadata !{i32 549, i32 0, metadata !282, null}
!703 = metadata !{i32 550, i32 0, metadata !282, null}
!704 = metadata !{i32 729, i32 0, metadata !286, null}
!705 = metadata !{i32 738, i32 0, metadata !286, null}
!706 = metadata !{i32 740, i32 0, metadata !707, null}
!707 = metadata !{i32 786443, metadata !1, metadata !286, i32 740, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!708 = metadata !{i32 742, i32 0, metadata !709, null}
!709 = metadata !{i32 786443, metadata !1, metadata !707, i32 741, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!710 = metadata !{i32 744, i32 0, metadata !709, null}
!711 = metadata !{i32 747, i32 0, metadata !709, null}
!712 = metadata !{i32 748, i32 0, metadata !713, null}
!713 = metadata !{i32 786443, metadata !1, metadata !709, i32 748, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!714 = metadata !{i32 751, i32 0, metadata !715, null}
!715 = metadata !{i32 786443, metadata !1, metadata !713, i32 750, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!716 = metadata !{i32 752, i32 0, metadata !715, null}
!717 = metadata !{i32 753, i32 0, metadata !715, null}
!718 = metadata !{i32 754, i32 0, metadata !709, null}
!719 = metadata !{i32 756, i32 0, metadata !286, null}
!720 = metadata !{i32 757, i32 0, metadata !286, null}
!721 = metadata !{i32 775, i32 0, metadata !298, null}
!722 = metadata !{i32 778, i32 0, metadata !298, null}
!723 = metadata !{i32 783, i32 0, metadata !298, null}
!724 = metadata !{i32 784, i32 0, metadata !725, null}
!725 = metadata !{i32 786443, metadata !1, metadata !298, i32 784, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!726 = metadata !{i32 788, i32 0, metadata !298, null}
!727 = metadata !{i32 790, i32 0, metadata !728, null}
!728 = metadata !{i32 786443, metadata !1, metadata !298, i32 789, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!729 = metadata !{i32 792, i32 0, metadata !728, null}
!730 = metadata !{i32 793, i32 0, metadata !728, null}
!731 = metadata !{i32 794, i32 0, metadata !728, null}
!732 = metadata !{i32 795, i32 0, metadata !728, null}
!733 = metadata !{i32 796, i32 0, metadata !728, null}
!734 = metadata !{i32 797, i32 0, metadata !728, null}
!735 = metadata !{i32 798, i32 0, metadata !728, null}
!736 = metadata !{i32 799, i32 0, metadata !728, null}
!737 = metadata !{i32 800, i32 0, metadata !728, null}
!738 = metadata !{i32 801, i32 0, metadata !728, null}
!739 = metadata !{i32 802, i32 0, metadata !728, null}
!740 = metadata !{i32 805, i32 0, metadata !728, null}
!741 = metadata !{i32 808, i32 0, metadata !728, null}
!742 = metadata !{i32 787, i32 0, metadata !298, null}
!743 = metadata !{i32 812, i32 0, metadata !728, null}
!744 = metadata !{i32 814, i32 0, metadata !728, null}
!745 = metadata !{i32 814, i32 0, metadata !746, null}
!746 = metadata !{i32 786443, metadata !1, metadata !728, i32 814, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/selex.c]
!747 = metadata !{i32 818, i32 0, metadata !298, null}
!748 = metadata !{i32 819, i32 0, metadata !298, null}
!749 = metadata !{i32 820, i32 0, metadata !298, null}
