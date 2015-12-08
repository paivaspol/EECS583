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
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0
  %0 = load %struct._IO_FILE** %f, align 8, !tbaa !0
  %call = call i32 @feof(%struct._IO_FILE* %0) #5
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.msa_struct* @MSAAlloc(i32 10, i32 0) #5
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %call2 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #5
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %if.then3, label %do.cond

if.then3:                                         ; preds = %do.body
  call void @MSAFree(%struct.msa_struct* %call1) #5
  br label %return

do.cond:                                          ; preds = %do.body
  %call5 = call i32 @IsBlankline(i8* %call2) #5
  %tobool6 = icmp eq i32 %call5, 0
  br i1 %tobool6, label %do.end, label %do.body

do.end:                                           ; preds = %do.cond
  %call7 = call i32 @strncmp(i8* %call2, i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i64 14) #6
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %while.cond.preheader, label %if.then9

if.then9:                                         ; preds = %do.end
  %fname = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1
  %1 = load i8** %fname, align 8, !tbaa !0
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([334 x i8]* @.str1, i64 0, i64 0), i8* %1) #5
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then9, %do.end
  %call11264 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #5
  %cmp12265 = icmp eq i8* %call11264, null
  br i1 %cmp12265, label %land.lhs.true, label %while.cond13.preheader.lr.ph

while.cond13.preheader.lr.ph:                     ; preds = %while.cond.preheader
  %2 = bitcast i8** %s.i203 to i8*
  %3 = bitcast i32* %len.i204 to i8*
  %lastidx.i210 = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 45
  %aseq.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 0
  %sqlen.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 42
  %linenumber = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 2
  %fname70 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1
  %name = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 7
  %4 = bitcast i8** %s.i to i8*
  %acc.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 9
  %desc.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 8
  %au.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 10
  %arrayidx.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 18, i64 2
  %arrayidx49.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 19, i64 2
  %arrayidx57.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 18, i64 3
  %arrayidx59.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 19, i64 3
  %arrayidx74.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 18, i64 4
  %arrayidx76.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 19, i64 4
  %arrayidx84.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 18, i64 5
  %arrayidx86.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 19, i64 5
  %arrayidx101.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 18, i64 0
  %arrayidx103.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 19, i64 0
  %arrayidx111.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 18, i64 1
  %arrayidx113.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 19, i64 1
  %5 = bitcast i8** %s.i134 to i8*
  %wgt.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 2
  %flags.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 5
  %6 = bitcast i8** %s.i156 to i8*
  %7 = bitcast i32* %len.i to i8*
  %ss_cons.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 11
  %sa_cons.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 12
  %rf.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 13
  %8 = bitcast i32* %len.i171 to i8*
  %9 = bitcast i8** %s.i172 to i8*
  %ss.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 16
  %nseqalloc.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 40
  %sslen.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 43
  %sa.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 17
  %salen.i = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 44
  %10 = bitcast i8** %s.i197 to i8*
  br label %while.cond13

while.cond13:                                     ; preds = %while.cond.backedge, %while.cond13.preheader.lr.ph, %while.body19
  %s.0 = phi i8* [ %incdec.ptr, %while.body19 ], [ %call11264, %while.cond13.preheader.lr.ph ], [ %call11, %while.cond.backedge ]
  %11 = load i8* %s.0, align 1, !tbaa !1
  switch i8 %11, label %if.else52 [
    i8 32, label %while.body19
    i8 9, label %while.body19
    i8 35, label %if.then23
  ]

while.body19:                                     ; preds = %while.cond13, %while.cond13
  %incdec.ptr = getelementptr inbounds i8* %s.0, i64 1
  br label %while.cond13

if.then23:                                        ; preds = %while.cond13
  %call24 = call i32 @strncmp(i8* %s.0, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i64 4) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then23
  call void @llvm.lifetime.start(i64 8, i8* %4) #4
  store i8* %s.0, i8** %s.i, align 8, !tbaa !0
  %call.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp.i = icmp eq i8* %call.i, null
  br i1 %cmp.i, label %if.then69, label %if.end.i

if.end.i:                                         ; preds = %if.then27
  %call1.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp2.i = icmp eq i8* %call1.i, null
  br i1 %cmp2.i, label %if.then69, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i32* null) #5
  %cmp6.i = icmp eq i8* %call5.i, null
  br i1 %cmp6.i, label %if.then69, label %while.cond.i

while.cond.i:                                     ; preds = %if.end4.i, %while.body.i
  %text.0.i = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %call5.i, %if.end4.i ]
  %12 = load i8* %text.0.i, align 1, !tbaa !1
  switch i8 %12, label %while.end.i [
    i8 9, label %while.body.i
    i8 32, label %while.body.i
  ]

while.body.i:                                     ; preds = %while.cond.i, %while.cond.i
  %incdec.ptr.i = getelementptr inbounds i8* %text.0.i, i64 1
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %call15.i = call i32 @strcmp(i8* %call1.i, i8* getelementptr inbounds ([3 x i8]* @.str21, i64 0, i64 0)) #6
  %cmp16.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %while.end.i
  %call19.i = call i8* @sre_strdup(i8* %text.0.i, i32 -1) #5
  store i8* %call19.i, i8** %name, align 8, !tbaa !0
  br label %while.cond.backedge

if.else.i:                                        ; preds = %while.end.i
  %call20.i = call i32 @strcmp(i8* %call1.i, i8* getelementptr inbounds ([3 x i8]* @.str19, i64 0, i64 0)) #6
  %cmp21.i = icmp eq i32 %call20.i, 0
  br i1 %cmp21.i, label %if.then23.i, label %if.else25.i

if.then23.i:                                      ; preds = %if.else.i
  %call24.i = call i8* @sre_strdup(i8* %text.0.i, i32 -1) #5
  store i8* %call24.i, i8** %acc.i, align 8, !tbaa !0
  br label %while.cond.backedge

if.else25.i:                                      ; preds = %if.else.i
  %call26.i = call i32 @strcmp(i8* %call1.i, i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0)) #6
  %cmp27.i = icmp eq i32 %call26.i, 0
  br i1 %cmp27.i, label %if.then29.i, label %if.else31.i

if.then29.i:                                      ; preds = %if.else25.i
  %call30.i = call i8* @sre_strdup(i8* %text.0.i, i32 -1) #5
  store i8* %call30.i, i8** %desc.i, align 8, !tbaa !0
  br label %while.cond.backedge

if.else31.i:                                      ; preds = %if.else25.i
  %call32.i = call i32 @strcmp(i8* %call1.i, i8* getelementptr inbounds ([3 x i8]* @.str22, i64 0, i64 0)) #6
  %cmp33.i = icmp eq i32 %call32.i, 0
  br i1 %cmp33.i, label %if.then35.i, label %if.else37.i

if.then35.i:                                      ; preds = %if.else31.i
  %call36.i = call i8* @sre_strdup(i8* %text.0.i, i32 -1) #5
  store i8* %call36.i, i8** %au.i, align 8, !tbaa !0
  br label %while.cond.backedge

if.else37.i:                                      ; preds = %if.else31.i
  %call38.i = call i32 @strcmp(i8* %call1.i, i8* getelementptr inbounds ([3 x i8]* @.str23, i64 0, i64 0)) #6
  %cmp39.i = icmp eq i32 %call38.i, 0
  br i1 %cmp39.i, label %if.then41.i, label %if.else61.i

if.then41.i:                                      ; preds = %if.else37.i
  store i8* %text.0.i, i8** %s.i, align 8, !tbaa !0
  %call42.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp43.i = icmp eq i8* %call42.i, null
  br i1 %cmp43.i, label %if.then69, label %if.end46.i

if.end46.i:                                       ; preds = %if.then41.i
  %call47.i = call double @atof(i8* %call42.i) #6
  %conv48.i = fptrunc double %call47.i to float
  store float %conv48.i, float* %arrayidx.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx49.i, align 4, !tbaa !4
  %call50.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp51.i = icmp eq i8* %call50.i, null
  br i1 %cmp51.i, label %while.cond.backedge, label %if.then53.i

if.then53.i:                                      ; preds = %if.end46.i
  %call54.i = call double @atof(i8* %call50.i) #6
  %conv55.i = fptrunc double %call54.i to float
  store float %conv55.i, float* %arrayidx57.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx59.i, align 4, !tbaa !4
  br label %while.cond.backedge

if.else61.i:                                      ; preds = %if.else37.i
  %call62.i = call i32 @strcmp(i8* %call1.i, i8* getelementptr inbounds ([3 x i8]* @.str24, i64 0, i64 0)) #6
  %cmp63.i = icmp eq i32 %call62.i, 0
  br i1 %cmp63.i, label %if.then65.i, label %if.else88.i

if.then65.i:                                      ; preds = %if.else61.i
  store i8* %text.0.i, i8** %s.i, align 8, !tbaa !0
  %call66.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp67.i = icmp eq i8* %call66.i, null
  br i1 %cmp67.i, label %if.then69, label %if.end70.i

if.end70.i:                                       ; preds = %if.then65.i
  %call71.i = call double @atof(i8* %call66.i) #6
  %conv72.i = fptrunc double %call71.i to float
  store float %conv72.i, float* %arrayidx74.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx76.i, align 4, !tbaa !4
  %call77.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp78.i = icmp eq i8* %call77.i, null
  br i1 %cmp78.i, label %while.cond.backedge, label %if.then80.i

if.then80.i:                                      ; preds = %if.end70.i
  %call81.i = call double @atof(i8* %call77.i) #6
  %conv82.i = fptrunc double %call81.i to float
  store float %conv82.i, float* %arrayidx84.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx86.i, align 4, !tbaa !4
  br label %while.cond.backedge

