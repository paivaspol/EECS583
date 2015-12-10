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
  call void @llvm.dbg.value(metadata !{%struct.msafile_struct* %afp}, i64 0, metadata !213), !dbg !250
  call void @llvm.dbg.declare(metadata !{i8** %sp}, metadata !220), !dbg !251
  call void @llvm.dbg.declare(metadata !{i32* %slen}, metadata !221), !dbg !252
  %f = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !253
  %0 = load %struct._IO_FILE** %f, align 8, !dbg !253, !tbaa !254
  %call = call i32 @feof(%struct._IO_FILE* %0) #7, !dbg !253
  %tobool = icmp eq i32 %call, 0, !dbg !253
  br i1 %tobool, label %if.end, label %return, !dbg !253

if.end:                                           ; preds = %entry
  %call1 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #7, !dbg !257
  call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !215), !dbg !257
  %cmp = icmp eq i8* %call1, null, !dbg !257
  br i1 %cmp, label %return, label %if.end3, !dbg !257

if.end3:                                          ; preds = %if.end
  %call4 = call %struct.msa_struct* @MSAAlloc(i32 10, i32 0) #7, !dbg !258
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call4}, i64 0, metadata !214), !dbg !258
  %call5 = call i32 @strncmp(i8* %call1, i8* getelementptr inbounds ([24 x i8]* @.str, i64 0, i64 0), i64 23) #8, !dbg !259
  %cmp6 = icmp eq i32 %call5, 0, !dbg !259
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !259

if.then7:                                         ; preds = %if.end3
  %type = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 6, !dbg !260
  store i32 3, i32* %type, align 4, !dbg !260, !tbaa !262
  %call8 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #7, !dbg !263
  call void @llvm.dbg.value(metadata !{i8* %call8}, i64 0, metadata !215), !dbg !263
  %cmp9 = icmp eq i8* %call8, null, !dbg !263
  br i1 %cmp9, label %return, label %do.body, !dbg !263

if.else:                                          ; preds = %if.end3
  %call12 = call i32 @strncmp(i8* %call1, i8* getelementptr inbounds ([24 x i8]* @.str1, i64 0, i64 0), i64 23) #8, !dbg !264
  %cmp13 = icmp eq i32 %call12, 0, !dbg !264
  br i1 %cmp13, label %if.then14, label %do.body, !dbg !264

if.then14:                                        ; preds = %if.else
  %type15 = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 6, !dbg !265
  store i32 2, i32* %type15, align 4, !dbg !265, !tbaa !262
  %call16 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #7, !dbg !267
  call void @llvm.dbg.value(metadata !{i8* %call16}, i64 0, metadata !215), !dbg !267
  %cmp17 = icmp eq i8* %call16, null, !dbg !267
  br i1 %cmp17, label %return, label %do.body, !dbg !267

do.body:                                          ; preds = %if.then7, %if.then14, %if.else, %do.cond
  %s.0 = phi i8* [ %call45, %do.cond ], [ %call8, %if.then7 ], [ %call16, %if.then14 ], [ %call1, %if.else ]
  %call22 = call i8* @strstr(i8* %s.0, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #8, !dbg !268
  %cmp23 = icmp eq i8* %call22, null, !dbg !268
  br i1 %cmp23, label %if.end40, label %land.lhs.true, !dbg !268

land.lhs.true:                                    ; preds = %do.body
  %call24 = call i8* @strstr(i8* %s.0, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #8, !dbg !268
  %cmp25 = icmp eq i8* %call24, null, !dbg !268
  br i1 %cmp25, label %if.end40, label %land.lhs.true26, !dbg !268

land.lhs.true26:                                  ; preds = %land.lhs.true
  %call27 = call i32 @Strparse(i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), i8* %s.0, i32 3) #7, !dbg !270
  %tobool28 = icmp eq i32 %call27, 0, !dbg !270
  br i1 %tobool28, label %if.end40, label %if.then29, !dbg !270

if.then29:                                        ; preds = %land.lhs.true26
  %1 = load i8** getelementptr inbounds ([10 x i8*]* @sqd_parse, i64 0, i64 1), align 8, !dbg !271, !tbaa !254
  %2 = load i8* %1, align 1, !dbg !271, !tbaa !255
  %conv = sext i8 %2 to i32, !dbg !271
  switch i32 %conv, label %sw.default [
    i32 78, label %sw.epilog
    i32 80, label %sw.bb31
    i32 88, label %sw.bb32
  ], !dbg !271

sw.bb31:                                          ; preds = %if.then29
  call void @llvm.dbg.value(metadata !273, i64 0, metadata !217), !dbg !274
  br label %sw.epilog, !dbg !274

sw.bb32:                                          ; preds = %if.then29
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !217), !dbg !276
  br label %sw.epilog, !dbg !276

sw.default:                                       ; preds = %if.then29
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !217), !dbg !277
  br label %sw.epilog, !dbg !278

sw.epilog:                                        ; preds = %if.then29, %sw.default, %sw.bb32, %sw.bb31
  %alleged_type.0 = phi i32 [ 0, %sw.default ], [ 0, %sw.bb32 ], [ 3, %sw.bb31 ], [ 2, %if.then29 ]
  %type34 = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 6, !dbg !279
  %3 = load i32* %type34, align 4, !dbg !279, !tbaa !262
  %cmp35 = icmp eq i32 %3, 0, !dbg !279
  br i1 %cmp35, label %if.then37, label %while.cond.preheader, !dbg !279

if.then37:                                        ; preds = %sw.epilog
  store i32 %alleged_type.0, i32* %type34, align 4, !dbg !279, !tbaa !262
  br label %while.cond.preheader, !dbg !279

if.end40:                                         ; preds = %land.lhs.true26, %land.lhs.true, %do.body
  %call41 = call i32 @IsBlankline(i8* %s.0) #7, !dbg !280
  %tobool42 = icmp eq i32 %call41, 0, !dbg !280
  br i1 %tobool42, label %if.then43, label %do.cond, !dbg !280

if.then43:                                        ; preds = %if.end40
  call void @MSAAddComment(%struct.msa_struct* %call4, i8* %s.0) #7, !dbg !281
  br label %do.cond, !dbg !281

do.cond:                                          ; preds = %if.end40, %if.then43
  %call45 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #7, !dbg !282
  call void @llvm.dbg.value(metadata !{i8* %call45}, i64 0, metadata !215), !dbg !282
  %cmp46 = icmp eq i8* %call45, null, !dbg !282
  br i1 %cmp46, label %while.cond.preheader, label %do.body, !dbg !282

while.cond.preheader:                             ; preds = %do.cond, %sw.epilog, %if.then37
  %call48273 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #7, !dbg !283
  call void @llvm.dbg.value(metadata !{i8* %call48273}, i64 0, metadata !215), !dbg !283
  %cmp49274 = icmp eq i8* %call48273, null, !dbg !283
  br i1 %cmp49274, label %while.cond108.preheader, label %while.cond51.preheader.lr.ph, !dbg !283

while.cond51.preheader.lr.ph:                     ; preds = %while.cond.preheader
  %index = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 39, !dbg !284
  %nseqalloc = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 40, !dbg !287
  %sqname = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 1, !dbg !288
  %nseq = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 4, !dbg !289
  %linenumber = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 2, !dbg !290
  %fname = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !290
  %wgt = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 2, !dbg !291
  %flags = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 5, !dbg !292
  br label %while.cond51, !dbg !283

while.cond108.preheader:                          ; preds = %while.cond.preheader, %while.cond.backedge, %if.else96
  %call109270 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #7, !dbg !293
  call void @llvm.dbg.value(metadata !{i8* %call109270}, i64 0, metadata !215), !dbg !293
  %cmp110271 = icmp eq i8* %call109270, null, !dbg !293
  br i1 %cmp110271, label %for.cond.preheader, label %while.body112.lr.ph, !dbg !293

while.body112.lr.ph:                              ; preds = %while.cond108.preheader
  %index139 = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 39, !dbg !294
  %aseq = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 0, !dbg !296
  %sqlen = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 42, !dbg !296
  br label %while.body112, !dbg !293

while.cond51:                                     ; preds = %while.cond.backedge, %while.cond51.preheader.lr.ph, %while.body60
  %s.1 = phi i8* [ %incdec.ptr, %while.body60 ], [ %call48273, %while.cond51.preheader.lr.ph ], [ %call48, %while.cond.backedge ]
  %4 = load i8* %s.1, align 1, !dbg !297, !tbaa !255
  switch i8 %4, label %if.else70 [
    i8 32, label %while.body60
    i8 9, label %while.body60
    i8 10, label %while.cond.backedge
    i8 33, label %if.then69
  ], !dbg !297

while.body60:                                     ; preds = %while.cond51, %while.cond51
  %incdec.ptr = getelementptr inbounds i8* %s.1, i64 1, !dbg !297
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !215), !dbg !297
  br label %while.cond51, !dbg !297

if.then69:                                        ; preds = %while.cond51
  call void @MSAAddComment(%struct.msa_struct* %call4, i8* %s.1) #7, !dbg !298
  br label %while.cond.backedge, !dbg !298

while.cond.backedge:                              ; preds = %while.cond51, %if.then69, %if.end89
  %call48 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #7, !dbg !283
  %cmp49 = icmp eq i8* %call48, null, !dbg !283
  br i1 %cmp49, label %while.cond108.preheader, label %while.cond51, !dbg !283

if.else70:                                        ; preds = %while.cond51
  %call71 = call i8* @strstr(i8* %s.1, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #8, !dbg !299
  call void @llvm.dbg.value(metadata !{i8* %call71}, i64 0, metadata !220), !dbg !299
  store i8* %call71, i8** %sp, align 8, !dbg !299, !tbaa !254
  %cmp72 = icmp eq i8* %call71, null, !dbg !299
  br i1 %cmp72, label %if.else96, label %if.then74, !dbg !299

if.then74:                                        ; preds = %if.else70
  %add.ptr = getelementptr inbounds i8* %call71, i64 5, !dbg !300
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !220), !dbg !300
  store i8* %add.ptr, i8** %sp, align 8, !dbg !300, !tbaa !254
  %call75 = call i8* @sre_strtok(i8** %sp, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* %slen) #7, !dbg !301
  call void @llvm.dbg.value(metadata !{i8* %call75}, i64 0, metadata !219), !dbg !301
  %5 = load %struct.GKI** %index, align 8, !dbg !284, !tbaa !254
  %call76 = call i32 @GKIStoreKey(%struct.GKI* %5, i8* %call75) #7, !dbg !284
  call void @llvm.dbg.value(metadata !{i32 %call76}, i64 0, metadata !222), !dbg !284
  %6 = load i32* %nseqalloc, align 4, !dbg !287, !tbaa !262
  %cmp77 = icmp slt i32 %call76, %6, !dbg !287
  br i1 %cmp77, label %if.end80, label %if.then79, !dbg !287

if.then79:                                        ; preds = %if.then74
  call void @MSAExpand(%struct.msa_struct* %call4) #7, !dbg !287
  br label %if.end80, !dbg !287

if.end80:                                         ; preds = %if.then74, %if.then79
  call void @llvm.dbg.value(metadata !{i32* %slen}, i64 0, metadata !221), !dbg !288
  %7 = load i32* %slen, align 4, !dbg !288, !tbaa !262
  %call81 = call i8* @sre_strdup(i8* %call75, i32 %7) #7, !dbg !288
  %idxprom = sext i32 %call76 to i64, !dbg !288
  %8 = load i8*** %sqname, align 8, !dbg !288, !tbaa !254
  %arrayidx = getelementptr inbounds i8** %8, i64 %idxprom, !dbg !288
  store i8* %call81, i8** %arrayidx, align 8, !dbg !288, !tbaa !254
  %9 = load i32* %nseq, align 4, !dbg !289, !tbaa !262
  %inc = add nsw i32 %9, 1, !dbg !289
  store i32 %inc, i32* %nseq, align 4, !dbg !289, !tbaa !262
  call void @llvm.dbg.value(metadata !{i8** %sp}, i64 0, metadata !220), !dbg !302
  %10 = load i8** %sp, align 8, !dbg !302, !tbaa !254
  %call82 = call i8* @strstr(i8* %10, i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) #8, !dbg !302
  call void @llvm.dbg.value(metadata !{i8* %call82}, i64 0, metadata !220), !dbg !302
  store i8* %call82, i8** %sp, align 8, !dbg !302, !tbaa !254
  %cmp83 = icmp eq i8* %call82, null, !dbg !302
  br i1 %cmp83, label %if.then85, label %if.end89, !dbg !302

