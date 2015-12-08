; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c'
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
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [24 x i8] c"!!AA_MULTIPLE_ALIGNMENT\00", align 1
@.str1 = private unnamed_addr constant [24 x i8] c"!!NA_MULTIPLE_ALIGNMENT\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"MSF:\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"^.+MSF: +([0-9]+) +Type: +([PNX]).+Check: +([0-9]+) +\5C.\5C.\00", align 1
@sqd_parse = external global [10 x i8*]
@.str5 = private unnamed_addr constant [6 x i8] c"Name:\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str7 = private unnamed_addr constant [8 x i8] c"Weight:\00", align 1
@.str8 = private unnamed_addr constant [61 x i8] c"No Weight: on line %d for %s in name section of MSF file %s\0A\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str10 = private unnamed_addr constant [63 x i8] c"Invalid line (probably %d) in name section of MSF file %s:\0A%s\0A\00", align 1
@squid_errno = external global i32
@.str11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str12 = private unnamed_addr constant [46 x i8] c"Didn't find a sequence for %s in MSF file %s\0A\00", align 1
@.str13 = private unnamed_addr constant [49 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c\00", align 1
@.str14 = private unnamed_addr constant [29 x i8] c"!!NA_MULTIPLE_ALIGNMENT 1.0\0A\00", align 1
@.str15 = private unnamed_addr constant [29 x i8] c"!!AA_MULTIPLE_ALIGNMENT 1.0\0A\00", align 1
@.str16 = private unnamed_addr constant [70 x i8] c"WriteMSF(): couldn't guess whether that alignment is RNA or protein.\0A\00", align 1
@.str17 = private unnamed_addr constant [40 x i8] c"Invalid sequence type %d in WriteMSF()\0A\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str19 = private unnamed_addr constant [16 x i8] c"%B %d, %Y %H:%M\00", align 1
@.str20 = private unnamed_addr constant [60 x i8] c"What time is it on earth? strftime() failed in WriteMSF().\0A\00", align 1
@.str21 = private unnamed_addr constant [43 x i8] c" %s  MSF: %d  Type: %c  %s  Check: %d  ..\0A\00", align 1
@.str22 = private unnamed_addr constant [10 x i8] c"squid.msf\00", align 1
@.str23 = private unnamed_addr constant [52 x i8] c" Name: %-*.*s  Len:  %5d  Check: %4d  Weight: %.2f\0A\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"//\0A\00", align 1
@.str25 = private unnamed_addr constant [17 x i8] c"%*s  %-6d%*s%6d\0A\00", align 1
@.str26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str27 = private unnamed_addr constant [11 x i8] c"%*s  %-6d\0A\00", align 1
@.str28 = private unnamed_addr constant [6 x i8] c"%-*s \00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.msa_struct* @ReadMSF(%struct.msafile_struct* %afp) #0 {
entry:
  %sp = alloca i8*, align 8
  %slen = alloca i32, align 4
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0
  %0 = load %struct._IO_FILE** %f, align 8, !tbaa !0
  %call = call i32 @feof(%struct._IO_FILE* %0) #6
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call %struct.msa_struct* @MSAAlloc(i32 10, i32 0) #6
  %call5 = call i32 @strncmp(i8* %call1, i8* getelementptr inbounds ([24 x i8]* @.str, i64 0, i64 0), i64 23) #7
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end3
  %type = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 6
  store i32 3, i32* %type, align 4, !tbaa !3
  %call8 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %return, label %do.body

if.else:                                          ; preds = %if.end3
  %call12 = call i32 @strncmp(i8* %call1, i8* getelementptr inbounds ([24 x i8]* @.str1, i64 0, i64 0), i64 23) #7
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %do.body

if.then14:                                        ; preds = %if.else
  %type15 = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 6
  store i32 2, i32* %type15, align 4, !tbaa !3
  %call16 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %return, label %do.body

do.body:                                          ; preds = %if.then7, %if.then14, %if.else, %do.cond
  %s.0 = phi i8* [ %call45, %do.cond ], [ %call8, %if.then7 ], [ %call16, %if.then14 ], [ %call1, %if.else ]
  %call22 = call i8* @strstr(i8* %s.0, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #7
  %cmp23 = icmp eq i8* %call22, null
  br i1 %cmp23, label %if.end40, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %call24 = call i8* @strstr(i8* %s.0, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #7
  %cmp25 = icmp eq i8* %call24, null
  br i1 %cmp25, label %if.end40, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %land.lhs.true
  %call27 = call i32 @Strparse(i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), i8* %s.0, i32 3) #6
  %tobool28 = icmp eq i32 %call27, 0
  br i1 %tobool28, label %if.end40, label %if.then29

if.then29:                                        ; preds = %land.lhs.true26
  %1 = load i8** getelementptr inbounds ([10 x i8*]* @sqd_parse, i64 0, i64 1), align 8, !tbaa !0
  %2 = load i8* %1, align 1, !tbaa !1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 78, label %sw.epilog
    i32 80, label %sw.bb31
    i32 88, label %sw.bb32
  ]

sw.bb31:                                          ; preds = %if.then29
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.then29
  br label %sw.epilog

sw.default:                                       ; preds = %if.then29
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then29, %sw.default, %sw.bb32, %sw.bb31
  %alleged_type.0 = phi i32 [ 0, %sw.default ], [ 0, %sw.bb32 ], [ 3, %sw.bb31 ], [ 2, %if.then29 ]
  %type34 = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 6
  %3 = load i32* %type34, align 4, !tbaa !3
  %cmp35 = icmp eq i32 %3, 0
  br i1 %cmp35, label %if.then37, label %while.cond.preheader

if.then37:                                        ; preds = %sw.epilog
  store i32 %alleged_type.0, i32* %type34, align 4, !tbaa !3
  br label %while.cond.preheader

if.end40:                                         ; preds = %land.lhs.true26, %land.lhs.true, %do.body
  %call41 = call i32 @IsBlankline(i8* %s.0) #6
  %tobool42 = icmp eq i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %do.cond

if.then43:                                        ; preds = %if.end40
  call void @MSAAddComment(%struct.msa_struct* %call4, i8* %s.0) #6
  br label %do.cond

do.cond:                                          ; preds = %if.end40, %if.then43
  %call45 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6
  %cmp46 = icmp eq i8* %call45, null
  br i1 %cmp46, label %while.cond.preheader, label %do.body

while.cond.preheader:                             ; preds = %do.cond, %sw.epilog, %if.then37
  %call48273 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6
  %cmp49274 = icmp eq i8* %call48273, null
  br i1 %cmp49274, label %while.cond108.preheader, label %while.cond51.preheader.lr.ph

while.cond51.preheader.lr.ph:                     ; preds = %while.cond.preheader
  %index = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 39
  %nseqalloc = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 40
  %sqname = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 1
  %nseq = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 4
  %linenumber = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 2
  %fname = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1
  %wgt = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 2
  %flags = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 5
  br label %while.cond51

while.cond108.preheader:                          ; preds = %while.cond.preheader, %while.cond.backedge, %if.else96
  %call109270 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6
  %cmp110271 = icmp eq i8* %call109270, null
  br i1 %cmp110271, label %for.cond.preheader, label %while.body112.lr.ph

while.body112.lr.ph:                              ; preds = %while.cond108.preheader
  %index139 = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 39
  %aseq = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 0
  %sqlen = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 42
  br label %while.body112

while.cond51:                                     ; preds = %while.cond.backedge, %while.cond51.preheader.lr.ph, %while.body60
  %s.1 = phi i8* [ %incdec.ptr, %while.body60 ], [ %call48273, %while.cond51.preheader.lr.ph ], [ %call48, %while.cond.backedge ]
  %4 = load i8* %s.1, align 1, !tbaa !1
  switch i8 %4, label %if.else70 [
    i8 32, label %while.body60
    i8 9, label %while.body60
    i8 10, label %while.cond.backedge
    i8 33, label %if.then69
  ]

while.body60:                                     ; preds = %while.cond51, %while.cond51
  %incdec.ptr = getelementptr inbounds i8* %s.1, i64 1
  br label %while.cond51

if.then69:                                        ; preds = %while.cond51
  call void @MSAAddComment(%struct.msa_struct* %call4, i8* %s.1) #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond51, %if.then69, %if.end89
  %call48 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6
  %cmp49 = icmp eq i8* %call48, null
  br i1 %cmp49, label %while.cond108.preheader, label %while.cond51

if.else70:                                        ; preds = %while.cond51
  %call71 = call i8* @strstr(i8* %s.1, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #7
  store i8* %call71, i8** %sp, align 8, !tbaa !0
  %cmp72 = icmp eq i8* %call71, null
  br i1 %cmp72, label %if.else96, label %if.then74

if.then74:                                        ; preds = %if.else70
  %add.ptr = getelementptr inbounds i8* %call71, i64 5
  store i8* %add.ptr, i8** %sp, align 8, !tbaa !0
  %call75 = call i8* @sre_strtok(i8** %sp, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* %slen) #6
  %5 = load %struct.GKI** %index, align 8, !tbaa !0
  %call76 = call i32 @GKIStoreKey(%struct.GKI* %5, i8* %call75) #6
  %6 = load i32* %nseqalloc, align 4, !tbaa !3
  %cmp77 = icmp slt i32 %call76, %6
  br i1 %cmp77, label %if.end80, label %if.then79

if.then79:                                        ; preds = %if.then74
  call void @MSAExpand(%struct.msa_struct* %call4) #6
  br label %if.end80

if.end80:                                         ; preds = %if.then74, %if.then79
  %7 = load i32* %slen, align 4, !tbaa !3
  %call81 = call i8* @sre_strdup(i8* %call75, i32 %7) #6
  %idxprom = sext i32 %call76 to i64
  %8 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %8, i64 %idxprom
  store i8* %call81, i8** %arrayidx, align 8, !tbaa !0
  %9 = load i32* %nseq, align 4, !tbaa !3
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %nseq, align 4, !tbaa !3
  %10 = load i8** %sp, align 8, !tbaa !0
  %call82 = call i8* @strstr(i8* %10, i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) #7
  store i8* %call82, i8** %sp, align 8, !tbaa !0
  %cmp83 = icmp eq i8* %call82, null
  br i1 %cmp83, label %if.then85, label %if.end89

if.then85:                                        ; preds = %if.end80
  %11 = load i32* %linenumber, align 4, !tbaa !3
  %12 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx88 = getelementptr inbounds i8** %12, i64 %idxprom
  %13 = load i8** %arrayidx88, align 8, !tbaa !0
  %14 = load i8** %fname, align 8, !tbaa !0
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([61 x i8]* @.str8, i64 0, i64 0), i32 %11, i8* %13, i8* %14) #6
  %.pre278 = load i8** %sp, align 8, !tbaa !0
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %if.end80
  %15 = phi i8* [ %.pre278, %if.then85 ], [ %call82, %if.end80 ]
  %add.ptr90 = getelementptr inbounds i8* %15, i64 7
  store i8* %add.ptr90, i8** %sp, align 8, !tbaa !0
  %call91 = call i8* @sre_strtok(i8** %sp, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* %slen) #6
  %call92 = call double @atof(i8* %call91) #7
  %conv93 = fptrunc double %call92 to float
  %16 = load float** %wgt, align 8, !tbaa !0
  %arrayidx95 = getelementptr inbounds float* %16, i64 %idxprom
  store float %conv93, float* %arrayidx95, align 4, !tbaa !4
  %17 = load i32* %flags, align 4, !tbaa !3
  %or = or i32 %17, 1
  store i32 %or, i32* %flags, align 4, !tbaa !3
  br label %while.cond.backedge

if.else96:                                        ; preds = %if.else70
  %call97 = call i32 @strncmp(i8* %s.1, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i64 2) #7
  %cmp98 = icmp eq i32 %call97, 0
  br i1 %cmp98, label %while.cond108.preheader, label %if.else101

if.else101:                                       ; preds = %if.else96
  %18 = load i32* %linenumber, align 4, !tbaa !3
  %19 = load i8** %fname, align 8, !tbaa !0
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([63 x i8]* @.str10, i64 0, i64 0), i32 %18, i8* %19, i8* %s.1) #6
  store i32 5, i32* @squid_errno, align 4, !tbaa !3
  br label %return

