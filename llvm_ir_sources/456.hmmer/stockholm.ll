; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c'
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

@.str = private unnamed_addr constant [15 x i8] c"# STOCKHOLM 1.\00", align 1
@.str1 = private unnamed_addr constant [334 x i8] c"File %s doesn't appear to be in Stockholm format.\0AAssuming there isn't some other problem with your file (it is an\0Aalignment file, right?), please either:\0A  a) use the Babelfish format autotranslator option (-B, usually);\0A  b) specify the file's format with the --informat option; or\0A  a) reformat the alignment to Stockholm format.\0A\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"#=GF\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"#=GS\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"#=GC\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"#=GR\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str7 = private unnamed_addr constant [76 x i8] c"Stockholm format parse error: line %d of file %s while reading alignment %s\00", align 1
@.str8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str9 = private unnamed_addr constant [38 x i8] c"Didn't find // at end of alignment %s\00", align 1
@.str10 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"SS\00", align 1
@.str13 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c\00", align 1
@.str14 = private unnamed_addr constant [3 x i8] c"SA\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"SS_cons\00", align 1
@.str16 = private unnamed_addr constant [8 x i8] c"SA_cons\00", align 1
@.str17 = private unnamed_addr constant [3 x i8] c"RF\00", align 1
@.str18 = private unnamed_addr constant [3 x i8] c"WT\00", align 1
@.str19 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str20 = private unnamed_addr constant [3 x i8] c"DE\00", align 1
@.str21 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str22 = private unnamed_addr constant [3 x i8] c"AU\00", align 1
@.str23 = private unnamed_addr constant [3 x i8] c"GA\00", align 1
@.str24 = private unnamed_addr constant [3 x i8] c"NC\00", align 1
@.str25 = private unnamed_addr constant [3 x i8] c"TC\00", align 1
@.str26 = private unnamed_addr constant [17 x i8] c"# STOCKHOLM 1.0\0A\00", align 1
@.str27 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str28 = private unnamed_addr constant [15 x i8] c"#=GF ID    %s\0A\00", align 1
@.str29 = private unnamed_addr constant [15 x i8] c"#=GF AC    %s\0A\00", align 1
@.str30 = private unnamed_addr constant [15 x i8] c"#=GF DE    %s\0A\00", align 1
@.str31 = private unnamed_addr constant [15 x i8] c"#=GF AU    %s\0A\00", align 1
@.str32 = private unnamed_addr constant [22 x i8] c"#=GF GA    %.1f %.1f\0A\00", align 1
@.str33 = private unnamed_addr constant [17 x i8] c"#=GF GA    %.1f\0A\00", align 1
@.str34 = private unnamed_addr constant [22 x i8] c"#=GF NC    %.1f %.1f\0A\00", align 1
@.str35 = private unnamed_addr constant [17 x i8] c"#=GF NC    %.1f\0A\00", align 1
@.str36 = private unnamed_addr constant [22 x i8] c"#=GF TC    %.1f %.1f\0A\00", align 1
@.str37 = private unnamed_addr constant [17 x i8] c"#=GF TC    %.1f\0A\00", align 1
@.str38 = private unnamed_addr constant [14 x i8] c"#=GF %-5s %s\0A\00", align 1
@.str39 = private unnamed_addr constant [24 x i8] c"#=GS %-*.*s WT    %.2f\0A\00", align 1
@.str40 = private unnamed_addr constant [22 x i8] c"#=GS %-*.*s AC    %s\0A\00", align 1
@.str41 = private unnamed_addr constant [21 x i8] c"#=GS %*.*s DE    %s\0A\00", align 1
@.str42 = private unnamed_addr constant [19 x i8] c"#=GS %*.*s %5s %s\0A\00", align 1
@.str43 = private unnamed_addr constant [12 x i8] c"%-*.*s  %s\0A\00", align 1
@.str44 = private unnamed_addr constant [23 x i8] c"#=GR %-*.*s SS     %s\0A\00", align 1
@.str45 = private unnamed_addr constant [23 x i8] c"#=GR %-*.*s SA     %s\0A\00", align 1
@.str46 = private unnamed_addr constant [21 x i8] c"#=GR %-*.*s %5s  %s\0A\00", align 1
@.str47 = private unnamed_addr constant [16 x i8] c"#=GC %-*.*s %s\0A\00", align 1
@.str48 = private unnamed_addr constant [4 x i8] c"//\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.msa_struct* @ReadStockholm(%struct.msafile_struct* %afp) #0 {
entry:
  %s.i203 = alloca i8*, align 8
  %len.i204 = alloca i32, align 4
  %s.i197 = alloca i8*, align 8
  %len.i171 = alloca i32, align 4
  %s.i172 = alloca i8*, align 8
  %s.i156 = alloca i8*, align 8
  %len.i = alloca i32, align 4
  %s.i134 = alloca i8*, align 8
  %s.i = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{%struct.msafile_struct* %afp}, i64 0, metadata !197), !dbg !284
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !285
  %0 = load %struct._IO_FILE** %f, align 8, !dbg !285, !tbaa !286
  %call = call i32 @feof(%struct._IO_FILE* %0) #6, !dbg !285
  %tobool = icmp eq i32 %call, 0, !dbg !285
  br i1 %tobool, label %if.end, label %return, !dbg !285

if.end:                                           ; preds = %entry
  %call1 = call %struct.msa_struct* @MSAAlloc(i32 10, i32 0) #6, !dbg !289
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call1}, i64 0, metadata !198), !dbg !289
  br label %do.body, !dbg !290

do.body:                                          ; preds = %do.cond, %if.end
  %call2 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !291
  call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !199), !dbg !291
  %cmp = icmp eq i8* %call2, null, !dbg !291
  br i1 %cmp, label %if.then3, label %do.cond, !dbg !291

if.then3:                                         ; preds = %do.body
  call void @MSAFree(%struct.msa_struct* %call1) #6, !dbg !293
  br label %return, !dbg !295

do.cond:                                          ; preds = %do.body
  %call5 = call i32 @IsBlankline(i8* %call2) #6, !dbg !296
  %tobool6 = icmp eq i32 %call5, 0, !dbg !296
  br i1 %tobool6, label %do.end, label %do.body, !dbg !296

do.end:                                           ; preds = %do.cond
  %call7 = call i32 @strncmp(i8* %call2, i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i64 14) #7, !dbg !297
  %cmp8 = icmp eq i32 %call7, 0, !dbg !297
  br i1 %cmp8, label %while.cond.preheader, label %if.then9, !dbg !297

if.then9:                                         ; preds = %do.end
  %fname = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !298
  %1 = load i8** %fname, align 8, !dbg !298, !tbaa !286
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([334 x i8]* @.str1, i64 0, i64 0), i8* %1) #6, !dbg !298
  br label %while.cond.preheader, !dbg !298

while.cond.preheader:                             ; preds = %if.then9, %do.end
  %call11264 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !299
  call void @llvm.dbg.value(metadata !{i8* %call11264}, i64 0, metadata !199), !dbg !299
  %cmp12265 = icmp eq i8* %call11264, null, !dbg !299
  br i1 %cmp12265, label %land.lhs.true, label %while.cond13.preheader.lr.ph, !dbg !299

while.cond13.preheader.lr.ph:                     ; preds = %while.cond.preheader
  %2 = bitcast i8** %s.i203 to i8*, !dbg !300
  %3 = bitcast i32* %len.i204 to i8*, !dbg !300
  %lastidx.i210 = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 45, !dbg !303
  %aseq.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 0, !dbg !304
  %sqlen.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 42, !dbg !304
  %linenumber = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 2, !dbg !305
  %fname70 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !305
  %name = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 7, !dbg !305
  %4 = bitcast i8** %s.i to i8*, !dbg !306
  %acc.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 9, !dbg !309
  %desc.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 8, !dbg !310
  %au.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 10, !dbg !311
  %arrayidx.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 18, i64 2, !dbg !312
  %arrayidx49.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 19, i64 2, !dbg !314
  %arrayidx57.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 18, i64 3, !dbg !315
  %arrayidx59.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 19, i64 3, !dbg !317
  %arrayidx74.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 18, i64 4, !dbg !318
  %arrayidx76.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 19, i64 4, !dbg !320
  %arrayidx84.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 18, i64 5, !dbg !321
  %arrayidx86.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 19, i64 5, !dbg !323
  %arrayidx101.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 18, i64 0, !dbg !324
  %arrayidx103.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 19, i64 0, !dbg !326
  %arrayidx111.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 18, i64 1, !dbg !327
  %arrayidx113.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 19, i64 1, !dbg !329
  %5 = bitcast i8** %s.i134 to i8*, !dbg !330
  %wgt.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 2, !dbg !332
  %flags.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 5, !dbg !334
  %6 = bitcast i8** %s.i156 to i8*, !dbg !335
  %7 = bitcast i32* %len.i to i8*, !dbg !335
  %ss_cons.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 11, !dbg !337
  %sa_cons.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 12, !dbg !338
  %rf.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 13, !dbg !339
  %8 = bitcast i32* %len.i171 to i8*, !dbg !340
  %9 = bitcast i8** %s.i172 to i8*, !dbg !340
  %ss.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 16, !dbg !342
  %nseqalloc.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 40, !dbg !344
  %sslen.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 43, !dbg !346
  %sa.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 17, !dbg !347
  %salen.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 44, !dbg !349
  %10 = bitcast i8** %s.i197 to i8*, !dbg !351
  br label %while.cond13, !dbg !299

while.cond13:                                     ; preds = %while.cond.backedge, %while.cond13.preheader.lr.ph, %while.body19
  %s.0 = phi i8* [ %incdec.ptr, %while.body19 ], [ %call11264, %while.cond13.preheader.lr.ph ], [ %call11, %while.cond.backedge ]
  %11 = load i8* %s.0, align 1, !dbg !353, !tbaa !287
  switch i8 %11, label %if.else52 [
    i8 32, label %while.body19
    i8 9, label %while.body19
    i8 35, label %if.then23
  ], !dbg !353

while.body19:                                     ; preds = %while.cond13, %while.cond13
  %incdec.ptr = getelementptr inbounds i8* %s.0, i64 1, !dbg !353
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !199), !dbg !353
  br label %while.cond13, !dbg !353

if.then23:                                        ; preds = %while.cond13
  %call24 = call i32 @strncmp(i8* %s.0, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i64 4) #7, !dbg !307
  %cmp25 = icmp eq i32 %call24, 0, !dbg !307
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !307

if.then27:                                        ; preds = %if.then23
  call void @llvm.lifetime.start(i64 8, i8* %4) #5, !dbg !306
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call1}, i64 0, metadata !354) #5, !dbg !306
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !355) #5, !dbg !306
  call void @llvm.dbg.declare(metadata !{i8** %s.i}, metadata !266) #5, !dbg !356
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !357) #5, !dbg !358
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !266), !dbg !358
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !266), !dbg !358
  store i8* %s.0, i8** %s.i, align 8, !dbg !358, !tbaa !286
  %call.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !359
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !360) #5, !dbg !359
  %cmp.i = icmp eq i8* %call.i, null, !dbg !359
  br i1 %cmp.i, label %if.then69, label %if.end.i, !dbg !359

if.end.i:                                         ; preds = %if.then27
  %call1.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !361
  call void @llvm.dbg.value(metadata !{i8* %call1.i}, i64 0, metadata !362) #5, !dbg !361
  %cmp2.i = icmp eq i8* %call1.i, null, !dbg !361
  br i1 %cmp2.i, label %if.then69, label %if.end4.i, !dbg !361

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i32* null) #6, !dbg !363
  call void @llvm.dbg.value(metadata !{i8* %call5.i}, i64 0, metadata !364) #5, !dbg !363
  %cmp6.i = icmp eq i8* %call5.i, null, !dbg !363
  br i1 %cmp6.i, label %if.then69, label %while.cond.i, !dbg !363

while.cond.i:                                     ; preds = %if.end4.i, %while.body.i
  %text.0.i = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %call5.i, %if.end4.i ]
  %12 = load i8* %text.0.i, align 1, !dbg !365, !tbaa !287
  switch i8 %12, label %while.end.i [
    i8 9, label %while.body.i
    i8 32, label %while.body.i
  ], !dbg !365

while.body.i:                                     ; preds = %while.cond.i, %while.cond.i
  %incdec.ptr.i = getelementptr inbounds i8* %text.0.i, i64 1, !dbg !365
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !364) #5, !dbg !365
  br label %while.cond.i, !dbg !365

while.end.i:                                      ; preds = %while.cond.i
  %call15.i = call i32 @strcmp(i8* %call1.i, i8* getelementptr inbounds ([3 x i8]* @.str21, i64 0, i64 0)) #7, !dbg !366
  %cmp16.i = icmp eq i32 %call15.i, 0, !dbg !366
  br i1 %cmp16.i, label %if.then18.i, label %if.else.i, !dbg !366

if.then18.i:                                      ; preds = %while.end.i
  %call19.i = call i8* @sre_strdup(i8* %text.0.i, i32 -1) #6, !dbg !367
  store i8* %call19.i, i8** %name, align 8, !dbg !367, !tbaa !286
  br label %while.cond.backedge