if.then85:                                        ; preds = %if.end80
  %11 = load i32* %linenumber, align 4, !dbg !290, !tbaa !262
  %12 = load i8*** %sqname, align 8, !dbg !290, !tbaa !254
  %arrayidx88 = getelementptr inbounds i8** %12, i64 %idxprom, !dbg !290
  %13 = load i8** %arrayidx88, align 8, !dbg !290, !tbaa !254
  %14 = load i8** %fname, align 8, !dbg !290, !tbaa !254
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([61 x i8]* @.str8, i64 0, i64 0), i32 %11, i8* %13, i8* %14) #7, !dbg !290
  call void @llvm.dbg.value(metadata !{i8** %sp}, i64 0, metadata !220), !dbg !303
  %.pre278 = load i8** %sp, align 8, !dbg !303, !tbaa !254
  br label %if.end89, !dbg !290

if.end89:                                         ; preds = %if.then85, %if.end80
  %15 = phi i8* [ %.pre278, %if.then85 ], [ %call82, %if.end80 ]
  call void @llvm.dbg.value(metadata !{i8** %sp}, i64 0, metadata !220), !dbg !303
  %add.ptr90 = getelementptr inbounds i8* %15, i64 7, !dbg !303
  call void @llvm.dbg.value(metadata !{i8* %add.ptr90}, i64 0, metadata !220), !dbg !303
  store i8* %add.ptr90, i8** %sp, align 8, !dbg !303, !tbaa !254
  %call91 = call i8* @sre_strtok(i8** %sp, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* %slen) #7, !dbg !304
  call void @llvm.dbg.value(metadata !{i8* %call91}, i64 0, metadata !219), !dbg !304
  %call92 = call double @atof(i8* %call91) #8, !dbg !291
  %conv93 = fptrunc double %call92 to float, !dbg !291
  %16 = load float** %wgt, align 8, !dbg !291, !tbaa !254
  %arrayidx95 = getelementptr inbounds float* %16, i64 %idxprom, !dbg !291
  store float %conv93, float* %arrayidx95, align 4, !dbg !291, !tbaa !305
  %17 = load i32* %flags, align 4, !dbg !292, !tbaa !262
  %or = or i32 %17, 1, !dbg !292
  store i32 %or, i32* %flags, align 4, !dbg !292, !tbaa !262
  br label %while.cond.backedge

if.else96:                                        ; preds = %if.else70
  %call97 = call i32 @strncmp(i8* %s.1, i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i64 2) #8, !dbg !306
  %cmp98 = icmp eq i32 %call97, 0, !dbg !306
  br i1 %cmp98, label %while.cond108.preheader, label %if.else101, !dbg !306

if.else101:                                       ; preds = %if.else96
  %18 = load i32* %linenumber, align 4, !dbg !307, !tbaa !262
  %19 = load i8** %fname, align 8, !dbg !307, !tbaa !254
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([63 x i8]* @.str10, i64 0, i64 0), i32 %18, i8* %19, i8* %s.1) #7, !dbg !307
  store i32 5, i32* @squid_errno, align 4, !dbg !309, !tbaa !262
  br label %return, !dbg !310

for.cond.preheader:                               ; preds = %while.cond108.backedge, %while.cond108.preheader
  %nseq154 = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 4, !dbg !311
  %20 = load i32* %nseq154, align 4, !dbg !311, !tbaa !262
  %cmp155268 = icmp sgt i32 %20, 0, !dbg !311
  br i1 %cmp155268, label %for.body.lr.ph, label %for.end193, !dbg !311

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %aseq158 = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 0, !dbg !313
  %sqname164 = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 1, !dbg !315
  %fname166 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !315
  %sqlen185 = getelementptr inbounds %struct.msa_struct* %call4, i64 0, i32 42, !dbg !316
  br label %for.body, !dbg !311

while.body112:                                    ; preds = %while.body112.lr.ph, %while.cond108.backedge
  %call109272 = phi i8* [ %call109270, %while.body112.lr.ph ], [ %call109, %while.cond108.backedge ]
  call void @llvm.dbg.value(metadata !{i8* %call109272}, i64 0, metadata !220), !dbg !320
  store i8* %call109272, i8** %sp, align 8, !dbg !320, !tbaa !254
  %call113 = call i8* @sre_strtok(i8** %sp, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i32* null) #7, !dbg !321
  call void @llvm.dbg.value(metadata !{i8* %call113}, i64 0, metadata !223), !dbg !321
  %cmp114 = icmp eq i8* %call113, null, !dbg !321
  br i1 %cmp114, label %while.cond108.backedge, label %if.end117, !dbg !321

if.end117:                                        ; preds = %while.body112
  %call118 = call i8* @sre_strtok(i8** %sp, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0), i32* %slen) #7, !dbg !322
  call void @llvm.dbg.value(metadata !{i8* %call118}, i64 0, metadata !224), !dbg !322
  %cmp119 = icmp eq i8* %call118, null, !dbg !322
  br i1 %cmp119, label %while.cond108.backedge, label %if.end122, !dbg !322

if.end122:                                        ; preds = %if.end117
  %21 = load i8* %call113, align 1, !dbg !323, !tbaa !255
  %idxprom124 = sext i8 %21 to i64, !dbg !323
  %call125 = call i16** @__ctype_b_loc() #9, !dbg !323
  %22 = load i16** %call125, align 8, !dbg !323, !tbaa !254
  %arrayidx126 = getelementptr inbounds i16* %22, i64 %idxprom124, !dbg !323
  %23 = load i16* %arrayidx126, align 2, !dbg !323, !tbaa !324
  %and = and i16 %23, 2048, !dbg !323
  %tobool128 = icmp eq i16 %and, 0, !dbg !323
  br i1 %tobool128, label %if.end138, label %land.lhs.true129, !dbg !323

land.lhs.true129:                                 ; preds = %if.end122
  %24 = load i8* %call118, align 1, !dbg !323, !tbaa !255
  %idxprom131 = sext i8 %24 to i64, !dbg !323
  %arrayidx133 = getelementptr inbounds i16* %22, i64 %idxprom131, !dbg !323
  %25 = load i16* %arrayidx133, align 2, !dbg !323, !tbaa !324
  %and135 = and i16 %25, 2048, !dbg !323
  %tobool136 = icmp eq i16 %and135, 0, !dbg !323
  br i1 %tobool136, label %if.end138, label %while.cond108.backedge, !dbg !323

if.end138:                                        ; preds = %land.lhs.true129, %if.end122
  %26 = load %struct.GKI** %index139, align 8, !dbg !294, !tbaa !254
  %call140 = call i32 @GKIKeyIndex(%struct.GKI* %26, i8* %call113) #7, !dbg !294
  call void @llvm.dbg.value(metadata !{i32 %call140}, i64 0, metadata !222), !dbg !294
  %cmp141 = icmp slt i32 %call140, 0, !dbg !325
  br i1 %cmp141, label %while.cond108.backedge, label %if.end144, !dbg !325

if.end144:                                        ; preds = %if.end138
  %idxprom145 = sext i32 %call140 to i64, !dbg !296
  %27 = load i8*** %aseq, align 8, !dbg !296, !tbaa !254
  %arrayidx146 = getelementptr inbounds i8** %27, i64 %idxprom145, !dbg !296
  %28 = load i32** %sqlen, align 8, !dbg !296, !tbaa !254
  %arrayidx148 = getelementptr inbounds i32* %28, i64 %idxprom145, !dbg !296
  %29 = load i32* %arrayidx148, align 4, !dbg !296, !tbaa !262
  call void @llvm.dbg.value(metadata !{i32* %slen}, i64 0, metadata !221), !dbg !296
  %30 = load i32* %slen, align 4, !dbg !296, !tbaa !262
  %call149 = call i32 @sre_strcat(i8** %arrayidx146, i32 %29, i8* %call118, i32 %30) #7, !dbg !296
  %31 = load i32** %sqlen, align 8, !dbg !296, !tbaa !254
  %arrayidx152 = getelementptr inbounds i32* %31, i64 %idxprom145, !dbg !296
  store i32 %call149, i32* %arrayidx152, align 4, !dbg !296, !tbaa !262
  br label %while.cond108.backedge, !dbg !326

while.cond108.backedge:                           ; preds = %if.end144, %while.body112, %if.end117, %if.end138, %land.lhs.true129
  %call109 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #7, !dbg !293
  call void @llvm.dbg.value(metadata !{i8* %call109272}, i64 0, metadata !215), !dbg !293
  %cmp110 = icmp eq i8* %call109, null, !dbg !293
  br i1 %cmp110, label %for.cond.preheader, label %while.body112, !dbg !293

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.end ]
  %32 = load i8*** %aseq158, align 8, !dbg !313, !tbaa !254
  %arrayidx159 = getelementptr inbounds i8** %32, i64 %indvars.iv, !dbg !313
  %33 = load i8** %arrayidx159, align 8, !dbg !313, !tbaa !254
  %cmp160 = icmp eq i8* %33, null, !dbg !313
  br i1 %cmp160, label %if.then162, label %if.end167, !dbg !313

if.then162:                                       ; preds = %for.body
  %34 = load i8*** %sqname164, align 8, !dbg !315, !tbaa !254
  %arrayidx165 = getelementptr inbounds i8** %34, i64 %indvars.iv, !dbg !315
  %35 = load i8** %arrayidx165, align 8, !dbg !315, !tbaa !254
  %36 = load i8** %fname166, align 8, !dbg !315, !tbaa !254
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([46 x i8]* @.str12, i64 0, i64 0), i8* %35, i8* %36) #7, !dbg !315
  %.pre = load i8*** %aseq158, align 8, !dbg !327, !tbaa !254
  %arrayidx170.phi.trans.insert = getelementptr inbounds i8** %.pre, i64 %indvars.iv
  %.pre277 = load i8** %arrayidx170.phi.trans.insert, align 8, !dbg !327, !tbaa !254
  br label %if.end167, !dbg !315

if.end167:                                        ; preds = %if.then162, %for.body
  %37 = phi i8* [ %.pre277, %if.then162 ], [ %33, %for.body ]
  call void @llvm.dbg.value(metadata !{i8* %37}, i64 0, metadata !220), !dbg !327
  store i8* %37, i8** %sp, align 8, !dbg !327, !tbaa !254
  call void @llvm.dbg.value(metadata !{i8* %37}, i64 0, metadata !215), !dbg !327
  br label %for.cond171, !dbg !327

for.cond171:                                      ; preds = %for.inc, %if.end167
  %38 = phi i8* [ %37, %if.end167 ], [ %43, %for.inc ]
  %s.2 = phi i8* [ %37, %if.end167 ], [ %incdec.ptr190, %for.inc ]
  %39 = load i8* %s.2, align 1, !dbg !327, !tbaa !255
  switch i8 %39, label %if.else187 [
    i8 0, label %for.end
    i8 32, label %if.then183
    i8 9, label %if.then183
  ], !dbg !327

if.then183:                                       ; preds = %for.cond171, %for.cond171
  %40 = load i32** %sqlen185, align 8, !dbg !316, !tbaa !254
  %arrayidx186 = getelementptr inbounds i32* %40, i64 %indvars.iv, !dbg !316
  %41 = load i32* %arrayidx186, align 4, !dbg !316, !tbaa !262
  %dec = add nsw i32 %41, -1, !dbg !316
  store i32 %dec, i32* %arrayidx186, align 4, !dbg !316, !tbaa !262
  br label %for.inc, !dbg !328