for.cond.preheader:                               ; preds = %while.cond108.backedge, %while.cond108.preheader
  %nseq154 = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 4
  %20 = load i32* %nseq154, align 4, !tbaa !3
  %cmp155268 = icmp sgt i32 %20, 0
  br i1 %cmp155268, label %for.body.lr.ph, label %for.end193

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %aseq158 = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 0
  %sqname164 = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 1
  %fname166 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1
  %sqlen185 = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 42
  br label %for.body

while.body112:                                    ; preds = %while.body112.lr.ph, %while.cond108.backedge
  %call109272 = phi i8* [ %call109270, %while.body112.lr.ph ], [ %call109, %while.cond108.backedge ]
  store i8* %call109272, i8** %sp, align 8, !tbaa !0
  %call113 = call i8* @sre_strtok(i8** %sp, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* null) #6
  %cmp114 = icmp eq i8* %call113, null
  br i1 %cmp114, label %while.cond108.backedge, label %if.end117

if.end117:                                        ; preds = %while.body112
  %call118 = call i8* @sre_strtok(i8** %sp, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i32* %slen) #6
  %cmp119 = icmp eq i8* %call118, null
  br i1 %cmp119, label %while.cond108.backedge, label %if.end122

if.end122:                                        ; preds = %if.end117
  %21 = load i8* %call113, align 1, !tbaa !1
  %idxprom124 = sext i8 %21 to i64
  %call125 = call i16** @__ctype_b_loc() #8
  %22 = load i16** %call125, align 8, !tbaa !0
  %arrayidx126 = getelementptr inbounds i16* %22, i64 %idxprom124
  %23 = load i16* %arrayidx126, align 2, !tbaa !5
  %and = and i16 %23, 2048
  %tobool128 = icmp eq i16 %and, 0
  br i1 %tobool128, label %if.end138, label %land.lhs.true129