if.else.i:                                        ; preds = %while.end.i
  %call20.i = call i32 @strcmp(i8* %call1.i, i8* getelementptr inbounds ([3 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !368
  %cmp21.i = icmp eq i32 %call20.i, 0, !dbg !368
  br i1 %cmp21.i, label %if.then23.i, label %if.else25.i, !dbg !368

if.then23.i:                                      ; preds = %if.else.i
  %call24.i = call i8* @sre_strdup(i8* %text.0.i, i32 -1) #6, !dbg !309
  store i8* %call24.i, i8** %acc.i, align 8, !dbg !309, !tbaa !286
  br label %while.cond.backedge

if.else25.i:                                      ; preds = %if.else.i
  %call26.i = call i32 @strcmp(i8* %call1.i, i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !369
  %cmp27.i = icmp eq i32 %call26.i, 0, !dbg !369
  br i1 %cmp27.i, label %if.then29.i, label %if.else31.i, !dbg !369

if.then29.i:                                      ; preds = %if.else25.i
  %call30.i = call i8* @sre_strdup(i8* %text.0.i, i32 -1) #6, !dbg !310
  store i8* %call30.i, i8** %desc.i, align 8, !dbg !310, !tbaa !286
  br label %while.cond.backedge

if.else31.i:                                      ; preds = %if.else25.i
  %call32.i = call i32 @strcmp(i8* %call1.i, i8* getelementptr inbounds ([3 x i8]* @.str22, i64 0, i64 0)) #7, !dbg !370
  %cmp33.i = icmp eq i32 %call32.i, 0, !dbg !370
  br i1 %cmp33.i, label %if.then35.i, label %if.else37.i, !dbg !370

if.then35.i:                                      ; preds = %if.else31.i
  %call36.i = call i8* @sre_strdup(i8* %text.0.i, i32 -1) #6, !dbg !311
  store i8* %call36.i, i8** %au.i, align 8, !dbg !311, !tbaa !286
  br label %while.cond.backedge

if.else37.i:                                      ; preds = %if.else31.i
  %call38.i = call i32 @strcmp(i8* %call1.i, i8* getelementptr inbounds ([3 x i8]* @.str23, i64 0, i64 0)) #7, !dbg !371
  %cmp39.i = icmp eq i32 %call38.i, 0, !dbg !371
  br i1 %cmp39.i, label %if.then41.i, label %if.else61.i, !dbg !371

if.then41.i:                                      ; preds = %if.else37.i
  call void @llvm.dbg.value(metadata !{i8* %text.0.i}, i64 0, metadata !357) #5, !dbg !372
  call void @llvm.dbg.value(metadata !{i8* %text.0.i}, i64 0, metadata !266), !dbg !372
  store i8* %text.0.i, i8** %s.i, align 8, !dbg !372, !tbaa !286
  %call42.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !373
  call void @llvm.dbg.value(metadata !{i8* %call42.i}, i64 0, metadata !364) #5, !dbg !373
  %cmp43.i = icmp eq i8* %call42.i, null, !dbg !373
  br i1 %cmp43.i, label %if.then69, label %if.end46.i, !dbg !373

if.end46.i:                                       ; preds = %if.then41.i
  %call47.i = call double @atof(i8* %call42.i) #7, !dbg !312
  %conv48.i = fptrunc double %call47.i to float, !dbg !312
  store float %conv48.i, float* %arrayidx.i, align 4, !dbg !312, !tbaa !374
  store i32 1, i32* %arrayidx49.i, align 4, !dbg !314, !tbaa !375
  %call50.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !376
  call void @llvm.dbg.value(metadata !{i8* %call50.i}, i64 0, metadata !364) #5, !dbg !376
  %cmp51.i = icmp eq i8* %call50.i, null, !dbg !376
  br i1 %cmp51.i, label %while.cond.backedge, label %if.then53.i, !dbg !376

if.then53.i:                                      ; preds = %if.end46.i
  %call54.i = call double @atof(i8* %call50.i) #7, !dbg !315
  %conv55.i = fptrunc double %call54.i to float, !dbg !315
  store float %conv55.i, float* %arrayidx57.i, align 4, !dbg !315, !tbaa !374
  store i32 1, i32* %arrayidx59.i, align 4, !dbg !317, !tbaa !375
  br label %while.cond.backedge

if.else61.i:                                      ; preds = %if.else37.i
  %call62.i = call i32 @strcmp(i8* %call1.i, i8* getelementptr inbounds ([3 x i8]* @.str24, i64 0, i64 0)) #7, !dbg !377
  %cmp63.i = icmp eq i32 %call62.i, 0, !dbg !377
  br i1 %cmp63.i, label %if.then65.i, label %if.else88.i, !dbg !377

if.then65.i:                                      ; preds = %if.else61.i
  call void @llvm.dbg.value(metadata !{i8* %text.0.i}, i64 0, metadata !357) #5, !dbg !378
  call void @llvm.dbg.value(metadata !{i8* %text.0.i}, i64 0, metadata !266), !dbg !378
  store i8* %text.0.i, i8** %s.i, align 8, !dbg !378, !tbaa !286
  %call66.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !379
  call void @llvm.dbg.value(metadata !{i8* %call66.i}, i64 0, metadata !364) #5, !dbg !379
  %cmp67.i = icmp eq i8* %call66.i, null, !dbg !379
  br i1 %cmp67.i, label %if.then69, label %if.end70.i, !dbg !379

if.end70.i:                                       ; preds = %if.then65.i
  %call71.i = call double @atof(i8* %call66.i) #7, !dbg !318
  %conv72.i = fptrunc double %call71.i to float, !dbg !318
  store float %conv72.i, float* %arrayidx74.i, align 4, !dbg !318, !tbaa !374
  store i32 1, i32* %arrayidx76.i, align 4, !dbg !320, !tbaa !375
  %call77.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !380
  call void @llvm.dbg.value(metadata !{i8* %call77.i}, i64 0, metadata !364) #5, !dbg !380
  %cmp78.i = icmp eq i8* %call77.i, null, !dbg !380
  br i1 %cmp78.i, label %while.cond.backedge, label %if.then80.i, !dbg !380

if.then80.i:                                      ; preds = %if.end70.i
  %call81.i = call double @atof(i8* %call77.i) #7, !dbg !321
  %conv82.i = fptrunc double %call81.i to float, !dbg !321
  store float %conv82.i, float* %arrayidx84.i, align 4, !dbg !321, !tbaa !374
  store i32 1, i32* %arrayidx86.i, align 4, !dbg !323, !tbaa !375
  br label %while.cond.backedge

if.else88.i:                                      ; preds = %if.else61.i
  %call89.i = call i32 @strcmp(i8* %call1.i, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0)) #7, !dbg !381
  %cmp90.i = icmp eq i32 %call89.i, 0, !dbg !381
  br i1 %cmp90.i, label %if.then92.i, label %if.else115.i, !dbg !381

if.then92.i:                                      ; preds = %if.else88.i
  call void @llvm.dbg.value(metadata !{i8* %text.0.i}, i64 0, metadata !357) #5, !dbg !382
  call void @llvm.dbg.value(metadata !{i8* %text.0.i}, i64 0, metadata !266), !dbg !382
  store i8* %text.0.i, i8** %s.i, align 8, !dbg !382, !tbaa !286
  %call93.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !383
  call void @llvm.dbg.value(metadata !{i8* %call93.i}, i64 0, metadata !364) #5, !dbg !383
  %cmp94.i = icmp eq i8* %call93.i, null, !dbg !383
  br i1 %cmp94.i, label %if.then69, label %if.end97.i, !dbg !383

if.end97.i:                                       ; preds = %if.then92.i
  %call98.i = call double @atof(i8* %call93.i) #7, !dbg !324
  %conv99.i = fptrunc double %call98.i to float, !dbg !324
  store float %conv99.i, float* %arrayidx101.i, align 4, !dbg !324, !tbaa !374
  store i32 1, i32* %arrayidx103.i, align 4, !dbg !326, !tbaa !375
  %call104.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !384
  call void @llvm.dbg.value(metadata !{i8* %call104.i}, i64 0, metadata !364) #5, !dbg !384
  %cmp105.i = icmp eq i8* %call104.i, null, !dbg !384
  br i1 %cmp105.i, label %while.cond.backedge, label %if.then107.i, !dbg !384

if.then107.i:                                     ; preds = %if.end97.i
  %call108.i = call double @atof(i8* %call104.i) #7, !dbg !327
  %conv109.i = fptrunc double %call108.i to float, !dbg !327
  store float %conv109.i, float* %arrayidx111.i, align 4, !dbg !327, !tbaa !374
  store i32 1, i32* %arrayidx113.i, align 4, !dbg !329, !tbaa !375
  br label %while.cond.backedge

if.else115.i:                                     ; preds = %if.else88.i
  call void @MSAAddGF(%struct.msa_struct* %call1, i8* %call1.i, i8* %text.0.i) #6, !dbg !385
  br label %while.cond.backedge

if.else:                                          ; preds = %if.then23
  %call29 = call i32 @strncmp(i8* %s.0, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i64 4) #7, !dbg !331
  %cmp30 = icmp eq i32 %call29, 0, !dbg !331
  br i1 %cmp30, label %if.then32, label %if.else34, !dbg !331

if.then32:                                        ; preds = %if.else
  call void @llvm.lifetime.start(i64 8, i8* %5) #5, !dbg !330
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call1}, i64 0, metadata !386) #5, !dbg !330
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !387) #5, !dbg !330
  call void @llvm.dbg.declare(metadata !{i8** %s.i134}, metadata !258) #5, !dbg !388
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !389) #5, !dbg !390
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !258), !dbg !390
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !258), !dbg !390
  store i8* %s.0, i8** %s.i134, align 8, !dbg !390, !tbaa !286
  %call.i135 = call i8* @sre_strtok(i8** %s.i134, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !391
  call void @llvm.dbg.value(metadata !{i8* %call.i135}, i64 0, metadata !392) #5, !dbg !391
  %cmp.i136 = icmp eq i8* %call.i135, null, !dbg !391
  br i1 %cmp.i136, label %if.then69, label %if.end.i139, !dbg !391

if.end.i139:                                      ; preds = %if.then32
  %call1.i137 = call i8* @sre_strtok(i8** %s.i134, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !393
  call void @llvm.dbg.value(metadata !{i8* %call1.i137}, i64 0, metadata !394) #5, !dbg !393
  %cmp2.i138 = icmp eq i8* %call1.i137, null, !dbg !393
  br i1 %cmp2.i138, label %if.then69, label %if.end4.i142, !dbg !393

if.end4.i142:                                     ; preds = %if.end.i139
  %call5.i140 = call i8* @sre_strtok(i8** %s.i134, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !395
  call void @llvm.dbg.value(metadata !{i8* %call5.i140}, i64 0, metadata !396) #5, !dbg !395
  %cmp6.i141 = icmp eq i8* %call5.i140, null, !dbg !395
  br i1 %cmp6.i141, label %if.then69, label %if.end8.i, !dbg !395

if.end8.i:                                        ; preds = %if.end4.i142
  %call9.i = call i8* @sre_strtok(i8** %s.i134, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i32* null) #6, !dbg !397
  call void @llvm.dbg.value(metadata !{i8* %call9.i}, i64 0, metadata !398) #5, !dbg !397
  %cmp10.i = icmp eq i8* %call9.i, null, !dbg !397
  br i1 %cmp10.i, label %if.then69, label %while.cond.i144, !dbg !397

while.cond.i144:                                  ; preds = %if.end8.i, %while.body.i146
  %text.0.i143 = phi i8* [ %incdec.ptr.i145, %while.body.i146 ], [ %call9.i, %if.end8.i ]
  %13 = load i8* %text.0.i143, align 1, !dbg !399, !tbaa !287
  switch i8 %13, label %while.end.i148 [
    i8 9, label %while.body.i146
    i8 32, label %while.body.i146
  ], !dbg !399

while.body.i146:                                  ; preds = %while.cond.i144, %while.cond.i144
  %incdec.ptr.i145 = getelementptr inbounds i8* %text.0.i143, i64 1, !dbg !399
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i145}, i64 0, metadata !398) #5, !dbg !399
  br label %while.cond.i144, !dbg !399

while.end.i148:                                   ; preds = %while.cond.i144
  %14 = load i32* %lastidx.i210, align 4, !dbg !400, !tbaa !375
  %add.i = add nsw i32 %14, 1, !dbg !400
  %call19.i147 = call i32 @MSAGetSeqidx(%struct.msa_struct* %call1, i8* %call1.i137, i32 %add.i) #6, !dbg !400
  call void @llvm.dbg.value(metadata !{i32 %call19.i147}, i64 0, metadata !401) #5, !dbg !400
  store i32 %call19.i147, i32* %lastidx.i210, align 4, !dbg !402, !tbaa !375
  %call21.i = call i32 @strcmp(i8* %call5.i140, i8* getelementptr inbounds ([3 x i8]* @.str18, i64 0, i64 0)) #7, !dbg !403
  %cmp22.i = icmp eq i32 %call21.i, 0, !dbg !403
  br i1 %cmp22.i, label %if.then24.i, label %if.else.i150, !dbg !403

if.then24.i:                                      ; preds = %while.end.i148
  %call25.i = call double @atof(i8* %text.0.i143) #7, !dbg !332
  %conv26.i = fptrunc double %call25.i to float, !dbg !332
  %idxprom.i = sext i32 %call19.i147 to i64, !dbg !332
  %15 = load float** %wgt.i, align 8, !dbg !332, !tbaa !286
  %arrayidx.i149 = getelementptr inbounds float* %15, i64 %idxprom.i, !dbg !332
  store float %conv26.i, float* %arrayidx.i149, align 4, !dbg !332, !tbaa !374
  %16 = load i32* %flags.i, align 4, !dbg !334, !tbaa !375
  %or.i = or i32 %16, 1, !dbg !334
  store i32 %or.i, i32* %flags.i, align 4, !dbg !334, !tbaa !375
  br label %while.cond.backedge

if.else.i150:                                     ; preds = %while.end.i148
  %call27.i = call i32 @strcmp(i8* %call5.i140, i8* getelementptr inbounds ([3 x i8]* @.str19, i64 0, i64 0)) #7, !dbg !404
  %cmp28.i = icmp eq i32 %call27.i, 0, !dbg !404
  br i1 %cmp28.i, label %if.then30.i, label %if.else31.i153, !dbg !404

if.then30.i:                                      ; preds = %if.else.i150
  call void @MSASetSeqAccession(%struct.msa_struct* %call1, i32 %call19.i147, i8* %text.0.i143) #6, !dbg !405
  br label %while.cond.backedge

if.else31.i153:                                   ; preds = %if.else.i150
  %call32.i151 = call i32 @strcmp(i8* %call5.i140, i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !406
  %cmp33.i152 = icmp eq i32 %call32.i151, 0, !dbg !406
  br i1 %cmp33.i152, label %if.then35.i154, label %if.else36.i, !dbg !406

if.then35.i154:                                   ; preds = %if.else31.i153
  call void @MSASetSeqDescription(%struct.msa_struct* %call1, i32 %call19.i147, i8* %text.0.i143) #6, !dbg !407
  br label %while.cond.backedge

if.else36.i:                                      ; preds = %if.else31.i153
  call void @MSAAddGS(%struct.msa_struct* %call1, i8* %call5.i140, i32 %call19.i147, i8* %text.0.i143) #6, !dbg !408
  br label %while.cond.backedge

if.else34:                                        ; preds = %if.else
  %call35 = call i32 @strncmp(i8* %s.0, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i64 4) #7, !dbg !336
  %cmp36 = icmp eq i32 %call35, 0, !dbg !336
  br i1 %cmp36, label %if.then38, label %if.else40, !dbg !336

if.then38:                                        ; preds = %if.else34
  call void @llvm.lifetime.start(i64 8, i8* %6) #5, !dbg !335
  call void @llvm.lifetime.start(i64 4, i8* %7) #5, !dbg !335
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call1}, i64 0, metadata !409) #5, !dbg !335
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !410) #5, !dbg !335
  call void @llvm.dbg.declare(metadata !{i8** %s.i156}, metadata !247) #5, !dbg !411
  call void @llvm.dbg.declare(metadata !{i32* %len.i}, metadata !248) #5, !dbg !412
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !413) #5, !dbg !414
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !247), !dbg !414
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !247), !dbg !414
  store i8* %s.0, i8** %s.i156, align 8, !dbg !414, !tbaa !286
  %call.i157 = call i8* @sre_strtok(i8** %s.i156, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !415
  call void @llvm.dbg.value(metadata !{i8* %call.i157}, i64 0, metadata !416) #5, !dbg !415
  %cmp.i158 = icmp eq i8* %call.i157, null, !dbg !415
  br i1 %cmp.i158, label %if.then69, label %if.end.i161, !dbg !415

if.end.i161:                                      ; preds = %if.then38
  %call1.i159 = call i8* @sre_strtok(i8** %s.i156, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !417
  call void @llvm.dbg.value(metadata !{i8* %call1.i159}, i64 0, metadata !418) #5, !dbg !417
  %cmp2.i160 = icmp eq i8* %call1.i159, null, !dbg !417
  br i1 %cmp2.i160, label %if.then69, label %if.end4.i164, !dbg !417

if.end4.i164:                                     ; preds = %if.end.i161
  %call5.i162 = call i8* @sre_strtok(i8** %s.i156, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* %len.i) #6, !dbg !419
  call void @llvm.dbg.value(metadata !{i8* %call5.i162}, i64 0, metadata !420) #5, !dbg !419
  %cmp6.i163 = icmp eq i8* %call5.i162, null, !dbg !419
  br i1 %cmp6.i163, label %if.then69, label %if.end8.i167, !dbg !419

if.end8.i167:                                     ; preds = %if.end4.i164
  %call9.i165 = call i32 @strcmp(i8* %call1.i159, i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !421
  %cmp10.i166 = icmp eq i32 %call9.i165, 0, !dbg !421
  br i1 %cmp10.i166, label %if.then11.i, label %if.else.i168, !dbg !421

if.then11.i:                                      ; preds = %if.end8.i167
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !422) #5, !dbg !337
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !248), !dbg !337
  %17 = load i32* %len.i, align 4, !dbg !337, !tbaa !375
  %call12.i = call i32 @sre_strcat(i8** %ss_cons.i, i32 -1, i8* %call5.i162, i32 %17) #6, !dbg !337
  br label %while.cond.backedge

if.else.i168:                                     ; preds = %if.end8.i167
  %call13.i = call i32 @strcmp(i8* %call1.i159, i8* getelementptr inbounds ([8 x i8]* @.str16, i64 0, i64 0)) #7, !dbg !423
  %cmp14.i = icmp eq i32 %call13.i, 0, !dbg !423
  br i1 %cmp14.i, label %if.then15.i, label %if.else17.i, !dbg !423

if.then15.i:                                      ; preds = %if.else.i168
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !422) #5, !dbg !338
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !248), !dbg !338
  %18 = load i32* %len.i, align 4, !dbg !338, !tbaa !375
  %call16.i = call i32 @sre_strcat(i8** %sa_cons.i, i32 -1, i8* %call5.i162, i32 %18) #6, !dbg !338
  br label %while.cond.backedge

if.else17.i:                                      ; preds = %if.else.i168
  %call18.i = call i32 @strcmp(i8* %call1.i159, i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0)) #7, !dbg !424
  %cmp19.i = icmp eq i32 %call18.i, 0, !dbg !424
  br i1 %cmp19.i, label %if.then20.i, label %if.else22.i, !dbg !424

if.then20.i:                                      ; preds = %if.else17.i
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !422) #5, !dbg !339
  call void @llvm.dbg.value(metadata !{i32* %len.i}, i64 0, metadata !248), !dbg !339
  %19 = load i32* %len.i, align 4, !dbg !339, !tbaa !375
  %call21.i169 = call i32 @sre_strcat(i8** %rf.i, i32 -1, i8* %call5.i162, i32 %19) #6, !dbg !339
  br label %while.cond.backedge

if.else22.i:                                      ; preds = %if.else17.i
  call void @MSAAppendGC(%struct.msa_struct* %call1, i8* %call1.i159, i8* %call5.i162) #6, !dbg !425
  br label %while.cond.backedge

if.else40:                                        ; preds = %if.else34
  %call41 = call i32 @strncmp(i8* %s.0, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i64 4) #7, !dbg !341
  %cmp42 = icmp eq i32 %call41, 0, !dbg !341
  br i1 %cmp42, label %if.then44, label %if.else46, !dbg !341

if.then44:                                        ; preds = %if.else40
  call void @llvm.lifetime.start(i64 4, i8* %8) #5, !dbg !340
  call void @llvm.lifetime.start(i64 8, i8* %9) #5, !dbg !340
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call1}, i64 0, metadata !426) #5, !dbg !340
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !427) #5, !dbg !340
  call void @llvm.dbg.declare(metadata !{i32* %len.i171}, metadata !237) #5, !dbg !428
  call void @llvm.dbg.declare(metadata !{i8** %s.i172}, metadata !239) #5, !dbg !429
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !430) #5, !dbg !431
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !239), !dbg !431
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !239), !dbg !431
  store i8* %s.0, i8** %s.i172, align 8, !dbg !431, !tbaa !286
  %call.i173 = call i8* @sre_strtok(i8** %s.i172, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !432
  call void @llvm.dbg.value(metadata !{i8* %call.i173}, i64 0, metadata !433) #5, !dbg !432
  %cmp.i174 = icmp eq i8* %call.i173, null, !dbg !432
  br i1 %cmp.i174, label %if.then69, label %if.end.i177, !dbg !432

if.end.i177:                                      ; preds = %if.then44
  %call1.i175 = call i8* @sre_strtok(i8** %s.i172, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !434
  call void @llvm.dbg.value(metadata !{i8* %call1.i175}, i64 0, metadata !435) #5, !dbg !434
  %cmp2.i176 = icmp eq i8* %call1.i175, null, !dbg !434
  br i1 %cmp2.i176, label %if.then69, label %if.end4.i180, !dbg !434

if.end4.i180:                                     ; preds = %if.end.i177
  %call5.i178 = call i8* @sre_strtok(i8** %s.i172, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !436
  call void @llvm.dbg.value(metadata !{i8* %call5.i178}, i64 0, metadata !437) #5, !dbg !436
  %cmp6.i179 = icmp eq i8* %call5.i178, null, !dbg !436
  br i1 %cmp6.i179, label %if.then69, label %if.end8.i183, !dbg !436

if.end8.i183:                                     ; preds = %if.end4.i180
  %call9.i181 = call i8* @sre_strtok(i8** %s.i172, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* %len.i171) #6, !dbg !438
  call void @llvm.dbg.value(metadata !{i8* %call9.i181}, i64 0, metadata !439) #5, !dbg !438
  %cmp10.i182 = icmp eq i8* %call9.i181, null, !dbg !438
  br i1 %cmp10.i182, label %if.then69, label %if.end12.i, !dbg !438

if.end12.i:                                       ; preds = %if.end8.i183
  %20 = load i32* %lastidx.i210, align 4, !dbg !440, !tbaa !375
  %call13.i185 = call i32 @MSAGetSeqidx(%struct.msa_struct* %call1, i8* %call1.i175, i32 %20) #6, !dbg !440
  call void @llvm.dbg.value(metadata !{i32 %call13.i185}, i64 0, metadata !441) #5, !dbg !440
  store i32 %call13.i185, i32* %lastidx.i210, align 4, !dbg !442, !tbaa !375
  %call15.i186 = call i32 @strcmp(i8* %call5.i178, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0)) #7, !dbg !443
  %cmp16.i187 = icmp eq i32 %call15.i186, 0, !dbg !443
  br i1 %cmp16.i187, label %if.then17.i, label %if.else.i192, !dbg !443

if.then17.i:                                      ; preds = %if.end12.i
  %21 = load i8*** %ss.i, align 8, !dbg !342, !tbaa !286
  %cmp18.i = icmp eq i8** %21, null, !dbg !342
  br i1 %cmp18.i, label %if.then19.i, label %if.then17.if.end33_crit_edge.i, !dbg !342

if.then17.if.end33_crit_edge.i:                   ; preds = %if.then17.i
  %.pre137.i = load i32** %sslen.i, align 8, !dbg !444, !tbaa !286
  br label %if.end33.i, !dbg !342

if.then19.i:                                      ; preds = %if.then17.i
  %22 = load i32* %nseqalloc.i, align 4, !dbg !344, !tbaa !375
  %conv.i = sext i32 %22 to i64, !dbg !344
  %mul.i = shl nsw i64 %conv.i, 3, !dbg !344
  %call20.i188 = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 561, i64 %mul.i) #6, !dbg !344
  %23 = bitcast i8* %call20.i188 to i8**, !dbg !344
  store i8** %23, i8*** %ss.i, align 8, !dbg !344, !tbaa !286
  %24 = load i32* %nseqalloc.i, align 4, !dbg !346, !tbaa !375
  %conv23.i = sext i32 %24 to i64, !dbg !346
  %mul24.i = shl nsw i64 %conv23.i, 2, !dbg !346
  %call25.i189 = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 562, i64 %mul24.i) #6, !dbg !346
  %25 = bitcast i8* %call25.i189 to i32*, !dbg !346
  store i32* %25, i32** %sslen.i, align 8, !dbg !346, !tbaa !286
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !445) #5, !dbg !446
  %26 = load i32* %nseqalloc.i, align 4, !dbg !446, !tbaa !375
  %cmp27130.i = icmp sgt i32 %26, 0, !dbg !446
  br i1 %cmp27130.i, label %for.body.i, label %if.end33.loopexit.i, !dbg !446