if.else187:                                       ; preds = %for.cond171
  call void @llvm.dbg.value(metadata !{i8** %sp}, i64 0, metadata !220), !dbg !329
  store i8 %39, i8* %38, align 1, !dbg !329, !tbaa !255
  call void @llvm.dbg.value(metadata !{i8** %sp}, i64 0, metadata !220), !dbg !331
  %42 = load i8** %sp, align 8, !dbg !331, !tbaa !254
  %incdec.ptr188 = getelementptr inbounds i8* %42, i64 1, !dbg !331
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr188}, i64 0, metadata !220), !dbg !331
  store i8* %incdec.ptr188, i8** %sp, align 8, !dbg !331, !tbaa !254
  br label %for.inc

for.inc:                                          ; preds = %if.then183, %if.else187
  %43 = phi i8* [ %38, %if.then183 ], [ %incdec.ptr188, %if.else187 ]
  %incdec.ptr190 = getelementptr inbounds i8* %s.2, i64 1, !dbg !327
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr190}, i64 0, metadata !215), !dbg !327
  br label %for.cond171, !dbg !327

for.end:                                          ; preds = %for.cond171
  call void @llvm.dbg.value(metadata !{i8** %sp}, i64 0, metadata !220), !dbg !332
  store i8 0, i8* %38, align 1, !dbg !332, !tbaa !255
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !311
  %44 = load i32* %nseq154, align 4, !dbg !311, !tbaa !262
  %45 = trunc i64 %indvars.iv.next to i32, !dbg !311
  %cmp155 = icmp slt i32 %45, %44, !dbg !311
  br i1 %cmp155, label %for.body, label %for.end193, !dbg !311

for.end193:                                       ; preds = %for.end, %for.cond.preheader
  call void @MSAVerifyParse(%struct.msa_struct* %call4) #7, !dbg !333
  br label %return, !dbg !334

return:                                           ; preds = %if.then14, %if.then7, %if.end, %entry, %for.end193, %if.else101
  %retval.0 = phi %struct.msa_struct* [ %call4, %for.end193 ], [ null, %if.else101 ], [ null, %entry ], [ null, %if.end ], [ null, %if.then7 ], [ null, %if.then14 ]
  ret %struct.msa_struct* %retval.0, !dbg !335
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i8* @MSAFileGetLine(%struct.msafile_struct*) #3

; Function Attrs: optsize
declare %struct.msa_struct* @MSAAlloc(i32, i32) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @Strparse(i8*, i8*, i32) #3

; Function Attrs: optsize
declare i32 @IsBlankline(i8*) #3

; Function Attrs: optsize
declare void @MSAAddComment(%struct.msa_struct*, i8*) #3

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #3

; Function Attrs: optsize
declare i32 @GKIStoreKey(%struct.GKI*, i8*) #3

; Function Attrs: optsize
declare void @MSAExpand(%struct.msa_struct*) #3

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #3

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #4

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: optsize
declare i32 @GKIKeyIndex(%struct.GKI*, i8*) #3

; Function Attrs: optsize
declare i32 @sre_strcat(i8**, i32, i8*, i32) #3

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #3

; Function Attrs: nounwind optsize uwtable
define void @WriteMSF(%struct._IO_FILE* nocapture %fp, %struct.msa_struct* nocapture %msa) #0 {
entry:
  %now = alloca i64, align 8
  %date = alloca [64 x i8], align 16
  %buffer = alloca [51 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !229), !dbg !336
  call void @llvm.dbg.value(metadata !{%struct.msa_struct* %msa}, i64 0, metadata !230), !dbg !336
  call void @llvm.dbg.declare(metadata !{i64* %now}, metadata !231), !dbg !337
  %0 = getelementptr inbounds [64 x i8]* %date, i64 0, i64 0, !dbg !338
  call void @llvm.lifetime.start(i64 64, i8* %0) #6, !dbg !338
  call void @llvm.dbg.declare(metadata !{[64 x i8]* %date}, metadata !234), !dbg !338
  %1 = getelementptr inbounds [51 x i8]* %buffer, i64 0, i64 0, !dbg !339
  call void @llvm.lifetime.start(i64 51, i8* %1) #6, !dbg !339
  call void @llvm.dbg.declare(metadata !{[51 x i8]* %buffer}, metadata !245), !dbg !339
  %nseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !340
  %2 = load i32* %nseq, align 4, !dbg !340, !tbaa !262
  %conv = sext i32 %2 to i64, !dbg !340
  %mul = shl nsw i64 %conv, 3, !dbg !340
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i32 273, i64 %mul) #7, !dbg !340
  %3 = bitcast i8* %call to i8**, !dbg !340
  call void @llvm.dbg.value(metadata !{i8** %3}, i64 0, metadata !238), !dbg !340
  %4 = load i32* %nseq, align 4, !dbg !341, !tbaa !262
  %conv2 = sext i32 %4 to i64, !dbg !341
  %mul3 = shl nsw i64 %conv2, 3, !dbg !341
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i32 274, i64 %mul3) #7, !dbg !341
  %5 = bitcast i8* %call4 to i8**, !dbg !341
  call void @llvm.dbg.value(metadata !{i8** %5}, i64 0, metadata !239), !dbg !341
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !240), !dbg !342
  %6 = load i32* %nseq, align 4, !dbg !342, !tbaa !262
  %cmp519 = icmp sgt i32 %6, 0, !dbg !342
  br i1 %cmp519, label %for.body.lr.ph, label %for.end177, !dbg !342

for.body.lr.ph:                                   ; preds = %entry
  %aseq = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !344
  %alen = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !344
  %sqname = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !346
  br label %for.body, !dbg !342

for.cond15.preheader:                             ; preds = %for.body
  %cmp17517 = icmp sgt i32 %12, 0, !dbg !347
  br i1 %cmp17517, label %for.body19, label %for.end177, !dbg !347

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv543 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next544, %for.body ]
  %7 = load i8*** %aseq, align 8, !dbg !344, !tbaa !254
  %arrayidx = getelementptr inbounds i8** %7, i64 %indvars.iv543, !dbg !344
  %8 = load i8** %arrayidx, align 8, !dbg !344, !tbaa !254
  %9 = load i32* %alen, align 4, !dbg !344, !tbaa !262
  %call7 = call i8* @sre_strdup(i8* %8, i32 %9) #7, !dbg !344
  %arrayidx9 = getelementptr inbounds i8** %3, i64 %indvars.iv543, !dbg !344
  store i8* %call7, i8** %arrayidx9, align 8, !dbg !344, !tbaa !254
  %10 = load i8*** %sqname, align 8, !dbg !346, !tbaa !254
  %arrayidx11 = getelementptr inbounds i8** %10, i64 %indvars.iv543, !dbg !346
  %11 = load i8** %arrayidx11, align 8, !dbg !346, !tbaa !254
  %call12 = call i8* @sre_strdup(i8* %11, i32 -1) #7, !dbg !346
  %arrayidx14 = getelementptr inbounds i8** %5, i64 %indvars.iv543, !dbg !346
  store i8* %call12, i8** %arrayidx14, align 8, !dbg !346, !tbaa !254
  %indvars.iv.next544 = add i64 %indvars.iv543, 1, !dbg !342
  %12 = load i32* %nseq, align 4, !dbg !342, !tbaa !262
  %13 = trunc i64 %indvars.iv.next544 to i32, !dbg !342
  %cmp = icmp slt i32 %13, %12, !dbg !342
  br i1 %cmp, label %for.body, label %for.cond15.preheader, !dbg !342

for.cond44.preheader:                             ; preds = %for.inc41
  %cmp46513 = icmp sgt i32 %21, 0, !dbg !349
  br i1 %cmp46513, label %for.body48.lr.ph, label %for.end177, !dbg !349

for.body48.lr.ph:                                 ; preds = %for.cond44.preheader
  %alen105 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !351
  br label %for.body48, !dbg !349

for.body19:                                       ; preds = %for.cond15.preheader, %for.inc41
  %14 = phi i32 [ %21, %for.inc41 ], [ %12, %for.cond15.preheader ]
  %indvars.iv541 = phi i64 [ %indvars.iv.next542, %for.inc41 ], [ 0, %for.cond15.preheader ]
  %arrayidx21 = getelementptr inbounds i8** %5, i64 %indvars.iv541, !dbg !354
  %15 = load i8** %arrayidx21, align 8, !dbg !354, !tbaa !254
  call void @llvm.dbg.value(metadata !{i8* %15}, i64 0, metadata !241), !dbg !354
  %16 = load i8* %15, align 1, !dbg !354, !tbaa !255
  %cmp24515 = icmp eq i8 %16, 0, !dbg !354
  br i1 %cmp24515, label %for.inc41, label %for.body26.lr.ph, !dbg !354

for.body26.lr.ph:                                 ; preds = %for.body19
  %call29 = call i16** @__ctype_b_loc() #9, !dbg !356
  br label %for.body26, !dbg !354

for.body26:                                       ; preds = %for.inc39, %for.body26.lr.ph
  %17 = phi i8 [ %16, %for.body26.lr.ph ], [ %20, %for.inc39 ]
  %s.0516 = phi i8* [ %15, %for.body26.lr.ph ], [ %incdec.ptr, %for.inc39 ]
  %idxprom28 = sext i8 %17 to i64, !dbg !356
  %18 = load i16** %call29, align 8, !dbg !356, !tbaa !254
  %arrayidx30 = getelementptr inbounds i16* %18, i64 %idxprom28, !dbg !356
  %19 = load i16* %arrayidx30, align 2, !dbg !356, !tbaa !324
  %and = and i16 %19, 8, !dbg !356
  %tobool = icmp eq i16 %and, 0, !dbg !356
  br i1 %tobool, label %switch.early.test, label %for.inc39

switch.early.test:                                ; preds = %for.body26
  switch i8 %17, label %if.then [
    i8 95, label %for.inc39
    i8 45, label %for.inc39
  ], !dbg !356

if.then:                                          ; preds = %switch.early.test
  store i8 95, i8* %s.0516, align 1, !dbg !357, !tbaa !255
  br label %for.inc39, !dbg !357

for.inc39:                                        ; preds = %for.body26, %switch.early.test, %switch.early.test, %if.then
  %incdec.ptr = getelementptr inbounds i8* %s.0516, i64 1, !dbg !354
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !241), !dbg !354
  %20 = load i8* %incdec.ptr, align 1, !dbg !354, !tbaa !255
  %cmp24 = icmp eq i8 %20, 0, !dbg !354
  br i1 %cmp24, label %for.cond22.for.inc41_crit_edge, label %for.body26, !dbg !354

for.cond22.for.inc41_crit_edge:                   ; preds = %for.inc39
  %.pre546 = load i32* %nseq, align 4, !dbg !347, !tbaa !262
  br label %for.inc41, !dbg !354

for.inc41:                                        ; preds = %for.body19, %for.cond22.for.inc41_crit_edge
  %21 = phi i32 [ %.pre546, %for.cond22.for.inc41_crit_edge ], [ %14, %for.body19 ], !dbg !347
  %indvars.iv.next542 = add i64 %indvars.iv541, 1, !dbg !347
  %22 = trunc i64 %indvars.iv.next542 to i32, !dbg !347
  %cmp17 = icmp slt i32 %22, %21, !dbg !347
  br i1 %cmp17, label %for.body19, label %for.cond44.preheader, !dbg !347

for.cond161.preheader:                            ; preds = %for.inc158
  %cmp163506 = icmp sgt i32 %31, 0, !dbg !358
  br i1 %cmp163506, label %for.body165.lr.ph, label %for.end177, !dbg !358

for.body165.lr.ph:                                ; preds = %for.cond161.preheader
  %sqname167 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !360
  %23 = load i8*** %sqname167, align 8, !dbg !360, !tbaa !254
  br label %for.body165, !dbg !358