land.lhs.true129:                                 ; preds = %if.end122
  %24 = load i8* %call118, align 1, !tbaa !1
  %idxprom131 = sext i8 %24 to i64
  %arrayidx133 = getelementptr inbounds i16* %22, i64 %idxprom131
  %25 = load i16* %arrayidx133, align 2, !tbaa !5
  %and135 = and i16 %25, 2048
  %tobool136 = icmp eq i16 %and135, 0
  br i1 %tobool136, label %if.end138, label %while.cond108.backedge

if.end138:                                        ; preds = %land.lhs.true129, %if.end122
  %26 = load %struct.GKI** %index139, align 8, !tbaa !0
  %call140 = call i32 @GKIKeyIndex(%struct.GKI* %26, i8* %call113) #6
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %while.cond108.backedge, label %if.end144

if.end144:                                        ; preds = %if.end138
  %idxprom145 = sext i32 %call140 to i64
  %27 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx146 = getelementptr inbounds i8** %27, i64 %idxprom145
  %28 = load i32** %sqlen, align 8, !tbaa !0
  %arrayidx148 = getelementptr inbounds i32* %28, i64 %idxprom145
  %29 = load i32* %arrayidx148, align 4, !tbaa !3
  %30 = load i32* %slen, align 4, !tbaa !3
  %call149 = call i32 @sre_strcat(i8** %arrayidx146, i32 %29, i8* %call118, i32 %30) #6
  %31 = load i32** %sqlen, align 8, !tbaa !0
  %arrayidx152 = getelementptr inbounds i32* %31, i64 %idxprom145
  store i32 %call149, i32* %arrayidx152, align 4, !tbaa !3
  br label %while.cond108.backedge

while.cond108.backedge:                           ; preds = %if.end144, %while.body112, %if.end117, %if.end138, %land.lhs.true129
  %call109 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6
  %cmp110 = icmp eq i8* %call109, null
  br i1 %cmp110, label %for.cond.preheader, label %while.body112

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.end ]
  %32 = load i8*** %aseq158, align 8, !tbaa !0
  %arrayidx159 = getelementptr inbounds i8** %32, i64 %indvars.iv
  %33 = load i8** %arrayidx159, align 8, !tbaa !0
  %cmp160 = icmp eq i8* %33, null
  br i1 %cmp160, label %if.then162, label %if.end167

if.then162:                                       ; preds = %for.body
  %34 = load i8*** %sqname164, align 8, !tbaa !0
  %arrayidx165 = getelementptr inbounds i8** %34, i64 %indvars.iv
  %35 = load i8** %arrayidx165, align 8, !tbaa !0
  %36 = load i8** %fname166, align 8, !tbaa !0
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([46 x i8]* @.str12, i64 0, i64 0), i8* %35, i8* %36) #6
  %.pre = load i8*** %aseq158, align 8, !tbaa !0
  %arrayidx170.phi.trans.insert = getelementptr inbounds i8** %.pre, i64 %indvars.iv
  %.pre277 = load i8** %arrayidx170.phi.trans.insert, align 8, !tbaa !0
  br label %if.end167

if.end167:                                        ; preds = %if.then162, %for.body
  %37 = phi i8* [ %.pre277, %if.then162 ], [ %33, %for.body ]
  store i8* %37, i8** %sp, align 8, !tbaa !0
  br label %for.cond171