for.body.i:                                       ; preds = %if.then19.i, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %if.then19.i ]
  %27 = load i8*** %ss.i, align 8, !dbg !448, !tbaa !286
  %arrayidx.i190 = getelementptr inbounds i8** %27, i64 %indvars.iv.i, !dbg !448
  store i8* null, i8** %arrayidx.i190, align 8, !dbg !448, !tbaa !286
  %28 = load i32** %sslen.i, align 8, !dbg !450, !tbaa !286
  %arrayidx32.i = getelementptr inbounds i32* %28, i64 %indvars.iv.i, !dbg !450
  store i32 0, i32* %arrayidx32.i, align 4, !dbg !450, !tbaa !375
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !446
  %29 = load i32* %nseqalloc.i, align 4, !dbg !446, !tbaa !375
  %30 = trunc i64 %indvars.iv.next.i to i32, !dbg !446
  %cmp27.i191 = icmp slt i32 %30, %29, !dbg !446
  br i1 %cmp27.i191, label %for.body.i, label %if.end33.loopexit.i, !dbg !446

if.end33.loopexit.i:                              ; preds = %for.body.i, %if.then19.i
  %31 = phi i32* [ %25, %if.then19.i ], [ %28, %for.body.i ]
  %.pre.i = load i8*** %ss.i, align 8, !dbg !444, !tbaa !286
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end33.loopexit.i, %if.then17.if.end33_crit_edge.i
  %32 = phi i32* [ %31, %if.end33.loopexit.i ], [ %.pre137.i, %if.then17.if.end33_crit_edge.i ]
  %33 = phi i8** [ %.pre.i, %if.end33.loopexit.i ], [ %21, %if.then17.if.end33_crit_edge.i ]
  %idxprom34.i = sext i32 %call13.i185 to i64, !dbg !444
  %arrayidx36.i = getelementptr inbounds i8** %33, i64 %idxprom34.i, !dbg !444
  %arrayidx39.i = getelementptr inbounds i32* %32, i64 %idxprom34.i, !dbg !444
  %34 = load i32* %arrayidx39.i, align 4, !dbg !444, !tbaa !375
  call void @llvm.dbg.value(metadata !{i32* %len.i171}, i64 0, metadata !451) #5, !dbg !444
  call void @llvm.dbg.value(metadata !{i32* %len.i171}, i64 0, metadata !237), !dbg !444
  %35 = load i32* %len.i171, align 4, !dbg !444, !tbaa !375
  %call40.i = call i32 @sre_strcat(i8** %arrayidx36.i, i32 %34, i8* %call9.i181, i32 %35) #6, !dbg !444
  %36 = load i32** %sslen.i, align 8, !dbg !444, !tbaa !286
  %arrayidx43.i = getelementptr inbounds i32* %36, i64 %idxprom34.i, !dbg !444
  store i32 %call40.i, i32* %arrayidx43.i, align 4, !dbg !444, !tbaa !375
  br label %while.cond.backedge

if.else.i192:                                     ; preds = %if.end12.i
  %call44.i = call i32 @strcmp(i8* %call5.i178, i8* getelementptr inbounds ([3 x i8]* @.str14, i64 0, i64 0)) #7, !dbg !452
  %cmp45.i = icmp eq i32 %call44.i, 0, !dbg !452
  br i1 %cmp45.i, label %if.then47.i, label %if.else85.i, !dbg !452

if.then47.i:                                      ; preds = %if.else.i192
  %37 = load i8*** %sa.i, align 8, !dbg !347, !tbaa !286
  %cmp48.i = icmp eq i8** %37, null, !dbg !347
  br i1 %cmp48.i, label %if.then50.i, label %if.then47.if.end74_crit_edge.i, !dbg !347

if.then47.if.end74_crit_edge.i:                   ; preds = %if.then47.i
  %.pre138.i = load i32** %salen.i, align 8, !dbg !453, !tbaa !286
  br label %if.end74.i, !dbg !347

if.then50.i:                                      ; preds = %if.then47.i
  %38 = load i32* %nseqalloc.i, align 4, !dbg !454, !tbaa !375
  %conv52.i = sext i32 %38 to i64, !dbg !454
  %mul53.i = shl nsw i64 %conv52.i, 3, !dbg !454
  %call54.i193 = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 575, i64 %mul53.i) #6, !dbg !454
  %39 = bitcast i8* %call54.i193 to i8**, !dbg !454
  store i8** %39, i8*** %sa.i, align 8, !dbg !454, !tbaa !286
  %40 = load i32* %nseqalloc.i, align 4, !dbg !349, !tbaa !375
  %conv57.i = sext i32 %40 to i64, !dbg !349
  %mul58.i = shl nsw i64 %conv57.i, 2, !dbg !349
  %call59.i = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 576, i64 %mul58.i) #6, !dbg !349
  %41 = bitcast i8* %call59.i to i32*, !dbg !349
  store i32* %41, i32** %salen.i, align 8, !dbg !349, !tbaa !286
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !445) #5, !dbg !455
  %42 = load i32* %nseqalloc.i, align 4, !dbg !455, !tbaa !375
  %cmp62132.i = icmp sgt i32 %42, 0, !dbg !455
  br i1 %cmp62132.i, label %for.body64.i, label %if.end74.loopexit.i, !dbg !455

for.body64.i:                                     ; preds = %if.then50.i, %for.body64.i
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %for.body64.i ], [ 0, %if.then50.i ]
  %43 = load i8*** %sa.i, align 8, !dbg !457, !tbaa !286
  %arrayidx67.i = getelementptr inbounds i8** %43, i64 %indvars.iv134.i, !dbg !457
  store i8* null, i8** %arrayidx67.i, align 8, !dbg !457, !tbaa !286
  %44 = load i32** %salen.i, align 8, !dbg !459, !tbaa !286
  %arrayidx70.i = getelementptr inbounds i32* %44, i64 %indvars.iv134.i, !dbg !459
  store i32 0, i32* %arrayidx70.i, align 4, !dbg !459, !tbaa !375
  %indvars.iv.next135.i = add i64 %indvars.iv134.i, 1, !dbg !455
  %45 = load i32* %nseqalloc.i, align 4, !dbg !455, !tbaa !375
  %46 = trunc i64 %indvars.iv.next135.i to i32, !dbg !455
  %cmp62.i = icmp slt i32 %46, %45, !dbg !455
  br i1 %cmp62.i, label %for.body64.i, label %if.end74.loopexit.i, !dbg !455

if.end74.loopexit.i:                              ; preds = %for.body64.i, %if.then50.i
  %47 = phi i32* [ %41, %if.then50.i ], [ %44, %for.body64.i ]
  %.pre136.i = load i8*** %sa.i, align 8, !dbg !453, !tbaa !286
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.end74.loopexit.i, %if.then47.if.end74_crit_edge.i
  %48 = phi i32* [ %47, %if.end74.loopexit.i ], [ %.pre138.i, %if.then47.if.end74_crit_edge.i ]
  %49 = phi i8** [ %.pre136.i, %if.end74.loopexit.i ], [ %37, %if.then47.if.end74_crit_edge.i ]
  %idxprom75.i = sext i32 %call13.i185 to i64, !dbg !453
  %arrayidx77.i = getelementptr inbounds i8** %49, i64 %idxprom75.i, !dbg !453
  %arrayidx80.i = getelementptr inbounds i32* %48, i64 %idxprom75.i, !dbg !453
  %50 = load i32* %arrayidx80.i, align 4, !dbg !453, !tbaa !375
  call void @llvm.dbg.value(metadata !{i32* %len.i171}, i64 0, metadata !451) #5, !dbg !453
  call void @llvm.dbg.value(metadata !{i32* %len.i171}, i64 0, metadata !237), !dbg !453
  %51 = load i32* %len.i171, align 4, !dbg !453, !tbaa !375
  %call81.i194 = call i32 @sre_strcat(i8** %arrayidx77.i, i32 %50, i8* %call9.i181, i32 %51) #6, !dbg !453
  %52 = load i32** %salen.i, align 8, !dbg !453, !tbaa !286
  %arrayidx84.i195 = getelementptr inbounds i32* %52, i64 %idxprom75.i, !dbg !453
  store i32 %call81.i194, i32* %arrayidx84.i195, align 4, !dbg !453, !tbaa !375
  br label %while.cond.backedge

if.else85.i:                                      ; preds = %if.else.i192
  call void @MSAAppendGR(%struct.msa_struct* %call1, i8* %call5.i178, i32 %call13.i185, i8* %call9.i181) #6, !dbg !460
  br label %while.cond.backedge

if.else46:                                        ; preds = %if.else40
  call void @llvm.lifetime.start(i64 8, i8* %10) #5, !dbg !351
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call1}, i64 0, metadata !461) #5, !dbg !351
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !462) #5, !dbg !351
  call void @llvm.dbg.declare(metadata !{i8** %s.i197}, metadata !226) #5, !dbg !463
  %add.ptr.i = getelementptr inbounds i8* %s.0, i64 1, !dbg !464
  call void @llvm.dbg.value(metadata !{i8* %add.ptr.i}, i64 0, metadata !465) #5, !dbg !464
  call void @llvm.dbg.value(metadata !{i8* %add.ptr.i}, i64 0, metadata !226), !dbg !464
  store i8* %add.ptr.i, i8** %s.i197, align 8, !dbg !464, !tbaa !286
  %53 = load i8* %add.ptr.i, align 1, !dbg !466, !tbaa !287
  %cmp.i198 = icmp eq i8 %53, 10, !dbg !466
  br i1 %cmp.i198, label %if.then.i, label %if.else.i201, !dbg !466

if.then.i:                                        ; preds = %if.else46
  store i8 0, i8* %add.ptr.i, align 1, !dbg !467, !tbaa !287
  call void @llvm.dbg.value(metadata !{i8** %s.i197}, i64 0, metadata !465) #5, !dbg !467
  call void @llvm.dbg.value(metadata !{i8* %add.ptr.i}, i64 0, metadata !469) #5, !dbg !467
  br label %if.end5.i, !dbg !467

if.else.i201:                                     ; preds = %if.else46
  %call.i199 = call i8* @sre_strtok(i8** %s.i197, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i32* null) #6, !dbg !470
  call void @llvm.dbg.value(metadata !{i8* %call.i199}, i64 0, metadata !469) #5, !dbg !470
  %cmp2.i200 = icmp eq i8* %call.i199, null, !dbg !470
  br i1 %cmp2.i200, label %if.then69, label %if.end5.i, !dbg !470

if.end5.i:                                        ; preds = %if.else.i201, %if.then.i
  %comment.0.i = phi i8* [ %add.ptr.i, %if.then.i ], [ %call.i199, %if.else.i201 ]
  call void @MSAAddComment(%struct.msa_struct* %call1, i8* %comment.0.i) #6, !dbg !471
  br label %while.cond.backedge

if.else52:                                        ; preds = %while.cond13
  %call53 = call i32 @strncmp(i8* %s.0, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i64 2) #7, !dbg !472
  %cmp54 = icmp eq i32 %call53, 0, !dbg !472
  br i1 %cmp54, label %while.end75, label %if.else57, !dbg !472

if.else57:                                        ; preds = %if.else52
  %cmp59 = icmp eq i8 %11, 10, !dbg !473
  br i1 %cmp59, label %while.cond.backedge, label %if.else62, !dbg !473

while.cond.backedge:                              ; preds = %if.else57, %if.then69, %if.then23.i, %if.then35.i, %if.then80.i, %if.then107.i, %if.else115.i, %if.then53.i, %if.then29.i, %if.then18.i, %if.then30.i, %if.else36.i, %if.then35.i154, %if.then24.i, %if.then15.i, %if.else22.i, %if.then20.i, %if.then11.i, %if.end74.i, %if.else85.i, %if.end33.i, %if.end5.i, %if.end4.i216, %if.end46.i, %if.end70.i, %if.end97.i
  %call11 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !299
  %cmp12 = icmp eq i8* %call11, null, !dbg !299
  br i1 %cmp12, label %land.lhs.true, label %while.cond13, !dbg !299

if.else62:                                        ; preds = %if.else57
  call void @llvm.lifetime.start(i64 8, i8* %2) #5, !dbg !300
  call void @llvm.lifetime.start(i64 4, i8* %3) #5, !dbg !300
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call1}, i64 0, metadata !474) #5, !dbg !300
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !475) #5, !dbg !300
  call void @llvm.dbg.declare(metadata !{i8** %s.i203}, metadata !217) #5, !dbg !476
  call void @llvm.dbg.declare(metadata !{i32* %len.i204}, metadata !221) #5, !dbg !477
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !478) #5, !dbg !479
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !217), !dbg !479
  call void @llvm.dbg.value(metadata !{i8* %s.0}, i64 0, metadata !217), !dbg !479
  store i8* %s.0, i8** %s.i203, align 8, !dbg !479, !tbaa !286
  %call.i205 = call i8* @sre_strtok(i8** %s.i203, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #6, !dbg !480
  call void @llvm.dbg.value(metadata !{i8* %call.i205}, i64 0, metadata !481) #5, !dbg !480
  %cmp.i206 = icmp eq i8* %call.i205, null, !dbg !480
  br i1 %cmp.i206, label %if.then69, label %if.end.i209, !dbg !480

if.end.i209:                                      ; preds = %if.else62
  %call1.i207 = call i8* @sre_strtok(i8** %s.i203, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* %len.i204) #6, !dbg !482
  call void @llvm.dbg.value(metadata !{i8* %call1.i207}, i64 0, metadata !483) #5, !dbg !482
  %cmp2.i208 = icmp eq i8* %call1.i207, null, !dbg !482
  br i1 %cmp2.i208, label %if.then69, label %if.end4.i216, !dbg !482

if.end4.i216:                                     ; preds = %if.end.i209
  %54 = load i32* %lastidx.i210, align 4, !dbg !303, !tbaa !375
  %add.i211 = add nsw i32 %54, 1, !dbg !303
  %call5.i212 = call i32 @MSAGetSeqidx(%struct.msa_struct* %call1, i8* %call.i205, i32 %add.i211) #6, !dbg !303
  call void @llvm.dbg.value(metadata !{i32 %call5.i212}, i64 0, metadata !484) #5, !dbg !303
  store i32 %call5.i212, i32* %lastidx.i210, align 4, !dbg !485, !tbaa !375
  %idxprom.i213 = sext i32 %call5.i212 to i64, !dbg !304
  %55 = load i8*** %aseq.i, align 8, !dbg !304, !tbaa !286
  %arrayidx.i214 = getelementptr inbounds i8** %55, i64 %idxprom.i213, !dbg !304
  %56 = load i32** %sqlen.i, align 8, !dbg !304, !tbaa !286
  %arrayidx8.i = getelementptr inbounds i32* %56, i64 %idxprom.i213, !dbg !304
  %57 = load i32* %arrayidx8.i, align 4, !dbg !304, !tbaa !375
  call void @llvm.dbg.value(metadata !{i32* %len.i204}, i64 0, metadata !486) #5, !dbg !304
  call void @llvm.dbg.value(metadata !{i32* %len.i204}, i64 0, metadata !221), !dbg !304
  %58 = load i32* %len.i204, align 4, !dbg !304, !tbaa !375
  %call9.i215 = call i32 @sre_strcat(i8** %arrayidx.i214, i32 %57, i8* %call1.i207, i32 %58) #6, !dbg !304
  %59 = load i32** %sqlen.i, align 8, !dbg !304, !tbaa !286
  %arrayidx12.i = getelementptr inbounds i32* %59, i64 %idxprom.i213, !dbg !304
  store i32 %call9.i215, i32* %arrayidx12.i, align 4, !dbg !304, !tbaa !375
  br label %while.cond.backedge

if.then69:                                        ; preds = %if.else.i201, %if.end8.i183, %if.end4.i180, %if.end.i177, %if.then44, %if.end4.i164, %if.end.i161, %if.then38, %if.end8.i, %if.end4.i142, %if.end.i139, %if.then32, %if.then92.i, %if.then65.i, %if.then41.i, %if.end4.i, %if.end.i, %if.then27, %if.else62, %if.end.i209
  %60 = load i32* %linenumber, align 4, !dbg !305, !tbaa !375
  %61 = load i8** %fname70, align 8, !dbg !305, !tbaa !286
  %62 = load i8** %name, align 8, !dbg !305, !tbaa !286
  %cmp71 = icmp eq i8* %62, null, !dbg !305
  %. = select i1 %cmp71, i8* getelementptr inbounds ([1 x i8]* @.str8, i64 0, i64 0), i8* %62, !dbg !305
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([76 x i8]* @.str7, i64 0, i64 0), i32 %60, i8* %61, i8* %.) #6, !dbg !305
  br label %while.cond.backedge, !dbg !305

while.end75:                                      ; preds = %if.else52
  %cmp76 = icmp eq i8* %s.0, null, !dbg !487
  br i1 %cmp76, label %land.lhs.true, label %if.end97, !dbg !487

land.lhs.true:                                    ; preds = %while.cond.preheader, %while.cond.backedge, %while.end75
  %nseq = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 4, !dbg !487
  %63 = load i32* %nseq, align 4, !dbg !487, !tbaa !375
  %cmp78 = icmp eq i32 %63, 0, !dbg !487
  br i1 %cmp78, label %if.then96, label %land.lhs.true92, !dbg !487

land.lhs.true92:                                  ; preds = %land.lhs.true
  %name81 = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 7, !dbg !488
  %64 = load i8** %name81, align 8, !dbg !488, !tbaa !286
  %cmp82 = icmp eq i8* %64, null, !dbg !488
  %.133 = select i1 %cmp82, i8* getelementptr inbounds ([1 x i8]* @.str8, i64 0, i64 0), i8* %64, !dbg !488
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([38 x i8]* @.str9, i64 0, i64 0), i8* %.133) #6, !dbg !488
  %.pre = load i32* %nseq, align 4, !dbg !489, !tbaa !375
  %phitmp = icmp eq i32 %.pre, 0, !dbg !488
  br i1 %phitmp, label %if.then96, label %if.end97, !dbg !489