if.else88.i:                                      ; preds = %if.else61.i
  %call89.i = call i32 @strcmp(i8* %call1.i, i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0)) #6
  %cmp90.i = icmp eq i32 %call89.i, 0
  br i1 %cmp90.i, label %if.then92.i, label %if.else115.i

if.then92.i:                                      ; preds = %if.else88.i
  store i8* %text.0.i, i8** %s.i, align 8, !tbaa !0
  %call93.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp94.i = icmp eq i8* %call93.i, null
  br i1 %cmp94.i, label %if.then69, label %if.end97.i

if.end97.i:                                       ; preds = %if.then92.i
  %call98.i = call double @atof(i8* %call93.i) #6
  %conv99.i = fptrunc double %call98.i to float
  store float %conv99.i, float* %arrayidx101.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx103.i, align 4, !tbaa !4
  %call104.i = call i8* @sre_strtok(i8** %s.i, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp105.i = icmp eq i8* %call104.i, null
  br i1 %cmp105.i, label %while.cond.backedge, label %if.then107.i

if.then107.i:                                     ; preds = %if.end97.i
  %call108.i = call double @atof(i8* %call104.i) #6
  %conv109.i = fptrunc double %call108.i to float
  store float %conv109.i, float* %arrayidx111.i, align 4, !tbaa !3
  store i32 1, i32* %arrayidx113.i, align 4, !tbaa !4
  br label %while.cond.backedge

if.else115.i:                                     ; preds = %if.else88.i
  call void @MSAAddGF(%struct.msa_struct* %call1, i8* %call1.i, i8* %text.0.i) #5
  br label %while.cond.backedge

if.else:                                          ; preds = %if.then23
  %call29 = call i32 @strncmp(i8* %s.0, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i64 4) #6
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.else
  call void @llvm.lifetime.start(i64 8, i8* %5) #4
  store i8* %s.0, i8** %s.i134, align 8, !tbaa !0
  %call.i135 = call i8* @sre_strtok(i8** %s.i134, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp.i136 = icmp eq i8* %call.i135, null
  br i1 %cmp.i136, label %if.then69, label %if.end.i139

if.end.i139:                                      ; preds = %if.then32
  %call1.i137 = call i8* @sre_strtok(i8** %s.i134, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp2.i138 = icmp eq i8* %call1.i137, null
  br i1 %cmp2.i138, label %if.then69, label %if.end4.i142

if.end4.i142:                                     ; preds = %if.end.i139
  %call5.i140 = call i8* @sre_strtok(i8** %s.i134, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp6.i141 = icmp eq i8* %call5.i140, null
  br i1 %cmp6.i141, label %if.then69, label %if.end8.i

if.end8.i:                                        ; preds = %if.end4.i142
  %call9.i = call i8* @sre_strtok(i8** %s.i134, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i32* null) #5
  %cmp10.i = icmp eq i8* %call9.i, null
  br i1 %cmp10.i, label %if.then69, label %while.cond.i144

while.cond.i144:                                  ; preds = %if.end8.i, %while.body.i146
  %text.0.i143 = phi i8* [ %incdec.ptr.i145, %while.body.i146 ], [ %call9.i, %if.end8.i ]
  %13 = load i8* %text.0.i143, align 1, !tbaa !1
  switch i8 %13, label %while.end.i148 [
    i8 9, label %while.body.i146
    i8 32, label %while.body.i146
  ]

while.body.i146:                                  ; preds = %while.cond.i144, %while.cond.i144
  %incdec.ptr.i145 = getelementptr inbounds i8* %text.0.i143, i64 1
  br label %while.cond.i144

while.end.i148:                                   ; preds = %while.cond.i144
  %14 = load i32* %lastidx.i210, align 4, !tbaa !4
  %add.i = add nsw i32 %14, 1
  %call19.i147 = call i32 @MSAGetSeqidx(%struct.msa_struct* %call1, i8* %call1.i137, i32 %add.i) #5
  store i32 %call19.i147, i32* %lastidx.i210, align 4, !tbaa !4
  %call21.i = call i32 @strcmp(i8* %call5.i140, i8* getelementptr inbounds ([3 x i8]* @.str18, i64 0, i64 0)) #6
  %cmp22.i = icmp eq i32 %call21.i, 0
  br i1 %cmp22.i, label %if.then24.i, label %if.else.i150

if.then24.i:                                      ; preds = %while.end.i148
  %call25.i = call double @atof(i8* %text.0.i143) #6
  %conv26.i = fptrunc double %call25.i to float
  %idxprom.i = sext i32 %call19.i147 to i64
  %15 = load float** %wgt.i, align 8, !tbaa !0
  %arrayidx.i149 = getelementptr inbounds float* %15, i64 %idxprom.i
  store float %conv26.i, float* %arrayidx.i149, align 4, !tbaa !3
  %16 = load i32* %flags.i, align 4, !tbaa !4
  %or.i = or i32 %16, 1
  store i32 %or.i, i32* %flags.i, align 4, !tbaa !4
  br label %while.cond.backedge

if.else.i150:                                     ; preds = %while.end.i148
  %call27.i = call i32 @strcmp(i8* %call5.i140, i8* getelementptr inbounds ([3 x i8]* @.str19, i64 0, i64 0)) #6
  %cmp28.i = icmp eq i32 %call27.i, 0
  br i1 %cmp28.i, label %if.then30.i, label %if.else31.i153

if.then30.i:                                      ; preds = %if.else.i150
  call void @MSASetSeqAccession(%struct.msa_struct* %call1, i32 %call19.i147, i8* %text.0.i143) #5
  br label %while.cond.backedge

if.else31.i153:                                   ; preds = %if.else.i150
  %call32.i151 = call i32 @strcmp(i8* %call5.i140, i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0)) #6
  %cmp33.i152 = icmp eq i32 %call32.i151, 0
  br i1 %cmp33.i152, label %if.then35.i154, label %if.else36.i

if.then35.i154:                                   ; preds = %if.else31.i153
  call void @MSASetSeqDescription(%struct.msa_struct* %call1, i32 %call19.i147, i8* %text.0.i143) #5
  br label %while.cond.backedge

if.else36.i:                                      ; preds = %if.else31.i153
  call void @MSAAddGS(%struct.msa_struct* %call1, i8* %call5.i140, i32 %call19.i147, i8* %text.0.i143) #5
  br label %while.cond.backedge

if.else34:                                        ; preds = %if.else
  %call35 = call i32 @strncmp(i8* %s.0, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i64 4) #6
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else34
  call void @llvm.lifetime.start(i64 8, i8* %6) #4
  call void @llvm.lifetime.start(i64 4, i8* %7) #4
  store i8* %s.0, i8** %s.i156, align 8, !tbaa !0
  %call.i157 = call i8* @sre_strtok(i8** %s.i156, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp.i158 = icmp eq i8* %call.i157, null
  br i1 %cmp.i158, label %if.then69, label %if.end.i161

if.end.i161:                                      ; preds = %if.then38
  %call1.i159 = call i8* @sre_strtok(i8** %s.i156, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp2.i160 = icmp eq i8* %call1.i159, null
  br i1 %cmp2.i160, label %if.then69, label %if.end4.i164

if.end4.i164:                                     ; preds = %if.end.i161
  %call5.i162 = call i8* @sre_strtok(i8** %s.i156, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* %len.i) #5
  %cmp6.i163 = icmp eq i8* %call5.i162, null
  br i1 %cmp6.i163, label %if.then69, label %if.end8.i167

if.end8.i167:                                     ; preds = %if.end4.i164
  %call9.i165 = call i32 @strcmp(i8* %call1.i159, i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0)) #6
  %cmp10.i166 = icmp eq i32 %call9.i165, 0
  br i1 %cmp10.i166, label %if.then11.i, label %if.else.i168

if.then11.i:                                      ; preds = %if.end8.i167
  %17 = load i32* %len.i, align 4, !tbaa !4
  %call12.i = call i32 @sre_strcat(i8** %ss_cons.i, i32 -1, i8* %call5.i162, i32 %17) #5
  br label %while.cond.backedge

if.else.i168:                                     ; preds = %if.end8.i167
  %call13.i = call i32 @strcmp(i8* %call1.i159, i8* getelementptr inbounds ([8 x i8]* @.str16, i64 0, i64 0)) #6
  %cmp14.i = icmp eq i32 %call13.i, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.else17.i

if.then15.i:                                      ; preds = %if.else.i168
  %18 = load i32* %len.i, align 4, !tbaa !4
  %call16.i = call i32 @sre_strcat(i8** %sa_cons.i, i32 -1, i8* %call5.i162, i32 %18) #5
  br label %while.cond.backedge

if.else17.i:                                      ; preds = %if.else.i168
  %call18.i = call i32 @strcmp(i8* %call1.i159, i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0)) #6
  %cmp19.i = icmp eq i32 %call18.i, 0
  br i1 %cmp19.i, label %if.then20.i, label %if.else22.i

if.then20.i:                                      ; preds = %if.else17.i
  %19 = load i32* %len.i, align 4, !tbaa !4
  %call21.i169 = call i32 @sre_strcat(i8** %rf.i, i32 -1, i8* %call5.i162, i32 %19) #5
  br label %while.cond.backedge

if.else22.i:                                      ; preds = %if.else17.i
  call void @MSAAppendGC(%struct.msa_struct* %call1, i8* %call1.i159, i8* %call5.i162) #5
  br label %while.cond.backedge

if.else40:                                        ; preds = %if.else34
  %call41 = call i32 @strncmp(i8* %s.0, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i64 4) #6
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.else40
  call void @llvm.lifetime.start(i64 4, i8* %8) #4
  call void @llvm.lifetime.start(i64 8, i8* %9) #4
  store i8* %s.0, i8** %s.i172, align 8, !tbaa !0
  %call.i173 = call i8* @sre_strtok(i8** %s.i172, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp.i174 = icmp eq i8* %call.i173, null
  br i1 %cmp.i174, label %if.then69, label %if.end.i177

if.end.i177:                                      ; preds = %if.then44
  %call1.i175 = call i8* @sre_strtok(i8** %s.i172, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp2.i176 = icmp eq i8* %call1.i175, null
  br i1 %cmp2.i176, label %if.then69, label %if.end4.i180

if.end4.i180:                                     ; preds = %if.end.i177
  %call5.i178 = call i8* @sre_strtok(i8** %s.i172, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp6.i179 = icmp eq i8* %call5.i178, null
  br i1 %cmp6.i179, label %if.then69, label %if.end8.i183

if.end8.i183:                                     ; preds = %if.end4.i180
  %call9.i181 = call i8* @sre_strtok(i8** %s.i172, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* %len.i171) #5
  %cmp10.i182 = icmp eq i8* %call9.i181, null
  br i1 %cmp10.i182, label %if.then69, label %if.end12.i

if.end12.i:                                       ; preds = %if.end8.i183
  %20 = load i32* %lastidx.i210, align 4, !tbaa !4
  %call13.i185 = call i32 @MSAGetSeqidx(%struct.msa_struct* %call1, i8* %call1.i175, i32 %20) #5
  store i32 %call13.i185, i32* %lastidx.i210, align 4, !tbaa !4
  %call15.i186 = call i32 @strcmp(i8* %call5.i178, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0)) #6
  %cmp16.i187 = icmp eq i32 %call15.i186, 0
  br i1 %cmp16.i187, label %if.then17.i, label %if.else.i192

if.then17.i:                                      ; preds = %if.end12.i
  %21 = load i8*** %ss.i, align 8, !tbaa !0
  %cmp18.i = icmp eq i8** %21, null
  br i1 %cmp18.i, label %if.then19.i, label %if.then17.if.end33_crit_edge.i

if.then17.if.end33_crit_edge.i:                   ; preds = %if.then17.i
  %.pre137.i = load i32** %sslen.i, align 8, !tbaa !0
  br label %if.end33.i

if.then19.i:                                      ; preds = %if.then17.i
  %22 = load i32* %nseqalloc.i, align 4, !tbaa !4
  %conv.i = sext i32 %22 to i64
  %mul.i = shl nsw i64 %conv.i, 3
  %call20.i188 = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 561, i64 %mul.i) #5
  %23 = bitcast i8* %call20.i188 to i8**
  store i8** %23, i8*** %ss.i, align 8, !tbaa !0
  %24 = load i32* %nseqalloc.i, align 4, !tbaa !4
  %conv23.i = sext i32 %24 to i64
  %mul24.i = shl nsw i64 %conv23.i, 2
  %call25.i189 = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 562, i64 %mul24.i) #5
  %25 = bitcast i8* %call25.i189 to i32*
  store i32* %25, i32** %sslen.i, align 8, !tbaa !0
  %26 = load i32* %nseqalloc.i, align 4, !tbaa !4
  %cmp27130.i = icmp sgt i32 %26, 0
  br i1 %cmp27130.i, label %for.body.i, label %if.end33.loopexit.i

for.body.i:                                       ; preds = %if.then19.i, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %if.then19.i ]
  %27 = load i8*** %ss.i, align 8, !tbaa !0
  %arrayidx.i190 = getelementptr inbounds i8** %27, i64 %indvars.iv.i
  store i8* null, i8** %arrayidx.i190, align 8, !tbaa !0
  %28 = load i32** %sslen.i, align 8, !tbaa !0
  %arrayidx32.i = getelementptr inbounds i32* %28, i64 %indvars.iv.i
  store i32 0, i32* %arrayidx32.i, align 4, !tbaa !4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %29 = load i32* %nseqalloc.i, align 4, !tbaa !4
  %30 = trunc i64 %indvars.iv.next.i to i32
  %cmp27.i191 = icmp slt i32 %30, %29
  br i1 %cmp27.i191, label %for.body.i, label %if.end33.loopexit.i

if.end33.loopexit.i:                              ; preds = %for.body.i, %if.then19.i
  %31 = phi i32* [ %25, %if.then19.i ], [ %28, %for.body.i ]
  %.pre.i = load i8*** %ss.i, align 8, !tbaa !0
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end33.loopexit.i, %if.then17.if.end33_crit_edge.i
  %32 = phi i32* [ %31, %if.end33.loopexit.i ], [ %.pre137.i, %if.then17.if.end33_crit_edge.i ]
  %33 = phi i8** [ %.pre.i, %if.end33.loopexit.i ], [ %21, %if.then17.if.end33_crit_edge.i ]
  %idxprom34.i = sext i32 %call13.i185 to i64
  %arrayidx36.i = getelementptr inbounds i8** %33, i64 %idxprom34.i
  %arrayidx39.i = getelementptr inbounds i32* %32, i64 %idxprom34.i
  %34 = load i32* %arrayidx39.i, align 4, !tbaa !4
  %35 = load i32* %len.i171, align 4, !tbaa !4
  %call40.i = call i32 @sre_strcat(i8** %arrayidx36.i, i32 %34, i8* %call9.i181, i32 %35) #5
  %36 = load i32** %sslen.i, align 8, !tbaa !0
  %arrayidx43.i = getelementptr inbounds i32* %36, i64 %idxprom34.i
  store i32 %call40.i, i32* %arrayidx43.i, align 4, !tbaa !4
  br label %while.cond.backedge

if.else.i192:                                     ; preds = %if.end12.i
  %call44.i = call i32 @strcmp(i8* %call5.i178, i8* getelementptr inbounds ([3 x i8]* @.str14, i64 0, i64 0)) #6
  %cmp45.i = icmp eq i32 %call44.i, 0
  br i1 %cmp45.i, label %if.then47.i, label %if.else85.i

if.then47.i:                                      ; preds = %if.else.i192
  %37 = load i8*** %sa.i, align 8, !tbaa !0
  %cmp48.i = icmp eq i8** %37, null
  br i1 %cmp48.i, label %if.then50.i, label %if.then47.if.end74_crit_edge.i

if.then47.if.end74_crit_edge.i:                   ; preds = %if.then47.i
  %.pre138.i = load i32** %salen.i, align 8, !tbaa !0
  br label %if.end74.i

if.then50.i:                                      ; preds = %if.then47.i
  %38 = load i32* %nseqalloc.i, align 4, !tbaa !4
  %conv52.i = sext i32 %38 to i64
  %mul53.i = shl nsw i64 %conv52.i, 3
  %call54.i193 = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 575, i64 %mul53.i) #5
  %39 = bitcast i8* %call54.i193 to i8**
  store i8** %39, i8*** %sa.i, align 8, !tbaa !0
  %40 = load i32* %nseqalloc.i, align 4, !tbaa !4
  %conv57.i = sext i32 %40 to i64
  %mul58.i = shl nsw i64 %conv57.i, 2
  %call59.i = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 576, i64 %mul58.i) #5
  %41 = bitcast i8* %call59.i to i32*
  store i32* %41, i32** %salen.i, align 8, !tbaa !0
  %42 = load i32* %nseqalloc.i, align 4, !tbaa !4
  %cmp62132.i = icmp sgt i32 %42, 0
  br i1 %cmp62132.i, label %for.body64.i, label %if.end74.loopexit.i