for.cond171:                                      ; preds = %for.inc, %if.end167
  %38 = phi i8* [ %37, %if.end167 ], [ %43, %for.inc ]
  %s.2 = phi i8* [ %37, %if.end167 ], [ %incdec.ptr190, %for.inc ]
  %39 = load i8* %s.2, align 1, !tbaa !1
  switch i8 %39, label %if.else187 [
    i8 0, label %for.end
    i8 32, label %if.then183
    i8 9, label %if.then183
  ]

if.then183:                                       ; preds = %for.cond171, %for.cond171
  %40 = load i32** %sqlen185, align 8, !tbaa !0
  %arrayidx186 = getelementptr inbounds i32* %40, i64 %indvars.iv
  %41 = load i32* %arrayidx186, align 4, !tbaa !3
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %arrayidx186, align 4, !tbaa !3
  br label %for.inc

if.else187:                                       ; preds = %for.cond171
  store i8 %39, i8* %38, align 1, !tbaa !1
  %42 = load i8** %sp, align 8, !tbaa !0
  %incdec.ptr188 = getelementptr inbounds i8* %42, i64 1
  store i8* %incdec.ptr188, i8** %sp, align 8, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %if.then183, %if.else187
  %43 = phi i8* [ %38, %if.then183 ], [ %incdec.ptr188, %if.else187 ]
  %incdec.ptr190 = getelementptr inbounds i8* %s.2, i64 1
  br label %for.cond171

for.end:                                          ; preds = %for.cond171
  store i8 0, i8* %38, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %44 = load i32* %nseq154, align 4, !tbaa !3
  %45 = trunc i64 %indvars.iv.next to i32
  %cmp155 = icmp slt i32 %45, %44
  br i1 %cmp155, label %for.body, label %for.end193

for.end193:                                       ; preds = %for.end, %for.cond.preheader
  call void @MSAVerifyParse(%struct.msa_struct* %call4) #6
  br label %return

return:                                           ; preds = %if.then14, %if.then7, %if.end, %entry, %for.end193, %if.else101
  %retval.0 = phi %struct.msa_struct* [ %call4, %for.end193 ], [ null, %if.else101 ], [ null, %entry ], [ null, %if.end ], [ null, %if.then7 ], [ null, %if.then14 ]
  ret %struct.msa_struct* %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i8* @MSAFileGetLine(%struct.msafile_struct*) #2

; Function Attrs: optsize
declare %struct.msa_struct* @MSAAlloc(i32, i32) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @Strparse(i8*, i8*, i32) #2

; Function Attrs: optsize
declare i32 @IsBlankline(i8*) #2

; Function Attrs: optsize
declare void @MSAAddComment(%struct.msa_struct*, i8*) #2

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #2

; Function Attrs: optsize
declare i32 @GKIStoreKey(%struct.GKI*, i8*) #2

; Function Attrs: optsize
declare void @MSAExpand(%struct.msa_struct*) #2

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #3

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: optsize
declare i32 @GKIKeyIndex(%struct.GKI*, i8*) #2

; Function Attrs: optsize
declare i32 @sre_strcat(i8**, i32, i8*, i32) #2

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #2

; Function Attrs: nounwind optsize uwtable
define void @WriteMSF(%struct._IO_FILE* nocapture %fp, %struct.msa_struct* nocapture %msa) #0 {
entry:
  %now = alloca i64, align 8
  %date = alloca [64 x i8], align 16
  %buffer = alloca [51 x i8], align 16
  %0 = getelementptr inbounds [64 x i8]* %date, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64, i8* %0) #5
  %1 = getelementptr inbounds [51 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 51, i8* %1) #5
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4
  %2 = load i32* %nseq, align 4, !tbaa !3
  %conv = sext i32 %2 to i64
  %mul = shl nsw i64 %conv, 3
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i32 273, i64 %mul) #6
  %3 = bitcast i8* %call to i8**
  %4 = load i32* %nseq, align 4, !tbaa !3
  %conv2 = sext i32 %4 to i64
  %mul3 = shl nsw i64 %conv2, 3
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i32 274, i64 %mul3) #6
  %5 = bitcast i8* %call4 to i8**
  %6 = load i32* %nseq, align 4, !tbaa !3
  %cmp519 = icmp sgt i32 %6, 0
  br i1 %cmp519, label %for.body.lr.ph, label %for.end177

for.body.lr.ph:                                   ; preds = %entry
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  br label %for.body

for.cond15.preheader:                             ; preds = %for.body
  %cmp17517 = icmp sgt i32 %12, 0
  br i1 %cmp17517, label %for.body19, label %for.end177

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv543 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next544, %for.body ]
  %7 = load i8*** %aseq, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %7, i64 %indvars.iv543
  %8 = load i8** %arrayidx, align 8, !tbaa !0
  %9 = load i32* %alen, align 4, !tbaa !3
  %call7 = call i8* @sre_strdup(i8* %8, i32 %9) #6
  %arrayidx9 = getelementptr inbounds i8** %3, i64 %indvars.iv543
  store i8* %call7, i8** %arrayidx9, align 8, !tbaa !0
  %10 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds i8** %10, i64 %indvars.iv543
  %11 = load i8** %arrayidx11, align 8, !tbaa !0
  %call12 = call i8* @sre_strdup(i8* %11, i32 -1) #6
  %arrayidx14 = getelementptr inbounds i8** %5, i64 %indvars.iv543
  store i8* %call12, i8** %arrayidx14, align 8, !tbaa !0
  %indvars.iv.next544 = add i64 %indvars.iv543, 1
  %12 = load i32* %nseq, align 4, !tbaa !3
  %13 = trunc i64 %indvars.iv.next544 to i32
  %cmp = icmp slt i32 %13, %12
  br i1 %cmp, label %for.body, label %for.cond15.preheader