if.then96:                                        ; preds = %land.lhs.true, %land.lhs.true92
  call void @MSAFree(%struct.msa_struct* %call1) #6, !dbg !490
  br label %return, !dbg !492

if.end97:                                         ; preds = %while.end75, %land.lhs.true92
  call void @MSAVerifyParse(%struct.msa_struct* %call1) #6, !dbg !493
  br label %return, !dbg !494

return:                                           ; preds = %entry, %if.end97, %if.then96, %if.then3
  %retval.0 = phi %struct.msa_struct* [ null, %if.then3 ], [ null, %if.then96 ], [ %call1, %if.end97 ], [ null, %entry ]
  ret %struct.msa_struct* %retval.0, !dbg !495
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare %struct.msa_struct* @MSAAlloc(i32, i32) #3

; Function Attrs: optsize
declare i8* @MSAFileGetLine(%struct.msafile_struct*) #3

; Function Attrs: optsize
declare void @MSAFree(%struct.msa_struct*) #3

; Function Attrs: optsize
declare i32 @IsBlankline(i8*) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #3

; Function Attrs: nounwind optsize uwtable
define void @WriteStockholm(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !205), !dbg !496
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !206), !dbg !496
  tail call fastcc void @actually_write_stockholm(%struct._IO_FILE* %fp, %struct.msa_struct* %msa, i32 50) #8, !dbg !497
  ret void, !dbg !498
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @actually_write_stockholm(%struct._IO_FILE* %fp, %struct.msa_struct* %msa, i32 %cpl) #0 {
entry:
  %s = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !271), !dbg !499
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !272), !dbg !499
  call void @llvm.dbg.value(metadata !{i32 %cpl}, i64 0, metadata !273), !dbg !499
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !276), !dbg !500
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !278), !dbg !501
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !279), !dbg !502
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !282), !dbg !503
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !277), !dbg !504
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !274), !dbg !505
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !505
  %0 = load i32* %nseq, align 4, !dbg !505, !tbaa !375
  %cmp824 = icmp sgt i32 %0, 0, !dbg !505
  br i1 %cmp824, label %for.body.lr.ph, label %for.end, !dbg !505

for.body.lr.ph:                                   ; preds = %entry
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !507
  %1 = load i8*** %sqname, align 8, !dbg !507, !tbaa !286
  br label %for.body, !dbg !505

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv854 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next855, %for.body ]
  %namewidth.0825 = phi i32 [ 0, %for.body.lr.ph ], [ %conv.namewidth.0, %for.body ]
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv854, !dbg !507
  %2 = load i8** %arrayidx, align 8, !dbg !507, !tbaa !286
  %call = call i64 @strlen(i8* %2) #7, !dbg !507
  %conv = trunc i64 %call to i32, !dbg !507
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !276), !dbg !507
  %cmp1 = icmp sgt i32 %conv, %namewidth.0825, !dbg !507
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !277), !dbg !508
  %conv.namewidth.0 = select i1 %cmp1, i32 %conv, i32 %namewidth.0825, !dbg !507
  %indvars.iv.next855 = add i64 %indvars.iv854, 1, !dbg !505
  %3 = trunc i64 %indvars.iv.next855 to i32, !dbg !505
  %cmp = icmp slt i32 %3, %0, !dbg !505
  br i1 %cmp, label %for.body, label %for.end, !dbg !505

for.end:                                          ; preds = %for.body, %entry
  %namewidth.0.lcssa = phi i32 [ 0, %entry ], [ %conv.namewidth.0, %for.body ]
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16, !dbg !509
  %4 = load i8*** %ss, align 8, !dbg !509, !tbaa !286
  %cmp3 = icmp eq i8** %4, null, !dbg !509
  call void @llvm.dbg.value(metadata !510, i64 0, metadata !279), !dbg !511
  call void @llvm.dbg.value(metadata !513, i64 0, metadata !278), !dbg !511
  %. = select i1 %cmp3, i32 0, i32 2, !dbg !509
  %.782 = select i1 %cmp3, i32 0, i32 4, !dbg !509
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17, !dbg !514
  %5 = load i8*** %sa, align 8, !dbg !514, !tbaa !286
  %cmp7 = icmp eq i8** %5, null, !dbg !514
  call void @llvm.dbg.value(metadata !510, i64 0, metadata !279), !dbg !515
  call void @llvm.dbg.value(metadata !513, i64 0, metadata !278), !dbg !515
  %typewidth.1 = select i1 %cmp7, i32 %., i32 2, !dbg !514
  %markupwidth.1 = select i1 %cmp7, i32 %.782, i32 4, !dbg !514
  %ngr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 38, !dbg !517
  %6 = load i32* %ngr, align 4, !dbg !517, !tbaa !375
  %cmp12818 = icmp sgt i32 %6, 0, !dbg !517
  br i1 %cmp12818, label %for.body14.lr.ph, label %for.end25, !dbg !517

for.body14.lr.ph:                                 ; preds = %for.end
  %gr_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 35, !dbg !519
  %7 = load i8*** %gr_tag, align 8, !dbg !519, !tbaa !286
  br label %for.body14, !dbg !517

for.body14:                                       ; preds = %for.body14.lr.ph, %for.body14
  %indvars.iv852 = phi i64 [ 0, %for.body14.lr.ph ], [ %indvars.iv.next853, %for.body14 ]
  %typewidth.2819 = phi i32 [ %typewidth.1, %for.body14.lr.ph ], [ %conv18.typewidth.2, %for.body14 ]
  %arrayidx16 = getelementptr inbounds i8** %7, i64 %indvars.iv852, !dbg !519
  %8 = load i8** %arrayidx16, align 8, !dbg !519, !tbaa !286
  %call17 = call i64 @strlen(i8* %8) #7, !dbg !519
  %conv18 = trunc i64 %call17 to i32, !dbg !519
  call void @llvm.dbg.value(metadata !{i32 %conv18}, i64 0, metadata !276), !dbg !519
  %cmp19 = icmp sgt i32 %conv18, %typewidth.2819, !dbg !519
  call void @llvm.dbg.value(metadata !{i32 %conv18}, i64 0, metadata !278), !dbg !519
  %conv18.typewidth.2 = select i1 %cmp19, i32 %conv18, i32 %typewidth.2819, !dbg !519
  %indvars.iv.next853 = add i64 %indvars.iv852, 1, !dbg !517
  %9 = trunc i64 %indvars.iv.next853 to i32, !dbg !517
  %cmp12 = icmp slt i32 %9, %6, !dbg !517
  br i1 %cmp12, label %for.body14, label %for.end25, !dbg !517

for.end25:                                        ; preds = %for.body14, %for.end
  %typewidth.2.lcssa = phi i32 [ %typewidth.1, %for.end ], [ %conv18.typewidth.2, %for.body14 ]
  %rf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13, !dbg !520
  %10 = load i8** %rf, align 8, !dbg !520, !tbaa !286
  %cmp26 = icmp eq i8* %10, null, !dbg !520
  br i1 %cmp26, label %if.end33, label %if.then28, !dbg !520

if.then28:                                        ; preds = %for.end25
  call void @llvm.dbg.value(metadata !510, i64 0, metadata !279), !dbg !521
  %cmp29 = icmp slt i32 %typewidth.2.lcssa, 2, !dbg !521
  call void @llvm.dbg.value(metadata !513, i64 0, metadata !278), !dbg !521
  %.typewidth.2 = select i1 %cmp29, i32 2, i32 %typewidth.2.lcssa, !dbg !521
  br label %if.end33, !dbg !521

if.end33:                                         ; preds = %if.then28, %for.end25
  %typewidth.4 = phi i32 [ %typewidth.2.lcssa, %for.end25 ], [ %.typewidth.2, %if.then28 ]
  %markupwidth.2 = phi i32 [ %markupwidth.1, %for.end25 ], [ 4, %if.then28 ]
  %ss_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11, !dbg !523
  %11 = load i8** %ss_cons, align 8, !dbg !523, !tbaa !286
  %cmp34 = icmp eq i8* %11, null, !dbg !523
  br i1 %cmp34, label %if.end41, label %if.then36, !dbg !523

if.then36:                                        ; preds = %if.end33
  call void @llvm.dbg.value(metadata !510, i64 0, metadata !279), !dbg !524
  %cmp37 = icmp slt i32 %typewidth.4, 7, !dbg !524
  call void @llvm.dbg.value(metadata !526, i64 0, metadata !278), !dbg !524
  %.typewidth.4 = select i1 %cmp37, i32 7, i32 %typewidth.4, !dbg !524
  br label %if.end41, !dbg !524

if.end41:                                         ; preds = %if.then36, %if.end33
  %typewidth.5 = phi i32 [ %typewidth.4, %if.end33 ], [ %.typewidth.4, %if.then36 ]
  %markupwidth.3 = phi i32 [ %markupwidth.2, %if.end33 ], [ 4, %if.then36 ]
  %sa_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 12, !dbg !527
  %12 = load i8** %sa_cons, align 8, !dbg !527, !tbaa !286
  %cmp42 = icmp eq i8* %12, null, !dbg !527
  br i1 %cmp42, label %if.end49, label %if.then44, !dbg !527

if.then44:                                        ; preds = %if.end41
  call void @llvm.dbg.value(metadata !510, i64 0, metadata !279), !dbg !528
  %cmp45 = icmp slt i32 %typewidth.5, 7, !dbg !528
  call void @llvm.dbg.value(metadata !526, i64 0, metadata !278), !dbg !528
  %.typewidth.5 = select i1 %cmp45, i32 7, i32 %typewidth.5, !dbg !528
  br label %if.end49, !dbg !528

if.end49:                                         ; preds = %if.then44, %if.end41
  %typewidth.6 = phi i32 [ %typewidth.5, %if.end41 ], [ %.typewidth.5, %if.then44 ]
  %markupwidth.4 = phi i32 [ %markupwidth.3, %if.end41 ], [ 4, %if.then44 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !274), !dbg !530
  %ngc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 34, !dbg !530
  %13 = load i32* %ngc, align 4, !dbg !530, !tbaa !375
  %cmp51813 = icmp sgt i32 %13, 0, !dbg !530
  br i1 %cmp51813, label %for.body53.lr.ph, label %for.end64, !dbg !530

for.body53.lr.ph:                                 ; preds = %if.end49
  %gc_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 31, !dbg !532
  %14 = load i8*** %gc_tag, align 8, !dbg !532, !tbaa !286
  br label %for.body53, !dbg !530

for.body53:                                       ; preds = %for.body53.lr.ph, %for.body53
  %indvars.iv850 = phi i64 [ 0, %for.body53.lr.ph ], [ %indvars.iv.next851, %for.body53 ]
  %typewidth.7814 = phi i32 [ %typewidth.6, %for.body53.lr.ph ], [ %conv57.typewidth.7, %for.body53 ]
  %arrayidx55 = getelementptr inbounds i8** %14, i64 %indvars.iv850, !dbg !532
  %15 = load i8** %arrayidx55, align 8, !dbg !532, !tbaa !286
  %call56 = call i64 @strlen(i8* %15) #7, !dbg !532
  %conv57 = trunc i64 %call56 to i32, !dbg !532
  call void @llvm.dbg.value(metadata !{i32 %conv57}, i64 0, metadata !276), !dbg !532
  %cmp58 = icmp sgt i32 %conv57, %typewidth.7814, !dbg !532
  call void @llvm.dbg.value(metadata !{i32 %conv57}, i64 0, metadata !278), !dbg !532
  %conv57.typewidth.7 = select i1 %cmp58, i32 %conv57, i32 %typewidth.7814, !dbg !532
  %indvars.iv.next851 = add i64 %indvars.iv850, 1, !dbg !530
  %16 = trunc i64 %indvars.iv.next851 to i32, !dbg !530
  %cmp51 = icmp slt i32 %16, %13, !dbg !530
  br i1 %cmp51, label %for.body53, label %for.end64, !dbg !530

for.end64:                                        ; preds = %for.body53, %if.end49
  %typewidth.7.lcssa = phi i32 [ %typewidth.6, %if.end49 ], [ %conv57.typewidth.7, %for.body53 ]
  %add = add i32 %cpl, 61, !dbg !533
  %add65 = add i32 %add, %namewidth.0.lcssa, !dbg !533
  %add66 = add i32 %add65, %markupwidth.4, !dbg !533
  %add67 = add i32 %add66, %typewidth.7.lcssa, !dbg !533
  %conv68 = sext i32 %add67 to i64, !dbg !533
  %call69 = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 251, i64 %conv68) #6, !dbg !533
  call void @llvm.dbg.value(metadata !{i8* %call69}, i64 0, metadata !280), !dbg !533
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str26, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %fp), !dbg !534
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !274), !dbg !535
  %ncomment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 21, !dbg !535
  %18 = load i32* %ncomment, align 4, !dbg !535, !tbaa !375
  %cmp72811 = icmp sgt i32 %18, 0, !dbg !535
  br i1 %cmp72811, label %for.body74.lr.ph, label %if.end86, !dbg !535

for.body74.lr.ph:                                 ; preds = %for.end64
  %comment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 20, !dbg !537
  br label %for.body74, !dbg !535

for.body74:                                       ; preds = %for.body74.lr.ph, %for.body74
  %indvars.iv848 = phi i64 [ 0, %for.body74.lr.ph ], [ %indvars.iv.next849, %for.body74 ]
  %19 = load i8*** %comment, align 8, !dbg !537, !tbaa !286
  %arrayidx76 = getelementptr inbounds i8** %19, i64 %indvars.iv848, !dbg !537
  %20 = load i8** %arrayidx76, align 8, !dbg !537, !tbaa !286
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str27, i64 0, i64 0), i8* %20) #6, !dbg !537
  %indvars.iv.next849 = add i64 %indvars.iv848, 1, !dbg !535
  %21 = load i32* %ncomment, align 4, !dbg !535, !tbaa !375
  %22 = trunc i64 %indvars.iv.next849 to i32, !dbg !535
  %cmp72 = icmp slt i32 %22, %21, !dbg !535
  br i1 %cmp72, label %for.body74, label %for.end80, !dbg !535

for.end80:                                        ; preds = %for.body74
  %cmp82 = icmp sgt i32 %21, 0, !dbg !538
  br i1 %cmp82, label %if.then84, label %if.end86, !dbg !538

if.then84:                                        ; preds = %for.end80
  %fputc781 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !538
  br label %if.end86, !dbg !538

if.end86:                                         ; preds = %for.end64, %if.then84, %for.end80
  %name = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7, !dbg !539
  %23 = load i8** %name, align 8, !dbg !539, !tbaa !286
  %cmp87 = icmp eq i8* %23, null, !dbg !539
  br i1 %cmp87, label %if.end92, label %if.then89, !dbg !539

if.then89:                                        ; preds = %if.end86
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str28, i64 0, i64 0), i8* %23) #6, !dbg !539
  br label %if.end92, !dbg !539

if.end92:                                         ; preds = %if.end86, %if.then89
  %acc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 9, !dbg !540
  %24 = load i8** %acc, align 8, !dbg !540, !tbaa !286
  %cmp93 = icmp eq i8* %24, null, !dbg !540
  br i1 %cmp93, label %if.end98, label %if.then95, !dbg !540

if.then95:                                        ; preds = %if.end92
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str29, i64 0, i64 0), i8* %24) #6, !dbg !540
  br label %if.end98, !dbg !540

if.end98:                                         ; preds = %if.end92, %if.then95
  %desc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 8, !dbg !541
  %25 = load i8** %desc, align 8, !dbg !541, !tbaa !286
  %cmp99 = icmp eq i8* %25, null, !dbg !541
  br i1 %cmp99, label %if.end104, label %if.then101, !dbg !541

if.then101:                                       ; preds = %if.end98
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str30, i64 0, i64 0), i8* %25) #6, !dbg !541
  br label %if.end104, !dbg !541

if.end104:                                        ; preds = %if.end98, %if.then101
  %au = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 10, !dbg !542
  %26 = load i8** %au, align 8, !dbg !542, !tbaa !286
  %cmp105 = icmp eq i8* %26, null, !dbg !542
  br i1 %cmp105, label %if.end110, label %if.then107, !dbg !542

if.then107:                                       ; preds = %if.end104
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str31, i64 0, i64 0), i8* %26) #6, !dbg !542
  br label %if.end110, !dbg !542

if.end110:                                        ; preds = %if.end104, %if.then107
  %arrayidx111 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 2, !dbg !543
  %27 = load i32* %arrayidx111, align 4, !dbg !543, !tbaa !375
  %tobool = icmp eq i32 %27, 0, !dbg !543
  br i1 %tobool, label %if.end131, label %land.lhs.true, !dbg !543

land.lhs.true:                                    ; preds = %if.end110
  %arrayidx113 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 3, !dbg !543
  %28 = load i32* %arrayidx113, align 4, !dbg !543, !tbaa !375
  %tobool114 = icmp eq i32 %28, 0, !dbg !543
  %arrayidx127 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 2, !dbg !544
  %29 = load float* %arrayidx127, align 4, !dbg !544, !tbaa !374
  %conv128 = fpext float %29 to double, !dbg !544
  br i1 %tobool114, label %if.then125, label %if.then115, !dbg !543

if.then115:                                       ; preds = %land.lhs.true
  %arrayidx119 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 3, !dbg !545
  %30 = load float* %arrayidx119, align 4, !dbg !545, !tbaa !374
  %conv120 = fpext float %30 to double, !dbg !545
  %call121 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str32, i64 0, i64 0), double %conv128, double %conv120) #6, !dbg !545
  br label %if.end131, !dbg !545

if.then125:                                       ; preds = %land.lhs.true
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str33, i64 0, i64 0), double %conv128) #6, !dbg !544
  br label %if.end131, !dbg !544

if.end131:                                        ; preds = %if.end110, %if.then125, %if.then115
  %arrayidx133 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 4, !dbg !546
  %31 = load i32* %arrayidx133, align 4, !dbg !546, !tbaa !375
  %tobool134 = icmp eq i32 %31, 0, !dbg !546
  br i1 %tobool134, label %if.end157, label %land.lhs.true135, !dbg !546

land.lhs.true135:                                 ; preds = %if.end131
  %arrayidx137 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 5, !dbg !546
  %32 = load i32* %arrayidx137, align 4, !dbg !546, !tbaa !375
  %tobool138 = icmp eq i32 %32, 0, !dbg !546
  %arrayidx153 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 4, !dbg !547
  %33 = load float* %arrayidx153, align 4, !dbg !547, !tbaa !374
  %conv154 = fpext float %33 to double, !dbg !547
  br i1 %tobool138, label %if.then151, label %if.then139, !dbg !546

if.then139:                                       ; preds = %land.lhs.true135
  %arrayidx144 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 5, !dbg !548
  %34 = load float* %arrayidx144, align 4, !dbg !548, !tbaa !374
  %conv145 = fpext float %34 to double, !dbg !548
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str34, i64 0, i64 0), double %conv154, double %conv145) #6, !dbg !548
  br label %if.end157, !dbg !548