for.body64.i:                                     ; preds = %if.then50.i, %for.body64.i
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %for.body64.i ], [ 0, %if.then50.i ]
  %43 = load i8*** %sa.i, align 8, !tbaa !0
  %arrayidx67.i = getelementptr inbounds i8** %43, i64 %indvars.iv134.i
  store i8* null, i8** %arrayidx67.i, align 8, !tbaa !0
  %44 = load i32** %salen.i, align 8, !tbaa !0
  %arrayidx70.i = getelementptr inbounds i32* %44, i64 %indvars.iv134.i
  store i32 0, i32* %arrayidx70.i, align 4, !tbaa !4
  %indvars.iv.next135.i = add i64 %indvars.iv134.i, 1
  %45 = load i32* %nseqalloc.i, align 4, !tbaa !4
  %46 = trunc i64 %indvars.iv.next135.i to i32
  %cmp62.i = icmp slt i32 %46, %45
  br i1 %cmp62.i, label %for.body64.i, label %if.end74.loopexit.i

if.end74.loopexit.i:                              ; preds = %for.body64.i, %if.then50.i
  %47 = phi i32* [ %41, %if.then50.i ], [ %44, %for.body64.i ]
  %.pre136.i = load i8*** %sa.i, align 8, !tbaa !0
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.end74.loopexit.i, %if.then47.if.end74_crit_edge.i
  %48 = phi i32* [ %47, %if.end74.loopexit.i ], [ %.pre138.i, %if.then47.if.end74_crit_edge.i ]
  %49 = phi i8** [ %.pre136.i, %if.end74.loopexit.i ], [ %37, %if.then47.if.end74_crit_edge.i ]
  %idxprom75.i = sext i32 %call13.i185 to i64
  %arrayidx77.i = getelementptr inbounds i8** %49, i64 %idxprom75.i
  %arrayidx80.i = getelementptr inbounds i32* %48, i64 %idxprom75.i
  %50 = load i32* %arrayidx80.i, align 4, !tbaa !4
  %51 = load i32* %len.i171, align 4, !tbaa !4
  %call81.i194 = call i32 @sre_strcat(i8** %arrayidx77.i, i32 %50, i8* %call9.i181, i32 %51) #5
  %52 = load i32** %salen.i, align 8, !tbaa !0
  %arrayidx84.i195 = getelementptr inbounds i32* %52, i64 %idxprom75.i
  store i32 %call81.i194, i32* %arrayidx84.i195, align 4, !tbaa !4
  br label %while.cond.backedge