for.cond44.preheader:                             ; preds = %for.inc41
  %cmp46513 = icmp sgt i32 %21, 0
  br i1 %cmp46513, label %for.body48.lr.ph, label %for.end177

for.body48.lr.ph:                                 ; preds = %for.cond44.preheader
  %alen105 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  br label %for.body48

for.body19:                                       ; preds = %for.cond15.preheader, %for.inc41
  %14 = phi i32 [ %21, %for.inc41 ], [ %12, %for.cond15.preheader ]
  %indvars.iv541 = phi i64 [ %indvars.iv.next542, %for.inc41 ], [ 0, %for.cond15.preheader ]
  %arrayidx21 = getelementptr inbounds i8** %5, i64 %indvars.iv541
  %15 = load i8** %arrayidx21, align 8, !tbaa !0
  %16 = load i8* %15, align 1, !tbaa !1
  %cmp24515 = icmp eq i8 %16, 0
  br i1 %cmp24515, label %for.inc41, label %for.body26.lr.ph

for.body26.lr.ph:                                 ; preds = %for.body19
  %call29 = call i16** @__ctype_b_loc() #8
  br label %for.body26

for.body26:                                       ; preds = %for.inc39, %for.body26.lr.ph
  %17 = phi i8 [ %16, %for.body26.lr.ph ], [ %20, %for.inc39 ]
  %s.0516 = phi i8* [ %15, %for.body26.lr.ph ], [ %incdec.ptr, %for.inc39 ]
  %idxprom28 = sext i8 %17 to i64
  %18 = load i16** %call29, align 8, !tbaa !0
  %arrayidx30 = getelementptr inbounds i16* %18, i64 %idxprom28
  %19 = load i16* %arrayidx30, align 2, !tbaa !5
  %and = and i16 %19, 8
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %switch.early.test, label %for.inc39

switch.early.test:                                ; preds = %for.body26
  switch i8 %17, label %if.then [
    i8 95, label %for.inc39
    i8 45, label %for.inc39
  ]

if.then:                                          ; preds = %switch.early.test
  store i8 95, i8* %s.0516, align 1, !tbaa !1
  br label %for.inc39

for.inc39:                                        ; preds = %for.body26, %switch.early.test, %switch.early.test, %if.then
  %incdec.ptr = getelementptr inbounds i8* %s.0516, i64 1
  %20 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp24 = icmp eq i8 %20, 0
  br i1 %cmp24, label %for.cond22.for.inc41_crit_edge, label %for.body26

for.cond22.for.inc41_crit_edge:                   ; preds = %for.inc39
  %.pre546 = load i32* %nseq, align 4, !tbaa !3
  br label %for.inc41

for.inc41:                                        ; preds = %for.body19, %for.cond22.for.inc41_crit_edge
  %21 = phi i32 [ %.pre546, %for.cond22.for.inc41_crit_edge ], [ %14, %for.body19 ]
  %indvars.iv.next542 = add i64 %indvars.iv541, 1
  %22 = trunc i64 %indvars.iv.next542 to i32
  %cmp17 = icmp slt i32 %22, %21
  br i1 %cmp17, label %for.body19, label %for.cond44.preheader

for.cond161.preheader:                            ; preds = %for.inc158
  %cmp163506 = icmp sgt i32 %31, 0
  br i1 %cmp163506, label %for.body165.lr.ph, label %for.end177

for.body165.lr.ph:                                ; preds = %for.cond161.preheader
  %sqname167 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1
  %23 = load i8*** %sqname167, align 8, !tbaa !0
  br label %for.body165

for.body48:                                       ; preds = %for.body48.lr.ph, %for.inc158
  %indvars.iv539 = phi i64 [ 0, %for.body48.lr.ph ], [ %indvars.iv.next540, %for.inc158 ]
  %arrayidx50 = getelementptr inbounds i8** %3, i64 %indvars.iv539
  %24 = load i8** %arrayidx50, align 8, !tbaa !0
  br label %for.cond51

for.cond51:                                       ; preds = %for.body72, %for.body48
  %s.1 = phi i8* [ %24, %for.body48 ], [ %incdec.ptr74, %for.body72 ]
  %25 = load i8* %s.1, align 1, !tbaa !1
  switch i8 %25, label %for.cond76 [
    i8 126, label %for.body72
    i8 32, label %for.body72
    i8 46, label %for.body72
    i8 95, label %for.body72
    i8 45, label %for.body72
  ]

for.body72:                                       ; preds = %for.cond51, %for.cond51, %for.cond51, %for.cond51, %for.cond51
  store i8 126, i8* %s.1, align 1, !tbaa !1
  %incdec.ptr74 = getelementptr inbounds i8* %s.1, i64 1
  br label %for.cond51

for.cond76:                                       ; preds = %for.cond51, %for.inc102
  %26 = phi i8 [ %.pre, %for.inc102 ], [ %25, %for.cond51 ]
  %s.2 = phi i8* [ %incdec.ptr103, %for.inc102 ], [ %s.1, %for.cond51 ]
  switch i8 %26, label %for.inc102 [
    i8 0, label %for.end104
    i8 32, label %if.then100
    i8 46, label %if.then100
    i8 95, label %if.then100
    i8 45, label %if.then100
    i8 126, label %if.then100
  ]

if.then100:                                       ; preds = %for.cond76, %for.cond76, %for.cond76, %for.cond76, %for.cond76
  store i8 46, i8* %s.2, align 1, !tbaa !1
  br label %for.inc102

for.inc102:                                       ; preds = %for.cond76, %if.then100
  %incdec.ptr103 = getelementptr inbounds i8* %s.2, i64 1
  %.pre = load i8* %incdec.ptr103, align 1, !tbaa !1
  br label %for.cond76