if.then151:                                       ; preds = %land.lhs.true135
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str35, i64 0, i64 0), double %conv154) #6, !dbg !547
  br label %if.end157, !dbg !547

if.end157:                                        ; preds = %if.end131, %if.then151, %if.then139
  %arrayidx159 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 0, !dbg !549
  %35 = load i32* %arrayidx159, align 4, !dbg !549, !tbaa !375
  %tobool160 = icmp eq i32 %35, 0, !dbg !549
  br i1 %tobool160, label %for.cond184.preheader, label %land.lhs.true161, !dbg !549

land.lhs.true161:                                 ; preds = %if.end157
  %arrayidx163 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 1, !dbg !549
  %36 = load i32* %arrayidx163, align 4, !dbg !549, !tbaa !375
  %tobool164 = icmp eq i32 %36, 0, !dbg !549
  %arrayidx179 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 0, !dbg !550
  %37 = load float* %arrayidx179, align 4, !dbg !550, !tbaa !374
  %conv180 = fpext float %37 to double, !dbg !550
  br i1 %tobool164, label %if.then177, label %if.then165, !dbg !549

if.then165:                                       ; preds = %land.lhs.true161
  %arrayidx170 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 1, !dbg !551
  %38 = load float* %arrayidx170, align 4, !dbg !551, !tbaa !374
  %conv171 = fpext float %38 to double, !dbg !551
  %call172 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str36, i64 0, i64 0), double %conv180, double %conv171) #6, !dbg !551
  br label %for.cond184.preheader, !dbg !551

if.then177:                                       ; preds = %land.lhs.true161
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str37, i64 0, i64 0), double %conv180) #6, !dbg !550
  br label %for.cond184.preheader, !dbg !550

for.cond184.preheader:                            ; preds = %if.then177, %if.then165, %if.end157
  %ngf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 25, !dbg !552
  %39 = load i32* %ngf, align 4, !dbg !552, !tbaa !375
  %cmp185809 = icmp sgt i32 %39, 0, !dbg !552
  br i1 %cmp185809, label %for.body187.lr.ph, label %for.end195, !dbg !552

for.body187.lr.ph:                                ; preds = %for.cond184.preheader
  %gf_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 23, !dbg !554
  %gf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 24, !dbg !554
  br label %for.body187, !dbg !552

for.body187:                                      ; preds = %for.body187.lr.ph, %for.body187
  %indvars.iv845 = phi i64 [ 0, %for.body187.lr.ph ], [ %indvars.iv.next846, %for.body187 ]
  %40 = load i8*** %gf_tag, align 8, !dbg !554, !tbaa !286
  %arrayidx189 = getelementptr inbounds i8** %40, i64 %indvars.iv845, !dbg !554
  %41 = load i8** %arrayidx189, align 8, !dbg !554, !tbaa !286
  %42 = load i8*** %gf, align 8, !dbg !554, !tbaa !286
  %arrayidx191 = getelementptr inbounds i8** %42, i64 %indvars.iv845, !dbg !554
  %43 = load i8** %arrayidx191, align 8, !dbg !554, !tbaa !286
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0), i8* %41, i8* %43) #6, !dbg !554
  %indvars.iv.next846 = add i64 %indvars.iv845, 1, !dbg !552
  %44 = load i32* %ngf, align 4, !dbg !552, !tbaa !375
  %45 = trunc i64 %indvars.iv.next846 to i32, !dbg !552
  %cmp185 = icmp slt i32 %45, %44, !dbg !552
  br i1 %cmp185, label %for.body187, label %for.end195, !dbg !552

for.end195:                                       ; preds = %for.body187, %for.cond184.preheader
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !555
  %flags = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 5, !dbg !556
  %46 = load i32* %flags, align 4, !dbg !556, !tbaa !375
  %and = and i32 %46, 1, !dbg !556
  %tobool197 = icmp eq i32 %and, 0, !dbg !556
  br i1 %tobool197, label %if.end215, label %for.cond199.preheader, !dbg !556

for.cond199.preheader:                            ; preds = %for.end195
  %47 = load i32* %nseq, align 4, !dbg !557, !tbaa !375
  %cmp201807 = icmp sgt i32 %47, 0, !dbg !557
  br i1 %cmp201807, label %for.body203.lr.ph, label %for.end213, !dbg !557

for.body203.lr.ph:                                ; preds = %for.cond199.preheader
  %sqname205 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !560
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2, !dbg !560
  br label %for.body203, !dbg !557

for.body203:                                      ; preds = %for.body203.lr.ph, %for.body203
  %indvars.iv843 = phi i64 [ 0, %for.body203.lr.ph ], [ %indvars.iv.next844, %for.body203 ]
  %48 = load i8*** %sqname205, align 8, !dbg !560, !tbaa !286
  %arrayidx206 = getelementptr inbounds i8** %48, i64 %indvars.iv843, !dbg !560
  %49 = load i8** %arrayidx206, align 8, !dbg !560, !tbaa !286
  %50 = load float** %wgt, align 8, !dbg !560, !tbaa !286
  %arrayidx208 = getelementptr inbounds float* %50, i64 %indvars.iv843, !dbg !560
  %51 = load float* %arrayidx208, align 4, !dbg !560, !tbaa !374
  %conv209 = fpext float %51 to double, !dbg !560
  %call210 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str39, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %49, double %conv209) #6, !dbg !560
  %indvars.iv.next844 = add i64 %indvars.iv843, 1, !dbg !557
  %52 = load i32* %nseq, align 4, !dbg !557, !tbaa !375
  %53 = trunc i64 %indvars.iv.next844 to i32, !dbg !557
  %cmp201 = icmp slt i32 %53, %52, !dbg !557
  br i1 %cmp201, label %for.body203, label %for.end213, !dbg !557

for.end213:                                       ; preds = %for.body203, %for.cond199.preheader
  %fputc766 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !561
  br label %if.end215, !dbg !562

if.end215:                                        ; preds = %for.end195, %for.end213
  %sqacc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 14, !dbg !563
  %54 = load i8*** %sqacc, align 8, !dbg !563, !tbaa !286
  %cmp216 = icmp eq i8** %54, null, !dbg !563
  br i1 %cmp216, label %if.end242, label %for.cond219.preheader, !dbg !563

for.cond219.preheader:                            ; preds = %if.end215
  %55 = load i32* %nseq, align 4, !dbg !564, !tbaa !375
  %cmp221805 = icmp sgt i32 %55, 0, !dbg !564
  br i1 %cmp221805, label %for.body223.lr.ph, label %for.end240, !dbg !564

for.body223.lr.ph:                                ; preds = %for.cond219.preheader
  %sqname231 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !567
  br label %for.body223, !dbg !564

for.body223:                                      ; preds = %for.inc238.for.body223_crit_edge, %for.body223.lr.ph
  %56 = phi i8** [ %54, %for.body223.lr.ph ], [ %.pre860, %for.inc238.for.body223_crit_edge ], !dbg !568
  %57 = phi i32 [ %55, %for.body223.lr.ph ], [ %61, %for.inc238.for.body223_crit_edge ]
  %indvars.iv841 = phi i64 [ 0, %for.body223.lr.ph ], [ %indvars.iv.next842, %for.inc238.for.body223_crit_edge ]
  %arrayidx226 = getelementptr inbounds i8** %56, i64 %indvars.iv841, !dbg !568
  %58 = load i8** %arrayidx226, align 8, !dbg !568, !tbaa !286
  %cmp227 = icmp eq i8* %58, null, !dbg !568
  br i1 %cmp227, label %for.inc238, label %if.then229, !dbg !568

if.then229:                                       ; preds = %for.body223
  %59 = load i8*** %sqname231, align 8, !dbg !567, !tbaa !286
  %arrayidx232 = getelementptr inbounds i8** %59, i64 %indvars.iv841, !dbg !567
  %60 = load i8** %arrayidx232, align 8, !dbg !567, !tbaa !286
  %call236 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str40, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %60, i8* %58) #6, !dbg !567
  %.pre858 = load i32* %nseq, align 4, !dbg !564, !tbaa !375
  br label %for.inc238, !dbg !567

for.inc238:                                       ; preds = %for.body223, %if.then229
  %61 = phi i32 [ %57, %for.body223 ], [ %.pre858, %if.then229 ], !dbg !564
  %indvars.iv.next842 = add i64 %indvars.iv841, 1, !dbg !564
  %62 = trunc i64 %indvars.iv.next842 to i32, !dbg !564
  %cmp221 = icmp slt i32 %62, %61, !dbg !564
  br i1 %cmp221, label %for.inc238.for.body223_crit_edge, label %for.end240, !dbg !564

for.inc238.for.body223_crit_edge:                 ; preds = %for.inc238
  %.pre860 = load i8*** %sqacc, align 8, !dbg !568, !tbaa !286
  br label %for.body223, !dbg !564

for.end240:                                       ; preds = %for.inc238, %for.cond219.preheader
  %fputc769 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !569
  br label %if.end242, !dbg !570

if.end242:                                        ; preds = %if.end215, %for.end240
  %sqdesc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15, !dbg !571
  %63 = load i8*** %sqdesc, align 8, !dbg !571, !tbaa !286
  %cmp243 = icmp eq i8** %63, null, !dbg !571
  br i1 %cmp243, label %for.cond270.preheader, label %for.cond246.preheader, !dbg !571

for.cond246.preheader:                            ; preds = %if.end242
  %64 = load i32* %nseq, align 4, !dbg !572, !tbaa !375
  %cmp248803 = icmp sgt i32 %64, 0, !dbg !572
  br i1 %cmp248803, label %for.body250.lr.ph, label %for.end267, !dbg !572

for.body250.lr.ph:                                ; preds = %for.cond246.preheader
  %sqname258 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !575
  br label %for.body250, !dbg !572

for.body250:                                      ; preds = %for.inc265.for.body250_crit_edge, %for.body250.lr.ph
  %65 = phi i8** [ %63, %for.body250.lr.ph ], [ %.pre859, %for.inc265.for.body250_crit_edge ], !dbg !576
  %66 = phi i32 [ %64, %for.body250.lr.ph ], [ %70, %for.inc265.for.body250_crit_edge ]
  %indvars.iv839 = phi i64 [ 0, %for.body250.lr.ph ], [ %indvars.iv.next840, %for.inc265.for.body250_crit_edge ]
  %arrayidx253 = getelementptr inbounds i8** %65, i64 %indvars.iv839, !dbg !576
  %67 = load i8** %arrayidx253, align 8, !dbg !576, !tbaa !286
  %cmp254 = icmp eq i8* %67, null, !dbg !576
  br i1 %cmp254, label %for.inc265, label %if.then256, !dbg !576

if.then256:                                       ; preds = %for.body250
  %68 = load i8*** %sqname258, align 8, !dbg !575, !tbaa !286
  %arrayidx259 = getelementptr inbounds i8** %68, i64 %indvars.iv839, !dbg !575
  %69 = load i8** %arrayidx259, align 8, !dbg !575, !tbaa !286
  %call263 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str41, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %69, i8* %67) #6, !dbg !575
  %.pre857 = load i32* %nseq, align 4, !dbg !572, !tbaa !375
  br label %for.inc265, !dbg !575

for.inc265:                                       ; preds = %for.body250, %if.then256
  %70 = phi i32 [ %66, %for.body250 ], [ %.pre857, %if.then256 ], !dbg !572
  %indvars.iv.next840 = add i64 %indvars.iv839, 1, !dbg !572
  %71 = trunc i64 %indvars.iv.next840 to i32, !dbg !572
  %cmp248 = icmp slt i32 %71, %70, !dbg !572
  br i1 %cmp248, label %for.inc265.for.body250_crit_edge, label %for.end267, !dbg !572

for.inc265.for.body250_crit_edge:                 ; preds = %for.inc265
  %.pre859 = load i8*** %sqdesc, align 8, !dbg !576, !tbaa !286
  br label %for.body250, !dbg !572

for.end267:                                       ; preds = %for.inc265, %for.cond246.preheader
  %fputc772 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !577
  br label %for.cond270.preheader, !dbg !578

for.cond270.preheader:                            ; preds = %if.end242, %for.end267
  %ngs = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 30, !dbg !579
  %72 = load i32* %ngs, align 4, !dbg !579, !tbaa !375
  %cmp271801 = icmp sgt i32 %72, 0, !dbg !579
  br i1 %cmp271801, label %for.cond274.preheader.lr.ph, label %for.cond308.preheader, !dbg !579

for.cond274.preheader.lr.ph:                      ; preds = %for.cond270.preheader
  %gs = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 28, !dbg !581
  %sqname295 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !584
  %gs_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 27, !dbg !584
  br label %for.cond274.preheader, !dbg !579

for.cond274.preheader:                            ; preds = %for.cond274.preheader.lr.ph, %for.end303
  %indvars.iv837 = phi i64 [ 0, %for.cond274.preheader.lr.ph ], [ %indvars.iv.next838, %for.end303 ]
  %73 = load i32* %nseq, align 4, !dbg !586, !tbaa !375
  %cmp276799 = icmp sgt i32 %73, 0, !dbg !586
  br i1 %cmp276799, label %for.body278, label %for.end303, !dbg !586

for.cond308.preheader:                            ; preds = %for.end303, %for.cond270.preheader
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !587
  %74 = load i32* %alen, align 4, !dbg !587, !tbaa !375
  %cmp309794 = icmp sgt i32 %74, 0, !dbg !587
  br i1 %cmp309794, label %for.body311.lr.ph, label %for.end490, !dbg !587

for.body311.lr.ph:                                ; preds = %for.cond308.preheader
  %conv458 = sext i32 %cpl to i64, !dbg !589
  %arrayidx461 = getelementptr inbounds i8* %call69, i64 %conv458, !dbg !592
  %add462 = add nsw i32 %typewidth.7.lcssa, %namewidth.0.lcssa, !dbg !593
  %gc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32, !dbg !594
  %gc_tag482 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 31, !dbg !597
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !598
  %add328 = add i32 %markupwidth.4, %namewidth.0.lcssa, !dbg !601
  %add329 = add i32 %add328, %typewidth.7.lcssa, !dbg !601
  %sqname333 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !601
  %gr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36, !dbg !602
  %gr_tag411 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 35, !dbg !604
  br label %for.body311, !dbg !587

for.body278:                                      ; preds = %for.inc301, %for.cond274.preheader
  %75 = phi i32 [ %73, %for.cond274.preheader ], [ %83, %for.inc301 ]
  %indvars.iv835 = phi i64 [ 0, %for.cond274.preheader ], [ %indvars.iv.next836, %for.inc301 ]
  %76 = load i8**** %gs, align 8, !dbg !581, !tbaa !286
  %arrayidx281 = getelementptr inbounds i8*** %76, i64 %indvars.iv837, !dbg !581
  %77 = load i8*** %arrayidx281, align 8, !dbg !581, !tbaa !286
  %arrayidx282 = getelementptr inbounds i8** %77, i64 %indvars.iv835, !dbg !581
  %78 = load i8** %arrayidx282, align 8, !dbg !581, !tbaa !286
  %cmp283 = icmp eq i8* %78, null, !dbg !581
  br i1 %cmp283, label %for.inc301, label %if.then285, !dbg !581

if.then285:                                       ; preds = %for.body278
  call void @llvm.dbg.value(metadata !{i8* %78}, i64 0, metadata !282), !dbg !606
  store i8* %78, i8** %s, align 8, !dbg !606, !tbaa !286
  %call291796 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i32* null) #6, !dbg !607
  call void @llvm.dbg.value(metadata !{i8* %call291796}, i64 0, metadata !283), !dbg !607
  %cmp292797 = icmp eq i8* %call291796, null, !dbg !607
  br i1 %cmp292797, label %for.inc301.loopexit, label %while.body, !dbg !607

while.body:                                       ; preds = %if.then285, %while.body
  %call291798 = phi i8* [ %call291, %while.body ], [ %call291796, %if.then285 ]
  %79 = load i8*** %sqname295, align 8, !dbg !584, !tbaa !286
  %arrayidx296 = getelementptr inbounds i8** %79, i64 %indvars.iv835, !dbg !584
  %80 = load i8** %arrayidx296, align 8, !dbg !584, !tbaa !286
  %81 = load i8*** %gs_tag, align 8, !dbg !584, !tbaa !286
  %arrayidx298 = getelementptr inbounds i8** %81, i64 %indvars.iv837, !dbg !584
  %82 = load i8** %arrayidx298, align 8, !dbg !584, !tbaa !286
  %call299 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str42, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %80, i8* %82, i8* %call291798) #6, !dbg !584
  %call291 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i32* null) #6, !dbg !607
  call void @llvm.dbg.value(metadata !{i8* %call291798}, i64 0, metadata !283), !dbg !607
  %cmp292 = icmp eq i8* %call291, null, !dbg !607
  br i1 %cmp292, label %for.inc301.loopexit, label %while.body, !dbg !607

for.inc301.loopexit:                              ; preds = %while.body, %if.then285
  %.pre856 = load i32* %nseq, align 4, !dbg !586, !tbaa !375
  br label %for.inc301

for.inc301:                                       ; preds = %for.inc301.loopexit, %for.body278
  %83 = phi i32 [ %.pre856, %for.inc301.loopexit ], [ %75, %for.body278 ], !dbg !586
  %indvars.iv.next836 = add i64 %indvars.iv835, 1, !dbg !586
  %84 = trunc i64 %indvars.iv.next836 to i32, !dbg !586
  %cmp276 = icmp slt i32 %84, %83, !dbg !586
  br i1 %cmp276, label %for.body278, label %for.end303, !dbg !586

for.end303:                                       ; preds = %for.inc301, %for.cond274.preheader
  %fputc778 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !608
  %indvars.iv.next838 = add i64 %indvars.iv837, 1, !dbg !579
  %85 = load i32* %ngs, align 4, !dbg !579, !tbaa !375
  %86 = trunc i64 %indvars.iv.next838 to i32, !dbg !579
  %cmp271 = icmp slt i32 %86, %85, !dbg !579
  br i1 %cmp271, label %for.cond274.preheader, label %for.cond308.preheader, !dbg !579

for.body311:                                      ; preds = %for.body311.lr.ph, %for.inc488
  %indvars.iv833 = phi i64 [ 0, %for.body311.lr.ph ], [ %indvars.iv.next834, %for.inc488 ]
  %87 = trunc i64 %indvars.iv833 to i32, !dbg !609
  %cmp312 = icmp sgt i32 %87, 0, !dbg !609
  br i1 %cmp312, label %if.then314, label %for.cond317.preheader, !dbg !609

if.then314:                                       ; preds = %for.body311
  %fputc775 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !609
  br label %for.cond317.preheader, !dbg !609

for.cond317.preheader:                            ; preds = %for.body311, %if.then314
  %88 = load i32* %nseq, align 4, !dbg !610, !tbaa !375
  %cmp319790 = icmp sgt i32 %88, 0, !dbg !610
  br i1 %cmp319790, label %for.body321, label %for.end420, !dbg !610