if.else85.i:                                      ; preds = %if.else.i192
  call void @MSAAppendGR(%struct.msa_struct* %call1, i8* %call5.i178, i32 %call13.i185, i8* %call9.i181) #5
  br label %while.cond.backedge

if.else46:                                        ; preds = %if.else40
  call void @llvm.lifetime.start(i64 8, i8* %10) #4
  %add.ptr.i = getelementptr inbounds i8* %s.0, i64 1
  store i8* %add.ptr.i, i8** %s.i197, align 8, !tbaa !0
  %53 = load i8* %add.ptr.i, align 1, !tbaa !1
  %cmp.i198 = icmp eq i8 %53, 10
  br i1 %cmp.i198, label %if.then.i, label %if.else.i201

if.then.i:                                        ; preds = %if.else46
  store i8 0, i8* %add.ptr.i, align 1, !tbaa !1
  br label %if.end5.i

if.else.i201:                                     ; preds = %if.else46
  %call.i199 = call i8* @sre_strtok(i8** %s.i197, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i32* null) #5
  %cmp2.i200 = icmp eq i8* %call.i199, null
  br i1 %cmp2.i200, label %if.then69, label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i201, %if.then.i
  %comment.0.i = phi i8* [ %add.ptr.i, %if.then.i ], [ %call.i199, %if.else.i201 ]
  call void @MSAAddComment(%struct.msa_struct* %call1, i8* %comment.0.i) #5
  br label %while.cond.backedge

if.else52:                                        ; preds = %while.cond13
  %call53 = call i32 @strncmp(i8* %s.0, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i64 2) #6
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %while.end75, label %if.else57

if.else57:                                        ; preds = %if.else52
  %cmp59 = icmp eq i8 %11, 10
  br i1 %cmp59, label %while.cond.backedge, label %if.else62

while.cond.backedge:                              ; preds = %if.else57, %if.then69, %if.then23.i, %if.then35.i, %if.then80.i, %if.then107.i, %if.else115.i, %if.then53.i, %if.then29.i, %if.then18.i, %if.then30.i, %if.else36.i, %if.then35.i154, %if.then24.i, %if.then15.i, %if.else22.i, %if.then20.i, %if.then11.i, %if.end74.i, %if.else85.i, %if.end33.i, %if.end5.i, %if.end4.i216, %if.end46.i, %if.end70.i, %if.end97.i
  %call11 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #5
  %cmp12 = icmp eq i8* %call11, null
  br i1 %cmp12, label %land.lhs.true, label %while.cond13

if.else62:                                        ; preds = %if.else57
  call void @llvm.lifetime.start(i64 8, i8* %2) #4
  call void @llvm.lifetime.start(i64 4, i8* %3) #4
  store i8* %s.0, i8** %s.i203, align 8, !tbaa !0
  %call.i205 = call i8* @sre_strtok(i8** %s.i203, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* null) #5
  %cmp.i206 = icmp eq i8* %call.i205, null
  br i1 %cmp.i206, label %if.then69, label %if.end.i209

if.end.i209:                                      ; preds = %if.else62
  %call1.i207 = call i8* @sre_strtok(i8** %s.i203, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32* %len.i204) #5
  %cmp2.i208 = icmp eq i8* %call1.i207, null
  br i1 %cmp2.i208, label %if.then69, label %if.end4.i216

if.end4.i216:                                     ; preds = %if.end.i209
  %54 = load i32* %lastidx.i210, align 4, !tbaa !4
  %add.i211 = add nsw i32 %54, 1
  %call5.i212 = call i32 @MSAGetSeqidx(%struct.msa_struct* %call1, i8* %call.i205, i32 %add.i211) #5
  store i32 %call5.i212, i32* %lastidx.i210, align 4, !tbaa !4
  %idxprom.i213 = sext i32 %call5.i212 to i64
  %55 = load i8*** %aseq.i, align 8, !tbaa !0
  %arrayidx.i214 = getelementptr inbounds i8** %55, i64 %idxprom.i213
  %56 = load i32** %sqlen.i, align 8, !tbaa !0
  %arrayidx8.i = getelementptr inbounds i32* %56, i64 %idxprom.i213
  %57 = load i32* %arrayidx8.i, align 4, !tbaa !4
  %58 = load i32* %len.i204, align 4, !tbaa !4
  %call9.i215 = call i32 @sre_strcat(i8** %arrayidx.i214, i32 %57, i8* %call1.i207, i32 %58) #5
  %59 = load i32** %sqlen.i, align 8, !tbaa !0
  %arrayidx12.i = getelementptr inbounds i32* %59, i64 %idxprom.i213
  store i32 %call9.i215, i32* %arrayidx12.i, align 4, !tbaa !4
  br label %while.cond.backedge

if.then69:                                        ; preds = %if.else.i201, %if.end8.i183, %if.end4.i180, %if.end.i177, %if.then44, %if.end4.i164, %if.end.i161, %if.then38, %if.end8.i, %if.end4.i142, %if.end.i139, %if.then32, %if.then92.i, %if.then65.i, %if.then41.i, %if.end4.i, %if.end.i, %if.then27, %if.else62, %if.end.i209
  %60 = load i32* %linenumber, align 4, !tbaa !4
  %61 = load i8** %fname70, align 8, !tbaa !0
  %62 = load i8** %name, align 8, !tbaa !0
  %cmp71 = icmp eq i8* %62, null
  %. = select i1 %cmp71, i8* getelementptr inbounds ([1 x i8]* @.str8, i64 0, i64 0), i8* %62
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([76 x i8]* @.str7, i64 0, i64 0), i32 %60, i8* %61, i8* %.) #5
  br label %while.cond.backedge

while.end75:                                      ; preds = %if.else52
  %cmp76 = icmp eq i8* %s.0, null
  br i1 %cmp76, label %land.lhs.true, label %if.end97

land.lhs.true:                                    ; preds = %while.cond.preheader, %while.cond.backedge, %while.end75
  %nseq = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 4
  %63 = load i32* %nseq, align 4, !tbaa !4
  %cmp78 = icmp eq i32 %63, 0
  br i1 %cmp78, label %if.then96, label %land.lhs.true92

land.lhs.true92:                                  ; preds = %land.lhs.true
  %name81 = getelementptr inbounds %struct.msa_struct* %call1, i64 0, i32 7
  %64 = load i8** %name81, align 8, !tbaa !0
  %cmp82 = icmp eq i8* %64, null
  %.133 = select i1 %cmp82, i8* getelementptr inbounds ([1 x i8]* @.str8, i64 0, i64 0), i8* %64
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([38 x i8]* @.str9, i64 0, i64 0), i8* %.133) #5
  %.pre = load i32* %nseq, align 4, !tbaa !4
  %phitmp = icmp eq i32 %.pre, 0
  br i1 %phitmp, label %if.then96, label %if.end97

if.then96:                                        ; preds = %land.lhs.true, %land.lhs.true92
  call void @MSAFree(%struct.msa_struct* %call1) #5
  br label %return

if.end97:                                         ; preds = %while.end75, %land.lhs.true92
  call void @MSAVerifyParse(%struct.msa_struct* %call1) #5
  br label %return

return:                                           ; preds = %entry, %if.end97, %if.then96, %if.then3
  %retval.0 = phi %struct.msa_struct* [ null, %if.then3 ], [ null, %if.then96 ], [ %call1, %if.end97 ], [ null, %entry ]
  ret %struct.msa_struct* %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare %struct.msa_struct* @MSAAlloc(i32, i32) #2

; Function Attrs: optsize
declare i8* @MSAFileGetLine(%struct.msafile_struct*) #2

; Function Attrs: optsize
declare void @MSAFree(%struct.msa_struct*) #2

; Function Attrs: optsize
declare i32 @IsBlankline(i8*) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #2

; Function Attrs: nounwind optsize uwtable
define void @WriteStockholm(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #0 {
entry:
  tail call fastcc void @actually_write_stockholm(%struct._IO_FILE* %fp, %struct.msa_struct* %msa, i32 50) #7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @actually_write_stockholm(%struct._IO_FILE* %fp, %struct.msa_struct* %msa, i32 %cpl) #0 {
entry:
  %s = alloca i8*, align 8
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %0 = load i32* %nseq, align 4, !tbaa !4
  %cmp824 = icmp sgt i32 %0, 0
  br i1 %cmp824, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %1 = load i8*** %sqname, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv854 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next855, %for.body ]
  %namewidth.0825 = phi i32 [ 0, %for.body.lr.ph ], [ %conv.namewidth.0, %for.body ]
  %arrayidx = getelementptr inbounds i8** %1, i64 %indvars.iv854
  %2 = load i8** %arrayidx, align 8, !tbaa !0
  %call = call i64 @strlen(i8* %2) #6
  %conv = trunc i64 %call to i32
  %cmp1 = icmp sgt i32 %conv, %namewidth.0825
  %conv.namewidth.0 = select i1 %cmp1, i32 %conv, i32 %namewidth.0825
  %indvars.iv.next855 = add i64 %indvars.iv854, 1
  %3 = trunc i64 %indvars.iv.next855 to i32
  %cmp = icmp slt i32 %3, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %namewidth.0.lcssa = phi i32 [ 0, %entry ], [ %conv.namewidth.0, %for.body ]
  %ss = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 16
  %4 = load i8*** %ss, align 8, !tbaa !0
  %cmp3 = icmp eq i8** %4, null
  %. = select i1 %cmp3, i32 0, i32 2
  %.782 = select i1 %cmp3, i32 0, i32 4
  %sa = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 17
  %5 = load i8*** %sa, align 8, !tbaa !0
  %cmp7 = icmp eq i8** %5, null
  %typewidth.1 = select i1 %cmp7, i32 %., i32 2
  %markupwidth.1 = select i1 %cmp7, i32 %.782, i32 4
  %ngr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 38
  %6 = load i32* %ngr, align 4, !tbaa !4
  %cmp12818 = icmp sgt i32 %6, 0
  br i1 %cmp12818, label %for.body14.lr.ph, label %for.end25