for.body48:                                       ; preds = %for.body48.lr.ph, %for.inc158
  %indvars.iv539 = phi i64 [ 0, %for.body48.lr.ph ], [ %indvars.iv.next540, %for.inc158 ]
  %arrayidx50 = getelementptr inbounds i8** %3, i64 %indvars.iv539, !dbg !361
  %24 = load i8** %arrayidx50, align 8, !dbg !361, !tbaa !254
  call void @llvm.dbg.value(metadata !{i8* %24}, i64 0, metadata !241), !dbg !361
  br label %for.cond51, !dbg !361

for.cond51:                                       ; preds = %for.body72, %for.body48
  %s.1 = phi i8* [ %24, %for.body48 ], [ %incdec.ptr74, %for.body72 ]
  %25 = load i8* %s.1, align 1, !dbg !361, !tbaa !255
  switch i8 %25, label %for.cond76 [
    i8 126, label %for.body72
    i8 32, label %for.body72
    i8 46, label %for.body72
    i8 95, label %for.body72
    i8 45, label %for.body72
  ], !dbg !361

for.body72:                                       ; preds = %for.cond51, %for.cond51, %for.cond51, %for.cond51, %for.cond51
  store i8 126, i8* %s.1, align 1, !dbg !363, !tbaa !255
  %incdec.ptr74 = getelementptr inbounds i8* %s.1, i64 1, !dbg !361
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr74}, i64 0, metadata !241), !dbg !361
  br label %for.cond51, !dbg !361

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
  ], !dbg !364

if.then100:                                       ; preds = %for.cond76, %for.cond76, %for.cond76, %for.cond76, %for.cond76
  store i8 46, i8* %s.2, align 1, !dbg !366, !tbaa !255
  br label %for.inc102, !dbg !366

for.inc102:                                       ; preds = %for.cond76, %if.then100
  %incdec.ptr103 = getelementptr inbounds i8* %s.2, i64 1, !dbg !364
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr103}, i64 0, metadata !241), !dbg !364
  %.pre = load i8* %incdec.ptr103, align 1, !dbg !364, !tbaa !255
  br label %for.cond76, !dbg !364

for.end104:                                       ; preds = %for.cond76
  %27 = load i32* %alen105, align 4, !dbg !351, !tbaa !262
  %pos.0510 = add i32 %27, -1, !dbg !351
  %cmp107511 = icmp sgt i32 %pos.0510, 0, !dbg !351
  br i1 %cmp107511, label %land.rhs109.lr.ph, label %for.inc158, !dbg !351

land.rhs109.lr.ph:                                ; preds = %for.end104
  %28 = sext i32 %pos.0510 to i64
  br label %land.rhs109, !dbg !351

land.rhs109:                                      ; preds = %for.body151.land.rhs109_crit_edge, %land.rhs109.lr.ph
  %indvars.iv536 = phi i64 [ %28, %land.rhs109.lr.ph ], [ %indvars.iv.next537, %for.body151.land.rhs109_crit_edge ]
  %pos.0512 = phi i32 [ %pos.0510, %land.rhs109.lr.ph ], [ %pos.0, %for.body151.land.rhs109_crit_edge ]
  %29 = load i8** %arrayidx50, align 8, !dbg !351, !tbaa !254
  %arrayidx113 = getelementptr inbounds i8* %29, i64 %indvars.iv536, !dbg !351
  %30 = load i8* %arrayidx113, align 1, !dbg !351, !tbaa !255
  switch i8 %30, label %for.inc158 [
    i8 32, label %for.body151
    i8 46, label %for.body151
    i8 95, label %for.body151
    i8 45, label %for.body151
    i8 126, label %for.body151
  ], !dbg !351

for.body151:                                      ; preds = %land.rhs109, %land.rhs109, %land.rhs109, %land.rhs109, %land.rhs109
  store i8 126, i8* %arrayidx113, align 1, !dbg !367, !tbaa !255
  %pos.0 = add nsw i32 %pos.0512, -1, !dbg !351
  %cmp107 = icmp sgt i32 %pos.0, 0, !dbg !351
  br i1 %cmp107, label %for.body151.land.rhs109_crit_edge, label %for.inc158, !dbg !351

for.body151.land.rhs109_crit_edge:                ; preds = %for.body151
  %indvars.iv.next537 = add i64 %indvars.iv536, -1, !dbg !351
  br label %land.rhs109, !dbg !351

for.inc158:                                       ; preds = %for.body151, %land.rhs109, %for.end104
  %indvars.iv.next540 = add i64 %indvars.iv539, 1, !dbg !349
  %31 = load i32* %nseq, align 4, !dbg !349, !tbaa !262
  %32 = trunc i64 %indvars.iv.next540 to i32, !dbg !349
  %cmp46 = icmp slt i32 %32, %31, !dbg !349
  br i1 %cmp46, label %for.body48, label %for.cond161.preheader, !dbg !349

for.body165:                                      ; preds = %for.body165.lr.ph, %for.body165
  %indvars.iv534 = phi i64 [ 0, %for.body165.lr.ph ], [ %indvars.iv.next535, %for.body165 ]
  %namelen.0507 = phi i32 [ 0, %for.body165.lr.ph ], [ %conv170.namelen.0, %for.body165 ]
  %arrayidx168 = getelementptr inbounds i8** %23, i64 %indvars.iv534, !dbg !360
  %33 = load i8** %arrayidx168, align 8, !dbg !360, !tbaa !254
  %call169 = call i64 @strlen(i8* %33) #8, !dbg !360
  %conv170 = trunc i64 %call169 to i32, !dbg !360
  call void @llvm.dbg.value(metadata !{i32 %conv170}, i64 0, metadata !242), !dbg !360
  %cmp171 = icmp sgt i32 %conv170, %namelen.0507, !dbg !360
  call void @llvm.dbg.value(metadata !{i32 %conv170}, i64 0, metadata !243), !dbg !368
  %conv170.namelen.0 = select i1 %cmp171, i32 %conv170, i32 %namelen.0507, !dbg !360
  %indvars.iv.next535 = add i64 %indvars.iv534, 1, !dbg !358
  %34 = trunc i64 %indvars.iv.next535 to i32, !dbg !358
  %cmp163 = icmp slt i32 %34, %31, !dbg !358
  br i1 %cmp163, label %for.body165, label %for.end177, !dbg !358

for.end177:                                       ; preds = %entry, %for.cond15.preheader, %for.cond44.preheader, %for.body165, %for.cond161.preheader
  %35 = phi i32 [ %31, %for.cond161.preheader ], [ %31, %for.body165 ], [ %21, %for.cond44.preheader ], [ %12, %for.cond15.preheader ], [ %6, %entry ]
  %namelen.0.lcssa = phi i32 [ 0, %for.cond161.preheader ], [ %conv170.namelen.0, %for.body165 ], [ 0, %for.cond44.preheader ], [ 0, %for.cond15.preheader ], [ 0, %entry ]
  %type = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 6, !dbg !369
  %36 = load i32* %type, align 4, !dbg !369, !tbaa !262
  %cmp178 = icmp eq i32 %36, 0, !dbg !369
  br i1 %cmp178, label %if.then180, label %if.end185, !dbg !369

if.then180:                                       ; preds = %for.end177
  %aseq181 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !370
  %37 = load i8*** %aseq181, align 8, !dbg !370, !tbaa !254
  %call183 = call i32 @GuessAlignmentSeqtype(i8** %37, i32 %35) #7, !dbg !370
  store i32 %call183, i32* %type, align 4, !dbg !370, !tbaa !262
  br label %if.end185, !dbg !370

if.end185:                                        ; preds = %if.then180, %for.end177
  %38 = phi i32 [ %call183, %if.then180 ], [ %36, %for.end177 ], !dbg !371
  switch i32 %38, label %if.else207 [
    i32 2, label %if.then189
    i32 1, label %if.then194
    i32 3, label %if.then200
    i32 0, label %if.then206
  ], !dbg !371

if.then189:                                       ; preds = %if.end185
  %39 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str14, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %fp), !dbg !371
  br label %if.end212, !dbg !371

if.then194:                                       ; preds = %if.end185
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str14, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %fp), !dbg !372
  br label %if.end212, !dbg !372

if.then200:                                       ; preds = %if.end185
  %41 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str15, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %fp), !dbg !373
  br label %if.end212, !dbg !373

if.then206:                                       ; preds = %if.end185
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([70 x i8]* @.str16, i64 0, i64 0)) #7, !dbg !374
  br label %if.end212, !dbg !374

if.else207:                                       ; preds = %if.end185
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str17, i64 0, i64 0), i32 %38) #7, !dbg !375
  br label %if.end212

if.end212:                                        ; preds = %if.then194, %if.then206, %if.else207, %if.then200, %if.then189
  %ncomment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 21, !dbg !376
  %42 = load i32* %ncomment, align 4, !dbg !376, !tbaa !262
  %cmp213 = icmp sgt i32 %42, 0, !dbg !376
  br i1 %cmp213, label %for.body220.lr.ph, label %if.end228, !dbg !376

for.body220.lr.ph:                                ; preds = %if.end212
  %comment = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 20, !dbg !377
  br label %for.body220, !dbg !380

for.body220:                                      ; preds = %for.body220.lr.ph, %for.body220
  %indvars.iv532 = phi i64 [ 0, %for.body220.lr.ph ], [ %indvars.iv.next533, %for.body220 ]
  %43 = load i8*** %comment, align 8, !dbg !377, !tbaa !254
  %arrayidx222 = getelementptr inbounds i8** %43, i64 %indvars.iv532, !dbg !377
  %44 = load i8** %arrayidx222, align 8, !dbg !377, !tbaa !254
  %call223 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str18, i64 0, i64 0), i8* %44) #7, !dbg !377
  %indvars.iv.next533 = add i64 %indvars.iv532, 1, !dbg !380
  %45 = load i32* %ncomment, align 4, !dbg !380, !tbaa !262
  %46 = trunc i64 %indvars.iv.next533 to i32, !dbg !380
  %cmp218 = icmp slt i32 %46, %45, !dbg !380
  br i1 %cmp218, label %for.body220, label %for.end226, !dbg !380

for.end226:                                       ; preds = %for.body220
  %fputc494 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp) #6, !dbg !381
  br label %if.end228, !dbg !382

if.end228:                                        ; preds = %for.end226, %if.end212
  %call229 = call i64 @time(i64* null) #7, !dbg !383
  call void @llvm.dbg.value(metadata !{i64 %call229}, i64 0, metadata !231), !dbg !383
  store i64 %call229, i64* %now, align 8, !dbg !383, !tbaa !384
  %call230 = call %struct.tm* @localtime(i64* %now) #7, !dbg !385
  %call231 = call i64 @strftime(i8* %0, i64 64, i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0), %struct.tm* %call230) #7, !dbg !385
  %cmp232 = icmp eq i64 %call231, 0, !dbg !385
  br i1 %cmp232, label %if.then234, label %if.end235, !dbg !385

if.then234:                                       ; preds = %if.end228
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([60 x i8]* @.str20, i64 0, i64 0)) #7, !dbg !386
  br label %if.end235, !dbg !386

if.end235:                                        ; preds = %if.then234, %if.end228
  %name = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 7, !dbg !387
  %47 = load i8** %name, align 8, !dbg !387, !tbaa !254
  %cmp236 = icmp eq i8* %47, null, !dbg !387
  %. = select i1 %cmp236, i8* getelementptr inbounds ([10 x i8]* @.str22, i64 0, i64 0), i8* %47, !dbg !387
  %alen239 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !387
  %48 = load i32* %alen239, align 4, !dbg !387, !tbaa !262
  %49 = load i32* %type, align 4, !dbg !387, !tbaa !262
  %cmp241 = icmp eq i32 %49, 2, !dbg !387
  %cond243 = select i1 %cmp241, i32 78, i32 80, !dbg !387
  %50 = load i32* %nseq, align 4, !dbg !388, !tbaa !262
  %call246 = call i32 @GCGMultchecksum(i8** %3, i32 %50) #7, !dbg !388
  %call247 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([43 x i8]* @.str21, i64 0, i64 0), i8* %., i32 %48, i32 %cond243, i8* %0, i32 %call246) #7, !dbg !388
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %fp) #6, !dbg !389
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !240), !dbg !390
  %51 = load i32* %nseq, align 4, !dbg !390, !tbaa !262
  %cmp251502 = icmp sgt i32 %51, 0, !dbg !390
  br i1 %cmp251502, label %for.body253.lr.ph, label %for.end267, !dbg !390