for.end104:                                       ; preds = %for.cond76
  %27 = load i32* %alen105, align 4, !tbaa !3
  %pos.0510 = add i32 %27, -1
  %cmp107511 = icmp sgt i32 %pos.0510, 0
  br i1 %cmp107511, label %land.rhs109.lr.ph, label %for.inc158

land.rhs109.lr.ph:                                ; preds = %for.end104
  %28 = sext i32 %pos.0510 to i64
  br label %land.rhs109

land.rhs109:                                      ; preds = %for.body151.land.rhs109_crit_edge, %land.rhs109.lr.ph
  %indvars.iv536 = phi i64 [ %28, %land.rhs109.lr.ph ], [ %indvars.iv.next537, %for.body151.land.rhs109_crit_edge ]
  %pos.0512 = phi i32 [ %pos.0510, %land.rhs109.lr.ph ], [ %pos.0, %for.body151.land.rhs109_crit_edge ]
  %29 = load i8** %arrayidx50, align 8, !tbaa !0
  %arrayidx113 = getelementptr inbounds i8* %29, i64 %indvars.iv536
  %30 = load i8* %arrayidx113, align 1, !tbaa !1
  switch i8 %30, label %for.inc158 [
    i8 32, label %for.body151
    i8 46, label %for.body151
    i8 95, label %for.body151
    i8 45, label %for.body151
    i8 126, label %for.body151
  ]

for.body151:                                      ; preds = %land.rhs109, %land.rhs109, %land.rhs109, %land.rhs109, %land.rhs109
  store i8 126, i8* %arrayidx113, align 1, !tbaa !1
  %pos.0 = add nsw i32 %pos.0512, -1
  %cmp107 = icmp sgt i32 %pos.0, 0
  br i1 %cmp107, label %for.body151.land.rhs109_crit_edge, label %for.inc158

for.body151.land.rhs109_crit_edge:                ; preds = %for.body151
  %indvars.iv.next537 = add i64 %indvars.iv536, -1
  br label %land.rhs109

for.inc158:                                       ; preds = %for.body151, %land.rhs109, %for.end104
  %indvars.iv.next540 = add i64 %indvars.iv539, 1
  %31 = load i32* %nseq, align 4, !tbaa !3
  %32 = trunc i64 %indvars.iv.next540 to i32
  %cmp46 = icmp slt i32 %32, %31
  br i1 %cmp46, label %for.body48, label %for.cond161.preheader

for.body165:                                      ; preds = %for.body165.lr.ph, %for.body165
  %indvars.iv534 = phi i64 [ 0, %for.body165.lr.ph ], [ %indvars.iv.next535, %for.body165 ]
  %namelen.0507 = phi i32 [ 0, %for.body165.lr.ph ], [ %conv170.namelen.0, %for.body165 ]
  %arrayidx168 = getelementptr inbounds i8** %23, i64 %indvars.iv534
  %33 = load i8** %arrayidx168, align 8, !tbaa !0
  %call169 = call i64 @strlen(i8* %33) #7
  %conv170 = trunc i64 %call169 to i32
  %cmp171 = icmp sgt i32 %conv170, %namelen.0507
  %conv170.namelen.0 = select i1 %cmp171, i32 %conv170, i32 %namelen.0507
  %indvars.iv.next535 = add i64 %indvars.iv534, 1
  %34 = trunc i64 %indvars.iv.next535 to i32
  %cmp163 = icmp slt i32 %34, %31
  br i1 %cmp163, label %for.body165, label %for.end177

for.end177:                                       ; preds = %entry, %for.cond15.preheader, %for.cond44.preheader, %for.body165, %for.cond161.preheader
  %35 = phi i32 [ %31, %for.cond161.preheader ], [ %31, %for.body165 ], [ %21, %for.cond44.preheader ], [ %12, %for.cond15.preheader ], [ %6, %entry ]
  %namelen.0.lcssa = phi i32 [ 0, %for.cond161.preheader ], [ %conv170.namelen.0, %for.body165 ], [ 0, %for.cond44.preheader ], [ 0, %for.cond15.preheader ], [ 0, %entry ]
  %type = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 6
  %36 = load i32* %type, align 4, !tbaa !3
  %cmp178 = icmp eq i32 %36, 0
  br i1 %cmp178, label %if.then180, label %if.end185

if.then180:                                       ; preds = %for.end177
  %aseq181 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0
  %37 = load i8*** %aseq181, align 8, !tbaa !0
  %call183 = call i32 @GuessAlignmentSeqtype(i8** %37, i32 %35) #6
  store i32 %call183, i32* %type, align 4, !tbaa !3
  br label %if.end185

if.end185:                                        ; preds = %if.then180, %for.end177
  %38 = phi i32 [ %call183, %if.then180 ], [ %36, %for.end177 ]
  switch i32 %38, label %if.else207 [
    i32 2, label %if.then189
    i32 1, label %if.then194
    i32 3, label %if.then200
    i32 0, label %if.then206
  ]

if.then189:                                       ; preds = %if.end185
  %39 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str14, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %fp)
  br label %if.end212

if.then194:                                       ; preds = %if.end185
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str14, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %fp)
  br label %if.end212

if.then200:                                       ; preds = %if.end185
  %41 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str15, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %fp)
  br label %if.end212

if.then206:                                       ; preds = %if.end185
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([70 x i8]* @.str16, i64 0, i64 0)) #6
  br label %if.end212

if.else207:                                       ; preds = %if.end185
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str17, i64 0, i64 0), i32 %38) #6
  br label %if.end212

if.end212:                                        ; preds = %if.then194, %if.then206, %if.else207, %if.then200, %if.then189
  %ncomment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 21
  %42 = load i32* %ncomment, align 4, !tbaa !3
  %cmp213 = icmp sgt i32 %42, 0
  br i1 %cmp213, label %for.body220.lr.ph, label %if.end228

for.body220.lr.ph:                                ; preds = %if.end212
  %comment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 20
  br label %for.body220