for.body14.lr.ph:                                 ; preds = %for.end
  %gr_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 35
  %7 = load i8*** %gr_tag, align 8, !tbaa !0
  br label %for.body14

for.body14:                                       ; preds = %for.body14.lr.ph, %for.body14
  %indvars.iv852 = phi i64 [ 0, %for.body14.lr.ph ], [ %indvars.iv.next853, %for.body14 ]
  %typewidth.2819 = phi i32 [ %typewidth.1, %for.body14.lr.ph ], [ %conv18.typewidth.2, %for.body14 ]
  %arrayidx16 = getelementptr inbounds i8** %7, i64 %indvars.iv852
  %8 = load i8** %arrayidx16, align 8, !tbaa !0
  %call17 = call i64 @strlen(i8* %8) #6
  %conv18 = trunc i64 %call17 to i32
  %cmp19 = icmp sgt i32 %conv18, %typewidth.2819
  %conv18.typewidth.2 = select i1 %cmp19, i32 %conv18, i32 %typewidth.2819
  %indvars.iv.next853 = add i64 %indvars.iv852, 1
  %9 = trunc i64 %indvars.iv.next853 to i32
  %cmp12 = icmp slt i32 %9, %6
  br i1 %cmp12, label %for.body14, label %for.end25

for.end25:                                        ; preds = %for.body14, %for.end
  %typewidth.2.lcssa = phi i32 [ %typewidth.1, %for.end ], [ %conv18.typewidth.2, %for.body14 ]
  %rf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 13
  %10 = load i8** %rf, align 8, !tbaa !0
  %cmp26 = icmp eq i8* %10, null
  br i1 %cmp26, label %if.end33, label %if.then28

if.then28:                                        ; preds = %for.end25
  %cmp29 = icmp slt i32 %typewidth.2.lcssa, 2
  %.typewidth.2 = select i1 %cmp29, i32 2, i32 %typewidth.2.lcssa
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %for.end25
  %typewidth.4 = phi i32 [ %typewidth.2.lcssa, %for.end25 ], [ %.typewidth.2, %if.then28 ]
  %markupwidth.2 = phi i32 [ %markupwidth.1, %for.end25 ], [ 4, %if.then28 ]
  %ss_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 11
  %11 = load i8** %ss_cons, align 8, !tbaa !0
  %cmp34 = icmp eq i8* %11, null
  br i1 %cmp34, label %if.end41, label %if.then36

if.then36:                                        ; preds = %if.end33
  %cmp37 = icmp slt i32 %typewidth.4, 7
  %.typewidth.4 = select i1 %cmp37, i32 7, i32 %typewidth.4
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.end33
  %typewidth.5 = phi i32 [ %typewidth.4, %if.end33 ], [ %.typewidth.4, %if.then36 ]
  %markupwidth.3 = phi i32 [ %markupwidth.2, %if.end33 ], [ 4, %if.then36 ]
  %sa_cons = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 12
  %12 = load i8** %sa_cons, align 8, !tbaa !0
  %cmp42 = icmp eq i8* %12, null
  br i1 %cmp42, label %if.end49, label %if.then44

if.then44:                                        ; preds = %if.end41
  %cmp45 = icmp slt i32 %typewidth.5, 7
  %.typewidth.5 = select i1 %cmp45, i32 7, i32 %typewidth.5
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %if.end41
  %typewidth.6 = phi i32 [ %typewidth.5, %if.end41 ], [ %.typewidth.5, %if.then44 ]
  %markupwidth.4 = phi i32 [ %markupwidth.3, %if.end41 ], [ 4, %if.then44 ]
  %ngc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 34
  %13 = load i32* %ngc, align 4, !tbaa !4
  %cmp51813 = icmp sgt i32 %13, 0
  br i1 %cmp51813, label %for.body53.lr.ph, label %for.end64

for.body53.lr.ph:                                 ; preds = %if.end49
  %gc_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 31
  %14 = load i8*** %gc_tag, align 8, !tbaa !0
  br label %for.body53

for.body53:                                       ; preds = %for.body53.lr.ph, %for.body53
  %indvars.iv850 = phi i64 [ 0, %for.body53.lr.ph ], [ %indvars.iv.next851, %for.body53 ]
  %typewidth.7814 = phi i32 [ %typewidth.6, %for.body53.lr.ph ], [ %conv57.typewidth.7, %for.body53 ]
  %arrayidx55 = getelementptr inbounds i8** %14, i64 %indvars.iv850
  %15 = load i8** %arrayidx55, align 8, !tbaa !0
  %call56 = call i64 @strlen(i8* %15) #6
  %conv57 = trunc i64 %call56 to i32
  %cmp58 = icmp sgt i32 %conv57, %typewidth.7814
  %conv57.typewidth.7 = select i1 %cmp58, i32 %conv57, i32 %typewidth.7814
  %indvars.iv.next851 = add i64 %indvars.iv850, 1
  %16 = trunc i64 %indvars.iv.next851 to i32
  %cmp51 = icmp slt i32 %16, %13
  br i1 %cmp51, label %for.body53, label %for.end64

for.end64:                                        ; preds = %for.body53, %if.end49
  %typewidth.7.lcssa = phi i32 [ %typewidth.6, %if.end49 ], [ %conv57.typewidth.7, %for.body53 ]
  %add = add i32 %cpl, 61
  %add65 = add i32 %add, %namewidth.0.lcssa
  %add66 = add i32 %add65, %markupwidth.4
  %add67 = add i32 %add66, %typewidth.7.lcssa
  %conv68 = sext i32 %add67 to i64
  %call69 = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 251, i64 %conv68) #5
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str26, i64 0, i64 0), i64 16, i64 1, %struct._IO_FILE* %fp)
  %ncomment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 21
  %18 = load i32* %ncomment, align 4, !tbaa !4
  %cmp72811 = icmp sgt i32 %18, 0
  br i1 %cmp72811, label %for.body74.lr.ph, label %if.end86

for.body74.lr.ph:                                 ; preds = %for.end64
  %comment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 20
  br label %for.body74

for.body74:                                       ; preds = %for.body74.lr.ph, %for.body74
  %indvars.iv848 = phi i64 [ 0, %for.body74.lr.ph ], [ %indvars.iv.next849, %for.body74 ]
  %19 = load i8*** %comment, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds i8** %19, i64 %indvars.iv848
  %20 = load i8** %arrayidx76, align 8, !tbaa !0
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str27, i64 0, i64 0), i8* %20) #5
  %indvars.iv.next849 = add i64 %indvars.iv848, 1
  %21 = load i32* %ncomment, align 4, !tbaa !4
  %22 = trunc i64 %indvars.iv.next849 to i32
  %cmp72 = icmp slt i32 %22, %21
  br i1 %cmp72, label %for.body74, label %for.end80

for.end80:                                        ; preds = %for.body74
  %cmp82 = icmp sgt i32 %21, 0
  br i1 %cmp82, label %if.then84, label %if.end86

if.then84:                                        ; preds = %for.end80
  %fputc781 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end86

if.end86:                                         ; preds = %for.end64, %if.then84, %for.end80
  %name = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7
  %23 = load i8** %name, align 8, !tbaa !0
  %cmp87 = icmp eq i8* %23, null
  br i1 %cmp87, label %if.end92, label %if.then89

if.then89:                                        ; preds = %if.end86
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str28, i64 0, i64 0), i8* %23) #5
  br label %if.end92

if.end92:                                         ; preds = %if.end86, %if.then89
  %acc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 9
  %24 = load i8** %acc, align 8, !tbaa !0
  %cmp93 = icmp eq i8* %24, null
  br i1 %cmp93, label %if.end98, label %if.then95

if.then95:                                        ; preds = %if.end92
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str29, i64 0, i64 0), i8* %24) #5
  br label %if.end98

if.end98:                                         ; preds = %if.end92, %if.then95
  %desc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 8
  %25 = load i8** %desc, align 8, !tbaa !0
  %cmp99 = icmp eq i8* %25, null
  br i1 %cmp99, label %if.end104, label %if.then101

if.then101:                                       ; preds = %if.end98
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str30, i64 0, i64 0), i8* %25) #5
  br label %if.end104

if.end104:                                        ; preds = %if.end98, %if.then101
  %au = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 10
  %26 = load i8** %au, align 8, !tbaa !0
  %cmp105 = icmp eq i8* %26, null
  br i1 %cmp105, label %if.end110, label %if.then107

if.then107:                                       ; preds = %if.end104
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([15 x i8]* @.str31, i64 0, i64 0), i8* %26) #5
  br label %if.end110

if.end110:                                        ; preds = %if.end104, %if.then107
  %arrayidx111 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 2
  %27 = load i32* %arrayidx111, align 4, !tbaa !4
  %tobool = icmp eq i32 %27, 0
  br i1 %tobool, label %if.end131, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end110
  %arrayidx113 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 3
  %28 = load i32* %arrayidx113, align 4, !tbaa !4
  %tobool114 = icmp eq i32 %28, 0
  %arrayidx127 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 2
  %29 = load float* %arrayidx127, align 4, !tbaa !3
  %conv128 = fpext float %29 to double
  br i1 %tobool114, label %if.then125, label %if.then115