for.body253.lr.ph:                                ; preds = %if.end235
  %wgt = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 2, !dbg !392
  br label %for.body253, !dbg !390

for.body253:                                      ; preds = %for.body253.lr.ph, %for.body253
  %indvars.iv530 = phi i64 [ 0, %for.body253.lr.ph ], [ %indvars.iv.next531, %for.body253 ]
  %arrayidx255 = getelementptr inbounds i8** %5, i64 %indvars.iv530, !dbg !394
  %52 = load i8** %arrayidx255, align 8, !dbg !394, !tbaa !254
  %53 = load i32* %alen239, align 4, !dbg !394, !tbaa !262
  %arrayidx258 = getelementptr inbounds i8** %3, i64 %indvars.iv530, !dbg !392
  %54 = load i8** %arrayidx258, align 8, !dbg !392, !tbaa !254
  %call260 = call i32 @GCGchecksum(i8* %54, i32 %53) #7, !dbg !392
  %55 = load float** %wgt, align 8, !dbg !392, !tbaa !254
  %arrayidx262 = getelementptr inbounds float* %55, i64 %indvars.iv530, !dbg !392
  %56 = load float* %arrayidx262, align 4, !dbg !392, !tbaa !305
  %conv263 = fpext float %56 to double, !dbg !392
  %call264 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([52 x i8]* @.str23, i64 0, i64 0), i32 %namelen.0.lcssa, i32 %namelen.0.lcssa, i8* %52, i32 %53, i32 %call260, double %conv263) #7, !dbg !392
  %indvars.iv.next531 = add i64 %indvars.iv530, 1, !dbg !390
  %57 = load i32* %nseq, align 4, !dbg !390, !tbaa !262
  %58 = trunc i64 %indvars.iv.next531 to i32, !dbg !390
  %cmp251 = icmp slt i32 %58, %57, !dbg !390
  br i1 %cmp251, label %for.body253, label %for.end267, !dbg !390

for.end267:                                       ; preds = %for.body253, %if.end235
  %fputc488 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp) #6, !dbg !395
  %59 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp), !dbg !396
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !244), !dbg !397
  %60 = load i32* %alen239, align 4, !dbg !397, !tbaa !262
  %cmp272500 = icmp sgt i32 %60, 0, !dbg !397
  br i1 %cmp272500, label %for.body274.lr.ph, label %for.end267.for.end332_crit_edge, !dbg !397

for.end267.for.end332_crit_edge:                  ; preds = %for.end267
  %.pre545 = load i32* %nseq, align 4, !dbg !399, !tbaa !262
  br label %for.end332, !dbg !397

for.body274.lr.ph:                                ; preds = %for.end267
  %arrayidx310 = getelementptr inbounds [51 x i8]* %buffer, i64 0, i64 50, !dbg !400
  br label %for.body274, !dbg !397

for.cond270.loopexit:                             ; preds = %for.end325, %for.cond298.preheader
  %61 = phi i32 [ %69, %for.cond298.preheader ], [ %77, %for.end325 ]
  %62 = load i32* %alen239, align 4, !dbg !397, !tbaa !262
  %cmp272 = icmp slt i32 %64, %62, !dbg !397
  %indvars.iv.next522 = add i32 %indvars.iv521, -50, !dbg !397
  %indvars.iv.next524 = add i32 %indvars.iv523, -50, !dbg !397
  br i1 %cmp272, label %for.body274, label %for.end332, !dbg !397

for.body274:                                      ; preds = %for.body274.lr.ph, %for.cond270.loopexit
  %indvars.iv527 = phi i64 [ 0, %for.body274.lr.ph ], [ %indvars.iv.next528, %for.cond270.loopexit ]
  %indvars.iv523 = phi i32 [ -51, %for.body274.lr.ph ], [ %indvars.iv.next524, %for.cond270.loopexit ], !dbg !397
  %indvars.iv521 = phi i32 [ -1, %for.body274.lr.ph ], [ %indvars.iv.next522, %for.cond270.loopexit ], !dbg !404
  %fputc491 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp) #6, !dbg !406
  %indvars.iv.next528 = add i64 %indvars.iv527, 50, !dbg !397
  %63 = load i32* %alen239, align 4, !dbg !407, !tbaa !262
  %64 = trunc i64 %indvars.iv.next528 to i32, !dbg !407
  %cmp277 = icmp sgt i32 %64, %63, !dbg !407
  %65 = trunc i64 %indvars.iv527 to i32, !dbg !407
  %sub281 = sub nsw i32 %63, %65, !dbg !407
  %sub281. = select i1 %cmp277, i32 %sub281, i32 50, !dbg !407
  call void @llvm.dbg.value(metadata !{i32 %sub281.}, i64 0, metadata !242), !dbg !407
  %cmp285 = icmp sgt i32 %sub281., 10, !dbg !408
  %66 = or i64 %indvars.iv527, 1, !dbg !409
  br i1 %cmp285, label %if.then287, label %if.else294, !dbg !408

if.then287:                                       ; preds = %for.body274
  %sub289 = add nsw i32 %sub281., -1, !dbg !409
  %div = sdiv i32 %sub289, 10, !dbg !409
  %add290 = add i32 %sub281., -12, !dbg !409
  %sub291 = add i32 %add290, %div, !dbg !409
  %add292 = add nsw i32 %sub281., %65, !dbg !409
  %67 = trunc i64 %66 to i32, !dbg !409
  %call293 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str25, i64 0, i64 0), i32 %namelen.0.lcssa, i8* getelementptr inbounds ([1 x i8]* @.str26, i64 0, i64 0), i32 %67, i32 %sub291, i8* getelementptr inbounds ([1 x i8]* @.str26, i64 0, i64 0), i32 %add292) #7, !dbg !409
  br label %for.cond298.preheader, !dbg !409

if.else294:                                       ; preds = %for.body274
  %68 = trunc i64 %66 to i32, !dbg !410
  %call296 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str27, i64 0, i64 0), i32 %namelen.0.lcssa, i8* getelementptr inbounds ([1 x i8]* @.str26, i64 0, i64 0), i32 %68) #7, !dbg !410
  br label %for.cond298.preheader

for.cond298.preheader:                            ; preds = %if.else294, %if.then287
  %69 = load i32* %nseq, align 4, !dbg !411, !tbaa !262
  %cmp300498 = icmp sgt i32 %69, 0, !dbg !411
  br i1 %cmp300498, label %for.body302.lr.ph, label %for.cond270.loopexit, !dbg !411

for.body302.lr.ph:                                ; preds = %for.cond298.preheader
  %cmp312496 = icmp sgt i32 %sub281., 0, !dbg !404
  %70 = xor i32 %63, -1, !dbg !411
  %71 = icmp sgt i32 %indvars.iv523, %70, !dbg !397
  %smax = select i1 %71, i32 %indvars.iv523, i32 %70, !dbg !397
  %72 = sub i32 %indvars.iv521, %smax, !dbg !411
  br label %for.body302, !dbg !411

for.body302:                                      ; preds = %for.body302.lr.ph, %for.end325
  %indvars.iv525 = phi i64 [ 0, %for.body302.lr.ph ], [ %indvars.iv.next526, %for.end325 ]
  %arrayidx304 = getelementptr inbounds i8** %5, i64 %indvars.iv525, !dbg !412
  %73 = load i8** %arrayidx304, align 8, !dbg !412, !tbaa !254
  %call305 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str28, i64 0, i64 0), i32 %namelen.0.lcssa, i8* %73) #7, !dbg !412
  %arrayidx308 = getelementptr inbounds i8** %3, i64 %indvars.iv525, !dbg !413
  %74 = load i8** %arrayidx308, align 8, !dbg !413, !tbaa !254
  %add.ptr = getelementptr inbounds i8* %74, i64 %indvars.iv527, !dbg !413
  %call309 = call i8* @strncpy(i8* %1, i8* %add.ptr, i64 50) #7, !dbg !413
  store i8 0, i8* %arrayidx310, align 2, !dbg !400, !tbaa !255
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !249), !dbg !404
  br i1 %cmp312496, label %for.body314, label %for.end325, !dbg !404

for.body314:                                      ; preds = %for.body302, %if.end318
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end318 ], [ 0, %for.body302 ]
  %75 = trunc i64 %indvars.iv to i32, !dbg !414
  %rem = srem i32 %75, 10, !dbg !414
  %tobool315 = icmp eq i32 %rem, 0, !dbg !414
  br i1 %tobool315, label %if.then316, label %if.end318, !dbg !414

if.then316:                                       ; preds = %for.body314
  %call317 = call i32 @fputc(i32 32, %struct._IO_FILE* %fp) #7, !dbg !414
  br label %if.end318, !dbg !414

if.end318:                                        ; preds = %for.body314, %if.then316
  %arrayidx320 = getelementptr inbounds [51 x i8]* %buffer, i64 0, i64 %indvars.iv, !dbg !416
  %76 = load i8* %arrayidx320, align 1, !dbg !416, !tbaa !255
  %conv321 = sext i8 %76 to i32, !dbg !416
  %call322 = call i32 @fputc(i32 %conv321, %struct._IO_FILE* %fp) #7, !dbg !416
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !404
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !404
  %exitcond = icmp eq i32 %lftr.wideiv, %72, !dbg !404
  br i1 %exitcond, label %for.end325, label %for.body314, !dbg !404

for.end325:                                       ; preds = %if.end318, %for.body302
  %call326 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp) #7, !dbg !417
  %indvars.iv.next526 = add i64 %indvars.iv525, 1, !dbg !411
  %77 = load i32* %nseq, align 4, !dbg !411, !tbaa !262
  %78 = trunc i64 %indvars.iv.next526 to i32, !dbg !411
  %cmp300 = icmp slt i32 %78, %77, !dbg !411
  br i1 %cmp300, label %for.body302, label %for.cond270.loopexit, !dbg !411

for.end332:                                       ; preds = %for.cond270.loopexit, %for.end267.for.end332_crit_edge
  %79 = phi i32 [ %.pre545, %for.end267.for.end332_crit_edge ], [ %61, %for.cond270.loopexit ]
  call void @Free2DArray(i8** %3, i32 %79) #7, !dbg !399
  %80 = load i32* %nseq, align 4, !dbg !418, !tbaa !262
  call void @Free2DArray(i8** %5, i32 %80) #7, !dbg !418
  call void @llvm.lifetime.end(i64 51, i8* %1) #6, !dbg !419
  call void @llvm.lifetime.end(i64 64, i8* %0) #6, !dbg !419
  ret void, !dbg !420
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare i32 @GuessAlignmentSeqtype(i8**, i32) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #2

; Function Attrs: nounwind optsize
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #2

; Function Attrs: nounwind optsize
declare %struct.tm* @localtime(i64*) #2

; Function Attrs: optsize
declare i32 @GCGMultchecksum(i8**, i32) #3

; Function Attrs: optsize
declare i32 @GCGchecksum(i8*, i32) #3

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #2