for.body220:                                      ; preds = %for.body220.lr.ph, %for.body220
  %indvars.iv532 = phi i64 [ 0, %for.body220.lr.ph ], [ %indvars.iv.next533, %for.body220 ]
  %43 = load i8*** %comment, align 8, !tbaa !0
  %arrayidx222 = getelementptr inbounds i8** %43, i64 %indvars.iv532
  %44 = load i8** %arrayidx222, align 8, !tbaa !0
  %call223 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str18, i64 0, i64 0), i8* %44) #6
  %indvars.iv.next533 = add i64 %indvars.iv532, 1
  %45 = load i32* %ncomment, align 4, !tbaa !3
  %46 = trunc i64 %indvars.iv.next533 to i32
  %cmp218 = icmp slt i32 %46, %45
  br i1 %cmp218, label %for.body220, label %for.end226

for.end226:                                       ; preds = %for.body220
  %fputc494 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp) #5
  br label %if.end228

if.end228:                                        ; preds = %for.end226, %if.end212
  %call229 = call i64 @time(i64* null) #6
  store i64 %call229, i64* %now, align 8, !tbaa !6
  %call230 = call %struct.tm* @localtime(i64* %now) #6
  %call231 = call i64 @strftime(i8* %0, i64 64, i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0), %struct.tm* %call230) #6
  %cmp232 = icmp eq i64 %call231, 0
  br i1 %cmp232, label %if.then234, label %if.end235

if.then234:                                       ; preds = %if.end228
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([60 x i8]* @.str20, i64 0, i64 0)) #6
  br label %if.end235

if.end235:                                        ; preds = %if.then234, %if.end228
  %name = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7
  %47 = load i8** %name, align 8, !tbaa !0
  %cmp236 = icmp eq i8* %47, null
  %. = select i1 %cmp236, i8* getelementptr inbounds ([10 x i8]* @.str22, i64 0, i64 0), i8* %47
  %alen239 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3
  %48 = load i32* %alen239, align 4, !tbaa !3
  %49 = load i32* %type, align 4, !tbaa !3
  %cmp241 = icmp eq i32 %49, 2
  %cond243 = select i1 %cmp241, i32 78, i32 80
  %50 = load i32* %nseq, align 4, !tbaa !3
  %call246 = call i32 @GCGMultchecksum(i8** %3, i32 %50) #6
  %call247 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([43 x i8]* @.str21, i64 0, i64 0), i8* %., i32 %48, i32 %cond243, i8* %0, i32 %call246) #6
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %fp) #5
  %51 = load i32* %nseq, align 4, !tbaa !3
  %cmp251502 = icmp sgt i32 %51, 0
  br i1 %cmp251502, label %for.body253.lr.ph, label %for.end267

for.body253.lr.ph:                                ; preds = %if.end235
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2
  br label %for.body253

for.body253:                                      ; preds = %for.body253.lr.ph, %for.body253
  %indvars.iv530 = phi i64 [ 0, %for.body253.lr.ph ], [ %indvars.iv.next531, %for.body253 ]
  %arrayidx255 = getelementptr inbounds i8** %5, i64 %indvars.iv530
  %52 = load i8** %arrayidx255, align 8, !tbaa !0
  %53 = load i32* %alen239, align 4, !tbaa !3
  %arrayidx258 = getelementptr inbounds i8** %3, i64 %indvars.iv530
  %54 = load i8** %arrayidx258, align 8, !tbaa !0
  %call260 = call i32 @GCGchecksum(i8* %54, i32 %53) #6
  %55 = load float** %wgt, align 8, !tbaa !0
  %arrayidx262 = getelementptr inbounds float* %55, i64 %indvars.iv530
  %56 = load float* %arrayidx262, align 4, !tbaa !4
  %conv263 = fpext float %56 to double
  %call264 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([52 x i8]* @.str23, i64 0, i64 0), i32 %namelen.0.lcssa, i32 %namelen.0.lcssa, i8* %52, i32 %53, i32 %call260, double %conv263) #6
  %indvars.iv.next531 = add i64 %indvars.iv530, 1
  %57 = load i32* %nseq, align 4, !tbaa !3
  %58 = trunc i64 %indvars.iv.next531 to i32
  %cmp251 = icmp slt i32 %58, %57
  br i1 %cmp251, label %for.body253, label %for.end267

for.end267:                                       ; preds = %for.body253, %if.end235
  %fputc488 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp) #5
  %59 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp)
  %60 = load i32* %alen239, align 4, !tbaa !3
  %cmp272500 = icmp sgt i32 %60, 0
  br i1 %cmp272500, label %for.body274.lr.ph, label %for.end267.for.end332_crit_edge

for.end267.for.end332_crit_edge:                  ; preds = %for.end267
  %.pre545 = load i32* %nseq, align 4, !tbaa !3
  br label %for.end332

for.body274.lr.ph:                                ; preds = %for.end267
  %arrayidx310 = getelementptr inbounds [51 x i8]* %buffer, i64 0, i64 50
  br label %for.body274

for.cond270.loopexit:                             ; preds = %for.end325, %for.cond298.preheader
  %61 = phi i32 [ %69, %for.cond298.preheader ], [ %77, %for.end325 ]
  %62 = load i32* %alen239, align 4, !tbaa !3
  %cmp272 = icmp slt i32 %64, %62
  %indvars.iv.next522 = add i32 %indvars.iv521, -50
  %indvars.iv.next524 = add i32 %indvars.iv523, -50
  br i1 %cmp272, label %for.body274, label %for.end332