if.then115:                                       ; preds = %land.lhs.true
  %arrayidx119 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 3
  %30 = load float* %arrayidx119, align 4, !tbaa !3
  %conv120 = fpext float %30 to double
  %call121 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str32, i64 0, i64 0), double %conv128, double %conv120) #5
  br label %if.end131

if.then125:                                       ; preds = %land.lhs.true
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str33, i64 0, i64 0), double %conv128) #5
  br label %if.end131

if.end131:                                        ; preds = %if.end110, %if.then125, %if.then115
  %arrayidx133 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 4
  %31 = load i32* %arrayidx133, align 4, !tbaa !4
  %tobool134 = icmp eq i32 %31, 0
  br i1 %tobool134, label %if.end157, label %land.lhs.true135

land.lhs.true135:                                 ; preds = %if.end131
  %arrayidx137 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 5
  %32 = load i32* %arrayidx137, align 4, !tbaa !4
  %tobool138 = icmp eq i32 %32, 0
  %arrayidx153 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 4
  %33 = load float* %arrayidx153, align 4, !tbaa !3
  %conv154 = fpext float %33 to double
  br i1 %tobool138, label %if.then151, label %if.then139

if.then139:                                       ; preds = %land.lhs.true135
  %arrayidx144 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 5
  %34 = load float* %arrayidx144, align 4, !tbaa !3
  %conv145 = fpext float %34 to double
  %call146 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str34, i64 0, i64 0), double %conv154, double %conv145) #5
  br label %if.end157

if.then151:                                       ; preds = %land.lhs.true135
  %call155 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str35, i64 0, i64 0), double %conv154) #5
  br label %if.end157

if.end157:                                        ; preds = %if.end131, %if.then151, %if.then139
  %arrayidx159 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 0
  %35 = load i32* %arrayidx159, align 4, !tbaa !4
  %tobool160 = icmp eq i32 %35, 0
  br i1 %tobool160, label %for.cond184.preheader, label %land.lhs.true161

land.lhs.true161:                                 ; preds = %if.end157
  %arrayidx163 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 19, i64 1
  %36 = load i32* %arrayidx163, align 4, !tbaa !4
  %tobool164 = icmp eq i32 %36, 0
  %arrayidx179 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 0
  %37 = load float* %arrayidx179, align 4, !tbaa !3
  %conv180 = fpext float %37 to double
  br i1 %tobool164, label %if.then177, label %if.then165

if.then165:                                       ; preds = %land.lhs.true161
  %arrayidx170 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 18, i64 1
  %38 = load float* %arrayidx170, align 4, !tbaa !3
  %conv171 = fpext float %38 to double
  %call172 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str36, i64 0, i64 0), double %conv180, double %conv171) #5
  br label %for.cond184.preheader

if.then177:                                       ; preds = %land.lhs.true161
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str37, i64 0, i64 0), double %conv180) #5
  br label %for.cond184.preheader

for.cond184.preheader:                            ; preds = %if.then177, %if.then165, %if.end157
  %ngf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 25
  %39 = load i32* %ngf, align 4, !tbaa !4
  %cmp185809 = icmp sgt i32 %39, 0
  br i1 %cmp185809, label %for.body187.lr.ph, label %for.end195

for.body187.lr.ph:                                ; preds = %for.cond184.preheader
  %gf_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 23
  %gf = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 24
  br label %for.body187

for.body187:                                      ; preds = %for.body187.lr.ph, %for.body187
  %indvars.iv845 = phi i64 [ 0, %for.body187.lr.ph ], [ %indvars.iv.next846, %for.body187 ]
  %40 = load i8*** %gf_tag, align 8, !tbaa !0
  %arrayidx189 = getelementptr inbounds i8** %40, i64 %indvars.iv845
  %41 = load i8** %arrayidx189, align 8, !tbaa !0
  %42 = load i8*** %gf, align 8, !tbaa !0
  %arrayidx191 = getelementptr inbounds i8** %42, i64 %indvars.iv845
  %43 = load i8** %arrayidx191, align 8, !tbaa !0
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0), i8* %41, i8* %43) #5
  %indvars.iv.next846 = add i64 %indvars.iv845, 1
  %44 = load i32* %ngf, align 4, !tbaa !4
  %45 = trunc i64 %indvars.iv.next846 to i32
  %cmp185 = icmp slt i32 %45, %44
  br i1 %cmp185, label %for.body187, label %for.end195

for.end195:                                       ; preds = %for.body187, %for.cond184.preheader
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %flags = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 5
  %46 = load i32* %flags, align 4, !tbaa !4
  %and = and i32 %46, 1
  %tobool197 = icmp eq i32 %and, 0
  br i1 %tobool197, label %if.end215, label %for.cond199.preheader

for.cond199.preheader:                            ; preds = %for.end195
  %47 = load i32* %nseq, align 4, !tbaa !4
  %cmp201807 = icmp sgt i32 %47, 0
  br i1 %cmp201807, label %for.body203.lr.ph, label %for.end213

for.body203.lr.ph:                                ; preds = %for.cond199.preheader
  %sqname205 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2
  br label %for.body203

for.body203:                                      ; preds = %for.body203.lr.ph, %for.body203
  %indvars.iv843 = phi i64 [ 0, %for.body203.lr.ph ], [ %indvars.iv.next844, %for.body203 ]
  %48 = load i8*** %sqname205, align 8, !tbaa !0
  %arrayidx206 = getelementptr inbounds i8** %48, i64 %indvars.iv843
  %49 = load i8** %arrayidx206, align 8, !tbaa !0
  %50 = load float** %wgt, align 8, !tbaa !0
  %arrayidx208 = getelementptr inbounds float* %50, i64 %indvars.iv843
  %51 = load float* %arrayidx208, align 4, !tbaa !3
  %conv209 = fpext float %51 to double
  %call210 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str39, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %49, double %conv209) #5
  %indvars.iv.next844 = add i64 %indvars.iv843, 1
  %52 = load i32* %nseq, align 4, !tbaa !4
  %53 = trunc i64 %indvars.iv.next844 to i32
  %cmp201 = icmp slt i32 %53, %52
  br i1 %cmp201, label %for.body203, label %for.end213

for.end213:                                       ; preds = %for.body203, %for.cond199.preheader
  %fputc766 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end215

if.end215:                                        ; preds = %for.end195, %for.end213
  %sqacc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 14
  %54 = load i8*** %sqacc, align 8, !tbaa !0
  %cmp216 = icmp eq i8** %54, null
  br i1 %cmp216, label %if.end242, label %for.cond219.preheader

for.cond219.preheader:                            ; preds = %if.end215
  %55 = load i32* %nseq, align 4, !tbaa !4
  %cmp221805 = icmp sgt i32 %55, 0
  br i1 %cmp221805, label %for.body223.lr.ph, label %for.end240

for.body223.lr.ph:                                ; preds = %for.cond219.preheader
  %sqname231 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  br label %for.body223

for.body223:                                      ; preds = %for.inc238.for.body223_crit_edge, %for.body223.lr.ph
  %56 = phi i8** [ %54, %for.body223.lr.ph ], [ %.pre860, %for.inc238.for.body223_crit_edge ]
  %57 = phi i32 [ %55, %for.body223.lr.ph ], [ %61, %for.inc238.for.body223_crit_edge ]
  %indvars.iv841 = phi i64 [ 0, %for.body223.lr.ph ], [ %indvars.iv.next842, %for.inc238.for.body223_crit_edge ]
  %arrayidx226 = getelementptr inbounds i8** %56, i64 %indvars.iv841
  %58 = load i8** %arrayidx226, align 8, !tbaa !0
  %cmp227 = icmp eq i8* %58, null
  br i1 %cmp227, label %for.inc238, label %if.then229

if.then229:                                       ; preds = %for.body223
  %59 = load i8*** %sqname231, align 8, !tbaa !0
  %arrayidx232 = getelementptr inbounds i8** %59, i64 %indvars.iv841
  %60 = load i8** %arrayidx232, align 8, !tbaa !0
  %call236 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str40, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %60, i8* %58) #5
  %.pre858 = load i32* %nseq, align 4, !tbaa !4
  br label %for.inc238

for.inc238:                                       ; preds = %for.body223, %if.then229
  %61 = phi i32 [ %57, %for.body223 ], [ %.pre858, %if.then229 ]
  %indvars.iv.next842 = add i64 %indvars.iv841, 1
  %62 = trunc i64 %indvars.iv.next842 to i32
  %cmp221 = icmp slt i32 %62, %61
  br i1 %cmp221, label %for.inc238.for.body223_crit_edge, label %for.end240

for.inc238.for.body223_crit_edge:                 ; preds = %for.inc238
  %.pre860 = load i8*** %sqacc, align 8, !tbaa !0
  br label %for.body223

for.end240:                                       ; preds = %for.inc238, %for.cond219.preheader
  %fputc769 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end242

if.end242:                                        ; preds = %if.end215, %for.end240
  %sqdesc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 15
  %63 = load i8*** %sqdesc, align 8, !tbaa !0
  %cmp243 = icmp eq i8** %63, null
  br i1 %cmp243, label %for.cond270.preheader, label %for.cond246.preheader

for.cond246.preheader:                            ; preds = %if.end242
  %64 = load i32* %nseq, align 4, !tbaa !4
  %cmp248803 = icmp sgt i32 %64, 0
  br i1 %cmp248803, label %for.body250.lr.ph, label %for.end267

for.body250.lr.ph:                                ; preds = %for.cond246.preheader
  %sqname258 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  br label %for.body250