for.body321:                                      ; preds = %for.cond317.preheader, %for.inc418
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %for.inc418 ], [ 0, %for.cond317.preheader ]
  %89 = load i8*** %aseq, align 8, !dbg !598, !tbaa !286
  %arrayidx323 = getelementptr inbounds i8** %89, i64 %indvars.iv829, !dbg !598
  %90 = load i8** %arrayidx323, align 8, !dbg !598, !tbaa !286
  %add.ptr = getelementptr inbounds i8* %90, i64 %indvars.iv833, !dbg !598
  %call325 = call i8* @strncpy(i8* %call69, i8* %add.ptr, i64 %conv458) #6, !dbg !598
  store i8 0, i8* %arrayidx461, align 1, !dbg !611, !tbaa !287
  %91 = load i8*** %sqname333, align 8, !dbg !601, !tbaa !286
  %arrayidx334 = getelementptr inbounds i8** %91, i64 %indvars.iv829, !dbg !601
  %92 = load i8** %arrayidx334, align 8, !dbg !601, !tbaa !286
  %call335 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str43, i64 0, i64 0), i32 %add329, i32 %add329, i8* %92, i8* %call69) #6, !dbg !601
  %93 = load i8*** %ss, align 8, !dbg !612, !tbaa !286
  %cmp337 = icmp eq i8** %93, null, !dbg !612
  br i1 %cmp337, label %if.end359, label %land.lhs.true339, !dbg !612

land.lhs.true339:                                 ; preds = %for.body321
  %arrayidx342 = getelementptr inbounds i8** %93, i64 %indvars.iv829, !dbg !612
  %94 = load i8** %arrayidx342, align 8, !dbg !612, !tbaa !286
  %cmp343 = icmp eq i8* %94, null, !dbg !612
  br i1 %cmp343, label %if.end359, label %if.then345, !dbg !612

if.then345:                                       ; preds = %land.lhs.true339
  %add.ptr350 = getelementptr inbounds i8* %94, i64 %indvars.iv833, !dbg !613
  %call352 = call i8* @strncpy(i8* %call69, i8* %add.ptr350, i64 %conv458) #6, !dbg !613
  store i8 0, i8* %arrayidx461, align 1, !dbg !615, !tbaa !287
  %95 = load i8*** %sqname333, align 8, !dbg !616, !tbaa !286
  %arrayidx357 = getelementptr inbounds i8** %95, i64 %indvars.iv829, !dbg !616
  %96 = load i8** %arrayidx357, align 8, !dbg !616, !tbaa !286
  %call358 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str44, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %96, i8* %call69) #6, !dbg !616
  br label %if.end359, !dbg !617

if.end359:                                        ; preds = %land.lhs.true339, %for.body321, %if.then345
  %97 = load i8*** %sa, align 8, !dbg !618, !tbaa !286
  %cmp361 = icmp eq i8** %97, null, !dbg !618
  br i1 %cmp361, label %for.cond384.preheader, label %land.lhs.true363, !dbg !618

land.lhs.true363:                                 ; preds = %if.end359
  %arrayidx366 = getelementptr inbounds i8** %97, i64 %indvars.iv829, !dbg !618
  %98 = load i8** %arrayidx366, align 8, !dbg !618, !tbaa !286
  %cmp367 = icmp eq i8* %98, null, !dbg !618
  br i1 %cmp367, label %for.cond384.preheader, label %if.then369, !dbg !618

if.then369:                                       ; preds = %land.lhs.true363
  %add.ptr374 = getelementptr inbounds i8* %98, i64 %indvars.iv833, !dbg !619
  %call376 = call i8* @strncpy(i8* %call69, i8* %add.ptr374, i64 %conv458) #6, !dbg !619
  store i8 0, i8* %arrayidx461, align 1, !dbg !621, !tbaa !287
  %99 = load i8*** %sqname333, align 8, !dbg !622, !tbaa !286
  %arrayidx381 = getelementptr inbounds i8** %99, i64 %indvars.iv829, !dbg !622
  %100 = load i8** %arrayidx381, align 8, !dbg !622, !tbaa !286
  %call382 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str45, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %100, i8* %call69) #6, !dbg !622
  br label %for.cond384.preheader, !dbg !623

for.cond384.preheader:                            ; preds = %land.lhs.true363, %if.end359, %if.then369
  %101 = load i32* %ngr, align 4, !dbg !624, !tbaa !375
  %cmp386788 = icmp sgt i32 %101, 0, !dbg !624
  br i1 %cmp386788, label %for.body388, label %for.inc418, !dbg !624

for.body388:                                      ; preds = %for.inc415, %for.cond384.preheader
  %102 = phi i32 [ %101, %for.cond384.preheader ], [ %110, %for.inc415 ]
  %indvars.iv = phi i64 [ 0, %for.cond384.preheader ], [ %indvars.iv.next, %for.inc415 ]
  %103 = load i8**** %gr, align 8, !dbg !602, !tbaa !286
  %arrayidx391 = getelementptr inbounds i8*** %103, i64 %indvars.iv, !dbg !602
  %104 = load i8*** %arrayidx391, align 8, !dbg !602, !tbaa !286
  %arrayidx392 = getelementptr inbounds i8** %104, i64 %indvars.iv829, !dbg !602
  %105 = load i8** %arrayidx392, align 8, !dbg !602, !tbaa !286
  %cmp393 = icmp eq i8* %105, null, !dbg !602
  br i1 %cmp393, label %for.inc415, label %if.then395, !dbg !602

if.then395:                                       ; preds = %for.body388
  %add.ptr402 = getelementptr inbounds i8* %105, i64 %indvars.iv833, !dbg !625
  %call404 = call i8* @strncpy(i8* %call69, i8* %add.ptr402, i64 %conv458) #6, !dbg !625
  store i8 0, i8* %arrayidx461, align 1, !dbg !626, !tbaa !287
  %106 = load i8*** %sqname333, align 8, !dbg !604, !tbaa !286
  %arrayidx409 = getelementptr inbounds i8** %106, i64 %indvars.iv829, !dbg !604
  %107 = load i8** %arrayidx409, align 8, !dbg !604, !tbaa !286
  %108 = load i8*** %gr_tag411, align 8, !dbg !604, !tbaa !286
  %arrayidx412 = getelementptr inbounds i8** %108, i64 %indvars.iv, !dbg !604
  %109 = load i8** %arrayidx412, align 8, !dbg !604, !tbaa !286
  %call413 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str46, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %107, i8* %109, i8* %call69) #6, !dbg !604
  %.pre = load i32* %ngr, align 4, !dbg !624, !tbaa !375
  br label %for.inc415, !dbg !627

for.inc415:                                       ; preds = %for.body388, %if.then395
  %110 = phi i32 [ %102, %for.body388 ], [ %.pre, %if.then395 ], !dbg !624
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !624
  %111 = trunc i64 %indvars.iv.next to i32, !dbg !624
  %cmp386 = icmp slt i32 %111, %110, !dbg !624
  br i1 %cmp386, label %for.body388, label %for.inc418, !dbg !624

for.inc418:                                       ; preds = %for.inc415, %for.cond384.preheader
  %indvars.iv.next830 = add i64 %indvars.iv829, 1, !dbg !610
  %112 = load i32* %nseq, align 4, !dbg !610, !tbaa !375
  %113 = trunc i64 %indvars.iv.next830 to i32, !dbg !610
  %cmp319 = icmp slt i32 %113, %112, !dbg !610
  br i1 %cmp319, label %for.body321, label %for.end420, !dbg !610

for.end420:                                       ; preds = %for.inc418, %for.cond317.preheader
  %114 = load i8** %ss_cons, align 8, !dbg !628, !tbaa !286
  %cmp422 = icmp eq i8* %114, null, !dbg !628
  br i1 %cmp422, label %if.end435, label %if.then424, !dbg !628

if.then424:                                       ; preds = %for.end420
  %add.ptr427 = getelementptr inbounds i8* %114, i64 %indvars.iv833, !dbg !629
  %call429 = call i8* @strncpy(i8* %call69, i8* %add.ptr427, i64 %conv458) #6, !dbg !629
  store i8 0, i8* %arrayidx461, align 1, !dbg !631, !tbaa !287
  %call434 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0), i32 %add462, i32 %add462, i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i8* %call69) #6, !dbg !632
  br label %if.end435, !dbg !633

if.end435:                                        ; preds = %for.end420, %if.then424
  %115 = load i8** %sa_cons, align 8, !dbg !634, !tbaa !286
  %cmp437 = icmp eq i8* %115, null, !dbg !634
  br i1 %cmp437, label %if.end450, label %if.then439, !dbg !634

if.then439:                                       ; preds = %if.end435
  %add.ptr442 = getelementptr inbounds i8* %115, i64 %indvars.iv833, !dbg !635
  %call444 = call i8* @strncpy(i8* %call69, i8* %add.ptr442, i64 %conv458) #6, !dbg !635
  store i8 0, i8* %arrayidx461, align 1, !dbg !637, !tbaa !287
  %call449 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0), i32 %add462, i32 %add462, i8* getelementptr inbounds ([8 x i8]* @.str16, i64 0, i64 0), i8* %call69) #6, !dbg !638
  br label %if.end450, !dbg !639

if.end450:                                        ; preds = %if.end435, %if.then439
  %116 = load i8** %rf, align 8, !dbg !640, !tbaa !286
  %cmp452 = icmp eq i8* %116, null, !dbg !640
  br i1 %cmp452, label %for.cond466.preheader, label %if.then454, !dbg !640

if.then454:                                       ; preds = %if.end450
  %add.ptr457 = getelementptr inbounds i8* %116, i64 %indvars.iv833, !dbg !589
  %call459 = call i8* @strncpy(i8* %call69, i8* %add.ptr457, i64 %conv458) #6, !dbg !589
  store i8 0, i8* %arrayidx461, align 1, !dbg !592, !tbaa !287
  %call464 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0), i32 %add462, i32 %add462, i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0), i8* %call69) #6, !dbg !593
  br label %for.cond466.preheader, !dbg !641

for.cond466.preheader:                            ; preds = %if.end450, %if.then454
  %117 = load i32* %ngc, align 4, !dbg !642, !tbaa !375
  %cmp468792 = icmp sgt i32 %117, 0, !dbg !642
  br i1 %cmp468792, label %for.body470, label %for.inc488, !dbg !642

for.body470:                                      ; preds = %for.cond466.preheader, %for.body470
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %for.body470 ], [ 0, %for.cond466.preheader ]
  %118 = load i8*** %gc, align 8, !dbg !594, !tbaa !286
  %arrayidx472 = getelementptr inbounds i8** %118, i64 %indvars.iv831, !dbg !594
  %119 = load i8** %arrayidx472, align 8, !dbg !594, !tbaa !286
  %add.ptr474 = getelementptr inbounds i8* %119, i64 %indvars.iv833, !dbg !594
  %call476 = call i8* @strncpy(i8* %call69, i8* %add.ptr474, i64 %conv458) #6, !dbg !594
  store i8 0, i8* %arrayidx461, align 1, !dbg !643, !tbaa !287
  %120 = load i8*** %gc_tag482, align 8, !dbg !597, !tbaa !286
  %arrayidx483 = getelementptr inbounds i8** %120, i64 %indvars.iv831, !dbg !597
  %121 = load i8** %arrayidx483, align 8, !dbg !597, !tbaa !286
  %call484 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0), i32 %add462, i32 %add462, i8* %121, i8* %call69) #6, !dbg !597
  %indvars.iv.next832 = add i64 %indvars.iv831, 1, !dbg !642
  %122 = load i32* %ngc, align 4, !dbg !642, !tbaa !375
  %123 = trunc i64 %indvars.iv.next832 to i32, !dbg !642
  %cmp468 = icmp slt i32 %123, %122, !dbg !642
  br i1 %cmp468, label %for.body470, label %for.inc488, !dbg !642

for.inc488:                                       ; preds = %for.body470, %for.cond466.preheader
  %indvars.iv.next834 = add i64 %indvars.iv833, %conv458, !dbg !587
  %124 = load i32* %alen, align 4, !dbg !587, !tbaa !375
  %125 = trunc i64 %indvars.iv.next834 to i32, !dbg !587
  %cmp309 = icmp slt i32 %125, %124, !dbg !587
  br i1 %cmp309, label %for.body311, label %for.end490, !dbg !587

for.end490:                                       ; preds = %for.inc488, %for.cond308.preheader
  %126 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str48, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp), !dbg !644
  call void @free(i8* %call69) #6, !dbg !645
  ret void, !dbg !646
}

; Function Attrs: nounwind optsize uwtable
define void @WriteStockholmOneBlock(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !209), !dbg !647
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !210), !dbg !647
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !648
  %0 = load i32* %alen, align 4, !dbg !648, !tbaa !375
  tail call fastcc void @actually_write_stockholm(%struct._IO_FILE* %fp, %struct.msa_struct* %msa, i32 %0) #8, !dbg !648
  ret void, !dbg !649
}

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #3

; Function Attrs: optsize
declare i32 @MSAGetSeqidx(%struct.msa_struct*, i8*, i32) #3

; Function Attrs: optsize
declare i32 @sre_strcat(i8**, i32, i8*, i32) #3

; Function Attrs: optsize
declare void @MSAAddComment(%struct.msa_struct*, i8*) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: optsize
declare void @MSAAppendGR(%struct.msa_struct*, i8*, i32, i8*) #3

; Function Attrs: optsize
declare void @MSAAppendGC(%struct.msa_struct*, i8*, i8*) #3

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #4

; Function Attrs: optsize
declare void @MSASetSeqAccession(%struct.msa_struct*, i32, i8*) #3

; Function Attrs: optsize
declare void @MSASetSeqDescription(%struct.msa_struct*, i32, i8*) #3

; Function Attrs: optsize
declare void @MSAAddGS(%struct.msa_struct*, i8*, i32, i8*) #3

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #3