for.body274:                                      ; preds = %for.body274.lr.ph, %for.cond270.loopexit
  %indvars.iv527 = phi i64 [ 0, %for.body274.lr.ph ], [ %indvars.iv.next528, %for.cond270.loopexit ]
  %indvars.iv523 = phi i32 [ -51, %for.body274.lr.ph ], [ %indvars.iv.next524, %for.cond270.loopexit ]
  %indvars.iv521 = phi i32 [ -1, %for.body274.lr.ph ], [ %indvars.iv.next522, %for.cond270.loopexit ]
  %fputc491 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp) #5
  %indvars.iv.next528 = add i64 %indvars.iv527, 50
  %63 = load i32* %alen239, align 4, !tbaa !3
  %64 = trunc i64 %indvars.iv.next528 to i32
  %cmp277 = icmp sgt i32 %64, %63
  %65 = trunc i64 %indvars.iv527 to i32
  %sub281 = sub nsw i32 %63, %65
  %sub281. = select i1 %cmp277, i32 %sub281, i32 50
  %cmp285 = icmp sgt i32 %sub281., 10
  %66 = or i64 %indvars.iv527, 1
  br i1 %cmp285, label %if.then287, label %if.else294

if.then287:                                       ; preds = %for.body274
  %sub289 = add nsw i32 %sub281., -1
  %div = sdiv i32 %sub289, 10
  %add290 = add i32 %sub281., -12
  %sub291 = add i32 %add290, %div
  %add292 = add nsw i32 %sub281., %65
  %67 = trunc i64 %66 to i32
  %call293 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str25, i64 0, i64 0), i32 %namelen.0.lcssa, i8* getelementptr inbounds ([1 x i8]* @.str26, i64 0, i64 0), i32 %67, i32 %sub291, i8* getelementptr inbounds ([1 x i8]* @.str26, i64 0, i64 0), i32 %add292) #6
  br label %for.cond298.preheader

if.else294:                                       ; preds = %for.body274
  %68 = trunc i64 %66 to i32
  %call296 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str27, i64 0, i64 0), i32 %namelen.0.lcssa, i8* getelementptr inbounds ([1 x i8]* @.str26, i64 0, i64 0), i32 %68) #6
  br label %for.cond298.preheader

for.cond298.preheader:                            ; preds = %if.else294, %if.then287
  %69 = load i32* %nseq, align 4, !tbaa !3
  %cmp300498 = icmp sgt i32 %69, 0
  br i1 %cmp300498, label %for.body302.lr.ph, label %for.cond270.loopexit

for.body302.lr.ph:                                ; preds = %for.cond298.preheader
  %cmp312496 = icmp sgt i32 %sub281., 0
  %70 = xor i32 %63, -1
  %71 = icmp sgt i32 %indvars.iv523, %70
  %smax = select i1 %71, i32 %indvars.iv523, i32 %70
  %72 = sub i32 %indvars.iv521, %smax
  br label %for.body302

for.body302:                                      ; preds = %for.body302.lr.ph, %for.end325
  %indvars.iv525 = phi i64 [ 0, %for.body302.lr.ph ], [ %indvars.iv.next526, %for.end325 ]
  %arrayidx304 = getelementptr inbounds i8** %5, i64 %indvars.iv525
  %73 = load i8** %arrayidx304, align 8, !tbaa !0
  %call305 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str28, i64 0, i64 0), i32 %namelen.0.lcssa, i8* %73) #6
  %arrayidx308 = getelementptr inbounds i8** %3, i64 %indvars.iv525
  %74 = load i8** %arrayidx308, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %74, i64 %indvars.iv527
  %call309 = call i8* @strncpy(i8* %1, i8* %add.ptr, i64 50) #6
  store i8 0, i8* %arrayidx310, align 2, !tbaa !1
  br i1 %cmp312496, label %for.body314, label %for.end325

for.body314:                                      ; preds = %for.body302, %if.end318
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end318 ], [ 0, %for.body302 ]
  %75 = trunc i64 %indvars.iv to i32
  %rem = srem i32 %75, 10
  %tobool315 = icmp eq i32 %rem, 0
  br i1 %tobool315, label %if.then316, label %if.end318

if.then316:                                       ; preds = %for.body314
  %call317 = call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #6
  br label %if.end318

if.end318:                                        ; preds = %for.body314, %if.then316
  %arrayidx320 = getelementptr inbounds [51 x i8]* %buffer, i64 0, i64 %indvars.iv
  %76 = load i8* %arrayidx320, align 1, !tbaa !1
  %conv321 = sext i8 %76 to i32
  %call322 = call i32 @fputc(i32 %conv321, %struct._IO_FILE* %fp) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %72
  br i1 %exitcond, label %for.end325, label %for.body314

for.end325:                                       ; preds = %if.end318, %for.body302
  %call326 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp) #6
  %indvars.iv.next526 = add i64 %indvars.iv525, 1
  %77 = load i32* %nseq, align 4, !tbaa !3
  %78 = trunc i64 %indvars.iv.next526 to i32
  %cmp300 = icmp slt i32 %78, %77
  br i1 %cmp300, label %for.body302, label %for.cond270.loopexit

for.end332:                                       ; preds = %for.cond270.loopexit, %for.end267.for.end332_crit_edge
  %79 = phi i32 [ %.pre545, %for.end267.for.end332_crit_edge ], [ %61, %for.cond270.loopexit ]
  call void @Free2DArray(i8** %3, i32 %79) #6
  %80 = load i32* %nseq, align 4, !tbaa !3
  call void @Free2DArray(i8** %5, i32 %80) #6
  call void @llvm.lifetime.end(i64 51, i8* %1) #5
  call void @llvm.lifetime.end(i64 64, i8* %0) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: optsize
declare i32 @GuessAlignmentSeqtype(i8**, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #1

; Function Attrs: nounwind optsize
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #1

; Function Attrs: nounwind optsize
declare %struct.tm* @localtime(i64*) #1

; Function Attrs: optsize
declare i32 @GCGMultchecksum(i8**, i32) #2

; Function Attrs: optsize
declare i32 @GCGchecksum(i8*, i32) #2

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #1

; Function Attrs: nounwind optsize
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"long", metadata !1}