for.body250:                                      ; preds = %for.inc265.for.body250_crit_edge, %for.body250.lr.ph
  %65 = phi i8** [ %63, %for.body250.lr.ph ], [ %.pre859, %for.inc265.for.body250_crit_edge ]
  %66 = phi i32 [ %64, %for.body250.lr.ph ], [ %70, %for.inc265.for.body250_crit_edge ]
  %indvars.iv839 = phi i64 [ 0, %for.body250.lr.ph ], [ %indvars.iv.next840, %for.inc265.for.body250_crit_edge ]
  %arrayidx253 = getelementptr inbounds i8** %65, i64 %indvars.iv839
  %67 = load i8** %arrayidx253, align 8, !tbaa !0
  %cmp254 = icmp eq i8* %67, null
  br i1 %cmp254, label %for.inc265, label %if.then256

if.then256:                                       ; preds = %for.body250
  %68 = load i8*** %sqname258, align 8, !tbaa !0
  %arrayidx259 = getelementptr inbounds i8** %68, i64 %indvars.iv839
  %69 = load i8** %arrayidx259, align 8, !tbaa !0
  %call263 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str41, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %69, i8* %67) #5
  %.pre857 = load i32* %nseq, align 4, !tbaa !4
  br label %for.inc265

for.inc265:                                       ; preds = %for.body250, %if.then256
  %70 = phi i32 [ %66, %for.body250 ], [ %.pre857, %if.then256 ]
  %indvars.iv.next840 = add i64 %indvars.iv839, 1
  %71 = trunc i64 %indvars.iv.next840 to i32
  %cmp248 = icmp slt i32 %71, %70
  br i1 %cmp248, label %for.inc265.for.body250_crit_edge, label %for.end267

for.inc265.for.body250_crit_edge:                 ; preds = %for.inc265
  %.pre859 = load i8*** %sqdesc, align 8, !tbaa !0
  br label %for.body250

for.end267:                                       ; preds = %for.inc265, %for.cond246.preheader
  %fputc772 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %for.cond270.preheader

for.cond270.preheader:                            ; preds = %if.end242, %for.end267
  %ngs = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 30
  %72 = load i32* %ngs, align 4, !tbaa !4
  %cmp271801 = icmp sgt i32 %72, 0
  br i1 %cmp271801, label %for.cond274.preheader.lr.ph, label %for.cond308.preheader

for.cond274.preheader.lr.ph:                      ; preds = %for.cond270.preheader
  %gs = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 28
  %sqname295 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %gs_tag = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 27
  br label %for.cond274.preheader

for.cond274.preheader:                            ; preds = %for.cond274.preheader.lr.ph, %for.end303
  %indvars.iv837 = phi i64 [ 0, %for.cond274.preheader.lr.ph ], [ %indvars.iv.next838, %for.end303 ]
  %73 = load i32* %nseq, align 4, !tbaa !4
  %cmp276799 = icmp sgt i32 %73, 0
  br i1 %cmp276799, label %for.body278, label %for.end303

for.cond308.preheader:                            ; preds = %for.end303, %for.cond270.preheader
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %74 = load i32* %alen, align 4, !tbaa !4
  %cmp309794 = icmp sgt i32 %74, 0
  br i1 %cmp309794, label %for.body311.lr.ph, label %for.end490

for.body311.lr.ph:                                ; preds = %for.cond308.preheader
  %conv458 = sext i32 %cpl to i64
  %arrayidx461 = getelementptr inbounds i8* %call69, i64 %conv458
  %add462 = add nsw i32 %typewidth.7.lcssa, %namewidth.0.lcssa
  %gc = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 32
  %gc_tag482 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 31
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %add328 = add i32 %markupwidth.4, %namewidth.0.lcssa
  %add329 = add i32 %add328, %typewidth.7.lcssa
  %sqname333 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %gr = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 36
  %gr_tag411 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 35
  br label %for.body311

for.body278:                                      ; preds = %for.inc301, %for.cond274.preheader
  %75 = phi i32 [ %73, %for.cond274.preheader ], [ %83, %for.inc301 ]
  %indvars.iv835 = phi i64 [ 0, %for.cond274.preheader ], [ %indvars.iv.next836, %for.inc301 ]
  %76 = load i8**** %gs, align 8, !tbaa !0
  %arrayidx281 = getelementptr inbounds i8*** %76, i64 %indvars.iv837
  %77 = load i8*** %arrayidx281, align 8, !tbaa !0
  %arrayidx282 = getelementptr inbounds i8** %77, i64 %indvars.iv835
  %78 = load i8** %arrayidx282, align 8, !tbaa !0
  %cmp283 = icmp eq i8* %78, null
  br i1 %cmp283, label %for.inc301, label %if.then285

if.then285:                                       ; preds = %for.body278
  store i8* %78, i8** %s, align 8, !tbaa !0
  %call291796 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i32* null) #5
  %cmp292797 = icmp eq i8* %call291796, null
  br i1 %cmp292797, label %for.inc301.loopexit, label %while.body

while.body:                                       ; preds = %if.then285, %while.body
  %call291798 = phi i8* [ %call291, %while.body ], [ %call291796, %if.then285 ]
  %79 = load i8*** %sqname295, align 8, !tbaa !0
  %arrayidx296 = getelementptr inbounds i8** %79, i64 %indvars.iv835
  %80 = load i8** %arrayidx296, align 8, !tbaa !0
  %81 = load i8*** %gs_tag, align 8, !tbaa !0
  %arrayidx298 = getelementptr inbounds i8** %81, i64 %indvars.iv837
  %82 = load i8** %arrayidx298, align 8, !tbaa !0
  %call299 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str42, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %80, i8* %82, i8* %call291798) #5
  %call291 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i32* null) #5
  %cmp292 = icmp eq i8* %call291, null
  br i1 %cmp292, label %for.inc301.loopexit, label %while.body

for.inc301.loopexit:                              ; preds = %while.body, %if.then285
  %.pre856 = load i32* %nseq, align 4, !tbaa !4
  br label %for.inc301

for.inc301:                                       ; preds = %for.inc301.loopexit, %for.body278
  %83 = phi i32 [ %.pre856, %for.inc301.loopexit ], [ %75, %for.body278 ]
  %indvars.iv.next836 = add i64 %indvars.iv835, 1
  %84 = trunc i64 %indvars.iv.next836 to i32
  %cmp276 = icmp slt i32 %84, %83
  br i1 %cmp276, label %for.body278, label %for.end303

for.end303:                                       ; preds = %for.inc301, %for.cond274.preheader
  %fputc778 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %indvars.iv.next838 = add i64 %indvars.iv837, 1
  %85 = load i32* %ngs, align 4, !tbaa !4
  %86 = trunc i64 %indvars.iv.next838 to i32
  %cmp271 = icmp slt i32 %86, %85
  br i1 %cmp271, label %for.cond274.preheader, label %for.cond308.preheader

for.body311:                                      ; preds = %for.body311.lr.ph, %for.inc488
  %indvars.iv833 = phi i64 [ 0, %for.body311.lr.ph ], [ %indvars.iv.next834, %for.inc488 ]
  %87 = trunc i64 %indvars.iv833 to i32
  %cmp312 = icmp sgt i32 %87, 0
  br i1 %cmp312, label %if.then314, label %for.cond317.preheader

if.then314:                                       ; preds = %for.body311
  %fputc775 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %for.cond317.preheader

for.cond317.preheader:                            ; preds = %for.body311, %if.then314
  %88 = load i32* %nseq, align 4, !tbaa !4
  %cmp319790 = icmp sgt i32 %88, 0
  br i1 %cmp319790, label %for.body321, label %for.end420

for.body321:                                      ; preds = %for.cond317.preheader, %for.inc418
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %for.inc418 ], [ 0, %for.cond317.preheader ]
  %89 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx323 = getelementptr inbounds i8** %89, i64 %indvars.iv829
  %90 = load i8** %arrayidx323, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %90, i64 %indvars.iv833
  %call325 = call i8* @strncpy(i8* %call69, i8* %add.ptr, i64 %conv458) #5
  store i8 0, i8* %arrayidx461, align 1, !tbaa !1
  %91 = load i8*** %sqname333, align 8, !tbaa !0
  %arrayidx334 = getelementptr inbounds i8** %91, i64 %indvars.iv829
  %92 = load i8** %arrayidx334, align 8, !tbaa !0
  %call335 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str43, i64 0, i64 0), i32 %add329, i32 %add329, i8* %92, i8* %call69) #5
  %93 = load i8*** %ss, align 8, !tbaa !0
  %cmp337 = icmp eq i8** %93, null
  br i1 %cmp337, label %if.end359, label %land.lhs.true339

land.lhs.true339:                                 ; preds = %for.body321
  %arrayidx342 = getelementptr inbounds i8** %93, i64 %indvars.iv829
  %94 = load i8** %arrayidx342, align 8, !tbaa !0
  %cmp343 = icmp eq i8* %94, null
  br i1 %cmp343, label %if.end359, label %if.then345

if.then345:                                       ; preds = %land.lhs.true339
  %add.ptr350 = getelementptr inbounds i8* %94, i64 %indvars.iv833
  %call352 = call i8* @strncpy(i8* %call69, i8* %add.ptr350, i64 %conv458) #5
  store i8 0, i8* %arrayidx461, align 1, !tbaa !1
  %95 = load i8*** %sqname333, align 8, !tbaa !0
  %arrayidx357 = getelementptr inbounds i8** %95, i64 %indvars.iv829
  %96 = load i8** %arrayidx357, align 8, !tbaa !0
  %call358 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str44, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %96, i8* %call69) #5
  br label %if.end359

if.end359:                                        ; preds = %land.lhs.true339, %for.body321, %if.then345
  %97 = load i8*** %sa, align 8, !tbaa !0
  %cmp361 = icmp eq i8** %97, null
  br i1 %cmp361, label %for.cond384.preheader, label %land.lhs.true363