; Function Attrs: nounwind optsize
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!19 = metadata !{metadata !20, metadata !225}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"ReadMSF", metadata !"ReadMSF", metadata !"", i32 82, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.msa_struct* (%struct.msafile_struct*)* @ReadMSF, null, null, metadata !212, i32 83} ; [ DW_TAG_subprogram ] [line 82] [def] [scope 83] [ReadMSF]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !103}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSA]
!25 = metadata !{i32 786454, metadata !1, null, metadata !"MSA", i32 177, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [MSA] [line 177, size 0, align 0, offset 0] [from msa_struct]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"msa_struct", i32 112, i64 2880, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [msa_struct] [line 112, size 2880, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !33, metadata !34, metadata !37, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !57, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !69, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !100, metadata !101, metadata !102}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"aseq", i32 115, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [aseq] [line 115, size 64, align 64, offset 0] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!32 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!33 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sqname", i32 116, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [sqname] [line 116, size 64, align 64, offset 64] [from ]
!34 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"wgt", i32 117, i64 64, i64 64, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [wgt] [line 117, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!36 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!37 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"alen", i32 118, i64 32, i64 32, i64 192, i32 0, metadata !38} ; [ DW_TAG_member ] [alen] [line 118, size 32, align 32, offset 192] [from int]
!38 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!39 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nseq", i32 119, i64 32, i64 32, i64 224, i32 0, metadata !38} ; [ DW_TAG_member ] [nseq] [line 119, size 32, align 32, offset 224] [from int]
!40 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"flags", i32 123, i64 32, i64 32, i64 256, i32 0, metadata !38} ; [ DW_TAG_member ] [flags] [line 123, size 32, align 32, offset 256] [from int]
!41 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"type", i32 124, i64 32, i64 32, i64 288, i32 0, metadata !38} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from int]
!42 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"name", i32 125, i64 64, i64 64, i64 320, i32 0, metadata !31} ; [ DW_TAG_member ] [name] [line 125, size 64, align 64, offset 320] [from ]
!43 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"desc", i32 126, i64 64, i64 64, i64 384, i32 0, metadata !31} ; [ DW_TAG_member ] [desc] [line 126, size 64, align 64, offset 384] [from ]
!44 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"acc", i32 127, i64 64, i64 64, i64 448, i32 0, metadata !31} ; [ DW_TAG_member ] [acc] [line 127, size 64, align 64, offset 448] [from ]
!45 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"au", i32 128, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [au] [line 128, size 64, align 64, offset 512] [from ]
!46 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ss_cons", i32 129, i64 64, i64 64, i64 576, i32 0, metadata !31} ; [ DW_TAG_member ] [ss_cons] [line 129, size 64, align 64, offset 576] [from ]
!47 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sa_cons", i32 130, i64 64, i64 64, i64 640, i32 0, metadata !31} ; [ DW_TAG_member ] [sa_cons] [line 130, size 64, align 64, offset 640] [from ]
!48 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"rf", i32 131, i64 64, i64 64, i64 704, i32 0, metadata !31} ; [ DW_TAG_member ] [rf] [line 131, size 64, align 64, offset 704] [from ]
!49 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sqacc", i32 132, i64 64, i64 64, i64 768, i32 0, metadata !30} ; [ DW_TAG_member ] [sqacc] [line 132, size 64, align 64, offset 768] [from ]
!50 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sqdesc", i32 133, i64 64, i64 64, i64 832, i32 0, metadata !30} ; [ DW_TAG_member ] [sqdesc] [line 133, size 64, align 64, offset 832] [from ]
!51 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ss", i32 134, i64 64, i64 64, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [ss] [line 134, size 64, align 64, offset 896] [from ]
!52 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sa", i32 135, i64 64, i64 64, i64 960, i32 0, metadata !30} ; [ DW_TAG_member ] [sa] [line 135, size 64, align 64, offset 960] [from ]
!53 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cutoff", i32 136, i64 192, i64 32, i64 1024, i32 0, metadata !54} ; [ DW_TAG_member ] [cutoff] [line 136, size 192, align 32, offset 1024] [from ]
!54 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !36, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from float]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!57 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cutoff_is_set", i32 137, i64 192, i64 32, i64 1216, i32 0, metadata !58} ; [ DW_TAG_member ] [cutoff_is_set] [line 137, size 192, align 32, offset 1216] [from ]
!58 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !38, metadata !55, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!59 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"comment", i32 144, i64 64, i64 64, i64 1408, i32 0, metadata !30} ; [ DW_TAG_member ] [comment] [line 144, size 64, align 64, offset 1408] [from ]
!60 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ncomment", i32 145, i64 32, i64 32, i64 1472, i32 0, metadata !38} ; [ DW_TAG_member ] [ncomment] [line 145, size 32, align 32, offset 1472] [from int]
!61 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"alloc_ncomment", i32 146, i64 32, i64 32, i64 1504, i32 0, metadata !38} ; [ DW_TAG_member ] [alloc_ncomment] [line 146, size 32, align 32, offset 1504] [from int]
!62 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gf_tag", i32 148, i64 64, i64 64, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [gf_tag] [line 148, size 64, align 64, offset 1536] [from ]
!63 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gf", i32 149, i64 64, i64 64, i64 1600, i32 0, metadata !30} ; [ DW_TAG_member ] [gf] [line 149, size 64, align 64, offset 1600] [from ]
!64 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ngf", i32 150, i64 32, i64 32, i64 1664, i32 0, metadata !38} ; [ DW_TAG_member ] [ngf] [line 150, size 32, align 32, offset 1664] [from int]
!65 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"alloc_ngf", i32 151, i64 32, i64 32, i64 1696, i32 0, metadata !38} ; [ DW_TAG_member ] [alloc_ngf] [line 151, size 32, align 32, offset 1696] [from int]
!66 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gs_tag", i32 153, i64 64, i64 64, i64 1728, i32 0, metadata !30} ; [ DW_TAG_member ] [gs_tag] [line 153, size 64, align 64, offset 1728] [from ]
!67 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gs", i32 154, i64 64, i64 64, i64 1792, i32 0, metadata !68} ; [ DW_TAG_member ] [gs] [line 154, size 64, align 64, offset 1792] [from ]
!68 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!69 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gs_idx", i32 155, i64 64, i64 64, i64 1856, i32 0, metadata !70} ; [ DW_TAG_member ] [gs_idx] [line 155, size 64, align 64, offset 1856] [from ]
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GKI]
!71 = metadata !{i32 786454, metadata !27, null, metadata !"GKI", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [GKI] [line 42, size 0, align 0, offset 0] [from ]
!72 = metadata !{i32 786451, metadata !73, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !74, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!73 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!74 = metadata !{metadata !75, metadata !83, metadata !84, metadata !85}
!75 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"table", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [table] [line 37, size 64, align 64, offset 0] [from ]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gki_elem]
!78 = metadata !{i32 786451, metadata !73, null, metadata !"gki_elem", i32 26, i64 192, i64 64, i32 0, i32 0, null, metadata !79, i32 0, null, null} ; [ DW_TAG_structure_type ] [gki_elem] [line 26, size 192, align 64, offset 0] [from ]
!79 = metadata !{metadata !80, metadata !81, metadata !82}
!80 = metadata !{i32 786445, metadata !73, metadata !78, metadata !"key", i32 27, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [key] [line 27, size 64, align 64, offset 0] [from ]
!81 = metadata !{i32 786445, metadata !73, metadata !78, metadata !"idx", i32 28, i64 32, i64 32, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [idx] [line 28, size 32, align 32, offset 64] [from int]
!82 = metadata !{i32 786445, metadata !73, metadata !78, metadata !"nxt", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !77} ; [ DW_TAG_member ] [nxt] [line 29, size 64, align 64, offset 128] [from ]
!83 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"primelevel", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [primelevel] [line 39, size 32, align 32, offset 64] [from int]
!84 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"nhash", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !38} ; [ DW_TAG_member ] [nhash] [line 40, size 32, align 32, offset 96] [from int]
!85 = metadata !{i32 786445, metadata !73, metadata !72, metadata !"nkeys", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [nkeys] [line 41, size 32, align 32, offset 128] [from int]
!86 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ngs", i32 156, i64 32, i64 32, i64 1920, i32 0, metadata !38} ; [ DW_TAG_member ] [ngs] [line 156, size 32, align 32, offset 1920] [from int]
!87 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gc_tag", i32 158, i64 64, i64 64, i64 1984, i32 0, metadata !30} ; [ DW_TAG_member ] [gc_tag] [line 158, size 64, align 64, offset 1984] [from ]
!88 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gc", i32 159, i64 64, i64 64, i64 2048, i32 0, metadata !30} ; [ DW_TAG_member ] [gc] [line 159, size 64, align 64, offset 2048] [from ]
!89 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gc_idx", i32 160, i64 64, i64 64, i64 2112, i32 0, metadata !70} ; [ DW_TAG_member ] [gc_idx] [line 160, size 64, align 64, offset 2112] [from ]
!90 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ngc", i32 161, i64 32, i64 32, i64 2176, i32 0, metadata !38} ; [ DW_TAG_member ] [ngc] [line 161, size 32, align 32, offset 2176] [from int]
!91 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gr_tag", i32 163, i64 64, i64 64, i64 2240, i32 0, metadata !30} ; [ DW_TAG_member ] [gr_tag] [line 163, size 64, align 64, offset 2240] [from ]
!92 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gr", i32 164, i64 64, i64 64, i64 2304, i32 0, metadata !68} ; [ DW_TAG_member ] [gr] [line 164, size 64, align 64, offset 2304] [from ]
!93 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"gr_idx", i32 165, i64 64, i64 64, i64 2368, i32 0, metadata !70} ; [ DW_TAG_member ] [gr_idx] [line 165, size 64, align 64, offset 2368] [from ]
!94 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ngr", i32 166, i64 32, i64 32, i64 2432, i32 0, metadata !38} ; [ DW_TAG_member ] [ngr] [line 166, size 32, align 32, offset 2432] [from int]
!95 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"index", i32 170, i64 64, i64 64, i64 2496, i32 0, metadata !70} ; [ DW_TAG_member ] [index] [line 170, size 64, align 64, offset 2496] [from ]
!96 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nseqalloc", i32 171, i64 32, i64 32, i64 2560, i32 0, metadata !38} ; [ DW_TAG_member ] [nseqalloc] [line 171, size 32, align 32, offset 2560] [from int]
!97 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nseqlump", i32 172, i64 32, i64 32, i64 2592, i32 0, metadata !38} ; [ DW_TAG_member ] [nseqlump] [line 172, size 32, align 32, offset 2592] [from int]
!98 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sqlen", i32 173, i64 64, i64 64, i64 2624, i32 0, metadata !99} ; [ DW_TAG_member ] [sqlen] [line 173, size 64, align 64, offset 2624] [from ]
!99 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!100 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"sslen", i32 174, i64 64, i64 64, i64 2688, i32 0, metadata !99} ; [ DW_TAG_member ] [sslen] [line 174, size 64, align 64, offset 2688] [from ]
!101 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"salen", i32 175, i64 64, i64 64, i64 2752, i32 0, metadata !99} ; [ DW_TAG_member ] [salen] [line 175, size 64, align 64, offset 2752] [from ]
!102 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"lastidx", i32 176, i64 32, i64 32, i64 2816, i32 0, metadata !38} ; [ DW_TAG_member ] [lastidx] [line 176, size 32, align 32, offset 2816] [from int]
!103 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSAFILE]
!104 = metadata !{i32 786454, metadata !1, null, metadata !"MSAFILE", i32 199, i64 0, i64 0, i64 0, i32 0, metadata !105} ; [ DW_TAG_typedef ] [MSAFILE] [line 199, size 0, align 0, offset 0] [from msafile_struct]
!105 = metadata !{i32 786451, metadata !27, null, metadata !"msafile_struct", i32 186, i64 512, i64 64, i32 0, i32 0, null, metadata !106, i32 0, null, null} ; [ DW_TAG_structure_type ] [msafile_struct] [line 186, size 512, align 64, offset 0] [from ]
!106 = metadata !{metadata !107, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !209, metadata !210, metadata !211}
!107 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"f", i32 187, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [f] [line 187, size 64, align 64, offset 0] [from ]
!108 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!109 = metadata !{i32 786454, metadata !27, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!110 = metadata !{i32 786451, metadata !111, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !112, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!111 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!112 = metadata !{metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !133, metadata !134, metadata !135, metadata !136, metadata !139, metadata !141, metadata !143, metadata !147, metadata !149, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !158, metadata !159}
!113 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !38} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!114 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!115 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!116 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!117 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!118 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!119 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!120 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!121 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!122 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!123 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!124 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !31} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!125 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !126} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!126 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !127} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!127 = metadata !{i32 786451, metadata !111, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !128, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!128 = metadata !{metadata !129, metadata !130, metadata !132}
!129 = metadata !{i32 786445, metadata !111, metadata !127, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !126} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!130 = metadata !{i32 786445, metadata !111, metadata !127, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !131} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!131 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !110} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!132 = metadata !{i32 786445, metadata !111, metadata !127, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!133 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !131} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!134 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !38} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!135 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !38} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!136 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !137} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!137 = metadata !{i32 786454, metadata !111, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!138 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!139 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !140} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!140 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!141 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !142} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!142 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!143 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !144} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!144 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !32, metadata !145, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!145 = metadata !{metadata !146}
!146 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!147 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !148} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!148 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!149 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !150} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!150 = metadata !{i32 786454, metadata !111, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!151 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !148} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!152 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !148} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!153 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !148} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!154 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !148} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!155 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !156} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!156 = metadata !{i32 786454, metadata !111, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !157} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!157 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!158 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !38} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!159 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !160} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!160 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !32, metadata !161, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!161 = metadata !{metadata !162}
!162 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!163 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"fname", i32 188, i64 64, i64 64, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [fname] [line 188, size 64, align 64, offset 64] [from ]
!164 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"linenumber", i32 189, i64 32, i64 32, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [linenumber] [line 189, size 32, align 32, offset 128] [from int]
!165 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"buf", i32 191, i64 64, i64 64, i64 192, i32 0, metadata !31} ; [ DW_TAG_member ] [buf] [line 191, size 64, align 64, offset 192] [from ]
!166 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"buflen", i32 192, i64 32, i64 32, i64 256, i32 0, metadata !38} ; [ DW_TAG_member ] [buflen] [line 192, size 32, align 32, offset 256] [from int]
!167 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"ssi", i32 194, i64 64, i64 64, i64 320, i32 0, metadata !168} ; [ DW_TAG_member ] [ssi] [line 194, size 64, align 64, offset 320] [from ]
!168 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !169} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SSIFILE]
!169 = metadata !{i32 786454, metadata !27, null, metadata !"SSIFILE", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !170} ; [ DW_TAG_typedef ] [SSIFILE] [line 76, size 0, align 0, offset 0] [from ssifile_s]
!170 = metadata !{i32 786451, metadata !171, null, metadata !"ssifile_s", i32 49, i64 1152, i64 64, i32 0, i32 0, null, metadata !172, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssifile_s] [line 49, size 1152, align 64, offset 0] [from ]
!171 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/ssi.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!172 = metadata !{metadata !173, metadata !174, metadata !177, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !206, metadata !207, metadata !208}
!173 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"fp", i32 50, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_member ] [fp] [line 50, size 64, align 64, offset 0] [from ]
!174 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"flags", i32 51, i64 32, i64 32, i64 64, i32 0, metadata !175} ; [ DW_TAG_member ] [flags] [line 51, size 32, align 32, offset 64] [from sqd_uint32]
!175 = metadata !{i32 786454, metadata !171, null, metadata !"sqd_uint32", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !176} ; [ DW_TAG_typedef ] [sqd_uint32] [line 41, size 0, align 0, offset 0] [from unsigned int]
!176 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!177 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"nfiles", i32 52, i64 16, i64 16, i64 96, i32 0, metadata !178} ; [ DW_TAG_member ] [nfiles] [line 52, size 16, align 16, offset 96] [from sqd_uint16]
!178 = metadata !{i32 786454, metadata !171, null, metadata !"sqd_uint16", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [sqd_uint16] [line 40, size 0, align 0, offset 0] [from unsigned short]
!179 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"nprimary", i32 53, i64 32, i64 32, i64 128, i32 0, metadata !175} ; [ DW_TAG_member ] [nprimary] [line 53, size 32, align 32, offset 128] [from sqd_uint32]
!180 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"nsecondary", i32 54, i64 32, i64 32, i64 160, i32 0, metadata !175} ; [ DW_TAG_member ] [nsecondary] [line 54, size 32, align 32, offset 160] [from sqd_uint32]
!181 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"flen", i32 55, i64 32, i64 32, i64 192, i32 0, metadata !175} ; [ DW_TAG_member ] [flen] [line 55, size 32, align 32, offset 192] [from sqd_uint32]
!182 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"plen", i32 56, i64 32, i64 32, i64 224, i32 0, metadata !175} ; [ DW_TAG_member ] [plen] [line 56, size 32, align 32, offset 224] [from sqd_uint32]
!183 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"slen", i32 57, i64 32, i64 32, i64 256, i32 0, metadata !175} ; [ DW_TAG_member ] [slen] [line 57, size 32, align 32, offset 256] [from sqd_uint32]
!184 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"frecsize", i32 58, i64 32, i64 32, i64 288, i32 0, metadata !175} ; [ DW_TAG_member ] [frecsize] [line 58, size 32, align 32, offset 288] [from sqd_uint32]
!185 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"precsize", i32 59, i64 32, i64 32, i64 320, i32 0, metadata !175} ; [ DW_TAG_member ] [precsize] [line 59, size 32, align 32, offset 320] [from sqd_uint32]
!186 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"srecsize", i32 60, i64 32, i64 32, i64 352, i32 0, metadata !175} ; [ DW_TAG_member ] [srecsize] [line 60, size 32, align 32, offset 352] [from sqd_uint32]
!187 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"foffset", i32 61, i64 128, i64 64, i64 384, i32 0, metadata !188} ; [ DW_TAG_member ] [foffset] [line 61, size 128, align 64, offset 384] [from SSIOFFSET]
!188 = metadata !{i32 786454, metadata !171, null, metadata !"SSIOFFSET", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !189} ; [ DW_TAG_typedef ] [SSIOFFSET] [line 42, size 0, align 0, offset 0] [from ssioffset_s]
!189 = metadata !{i32 786451, metadata !171, null, metadata !"ssioffset_s", i32 35, i64 128, i64 64, i32 0, i32 0, null, metadata !190, i32 0, null, null} ; [ DW_TAG_structure_type ] [ssioffset_s] [line 35, size 128, align 64, offset 0] [from ]
!190 = metadata !{metadata !191, metadata !192}
!191 = metadata !{i32 786445, metadata !171, metadata !189, metadata !"mode", i32 36, i64 8, i64 8, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [mode] [line 36, size 8, align 8, offset 0] [from char]
!192 = metadata !{i32 786445, metadata !171, metadata !189, metadata !"off", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !193} ; [ DW_TAG_member ] [off] [line 40, size 64, align 64, offset 64] [from ]
!193 = metadata !{i32 786455, metadata !171, metadata !189, metadata !"", i32 37, i64 64, i64 64, i64 0, i32 0, null, metadata !194, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 37, size 64, align 64, offset 0] [from ]
!194 = metadata !{metadata !195, metadata !196}
!195 = metadata !{i32 786445, metadata !171, metadata !193, metadata !"i32", i32 38, i64 32, i64 32, i64 0, i32 0, metadata !175} ; [ DW_TAG_member ] [i32] [line 38, size 32, align 32, offset 0] [from sqd_uint32]
!196 = metadata !{i32 786445, metadata !171, metadata !193, metadata !"i64", i32 39, i64 64, i64 64, i64 0, i32 0, metadata !197} ; [ DW_TAG_member ] [i64] [line 39, size 64, align 64, offset 0] [from sqd_uint64]
!197 = metadata !{i32 786454, metadata !171, null, metadata !"sqd_uint64", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !198} ; [ DW_TAG_typedef ] [sqd_uint64] [line 42, size 0, align 0, offset 0] [from long long unsigned int]
!198 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!199 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"poffset", i32 62, i64 128, i64 64, i64 512, i32 0, metadata !188} ; [ DW_TAG_member ] [poffset] [line 62, size 128, align 64, offset 512] [from SSIOFFSET]
!200 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"soffset", i32 63, i64 128, i64 64, i64 640, i32 0, metadata !188} ; [ DW_TAG_member ] [soffset] [line 63, size 128, align 64, offset 640] [from SSIOFFSET]
!201 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"imode", i32 65, i64 8, i64 8, i64 768, i32 0, metadata !32} ; [ DW_TAG_member ] [imode] [line 65, size 8, align 8, offset 768] [from char]
!202 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"smode", i32 66, i64 8, i64 8, i64 776, i32 0, metadata !32} ; [ DW_TAG_member ] [smode] [line 66, size 8, align 8, offset 776] [from char]
!203 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"filename", i32 70, i64 64, i64 64, i64 832, i32 0, metadata !30} ; [ DW_TAG_member ] [filename] [line 70, size 64, align 64, offset 832] [from ]
!204 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"fileformat", i32 71, i64 64, i64 64, i64 896, i32 0, metadata !205} ; [ DW_TAG_member ] [fileformat] [line 71, size 64, align 64, offset 896] [from ]
!205 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !175} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sqd_uint32]
!206 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"fileflags", i32 72, i64 64, i64 64, i64 960, i32 0, metadata !205} ; [ DW_TAG_member ] [fileflags] [line 72, size 64, align 64, offset 960] [from ]
!207 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"bpl", i32 73, i64 64, i64 64, i64 1024, i32 0, metadata !205} ; [ DW_TAG_member ] [bpl] [line 73, size 64, align 64, offset 1024] [from ]
!208 = metadata !{i32 786445, metadata !171, metadata !170, metadata !"rpl", i32 74, i64 64, i64 64, i64 1088, i32 0, metadata !205} ; [ DW_TAG_member ] [rpl] [line 74, size 64, align 64, offset 1088] [from ]
!209 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"do_gzip", i32 196, i64 32, i64 32, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ] [do_gzip] [line 196, size 32, align 32, offset 384] [from int]
!210 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"do_stdin", i32 197, i64 32, i64 32, i64 416, i32 0, metadata !38} ; [ DW_TAG_member ] [do_stdin] [line 197, size 32, align 32, offset 416] [from int]
!211 = metadata !{i32 786445, metadata !27, metadata !105, metadata !"format", i32 198, i64 32, i64 32, i64 448, i32 0, metadata !38} ; [ DW_TAG_member ] [format] [line 198, size 32, align 32, offset 448] [from int]
!212 = metadata !{metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224}
!213 = metadata !{i32 786689, metadata !20, metadata !"afp", metadata !21, i32 16777298, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [afp] [line 82]
!214 = metadata !{i32 786688, metadata !20, metadata !"msa", metadata !21, i32 84, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msa] [line 84]
!215 = metadata !{i32 786688, metadata !20, metadata !"s", metadata !21, i32 85, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 85]
!216 = metadata !{i32 786688, metadata !20, metadata !"alleged_alen", metadata !21, i32 86, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alleged_alen] [line 86]
!217 = metadata !{i32 786688, metadata !20, metadata !"alleged_type", metadata !21, i32 87, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alleged_type] [line 87]
!218 = metadata !{i32 786688, metadata !20, metadata !"alleged_checksum", metadata !21, i32 88, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alleged_checksum] [line 88]
!219 = metadata !{i32 786688, metadata !20, metadata !"tok", metadata !21, i32 89, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tok] [line 89]
!220 = metadata !{i32 786688, metadata !20, metadata !"sp", metadata !21, i32 90, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sp] [line 90]
!221 = metadata !{i32 786688, metadata !20, metadata !"slen", metadata !21, i32 91, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slen] [line 91]
!222 = metadata !{i32 786688, metadata !20, metadata !"sqidx", metadata !21, i32 92, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sqidx] [line 92]
!223 = metadata !{i32 786688, metadata !20, metadata !"name", metadata !21, i32 93, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 93]
!224 = metadata !{i32 786688, metadata !20, metadata !"seq", metadata !21, i32 94, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seq] [line 94]
!225 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"WriteMSF", metadata !"WriteMSF", metadata !"", i32 245, metadata !226, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.msa_struct*)* @WriteMSF, null, null, metadata !228, i32 246} ; [ DW_TAG_subprogram ] [line 245] [def] [scope 246] [WriteMSF]
!226 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!227 = metadata !{null, metadata !108, metadata !24}
!228 = metadata !{metadata !229, metadata !230, metadata !231, metadata !234, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !249}
!229 = metadata !{i32 786689, metadata !225, metadata !"fp", metadata !21, i32 16777461, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 245]
!230 = metadata !{i32 786689, metadata !225, metadata !"msa", metadata !21, i32 33554677, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msa] [line 245]
!231 = metadata !{i32 786688, metadata !225, metadata !"now", metadata !21, i32 247, metadata !232, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [now] [line 247]
!232 = metadata !{i32 786454, metadata !1, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !233} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!233 = metadata !{i32 786454, metadata !1, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!234 = metadata !{i32 786688, metadata !225, metadata !"date", metadata !21, i32 248, metadata !235, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [date] [line 248]
!235 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !32, metadata !236, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from char]
!236 = metadata !{metadata !237}
!237 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!238 = metadata !{i32 786688, metadata !225, metadata !"gcg_aseq", metadata !21, i32 249, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gcg_aseq] [line 249]
!239 = metadata !{i32 786688, metadata !225, metadata !"gcg_sqname", metadata !21, i32 250, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gcg_sqname] [line 250]
!240 = metadata !{i32 786688, metadata !225, metadata !"idx", metadata !21, i32 251, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 251]
!241 = metadata !{i32 786688, metadata !225, metadata !"s", metadata !21, i32 252, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 252]
!242 = metadata !{i32 786688, metadata !225, metadata !"len", metadata !21, i32 253, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 253]
!243 = metadata !{i32 786688, metadata !225, metadata !"namelen", metadata !21, i32 254, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [namelen] [line 254]
!244 = metadata !{i32 786688, metadata !225, metadata !"pos", metadata !21, i32 255, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 255]
!245 = metadata !{i32 786688, metadata !225, metadata !"buffer", metadata !21, i32 256, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 256]
!246 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 408, i64 8, i32 0, i32 0, metadata !32, metadata !247, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 408, align 8, offset 0] [from char]
!247 = metadata !{metadata !248}
!248 = metadata !{i32 786465, i64 0, i64 51}      ; [ DW_TAG_subrange_type ] [0, 50]
!249 = metadata !{i32 786688, metadata !225, metadata !"i", metadata !21, i32 257, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 257]
!250 = metadata !{i32 82, i32 0, metadata !20, null}
!251 = metadata !{i32 90, i32 0, metadata !20, null}
!252 = metadata !{i32 91, i32 0, metadata !20, null}
!253 = metadata !{i32 96, i32 0, metadata !20, null}
!254 = metadata !{metadata !"any pointer", metadata !255}
!255 = metadata !{metadata !"omnipotent char", metadata !256}
!256 = metadata !{metadata !"Simple C/C++ TBAA"}
!257 = metadata !{i32 97, i32 0, metadata !20, null}
!258 = metadata !{i32 104, i32 0, metadata !20, null}
!259 = metadata !{i32 105, i32 0, metadata !20, null}
!260 = metadata !{i32 106, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !20, i32 105, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!262 = metadata !{metadata !"int", metadata !255}
!263 = metadata !{i32 107, i32 0, metadata !261, null}
!264 = metadata !{i32 108, i32 0, metadata !20, null}
!265 = metadata !{i32 109, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !20, i32 108, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!267 = metadata !{i32 110, i32 0, metadata !266, null}
!268 = metadata !{i32 119, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !20, i32 118, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!270 = metadata !{i32 120, i32 0, metadata !269, null}
!271 = metadata !{i32 123, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !269, i32 121, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!273 = metadata !{i32 3}
!274 = metadata !{i32 125, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !272, i32 123, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!276 = metadata !{i32 126, i32 0, metadata !275, null}
!277 = metadata !{i32 127, i32 0, metadata !275, null}
!278 = metadata !{i32 128, i32 0, metadata !275, null}
!279 = metadata !{i32 130, i32 0, metadata !272, null}
!280 = metadata !{i32 133, i32 0, metadata !269, null}
!281 = metadata !{i32 134, i32 0, metadata !269, null}
!282 = metadata !{i32 135, i32 0, metadata !20, null}
!283 = metadata !{i32 146, i32 0, metadata !20, null}
!284 = metadata !{i32 157, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !286, i32 153, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!286 = metadata !{i32 786443, metadata !1, metadata !20, i32 147, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!287 = metadata !{i32 158, i32 0, metadata !285, null}
!288 = metadata !{i32 159, i32 0, metadata !285, null}
!289 = metadata !{i32 160, i32 0, metadata !285, null}
!290 = metadata !{i32 163, i32 0, metadata !285, null}
!291 = metadata !{i32 167, i32 0, metadata !285, null}
!292 = metadata !{i32 168, i32 0, metadata !285, null}
!293 = metadata !{i32 187, i32 0, metadata !20, null}
!294 = metadata !{i32 200, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !20, i32 188, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!296 = metadata !{i32 203, i32 0, metadata !295, null}
!297 = metadata !{i32 148, i32 0, metadata !286, null}
!298 = metadata !{i32 151, i32 0, metadata !286, null}
!299 = metadata !{i32 152, i32 0, metadata !286, null}
!300 = metadata !{i32 155, i32 0, metadata !285, null}
!301 = metadata !{i32 156, i32 0, metadata !285, null}
!302 = metadata !{i32 162, i32 0, metadata !285, null}
!303 = metadata !{i32 165, i32 0, metadata !285, null}
!304 = metadata !{i32 166, i32 0, metadata !285, null}
!305 = metadata !{metadata !"float", metadata !255}
!306 = metadata !{i32 170, i32 0, metadata !286, null}
!307 = metadata !{i32 174, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !286, i32 173, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!309 = metadata !{i32 176, i32 0, metadata !308, null}
!310 = metadata !{i32 177, i32 0, metadata !308, null}
!311 = metadata !{i32 208, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !20, i32 208, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!313 = metadata !{i32 210, i32 0, metadata !314, null}
!314 = metadata !{i32 786443, metadata !1, metadata !312, i32 209, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!315 = metadata !{i32 211, i32 0, metadata !314, null}
!316 = metadata !{i32 216, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !318, i32 215, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!318 = metadata !{i32 786443, metadata !1, metadata !319, i32 214, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!319 = metadata !{i32 786443, metadata !1, metadata !314, i32 213, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!320 = metadata !{i32 189, i32 0, metadata !295, null}
!321 = metadata !{i32 190, i32 0, metadata !295, null}
!322 = metadata !{i32 191, i32 0, metadata !295, null}
!323 = metadata !{i32 195, i32 0, metadata !295, null}
!324 = metadata !{metadata !"short", metadata !255}
!325 = metadata !{i32 201, i32 0, metadata !295, null}
!326 = metadata !{i32 204, i32 0, metadata !295, null}
!327 = metadata !{i32 213, i32 0, metadata !319, null}
!328 = metadata !{i32 217, i32 0, metadata !317, null}
!329 = metadata !{i32 218, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !318, i32 217, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!331 = metadata !{i32 219, i32 0, metadata !330, null}
!332 = metadata !{i32 222, i32 0, metadata !314, null}
!333 = metadata !{i32 225, i32 0, metadata !20, null}
!334 = metadata !{i32 226, i32 0, metadata !20, null}
!335 = metadata !{i32 227, i32 0, metadata !20, null}
!336 = metadata !{i32 245, i32 0, metadata !225, null}
!337 = metadata !{i32 247, i32 0, metadata !225, null}
!338 = metadata !{i32 248, i32 0, metadata !225, null}
!339 = metadata !{i32 256, i32 0, metadata !225, null}
!340 = metadata !{i32 273, i32 0, metadata !225, null}
!341 = metadata !{i32 274, i32 0, metadata !225, null}
!342 = metadata !{i32 275, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !225, i32 275, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!344 = metadata !{i32 277, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !343, i32 276, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!346 = metadata !{i32 278, i32 0, metadata !345, null}
!347 = metadata !{i32 281, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !225, i32 281, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!349 = metadata !{i32 286, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !225, i32 286, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!351 = metadata !{i32 292, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !353, i32 292, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!353 = metadata !{i32 786443, metadata !1, metadata !350, i32 287, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!354 = metadata !{i32 282, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !348, i32 282, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!356 = metadata !{i32 283, i32 0, metadata !355, null}
!357 = metadata !{i32 284, i32 0, metadata !355, null}
!358 = metadata !{i32 297, i32 0, metadata !359, null}
!359 = metadata !{i32 786443, metadata !1, metadata !225, i32 297, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!360 = metadata !{i32 298, i32 0, metadata !359, null}
!361 = metadata !{i32 288, i32 0, metadata !362, null}
!362 = metadata !{i32 786443, metadata !1, metadata !353, i32 288, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!363 = metadata !{i32 289, i32 0, metadata !362, null}
!364 = metadata !{i32 290, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !353, i32 290, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!366 = metadata !{i32 291, i32 0, metadata !365, null}
!367 = metadata !{i32 293, i32 0, metadata !352, null}
!368 = metadata !{i32 299, i32 0, metadata !359, null}
!369 = metadata !{i32 305, i32 0, metadata !225, null}
!370 = metadata !{i32 306, i32 0, metadata !225, null}
!371 = metadata !{i32 308, i32 0, metadata !225, null}
!372 = metadata !{i32 309, i32 0, metadata !225, null}
!373 = metadata !{i32 310, i32 0, metadata !225, null}
!374 = metadata !{i32 312, i32 0, metadata !225, null}
!375 = metadata !{i32 314, i32 0, metadata !225, null}
!376 = metadata !{i32 317, i32 0, metadata !225, null}
!377 = metadata !{i32 320, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !379, i32 319, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!379 = metadata !{i32 786443, metadata !1, metadata !225, i32 318, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!380 = metadata !{i32 319, i32 0, metadata !378, null}
!381 = metadata !{i32 321, i32 0, metadata !379, null}
!382 = metadata !{i32 322, i32 0, metadata !379, null}
!383 = metadata !{i32 324, i32 0, metadata !225, null}
!384 = metadata !{metadata !"long", metadata !255}
!385 = metadata !{i32 325, i32 0, metadata !225, null}
!386 = metadata !{i32 326, i32 0, metadata !225, null}
!387 = metadata !{i32 327, i32 0, metadata !225, null}
!388 = metadata !{i32 332, i32 0, metadata !225, null}
!389 = metadata !{i32 333, i32 0, metadata !225, null}
!390 = metadata !{i32 339, i32 0, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !225, i32 339, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!392 = metadata !{i32 345, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !391, i32 340, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!394 = metadata !{i32 341, i32 0, metadata !393, null}
!395 = metadata !{i32 348, i32 0, metadata !225, null}
!396 = metadata !{i32 349, i32 0, metadata !225, null}
!397 = metadata !{i32 355, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !225, i32 355, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!399 = metadata !{i32 385, i32 0, metadata !225, null}
!400 = metadata !{i32 374, i32 0, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !402, i32 370, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!402 = metadata !{i32 786443, metadata !1, metadata !403, i32 369, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!403 = metadata !{i32 786443, metadata !1, metadata !398, i32 356, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!404 = metadata !{i32 376, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !401, i32 376, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!406 = metadata !{i32 357, i32 0, metadata !403, null}
!407 = metadata !{i32 360, i32 0, metadata !403, null}
!408 = metadata !{i32 361, i32 0, metadata !403, null}
!409 = metadata !{i32 362, i32 0, metadata !403, null}
!410 = metadata !{i32 367, i32 0, metadata !403, null}
!411 = metadata !{i32 369, i32 0, metadata !402, null}
!412 = metadata !{i32 371, i32 0, metadata !401, null}
!413 = metadata !{i32 373, i32 0, metadata !401, null}
!414 = metadata !{i32 378, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !405, i32 377, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/msf.c]
!416 = metadata !{i32 379, i32 0, metadata !415, null}
!417 = metadata !{i32 381, i32 0, metadata !401, null}
!418 = metadata !{i32 386, i32 0, metadata !225, null}
!419 = metadata !{i32 387, i32 0, metadata !225, null}
!420 = metadata !{i32 388, i32 0, metadata !225, null}