; Function Attrs: optsize
declare void @MSAAddGF(%struct.msa_struct*, i8*, i8*) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !201, metadata !207, metadata !211, metadata !222, metadata !228, metadata !240, metadata !249, metadata !259, metadata !267}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ReadStockholm", metadata !"ReadStockholm", metadata !"", i32 94, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.msa_struct* (%struct.msafile_struct*)* @ReadStockholm, null, null, metadata !196, i32 95} ; [ DW_TAG_subprogram ] [line 94] [def] [scope 95] [ReadStockholm]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
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
!196 = metadata !{metadata !197, metadata !198, metadata !199, metadata !200}
!197 = metadata !{i32 786689, metadata !4, metadata !"afp", metadata !5, i32 16777310, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [afp] [line 94]
!198 = metadata !{i32 786688, metadata !4, metadata !"msa", metadata !5, i32 96, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msa] [line 96]
!199 = metadata !{i32 786688, metadata !4, metadata !"s", metadata !5, i32 97, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 97]
!200 = metadata !{i32 786688, metadata !4, metadata !"status", metadata !5, i32 98, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 98]
!201 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"WriteStockholm", metadata !"WriteStockholm", metadata !"", i32 177, metadata !202, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.msa_struct*)* @WriteStockholm, null, null, metadata !204, i32 178} ; [ DW_TAG_subprogram ] [line 177] [def] [scope 178] [WriteStockholm]
!202 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!203 = metadata !{null, metadata !92, metadata !8}
!204 = metadata !{metadata !205, metadata !206}
!205 = metadata !{i32 786689, metadata !201, metadata !"fp", metadata !5, i32 16777393, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 177]
!206 = metadata !{i32 786689, metadata !201, metadata !"msa", metadata !5, i32 33554609, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 177]
!207 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"WriteStockholmOneBlock", metadata !"WriteStockholmOneBlock", metadata !"", i32 195, metadata !202, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.msa_struct*)* @WriteStockholmOneBlock, null, null, metadata !208, i32 196} ; [ DW_TAG_subprogram ] [line 195] [def] [scope 196] [WriteStockholmOneBlock]
!208 = metadata !{metadata !209, metadata !210}
!209 = metadata !{i32 786689, metadata !207, metadata !"fp", metadata !5, i32 16777411, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 195]
!210 = metadata !{i32 786689, metadata !207, metadata !"msa", metadata !5, i32 33554627, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 195]
!211 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"parse_sequence", metadata !"parse_sequence", metadata !"", i32 609, metadata !212, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !214, i32 610} ; [ DW_TAG_subprogram ] [line 609] [local] [def] [scope 610] [parse_sequence]
!212 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !213, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!213 = metadata !{metadata !22, metadata !8, metadata !15}
!214 = metadata !{metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221}
!215 = metadata !{i32 786689, metadata !211, metadata !"msa", metadata !5, i32 16777825, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 609]
!216 = metadata !{i32 786689, metadata !211, metadata !"buf", metadata !5, i32 33555041, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 609]
!217 = metadata !{i32 786688, metadata !211, metadata !"s", metadata !5, i32 611, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 611]
!218 = metadata !{i32 786688, metadata !211, metadata !"seqname", metadata !5, i32 612, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seqname] [line 612]
!219 = metadata !{i32 786688, metadata !211, metadata !"text", metadata !5, i32 613, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [text] [line 613]
!220 = metadata !{i32 786688, metadata !211, metadata !"seqidx", metadata !5, i32 614, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seqidx] [line 614]
!221 = metadata !{i32 786688, metadata !211, metadata !"len", metadata !5, i32 615, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 615]
!222 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"parse_comment", metadata !"parse_comment", metadata !"", i32 595, metadata !212, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !223, i32 596} ; [ DW_TAG_subprogram ] [line 595] [local] [def] [scope 596] [parse_comment]
!223 = metadata !{metadata !224, metadata !225, metadata !226, metadata !227}
!224 = metadata !{i32 786689, metadata !222, metadata !"msa", metadata !5, i32 16777811, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 595]
!225 = metadata !{i32 786689, metadata !222, metadata !"buf", metadata !5, i32 33555027, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 595]
!226 = metadata !{i32 786688, metadata !222, metadata !"s", metadata !5, i32 597, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 597]
!227 = metadata !{i32 786688, metadata !222, metadata !"comment", metadata !5, i32 598, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [comment] [line 598]
!228 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"parse_gr", metadata !"parse_gr", metadata !"", i32 536, metadata !212, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !229, i32 537} ; [ DW_TAG_subprogram ] [line 536] [local] [def] [scope 537] [parse_gr]
!229 = metadata !{metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239}
!230 = metadata !{i32 786689, metadata !228, metadata !"msa", metadata !5, i32 16777752, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 536]
!231 = metadata !{i32 786689, metadata !228, metadata !"buf", metadata !5, i32 33554968, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 536]
!232 = metadata !{i32 786688, metadata !228, metadata !"gr", metadata !5, i32 538, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gr] [line 538]
!233 = metadata !{i32 786688, metadata !228, metadata !"seqname", metadata !5, i32 539, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seqname] [line 539]
!234 = metadata !{i32 786688, metadata !228, metadata !"featurename", metadata !5, i32 540, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [featurename] [line 540]
!235 = metadata !{i32 786688, metadata !228, metadata !"text", metadata !5, i32 541, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [text] [line 541]
!236 = metadata !{i32 786688, metadata !228, metadata !"seqidx", metadata !5, i32 542, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seqidx] [line 542]
!237 = metadata !{i32 786688, metadata !228, metadata !"len", metadata !5, i32 543, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 543]
!238 = metadata !{i32 786688, metadata !228, metadata !"j", metadata !5, i32 544, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 544]
!239 = metadata !{i32 786688, metadata !228, metadata !"s", metadata !5, i32 545, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 545]
!240 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"parse_gc", metadata !"parse_gc", metadata !"", i32 507, metadata !212, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !241, i32 508} ; [ DW_TAG_subprogram ] [line 507] [local] [def] [scope 508] [parse_gc]
!241 = metadata !{metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248}
!242 = metadata !{i32 786689, metadata !240, metadata !"msa", metadata !5, i32 16777723, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 507]
!243 = metadata !{i32 786689, metadata !240, metadata !"buf", metadata !5, i32 33554939, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 507]
!244 = metadata !{i32 786688, metadata !240, metadata !"gc", metadata !5, i32 509, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gc] [line 509]
!245 = metadata !{i32 786688, metadata !240, metadata !"featurename", metadata !5, i32 510, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [featurename] [line 510]
!246 = metadata !{i32 786688, metadata !240, metadata !"text", metadata !5, i32 511, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [text] [line 511]
!247 = metadata !{i32 786688, metadata !240, metadata !"s", metadata !5, i32 512, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 512]
!248 = metadata !{i32 786688, metadata !240, metadata !"len", metadata !5, i32 513, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 513]
!249 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"parse_gs", metadata !"parse_gs", metadata !"", i32 464, metadata !212, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !250, i32 465} ; [ DW_TAG_subprogram ] [line 464] [local] [def] [scope 465] [parse_gs]
!250 = metadata !{metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258}
!251 = metadata !{i32 786689, metadata !249, metadata !"msa", metadata !5, i32 16777680, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 464]
!252 = metadata !{i32 786689, metadata !249, metadata !"buf", metadata !5, i32 33554896, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 464]
!253 = metadata !{i32 786688, metadata !249, metadata !"gs", metadata !5, i32 466, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gs] [line 466]
!254 = metadata !{i32 786688, metadata !249, metadata !"seqname", metadata !5, i32 467, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seqname] [line 467]
!255 = metadata !{i32 786688, metadata !249, metadata !"featurename", metadata !5, i32 468, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [featurename] [line 468]
!256 = metadata !{i32 786688, metadata !249, metadata !"text", metadata !5, i32 469, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [text] [line 469]
!257 = metadata !{i32 786688, metadata !249, metadata !"seqidx", metadata !5, i32 470, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seqidx] [line 470]
!258 = metadata !{i32 786688, metadata !249, metadata !"s", metadata !5, i32 471, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 471]
!259 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"parse_gf", metadata !"parse_gf", metadata !"", i32 399, metadata !212, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !260, i32 400} ; [ DW_TAG_subprogram ] [line 399] [local] [def] [scope 400] [parse_gf]
!260 = metadata !{metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266}
!261 = metadata !{i32 786689, metadata !259, metadata !"msa", metadata !5, i32 16777615, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 399]
!262 = metadata !{i32 786689, metadata !259, metadata !"buf", metadata !5, i32 33554831, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 399]
!263 = metadata !{i32 786688, metadata !259, metadata !"gf", metadata !5, i32 401, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gf] [line 401]
!264 = metadata !{i32 786688, metadata !259, metadata !"featurename", metadata !5, i32 402, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [featurename] [line 402]
!265 = metadata !{i32 786688, metadata !259, metadata !"text", metadata !5, i32 403, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [text] [line 403]
!266 = metadata !{i32 786688, metadata !259, metadata !"s", metadata !5, i32 404, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 404]
!267 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"actually_write_stockholm", metadata !"actually_write_stockholm", metadata !"", i32 216, metadata !268, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.msa_struct*, i32)* @actually_write_stockholm, null, null, metadata !270, i32 217} ; [ DW_TAG_subprogram ] [line 216] [local] [def] [scope 217] [actually_write_stockholm]
!268 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !269, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!269 = metadata !{null, metadata !92, metadata !8, metadata !22}
!270 = metadata !{metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283}
!271 = metadata !{i32 786689, metadata !267, metadata !"fp", metadata !5, i32 16777432, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 216]
!272 = metadata !{i32 786689, metadata !267, metadata !"msa", metadata !5, i32 33554648, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 216]
!273 = metadata !{i32 786689, metadata !267, metadata !"cpl", metadata !5, i32 50331864, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cpl] [line 216]
!274 = metadata !{i32 786688, metadata !267, metadata !"i", metadata !5, i32 218, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 218]
!275 = metadata !{i32 786688, metadata !267, metadata !"j", metadata !5, i32 218, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 218]
!276 = metadata !{i32 786688, metadata !267, metadata !"len", metadata !5, i32 219, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 219]
!277 = metadata !{i32 786688, metadata !267, metadata !"namewidth", metadata !5, i32 220, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [namewidth] [line 220]
!278 = metadata !{i32 786688, metadata !267, metadata !"typewidth", metadata !5, i32 221, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [typewidth] [line 221]
!279 = metadata !{i32 786688, metadata !267, metadata !"markupwidth", metadata !5, i32 222, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [markupwidth] [line 222]
!280 = metadata !{i32 786688, metadata !267, metadata !"buf", metadata !5, i32 223, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 223]
!281 = metadata !{i32 786688, metadata !267, metadata !"currpos", metadata !5, i32 224, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [currpos] [line 224]
!282 = metadata !{i32 786688, metadata !267, metadata !"s", metadata !5, i32 225, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 225]
!283 = metadata !{i32 786688, metadata !267, metadata !"tok", metadata !5, i32 225, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tok] [line 225]
!284 = metadata !{i32 94, i32 0, metadata !4, null}
!285 = metadata !{i32 100, i32 0, metadata !4, null}
!286 = metadata !{metadata !"any pointer", metadata !287}
!287 = metadata !{metadata !"omnipotent char", metadata !288}
!288 = metadata !{metadata !"Simple C/C++ TBAA"}
!289 = metadata !{i32 104, i32 0, metadata !4, null}
!290 = metadata !{i32 111, i32 0, metadata !4, null}
!291 = metadata !{i32 112, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !4, i32 111, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!293 = metadata !{i32 113, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !292, i32 112, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!295 = metadata !{i32 114, i32 0, metadata !294, null}
!296 = metadata !{i32 116, i32 0, metadata !4, null}
!297 = metadata !{i32 118, i32 0, metadata !4, null}
!298 = metadata !{i32 119, i32 0, metadata !4, null}
!299 = metadata !{i32 130, i32 0, metadata !4, null}
!300 = metadata !{i32 609, i32 0, metadata !211, metadata !301}
!301 = metadata !{i32 143, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !4, i32 131, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!303 = metadata !{i32 622, i32 0, metadata !211, metadata !301}
!304 = metadata !{i32 625, i32 0, metadata !211, metadata !301}
!305 = metadata !{i32 146, i32 0, metadata !302, null}
!306 = metadata !{i32 399, i32 0, metadata !259, metadata !307}
!307 = metadata !{i32 135, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !302, i32 134, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!309 = metadata !{i32 415, i32 0, metadata !259, metadata !307}
!310 = metadata !{i32 417, i32 0, metadata !259, metadata !307}
!311 = metadata !{i32 419, i32 0, metadata !259, metadata !307}
!312 = metadata !{i32 424, i32 0, metadata !313, metadata !307}
!313 = metadata !{i32 786443, metadata !1, metadata !259, i32 421, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!314 = metadata !{i32 425, i32 0, metadata !313, metadata !307}
!315 = metadata !{i32 427, i32 0, metadata !316, metadata !307}
!316 = metadata !{i32 786443, metadata !1, metadata !313, i32 426, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!317 = metadata !{i32 428, i32 0, metadata !316, metadata !307}
!318 = metadata !{i32 435, i32 0, metadata !319, metadata !307}
!319 = metadata !{i32 786443, metadata !1, metadata !259, i32 432, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!320 = metadata !{i32 436, i32 0, metadata !319, metadata !307}
!321 = metadata !{i32 438, i32 0, metadata !322, metadata !307}
!322 = metadata !{i32 786443, metadata !1, metadata !319, i32 437, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!323 = metadata !{i32 439, i32 0, metadata !322, metadata !307}
!324 = metadata !{i32 446, i32 0, metadata !325, metadata !307}
!325 = metadata !{i32 786443, metadata !1, metadata !259, i32 443, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!326 = metadata !{i32 447, i32 0, metadata !325, metadata !307}
!327 = metadata !{i32 449, i32 0, metadata !328, metadata !307}
!328 = metadata !{i32 786443, metadata !1, metadata !325, i32 448, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!329 = metadata !{i32 450, i32 0, metadata !328, metadata !307}
!330 = metadata !{i32 464, i32 0, metadata !249, metadata !331}
!331 = metadata !{i32 136, i32 0, metadata !308, null}
!332 = metadata !{i32 487, i32 0, metadata !333, metadata !331}
!333 = metadata !{i32 786443, metadata !1, metadata !249, i32 486, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!334 = metadata !{i32 488, i32 0, metadata !333, metadata !331}
!335 = metadata !{i32 507, i32 0, metadata !240, metadata !336}
!336 = metadata !{i32 137, i32 0, metadata !308, null}
!337 = metadata !{i32 521, i32 0, metadata !240, metadata !336}
!338 = metadata !{i32 523, i32 0, metadata !240, metadata !336}
!339 = metadata !{i32 525, i32 0, metadata !240, metadata !336}
!340 = metadata !{i32 536, i32 0, metadata !228, metadata !341}
!341 = metadata !{i32 138, i32 0, metadata !308, null}
!342 = metadata !{i32 559, i32 0, metadata !343, metadata !341}
!343 = metadata !{i32 786443, metadata !1, metadata !228, i32 558, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!344 = metadata !{i32 561, i32 0, metadata !345, metadata !341}
!345 = metadata !{i32 786443, metadata !1, metadata !343, i32 560, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!346 = metadata !{i32 562, i32 0, metadata !345, metadata !341}
!347 = metadata !{i32 573, i32 0, metadata !348, metadata !341}
!348 = metadata !{i32 786443, metadata !1, metadata !228, i32 572, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!349 = metadata !{i32 576, i32 0, metadata !350, metadata !341}
!350 = metadata !{i32 786443, metadata !1, metadata !348, i32 574, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!351 = metadata !{i32 595, i32 0, metadata !222, metadata !352}
!352 = metadata !{i32 139, i32 0, metadata !308, null}
!353 = metadata !{i32 132, i32 0, metadata !302, null}
!354 = metadata !{i32 786689, metadata !259, metadata !"msa", metadata !5, i32 16777615, metadata !8, i32 0, metadata !307} ; [ DW_TAG_arg_variable ] [msa] [line 399]
!355 = metadata !{i32 786689, metadata !259, metadata !"buf", metadata !5, i32 33554831, metadata !15, i32 0, metadata !307} ; [ DW_TAG_arg_variable ] [buf] [line 399]
!356 = metadata !{i32 404, i32 0, metadata !259, metadata !307}
!357 = metadata !{i32 786688, metadata !259, metadata !"s", metadata !5, i32 404, metadata !15, i32 0, metadata !307} ; [ DW_TAG_auto_variable ] [s] [line 404]
!358 = metadata !{i32 406, i32 0, metadata !259, metadata !307}
!359 = metadata !{i32 407, i32 0, metadata !259, metadata !307}
!360 = metadata !{i32 786688, metadata !259, metadata !"gf", metadata !5, i32 401, metadata !15, i32 0, metadata !307} ; [ DW_TAG_auto_variable ] [gf] [line 401]
!361 = metadata !{i32 408, i32 0, metadata !259, metadata !307}
!362 = metadata !{i32 786688, metadata !259, metadata !"featurename", metadata !5, i32 402, metadata !15, i32 0, metadata !307} ; [ DW_TAG_auto_variable ] [featurename] [line 402]
!363 = metadata !{i32 409, i32 0, metadata !259, metadata !307}
!364 = metadata !{i32 786688, metadata !259, metadata !"text", metadata !5, i32 403, metadata !15, i32 0, metadata !307} ; [ DW_TAG_auto_variable ] [text] [line 403]
!365 = metadata !{i32 410, i32 0, metadata !259, metadata !307}
!366 = metadata !{i32 412, i32 0, metadata !259, metadata !307}
!367 = metadata !{i32 413, i32 0, metadata !259, metadata !307}
!368 = metadata !{i32 414, i32 0, metadata !259, metadata !307}
!369 = metadata !{i32 416, i32 0, metadata !259, metadata !307}
!370 = metadata !{i32 418, i32 0, metadata !259, metadata !307}
!371 = metadata !{i32 420, i32 0, metadata !259, metadata !307}
!372 = metadata !{i32 422, i32 0, metadata !313, metadata !307}
!373 = metadata !{i32 423, i32 0, metadata !313, metadata !307}
!374 = metadata !{metadata !"float", metadata !287}
!375 = metadata !{metadata !"int", metadata !287}
!376 = metadata !{i32 426, i32 0, metadata !313, metadata !307}
!377 = metadata !{i32 431, i32 0, metadata !259, metadata !307}
!378 = metadata !{i32 433, i32 0, metadata !319, metadata !307}
!379 = metadata !{i32 434, i32 0, metadata !319, metadata !307}
!380 = metadata !{i32 437, i32 0, metadata !319, metadata !307}
!381 = metadata !{i32 442, i32 0, metadata !259, metadata !307}
!382 = metadata !{i32 444, i32 0, metadata !325, metadata !307}
!383 = metadata !{i32 445, i32 0, metadata !325, metadata !307}
!384 = metadata !{i32 448, i32 0, metadata !325, metadata !307}
!385 = metadata !{i32 454, i32 0, metadata !259, metadata !307}
!386 = metadata !{i32 786689, metadata !249, metadata !"msa", metadata !5, i32 16777680, metadata !8, i32 0, metadata !331} ; [ DW_TAG_arg_variable ] [msa] [line 464]
!387 = metadata !{i32 786689, metadata !249, metadata !"buf", metadata !5, i32 33554896, metadata !15, i32 0, metadata !331} ; [ DW_TAG_arg_variable ] [buf] [line 464]
!388 = metadata !{i32 471, i32 0, metadata !249, metadata !331}
!389 = metadata !{i32 786688, metadata !249, metadata !"s", metadata !5, i32 471, metadata !15, i32 0, metadata !331} ; [ DW_TAG_auto_variable ] [s] [line 471]
!390 = metadata !{i32 473, i32 0, metadata !249, metadata !331}
!391 = metadata !{i32 474, i32 0, metadata !249, metadata !331}
!392 = metadata !{i32 786688, metadata !249, metadata !"gs", metadata !5, i32 466, metadata !15, i32 0, metadata !331} ; [ DW_TAG_auto_variable ] [gs] [line 466]
!393 = metadata !{i32 475, i32 0, metadata !249, metadata !331}
!394 = metadata !{i32 786688, metadata !249, metadata !"seqname", metadata !5, i32 467, metadata !15, i32 0, metadata !331} ; [ DW_TAG_auto_variable ] [seqname] [line 467]
!395 = metadata !{i32 476, i32 0, metadata !249, metadata !331}
!396 = metadata !{i32 786688, metadata !249, metadata !"featurename", metadata !5, i32 468, metadata !15, i32 0, metadata !331} ; [ DW_TAG_auto_variable ] [featurename] [line 468]
!397 = metadata !{i32 477, i32 0, metadata !249, metadata !331}
!398 = metadata !{i32 786688, metadata !249, metadata !"text", metadata !5, i32 469, metadata !15, i32 0, metadata !331} ; [ DW_TAG_auto_variable ] [text] [line 469]
!399 = metadata !{i32 478, i32 0, metadata !249, metadata !331}
!400 = metadata !{i32 482, i32 0, metadata !249, metadata !331}
!401 = metadata !{i32 786688, metadata !249, metadata !"seqidx", metadata !5, i32 470, metadata !22, i32 0, metadata !331} ; [ DW_TAG_auto_variable ] [seqidx] [line 470]
!402 = metadata !{i32 483, i32 0, metadata !249, metadata !331}
!403 = metadata !{i32 485, i32 0, metadata !249, metadata !331}
!404 = metadata !{i32 491, i32 0, metadata !249, metadata !331}
!405 = metadata !{i32 492, i32 0, metadata !249, metadata !331}
!406 = metadata !{i32 494, i32 0, metadata !249, metadata !331}
!407 = metadata !{i32 495, i32 0, metadata !249, metadata !331}
!408 = metadata !{i32 498, i32 0, metadata !249, metadata !331}
!409 = metadata !{i32 786689, metadata !240, metadata !"msa", metadata !5, i32 16777723, metadata !8, i32 0, metadata !336} ; [ DW_TAG_arg_variable ] [msa] [line 507]
!410 = metadata !{i32 786689, metadata !240, metadata !"buf", metadata !5, i32 33554939, metadata !15, i32 0, metadata !336} ; [ DW_TAG_arg_variable ] [buf] [line 507]
!411 = metadata !{i32 512, i32 0, metadata !240, metadata !336}
!412 = metadata !{i32 513, i32 0, metadata !240, metadata !336}
!413 = metadata !{i32 786688, metadata !240, metadata !"s", metadata !5, i32 512, metadata !15, i32 0, metadata !336} ; [ DW_TAG_auto_variable ] [s] [line 512]
!414 = metadata !{i32 515, i32 0, metadata !240, metadata !336}
!415 = metadata !{i32 516, i32 0, metadata !240, metadata !336}
!416 = metadata !{i32 786688, metadata !240, metadata !"gc", metadata !5, i32 509, metadata !15, i32 0, metadata !336} ; [ DW_TAG_auto_variable ] [gc] [line 509]
!417 = metadata !{i32 517, i32 0, metadata !240, metadata !336}
!418 = metadata !{i32 786688, metadata !240, metadata !"featurename", metadata !5, i32 510, metadata !15, i32 0, metadata !336} ; [ DW_TAG_auto_variable ] [featurename] [line 510]
!419 = metadata !{i32 518, i32 0, metadata !240, metadata !336}
!420 = metadata !{i32 786688, metadata !240, metadata !"text", metadata !5, i32 511, metadata !15, i32 0, metadata !336} ; [ DW_TAG_auto_variable ] [text] [line 511]
!421 = metadata !{i32 520, i32 0, metadata !240, metadata !336}
!422 = metadata !{i32 786688, metadata !240, metadata !"len", metadata !5, i32 513, metadata !22, i32 0, metadata !336} ; [ DW_TAG_auto_variable ] [len] [line 513]
!423 = metadata !{i32 522, i32 0, metadata !240, metadata !336}
!424 = metadata !{i32 524, i32 0, metadata !240, metadata !336}
!425 = metadata !{i32 527, i32 0, metadata !240, metadata !336}
!426 = metadata !{i32 786689, metadata !228, metadata !"msa", metadata !5, i32 16777752, metadata !8, i32 0, metadata !341} ; [ DW_TAG_arg_variable ] [msa] [line 536]
!427 = metadata !{i32 786689, metadata !228, metadata !"buf", metadata !5, i32 33554968, metadata !15, i32 0, metadata !341} ; [ DW_TAG_arg_variable ] [buf] [line 536]
!428 = metadata !{i32 543, i32 0, metadata !228, metadata !341}
!429 = metadata !{i32 545, i32 0, metadata !228, metadata !341}
!430 = metadata !{i32 786688, metadata !228, metadata !"s", metadata !5, i32 545, metadata !15, i32 0, metadata !341} ; [ DW_TAG_auto_variable ] [s] [line 545]
!431 = metadata !{i32 547, i32 0, metadata !228, metadata !341}
!432 = metadata !{i32 548, i32 0, metadata !228, metadata !341}
!433 = metadata !{i32 786688, metadata !228, metadata !"gr", metadata !5, i32 538, metadata !15, i32 0, metadata !341} ; [ DW_TAG_auto_variable ] [gr] [line 538]
!434 = metadata !{i32 549, i32 0, metadata !228, metadata !341}
!435 = metadata !{i32 786688, metadata !228, metadata !"seqname", metadata !5, i32 539, metadata !15, i32 0, metadata !341} ; [ DW_TAG_auto_variable ] [seqname] [line 539]
!436 = metadata !{i32 550, i32 0, metadata !228, metadata !341}
!437 = metadata !{i32 786688, metadata !228, metadata !"featurename", metadata !5, i32 540, metadata !15, i32 0, metadata !341} ; [ DW_TAG_auto_variable ] [featurename] [line 540]
!438 = metadata !{i32 551, i32 0, metadata !228, metadata !341}
!439 = metadata !{i32 786688, metadata !228, metadata !"text", metadata !5, i32 541, metadata !15, i32 0, metadata !341} ; [ DW_TAG_auto_variable ] [text] [line 541]
!440 = metadata !{i32 554, i32 0, metadata !228, metadata !341}
!441 = metadata !{i32 786688, metadata !228, metadata !"seqidx", metadata !5, i32 542, metadata !22, i32 0, metadata !341} ; [ DW_TAG_auto_variable ] [seqidx] [line 542]
!442 = metadata !{i32 555, i32 0, metadata !228, metadata !341}
!443 = metadata !{i32 557, i32 0, metadata !228, metadata !341}
!444 = metadata !{i32 569, i32 0, metadata !343, metadata !341}
!445 = metadata !{i32 786688, metadata !228, metadata !"j", metadata !5, i32 544, metadata !22, i32 0, metadata !341} ; [ DW_TAG_auto_variable ] [j] [line 544]
!446 = metadata !{i32 563, i32 0, metadata !447, metadata !341}
!447 = metadata !{i32 786443, metadata !1, metadata !345, i32 563, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!448 = metadata !{i32 565, i32 0, metadata !449, metadata !341}
!449 = metadata !{i32 786443, metadata !1, metadata !447, i32 564, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!450 = metadata !{i32 566, i32 0, metadata !449, metadata !341}
!451 = metadata !{i32 786688, metadata !228, metadata !"len", metadata !5, i32 543, metadata !22, i32 0, metadata !341} ; [ DW_TAG_auto_variable ] [len] [line 543]
!452 = metadata !{i32 571, i32 0, metadata !228, metadata !341}
!453 = metadata !{i32 583, i32 0, metadata !348, metadata !341}
!454 = metadata !{i32 575, i32 0, metadata !350, metadata !341}
!455 = metadata !{i32 577, i32 0, metadata !456, metadata !341}
!456 = metadata !{i32 786443, metadata !1, metadata !350, i32 577, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!457 = metadata !{i32 579, i32 0, metadata !458, metadata !341}
!458 = metadata !{i32 786443, metadata !1, metadata !456, i32 578, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!459 = metadata !{i32 580, i32 0, metadata !458, metadata !341}
!460 = metadata !{i32 586, i32 0, metadata !228, metadata !341}
!461 = metadata !{i32 786689, metadata !222, metadata !"msa", metadata !5, i32 16777811, metadata !8, i32 0, metadata !352} ; [ DW_TAG_arg_variable ] [msa] [line 595]
!462 = metadata !{i32 786689, metadata !222, metadata !"buf", metadata !5, i32 33555027, metadata !15, i32 0, metadata !352} ; [ DW_TAG_arg_variable ] [buf] [line 595]
!463 = metadata !{i32 597, i32 0, metadata !222, metadata !352}
!464 = metadata !{i32 600, i32 0, metadata !222, metadata !352}
!465 = metadata !{i32 786688, metadata !222, metadata !"s", metadata !5, i32 597, metadata !15, i32 0, metadata !352} ; [ DW_TAG_auto_variable ] [s] [line 597]
!466 = metadata !{i32 601, i32 0, metadata !222, metadata !352}
!467 = metadata !{i32 601, i32 0, metadata !468, metadata !352}
!468 = metadata !{i32 786443, metadata !1, metadata !222, i32 601, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!469 = metadata !{i32 786688, metadata !222, metadata !"comment", metadata !5, i32 598, metadata !15, i32 0, metadata !352} ; [ DW_TAG_auto_variable ] [comment] [line 598]
!470 = metadata !{i32 602, i32 0, metadata !222, metadata !352}
!471 = metadata !{i32 604, i32 0, metadata !222, metadata !352}
!472 = metadata !{i32 141, i32 0, metadata !302, null}
!473 = metadata !{i32 142, i32 0, metadata !302, null}
!474 = metadata !{i32 786689, metadata !211, metadata !"msa", metadata !5, i32 16777825, metadata !8, i32 0, metadata !301} ; [ DW_TAG_arg_variable ] [msa] [line 609]
!475 = metadata !{i32 786689, metadata !211, metadata !"buf", metadata !5, i32 33555041, metadata !15, i32 0, metadata !301} ; [ DW_TAG_arg_variable ] [buf] [line 609]
!476 = metadata !{i32 611, i32 0, metadata !211, metadata !301}
!477 = metadata !{i32 615, i32 0, metadata !211, metadata !301}
!478 = metadata !{i32 786688, metadata !211, metadata !"s", metadata !5, i32 611, metadata !15, i32 0, metadata !301} ; [ DW_TAG_auto_variable ] [s] [line 611]
!479 = metadata !{i32 617, i32 0, metadata !211, metadata !301}
!480 = metadata !{i32 618, i32 0, metadata !211, metadata !301}
!481 = metadata !{i32 786688, metadata !211, metadata !"seqname", metadata !5, i32 612, metadata !15, i32 0, metadata !301} ; [ DW_TAG_auto_variable ] [seqname] [line 612]
!482 = metadata !{i32 619, i32 0, metadata !211, metadata !301}
!483 = metadata !{i32 786688, metadata !211, metadata !"text", metadata !5, i32 613, metadata !15, i32 0, metadata !301} ; [ DW_TAG_auto_variable ] [text] [line 613]
!484 = metadata !{i32 786688, metadata !211, metadata !"seqidx", metadata !5, i32 614, metadata !22, i32 0, metadata !301} ; [ DW_TAG_auto_variable ] [seqidx] [line 614]
!485 = metadata !{i32 623, i32 0, metadata !211, metadata !301}
!486 = metadata !{i32 786688, metadata !211, metadata !"len", metadata !5, i32 615, metadata !22, i32 0, metadata !301} ; [ DW_TAG_auto_variable ] [len] [line 615]
!487 = metadata !{i32 150, i32 0, metadata !4, null}
!488 = metadata !{i32 151, i32 0, metadata !4, null}
!489 = metadata !{i32 153, i32 0, metadata !4, null}
!490 = metadata !{i32 155, i32 0, metadata !491, null}
!491 = metadata !{i32 786443, metadata !1, metadata !4, i32 153, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!492 = metadata !{i32 156, i32 0, metadata !491, null}
!493 = metadata !{i32 159, i32 0, metadata !4, null}
!494 = metadata !{i32 160, i32 0, metadata !4, null}
!495 = metadata !{i32 161, i32 0, metadata !4, null}
!496 = metadata !{i32 177, i32 0, metadata !201, null}
!497 = metadata !{i32 179, i32 0, metadata !201, null}
!498 = metadata !{i32 180, i32 0, metadata !201, null}
!499 = metadata !{i32 216, i32 0, metadata !267, null}
!500 = metadata !{i32 219, i32 0, metadata !267, null}
!501 = metadata !{i32 221, i32 0, metadata !267, null}
!502 = metadata !{i32 222, i32 0, metadata !267, null}
!503 = metadata !{i32 225, i32 0, metadata !267, null}
!504 = metadata !{i32 231, i32 0, metadata !267, null}
!505 = metadata !{i32 232, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !267, i32 232, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!507 = metadata !{i32 233, i32 0, metadata !506, null}
!508 = metadata !{i32 234, i32 0, metadata !506, null}
!509 = metadata !{i32 240, i32 0, metadata !267, null}
!510 = metadata !{i32 4}
!511 = metadata !{i32 240, i32 0, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !267, i32 240, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!513 = metadata !{i32 2}
!514 = metadata !{i32 241, i32 0, metadata !267, null}
!515 = metadata !{i32 241, i32 0, metadata !516, null}
!516 = metadata !{i32 786443, metadata !1, metadata !267, i32 241, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!517 = metadata !{i32 242, i32 0, metadata !518, null}
!518 = metadata !{i32 786443, metadata !1, metadata !267, i32 242, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!519 = metadata !{i32 243, i32 0, metadata !518, null}
!520 = metadata !{i32 245, i32 0, metadata !267, null}
!521 = metadata !{i32 245, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !267, i32 245, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!523 = metadata !{i32 246, i32 0, metadata !267, null}
!524 = metadata !{i32 246, i32 0, metadata !525, null}
!525 = metadata !{i32 786443, metadata !1, metadata !267, i32 246, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!526 = metadata !{i32 7}
!527 = metadata !{i32 247, i32 0, metadata !267, null}
!528 = metadata !{i32 247, i32 0, metadata !529, null}
!529 = metadata !{i32 786443, metadata !1, metadata !267, i32 247, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!530 = metadata !{i32 248, i32 0, metadata !531, null}
!531 = metadata !{i32 786443, metadata !1, metadata !267, i32 248, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!532 = metadata !{i32 249, i32 0, metadata !531, null}
!533 = metadata !{i32 251, i32 0, metadata !267, null}
!534 = metadata !{i32 255, i32 0, metadata !267, null}
!535 = metadata !{i32 259, i32 0, metadata !536, null}
!536 = metadata !{i32 786443, metadata !1, metadata !267, i32 259, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!537 = metadata !{i32 260, i32 0, metadata !536, null}
!538 = metadata !{i32 261, i32 0, metadata !267, null}
!539 = metadata !{i32 265, i32 0, metadata !267, null}
!540 = metadata !{i32 266, i32 0, metadata !267, null}
!541 = metadata !{i32 267, i32 0, metadata !267, null}
!542 = metadata !{i32 268, i32 0, metadata !267, null}
!543 = metadata !{i32 272, i32 0, metadata !267, null}
!544 = metadata !{i32 275, i32 0, metadata !267, null}
!545 = metadata !{i32 273, i32 0, metadata !267, null}
!546 = metadata !{i32 276, i32 0, metadata !267, null}
!547 = metadata !{i32 279, i32 0, metadata !267, null}
!548 = metadata !{i32 277, i32 0, metadata !267, null}
!549 = metadata !{i32 280, i32 0, metadata !267, null}
!550 = metadata !{i32 283, i32 0, metadata !267, null}
!551 = metadata !{i32 281, i32 0, metadata !267, null}
!552 = metadata !{i32 285, i32 0, metadata !553, null}
!553 = metadata !{i32 786443, metadata !1, metadata !267, i32 285, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!554 = metadata !{i32 286, i32 0, metadata !553, null}
!555 = metadata !{i32 287, i32 0, metadata !267, null}
!556 = metadata !{i32 292, i32 0, metadata !267, null}
!557 = metadata !{i32 294, i32 0, metadata !558, null}
!558 = metadata !{i32 786443, metadata !1, metadata !559, i32 294, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!559 = metadata !{i32 786443, metadata !1, metadata !267, i32 293, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!560 = metadata !{i32 295, i32 0, metadata !558, null}
!561 = metadata !{i32 296, i32 0, metadata !559, null}
!562 = metadata !{i32 297, i32 0, metadata !559, null}
!563 = metadata !{i32 298, i32 0, metadata !267, null}
!564 = metadata !{i32 300, i32 0, metadata !565, null}
!565 = metadata !{i32 786443, metadata !1, metadata !566, i32 300, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!566 = metadata !{i32 786443, metadata !1, metadata !267, i32 299, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!567 = metadata !{i32 302, i32 0, metadata !565, null}
!568 = metadata !{i32 301, i32 0, metadata !565, null}
!569 = metadata !{i32 303, i32 0, metadata !566, null}
!570 = metadata !{i32 304, i32 0, metadata !566, null}
!571 = metadata !{i32 305, i32 0, metadata !267, null}
!572 = metadata !{i32 307, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !574, i32 307, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!574 = metadata !{i32 786443, metadata !1, metadata !267, i32 306, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!575 = metadata !{i32 309, i32 0, metadata !573, null}
!576 = metadata !{i32 308, i32 0, metadata !573, null}
!577 = metadata !{i32 310, i32 0, metadata !574, null}
!578 = metadata !{i32 311, i32 0, metadata !574, null}
!579 = metadata !{i32 312, i32 0, metadata !580, null}
!580 = metadata !{i32 786443, metadata !1, metadata !267, i32 312, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!581 = metadata !{i32 322, i32 0, metadata !582, null}
!582 = metadata !{i32 786443, metadata !1, metadata !583, i32 321, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!583 = metadata !{i32 786443, metadata !1, metadata !580, i32 313, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!584 = metadata !{i32 326, i32 0, metadata !585, null}
!585 = metadata !{i32 786443, metadata !1, metadata !582, i32 323, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!586 = metadata !{i32 321, i32 0, metadata !582, null}
!587 = metadata !{i32 335, i32 0, metadata !588, null}
!588 = metadata !{i32 786443, metadata !1, metadata !267, i32 335, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!589 = metadata !{i32 376, i32 0, metadata !590, null}
!590 = metadata !{i32 786443, metadata !1, metadata !591, i32 375, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!591 = metadata !{i32 786443, metadata !1, metadata !588, i32 336, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!592 = metadata !{i32 377, i32 0, metadata !590, null}
!593 = metadata !{i32 378, i32 0, metadata !590, null}
!594 = metadata !{i32 381, i32 0, metadata !595, null}
!595 = metadata !{i32 786443, metadata !1, metadata !596, i32 380, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!596 = metadata !{i32 786443, metadata !1, metadata !591, i32 380, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!597 = metadata !{i32 383, i32 0, metadata !595, null}
!598 = metadata !{i32 340, i32 0, metadata !599, null}
!599 = metadata !{i32 786443, metadata !1, metadata !600, i32 339, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!600 = metadata !{i32 786443, metadata !1, metadata !591, i32 338, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!601 = metadata !{i32 342, i32 0, metadata !599, null}
!602 = metadata !{i32 356, i32 0, metadata !603, null}
!603 = metadata !{i32 786443, metadata !1, metadata !599, i32 355, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!604 = metadata !{i32 359, i32 0, metadata !605, null}
!605 = metadata !{i32 786443, metadata !1, metadata !603, i32 356, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!606 = metadata !{i32 324, i32 0, metadata !585, null}
!607 = metadata !{i32 325, i32 0, metadata !585, null}
!608 = metadata !{i32 329, i32 0, metadata !583, null}
!609 = metadata !{i32 337, i32 0, metadata !591, null}
!610 = metadata !{i32 338, i32 0, metadata !600, null}
!611 = metadata !{i32 341, i32 0, metadata !599, null}
!612 = metadata !{i32 345, i32 0, metadata !599, null}
!613 = metadata !{i32 346, i32 0, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !599, i32 345, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!615 = metadata !{i32 347, i32 0, metadata !614, null}
!616 = metadata !{i32 348, i32 0, metadata !614, null}
!617 = metadata !{i32 349, i32 0, metadata !614, null}
!618 = metadata !{i32 350, i32 0, metadata !599, null}
!619 = metadata !{i32 351, i32 0, metadata !620, null}
!620 = metadata !{i32 786443, metadata !1, metadata !599, i32 350, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!621 = metadata !{i32 352, i32 0, metadata !620, null}
!622 = metadata !{i32 353, i32 0, metadata !620, null}
!623 = metadata !{i32 354, i32 0, metadata !620, null}
!624 = metadata !{i32 355, i32 0, metadata !603, null}
!625 = metadata !{i32 357, i32 0, metadata !605, null}
!626 = metadata !{i32 358, i32 0, metadata !605, null}
!627 = metadata !{i32 361, i32 0, metadata !605, null}
!628 = metadata !{i32 363, i32 0, metadata !591, null}
!629 = metadata !{i32 364, i32 0, metadata !630, null}
!630 = metadata !{i32 786443, metadata !1, metadata !591, i32 363, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!631 = metadata !{i32 365, i32 0, metadata !630, null}
!632 = metadata !{i32 366, i32 0, metadata !630, null}
!633 = metadata !{i32 367, i32 0, metadata !630, null}
!634 = metadata !{i32 369, i32 0, metadata !591, null}
!635 = metadata !{i32 370, i32 0, metadata !636, null}
!636 = metadata !{i32 786443, metadata !1, metadata !591, i32 369, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/stockholm.c]
!637 = metadata !{i32 371, i32 0, metadata !636, null}
!638 = metadata !{i32 372, i32 0, metadata !636, null}
!639 = metadata !{i32 373, i32 0, metadata !636, null}
!640 = metadata !{i32 375, i32 0, metadata !591, null}
!641 = metadata !{i32 379, i32 0, metadata !590, null}
!642 = metadata !{i32 380, i32 0, metadata !596, null}
!643 = metadata !{i32 382, i32 0, metadata !595, null}
!644 = metadata !{i32 387, i32 0, metadata !267, null}
!645 = metadata !{i32 388, i32 0, metadata !267, null}
!646 = metadata !{i32 389, i32 0, metadata !267, null}
!647 = metadata !{i32 195, i32 0, metadata !207, null}
!648 = metadata !{i32 197, i32 0, metadata !207, null}
!649 = metadata !{i32 198, i32 0, metadata !207, null}