land.lhs.true363:                                 ; preds = %if.end359
  %arrayidx366 = getelementptr inbounds i8** %97, i64 %indvars.iv829
  %98 = load i8** %arrayidx366, align 8, !tbaa !0
  %cmp367 = icmp eq i8* %98, null
  br i1 %cmp367, label %for.cond384.preheader, label %if.then369

if.then369:                                       ; preds = %land.lhs.true363
  %add.ptr374 = getelementptr inbounds i8* %98, i64 %indvars.iv833
  %call376 = call i8* @strncpy(i8* %call69, i8* %add.ptr374, i64 %conv458) #5
  store i8 0, i8* %arrayidx461, align 1, !tbaa !1
  %99 = load i8*** %sqname333, align 8, !tbaa !0
  %arrayidx381 = getelementptr inbounds i8** %99, i64 %indvars.iv829
  %100 = load i8** %arrayidx381, align 8, !tbaa !0
  %call382 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str45, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %100, i8* %call69) #5
  br label %for.cond384.preheader

for.cond384.preheader:                            ; preds = %land.lhs.true363, %if.end359, %if.then369
  %101 = load i32* %ngr, align 4, !tbaa !4
  %cmp386788 = icmp sgt i32 %101, 0
  br i1 %cmp386788, label %for.body388, label %for.inc418

for.body388:                                      ; preds = %for.inc415, %for.cond384.preheader
  %102 = phi i32 [ %101, %for.cond384.preheader ], [ %110, %for.inc415 ]
  %indvars.iv = phi i64 [ 0, %for.cond384.preheader ], [ %indvars.iv.next, %for.inc415 ]
  %103 = load i8**** %gr, align 8, !tbaa !0
  %arrayidx391 = getelementptr inbounds i8*** %103, i64 %indvars.iv
  %104 = load i8*** %arrayidx391, align 8, !tbaa !0
  %arrayidx392 = getelementptr inbounds i8** %104, i64 %indvars.iv829
  %105 = load i8** %arrayidx392, align 8, !tbaa !0
  %cmp393 = icmp eq i8* %105, null
  br i1 %cmp393, label %for.inc415, label %if.then395

if.then395:                                       ; preds = %for.body388
  %add.ptr402 = getelementptr inbounds i8* %105, i64 %indvars.iv833
  %call404 = call i8* @strncpy(i8* %call69, i8* %add.ptr402, i64 %conv458) #5
  store i8 0, i8* %arrayidx461, align 1, !tbaa !1
  %106 = load i8*** %sqname333, align 8, !tbaa !0
  %arrayidx409 = getelementptr inbounds i8** %106, i64 %indvars.iv829
  %107 = load i8** %arrayidx409, align 8, !tbaa !0
  %108 = load i8*** %gr_tag411, align 8, !tbaa !0
  %arrayidx412 = getelementptr inbounds i8** %108, i64 %indvars.iv
  %109 = load i8** %arrayidx412, align 8, !tbaa !0
  %call413 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str46, i64 0, i64 0), i32 %namewidth.0.lcssa, i32 %namewidth.0.lcssa, i8* %107, i8* %109, i8* %call69) #5
  %.pre = load i32* %ngr, align 4, !tbaa !4
  br label %for.inc415

for.inc415:                                       ; preds = %for.body388, %if.then395
  %110 = phi i32 [ %102, %for.body388 ], [ %.pre, %if.then395 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %111 = trunc i64 %indvars.iv.next to i32
  %cmp386 = icmp slt i32 %111, %110
  br i1 %cmp386, label %for.body388, label %for.inc418

for.inc418:                                       ; preds = %for.inc415, %for.cond384.preheader
  %indvars.iv.next830 = add i64 %indvars.iv829, 1
  %112 = load i32* %nseq, align 4, !tbaa !4
  %113 = trunc i64 %indvars.iv.next830 to i32
  %cmp319 = icmp slt i32 %113, %112
  br i1 %cmp319, label %for.body321, label %for.end420

for.end420:                                       ; preds = %for.inc418, %for.cond317.preheader
  %114 = load i8** %ss_cons, align 8, !tbaa !0
  %cmp422 = icmp eq i8* %114, null
  br i1 %cmp422, label %if.end435, label %if.then424

if.then424:                                       ; preds = %for.end420
  %add.ptr427 = getelementptr inbounds i8* %114, i64 %indvars.iv833
  %call429 = call i8* @strncpy(i8* %call69, i8* %add.ptr427, i64 %conv458) #5
  store i8 0, i8* %arrayidx461, align 1, !tbaa !1
  %call434 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0), i32 %add462, i32 %add462, i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i8* %call69) #5
  br label %if.end435

if.end435:                                        ; preds = %for.end420, %if.then424
  %115 = load i8** %sa_cons, align 8, !tbaa !0
  %cmp437 = icmp eq i8* %115, null
  br i1 %cmp437, label %if.end450, label %if.then439

if.then439:                                       ; preds = %if.end435
  %add.ptr442 = getelementptr inbounds i8* %115, i64 %indvars.iv833
  %call444 = call i8* @strncpy(i8* %call69, i8* %add.ptr442, i64 %conv458) #5
  store i8 0, i8* %arrayidx461, align 1, !tbaa !1
  %call449 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0), i32 %add462, i32 %add462, i8* getelementptr inbounds ([8 x i8]* @.str16, i64 0, i64 0), i8* %call69) #5
  br label %if.end450

if.end450:                                        ; preds = %if.end435, %if.then439
  %116 = load i8** %rf, align 8, !tbaa !0
  %cmp452 = icmp eq i8* %116, null
  br i1 %cmp452, label %for.cond466.preheader, label %if.then454

if.then454:                                       ; preds = %if.end450
  %add.ptr457 = getelementptr inbounds i8* %116, i64 %indvars.iv833
  %call459 = call i8* @strncpy(i8* %call69, i8* %add.ptr457, i64 %conv458) #5
  store i8 0, i8* %arrayidx461, align 1, !tbaa !1
  %call464 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0), i32 %add462, i32 %add462, i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0), i8* %call69) #5
  br label %for.cond466.preheader

for.cond466.preheader:                            ; preds = %if.end450, %if.then454
  %117 = load i32* %ngc, align 4, !tbaa !4
  %cmp468792 = icmp sgt i32 %117, 0
  br i1 %cmp468792, label %for.body470, label %for.inc488

for.body470:                                      ; preds = %for.cond466.preheader, %for.body470
  %indvars.iv831 = phi i64 [ %indvars.iv.next832, %for.body470 ], [ 0, %for.cond466.preheader ]
  %118 = load i8*** %gc, align 8, !tbaa !0
  %arrayidx472 = getelementptr inbounds i8** %118, i64 %indvars.iv831
  %119 = load i8** %arrayidx472, align 8, !tbaa !0
  %add.ptr474 = getelementptr inbounds i8* %119, i64 %indvars.iv833
  %call476 = call i8* @strncpy(i8* %call69, i8* %add.ptr474, i64 %conv458) #5
  store i8 0, i8* %arrayidx461, align 1, !tbaa !1
  %120 = load i8*** %gc_tag482, align 8, !tbaa !0
  %arrayidx483 = getelementptr inbounds i8** %120, i64 %indvars.iv831
  %121 = load i8** %arrayidx483, align 8, !tbaa !0
  %call484 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0), i32 %add462, i32 %add462, i8* %121, i8* %call69) #5
  %indvars.iv.next832 = add i64 %indvars.iv831, 1
  %122 = load i32* %ngc, align 4, !tbaa !4
  %123 = trunc i64 %indvars.iv.next832 to i32
  %cmp468 = icmp slt i32 %123, %122
  br i1 %cmp468, label %for.body470, label %for.inc488

for.inc488:                                       ; preds = %for.body470, %for.cond466.preheader
  %indvars.iv.next834 = add i64 %indvars.iv833, %conv458
  %124 = load i32* %alen, align 4, !tbaa !4
  %125 = trunc i64 %indvars.iv.next834 to i32
  %cmp309 = icmp slt i32 %125, %124
  br i1 %cmp309, label %for.body311, label %for.end490

for.end490:                                       ; preds = %for.inc488, %for.cond308.preheader
  %126 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str48, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp)
  call void @free(i8* %call69) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @WriteStockholmOneBlock(%struct._IO_FILE* %fp, %struct.msa_struct* %msa) #0 {
entry:
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %0 = load i32* %alen, align 4, !tbaa !4
  tail call fastcc void @actually_write_stockholm(%struct._IO_FILE* %fp, %struct.msa_struct* %msa, i32 %0) #7
  ret void
}

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #2

; Function Attrs: optsize
declare i32 @MSAGetSeqidx(%struct.msa_struct*, i8*, i32) #2

; Function Attrs: optsize
declare i32 @sre_strcat(i8**, i32, i8*, i32) #2

; Function Attrs: optsize
declare void @MSAAddComment(%struct.msa_struct*, i8*) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: optsize
declare void @MSAAppendGR(%struct.msa_struct*, i8*, i32, i8*) #2

; Function Attrs: optsize
declare void @MSAAppendGC(%struct.msa_struct*, i8*, i8*) #2

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #3

; Function Attrs: optsize
declare void @MSASetSeqAccession(%struct.msa_struct*, i32, i8*) #2

; Function Attrs: optsize
declare void @MSASetSeqDescription(%struct.msa_struct*, i32, i8*) #2

; Function Attrs: optsize
declare void @MSAAddGS(%struct.msa_struct*, i8*, i32, i8*) #2

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #2

; Function Attrs: optsize
declare void @MSAAddGF(%struct.msa_struct*, i8*, i8*) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
